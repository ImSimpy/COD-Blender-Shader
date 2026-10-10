;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xy  
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
; shader hash: 418d0158401a91fb9ddb370c53578837
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
; Number of inputs: 30, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
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
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = alloca [12 x float], align 4
  %91 = alloca [12 x float], align 4
  %92 = alloca [3 x float], align 4
  %93 = alloca [3 x float], align 4
  %94 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %95 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = fmul fast float %97, %86
  %99 = fmul fast float %97, %87
  %100 = fmul fast float %75, %72
  %101 = fmul fast float %76, %71
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %76, %70
  %104 = fmul fast float %74, %72
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %74, %71
  %107 = fmul fast float %75, %70
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %102, %73
  %110 = fmul fast float %105, %73
  %111 = fmul fast float %108, %73
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %113, 2.000000e+00
  %116 = fmul fast float %115, %98
  %117 = fmul fast float %114, 2.000000e+00
  %118 = fmul fast float %117, %99
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %119, %122
  %126 = fmul fast float %119, %123
  %127 = fmul fast float %119, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %120, %129
  %133 = fmul fast float %120, %130
  %134 = fmul fast float %120, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fadd fast float %132, %136
  %140 = fadd fast float %139, %125
  %141 = fadd fast float %133, %137
  %142 = fadd fast float %141, %126
  %143 = fadd fast float %134, %138
  %144 = fadd fast float %143, %127
  %145 = fmul fast float %140, %89
  %146 = fmul fast float %142, %89
  %147 = fmul fast float %144, %89
  %148 = fadd fast float %79, 5.000000e-01
  %149 = fptoui float %148 to i32
  %150 = shl i32 %149, 3
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %150, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = or i32 %150, 4
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = and i32 %152, 8191
  %157 = lshr i32 %152, 13
  %158 = and i32 %157, 8191
  %159 = lshr i32 %152, 26
  %160 = and i32 %155, 65535
  %161 = lshr i32 %155, 16
  %162 = uitofp i32 %160 to float
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %165 = uitofp i32 %161 to float
  %166 = uitofp i32 %156 to float
  %167 = fmul fast float %164, %166
  %168 = uitofp i32 %158 to float
  %169 = fmul fast float %164, %168
  %170 = fmul fast float %164, %77
  %171 = fmul fast float %170, %162
  %172 = fmul fast float %164, %78
  %173 = fmul fast float %172, %165
  %174 = fadd fast float %171, %167
  %175 = fadd fast float %169, %173
  %176 = uitofp i32 %159 to float
  %177 = fmul fast float %98, 5.000000e-01
  %178 = fmul fast float %99, 5.000000e-01
  %179 = fptosi float %177 to i32
  %180 = fptosi float %178 to i32
  %181 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %179, i32 %180, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = lshr i32 %182, 18
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %184, 0x3F4C00EBA0000000
  %186 = call float @dx.op.unary.f32(i32 21, float %185)  ; Exp(value)
  %187 = fadd fast float %186, -1.000000e+00
  %188 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %189 = extractvalue %dx.types.Dimensions %188, 0
  %190 = sitofp i32 %189 to float
  %191 = extractvalue %dx.types.Dimensions %188, 1
  %192 = sitofp i32 %191 to float
  %193 = fcmp fast oge float %177, %190
  %194 = fcmp fast oge float %178, %192
  %195 = or i1 %193, %194
  %196 = select i1 %195, float 0x4197782600000000, float %187
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %199 = extractvalue %dx.types.CBufRet.f32 %197, 3
  %200 = fmul fast float %198, %98
  %201 = fmul fast float %199, %99
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 114688
  %205 = icmp ne i32 %204, 0
  %206 = select i1 %205, float %200, float 0.000000e+00
  %207 = select i1 %205, float %201, float 0.000000e+00
  %208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %59, float %206, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = fmul fast float %209, 2.550000e+02
  %211 = fptoui float %210 to i32
  %212 = select i1 %205, i32 %211, i32 0
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.i32 %214, 3
  %216 = and i32 %215, 3
  %217 = icmp ne i32 %216, 0
  %218 = and i32 %215, 4
  %219 = icmp ne i32 %218, 0
  %220 = and i1 %217, %219
  br i1 %220, label %221, label %232

; <label>:221                                     ; preds = %0
  %222 = extractvalue %dx.types.CBufRet.f32 %213, 3
  %223 = fmul fast float %222, %99
  %224 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %225 = fmul fast float %224, %98
  %226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %58, float %225, float %223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = fsub fast float 1.000000e+00, %227
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = fcmp fast olt float %228, %230
  br label %235

; <label>:232                                     ; preds = %0
  %233 = icmp eq i32 %218, 0
  %234 = and i1 %217, %233
  br label %235

; <label>:235                                     ; preds = %232, %221
  %236 = phi i1 [ %231, %221 ], [ %234, %232 ]
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %239 = fmul fast float %238, 0x3FE3C6EF40000000
  %240 = frem fast float %98, 2.560000e+02
  %241 = frem fast float %99, 2.560000e+02
  %242 = fptoui float %240 to i32
  %243 = fptoui float %241 to i32
  %244 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %242, i32 %243, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = fadd fast float %245, %239
  %247 = call float @dx.op.unary.f32(i32 22, float %246)  ; Frc(value)
  %248 = add i32 %65, 92
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = shl i32 %250, 4
  %252 = and i32 %251, 32752
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %250, 7
  %255 = and i32 %254, 32752
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %250, 22
  %258 = shl nuw nsw i32 %257, 5
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = add i32 %65, 120
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = lshr i32 %262, 8
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = lshr i32 %262, 16
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = add i32 %65, 36
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = add i32 %65, 160
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = add i32 %65, 108
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = shl i32 %282, 4
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %282, 7
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %282, 22
  %290 = shl nuw nsw i32 %289, 5
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %65, 136
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %294, 8
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %294, 16
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = add i32 %65, 52
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %65, 176
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = fmul fast float %317, 0x3F50624DE0000000
  %321 = fmul fast float %319, 0x3F50624DE0000000
  %322 = add i32 %65, 188
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = lshr i32 %324, 20
  %326 = and i32 %325, 3
  %327 = add nuw nsw i32 %326, 1
  %328 = add i32 %65, 24
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = add i32 %65, 28
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = or i32 %333, %330
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %987, label %336

; <label>:336                                     ; preds = %235
  %337 = lshr i32 %279, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = fmul fast float %338, 0x3F50624DE0000000
  %340 = and i32 %279, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = fmul fast float %341, 0x3F50624DE0000000
  %343 = lshr i32 %276, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = and i32 %276, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %65, 156
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = lshr i32 %349, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = fmul fast float %351, 0x3F50624DE0000000
  %353 = add i32 %65, 56
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = lshr i32 %355, 16
  %357 = and i32 %356, 255
  %358 = lshr i32 %355, 24
  %359 = add i32 %65, 164
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %65, 32
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = lshr i32 %368, 22
  %370 = shl nuw nsw i32 %369, 5
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = shl i32 %368, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %368, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %380 = fmul fast float %379, 1.000000e+03
  %381 = fmul fast float %342, %380
  %382 = call float @dx.op.unary.f32(i32 22, float %381)  ; Frc(value)
  %383 = fadd fast float %382, %346
  %384 = fmul fast float %339, %380
  %385 = call float @dx.op.unary.f32(i32 22, float %384)  ; Frc(value)
  %386 = fadd fast float %385, %344
  %387 = fmul fast float %352, %380
  %388 = call float @dx.op.unary.f32(i32 22, float %387)  ; Frc(value)
  %389 = fmul fast float %388, 0x401921FB60000000
  %390 = fadd fast float %389, %371
  %391 = call float @dx.op.unary.f32(i32 13, float %390)  ; Sin(value)
  %392 = call float @dx.op.unary.f32(i32 12, float %390)  ; Cos(value)
  %393 = fsub fast float -0.000000e+00, %391
  %394 = fadd fast float %80, -5.000000e-01
  %395 = fadd fast float %81, -5.000000e-01
  %396 = fmul fast float %363, %394
  %397 = fmul fast float %365, %395
  %398 = fadd fast float %396, 5.000000e-01
  %399 = fadd fast float %397, 5.000000e-01
  %400 = fmul fast float %374, %398
  %401 = fmul fast float %377, %399
  %402 = fmul fast float %392, %400
  %403 = call float @dx.op.tertiary.f32(i32 46, float %393, float %401, float %402)  ; FMad(a,b,c)
  %404 = fmul fast float %391, %400
  %405 = call float @dx.op.tertiary.f32(i32 46, float %392, float %401, float %404)  ; FMad(a,b,c)
  %406 = fadd fast float %383, %403
  %407 = fadd fast float %386, %405
  %408 = icmp ugt i32 %357, 1
  %409 = icmp ugt i32 %355, 33554431
  %410 = or i1 %409, %408
  br i1 %410, label %411, label %436

; <label>:411                                     ; preds = %336
  %412 = add i32 %65, 132
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = lshr i32 %414, 16
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = fmul fast float %379, %416
  %418 = call float @dx.op.unary.f32(i32 22, float %417)  ; Frc(value)
  %419 = mul nuw nsw i32 %357, %358
  %420 = uitofp i32 %419 to float
  %421 = fmul fast float %418, %420
  %422 = call float @dx.op.unary.f32(i32 27, float %421)  ; Round_ni(value)
  %423 = fptoui float %422 to i32
  %424 = urem i32 %423, %357
  %425 = udiv i32 %423, %358
  %426 = call float @dx.op.unary.f32(i32 22, float %406)  ; Frc(value)
  %427 = call float @dx.op.unary.f32(i32 22, float %407)  ; Frc(value)
  %428 = uitofp i32 %424 to float
  %429 = uitofp i32 %425 to float
  %430 = fadd fast float %426, %428
  %431 = fadd fast float %427, %429
  %432 = uitofp i32 %357 to float
  %433 = uitofp i32 %358 to float
  %434 = fdiv fast float %430, %432
  %435 = fdiv fast float %431, %433
  br label %436

; <label>:436                                     ; preds = %411, %336
  %437 = phi float [ %434, %411 ], [ %406, %336 ]
  %438 = phi float [ %435, %411 ], [ %407, %336 ]
  %439 = and i32 %330, 16777216
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %550, label %441

; <label>:441                                     ; preds = %436
  %442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.f32 %442, 0
  %444 = extractvalue %dx.types.CBufRet.f32 %442, 1
  %445 = extractvalue %dx.types.CBufRet.f32 %442, 2
  %446 = fadd fast float %443, %145
  %447 = fadd fast float %444, %146
  %448 = fadd fast float %445, %147
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %452 = icmp eq i32 %64, 65535
  br i1 %452, label %547, label %453

; <label>:453                                     ; preds = %441
  %454 = lshr i32 %64, 1
  %455 = shl i32 %454, 2
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %64, 1
  %459 = icmp ne i32 %458, 0
  %460 = lshr i32 %457, 16
  %461 = and i32 %457, 65535
  %462 = select i1 %459, i32 %460, i32 %461
  %463 = icmp eq i32 %462, 65535
  br i1 %463, label %543, label %464

; <label>:464                                     ; preds = %453
  %465 = mul nuw nsw i32 %462, 40
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = add nuw nsw i32 %465, 12
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = extractvalue %dx.types.ResRet.f32 %471, 2
  %475 = add nuw nsw i32 %465, 24
  %476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.f32 %476, 0
  %478 = extractvalue %dx.types.ResRet.f32 %476, 1
  %479 = extractvalue %dx.types.ResRet.f32 %476, 2
  %480 = add nuw nsw i32 %465, 36
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = fsub fast float %446, %467
  %484 = fsub fast float %447, %468
  %485 = fsub fast float %448, %469
  %486 = fmul fast float %482, %483
  %487 = fmul fast float %482, %484
  %488 = fmul fast float %482, %485
  %489 = call float @dx.op.unary.f32(i32 27, float %486)  ; Round_ni(value)
  %490 = call float @dx.op.unary.f32(i32 27, float %487)  ; Round_ni(value)
  %491 = call float @dx.op.unary.f32(i32 27, float %488)  ; Round_ni(value)
  %492 = fadd fast float %489, 5.000000e-01
  %493 = fadd fast float %490, 5.000000e-01
  %494 = fadd fast float %491, 5.000000e-01
  %495 = fmul fast float %492, %472
  %496 = fmul fast float %493, %473
  %497 = fmul fast float %494, %474
  %498 = shl i32 %64, 2
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = add i32 %500, 0
  %502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %503 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %504 = call float @dx.op.unary.f32(i32 22, float %496)  ; Frc(value)
  %505 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %502, %dx.types.Handle %59, float %503, float %504, float %505, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = fmul fast float %507, 1.023000e+03
  %511 = fmul fast float %508, 1.023000e+03
  %512 = fmul fast float %509, 1.023000e+03
  %513 = fadd fast float %510, 5.000000e-01
  %514 = fadd fast float %511, 5.000000e-01
  %515 = fadd fast float %512, 5.000000e-01
  %516 = call float @dx.op.unary.f32(i32 27, float %513)  ; Round_ni(value)
  %517 = call float @dx.op.unary.f32(i32 27, float %514)  ; Round_ni(value)
  %518 = call float @dx.op.unary.f32(i32 27, float %515)  ; Round_ni(value)
  %519 = fsub fast float %486, %489
  %520 = fsub fast float %487, %490
  %521 = fsub fast float %488, %491
  %522 = fmul fast float %519, 7.500000e-01
  %523 = fmul fast float %520, 7.500000e-01
  %524 = fmul fast float %521, 7.500000e-01
  %525 = fadd fast float %489, 1.250000e-01
  %526 = fadd fast float %525, %522
  %527 = fadd fast float %526, %516
  %528 = fadd fast float %490, 1.250000e-01
  %529 = fadd fast float %528, %523
  %530 = fadd fast float %529, %517
  %531 = fadd fast float %491, 1.250000e-01
  %532 = fadd fast float %531, %524
  %533 = fadd fast float %532, %518
  %534 = fmul fast float %527, %477
  %535 = fmul fast float %530, %478
  %536 = fmul fast float %533, %479
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = add i32 %538, 0
  %540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %540, %dx.types.Handle %57, float %534, float %535, float %536, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  br label %543

; <label>:543                                     ; preds = %464, %453
  %544 = phi float [ %542, %464 ], [ -1.000000e+00, %453 ]
  %545 = fadd fast float %544, %451
  %546 = call float @dx.op.unary.f32(i32 7, float %545)  ; Saturate(value)
  br label %547

; <label>:547                                     ; preds = %543, %441
  %548 = phi float [ %546, %543 ], [ %451, %441 ]
  %549 = fmul fast float %548, %84
  br label %550

; <label>:550                                     ; preds = %547, %436
  %551 = phi float [ %549, %547 ], [ %84, %436 ]
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 256
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %602, label %556

; <label>:556                                     ; preds = %550
  %557 = add i32 %65, 232
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = add i32 %559, 0
  %561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %561, %dx.types.Handle %95, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = add i32 %65, 68
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = shl i32 %566, 4
  %568 = and i32 %567, 32752
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = lshr i32 %566, 7
  %571 = and i32 %570, 32752
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = fsub fast float 1.000000e+00, %551
  %574 = call float @dx.op.binary.f32(i32 35, float %573, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %575 = bitcast float %551 to i32
  %576 = sitofp i32 %575 to float
  %577 = fadd fast float %576, 0xC1CFBF8940000000
  %578 = fmul fast float %572, %577
  %579 = fadd fast float %578, 0x41CFBF8940000000
  %580 = fptosi float %579 to i32
  %581 = bitcast i32 %580 to float
  %582 = bitcast float %574 to i32
  %583 = sitofp i32 %582 to float
  %584 = fadd fast float %583, 0xC1CFBF8940000000
  %585 = fmul fast float %584, %572
  %586 = fadd fast float %585, 0x41CFBF8940000000
  %587 = fptosi float %586 to i32
  %588 = bitcast i32 %587 to float
  %589 = fmul fast float %581, %569
  %590 = fmul fast float %588, %569
  %591 = fsub fast float %574, %589
  %592 = fadd fast float %590, %574
  %593 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %594 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %595 = fsub fast float %563, %593
  %596 = fsub fast float %594, %593
  %597 = bitcast float %596 to i32
  %598 = sub nsw i32 2129859010, %597
  %599 = bitcast i32 %598 to float
  %600 = fmul fast float %599, %595
  %601 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  br label %602

; <label>:602                                     ; preds = %556, %550
  %603 = phi float [ %601, %556 ], [ %551, %550 ]
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %605, 128
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %624, label %608

; <label>:608                                     ; preds = %602
  %609 = add i32 %65, 224
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = add i32 %611, 0
  %613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %613, %dx.types.Handle %95, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = and i32 %617, 524288
  %619 = icmp ne i32 %618, 0
  %620 = fcmp fast ogt float %615, 0x3FE0101020000000
  %621 = select i1 %620, float 1.000000e+00, float 0.000000e+00
  %622 = select i1 %619, float %621, float %615
  %623 = fmul fast float %622, %603
  br label %624

; <label>:624                                     ; preds = %608, %602
  %625 = phi float [ %623, %608 ], [ %603, %602 ]
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 16
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %828, label %630

; <label>:630                                     ; preds = %624
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = add i32 %65, 200
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = add i32 %635, 0
  %637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %637, %dx.types.Handle %94, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = extractvalue %dx.types.ResRet.f32 %638, 3
  %643 = and i32 %632, 255
  %644 = uitofp i32 %643 to float
  %645 = lshr i32 %632, 8
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %642, %644
  %649 = fadd fast float %648, %647
  %650 = fmul fast float %649, 0x3F70101000000000
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = and i32 %652, 512
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %663, label %655

; <label>:655                                     ; preds = %630
  %656 = add i32 %65, 240
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = add i32 %658, 0
  %660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %660, %dx.types.Handle %95, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  br label %663

; <label>:663                                     ; preds = %655, %630
  %664 = phi float [ %662, %655 ], [ 1.000000e+00, %630 ]
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 33554432
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %775, label %669

; <label>:669                                     ; preds = %663
  %670 = add i32 %65, 128
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 65535
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = lshr i32 %672, 16
  %676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %675)  ; LegacyF16ToF32(value)
  %677 = add i32 %65, 132
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %677, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 65535
  %681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %680)  ; LegacyF16ToF32(value)
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = lshr i32 %683, 24
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F70101020000000
  %687 = and i32 %683, 255
  %688 = uitofp i32 %687 to float
  %689 = fmul fast float %688, 0x3F70101020000000
  %690 = lshr i32 %683, 8
  %691 = and i32 %690, 255
  %692 = uitofp i32 %691 to float
  %693 = fmul fast float %692, 0x3F70101020000000
  %694 = lshr i32 %683, 16
  %695 = and i32 %694, 255
  %696 = uitofp i32 %695 to float
  %697 = fmul fast float %696, 0x3F70101020000000
  %698 = add i32 %65, 124
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = lshr i32 %700, 24
  %702 = uitofp i32 %701 to float
  %703 = fmul fast float %702, 0x3F70101020000000
  %704 = and i32 %700, 255
  %705 = uitofp i32 %704 to float
  %706 = fmul fast float %705, 0x3F70101020000000
  %707 = lshr i32 %700, 8
  %708 = and i32 %707, 255
  %709 = uitofp i32 %708 to float
  %710 = fmul fast float %709, 0x3F70101020000000
  %711 = lshr i32 %700, 16
  %712 = and i32 %711, 255
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %713, 0x3F70101020000000
  %715 = bitcast float %639 to i32
  %716 = ashr i32 %715, 1
  %717 = sub nsw i32 1597463174, %716
  %718 = bitcast i32 %717 to float
  %719 = fmul fast float %639, 5.000000e-01
  %720 = fmul fast float %718, %718
  %721 = fmul fast float %720, %719
  %722 = fsub fast float 1.500000e+00, %721
  %723 = fmul fast float %718, %639
  %724 = fmul fast float %723, %722
  %725 = bitcast float %640 to i32
  %726 = ashr i32 %725, 1
  %727 = sub nsw i32 1597463174, %726
  %728 = bitcast i32 %727 to float
  %729 = fmul fast float %640, 5.000000e-01
  %730 = fmul fast float %728, %728
  %731 = fmul fast float %730, %729
  %732 = fsub fast float 1.500000e+00, %731
  %733 = fmul fast float %728, %640
  %734 = fmul fast float %733, %732
  %735 = bitcast float %641 to i32
  %736 = ashr i32 %735, 1
  %737 = sub nsw i32 1597463174, %736
  %738 = bitcast i32 %737 to float
  %739 = fmul fast float %641, 5.000000e-01
  %740 = fmul fast float %738, %738
  %741 = fmul fast float %740, %739
  %742 = fsub fast float 1.500000e+00, %741
  %743 = fmul fast float %738, %641
  %744 = fmul fast float %743, %742
  %745 = fsub fast float %724, %706
  %746 = fsub fast float %734, %710
  %747 = fsub fast float %744, %714
  %748 = fmul fast float %745, %674
  %749 = fmul fast float %746, %676
  %750 = fmul fast float %747, %681
  %751 = fadd fast float %748, %689
  %752 = fadd fast float %749, %693
  %753 = fadd fast float %750, %697
  %754 = call float @dx.op.unary.f32(i32 7, float %751)  ; Saturate(value)
  %755 = call float @dx.op.unary.f32(i32 7, float %752)  ; Saturate(value)
  %756 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %757 = fmul fast float %754, %754
  %758 = fmul fast float %755, %755
  %759 = fmul fast float %756, %756
  %760 = fsub fast float %757, %639
  %761 = fsub fast float %758, %640
  %762 = fsub fast float %759, %641
  %763 = fmul fast float %760, %664
  %764 = fmul fast float %761, %664
  %765 = fmul fast float %762, %664
  %766 = fadd fast float %763, %639
  %767 = fadd fast float %764, %640
  %768 = fadd fast float %765, %641
  %769 = fadd fast float %686, %650
  %770 = fsub fast float %769, %703
  %771 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %772 = fsub fast float %771, %650
  %773 = fmul fast float %772, %664
  %774 = fadd fast float %773, %650
  br label %828

; <label>:775                                     ; preds = %663
  %776 = and i32 %666, 134217728
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %812, label %778

; <label>:778                                     ; preds = %775
  %779 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %780 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %781 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %782 = fadd fast float %779, -5.000000e-01
  %783 = fadd fast float %780, -5.000000e-01
  %784 = fadd fast float %781, -5.000000e-01
  %785 = fmul fast float %782, %664
  %786 = fmul fast float %783, %664
  %787 = fmul fast float %784, %664
  %788 = fadd fast float %785, 5.000000e-01
  %789 = fadd fast float %786, 5.000000e-01
  %790 = fadd fast float %787, 5.000000e-01
  %791 = call float @dx.op.unary.f32(i32 24, float %639)  ; Sqrt(value)
  %792 = call float @dx.op.unary.f32(i32 24, float %640)  ; Sqrt(value)
  %793 = call float @dx.op.unary.f32(i32 24, float %641)  ; Sqrt(value)
  %794 = fmul fast float %788, 2.000000e+00
  %795 = fsub fast float 1.000000e+00, %794
  %796 = fmul fast float %795, %791
  %797 = fadd fast float %796, %794
  %798 = fmul fast float %797, %791
  %799 = fmul fast float %789, 2.000000e+00
  %800 = fsub fast float 1.000000e+00, %799
  %801 = fmul fast float %800, %792
  %802 = fadd fast float %801, %799
  %803 = fmul fast float %802, %792
  %804 = fmul fast float %790, 2.000000e+00
  %805 = fsub fast float 1.000000e+00, %804
  %806 = fmul fast float %805, %793
  %807 = fadd fast float %806, %804
  %808 = fmul fast float %807, %793
  %809 = fmul fast float %798, %798
  %810 = fmul fast float %803, %803
  %811 = fmul fast float %808, %808
  br label %828

; <label>:812                                     ; preds = %775
  %813 = fmul fast float %265, %265
  %814 = fmul fast float %269, %269
  %815 = fmul fast float %273, %273
  %816 = fadd fast float %813, -1.000000e+00
  %817 = fadd fast float %814, -1.000000e+00
  %818 = fadd fast float %815, -1.000000e+00
  %819 = fmul fast float %664, %816
  %820 = fmul fast float %664, %817
  %821 = fmul fast float %664, %818
  %822 = fadd fast float %819, 1.000000e+00
  %823 = fadd fast float %820, 1.000000e+00
  %824 = fadd fast float %821, 1.000000e+00
  %825 = fmul fast float %822, %639
  %826 = fmul fast float %823, %640
  %827 = fmul fast float %824, %641
  br label %828

; <label>:828                                     ; preds = %812, %778, %669, %624
  %829 = phi float [ %774, %669 ], [ %650, %778 ], [ %650, %812 ], [ 0x3FA23C0BE0000000, %624 ]
  %830 = phi float [ %766, %669 ], [ %809, %778 ], [ %825, %812 ], [ 1.000000e+00, %624 ]
  %831 = phi float [ %767, %669 ], [ %810, %778 ], [ %826, %812 ], [ 1.000000e+00, %624 ]
  %832 = phi float [ %768, %669 ], [ %811, %778 ], [ %827, %812 ], [ 1.000000e+00, %624 ]
  %833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.i32 %833, 1
  %835 = and i32 %834, 1
  %836 = icmp ne i32 %835, 0
  %837 = add i32 %65, 196
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 32
  %841 = icmp ne i32 %840, 0
  %842 = and i1 %836, %841
  %843 = select i1 %842, float 1.000000e+00, float %830
  %844 = select i1 %842, float 0x3FD3333340000000, float %831
  %845 = select i1 %842, float 0x3FD3333340000000, float %832
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 32
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %922, label %850

; <label>:850                                     ; preds = %828
  %851 = add i32 %65, 60
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = add i32 %65, 208
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = add i32 %856, 0
  %858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %858, %dx.types.Handle %94, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 0
  %861 = extractvalue %dx.types.ResRet.f32 %859, 1
  %862 = extractvalue %dx.types.ResRet.f32 %859, 2
  %863 = extractvalue %dx.types.ResRet.f32 %859, 3
  %864 = and i32 %853, 255
  %865 = uitofp i32 %864 to float
  %866 = lshr i32 %853, 8
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = lshr i32 %853, 16
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = fmul fast float %871, 0x3F70101000000000
  %873 = fmul fast float %860, %865
  %874 = fadd fast float %873, %868
  %875 = fmul fast float %874, 0x3F70101000000000
  %876 = fadd fast float %861, -5.000000e-01
  %877 = fadd fast float %863, -5.000000e-01
  %878 = fmul fast float %876, %872
  %879 = fmul fast float %877, %872
  %880 = fadd fast float %878, 5.000000e-01
  %881 = fadd fast float %879, 5.000000e-01
  %882 = fmul fast float %880, 2.000000e+00
  %883 = fadd fast float %882, -1.000000e+00
  %884 = fmul fast float %881, 2.000000e+00
  %885 = fadd fast float %884, -1.000000e+00
  %886 = fadd fast float %883, %885
  %887 = fmul fast float %886, 5.000000e-01
  %888 = fsub fast float %883, %885
  %889 = fmul fast float %888, 5.000000e-01
  %890 = call float @dx.op.unary.f32(i32 6, float %887)  ; FAbs(value)
  %891 = fsub fast float 1.000000e+00, %890
  %892 = call float @dx.op.unary.f32(i32 6, float %889)  ; FAbs(value)
  %893 = fsub fast float %891, %892
  %894 = call float @dx.op.dot3.f32(i32 55, float %887, float %889, float %893, float %887, float %889, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = call float @dx.op.unary.f32(i32 25, float %894)  ; Rsqrt(value)
  %896 = fmul fast float %887, %895
  %897 = fmul fast float %889, %895
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = and i32 %899, 67108864
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %918, label %902

; <label>:902                                     ; preds = %850
  %903 = add i32 %65, 152
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 65535
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = and i32 %909, 65535
  %911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %910)  ; LegacyF16ToF32(value)
  %912 = lshr i32 %905, 16
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = fsub fast float %875, %913
  %915 = fmul fast float %914, %907
  %916 = fadd fast float %915, %911
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  br label %918

; <label>:918                                     ; preds = %902, %850
  %919 = phi float [ %917, %902 ], [ %875, %850 ]
  %920 = call float @dx.op.dot2.f32(i32 54, float %896, float %897, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %921 = call float @dx.op.dot2.f32(i32 54, float %896, float %897, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %922

; <label>:922                                     ; preds = %918, %828
  %923 = phi float [ %919, %918 ], [ 0x3FD6666660000000, %828 ]
  %924 = phi float [ %920, %918 ], [ 0.000000e+00, %828 ]
  %925 = phi float [ %921, %918 ], [ 0.000000e+00, %828 ]
  %926 = phi float [ %862, %918 ], [ 1.000000e+00, %828 ]
  %927 = add i32 %65, 96
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = lshr i32 %929, 22
  %931 = shl nuw nsw i32 %930, 5
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = and i32 %934, 64
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %970, label %937

; <label>:937                                     ; preds = %922
  %938 = add i32 %65, 216
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = add i32 %940, 0
  %942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 131072
  %946 = icmp eq i32 %945, 0
  %947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %942, %dx.types.Handle %94, float %437, float %438, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = extractvalue %dx.types.ResRet.f32 %947, 2
  %951 = fmul fast float %948, %253
  %952 = fmul fast float %949, %256
  %953 = fmul fast float %950, %259
  br i1 %946, label %960, label %954

; <label>:954                                     ; preds = %937
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %957 = fmul fast float %956, %951
  %958 = fmul fast float %956, %952
  %959 = fmul fast float %956, %953
  br label %960

; <label>:960                                     ; preds = %954, %937
  %961 = phi float [ %957, %954 ], [ %951, %937 ]
  %962 = phi float [ %958, %954 ], [ %952, %937 ]
  %963 = phi float [ %959, %954 ], [ %953, %937 ]
  %964 = fmul fast float %961, %932
  %965 = select i1 %236, float %964, float %961
  %966 = call float @dx.op.dot3.f32(i32 55, float %965, float %962, float %963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %967 = select i1 %236, float 0.000000e+00, float %961
  %968 = select i1 %236, float %966, float %962
  %969 = select i1 %236, float 0.000000e+00, float %963
  br label %970

; <label>:970                                     ; preds = %960, %922
  %971 = phi float [ %967, %960 ], [ 0.000000e+00, %922 ]
  %972 = phi float [ %968, %960 ], [ 0.000000e+00, %922 ]
  %973 = phi float [ %969, %960 ], [ 0.000000e+00, %922 ]
  %974 = add i32 %65, 64
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 255
  %978 = uitofp i32 %977 to float
  %979 = lshr i32 %976, 8
  %980 = and i32 %979, 255
  %981 = uitofp i32 %980 to float
  %982 = call float @dx.op.dot3.f32(i32 55, float %843, float %844, float %845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %983 = fmul fast float %981, %982
  %984 = fadd fast float %983, %978
  %985 = fmul fast float %984, 0x3F70101020000000
  %986 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  br label %987

; <label>:987                                     ; preds = %970, %235
  %988 = phi float [ %924, %970 ], [ 0.000000e+00, %235 ]
  %989 = phi float [ %925, %970 ], [ 0.000000e+00, %235 ]
  %990 = phi float [ %843, %970 ], [ 0.000000e+00, %235 ]
  %991 = phi float [ %844, %970 ], [ 0.000000e+00, %235 ]
  %992 = phi float [ %845, %970 ], [ 0.000000e+00, %235 ]
  %993 = phi float [ %971, %970 ], [ 0.000000e+00, %235 ]
  %994 = phi float [ %972, %970 ], [ 0.000000e+00, %235 ]
  %995 = phi float [ %973, %970 ], [ 0.000000e+00, %235 ]
  %996 = phi float [ %829, %970 ], [ 0.000000e+00, %235 ]
  %997 = phi float [ %625, %970 ], [ 0.000000e+00, %235 ]
  %998 = phi float [ %923, %970 ], [ 0.000000e+00, %235 ]
  %999 = phi float [ %926, %970 ], [ 0.000000e+00, %235 ]
  %1000 = phi float [ %986, %970 ], [ 0.000000e+00, %235 ]
  %1001 = icmp ult i32 %327, 2
  %1002 = add i32 %65, 40
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = add i32 %65, 44
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = or i32 %1007, %1004
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1833, label %1010

; <label>:1010                                    ; preds = %987
  %1011 = add i32 %65, 172
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = lshr i32 %1013, 16
  %1015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1014)  ; LegacyF16ToF32(value)
  %1016 = fmul fast float %1015, 0x3F50624DE0000000
  %1017 = add i32 %65, 72
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = lshr i32 %1019, 16
  %1021 = and i32 %1020, 255
  %1022 = lshr i32 %1019, 24
  %1023 = add i32 %65, 180
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = and i32 %1025, 65535
  %1027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1026)  ; LegacyF16ToF32(value)
  %1028 = lshr i32 %1025, 16
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = add i32 %65, 48
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = lshr i32 %1032, 22
  %1034 = shl nuw nsw i32 %1033, 5
  %1035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1034)  ; LegacyF16ToF32(value)
  %1036 = shl i32 %1032, 4
  %1037 = and i32 %1036, 32752
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = lshr i32 %1032, 7
  %1040 = and i32 %1039, 32752
  %1041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1040)  ; LegacyF16ToF32(value)
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 3
  %1044 = fmul fast float %1043, 1.000000e+03
  %1045 = fmul fast float %320, %1044
  %1046 = call float @dx.op.unary.f32(i32 22, float %1045)  ; Frc(value)
  %1047 = fadd fast float %1046, %310
  %1048 = fmul fast float %321, %1044
  %1049 = call float @dx.op.unary.f32(i32 22, float %1048)  ; Frc(value)
  %1050 = fadd fast float %1049, %312
  %1051 = fmul fast float %1016, %1044
  %1052 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1053 = fmul fast float %1052, 0x401921FB60000000
  %1054 = fadd fast float %1053, %1035
  %1055 = call float @dx.op.unary.f32(i32 13, float %1054)  ; Sin(value)
  %1056 = call float @dx.op.unary.f32(i32 12, float %1054)  ; Cos(value)
  %1057 = fsub fast float -0.000000e+00, %1055
  %1058 = fadd fast float %82, -5.000000e-01
  %1059 = fadd fast float %83, -5.000000e-01
  %1060 = fmul fast float %1027, %1058
  %1061 = fmul fast float %1029, %1059
  %1062 = fadd fast float %1060, 5.000000e-01
  %1063 = fadd fast float %1061, 5.000000e-01
  %1064 = fmul fast float %1038, %1062
  %1065 = fmul fast float %1041, %1063
  %1066 = fmul fast float %1056, %1064
  %1067 = call float @dx.op.tertiary.f32(i32 46, float %1057, float %1065, float %1066)  ; FMad(a,b,c)
  %1068 = fmul fast float %1055, %1064
  %1069 = call float @dx.op.tertiary.f32(i32 46, float %1056, float %1065, float %1068)  ; FMad(a,b,c)
  %1070 = fadd fast float %1047, %1067
  %1071 = fadd fast float %1050, %1069
  %1072 = icmp ugt i32 %1021, 1
  %1073 = icmp ugt i32 %1019, 33554431
  %1074 = or i1 %1073, %1072
  br i1 %1074, label %1075, label %1100

; <label>:1075                                    ; preds = %1010
  %1076 = add i32 %65, 148
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = lshr i32 %1078, 16
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = fmul fast float %1043, %1080
  %1082 = call float @dx.op.unary.f32(i32 22, float %1081)  ; Frc(value)
  %1083 = mul nuw nsw i32 %1021, %1022
  %1084 = uitofp i32 %1083 to float
  %1085 = fmul fast float %1082, %1084
  %1086 = call float @dx.op.unary.f32(i32 27, float %1085)  ; Round_ni(value)
  %1087 = fptoui float %1086 to i32
  %1088 = urem i32 %1087, %1021
  %1089 = udiv i32 %1087, %1022
  %1090 = call float @dx.op.unary.f32(i32 22, float %1070)  ; Frc(value)
  %1091 = call float @dx.op.unary.f32(i32 22, float %1071)  ; Frc(value)
  %1092 = uitofp i32 %1088 to float
  %1093 = uitofp i32 %1089 to float
  %1094 = fadd fast float %1090, %1092
  %1095 = fadd fast float %1091, %1093
  %1096 = uitofp i32 %1021 to float
  %1097 = uitofp i32 %1022 to float
  %1098 = fdiv fast float %1094, %1096
  %1099 = fdiv fast float %1095, %1097
  br label %1100

; <label>:1100                                    ; preds = %1075, %1010
  %1101 = phi float [ %1098, %1075 ], [ %1070, %1010 ]
  %1102 = phi float [ %1099, %1075 ], [ %1071, %1010 ]
  %1103 = and i32 %1004, 16777216
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1214, label %1105

; <label>:1105                                    ; preds = %1100
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.CBufRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.CBufRet.f32 %1106, 2
  %1110 = fadd fast float %1107, %145
  %1111 = fadd fast float %1108, %146
  %1112 = fadd fast float %1109, %147
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1116 = icmp eq i32 %64, 65535
  br i1 %1116, label %1211, label %1117

; <label>:1117                                    ; preds = %1105
  %1118 = lshr i32 %64, 1
  %1119 = shl i32 %1118, 2
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = and i32 %64, 1
  %1123 = icmp ne i32 %1122, 0
  %1124 = lshr i32 %1121, 16
  %1125 = and i32 %1121, 65535
  %1126 = select i1 %1123, i32 %1124, i32 %1125
  %1127 = icmp eq i32 %1126, 65535
  br i1 %1127, label %1207, label %1128

; <label>:1128                                    ; preds = %1117
  %1129 = mul nuw nsw i32 %1126, 40
  %1130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = add nuw nsw i32 %1129, 12
  %1135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = add nuw nsw i32 %1129, 24
  %1140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = extractvalue %dx.types.ResRet.f32 %1140, 1
  %1143 = extractvalue %dx.types.ResRet.f32 %1140, 2
  %1144 = add nuw nsw i32 %1129, 36
  %1145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = fsub fast float %1110, %1131
  %1148 = fsub fast float %1111, %1132
  %1149 = fsub fast float %1112, %1133
  %1150 = fmul fast float %1146, %1147
  %1151 = fmul fast float %1146, %1148
  %1152 = fmul fast float %1146, %1149
  %1153 = call float @dx.op.unary.f32(i32 27, float %1150)  ; Round_ni(value)
  %1154 = call float @dx.op.unary.f32(i32 27, float %1151)  ; Round_ni(value)
  %1155 = call float @dx.op.unary.f32(i32 27, float %1152)  ; Round_ni(value)
  %1156 = fadd fast float %1153, 5.000000e-01
  %1157 = fadd fast float %1154, 5.000000e-01
  %1158 = fadd fast float %1155, 5.000000e-01
  %1159 = fmul fast float %1156, %1136
  %1160 = fmul fast float %1157, %1137
  %1161 = fmul fast float %1158, %1138
  %1162 = shl i32 %64, 2
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = add i32 %1164, 0
  %1166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1167 = call float @dx.op.unary.f32(i32 22, float %1159)  ; Frc(value)
  %1168 = call float @dx.op.unary.f32(i32 22, float %1160)  ; Frc(value)
  %1169 = call float @dx.op.unary.f32(i32 22, float %1161)  ; Frc(value)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1166, %dx.types.Handle %59, float %1167, float %1168, float %1169, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = fmul fast float %1171, 1.023000e+03
  %1175 = fmul fast float %1172, 1.023000e+03
  %1176 = fmul fast float %1173, 1.023000e+03
  %1177 = fadd fast float %1174, 5.000000e-01
  %1178 = fadd fast float %1175, 5.000000e-01
  %1179 = fadd fast float %1176, 5.000000e-01
  %1180 = call float @dx.op.unary.f32(i32 27, float %1177)  ; Round_ni(value)
  %1181 = call float @dx.op.unary.f32(i32 27, float %1178)  ; Round_ni(value)
  %1182 = call float @dx.op.unary.f32(i32 27, float %1179)  ; Round_ni(value)
  %1183 = fsub fast float %1150, %1153
  %1184 = fsub fast float %1151, %1154
  %1185 = fsub fast float %1152, %1155
  %1186 = fmul fast float %1183, 7.500000e-01
  %1187 = fmul fast float %1184, 7.500000e-01
  %1188 = fmul fast float %1185, 7.500000e-01
  %1189 = fadd fast float %1153, 1.250000e-01
  %1190 = fadd fast float %1189, %1186
  %1191 = fadd fast float %1190, %1180
  %1192 = fadd fast float %1154, 1.250000e-01
  %1193 = fadd fast float %1192, %1187
  %1194 = fadd fast float %1193, %1181
  %1195 = fadd fast float %1155, 1.250000e-01
  %1196 = fadd fast float %1195, %1188
  %1197 = fadd fast float %1196, %1182
  %1198 = fmul fast float %1191, %1141
  %1199 = fmul fast float %1194, %1142
  %1200 = fmul fast float %1197, %1143
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = add i32 %1202, 0
  %1204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1204, %dx.types.Handle %57, float %1198, float %1199, float %1200, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  br label %1207

; <label>:1207                                    ; preds = %1128, %1117
  %1208 = phi float [ %1206, %1128 ], [ -1.000000e+00, %1117 ]
  %1209 = fadd fast float %1208, %1115
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  br label %1211

; <label>:1211                                    ; preds = %1207, %1105
  %1212 = phi float [ %1210, %1207 ], [ %1115, %1105 ]
  %1213 = fmul fast float %1212, %85
  br label %1214

; <label>:1214                                    ; preds = %1211, %1100
  %1215 = phi float [ %1213, %1211 ], [ %85, %1100 ]
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 256
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1266, label %1220

; <label>:1220                                    ; preds = %1214
  %1221 = add i32 %65, 236
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = add i32 %1223, 0
  %1225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1225, %dx.types.Handle %95, float %1101, float %1102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = add i32 %65, 84
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = shl i32 %1230, 4
  %1232 = and i32 %1231, 32752
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = lshr i32 %1230, 7
  %1235 = and i32 %1234, 32752
  %1236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1235)  ; LegacyF16ToF32(value)
  %1237 = fsub fast float 1.000000e+00, %1215
  %1238 = call float @dx.op.binary.f32(i32 35, float %1237, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1239 = bitcast float %1215 to i32
  %1240 = sitofp i32 %1239 to float
  %1241 = fadd fast float %1240, 0xC1CFBF8940000000
  %1242 = fmul fast float %1236, %1241
  %1243 = fadd fast float %1242, 0x41CFBF8940000000
  %1244 = fptosi float %1243 to i32
  %1245 = bitcast i32 %1244 to float
  %1246 = bitcast float %1238 to i32
  %1247 = sitofp i32 %1246 to float
  %1248 = fadd fast float %1247, 0xC1CFBF8940000000
  %1249 = fmul fast float %1248, %1236
  %1250 = fadd fast float %1249, 0x41CFBF8940000000
  %1251 = fptosi float %1250 to i32
  %1252 = bitcast i32 %1251 to float
  %1253 = fmul fast float %1245, %1233
  %1254 = fmul fast float %1252, %1233
  %1255 = fsub fast float %1238, %1253
  %1256 = fadd fast float %1254, %1238
  %1257 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1258 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1259 = fsub fast float %1227, %1257
  %1260 = fsub fast float %1258, %1257
  %1261 = bitcast float %1260 to i32
  %1262 = sub nsw i32 2129859010, %1261
  %1263 = bitcast i32 %1262 to float
  %1264 = fmul fast float %1263, %1259
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  br label %1266

; <label>:1266                                    ; preds = %1220, %1214
  %1267 = phi float [ %1265, %1220 ], [ %1215, %1214 ]
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = and i32 %1269, 128
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1288, label %1272

; <label>:1272                                    ; preds = %1266
  %1273 = add i32 %65, 228
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = add i32 %1275, 0
  %1277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1277, %dx.types.Handle %95, float %1101, float %1102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = and i32 %1281, 524288
  %1283 = icmp ne i32 %1282, 0
  %1284 = fcmp fast ogt float %1279, 0x3FE0101020000000
  %1285 = select i1 %1284, float 1.000000e+00, float 0.000000e+00
  %1286 = select i1 %1283, float %1285, float %1279
  %1287 = fmul fast float %1286, %1267
  br label %1288

; <label>:1288                                    ; preds = %1272, %1266
  %1289 = phi float [ %1287, %1272 ], [ %1267, %1266 ]
  %1290 = fcmp fast ult float %1289, 0x3F70101020000000
  br i1 %1290, label %1833, label %1291

; <label>:1291                                    ; preds = %1288
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = and i32 %1293, 16
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1494, label %1296

; <label>:1296                                    ; preds = %1291
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = add i32 %65, 204
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = add i32 %1301, 0
  %1303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1303, %dx.types.Handle %94, float %1101, float %1102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = extractvalue %dx.types.ResRet.f32 %1304, 3
  %1309 = and i32 %1298, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = lshr i32 %1298, 8
  %1312 = and i32 %1311, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1308, %1310
  %1315 = fadd fast float %1314, %1313
  %1316 = fmul fast float %1315, 0x3F70101000000000
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = and i32 %1318, 512
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1329, label %1321

; <label>:1321                                    ; preds = %1296
  %1322 = add i32 %65, 244
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = add i32 %1324, 0
  %1326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1326, %dx.types.Handle %95, float %1101, float %1102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  br label %1329

; <label>:1329                                    ; preds = %1321, %1296
  %1330 = phi float [ %1328, %1321 ], [ 1.000000e+00, %1296 ]
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = and i32 %1332, 33554432
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1441, label %1335

; <label>:1335                                    ; preds = %1329
  %1336 = add i32 %65, 144
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 65535
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = lshr i32 %1338, 16
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = add i32 %65, 148
  %1344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1343, i32 undef)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.i32 %1344, 0
  %1346 = and i32 %1345, 65535
  %1347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1346)  ; LegacyF16ToF32(value)
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = lshr i32 %1349, 24
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1351, 0x3F70101020000000
  %1353 = and i32 %1349, 255
  %1354 = uitofp i32 %1353 to float
  %1355 = fmul fast float %1354, 0x3F70101020000000
  %1356 = lshr i32 %1349, 8
  %1357 = and i32 %1356, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = fmul fast float %1358, 0x3F70101020000000
  %1360 = lshr i32 %1349, 16
  %1361 = and i32 %1360, 255
  %1362 = uitofp i32 %1361 to float
  %1363 = fmul fast float %1362, 0x3F70101020000000
  %1364 = add i32 %65, 140
  %1365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.i32 %1365, 0
  %1367 = lshr i32 %1366, 24
  %1368 = uitofp i32 %1367 to float
  %1369 = fmul fast float %1368, 0x3F70101020000000
  %1370 = and i32 %1366, 255
  %1371 = uitofp i32 %1370 to float
  %1372 = fmul fast float %1371, 0x3F70101020000000
  %1373 = lshr i32 %1366, 8
  %1374 = and i32 %1373, 255
  %1375 = uitofp i32 %1374 to float
  %1376 = fmul fast float %1375, 0x3F70101020000000
  %1377 = lshr i32 %1366, 16
  %1378 = and i32 %1377, 255
  %1379 = uitofp i32 %1378 to float
  %1380 = fmul fast float %1379, 0x3F70101020000000
  %1381 = bitcast float %1305 to i32
  %1382 = ashr i32 %1381, 1
  %1383 = sub nsw i32 1597463174, %1382
  %1384 = bitcast i32 %1383 to float
  %1385 = fmul fast float %1305, 5.000000e-01
  %1386 = fmul fast float %1384, %1384
  %1387 = fmul fast float %1386, %1385
  %1388 = fsub fast float 1.500000e+00, %1387
  %1389 = fmul fast float %1384, %1305
  %1390 = fmul fast float %1389, %1388
  %1391 = bitcast float %1306 to i32
  %1392 = ashr i32 %1391, 1
  %1393 = sub nsw i32 1597463174, %1392
  %1394 = bitcast i32 %1393 to float
  %1395 = fmul fast float %1306, 5.000000e-01
  %1396 = fmul fast float %1394, %1394
  %1397 = fmul fast float %1396, %1395
  %1398 = fsub fast float 1.500000e+00, %1397
  %1399 = fmul fast float %1394, %1306
  %1400 = fmul fast float %1399, %1398
  %1401 = bitcast float %1307 to i32
  %1402 = ashr i32 %1401, 1
  %1403 = sub nsw i32 1597463174, %1402
  %1404 = bitcast i32 %1403 to float
  %1405 = fmul fast float %1307, 5.000000e-01
  %1406 = fmul fast float %1404, %1404
  %1407 = fmul fast float %1406, %1405
  %1408 = fsub fast float 1.500000e+00, %1407
  %1409 = fmul fast float %1404, %1307
  %1410 = fmul fast float %1409, %1408
  %1411 = fsub fast float %1390, %1372
  %1412 = fsub fast float %1400, %1376
  %1413 = fsub fast float %1410, %1380
  %1414 = fmul fast float %1411, %1340
  %1415 = fmul fast float %1412, %1342
  %1416 = fmul fast float %1413, %1347
  %1417 = fadd fast float %1414, %1355
  %1418 = fadd fast float %1415, %1359
  %1419 = fadd fast float %1416, %1363
  %1420 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1421 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1422 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1423 = fmul fast float %1420, %1420
  %1424 = fmul fast float %1421, %1421
  %1425 = fmul fast float %1422, %1422
  %1426 = fsub fast float %1423, %1305
  %1427 = fsub fast float %1424, %1306
  %1428 = fsub fast float %1425, %1307
  %1429 = fmul fast float %1426, %1330
  %1430 = fmul fast float %1427, %1330
  %1431 = fmul fast float %1428, %1330
  %1432 = fadd fast float %1429, %1305
  %1433 = fadd fast float %1430, %1306
  %1434 = fadd fast float %1431, %1307
  %1435 = fadd fast float %1352, %1316
  %1436 = fsub fast float %1435, %1369
  %1437 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  %1438 = fsub fast float %1437, %1316
  %1439 = fmul fast float %1438, %1330
  %1440 = fadd fast float %1439, %1316
  br label %1494

; <label>:1441                                    ; preds = %1329
  %1442 = and i32 %1332, 134217728
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1478, label %1444

; <label>:1444                                    ; preds = %1441
  %1445 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1446 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %1447 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %1448 = fadd fast float %1445, -5.000000e-01
  %1449 = fadd fast float %1446, -5.000000e-01
  %1450 = fadd fast float %1447, -5.000000e-01
  %1451 = fmul fast float %1448, %1330
  %1452 = fmul fast float %1449, %1330
  %1453 = fmul fast float %1450, %1330
  %1454 = fadd fast float %1451, 5.000000e-01
  %1455 = fadd fast float %1452, 5.000000e-01
  %1456 = fadd fast float %1453, 5.000000e-01
  %1457 = call float @dx.op.unary.f32(i32 24, float %1305)  ; Sqrt(value)
  %1458 = call float @dx.op.unary.f32(i32 24, float %1306)  ; Sqrt(value)
  %1459 = call float @dx.op.unary.f32(i32 24, float %1307)  ; Sqrt(value)
  %1460 = fmul fast float %1454, 2.000000e+00
  %1461 = fsub fast float 1.000000e+00, %1460
  %1462 = fmul fast float %1461, %1457
  %1463 = fadd fast float %1462, %1460
  %1464 = fmul fast float %1463, %1457
  %1465 = fmul fast float %1455, 2.000000e+00
  %1466 = fsub fast float 1.000000e+00, %1465
  %1467 = fmul fast float %1466, %1458
  %1468 = fadd fast float %1467, %1465
  %1469 = fmul fast float %1468, %1458
  %1470 = fmul fast float %1456, 2.000000e+00
  %1471 = fsub fast float 1.000000e+00, %1470
  %1472 = fmul fast float %1471, %1459
  %1473 = fadd fast float %1472, %1470
  %1474 = fmul fast float %1473, %1459
  %1475 = fmul fast float %1464, %1464
  %1476 = fmul fast float %1469, %1469
  %1477 = fmul fast float %1474, %1474
  br label %1494

; <label>:1478                                    ; preds = %1441
  %1479 = fmul fast float %297, %297
  %1480 = fmul fast float %301, %301
  %1481 = fmul fast float %305, %305
  %1482 = fadd fast float %1479, -1.000000e+00
  %1483 = fadd fast float %1480, -1.000000e+00
  %1484 = fadd fast float %1481, -1.000000e+00
  %1485 = fmul fast float %1330, %1482
  %1486 = fmul fast float %1330, %1483
  %1487 = fmul fast float %1330, %1484
  %1488 = fadd fast float %1485, 1.000000e+00
  %1489 = fadd fast float %1486, 1.000000e+00
  %1490 = fadd fast float %1487, 1.000000e+00
  %1491 = fmul fast float %1488, %1305
  %1492 = fmul fast float %1489, %1306
  %1493 = fmul fast float %1490, %1307
  br label %1494

; <label>:1494                                    ; preds = %1478, %1444, %1335, %1291
  %1495 = phi float [ %1440, %1335 ], [ %1316, %1444 ], [ %1316, %1478 ], [ 0x3FA23C0BE0000000, %1291 ]
  %1496 = phi float [ %1432, %1335 ], [ %1475, %1444 ], [ %1491, %1478 ], [ 1.000000e+00, %1291 ]
  %1497 = phi float [ %1433, %1335 ], [ %1476, %1444 ], [ %1492, %1478 ], [ 1.000000e+00, %1291 ]
  %1498 = phi float [ %1434, %1335 ], [ %1477, %1444 ], [ %1493, %1478 ], [ 1.000000e+00, %1291 ]
  %1499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.i32 %1499, 1
  %1501 = and i32 %1500, 1
  %1502 = icmp ne i32 %1501, 0
  %1503 = add i32 %65, 196
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = and i32 %1505, 32
  %1507 = icmp ne i32 %1506, 0
  %1508 = and i1 %1502, %1507
  %1509 = select i1 %1508, float 1.000000e+00, float %1496
  %1510 = select i1 %1508, float 0x3FD3333340000000, float %1497
  %1511 = select i1 %1508, float 0x3FD3333340000000, float %1498
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 32
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1588, label %1516

; <label>:1516                                    ; preds = %1494
  %1517 = add i32 %65, 76
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = add i32 %65, 212
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = add i32 %1522, 0
  %1524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1524, %dx.types.Handle %94, float %1101, float %1102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = extractvalue %dx.types.ResRet.f32 %1525, 3
  %1530 = and i32 %1519, 255
  %1531 = uitofp i32 %1530 to float
  %1532 = lshr i32 %1519, 8
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = lshr i32 %1519, 16
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = fmul fast float %1537, 0x3F70101000000000
  %1539 = fmul fast float %1526, %1531
  %1540 = fadd fast float %1539, %1534
  %1541 = fmul fast float %1540, 0x3F70101000000000
  %1542 = fadd fast float %1527, -5.000000e-01
  %1543 = fadd fast float %1529, -5.000000e-01
  %1544 = fmul fast float %1542, %1538
  %1545 = fmul fast float %1543, %1538
  %1546 = fadd fast float %1544, 5.000000e-01
  %1547 = fadd fast float %1545, 5.000000e-01
  %1548 = fmul fast float %1546, 2.000000e+00
  %1549 = fadd fast float %1548, -1.000000e+00
  %1550 = fmul fast float %1547, 2.000000e+00
  %1551 = fadd fast float %1550, -1.000000e+00
  %1552 = fadd fast float %1549, %1551
  %1553 = fmul fast float %1552, 5.000000e-01
  %1554 = fsub fast float %1549, %1551
  %1555 = fmul fast float %1554, 5.000000e-01
  %1556 = call float @dx.op.unary.f32(i32 6, float %1553)  ; FAbs(value)
  %1557 = fsub fast float 1.000000e+00, %1556
  %1558 = call float @dx.op.unary.f32(i32 6, float %1555)  ; FAbs(value)
  %1559 = fsub fast float %1557, %1558
  %1560 = call float @dx.op.dot3.f32(i32 55, float %1553, float %1555, float %1559, float %1553, float %1555, float %1559)  ; Dot3(ax,ay,az,bx,by,bz)
  %1561 = call float @dx.op.unary.f32(i32 25, float %1560)  ; Rsqrt(value)
  %1562 = fmul fast float %1553, %1561
  %1563 = fmul fast float %1555, %1561
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 67108864
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1584, label %1568

; <label>:1568                                    ; preds = %1516
  %1569 = add i32 %65, 168
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 65535
  %1573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1572)  ; LegacyF16ToF32(value)
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 65535
  %1577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1576)  ; LegacyF16ToF32(value)
  %1578 = lshr i32 %1571, 16
  %1579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1578)  ; LegacyF16ToF32(value)
  %1580 = fsub fast float %1541, %1579
  %1581 = fmul fast float %1580, %1573
  %1582 = fadd fast float %1581, %1577
  %1583 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  br label %1584

; <label>:1584                                    ; preds = %1568, %1516
  %1585 = phi float [ %1583, %1568 ], [ %1541, %1516 ]
  %1586 = call float @dx.op.dot2.f32(i32 54, float %1562, float %1563, float %66, float %67)  ; Dot2(ax,ay,bx,by)
  %1587 = call float @dx.op.dot2.f32(i32 54, float %1562, float %1563, float %68, float %69)  ; Dot2(ax,ay,bx,by)
  br label %1588

; <label>:1588                                    ; preds = %1584, %1494
  %1589 = phi float [ %1585, %1584 ], [ 0x3FD6666660000000, %1494 ]
  %1590 = phi float [ %1586, %1584 ], [ 0.000000e+00, %1494 ]
  %1591 = phi float [ %1587, %1584 ], [ 0.000000e+00, %1494 ]
  %1592 = phi float [ %1528, %1584 ], [ 1.000000e+00, %1494 ]
  %1593 = add i32 %65, 112
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = lshr i32 %1595, 22
  %1597 = shl nuw nsw i32 %1596, 5
  %1598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1597)  ; LegacyF16ToF32(value)
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = and i32 %1600, 64
  %1602 = icmp eq i32 %1601, 0
  br i1 %1602, label %1636, label %1603

; <label>:1603                                    ; preds = %1588
  %1604 = add i32 %65, 220
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = add i32 %1606, 0
  %1608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 131072
  %1612 = icmp eq i32 %1611, 0
  %1613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1608, %dx.types.Handle %94, float %1101, float %1102, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.ResRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.ResRet.f32 %1613, 2
  %1617 = fmul fast float %1614, %285
  %1618 = fmul fast float %1615, %288
  %1619 = fmul fast float %1616, %291
  br i1 %1612, label %1626, label %1620

; <label>:1620                                    ; preds = %1603
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 0
  %1623 = fmul fast float %1622, %1617
  %1624 = fmul fast float %1622, %1618
  %1625 = fmul fast float %1622, %1619
  br label %1626

; <label>:1626                                    ; preds = %1620, %1603
  %1627 = phi float [ %1623, %1620 ], [ %1617, %1603 ]
  %1628 = phi float [ %1624, %1620 ], [ %1618, %1603 ]
  %1629 = phi float [ %1625, %1620 ], [ %1619, %1603 ]
  %1630 = fmul fast float %1627, %1598
  %1631 = select i1 %236, float %1630, float %1627
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1631, float %1628, float %1629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = select i1 %236, float 0.000000e+00, float %1627
  %1634 = select i1 %236, float %1632, float %1628
  %1635 = select i1 %236, float 0.000000e+00, float %1629
  br label %1636

; <label>:1636                                    ; preds = %1626, %1588
  %1637 = phi float [ %1633, %1626 ], [ 0.000000e+00, %1588 ]
  %1638 = phi float [ %1634, %1626 ], [ 0.000000e+00, %1588 ]
  %1639 = phi float [ %1635, %1626 ], [ 0.000000e+00, %1588 ]
  %1640 = add i32 %65, 80
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1640, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = and i32 %1642, 255
  %1644 = uitofp i32 %1643 to float
  %1645 = lshr i32 %1642, 8
  %1646 = and i32 %1645, 255
  %1647 = uitofp i32 %1646 to float
  %1648 = call float @dx.op.dot3.f32(i32 55, float %1509, float %1510, float %1511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1649 = fmul fast float %1647, %1648
  %1650 = fadd fast float %1649, %1644
  %1651 = fmul fast float %1650, 0x3F70101020000000
  %1652 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  br i1 %1001, label %1653, label %1661

; <label>:1653                                    ; preds = %1636
  %1654 = fsub fast float 1.000000e+00, %1289
  %1655 = fmul fast float %1654, %990
  %1656 = fmul fast float %1654, %991
  %1657 = fmul fast float %1654, %992
  %1658 = fmul fast float %1654, %993
  %1659 = fmul fast float %1654, %994
  %1660 = fmul fast float %1654, %995
  br label %1661

; <label>:1661                                    ; preds = %1653, %1636
  %1662 = phi float [ %1655, %1653 ], [ %990, %1636 ]
  %1663 = phi float [ %1656, %1653 ], [ %991, %1636 ]
  %1664 = phi float [ %1657, %1653 ], [ %992, %1636 ]
  %1665 = phi float [ %1658, %1653 ], [ %993, %1636 ]
  %1666 = phi float [ %1659, %1653 ], [ %994, %1636 ]
  %1667 = phi float [ %1660, %1653 ], [ %995, %1636 ]
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = and i32 %1669, 3
  %1671 = icmp eq i32 %1670, 3
  br i1 %1671, label %1750, label %1672

; <label>:1672                                    ; preds = %1661
  %1673 = and i32 %1669, 16
  %1674 = icmp ne i32 %1673, 0
  %1675 = select i1 %1674, float %1289, float 0.000000e+00
  %1676 = icmp eq i32 %1670, 0
  br i1 %1676, label %1677, label %1705

; <label>:1677                                    ; preds = %1672
  %1678 = and i32 %1669, 64
  %1679 = icmp ne i32 %1678, 0
  %1680 = select i1 %1679, float %1289, float 0.000000e+00
  %1681 = fsub fast float %1509, %1662
  %1682 = fsub fast float %1510, %1663
  %1683 = fsub fast float %1511, %1664
  %1684 = fmul fast float %1675, %1681
  %1685 = fmul fast float %1675, %1682
  %1686 = fmul fast float %1675, %1683
  %1687 = fadd fast float %1684, %1662
  %1688 = fadd fast float %1685, %1663
  %1689 = fadd fast float %1686, %1664
  %1690 = fsub fast float %1495, %996
  %1691 = fmul fast float %1675, %1690
  %1692 = fadd fast float %1691, %996
  %1693 = fsub fast float %1637, %1665
  %1694 = fsub fast float %1638, %1666
  %1695 = fsub fast float %1639, %1667
  %1696 = fmul fast float %1680, %1693
  %1697 = fmul fast float %1680, %1694
  %1698 = fmul fast float %1680, %1695
  %1699 = fadd fast float %1696, %1665
  %1700 = fadd fast float %1697, %1666
  %1701 = fadd fast float %1698, %1667
  %1702 = fsub fast float %1652, %1000
  %1703 = fmul fast float %1675, %1702
  %1704 = fadd fast float %1703, %1000
  br label %1750

; <label>:1705                                    ; preds = %1672
  %1706 = icmp eq i32 %1670, 1
  br i1 %1706, label %1707, label %1720

; <label>:1707                                    ; preds = %1705
  %1708 = fadd fast float %1509, -1.000000e+00
  %1709 = fadd fast float %1510, -1.000000e+00
  %1710 = fadd fast float %1511, -1.000000e+00
  %1711 = fmul fast float %1675, %1708
  %1712 = fmul fast float %1675, %1709
  %1713 = fmul fast float %1675, %1710
  %1714 = fadd fast float %1711, 1.000000e+00
  %1715 = fadd fast float %1712, 1.000000e+00
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fmul fast float %1714, %1662
  %1718 = fmul fast float %1715, %1663
  %1719 = fmul fast float %1716, %1664
  br label %1750

; <label>:1720                                    ; preds = %1705
  %1721 = icmp eq i32 %1670, 2
  br i1 %1721, label %1722, label %1750

; <label>:1722                                    ; preds = %1720
  %1723 = call float @dx.op.unary.f32(i32 24, float %1509)  ; Sqrt(value)
  %1724 = call float @dx.op.unary.f32(i32 24, float %1510)  ; Sqrt(value)
  %1725 = call float @dx.op.unary.f32(i32 24, float %1511)  ; Sqrt(value)
  %1726 = fadd fast float %1723, -5.000000e-01
  %1727 = fadd fast float %1724, -5.000000e-01
  %1728 = fadd fast float %1725, -5.000000e-01
  %1729 = fmul fast float %1726, %1675
  %1730 = fmul fast float %1727, %1675
  %1731 = fmul fast float %1728, %1675
  %1732 = fadd fast float %1729, 5.000000e-01
  %1733 = fadd fast float %1730, 5.000000e-01
  %1734 = fadd fast float %1731, 5.000000e-01
  %1735 = fmul fast float %1732, 2.000000e+00
  %1736 = fsub fast float 1.000000e+00, %1735
  %1737 = fmul fast float %1736, %1662
  %1738 = fadd fast float %1737, %1735
  %1739 = fmul fast float %1738, %1662
  %1740 = fmul fast float %1733, 2.000000e+00
  %1741 = fsub fast float 1.000000e+00, %1740
  %1742 = fmul fast float %1741, %1663
  %1743 = fadd fast float %1742, %1740
  %1744 = fmul fast float %1743, %1663
  %1745 = fmul fast float %1734, 2.000000e+00
  %1746 = fsub fast float 1.000000e+00, %1745
  %1747 = fmul fast float %1746, %1664
  %1748 = fadd fast float %1747, %1745
  %1749 = fmul fast float %1748, %1664
  br label %1750

; <label>:1750                                    ; preds = %1722, %1720, %1707, %1677, %1661
  %1751 = phi float [ %1662, %1661 ], [ %1739, %1722 ], [ %1662, %1720 ], [ %1717, %1707 ], [ %1687, %1677 ]
  %1752 = phi float [ %1663, %1661 ], [ %1744, %1722 ], [ %1663, %1720 ], [ %1718, %1707 ], [ %1688, %1677 ]
  %1753 = phi float [ %1664, %1661 ], [ %1749, %1722 ], [ %1664, %1720 ], [ %1719, %1707 ], [ %1689, %1677 ]
  %1754 = phi float [ %1665, %1661 ], [ %1665, %1722 ], [ %1665, %1720 ], [ %1665, %1707 ], [ %1699, %1677 ]
  %1755 = phi float [ %1666, %1661 ], [ %1666, %1722 ], [ %1666, %1720 ], [ %1666, %1707 ], [ %1700, %1677 ]
  %1756 = phi float [ %1667, %1661 ], [ %1667, %1722 ], [ %1667, %1720 ], [ %1667, %1707 ], [ %1701, %1677 ]
  %1757 = phi float [ %996, %1661 ], [ %996, %1722 ], [ %996, %1720 ], [ %996, %1707 ], [ %1692, %1677 ]
  %1758 = phi float [ %1000, %1661 ], [ %1000, %1722 ], [ %1000, %1720 ], [ %1000, %1707 ], [ %1704, %1677 ]
  %1759 = and i32 %1669, 12
  %1760 = icmp eq i32 %1759, 12
  br i1 %1760, label %1833, label %1761

; <label>:1761                                    ; preds = %1750
  %1762 = and i32 %1669, 2097184
  %1763 = icmp eq i32 %1762, 2097184
  %1764 = select i1 %1763, float %1289, float 0.000000e+00
  %1765 = and i32 %1669, 4194336
  %1766 = icmp eq i32 %1765, 4194336
  %1767 = select i1 %1766, float %1289, float 0.000000e+00
  %1768 = and i32 %1669, 8388640
  %1769 = icmp eq i32 %1768, 8388640
  %1770 = select i1 %1769, float %1289, float 0.000000e+00
  %1771 = icmp eq i32 %1759, 0
  br i1 %1771, label %1772, label %1785

; <label>:1772                                    ; preds = %1761
  %1773 = fsub fast float %1590, %988
  %1774 = fsub fast float %1591, %989
  %1775 = fmul fast float %1764, %1773
  %1776 = fmul fast float %1764, %1774
  %1777 = fadd fast float %1775, %988
  %1778 = fadd fast float %1776, %989
  %1779 = fsub fast float %1592, %999
  %1780 = fmul fast float %1767, %1779
  %1781 = fadd fast float %1780, %999
  %1782 = fsub fast float %1589, %998
  %1783 = fmul fast float %1770, %1782
  %1784 = fadd fast float %1783, %998
  br label %1833

; <label>:1785                                    ; preds = %1761
  %1786 = icmp eq i32 %1759, 4
  br i1 %1786, label %1787, label %1819

; <label>:1787                                    ; preds = %1785
  %1788 = fmul fast float %1764, %1590
  %1789 = fmul fast float %1764, %1591
  %1790 = fadd fast float %1788, %988
  %1791 = fadd fast float %1789, %989
  %1792 = call float @dx.op.binary.f32(i32 36, float %999, float %1592)  ; FMin(a,b)
  %1793 = fsub fast float %1792, %999
  %1794 = fmul fast float %1793, %1767
  %1795 = fadd fast float %1794, %999
  %1796 = fadd fast float %1589, %998
  %1797 = fmul fast float %1796, 0x3FF337FAE0000000
  %1798 = fmul fast float %998, %998
  %1799 = fmul fast float %1589, %1589
  %1800 = fadd fast float %1799, %1798
  %1801 = fmul fast float %1800, 0x3FE5152B00000000
  %1802 = fmul fast float %998, 0xBFCC1F85E0000000
  %1803 = fmul fast float %1802, %1589
  %1804 = fadd fast float %1803, 0xBFE1363700000000
  %1805 = fadd fast float %1804, %1797
  %1806 = fsub fast float %1805, %1801
  %1807 = fmul fast float %1796, 0x3FBA6F0D00000000
  %1808 = fmul fast float %1800, 0x3FD0432880000000
  %1809 = fmul fast float %998, 0xBFEF110800000000
  %1810 = fmul fast float %1809, %1589
  %1811 = fadd fast float %1810, 1.000000e+00
  %1812 = fsub fast float %1811, %1807
  %1813 = fadd fast float %1812, %1808
  %1814 = fdiv fast float %1806, %1813
  %1815 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  %1816 = fsub fast float %1815, %998
  %1817 = fmul fast float %1816, %1770
  %1818 = fadd fast float %1817, %998
  br label %1833

; <label>:1819                                    ; preds = %1785
  %1820 = icmp eq i32 %1759, 8
  br i1 %1820, label %1821, label %1833

; <label>:1821                                    ; preds = %1819
  %1822 = fmul fast float %1764, %1590
  %1823 = fmul fast float %1764, %1591
  %1824 = fadd fast float %1822, %988
  %1825 = fadd fast float %1823, %989
  %1826 = call float @dx.op.binary.f32(i32 36, float %999, float %1592)  ; FMin(a,b)
  %1827 = fsub fast float %1826, %999
  %1828 = fmul fast float %1827, %1767
  %1829 = fadd fast float %1828, %999
  %1830 = fsub fast float %1589, %998
  %1831 = fmul fast float %1770, %1830
  %1832 = fadd fast float %1831, %998
  br label %1833

; <label>:1833                                    ; preds = %1821, %1819, %1787, %1772, %1750, %1288, %987
  %1834 = phi float [ %988, %1750 ], [ %988, %1288 ], [ %988, %987 ], [ %1777, %1772 ], [ %1790, %1787 ], [ %988, %1819 ], [ %1824, %1821 ]
  %1835 = phi float [ %989, %1750 ], [ %989, %1288 ], [ %989, %987 ], [ %1778, %1772 ], [ %1791, %1787 ], [ %989, %1819 ], [ %1825, %1821 ]
  %1836 = phi float [ %1751, %1750 ], [ %990, %1288 ], [ %990, %987 ], [ %1751, %1772 ], [ %1751, %1787 ], [ %1751, %1819 ], [ %1751, %1821 ]
  %1837 = phi float [ %1752, %1750 ], [ %991, %1288 ], [ %991, %987 ], [ %1752, %1772 ], [ %1752, %1787 ], [ %1752, %1819 ], [ %1752, %1821 ]
  %1838 = phi float [ %1753, %1750 ], [ %992, %1288 ], [ %992, %987 ], [ %1753, %1772 ], [ %1753, %1787 ], [ %1753, %1819 ], [ %1753, %1821 ]
  %1839 = phi float [ %1754, %1750 ], [ %993, %1288 ], [ %993, %987 ], [ %1754, %1772 ], [ %1754, %1787 ], [ %1754, %1819 ], [ %1754, %1821 ]
  %1840 = phi float [ %1755, %1750 ], [ %994, %1288 ], [ %994, %987 ], [ %1755, %1772 ], [ %1755, %1787 ], [ %1755, %1819 ], [ %1755, %1821 ]
  %1841 = phi float [ %1756, %1750 ], [ %995, %1288 ], [ %995, %987 ], [ %1756, %1772 ], [ %1756, %1787 ], [ %1756, %1819 ], [ %1756, %1821 ]
  %1842 = phi float [ %1757, %1750 ], [ %996, %1288 ], [ %996, %987 ], [ %1757, %1772 ], [ %1757, %1787 ], [ %1757, %1819 ], [ %1757, %1821 ]
  %1843 = phi float [ %998, %1750 ], [ %998, %1288 ], [ %998, %987 ], [ %1784, %1772 ], [ %1818, %1787 ], [ %998, %1819 ], [ %1832, %1821 ]
  %1844 = phi float [ %999, %1750 ], [ %999, %1288 ], [ %999, %987 ], [ %1781, %1772 ], [ %1795, %1787 ], [ %999, %1819 ], [ %1829, %1821 ]
  %1845 = phi float [ %1758, %1750 ], [ %1000, %1288 ], [ %1000, %987 ], [ %1758, %1772 ], [ %1758, %1787 ], [ %1758, %1819 ], [ %1758, %1821 ]
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1848 = call float @dx.op.dot2.f32(i32 54, float %1834, float %1835, float %1834, float %1835)  ; Dot2(ax,ay,bx,by)
  %1849 = fmul fast float %1848, 0x3FE3333340000000
  %1850 = fsub fast float 1.000000e+00, %1849
  %1851 = call float @dx.op.dot3.f32(i32 55, float %1834, float %1835, float %1850, float %1834, float %1835, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %1852 = call float @dx.op.unary.f32(i32 25, float %1851)  ; Rsqrt(value)
  %1853 = fmul fast float %1852, %1834
  %1854 = fmul fast float %1852, %1835
  %1855 = fmul fast float %1850, %1852
  %1856 = fmul fast float %1855, %74
  %1857 = fmul fast float %1855, %75
  %1858 = fmul fast float %1855, %76
  %1859 = fmul fast float %1853, %70
  %1860 = fmul fast float %1853, %71
  %1861 = fmul fast float %1853, %72
  %1862 = fadd fast float %1856, %1859
  %1863 = fadd fast float %1857, %1860
  %1864 = fadd fast float %1858, %1861
  %1865 = fmul fast float %1854, %109
  %1866 = fmul fast float %1854, %110
  %1867 = fmul fast float %1854, %111
  %1868 = fadd fast float %1862, %1865
  %1869 = fadd fast float %1863, %1866
  %1870 = fadd fast float %1864, %1867
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1868, float %1869, float %1870, float %1868, float %1869, float %1870)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = call float @dx.op.unary.f32(i32 25, float %1871)  ; Rsqrt(value)
  %1873 = fmul fast float %1868, %1872
  %1874 = fmul fast float %1869, %1872
  %1875 = fmul fast float %1870, %1872
  %1876 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %1877 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %1878 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %1879 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %1880 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %1881 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %1882 = fadd fast float %1876, %145
  %1883 = fadd fast float %1877, %146
  %1884 = fadd fast float %1878, %147
  %1885 = fadd fast float %1879, %145
  %1886 = fadd fast float %1880, %146
  %1887 = fadd fast float %1881, %147
  %1888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1889 = extractvalue %dx.types.CBufRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.CBufRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.CBufRet.f32 %1888, 2
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 2
  %1894 = extractvalue %dx.types.CBufRet.f32 %1892, 3
  %1895 = fmul fast float %1889, %98
  %1896 = fmul fast float %1895, %1893
  %1897 = fmul fast float %1890, %99
  %1898 = fmul fast float %1897, %1894
  %1899 = fptoui float %1896 to i32
  %1900 = fptoui float %1898 to i32
  %1901 = fadd fast float %1889, -1.000000e+00
  %1902 = fadd fast float %1890, -1.000000e+00
  %1903 = fptoui float %1901 to i32
  %1904 = fptoui float %1902 to i32
  %1905 = call i32 @dx.op.binary.i32(i32 40, i32 %1899, i32 %1903)  ; UMin(a,b)
  %1906 = call i32 @dx.op.binary.i32(i32 40, i32 %1900, i32 %1904)  ; UMin(a,b)
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 3
  %1910 = fmul fast float %1908, %89
  %1911 = fsub fast float %1910, %1909
  %1912 = fadd fast float %1891, -1.000000e+00
  %1913 = call float @dx.op.binary.f32(i32 36, float %1911, float %1912)  ; FMin(a,b)
  %1914 = fptoui float %1913 to i32
  %1915 = fptoui float %1889 to i32
  %1916 = fptoui float %1890 to i32
  %1917 = mul i32 %1914, %1916
  %1918 = add i32 %1917, %1906
  %1919 = mul i32 %1918, %1915
  %1920 = add i32 %1919, %1905
  %1921 = shl i32 %1920, 2
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = and i32 %1923, 1023
  %1925 = lshr i32 %1923, 10
  %1926 = icmp eq i32 %1924, 0
  br i1 %1926, label %2355, label %1927

; <label>:1927                                    ; preds = %1833
  %1928 = and i32 %1923, 1023
  br label %1929

; <label>:1929                                    ; preds = %2056, %1927
  %1930 = phi float [ %2057, %2056 ], [ 0.000000e+00, %1927 ]
  %1931 = phi float [ %2058, %2056 ], [ %997, %1927 ]
  %1932 = phi float [ %2059, %2056 ], [ %1847, %1927 ]
  %1933 = phi float [ %2060, %2056 ], [ %1845, %1927 ]
  %1934 = phi float [ %2061, %2056 ], [ 0.000000e+00, %1927 ]
  %1935 = phi float [ %2062, %2056 ], [ 0.000000e+00, %1927 ]
  %1936 = phi float [ %2063, %2056 ], [ %1839, %1927 ]
  %1937 = phi float [ %2064, %2056 ], [ %1840, %1927 ]
  %1938 = phi float [ %2065, %2056 ], [ %1841, %1927 ]
  %1939 = phi float [ %2066, %2056 ], [ %1873, %1927 ]
  %1940 = phi float [ %2067, %2056 ], [ %1874, %1927 ]
  %1941 = phi float [ %2068, %2056 ], [ %1875, %1927 ]
  %1942 = phi float [ %2069, %2056 ], [ %1844, %1927 ]
  %1943 = phi float [ %2070, %2056 ], [ %1843, %1927 ]
  %1944 = phi float [ %2071, %2056 ], [ 0.000000e+00, %1927 ]
  %1945 = phi float [ %2072, %2056 ], [ %1842, %1927 ]
  %1946 = phi float [ %2073, %2056 ], [ %1836, %1927 ]
  %1947 = phi float [ %2074, %2056 ], [ %1837, %1927 ]
  %1948 = phi float [ %2075, %2056 ], [ %1838, %1927 ]
  %1949 = phi i32 [ %2006, %2056 ], [ 0, %1927 ]
  %1950 = add nuw nsw i32 %1949, %1925
  %1951 = shl i32 %1950, 2
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = shl i32 %1953, 8
  %1955 = or i32 %1954, 48
  %1956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.f32 %1956, 0
  %1958 = extractvalue %dx.types.ResRet.f32 %1956, 1
  %1959 = extractvalue %dx.types.ResRet.f32 %1956, 2
  %1960 = extractvalue %dx.types.ResRet.f32 %1956, 3
  %1961 = or i32 %1954, 64
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = extractvalue %dx.types.ResRet.i32 %1962, 1
  %1965 = or i32 %1954, 80
  %1966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 3
  %1969 = or i32 %1954, 96
  %1970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = extractvalue %dx.types.ResRet.f32 %1970, 1
  %1973 = extractvalue %dx.types.ResRet.f32 %1970, 2
  %1974 = extractvalue %dx.types.ResRet.f32 %1970, 3
  %1975 = or i32 %1954, 112
  %1976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 2
  %1978 = or i32 %1954, 128
  %1979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.f32 %1979, 0
  %1981 = extractvalue %dx.types.ResRet.f32 %1979, 1
  %1982 = extractvalue %dx.types.ResRet.f32 %1979, 2
  %1983 = extractvalue %dx.types.ResRet.f32 %1979, 3
  %1984 = or i32 %1954, 144
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = extractvalue %dx.types.ResRet.f32 %1985, 1
  %1988 = extractvalue %dx.types.ResRet.f32 %1985, 2
  %1989 = extractvalue %dx.types.ResRet.f32 %1985, 3
  %1990 = or i32 %1954, 160
  %1991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  %1993 = extractvalue %dx.types.ResRet.f32 %1991, 1
  %1994 = extractvalue %dx.types.ResRet.f32 %1991, 2
  %1995 = extractvalue %dx.types.ResRet.f32 %1991, 3
  %1996 = or i32 %1954, 192
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = or i32 %1954, 208
  %2000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = or i32 %1954, 248
  %2003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.f32 %2003, 0
  %2005 = extractvalue %dx.types.ResRet.f32 %2003, 1
  %2006 = add nuw nsw i32 %1949, 1
  %2007 = bitcast float %1960 to i32
  %2008 = and i32 %2007, 2560
  %2009 = icmp eq i32 %2008, 0
  %2010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = extractvalue %dx.types.ResRet.f32 %2010, 1
  %2013 = extractvalue %dx.types.ResRet.f32 %2010, 2
  %2014 = extractvalue %dx.types.ResRet.f32 %2010, 3
  %2015 = call float @dx.op.dot4.f32(i32 56, float %2011, float %2012, float %2013, float %2014, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2016 = or i32 %1954, 16
  %2017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.ResRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.ResRet.f32 %2017, 2
  %2021 = extractvalue %dx.types.ResRet.f32 %2017, 3
  %2022 = call float @dx.op.dot4.f32(i32 56, float %2018, float %2019, float %2020, float %2021, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2023 = or i32 %1954, 32
  %2024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.ResRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.ResRet.f32 %2024, 2
  %2028 = extractvalue %dx.types.ResRet.f32 %2024, 3
  %2029 = call float @dx.op.dot4.f32(i32 56, float %2025, float %2026, float %2027, float %2028, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2030 = call float @dx.op.unary.f32(i32 27, float %2015)  ; Round_ni(value)
  %2031 = call float @dx.op.unary.f32(i32 6, float %2030)  ; FAbs(value)
  %2032 = call float @dx.op.unary.f32(i32 27, float %2022)  ; Round_ni(value)
  %2033 = call float @dx.op.unary.f32(i32 6, float %2032)  ; FAbs(value)
  %2034 = call float @dx.op.unary.f32(i32 6, float %2029)  ; FAbs(value)
  %2035 = call float @dx.op.unary.f32(i32 27, float %2034)  ; Round_ni(value)
  %2036 = fadd fast float %2033, %2031
  %2037 = fadd fast float %2036, %2035
  %2038 = fcmp fast oeq float %2037, 0.000000e+00
  %2039 = call float @dx.op.dot4.f32(i32 56, float %2011, float %2012, float %2013, float %2014, float %1882, float %1883, float %1884, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2040 = call float @dx.op.dot4.f32(i32 56, float %2018, float %2019, float %2020, float %2021, float %1882, float %1883, float %1884, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2041 = call float @dx.op.dot4.f32(i32 56, float %2011, float %2012, float %2013, float %2014, float %1885, float %1886, float %1887, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2042 = call float @dx.op.dot4.f32(i32 56, float %2018, float %2019, float %2020, float %2021, float %1885, float %1886, float %1887, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2043 = fsub fast float %2039, %2015
  %2044 = fsub fast float %2041, %2015
  %2045 = fsub fast float %2040, %2022
  %2046 = fsub fast float %2042, %2022
  %2047 = call float @dx.op.dot3.f32(i32 55, float %1957, float %1958, float %1959, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 2
  %2050 = fadd fast float %2049, %2047
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2052 = extractvalue %dx.types.CBufRet.f32 %2048, 0
  %2053 = fcmp fast ogt float %2051, %2052
  %2054 = and i1 %2038, %2053
  %2055 = and i1 %2009, %2054
  br i1 %2055, label %2077, label %2056

; <label>:2056                                    ; preds = %2341, %2158, %2077, %1929
  %2057 = phi float [ %1930, %2077 ], [ %2161, %2158 ], [ %2161, %2341 ], [ %1930, %1929 ]
  %2058 = phi float [ %1931, %2077 ], [ %1931, %2158 ], [ %2316, %2341 ], [ %1931, %1929 ]
  %2059 = phi float [ %1932, %2077 ], [ %1932, %2158 ], [ %2315, %2341 ], [ %1932, %1929 ]
  %2060 = phi float [ %1933, %2077 ], [ %1933, %2158 ], [ %2313, %2341 ], [ %1933, %1929 ]
  %2061 = phi float [ %1934, %2077 ], [ %1934, %2158 ], [ %2285, %2341 ], [ %1934, %1929 ]
  %2062 = phi float [ %1935, %2077 ], [ %1935, %2158 ], [ %2283, %2341 ], [ %1935, %1929 ]
  %2063 = phi float [ %1936, %2077 ], [ %1936, %2158 ], [ %2351, %2341 ], [ %1936, %1929 ]
  %2064 = phi float [ %1937, %2077 ], [ %1937, %2158 ], [ %2352, %2341 ], [ %1937, %1929 ]
  %2065 = phi float [ %1938, %2077 ], [ %1938, %2158 ], [ %2353, %2341 ], [ %1938, %1929 ]
  %2066 = phi float [ %1939, %2077 ], [ %1939, %2158 ], [ %2264, %2341 ], [ %1939, %1929 ]
  %2067 = phi float [ %1940, %2077 ], [ %1940, %2158 ], [ %2265, %2341 ], [ %1940, %1929 ]
  %2068 = phi float [ %1941, %2077 ], [ %1941, %2158 ], [ %2266, %2341 ], [ %1941, %1929 ]
  %2069 = phi float [ %1942, %2077 ], [ %1942, %2158 ], [ %2293, %2341 ], [ %1942, %1929 ]
  %2070 = phi float [ %1943, %2077 ], [ %1943, %2158 ], [ %2290, %2341 ], [ %1943, %1929 ]
  %2071 = phi float [ %1944, %2077 ], [ %1944, %2158 ], [ %2287, %2341 ], [ %1944, %1929 ]
  %2072 = phi float [ %1945, %2077 ], [ %1945, %2158 ], [ %2281, %2341 ], [ %1945, %1929 ]
  %2073 = phi float [ %1946, %2077 ], [ %1946, %2158 ], [ %2276, %2341 ], [ %1946, %1929 ]
  %2074 = phi float [ %1947, %2077 ], [ %1947, %2158 ], [ %2277, %2341 ], [ %1947, %1929 ]
  %2075 = phi float [ %1948, %2077 ], [ %1948, %2158 ], [ %2278, %2341 ], [ %1948, %1929 ]
  %2076 = icmp eq i32 %2006, %1928
  br i1 %2076, label %2354, label %1929

; <label>:2077                                    ; preds = %1929
  %2078 = extractvalue %dx.types.ResRet.f32 %1976, 3
  %2079 = extractvalue %dx.types.ResRet.f32 %1976, 1
  %2080 = extractvalue %dx.types.ResRet.f32 %1976, 0
  %2081 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %2082 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %2083 = extractvalue %dx.types.ResRet.i32 %1962, 3
  %2084 = extractvalue %dx.types.ResRet.i32 %1962, 2
  %2085 = add i32 %2083, 0
  %2086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2085, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2088 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2086, %dx.types.Handle %2087, float %2015, float %2022, float undef, float undef, i32 0, i32 0, i32 undef, float %2043, float %2045, float undef, float %2044, float %2046, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2089 = extractvalue %dx.types.ResRet.f32 %2088, 0
  %2090 = fmul fast float %2089, %2082
  %2091 = fadd fast float %2090, %2081
  %2092 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2093 = fmul fast float %2015, %1971
  %2094 = call float @dx.op.tertiary.f32(i32 46, float %1972, float %2022, float %2093)  ; FMad(a,b,c)
  %2095 = fadd fast float %2094, %2080
  %2096 = fmul fast float %2015, %1973
  %2097 = call float @dx.op.tertiary.f32(i32 46, float %1974, float %2022, float %2096)  ; FMad(a,b,c)
  %2098 = fadd fast float %2097, %2079
  %2099 = fmul fast float %2043, %1971
  %2100 = call float @dx.op.tertiary.f32(i32 46, float %1972, float %2045, float %2099)  ; FMad(a,b,c)
  %2101 = fmul fast float %2043, %1973
  %2102 = call float @dx.op.tertiary.f32(i32 46, float %1974, float %2045, float %2101)  ; FMad(a,b,c)
  %2103 = fmul fast float %2044, %1971
  %2104 = call float @dx.op.tertiary.f32(i32 46, float %1972, float %2046, float %2103)  ; FMad(a,b,c)
  %2105 = fmul fast float %2044, %1973
  %2106 = call float @dx.op.tertiary.f32(i32 46, float %1974, float %2046, float %2105)  ; FMad(a,b,c)
  %2107 = add i32 %2084, 0
  %2108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2107, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2109 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2108, %dx.types.Handle %2087, float %2095, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float %2100, float %2102, float undef, float %2104, float %2106, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2110 = extractvalue %dx.types.ResRet.f32 %2109, 0
  %2111 = and i32 %2007, 1024
  %2112 = icmp ne i32 %2111, 0
  %2113 = fcmp fast ogt float %2110, 0x3FE0101020000000
  %2114 = uitofp i1 %2113 to float
  %2115 = select i1 %2112, float %2114, float %2110
  %2116 = and i32 %2007, 8192
  %2117 = icmp ne i32 %2116, 0
  %2118 = select i1 %2117, float %2078, float 1.000000e+00
  %2119 = fmul fast float %2015, 2.000000e+00
  %2120 = fadd fast float %2119, -1.000000e+00
  %2121 = call float @dx.op.unary.f32(i32 6, float %2120)  ; FAbs(value)
  %2122 = fmul fast float %2121, %2004
  %2123 = fsub fast float %2122, %2004
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = fmul fast float %2022, 2.000000e+00
  %2126 = fadd fast float %2125, -1.000000e+00
  %2127 = call float @dx.op.unary.f32(i32 6, float %2126)  ; FAbs(value)
  %2128 = fmul fast float %2127, %2005
  %2129 = fsub fast float %2128, %2005
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = fmul fast float %2034, %1967
  %2132 = fsub fast float %2131, %1967
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = fmul fast float %2092, %2118
  %2135 = fmul fast float %2134, %2089
  %2136 = fmul fast float %2135, %2124
  %2137 = fmul fast float %2136, %2115
  %2138 = fmul fast float %2137, %2130
  %2139 = fmul fast float %2138, %2133
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 1
  %2142 = extractvalue %dx.types.CBufRet.f32 %2140, 0
  %2143 = fsub fast float %2051, %2142
  %2144 = fmul fast float %2143, %2141
  %2145 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2146 = fmul fast float %2139, %1968
  %2147 = fadd fast float %2139, %1968
  %2148 = fmul fast float %2147, %1977
  %2149 = fsub fast float %2148, %1977
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = and i32 %2007, 128
  %2152 = icmp ne i32 %2151, 0
  %2153 = select i1 %2152, float %2150, float %2146
  %2154 = fmul fast float %2153, %2145
  %2155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.f32 %2155, 0
  %2157 = fcmp fast ugt float %2154, %2156
  br i1 %2157, label %2158, label %2056

; <label>:2158                                    ; preds = %2077
  %2159 = select i1 %2117, float %2154, float 0.000000e+00
  %2160 = fadd fast float %2159, %1930
  %2161 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  br i1 %2117, label %2056, label %2162

; <label>:2162                                    ; preds = %2158
  %2163 = and i32 %2007, 4
  %2164 = and i32 %2007, 8
  %2165 = add i32 %1963, 0
  %2166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2165, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2168 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2166, %dx.types.Handle %2167, float %2095, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float %2100, float %2102, float undef, float %2104, float %2106, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.ResRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.ResRet.f32 %2168, 2
  %2172 = extractvalue %dx.types.ResRet.f32 %2168, 3
  %2173 = bitcast float %1989 to i32
  %2174 = and i32 %2173, 255
  %2175 = uitofp i32 %2174 to float
  %2176 = lshr i32 %2173, 8
  %2177 = and i32 %2176, 255
  %2178 = uitofp i32 %2177 to float
  %2179 = fmul fast float %2172, %2175
  %2180 = fadd fast float %2179, %2178
  %2181 = fmul fast float %2180, 0x3F70101000000000
  %2182 = add i32 %1964, 0
  %2183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2182, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2184 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2183, %dx.types.Handle %2167, float %2095, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float %2100, float %2102, float undef, float %2104, float %2106, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2185 = extractvalue %dx.types.ResRet.f32 %2184, 0
  %2186 = extractvalue %dx.types.ResRet.f32 %2184, 1
  %2187 = extractvalue %dx.types.ResRet.f32 %2184, 2
  %2188 = extractvalue %dx.types.ResRet.f32 %2184, 3
  %2189 = bitcast float %1983 to i32
  %2190 = and i32 %2189, 255
  %2191 = uitofp i32 %2190 to float
  %2192 = lshr i32 %2189, 8
  %2193 = and i32 %2192, 255
  %2194 = uitofp i32 %2193 to float
  %2195 = lshr i32 %2189, 16
  %2196 = and i32 %2195, 255
  %2197 = uitofp i32 %2196 to float
  %2198 = fmul fast float %2197, 0x3F70101000000000
  %2199 = fmul fast float %2185, %2191
  %2200 = fadd fast float %2199, %2194
  %2201 = fmul fast float %2200, 0x3F70101000000000
  %2202 = fadd fast float %2186, -5.000000e-01
  %2203 = fadd fast float %2188, -5.000000e-01
  %2204 = fmul fast float %2202, %2198
  %2205 = fmul fast float %2203, %2198
  %2206 = fadd fast float %2204, 5.000000e-01
  %2207 = fadd fast float %2205, 5.000000e-01
  %2208 = fmul fast float %2169, %1992
  %2209 = fmul fast float %2170, %1993
  %2210 = fmul fast float %2171, %1994
  %2211 = fmul fast float %2206, 2.000000e+00
  %2212 = fadd fast float %2211, -1.000000e+00
  %2213 = fmul fast float %2207, 2.000000e+00
  %2214 = fadd fast float %2213, -1.000000e+00
  %2215 = fadd fast float %2212, %2214
  %2216 = fmul fast float %2215, 5.000000e-01
  %2217 = fsub fast float %2212, %2214
  %2218 = fmul fast float %2217, 5.000000e-01
  %2219 = call float @dx.op.unary.f32(i32 6, float %2216)  ; FAbs(value)
  %2220 = fsub fast float 1.000000e+00, %2219
  %2221 = call float @dx.op.unary.f32(i32 6, float %2218)  ; FAbs(value)
  %2222 = fsub fast float %2220, %2221
  %2223 = call float @dx.op.dot3.f32(i32 55, float %2216, float %2218, float %2222, float %2216, float %2218, float %2222)  ; Dot3(ax,ay,az,bx,by,bz)
  %2224 = call float @dx.op.unary.f32(i32 25, float %2223)  ; Rsqrt(value)
  %2225 = fmul fast float %2216, %2224
  %2226 = fmul fast float %2218, %2224
  %2227 = fmul fast float %2224, %2222
  %2228 = fmul fast float %2227, %1957
  %2229 = fmul fast float %2227, %1958
  %2230 = fmul fast float %2227, %1959
  %2231 = fmul fast float %2225, %1980
  %2232 = fmul fast float %2225, %1981
  %2233 = fmul fast float %2225, %1982
  %2234 = fadd fast float %2231, %2228
  %2235 = fadd fast float %2232, %2229
  %2236 = fadd fast float %2233, %2230
  %2237 = fmul fast float %2226, %1986
  %2238 = fmul fast float %2226, %1987
  %2239 = fmul fast float %2226, %1988
  %2240 = fadd fast float %2234, %2237
  %2241 = fadd fast float %2235, %2238
  %2242 = fadd fast float %2236, %2239
  %2243 = call float @dx.op.dot3.f32(i32 55, float %2240, float %2241, float %2242, float %2240, float %2241, float %2242)  ; Dot3(ax,ay,az,bx,by,bz)
  %2244 = call float @dx.op.unary.f32(i32 25, float %2243)  ; Rsqrt(value)
  %2245 = fmul fast float %2240, %2244
  %2246 = fmul fast float %2241, %2244
  %2247 = fmul fast float %2242, %2244
  %2248 = icmp ne i32 %2164, 0
  %2249 = select i1 %2248, float 1.000000e+00, float 0.000000e+00
  %2250 = fmul fast float %2154, %2249
  %2251 = and i32 %2007, 1
  %2252 = icmp eq i32 %2251, 0
  br i1 %2252, label %2253, label %2257

; <label>:2253                                    ; preds = %2162
  %2254 = fsub fast float %2245, %1939
  %2255 = fsub fast float %2246, %1940
  %2256 = fsub fast float %2247, %1941
  br label %2257

; <label>:2257                                    ; preds = %2253, %2162
  %2258 = phi float [ %2254, %2253 ], [ %2245, %2162 ]
  %2259 = phi float [ %2255, %2253 ], [ %2246, %2162 ]
  %2260 = phi float [ %2256, %2253 ], [ %2247, %2162 ]
  %2261 = fmul float %2260, %2250
  %2262 = fmul float %2259, %2250
  %2263 = fmul float %2258, %2250
  %2264 = fadd fast float %2263, %1939
  %2265 = fadd fast float %2262, %1940
  %2266 = fadd fast float %2261, %1941
  %2267 = icmp ne i32 %2163, 0
  %2268 = select i1 %2267, float 1.000000e+00, float 0.000000e+00
  %2269 = fmul fast float %2154, %2268
  %2270 = fsub fast float %2208, %1946
  %2271 = fsub fast float %2209, %1947
  %2272 = fsub fast float %2210, %1948
  %2273 = fmul fast float %2270, %2269
  %2274 = fmul fast float %2271, %2269
  %2275 = fmul fast float %2272, %2269
  %2276 = fadd fast float %2273, %1946
  %2277 = fadd fast float %2274, %1947
  %2278 = fadd fast float %2275, %1948
  %2279 = fsub fast float %2181, %1945
  %2280 = fmul fast float %2279, %2269
  %2281 = fadd fast float %2280, %1945
  %2282 = fmul fast float %2269, %1935
  %2283 = fsub fast float %1935, %2282
  %2284 = fmul fast float %2269, %1934
  %2285 = fsub fast float %1934, %2284
  %2286 = fadd fast float %2154, %1944
  %2287 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  %2288 = fsub fast float %2201, %1943
  %2289 = fmul fast float %2288, %2250
  %2290 = fadd fast float %2289, %1943
  %2291 = fsub fast float %2187, %1942
  %2292 = fmul fast float %2291, %2250
  %2293 = fadd fast float %2292, %1942
  %2294 = call float @dx.op.dot3.f32(i32 55, float %2208, float %2209, float %2210, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2296 = extractvalue %dx.types.CBufRet.f32 %2295, 0
  %2297 = extractvalue %dx.types.CBufRet.f32 %2295, 1
  %2298 = fmul fast float %2297, %2294
  %2299 = fadd fast float %2298, %2296
  %2300 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2301 = bitcast float %1995 to i32
  %2302 = and i32 %2301, 65535
  %2303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2302)  ; LegacyF16ToF32(value)
  %2304 = lshr i32 %2301, 16
  %2305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2304)  ; LegacyF16ToF32(value)
  %2306 = fcmp fast oge float %2303, 0.000000e+00
  %2307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.f32 %2307, 0
  %2309 = select i1 %2306, float %2303, float %2308
  %2310 = fadd fast float %2309, %2305
  %2311 = fsub fast float %2300, %1933
  %2312 = fmul fast float %2311, %2154
  %2313 = fadd fast float %2312, %1933
  %2314 = fmul fast float %2310, %2154
  %2315 = call float @dx.op.binary.f32(i32 35, float %1932, float %2314)  ; FMax(a,b)
  %2316 = call float @dx.op.binary.f32(i32 35, float %1931, float %2154)  ; FMax(a,b)
  %2317 = and i32 %2007, 16
  %2318 = icmp eq i32 %2317, 0
  br i1 %2318, label %2341, label %2319

; <label>:2319                                    ; preds = %2257
  %2320 = bitcast float %2001 to i32
  %2321 = add i32 %1998, 0
  %2322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2321, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2323 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2322, %dx.types.Handle %2167, float %2095, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float %2100, float %2102, float undef, float %2104, float %2106, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2324 = extractvalue %dx.types.ResRet.f32 %2323, 0
  %2325 = extractvalue %dx.types.ResRet.f32 %2323, 1
  %2326 = extractvalue %dx.types.ResRet.f32 %2323, 2
  %2327 = and i32 %2320, 65535
  %2328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2327)  ; LegacyF16ToF32(value)
  %2329 = fmul fast float %2324, %1992
  %2330 = fmul fast float %2325, %1993
  %2331 = fmul fast float %2326, %1994
  %2332 = and i32 %2007, 16384
  %2333 = icmp ne i32 %2332, 0
  %2334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.f32 %2334, 0
  %2336 = select i1 %2333, float %2335, float 1.000000e+00
  %2337 = fmul fast float %2336, %2328
  %2338 = fmul fast float %2329, %2337
  %2339 = fmul fast float %2330, %2337
  %2340 = fmul fast float %2331, %2337
  br label %2341

; <label>:2341                                    ; preds = %2319, %2257
  %2342 = phi float [ %2338, %2319 ], [ 0.000000e+00, %2257 ]
  %2343 = phi float [ %2339, %2319 ], [ 0.000000e+00, %2257 ]
  %2344 = phi float [ %2340, %2319 ], [ 0.000000e+00, %2257 ]
  %2345 = fsub fast float %2342, %1936
  %2346 = fsub fast float %2343, %1937
  %2347 = fsub fast float %2344, %1938
  %2348 = fmul fast float %2345, %2154
  %2349 = fmul fast float %2346, %2154
  %2350 = fmul fast float %2347, %2154
  %2351 = fadd fast float %2348, %1936
  %2352 = fadd fast float %2349, %1937
  %2353 = fadd fast float %2350, %1938
  br label %2056

; <label>:2354                                    ; preds = %2056
  br label %2355

; <label>:2355                                    ; preds = %2354, %1833
  %2356 = phi float [ 0.000000e+00, %1833 ], [ %2057, %2354 ]
  %2357 = phi float [ %997, %1833 ], [ %2058, %2354 ]
  %2358 = phi float [ %1847, %1833 ], [ %2059, %2354 ]
  %2359 = phi float [ %1845, %1833 ], [ %2060, %2354 ]
  %2360 = phi float [ 0.000000e+00, %1833 ], [ %2061, %2354 ]
  %2361 = phi float [ 0.000000e+00, %1833 ], [ %2062, %2354 ]
  %2362 = phi float [ %1839, %1833 ], [ %2063, %2354 ]
  %2363 = phi float [ %1840, %1833 ], [ %2064, %2354 ]
  %2364 = phi float [ %1841, %1833 ], [ %2065, %2354 ]
  %2365 = phi float [ %1873, %1833 ], [ %2066, %2354 ]
  %2366 = phi float [ %1874, %1833 ], [ %2067, %2354 ]
  %2367 = phi float [ %1875, %1833 ], [ %2068, %2354 ]
  %2368 = phi float [ %1844, %1833 ], [ %2069, %2354 ]
  %2369 = phi float [ %1843, %1833 ], [ %2070, %2354 ]
  %2370 = phi float [ 0.000000e+00, %1833 ], [ %2071, %2354 ]
  %2371 = phi float [ %1842, %1833 ], [ %2072, %2354 ]
  %2372 = phi float [ %1836, %1833 ], [ %2073, %2354 ]
  %2373 = phi float [ %1837, %1833 ], [ %2074, %2354 ]
  %2374 = phi float [ %1838, %1833 ], [ %2075, %2354 ]
  %2375 = call float @dx.op.dot3.f32(i32 55, float %2365, float %2366, float %2367, float %2365, float %2366, float %2367)  ; Dot3(ax,ay,az,bx,by,bz)
  %2376 = call float @dx.op.unary.f32(i32 25, float %2375)  ; Rsqrt(value)
  %2377 = fmul fast float %2376, %2365
  %2378 = fmul fast float %2376, %2366
  %2379 = fmul fast float %2376, %2367
  %2380 = fadd fast float %2370, %997
  %2381 = call float @dx.op.unary.f32(i32 7, float %2380)  ; Saturate(value)
  %2382 = call float @dx.op.dot3.f32(i32 55, float %2377, float %2378, float %2379, float %2377, float %2378, float %2379)  ; Dot3(ax,ay,az,bx,by,bz)
  %2383 = call float @dx.op.unary.f32(i32 25, float %2382)  ; Rsqrt(value)
  %2384 = fmul fast float %2383, %2377
  %2385 = fmul fast float %2383, %2378
  %2386 = fmul fast float %2383, %2379
  %2387 = fadd fast float %2371, 0xBFB99999A0000000
  %2388 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2389 = fmul fast float %2388, 0x3FF1C71C80000000
  %2390 = call float @dx.op.binary.f32(i32 36, float %2371, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2391 = fsub fast float 1.000000e+00, %2389
  %2392 = call float @dx.op.unary.f32(i32 7, float %2391)  ; Saturate(value)
  %2393 = fmul fast float %2392, %2372
  %2394 = fmul fast float %2392, %2373
  %2395 = fmul fast float %2392, %2374
  %2396 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2397 = call float @dx.op.unary.f32(i32 7, float %2394)  ; Saturate(value)
  %2398 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2399 = fmul fast float %2389, %2372
  %2400 = fmul fast float %2389, %2373
  %2401 = fmul fast float %2389, %2374
  %2402 = fadd fast float %2399, %2390
  %2403 = fadd fast float %2400, %2390
  %2404 = fadd fast float %2401, %2390
  %2405 = call float @dx.op.unary.f32(i32 7, float %2402)  ; Saturate(value)
  %2406 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2407 = call float @dx.op.unary.f32(i32 7, float %2404)  ; Saturate(value)
  %2408 = call float @dx.op.unary.f32(i32 7, float %2369)  ; Saturate(value)
  %2409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2410 = extractvalue %dx.types.CBufRet.i32 %2409, 3
  %2411 = and i32 %2410, 8
  %2412 = icmp ne i32 %2411, 0
  %2413 = call float @dx.op.binary.f32(i32 35, float %2396, float %2372)  ; FMax(a,b)
  %2414 = call float @dx.op.binary.f32(i32 35, float %2397, float %2372)  ; FMax(a,b)
  %2415 = call float @dx.op.binary.f32(i32 35, float %2398, float %2372)  ; FMax(a,b)
  %2416 = call float @dx.op.dot3.f32(i32 55, float %2396, float %2397, float %2398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2417 = select i1 %236, float %2372, float %2396
  %2418 = select i1 %236, float %2416, float %2397
  %2419 = select i1 %236, float 1.000000e+00, float %2398
  %2420 = select i1 %2412, float %2413, float %2417
  %2421 = select i1 %2412, float %2414, float %2418
  %2422 = select i1 %2412, float %2415, float %2419
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 0
  %2425 = extractvalue %dx.types.CBufRet.f32 %2423, 1
  %2426 = extractvalue %dx.types.CBufRet.f32 %2423, 2
  %2427 = fadd fast float %2424, %145
  %2428 = fadd fast float %2425, %146
  %2429 = fadd fast float %2426, %147
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.CBufRet.f32 %2430, 1
  %2433 = fsub fast float %2427, %2431
  %2434 = fsub fast float %2428, %2432
  %2435 = fmul fast float %2433, %2433
  %2436 = fmul fast float %2434, %2434
  %2437 = fadd fast float %2435, %2436
  %2438 = call float @dx.op.unary.f32(i32 24, float %2437)  ; Sqrt(value)
  %2439 = extractvalue %dx.types.CBufRet.f32 %2430, 2
  %2440 = fcmp fast olt float %2438, %2439
  br i1 %2440, label %2441, label %2508

; <label>:2441                                    ; preds = %2355
  %2442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.f32 %2442, 0
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 0
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 0
  %2448 = extractvalue %dx.types.CBufRet.f32 %2442, 1
  %2449 = extractvalue %dx.types.CBufRet.f32 %2444, 1
  %2450 = extractvalue %dx.types.CBufRet.f32 %2446, 1
  %2451 = extractvalue %dx.types.CBufRet.f32 %2442, 3
  %2452 = extractvalue %dx.types.CBufRet.f32 %2444, 3
  %2453 = extractvalue %dx.types.CBufRet.f32 %2446, 3
  %2454 = fadd fast float %2451, %2427
  %2455 = fadd fast float %2452, %2428
  %2456 = fadd fast float %2453, %2429
  %2457 = fmul fast float %2454, %2443
  %2458 = call float @dx.op.tertiary.f32(i32 46, float %2455, float %2445, float %2457)  ; FMad(a,b,c)
  %2459 = call float @dx.op.tertiary.f32(i32 46, float %2456, float %2447, float %2458)  ; FMad(a,b,c)
  %2460 = fmul fast float %2454, %2448
  %2461 = call float @dx.op.tertiary.f32(i32 46, float %2455, float %2449, float %2460)  ; FMad(a,b,c)
  %2462 = call float @dx.op.tertiary.f32(i32 46, float %2456, float %2450, float %2461)  ; FMad(a,b,c)
  %2463 = fsub fast float %2459, %2451
  %2464 = fsub fast float %2462, %2452
  %2465 = fsub fast float %2463, %2431
  %2466 = fadd fast float %2465, %2439
  %2467 = fsub fast float %2464, %2432
  %2468 = fadd fast float %2467, %2439
  %2469 = extractvalue %dx.types.CBufRet.f32 %2430, 3
  %2470 = fmul fast float %2466, %2469
  %2471 = fmul fast float %2468, %2469
  %2472 = call float @dx.op.unary.f32(i32 7, float %2470)  ; Saturate(value)
  %2473 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  %2474 = fsub fast float 1.000000e+00, %2472
  %2475 = fsub fast float 1.000000e+00, %2473
  %2476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %2474, float %2475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2477 = extractvalue %dx.types.ResRet.f32 %2476, 0
  %2478 = fcmp fast ugt float %2477, 0.000000e+00
  br i1 %2478, label %2479, label %2782

; <label>:2479                                    ; preds = %2441
  %2480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2481 = extractvalue %dx.types.CBufRet.f32 %2480, 2
  %2482 = fmul fast float %2481, %2477
  %2483 = extractvalue %dx.types.CBufRet.f32 %2480, 3
  %2484 = fadd fast float %2483, %2482
  %2485 = extractvalue %dx.types.CBufRet.f32 %2446, 2
  %2486 = fadd fast float %2484, %2453
  %2487 = fmul fast float %2459, %2447
  %2488 = call float @dx.op.tertiary.f32(i32 46, float %2462, float %2450, float %2487)  ; FMad(a,b,c)
  %2489 = call float @dx.op.tertiary.f32(i32 46, float %2486, float %2485, float %2488)  ; FMad(a,b,c)
  %2490 = fsub fast float %2489, %2453
  %2491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.f32 %2491, 2
  %2493 = fsub fast float %2490, %2492
  %2494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %2474, float %2475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2495 = extractvalue %dx.types.ResRet.f32 %2494, 0
  %2496 = extractvalue %dx.types.ResRet.f32 %2494, 1
  %2497 = extractvalue %dx.types.ResRet.f32 %2494, 2
  %2498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %2474, float %2475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2499 = extractvalue %dx.types.ResRet.f32 %2498, 0
  %2500 = extractvalue %dx.types.ResRet.f32 %2498, 1
  %2501 = extractvalue %dx.types.ResRet.f32 %2498, 2
  %2502 = fadd fast float %2499, %2495
  %2503 = fmul fast float %2502, 0x3F847AE140000000
  %2504 = fadd fast float %2500, %2496
  %2505 = fmul fast float %2504, 0x3F847AE140000000
  %2506 = fadd fast float %2501, %2497
  %2507 = fmul fast float %2506, 0x3F847AE140000000
  br label %2782

; <label>:2508                                    ; preds = %2355
  %2509 = and i32 %212, 1
  %2510 = icmp eq i32 %2509, 0
  br i1 %2510, label %2782, label %2511

; <label>:2511                                    ; preds = %2508
  %2512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2513 = extractvalue %dx.types.CBufRet.f32 %2512, 0
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2514, 0
  %2516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2516, 0
  %2518 = extractvalue %dx.types.CBufRet.f32 %2512, 1
  %2519 = extractvalue %dx.types.CBufRet.f32 %2514, 1
  %2520 = extractvalue %dx.types.CBufRet.f32 %2516, 1
  %2521 = extractvalue %dx.types.CBufRet.f32 %2512, 3
  %2522 = extractvalue %dx.types.CBufRet.f32 %2514, 3
  %2523 = extractvalue %dx.types.CBufRet.f32 %2516, 3
  %2524 = fadd fast float %2521, %2427
  %2525 = fadd fast float %2522, %2428
  %2526 = fadd fast float %2523, %2429
  %2527 = fmul fast float %2524, %2513
  %2528 = call float @dx.op.tertiary.f32(i32 46, float %2525, float %2515, float %2527)  ; FMad(a,b,c)
  %2529 = call float @dx.op.tertiary.f32(i32 46, float %2526, float %2517, float %2528)  ; FMad(a,b,c)
  %2530 = fmul fast float %2524, %2518
  %2531 = call float @dx.op.tertiary.f32(i32 46, float %2525, float %2519, float %2530)  ; FMad(a,b,c)
  %2532 = call float @dx.op.tertiary.f32(i32 46, float %2526, float %2520, float %2531)  ; FMad(a,b,c)
  %2533 = fsub fast float %2529, %2521
  %2534 = fsub fast float %2532, %2522
  %2535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.f32 %2535, 0
  %2537 = extractvalue %dx.types.CBufRet.f32 %2535, 1
  %2538 = extractvalue %dx.types.CBufRet.f32 %2535, 2
  %2539 = extractvalue %dx.types.CBufRet.f32 %2535, 3
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 3
  %2542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.i32 %2542, 0
  %2544 = extractvalue %dx.types.CBufRet.i32 %2542, 1
  %2545 = udiv i32 %2544, %2543
  %2546 = fsub fast float %2533, %2536
  %2547 = fsub fast float %2534, %2537
  %2548 = call float @dx.op.binary.f32(i32 35, float %2546, float 0.000000e+00)  ; FMax(a,b)
  %2549 = call float @dx.op.binary.f32(i32 35, float %2547, float 0.000000e+00)  ; FMax(a,b)
  %2550 = call float @dx.op.binary.f32(i32 36, float %2548, float %2538)  ; FMin(a,b)
  %2551 = call float @dx.op.binary.f32(i32 36, float %2549, float %2539)  ; FMin(a,b)
  %2552 = add i32 %2543, -1
  %2553 = add i32 %2545, -1
  %2554 = fmul fast float %2550, %2541
  %2555 = fmul fast float %2551, %2541
  %2556 = fptoui float %2554 to i32
  %2557 = fptoui float %2555 to i32
  %2558 = call i32 @dx.op.binary.i32(i32 40, i32 %2556, i32 %2552)  ; UMin(a,b)
  %2559 = call i32 @dx.op.binary.i32(i32 40, i32 %2557, i32 %2553)  ; UMin(a,b)
  %2560 = mul i32 %2559, %2543
  %2561 = add i32 %2560, %2558
  %2562 = shl i32 %2561, 2
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = icmp eq i32 %2564, -1
  br i1 %2565, label %2782, label %2566

; <label>:2566                                    ; preds = %2511
  %2567 = mul i32 %2564, 148
  %2568 = add i32 %2567, 4
  %2569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 0
  %2571 = add i32 %2567, 8
  %2572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.f32 %2572, 0
  %2574 = add i32 %2567, 36
  %2575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.f32 %2575, 0
  %2577 = add i32 %2567, 60
  %2578 = add i32 %2567, 92
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = add i32 %2567, 116
  %2582 = fsub fast float %2533, %2570
  %2583 = fsub fast float %2534, %2573
  %2584 = fmul fast float %2541, %2582
  %2585 = fmul fast float %2541, %2583
  %2586 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  %2587 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2588 = fsub fast float 1.000000e+00, %2587
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 2
  %2591 = call float @dx.op.unary.f32(i32 83, float %2586)  ; DerivCoarseX(value)
  %2592 = call float @dx.op.unary.f32(i32 83, float %2588)  ; DerivCoarseX(value)
  %2593 = call float @dx.op.unary.f32(i32 84, float %2586)  ; DerivCoarseY(value)
  %2594 = call float @dx.op.unary.f32(i32 84, float %2588)  ; DerivCoarseY(value)
  %2595 = fmul fast float %2591, %2590
  %2596 = fmul fast float %2592, %2590
  %2597 = fmul fast float %2593, %2590
  %2598 = fmul fast float %2594, %2590
  %2599 = call float @dx.op.dot2.f32(i32 54, float %2597, float %2598, float %2597, float %2598)  ; Dot2(ax,ay,bx,by)
  %2600 = call float @dx.op.dot2.f32(i32 54, float %2595, float %2596, float %2595, float %2596)  ; Dot2(ax,ay,bx,by)
  %2601 = call float @dx.op.binary.f32(i32 35, float %2600, float %2599)  ; FMax(a,b)
  %2602 = call float @dx.op.unary.f32(i32 23, float %2601)  ; Log(value)
  %2603 = fmul fast float %2602, 5.000000e-01
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 1
  %2606 = fadd fast float %2605, %2603
  %2607 = call float @dx.op.binary.f32(i32 35, float %2606, float 0.000000e+00)  ; FMax(a,b)
  %2608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2609 = extractvalue %dx.types.CBufRet.f32 %2608, 3
  %2610 = fadd fast float %2609, %2607
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 3
  %2613 = fadd fast float %2610, %2612
  %2614 = add i32 %2580, 0
  %2615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2614, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2616 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2615, i32 0)  ; GetDimensions(handle,mipLevel)
  %2617 = extractvalue %dx.types.Dimensions %2616, 0
  %2618 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2617)  ; FirstbitLo(value)
  %2619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.i32 %2619, 1
  %2621 = sub nsw i32 %2620, %2618
  %2622 = sitofp i32 %2621 to float
  %2623 = fsub fast float %2613, %2622
  %2624 = call float @dx.op.binary.f32(i32 35, float %2623, float 0.000000e+00)  ; FMax(a,b)
  %2625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2615, %dx.types.Handle %56, float %2586, float %2588, float %2576, float undef, i32 0, i32 0, i32 undef, float %2624)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2626 = extractvalue %dx.types.ResRet.f32 %2625, 0
  %2627 = fcmp ule float %2626, 0x3FE0101020000000
  %2628 = extractvalue %dx.types.CBufRet.i32 %2619, 0
  %2629 = and i32 %2628, 128
  %2630 = icmp ne i32 %2629, 0
  %2631 = and i1 %2627, %2630
  br i1 %2631, label %2782, label %2632

; <label>:2632                                    ; preds = %2566
  %2633 = add i32 %2567, 20
  %2634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.f32 %2634, 0
  %2636 = add i32 %2567, 24
  %2637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.f32 %2637, 0
  %2639 = add i32 %2567, 40
  %2640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.f32 %2640, 0
  %2642 = add i32 %2567, 96
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2646 = extractvalue %dx.types.CBufRet.f32 %2645, 2
  %2647 = fmul fast float %2646, %2586
  %2648 = fmul fast float %2646, %2588
  %2649 = extractvalue %dx.types.CBufRet.f32 %2645, 3
  %2650 = fadd fast float %2647, %2649
  %2651 = fadd fast float %2648, %2649
  %2652 = add i32 %2644, 0
  %2653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2652, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2654 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2653, i32 0)  ; GetDimensions(handle,mipLevel)
  %2655 = extractvalue %dx.types.Dimensions %2654, 0
  %2656 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2655)  ; FirstbitLo(value)
  %2657 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.i32 %2657, 1
  %2659 = sub nsw i32 %2658, %2656
  %2660 = sitofp i32 %2659 to float
  %2661 = fsub fast float %2610, %2660
  %2662 = call float @dx.op.binary.f32(i32 35, float %2661, float 0.000000e+00)  ; FMax(a,b)
  %2663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2653, %dx.types.Handle %56, float %2650, float %2651, float %2641, float undef, i32 0, i32 0, i32 undef, float %2662)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  %2665 = fmul fast float %2664, %2635
  %2666 = fadd fast float %2665, %2638
  %2667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2667, 0
  %2669 = extractvalue %dx.types.CBufRet.f32 %2667, 1
  %2670 = extractvalue %dx.types.CBufRet.f32 %2667, 2
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 3
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 3
  %2675 = extractvalue %dx.types.CBufRet.f32 %2667, 3
  %2676 = fadd fast float %2672, %2533
  %2677 = fadd fast float %2674, %2534
  %2678 = fadd fast float %2666, %2675
  %2679 = fmul fast float %2676, %2668
  %2680 = call float @dx.op.tertiary.f32(i32 46, float %2677, float %2669, float %2679)  ; FMad(a,b,c)
  %2681 = call float @dx.op.tertiary.f32(i32 46, float %2678, float %2670, float %2680)  ; FMad(a,b,c)
  %2682 = fsub fast float %2681, %2675
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 2
  %2685 = fsub fast float %2682, %2684
  %2686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2687 = extractvalue %dx.types.CBufRet.i32 %2686, 0
  %2688 = call i32 @dx.op.binary.i32(i32 40, i32 %2564, i32 %2687)  ; UMin(a,b)
  %2689 = mul i32 %2688, 36
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = add i32 %2689, 4
  %2693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2693, 0
  %2695 = fmul fast float %2694, %2586
  %2696 = fmul fast float %2694, %2588
  %2697 = extractvalue %dx.types.CBufRet.f32 %2693, 1
  %2698 = fadd fast float %2695, %2697
  %2699 = fadd fast float %2696, %2697
  %2700 = icmp eq i32 %2691, 0
  br i1 %2700, label %2769, label %2701

; <label>:2701                                    ; preds = %2632
  br label %2702

; <label>:2702                                    ; preds = %2759, %2701
  %2703 = phi float [ %2760, %2759 ], [ 0.000000e+00, %2701 ]
  %2704 = phi float [ %2761, %2759 ], [ 0.000000e+00, %2701 ]
  %2705 = phi float [ %2762, %2759 ], [ 0.000000e+00, %2701 ]
  %2706 = phi float [ %2763, %2759 ], [ 0.000000e+00, %2701 ]
  %2707 = phi float [ %2764, %2759 ], [ 0.000000e+00, %2701 ]
  %2708 = phi float [ %2765, %2759 ], [ 0.000000e+00, %2701 ]
  %2709 = phi i32 [ %2766, %2759 ], [ 0, %2701 ]
  %2710 = shl i32 %2709, 2
  %2711 = add i32 %2577, %2710
  %2712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.f32 %2712, 0
  %2714 = add i32 %2581, %2710
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2714, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = add i32 %2716, 0
  %2718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2717, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2719 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2718, i32 0)  ; GetDimensions(handle,mipLevel)
  %2720 = extractvalue %dx.types.Dimensions %2719, 0
  %2721 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2720)  ; FirstbitLo(value)
  %2722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.i32 %2722, 1
  %2724 = sub nsw i32 %2723, %2721
  %2725 = sitofp i32 %2724 to float
  %2726 = fsub fast float %2610, %2725
  %2727 = call float @dx.op.binary.f32(i32 35, float %2726, float 0.000000e+00)  ; FMax(a,b)
  %2728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2718, %dx.types.Handle %56, float %2698, float %2699, float %2713, float undef, i32 0, i32 0, i32 undef, float %2727)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = fcmp fast ogt float %2729, 0.000000e+00
  br i1 %2730, label %2731, label %2759

; <label>:2731                                    ; preds = %2702
  %2732 = add i32 %2692, %2710
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = and i32 %2734, 32767
  %2736 = mul nuw nsw i32 %2735, 928
  %2737 = add nuw nsw i32 %2736, 48
  %2738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.ResRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.ResRet.f32 %2738, 2
  %2742 = add nuw nsw i32 %2736, 60
  %2743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.ResRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.ResRet.f32 %2743, 2
  %2747 = fmul fast float %2739, %2729
  %2748 = fmul fast float %2740, %2729
  %2749 = fmul fast float %2741, %2729
  %2750 = fadd fast float %2747, %2703
  %2751 = fadd fast float %2748, %2704
  %2752 = fadd fast float %2749, %2705
  %2753 = fmul fast float %2744, %2729
  %2754 = fmul fast float %2745, %2729
  %2755 = fmul fast float %2746, %2729
  %2756 = fadd fast float %2753, %2706
  %2757 = fadd fast float %2754, %2707
  %2758 = fadd fast float %2755, %2708
  br label %2759

; <label>:2759                                    ; preds = %2731, %2702
  %2760 = phi float [ %2750, %2731 ], [ %2703, %2702 ]
  %2761 = phi float [ %2751, %2731 ], [ %2704, %2702 ]
  %2762 = phi float [ %2752, %2731 ], [ %2705, %2702 ]
  %2763 = phi float [ %2756, %2731 ], [ %2706, %2702 ]
  %2764 = phi float [ %2757, %2731 ], [ %2707, %2702 ]
  %2765 = phi float [ %2758, %2731 ], [ %2708, %2702 ]
  %2766 = add nuw i32 %2709, 1
  %2767 = icmp eq i32 %2766, %2691
  br i1 %2767, label %2768, label %2702

; <label>:2768                                    ; preds = %2759
  br label %2769

; <label>:2769                                    ; preds = %2768, %2632
  %2770 = phi float [ 0.000000e+00, %2632 ], [ %2760, %2768 ]
  %2771 = phi float [ 0.000000e+00, %2632 ], [ %2761, %2768 ]
  %2772 = phi float [ 0.000000e+00, %2632 ], [ %2762, %2768 ]
  %2773 = phi float [ 0.000000e+00, %2632 ], [ %2763, %2768 ]
  %2774 = phi float [ 0.000000e+00, %2632 ], [ %2764, %2768 ]
  %2775 = phi float [ 0.000000e+00, %2632 ], [ %2765, %2768 ]
  %2776 = fadd fast float %2773, %2770
  %2777 = fmul fast float %2776, 0x3F847AE140000000
  %2778 = fadd fast float %2774, %2771
  %2779 = fmul fast float %2778, 0x3F847AE140000000
  %2780 = fadd fast float %2775, %2772
  %2781 = fmul fast float %2780, 0x3F847AE140000000
  br label %2782

; <label>:2782                                    ; preds = %2769, %2566, %2511, %2508, %2479, %2441
  %2783 = phi float [ %2493, %2479 ], [ -1.310720e+05, %2441 ], [ %2685, %2769 ], [ -1.310720e+05, %2511 ], [ -1.310720e+05, %2566 ], [ -1.310720e+05, %2508 ]
  %2784 = phi float [ %2503, %2479 ], [ 0.000000e+00, %2441 ], [ %2777, %2769 ], [ 0.000000e+00, %2511 ], [ 0.000000e+00, %2566 ], [ 0.000000e+00, %2508 ]
  %2785 = phi float [ %2505, %2479 ], [ 0.000000e+00, %2441 ], [ %2779, %2769 ], [ 0.000000e+00, %2511 ], [ 0.000000e+00, %2566 ], [ 0.000000e+00, %2508 ]
  %2786 = phi float [ %2507, %2479 ], [ 0.000000e+00, %2441 ], [ %2781, %2769 ], [ 0.000000e+00, %2511 ], [ 0.000000e+00, %2566 ], [ 0.000000e+00, %2508 ]
  %2787 = phi i1 [ true, %2479 ], [ false, %2441 ], [ true, %2769 ], [ false, %2511 ], [ false, %2566 ], [ false, %2508 ]
  %2788 = and i32 %212, 3
  %2789 = icmp eq i32 %2788, 1
  %2790 = select i1 %2789, float 1.000000e+00, float 0.000000e+00
  %2791 = fsub fast float %2783, %147
  %2792 = call float @dx.op.unary.f32(i32 7, float %2791)  ; Saturate(value)
  %2793 = select i1 %2787, float %2792, float 1.000000e+00
  %2794 = fmul fast float %2793, %2790
  %2795 = icmp eq i32 %2788, 3
  %2796 = select i1 %2795, float 1.000000e+00, float %2794
  %2797 = call float @dx.op.binary.f32(i32 35, float %2356, float %2796)  ; FMax(a,b)
  %2798 = call float @dx.op.unary.f32(i32 7, float %2797)  ; Saturate(value)
  %2799 = fcmp fast une float %2798, 0.000000e+00
  %2800 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %2801 = call float @dx.op.unary.f32(i32 25, float %2800)  ; Rsqrt(value)
  br i1 %2799, label %2809, label %2802

; <label>:2802                                    ; preds = %2782
  %2803 = fmul fast float %2801, %145
  %2804 = fmul fast float %2801, %146
  %2805 = fmul fast float %2801, %147
  %2806 = fsub fast float -0.000000e+00, %2803
  %2807 = fsub fast float -0.000000e+00, %2804
  %2808 = fsub fast float -0.000000e+00, %2805
  br label %2977

; <label>:2809                                    ; preds = %2782
  %2810 = fmul fast float %145, %2801
  %2811 = fsub fast float -0.000000e+00, %2810
  %2812 = fmul fast float %146, %2801
  %2813 = fsub fast float -0.000000e+00, %2812
  %2814 = fmul fast float %147, %2801
  %2815 = fsub fast float -0.000000e+00, %2814
  %2816 = call float @dx.op.dot3.f32(i32 55, float %2811, float %2813, float %2815, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %2817 = fmul fast float %2798, 2.500000e+00
  %2818 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2819 = fmul fast float %2798, 0x4013FFFFE0000000
  %2820 = fadd fast float %2819, 0xBFFFFFFFE0000000
  %2821 = call float @dx.op.unary.f32(i32 7, float %2820)  ; Saturate(value)
  %2822 = fmul fast float %2798, 0x4004000020000000
  %2823 = fadd fast float %2822, 0xBFF8000040000000
  %2824 = call float @dx.op.unary.f32(i32 7, float %2823)  ; Saturate(value)
  %2825 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2826 = fmul fast float %2387, 1.000000e+01
  %2827 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2828 = fmul fast float %2827, 2.000000e+00
  %2829 = fsub fast float 3.000000e+00, %2828
  %2830 = fmul fast float %2827, %2827
  %2831 = fmul fast float %2830, %2829
  %2832 = fsub fast float 1.000000e+00, %2831
  %2833 = fsub fast float 0x3FE3333340000000, %2408
  %2834 = fmul fast float %2833, 0x400AAAAAA0000000
  %2835 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  %2836 = fmul fast float %2832, %2835
  %2837 = fmul fast float %2420, 0x3FEA2B8620000000
  %2838 = fmul fast float %2421, 0x3FEA2B8620000000
  %2839 = fmul fast float %2422, 0x3FEA2B8620000000
  %2840 = fadd fast float %2837, 0x3FC81DFBA0000000
  %2841 = fmul fast float %2840, %2420
  %2842 = fadd fast float %2841, 0x3F910E6020000000
  %2843 = fadd fast float %2838, 0x3FC81DFBA0000000
  %2844 = fmul fast float %2843, %2421
  %2845 = fadd fast float %2844, 0x3F910E6020000000
  %2846 = fadd fast float %2839, 0x3FC81DFBA0000000
  %2847 = fmul fast float %2846, %2422
  %2848 = fadd fast float %2847, 0x3F910E6020000000
  %2849 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2850 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  %2851 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2852 = fsub fast float %2849, %2420
  %2853 = fsub fast float %2850, %2421
  %2854 = fsub fast float %2851, %2422
  %2855 = fmul fast float %2852, %2825
  %2856 = fmul fast float %2855, %2836
  %2857 = fmul fast float %2853, %2825
  %2858 = fmul fast float %2857, %2836
  %2859 = fmul fast float %2854, %2825
  %2860 = fmul fast float %2859, %2836
  %2861 = fadd fast float %2856, %2420
  %2862 = fadd fast float %2858, %2421
  %2863 = fadd fast float %2860, %2422
  %2864 = fmul fast float %2368, %2368
  %2865 = fmul fast float %2864, %2864
  %2866 = fadd fast float %2821, 1.000000e+00
  %2867 = fsub fast float %2866, %2836
  %2868 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2869 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2870 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  %2871 = fsub fast float 1.000000e+00, %2865
  %2872 = call float @dx.op.binary.f32(i32 36, float %2868, float %2871)  ; FMin(a,b)
  %2873 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2874 = call float @dx.op.binary.f32(i32 35, float %2872, float %2873)  ; FMax(a,b)
  %2875 = fadd fast float %2870, 0xBFE4CCCCC0000000
  %2876 = fmul fast float %2875, 0x4006DB6DA0000000
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2878 = fmul fast float %2877, 2.000000e+00
  %2879 = fsub fast float 3.000000e+00, %2878
  %2880 = bitcast float %2405 to i32
  %2881 = ashr i32 %2880, 1
  %2882 = add nsw i32 %2881, 532487669
  %2883 = bitcast i32 %2882 to float
  %2884 = fsub fast float 1.000000e+00, %2883
  %2885 = bitcast float %2884 to i32
  %2886 = sub nsw i32 2129859010, %2885
  %2887 = bitcast i32 %2886 to float
  %2888 = fmul fast float %2887, 2.000000e+00
  %2889 = bitcast float %2406 to i32
  %2890 = ashr i32 %2889, 1
  %2891 = add nsw i32 %2890, 532487669
  %2892 = bitcast i32 %2891 to float
  %2893 = fsub fast float 1.000000e+00, %2892
  %2894 = bitcast float %2893 to i32
  %2895 = sub nsw i32 2129859010, %2894
  %2896 = bitcast i32 %2895 to float
  %2897 = fmul fast float %2896, 2.000000e+00
  %2898 = bitcast float %2407 to i32
  %2899 = ashr i32 %2898, 1
  %2900 = add nsw i32 %2899, 532487669
  %2901 = bitcast i32 %2900 to float
  %2902 = fsub fast float 1.000000e+00, %2901
  %2903 = bitcast float %2902 to i32
  %2904 = sub nsw i32 2129859010, %2903
  %2905 = bitcast i32 %2904 to float
  %2906 = fmul fast float %2905, 2.000000e+00
  %2907 = fsub fast float 0x4002A9FBE0000000, %2888
  %2908 = fadd fast float %2888, 0x3FD54FDF00000000
  %2909 = bitcast float %2908 to i32
  %2910 = sub nsw i32 2129859010, %2909
  %2911 = bitcast i32 %2910 to float
  %2912 = fmul fast float %2911, %2907
  %2913 = fmul fast float %2912, %2912
  %2914 = fsub fast float 0x4002A9FBE0000000, %2897
  %2915 = fadd fast float %2897, 0x3FD54FDF00000000
  %2916 = bitcast float %2915 to i32
  %2917 = sub nsw i32 2129859010, %2916
  %2918 = bitcast i32 %2917 to float
  %2919 = fmul fast float %2918, %2914
  %2920 = fmul fast float %2919, %2919
  %2921 = fsub fast float 0x4002A9FBE0000000, %2906
  %2922 = fadd fast float %2906, 0x3FD54FDF00000000
  %2923 = bitcast float %2922 to i32
  %2924 = sub nsw i32 2129859010, %2923
  %2925 = bitcast i32 %2924 to float
  %2926 = fmul fast float %2925, %2921
  %2927 = fmul fast float %2926, %2926
  %2928 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2913)  ; FMax(a,b)
  %2929 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2920)  ; FMax(a,b)
  %2930 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2927)  ; FMax(a,b)
  %2931 = fsub fast float 1.000000e+00, %2816
  %2932 = fadd fast float %2931, %2832
  %2933 = call float @dx.op.unary.f32(i32 7, float %2932)  ; Saturate(value)
  %2934 = fsub fast float 1.000000e+00, %2796
  %2935 = fmul fast float %2874, %2934
  %2936 = fmul fast float %2877, %2877
  %2937 = fmul fast float %2936, %2935
  %2938 = fmul fast float %2937, %2879
  %2939 = fmul fast float %2934, 0xBFE99999A0000000
  %2940 = fmul fast float %2939, %2825
  %2941 = fmul fast float %2940, %2836
  %2942 = fadd fast float %2941, 1.000000e+00
  %2943 = fadd fast float %2408, -1.000000e+00
  %2944 = fmul fast float %2942, %2943
  %2945 = fadd fast float %2944, 1.000000e+00
  %2946 = fsub fast float %2928, %2405
  %2947 = fsub fast float %2929, %2406
  %2948 = fsub fast float %2930, %2407
  %2949 = fmul fast float %2938, %2946
  %2950 = fmul fast float %2938, %2947
  %2951 = fmul fast float %2938, %2948
  %2952 = fadd fast float %2949, %2405
  %2953 = fadd fast float %2950, %2406
  %2954 = fadd fast float %2951, %2407
  %2955 = fsub fast float %74, %2384
  %2956 = fsub fast float %75, %2385
  %2957 = fsub fast float %76, %2386
  %2958 = fmul fast float %2938, %2955
  %2959 = fmul fast float %2938, %2956
  %2960 = fmul fast float %2938, %2957
  %2961 = fadd fast float %2958, %2384
  %2962 = fadd fast float %2959, %2385
  %2963 = fadd fast float %2960, %2386
  %2964 = fmul fast float %2938, %2933
  %2965 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  %2966 = fsub fast float 1.000000e+00, %2965
  %2967 = fmul fast float %2964, %2966
  %2968 = fadd fast float %2967, %2965
  %2969 = fsub fast float 1.000000e+00, %2368
  %2970 = fmul fast float %2938, %2969
  %2971 = fadd fast float %2970, %2368
  %2972 = call float @dx.op.dot3.f32(i32 55, float %2961, float %2962, float %2963, float %2961, float %2962, float %2963)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = call float @dx.op.unary.f32(i32 25, float %2972)  ; Rsqrt(value)
  %2974 = fmul fast float %2961, %2973
  %2975 = fmul fast float %2962, %2973
  %2976 = fmul fast float %2963, %2973
  br label %2977

; <label>:2977                                    ; preds = %2809, %2802
  %2978 = phi float [ %2808, %2802 ], [ %2815, %2809 ]
  %2979 = phi float [ %2807, %2802 ], [ %2813, %2809 ]
  %2980 = phi float [ %2806, %2802 ], [ %2811, %2809 ]
  %2981 = phi float [ %2805, %2802 ], [ %2814, %2809 ]
  %2982 = phi float [ %2804, %2802 ], [ %2812, %2809 ]
  %2983 = phi float [ %2803, %2802 ], [ %2810, %2809 ]
  %2984 = phi float [ %2420, %2802 ], [ %2861, %2809 ]
  %2985 = phi float [ %2421, %2802 ], [ %2862, %2809 ]
  %2986 = phi float [ %2422, %2802 ], [ %2863, %2809 ]
  %2987 = phi float [ %2405, %2802 ], [ %2952, %2809 ]
  %2988 = phi float [ %2406, %2802 ], [ %2953, %2809 ]
  %2989 = phi float [ %2407, %2802 ], [ %2954, %2809 ]
  %2990 = phi float [ %2384, %2802 ], [ %2974, %2809 ]
  %2991 = phi float [ %2385, %2802 ], [ %2975, %2809 ]
  %2992 = phi float [ %2386, %2802 ], [ %2976, %2809 ]
  %2993 = phi float [ %2408, %2802 ], [ %2968, %2809 ]
  %2994 = phi float [ %2368, %2802 ], [ %2971, %2809 ]
  %2995 = fsub fast float -0.000000e+00, %147
  %2996 = select i1 %236, float 0.000000e+00, float %2989
  %2997 = call float @dx.op.dot3.f32(i32 55, float %2990, float %2991, float %2992, float %2980, float %2979, float %2978)  ; Dot3(ax,ay,az,bx,by,bz)
  %2998 = call float @dx.op.unary.f32(i32 7, float %2997)  ; Saturate(value)
  %2999 = call float @dx.op.dot3.f32(i32 55, float %2983, float %2982, float %2981, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %3000 = fmul fast float %2999, 2.000000e+00
  %3001 = fmul fast float %3000, %2990
  %3002 = fmul fast float %3000, %2991
  %3003 = fmul fast float %3000, %2992
  %3004 = fsub fast float %2983, %3001
  %3005 = fsub fast float %2982, %3002
  %3006 = fsub fast float %2981, %3003
  %3007 = call float @dx.op.binary.f32(i32 36, float %2994, float 1.000000e+00)  ; FMin(a,b)
  %3008 = fsub fast float 1.000000e+00, %2994
  %3009 = bitcast float %3008 to i32
  %3010 = sub nsw i32 2129859010, %3009
  %3011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3012 = extractvalue %dx.types.CBufRet.f32 %3011, 0
  %3013 = extractvalue %dx.types.CBufRet.f32 %3011, 1
  %3014 = fadd fast float %3012, %145
  %3015 = fadd fast float %3013, %146
  %3016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3017 = extractvalue %dx.types.CBufRet.i32 %3016, 0
  %3018 = icmp eq i32 %3017, 1
  br i1 %3018, label %3019, label %3054

; <label>:3019                                    ; preds = %2977
  %3020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3021 = extractvalue %dx.types.CBufRet.f32 %3020, 0
  %3022 = extractvalue %dx.types.CBufRet.f32 %3020, 1
  %3023 = fsub fast float %3014, %3021
  %3024 = fsub fast float %3015, %3022
  %3025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3026 = extractvalue %dx.types.CBufRet.f32 %3025, 0
  %3027 = extractvalue %dx.types.CBufRet.f32 %3025, 1
  %3028 = fmul fast float %3023, %3026
  %3029 = fmul fast float %3024, %3027
  %3030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %3028, float %3029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  %3032 = fcmp fast ogt float %3031, 0.000000e+00
  %3033 = extractvalue %dx.types.CBufRet.i32 %3016, 3
  %3034 = icmp ne i32 %3033, 0
  %3035 = and i1 %3032, %3034
  br i1 %3035, label %3036, label %3054, !dx.controlflow.hints !101

; <label>:3036                                    ; preds = %3019
  %3037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3038 = extractvalue %dx.types.CBufRet.f32 %3037, 0
  %3039 = extractvalue %dx.types.CBufRet.f32 %3037, 1
  %3040 = fsub fast float %3014, %3038
  %3041 = fsub fast float %3015, %3039
  %3042 = fmul fast float %3040, %3040
  %3043 = fmul fast float %3041, %3041
  %3044 = fadd fast float %3042, %3043
  %3045 = uitofp i32 %3033 to float
  %3046 = fmul fast float %3045, %3045
  %3047 = fcmp fast ogt float %3044, %3046
  br i1 %3047, label %3054, label %3048

; <label>:3048                                    ; preds = %3036
  %3049 = call float @dx.op.unary.f32(i32 24, float %3044)  ; Sqrt(value)
  %3050 = fsub fast float %3045, %3049
  %3051 = fmul fast float %3050, 0x3F75555560000000
  %3052 = call float @dx.op.unary.f32(i32 7, float %3051)  ; Saturate(value)
  %3053 = call float @dx.op.binary.f32(i32 36, float %3052, float %3031)  ; FMin(a,b)
  br label %3054

; <label>:3054                                    ; preds = %3048, %3036, %3019, %2977
  %3055 = phi float [ 1.000000e+00, %2977 ], [ %3053, %3048 ], [ %3031, %3019 ], [ 0.000000e+00, %3036 ]
  %3056 = fcmp fast ogt float %3055, 0.000000e+00
  br i1 %3056, label %3057, label %3155, !dx.controlflow.hints !102

; <label>:3057                                    ; preds = %3054
  %3058 = fadd fast float %176, 5.000000e-01
  %3059 = call float @dx.op.unary.f32(i32 27, float %3058)  ; Round_ni(value)
  %3060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %174, float %175, float %3059, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3061 = extractvalue %dx.types.ResRet.f32 %3060, 0
  %3062 = extractvalue %dx.types.ResRet.f32 %3060, 1
  %3063 = extractvalue %dx.types.ResRet.f32 %3060, 2
  %3064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3065 = extractvalue %dx.types.CBufRet.f32 %3064, 3
  %3066 = fmul fast float %3065, %3061
  %3067 = fmul fast float %3065, %3062
  %3068 = fmul fast float %3065, %3063
  %3069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %174, float %175, float %3059, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3070 = extractvalue %dx.types.ResRet.f32 %3069, 0
  %3071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %174, float %175, float %3059, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3072 = extractvalue %dx.types.ResRet.f32 %3071, 0
  %3073 = extractvalue %dx.types.ResRet.f32 %3071, 1
  %3074 = fmul fast float %3072, 2.000000e+00
  %3075 = fmul fast float %3073, 2.000000e+00
  %3076 = fadd fast float %3074, -1.000000e+00
  %3077 = fadd fast float %3075, -1.000000e+00
  %3078 = fadd fast float %3076, %3077
  %3079 = fmul fast float %3078, 5.000000e-01
  %3080 = fsub fast float %3076, %3077
  %3081 = fmul fast float %3080, 5.000000e-01
  %3082 = call float @dx.op.unary.f32(i32 6, float %3079)  ; FAbs(value)
  %3083 = fsub fast float 1.000000e+00, %3082
  %3084 = call float @dx.op.unary.f32(i32 6, float %3081)  ; FAbs(value)
  %3085 = fsub fast float %3083, %3084
  %3086 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %3085)  ; FMax(a,b)
  %3087 = call float @dx.op.dot3.f32(i32 55, float %3079, float %3081, float %3086, float %3079, float %3081, float %3086)  ; Dot3(ax,ay,az,bx,by,bz)
  %3088 = bitcast float %3087 to i32
  %3089 = ashr i32 %3088, 1
  %3090 = sub nsw i32 1597250115, %3089
  %3091 = bitcast i32 %3090 to float
  %3092 = fmul fast float %3091, %3079
  %3093 = fmul fast float %3091, %3081
  %3094 = fmul fast float %3091, %3086
  %3095 = fsub fast float 1.000000e+00, %3070
  %3096 = fdiv fast float %3095, %3094
  %3097 = fmul fast float %3094, %74
  %3098 = fmul fast float %3094, %75
  %3099 = fmul fast float %3094, %76
  %3100 = fmul fast float %3092, %70
  %3101 = fmul fast float %3092, %71
  %3102 = fmul fast float %3092, %72
  %3103 = fadd fast float %3097, %3100
  %3104 = fadd fast float %3098, %3101
  %3105 = fadd fast float %3099, %3102
  %3106 = fmul fast float %3093, %109
  %3107 = fmul fast float %3093, %110
  %3108 = fmul fast float %3093, %111
  %3109 = fadd fast float %3103, %3106
  %3110 = fadd fast float %3104, %3107
  %3111 = fadd fast float %3105, %3108
  %3112 = call float @dx.op.dot3.f32(i32 55, float %3109, float %3110, float %3111, float %3109, float %3110, float %3111)  ; Dot3(ax,ay,az,bx,by,bz)
  %3113 = call float @dx.op.unary.f32(i32 25, float %3112)  ; Rsqrt(value)
  %3114 = fmul fast float %3109, %3113
  %3115 = fmul fast float %3110, %3113
  %3116 = fmul fast float %3111, %3113
  %3117 = call float @dx.op.dot3.f32(i32 55, float %2990, float %2991, float %2992, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %3118 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3119 = fmul fast float %3118, 5.000000e-01
  %3120 = fadd fast float %3119, 5.000000e-01
  %3121 = fmul fast float %3120, %3070
  %3122 = call float @dx.op.dot3.f32(i32 55, float %2990, float %2991, float %2992, float %3114, float %3115, float %3116)  ; Dot3(ax,ay,az,bx,by,bz)
  %3123 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  %3124 = fmul fast float %3123, %3096
  %3125 = fadd fast float %3121, %3124
  %3126 = fsub fast float 5.000000e-01, %3119
  %3127 = fmul fast float %3126, %2984
  %3128 = fmul fast float %3126, %2985
  %3129 = fmul fast float %3126, %2986
  %3130 = fadd fast float %3125, %3127
  %3131 = fmul fast float %3130, %3066
  %3132 = fadd fast float %3125, %3128
  %3133 = fmul fast float %3132, %3067
  %3134 = fadd fast float %3125, %3129
  %3135 = fmul fast float %3134, %3068
  %3136 = call float @dx.op.dot3.f32(i32 55, float %3004, float %3005, float %3006, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %3137 = call float @dx.op.unary.f32(i32 7, float %3136)  ; Saturate(value)
  %3138 = fmul fast float %3137, 5.000000e-01
  %3139 = fadd fast float %3138, 5.000000e-01
  %3140 = fmul fast float %3139, %3070
  %3141 = call float @dx.op.dot3.f32(i32 55, float %3004, float %3005, float %3006, float %3114, float %3115, float %3116)  ; Dot3(ax,ay,az,bx,by,bz)
  %3142 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  %3143 = fmul fast float %3142, %3096
  %3144 = fadd fast float %3140, %3143
  %3145 = fsub fast float 5.000000e-01, %3138
  %3146 = fmul fast float %3145, %2984
  %3147 = fmul fast float %3145, %2985
  %3148 = fmul fast float %3145, %2986
  %3149 = fadd fast float %3144, %3146
  %3150 = fmul fast float %3149, %3066
  %3151 = fadd fast float %3144, %3147
  %3152 = fmul fast float %3151, %3067
  %3153 = fadd fast float %3144, %3148
  %3154 = fmul fast float %3153, %3068
  br label %3155

; <label>:3155                                    ; preds = %3057, %3054
  %3156 = phi float [ %3150, %3057 ], [ 0.000000e+00, %3054 ]
  %3157 = phi float [ %3152, %3057 ], [ 0.000000e+00, %3054 ]
  %3158 = phi float [ %3154, %3057 ], [ 0.000000e+00, %3054 ]
  %3159 = phi float [ %3131, %3057 ], [ 0.000000e+00, %3054 ]
  %3160 = phi float [ %3133, %3057 ], [ 0.000000e+00, %3054 ]
  %3161 = phi float [ %3135, %3057 ], [ 0.000000e+00, %3054 ]
  %3162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3163 = extractvalue %dx.types.CBufRet.f32 %3162, 0
  %3164 = fcmp fast ogt float %3163, 0.000000e+00
  %3165 = and i1 %3056, %3164
  br i1 %3165, label %3166, label %3370, !dx.controlflow.hints !103

; <label>:3166                                    ; preds = %3155
  %3167 = extractvalue %dx.types.CBufRet.f32 %3011, 2
  %3168 = fadd fast float %3167, %147
  %3169 = fmul fast float %2990, 3.200000e+01
  %3170 = fmul fast float %2991, 3.200000e+01
  %3171 = fadd fast float %3014, %3169
  %3172 = fadd fast float %3015, %3170
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3173, 0
  %3175 = extractvalue %dx.types.CBufRet.f32 %3173, 1
  %3176 = fsub fast float %3171, %3174
  %3177 = fsub fast float %3172, %3175
  %3178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.CBufRet.f32 %3178, 1
  %3181 = fmul fast float %3176, %3179
  %3182 = fmul fast float %3177, %3180
  %3183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3184 = extractvalue %dx.types.CBufRet.f32 %3183, 0
  %3185 = extractvalue %dx.types.CBufRet.f32 %3183, 1
  %3186 = fsub fast float %3014, %3184
  %3187 = fsub fast float %3015, %3185
  %3188 = fmul fast float %3186, %3186
  %3189 = fmul fast float %3187, %3187
  %3190 = fadd fast float %3188, %3189
  %3191 = call float @dx.op.unary.f32(i32 24, float %3190)  ; Sqrt(value)
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 0
  %3194 = extractvalue %dx.types.CBufRet.f32 %3192, 1
  %3195 = fsub fast float %3191, %3193
  %3196 = fdiv fast float %3195, %3194
  %3197 = call float @dx.op.unary.f32(i32 7, float %3196)  ; Saturate(value)
  %3198 = fmul fast float %3197, 2.000000e+00
  %3199 = fsub fast float 3.000000e+00, %3198
  %3200 = fmul fast float %3197, %3197
  %3201 = fmul fast float %3200, %3199
  %3202 = fcmp fast oge float %3181, 0.000000e+00
  %3203 = fcmp fast ole float %3181, 1.000000e+00
  %3204 = and i1 %3203, %3202
  %3205 = fcmp fast oge float %3182, 0.000000e+00
  %3206 = and i1 %3205, %3204
  %3207 = fcmp fast ole float %3182, 1.000000e+00
  %3208 = and i1 %3207, %3206
  %3209 = fcmp fast ogt float %3201, 0.000000e+00
  %3210 = and i1 %3209, %3208
  br i1 %3210, label %3211, label %3334, !dx.controlflow.hints !104

; <label>:3211                                    ; preds = %3166
  %3212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3213 = extractvalue %dx.types.CBufRet.f32 %3212, 2
  %3214 = extractvalue %dx.types.CBufRet.f32 %3212, 3
  %3215 = fmul fast float %3213, %3181
  %3216 = fmul fast float %3214, %3182
  %3217 = call float @dx.op.unary.f32(i32 27, float %3215)  ; Round_ni(value)
  %3218 = call float @dx.op.unary.f32(i32 27, float %3216)  ; Round_ni(value)
  %3219 = fptosi float %3217 to i32
  %3220 = fptosi float %3218 to i32
  %3221 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %3219, i32 %3220, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = lshr i32 %3222, 16
  %3224 = icmp eq i32 %3223, 65535
  br i1 %3224, label %3334, label %3225

; <label>:3225                                    ; preds = %3211
  %3226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3227 = extractvalue %dx.types.CBufRet.f32 %3226, 0
  %3228 = fmul fast float %3227, %3181
  %3229 = extractvalue %dx.types.CBufRet.f32 %3226, 1
  %3230 = fadd fast float %3228, %3229
  %3231 = extractvalue %dx.types.CBufRet.f32 %3226, 2
  %3232 = fmul fast float %3231, %3182
  %3233 = extractvalue %dx.types.CBufRet.f32 %3226, 3
  %3234 = fadd fast float %3232, %3233
  %3235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %3230, float %3234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.ResRet.f32 %3235, 1
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 1
  %3240 = extractvalue %dx.types.CBufRet.f32 %3238, 0
  %3241 = fsub fast float %3239, %3240
  %3242 = fmul fast float %3241, %3236
  %3243 = fadd fast float %3242, %3240
  %3244 = extractvalue %dx.types.CBufRet.f32 %3238, 3
  %3245 = extractvalue %dx.types.CBufRet.f32 %3238, 2
  %3246 = fsub fast float %3244, %3245
  %3247 = fmul fast float %3246, %3237
  %3248 = fadd fast float %3247, %3245
  %3249 = fsub fast float %3168, %3243
  %3250 = fsub fast float %3248, %3243
  %3251 = fdiv fast float %3249, %3250
  %3252 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3253 = extractvalue %dx.types.CBufRet.f32 %3162, 1
  %3254 = extractvalue %dx.types.CBufRet.f32 %3212, 0
  %3255 = extractvalue %dx.types.CBufRet.f32 %3212, 1
  %3256 = fmul fast float %3254, %3181
  %3257 = fmul fast float %3255, %3182
  %3258 = fmul fast float %3256, 1.250000e-01
  %3259 = fmul fast float %3257, 1.250000e-01
  %3260 = call float @dx.op.unary.f32(i32 27, float %3258)  ; Round_ni(value)
  %3261 = call float @dx.op.unary.f32(i32 27, float %3259)  ; Round_ni(value)
  %3262 = fmul fast float %3260, 8.000000e+00
  %3263 = fmul fast float %3261, 8.000000e+00
  %3264 = fsub fast float %3256, %3262
  %3265 = fsub fast float %3257, %3263
  %3266 = fadd fast float %3264, 5.000000e-01
  %3267 = fadd fast float %3265, 5.000000e-01
  %3268 = and i32 %3223, 255
  %3269 = lshr i32 %3222, 24
  %3270 = mul nuw nsw i32 %3268, 9
  %3271 = uitofp i32 %3270 to float
  %3272 = mul nuw nsw i32 %3269, 9
  %3273 = uitofp i32 %3272 to float
  %3274 = fadd fast float %3266, %3271
  %3275 = fadd fast float %3267, %3273
  %3276 = fdiv fast float %3274, %3163
  %3277 = fdiv fast float %3275, %3253
  %3278 = fmul fast float %3252, 4.375000e-01
  %3279 = fadd fast float %3278, 3.125000e-02
  %3280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3276, float %3277, float %3279, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3284 = fadd fast float %3278, 5.312500e-01
  %3285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3276, float %3277, float %3284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.ResRet.f32 %3285, 1
  %3288 = extractvalue %dx.types.ResRet.f32 %3285, 2
  %3289 = fmul fast float %3286, 2.000000e+00
  %3290 = fmul fast float %3287, 2.000000e+00
  %3291 = fmul fast float %3288, 2.000000e+00
  %3292 = fadd fast float %3289, -1.000000e+00
  %3293 = fadd fast float %3290, -1.000000e+00
  %3294 = fadd fast float %3291, -1.000000e+00
  %3295 = fmul fast float %3292, %3292
  %3296 = fmul fast float %3293, %3293
  %3297 = fadd fast float %3295, %3296
  %3298 = fmul fast float %3294, %3294
  %3299 = fadd fast float %3297, %3298
  %3300 = call float @dx.op.unary.f32(i32 24, float %3299)  ; Sqrt(value)
  %3301 = fcmp fast ogt float %3300, 0.000000e+00
  br i1 %3301, label %3302, label %3306

; <label>:3302                                    ; preds = %3225
  %3303 = fdiv fast float %3292, %3300
  %3304 = fdiv fast float %3293, %3300
  %3305 = fdiv fast float %3294, %3300
  br label %3306

; <label>:3306                                    ; preds = %3302, %3225
  %3307 = phi float [ %3303, %3302 ], [ 0.000000e+00, %3225 ]
  %3308 = phi float [ %3304, %3302 ], [ 0.000000e+00, %3225 ]
  %3309 = phi float [ %3305, %3302 ], [ 0.000000e+00, %3225 ]
  %3310 = call float @dx.op.dot3.f32(i32 55, float %3307, float %3308, float %3309, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %3311 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3310)  ; FMax(a,b)
  %3312 = fmul fast float %3311, 0x400C5BF8A0000000
  %3313 = fmul fast float %3281, %3201
  %3314 = fmul fast float %3313, %3312
  %3315 = fmul fast float %3282, %3201
  %3316 = fmul fast float %3315, %3312
  %3317 = fmul fast float %3283, %3201
  %3318 = fmul fast float %3317, %3312
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 3
  %3321 = fmul fast float %3314, %3320
  %3322 = fmul fast float %3316, %3320
  %3323 = fmul fast float %3318, %3320
  %3324 = fcmp fast ogt float %3168, %3248
  br i1 %3324, label %3325, label %3334

; <label>:3325                                    ; preds = %3306
  %3326 = fmul fast float %3250, 0x3FC24924A0000000
  %3327 = fsub fast float %3168, %3248
  %3328 = fdiv fast float %3327, %3326
  %3329 = call float @dx.op.unary.f32(i32 7, float %3328)  ; Saturate(value)
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = fmul fast float %3330, %3321
  %3332 = fmul fast float %3330, %3322
  %3333 = fmul fast float %3330, %3323
  br label %3334

; <label>:3334                                    ; preds = %3325, %3306, %3211, %3166
  %3335 = phi float [ %3333, %3325 ], [ %3323, %3306 ], [ 0.000000e+00, %3211 ], [ 0.000000e+00, %3166 ]
  %3336 = phi float [ %3332, %3325 ], [ %3322, %3306 ], [ 0.000000e+00, %3211 ], [ 0.000000e+00, %3166 ]
  %3337 = phi float [ %3331, %3325 ], [ %3321, %3306 ], [ 0.000000e+00, %3211 ], [ 0.000000e+00, %3166 ]
  %3338 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3337)  ; FMax(a,b)
  %3339 = fmul fast float %3338, 0x3FD20DD760000000
  %3340 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3004, float %3005, float %3006)  ; Dot3(ax,ay,az,bx,by,bz)
  %3341 = fmul fast float %3340, 0x3FDF454380000000
  %3342 = fmul fast float %3340, %3340
  %3343 = fmul fast float %3342, 0x3FEE471020000000
  %3344 = fadd fast float %3343, 0xBFD42F6020000000
  %3345 = call float @dx.op.dot3.f32(i32 55, float %3338, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3341, float %3344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3346 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3336)  ; FMax(a,b)
  %3347 = fmul fast float %3346, 0x3FD20DD760000000
  %3348 = call float @dx.op.dot3.f32(i32 55, float %3346, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3341, float %3344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3349 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3335)  ; FMax(a,b)
  %3350 = fmul fast float %3349, 0x3FD20DD760000000
  %3351 = call float @dx.op.dot3.f32(i32 55, float %3349, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3341, float %3344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3352 = call float @dx.op.binary.f32(i32 35, float %3339, float 0.000000e+00)  ; FMax(a,b)
  %3353 = call float @dx.op.binary.f32(i32 35, float %3347, float 0.000000e+00)  ; FMax(a,b)
  %3354 = call float @dx.op.binary.f32(i32 35, float %3350, float 0.000000e+00)  ; FMax(a,b)
  %3355 = call float @dx.op.binary.f32(i32 35, float %3345, float 0.000000e+00)  ; FMax(a,b)
  %3356 = call float @dx.op.binary.f32(i32 35, float %3348, float 0.000000e+00)  ; FMax(a,b)
  %3357 = call float @dx.op.binary.f32(i32 35, float %3351, float 0.000000e+00)  ; FMax(a,b)
  %3358 = fmul fast float %3352, %3055
  %3359 = fmul fast float %3353, %3055
  %3360 = fmul fast float %3354, %3055
  %3361 = fadd fast float %3358, %3159
  %3362 = fadd fast float %3359, %3160
  %3363 = fadd fast float %3360, %3161
  %3364 = fmul fast float %3355, %3055
  %3365 = fmul fast float %3356, %3055
  %3366 = fmul fast float %3357, %3055
  %3367 = fadd fast float %3364, %3156
  %3368 = fadd fast float %3365, %3157
  %3369 = fadd fast float %3366, %3158
  br label %3370

; <label>:3370                                    ; preds = %3334, %3155
  %3371 = phi float [ %3367, %3334 ], [ %3156, %3155 ]
  %3372 = phi float [ %3368, %3334 ], [ %3157, %3155 ]
  %3373 = phi float [ %3369, %3334 ], [ %3158, %3155 ]
  %3374 = phi float [ %3361, %3334 ], [ %3159, %3155 ]
  %3375 = phi float [ %3362, %3334 ], [ %3160, %3155 ]
  %3376 = phi float [ %3363, %3334 ], [ %3161, %3155 ]
  %3377 = fcmp fast olt float %3055, 1.000000e+00
  br i1 %3377, label %3378, label %4196, !dx.controlflow.hints !105

; <label>:3378                                    ; preds = %3370
  %3379 = extractvalue %dx.types.CBufRet.f32 %3011, 2
  %3380 = fadd fast float %3379, %147
  %3381 = fmul fast float %2990, 3.200000e+01
  %3382 = fmul fast float %2991, 3.200000e+01
  %3383 = fadd fast float %3014, %3381
  %3384 = fadd fast float %3015, %3382
  %3385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3386 = extractvalue %dx.types.CBufRet.f32 %3385, 0
  %3387 = extractvalue %dx.types.CBufRet.f32 %3385, 1
  %3388 = fsub fast float %3383, %3386
  %3389 = fsub fast float %3384, %3387
  %3390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3391 = extractvalue %dx.types.CBufRet.f32 %3390, 0
  %3392 = extractvalue %dx.types.CBufRet.f32 %3390, 1
  %3393 = fmul fast float %3388, %3391
  %3394 = fmul fast float %3389, %3392
  %3395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3396 = extractvalue %dx.types.CBufRet.f32 %3395, 0
  %3397 = fmul fast float %3393, %3396
  %3398 = extractvalue %dx.types.CBufRet.f32 %3395, 1
  %3399 = fadd fast float %3397, %3398
  %3400 = extractvalue %dx.types.CBufRet.f32 %3395, 2
  %3401 = fmul fast float %3400, %3394
  %3402 = extractvalue %dx.types.CBufRet.f32 %3395, 3
  %3403 = fadd fast float %3401, %3402
  %3404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %3399, float %3403, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = extractvalue %dx.types.ResRet.f32 %3404, 1
  %3407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3407, 1
  %3409 = extractvalue %dx.types.CBufRet.f32 %3407, 0
  %3410 = fsub fast float %3408, %3409
  %3411 = fmul fast float %3410, %3405
  %3412 = fadd fast float %3411, %3409
  %3413 = extractvalue %dx.types.CBufRet.f32 %3407, 3
  %3414 = extractvalue %dx.types.CBufRet.f32 %3407, 2
  %3415 = fsub fast float %3413, %3414
  %3416 = fmul fast float %3415, %3406
  %3417 = fadd fast float %3416, %3414
  %3418 = fsub fast float %3380, %3412
  %3419 = fsub fast float %3417, %3412
  %3420 = fdiv fast float %3418, %3419
  %3421 = call float @dx.op.unary.f32(i32 7, float %3420)  ; Saturate(value)
  %3422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3423 = extractvalue %dx.types.CBufRet.f32 %3422, 0
  %3424 = fmul fast float %3423, %3421
  %3425 = extractvalue %dx.types.CBufRet.f32 %3422, 1
  %3426 = fadd fast float %3424, %3425
  %3427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %3399, float %3403, float %3426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3428 = extractvalue %dx.types.ResRet.f32 %3427, 0
  %3429 = extractvalue %dx.types.ResRet.f32 %3427, 1
  %3430 = extractvalue %dx.types.ResRet.f32 %3427, 2
  %3431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3432 = extractvalue %dx.types.CBufRet.f32 %3431, 0
  %3433 = extractvalue %dx.types.CBufRet.f32 %3431, 1
  %3434 = extractvalue %dx.types.CBufRet.f32 %3431, 2
  %3435 = fmul fast float %3432, %3428
  %3436 = fmul fast float %3433, %3429
  %3437 = fmul fast float %3434, %3430
  %3438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.f32 %3438, 0
  %3440 = extractvalue %dx.types.CBufRet.f32 %3438, 1
  %3441 = extractvalue %dx.types.CBufRet.f32 %3438, 2
  %3442 = fadd fast float %3435, %3439
  %3443 = fadd fast float %3436, %3440
  %3444 = fadd fast float %3437, %3441
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3447 = fmul fast float %3446, %3393
  %3448 = extractvalue %dx.types.CBufRet.f32 %3445, 1
  %3449 = fadd fast float %3447, %3448
  %3450 = extractvalue %dx.types.CBufRet.f32 %3445, 2
  %3451 = fmul fast float %3450, %3394
  %3452 = extractvalue %dx.types.CBufRet.f32 %3445, 3
  %3453 = fadd fast float %3451, %3452
  %3454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3455 = extractvalue %dx.types.CBufRet.f32 %3454, 0
  %3456 = extractvalue %dx.types.CBufRet.f32 %3454, 1
  %3457 = extractvalue %dx.types.CBufRet.f32 %3454, 2
  %3458 = extractvalue %dx.types.CBufRet.f32 %3454, 3
  %3459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3459, 0
  %3461 = extractvalue %dx.types.CBufRet.f32 %3459, 1
  %3462 = extractvalue %dx.types.CBufRet.f32 %3459, 2
  %3463 = extractvalue %dx.types.CBufRet.f32 %3459, 3
  %3464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3449, float %3453, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3465 = extractvalue %dx.types.ResRet.f32 %3464, 0
  %3466 = extractvalue %dx.types.ResRet.f32 %3464, 1
  %3467 = extractvalue %dx.types.ResRet.f32 %3464, 2
  %3468 = extractvalue %dx.types.ResRet.f32 %3464, 3
  %3469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3449, float %3453, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.ResRet.f32 %3469, 2
  %3473 = extractvalue %dx.types.ResRet.f32 %3469, 3
  %3474 = fmul fast float %3465, %3442
  %3475 = fmul fast float %3470, %3442
  %3476 = fmul fast float %3472, %3442
  %3477 = fmul fast float %3468, %3442
  %3478 = fadd fast float %3474, %3455
  %3479 = fadd fast float %3475, %3456
  %3480 = fadd fast float %3476, %3457
  %3481 = fadd fast float %3477, %3458
  %3482 = fmul fast float %3466, %3442
  %3483 = fmul fast float %3471, %3442
  %3484 = fadd fast float %3482, %3460
  %3485 = fadd fast float %3483, %3461
  %3486 = fmul fast float %3467, %3442
  %3487 = fmul fast float %3473, %3442
  %3488 = fadd fast float %3486, %3462
  %3489 = fadd fast float %3487, %3463
  %3490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3449, float %3453, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3491 = extractvalue %dx.types.ResRet.f32 %3490, 0
  %3492 = extractvalue %dx.types.ResRet.f32 %3490, 1
  %3493 = extractvalue %dx.types.ResRet.f32 %3490, 2
  %3494 = extractvalue %dx.types.ResRet.f32 %3490, 3
  %3495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3449, float %3453, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3496 = extractvalue %dx.types.ResRet.f32 %3495, 0
  %3497 = extractvalue %dx.types.ResRet.f32 %3495, 1
  %3498 = extractvalue %dx.types.ResRet.f32 %3495, 2
  %3499 = extractvalue %dx.types.ResRet.f32 %3495, 3
  %3500 = fmul fast float %3491, %3443
  %3501 = fmul fast float %3496, %3443
  %3502 = fmul fast float %3498, %3443
  %3503 = fmul fast float %3494, %3443
  %3504 = fadd fast float %3478, %3500
  %3505 = fadd fast float %3479, %3501
  %3506 = fadd fast float %3480, %3502
  %3507 = fadd fast float %3481, %3503
  %3508 = fmul fast float %3492, %3443
  %3509 = fmul fast float %3497, %3443
  %3510 = fadd fast float %3484, %3508
  %3511 = fadd fast float %3485, %3509
  %3512 = fmul fast float %3493, %3443
  %3513 = fmul fast float %3499, %3443
  %3514 = fadd fast float %3488, %3512
  %3515 = fadd fast float %3489, %3513
  %3516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3449, float %3453, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3516, 1
  %3519 = extractvalue %dx.types.ResRet.f32 %3516, 2
  %3520 = extractvalue %dx.types.ResRet.f32 %3516, 3
  %3521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %3449, float %3453, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.ResRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.ResRet.f32 %3521, 2
  %3525 = extractvalue %dx.types.ResRet.f32 %3521, 3
  %3526 = fmul fast float %3517, %3444
  %3527 = fmul fast float %3522, %3444
  %3528 = fmul fast float %3524, %3444
  %3529 = fmul fast float %3520, %3444
  %3530 = fadd fast float %3504, %3526
  %3531 = fadd fast float %3505, %3527
  %3532 = fadd fast float %3506, %3528
  %3533 = fadd fast float %3507, %3529
  %3534 = fmul fast float %3518, %3444
  %3535 = fmul fast float %3523, %3444
  %3536 = fadd fast float %3510, %3534
  %3537 = fadd fast float %3511, %3535
  %3538 = fmul fast float %3519, %3444
  %3539 = fmul fast float %3525, %3444
  %3540 = fadd fast float %3514, %3538
  %3541 = fadd fast float %3515, %3539
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 0
  %3544 = fsub fast float %3014, %3543
  %3545 = fsub fast float %3386, %3014
  %3546 = call float @dx.op.binary.f32(i32 35, float %3545, float %3544)  ; FMax(a,b)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3542, 1
  %3548 = fsub fast float %3015, %3547
  %3549 = fsub fast float %3387, %3015
  %3550 = call float @dx.op.binary.f32(i32 35, float %3549, float %3548)  ; FMax(a,b)
  %3551 = call float @dx.op.binary.f32(i32 35, float %3546, float %3550)  ; FMax(a,b)
  %3552 = extractvalue %dx.types.CBufRet.f32 %3390, 3
  %3553 = fmul fast float %3552, %3551
  %3554 = call float @dx.op.unary.f32(i32 7, float %3553)  ; Saturate(value)
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.CBufRet.f32 %3555, 1
  %3558 = extractvalue %dx.types.CBufRet.f32 %3555, 2
  %3559 = extractvalue %dx.types.CBufRet.f32 %3555, 3
  %3560 = fsub fast float %3556, %3530
  %3561 = fsub fast float %3557, %3531
  %3562 = fsub fast float %3558, %3532
  %3563 = fsub fast float %3559, %3533
  %3564 = fmul fast float %3560, %3554
  %3565 = fmul fast float %3561, %3554
  %3566 = fmul fast float %3562, %3554
  %3567 = fmul fast float %3563, %3554
  %3568 = fadd fast float %3564, %3530
  %3569 = fadd fast float %3565, %3531
  %3570 = fadd fast float %3566, %3532
  %3571 = fadd fast float %3567, %3533
  %3572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3573 = extractvalue %dx.types.CBufRet.f32 %3572, 0
  %3574 = extractvalue %dx.types.CBufRet.f32 %3572, 1
  %3575 = fsub fast float %3573, %3536
  %3576 = fsub fast float %3574, %3537
  %3577 = fmul fast float %3575, %3554
  %3578 = fmul fast float %3576, %3554
  %3579 = fadd fast float %3577, %3536
  %3580 = fadd fast float %3578, %3537
  %3581 = extractvalue %dx.types.CBufRet.f32 %3572, 2
  %3582 = extractvalue %dx.types.CBufRet.f32 %3572, 3
  %3583 = fsub fast float %3581, %3540
  %3584 = fsub fast float %3582, %3541
  %3585 = fmul fast float %3583, %3554
  %3586 = fmul fast float %3584, %3554
  %3587 = fadd fast float %3585, %3540
  %3588 = fadd fast float %3586, %3541
  %3589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3590 = extractvalue %dx.types.CBufRet.f32 %3589, 0
  %3591 = fmul fast float %3590, %3568
  %3592 = fmul fast float %3590, %3569
  %3593 = fmul fast float %3590, %3570
  %3594 = fmul fast float %3590, %3571
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3597 = fmul fast float %3596, %3579
  %3598 = fmul fast float %3596, %3580
  %3599 = fadd fast float %3597, %3591
  %3600 = fadd fast float %3598, %3593
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = fmul fast float %3602, %3587
  %3604 = fmul fast float %3602, %3588
  %3605 = fadd fast float %3599, %3603
  %3606 = fadd fast float %3600, %3604
  %3607 = extractvalue %dx.types.CBufRet.f32 %3589, 1
  %3608 = fmul fast float %3607, %3568
  %3609 = fmul fast float %3607, %3569
  %3610 = fmul fast float %3607, %3570
  %3611 = fmul fast float %3607, %3571
  %3612 = extractvalue %dx.types.CBufRet.f32 %3595, 1
  %3613 = fmul fast float %3612, %3579
  %3614 = fmul fast float %3612, %3580
  %3615 = fadd fast float %3613, %3608
  %3616 = fadd fast float %3614, %3610
  %3617 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3618 = fmul fast float %3617, %3587
  %3619 = fmul fast float %3617, %3588
  %3620 = fadd fast float %3615, %3618
  %3621 = fadd fast float %3616, %3619
  %3622 = extractvalue %dx.types.CBufRet.f32 %3589, 2
  %3623 = fmul fast float %3622, %3568
  %3624 = fmul fast float %3622, %3569
  %3625 = fmul fast float %3622, %3570
  %3626 = fmul fast float %3622, %3571
  %3627 = extractvalue %dx.types.CBufRet.f32 %3595, 2
  %3628 = fmul fast float %3627, %3579
  %3629 = fmul fast float %3627, %3580
  %3630 = fadd fast float %3628, %3623
  %3631 = fadd fast float %3629, %3625
  %3632 = extractvalue %dx.types.CBufRet.f32 %3601, 2
  %3633 = fmul fast float %3632, %3587
  %3634 = fmul fast float %3632, %3588
  %3635 = fadd fast float %3630, %3633
  %3636 = fadd fast float %3631, %3634
  %3637 = fmul fast float %3624, %3624
  %3638 = fmul fast float %3636, %3636
  %3639 = fmul fast float %3626, %3626
  %3640 = fadd fast float %3639, %3637
  %3641 = fadd fast float %3640, %3638
  %3642 = call float @dx.op.unary.f32(i32 24, float %3641)  ; Sqrt(value)
  %3643 = fcmp fast ugt float %3642, 0.000000e+00
  br i1 %3643, label %3644, label %3659

; <label>:3644                                    ; preds = %3378
  %3645 = fsub fast float -0.000000e+00, %3626
  %3646 = fdiv fast float %3645, %3642
  %3647 = fsub fast float -0.000000e+00, %3624
  %3648 = fdiv fast float %3647, %3642
  %3649 = fdiv fast float %3636, %3642
  %3650 = fmul fast float %3635, 0x3FE279A760000000
  %3651 = fmul fast float %3648, %3624
  %3652 = fmul fast float %3649, %3636
  %3653 = fmul fast float %3646, %3626
  %3654 = fadd fast float %3651, %3653
  %3655 = fsub fast float %3654, %3652
  %3656 = call float @dx.op.unary.f32(i32 6, float %3655)  ; FAbs(value)
  %3657 = fadd fast float %3656, 0x3DDB7CDFE0000000
  %3658 = fdiv fast float %3650, %3657
  br label %3659

; <label>:3659                                    ; preds = %3644, %3378
  %3660 = phi float [ %3658, %3644 ], [ 1.000000e+00, %3378 ]
  %3661 = fmul fast float %3609, %3609
  %3662 = fmul fast float %3621, %3621
  %3663 = fmul fast float %3611, %3611
  %3664 = fadd fast float %3663, %3661
  %3665 = fadd fast float %3664, %3662
  %3666 = call float @dx.op.unary.f32(i32 24, float %3665)  ; Sqrt(value)
  %3667 = fcmp fast ugt float %3666, 0.000000e+00
  br i1 %3667, label %3668, label %3683

; <label>:3668                                    ; preds = %3659
  %3669 = fsub fast float -0.000000e+00, %3611
  %3670 = fdiv fast float %3669, %3666
  %3671 = fsub fast float -0.000000e+00, %3609
  %3672 = fdiv fast float %3671, %3666
  %3673 = fdiv fast float %3621, %3666
  %3674 = fmul fast float %3620, 0x3FE279A760000000
  %3675 = fmul fast float %3672, %3609
  %3676 = fmul fast float %3673, %3621
  %3677 = fmul fast float %3670, %3611
  %3678 = fadd fast float %3675, %3677
  %3679 = fsub fast float %3678, %3676
  %3680 = call float @dx.op.unary.f32(i32 6, float %3679)  ; FAbs(value)
  %3681 = fadd fast float %3680, 0x3DDB7CDFE0000000
  %3682 = fdiv fast float %3674, %3681
  br label %3683

; <label>:3683                                    ; preds = %3668, %3659
  %3684 = phi float [ %3682, %3668 ], [ 1.000000e+00, %3659 ]
  %3685 = call float @dx.op.binary.f32(i32 36, float %3684, float %3660)  ; FMin(a,b)
  %3686 = fmul fast float %3592, %3592
  %3687 = fmul fast float %3606, %3606
  %3688 = fmul fast float %3594, %3594
  %3689 = fadd fast float %3688, %3686
  %3690 = fadd fast float %3689, %3687
  %3691 = call float @dx.op.unary.f32(i32 24, float %3690)  ; Sqrt(value)
  %3692 = fcmp fast ugt float %3691, 0.000000e+00
  br i1 %3692, label %3693, label %3708

; <label>:3693                                    ; preds = %3683
  %3694 = fsub fast float -0.000000e+00, %3594
  %3695 = fdiv fast float %3694, %3691
  %3696 = fsub fast float -0.000000e+00, %3592
  %3697 = fdiv fast float %3696, %3691
  %3698 = fdiv fast float %3606, %3691
  %3699 = fmul fast float %3605, 0x3FE279A760000000
  %3700 = fmul fast float %3697, %3592
  %3701 = fmul fast float %3698, %3606
  %3702 = fmul fast float %3695, %3594
  %3703 = fadd fast float %3700, %3702
  %3704 = fsub fast float %3703, %3701
  %3705 = call float @dx.op.unary.f32(i32 6, float %3704)  ; FAbs(value)
  %3706 = fadd fast float %3705, 0x3DDB7CDFE0000000
  %3707 = fdiv fast float %3699, %3706
  br label %3708

; <label>:3708                                    ; preds = %3693, %3683
  %3709 = phi float [ %3707, %3693 ], [ 1.000000e+00, %3683 ]
  %3710 = call float @dx.op.binary.f32(i32 36, float %3709, float %3685)  ; FMin(a,b)
  %3711 = call float @dx.op.unary.f32(i32 7, float %3710)  ; Saturate(value)
  %3712 = fcmp fast olt float %3711, 1.000000e+00
  br i1 %3712, label %3713, label %3723

; <label>:3713                                    ; preds = %3708
  %3714 = fmul fast float %3711, %3592
  %3715 = fmul fast float %3711, %3606
  %3716 = fmul fast float %3711, %3594
  %3717 = fmul fast float %3711, %3609
  %3718 = fmul fast float %3711, %3621
  %3719 = fmul fast float %3711, %3611
  %3720 = fmul fast float %3711, %3624
  %3721 = fmul fast float %3711, %3636
  %3722 = fmul fast float %3711, %3626
  br label %3723

; <label>:3723                                    ; preds = %3713, %3708
  %3724 = phi float [ %3720, %3713 ], [ %3624, %3708 ]
  %3725 = phi float [ %3721, %3713 ], [ %3636, %3708 ]
  %3726 = phi float [ %3722, %3713 ], [ %3626, %3708 ]
  %3727 = phi float [ %3717, %3713 ], [ %3609, %3708 ]
  %3728 = phi float [ %3718, %3713 ], [ %3621, %3708 ]
  %3729 = phi float [ %3719, %3713 ], [ %3611, %3708 ]
  %3730 = phi float [ %3714, %3713 ], [ %3592, %3708 ]
  %3731 = phi float [ %3715, %3713 ], [ %3606, %3708 ]
  %3732 = phi float [ %3716, %3713 ], [ %3594, %3708 ]
  %3733 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3605)  ; FMax(a,b)
  %3734 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3620)  ; FMax(a,b)
  %3735 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3635)  ; FMax(a,b)
  %3736 = fcmp fast oge float %3393, 0.000000e+00
  %3737 = and i1 %3736, %3164
  %3738 = fcmp fast ole float %3393, 1.000000e+00
  %3739 = and i1 %3738, %3737
  %3740 = fcmp fast oge float %3394, 0.000000e+00
  %3741 = and i1 %3740, %3739
  %3742 = fcmp fast ole float %3394, 1.000000e+00
  %3743 = and i1 %3742, %3741
  br i1 %3743, label %3744, label %3889, !dx.controlflow.hints !106

; <label>:3744                                    ; preds = %3723
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 2
  %3747 = extractvalue %dx.types.CBufRet.f32 %3745, 3
  %3748 = fmul fast float %3746, %3393
  %3749 = fmul fast float %3747, %3394
  %3750 = call float @dx.op.unary.f32(i32 27, float %3748)  ; Round_ni(value)
  %3751 = call float @dx.op.unary.f32(i32 27, float %3749)  ; Round_ni(value)
  %3752 = fptosi float %3750 to i32
  %3753 = fptosi float %3751 to i32
  %3754 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %3752, i32 %3753, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = and i32 %3755, 65535
  %3757 = lshr i32 %3755, 16
  %3758 = icmp eq i32 %3756, 65535
  br i1 %3758, label %3795, label %3759

; <label>:3759                                    ; preds = %3744
  %3760 = extractvalue %dx.types.CBufRet.f32 %3162, 1
  %3761 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3762 = extractvalue %dx.types.CBufRet.f32 %3745, 1
  %3763 = fmul fast float %3761, %3393
  %3764 = fmul fast float %3762, %3394
  %3765 = fmul fast float %3763, 1.250000e-01
  %3766 = fmul fast float %3764, 1.250000e-01
  %3767 = call float @dx.op.unary.f32(i32 27, float %3765)  ; Round_ni(value)
  %3768 = call float @dx.op.unary.f32(i32 27, float %3766)  ; Round_ni(value)
  %3769 = fmul fast float %3767, 8.000000e+00
  %3770 = fmul fast float %3768, 8.000000e+00
  %3771 = and i32 %3755, 255
  %3772 = lshr i32 %3755, 8
  %3773 = and i32 %3772, 255
  %3774 = mul nuw nsw i32 %3771, 9
  %3775 = uitofp i32 %3774 to float
  %3776 = mul nuw nsw i32 %3773, 9
  %3777 = uitofp i32 %3776 to float
  %3778 = fadd fast float %3775, 5.000000e-01
  %3779 = fadd fast float %3778, %3763
  %3780 = fsub fast float %3779, %3769
  %3781 = fadd fast float %3777, 5.000000e-01
  %3782 = fadd fast float %3781, %3764
  %3783 = fsub fast float %3782, %3770
  %3784 = fdiv fast float %3780, %3163
  %3785 = fdiv fast float %3783, %3760
  %3786 = fmul fast float %3421, 4.375000e-01
  %3787 = fadd fast float %3786, 3.125000e-02
  %3788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3784, float %3785, float %3787, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3789 = extractvalue %dx.types.ResRet.f32 %3788, 0
  %3790 = extractvalue %dx.types.ResRet.f32 %3788, 1
  %3791 = extractvalue %dx.types.ResRet.f32 %3788, 2
  %3792 = fadd fast float %3789, %3733
  %3793 = fadd fast float %3790, %3734
  %3794 = fadd fast float %3791, %3735
  br label %3795

; <label>:3795                                    ; preds = %3759, %3744
  %3796 = phi float [ %3794, %3759 ], [ %3735, %3744 ]
  %3797 = phi float [ %3793, %3759 ], [ %3734, %3744 ]
  %3798 = phi float [ %3792, %3759 ], [ %3733, %3744 ]
  %3799 = icmp eq i32 %3757, 65535
  br i1 %3799, label %3889, label %3800

; <label>:3800                                    ; preds = %3795
  %3801 = extractvalue %dx.types.CBufRet.f32 %3162, 1
  %3802 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3803 = extractvalue %dx.types.CBufRet.f32 %3745, 1
  %3804 = fmul fast float %3802, %3393
  %3805 = fmul fast float %3803, %3394
  %3806 = fmul fast float %3804, 1.250000e-01
  %3807 = fmul fast float %3805, 1.250000e-01
  %3808 = call float @dx.op.unary.f32(i32 27, float %3806)  ; Round_ni(value)
  %3809 = call float @dx.op.unary.f32(i32 27, float %3807)  ; Round_ni(value)
  %3810 = fmul fast float %3808, 8.000000e+00
  %3811 = fmul fast float %3809, 8.000000e+00
  %3812 = fsub fast float %3804, %3810
  %3813 = fsub fast float %3805, %3811
  %3814 = fadd fast float %3812, 5.000000e-01
  %3815 = fadd fast float %3813, 5.000000e-01
  %3816 = and i32 %3757, 255
  %3817 = lshr i32 %3755, 24
  %3818 = mul nuw nsw i32 %3816, 9
  %3819 = uitofp i32 %3818 to float
  %3820 = mul nuw nsw i32 %3817, 9
  %3821 = uitofp i32 %3820 to float
  %3822 = fadd fast float %3814, %3819
  %3823 = fadd fast float %3815, %3821
  %3824 = fdiv fast float %3822, %3163
  %3825 = fdiv fast float %3823, %3801
  %3826 = fmul fast float %3421, 4.375000e-01
  %3827 = fadd fast float %3826, 3.125000e-02
  %3828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3824, float %3825, float %3827, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3832 = fadd fast float %3826, 5.312500e-01
  %3833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %3824, float %3825, float %3832, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = fmul fast float %3834, 2.000000e+00
  %3838 = fmul fast float %3835, 2.000000e+00
  %3839 = fmul fast float %3836, 2.000000e+00
  %3840 = fadd fast float %3837, -1.000000e+00
  %3841 = fadd fast float %3838, -1.000000e+00
  %3842 = fadd fast float %3839, -1.000000e+00
  %3843 = fmul fast float %3840, %3840
  %3844 = fmul fast float %3841, %3841
  %3845 = fadd fast float %3843, %3844
  %3846 = fmul fast float %3842, %3842
  %3847 = fadd fast float %3845, %3846
  %3848 = call float @dx.op.unary.f32(i32 24, float %3847)  ; Sqrt(value)
  %3849 = fcmp fast ogt float %3848, 0.000000e+00
  br i1 %3849, label %3850, label %3854

; <label>:3850                                    ; preds = %3800
  %3851 = fdiv fast float %3840, %3848
  %3852 = fdiv fast float %3841, %3848
  %3853 = fdiv fast float %3842, %3848
  br label %3854

; <label>:3854                                    ; preds = %3850, %3800
  %3855 = phi float [ %3851, %3850 ], [ 0.000000e+00, %3800 ]
  %3856 = phi float [ %3852, %3850 ], [ 0.000000e+00, %3800 ]
  %3857 = phi float [ %3853, %3850 ], [ 0.000000e+00, %3800 ]
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.CBufRet.f32 %3858, 1
  %3861 = fsub fast float %3014, %3859
  %3862 = fsub fast float %3015, %3860
  %3863 = fmul fast float %3861, %3861
  %3864 = fmul fast float %3862, %3862
  %3865 = fadd fast float %3863, %3864
  %3866 = call float @dx.op.unary.f32(i32 24, float %3865)  ; Sqrt(value)
  %3867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.CBufRet.f32 %3867, 1
  %3870 = fsub fast float %3866, %3868
  %3871 = fdiv fast float %3870, %3869
  %3872 = call float @dx.op.unary.f32(i32 7, float %3871)  ; Saturate(value)
  %3873 = fmul fast float %3872, 2.000000e+00
  %3874 = fsub fast float 3.000000e+00, %3873
  %3875 = fmul fast float %3872, %3872
  %3876 = fmul fast float %3875, %3874
  %3877 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3856, float %3857, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3877)  ; FMax(a,b)
  %3879 = fmul fast float %3878, 0x400C5BF8A0000000
  %3880 = fmul fast float %3876, %3829
  %3881 = fmul fast float %3880, %3879
  %3882 = fadd fast float %3881, %3798
  %3883 = fmul fast float %3876, %3830
  %3884 = fmul fast float %3883, %3879
  %3885 = fadd fast float %3884, %3797
  %3886 = fmul fast float %3876, %3831
  %3887 = fmul fast float %3886, %3879
  %3888 = fadd fast float %3887, %3796
  br label %3889

; <label>:3889                                    ; preds = %3854, %3795, %3723
  %3890 = phi float [ %3888, %3854 ], [ %3796, %3795 ], [ %3735, %3723 ]
  %3891 = phi float [ %3885, %3854 ], [ %3797, %3795 ], [ %3734, %3723 ]
  %3892 = phi float [ %3882, %3854 ], [ %3798, %3795 ], [ %3733, %3723 ]
  %3893 = fcmp fast ogt float %3380, %3417
  %3894 = and i1 %3736, %3893
  %3895 = and i1 %3738, %3894
  %3896 = and i1 %3740, %3895
  %3897 = and i1 %3742, %3896
  br i1 %3897, label %3898, label %3955, !dx.controlflow.hints !107

; <label>:3898                                    ; preds = %3889
  %3899 = fmul fast float %3419, 0x3FC24924A0000000
  %3900 = fsub fast float %3380, %3417
  %3901 = fdiv fast float %3900, %3899
  %3902 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3903, 0
  %3905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3906 = extractvalue %dx.types.CBufRet.f32 %3905, 0
  %3907 = extractvalue %dx.types.CBufRet.f32 %3905, 1
  %3908 = extractvalue %dx.types.CBufRet.f32 %3905, 2
  %3909 = fsub fast float %3904, %3892
  %3910 = fsub fast float %3906, %3730
  %3911 = fsub fast float %3907, %3731
  %3912 = fsub fast float %3908, %3732
  %3913 = fmul fast float %3909, %3902
  %3914 = fmul fast float %3910, %3902
  %3915 = fmul fast float %3911, %3902
  %3916 = fmul fast float %3912, %3902
  %3917 = fadd fast float %3913, %3892
  %3918 = fadd fast float %3914, %3730
  %3919 = fadd fast float %3915, %3731
  %3920 = fadd fast float %3916, %3732
  %3921 = extractvalue %dx.types.CBufRet.f32 %3903, 1
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.CBufRet.f32 %3922, 2
  %3926 = fsub fast float %3921, %3891
  %3927 = fsub fast float %3923, %3727
  %3928 = fsub fast float %3924, %3728
  %3929 = fsub fast float %3925, %3729
  %3930 = fmul fast float %3926, %3902
  %3931 = fmul fast float %3927, %3902
  %3932 = fmul fast float %3928, %3902
  %3933 = fmul fast float %3929, %3902
  %3934 = fadd fast float %3930, %3891
  %3935 = fadd fast float %3931, %3727
  %3936 = fadd fast float %3932, %3728
  %3937 = fadd fast float %3933, %3729
  %3938 = extractvalue %dx.types.CBufRet.f32 %3903, 2
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.CBufRet.f32 %3939, 1
  %3942 = extractvalue %dx.types.CBufRet.f32 %3939, 2
  %3943 = fsub fast float %3938, %3890
  %3944 = fsub fast float %3940, %3724
  %3945 = fsub fast float %3941, %3725
  %3946 = fsub fast float %3942, %3726
  %3947 = fmul fast float %3943, %3902
  %3948 = fmul fast float %3944, %3902
  %3949 = fmul fast float %3945, %3902
  %3950 = fmul fast float %3946, %3902
  %3951 = fadd fast float %3947, %3890
  %3952 = fadd fast float %3948, %3724
  %3953 = fadd fast float %3949, %3725
  %3954 = fadd fast float %3950, %3726
  br label %3955

; <label>:3955                                    ; preds = %3898, %3889
  %3956 = phi float [ %3951, %3898 ], [ %3890, %3889 ]
  %3957 = phi float [ %3952, %3898 ], [ %3724, %3889 ]
  %3958 = phi float [ %3953, %3898 ], [ %3725, %3889 ]
  %3959 = phi float [ %3954, %3898 ], [ %3726, %3889 ]
  %3960 = phi float [ %3934, %3898 ], [ %3891, %3889 ]
  %3961 = phi float [ %3935, %3898 ], [ %3727, %3889 ]
  %3962 = phi float [ %3936, %3898 ], [ %3728, %3889 ]
  %3963 = phi float [ %3937, %3898 ], [ %3729, %3889 ]
  %3964 = phi float [ %3917, %3898 ], [ %3892, %3889 ]
  %3965 = phi float [ %3918, %3898 ], [ %3730, %3889 ]
  %3966 = phi float [ %3919, %3898 ], [ %3731, %3889 ]
  %3967 = phi float [ %3920, %3898 ], [ %3732, %3889 ]
  %3968 = extractvalue %dx.types.CBufRet.f32 %3542, 3
  %3969 = fmul fast float %3968, %3964
  %3970 = fmul fast float %3968, %3960
  %3971 = fmul fast float %3968, %3956
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 3
  %3974 = fmul fast float %3969, %3973
  %3975 = fmul fast float %3970, %3973
  %3976 = fmul fast float %3971, %3973
  %3977 = fmul fast float %3965, 1.500000e+00
  %3978 = fmul fast float %3977, %3968
  %3979 = fmul fast float %3978, %3973
  %3980 = fmul fast float %3966, 1.500000e+00
  %3981 = fmul fast float %3980, %3968
  %3982 = fmul fast float %3981, %3973
  %3983 = fmul fast float %3967, 1.500000e+00
  %3984 = fmul fast float %3983, %3968
  %3985 = fmul fast float %3984, %3973
  %3986 = fmul fast float %3961, 1.500000e+00
  %3987 = fmul fast float %3986, %3968
  %3988 = fmul fast float %3987, %3973
  %3989 = fmul fast float %3962, 1.500000e+00
  %3990 = fmul fast float %3989, %3968
  %3991 = fmul fast float %3990, %3973
  %3992 = fmul fast float %3963, 1.500000e+00
  %3993 = fmul fast float %3992, %3968
  %3994 = fmul fast float %3993, %3973
  %3995 = fmul fast float %3957, 1.500000e+00
  %3996 = fmul fast float %3995, %3968
  %3997 = fmul fast float %3996, %3973
  %3998 = fmul fast float %3958, 1.500000e+00
  %3999 = fmul fast float %3998, %3968
  %4000 = fmul fast float %3999, %3973
  %4001 = fmul fast float %3959, 1.500000e+00
  %4002 = fmul fast float %4001, %3968
  %4003 = fmul fast float %4002, %3973
  %4004 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3974)  ; FMax(a,b)
  %4005 = call float @dx.op.dot3.f32(i32 55, float %3979, float %3982, float %3985, float %3979, float %3982, float %3985)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = fcmp fast oeq float %4005, 0.000000e+00
  %4007 = fcmp fast oeq float %4004, 0.000000e+00
  %4008 = or i1 %4007, %4006
  br i1 %4008, label %4038, label %4009

; <label>:4009                                    ; preds = %3955
  %4010 = fsub fast float -0.000000e+00, %3985
  %4011 = fsub fast float -0.000000e+00, %3979
  %4012 = call float @dx.op.unary.f32(i32 24, float %4005)  ; Sqrt(value)
  %4013 = fdiv fast float %4012, %4004
  %4014 = fcmp fast ogt float %4013, 0x3FFB6F8900000000
  %4015 = select i1 %4014, float 0x3FFB6F8900000000, float %4013
  %4016 = fmul fast float %4015, 0x3FE8A23460000000
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = call float @dx.op.binary.f32(i32 35, float %4015, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4019 = fmul fast float %4017, %4004
  %4020 = fmul fast float %4018, 0x3FF279A740000000
  %4021 = fadd fast float %4020, -1.000000e+00
  %4022 = call float @dx.op.dot3.f32(i32 55, float %4010, float %4011, float %3982, float %4010, float %4011, float %3982)  ; Dot3(ax,ay,az,bx,by,bz)
  %4023 = call float @dx.op.unary.f32(i32 25, float %4022)  ; Rsqrt(value)
  %4024 = fmul fast float %4023, %4010
  %4025 = fmul fast float %4023, %4011
  %4026 = fmul fast float %4023, %3982
  %4027 = fmul fast float %4021, %4021
  %4028 = fsub fast float 1.000000e+00, %4027
  %4029 = fmul fast float %4018, 0x40005F8BE0000000
  %4030 = fsub fast float 0x400C5BF8A0000000, %4029
  %4031 = fdiv fast float %4019, %4030
  %4032 = fmul fast float %4031, 0x3FEE31C3C0000000
  %4033 = fmul fast float %4032, %4028
  %4034 = fmul fast float %4018, 0x3FDACB7480000000
  %4035 = fadd fast float %4034, 0xBFD7347680000000
  %4036 = fmul fast float %4035, %4031
  %4037 = fmul fast float %4036, %4028
  br label %4038

; <label>:4038                                    ; preds = %4009, %3955
  %4039 = phi float [ %4024, %4009 ], [ 0.000000e+00, %3955 ]
  %4040 = phi float [ %4025, %4009 ], [ 0.000000e+00, %3955 ]
  %4041 = phi float [ %4026, %4009 ], [ 0.000000e+00, %3955 ]
  %4042 = phi float [ %4033, %4009 ], [ 0.000000e+00, %3955 ]
  %4043 = phi float [ %4037, %4009 ], [ 0.000000e+00, %3955 ]
  %4044 = call float @dx.op.dot3.f32(i32 55, float %4039, float %4040, float %4041, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %4045 = fmul fast float %4044, %4044
  %4046 = fmul fast float %4045, 0x3FEE471020000000
  %4047 = fadd fast float %4046, 0xBFD42F6020000000
  %4048 = fmul fast float %4004, 0x3FD20DD760000000
  %4049 = fmul fast float %4047, %4043
  %4050 = fmul fast float %4042, 0x3FDF454380000000
  %4051 = fmul fast float %4050, %4044
  %4052 = fadd fast float %4051, %4048
  %4053 = fadd fast float %4052, %4049
  %4054 = call float @dx.op.dot3.f32(i32 55, float %4039, float %4040, float %4041, float %3004, float %3005, float %3006)  ; Dot3(ax,ay,az,bx,by,bz)
  %4055 = fmul fast float %4054, 0x3FDF454380000000
  %4056 = fmul fast float %4054, %4054
  %4057 = fmul fast float %4056, 0x3FEE471020000000
  %4058 = fadd fast float %4057, 0xBFD42F6020000000
  %4059 = call float @dx.op.dot3.f32(i32 55, float %4004, float %4042, float %4043, float 0x3FD20DD760000000, float %4055, float %4058)  ; Dot3(ax,ay,az,bx,by,bz)
  %4060 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3975)  ; FMax(a,b)
  %4061 = call float @dx.op.dot3.f32(i32 55, float %3988, float %3991, float %3994, float %3988, float %3991, float %3994)  ; Dot3(ax,ay,az,bx,by,bz)
  %4062 = fcmp fast oeq float %4061, 0.000000e+00
  %4063 = fcmp fast oeq float %4060, 0.000000e+00
  %4064 = or i1 %4063, %4062
  br i1 %4064, label %4094, label %4065

; <label>:4065                                    ; preds = %4038
  %4066 = fsub fast float -0.000000e+00, %3994
  %4067 = fsub fast float -0.000000e+00, %3988
  %4068 = call float @dx.op.unary.f32(i32 24, float %4061)  ; Sqrt(value)
  %4069 = fdiv fast float %4068, %4060
  %4070 = fcmp fast ogt float %4069, 0x3FFB6F8900000000
  %4071 = select i1 %4070, float 0x3FFB6F8900000000, float %4069
  %4072 = fmul fast float %4071, 0x3FE8A23460000000
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = call float @dx.op.binary.f32(i32 35, float %4071, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4075 = fmul fast float %4073, %4060
  %4076 = fmul fast float %4074, 0x3FF279A740000000
  %4077 = fadd fast float %4076, -1.000000e+00
  %4078 = call float @dx.op.dot3.f32(i32 55, float %4066, float %4067, float %3991, float %4066, float %4067, float %3991)  ; Dot3(ax,ay,az,bx,by,bz)
  %4079 = call float @dx.op.unary.f32(i32 25, float %4078)  ; Rsqrt(value)
  %4080 = fmul fast float %4079, %4066
  %4081 = fmul fast float %4079, %4067
  %4082 = fmul fast float %4079, %3991
  %4083 = fmul fast float %4077, %4077
  %4084 = fsub fast float 1.000000e+00, %4083
  %4085 = fmul fast float %4074, 0x40005F8BE0000000
  %4086 = fsub fast float 0x400C5BF8A0000000, %4085
  %4087 = fdiv fast float %4075, %4086
  %4088 = fmul fast float %4087, 0x3FEE31C3C0000000
  %4089 = fmul fast float %4088, %4084
  %4090 = fmul fast float %4074, 0x3FDACB7480000000
  %4091 = fadd fast float %4090, 0xBFD7347680000000
  %4092 = fmul fast float %4091, %4087
  %4093 = fmul fast float %4092, %4084
  br label %4094

; <label>:4094                                    ; preds = %4065, %4038
  %4095 = phi float [ %4080, %4065 ], [ 0.000000e+00, %4038 ]
  %4096 = phi float [ %4081, %4065 ], [ 0.000000e+00, %4038 ]
  %4097 = phi float [ %4082, %4065 ], [ 0.000000e+00, %4038 ]
  %4098 = phi float [ %4089, %4065 ], [ 0.000000e+00, %4038 ]
  %4099 = phi float [ %4093, %4065 ], [ 0.000000e+00, %4038 ]
  %4100 = call float @dx.op.dot3.f32(i32 55, float %4095, float %4096, float %4097, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %4101 = fmul fast float %4100, %4100
  %4102 = fmul fast float %4101, 0x3FEE471020000000
  %4103 = fadd fast float %4102, 0xBFD42F6020000000
  %4104 = fmul fast float %4060, 0x3FD20DD760000000
  %4105 = fmul fast float %4103, %4099
  %4106 = fmul fast float %4098, 0x3FDF454380000000
  %4107 = fmul fast float %4106, %4100
  %4108 = fadd fast float %4107, %4104
  %4109 = fadd fast float %4108, %4105
  %4110 = call float @dx.op.dot3.f32(i32 55, float %4095, float %4096, float %4097, float %3004, float %3005, float %3006)  ; Dot3(ax,ay,az,bx,by,bz)
  %4111 = fmul fast float %4110, 0x3FDF454380000000
  %4112 = fmul fast float %4110, %4110
  %4113 = fmul fast float %4112, 0x3FEE471020000000
  %4114 = fadd fast float %4113, 0xBFD42F6020000000
  %4115 = call float @dx.op.dot3.f32(i32 55, float %4060, float %4098, float %4099, float 0x3FD20DD760000000, float %4111, float %4114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3976)  ; FMax(a,b)
  %4117 = call float @dx.op.dot3.f32(i32 55, float %3997, float %4000, float %4003, float %3997, float %4000, float %4003)  ; Dot3(ax,ay,az,bx,by,bz)
  %4118 = fcmp fast oeq float %4117, 0.000000e+00
  %4119 = fcmp fast oeq float %4116, 0.000000e+00
  %4120 = or i1 %4119, %4118
  br i1 %4120, label %4150, label %4121

; <label>:4121                                    ; preds = %4094
  %4122 = fsub fast float -0.000000e+00, %4003
  %4123 = fsub fast float -0.000000e+00, %3997
  %4124 = call float @dx.op.unary.f32(i32 24, float %4117)  ; Sqrt(value)
  %4125 = fdiv fast float %4124, %4116
  %4126 = fcmp fast ogt float %4125, 0x3FFB6F8900000000
  %4127 = select i1 %4126, float 0x3FFB6F8900000000, float %4125
  %4128 = fmul fast float %4127, 0x3FE8A23460000000
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = call float @dx.op.binary.f32(i32 35, float %4127, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4131 = fmul fast float %4129, %4116
  %4132 = fmul fast float %4130, 0x3FF279A740000000
  %4133 = fadd fast float %4132, -1.000000e+00
  %4134 = call float @dx.op.dot3.f32(i32 55, float %4122, float %4123, float %4000, float %4122, float %4123, float %4000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4135 = call float @dx.op.unary.f32(i32 25, float %4134)  ; Rsqrt(value)
  %4136 = fmul fast float %4135, %4122
  %4137 = fmul fast float %4135, %4123
  %4138 = fmul fast float %4135, %4000
  %4139 = fmul fast float %4133, %4133
  %4140 = fsub fast float 1.000000e+00, %4139
  %4141 = fmul fast float %4130, 0x40005F8BE0000000
  %4142 = fsub fast float 0x400C5BF8A0000000, %4141
  %4143 = fdiv fast float %4131, %4142
  %4144 = fmul fast float %4143, 0x3FEE31C3C0000000
  %4145 = fmul fast float %4144, %4140
  %4146 = fmul fast float %4130, 0x3FDACB7480000000
  %4147 = fadd fast float %4146, 0xBFD7347680000000
  %4148 = fmul fast float %4147, %4143
  %4149 = fmul fast float %4148, %4140
  br label %4150

; <label>:4150                                    ; preds = %4121, %4094
  %4151 = phi float [ %4136, %4121 ], [ 0.000000e+00, %4094 ]
  %4152 = phi float [ %4137, %4121 ], [ 0.000000e+00, %4094 ]
  %4153 = phi float [ %4138, %4121 ], [ 0.000000e+00, %4094 ]
  %4154 = phi float [ %4145, %4121 ], [ 0.000000e+00, %4094 ]
  %4155 = phi float [ %4149, %4121 ], [ 0.000000e+00, %4094 ]
  %4156 = call float @dx.op.dot3.f32(i32 55, float %4151, float %4152, float %4153, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %4157 = fmul fast float %4156, %4156
  %4158 = fmul fast float %4157, 0x3FEE471020000000
  %4159 = fadd fast float %4158, 0xBFD42F6020000000
  %4160 = fmul fast float %4116, 0x3FD20DD760000000
  %4161 = fmul fast float %4159, %4155
  %4162 = fmul fast float %4154, 0x3FDF454380000000
  %4163 = fmul fast float %4162, %4156
  %4164 = fadd fast float %4163, %4160
  %4165 = fadd fast float %4164, %4161
  %4166 = call float @dx.op.dot3.f32(i32 55, float %4151, float %4152, float %4153, float %3004, float %3005, float %3006)  ; Dot3(ax,ay,az,bx,by,bz)
  %4167 = fmul fast float %4166, 0x3FDF454380000000
  %4168 = fmul fast float %4166, %4166
  %4169 = fmul fast float %4168, 0x3FEE471020000000
  %4170 = fadd fast float %4169, 0xBFD42F6020000000
  %4171 = call float @dx.op.dot3.f32(i32 55, float %4116, float %4154, float %4155, float 0x3FD20DD760000000, float %4167, float %4170)  ; Dot3(ax,ay,az,bx,by,bz)
  %4172 = call float @dx.op.binary.f32(i32 35, float %4053, float 0.000000e+00)  ; FMax(a,b)
  %4173 = call float @dx.op.binary.f32(i32 35, float %4109, float 0.000000e+00)  ; FMax(a,b)
  %4174 = call float @dx.op.binary.f32(i32 35, float %4165, float 0.000000e+00)  ; FMax(a,b)
  %4175 = call float @dx.op.binary.f32(i32 35, float %4059, float 0.000000e+00)  ; FMax(a,b)
  %4176 = call float @dx.op.binary.f32(i32 35, float %4115, float 0.000000e+00)  ; FMax(a,b)
  %4177 = call float @dx.op.binary.f32(i32 35, float %4171, float 0.000000e+00)  ; FMax(a,b)
  %4178 = fsub fast float %3374, %4172
  %4179 = fsub fast float %3375, %4173
  %4180 = fsub fast float %3376, %4174
  %4181 = fmul fast float %4178, %3055
  %4182 = fmul fast float %4179, %3055
  %4183 = fmul fast float %4180, %3055
  %4184 = fadd fast float %4181, %4172
  %4185 = fadd fast float %4182, %4173
  %4186 = fadd fast float %4183, %4174
  %4187 = fsub fast float %3371, %4175
  %4188 = fsub fast float %3372, %4176
  %4189 = fsub fast float %3373, %4177
  %4190 = fmul fast float %4187, %3055
  %4191 = fmul fast float %4188, %3055
  %4192 = fmul fast float %4189, %3055
  %4193 = fadd fast float %4190, %4175
  %4194 = fadd fast float %4191, %4176
  %4195 = fadd fast float %4192, %4177
  br label %4196

; <label>:4196                                    ; preds = %4150, %3370
  %4197 = phi float [ %4193, %4150 ], [ %3371, %3370 ]
  %4198 = phi float [ %4194, %4150 ], [ %3372, %3370 ]
  %4199 = phi float [ %4195, %4150 ], [ %3373, %3370 ]
  %4200 = phi float [ %4184, %4150 ], [ %3374, %3370 ]
  %4201 = phi float [ %4185, %4150 ], [ %3375, %3370 ]
  %4202 = phi float [ %4186, %4150 ], [ %3376, %3370 ]
  %4203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4204 = extractvalue %dx.types.CBufRet.f32 %4203, 0
  %4205 = call float @dx.op.binary.f32(i32 36, float %2984, float %4204)  ; FMin(a,b)
  %4206 = fsub fast float 1.000000e+00, %3007
  %4207 = fmul fast float %4205, %4206
  %4208 = fsub fast float 1.000000e+00, %4207
  %4209 = bitcast float %4208 to i32
  %4210 = sub nsw i32 2129859010, %4209
  %4211 = bitcast i32 %4210 to float
  %4212 = call float @dx.op.binary.f32(i32 36, float %2985, float %4204)  ; FMin(a,b)
  %4213 = fmul fast float %4212, %4206
  %4214 = fsub fast float 1.000000e+00, %4213
  %4215 = bitcast float %4214 to i32
  %4216 = sub nsw i32 2129859010, %4215
  %4217 = bitcast i32 %4216 to float
  %4218 = call float @dx.op.binary.f32(i32 36, float %2986, float %4204)  ; FMin(a,b)
  %4219 = fmul fast float %4218, %4206
  %4220 = fsub fast float 1.000000e+00, %4219
  %4221 = bitcast float %4220 to i32
  %4222 = sub nsw i32 2129859010, %4221
  %4223 = bitcast i32 %4222 to float
  %4224 = fmul fast float %4200, %3007
  %4225 = fmul fast float %4224, %4211
  %4226 = fmul fast float %4201, %3007
  %4227 = fmul fast float %4226, %4217
  %4228 = fmul fast float %4202, %3007
  %4229 = fmul fast float %4228, %4223
  %4230 = call float @dx.op.binary.f32(i32 36, float %2987, float %4204)  ; FMin(a,b)
  %4231 = fmul fast float %4230, %4206
  %4232 = fsub fast float 1.000000e+00, %4231
  %4233 = bitcast float %4232 to i32
  %4234 = sub nsw i32 2129859010, %4233
  %4235 = bitcast i32 %4234 to float
  %4236 = call float @dx.op.binary.f32(i32 36, float %2988, float %4204)  ; FMin(a,b)
  %4237 = fmul fast float %4236, %4206
  %4238 = fsub fast float 1.000000e+00, %4237
  %4239 = bitcast float %4238 to i32
  %4240 = sub nsw i32 2129859010, %4239
  %4241 = bitcast i32 %4240 to float
  %4242 = call float @dx.op.binary.f32(i32 36, float %2996, float %4204)  ; FMin(a,b)
  %4243 = fmul fast float %4242, %4206
  %4244 = fsub fast float 1.000000e+00, %4243
  %4245 = bitcast float %4244 to i32
  %4246 = sub nsw i32 2129859010, %4245
  %4247 = bitcast i32 %4246 to float
  %4248 = fmul fast float %4197, %3007
  %4249 = fmul fast float %4248, %4235
  %4250 = fmul fast float %4198, %3007
  %4251 = fmul fast float %4250, %4241
  %4252 = fmul fast float %4199, %3007
  %4253 = fmul fast float %4252, %4247
  %4254 = call float @dx.op.dot3.f32(i32 55, float %4225, float %4227, float %4229, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4255 = select i1 %236, float 0.000000e+00, float %4225
  %4256 = select i1 %236, float %4254, float %4227
  %4257 = select i1 %236, float 0.000000e+00, float %4229
  %4258 = call float @dx.op.dot3.f32(i32 55, float %4249, float %4251, float %4253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4259 = select i1 %236, float 0.000000e+00, float %4249
  %4260 = select i1 %236, float %4258, float %4251
  %4261 = select i1 %236, float 0.000000e+00, float %4253
  %4262 = fmul fast float %2998, 9.843750e-01
  %4263 = fmul fast float %2993, 9.843750e-01
  %4264 = fadd fast float %4262, 7.812500e-03
  %4265 = fadd fast float %4263, 7.812500e-03
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4264, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 2
  %4268 = extractvalue %dx.types.ResRet.f32 %4266, 3
  %4269 = fmul fast float %4267, %2987
  %4270 = fmul fast float %4267, %2988
  %4271 = fmul fast float %4267, %2996
  %4272 = fadd fast float %4269, %4268
  %4273 = fadd fast float %4270, %4268
  %4274 = fadd fast float %4271, %4268
  %4275 = fcmp fast ogt float %2361, 0.000000e+00
  br i1 %4275, label %4276, label %4302

; <label>:4276                                    ; preds = %4196
  %4277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2361, float %2998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = extractvalue %dx.types.ResRet.f32 %4277, 1
  %4280 = extractvalue %dx.types.ResRet.f32 %4277, 2
  %4281 = fadd fast float %4278, -5.000000e-01
  %4282 = fadd fast float %4279, -5.000000e-01
  %4283 = fadd fast float %4280, -5.000000e-01
  %4284 = fsub fast float 1.000000e+00, %2987
  %4285 = fsub fast float 1.000000e+00, %2988
  %4286 = fsub fast float 1.000000e+00, %2996
  %4287 = fmul fast float %2987, 4.000000e+00
  %4288 = fmul fast float %4287, %4284
  %4289 = fmul fast float %4288, %4281
  %4290 = fmul fast float %2988, 4.000000e+00
  %4291 = fmul fast float %4290, %4285
  %4292 = fmul fast float %4291, %4282
  %4293 = fmul fast float %2996, 4.000000e+00
  %4294 = fmul fast float %4293, %4286
  %4295 = fmul fast float %4294, %4283
  %4296 = fadd fast float %4289, %4272
  %4297 = fadd fast float %4292, %4273
  %4298 = fadd fast float %4295, %4274
  %4299 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4300 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4301 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  br label %4302

; <label>:4302                                    ; preds = %4276, %4196
  %4303 = phi float [ %4299, %4276 ], [ %4272, %4196 ]
  %4304 = phi float [ %4300, %4276 ], [ %4273, %4196 ]
  %4305 = phi float [ %4301, %4276 ], [ %4274, %4196 ]
  %4306 = call float @dx.op.binary.f32(i32 35, float %4304, float %4305)  ; FMax(a,b)
  %4307 = call float @dx.op.binary.f32(i32 35, float %4303, float %4306)  ; FMax(a,b)
  %4308 = fsub fast float 1.000000e+00, %4307
  %4309 = fmul fast float %4308, %4255
  %4310 = fmul fast float %4308, %4256
  %4311 = fmul fast float %4308, %4257
  %4312 = call float @dx.op.dot3.f32(i32 55, float %2984, float %2985, float %2986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4313 = fcmp fast ogt float %4312, 0x3E7FF19E20000000
  %4314 = fdiv fast float 1.000000e+00, %4312
  %4315 = select i1 %4313, float %4314, float 0.000000e+00
  %4316 = fmul fast float %4315, %2984
  %4317 = fmul fast float %4315, %2985
  %4318 = fmul fast float %4315, %2986
  %4319 = fadd fast float %4316, -1.000000e+00
  %4320 = fadd fast float %4317, -1.000000e+00
  %4321 = fadd fast float %4318, -1.000000e+00
  %4322 = fmul fast float %4319, 5.000000e-01
  %4323 = fmul fast float %4320, 5.000000e-01
  %4324 = fmul fast float %4321, 5.000000e-01
  %4325 = fadd fast float %4322, 1.000000e+00
  %4326 = fadd fast float %4323, 1.000000e+00
  %4327 = fadd fast float %4324, 1.000000e+00
  %4328 = fmul fast float %4303, %4259
  %4329 = fmul fast float %4304, %4260
  %4330 = fmul fast float %4305, %4261
  %4331 = fsub fast float 1.000000e+00, %2998
  %4332 = bitcast float %4331 to i32
  %4333 = sitofp i32 %4332 to float
  %4334 = fmul fast float %4333, 5.000000e+00
  %4335 = fadd fast float %4334, 0xC1EFBF8940000000
  %4336 = fptosi float %4335 to i32
  %4337 = bitcast i32 %4336 to float
  %4338 = fmul fast float %4337, %2360
  %4339 = fmul fast float %4255, %4338
  %4340 = fmul fast float %4339, %4308
  %4341 = fmul fast float %4340, %4325
  %4342 = fmul fast float %4256, %4338
  %4343 = fmul fast float %4342, %4308
  %4344 = fmul fast float %4343, %4326
  %4345 = fmul fast float %4257, %4338
  %4346 = fmul fast float %4345, %4308
  %4347 = fmul fast float %4346, %4327
  %4348 = fmul fast float %4309, %2381
  %4349 = fmul fast float %4310, %2381
  %4350 = fmul fast float %4311, %2381
  %4351 = fadd fast float %4328, %2362
  %4352 = fadd fast float %4351, %4341
  %4353 = fmul fast float %4352, %2381
  %4354 = fadd fast float %4329, %2363
  %4355 = fadd fast float %4354, %4344
  %4356 = fmul fast float %4355, %2381
  %4357 = fadd fast float %4330, %2364
  %4358 = fadd fast float %4357, %4347
  %4359 = fmul fast float %4358, %2381
  %4360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4360, 3
  %4362 = fcmp fast oeq float %4361, 0.000000e+00
  br i1 %4362, label %5427, label %4363

; <label>:4363                                    ; preds = %4302
  %4364 = extractvalue %dx.types.CBufRet.f32 %4360, 0
  %4365 = extractvalue %dx.types.CBufRet.f32 %4360, 1
  %4366 = extractvalue %dx.types.CBufRet.f32 %4360, 2
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 0
  %4369 = extractvalue %dx.types.CBufRet.f32 %4367, 1
  %4370 = extractvalue %dx.types.CBufRet.f32 %4367, 2
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.CBufRet.f32 %4371, 1
  %4374 = call float @dx.op.dot3.f32(i32 55, float %4368, float %4369, float %4370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4375 = select i1 %236, float %4372, float %4368
  %4376 = select i1 %236, float %4374, float %4369
  %4377 = select i1 %236, float %4373, float %4370
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 2
  %4380 = fmul fast float %4379, %74
  %4381 = fmul fast float %4379, %75
  %4382 = fmul fast float %4379, %76
  %4383 = fadd fast float %4380, %145
  %4384 = fadd fast float %4381, %146
  %4385 = fadd fast float %4382, %147
  %4386 = fcmp fast olt float %4361, 0.000000e+00
  br i1 %4386, label %5008, label %4387

; <label>:4387                                    ; preds = %4363
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.CBufRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.CBufRet.f32 %4388, 2
  %4392 = extractvalue %dx.types.CBufRet.f32 %4388, 3
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.CBufRet.f32 %4393, 1
  %4396 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4397 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 0
  %4400 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4401 = extractvalue %dx.types.CBufRet.f32 %4398, 2
  %4402 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4403 = fmul fast float %4389, %4383
  %4404 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4390, float %4403)  ; FMad(a,b,c)
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4391, float %4404)  ; FMad(a,b,c)
  %4406 = fadd fast float %4405, %4392
  %4407 = fmul fast float %4394, %4383
  %4408 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4395, float %4407)  ; FMad(a,b,c)
  %4409 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4396, float %4408)  ; FMad(a,b,c)
  %4410 = fadd fast float %4409, %4397
  %4411 = fmul fast float %4399, %4383
  %4412 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4400, float %4411)  ; FMad(a,b,c)
  %4413 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4401, float %4412)  ; FMad(a,b,c)
  %4414 = fadd fast float %4413, %4402
  %4415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.f32 %4415, 0
  %4417 = extractvalue %dx.types.CBufRet.f32 %4415, 1
  %4418 = extractvalue %dx.types.CBufRet.f32 %4415, 3
  %4419 = fmul fast float %4418, %4406
  %4420 = fmul fast float %4418, %4410
  %4421 = fadd fast float %4419, %4416
  %4422 = fadd fast float %4420, %4417
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.CBufRet.f32 %4423, 1
  %4426 = extractvalue %dx.types.CBufRet.f32 %4423, 3
  %4427 = fmul fast float %4426, %4406
  %4428 = fmul fast float %4426, %4410
  %4429 = fadd fast float %4427, %4424
  %4430 = fadd fast float %4428, %4425
  %4431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.f32 %4431, 1
  %4433 = fsub fast float %4432, %4414
  %4434 = extractvalue %dx.types.CBufRet.f32 %4431, 2
  %4435 = fmul fast float %4433, %4434
  %4436 = fsub fast float 1.000000e+00, %4435
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4423, 2
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 2
  %4441 = fadd fast float %4440, %4438
  %4442 = fcmp fast ogt float %4441, 0.000000e+00
  br i1 %4442, label %4443, label %4467

; <label>:4443                                    ; preds = %4387
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 0
  %4446 = extractvalue %dx.types.CBufRet.f32 %4444, 1
  %4447 = fsub fast float %4429, %4445
  %4448 = fsub fast float %4430, %4446
  %4449 = fcmp fast olt float %4447, 0.000000e+00
  %4450 = fcmp fast olt float %4448, 0.000000e+00
  %4451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.CBufRet.f32 %4451, 1
  %4454 = extractvalue %dx.types.CBufRet.f32 %4451, 2
  %4455 = extractvalue %dx.types.CBufRet.f32 %4451, 3
  %4456 = select i1 %4449, float %4452, float %4454
  %4457 = select i1 %4450, float %4453, float %4455
  %4458 = fmul fast float %4456, %4447
  %4459 = fmul fast float %4457, %4448
  %4460 = call float @dx.op.unary.f32(i32 6, float %4458)  ; FAbs(value)
  %4461 = call float @dx.op.unary.f32(i32 6, float %4459)  ; FAbs(value)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4463 = call float @dx.op.binary.f32(i32 35, float %4460, float %4461)  ; FMax(a,b)
  %4464 = fsub fast float %4462, %4463
  %4465 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4466 = fmul fast float %4465, %4437
  br label %4467

; <label>:4467                                    ; preds = %4443, %4387
  %4468 = phi float [ %4466, %4443 ], [ 0.000000e+00, %4387 ]
  %4469 = extractvalue %dx.types.CBufRet.f32 %4415, 2
  %4470 = extractvalue %dx.types.CBufRet.f32 %4439, 1
  %4471 = fadd fast float %4470, %4469
  %4472 = fcmp fast ogt float %4471, 0.000000e+00
  %4473 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  br i1 %4472, label %4474, label %4497

; <label>:4474                                    ; preds = %4467
  %4475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.f32 %4475, 0
  %4477 = extractvalue %dx.types.CBufRet.f32 %4475, 1
  %4478 = fsub fast float %4421, %4476
  %4479 = fsub fast float %4422, %4477
  %4480 = fcmp fast olt float %4478, 0.000000e+00
  %4481 = fcmp fast olt float %4479, 0.000000e+00
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 0
  %4484 = extractvalue %dx.types.CBufRet.f32 %4482, 1
  %4485 = extractvalue %dx.types.CBufRet.f32 %4482, 2
  %4486 = extractvalue %dx.types.CBufRet.f32 %4482, 3
  %4487 = select i1 %4480, float %4483, float %4485
  %4488 = select i1 %4481, float %4484, float %4486
  %4489 = fmul fast float %4487, %4478
  %4490 = fmul fast float %4488, %4479
  %4491 = call float @dx.op.unary.f32(i32 6, float %4489)  ; FAbs(value)
  %4492 = call float @dx.op.unary.f32(i32 6, float %4490)  ; FAbs(value)
  %4493 = call float @dx.op.binary.f32(i32 35, float %4491, float %4492)  ; FMax(a,b)
  %4494 = fsub fast float %4473, %4493
  %4495 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4496 = fmul fast float %4495, %4437
  br label %4497

; <label>:4497                                    ; preds = %4474, %4467
  %4498 = phi float [ %4496, %4474 ], [ 0.000000e+00, %4467 ]
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 1
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4505 = fsub fast float %4406, %4503
  %4506 = fsub fast float %4410, %4504
  %4507 = fcmp fast olt float %4505, 0.000000e+00
  %4508 = fcmp fast olt float %4506, 0.000000e+00
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.CBufRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.CBufRet.f32 %4509, 2
  %4513 = extractvalue %dx.types.CBufRet.f32 %4509, 3
  %4514 = select i1 %4507, float %4510, float %4512
  %4515 = select i1 %4508, float %4511, float %4513
  %4516 = fmul fast float %4514, %4505
  %4517 = fmul fast float %4515, %4506
  %4518 = call float @dx.op.unary.f32(i32 6, float %4516)  ; FAbs(value)
  %4519 = call float @dx.op.unary.f32(i32 6, float %4517)  ; FAbs(value)
  %4520 = call float @dx.op.binary.f32(i32 35, float %4518, float %4519)  ; FMax(a,b)
  %4521 = fsub fast float %4473, %4520
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = call float @dx.op.binary.f32(i32 36, float %4522, float %4501)  ; FMin(a,b)
  %4524 = fmul fast float %4523, %4437
  %4525 = fsub fast float %4498, %4524
  %4526 = fsub fast float %4468, %4498
  %4527 = fsub fast float %4526, %4524
  %4528 = call float @dx.op.binary.f32(i32 35, float %4498, float %4468)  ; FMax(a,b)
  %4529 = call float @dx.op.binary.f32(i32 35, float %4524, float %4528)  ; FMax(a,b)
  %4530 = fcmp fast olt float %4529, 1.000000e+00
  br i1 %4530, label %4531, label %4929, !dx.controlflow.hints !108

; <label>:4531                                    ; preds = %4497
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = fcmp fast une float %4533, 0.000000e+00
  br i1 %4534, label %4535, label %4929, !dx.controlflow.hints !109

; <label>:4535                                    ; preds = %4531
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = extractvalue %dx.types.CBufRet.f32 %4536, 1
  %4539 = extractvalue %dx.types.CBufRet.f32 %4536, 2
  %4540 = extractvalue %dx.types.CBufRet.f32 %4536, 3
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 0
  %4543 = extractvalue %dx.types.CBufRet.f32 %4541, 1
  %4544 = extractvalue %dx.types.CBufRet.f32 %4541, 2
  %4545 = extractvalue %dx.types.CBufRet.f32 %4541, 3
  %4546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.f32 %4546, 0
  %4548 = extractvalue %dx.types.CBufRet.f32 %4546, 1
  %4549 = extractvalue %dx.types.CBufRet.f32 %4546, 2
  %4550 = extractvalue %dx.types.CBufRet.f32 %4546, 3
  %4551 = fmul fast float %4537, %4383
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4538, float %4551)  ; FMad(a,b,c)
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4539, float %4552)  ; FMad(a,b,c)
  %4554 = fadd fast float %4553, %4540
  %4555 = fmul fast float %4542, %4383
  %4556 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4543, float %4555)  ; FMad(a,b,c)
  %4557 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4544, float %4556)  ; FMad(a,b,c)
  %4558 = fadd fast float %4557, %4545
  %4559 = fmul fast float %4547, %4383
  %4560 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4548, float %4559)  ; FMad(a,b,c)
  %4561 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4549, float %4560)  ; FMad(a,b,c)
  %4562 = fadd fast float %4561, %4550
  %4563 = fcmp fast oge float %4554, 1.000000e+00
  %4564 = fcmp fast oge float %4558, 1.000000e+00
  %4565 = or i1 %4563, %4564
  %4566 = fcmp fast olt float %4554, 0.000000e+00
  %4567 = fcmp fast olt float %4558, 0.000000e+00
  %4568 = or i1 %4566, %4567
  %4569 = or i1 %4565, %4568
  br i1 %4569, label %4929, label %4570, !dx.controlflow.hints !110

; <label>:4570                                    ; preds = %4535
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.CBufRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.i32 %4575, 2
  %4577 = uitofp i32 %4576 to float
  %4578 = extractvalue %dx.types.CBufRet.i32 %4575, 3
  %4579 = uitofp i32 %4578 to float
  %4580 = extractvalue %dx.types.CBufRet.f32 %4571, 3
  %4581 = fmul fast float %4580, 2.000000e+00
  %4582 = fsub fast float %4554, %4572
  %4583 = fsub fast float %4558, %4573
  %4584 = fmul fast float %4581, %4582
  %4585 = fmul fast float %4581, %4583
  %4586 = fdiv fast float 1.000000e+00, %4366
  %4587 = fmul fast float %4585, %4586
  %4588 = call float @dx.op.unary.f32(i32 6, float %4587)  ; FAbs(value)
  %4589 = fmul fast float %4574, %4385
  %4590 = fmul fast float %4589, %4581
  %4591 = call float @dx.op.unary.f32(i32 6, float %4590)  ; FAbs(value)
  %4592 = call float @dx.op.unary.f32(i32 6, float %4584)  ; FAbs(value)
  %4593 = call float @dx.op.binary.f32(i32 35, float %4591, float %4588)  ; FMax(a,b)
  %4594 = call float @dx.op.binary.f32(i32 35, float %4592, float %4593)  ; FMax(a,b)
  %4595 = fmul fast float %4594, 2.000000e+00
  %4596 = call float @dx.op.unary.f32(i32 23, float %4595)  ; Log(value)
  %4597 = call float @dx.op.binary.f32(i32 35, float %4596, float %4577)  ; FMax(a,b)
  %4598 = call float @dx.op.unary.f32(i32 22, float %4597)  ; Frc(value)
  %4599 = fadd fast float %4598, 0xBFEA666660000000
  %4600 = fmul fast float %4599, 8.000000e+00
  %4601 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4602 = call float @dx.op.unary.f32(i32 27, float %4597)  ; Round_ni(value)
  %4603 = fadd fast float %4602, %4601
  %4604 = call float @dx.op.binary.f32(i32 36, float %4603, float %4579)  ; FMin(a,b)
  %4605 = call float @dx.op.unary.f32(i32 27, float %4604)  ; Round_ni(value)
  %4606 = fsub fast float -0.000000e+00, %4605
  %4607 = call float @dx.op.unary.f32(i32 21, float %4606)  ; Exp(value)
  %4608 = fmul fast float %4607, %4581
  %4609 = fmul fast float %4608, %4554
  %4610 = fmul fast float %4608, %4558
  %4611 = fmul fast float %4609, 2.500000e-01
  %4612 = fmul fast float %4610, 2.500000e-01
  %4613 = fadd fast float %4611, 5.000000e-01
  %4614 = fadd fast float %4612, 5.000000e-01
  %4615 = fsub fast float %4579, %4577
  %4616 = fptoui float %4615 to i32
  %4617 = add i32 %4616, 320
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %4617)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.CBufRet.f32 %4618, 1
  %4621 = fcmp fast une float %4604, %4579
  %4622 = fsub fast float %4554, %4619
  %4623 = fsub fast float %4558, %4620
  %4624 = call float @dx.op.unary.f32(i32 6, float %4622)  ; FAbs(value)
  %4625 = call float @dx.op.unary.f32(i32 6, float %4623)  ; FAbs(value)
  %4626 = fmul fast float %4624, %4608
  %4627 = fmul fast float %4625, %4608
  %4628 = fcmp fast olt float %4626, 1.000000e+00
  %4629 = fcmp fast olt float %4627, 1.000000e+00
  %4630 = and i1 %4628, %4629
  %4631 = or i1 %4621, %4630
  br i1 %4631, label %4632, label %4929, !dx.controlflow.hints !111

; <label>:4632                                    ; preds = %4570
  %4633 = fmul fast float %4610, 5.000000e-01
  %4634 = fmul fast float %4609, 5.000000e-01
  %4635 = fadd fast float %4633, 5.000000e-01
  %4636 = fadd fast float %4634, 5.000000e-01
  %4637 = sitofp i32 %4576 to float
  %4638 = fsub fast float %4604, %4637
  %4639 = call float @dx.op.unary.f32(i32 27, float %4638)  ; Round_ni(value)
  %4640 = call float @dx.op.unary.f32(i32 22, float %4604)  ; Frc(value)
  %4641 = call float @dx.op.unary.f32(i32 22, float %4636)  ; Frc(value)
  %4642 = call float @dx.op.unary.f32(i32 22, float %4635)  ; Frc(value)
  %4643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4641, float %4642, float %4639, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4644 = extractvalue %dx.types.ResRet.f32 %4643, 0
  %4645 = extractvalue %dx.types.ResRet.f32 %4643, 1
  %4646 = extractvalue %dx.types.ResRet.f32 %4643, 2
  %4647 = extractvalue %dx.types.ResRet.f32 %4643, 3
  %4648 = fcmp fast ogt float %4640, 0.000000e+00
  br i1 %4648, label %4649, label %4670, !dx.controlflow.hints !112

; <label>:4649                                    ; preds = %4632
  %4650 = fadd fast float %4639, 1.000000e+00
  %4651 = call float @dx.op.unary.f32(i32 22, float %4613)  ; Frc(value)
  %4652 = call float @dx.op.unary.f32(i32 22, float %4614)  ; Frc(value)
  %4653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %4651, float %4652, float %4650, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4654 = extractvalue %dx.types.ResRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.ResRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.ResRet.f32 %4653, 2
  %4657 = extractvalue %dx.types.ResRet.f32 %4653, 3
  %4658 = fsub fast float %4654, %4644
  %4659 = fsub fast float %4655, %4645
  %4660 = fsub fast float %4656, %4646
  %4661 = fsub fast float %4657, %4647
  %4662 = fmul fast float %4658, %4640
  %4663 = fmul fast float %4659, %4640
  %4664 = fmul fast float %4660, %4640
  %4665 = fmul fast float %4661, %4640
  %4666 = fadd fast float %4662, %4644
  %4667 = fadd fast float %4663, %4645
  %4668 = fadd fast float %4664, %4646
  %4669 = fadd fast float %4665, %4647
  br label %4670

; <label>:4670                                    ; preds = %4649, %4632
  %4671 = phi float [ %4666, %4649 ], [ %4644, %4632 ]
  %4672 = phi float [ %4667, %4649 ], [ %4645, %4632 ]
  %4673 = phi float [ %4668, %4649 ], [ %4646, %4632 ]
  %4674 = phi float [ %4669, %4649 ], [ %4647, %4632 ]
  %4675 = fadd fast float %4671, -5.000000e-01
  %4676 = fadd fast float %4673, -5.000000e-01
  %4677 = fmul fast float %4675, 0xBFD5555560000000
  %4678 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4676, float %4677)  ; FMad(a,b,c)
  %4679 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4672, float 0.000000e+00)  ; FMad(a,b,c)
  %4680 = fadd fast float %4679, %4674
  %4681 = fmul fast float %4675, -7.500000e-01
  %4682 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4676, float %4681)  ; FMad(a,b,c)
  %4683 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4672, float 0.000000e+00)  ; FMad(a,b,c)
  %4684 = fadd fast float %4683, %4674
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 0
  %4687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.f32 %4687, 0
  %4689 = extractvalue %dx.types.CBufRet.f32 %4687, 1
  %4690 = extractvalue %dx.types.CBufRet.f32 %4687, 2
  %4691 = extractvalue %dx.types.CBufRet.f32 %4687, 3
  %4692 = fsub fast float %4688, %4678
  %4693 = fsub fast float %4689, %4680
  %4694 = fsub fast float %4690, %4682
  %4695 = fsub fast float %4691, %4684
  %4696 = fmul fast float %4692, %4686
  %4697 = fmul fast float %4693, %4686
  %4698 = fmul fast float %4694, %4686
  %4699 = fmul fast float %4695, %4686
  %4700 = fadd fast float %4696, %4678
  %4701 = fadd fast float %4697, %4680
  %4702 = fadd fast float %4698, %4682
  %4703 = fadd fast float %4699, %4684
  %4704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4705 = extractvalue %dx.types.ResRet.i32 %4704, 0
  %4706 = and i32 %4705, 536870911
  %4707 = uitofp i32 %4706 to float
  %4708 = fmul fast float %4707, %4554
  %4709 = fmul fast float %4707, %4558
  %4710 = fptoui float %4708 to i32
  %4711 = fptoui float %4709 to i32
  %4712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4713 = extractvalue %dx.types.ResRet.i32 %4712, 0
  %4714 = and i32 %4713, 31
  %4715 = lshr i32 %4710, %4714
  %4716 = lshr i32 %4711, %4714
  %4717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4718 = extractvalue %dx.types.ResRet.i32 %4717, 0
  %4719 = and i32 %4718, 31
  %4720 = shl i32 1, %4719
  %4721 = call i32 @dx.op.binary.i32(i32 40, i32 %4720, i32 4)  ; UMin(a,b)
  %4722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4723 = extractvalue %dx.types.ResRet.i32 %4722, 0
  %4724 = extractvalue %dx.types.ResRet.i32 %4722, 1
  %4725 = icmp eq i32 %4721, 0
  br i1 %4725, label %4767, label %4726

; <label>:4726                                    ; preds = %4670
  br label %4727

; <label>:4727                                    ; preds = %4755, %4726
  %4728 = phi i32 [ %4758, %4755 ], [ 0, %4726 ]
  %4729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4730 = extractvalue %dx.types.ResRet.i32 %4729, 0
  %4731 = lshr i32 %4730, 16
  %4732 = and i32 %4731, 31
  %4733 = shl i32 %4716, %4732
  %4734 = add i32 %4733, %4715
  %4735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4736 = extractvalue %dx.types.ResRet.i32 %4735, 0
  %4737 = and i32 %4736, 31
  %4738 = shl i32 %4734, %4737
  %4739 = add i32 %4738, %4728
  %4740 = shl i32 %4739, 2
  %4741 = add i32 %4740, 32
  %4742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4741, i32 undef)  ; BufferLoad(srv,index,wot)
  %4743 = extractvalue %dx.types.ResRet.i32 %4742, 0
  %4744 = icmp slt i32 %4743, 0
  %4745 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4728
  %4746 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4728
  %4747 = bitcast float* %4745 to i32*
  %4748 = bitcast float* %4746 to i32*
  br i1 %4744, label %4749, label %4755

; <label>:4749                                    ; preds = %4727
  %4750 = and i32 %4743, 1073741823
  %4751 = add nuw nsw i32 %4750, 20
  %4752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4751, i32 undef)  ; BufferLoad(srv,index,wot)
  %4753 = extractvalue %dx.types.ResRet.i32 %4752, 0
  %4754 = extractvalue %dx.types.ResRet.i32 %4752, 1
  br label %4755

; <label>:4755                                    ; preds = %4749, %4727
  %4756 = phi i32 [ %4753, %4749 ], [ %4723, %4727 ]
  %4757 = phi i32 [ %4754, %4749 ], [ %4724, %4727 ]
  store i32 %4756, i32* %4747, align 4
  store i32 %4757, i32* %4748, align 4
  %4758 = add nuw i32 %4728, 1
  %4759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.i32 %4759, 2
  %4761 = icmp eq i32 %4760, 0
  %4762 = icmp ugt i32 %4743, -1073741825
  %4763 = and i1 %4762, %4761
  %4764 = icmp ult i32 %4758, %4721
  %4765 = and i1 %4763, %4764
  br i1 %4765, label %4727, label %4766

; <label>:4766                                    ; preds = %4755
  br label %4767

; <label>:4767                                    ; preds = %4766, %4670
  %4768 = phi i32 [ 0, %4670 ], [ %4758, %4766 ]
  %4769 = extractvalue %dx.types.CBufRet.f32 %4532, 2
  %4770 = fptoui float %4769 to i32
  %4771 = icmp eq i32 %4770, 0
  br i1 %4771, label %4823, label %4772

; <label>:4772                                    ; preds = %4767
  br label %4773

; <label>:4773                                    ; preds = %4818, %4772
  %4774 = phi i32 [ %4819, %4818 ], [ %4768, %4772 ]
  %4775 = phi i32 [ %4820, %4818 ], [ 0, %4772 ]
  %4776 = lshr i32 %4775, 2
  %4777 = and i32 %4775, 3
  %4778 = add nuw nsw i32 %4776, 83
  %4779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %4778)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.i32 %4779, 0
  %4781 = extractvalue %dx.types.CBufRet.i32 %4779, 1
  %4782 = extractvalue %dx.types.CBufRet.i32 %4779, 2
  %4783 = extractvalue %dx.types.CBufRet.i32 %4779, 3
  %4784 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %4780, i32* %4784, align 4
  %4785 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %4781, i32* %4785, align 4
  %4786 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %4782, i32* %4786, align 4
  %4787 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %4783, i32* %4787, align 4
  %4788 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %4777
  %4789 = load i32, i32* %4788, align 4, !tbaa !113, !noalias !117
  %4790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4791 = extractvalue %dx.types.ResRet.i32 %4790, 0
  %4792 = lshr i32 %4791, 16
  %4793 = and i32 %4792, 31
  %4794 = shl i32 %4716, %4793
  %4795 = add i32 %4794, %4715
  %4796 = shl i32 %4795, 2
  %4797 = add i32 %4796, %4789
  %4798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4797, i32 undef)  ; BufferLoad(srv,index,wot)
  %4799 = extractvalue %dx.types.ResRet.i32 %4798, 0
  %4800 = icmp eq i32 %4799, 0
  br i1 %4800, label %4818, label %4801

; <label>:4801                                    ; preds = %4773
  %4802 = icmp slt i32 %4799, 0
  %4803 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4774
  %4804 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4774
  %4805 = bitcast float* %4803 to i32*
  %4806 = bitcast float* %4804 to i32*
  br i1 %4802, label %4807, label %4814

; <label>:4807                                    ; preds = %4801
  %4808 = and i32 %4799, 1073741823
  %4809 = add i32 %4789, 20
  %4810 = add i32 %4809, %4808
  %4811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4810, i32 undef)  ; BufferLoad(srv,index,wot)
  %4812 = extractvalue %dx.types.ResRet.i32 %4811, 0
  %4813 = extractvalue %dx.types.ResRet.i32 %4811, 1
  br label %4814

; <label>:4814                                    ; preds = %4807, %4801
  %4815 = phi i32 [ %4812, %4807 ], [ %4723, %4801 ]
  %4816 = phi i32 [ %4813, %4807 ], [ %4724, %4801 ]
  store i32 %4815, i32* %4805, align 4
  store i32 %4816, i32* %4806, align 4
  %4817 = add i32 %4774, 1
  br label %4818

; <label>:4818                                    ; preds = %4814, %4773
  %4819 = phi i32 [ %4774, %4773 ], [ %4817, %4814 ]
  %4820 = add nuw i32 %4775, 1
  %4821 = icmp eq i32 %4820, %4770
  br i1 %4821, label %4822, label %4773

; <label>:4822                                    ; preds = %4818
  br label %4823

; <label>:4823                                    ; preds = %4822, %4767
  %4824 = phi i32 [ %4768, %4767 ], [ %4819, %4822 ]
  %4825 = icmp eq i32 %4824, 1
  %4826 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  %4827 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  br i1 %4825, label %4828, label %4831

; <label>:4828                                    ; preds = %4823
  %4829 = load float, float* %4826, align 4
  %4830 = load float, float* %4827, align 4
  br label %4858

; <label>:4831                                    ; preds = %4823
  %4832 = load float, float* %4826, align 4
  %4833 = load float, float* %4827, align 4
  %4834 = fdiv fast float 1.000000e+00, %4833
  %4835 = fsub fast float %4832, %4834
  %4836 = icmp ugt i32 %4824, 1
  br i1 %4836, label %4837, label %4853

; <label>:4837                                    ; preds = %4831
  br label %4838

; <label>:4838                                    ; preds = %4838, %4837
  %4839 = phi float [ %4848, %4838 ], [ %4835, %4837 ]
  %4840 = phi float [ %4849, %4838 ], [ %4832, %4837 ]
  %4841 = phi i32 [ %4850, %4838 ], [ 1, %4837 ]
  %4842 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %4841
  %4843 = load float, float* %4842, align 4
  %4844 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %4841
  %4845 = load float, float* %4844, align 4
  %4846 = fdiv fast float 1.000000e+00, %4845
  %4847 = fsub fast float %4843, %4846
  %4848 = call float @dx.op.binary.f32(i32 36, float %4839, float %4847)  ; FMin(a,b)
  %4849 = call float @dx.op.binary.f32(i32 35, float %4840, float %4843)  ; FMax(a,b)
  %4850 = add nuw i32 %4841, 1
  %4851 = icmp eq i32 %4850, %4824
  br i1 %4851, label %4852, label %4838

; <label>:4852                                    ; preds = %4838
  br label %4853

; <label>:4853                                    ; preds = %4852, %4831
  %4854 = phi float [ %4835, %4831 ], [ %4848, %4852 ]
  %4855 = phi float [ %4832, %4831 ], [ %4849, %4852 ]
  %4856 = fsub fast float %4855, %4854
  %4857 = fdiv fast float 1.000000e+00, %4856
  br label %4858

; <label>:4858                                    ; preds = %4853, %4828
  %4859 = phi float [ %4829, %4828 ], [ %4855, %4853 ]
  %4860 = phi float [ %4830, %4828 ], [ %4857, %4853 ]
  %4861 = fadd fast float %4562, %4859
  %4862 = fmul fast float %4861, %4860
  %4863 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4864 = fmul fast float %4863, 2.000000e+00
  %4865 = fsub fast float 1.000000e+00, %4864
  %4866 = fmul fast float %4700, %4700
  %4867 = fsub fast float %4701, %4866
  %4868 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4867)  ; FMax(a,b)
  %4869 = fdiv fast float 1.000000e+00, %4868
  %4870 = fmul fast float %4701, %4700
  %4871 = fsub fast float %4702, %4870
  %4872 = fsub fast float %4865, %4700
  %4873 = fmul fast float %4865, %4865
  %4874 = fsub fast float %4873, %4701
  %4875 = fmul fast float %4869, %4871
  %4876 = fmul fast float %4875, %4872
  %4877 = fsub fast float %4874, %4876
  %4878 = fmul fast float %4701, %4701
  %4879 = fsub fast float %4703, %4878
  %4880 = fmul fast float %4871, %4871
  %4881 = fmul fast float %4880, %4869
  %4882 = fsub fast float %4879, %4881
  %4883 = fdiv fast float %4877, %4882
  %4884 = fmul fast float %4883, %4871
  %4885 = fsub fast float %4872, %4884
  %4886 = fmul fast float %4885, %4869
  %4887 = fmul fast float %4886, %4700
  %4888 = fsub fast float 1.000000e+00, %4887
  %4889 = fmul fast float %4883, %4701
  %4890 = fsub fast float %4888, %4889
  %4891 = fmul fast float %4886, %4886
  %4892 = fmul fast float %4883, 4.000000e+00
  %4893 = fmul fast float %4892, %4890
  %4894 = fsub fast float %4891, %4893
  %4895 = call float @dx.op.unary.f32(i32 24, float %4894)  ; Sqrt(value)
  %4896 = fcmp fast oge float %4886, 0.000000e+00
  %4897 = fsub fast float -0.000000e+00, %4895
  %4898 = select i1 %4896, float %4897, float %4895
  %4899 = fsub fast float %4898, %4886
  %4900 = fdiv fast float %4899, %4883
  %4901 = fdiv fast float %4890, %4899
  %4902 = fmul fast float %4900, 5.000000e-01
  %4903 = fmul fast float %4901, 2.000000e+00
  %4904 = select i1 %4896, float %4902, float %4903
  %4905 = select i1 %4896, float %4903, float %4902
  %4906 = call float @dx.op.binary.f32(i32 35, float %4904, float %4905)  ; FMax(a,b)
  %4907 = call float @dx.op.binary.f32(i32 36, float %4904, float %4905)  ; FMin(a,b)
  %4908 = fcmp fast ogt float %4865, %4906
  %4909 = fsub fast float %4865, %4907
  %4910 = fsub fast float %4865, %4906
  %4911 = fsub fast float %4906, %4907
  %4912 = select i1 %4908, float %4910, float %4911
  %4913 = fmul float %4909, %4912
  %4914 = select i1 %4908, float %4907, float %4865
  %4915 = fcmp fast ogt float %4865, %4907
  %4916 = fmul fast float %4914, %4906
  %4917 = fadd fast float %4914, %4906
  %4918 = fmul fast float %4917, %4700
  %4919 = fadd fast float %4916, %4701
  %4920 = fsub fast float %4919, %4918
  %4921 = fdiv fast float %4920, %4913
  %4922 = select i1 %4915, float %4921, float 0.000000e+00
  %4923 = fsub fast float 1.000000e+00, %4922
  %4924 = select i1 %4908, float %4923, float %4922
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = extractvalue %dx.types.CBufRet.f32 %4685, 3
  %4927 = fmul fast float %4926, %4925
  %4928 = fsub fast float 1.000000e+00, %4927
  br label %4929

; <label>:4929                                    ; preds = %4858, %4570, %4535, %4531, %4497
  %4930 = phi float [ 1.000000e+00, %4497 ], [ %4928, %4858 ], [ 1.000000e+00, %4535 ], [ 1.000000e+00, %4570 ], [ 1.000000e+00, %4531 ]
  %4931 = fcmp fast ogt float %4527, 0.000000e+00
  br i1 %4931, label %4932, label %4938, !dx.controlflow.hints !126

; <label>:4932                                    ; preds = %4929
  %4933 = fadd fast float %4440, %4414
  %4934 = call float @dx.op.binary.f32(i32 35, float %4933, float 0.000000e+00)  ; FMax(a,b)
  %4935 = fadd fast float %4934, 0x3F10000000000000
  %4936 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %4429, float %4430, float undef, float undef, i32 0, i32 0, i32 undef, float %4935)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 0
  br label %4938

; <label>:4938                                    ; preds = %4932, %4929
  %4939 = phi float [ %4937, %4932 ], [ 1.000000e+00, %4929 ]
  %4940 = fcmp fast ogt float %4525, 0.000000e+00
  br i1 %4940, label %4941, label %4947, !dx.controlflow.hints !127

; <label>:4941                                    ; preds = %4938
  %4942 = fadd fast float %4470, %4414
  %4943 = call float @dx.op.binary.f32(i32 35, float %4942, float 0.000000e+00)  ; FMax(a,b)
  %4944 = fadd fast float %4943, 0x3F10000000000000
  %4945 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %4421, float %4422, float undef, float undef, i32 0, i32 0, i32 undef, float %4944)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4946 = extractvalue %dx.types.ResRet.f32 %4945, 0
  br label %4947

; <label>:4947                                    ; preds = %4941, %4938
  %4948 = phi float [ %4946, %4941 ], [ 1.000000e+00, %4938 ]
  %4949 = fcmp fast ogt float %4524, 0.000000e+00
  br i1 %4949, label %4950, label %4957, !dx.controlflow.hints !128

; <label>:4950                                    ; preds = %4947
  %4951 = extractvalue %dx.types.CBufRet.f32 %4439, 0
  %4952 = fadd fast float %4951, %4414
  %4953 = call float @dx.op.binary.f32(i32 35, float %4952, float 0.000000e+00)  ; FMax(a,b)
  %4954 = fadd fast float %4953, 0x3F10000000000000
  %4955 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %4406, float %4410, float undef, float undef, i32 0, i32 0, i32 undef, float %4954)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4956 = extractvalue %dx.types.ResRet.f32 %4955, 0
  br label %4957

; <label>:4957                                    ; preds = %4950, %4947
  %4958 = phi float [ %4956, %4950 ], [ 1.000000e+00, %4947 ]
  %4959 = fsub fast float %4939, %4930
  %4960 = fmul fast float %4959, %4468
  %4961 = fadd fast float %4960, %4930
  %4962 = fsub fast float %4948, %4961
  %4963 = fmul fast float %4962, %4498
  %4964 = fadd fast float %4963, %4961
  %4965 = fsub fast float %4958, %4964
  %4966 = fmul fast float %4965, %4524
  %4967 = fadd fast float %4966, %4964
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 2
  %4970 = fcmp fast ogt float %4969, 0.000000e+00
  br i1 %4970, label %4971, label %5008, !dx.controlflow.hints !129

; <label>:4971                                    ; preds = %4957
  %4972 = fcmp fast ugt float %4969, 0.000000e+00
  br i1 %4972, label %4973, label %5005

; <label>:4973                                    ; preds = %4971
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %4976 = extractvalue %dx.types.CBufRet.f32 %4974, 1
  %4977 = extractvalue %dx.types.CBufRet.f32 %4974, 2
  %4978 = extractvalue %dx.types.CBufRet.f32 %4974, 3
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4983 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %4984 = extractvalue %dx.types.CBufRet.f32 %4968, 0
  %4985 = extractvalue %dx.types.CBufRet.f32 %4968, 1
  %4986 = extractvalue %dx.types.CBufRet.f32 %3011, 2
  %4987 = fadd fast float %3012, %4383
  %4988 = fadd fast float %3013, %4384
  %4989 = fadd fast float %4986, %4385
  %4990 = fmul fast float %4987, %4975
  %4991 = call float @dx.op.tertiary.f32(i32 46, float %4976, float %4988, float %4990)  ; FMad(a,b,c)
  %4992 = call float @dx.op.tertiary.f32(i32 46, float %4977, float %4989, float %4991)  ; FMad(a,b,c)
  %4993 = fadd fast float %4992, %4978
  %4994 = fmul fast float %4987, %4980
  %4995 = call float @dx.op.tertiary.f32(i32 46, float %4981, float %4988, float %4994)  ; FMad(a,b,c)
  %4996 = call float @dx.op.tertiary.f32(i32 46, float %4982, float %4989, float %4995)  ; FMad(a,b,c)
  %4997 = fadd fast float %4996, %4983
  %4998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4993, float %4997, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4999 = extractvalue %dx.types.ResRet.f32 %4998, 0
  %5000 = fmul fast float %4999, %4985
  %5001 = fadd fast float %5000, %4984
  %5002 = call float @dx.op.unary.f32(i32 7, float %5001)  ; Saturate(value)
  %5003 = fmul fast float %5002, %4969
  %5004 = fsub fast float 1.000000e+00, %5003
  br label %5005

; <label>:5005                                    ; preds = %4973, %4971
  %5006 = phi float [ %5004, %4973 ], [ 1.000000e+00, %4971 ]
  %5007 = fmul fast float %5006, %4967
  br label %5008

; <label>:5008                                    ; preds = %5005, %4957, %4363
  %5009 = phi float [ 1.000000e+00, %4363 ], [ %5007, %5005 ], [ %4967, %4957 ]
  %5010 = call float @dx.op.binary.f32(i32 36, float %5009, float %5009)  ; FMin(a,b)
  %5011 = call float @dx.op.binary.f32(i32 36, float %5009, float %5010)  ; FMin(a,b)
  %5012 = fcmp fast ogt float %5011, 0.000000e+00
  br i1 %5012, label %5013, label %5170, !dx.controlflow.hints !130

; <label>:5013                                    ; preds = %5008
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.CBufRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.CBufRet.f32 %5014, 2
  %5018 = extractvalue %dx.types.CBufRet.f32 %5014, 3
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5023 = extractvalue %dx.types.CBufRet.f32 %5019, 3
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5026 = extractvalue %dx.types.CBufRet.f32 %5024, 1
  %5027 = extractvalue %dx.types.CBufRet.f32 %5024, 2
  %5028 = extractvalue %dx.types.CBufRet.f32 %5024, 3
  %5029 = fmul fast float %5015, %4383
  %5030 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %5016, float %5029)  ; FMad(a,b,c)
  %5031 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %5017, float %5030)  ; FMad(a,b,c)
  %5032 = fadd fast float %5031, %5018
  %5033 = fmul fast float %5020, %4383
  %5034 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %5021, float %5033)  ; FMad(a,b,c)
  %5035 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %5022, float %5034)  ; FMad(a,b,c)
  %5036 = fadd fast float %5035, %5023
  %5037 = fmul fast float %5025, %4383
  %5038 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %5026, float %5037)  ; FMad(a,b,c)
  %5039 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %5027, float %5038)  ; FMad(a,b,c)
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.CBufRet.f32 %5040, 1
  %5043 = extractvalue %dx.types.CBufRet.f32 %5040, 3
  %5044 = fmul fast float %5043, %5032
  %5045 = fmul fast float %5043, %5036
  %5046 = fadd fast float %5044, %5041
  %5047 = fadd fast float %5045, %5042
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.CBufRet.f32 %5048, 1
  %5051 = fsub fast float %5046, %5049
  %5052 = fsub fast float %5047, %5050
  %5053 = fcmp fast olt float %5051, 0.000000e+00
  %5054 = fcmp fast olt float %5052, 0.000000e+00
  %5055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.CBufRet.f32 %5055, 1
  %5058 = extractvalue %dx.types.CBufRet.f32 %5055, 2
  %5059 = extractvalue %dx.types.CBufRet.f32 %5055, 3
  %5060 = select i1 %5053, float %5056, float %5058
  %5061 = select i1 %5054, float %5057, float %5059
  %5062 = fmul fast float %5060, %5051
  %5063 = fmul fast float %5061, %5052
  %5064 = call float @dx.op.unary.f32(i32 6, float %5062)  ; FAbs(value)
  %5065 = call float @dx.op.unary.f32(i32 6, float %5063)  ; FAbs(value)
  %5066 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %5067 = call float @dx.op.binary.f32(i32 35, float %5064, float %5065)  ; FMax(a,b)
  %5068 = fsub fast float %5066, %5067
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = fcmp fast ogt float %5069, 0.000000e+00
  br i1 %5070, label %5071, label %5112, !dx.controlflow.hints !131

; <label>:5071                                    ; preds = %5013
  %5072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %5046, float %5047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5073 = extractvalue %dx.types.ResRet.f32 %5072, 1
  %5074 = fcmp fast ogt float %5073, 0.000000e+00
  br i1 %5074, label %5075, label %5107

; <label>:5075                                    ; preds = %5071
  %5076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %5046, float %5047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5077 = extractvalue %dx.types.ResRet.f32 %5076, 0
  %5078 = extractvalue %dx.types.ResRet.f32 %5076, 1
  %5079 = extractvalue %dx.types.ResRet.f32 %5076, 2
  %5080 = extractvalue %dx.types.ResRet.f32 %5076, 3
  %5081 = fsub fast float 1.000000e+00, %5028
  %5082 = fsub fast float %5081, %5039
  %5083 = fmul fast float %5082, 0x400921FB60000000
  %5084 = fadd fast float %5083, 0x3FF921FB60000000
  %5085 = call float @dx.op.unary.f32(i32 13, float %5084)  ; Sin(value)
  %5086 = fadd fast float %5085, -1.000000e+00
  %5087 = fmul fast float %5086, 0x3FD45F3060000000
  %5088 = fmul fast float %5082, 0x401921FB60000000
  %5089 = fadd fast float %5088, 0x400921FB60000000
  %5090 = call float @dx.op.unary.f32(i32 13, float %5089)  ; Sin(value)
  %5091 = fadd fast float %5090, 0x3E7777A5C0000000
  %5092 = fmul fast float %5091, 0x3FC45F3060000000
  %5093 = fmul fast float %5082, 0x4022D97C80000000
  %5094 = fadd fast float %5093, 0x4012D97C80000000
  %5095 = call float @dx.op.unary.f32(i32 13, float %5094)  ; Sin(value)
  %5096 = fadd fast float %5095, 1.000000e+00
  %5097 = fmul fast float %5096, 0x3FBB2995E0000000
  %5098 = fmul fast float %5082, 0x402921FB60000000
  %5099 = fadd fast float %5098, 0x401921FB60000000
  %5100 = call float @dx.op.unary.f32(i32 13, float %5099)  ; Sin(value)
  %5101 = fadd fast float %5100, 0xBE8777A5C0000000
  %5102 = fmul fast float %5101, 0x3FB45F3060000000
  %5103 = call float @dx.op.dot4.f32(i32 56, float %5077, float %5078, float %5079, float %5080, float %5087, float %5092, float %5097, float %5102)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5104 = fmul fast float %5103, 0xBFF7154760000000
  %5105 = call float @dx.op.unary.f32(i32 21, float %5104)  ; Exp(value)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  br label %5107

; <label>:5107                                    ; preds = %5075, %5071
  %5108 = phi float [ %5106, %5075 ], [ 1.000000e+00, %5071 ]
  %5109 = fadd fast float %5108, -1.000000e+00
  %5110 = fmul fast float %5109, %5069
  %5111 = fadd fast float %5110, 1.000000e+00
  br label %5112

; <label>:5112                                    ; preds = %5107, %5013
  %5113 = phi float [ %5111, %5107 ], [ 1.000000e+00, %5013 ]
  %5114 = fmul fast float %5113, %5009
  %5115 = extractvalue %dx.types.CBufRet.f32 %3011, 2
  %5116 = fadd fast float %3012, %145
  %5117 = fadd fast float %3013, %146
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 1
  %5120 = fsub fast float -0.000000e+00, %5116
  %5121 = fsub fast float -0.000000e+00, %5117
  %5122 = fsub fast float %2995, %5115
  %5123 = fadd fast float %5122, %5119
  %5124 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5120, float %5121, float %5123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4364, float %4365, float %4366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5126 = fdiv fast float 1.000000e+00, %5125
  %5127 = fmul fast float %5126, %5124
  %5128 = fmul fast float %4364, %5127
  %5129 = fmul fast float %4365, %5127
  %5130 = fadd fast float %5128, %5116
  %5131 = fadd fast float %5129, %5117
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 0
  %5134 = extractvalue %dx.types.CBufRet.f32 %5132, 1
  %5135 = fsub fast float %5130, %5133
  %5136 = fsub fast float %5131, %5134
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 3
  %5140 = fmul fast float %5135, %5138
  %5141 = fmul fast float %5136, %5139
  %5142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.i32 %5142, 3
  %5144 = icmp eq i32 %5143, 0
  br i1 %5144, label %5150, label %5145

; <label>:5145                                    ; preds = %5112
  %5146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %5140, float %5141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5147 = extractvalue %dx.types.ResRet.f32 %5146, 0
  %5148 = extractvalue %dx.types.ResRet.f32 %5146, 1
  %5149 = extractvalue %dx.types.ResRet.f32 %5146, 2
  br label %5155

; <label>:5150                                    ; preds = %5112
  %5151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %5140, float %5141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5152 = extractvalue %dx.types.ResRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.ResRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.ResRet.f32 %5151, 2
  br label %5155

; <label>:5155                                    ; preds = %5150, %5145
  %5156 = phi float [ %5147, %5145 ], [ %5152, %5150 ]
  %5157 = phi float [ %5148, %5145 ], [ %5153, %5150 ]
  %5158 = phi float [ %5149, %5145 ], [ %5154, %5150 ]
  %5159 = extractvalue %dx.types.CBufRet.f32 %5118, 2
  %5160 = fmul fast float %5159, %5156
  %5161 = extractvalue %dx.types.CBufRet.f32 %5118, 0
  %5162 = fsub fast float %5127, %5161
  %5163 = fsub fast float %5162, %5160
  %5164 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5163)  ; FMax(a,b)
  %5165 = fmul fast float %5164, %5157
  %5166 = call float @dx.op.binary.f32(i32 36, float %5158, float %5165)  ; FMin(a,b)
  %5167 = fmul fast float %5166, 0xBFF7154760000000
  %5168 = call float @dx.op.unary.f32(i32 21, float %5167)  ; Exp(value)
  %5169 = fmul fast float %5114, %5168
  br label %5170

; <label>:5170                                    ; preds = %5155, %5008
  %5171 = phi float [ %5169, %5155 ], [ %5009, %5008 ]
  %5172 = call float @dx.op.binary.f32(i32 36, float %5171, float %5171)  ; FMin(a,b)
  %5173 = call float @dx.op.binary.f32(i32 36, float %5171, float %5172)  ; FMin(a,b)
  %5174 = fcmp fast ogt float %5173, 0.000000e+00
  br i1 %5174, label %5175, label %5427, !dx.controlflow.hints !132

; <label>:5175                                    ; preds = %5170
  %5176 = fmul fast float %5171, %4375
  %5177 = fmul fast float %5171, %4376
  %5178 = fmul fast float %5171, %4377
  %5179 = fsub fast float %147, %2783
  %5180 = fcmp fast ogt float %5179, 0.000000e+00
  %5181 = fmul fast float %4364, 5.120000e+02
  %5182 = fmul fast float %4365, 5.120000e+02
  %5183 = fmul fast float %4366, 5.120000e+02
  %5184 = fadd fast float %5183, %147
  %5185 = fsub fast float %2783, %5184
  %5186 = fmul fast float %5185, 2.000000e+00
  %5187 = fadd fast float %5186, %5184
  %5188 = select i1 %5180, float %5187, float %5184
  %5189 = fsub fast float %5188, %147
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5181, float %5182, float %5189, float %5181, float %5182, float %5189)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = call float @dx.op.unary.f32(i32 25, float %5190)  ; Rsqrt(value)
  %5192 = fmul fast float %5191, %5181
  %5193 = fmul fast float %5191, %5182
  %5194 = fmul fast float %5191, %5189
  %5195 = fsub fast float %2783, %147
  %5196 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5197 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5192, float %5193, float %5194)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = fdiv fast float 1.000000e+00, %5197
  %5199 = fmul fast float %5198, %5196
  %5200 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5179, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = fcmp fast ogt float %5200, 0.000000e+00
  %5202 = fcmp fast olt float %5200, 0.000000e+00
  %5203 = zext i1 %5201 to i32
  %5204 = zext i1 %5202 to i32
  %5205 = sub nsw i32 %5203, %5204
  %5206 = sitofp i32 %5205 to float
  %5207 = fsub fast float %5188, %2783
  %5208 = call float @dx.op.dot3.f32(i32 55, float %5181, float %5182, float %5207, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5209 = fcmp fast ogt float %5208, 0.000000e+00
  %5210 = fcmp fast olt float %5208, 0.000000e+00
  %5211 = zext i1 %5209 to i32
  %5212 = zext i1 %5210 to i32
  %5213 = sub nsw i32 %5211, %5212
  %5214 = sitofp i32 %5213 to float
  %5215 = fcmp fast une float %5206, %5214
  br i1 %5215, label %5216, label %5226

; <label>:5216                                    ; preds = %5175
  %5217 = fmul fast float %5199, %5194
  %5218 = fmul fast float %5199, %5193
  %5219 = fmul fast float %5199, %5192
  %5220 = fmul fast float %5219, %5219
  %5221 = fmul fast float %5218, %5218
  %5222 = fadd fast float %5220, %5221
  %5223 = fmul fast float %5217, %5217
  %5224 = fadd fast float %5222, %5223
  %5225 = call float @dx.op.unary.f32(i32 24, float %5224)  ; Sqrt(value)
  br label %5236

; <label>:5226                                    ; preds = %5175
  %5227 = icmp slt i32 %5205, 0
  br i1 %5227, label %5228, label %5236

; <label>:5228                                    ; preds = %5226
  %5229 = fsub fast float %147, %5188
  %5230 = fmul fast float %5181, %5181
  %5231 = fmul fast float %5182, %5182
  %5232 = fadd fast float %5230, %5231
  %5233 = fmul fast float %5229, %5229
  %5234 = fadd fast float %5232, %5233
  %5235 = call float @dx.op.unary.f32(i32 24, float %5234)  ; Sqrt(value)
  br label %5236

; <label>:5236                                    ; preds = %5228, %5226, %5216
  %5237 = phi float [ %5225, %5216 ], [ %5235, %5228 ], [ 0.000000e+00, %5226 ]
  %5238 = fsub fast float -0.000000e+00, %5237
  %5239 = select i1 %5180, float -0.000000e+00, float %5238
  %5240 = fmul fast float %2784, 0x3FF7154760000000
  %5241 = fmul fast float %5240, %5239
  %5242 = fmul fast float %2785, 0x3FF7154760000000
  %5243 = fmul fast float %5242, %5239
  %5244 = fmul fast float %2786, 0x3FF7154760000000
  %5245 = fmul fast float %5244, %5239
  %5246 = call float @dx.op.unary.f32(i32 21, float %5241)  ; Exp(value)
  %5247 = call float @dx.op.unary.f32(i32 21, float %5243)  ; Exp(value)
  %5248 = call float @dx.op.unary.f32(i32 21, float %5245)  ; Exp(value)
  %5249 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5250 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5251 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5252 = fmul fast float %5176, %5249
  %5253 = fmul fast float %5177, %5250
  %5254 = fmul fast float %5178, %5251
  %5255 = fsub fast float %4364, %2983
  %5256 = fsub fast float %4365, %2982
  %5257 = fsub fast float %4366, %2981
  %5258 = call float @dx.op.dot3.f32(i32 55, float %5255, float %5256, float %5257, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5259 = call float @dx.op.unary.f32(i32 25, float %5258)  ; Rsqrt(value)
  %5260 = fmul fast float %5259, %5255
  %5261 = fmul fast float %5259, %5256
  %5262 = fmul fast float %5259, %5257
  %5263 = call float @dx.op.dot3.f32(i32 55, float %4364, float %4365, float %4366, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = call float @dx.op.dot3.f32(i32 55, float %2980, float %2979, float %2978, float %5260, float %5261, float %5262)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5266 = bitcast i32 %3010 to float
  %5267 = fmul fast float %5265, %5265
  %5268 = fmul fast float %5267, %5266
  %5269 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5270 = fmul fast float %5269, %5265
  %5271 = call float @dx.op.dot3.f32(i32 55, float %2990, float %2991, float %2992, float %5260, float %5261, float %5262)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = fmul fast float %5271, %5271
  %5273 = call float @dx.op.unary.f32(i32 6, float %5263)  ; FAbs(value)
  %5274 = fsub fast float 1.000000e+00, %2993
  %5275 = call float @dx.op.binary.f32(i32 35, float %5274, float 0x3F847AE140000000)  ; FMax(a,b)
  %5276 = fmul fast float %5275, %5275
  %5277 = fmul fast float %5276, %5276
  %5278 = fsub fast float 1.000000e+00, %5277
  %5279 = fmul fast float %2998, %2998
  %5280 = fmul fast float %5279, %5278
  %5281 = fadd fast float %5280, %5277
  %5282 = bitcast float %5281 to i32
  %5283 = ashr i32 %5282, 1
  %5284 = add nsw i32 %5283, 532487669
  %5285 = bitcast i32 %5284 to float
  %5286 = fadd fast float %5285, %2998
  %5287 = fmul fast float %5277, %5272
  %5288 = fsub fast float 1.000000e+00, %5272
  %5289 = fadd fast float %5288, %5287
  %5290 = fmul fast float %5273, %5273
  %5291 = fmul fast float %5290, %5278
  %5292 = fadd fast float %5291, %5277
  %5293 = bitcast float %5292 to i32
  %5294 = ashr i32 %5293, 1
  %5295 = add nsw i32 %5294, 532487669
  %5296 = bitcast i32 %5295 to float
  %5297 = fadd fast float %5296, %5273
  %5298 = fmul fast float %5289, %5289
  %5299 = fmul fast float %5298, %5286
  %5300 = fmul fast float %5299, %5297
  %5301 = fdiv fast float 0x3FF0A00000000000, %5300
  %5302 = fmul fast float %5301, %5277
  %5303 = call float @dx.op.unary.f32(i32 6, float %5264)  ; FAbs(value)
  %5304 = fsub fast float 1.000000e+00, %5303
  %5305 = bitcast float %5304 to i32
  %5306 = sitofp i32 %5305 to float
  %5307 = fmul fast float %5306, 5.000000e+00
  %5308 = fadd fast float %5307, 0xC1EFBF8940000000
  %5309 = fptosi float %5308 to i32
  %5310 = bitcast i32 %5309 to float
  %5311 = fsub fast float 1.000000e+00, %2987
  %5312 = fsub fast float 1.000000e+00, %2988
  %5313 = fsub fast float 1.000000e+00, %2996
  %5314 = fmul fast float %5310, %5311
  %5315 = fmul fast float %5310, %5312
  %5316 = fmul fast float %5310, %5313
  %5317 = fadd fast float %5314, %2987
  %5318 = fadd fast float %5315, %2988
  %5319 = fadd fast float %5316, %2996
  br i1 %4275, label %5320, label %5343

; <label>:5320                                    ; preds = %5236
  %5321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2361, float %5303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5322 = extractvalue %dx.types.ResRet.f32 %5321, 0
  %5323 = extractvalue %dx.types.ResRet.f32 %5321, 1
  %5324 = extractvalue %dx.types.ResRet.f32 %5321, 2
  %5325 = fadd fast float %5322, -5.000000e-01
  %5326 = fadd fast float %5323, -5.000000e-01
  %5327 = fadd fast float %5324, -5.000000e-01
  %5328 = fmul fast float %2987, 4.000000e+00
  %5329 = fmul fast float %5328, %5311
  %5330 = fmul fast float %5329, %5325
  %5331 = fmul fast float %2988, 4.000000e+00
  %5332 = fmul fast float %5331, %5312
  %5333 = fmul fast float %5332, %5326
  %5334 = fmul fast float %2996, 4.000000e+00
  %5335 = fmul fast float %5334, %5313
  %5336 = fmul fast float %5335, %5327
  %5337 = fadd fast float %5330, %5317
  %5338 = fadd fast float %5333, %5318
  %5339 = fadd fast float %5336, %5319
  %5340 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5341 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  br label %5343

; <label>:5343                                    ; preds = %5320, %5236
  %5344 = phi float [ %5340, %5320 ], [ %5317, %5236 ]
  %5345 = phi float [ %5341, %5320 ], [ %5318, %5236 ]
  %5346 = phi float [ %5342, %5320 ], [ %5319, %5236 ]
  %5347 = fmul fast float %5263, 9.843750e-01
  %5348 = fadd fast float %5347, 7.812500e-03
  %5349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5348, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 3
  %5352 = fmul fast float %5350, %2987
  %5353 = fmul fast float %5350, %2988
  %5354 = fmul fast float %5350, %2996
  %5355 = fadd fast float %5352, %5351
  %5356 = fadd fast float %5353, %5351
  %5357 = fadd fast float %5354, %5351
  br i1 %4275, label %5358, label %5381

; <label>:5358                                    ; preds = %5343
  %5359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2361, float %5263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.ResRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.ResRet.f32 %5359, 2
  %5363 = fadd fast float %5360, -5.000000e-01
  %5364 = fadd fast float %5361, -5.000000e-01
  %5365 = fadd fast float %5362, -5.000000e-01
  %5366 = fmul fast float %2987, 4.000000e+00
  %5367 = fmul fast float %5366, %5311
  %5368 = fmul fast float %5367, %5363
  %5369 = fmul fast float %2988, 4.000000e+00
  %5370 = fmul fast float %5369, %5312
  %5371 = fmul fast float %5370, %5364
  %5372 = fmul fast float %2996, 4.000000e+00
  %5373 = fmul fast float %5372, %5313
  %5374 = fmul fast float %5373, %5365
  %5375 = fadd fast float %5368, %5355
  %5376 = fadd fast float %5371, %5356
  %5377 = fadd fast float %5374, %5357
  %5378 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5379 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5380 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  br label %5381

; <label>:5381                                    ; preds = %5358, %5343
  %5382 = phi float [ %5378, %5358 ], [ %5355, %5343 ]
  %5383 = phi float [ %5379, %5358 ], [ %5356, %5343 ]
  %5384 = phi float [ %5380, %5358 ], [ %5357, %5343 ]
  %5385 = call float @dx.op.binary.f32(i32 35, float %5383, float %5384)  ; FMax(a,b)
  %5386 = call float @dx.op.binary.f32(i32 35, float %5382, float %5385)  ; FMax(a,b)
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5344, %5302
  %5389 = fmul fast float %5345, %5302
  %5390 = fmul fast float %5346, %5302
  %5391 = fsub fast float 1.000000e+00, %5264
  %5392 = bitcast float %5391 to i32
  %5393 = sitofp i32 %5392 to float
  %5394 = fmul fast float %5393, 5.000000e+00
  %5395 = fadd fast float %5394, 0xC1EFBF8940000000
  %5396 = fptosi float %5395 to i32
  %5397 = bitcast i32 %5396 to float
  %5398 = fmul fast float %5397, %2360
  %5399 = fmul fast float %5387, %5398
  %5400 = fmul fast float %5399, %4325
  %5401 = fmul fast float %5399, %4326
  %5402 = fmul fast float %5399, %4327
  %5403 = fadd fast float %5400, %5388
  %5404 = fadd fast float %5401, %5389
  %5405 = fadd fast float %5402, %5390
  %5406 = fmul fast float %5270, %5252
  %5407 = fmul fast float %5406, %5387
  %5408 = fmul fast float %5270, %5253
  %5409 = fmul fast float %5408, %5387
  %5410 = fmul fast float %5270, %5254
  %5411 = fmul fast float %5410, %5387
  %5412 = fmul fast float %5406, %5403
  %5413 = fmul fast float %5408, %5404
  %5414 = fmul fast float %5410, %5405
  %5415 = fadd fast float %5407, %4309
  %5416 = fmul fast float %5415, %2381
  %5417 = fadd fast float %5409, %4310
  %5418 = fmul fast float %5417, %2381
  %5419 = fadd fast float %5411, %4311
  %5420 = fmul fast float %5419, %2381
  %5421 = fadd fast float %5412, %4352
  %5422 = fmul fast float %5421, %2381
  %5423 = fadd fast float %5413, %4355
  %5424 = fmul fast float %5423, %2381
  %5425 = fadd fast float %5414, %4358
  %5426 = fmul fast float %5425, %2381
  br label %5427

; <label>:5427                                    ; preds = %5381, %5170, %4302
  %5428 = phi float [ %4353, %4302 ], [ %4353, %5170 ], [ %5422, %5381 ]
  %5429 = phi float [ %4356, %4302 ], [ %4356, %5170 ], [ %5424, %5381 ]
  %5430 = phi float [ %4359, %4302 ], [ %4359, %5170 ], [ %5426, %5381 ]
  %5431 = phi float [ %4348, %4302 ], [ %4348, %5170 ], [ %5416, %5381 ]
  %5432 = phi float [ %4349, %4302 ], [ %4349, %5170 ], [ %5418, %5381 ]
  %5433 = phi float [ %4350, %4302 ], [ %4350, %5170 ], [ %5420, %5381 ]
  %5434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.i32 %5434, 0
  %5436 = icmp eq i32 %5435, 0
  br i1 %5436, label %6058, label %5437

; <label>:5437                                    ; preds = %5427
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 2
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 3
  %5441 = fmul fast float %5439, %98
  %5442 = fmul fast float %5440, %99
  %5443 = fptoui float %5441 to i32
  %5444 = fptoui float %5442 to i32
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 3
  %5449 = fadd fast float %89, -4.000000e+00
  %5450 = call float @dx.op.binary.f32(i32 35, float %5449, float 0.000000e+00)  ; FMax(a,b)
  %5451 = fadd fast float %5450, %5446
  %5452 = fmul fast float %5451, %5447
  %5453 = call float @dx.op.unary.f32(i32 23, float %5452)  ; Log(value)
  %5454 = fmul fast float %5453, %5448
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 2
  %5457 = fmul fast float %5454, %5456
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.i32 %5459, 1
  %5461 = add i32 %5460, -1
  %5462 = uitofp i32 %5460 to float
  %5463 = fmul fast float %5462, %5458
  %5464 = fptoui float %5463 to i32
  %5465 = call i32 @dx.op.binary.i32(i32 40, i32 %5464, i32 %5461)  ; UMin(a,b)
  %5466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.i32 %5466, 2
  %5468 = extractvalue %dx.types.CBufRet.i32 %5466, 3
  %5469 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5444, i32 %5467, i32 %5443)  ; UMad(a,b,c)
  %5470 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5465, i32 %5468, i32 %5469)  ; UMad(a,b,c)
  %5471 = add nsw i32 %5435, -1
  %5472 = call i32 @dx.op.binary.i32(i32 37, i32 %5471, i32 0)  ; IMax(a,b)
  %5473 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %5474 = fptoui float %5473 to i32
  %5475 = lshr i32 %5474, 5
  %5476 = call i32 @dx.op.binary.i32(i32 40, i32 %5475, i32 8191)  ; UMin(a,b)
  %5477 = shl i32 %5476, 2
  %5478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5477, i32 undef)  ; BufferLoad(srv,index,wot)
  %5479 = extractvalue %dx.types.ResRet.i32 %5478, 0
  %5480 = lshr i32 %5479, 16
  %5481 = and i32 %5479, 65535
  %5482 = lshr i32 %5479, 21
  %5483 = lshr i32 %5481, 5
  %5484 = call i32 @dx.op.binary.i32(i32 40, i32 %5483, i32 %5472)  ; UMin(a,b)
  %5485 = icmp ugt i32 %5482, %5484
  br i1 %5485, label %6058, label %5486

; <label>:5486                                    ; preds = %5437
  br label %5487

; <label>:5487                                    ; preds = %6048, %5486
  %5488 = phi i32 [ %6055, %6048 ], [ %5482, %5486 ]
  %5489 = phi float [ %6049, %6048 ], [ %5428, %5486 ]
  %5490 = phi float [ %6050, %6048 ], [ %5429, %5486 ]
  %5491 = phi float [ %6051, %6048 ], [ %5430, %5486 ]
  %5492 = phi float [ %6052, %6048 ], [ %5431, %5486 ]
  %5493 = phi float [ %6053, %6048 ], [ %5432, %5486 ]
  %5494 = phi float [ %6054, %6048 ], [ %5433, %5486 ]
  %5495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.i32 %5495, 0
  %5497 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5470, i32 %5496, i32 %5488)  ; UMad(a,b,c)
  %5498 = shl i32 %5497, 2
  %5499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5498, i32 undef)  ; BufferLoad(srv,index,wot)
  %5500 = extractvalue %dx.types.ResRet.i32 %5499, 0
  %5501 = shl i32 %5488, 5
  %5502 = sub nsw i32 %5480, %5501
  %5503 = call i32 @dx.op.binary.i32(i32 37, i32 %5502, i32 0)  ; IMax(a,b)
  %5504 = call i32 @dx.op.binary.i32(i32 38, i32 %5503, i32 31)  ; IMin(a,b)
  %5505 = sub nsw i32 1, %5480
  %5506 = add nsw i32 %5505, %5481
  %5507 = call i32 @dx.op.binary.i32(i32 37, i32 %5506, i32 0)  ; IMax(a,b)
  %5508 = call i32 @dx.op.binary.i32(i32 38, i32 %5507, i32 32)  ; IMin(a,b)
  %5509 = and i32 %5508, 31
  %5510 = shl i32 -1, %5509
  %5511 = xor i32 %5510, -1
  %5512 = and i32 %5504, 31
  %5513 = shl i32 %5511, %5512
  %5514 = icmp eq i32 %5508, 32
  %5515 = select i1 %5514, i32 -1, i32 %5513
  %5516 = and i32 %5515, %5500
  %5517 = icmp eq i32 %5516, 0
  br i1 %5517, label %6048, label %5518

; <label>:5518                                    ; preds = %5487
  br label %5519

; <label>:5519                                    ; preds = %5653, %5518
  %5520 = phi i32 [ %5531, %5653 ], [ %5516, %5518 ]
  %5521 = phi float [ %5654, %5653 ], [ %5489, %5518 ]
  %5522 = phi float [ %5655, %5653 ], [ %5490, %5518 ]
  %5523 = phi float [ %5656, %5653 ], [ %5491, %5518 ]
  %5524 = phi float [ %5657, %5653 ], [ %5492, %5518 ]
  %5525 = phi float [ %5658, %5653 ], [ %5493, %5518 ]
  %5526 = phi float [ %5659, %5653 ], [ %5494, %5518 ]
  %5527 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5520)  ; FirstbitLo(value)
  %5528 = add i32 %5527, %5501
  %5529 = and i32 %5527, 31
  %5530 = shl i32 1, %5529
  %5531 = xor i32 %5530, %5520
  %5532 = mul i32 %5528, 112
  %5533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5532, i32 undef)  ; BufferLoad(srv,index,wot)
  %5534 = extractvalue %dx.types.ResRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.ResRet.f32 %5533, 1
  %5536 = extractvalue %dx.types.ResRet.f32 %5533, 2
  %5537 = or i32 %5532, 12
  %5538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5537, i32 undef)  ; BufferLoad(srv,index,wot)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = add i32 %5532, 16
  %5541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5540, i32 undef)  ; BufferLoad(srv,index,wot)
  %5542 = extractvalue %dx.types.ResRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.ResRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.ResRet.f32 %5541, 2
  %5545 = add i32 %5532, 28
  %5546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5545, i32 undef)  ; BufferLoad(srv,index,wot)
  %5547 = extractvalue %dx.types.ResRet.i32 %5546, 0
  %5548 = add i32 %5532, 44
  %5549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5548, i32 undef)  ; BufferLoad(srv,index,wot)
  %5550 = extractvalue %dx.types.ResRet.f32 %5549, 0
  %5551 = add i32 %5532, 48
  %5552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5551, i32 undef)  ; BufferLoad(srv,index,wot)
  %5553 = extractvalue %dx.types.ResRet.f32 %5552, 0
  %5554 = extractvalue %dx.types.ResRet.f32 %5552, 1
  %5555 = extractvalue %dx.types.ResRet.f32 %5552, 2
  %5556 = extractvalue %dx.types.ResRet.f32 %5552, 3
  %5557 = add i32 %5532, 64
  %5558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5557, i32 undef)  ; BufferLoad(srv,index,wot)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 0
  %5560 = extractvalue %dx.types.ResRet.f32 %5558, 1
  %5561 = extractvalue %dx.types.ResRet.f32 %5558, 2
  %5562 = extractvalue %dx.types.ResRet.f32 %5558, 3
  %5563 = add i32 %5532, 80
  %5564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5563, i32 undef)  ; BufferLoad(srv,index,wot)
  %5565 = extractvalue %dx.types.ResRet.f32 %5564, 1
  %5566 = extractvalue %dx.types.ResRet.f32 %5564, 2
  %5567 = add i32 %5532, 92
  %5568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5567, i32 undef)  ; BufferLoad(srv,index,wot)
  %5569 = extractvalue %dx.types.ResRet.i32 %5568, 0
  %5570 = call float @dx.op.dot3.f32(i32 55, float %5534, float %5535, float %5536, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5571 = select i1 %236, float %5565, float %5534
  %5572 = select i1 %236, float %5570, float %5535
  %5573 = select i1 %236, float %5566, float %5536
  %5574 = and i32 %5569, 65535
  %5575 = uitofp i32 %5574 to float
  %5576 = lshr i32 %5569, 16
  %5577 = uitofp i32 %5576 to float
  %5578 = and i32 %5547, 65535
  %5579 = and i32 %5547, 50331648
  %5580 = icmp eq i32 %5579, 33554432
  %5581 = fsub fast float %5553, %145
  %5582 = fsub fast float %5554, %146
  %5583 = fsub fast float %5555, %147
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5583, float %5581, float %5582, float %5583)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = call float @dx.op.unary.f32(i32 24, float %5584)  ; Sqrt(value)
  %5586 = fdiv fast float 1.000000e+00, %5585
  %5587 = fmul fast float %5586, %5581
  %5588 = fmul fast float %5586, %5582
  %5589 = fmul fast float %5586, %5583
  %5590 = fadd fast float %5585, %5539
  %5591 = fdiv fast float 1.000000e+00, %5590
  %5592 = fmul float %5550, %5591
  %5593 = fmul float %5592, %5592
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  br i1 %5580, label %5595, label %5616

; <label>:5595                                    ; preds = %5519
  %5596 = fmul fast float %5561, %5542
  %5597 = fmul fast float %5561, %5543
  %5598 = fmul fast float %5561, %5544
  %5599 = fadd fast float %5581, %5596
  %5600 = fadd fast float %5582, %5597
  %5601 = fadd fast float %5583, %5598
  %5602 = call float @dx.op.dot3.f32(i32 55, float %5599, float %5600, float %5601, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5603 = call float @dx.op.unary.f32(i32 25, float %5602)  ; Rsqrt(value)
  %5604 = fmul fast float %5603, %5599
  %5605 = fmul fast float %5603, %5600
  %5606 = fmul fast float %5603, %5601
  %5607 = fsub fast float %145, %5553
  %5608 = fsub fast float %146, %5554
  %5609 = fsub fast float %147, %5555
  %5610 = fsub fast float -0.000000e+00, %5607
  %5611 = fsub fast float -0.000000e+00, %5608
  %5612 = fsub fast float -0.000000e+00, %5609
  %5613 = call float @dx.op.dot3.f32(i32 55, float %5610, float %5611, float %5612, float %5542, float %5543, float %5544)  ; Dot3(ax,ay,az,bx,by,bz)
  %5614 = fcmp fast ogt float %5613, 0.000000e+00
  %5615 = uitofp i1 %5614 to float
  br label %5616

; <label>:5616                                    ; preds = %5595, %5519
  %5617 = phi float [ %5615, %5595 ], [ 1.000000e+00, %5519 ]
  %5618 = phi float [ %5604, %5595 ], [ %5587, %5519 ]
  %5619 = phi float [ %5605, %5595 ], [ %5588, %5519 ]
  %5620 = phi float [ %5606, %5595 ], [ %5589, %5519 ]
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5543, float %5544, float %5618, float %5619, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = fmul fast float %5621, %5621
  %5623 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = fmul fast float %5624, 5.000000e-01
  %5626 = fcmp fast ogt float %5621, 0.000000e+00
  %5627 = fsub fast float 1.000000e+00, %5625
  %5628 = select i1 %5626, float %5625, float %5627
  %5629 = fmul fast float %5628, %5577
  %5630 = fadd fast float %5629, %5575
  %5631 = fmul fast float %5630, 0x3EF0001000000000
  %5632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %5631, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5633 = extractvalue %dx.types.ResRet.f32 %5632, 0
  %5634 = fmul fast float %5621, %5559
  %5635 = fadd fast float %5634, %5560
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = select i1 %5580, float 1.000000e+00, float %5636
  %5638 = select i1 %5580, float %5636, float 1.000000e+00
  %5639 = fmul fast float %5585, %5556
  %5640 = fsub fast float 1.000000e+00, %5639
  %5641 = fmul fast float %5640, %5562
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = fmul fast float %5642, %5638
  %5644 = fmul fast float %5643, 2.000000e+00
  %5645 = fsub fast float 3.000000e+00, %5644
  %5646 = fmul fast float %5633, %5617
  %5647 = fmul fast float %5643, %5643
  %5648 = fmul fast float %5647, %5646
  %5649 = fmul fast float %5648, %5645
  %5650 = call float @dx.op.binary.f32(i32 36, float %5649, float %5649)  ; FMin(a,b)
  %5651 = call float @dx.op.binary.f32(i32 36, float %5649, float %5650)  ; FMin(a,b)
  %5652 = fcmp fast ogt float %5651, 0.000000e+00
  br i1 %5652, label %5661, label %5653, !dx.controlflow.hints !133

; <label>:5653                                    ; preds = %6004, %5761, %5616
  %5654 = phi float [ %5521, %5761 ], [ %5521, %5616 ], [ %6044, %6004 ]
  %5655 = phi float [ %5522, %5761 ], [ %5522, %5616 ], [ %6045, %6004 ]
  %5656 = phi float [ %5523, %5761 ], [ %5523, %5616 ], [ %6046, %6004 ]
  %5657 = phi float [ %5524, %5761 ], [ %5524, %5616 ], [ %6038, %6004 ]
  %5658 = phi float [ %5525, %5761 ], [ %5525, %5616 ], [ %6039, %6004 ]
  %5659 = phi float [ %5526, %5761 ], [ %5526, %5616 ], [ %6040, %6004 ]
  %5660 = icmp eq i32 %5520, %5530
  br i1 %5660, label %6047, label %5519

; <label>:5661                                    ; preds = %5616
  %5662 = icmp eq i32 %5578, 255
  br i1 %5662, label %5761, label %5663, !dx.controlflow.hints !134

; <label>:5663                                    ; preds = %5661
  %5664 = mul nuw nsw i32 %5578, 176
  %5665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5664, i32 undef)  ; BufferLoad(srv,index,wot)
  %5666 = extractvalue %dx.types.ResRet.f32 %5665, 0
  %5667 = extractvalue %dx.types.ResRet.f32 %5665, 1
  %5668 = extractvalue %dx.types.ResRet.f32 %5665, 2
  %5669 = extractvalue %dx.types.ResRet.f32 %5665, 3
  %5670 = add nuw nsw i32 %5664, 16
  %5671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5670, i32 undef)  ; BufferLoad(srv,index,wot)
  %5672 = extractvalue %dx.types.ResRet.f32 %5671, 0
  %5673 = extractvalue %dx.types.ResRet.f32 %5671, 1
  %5674 = add nuw nsw i32 %5664, 32
  %5675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5674, i32 undef)  ; BufferLoad(srv,index,wot)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.ResRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.ResRet.f32 %5675, 2
  %5679 = add nuw nsw i32 %5664, 48
  %5680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5679, i32 undef)  ; BufferLoad(srv,index,wot)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.ResRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.ResRet.f32 %5680, 2
  %5684 = extractvalue %dx.types.ResRet.f32 %5680, 3
  %5685 = add nuw nsw i32 %5664, 64
  %5686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5685, i32 undef)  ; BufferLoad(srv,index,wot)
  %5687 = extractvalue %dx.types.ResRet.f32 %5686, 0
  %5688 = extractvalue %dx.types.ResRet.f32 %5686, 1
  %5689 = extractvalue %dx.types.ResRet.f32 %5686, 2
  %5690 = extractvalue %dx.types.ResRet.f32 %5686, 3
  %5691 = add nuw nsw i32 %5664, 80
  %5692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5691, i32 undef)  ; BufferLoad(srv,index,wot)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.ResRet.f32 %5692, 1
  %5695 = extractvalue %dx.types.ResRet.f32 %5692, 2
  %5696 = extractvalue %dx.types.ResRet.f32 %5692, 3
  %5697 = add nuw nsw i32 %5664, 96
  %5698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5697, i32 undef)  ; BufferLoad(srv,index,wot)
  %5699 = extractvalue %dx.types.ResRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.ResRet.f32 %5698, 1
  %5701 = extractvalue %dx.types.ResRet.f32 %5698, 2
  %5702 = extractvalue %dx.types.ResRet.f32 %5698, 3
  %5703 = bitcast float %5673 to i32
  %5704 = fmul fast float %5678, %74
  %5705 = fmul fast float %5678, %75
  %5706 = fmul fast float %5678, %76
  %5707 = fadd fast float %5704, %145
  %5708 = fadd fast float %5705, %146
  %5709 = fadd fast float %5706, %147
  %5710 = fmul fast float %5707, %5681
  %5711 = call float @dx.op.tertiary.f32(i32 46, float %5708, float %5687, float %5710)  ; FMad(a,b,c)
  %5712 = call float @dx.op.tertiary.f32(i32 46, float %5709, float %5693, float %5711)  ; FMad(a,b,c)
  %5713 = fadd fast float %5712, %5699
  %5714 = fmul fast float %5707, %5682
  %5715 = call float @dx.op.tertiary.f32(i32 46, float %5708, float %5688, float %5714)  ; FMad(a,b,c)
  %5716 = call float @dx.op.tertiary.f32(i32 46, float %5709, float %5694, float %5715)  ; FMad(a,b,c)
  %5717 = fadd fast float %5716, %5700
  %5718 = fmul fast float %5707, %5683
  %5719 = call float @dx.op.tertiary.f32(i32 46, float %5708, float %5689, float %5718)  ; FMad(a,b,c)
  %5720 = call float @dx.op.tertiary.f32(i32 46, float %5709, float %5695, float %5719)  ; FMad(a,b,c)
  %5721 = fadd fast float %5720, %5701
  %5722 = fmul fast float %5707, %5684
  %5723 = call float @dx.op.tertiary.f32(i32 46, float %5708, float %5690, float %5722)  ; FMad(a,b,c)
  %5724 = call float @dx.op.tertiary.f32(i32 46, float %5709, float %5696, float %5723)  ; FMad(a,b,c)
  %5725 = fadd fast float %5724, %5702
  %5726 = fdiv fast float %5713, %5725
  %5727 = fdiv fast float %5717, %5725
  %5728 = fdiv fast float %5721, %5725
  %5729 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5728)  ; FMax(a,b)
  %5730 = fmul fast float %247, 0x401921FB60000000
  %5731 = call float @dx.op.unary.f32(i32 13, float %5730)  ; Sin(value)
  %5732 = call float @dx.op.unary.f32(i32 12, float %5730)  ; Cos(value)
  %5733 = fsub fast float -0.000000e+00, %5731
  %5734 = fmul fast float %5668, 5.000000e-01
  %5735 = call float @dx.op.dot2.f32(i32 54, float %247, float %247, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %5736 = call float @dx.op.unary.f32(i32 22, float %5735)  ; Frc(value)
  %5737 = fmul fast float %5736, 0x404A7DD040000000
  %5738 = call float @dx.op.unary.f32(i32 22, float %5737)  ; Frc(value)
  %5739 = fmul fast float %5738, %5677
  %5740 = fadd fast float %5739, %5734
  %5741 = call float @dx.op.tertiary.f32(i32 46, float %5740, float %5733, float 0.000000e+00)  ; FMad(a,b,c)
  %5742 = call float @dx.op.tertiary.f32(i32 46, float %5740, float %5732, float 0.000000e+00)  ; FMad(a,b,c)
  %5743 = fadd fast float %5741, %5726
  %5744 = fadd fast float %5742, %5727
  %5745 = fmul fast float %5743, %5672
  %5746 = fmul fast float %5744, %5672
  %5747 = call float @dx.op.binary.f32(i32 35, float %5745, float %5668)  ; FMax(a,b)
  %5748 = call float @dx.op.binary.f32(i32 35, float %5746, float %5668)  ; FMax(a,b)
  %5749 = call float @dx.op.binary.f32(i32 36, float %5747, float %5669)  ; FMin(a,b)
  %5750 = call float @dx.op.binary.f32(i32 36, float %5748, float %5669)  ; FMin(a,b)
  %5751 = fadd fast float %5749, %5666
  %5752 = fadd fast float %5750, %5667
  %5753 = uitofp i32 %5703 to float
  %5754 = fadd fast float %5729, %5676
  %5755 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %5751, float %5752, float %5753, float undef, i32 0, i32 0, i32 undef, float %5754)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5756 = extractvalue %dx.types.ResRet.f32 %5755, 0
  %5757 = fadd fast float %5756, -1.000000e+00
  %5758 = fmul fast float %5757, %5637
  %5759 = fadd fast float %5758, 1.000000e+00
  %5760 = fmul fast float %5759, %5649
  br label %5761

; <label>:5761                                    ; preds = %5663, %5661
  %5762 = phi float [ %5760, %5663 ], [ %5649, %5661 ]
  %5763 = call float @dx.op.binary.f32(i32 36, float %5762, float %5762)  ; FMin(a,b)
  %5764 = call float @dx.op.binary.f32(i32 36, float %5762, float %5763)  ; FMin(a,b)
  %5765 = fcmp fast ogt float %5764, 0.000000e+00
  br i1 %5765, label %5766, label %5653, !dx.controlflow.hints !135

; <label>:5766                                    ; preds = %5761
  %5767 = fmul fast float %5762, %5571
  %5768 = fmul fast float %5762, %5572
  %5769 = fmul fast float %5762, %5573
  %5770 = fsub fast float %5555, %2783
  %5771 = fcmp fast ogt float %5770, 0.000000e+00
  %5772 = fsub fast float %147, %2783
  %5773 = fcmp fast ogt float %5772, 0.000000e+00
  %5774 = xor i1 %5773, %5771
  %5775 = fsub fast float %2783, %5555
  %5776 = fmul fast float %5775, 2.000000e+00
  %5777 = fadd fast float %5776, %5555
  %5778 = select i1 %5774, float %5555, float %5777
  %5779 = fsub fast float %5778, %147
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5779, float %5581, float %5582, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = call float @dx.op.unary.f32(i32 25, float %5780)  ; Rsqrt(value)
  %5782 = fmul fast float %5781, %5581
  %5783 = fmul fast float %5781, %5582
  %5784 = fmul fast float %5781, %5779
  %5785 = fsub fast float %2783, %147
  %5786 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5785)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = fdiv fast float 1.000000e+00, %5787
  %5789 = fmul fast float %5788, %5786
  %5790 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5772, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = fcmp fast ogt float %5790, 0.000000e+00
  %5792 = fcmp fast olt float %5790, 0.000000e+00
  %5793 = zext i1 %5791 to i32
  %5794 = zext i1 %5792 to i32
  %5795 = sub nsw i32 %5793, %5794
  %5796 = sitofp i32 %5795 to float
  %5797 = fsub fast float %5778, %2783
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5797, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = fcmp fast ogt float %5798, 0.000000e+00
  %5800 = fcmp fast olt float %5798, 0.000000e+00
  %5801 = zext i1 %5799 to i32
  %5802 = zext i1 %5800 to i32
  %5803 = sub nsw i32 %5801, %5802
  %5804 = sitofp i32 %5803 to float
  %5805 = fcmp fast une float %5796, %5804
  br i1 %5805, label %5806, label %5816

; <label>:5806                                    ; preds = %5766
  %5807 = fmul fast float %5789, %5784
  %5808 = fmul fast float %5789, %5783
  %5809 = fmul fast float %5789, %5782
  %5810 = fmul fast float %5809, %5809
  %5811 = fmul fast float %5808, %5808
  %5812 = fadd fast float %5810, %5811
  %5813 = fmul fast float %5807, %5807
  %5814 = fadd fast float %5812, %5813
  %5815 = call float @dx.op.unary.f32(i32 24, float %5814)  ; Sqrt(value)
  br label %5828

; <label>:5816                                    ; preds = %5766
  %5817 = icmp slt i32 %5795, 0
  br i1 %5817, label %5818, label %5828

; <label>:5818                                    ; preds = %5816
  %5819 = fsub fast float %145, %5553
  %5820 = fsub fast float %146, %5554
  %5821 = fsub fast float %147, %5778
  %5822 = fmul fast float %5819, %5819
  %5823 = fmul fast float %5820, %5820
  %5824 = fadd fast float %5822, %5823
  %5825 = fmul fast float %5821, %5821
  %5826 = fadd fast float %5824, %5825
  %5827 = call float @dx.op.unary.f32(i32 24, float %5826)  ; Sqrt(value)
  br label %5828

; <label>:5828                                    ; preds = %5818, %5816, %5806
  %5829 = phi float [ %5815, %5806 ], [ %5827, %5818 ], [ 0.000000e+00, %5816 ]
  %5830 = and i1 %5773, %5771
  %5831 = fsub fast float -0.000000e+00, %5829
  %5832 = select i1 %5830, float -0.000000e+00, float %5831
  %5833 = fmul fast float %2784, 0x3FF7154760000000
  %5834 = fmul fast float %5833, %5832
  %5835 = fmul fast float %2785, 0x3FF7154760000000
  %5836 = fmul fast float %5835, %5832
  %5837 = fmul fast float %2786, 0x3FF7154760000000
  %5838 = fmul fast float %5837, %5832
  %5839 = call float @dx.op.unary.f32(i32 21, float %5834)  ; Exp(value)
  %5840 = call float @dx.op.unary.f32(i32 21, float %5836)  ; Exp(value)
  %5841 = call float @dx.op.unary.f32(i32 21, float %5838)  ; Exp(value)
  %5842 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  %5843 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  %5844 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5845 = fmul fast float %5767, %5842
  %5846 = fmul fast float %5768, %5843
  %5847 = fmul fast float %5769, %5844
  %5848 = fsub fast float %5587, %2983
  %5849 = fsub fast float %5588, %2982
  %5850 = fsub fast float %5589, %2981
  %5851 = call float @dx.op.dot3.f32(i32 55, float %5848, float %5849, float %5850, float %5848, float %5849, float %5850)  ; Dot3(ax,ay,az,bx,by,bz)
  %5852 = call float @dx.op.unary.f32(i32 25, float %5851)  ; Rsqrt(value)
  %5853 = fmul fast float %5852, %5848
  %5854 = fmul fast float %5852, %5849
  %5855 = fmul fast float %5852, %5850
  %5856 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %2990, float %2991, float %2992)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = call float @dx.op.dot3.f32(i32 55, float %2980, float %2979, float %2978, float %5853, float %5854, float %5855)  ; Dot3(ax,ay,az,bx,by,bz)
  %5858 = call float @dx.op.unary.f32(i32 7, float %5856)  ; Saturate(value)
  %5859 = fmul fast float %5858, %5594
  %5860 = bitcast i32 %3010 to float
  %5861 = fmul fast float %5858, %5858
  %5862 = fmul fast float %5861, %5860
  %5863 = call float @dx.op.unary.f32(i32 7, float %5862)  ; Saturate(value)
  %5864 = fmul fast float %5859, %5863
  %5865 = bitcast float %5584 to i32
  %5866 = ashr i32 %5865, 1
  %5867 = sub nsw i32 1597463007, %5866
  %5868 = bitcast i32 %5867 to float
  %5869 = fmul fast float %5868, %5581
  %5870 = fmul fast float %5868, %5582
  %5871 = fmul fast float %5868, %5583
  %5872 = fsub fast float %5869, %2983
  %5873 = fsub fast float %5870, %2982
  %5874 = fsub fast float %5871, %2981
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5872, float %5873, float %5874)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = call float @dx.op.unary.f32(i32 25, float %5875)  ; Rsqrt(value)
  %5877 = fmul fast float %5872, %5876
  %5878 = fmul fast float %5873, %5876
  %5879 = fmul fast float %5874, %5876
  %5880 = call float @dx.op.dot3.f32(i32 55, float %2990, float %2991, float %2992, float %5877, float %5878, float %5879)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = fmul fast float %5880, %5880
  %5882 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %5883 = fsub fast float 1.000000e+00, %2993
  %5884 = call float @dx.op.binary.f32(i32 35, float %5883, float 0x3F847AE140000000)  ; FMax(a,b)
  %5885 = fmul fast float %5884, %5884
  %5886 = fmul fast float %5885, %5885
  %5887 = fsub fast float 1.000000e+00, %5886
  %5888 = fmul fast float %2998, %2998
  %5889 = fmul fast float %5888, %5887
  %5890 = fadd fast float %5889, %5886
  %5891 = bitcast float %5890 to i32
  %5892 = ashr i32 %5891, 1
  %5893 = add nsw i32 %5892, 532487669
  %5894 = bitcast i32 %5893 to float
  %5895 = fadd fast float %5894, %2998
  %5896 = fmul fast float %5886, %5881
  %5897 = fsub fast float 1.000000e+00, %5881
  %5898 = fadd fast float %5897, %5896
  %5899 = fmul fast float %5882, %5882
  %5900 = fmul fast float %5899, %5887
  %5901 = fadd fast float %5900, %5886
  %5902 = bitcast float %5901 to i32
  %5903 = ashr i32 %5902, 1
  %5904 = add nsw i32 %5903, 532487669
  %5905 = bitcast i32 %5904 to float
  %5906 = fadd fast float %5905, %5882
  %5907 = fmul fast float %5898, %5898
  %5908 = fmul fast float %5907, %5895
  %5909 = fmul fast float %5908, %5906
  %5910 = fdiv fast float 1.000000e+00, %5909
  %5911 = bitcast float %5886 to i32
  %5912 = sitofp i32 %5911 to float
  %5913 = fmul fast float %5912, 0x3FE7F73180000000
  %5914 = fadd fast float %5913, 0x41AFE27C40000000
  %5915 = fptosi float %5914 to i32
  %5916 = bitcast i32 %5915 to float
  %5917 = fmul fast float %5550, 0x3FD80E9D60000000
  %5918 = fmul fast float %5917, %5868
  %5919 = fadd fast float %5916, %5918
  %5920 = bitcast float %5919 to i32
  %5921 = sub nsw i32 2129859010, %5920
  %5922 = bitcast i32 %5921 to float
  %5923 = fmul fast float %5886, %5910
  %5924 = fmul fast float %5923, %5916
  %5925 = fmul fast float %5924, %5922
  %5926 = call float @dx.op.unary.f32(i32 6, float %5857)  ; FAbs(value)
  %5927 = fsub fast float 1.000000e+00, %5926
  %5928 = bitcast float %5927 to i32
  %5929 = sitofp i32 %5928 to float
  %5930 = fmul fast float %5929, 5.000000e+00
  %5931 = fadd fast float %5930, 0xC1EFBF8940000000
  %5932 = fptosi float %5931 to i32
  %5933 = bitcast i32 %5932 to float
  %5934 = fsub fast float 1.000000e+00, %2987
  %5935 = fsub fast float 1.000000e+00, %2988
  %5936 = fsub fast float 1.000000e+00, %2996
  %5937 = fmul fast float %5933, %5934
  %5938 = fmul fast float %5933, %5935
  %5939 = fmul fast float %5933, %5936
  %5940 = fadd fast float %5937, %2987
  %5941 = fadd fast float %5938, %2988
  %5942 = fadd fast float %5939, %2996
  br i1 %4275, label %5943, label %5966

; <label>:5943                                    ; preds = %5828
  %5944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2361, float %5926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5945 = extractvalue %dx.types.ResRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.ResRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.ResRet.f32 %5944, 2
  %5948 = fadd fast float %5945, -5.000000e-01
  %5949 = fadd fast float %5946, -5.000000e-01
  %5950 = fadd fast float %5947, -5.000000e-01
  %5951 = fmul fast float %2987, 4.000000e+00
  %5952 = fmul fast float %5951, %5934
  %5953 = fmul fast float %5952, %5948
  %5954 = fmul fast float %2988, 4.000000e+00
  %5955 = fmul fast float %5954, %5935
  %5956 = fmul fast float %5955, %5949
  %5957 = fmul fast float %2996, 4.000000e+00
  %5958 = fmul fast float %5957, %5936
  %5959 = fmul fast float %5958, %5950
  %5960 = fadd fast float %5953, %5940
  %5961 = fadd fast float %5956, %5941
  %5962 = fadd fast float %5959, %5942
  %5963 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5964 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5965 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  br label %5966

; <label>:5966                                    ; preds = %5943, %5828
  %5967 = phi float [ %5963, %5943 ], [ %5940, %5828 ]
  %5968 = phi float [ %5964, %5943 ], [ %5941, %5828 ]
  %5969 = phi float [ %5965, %5943 ], [ %5942, %5828 ]
  %5970 = fmul fast float %5856, 9.843750e-01
  %5971 = fadd fast float %5970, 7.812500e-03
  %5972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5971, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5973 = extractvalue %dx.types.ResRet.f32 %5972, 2
  %5974 = extractvalue %dx.types.ResRet.f32 %5972, 3
  %5975 = fmul fast float %5973, %2987
  %5976 = fmul fast float %5973, %2988
  %5977 = fmul fast float %5973, %2996
  %5978 = fadd fast float %5975, %5974
  %5979 = fadd fast float %5976, %5974
  %5980 = fadd fast float %5977, %5974
  br i1 %4275, label %5981, label %6004

; <label>:5981                                    ; preds = %5966
  %5982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %2361, float %5856, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5983 = extractvalue %dx.types.ResRet.f32 %5982, 0
  %5984 = extractvalue %dx.types.ResRet.f32 %5982, 1
  %5985 = extractvalue %dx.types.ResRet.f32 %5982, 2
  %5986 = fadd fast float %5983, -5.000000e-01
  %5987 = fadd fast float %5984, -5.000000e-01
  %5988 = fadd fast float %5985, -5.000000e-01
  %5989 = fmul fast float %2987, 4.000000e+00
  %5990 = fmul fast float %5989, %5934
  %5991 = fmul fast float %5990, %5986
  %5992 = fmul fast float %2988, 4.000000e+00
  %5993 = fmul fast float %5992, %5935
  %5994 = fmul fast float %5993, %5987
  %5995 = fmul fast float %2996, 4.000000e+00
  %5996 = fmul fast float %5995, %5936
  %5997 = fmul fast float %5996, %5988
  %5998 = fadd fast float %5991, %5978
  %5999 = fadd fast float %5994, %5979
  %6000 = fadd fast float %5997, %5980
  %6001 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6002 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  %6003 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  br label %6004

; <label>:6004                                    ; preds = %5981, %5966
  %6005 = phi float [ %6001, %5981 ], [ %5978, %5966 ]
  %6006 = phi float [ %6002, %5981 ], [ %5979, %5966 ]
  %6007 = phi float [ %6003, %5981 ], [ %5980, %5966 ]
  %6008 = call float @dx.op.binary.f32(i32 35, float %6006, float %6007)  ; FMax(a,b)
  %6009 = call float @dx.op.binary.f32(i32 35, float %6005, float %6008)  ; FMax(a,b)
  %6010 = fsub fast float 1.000000e+00, %6009
  %6011 = fmul fast float %5967, %5925
  %6012 = fmul fast float %5968, %5925
  %6013 = fmul fast float %5969, %5925
  %6014 = fsub fast float 1.000000e+00, %5857
  %6015 = bitcast float %6014 to i32
  %6016 = sitofp i32 %6015 to float
  %6017 = fmul fast float %6016, 5.000000e+00
  %6018 = fadd fast float %6017, 0xC1EFBF8940000000
  %6019 = fptosi float %6018 to i32
  %6020 = bitcast i32 %6019 to float
  %6021 = fmul fast float %6020, %2360
  %6022 = fmul fast float %6010, %6021
  %6023 = fmul fast float %6022, %4325
  %6024 = fmul fast float %6022, %4326
  %6025 = fmul fast float %6022, %4327
  %6026 = fadd fast float %6023, %6011
  %6027 = fadd fast float %6024, %6012
  %6028 = fadd fast float %6025, %6013
  %6029 = fmul fast float %5845, %2381
  %6030 = fmul fast float %6029, %5864
  %6031 = fmul fast float %6030, %6010
  %6032 = fmul fast float %5846, %2381
  %6033 = fmul fast float %6032, %5864
  %6034 = fmul fast float %6033, %6010
  %6035 = fmul fast float %5847, %2381
  %6036 = fmul fast float %6035, %5864
  %6037 = fmul fast float %6036, %6010
  %6038 = fadd fast float %6031, %5524
  %6039 = fadd fast float %6034, %5525
  %6040 = fadd fast float %6037, %5526
  %6041 = fmul fast float %6030, %6026
  %6042 = fmul fast float %6033, %6027
  %6043 = fmul fast float %6036, %6028
  %6044 = fadd fast float %6041, %5521
  %6045 = fadd fast float %6042, %5522
  %6046 = fadd fast float %6043, %5523
  br label %5653

; <label>:6047                                    ; preds = %5653
  br label %6048

; <label>:6048                                    ; preds = %6047, %5487
  %6049 = phi float [ %5489, %5487 ], [ %5654, %6047 ]
  %6050 = phi float [ %5490, %5487 ], [ %5655, %6047 ]
  %6051 = phi float [ %5491, %5487 ], [ %5656, %6047 ]
  %6052 = phi float [ %5492, %5487 ], [ %5657, %6047 ]
  %6053 = phi float [ %5493, %5487 ], [ %5658, %6047 ]
  %6054 = phi float [ %5494, %5487 ], [ %5659, %6047 ]
  %6055 = add i32 %5488, 1
  %6056 = icmp ugt i32 %6055, %5484
  br i1 %6056, label %6057, label %5487

; <label>:6057                                    ; preds = %6048
  br label %6058

; <label>:6058                                    ; preds = %6057, %5437, %5427
  %6059 = phi float [ %5428, %5427 ], [ %5428, %5437 ], [ %6049, %6057 ]
  %6060 = phi float [ %5429, %5427 ], [ %5429, %5437 ], [ %6050, %6057 ]
  %6061 = phi float [ %5430, %5427 ], [ %5430, %5437 ], [ %6051, %6057 ]
  %6062 = phi float [ %5431, %5427 ], [ %5431, %5437 ], [ %6052, %6057 ]
  %6063 = phi float [ %5432, %5427 ], [ %5432, %5437 ], [ %6053, %6057 ]
  %6064 = phi float [ %5433, %5427 ], [ %5433, %5437 ], [ %6054, %6057 ]
  %6065 = fmul fast float %2381, %2381
  %6066 = fsub fast float 1.000000e+00, %6065
  %6067 = call float @dx.op.dot3.f32(i32 55, float %6066, float %6066, float %6066, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6068 = fsub fast float 1.000000e+00, %6067
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6071 = fmul fast float %6070, %4331
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 3
  %6074 = fsub fast float 1.000000e+00, %2359
  %6075 = call float @dx.op.unary.f32(i32 7, float %6074)  ; Saturate(value)
  %6076 = fadd fast float %6064, %2358
  %6077 = fmul fast float %6076, %2359
  %6078 = fmul fast float %6075, %6073
  %6079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6079, 3
  %6081 = fmul fast float %6062, %2984
  %6082 = fmul fast float %6063, %2985
  %6083 = fmul fast float %6064, %2986
  %6084 = fcmp fast ogt float %89, %196
  %6085 = and i1 %6084, %2789
  %6086 = or i1 %2795, %6085
  %6087 = icmp eq i32 %2788, 2
  %6088 = fcmp fast ole float %89, %196
  %6089 = and i1 %6088, %6087
  %6090 = or i1 %6089, %6086
  br i1 %6085, label %6091, label %6350

; <label>:6091                                    ; preds = %6058
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 2
  %6094 = extractvalue %dx.types.CBufRet.f32 %6092, 3
  %6095 = fmul fast float %6093, %98
  %6096 = fmul fast float %6094, %99
  %6097 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6098 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  %6099 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6097, float %6098, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6100 = extractvalue %dx.types.ResRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.ResRet.f32 %6099, 1
  %6102 = extractvalue %dx.types.ResRet.f32 %6099, 2
  %6103 = extractvalue %dx.types.ResRet.f32 %6099, 3
  %6104 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6097, float %6098, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6105 = extractvalue %dx.types.ResRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.ResRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.ResRet.f32 %6104, 2
  %6108 = extractvalue %dx.types.ResRet.f32 %6104, 3
  %6109 = call float @dx.op.binary.f32(i32 35, float %6101, float %6102)  ; FMax(a,b)
  %6110 = call float @dx.op.binary.f32(i32 35, float %6100, float %6109)  ; FMax(a,b)
  %6111 = call float @dx.op.binary.f32(i32 35, float %6110, float %6103)  ; FMax(a,b)
  %6112 = call float @dx.op.binary.f32(i32 36, float %6106, float %6107)  ; FMin(a,b)
  %6113 = call float @dx.op.binary.f32(i32 36, float %6105, float %6112)  ; FMin(a,b)
  %6114 = call float @dx.op.binary.f32(i32 36, float %6113, float %6108)  ; FMin(a,b)
  %6115 = fmul fast float %6111, 2.550000e+02
  %6116 = fadd fast float %6115, 0x3F70101020000000
  %6117 = fptoui float %6116 to i32
  %6118 = fmul fast float %6114, 2.550000e+02
  %6119 = fadd fast float %6118, 0x3F70101020000000
  %6120 = fptoui float %6119 to i32
  %6121 = icmp ult i32 %6117, %6120
  br i1 %6121, label %6122, label %6290

; <label>:6122                                    ; preds = %6091
  %6123 = fcmp fast ogt float %88, 9.843750e-01
  %6124 = fadd fast float %89, -4.000000e+00
  %6125 = select i1 %6123, float -4.000000e+00, float %6124
  %6126 = call float @dx.op.binary.f32(i32 35, float %6125, float 0.000000e+00)  ; FMax(a,b)
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = fadd fast float %6128, %6126
  %6130 = extractvalue %dx.types.CBufRet.f32 %6127, 2
  %6131 = fmul fast float %6129, %6130
  %6132 = call float @dx.op.unary.f32(i32 23, float %6131)  ; Log(value)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6127, 3
  %6134 = fmul fast float %6133, %6132
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 2
  %6137 = fmul fast float %6134, %6136
  %6138 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6139 = uitofp i32 %6117 to float
  %6140 = uitofp i32 %6120 to float
  %6141 = fadd fast float %6139, 5.000000e-01
  %6142 = fadd fast float %6140, 5.000000e-01
  %6143 = fmul fast float %6136, %6141
  %6144 = fmul fast float %6136, %6142
  %6145 = fadd fast float %6143, 0x3F0FFB4800000000
  %6146 = fadd fast float %6144, 0xBF0FFB4800000000
  %6147 = call float @dx.op.binary.f32(i32 35, float %6138, float %6145)  ; FMax(a,b)
  %6148 = call float @dx.op.binary.f32(i32 36, float %6147, float %6146)  ; FMin(a,b)
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 1
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 2
  %6152 = extractvalue %dx.types.CBufRet.f32 %6149, 0
  %6153 = fmul fast float %6150, %6148
  %6154 = fadd fast float %6152, %6153
  %6155 = fadd fast float %6152, %6151
  %6156 = fsub fast float %6150, %6151
  %6157 = fadd fast float %6156, %6152
  %6158 = call float @dx.op.binary.f32(i32 35, float %6154, float %6155)  ; FMax(a,b)
  %6159 = call float @dx.op.binary.f32(i32 36, float %6158, float %6157)  ; FMin(a,b)
  %6160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6097, float %6098, float %6159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6161 = extractvalue %dx.types.ResRet.f32 %6160, 0
  %6162 = extractvalue %dx.types.ResRet.f32 %6160, 1
  %6163 = extractvalue %dx.types.ResRet.f32 %6160, 2
  %6164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.i32 %6164, 0
  %6166 = extractvalue %dx.types.CBufRet.i32 %6164, 1
  %6167 = uitofp i32 %6165 to float
  %6168 = uitofp i32 %6166 to float
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 0
  %6171 = extractvalue %dx.types.CBufRet.f32 %6169, 1
  %6172 = fmul fast float %6167, %6097
  %6173 = fmul fast float %6168, %6098
  %6174 = fadd fast float %6172, -5.000000e-01
  %6175 = fadd fast float %6173, -5.000000e-01
  %6176 = call float @dx.op.unary.f32(i32 22, float %6174)  ; Frc(value)
  %6177 = call float @dx.op.unary.f32(i32 22, float %6175)  ; Frc(value)
  %6178 = fmul fast float %6176, %6176
  %6179 = fmul fast float %6178, %6176
  %6180 = fsub fast float 3.000000e+00, %6176
  %6181 = fmul fast float %6178, %6180
  %6182 = fmul fast float %6176, 3.000000e+00
  %6183 = fmul fast float %6179, 3.000000e+00
  %6184 = fmul fast float %6178, 6.000000e+00
  %6185 = fsub fast float %6183, %6184
  %6186 = fadd fast float %6185, 4.000000e+00
  %6187 = fmul fast float %6186, 0x3FC5555560000000
  %6188 = fmul fast float %6179, -3.000000e+00
  %6189 = fadd fast float %6178, %6176
  %6190 = fmul fast float %6189, 3.000000e+00
  %6191 = fadd fast float %6188, 1.000000e+00
  %6192 = fadd fast float %6191, %6190
  %6193 = fmul fast float %6179, 0x3FC5555560000000
  %6194 = fmul fast float %6177, %6177
  %6195 = fmul fast float %6194, %6177
  %6196 = fsub fast float 3.000000e+00, %6177
  %6197 = fmul fast float %6194, %6196
  %6198 = fmul fast float %6177, 3.000000e+00
  %6199 = fmul fast float %6195, 3.000000e+00
  %6200 = fmul fast float %6194, 6.000000e+00
  %6201 = fsub fast float %6199, %6200
  %6202 = fadd fast float %6201, 4.000000e+00
  %6203 = fmul fast float %6202, 0x3FC5555560000000
  %6204 = fmul fast float %6195, -3.000000e+00
  %6205 = fadd fast float %6194, %6177
  %6206 = fmul fast float %6205, 3.000000e+00
  %6207 = fadd fast float %6204, 1.000000e+00
  %6208 = fadd fast float %6207, %6206
  %6209 = fmul fast float %6195, 0x3FC5555560000000
  %6210 = fadd fast float %6176, 1.000000e+00
  %6211 = fsub fast float 1.000000e+00, %6182
  %6212 = fadd fast float %6211, %6181
  %6213 = fadd fast float %6212, %6186
  %6214 = fmul fast float %6213, 0x3FC5555560000000
  %6215 = fdiv fast float %6187, %6214
  %6216 = fsub fast float %6210, %6215
  %6217 = fsub fast float 1.000000e+00, %6176
  %6218 = fadd fast float %6192, %6179
  %6219 = fmul fast float %6218, 0x3FC5555560000000
  %6220 = fdiv fast float %6193, %6219
  %6221 = fadd fast float %6217, %6220
  %6222 = fadd fast float %6177, 1.000000e+00
  %6223 = fsub fast float 1.000000e+00, %6198
  %6224 = fadd fast float %6223, %6197
  %6225 = fadd fast float %6224, %6202
  %6226 = fmul fast float %6225, 0x3FC5555560000000
  %6227 = fdiv fast float %6203, %6226
  %6228 = fsub fast float %6222, %6227
  %6229 = fsub fast float 1.000000e+00, %6177
  %6230 = fadd fast float %6208, %6195
  %6231 = fmul fast float %6230, 0x3FC5555560000000
  %6232 = fdiv fast float %6209, %6231
  %6233 = fadd fast float %6232, %6229
  %6234 = fmul fast float %6216, %6170
  %6235 = fsub fast float %6097, %6234
  %6236 = fmul fast float %6221, %6170
  %6237 = fadd fast float %6236, %6097
  %6238 = fmul fast float %6233, %6171
  %6239 = fadd fast float %6238, %6098
  %6240 = fmul fast float %6228, %6171
  %6241 = fsub fast float %6098, %6240
  %6242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6235, float %6241, float %6159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6243 = extractvalue %dx.types.ResRet.f32 %6242, 0
  %6244 = extractvalue %dx.types.ResRet.f32 %6242, 1
  %6245 = extractvalue %dx.types.ResRet.f32 %6242, 2
  %6246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6237, float %6241, float %6159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.ResRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.ResRet.f32 %6246, 2
  %6250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6235, float %6239, float %6159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6251 = extractvalue %dx.types.ResRet.f32 %6250, 0
  %6252 = extractvalue %dx.types.ResRet.f32 %6250, 1
  %6253 = extractvalue %dx.types.ResRet.f32 %6250, 2
  %6254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6237, float %6239, float %6159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.ResRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.ResRet.f32 %6254, 2
  %6258 = fsub fast float %6251, %6243
  %6259 = fsub fast float %6252, %6244
  %6260 = fsub fast float %6253, %6245
  %6261 = fmul fast float %6258, %6231
  %6262 = fmul fast float %6259, %6231
  %6263 = fmul fast float %6260, %6231
  %6264 = fadd fast float %6261, %6243
  %6265 = fadd fast float %6262, %6244
  %6266 = fadd fast float %6263, %6245
  %6267 = fsub fast float %6255, %6247
  %6268 = fsub fast float %6256, %6248
  %6269 = fsub fast float %6257, %6249
  %6270 = fmul fast float %6267, %6231
  %6271 = fmul fast float %6268, %6231
  %6272 = fmul fast float %6269, %6231
  %6273 = fsub fast float %6247, %6264
  %6274 = fadd fast float %6273, %6270
  %6275 = fsub fast float %6248, %6265
  %6276 = fadd fast float %6275, %6271
  %6277 = fsub fast float %6249, %6266
  %6278 = fadd fast float %6277, %6272
  %6279 = fmul fast float %6274, %6219
  %6280 = fmul fast float %6276, %6219
  %6281 = fmul fast float %6278, %6219
  %6282 = fadd fast float %6279, %6264
  %6283 = fadd fast float %6280, %6265
  %6284 = fadd fast float %6281, %6266
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 1
  %6287 = fmul fast float %6282, %6286
  %6288 = fmul fast float %6283, %6286
  %6289 = fmul fast float %6284, %6286
  br label %6290

; <label>:6290                                    ; preds = %6122, %6091
  %6291 = phi float [ %6161, %6122 ], [ 1.000000e+00, %6091 ]
  %6292 = phi float [ %6162, %6122 ], [ 1.000000e+00, %6091 ]
  %6293 = phi float [ %6163, %6122 ], [ 1.000000e+00, %6091 ]
  %6294 = phi float [ %6287, %6122 ], [ 0.000000e+00, %6091 ]
  %6295 = phi float [ %6288, %6122 ], [ 0.000000e+00, %6091 ]
  %6296 = phi float [ %6289, %6122 ], [ 0.000000e+00, %6091 ]
  %6297 = fmul fast float %6294, %6068
  %6298 = fmul fast float %6295, %6068
  %6299 = fmul fast float %6296, %6068
  %6300 = call float @dx.op.dot3.f32(i32 55, float %6291, float %6292, float %6293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6301 = call float @dx.op.dot3.f32(i32 55, float %6297, float %6298, float %6299, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = select i1 %236, float %6300, float %6291
  %6303 = select i1 %236, float %6300, float %6292
  %6304 = select i1 %236, float 1.000000e+00, float %6293
  %6305 = select i1 %236, float %6301, float %6297
  %6306 = select i1 %236, float 0.000000e+00, float %6298
  %6307 = select i1 %236, float 0.000000e+00, float %6299
  %6308 = fmul fast float %6302, %6081
  %6309 = fmul fast float %6303, %6082
  %6310 = fmul fast float %6304, %6083
  %6311 = fadd fast float %6308, %6305
  %6312 = fadd fast float %6309, %6306
  %6313 = fadd fast float %6307, %6310
  %6314 = fmul fast float %6302, %6059
  %6315 = fmul fast float %6303, %6060
  %6316 = fmul fast float %6304, %6061
  %6317 = fmul fast float %98, 2.000000e+00
  %6318 = fmul fast float %6317, %6093
  %6319 = fmul fast float %99, 2.000000e+00
  %6320 = fmul fast float %6319, %6094
  %6321 = fsub fast float 1.000000e+00, %6318
  %6322 = fsub fast float 1.000000e+00, %6320
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.CBufRet.f32 %6323, 1
  %6326 = extractvalue %dx.types.CBufRet.f32 %6323, 2
  %6327 = fmul fast float %6321, %6324
  %6328 = fmul fast float %6321, %6325
  %6329 = fmul fast float %6321, %6326
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %6333 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6334 = fmul fast float %6322, %6331
  %6335 = fmul fast float %6322, %6332
  %6336 = fmul fast float %6322, %6333
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 0
  %6339 = extractvalue %dx.types.CBufRet.f32 %6337, 1
  %6340 = extractvalue %dx.types.CBufRet.f32 %6337, 2
  %6341 = fadd fast float %6334, %6338
  %6342 = fadd fast float %6341, %6327
  %6343 = fadd fast float %6335, %6339
  %6344 = fadd fast float %6343, %6328
  %6345 = fadd fast float %6336, %6340
  %6346 = fadd fast float %6345, %6329
  %6347 = fmul fast float %6342, %196
  %6348 = fmul fast float %6344, %196
  %6349 = fmul fast float %6346, %196
  br label %6350

; <label>:6350                                    ; preds = %6290, %6058
  %6351 = phi float [ %6347, %6290 ], [ %145, %6058 ]
  %6352 = phi float [ %6348, %6290 ], [ %146, %6058 ]
  %6353 = phi float [ %6349, %6290 ], [ %147, %6058 ]
  %6354 = phi float [ %196, %6290 ], [ %89, %6058 ]
  %6355 = phi float [ %6311, %6290 ], [ %6081, %6058 ]
  %6356 = phi float [ %6312, %6290 ], [ %6082, %6058 ]
  %6357 = phi float [ %6313, %6290 ], [ %6083, %6058 ]
  %6358 = phi float [ %6314, %6290 ], [ %6059, %6058 ]
  %6359 = phi float [ %6315, %6290 ], [ %6060, %6058 ]
  %6360 = phi float [ %6316, %6290 ], [ %6061, %6058 ]
  %6361 = phi float [ %6291, %6290 ], [ 1.000000e+00, %6058 ]
  br i1 %6090, label %7516, label %6362

; <label>:6362                                    ; preds = %6350
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.CBufRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6367 = extractvalue %dx.types.CBufRet.f32 %6363, 3
  %6368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6368, 0
  %6370 = extractvalue %dx.types.CBufRet.f32 %6368, 1
  %6371 = extractvalue %dx.types.CBufRet.f32 %6368, 2
  %6372 = extractvalue %dx.types.CBufRet.f32 %6368, 3
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 0
  %6375 = extractvalue %dx.types.CBufRet.f32 %6373, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6373, 2
  %6377 = extractvalue %dx.types.CBufRet.f32 %6373, 3
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6382 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 3
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 3
  %6387 = extractvalue %dx.types.CBufRet.f32 %6385, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6385, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6385, 2
  %6390 = fcmp fast olt float %6389, -5.000000e-01
  %6391 = call float @dx.op.dot3.f32(i32 55, float %6351, float %6352, float %6353, float %6351, float %6352, float %6353)  ; Dot3(ax,ay,az,bx,by,bz)
  %6392 = call float @dx.op.unary.f32(i32 25, float %6391)  ; Rsqrt(value)
  %6393 = fmul fast float %6392, %6391
  %6394 = fmul fast float %6392, %6351
  %6395 = fmul fast float %6392, %6352
  %6396 = fmul fast float %6392, %6353
  %6397 = fadd fast float %6393, %6367
  %6398 = call float @dx.op.dot3.f32(i32 55, float %6394, float %6395, float %6396, float %6364, float %6365, float %6366)  ; Dot3(ax,ay,az,bx,by,bz)
  %6399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.i32 %6399, 1
  %6401 = and i32 %6400, 1
  %6402 = icmp ne i32 %6401, 0
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6405 = fcmp fast ogt float %6404, 0.000000e+00
  %6406 = and i1 %6402, %6405
  br i1 %6406, label %6407, label %6813, !dx.controlflow.hints !136

; <label>:6407                                    ; preds = %6362
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 2
  %6412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.f32 %6412, 2
  %6414 = fsub fast float %6411, %6413
  %6415 = and i32 %6400, 2
  %6416 = extractvalue %dx.types.CBufRet.i32 %6399, 0
  %6417 = call i32 @dx.op.binary.i32(i32 40, i32 %6416, i32 3)  ; UMin(a,b)
  %6418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.CBufRet.f32 %6418, 1
  %6421 = extractvalue %dx.types.CBufRet.f32 %6412, 0
  %6422 = extractvalue %dx.types.CBufRet.f32 %6412, 1
  %6423 = fsub fast float %6419, %6421
  %6424 = fsub fast float %6420, %6422
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = fcmp fast ogt float %6426, 0.000000e+00
  %6428 = fsub fast float -0.000000e+00, %6423
  %6429 = fsub fast float -0.000000e+00, %6424
  %6430 = call float @dx.op.dot2.f32(i32 54, float %6394, float %6395, float %6394, float %6395)  ; Dot2(ax,ay,bx,by)
  %6431 = call float @dx.op.dot2.f32(i32 54, float %6394, float %6395, float %6428, float %6429)  ; Dot2(ax,ay,bx,by)
  %6432 = fmul fast float %6431, 2.000000e+00
  %6433 = call float @dx.op.dot2.f32(i32 54, float %6428, float %6429, float %6428, float %6429)  ; Dot2(ax,ay,bx,by)
  %6434 = fmul fast float %6426, %6426
  %6435 = fsub fast float %6433, %6434
  %6436 = fmul fast float %6432, %6432
  %6437 = fmul fast float %6430, 4.000000e+00
  %6438 = fmul fast float %6437, %6435
  %6439 = fsub fast float %6436, %6438
  %6440 = fcmp fast ogt float %6439, 0.000000e+00
  br i1 %6440, label %6441, label %6456

; <label>:6441                                    ; preds = %6407
  %6442 = fcmp fast ogt float %6432, 0.000000e+00
  %6443 = call float @dx.op.unary.f32(i32 24, float %6439)  ; Sqrt(value)
  %6444 = fsub fast float -0.000000e+00, %6443
  %6445 = select i1 %6442, float %6443, float %6444
  %6446 = fadd fast float %6445, %6432
  %6447 = fmul float %6446, -5.000000e-01
  %6448 = fdiv fast float %6447, %6430
  %6449 = call float @dx.op.binary.f32(i32 35, float %6448, float 0.000000e+00)  ; FMax(a,b)
  %6450 = call float @dx.op.binary.f32(i32 36, float %6393, float %6449)  ; FMin(a,b)
  %6451 = fdiv fast float %6435, %6447
  %6452 = call float @dx.op.binary.f32(i32 35, float %6451, float 0.000000e+00)  ; FMax(a,b)
  %6453 = call float @dx.op.binary.f32(i32 36, float %6393, float %6452)  ; FMin(a,b)
  %6454 = call float @dx.op.binary.f32(i32 36, float %6450, float %6453)  ; FMin(a,b)
  %6455 = call float @dx.op.binary.f32(i32 35, float %6450, float %6453)  ; FMax(a,b)
  br label %6456

; <label>:6456                                    ; preds = %6441, %6407
  %6457 = phi float [ %6455, %6441 ], [ -1.000000e+00, %6407 ]
  %6458 = phi float [ %6454, %6441 ], [ -1.000000e+00, %6407 ]
  %6459 = phi i1 [ true, %6441 ], [ false, %6407 ]
  %6460 = and i1 %6427, %6459
  br i1 %6460, label %6461, label %6463

; <label>:6461                                    ; preds = %6456
  %6462 = fcmp fast oeq float %6458, %6457
  br i1 %6462, label %6766, label %6464

; <label>:6463                                    ; preds = %6456
  br i1 %6427, label %6766, label %6464

; <label>:6464                                    ; preds = %6463, %6461
  %6465 = phi float [ %6393, %6463 ], [ %6457, %6461 ]
  %6466 = phi float [ 0.000000e+00, %6463 ], [ %6458, %6461 ]
  %6467 = icmp ne i32 %6415, 0
  %6468 = fmul fast float %6465, %6396
  %6469 = fadd fast float %6468, %6409
  %6470 = fmul fast float %6469, %6465
  %6471 = select i1 %6467, float 0.000000e+00, float %6470
  %6472 = fcmp fast oeq float %6396, 0.000000e+00
  %6473 = fdiv fast float %6414, %6396
  %6474 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6473)  ; FMax(a,b)
  %6475 = select i1 %6472, float %6465, float %6474
  %6476 = call float @dx.op.binary.f32(i32 36, float %6465, float %6475)  ; FMin(a,b)
  %6477 = fcmp fast ogt float %6396, 0.000000e+00
  %6478 = fcmp fast olt float %6414, 0.000000e+00
  br i1 %6477, label %6479, label %6536

; <label>:6479                                    ; preds = %6464
  %6480 = icmp eq i32 %6415, 0
  br i1 %6478, label %6481, label %6525

; <label>:6481                                    ; preds = %6479
  %6482 = select i1 %6480, float %6465, float 0.000000e+00
  %6483 = fsub fast float -0.000000e+00, %6482
  %6484 = call float @dx.op.unary.f32(i32 6, float %6483)  ; FAbs(value)
  %6485 = fmul fast float %6482, %6396
  %6486 = fadd fast float %6485, %6409
  %6487 = fmul fast float %6484, %6486
  %6488 = fsub fast float %6471, %6487
  %6489 = fsub fast float %6465, %6484
  %6490 = select i1 %6480, float %6489, float 0.000000e+00
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.CBufRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.CBufRet.f32 %6491, 2
  %6495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.f32 %6495, 0
  %6497 = extractvalue %dx.types.CBufRet.f32 %6495, 1
  %6498 = extractvalue %dx.types.CBufRet.f32 %6495, 2
  %6499 = extractvalue %dx.types.CBufRet.f32 %6495, 3
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 3
  %6502 = call float @dx.op.binary.f32(i32 36, float %6488, float %6501)  ; FMin(a,b)
  %6503 = fmul fast float %6499, %6490
  %6504 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  %6505 = fsub fast float %6496, %6492
  %6506 = fsub fast float %6497, %6493
  %6507 = fsub fast float %6498, %6494
  %6508 = fmul fast float %6504, %6505
  %6509 = fmul fast float %6504, %6506
  %6510 = fmul fast float %6504, %6507
  %6511 = fadd fast float %6508, %6492
  %6512 = fadd fast float %6509, %6493
  %6513 = fadd fast float %6510, %6494
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6517 = fadd fast float %6516, %6515
  %6518 = call float @dx.op.unary.f32(i32 7, float %6517)  ; Saturate(value)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6514, 2
  %6520 = extractvalue %dx.types.CBufRet.f32 %6514, 3
  %6521 = fadd fast float %6520, %6519
  %6522 = call float @dx.op.unary.f32(i32 7, float %6521)  ; Saturate(value)
  %6523 = fmul fast float %6518, %6502
  %6524 = fmul fast float %6523, %6522
  br label %6766

; <label>:6525                                    ; preds = %6479
  br i1 %6480, label %6526, label %6547

; <label>:6526                                    ; preds = %6525
  %6527 = call float @dx.op.binary.f32(i32 36, float %6476, float %6466)  ; FMin(a,b)
  %6528 = fsub fast float %6476, %6527
  %6529 = fsub fast float %6528, %6465
  %6530 = call float @dx.op.unary.f32(i32 6, float %6529)  ; FAbs(value)
  %6531 = fadd fast float %6528, %6465
  %6532 = fmul fast float %6531, %6396
  %6533 = fadd fast float %6532, %6409
  %6534 = fmul fast float %6533, %6530
  %6535 = fsub fast float %6471, %6534
  br label %6547

; <label>:6536                                    ; preds = %6464
  br i1 %6478, label %6537, label %6547

; <label>:6537                                    ; preds = %6536
  %6538 = call float @dx.op.binary.f32(i32 35, float %6466, float %6476)  ; FMax(a,b)
  %6539 = icmp eq i32 %6415, 0
  %6540 = select i1 %6539, float %6476, float 0.000000e+00
  %6541 = fsub fast float -0.000000e+00, %6540
  %6542 = call float @dx.op.unary.f32(i32 6, float %6541)  ; FAbs(value)
  %6543 = fmul fast float %6540, %6396
  %6544 = fadd fast float %6543, %6409
  %6545 = fmul fast float %6542, %6544
  %6546 = fsub fast float %6471, %6545
  br label %6547

; <label>:6547                                    ; preds = %6537, %6536, %6526, %6525
  %6548 = phi float [ %6466, %6525 ], [ %6466, %6526 ], [ %6538, %6537 ], [ %6466, %6536 ]
  %6549 = phi float [ 0.000000e+00, %6525 ], [ %6530, %6526 ], [ %6542, %6537 ], [ 0.000000e+00, %6536 ]
  %6550 = phi float [ %6471, %6525 ], [ %6535, %6526 ], [ %6546, %6537 ], [ %6471, %6536 ]
  %6551 = phi float [ %6476, %6525 ], [ %6476, %6526 ], [ %6465, %6537 ], [ %6465, %6536 ]
  %6552 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %6552, align 4, !tbaa !137, !noalias !139
  %6553 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %6553, align 4, !tbaa !137, !noalias !139
  %6554 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %6554, align 4, !tbaa !137, !noalias !139
  %6555 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %6555, align 4, !tbaa !137, !noalias !139
  %6556 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %6556, align 4, !tbaa !137, !noalias !139
  %6557 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %6557, align 4, !tbaa !137, !noalias !139
  %6558 = icmp sgt i32 %6417, 0
  br i1 %6558, label %6559, label %6620

; <label>:6559                                    ; preds = %6547
  br label %6560

; <label>:6560                                    ; preds = %6609, %6559
  %6561 = phi i32 [ %6610, %6609 ], [ 0, %6559 ]
  %6562 = phi i32 [ %6611, %6609 ], [ 0, %6559 ]
  %6563 = add nuw i32 %6562, 171
  %6564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %6563)  ; CBufferLoadLegacy(handle,regIndex)
  %6565 = extractvalue %dx.types.CBufRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.CBufRet.f32 %6564, 1
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6569 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6570 = fsub fast float %6565, %6568
  %6571 = fsub fast float %6566, %6569
  %6572 = extractvalue %dx.types.CBufRet.f32 %6564, 2
  %6573 = fsub fast float -0.000000e+00, %6570
  %6574 = fsub fast float -0.000000e+00, %6571
  %6575 = call float @dx.op.dot2.f32(i32 54, float %6394, float %6395, float %6573, float %6574)  ; Dot2(ax,ay,bx,by)
  %6576 = fmul fast float %6575, 2.000000e+00
  %6577 = call float @dx.op.dot2.f32(i32 54, float %6573, float %6574, float %6573, float %6574)  ; Dot2(ax,ay,bx,by)
  %6578 = fmul fast float %6572, %6572
  %6579 = fsub fast float %6577, %6578
  %6580 = fmul fast float %6576, %6576
  %6581 = fmul fast float %6437, %6579
  %6582 = fsub fast float %6580, %6581
  %6583 = fcmp fast ogt float %6582, 0.000000e+00
  br i1 %6583, label %6584, label %6599

; <label>:6584                                    ; preds = %6560
  %6585 = fcmp fast ogt float %6576, 0.000000e+00
  %6586 = call float @dx.op.unary.f32(i32 24, float %6582)  ; Sqrt(value)
  %6587 = fsub fast float -0.000000e+00, %6586
  %6588 = select i1 %6585, float %6586, float %6587
  %6589 = fadd fast float %6588, %6576
  %6590 = fmul float %6589, -5.000000e-01
  %6591 = fdiv fast float %6590, %6430
  %6592 = call float @dx.op.binary.f32(i32 35, float %6591, float 0.000000e+00)  ; FMax(a,b)
  %6593 = call float @dx.op.binary.f32(i32 36, float %6465, float %6592)  ; FMin(a,b)
  %6594 = fdiv fast float %6579, %6590
  %6595 = call float @dx.op.binary.f32(i32 35, float %6594, float 0.000000e+00)  ; FMax(a,b)
  %6596 = call float @dx.op.binary.f32(i32 36, float %6465, float %6595)  ; FMin(a,b)
  %6597 = call float @dx.op.binary.f32(i32 36, float %6593, float %6596)  ; FMin(a,b)
  %6598 = call float @dx.op.binary.f32(i32 35, float %6593, float %6596)  ; FMax(a,b)
  br label %6599

; <label>:6599                                    ; preds = %6584, %6560
  %6600 = phi float [ %6598, %6584 ], [ -1.000000e+00, %6560 ]
  %6601 = phi float [ %6597, %6584 ], [ -1.000000e+00, %6560 ]
  %6602 = phi i1 [ true, %6584 ], [ false, %6560 ]
  br i1 %6602, label %6603, label %6609

; <label>:6603                                    ; preds = %6599
  %6604 = call float @dx.op.binary.f32(i32 35, float %6548, float %6601)  ; FMax(a,b)
  %6605 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %6562
  store float %6604, float* %6605, align 4, !tbaa !137, !noalias !139
  %6606 = call float @dx.op.binary.f32(i32 35, float %6548, float %6600)  ; FMax(a,b)
  %6607 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6562
  store float %6606, float* %6607, align 4, !tbaa !137, !noalias !139
  %6608 = add nsw i32 %6561, 1
  br label %6609

; <label>:6609                                    ; preds = %6603, %6599
  %6610 = phi i32 [ %6608, %6603 ], [ %6561, %6599 ]
  %6611 = add nuw nsw i32 %6562, 1
  %6612 = icmp eq i32 %6611, %6417
  br i1 %6612, label %6613, label %6560

; <label>:6613                                    ; preds = %6609
  %6614 = load float, float* %6554, align 4, !tbaa !137, !alias.scope !155, !noalias !158
  %6615 = load float, float* %6553, align 4, !tbaa !137, !alias.scope !161, !noalias !162
  %6616 = load float, float* %6552, align 4, !tbaa !137, !alias.scope !163, !noalias !164
  %6617 = load float, float* %6557, align 4, !tbaa !137, !alias.scope !165, !noalias !168
  %6618 = load float, float* %6556, align 4, !tbaa !137, !alias.scope !171, !noalias !172
  %6619 = load float, float* %6555, align 4, !tbaa !137, !alias.scope !173, !noalias !174
  br label %6620

; <label>:6620                                    ; preds = %6613, %6547
  %6621 = phi float [ -1.000000e+00, %6547 ], [ %6619, %6613 ]
  %6622 = phi float [ -1.000000e+00, %6547 ], [ %6618, %6613 ]
  %6623 = phi float [ -1.000000e+00, %6547 ], [ %6617, %6613 ]
  %6624 = phi float [ -1.000000e+00, %6547 ], [ %6616, %6613 ]
  %6625 = phi float [ -1.000000e+00, %6547 ], [ %6615, %6613 ]
  %6626 = phi float [ -1.000000e+00, %6547 ], [ %6614, %6613 ]
  %6627 = phi i32 [ 0, %6547 ], [ %6610, %6613 ]
  %6628 = call float @dx.op.binary.f32(i32 36, float %6625, float %6626)  ; FMin(a,b)
  %6629 = call float @dx.op.binary.f32(i32 36, float %6624, float %6628)  ; FMin(a,b)
  %6630 = call float @dx.op.binary.f32(i32 35, float %6624, float %6625)  ; FMax(a,b)
  %6631 = call float @dx.op.binary.f32(i32 36, float %6630, float %6626)  ; FMin(a,b)
  %6632 = call float @dx.op.binary.f32(i32 36, float %6624, float %6625)  ; FMin(a,b)
  %6633 = call float @dx.op.binary.f32(i32 35, float %6632, float %6631)  ; FMax(a,b)
  %6634 = call float @dx.op.binary.f32(i32 35, float %6625, float %6626)  ; FMax(a,b)
  %6635 = call float @dx.op.binary.f32(i32 35, float %6624, float %6634)  ; FMax(a,b)
  store float %6629, float* %6552, align 4, !tbaa !137, !alias.scope !163, !noalias !164
  store float %6633, float* %6553, align 4, !tbaa !137, !alias.scope !161, !noalias !162
  store float %6635, float* %6554, align 4, !tbaa !137, !alias.scope !155, !noalias !158
  %6636 = call float @dx.op.binary.f32(i32 36, float %6622, float %6623)  ; FMin(a,b)
  %6637 = call float @dx.op.binary.f32(i32 36, float %6621, float %6636)  ; FMin(a,b)
  %6638 = call float @dx.op.binary.f32(i32 35, float %6621, float %6622)  ; FMax(a,b)
  %6639 = call float @dx.op.binary.f32(i32 36, float %6638, float %6623)  ; FMin(a,b)
  %6640 = call float @dx.op.binary.f32(i32 36, float %6621, float %6622)  ; FMin(a,b)
  %6641 = call float @dx.op.binary.f32(i32 35, float %6640, float %6639)  ; FMax(a,b)
  %6642 = call float @dx.op.binary.f32(i32 35, float %6622, float %6623)  ; FMax(a,b)
  %6643 = call float @dx.op.binary.f32(i32 35, float %6621, float %6642)  ; FMax(a,b)
  store float %6637, float* %6555, align 4, !tbaa !137, !alias.scope !173, !noalias !174
  store float %6641, float* %6556, align 4, !tbaa !137, !alias.scope !171, !noalias !172
  store float %6643, float* %6557, align 4, !tbaa !137, !alias.scope !165, !noalias !168
  %6644 = sub nsw i32 3, %6627
  %6645 = icmp sgt i32 %6644, 2
  br i1 %6645, label %6646, label %6684

; <label>:6646                                    ; preds = %6620
  %6647 = icmp eq i32 %6415, 0
  %6648 = fsub fast float %6465, %6549
  %6649 = select i1 %6647, float %6648, float %6549
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.CBufRet.f32 %6650, 1
  %6653 = extractvalue %dx.types.CBufRet.f32 %6650, 2
  %6654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.f32 %6654, 0
  %6656 = extractvalue %dx.types.CBufRet.f32 %6654, 1
  %6657 = extractvalue %dx.types.CBufRet.f32 %6654, 2
  %6658 = extractvalue %dx.types.CBufRet.f32 %6654, 3
  %6659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.f32 %6659, 3
  %6661 = call float @dx.op.binary.f32(i32 36, float %6550, float %6660)  ; FMin(a,b)
  %6662 = fmul fast float %6658, %6649
  %6663 = call float @dx.op.unary.f32(i32 7, float %6662)  ; Saturate(value)
  %6664 = fsub fast float %6655, %6651
  %6665 = fsub fast float %6656, %6652
  %6666 = fsub fast float %6657, %6653
  %6667 = fmul fast float %6663, %6664
  %6668 = fmul fast float %6663, %6665
  %6669 = fmul fast float %6663, %6666
  %6670 = fadd fast float %6667, %6651
  %6671 = fadd fast float %6668, %6652
  %6672 = fadd fast float %6669, %6653
  %6673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6675 = extractvalue %dx.types.CBufRet.f32 %6673, 1
  %6676 = fadd fast float %6675, %6674
  %6677 = call float @dx.op.unary.f32(i32 7, float %6676)  ; Saturate(value)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6673, 2
  %6679 = extractvalue %dx.types.CBufRet.f32 %6673, 3
  %6680 = fadd fast float %6679, %6678
  %6681 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  %6682 = fmul fast float %6677, %6661
  %6683 = fmul fast float %6682, %6681
  br label %6766

; <label>:6684                                    ; preds = %6620
  %6685 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %6644
  %6686 = load float, float* %6685, align 4, !tbaa !137, !noalias !139
  %6687 = fcmp fast olt float %6686, %6551
  %6688 = icmp sgt i32 %6627, 0
  %6689 = and i1 %6688, %6687
  br i1 %6689, label %6690, label %6727

; <label>:6690                                    ; preds = %6684
  br label %6691

; <label>:6691                                    ; preds = %6720, %6690
  %6692 = phi float [ %6721, %6720 ], [ %6549, %6690 ]
  %6693 = phi float [ %6722, %6720 ], [ %6550, %6690 ]
  %6694 = phi float [ %6702, %6720 ], [ %6686, %6690 ]
  %6695 = phi i32 [ %6699, %6720 ], [ %6644, %6690 ]
  %6696 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %6695
  %6697 = load float, float* %6696, align 4, !tbaa !137, !noalias !139
  %6698 = icmp slt i32 %6695, 2
  %6699 = add nsw i32 %6695, 1
  %6700 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %6699
  %6701 = load float, float* %6700, align 4, !tbaa !137, !noalias !139
  %6702 = select i1 %6698, float %6701, float %6465
  %6703 = call float @dx.op.binary.f32(i32 36, float %6702, float %6697)  ; FMin(a,b)
  %6704 = call float @dx.op.binary.f32(i32 36, float %6551, float %6703)  ; FMin(a,b)
  %6705 = icmp eq i32 %6415, 0
  %6706 = fadd fast float %6704, %6694
  %6707 = fmul fast float %6706, %6396
  %6708 = fadd fast float %6707, %6409
  br i1 %6705, label %6714, label %6709

; <label>:6709                                    ; preds = %6691
  %6710 = fsub fast float %6704, %6694
  %6711 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6710)  ; FMax(a,b)
  %6712 = fmul fast float %6711, %6708
  %6713 = fadd fast float %6712, %6693
  br label %6720

; <label>:6714                                    ; preds = %6691
  %6715 = fsub fast float %6694, %6704
  %6716 = call float @dx.op.unary.f32(i32 6, float %6715)  ; FAbs(value)
  %6717 = fadd fast float %6716, %6692
  %6718 = fmul fast float %6716, %6708
  %6719 = fsub fast float %6693, %6718
  br label %6720

; <label>:6720                                    ; preds = %6714, %6709
  %6721 = phi float [ %6711, %6709 ], [ %6717, %6714 ]
  %6722 = phi float [ %6713, %6709 ], [ %6719, %6714 ]
  %6723 = fcmp fast olt float %6702, %6551
  %6724 = icmp slt i32 %6699, 3
  %6725 = and i1 %6724, %6723
  br i1 %6725, label %6691, label %6726

; <label>:6726                                    ; preds = %6720
  br label %6727

; <label>:6727                                    ; preds = %6726, %6684
  %6728 = phi float [ %6549, %6684 ], [ %6721, %6726 ]
  %6729 = phi float [ %6550, %6684 ], [ %6722, %6726 ]
  %6730 = fsub fast float %6465, %6728
  %6731 = select i1 %6467, float %6728, float %6730
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.CBufRet.f32 %6732, 2
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 0
  %6738 = extractvalue %dx.types.CBufRet.f32 %6736, 1
  %6739 = extractvalue %dx.types.CBufRet.f32 %6736, 2
  %6740 = extractvalue %dx.types.CBufRet.f32 %6736, 3
  %6741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6742 = extractvalue %dx.types.CBufRet.f32 %6741, 3
  %6743 = call float @dx.op.binary.f32(i32 36, float %6729, float %6742)  ; FMin(a,b)
  %6744 = fmul fast float %6740, %6731
  %6745 = call float @dx.op.unary.f32(i32 7, float %6744)  ; Saturate(value)
  %6746 = fsub fast float %6737, %6733
  %6747 = fsub fast float %6738, %6734
  %6748 = fsub fast float %6739, %6735
  %6749 = fmul fast float %6745, %6746
  %6750 = fmul fast float %6745, %6747
  %6751 = fmul fast float %6745, %6748
  %6752 = fadd fast float %6749, %6733
  %6753 = fadd fast float %6750, %6734
  %6754 = fadd fast float %6751, %6735
  %6755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6756 = extractvalue %dx.types.CBufRet.f32 %6755, 0
  %6757 = extractvalue %dx.types.CBufRet.f32 %6755, 1
  %6758 = fadd fast float %6757, %6756
  %6759 = call float @dx.op.unary.f32(i32 7, float %6758)  ; Saturate(value)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6755, 2
  %6761 = extractvalue %dx.types.CBufRet.f32 %6755, 3
  %6762 = fadd fast float %6761, %6760
  %6763 = call float @dx.op.unary.f32(i32 7, float %6762)  ; Saturate(value)
  %6764 = fmul fast float %6759, %6743
  %6765 = fmul fast float %6764, %6763
  br label %6766

; <label>:6766                                    ; preds = %6727, %6646, %6481, %6463, %6461
  %6767 = phi float [ %6490, %6481 ], [ %6649, %6646 ], [ %6731, %6727 ], [ 0.000000e+00, %6461 ], [ 0.000000e+00, %6463 ]
  %6768 = phi float [ %6524, %6481 ], [ %6683, %6646 ], [ %6765, %6727 ], [ 0.000000e+00, %6461 ], [ 0.000000e+00, %6463 ]
  %6769 = phi float [ %6511, %6481 ], [ %6670, %6646 ], [ %6752, %6727 ], [ 0.000000e+00, %6461 ], [ 0.000000e+00, %6463 ]
  %6770 = phi float [ %6512, %6481 ], [ %6671, %6646 ], [ %6753, %6727 ], [ 0.000000e+00, %6461 ], [ 0.000000e+00, %6463 ]
  %6771 = phi float [ %6513, %6481 ], [ %6672, %6646 ], [ %6754, %6727 ], [ 0.000000e+00, %6461 ], [ 0.000000e+00, %6463 ]
  %6772 = fmul fast float %6404, %6768
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6773, 2
  %6775 = fsub fast float %6411, %6774
  %6776 = fcmp fast olt float %6772, -2.000000e+01
  %6777 = call float @dx.op.unary.f32(i32 21, float %6772)  ; Exp(value)
  %6778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6778, 2
  %6780 = extractvalue %dx.types.CBufRet.f32 %6778, 3
  %6781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6782 = extractvalue %dx.types.CBufRet.f32 %6781, 2
  %6783 = fmul fast float %6780, %6775
  %6784 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6785 = fsub fast float 1.000000e+00, %6784
  %6786 = fmul fast float %6396, 5.000000e-01
  %6787 = fadd fast float %6786, 5.000000e-01
  %6788 = call float @dx.op.unary.f32(i32 7, float %6787)  ; Saturate(value)
  %6789 = fsub fast float 1.000000e+00, %6788
  %6790 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6785)  ; FMax(a,b)
  %6791 = fdiv fast float %6789, %6790
  %6792 = fsub fast float %6775, %6353
  %6793 = call float @dx.op.unary.f32(i32 6, float %6792)  ; FAbs(value)
  %6794 = fmul fast float %6793, %6779
  %6795 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  %6796 = fsub fast float 1.000000e+00, %6794
  %6797 = fmul fast float %6796, %6795
  %6798 = fadd fast float %6797, %6794
  %6799 = fmul fast float %6782, %6775
  %6800 = call float @dx.op.unary.f32(i32 7, float %6799)  ; Saturate(value)
  %6801 = fsub fast float 1.000000e+00, %6798
  %6802 = fmul fast float %6801, %6800
  %6803 = fadd fast float %6802, %6798
  %6804 = call float @dx.op.unary.f32(i32 7, float %6803)  ; Saturate(value)
  %6805 = fadd fast float %6777, -1.000000e+00
  %6806 = select i1 %6776, float -1.000000e+00, float %6805
  %6807 = fmul fast float %6804, %6806
  %6808 = fadd fast float %6807, 1.000000e+00
  %6809 = fsub fast float -0.000000e+00, %6807
  %6810 = fmul fast float %6769, %6809
  %6811 = fmul fast float %6770, %6809
  %6812 = fmul fast float %6771, %6809
  br label %6813

; <label>:6813                                    ; preds = %6766, %6362
  %6814 = phi float [ %6767, %6766 ], [ 0.000000e+00, %6362 ]
  %6815 = phi float [ %6808, %6766 ], [ 1.000000e+00, %6362 ]
  %6816 = phi float [ %6810, %6766 ], [ 0.000000e+00, %6362 ]
  %6817 = phi float [ %6811, %6766 ], [ 0.000000e+00, %6362 ]
  %6818 = phi float [ %6812, %6766 ], [ 0.000000e+00, %6362 ]
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 1
  %6821 = fsub fast float 1.000000e+00, %6815
  %6822 = fmul fast float %6821, %6397
  %6823 = fmul fast float %6822, %6820
  %6824 = fsub fast float %6397, %6823
  br i1 %6390, label %6825, label %6854, !dx.controlflow.hints !175

; <label>:6825                                    ; preds = %6813
  %6826 = fmul fast float %6398, %6387
  %6827 = fadd fast float %6826, %6388
  %6828 = call float @dx.op.unary.f32(i32 7, float %6827)  ; Saturate(value)
  %6829 = fmul fast float %6369, %6824
  %6830 = fsub fast float -0.000000e+00, %6829
  %6831 = fmul fast float %6370, %6824
  %6832 = fsub fast float -0.000000e+00, %6831
  %6833 = call float @dx.op.unary.f32(i32 21, float %6830)  ; Exp(value)
  %6834 = call float @dx.op.unary.f32(i32 21, float %6832)  ; Exp(value)
  %6835 = call float @dx.op.binary.f32(i32 35, float %6377, float %6833)  ; FMax(a,b)
  %6836 = call float @dx.op.binary.f32(i32 35, float %6377, float %6834)  ; FMax(a,b)
  %6837 = fsub fast float %6836, %6835
  %6838 = fmul fast float %6837, %6828
  %6839 = fadd fast float %6838, %6835
  %6840 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  %6841 = fsub fast float %6374, %6379
  %6842 = fsub fast float %6375, %6380
  %6843 = fsub fast float %6376, %6381
  %6844 = fmul fast float %6828, %6841
  %6845 = fmul fast float %6828, %6842
  %6846 = fmul fast float %6828, %6843
  %6847 = fadd fast float %6844, %6379
  %6848 = fadd fast float %6845, %6380
  %6849 = fadd fast float %6846, %6381
  %6850 = fsub fast float 1.000000e+00, %6840
  %6851 = fmul fast float %6850, %6847
  %6852 = fmul fast float %6850, %6848
  %6853 = fmul fast float %6850, %6849
  br label %6913

; <label>:6854                                    ; preds = %6813
  %6855 = fmul fast float %6824, %6386
  %6856 = call float @dx.op.unary.f32(i32 7, float %6855)  ; Saturate(value)
  %6857 = fsub fast float 2.000000e+00, %6856
  %6858 = fmul fast float %6856, 9.921875e-01
  %6859 = fmul fast float %6858, %6857
  %6860 = fadd fast float %6859, 3.906250e-03
  %6861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %6860, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6862 = extractvalue %dx.types.ResRet.f32 %6861, 0
  %6863 = fsub fast float %6856, %6862
  %6864 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6863)  ; FMax(a,b)
  %6865 = fmul fast float %6372, %6353
  %6866 = call float @dx.op.unary.f32(i32 6, float %6865)  ; FAbs(value)
  %6867 = fcmp fast ogt float %6866, 0x3EB0C6F7A0000000
  br i1 %6867, label %6868, label %6874, !dx.controlflow.hints !176

; <label>:6868                                    ; preds = %6854
  %6869 = fmul fast float %6865, 0xBFF7154760000000
  %6870 = call float @dx.op.unary.f32(i32 21, float %6869)  ; Exp(value)
  %6871 = fsub fast float 1.000000e+00, %6870
  %6872 = fdiv fast float %6871, %6865
  %6873 = fmul fast float %6872, %6382
  br label %6874

; <label>:6874                                    ; preds = %6868, %6854
  %6875 = phi float [ %6873, %6868 ], [ %6382, %6854 ]
  %6876 = fadd fast float %6875, %6384
  %6877 = fmul fast float %6876, %6864
  %6878 = fmul fast float %6369, %6877
  %6879 = fsub fast float -0.000000e+00, %6878
  %6880 = fmul fast float %6370, %6877
  %6881 = fsub fast float -0.000000e+00, %6880
  %6882 = fmul fast float %6371, %6877
  %6883 = fsub fast float -0.000000e+00, %6882
  %6884 = call float @dx.op.unary.f32(i32 21, float %6879)  ; Exp(value)
  %6885 = call float @dx.op.unary.f32(i32 21, float %6881)  ; Exp(value)
  %6886 = call float @dx.op.unary.f32(i32 21, float %6883)  ; Exp(value)
  %6887 = fmul fast float %6398, %6398
  %6888 = fadd fast float %6887, 1.000000e+00
  %6889 = fmul fast float %6888, 0x3FAE8EC8A0000000
  %6890 = fmul fast float %6889, %6379
  %6891 = fmul fast float %6889, %6380
  %6892 = fmul fast float %6889, %6381
  %6893 = fmul fast float %6398, %6377
  %6894 = fsub fast float 1.000000e+00, %6893
  %6895 = fmul fast float %6377, %6377
  %6896 = fsub fast float 1.000000e+00, %6895
  %6897 = fmul fast float %6896, 0x3FB45F3060000000
  %6898 = fmul fast float %6894, %6894
  %6899 = fdiv fast float 1.000000e+00, %6898
  %6900 = fmul fast float %6897, %6899
  %6901 = fmul fast float %6900, %6374
  %6902 = fmul fast float %6900, %6375
  %6903 = fmul fast float %6900, %6376
  %6904 = fadd fast float %6901, %6890
  %6905 = fadd fast float %6902, %6891
  %6906 = fadd fast float %6903, %6892
  %6907 = fsub fast float 1.000000e+00, %6884
  %6908 = fsub fast float 1.000000e+00, %6885
  %6909 = fsub fast float 1.000000e+00, %6886
  %6910 = fmul fast float %6904, %6907
  %6911 = fmul fast float %6905, %6908
  %6912 = fmul fast float %6906, %6909
  br label %6913

; <label>:6913                                    ; preds = %6874, %6825
  %6914 = phi float [ %6851, %6825 ], [ %6910, %6874 ]
  %6915 = phi float [ %6852, %6825 ], [ %6911, %6874 ]
  %6916 = phi float [ %6853, %6825 ], [ %6912, %6874 ]
  %6917 = phi float [ %6840, %6825 ], [ %6884, %6874 ]
  %6918 = phi float [ %6840, %6825 ], [ %6885, %6874 ]
  %6919 = phi float [ %6840, %6825 ], [ %6886, %6874 ]
  br i1 %6406, label %6920, label %7118, !dx.controlflow.hints !177

; <label>:6920                                    ; preds = %6913
  %6921 = extractvalue %dx.types.CBufRet.f32 %6819, 0
  %6922 = fmul fast float %6921, %6821
  %6923 = fsub fast float %6816, %6914
  %6924 = fsub fast float %6817, %6915
  %6925 = fsub fast float %6818, %6916
  %6926 = fmul fast float %6922, %6923
  %6927 = fmul fast float %6922, %6924
  %6928 = fmul fast float %6922, %6925
  %6929 = fadd fast float %6926, %6914
  %6930 = fadd fast float %6927, %6915
  %6931 = fadd fast float %6928, %6916
  %6932 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6917)  ; FMax(a,b)
  %6933 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6918)  ; FMax(a,b)
  %6934 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6919)  ; FMax(a,b)
  %6935 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6815)  ; FMax(a,b)
  %6936 = call float @dx.op.binary.f32(i32 35, float %6814, float %6824)  ; FMax(a,b)
  %6937 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6936)  ; FMax(a,b)
  %6938 = fdiv fast float %6814, %6937
  %6939 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  %6940 = fdiv fast float %6824, %6937
  %6941 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6942 = fcmp fast une float %6935, 1.000000e+00
  br i1 %6942, label %6943, label %6956, !dx.controlflow.hints !178

; <label>:6943                                    ; preds = %6920
  %6944 = call float @dx.op.unary.f32(i32 23, float %6935)  ; Log(value)
  %6945 = fmul fast float %6944, 0x3FE62E4300000000
  %6946 = fmul fast float %6816, %6945
  %6947 = fsub fast float -0.000000e+00, %6946
  %6948 = fmul fast float %6817, %6945
  %6949 = fsub fast float -0.000000e+00, %6948
  %6950 = fmul fast float %6818, %6945
  %6951 = fsub fast float -0.000000e+00, %6950
  %6952 = fsub fast float 1.000000e+00, %6935
  %6953 = fdiv fast float %6947, %6952
  %6954 = fdiv fast float %6949, %6952
  %6955 = fdiv fast float %6951, %6952
  br label %6956

; <label>:6956                                    ; preds = %6943, %6920
  %6957 = phi float [ %6953, %6943 ], [ %6816, %6920 ]
  %6958 = phi float [ %6954, %6943 ], [ %6817, %6920 ]
  %6959 = phi float [ %6955, %6943 ], [ %6818, %6920 ]
  %6960 = phi float [ %6945, %6943 ], [ 0.000000e+00, %6920 ]
  %6961 = fcmp fast une float %6932, 1.000000e+00
  br i1 %6961, label %6962, label %6969, !dx.controlflow.hints !179

; <label>:6962                                    ; preds = %6956
  %6963 = call float @dx.op.unary.f32(i32 23, float %6932)  ; Log(value)
  %6964 = fmul fast float %6963, 0x3FE62E4300000000
  %6965 = fmul fast float %6929, %6964
  %6966 = fsub fast float -0.000000e+00, %6965
  %6967 = fsub fast float 1.000000e+00, %6932
  %6968 = fdiv fast float %6966, %6967
  br label %6969

; <label>:6969                                    ; preds = %6962, %6956
  %6970 = phi float [ %6968, %6962 ], [ %6929, %6956 ]
  %6971 = phi float [ %6964, %6962 ], [ 0.000000e+00, %6956 ]
  %6972 = fcmp fast une float %6933, 1.000000e+00
  br i1 %6972, label %6973, label %6980, !dx.controlflow.hints !179

; <label>:6973                                    ; preds = %6969
  %6974 = call float @dx.op.unary.f32(i32 23, float %6933)  ; Log(value)
  %6975 = fmul fast float %6974, 0x3FE62E4300000000
  %6976 = fmul fast float %6930, %6975
  %6977 = fsub fast float -0.000000e+00, %6976
  %6978 = fsub fast float 1.000000e+00, %6933
  %6979 = fdiv fast float %6977, %6978
  br label %6980

; <label>:6980                                    ; preds = %6973, %6969
  %6981 = phi float [ %6979, %6973 ], [ %6930, %6969 ]
  %6982 = phi float [ %6975, %6973 ], [ 0.000000e+00, %6969 ]
  %6983 = fcmp fast une float %6934, 1.000000e+00
  br i1 %6983, label %6984, label %6991, !dx.controlflow.hints !179

; <label>:6984                                    ; preds = %6980
  %6985 = call float @dx.op.unary.f32(i32 23, float %6934)  ; Log(value)
  %6986 = fmul fast float %6985, 0x3FE62E4300000000
  %6987 = fmul fast float %6931, %6986
  %6988 = fsub fast float -0.000000e+00, %6987
  %6989 = fsub fast float 1.000000e+00, %6934
  %6990 = fdiv fast float %6988, %6989
  br label %6991

; <label>:6991                                    ; preds = %6984, %6980
  %6992 = phi float [ %6990, %6984 ], [ %6931, %6980 ]
  %6993 = phi float [ %6986, %6984 ], [ 0.000000e+00, %6980 ]
  %6994 = fmul fast float %6957, %6941
  %6995 = fmul fast float %6958, %6941
  %6996 = fmul fast float %6959, %6941
  %6997 = fmul fast float %6960, %6941
  %6998 = fmul fast float %6970, %6939
  %6999 = fmul fast float %6981, %6939
  %7000 = fmul fast float %6992, %6939
  %7001 = fmul fast float %6971, %6939
  %7002 = fmul fast float %6982, %6939
  %7003 = fmul fast float %6993, %6939
  %7004 = fadd fast float %6998, %6994
  %7005 = fadd fast float %6999, %6995
  %7006 = fadd fast float %7000, %6996
  %7007 = fadd fast float %7001, %6997
  %7008 = fadd fast float %7002, %6997
  %7009 = fadd fast float %7003, %6997
  %7010 = fcmp fast une float %7007, 0.000000e+00
  br i1 %7010, label %7011, label %7018, !dx.controlflow.hints !180

; <label>:7011                                    ; preds = %6991
  %7012 = fmul fast float %7007, 0x3FF7154760000000
  %7013 = call float @dx.op.unary.f32(i32 21, float %7012)  ; Exp(value)
  %7014 = fsub fast float 1.000000e+00, %7013
  %7015 = fmul fast float %7004, %7014
  %7016 = fsub fast float -0.000000e+00, %7015
  %7017 = fdiv fast float %7016, %7007
  br label %7018

; <label>:7018                                    ; preds = %7011, %6991
  %7019 = phi float [ %7013, %7011 ], [ 1.000000e+00, %6991 ]
  %7020 = phi float [ %7017, %7011 ], [ %7004, %6991 ]
  %7021 = fcmp fast une float %7008, 0.000000e+00
  br i1 %7021, label %7022, label %7029, !dx.controlflow.hints !180

; <label>:7022                                    ; preds = %7018
  %7023 = fmul fast float %7008, 0x3FF7154760000000
  %7024 = call float @dx.op.unary.f32(i32 21, float %7023)  ; Exp(value)
  %7025 = fsub fast float 1.000000e+00, %7024
  %7026 = fmul fast float %7005, %7025
  %7027 = fsub fast float -0.000000e+00, %7026
  %7028 = fdiv fast float %7027, %7008
  br label %7029

; <label>:7029                                    ; preds = %7022, %7018
  %7030 = phi float [ %7024, %7022 ], [ 1.000000e+00, %7018 ]
  %7031 = phi float [ %7028, %7022 ], [ %7005, %7018 ]
  %7032 = fcmp fast une float %7009, 0.000000e+00
  br i1 %7032, label %7033, label %7040, !dx.controlflow.hints !180

; <label>:7033                                    ; preds = %7029
  %7034 = fmul fast float %7009, 0x3FF7154760000000
  %7035 = call float @dx.op.unary.f32(i32 21, float %7034)  ; Exp(value)
  %7036 = fsub fast float 1.000000e+00, %7035
  %7037 = fmul fast float %7006, %7036
  %7038 = fsub fast float -0.000000e+00, %7037
  %7039 = fdiv fast float %7038, %7009
  br label %7040

; <label>:7040                                    ; preds = %7033, %7029
  %7041 = phi float [ %7035, %7033 ], [ 1.000000e+00, %7029 ]
  %7042 = phi float [ %7039, %7033 ], [ %7006, %7029 ]
  %7043 = fcmp fast ogt float %6939, %6941
  br i1 %7043, label %7044, label %7064

; <label>:7044                                    ; preds = %7040
  %7045 = fsub fast float 1.000000e+00, %6941
  %7046 = fmul fast float %6957, %7045
  %7047 = fmul fast float %6958, %7045
  %7048 = fmul fast float %6959, %7045
  %7049 = fmul fast float %6960, %7045
  %7050 = fcmp fast une float %7049, 0.000000e+00
  br i1 %7050, label %7051, label %7102, !dx.controlflow.hints !181

; <label>:7051                                    ; preds = %7044
  %7052 = fmul fast float %7049, 0x3FF7154760000000
  %7053 = call float @dx.op.unary.f32(i32 21, float %7052)  ; Exp(value)
  %7054 = fsub fast float 1.000000e+00, %7053
  %7055 = fmul fast float %7046, %7054
  %7056 = fsub fast float -0.000000e+00, %7055
  %7057 = fmul fast float %7047, %7054
  %7058 = fsub fast float -0.000000e+00, %7057
  %7059 = fmul fast float %7048, %7054
  %7060 = fsub fast float -0.000000e+00, %7059
  %7061 = fdiv fast float %7056, %7049
  %7062 = fdiv fast float %7058, %7049
  %7063 = fdiv fast float %7060, %7049
  br label %7102

; <label>:7064                                    ; preds = %7040
  %7065 = fsub fast float 1.000000e+00, %6939
  %7066 = fmul fast float %6970, %7065
  %7067 = fmul fast float %6981, %7065
  %7068 = fmul fast float %6992, %7065
  %7069 = fmul fast float %6971, %7065
  %7070 = fmul fast float %6982, %7065
  %7071 = fmul fast float %6993, %7065
  %7072 = fcmp fast une float %7069, 0.000000e+00
  br i1 %7072, label %7073, label %7080, !dx.controlflow.hints !180

; <label>:7073                                    ; preds = %7064
  %7074 = fmul fast float %7069, 0x3FF7154760000000
  %7075 = call float @dx.op.unary.f32(i32 21, float %7074)  ; Exp(value)
  %7076 = fsub fast float 1.000000e+00, %7075
  %7077 = fmul fast float %7066, %7076
  %7078 = fsub fast float -0.000000e+00, %7077
  %7079 = fdiv fast float %7078, %7069
  br label %7080

; <label>:7080                                    ; preds = %7073, %7064
  %7081 = phi float [ %7079, %7073 ], [ %7066, %7064 ]
  %7082 = phi float [ %7075, %7073 ], [ 1.000000e+00, %7064 ]
  %7083 = fcmp fast une float %7070, 0.000000e+00
  br i1 %7083, label %7084, label %7091, !dx.controlflow.hints !180

; <label>:7084                                    ; preds = %7080
  %7085 = fmul fast float %7070, 0x3FF7154760000000
  %7086 = call float @dx.op.unary.f32(i32 21, float %7085)  ; Exp(value)
  %7087 = fsub fast float 1.000000e+00, %7086
  %7088 = fmul fast float %7067, %7087
  %7089 = fsub fast float -0.000000e+00, %7088
  %7090 = fdiv fast float %7089, %7070
  br label %7091

; <label>:7091                                    ; preds = %7084, %7080
  %7092 = phi float [ %7090, %7084 ], [ %7067, %7080 ]
  %7093 = phi float [ %7086, %7084 ], [ 1.000000e+00, %7080 ]
  %7094 = fcmp fast une float %7071, 0.000000e+00
  br i1 %7094, label %7095, label %7102, !dx.controlflow.hints !180

; <label>:7095                                    ; preds = %7091
  %7096 = fmul fast float %7071, 0x3FF7154760000000
  %7097 = call float @dx.op.unary.f32(i32 21, float %7096)  ; Exp(value)
  %7098 = fsub fast float 1.000000e+00, %7097
  %7099 = fmul fast float %7068, %7098
  %7100 = fsub fast float -0.000000e+00, %7099
  %7101 = fdiv fast float %7100, %7071
  br label %7102

; <label>:7102                                    ; preds = %7095, %7091, %7051, %7044
  %7103 = phi float [ %7101, %7095 ], [ %7063, %7051 ], [ %7048, %7044 ], [ %7068, %7091 ]
  %7104 = phi float [ %7092, %7095 ], [ %7062, %7051 ], [ %7047, %7044 ], [ %7092, %7091 ]
  %7105 = phi float [ %7081, %7095 ], [ %7061, %7051 ], [ %7046, %7044 ], [ %7081, %7091 ]
  %7106 = phi float [ %7097, %7095 ], [ %7053, %7051 ], [ 1.000000e+00, %7044 ], [ 1.000000e+00, %7091 ]
  %7107 = phi float [ %7093, %7095 ], [ %7053, %7051 ], [ 1.000000e+00, %7044 ], [ %7093, %7091 ]
  %7108 = phi float [ %7082, %7095 ], [ %7053, %7051 ], [ 1.000000e+00, %7044 ], [ %7082, %7091 ]
  %7109 = fmul fast float %7108, %7020
  %7110 = fmul fast float %7107, %7031
  %7111 = fmul fast float %7106, %7042
  %7112 = fadd fast float %7109, %7105
  %7113 = fadd fast float %7110, %7104
  %7114 = fadd fast float %7111, %7103
  %7115 = fmul fast float %7108, %7019
  %7116 = fmul fast float %7107, %7030
  %7117 = fmul fast float %7106, %7041
  br label %7118

; <label>:7118                                    ; preds = %7102, %6913
  %7119 = phi float [ %7117, %7102 ], [ %6919, %6913 ]
  %7120 = phi float [ %7116, %7102 ], [ %6918, %6913 ]
  %7121 = phi float [ %7115, %7102 ], [ %6917, %6913 ]
  %7122 = phi float [ %7114, %7102 ], [ %6916, %6913 ]
  %7123 = phi float [ %7113, %7102 ], [ %6915, %6913 ]
  %7124 = phi float [ %7112, %7102 ], [ %6914, %6913 ]
  %7125 = fmul fast float %7124, %6068
  %7126 = fmul fast float %7123, %6068
  %7127 = fmul fast float %7122, %6068
  %7128 = fmul fast float %7121, %6361
  %7129 = call float @dx.op.dot3.f32(i32 55, float %7121, float %7120, float %7119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7130 = call float @dx.op.dot3.f32(i32 55, float %7125, float %7126, float %7127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7131 = select i1 %236, float %7129, float %7121
  %7132 = select i1 %236, float %7129, float %7120
  %7133 = select i1 %236, float 1.000000e+00, float %7119
  %7134 = select i1 %236, float %7130, float %7125
  %7135 = select i1 %236, float 0.000000e+00, float %7126
  %7136 = select i1 %236, float 0.000000e+00, float %7127
  %7137 = fmul fast float %7131, %6355
  %7138 = fmul fast float %7132, %6356
  %7139 = fmul fast float %7133, %6357
  %7140 = fadd fast float %7137, %7134
  %7141 = fadd fast float %7138, %7135
  %7142 = fadd fast float %7136, %7139
  %7143 = fmul fast float %7131, %6358
  %7144 = fmul fast float %7132, %6359
  %7145 = fmul fast float %7133, %6360
  %7146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.i32 %7146, 0
  %7148 = icmp eq i32 %7147, 0
  br i1 %7148, label %7516, label %7149, !dx.controlflow.hints !182

; <label>:7149                                    ; preds = %7118
  %7150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7151 = extractvalue %dx.types.CBufRet.f32 %7150, 2
  %7152 = extractvalue %dx.types.CBufRet.f32 %7150, 3
  %7153 = fmul fast float %7151, %98
  %7154 = fmul fast float %7152, %99
  %7155 = fmul fast float %7153, 2.000000e+00
  %7156 = fmul fast float %7154, 2.000000e+00
  %7157 = fsub fast float 1.000000e+00, %7155
  %7158 = fsub fast float 1.000000e+00, %7156
  %7159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7160 = extractvalue %dx.types.CBufRet.f32 %7159, 0
  %7161 = extractvalue %dx.types.CBufRet.f32 %7159, 1
  %7162 = extractvalue %dx.types.CBufRet.f32 %7159, 2
  %7163 = fmul fast float %7157, %7160
  %7164 = fmul fast float %7157, %7161
  %7165 = fmul fast float %7157, %7162
  %7166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7167 = extractvalue %dx.types.CBufRet.f32 %7166, 0
  %7168 = extractvalue %dx.types.CBufRet.f32 %7166, 1
  %7169 = extractvalue %dx.types.CBufRet.f32 %7166, 2
  %7170 = fmul fast float %7158, %7167
  %7171 = fmul fast float %7158, %7168
  %7172 = fmul fast float %7158, %7169
  %7173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7174 = extractvalue %dx.types.CBufRet.f32 %7173, 0
  %7175 = extractvalue %dx.types.CBufRet.f32 %7173, 1
  %7176 = extractvalue %dx.types.CBufRet.f32 %7173, 2
  %7177 = fadd fast float %7170, %7174
  %7178 = fadd fast float %7177, %7163
  %7179 = fadd fast float %7171, %7175
  %7180 = fadd fast float %7179, %7164
  %7181 = fadd fast float %7172, %7176
  %7182 = fadd fast float %7181, %7165
  %7183 = fmul fast float %7178, %6354
  %7184 = fmul fast float %7180, %6354
  %7185 = fmul fast float %7182, %6354
  %7186 = fmul fast float %7183, %7183
  %7187 = fmul fast float %7184, %7184
  %7188 = fadd fast float %7186, %7187
  %7189 = fmul fast float %7185, %7185
  %7190 = fadd fast float %7188, %7189
  %7191 = call float @dx.op.unary.f32(i32 24, float %7190)  ; Sqrt(value)
  %7192 = extractvalue %dx.types.CBufRet.f32 %6079, 0
  %7193 = fsub fast float %7191, %7192
  %7194 = extractvalue %dx.types.CBufRet.f32 %6079, 2
  %7195 = fmul fast float %7193, %7194
  %7196 = call float @dx.op.unary.f32(i32 7, float %7195)  ; Saturate(value)
  %7197 = fadd fast float %7196, -5.000000e-01
  %7198 = fmul fast float %7197, 2.000000e+00
  %7199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7200 = extractvalue %dx.types.CBufRet.f32 %7199, 2
  %7201 = call float @dx.op.binary.f32(i32 36, float %7200, float %7198)  ; FMin(a,b)
  %7202 = fsub fast float -0.000000e+00, %7200
  %7203 = fcmp fast ogt float %7201, %7202
  br i1 %7203, label %7204, label %7516, !dx.controlflow.hints !183

; <label>:7204                                    ; preds = %7149
  %7205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7206 = extractvalue %dx.types.CBufRet.f32 %7205, 3
  %7207 = fcmp fast ogt float %7206, 0.000000e+00
  br i1 %7207, label %7208, label %7283, !dx.controlflow.hints !184

; <label>:7208                                    ; preds = %7204
  %7209 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %7210 = extractvalue %dx.types.Dimensions %7209, 0
  %7211 = sitofp i32 %7210 to float
  %7212 = extractvalue %dx.types.Dimensions %7209, 1
  %7213 = sitofp i32 %7212 to float
  %7214 = fmul fast float %7153, %7211
  %7215 = fmul fast float %7154, %7213
  %7216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7217 = extractvalue %dx.types.CBufRet.f32 %7216, 1
  %7218 = fsub fast float -0.000000e+00, %7217
  %7219 = fptoui float %7218 to i32
  %7220 = fptoui float %7214 to i32
  %7221 = fptoui float %7215 to i32
  %7222 = and i32 %7219, 31
  %7223 = lshr i32 %7220, %7222
  %7224 = lshr i32 %7221, %7222
  %7225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %7219, i32 %7223, i32 %7224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7226 = extractvalue %dx.types.ResRet.f32 %7225, 0
  %7227 = fcmp fast olt float %7226, -1.000000e+00
  %7228 = fcmp fast ogt float %7226, -1.000000e+00
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 1
  %7231 = select i1 %7228, float %7230, float 1.000000e+00
  %7232 = fadd fast float %7226, 1.000000e+00
  %7233 = fmul fast float %7231, %7232
  %7234 = call float @dx.op.unary.f32(i32 6, float %7233)  ; FAbs(value)
  %7235 = extractvalue %dx.types.CBufRet.f32 %7229, 3
  %7236 = fcmp fast oge float %7234, %7235
  %7237 = select i1 %7236, float 0x4197782600000000, float %7234
  %7238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7239 = extractvalue %dx.types.CBufRet.f32 %7238, 0
  %7240 = extractvalue %dx.types.CBufRet.f32 %7238, 1
  %7241 = extractvalue %dx.types.CBufRet.f32 %7238, 2
  %7242 = select i1 %7227, float %7239, float %7160
  %7243 = select i1 %7227, float %7240, float %7161
  %7244 = select i1 %7227, float %7241, float %7162
  %7245 = fmul fast float %7242, %7157
  %7246 = fmul fast float %7243, %7157
  %7247 = fmul fast float %7244, %7157
  %7248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7249 = extractvalue %dx.types.CBufRet.f32 %7248, 0
  %7250 = extractvalue %dx.types.CBufRet.f32 %7248, 1
  %7251 = extractvalue %dx.types.CBufRet.f32 %7248, 2
  %7252 = select i1 %7227, float %7249, float %7167
  %7253 = select i1 %7227, float %7250, float %7168
  %7254 = select i1 %7227, float %7251, float %7169
  %7255 = fmul fast float %7252, %7158
  %7256 = fmul fast float %7253, %7158
  %7257 = fmul fast float %7254, %7158
  %7258 = fadd fast float %7255, %7245
  %7259 = fadd fast float %7256, %7246
  %7260 = fadd fast float %7257, %7247
  %7261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7262 = extractvalue %dx.types.CBufRet.f32 %7261, 0
  %7263 = extractvalue %dx.types.CBufRet.f32 %7261, 1
  %7264 = extractvalue %dx.types.CBufRet.f32 %7261, 2
  %7265 = select i1 %7227, float %7262, float %7174
  %7266 = select i1 %7227, float %7263, float %7175
  %7267 = select i1 %7227, float %7264, float %7176
  %7268 = fadd fast float %7258, %7265
  %7269 = fadd fast float %7259, %7266
  %7270 = fadd fast float %7260, %7267
  %7271 = fmul fast float %7268, %7237
  %7272 = fmul fast float %7269, %7237
  %7273 = fmul fast float %7270, %7237
  %7274 = fmul fast float %7271, %7271
  %7275 = fmul fast float %7272, %7272
  %7276 = fadd fast float %7274, %7275
  %7277 = fmul fast float %7273, %7273
  %7278 = fadd fast float %7276, %7277
  %7279 = call float @dx.op.unary.f32(i32 24, float %7278)  ; Sqrt(value)
  %7280 = fsub fast float %7279, %7192
  %7281 = fmul fast float %7280, %7194
  %7282 = call float @dx.op.unary.f32(i32 7, float %7281)  ; Saturate(value)
  br label %7283

; <label>:7283                                    ; preds = %7208, %7204
  %7284 = phi float [ %7282, %7208 ], [ 1.000000e+00, %7204 ]
  %7285 = fmul fast float %7201, 5.000000e-01
  %7286 = fadd fast float %7285, 5.000000e-01
  %7287 = call float @dx.op.unary.f32(i32 22, float %7286)  ; Frc(value)
  %7288 = call float @dx.op.unary.f32(i32 27, float %7287)  ; Round_ni(value)
  %7289 = call float @dx.op.unary.f32(i32 22, float %7287)  ; Frc(value)
  %7290 = fmul fast float %7289, 2.000000e+00
  %7291 = fadd fast float %7290, -1.000000e+00
  %7292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %7153, float %7154, float %7288, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7293 = extractvalue %dx.types.ResRet.f32 %7292, 0
  %7294 = extractvalue %dx.types.ResRet.f32 %7292, 1
  %7295 = extractvalue %dx.types.ResRet.f32 %7292, 2
  %7296 = extractvalue %dx.types.ResRet.f32 %7292, 3
  %7297 = fadd fast float %7293, -5.000000e-01
  %7298 = fadd fast float %7295, -5.000000e-01
  %7299 = fmul fast float %7297, 0xBFD5555560000000
  %7300 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7298, float %7299)  ; FMad(a,b,c)
  %7301 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7294, float 0.000000e+00)  ; FMad(a,b,c)
  %7302 = fadd fast float %7301, %7296
  %7303 = fmul fast float %7297, -7.500000e-01
  %7304 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7298, float %7303)  ; FMad(a,b,c)
  %7305 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7294, float 0.000000e+00)  ; FMad(a,b,c)
  %7306 = fadd fast float %7305, %7296
  %7307 = call float @dx.op.binary.f32(i32 35, float %7300, float -1.000000e+00)  ; FMax(a,b)
  %7308 = call float @dx.op.binary.f32(i32 35, float %7302, float -1.000000e+00)  ; FMax(a,b)
  %7309 = call float @dx.op.binary.f32(i32 35, float %7304, float -1.000000e+00)  ; FMax(a,b)
  %7310 = call float @dx.op.binary.f32(i32 35, float %7306, float -1.000000e+00)  ; FMax(a,b)
  %7311 = call float @dx.op.binary.f32(i32 36, float %7307, float 1.000000e+00)  ; FMin(a,b)
  %7312 = call float @dx.op.binary.f32(i32 36, float %7308, float 1.000000e+00)  ; FMin(a,b)
  %7313 = call float @dx.op.binary.f32(i32 36, float %7309, float 1.000000e+00)  ; FMin(a,b)
  %7314 = call float @dx.op.binary.f32(i32 36, float %7310, float 1.000000e+00)  ; FMin(a,b)
  %7315 = fcmp fast olt float %7311, 0x3FEFFF8020000000
  br i1 %7315, label %7316, label %7431, !dx.controlflow.hints !185

; <label>:7316                                    ; preds = %7283
  %7317 = extractvalue %dx.types.CBufRet.f32 %7199, 3
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 0
  %7320 = extractvalue %dx.types.CBufRet.f32 %7318, 1
  %7321 = extractvalue %dx.types.CBufRet.f32 %7318, 2
  %7322 = extractvalue %dx.types.CBufRet.f32 %7318, 3
  %7323 = fsub fast float %7319, %7311
  %7324 = fsub fast float %7320, %7312
  %7325 = fsub fast float %7321, %7313
  %7326 = fsub fast float %7322, %7314
  %7327 = fmul fast float %7323, %7317
  %7328 = fmul fast float %7324, %7317
  %7329 = fmul fast float %7325, %7317
  %7330 = fmul fast float %7326, %7317
  %7331 = fadd fast float %7327, %7311
  %7332 = fadd fast float %7328, %7312
  %7333 = fsub fast float -0.000000e+00, %7332
  %7334 = fadd fast float %7329, %7313
  %7335 = fadd fast float %7330, %7314
  %7336 = fmul fast float %7331, %7331
  %7337 = fsub fast float %7332, %7336
  %7338 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7337)  ; FMax(a,b)
  %7339 = fdiv fast float 1.000000e+00, %7338
  %7340 = fmul fast float %7332, %7331
  %7341 = fsub fast float %7334, %7340
  %7342 = fsub fast float %7291, %7331
  %7343 = fmul fast float %7291, %7291
  %7344 = fsub fast float %7343, %7332
  %7345 = fmul fast float %7342, %7339
  %7346 = fmul fast float %7345, %7341
  %7347 = fsub fast float %7344, %7346
  %7348 = fmul fast float %7332, %7332
  %7349 = fsub fast float %7335, %7348
  %7350 = fmul fast float %7341, %7341
  %7351 = fmul fast float %7350, %7339
  %7352 = fsub fast float %7349, %7351
  %7353 = fdiv fast float %7347, %7352
  %7354 = fmul fast float %7341, %7353
  %7355 = fsub fast float %7342, %7354
  %7356 = fmul fast float %7355, %7339
  %7357 = fmul fast float %7356, %7331
  %7358 = fsub fast float 1.000000e+00, %7357
  %7359 = fmul fast float %7332, %7353
  %7360 = fsub fast float %7358, %7359
  %7361 = fmul fast float %7356, %7356
  %7362 = fmul fast float %7353, 4.000000e+00
  %7363 = fmul fast float %7362, %7360
  %7364 = fsub fast float %7361, %7363
  %7365 = call float @dx.op.unary.f32(i32 24, float %7364)  ; Sqrt(value)
  %7366 = fcmp fast oge float %7356, 0.000000e+00
  %7367 = fsub fast float -0.000000e+00, %7365
  %7368 = select i1 %7366, float %7367, float %7365
  %7369 = fsub fast float %7368, %7356
  %7370 = fdiv fast float %7369, %7353
  %7371 = fdiv fast float %7360, %7369
  %7372 = fmul fast float %7370, 5.000000e-01
  %7373 = fmul fast float %7371, 2.000000e+00
  %7374 = select i1 %7366, float %7372, float %7373
  %7375 = select i1 %7366, float %7373, float %7372
  %7376 = call float @dx.op.binary.f32(i32 35, float %7374, float %7375)  ; FMax(a,b)
  %7377 = call float @dx.op.binary.f32(i32 36, float %7374, float %7375)  ; FMin(a,b)
  %7378 = fcmp fast ogt float %7291, %7377
  br i1 %7378, label %7379, label %7389

; <label>:7379                                    ; preds = %7316
  %7380 = fsub fast float %7291, %7377
  %7381 = fsub fast float %7376, %7377
  %7382 = fmul fast float %7380, %7381
  %7383 = fmul fast float %7376, %7291
  %7384 = fadd fast float %7376, %7291
  %7385 = fmul fast float %7384, %7331
  %7386 = fadd fast float %7383, %7332
  %7387 = fsub fast float %7386, %7385
  %7388 = fdiv fast float %7387, %7382
  br label %7389

; <label>:7389                                    ; preds = %7379, %7316
  %7390 = phi float [ %7388, %7379 ], [ 0.000000e+00, %7316 ]
  %7391 = fcmp fast ogt float %7291, %7376
  %7392 = fsub fast float %7291, %7376
  br i1 %7391, label %7393, label %7403

; <label>:7393                                    ; preds = %7389
  %7394 = fsub fast float %7376, %7377
  %7395 = fmul fast float %7394, %7392
  %7396 = fmul fast float %7377, %7291
  %7397 = fadd fast float %7377, %7291
  %7398 = fmul fast float %7397, %7331
  %7399 = fsub fast float %7333, %7396
  %7400 = fadd fast float %7399, %7398
  %7401 = fdiv fast float %7400, %7395
  %7402 = fadd fast float %7401, %7390
  br label %7403

; <label>:7403                                    ; preds = %7393, %7389
  %7404 = phi float [ %7402, %7393 ], [ %7390, %7389 ]
  %7405 = fsub fast float %7291, %7377
  %7406 = fmul fast float %7405, %7392
  %7407 = fmul fast float %7377, %7376
  %7408 = fadd fast float %7377, %7376
  %7409 = fmul fast float %7408, %7331
  %7410 = fadd fast float %7407, %7332
  %7411 = fsub fast float %7410, %7409
  %7412 = fdiv fast float %7411, %7406
  %7413 = call float @dx.op.unary.f32(i32 7, float %7404)  ; Saturate(value)
  %7414 = fcmp fast oeq float %6080, 0.000000e+00
  %7415 = extractvalue %dx.types.CBufRet.f32 %7199, 0
  %7416 = fcmp fast oeq float %7415, 0.000000e+00
  %7417 = or i1 %7414, %7416
  %7418 = fmul fast float %7415, 2.000000e+00
  %7419 = fadd fast float %7200, %7201
  %7420 = fdiv fast float %7419, %7418
  %7421 = call float @dx.op.unary.f32(i32 7, float %7420)  ; Saturate(value)
  %7422 = fmul fast float %7421, 2.000000e+00
  %7423 = fsub fast float 3.000000e+00, %7422
  %7424 = fmul fast float %7421, %7421
  %7425 = fmul fast float %7424, %7423
  %7426 = select i1 %7417, float 1.000000e+00, float %7425
  %7427 = fmul fast float %7412, %6080
  %7428 = fadd fast float %7413, %7427
  %7429 = call float @dx.op.unary.f32(i32 7, float %7428)  ; Saturate(value)
  %7430 = fmul fast float %7426, %7429
  br label %7431

; <label>:7431                                    ; preds = %7403, %7283
  %7432 = phi float [ %7430, %7403 ], [ 0.000000e+00, %7283 ]
  %7433 = fsub fast float 1.000000e+00, %7432
  %7434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %7153, float %7154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7435 = extractvalue %dx.types.ResRet.f32 %7434, 0
  %7436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7437 = extractvalue %dx.types.CBufRet.i32 %7436, 2
  %7438 = icmp eq i32 %7437, 0
  br i1 %7438, label %7444, label %7439

; <label>:7439                                    ; preds = %7431
  %7440 = call float @dx.op.unary.f32(i32 7, float %7432)  ; Saturate(value)
  %7441 = fadd fast float %7435, -1.000000e+00
  %7442 = fmul fast float %7440, %7441
  %7443 = fadd fast float %7442, 1.000000e+00
  br label %7444

; <label>:7444                                    ; preds = %7439, %7431
  %7445 = phi float [ %7443, %7439 ], [ %7433, %7431 ]
  br i1 %7207, label %7446, label %7464

; <label>:7446                                    ; preds = %7444
  %7447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7448 = extractvalue %dx.types.CBufRet.f32 %7447, 1
  %7449 = fsub fast float %7284, %7448
  %7450 = call float @dx.op.unary.f32(i32 7, float %7449)  ; Saturate(value)
  %7451 = fsub fast float %7284, %7206
  %7452 = call float @dx.op.unary.f32(i32 7, float %7451)  ; Saturate(value)
  %7453 = fsub fast float %7450, %7452
  %7454 = fsub fast float %7286, %7452
  %7455 = fdiv fast float %7454, %7453
  %7456 = call float @dx.op.unary.f32(i32 7, float %7455)  ; Saturate(value)
  %7457 = fmul fast float %7456, 2.000000e+00
  %7458 = fsub fast float 3.000000e+00, %7457
  %7459 = fsub fast float %7435, %7445
  %7460 = fmul fast float %7456, %7456
  %7461 = fmul fast float %7460, %7459
  %7462 = fmul fast float %7461, %7458
  %7463 = fadd fast float %7462, %7445
  br label %7464

; <label>:7464                                    ; preds = %7446, %7444
  %7465 = phi float [ %7463, %7446 ], [ %7445, %7444 ]
  %7466 = call float @dx.op.binary.f32(i32 35, float %7435, float %7465)  ; FMax(a,b)
  %7467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7468 = extractvalue %dx.types.CBufRet.i32 %7467, 2
  %7469 = and i32 %7468, 1
  %7470 = icmp eq i32 %7469, 0
  %7471 = fcmp fast une float %7466, 1.000000e+00
  %7472 = and i1 %7471, %7470
  br i1 %7472, label %7473, label %7492

; <label>:7473                                    ; preds = %7464
  %7474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %7153, float %7154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7475 = extractvalue %dx.types.ResRet.f32 %7474, 0
  %7476 = extractvalue %dx.types.ResRet.f32 %7474, 1
  %7477 = extractvalue %dx.types.ResRet.f32 %7474, 2
  %7478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.f32 %7478, 1
  %7480 = fmul fast float %7479, %7475
  %7481 = fmul fast float %7479, %7476
  %7482 = fmul fast float %7479, %7477
  %7483 = fcmp fast ogt float %7435, 0x3FEFFF2E40000000
  %7484 = fsub fast float 1.000000e+00, %7466
  %7485 = fsub fast float 1.000000e+00, %7435
  %7486 = fdiv fast float %7484, %7485
  %7487 = call float @dx.op.unary.f32(i32 7, float %7486)  ; Saturate(value)
  %7488 = select i1 %7483, float 0.000000e+00, float %7487
  %7489 = fmul fast float %7480, %7488
  %7490 = fmul fast float %7481, %7488
  %7491 = fmul fast float %7482, %7488
  br label %7492

; <label>:7492                                    ; preds = %7473, %7464
  %7493 = phi float [ 0.000000e+00, %7464 ], [ %7489, %7473 ]
  %7494 = phi float [ 0.000000e+00, %7464 ], [ %7490, %7473 ]
  %7495 = phi float [ 0.000000e+00, %7464 ], [ %7491, %7473 ]
  %7496 = fmul fast float %7493, %6068
  %7497 = fmul fast float %7494, %6068
  %7498 = fmul fast float %7495, %6068
  %7499 = fmul fast float %7466, %7128
  %7500 = call float @dx.op.dot3.f32(i32 55, float %7466, float %7466, float %7466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7501 = call float @dx.op.dot3.f32(i32 55, float %7496, float %7497, float %7498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7502 = select i1 %236, float %7500, float %7466
  %7503 = select i1 %236, float 1.000000e+00, float %7466
  %7504 = select i1 %236, float %7501, float %7496
  %7505 = select i1 %236, float 0.000000e+00, float %7497
  %7506 = select i1 %236, float 0.000000e+00, float %7498
  %7507 = fmul fast float %7502, %7140
  %7508 = fmul fast float %7502, %7141
  %7509 = fmul fast float %7503, %7142
  %7510 = fadd fast float %7507, %7504
  %7511 = fadd fast float %7508, %7505
  %7512 = fadd fast float %7506, %7509
  %7513 = fmul fast float %7502, %7143
  %7514 = fmul fast float %7502, %7144
  %7515 = fmul fast float %7503, %7145
  br label %7516

; <label>:7516                                    ; preds = %7492, %7149, %7118, %6350
  %7517 = phi float [ %6355, %6350 ], [ %7140, %7118 ], [ %7510, %7492 ], [ %7140, %7149 ]
  %7518 = phi float [ %6356, %6350 ], [ %7141, %7118 ], [ %7511, %7492 ], [ %7141, %7149 ]
  %7519 = phi float [ %6357, %6350 ], [ %7142, %7118 ], [ %7512, %7492 ], [ %7142, %7149 ]
  %7520 = phi float [ %6358, %6350 ], [ %7143, %7118 ], [ %7513, %7492 ], [ %7143, %7149 ]
  %7521 = phi float [ %6359, %6350 ], [ %7144, %7118 ], [ %7514, %7492 ], [ %7144, %7149 ]
  %7522 = phi float [ %6360, %6350 ], [ %7145, %7118 ], [ %7515, %7492 ], [ %7145, %7149 ]
  %7523 = phi float [ %6361, %6350 ], [ %7128, %7118 ], [ %7499, %7492 ], [ %7128, %7149 ]
  %7524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7525 = extractvalue %dx.types.CBufRet.f32 %7524, 2
  %7526 = extractvalue %dx.types.CBufRet.f32 %7524, 3
  %7527 = fmul fast float %7525, %98
  %7528 = fmul fast float %7526, %99
  %7529 = call float @dx.op.unary.f32(i32 7, float %7527)  ; Saturate(value)
  %7530 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7531 = select i1 %6090, i32 2, i32 0
  %7532 = or i32 %7531, 1
  %7533 = uitofp i32 %7532 to float
  %7534 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %7529, float %7530, float %7533, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7535 = extractvalue %dx.types.ResRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.ResRet.f32 %7534, 1
  %7537 = extractvalue %dx.types.ResRet.f32 %7534, 2
  %7538 = extractvalue %dx.types.ResRet.f32 %7534, 3
  %7539 = add nuw nsw i32 %7531, 2
  %7540 = uitofp i32 %7539 to float
  %7541 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %7529, float %7530, float %7540, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7542 = extractvalue %dx.types.ResRet.f32 %7541, 0
  %7543 = extractvalue %dx.types.ResRet.f32 %7541, 1
  %7544 = extractvalue %dx.types.ResRet.f32 %7541, 2
  %7545 = extractvalue %dx.types.ResRet.f32 %7541, 3
  %7546 = call float @dx.op.binary.f32(i32 35, float %7536, float %7537)  ; FMax(a,b)
  %7547 = call float @dx.op.binary.f32(i32 35, float %7535, float %7546)  ; FMax(a,b)
  %7548 = call float @dx.op.binary.f32(i32 35, float %7547, float %7538)  ; FMax(a,b)
  %7549 = call float @dx.op.binary.f32(i32 36, float %7543, float %7544)  ; FMin(a,b)
  %7550 = call float @dx.op.binary.f32(i32 36, float %7542, float %7549)  ; FMin(a,b)
  %7551 = call float @dx.op.binary.f32(i32 36, float %7550, float %7545)  ; FMin(a,b)
  %7552 = fmul fast float %7548, 2.550000e+02
  %7553 = fadd fast float %7552, 0x3F70101020000000
  %7554 = fptoui float %7553 to i32
  %7555 = fmul fast float %7551, 2.550000e+02
  %7556 = fadd fast float %7555, 0x3F70101020000000
  %7557 = fptoui float %7556 to i32
  %7558 = icmp ult i32 %7554, %7557
  br i1 %7558, label %7559, label %7728

; <label>:7559                                    ; preds = %7516
  %7560 = fcmp fast ogt float %88, 9.843750e-01
  %7561 = fadd fast float %6354, -4.000000e+00
  %7562 = select i1 %7560, float -4.000000e+00, float %7561
  %7563 = call float @dx.op.binary.f32(i32 35, float %7562, float 0.000000e+00)  ; FMax(a,b)
  %7564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7565 = extractvalue %dx.types.CBufRet.f32 %7564, 0
  %7566 = fadd fast float %7565, %7563
  %7567 = extractvalue %dx.types.CBufRet.f32 %7564, 2
  %7568 = fmul fast float %7566, %7567
  %7569 = call float @dx.op.unary.f32(i32 23, float %7568)  ; Log(value)
  %7570 = extractvalue %dx.types.CBufRet.f32 %7564, 3
  %7571 = fmul fast float %7570, %7569
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 2
  %7574 = fmul fast float %7571, %7573
  %7575 = call float @dx.op.unary.f32(i32 7, float %7574)  ; Saturate(value)
  %7576 = uitofp i32 %7554 to float
  %7577 = uitofp i32 %7557 to float
  %7578 = fadd fast float %7576, 5.000000e-01
  %7579 = fadd fast float %7577, 5.000000e-01
  %7580 = fmul fast float %7573, %7578
  %7581 = fmul fast float %7573, %7579
  %7582 = fadd fast float %7580, 0x3F0FFB4800000000
  %7583 = fadd fast float %7581, 0xBF0FFB4800000000
  %7584 = call float @dx.op.binary.f32(i32 35, float %7575, float %7582)  ; FMax(a,b)
  %7585 = call float @dx.op.binary.f32(i32 36, float %7584, float %7583)  ; FMin(a,b)
  %7586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7587 = extractvalue %dx.types.CBufRet.f32 %7586, 1
  %7588 = extractvalue %dx.types.CBufRet.f32 %7586, 2
  %7589 = extractvalue %dx.types.CBufRet.f32 %7586, 0
  %7590 = select i1 %6090, float %7589, float 0.000000e+00
  %7591 = fmul fast float %7587, %7585
  %7592 = fadd fast float %7590, %7591
  %7593 = fadd fast float %7590, %7588
  %7594 = fsub fast float %7587, %7588
  %7595 = fadd fast float %7594, %7590
  %7596 = call float @dx.op.binary.f32(i32 35, float %7592, float %7593)  ; FMax(a,b)
  %7597 = call float @dx.op.binary.f32(i32 36, float %7596, float %7595)  ; FMin(a,b)
  %7598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %7529, float %7530, float %7597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7599 = extractvalue %dx.types.ResRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.ResRet.f32 %7598, 1
  %7601 = extractvalue %dx.types.ResRet.f32 %7598, 2
  %7602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.i32 %7602, 0
  %7604 = extractvalue %dx.types.CBufRet.i32 %7602, 1
  %7605 = uitofp i32 %7603 to float
  %7606 = uitofp i32 %7604 to float
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 0
  %7609 = extractvalue %dx.types.CBufRet.f32 %7607, 1
  %7610 = fmul fast float %7605, %7529
  %7611 = fmul fast float %7606, %7530
  %7612 = fadd fast float %7610, -5.000000e-01
  %7613 = fadd fast float %7611, -5.000000e-01
  %7614 = call float @dx.op.unary.f32(i32 22, float %7612)  ; Frc(value)
  %7615 = call float @dx.op.unary.f32(i32 22, float %7613)  ; Frc(value)
  %7616 = fmul fast float %7614, %7614
  %7617 = fmul fast float %7616, %7614
  %7618 = fsub fast float 3.000000e+00, %7614
  %7619 = fmul fast float %7616, %7618
  %7620 = fmul fast float %7614, 3.000000e+00
  %7621 = fmul fast float %7617, 3.000000e+00
  %7622 = fmul fast float %7616, 6.000000e+00
  %7623 = fsub fast float %7621, %7622
  %7624 = fadd fast float %7623, 4.000000e+00
  %7625 = fmul fast float %7624, 0x3FC5555560000000
  %7626 = fmul fast float %7617, -3.000000e+00
  %7627 = fadd fast float %7616, %7614
  %7628 = fmul fast float %7627, 3.000000e+00
  %7629 = fadd fast float %7626, 1.000000e+00
  %7630 = fadd fast float %7629, %7628
  %7631 = fmul fast float %7617, 0x3FC5555560000000
  %7632 = fmul fast float %7615, %7615
  %7633 = fmul fast float %7632, %7615
  %7634 = fsub fast float 3.000000e+00, %7615
  %7635 = fmul fast float %7632, %7634
  %7636 = fmul fast float %7615, 3.000000e+00
  %7637 = fmul fast float %7633, 3.000000e+00
  %7638 = fmul fast float %7632, 6.000000e+00
  %7639 = fsub fast float %7637, %7638
  %7640 = fadd fast float %7639, 4.000000e+00
  %7641 = fmul fast float %7640, 0x3FC5555560000000
  %7642 = fmul fast float %7633, -3.000000e+00
  %7643 = fadd fast float %7632, %7615
  %7644 = fmul fast float %7643, 3.000000e+00
  %7645 = fadd fast float %7642, 1.000000e+00
  %7646 = fadd fast float %7645, %7644
  %7647 = fmul fast float %7633, 0x3FC5555560000000
  %7648 = fadd fast float %7614, 1.000000e+00
  %7649 = fsub fast float 1.000000e+00, %7620
  %7650 = fadd fast float %7649, %7619
  %7651 = fadd fast float %7650, %7624
  %7652 = fmul fast float %7651, 0x3FC5555560000000
  %7653 = fdiv fast float %7625, %7652
  %7654 = fsub fast float %7648, %7653
  %7655 = fsub fast float 1.000000e+00, %7614
  %7656 = fadd fast float %7630, %7617
  %7657 = fmul fast float %7656, 0x3FC5555560000000
  %7658 = fdiv fast float %7631, %7657
  %7659 = fadd fast float %7655, %7658
  %7660 = fadd fast float %7615, 1.000000e+00
  %7661 = fsub fast float 1.000000e+00, %7636
  %7662 = fadd fast float %7661, %7635
  %7663 = fadd fast float %7662, %7640
  %7664 = fmul fast float %7663, 0x3FC5555560000000
  %7665 = fdiv fast float %7641, %7664
  %7666 = fsub fast float %7660, %7665
  %7667 = fsub fast float 1.000000e+00, %7615
  %7668 = fadd fast float %7646, %7633
  %7669 = fmul fast float %7668, 0x3FC5555560000000
  %7670 = fdiv fast float %7647, %7669
  %7671 = fadd fast float %7670, %7667
  %7672 = fmul fast float %7654, %7608
  %7673 = fsub fast float %7529, %7672
  %7674 = fmul fast float %7659, %7608
  %7675 = fadd fast float %7674, %7529
  %7676 = fmul fast float %7671, %7609
  %7677 = fadd fast float %7676, %7530
  %7678 = fmul fast float %7666, %7609
  %7679 = fsub fast float %7530, %7678
  %7680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7673, float %7679, float %7597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7681 = extractvalue %dx.types.ResRet.f32 %7680, 0
  %7682 = extractvalue %dx.types.ResRet.f32 %7680, 1
  %7683 = extractvalue %dx.types.ResRet.f32 %7680, 2
  %7684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7675, float %7679, float %7597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7685 = extractvalue %dx.types.ResRet.f32 %7684, 0
  %7686 = extractvalue %dx.types.ResRet.f32 %7684, 1
  %7687 = extractvalue %dx.types.ResRet.f32 %7684, 2
  %7688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7673, float %7677, float %7597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7689 = extractvalue %dx.types.ResRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.ResRet.f32 %7688, 1
  %7691 = extractvalue %dx.types.ResRet.f32 %7688, 2
  %7692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %7675, float %7677, float %7597, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7693 = extractvalue %dx.types.ResRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.ResRet.f32 %7692, 1
  %7695 = extractvalue %dx.types.ResRet.f32 %7692, 2
  %7696 = fsub fast float %7689, %7681
  %7697 = fsub fast float %7690, %7682
  %7698 = fsub fast float %7691, %7683
  %7699 = fmul fast float %7696, %7669
  %7700 = fmul fast float %7697, %7669
  %7701 = fmul fast float %7698, %7669
  %7702 = fadd fast float %7699, %7681
  %7703 = fadd fast float %7700, %7682
  %7704 = fadd fast float %7701, %7683
  %7705 = fsub fast float %7693, %7685
  %7706 = fsub fast float %7694, %7686
  %7707 = fsub fast float %7695, %7687
  %7708 = fmul fast float %7705, %7669
  %7709 = fmul fast float %7706, %7669
  %7710 = fmul fast float %7707, %7669
  %7711 = fsub fast float %7685, %7702
  %7712 = fadd fast float %7711, %7708
  %7713 = fsub fast float %7686, %7703
  %7714 = fadd fast float %7713, %7709
  %7715 = fsub fast float %7687, %7704
  %7716 = fadd fast float %7715, %7710
  %7717 = fmul fast float %7712, %7657
  %7718 = fmul fast float %7714, %7657
  %7719 = fmul fast float %7716, %7657
  %7720 = fadd fast float %7717, %7702
  %7721 = fadd fast float %7718, %7703
  %7722 = fadd fast float %7719, %7704
  %7723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7724 = extractvalue %dx.types.CBufRet.f32 %7723, 1
  %7725 = fmul fast float %7720, %7724
  %7726 = fmul fast float %7721, %7724
  %7727 = fmul fast float %7722, %7724
  br label %7728

; <label>:7728                                    ; preds = %7559, %7516
  %7729 = phi float [ %7599, %7559 ], [ 1.000000e+00, %7516 ]
  %7730 = phi float [ %7600, %7559 ], [ 1.000000e+00, %7516 ]
  %7731 = phi float [ %7601, %7559 ], [ 1.000000e+00, %7516 ]
  %7732 = phi float [ %7725, %7559 ], [ 0.000000e+00, %7516 ]
  %7733 = phi float [ %7726, %7559 ], [ 0.000000e+00, %7516 ]
  %7734 = phi float [ %7727, %7559 ], [ 0.000000e+00, %7516 ]
  %7735 = fmul fast float %7732, %6068
  %7736 = fmul fast float %7733, %6068
  %7737 = fmul fast float %7734, %6068
  %7738 = fmul fast float %7729, %7523
  %7739 = call float @dx.op.dot3.f32(i32 55, float %7729, float %7730, float %7731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7740 = call float @dx.op.dot3.f32(i32 55, float %7735, float %7736, float %7737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7741 = select i1 %236, float %7739, float %7729
  %7742 = select i1 %236, float %7739, float %7730
  %7743 = select i1 %236, float 1.000000e+00, float %7731
  %7744 = select i1 %236, float %7740, float %7735
  %7745 = select i1 %236, float 0.000000e+00, float %7736
  %7746 = select i1 %236, float 0.000000e+00, float %7737
  %7747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7748 = extractvalue %dx.types.CBufRet.i32 %7747, 3
  %7749 = and i32 %7748, 3
  %7750 = icmp ne i32 %7749, 0
  %7751 = and i32 %7748, 4
  %7752 = icmp ne i32 %7751, 0
  %7753 = and i1 %7750, %7752
  %7754 = and i1 %236, %7753
  br i1 %7754, label %7755, label %7761

; <label>:7755                                    ; preds = %7728
  %7756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7757 = extractvalue %dx.types.CBufRet.f32 %7756, 1
  %7758 = fadd fast float %7738, -1.000000e+00
  %7759 = fmul fast float %7757, %7758
  %7760 = fadd fast float %7759, 1.000000e+00
  br label %7761

; <label>:7761                                    ; preds = %7755, %7728
  %7762 = phi float [ %7760, %7755 ], [ %7738, %7728 ]
  %7763 = fadd fast float %7520, %7517
  %7764 = fmul fast float %7741, %7763
  %7765 = fadd fast float %7764, %7744
  %7766 = fadd fast float %7521, %7518
  %7767 = fmul fast float %7742, %7766
  %7768 = fadd fast float %7767, %7745
  %7769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.f32 %7769, 0
  br i1 %236, label %7771, label %7795

; <label>:7771                                    ; preds = %7761
  %7772 = fadd fast float %7765, %7768
  %7773 = fmul fast float %7770, %7772
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 3
  %7776 = extractvalue %dx.types.CBufRet.f32 %6072, 1
  %7777 = fsub fast float %6077, %6071
  %7778 = fadd fast float %7777, %6078
  %7779 = fsub fast float %7778, %7776
  %7780 = extractvalue %dx.types.CBufRet.f32 %6072, 2
  %7781 = fmul fast float %7779, %7780
  %7782 = call float @dx.op.unary.f32(i32 7, float %7781)  ; Saturate(value)
  %7783 = fsub fast float %7782, %7775
  %7784 = fmul fast float %7783, %7762
  %7785 = fadd fast float %7784, %7775
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 0
  %7788 = fsub fast float %7785, %7787
  %7789 = fmul fast float %7788, 1.000000e+01
  %7790 = call float @dx.op.unary.f32(i32 7, float %7789)  ; Saturate(value)
  %7791 = fsub fast float %2357, %6068
  %7792 = fmul fast float %7790, %7791
  %7793 = fadd fast float %7792, %6068
  %7794 = fmul fast float %7793, %7785
  br label %7819

; <label>:7795                                    ; preds = %7761
  %7796 = fadd fast float %7522, %7519
  %7797 = fmul fast float %7743, %7796
  %7798 = fadd fast float %7797, %7746
  %7799 = fmul fast float %7770, %7765
  %7800 = fmul fast float %7770, %7768
  %7801 = fmul fast float %7770, %7798
  %7802 = call float @dx.op.binary.f32(i32 35, float %7800, float %7801)  ; FMax(a,b)
  %7803 = call float @dx.op.binary.f32(i32 35, float %7799, float %7802)  ; FMax(a,b)
  %7804 = call float @dx.op.binary.f32(i32 35, float %7803, float %6068)  ; FMax(a,b)
  %7805 = fcmp fast ugt float %7804, 0x3F10000000000000
  br i1 %7805, label %7807, label %7806

; <label>:7806                                    ; preds = %7795
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7807

; <label>:7807                                    ; preds = %7806, %7795
  %7808 = add i32 %65, 196
  %7809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %7808, i32 undef)  ; BufferLoad(srv,index,wot)
  %7810 = extractvalue %dx.types.ResRet.i32 %7809, 0
  %7811 = and i32 %7810, 32
  %7812 = icmp eq i32 %7811, 0
  br i1 %7812, label %7819, label %7813

; <label>:7813                                    ; preds = %7807
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7816 = fmul fast float %7815, 0x3FE99999A0000000
  %7817 = fadd fast float %7815, %7799
  %7818 = fadd fast float %7816, %7801
  br label %7819

; <label>:7819                                    ; preds = %7813, %7807, %7771
  %7820 = phi float [ %7773, %7771 ], [ %7817, %7813 ], [ %7799, %7807 ]
  %7821 = phi float [ %7794, %7771 ], [ %7800, %7813 ], [ %7800, %7807 ]
  %7822 = phi float [ %7793, %7771 ], [ %7818, %7813 ], [ %7801, %7807 ]
  %7823 = phi float [ %7793, %7771 ], [ %6068, %7813 ], [ %6068, %7807 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7824 = call float @dx.op.binary.f32(i32 36, float %7820, float 3.225500e+04)  ; FMin(a,b)
  %7825 = call float @dx.op.binary.f32(i32 36, float %7821, float 3.225500e+04)  ; FMin(a,b)
  %7826 = call float @dx.op.binary.f32(i32 36, float %7822, float 3.225500e+04)  ; FMin(a,b)
  %7827 = call float @dx.op.binary.f32(i32 36, float %7823, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7824)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7825)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7826)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7827)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!78 = !{[32 x i32] [i32 30, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!79 = !{void ()* @ps_main, !"ps_main", !80, !4, !100}
!80 = !{!81, !98, null}
!81 = !{!82, !85, !87, !88, !90, !91, !92, !94, !96, !97}
!82 = !{i32 0, !"SV_Position", i8 9, i8 3, !83, i8 4, i32 1, i8 4, i32 0, i8 0, !84}
!83 = !{i32 0}
!84 = !{i32 3, i32 15}
!85 = !{i32 1, !"COLOR", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 1, i8 0, !86}
!86 = !{i32 3, i32 3}
!87 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 2, i8 0, !84}
!88 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 3, i8 0, !89}
!89 = !{i32 3, i32 7}
!90 = !{i32 4, !"NORMAL", i8 9, i8 0, !83, i8 2, i32 1, i8 3, i32 4, i8 0, !89}
!91 = !{i32 5, !"TANGENT", i8 9, i8 0, !83, i8 2, i32 1, i8 4, i32 5, i8 0, !84}
!92 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !93, i8 2, i32 1, i8 4, i32 6, i8 0, !84}
!93 = !{i32 1}
!94 = !{i32 7, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 7, i8 0, !95}
!95 = !{i32 3, i32 1}
!96 = !{i32 8, !"TRANSIENT_INDEX", i8 5, i8 0, !83, i8 1, i32 1, i8 1, i32 7, i8 1, !95}
!97 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !83, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!98 = !{!99}
!99 = !{i32 0, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 0, i8 0, !84}
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
!145 = distinct !{!145, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!149 = distinct !{!149, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!150 = distinct !{!150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!151 = distinct !{!151, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!152 = distinct !{!152, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

