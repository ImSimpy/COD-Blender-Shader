;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           5     NONE    uint   x   
; TRANSIENT_INDEX          0    y          5     NONE    uint    y  
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
; shader hash: 5efcf8e205ef82f559e06408b52e7e12
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
; Number of inputs: 22, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = alloca [12 x float], align 4
  %83 = alloca [12 x float], align 4
  %84 = alloca [3 x float], align 4
  %85 = alloca [3 x float], align 4
  %86 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %87 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = fmul fast float %89, %78
  %91 = fmul fast float %89, %79
  %92 = fmul fast float %71, %68
  %93 = fmul fast float %72, %67
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %72, %66
  %96 = fmul fast float %70, %68
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %70, %67
  %99 = fmul fast float %71, %66
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %94, %69
  %102 = fmul fast float %97, %69
  %103 = fmul fast float %100, %69
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %105, 2.000000e+00
  %108 = fmul fast float %107, %90
  %109 = fmul fast float %106, 2.000000e+00
  %110 = fmul fast float %109, %91
  %111 = fsub fast float 1.000000e+00, %108
  %112 = fsub fast float 1.000000e+00, %110
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %111, %114
  %118 = fmul fast float %111, %115
  %119 = fmul fast float %111, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %112, %121
  %125 = fmul fast float %112, %122
  %126 = fmul fast float %112, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fadd fast float %124, %128
  %132 = fadd fast float %131, %117
  %133 = fadd fast float %125, %129
  %134 = fadd fast float %133, %118
  %135 = fadd fast float %126, %130
  %136 = fadd fast float %135, %119
  %137 = fmul fast float %132, %81
  %138 = fmul fast float %134, %81
  %139 = fmul fast float %136, %81
  %140 = fadd fast float %75, 5.000000e-01
  %141 = fptoui float %140 to i32
  %142 = shl i32 %141, 3
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = or i32 %142, 4
  %146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %145, i32 undef)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.i32 %146, 0
  %148 = and i32 %144, 8191
  %149 = lshr i32 %144, 13
  %150 = and i32 %149, 8191
  %151 = lshr i32 %144, 26
  %152 = and i32 %147, 65535
  %153 = lshr i32 %147, 16
  %154 = uitofp i32 %152 to float
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %157 = uitofp i32 %153 to float
  %158 = uitofp i32 %148 to float
  %159 = fmul fast float %156, %158
  %160 = uitofp i32 %150 to float
  %161 = fmul fast float %156, %160
  %162 = fmul fast float %156, %73
  %163 = fmul fast float %162, %154
  %164 = fmul fast float %156, %74
  %165 = fmul fast float %164, %157
  %166 = fadd fast float %163, %159
  %167 = fadd fast float %161, %165
  %168 = uitofp i32 %151 to float
  %169 = fmul fast float %90, 5.000000e-01
  %170 = fmul fast float %91, 5.000000e-01
  %171 = fptosi float %169 to i32
  %172 = fptosi float %170 to i32
  %173 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %171, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = lshr i32 %174, 18
  %176 = uitofp i32 %175 to float
  %177 = fmul fast float %176, 0x3F4C00EBA0000000
  %178 = call float @dx.op.unary.f32(i32 21, float %177)  ; Exp(value)
  %179 = fadd fast float %178, -1.000000e+00
  %180 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %181 = extractvalue %dx.types.Dimensions %180, 0
  %182 = sitofp i32 %181 to float
  %183 = extractvalue %dx.types.Dimensions %180, 1
  %184 = sitofp i32 %183 to float
  %185 = fcmp fast oge float %169, %182
  %186 = fcmp fast oge float %170, %184
  %187 = or i1 %185, %186
  %188 = select i1 %187, float 0x4197782600000000, float %179
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 3
  %192 = fmul fast float %190, %90
  %193 = fmul fast float %191, %91
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = and i32 %195, 114688
  %197 = icmp ne i32 %196, 0
  %198 = select i1 %197, float %192, float 0.000000e+00
  %199 = select i1 %197, float %193, float 0.000000e+00
  %200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %59, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = fmul fast float %201, 2.550000e+02
  %203 = fptoui float %202 to i32
  %204 = select i1 %197, i32 %203, i32 0
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %208 = and i32 %207, 3
  %209 = icmp ne i32 %208, 0
  %210 = and i32 %207, 4
  %211 = icmp ne i32 %210, 0
  %212 = and i1 %209, %211
  br i1 %212, label %213, label %224

; <label>:213                                     ; preds = %0
  %214 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %215 = fmul fast float %214, %91
  %216 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %217 = fmul fast float %216, %90
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %217, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fsub fast float 1.000000e+00, %219
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = fcmp fast olt float %220, %222
  br label %227

; <label>:224                                     ; preds = %0
  %225 = icmp eq i32 %210, 0
  %226 = and i1 %209, %225
  br label %227

; <label>:227                                     ; preds = %224, %213
  %228 = phi i1 [ %223, %213 ], [ %226, %224 ]
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fmul fast float %230, 0x3FE3C6EF40000000
  %232 = frem fast float %90, 2.560000e+02
  %233 = frem fast float %91, 2.560000e+02
  %234 = fptoui float %232 to i32
  %235 = fptoui float %233 to i32
  %236 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fadd fast float %237, %231
  %239 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %240 = add i32 %65, 60
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = shl i32 %242, 4
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %242, 7
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %242, 22
  %250 = shl nuw nsw i32 %249, 5
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = add i32 %65, 72
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %254, 8
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = lshr i32 %254, 16
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = add i32 %65, 36
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %268, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %65, 96
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = fmul fast float %277, 0x3F50624DE0000000
  %281 = fmul fast float %279, 0x3F50624DE0000000
  %282 = add i32 %65, 108
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 2
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %295, label %287

; <label>:287                                     ; preds = %227
  %288 = add i32 %65, 168
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = add i32 %290, 0
  %292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %292, %dx.types.Handle %87, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 3
  br label %295

; <label>:295                                     ; preds = %287, %227
  %296 = phi float [ 1.000000e+00, %227 ], [ %294, %287 ]
  %297 = add i32 %65, 24
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = add i32 %65, 28
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = or i32 %302, %299
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %1057, label %305

; <label>:305                                     ; preds = %295
  %306 = add i32 %65, 92
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = lshr i32 %308, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %310, 0x3F50624DE0000000
  %312 = add i32 %65, 40
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = lshr i32 %314, 16
  %316 = and i32 %315, 255
  %317 = lshr i32 %314, 24
  %318 = add i32 %65, 100
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %65, 32
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = lshr i32 %327, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = shl i32 %327, 4
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %327, 7
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 3
  %339 = fmul fast float %338, 1.000000e+03
  %340 = fmul fast float %280, %339
  %341 = call float @dx.op.unary.f32(i32 22, float %340)  ; Frc(value)
  %342 = fadd fast float %341, %270
  %343 = fmul fast float %281, %339
  %344 = call float @dx.op.unary.f32(i32 22, float %343)  ; Frc(value)
  %345 = fadd fast float %344, %272
  %346 = fmul fast float %311, %339
  %347 = call float @dx.op.unary.f32(i32 22, float %346)  ; Frc(value)
  %348 = fmul fast float %347, 0x401921FB60000000
  %349 = fadd fast float %348, %330
  %350 = call float @dx.op.unary.f32(i32 13, float %349)  ; Sin(value)
  %351 = call float @dx.op.unary.f32(i32 12, float %349)  ; Cos(value)
  %352 = fsub fast float -0.000000e+00, %350
  %353 = fadd fast float %76, -5.000000e-01
  %354 = fadd fast float %77, -5.000000e-01
  %355 = fmul fast float %322, %353
  %356 = fmul fast float %324, %354
  %357 = fadd fast float %355, 5.000000e-01
  %358 = fadd fast float %356, 5.000000e-01
  %359 = fmul fast float %333, %357
  %360 = fmul fast float %336, %358
  %361 = fmul fast float %351, %359
  %362 = call float @dx.op.tertiary.f32(i32 46, float %352, float %360, float %361)  ; FMad(a,b,c)
  %363 = fmul fast float %350, %359
  %364 = call float @dx.op.tertiary.f32(i32 46, float %351, float %360, float %363)  ; FMad(a,b,c)
  %365 = fadd fast float %342, %362
  %366 = fadd fast float %345, %364
  %367 = icmp ugt i32 %316, 1
  %368 = icmp ugt i32 %314, 33554431
  %369 = or i1 %368, %367
  br i1 %369, label %370, label %395

; <label>:370                                     ; preds = %305
  %371 = add i32 %65, 84
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = lshr i32 %373, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fmul fast float %338, %375
  %377 = call float @dx.op.unary.f32(i32 22, float %376)  ; Frc(value)
  %378 = mul nuw nsw i32 %316, %317
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %377, %379
  %381 = call float @dx.op.unary.f32(i32 27, float %380)  ; Round_ni(value)
  %382 = fptoui float %381 to i32
  %383 = urem i32 %382, %316
  %384 = udiv i32 %382, %317
  %385 = call float @dx.op.unary.f32(i32 22, float %365)  ; Frc(value)
  %386 = call float @dx.op.unary.f32(i32 22, float %366)  ; Frc(value)
  %387 = uitofp i32 %383 to float
  %388 = uitofp i32 %384 to float
  %389 = fadd fast float %385, %387
  %390 = fadd fast float %386, %388
  %391 = uitofp i32 %316 to float
  %392 = uitofp i32 %317 to float
  %393 = fdiv fast float %389, %391
  %394 = fdiv fast float %390, %392
  br label %395

; <label>:395                                     ; preds = %370, %305
  %396 = phi float [ %393, %370 ], [ %365, %305 ]
  %397 = phi float [ %394, %370 ], [ %366, %305 ]
  %398 = and i32 %299, 16777216
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %509, label %400

; <label>:400                                     ; preds = %395
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %404 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %405 = fadd fast float %402, %137
  %406 = fadd fast float %403, %138
  %407 = fadd fast float %404, %139
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = icmp eq i32 %64, 65535
  br i1 %411, label %506, label %412

; <label>:412                                     ; preds = %400
  %413 = lshr i32 %64, 1
  %414 = shl i32 %413, 2
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %64, 1
  %418 = icmp ne i32 %417, 0
  %419 = lshr i32 %416, 16
  %420 = and i32 %416, 65535
  %421 = select i1 %418, i32 %419, i32 %420
  %422 = icmp eq i32 %421, 65535
  br i1 %422, label %502, label %423

; <label>:423                                     ; preds = %412
  %424 = mul nuw nsw i32 %421, 40
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = extractvalue %dx.types.ResRet.f32 %425, 1
  %428 = extractvalue %dx.types.ResRet.f32 %425, 2
  %429 = add nuw nsw i32 %424, 12
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = add nuw nsw i32 %424, 24
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = add nuw nsw i32 %424, 36
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = fsub fast float %405, %426
  %443 = fsub fast float %406, %427
  %444 = fsub fast float %407, %428
  %445 = fmul fast float %441, %442
  %446 = fmul fast float %441, %443
  %447 = fmul fast float %441, %444
  %448 = call float @dx.op.unary.f32(i32 27, float %445)  ; Round_ni(value)
  %449 = call float @dx.op.unary.f32(i32 27, float %446)  ; Round_ni(value)
  %450 = call float @dx.op.unary.f32(i32 27, float %447)  ; Round_ni(value)
  %451 = fadd fast float %448, 5.000000e-01
  %452 = fadd fast float %449, 5.000000e-01
  %453 = fadd fast float %450, 5.000000e-01
  %454 = fmul fast float %451, %431
  %455 = fmul fast float %452, %432
  %456 = fmul fast float %453, %433
  %457 = shl i32 %64, 2
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add i32 %459, 0
  %461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %462 = call float @dx.op.unary.f32(i32 22, float %454)  ; Frc(value)
  %463 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %464 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %461, %dx.types.Handle %59, float %462, float %463, float %464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = fmul fast float %466, 1.023000e+03
  %470 = fmul fast float %467, 1.023000e+03
  %471 = fmul fast float %468, 1.023000e+03
  %472 = fadd fast float %469, 5.000000e-01
  %473 = fadd fast float %470, 5.000000e-01
  %474 = fadd fast float %471, 5.000000e-01
  %475 = call float @dx.op.unary.f32(i32 27, float %472)  ; Round_ni(value)
  %476 = call float @dx.op.unary.f32(i32 27, float %473)  ; Round_ni(value)
  %477 = call float @dx.op.unary.f32(i32 27, float %474)  ; Round_ni(value)
  %478 = fsub fast float %445, %448
  %479 = fsub fast float %446, %449
  %480 = fsub fast float %447, %450
  %481 = fmul fast float %478, 7.500000e-01
  %482 = fmul fast float %479, 7.500000e-01
  %483 = fmul fast float %480, 7.500000e-01
  %484 = fadd fast float %448, 1.250000e-01
  %485 = fadd fast float %484, %481
  %486 = fadd fast float %485, %475
  %487 = fadd fast float %449, 1.250000e-01
  %488 = fadd fast float %487, %482
  %489 = fadd fast float %488, %476
  %490 = fadd fast float %450, 1.250000e-01
  %491 = fadd fast float %490, %483
  %492 = fadd fast float %491, %477
  %493 = fmul fast float %486, %436
  %494 = fmul fast float %489, %437
  %495 = fmul fast float %492, %438
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %497, 0
  %499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %499, %dx.types.Handle %57, float %493, float %494, float %495, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  br label %502

; <label>:502                                     ; preds = %423, %412
  %503 = phi float [ %501, %423 ], [ -1.000000e+00, %412 ]
  %504 = fadd fast float %503, %410
  %505 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  br label %506

; <label>:506                                     ; preds = %502, %400
  %507 = phi float [ %505, %502 ], [ %410, %400 ]
  %508 = fmul fast float %507, %296
  br label %509

; <label>:509                                     ; preds = %506, %395
  %510 = phi float [ %508, %506 ], [ %296, %395 ]
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = and i32 %512, 256
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %561, label %515

; <label>:515                                     ; preds = %509
  %516 = add i32 %65, 152
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = add i32 %518, 0
  %520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %520, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = add i32 %65, 52
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = shl i32 %525, 4
  %527 = and i32 %526, 32752
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = lshr i32 %525, 7
  %530 = and i32 %529, 32752
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = fsub fast float 1.000000e+00, %510
  %533 = call float @dx.op.binary.f32(i32 35, float %532, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %534 = bitcast float %510 to i32
  %535 = sitofp i32 %534 to float
  %536 = fadd fast float %535, 0xC1CFBF8940000000
  %537 = fmul fast float %531, %536
  %538 = fadd fast float %537, 0x41CFBF8940000000
  %539 = fptosi float %538 to i32
  %540 = bitcast i32 %539 to float
  %541 = bitcast float %533 to i32
  %542 = sitofp i32 %541 to float
  %543 = fadd fast float %542, 0xC1CFBF8940000000
  %544 = fmul fast float %543, %531
  %545 = fadd fast float %544, 0x41CFBF8940000000
  %546 = fptosi float %545 to i32
  %547 = bitcast i32 %546 to float
  %548 = fmul fast float %540, %528
  %549 = fmul fast float %547, %528
  %550 = fsub fast float %533, %548
  %551 = fadd fast float %549, %533
  %552 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %553 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %554 = fsub fast float %522, %552
  %555 = fsub fast float %553, %552
  %556 = bitcast float %555 to i32
  %557 = sub nsw i32 2129859010, %556
  %558 = bitcast i32 %557 to float
  %559 = fmul fast float %558, %554
  %560 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  br label %561

; <label>:561                                     ; preds = %515, %509
  %562 = phi float [ %560, %515 ], [ %510, %509 ]
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 128
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %583, label %567

; <label>:567                                     ; preds = %561
  %568 = add i32 %65, 148
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = add i32 %570, 0
  %572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %572, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 524288
  %578 = icmp ne i32 %577, 0
  %579 = fcmp fast ogt float %574, 0x3FE0101020000000
  %580 = select i1 %579, float 1.000000e+00, float 0.000000e+00
  %581 = select i1 %578, float %580, float %574
  %582 = fmul fast float %581, %562
  br label %583

; <label>:583                                     ; preds = %567, %561
  %584 = phi float [ %582, %567 ], [ %562, %561 ]
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 16
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %787, label %589

; <label>:589                                     ; preds = %583
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = add i32 %65, 136
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %596, %dx.types.Handle %86, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = extractvalue %dx.types.ResRet.f32 %597, 3
  %602 = and i32 %591, 255
  %603 = uitofp i32 %602 to float
  %604 = lshr i32 %591, 8
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %601, %603
  %608 = fadd fast float %607, %606
  %609 = fmul fast float %608, 0x3F70101000000000
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 512
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %622, label %614

; <label>:614                                     ; preds = %589
  %615 = add i32 %65, 156
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add i32 %617, 0
  %619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %619, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  br label %622

; <label>:622                                     ; preds = %614, %589
  %623 = phi float [ %621, %614 ], [ 1.000000e+00, %589 ]
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 33554432
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %734, label %628

; <label>:628                                     ; preds = %622
  %629 = add i32 %65, 80
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = and i32 %631, 65535
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = lshr i32 %631, 16
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = add i32 %65, 84
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 65535
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = lshr i32 %642, 24
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %644, 0x3F70101020000000
  %646 = and i32 %642, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F70101020000000
  %649 = lshr i32 %642, 8
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F70101020000000
  %653 = lshr i32 %642, 16
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F70101020000000
  %657 = add i32 %65, 76
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = lshr i32 %659, 24
  %661 = uitofp i32 %660 to float
  %662 = fmul fast float %661, 0x3F70101020000000
  %663 = and i32 %659, 255
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F70101020000000
  %666 = lshr i32 %659, 8
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = fmul fast float %668, 0x3F70101020000000
  %670 = lshr i32 %659, 16
  %671 = and i32 %670, 255
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %672, 0x3F70101020000000
  %674 = bitcast float %598 to i32
  %675 = ashr i32 %674, 1
  %676 = sub nsw i32 1597463174, %675
  %677 = bitcast i32 %676 to float
  %678 = fmul fast float %598, 5.000000e-01
  %679 = fmul fast float %677, %677
  %680 = fmul fast float %679, %678
  %681 = fsub fast float 1.500000e+00, %680
  %682 = fmul fast float %677, %598
  %683 = fmul fast float %682, %681
  %684 = bitcast float %599 to i32
  %685 = ashr i32 %684, 1
  %686 = sub nsw i32 1597463174, %685
  %687 = bitcast i32 %686 to float
  %688 = fmul fast float %599, 5.000000e-01
  %689 = fmul fast float %687, %687
  %690 = fmul fast float %689, %688
  %691 = fsub fast float 1.500000e+00, %690
  %692 = fmul fast float %687, %599
  %693 = fmul fast float %692, %691
  %694 = bitcast float %600 to i32
  %695 = ashr i32 %694, 1
  %696 = sub nsw i32 1597463174, %695
  %697 = bitcast i32 %696 to float
  %698 = fmul fast float %600, 5.000000e-01
  %699 = fmul fast float %697, %697
  %700 = fmul fast float %699, %698
  %701 = fsub fast float 1.500000e+00, %700
  %702 = fmul fast float %697, %600
  %703 = fmul fast float %702, %701
  %704 = fsub fast float %683, %665
  %705 = fsub fast float %693, %669
  %706 = fsub fast float %703, %673
  %707 = fmul fast float %704, %633
  %708 = fmul fast float %705, %635
  %709 = fmul fast float %706, %640
  %710 = fadd fast float %707, %648
  %711 = fadd fast float %708, %652
  %712 = fadd fast float %709, %656
  %713 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  %714 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %715 = call float @dx.op.unary.f32(i32 7, float %712)  ; Saturate(value)
  %716 = fmul fast float %713, %713
  %717 = fmul fast float %714, %714
  %718 = fmul fast float %715, %715
  %719 = fsub fast float %716, %598
  %720 = fsub fast float %717, %599
  %721 = fsub fast float %718, %600
  %722 = fmul fast float %719, %623
  %723 = fmul fast float %720, %623
  %724 = fmul fast float %721, %623
  %725 = fadd fast float %722, %598
  %726 = fadd fast float %723, %599
  %727 = fadd fast float %724, %600
  %728 = fadd fast float %645, %609
  %729 = fsub fast float %728, %662
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %731 = fsub fast float %730, %609
  %732 = fmul fast float %731, %623
  %733 = fadd fast float %732, %609
  br label %787

; <label>:734                                     ; preds = %622
  %735 = and i32 %625, 134217728
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %771, label %737

; <label>:737                                     ; preds = %734
  %738 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %739 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %740 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %741 = fadd fast float %738, -5.000000e-01
  %742 = fadd fast float %739, -5.000000e-01
  %743 = fadd fast float %740, -5.000000e-01
  %744 = fmul fast float %741, %623
  %745 = fmul fast float %742, %623
  %746 = fmul fast float %743, %623
  %747 = fadd fast float %744, 5.000000e-01
  %748 = fadd fast float %745, 5.000000e-01
  %749 = fadd fast float %746, 5.000000e-01
  %750 = call float @dx.op.unary.f32(i32 24, float %598)  ; Sqrt(value)
  %751 = call float @dx.op.unary.f32(i32 24, float %599)  ; Sqrt(value)
  %752 = call float @dx.op.unary.f32(i32 24, float %600)  ; Sqrt(value)
  %753 = fmul fast float %747, 2.000000e+00
  %754 = fsub fast float 1.000000e+00, %753
  %755 = fmul fast float %754, %750
  %756 = fadd fast float %755, %753
  %757 = fmul fast float %756, %750
  %758 = fmul fast float %748, 2.000000e+00
  %759 = fsub fast float 1.000000e+00, %758
  %760 = fmul fast float %759, %751
  %761 = fadd fast float %760, %758
  %762 = fmul fast float %761, %751
  %763 = fmul fast float %749, 2.000000e+00
  %764 = fsub fast float 1.000000e+00, %763
  %765 = fmul fast float %764, %752
  %766 = fadd fast float %765, %763
  %767 = fmul fast float %766, %752
  %768 = fmul fast float %757, %757
  %769 = fmul fast float %762, %762
  %770 = fmul fast float %767, %767
  br label %787

; <label>:771                                     ; preds = %734
  %772 = fmul fast float %257, %257
  %773 = fmul fast float %261, %261
  %774 = fmul fast float %265, %265
  %775 = fadd fast float %772, -1.000000e+00
  %776 = fadd fast float %773, -1.000000e+00
  %777 = fadd fast float %774, -1.000000e+00
  %778 = fmul fast float %623, %775
  %779 = fmul fast float %623, %776
  %780 = fmul fast float %623, %777
  %781 = fadd fast float %778, 1.000000e+00
  %782 = fadd fast float %779, 1.000000e+00
  %783 = fadd fast float %780, 1.000000e+00
  %784 = fmul fast float %781, %598
  %785 = fmul fast float %782, %599
  %786 = fmul fast float %783, %600
  br label %787

; <label>:787                                     ; preds = %771, %737, %628, %583
  %788 = phi float [ %733, %628 ], [ %609, %737 ], [ %609, %771 ], [ 0x3FA23C0BE0000000, %583 ]
  %789 = phi float [ %725, %628 ], [ %768, %737 ], [ %784, %771 ], [ 1.000000e+00, %583 ]
  %790 = phi float [ %726, %628 ], [ %769, %737 ], [ %785, %771 ], [ 1.000000e+00, %583 ]
  %791 = phi float [ %727, %628 ], [ %770, %737 ], [ %786, %771 ], [ 1.000000e+00, %583 ]
  %792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.i32 %792, 1
  %794 = and i32 %793, 1
  %795 = icmp ne i32 %794, 0
  %796 = add i32 %65, 116
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 32
  %800 = icmp ne i32 %799, 0
  %801 = and i1 %795, %800
  %802 = select i1 %801, float 1.000000e+00, float %789
  %803 = select i1 %801, float 0x3FD3333340000000, float %790
  %804 = select i1 %801, float 0x3FD3333340000000, float %791
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 32
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %881, label %809

; <label>:809                                     ; preds = %787
  %810 = add i32 %65, 44
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = add i32 %65, 140
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = add i32 %815, 0
  %817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %818 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %817, %dx.types.Handle %86, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = extractvalue %dx.types.ResRet.f32 %818, 2
  %822 = extractvalue %dx.types.ResRet.f32 %818, 3
  %823 = and i32 %812, 255
  %824 = uitofp i32 %823 to float
  %825 = lshr i32 %812, 8
  %826 = and i32 %825, 255
  %827 = uitofp i32 %826 to float
  %828 = lshr i32 %812, 16
  %829 = and i32 %828, 255
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F70101000000000
  %832 = fmul fast float %819, %824
  %833 = fadd fast float %832, %827
  %834 = fmul fast float %833, 0x3F70101000000000
  %835 = fadd fast float %820, -5.000000e-01
  %836 = fadd fast float %822, -5.000000e-01
  %837 = fmul fast float %835, %831
  %838 = fmul fast float %836, %831
  %839 = fadd fast float %837, 5.000000e-01
  %840 = fadd fast float %838, 5.000000e-01
  %841 = fmul fast float %839, 2.000000e+00
  %842 = fadd fast float %841, -1.000000e+00
  %843 = fmul fast float %840, 2.000000e+00
  %844 = fadd fast float %843, -1.000000e+00
  %845 = fadd fast float %842, %844
  %846 = fmul fast float %845, 5.000000e-01
  %847 = fsub fast float %842, %844
  %848 = fmul fast float %847, 5.000000e-01
  %849 = call float @dx.op.unary.f32(i32 6, float %846)  ; FAbs(value)
  %850 = fsub fast float 1.000000e+00, %849
  %851 = call float @dx.op.unary.f32(i32 6, float %848)  ; FAbs(value)
  %852 = fsub fast float %850, %851
  %853 = call float @dx.op.dot3.f32(i32 55, float %846, float %848, float %852, float %846, float %848, float %852)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = call float @dx.op.unary.f32(i32 25, float %853)  ; Rsqrt(value)
  %855 = fmul fast float %846, %854
  %856 = fmul fast float %848, %854
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = and i32 %858, 67108864
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %877, label %861

; <label>:861                                     ; preds = %809
  %862 = add i32 %65, 88
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = and i32 %864, 65535
  %866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %865)  ; LegacyF16ToF32(value)
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = and i32 %868, 65535
  %870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %869)  ; LegacyF16ToF32(value)
  %871 = lshr i32 %864, 16
  %872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %871)  ; LegacyF16ToF32(value)
  %873 = fsub fast float %834, %872
  %874 = fmul fast float %873, %866
  %875 = fadd fast float %874, %870
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  br label %877

; <label>:877                                     ; preds = %861, %809
  %878 = phi float [ %876, %861 ], [ %834, %809 ]
  %879 = call float @dx.op.dot2.f32(i32 54, float %855, float %856, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %880 = call float @dx.op.dot2.f32(i32 54, float %855, float %856, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %881

; <label>:881                                     ; preds = %877, %787
  %882 = phi float [ %878, %877 ], [ 0x3FD6666660000000, %787 ]
  %883 = phi float [ %879, %877 ], [ 0.000000e+00, %787 ]
  %884 = phi float [ %880, %877 ], [ 0.000000e+00, %787 ]
  %885 = phi float [ %821, %877 ], [ 1.000000e+00, %787 ]
  %886 = add i32 %65, 64
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = lshr i32 %888, 22
  %890 = shl nuw nsw i32 %889, 5
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = and i32 %893, 64
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %929, label %896

; <label>:896                                     ; preds = %881
  %897 = add i32 %65, 144
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = add i32 %899, 0
  %901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = and i32 %903, 131072
  %905 = icmp eq i32 %904, 0
  %906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %901, %dx.types.Handle %86, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = extractvalue %dx.types.ResRet.f32 %906, 1
  %909 = extractvalue %dx.types.ResRet.f32 %906, 2
  %910 = fmul fast float %907, %245
  %911 = fmul fast float %908, %248
  %912 = fmul fast float %909, %251
  br i1 %905, label %919, label %913

; <label>:913                                     ; preds = %896
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = fmul fast float %915, %910
  %917 = fmul fast float %915, %911
  %918 = fmul fast float %915, %912
  br label %919

; <label>:919                                     ; preds = %913, %896
  %920 = phi float [ %916, %913 ], [ %910, %896 ]
  %921 = phi float [ %917, %913 ], [ %911, %896 ]
  %922 = phi float [ %918, %913 ], [ %912, %896 ]
  %923 = fmul fast float %920, %891
  %924 = select i1 %228, float %923, float %920
  %925 = call float @dx.op.dot3.f32(i32 55, float %924, float %921, float %922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = select i1 %228, float 0.000000e+00, float %920
  %927 = select i1 %228, float %925, float %921
  %928 = select i1 %228, float 0.000000e+00, float %922
  br label %929

; <label>:929                                     ; preds = %919, %881
  %930 = phi float [ %926, %919 ], [ 0.000000e+00, %881 ]
  %931 = phi float [ %927, %919 ], [ 0.000000e+00, %881 ]
  %932 = phi float [ %928, %919 ], [ 0.000000e+00, %881 ]
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 1024
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %967, label %937

; <label>:937                                     ; preds = %929
  %938 = add i32 %65, 56
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F70101020000000
  %944 = lshr i32 %940, 8
  %945 = and i32 %944, 255
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F70101020000000
  %948 = lshr i32 %940, 16
  %949 = and i32 %948, 255
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = fmul fast float %943, %943
  %953 = fmul fast float %947, %947
  %954 = fmul fast float %951, %951
  %955 = add i32 %65, 160
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = add i32 %957, 0
  %959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %959, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = fmul fast float %952, %961
  %965 = fmul fast float %953, %962
  %966 = fmul fast float %954, %963
  br label %967

; <label>:967                                     ; preds = %937, %929
  %968 = phi float [ %964, %937 ], [ 0.000000e+00, %929 ]
  %969 = phi float [ %965, %937 ], [ 0.000000e+00, %929 ]
  %970 = phi float [ %966, %937 ], [ 0.000000e+00, %929 ]
  %971 = fcmp fast ogt float %968, 0.000000e+00
  %972 = fcmp fast ogt float %969, 0.000000e+00
  %973 = fcmp fast ogt float %970, 0.000000e+00
  %974 = call float @dx.op.unary.f32(i32 23, float %968)  ; Log(value)
  %975 = call float @dx.op.unary.f32(i32 23, float %969)  ; Log(value)
  %976 = call float @dx.op.unary.f32(i32 23, float %970)  ; Log(value)
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = lshr i32 %978, 7
  %980 = and i32 %979, 32752
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = fmul fast float %974, 0xBFE62E4300000000
  %983 = fmul fast float %982, %981
  %984 = fmul fast float %975, 0xBFE62E4300000000
  %985 = fmul fast float %984, %981
  %986 = fmul fast float %976, 0xBFE62E4300000000
  %987 = fmul fast float %986, %981
  %988 = select i1 %971, float %983, float 1.270000e+02
  %989 = select i1 %972, float %985, float 1.270000e+02
  %990 = select i1 %973, float %987, float 1.270000e+02
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 10240
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1039, label %995

; <label>:995                                     ; preds = %967
  %996 = add i32 %65, 164
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = add i32 %998, 0
  %1000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1001 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1000, %dx.types.Handle %87, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1001, 3
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %1005, 1048576
  %1007 = icmp ne i32 %1006, 0
  %1008 = and i32 %1005, 8192
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1025, label %1010

; <label>:1010                                    ; preds = %995
  %1011 = extractvalue %dx.types.ResRet.f32 %1001, 2
  %1012 = select i1 %1007, float %1011, float %1002
  %1013 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1014 = select i1 %1007, float %1013, float %1002
  %1015 = add i32 %65, 48
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = lshr i32 %1017, 16
  %1019 = and i32 %1018, 255
  %1020 = uitofp i32 %1019 to float
  %1021 = fmul fast float %1020, 0x3F80101020000000
  %1022 = fmul fast float %1021, %1014
  %1023 = fmul fast float %1021, %1002
  %1024 = fmul fast float %1021, %1012
  br label %1025

; <label>:1025                                    ; preds = %1010, %995
  %1026 = phi float [ %1022, %1010 ], [ 0.000000e+00, %995 ]
  %1027 = phi float [ %1023, %1010 ], [ 0.000000e+00, %995 ]
  %1028 = phi float [ %1024, %1010 ], [ 0.000000e+00, %995 ]
  %1029 = and i32 %1005, 2048
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1039, label %1031

; <label>:1031                                    ; preds = %1025
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = shl i32 %1033, 4
  %1035 = and i32 %1034, 32752
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = fmul fast float %1036, %1003
  %1038 = call float @dx.op.binary.f32(i32 35, float %1037, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1039

; <label>:1039                                    ; preds = %1031, %1025, %967
  %1040 = phi float [ %1026, %1031 ], [ %1026, %1025 ], [ 0.000000e+00, %967 ]
  %1041 = phi float [ %1027, %1031 ], [ %1027, %1025 ], [ 0.000000e+00, %967 ]
  %1042 = phi float [ %1028, %1031 ], [ %1028, %1025 ], [ 0.000000e+00, %967 ]
  %1043 = phi float [ %1038, %1031 ], [ 0x3F70101020000000, %1025 ], [ 0x3F70101020000000, %967 ]
  %1044 = add i32 %65, 48
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 255
  %1048 = uitofp i32 %1047 to float
  %1049 = lshr i32 %1046, 8
  %1050 = and i32 %1049, 255
  %1051 = uitofp i32 %1050 to float
  %1052 = call float @dx.op.dot3.f32(i32 55, float %802, float %803, float %804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1053 = fmul fast float %1051, %1052
  %1054 = fadd fast float %1053, %1048
  %1055 = fmul fast float %1054, 0x3F70101020000000
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  br label %1057

; <label>:1057                                    ; preds = %1039, %295
  %1058 = phi float [ 0.000000e+00, %295 ], [ %883, %1039 ]
  %1059 = phi float [ 0.000000e+00, %295 ], [ %884, %1039 ]
  %1060 = phi float [ 0.000000e+00, %295 ], [ %802, %1039 ]
  %1061 = phi float [ 0.000000e+00, %295 ], [ %803, %1039 ]
  %1062 = phi float [ 0.000000e+00, %295 ], [ %804, %1039 ]
  %1063 = phi float [ 0.000000e+00, %295 ], [ %1040, %1039 ]
  %1064 = phi float [ 0.000000e+00, %295 ], [ %1041, %1039 ]
  %1065 = phi float [ 0.000000e+00, %295 ], [ %1042, %1039 ]
  %1066 = phi float [ 0.000000e+00, %295 ], [ %930, %1039 ]
  %1067 = phi float [ 0.000000e+00, %295 ], [ %931, %1039 ]
  %1068 = phi float [ 0.000000e+00, %295 ], [ %932, %1039 ]
  %1069 = phi float [ 0.000000e+00, %295 ], [ %988, %1039 ]
  %1070 = phi float [ 0.000000e+00, %295 ], [ %989, %1039 ]
  %1071 = phi float [ 0.000000e+00, %295 ], [ %990, %1039 ]
  %1072 = phi float [ 0.000000e+00, %295 ], [ %788, %1039 ]
  %1073 = phi float [ 0.000000e+00, %295 ], [ %584, %1039 ]
  %1074 = phi float [ 0.000000e+00, %295 ], [ %882, %1039 ]
  %1075 = phi float [ 0.000000e+00, %295 ], [ %885, %1039 ]
  %1076 = phi float [ 0.000000e+00, %295 ], [ %1043, %1039 ]
  %1077 = phi float [ 0.000000e+00, %295 ], [ %1056, %1039 ]
  %1078 = add i32 %65, 120
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = bitcast i32 %1080 to float
  %1082 = fcmp fast oge float %1081, 0.000000e+00
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = select i1 %1082, float %1081, float %1084
  %1086 = call float @dx.op.dot2.f32(i32 54, float %1058, float %1059, float %1058, float %1059)  ; Dot2(ax,ay,bx,by)
  %1087 = fmul fast float %1086, 0x3FE3333340000000
  %1088 = fsub fast float 1.000000e+00, %1087
  %1089 = call float @dx.op.dot3.f32(i32 55, float %1058, float %1059, float %1088, float %1058, float %1059, float %1088)  ; Dot3(ax,ay,az,bx,by,bz)
  %1090 = call float @dx.op.unary.f32(i32 25, float %1089)  ; Rsqrt(value)
  %1091 = fmul fast float %1090, %1058
  %1092 = fmul fast float %1090, %1059
  %1093 = fmul fast float %1088, %1090
  %1094 = fmul fast float %1093, %70
  %1095 = fmul fast float %1093, %71
  %1096 = fmul fast float %1093, %72
  %1097 = fmul fast float %1091, %66
  %1098 = fmul fast float %1091, %67
  %1099 = fmul fast float %1091, %68
  %1100 = fadd fast float %1094, %1097
  %1101 = fadd fast float %1095, %1098
  %1102 = fadd fast float %1096, %1099
  %1103 = fmul fast float %1092, %101
  %1104 = fmul fast float %1092, %102
  %1105 = fmul fast float %1092, %103
  %1106 = fadd fast float %1100, %1103
  %1107 = fadd fast float %1101, %1104
  %1108 = fadd fast float %1102, %1105
  %1109 = call float @dx.op.dot3.f32(i32 55, float %1106, float %1107, float %1108, float %1106, float %1107, float %1108)  ; Dot3(ax,ay,az,bx,by,bz)
  %1110 = call float @dx.op.unary.f32(i32 25, float %1109)  ; Rsqrt(value)
  %1111 = fmul fast float %1106, %1110
  %1112 = fmul fast float %1107, %1110
  %1113 = fmul fast float %1108, %1110
  %1114 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %1115 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %1116 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %1117 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %1118 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %1119 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %1120 = fadd fast float %1114, %137
  %1121 = fadd fast float %1115, %138
  %1122 = fadd fast float %1116, %139
  %1123 = fadd fast float %1117, %137
  %1124 = fadd fast float %1118, %138
  %1125 = fadd fast float %1119, %139
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1132 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1133 = fmul fast float %1127, %90
  %1134 = fmul fast float %1133, %1131
  %1135 = fmul fast float %1128, %91
  %1136 = fmul fast float %1135, %1132
  %1137 = fptoui float %1134 to i32
  %1138 = fptoui float %1136 to i32
  %1139 = fadd fast float %1127, -1.000000e+00
  %1140 = fadd fast float %1128, -1.000000e+00
  %1141 = fptoui float %1139 to i32
  %1142 = fptoui float %1140 to i32
  %1143 = call i32 @dx.op.binary.i32(i32 40, i32 %1137, i32 %1141)  ; UMin(a,b)
  %1144 = call i32 @dx.op.binary.i32(i32 40, i32 %1138, i32 %1142)  ; UMin(a,b)
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 2
  %1147 = extractvalue %dx.types.CBufRet.f32 %1145, 3
  %1148 = fmul fast float %1146, %81
  %1149 = fsub fast float %1148, %1147
  %1150 = fadd fast float %1129, -1.000000e+00
  %1151 = call float @dx.op.binary.f32(i32 36, float %1149, float %1150)  ; FMin(a,b)
  %1152 = fptoui float %1151 to i32
  %1153 = fptoui float %1127 to i32
  %1154 = fptoui float %1128 to i32
  %1155 = mul i32 %1152, %1154
  %1156 = add i32 %1155, %1144
  %1157 = mul i32 %1156, %1153
  %1158 = add i32 %1157, %1143
  %1159 = shl i32 %1158, 2
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 1023
  %1163 = lshr i32 %1161, 10
  %1164 = icmp eq i32 %1162, 0
  br i1 %1164, label %1668, label %1165

; <label>:1165                                    ; preds = %1057
  %1166 = and i32 %1161, 1023
  br label %1167

; <label>:1167                                    ; preds = %1299, %1165
  %1168 = phi float [ %1300, %1299 ], [ 0.000000e+00, %1165 ]
  %1169 = phi float [ %1301, %1299 ], [ %1085, %1165 ]
  %1170 = phi float [ %1302, %1299 ], [ %1077, %1165 ]
  %1171 = phi float [ %1303, %1299 ], [ %1069, %1165 ]
  %1172 = phi float [ %1304, %1299 ], [ %1070, %1165 ]
  %1173 = phi float [ %1305, %1299 ], [ %1071, %1165 ]
  %1174 = phi float [ %1306, %1299 ], [ 0.000000e+00, %1165 ]
  %1175 = phi float [ %1307, %1299 ], [ 0.000000e+00, %1165 ]
  %1176 = phi float [ %1308, %1299 ], [ %1063, %1165 ]
  %1177 = phi float [ %1309, %1299 ], [ %1064, %1165 ]
  %1178 = phi float [ %1310, %1299 ], [ %1065, %1165 ]
  %1179 = phi float [ %1311, %1299 ], [ %1066, %1165 ]
  %1180 = phi float [ %1312, %1299 ], [ %1067, %1165 ]
  %1181 = phi float [ %1313, %1299 ], [ %1068, %1165 ]
  %1182 = phi float [ %1314, %1299 ], [ %1111, %1165 ]
  %1183 = phi float [ %1315, %1299 ], [ %1112, %1165 ]
  %1184 = phi float [ %1316, %1299 ], [ %1113, %1165 ]
  %1185 = phi float [ %1317, %1299 ], [ %1075, %1165 ]
  %1186 = phi float [ %1318, %1299 ], [ %1074, %1165 ]
  %1187 = phi float [ %1319, %1299 ], [ 0.000000e+00, %1165 ]
  %1188 = phi float [ %1320, %1299 ], [ %1072, %1165 ]
  %1189 = phi float [ %1321, %1299 ], [ %1060, %1165 ]
  %1190 = phi float [ %1322, %1299 ], [ %1061, %1165 ]
  %1191 = phi float [ %1323, %1299 ], [ %1062, %1165 ]
  %1192 = phi i32 [ %1249, %1299 ], [ 0, %1165 ]
  %1193 = add nuw nsw i32 %1192, %1163
  %1194 = shl i32 %1193, 2
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = shl i32 %1196, 8
  %1198 = or i32 %1197, 48
  %1199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  %1203 = extractvalue %dx.types.ResRet.f32 %1199, 3
  %1204 = or i32 %1197, 64
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.i32 %1205, 1
  %1208 = or i32 %1197, 80
  %1209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1212 = or i32 %1197, 96
  %1213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.ResRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.ResRet.f32 %1213, 2
  %1217 = extractvalue %dx.types.ResRet.f32 %1213, 3
  %1218 = or i32 %1197, 112
  %1219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 2
  %1221 = or i32 %1197, 128
  %1222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.ResRet.f32 %1222, 3
  %1227 = or i32 %1197, 144
  %1228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1232 = extractvalue %dx.types.ResRet.f32 %1228, 3
  %1233 = or i32 %1197, 160
  %1234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.ResRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.ResRet.f32 %1234, 2
  %1238 = extractvalue %dx.types.ResRet.f32 %1234, 3
  %1239 = or i32 %1197, 192
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = or i32 %1197, 208
  %1243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = or i32 %1197, 248
  %1246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.f32 %1246, 1
  %1249 = add nuw nsw i32 %1192, 1
  %1250 = bitcast float %1203 to i32
  %1251 = and i32 %1250, 2560
  %1252 = icmp eq i32 %1251, 0
  %1253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.ResRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.ResRet.f32 %1253, 2
  %1257 = extractvalue %dx.types.ResRet.f32 %1253, 3
  %1258 = call float @dx.op.dot4.f32(i32 56, float %1254, float %1255, float %1256, float %1257, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1259 = or i32 %1197, 16
  %1260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.ResRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.ResRet.f32 %1260, 2
  %1264 = extractvalue %dx.types.ResRet.f32 %1260, 3
  %1265 = call float @dx.op.dot4.f32(i32 56, float %1261, float %1262, float %1263, float %1264, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1266 = or i32 %1197, 32
  %1267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.ResRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.ResRet.f32 %1267, 2
  %1271 = extractvalue %dx.types.ResRet.f32 %1267, 3
  %1272 = call float @dx.op.dot4.f32(i32 56, float %1268, float %1269, float %1270, float %1271, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1273 = call float @dx.op.unary.f32(i32 27, float %1258)  ; Round_ni(value)
  %1274 = call float @dx.op.unary.f32(i32 6, float %1273)  ; FAbs(value)
  %1275 = call float @dx.op.unary.f32(i32 27, float %1265)  ; Round_ni(value)
  %1276 = call float @dx.op.unary.f32(i32 6, float %1275)  ; FAbs(value)
  %1277 = call float @dx.op.unary.f32(i32 6, float %1272)  ; FAbs(value)
  %1278 = call float @dx.op.unary.f32(i32 27, float %1277)  ; Round_ni(value)
  %1279 = fadd fast float %1276, %1274
  %1280 = fadd fast float %1279, %1278
  %1281 = fcmp fast oeq float %1280, 0.000000e+00
  %1282 = call float @dx.op.dot4.f32(i32 56, float %1254, float %1255, float %1256, float %1257, float %1120, float %1121, float %1122, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1283 = call float @dx.op.dot4.f32(i32 56, float %1261, float %1262, float %1263, float %1264, float %1120, float %1121, float %1122, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1284 = call float @dx.op.dot4.f32(i32 56, float %1254, float %1255, float %1256, float %1257, float %1123, float %1124, float %1125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1285 = call float @dx.op.dot4.f32(i32 56, float %1261, float %1262, float %1263, float %1264, float %1123, float %1124, float %1125, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1286 = fsub fast float %1282, %1258
  %1287 = fsub fast float %1284, %1258
  %1288 = fsub fast float %1283, %1265
  %1289 = fsub fast float %1285, %1265
  %1290 = call float @dx.op.dot3.f32(i32 55, float %1200, float %1201, float %1202, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 2
  %1293 = fadd fast float %1292, %1290
  %1294 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1291, 0
  %1296 = fcmp fast ogt float %1294, %1295
  %1297 = and i1 %1281, %1296
  %1298 = and i1 %1252, %1297
  br i1 %1298, label %1325, label %1299

; <label>:1299                                    ; preds = %1654, %1406, %1325, %1167
  %1300 = phi float [ %1168, %1325 ], [ %1409, %1406 ], [ %1409, %1654 ], [ %1168, %1167 ]
  %1301 = phi float [ %1169, %1325 ], [ %1169, %1406 ], [ %1630, %1654 ], [ %1169, %1167 ]
  %1302 = phi float [ %1170, %1325 ], [ %1170, %1406 ], [ %1628, %1654 ], [ %1170, %1167 ]
  %1303 = phi float [ %1171, %1325 ], [ %1171, %1406 ], [ %1606, %1654 ], [ %1171, %1167 ]
  %1304 = phi float [ %1172, %1325 ], [ %1172, %1406 ], [ %1607, %1654 ], [ %1172, %1167 ]
  %1305 = phi float [ %1173, %1325 ], [ %1173, %1406 ], [ %1608, %1654 ], [ %1173, %1167 ]
  %1306 = phi float [ %1174, %1325 ], [ %1174, %1406 ], [ %1533, %1654 ], [ %1174, %1167 ]
  %1307 = phi float [ %1175, %1325 ], [ %1175, %1406 ], [ %1531, %1654 ], [ %1175, %1167 ]
  %1308 = phi float [ %1176, %1325 ], [ %1176, %1406 ], [ %1576, %1654 ], [ %1176, %1167 ]
  %1309 = phi float [ %1177, %1325 ], [ %1177, %1406 ], [ %1577, %1654 ], [ %1177, %1167 ]
  %1310 = phi float [ %1178, %1325 ], [ %1178, %1406 ], [ %1578, %1654 ], [ %1178, %1167 ]
  %1311 = phi float [ %1179, %1325 ], [ %1179, %1406 ], [ %1664, %1654 ], [ %1179, %1167 ]
  %1312 = phi float [ %1180, %1325 ], [ %1180, %1406 ], [ %1665, %1654 ], [ %1180, %1167 ]
  %1313 = phi float [ %1181, %1325 ], [ %1181, %1406 ], [ %1666, %1654 ], [ %1181, %1167 ]
  %1314 = phi float [ %1182, %1325 ], [ %1182, %1406 ], [ %1512, %1654 ], [ %1182, %1167 ]
  %1315 = phi float [ %1183, %1325 ], [ %1183, %1406 ], [ %1513, %1654 ], [ %1183, %1167 ]
  %1316 = phi float [ %1184, %1325 ], [ %1184, %1406 ], [ %1514, %1654 ], [ %1184, %1167 ]
  %1317 = phi float [ %1185, %1325 ], [ %1185, %1406 ], [ %1586, %1654 ], [ %1185, %1167 ]
  %1318 = phi float [ %1186, %1325 ], [ %1186, %1406 ], [ %1583, %1654 ], [ %1186, %1167 ]
  %1319 = phi float [ %1187, %1325 ], [ %1187, %1406 ], [ %1580, %1654 ], [ %1187, %1167 ]
  %1320 = phi float [ %1188, %1325 ], [ %1188, %1406 ], [ %1529, %1654 ], [ %1188, %1167 ]
  %1321 = phi float [ %1189, %1325 ], [ %1189, %1406 ], [ %1524, %1654 ], [ %1189, %1167 ]
  %1322 = phi float [ %1190, %1325 ], [ %1190, %1406 ], [ %1525, %1654 ], [ %1190, %1167 ]
  %1323 = phi float [ %1191, %1325 ], [ %1191, %1406 ], [ %1526, %1654 ], [ %1191, %1167 ]
  %1324 = icmp eq i32 %1249, %1166
  br i1 %1324, label %1667, label %1167

; <label>:1325                                    ; preds = %1167
  %1326 = extractvalue %dx.types.ResRet.f32 %1219, 3
  %1327 = extractvalue %dx.types.ResRet.f32 %1219, 1
  %1328 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1329 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1330 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1331 = extractvalue %dx.types.ResRet.i32 %1205, 3
  %1332 = extractvalue %dx.types.ResRet.i32 %1205, 2
  %1333 = add i32 %1331, 0
  %1334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1333, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1335 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1336 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1334, %dx.types.Handle %1335, float %1258, float %1265, float undef, float undef, i32 0, i32 0, i32 undef, float %1286, float %1288, float undef, float %1287, float %1289, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1337 = extractvalue %dx.types.ResRet.f32 %1336, 0
  %1338 = fmul fast float %1337, %1330
  %1339 = fadd fast float %1338, %1329
  %1340 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1341 = fmul fast float %1258, %1214
  %1342 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %1265, float %1341)  ; FMad(a,b,c)
  %1343 = fadd fast float %1342, %1328
  %1344 = fmul fast float %1258, %1216
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %1217, float %1265, float %1344)  ; FMad(a,b,c)
  %1346 = fadd fast float %1345, %1327
  %1347 = fmul fast float %1286, %1214
  %1348 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %1288, float %1347)  ; FMad(a,b,c)
  %1349 = fmul fast float %1286, %1216
  %1350 = call float @dx.op.tertiary.f32(i32 46, float %1217, float %1288, float %1349)  ; FMad(a,b,c)
  %1351 = fmul fast float %1287, %1214
  %1352 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %1289, float %1351)  ; FMad(a,b,c)
  %1353 = fmul fast float %1287, %1216
  %1354 = call float @dx.op.tertiary.f32(i32 46, float %1217, float %1289, float %1353)  ; FMad(a,b,c)
  %1355 = add i32 %1332, 0
  %1356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1355, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1357 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1356, %dx.types.Handle %1335, float %1343, float %1346, float undef, float undef, i32 0, i32 0, i32 undef, float %1348, float %1350, float undef, float %1352, float %1354, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = and i32 %1250, 1024
  %1360 = icmp ne i32 %1359, 0
  %1361 = fcmp fast ogt float %1358, 0x3FE0101020000000
  %1362 = uitofp i1 %1361 to float
  %1363 = select i1 %1360, float %1362, float %1358
  %1364 = and i32 %1250, 8192
  %1365 = icmp ne i32 %1364, 0
  %1366 = select i1 %1365, float %1326, float 1.000000e+00
  %1367 = fmul fast float %1258, 2.000000e+00
  %1368 = fadd fast float %1367, -1.000000e+00
  %1369 = call float @dx.op.unary.f32(i32 6, float %1368)  ; FAbs(value)
  %1370 = fmul fast float %1369, %1247
  %1371 = fsub fast float %1370, %1247
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = fmul fast float %1265, 2.000000e+00
  %1374 = fadd fast float %1373, -1.000000e+00
  %1375 = call float @dx.op.unary.f32(i32 6, float %1374)  ; FAbs(value)
  %1376 = fmul fast float %1375, %1248
  %1377 = fsub fast float %1376, %1248
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = fmul fast float %1277, %1210
  %1380 = fsub fast float %1379, %1210
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fmul fast float %1340, %1366
  %1383 = fmul fast float %1382, %1337
  %1384 = fmul fast float %1383, %1372
  %1385 = fmul fast float %1384, %1363
  %1386 = fmul fast float %1385, %1378
  %1387 = fmul fast float %1386, %1381
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 1
  %1390 = extractvalue %dx.types.CBufRet.f32 %1388, 0
  %1391 = fsub fast float %1294, %1390
  %1392 = fmul fast float %1391, %1389
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = fmul fast float %1387, %1211
  %1395 = fadd fast float %1387, %1211
  %1396 = fmul fast float %1395, %1220
  %1397 = fsub fast float %1396, %1220
  %1398 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1399 = and i32 %1250, 128
  %1400 = icmp ne i32 %1399, 0
  %1401 = select i1 %1400, float %1398, float %1394
  %1402 = fmul fast float %1401, %1393
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1403, 0
  %1405 = fcmp fast ugt float %1402, %1404
  br i1 %1405, label %1406, label %1299

; <label>:1406                                    ; preds = %1325
  %1407 = select i1 %1365, float %1402, float 0.000000e+00
  %1408 = fadd fast float %1407, %1168
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  br i1 %1365, label %1299, label %1410

; <label>:1410                                    ; preds = %1406
  %1411 = and i32 %1250, 4
  %1412 = and i32 %1250, 8
  %1413 = add i32 %1206, 0
  %1414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1413, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1416 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1414, %dx.types.Handle %1415, float %1343, float %1346, float undef, float undef, i32 0, i32 0, i32 undef, float %1348, float %1350, float undef, float %1352, float %1354, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1416, 1
  %1419 = extractvalue %dx.types.ResRet.f32 %1416, 2
  %1420 = extractvalue %dx.types.ResRet.f32 %1416, 3
  %1421 = bitcast float %1232 to i32
  %1422 = and i32 %1421, 255
  %1423 = uitofp i32 %1422 to float
  %1424 = lshr i32 %1421, 8
  %1425 = and i32 %1424, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = fmul fast float %1420, %1423
  %1428 = fadd fast float %1427, %1426
  %1429 = fmul fast float %1428, 0x3F70101000000000
  %1430 = add i32 %1207, 0
  %1431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1430, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1432 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1431, %dx.types.Handle %1415, float %1343, float %1346, float undef, float undef, i32 0, i32 0, i32 undef, float %1348, float %1350, float undef, float %1352, float %1354, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1433 = extractvalue %dx.types.ResRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.ResRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.ResRet.f32 %1432, 2
  %1436 = extractvalue %dx.types.ResRet.f32 %1432, 3
  %1437 = bitcast float %1226 to i32
  %1438 = and i32 %1437, 255
  %1439 = uitofp i32 %1438 to float
  %1440 = lshr i32 %1437, 8
  %1441 = and i32 %1440, 255
  %1442 = uitofp i32 %1441 to float
  %1443 = lshr i32 %1437, 16
  %1444 = and i32 %1443, 255
  %1445 = uitofp i32 %1444 to float
  %1446 = fmul fast float %1445, 0x3F70101000000000
  %1447 = fmul fast float %1433, %1439
  %1448 = fadd fast float %1447, %1442
  %1449 = fmul fast float %1448, 0x3F70101000000000
  %1450 = fadd fast float %1434, -5.000000e-01
  %1451 = fadd fast float %1436, -5.000000e-01
  %1452 = fmul fast float %1450, %1446
  %1453 = fmul fast float %1451, %1446
  %1454 = fadd fast float %1452, 5.000000e-01
  %1455 = fadd fast float %1453, 5.000000e-01
  %1456 = fmul fast float %1417, %1235
  %1457 = fmul fast float %1418, %1236
  %1458 = fmul fast float %1419, %1237
  %1459 = fmul fast float %1454, 2.000000e+00
  %1460 = fadd fast float %1459, -1.000000e+00
  %1461 = fmul fast float %1455, 2.000000e+00
  %1462 = fadd fast float %1461, -1.000000e+00
  %1463 = fadd fast float %1460, %1462
  %1464 = fmul fast float %1463, 5.000000e-01
  %1465 = fsub fast float %1460, %1462
  %1466 = fmul fast float %1465, 5.000000e-01
  %1467 = call float @dx.op.unary.f32(i32 6, float %1464)  ; FAbs(value)
  %1468 = fsub fast float 1.000000e+00, %1467
  %1469 = call float @dx.op.unary.f32(i32 6, float %1466)  ; FAbs(value)
  %1470 = fsub fast float %1468, %1469
  %1471 = call float @dx.op.dot3.f32(i32 55, float %1464, float %1466, float %1470, float %1464, float %1466, float %1470)  ; Dot3(ax,ay,az,bx,by,bz)
  %1472 = call float @dx.op.unary.f32(i32 25, float %1471)  ; Rsqrt(value)
  %1473 = fmul fast float %1464, %1472
  %1474 = fmul fast float %1466, %1472
  %1475 = fmul fast float %1472, %1470
  %1476 = fmul fast float %1475, %1200
  %1477 = fmul fast float %1475, %1201
  %1478 = fmul fast float %1475, %1202
  %1479 = fmul fast float %1473, %1223
  %1480 = fmul fast float %1473, %1224
  %1481 = fmul fast float %1473, %1225
  %1482 = fadd fast float %1479, %1476
  %1483 = fadd fast float %1480, %1477
  %1484 = fadd fast float %1481, %1478
  %1485 = fmul fast float %1474, %1229
  %1486 = fmul fast float %1474, %1230
  %1487 = fmul fast float %1474, %1231
  %1488 = fadd fast float %1482, %1485
  %1489 = fadd fast float %1483, %1486
  %1490 = fadd fast float %1484, %1487
  %1491 = call float @dx.op.dot3.f32(i32 55, float %1488, float %1489, float %1490, float %1488, float %1489, float %1490)  ; Dot3(ax,ay,az,bx,by,bz)
  %1492 = call float @dx.op.unary.f32(i32 25, float %1491)  ; Rsqrt(value)
  %1493 = fmul fast float %1488, %1492
  %1494 = fmul fast float %1489, %1492
  %1495 = fmul fast float %1490, %1492
  %1496 = icmp ne i32 %1412, 0
  %1497 = select i1 %1496, float 1.000000e+00, float 0.000000e+00
  %1498 = fmul fast float %1402, %1497
  %1499 = and i32 %1250, 1
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1501, label %1505

; <label>:1501                                    ; preds = %1410
  %1502 = fsub fast float %1493, %1182
  %1503 = fsub fast float %1494, %1183
  %1504 = fsub fast float %1495, %1184
  br label %1505

; <label>:1505                                    ; preds = %1501, %1410
  %1506 = phi float [ %1502, %1501 ], [ %1493, %1410 ]
  %1507 = phi float [ %1503, %1501 ], [ %1494, %1410 ]
  %1508 = phi float [ %1504, %1501 ], [ %1495, %1410 ]
  %1509 = fmul float %1508, %1498
  %1510 = fmul float %1507, %1498
  %1511 = fmul float %1506, %1498
  %1512 = fadd fast float %1511, %1182
  %1513 = fadd fast float %1510, %1183
  %1514 = fadd fast float %1509, %1184
  %1515 = icmp ne i32 %1411, 0
  %1516 = select i1 %1515, float 1.000000e+00, float 0.000000e+00
  %1517 = fmul fast float %1402, %1516
  %1518 = fsub fast float %1456, %1189
  %1519 = fsub fast float %1457, %1190
  %1520 = fsub fast float %1458, %1191
  %1521 = fmul fast float %1518, %1517
  %1522 = fmul fast float %1519, %1517
  %1523 = fmul fast float %1520, %1517
  %1524 = fadd fast float %1521, %1189
  %1525 = fadd fast float %1522, %1190
  %1526 = fadd fast float %1523, %1191
  %1527 = fsub fast float %1429, %1188
  %1528 = fmul fast float %1527, %1517
  %1529 = fadd fast float %1528, %1188
  %1530 = fmul fast float %1517, %1175
  %1531 = fsub fast float %1175, %1530
  %1532 = fmul fast float %1517, %1174
  %1533 = fsub fast float %1174, %1532
  %1534 = bitcast float %1244 to i32
  %1535 = lshr i32 %1534, 16
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 1
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %1541, label %1566

; <label>:1541                                    ; preds = %1505
  %1542 = fadd fast float %1429, 0xBFB99999A0000000
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1544 = fmul fast float %1543, 0x3FF1C71C80000000
  %1545 = fsub fast float 1.000000e+00, %1544
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1547 = fmul fast float %1546, %1456
  %1548 = fmul fast float %1546, %1457
  %1549 = fmul fast float %1546, %1458
  %1550 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1551 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1552 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1551, float %1552)  ; FMax(a,b)
  %1554 = call float @dx.op.binary.f32(i32 35, float %1550, float %1553)  ; FMax(a,b)
  %1555 = fcmp fast ogt float %1554, 0.000000e+00
  %1556 = bitcast float %1554 to i32
  %1557 = sub nsw i32 2129859010, %1556
  %1558 = bitcast i32 %1557 to float
  %1559 = select i1 %1555, float %1558, float 0.000000e+00
  %1560 = fmul fast float %1550, %1536
  %1561 = fmul fast float %1551, %1536
  %1562 = fmul fast float %1552, %1536
  %1563 = fmul fast float %1560, %1559
  %1564 = fmul fast float %1561, %1559
  %1565 = fmul fast float %1562, %1559
  br label %1566

; <label>:1566                                    ; preds = %1541, %1505
  %1567 = phi float [ %1536, %1505 ], [ %1563, %1541 ]
  %1568 = phi float [ %1536, %1505 ], [ %1564, %1541 ]
  %1569 = phi float [ %1536, %1505 ], [ %1565, %1541 ]
  %1570 = fsub fast float %1567, %1176
  %1571 = fsub fast float %1568, %1177
  %1572 = fsub fast float %1569, %1178
  %1573 = fmul fast float %1570, %1517
  %1574 = fmul fast float %1571, %1517
  %1575 = fmul fast float %1572, %1517
  %1576 = fadd fast float %1573, %1176
  %1577 = fadd fast float %1574, %1177
  %1578 = fadd fast float %1575, %1178
  %1579 = fadd fast float %1402, %1187
  %1580 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1581 = fsub fast float %1449, %1186
  %1582 = fmul fast float %1581, %1498
  %1583 = fadd fast float %1582, %1186
  %1584 = fsub fast float %1435, %1185
  %1585 = fmul fast float %1584, %1498
  %1586 = fadd fast float %1585, %1185
  br i1 %1500, label %1595, label %1587

; <label>:1587                                    ; preds = %1566
  %1588 = and i32 %1250, 32768
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1605, label %1590

; <label>:1590                                    ; preds = %1587
  %1591 = fmul fast float %1498, 1.270000e+02
  %1592 = fadd fast float %1591, %1171
  %1593 = fadd fast float %1591, %1172
  %1594 = fadd fast float %1591, %1173
  br label %1605

; <label>:1595                                    ; preds = %1566
  %1596 = fsub fast float 1.270000e+02, %1171
  %1597 = fsub fast float 1.270000e+02, %1172
  %1598 = fsub fast float 1.270000e+02, %1173
  %1599 = fmul fast float %1498, %1596
  %1600 = fmul fast float %1498, %1597
  %1601 = fmul fast float %1498, %1598
  %1602 = fadd fast float %1599, %1171
  %1603 = fadd fast float %1600, %1172
  %1604 = fadd fast float %1601, %1173
  br label %1605

; <label>:1605                                    ; preds = %1595, %1590, %1587
  %1606 = phi float [ %1592, %1590 ], [ %1171, %1587 ], [ %1602, %1595 ]
  %1607 = phi float [ %1593, %1590 ], [ %1172, %1587 ], [ %1603, %1595 ]
  %1608 = phi float [ %1594, %1590 ], [ %1173, %1587 ], [ %1604, %1595 ]
  %1609 = call float @dx.op.dot3.f32(i32 55, float %1456, float %1457, float %1458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.CBufRet.f32 %1610, 1
  %1613 = fmul fast float %1612, %1609
  %1614 = fadd fast float %1613, %1611
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = bitcast float %1238 to i32
  %1617 = and i32 %1616, 65535
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = lshr i32 %1616, 16
  %1620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1619)  ; LegacyF16ToF32(value)
  %1621 = fcmp fast oge float %1618, 0.000000e+00
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = select i1 %1621, float %1618, float %1623
  %1625 = fadd fast float %1624, %1620
  %1626 = fsub fast float %1615, %1170
  %1627 = fmul fast float %1626, %1402
  %1628 = fadd fast float %1627, %1170
  %1629 = fmul fast float %1625, %1402
  %1630 = call float @dx.op.binary.f32(i32 35, float %1169, float %1629)  ; FMax(a,b)
  %1631 = and i32 %1250, 16
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1654, label %1633

; <label>:1633                                    ; preds = %1605
  %1634 = add i32 %1241, 0
  %1635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1634, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1636 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1635, %dx.types.Handle %1415, float %1343, float %1346, float undef, float undef, i32 0, i32 0, i32 undef, float %1348, float %1350, float undef, float %1352, float %1354, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1637 = extractvalue %dx.types.ResRet.f32 %1636, 0
  %1638 = extractvalue %dx.types.ResRet.f32 %1636, 1
  %1639 = extractvalue %dx.types.ResRet.f32 %1636, 2
  %1640 = and i32 %1534, 65535
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = fmul fast float %1637, %1235
  %1643 = fmul fast float %1638, %1236
  %1644 = fmul fast float %1639, %1237
  %1645 = and i32 %1250, 16384
  %1646 = icmp ne i32 %1645, 0
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = select i1 %1646, float %1648, float 1.000000e+00
  %1650 = fmul fast float %1649, %1641
  %1651 = fmul fast float %1642, %1650
  %1652 = fmul fast float %1643, %1650
  %1653 = fmul fast float %1644, %1650
  br label %1654

; <label>:1654                                    ; preds = %1633, %1605
  %1655 = phi float [ %1651, %1633 ], [ 0.000000e+00, %1605 ]
  %1656 = phi float [ %1652, %1633 ], [ 0.000000e+00, %1605 ]
  %1657 = phi float [ %1653, %1633 ], [ 0.000000e+00, %1605 ]
  %1658 = fsub fast float %1655, %1179
  %1659 = fsub fast float %1656, %1180
  %1660 = fsub fast float %1657, %1181
  %1661 = fmul fast float %1658, %1402
  %1662 = fmul fast float %1659, %1402
  %1663 = fmul fast float %1660, %1402
  %1664 = fadd fast float %1661, %1179
  %1665 = fadd fast float %1662, %1180
  %1666 = fadd fast float %1663, %1181
  br label %1299

; <label>:1667                                    ; preds = %1299
  br label %1668

; <label>:1668                                    ; preds = %1667, %1057
  %1669 = phi float [ 0.000000e+00, %1057 ], [ %1300, %1667 ]
  %1670 = phi float [ %1085, %1057 ], [ %1301, %1667 ]
  %1671 = phi float [ %1077, %1057 ], [ %1302, %1667 ]
  %1672 = phi float [ %1069, %1057 ], [ %1303, %1667 ]
  %1673 = phi float [ %1070, %1057 ], [ %1304, %1667 ]
  %1674 = phi float [ %1071, %1057 ], [ %1305, %1667 ]
  %1675 = phi float [ 0.000000e+00, %1057 ], [ %1306, %1667 ]
  %1676 = phi float [ 0.000000e+00, %1057 ], [ %1307, %1667 ]
  %1677 = phi float [ %1063, %1057 ], [ %1308, %1667 ]
  %1678 = phi float [ %1064, %1057 ], [ %1309, %1667 ]
  %1679 = phi float [ %1065, %1057 ], [ %1310, %1667 ]
  %1680 = phi float [ %1066, %1057 ], [ %1311, %1667 ]
  %1681 = phi float [ %1067, %1057 ], [ %1312, %1667 ]
  %1682 = phi float [ %1068, %1057 ], [ %1313, %1667 ]
  %1683 = phi float [ %1111, %1057 ], [ %1314, %1667 ]
  %1684 = phi float [ %1112, %1057 ], [ %1315, %1667 ]
  %1685 = phi float [ %1113, %1057 ], [ %1316, %1667 ]
  %1686 = phi float [ %1075, %1057 ], [ %1317, %1667 ]
  %1687 = phi float [ %1074, %1057 ], [ %1318, %1667 ]
  %1688 = phi float [ 0.000000e+00, %1057 ], [ %1319, %1667 ]
  %1689 = phi float [ %1072, %1057 ], [ %1320, %1667 ]
  %1690 = phi float [ %1060, %1057 ], [ %1321, %1667 ]
  %1691 = phi float [ %1061, %1057 ], [ %1322, %1667 ]
  %1692 = phi float [ %1062, %1057 ], [ %1323, %1667 ]
  %1693 = call float @dx.op.dot3.f32(i32 55, float %1683, float %1684, float %1685, float %1683, float %1684, float %1685)  ; Dot3(ax,ay,az,bx,by,bz)
  %1694 = call float @dx.op.unary.f32(i32 25, float %1693)  ; Rsqrt(value)
  %1695 = fmul fast float %1694, %1683
  %1696 = fmul fast float %1694, %1684
  %1697 = fmul fast float %1694, %1685
  %1698 = fadd fast float %1688, %1073
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = call float @dx.op.dot3.f32(i32 55, float %1695, float %1696, float %1697, float %1695, float %1696, float %1697)  ; Dot3(ax,ay,az,bx,by,bz)
  %1701 = call float @dx.op.unary.f32(i32 25, float %1700)  ; Rsqrt(value)
  %1702 = fmul fast float %1701, %1695
  %1703 = fmul fast float %1701, %1696
  %1704 = fmul fast float %1701, %1697
  %1705 = fadd fast float %1689, 0xBFB99999A0000000
  %1706 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  %1707 = fmul fast float %1706, 0x3FF1C71C80000000
  %1708 = call float @dx.op.binary.f32(i32 36, float %1689, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1709 = fsub fast float 1.000000e+00, %1707
  %1710 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1711 = fmul fast float %1710, %1690
  %1712 = fmul fast float %1710, %1691
  %1713 = fmul fast float %1710, %1692
  %1714 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1715 = call float @dx.op.unary.f32(i32 7, float %1712)  ; Saturate(value)
  %1716 = call float @dx.op.unary.f32(i32 7, float %1713)  ; Saturate(value)
  %1717 = fmul fast float %1707, %1690
  %1718 = fmul fast float %1707, %1691
  %1719 = fmul fast float %1707, %1692
  %1720 = fadd fast float %1717, %1708
  %1721 = fadd fast float %1718, %1708
  %1722 = fadd fast float %1719, %1708
  %1723 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1724 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1725 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1726 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = and i32 %1728, 1
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %1745, label %1731

; <label>:1731                                    ; preds = %1668
  %1732 = call float @dx.op.binary.f32(i32 35, float %1715, float %1716)  ; FMax(a,b)
  %1733 = call float @dx.op.binary.f32(i32 35, float %1714, float %1732)  ; FMax(a,b)
  %1734 = fcmp fast ogt float %1733, 0.000000e+00
  %1735 = bitcast float %1733 to i32
  %1736 = sub nsw i32 2129859010, %1735
  %1737 = bitcast i32 %1736 to float
  %1738 = select i1 %1734, float %1737, float 0.000000e+00
  %1739 = fmul fast float %1714, %1677
  %1740 = fmul fast float %1715, %1678
  %1741 = fmul fast float %1716, %1679
  %1742 = fmul fast float %1739, %1738
  %1743 = fmul fast float %1740, %1738
  %1744 = fmul fast float %1741, %1738
  br label %1745

; <label>:1745                                    ; preds = %1731, %1668
  %1746 = phi float [ %1742, %1731 ], [ %1677, %1668 ]
  %1747 = phi float [ %1743, %1731 ], [ %1678, %1668 ]
  %1748 = phi float [ %1744, %1731 ], [ %1679, %1668 ]
  %1749 = call float @dx.op.binary.f32(i32 36, float %1672, float 1.270000e+02)  ; FMin(a,b)
  %1750 = call float @dx.op.binary.f32(i32 36, float %1673, float 1.270000e+02)  ; FMin(a,b)
  %1751 = call float @dx.op.binary.f32(i32 36, float %1674, float 1.270000e+02)  ; FMin(a,b)
  %1752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.i32 %1752, 3
  %1754 = and i32 %1753, 8
  %1755 = icmp ne i32 %1754, 0
  %1756 = call float @dx.op.binary.f32(i32 35, float %1714, float %1690)  ; FMax(a,b)
  %1757 = call float @dx.op.binary.f32(i32 35, float %1715, float %1690)  ; FMax(a,b)
  %1758 = call float @dx.op.binary.f32(i32 35, float %1716, float %1690)  ; FMax(a,b)
  %1759 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1715, float %1716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1760 = select i1 %228, float %1690, float %1714
  %1761 = select i1 %228, float %1759, float %1715
  %1762 = select i1 %228, float 1.000000e+00, float %1716
  %1763 = select i1 %1755, float %1756, float %1760
  %1764 = select i1 %1755, float %1757, float %1761
  %1765 = select i1 %1755, float %1758, float %1762
  %1766 = call float @dx.op.dot3.f32(i32 55, float %1746, float %1747, float %1748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1767 = select i1 %228, float %1766, float %1746
  %1768 = select i1 %228, float %1766, float %1747
  %1769 = select i1 %228, float %1766, float %1748
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.CBufRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.CBufRet.f32 %1770, 2
  %1774 = fadd fast float %1771, %137
  %1775 = fadd fast float %1772, %138
  %1776 = fadd fast float %1773, %139
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1780 = fsub fast float %1774, %1778
  %1781 = fsub fast float %1775, %1779
  %1782 = fmul fast float %1780, %1780
  %1783 = fmul fast float %1781, %1781
  %1784 = fadd fast float %1782, %1783
  %1785 = call float @dx.op.unary.f32(i32 24, float %1784)  ; Sqrt(value)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1787 = fcmp fast olt float %1785, %1786
  br i1 %1787, label %1788, label %1855

; <label>:1788                                    ; preds = %1745
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 0
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 0
  %1795 = extractvalue %dx.types.CBufRet.f32 %1789, 1
  %1796 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1797 = extractvalue %dx.types.CBufRet.f32 %1793, 1
  %1798 = extractvalue %dx.types.CBufRet.f32 %1789, 3
  %1799 = extractvalue %dx.types.CBufRet.f32 %1791, 3
  %1800 = extractvalue %dx.types.CBufRet.f32 %1793, 3
  %1801 = fadd fast float %1798, %1774
  %1802 = fadd fast float %1799, %1775
  %1803 = fadd fast float %1800, %1776
  %1804 = fmul fast float %1801, %1790
  %1805 = call float @dx.op.tertiary.f32(i32 46, float %1802, float %1792, float %1804)  ; FMad(a,b,c)
  %1806 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1794, float %1805)  ; FMad(a,b,c)
  %1807 = fmul fast float %1801, %1795
  %1808 = call float @dx.op.tertiary.f32(i32 46, float %1802, float %1796, float %1807)  ; FMad(a,b,c)
  %1809 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1797, float %1808)  ; FMad(a,b,c)
  %1810 = fsub fast float %1806, %1798
  %1811 = fsub fast float %1809, %1799
  %1812 = fsub fast float %1810, %1778
  %1813 = fadd fast float %1812, %1786
  %1814 = fsub fast float %1811, %1779
  %1815 = fadd fast float %1814, %1786
  %1816 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1817 = fmul fast float %1813, %1816
  %1818 = fmul fast float %1815, %1816
  %1819 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1820 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  %1821 = fsub fast float 1.000000e+00, %1819
  %1822 = fsub fast float 1.000000e+00, %1820
  %1823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1821, float %1822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1824 = extractvalue %dx.types.ResRet.f32 %1823, 0
  %1825 = fcmp fast ugt float %1824, 0.000000e+00
  br i1 %1825, label %1826, label %2129

; <label>:1826                                    ; preds = %1788
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 2
  %1829 = fmul fast float %1828, %1824
  %1830 = extractvalue %dx.types.CBufRet.f32 %1827, 3
  %1831 = fadd fast float %1830, %1829
  %1832 = extractvalue %dx.types.CBufRet.f32 %1793, 2
  %1833 = fadd fast float %1831, %1800
  %1834 = fmul fast float %1806, %1794
  %1835 = call float @dx.op.tertiary.f32(i32 46, float %1809, float %1797, float %1834)  ; FMad(a,b,c)
  %1836 = call float @dx.op.tertiary.f32(i32 46, float %1833, float %1832, float %1835)  ; FMad(a,b,c)
  %1837 = fsub fast float %1836, %1800
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 2
  %1840 = fsub fast float %1837, %1839
  %1841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1821, float %1822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1821, float %1822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = extractvalue %dx.types.ResRet.f32 %1845, 1
  %1848 = extractvalue %dx.types.ResRet.f32 %1845, 2
  %1849 = fadd fast float %1846, %1842
  %1850 = fmul fast float %1849, 0x3F847AE140000000
  %1851 = fadd fast float %1847, %1843
  %1852 = fmul fast float %1851, 0x3F847AE140000000
  %1853 = fadd fast float %1848, %1844
  %1854 = fmul fast float %1853, 0x3F847AE140000000
  br label %2129

; <label>:1855                                    ; preds = %1745
  %1856 = and i32 %204, 1
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %2129, label %1858

; <label>:1858                                    ; preds = %1855
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 0
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1866 = extractvalue %dx.types.CBufRet.f32 %1861, 1
  %1867 = extractvalue %dx.types.CBufRet.f32 %1863, 1
  %1868 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1869 = extractvalue %dx.types.CBufRet.f32 %1861, 3
  %1870 = extractvalue %dx.types.CBufRet.f32 %1863, 3
  %1871 = fadd fast float %1868, %1774
  %1872 = fadd fast float %1869, %1775
  %1873 = fadd fast float %1870, %1776
  %1874 = fmul fast float %1871, %1860
  %1875 = call float @dx.op.tertiary.f32(i32 46, float %1872, float %1862, float %1874)  ; FMad(a,b,c)
  %1876 = call float @dx.op.tertiary.f32(i32 46, float %1873, float %1864, float %1875)  ; FMad(a,b,c)
  %1877 = fmul fast float %1871, %1865
  %1878 = call float @dx.op.tertiary.f32(i32 46, float %1872, float %1866, float %1877)  ; FMad(a,b,c)
  %1879 = call float @dx.op.tertiary.f32(i32 46, float %1873, float %1867, float %1878)  ; FMad(a,b,c)
  %1880 = fsub fast float %1876, %1868
  %1881 = fsub fast float %1879, %1869
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1885 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1886 = extractvalue %dx.types.CBufRet.f32 %1882, 3
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 3
  %1889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.i32 %1889, 0
  %1891 = extractvalue %dx.types.CBufRet.i32 %1889, 1
  %1892 = udiv i32 %1891, %1890
  %1893 = fsub fast float %1880, %1883
  %1894 = fsub fast float %1881, %1884
  %1895 = call float @dx.op.binary.f32(i32 35, float %1893, float 0.000000e+00)  ; FMax(a,b)
  %1896 = call float @dx.op.binary.f32(i32 35, float %1894, float 0.000000e+00)  ; FMax(a,b)
  %1897 = call float @dx.op.binary.f32(i32 36, float %1895, float %1885)  ; FMin(a,b)
  %1898 = call float @dx.op.binary.f32(i32 36, float %1896, float %1886)  ; FMin(a,b)
  %1899 = add i32 %1890, -1
  %1900 = add i32 %1892, -1
  %1901 = fmul fast float %1897, %1888
  %1902 = fmul fast float %1898, %1888
  %1903 = fptoui float %1901 to i32
  %1904 = fptoui float %1902 to i32
  %1905 = call i32 @dx.op.binary.i32(i32 40, i32 %1903, i32 %1899)  ; UMin(a,b)
  %1906 = call i32 @dx.op.binary.i32(i32 40, i32 %1904, i32 %1900)  ; UMin(a,b)
  %1907 = mul i32 %1906, %1890
  %1908 = add i32 %1907, %1905
  %1909 = shl i32 %1908, 2
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = icmp eq i32 %1911, -1
  br i1 %1912, label %2129, label %1913

; <label>:1913                                    ; preds = %1858
  %1914 = mul i32 %1911, 148
  %1915 = add i32 %1914, 4
  %1916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = add i32 %1914, 8
  %1919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = add i32 %1914, 36
  %1922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.f32 %1922, 0
  %1924 = add i32 %1914, 60
  %1925 = add i32 %1914, 92
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = add i32 %1914, 116
  %1929 = fsub fast float %1880, %1917
  %1930 = fsub fast float %1881, %1920
  %1931 = fmul fast float %1888, %1929
  %1932 = fmul fast float %1888, %1930
  %1933 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1934 = call float @dx.op.unary.f32(i32 7, float %1932)  ; Saturate(value)
  %1935 = fsub fast float 1.000000e+00, %1934
  %1936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1936, 2
  %1938 = call float @dx.op.unary.f32(i32 83, float %1933)  ; DerivCoarseX(value)
  %1939 = call float @dx.op.unary.f32(i32 83, float %1935)  ; DerivCoarseX(value)
  %1940 = call float @dx.op.unary.f32(i32 84, float %1933)  ; DerivCoarseY(value)
  %1941 = call float @dx.op.unary.f32(i32 84, float %1935)  ; DerivCoarseY(value)
  %1942 = fmul fast float %1938, %1937
  %1943 = fmul fast float %1939, %1937
  %1944 = fmul fast float %1940, %1937
  %1945 = fmul fast float %1941, %1937
  %1946 = call float @dx.op.dot2.f32(i32 54, float %1944, float %1945, float %1944, float %1945)  ; Dot2(ax,ay,bx,by)
  %1947 = call float @dx.op.dot2.f32(i32 54, float %1942, float %1943, float %1942, float %1943)  ; Dot2(ax,ay,bx,by)
  %1948 = call float @dx.op.binary.f32(i32 35, float %1947, float %1946)  ; FMax(a,b)
  %1949 = call float @dx.op.unary.f32(i32 23, float %1948)  ; Log(value)
  %1950 = fmul fast float %1949, 5.000000e-01
  %1951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1951, 1
  %1953 = fadd fast float %1952, %1950
  %1954 = call float @dx.op.binary.f32(i32 35, float %1953, float 0.000000e+00)  ; FMax(a,b)
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 3
  %1957 = fadd fast float %1956, %1954
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 3
  %1960 = fadd fast float %1957, %1959
  %1961 = add i32 %1927, 0
  %1962 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1961, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1963 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1962, i32 0)  ; GetDimensions(handle,mipLevel)
  %1964 = extractvalue %dx.types.Dimensions %1963, 0
  %1965 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1964)  ; FirstbitLo(value)
  %1966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1967 = extractvalue %dx.types.CBufRet.i32 %1966, 1
  %1968 = sub nsw i32 %1967, %1965
  %1969 = sitofp i32 %1968 to float
  %1970 = fsub fast float %1960, %1969
  %1971 = call float @dx.op.binary.f32(i32 35, float %1970, float 0.000000e+00)  ; FMax(a,b)
  %1972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1962, %dx.types.Handle %56, float %1933, float %1935, float %1923, float undef, i32 0, i32 0, i32 undef, float %1971)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = fcmp ule float %1973, 0x3FE0101020000000
  %1975 = extractvalue %dx.types.CBufRet.i32 %1966, 0
  %1976 = and i32 %1975, 128
  %1977 = icmp ne i32 %1976, 0
  %1978 = and i1 %1974, %1977
  br i1 %1978, label %2129, label %1979

; <label>:1979                                    ; preds = %1913
  %1980 = add i32 %1914, 20
  %1981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = add i32 %1914, 24
  %1984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.f32 %1984, 0
  %1986 = add i32 %1914, 40
  %1987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = add i32 %1914, 96
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 2
  %1994 = fmul fast float %1993, %1933
  %1995 = fmul fast float %1993, %1935
  %1996 = extractvalue %dx.types.CBufRet.f32 %1992, 3
  %1997 = fadd fast float %1994, %1996
  %1998 = fadd fast float %1995, %1996
  %1999 = add i32 %1991, 0
  %2000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1999, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2001 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2000, i32 0)  ; GetDimensions(handle,mipLevel)
  %2002 = extractvalue %dx.types.Dimensions %2001, 0
  %2003 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2002)  ; FirstbitLo(value)
  %2004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.i32 %2004, 1
  %2006 = sub nsw i32 %2005, %2003
  %2007 = sitofp i32 %2006 to float
  %2008 = fsub fast float %1957, %2007
  %2009 = call float @dx.op.binary.f32(i32 35, float %2008, float 0.000000e+00)  ; FMax(a,b)
  %2010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2000, %dx.types.Handle %56, float %1997, float %1998, float %1988, float undef, i32 0, i32 0, i32 undef, float %2009)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = fmul fast float %2011, %1982
  %2013 = fadd fast float %2012, %1985
  %2014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2015 = extractvalue %dx.types.CBufRet.f32 %2014, 0
  %2016 = extractvalue %dx.types.CBufRet.f32 %2014, 1
  %2017 = extractvalue %dx.types.CBufRet.f32 %2014, 2
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 3
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 3
  %2022 = extractvalue %dx.types.CBufRet.f32 %2014, 3
  %2023 = fadd fast float %2019, %1880
  %2024 = fadd fast float %2021, %1881
  %2025 = fadd fast float %2013, %2022
  %2026 = fmul fast float %2023, %2015
  %2027 = call float @dx.op.tertiary.f32(i32 46, float %2024, float %2016, float %2026)  ; FMad(a,b,c)
  %2028 = call float @dx.op.tertiary.f32(i32 46, float %2025, float %2017, float %2027)  ; FMad(a,b,c)
  %2029 = fsub fast float %2028, %2022
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 2
  %2032 = fsub fast float %2029, %2031
  %2033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.i32 %2033, 0
  %2035 = call i32 @dx.op.binary.i32(i32 40, i32 %1911, i32 %2034)  ; UMin(a,b)
  %2036 = mul i32 %2035, 36
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = add i32 %2036, 4
  %2040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2041 = extractvalue %dx.types.CBufRet.f32 %2040, 0
  %2042 = fmul fast float %2041, %1933
  %2043 = fmul fast float %2041, %1935
  %2044 = extractvalue %dx.types.CBufRet.f32 %2040, 1
  %2045 = fadd fast float %2042, %2044
  %2046 = fadd fast float %2043, %2044
  %2047 = icmp eq i32 %2038, 0
  br i1 %2047, label %2116, label %2048

; <label>:2048                                    ; preds = %1979
  br label %2049

; <label>:2049                                    ; preds = %2106, %2048
  %2050 = phi float [ %2107, %2106 ], [ 0.000000e+00, %2048 ]
  %2051 = phi float [ %2108, %2106 ], [ 0.000000e+00, %2048 ]
  %2052 = phi float [ %2109, %2106 ], [ 0.000000e+00, %2048 ]
  %2053 = phi float [ %2110, %2106 ], [ 0.000000e+00, %2048 ]
  %2054 = phi float [ %2111, %2106 ], [ 0.000000e+00, %2048 ]
  %2055 = phi float [ %2112, %2106 ], [ 0.000000e+00, %2048 ]
  %2056 = phi i32 [ %2113, %2106 ], [ 0, %2048 ]
  %2057 = shl i32 %2056, 2
  %2058 = add i32 %1924, %2057
  %2059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  %2061 = add i32 %1928, %2057
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = add i32 %2063, 0
  %2065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2064, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2066 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2065, i32 0)  ; GetDimensions(handle,mipLevel)
  %2067 = extractvalue %dx.types.Dimensions %2066, 0
  %2068 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2067)  ; FirstbitLo(value)
  %2069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.i32 %2069, 1
  %2071 = sub nsw i32 %2070, %2068
  %2072 = sitofp i32 %2071 to float
  %2073 = fsub fast float %1957, %2072
  %2074 = call float @dx.op.binary.f32(i32 35, float %2073, float 0.000000e+00)  ; FMax(a,b)
  %2075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2065, %dx.types.Handle %56, float %2045, float %2046, float %2060, float undef, i32 0, i32 0, i32 undef, float %2074)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  %2077 = fcmp fast ogt float %2076, 0.000000e+00
  br i1 %2077, label %2078, label %2106

; <label>:2078                                    ; preds = %2049
  %2079 = add i32 %2039, %2057
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = and i32 %2081, 32767
  %2083 = mul nuw nsw i32 %2082, 928
  %2084 = add nuw nsw i32 %2083, 48
  %2085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.f32 %2085, 0
  %2087 = extractvalue %dx.types.ResRet.f32 %2085, 1
  %2088 = extractvalue %dx.types.ResRet.f32 %2085, 2
  %2089 = add nuw nsw i32 %2083, 60
  %2090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.f32 %2090, 0
  %2092 = extractvalue %dx.types.ResRet.f32 %2090, 1
  %2093 = extractvalue %dx.types.ResRet.f32 %2090, 2
  %2094 = fmul fast float %2086, %2076
  %2095 = fmul fast float %2087, %2076
  %2096 = fmul fast float %2088, %2076
  %2097 = fadd fast float %2094, %2050
  %2098 = fadd fast float %2095, %2051
  %2099 = fadd fast float %2096, %2052
  %2100 = fmul fast float %2091, %2076
  %2101 = fmul fast float %2092, %2076
  %2102 = fmul fast float %2093, %2076
  %2103 = fadd fast float %2100, %2053
  %2104 = fadd fast float %2101, %2054
  %2105 = fadd fast float %2102, %2055
  br label %2106

; <label>:2106                                    ; preds = %2078, %2049
  %2107 = phi float [ %2097, %2078 ], [ %2050, %2049 ]
  %2108 = phi float [ %2098, %2078 ], [ %2051, %2049 ]
  %2109 = phi float [ %2099, %2078 ], [ %2052, %2049 ]
  %2110 = phi float [ %2103, %2078 ], [ %2053, %2049 ]
  %2111 = phi float [ %2104, %2078 ], [ %2054, %2049 ]
  %2112 = phi float [ %2105, %2078 ], [ %2055, %2049 ]
  %2113 = add nuw i32 %2056, 1
  %2114 = icmp eq i32 %2113, %2038
  br i1 %2114, label %2115, label %2049

; <label>:2115                                    ; preds = %2106
  br label %2116

; <label>:2116                                    ; preds = %2115, %1979
  %2117 = phi float [ 0.000000e+00, %1979 ], [ %2107, %2115 ]
  %2118 = phi float [ 0.000000e+00, %1979 ], [ %2108, %2115 ]
  %2119 = phi float [ 0.000000e+00, %1979 ], [ %2109, %2115 ]
  %2120 = phi float [ 0.000000e+00, %1979 ], [ %2110, %2115 ]
  %2121 = phi float [ 0.000000e+00, %1979 ], [ %2111, %2115 ]
  %2122 = phi float [ 0.000000e+00, %1979 ], [ %2112, %2115 ]
  %2123 = fadd fast float %2120, %2117
  %2124 = fmul fast float %2123, 0x3F847AE140000000
  %2125 = fadd fast float %2121, %2118
  %2126 = fmul fast float %2125, 0x3F847AE140000000
  %2127 = fadd fast float %2122, %2119
  %2128 = fmul fast float %2127, 0x3F847AE140000000
  br label %2129

; <label>:2129                                    ; preds = %2116, %1913, %1858, %1855, %1826, %1788
  %2130 = phi float [ %1840, %1826 ], [ -1.310720e+05, %1788 ], [ %2032, %2116 ], [ -1.310720e+05, %1858 ], [ -1.310720e+05, %1913 ], [ -1.310720e+05, %1855 ]
  %2131 = phi float [ %1850, %1826 ], [ 0.000000e+00, %1788 ], [ %2124, %2116 ], [ 0.000000e+00, %1858 ], [ 0.000000e+00, %1913 ], [ 0.000000e+00, %1855 ]
  %2132 = phi float [ %1852, %1826 ], [ 0.000000e+00, %1788 ], [ %2126, %2116 ], [ 0.000000e+00, %1858 ], [ 0.000000e+00, %1913 ], [ 0.000000e+00, %1855 ]
  %2133 = phi float [ %1854, %1826 ], [ 0.000000e+00, %1788 ], [ %2128, %2116 ], [ 0.000000e+00, %1858 ], [ 0.000000e+00, %1913 ], [ 0.000000e+00, %1855 ]
  %2134 = phi i1 [ true, %1826 ], [ false, %1788 ], [ true, %2116 ], [ false, %1858 ], [ false, %1913 ], [ false, %1855 ]
  %2135 = and i32 %204, 3
  %2136 = icmp eq i32 %2135, 1
  %2137 = select i1 %2136, float 1.000000e+00, float 0.000000e+00
  %2138 = fsub fast float %2130, %139
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = select i1 %2134, float %2139, float 1.000000e+00
  %2141 = fmul fast float %2140, %2137
  %2142 = icmp eq i32 %2135, 3
  %2143 = select i1 %2142, float 1.000000e+00, float %2141
  %2144 = call float @dx.op.binary.f32(i32 35, float %1669, float %2143)  ; FMax(a,b)
  %2145 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2146 = fcmp fast une float %2145, 0.000000e+00
  %2147 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %2148 = call float @dx.op.unary.f32(i32 25, float %2147)  ; Rsqrt(value)
  br i1 %2146, label %2156, label %2149

; <label>:2149                                    ; preds = %2129
  %2150 = fmul fast float %2148, %137
  %2151 = fmul fast float %2148, %138
  %2152 = fmul fast float %2148, %139
  %2153 = fsub fast float -0.000000e+00, %2150
  %2154 = fsub fast float -0.000000e+00, %2151
  %2155 = fsub fast float -0.000000e+00, %2152
  br label %2324

; <label>:2156                                    ; preds = %2129
  %2157 = fmul fast float %137, %2148
  %2158 = fsub fast float -0.000000e+00, %2157
  %2159 = fmul fast float %138, %2148
  %2160 = fsub fast float -0.000000e+00, %2159
  %2161 = fmul fast float %139, %2148
  %2162 = fsub fast float -0.000000e+00, %2161
  %2163 = call float @dx.op.dot3.f32(i32 55, float %2158, float %2160, float %2162, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %2164 = fmul fast float %2145, 2.500000e+00
  %2165 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2166 = fmul fast float %2145, 0x4013FFFFE0000000
  %2167 = fadd fast float %2166, 0xBFFFFFFFE0000000
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = fmul fast float %2145, 0x4004000020000000
  %2170 = fadd fast float %2169, 0xBFF8000040000000
  %2171 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2172 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2173 = fmul fast float %1705, 1.000000e+01
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fmul fast float %2174, 2.000000e+00
  %2176 = fsub fast float 3.000000e+00, %2175
  %2177 = fmul fast float %2174, %2174
  %2178 = fmul fast float %2177, %2176
  %2179 = fsub fast float 1.000000e+00, %2178
  %2180 = fsub fast float 0x3FE3333340000000, %1726
  %2181 = fmul fast float %2180, 0x400AAAAAA0000000
  %2182 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2183 = fmul fast float %2179, %2182
  %2184 = fmul fast float %1763, 0x3FEA2B8620000000
  %2185 = fmul fast float %1764, 0x3FEA2B8620000000
  %2186 = fmul fast float %1765, 0x3FEA2B8620000000
  %2187 = fadd fast float %2184, 0x3FC81DFBA0000000
  %2188 = fmul fast float %2187, %1763
  %2189 = fadd fast float %2188, 0x3F910E6020000000
  %2190 = fadd fast float %2185, 0x3FC81DFBA0000000
  %2191 = fmul fast float %2190, %1764
  %2192 = fadd fast float %2191, 0x3F910E6020000000
  %2193 = fadd fast float %2186, 0x3FC81DFBA0000000
  %2194 = fmul fast float %2193, %1765
  %2195 = fadd fast float %2194, 0x3F910E6020000000
  %2196 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2197 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2198 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2199 = fsub fast float %2196, %1763
  %2200 = fsub fast float %2197, %1764
  %2201 = fsub fast float %2198, %1765
  %2202 = fmul fast float %2199, %2172
  %2203 = fmul fast float %2202, %2183
  %2204 = fmul fast float %2200, %2172
  %2205 = fmul fast float %2204, %2183
  %2206 = fmul fast float %2201, %2172
  %2207 = fmul fast float %2206, %2183
  %2208 = fadd fast float %2203, %1763
  %2209 = fadd fast float %2205, %1764
  %2210 = fadd fast float %2207, %1765
  %2211 = fmul fast float %1686, %1686
  %2212 = fmul fast float %2211, %2211
  %2213 = fadd fast float %2168, 1.000000e+00
  %2214 = fsub fast float %2213, %2183
  %2215 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  %2216 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2217 = call float @dx.op.unary.f32(i32 7, float %2216)  ; Saturate(value)
  %2218 = fsub fast float 1.000000e+00, %2212
  %2219 = call float @dx.op.binary.f32(i32 36, float %2215, float %2218)  ; FMin(a,b)
  %2220 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2221 = call float @dx.op.binary.f32(i32 35, float %2219, float %2220)  ; FMax(a,b)
  %2222 = fadd fast float %2217, 0xBFE4CCCCC0000000
  %2223 = fmul fast float %2222, 0x4006DB6DA0000000
  %2224 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2225 = fmul fast float %2224, 2.000000e+00
  %2226 = fsub fast float 3.000000e+00, %2225
  %2227 = bitcast float %1723 to i32
  %2228 = ashr i32 %2227, 1
  %2229 = add nsw i32 %2228, 532487669
  %2230 = bitcast i32 %2229 to float
  %2231 = fsub fast float 1.000000e+00, %2230
  %2232 = bitcast float %2231 to i32
  %2233 = sub nsw i32 2129859010, %2232
  %2234 = bitcast i32 %2233 to float
  %2235 = fmul fast float %2234, 2.000000e+00
  %2236 = bitcast float %1724 to i32
  %2237 = ashr i32 %2236, 1
  %2238 = add nsw i32 %2237, 532487669
  %2239 = bitcast i32 %2238 to float
  %2240 = fsub fast float 1.000000e+00, %2239
  %2241 = bitcast float %2240 to i32
  %2242 = sub nsw i32 2129859010, %2241
  %2243 = bitcast i32 %2242 to float
  %2244 = fmul fast float %2243, 2.000000e+00
  %2245 = bitcast float %1725 to i32
  %2246 = ashr i32 %2245, 1
  %2247 = add nsw i32 %2246, 532487669
  %2248 = bitcast i32 %2247 to float
  %2249 = fsub fast float 1.000000e+00, %2248
  %2250 = bitcast float %2249 to i32
  %2251 = sub nsw i32 2129859010, %2250
  %2252 = bitcast i32 %2251 to float
  %2253 = fmul fast float %2252, 2.000000e+00
  %2254 = fsub fast float 0x4002A9FBE0000000, %2235
  %2255 = fadd fast float %2235, 0x3FD54FDF00000000
  %2256 = bitcast float %2255 to i32
  %2257 = sub nsw i32 2129859010, %2256
  %2258 = bitcast i32 %2257 to float
  %2259 = fmul fast float %2258, %2254
  %2260 = fmul fast float %2259, %2259
  %2261 = fsub fast float 0x4002A9FBE0000000, %2244
  %2262 = fadd fast float %2244, 0x3FD54FDF00000000
  %2263 = bitcast float %2262 to i32
  %2264 = sub nsw i32 2129859010, %2263
  %2265 = bitcast i32 %2264 to float
  %2266 = fmul fast float %2265, %2261
  %2267 = fmul fast float %2266, %2266
  %2268 = fsub fast float 0x4002A9FBE0000000, %2253
  %2269 = fadd fast float %2253, 0x3FD54FDF00000000
  %2270 = bitcast float %2269 to i32
  %2271 = sub nsw i32 2129859010, %2270
  %2272 = bitcast i32 %2271 to float
  %2273 = fmul fast float %2272, %2268
  %2274 = fmul fast float %2273, %2273
  %2275 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2260)  ; FMax(a,b)
  %2276 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2267)  ; FMax(a,b)
  %2277 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2274)  ; FMax(a,b)
  %2278 = fsub fast float 1.000000e+00, %2163
  %2279 = fadd fast float %2278, %2179
  %2280 = call float @dx.op.unary.f32(i32 7, float %2279)  ; Saturate(value)
  %2281 = fsub fast float 1.000000e+00, %2143
  %2282 = fmul fast float %2221, %2281
  %2283 = fmul fast float %2224, %2224
  %2284 = fmul fast float %2283, %2282
  %2285 = fmul fast float %2284, %2226
  %2286 = fmul fast float %2281, 0xBFE99999A0000000
  %2287 = fmul fast float %2286, %2172
  %2288 = fmul fast float %2287, %2183
  %2289 = fadd fast float %2288, 1.000000e+00
  %2290 = fadd fast float %1726, -1.000000e+00
  %2291 = fmul fast float %2289, %2290
  %2292 = fadd fast float %2291, 1.000000e+00
  %2293 = fsub fast float %2275, %1723
  %2294 = fsub fast float %2276, %1724
  %2295 = fsub fast float %2277, %1725
  %2296 = fmul fast float %2285, %2293
  %2297 = fmul fast float %2285, %2294
  %2298 = fmul fast float %2285, %2295
  %2299 = fadd fast float %2296, %1723
  %2300 = fadd fast float %2297, %1724
  %2301 = fadd fast float %2298, %1725
  %2302 = fsub fast float %70, %1702
  %2303 = fsub fast float %71, %1703
  %2304 = fsub fast float %72, %1704
  %2305 = fmul fast float %2285, %2302
  %2306 = fmul fast float %2285, %2303
  %2307 = fmul fast float %2285, %2304
  %2308 = fadd fast float %2305, %1702
  %2309 = fadd fast float %2306, %1703
  %2310 = fadd fast float %2307, %1704
  %2311 = fmul fast float %2285, %2280
  %2312 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2313 = fsub fast float 1.000000e+00, %2312
  %2314 = fmul fast float %2311, %2313
  %2315 = fadd fast float %2314, %2312
  %2316 = fsub fast float 1.000000e+00, %1686
  %2317 = fmul fast float %2285, %2316
  %2318 = fadd fast float %2317, %1686
  %2319 = call float @dx.op.dot3.f32(i32 55, float %2308, float %2309, float %2310, float %2308, float %2309, float %2310)  ; Dot3(ax,ay,az,bx,by,bz)
  %2320 = call float @dx.op.unary.f32(i32 25, float %2319)  ; Rsqrt(value)
  %2321 = fmul fast float %2308, %2320
  %2322 = fmul fast float %2309, %2320
  %2323 = fmul fast float %2310, %2320
  br label %2324

; <label>:2324                                    ; preds = %2156, %2149
  %2325 = phi float [ %2155, %2149 ], [ %2162, %2156 ]
  %2326 = phi float [ %2154, %2149 ], [ %2160, %2156 ]
  %2327 = phi float [ %2153, %2149 ], [ %2158, %2156 ]
  %2328 = phi float [ %2152, %2149 ], [ %2161, %2156 ]
  %2329 = phi float [ %2151, %2149 ], [ %2159, %2156 ]
  %2330 = phi float [ %2150, %2149 ], [ %2157, %2156 ]
  %2331 = phi float [ %1723, %2149 ], [ %2299, %2156 ]
  %2332 = phi float [ %1724, %2149 ], [ %2300, %2156 ]
  %2333 = phi float [ %1725, %2149 ], [ %2301, %2156 ]
  %2334 = phi float [ %1702, %2149 ], [ %2321, %2156 ]
  %2335 = phi float [ %1703, %2149 ], [ %2322, %2156 ]
  %2336 = phi float [ %1704, %2149 ], [ %2323, %2156 ]
  %2337 = phi float [ %1763, %2149 ], [ %2208, %2156 ]
  %2338 = phi float [ %1764, %2149 ], [ %2209, %2156 ]
  %2339 = phi float [ %1765, %2149 ], [ %2210, %2156 ]
  %2340 = phi float [ %1726, %2149 ], [ %2315, %2156 ]
  %2341 = phi float [ %1686, %2149 ], [ %2318, %2156 ]
  %2342 = fsub fast float -0.000000e+00, %139
  %2343 = select i1 %228, float 0.000000e+00, float %2333
  %2344 = call float @dx.op.dot3.f32(i32 55, float %2334, float %2335, float %2336, float %2327, float %2326, float %2325)  ; Dot3(ax,ay,az,bx,by,bz)
  %2345 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2346 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2329, float %2328, float %2334, float %2335, float %2336)  ; Dot3(ax,ay,az,bx,by,bz)
  %2347 = fmul fast float %2346, 2.000000e+00
  %2348 = fmul fast float %2347, %2334
  %2349 = fmul fast float %2347, %2335
  %2350 = fmul fast float %2347, %2336
  %2351 = fsub fast float %2330, %2348
  %2352 = fsub fast float %2329, %2349
  %2353 = fsub fast float %2328, %2350
  %2354 = call float @dx.op.binary.f32(i32 36, float %2341, float 1.000000e+00)  ; FMin(a,b)
  %2355 = fsub fast float 1.000000e+00, %2341
  %2356 = bitcast float %2355 to i32
  %2357 = sub nsw i32 2129859010, %2356
  %2358 = bitcast i32 %2357 to float
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2362 = fadd fast float %2360, %137
  %2363 = fadd fast float %2361, %138
  %2364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.i32 %2364, 0
  %2366 = icmp eq i32 %2365, 1
  br i1 %2366, label %2367, label %2402

; <label>:2367                                    ; preds = %2324
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.CBufRet.f32 %2368, 1
  %2371 = fsub fast float %2362, %2369
  %2372 = fsub fast float %2363, %2370
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.CBufRet.f32 %2373, 1
  %2376 = fmul fast float %2371, %2374
  %2377 = fmul fast float %2372, %2375
  %2378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2376, float %2377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  %2380 = fcmp fast ogt float %2379, 0.000000e+00
  %2381 = extractvalue %dx.types.CBufRet.i32 %2364, 3
  %2382 = icmp ne i32 %2381, 0
  %2383 = and i1 %2380, %2382
  br i1 %2383, label %2384, label %2402, !dx.controlflow.hints !100

; <label>:2384                                    ; preds = %2367
  %2385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.f32 %2385, 0
  %2387 = extractvalue %dx.types.CBufRet.f32 %2385, 1
  %2388 = fsub fast float %2362, %2386
  %2389 = fsub fast float %2363, %2387
  %2390 = fmul fast float %2388, %2388
  %2391 = fmul fast float %2389, %2389
  %2392 = fadd fast float %2390, %2391
  %2393 = uitofp i32 %2381 to float
  %2394 = fmul fast float %2393, %2393
  %2395 = fcmp fast ogt float %2392, %2394
  br i1 %2395, label %2402, label %2396

; <label>:2396                                    ; preds = %2384
  %2397 = call float @dx.op.unary.f32(i32 24, float %2392)  ; Sqrt(value)
  %2398 = fsub fast float %2393, %2397
  %2399 = fmul fast float %2398, 0x3F75555560000000
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  %2401 = call float @dx.op.binary.f32(i32 36, float %2400, float %2379)  ; FMin(a,b)
  br label %2402

; <label>:2402                                    ; preds = %2396, %2384, %2367, %2324
  %2403 = phi float [ 1.000000e+00, %2324 ], [ %2401, %2396 ], [ %2379, %2367 ], [ 0.000000e+00, %2384 ]
  %2404 = fcmp fast ogt float %2403, 0.000000e+00
  br i1 %2404, label %2405, label %2503, !dx.controlflow.hints !101

; <label>:2405                                    ; preds = %2402
  %2406 = fadd fast float %168, 5.000000e-01
  %2407 = call float @dx.op.unary.f32(i32 27, float %2406)  ; Round_ni(value)
  %2408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %166, float %167, float %2407, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2409 = extractvalue %dx.types.ResRet.f32 %2408, 0
  %2410 = extractvalue %dx.types.ResRet.f32 %2408, 1
  %2411 = extractvalue %dx.types.ResRet.f32 %2408, 2
  %2412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2413 = extractvalue %dx.types.CBufRet.f32 %2412, 3
  %2414 = fmul fast float %2413, %2409
  %2415 = fmul fast float %2413, %2410
  %2416 = fmul fast float %2413, %2411
  %2417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %166, float %167, float %2407, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2418 = extractvalue %dx.types.ResRet.f32 %2417, 0
  %2419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %166, float %167, float %2407, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.ResRet.f32 %2419, 1
  %2422 = fmul fast float %2420, 2.000000e+00
  %2423 = fmul fast float %2421, 2.000000e+00
  %2424 = fadd fast float %2422, -1.000000e+00
  %2425 = fadd fast float %2423, -1.000000e+00
  %2426 = fadd fast float %2424, %2425
  %2427 = fmul fast float %2426, 5.000000e-01
  %2428 = fsub fast float %2424, %2425
  %2429 = fmul fast float %2428, 5.000000e-01
  %2430 = call float @dx.op.unary.f32(i32 6, float %2427)  ; FAbs(value)
  %2431 = fsub fast float 1.000000e+00, %2430
  %2432 = call float @dx.op.unary.f32(i32 6, float %2429)  ; FAbs(value)
  %2433 = fsub fast float %2431, %2432
  %2434 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2433)  ; FMax(a,b)
  %2435 = call float @dx.op.dot3.f32(i32 55, float %2427, float %2429, float %2434, float %2427, float %2429, float %2434)  ; Dot3(ax,ay,az,bx,by,bz)
  %2436 = bitcast float %2435 to i32
  %2437 = ashr i32 %2436, 1
  %2438 = sub nsw i32 1597250115, %2437
  %2439 = bitcast i32 %2438 to float
  %2440 = fmul fast float %2439, %2427
  %2441 = fmul fast float %2439, %2429
  %2442 = fmul fast float %2439, %2434
  %2443 = fsub fast float 1.000000e+00, %2418
  %2444 = fdiv fast float %2443, %2442
  %2445 = fmul fast float %2442, %70
  %2446 = fmul fast float %2442, %71
  %2447 = fmul fast float %2442, %72
  %2448 = fmul fast float %2440, %66
  %2449 = fmul fast float %2440, %67
  %2450 = fmul fast float %2440, %68
  %2451 = fadd fast float %2445, %2448
  %2452 = fadd fast float %2446, %2449
  %2453 = fadd fast float %2447, %2450
  %2454 = fmul fast float %2441, %101
  %2455 = fmul fast float %2441, %102
  %2456 = fmul fast float %2441, %103
  %2457 = fadd fast float %2451, %2454
  %2458 = fadd fast float %2452, %2455
  %2459 = fadd fast float %2453, %2456
  %2460 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float %2457, float %2458, float %2459)  ; Dot3(ax,ay,az,bx,by,bz)
  %2461 = call float @dx.op.unary.f32(i32 25, float %2460)  ; Rsqrt(value)
  %2462 = fmul fast float %2457, %2461
  %2463 = fmul fast float %2458, %2461
  %2464 = fmul fast float %2459, %2461
  %2465 = call float @dx.op.dot3.f32(i32 55, float %2334, float %2335, float %2336, float %2334, float %2335, float %2336)  ; Dot3(ax,ay,az,bx,by,bz)
  %2466 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2467 = fmul fast float %2466, 5.000000e-01
  %2468 = fadd fast float %2467, 5.000000e-01
  %2469 = fmul fast float %2468, %2418
  %2470 = call float @dx.op.dot3.f32(i32 55, float %2334, float %2335, float %2336, float %2462, float %2463, float %2464)  ; Dot3(ax,ay,az,bx,by,bz)
  %2471 = call float @dx.op.unary.f32(i32 7, float %2470)  ; Saturate(value)
  %2472 = fmul fast float %2471, %2444
  %2473 = fadd fast float %2469, %2472
  %2474 = fsub fast float 5.000000e-01, %2467
  %2475 = fmul fast float %2474, %2337
  %2476 = fmul fast float %2474, %2338
  %2477 = fmul fast float %2474, %2339
  %2478 = fadd fast float %2473, %2475
  %2479 = fmul fast float %2478, %2414
  %2480 = fadd fast float %2473, %2476
  %2481 = fmul fast float %2480, %2415
  %2482 = fadd fast float %2473, %2477
  %2483 = fmul fast float %2482, %2416
  %2484 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2352, float %2353, float %2334, float %2335, float %2336)  ; Dot3(ax,ay,az,bx,by,bz)
  %2485 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  %2486 = fmul fast float %2485, 5.000000e-01
  %2487 = fadd fast float %2486, 5.000000e-01
  %2488 = fmul fast float %2487, %2418
  %2489 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2352, float %2353, float %2462, float %2463, float %2464)  ; Dot3(ax,ay,az,bx,by,bz)
  %2490 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2491 = fmul fast float %2490, %2444
  %2492 = fadd fast float %2488, %2491
  %2493 = fsub fast float 5.000000e-01, %2486
  %2494 = fmul fast float %2493, %2337
  %2495 = fmul fast float %2493, %2338
  %2496 = fmul fast float %2493, %2339
  %2497 = fadd fast float %2492, %2494
  %2498 = fmul fast float %2497, %2414
  %2499 = fadd fast float %2492, %2495
  %2500 = fmul fast float %2499, %2415
  %2501 = fadd fast float %2492, %2496
  %2502 = fmul fast float %2501, %2416
  br label %2503

; <label>:2503                                    ; preds = %2405, %2402
  %2504 = phi float [ %2498, %2405 ], [ 0.000000e+00, %2402 ]
  %2505 = phi float [ %2500, %2405 ], [ 0.000000e+00, %2402 ]
  %2506 = phi float [ %2502, %2405 ], [ 0.000000e+00, %2402 ]
  %2507 = phi float [ %2479, %2405 ], [ 0.000000e+00, %2402 ]
  %2508 = phi float [ %2481, %2405 ], [ 0.000000e+00, %2402 ]
  %2509 = phi float [ %2483, %2405 ], [ 0.000000e+00, %2402 ]
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2512 = fcmp fast ogt float %2511, 0.000000e+00
  %2513 = and i1 %2404, %2512
  br i1 %2513, label %2514, label %2718, !dx.controlflow.hints !102

; <label>:2514                                    ; preds = %2503
  %2515 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %2516 = fadd fast float %2515, %139
  %2517 = fmul fast float %2334, 3.200000e+01
  %2518 = fmul fast float %2335, 3.200000e+01
  %2519 = fadd fast float %2362, %2517
  %2520 = fadd fast float %2363, %2518
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.CBufRet.f32 %2521, 1
  %2524 = fsub fast float %2519, %2522
  %2525 = fsub fast float %2520, %2523
  %2526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2527 = extractvalue %dx.types.CBufRet.f32 %2526, 0
  %2528 = extractvalue %dx.types.CBufRet.f32 %2526, 1
  %2529 = fmul fast float %2524, %2527
  %2530 = fmul fast float %2525, %2528
  %2531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2532 = extractvalue %dx.types.CBufRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.CBufRet.f32 %2531, 1
  %2534 = fsub fast float %2362, %2532
  %2535 = fsub fast float %2363, %2533
  %2536 = fmul fast float %2534, %2534
  %2537 = fmul fast float %2535, %2535
  %2538 = fadd fast float %2536, %2537
  %2539 = call float @dx.op.unary.f32(i32 24, float %2538)  ; Sqrt(value)
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 0
  %2542 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2543 = fsub fast float %2539, %2541
  %2544 = fdiv fast float %2543, %2542
  %2545 = call float @dx.op.unary.f32(i32 7, float %2544)  ; Saturate(value)
  %2546 = fmul fast float %2545, 2.000000e+00
  %2547 = fsub fast float 3.000000e+00, %2546
  %2548 = fmul fast float %2545, %2545
  %2549 = fmul fast float %2548, %2547
  %2550 = fcmp fast oge float %2529, 0.000000e+00
  %2551 = fcmp fast ole float %2529, 1.000000e+00
  %2552 = and i1 %2551, %2550
  %2553 = fcmp fast oge float %2530, 0.000000e+00
  %2554 = and i1 %2553, %2552
  %2555 = fcmp fast ole float %2530, 1.000000e+00
  %2556 = and i1 %2555, %2554
  %2557 = fcmp fast ogt float %2549, 0.000000e+00
  %2558 = and i1 %2557, %2556
  br i1 %2558, label %2559, label %2682, !dx.controlflow.hints !103

; <label>:2559                                    ; preds = %2514
  %2560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2561 = extractvalue %dx.types.CBufRet.f32 %2560, 2
  %2562 = extractvalue %dx.types.CBufRet.f32 %2560, 3
  %2563 = fmul fast float %2561, %2529
  %2564 = fmul fast float %2562, %2530
  %2565 = call float @dx.op.unary.f32(i32 27, float %2563)  ; Round_ni(value)
  %2566 = call float @dx.op.unary.f32(i32 27, float %2564)  ; Round_ni(value)
  %2567 = fptosi float %2565 to i32
  %2568 = fptosi float %2566 to i32
  %2569 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2567, i32 %2568, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = lshr i32 %2570, 16
  %2572 = icmp eq i32 %2571, 65535
  br i1 %2572, label %2682, label %2573

; <label>:2573                                    ; preds = %2559
  %2574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2575 = extractvalue %dx.types.CBufRet.f32 %2574, 0
  %2576 = fmul fast float %2575, %2529
  %2577 = extractvalue %dx.types.CBufRet.f32 %2574, 1
  %2578 = fadd fast float %2576, %2577
  %2579 = extractvalue %dx.types.CBufRet.f32 %2574, 2
  %2580 = fmul fast float %2579, %2530
  %2581 = extractvalue %dx.types.CBufRet.f32 %2574, 3
  %2582 = fadd fast float %2580, %2581
  %2583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2578, float %2582, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2584 = extractvalue %dx.types.ResRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.ResRet.f32 %2583, 1
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = extractvalue %dx.types.CBufRet.f32 %2586, 1
  %2588 = extractvalue %dx.types.CBufRet.f32 %2586, 0
  %2589 = fsub fast float %2587, %2588
  %2590 = fmul fast float %2589, %2584
  %2591 = fadd fast float %2590, %2588
  %2592 = extractvalue %dx.types.CBufRet.f32 %2586, 3
  %2593 = extractvalue %dx.types.CBufRet.f32 %2586, 2
  %2594 = fsub fast float %2592, %2593
  %2595 = fmul fast float %2594, %2585
  %2596 = fadd fast float %2595, %2593
  %2597 = fsub fast float %2516, %2591
  %2598 = fsub fast float %2596, %2591
  %2599 = fdiv fast float %2597, %2598
  %2600 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2510, 1
  %2602 = extractvalue %dx.types.CBufRet.f32 %2560, 0
  %2603 = extractvalue %dx.types.CBufRet.f32 %2560, 1
  %2604 = fmul fast float %2602, %2529
  %2605 = fmul fast float %2603, %2530
  %2606 = fmul fast float %2604, 1.250000e-01
  %2607 = fmul fast float %2605, 1.250000e-01
  %2608 = call float @dx.op.unary.f32(i32 27, float %2606)  ; Round_ni(value)
  %2609 = call float @dx.op.unary.f32(i32 27, float %2607)  ; Round_ni(value)
  %2610 = fmul fast float %2608, 8.000000e+00
  %2611 = fmul fast float %2609, 8.000000e+00
  %2612 = fsub fast float %2604, %2610
  %2613 = fsub fast float %2605, %2611
  %2614 = fadd fast float %2612, 5.000000e-01
  %2615 = fadd fast float %2613, 5.000000e-01
  %2616 = and i32 %2571, 255
  %2617 = lshr i32 %2570, 24
  %2618 = mul nuw nsw i32 %2616, 9
  %2619 = uitofp i32 %2618 to float
  %2620 = mul nuw nsw i32 %2617, 9
  %2621 = uitofp i32 %2620 to float
  %2622 = fadd fast float %2614, %2619
  %2623 = fadd fast float %2615, %2621
  %2624 = fdiv fast float %2622, %2511
  %2625 = fdiv fast float %2623, %2601
  %2626 = fmul fast float %2600, 4.375000e-01
  %2627 = fadd fast float %2626, 3.125000e-02
  %2628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2624, float %2625, float %2627, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2629 = extractvalue %dx.types.ResRet.f32 %2628, 0
  %2630 = extractvalue %dx.types.ResRet.f32 %2628, 1
  %2631 = extractvalue %dx.types.ResRet.f32 %2628, 2
  %2632 = fadd fast float %2626, 5.312500e-01
  %2633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2624, float %2625, float %2632, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  %2635 = extractvalue %dx.types.ResRet.f32 %2633, 1
  %2636 = extractvalue %dx.types.ResRet.f32 %2633, 2
  %2637 = fmul fast float %2634, 2.000000e+00
  %2638 = fmul fast float %2635, 2.000000e+00
  %2639 = fmul fast float %2636, 2.000000e+00
  %2640 = fadd fast float %2637, -1.000000e+00
  %2641 = fadd fast float %2638, -1.000000e+00
  %2642 = fadd fast float %2639, -1.000000e+00
  %2643 = fmul fast float %2640, %2640
  %2644 = fmul fast float %2641, %2641
  %2645 = fadd fast float %2643, %2644
  %2646 = fmul fast float %2642, %2642
  %2647 = fadd fast float %2645, %2646
  %2648 = call float @dx.op.unary.f32(i32 24, float %2647)  ; Sqrt(value)
  %2649 = fcmp fast ogt float %2648, 0.000000e+00
  br i1 %2649, label %2650, label %2654

; <label>:2650                                    ; preds = %2573
  %2651 = fdiv fast float %2640, %2648
  %2652 = fdiv fast float %2641, %2648
  %2653 = fdiv fast float %2642, %2648
  br label %2654

; <label>:2654                                    ; preds = %2650, %2573
  %2655 = phi float [ %2651, %2650 ], [ 0.000000e+00, %2573 ]
  %2656 = phi float [ %2652, %2650 ], [ 0.000000e+00, %2573 ]
  %2657 = phi float [ %2653, %2650 ], [ 0.000000e+00, %2573 ]
  %2658 = call float @dx.op.dot3.f32(i32 55, float %2655, float %2656, float %2657, float %2334, float %2335, float %2336)  ; Dot3(ax,ay,az,bx,by,bz)
  %2659 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2658)  ; FMax(a,b)
  %2660 = fmul fast float %2659, 0x400C5BF8A0000000
  %2661 = fmul fast float %2629, %2549
  %2662 = fmul fast float %2661, %2660
  %2663 = fmul fast float %2630, %2549
  %2664 = fmul fast float %2663, %2660
  %2665 = fmul fast float %2631, %2549
  %2666 = fmul fast float %2665, %2660
  %2667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2667, 3
  %2669 = fmul fast float %2662, %2668
  %2670 = fmul fast float %2664, %2668
  %2671 = fmul fast float %2666, %2668
  %2672 = fcmp fast ogt float %2516, %2596
  br i1 %2672, label %2673, label %2682

; <label>:2673                                    ; preds = %2654
  %2674 = fmul fast float %2598, 0x3FC24924A0000000
  %2675 = fsub fast float %2516, %2596
  %2676 = fdiv fast float %2675, %2674
  %2677 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  %2678 = fsub fast float 1.000000e+00, %2677
  %2679 = fmul fast float %2678, %2669
  %2680 = fmul fast float %2678, %2670
  %2681 = fmul fast float %2678, %2671
  br label %2682

; <label>:2682                                    ; preds = %2673, %2654, %2559, %2514
  %2683 = phi float [ %2681, %2673 ], [ %2671, %2654 ], [ 0.000000e+00, %2559 ], [ 0.000000e+00, %2514 ]
  %2684 = phi float [ %2680, %2673 ], [ %2670, %2654 ], [ 0.000000e+00, %2559 ], [ 0.000000e+00, %2514 ]
  %2685 = phi float [ %2679, %2673 ], [ %2669, %2654 ], [ 0.000000e+00, %2559 ], [ 0.000000e+00, %2514 ]
  %2686 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2685)  ; FMax(a,b)
  %2687 = fmul fast float %2686, 0x3FD20DD760000000
  %2688 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2351, float %2352, float %2353)  ; Dot3(ax,ay,az,bx,by,bz)
  %2689 = fmul fast float %2688, 0x3FDF454380000000
  %2690 = fmul fast float %2688, %2688
  %2691 = fmul fast float %2690, 0x3FEE471020000000
  %2692 = fadd fast float %2691, 0xBFD42F6020000000
  %2693 = call float @dx.op.dot3.f32(i32 55, float %2686, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2689, float %2692)  ; Dot3(ax,ay,az,bx,by,bz)
  %2694 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2684)  ; FMax(a,b)
  %2695 = fmul fast float %2694, 0x3FD20DD760000000
  %2696 = call float @dx.op.dot3.f32(i32 55, float %2694, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2689, float %2692)  ; Dot3(ax,ay,az,bx,by,bz)
  %2697 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2683)  ; FMax(a,b)
  %2698 = fmul fast float %2697, 0x3FD20DD760000000
  %2699 = call float @dx.op.dot3.f32(i32 55, float %2697, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2689, float %2692)  ; Dot3(ax,ay,az,bx,by,bz)
  %2700 = call float @dx.op.binary.f32(i32 35, float %2687, float 0.000000e+00)  ; FMax(a,b)
  %2701 = call float @dx.op.binary.f32(i32 35, float %2695, float 0.000000e+00)  ; FMax(a,b)
  %2702 = call float @dx.op.binary.f32(i32 35, float %2698, float 0.000000e+00)  ; FMax(a,b)
  %2703 = call float @dx.op.binary.f32(i32 35, float %2693, float 0.000000e+00)  ; FMax(a,b)
  %2704 = call float @dx.op.binary.f32(i32 35, float %2696, float 0.000000e+00)  ; FMax(a,b)
  %2705 = call float @dx.op.binary.f32(i32 35, float %2699, float 0.000000e+00)  ; FMax(a,b)
  %2706 = fmul fast float %2700, %2403
  %2707 = fmul fast float %2701, %2403
  %2708 = fmul fast float %2702, %2403
  %2709 = fadd fast float %2706, %2507
  %2710 = fadd fast float %2707, %2508
  %2711 = fadd fast float %2708, %2509
  %2712 = fmul fast float %2703, %2403
  %2713 = fmul fast float %2704, %2403
  %2714 = fmul fast float %2705, %2403
  %2715 = fadd fast float %2712, %2504
  %2716 = fadd fast float %2713, %2505
  %2717 = fadd fast float %2714, %2506
  br label %2718

; <label>:2718                                    ; preds = %2682, %2503
  %2719 = phi float [ %2715, %2682 ], [ %2504, %2503 ]
  %2720 = phi float [ %2716, %2682 ], [ %2505, %2503 ]
  %2721 = phi float [ %2717, %2682 ], [ %2506, %2503 ]
  %2722 = phi float [ %2706, %2682 ], [ 0.000000e+00, %2503 ]
  %2723 = phi float [ %2707, %2682 ], [ 0.000000e+00, %2503 ]
  %2724 = phi float [ %2708, %2682 ], [ 0.000000e+00, %2503 ]
  %2725 = phi float [ %2709, %2682 ], [ %2507, %2503 ]
  %2726 = phi float [ %2710, %2682 ], [ %2508, %2503 ]
  %2727 = phi float [ %2711, %2682 ], [ %2509, %2503 ]
  %2728 = fcmp fast olt float %2403, 1.000000e+00
  br i1 %2728, label %2729, label %3562, !dx.controlflow.hints !104

; <label>:2729                                    ; preds = %2718
  %2730 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %2731 = fadd fast float %2730, %139
  %2732 = fmul fast float %2334, 3.200000e+01
  %2733 = fmul fast float %2335, 3.200000e+01
  %2734 = fadd fast float %2362, %2732
  %2735 = fadd fast float %2363, %2733
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.CBufRet.f32 %2736, 1
  %2739 = fsub fast float %2734, %2737
  %2740 = fsub fast float %2735, %2738
  %2741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.CBufRet.f32 %2741, 1
  %2744 = fmul fast float %2739, %2742
  %2745 = fmul fast float %2740, %2743
  %2746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2747 = extractvalue %dx.types.CBufRet.f32 %2746, 0
  %2748 = fmul fast float %2744, %2747
  %2749 = extractvalue %dx.types.CBufRet.f32 %2746, 1
  %2750 = fadd fast float %2748, %2749
  %2751 = extractvalue %dx.types.CBufRet.f32 %2746, 2
  %2752 = fmul fast float %2751, %2745
  %2753 = extractvalue %dx.types.CBufRet.f32 %2746, 3
  %2754 = fadd fast float %2752, %2753
  %2755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2750, float %2754, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 1
  %2760 = extractvalue %dx.types.CBufRet.f32 %2758, 0
  %2761 = fsub fast float %2759, %2760
  %2762 = fmul fast float %2761, %2756
  %2763 = fadd fast float %2762, %2760
  %2764 = extractvalue %dx.types.CBufRet.f32 %2758, 3
  %2765 = extractvalue %dx.types.CBufRet.f32 %2758, 2
  %2766 = fsub fast float %2764, %2765
  %2767 = fmul fast float %2766, %2757
  %2768 = fadd fast float %2767, %2765
  %2769 = fsub fast float %2731, %2763
  %2770 = fsub fast float %2768, %2763
  %2771 = fdiv fast float %2769, %2770
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2775 = fmul fast float %2774, %2772
  %2776 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2777 = fadd fast float %2775, %2776
  %2778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2750, float %2754, float %2777, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2779 = extractvalue %dx.types.ResRet.f32 %2778, 0
  %2780 = extractvalue %dx.types.ResRet.f32 %2778, 1
  %2781 = extractvalue %dx.types.ResRet.f32 %2778, 2
  %2782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2783 = extractvalue %dx.types.CBufRet.f32 %2782, 0
  %2784 = extractvalue %dx.types.CBufRet.f32 %2782, 1
  %2785 = extractvalue %dx.types.CBufRet.f32 %2782, 2
  %2786 = fmul fast float %2783, %2779
  %2787 = fmul fast float %2784, %2780
  %2788 = fmul fast float %2785, %2781
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.CBufRet.f32 %2789, 2
  %2793 = fadd fast float %2786, %2790
  %2794 = fadd fast float %2787, %2791
  %2795 = fadd fast float %2788, %2792
  %2796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.f32 %2796, 0
  %2798 = fmul fast float %2797, %2744
  %2799 = extractvalue %dx.types.CBufRet.f32 %2796, 1
  %2800 = fadd fast float %2798, %2799
  %2801 = extractvalue %dx.types.CBufRet.f32 %2796, 2
  %2802 = fmul fast float %2801, %2745
  %2803 = extractvalue %dx.types.CBufRet.f32 %2796, 3
  %2804 = fadd fast float %2802, %2803
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 0
  %2807 = extractvalue %dx.types.CBufRet.f32 %2805, 1
  %2808 = extractvalue %dx.types.CBufRet.f32 %2805, 2
  %2809 = extractvalue %dx.types.CBufRet.f32 %2805, 3
  %2810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2811 = extractvalue %dx.types.CBufRet.f32 %2810, 0
  %2812 = extractvalue %dx.types.CBufRet.f32 %2810, 1
  %2813 = extractvalue %dx.types.CBufRet.f32 %2810, 2
  %2814 = extractvalue %dx.types.CBufRet.f32 %2810, 3
  %2815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2800, float %2804, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.ResRet.f32 %2815, 1
  %2818 = extractvalue %dx.types.ResRet.f32 %2815, 2
  %2819 = extractvalue %dx.types.ResRet.f32 %2815, 3
  %2820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2800, float %2804, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2821 = extractvalue %dx.types.ResRet.f32 %2820, 0
  %2822 = extractvalue %dx.types.ResRet.f32 %2820, 1
  %2823 = extractvalue %dx.types.ResRet.f32 %2820, 2
  %2824 = extractvalue %dx.types.ResRet.f32 %2820, 3
  %2825 = fmul fast float %2816, %2793
  %2826 = fmul fast float %2821, %2793
  %2827 = fmul fast float %2823, %2793
  %2828 = fmul fast float %2819, %2793
  %2829 = fadd fast float %2825, %2806
  %2830 = fadd fast float %2826, %2807
  %2831 = fadd fast float %2827, %2808
  %2832 = fadd fast float %2828, %2809
  %2833 = fmul fast float %2817, %2793
  %2834 = fmul fast float %2822, %2793
  %2835 = fadd fast float %2833, %2811
  %2836 = fadd fast float %2834, %2812
  %2837 = fmul fast float %2818, %2793
  %2838 = fmul fast float %2824, %2793
  %2839 = fadd fast float %2837, %2813
  %2840 = fadd fast float %2838, %2814
  %2841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2800, float %2804, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2842 = extractvalue %dx.types.ResRet.f32 %2841, 0
  %2843 = extractvalue %dx.types.ResRet.f32 %2841, 1
  %2844 = extractvalue %dx.types.ResRet.f32 %2841, 2
  %2845 = extractvalue %dx.types.ResRet.f32 %2841, 3
  %2846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2800, float %2804, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.ResRet.f32 %2846, 2
  %2850 = extractvalue %dx.types.ResRet.f32 %2846, 3
  %2851 = fmul fast float %2842, %2794
  %2852 = fmul fast float %2847, %2794
  %2853 = fmul fast float %2849, %2794
  %2854 = fmul fast float %2845, %2794
  %2855 = fadd fast float %2829, %2851
  %2856 = fadd fast float %2830, %2852
  %2857 = fadd fast float %2831, %2853
  %2858 = fadd fast float %2832, %2854
  %2859 = fmul fast float %2843, %2794
  %2860 = fmul fast float %2848, %2794
  %2861 = fadd fast float %2835, %2859
  %2862 = fadd fast float %2836, %2860
  %2863 = fmul fast float %2844, %2794
  %2864 = fmul fast float %2850, %2794
  %2865 = fadd fast float %2839, %2863
  %2866 = fadd fast float %2840, %2864
  %2867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2800, float %2804, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2868 = extractvalue %dx.types.ResRet.f32 %2867, 0
  %2869 = extractvalue %dx.types.ResRet.f32 %2867, 1
  %2870 = extractvalue %dx.types.ResRet.f32 %2867, 2
  %2871 = extractvalue %dx.types.ResRet.f32 %2867, 3
  %2872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2800, float %2804, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = extractvalue %dx.types.ResRet.f32 %2872, 1
  %2875 = extractvalue %dx.types.ResRet.f32 %2872, 2
  %2876 = extractvalue %dx.types.ResRet.f32 %2872, 3
  %2877 = fmul fast float %2868, %2795
  %2878 = fmul fast float %2873, %2795
  %2879 = fmul fast float %2875, %2795
  %2880 = fmul fast float %2871, %2795
  %2881 = fadd fast float %2855, %2877
  %2882 = fadd fast float %2856, %2878
  %2883 = fadd fast float %2857, %2879
  %2884 = fadd fast float %2858, %2880
  %2885 = fmul fast float %2869, %2795
  %2886 = fmul fast float %2874, %2795
  %2887 = fadd fast float %2861, %2885
  %2888 = fadd fast float %2862, %2886
  %2889 = fmul fast float %2870, %2795
  %2890 = fmul fast float %2876, %2795
  %2891 = fadd fast float %2865, %2889
  %2892 = fadd fast float %2866, %2890
  %2893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2894 = extractvalue %dx.types.CBufRet.f32 %2893, 0
  %2895 = fsub fast float %2362, %2894
  %2896 = fsub fast float %2737, %2362
  %2897 = call float @dx.op.binary.f32(i32 35, float %2896, float %2895)  ; FMax(a,b)
  %2898 = extractvalue %dx.types.CBufRet.f32 %2893, 1
  %2899 = fsub fast float %2363, %2898
  %2900 = fsub fast float %2738, %2363
  %2901 = call float @dx.op.binary.f32(i32 35, float %2900, float %2899)  ; FMax(a,b)
  %2902 = call float @dx.op.binary.f32(i32 35, float %2897, float %2901)  ; FMax(a,b)
  %2903 = extractvalue %dx.types.CBufRet.f32 %2741, 3
  %2904 = fmul fast float %2903, %2902
  %2905 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  %2906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2907 = extractvalue %dx.types.CBufRet.f32 %2906, 0
  %2908 = extractvalue %dx.types.CBufRet.f32 %2906, 1
  %2909 = extractvalue %dx.types.CBufRet.f32 %2906, 2
  %2910 = extractvalue %dx.types.CBufRet.f32 %2906, 3
  %2911 = fsub fast float %2907, %2881
  %2912 = fsub fast float %2908, %2882
  %2913 = fsub fast float %2909, %2883
  %2914 = fsub fast float %2910, %2884
  %2915 = fmul fast float %2911, %2905
  %2916 = fmul fast float %2912, %2905
  %2917 = fmul fast float %2913, %2905
  %2918 = fmul fast float %2914, %2905
  %2919 = fadd fast float %2915, %2881
  %2920 = fadd fast float %2916, %2882
  %2921 = fadd fast float %2917, %2883
  %2922 = fadd fast float %2918, %2884
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  %2925 = extractvalue %dx.types.CBufRet.f32 %2923, 1
  %2926 = fsub fast float %2924, %2887
  %2927 = fsub fast float %2925, %2888
  %2928 = fmul fast float %2926, %2905
  %2929 = fmul fast float %2927, %2905
  %2930 = fadd fast float %2928, %2887
  %2931 = fadd fast float %2929, %2888
  %2932 = extractvalue %dx.types.CBufRet.f32 %2923, 2
  %2933 = extractvalue %dx.types.CBufRet.f32 %2923, 3
  %2934 = fsub fast float %2932, %2891
  %2935 = fsub fast float %2933, %2892
  %2936 = fmul fast float %2934, %2905
  %2937 = fmul fast float %2935, %2905
  %2938 = fadd fast float %2936, %2891
  %2939 = fadd fast float %2937, %2892
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = fmul fast float %2941, %2919
  %2943 = fmul fast float %2941, %2920
  %2944 = fmul fast float %2941, %2921
  %2945 = fmul fast float %2941, %2922
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 0
  %2948 = fmul fast float %2947, %2930
  %2949 = fmul fast float %2947, %2931
  %2950 = fadd fast float %2948, %2942
  %2951 = fadd fast float %2949, %2944
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2954 = fmul fast float %2953, %2938
  %2955 = fmul fast float %2953, %2939
  %2956 = fadd fast float %2950, %2954
  %2957 = fadd fast float %2951, %2955
  %2958 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2959 = fmul fast float %2958, %2919
  %2960 = fmul fast float %2958, %2920
  %2961 = fmul fast float %2958, %2921
  %2962 = fmul fast float %2958, %2922
  %2963 = extractvalue %dx.types.CBufRet.f32 %2946, 1
  %2964 = fmul fast float %2963, %2930
  %2965 = fmul fast float %2963, %2931
  %2966 = fadd fast float %2964, %2959
  %2967 = fadd fast float %2965, %2961
  %2968 = extractvalue %dx.types.CBufRet.f32 %2952, 1
  %2969 = fmul fast float %2968, %2938
  %2970 = fmul fast float %2968, %2939
  %2971 = fadd fast float %2966, %2969
  %2972 = fadd fast float %2967, %2970
  %2973 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2974 = fmul fast float %2973, %2919
  %2975 = fmul fast float %2973, %2920
  %2976 = fmul fast float %2973, %2921
  %2977 = fmul fast float %2973, %2922
  %2978 = extractvalue %dx.types.CBufRet.f32 %2946, 2
  %2979 = fmul fast float %2978, %2930
  %2980 = fmul fast float %2978, %2931
  %2981 = fadd fast float %2979, %2974
  %2982 = fadd fast float %2980, %2976
  %2983 = extractvalue %dx.types.CBufRet.f32 %2952, 2
  %2984 = fmul fast float %2983, %2938
  %2985 = fmul fast float %2983, %2939
  %2986 = fadd fast float %2981, %2984
  %2987 = fadd fast float %2982, %2985
  %2988 = fmul fast float %2975, %2975
  %2989 = fmul fast float %2987, %2987
  %2990 = fmul fast float %2977, %2977
  %2991 = fadd fast float %2990, %2988
  %2992 = fadd fast float %2991, %2989
  %2993 = call float @dx.op.unary.f32(i32 24, float %2992)  ; Sqrt(value)
  %2994 = fcmp fast ugt float %2993, 0.000000e+00
  br i1 %2994, label %2995, label %3010

; <label>:2995                                    ; preds = %2729
  %2996 = fsub fast float -0.000000e+00, %2977
  %2997 = fdiv fast float %2996, %2993
  %2998 = fsub fast float -0.000000e+00, %2975
  %2999 = fdiv fast float %2998, %2993
  %3000 = fdiv fast float %2987, %2993
  %3001 = fmul fast float %2986, 0x3FE279A760000000
  %3002 = fmul fast float %2999, %2975
  %3003 = fmul fast float %3000, %2987
  %3004 = fmul fast float %2997, %2977
  %3005 = fadd fast float %3002, %3004
  %3006 = fsub fast float %3005, %3003
  %3007 = call float @dx.op.unary.f32(i32 6, float %3006)  ; FAbs(value)
  %3008 = fadd fast float %3007, 0x3DDB7CDFE0000000
  %3009 = fdiv fast float %3001, %3008
  br label %3010

; <label>:3010                                    ; preds = %2995, %2729
  %3011 = phi float [ %3009, %2995 ], [ 1.000000e+00, %2729 ]
  %3012 = fmul fast float %2960, %2960
  %3013 = fmul fast float %2972, %2972
  %3014 = fmul fast float %2962, %2962
  %3015 = fadd fast float %3014, %3012
  %3016 = fadd fast float %3015, %3013
  %3017 = call float @dx.op.unary.f32(i32 24, float %3016)  ; Sqrt(value)
  %3018 = fcmp fast ugt float %3017, 0.000000e+00
  br i1 %3018, label %3019, label %3034

; <label>:3019                                    ; preds = %3010
  %3020 = fsub fast float -0.000000e+00, %2962
  %3021 = fdiv fast float %3020, %3017
  %3022 = fsub fast float -0.000000e+00, %2960
  %3023 = fdiv fast float %3022, %3017
  %3024 = fdiv fast float %2972, %3017
  %3025 = fmul fast float %2971, 0x3FE279A760000000
  %3026 = fmul fast float %3023, %2960
  %3027 = fmul fast float %3024, %2972
  %3028 = fmul fast float %3021, %2962
  %3029 = fadd fast float %3026, %3028
  %3030 = fsub fast float %3029, %3027
  %3031 = call float @dx.op.unary.f32(i32 6, float %3030)  ; FAbs(value)
  %3032 = fadd fast float %3031, 0x3DDB7CDFE0000000
  %3033 = fdiv fast float %3025, %3032
  br label %3034

; <label>:3034                                    ; preds = %3019, %3010
  %3035 = phi float [ %3033, %3019 ], [ 1.000000e+00, %3010 ]
  %3036 = call float @dx.op.binary.f32(i32 36, float %3035, float %3011)  ; FMin(a,b)
  %3037 = fmul fast float %2943, %2943
  %3038 = fmul fast float %2957, %2957
  %3039 = fmul fast float %2945, %2945
  %3040 = fadd fast float %3039, %3037
  %3041 = fadd fast float %3040, %3038
  %3042 = call float @dx.op.unary.f32(i32 24, float %3041)  ; Sqrt(value)
  %3043 = fcmp fast ugt float %3042, 0.000000e+00
  br i1 %3043, label %3044, label %3059

; <label>:3044                                    ; preds = %3034
  %3045 = fsub fast float -0.000000e+00, %2945
  %3046 = fdiv fast float %3045, %3042
  %3047 = fsub fast float -0.000000e+00, %2943
  %3048 = fdiv fast float %3047, %3042
  %3049 = fdiv fast float %2957, %3042
  %3050 = fmul fast float %2956, 0x3FE279A760000000
  %3051 = fmul fast float %3048, %2943
  %3052 = fmul fast float %3049, %2957
  %3053 = fmul fast float %3046, %2945
  %3054 = fadd fast float %3051, %3053
  %3055 = fsub fast float %3054, %3052
  %3056 = call float @dx.op.unary.f32(i32 6, float %3055)  ; FAbs(value)
  %3057 = fadd fast float %3056, 0x3DDB7CDFE0000000
  %3058 = fdiv fast float %3050, %3057
  br label %3059

; <label>:3059                                    ; preds = %3044, %3034
  %3060 = phi float [ %3058, %3044 ], [ 1.000000e+00, %3034 ]
  %3061 = call float @dx.op.binary.f32(i32 36, float %3060, float %3036)  ; FMin(a,b)
  %3062 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3063 = fcmp fast olt float %3062, 1.000000e+00
  br i1 %3063, label %3064, label %3074

; <label>:3064                                    ; preds = %3059
  %3065 = fmul fast float %3062, %2943
  %3066 = fmul fast float %3062, %2957
  %3067 = fmul fast float %3062, %2945
  %3068 = fmul fast float %3062, %2960
  %3069 = fmul fast float %3062, %2972
  %3070 = fmul fast float %3062, %2962
  %3071 = fmul fast float %3062, %2975
  %3072 = fmul fast float %3062, %2987
  %3073 = fmul fast float %3062, %2977
  br label %3074

; <label>:3074                                    ; preds = %3064, %3059
  %3075 = phi float [ %3071, %3064 ], [ %2975, %3059 ]
  %3076 = phi float [ %3072, %3064 ], [ %2987, %3059 ]
  %3077 = phi float [ %3073, %3064 ], [ %2977, %3059 ]
  %3078 = phi float [ %3068, %3064 ], [ %2960, %3059 ]
  %3079 = phi float [ %3069, %3064 ], [ %2972, %3059 ]
  %3080 = phi float [ %3070, %3064 ], [ %2962, %3059 ]
  %3081 = phi float [ %3065, %3064 ], [ %2943, %3059 ]
  %3082 = phi float [ %3066, %3064 ], [ %2957, %3059 ]
  %3083 = phi float [ %3067, %3064 ], [ %2945, %3059 ]
  %3084 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2956)  ; FMax(a,b)
  %3085 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2971)  ; FMax(a,b)
  %3086 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2986)  ; FMax(a,b)
  %3087 = fcmp fast oge float %2744, 0.000000e+00
  %3088 = and i1 %3087, %2512
  %3089 = fcmp fast ole float %2744, 1.000000e+00
  %3090 = and i1 %3089, %3088
  %3091 = fcmp fast oge float %2745, 0.000000e+00
  %3092 = and i1 %3091, %3090
  %3093 = fcmp fast ole float %2745, 1.000000e+00
  %3094 = and i1 %3093, %3092
  br i1 %3094, label %3095, label %3240, !dx.controlflow.hints !105

; <label>:3095                                    ; preds = %3074
  %3096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3097 = extractvalue %dx.types.CBufRet.f32 %3096, 2
  %3098 = extractvalue %dx.types.CBufRet.f32 %3096, 3
  %3099 = fmul fast float %3097, %2744
  %3100 = fmul fast float %3098, %2745
  %3101 = call float @dx.op.unary.f32(i32 27, float %3099)  ; Round_ni(value)
  %3102 = call float @dx.op.unary.f32(i32 27, float %3100)  ; Round_ni(value)
  %3103 = fptosi float %3101 to i32
  %3104 = fptosi float %3102 to i32
  %3105 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %3103, i32 %3104, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = and i32 %3106, 65535
  %3108 = lshr i32 %3106, 16
  %3109 = icmp eq i32 %3107, 65535
  br i1 %3109, label %3146, label %3110

; <label>:3110                                    ; preds = %3095
  %3111 = extractvalue %dx.types.CBufRet.f32 %2510, 1
  %3112 = extractvalue %dx.types.CBufRet.f32 %3096, 0
  %3113 = extractvalue %dx.types.CBufRet.f32 %3096, 1
  %3114 = fmul fast float %3112, %2744
  %3115 = fmul fast float %3113, %2745
  %3116 = fmul fast float %3114, 1.250000e-01
  %3117 = fmul fast float %3115, 1.250000e-01
  %3118 = call float @dx.op.unary.f32(i32 27, float %3116)  ; Round_ni(value)
  %3119 = call float @dx.op.unary.f32(i32 27, float %3117)  ; Round_ni(value)
  %3120 = fmul fast float %3118, 8.000000e+00
  %3121 = fmul fast float %3119, 8.000000e+00
  %3122 = and i32 %3106, 255
  %3123 = lshr i32 %3106, 8
  %3124 = and i32 %3123, 255
  %3125 = mul nuw nsw i32 %3122, 9
  %3126 = uitofp i32 %3125 to float
  %3127 = mul nuw nsw i32 %3124, 9
  %3128 = uitofp i32 %3127 to float
  %3129 = fadd fast float %3126, 5.000000e-01
  %3130 = fadd fast float %3129, %3114
  %3131 = fsub fast float %3130, %3120
  %3132 = fadd fast float %3128, 5.000000e-01
  %3133 = fadd fast float %3132, %3115
  %3134 = fsub fast float %3133, %3121
  %3135 = fdiv fast float %3131, %2511
  %3136 = fdiv fast float %3134, %3111
  %3137 = fmul fast float %2772, 4.375000e-01
  %3138 = fadd fast float %3137, 3.125000e-02
  %3139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3135, float %3136, float %3138, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3140 = extractvalue %dx.types.ResRet.f32 %3139, 0
  %3141 = extractvalue %dx.types.ResRet.f32 %3139, 1
  %3142 = extractvalue %dx.types.ResRet.f32 %3139, 2
  %3143 = fadd fast float %3140, %3084
  %3144 = fadd fast float %3141, %3085
  %3145 = fadd fast float %3142, %3086
  br label %3146

; <label>:3146                                    ; preds = %3110, %3095
  %3147 = phi float [ %3145, %3110 ], [ %3086, %3095 ]
  %3148 = phi float [ %3144, %3110 ], [ %3085, %3095 ]
  %3149 = phi float [ %3143, %3110 ], [ %3084, %3095 ]
  %3150 = icmp eq i32 %3108, 65535
  br i1 %3150, label %3240, label %3151

; <label>:3151                                    ; preds = %3146
  %3152 = extractvalue %dx.types.CBufRet.f32 %2510, 1
  %3153 = extractvalue %dx.types.CBufRet.f32 %3096, 0
  %3154 = extractvalue %dx.types.CBufRet.f32 %3096, 1
  %3155 = fmul fast float %3153, %2744
  %3156 = fmul fast float %3154, %2745
  %3157 = fmul fast float %3155, 1.250000e-01
  %3158 = fmul fast float %3156, 1.250000e-01
  %3159 = call float @dx.op.unary.f32(i32 27, float %3157)  ; Round_ni(value)
  %3160 = call float @dx.op.unary.f32(i32 27, float %3158)  ; Round_ni(value)
  %3161 = fmul fast float %3159, 8.000000e+00
  %3162 = fmul fast float %3160, 8.000000e+00
  %3163 = fsub fast float %3155, %3161
  %3164 = fsub fast float %3156, %3162
  %3165 = fadd fast float %3163, 5.000000e-01
  %3166 = fadd fast float %3164, 5.000000e-01
  %3167 = and i32 %3108, 255
  %3168 = lshr i32 %3106, 24
  %3169 = mul nuw nsw i32 %3167, 9
  %3170 = uitofp i32 %3169 to float
  %3171 = mul nuw nsw i32 %3168, 9
  %3172 = uitofp i32 %3171 to float
  %3173 = fadd fast float %3165, %3170
  %3174 = fadd fast float %3166, %3172
  %3175 = fdiv fast float %3173, %2511
  %3176 = fdiv fast float %3174, %3152
  %3177 = fmul fast float %2772, 4.375000e-01
  %3178 = fadd fast float %3177, 3.125000e-02
  %3179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3175, float %3176, float %3178, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3180 = extractvalue %dx.types.ResRet.f32 %3179, 0
  %3181 = extractvalue %dx.types.ResRet.f32 %3179, 1
  %3182 = extractvalue %dx.types.ResRet.f32 %3179, 2
  %3183 = fadd fast float %3177, 5.312500e-01
  %3184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3175, float %3176, float %3183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3185 = extractvalue %dx.types.ResRet.f32 %3184, 0
  %3186 = extractvalue %dx.types.ResRet.f32 %3184, 1
  %3187 = extractvalue %dx.types.ResRet.f32 %3184, 2
  %3188 = fmul fast float %3185, 2.000000e+00
  %3189 = fmul fast float %3186, 2.000000e+00
  %3190 = fmul fast float %3187, 2.000000e+00
  %3191 = fadd fast float %3188, -1.000000e+00
  %3192 = fadd fast float %3189, -1.000000e+00
  %3193 = fadd fast float %3190, -1.000000e+00
  %3194 = fmul fast float %3191, %3191
  %3195 = fmul fast float %3192, %3192
  %3196 = fadd fast float %3194, %3195
  %3197 = fmul fast float %3193, %3193
  %3198 = fadd fast float %3196, %3197
  %3199 = call float @dx.op.unary.f32(i32 24, float %3198)  ; Sqrt(value)
  %3200 = fcmp fast ogt float %3199, 0.000000e+00
  br i1 %3200, label %3201, label %3205

; <label>:3201                                    ; preds = %3151
  %3202 = fdiv fast float %3191, %3199
  %3203 = fdiv fast float %3192, %3199
  %3204 = fdiv fast float %3193, %3199
  br label %3205

; <label>:3205                                    ; preds = %3201, %3151
  %3206 = phi float [ %3202, %3201 ], [ 0.000000e+00, %3151 ]
  %3207 = phi float [ %3203, %3201 ], [ 0.000000e+00, %3151 ]
  %3208 = phi float [ %3204, %3201 ], [ 0.000000e+00, %3151 ]
  %3209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.f32 %3209, 0
  %3211 = extractvalue %dx.types.CBufRet.f32 %3209, 1
  %3212 = fsub fast float %2362, %3210
  %3213 = fsub fast float %2363, %3211
  %3214 = fmul fast float %3212, %3212
  %3215 = fmul fast float %3213, %3213
  %3216 = fadd fast float %3214, %3215
  %3217 = call float @dx.op.unary.f32(i32 24, float %3216)  ; Sqrt(value)
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3221 = fsub fast float %3217, %3219
  %3222 = fdiv fast float %3221, %3220
  %3223 = call float @dx.op.unary.f32(i32 7, float %3222)  ; Saturate(value)
  %3224 = fmul fast float %3223, 2.000000e+00
  %3225 = fsub fast float 3.000000e+00, %3224
  %3226 = fmul fast float %3223, %3223
  %3227 = fmul fast float %3226, %3225
  %3228 = call float @dx.op.dot3.f32(i32 55, float %3206, float %3207, float %3208, float %2334, float %2335, float %2336)  ; Dot3(ax,ay,az,bx,by,bz)
  %3229 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3228)  ; FMax(a,b)
  %3230 = fmul fast float %3229, 0x400C5BF8A0000000
  %3231 = fmul fast float %3227, %3180
  %3232 = fmul fast float %3231, %3230
  %3233 = fadd fast float %3232, %3149
  %3234 = fmul fast float %3227, %3181
  %3235 = fmul fast float %3234, %3230
  %3236 = fadd fast float %3235, %3148
  %3237 = fmul fast float %3227, %3182
  %3238 = fmul fast float %3237, %3230
  %3239 = fadd fast float %3238, %3147
  br label %3240

; <label>:3240                                    ; preds = %3205, %3146, %3074
  %3241 = phi float [ %3239, %3205 ], [ %3147, %3146 ], [ %3086, %3074 ]
  %3242 = phi float [ %3236, %3205 ], [ %3148, %3146 ], [ %3085, %3074 ]
  %3243 = phi float [ %3233, %3205 ], [ %3149, %3146 ], [ %3084, %3074 ]
  %3244 = fcmp fast ogt float %2731, %2768
  %3245 = and i1 %3087, %3244
  %3246 = and i1 %3089, %3245
  %3247 = and i1 %3091, %3246
  %3248 = and i1 %3093, %3247
  br i1 %3248, label %3249, label %3306, !dx.controlflow.hints !106

; <label>:3249                                    ; preds = %3240
  %3250 = fmul fast float %2770, 0x3FC24924A0000000
  %3251 = fsub fast float %2731, %2768
  %3252 = fdiv fast float %3251, %3250
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.CBufRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.CBufRet.f32 %3256, 2
  %3260 = fsub fast float %3255, %3243
  %3261 = fsub fast float %3257, %3081
  %3262 = fsub fast float %3258, %3082
  %3263 = fsub fast float %3259, %3083
  %3264 = fmul fast float %3260, %3253
  %3265 = fmul fast float %3261, %3253
  %3266 = fmul fast float %3262, %3253
  %3267 = fmul fast float %3263, %3253
  %3268 = fadd fast float %3264, %3243
  %3269 = fadd fast float %3265, %3081
  %3270 = fadd fast float %3266, %3082
  %3271 = fadd fast float %3267, %3083
  %3272 = extractvalue %dx.types.CBufRet.f32 %3254, 1
  %3273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3274 = extractvalue %dx.types.CBufRet.f32 %3273, 0
  %3275 = extractvalue %dx.types.CBufRet.f32 %3273, 1
  %3276 = extractvalue %dx.types.CBufRet.f32 %3273, 2
  %3277 = fsub fast float %3272, %3242
  %3278 = fsub fast float %3274, %3078
  %3279 = fsub fast float %3275, %3079
  %3280 = fsub fast float %3276, %3080
  %3281 = fmul fast float %3277, %3253
  %3282 = fmul fast float %3278, %3253
  %3283 = fmul fast float %3279, %3253
  %3284 = fmul fast float %3280, %3253
  %3285 = fadd fast float %3281, %3242
  %3286 = fadd fast float %3282, %3078
  %3287 = fadd fast float %3283, %3079
  %3288 = fadd fast float %3284, %3080
  %3289 = extractvalue %dx.types.CBufRet.f32 %3254, 2
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 0
  %3292 = extractvalue %dx.types.CBufRet.f32 %3290, 1
  %3293 = extractvalue %dx.types.CBufRet.f32 %3290, 2
  %3294 = fsub fast float %3289, %3241
  %3295 = fsub fast float %3291, %3075
  %3296 = fsub fast float %3292, %3076
  %3297 = fsub fast float %3293, %3077
  %3298 = fmul fast float %3294, %3253
  %3299 = fmul fast float %3295, %3253
  %3300 = fmul fast float %3296, %3253
  %3301 = fmul fast float %3297, %3253
  %3302 = fadd fast float %3298, %3241
  %3303 = fadd fast float %3299, %3075
  %3304 = fadd fast float %3300, %3076
  %3305 = fadd fast float %3301, %3077
  br label %3306

; <label>:3306                                    ; preds = %3249, %3240
  %3307 = phi float [ %3302, %3249 ], [ %3241, %3240 ]
  %3308 = phi float [ %3303, %3249 ], [ %3075, %3240 ]
  %3309 = phi float [ %3304, %3249 ], [ %3076, %3240 ]
  %3310 = phi float [ %3305, %3249 ], [ %3077, %3240 ]
  %3311 = phi float [ %3285, %3249 ], [ %3242, %3240 ]
  %3312 = phi float [ %3286, %3249 ], [ %3078, %3240 ]
  %3313 = phi float [ %3287, %3249 ], [ %3079, %3240 ]
  %3314 = phi float [ %3288, %3249 ], [ %3080, %3240 ]
  %3315 = phi float [ %3268, %3249 ], [ %3243, %3240 ]
  %3316 = phi float [ %3269, %3249 ], [ %3081, %3240 ]
  %3317 = phi float [ %3270, %3249 ], [ %3082, %3240 ]
  %3318 = phi float [ %3271, %3249 ], [ %3083, %3240 ]
  %3319 = extractvalue %dx.types.CBufRet.f32 %2893, 3
  %3320 = fmul fast float %3319, %3315
  %3321 = fmul fast float %3319, %3311
  %3322 = fmul fast float %3319, %3307
  %3323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3324 = extractvalue %dx.types.CBufRet.f32 %3323, 3
  %3325 = fmul fast float %3320, %3324
  %3326 = fmul fast float %3321, %3324
  %3327 = fmul fast float %3322, %3324
  %3328 = fmul fast float %3316, 1.500000e+00
  %3329 = fmul fast float %3328, %3319
  %3330 = fmul fast float %3329, %3324
  %3331 = fmul fast float %3317, 1.500000e+00
  %3332 = fmul fast float %3331, %3319
  %3333 = fmul fast float %3332, %3324
  %3334 = fmul fast float %3318, 1.500000e+00
  %3335 = fmul fast float %3334, %3319
  %3336 = fmul fast float %3335, %3324
  %3337 = fmul fast float %3312, 1.500000e+00
  %3338 = fmul fast float %3337, %3319
  %3339 = fmul fast float %3338, %3324
  %3340 = fmul fast float %3313, 1.500000e+00
  %3341 = fmul fast float %3340, %3319
  %3342 = fmul fast float %3341, %3324
  %3343 = fmul fast float %3314, 1.500000e+00
  %3344 = fmul fast float %3343, %3319
  %3345 = fmul fast float %3344, %3324
  %3346 = fmul fast float %3308, 1.500000e+00
  %3347 = fmul fast float %3346, %3319
  %3348 = fmul fast float %3347, %3324
  %3349 = fmul fast float %3309, 1.500000e+00
  %3350 = fmul fast float %3349, %3319
  %3351 = fmul fast float %3350, %3324
  %3352 = fmul fast float %3310, 1.500000e+00
  %3353 = fmul fast float %3352, %3319
  %3354 = fmul fast float %3353, %3324
  %3355 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3325)  ; FMax(a,b)
  %3356 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3333, float %3336, float %3330, float %3333, float %3336)  ; Dot3(ax,ay,az,bx,by,bz)
  %3357 = fcmp fast oeq float %3356, 0.000000e+00
  %3358 = fcmp fast oeq float %3355, 0.000000e+00
  %3359 = or i1 %3358, %3357
  br i1 %3359, label %3389, label %3360

; <label>:3360                                    ; preds = %3306
  %3361 = fsub fast float -0.000000e+00, %3336
  %3362 = fsub fast float -0.000000e+00, %3330
  %3363 = call float @dx.op.unary.f32(i32 24, float %3356)  ; Sqrt(value)
  %3364 = fdiv fast float %3363, %3355
  %3365 = fcmp fast ogt float %3364, 0x3FFB6F8900000000
  %3366 = select i1 %3365, float 0x3FFB6F8900000000, float %3364
  %3367 = fmul fast float %3366, 0x3FE8A23460000000
  %3368 = call float @dx.op.unary.f32(i32 7, float %3367)  ; Saturate(value)
  %3369 = call float @dx.op.binary.f32(i32 35, float %3366, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3370 = fmul fast float %3368, %3355
  %3371 = fmul fast float %3369, 0x3FF279A740000000
  %3372 = fadd fast float %3371, -1.000000e+00
  %3373 = call float @dx.op.dot3.f32(i32 55, float %3361, float %3362, float %3333, float %3361, float %3362, float %3333)  ; Dot3(ax,ay,az,bx,by,bz)
  %3374 = call float @dx.op.unary.f32(i32 25, float %3373)  ; Rsqrt(value)
  %3375 = fmul fast float %3374, %3361
  %3376 = fmul fast float %3374, %3362
  %3377 = fmul fast float %3374, %3333
  %3378 = fmul fast float %3372, %3372
  %3379 = fsub fast float 1.000000e+00, %3378
  %3380 = fmul fast float %3369, 0x40005F8BE0000000
  %3381 = fsub fast float 0x400C5BF8A0000000, %3380
  %3382 = fdiv fast float %3370, %3381
  %3383 = fmul fast float %3382, 0x3FEE31C3C0000000
  %3384 = fmul fast float %3383, %3379
  %3385 = fmul fast float %3369, 0x3FDACB7480000000
  %3386 = fadd fast float %3385, 0xBFD7347680000000
  %3387 = fmul fast float %3386, %3382
  %3388 = fmul fast float %3387, %3379
  br label %3389

; <label>:3389                                    ; preds = %3360, %3306
  %3390 = phi float [ %3375, %3360 ], [ 0.000000e+00, %3306 ]
  %3391 = phi float [ %3376, %3360 ], [ 0.000000e+00, %3306 ]
  %3392 = phi float [ %3377, %3360 ], [ 0.000000e+00, %3306 ]
  %3393 = phi float [ %3384, %3360 ], [ 0.000000e+00, %3306 ]
  %3394 = phi float [ %3388, %3360 ], [ 0.000000e+00, %3306 ]
  %3395 = call float @dx.op.dot3.f32(i32 55, float %3390, float %3391, float %3392, float %2334, float %2335, float %2336)  ; Dot3(ax,ay,az,bx,by,bz)
  %3396 = fmul fast float %3395, 0x3FDF454380000000
  %3397 = fmul fast float %3395, %3395
  %3398 = fmul fast float %3397, 0x3FEE471020000000
  %3399 = fadd fast float %3398, 0xBFD42F6020000000
  %3400 = fmul fast float %3355, 0x3FD20DD760000000
  %3401 = fmul fast float %3399, %3394
  %3402 = fadd fast float %3401, %3400
  %3403 = fmul fast float %3396, %3393
  %3404 = fadd fast float %3402, %3403
  %3405 = fsub fast float %3402, %3403
  %3406 = call float @dx.op.dot3.f32(i32 55, float %3390, float %3391, float %3392, float %2351, float %2352, float %2353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = fmul fast float %3406, 0x3FDF454380000000
  %3408 = fmul fast float %3406, %3406
  %3409 = fmul fast float %3408, 0x3FEE471020000000
  %3410 = fadd fast float %3409, 0xBFD42F6020000000
  %3411 = call float @dx.op.dot3.f32(i32 55, float %3355, float %3393, float %3394, float 0x3FD20DD760000000, float %3407, float %3410)  ; Dot3(ax,ay,az,bx,by,bz)
  %3412 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3326)  ; FMax(a,b)
  %3413 = call float @dx.op.dot3.f32(i32 55, float %3339, float %3342, float %3345, float %3339, float %3342, float %3345)  ; Dot3(ax,ay,az,bx,by,bz)
  %3414 = fcmp fast oeq float %3413, 0.000000e+00
  %3415 = fcmp fast oeq float %3412, 0.000000e+00
  %3416 = or i1 %3415, %3414
  br i1 %3416, label %3446, label %3417

; <label>:3417                                    ; preds = %3389
  %3418 = fsub fast float -0.000000e+00, %3345
  %3419 = fsub fast float -0.000000e+00, %3339
  %3420 = call float @dx.op.unary.f32(i32 24, float %3413)  ; Sqrt(value)
  %3421 = fdiv fast float %3420, %3412
  %3422 = fcmp fast ogt float %3421, 0x3FFB6F8900000000
  %3423 = select i1 %3422, float 0x3FFB6F8900000000, float %3421
  %3424 = fmul fast float %3423, 0x3FE8A23460000000
  %3425 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3426 = call float @dx.op.binary.f32(i32 35, float %3423, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3427 = fmul fast float %3425, %3412
  %3428 = fmul fast float %3426, 0x3FF279A740000000
  %3429 = fadd fast float %3428, -1.000000e+00
  %3430 = call float @dx.op.dot3.f32(i32 55, float %3418, float %3419, float %3342, float %3418, float %3419, float %3342)  ; Dot3(ax,ay,az,bx,by,bz)
  %3431 = call float @dx.op.unary.f32(i32 25, float %3430)  ; Rsqrt(value)
  %3432 = fmul fast float %3431, %3418
  %3433 = fmul fast float %3431, %3419
  %3434 = fmul fast float %3431, %3342
  %3435 = fmul fast float %3429, %3429
  %3436 = fsub fast float 1.000000e+00, %3435
  %3437 = fmul fast float %3426, 0x40005F8BE0000000
  %3438 = fsub fast float 0x400C5BF8A0000000, %3437
  %3439 = fdiv fast float %3427, %3438
  %3440 = fmul fast float %3439, 0x3FEE31C3C0000000
  %3441 = fmul fast float %3440, %3436
  %3442 = fmul fast float %3426, 0x3FDACB7480000000
  %3443 = fadd fast float %3442, 0xBFD7347680000000
  %3444 = fmul fast float %3443, %3439
  %3445 = fmul fast float %3444, %3436
  br label %3446

; <label>:3446                                    ; preds = %3417, %3389
  %3447 = phi float [ %3432, %3417 ], [ 0.000000e+00, %3389 ]
  %3448 = phi float [ %3433, %3417 ], [ 0.000000e+00, %3389 ]
  %3449 = phi float [ %3434, %3417 ], [ 0.000000e+00, %3389 ]
  %3450 = phi float [ %3441, %3417 ], [ 0.000000e+00, %3389 ]
  %3451 = phi float [ %3445, %3417 ], [ 0.000000e+00, %3389 ]
  %3452 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3448, float %3449, float %2334, float %2335, float %2336)  ; Dot3(ax,ay,az,bx,by,bz)
  %3453 = fmul fast float %3452, 0x3FDF454380000000
  %3454 = fmul fast float %3452, %3452
  %3455 = fmul fast float %3454, 0x3FEE471020000000
  %3456 = fadd fast float %3455, 0xBFD42F6020000000
  %3457 = fmul fast float %3412, 0x3FD20DD760000000
  %3458 = fmul fast float %3456, %3451
  %3459 = fadd fast float %3458, %3457
  %3460 = fmul fast float %3453, %3450
  %3461 = fadd fast float %3459, %3460
  %3462 = fsub fast float %3459, %3460
  %3463 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3448, float %3449, float %2351, float %2352, float %2353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3464 = fmul fast float %3463, 0x3FDF454380000000
  %3465 = fmul fast float %3463, %3463
  %3466 = fmul fast float %3465, 0x3FEE471020000000
  %3467 = fadd fast float %3466, 0xBFD42F6020000000
  %3468 = call float @dx.op.dot3.f32(i32 55, float %3412, float %3450, float %3451, float 0x3FD20DD760000000, float %3464, float %3467)  ; Dot3(ax,ay,az,bx,by,bz)
  %3469 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3327)  ; FMax(a,b)
  %3470 = call float @dx.op.dot3.f32(i32 55, float %3348, float %3351, float %3354, float %3348, float %3351, float %3354)  ; Dot3(ax,ay,az,bx,by,bz)
  %3471 = fcmp fast oeq float %3470, 0.000000e+00
  %3472 = fcmp fast oeq float %3469, 0.000000e+00
  %3473 = or i1 %3472, %3471
  br i1 %3473, label %3503, label %3474

; <label>:3474                                    ; preds = %3446
  %3475 = fsub fast float -0.000000e+00, %3354
  %3476 = fsub fast float -0.000000e+00, %3348
  %3477 = call float @dx.op.unary.f32(i32 24, float %3470)  ; Sqrt(value)
  %3478 = fdiv fast float %3477, %3469
  %3479 = fcmp fast ogt float %3478, 0x3FFB6F8900000000
  %3480 = select i1 %3479, float 0x3FFB6F8900000000, float %3478
  %3481 = fmul fast float %3480, 0x3FE8A23460000000
  %3482 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  %3483 = call float @dx.op.binary.f32(i32 35, float %3480, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3484 = fmul fast float %3482, %3469
  %3485 = fmul fast float %3483, 0x3FF279A740000000
  %3486 = fadd fast float %3485, -1.000000e+00
  %3487 = call float @dx.op.dot3.f32(i32 55, float %3475, float %3476, float %3351, float %3475, float %3476, float %3351)  ; Dot3(ax,ay,az,bx,by,bz)
  %3488 = call float @dx.op.unary.f32(i32 25, float %3487)  ; Rsqrt(value)
  %3489 = fmul fast float %3488, %3475
  %3490 = fmul fast float %3488, %3476
  %3491 = fmul fast float %3488, %3351
  %3492 = fmul fast float %3486, %3486
  %3493 = fsub fast float 1.000000e+00, %3492
  %3494 = fmul fast float %3483, 0x40005F8BE0000000
  %3495 = fsub fast float 0x400C5BF8A0000000, %3494
  %3496 = fdiv fast float %3484, %3495
  %3497 = fmul fast float %3496, 0x3FEE31C3C0000000
  %3498 = fmul fast float %3497, %3493
  %3499 = fmul fast float %3483, 0x3FDACB7480000000
  %3500 = fadd fast float %3499, 0xBFD7347680000000
  %3501 = fmul fast float %3500, %3496
  %3502 = fmul fast float %3501, %3493
  br label %3503

; <label>:3503                                    ; preds = %3474, %3446
  %3504 = phi float [ %3489, %3474 ], [ 0.000000e+00, %3446 ]
  %3505 = phi float [ %3490, %3474 ], [ 0.000000e+00, %3446 ]
  %3506 = phi float [ %3491, %3474 ], [ 0.000000e+00, %3446 ]
  %3507 = phi float [ %3498, %3474 ], [ 0.000000e+00, %3446 ]
  %3508 = phi float [ %3502, %3474 ], [ 0.000000e+00, %3446 ]
  %3509 = call float @dx.op.dot3.f32(i32 55, float %3504, float %3505, float %3506, float %2334, float %2335, float %2336)  ; Dot3(ax,ay,az,bx,by,bz)
  %3510 = fmul fast float %3509, 0x3FDF454380000000
  %3511 = fmul fast float %3509, %3509
  %3512 = fmul fast float %3511, 0x3FEE471020000000
  %3513 = fadd fast float %3512, 0xBFD42F6020000000
  %3514 = fmul fast float %3469, 0x3FD20DD760000000
  %3515 = fmul fast float %3513, %3508
  %3516 = fadd fast float %3515, %3514
  %3517 = fmul fast float %3510, %3507
  %3518 = fadd fast float %3516, %3517
  %3519 = fsub fast float %3516, %3517
  %3520 = call float @dx.op.dot3.f32(i32 55, float %3504, float %3505, float %3506, float %2351, float %2352, float %2353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3521 = fmul fast float %3520, 0x3FDF454380000000
  %3522 = fmul fast float %3520, %3520
  %3523 = fmul fast float %3522, 0x3FEE471020000000
  %3524 = fadd fast float %3523, 0xBFD42F6020000000
  %3525 = call float @dx.op.dot3.f32(i32 55, float %3469, float %3507, float %3508, float 0x3FD20DD760000000, float %3521, float %3524)  ; Dot3(ax,ay,az,bx,by,bz)
  %3526 = call float @dx.op.binary.f32(i32 35, float %3404, float 0.000000e+00)  ; FMax(a,b)
  %3527 = call float @dx.op.binary.f32(i32 35, float %3461, float 0.000000e+00)  ; FMax(a,b)
  %3528 = call float @dx.op.binary.f32(i32 35, float %3518, float 0.000000e+00)  ; FMax(a,b)
  %3529 = call float @dx.op.binary.f32(i32 35, float %3405, float 0.000000e+00)  ; FMax(a,b)
  %3530 = call float @dx.op.binary.f32(i32 35, float %3462, float 0.000000e+00)  ; FMax(a,b)
  %3531 = call float @dx.op.binary.f32(i32 35, float %3519, float 0.000000e+00)  ; FMax(a,b)
  %3532 = call float @dx.op.binary.f32(i32 35, float %3411, float 0.000000e+00)  ; FMax(a,b)
  %3533 = call float @dx.op.binary.f32(i32 35, float %3468, float 0.000000e+00)  ; FMax(a,b)
  %3534 = call float @dx.op.binary.f32(i32 35, float %3525, float 0.000000e+00)  ; FMax(a,b)
  %3535 = fsub fast float %2725, %3526
  %3536 = fsub fast float %2726, %3527
  %3537 = fsub fast float %2727, %3528
  %3538 = fmul fast float %3535, %2403
  %3539 = fmul fast float %3536, %2403
  %3540 = fmul fast float %3537, %2403
  %3541 = fadd fast float %3538, %3526
  %3542 = fadd fast float %3539, %3527
  %3543 = fadd fast float %3540, %3528
  %3544 = fsub fast float %2722, %3529
  %3545 = fsub fast float %2723, %3530
  %3546 = fsub fast float %2724, %3531
  %3547 = fmul fast float %3544, %2403
  %3548 = fmul fast float %3545, %2403
  %3549 = fmul fast float %3546, %2403
  %3550 = fadd fast float %3547, %3529
  %3551 = fadd fast float %3548, %3530
  %3552 = fadd fast float %3549, %3531
  %3553 = fsub fast float %2719, %3532
  %3554 = fsub fast float %2720, %3533
  %3555 = fsub fast float %2721, %3534
  %3556 = fmul fast float %3553, %2403
  %3557 = fmul fast float %3554, %2403
  %3558 = fmul fast float %3555, %2403
  %3559 = fadd fast float %3556, %3532
  %3560 = fadd fast float %3557, %3533
  %3561 = fadd fast float %3558, %3534
  br label %3562

; <label>:3562                                    ; preds = %3503, %2718
  %3563 = phi float [ %3559, %3503 ], [ %2719, %2718 ]
  %3564 = phi float [ %3560, %3503 ], [ %2720, %2718 ]
  %3565 = phi float [ %3561, %3503 ], [ %2721, %2718 ]
  %3566 = phi float [ %3550, %3503 ], [ %2722, %2718 ]
  %3567 = phi float [ %3551, %3503 ], [ %2723, %2718 ]
  %3568 = phi float [ %3552, %3503 ], [ %2724, %2718 ]
  %3569 = phi float [ %3541, %3503 ], [ %2725, %2718 ]
  %3570 = phi float [ %3542, %3503 ], [ %2726, %2718 ]
  %3571 = phi float [ %3543, %3503 ], [ %2727, %2718 ]
  %3572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3573 = extractvalue %dx.types.CBufRet.f32 %3572, 0
  %3574 = call float @dx.op.binary.f32(i32 36, float %2337, float %3573)  ; FMin(a,b)
  %3575 = fsub fast float 1.000000e+00, %2354
  %3576 = fmul fast float %3574, %3575
  %3577 = fsub fast float 1.000000e+00, %3576
  %3578 = bitcast float %3577 to i32
  %3579 = sub nsw i32 2129859010, %3578
  %3580 = bitcast i32 %3579 to float
  %3581 = call float @dx.op.binary.f32(i32 36, float %2338, float %3573)  ; FMin(a,b)
  %3582 = fmul fast float %3581, %3575
  %3583 = fsub fast float 1.000000e+00, %3582
  %3584 = bitcast float %3583 to i32
  %3585 = sub nsw i32 2129859010, %3584
  %3586 = bitcast i32 %3585 to float
  %3587 = call float @dx.op.binary.f32(i32 36, float %2339, float %3573)  ; FMin(a,b)
  %3588 = fmul fast float %3587, %3575
  %3589 = fsub fast float 1.000000e+00, %3588
  %3590 = bitcast float %3589 to i32
  %3591 = sub nsw i32 2129859010, %3590
  %3592 = bitcast i32 %3591 to float
  %3593 = fmul fast float %3569, %2354
  %3594 = fmul fast float %3593, %3580
  %3595 = fmul fast float %3570, %2354
  %3596 = fmul fast float %3595, %3586
  %3597 = fmul fast float %3571, %2354
  %3598 = fmul fast float %3597, %3592
  %3599 = call float @dx.op.binary.f32(i32 36, float %2331, float %3573)  ; FMin(a,b)
  %3600 = fmul fast float %3599, %3575
  %3601 = fsub fast float 1.000000e+00, %3600
  %3602 = bitcast float %3601 to i32
  %3603 = sub nsw i32 2129859010, %3602
  %3604 = bitcast i32 %3603 to float
  %3605 = call float @dx.op.binary.f32(i32 36, float %2332, float %3573)  ; FMin(a,b)
  %3606 = fmul fast float %3605, %3575
  %3607 = fsub fast float 1.000000e+00, %3606
  %3608 = bitcast float %3607 to i32
  %3609 = sub nsw i32 2129859010, %3608
  %3610 = bitcast i32 %3609 to float
  %3611 = call float @dx.op.binary.f32(i32 36, float %2343, float %3573)  ; FMin(a,b)
  %3612 = fmul fast float %3611, %3575
  %3613 = fsub fast float 1.000000e+00, %3612
  %3614 = bitcast float %3613 to i32
  %3615 = sub nsw i32 2129859010, %3614
  %3616 = bitcast i32 %3615 to float
  %3617 = fmul fast float %3563, %2354
  %3618 = fmul fast float %3617, %3604
  %3619 = fmul fast float %3564, %2354
  %3620 = fmul fast float %3619, %3610
  %3621 = fmul fast float %3565, %2354
  %3622 = fmul fast float %3621, %3616
  %3623 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3596, float %3598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3624 = select i1 %228, float 0.000000e+00, float %3594
  %3625 = select i1 %228, float %3623, float %3596
  %3626 = select i1 %228, float 0.000000e+00, float %3598
  %3627 = call float @dx.op.dot3.f32(i32 55, float %3566, float %3567, float %3568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3628 = select i1 %228, float 0.000000e+00, float %3566
  %3629 = select i1 %228, float %3627, float %3567
  %3630 = select i1 %228, float 0.000000e+00, float %3568
  %3631 = call float @dx.op.dot3.f32(i32 55, float %3618, float %3620, float %3622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3632 = select i1 %228, float 0.000000e+00, float %3618
  %3633 = select i1 %228, float %3631, float %3620
  %3634 = select i1 %228, float 0.000000e+00, float %3622
  %3635 = fmul fast float %1076, %1076
  %3636 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3637 = fmul fast float %2345, 9.843750e-01
  %3638 = fmul fast float %2340, 9.843750e-01
  %3639 = fadd fast float %3637, 7.812500e-03
  %3640 = fadd fast float %3638, 7.812500e-03
  %3641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3639, float %3640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.ResRet.f32 %3641, 2
  %3645 = extractvalue %dx.types.ResRet.f32 %3641, 3
  %3646 = fsub fast float 1.000000e+00, %3636
  %3647 = fsub fast float %3644, %3642
  %3648 = fsub fast float %3645, %3643
  %3649 = fmul fast float %3647, %3646
  %3650 = fmul fast float %3648, %3646
  %3651 = fadd fast float %3649, %3642
  %3652 = fadd fast float %3650, %3643
  %3653 = fmul fast float %3651, %2331
  %3654 = fmul fast float %3651, %2332
  %3655 = fmul fast float %3651, %2343
  %3656 = fadd fast float %3653, %3652
  %3657 = fadd fast float %3654, %3652
  %3658 = fadd fast float %3655, %3652
  %3659 = fcmp fast ogt float %1676, 0.000000e+00
  br i1 %3659, label %3660, label %3686

; <label>:3660                                    ; preds = %3562
  %3661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1676, float %2345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3662 = extractvalue %dx.types.ResRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.ResRet.f32 %3661, 1
  %3664 = extractvalue %dx.types.ResRet.f32 %3661, 2
  %3665 = fadd fast float %3662, -5.000000e-01
  %3666 = fadd fast float %3663, -5.000000e-01
  %3667 = fadd fast float %3664, -5.000000e-01
  %3668 = fsub fast float 1.000000e+00, %2331
  %3669 = fsub fast float 1.000000e+00, %2332
  %3670 = fsub fast float 1.000000e+00, %2343
  %3671 = fmul fast float %2331, 4.000000e+00
  %3672 = fmul fast float %3671, %3668
  %3673 = fmul fast float %3672, %3665
  %3674 = fmul fast float %2332, 4.000000e+00
  %3675 = fmul fast float %3674, %3669
  %3676 = fmul fast float %3675, %3666
  %3677 = fmul fast float %2343, 4.000000e+00
  %3678 = fmul fast float %3677, %3670
  %3679 = fmul fast float %3678, %3667
  %3680 = fadd fast float %3673, %3656
  %3681 = fadd fast float %3676, %3657
  %3682 = fadd fast float %3679, %3658
  %3683 = call float @dx.op.unary.f32(i32 7, float %3680)  ; Saturate(value)
  %3684 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3685 = call float @dx.op.unary.f32(i32 7, float %3682)  ; Saturate(value)
  br label %3686

; <label>:3686                                    ; preds = %3660, %3562
  %3687 = phi float [ %3683, %3660 ], [ %3656, %3562 ]
  %3688 = phi float [ %3684, %3660 ], [ %3657, %3562 ]
  %3689 = phi float [ %3685, %3660 ], [ %3658, %3562 ]
  %3690 = call float @dx.op.binary.f32(i32 35, float %3688, float %3689)  ; FMax(a,b)
  %3691 = call float @dx.op.binary.f32(i32 35, float %3687, float %3690)  ; FMax(a,b)
  %3692 = fsub fast float 1.000000e+00, %3691
  %3693 = call float @dx.op.dot3.f32(i32 55, float %2337, float %2338, float %2339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3694 = fcmp fast ogt float %3693, 0x3E7FF19E20000000
  %3695 = fdiv fast float 1.000000e+00, %3693
  %3696 = select i1 %3694, float %3695, float 0.000000e+00
  %3697 = fmul fast float %3696, %2337
  %3698 = fmul fast float %3696, %2338
  %3699 = fmul fast float %3696, %2339
  %3700 = fadd fast float %3697, -1.000000e+00
  %3701 = fadd fast float %3698, -1.000000e+00
  %3702 = fadd fast float %3699, -1.000000e+00
  %3703 = fmul fast float %3700, 5.000000e-01
  %3704 = fmul fast float %3701, 5.000000e-01
  %3705 = fmul fast float %3702, 5.000000e-01
  %3706 = fadd fast float %3703, 1.000000e+00
  %3707 = fadd fast float %3704, 1.000000e+00
  %3708 = fadd fast float %3705, 1.000000e+00
  %3709 = call float @dx.op.binary.f32(i32 35, float %2345, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3710 = fdiv fast float %1076, %3709
  %3711 = fcmp fast olt float %1749, 1.270000e+02
  %3712 = fcmp fast olt float %1750, 1.270000e+02
  %3713 = fcmp fast olt float %1751, 1.270000e+02
  %3714 = fmul fast float %1749, 0xBFF7154760000000
  %3715 = fmul fast float %3714, %3710
  %3716 = fmul fast float %1750, 0xBFF7154760000000
  %3717 = fmul fast float %3716, %3710
  %3718 = fmul fast float %1751, 0xBFF7154760000000
  %3719 = fmul fast float %3718, %3710
  %3720 = call float @dx.op.unary.f32(i32 21, float %3715)  ; Exp(value)
  %3721 = call float @dx.op.unary.f32(i32 21, float %3717)  ; Exp(value)
  %3722 = call float @dx.op.unary.f32(i32 21, float %3719)  ; Exp(value)
  %3723 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3724 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3725 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3726 = select i1 %3711, float %3723, float 0.000000e+00
  %3727 = select i1 %3712, float %3724, float 0.000000e+00
  %3728 = select i1 %3713, float %3725, float 0.000000e+00
  %3729 = fmul fast float %3726, %3692
  %3730 = fmul fast float %3727, %3692
  %3731 = fmul fast float %3728, %3692
  %3732 = fadd fast float %3729, -1.000000e+00
  %3733 = fadd fast float %3730, -1.000000e+00
  %3734 = fadd fast float %3731, -1.000000e+00
  %3735 = fmul fast float %3732, %1699
  %3736 = fmul fast float %3733, %1699
  %3737 = fmul fast float %3734, %1699
  %3738 = fmul fast float %3687, %3632
  %3739 = fmul fast float %3688, %3633
  %3740 = fmul fast float %3689, %3634
  %3741 = fsub fast float 1.000000e+00, %2345
  %3742 = bitcast float %3741 to i32
  %3743 = sitofp i32 %3742 to float
  %3744 = fmul fast float %3743, 5.000000e+00
  %3745 = fadd fast float %3744, 0xC1EFBF8940000000
  %3746 = fptosi float %3745 to i32
  %3747 = bitcast i32 %3746 to float
  %3748 = fmul fast float %3747, %1675
  %3749 = fmul fast float %3624, %3748
  %3750 = fmul fast float %3749, %3692
  %3751 = fmul fast float %3750, %3706
  %3752 = fmul fast float %3625, %3748
  %3753 = fmul fast float %3752, %3692
  %3754 = fmul fast float %3753, %3707
  %3755 = fmul fast float %3626, %3748
  %3756 = fmul fast float %3755, %3692
  %3757 = fmul fast float %3756, %3708
  %3758 = fadd fast float %3738, %1680
  %3759 = fadd fast float %3758, %3751
  %3760 = fmul fast float %3759, %1699
  %3761 = fadd fast float %3739, %1681
  %3762 = fadd fast float %3761, %3754
  %3763 = fmul fast float %3762, %1699
  %3764 = fadd fast float %3740, %1682
  %3765 = fadd fast float %3764, %3757
  %3766 = fmul fast float %3765, %1699
  %3767 = fmul fast float %2332, 0x4012D0A400000000
  %3768 = fadd fast float %3737, 1.000000e+00
  %3769 = fadd fast float %3736, 1.000000e+00
  %3770 = fadd fast float %3735, 1.000000e+00
  %3771 = fmul fast float %3692, %3626
  %3772 = fmul fast float %3692, %3625
  %3773 = fmul fast float %3692, %3624
  %3774 = fsub fast float 1.000000e+00, %2340
  %3775 = fmul fast float %3774, %1699
  %3776 = fsub fast float 1.000000e+00, %3775
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = fsub fast float 1.000000e+00, %3777
  %3779 = fadd fast float %3767, 0x3FDB6377A0000000
  %3780 = fmul fast float %3778, %3779
  %3781 = call float @dx.op.dot3.f32(i32 55, float %1767, float %1768, float %1769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3782 = fadd fast float %3780, %3781
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = call float @dx.op.binary.f32(i32 35, float %3783, float 0x3F847AE140000000)  ; FMax(a,b)
  %3785 = fmul fast float %3784, %3784
  %3786 = fmul fast float %3785, %3785
  %3787 = fmul fast float %3786, 0xC00A935000000000
  %3788 = call float @dx.op.unary.f32(i32 21, float %3787)  ; Exp(value)
  %3789 = fsub fast float 1.000000e+00, %3788
  %3790 = fmul fast float %3770, %3628
  %3791 = fmul fast float %3790, %3789
  %3792 = fmul fast float %3769, %3629
  %3793 = fmul fast float %3792, %3789
  %3794 = fmul fast float %3768, %3630
  %3795 = fmul fast float %3794, %3789
  %3796 = fadd fast float %3791, %3773
  %3797 = fmul fast float %3796, %1699
  %3798 = fadd fast float %3793, %3772
  %3799 = fmul fast float %3798, %1699
  %3800 = fadd fast float %3795, %3771
  %3801 = fmul fast float %3800, %1699
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 3
  %3804 = fcmp fast oeq float %3803, 0.000000e+00
  br i1 %3804, label %5003, label %3805

; <label>:3805                                    ; preds = %3686
  %3806 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3807 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3808 = extractvalue %dx.types.CBufRet.f32 %3802, 2
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.CBufRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.CBufRet.f32 %3809, 2
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.CBufRet.f32 %3813, 1
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3811, float %3812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = select i1 %228, float %3814, float %3810
  %3818 = select i1 %228, float %3816, float %3811
  %3819 = select i1 %228, float %3815, float %3812
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 2
  %3822 = fmul fast float %3821, %70
  %3823 = fmul fast float %3821, %71
  %3824 = fmul fast float %3821, %72
  %3825 = fadd fast float %3822, %137
  %3826 = fadd fast float %3823, %138
  %3827 = fadd fast float %3824, %139
  %3828 = fcmp fast olt float %3803, 0.000000e+00
  br i1 %3828, label %4450, label %3829

; <label>:3829                                    ; preds = %3805
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.CBufRet.f32 %3830, 1
  %3833 = extractvalue %dx.types.CBufRet.f32 %3830, 2
  %3834 = extractvalue %dx.types.CBufRet.f32 %3830, 3
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.CBufRet.f32 %3835, 1
  %3838 = extractvalue %dx.types.CBufRet.f32 %3835, 2
  %3839 = extractvalue %dx.types.CBufRet.f32 %3835, 3
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.CBufRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.CBufRet.f32 %3840, 2
  %3844 = extractvalue %dx.types.CBufRet.f32 %3840, 3
  %3845 = fmul fast float %3831, %3825
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3832, float %3845)  ; FMad(a,b,c)
  %3847 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3833, float %3846)  ; FMad(a,b,c)
  %3848 = fadd fast float %3847, %3834
  %3849 = fmul fast float %3836, %3825
  %3850 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3837, float %3849)  ; FMad(a,b,c)
  %3851 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3838, float %3850)  ; FMad(a,b,c)
  %3852 = fadd fast float %3851, %3839
  %3853 = fmul fast float %3841, %3825
  %3854 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3842, float %3853)  ; FMad(a,b,c)
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3843, float %3854)  ; FMad(a,b,c)
  %3856 = fadd fast float %3855, %3844
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.CBufRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.CBufRet.f32 %3857, 3
  %3861 = fmul fast float %3860, %3848
  %3862 = fmul fast float %3860, %3852
  %3863 = fadd fast float %3861, %3858
  %3864 = fadd fast float %3862, %3859
  %3865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.CBufRet.f32 %3865, 1
  %3868 = extractvalue %dx.types.CBufRet.f32 %3865, 3
  %3869 = fmul fast float %3868, %3848
  %3870 = fmul fast float %3868, %3852
  %3871 = fadd fast float %3869, %3866
  %3872 = fadd fast float %3870, %3867
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3875 = fsub fast float %3874, %3856
  %3876 = extractvalue %dx.types.CBufRet.f32 %3873, 2
  %3877 = fmul fast float %3875, %3876
  %3878 = fsub fast float 1.000000e+00, %3877
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = extractvalue %dx.types.CBufRet.f32 %3865, 2
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 2
  %3883 = fadd fast float %3882, %3880
  %3884 = fcmp fast ogt float %3883, 0.000000e+00
  br i1 %3884, label %3885, label %3909

; <label>:3885                                    ; preds = %3829
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.CBufRet.f32 %3886, 1
  %3889 = fsub fast float %3871, %3887
  %3890 = fsub fast float %3872, %3888
  %3891 = fcmp fast olt float %3889, 0.000000e+00
  %3892 = fcmp fast olt float %3890, 0.000000e+00
  %3893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.f32 %3893, 0
  %3895 = extractvalue %dx.types.CBufRet.f32 %3893, 1
  %3896 = extractvalue %dx.types.CBufRet.f32 %3893, 2
  %3897 = extractvalue %dx.types.CBufRet.f32 %3893, 3
  %3898 = select i1 %3891, float %3894, float %3896
  %3899 = select i1 %3892, float %3895, float %3897
  %3900 = fmul fast float %3898, %3889
  %3901 = fmul fast float %3899, %3890
  %3902 = call float @dx.op.unary.f32(i32 6, float %3900)  ; FAbs(value)
  %3903 = call float @dx.op.unary.f32(i32 6, float %3901)  ; FAbs(value)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3820, 0
  %3905 = call float @dx.op.binary.f32(i32 35, float %3902, float %3903)  ; FMax(a,b)
  %3906 = fsub fast float %3904, %3905
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = fmul fast float %3907, %3879
  br label %3909

; <label>:3909                                    ; preds = %3885, %3829
  %3910 = phi float [ %3908, %3885 ], [ 0.000000e+00, %3829 ]
  %3911 = extractvalue %dx.types.CBufRet.f32 %3857, 2
  %3912 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3913 = fadd fast float %3912, %3911
  %3914 = fcmp fast ogt float %3913, 0.000000e+00
  %3915 = extractvalue %dx.types.CBufRet.f32 %3820, 0
  br i1 %3914, label %3916, label %3939

; <label>:3916                                    ; preds = %3909
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3920 = fsub fast float %3863, %3918
  %3921 = fsub fast float %3864, %3919
  %3922 = fcmp fast olt float %3920, 0.000000e+00
  %3923 = fcmp fast olt float %3921, 0.000000e+00
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.CBufRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.CBufRet.f32 %3924, 2
  %3928 = extractvalue %dx.types.CBufRet.f32 %3924, 3
  %3929 = select i1 %3922, float %3925, float %3927
  %3930 = select i1 %3923, float %3926, float %3928
  %3931 = fmul fast float %3929, %3920
  %3932 = fmul fast float %3930, %3921
  %3933 = call float @dx.op.unary.f32(i32 6, float %3931)  ; FAbs(value)
  %3934 = call float @dx.op.unary.f32(i32 6, float %3932)  ; FAbs(value)
  %3935 = call float @dx.op.binary.f32(i32 35, float %3933, float %3934)  ; FMax(a,b)
  %3936 = fsub fast float %3915, %3935
  %3937 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3938 = fmul fast float %3937, %3879
  br label %3939

; <label>:3939                                    ; preds = %3916, %3909
  %3940 = phi float [ %3938, %3916 ], [ 0.000000e+00, %3909 ]
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 0
  %3946 = extractvalue %dx.types.CBufRet.f32 %3944, 1
  %3947 = fsub fast float %3848, %3945
  %3948 = fsub fast float %3852, %3946
  %3949 = fcmp fast olt float %3947, 0.000000e+00
  %3950 = fcmp fast olt float %3948, 0.000000e+00
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.CBufRet.f32 %3951, 1
  %3954 = extractvalue %dx.types.CBufRet.f32 %3951, 2
  %3955 = extractvalue %dx.types.CBufRet.f32 %3951, 3
  %3956 = select i1 %3949, float %3952, float %3954
  %3957 = select i1 %3950, float %3953, float %3955
  %3958 = fmul fast float %3956, %3947
  %3959 = fmul fast float %3957, %3948
  %3960 = call float @dx.op.unary.f32(i32 6, float %3958)  ; FAbs(value)
  %3961 = call float @dx.op.unary.f32(i32 6, float %3959)  ; FAbs(value)
  %3962 = call float @dx.op.binary.f32(i32 35, float %3960, float %3961)  ; FMax(a,b)
  %3963 = fsub fast float %3915, %3962
  %3964 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  %3965 = call float @dx.op.binary.f32(i32 36, float %3964, float %3943)  ; FMin(a,b)
  %3966 = fmul fast float %3965, %3879
  %3967 = fsub fast float %3940, %3966
  %3968 = fsub fast float %3910, %3940
  %3969 = fsub fast float %3968, %3966
  %3970 = call float @dx.op.binary.f32(i32 35, float %3940, float %3910)  ; FMax(a,b)
  %3971 = call float @dx.op.binary.f32(i32 35, float %3966, float %3970)  ; FMax(a,b)
  %3972 = fcmp fast olt float %3971, 1.000000e+00
  br i1 %3972, label %3973, label %4371, !dx.controlflow.hints !107

; <label>:3973                                    ; preds = %3939
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 0
  %3976 = fcmp fast une float %3975, 0.000000e+00
  br i1 %3976, label %3977, label %4371, !dx.controlflow.hints !108

; <label>:3977                                    ; preds = %3973
  %3978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.f32 %3978, 0
  %3980 = extractvalue %dx.types.CBufRet.f32 %3978, 1
  %3981 = extractvalue %dx.types.CBufRet.f32 %3978, 2
  %3982 = extractvalue %dx.types.CBufRet.f32 %3978, 3
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.CBufRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.CBufRet.f32 %3983, 2
  %3987 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 0
  %3990 = extractvalue %dx.types.CBufRet.f32 %3988, 1
  %3991 = extractvalue %dx.types.CBufRet.f32 %3988, 2
  %3992 = extractvalue %dx.types.CBufRet.f32 %3988, 3
  %3993 = fmul fast float %3979, %3825
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3980, float %3993)  ; FMad(a,b,c)
  %3995 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3981, float %3994)  ; FMad(a,b,c)
  %3996 = fadd fast float %3995, %3982
  %3997 = fmul fast float %3984, %3825
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3985, float %3997)  ; FMad(a,b,c)
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3986, float %3998)  ; FMad(a,b,c)
  %4000 = fadd fast float %3999, %3987
  %4001 = fmul fast float %3989, %3825
  %4002 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3990, float %4001)  ; FMad(a,b,c)
  %4003 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %3991, float %4002)  ; FMad(a,b,c)
  %4004 = fadd fast float %4003, %3992
  %4005 = fcmp fast oge float %3996, 1.000000e+00
  %4006 = fcmp fast oge float %4000, 1.000000e+00
  %4007 = or i1 %4005, %4006
  %4008 = fcmp fast olt float %3996, 0.000000e+00
  %4009 = fcmp fast olt float %4000, 0.000000e+00
  %4010 = or i1 %4008, %4009
  %4011 = or i1 %4007, %4010
  br i1 %4011, label %4371, label %4012, !dx.controlflow.hints !109

; <label>:4012                                    ; preds = %3977
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.CBufRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.CBufRet.f32 %4013, 2
  %4017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.i32 %4017, 2
  %4019 = uitofp i32 %4018 to float
  %4020 = extractvalue %dx.types.CBufRet.i32 %4017, 3
  %4021 = uitofp i32 %4020 to float
  %4022 = extractvalue %dx.types.CBufRet.f32 %4013, 3
  %4023 = fmul fast float %4022, 2.000000e+00
  %4024 = fsub fast float %3996, %4014
  %4025 = fsub fast float %4000, %4015
  %4026 = fmul fast float %4023, %4024
  %4027 = fmul fast float %4023, %4025
  %4028 = fdiv fast float 1.000000e+00, %3808
  %4029 = fmul fast float %4027, %4028
  %4030 = call float @dx.op.unary.f32(i32 6, float %4029)  ; FAbs(value)
  %4031 = fmul fast float %4016, %3827
  %4032 = fmul fast float %4031, %4023
  %4033 = call float @dx.op.unary.f32(i32 6, float %4032)  ; FAbs(value)
  %4034 = call float @dx.op.unary.f32(i32 6, float %4026)  ; FAbs(value)
  %4035 = call float @dx.op.binary.f32(i32 35, float %4033, float %4030)  ; FMax(a,b)
  %4036 = call float @dx.op.binary.f32(i32 35, float %4034, float %4035)  ; FMax(a,b)
  %4037 = fmul fast float %4036, 2.000000e+00
  %4038 = call float @dx.op.unary.f32(i32 23, float %4037)  ; Log(value)
  %4039 = call float @dx.op.binary.f32(i32 35, float %4038, float %4019)  ; FMax(a,b)
  %4040 = call float @dx.op.unary.f32(i32 22, float %4039)  ; Frc(value)
  %4041 = fadd fast float %4040, 0xBFEA666660000000
  %4042 = fmul fast float %4041, 8.000000e+00
  %4043 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4044 = call float @dx.op.unary.f32(i32 27, float %4039)  ; Round_ni(value)
  %4045 = fadd fast float %4044, %4043
  %4046 = call float @dx.op.binary.f32(i32 36, float %4045, float %4021)  ; FMin(a,b)
  %4047 = call float @dx.op.unary.f32(i32 27, float %4046)  ; Round_ni(value)
  %4048 = fsub fast float -0.000000e+00, %4047
  %4049 = call float @dx.op.unary.f32(i32 21, float %4048)  ; Exp(value)
  %4050 = fmul fast float %4049, %4023
  %4051 = fmul fast float %4050, %3996
  %4052 = fmul fast float %4050, %4000
  %4053 = fmul fast float %4051, 2.500000e-01
  %4054 = fmul fast float %4052, 2.500000e-01
  %4055 = fadd fast float %4053, 5.000000e-01
  %4056 = fadd fast float %4054, 5.000000e-01
  %4057 = fsub fast float %4021, %4019
  %4058 = fptoui float %4057 to i32
  %4059 = add i32 %4058, 320
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %4059)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4063 = fcmp fast une float %4046, %4021
  %4064 = fsub fast float %3996, %4061
  %4065 = fsub fast float %4000, %4062
  %4066 = call float @dx.op.unary.f32(i32 6, float %4064)  ; FAbs(value)
  %4067 = call float @dx.op.unary.f32(i32 6, float %4065)  ; FAbs(value)
  %4068 = fmul fast float %4066, %4050
  %4069 = fmul fast float %4067, %4050
  %4070 = fcmp fast olt float %4068, 1.000000e+00
  %4071 = fcmp fast olt float %4069, 1.000000e+00
  %4072 = and i1 %4070, %4071
  %4073 = or i1 %4063, %4072
  br i1 %4073, label %4074, label %4371, !dx.controlflow.hints !110

; <label>:4074                                    ; preds = %4012
  %4075 = fmul fast float %4052, 5.000000e-01
  %4076 = fmul fast float %4051, 5.000000e-01
  %4077 = fadd fast float %4075, 5.000000e-01
  %4078 = fadd fast float %4076, 5.000000e-01
  %4079 = sitofp i32 %4018 to float
  %4080 = fsub fast float %4046, %4079
  %4081 = call float @dx.op.unary.f32(i32 27, float %4080)  ; Round_ni(value)
  %4082 = call float @dx.op.unary.f32(i32 22, float %4046)  ; Frc(value)
  %4083 = call float @dx.op.unary.f32(i32 22, float %4078)  ; Frc(value)
  %4084 = call float @dx.op.unary.f32(i32 22, float %4077)  ; Frc(value)
  %4085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4083, float %4084, float %4081, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4086 = extractvalue %dx.types.ResRet.f32 %4085, 0
  %4087 = extractvalue %dx.types.ResRet.f32 %4085, 1
  %4088 = extractvalue %dx.types.ResRet.f32 %4085, 2
  %4089 = extractvalue %dx.types.ResRet.f32 %4085, 3
  %4090 = fcmp fast ogt float %4082, 0.000000e+00
  br i1 %4090, label %4091, label %4112, !dx.controlflow.hints !111

; <label>:4091                                    ; preds = %4074
  %4092 = fadd fast float %4081, 1.000000e+00
  %4093 = call float @dx.op.unary.f32(i32 22, float %4055)  ; Frc(value)
  %4094 = call float @dx.op.unary.f32(i32 22, float %4056)  ; Frc(value)
  %4095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4093, float %4094, float %4092, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.ResRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.ResRet.f32 %4095, 2
  %4099 = extractvalue %dx.types.ResRet.f32 %4095, 3
  %4100 = fsub fast float %4096, %4086
  %4101 = fsub fast float %4097, %4087
  %4102 = fsub fast float %4098, %4088
  %4103 = fsub fast float %4099, %4089
  %4104 = fmul fast float %4100, %4082
  %4105 = fmul fast float %4101, %4082
  %4106 = fmul fast float %4102, %4082
  %4107 = fmul fast float %4103, %4082
  %4108 = fadd fast float %4104, %4086
  %4109 = fadd fast float %4105, %4087
  %4110 = fadd fast float %4106, %4088
  %4111 = fadd fast float %4107, %4089
  br label %4112

; <label>:4112                                    ; preds = %4091, %4074
  %4113 = phi float [ %4108, %4091 ], [ %4086, %4074 ]
  %4114 = phi float [ %4109, %4091 ], [ %4087, %4074 ]
  %4115 = phi float [ %4110, %4091 ], [ %4088, %4074 ]
  %4116 = phi float [ %4111, %4091 ], [ %4089, %4074 ]
  %4117 = fadd fast float %4113, -5.000000e-01
  %4118 = fadd fast float %4115, -5.000000e-01
  %4119 = fmul fast float %4117, 0xBFD5555560000000
  %4120 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4118, float %4119)  ; FMad(a,b,c)
  %4121 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4114, float 0.000000e+00)  ; FMad(a,b,c)
  %4122 = fadd fast float %4121, %4116
  %4123 = fmul fast float %4117, -7.500000e-01
  %4124 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4118, float %4123)  ; FMad(a,b,c)
  %4125 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4114, float 0.000000e+00)  ; FMad(a,b,c)
  %4126 = fadd fast float %4125, %4116
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 0
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.CBufRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4133 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4134 = fsub fast float %4130, %4120
  %4135 = fsub fast float %4131, %4122
  %4136 = fsub fast float %4132, %4124
  %4137 = fsub fast float %4133, %4126
  %4138 = fmul fast float %4134, %4128
  %4139 = fmul fast float %4135, %4128
  %4140 = fmul fast float %4136, %4128
  %4141 = fmul fast float %4137, %4128
  %4142 = fadd fast float %4138, %4120
  %4143 = fadd fast float %4139, %4122
  %4144 = fadd fast float %4140, %4124
  %4145 = fadd fast float %4141, %4126
  %4146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.i32 %4146, 0
  %4148 = and i32 %4147, 536870911
  %4149 = uitofp i32 %4148 to float
  %4150 = fmul fast float %4149, %3996
  %4151 = fmul fast float %4149, %4000
  %4152 = fptoui float %4150 to i32
  %4153 = fptoui float %4151 to i32
  %4154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.i32 %4154, 0
  %4156 = and i32 %4155, 31
  %4157 = lshr i32 %4152, %4156
  %4158 = lshr i32 %4153, %4156
  %4159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.i32 %4159, 0
  %4161 = and i32 %4160, 31
  %4162 = shl i32 1, %4161
  %4163 = call i32 @dx.op.binary.i32(i32 40, i32 %4162, i32 4)  ; UMin(a,b)
  %4164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4165 = extractvalue %dx.types.ResRet.i32 %4164, 0
  %4166 = extractvalue %dx.types.ResRet.i32 %4164, 1
  %4167 = icmp eq i32 %4163, 0
  br i1 %4167, label %4209, label %4168

; <label>:4168                                    ; preds = %4112
  br label %4169

; <label>:4169                                    ; preds = %4197, %4168
  %4170 = phi i32 [ %4200, %4197 ], [ 0, %4168 ]
  %4171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.i32 %4171, 0
  %4173 = lshr i32 %4172, 16
  %4174 = and i32 %4173, 31
  %4175 = shl i32 %4158, %4174
  %4176 = add i32 %4175, %4157
  %4177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.i32 %4177, 0
  %4179 = and i32 %4178, 31
  %4180 = shl i32 %4176, %4179
  %4181 = add i32 %4180, %4170
  %4182 = shl i32 %4181, 2
  %4183 = add i32 %4182, 32
  %4184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.i32 %4184, 0
  %4186 = icmp slt i32 %4185, 0
  %4187 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4170
  %4188 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4170
  %4189 = bitcast float* %4187 to i32*
  %4190 = bitcast float* %4188 to i32*
  br i1 %4186, label %4191, label %4197

; <label>:4191                                    ; preds = %4169
  %4192 = and i32 %4185, 1073741823
  %4193 = add nuw nsw i32 %4192, 20
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = extractvalue %dx.types.ResRet.i32 %4194, 1
  br label %4197

; <label>:4197                                    ; preds = %4191, %4169
  %4198 = phi i32 [ %4195, %4191 ], [ %4165, %4169 ]
  %4199 = phi i32 [ %4196, %4191 ], [ %4166, %4169 ]
  store i32 %4198, i32* %4189, align 4
  store i32 %4199, i32* %4190, align 4
  %4200 = add nuw i32 %4170, 1
  %4201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.i32 %4201, 2
  %4203 = icmp eq i32 %4202, 0
  %4204 = icmp ugt i32 %4185, -1073741825
  %4205 = and i1 %4204, %4203
  %4206 = icmp ult i32 %4200, %4163
  %4207 = and i1 %4205, %4206
  br i1 %4207, label %4169, label %4208

; <label>:4208                                    ; preds = %4197
  br label %4209

; <label>:4209                                    ; preds = %4208, %4112
  %4210 = phi i32 [ 0, %4112 ], [ %4200, %4208 ]
  %4211 = extractvalue %dx.types.CBufRet.f32 %3974, 2
  %4212 = fptoui float %4211 to i32
  %4213 = icmp eq i32 %4212, 0
  br i1 %4213, label %4265, label %4214

; <label>:4214                                    ; preds = %4209
  br label %4215

; <label>:4215                                    ; preds = %4260, %4214
  %4216 = phi i32 [ %4261, %4260 ], [ %4210, %4214 ]
  %4217 = phi i32 [ %4262, %4260 ], [ 0, %4214 ]
  %4218 = lshr i32 %4217, 2
  %4219 = and i32 %4217, 3
  %4220 = add nuw nsw i32 %4218, 83
  %4221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %4220)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.i32 %4221, 0
  %4223 = extractvalue %dx.types.CBufRet.i32 %4221, 1
  %4224 = extractvalue %dx.types.CBufRet.i32 %4221, 2
  %4225 = extractvalue %dx.types.CBufRet.i32 %4221, 3
  %4226 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %4222, i32* %4226, align 4
  %4227 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %4223, i32* %4227, align 4
  %4228 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %4224, i32* %4228, align 4
  %4229 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %4225, i32* %4229, align 4
  %4230 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %4219
  %4231 = load i32, i32* %4230, align 4, !tbaa !112, !noalias !116
  %4232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4233 = extractvalue %dx.types.ResRet.i32 %4232, 0
  %4234 = lshr i32 %4233, 16
  %4235 = and i32 %4234, 31
  %4236 = shl i32 %4158, %4235
  %4237 = add i32 %4236, %4157
  %4238 = shl i32 %4237, 2
  %4239 = add i32 %4238, %4231
  %4240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.i32 %4240, 0
  %4242 = icmp eq i32 %4241, 0
  br i1 %4242, label %4260, label %4243

; <label>:4243                                    ; preds = %4215
  %4244 = icmp slt i32 %4241, 0
  %4245 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4216
  %4246 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4216
  %4247 = bitcast float* %4245 to i32*
  %4248 = bitcast float* %4246 to i32*
  br i1 %4244, label %4249, label %4256

; <label>:4249                                    ; preds = %4243
  %4250 = and i32 %4241, 1073741823
  %4251 = add i32 %4231, 20
  %4252 = add i32 %4251, %4250
  %4253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.i32 %4253, 0
  %4255 = extractvalue %dx.types.ResRet.i32 %4253, 1
  br label %4256

; <label>:4256                                    ; preds = %4249, %4243
  %4257 = phi i32 [ %4254, %4249 ], [ %4165, %4243 ]
  %4258 = phi i32 [ %4255, %4249 ], [ %4166, %4243 ]
  store i32 %4257, i32* %4247, align 4
  store i32 %4258, i32* %4248, align 4
  %4259 = add i32 %4216, 1
  br label %4260

; <label>:4260                                    ; preds = %4256, %4215
  %4261 = phi i32 [ %4216, %4215 ], [ %4259, %4256 ]
  %4262 = add nuw i32 %4217, 1
  %4263 = icmp eq i32 %4262, %4212
  br i1 %4263, label %4264, label %4215

; <label>:4264                                    ; preds = %4260
  br label %4265

; <label>:4265                                    ; preds = %4264, %4209
  %4266 = phi i32 [ %4210, %4209 ], [ %4261, %4264 ]
  %4267 = icmp eq i32 %4266, 1
  %4268 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  %4269 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  br i1 %4267, label %4270, label %4273

; <label>:4270                                    ; preds = %4265
  %4271 = load float, float* %4268, align 4
  %4272 = load float, float* %4269, align 4
  br label %4300

; <label>:4273                                    ; preds = %4265
  %4274 = load float, float* %4268, align 4
  %4275 = load float, float* %4269, align 4
  %4276 = fdiv fast float 1.000000e+00, %4275
  %4277 = fsub fast float %4274, %4276
  %4278 = icmp ugt i32 %4266, 1
  br i1 %4278, label %4279, label %4295

; <label>:4279                                    ; preds = %4273
  br label %4280

; <label>:4280                                    ; preds = %4280, %4279
  %4281 = phi float [ %4290, %4280 ], [ %4277, %4279 ]
  %4282 = phi float [ %4291, %4280 ], [ %4274, %4279 ]
  %4283 = phi i32 [ %4292, %4280 ], [ 1, %4279 ]
  %4284 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %4283
  %4285 = load float, float* %4284, align 4
  %4286 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4283
  %4287 = load float, float* %4286, align 4
  %4288 = fdiv fast float 1.000000e+00, %4287
  %4289 = fsub fast float %4285, %4288
  %4290 = call float @dx.op.binary.f32(i32 36, float %4281, float %4289)  ; FMin(a,b)
  %4291 = call float @dx.op.binary.f32(i32 35, float %4282, float %4285)  ; FMax(a,b)
  %4292 = add nuw i32 %4283, 1
  %4293 = icmp eq i32 %4292, %4266
  br i1 %4293, label %4294, label %4280

; <label>:4294                                    ; preds = %4280
  br label %4295

; <label>:4295                                    ; preds = %4294, %4273
  %4296 = phi float [ %4277, %4273 ], [ %4290, %4294 ]
  %4297 = phi float [ %4274, %4273 ], [ %4291, %4294 ]
  %4298 = fsub fast float %4297, %4296
  %4299 = fdiv fast float 1.000000e+00, %4298
  br label %4300

; <label>:4300                                    ; preds = %4295, %4270
  %4301 = phi float [ %4271, %4270 ], [ %4297, %4295 ]
  %4302 = phi float [ %4272, %4270 ], [ %4299, %4295 ]
  %4303 = fadd fast float %4004, %4301
  %4304 = fmul fast float %4303, %4302
  %4305 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4306 = fmul fast float %4305, 2.000000e+00
  %4307 = fsub fast float 1.000000e+00, %4306
  %4308 = fmul fast float %4142, %4142
  %4309 = fsub fast float %4143, %4308
  %4310 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4309)  ; FMax(a,b)
  %4311 = fdiv fast float 1.000000e+00, %4310
  %4312 = fmul fast float %4143, %4142
  %4313 = fsub fast float %4144, %4312
  %4314 = fsub fast float %4307, %4142
  %4315 = fmul fast float %4307, %4307
  %4316 = fsub fast float %4315, %4143
  %4317 = fmul fast float %4311, %4313
  %4318 = fmul fast float %4317, %4314
  %4319 = fsub fast float %4316, %4318
  %4320 = fmul fast float %4143, %4143
  %4321 = fsub fast float %4145, %4320
  %4322 = fmul fast float %4313, %4313
  %4323 = fmul fast float %4322, %4311
  %4324 = fsub fast float %4321, %4323
  %4325 = fdiv fast float %4319, %4324
  %4326 = fmul fast float %4325, %4313
  %4327 = fsub fast float %4314, %4326
  %4328 = fmul fast float %4327, %4311
  %4329 = fmul fast float %4328, %4142
  %4330 = fsub fast float 1.000000e+00, %4329
  %4331 = fmul fast float %4325, %4143
  %4332 = fsub fast float %4330, %4331
  %4333 = fmul fast float %4328, %4328
  %4334 = fmul fast float %4325, 4.000000e+00
  %4335 = fmul fast float %4334, %4332
  %4336 = fsub fast float %4333, %4335
  %4337 = call float @dx.op.unary.f32(i32 24, float %4336)  ; Sqrt(value)
  %4338 = fcmp fast oge float %4328, 0.000000e+00
  %4339 = fsub fast float -0.000000e+00, %4337
  %4340 = select i1 %4338, float %4339, float %4337
  %4341 = fsub fast float %4340, %4328
  %4342 = fdiv fast float %4341, %4325
  %4343 = fdiv fast float %4332, %4341
  %4344 = fmul fast float %4342, 5.000000e-01
  %4345 = fmul fast float %4343, 2.000000e+00
  %4346 = select i1 %4338, float %4344, float %4345
  %4347 = select i1 %4338, float %4345, float %4344
  %4348 = call float @dx.op.binary.f32(i32 35, float %4346, float %4347)  ; FMax(a,b)
  %4349 = call float @dx.op.binary.f32(i32 36, float %4346, float %4347)  ; FMin(a,b)
  %4350 = fcmp fast ogt float %4307, %4348
  %4351 = fsub fast float %4307, %4349
  %4352 = fsub fast float %4307, %4348
  %4353 = fsub fast float %4348, %4349
  %4354 = select i1 %4350, float %4352, float %4353
  %4355 = fmul float %4351, %4354
  %4356 = select i1 %4350, float %4349, float %4307
  %4357 = fcmp fast ogt float %4307, %4349
  %4358 = fmul fast float %4356, %4348
  %4359 = fadd fast float %4356, %4348
  %4360 = fmul fast float %4359, %4142
  %4361 = fadd fast float %4358, %4143
  %4362 = fsub fast float %4361, %4360
  %4363 = fdiv fast float %4362, %4355
  %4364 = select i1 %4357, float %4363, float 0.000000e+00
  %4365 = fsub fast float 1.000000e+00, %4364
  %4366 = select i1 %4350, float %4365, float %4364
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4127, 3
  %4369 = fmul fast float %4368, %4367
  %4370 = fsub fast float 1.000000e+00, %4369
  br label %4371

; <label>:4371                                    ; preds = %4300, %4012, %3977, %3973, %3939
  %4372 = phi float [ 1.000000e+00, %3939 ], [ %4370, %4300 ], [ 1.000000e+00, %3977 ], [ 1.000000e+00, %4012 ], [ 1.000000e+00, %3973 ]
  %4373 = fcmp fast ogt float %3969, 0.000000e+00
  br i1 %4373, label %4374, label %4380, !dx.controlflow.hints !125

; <label>:4374                                    ; preds = %4371
  %4375 = fadd fast float %3882, %3856
  %4376 = call float @dx.op.binary.f32(i32 35, float %4375, float 0.000000e+00)  ; FMax(a,b)
  %4377 = fadd fast float %4376, 0x3F10000000000000
  %4378 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3871, float %3872, float undef, float undef, i32 0, i32 0, i32 undef, float %4377)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  br label %4380

; <label>:4380                                    ; preds = %4374, %4371
  %4381 = phi float [ %4379, %4374 ], [ 1.000000e+00, %4371 ]
  %4382 = fcmp fast ogt float %3967, 0.000000e+00
  br i1 %4382, label %4383, label %4389, !dx.controlflow.hints !126

; <label>:4383                                    ; preds = %4380
  %4384 = fadd fast float %3912, %3856
  %4385 = call float @dx.op.binary.f32(i32 35, float %4384, float 0.000000e+00)  ; FMax(a,b)
  %4386 = fadd fast float %4385, 0x3F10000000000000
  %4387 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3863, float %3864, float undef, float undef, i32 0, i32 0, i32 undef, float %4386)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  br label %4389

; <label>:4389                                    ; preds = %4383, %4380
  %4390 = phi float [ %4388, %4383 ], [ 1.000000e+00, %4380 ]
  %4391 = fcmp fast ogt float %3966, 0.000000e+00
  br i1 %4391, label %4392, label %4399, !dx.controlflow.hints !127

; <label>:4392                                    ; preds = %4389
  %4393 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %4394 = fadd fast float %4393, %3856
  %4395 = call float @dx.op.binary.f32(i32 35, float %4394, float 0.000000e+00)  ; FMax(a,b)
  %4396 = fadd fast float %4395, 0x3F10000000000000
  %4397 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3848, float %3852, float undef, float undef, i32 0, i32 0, i32 undef, float %4396)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  br label %4399

; <label>:4399                                    ; preds = %4392, %4389
  %4400 = phi float [ %4398, %4392 ], [ 1.000000e+00, %4389 ]
  %4401 = fsub fast float %4381, %4372
  %4402 = fmul fast float %4401, %3910
  %4403 = fadd fast float %4402, %4372
  %4404 = fsub fast float %4390, %4403
  %4405 = fmul fast float %4404, %3940
  %4406 = fadd fast float %4405, %4403
  %4407 = fsub fast float %4400, %4406
  %4408 = fmul fast float %4407, %3966
  %4409 = fadd fast float %4408, %4406
  %4410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.f32 %4410, 2
  %4412 = fcmp fast ogt float %4411, 0.000000e+00
  br i1 %4412, label %4413, label %4450, !dx.controlflow.hints !128

; <label>:4413                                    ; preds = %4399
  %4414 = fcmp fast ugt float %4411, 0.000000e+00
  br i1 %4414, label %4415, label %4447

; <label>:4415                                    ; preds = %4413
  %4416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.CBufRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.CBufRet.f32 %4416, 2
  %4420 = extractvalue %dx.types.CBufRet.f32 %4416, 3
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 0
  %4423 = extractvalue %dx.types.CBufRet.f32 %4421, 1
  %4424 = extractvalue %dx.types.CBufRet.f32 %4421, 2
  %4425 = extractvalue %dx.types.CBufRet.f32 %4421, 3
  %4426 = extractvalue %dx.types.CBufRet.f32 %4410, 0
  %4427 = extractvalue %dx.types.CBufRet.f32 %4410, 1
  %4428 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %4429 = fadd fast float %2360, %3825
  %4430 = fadd fast float %2361, %3826
  %4431 = fadd fast float %4428, %3827
  %4432 = fmul fast float %4429, %4417
  %4433 = call float @dx.op.tertiary.f32(i32 46, float %4418, float %4430, float %4432)  ; FMad(a,b,c)
  %4434 = call float @dx.op.tertiary.f32(i32 46, float %4419, float %4431, float %4433)  ; FMad(a,b,c)
  %4435 = fadd fast float %4434, %4420
  %4436 = fmul fast float %4429, %4422
  %4437 = call float @dx.op.tertiary.f32(i32 46, float %4423, float %4430, float %4436)  ; FMad(a,b,c)
  %4438 = call float @dx.op.tertiary.f32(i32 46, float %4424, float %4431, float %4437)  ; FMad(a,b,c)
  %4439 = fadd fast float %4438, %4425
  %4440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4435, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = fmul fast float %4441, %4427
  %4443 = fadd fast float %4442, %4426
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4445 = fmul fast float %4444, %4411
  %4446 = fsub fast float 1.000000e+00, %4445
  br label %4447

; <label>:4447                                    ; preds = %4415, %4413
  %4448 = phi float [ %4446, %4415 ], [ 1.000000e+00, %4413 ]
  %4449 = fmul fast float %4448, %4409
  br label %4450

; <label>:4450                                    ; preds = %4447, %4399, %3805
  %4451 = phi float [ 1.000000e+00, %3805 ], [ %4449, %4447 ], [ %4409, %4399 ]
  %4452 = call float @dx.op.binary.f32(i32 36, float %4451, float %4451)  ; FMin(a,b)
  %4453 = call float @dx.op.binary.f32(i32 36, float %4451, float %4452)  ; FMin(a,b)
  %4454 = fcmp fast ogt float %4453, 0.000000e+00
  br i1 %4454, label %4455, label %4612, !dx.controlflow.hints !129

; <label>:4455                                    ; preds = %4450
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 0
  %4458 = extractvalue %dx.types.CBufRet.f32 %4456, 1
  %4459 = extractvalue %dx.types.CBufRet.f32 %4456, 2
  %4460 = extractvalue %dx.types.CBufRet.f32 %4456, 3
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4464 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4465 = extractvalue %dx.types.CBufRet.f32 %4461, 3
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4469 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4470 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4471 = fmul fast float %4457, %3825
  %4472 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %4458, float %4471)  ; FMad(a,b,c)
  %4473 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %4459, float %4472)  ; FMad(a,b,c)
  %4474 = fadd fast float %4473, %4460
  %4475 = fmul fast float %4462, %3825
  %4476 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %4463, float %4475)  ; FMad(a,b,c)
  %4477 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %4464, float %4476)  ; FMad(a,b,c)
  %4478 = fadd fast float %4477, %4465
  %4479 = fmul fast float %4467, %3825
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %4468, float %4479)  ; FMad(a,b,c)
  %4481 = call float @dx.op.tertiary.f32(i32 46, float %3827, float %4469, float %4480)  ; FMad(a,b,c)
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 0
  %4484 = extractvalue %dx.types.CBufRet.f32 %4482, 1
  %4485 = extractvalue %dx.types.CBufRet.f32 %4482, 3
  %4486 = fmul fast float %4485, %4474
  %4487 = fmul fast float %4485, %4478
  %4488 = fadd fast float %4486, %4483
  %4489 = fadd fast float %4487, %4484
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 0
  %4492 = extractvalue %dx.types.CBufRet.f32 %4490, 1
  %4493 = fsub fast float %4488, %4491
  %4494 = fsub fast float %4489, %4492
  %4495 = fcmp fast olt float %4493, 0.000000e+00
  %4496 = fcmp fast olt float %4494, 0.000000e+00
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.CBufRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4501 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4502 = select i1 %4495, float %4498, float %4500
  %4503 = select i1 %4496, float %4499, float %4501
  %4504 = fmul fast float %4502, %4493
  %4505 = fmul fast float %4503, %4494
  %4506 = call float @dx.op.unary.f32(i32 6, float %4504)  ; FAbs(value)
  %4507 = call float @dx.op.unary.f32(i32 6, float %4505)  ; FAbs(value)
  %4508 = extractvalue %dx.types.CBufRet.f32 %3820, 0
  %4509 = call float @dx.op.binary.f32(i32 35, float %4506, float %4507)  ; FMax(a,b)
  %4510 = fsub fast float %4508, %4509
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fcmp fast ogt float %4511, 0.000000e+00
  br i1 %4512, label %4513, label %4554, !dx.controlflow.hints !130

; <label>:4513                                    ; preds = %4455
  %4514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4488, float %4489, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4515 = extractvalue %dx.types.ResRet.f32 %4514, 1
  %4516 = fcmp fast ogt float %4515, 0.000000e+00
  br i1 %4516, label %4517, label %4549

; <label>:4517                                    ; preds = %4513
  %4518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4488, float %4489, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4519 = extractvalue %dx.types.ResRet.f32 %4518, 0
  %4520 = extractvalue %dx.types.ResRet.f32 %4518, 1
  %4521 = extractvalue %dx.types.ResRet.f32 %4518, 2
  %4522 = extractvalue %dx.types.ResRet.f32 %4518, 3
  %4523 = fsub fast float 1.000000e+00, %4470
  %4524 = fsub fast float %4523, %4481
  %4525 = fmul fast float %4524, 0x400921FB60000000
  %4526 = fadd fast float %4525, 0x3FF921FB60000000
  %4527 = call float @dx.op.unary.f32(i32 13, float %4526)  ; Sin(value)
  %4528 = fadd fast float %4527, -1.000000e+00
  %4529 = fmul fast float %4528, 0x3FD45F3060000000
  %4530 = fmul fast float %4524, 0x401921FB60000000
  %4531 = fadd fast float %4530, 0x400921FB60000000
  %4532 = call float @dx.op.unary.f32(i32 13, float %4531)  ; Sin(value)
  %4533 = fadd fast float %4532, 0x3E7777A5C0000000
  %4534 = fmul fast float %4533, 0x3FC45F3060000000
  %4535 = fmul fast float %4524, 0x4022D97C80000000
  %4536 = fadd fast float %4535, 0x4012D97C80000000
  %4537 = call float @dx.op.unary.f32(i32 13, float %4536)  ; Sin(value)
  %4538 = fadd fast float %4537, 1.000000e+00
  %4539 = fmul fast float %4538, 0x3FBB2995E0000000
  %4540 = fmul fast float %4524, 0x402921FB60000000
  %4541 = fadd fast float %4540, 0x401921FB60000000
  %4542 = call float @dx.op.unary.f32(i32 13, float %4541)  ; Sin(value)
  %4543 = fadd fast float %4542, 0xBE8777A5C0000000
  %4544 = fmul fast float %4543, 0x3FB45F3060000000
  %4545 = call float @dx.op.dot4.f32(i32 56, float %4519, float %4520, float %4521, float %4522, float %4529, float %4534, float %4539, float %4544)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4546 = fmul fast float %4545, 0xBFF7154760000000
  %4547 = call float @dx.op.unary.f32(i32 21, float %4546)  ; Exp(value)
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  br label %4549

; <label>:4549                                    ; preds = %4517, %4513
  %4550 = phi float [ %4548, %4517 ], [ 1.000000e+00, %4513 ]
  %4551 = fadd fast float %4550, -1.000000e+00
  %4552 = fmul fast float %4551, %4511
  %4553 = fadd fast float %4552, 1.000000e+00
  br label %4554

; <label>:4554                                    ; preds = %4549, %4455
  %4555 = phi float [ %4553, %4549 ], [ 1.000000e+00, %4455 ]
  %4556 = fmul fast float %4555, %4451
  %4557 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %4558 = fadd fast float %2360, %137
  %4559 = fadd fast float %2361, %138
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 1
  %4562 = fsub fast float -0.000000e+00, %4558
  %4563 = fsub fast float -0.000000e+00, %4559
  %4564 = fsub fast float %2342, %4557
  %4565 = fadd fast float %4564, %4561
  %4566 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4562, float %4563, float %4565)  ; Dot3(ax,ay,az,bx,by,bz)
  %4567 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3806, float %3807, float %3808)  ; Dot3(ax,ay,az,bx,by,bz)
  %4568 = fdiv fast float 1.000000e+00, %4567
  %4569 = fmul fast float %4568, %4566
  %4570 = fmul fast float %3806, %4569
  %4571 = fmul fast float %3807, %4569
  %4572 = fadd fast float %4570, %4558
  %4573 = fadd fast float %4571, %4559
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.CBufRet.f32 %4574, 1
  %4577 = fsub fast float %4572, %4575
  %4578 = fsub fast float %4573, %4576
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 2
  %4581 = extractvalue %dx.types.CBufRet.f32 %4579, 3
  %4582 = fmul fast float %4577, %4580
  %4583 = fmul fast float %4578, %4581
  %4584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.i32 %4584, 3
  %4586 = icmp eq i32 %4585, 0
  br i1 %4586, label %4592, label %4587

; <label>:4587                                    ; preds = %4554
  %4588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4582, float %4583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  br label %4597

; <label>:4592                                    ; preds = %4554
  %4593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4582, float %4583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  br label %4597

; <label>:4597                                    ; preds = %4592, %4587
  %4598 = phi float [ %4589, %4587 ], [ %4594, %4592 ]
  %4599 = phi float [ %4590, %4587 ], [ %4595, %4592 ]
  %4600 = phi float [ %4591, %4587 ], [ %4596, %4592 ]
  %4601 = extractvalue %dx.types.CBufRet.f32 %4560, 2
  %4602 = fmul fast float %4601, %4598
  %4603 = extractvalue %dx.types.CBufRet.f32 %4560, 0
  %4604 = fsub fast float %4569, %4603
  %4605 = fsub fast float %4604, %4602
  %4606 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4605)  ; FMax(a,b)
  %4607 = fmul fast float %4606, %4599
  %4608 = call float @dx.op.binary.f32(i32 36, float %4600, float %4607)  ; FMin(a,b)
  %4609 = fmul fast float %4608, 0xBFF7154760000000
  %4610 = call float @dx.op.unary.f32(i32 21, float %4609)  ; Exp(value)
  %4611 = fmul fast float %4556, %4610
  br label %4612

; <label>:4612                                    ; preds = %4597, %4450
  %4613 = phi float [ %4611, %4597 ], [ %4451, %4450 ]
  %4614 = call float @dx.op.binary.f32(i32 36, float %4613, float %4613)  ; FMin(a,b)
  %4615 = call float @dx.op.binary.f32(i32 36, float %4613, float %4614)  ; FMin(a,b)
  %4616 = fcmp fast ogt float %4615, 0.000000e+00
  br i1 %4616, label %4617, label %5003, !dx.controlflow.hints !131

; <label>:4617                                    ; preds = %4612
  %4618 = fmul fast float %4613, %3817
  %4619 = fmul fast float %4613, %3818
  %4620 = fmul fast float %4613, %3819
  %4621 = fsub fast float %139, %2130
  %4622 = fcmp fast ogt float %4621, 0.000000e+00
  %4623 = fmul fast float %3806, 5.120000e+02
  %4624 = fmul fast float %3807, 5.120000e+02
  %4625 = fmul fast float %3808, 5.120000e+02
  %4626 = fadd fast float %4625, %139
  %4627 = fsub fast float %2130, %4626
  %4628 = fmul fast float %4627, 2.000000e+00
  %4629 = fadd fast float %4628, %4626
  %4630 = select i1 %4622, float %4629, float %4626
  %4631 = fsub fast float %4630, %139
  %4632 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4631, float %4623, float %4624, float %4631)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = call float @dx.op.unary.f32(i32 25, float %4632)  ; Rsqrt(value)
  %4634 = fmul fast float %4633, %4623
  %4635 = fmul fast float %4633, %4624
  %4636 = fmul fast float %4633, %4631
  %4637 = fsub fast float %2130, %139
  %4638 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4637)  ; Dot3(ax,ay,az,bx,by,bz)
  %4639 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4634, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4640 = fdiv fast float 1.000000e+00, %4639
  %4641 = fmul fast float %4640, %4638
  %4642 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4621, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = fcmp fast ogt float %4642, 0.000000e+00
  %4644 = fcmp fast olt float %4642, 0.000000e+00
  %4645 = zext i1 %4643 to i32
  %4646 = zext i1 %4644 to i32
  %4647 = sub nsw i32 %4645, %4646
  %4648 = sitofp i32 %4647 to float
  %4649 = fsub fast float %4630, %2130
  %4650 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4649, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4651 = fcmp fast ogt float %4650, 0.000000e+00
  %4652 = fcmp fast olt float %4650, 0.000000e+00
  %4653 = zext i1 %4651 to i32
  %4654 = zext i1 %4652 to i32
  %4655 = sub nsw i32 %4653, %4654
  %4656 = sitofp i32 %4655 to float
  %4657 = fcmp fast une float %4648, %4656
  br i1 %4657, label %4658, label %4668

; <label>:4658                                    ; preds = %4617
  %4659 = fmul fast float %4641, %4636
  %4660 = fmul fast float %4641, %4635
  %4661 = fmul fast float %4641, %4634
  %4662 = fmul fast float %4661, %4661
  %4663 = fmul fast float %4660, %4660
  %4664 = fadd fast float %4662, %4663
  %4665 = fmul fast float %4659, %4659
  %4666 = fadd fast float %4664, %4665
  %4667 = call float @dx.op.unary.f32(i32 24, float %4666)  ; Sqrt(value)
  br label %4678

; <label>:4668                                    ; preds = %4617
  %4669 = icmp slt i32 %4647, 0
  br i1 %4669, label %4670, label %4678

; <label>:4670                                    ; preds = %4668
  %4671 = fsub fast float %139, %4630
  %4672 = fmul fast float %4623, %4623
  %4673 = fmul fast float %4624, %4624
  %4674 = fadd fast float %4672, %4673
  %4675 = fmul fast float %4671, %4671
  %4676 = fadd fast float %4674, %4675
  %4677 = call float @dx.op.unary.f32(i32 24, float %4676)  ; Sqrt(value)
  br label %4678

; <label>:4678                                    ; preds = %4670, %4668, %4658
  %4679 = phi float [ %4667, %4658 ], [ %4677, %4670 ], [ 0.000000e+00, %4668 ]
  %4680 = fsub fast float -0.000000e+00, %4679
  %4681 = select i1 %4622, float -0.000000e+00, float %4680
  %4682 = fmul fast float %2131, 0x3FF7154760000000
  %4683 = fmul fast float %4682, %4681
  %4684 = fmul fast float %2132, 0x3FF7154760000000
  %4685 = fmul fast float %4684, %4681
  %4686 = fmul fast float %2133, 0x3FF7154760000000
  %4687 = fmul fast float %4686, %4681
  %4688 = call float @dx.op.unary.f32(i32 21, float %4683)  ; Exp(value)
  %4689 = call float @dx.op.unary.f32(i32 21, float %4685)  ; Exp(value)
  %4690 = call float @dx.op.unary.f32(i32 21, float %4687)  ; Exp(value)
  %4691 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4692 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4693 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4694 = fmul fast float %4618, %4691
  %4695 = fmul fast float %4619, %4692
  %4696 = fmul fast float %4620, %4693
  %4697 = fsub fast float %3806, %2330
  %4698 = fsub fast float %3807, %2329
  %4699 = fsub fast float %3808, %2328
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4699, float %4697, float %4698, float %4699)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = call float @dx.op.unary.f32(i32 25, float %4700)  ; Rsqrt(value)
  %4702 = fmul fast float %4701, %4697
  %4703 = fmul fast float %4701, %4698
  %4704 = fmul fast float %4701, %4699
  %4705 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3807, float %3808, float %2334, float %2335, float %2336)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = call float @dx.op.dot3.f32(i32 55, float %2327, float %2326, float %2325, float %4702, float %4703, float %4704)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4708 = fmul fast float %4707, %4707
  %4709 = fmul fast float %4708, %2358
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4711 = fmul fast float %4710, %4707
  %4712 = call float @dx.op.dot3.f32(i32 55, float %2334, float %2335, float %2336, float %4702, float %4703, float %4704)  ; Dot3(ax,ay,az,bx,by,bz)
  %4713 = fmul fast float %4712, %4712
  %4714 = call float @dx.op.unary.f32(i32 6, float %4705)  ; FAbs(value)
  %4715 = call float @dx.op.binary.f32(i32 35, float %3774, float 0x3F847AE140000000)  ; FMax(a,b)
  %4716 = fmul fast float %4715, %4715
  %4717 = fmul fast float %4716, %4716
  %4718 = fsub fast float 1.000000e+00, %4717
  %4719 = fmul fast float %2345, %2345
  %4720 = fmul fast float %4719, %4718
  %4721 = fadd fast float %4720, %4717
  %4722 = bitcast float %4721 to i32
  %4723 = ashr i32 %4722, 1
  %4724 = add nsw i32 %4723, 532487669
  %4725 = bitcast i32 %4724 to float
  %4726 = fadd fast float %4725, %2345
  %4727 = fmul fast float %4717, %4713
  %4728 = fsub fast float 1.000000e+00, %4713
  %4729 = fadd fast float %4728, %4727
  %4730 = fmul fast float %4714, %4714
  %4731 = fmul fast float %4730, %4718
  %4732 = fadd fast float %4731, %4717
  %4733 = bitcast float %4732 to i32
  %4734 = ashr i32 %4733, 1
  %4735 = add nsw i32 %4734, 532487669
  %4736 = bitcast i32 %4735 to float
  %4737 = fadd fast float %4736, %4714
  %4738 = fmul fast float %4729, %4729
  %4739 = fmul fast float %4738, %4726
  %4740 = fmul fast float %4739, %4737
  %4741 = fdiv fast float 0x3FF0A00000000000, %4740
  %4742 = fmul fast float %4741, %4717
  %4743 = fmul fast float %3636, 0x3FF9999980000000
  %4744 = fsub fast float 5.000000e+00, %4743
  %4745 = call float @dx.op.unary.f32(i32 6, float %4706)  ; FAbs(value)
  %4746 = fsub fast float 1.000000e+00, %4745
  %4747 = fmul fast float %3636, 0x41D9660740000000
  %4748 = fadd fast float %4747, 0xC1EFBF8940000000
  %4749 = bitcast float %4746 to i32
  %4750 = sitofp i32 %4749 to float
  %4751 = fmul fast float %4750, %4744
  %4752 = fadd fast float %4748, %4751
  %4753 = fptosi float %4752 to i32
  %4754 = bitcast i32 %4753 to float
  %4755 = fsub fast float 1.000000e+00, %2331
  %4756 = fsub fast float 1.000000e+00, %2332
  %4757 = fsub fast float 1.000000e+00, %2343
  %4758 = fmul fast float %4754, %4755
  %4759 = fmul fast float %4754, %4756
  %4760 = fmul fast float %4754, %4757
  %4761 = fadd fast float %4758, %2331
  %4762 = fadd fast float %4759, %2332
  %4763 = fadd fast float %4760, %2343
  br i1 %3659, label %4764, label %4787

; <label>:4764                                    ; preds = %4678
  %4765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1676, float %4745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4766 = extractvalue %dx.types.ResRet.f32 %4765, 0
  %4767 = extractvalue %dx.types.ResRet.f32 %4765, 1
  %4768 = extractvalue %dx.types.ResRet.f32 %4765, 2
  %4769 = fadd fast float %4766, -5.000000e-01
  %4770 = fadd fast float %4767, -5.000000e-01
  %4771 = fadd fast float %4768, -5.000000e-01
  %4772 = fmul fast float %2331, 4.000000e+00
  %4773 = fmul fast float %4772, %4755
  %4774 = fmul fast float %4773, %4769
  %4775 = fmul fast float %2332, 4.000000e+00
  %4776 = fmul fast float %4775, %4756
  %4777 = fmul fast float %4776, %4770
  %4778 = fmul fast float %2343, 4.000000e+00
  %4779 = fmul fast float %4778, %4757
  %4780 = fmul fast float %4779, %4771
  %4781 = fadd fast float %4774, %4761
  %4782 = fadd fast float %4777, %4762
  %4783 = fadd fast float %4780, %4763
  %4784 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4785 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4786 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  br label %4787

; <label>:4787                                    ; preds = %4764, %4678
  %4788 = phi float [ %4784, %4764 ], [ %4761, %4678 ]
  %4789 = phi float [ %4785, %4764 ], [ %4762, %4678 ]
  %4790 = phi float [ %4786, %4764 ], [ %4763, %4678 ]
  %4791 = fmul fast float %4705, 9.843750e-01
  %4792 = fadd fast float %4791, 7.812500e-03
  %4793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4792, float %3640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 0
  %4795 = extractvalue %dx.types.ResRet.f32 %4793, 1
  %4796 = extractvalue %dx.types.ResRet.f32 %4793, 2
  %4797 = extractvalue %dx.types.ResRet.f32 %4793, 3
  %4798 = fsub fast float %4796, %4794
  %4799 = fsub fast float %4797, %4795
  %4800 = fmul fast float %4798, %3646
  %4801 = fmul fast float %4799, %3646
  %4802 = fadd fast float %4800, %4794
  %4803 = fadd fast float %4801, %4795
  %4804 = fmul fast float %4802, %2331
  %4805 = fmul fast float %4802, %2332
  %4806 = fmul fast float %4802, %2343
  %4807 = fadd fast float %4804, %4803
  %4808 = fadd fast float %4805, %4803
  %4809 = fadd fast float %4806, %4803
  br i1 %3659, label %4810, label %4833

; <label>:4810                                    ; preds = %4787
  %4811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1676, float %4705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4812 = extractvalue %dx.types.ResRet.f32 %4811, 0
  %4813 = extractvalue %dx.types.ResRet.f32 %4811, 1
  %4814 = extractvalue %dx.types.ResRet.f32 %4811, 2
  %4815 = fadd fast float %4812, -5.000000e-01
  %4816 = fadd fast float %4813, -5.000000e-01
  %4817 = fadd fast float %4814, -5.000000e-01
  %4818 = fmul fast float %2331, 4.000000e+00
  %4819 = fmul fast float %4818, %4755
  %4820 = fmul fast float %4819, %4815
  %4821 = fmul fast float %2332, 4.000000e+00
  %4822 = fmul fast float %4821, %4756
  %4823 = fmul fast float %4822, %4816
  %4824 = fmul fast float %2343, 4.000000e+00
  %4825 = fmul fast float %4824, %4757
  %4826 = fmul fast float %4825, %4817
  %4827 = fadd fast float %4820, %4807
  %4828 = fadd fast float %4823, %4808
  %4829 = fadd fast float %4826, %4809
  %4830 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4831 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4832 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  br label %4833

; <label>:4833                                    ; preds = %4810, %4787
  %4834 = phi float [ %4830, %4810 ], [ %4807, %4787 ]
  %4835 = phi float [ %4831, %4810 ], [ %4808, %4787 ]
  %4836 = phi float [ %4832, %4810 ], [ %4809, %4787 ]
  %4837 = call float @dx.op.binary.f32(i32 35, float %4835, float %4836)  ; FMax(a,b)
  %4838 = call float @dx.op.binary.f32(i32 35, float %4834, float %4837)  ; FMax(a,b)
  %4839 = fsub fast float 1.000000e+00, %4838
  %4840 = call float @dx.op.binary.f32(i32 35, float %4714, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4841 = fdiv fast float %1076, %4840
  %4842 = fmul fast float %3714, %4841
  %4843 = fmul fast float %3716, %4841
  %4844 = fmul fast float %3718, %4841
  %4845 = call float @dx.op.unary.f32(i32 21, float %4842)  ; Exp(value)
  %4846 = call float @dx.op.unary.f32(i32 21, float %4843)  ; Exp(value)
  %4847 = call float @dx.op.unary.f32(i32 21, float %4844)  ; Exp(value)
  %4848 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4849 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4850 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4851 = select i1 %3711, float %4848, float 0.000000e+00
  %4852 = select i1 %3712, float %4849, float 0.000000e+00
  %4853 = select i1 %3713, float %4850, float 0.000000e+00
  %4854 = fsub fast float -0.000000e+00, %2334
  %4855 = fsub fast float -0.000000e+00, %2335
  %4856 = fsub fast float -0.000000e+00, %2336
  %4857 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3807, float %3808, float %4854, float %4855, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4859 = fmul fast float %4858, 9.843750e-01
  %4860 = fadd fast float %4859, 7.812500e-03
  %4861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4860, float %3640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4862 = extractvalue %dx.types.ResRet.f32 %4861, 0
  %4863 = extractvalue %dx.types.ResRet.f32 %4861, 1
  %4864 = extractvalue %dx.types.ResRet.f32 %4861, 2
  %4865 = extractvalue %dx.types.ResRet.f32 %4861, 3
  %4866 = fsub fast float %4864, %4862
  %4867 = fsub fast float %4865, %4863
  %4868 = fmul fast float %4866, %3646
  %4869 = fmul fast float %4867, %3646
  %4870 = fadd fast float %4868, %4862
  %4871 = fadd fast float %4869, %4863
  %4872 = fmul fast float %4870, %2331
  %4873 = fmul fast float %4870, %2332
  %4874 = fmul fast float %4870, %2343
  %4875 = fadd fast float %4872, %4871
  %4876 = fadd fast float %4873, %4871
  %4877 = fadd fast float %4874, %4871
  br i1 %3659, label %4878, label %4901

; <label>:4878                                    ; preds = %4833
  %4879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1676, float %4858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4880 = extractvalue %dx.types.ResRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.ResRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.ResRet.f32 %4879, 2
  %4883 = fadd fast float %4880, -5.000000e-01
  %4884 = fadd fast float %4881, -5.000000e-01
  %4885 = fadd fast float %4882, -5.000000e-01
  %4886 = fmul fast float %2331, 4.000000e+00
  %4887 = fmul fast float %4886, %4755
  %4888 = fmul fast float %4887, %4883
  %4889 = fmul fast float %2332, 4.000000e+00
  %4890 = fmul fast float %4889, %4756
  %4891 = fmul fast float %4890, %4884
  %4892 = fmul fast float %2343, 4.000000e+00
  %4893 = fmul fast float %4892, %4757
  %4894 = fmul fast float %4893, %4885
  %4895 = fadd fast float %4888, %4875
  %4896 = fadd fast float %4891, %4876
  %4897 = fadd fast float %4894, %4877
  %4898 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4899 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4900 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  br label %4901

; <label>:4901                                    ; preds = %4878, %4833
  %4902 = phi float [ %4898, %4878 ], [ %4875, %4833 ]
  %4903 = phi float [ %4899, %4878 ], [ %4876, %4833 ]
  %4904 = phi float [ %4900, %4878 ], [ %4877, %4833 ]
  %4905 = call float @dx.op.binary.f32(i32 35, float %4903, float %4904)  ; FMax(a,b)
  %4906 = call float @dx.op.binary.f32(i32 35, float %4902, float %4905)  ; FMax(a,b)
  %4907 = fsub fast float 1.000000e+00, %4906
  %4908 = fmul fast float %3774, %3779
  %4909 = fadd fast float %3781, %4908
  %4910 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4911 = fsub fast float %3806, %2351
  %4912 = fsub fast float %3807, %2352
  %4913 = fsub fast float %3808, %2353
  %4914 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float %4911, float %4912, float %4913)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = call float @dx.op.unary.f32(i32 25, float %4914)  ; Rsqrt(value)
  %4916 = fmul fast float %4915, %4911
  %4917 = fmul fast float %4915, %4912
  %4918 = fmul fast float %4915, %4913
  %4919 = call float @dx.op.dot3.f32(i32 55, float %4854, float %4855, float %4856, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = fmul fast float %4919, %4919
  %4921 = call float @dx.op.unary.f32(i32 6, float %4858)  ; FAbs(value)
  %4922 = call float @dx.op.binary.f32(i32 35, float %4910, float 0x3F847AE140000000)  ; FMax(a,b)
  %4923 = fmul fast float %4922, %4922
  %4924 = fmul fast float %4923, %4923
  %4925 = fsub fast float 1.000000e+00, %4924
  %4926 = fmul fast float %4719, %4925
  %4927 = fadd fast float %4926, %4924
  %4928 = bitcast float %4927 to i32
  %4929 = ashr i32 %4928, 1
  %4930 = add nsw i32 %4929, 532487669
  %4931 = bitcast i32 %4930 to float
  %4932 = fadd fast float %4931, %2345
  %4933 = fmul fast float %4924, %4920
  %4934 = fsub fast float 1.000000e+00, %4920
  %4935 = fadd fast float %4934, %4933
  %4936 = fmul fast float %4921, %4921
  %4937 = fmul fast float %4936, %4925
  %4938 = fadd fast float %4937, %4924
  %4939 = bitcast float %4938 to i32
  %4940 = ashr i32 %4939, 1
  %4941 = add nsw i32 %4940, 532487669
  %4942 = bitcast i32 %4941 to float
  %4943 = fadd fast float %4942, %4921
  %4944 = fmul fast float %4935, %4935
  %4945 = fmul fast float %4944, %4932
  %4946 = fmul fast float %4945, %4943
  %4947 = fdiv fast float 0x3FF0A00000000000, %4946
  %4948 = fmul fast float %4947, %4924
  %4949 = fmul fast float %4858, %4851
  %4950 = fmul fast float %4858, %4852
  %4951 = fmul fast float %4858, %4853
  %4952 = fmul fast float %4949, %4907
  %4953 = fmul fast float %4952, %4948
  %4954 = fmul fast float %4950, %4907
  %4955 = fmul fast float %4954, %4948
  %4956 = fmul fast float %4951, %4907
  %4957 = fmul fast float %4956, %4948
  %4958 = fmul fast float %4788, %4742
  %4959 = fmul fast float %4789, %4742
  %4960 = fmul fast float %4790, %4742
  %4961 = fsub fast float 1.000000e+00, %4706
  %4962 = bitcast float %4961 to i32
  %4963 = sitofp i32 %4962 to float
  %4964 = fmul fast float %4963, 5.000000e+00
  %4965 = fadd fast float %4964, 0xC1EFBF8940000000
  %4966 = fptosi float %4965 to i32
  %4967 = bitcast i32 %4966 to float
  %4968 = fmul fast float %4967, %1675
  %4969 = fmul fast float %4839, %4968
  %4970 = fmul fast float %4969, %3706
  %4971 = fmul fast float %4969, %3707
  %4972 = fmul fast float %4969, %3708
  %4973 = fadd fast float %4970, %4958
  %4974 = fadd fast float %4971, %4959
  %4975 = fadd fast float %4972, %4960
  %4976 = fmul fast float %4973, %4711
  %4977 = fmul fast float %4974, %4711
  %4978 = fmul fast float %4975, %4711
  %4979 = fmul fast float %4711, %4694
  %4980 = fmul fast float %4979, %4839
  %4981 = fmul fast float %4711, %4695
  %4982 = fmul fast float %4981, %4839
  %4983 = fmul fast float %4711, %4696
  %4984 = fmul fast float %4983, %4839
  %4985 = fadd fast float %4976, %4953
  %4986 = fadd fast float %4977, %4955
  %4987 = fadd fast float %4978, %4957
  %4988 = fmul fast float %4985, %4694
  %4989 = fmul fast float %4986, %4695
  %4990 = fmul fast float %4987, %4696
  %4991 = fadd fast float %4980, %3796
  %4992 = fmul fast float %4991, %1699
  %4993 = fadd fast float %4982, %3798
  %4994 = fmul fast float %4993, %1699
  %4995 = fadd fast float %4984, %3800
  %4996 = fmul fast float %4995, %1699
  %4997 = fadd fast float %4988, %3759
  %4998 = fmul fast float %4997, %1699
  %4999 = fadd fast float %4989, %3762
  %5000 = fmul fast float %4999, %1699
  %5001 = fadd fast float %4990, %3765
  %5002 = fmul fast float %5001, %1699
  br label %5003

; <label>:5003                                    ; preds = %4901, %4612, %3686
  %5004 = phi float [ %3760, %3686 ], [ %3760, %4612 ], [ %4998, %4901 ]
  %5005 = phi float [ %3763, %3686 ], [ %3763, %4612 ], [ %5000, %4901 ]
  %5006 = phi float [ %3766, %3686 ], [ %3766, %4612 ], [ %5002, %4901 ]
  %5007 = phi float [ %3797, %3686 ], [ %3797, %4612 ], [ %4992, %4901 ]
  %5008 = phi float [ %3799, %3686 ], [ %3799, %4612 ], [ %4994, %4901 ]
  %5009 = phi float [ %3801, %3686 ], [ %3801, %4612 ], [ %4996, %4901 ]
  %5010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.i32 %5010, 0
  %5012 = icmp eq i32 %5011, 0
  br i1 %5012, label %5787, label %5013

; <label>:5013                                    ; preds = %5003
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 2
  %5016 = extractvalue %dx.types.CBufRet.f32 %5014, 3
  %5017 = fmul fast float %5015, %90
  %5018 = fmul fast float %5016, %91
  %5019 = fptoui float %5017 to i32
  %5020 = fptoui float %5018 to i32
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 0
  %5023 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5024 = extractvalue %dx.types.CBufRet.f32 %5021, 3
  %5025 = fadd fast float %81, -4.000000e+00
  %5026 = call float @dx.op.binary.f32(i32 35, float %5025, float 0.000000e+00)  ; FMax(a,b)
  %5027 = fadd fast float %5026, %5022
  %5028 = fmul fast float %5027, %5023
  %5029 = call float @dx.op.unary.f32(i32 23, float %5028)  ; Log(value)
  %5030 = fmul fast float %5029, %5024
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 2
  %5033 = fmul fast float %5030, %5032
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5036 = extractvalue %dx.types.CBufRet.i32 %5035, 1
  %5037 = add i32 %5036, -1
  %5038 = uitofp i32 %5036 to float
  %5039 = fmul fast float %5038, %5034
  %5040 = fptoui float %5039 to i32
  %5041 = call i32 @dx.op.binary.i32(i32 40, i32 %5040, i32 %5037)  ; UMin(a,b)
  %5042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5043 = extractvalue %dx.types.CBufRet.i32 %5042, 2
  %5044 = extractvalue %dx.types.CBufRet.i32 %5042, 3
  %5045 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5020, i32 %5043, i32 %5019)  ; UMad(a,b,c)
  %5046 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5041, i32 %5044, i32 %5045)  ; UMad(a,b,c)
  %5047 = add nsw i32 %5011, -1
  %5048 = call i32 @dx.op.binary.i32(i32 37, i32 %5047, i32 0)  ; IMax(a,b)
  %5049 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %5050 = fptoui float %5049 to i32
  %5051 = lshr i32 %5050, 5
  %5052 = call i32 @dx.op.binary.i32(i32 40, i32 %5051, i32 8191)  ; UMin(a,b)
  %5053 = shl i32 %5052, 2
  %5054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5053, i32 undef)  ; BufferLoad(srv,index,wot)
  %5055 = extractvalue %dx.types.ResRet.i32 %5054, 0
  %5056 = lshr i32 %5055, 16
  %5057 = and i32 %5055, 65535
  %5058 = lshr i32 %5055, 21
  %5059 = lshr i32 %5057, 5
  %5060 = call i32 @dx.op.binary.i32(i32 40, i32 %5059, i32 %5048)  ; UMin(a,b)
  %5061 = icmp ugt i32 %5058, %5060
  br i1 %5061, label %5787, label %5062

; <label>:5062                                    ; preds = %5013
  br label %5063

; <label>:5063                                    ; preds = %5777, %5062
  %5064 = phi i32 [ %5784, %5777 ], [ %5058, %5062 ]
  %5065 = phi float [ %5778, %5777 ], [ %5004, %5062 ]
  %5066 = phi float [ %5779, %5777 ], [ %5005, %5062 ]
  %5067 = phi float [ %5780, %5777 ], [ %5006, %5062 ]
  %5068 = phi float [ %5781, %5777 ], [ %5007, %5062 ]
  %5069 = phi float [ %5782, %5777 ], [ %5008, %5062 ]
  %5070 = phi float [ %5783, %5777 ], [ %5009, %5062 ]
  %5071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.i32 %5071, 0
  %5073 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5046, i32 %5072, i32 %5064)  ; UMad(a,b,c)
  %5074 = shl i32 %5073, 2
  %5075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5074, i32 undef)  ; BufferLoad(srv,index,wot)
  %5076 = extractvalue %dx.types.ResRet.i32 %5075, 0
  %5077 = shl i32 %5064, 5
  %5078 = sub nsw i32 %5056, %5077
  %5079 = call i32 @dx.op.binary.i32(i32 37, i32 %5078, i32 0)  ; IMax(a,b)
  %5080 = call i32 @dx.op.binary.i32(i32 38, i32 %5079, i32 31)  ; IMin(a,b)
  %5081 = sub nsw i32 1, %5056
  %5082 = add nsw i32 %5081, %5057
  %5083 = call i32 @dx.op.binary.i32(i32 37, i32 %5082, i32 0)  ; IMax(a,b)
  %5084 = call i32 @dx.op.binary.i32(i32 38, i32 %5083, i32 32)  ; IMin(a,b)
  %5085 = and i32 %5084, 31
  %5086 = shl i32 -1, %5085
  %5087 = xor i32 %5086, -1
  %5088 = and i32 %5080, 31
  %5089 = shl i32 %5087, %5088
  %5090 = icmp eq i32 %5084, 32
  %5091 = select i1 %5090, i32 -1, i32 %5089
  %5092 = and i32 %5091, %5076
  %5093 = icmp eq i32 %5092, 0
  br i1 %5093, label %5777, label %5094

; <label>:5094                                    ; preds = %5063
  br label %5095

; <label>:5095                                    ; preds = %5230, %5094
  %5096 = phi i32 [ %5107, %5230 ], [ %5092, %5094 ]
  %5097 = phi float [ %5231, %5230 ], [ %5065, %5094 ]
  %5098 = phi float [ %5232, %5230 ], [ %5066, %5094 ]
  %5099 = phi float [ %5233, %5230 ], [ %5067, %5094 ]
  %5100 = phi float [ %5234, %5230 ], [ %5068, %5094 ]
  %5101 = phi float [ %5235, %5230 ], [ %5069, %5094 ]
  %5102 = phi float [ %5236, %5230 ], [ %5070, %5094 ]
  %5103 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5096)  ; FirstbitLo(value)
  %5104 = add i32 %5103, %5077
  %5105 = and i32 %5103, 31
  %5106 = shl i32 1, %5105
  %5107 = xor i32 %5106, %5096
  %5108 = mul i32 %5104, 112
  %5109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5108, i32 undef)  ; BufferLoad(srv,index,wot)
  %5110 = extractvalue %dx.types.ResRet.f32 %5109, 0
  %5111 = extractvalue %dx.types.ResRet.f32 %5109, 1
  %5112 = extractvalue %dx.types.ResRet.f32 %5109, 2
  %5113 = or i32 %5108, 12
  %5114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5113, i32 undef)  ; BufferLoad(srv,index,wot)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  %5116 = add i32 %5108, 16
  %5117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5118 = extractvalue %dx.types.ResRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.ResRet.f32 %5117, 1
  %5120 = extractvalue %dx.types.ResRet.f32 %5117, 2
  %5121 = add i32 %5108, 28
  %5122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5121, i32 undef)  ; BufferLoad(srv,index,wot)
  %5123 = extractvalue %dx.types.ResRet.i32 %5122, 0
  %5124 = add i32 %5108, 44
  %5125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5124, i32 undef)  ; BufferLoad(srv,index,wot)
  %5126 = extractvalue %dx.types.ResRet.f32 %5125, 0
  %5127 = add i32 %5108, 48
  %5128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5127, i32 undef)  ; BufferLoad(srv,index,wot)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 0
  %5130 = extractvalue %dx.types.ResRet.f32 %5128, 1
  %5131 = extractvalue %dx.types.ResRet.f32 %5128, 2
  %5132 = extractvalue %dx.types.ResRet.f32 %5128, 3
  %5133 = add i32 %5108, 64
  %5134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5133, i32 undef)  ; BufferLoad(srv,index,wot)
  %5135 = extractvalue %dx.types.ResRet.f32 %5134, 0
  %5136 = extractvalue %dx.types.ResRet.f32 %5134, 1
  %5137 = extractvalue %dx.types.ResRet.f32 %5134, 2
  %5138 = extractvalue %dx.types.ResRet.f32 %5134, 3
  %5139 = add i32 %5108, 80
  %5140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5139, i32 undef)  ; BufferLoad(srv,index,wot)
  %5141 = extractvalue %dx.types.ResRet.f32 %5140, 1
  %5142 = extractvalue %dx.types.ResRet.f32 %5140, 2
  %5143 = add i32 %5108, 92
  %5144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5143, i32 undef)  ; BufferLoad(srv,index,wot)
  %5145 = extractvalue %dx.types.ResRet.i32 %5144, 0
  %5146 = call float @dx.op.dot3.f32(i32 55, float %5110, float %5111, float %5112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5147 = select i1 %228, float %5141, float %5110
  %5148 = select i1 %228, float %5146, float %5111
  %5149 = select i1 %228, float %5142, float %5112
  %5150 = and i32 %5145, 65535
  %5151 = uitofp i32 %5150 to float
  %5152 = lshr i32 %5145, 16
  %5153 = uitofp i32 %5152 to float
  %5154 = and i32 %5123, 65535
  %5155 = and i32 %5123, 50331648
  %5156 = icmp slt i32 %5123, 0
  %5157 = icmp eq i32 %5155, 33554432
  %5158 = fsub fast float %5129, %137
  %5159 = fsub fast float %5130, %138
  %5160 = fsub fast float %5131, %139
  %5161 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5159, float %5160, float %5158, float %5159, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5162 = call float @dx.op.unary.f32(i32 24, float %5161)  ; Sqrt(value)
  %5163 = fdiv fast float 1.000000e+00, %5162
  %5164 = fmul fast float %5163, %5158
  %5165 = fmul fast float %5163, %5159
  %5166 = fmul fast float %5163, %5160
  %5167 = fadd fast float %5162, %5115
  %5168 = fdiv fast float 1.000000e+00, %5167
  %5169 = fmul float %5126, %5168
  %5170 = fmul float %5169, %5169
  %5171 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  br i1 %5157, label %5172, label %5193

; <label>:5172                                    ; preds = %5095
  %5173 = fmul fast float %5137, %5118
  %5174 = fmul fast float %5137, %5119
  %5175 = fmul fast float %5137, %5120
  %5176 = fadd fast float %5158, %5173
  %5177 = fadd fast float %5159, %5174
  %5178 = fadd fast float %5160, %5175
  %5179 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5176, float %5177, float %5178)  ; Dot3(ax,ay,az,bx,by,bz)
  %5180 = call float @dx.op.unary.f32(i32 25, float %5179)  ; Rsqrt(value)
  %5181 = fmul fast float %5180, %5176
  %5182 = fmul fast float %5180, %5177
  %5183 = fmul fast float %5180, %5178
  %5184 = fsub fast float %137, %5129
  %5185 = fsub fast float %138, %5130
  %5186 = fsub fast float %139, %5131
  %5187 = fsub fast float -0.000000e+00, %5184
  %5188 = fsub fast float -0.000000e+00, %5185
  %5189 = fsub fast float -0.000000e+00, %5186
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float %5118, float %5119, float %5120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = fcmp fast ogt float %5190, 0.000000e+00
  %5192 = uitofp i1 %5191 to float
  br label %5193

; <label>:5193                                    ; preds = %5172, %5095
  %5194 = phi float [ %5192, %5172 ], [ 1.000000e+00, %5095 ]
  %5195 = phi float [ %5181, %5172 ], [ %5164, %5095 ]
  %5196 = phi float [ %5182, %5172 ], [ %5165, %5095 ]
  %5197 = phi float [ %5183, %5172 ], [ %5166, %5095 ]
  %5198 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5119, float %5120, float %5195, float %5196, float %5197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5199 = fmul fast float %5198, %5198
  %5200 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = fmul fast float %5201, 5.000000e-01
  %5203 = fcmp fast ogt float %5198, 0.000000e+00
  %5204 = fsub fast float 1.000000e+00, %5202
  %5205 = select i1 %5203, float %5202, float %5204
  %5206 = fmul fast float %5205, %5153
  %5207 = fadd fast float %5206, %5151
  %5208 = fmul fast float %5207, 0x3EF0001000000000
  %5209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %5208, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = fmul fast float %5198, %5135
  %5212 = fadd fast float %5211, %5136
  %5213 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5214 = select i1 %5157, float 1.000000e+00, float %5213
  %5215 = select i1 %5157, float %5213, float 1.000000e+00
  %5216 = fmul fast float %5162, %5132
  %5217 = fsub fast float 1.000000e+00, %5216
  %5218 = fmul fast float %5217, %5138
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fmul fast float %5219, %5215
  %5221 = fmul fast float %5220, 2.000000e+00
  %5222 = fsub fast float 3.000000e+00, %5221
  %5223 = fmul fast float %5210, %5194
  %5224 = fmul fast float %5220, %5220
  %5225 = fmul fast float %5224, %5223
  %5226 = fmul fast float %5225, %5222
  %5227 = call float @dx.op.binary.f32(i32 36, float %5226, float %5226)  ; FMin(a,b)
  %5228 = call float @dx.op.binary.f32(i32 36, float %5226, float %5227)  ; FMin(a,b)
  %5229 = fcmp fast ogt float %5228, 0.000000e+00
  br i1 %5229, label %5238, label %5230, !dx.controlflow.hints !132

; <label>:5230                                    ; preds = %5730, %5338, %5193
  %5231 = phi float [ %5097, %5338 ], [ %5097, %5193 ], [ %5773, %5730 ]
  %5232 = phi float [ %5098, %5338 ], [ %5098, %5193 ], [ %5774, %5730 ]
  %5233 = phi float [ %5099, %5338 ], [ %5099, %5193 ], [ %5775, %5730 ]
  %5234 = phi float [ %5100, %5338 ], [ %5100, %5193 ], [ %5767, %5730 ]
  %5235 = phi float [ %5101, %5338 ], [ %5101, %5193 ], [ %5768, %5730 ]
  %5236 = phi float [ %5102, %5338 ], [ %5102, %5193 ], [ %5769, %5730 ]
  %5237 = icmp eq i32 %5096, %5106
  br i1 %5237, label %5776, label %5095

; <label>:5238                                    ; preds = %5193
  %5239 = icmp eq i32 %5154, 255
  br i1 %5239, label %5338, label %5240, !dx.controlflow.hints !133

; <label>:5240                                    ; preds = %5238
  %5241 = mul nuw nsw i32 %5154, 176
  %5242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5241, i32 undef)  ; BufferLoad(srv,index,wot)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.ResRet.f32 %5242, 1
  %5245 = extractvalue %dx.types.ResRet.f32 %5242, 2
  %5246 = extractvalue %dx.types.ResRet.f32 %5242, 3
  %5247 = add nuw nsw i32 %5241, 16
  %5248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5249 = extractvalue %dx.types.ResRet.f32 %5248, 0
  %5250 = extractvalue %dx.types.ResRet.f32 %5248, 1
  %5251 = add nuw nsw i32 %5241, 32
  %5252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5251, i32 undef)  ; BufferLoad(srv,index,wot)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.ResRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.ResRet.f32 %5252, 2
  %5256 = add nuw nsw i32 %5241, 48
  %5257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5256, i32 undef)  ; BufferLoad(srv,index,wot)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.ResRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.ResRet.f32 %5257, 2
  %5261 = extractvalue %dx.types.ResRet.f32 %5257, 3
  %5262 = add nuw nsw i32 %5241, 64
  %5263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.ResRet.f32 %5263, 1
  %5266 = extractvalue %dx.types.ResRet.f32 %5263, 2
  %5267 = extractvalue %dx.types.ResRet.f32 %5263, 3
  %5268 = add nuw nsw i32 %5241, 80
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.ResRet.f32 %5269, 2
  %5273 = extractvalue %dx.types.ResRet.f32 %5269, 3
  %5274 = add nuw nsw i32 %5241, 96
  %5275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5274, i32 undef)  ; BufferLoad(srv,index,wot)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = extractvalue %dx.types.ResRet.f32 %5275, 3
  %5280 = bitcast float %5250 to i32
  %5281 = fmul fast float %5255, %70
  %5282 = fmul fast float %5255, %71
  %5283 = fmul fast float %5255, %72
  %5284 = fadd fast float %5281, %137
  %5285 = fadd fast float %5282, %138
  %5286 = fadd fast float %5283, %139
  %5287 = fmul fast float %5284, %5258
  %5288 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5264, float %5287)  ; FMad(a,b,c)
  %5289 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5270, float %5288)  ; FMad(a,b,c)
  %5290 = fadd fast float %5289, %5276
  %5291 = fmul fast float %5284, %5259
  %5292 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5265, float %5291)  ; FMad(a,b,c)
  %5293 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5271, float %5292)  ; FMad(a,b,c)
  %5294 = fadd fast float %5293, %5277
  %5295 = fmul fast float %5284, %5260
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5266, float %5295)  ; FMad(a,b,c)
  %5297 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5272, float %5296)  ; FMad(a,b,c)
  %5298 = fadd fast float %5297, %5278
  %5299 = fmul fast float %5284, %5261
  %5300 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5267, float %5299)  ; FMad(a,b,c)
  %5301 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5273, float %5300)  ; FMad(a,b,c)
  %5302 = fadd fast float %5301, %5279
  %5303 = fdiv fast float %5290, %5302
  %5304 = fdiv fast float %5294, %5302
  %5305 = fdiv fast float %5298, %5302
  %5306 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5305)  ; FMax(a,b)
  %5307 = fmul fast float %239, 0x401921FB60000000
  %5308 = call float @dx.op.unary.f32(i32 13, float %5307)  ; Sin(value)
  %5309 = call float @dx.op.unary.f32(i32 12, float %5307)  ; Cos(value)
  %5310 = fsub fast float -0.000000e+00, %5308
  %5311 = fmul fast float %5245, 5.000000e-01
  %5312 = call float @dx.op.dot2.f32(i32 54, float %239, float %239, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %5313 = call float @dx.op.unary.f32(i32 22, float %5312)  ; Frc(value)
  %5314 = fmul fast float %5313, 0x404A7DD040000000
  %5315 = call float @dx.op.unary.f32(i32 22, float %5314)  ; Frc(value)
  %5316 = fmul fast float %5315, %5254
  %5317 = fadd fast float %5316, %5311
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5310, float 0.000000e+00)  ; FMad(a,b,c)
  %5319 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5309, float 0.000000e+00)  ; FMad(a,b,c)
  %5320 = fadd fast float %5318, %5303
  %5321 = fadd fast float %5319, %5304
  %5322 = fmul fast float %5320, %5249
  %5323 = fmul fast float %5321, %5249
  %5324 = call float @dx.op.binary.f32(i32 35, float %5322, float %5245)  ; FMax(a,b)
  %5325 = call float @dx.op.binary.f32(i32 35, float %5323, float %5245)  ; FMax(a,b)
  %5326 = call float @dx.op.binary.f32(i32 36, float %5324, float %5246)  ; FMin(a,b)
  %5327 = call float @dx.op.binary.f32(i32 36, float %5325, float %5246)  ; FMin(a,b)
  %5328 = fadd fast float %5326, %5243
  %5329 = fadd fast float %5327, %5244
  %5330 = uitofp i32 %5280 to float
  %5331 = fadd fast float %5306, %5253
  %5332 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %5328, float %5329, float %5330, float undef, i32 0, i32 0, i32 undef, float %5331)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5333 = extractvalue %dx.types.ResRet.f32 %5332, 0
  %5334 = fadd fast float %5333, -1.000000e+00
  %5335 = fmul fast float %5334, %5214
  %5336 = fadd fast float %5335, 1.000000e+00
  %5337 = fmul fast float %5336, %5226
  br label %5338

; <label>:5338                                    ; preds = %5240, %5238
  %5339 = phi float [ %5337, %5240 ], [ %5226, %5238 ]
  %5340 = call float @dx.op.binary.f32(i32 36, float %5339, float %5339)  ; FMin(a,b)
  %5341 = call float @dx.op.binary.f32(i32 36, float %5339, float %5340)  ; FMin(a,b)
  %5342 = fcmp fast ogt float %5341, 0.000000e+00
  br i1 %5342, label %5343, label %5230, !dx.controlflow.hints !134

; <label>:5343                                    ; preds = %5338
  %5344 = fmul fast float %5339, %5147
  %5345 = fmul fast float %5339, %5148
  %5346 = fmul fast float %5339, %5149
  %5347 = fsub fast float %5131, %2130
  %5348 = fcmp fast ogt float %5347, 0.000000e+00
  %5349 = fsub fast float %139, %2130
  %5350 = fcmp fast ogt float %5349, 0.000000e+00
  %5351 = xor i1 %5350, %5348
  %5352 = fsub fast float %2130, %5131
  %5353 = fmul fast float %5352, 2.000000e+00
  %5354 = fadd fast float %5353, %5131
  %5355 = select i1 %5351, float %5131, float %5354
  %5356 = fsub fast float %5355, %139
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5159, float %5356, float %5158, float %5159, float %5356)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = call float @dx.op.unary.f32(i32 25, float %5357)  ; Rsqrt(value)
  %5359 = fmul fast float %5358, %5158
  %5360 = fmul fast float %5358, %5159
  %5361 = fmul fast float %5358, %5356
  %5362 = fsub fast float %2130, %139
  %5363 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5362)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5359, float %5360, float %5361)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = fdiv fast float 1.000000e+00, %5364
  %5366 = fmul fast float %5365, %5363
  %5367 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5349, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = fcmp fast ogt float %5367, 0.000000e+00
  %5369 = fcmp fast olt float %5367, 0.000000e+00
  %5370 = zext i1 %5368 to i32
  %5371 = zext i1 %5369 to i32
  %5372 = sub nsw i32 %5370, %5371
  %5373 = sitofp i32 %5372 to float
  %5374 = fsub fast float %5355, %2130
  %5375 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5159, float %5374, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5376 = fcmp fast ogt float %5375, 0.000000e+00
  %5377 = fcmp fast olt float %5375, 0.000000e+00
  %5378 = zext i1 %5376 to i32
  %5379 = zext i1 %5377 to i32
  %5380 = sub nsw i32 %5378, %5379
  %5381 = sitofp i32 %5380 to float
  %5382 = fcmp fast une float %5373, %5381
  br i1 %5382, label %5383, label %5393

; <label>:5383                                    ; preds = %5343
  %5384 = fmul fast float %5366, %5361
  %5385 = fmul fast float %5366, %5360
  %5386 = fmul fast float %5366, %5359
  %5387 = fmul fast float %5386, %5386
  %5388 = fmul fast float %5385, %5385
  %5389 = fadd fast float %5387, %5388
  %5390 = fmul fast float %5384, %5384
  %5391 = fadd fast float %5389, %5390
  %5392 = call float @dx.op.unary.f32(i32 24, float %5391)  ; Sqrt(value)
  br label %5405

; <label>:5393                                    ; preds = %5343
  %5394 = icmp slt i32 %5372, 0
  br i1 %5394, label %5395, label %5405

; <label>:5395                                    ; preds = %5393
  %5396 = fsub fast float %137, %5129
  %5397 = fsub fast float %138, %5130
  %5398 = fsub fast float %139, %5355
  %5399 = fmul fast float %5396, %5396
  %5400 = fmul fast float %5397, %5397
  %5401 = fadd fast float %5399, %5400
  %5402 = fmul fast float %5398, %5398
  %5403 = fadd fast float %5401, %5402
  %5404 = call float @dx.op.unary.f32(i32 24, float %5403)  ; Sqrt(value)
  br label %5405

; <label>:5405                                    ; preds = %5395, %5393, %5383
  %5406 = phi float [ %5392, %5383 ], [ %5404, %5395 ], [ 0.000000e+00, %5393 ]
  %5407 = and i1 %5350, %5348
  %5408 = fsub fast float -0.000000e+00, %5406
  %5409 = select i1 %5407, float -0.000000e+00, float %5408
  %5410 = fmul fast float %2131, 0x3FF7154760000000
  %5411 = fmul fast float %5410, %5409
  %5412 = fmul fast float %2132, 0x3FF7154760000000
  %5413 = fmul fast float %5412, %5409
  %5414 = fmul fast float %2133, 0x3FF7154760000000
  %5415 = fmul fast float %5414, %5409
  %5416 = call float @dx.op.unary.f32(i32 21, float %5411)  ; Exp(value)
  %5417 = call float @dx.op.unary.f32(i32 21, float %5413)  ; Exp(value)
  %5418 = call float @dx.op.unary.f32(i32 21, float %5415)  ; Exp(value)
  %5419 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  %5420 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5421 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5422 = fmul fast float %5344, %5419
  %5423 = fmul fast float %5345, %5420
  %5424 = fmul fast float %5346, %5421
  %5425 = fsub fast float %5164, %2330
  %5426 = fsub fast float %5165, %2329
  %5427 = fsub fast float %5166, %2328
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5427, float %5425, float %5426, float %5427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = call float @dx.op.unary.f32(i32 25, float %5428)  ; Rsqrt(value)
  %5430 = fmul fast float %5429, %5425
  %5431 = fmul fast float %5429, %5426
  %5432 = fmul fast float %5429, %5427
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5164, float %5165, float %5166, float %2334, float %2335, float %2336)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = call float @dx.op.dot3.f32(i32 55, float %2327, float %2326, float %2325, float %5430, float %5431, float %5432)  ; Dot3(ax,ay,az,bx,by,bz)
  %5435 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  %5436 = fmul fast float %5435, %5171
  %5437 = fmul fast float %5435, %5435
  %5438 = fmul fast float %5437, %2358
  %5439 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5440 = fmul fast float %5436, %5439
  %5441 = bitcast float %5161 to i32
  %5442 = ashr i32 %5441, 1
  %5443 = sub nsw i32 1597463007, %5442
  %5444 = bitcast i32 %5443 to float
  %5445 = fmul fast float %5444, %5158
  %5446 = fmul fast float %5444, %5159
  %5447 = fmul fast float %5444, %5160
  %5448 = fsub fast float %5445, %2330
  %5449 = fsub fast float %5446, %2329
  %5450 = fsub fast float %5447, %2328
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5448, float %5449, float %5450)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = call float @dx.op.unary.f32(i32 25, float %5451)  ; Rsqrt(value)
  %5453 = fmul fast float %5448, %5452
  %5454 = fmul fast float %5449, %5452
  %5455 = fmul fast float %5450, %5452
  %5456 = call float @dx.op.dot3.f32(i32 55, float %2334, float %2335, float %2336, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = fmul fast float %5456, %5456
  %5458 = call float @dx.op.unary.f32(i32 6, float %5433)  ; FAbs(value)
  %5459 = call float @dx.op.binary.f32(i32 35, float %3774, float 0x3F847AE140000000)  ; FMax(a,b)
  %5460 = fmul fast float %5459, %5459
  %5461 = fmul fast float %5460, %5460
  %5462 = fsub fast float 1.000000e+00, %5461
  %5463 = fmul fast float %2345, %2345
  %5464 = fmul fast float %5463, %5462
  %5465 = fadd fast float %5464, %5461
  %5466 = bitcast float %5465 to i32
  %5467 = ashr i32 %5466, 1
  %5468 = add nsw i32 %5467, 532487669
  %5469 = bitcast i32 %5468 to float
  %5470 = fadd fast float %5469, %2345
  %5471 = fmul fast float %5461, %5457
  %5472 = fsub fast float 1.000000e+00, %5457
  %5473 = fadd fast float %5472, %5471
  %5474 = fmul fast float %5458, %5458
  %5475 = fmul fast float %5474, %5462
  %5476 = fadd fast float %5475, %5461
  %5477 = bitcast float %5476 to i32
  %5478 = ashr i32 %5477, 1
  %5479 = add nsw i32 %5478, 532487669
  %5480 = bitcast i32 %5479 to float
  %5481 = fadd fast float %5480, %5458
  %5482 = fmul fast float %5473, %5473
  %5483 = fmul fast float %5482, %5470
  %5484 = fmul fast float %5483, %5481
  %5485 = fdiv fast float 1.000000e+00, %5484
  %5486 = bitcast float %5461 to i32
  %5487 = sitofp i32 %5486 to float
  %5488 = fmul fast float %5487, 0x3FE7F73180000000
  %5489 = fadd fast float %5488, 0x41AFE27C40000000
  %5490 = fptosi float %5489 to i32
  %5491 = bitcast i32 %5490 to float
  %5492 = fmul fast float %5126, 0x3FD80E9D60000000
  %5493 = fmul fast float %5492, %5444
  %5494 = fadd fast float %5491, %5493
  %5495 = bitcast float %5494 to i32
  %5496 = sub nsw i32 2129859010, %5495
  %5497 = bitcast i32 %5496 to float
  %5498 = fmul fast float %5461, %5485
  %5499 = fmul fast float %5498, %5491
  %5500 = fmul fast float %5499, %5497
  %5501 = fmul fast float %3636, 0x3FF9999980000000
  %5502 = fsub fast float 5.000000e+00, %5501
  %5503 = call float @dx.op.unary.f32(i32 6, float %5434)  ; FAbs(value)
  %5504 = fsub fast float 1.000000e+00, %5503
  %5505 = fmul fast float %3636, 0x41D9660740000000
  %5506 = fadd fast float %5505, 0xC1EFBF8940000000
  %5507 = bitcast float %5504 to i32
  %5508 = sitofp i32 %5507 to float
  %5509 = fmul fast float %5508, %5502
  %5510 = fadd fast float %5506, %5509
  %5511 = fptosi float %5510 to i32
  %5512 = bitcast i32 %5511 to float
  %5513 = fsub fast float 1.000000e+00, %2331
  %5514 = fsub fast float 1.000000e+00, %2332
  %5515 = fsub fast float 1.000000e+00, %2343
  %5516 = fmul fast float %5512, %5513
  %5517 = fmul fast float %5512, %5514
  %5518 = fmul fast float %5512, %5515
  %5519 = fadd fast float %5516, %2331
  %5520 = fadd fast float %5517, %2332
  %5521 = fadd fast float %5518, %2343
  br i1 %3659, label %5522, label %5545

; <label>:5522                                    ; preds = %5405
  %5523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1676, float %5503, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5527 = fadd fast float %5524, -5.000000e-01
  %5528 = fadd fast float %5525, -5.000000e-01
  %5529 = fadd fast float %5526, -5.000000e-01
  %5530 = fmul fast float %2331, 4.000000e+00
  %5531 = fmul fast float %5530, %5513
  %5532 = fmul fast float %5531, %5527
  %5533 = fmul fast float %2332, 4.000000e+00
  %5534 = fmul fast float %5533, %5514
  %5535 = fmul fast float %5534, %5528
  %5536 = fmul fast float %2343, 4.000000e+00
  %5537 = fmul fast float %5536, %5515
  %5538 = fmul fast float %5537, %5529
  %5539 = fadd fast float %5532, %5519
  %5540 = fadd fast float %5535, %5520
  %5541 = fadd fast float %5538, %5521
  %5542 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5543 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5544 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  br label %5545

; <label>:5545                                    ; preds = %5522, %5405
  %5546 = phi float [ %5542, %5522 ], [ %5519, %5405 ]
  %5547 = phi float [ %5543, %5522 ], [ %5520, %5405 ]
  %5548 = phi float [ %5544, %5522 ], [ %5521, %5405 ]
  %5549 = fmul fast float %5433, 9.843750e-01
  %5550 = fadd fast float %5549, 7.812500e-03
  %5551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5550, float %3640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5552 = extractvalue %dx.types.ResRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.ResRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.ResRet.f32 %5551, 2
  %5555 = extractvalue %dx.types.ResRet.f32 %5551, 3
  %5556 = fsub fast float %5554, %5552
  %5557 = fsub fast float %5555, %5553
  %5558 = fmul fast float %5556, %3646
  %5559 = fmul fast float %5557, %3646
  %5560 = fadd fast float %5558, %5552
  %5561 = fadd fast float %5559, %5553
  %5562 = fmul fast float %5560, %2331
  %5563 = fmul fast float %5560, %2332
  %5564 = fmul fast float %5560, %2343
  %5565 = fadd fast float %5562, %5561
  %5566 = fadd fast float %5563, %5561
  %5567 = fadd fast float %5564, %5561
  br i1 %3659, label %5568, label %5591

; <label>:5568                                    ; preds = %5545
  %5569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1676, float %5433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5570 = extractvalue %dx.types.ResRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.ResRet.f32 %5569, 1
  %5572 = extractvalue %dx.types.ResRet.f32 %5569, 2
  %5573 = fadd fast float %5570, -5.000000e-01
  %5574 = fadd fast float %5571, -5.000000e-01
  %5575 = fadd fast float %5572, -5.000000e-01
  %5576 = fmul fast float %2331, 4.000000e+00
  %5577 = fmul fast float %5576, %5513
  %5578 = fmul fast float %5577, %5573
  %5579 = fmul fast float %2332, 4.000000e+00
  %5580 = fmul fast float %5579, %5514
  %5581 = fmul fast float %5580, %5574
  %5582 = fmul fast float %2343, 4.000000e+00
  %5583 = fmul fast float %5582, %5515
  %5584 = fmul fast float %5583, %5575
  %5585 = fadd fast float %5578, %5565
  %5586 = fadd fast float %5581, %5566
  %5587 = fadd fast float %5584, %5567
  %5588 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5589 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5590 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  br label %5591

; <label>:5591                                    ; preds = %5568, %5545
  %5592 = phi float [ %5588, %5568 ], [ %5565, %5545 ]
  %5593 = phi float [ %5589, %5568 ], [ %5566, %5545 ]
  %5594 = phi float [ %5590, %5568 ], [ %5567, %5545 ]
  %5595 = call float @dx.op.binary.f32(i32 35, float %5593, float %5594)  ; FMax(a,b)
  %5596 = call float @dx.op.binary.f32(i32 35, float %5592, float %5595)  ; FMax(a,b)
  %5597 = fsub fast float 1.000000e+00, %5596
  %5598 = call float @dx.op.binary.f32(i32 35, float %5458, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5599 = fdiv fast float %1076, %5598
  %5600 = fmul fast float %3714, %5599
  %5601 = fmul fast float %3716, %5599
  %5602 = fmul fast float %3718, %5599
  %5603 = call float @dx.op.unary.f32(i32 21, float %5600)  ; Exp(value)
  %5604 = call float @dx.op.unary.f32(i32 21, float %5601)  ; Exp(value)
  %5605 = call float @dx.op.unary.f32(i32 21, float %5602)  ; Exp(value)
  %5606 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5607 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5608 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  %5609 = select i1 %3711, float %5606, float 0.000000e+00
  %5610 = select i1 %3712, float %5607, float 0.000000e+00
  %5611 = select i1 %3713, float %5608, float 0.000000e+00
  %5612 = fsub fast float -0.000000e+00, %2334
  %5613 = fsub fast float -0.000000e+00, %2335
  %5614 = fsub fast float -0.000000e+00, %2336
  %5615 = call float @dx.op.dot3.f32(i32 55, float %5164, float %5165, float %5166, float %5612, float %5613, float %5614)  ; Dot3(ax,ay,az,bx,by,bz)
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fmul fast float %5616, %5171
  %5618 = fmul fast float %5616, 9.843750e-01
  %5619 = fadd fast float %5618, 7.812500e-03
  %5620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5619, float %3640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5621 = extractvalue %dx.types.ResRet.f32 %5620, 0
  %5622 = extractvalue %dx.types.ResRet.f32 %5620, 1
  %5623 = extractvalue %dx.types.ResRet.f32 %5620, 2
  %5624 = extractvalue %dx.types.ResRet.f32 %5620, 3
  %5625 = fsub fast float %5623, %5621
  %5626 = fsub fast float %5624, %5622
  %5627 = fmul fast float %5625, %3646
  %5628 = fmul fast float %5626, %3646
  %5629 = fadd fast float %5627, %5621
  %5630 = fadd fast float %5628, %5622
  %5631 = fmul fast float %5629, %2331
  %5632 = fmul fast float %5629, %2332
  %5633 = fmul fast float %5629, %2343
  %5634 = fadd fast float %5631, %5630
  %5635 = fadd fast float %5632, %5630
  %5636 = fadd fast float %5633, %5630
  br i1 %3659, label %5637, label %5660

; <label>:5637                                    ; preds = %5591
  %5638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1676, float %5616, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5639 = extractvalue %dx.types.ResRet.f32 %5638, 0
  %5640 = extractvalue %dx.types.ResRet.f32 %5638, 1
  %5641 = extractvalue %dx.types.ResRet.f32 %5638, 2
  %5642 = fadd fast float %5639, -5.000000e-01
  %5643 = fadd fast float %5640, -5.000000e-01
  %5644 = fadd fast float %5641, -5.000000e-01
  %5645 = fmul fast float %2331, 4.000000e+00
  %5646 = fmul fast float %5645, %5513
  %5647 = fmul fast float %5646, %5642
  %5648 = fmul fast float %2332, 4.000000e+00
  %5649 = fmul fast float %5648, %5514
  %5650 = fmul fast float %5649, %5643
  %5651 = fmul fast float %2343, 4.000000e+00
  %5652 = fmul fast float %5651, %5515
  %5653 = fmul fast float %5652, %5644
  %5654 = fadd fast float %5647, %5634
  %5655 = fadd fast float %5650, %5635
  %5656 = fadd fast float %5653, %5636
  %5657 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5658 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5659 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  br label %5660

; <label>:5660                                    ; preds = %5637, %5591
  %5661 = phi float [ %5657, %5637 ], [ %5634, %5591 ]
  %5662 = phi float [ %5658, %5637 ], [ %5635, %5591 ]
  %5663 = phi float [ %5659, %5637 ], [ %5636, %5591 ]
  %5664 = call float @dx.op.binary.f32(i32 35, float %5662, float %5663)  ; FMax(a,b)
  %5665 = call float @dx.op.binary.f32(i32 35, float %5661, float %5664)  ; FMax(a,b)
  %5666 = fsub fast float 1.000000e+00, %5665
  %5667 = fmul fast float %3774, %3779
  %5668 = fadd fast float %3781, %5667
  %5669 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  %5670 = fsub fast float %5445, %2351
  %5671 = fsub fast float %5446, %2352
  %5672 = fsub fast float %5447, %2353
  %5673 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5671, float %5672, float %5670, float %5671, float %5672)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = call float @dx.op.unary.f32(i32 25, float %5673)  ; Rsqrt(value)
  %5675 = fmul fast float %5670, %5674
  %5676 = fmul fast float %5671, %5674
  %5677 = fmul fast float %5672, %5674
  %5678 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = fmul fast float %5678, %5678
  %5680 = call float @dx.op.unary.f32(i32 6, float %5616)  ; FAbs(value)
  %5681 = call float @dx.op.binary.f32(i32 35, float %5669, float 0x3F847AE140000000)  ; FMax(a,b)
  %5682 = fmul fast float %5681, %5681
  %5683 = fmul fast float %5682, %5682
  %5684 = fsub fast float 1.000000e+00, %5683
  %5685 = fmul fast float %5463, %5684
  %5686 = fadd fast float %5685, %5683
  %5687 = bitcast float %5686 to i32
  %5688 = ashr i32 %5687, 1
  %5689 = add nsw i32 %5688, 532487669
  %5690 = bitcast i32 %5689 to float
  %5691 = fadd fast float %5690, %2345
  %5692 = fmul fast float %5683, %5679
  %5693 = fsub fast float 1.000000e+00, %5679
  %5694 = fadd fast float %5693, %5692
  %5695 = fmul fast float %5680, %5680
  %5696 = fmul fast float %5695, %5684
  %5697 = fadd fast float %5696, %5683
  %5698 = bitcast float %5697 to i32
  %5699 = ashr i32 %5698, 1
  %5700 = add nsw i32 %5699, 532487669
  %5701 = bitcast i32 %5700 to float
  %5702 = fadd fast float %5701, %5680
  %5703 = fmul fast float %5694, %5694
  %5704 = fmul fast float %5703, %5691
  %5705 = fmul fast float %5704, %5702
  %5706 = fdiv fast float 1.000000e+00, %5705
  %5707 = bitcast float %5683 to i32
  %5708 = sitofp i32 %5707 to float
  %5709 = fmul fast float %5708, 0x3FE7F73180000000
  %5710 = fadd fast float %5709, 0x41AFE27C40000000
  %5711 = fptosi float %5710 to i32
  %5712 = bitcast i32 %5711 to float
  %5713 = fadd fast float %5712, %5493
  %5714 = bitcast float %5713 to i32
  %5715 = sub nsw i32 2129859010, %5714
  %5716 = bitcast i32 %5715 to float
  %5717 = fmul fast float %5683, %5706
  %5718 = fmul fast float %5717, %5712
  %5719 = fmul fast float %5718, %5716
  br i1 %5156, label %5720, label %5730

; <label>:5720                                    ; preds = %5660
  %5721 = fmul fast float %5617, %5609
  %5722 = fmul fast float %5617, %5610
  %5723 = fmul fast float %5617, %5611
  %5724 = fmul fast float %5721, %5666
  %5725 = fmul fast float %5724, %5719
  %5726 = fmul fast float %5722, %5666
  %5727 = fmul fast float %5726, %5719
  %5728 = fmul fast float %5723, %5666
  %5729 = fmul fast float %5728, %5719
  br label %5730

; <label>:5730                                    ; preds = %5720, %5660
  %5731 = phi float [ %5725, %5720 ], [ 0.000000e+00, %5660 ]
  %5732 = phi float [ %5727, %5720 ], [ 0.000000e+00, %5660 ]
  %5733 = phi float [ %5729, %5720 ], [ 0.000000e+00, %5660 ]
  %5734 = fmul fast float %5546, %5500
  %5735 = fmul fast float %5547, %5500
  %5736 = fmul fast float %5548, %5500
  %5737 = fsub fast float 1.000000e+00, %5434
  %5738 = bitcast float %5737 to i32
  %5739 = sitofp i32 %5738 to float
  %5740 = fmul fast float %5739, 5.000000e+00
  %5741 = fadd fast float %5740, 0xC1EFBF8940000000
  %5742 = fptosi float %5741 to i32
  %5743 = bitcast i32 %5742 to float
  %5744 = fmul fast float %5743, %1675
  %5745 = fmul fast float %5597, %5744
  %5746 = fmul fast float %5745, %3706
  %5747 = fmul fast float %5745, %3707
  %5748 = fmul fast float %5745, %3708
  %5749 = fadd fast float %5746, %5734
  %5750 = fadd fast float %5747, %5735
  %5751 = fadd fast float %5748, %5736
  %5752 = fmul fast float %5749, %5440
  %5753 = fmul fast float %5750, %5440
  %5754 = fmul fast float %5751, %5440
  %5755 = fadd fast float %5752, %5731
  %5756 = fadd fast float %5753, %5732
  %5757 = fadd fast float %5754, %5733
  %5758 = fmul fast float %5422, %1699
  %5759 = fmul fast float %5758, %5440
  %5760 = fmul fast float %5759, %5597
  %5761 = fmul fast float %5423, %1699
  %5762 = fmul fast float %5761, %5440
  %5763 = fmul fast float %5762, %5597
  %5764 = fmul fast float %5424, %1699
  %5765 = fmul fast float %5764, %5440
  %5766 = fmul fast float %5765, %5597
  %5767 = fadd fast float %5760, %5100
  %5768 = fadd fast float %5763, %5101
  %5769 = fadd fast float %5766, %5102
  %5770 = fmul fast float %5758, %5755
  %5771 = fmul fast float %5761, %5756
  %5772 = fmul fast float %5764, %5757
  %5773 = fadd fast float %5770, %5097
  %5774 = fadd fast float %5771, %5098
  %5775 = fadd fast float %5772, %5099
  br label %5230

; <label>:5776                                    ; preds = %5230
  br label %5777

; <label>:5777                                    ; preds = %5776, %5063
  %5778 = phi float [ %5065, %5063 ], [ %5231, %5776 ]
  %5779 = phi float [ %5066, %5063 ], [ %5232, %5776 ]
  %5780 = phi float [ %5067, %5063 ], [ %5233, %5776 ]
  %5781 = phi float [ %5068, %5063 ], [ %5234, %5776 ]
  %5782 = phi float [ %5069, %5063 ], [ %5235, %5776 ]
  %5783 = phi float [ %5070, %5063 ], [ %5236, %5776 ]
  %5784 = add i32 %5064, 1
  %5785 = icmp ugt i32 %5784, %5060
  br i1 %5785, label %5786, label %5063

; <label>:5786                                    ; preds = %5777
  br label %5787

; <label>:5787                                    ; preds = %5786, %5013, %5003
  %5788 = phi float [ %5004, %5003 ], [ %5004, %5013 ], [ %5778, %5786 ]
  %5789 = phi float [ %5005, %5003 ], [ %5005, %5013 ], [ %5779, %5786 ]
  %5790 = phi float [ %5006, %5003 ], [ %5006, %5013 ], [ %5780, %5786 ]
  %5791 = phi float [ %5007, %5003 ], [ %5007, %5013 ], [ %5781, %5786 ]
  %5792 = phi float [ %5008, %5003 ], [ %5008, %5013 ], [ %5782, %5786 ]
  %5793 = phi float [ %5009, %5003 ], [ %5009, %5013 ], [ %5783, %5786 ]
  %5794 = fmul fast float %1699, %3735
  %5795 = fsub fast float -0.000000e+00, %5794
  %5796 = fmul fast float %1699, %3736
  %5797 = fsub fast float -0.000000e+00, %5796
  %5798 = fmul fast float %1699, %3737
  %5799 = fsub fast float -0.000000e+00, %5798
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = fmul fast float %5801, %3741
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 3
  %5805 = fsub fast float 1.000000e+00, %1671
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5807 = fadd fast float %5793, %1670
  %5808 = fmul fast float %5807, %1671
  %5809 = fmul fast float %5806, %5804
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 3
  %5812 = fmul fast float %5791, %2337
  %5813 = fmul fast float %5792, %2338
  %5814 = fmul fast float %5793, %2339
  %5815 = fcmp fast ogt float %81, %188
  %5816 = and i1 %5815, %2136
  %5817 = or i1 %2142, %5816
  %5818 = icmp eq i32 %2135, 2
  %5819 = fcmp fast ole float %81, %188
  %5820 = and i1 %5819, %5818
  %5821 = or i1 %5820, %5817
  br i1 %5816, label %5822, label %6081

; <label>:5822                                    ; preds = %5787
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5826 = fmul fast float %5824, %90
  %5827 = fmul fast float %5825, %91
  %5828 = call float @dx.op.unary.f32(i32 7, float %5826)  ; Saturate(value)
  %5829 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  %5830 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5828, float %5829, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.ResRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.ResRet.f32 %5830, 2
  %5834 = extractvalue %dx.types.ResRet.f32 %5830, 3
  %5835 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5828, float %5829, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5836 = extractvalue %dx.types.ResRet.f32 %5835, 0
  %5837 = extractvalue %dx.types.ResRet.f32 %5835, 1
  %5838 = extractvalue %dx.types.ResRet.f32 %5835, 2
  %5839 = extractvalue %dx.types.ResRet.f32 %5835, 3
  %5840 = call float @dx.op.binary.f32(i32 35, float %5832, float %5833)  ; FMax(a,b)
  %5841 = call float @dx.op.binary.f32(i32 35, float %5831, float %5840)  ; FMax(a,b)
  %5842 = call float @dx.op.binary.f32(i32 35, float %5841, float %5834)  ; FMax(a,b)
  %5843 = call float @dx.op.binary.f32(i32 36, float %5837, float %5838)  ; FMin(a,b)
  %5844 = call float @dx.op.binary.f32(i32 36, float %5836, float %5843)  ; FMin(a,b)
  %5845 = call float @dx.op.binary.f32(i32 36, float %5844, float %5839)  ; FMin(a,b)
  %5846 = fmul fast float %5842, 2.550000e+02
  %5847 = fadd fast float %5846, 0x3F70101020000000
  %5848 = fptoui float %5847 to i32
  %5849 = fmul fast float %5845, 2.550000e+02
  %5850 = fadd fast float %5849, 0x3F70101020000000
  %5851 = fptoui float %5850 to i32
  %5852 = icmp ult i32 %5848, %5851
  br i1 %5852, label %5853, label %6021

; <label>:5853                                    ; preds = %5822
  %5854 = fcmp fast ogt float %80, 9.843750e-01
  %5855 = fadd fast float %81, -4.000000e+00
  %5856 = select i1 %5854, float -4.000000e+00, float %5855
  %5857 = call float @dx.op.binary.f32(i32 35, float %5856, float 0.000000e+00)  ; FMax(a,b)
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = fadd fast float %5859, %5857
  %5861 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5862 = fmul fast float %5860, %5861
  %5863 = call float @dx.op.unary.f32(i32 23, float %5862)  ; Log(value)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5858, 3
  %5865 = fmul fast float %5864, %5863
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5868 = fmul fast float %5865, %5867
  %5869 = call float @dx.op.unary.f32(i32 7, float %5868)  ; Saturate(value)
  %5870 = uitofp i32 %5848 to float
  %5871 = uitofp i32 %5851 to float
  %5872 = fadd fast float %5870, 5.000000e-01
  %5873 = fadd fast float %5871, 5.000000e-01
  %5874 = fmul fast float %5867, %5872
  %5875 = fmul fast float %5867, %5873
  %5876 = fadd fast float %5874, 0x3F0FFB4800000000
  %5877 = fadd fast float %5875, 0xBF0FFB4800000000
  %5878 = call float @dx.op.binary.f32(i32 35, float %5869, float %5876)  ; FMax(a,b)
  %5879 = call float @dx.op.binary.f32(i32 36, float %5878, float %5877)  ; FMin(a,b)
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5882 = extractvalue %dx.types.CBufRet.f32 %5880, 2
  %5883 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5884 = fmul fast float %5881, %5879
  %5885 = fadd fast float %5883, %5884
  %5886 = fadd fast float %5883, %5882
  %5887 = fsub fast float %5881, %5882
  %5888 = fadd fast float %5887, %5883
  %5889 = call float @dx.op.binary.f32(i32 35, float %5885, float %5886)  ; FMax(a,b)
  %5890 = call float @dx.op.binary.f32(i32 36, float %5889, float %5888)  ; FMin(a,b)
  %5891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5828, float %5829, float %5890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5892 = extractvalue %dx.types.ResRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.ResRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.ResRet.f32 %5891, 2
  %5895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.i32 %5895, 0
  %5897 = extractvalue %dx.types.CBufRet.i32 %5895, 1
  %5898 = uitofp i32 %5896 to float
  %5899 = uitofp i32 %5897 to float
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5903 = fmul fast float %5898, %5828
  %5904 = fmul fast float %5899, %5829
  %5905 = fadd fast float %5903, -5.000000e-01
  %5906 = fadd fast float %5904, -5.000000e-01
  %5907 = call float @dx.op.unary.f32(i32 22, float %5905)  ; Frc(value)
  %5908 = call float @dx.op.unary.f32(i32 22, float %5906)  ; Frc(value)
  %5909 = fmul fast float %5907, %5907
  %5910 = fmul fast float %5909, %5907
  %5911 = fsub fast float 3.000000e+00, %5907
  %5912 = fmul fast float %5909, %5911
  %5913 = fmul fast float %5907, 3.000000e+00
  %5914 = fmul fast float %5910, 3.000000e+00
  %5915 = fmul fast float %5909, 6.000000e+00
  %5916 = fsub fast float %5914, %5915
  %5917 = fadd fast float %5916, 4.000000e+00
  %5918 = fmul fast float %5917, 0x3FC5555560000000
  %5919 = fmul fast float %5910, -3.000000e+00
  %5920 = fadd fast float %5909, %5907
  %5921 = fmul fast float %5920, 3.000000e+00
  %5922 = fadd fast float %5919, 1.000000e+00
  %5923 = fadd fast float %5922, %5921
  %5924 = fmul fast float %5910, 0x3FC5555560000000
  %5925 = fmul fast float %5908, %5908
  %5926 = fmul fast float %5925, %5908
  %5927 = fsub fast float 3.000000e+00, %5908
  %5928 = fmul fast float %5925, %5927
  %5929 = fmul fast float %5908, 3.000000e+00
  %5930 = fmul fast float %5926, 3.000000e+00
  %5931 = fmul fast float %5925, 6.000000e+00
  %5932 = fsub fast float %5930, %5931
  %5933 = fadd fast float %5932, 4.000000e+00
  %5934 = fmul fast float %5933, 0x3FC5555560000000
  %5935 = fmul fast float %5926, -3.000000e+00
  %5936 = fadd fast float %5925, %5908
  %5937 = fmul fast float %5936, 3.000000e+00
  %5938 = fadd fast float %5935, 1.000000e+00
  %5939 = fadd fast float %5938, %5937
  %5940 = fmul fast float %5926, 0x3FC5555560000000
  %5941 = fadd fast float %5907, 1.000000e+00
  %5942 = fsub fast float 1.000000e+00, %5913
  %5943 = fadd fast float %5942, %5912
  %5944 = fadd fast float %5943, %5917
  %5945 = fmul fast float %5944, 0x3FC5555560000000
  %5946 = fdiv fast float %5918, %5945
  %5947 = fsub fast float %5941, %5946
  %5948 = fsub fast float 1.000000e+00, %5907
  %5949 = fadd fast float %5923, %5910
  %5950 = fmul fast float %5949, 0x3FC5555560000000
  %5951 = fdiv fast float %5924, %5950
  %5952 = fadd fast float %5948, %5951
  %5953 = fadd fast float %5908, 1.000000e+00
  %5954 = fsub fast float 1.000000e+00, %5929
  %5955 = fadd fast float %5954, %5928
  %5956 = fadd fast float %5955, %5933
  %5957 = fmul fast float %5956, 0x3FC5555560000000
  %5958 = fdiv fast float %5934, %5957
  %5959 = fsub fast float %5953, %5958
  %5960 = fsub fast float 1.000000e+00, %5908
  %5961 = fadd fast float %5939, %5926
  %5962 = fmul fast float %5961, 0x3FC5555560000000
  %5963 = fdiv fast float %5940, %5962
  %5964 = fadd fast float %5963, %5960
  %5965 = fmul fast float %5947, %5901
  %5966 = fsub fast float %5828, %5965
  %5967 = fmul fast float %5952, %5901
  %5968 = fadd fast float %5967, %5828
  %5969 = fmul fast float %5964, %5902
  %5970 = fadd fast float %5969, %5829
  %5971 = fmul fast float %5959, %5902
  %5972 = fsub fast float %5829, %5971
  %5973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5966, float %5972, float %5890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5974 = extractvalue %dx.types.ResRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.ResRet.f32 %5973, 1
  %5976 = extractvalue %dx.types.ResRet.f32 %5973, 2
  %5977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5968, float %5972, float %5890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = extractvalue %dx.types.ResRet.f32 %5977, 2
  %5981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5966, float %5970, float %5890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.ResRet.f32 %5981, 2
  %5985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5968, float %5970, float %5890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  %5989 = fsub fast float %5982, %5974
  %5990 = fsub fast float %5983, %5975
  %5991 = fsub fast float %5984, %5976
  %5992 = fmul fast float %5989, %5962
  %5993 = fmul fast float %5990, %5962
  %5994 = fmul fast float %5991, %5962
  %5995 = fadd fast float %5992, %5974
  %5996 = fadd fast float %5993, %5975
  %5997 = fadd fast float %5994, %5976
  %5998 = fsub fast float %5986, %5978
  %5999 = fsub fast float %5987, %5979
  %6000 = fsub fast float %5988, %5980
  %6001 = fmul fast float %5998, %5962
  %6002 = fmul fast float %5999, %5962
  %6003 = fmul fast float %6000, %5962
  %6004 = fsub fast float %5978, %5995
  %6005 = fadd fast float %6004, %6001
  %6006 = fsub fast float %5979, %5996
  %6007 = fadd fast float %6006, %6002
  %6008 = fsub fast float %5980, %5997
  %6009 = fadd fast float %6008, %6003
  %6010 = fmul fast float %6005, %5950
  %6011 = fmul fast float %6007, %5950
  %6012 = fmul fast float %6009, %5950
  %6013 = fadd fast float %6010, %5995
  %6014 = fadd fast float %6011, %5996
  %6015 = fadd fast float %6012, %5997
  %6016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6017 = extractvalue %dx.types.CBufRet.f32 %6016, 1
  %6018 = fmul fast float %6013, %6017
  %6019 = fmul fast float %6014, %6017
  %6020 = fmul fast float %6015, %6017
  br label %6021

; <label>:6021                                    ; preds = %5853, %5822
  %6022 = phi float [ %5892, %5853 ], [ 1.000000e+00, %5822 ]
  %6023 = phi float [ %5893, %5853 ], [ 1.000000e+00, %5822 ]
  %6024 = phi float [ %5894, %5853 ], [ 1.000000e+00, %5822 ]
  %6025 = phi float [ %6018, %5853 ], [ 0.000000e+00, %5822 ]
  %6026 = phi float [ %6019, %5853 ], [ 0.000000e+00, %5822 ]
  %6027 = phi float [ %6020, %5853 ], [ 0.000000e+00, %5822 ]
  %6028 = fmul fast float %6025, %5795
  %6029 = fmul fast float %6026, %5797
  %6030 = fmul fast float %6027, %5799
  %6031 = call float @dx.op.dot3.f32(i32 55, float %6022, float %6023, float %6024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6032 = call float @dx.op.dot3.f32(i32 55, float %6028, float %6029, float %6030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = select i1 %228, float %6031, float %6022
  %6034 = select i1 %228, float %6031, float %6023
  %6035 = select i1 %228, float 1.000000e+00, float %6024
  %6036 = select i1 %228, float %6032, float %6028
  %6037 = select i1 %228, float 0.000000e+00, float %6029
  %6038 = select i1 %228, float 0.000000e+00, float %6030
  %6039 = fmul fast float %6033, %5812
  %6040 = fmul fast float %6034, %5813
  %6041 = fmul fast float %6035, %5814
  %6042 = fadd fast float %6039, %6036
  %6043 = fadd fast float %6040, %6037
  %6044 = fadd fast float %6038, %6041
  %6045 = fmul fast float %6033, %5788
  %6046 = fmul fast float %6034, %5789
  %6047 = fmul fast float %6035, %5790
  %6048 = fmul fast float %90, 2.000000e+00
  %6049 = fmul fast float %6048, %5824
  %6050 = fmul fast float %91, 2.000000e+00
  %6051 = fmul fast float %6050, %5825
  %6052 = fsub fast float 1.000000e+00, %6049
  %6053 = fsub fast float 1.000000e+00, %6051
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 0
  %6056 = extractvalue %dx.types.CBufRet.f32 %6054, 1
  %6057 = extractvalue %dx.types.CBufRet.f32 %6054, 2
  %6058 = fmul fast float %6052, %6055
  %6059 = fmul fast float %6052, %6056
  %6060 = fmul fast float %6052, %6057
  %6061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.f32 %6061, 0
  %6063 = extractvalue %dx.types.CBufRet.f32 %6061, 1
  %6064 = extractvalue %dx.types.CBufRet.f32 %6061, 2
  %6065 = fmul fast float %6053, %6062
  %6066 = fmul fast float %6053, %6063
  %6067 = fmul fast float %6053, %6064
  %6068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.CBufRet.f32 %6068, 1
  %6071 = extractvalue %dx.types.CBufRet.f32 %6068, 2
  %6072 = fadd fast float %6065, %6069
  %6073 = fadd fast float %6072, %6058
  %6074 = fadd fast float %6066, %6070
  %6075 = fadd fast float %6074, %6059
  %6076 = fadd fast float %6067, %6071
  %6077 = fadd fast float %6076, %6060
  %6078 = fmul fast float %6073, %188
  %6079 = fmul fast float %6075, %188
  %6080 = fmul fast float %6077, %188
  br label %6081

; <label>:6081                                    ; preds = %6021, %5787
  %6082 = phi float [ %6078, %6021 ], [ %137, %5787 ]
  %6083 = phi float [ %6079, %6021 ], [ %138, %5787 ]
  %6084 = phi float [ %6080, %6021 ], [ %139, %5787 ]
  %6085 = phi float [ %188, %6021 ], [ %81, %5787 ]
  %6086 = phi float [ %6042, %6021 ], [ %5812, %5787 ]
  %6087 = phi float [ %6043, %6021 ], [ %5813, %5787 ]
  %6088 = phi float [ %6044, %6021 ], [ %5814, %5787 ]
  %6089 = phi float [ %6045, %6021 ], [ %5788, %5787 ]
  %6090 = phi float [ %6046, %6021 ], [ %5789, %5787 ]
  %6091 = phi float [ %6047, %6021 ], [ %5790, %5787 ]
  %6092 = phi float [ %6022, %6021 ], [ 1.000000e+00, %5787 ]
  br i1 %5821, label %7247, label %6093

; <label>:6093                                    ; preds = %6081
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  %6096 = extractvalue %dx.types.CBufRet.f32 %6094, 1
  %6097 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6098 = extractvalue %dx.types.CBufRet.f32 %6094, 3
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6102 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6103 = extractvalue %dx.types.CBufRet.f32 %6099, 3
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.CBufRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.CBufRet.f32 %6104, 2
  %6108 = extractvalue %dx.types.CBufRet.f32 %6104, 3
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.CBufRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.CBufRet.f32 %6109, 2
  %6113 = extractvalue %dx.types.CBufRet.f32 %6109, 3
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 3
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 3
  %6118 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6119 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6120 = extractvalue %dx.types.CBufRet.f32 %6116, 2
  %6121 = fcmp fast olt float %6120, -5.000000e-01
  %6122 = call float @dx.op.dot3.f32(i32 55, float %6082, float %6083, float %6084, float %6082, float %6083, float %6084)  ; Dot3(ax,ay,az,bx,by,bz)
  %6123 = call float @dx.op.unary.f32(i32 25, float %6122)  ; Rsqrt(value)
  %6124 = fmul fast float %6123, %6122
  %6125 = fmul fast float %6123, %6082
  %6126 = fmul fast float %6123, %6083
  %6127 = fmul fast float %6123, %6084
  %6128 = fadd fast float %6124, %6098
  %6129 = call float @dx.op.dot3.f32(i32 55, float %6125, float %6126, float %6127, float %6095, float %6096, float %6097)  ; Dot3(ax,ay,az,bx,by,bz)
  %6130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.i32 %6130, 1
  %6132 = and i32 %6131, 1
  %6133 = icmp ne i32 %6132, 0
  %6134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6135 = extractvalue %dx.types.CBufRet.f32 %6134, 2
  %6136 = fcmp fast ogt float %6135, 0.000000e+00
  %6137 = and i1 %6133, %6136
  br i1 %6137, label %6138, label %6544, !dx.controlflow.hints !135

; <label>:6138                                    ; preds = %6093
  %6139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6139, 3
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 2
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6145 = fsub fast float %6142, %6144
  %6146 = and i32 %6131, 2
  %6147 = extractvalue %dx.types.CBufRet.i32 %6130, 0
  %6148 = call i32 @dx.op.binary.i32(i32 40, i32 %6147, i32 3)  ; UMin(a,b)
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6153 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6154 = fsub fast float %6150, %6152
  %6155 = fsub fast float %6151, %6153
  %6156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  %6158 = fcmp fast ogt float %6157, 0.000000e+00
  %6159 = fsub fast float -0.000000e+00, %6154
  %6160 = fsub fast float -0.000000e+00, %6155
  %6161 = call float @dx.op.dot2.f32(i32 54, float %6125, float %6126, float %6125, float %6126)  ; Dot2(ax,ay,bx,by)
  %6162 = call float @dx.op.dot2.f32(i32 54, float %6125, float %6126, float %6159, float %6160)  ; Dot2(ax,ay,bx,by)
  %6163 = fmul fast float %6162, 2.000000e+00
  %6164 = call float @dx.op.dot2.f32(i32 54, float %6159, float %6160, float %6159, float %6160)  ; Dot2(ax,ay,bx,by)
  %6165 = fmul fast float %6157, %6157
  %6166 = fsub fast float %6164, %6165
  %6167 = fmul fast float %6163, %6163
  %6168 = fmul fast float %6161, 4.000000e+00
  %6169 = fmul fast float %6168, %6166
  %6170 = fsub fast float %6167, %6169
  %6171 = fcmp fast ogt float %6170, 0.000000e+00
  br i1 %6171, label %6172, label %6187

; <label>:6172                                    ; preds = %6138
  %6173 = fcmp fast ogt float %6163, 0.000000e+00
  %6174 = call float @dx.op.unary.f32(i32 24, float %6170)  ; Sqrt(value)
  %6175 = fsub fast float -0.000000e+00, %6174
  %6176 = select i1 %6173, float %6174, float %6175
  %6177 = fadd fast float %6176, %6163
  %6178 = fmul float %6177, -5.000000e-01
  %6179 = fdiv fast float %6178, %6161
  %6180 = call float @dx.op.binary.f32(i32 35, float %6179, float 0.000000e+00)  ; FMax(a,b)
  %6181 = call float @dx.op.binary.f32(i32 36, float %6124, float %6180)  ; FMin(a,b)
  %6182 = fdiv fast float %6166, %6178
  %6183 = call float @dx.op.binary.f32(i32 35, float %6182, float 0.000000e+00)  ; FMax(a,b)
  %6184 = call float @dx.op.binary.f32(i32 36, float %6124, float %6183)  ; FMin(a,b)
  %6185 = call float @dx.op.binary.f32(i32 36, float %6181, float %6184)  ; FMin(a,b)
  %6186 = call float @dx.op.binary.f32(i32 35, float %6181, float %6184)  ; FMax(a,b)
  br label %6187

; <label>:6187                                    ; preds = %6172, %6138
  %6188 = phi float [ %6186, %6172 ], [ -1.000000e+00, %6138 ]
  %6189 = phi float [ %6185, %6172 ], [ -1.000000e+00, %6138 ]
  %6190 = phi i1 [ true, %6172 ], [ false, %6138 ]
  %6191 = and i1 %6158, %6190
  br i1 %6191, label %6192, label %6194

; <label>:6192                                    ; preds = %6187
  %6193 = fcmp fast oeq float %6189, %6188
  br i1 %6193, label %6497, label %6195

; <label>:6194                                    ; preds = %6187
  br i1 %6158, label %6497, label %6195

; <label>:6195                                    ; preds = %6194, %6192
  %6196 = phi float [ %6124, %6194 ], [ %6188, %6192 ]
  %6197 = phi float [ 0.000000e+00, %6194 ], [ %6189, %6192 ]
  %6198 = icmp ne i32 %6146, 0
  %6199 = fmul fast float %6196, %6127
  %6200 = fadd fast float %6199, %6140
  %6201 = fmul fast float %6200, %6196
  %6202 = select i1 %6198, float 0.000000e+00, float %6201
  %6203 = fcmp fast oeq float %6127, 0.000000e+00
  %6204 = fdiv fast float %6145, %6127
  %6205 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6204)  ; FMax(a,b)
  %6206 = select i1 %6203, float %6196, float %6205
  %6207 = call float @dx.op.binary.f32(i32 36, float %6196, float %6206)  ; FMin(a,b)
  %6208 = fcmp fast ogt float %6127, 0.000000e+00
  %6209 = fcmp fast olt float %6145, 0.000000e+00
  br i1 %6208, label %6210, label %6267

; <label>:6210                                    ; preds = %6195
  %6211 = icmp eq i32 %6146, 0
  br i1 %6209, label %6212, label %6256

; <label>:6212                                    ; preds = %6210
  %6213 = select i1 %6211, float %6196, float 0.000000e+00
  %6214 = fsub fast float -0.000000e+00, %6213
  %6215 = call float @dx.op.unary.f32(i32 6, float %6214)  ; FAbs(value)
  %6216 = fmul fast float %6213, %6127
  %6217 = fadd fast float %6216, %6140
  %6218 = fmul fast float %6215, %6217
  %6219 = fsub fast float %6202, %6218
  %6220 = fsub fast float %6196, %6215
  %6221 = select i1 %6211, float %6220, float 0.000000e+00
  %6222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.f32 %6222, 0
  %6224 = extractvalue %dx.types.CBufRet.f32 %6222, 1
  %6225 = extractvalue %dx.types.CBufRet.f32 %6222, 2
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6228 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6229 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %6230 = extractvalue %dx.types.CBufRet.f32 %6226, 3
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 3
  %6233 = call float @dx.op.binary.f32(i32 36, float %6219, float %6232)  ; FMin(a,b)
  %6234 = fmul fast float %6230, %6221
  %6235 = call float @dx.op.unary.f32(i32 7, float %6234)  ; Saturate(value)
  %6236 = fsub fast float %6227, %6223
  %6237 = fsub fast float %6228, %6224
  %6238 = fsub fast float %6229, %6225
  %6239 = fmul fast float %6235, %6236
  %6240 = fmul fast float %6235, %6237
  %6241 = fmul fast float %6235, %6238
  %6242 = fadd fast float %6239, %6223
  %6243 = fadd fast float %6240, %6224
  %6244 = fadd fast float %6241, %6225
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = fadd fast float %6247, %6246
  %6249 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6251 = extractvalue %dx.types.CBufRet.f32 %6245, 3
  %6252 = fadd fast float %6251, %6250
  %6253 = call float @dx.op.unary.f32(i32 7, float %6252)  ; Saturate(value)
  %6254 = fmul fast float %6249, %6233
  %6255 = fmul fast float %6254, %6253
  br label %6497

; <label>:6256                                    ; preds = %6210
  br i1 %6211, label %6257, label %6278

; <label>:6257                                    ; preds = %6256
  %6258 = call float @dx.op.binary.f32(i32 36, float %6207, float %6197)  ; FMin(a,b)
  %6259 = fsub fast float %6207, %6258
  %6260 = fsub fast float %6259, %6196
  %6261 = call float @dx.op.unary.f32(i32 6, float %6260)  ; FAbs(value)
  %6262 = fadd fast float %6259, %6196
  %6263 = fmul fast float %6262, %6127
  %6264 = fadd fast float %6263, %6140
  %6265 = fmul fast float %6264, %6261
  %6266 = fsub fast float %6202, %6265
  br label %6278

; <label>:6267                                    ; preds = %6195
  br i1 %6209, label %6268, label %6278

; <label>:6268                                    ; preds = %6267
  %6269 = call float @dx.op.binary.f32(i32 35, float %6197, float %6207)  ; FMax(a,b)
  %6270 = icmp eq i32 %6146, 0
  %6271 = select i1 %6270, float %6207, float 0.000000e+00
  %6272 = fsub fast float -0.000000e+00, %6271
  %6273 = call float @dx.op.unary.f32(i32 6, float %6272)  ; FAbs(value)
  %6274 = fmul fast float %6271, %6127
  %6275 = fadd fast float %6274, %6140
  %6276 = fmul fast float %6273, %6275
  %6277 = fsub fast float %6202, %6276
  br label %6278

; <label>:6278                                    ; preds = %6268, %6267, %6257, %6256
  %6279 = phi float [ %6197, %6256 ], [ %6197, %6257 ], [ %6269, %6268 ], [ %6197, %6267 ]
  %6280 = phi float [ 0.000000e+00, %6256 ], [ %6261, %6257 ], [ %6273, %6268 ], [ 0.000000e+00, %6267 ]
  %6281 = phi float [ %6202, %6256 ], [ %6266, %6257 ], [ %6277, %6268 ], [ %6202, %6267 ]
  %6282 = phi float [ %6207, %6256 ], [ %6207, %6257 ], [ %6196, %6268 ], [ %6196, %6267 ]
  %6283 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %6283, align 4, !tbaa !136, !noalias !138
  %6284 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %6284, align 4, !tbaa !136, !noalias !138
  %6285 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %6285, align 4, !tbaa !136, !noalias !138
  %6286 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %6286, align 4, !tbaa !136, !noalias !138
  %6287 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %6287, align 4, !tbaa !136, !noalias !138
  %6288 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %6288, align 4, !tbaa !136, !noalias !138
  %6289 = icmp sgt i32 %6148, 0
  br i1 %6289, label %6290, label %6351

; <label>:6290                                    ; preds = %6278
  br label %6291

; <label>:6291                                    ; preds = %6340, %6290
  %6292 = phi i32 [ %6341, %6340 ], [ 0, %6290 ]
  %6293 = phi i32 [ %6342, %6340 ], [ 0, %6290 ]
  %6294 = add nuw i32 %6293, 171
  %6295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %6294)  ; CBufferLoadLegacy(handle,regIndex)
  %6296 = extractvalue %dx.types.CBufRet.f32 %6295, 0
  %6297 = extractvalue %dx.types.CBufRet.f32 %6295, 1
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.CBufRet.f32 %6298, 1
  %6301 = fsub fast float %6296, %6299
  %6302 = fsub fast float %6297, %6300
  %6303 = extractvalue %dx.types.CBufRet.f32 %6295, 2
  %6304 = fsub fast float -0.000000e+00, %6301
  %6305 = fsub fast float -0.000000e+00, %6302
  %6306 = call float @dx.op.dot2.f32(i32 54, float %6125, float %6126, float %6304, float %6305)  ; Dot2(ax,ay,bx,by)
  %6307 = fmul fast float %6306, 2.000000e+00
  %6308 = call float @dx.op.dot2.f32(i32 54, float %6304, float %6305, float %6304, float %6305)  ; Dot2(ax,ay,bx,by)
  %6309 = fmul fast float %6303, %6303
  %6310 = fsub fast float %6308, %6309
  %6311 = fmul fast float %6307, %6307
  %6312 = fmul fast float %6168, %6310
  %6313 = fsub fast float %6311, %6312
  %6314 = fcmp fast ogt float %6313, 0.000000e+00
  br i1 %6314, label %6315, label %6330

; <label>:6315                                    ; preds = %6291
  %6316 = fcmp fast ogt float %6307, 0.000000e+00
  %6317 = call float @dx.op.unary.f32(i32 24, float %6313)  ; Sqrt(value)
  %6318 = fsub fast float -0.000000e+00, %6317
  %6319 = select i1 %6316, float %6317, float %6318
  %6320 = fadd fast float %6319, %6307
  %6321 = fmul float %6320, -5.000000e-01
  %6322 = fdiv fast float %6321, %6161
  %6323 = call float @dx.op.binary.f32(i32 35, float %6322, float 0.000000e+00)  ; FMax(a,b)
  %6324 = call float @dx.op.binary.f32(i32 36, float %6196, float %6323)  ; FMin(a,b)
  %6325 = fdiv fast float %6310, %6321
  %6326 = call float @dx.op.binary.f32(i32 35, float %6325, float 0.000000e+00)  ; FMax(a,b)
  %6327 = call float @dx.op.binary.f32(i32 36, float %6196, float %6326)  ; FMin(a,b)
  %6328 = call float @dx.op.binary.f32(i32 36, float %6324, float %6327)  ; FMin(a,b)
  %6329 = call float @dx.op.binary.f32(i32 35, float %6324, float %6327)  ; FMax(a,b)
  br label %6330

; <label>:6330                                    ; preds = %6315, %6291
  %6331 = phi float [ %6329, %6315 ], [ -1.000000e+00, %6291 ]
  %6332 = phi float [ %6328, %6315 ], [ -1.000000e+00, %6291 ]
  %6333 = phi i1 [ true, %6315 ], [ false, %6291 ]
  br i1 %6333, label %6334, label %6340

; <label>:6334                                    ; preds = %6330
  %6335 = call float @dx.op.binary.f32(i32 35, float %6279, float %6332)  ; FMax(a,b)
  %6336 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6293
  store float %6335, float* %6336, align 4, !tbaa !136, !noalias !138
  %6337 = call float @dx.op.binary.f32(i32 35, float %6279, float %6331)  ; FMax(a,b)
  %6338 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6293
  store float %6337, float* %6338, align 4, !tbaa !136, !noalias !138
  %6339 = add nsw i32 %6292, 1
  br label %6340

; <label>:6340                                    ; preds = %6334, %6330
  %6341 = phi i32 [ %6339, %6334 ], [ %6292, %6330 ]
  %6342 = add nuw nsw i32 %6293, 1
  %6343 = icmp eq i32 %6342, %6148
  br i1 %6343, label %6344, label %6291

; <label>:6344                                    ; preds = %6340
  %6345 = load float, float* %6285, align 4, !tbaa !136, !alias.scope !154, !noalias !157
  %6346 = load float, float* %6284, align 4, !tbaa !136, !alias.scope !160, !noalias !161
  %6347 = load float, float* %6283, align 4, !tbaa !136, !alias.scope !162, !noalias !163
  %6348 = load float, float* %6288, align 4, !tbaa !136, !alias.scope !164, !noalias !167
  %6349 = load float, float* %6287, align 4, !tbaa !136, !alias.scope !170, !noalias !171
  %6350 = load float, float* %6286, align 4, !tbaa !136, !alias.scope !172, !noalias !173
  br label %6351

; <label>:6351                                    ; preds = %6344, %6278
  %6352 = phi float [ -1.000000e+00, %6278 ], [ %6350, %6344 ]
  %6353 = phi float [ -1.000000e+00, %6278 ], [ %6349, %6344 ]
  %6354 = phi float [ -1.000000e+00, %6278 ], [ %6348, %6344 ]
  %6355 = phi float [ -1.000000e+00, %6278 ], [ %6347, %6344 ]
  %6356 = phi float [ -1.000000e+00, %6278 ], [ %6346, %6344 ]
  %6357 = phi float [ -1.000000e+00, %6278 ], [ %6345, %6344 ]
  %6358 = phi i32 [ 0, %6278 ], [ %6341, %6344 ]
  %6359 = call float @dx.op.binary.f32(i32 36, float %6356, float %6357)  ; FMin(a,b)
  %6360 = call float @dx.op.binary.f32(i32 36, float %6355, float %6359)  ; FMin(a,b)
  %6361 = call float @dx.op.binary.f32(i32 35, float %6355, float %6356)  ; FMax(a,b)
  %6362 = call float @dx.op.binary.f32(i32 36, float %6361, float %6357)  ; FMin(a,b)
  %6363 = call float @dx.op.binary.f32(i32 36, float %6355, float %6356)  ; FMin(a,b)
  %6364 = call float @dx.op.binary.f32(i32 35, float %6363, float %6362)  ; FMax(a,b)
  %6365 = call float @dx.op.binary.f32(i32 35, float %6356, float %6357)  ; FMax(a,b)
  %6366 = call float @dx.op.binary.f32(i32 35, float %6355, float %6365)  ; FMax(a,b)
  store float %6360, float* %6283, align 4, !tbaa !136, !alias.scope !162, !noalias !163
  store float %6364, float* %6284, align 4, !tbaa !136, !alias.scope !160, !noalias !161
  store float %6366, float* %6285, align 4, !tbaa !136, !alias.scope !154, !noalias !157
  %6367 = call float @dx.op.binary.f32(i32 36, float %6353, float %6354)  ; FMin(a,b)
  %6368 = call float @dx.op.binary.f32(i32 36, float %6352, float %6367)  ; FMin(a,b)
  %6369 = call float @dx.op.binary.f32(i32 35, float %6352, float %6353)  ; FMax(a,b)
  %6370 = call float @dx.op.binary.f32(i32 36, float %6369, float %6354)  ; FMin(a,b)
  %6371 = call float @dx.op.binary.f32(i32 36, float %6352, float %6353)  ; FMin(a,b)
  %6372 = call float @dx.op.binary.f32(i32 35, float %6371, float %6370)  ; FMax(a,b)
  %6373 = call float @dx.op.binary.f32(i32 35, float %6353, float %6354)  ; FMax(a,b)
  %6374 = call float @dx.op.binary.f32(i32 35, float %6352, float %6373)  ; FMax(a,b)
  store float %6368, float* %6286, align 4, !tbaa !136, !alias.scope !172, !noalias !173
  store float %6372, float* %6287, align 4, !tbaa !136, !alias.scope !170, !noalias !171
  store float %6374, float* %6288, align 4, !tbaa !136, !alias.scope !164, !noalias !167
  %6375 = sub nsw i32 3, %6358
  %6376 = icmp sgt i32 %6375, 2
  br i1 %6376, label %6377, label %6415

; <label>:6377                                    ; preds = %6351
  %6378 = icmp eq i32 %6146, 0
  %6379 = fsub fast float %6196, %6280
  %6380 = select i1 %6378, float %6379, float %6280
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 0
  %6387 = extractvalue %dx.types.CBufRet.f32 %6385, 1
  %6388 = extractvalue %dx.types.CBufRet.f32 %6385, 2
  %6389 = extractvalue %dx.types.CBufRet.f32 %6385, 3
  %6390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6391 = extractvalue %dx.types.CBufRet.f32 %6390, 3
  %6392 = call float @dx.op.binary.f32(i32 36, float %6281, float %6391)  ; FMin(a,b)
  %6393 = fmul fast float %6389, %6380
  %6394 = call float @dx.op.unary.f32(i32 7, float %6393)  ; Saturate(value)
  %6395 = fsub fast float %6386, %6382
  %6396 = fsub fast float %6387, %6383
  %6397 = fsub fast float %6388, %6384
  %6398 = fmul fast float %6394, %6395
  %6399 = fmul fast float %6394, %6396
  %6400 = fmul fast float %6394, %6397
  %6401 = fadd fast float %6398, %6382
  %6402 = fadd fast float %6399, %6383
  %6403 = fadd fast float %6400, %6384
  %6404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6404, 0
  %6406 = extractvalue %dx.types.CBufRet.f32 %6404, 1
  %6407 = fadd fast float %6406, %6405
  %6408 = call float @dx.op.unary.f32(i32 7, float %6407)  ; Saturate(value)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6404, 2
  %6410 = extractvalue %dx.types.CBufRet.f32 %6404, 3
  %6411 = fadd fast float %6410, %6409
  %6412 = call float @dx.op.unary.f32(i32 7, float %6411)  ; Saturate(value)
  %6413 = fmul fast float %6408, %6392
  %6414 = fmul fast float %6413, %6412
  br label %6497

; <label>:6415                                    ; preds = %6351
  %6416 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6375
  %6417 = load float, float* %6416, align 4, !tbaa !136, !noalias !138
  %6418 = fcmp fast olt float %6417, %6282
  %6419 = icmp sgt i32 %6358, 0
  %6420 = and i1 %6419, %6418
  br i1 %6420, label %6421, label %6458

; <label>:6421                                    ; preds = %6415
  br label %6422

; <label>:6422                                    ; preds = %6451, %6421
  %6423 = phi float [ %6452, %6451 ], [ %6280, %6421 ]
  %6424 = phi float [ %6453, %6451 ], [ %6281, %6421 ]
  %6425 = phi float [ %6433, %6451 ], [ %6417, %6421 ]
  %6426 = phi i32 [ %6430, %6451 ], [ %6375, %6421 ]
  %6427 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %6426
  %6428 = load float, float* %6427, align 4, !tbaa !136, !noalias !138
  %6429 = icmp slt i32 %6426, 2
  %6430 = add nsw i32 %6426, 1
  %6431 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %6430
  %6432 = load float, float* %6431, align 4, !tbaa !136, !noalias !138
  %6433 = select i1 %6429, float %6432, float %6196
  %6434 = call float @dx.op.binary.f32(i32 36, float %6433, float %6428)  ; FMin(a,b)
  %6435 = call float @dx.op.binary.f32(i32 36, float %6282, float %6434)  ; FMin(a,b)
  %6436 = icmp eq i32 %6146, 0
  %6437 = fadd fast float %6435, %6425
  %6438 = fmul fast float %6437, %6127
  %6439 = fadd fast float %6438, %6140
  br i1 %6436, label %6445, label %6440

; <label>:6440                                    ; preds = %6422
  %6441 = fsub fast float %6435, %6425
  %6442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6441)  ; FMax(a,b)
  %6443 = fmul fast float %6442, %6439
  %6444 = fadd fast float %6443, %6424
  br label %6451

; <label>:6445                                    ; preds = %6422
  %6446 = fsub fast float %6425, %6435
  %6447 = call float @dx.op.unary.f32(i32 6, float %6446)  ; FAbs(value)
  %6448 = fadd fast float %6447, %6423
  %6449 = fmul fast float %6447, %6439
  %6450 = fsub fast float %6424, %6449
  br label %6451

; <label>:6451                                    ; preds = %6445, %6440
  %6452 = phi float [ %6442, %6440 ], [ %6448, %6445 ]
  %6453 = phi float [ %6444, %6440 ], [ %6450, %6445 ]
  %6454 = fcmp fast olt float %6433, %6282
  %6455 = icmp slt i32 %6430, 3
  %6456 = and i1 %6455, %6454
  br i1 %6456, label %6422, label %6457

; <label>:6457                                    ; preds = %6451
  br label %6458

; <label>:6458                                    ; preds = %6457, %6415
  %6459 = phi float [ %6280, %6415 ], [ %6452, %6457 ]
  %6460 = phi float [ %6281, %6415 ], [ %6453, %6457 ]
  %6461 = fsub fast float %6196, %6459
  %6462 = select i1 %6198, float %6459, float %6461
  %6463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.CBufRet.f32 %6463, 1
  %6466 = extractvalue %dx.types.CBufRet.f32 %6463, 2
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 0
  %6469 = extractvalue %dx.types.CBufRet.f32 %6467, 1
  %6470 = extractvalue %dx.types.CBufRet.f32 %6467, 2
  %6471 = extractvalue %dx.types.CBufRet.f32 %6467, 3
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 3
  %6474 = call float @dx.op.binary.f32(i32 36, float %6460, float %6473)  ; FMin(a,b)
  %6475 = fmul fast float %6471, %6462
  %6476 = call float @dx.op.unary.f32(i32 7, float %6475)  ; Saturate(value)
  %6477 = fsub fast float %6468, %6464
  %6478 = fsub fast float %6469, %6465
  %6479 = fsub fast float %6470, %6466
  %6480 = fmul fast float %6476, %6477
  %6481 = fmul fast float %6476, %6478
  %6482 = fmul fast float %6476, %6479
  %6483 = fadd fast float %6480, %6464
  %6484 = fadd fast float %6481, %6465
  %6485 = fadd fast float %6482, %6466
  %6486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6486, 0
  %6488 = extractvalue %dx.types.CBufRet.f32 %6486, 1
  %6489 = fadd fast float %6488, %6487
  %6490 = call float @dx.op.unary.f32(i32 7, float %6489)  ; Saturate(value)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6486, 2
  %6492 = extractvalue %dx.types.CBufRet.f32 %6486, 3
  %6493 = fadd fast float %6492, %6491
  %6494 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6495 = fmul fast float %6490, %6474
  %6496 = fmul fast float %6495, %6494
  br label %6497

; <label>:6497                                    ; preds = %6458, %6377, %6212, %6194, %6192
  %6498 = phi float [ %6221, %6212 ], [ %6380, %6377 ], [ %6462, %6458 ], [ 0.000000e+00, %6192 ], [ 0.000000e+00, %6194 ]
  %6499 = phi float [ %6255, %6212 ], [ %6414, %6377 ], [ %6496, %6458 ], [ 0.000000e+00, %6192 ], [ 0.000000e+00, %6194 ]
  %6500 = phi float [ %6242, %6212 ], [ %6401, %6377 ], [ %6483, %6458 ], [ 0.000000e+00, %6192 ], [ 0.000000e+00, %6194 ]
  %6501 = phi float [ %6243, %6212 ], [ %6402, %6377 ], [ %6484, %6458 ], [ 0.000000e+00, %6192 ], [ 0.000000e+00, %6194 ]
  %6502 = phi float [ %6244, %6212 ], [ %6403, %6377 ], [ %6485, %6458 ], [ 0.000000e+00, %6192 ], [ 0.000000e+00, %6194 ]
  %6503 = fmul fast float %6135, %6499
  %6504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.f32 %6504, 2
  %6506 = fsub fast float %6142, %6505
  %6507 = fcmp fast olt float %6503, -2.000000e+01
  %6508 = call float @dx.op.unary.f32(i32 21, float %6503)  ; Exp(value)
  %6509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6510 = extractvalue %dx.types.CBufRet.f32 %6509, 2
  %6511 = extractvalue %dx.types.CBufRet.f32 %6509, 3
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 2
  %6514 = fmul fast float %6511, %6506
  %6515 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6516 = fsub fast float 1.000000e+00, %6515
  %6517 = fmul fast float %6127, 5.000000e-01
  %6518 = fadd fast float %6517, 5.000000e-01
  %6519 = call float @dx.op.unary.f32(i32 7, float %6518)  ; Saturate(value)
  %6520 = fsub fast float 1.000000e+00, %6519
  %6521 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6516)  ; FMax(a,b)
  %6522 = fdiv fast float %6520, %6521
  %6523 = fsub fast float %6506, %6084
  %6524 = call float @dx.op.unary.f32(i32 6, float %6523)  ; FAbs(value)
  %6525 = fmul fast float %6524, %6510
  %6526 = call float @dx.op.unary.f32(i32 7, float %6522)  ; Saturate(value)
  %6527 = fsub fast float 1.000000e+00, %6525
  %6528 = fmul fast float %6527, %6526
  %6529 = fadd fast float %6528, %6525
  %6530 = fmul fast float %6513, %6506
  %6531 = call float @dx.op.unary.f32(i32 7, float %6530)  ; Saturate(value)
  %6532 = fsub fast float 1.000000e+00, %6529
  %6533 = fmul fast float %6532, %6531
  %6534 = fadd fast float %6533, %6529
  %6535 = call float @dx.op.unary.f32(i32 7, float %6534)  ; Saturate(value)
  %6536 = fadd fast float %6508, -1.000000e+00
  %6537 = select i1 %6507, float -1.000000e+00, float %6536
  %6538 = fmul fast float %6535, %6537
  %6539 = fadd fast float %6538, 1.000000e+00
  %6540 = fsub fast float -0.000000e+00, %6538
  %6541 = fmul fast float %6500, %6540
  %6542 = fmul fast float %6501, %6540
  %6543 = fmul fast float %6502, %6540
  br label %6544

; <label>:6544                                    ; preds = %6497, %6093
  %6545 = phi float [ %6498, %6497 ], [ 0.000000e+00, %6093 ]
  %6546 = phi float [ %6539, %6497 ], [ 1.000000e+00, %6093 ]
  %6547 = phi float [ %6541, %6497 ], [ 0.000000e+00, %6093 ]
  %6548 = phi float [ %6542, %6497 ], [ 0.000000e+00, %6093 ]
  %6549 = phi float [ %6543, %6497 ], [ 0.000000e+00, %6093 ]
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 1
  %6552 = fsub fast float 1.000000e+00, %6546
  %6553 = fmul fast float %6552, %6128
  %6554 = fmul fast float %6553, %6551
  %6555 = fsub fast float %6128, %6554
  br i1 %6121, label %6556, label %6585, !dx.controlflow.hints !174

; <label>:6556                                    ; preds = %6544
  %6557 = fmul fast float %6129, %6118
  %6558 = fadd fast float %6557, %6119
  %6559 = call float @dx.op.unary.f32(i32 7, float %6558)  ; Saturate(value)
  %6560 = fmul fast float %6100, %6555
  %6561 = fsub fast float -0.000000e+00, %6560
  %6562 = fmul fast float %6101, %6555
  %6563 = fsub fast float -0.000000e+00, %6562
  %6564 = call float @dx.op.unary.f32(i32 21, float %6561)  ; Exp(value)
  %6565 = call float @dx.op.unary.f32(i32 21, float %6563)  ; Exp(value)
  %6566 = call float @dx.op.binary.f32(i32 35, float %6108, float %6564)  ; FMax(a,b)
  %6567 = call float @dx.op.binary.f32(i32 35, float %6108, float %6565)  ; FMax(a,b)
  %6568 = fsub fast float %6567, %6566
  %6569 = fmul fast float %6568, %6559
  %6570 = fadd fast float %6569, %6566
  %6571 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6572 = fsub fast float %6105, %6110
  %6573 = fsub fast float %6106, %6111
  %6574 = fsub fast float %6107, %6112
  %6575 = fmul fast float %6559, %6572
  %6576 = fmul fast float %6559, %6573
  %6577 = fmul fast float %6559, %6574
  %6578 = fadd fast float %6575, %6110
  %6579 = fadd fast float %6576, %6111
  %6580 = fadd fast float %6577, %6112
  %6581 = fsub fast float 1.000000e+00, %6571
  %6582 = fmul fast float %6581, %6578
  %6583 = fmul fast float %6581, %6579
  %6584 = fmul fast float %6581, %6580
  br label %6644

; <label>:6585                                    ; preds = %6544
  %6586 = fmul fast float %6555, %6117
  %6587 = call float @dx.op.unary.f32(i32 7, float %6586)  ; Saturate(value)
  %6588 = fsub fast float 2.000000e+00, %6587
  %6589 = fmul fast float %6587, 9.921875e-01
  %6590 = fmul fast float %6589, %6588
  %6591 = fadd fast float %6590, 3.906250e-03
  %6592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %6591, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6593 = extractvalue %dx.types.ResRet.f32 %6592, 0
  %6594 = fsub fast float %6587, %6593
  %6595 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6594)  ; FMax(a,b)
  %6596 = fmul fast float %6103, %6084
  %6597 = call float @dx.op.unary.f32(i32 6, float %6596)  ; FAbs(value)
  %6598 = fcmp fast ogt float %6597, 0x3EB0C6F7A0000000
  br i1 %6598, label %6599, label %6605, !dx.controlflow.hints !175

; <label>:6599                                    ; preds = %6585
  %6600 = fmul fast float %6596, 0xBFF7154760000000
  %6601 = call float @dx.op.unary.f32(i32 21, float %6600)  ; Exp(value)
  %6602 = fsub fast float 1.000000e+00, %6601
  %6603 = fdiv fast float %6602, %6596
  %6604 = fmul fast float %6603, %6113
  br label %6605

; <label>:6605                                    ; preds = %6599, %6585
  %6606 = phi float [ %6604, %6599 ], [ %6113, %6585 ]
  %6607 = fadd fast float %6606, %6115
  %6608 = fmul fast float %6607, %6595
  %6609 = fmul fast float %6100, %6608
  %6610 = fsub fast float -0.000000e+00, %6609
  %6611 = fmul fast float %6101, %6608
  %6612 = fsub fast float -0.000000e+00, %6611
  %6613 = fmul fast float %6102, %6608
  %6614 = fsub fast float -0.000000e+00, %6613
  %6615 = call float @dx.op.unary.f32(i32 21, float %6610)  ; Exp(value)
  %6616 = call float @dx.op.unary.f32(i32 21, float %6612)  ; Exp(value)
  %6617 = call float @dx.op.unary.f32(i32 21, float %6614)  ; Exp(value)
  %6618 = fmul fast float %6129, %6129
  %6619 = fadd fast float %6618, 1.000000e+00
  %6620 = fmul fast float %6619, 0x3FAE8EC8A0000000
  %6621 = fmul fast float %6620, %6110
  %6622 = fmul fast float %6620, %6111
  %6623 = fmul fast float %6620, %6112
  %6624 = fmul fast float %6129, %6108
  %6625 = fsub fast float 1.000000e+00, %6624
  %6626 = fmul fast float %6108, %6108
  %6627 = fsub fast float 1.000000e+00, %6626
  %6628 = fmul fast float %6627, 0x3FB45F3060000000
  %6629 = fmul fast float %6625, %6625
  %6630 = fdiv fast float 1.000000e+00, %6629
  %6631 = fmul fast float %6628, %6630
  %6632 = fmul fast float %6631, %6105
  %6633 = fmul fast float %6631, %6106
  %6634 = fmul fast float %6631, %6107
  %6635 = fadd fast float %6632, %6621
  %6636 = fadd fast float %6633, %6622
  %6637 = fadd fast float %6634, %6623
  %6638 = fsub fast float 1.000000e+00, %6615
  %6639 = fsub fast float 1.000000e+00, %6616
  %6640 = fsub fast float 1.000000e+00, %6617
  %6641 = fmul fast float %6635, %6638
  %6642 = fmul fast float %6636, %6639
  %6643 = fmul fast float %6637, %6640
  br label %6644

; <label>:6644                                    ; preds = %6605, %6556
  %6645 = phi float [ %6582, %6556 ], [ %6641, %6605 ]
  %6646 = phi float [ %6583, %6556 ], [ %6642, %6605 ]
  %6647 = phi float [ %6584, %6556 ], [ %6643, %6605 ]
  %6648 = phi float [ %6571, %6556 ], [ %6615, %6605 ]
  %6649 = phi float [ %6571, %6556 ], [ %6616, %6605 ]
  %6650 = phi float [ %6571, %6556 ], [ %6617, %6605 ]
  br i1 %6137, label %6651, label %6849, !dx.controlflow.hints !176

; <label>:6651                                    ; preds = %6644
  %6652 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6653 = fmul fast float %6652, %6552
  %6654 = fsub fast float %6547, %6645
  %6655 = fsub fast float %6548, %6646
  %6656 = fsub fast float %6549, %6647
  %6657 = fmul fast float %6653, %6654
  %6658 = fmul fast float %6653, %6655
  %6659 = fmul fast float %6653, %6656
  %6660 = fadd fast float %6657, %6645
  %6661 = fadd fast float %6658, %6646
  %6662 = fadd fast float %6659, %6647
  %6663 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6648)  ; FMax(a,b)
  %6664 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6649)  ; FMax(a,b)
  %6665 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6650)  ; FMax(a,b)
  %6666 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6546)  ; FMax(a,b)
  %6667 = call float @dx.op.binary.f32(i32 35, float %6545, float %6555)  ; FMax(a,b)
  %6668 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6667)  ; FMax(a,b)
  %6669 = fdiv fast float %6545, %6668
  %6670 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6671 = fdiv fast float %6555, %6668
  %6672 = call float @dx.op.unary.f32(i32 7, float %6671)  ; Saturate(value)
  %6673 = fcmp fast une float %6666, 1.000000e+00
  br i1 %6673, label %6674, label %6687, !dx.controlflow.hints !177

; <label>:6674                                    ; preds = %6651
  %6675 = call float @dx.op.unary.f32(i32 23, float %6666)  ; Log(value)
  %6676 = fmul fast float %6675, 0x3FE62E4300000000
  %6677 = fmul fast float %6547, %6676
  %6678 = fsub fast float -0.000000e+00, %6677
  %6679 = fmul fast float %6548, %6676
  %6680 = fsub fast float -0.000000e+00, %6679
  %6681 = fmul fast float %6549, %6676
  %6682 = fsub fast float -0.000000e+00, %6681
  %6683 = fsub fast float 1.000000e+00, %6666
  %6684 = fdiv fast float %6678, %6683
  %6685 = fdiv fast float %6680, %6683
  %6686 = fdiv fast float %6682, %6683
  br label %6687

; <label>:6687                                    ; preds = %6674, %6651
  %6688 = phi float [ %6684, %6674 ], [ %6547, %6651 ]
  %6689 = phi float [ %6685, %6674 ], [ %6548, %6651 ]
  %6690 = phi float [ %6686, %6674 ], [ %6549, %6651 ]
  %6691 = phi float [ %6676, %6674 ], [ 0.000000e+00, %6651 ]
  %6692 = fcmp fast une float %6663, 1.000000e+00
  br i1 %6692, label %6693, label %6700, !dx.controlflow.hints !178

; <label>:6693                                    ; preds = %6687
  %6694 = call float @dx.op.unary.f32(i32 23, float %6663)  ; Log(value)
  %6695 = fmul fast float %6694, 0x3FE62E4300000000
  %6696 = fmul fast float %6660, %6695
  %6697 = fsub fast float -0.000000e+00, %6696
  %6698 = fsub fast float 1.000000e+00, %6663
  %6699 = fdiv fast float %6697, %6698
  br label %6700

; <label>:6700                                    ; preds = %6693, %6687
  %6701 = phi float [ %6699, %6693 ], [ %6660, %6687 ]
  %6702 = phi float [ %6695, %6693 ], [ 0.000000e+00, %6687 ]
  %6703 = fcmp fast une float %6664, 1.000000e+00
  br i1 %6703, label %6704, label %6711, !dx.controlflow.hints !178

; <label>:6704                                    ; preds = %6700
  %6705 = call float @dx.op.unary.f32(i32 23, float %6664)  ; Log(value)
  %6706 = fmul fast float %6705, 0x3FE62E4300000000
  %6707 = fmul fast float %6661, %6706
  %6708 = fsub fast float -0.000000e+00, %6707
  %6709 = fsub fast float 1.000000e+00, %6664
  %6710 = fdiv fast float %6708, %6709
  br label %6711

; <label>:6711                                    ; preds = %6704, %6700
  %6712 = phi float [ %6710, %6704 ], [ %6661, %6700 ]
  %6713 = phi float [ %6706, %6704 ], [ 0.000000e+00, %6700 ]
  %6714 = fcmp fast une float %6665, 1.000000e+00
  br i1 %6714, label %6715, label %6722, !dx.controlflow.hints !178

; <label>:6715                                    ; preds = %6711
  %6716 = call float @dx.op.unary.f32(i32 23, float %6665)  ; Log(value)
  %6717 = fmul fast float %6716, 0x3FE62E4300000000
  %6718 = fmul fast float %6662, %6717
  %6719 = fsub fast float -0.000000e+00, %6718
  %6720 = fsub fast float 1.000000e+00, %6665
  %6721 = fdiv fast float %6719, %6720
  br label %6722

; <label>:6722                                    ; preds = %6715, %6711
  %6723 = phi float [ %6721, %6715 ], [ %6662, %6711 ]
  %6724 = phi float [ %6717, %6715 ], [ 0.000000e+00, %6711 ]
  %6725 = fmul fast float %6688, %6672
  %6726 = fmul fast float %6689, %6672
  %6727 = fmul fast float %6690, %6672
  %6728 = fmul fast float %6691, %6672
  %6729 = fmul fast float %6701, %6670
  %6730 = fmul fast float %6712, %6670
  %6731 = fmul fast float %6723, %6670
  %6732 = fmul fast float %6702, %6670
  %6733 = fmul fast float %6713, %6670
  %6734 = fmul fast float %6724, %6670
  %6735 = fadd fast float %6729, %6725
  %6736 = fadd fast float %6730, %6726
  %6737 = fadd fast float %6731, %6727
  %6738 = fadd fast float %6732, %6728
  %6739 = fadd fast float %6733, %6728
  %6740 = fadd fast float %6734, %6728
  %6741 = fcmp fast une float %6738, 0.000000e+00
  br i1 %6741, label %6742, label %6749, !dx.controlflow.hints !179

; <label>:6742                                    ; preds = %6722
  %6743 = fmul fast float %6738, 0x3FF7154760000000
  %6744 = call float @dx.op.unary.f32(i32 21, float %6743)  ; Exp(value)
  %6745 = fsub fast float 1.000000e+00, %6744
  %6746 = fmul fast float %6735, %6745
  %6747 = fsub fast float -0.000000e+00, %6746
  %6748 = fdiv fast float %6747, %6738
  br label %6749

; <label>:6749                                    ; preds = %6742, %6722
  %6750 = phi float [ %6744, %6742 ], [ 1.000000e+00, %6722 ]
  %6751 = phi float [ %6748, %6742 ], [ %6735, %6722 ]
  %6752 = fcmp fast une float %6739, 0.000000e+00
  br i1 %6752, label %6753, label %6760, !dx.controlflow.hints !179

; <label>:6753                                    ; preds = %6749
  %6754 = fmul fast float %6739, 0x3FF7154760000000
  %6755 = call float @dx.op.unary.f32(i32 21, float %6754)  ; Exp(value)
  %6756 = fsub fast float 1.000000e+00, %6755
  %6757 = fmul fast float %6736, %6756
  %6758 = fsub fast float -0.000000e+00, %6757
  %6759 = fdiv fast float %6758, %6739
  br label %6760

; <label>:6760                                    ; preds = %6753, %6749
  %6761 = phi float [ %6755, %6753 ], [ 1.000000e+00, %6749 ]
  %6762 = phi float [ %6759, %6753 ], [ %6736, %6749 ]
  %6763 = fcmp fast une float %6740, 0.000000e+00
  br i1 %6763, label %6764, label %6771, !dx.controlflow.hints !179

; <label>:6764                                    ; preds = %6760
  %6765 = fmul fast float %6740, 0x3FF7154760000000
  %6766 = call float @dx.op.unary.f32(i32 21, float %6765)  ; Exp(value)
  %6767 = fsub fast float 1.000000e+00, %6766
  %6768 = fmul fast float %6737, %6767
  %6769 = fsub fast float -0.000000e+00, %6768
  %6770 = fdiv fast float %6769, %6740
  br label %6771

; <label>:6771                                    ; preds = %6764, %6760
  %6772 = phi float [ %6766, %6764 ], [ 1.000000e+00, %6760 ]
  %6773 = phi float [ %6770, %6764 ], [ %6737, %6760 ]
  %6774 = fcmp fast ogt float %6670, %6672
  br i1 %6774, label %6775, label %6795

; <label>:6775                                    ; preds = %6771
  %6776 = fsub fast float 1.000000e+00, %6672
  %6777 = fmul fast float %6688, %6776
  %6778 = fmul fast float %6689, %6776
  %6779 = fmul fast float %6690, %6776
  %6780 = fmul fast float %6691, %6776
  %6781 = fcmp fast une float %6780, 0.000000e+00
  br i1 %6781, label %6782, label %6833, !dx.controlflow.hints !180

; <label>:6782                                    ; preds = %6775
  %6783 = fmul fast float %6780, 0x3FF7154760000000
  %6784 = call float @dx.op.unary.f32(i32 21, float %6783)  ; Exp(value)
  %6785 = fsub fast float 1.000000e+00, %6784
  %6786 = fmul fast float %6777, %6785
  %6787 = fsub fast float -0.000000e+00, %6786
  %6788 = fmul fast float %6778, %6785
  %6789 = fsub fast float -0.000000e+00, %6788
  %6790 = fmul fast float %6779, %6785
  %6791 = fsub fast float -0.000000e+00, %6790
  %6792 = fdiv fast float %6787, %6780
  %6793 = fdiv fast float %6789, %6780
  %6794 = fdiv fast float %6791, %6780
  br label %6833

; <label>:6795                                    ; preds = %6771
  %6796 = fsub fast float 1.000000e+00, %6670
  %6797 = fmul fast float %6701, %6796
  %6798 = fmul fast float %6712, %6796
  %6799 = fmul fast float %6723, %6796
  %6800 = fmul fast float %6702, %6796
  %6801 = fmul fast float %6713, %6796
  %6802 = fmul fast float %6724, %6796
  %6803 = fcmp fast une float %6800, 0.000000e+00
  br i1 %6803, label %6804, label %6811, !dx.controlflow.hints !179

; <label>:6804                                    ; preds = %6795
  %6805 = fmul fast float %6800, 0x3FF7154760000000
  %6806 = call float @dx.op.unary.f32(i32 21, float %6805)  ; Exp(value)
  %6807 = fsub fast float 1.000000e+00, %6806
  %6808 = fmul fast float %6797, %6807
  %6809 = fsub fast float -0.000000e+00, %6808
  %6810 = fdiv fast float %6809, %6800
  br label %6811

; <label>:6811                                    ; preds = %6804, %6795
  %6812 = phi float [ %6810, %6804 ], [ %6797, %6795 ]
  %6813 = phi float [ %6806, %6804 ], [ 1.000000e+00, %6795 ]
  %6814 = fcmp fast une float %6801, 0.000000e+00
  br i1 %6814, label %6815, label %6822, !dx.controlflow.hints !179

; <label>:6815                                    ; preds = %6811
  %6816 = fmul fast float %6801, 0x3FF7154760000000
  %6817 = call float @dx.op.unary.f32(i32 21, float %6816)  ; Exp(value)
  %6818 = fsub fast float 1.000000e+00, %6817
  %6819 = fmul fast float %6798, %6818
  %6820 = fsub fast float -0.000000e+00, %6819
  %6821 = fdiv fast float %6820, %6801
  br label %6822

; <label>:6822                                    ; preds = %6815, %6811
  %6823 = phi float [ %6821, %6815 ], [ %6798, %6811 ]
  %6824 = phi float [ %6817, %6815 ], [ 1.000000e+00, %6811 ]
  %6825 = fcmp fast une float %6802, 0.000000e+00
  br i1 %6825, label %6826, label %6833, !dx.controlflow.hints !179

; <label>:6826                                    ; preds = %6822
  %6827 = fmul fast float %6802, 0x3FF7154760000000
  %6828 = call float @dx.op.unary.f32(i32 21, float %6827)  ; Exp(value)
  %6829 = fsub fast float 1.000000e+00, %6828
  %6830 = fmul fast float %6799, %6829
  %6831 = fsub fast float -0.000000e+00, %6830
  %6832 = fdiv fast float %6831, %6802
  br label %6833

; <label>:6833                                    ; preds = %6826, %6822, %6782, %6775
  %6834 = phi float [ %6832, %6826 ], [ %6794, %6782 ], [ %6779, %6775 ], [ %6799, %6822 ]
  %6835 = phi float [ %6823, %6826 ], [ %6793, %6782 ], [ %6778, %6775 ], [ %6823, %6822 ]
  %6836 = phi float [ %6812, %6826 ], [ %6792, %6782 ], [ %6777, %6775 ], [ %6812, %6822 ]
  %6837 = phi float [ %6828, %6826 ], [ %6784, %6782 ], [ 1.000000e+00, %6775 ], [ 1.000000e+00, %6822 ]
  %6838 = phi float [ %6824, %6826 ], [ %6784, %6782 ], [ 1.000000e+00, %6775 ], [ %6824, %6822 ]
  %6839 = phi float [ %6813, %6826 ], [ %6784, %6782 ], [ 1.000000e+00, %6775 ], [ %6813, %6822 ]
  %6840 = fmul fast float %6839, %6751
  %6841 = fmul fast float %6838, %6762
  %6842 = fmul fast float %6837, %6773
  %6843 = fadd fast float %6840, %6836
  %6844 = fadd fast float %6841, %6835
  %6845 = fadd fast float %6842, %6834
  %6846 = fmul fast float %6839, %6750
  %6847 = fmul fast float %6838, %6761
  %6848 = fmul fast float %6837, %6772
  br label %6849

; <label>:6849                                    ; preds = %6833, %6644
  %6850 = phi float [ %6848, %6833 ], [ %6650, %6644 ]
  %6851 = phi float [ %6847, %6833 ], [ %6649, %6644 ]
  %6852 = phi float [ %6846, %6833 ], [ %6648, %6644 ]
  %6853 = phi float [ %6845, %6833 ], [ %6647, %6644 ]
  %6854 = phi float [ %6844, %6833 ], [ %6646, %6644 ]
  %6855 = phi float [ %6843, %6833 ], [ %6645, %6644 ]
  %6856 = fmul fast float %6855, %5795
  %6857 = fmul fast float %6854, %5797
  %6858 = fmul fast float %6853, %5799
  %6859 = fmul fast float %6852, %6092
  %6860 = call float @dx.op.dot3.f32(i32 55, float %6852, float %6851, float %6850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6861 = call float @dx.op.dot3.f32(i32 55, float %6856, float %6857, float %6858, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6862 = select i1 %228, float %6860, float %6852
  %6863 = select i1 %228, float %6860, float %6851
  %6864 = select i1 %228, float 1.000000e+00, float %6850
  %6865 = select i1 %228, float %6861, float %6856
  %6866 = select i1 %228, float 0.000000e+00, float %6857
  %6867 = select i1 %228, float 0.000000e+00, float %6858
  %6868 = fmul fast float %6862, %6086
  %6869 = fmul fast float %6863, %6087
  %6870 = fmul fast float %6864, %6088
  %6871 = fadd fast float %6868, %6865
  %6872 = fadd fast float %6869, %6866
  %6873 = fadd fast float %6867, %6870
  %6874 = fmul fast float %6862, %6089
  %6875 = fmul fast float %6863, %6090
  %6876 = fmul fast float %6864, %6091
  %6877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.i32 %6877, 0
  %6879 = icmp eq i32 %6878, 0
  br i1 %6879, label %7247, label %6880, !dx.controlflow.hints !181

; <label>:6880                                    ; preds = %6849
  %6881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6882 = extractvalue %dx.types.CBufRet.f32 %6881, 2
  %6883 = extractvalue %dx.types.CBufRet.f32 %6881, 3
  %6884 = fmul fast float %6882, %90
  %6885 = fmul fast float %6883, %91
  %6886 = fmul fast float %6884, 2.000000e+00
  %6887 = fmul fast float %6885, 2.000000e+00
  %6888 = fsub fast float 1.000000e+00, %6886
  %6889 = fsub fast float 1.000000e+00, %6887
  %6890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6891 = extractvalue %dx.types.CBufRet.f32 %6890, 0
  %6892 = extractvalue %dx.types.CBufRet.f32 %6890, 1
  %6893 = extractvalue %dx.types.CBufRet.f32 %6890, 2
  %6894 = fmul fast float %6888, %6891
  %6895 = fmul fast float %6888, %6892
  %6896 = fmul fast float %6888, %6893
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.CBufRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6901 = fmul fast float %6889, %6898
  %6902 = fmul fast float %6889, %6899
  %6903 = fmul fast float %6889, %6900
  %6904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6904, 0
  %6906 = extractvalue %dx.types.CBufRet.f32 %6904, 1
  %6907 = extractvalue %dx.types.CBufRet.f32 %6904, 2
  %6908 = fadd fast float %6901, %6905
  %6909 = fadd fast float %6908, %6894
  %6910 = fadd fast float %6902, %6906
  %6911 = fadd fast float %6910, %6895
  %6912 = fadd fast float %6903, %6907
  %6913 = fadd fast float %6912, %6896
  %6914 = fmul fast float %6909, %6085
  %6915 = fmul fast float %6911, %6085
  %6916 = fmul fast float %6913, %6085
  %6917 = fmul fast float %6914, %6914
  %6918 = fmul fast float %6915, %6915
  %6919 = fadd fast float %6917, %6918
  %6920 = fmul fast float %6916, %6916
  %6921 = fadd fast float %6919, %6920
  %6922 = call float @dx.op.unary.f32(i32 24, float %6921)  ; Sqrt(value)
  %6923 = extractvalue %dx.types.CBufRet.f32 %5810, 0
  %6924 = fsub fast float %6922, %6923
  %6925 = extractvalue %dx.types.CBufRet.f32 %5810, 2
  %6926 = fmul fast float %6924, %6925
  %6927 = call float @dx.op.unary.f32(i32 7, float %6926)  ; Saturate(value)
  %6928 = fadd fast float %6927, -5.000000e-01
  %6929 = fmul fast float %6928, 2.000000e+00
  %6930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6931 = extractvalue %dx.types.CBufRet.f32 %6930, 2
  %6932 = call float @dx.op.binary.f32(i32 36, float %6931, float %6929)  ; FMin(a,b)
  %6933 = fsub fast float -0.000000e+00, %6931
  %6934 = fcmp fast ogt float %6932, %6933
  br i1 %6934, label %6935, label %7247, !dx.controlflow.hints !182

; <label>:6935                                    ; preds = %6880
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 3
  %6938 = fcmp fast ogt float %6937, 0.000000e+00
  br i1 %6938, label %6939, label %7014, !dx.controlflow.hints !183

; <label>:6939                                    ; preds = %6935
  %6940 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6941 = extractvalue %dx.types.Dimensions %6940, 0
  %6942 = sitofp i32 %6941 to float
  %6943 = extractvalue %dx.types.Dimensions %6940, 1
  %6944 = sitofp i32 %6943 to float
  %6945 = fmul fast float %6884, %6942
  %6946 = fmul fast float %6885, %6944
  %6947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6948 = extractvalue %dx.types.CBufRet.f32 %6947, 1
  %6949 = fsub fast float -0.000000e+00, %6948
  %6950 = fptoui float %6949 to i32
  %6951 = fptoui float %6945 to i32
  %6952 = fptoui float %6946 to i32
  %6953 = and i32 %6950, 31
  %6954 = lshr i32 %6951, %6953
  %6955 = lshr i32 %6952, %6953
  %6956 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6950, i32 %6954, i32 %6955, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6957 = extractvalue %dx.types.ResRet.f32 %6956, 0
  %6958 = fcmp fast olt float %6957, -1.000000e+00
  %6959 = fcmp fast ogt float %6957, -1.000000e+00
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6962 = select i1 %6959, float %6961, float 1.000000e+00
  %6963 = fadd fast float %6957, 1.000000e+00
  %6964 = fmul fast float %6962, %6963
  %6965 = call float @dx.op.unary.f32(i32 6, float %6964)  ; FAbs(value)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6960, 3
  %6967 = fcmp fast oge float %6965, %6966
  %6968 = select i1 %6967, float 0x4197782600000000, float %6965
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 0
  %6971 = extractvalue %dx.types.CBufRet.f32 %6969, 1
  %6972 = extractvalue %dx.types.CBufRet.f32 %6969, 2
  %6973 = select i1 %6958, float %6970, float %6891
  %6974 = select i1 %6958, float %6971, float %6892
  %6975 = select i1 %6958, float %6972, float %6893
  %6976 = fmul fast float %6973, %6888
  %6977 = fmul fast float %6974, %6888
  %6978 = fmul fast float %6975, %6888
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.CBufRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %6983 = select i1 %6958, float %6980, float %6898
  %6984 = select i1 %6958, float %6981, float %6899
  %6985 = select i1 %6958, float %6982, float %6900
  %6986 = fmul fast float %6983, %6889
  %6987 = fmul fast float %6984, %6889
  %6988 = fmul fast float %6985, %6889
  %6989 = fadd fast float %6986, %6976
  %6990 = fadd fast float %6987, %6977
  %6991 = fadd fast float %6988, %6978
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.CBufRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.CBufRet.f32 %6992, 2
  %6996 = select i1 %6958, float %6993, float %6905
  %6997 = select i1 %6958, float %6994, float %6906
  %6998 = select i1 %6958, float %6995, float %6907
  %6999 = fadd fast float %6989, %6996
  %7000 = fadd fast float %6990, %6997
  %7001 = fadd fast float %6991, %6998
  %7002 = fmul fast float %6999, %6968
  %7003 = fmul fast float %7000, %6968
  %7004 = fmul fast float %7001, %6968
  %7005 = fmul fast float %7002, %7002
  %7006 = fmul fast float %7003, %7003
  %7007 = fadd fast float %7005, %7006
  %7008 = fmul fast float %7004, %7004
  %7009 = fadd fast float %7007, %7008
  %7010 = call float @dx.op.unary.f32(i32 24, float %7009)  ; Sqrt(value)
  %7011 = fsub fast float %7010, %6923
  %7012 = fmul fast float %7011, %6925
  %7013 = call float @dx.op.unary.f32(i32 7, float %7012)  ; Saturate(value)
  br label %7014

; <label>:7014                                    ; preds = %6939, %6935
  %7015 = phi float [ %7013, %6939 ], [ 1.000000e+00, %6935 ]
  %7016 = fmul fast float %6932, 5.000000e-01
  %7017 = fadd fast float %7016, 5.000000e-01
  %7018 = call float @dx.op.unary.f32(i32 22, float %7017)  ; Frc(value)
  %7019 = call float @dx.op.unary.f32(i32 27, float %7018)  ; Round_ni(value)
  %7020 = call float @dx.op.unary.f32(i32 22, float %7018)  ; Frc(value)
  %7021 = fmul fast float %7020, 2.000000e+00
  %7022 = fadd fast float %7021, -1.000000e+00
  %7023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6884, float %6885, float %7019, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7024 = extractvalue %dx.types.ResRet.f32 %7023, 0
  %7025 = extractvalue %dx.types.ResRet.f32 %7023, 1
  %7026 = extractvalue %dx.types.ResRet.f32 %7023, 2
  %7027 = extractvalue %dx.types.ResRet.f32 %7023, 3
  %7028 = fadd fast float %7024, -5.000000e-01
  %7029 = fadd fast float %7026, -5.000000e-01
  %7030 = fmul fast float %7028, 0xBFD5555560000000
  %7031 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7029, float %7030)  ; FMad(a,b,c)
  %7032 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7025, float 0.000000e+00)  ; FMad(a,b,c)
  %7033 = fadd fast float %7032, %7027
  %7034 = fmul fast float %7028, -7.500000e-01
  %7035 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7029, float %7034)  ; FMad(a,b,c)
  %7036 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7025, float 0.000000e+00)  ; FMad(a,b,c)
  %7037 = fadd fast float %7036, %7027
  %7038 = call float @dx.op.binary.f32(i32 35, float %7031, float -1.000000e+00)  ; FMax(a,b)
  %7039 = call float @dx.op.binary.f32(i32 35, float %7033, float -1.000000e+00)  ; FMax(a,b)
  %7040 = call float @dx.op.binary.f32(i32 35, float %7035, float -1.000000e+00)  ; FMax(a,b)
  %7041 = call float @dx.op.binary.f32(i32 35, float %7037, float -1.000000e+00)  ; FMax(a,b)
  %7042 = call float @dx.op.binary.f32(i32 36, float %7038, float 1.000000e+00)  ; FMin(a,b)
  %7043 = call float @dx.op.binary.f32(i32 36, float %7039, float 1.000000e+00)  ; FMin(a,b)
  %7044 = call float @dx.op.binary.f32(i32 36, float %7040, float 1.000000e+00)  ; FMin(a,b)
  %7045 = call float @dx.op.binary.f32(i32 36, float %7041, float 1.000000e+00)  ; FMin(a,b)
  %7046 = fcmp fast olt float %7042, 0x3FEFFF8020000000
  br i1 %7046, label %7047, label %7162, !dx.controlflow.hints !184

; <label>:7047                                    ; preds = %7014
  %7048 = extractvalue %dx.types.CBufRet.f32 %6930, 3
  %7049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.CBufRet.f32 %7049, 1
  %7052 = extractvalue %dx.types.CBufRet.f32 %7049, 2
  %7053 = extractvalue %dx.types.CBufRet.f32 %7049, 3
  %7054 = fsub fast float %7050, %7042
  %7055 = fsub fast float %7051, %7043
  %7056 = fsub fast float %7052, %7044
  %7057 = fsub fast float %7053, %7045
  %7058 = fmul fast float %7054, %7048
  %7059 = fmul fast float %7055, %7048
  %7060 = fmul fast float %7056, %7048
  %7061 = fmul fast float %7057, %7048
  %7062 = fadd fast float %7058, %7042
  %7063 = fadd fast float %7059, %7043
  %7064 = fsub fast float -0.000000e+00, %7063
  %7065 = fadd fast float %7060, %7044
  %7066 = fadd fast float %7061, %7045
  %7067 = fmul fast float %7062, %7062
  %7068 = fsub fast float %7063, %7067
  %7069 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7068)  ; FMax(a,b)
  %7070 = fdiv fast float 1.000000e+00, %7069
  %7071 = fmul fast float %7063, %7062
  %7072 = fsub fast float %7065, %7071
  %7073 = fsub fast float %7022, %7062
  %7074 = fmul fast float %7022, %7022
  %7075 = fsub fast float %7074, %7063
  %7076 = fmul fast float %7073, %7070
  %7077 = fmul fast float %7076, %7072
  %7078 = fsub fast float %7075, %7077
  %7079 = fmul fast float %7063, %7063
  %7080 = fsub fast float %7066, %7079
  %7081 = fmul fast float %7072, %7072
  %7082 = fmul fast float %7081, %7070
  %7083 = fsub fast float %7080, %7082
  %7084 = fdiv fast float %7078, %7083
  %7085 = fmul fast float %7072, %7084
  %7086 = fsub fast float %7073, %7085
  %7087 = fmul fast float %7086, %7070
  %7088 = fmul fast float %7087, %7062
  %7089 = fsub fast float 1.000000e+00, %7088
  %7090 = fmul fast float %7063, %7084
  %7091 = fsub fast float %7089, %7090
  %7092 = fmul fast float %7087, %7087
  %7093 = fmul fast float %7084, 4.000000e+00
  %7094 = fmul fast float %7093, %7091
  %7095 = fsub fast float %7092, %7094
  %7096 = call float @dx.op.unary.f32(i32 24, float %7095)  ; Sqrt(value)
  %7097 = fcmp fast oge float %7087, 0.000000e+00
  %7098 = fsub fast float -0.000000e+00, %7096
  %7099 = select i1 %7097, float %7098, float %7096
  %7100 = fsub fast float %7099, %7087
  %7101 = fdiv fast float %7100, %7084
  %7102 = fdiv fast float %7091, %7100
  %7103 = fmul fast float %7101, 5.000000e-01
  %7104 = fmul fast float %7102, 2.000000e+00
  %7105 = select i1 %7097, float %7103, float %7104
  %7106 = select i1 %7097, float %7104, float %7103
  %7107 = call float @dx.op.binary.f32(i32 35, float %7105, float %7106)  ; FMax(a,b)
  %7108 = call float @dx.op.binary.f32(i32 36, float %7105, float %7106)  ; FMin(a,b)
  %7109 = fcmp fast ogt float %7022, %7108
  br i1 %7109, label %7110, label %7120

; <label>:7110                                    ; preds = %7047
  %7111 = fsub fast float %7022, %7108
  %7112 = fsub fast float %7107, %7108
  %7113 = fmul fast float %7111, %7112
  %7114 = fmul fast float %7107, %7022
  %7115 = fadd fast float %7107, %7022
  %7116 = fmul fast float %7115, %7062
  %7117 = fadd fast float %7114, %7063
  %7118 = fsub fast float %7117, %7116
  %7119 = fdiv fast float %7118, %7113
  br label %7120

; <label>:7120                                    ; preds = %7110, %7047
  %7121 = phi float [ %7119, %7110 ], [ 0.000000e+00, %7047 ]
  %7122 = fcmp fast ogt float %7022, %7107
  %7123 = fsub fast float %7022, %7107
  br i1 %7122, label %7124, label %7134

; <label>:7124                                    ; preds = %7120
  %7125 = fsub fast float %7107, %7108
  %7126 = fmul fast float %7125, %7123
  %7127 = fmul fast float %7108, %7022
  %7128 = fadd fast float %7108, %7022
  %7129 = fmul fast float %7128, %7062
  %7130 = fsub fast float %7064, %7127
  %7131 = fadd fast float %7130, %7129
  %7132 = fdiv fast float %7131, %7126
  %7133 = fadd fast float %7132, %7121
  br label %7134

; <label>:7134                                    ; preds = %7124, %7120
  %7135 = phi float [ %7133, %7124 ], [ %7121, %7120 ]
  %7136 = fsub fast float %7022, %7108
  %7137 = fmul fast float %7136, %7123
  %7138 = fmul fast float %7108, %7107
  %7139 = fadd fast float %7108, %7107
  %7140 = fmul fast float %7139, %7062
  %7141 = fadd fast float %7138, %7063
  %7142 = fsub fast float %7141, %7140
  %7143 = fdiv fast float %7142, %7137
  %7144 = call float @dx.op.unary.f32(i32 7, float %7135)  ; Saturate(value)
  %7145 = fcmp fast oeq float %5811, 0.000000e+00
  %7146 = extractvalue %dx.types.CBufRet.f32 %6930, 0
  %7147 = fcmp fast oeq float %7146, 0.000000e+00
  %7148 = or i1 %7145, %7147
  %7149 = fmul fast float %7146, 2.000000e+00
  %7150 = fadd fast float %6931, %6932
  %7151 = fdiv fast float %7150, %7149
  %7152 = call float @dx.op.unary.f32(i32 7, float %7151)  ; Saturate(value)
  %7153 = fmul fast float %7152, 2.000000e+00
  %7154 = fsub fast float 3.000000e+00, %7153
  %7155 = fmul fast float %7152, %7152
  %7156 = fmul fast float %7155, %7154
  %7157 = select i1 %7148, float 1.000000e+00, float %7156
  %7158 = fmul fast float %7143, %5811
  %7159 = fadd fast float %7144, %7158
  %7160 = call float @dx.op.unary.f32(i32 7, float %7159)  ; Saturate(value)
  %7161 = fmul fast float %7157, %7160
  br label %7162

; <label>:7162                                    ; preds = %7134, %7014
  %7163 = phi float [ %7161, %7134 ], [ 0.000000e+00, %7014 ]
  %7164 = fsub fast float 1.000000e+00, %7163
  %7165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6884, float %6885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7166 = extractvalue %dx.types.ResRet.f32 %7165, 0
  %7167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7168 = extractvalue %dx.types.CBufRet.i32 %7167, 2
  %7169 = icmp eq i32 %7168, 0
  br i1 %7169, label %7175, label %7170

; <label>:7170                                    ; preds = %7162
  %7171 = call float @dx.op.unary.f32(i32 7, float %7163)  ; Saturate(value)
  %7172 = fadd fast float %7166, -1.000000e+00
  %7173 = fmul fast float %7171, %7172
  %7174 = fadd fast float %7173, 1.000000e+00
  br label %7175

; <label>:7175                                    ; preds = %7170, %7162
  %7176 = phi float [ %7174, %7170 ], [ %7164, %7162 ]
  br i1 %6938, label %7177, label %7195

; <label>:7177                                    ; preds = %7175
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 1
  %7180 = fsub fast float %7015, %7179
  %7181 = call float @dx.op.unary.f32(i32 7, float %7180)  ; Saturate(value)
  %7182 = fsub fast float %7015, %6937
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7184 = fsub fast float %7181, %7183
  %7185 = fsub fast float %7017, %7183
  %7186 = fdiv fast float %7185, %7184
  %7187 = call float @dx.op.unary.f32(i32 7, float %7186)  ; Saturate(value)
  %7188 = fmul fast float %7187, 2.000000e+00
  %7189 = fsub fast float 3.000000e+00, %7188
  %7190 = fsub fast float %7166, %7176
  %7191 = fmul fast float %7187, %7187
  %7192 = fmul fast float %7191, %7190
  %7193 = fmul fast float %7192, %7189
  %7194 = fadd fast float %7193, %7176
  br label %7195

; <label>:7195                                    ; preds = %7177, %7175
  %7196 = phi float [ %7194, %7177 ], [ %7176, %7175 ]
  %7197 = call float @dx.op.binary.f32(i32 35, float %7166, float %7196)  ; FMax(a,b)
  %7198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7199 = extractvalue %dx.types.CBufRet.i32 %7198, 2
  %7200 = and i32 %7199, 1
  %7201 = icmp eq i32 %7200, 0
  %7202 = fcmp fast une float %7197, 1.000000e+00
  %7203 = and i1 %7202, %7201
  br i1 %7203, label %7204, label %7223

; <label>:7204                                    ; preds = %7195
  %7205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6884, float %6885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7206 = extractvalue %dx.types.ResRet.f32 %7205, 0
  %7207 = extractvalue %dx.types.ResRet.f32 %7205, 1
  %7208 = extractvalue %dx.types.ResRet.f32 %7205, 2
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 1
  %7211 = fmul fast float %7210, %7206
  %7212 = fmul fast float %7210, %7207
  %7213 = fmul fast float %7210, %7208
  %7214 = fcmp fast ogt float %7166, 0x3FEFFF2E40000000
  %7215 = fsub fast float 1.000000e+00, %7197
  %7216 = fsub fast float 1.000000e+00, %7166
  %7217 = fdiv fast float %7215, %7216
  %7218 = call float @dx.op.unary.f32(i32 7, float %7217)  ; Saturate(value)
  %7219 = select i1 %7214, float 0.000000e+00, float %7218
  %7220 = fmul fast float %7211, %7219
  %7221 = fmul fast float %7212, %7219
  %7222 = fmul fast float %7213, %7219
  br label %7223

; <label>:7223                                    ; preds = %7204, %7195
  %7224 = phi float [ 0.000000e+00, %7195 ], [ %7220, %7204 ]
  %7225 = phi float [ 0.000000e+00, %7195 ], [ %7221, %7204 ]
  %7226 = phi float [ 0.000000e+00, %7195 ], [ %7222, %7204 ]
  %7227 = fmul fast float %7224, %5795
  %7228 = fmul fast float %7225, %5797
  %7229 = fmul fast float %7226, %5799
  %7230 = fmul fast float %7197, %6859
  %7231 = call float @dx.op.dot3.f32(i32 55, float %7197, float %7197, float %7197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7232 = call float @dx.op.dot3.f32(i32 55, float %7227, float %7228, float %7229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7233 = select i1 %228, float %7231, float %7197
  %7234 = select i1 %228, float 1.000000e+00, float %7197
  %7235 = select i1 %228, float %7232, float %7227
  %7236 = select i1 %228, float 0.000000e+00, float %7228
  %7237 = select i1 %228, float 0.000000e+00, float %7229
  %7238 = fmul fast float %7233, %6871
  %7239 = fmul fast float %7233, %6872
  %7240 = fmul fast float %7234, %6873
  %7241 = fadd fast float %7238, %7235
  %7242 = fadd fast float %7239, %7236
  %7243 = fadd fast float %7237, %7240
  %7244 = fmul fast float %7233, %6874
  %7245 = fmul fast float %7233, %6875
  %7246 = fmul fast float %7234, %6876
  br label %7247

; <label>:7247                                    ; preds = %7223, %6880, %6849, %6081
  %7248 = phi float [ %6086, %6081 ], [ %6871, %6849 ], [ %7241, %7223 ], [ %6871, %6880 ]
  %7249 = phi float [ %6087, %6081 ], [ %6872, %6849 ], [ %7242, %7223 ], [ %6872, %6880 ]
  %7250 = phi float [ %6088, %6081 ], [ %6873, %6849 ], [ %7243, %7223 ], [ %6873, %6880 ]
  %7251 = phi float [ %6089, %6081 ], [ %6874, %6849 ], [ %7244, %7223 ], [ %6874, %6880 ]
  %7252 = phi float [ %6090, %6081 ], [ %6875, %6849 ], [ %7245, %7223 ], [ %6875, %6880 ]
  %7253 = phi float [ %6091, %6081 ], [ %6876, %6849 ], [ %7246, %7223 ], [ %6876, %6880 ]
  %7254 = phi float [ %6092, %6081 ], [ %6859, %6849 ], [ %7230, %7223 ], [ %6859, %6880 ]
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 2
  %7257 = extractvalue %dx.types.CBufRet.f32 %7255, 3
  %7258 = fmul fast float %7256, %90
  %7259 = fmul fast float %7257, %91
  %7260 = call float @dx.op.unary.f32(i32 7, float %7258)  ; Saturate(value)
  %7261 = call float @dx.op.unary.f32(i32 7, float %7259)  ; Saturate(value)
  %7262 = select i1 %5821, i32 2, i32 0
  %7263 = or i32 %7262, 1
  %7264 = uitofp i32 %7263 to float
  %7265 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %7260, float %7261, float %7264, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7266 = extractvalue %dx.types.ResRet.f32 %7265, 0
  %7267 = extractvalue %dx.types.ResRet.f32 %7265, 1
  %7268 = extractvalue %dx.types.ResRet.f32 %7265, 2
  %7269 = extractvalue %dx.types.ResRet.f32 %7265, 3
  %7270 = add nuw nsw i32 %7262, 2
  %7271 = uitofp i32 %7270 to float
  %7272 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %7260, float %7261, float %7271, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7273 = extractvalue %dx.types.ResRet.f32 %7272, 0
  %7274 = extractvalue %dx.types.ResRet.f32 %7272, 1
  %7275 = extractvalue %dx.types.ResRet.f32 %7272, 2
  %7276 = extractvalue %dx.types.ResRet.f32 %7272, 3
  %7277 = call float @dx.op.binary.f32(i32 35, float %7267, float %7268)  ; FMax(a,b)
  %7278 = call float @dx.op.binary.f32(i32 35, float %7266, float %7277)  ; FMax(a,b)
  %7279 = call float @dx.op.binary.f32(i32 35, float %7278, float %7269)  ; FMax(a,b)
  %7280 = call float @dx.op.binary.f32(i32 36, float %7274, float %7275)  ; FMin(a,b)
  %7281 = call float @dx.op.binary.f32(i32 36, float %7273, float %7280)  ; FMin(a,b)
  %7282 = call float @dx.op.binary.f32(i32 36, float %7281, float %7276)  ; FMin(a,b)
  %7283 = fmul fast float %7279, 2.550000e+02
  %7284 = fadd fast float %7283, 0x3F70101020000000
  %7285 = fptoui float %7284 to i32
  %7286 = fmul fast float %7282, 2.550000e+02
  %7287 = fadd fast float %7286, 0x3F70101020000000
  %7288 = fptoui float %7287 to i32
  %7289 = icmp ult i32 %7285, %7288
  br i1 %7289, label %7290, label %7459

; <label>:7290                                    ; preds = %7247
  %7291 = fcmp fast ogt float %80, 9.843750e-01
  %7292 = fadd fast float %6085, -4.000000e+00
  %7293 = select i1 %7291, float -4.000000e+00, float %7292
  %7294 = call float @dx.op.binary.f32(i32 35, float %7293, float 0.000000e+00)  ; FMax(a,b)
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 0
  %7297 = fadd fast float %7296, %7294
  %7298 = extractvalue %dx.types.CBufRet.f32 %7295, 2
  %7299 = fmul fast float %7297, %7298
  %7300 = call float @dx.op.unary.f32(i32 23, float %7299)  ; Log(value)
  %7301 = extractvalue %dx.types.CBufRet.f32 %7295, 3
  %7302 = fmul fast float %7301, %7300
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 2
  %7305 = fmul fast float %7302, %7304
  %7306 = call float @dx.op.unary.f32(i32 7, float %7305)  ; Saturate(value)
  %7307 = uitofp i32 %7285 to float
  %7308 = uitofp i32 %7288 to float
  %7309 = fadd fast float %7307, 5.000000e-01
  %7310 = fadd fast float %7308, 5.000000e-01
  %7311 = fmul fast float %7304, %7309
  %7312 = fmul fast float %7304, %7310
  %7313 = fadd fast float %7311, 0x3F0FFB4800000000
  %7314 = fadd fast float %7312, 0xBF0FFB4800000000
  %7315 = call float @dx.op.binary.f32(i32 35, float %7306, float %7313)  ; FMax(a,b)
  %7316 = call float @dx.op.binary.f32(i32 36, float %7315, float %7314)  ; FMin(a,b)
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 1
  %7319 = extractvalue %dx.types.CBufRet.f32 %7317, 2
  %7320 = extractvalue %dx.types.CBufRet.f32 %7317, 0
  %7321 = select i1 %5821, float %7320, float 0.000000e+00
  %7322 = fmul fast float %7318, %7316
  %7323 = fadd fast float %7321, %7322
  %7324 = fadd fast float %7321, %7319
  %7325 = fsub fast float %7318, %7319
  %7326 = fadd fast float %7325, %7321
  %7327 = call float @dx.op.binary.f32(i32 35, float %7323, float %7324)  ; FMax(a,b)
  %7328 = call float @dx.op.binary.f32(i32 36, float %7327, float %7326)  ; FMin(a,b)
  %7329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %7260, float %7261, float %7328, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7330 = extractvalue %dx.types.ResRet.f32 %7329, 0
  %7331 = extractvalue %dx.types.ResRet.f32 %7329, 1
  %7332 = extractvalue %dx.types.ResRet.f32 %7329, 2
  %7333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.i32 %7333, 0
  %7335 = extractvalue %dx.types.CBufRet.i32 %7333, 1
  %7336 = uitofp i32 %7334 to float
  %7337 = uitofp i32 %7335 to float
  %7338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7339 = extractvalue %dx.types.CBufRet.f32 %7338, 0
  %7340 = extractvalue %dx.types.CBufRet.f32 %7338, 1
  %7341 = fmul fast float %7336, %7260
  %7342 = fmul fast float %7337, %7261
  %7343 = fadd fast float %7341, -5.000000e-01
  %7344 = fadd fast float %7342, -5.000000e-01
  %7345 = call float @dx.op.unary.f32(i32 22, float %7343)  ; Frc(value)
  %7346 = call float @dx.op.unary.f32(i32 22, float %7344)  ; Frc(value)
  %7347 = fmul fast float %7345, %7345
  %7348 = fmul fast float %7347, %7345
  %7349 = fsub fast float 3.000000e+00, %7345
  %7350 = fmul fast float %7347, %7349
  %7351 = fmul fast float %7345, 3.000000e+00
  %7352 = fmul fast float %7348, 3.000000e+00
  %7353 = fmul fast float %7347, 6.000000e+00
  %7354 = fsub fast float %7352, %7353
  %7355 = fadd fast float %7354, 4.000000e+00
  %7356 = fmul fast float %7355, 0x3FC5555560000000
  %7357 = fmul fast float %7348, -3.000000e+00
  %7358 = fadd fast float %7347, %7345
  %7359 = fmul fast float %7358, 3.000000e+00
  %7360 = fadd fast float %7357, 1.000000e+00
  %7361 = fadd fast float %7360, %7359
  %7362 = fmul fast float %7348, 0x3FC5555560000000
  %7363 = fmul fast float %7346, %7346
  %7364 = fmul fast float %7363, %7346
  %7365 = fsub fast float 3.000000e+00, %7346
  %7366 = fmul fast float %7363, %7365
  %7367 = fmul fast float %7346, 3.000000e+00
  %7368 = fmul fast float %7364, 3.000000e+00
  %7369 = fmul fast float %7363, 6.000000e+00
  %7370 = fsub fast float %7368, %7369
  %7371 = fadd fast float %7370, 4.000000e+00
  %7372 = fmul fast float %7371, 0x3FC5555560000000
  %7373 = fmul fast float %7364, -3.000000e+00
  %7374 = fadd fast float %7363, %7346
  %7375 = fmul fast float %7374, 3.000000e+00
  %7376 = fadd fast float %7373, 1.000000e+00
  %7377 = fadd fast float %7376, %7375
  %7378 = fmul fast float %7364, 0x3FC5555560000000
  %7379 = fadd fast float %7345, 1.000000e+00
  %7380 = fsub fast float 1.000000e+00, %7351
  %7381 = fadd fast float %7380, %7350
  %7382 = fadd fast float %7381, %7355
  %7383 = fmul fast float %7382, 0x3FC5555560000000
  %7384 = fdiv fast float %7356, %7383
  %7385 = fsub fast float %7379, %7384
  %7386 = fsub fast float 1.000000e+00, %7345
  %7387 = fadd fast float %7361, %7348
  %7388 = fmul fast float %7387, 0x3FC5555560000000
  %7389 = fdiv fast float %7362, %7388
  %7390 = fadd fast float %7386, %7389
  %7391 = fadd fast float %7346, 1.000000e+00
  %7392 = fsub fast float 1.000000e+00, %7367
  %7393 = fadd fast float %7392, %7366
  %7394 = fadd fast float %7393, %7371
  %7395 = fmul fast float %7394, 0x3FC5555560000000
  %7396 = fdiv fast float %7372, %7395
  %7397 = fsub fast float %7391, %7396
  %7398 = fsub fast float 1.000000e+00, %7346
  %7399 = fadd fast float %7377, %7364
  %7400 = fmul fast float %7399, 0x3FC5555560000000
  %7401 = fdiv fast float %7378, %7400
  %7402 = fadd fast float %7401, %7398
  %7403 = fmul fast float %7385, %7339
  %7404 = fsub fast float %7260, %7403
  %7405 = fmul fast float %7390, %7339
  %7406 = fadd fast float %7405, %7260
  %7407 = fmul fast float %7402, %7340
  %7408 = fadd fast float %7407, %7261
  %7409 = fmul fast float %7397, %7340
  %7410 = fsub fast float %7261, %7409
  %7411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7404, float %7410, float %7328, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7412 = extractvalue %dx.types.ResRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.ResRet.f32 %7411, 1
  %7414 = extractvalue %dx.types.ResRet.f32 %7411, 2
  %7415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7406, float %7410, float %7328, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.ResRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.ResRet.f32 %7415, 2
  %7419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7404, float %7408, float %7328, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7420 = extractvalue %dx.types.ResRet.f32 %7419, 0
  %7421 = extractvalue %dx.types.ResRet.f32 %7419, 1
  %7422 = extractvalue %dx.types.ResRet.f32 %7419, 2
  %7423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7406, float %7408, float %7328, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7424 = extractvalue %dx.types.ResRet.f32 %7423, 0
  %7425 = extractvalue %dx.types.ResRet.f32 %7423, 1
  %7426 = extractvalue %dx.types.ResRet.f32 %7423, 2
  %7427 = fsub fast float %7420, %7412
  %7428 = fsub fast float %7421, %7413
  %7429 = fsub fast float %7422, %7414
  %7430 = fmul fast float %7427, %7400
  %7431 = fmul fast float %7428, %7400
  %7432 = fmul fast float %7429, %7400
  %7433 = fadd fast float %7430, %7412
  %7434 = fadd fast float %7431, %7413
  %7435 = fadd fast float %7432, %7414
  %7436 = fsub fast float %7424, %7416
  %7437 = fsub fast float %7425, %7417
  %7438 = fsub fast float %7426, %7418
  %7439 = fmul fast float %7436, %7400
  %7440 = fmul fast float %7437, %7400
  %7441 = fmul fast float %7438, %7400
  %7442 = fsub fast float %7416, %7433
  %7443 = fadd fast float %7442, %7439
  %7444 = fsub fast float %7417, %7434
  %7445 = fadd fast float %7444, %7440
  %7446 = fsub fast float %7418, %7435
  %7447 = fadd fast float %7446, %7441
  %7448 = fmul fast float %7443, %7388
  %7449 = fmul fast float %7445, %7388
  %7450 = fmul fast float %7447, %7388
  %7451 = fadd fast float %7448, %7433
  %7452 = fadd fast float %7449, %7434
  %7453 = fadd fast float %7450, %7435
  %7454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7455 = extractvalue %dx.types.CBufRet.f32 %7454, 1
  %7456 = fmul fast float %7451, %7455
  %7457 = fmul fast float %7452, %7455
  %7458 = fmul fast float %7453, %7455
  br label %7459

; <label>:7459                                    ; preds = %7290, %7247
  %7460 = phi float [ %7330, %7290 ], [ 1.000000e+00, %7247 ]
  %7461 = phi float [ %7331, %7290 ], [ 1.000000e+00, %7247 ]
  %7462 = phi float [ %7332, %7290 ], [ 1.000000e+00, %7247 ]
  %7463 = phi float [ %7456, %7290 ], [ 0.000000e+00, %7247 ]
  %7464 = phi float [ %7457, %7290 ], [ 0.000000e+00, %7247 ]
  %7465 = phi float [ %7458, %7290 ], [ 0.000000e+00, %7247 ]
  %7466 = fmul fast float %7463, %5795
  %7467 = fmul fast float %7464, %5797
  %7468 = fmul fast float %7465, %5799
  %7469 = fmul fast float %7460, %7254
  %7470 = call float @dx.op.dot3.f32(i32 55, float %7460, float %7461, float %7462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7471 = call float @dx.op.dot3.f32(i32 55, float %7466, float %7467, float %7468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7472 = select i1 %228, float %7470, float %7460
  %7473 = select i1 %228, float %7470, float %7461
  %7474 = select i1 %228, float 1.000000e+00, float %7462
  %7475 = select i1 %228, float %7471, float %7466
  %7476 = select i1 %228, float 0.000000e+00, float %7467
  %7477 = select i1 %228, float 0.000000e+00, float %7468
  %7478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.i32 %7478, 3
  %7480 = and i32 %7479, 3
  %7481 = icmp ne i32 %7480, 0
  %7482 = and i32 %7479, 4
  %7483 = icmp ne i32 %7482, 0
  %7484 = and i1 %7481, %7483
  %7485 = and i1 %228, %7484
  br i1 %7485, label %7486, label %7492

; <label>:7486                                    ; preds = %7459
  %7487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7487, 1
  %7489 = fadd fast float %7469, -1.000000e+00
  %7490 = fmul fast float %7488, %7489
  %7491 = fadd fast float %7490, 1.000000e+00
  br label %7492

; <label>:7492                                    ; preds = %7486, %7459
  %7493 = phi float [ %7491, %7486 ], [ %7469, %7459 ]
  %7494 = fadd fast float %7251, %7248
  %7495 = fmul fast float %7472, %7494
  %7496 = fadd fast float %7495, %7475
  %7497 = fadd fast float %7252, %7249
  %7498 = fmul fast float %7473, %7497
  %7499 = fadd fast float %7498, %7476
  %7500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.f32 %7500, 0
  br i1 %228, label %7502, label %7517

; <label>:7502                                    ; preds = %7492
  %7503 = fadd fast float %7496, %7499
  %7504 = fmul fast float %7501, %7503
  %7505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.f32 %7505, 3
  %7507 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %7508 = fsub fast float %5808, %5802
  %7509 = fadd fast float %7508, %5809
  %7510 = fsub fast float %7509, %7507
  %7511 = extractvalue %dx.types.CBufRet.f32 %5803, 2
  %7512 = fmul fast float %7510, %7511
  %7513 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7514 = fsub fast float %7513, %7506
  %7515 = fmul fast float %7514, %7493
  %7516 = fadd fast float %7515, %7506
  br label %7543

; <label>:7517                                    ; preds = %7492
  %7518 = fadd fast float %7253, %7250
  %7519 = fmul fast float %7474, %7518
  %7520 = fadd fast float %7519, %7477
  %7521 = fmul fast float %7501, %7496
  %7522 = fmul fast float %7501, %7499
  %7523 = fmul fast float %7501, %7520
  %7524 = call float @dx.op.binary.f32(i32 35, float %7522, float %7523)  ; FMax(a,b)
  %7525 = call float @dx.op.binary.f32(i32 35, float %7521, float %7524)  ; FMax(a,b)
  %7526 = call float @dx.op.binary.f32(i32 35, float %5797, float %5799)  ; FMax(a,b)
  %7527 = call float @dx.op.binary.f32(i32 35, float %5795, float %7526)  ; FMax(a,b)
  %7528 = call float @dx.op.binary.f32(i32 35, float %7525, float %7527)  ; FMax(a,b)
  %7529 = fcmp fast ugt float %7528, 0x3F10000000000000
  br i1 %7529, label %7531, label %7530

; <label>:7530                                    ; preds = %7517
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7531

; <label>:7531                                    ; preds = %7530, %7517
  %7532 = add i32 %65, 116
  %7533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %7532, i32 undef)  ; BufferLoad(srv,index,wot)
  %7534 = extractvalue %dx.types.ResRet.i32 %7533, 0
  %7535 = and i32 %7534, 32
  %7536 = icmp eq i32 %7535, 0
  br i1 %7536, label %7543, label %7537

; <label>:7537                                    ; preds = %7531
  %7538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.f32 %7538, 0
  %7540 = fmul fast float %7539, 0x3FE99999A0000000
  %7541 = fadd fast float %7539, %7521
  %7542 = fadd fast float %7540, %7523
  br label %7543

; <label>:7543                                    ; preds = %7537, %7531, %7502
  %7544 = phi float [ 1.000000e+00, %7502 ], [ %5797, %7537 ], [ %5797, %7531 ]
  %7545 = phi float [ 1.000000e+00, %7502 ], [ %5799, %7537 ], [ %5799, %7531 ]
  %7546 = phi float [ %7504, %7502 ], [ %7541, %7537 ], [ %7521, %7531 ]
  %7547 = phi float [ %7516, %7502 ], [ %7522, %7537 ], [ %7522, %7531 ]
  %7548 = phi float [ 1.000000e+00, %7502 ], [ %7542, %7537 ], [ %7523, %7531 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7549 = call float @dx.op.binary.f32(i32 36, float %7546, float 3.225500e+04)  ; FMin(a,b)
  %7550 = call float @dx.op.binary.f32(i32 36, float %7547, float 3.225500e+04)  ; FMin(a,b)
  %7551 = call float @dx.op.binary.f32(i32 36, float %7548, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7552 = call float @dx.op.binary.f32(i32 36, float %5795, float 3.225500e+04)  ; FMin(a,b)
  %7553 = call float @dx.op.binary.f32(i32 36, float %7544, float 3.225500e+04)  ; FMin(a,b)
  %7554 = call float @dx.op.binary.f32(i32 36, float %7545, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %7552)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %7553)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %7554)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!78 = !{[24 x i32] [i32 22, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119]}
!79 = !{void ()* @ps_main, !"ps_main", !80, !4, !99}
!80 = !{!81, !95, null}
!81 = !{!82, !85, !87, !89, !90, !91, !93, !94}
!82 = !{i32 0, !"SV_Position", i8 9, i8 3, !83, i8 4, i32 1, i8 4, i32 0, i8 0, !84}
!83 = !{i32 0}
!84 = !{i32 3, i32 15}
!85 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 2, i32 1, i8 0, !86}
!86 = !{i32 3, i32 3}
!87 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 2, i8 0, !88}
!88 = !{i32 3, i32 7}
!89 = !{i32 3, !"NORMAL", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 3, i8 0, !88}
!90 = !{i32 4, !"TANGENT", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 4, i8 0, !84}
!91 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 5, i8 0, !92}
!92 = !{i32 3, i32 1}
!93 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 5, i8 1, !92}
!94 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !83, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96, !97}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 0, i8 0, !84}
!97 = !{i32 1, !"SV_Target", i8 9, i8 16, !98, i8 0, i32 1, i8 4, i32 1, i8 0, !84}
!98 = !{i32 1}
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

