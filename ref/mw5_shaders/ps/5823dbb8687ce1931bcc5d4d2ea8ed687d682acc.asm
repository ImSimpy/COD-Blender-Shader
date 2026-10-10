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
;
; shader hash: aeabb4b38cba2d6c66cfc716776e5f19
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
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20, 21 }
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
  %282 = add i32 %65, 124
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 2
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %295, label %287

; <label>:287                                     ; preds = %227
  %288 = add i32 %65, 164
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
  br i1 %304, label %946, label %305

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
  %796 = add i32 %65, 132
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
  %933 = add i32 %65, 48
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 255
  %937 = uitofp i32 %936 to float
  %938 = lshr i32 %935, 8
  %939 = and i32 %938, 255
  %940 = uitofp i32 %939 to float
  %941 = call float @dx.op.dot3.f32(i32 55, float %802, float %803, float %804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %942 = fmul fast float %940, %941
  %943 = fadd fast float %942, %937
  %944 = fmul fast float %943, 0x3F70101020000000
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  br label %946

; <label>:946                                     ; preds = %929, %295
  %947 = phi float [ 0.000000e+00, %295 ], [ %883, %929 ]
  %948 = phi float [ 0.000000e+00, %295 ], [ %884, %929 ]
  %949 = phi float [ 0.000000e+00, %295 ], [ %802, %929 ]
  %950 = phi float [ 0.000000e+00, %295 ], [ %803, %929 ]
  %951 = phi float [ 0.000000e+00, %295 ], [ %804, %929 ]
  %952 = phi float [ 0.000000e+00, %295 ], [ %930, %929 ]
  %953 = phi float [ 0.000000e+00, %295 ], [ %931, %929 ]
  %954 = phi float [ 0.000000e+00, %295 ], [ %932, %929 ]
  %955 = phi float [ 0.000000e+00, %295 ], [ %788, %929 ]
  %956 = phi float [ 0.000000e+00, %295 ], [ %584, %929 ]
  %957 = phi float [ 0.000000e+00, %295 ], [ %882, %929 ]
  %958 = phi float [ 0.000000e+00, %295 ], [ %885, %929 ]
  %959 = phi float [ 0.000000e+00, %295 ], [ %945, %929 ]
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %962 = call float @dx.op.dot2.f32(i32 54, float %947, float %948, float %947, float %948)  ; Dot2(ax,ay,bx,by)
  %963 = fmul fast float %962, 0x3FE3333340000000
  %964 = fsub fast float 1.000000e+00, %963
  %965 = call float @dx.op.dot3.f32(i32 55, float %947, float %948, float %964, float %947, float %948, float %964)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = call float @dx.op.unary.f32(i32 25, float %965)  ; Rsqrt(value)
  %967 = fmul fast float %966, %947
  %968 = fmul fast float %966, %948
  %969 = fmul fast float %964, %966
  %970 = fmul fast float %969, %70
  %971 = fmul fast float %969, %71
  %972 = fmul fast float %969, %72
  %973 = fmul fast float %967, %66
  %974 = fmul fast float %967, %67
  %975 = fmul fast float %967, %68
  %976 = fadd fast float %970, %973
  %977 = fadd fast float %971, %974
  %978 = fadd fast float %972, %975
  %979 = fmul fast float %968, %101
  %980 = fmul fast float %968, %102
  %981 = fmul fast float %968, %103
  %982 = fadd fast float %976, %979
  %983 = fadd fast float %977, %980
  %984 = fadd fast float %978, %981
  %985 = call float @dx.op.dot3.f32(i32 55, float %982, float %983, float %984, float %982, float %983, float %984)  ; Dot3(ax,ay,az,bx,by,bz)
  %986 = call float @dx.op.unary.f32(i32 25, float %985)  ; Rsqrt(value)
  %987 = fmul fast float %982, %986
  %988 = fmul fast float %983, %986
  %989 = fmul fast float %984, %986
  %990 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %991 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %992 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %993 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %994 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %995 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %996 = fadd fast float %990, %137
  %997 = fadd fast float %991, %138
  %998 = fadd fast float %992, %139
  %999 = fadd fast float %993, %137
  %1000 = fadd fast float %994, %138
  %1001 = fadd fast float %995, %139
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.CBufRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1008 = extractvalue %dx.types.CBufRet.f32 %1006, 3
  %1009 = fmul fast float %1003, %90
  %1010 = fmul fast float %1009, %1007
  %1011 = fmul fast float %1004, %91
  %1012 = fmul fast float %1011, %1008
  %1013 = fptoui float %1010 to i32
  %1014 = fptoui float %1012 to i32
  %1015 = fadd fast float %1003, -1.000000e+00
  %1016 = fadd fast float %1004, -1.000000e+00
  %1017 = fptoui float %1015 to i32
  %1018 = fptoui float %1016 to i32
  %1019 = call i32 @dx.op.binary.i32(i32 40, i32 %1013, i32 %1017)  ; UMin(a,b)
  %1020 = call i32 @dx.op.binary.i32(i32 40, i32 %1014, i32 %1018)  ; UMin(a,b)
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1023 = extractvalue %dx.types.CBufRet.f32 %1021, 3
  %1024 = fmul fast float %1022, %81
  %1025 = fsub fast float %1024, %1023
  %1026 = fadd fast float %1005, -1.000000e+00
  %1027 = call float @dx.op.binary.f32(i32 36, float %1025, float %1026)  ; FMin(a,b)
  %1028 = fptoui float %1027 to i32
  %1029 = fptoui float %1003 to i32
  %1030 = fptoui float %1004 to i32
  %1031 = mul i32 %1028, %1030
  %1032 = add i32 %1031, %1020
  %1033 = mul i32 %1032, %1029
  %1034 = add i32 %1033, %1019
  %1035 = shl i32 %1034, 2
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %1037, 1023
  %1039 = lshr i32 %1037, 10
  %1040 = icmp eq i32 %1038, 0
  br i1 %1040, label %1469, label %1041

; <label>:1041                                    ; preds = %946
  %1042 = and i32 %1037, 1023
  br label %1043

; <label>:1043                                    ; preds = %1170, %1041
  %1044 = phi float [ %1171, %1170 ], [ 0.000000e+00, %1041 ]
  %1045 = phi float [ %1172, %1170 ], [ %956, %1041 ]
  %1046 = phi float [ %1173, %1170 ], [ %961, %1041 ]
  %1047 = phi float [ %1174, %1170 ], [ %959, %1041 ]
  %1048 = phi float [ %1175, %1170 ], [ 0.000000e+00, %1041 ]
  %1049 = phi float [ %1176, %1170 ], [ 0.000000e+00, %1041 ]
  %1050 = phi float [ %1177, %1170 ], [ %952, %1041 ]
  %1051 = phi float [ %1178, %1170 ], [ %953, %1041 ]
  %1052 = phi float [ %1179, %1170 ], [ %954, %1041 ]
  %1053 = phi float [ %1180, %1170 ], [ %987, %1041 ]
  %1054 = phi float [ %1181, %1170 ], [ %988, %1041 ]
  %1055 = phi float [ %1182, %1170 ], [ %989, %1041 ]
  %1056 = phi float [ %1183, %1170 ], [ %958, %1041 ]
  %1057 = phi float [ %1184, %1170 ], [ %957, %1041 ]
  %1058 = phi float [ %1185, %1170 ], [ 0.000000e+00, %1041 ]
  %1059 = phi float [ %1186, %1170 ], [ %955, %1041 ]
  %1060 = phi float [ %1187, %1170 ], [ %949, %1041 ]
  %1061 = phi float [ %1188, %1170 ], [ %950, %1041 ]
  %1062 = phi float [ %1189, %1170 ], [ %951, %1041 ]
  %1063 = phi i32 [ %1120, %1170 ], [ 0, %1041 ]
  %1064 = add nuw nsw i32 %1063, %1039
  %1065 = shl i32 %1064, 2
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = shl i32 %1067, 8
  %1069 = or i32 %1068, 48
  %1070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.f32 %1070, 0
  %1072 = extractvalue %dx.types.ResRet.f32 %1070, 1
  %1073 = extractvalue %dx.types.ResRet.f32 %1070, 2
  %1074 = extractvalue %dx.types.ResRet.f32 %1070, 3
  %1075 = or i32 %1068, 64
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.i32 %1076, 1
  %1079 = or i32 %1068, 80
  %1080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 3
  %1083 = or i32 %1068, 96
  %1084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = extractvalue %dx.types.ResRet.f32 %1084, 3
  %1089 = or i32 %1068, 112
  %1090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1092 = or i32 %1068, 128
  %1093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = extractvalue %dx.types.ResRet.f32 %1093, 3
  %1098 = or i32 %1068, 144
  %1099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.ResRet.f32 %1099, 1
  %1102 = extractvalue %dx.types.ResRet.f32 %1099, 2
  %1103 = extractvalue %dx.types.ResRet.f32 %1099, 3
  %1104 = or i32 %1068, 160
  %1105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1110 = or i32 %1068, 192
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = or i32 %1068, 208
  %1114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = or i32 %1068, 248
  %1117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.f32 %1117, 1
  %1120 = add nuw nsw i32 %1063, 1
  %1121 = bitcast float %1074 to i32
  %1122 = and i32 %1121, 2560
  %1123 = icmp eq i32 %1122, 0
  %1124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.ResRet.f32 %1124, 2
  %1128 = extractvalue %dx.types.ResRet.f32 %1124, 3
  %1129 = call float @dx.op.dot4.f32(i32 56, float %1125, float %1126, float %1127, float %1128, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1130 = or i32 %1068, 16
  %1131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = extractvalue %dx.types.ResRet.f32 %1131, 3
  %1136 = call float @dx.op.dot4.f32(i32 56, float %1132, float %1133, float %1134, float %1135, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1137 = or i32 %1068, 32
  %1138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = extractvalue %dx.types.ResRet.f32 %1138, 3
  %1143 = call float @dx.op.dot4.f32(i32 56, float %1139, float %1140, float %1141, float %1142, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1144 = call float @dx.op.unary.f32(i32 27, float %1129)  ; Round_ni(value)
  %1145 = call float @dx.op.unary.f32(i32 6, float %1144)  ; FAbs(value)
  %1146 = call float @dx.op.unary.f32(i32 27, float %1136)  ; Round_ni(value)
  %1147 = call float @dx.op.unary.f32(i32 6, float %1146)  ; FAbs(value)
  %1148 = call float @dx.op.unary.f32(i32 6, float %1143)  ; FAbs(value)
  %1149 = call float @dx.op.unary.f32(i32 27, float %1148)  ; Round_ni(value)
  %1150 = fadd fast float %1147, %1145
  %1151 = fadd fast float %1150, %1149
  %1152 = fcmp fast oeq float %1151, 0.000000e+00
  %1153 = call float @dx.op.dot4.f32(i32 56, float %1125, float %1126, float %1127, float %1128, float %996, float %997, float %998, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1154 = call float @dx.op.dot4.f32(i32 56, float %1132, float %1133, float %1134, float %1135, float %996, float %997, float %998, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1155 = call float @dx.op.dot4.f32(i32 56, float %1125, float %1126, float %1127, float %1128, float %999, float %1000, float %1001, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1156 = call float @dx.op.dot4.f32(i32 56, float %1132, float %1133, float %1134, float %1135, float %999, float %1000, float %1001, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1157 = fsub fast float %1153, %1129
  %1158 = fsub fast float %1155, %1129
  %1159 = fsub fast float %1154, %1136
  %1160 = fsub fast float %1156, %1136
  %1161 = call float @dx.op.dot3.f32(i32 55, float %1071, float %1072, float %1073, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1164 = fadd fast float %1163, %1161
  %1165 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1167 = fcmp fast ogt float %1165, %1166
  %1168 = and i1 %1152, %1167
  %1169 = and i1 %1123, %1168
  br i1 %1169, label %1191, label %1170

; <label>:1170                                    ; preds = %1455, %1272, %1191, %1043
  %1171 = phi float [ %1044, %1191 ], [ %1275, %1272 ], [ %1275, %1455 ], [ %1044, %1043 ]
  %1172 = phi float [ %1045, %1191 ], [ %1045, %1272 ], [ %1430, %1455 ], [ %1045, %1043 ]
  %1173 = phi float [ %1046, %1191 ], [ %1046, %1272 ], [ %1429, %1455 ], [ %1046, %1043 ]
  %1174 = phi float [ %1047, %1191 ], [ %1047, %1272 ], [ %1427, %1455 ], [ %1047, %1043 ]
  %1175 = phi float [ %1048, %1191 ], [ %1048, %1272 ], [ %1399, %1455 ], [ %1048, %1043 ]
  %1176 = phi float [ %1049, %1191 ], [ %1049, %1272 ], [ %1397, %1455 ], [ %1049, %1043 ]
  %1177 = phi float [ %1050, %1191 ], [ %1050, %1272 ], [ %1465, %1455 ], [ %1050, %1043 ]
  %1178 = phi float [ %1051, %1191 ], [ %1051, %1272 ], [ %1466, %1455 ], [ %1051, %1043 ]
  %1179 = phi float [ %1052, %1191 ], [ %1052, %1272 ], [ %1467, %1455 ], [ %1052, %1043 ]
  %1180 = phi float [ %1053, %1191 ], [ %1053, %1272 ], [ %1378, %1455 ], [ %1053, %1043 ]
  %1181 = phi float [ %1054, %1191 ], [ %1054, %1272 ], [ %1379, %1455 ], [ %1054, %1043 ]
  %1182 = phi float [ %1055, %1191 ], [ %1055, %1272 ], [ %1380, %1455 ], [ %1055, %1043 ]
  %1183 = phi float [ %1056, %1191 ], [ %1056, %1272 ], [ %1407, %1455 ], [ %1056, %1043 ]
  %1184 = phi float [ %1057, %1191 ], [ %1057, %1272 ], [ %1404, %1455 ], [ %1057, %1043 ]
  %1185 = phi float [ %1058, %1191 ], [ %1058, %1272 ], [ %1401, %1455 ], [ %1058, %1043 ]
  %1186 = phi float [ %1059, %1191 ], [ %1059, %1272 ], [ %1395, %1455 ], [ %1059, %1043 ]
  %1187 = phi float [ %1060, %1191 ], [ %1060, %1272 ], [ %1390, %1455 ], [ %1060, %1043 ]
  %1188 = phi float [ %1061, %1191 ], [ %1061, %1272 ], [ %1391, %1455 ], [ %1061, %1043 ]
  %1189 = phi float [ %1062, %1191 ], [ %1062, %1272 ], [ %1392, %1455 ], [ %1062, %1043 ]
  %1190 = icmp eq i32 %1120, %1042
  br i1 %1190, label %1468, label %1043

; <label>:1191                                    ; preds = %1043
  %1192 = extractvalue %dx.types.ResRet.f32 %1090, 3
  %1193 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1194 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1197 = extractvalue %dx.types.ResRet.i32 %1076, 3
  %1198 = extractvalue %dx.types.ResRet.i32 %1076, 2
  %1199 = add i32 %1197, 0
  %1200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1199, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1200, %dx.types.Handle %1201, float %1129, float %1136, float undef, float undef, i32 0, i32 0, i32 undef, float %1157, float %1159, float undef, float %1158, float %1160, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = fmul fast float %1203, %1196
  %1205 = fadd fast float %1204, %1195
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = fmul fast float %1129, %1085
  %1208 = call float @dx.op.tertiary.f32(i32 46, float %1086, float %1136, float %1207)  ; FMad(a,b,c)
  %1209 = fadd fast float %1208, %1194
  %1210 = fmul fast float %1129, %1087
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %1088, float %1136, float %1210)  ; FMad(a,b,c)
  %1212 = fadd fast float %1211, %1193
  %1213 = fmul fast float %1157, %1085
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1086, float %1159, float %1213)  ; FMad(a,b,c)
  %1215 = fmul fast float %1157, %1087
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %1088, float %1159, float %1215)  ; FMad(a,b,c)
  %1217 = fmul fast float %1158, %1085
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %1086, float %1160, float %1217)  ; FMad(a,b,c)
  %1219 = fmul fast float %1158, %1087
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %1088, float %1160, float %1219)  ; FMad(a,b,c)
  %1221 = add i32 %1198, 0
  %1222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1221, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1223 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1222, %dx.types.Handle %1201, float %1209, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1214, float %1216, float undef, float %1218, float %1220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = and i32 %1121, 1024
  %1226 = icmp ne i32 %1225, 0
  %1227 = fcmp fast ogt float %1224, 0x3FE0101020000000
  %1228 = uitofp i1 %1227 to float
  %1229 = select i1 %1226, float %1228, float %1224
  %1230 = and i32 %1121, 8192
  %1231 = icmp ne i32 %1230, 0
  %1232 = select i1 %1231, float %1192, float 1.000000e+00
  %1233 = fmul fast float %1129, 2.000000e+00
  %1234 = fadd fast float %1233, -1.000000e+00
  %1235 = call float @dx.op.unary.f32(i32 6, float %1234)  ; FAbs(value)
  %1236 = fmul fast float %1235, %1118
  %1237 = fsub fast float %1236, %1118
  %1238 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1239 = fmul fast float %1136, 2.000000e+00
  %1240 = fadd fast float %1239, -1.000000e+00
  %1241 = call float @dx.op.unary.f32(i32 6, float %1240)  ; FAbs(value)
  %1242 = fmul fast float %1241, %1119
  %1243 = fsub fast float %1242, %1119
  %1244 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  %1245 = fmul fast float %1148, %1081
  %1246 = fsub fast float %1245, %1081
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fmul fast float %1206, %1232
  %1249 = fmul fast float %1248, %1203
  %1250 = fmul fast float %1249, %1238
  %1251 = fmul fast float %1250, %1229
  %1252 = fmul fast float %1251, %1244
  %1253 = fmul fast float %1252, %1247
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1257 = fsub fast float %1165, %1256
  %1258 = fmul fast float %1257, %1255
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = fmul fast float %1253, %1082
  %1261 = fadd fast float %1253, %1082
  %1262 = fmul fast float %1261, %1091
  %1263 = fsub fast float %1262, %1091
  %1264 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  %1265 = and i32 %1121, 128
  %1266 = icmp ne i32 %1265, 0
  %1267 = select i1 %1266, float %1264, float %1260
  %1268 = fmul fast float %1267, %1259
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  %1271 = fcmp fast ugt float %1268, %1270
  br i1 %1271, label %1272, label %1170

; <label>:1272                                    ; preds = %1191
  %1273 = select i1 %1231, float %1268, float 0.000000e+00
  %1274 = fadd fast float %1273, %1044
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  br i1 %1231, label %1170, label %1276

; <label>:1276                                    ; preds = %1272
  %1277 = and i32 %1121, 4
  %1278 = and i32 %1121, 8
  %1279 = add i32 %1077, 0
  %1280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1279, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1282 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1280, %dx.types.Handle %1281, float %1209, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1214, float %1216, float undef, float %1218, float %1220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = extractvalue %dx.types.ResRet.f32 %1282, 3
  %1287 = bitcast float %1103 to i32
  %1288 = and i32 %1287, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = lshr i32 %1287, 8
  %1291 = and i32 %1290, 255
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1286, %1289
  %1294 = fadd fast float %1293, %1292
  %1295 = fmul fast float %1294, 0x3F70101000000000
  %1296 = add i32 %1078, 0
  %1297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1298 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1297, %dx.types.Handle %1281, float %1209, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1214, float %1216, float undef, float %1218, float %1220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1298, 2
  %1302 = extractvalue %dx.types.ResRet.f32 %1298, 3
  %1303 = bitcast float %1097 to i32
  %1304 = and i32 %1303, 255
  %1305 = uitofp i32 %1304 to float
  %1306 = lshr i32 %1303, 8
  %1307 = and i32 %1306, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = lshr i32 %1303, 16
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul fast float %1311, 0x3F70101000000000
  %1313 = fmul fast float %1299, %1305
  %1314 = fadd fast float %1313, %1308
  %1315 = fmul fast float %1314, 0x3F70101000000000
  %1316 = fadd fast float %1300, -5.000000e-01
  %1317 = fadd fast float %1302, -5.000000e-01
  %1318 = fmul fast float %1316, %1312
  %1319 = fmul fast float %1317, %1312
  %1320 = fadd fast float %1318, 5.000000e-01
  %1321 = fadd fast float %1319, 5.000000e-01
  %1322 = fmul fast float %1283, %1106
  %1323 = fmul fast float %1284, %1107
  %1324 = fmul fast float %1285, %1108
  %1325 = fmul fast float %1320, 2.000000e+00
  %1326 = fadd fast float %1325, -1.000000e+00
  %1327 = fmul fast float %1321, 2.000000e+00
  %1328 = fadd fast float %1327, -1.000000e+00
  %1329 = fadd fast float %1326, %1328
  %1330 = fmul fast float %1329, 5.000000e-01
  %1331 = fsub fast float %1326, %1328
  %1332 = fmul fast float %1331, 5.000000e-01
  %1333 = call float @dx.op.unary.f32(i32 6, float %1330)  ; FAbs(value)
  %1334 = fsub fast float 1.000000e+00, %1333
  %1335 = call float @dx.op.unary.f32(i32 6, float %1332)  ; FAbs(value)
  %1336 = fsub fast float %1334, %1335
  %1337 = call float @dx.op.dot3.f32(i32 55, float %1330, float %1332, float %1336, float %1330, float %1332, float %1336)  ; Dot3(ax,ay,az,bx,by,bz)
  %1338 = call float @dx.op.unary.f32(i32 25, float %1337)  ; Rsqrt(value)
  %1339 = fmul fast float %1330, %1338
  %1340 = fmul fast float %1332, %1338
  %1341 = fmul fast float %1338, %1336
  %1342 = fmul fast float %1341, %1071
  %1343 = fmul fast float %1341, %1072
  %1344 = fmul fast float %1341, %1073
  %1345 = fmul fast float %1339, %1094
  %1346 = fmul fast float %1339, %1095
  %1347 = fmul fast float %1339, %1096
  %1348 = fadd fast float %1345, %1342
  %1349 = fadd fast float %1346, %1343
  %1350 = fadd fast float %1347, %1344
  %1351 = fmul fast float %1340, %1100
  %1352 = fmul fast float %1340, %1101
  %1353 = fmul fast float %1340, %1102
  %1354 = fadd fast float %1348, %1351
  %1355 = fadd fast float %1349, %1352
  %1356 = fadd fast float %1350, %1353
  %1357 = call float @dx.op.dot3.f32(i32 55, float %1354, float %1355, float %1356, float %1354, float %1355, float %1356)  ; Dot3(ax,ay,az,bx,by,bz)
  %1358 = call float @dx.op.unary.f32(i32 25, float %1357)  ; Rsqrt(value)
  %1359 = fmul fast float %1354, %1358
  %1360 = fmul fast float %1355, %1358
  %1361 = fmul fast float %1356, %1358
  %1362 = icmp ne i32 %1278, 0
  %1363 = select i1 %1362, float 1.000000e+00, float 0.000000e+00
  %1364 = fmul fast float %1268, %1363
  %1365 = and i32 %1121, 1
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1367, label %1371

; <label>:1367                                    ; preds = %1276
  %1368 = fsub fast float %1359, %1053
  %1369 = fsub fast float %1360, %1054
  %1370 = fsub fast float %1361, %1055
  br label %1371

; <label>:1371                                    ; preds = %1367, %1276
  %1372 = phi float [ %1368, %1367 ], [ %1359, %1276 ]
  %1373 = phi float [ %1369, %1367 ], [ %1360, %1276 ]
  %1374 = phi float [ %1370, %1367 ], [ %1361, %1276 ]
  %1375 = fmul float %1374, %1364
  %1376 = fmul float %1373, %1364
  %1377 = fmul float %1372, %1364
  %1378 = fadd fast float %1377, %1053
  %1379 = fadd fast float %1376, %1054
  %1380 = fadd fast float %1375, %1055
  %1381 = icmp ne i32 %1277, 0
  %1382 = select i1 %1381, float 1.000000e+00, float 0.000000e+00
  %1383 = fmul fast float %1268, %1382
  %1384 = fsub fast float %1322, %1060
  %1385 = fsub fast float %1323, %1061
  %1386 = fsub fast float %1324, %1062
  %1387 = fmul fast float %1384, %1383
  %1388 = fmul fast float %1385, %1383
  %1389 = fmul fast float %1386, %1383
  %1390 = fadd fast float %1387, %1060
  %1391 = fadd fast float %1388, %1061
  %1392 = fadd fast float %1389, %1062
  %1393 = fsub fast float %1295, %1059
  %1394 = fmul fast float %1393, %1383
  %1395 = fadd fast float %1394, %1059
  %1396 = fmul fast float %1383, %1049
  %1397 = fsub fast float %1049, %1396
  %1398 = fmul fast float %1383, %1048
  %1399 = fsub fast float %1048, %1398
  %1400 = fadd fast float %1268, %1058
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1402 = fsub fast float %1315, %1057
  %1403 = fmul fast float %1402, %1364
  %1404 = fadd fast float %1403, %1057
  %1405 = fsub fast float %1301, %1056
  %1406 = fmul fast float %1405, %1364
  %1407 = fadd fast float %1406, %1056
  %1408 = call float @dx.op.dot3.f32(i32 55, float %1322, float %1323, float %1324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.CBufRet.f32 %1409, 1
  %1412 = fmul fast float %1411, %1408
  %1413 = fadd fast float %1412, %1410
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1415 = bitcast float %1109 to i32
  %1416 = and i32 %1415, 65535
  %1417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1416)  ; LegacyF16ToF32(value)
  %1418 = lshr i32 %1415, 16
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = fcmp fast oge float %1417, 0.000000e+00
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = select i1 %1420, float %1417, float %1422
  %1424 = fadd fast float %1423, %1419
  %1425 = fsub fast float %1414, %1047
  %1426 = fmul fast float %1425, %1268
  %1427 = fadd fast float %1426, %1047
  %1428 = fmul fast float %1424, %1268
  %1429 = call float @dx.op.binary.f32(i32 35, float %1046, float %1428)  ; FMax(a,b)
  %1430 = call float @dx.op.binary.f32(i32 35, float %1045, float %1268)  ; FMax(a,b)
  %1431 = and i32 %1121, 16
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1455, label %1433

; <label>:1433                                    ; preds = %1371
  %1434 = bitcast float %1115 to i32
  %1435 = add i32 %1112, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1436, %dx.types.Handle %1281, float %1209, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1214, float %1216, float undef, float %1218, float %1220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = and i32 %1434, 65535
  %1442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1441)  ; LegacyF16ToF32(value)
  %1443 = fmul fast float %1438, %1106
  %1444 = fmul fast float %1439, %1107
  %1445 = fmul fast float %1440, %1108
  %1446 = and i32 %1121, 16384
  %1447 = icmp ne i32 %1446, 0
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 0
  %1450 = select i1 %1447, float %1449, float 1.000000e+00
  %1451 = fmul fast float %1450, %1442
  %1452 = fmul fast float %1443, %1451
  %1453 = fmul fast float %1444, %1451
  %1454 = fmul fast float %1445, %1451
  br label %1455

; <label>:1455                                    ; preds = %1433, %1371
  %1456 = phi float [ %1452, %1433 ], [ 0.000000e+00, %1371 ]
  %1457 = phi float [ %1453, %1433 ], [ 0.000000e+00, %1371 ]
  %1458 = phi float [ %1454, %1433 ], [ 0.000000e+00, %1371 ]
  %1459 = fsub fast float %1456, %1050
  %1460 = fsub fast float %1457, %1051
  %1461 = fsub fast float %1458, %1052
  %1462 = fmul fast float %1459, %1268
  %1463 = fmul fast float %1460, %1268
  %1464 = fmul fast float %1461, %1268
  %1465 = fadd fast float %1462, %1050
  %1466 = fadd fast float %1463, %1051
  %1467 = fadd fast float %1464, %1052
  br label %1170

; <label>:1468                                    ; preds = %1170
  br label %1469

; <label>:1469                                    ; preds = %1468, %946
  %1470 = phi float [ 0.000000e+00, %946 ], [ %1171, %1468 ]
  %1471 = phi float [ %956, %946 ], [ %1172, %1468 ]
  %1472 = phi float [ %961, %946 ], [ %1173, %1468 ]
  %1473 = phi float [ %959, %946 ], [ %1174, %1468 ]
  %1474 = phi float [ 0.000000e+00, %946 ], [ %1175, %1468 ]
  %1475 = phi float [ 0.000000e+00, %946 ], [ %1176, %1468 ]
  %1476 = phi float [ %952, %946 ], [ %1177, %1468 ]
  %1477 = phi float [ %953, %946 ], [ %1178, %1468 ]
  %1478 = phi float [ %954, %946 ], [ %1179, %1468 ]
  %1479 = phi float [ %987, %946 ], [ %1180, %1468 ]
  %1480 = phi float [ %988, %946 ], [ %1181, %1468 ]
  %1481 = phi float [ %989, %946 ], [ %1182, %1468 ]
  %1482 = phi float [ %958, %946 ], [ %1183, %1468 ]
  %1483 = phi float [ %957, %946 ], [ %1184, %1468 ]
  %1484 = phi float [ 0.000000e+00, %946 ], [ %1185, %1468 ]
  %1485 = phi float [ %955, %946 ], [ %1186, %1468 ]
  %1486 = phi float [ %949, %946 ], [ %1187, %1468 ]
  %1487 = phi float [ %950, %946 ], [ %1188, %1468 ]
  %1488 = phi float [ %951, %946 ], [ %1189, %1468 ]
  %1489 = call float @dx.op.dot3.f32(i32 55, float %1479, float %1480, float %1481, float %1479, float %1480, float %1481)  ; Dot3(ax,ay,az,bx,by,bz)
  %1490 = call float @dx.op.unary.f32(i32 25, float %1489)  ; Rsqrt(value)
  %1491 = fmul fast float %1490, %1479
  %1492 = fmul fast float %1490, %1480
  %1493 = fmul fast float %1490, %1481
  %1494 = fadd fast float %1484, %956
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = call float @dx.op.dot3.f32(i32 55, float %1491, float %1492, float %1493, float %1491, float %1492, float %1493)  ; Dot3(ax,ay,az,bx,by,bz)
  %1497 = call float @dx.op.unary.f32(i32 25, float %1496)  ; Rsqrt(value)
  %1498 = fmul fast float %1497, %1491
  %1499 = fmul fast float %1497, %1492
  %1500 = fmul fast float %1497, %1493
  %1501 = fadd fast float %1485, 0xBFB99999A0000000
  %1502 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1503 = fmul fast float %1502, 0x3FF1C71C80000000
  %1504 = call float @dx.op.binary.f32(i32 36, float %1485, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1505 = fsub fast float 1.000000e+00, %1503
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = fmul fast float %1506, %1486
  %1508 = fmul fast float %1506, %1487
  %1509 = fmul fast float %1506, %1488
  %1510 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1511 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1512 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  %1513 = fmul fast float %1503, %1486
  %1514 = fmul fast float %1503, %1487
  %1515 = fmul fast float %1503, %1488
  %1516 = fadd fast float %1513, %1504
  %1517 = fadd fast float %1514, %1504
  %1518 = fadd fast float %1515, %1504
  %1519 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1520 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1522 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.i32 %1523, 3
  %1525 = and i32 %1524, 8
  %1526 = icmp ne i32 %1525, 0
  %1527 = call float @dx.op.binary.f32(i32 35, float %1510, float %1486)  ; FMax(a,b)
  %1528 = call float @dx.op.binary.f32(i32 35, float %1511, float %1486)  ; FMax(a,b)
  %1529 = call float @dx.op.binary.f32(i32 35, float %1512, float %1486)  ; FMax(a,b)
  %1530 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1511, float %1512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1531 = select i1 %228, float %1486, float %1510
  %1532 = select i1 %228, float %1530, float %1511
  %1533 = select i1 %228, float 1.000000e+00, float %1512
  %1534 = select i1 %1526, float %1527, float %1531
  %1535 = select i1 %1526, float %1528, float %1532
  %1536 = select i1 %1526, float %1529, float %1533
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.CBufRet.f32 %1537, 2
  %1541 = fadd fast float %1538, %137
  %1542 = fadd fast float %1539, %138
  %1543 = fadd fast float %1540, %139
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 0
  %1546 = extractvalue %dx.types.CBufRet.f32 %1544, 1
  %1547 = fsub fast float %1541, %1545
  %1548 = fsub fast float %1542, %1546
  %1549 = fmul fast float %1547, %1547
  %1550 = fmul fast float %1548, %1548
  %1551 = fadd fast float %1549, %1550
  %1552 = call float @dx.op.unary.f32(i32 24, float %1551)  ; Sqrt(value)
  %1553 = extractvalue %dx.types.CBufRet.f32 %1544, 2
  %1554 = fcmp fast olt float %1552, %1553
  br i1 %1554, label %1555, label %1622

; <label>:1555                                    ; preds = %1469
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 0
  %1560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1561 = extractvalue %dx.types.CBufRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1563 = extractvalue %dx.types.CBufRet.f32 %1558, 1
  %1564 = extractvalue %dx.types.CBufRet.f32 %1560, 1
  %1565 = extractvalue %dx.types.CBufRet.f32 %1556, 3
  %1566 = extractvalue %dx.types.CBufRet.f32 %1558, 3
  %1567 = extractvalue %dx.types.CBufRet.f32 %1560, 3
  %1568 = fadd fast float %1565, %1541
  %1569 = fadd fast float %1566, %1542
  %1570 = fadd fast float %1567, %1543
  %1571 = fmul fast float %1568, %1557
  %1572 = call float @dx.op.tertiary.f32(i32 46, float %1569, float %1559, float %1571)  ; FMad(a,b,c)
  %1573 = call float @dx.op.tertiary.f32(i32 46, float %1570, float %1561, float %1572)  ; FMad(a,b,c)
  %1574 = fmul fast float %1568, %1562
  %1575 = call float @dx.op.tertiary.f32(i32 46, float %1569, float %1563, float %1574)  ; FMad(a,b,c)
  %1576 = call float @dx.op.tertiary.f32(i32 46, float %1570, float %1564, float %1575)  ; FMad(a,b,c)
  %1577 = fsub fast float %1573, %1565
  %1578 = fsub fast float %1576, %1566
  %1579 = fsub fast float %1577, %1545
  %1580 = fadd fast float %1579, %1553
  %1581 = fsub fast float %1578, %1546
  %1582 = fadd fast float %1581, %1553
  %1583 = extractvalue %dx.types.CBufRet.f32 %1544, 3
  %1584 = fmul fast float %1580, %1583
  %1585 = fmul fast float %1582, %1583
  %1586 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1587 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1588 = fsub fast float 1.000000e+00, %1586
  %1589 = fsub fast float 1.000000e+00, %1587
  %1590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1588, float %1589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = fcmp fast ugt float %1591, 0.000000e+00
  br i1 %1592, label %1593, label %1896

; <label>:1593                                    ; preds = %1555
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 2
  %1596 = fmul fast float %1595, %1591
  %1597 = extractvalue %dx.types.CBufRet.f32 %1594, 3
  %1598 = fadd fast float %1597, %1596
  %1599 = extractvalue %dx.types.CBufRet.f32 %1560, 2
  %1600 = fadd fast float %1598, %1567
  %1601 = fmul fast float %1573, %1561
  %1602 = call float @dx.op.tertiary.f32(i32 46, float %1576, float %1564, float %1601)  ; FMad(a,b,c)
  %1603 = call float @dx.op.tertiary.f32(i32 46, float %1600, float %1599, float %1602)  ; FMad(a,b,c)
  %1604 = fsub fast float %1603, %1567
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 2
  %1607 = fsub fast float %1604, %1606
  %1608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1588, float %1589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1609 = extractvalue %dx.types.ResRet.f32 %1608, 0
  %1610 = extractvalue %dx.types.ResRet.f32 %1608, 1
  %1611 = extractvalue %dx.types.ResRet.f32 %1608, 2
  %1612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1588, float %1589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1613 = extractvalue %dx.types.ResRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.ResRet.f32 %1612, 1
  %1615 = extractvalue %dx.types.ResRet.f32 %1612, 2
  %1616 = fadd fast float %1613, %1609
  %1617 = fmul fast float %1616, 0x3F847AE140000000
  %1618 = fadd fast float %1614, %1610
  %1619 = fmul fast float %1618, 0x3F847AE140000000
  %1620 = fadd fast float %1615, %1611
  %1621 = fmul fast float %1620, 0x3F847AE140000000
  br label %1896

; <label>:1622                                    ; preds = %1469
  %1623 = and i32 %204, 1
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1896, label %1625

; <label>:1625                                    ; preds = %1622
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1628, 0
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 0
  %1632 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1633 = extractvalue %dx.types.CBufRet.f32 %1628, 1
  %1634 = extractvalue %dx.types.CBufRet.f32 %1630, 1
  %1635 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1636 = extractvalue %dx.types.CBufRet.f32 %1628, 3
  %1637 = extractvalue %dx.types.CBufRet.f32 %1630, 3
  %1638 = fadd fast float %1635, %1541
  %1639 = fadd fast float %1636, %1542
  %1640 = fadd fast float %1637, %1543
  %1641 = fmul fast float %1638, %1627
  %1642 = call float @dx.op.tertiary.f32(i32 46, float %1639, float %1629, float %1641)  ; FMad(a,b,c)
  %1643 = call float @dx.op.tertiary.f32(i32 46, float %1640, float %1631, float %1642)  ; FMad(a,b,c)
  %1644 = fmul fast float %1638, %1632
  %1645 = call float @dx.op.tertiary.f32(i32 46, float %1639, float %1633, float %1644)  ; FMad(a,b,c)
  %1646 = call float @dx.op.tertiary.f32(i32 46, float %1640, float %1634, float %1645)  ; FMad(a,b,c)
  %1647 = fsub fast float %1643, %1635
  %1648 = fsub fast float %1646, %1636
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 0
  %1651 = extractvalue %dx.types.CBufRet.f32 %1649, 1
  %1652 = extractvalue %dx.types.CBufRet.f32 %1649, 2
  %1653 = extractvalue %dx.types.CBufRet.f32 %1649, 3
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 3
  %1656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.i32 %1656, 0
  %1658 = extractvalue %dx.types.CBufRet.i32 %1656, 1
  %1659 = udiv i32 %1658, %1657
  %1660 = fsub fast float %1647, %1650
  %1661 = fsub fast float %1648, %1651
  %1662 = call float @dx.op.binary.f32(i32 35, float %1660, float 0.000000e+00)  ; FMax(a,b)
  %1663 = call float @dx.op.binary.f32(i32 35, float %1661, float 0.000000e+00)  ; FMax(a,b)
  %1664 = call float @dx.op.binary.f32(i32 36, float %1662, float %1652)  ; FMin(a,b)
  %1665 = call float @dx.op.binary.f32(i32 36, float %1663, float %1653)  ; FMin(a,b)
  %1666 = add i32 %1657, -1
  %1667 = add i32 %1659, -1
  %1668 = fmul fast float %1664, %1655
  %1669 = fmul fast float %1665, %1655
  %1670 = fptoui float %1668 to i32
  %1671 = fptoui float %1669 to i32
  %1672 = call i32 @dx.op.binary.i32(i32 40, i32 %1670, i32 %1666)  ; UMin(a,b)
  %1673 = call i32 @dx.op.binary.i32(i32 40, i32 %1671, i32 %1667)  ; UMin(a,b)
  %1674 = mul i32 %1673, %1657
  %1675 = add i32 %1674, %1672
  %1676 = shl i32 %1675, 2
  %1677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1676, i32 undef)  ; BufferLoad(srv,index,wot)
  %1678 = extractvalue %dx.types.ResRet.i32 %1677, 0
  %1679 = icmp eq i32 %1678, -1
  br i1 %1679, label %1896, label %1680

; <label>:1680                                    ; preds = %1625
  %1681 = mul i32 %1678, 148
  %1682 = add i32 %1681, 4
  %1683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.f32 %1683, 0
  %1685 = add i32 %1681, 8
  %1686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.f32 %1686, 0
  %1688 = add i32 %1681, 36
  %1689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.f32 %1689, 0
  %1691 = add i32 %1681, 60
  %1692 = add i32 %1681, 92
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = add i32 %1681, 116
  %1696 = fsub fast float %1647, %1684
  %1697 = fsub fast float %1648, %1687
  %1698 = fmul fast float %1655, %1696
  %1699 = fmul fast float %1655, %1697
  %1700 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1701 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1702 = fsub fast float 1.000000e+00, %1701
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 2
  %1705 = call float @dx.op.unary.f32(i32 83, float %1700)  ; DerivCoarseX(value)
  %1706 = call float @dx.op.unary.f32(i32 83, float %1702)  ; DerivCoarseX(value)
  %1707 = call float @dx.op.unary.f32(i32 84, float %1700)  ; DerivCoarseY(value)
  %1708 = call float @dx.op.unary.f32(i32 84, float %1702)  ; DerivCoarseY(value)
  %1709 = fmul fast float %1705, %1704
  %1710 = fmul fast float %1706, %1704
  %1711 = fmul fast float %1707, %1704
  %1712 = fmul fast float %1708, %1704
  %1713 = call float @dx.op.dot2.f32(i32 54, float %1711, float %1712, float %1711, float %1712)  ; Dot2(ax,ay,bx,by)
  %1714 = call float @dx.op.dot2.f32(i32 54, float %1709, float %1710, float %1709, float %1710)  ; Dot2(ax,ay,bx,by)
  %1715 = call float @dx.op.binary.f32(i32 35, float %1714, float %1713)  ; FMax(a,b)
  %1716 = call float @dx.op.unary.f32(i32 23, float %1715)  ; Log(value)
  %1717 = fmul fast float %1716, 5.000000e-01
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %1720 = fadd fast float %1719, %1717
  %1721 = call float @dx.op.binary.f32(i32 35, float %1720, float 0.000000e+00)  ; FMax(a,b)
  %1722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.f32 %1722, 3
  %1724 = fadd fast float %1723, %1721
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 3
  %1727 = fadd fast float %1724, %1726
  %1728 = add i32 %1694, 0
  %1729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1728, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1730 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1729, i32 0)  ; GetDimensions(handle,mipLevel)
  %1731 = extractvalue %dx.types.Dimensions %1730, 0
  %1732 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1731)  ; FirstbitLo(value)
  %1733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1734 = extractvalue %dx.types.CBufRet.i32 %1733, 1
  %1735 = sub nsw i32 %1734, %1732
  %1736 = sitofp i32 %1735 to float
  %1737 = fsub fast float %1727, %1736
  %1738 = call float @dx.op.binary.f32(i32 35, float %1737, float 0.000000e+00)  ; FMax(a,b)
  %1739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1729, %dx.types.Handle %56, float %1700, float %1702, float %1690, float undef, i32 0, i32 0, i32 undef, float %1738)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = fcmp ule float %1740, 0x3FE0101020000000
  %1742 = extractvalue %dx.types.CBufRet.i32 %1733, 0
  %1743 = and i32 %1742, 128
  %1744 = icmp ne i32 %1743, 0
  %1745 = and i1 %1741, %1744
  br i1 %1745, label %1896, label %1746

; <label>:1746                                    ; preds = %1680
  %1747 = add i32 %1681, 20
  %1748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = add i32 %1681, 24
  %1751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = add i32 %1681, 40
  %1754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.f32 %1754, 0
  %1756 = add i32 %1681, 96
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 2
  %1761 = fmul fast float %1760, %1700
  %1762 = fmul fast float %1760, %1702
  %1763 = extractvalue %dx.types.CBufRet.f32 %1759, 3
  %1764 = fadd fast float %1761, %1763
  %1765 = fadd fast float %1762, %1763
  %1766 = add i32 %1758, 0
  %1767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1766, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1768 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1767, i32 0)  ; GetDimensions(handle,mipLevel)
  %1769 = extractvalue %dx.types.Dimensions %1768, 0
  %1770 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1769)  ; FirstbitLo(value)
  %1771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.i32 %1771, 1
  %1773 = sub nsw i32 %1772, %1770
  %1774 = sitofp i32 %1773 to float
  %1775 = fsub fast float %1724, %1774
  %1776 = call float @dx.op.binary.f32(i32 35, float %1775, float 0.000000e+00)  ; FMax(a,b)
  %1777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1767, %dx.types.Handle %56, float %1764, float %1765, float %1755, float undef, i32 0, i32 0, i32 undef, float %1776)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = fmul fast float %1778, %1749
  %1780 = fadd fast float %1779, %1752
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 3
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1789 = extractvalue %dx.types.CBufRet.f32 %1781, 3
  %1790 = fadd fast float %1786, %1647
  %1791 = fadd fast float %1788, %1648
  %1792 = fadd fast float %1780, %1789
  %1793 = fmul fast float %1790, %1782
  %1794 = call float @dx.op.tertiary.f32(i32 46, float %1791, float %1783, float %1793)  ; FMad(a,b,c)
  %1795 = call float @dx.op.tertiary.f32(i32 46, float %1792, float %1784, float %1794)  ; FMad(a,b,c)
  %1796 = fsub fast float %1795, %1789
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 2
  %1799 = fsub fast float %1796, %1798
  %1800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.i32 %1800, 0
  %1802 = call i32 @dx.op.binary.i32(i32 40, i32 %1678, i32 %1801)  ; UMin(a,b)
  %1803 = mul i32 %1802, 36
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = add i32 %1803, 4
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 0
  %1809 = fmul fast float %1808, %1700
  %1810 = fmul fast float %1808, %1702
  %1811 = extractvalue %dx.types.CBufRet.f32 %1807, 1
  %1812 = fadd fast float %1809, %1811
  %1813 = fadd fast float %1810, %1811
  %1814 = icmp eq i32 %1805, 0
  br i1 %1814, label %1883, label %1815

; <label>:1815                                    ; preds = %1746
  br label %1816

; <label>:1816                                    ; preds = %1873, %1815
  %1817 = phi float [ %1874, %1873 ], [ 0.000000e+00, %1815 ]
  %1818 = phi float [ %1875, %1873 ], [ 0.000000e+00, %1815 ]
  %1819 = phi float [ %1876, %1873 ], [ 0.000000e+00, %1815 ]
  %1820 = phi float [ %1877, %1873 ], [ 0.000000e+00, %1815 ]
  %1821 = phi float [ %1878, %1873 ], [ 0.000000e+00, %1815 ]
  %1822 = phi float [ %1879, %1873 ], [ 0.000000e+00, %1815 ]
  %1823 = phi i32 [ %1880, %1873 ], [ 0, %1815 ]
  %1824 = shl i32 %1823, 2
  %1825 = add i32 %1691, %1824
  %1826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = add i32 %1695, %1824
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = add i32 %1830, 0
  %1832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1831, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1833 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1832, i32 0)  ; GetDimensions(handle,mipLevel)
  %1834 = extractvalue %dx.types.Dimensions %1833, 0
  %1835 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1834)  ; FirstbitLo(value)
  %1836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.i32 %1836, 1
  %1838 = sub nsw i32 %1837, %1835
  %1839 = sitofp i32 %1838 to float
  %1840 = fsub fast float %1724, %1839
  %1841 = call float @dx.op.binary.f32(i32 35, float %1840, float 0.000000e+00)  ; FMax(a,b)
  %1842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1832, %dx.types.Handle %56, float %1812, float %1813, float %1827, float undef, i32 0, i32 0, i32 undef, float %1841)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1843 = extractvalue %dx.types.ResRet.f32 %1842, 0
  %1844 = fcmp fast ogt float %1843, 0.000000e+00
  br i1 %1844, label %1845, label %1873

; <label>:1845                                    ; preds = %1816
  %1846 = add i32 %1806, %1824
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = and i32 %1848, 32767
  %1850 = mul nuw nsw i32 %1849, 928
  %1851 = add nuw nsw i32 %1850, 48
  %1852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.f32 %1852, 0
  %1854 = extractvalue %dx.types.ResRet.f32 %1852, 1
  %1855 = extractvalue %dx.types.ResRet.f32 %1852, 2
  %1856 = add nuw nsw i32 %1850, 60
  %1857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.f32 %1857, 0
  %1859 = extractvalue %dx.types.ResRet.f32 %1857, 1
  %1860 = extractvalue %dx.types.ResRet.f32 %1857, 2
  %1861 = fmul fast float %1853, %1843
  %1862 = fmul fast float %1854, %1843
  %1863 = fmul fast float %1855, %1843
  %1864 = fadd fast float %1861, %1817
  %1865 = fadd fast float %1862, %1818
  %1866 = fadd fast float %1863, %1819
  %1867 = fmul fast float %1858, %1843
  %1868 = fmul fast float %1859, %1843
  %1869 = fmul fast float %1860, %1843
  %1870 = fadd fast float %1867, %1820
  %1871 = fadd fast float %1868, %1821
  %1872 = fadd fast float %1869, %1822
  br label %1873

; <label>:1873                                    ; preds = %1845, %1816
  %1874 = phi float [ %1864, %1845 ], [ %1817, %1816 ]
  %1875 = phi float [ %1865, %1845 ], [ %1818, %1816 ]
  %1876 = phi float [ %1866, %1845 ], [ %1819, %1816 ]
  %1877 = phi float [ %1870, %1845 ], [ %1820, %1816 ]
  %1878 = phi float [ %1871, %1845 ], [ %1821, %1816 ]
  %1879 = phi float [ %1872, %1845 ], [ %1822, %1816 ]
  %1880 = add nuw i32 %1823, 1
  %1881 = icmp eq i32 %1880, %1805
  br i1 %1881, label %1882, label %1816

; <label>:1882                                    ; preds = %1873
  br label %1883

; <label>:1883                                    ; preds = %1882, %1746
  %1884 = phi float [ 0.000000e+00, %1746 ], [ %1874, %1882 ]
  %1885 = phi float [ 0.000000e+00, %1746 ], [ %1875, %1882 ]
  %1886 = phi float [ 0.000000e+00, %1746 ], [ %1876, %1882 ]
  %1887 = phi float [ 0.000000e+00, %1746 ], [ %1877, %1882 ]
  %1888 = phi float [ 0.000000e+00, %1746 ], [ %1878, %1882 ]
  %1889 = phi float [ 0.000000e+00, %1746 ], [ %1879, %1882 ]
  %1890 = fadd fast float %1887, %1884
  %1891 = fmul fast float %1890, 0x3F847AE140000000
  %1892 = fadd fast float %1888, %1885
  %1893 = fmul fast float %1892, 0x3F847AE140000000
  %1894 = fadd fast float %1889, %1886
  %1895 = fmul fast float %1894, 0x3F847AE140000000
  br label %1896

; <label>:1896                                    ; preds = %1883, %1680, %1625, %1622, %1593, %1555
  %1897 = phi float [ %1607, %1593 ], [ -1.310720e+05, %1555 ], [ %1799, %1883 ], [ -1.310720e+05, %1625 ], [ -1.310720e+05, %1680 ], [ -1.310720e+05, %1622 ]
  %1898 = phi float [ %1617, %1593 ], [ 0.000000e+00, %1555 ], [ %1891, %1883 ], [ 0.000000e+00, %1625 ], [ 0.000000e+00, %1680 ], [ 0.000000e+00, %1622 ]
  %1899 = phi float [ %1619, %1593 ], [ 0.000000e+00, %1555 ], [ %1893, %1883 ], [ 0.000000e+00, %1625 ], [ 0.000000e+00, %1680 ], [ 0.000000e+00, %1622 ]
  %1900 = phi float [ %1621, %1593 ], [ 0.000000e+00, %1555 ], [ %1895, %1883 ], [ 0.000000e+00, %1625 ], [ 0.000000e+00, %1680 ], [ 0.000000e+00, %1622 ]
  %1901 = phi i1 [ true, %1593 ], [ false, %1555 ], [ true, %1883 ], [ false, %1625 ], [ false, %1680 ], [ false, %1622 ]
  %1902 = and i32 %204, 3
  %1903 = icmp eq i32 %1902, 1
  %1904 = select i1 %1903, float 1.000000e+00, float 0.000000e+00
  %1905 = fsub fast float %1897, %139
  %1906 = call float @dx.op.unary.f32(i32 7, float %1905)  ; Saturate(value)
  %1907 = select i1 %1901, float %1906, float 1.000000e+00
  %1908 = fmul fast float %1907, %1904
  %1909 = icmp eq i32 %1902, 3
  %1910 = select i1 %1909, float 1.000000e+00, float %1908
  %1911 = call float @dx.op.binary.f32(i32 35, float %1470, float %1910)  ; FMax(a,b)
  %1912 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  %1913 = fcmp fast une float %1912, 0.000000e+00
  %1914 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %1915 = call float @dx.op.unary.f32(i32 25, float %1914)  ; Rsqrt(value)
  br i1 %1913, label %1923, label %1916

; <label>:1916                                    ; preds = %1896
  %1917 = fmul fast float %1915, %137
  %1918 = fmul fast float %1915, %138
  %1919 = fmul fast float %1915, %139
  %1920 = fsub fast float -0.000000e+00, %1917
  %1921 = fsub fast float -0.000000e+00, %1918
  %1922 = fsub fast float -0.000000e+00, %1919
  br label %2091

; <label>:1923                                    ; preds = %1896
  %1924 = fmul fast float %137, %1915
  %1925 = fsub fast float -0.000000e+00, %1924
  %1926 = fmul fast float %138, %1915
  %1927 = fsub fast float -0.000000e+00, %1926
  %1928 = fmul fast float %139, %1915
  %1929 = fsub fast float -0.000000e+00, %1928
  %1930 = call float @dx.op.dot3.f32(i32 55, float %1925, float %1927, float %1929, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1931 = fmul fast float %1912, 2.500000e+00
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = fmul fast float %1912, 0x4013FFFFE0000000
  %1934 = fadd fast float %1933, 0xBFFFFFFFE0000000
  %1935 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1936 = fmul fast float %1912, 0x4004000020000000
  %1937 = fadd fast float %1936, 0xBFF8000040000000
  %1938 = call float @dx.op.unary.f32(i32 7, float %1937)  ; Saturate(value)
  %1939 = call float @dx.op.unary.f32(i32 7, float %1932)  ; Saturate(value)
  %1940 = fmul fast float %1501, 1.000000e+01
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  %1942 = fmul fast float %1941, 2.000000e+00
  %1943 = fsub fast float 3.000000e+00, %1942
  %1944 = fmul fast float %1941, %1941
  %1945 = fmul fast float %1944, %1943
  %1946 = fsub fast float 1.000000e+00, %1945
  %1947 = fsub fast float 0x3FE3333340000000, %1522
  %1948 = fmul fast float %1947, 0x400AAAAAA0000000
  %1949 = call float @dx.op.unary.f32(i32 7, float %1948)  ; Saturate(value)
  %1950 = fmul fast float %1946, %1949
  %1951 = fmul fast float %1534, 0x3FEA2B8620000000
  %1952 = fmul fast float %1535, 0x3FEA2B8620000000
  %1953 = fmul fast float %1536, 0x3FEA2B8620000000
  %1954 = fadd fast float %1951, 0x3FC81DFBA0000000
  %1955 = fmul fast float %1954, %1534
  %1956 = fadd fast float %1955, 0x3F910E6020000000
  %1957 = fadd fast float %1952, 0x3FC81DFBA0000000
  %1958 = fmul fast float %1957, %1535
  %1959 = fadd fast float %1958, 0x3F910E6020000000
  %1960 = fadd fast float %1953, 0x3FC81DFBA0000000
  %1961 = fmul fast float %1960, %1536
  %1962 = fadd fast float %1961, 0x3F910E6020000000
  %1963 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1964 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1965 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  %1966 = fsub fast float %1963, %1534
  %1967 = fsub fast float %1964, %1535
  %1968 = fsub fast float %1965, %1536
  %1969 = fmul fast float %1966, %1939
  %1970 = fmul fast float %1969, %1950
  %1971 = fmul fast float %1967, %1939
  %1972 = fmul fast float %1971, %1950
  %1973 = fmul fast float %1968, %1939
  %1974 = fmul fast float %1973, %1950
  %1975 = fadd fast float %1970, %1534
  %1976 = fadd fast float %1972, %1535
  %1977 = fadd fast float %1974, %1536
  %1978 = fmul fast float %1482, %1482
  %1979 = fmul fast float %1978, %1978
  %1980 = fadd fast float %1935, 1.000000e+00
  %1981 = fsub fast float %1980, %1950
  %1982 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1983 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1985 = fsub fast float 1.000000e+00, %1979
  %1986 = call float @dx.op.binary.f32(i32 36, float %1982, float %1985)  ; FMin(a,b)
  %1987 = call float @dx.op.unary.f32(i32 7, float %1938)  ; Saturate(value)
  %1988 = call float @dx.op.binary.f32(i32 35, float %1986, float %1987)  ; FMax(a,b)
  %1989 = fadd fast float %1984, 0xBFE4CCCCC0000000
  %1990 = fmul fast float %1989, 0x4006DB6DA0000000
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fmul fast float %1991, 2.000000e+00
  %1993 = fsub fast float 3.000000e+00, %1992
  %1994 = bitcast float %1519 to i32
  %1995 = ashr i32 %1994, 1
  %1996 = add nsw i32 %1995, 532487669
  %1997 = bitcast i32 %1996 to float
  %1998 = fsub fast float 1.000000e+00, %1997
  %1999 = bitcast float %1998 to i32
  %2000 = sub nsw i32 2129859010, %1999
  %2001 = bitcast i32 %2000 to float
  %2002 = fmul fast float %2001, 2.000000e+00
  %2003 = bitcast float %1520 to i32
  %2004 = ashr i32 %2003, 1
  %2005 = add nsw i32 %2004, 532487669
  %2006 = bitcast i32 %2005 to float
  %2007 = fsub fast float 1.000000e+00, %2006
  %2008 = bitcast float %2007 to i32
  %2009 = sub nsw i32 2129859010, %2008
  %2010 = bitcast i32 %2009 to float
  %2011 = fmul fast float %2010, 2.000000e+00
  %2012 = bitcast float %1521 to i32
  %2013 = ashr i32 %2012, 1
  %2014 = add nsw i32 %2013, 532487669
  %2015 = bitcast i32 %2014 to float
  %2016 = fsub fast float 1.000000e+00, %2015
  %2017 = bitcast float %2016 to i32
  %2018 = sub nsw i32 2129859010, %2017
  %2019 = bitcast i32 %2018 to float
  %2020 = fmul fast float %2019, 2.000000e+00
  %2021 = fsub fast float 0x4002A9FBE0000000, %2002
  %2022 = fadd fast float %2002, 0x3FD54FDF00000000
  %2023 = bitcast float %2022 to i32
  %2024 = sub nsw i32 2129859010, %2023
  %2025 = bitcast i32 %2024 to float
  %2026 = fmul fast float %2025, %2021
  %2027 = fmul fast float %2026, %2026
  %2028 = fsub fast float 0x4002A9FBE0000000, %2011
  %2029 = fadd fast float %2011, 0x3FD54FDF00000000
  %2030 = bitcast float %2029 to i32
  %2031 = sub nsw i32 2129859010, %2030
  %2032 = bitcast i32 %2031 to float
  %2033 = fmul fast float %2032, %2028
  %2034 = fmul fast float %2033, %2033
  %2035 = fsub fast float 0x4002A9FBE0000000, %2020
  %2036 = fadd fast float %2020, 0x3FD54FDF00000000
  %2037 = bitcast float %2036 to i32
  %2038 = sub nsw i32 2129859010, %2037
  %2039 = bitcast i32 %2038 to float
  %2040 = fmul fast float %2039, %2035
  %2041 = fmul fast float %2040, %2040
  %2042 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2027)  ; FMax(a,b)
  %2043 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2034)  ; FMax(a,b)
  %2044 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2041)  ; FMax(a,b)
  %2045 = fsub fast float 1.000000e+00, %1930
  %2046 = fadd fast float %2045, %1946
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = fsub fast float 1.000000e+00, %1910
  %2049 = fmul fast float %1988, %2048
  %2050 = fmul fast float %1991, %1991
  %2051 = fmul fast float %2050, %2049
  %2052 = fmul fast float %2051, %1993
  %2053 = fmul fast float %2048, 0xBFE99999A0000000
  %2054 = fmul fast float %2053, %1939
  %2055 = fmul fast float %2054, %1950
  %2056 = fadd fast float %2055, 1.000000e+00
  %2057 = fadd fast float %1522, -1.000000e+00
  %2058 = fmul fast float %2056, %2057
  %2059 = fadd fast float %2058, 1.000000e+00
  %2060 = fsub fast float %2042, %1519
  %2061 = fsub fast float %2043, %1520
  %2062 = fsub fast float %2044, %1521
  %2063 = fmul fast float %2052, %2060
  %2064 = fmul fast float %2052, %2061
  %2065 = fmul fast float %2052, %2062
  %2066 = fadd fast float %2063, %1519
  %2067 = fadd fast float %2064, %1520
  %2068 = fadd fast float %2065, %1521
  %2069 = fsub fast float %70, %1498
  %2070 = fsub fast float %71, %1499
  %2071 = fsub fast float %72, %1500
  %2072 = fmul fast float %2052, %2069
  %2073 = fmul fast float %2052, %2070
  %2074 = fmul fast float %2052, %2071
  %2075 = fadd fast float %2072, %1498
  %2076 = fadd fast float %2073, %1499
  %2077 = fadd fast float %2074, %1500
  %2078 = fmul fast float %2052, %2047
  %2079 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2080 = fsub fast float 1.000000e+00, %2079
  %2081 = fmul fast float %2078, %2080
  %2082 = fadd fast float %2081, %2079
  %2083 = fsub fast float 1.000000e+00, %1482
  %2084 = fmul fast float %2052, %2083
  %2085 = fadd fast float %2084, %1482
  %2086 = call float @dx.op.dot3.f32(i32 55, float %2075, float %2076, float %2077, float %2075, float %2076, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2087 = call float @dx.op.unary.f32(i32 25, float %2086)  ; Rsqrt(value)
  %2088 = fmul fast float %2075, %2087
  %2089 = fmul fast float %2076, %2087
  %2090 = fmul fast float %2077, %2087
  br label %2091

; <label>:2091                                    ; preds = %1923, %1916
  %2092 = phi float [ %1922, %1916 ], [ %1929, %1923 ]
  %2093 = phi float [ %1921, %1916 ], [ %1927, %1923 ]
  %2094 = phi float [ %1920, %1916 ], [ %1925, %1923 ]
  %2095 = phi float [ %1919, %1916 ], [ %1928, %1923 ]
  %2096 = phi float [ %1918, %1916 ], [ %1926, %1923 ]
  %2097 = phi float [ %1917, %1916 ], [ %1924, %1923 ]
  %2098 = phi float [ %1519, %1916 ], [ %2066, %1923 ]
  %2099 = phi float [ %1520, %1916 ], [ %2067, %1923 ]
  %2100 = phi float [ %1521, %1916 ], [ %2068, %1923 ]
  %2101 = phi float [ %1534, %1916 ], [ %1975, %1923 ]
  %2102 = phi float [ %1535, %1916 ], [ %1976, %1923 ]
  %2103 = phi float [ %1536, %1916 ], [ %1977, %1923 ]
  %2104 = phi float [ %1498, %1916 ], [ %2088, %1923 ]
  %2105 = phi float [ %1499, %1916 ], [ %2089, %1923 ]
  %2106 = phi float [ %1500, %1916 ], [ %2090, %1923 ]
  %2107 = phi float [ %1522, %1916 ], [ %2082, %1923 ]
  %2108 = phi float [ %1482, %1916 ], [ %2085, %1923 ]
  %2109 = fsub fast float -0.000000e+00, %139
  %2110 = select i1 %228, float 0.000000e+00, float %2100
  %2111 = call float @dx.op.dot3.f32(i32 55, float %2104, float %2105, float %2106, float %2094, float %2093, float %2092)  ; Dot3(ax,ay,az,bx,by,bz)
  %2112 = call float @dx.op.unary.f32(i32 7, float %2111)  ; Saturate(value)
  %2113 = call float @dx.op.dot3.f32(i32 55, float %2097, float %2096, float %2095, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %2114 = fmul fast float %2113, 2.000000e+00
  %2115 = fmul fast float %2114, %2104
  %2116 = fmul fast float %2114, %2105
  %2117 = fmul fast float %2114, %2106
  %2118 = fsub fast float %2097, %2115
  %2119 = fsub fast float %2096, %2116
  %2120 = fsub fast float %2095, %2117
  %2121 = call float @dx.op.binary.f32(i32 36, float %2108, float 1.000000e+00)  ; FMin(a,b)
  %2122 = fsub fast float 1.000000e+00, %2108
  %2123 = bitcast float %2122 to i32
  %2124 = sub nsw i32 2129859010, %2123
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 0
  %2127 = extractvalue %dx.types.CBufRet.f32 %2125, 1
  %2128 = fadd fast float %2126, %137
  %2129 = fadd fast float %2127, %138
  %2130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.i32 %2130, 0
  %2132 = icmp eq i32 %2131, 1
  br i1 %2132, label %2133, label %2168

; <label>:2133                                    ; preds = %2091
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.CBufRet.f32 %2134, 1
  %2137 = fsub fast float %2128, %2135
  %2138 = fsub fast float %2129, %2136
  %2139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2140 = extractvalue %dx.types.CBufRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.CBufRet.f32 %2139, 1
  %2142 = fmul fast float %2137, %2140
  %2143 = fmul fast float %2138, %2141
  %2144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2142, float %2143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = fcmp fast ogt float %2145, 0.000000e+00
  %2147 = extractvalue %dx.types.CBufRet.i32 %2130, 3
  %2148 = icmp ne i32 %2147, 0
  %2149 = and i1 %2146, %2148
  br i1 %2149, label %2150, label %2168, !dx.controlflow.hints !98

; <label>:2150                                    ; preds = %2133
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = extractvalue %dx.types.CBufRet.f32 %2151, 1
  %2154 = fsub fast float %2128, %2152
  %2155 = fsub fast float %2129, %2153
  %2156 = fmul fast float %2154, %2154
  %2157 = fmul fast float %2155, %2155
  %2158 = fadd fast float %2156, %2157
  %2159 = uitofp i32 %2147 to float
  %2160 = fmul fast float %2159, %2159
  %2161 = fcmp fast ogt float %2158, %2160
  br i1 %2161, label %2168, label %2162

; <label>:2162                                    ; preds = %2150
  %2163 = call float @dx.op.unary.f32(i32 24, float %2158)  ; Sqrt(value)
  %2164 = fsub fast float %2159, %2163
  %2165 = fmul fast float %2164, 0x3F75555560000000
  %2166 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2167 = call float @dx.op.binary.f32(i32 36, float %2166, float %2145)  ; FMin(a,b)
  br label %2168

; <label>:2168                                    ; preds = %2162, %2150, %2133, %2091
  %2169 = phi float [ 1.000000e+00, %2091 ], [ %2167, %2162 ], [ %2145, %2133 ], [ 0.000000e+00, %2150 ]
  %2170 = fcmp fast ogt float %2169, 0.000000e+00
  br i1 %2170, label %2171, label %2269, !dx.controlflow.hints !99

; <label>:2171                                    ; preds = %2168
  %2172 = fadd fast float %168, 5.000000e-01
  %2173 = call float @dx.op.unary.f32(i32 27, float %2172)  ; Round_ni(value)
  %2174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %166, float %167, float %2173, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2175 = extractvalue %dx.types.ResRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.ResRet.f32 %2174, 1
  %2177 = extractvalue %dx.types.ResRet.f32 %2174, 2
  %2178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2178, 3
  %2180 = fmul fast float %2179, %2175
  %2181 = fmul fast float %2179, %2176
  %2182 = fmul fast float %2179, %2177
  %2183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %166, float %167, float %2173, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2184 = extractvalue %dx.types.ResRet.f32 %2183, 0
  %2185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %166, float %167, float %2173, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.ResRet.f32 %2185, 1
  %2188 = fmul fast float %2186, 2.000000e+00
  %2189 = fmul fast float %2187, 2.000000e+00
  %2190 = fadd fast float %2188, -1.000000e+00
  %2191 = fadd fast float %2189, -1.000000e+00
  %2192 = fadd fast float %2190, %2191
  %2193 = fmul fast float %2192, 5.000000e-01
  %2194 = fsub fast float %2190, %2191
  %2195 = fmul fast float %2194, 5.000000e-01
  %2196 = call float @dx.op.unary.f32(i32 6, float %2193)  ; FAbs(value)
  %2197 = fsub fast float 1.000000e+00, %2196
  %2198 = call float @dx.op.unary.f32(i32 6, float %2195)  ; FAbs(value)
  %2199 = fsub fast float %2197, %2198
  %2200 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2199)  ; FMax(a,b)
  %2201 = call float @dx.op.dot3.f32(i32 55, float %2193, float %2195, float %2200, float %2193, float %2195, float %2200)  ; Dot3(ax,ay,az,bx,by,bz)
  %2202 = bitcast float %2201 to i32
  %2203 = ashr i32 %2202, 1
  %2204 = sub nsw i32 1597250115, %2203
  %2205 = bitcast i32 %2204 to float
  %2206 = fmul fast float %2205, %2193
  %2207 = fmul fast float %2205, %2195
  %2208 = fmul fast float %2205, %2200
  %2209 = fsub fast float 1.000000e+00, %2184
  %2210 = fdiv fast float %2209, %2208
  %2211 = fmul fast float %2208, %70
  %2212 = fmul fast float %2208, %71
  %2213 = fmul fast float %2208, %72
  %2214 = fmul fast float %2206, %66
  %2215 = fmul fast float %2206, %67
  %2216 = fmul fast float %2206, %68
  %2217 = fadd fast float %2211, %2214
  %2218 = fadd fast float %2212, %2215
  %2219 = fadd fast float %2213, %2216
  %2220 = fmul fast float %2207, %101
  %2221 = fmul fast float %2207, %102
  %2222 = fmul fast float %2207, %103
  %2223 = fadd fast float %2217, %2220
  %2224 = fadd fast float %2218, %2221
  %2225 = fadd fast float %2219, %2222
  %2226 = call float @dx.op.dot3.f32(i32 55, float %2223, float %2224, float %2225, float %2223, float %2224, float %2225)  ; Dot3(ax,ay,az,bx,by,bz)
  %2227 = call float @dx.op.unary.f32(i32 25, float %2226)  ; Rsqrt(value)
  %2228 = fmul fast float %2223, %2227
  %2229 = fmul fast float %2224, %2227
  %2230 = fmul fast float %2225, %2227
  %2231 = call float @dx.op.dot3.f32(i32 55, float %2104, float %2105, float %2106, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %2232 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2233 = fmul fast float %2232, 5.000000e-01
  %2234 = fadd fast float %2233, 5.000000e-01
  %2235 = fmul fast float %2234, %2184
  %2236 = call float @dx.op.dot3.f32(i32 55, float %2104, float %2105, float %2106, float %2228, float %2229, float %2230)  ; Dot3(ax,ay,az,bx,by,bz)
  %2237 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2238 = fmul fast float %2237, %2210
  %2239 = fadd fast float %2235, %2238
  %2240 = fsub fast float 5.000000e-01, %2233
  %2241 = fmul fast float %2240, %2101
  %2242 = fmul fast float %2240, %2102
  %2243 = fmul fast float %2240, %2103
  %2244 = fadd fast float %2239, %2241
  %2245 = fmul fast float %2244, %2180
  %2246 = fadd fast float %2239, %2242
  %2247 = fmul fast float %2246, %2181
  %2248 = fadd fast float %2239, %2243
  %2249 = fmul fast float %2248, %2182
  %2250 = call float @dx.op.dot3.f32(i32 55, float %2118, float %2119, float %2120, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %2251 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2252 = fmul fast float %2251, 5.000000e-01
  %2253 = fadd fast float %2252, 5.000000e-01
  %2254 = fmul fast float %2253, %2184
  %2255 = call float @dx.op.dot3.f32(i32 55, float %2118, float %2119, float %2120, float %2228, float %2229, float %2230)  ; Dot3(ax,ay,az,bx,by,bz)
  %2256 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2257 = fmul fast float %2256, %2210
  %2258 = fadd fast float %2254, %2257
  %2259 = fsub fast float 5.000000e-01, %2252
  %2260 = fmul fast float %2259, %2101
  %2261 = fmul fast float %2259, %2102
  %2262 = fmul fast float %2259, %2103
  %2263 = fadd fast float %2258, %2260
  %2264 = fmul fast float %2263, %2180
  %2265 = fadd fast float %2258, %2261
  %2266 = fmul fast float %2265, %2181
  %2267 = fadd fast float %2258, %2262
  %2268 = fmul fast float %2267, %2182
  br label %2269

; <label>:2269                                    ; preds = %2171, %2168
  %2270 = phi float [ %2264, %2171 ], [ 0.000000e+00, %2168 ]
  %2271 = phi float [ %2266, %2171 ], [ 0.000000e+00, %2168 ]
  %2272 = phi float [ %2268, %2171 ], [ 0.000000e+00, %2168 ]
  %2273 = phi float [ %2245, %2171 ], [ 0.000000e+00, %2168 ]
  %2274 = phi float [ %2247, %2171 ], [ 0.000000e+00, %2168 ]
  %2275 = phi float [ %2249, %2171 ], [ 0.000000e+00, %2168 ]
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 0
  %2278 = fcmp fast ogt float %2277, 0.000000e+00
  %2279 = and i1 %2170, %2278
  br i1 %2279, label %2280, label %2484, !dx.controlflow.hints !100

; <label>:2280                                    ; preds = %2269
  %2281 = extractvalue %dx.types.CBufRet.f32 %2125, 2
  %2282 = fadd fast float %2281, %139
  %2283 = fmul fast float %2104, 3.200000e+01
  %2284 = fmul fast float %2105, 3.200000e+01
  %2285 = fadd fast float %2128, %2283
  %2286 = fadd fast float %2129, %2284
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 0
  %2289 = extractvalue %dx.types.CBufRet.f32 %2287, 1
  %2290 = fsub fast float %2285, %2288
  %2291 = fsub fast float %2286, %2289
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2295 = fmul fast float %2290, %2293
  %2296 = fmul fast float %2291, %2294
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.CBufRet.f32 %2297, 1
  %2300 = fsub fast float %2128, %2298
  %2301 = fsub fast float %2129, %2299
  %2302 = fmul fast float %2300, %2300
  %2303 = fmul fast float %2301, %2301
  %2304 = fadd fast float %2302, %2303
  %2305 = call float @dx.op.unary.f32(i32 24, float %2304)  ; Sqrt(value)
  %2306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2307 = extractvalue %dx.types.CBufRet.f32 %2306, 0
  %2308 = extractvalue %dx.types.CBufRet.f32 %2306, 1
  %2309 = fsub fast float %2305, %2307
  %2310 = fdiv fast float %2309, %2308
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = fmul fast float %2311, 2.000000e+00
  %2313 = fsub fast float 3.000000e+00, %2312
  %2314 = fmul fast float %2311, %2311
  %2315 = fmul fast float %2314, %2313
  %2316 = fcmp fast oge float %2295, 0.000000e+00
  %2317 = fcmp fast ole float %2295, 1.000000e+00
  %2318 = and i1 %2317, %2316
  %2319 = fcmp fast oge float %2296, 0.000000e+00
  %2320 = and i1 %2319, %2318
  %2321 = fcmp fast ole float %2296, 1.000000e+00
  %2322 = and i1 %2321, %2320
  %2323 = fcmp fast ogt float %2315, 0.000000e+00
  %2324 = and i1 %2323, %2322
  br i1 %2324, label %2325, label %2448, !dx.controlflow.hints !101

; <label>:2325                                    ; preds = %2280
  %2326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2327 = extractvalue %dx.types.CBufRet.f32 %2326, 2
  %2328 = extractvalue %dx.types.CBufRet.f32 %2326, 3
  %2329 = fmul fast float %2327, %2295
  %2330 = fmul fast float %2328, %2296
  %2331 = call float @dx.op.unary.f32(i32 27, float %2329)  ; Round_ni(value)
  %2332 = call float @dx.op.unary.f32(i32 27, float %2330)  ; Round_ni(value)
  %2333 = fptosi float %2331 to i32
  %2334 = fptosi float %2332 to i32
  %2335 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2333, i32 %2334, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = lshr i32 %2336, 16
  %2338 = icmp eq i32 %2337, 65535
  br i1 %2338, label %2448, label %2339

; <label>:2339                                    ; preds = %2325
  %2340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.f32 %2340, 0
  %2342 = fmul fast float %2341, %2295
  %2343 = extractvalue %dx.types.CBufRet.f32 %2340, 1
  %2344 = fadd fast float %2342, %2343
  %2345 = extractvalue %dx.types.CBufRet.f32 %2340, 2
  %2346 = fmul fast float %2345, %2296
  %2347 = extractvalue %dx.types.CBufRet.f32 %2340, 3
  %2348 = fadd fast float %2346, %2347
  %2349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2344, float %2348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2350 = extractvalue %dx.types.ResRet.f32 %2349, 0
  %2351 = extractvalue %dx.types.ResRet.f32 %2349, 1
  %2352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2353 = extractvalue %dx.types.CBufRet.f32 %2352, 1
  %2354 = extractvalue %dx.types.CBufRet.f32 %2352, 0
  %2355 = fsub fast float %2353, %2354
  %2356 = fmul fast float %2355, %2350
  %2357 = fadd fast float %2356, %2354
  %2358 = extractvalue %dx.types.CBufRet.f32 %2352, 3
  %2359 = extractvalue %dx.types.CBufRet.f32 %2352, 2
  %2360 = fsub fast float %2358, %2359
  %2361 = fmul fast float %2360, %2351
  %2362 = fadd fast float %2361, %2359
  %2363 = fsub fast float %2282, %2357
  %2364 = fsub fast float %2362, %2357
  %2365 = fdiv fast float %2363, %2364
  %2366 = call float @dx.op.unary.f32(i32 7, float %2365)  ; Saturate(value)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2368 = extractvalue %dx.types.CBufRet.f32 %2326, 0
  %2369 = extractvalue %dx.types.CBufRet.f32 %2326, 1
  %2370 = fmul fast float %2368, %2295
  %2371 = fmul fast float %2369, %2296
  %2372 = fmul fast float %2370, 1.250000e-01
  %2373 = fmul fast float %2371, 1.250000e-01
  %2374 = call float @dx.op.unary.f32(i32 27, float %2372)  ; Round_ni(value)
  %2375 = call float @dx.op.unary.f32(i32 27, float %2373)  ; Round_ni(value)
  %2376 = fmul fast float %2374, 8.000000e+00
  %2377 = fmul fast float %2375, 8.000000e+00
  %2378 = fsub fast float %2370, %2376
  %2379 = fsub fast float %2371, %2377
  %2380 = fadd fast float %2378, 5.000000e-01
  %2381 = fadd fast float %2379, 5.000000e-01
  %2382 = and i32 %2337, 255
  %2383 = lshr i32 %2336, 24
  %2384 = mul nuw nsw i32 %2382, 9
  %2385 = uitofp i32 %2384 to float
  %2386 = mul nuw nsw i32 %2383, 9
  %2387 = uitofp i32 %2386 to float
  %2388 = fadd fast float %2380, %2385
  %2389 = fadd fast float %2381, %2387
  %2390 = fdiv fast float %2388, %2277
  %2391 = fdiv fast float %2389, %2367
  %2392 = fmul fast float %2366, 4.375000e-01
  %2393 = fadd fast float %2392, 3.125000e-02
  %2394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2390, float %2391, float %2393, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2395 = extractvalue %dx.types.ResRet.f32 %2394, 0
  %2396 = extractvalue %dx.types.ResRet.f32 %2394, 1
  %2397 = extractvalue %dx.types.ResRet.f32 %2394, 2
  %2398 = fadd fast float %2392, 5.312500e-01
  %2399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2390, float %2391, float %2398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2400 = extractvalue %dx.types.ResRet.f32 %2399, 0
  %2401 = extractvalue %dx.types.ResRet.f32 %2399, 1
  %2402 = extractvalue %dx.types.ResRet.f32 %2399, 2
  %2403 = fmul fast float %2400, 2.000000e+00
  %2404 = fmul fast float %2401, 2.000000e+00
  %2405 = fmul fast float %2402, 2.000000e+00
  %2406 = fadd fast float %2403, -1.000000e+00
  %2407 = fadd fast float %2404, -1.000000e+00
  %2408 = fadd fast float %2405, -1.000000e+00
  %2409 = fmul fast float %2406, %2406
  %2410 = fmul fast float %2407, %2407
  %2411 = fadd fast float %2409, %2410
  %2412 = fmul fast float %2408, %2408
  %2413 = fadd fast float %2411, %2412
  %2414 = call float @dx.op.unary.f32(i32 24, float %2413)  ; Sqrt(value)
  %2415 = fcmp fast ogt float %2414, 0.000000e+00
  br i1 %2415, label %2416, label %2420

; <label>:2416                                    ; preds = %2339
  %2417 = fdiv fast float %2406, %2414
  %2418 = fdiv fast float %2407, %2414
  %2419 = fdiv fast float %2408, %2414
  br label %2420

; <label>:2420                                    ; preds = %2416, %2339
  %2421 = phi float [ %2417, %2416 ], [ 0.000000e+00, %2339 ]
  %2422 = phi float [ %2418, %2416 ], [ 0.000000e+00, %2339 ]
  %2423 = phi float [ %2419, %2416 ], [ 0.000000e+00, %2339 ]
  %2424 = call float @dx.op.dot3.f32(i32 55, float %2421, float %2422, float %2423, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %2425 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2424)  ; FMax(a,b)
  %2426 = fmul fast float %2425, 0x400C5BF8A0000000
  %2427 = fmul fast float %2395, %2315
  %2428 = fmul fast float %2427, %2426
  %2429 = fmul fast float %2396, %2315
  %2430 = fmul fast float %2429, %2426
  %2431 = fmul fast float %2397, %2315
  %2432 = fmul fast float %2431, %2426
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 3
  %2435 = fmul fast float %2428, %2434
  %2436 = fmul fast float %2430, %2434
  %2437 = fmul fast float %2432, %2434
  %2438 = fcmp fast ogt float %2282, %2362
  br i1 %2438, label %2439, label %2448

; <label>:2439                                    ; preds = %2420
  %2440 = fmul fast float %2364, 0x3FC24924A0000000
  %2441 = fsub fast float %2282, %2362
  %2442 = fdiv fast float %2441, %2440
  %2443 = call float @dx.op.unary.f32(i32 7, float %2442)  ; Saturate(value)
  %2444 = fsub fast float 1.000000e+00, %2443
  %2445 = fmul fast float %2444, %2435
  %2446 = fmul fast float %2444, %2436
  %2447 = fmul fast float %2444, %2437
  br label %2448

; <label>:2448                                    ; preds = %2439, %2420, %2325, %2280
  %2449 = phi float [ %2447, %2439 ], [ %2437, %2420 ], [ 0.000000e+00, %2325 ], [ 0.000000e+00, %2280 ]
  %2450 = phi float [ %2446, %2439 ], [ %2436, %2420 ], [ 0.000000e+00, %2325 ], [ 0.000000e+00, %2280 ]
  %2451 = phi float [ %2445, %2439 ], [ %2435, %2420 ], [ 0.000000e+00, %2325 ], [ 0.000000e+00, %2280 ]
  %2452 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2451)  ; FMax(a,b)
  %2453 = fmul fast float %2452, 0x3FD20DD760000000
  %2454 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2118, float %2119, float %2120)  ; Dot3(ax,ay,az,bx,by,bz)
  %2455 = fmul fast float %2454, 0x3FDF454380000000
  %2456 = fmul fast float %2454, %2454
  %2457 = fmul fast float %2456, 0x3FEE471020000000
  %2458 = fadd fast float %2457, 0xBFD42F6020000000
  %2459 = call float @dx.op.dot3.f32(i32 55, float %2452, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2455, float %2458)  ; Dot3(ax,ay,az,bx,by,bz)
  %2460 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2450)  ; FMax(a,b)
  %2461 = fmul fast float %2460, 0x3FD20DD760000000
  %2462 = call float @dx.op.dot3.f32(i32 55, float %2460, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2455, float %2458)  ; Dot3(ax,ay,az,bx,by,bz)
  %2463 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2449)  ; FMax(a,b)
  %2464 = fmul fast float %2463, 0x3FD20DD760000000
  %2465 = call float @dx.op.dot3.f32(i32 55, float %2463, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2455, float %2458)  ; Dot3(ax,ay,az,bx,by,bz)
  %2466 = call float @dx.op.binary.f32(i32 35, float %2453, float 0.000000e+00)  ; FMax(a,b)
  %2467 = call float @dx.op.binary.f32(i32 35, float %2461, float 0.000000e+00)  ; FMax(a,b)
  %2468 = call float @dx.op.binary.f32(i32 35, float %2464, float 0.000000e+00)  ; FMax(a,b)
  %2469 = call float @dx.op.binary.f32(i32 35, float %2459, float 0.000000e+00)  ; FMax(a,b)
  %2470 = call float @dx.op.binary.f32(i32 35, float %2462, float 0.000000e+00)  ; FMax(a,b)
  %2471 = call float @dx.op.binary.f32(i32 35, float %2465, float 0.000000e+00)  ; FMax(a,b)
  %2472 = fmul fast float %2466, %2169
  %2473 = fmul fast float %2467, %2169
  %2474 = fmul fast float %2468, %2169
  %2475 = fadd fast float %2472, %2273
  %2476 = fadd fast float %2473, %2274
  %2477 = fadd fast float %2474, %2275
  %2478 = fmul fast float %2469, %2169
  %2479 = fmul fast float %2470, %2169
  %2480 = fmul fast float %2471, %2169
  %2481 = fadd fast float %2478, %2270
  %2482 = fadd fast float %2479, %2271
  %2483 = fadd fast float %2480, %2272
  br label %2484

; <label>:2484                                    ; preds = %2448, %2269
  %2485 = phi float [ %2481, %2448 ], [ %2270, %2269 ]
  %2486 = phi float [ %2482, %2448 ], [ %2271, %2269 ]
  %2487 = phi float [ %2483, %2448 ], [ %2272, %2269 ]
  %2488 = phi float [ %2475, %2448 ], [ %2273, %2269 ]
  %2489 = phi float [ %2476, %2448 ], [ %2274, %2269 ]
  %2490 = phi float [ %2477, %2448 ], [ %2275, %2269 ]
  %2491 = fcmp fast olt float %2169, 1.000000e+00
  br i1 %2491, label %2492, label %3310, !dx.controlflow.hints !102

; <label>:2492                                    ; preds = %2484
  %2493 = extractvalue %dx.types.CBufRet.f32 %2125, 2
  %2494 = fadd fast float %2493, %139
  %2495 = fmul fast float %2104, 3.200000e+01
  %2496 = fmul fast float %2105, 3.200000e+01
  %2497 = fadd fast float %2128, %2495
  %2498 = fadd fast float %2129, %2496
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.CBufRet.f32 %2499, 1
  %2502 = fsub fast float %2497, %2500
  %2503 = fsub fast float %2498, %2501
  %2504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2505 = extractvalue %dx.types.CBufRet.f32 %2504, 0
  %2506 = extractvalue %dx.types.CBufRet.f32 %2504, 1
  %2507 = fmul fast float %2502, %2505
  %2508 = fmul fast float %2503, %2506
  %2509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2510 = extractvalue %dx.types.CBufRet.f32 %2509, 0
  %2511 = fmul fast float %2507, %2510
  %2512 = extractvalue %dx.types.CBufRet.f32 %2509, 1
  %2513 = fadd fast float %2511, %2512
  %2514 = extractvalue %dx.types.CBufRet.f32 %2509, 2
  %2515 = fmul fast float %2514, %2508
  %2516 = extractvalue %dx.types.CBufRet.f32 %2509, 3
  %2517 = fadd fast float %2515, %2516
  %2518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2513, float %2517, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.ResRet.f32 %2518, 1
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 1
  %2523 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2524 = fsub fast float %2522, %2523
  %2525 = fmul fast float %2524, %2519
  %2526 = fadd fast float %2525, %2523
  %2527 = extractvalue %dx.types.CBufRet.f32 %2521, 3
  %2528 = extractvalue %dx.types.CBufRet.f32 %2521, 2
  %2529 = fsub fast float %2527, %2528
  %2530 = fmul fast float %2529, %2520
  %2531 = fadd fast float %2530, %2528
  %2532 = fsub fast float %2494, %2526
  %2533 = fsub fast float %2531, %2526
  %2534 = fdiv fast float %2532, %2533
  %2535 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 0
  %2538 = fmul fast float %2537, %2535
  %2539 = extractvalue %dx.types.CBufRet.f32 %2536, 1
  %2540 = fadd fast float %2538, %2539
  %2541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2513, float %2517, float %2540, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.ResRet.f32 %2541, 1
  %2544 = extractvalue %dx.types.ResRet.f32 %2541, 2
  %2545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2546 = extractvalue %dx.types.CBufRet.f32 %2545, 0
  %2547 = extractvalue %dx.types.CBufRet.f32 %2545, 1
  %2548 = extractvalue %dx.types.CBufRet.f32 %2545, 2
  %2549 = fmul fast float %2546, %2542
  %2550 = fmul fast float %2547, %2543
  %2551 = fmul fast float %2548, %2544
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 0
  %2554 = extractvalue %dx.types.CBufRet.f32 %2552, 1
  %2555 = extractvalue %dx.types.CBufRet.f32 %2552, 2
  %2556 = fadd fast float %2549, %2553
  %2557 = fadd fast float %2550, %2554
  %2558 = fadd fast float %2551, %2555
  %2559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2560 = extractvalue %dx.types.CBufRet.f32 %2559, 0
  %2561 = fmul fast float %2560, %2507
  %2562 = extractvalue %dx.types.CBufRet.f32 %2559, 1
  %2563 = fadd fast float %2561, %2562
  %2564 = extractvalue %dx.types.CBufRet.f32 %2559, 2
  %2565 = fmul fast float %2564, %2508
  %2566 = extractvalue %dx.types.CBufRet.f32 %2559, 3
  %2567 = fadd fast float %2565, %2566
  %2568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.f32 %2568, 0
  %2570 = extractvalue %dx.types.CBufRet.f32 %2568, 1
  %2571 = extractvalue %dx.types.CBufRet.f32 %2568, 2
  %2572 = extractvalue %dx.types.CBufRet.f32 %2568, 3
  %2573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.f32 %2573, 0
  %2575 = extractvalue %dx.types.CBufRet.f32 %2573, 1
  %2576 = extractvalue %dx.types.CBufRet.f32 %2573, 2
  %2577 = extractvalue %dx.types.CBufRet.f32 %2573, 3
  %2578 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2563, float %2567, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2579 = extractvalue %dx.types.ResRet.f32 %2578, 0
  %2580 = extractvalue %dx.types.ResRet.f32 %2578, 1
  %2581 = extractvalue %dx.types.ResRet.f32 %2578, 2
  %2582 = extractvalue %dx.types.ResRet.f32 %2578, 3
  %2583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2563, float %2567, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2584 = extractvalue %dx.types.ResRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.ResRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.ResRet.f32 %2583, 2
  %2587 = extractvalue %dx.types.ResRet.f32 %2583, 3
  %2588 = fmul fast float %2579, %2556
  %2589 = fmul fast float %2584, %2556
  %2590 = fmul fast float %2586, %2556
  %2591 = fmul fast float %2582, %2556
  %2592 = fadd fast float %2588, %2569
  %2593 = fadd fast float %2589, %2570
  %2594 = fadd fast float %2590, %2571
  %2595 = fadd fast float %2591, %2572
  %2596 = fmul fast float %2580, %2556
  %2597 = fmul fast float %2585, %2556
  %2598 = fadd fast float %2596, %2574
  %2599 = fadd fast float %2597, %2575
  %2600 = fmul fast float %2581, %2556
  %2601 = fmul fast float %2587, %2556
  %2602 = fadd fast float %2600, %2576
  %2603 = fadd fast float %2601, %2577
  %2604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2563, float %2567, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2605 = extractvalue %dx.types.ResRet.f32 %2604, 0
  %2606 = extractvalue %dx.types.ResRet.f32 %2604, 1
  %2607 = extractvalue %dx.types.ResRet.f32 %2604, 2
  %2608 = extractvalue %dx.types.ResRet.f32 %2604, 3
  %2609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2563, float %2567, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2610 = extractvalue %dx.types.ResRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.ResRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.ResRet.f32 %2609, 2
  %2613 = extractvalue %dx.types.ResRet.f32 %2609, 3
  %2614 = fmul fast float %2605, %2557
  %2615 = fmul fast float %2610, %2557
  %2616 = fmul fast float %2612, %2557
  %2617 = fmul fast float %2608, %2557
  %2618 = fadd fast float %2592, %2614
  %2619 = fadd fast float %2593, %2615
  %2620 = fadd fast float %2594, %2616
  %2621 = fadd fast float %2595, %2617
  %2622 = fmul fast float %2606, %2557
  %2623 = fmul fast float %2611, %2557
  %2624 = fadd fast float %2598, %2622
  %2625 = fadd fast float %2599, %2623
  %2626 = fmul fast float %2607, %2557
  %2627 = fmul fast float %2613, %2557
  %2628 = fadd fast float %2602, %2626
  %2629 = fadd fast float %2603, %2627
  %2630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2563, float %2567, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2631 = extractvalue %dx.types.ResRet.f32 %2630, 0
  %2632 = extractvalue %dx.types.ResRet.f32 %2630, 1
  %2633 = extractvalue %dx.types.ResRet.f32 %2630, 2
  %2634 = extractvalue %dx.types.ResRet.f32 %2630, 3
  %2635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2563, float %2567, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2636 = extractvalue %dx.types.ResRet.f32 %2635, 0
  %2637 = extractvalue %dx.types.ResRet.f32 %2635, 1
  %2638 = extractvalue %dx.types.ResRet.f32 %2635, 2
  %2639 = extractvalue %dx.types.ResRet.f32 %2635, 3
  %2640 = fmul fast float %2631, %2558
  %2641 = fmul fast float %2636, %2558
  %2642 = fmul fast float %2638, %2558
  %2643 = fmul fast float %2634, %2558
  %2644 = fadd fast float %2618, %2640
  %2645 = fadd fast float %2619, %2641
  %2646 = fadd fast float %2620, %2642
  %2647 = fadd fast float %2621, %2643
  %2648 = fmul fast float %2632, %2558
  %2649 = fmul fast float %2637, %2558
  %2650 = fadd fast float %2624, %2648
  %2651 = fadd fast float %2625, %2649
  %2652 = fmul fast float %2633, %2558
  %2653 = fmul fast float %2639, %2558
  %2654 = fadd fast float %2628, %2652
  %2655 = fadd fast float %2629, %2653
  %2656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2656, 0
  %2658 = fsub fast float %2128, %2657
  %2659 = fsub fast float %2500, %2128
  %2660 = call float @dx.op.binary.f32(i32 35, float %2659, float %2658)  ; FMax(a,b)
  %2661 = extractvalue %dx.types.CBufRet.f32 %2656, 1
  %2662 = fsub fast float %2129, %2661
  %2663 = fsub fast float %2501, %2129
  %2664 = call float @dx.op.binary.f32(i32 35, float %2663, float %2662)  ; FMax(a,b)
  %2665 = call float @dx.op.binary.f32(i32 35, float %2660, float %2664)  ; FMax(a,b)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2504, 3
  %2667 = fmul fast float %2666, %2665
  %2668 = call float @dx.op.unary.f32(i32 7, float %2667)  ; Saturate(value)
  %2669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2670 = extractvalue %dx.types.CBufRet.f32 %2669, 0
  %2671 = extractvalue %dx.types.CBufRet.f32 %2669, 1
  %2672 = extractvalue %dx.types.CBufRet.f32 %2669, 2
  %2673 = extractvalue %dx.types.CBufRet.f32 %2669, 3
  %2674 = fsub fast float %2670, %2644
  %2675 = fsub fast float %2671, %2645
  %2676 = fsub fast float %2672, %2646
  %2677 = fsub fast float %2673, %2647
  %2678 = fmul fast float %2674, %2668
  %2679 = fmul fast float %2675, %2668
  %2680 = fmul fast float %2676, %2668
  %2681 = fmul fast float %2677, %2668
  %2682 = fadd fast float %2678, %2644
  %2683 = fadd fast float %2679, %2645
  %2684 = fadd fast float %2680, %2646
  %2685 = fadd fast float %2681, %2647
  %2686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2687 = extractvalue %dx.types.CBufRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.CBufRet.f32 %2686, 1
  %2689 = fsub fast float %2687, %2650
  %2690 = fsub fast float %2688, %2651
  %2691 = fmul fast float %2689, %2668
  %2692 = fmul fast float %2690, %2668
  %2693 = fadd fast float %2691, %2650
  %2694 = fadd fast float %2692, %2651
  %2695 = extractvalue %dx.types.CBufRet.f32 %2686, 2
  %2696 = extractvalue %dx.types.CBufRet.f32 %2686, 3
  %2697 = fsub fast float %2695, %2654
  %2698 = fsub fast float %2696, %2655
  %2699 = fmul fast float %2697, %2668
  %2700 = fmul fast float %2698, %2668
  %2701 = fadd fast float %2699, %2654
  %2702 = fadd fast float %2700, %2655
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 0
  %2705 = fmul fast float %2704, %2682
  %2706 = fmul fast float %2704, %2683
  %2707 = fmul fast float %2704, %2684
  %2708 = fmul fast float %2704, %2685
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2711 = fmul fast float %2710, %2693
  %2712 = fmul fast float %2710, %2694
  %2713 = fadd fast float %2711, %2705
  %2714 = fadd fast float %2712, %2707
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = fmul fast float %2716, %2701
  %2718 = fmul fast float %2716, %2702
  %2719 = fadd fast float %2713, %2717
  %2720 = fadd fast float %2714, %2718
  %2721 = extractvalue %dx.types.CBufRet.f32 %2703, 1
  %2722 = fmul fast float %2721, %2682
  %2723 = fmul fast float %2721, %2683
  %2724 = fmul fast float %2721, %2684
  %2725 = fmul fast float %2721, %2685
  %2726 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2727 = fmul fast float %2726, %2693
  %2728 = fmul fast float %2726, %2694
  %2729 = fadd fast float %2727, %2722
  %2730 = fadd fast float %2728, %2724
  %2731 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2732 = fmul fast float %2731, %2701
  %2733 = fmul fast float %2731, %2702
  %2734 = fadd fast float %2729, %2732
  %2735 = fadd fast float %2730, %2733
  %2736 = extractvalue %dx.types.CBufRet.f32 %2703, 2
  %2737 = fmul fast float %2736, %2682
  %2738 = fmul fast float %2736, %2683
  %2739 = fmul fast float %2736, %2684
  %2740 = fmul fast float %2736, %2685
  %2741 = extractvalue %dx.types.CBufRet.f32 %2709, 2
  %2742 = fmul fast float %2741, %2693
  %2743 = fmul fast float %2741, %2694
  %2744 = fadd fast float %2742, %2737
  %2745 = fadd fast float %2743, %2739
  %2746 = extractvalue %dx.types.CBufRet.f32 %2715, 2
  %2747 = fmul fast float %2746, %2701
  %2748 = fmul fast float %2746, %2702
  %2749 = fadd fast float %2744, %2747
  %2750 = fadd fast float %2745, %2748
  %2751 = fmul fast float %2738, %2738
  %2752 = fmul fast float %2750, %2750
  %2753 = fmul fast float %2740, %2740
  %2754 = fadd fast float %2753, %2751
  %2755 = fadd fast float %2754, %2752
  %2756 = call float @dx.op.unary.f32(i32 24, float %2755)  ; Sqrt(value)
  %2757 = fcmp fast ugt float %2756, 0.000000e+00
  br i1 %2757, label %2758, label %2773

; <label>:2758                                    ; preds = %2492
  %2759 = fsub fast float -0.000000e+00, %2740
  %2760 = fdiv fast float %2759, %2756
  %2761 = fsub fast float -0.000000e+00, %2738
  %2762 = fdiv fast float %2761, %2756
  %2763 = fdiv fast float %2750, %2756
  %2764 = fmul fast float %2749, 0x3FE279A760000000
  %2765 = fmul fast float %2762, %2738
  %2766 = fmul fast float %2763, %2750
  %2767 = fmul fast float %2760, %2740
  %2768 = fadd fast float %2765, %2767
  %2769 = fsub fast float %2768, %2766
  %2770 = call float @dx.op.unary.f32(i32 6, float %2769)  ; FAbs(value)
  %2771 = fadd fast float %2770, 0x3DDB7CDFE0000000
  %2772 = fdiv fast float %2764, %2771
  br label %2773

; <label>:2773                                    ; preds = %2758, %2492
  %2774 = phi float [ %2772, %2758 ], [ 1.000000e+00, %2492 ]
  %2775 = fmul fast float %2723, %2723
  %2776 = fmul fast float %2735, %2735
  %2777 = fmul fast float %2725, %2725
  %2778 = fadd fast float %2777, %2775
  %2779 = fadd fast float %2778, %2776
  %2780 = call float @dx.op.unary.f32(i32 24, float %2779)  ; Sqrt(value)
  %2781 = fcmp fast ugt float %2780, 0.000000e+00
  br i1 %2781, label %2782, label %2797

; <label>:2782                                    ; preds = %2773
  %2783 = fsub fast float -0.000000e+00, %2725
  %2784 = fdiv fast float %2783, %2780
  %2785 = fsub fast float -0.000000e+00, %2723
  %2786 = fdiv fast float %2785, %2780
  %2787 = fdiv fast float %2735, %2780
  %2788 = fmul fast float %2734, 0x3FE279A760000000
  %2789 = fmul fast float %2786, %2723
  %2790 = fmul fast float %2787, %2735
  %2791 = fmul fast float %2784, %2725
  %2792 = fadd fast float %2789, %2791
  %2793 = fsub fast float %2792, %2790
  %2794 = call float @dx.op.unary.f32(i32 6, float %2793)  ; FAbs(value)
  %2795 = fadd fast float %2794, 0x3DDB7CDFE0000000
  %2796 = fdiv fast float %2788, %2795
  br label %2797

; <label>:2797                                    ; preds = %2782, %2773
  %2798 = phi float [ %2796, %2782 ], [ 1.000000e+00, %2773 ]
  %2799 = call float @dx.op.binary.f32(i32 36, float %2798, float %2774)  ; FMin(a,b)
  %2800 = fmul fast float %2706, %2706
  %2801 = fmul fast float %2720, %2720
  %2802 = fmul fast float %2708, %2708
  %2803 = fadd fast float %2802, %2800
  %2804 = fadd fast float %2803, %2801
  %2805 = call float @dx.op.unary.f32(i32 24, float %2804)  ; Sqrt(value)
  %2806 = fcmp fast ugt float %2805, 0.000000e+00
  br i1 %2806, label %2807, label %2822

; <label>:2807                                    ; preds = %2797
  %2808 = fsub fast float -0.000000e+00, %2708
  %2809 = fdiv fast float %2808, %2805
  %2810 = fsub fast float -0.000000e+00, %2706
  %2811 = fdiv fast float %2810, %2805
  %2812 = fdiv fast float %2720, %2805
  %2813 = fmul fast float %2719, 0x3FE279A760000000
  %2814 = fmul fast float %2811, %2706
  %2815 = fmul fast float %2812, %2720
  %2816 = fmul fast float %2809, %2708
  %2817 = fadd fast float %2814, %2816
  %2818 = fsub fast float %2817, %2815
  %2819 = call float @dx.op.unary.f32(i32 6, float %2818)  ; FAbs(value)
  %2820 = fadd fast float %2819, 0x3DDB7CDFE0000000
  %2821 = fdiv fast float %2813, %2820
  br label %2822

; <label>:2822                                    ; preds = %2807, %2797
  %2823 = phi float [ %2821, %2807 ], [ 1.000000e+00, %2797 ]
  %2824 = call float @dx.op.binary.f32(i32 36, float %2823, float %2799)  ; FMin(a,b)
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2826 = fcmp fast olt float %2825, 1.000000e+00
  br i1 %2826, label %2827, label %2837

; <label>:2827                                    ; preds = %2822
  %2828 = fmul fast float %2825, %2706
  %2829 = fmul fast float %2825, %2720
  %2830 = fmul fast float %2825, %2708
  %2831 = fmul fast float %2825, %2723
  %2832 = fmul fast float %2825, %2735
  %2833 = fmul fast float %2825, %2725
  %2834 = fmul fast float %2825, %2738
  %2835 = fmul fast float %2825, %2750
  %2836 = fmul fast float %2825, %2740
  br label %2837

; <label>:2837                                    ; preds = %2827, %2822
  %2838 = phi float [ %2834, %2827 ], [ %2738, %2822 ]
  %2839 = phi float [ %2835, %2827 ], [ %2750, %2822 ]
  %2840 = phi float [ %2836, %2827 ], [ %2740, %2822 ]
  %2841 = phi float [ %2831, %2827 ], [ %2723, %2822 ]
  %2842 = phi float [ %2832, %2827 ], [ %2735, %2822 ]
  %2843 = phi float [ %2833, %2827 ], [ %2725, %2822 ]
  %2844 = phi float [ %2828, %2827 ], [ %2706, %2822 ]
  %2845 = phi float [ %2829, %2827 ], [ %2720, %2822 ]
  %2846 = phi float [ %2830, %2827 ], [ %2708, %2822 ]
  %2847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2719)  ; FMax(a,b)
  %2848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2734)  ; FMax(a,b)
  %2849 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2749)  ; FMax(a,b)
  %2850 = fcmp fast oge float %2507, 0.000000e+00
  %2851 = and i1 %2850, %2278
  %2852 = fcmp fast ole float %2507, 1.000000e+00
  %2853 = and i1 %2852, %2851
  %2854 = fcmp fast oge float %2508, 0.000000e+00
  %2855 = and i1 %2854, %2853
  %2856 = fcmp fast ole float %2508, 1.000000e+00
  %2857 = and i1 %2856, %2855
  br i1 %2857, label %2858, label %3003, !dx.controlflow.hints !103

; <label>:2858                                    ; preds = %2837
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 2
  %2861 = extractvalue %dx.types.CBufRet.f32 %2859, 3
  %2862 = fmul fast float %2860, %2507
  %2863 = fmul fast float %2861, %2508
  %2864 = call float @dx.op.unary.f32(i32 27, float %2862)  ; Round_ni(value)
  %2865 = call float @dx.op.unary.f32(i32 27, float %2863)  ; Round_ni(value)
  %2866 = fptosi float %2864 to i32
  %2867 = fptosi float %2865 to i32
  %2868 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2866, i32 %2867, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 65535
  %2871 = lshr i32 %2869, 16
  %2872 = icmp eq i32 %2870, 65535
  br i1 %2872, label %2909, label %2873

; <label>:2873                                    ; preds = %2858
  %2874 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2875 = extractvalue %dx.types.CBufRet.f32 %2859, 0
  %2876 = extractvalue %dx.types.CBufRet.f32 %2859, 1
  %2877 = fmul fast float %2875, %2507
  %2878 = fmul fast float %2876, %2508
  %2879 = fmul fast float %2877, 1.250000e-01
  %2880 = fmul fast float %2878, 1.250000e-01
  %2881 = call float @dx.op.unary.f32(i32 27, float %2879)  ; Round_ni(value)
  %2882 = call float @dx.op.unary.f32(i32 27, float %2880)  ; Round_ni(value)
  %2883 = fmul fast float %2881, 8.000000e+00
  %2884 = fmul fast float %2882, 8.000000e+00
  %2885 = and i32 %2869, 255
  %2886 = lshr i32 %2869, 8
  %2887 = and i32 %2886, 255
  %2888 = mul nuw nsw i32 %2885, 9
  %2889 = uitofp i32 %2888 to float
  %2890 = mul nuw nsw i32 %2887, 9
  %2891 = uitofp i32 %2890 to float
  %2892 = fadd fast float %2889, 5.000000e-01
  %2893 = fadd fast float %2892, %2877
  %2894 = fsub fast float %2893, %2883
  %2895 = fadd fast float %2891, 5.000000e-01
  %2896 = fadd fast float %2895, %2878
  %2897 = fsub fast float %2896, %2884
  %2898 = fdiv fast float %2894, %2277
  %2899 = fdiv fast float %2897, %2874
  %2900 = fmul fast float %2535, 4.375000e-01
  %2901 = fadd fast float %2900, 3.125000e-02
  %2902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2898, float %2899, float %2901, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = extractvalue %dx.types.ResRet.f32 %2902, 1
  %2905 = extractvalue %dx.types.ResRet.f32 %2902, 2
  %2906 = fadd fast float %2903, %2847
  %2907 = fadd fast float %2904, %2848
  %2908 = fadd fast float %2905, %2849
  br label %2909

; <label>:2909                                    ; preds = %2873, %2858
  %2910 = phi float [ %2908, %2873 ], [ %2849, %2858 ]
  %2911 = phi float [ %2907, %2873 ], [ %2848, %2858 ]
  %2912 = phi float [ %2906, %2873 ], [ %2847, %2858 ]
  %2913 = icmp eq i32 %2871, 65535
  br i1 %2913, label %3003, label %2914

; <label>:2914                                    ; preds = %2909
  %2915 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2916 = extractvalue %dx.types.CBufRet.f32 %2859, 0
  %2917 = extractvalue %dx.types.CBufRet.f32 %2859, 1
  %2918 = fmul fast float %2916, %2507
  %2919 = fmul fast float %2917, %2508
  %2920 = fmul fast float %2918, 1.250000e-01
  %2921 = fmul fast float %2919, 1.250000e-01
  %2922 = call float @dx.op.unary.f32(i32 27, float %2920)  ; Round_ni(value)
  %2923 = call float @dx.op.unary.f32(i32 27, float %2921)  ; Round_ni(value)
  %2924 = fmul fast float %2922, 8.000000e+00
  %2925 = fmul fast float %2923, 8.000000e+00
  %2926 = fsub fast float %2918, %2924
  %2927 = fsub fast float %2919, %2925
  %2928 = fadd fast float %2926, 5.000000e-01
  %2929 = fadd fast float %2927, 5.000000e-01
  %2930 = and i32 %2871, 255
  %2931 = lshr i32 %2869, 24
  %2932 = mul nuw nsw i32 %2930, 9
  %2933 = uitofp i32 %2932 to float
  %2934 = mul nuw nsw i32 %2931, 9
  %2935 = uitofp i32 %2934 to float
  %2936 = fadd fast float %2928, %2933
  %2937 = fadd fast float %2929, %2935
  %2938 = fdiv fast float %2936, %2277
  %2939 = fdiv fast float %2937, %2915
  %2940 = fmul fast float %2535, 4.375000e-01
  %2941 = fadd fast float %2940, 3.125000e-02
  %2942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2938, float %2939, float %2941, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2943 = extractvalue %dx.types.ResRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.ResRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.ResRet.f32 %2942, 2
  %2946 = fadd fast float %2940, 5.312500e-01
  %2947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2938, float %2939, float %2946, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.ResRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.ResRet.f32 %2947, 2
  %2951 = fmul fast float %2948, 2.000000e+00
  %2952 = fmul fast float %2949, 2.000000e+00
  %2953 = fmul fast float %2950, 2.000000e+00
  %2954 = fadd fast float %2951, -1.000000e+00
  %2955 = fadd fast float %2952, -1.000000e+00
  %2956 = fadd fast float %2953, -1.000000e+00
  %2957 = fmul fast float %2954, %2954
  %2958 = fmul fast float %2955, %2955
  %2959 = fadd fast float %2957, %2958
  %2960 = fmul fast float %2956, %2956
  %2961 = fadd fast float %2959, %2960
  %2962 = call float @dx.op.unary.f32(i32 24, float %2961)  ; Sqrt(value)
  %2963 = fcmp fast ogt float %2962, 0.000000e+00
  br i1 %2963, label %2964, label %2968

; <label>:2964                                    ; preds = %2914
  %2965 = fdiv fast float %2954, %2962
  %2966 = fdiv fast float %2955, %2962
  %2967 = fdiv fast float %2956, %2962
  br label %2968

; <label>:2968                                    ; preds = %2964, %2914
  %2969 = phi float [ %2965, %2964 ], [ 0.000000e+00, %2914 ]
  %2970 = phi float [ %2966, %2964 ], [ 0.000000e+00, %2914 ]
  %2971 = phi float [ %2967, %2964 ], [ 0.000000e+00, %2914 ]
  %2972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2973 = extractvalue %dx.types.CBufRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.CBufRet.f32 %2972, 1
  %2975 = fsub fast float %2128, %2973
  %2976 = fsub fast float %2129, %2974
  %2977 = fmul fast float %2975, %2975
  %2978 = fmul fast float %2976, %2976
  %2979 = fadd fast float %2977, %2978
  %2980 = call float @dx.op.unary.f32(i32 24, float %2979)  ; Sqrt(value)
  %2981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2982 = extractvalue %dx.types.CBufRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.CBufRet.f32 %2981, 1
  %2984 = fsub fast float %2980, %2982
  %2985 = fdiv fast float %2984, %2983
  %2986 = call float @dx.op.unary.f32(i32 7, float %2985)  ; Saturate(value)
  %2987 = fmul fast float %2986, 2.000000e+00
  %2988 = fsub fast float 3.000000e+00, %2987
  %2989 = fmul fast float %2986, %2986
  %2990 = fmul fast float %2989, %2988
  %2991 = call float @dx.op.dot3.f32(i32 55, float %2969, float %2970, float %2971, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %2992 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2991)  ; FMax(a,b)
  %2993 = fmul fast float %2992, 0x400C5BF8A0000000
  %2994 = fmul fast float %2990, %2943
  %2995 = fmul fast float %2994, %2993
  %2996 = fadd fast float %2995, %2912
  %2997 = fmul fast float %2990, %2944
  %2998 = fmul fast float %2997, %2993
  %2999 = fadd fast float %2998, %2911
  %3000 = fmul fast float %2990, %2945
  %3001 = fmul fast float %3000, %2993
  %3002 = fadd fast float %3001, %2910
  br label %3003

; <label>:3003                                    ; preds = %2968, %2909, %2837
  %3004 = phi float [ %3002, %2968 ], [ %2910, %2909 ], [ %2849, %2837 ]
  %3005 = phi float [ %2999, %2968 ], [ %2911, %2909 ], [ %2848, %2837 ]
  %3006 = phi float [ %2996, %2968 ], [ %2912, %2909 ], [ %2847, %2837 ]
  %3007 = fcmp fast ogt float %2494, %2531
  %3008 = and i1 %2850, %3007
  %3009 = and i1 %2852, %3008
  %3010 = and i1 %2854, %3009
  %3011 = and i1 %2856, %3010
  br i1 %3011, label %3012, label %3069, !dx.controlflow.hints !104

; <label>:3012                                    ; preds = %3003
  %3013 = fmul fast float %2533, 0x3FC24924A0000000
  %3014 = fsub fast float %2494, %2531
  %3015 = fdiv fast float %3014, %3013
  %3016 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.f32 %3017, 0
  %3019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.f32 %3019, 0
  %3021 = extractvalue %dx.types.CBufRet.f32 %3019, 1
  %3022 = extractvalue %dx.types.CBufRet.f32 %3019, 2
  %3023 = fsub fast float %3018, %3006
  %3024 = fsub fast float %3020, %2844
  %3025 = fsub fast float %3021, %2845
  %3026 = fsub fast float %3022, %2846
  %3027 = fmul fast float %3023, %3016
  %3028 = fmul fast float %3024, %3016
  %3029 = fmul fast float %3025, %3016
  %3030 = fmul fast float %3026, %3016
  %3031 = fadd fast float %3027, %3006
  %3032 = fadd fast float %3028, %2844
  %3033 = fadd fast float %3029, %2845
  %3034 = fadd fast float %3030, %2846
  %3035 = extractvalue %dx.types.CBufRet.f32 %3017, 1
  %3036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3037 = extractvalue %dx.types.CBufRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.CBufRet.f32 %3036, 1
  %3039 = extractvalue %dx.types.CBufRet.f32 %3036, 2
  %3040 = fsub fast float %3035, %3005
  %3041 = fsub fast float %3037, %2841
  %3042 = fsub fast float %3038, %2842
  %3043 = fsub fast float %3039, %2843
  %3044 = fmul fast float %3040, %3016
  %3045 = fmul fast float %3041, %3016
  %3046 = fmul fast float %3042, %3016
  %3047 = fmul fast float %3043, %3016
  %3048 = fadd fast float %3044, %3005
  %3049 = fadd fast float %3045, %2841
  %3050 = fadd fast float %3046, %2842
  %3051 = fadd fast float %3047, %2843
  %3052 = extractvalue %dx.types.CBufRet.f32 %3017, 2
  %3053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3054 = extractvalue %dx.types.CBufRet.f32 %3053, 0
  %3055 = extractvalue %dx.types.CBufRet.f32 %3053, 1
  %3056 = extractvalue %dx.types.CBufRet.f32 %3053, 2
  %3057 = fsub fast float %3052, %3004
  %3058 = fsub fast float %3054, %2838
  %3059 = fsub fast float %3055, %2839
  %3060 = fsub fast float %3056, %2840
  %3061 = fmul fast float %3057, %3016
  %3062 = fmul fast float %3058, %3016
  %3063 = fmul fast float %3059, %3016
  %3064 = fmul fast float %3060, %3016
  %3065 = fadd fast float %3061, %3004
  %3066 = fadd fast float %3062, %2838
  %3067 = fadd fast float %3063, %2839
  %3068 = fadd fast float %3064, %2840
  br label %3069

; <label>:3069                                    ; preds = %3012, %3003
  %3070 = phi float [ %3065, %3012 ], [ %3004, %3003 ]
  %3071 = phi float [ %3066, %3012 ], [ %2838, %3003 ]
  %3072 = phi float [ %3067, %3012 ], [ %2839, %3003 ]
  %3073 = phi float [ %3068, %3012 ], [ %2840, %3003 ]
  %3074 = phi float [ %3048, %3012 ], [ %3005, %3003 ]
  %3075 = phi float [ %3049, %3012 ], [ %2841, %3003 ]
  %3076 = phi float [ %3050, %3012 ], [ %2842, %3003 ]
  %3077 = phi float [ %3051, %3012 ], [ %2843, %3003 ]
  %3078 = phi float [ %3031, %3012 ], [ %3006, %3003 ]
  %3079 = phi float [ %3032, %3012 ], [ %2844, %3003 ]
  %3080 = phi float [ %3033, %3012 ], [ %2845, %3003 ]
  %3081 = phi float [ %3034, %3012 ], [ %2846, %3003 ]
  %3082 = extractvalue %dx.types.CBufRet.f32 %2656, 3
  %3083 = fmul fast float %3082, %3078
  %3084 = fmul fast float %3082, %3074
  %3085 = fmul fast float %3082, %3070
  %3086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3087 = extractvalue %dx.types.CBufRet.f32 %3086, 3
  %3088 = fmul fast float %3083, %3087
  %3089 = fmul fast float %3084, %3087
  %3090 = fmul fast float %3085, %3087
  %3091 = fmul fast float %3079, 1.500000e+00
  %3092 = fmul fast float %3091, %3082
  %3093 = fmul fast float %3092, %3087
  %3094 = fmul fast float %3080, 1.500000e+00
  %3095 = fmul fast float %3094, %3082
  %3096 = fmul fast float %3095, %3087
  %3097 = fmul fast float %3081, 1.500000e+00
  %3098 = fmul fast float %3097, %3082
  %3099 = fmul fast float %3098, %3087
  %3100 = fmul fast float %3075, 1.500000e+00
  %3101 = fmul fast float %3100, %3082
  %3102 = fmul fast float %3101, %3087
  %3103 = fmul fast float %3076, 1.500000e+00
  %3104 = fmul fast float %3103, %3082
  %3105 = fmul fast float %3104, %3087
  %3106 = fmul fast float %3077, 1.500000e+00
  %3107 = fmul fast float %3106, %3082
  %3108 = fmul fast float %3107, %3087
  %3109 = fmul fast float %3071, 1.500000e+00
  %3110 = fmul fast float %3109, %3082
  %3111 = fmul fast float %3110, %3087
  %3112 = fmul fast float %3072, 1.500000e+00
  %3113 = fmul fast float %3112, %3082
  %3114 = fmul fast float %3113, %3087
  %3115 = fmul fast float %3073, 1.500000e+00
  %3116 = fmul fast float %3115, %3082
  %3117 = fmul fast float %3116, %3087
  %3118 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3088)  ; FMax(a,b)
  %3119 = call float @dx.op.dot3.f32(i32 55, float %3093, float %3096, float %3099, float %3093, float %3096, float %3099)  ; Dot3(ax,ay,az,bx,by,bz)
  %3120 = fcmp fast oeq float %3119, 0.000000e+00
  %3121 = fcmp fast oeq float %3118, 0.000000e+00
  %3122 = or i1 %3121, %3120
  br i1 %3122, label %3152, label %3123

; <label>:3123                                    ; preds = %3069
  %3124 = fsub fast float -0.000000e+00, %3099
  %3125 = fsub fast float -0.000000e+00, %3093
  %3126 = call float @dx.op.unary.f32(i32 24, float %3119)  ; Sqrt(value)
  %3127 = fdiv fast float %3126, %3118
  %3128 = fcmp fast ogt float %3127, 0x3FFB6F8900000000
  %3129 = select i1 %3128, float 0x3FFB6F8900000000, float %3127
  %3130 = fmul fast float %3129, 0x3FE8A23460000000
  %3131 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3132 = call float @dx.op.binary.f32(i32 35, float %3129, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3133 = fmul fast float %3131, %3118
  %3134 = fmul fast float %3132, 0x3FF279A740000000
  %3135 = fadd fast float %3134, -1.000000e+00
  %3136 = call float @dx.op.dot3.f32(i32 55, float %3124, float %3125, float %3096, float %3124, float %3125, float %3096)  ; Dot3(ax,ay,az,bx,by,bz)
  %3137 = call float @dx.op.unary.f32(i32 25, float %3136)  ; Rsqrt(value)
  %3138 = fmul fast float %3137, %3124
  %3139 = fmul fast float %3137, %3125
  %3140 = fmul fast float %3137, %3096
  %3141 = fmul fast float %3135, %3135
  %3142 = fsub fast float 1.000000e+00, %3141
  %3143 = fmul fast float %3132, 0x40005F8BE0000000
  %3144 = fsub fast float 0x400C5BF8A0000000, %3143
  %3145 = fdiv fast float %3133, %3144
  %3146 = fmul fast float %3145, 0x3FEE31C3C0000000
  %3147 = fmul fast float %3146, %3142
  %3148 = fmul fast float %3132, 0x3FDACB7480000000
  %3149 = fadd fast float %3148, 0xBFD7347680000000
  %3150 = fmul fast float %3149, %3145
  %3151 = fmul fast float %3150, %3142
  br label %3152

; <label>:3152                                    ; preds = %3123, %3069
  %3153 = phi float [ %3138, %3123 ], [ 0.000000e+00, %3069 ]
  %3154 = phi float [ %3139, %3123 ], [ 0.000000e+00, %3069 ]
  %3155 = phi float [ %3140, %3123 ], [ 0.000000e+00, %3069 ]
  %3156 = phi float [ %3147, %3123 ], [ 0.000000e+00, %3069 ]
  %3157 = phi float [ %3151, %3123 ], [ 0.000000e+00, %3069 ]
  %3158 = call float @dx.op.dot3.f32(i32 55, float %3153, float %3154, float %3155, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %3159 = fmul fast float %3158, %3158
  %3160 = fmul fast float %3159, 0x3FEE471020000000
  %3161 = fadd fast float %3160, 0xBFD42F6020000000
  %3162 = fmul fast float %3118, 0x3FD20DD760000000
  %3163 = fmul fast float %3161, %3157
  %3164 = fmul fast float %3156, 0x3FDF454380000000
  %3165 = fmul fast float %3164, %3158
  %3166 = fadd fast float %3165, %3162
  %3167 = fadd fast float %3166, %3163
  %3168 = call float @dx.op.dot3.f32(i32 55, float %3153, float %3154, float %3155, float %2118, float %2119, float %2120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3169 = fmul fast float %3168, 0x3FDF454380000000
  %3170 = fmul fast float %3168, %3168
  %3171 = fmul fast float %3170, 0x3FEE471020000000
  %3172 = fadd fast float %3171, 0xBFD42F6020000000
  %3173 = call float @dx.op.dot3.f32(i32 55, float %3118, float %3156, float %3157, float 0x3FD20DD760000000, float %3169, float %3172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3174 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3089)  ; FMax(a,b)
  %3175 = call float @dx.op.dot3.f32(i32 55, float %3102, float %3105, float %3108, float %3102, float %3105, float %3108)  ; Dot3(ax,ay,az,bx,by,bz)
  %3176 = fcmp fast oeq float %3175, 0.000000e+00
  %3177 = fcmp fast oeq float %3174, 0.000000e+00
  %3178 = or i1 %3177, %3176
  br i1 %3178, label %3208, label %3179

; <label>:3179                                    ; preds = %3152
  %3180 = fsub fast float -0.000000e+00, %3108
  %3181 = fsub fast float -0.000000e+00, %3102
  %3182 = call float @dx.op.unary.f32(i32 24, float %3175)  ; Sqrt(value)
  %3183 = fdiv fast float %3182, %3174
  %3184 = fcmp fast ogt float %3183, 0x3FFB6F8900000000
  %3185 = select i1 %3184, float 0x3FFB6F8900000000, float %3183
  %3186 = fmul fast float %3185, 0x3FE8A23460000000
  %3187 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  %3188 = call float @dx.op.binary.f32(i32 35, float %3185, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3189 = fmul fast float %3187, %3174
  %3190 = fmul fast float %3188, 0x3FF279A740000000
  %3191 = fadd fast float %3190, -1.000000e+00
  %3192 = call float @dx.op.dot3.f32(i32 55, float %3180, float %3181, float %3105, float %3180, float %3181, float %3105)  ; Dot3(ax,ay,az,bx,by,bz)
  %3193 = call float @dx.op.unary.f32(i32 25, float %3192)  ; Rsqrt(value)
  %3194 = fmul fast float %3193, %3180
  %3195 = fmul fast float %3193, %3181
  %3196 = fmul fast float %3193, %3105
  %3197 = fmul fast float %3191, %3191
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3188, 0x40005F8BE0000000
  %3200 = fsub fast float 0x400C5BF8A0000000, %3199
  %3201 = fdiv fast float %3189, %3200
  %3202 = fmul fast float %3201, 0x3FEE31C3C0000000
  %3203 = fmul fast float %3202, %3198
  %3204 = fmul fast float %3188, 0x3FDACB7480000000
  %3205 = fadd fast float %3204, 0xBFD7347680000000
  %3206 = fmul fast float %3205, %3201
  %3207 = fmul fast float %3206, %3198
  br label %3208

; <label>:3208                                    ; preds = %3179, %3152
  %3209 = phi float [ %3194, %3179 ], [ 0.000000e+00, %3152 ]
  %3210 = phi float [ %3195, %3179 ], [ 0.000000e+00, %3152 ]
  %3211 = phi float [ %3196, %3179 ], [ 0.000000e+00, %3152 ]
  %3212 = phi float [ %3203, %3179 ], [ 0.000000e+00, %3152 ]
  %3213 = phi float [ %3207, %3179 ], [ 0.000000e+00, %3152 ]
  %3214 = call float @dx.op.dot3.f32(i32 55, float %3209, float %3210, float %3211, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %3215 = fmul fast float %3214, %3214
  %3216 = fmul fast float %3215, 0x3FEE471020000000
  %3217 = fadd fast float %3216, 0xBFD42F6020000000
  %3218 = fmul fast float %3174, 0x3FD20DD760000000
  %3219 = fmul fast float %3217, %3213
  %3220 = fmul fast float %3212, 0x3FDF454380000000
  %3221 = fmul fast float %3220, %3214
  %3222 = fadd fast float %3221, %3218
  %3223 = fadd fast float %3222, %3219
  %3224 = call float @dx.op.dot3.f32(i32 55, float %3209, float %3210, float %3211, float %2118, float %2119, float %2120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3225 = fmul fast float %3224, 0x3FDF454380000000
  %3226 = fmul fast float %3224, %3224
  %3227 = fmul fast float %3226, 0x3FEE471020000000
  %3228 = fadd fast float %3227, 0xBFD42F6020000000
  %3229 = call float @dx.op.dot3.f32(i32 55, float %3174, float %3212, float %3213, float 0x3FD20DD760000000, float %3225, float %3228)  ; Dot3(ax,ay,az,bx,by,bz)
  %3230 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3090)  ; FMax(a,b)
  %3231 = call float @dx.op.dot3.f32(i32 55, float %3111, float %3114, float %3117, float %3111, float %3114, float %3117)  ; Dot3(ax,ay,az,bx,by,bz)
  %3232 = fcmp fast oeq float %3231, 0.000000e+00
  %3233 = fcmp fast oeq float %3230, 0.000000e+00
  %3234 = or i1 %3233, %3232
  br i1 %3234, label %3264, label %3235

; <label>:3235                                    ; preds = %3208
  %3236 = fsub fast float -0.000000e+00, %3117
  %3237 = fsub fast float -0.000000e+00, %3111
  %3238 = call float @dx.op.unary.f32(i32 24, float %3231)  ; Sqrt(value)
  %3239 = fdiv fast float %3238, %3230
  %3240 = fcmp fast ogt float %3239, 0x3FFB6F8900000000
  %3241 = select i1 %3240, float 0x3FFB6F8900000000, float %3239
  %3242 = fmul fast float %3241, 0x3FE8A23460000000
  %3243 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3244 = call float @dx.op.binary.f32(i32 35, float %3241, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3245 = fmul fast float %3243, %3230
  %3246 = fmul fast float %3244, 0x3FF279A740000000
  %3247 = fadd fast float %3246, -1.000000e+00
  %3248 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3114, float %3236, float %3237, float %3114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = call float @dx.op.unary.f32(i32 25, float %3248)  ; Rsqrt(value)
  %3250 = fmul fast float %3249, %3236
  %3251 = fmul fast float %3249, %3237
  %3252 = fmul fast float %3249, %3114
  %3253 = fmul fast float %3247, %3247
  %3254 = fsub fast float 1.000000e+00, %3253
  %3255 = fmul fast float %3244, 0x40005F8BE0000000
  %3256 = fsub fast float 0x400C5BF8A0000000, %3255
  %3257 = fdiv fast float %3245, %3256
  %3258 = fmul fast float %3257, 0x3FEE31C3C0000000
  %3259 = fmul fast float %3258, %3254
  %3260 = fmul fast float %3244, 0x3FDACB7480000000
  %3261 = fadd fast float %3260, 0xBFD7347680000000
  %3262 = fmul fast float %3261, %3257
  %3263 = fmul fast float %3262, %3254
  br label %3264

; <label>:3264                                    ; preds = %3235, %3208
  %3265 = phi float [ %3250, %3235 ], [ 0.000000e+00, %3208 ]
  %3266 = phi float [ %3251, %3235 ], [ 0.000000e+00, %3208 ]
  %3267 = phi float [ %3252, %3235 ], [ 0.000000e+00, %3208 ]
  %3268 = phi float [ %3259, %3235 ], [ 0.000000e+00, %3208 ]
  %3269 = phi float [ %3263, %3235 ], [ 0.000000e+00, %3208 ]
  %3270 = call float @dx.op.dot3.f32(i32 55, float %3265, float %3266, float %3267, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %3271 = fmul fast float %3270, %3270
  %3272 = fmul fast float %3271, 0x3FEE471020000000
  %3273 = fadd fast float %3272, 0xBFD42F6020000000
  %3274 = fmul fast float %3230, 0x3FD20DD760000000
  %3275 = fmul fast float %3273, %3269
  %3276 = fmul fast float %3268, 0x3FDF454380000000
  %3277 = fmul fast float %3276, %3270
  %3278 = fadd fast float %3277, %3274
  %3279 = fadd fast float %3278, %3275
  %3280 = call float @dx.op.dot3.f32(i32 55, float %3265, float %3266, float %3267, float %2118, float %2119, float %2120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3281 = fmul fast float %3280, 0x3FDF454380000000
  %3282 = fmul fast float %3280, %3280
  %3283 = fmul fast float %3282, 0x3FEE471020000000
  %3284 = fadd fast float %3283, 0xBFD42F6020000000
  %3285 = call float @dx.op.dot3.f32(i32 55, float %3230, float %3268, float %3269, float 0x3FD20DD760000000, float %3281, float %3284)  ; Dot3(ax,ay,az,bx,by,bz)
  %3286 = call float @dx.op.binary.f32(i32 35, float %3167, float 0.000000e+00)  ; FMax(a,b)
  %3287 = call float @dx.op.binary.f32(i32 35, float %3223, float 0.000000e+00)  ; FMax(a,b)
  %3288 = call float @dx.op.binary.f32(i32 35, float %3279, float 0.000000e+00)  ; FMax(a,b)
  %3289 = call float @dx.op.binary.f32(i32 35, float %3173, float 0.000000e+00)  ; FMax(a,b)
  %3290 = call float @dx.op.binary.f32(i32 35, float %3229, float 0.000000e+00)  ; FMax(a,b)
  %3291 = call float @dx.op.binary.f32(i32 35, float %3285, float 0.000000e+00)  ; FMax(a,b)
  %3292 = fsub fast float %2488, %3286
  %3293 = fsub fast float %2489, %3287
  %3294 = fsub fast float %2490, %3288
  %3295 = fmul fast float %3292, %2169
  %3296 = fmul fast float %3293, %2169
  %3297 = fmul fast float %3294, %2169
  %3298 = fadd fast float %3295, %3286
  %3299 = fadd fast float %3296, %3287
  %3300 = fadd fast float %3297, %3288
  %3301 = fsub fast float %2485, %3289
  %3302 = fsub fast float %2486, %3290
  %3303 = fsub fast float %2487, %3291
  %3304 = fmul fast float %3301, %2169
  %3305 = fmul fast float %3302, %2169
  %3306 = fmul fast float %3303, %2169
  %3307 = fadd fast float %3304, %3289
  %3308 = fadd fast float %3305, %3290
  %3309 = fadd fast float %3306, %3291
  br label %3310

; <label>:3310                                    ; preds = %3264, %2484
  %3311 = phi float [ %3307, %3264 ], [ %2485, %2484 ]
  %3312 = phi float [ %3308, %3264 ], [ %2486, %2484 ]
  %3313 = phi float [ %3309, %3264 ], [ %2487, %2484 ]
  %3314 = phi float [ %3298, %3264 ], [ %2488, %2484 ]
  %3315 = phi float [ %3299, %3264 ], [ %2489, %2484 ]
  %3316 = phi float [ %3300, %3264 ], [ %2490, %2484 ]
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 0
  %3319 = call float @dx.op.binary.f32(i32 36, float %2101, float %3318)  ; FMin(a,b)
  %3320 = fsub fast float 1.000000e+00, %2121
  %3321 = fmul fast float %3319, %3320
  %3322 = fsub fast float 1.000000e+00, %3321
  %3323 = bitcast float %3322 to i32
  %3324 = sub nsw i32 2129859010, %3323
  %3325 = bitcast i32 %3324 to float
  %3326 = call float @dx.op.binary.f32(i32 36, float %2102, float %3318)  ; FMin(a,b)
  %3327 = fmul fast float %3326, %3320
  %3328 = fsub fast float 1.000000e+00, %3327
  %3329 = bitcast float %3328 to i32
  %3330 = sub nsw i32 2129859010, %3329
  %3331 = bitcast i32 %3330 to float
  %3332 = call float @dx.op.binary.f32(i32 36, float %2103, float %3318)  ; FMin(a,b)
  %3333 = fmul fast float %3332, %3320
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = bitcast float %3334 to i32
  %3336 = sub nsw i32 2129859010, %3335
  %3337 = bitcast i32 %3336 to float
  %3338 = fmul fast float %3314, %2121
  %3339 = fmul fast float %3338, %3325
  %3340 = fmul fast float %3315, %2121
  %3341 = fmul fast float %3340, %3331
  %3342 = fmul fast float %3316, %2121
  %3343 = fmul fast float %3342, %3337
  %3344 = call float @dx.op.binary.f32(i32 36, float %2098, float %3318)  ; FMin(a,b)
  %3345 = fmul fast float %3344, %3320
  %3346 = fsub fast float 1.000000e+00, %3345
  %3347 = bitcast float %3346 to i32
  %3348 = sub nsw i32 2129859010, %3347
  %3349 = bitcast i32 %3348 to float
  %3350 = call float @dx.op.binary.f32(i32 36, float %2099, float %3318)  ; FMin(a,b)
  %3351 = fmul fast float %3350, %3320
  %3352 = fsub fast float 1.000000e+00, %3351
  %3353 = bitcast float %3352 to i32
  %3354 = sub nsw i32 2129859010, %3353
  %3355 = bitcast i32 %3354 to float
  %3356 = call float @dx.op.binary.f32(i32 36, float %2110, float %3318)  ; FMin(a,b)
  %3357 = fmul fast float %3356, %3320
  %3358 = fsub fast float 1.000000e+00, %3357
  %3359 = bitcast float %3358 to i32
  %3360 = sub nsw i32 2129859010, %3359
  %3361 = bitcast i32 %3360 to float
  %3362 = fmul fast float %3311, %2121
  %3363 = fmul fast float %3362, %3349
  %3364 = fmul fast float %3312, %2121
  %3365 = fmul fast float %3364, %3355
  %3366 = fmul fast float %3313, %2121
  %3367 = fmul fast float %3366, %3361
  %3368 = call float @dx.op.dot3.f32(i32 55, float %3339, float %3341, float %3343, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = select i1 %228, float 0.000000e+00, float %3339
  %3370 = select i1 %228, float %3368, float %3341
  %3371 = select i1 %228, float 0.000000e+00, float %3343
  %3372 = call float @dx.op.dot3.f32(i32 55, float %3363, float %3365, float %3367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3373 = select i1 %228, float 0.000000e+00, float %3363
  %3374 = select i1 %228, float %3372, float %3365
  %3375 = select i1 %228, float 0.000000e+00, float %3367
  %3376 = fmul fast float %2112, 9.843750e-01
  %3377 = fmul fast float %2107, 9.843750e-01
  %3378 = fadd fast float %3376, 7.812500e-03
  %3379 = fadd fast float %3377, 7.812500e-03
  %3380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3378, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3381 = extractvalue %dx.types.ResRet.f32 %3380, 2
  %3382 = extractvalue %dx.types.ResRet.f32 %3380, 3
  %3383 = fmul fast float %3381, %2098
  %3384 = fmul fast float %3381, %2099
  %3385 = fmul fast float %3381, %2110
  %3386 = fadd fast float %3383, %3382
  %3387 = fadd fast float %3384, %3382
  %3388 = fadd fast float %3385, %3382
  %3389 = fcmp fast ogt float %1475, 0.000000e+00
  br i1 %3389, label %3390, label %3416

; <label>:3390                                    ; preds = %3310
  %3391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1475, float %2112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.ResRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3391, 2
  %3395 = fadd fast float %3392, -5.000000e-01
  %3396 = fadd fast float %3393, -5.000000e-01
  %3397 = fadd fast float %3394, -5.000000e-01
  %3398 = fsub fast float 1.000000e+00, %2098
  %3399 = fsub fast float 1.000000e+00, %2099
  %3400 = fsub fast float 1.000000e+00, %2110
  %3401 = fmul fast float %2098, 4.000000e+00
  %3402 = fmul fast float %3401, %3398
  %3403 = fmul fast float %3402, %3395
  %3404 = fmul fast float %2099, 4.000000e+00
  %3405 = fmul fast float %3404, %3399
  %3406 = fmul fast float %3405, %3396
  %3407 = fmul fast float %2110, 4.000000e+00
  %3408 = fmul fast float %3407, %3400
  %3409 = fmul fast float %3408, %3397
  %3410 = fadd fast float %3403, %3386
  %3411 = fadd fast float %3406, %3387
  %3412 = fadd fast float %3409, %3388
  %3413 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3414 = call float @dx.op.unary.f32(i32 7, float %3411)  ; Saturate(value)
  %3415 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  br label %3416

; <label>:3416                                    ; preds = %3390, %3310
  %3417 = phi float [ %3413, %3390 ], [ %3386, %3310 ]
  %3418 = phi float [ %3414, %3390 ], [ %3387, %3310 ]
  %3419 = phi float [ %3415, %3390 ], [ %3388, %3310 ]
  %3420 = call float @dx.op.binary.f32(i32 35, float %3418, float %3419)  ; FMax(a,b)
  %3421 = call float @dx.op.binary.f32(i32 35, float %3417, float %3420)  ; FMax(a,b)
  %3422 = fsub fast float 1.000000e+00, %3421
  %3423 = fmul fast float %3422, %3369
  %3424 = fmul fast float %3422, %3370
  %3425 = fmul fast float %3422, %3371
  %3426 = call float @dx.op.dot3.f32(i32 55, float %2101, float %2102, float %2103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3427 = fcmp fast ogt float %3426, 0x3E7FF19E20000000
  %3428 = fdiv fast float 1.000000e+00, %3426
  %3429 = select i1 %3427, float %3428, float 0.000000e+00
  %3430 = fmul fast float %3429, %2101
  %3431 = fmul fast float %3429, %2102
  %3432 = fmul fast float %3429, %2103
  %3433 = fadd fast float %3430, -1.000000e+00
  %3434 = fadd fast float %3431, -1.000000e+00
  %3435 = fadd fast float %3432, -1.000000e+00
  %3436 = fmul fast float %3433, 5.000000e-01
  %3437 = fmul fast float %3434, 5.000000e-01
  %3438 = fmul fast float %3435, 5.000000e-01
  %3439 = fadd fast float %3436, 1.000000e+00
  %3440 = fadd fast float %3437, 1.000000e+00
  %3441 = fadd fast float %3438, 1.000000e+00
  %3442 = fmul fast float %3417, %3373
  %3443 = fmul fast float %3418, %3374
  %3444 = fmul fast float %3419, %3375
  %3445 = fsub fast float 1.000000e+00, %2112
  %3446 = bitcast float %3445 to i32
  %3447 = sitofp i32 %3446 to float
  %3448 = fmul fast float %3447, 5.000000e+00
  %3449 = fadd fast float %3448, 0xC1EFBF8940000000
  %3450 = fptosi float %3449 to i32
  %3451 = bitcast i32 %3450 to float
  %3452 = fmul fast float %3451, %1474
  %3453 = fmul fast float %3369, %3452
  %3454 = fmul fast float %3453, %3422
  %3455 = fmul fast float %3454, %3439
  %3456 = fmul fast float %3370, %3452
  %3457 = fmul fast float %3456, %3422
  %3458 = fmul fast float %3457, %3440
  %3459 = fmul fast float %3371, %3452
  %3460 = fmul fast float %3459, %3422
  %3461 = fmul fast float %3460, %3441
  %3462 = fmul fast float %3423, %1495
  %3463 = fmul fast float %3424, %1495
  %3464 = fmul fast float %3425, %1495
  %3465 = fadd fast float %3442, %1476
  %3466 = fadd fast float %3465, %3455
  %3467 = fmul fast float %3466, %1495
  %3468 = fadd fast float %3443, %1477
  %3469 = fadd fast float %3468, %3458
  %3470 = fmul fast float %3469, %1495
  %3471 = fadd fast float %3444, %1478
  %3472 = fadd fast float %3471, %3461
  %3473 = fmul fast float %3472, %1495
  %3474 = bitcast i32 %2124 to float
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 3
  %3477 = fcmp fast oeq float %3476, 0.000000e+00
  br i1 %3477, label %4541, label %3478

; <label>:3478                                    ; preds = %3416
  %3479 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3480 = extractvalue %dx.types.CBufRet.f32 %3475, 1
  %3481 = extractvalue %dx.types.CBufRet.f32 %3475, 2
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.CBufRet.f32 %3482, 1
  %3485 = extractvalue %dx.types.CBufRet.f32 %3482, 2
  %3486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3487 = extractvalue %dx.types.CBufRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.CBufRet.f32 %3486, 1
  %3489 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3490 = select i1 %228, float %3487, float %3483
  %3491 = select i1 %228, float %3489, float %3484
  %3492 = select i1 %228, float %3488, float %3485
  %3493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.f32 %3493, 2
  %3495 = fmul fast float %3494, %70
  %3496 = fmul fast float %3494, %71
  %3497 = fmul fast float %3494, %72
  %3498 = fadd fast float %3495, %137
  %3499 = fadd fast float %3496, %138
  %3500 = fadd fast float %3497, %139
  %3501 = fcmp fast olt float %3476, 0.000000e+00
  br i1 %3501, label %4123, label %3502

; <label>:3502                                    ; preds = %3478
  %3503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.f32 %3503, 0
  %3505 = extractvalue %dx.types.CBufRet.f32 %3503, 1
  %3506 = extractvalue %dx.types.CBufRet.f32 %3503, 2
  %3507 = extractvalue %dx.types.CBufRet.f32 %3503, 3
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 0
  %3510 = extractvalue %dx.types.CBufRet.f32 %3508, 1
  %3511 = extractvalue %dx.types.CBufRet.f32 %3508, 2
  %3512 = extractvalue %dx.types.CBufRet.f32 %3508, 3
  %3513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3514 = extractvalue %dx.types.CBufRet.f32 %3513, 0
  %3515 = extractvalue %dx.types.CBufRet.f32 %3513, 1
  %3516 = extractvalue %dx.types.CBufRet.f32 %3513, 2
  %3517 = extractvalue %dx.types.CBufRet.f32 %3513, 3
  %3518 = fmul fast float %3504, %3498
  %3519 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3505, float %3518)  ; FMad(a,b,c)
  %3520 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3506, float %3519)  ; FMad(a,b,c)
  %3521 = fadd fast float %3520, %3507
  %3522 = fmul fast float %3509, %3498
  %3523 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3510, float %3522)  ; FMad(a,b,c)
  %3524 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3511, float %3523)  ; FMad(a,b,c)
  %3525 = fadd fast float %3524, %3512
  %3526 = fmul fast float %3514, %3498
  %3527 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3515, float %3526)  ; FMad(a,b,c)
  %3528 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3516, float %3527)  ; FMad(a,b,c)
  %3529 = fadd fast float %3528, %3517
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 0
  %3532 = extractvalue %dx.types.CBufRet.f32 %3530, 1
  %3533 = extractvalue %dx.types.CBufRet.f32 %3530, 3
  %3534 = fmul fast float %3533, %3521
  %3535 = fmul fast float %3533, %3525
  %3536 = fadd fast float %3534, %3531
  %3537 = fadd fast float %3535, %3532
  %3538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.CBufRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.CBufRet.f32 %3538, 3
  %3542 = fmul fast float %3541, %3521
  %3543 = fmul fast float %3541, %3525
  %3544 = fadd fast float %3542, %3539
  %3545 = fadd fast float %3543, %3540
  %3546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3546, 1
  %3548 = fsub fast float %3547, %3529
  %3549 = extractvalue %dx.types.CBufRet.f32 %3546, 2
  %3550 = fmul fast float %3548, %3549
  %3551 = fsub fast float 1.000000e+00, %3550
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3538, 2
  %3554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.f32 %3554, 2
  %3556 = fadd fast float %3555, %3553
  %3557 = fcmp fast ogt float %3556, 0.000000e+00
  br i1 %3557, label %3558, label %3582

; <label>:3558                                    ; preds = %3502
  %3559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3560 = extractvalue %dx.types.CBufRet.f32 %3559, 0
  %3561 = extractvalue %dx.types.CBufRet.f32 %3559, 1
  %3562 = fsub fast float %3544, %3560
  %3563 = fsub fast float %3545, %3561
  %3564 = fcmp fast olt float %3562, 0.000000e+00
  %3565 = fcmp fast olt float %3563, 0.000000e+00
  %3566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3566, 0
  %3568 = extractvalue %dx.types.CBufRet.f32 %3566, 1
  %3569 = extractvalue %dx.types.CBufRet.f32 %3566, 2
  %3570 = extractvalue %dx.types.CBufRet.f32 %3566, 3
  %3571 = select i1 %3564, float %3567, float %3569
  %3572 = select i1 %3565, float %3568, float %3570
  %3573 = fmul fast float %3571, %3562
  %3574 = fmul fast float %3572, %3563
  %3575 = call float @dx.op.unary.f32(i32 6, float %3573)  ; FAbs(value)
  %3576 = call float @dx.op.unary.f32(i32 6, float %3574)  ; FAbs(value)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3493, 0
  %3578 = call float @dx.op.binary.f32(i32 35, float %3575, float %3576)  ; FMax(a,b)
  %3579 = fsub fast float %3577, %3578
  %3580 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3581 = fmul fast float %3580, %3552
  br label %3582

; <label>:3582                                    ; preds = %3558, %3502
  %3583 = phi float [ %3581, %3558 ], [ 0.000000e+00, %3502 ]
  %3584 = extractvalue %dx.types.CBufRet.f32 %3530, 2
  %3585 = extractvalue %dx.types.CBufRet.f32 %3554, 1
  %3586 = fadd fast float %3585, %3584
  %3587 = fcmp fast ogt float %3586, 0.000000e+00
  %3588 = extractvalue %dx.types.CBufRet.f32 %3493, 0
  br i1 %3587, label %3589, label %3612

; <label>:3589                                    ; preds = %3582
  %3590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3591 = extractvalue %dx.types.CBufRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.CBufRet.f32 %3590, 1
  %3593 = fsub fast float %3536, %3591
  %3594 = fsub fast float %3537, %3592
  %3595 = fcmp fast olt float %3593, 0.000000e+00
  %3596 = fcmp fast olt float %3594, 0.000000e+00
  %3597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3598 = extractvalue %dx.types.CBufRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.CBufRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.CBufRet.f32 %3597, 2
  %3601 = extractvalue %dx.types.CBufRet.f32 %3597, 3
  %3602 = select i1 %3595, float %3598, float %3600
  %3603 = select i1 %3596, float %3599, float %3601
  %3604 = fmul fast float %3602, %3593
  %3605 = fmul fast float %3603, %3594
  %3606 = call float @dx.op.unary.f32(i32 6, float %3604)  ; FAbs(value)
  %3607 = call float @dx.op.unary.f32(i32 6, float %3605)  ; FAbs(value)
  %3608 = call float @dx.op.binary.f32(i32 35, float %3606, float %3607)  ; FMax(a,b)
  %3609 = fsub fast float %3588, %3608
  %3610 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3611 = fmul fast float %3610, %3552
  br label %3612

; <label>:3612                                    ; preds = %3589, %3582
  %3613 = phi float [ %3611, %3589 ], [ 0.000000e+00, %3582 ]
  %3614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3615 = extractvalue %dx.types.CBufRet.f32 %3614, 1
  %3616 = call float @dx.op.unary.f32(i32 7, float %3615)  ; Saturate(value)
  %3617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3618 = extractvalue %dx.types.CBufRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.CBufRet.f32 %3617, 1
  %3620 = fsub fast float %3521, %3618
  %3621 = fsub fast float %3525, %3619
  %3622 = fcmp fast olt float %3620, 0.000000e+00
  %3623 = fcmp fast olt float %3621, 0.000000e+00
  %3624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.CBufRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.CBufRet.f32 %3624, 2
  %3628 = extractvalue %dx.types.CBufRet.f32 %3624, 3
  %3629 = select i1 %3622, float %3625, float %3627
  %3630 = select i1 %3623, float %3626, float %3628
  %3631 = fmul fast float %3629, %3620
  %3632 = fmul fast float %3630, %3621
  %3633 = call float @dx.op.unary.f32(i32 6, float %3631)  ; FAbs(value)
  %3634 = call float @dx.op.unary.f32(i32 6, float %3632)  ; FAbs(value)
  %3635 = call float @dx.op.binary.f32(i32 35, float %3633, float %3634)  ; FMax(a,b)
  %3636 = fsub fast float %3588, %3635
  %3637 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  %3638 = call float @dx.op.binary.f32(i32 36, float %3637, float %3616)  ; FMin(a,b)
  %3639 = fmul fast float %3638, %3552
  %3640 = fsub fast float %3613, %3639
  %3641 = fsub fast float %3583, %3613
  %3642 = fsub fast float %3641, %3639
  %3643 = call float @dx.op.binary.f32(i32 35, float %3613, float %3583)  ; FMax(a,b)
  %3644 = call float @dx.op.binary.f32(i32 35, float %3639, float %3643)  ; FMax(a,b)
  %3645 = fcmp fast olt float %3644, 1.000000e+00
  br i1 %3645, label %3646, label %4044, !dx.controlflow.hints !105

; <label>:3646                                    ; preds = %3612
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = fcmp fast une float %3648, 0.000000e+00
  br i1 %3649, label %3650, label %4044, !dx.controlflow.hints !106

; <label>:3650                                    ; preds = %3646
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3653 = extractvalue %dx.types.CBufRet.f32 %3651, 1
  %3654 = extractvalue %dx.types.CBufRet.f32 %3651, 2
  %3655 = extractvalue %dx.types.CBufRet.f32 %3651, 3
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 0
  %3658 = extractvalue %dx.types.CBufRet.f32 %3656, 1
  %3659 = extractvalue %dx.types.CBufRet.f32 %3656, 2
  %3660 = extractvalue %dx.types.CBufRet.f32 %3656, 3
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.CBufRet.f32 %3661, 1
  %3664 = extractvalue %dx.types.CBufRet.f32 %3661, 2
  %3665 = extractvalue %dx.types.CBufRet.f32 %3661, 3
  %3666 = fmul fast float %3652, %3498
  %3667 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3653, float %3666)  ; FMad(a,b,c)
  %3668 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3654, float %3667)  ; FMad(a,b,c)
  %3669 = fadd fast float %3668, %3655
  %3670 = fmul fast float %3657, %3498
  %3671 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3658, float %3670)  ; FMad(a,b,c)
  %3672 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3659, float %3671)  ; FMad(a,b,c)
  %3673 = fadd fast float %3672, %3660
  %3674 = fmul fast float %3662, %3498
  %3675 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3663, float %3674)  ; FMad(a,b,c)
  %3676 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3664, float %3675)  ; FMad(a,b,c)
  %3677 = fadd fast float %3676, %3665
  %3678 = fcmp fast oge float %3669, 1.000000e+00
  %3679 = fcmp fast oge float %3673, 1.000000e+00
  %3680 = or i1 %3678, %3679
  %3681 = fcmp fast olt float %3669, 0.000000e+00
  %3682 = fcmp fast olt float %3673, 0.000000e+00
  %3683 = or i1 %3681, %3682
  %3684 = or i1 %3680, %3683
  br i1 %3684, label %4044, label %3685, !dx.controlflow.hints !107

; <label>:3685                                    ; preds = %3650
  %3686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3687 = extractvalue %dx.types.CBufRet.f32 %3686, 0
  %3688 = extractvalue %dx.types.CBufRet.f32 %3686, 1
  %3689 = extractvalue %dx.types.CBufRet.f32 %3686, 2
  %3690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.i32 %3690, 2
  %3692 = uitofp i32 %3691 to float
  %3693 = extractvalue %dx.types.CBufRet.i32 %3690, 3
  %3694 = uitofp i32 %3693 to float
  %3695 = extractvalue %dx.types.CBufRet.f32 %3686, 3
  %3696 = fmul fast float %3695, 2.000000e+00
  %3697 = fsub fast float %3669, %3687
  %3698 = fsub fast float %3673, %3688
  %3699 = fmul fast float %3696, %3697
  %3700 = fmul fast float %3696, %3698
  %3701 = fdiv fast float 1.000000e+00, %3481
  %3702 = fmul fast float %3700, %3701
  %3703 = call float @dx.op.unary.f32(i32 6, float %3702)  ; FAbs(value)
  %3704 = fmul fast float %3689, %3500
  %3705 = fmul fast float %3704, %3696
  %3706 = call float @dx.op.unary.f32(i32 6, float %3705)  ; FAbs(value)
  %3707 = call float @dx.op.unary.f32(i32 6, float %3699)  ; FAbs(value)
  %3708 = call float @dx.op.binary.f32(i32 35, float %3706, float %3703)  ; FMax(a,b)
  %3709 = call float @dx.op.binary.f32(i32 35, float %3707, float %3708)  ; FMax(a,b)
  %3710 = fmul fast float %3709, 2.000000e+00
  %3711 = call float @dx.op.unary.f32(i32 23, float %3710)  ; Log(value)
  %3712 = call float @dx.op.binary.f32(i32 35, float %3711, float %3692)  ; FMax(a,b)
  %3713 = call float @dx.op.unary.f32(i32 22, float %3712)  ; Frc(value)
  %3714 = fadd fast float %3713, 0xBFEA666660000000
  %3715 = fmul fast float %3714, 8.000000e+00
  %3716 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  %3717 = call float @dx.op.unary.f32(i32 27, float %3712)  ; Round_ni(value)
  %3718 = fadd fast float %3717, %3716
  %3719 = call float @dx.op.binary.f32(i32 36, float %3718, float %3694)  ; FMin(a,b)
  %3720 = call float @dx.op.unary.f32(i32 27, float %3719)  ; Round_ni(value)
  %3721 = fsub fast float -0.000000e+00, %3720
  %3722 = call float @dx.op.unary.f32(i32 21, float %3721)  ; Exp(value)
  %3723 = fmul fast float %3722, %3696
  %3724 = fmul fast float %3723, %3669
  %3725 = fmul fast float %3723, %3673
  %3726 = fmul fast float %3724, 2.500000e-01
  %3727 = fmul fast float %3725, 2.500000e-01
  %3728 = fadd fast float %3726, 5.000000e-01
  %3729 = fadd fast float %3727, 5.000000e-01
  %3730 = fsub fast float %3694, %3692
  %3731 = fptoui float %3730 to i32
  %3732 = add i32 %3731, 320
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %3732)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3735 = extractvalue %dx.types.CBufRet.f32 %3733, 1
  %3736 = fcmp fast une float %3719, %3694
  %3737 = fsub fast float %3669, %3734
  %3738 = fsub fast float %3673, %3735
  %3739 = call float @dx.op.unary.f32(i32 6, float %3737)  ; FAbs(value)
  %3740 = call float @dx.op.unary.f32(i32 6, float %3738)  ; FAbs(value)
  %3741 = fmul fast float %3739, %3723
  %3742 = fmul fast float %3740, %3723
  %3743 = fcmp fast olt float %3741, 1.000000e+00
  %3744 = fcmp fast olt float %3742, 1.000000e+00
  %3745 = and i1 %3743, %3744
  %3746 = or i1 %3736, %3745
  br i1 %3746, label %3747, label %4044, !dx.controlflow.hints !108

; <label>:3747                                    ; preds = %3685
  %3748 = fmul fast float %3725, 5.000000e-01
  %3749 = fmul fast float %3724, 5.000000e-01
  %3750 = fadd fast float %3748, 5.000000e-01
  %3751 = fadd fast float %3749, 5.000000e-01
  %3752 = sitofp i32 %3691 to float
  %3753 = fsub fast float %3719, %3752
  %3754 = call float @dx.op.unary.f32(i32 27, float %3753)  ; Round_ni(value)
  %3755 = call float @dx.op.unary.f32(i32 22, float %3719)  ; Frc(value)
  %3756 = call float @dx.op.unary.f32(i32 22, float %3751)  ; Frc(value)
  %3757 = call float @dx.op.unary.f32(i32 22, float %3750)  ; Frc(value)
  %3758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3756, float %3757, float %3754, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = extractvalue %dx.types.ResRet.f32 %3758, 3
  %3763 = fcmp fast ogt float %3755, 0.000000e+00
  br i1 %3763, label %3764, label %3785, !dx.controlflow.hints !109

; <label>:3764                                    ; preds = %3747
  %3765 = fadd fast float %3754, 1.000000e+00
  %3766 = call float @dx.op.unary.f32(i32 22, float %3728)  ; Frc(value)
  %3767 = call float @dx.op.unary.f32(i32 22, float %3729)  ; Frc(value)
  %3768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3766, float %3767, float %3765, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3769 = extractvalue %dx.types.ResRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.ResRet.f32 %3768, 1
  %3771 = extractvalue %dx.types.ResRet.f32 %3768, 2
  %3772 = extractvalue %dx.types.ResRet.f32 %3768, 3
  %3773 = fsub fast float %3769, %3759
  %3774 = fsub fast float %3770, %3760
  %3775 = fsub fast float %3771, %3761
  %3776 = fsub fast float %3772, %3762
  %3777 = fmul fast float %3773, %3755
  %3778 = fmul fast float %3774, %3755
  %3779 = fmul fast float %3775, %3755
  %3780 = fmul fast float %3776, %3755
  %3781 = fadd fast float %3777, %3759
  %3782 = fadd fast float %3778, %3760
  %3783 = fadd fast float %3779, %3761
  %3784 = fadd fast float %3780, %3762
  br label %3785

; <label>:3785                                    ; preds = %3764, %3747
  %3786 = phi float [ %3781, %3764 ], [ %3759, %3747 ]
  %3787 = phi float [ %3782, %3764 ], [ %3760, %3747 ]
  %3788 = phi float [ %3783, %3764 ], [ %3761, %3747 ]
  %3789 = phi float [ %3784, %3764 ], [ %3762, %3747 ]
  %3790 = fadd fast float %3786, -5.000000e-01
  %3791 = fadd fast float %3788, -5.000000e-01
  %3792 = fmul fast float %3790, 0xBFD5555560000000
  %3793 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3791, float %3792)  ; FMad(a,b,c)
  %3794 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3787, float 0.000000e+00)  ; FMad(a,b,c)
  %3795 = fadd fast float %3794, %3789
  %3796 = fmul fast float %3790, -7.500000e-01
  %3797 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3791, float %3796)  ; FMad(a,b,c)
  %3798 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3787, float 0.000000e+00)  ; FMad(a,b,c)
  %3799 = fadd fast float %3798, %3789
  %3800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3801 = extractvalue %dx.types.CBufRet.f32 %3800, 0
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3804 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3805 = extractvalue %dx.types.CBufRet.f32 %3802, 2
  %3806 = extractvalue %dx.types.CBufRet.f32 %3802, 3
  %3807 = fsub fast float %3803, %3793
  %3808 = fsub fast float %3804, %3795
  %3809 = fsub fast float %3805, %3797
  %3810 = fsub fast float %3806, %3799
  %3811 = fmul fast float %3807, %3801
  %3812 = fmul fast float %3808, %3801
  %3813 = fmul fast float %3809, %3801
  %3814 = fmul fast float %3810, %3801
  %3815 = fadd fast float %3811, %3793
  %3816 = fadd fast float %3812, %3795
  %3817 = fadd fast float %3813, %3797
  %3818 = fadd fast float %3814, %3799
  %3819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.i32 %3819, 0
  %3821 = and i32 %3820, 536870911
  %3822 = uitofp i32 %3821 to float
  %3823 = fmul fast float %3822, %3669
  %3824 = fmul fast float %3822, %3673
  %3825 = fptoui float %3823 to i32
  %3826 = fptoui float %3824 to i32
  %3827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.i32 %3827, 0
  %3829 = and i32 %3828, 31
  %3830 = lshr i32 %3825, %3829
  %3831 = lshr i32 %3826, %3829
  %3832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.i32 %3832, 0
  %3834 = and i32 %3833, 31
  %3835 = shl i32 1, %3834
  %3836 = call i32 @dx.op.binary.i32(i32 40, i32 %3835, i32 4)  ; UMin(a,b)
  %3837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.i32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.i32 %3837, 1
  %3840 = icmp eq i32 %3836, 0
  br i1 %3840, label %3882, label %3841

; <label>:3841                                    ; preds = %3785
  br label %3842

; <label>:3842                                    ; preds = %3870, %3841
  %3843 = phi i32 [ %3873, %3870 ], [ 0, %3841 ]
  %3844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.i32 %3844, 0
  %3846 = lshr i32 %3845, 16
  %3847 = and i32 %3846, 31
  %3848 = shl i32 %3831, %3847
  %3849 = add i32 %3848, %3830
  %3850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.i32 %3850, 0
  %3852 = and i32 %3851, 31
  %3853 = shl i32 %3849, %3852
  %3854 = add i32 %3853, %3843
  %3855 = shl i32 %3854, 2
  %3856 = add i32 %3855, 32
  %3857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.i32 %3857, 0
  %3859 = icmp slt i32 %3858, 0
  %3860 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %3843
  %3861 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3843
  %3862 = bitcast float* %3860 to i32*
  %3863 = bitcast float* %3861 to i32*
  br i1 %3859, label %3864, label %3870

; <label>:3864                                    ; preds = %3842
  %3865 = and i32 %3858, 1073741823
  %3866 = add nuw nsw i32 %3865, 20
  %3867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.i32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.i32 %3867, 1
  br label %3870

; <label>:3870                                    ; preds = %3864, %3842
  %3871 = phi i32 [ %3868, %3864 ], [ %3838, %3842 ]
  %3872 = phi i32 [ %3869, %3864 ], [ %3839, %3842 ]
  store i32 %3871, i32* %3862, align 4
  store i32 %3872, i32* %3863, align 4
  %3873 = add nuw i32 %3843, 1
  %3874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3875 = extractvalue %dx.types.CBufRet.i32 %3874, 2
  %3876 = icmp eq i32 %3875, 0
  %3877 = icmp ugt i32 %3858, -1073741825
  %3878 = and i1 %3877, %3876
  %3879 = icmp ult i32 %3873, %3836
  %3880 = and i1 %3878, %3879
  br i1 %3880, label %3842, label %3881

; <label>:3881                                    ; preds = %3870
  br label %3882

; <label>:3882                                    ; preds = %3881, %3785
  %3883 = phi i32 [ 0, %3785 ], [ %3873, %3881 ]
  %3884 = extractvalue %dx.types.CBufRet.f32 %3647, 2
  %3885 = fptoui float %3884 to i32
  %3886 = icmp eq i32 %3885, 0
  br i1 %3886, label %3938, label %3887

; <label>:3887                                    ; preds = %3882
  br label %3888

; <label>:3888                                    ; preds = %3933, %3887
  %3889 = phi i32 [ %3934, %3933 ], [ %3883, %3887 ]
  %3890 = phi i32 [ %3935, %3933 ], [ 0, %3887 ]
  %3891 = lshr i32 %3890, 2
  %3892 = and i32 %3890, 3
  %3893 = add nuw nsw i32 %3891, 83
  %3894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %3893)  ; CBufferLoadLegacy(handle,regIndex)
  %3895 = extractvalue %dx.types.CBufRet.i32 %3894, 0
  %3896 = extractvalue %dx.types.CBufRet.i32 %3894, 1
  %3897 = extractvalue %dx.types.CBufRet.i32 %3894, 2
  %3898 = extractvalue %dx.types.CBufRet.i32 %3894, 3
  %3899 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %3895, i32* %3899, align 4
  %3900 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %3896, i32* %3900, align 4
  %3901 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %3897, i32* %3901, align 4
  %3902 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %3898, i32* %3902, align 4
  %3903 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %3892
  %3904 = load i32, i32* %3903, align 4, !tbaa !110, !noalias !114
  %3905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3906 = extractvalue %dx.types.ResRet.i32 %3905, 0
  %3907 = lshr i32 %3906, 16
  %3908 = and i32 %3907, 31
  %3909 = shl i32 %3831, %3908
  %3910 = add i32 %3909, %3830
  %3911 = shl i32 %3910, 2
  %3912 = add i32 %3911, %3904
  %3913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.i32 %3913, 0
  %3915 = icmp eq i32 %3914, 0
  br i1 %3915, label %3933, label %3916

; <label>:3916                                    ; preds = %3888
  %3917 = icmp slt i32 %3914, 0
  %3918 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %3889
  %3919 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3889
  %3920 = bitcast float* %3918 to i32*
  %3921 = bitcast float* %3919 to i32*
  br i1 %3917, label %3922, label %3929

; <label>:3922                                    ; preds = %3916
  %3923 = and i32 %3914, 1073741823
  %3924 = add i32 %3904, 20
  %3925 = add i32 %3924, %3923
  %3926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.i32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.i32 %3926, 1
  br label %3929

; <label>:3929                                    ; preds = %3922, %3916
  %3930 = phi i32 [ %3927, %3922 ], [ %3838, %3916 ]
  %3931 = phi i32 [ %3928, %3922 ], [ %3839, %3916 ]
  store i32 %3930, i32* %3920, align 4
  store i32 %3931, i32* %3921, align 4
  %3932 = add i32 %3889, 1
  br label %3933

; <label>:3933                                    ; preds = %3929, %3888
  %3934 = phi i32 [ %3889, %3888 ], [ %3932, %3929 ]
  %3935 = add nuw i32 %3890, 1
  %3936 = icmp eq i32 %3935, %3885
  br i1 %3936, label %3937, label %3888

; <label>:3937                                    ; preds = %3933
  br label %3938

; <label>:3938                                    ; preds = %3937, %3882
  %3939 = phi i32 [ %3883, %3882 ], [ %3934, %3937 ]
  %3940 = icmp eq i32 %3939, 1
  %3941 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  %3942 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  br i1 %3940, label %3943, label %3946

; <label>:3943                                    ; preds = %3938
  %3944 = load float, float* %3941, align 4
  %3945 = load float, float* %3942, align 4
  br label %3973

; <label>:3946                                    ; preds = %3938
  %3947 = load float, float* %3941, align 4
  %3948 = load float, float* %3942, align 4
  %3949 = fdiv fast float 1.000000e+00, %3948
  %3950 = fsub fast float %3947, %3949
  %3951 = icmp ugt i32 %3939, 1
  br i1 %3951, label %3952, label %3968

; <label>:3952                                    ; preds = %3946
  br label %3953

; <label>:3953                                    ; preds = %3953, %3952
  %3954 = phi float [ %3963, %3953 ], [ %3950, %3952 ]
  %3955 = phi float [ %3964, %3953 ], [ %3947, %3952 ]
  %3956 = phi i32 [ %3965, %3953 ], [ 1, %3952 ]
  %3957 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %3956
  %3958 = load float, float* %3957, align 4
  %3959 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3956
  %3960 = load float, float* %3959, align 4
  %3961 = fdiv fast float 1.000000e+00, %3960
  %3962 = fsub fast float %3958, %3961
  %3963 = call float @dx.op.binary.f32(i32 36, float %3954, float %3962)  ; FMin(a,b)
  %3964 = call float @dx.op.binary.f32(i32 35, float %3955, float %3958)  ; FMax(a,b)
  %3965 = add nuw i32 %3956, 1
  %3966 = icmp eq i32 %3965, %3939
  br i1 %3966, label %3967, label %3953

; <label>:3967                                    ; preds = %3953
  br label %3968

; <label>:3968                                    ; preds = %3967, %3946
  %3969 = phi float [ %3950, %3946 ], [ %3963, %3967 ]
  %3970 = phi float [ %3947, %3946 ], [ %3964, %3967 ]
  %3971 = fsub fast float %3970, %3969
  %3972 = fdiv fast float 1.000000e+00, %3971
  br label %3973

; <label>:3973                                    ; preds = %3968, %3943
  %3974 = phi float [ %3944, %3943 ], [ %3970, %3968 ]
  %3975 = phi float [ %3945, %3943 ], [ %3972, %3968 ]
  %3976 = fadd fast float %3677, %3974
  %3977 = fmul fast float %3976, %3975
  %3978 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  %3979 = fmul fast float %3978, 2.000000e+00
  %3980 = fsub fast float 1.000000e+00, %3979
  %3981 = fmul fast float %3815, %3815
  %3982 = fsub fast float %3816, %3981
  %3983 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3982)  ; FMax(a,b)
  %3984 = fdiv fast float 1.000000e+00, %3983
  %3985 = fmul fast float %3816, %3815
  %3986 = fsub fast float %3817, %3985
  %3987 = fsub fast float %3980, %3815
  %3988 = fmul fast float %3980, %3980
  %3989 = fsub fast float %3988, %3816
  %3990 = fmul fast float %3984, %3986
  %3991 = fmul fast float %3990, %3987
  %3992 = fsub fast float %3989, %3991
  %3993 = fmul fast float %3816, %3816
  %3994 = fsub fast float %3818, %3993
  %3995 = fmul fast float %3986, %3986
  %3996 = fmul fast float %3995, %3984
  %3997 = fsub fast float %3994, %3996
  %3998 = fdiv fast float %3992, %3997
  %3999 = fmul fast float %3998, %3986
  %4000 = fsub fast float %3987, %3999
  %4001 = fmul fast float %4000, %3984
  %4002 = fmul fast float %4001, %3815
  %4003 = fsub fast float 1.000000e+00, %4002
  %4004 = fmul fast float %3998, %3816
  %4005 = fsub fast float %4003, %4004
  %4006 = fmul fast float %4001, %4001
  %4007 = fmul fast float %3998, 4.000000e+00
  %4008 = fmul fast float %4007, %4005
  %4009 = fsub fast float %4006, %4008
  %4010 = call float @dx.op.unary.f32(i32 24, float %4009)  ; Sqrt(value)
  %4011 = fcmp fast oge float %4001, 0.000000e+00
  %4012 = fsub fast float -0.000000e+00, %4010
  %4013 = select i1 %4011, float %4012, float %4010
  %4014 = fsub fast float %4013, %4001
  %4015 = fdiv fast float %4014, %3998
  %4016 = fdiv fast float %4005, %4014
  %4017 = fmul fast float %4015, 5.000000e-01
  %4018 = fmul fast float %4016, 2.000000e+00
  %4019 = select i1 %4011, float %4017, float %4018
  %4020 = select i1 %4011, float %4018, float %4017
  %4021 = call float @dx.op.binary.f32(i32 35, float %4019, float %4020)  ; FMax(a,b)
  %4022 = call float @dx.op.binary.f32(i32 36, float %4019, float %4020)  ; FMin(a,b)
  %4023 = fcmp fast ogt float %3980, %4021
  %4024 = fsub fast float %3980, %4022
  %4025 = fsub fast float %3980, %4021
  %4026 = fsub fast float %4021, %4022
  %4027 = select i1 %4023, float %4025, float %4026
  %4028 = fmul float %4024, %4027
  %4029 = select i1 %4023, float %4022, float %3980
  %4030 = fcmp fast ogt float %3980, %4022
  %4031 = fmul fast float %4029, %4021
  %4032 = fadd fast float %4029, %4021
  %4033 = fmul fast float %4032, %3815
  %4034 = fadd fast float %4031, %3816
  %4035 = fsub fast float %4034, %4033
  %4036 = fdiv fast float %4035, %4028
  %4037 = select i1 %4030, float %4036, float 0.000000e+00
  %4038 = fsub fast float 1.000000e+00, %4037
  %4039 = select i1 %4023, float %4038, float %4037
  %4040 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4041 = extractvalue %dx.types.CBufRet.f32 %3800, 3
  %4042 = fmul fast float %4041, %4040
  %4043 = fsub fast float 1.000000e+00, %4042
  br label %4044

; <label>:4044                                    ; preds = %3973, %3685, %3650, %3646, %3612
  %4045 = phi float [ 1.000000e+00, %3612 ], [ %4043, %3973 ], [ 1.000000e+00, %3650 ], [ 1.000000e+00, %3685 ], [ 1.000000e+00, %3646 ]
  %4046 = fcmp fast ogt float %3642, 0.000000e+00
  br i1 %4046, label %4047, label %4053, !dx.controlflow.hints !123

; <label>:4047                                    ; preds = %4044
  %4048 = fadd fast float %3555, %3529
  %4049 = call float @dx.op.binary.f32(i32 35, float %4048, float 0.000000e+00)  ; FMax(a,b)
  %4050 = fadd fast float %4049, 0x3F10000000000000
  %4051 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3544, float %3545, float undef, float undef, i32 0, i32 0, i32 undef, float %4050)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  br label %4053

; <label>:4053                                    ; preds = %4047, %4044
  %4054 = phi float [ %4052, %4047 ], [ 1.000000e+00, %4044 ]
  %4055 = fcmp fast ogt float %3640, 0.000000e+00
  br i1 %4055, label %4056, label %4062, !dx.controlflow.hints !124

; <label>:4056                                    ; preds = %4053
  %4057 = fadd fast float %3585, %3529
  %4058 = call float @dx.op.binary.f32(i32 35, float %4057, float 0.000000e+00)  ; FMax(a,b)
  %4059 = fadd fast float %4058, 0x3F10000000000000
  %4060 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3536, float %3537, float undef, float undef, i32 0, i32 0, i32 undef, float %4059)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4061 = extractvalue %dx.types.ResRet.f32 %4060, 0
  br label %4062

; <label>:4062                                    ; preds = %4056, %4053
  %4063 = phi float [ %4061, %4056 ], [ 1.000000e+00, %4053 ]
  %4064 = fcmp fast ogt float %3639, 0.000000e+00
  br i1 %4064, label %4065, label %4072, !dx.controlflow.hints !125

; <label>:4065                                    ; preds = %4062
  %4066 = extractvalue %dx.types.CBufRet.f32 %3554, 0
  %4067 = fadd fast float %4066, %3529
  %4068 = call float @dx.op.binary.f32(i32 35, float %4067, float 0.000000e+00)  ; FMax(a,b)
  %4069 = fadd fast float %4068, 0x3F10000000000000
  %4070 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3521, float %3525, float undef, float undef, i32 0, i32 0, i32 undef, float %4069)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4071 = extractvalue %dx.types.ResRet.f32 %4070, 0
  br label %4072

; <label>:4072                                    ; preds = %4065, %4062
  %4073 = phi float [ %4071, %4065 ], [ 1.000000e+00, %4062 ]
  %4074 = fsub fast float %4054, %4045
  %4075 = fmul fast float %4074, %3583
  %4076 = fadd fast float %4075, %4045
  %4077 = fsub fast float %4063, %4076
  %4078 = fmul fast float %4077, %3613
  %4079 = fadd fast float %4078, %4076
  %4080 = fsub fast float %4073, %4079
  %4081 = fmul fast float %4080, %3639
  %4082 = fadd fast float %4081, %4079
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 2
  %4085 = fcmp fast ogt float %4084, 0.000000e+00
  br i1 %4085, label %4086, label %4123, !dx.controlflow.hints !126

; <label>:4086                                    ; preds = %4072
  %4087 = fcmp fast ugt float %4084, 0.000000e+00
  br i1 %4087, label %4088, label %4120

; <label>:4088                                    ; preds = %4086
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4092 = extractvalue %dx.types.CBufRet.f32 %4089, 2
  %4093 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 0
  %4096 = extractvalue %dx.types.CBufRet.f32 %4094, 1
  %4097 = extractvalue %dx.types.CBufRet.f32 %4094, 2
  %4098 = extractvalue %dx.types.CBufRet.f32 %4094, 3
  %4099 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4100 = extractvalue %dx.types.CBufRet.f32 %4083, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %2125, 2
  %4102 = fadd fast float %2126, %3498
  %4103 = fadd fast float %2127, %3499
  %4104 = fadd fast float %4101, %3500
  %4105 = fmul fast float %4102, %4090
  %4106 = call float @dx.op.tertiary.f32(i32 46, float %4091, float %4103, float %4105)  ; FMad(a,b,c)
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4104, float %4106)  ; FMad(a,b,c)
  %4108 = fadd fast float %4107, %4093
  %4109 = fmul fast float %4102, %4095
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4096, float %4103, float %4109)  ; FMad(a,b,c)
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4097, float %4104, float %4110)  ; FMad(a,b,c)
  %4112 = fadd fast float %4111, %4098
  %4113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4108, float %4112, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = fmul fast float %4114, %4100
  %4116 = fadd fast float %4115, %4099
  %4117 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4118 = fmul fast float %4117, %4084
  %4119 = fsub fast float 1.000000e+00, %4118
  br label %4120

; <label>:4120                                    ; preds = %4088, %4086
  %4121 = phi float [ %4119, %4088 ], [ 1.000000e+00, %4086 ]
  %4122 = fmul fast float %4121, %4082
  br label %4123

; <label>:4123                                    ; preds = %4120, %4072, %3478
  %4124 = phi float [ 1.000000e+00, %3478 ], [ %4122, %4120 ], [ %4082, %4072 ]
  %4125 = call float @dx.op.binary.f32(i32 36, float %4124, float %4124)  ; FMin(a,b)
  %4126 = call float @dx.op.binary.f32(i32 36, float %4124, float %4125)  ; FMin(a,b)
  %4127 = fcmp fast ogt float %4126, 0.000000e+00
  br i1 %4127, label %4128, label %4285, !dx.controlflow.hints !127

; <label>:4128                                    ; preds = %4123
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.CBufRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4133 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.CBufRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.CBufRet.f32 %4134, 2
  %4138 = extractvalue %dx.types.CBufRet.f32 %4134, 3
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.CBufRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.CBufRet.f32 %4139, 2
  %4143 = extractvalue %dx.types.CBufRet.f32 %4139, 3
  %4144 = fmul fast float %4130, %3498
  %4145 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %4131, float %4144)  ; FMad(a,b,c)
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %4132, float %4145)  ; FMad(a,b,c)
  %4147 = fadd fast float %4146, %4133
  %4148 = fmul fast float %4135, %3498
  %4149 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %4136, float %4148)  ; FMad(a,b,c)
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %4137, float %4149)  ; FMad(a,b,c)
  %4151 = fadd fast float %4150, %4138
  %4152 = fmul fast float %4140, %3498
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %4141, float %4152)  ; FMad(a,b,c)
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %4142, float %4153)  ; FMad(a,b,c)
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4159 = fmul fast float %4158, %4147
  %4160 = fmul fast float %4158, %4151
  %4161 = fadd fast float %4159, %4156
  %4162 = fadd fast float %4160, %4157
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4166 = fsub fast float %4161, %4164
  %4167 = fsub fast float %4162, %4165
  %4168 = fcmp fast olt float %4166, 0.000000e+00
  %4169 = fcmp fast olt float %4167, 0.000000e+00
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.CBufRet.f32 %4170, 1
  %4173 = extractvalue %dx.types.CBufRet.f32 %4170, 2
  %4174 = extractvalue %dx.types.CBufRet.f32 %4170, 3
  %4175 = select i1 %4168, float %4171, float %4173
  %4176 = select i1 %4169, float %4172, float %4174
  %4177 = fmul fast float %4175, %4166
  %4178 = fmul fast float %4176, %4167
  %4179 = call float @dx.op.unary.f32(i32 6, float %4177)  ; FAbs(value)
  %4180 = call float @dx.op.unary.f32(i32 6, float %4178)  ; FAbs(value)
  %4181 = extractvalue %dx.types.CBufRet.f32 %3493, 0
  %4182 = call float @dx.op.binary.f32(i32 35, float %4179, float %4180)  ; FMax(a,b)
  %4183 = fsub fast float %4181, %4182
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = fcmp fast ogt float %4184, 0.000000e+00
  br i1 %4185, label %4186, label %4227, !dx.controlflow.hints !128

; <label>:4186                                    ; preds = %4128
  %4187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4161, float %4162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 1
  %4189 = fcmp fast ogt float %4188, 0.000000e+00
  br i1 %4189, label %4190, label %4222

; <label>:4190                                    ; preds = %4186
  %4191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4161, float %4162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.ResRet.f32 %4191, 1
  %4194 = extractvalue %dx.types.ResRet.f32 %4191, 2
  %4195 = extractvalue %dx.types.ResRet.f32 %4191, 3
  %4196 = fsub fast float 1.000000e+00, %4143
  %4197 = fsub fast float %4196, %4154
  %4198 = fmul fast float %4197, 0x400921FB60000000
  %4199 = fadd fast float %4198, 0x3FF921FB60000000
  %4200 = call float @dx.op.unary.f32(i32 13, float %4199)  ; Sin(value)
  %4201 = fadd fast float %4200, -1.000000e+00
  %4202 = fmul fast float %4201, 0x3FD45F3060000000
  %4203 = fmul fast float %4197, 0x401921FB60000000
  %4204 = fadd fast float %4203, 0x400921FB60000000
  %4205 = call float @dx.op.unary.f32(i32 13, float %4204)  ; Sin(value)
  %4206 = fadd fast float %4205, 0x3E7777A5C0000000
  %4207 = fmul fast float %4206, 0x3FC45F3060000000
  %4208 = fmul fast float %4197, 0x4022D97C80000000
  %4209 = fadd fast float %4208, 0x4012D97C80000000
  %4210 = call float @dx.op.unary.f32(i32 13, float %4209)  ; Sin(value)
  %4211 = fadd fast float %4210, 1.000000e+00
  %4212 = fmul fast float %4211, 0x3FBB2995E0000000
  %4213 = fmul fast float %4197, 0x402921FB60000000
  %4214 = fadd fast float %4213, 0x401921FB60000000
  %4215 = call float @dx.op.unary.f32(i32 13, float %4214)  ; Sin(value)
  %4216 = fadd fast float %4215, 0xBE8777A5C0000000
  %4217 = fmul fast float %4216, 0x3FB45F3060000000
  %4218 = call float @dx.op.dot4.f32(i32 56, float %4192, float %4193, float %4194, float %4195, float %4202, float %4207, float %4212, float %4217)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4219 = fmul fast float %4218, 0xBFF7154760000000
  %4220 = call float @dx.op.unary.f32(i32 21, float %4219)  ; Exp(value)
  %4221 = call float @dx.op.unary.f32(i32 7, float %4220)  ; Saturate(value)
  br label %4222

; <label>:4222                                    ; preds = %4190, %4186
  %4223 = phi float [ %4221, %4190 ], [ 1.000000e+00, %4186 ]
  %4224 = fadd fast float %4223, -1.000000e+00
  %4225 = fmul fast float %4224, %4184
  %4226 = fadd fast float %4225, 1.000000e+00
  br label %4227

; <label>:4227                                    ; preds = %4222, %4128
  %4228 = phi float [ %4226, %4222 ], [ 1.000000e+00, %4128 ]
  %4229 = fmul fast float %4228, %4124
  %4230 = extractvalue %dx.types.CBufRet.f32 %2125, 2
  %4231 = fadd fast float %2126, %137
  %4232 = fadd fast float %2127, %138
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 1
  %4235 = fsub fast float -0.000000e+00, %4231
  %4236 = fsub fast float -0.000000e+00, %4232
  %4237 = fsub fast float %2109, %4230
  %4238 = fadd fast float %4237, %4234
  %4239 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4235, float %4236, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3479, float %3480, float %3481)  ; Dot3(ax,ay,az,bx,by,bz)
  %4241 = fdiv fast float 1.000000e+00, %4240
  %4242 = fmul fast float %4241, %4239
  %4243 = fmul fast float %3479, %4242
  %4244 = fmul fast float %3480, %4242
  %4245 = fadd fast float %4243, %4231
  %4246 = fadd fast float %4244, %4232
  %4247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.CBufRet.f32 %4247, 1
  %4250 = fsub fast float %4245, %4248
  %4251 = fsub fast float %4246, %4249
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 2
  %4254 = extractvalue %dx.types.CBufRet.f32 %4252, 3
  %4255 = fmul fast float %4250, %4253
  %4256 = fmul fast float %4251, %4254
  %4257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.i32 %4257, 3
  %4259 = icmp eq i32 %4258, 0
  br i1 %4259, label %4265, label %4260

; <label>:4260                                    ; preds = %4227
  %4261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4255, float %4256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4262 = extractvalue %dx.types.ResRet.f32 %4261, 0
  %4263 = extractvalue %dx.types.ResRet.f32 %4261, 1
  %4264 = extractvalue %dx.types.ResRet.f32 %4261, 2
  br label %4270

; <label>:4265                                    ; preds = %4227
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4255, float %4256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.ResRet.f32 %4266, 1
  %4269 = extractvalue %dx.types.ResRet.f32 %4266, 2
  br label %4270

; <label>:4270                                    ; preds = %4265, %4260
  %4271 = phi float [ %4262, %4260 ], [ %4267, %4265 ]
  %4272 = phi float [ %4263, %4260 ], [ %4268, %4265 ]
  %4273 = phi float [ %4264, %4260 ], [ %4269, %4265 ]
  %4274 = extractvalue %dx.types.CBufRet.f32 %4233, 2
  %4275 = fmul fast float %4274, %4271
  %4276 = extractvalue %dx.types.CBufRet.f32 %4233, 0
  %4277 = fsub fast float %4242, %4276
  %4278 = fsub fast float %4277, %4275
  %4279 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4278)  ; FMax(a,b)
  %4280 = fmul fast float %4279, %4272
  %4281 = call float @dx.op.binary.f32(i32 36, float %4273, float %4280)  ; FMin(a,b)
  %4282 = fmul fast float %4281, 0xBFF7154760000000
  %4283 = call float @dx.op.unary.f32(i32 21, float %4282)  ; Exp(value)
  %4284 = fmul fast float %4229, %4283
  br label %4285

; <label>:4285                                    ; preds = %4270, %4123
  %4286 = phi float [ %4284, %4270 ], [ %4124, %4123 ]
  %4287 = call float @dx.op.binary.f32(i32 36, float %4286, float %4286)  ; FMin(a,b)
  %4288 = call float @dx.op.binary.f32(i32 36, float %4286, float %4287)  ; FMin(a,b)
  %4289 = fcmp fast ogt float %4288, 0.000000e+00
  br i1 %4289, label %4290, label %4541, !dx.controlflow.hints !129

; <label>:4290                                    ; preds = %4285
  %4291 = fmul fast float %4286, %3490
  %4292 = fmul fast float %4286, %3491
  %4293 = fmul fast float %4286, %3492
  %4294 = fsub fast float %139, %1897
  %4295 = fcmp fast ogt float %4294, 0.000000e+00
  %4296 = fmul fast float %3479, 5.120000e+02
  %4297 = fmul fast float %3480, 5.120000e+02
  %4298 = fmul fast float %3481, 5.120000e+02
  %4299 = fadd fast float %4298, %139
  %4300 = fsub fast float %1897, %4299
  %4301 = fmul fast float %4300, 2.000000e+00
  %4302 = fadd fast float %4301, %4299
  %4303 = select i1 %4295, float %4302, float %4299
  %4304 = fsub fast float %4303, %139
  %4305 = call float @dx.op.dot3.f32(i32 55, float %4296, float %4297, float %4304, float %4296, float %4297, float %4304)  ; Dot3(ax,ay,az,bx,by,bz)
  %4306 = call float @dx.op.unary.f32(i32 25, float %4305)  ; Rsqrt(value)
  %4307 = fmul fast float %4306, %4296
  %4308 = fmul fast float %4306, %4297
  %4309 = fmul fast float %4306, %4304
  %4310 = fsub fast float %1897, %139
  %4311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4310)  ; Dot3(ax,ay,az,bx,by,bz)
  %4312 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4307, float %4308, float %4309)  ; Dot3(ax,ay,az,bx,by,bz)
  %4313 = fdiv fast float 1.000000e+00, %4312
  %4314 = fmul fast float %4313, %4311
  %4315 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4294, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4316 = fcmp fast ogt float %4315, 0.000000e+00
  %4317 = fcmp fast olt float %4315, 0.000000e+00
  %4318 = zext i1 %4316 to i32
  %4319 = zext i1 %4317 to i32
  %4320 = sub nsw i32 %4318, %4319
  %4321 = sitofp i32 %4320 to float
  %4322 = fsub fast float %4303, %1897
  %4323 = call float @dx.op.dot3.f32(i32 55, float %4296, float %4297, float %4322, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4324 = fcmp fast ogt float %4323, 0.000000e+00
  %4325 = fcmp fast olt float %4323, 0.000000e+00
  %4326 = zext i1 %4324 to i32
  %4327 = zext i1 %4325 to i32
  %4328 = sub nsw i32 %4326, %4327
  %4329 = sitofp i32 %4328 to float
  %4330 = fcmp fast une float %4321, %4329
  br i1 %4330, label %4331, label %4341

; <label>:4331                                    ; preds = %4290
  %4332 = fmul fast float %4314, %4309
  %4333 = fmul fast float %4314, %4308
  %4334 = fmul fast float %4314, %4307
  %4335 = fmul fast float %4334, %4334
  %4336 = fmul fast float %4333, %4333
  %4337 = fadd fast float %4335, %4336
  %4338 = fmul fast float %4332, %4332
  %4339 = fadd fast float %4337, %4338
  %4340 = call float @dx.op.unary.f32(i32 24, float %4339)  ; Sqrt(value)
  br label %4351

; <label>:4341                                    ; preds = %4290
  %4342 = icmp slt i32 %4320, 0
  br i1 %4342, label %4343, label %4351

; <label>:4343                                    ; preds = %4341
  %4344 = fsub fast float %139, %4303
  %4345 = fmul fast float %4296, %4296
  %4346 = fmul fast float %4297, %4297
  %4347 = fadd fast float %4345, %4346
  %4348 = fmul fast float %4344, %4344
  %4349 = fadd fast float %4347, %4348
  %4350 = call float @dx.op.unary.f32(i32 24, float %4349)  ; Sqrt(value)
  br label %4351

; <label>:4351                                    ; preds = %4343, %4341, %4331
  %4352 = phi float [ %4340, %4331 ], [ %4350, %4343 ], [ 0.000000e+00, %4341 ]
  %4353 = fsub fast float -0.000000e+00, %4352
  %4354 = select i1 %4295, float -0.000000e+00, float %4353
  %4355 = fmul fast float %1898, 0x3FF7154760000000
  %4356 = fmul fast float %4355, %4354
  %4357 = fmul fast float %1899, 0x3FF7154760000000
  %4358 = fmul fast float %4357, %4354
  %4359 = fmul fast float %1900, 0x3FF7154760000000
  %4360 = fmul fast float %4359, %4354
  %4361 = call float @dx.op.unary.f32(i32 21, float %4356)  ; Exp(value)
  %4362 = call float @dx.op.unary.f32(i32 21, float %4358)  ; Exp(value)
  %4363 = call float @dx.op.unary.f32(i32 21, float %4360)  ; Exp(value)
  %4364 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4365 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  %4366 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4367 = fmul fast float %4291, %4364
  %4368 = fmul fast float %4292, %4365
  %4369 = fmul fast float %4293, %4366
  %4370 = fsub fast float %3479, %2097
  %4371 = fsub fast float %3480, %2096
  %4372 = fsub fast float %3481, %2095
  %4373 = call float @dx.op.dot3.f32(i32 55, float %4370, float %4371, float %4372, float %4370, float %4371, float %4372)  ; Dot3(ax,ay,az,bx,by,bz)
  %4374 = call float @dx.op.unary.f32(i32 25, float %4373)  ; Rsqrt(value)
  %4375 = fmul fast float %4374, %4370
  %4376 = fmul fast float %4374, %4371
  %4377 = fmul fast float %4374, %4372
  %4378 = call float @dx.op.dot3.f32(i32 55, float %3479, float %3480, float %3481, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4379 = call float @dx.op.dot3.f32(i32 55, float %2094, float %2093, float %2092, float %4375, float %4376, float %4377)  ; Dot3(ax,ay,az,bx,by,bz)
  %4380 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4381 = fmul fast float %4380, %4380
  %4382 = fmul fast float %4381, %3474
  %4383 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4384 = fmul fast float %4383, %4380
  %4385 = call float @dx.op.dot3.f32(i32 55, float %2104, float %2105, float %2106, float %4375, float %4376, float %4377)  ; Dot3(ax,ay,az,bx,by,bz)
  %4386 = fmul fast float %4385, %4385
  %4387 = call float @dx.op.unary.f32(i32 6, float %4378)  ; FAbs(value)
  %4388 = fsub fast float 1.000000e+00, %2107
  %4389 = call float @dx.op.binary.f32(i32 35, float %4388, float 0x3F847AE140000000)  ; FMax(a,b)
  %4390 = fmul fast float %4389, %4389
  %4391 = fmul fast float %4390, %4390
  %4392 = fsub fast float 1.000000e+00, %4391
  %4393 = fmul fast float %2112, %2112
  %4394 = fmul fast float %4393, %4392
  %4395 = fadd fast float %4394, %4391
  %4396 = bitcast float %4395 to i32
  %4397 = ashr i32 %4396, 1
  %4398 = add nsw i32 %4397, 532487669
  %4399 = bitcast i32 %4398 to float
  %4400 = fadd fast float %4399, %2112
  %4401 = fmul fast float %4391, %4386
  %4402 = fsub fast float 1.000000e+00, %4386
  %4403 = fadd fast float %4402, %4401
  %4404 = fmul fast float %4387, %4387
  %4405 = fmul fast float %4404, %4392
  %4406 = fadd fast float %4405, %4391
  %4407 = bitcast float %4406 to i32
  %4408 = ashr i32 %4407, 1
  %4409 = add nsw i32 %4408, 532487669
  %4410 = bitcast i32 %4409 to float
  %4411 = fadd fast float %4410, %4387
  %4412 = fmul fast float %4403, %4403
  %4413 = fmul fast float %4412, %4400
  %4414 = fmul fast float %4413, %4411
  %4415 = fdiv fast float 0x3FF0A00000000000, %4414
  %4416 = fmul fast float %4415, %4391
  %4417 = call float @dx.op.unary.f32(i32 6, float %4379)  ; FAbs(value)
  %4418 = fsub fast float 1.000000e+00, %4417
  %4419 = bitcast float %4418 to i32
  %4420 = sitofp i32 %4419 to float
  %4421 = fmul fast float %4420, 5.000000e+00
  %4422 = fadd fast float %4421, 0xC1EFBF8940000000
  %4423 = fptosi float %4422 to i32
  %4424 = bitcast i32 %4423 to float
  %4425 = fsub fast float 1.000000e+00, %2098
  %4426 = fsub fast float 1.000000e+00, %2099
  %4427 = fsub fast float 1.000000e+00, %2110
  %4428 = fmul fast float %4424, %4425
  %4429 = fmul fast float %4424, %4426
  %4430 = fmul fast float %4424, %4427
  %4431 = fadd fast float %4428, %2098
  %4432 = fadd fast float %4429, %2099
  %4433 = fadd fast float %4430, %2110
  br i1 %3389, label %4434, label %4457

; <label>:4434                                    ; preds = %4351
  %4435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1475, float %4417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 0
  %4437 = extractvalue %dx.types.ResRet.f32 %4435, 1
  %4438 = extractvalue %dx.types.ResRet.f32 %4435, 2
  %4439 = fadd fast float %4436, -5.000000e-01
  %4440 = fadd fast float %4437, -5.000000e-01
  %4441 = fadd fast float %4438, -5.000000e-01
  %4442 = fmul fast float %2098, 4.000000e+00
  %4443 = fmul fast float %4442, %4425
  %4444 = fmul fast float %4443, %4439
  %4445 = fmul fast float %2099, 4.000000e+00
  %4446 = fmul fast float %4445, %4426
  %4447 = fmul fast float %4446, %4440
  %4448 = fmul fast float %2110, 4.000000e+00
  %4449 = fmul fast float %4448, %4427
  %4450 = fmul fast float %4449, %4441
  %4451 = fadd fast float %4444, %4431
  %4452 = fadd fast float %4447, %4432
  %4453 = fadd fast float %4450, %4433
  %4454 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4455 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  br label %4457

; <label>:4457                                    ; preds = %4434, %4351
  %4458 = phi float [ %4454, %4434 ], [ %4431, %4351 ]
  %4459 = phi float [ %4455, %4434 ], [ %4432, %4351 ]
  %4460 = phi float [ %4456, %4434 ], [ %4433, %4351 ]
  %4461 = fmul fast float %4378, 9.843750e-01
  %4462 = fadd fast float %4461, 7.812500e-03
  %4463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4462, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 2
  %4465 = extractvalue %dx.types.ResRet.f32 %4463, 3
  %4466 = fmul fast float %4464, %2098
  %4467 = fmul fast float %4464, %2099
  %4468 = fmul fast float %4464, %2110
  %4469 = fadd fast float %4466, %4465
  %4470 = fadd fast float %4467, %4465
  %4471 = fadd fast float %4468, %4465
  br i1 %3389, label %4472, label %4495

; <label>:4472                                    ; preds = %4457
  %4473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1475, float %4378, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4474 = extractvalue %dx.types.ResRet.f32 %4473, 0
  %4475 = extractvalue %dx.types.ResRet.f32 %4473, 1
  %4476 = extractvalue %dx.types.ResRet.f32 %4473, 2
  %4477 = fadd fast float %4474, -5.000000e-01
  %4478 = fadd fast float %4475, -5.000000e-01
  %4479 = fadd fast float %4476, -5.000000e-01
  %4480 = fmul fast float %2098, 4.000000e+00
  %4481 = fmul fast float %4480, %4425
  %4482 = fmul fast float %4481, %4477
  %4483 = fmul fast float %2099, 4.000000e+00
  %4484 = fmul fast float %4483, %4426
  %4485 = fmul fast float %4484, %4478
  %4486 = fmul fast float %2110, 4.000000e+00
  %4487 = fmul fast float %4486, %4427
  %4488 = fmul fast float %4487, %4479
  %4489 = fadd fast float %4482, %4469
  %4490 = fadd fast float %4485, %4470
  %4491 = fadd fast float %4488, %4471
  %4492 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4493 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  br label %4495

; <label>:4495                                    ; preds = %4472, %4457
  %4496 = phi float [ %4492, %4472 ], [ %4469, %4457 ]
  %4497 = phi float [ %4493, %4472 ], [ %4470, %4457 ]
  %4498 = phi float [ %4494, %4472 ], [ %4471, %4457 ]
  %4499 = call float @dx.op.binary.f32(i32 35, float %4497, float %4498)  ; FMax(a,b)
  %4500 = call float @dx.op.binary.f32(i32 35, float %4496, float %4499)  ; FMax(a,b)
  %4501 = fsub fast float 1.000000e+00, %4500
  %4502 = fmul fast float %4458, %4416
  %4503 = fmul fast float %4459, %4416
  %4504 = fmul fast float %4460, %4416
  %4505 = fsub fast float 1.000000e+00, %4379
  %4506 = bitcast float %4505 to i32
  %4507 = sitofp i32 %4506 to float
  %4508 = fmul fast float %4507, 5.000000e+00
  %4509 = fadd fast float %4508, 0xC1EFBF8940000000
  %4510 = fptosi float %4509 to i32
  %4511 = bitcast i32 %4510 to float
  %4512 = fmul fast float %4511, %1474
  %4513 = fmul fast float %4501, %4512
  %4514 = fmul fast float %4513, %3439
  %4515 = fmul fast float %4513, %3440
  %4516 = fmul fast float %4513, %3441
  %4517 = fadd fast float %4514, %4502
  %4518 = fadd fast float %4515, %4503
  %4519 = fadd fast float %4516, %4504
  %4520 = fmul fast float %4384, %4367
  %4521 = fmul fast float %4520, %4501
  %4522 = fmul fast float %4384, %4368
  %4523 = fmul fast float %4522, %4501
  %4524 = fmul fast float %4384, %4369
  %4525 = fmul fast float %4524, %4501
  %4526 = fmul fast float %4520, %4517
  %4527 = fmul fast float %4522, %4518
  %4528 = fmul fast float %4524, %4519
  %4529 = fadd fast float %4521, %3423
  %4530 = fmul fast float %4529, %1495
  %4531 = fadd fast float %4523, %3424
  %4532 = fmul fast float %4531, %1495
  %4533 = fadd fast float %4525, %3425
  %4534 = fmul fast float %4533, %1495
  %4535 = fadd fast float %4526, %3466
  %4536 = fmul fast float %4535, %1495
  %4537 = fadd fast float %4527, %3469
  %4538 = fmul fast float %4537, %1495
  %4539 = fadd fast float %4528, %3472
  %4540 = fmul fast float %4539, %1495
  br label %4541

; <label>:4541                                    ; preds = %4495, %4285, %3416
  %4542 = phi float [ %3467, %3416 ], [ %3467, %4285 ], [ %4536, %4495 ]
  %4543 = phi float [ %3470, %3416 ], [ %3470, %4285 ], [ %4538, %4495 ]
  %4544 = phi float [ %3473, %3416 ], [ %3473, %4285 ], [ %4540, %4495 ]
  %4545 = phi float [ %3462, %3416 ], [ %3462, %4285 ], [ %4530, %4495 ]
  %4546 = phi float [ %3463, %3416 ], [ %3463, %4285 ], [ %4532, %4495 ]
  %4547 = phi float [ %3464, %3416 ], [ %3464, %4285 ], [ %4534, %4495 ]
  %4548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.i32 %4548, 0
  %4550 = icmp eq i32 %4549, 0
  br i1 %4550, label %5171, label %4551

; <label>:4551                                    ; preds = %4541
  %4552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4553 = extractvalue %dx.types.CBufRet.f32 %4552, 2
  %4554 = extractvalue %dx.types.CBufRet.f32 %4552, 3
  %4555 = fmul fast float %4553, %90
  %4556 = fmul fast float %4554, %91
  %4557 = fptoui float %4555 to i32
  %4558 = fptoui float %4556 to i32
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = extractvalue %dx.types.CBufRet.f32 %4559, 2
  %4562 = extractvalue %dx.types.CBufRet.f32 %4559, 3
  %4563 = fadd fast float %81, -4.000000e+00
  %4564 = call float @dx.op.binary.f32(i32 35, float %4563, float 0.000000e+00)  ; FMax(a,b)
  %4565 = fadd fast float %4564, %4560
  %4566 = fmul fast float %4565, %4561
  %4567 = call float @dx.op.unary.f32(i32 23, float %4566)  ; Log(value)
  %4568 = fmul fast float %4567, %4562
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 2
  %4571 = fmul fast float %4568, %4570
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.i32 %4573, 1
  %4575 = add i32 %4574, -1
  %4576 = uitofp i32 %4574 to float
  %4577 = fmul fast float %4576, %4572
  %4578 = fptoui float %4577 to i32
  %4579 = call i32 @dx.op.binary.i32(i32 40, i32 %4578, i32 %4575)  ; UMin(a,b)
  %4580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.i32 %4580, 2
  %4582 = extractvalue %dx.types.CBufRet.i32 %4580, 3
  %4583 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4558, i32 %4581, i32 %4557)  ; UMad(a,b,c)
  %4584 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4579, i32 %4582, i32 %4583)  ; UMad(a,b,c)
  %4585 = add nsw i32 %4549, -1
  %4586 = call i32 @dx.op.binary.i32(i32 37, i32 %4585, i32 0)  ; IMax(a,b)
  %4587 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %4588 = fptoui float %4587 to i32
  %4589 = lshr i32 %4588, 5
  %4590 = call i32 @dx.op.binary.i32(i32 40, i32 %4589, i32 8191)  ; UMin(a,b)
  %4591 = shl i32 %4590, 2
  %4592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.i32 %4592, 0
  %4594 = lshr i32 %4593, 16
  %4595 = and i32 %4593, 65535
  %4596 = lshr i32 %4593, 21
  %4597 = lshr i32 %4595, 5
  %4598 = call i32 @dx.op.binary.i32(i32 40, i32 %4597, i32 %4586)  ; UMin(a,b)
  %4599 = icmp ugt i32 %4596, %4598
  br i1 %4599, label %5171, label %4600

; <label>:4600                                    ; preds = %4551
  br label %4601

; <label>:4601                                    ; preds = %5161, %4600
  %4602 = phi i32 [ %5168, %5161 ], [ %4596, %4600 ]
  %4603 = phi float [ %5162, %5161 ], [ %4542, %4600 ]
  %4604 = phi float [ %5163, %5161 ], [ %4543, %4600 ]
  %4605 = phi float [ %5164, %5161 ], [ %4544, %4600 ]
  %4606 = phi float [ %5165, %5161 ], [ %4545, %4600 ]
  %4607 = phi float [ %5166, %5161 ], [ %4546, %4600 ]
  %4608 = phi float [ %5167, %5161 ], [ %4547, %4600 ]
  %4609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.i32 %4609, 0
  %4611 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4584, i32 %4610, i32 %4602)  ; UMad(a,b,c)
  %4612 = shl i32 %4611, 2
  %4613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4612, i32 undef)  ; BufferLoad(srv,index,wot)
  %4614 = extractvalue %dx.types.ResRet.i32 %4613, 0
  %4615 = shl i32 %4602, 5
  %4616 = sub nsw i32 %4594, %4615
  %4617 = call i32 @dx.op.binary.i32(i32 37, i32 %4616, i32 0)  ; IMax(a,b)
  %4618 = call i32 @dx.op.binary.i32(i32 38, i32 %4617, i32 31)  ; IMin(a,b)
  %4619 = sub nsw i32 1, %4594
  %4620 = add nsw i32 %4619, %4595
  %4621 = call i32 @dx.op.binary.i32(i32 37, i32 %4620, i32 0)  ; IMax(a,b)
  %4622 = call i32 @dx.op.binary.i32(i32 38, i32 %4621, i32 32)  ; IMin(a,b)
  %4623 = and i32 %4622, 31
  %4624 = shl i32 -1, %4623
  %4625 = xor i32 %4624, -1
  %4626 = and i32 %4618, 31
  %4627 = shl i32 %4625, %4626
  %4628 = icmp eq i32 %4622, 32
  %4629 = select i1 %4628, i32 -1, i32 %4627
  %4630 = and i32 %4629, %4614
  %4631 = icmp eq i32 %4630, 0
  br i1 %4631, label %5161, label %4632

; <label>:4632                                    ; preds = %4601
  br label %4633

; <label>:4633                                    ; preds = %4767, %4632
  %4634 = phi i32 [ %4645, %4767 ], [ %4630, %4632 ]
  %4635 = phi float [ %4768, %4767 ], [ %4603, %4632 ]
  %4636 = phi float [ %4769, %4767 ], [ %4604, %4632 ]
  %4637 = phi float [ %4770, %4767 ], [ %4605, %4632 ]
  %4638 = phi float [ %4771, %4767 ], [ %4606, %4632 ]
  %4639 = phi float [ %4772, %4767 ], [ %4607, %4632 ]
  %4640 = phi float [ %4773, %4767 ], [ %4608, %4632 ]
  %4641 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4634)  ; FirstbitLo(value)
  %4642 = add i32 %4641, %4615
  %4643 = and i32 %4641, 31
  %4644 = shl i32 1, %4643
  %4645 = xor i32 %4644, %4634
  %4646 = mul i32 %4642, 112
  %4647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4646, i32 undef)  ; BufferLoad(srv,index,wot)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = extractvalue %dx.types.ResRet.f32 %4647, 1
  %4650 = extractvalue %dx.types.ResRet.f32 %4647, 2
  %4651 = or i32 %4646, 12
  %4652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4651, i32 undef)  ; BufferLoad(srv,index,wot)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = add i32 %4646, 16
  %4655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4654, i32 undef)  ; BufferLoad(srv,index,wot)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = extractvalue %dx.types.ResRet.f32 %4655, 1
  %4658 = extractvalue %dx.types.ResRet.f32 %4655, 2
  %4659 = add i32 %4646, 28
  %4660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4659, i32 undef)  ; BufferLoad(srv,index,wot)
  %4661 = extractvalue %dx.types.ResRet.i32 %4660, 0
  %4662 = add i32 %4646, 44
  %4663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4662, i32 undef)  ; BufferLoad(srv,index,wot)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = add i32 %4646, 48
  %4666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4665, i32 undef)  ; BufferLoad(srv,index,wot)
  %4667 = extractvalue %dx.types.ResRet.f32 %4666, 0
  %4668 = extractvalue %dx.types.ResRet.f32 %4666, 1
  %4669 = extractvalue %dx.types.ResRet.f32 %4666, 2
  %4670 = extractvalue %dx.types.ResRet.f32 %4666, 3
  %4671 = add i32 %4646, 64
  %4672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4672, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4672, 2
  %4676 = extractvalue %dx.types.ResRet.f32 %4672, 3
  %4677 = add i32 %4646, 80
  %4678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4677, i32 undef)  ; BufferLoad(srv,index,wot)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 1
  %4680 = extractvalue %dx.types.ResRet.f32 %4678, 2
  %4681 = add i32 %4646, 92
  %4682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4681, i32 undef)  ; BufferLoad(srv,index,wot)
  %4683 = extractvalue %dx.types.ResRet.i32 %4682, 0
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4649, float %4650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = select i1 %228, float %4679, float %4648
  %4686 = select i1 %228, float %4684, float %4649
  %4687 = select i1 %228, float %4680, float %4650
  %4688 = and i32 %4683, 65535
  %4689 = uitofp i32 %4688 to float
  %4690 = lshr i32 %4683, 16
  %4691 = uitofp i32 %4690 to float
  %4692 = and i32 %4661, 65535
  %4693 = and i32 %4661, 50331648
  %4694 = icmp eq i32 %4693, 33554432
  %4695 = fsub fast float %4667, %137
  %4696 = fsub fast float %4668, %138
  %4697 = fsub fast float %4669, %139
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %4697, float %4695, float %4696, float %4697)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = call float @dx.op.unary.f32(i32 24, float %4698)  ; Sqrt(value)
  %4700 = fdiv fast float 1.000000e+00, %4699
  %4701 = fmul fast float %4700, %4695
  %4702 = fmul fast float %4700, %4696
  %4703 = fmul fast float %4700, %4697
  %4704 = fadd fast float %4699, %4653
  %4705 = fdiv fast float 1.000000e+00, %4704
  %4706 = fmul float %4664, %4705
  %4707 = fmul float %4706, %4706
  %4708 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  br i1 %4694, label %4709, label %4730

; <label>:4709                                    ; preds = %4633
  %4710 = fmul fast float %4675, %4656
  %4711 = fmul fast float %4675, %4657
  %4712 = fmul fast float %4675, %4658
  %4713 = fadd fast float %4695, %4710
  %4714 = fadd fast float %4696, %4711
  %4715 = fadd fast float %4697, %4712
  %4716 = call float @dx.op.dot3.f32(i32 55, float %4713, float %4714, float %4715, float %4713, float %4714, float %4715)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = call float @dx.op.unary.f32(i32 25, float %4716)  ; Rsqrt(value)
  %4718 = fmul fast float %4717, %4713
  %4719 = fmul fast float %4717, %4714
  %4720 = fmul fast float %4717, %4715
  %4721 = fsub fast float %137, %4667
  %4722 = fsub fast float %138, %4668
  %4723 = fsub fast float %139, %4669
  %4724 = fsub fast float -0.000000e+00, %4721
  %4725 = fsub fast float -0.000000e+00, %4722
  %4726 = fsub fast float -0.000000e+00, %4723
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4725, float %4726, float %4656, float %4657, float %4658)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = fcmp fast ogt float %4727, 0.000000e+00
  %4729 = uitofp i1 %4728 to float
  br label %4730

; <label>:4730                                    ; preds = %4709, %4633
  %4731 = phi float [ %4729, %4709 ], [ 1.000000e+00, %4633 ]
  %4732 = phi float [ %4718, %4709 ], [ %4701, %4633 ]
  %4733 = phi float [ %4719, %4709 ], [ %4702, %4633 ]
  %4734 = phi float [ %4720, %4709 ], [ %4703, %4633 ]
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4656, float %4657, float %4658, float %4732, float %4733, float %4734)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = fmul fast float %4735, %4735
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fsub fast float 1.000000e+00, %4737
  %4739 = fmul fast float %4738, 5.000000e-01
  %4740 = fcmp fast ogt float %4735, 0.000000e+00
  %4741 = fsub fast float 1.000000e+00, %4739
  %4742 = select i1 %4740, float %4739, float %4741
  %4743 = fmul fast float %4742, %4691
  %4744 = fadd fast float %4743, %4689
  %4745 = fmul fast float %4744, 0x3EF0001000000000
  %4746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %4745, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4747 = extractvalue %dx.types.ResRet.f32 %4746, 0
  %4748 = fmul fast float %4735, %4673
  %4749 = fadd fast float %4748, %4674
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = select i1 %4694, float 1.000000e+00, float %4750
  %4752 = select i1 %4694, float %4750, float 1.000000e+00
  %4753 = fmul fast float %4699, %4670
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = fmul fast float %4754, %4676
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = fmul fast float %4756, %4752
  %4758 = fmul fast float %4757, 2.000000e+00
  %4759 = fsub fast float 3.000000e+00, %4758
  %4760 = fmul fast float %4747, %4731
  %4761 = fmul fast float %4757, %4757
  %4762 = fmul fast float %4761, %4760
  %4763 = fmul fast float %4762, %4759
  %4764 = call float @dx.op.binary.f32(i32 36, float %4763, float %4763)  ; FMin(a,b)
  %4765 = call float @dx.op.binary.f32(i32 36, float %4763, float %4764)  ; FMin(a,b)
  %4766 = fcmp fast ogt float %4765, 0.000000e+00
  br i1 %4766, label %4775, label %4767, !dx.controlflow.hints !130

; <label>:4767                                    ; preds = %5117, %4875, %4730
  %4768 = phi float [ %4635, %4875 ], [ %4635, %4730 ], [ %5157, %5117 ]
  %4769 = phi float [ %4636, %4875 ], [ %4636, %4730 ], [ %5158, %5117 ]
  %4770 = phi float [ %4637, %4875 ], [ %4637, %4730 ], [ %5159, %5117 ]
  %4771 = phi float [ %4638, %4875 ], [ %4638, %4730 ], [ %5151, %5117 ]
  %4772 = phi float [ %4639, %4875 ], [ %4639, %4730 ], [ %5152, %5117 ]
  %4773 = phi float [ %4640, %4875 ], [ %4640, %4730 ], [ %5153, %5117 ]
  %4774 = icmp eq i32 %4634, %4644
  br i1 %4774, label %5160, label %4633

; <label>:4775                                    ; preds = %4730
  %4776 = icmp eq i32 %4692, 255
  br i1 %4776, label %4875, label %4777, !dx.controlflow.hints !131

; <label>:4777                                    ; preds = %4775
  %4778 = mul nuw nsw i32 %4692, 176
  %4779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4778, i32 undef)  ; BufferLoad(srv,index,wot)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.ResRet.f32 %4779, 1
  %4782 = extractvalue %dx.types.ResRet.f32 %4779, 2
  %4783 = extractvalue %dx.types.ResRet.f32 %4779, 3
  %4784 = add nuw nsw i32 %4778, 16
  %4785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4784, i32 undef)  ; BufferLoad(srv,index,wot)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.ResRet.f32 %4785, 1
  %4788 = add nuw nsw i32 %4778, 32
  %4789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4788, i32 undef)  ; BufferLoad(srv,index,wot)
  %4790 = extractvalue %dx.types.ResRet.f32 %4789, 0
  %4791 = extractvalue %dx.types.ResRet.f32 %4789, 1
  %4792 = extractvalue %dx.types.ResRet.f32 %4789, 2
  %4793 = add nuw nsw i32 %4778, 48
  %4794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4793, i32 undef)  ; BufferLoad(srv,index,wot)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.ResRet.f32 %4794, 1
  %4797 = extractvalue %dx.types.ResRet.f32 %4794, 2
  %4798 = extractvalue %dx.types.ResRet.f32 %4794, 3
  %4799 = add nuw nsw i32 %4778, 64
  %4800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4799, i32 undef)  ; BufferLoad(srv,index,wot)
  %4801 = extractvalue %dx.types.ResRet.f32 %4800, 0
  %4802 = extractvalue %dx.types.ResRet.f32 %4800, 1
  %4803 = extractvalue %dx.types.ResRet.f32 %4800, 2
  %4804 = extractvalue %dx.types.ResRet.f32 %4800, 3
  %4805 = add nuw nsw i32 %4778, 80
  %4806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4805, i32 undef)  ; BufferLoad(srv,index,wot)
  %4807 = extractvalue %dx.types.ResRet.f32 %4806, 0
  %4808 = extractvalue %dx.types.ResRet.f32 %4806, 1
  %4809 = extractvalue %dx.types.ResRet.f32 %4806, 2
  %4810 = extractvalue %dx.types.ResRet.f32 %4806, 3
  %4811 = add nuw nsw i32 %4778, 96
  %4812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4811, i32 undef)  ; BufferLoad(srv,index,wot)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = extractvalue %dx.types.ResRet.f32 %4812, 1
  %4815 = extractvalue %dx.types.ResRet.f32 %4812, 2
  %4816 = extractvalue %dx.types.ResRet.f32 %4812, 3
  %4817 = bitcast float %4787 to i32
  %4818 = fmul fast float %4792, %70
  %4819 = fmul fast float %4792, %71
  %4820 = fmul fast float %4792, %72
  %4821 = fadd fast float %4818, %137
  %4822 = fadd fast float %4819, %138
  %4823 = fadd fast float %4820, %139
  %4824 = fmul fast float %4821, %4795
  %4825 = call float @dx.op.tertiary.f32(i32 46, float %4822, float %4801, float %4824)  ; FMad(a,b,c)
  %4826 = call float @dx.op.tertiary.f32(i32 46, float %4823, float %4807, float %4825)  ; FMad(a,b,c)
  %4827 = fadd fast float %4826, %4813
  %4828 = fmul fast float %4821, %4796
  %4829 = call float @dx.op.tertiary.f32(i32 46, float %4822, float %4802, float %4828)  ; FMad(a,b,c)
  %4830 = call float @dx.op.tertiary.f32(i32 46, float %4823, float %4808, float %4829)  ; FMad(a,b,c)
  %4831 = fadd fast float %4830, %4814
  %4832 = fmul fast float %4821, %4797
  %4833 = call float @dx.op.tertiary.f32(i32 46, float %4822, float %4803, float %4832)  ; FMad(a,b,c)
  %4834 = call float @dx.op.tertiary.f32(i32 46, float %4823, float %4809, float %4833)  ; FMad(a,b,c)
  %4835 = fadd fast float %4834, %4815
  %4836 = fmul fast float %4821, %4798
  %4837 = call float @dx.op.tertiary.f32(i32 46, float %4822, float %4804, float %4836)  ; FMad(a,b,c)
  %4838 = call float @dx.op.tertiary.f32(i32 46, float %4823, float %4810, float %4837)  ; FMad(a,b,c)
  %4839 = fadd fast float %4838, %4816
  %4840 = fdiv fast float %4827, %4839
  %4841 = fdiv fast float %4831, %4839
  %4842 = fdiv fast float %4835, %4839
  %4843 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4842)  ; FMax(a,b)
  %4844 = fmul fast float %239, 0x401921FB60000000
  %4845 = call float @dx.op.unary.f32(i32 13, float %4844)  ; Sin(value)
  %4846 = call float @dx.op.unary.f32(i32 12, float %4844)  ; Cos(value)
  %4847 = fsub fast float -0.000000e+00, %4845
  %4848 = fmul fast float %4782, 5.000000e-01
  %4849 = call float @dx.op.dot2.f32(i32 54, float %239, float %239, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4850 = call float @dx.op.unary.f32(i32 22, float %4849)  ; Frc(value)
  %4851 = fmul fast float %4850, 0x404A7DD040000000
  %4852 = call float @dx.op.unary.f32(i32 22, float %4851)  ; Frc(value)
  %4853 = fmul fast float %4852, %4791
  %4854 = fadd fast float %4853, %4848
  %4855 = call float @dx.op.tertiary.f32(i32 46, float %4854, float %4847, float 0.000000e+00)  ; FMad(a,b,c)
  %4856 = call float @dx.op.tertiary.f32(i32 46, float %4854, float %4846, float 0.000000e+00)  ; FMad(a,b,c)
  %4857 = fadd fast float %4855, %4840
  %4858 = fadd fast float %4856, %4841
  %4859 = fmul fast float %4857, %4786
  %4860 = fmul fast float %4858, %4786
  %4861 = call float @dx.op.binary.f32(i32 35, float %4859, float %4782)  ; FMax(a,b)
  %4862 = call float @dx.op.binary.f32(i32 35, float %4860, float %4782)  ; FMax(a,b)
  %4863 = call float @dx.op.binary.f32(i32 36, float %4861, float %4783)  ; FMin(a,b)
  %4864 = call float @dx.op.binary.f32(i32 36, float %4862, float %4783)  ; FMin(a,b)
  %4865 = fadd fast float %4863, %4780
  %4866 = fadd fast float %4864, %4781
  %4867 = uitofp i32 %4817 to float
  %4868 = fadd fast float %4843, %4790
  %4869 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %4865, float %4866, float %4867, float undef, i32 0, i32 0, i32 undef, float %4868)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4870 = extractvalue %dx.types.ResRet.f32 %4869, 0
  %4871 = fadd fast float %4870, -1.000000e+00
  %4872 = fmul fast float %4871, %4751
  %4873 = fadd fast float %4872, 1.000000e+00
  %4874 = fmul fast float %4873, %4763
  br label %4875

; <label>:4875                                    ; preds = %4777, %4775
  %4876 = phi float [ %4874, %4777 ], [ %4763, %4775 ]
  %4877 = call float @dx.op.binary.f32(i32 36, float %4876, float %4876)  ; FMin(a,b)
  %4878 = call float @dx.op.binary.f32(i32 36, float %4876, float %4877)  ; FMin(a,b)
  %4879 = fcmp fast ogt float %4878, 0.000000e+00
  br i1 %4879, label %4880, label %4767, !dx.controlflow.hints !132

; <label>:4880                                    ; preds = %4875
  %4881 = fmul fast float %4876, %4685
  %4882 = fmul fast float %4876, %4686
  %4883 = fmul fast float %4876, %4687
  %4884 = fsub fast float %4669, %1897
  %4885 = fcmp fast ogt float %4884, 0.000000e+00
  %4886 = fsub fast float %139, %1897
  %4887 = fcmp fast ogt float %4886, 0.000000e+00
  %4888 = xor i1 %4887, %4885
  %4889 = fsub fast float %1897, %4669
  %4890 = fmul fast float %4889, 2.000000e+00
  %4891 = fadd fast float %4890, %4669
  %4892 = select i1 %4888, float %4669, float %4891
  %4893 = fsub fast float %4892, %139
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %4893, float %4695, float %4696, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.unary.f32(i32 25, float %4894)  ; Rsqrt(value)
  %4896 = fmul fast float %4895, %4695
  %4897 = fmul fast float %4895, %4696
  %4898 = fmul fast float %4895, %4893
  %4899 = fsub fast float %1897, %139
  %4900 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4899)  ; Dot3(ax,ay,az,bx,by,bz)
  %4901 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4896, float %4897, float %4898)  ; Dot3(ax,ay,az,bx,by,bz)
  %4902 = fdiv fast float 1.000000e+00, %4901
  %4903 = fmul fast float %4902, %4900
  %4904 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4886, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = fcmp fast ogt float %4904, 0.000000e+00
  %4906 = fcmp fast olt float %4904, 0.000000e+00
  %4907 = zext i1 %4905 to i32
  %4908 = zext i1 %4906 to i32
  %4909 = sub nsw i32 %4907, %4908
  %4910 = sitofp i32 %4909 to float
  %4911 = fsub fast float %4892, %1897
  %4912 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %4911, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = fcmp fast ogt float %4912, 0.000000e+00
  %4914 = fcmp fast olt float %4912, 0.000000e+00
  %4915 = zext i1 %4913 to i32
  %4916 = zext i1 %4914 to i32
  %4917 = sub nsw i32 %4915, %4916
  %4918 = sitofp i32 %4917 to float
  %4919 = fcmp fast une float %4910, %4918
  br i1 %4919, label %4920, label %4930

; <label>:4920                                    ; preds = %4880
  %4921 = fmul fast float %4903, %4898
  %4922 = fmul fast float %4903, %4897
  %4923 = fmul fast float %4903, %4896
  %4924 = fmul fast float %4923, %4923
  %4925 = fmul fast float %4922, %4922
  %4926 = fadd fast float %4924, %4925
  %4927 = fmul fast float %4921, %4921
  %4928 = fadd fast float %4926, %4927
  %4929 = call float @dx.op.unary.f32(i32 24, float %4928)  ; Sqrt(value)
  br label %4942

; <label>:4930                                    ; preds = %4880
  %4931 = icmp slt i32 %4909, 0
  br i1 %4931, label %4932, label %4942

; <label>:4932                                    ; preds = %4930
  %4933 = fsub fast float %137, %4667
  %4934 = fsub fast float %138, %4668
  %4935 = fsub fast float %139, %4892
  %4936 = fmul fast float %4933, %4933
  %4937 = fmul fast float %4934, %4934
  %4938 = fadd fast float %4936, %4937
  %4939 = fmul fast float %4935, %4935
  %4940 = fadd fast float %4938, %4939
  %4941 = call float @dx.op.unary.f32(i32 24, float %4940)  ; Sqrt(value)
  br label %4942

; <label>:4942                                    ; preds = %4932, %4930, %4920
  %4943 = phi float [ %4929, %4920 ], [ %4941, %4932 ], [ 0.000000e+00, %4930 ]
  %4944 = and i1 %4887, %4885
  %4945 = fsub fast float -0.000000e+00, %4943
  %4946 = select i1 %4944, float -0.000000e+00, float %4945
  %4947 = fmul fast float %1898, 0x3FF7154760000000
  %4948 = fmul fast float %4947, %4946
  %4949 = fmul fast float %1899, 0x3FF7154760000000
  %4950 = fmul fast float %4949, %4946
  %4951 = fmul fast float %1900, 0x3FF7154760000000
  %4952 = fmul fast float %4951, %4946
  %4953 = call float @dx.op.unary.f32(i32 21, float %4948)  ; Exp(value)
  %4954 = call float @dx.op.unary.f32(i32 21, float %4950)  ; Exp(value)
  %4955 = call float @dx.op.unary.f32(i32 21, float %4952)  ; Exp(value)
  %4956 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4957 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4958 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4959 = fmul fast float %4881, %4956
  %4960 = fmul fast float %4882, %4957
  %4961 = fmul fast float %4883, %4958
  %4962 = fsub fast float %4701, %2097
  %4963 = fsub fast float %4702, %2096
  %4964 = fsub fast float %4703, %2095
  %4965 = call float @dx.op.dot3.f32(i32 55, float %4962, float %4963, float %4964, float %4962, float %4963, float %4964)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = call float @dx.op.unary.f32(i32 25, float %4965)  ; Rsqrt(value)
  %4967 = fmul fast float %4966, %4962
  %4968 = fmul fast float %4966, %4963
  %4969 = fmul fast float %4966, %4964
  %4970 = call float @dx.op.dot3.f32(i32 55, float %4701, float %4702, float %4703, float %2104, float %2105, float %2106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = call float @dx.op.dot3.f32(i32 55, float %2094, float %2093, float %2092, float %4967, float %4968, float %4969)  ; Dot3(ax,ay,az,bx,by,bz)
  %4972 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4973 = fmul fast float %4972, %4708
  %4974 = fmul fast float %4972, %4972
  %4975 = fmul fast float %4974, %3474
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fmul fast float %4973, %4976
  %4978 = bitcast float %4698 to i32
  %4979 = ashr i32 %4978, 1
  %4980 = sub nsw i32 1597463007, %4979
  %4981 = bitcast i32 %4980 to float
  %4982 = fmul fast float %4981, %4695
  %4983 = fmul fast float %4981, %4696
  %4984 = fmul fast float %4981, %4697
  %4985 = fsub fast float %4982, %2097
  %4986 = fsub fast float %4983, %2096
  %4987 = fsub fast float %4984, %2095
  %4988 = call float @dx.op.dot3.f32(i32 55, float %4985, float %4986, float %4987, float %4985, float %4986, float %4987)  ; Dot3(ax,ay,az,bx,by,bz)
  %4989 = call float @dx.op.unary.f32(i32 25, float %4988)  ; Rsqrt(value)
  %4990 = fmul fast float %4985, %4989
  %4991 = fmul fast float %4986, %4989
  %4992 = fmul fast float %4987, %4989
  %4993 = call float @dx.op.dot3.f32(i32 55, float %2104, float %2105, float %2106, float %4990, float %4991, float %4992)  ; Dot3(ax,ay,az,bx,by,bz)
  %4994 = fmul fast float %4993, %4993
  %4995 = call float @dx.op.unary.f32(i32 6, float %4970)  ; FAbs(value)
  %4996 = fsub fast float 1.000000e+00, %2107
  %4997 = call float @dx.op.binary.f32(i32 35, float %4996, float 0x3F847AE140000000)  ; FMax(a,b)
  %4998 = fmul fast float %4997, %4997
  %4999 = fmul fast float %4998, %4998
  %5000 = fsub fast float 1.000000e+00, %4999
  %5001 = fmul fast float %2112, %2112
  %5002 = fmul fast float %5001, %5000
  %5003 = fadd fast float %5002, %4999
  %5004 = bitcast float %5003 to i32
  %5005 = ashr i32 %5004, 1
  %5006 = add nsw i32 %5005, 532487669
  %5007 = bitcast i32 %5006 to float
  %5008 = fadd fast float %5007, %2112
  %5009 = fmul fast float %4999, %4994
  %5010 = fsub fast float 1.000000e+00, %4994
  %5011 = fadd fast float %5010, %5009
  %5012 = fmul fast float %4995, %4995
  %5013 = fmul fast float %5012, %5000
  %5014 = fadd fast float %5013, %4999
  %5015 = bitcast float %5014 to i32
  %5016 = ashr i32 %5015, 1
  %5017 = add nsw i32 %5016, 532487669
  %5018 = bitcast i32 %5017 to float
  %5019 = fadd fast float %5018, %4995
  %5020 = fmul fast float %5011, %5011
  %5021 = fmul fast float %5020, %5008
  %5022 = fmul fast float %5021, %5019
  %5023 = fdiv fast float 1.000000e+00, %5022
  %5024 = bitcast float %4999 to i32
  %5025 = sitofp i32 %5024 to float
  %5026 = fmul fast float %5025, 0x3FE7F73180000000
  %5027 = fadd fast float %5026, 0x41AFE27C40000000
  %5028 = fptosi float %5027 to i32
  %5029 = bitcast i32 %5028 to float
  %5030 = fmul fast float %4664, 0x3FD80E9D60000000
  %5031 = fmul fast float %5030, %4981
  %5032 = fadd fast float %5029, %5031
  %5033 = bitcast float %5032 to i32
  %5034 = sub nsw i32 2129859010, %5033
  %5035 = bitcast i32 %5034 to float
  %5036 = fmul fast float %4999, %5023
  %5037 = fmul fast float %5036, %5029
  %5038 = fmul fast float %5037, %5035
  %5039 = call float @dx.op.unary.f32(i32 6, float %4971)  ; FAbs(value)
  %5040 = fsub fast float 1.000000e+00, %5039
  %5041 = bitcast float %5040 to i32
  %5042 = sitofp i32 %5041 to float
  %5043 = fmul fast float %5042, 5.000000e+00
  %5044 = fadd fast float %5043, 0xC1EFBF8940000000
  %5045 = fptosi float %5044 to i32
  %5046 = bitcast i32 %5045 to float
  %5047 = fsub fast float 1.000000e+00, %2098
  %5048 = fsub fast float 1.000000e+00, %2099
  %5049 = fsub fast float 1.000000e+00, %2110
  %5050 = fmul fast float %5046, %5047
  %5051 = fmul fast float %5046, %5048
  %5052 = fmul fast float %5046, %5049
  %5053 = fadd fast float %5050, %2098
  %5054 = fadd fast float %5051, %2099
  %5055 = fadd fast float %5052, %2110
  br i1 %3389, label %5056, label %5079

; <label>:5056                                    ; preds = %4942
  %5057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1475, float %5039, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5058 = extractvalue %dx.types.ResRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.ResRet.f32 %5057, 1
  %5060 = extractvalue %dx.types.ResRet.f32 %5057, 2
  %5061 = fadd fast float %5058, -5.000000e-01
  %5062 = fadd fast float %5059, -5.000000e-01
  %5063 = fadd fast float %5060, -5.000000e-01
  %5064 = fmul fast float %2098, 4.000000e+00
  %5065 = fmul fast float %5064, %5047
  %5066 = fmul fast float %5065, %5061
  %5067 = fmul fast float %2099, 4.000000e+00
  %5068 = fmul fast float %5067, %5048
  %5069 = fmul fast float %5068, %5062
  %5070 = fmul fast float %2110, 4.000000e+00
  %5071 = fmul fast float %5070, %5049
  %5072 = fmul fast float %5071, %5063
  %5073 = fadd fast float %5066, %5053
  %5074 = fadd fast float %5069, %5054
  %5075 = fadd fast float %5072, %5055
  %5076 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5077 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5078 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  br label %5079

; <label>:5079                                    ; preds = %5056, %4942
  %5080 = phi float [ %5076, %5056 ], [ %5053, %4942 ]
  %5081 = phi float [ %5077, %5056 ], [ %5054, %4942 ]
  %5082 = phi float [ %5078, %5056 ], [ %5055, %4942 ]
  %5083 = fmul fast float %4970, 9.843750e-01
  %5084 = fadd fast float %5083, 7.812500e-03
  %5085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5084, float %3379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 2
  %5087 = extractvalue %dx.types.ResRet.f32 %5085, 3
  %5088 = fmul fast float %5086, %2098
  %5089 = fmul fast float %5086, %2099
  %5090 = fmul fast float %5086, %2110
  %5091 = fadd fast float %5088, %5087
  %5092 = fadd fast float %5089, %5087
  %5093 = fadd fast float %5090, %5087
  br i1 %3389, label %5094, label %5117

; <label>:5094                                    ; preds = %5079
  %5095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1475, float %4970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5096 = extractvalue %dx.types.ResRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.ResRet.f32 %5095, 1
  %5098 = extractvalue %dx.types.ResRet.f32 %5095, 2
  %5099 = fadd fast float %5096, -5.000000e-01
  %5100 = fadd fast float %5097, -5.000000e-01
  %5101 = fadd fast float %5098, -5.000000e-01
  %5102 = fmul fast float %2098, 4.000000e+00
  %5103 = fmul fast float %5102, %5047
  %5104 = fmul fast float %5103, %5099
  %5105 = fmul fast float %2099, 4.000000e+00
  %5106 = fmul fast float %5105, %5048
  %5107 = fmul fast float %5106, %5100
  %5108 = fmul fast float %2110, 4.000000e+00
  %5109 = fmul fast float %5108, %5049
  %5110 = fmul fast float %5109, %5101
  %5111 = fadd fast float %5104, %5091
  %5112 = fadd fast float %5107, %5092
  %5113 = fadd fast float %5110, %5093
  %5114 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5115 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5116 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  br label %5117

; <label>:5117                                    ; preds = %5094, %5079
  %5118 = phi float [ %5114, %5094 ], [ %5091, %5079 ]
  %5119 = phi float [ %5115, %5094 ], [ %5092, %5079 ]
  %5120 = phi float [ %5116, %5094 ], [ %5093, %5079 ]
  %5121 = call float @dx.op.binary.f32(i32 35, float %5119, float %5120)  ; FMax(a,b)
  %5122 = call float @dx.op.binary.f32(i32 35, float %5118, float %5121)  ; FMax(a,b)
  %5123 = fsub fast float 1.000000e+00, %5122
  %5124 = fmul fast float %5080, %5038
  %5125 = fmul fast float %5081, %5038
  %5126 = fmul fast float %5082, %5038
  %5127 = fsub fast float 1.000000e+00, %4971
  %5128 = bitcast float %5127 to i32
  %5129 = sitofp i32 %5128 to float
  %5130 = fmul fast float %5129, 5.000000e+00
  %5131 = fadd fast float %5130, 0xC1EFBF8940000000
  %5132 = fptosi float %5131 to i32
  %5133 = bitcast i32 %5132 to float
  %5134 = fmul fast float %5133, %1474
  %5135 = fmul fast float %5123, %5134
  %5136 = fmul fast float %5135, %3439
  %5137 = fmul fast float %5135, %3440
  %5138 = fmul fast float %5135, %3441
  %5139 = fadd fast float %5136, %5124
  %5140 = fadd fast float %5137, %5125
  %5141 = fadd fast float %5138, %5126
  %5142 = fmul fast float %4959, %1495
  %5143 = fmul fast float %5142, %4977
  %5144 = fmul fast float %5143, %5123
  %5145 = fmul fast float %4960, %1495
  %5146 = fmul fast float %5145, %4977
  %5147 = fmul fast float %5146, %5123
  %5148 = fmul fast float %4961, %1495
  %5149 = fmul fast float %5148, %4977
  %5150 = fmul fast float %5149, %5123
  %5151 = fadd fast float %5144, %4638
  %5152 = fadd fast float %5147, %4639
  %5153 = fadd fast float %5150, %4640
  %5154 = fmul fast float %5143, %5139
  %5155 = fmul fast float %5146, %5140
  %5156 = fmul fast float %5149, %5141
  %5157 = fadd fast float %5154, %4635
  %5158 = fadd fast float %5155, %4636
  %5159 = fadd fast float %5156, %4637
  br label %4767

; <label>:5160                                    ; preds = %4767
  br label %5161

; <label>:5161                                    ; preds = %5160, %4601
  %5162 = phi float [ %4603, %4601 ], [ %4768, %5160 ]
  %5163 = phi float [ %4604, %4601 ], [ %4769, %5160 ]
  %5164 = phi float [ %4605, %4601 ], [ %4770, %5160 ]
  %5165 = phi float [ %4606, %4601 ], [ %4771, %5160 ]
  %5166 = phi float [ %4607, %4601 ], [ %4772, %5160 ]
  %5167 = phi float [ %4608, %4601 ], [ %4773, %5160 ]
  %5168 = add i32 %4602, 1
  %5169 = icmp ugt i32 %5168, %4598
  br i1 %5169, label %5170, label %4601

; <label>:5170                                    ; preds = %5161
  br label %5171

; <label>:5171                                    ; preds = %5170, %4551, %4541
  %5172 = phi float [ %4542, %4541 ], [ %4542, %4551 ], [ %5162, %5170 ]
  %5173 = phi float [ %4543, %4541 ], [ %4543, %4551 ], [ %5163, %5170 ]
  %5174 = phi float [ %4544, %4541 ], [ %4544, %4551 ], [ %5164, %5170 ]
  %5175 = phi float [ %4545, %4541 ], [ %4545, %4551 ], [ %5165, %5170 ]
  %5176 = phi float [ %4546, %4541 ], [ %4546, %4551 ], [ %5166, %5170 ]
  %5177 = phi float [ %4547, %4541 ], [ %4547, %4551 ], [ %5167, %5170 ]
  %5178 = fmul fast float %1495, %1495
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5179, float %5179, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = fsub fast float 1.000000e+00, %5180
  %5182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5183 = extractvalue %dx.types.CBufRet.f32 %5182, 0
  %5184 = fmul fast float %5183, %3445
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 3
  %5187 = fsub fast float 1.000000e+00, %1473
  %5188 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5189 = fadd fast float %5177, %1472
  %5190 = fmul fast float %5189, %1473
  %5191 = fmul fast float %5188, %5186
  %5192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.f32 %5192, 3
  %5194 = fmul fast float %5175, %2101
  %5195 = fmul fast float %5176, %2102
  %5196 = fmul fast float %5177, %2103
  %5197 = fcmp fast ogt float %81, %188
  %5198 = and i1 %5197, %1903
  %5199 = or i1 %1909, %5198
  %5200 = icmp eq i32 %1902, 2
  %5201 = fcmp fast ole float %81, %188
  %5202 = and i1 %5201, %5200
  %5203 = or i1 %5202, %5199
  br i1 %5198, label %5204, label %5463

; <label>:5204                                    ; preds = %5171
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 2
  %5207 = extractvalue %dx.types.CBufRet.f32 %5205, 3
  %5208 = fmul fast float %5206, %90
  %5209 = fmul fast float %5207, %91
  %5210 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5211 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5212 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5210, float %5211, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.ResRet.f32 %5212, 1
  %5215 = extractvalue %dx.types.ResRet.f32 %5212, 2
  %5216 = extractvalue %dx.types.ResRet.f32 %5212, 3
  %5217 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5210, float %5211, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.ResRet.f32 %5217, 1
  %5220 = extractvalue %dx.types.ResRet.f32 %5217, 2
  %5221 = extractvalue %dx.types.ResRet.f32 %5217, 3
  %5222 = call float @dx.op.binary.f32(i32 35, float %5214, float %5215)  ; FMax(a,b)
  %5223 = call float @dx.op.binary.f32(i32 35, float %5213, float %5222)  ; FMax(a,b)
  %5224 = call float @dx.op.binary.f32(i32 35, float %5223, float %5216)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 36, float %5219, float %5220)  ; FMin(a,b)
  %5226 = call float @dx.op.binary.f32(i32 36, float %5218, float %5225)  ; FMin(a,b)
  %5227 = call float @dx.op.binary.f32(i32 36, float %5226, float %5221)  ; FMin(a,b)
  %5228 = fmul fast float %5224, 2.550000e+02
  %5229 = fadd fast float %5228, 0x3F70101020000000
  %5230 = fptoui float %5229 to i32
  %5231 = fmul fast float %5227, 2.550000e+02
  %5232 = fadd fast float %5231, 0x3F70101020000000
  %5233 = fptoui float %5232 to i32
  %5234 = icmp ult i32 %5230, %5233
  br i1 %5234, label %5235, label %5403

; <label>:5235                                    ; preds = %5204
  %5236 = fcmp fast ogt float %80, 9.843750e-01
  %5237 = fadd fast float %81, -4.000000e+00
  %5238 = select i1 %5236, float -4.000000e+00, float %5237
  %5239 = call float @dx.op.binary.f32(i32 35, float %5238, float 0.000000e+00)  ; FMax(a,b)
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 0
  %5242 = fadd fast float %5241, %5239
  %5243 = extractvalue %dx.types.CBufRet.f32 %5240, 2
  %5244 = fmul fast float %5242, %5243
  %5245 = call float @dx.op.unary.f32(i32 23, float %5244)  ; Log(value)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5240, 3
  %5247 = fmul fast float %5246, %5245
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 2
  %5250 = fmul fast float %5247, %5249
  %5251 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5252 = uitofp i32 %5230 to float
  %5253 = uitofp i32 %5233 to float
  %5254 = fadd fast float %5252, 5.000000e-01
  %5255 = fadd fast float %5253, 5.000000e-01
  %5256 = fmul fast float %5249, %5254
  %5257 = fmul fast float %5249, %5255
  %5258 = fadd fast float %5256, 0x3F0FFB4800000000
  %5259 = fadd fast float %5257, 0xBF0FFB4800000000
  %5260 = call float @dx.op.binary.f32(i32 35, float %5251, float %5258)  ; FMax(a,b)
  %5261 = call float @dx.op.binary.f32(i32 36, float %5260, float %5259)  ; FMin(a,b)
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 1
  %5264 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5265 = extractvalue %dx.types.CBufRet.f32 %5262, 0
  %5266 = fmul fast float %5263, %5261
  %5267 = fadd fast float %5265, %5266
  %5268 = fadd fast float %5265, %5264
  %5269 = fsub fast float %5263, %5264
  %5270 = fadd fast float %5269, %5265
  %5271 = call float @dx.op.binary.f32(i32 35, float %5267, float %5268)  ; FMax(a,b)
  %5272 = call float @dx.op.binary.f32(i32 36, float %5271, float %5270)  ; FMin(a,b)
  %5273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5210, float %5211, float %5272, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.ResRet.f32 %5273, 2
  %5277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.i32 %5277, 0
  %5279 = extractvalue %dx.types.CBufRet.i32 %5277, 1
  %5280 = uitofp i32 %5278 to float
  %5281 = uitofp i32 %5279 to float
  %5282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5283 = extractvalue %dx.types.CBufRet.f32 %5282, 0
  %5284 = extractvalue %dx.types.CBufRet.f32 %5282, 1
  %5285 = fmul fast float %5280, %5210
  %5286 = fmul fast float %5281, %5211
  %5287 = fadd fast float %5285, -5.000000e-01
  %5288 = fadd fast float %5286, -5.000000e-01
  %5289 = call float @dx.op.unary.f32(i32 22, float %5287)  ; Frc(value)
  %5290 = call float @dx.op.unary.f32(i32 22, float %5288)  ; Frc(value)
  %5291 = fmul fast float %5289, %5289
  %5292 = fmul fast float %5291, %5289
  %5293 = fsub fast float 3.000000e+00, %5289
  %5294 = fmul fast float %5291, %5293
  %5295 = fmul fast float %5289, 3.000000e+00
  %5296 = fmul fast float %5292, 3.000000e+00
  %5297 = fmul fast float %5291, 6.000000e+00
  %5298 = fsub fast float %5296, %5297
  %5299 = fadd fast float %5298, 4.000000e+00
  %5300 = fmul fast float %5299, 0x3FC5555560000000
  %5301 = fmul fast float %5292, -3.000000e+00
  %5302 = fadd fast float %5291, %5289
  %5303 = fmul fast float %5302, 3.000000e+00
  %5304 = fadd fast float %5301, 1.000000e+00
  %5305 = fadd fast float %5304, %5303
  %5306 = fmul fast float %5292, 0x3FC5555560000000
  %5307 = fmul fast float %5290, %5290
  %5308 = fmul fast float %5307, %5290
  %5309 = fsub fast float 3.000000e+00, %5290
  %5310 = fmul fast float %5307, %5309
  %5311 = fmul fast float %5290, 3.000000e+00
  %5312 = fmul fast float %5308, 3.000000e+00
  %5313 = fmul fast float %5307, 6.000000e+00
  %5314 = fsub fast float %5312, %5313
  %5315 = fadd fast float %5314, 4.000000e+00
  %5316 = fmul fast float %5315, 0x3FC5555560000000
  %5317 = fmul fast float %5308, -3.000000e+00
  %5318 = fadd fast float %5307, %5290
  %5319 = fmul fast float %5318, 3.000000e+00
  %5320 = fadd fast float %5317, 1.000000e+00
  %5321 = fadd fast float %5320, %5319
  %5322 = fmul fast float %5308, 0x3FC5555560000000
  %5323 = fadd fast float %5289, 1.000000e+00
  %5324 = fsub fast float 1.000000e+00, %5295
  %5325 = fadd fast float %5324, %5294
  %5326 = fadd fast float %5325, %5299
  %5327 = fmul fast float %5326, 0x3FC5555560000000
  %5328 = fdiv fast float %5300, %5327
  %5329 = fsub fast float %5323, %5328
  %5330 = fsub fast float 1.000000e+00, %5289
  %5331 = fadd fast float %5305, %5292
  %5332 = fmul fast float %5331, 0x3FC5555560000000
  %5333 = fdiv fast float %5306, %5332
  %5334 = fadd fast float %5330, %5333
  %5335 = fadd fast float %5290, 1.000000e+00
  %5336 = fsub fast float 1.000000e+00, %5311
  %5337 = fadd fast float %5336, %5310
  %5338 = fadd fast float %5337, %5315
  %5339 = fmul fast float %5338, 0x3FC5555560000000
  %5340 = fdiv fast float %5316, %5339
  %5341 = fsub fast float %5335, %5340
  %5342 = fsub fast float 1.000000e+00, %5290
  %5343 = fadd fast float %5321, %5308
  %5344 = fmul fast float %5343, 0x3FC5555560000000
  %5345 = fdiv fast float %5322, %5344
  %5346 = fadd fast float %5345, %5342
  %5347 = fmul fast float %5329, %5283
  %5348 = fsub fast float %5210, %5347
  %5349 = fmul fast float %5334, %5283
  %5350 = fadd fast float %5349, %5210
  %5351 = fmul fast float %5346, %5284
  %5352 = fadd fast float %5351, %5211
  %5353 = fmul fast float %5341, %5284
  %5354 = fsub fast float %5211, %5353
  %5355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5348, float %5354, float %5272, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5356 = extractvalue %dx.types.ResRet.f32 %5355, 0
  %5357 = extractvalue %dx.types.ResRet.f32 %5355, 1
  %5358 = extractvalue %dx.types.ResRet.f32 %5355, 2
  %5359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5350, float %5354, float %5272, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.ResRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.ResRet.f32 %5359, 2
  %5363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5348, float %5352, float %5272, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = extractvalue %dx.types.ResRet.f32 %5363, 1
  %5366 = extractvalue %dx.types.ResRet.f32 %5363, 2
  %5367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5350, float %5352, float %5272, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  %5369 = extractvalue %dx.types.ResRet.f32 %5367, 1
  %5370 = extractvalue %dx.types.ResRet.f32 %5367, 2
  %5371 = fsub fast float %5364, %5356
  %5372 = fsub fast float %5365, %5357
  %5373 = fsub fast float %5366, %5358
  %5374 = fmul fast float %5371, %5344
  %5375 = fmul fast float %5372, %5344
  %5376 = fmul fast float %5373, %5344
  %5377 = fadd fast float %5374, %5356
  %5378 = fadd fast float %5375, %5357
  %5379 = fadd fast float %5376, %5358
  %5380 = fsub fast float %5368, %5360
  %5381 = fsub fast float %5369, %5361
  %5382 = fsub fast float %5370, %5362
  %5383 = fmul fast float %5380, %5344
  %5384 = fmul fast float %5381, %5344
  %5385 = fmul fast float %5382, %5344
  %5386 = fsub fast float %5360, %5377
  %5387 = fadd fast float %5386, %5383
  %5388 = fsub fast float %5361, %5378
  %5389 = fadd fast float %5388, %5384
  %5390 = fsub fast float %5362, %5379
  %5391 = fadd fast float %5390, %5385
  %5392 = fmul fast float %5387, %5332
  %5393 = fmul fast float %5389, %5332
  %5394 = fmul fast float %5391, %5332
  %5395 = fadd fast float %5392, %5377
  %5396 = fadd fast float %5393, %5378
  %5397 = fadd fast float %5394, %5379
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 1
  %5400 = fmul fast float %5395, %5399
  %5401 = fmul fast float %5396, %5399
  %5402 = fmul fast float %5397, %5399
  br label %5403

; <label>:5403                                    ; preds = %5235, %5204
  %5404 = phi float [ %5274, %5235 ], [ 1.000000e+00, %5204 ]
  %5405 = phi float [ %5275, %5235 ], [ 1.000000e+00, %5204 ]
  %5406 = phi float [ %5276, %5235 ], [ 1.000000e+00, %5204 ]
  %5407 = phi float [ %5400, %5235 ], [ 0.000000e+00, %5204 ]
  %5408 = phi float [ %5401, %5235 ], [ 0.000000e+00, %5204 ]
  %5409 = phi float [ %5402, %5235 ], [ 0.000000e+00, %5204 ]
  %5410 = fmul fast float %5407, %5181
  %5411 = fmul fast float %5408, %5181
  %5412 = fmul fast float %5409, %5181
  %5413 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5405, float %5406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5410, float %5411, float %5412, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = select i1 %228, float %5413, float %5404
  %5416 = select i1 %228, float %5413, float %5405
  %5417 = select i1 %228, float 1.000000e+00, float %5406
  %5418 = select i1 %228, float %5414, float %5410
  %5419 = select i1 %228, float 0.000000e+00, float %5411
  %5420 = select i1 %228, float 0.000000e+00, float %5412
  %5421 = fmul fast float %5415, %5194
  %5422 = fmul fast float %5416, %5195
  %5423 = fmul fast float %5417, %5196
  %5424 = fadd fast float %5421, %5418
  %5425 = fadd fast float %5422, %5419
  %5426 = fadd fast float %5420, %5423
  %5427 = fmul fast float %5415, %5172
  %5428 = fmul fast float %5416, %5173
  %5429 = fmul fast float %5417, %5174
  %5430 = fmul fast float %90, 2.000000e+00
  %5431 = fmul fast float %5430, %5206
  %5432 = fmul fast float %91, 2.000000e+00
  %5433 = fmul fast float %5432, %5207
  %5434 = fsub fast float 1.000000e+00, %5431
  %5435 = fsub fast float 1.000000e+00, %5433
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = extractvalue %dx.types.CBufRet.f32 %5436, 1
  %5439 = extractvalue %dx.types.CBufRet.f32 %5436, 2
  %5440 = fmul fast float %5434, %5437
  %5441 = fmul fast float %5434, %5438
  %5442 = fmul fast float %5434, %5439
  %5443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5444 = extractvalue %dx.types.CBufRet.f32 %5443, 0
  %5445 = extractvalue %dx.types.CBufRet.f32 %5443, 1
  %5446 = extractvalue %dx.types.CBufRet.f32 %5443, 2
  %5447 = fmul fast float %5435, %5444
  %5448 = fmul fast float %5435, %5445
  %5449 = fmul fast float %5435, %5446
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.CBufRet.f32 %5450, 1
  %5453 = extractvalue %dx.types.CBufRet.f32 %5450, 2
  %5454 = fadd fast float %5447, %5451
  %5455 = fadd fast float %5454, %5440
  %5456 = fadd fast float %5448, %5452
  %5457 = fadd fast float %5456, %5441
  %5458 = fadd fast float %5449, %5453
  %5459 = fadd fast float %5458, %5442
  %5460 = fmul fast float %5455, %188
  %5461 = fmul fast float %5457, %188
  %5462 = fmul fast float %5459, %188
  br label %5463

; <label>:5463                                    ; preds = %5403, %5171
  %5464 = phi float [ %5460, %5403 ], [ %137, %5171 ]
  %5465 = phi float [ %5461, %5403 ], [ %138, %5171 ]
  %5466 = phi float [ %5462, %5403 ], [ %139, %5171 ]
  %5467 = phi float [ %188, %5403 ], [ %81, %5171 ]
  %5468 = phi float [ %5424, %5403 ], [ %5194, %5171 ]
  %5469 = phi float [ %5425, %5403 ], [ %5195, %5171 ]
  %5470 = phi float [ %5426, %5403 ], [ %5196, %5171 ]
  %5471 = phi float [ %5427, %5403 ], [ %5172, %5171 ]
  %5472 = phi float [ %5428, %5403 ], [ %5173, %5171 ]
  %5473 = phi float [ %5429, %5403 ], [ %5174, %5171 ]
  %5474 = phi float [ %5404, %5403 ], [ 1.000000e+00, %5171 ]
  br i1 %5203, label %6629, label %5475

; <label>:5475                                    ; preds = %5463
  %5476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.CBufRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.CBufRet.f32 %5476, 2
  %5480 = extractvalue %dx.types.CBufRet.f32 %5476, 3
  %5481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5482 = extractvalue %dx.types.CBufRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.CBufRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.CBufRet.f32 %5481, 2
  %5485 = extractvalue %dx.types.CBufRet.f32 %5481, 3
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5490 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5492 = extractvalue %dx.types.CBufRet.f32 %5491, 0
  %5493 = extractvalue %dx.types.CBufRet.f32 %5491, 1
  %5494 = extractvalue %dx.types.CBufRet.f32 %5491, 2
  %5495 = extractvalue %dx.types.CBufRet.f32 %5491, 3
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 3
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 3
  %5500 = extractvalue %dx.types.CBufRet.f32 %5498, 0
  %5501 = extractvalue %dx.types.CBufRet.f32 %5498, 1
  %5502 = extractvalue %dx.types.CBufRet.f32 %5498, 2
  %5503 = fcmp fast olt float %5502, -5.000000e-01
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = call float @dx.op.unary.f32(i32 25, float %5504)  ; Rsqrt(value)
  %5506 = fmul fast float %5505, %5504
  %5507 = fmul fast float %5505, %5464
  %5508 = fmul fast float %5505, %5465
  %5509 = fmul fast float %5505, %5466
  %5510 = fadd fast float %5506, %5480
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5477, float %5478, float %5479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.i32 %5512, 1
  %5514 = and i32 %5513, 1
  %5515 = icmp ne i32 %5514, 0
  %5516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5517 = extractvalue %dx.types.CBufRet.f32 %5516, 2
  %5518 = fcmp fast ogt float %5517, 0.000000e+00
  %5519 = and i1 %5515, %5518
  br i1 %5519, label %5520, label %5926, !dx.controlflow.hints !133

; <label>:5520                                    ; preds = %5475
  %5521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5522 = extractvalue %dx.types.CBufRet.f32 %5521, 3
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 2
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5527 = fsub fast float %5524, %5526
  %5528 = and i32 %5513, 2
  %5529 = extractvalue %dx.types.CBufRet.i32 %5512, 0
  %5530 = call i32 @dx.op.binary.i32(i32 40, i32 %5529, i32 3)  ; UMin(a,b)
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 0
  %5533 = extractvalue %dx.types.CBufRet.f32 %5531, 1
  %5534 = extractvalue %dx.types.CBufRet.f32 %5525, 0
  %5535 = extractvalue %dx.types.CBufRet.f32 %5525, 1
  %5536 = fsub fast float %5532, %5534
  %5537 = fsub fast float %5533, %5535
  %5538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5539 = extractvalue %dx.types.CBufRet.f32 %5538, 0
  %5540 = fcmp fast ogt float %5539, 0.000000e+00
  %5541 = fsub fast float -0.000000e+00, %5536
  %5542 = fsub fast float -0.000000e+00, %5537
  %5543 = call float @dx.op.dot2.f32(i32 54, float %5507, float %5508, float %5507, float %5508)  ; Dot2(ax,ay,bx,by)
  %5544 = call float @dx.op.dot2.f32(i32 54, float %5507, float %5508, float %5541, float %5542)  ; Dot2(ax,ay,bx,by)
  %5545 = fmul fast float %5544, 2.000000e+00
  %5546 = call float @dx.op.dot2.f32(i32 54, float %5541, float %5542, float %5541, float %5542)  ; Dot2(ax,ay,bx,by)
  %5547 = fmul fast float %5539, %5539
  %5548 = fsub fast float %5546, %5547
  %5549 = fmul fast float %5545, %5545
  %5550 = fmul fast float %5543, 4.000000e+00
  %5551 = fmul fast float %5550, %5548
  %5552 = fsub fast float %5549, %5551
  %5553 = fcmp fast ogt float %5552, 0.000000e+00
  br i1 %5553, label %5554, label %5569

; <label>:5554                                    ; preds = %5520
  %5555 = fcmp fast ogt float %5545, 0.000000e+00
  %5556 = call float @dx.op.unary.f32(i32 24, float %5552)  ; Sqrt(value)
  %5557 = fsub fast float -0.000000e+00, %5556
  %5558 = select i1 %5555, float %5556, float %5557
  %5559 = fadd fast float %5558, %5545
  %5560 = fmul float %5559, -5.000000e-01
  %5561 = fdiv fast float %5560, %5543
  %5562 = call float @dx.op.binary.f32(i32 35, float %5561, float 0.000000e+00)  ; FMax(a,b)
  %5563 = call float @dx.op.binary.f32(i32 36, float %5506, float %5562)  ; FMin(a,b)
  %5564 = fdiv fast float %5548, %5560
  %5565 = call float @dx.op.binary.f32(i32 35, float %5564, float 0.000000e+00)  ; FMax(a,b)
  %5566 = call float @dx.op.binary.f32(i32 36, float %5506, float %5565)  ; FMin(a,b)
  %5567 = call float @dx.op.binary.f32(i32 36, float %5563, float %5566)  ; FMin(a,b)
  %5568 = call float @dx.op.binary.f32(i32 35, float %5563, float %5566)  ; FMax(a,b)
  br label %5569

; <label>:5569                                    ; preds = %5554, %5520
  %5570 = phi float [ %5568, %5554 ], [ -1.000000e+00, %5520 ]
  %5571 = phi float [ %5567, %5554 ], [ -1.000000e+00, %5520 ]
  %5572 = phi i1 [ true, %5554 ], [ false, %5520 ]
  %5573 = and i1 %5540, %5572
  br i1 %5573, label %5574, label %5576

; <label>:5574                                    ; preds = %5569
  %5575 = fcmp fast oeq float %5571, %5570
  br i1 %5575, label %5879, label %5577

; <label>:5576                                    ; preds = %5569
  br i1 %5540, label %5879, label %5577

; <label>:5577                                    ; preds = %5576, %5574
  %5578 = phi float [ %5506, %5576 ], [ %5570, %5574 ]
  %5579 = phi float [ 0.000000e+00, %5576 ], [ %5571, %5574 ]
  %5580 = icmp ne i32 %5528, 0
  %5581 = fmul fast float %5578, %5509
  %5582 = fadd fast float %5581, %5522
  %5583 = fmul fast float %5582, %5578
  %5584 = select i1 %5580, float 0.000000e+00, float %5583
  %5585 = fcmp fast oeq float %5509, 0.000000e+00
  %5586 = fdiv fast float %5527, %5509
  %5587 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5586)  ; FMax(a,b)
  %5588 = select i1 %5585, float %5578, float %5587
  %5589 = call float @dx.op.binary.f32(i32 36, float %5578, float %5588)  ; FMin(a,b)
  %5590 = fcmp fast ogt float %5509, 0.000000e+00
  %5591 = fcmp fast olt float %5527, 0.000000e+00
  br i1 %5590, label %5592, label %5649

; <label>:5592                                    ; preds = %5577
  %5593 = icmp eq i32 %5528, 0
  br i1 %5591, label %5594, label %5638

; <label>:5594                                    ; preds = %5592
  %5595 = select i1 %5593, float %5578, float 0.000000e+00
  %5596 = fsub fast float -0.000000e+00, %5595
  %5597 = call float @dx.op.unary.f32(i32 6, float %5596)  ; FAbs(value)
  %5598 = fmul fast float %5595, %5509
  %5599 = fadd fast float %5598, %5522
  %5600 = fmul fast float %5597, %5599
  %5601 = fsub fast float %5584, %5600
  %5602 = fsub fast float %5578, %5597
  %5603 = select i1 %5593, float %5602, float 0.000000e+00
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 0
  %5606 = extractvalue %dx.types.CBufRet.f32 %5604, 1
  %5607 = extractvalue %dx.types.CBufRet.f32 %5604, 2
  %5608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.CBufRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.CBufRet.f32 %5608, 2
  %5612 = extractvalue %dx.types.CBufRet.f32 %5608, 3
  %5613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.f32 %5613, 3
  %5615 = call float @dx.op.binary.f32(i32 36, float %5601, float %5614)  ; FMin(a,b)
  %5616 = fmul fast float %5612, %5603
  %5617 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5618 = fsub fast float %5609, %5605
  %5619 = fsub fast float %5610, %5606
  %5620 = fsub fast float %5611, %5607
  %5621 = fmul fast float %5617, %5618
  %5622 = fmul fast float %5617, %5619
  %5623 = fmul fast float %5617, %5620
  %5624 = fadd fast float %5621, %5605
  %5625 = fadd fast float %5622, %5606
  %5626 = fadd fast float %5623, %5607
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.CBufRet.f32 %5627, 1
  %5630 = fadd fast float %5629, %5628
  %5631 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5632 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %5633 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5634 = fadd fast float %5633, %5632
  %5635 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5636 = fmul fast float %5631, %5615
  %5637 = fmul fast float %5636, %5635
  br label %5879

; <label>:5638                                    ; preds = %5592
  br i1 %5593, label %5639, label %5660

; <label>:5639                                    ; preds = %5638
  %5640 = call float @dx.op.binary.f32(i32 36, float %5589, float %5579)  ; FMin(a,b)
  %5641 = fsub fast float %5589, %5640
  %5642 = fsub fast float %5641, %5578
  %5643 = call float @dx.op.unary.f32(i32 6, float %5642)  ; FAbs(value)
  %5644 = fadd fast float %5641, %5578
  %5645 = fmul fast float %5644, %5509
  %5646 = fadd fast float %5645, %5522
  %5647 = fmul fast float %5646, %5643
  %5648 = fsub fast float %5584, %5647
  br label %5660

; <label>:5649                                    ; preds = %5577
  br i1 %5591, label %5650, label %5660

; <label>:5650                                    ; preds = %5649
  %5651 = call float @dx.op.binary.f32(i32 35, float %5579, float %5589)  ; FMax(a,b)
  %5652 = icmp eq i32 %5528, 0
  %5653 = select i1 %5652, float %5589, float 0.000000e+00
  %5654 = fsub fast float -0.000000e+00, %5653
  %5655 = call float @dx.op.unary.f32(i32 6, float %5654)  ; FAbs(value)
  %5656 = fmul fast float %5653, %5509
  %5657 = fadd fast float %5656, %5522
  %5658 = fmul fast float %5655, %5657
  %5659 = fsub fast float %5584, %5658
  br label %5660

; <label>:5660                                    ; preds = %5650, %5649, %5639, %5638
  %5661 = phi float [ %5579, %5638 ], [ %5579, %5639 ], [ %5651, %5650 ], [ %5579, %5649 ]
  %5662 = phi float [ 0.000000e+00, %5638 ], [ %5643, %5639 ], [ %5655, %5650 ], [ 0.000000e+00, %5649 ]
  %5663 = phi float [ %5584, %5638 ], [ %5648, %5639 ], [ %5659, %5650 ], [ %5584, %5649 ]
  %5664 = phi float [ %5589, %5638 ], [ %5589, %5639 ], [ %5578, %5650 ], [ %5578, %5649 ]
  %5665 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %5665, align 4, !tbaa !134, !noalias !136
  %5666 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %5666, align 4, !tbaa !134, !noalias !136
  %5667 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %5667, align 4, !tbaa !134, !noalias !136
  %5668 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %5668, align 4, !tbaa !134, !noalias !136
  %5669 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %5669, align 4, !tbaa !134, !noalias !136
  %5670 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %5670, align 4, !tbaa !134, !noalias !136
  %5671 = icmp sgt i32 %5530, 0
  br i1 %5671, label %5672, label %5733

; <label>:5672                                    ; preds = %5660
  br label %5673

; <label>:5673                                    ; preds = %5722, %5672
  %5674 = phi i32 [ %5723, %5722 ], [ 0, %5672 ]
  %5675 = phi i32 [ %5724, %5722 ], [ 0, %5672 ]
  %5676 = add nuw i32 %5675, 171
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %5676)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5679 = extractvalue %dx.types.CBufRet.f32 %5677, 1
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.CBufRet.f32 %5680, 1
  %5683 = fsub fast float %5678, %5681
  %5684 = fsub fast float %5679, %5682
  %5685 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5686 = fsub fast float -0.000000e+00, %5683
  %5687 = fsub fast float -0.000000e+00, %5684
  %5688 = call float @dx.op.dot2.f32(i32 54, float %5507, float %5508, float %5686, float %5687)  ; Dot2(ax,ay,bx,by)
  %5689 = fmul fast float %5688, 2.000000e+00
  %5690 = call float @dx.op.dot2.f32(i32 54, float %5686, float %5687, float %5686, float %5687)  ; Dot2(ax,ay,bx,by)
  %5691 = fmul fast float %5685, %5685
  %5692 = fsub fast float %5690, %5691
  %5693 = fmul fast float %5689, %5689
  %5694 = fmul fast float %5550, %5692
  %5695 = fsub fast float %5693, %5694
  %5696 = fcmp fast ogt float %5695, 0.000000e+00
  br i1 %5696, label %5697, label %5712

; <label>:5697                                    ; preds = %5673
  %5698 = fcmp fast ogt float %5689, 0.000000e+00
  %5699 = call float @dx.op.unary.f32(i32 24, float %5695)  ; Sqrt(value)
  %5700 = fsub fast float -0.000000e+00, %5699
  %5701 = select i1 %5698, float %5699, float %5700
  %5702 = fadd fast float %5701, %5689
  %5703 = fmul float %5702, -5.000000e-01
  %5704 = fdiv fast float %5703, %5543
  %5705 = call float @dx.op.binary.f32(i32 35, float %5704, float 0.000000e+00)  ; FMax(a,b)
  %5706 = call float @dx.op.binary.f32(i32 36, float %5578, float %5705)  ; FMin(a,b)
  %5707 = fdiv fast float %5692, %5703
  %5708 = call float @dx.op.binary.f32(i32 35, float %5707, float 0.000000e+00)  ; FMax(a,b)
  %5709 = call float @dx.op.binary.f32(i32 36, float %5578, float %5708)  ; FMin(a,b)
  %5710 = call float @dx.op.binary.f32(i32 36, float %5706, float %5709)  ; FMin(a,b)
  %5711 = call float @dx.op.binary.f32(i32 35, float %5706, float %5709)  ; FMax(a,b)
  br label %5712

; <label>:5712                                    ; preds = %5697, %5673
  %5713 = phi float [ %5711, %5697 ], [ -1.000000e+00, %5673 ]
  %5714 = phi float [ %5710, %5697 ], [ -1.000000e+00, %5673 ]
  %5715 = phi i1 [ true, %5697 ], [ false, %5673 ]
  br i1 %5715, label %5716, label %5722

; <label>:5716                                    ; preds = %5712
  %5717 = call float @dx.op.binary.f32(i32 35, float %5661, float %5714)  ; FMax(a,b)
  %5718 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %5675
  store float %5717, float* %5718, align 4, !tbaa !134, !noalias !136
  %5719 = call float @dx.op.binary.f32(i32 35, float %5661, float %5713)  ; FMax(a,b)
  %5720 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5675
  store float %5719, float* %5720, align 4, !tbaa !134, !noalias !136
  %5721 = add nsw i32 %5674, 1
  br label %5722

; <label>:5722                                    ; preds = %5716, %5712
  %5723 = phi i32 [ %5721, %5716 ], [ %5674, %5712 ]
  %5724 = add nuw nsw i32 %5675, 1
  %5725 = icmp eq i32 %5724, %5530
  br i1 %5725, label %5726, label %5673

; <label>:5726                                    ; preds = %5722
  %5727 = load float, float* %5667, align 4, !tbaa !134, !alias.scope !152, !noalias !155
  %5728 = load float, float* %5666, align 4, !tbaa !134, !alias.scope !158, !noalias !159
  %5729 = load float, float* %5665, align 4, !tbaa !134, !alias.scope !160, !noalias !161
  %5730 = load float, float* %5670, align 4, !tbaa !134, !alias.scope !162, !noalias !165
  %5731 = load float, float* %5669, align 4, !tbaa !134, !alias.scope !168, !noalias !169
  %5732 = load float, float* %5668, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  br label %5733

; <label>:5733                                    ; preds = %5726, %5660
  %5734 = phi float [ -1.000000e+00, %5660 ], [ %5732, %5726 ]
  %5735 = phi float [ -1.000000e+00, %5660 ], [ %5731, %5726 ]
  %5736 = phi float [ -1.000000e+00, %5660 ], [ %5730, %5726 ]
  %5737 = phi float [ -1.000000e+00, %5660 ], [ %5729, %5726 ]
  %5738 = phi float [ -1.000000e+00, %5660 ], [ %5728, %5726 ]
  %5739 = phi float [ -1.000000e+00, %5660 ], [ %5727, %5726 ]
  %5740 = phi i32 [ 0, %5660 ], [ %5723, %5726 ]
  %5741 = call float @dx.op.binary.f32(i32 36, float %5738, float %5739)  ; FMin(a,b)
  %5742 = call float @dx.op.binary.f32(i32 36, float %5737, float %5741)  ; FMin(a,b)
  %5743 = call float @dx.op.binary.f32(i32 35, float %5737, float %5738)  ; FMax(a,b)
  %5744 = call float @dx.op.binary.f32(i32 36, float %5743, float %5739)  ; FMin(a,b)
  %5745 = call float @dx.op.binary.f32(i32 36, float %5737, float %5738)  ; FMin(a,b)
  %5746 = call float @dx.op.binary.f32(i32 35, float %5745, float %5744)  ; FMax(a,b)
  %5747 = call float @dx.op.binary.f32(i32 35, float %5738, float %5739)  ; FMax(a,b)
  %5748 = call float @dx.op.binary.f32(i32 35, float %5737, float %5747)  ; FMax(a,b)
  store float %5742, float* %5665, align 4, !tbaa !134, !alias.scope !160, !noalias !161
  store float %5746, float* %5666, align 4, !tbaa !134, !alias.scope !158, !noalias !159
  store float %5748, float* %5667, align 4, !tbaa !134, !alias.scope !152, !noalias !155
  %5749 = call float @dx.op.binary.f32(i32 36, float %5735, float %5736)  ; FMin(a,b)
  %5750 = call float @dx.op.binary.f32(i32 36, float %5734, float %5749)  ; FMin(a,b)
  %5751 = call float @dx.op.binary.f32(i32 35, float %5734, float %5735)  ; FMax(a,b)
  %5752 = call float @dx.op.binary.f32(i32 36, float %5751, float %5736)  ; FMin(a,b)
  %5753 = call float @dx.op.binary.f32(i32 36, float %5734, float %5735)  ; FMin(a,b)
  %5754 = call float @dx.op.binary.f32(i32 35, float %5753, float %5752)  ; FMax(a,b)
  %5755 = call float @dx.op.binary.f32(i32 35, float %5735, float %5736)  ; FMax(a,b)
  %5756 = call float @dx.op.binary.f32(i32 35, float %5734, float %5755)  ; FMax(a,b)
  store float %5750, float* %5668, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  store float %5754, float* %5669, align 4, !tbaa !134, !alias.scope !168, !noalias !169
  store float %5756, float* %5670, align 4, !tbaa !134, !alias.scope !162, !noalias !165
  %5757 = sub nsw i32 3, %5740
  %5758 = icmp sgt i32 %5757, 2
  br i1 %5758, label %5759, label %5797

; <label>:5759                                    ; preds = %5733
  %5760 = icmp eq i32 %5528, 0
  %5761 = fsub fast float %5578, %5662
  %5762 = select i1 %5760, float %5761, float %5662
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 0
  %5765 = extractvalue %dx.types.CBufRet.f32 %5763, 1
  %5766 = extractvalue %dx.types.CBufRet.f32 %5763, 2
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5769 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5770 = extractvalue %dx.types.CBufRet.f32 %5767, 2
  %5771 = extractvalue %dx.types.CBufRet.f32 %5767, 3
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 3
  %5774 = call float @dx.op.binary.f32(i32 36, float %5663, float %5773)  ; FMin(a,b)
  %5775 = fmul fast float %5771, %5762
  %5776 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5777 = fsub fast float %5768, %5764
  %5778 = fsub fast float %5769, %5765
  %5779 = fsub fast float %5770, %5766
  %5780 = fmul fast float %5776, %5777
  %5781 = fmul fast float %5776, %5778
  %5782 = fmul fast float %5776, %5779
  %5783 = fadd fast float %5780, %5764
  %5784 = fadd fast float %5781, %5765
  %5785 = fadd fast float %5782, %5766
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5789 = fadd fast float %5788, %5787
  %5790 = call float @dx.op.unary.f32(i32 7, float %5789)  ; Saturate(value)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5792 = extractvalue %dx.types.CBufRet.f32 %5786, 3
  %5793 = fadd fast float %5792, %5791
  %5794 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5795 = fmul fast float %5790, %5774
  %5796 = fmul fast float %5795, %5794
  br label %5879

; <label>:5797                                    ; preds = %5733
  %5798 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %5757
  %5799 = load float, float* %5798, align 4, !tbaa !134, !noalias !136
  %5800 = fcmp fast olt float %5799, %5664
  %5801 = icmp sgt i32 %5740, 0
  %5802 = and i1 %5801, %5800
  br i1 %5802, label %5803, label %5840

; <label>:5803                                    ; preds = %5797
  br label %5804

; <label>:5804                                    ; preds = %5833, %5803
  %5805 = phi float [ %5834, %5833 ], [ %5662, %5803 ]
  %5806 = phi float [ %5835, %5833 ], [ %5663, %5803 ]
  %5807 = phi float [ %5815, %5833 ], [ %5799, %5803 ]
  %5808 = phi i32 [ %5812, %5833 ], [ %5757, %5803 ]
  %5809 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5808
  %5810 = load float, float* %5809, align 4, !tbaa !134, !noalias !136
  %5811 = icmp slt i32 %5808, 2
  %5812 = add nsw i32 %5808, 1
  %5813 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %5812
  %5814 = load float, float* %5813, align 4, !tbaa !134, !noalias !136
  %5815 = select i1 %5811, float %5814, float %5578
  %5816 = call float @dx.op.binary.f32(i32 36, float %5815, float %5810)  ; FMin(a,b)
  %5817 = call float @dx.op.binary.f32(i32 36, float %5664, float %5816)  ; FMin(a,b)
  %5818 = icmp eq i32 %5528, 0
  %5819 = fadd fast float %5817, %5807
  %5820 = fmul fast float %5819, %5509
  %5821 = fadd fast float %5820, %5522
  br i1 %5818, label %5827, label %5822

; <label>:5822                                    ; preds = %5804
  %5823 = fsub fast float %5817, %5807
  %5824 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5823)  ; FMax(a,b)
  %5825 = fmul fast float %5824, %5821
  %5826 = fadd fast float %5825, %5806
  br label %5833

; <label>:5827                                    ; preds = %5804
  %5828 = fsub fast float %5807, %5817
  %5829 = call float @dx.op.unary.f32(i32 6, float %5828)  ; FAbs(value)
  %5830 = fadd fast float %5829, %5805
  %5831 = fmul fast float %5829, %5821
  %5832 = fsub fast float %5806, %5831
  br label %5833

; <label>:5833                                    ; preds = %5827, %5822
  %5834 = phi float [ %5824, %5822 ], [ %5830, %5827 ]
  %5835 = phi float [ %5826, %5822 ], [ %5832, %5827 ]
  %5836 = fcmp fast olt float %5815, %5664
  %5837 = icmp slt i32 %5812, 3
  %5838 = and i1 %5837, %5836
  br i1 %5838, label %5804, label %5839

; <label>:5839                                    ; preds = %5833
  br label %5840

; <label>:5840                                    ; preds = %5839, %5797
  %5841 = phi float [ %5662, %5797 ], [ %5834, %5839 ]
  %5842 = phi float [ %5663, %5797 ], [ %5835, %5839 ]
  %5843 = fsub fast float %5578, %5841
  %5844 = select i1 %5580, float %5841, float %5843
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5848 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = extractvalue %dx.types.CBufRet.f32 %5849, 1
  %5852 = extractvalue %dx.types.CBufRet.f32 %5849, 2
  %5853 = extractvalue %dx.types.CBufRet.f32 %5849, 3
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 3
  %5856 = call float @dx.op.binary.f32(i32 36, float %5842, float %5855)  ; FMin(a,b)
  %5857 = fmul fast float %5853, %5844
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = fsub fast float %5850, %5846
  %5860 = fsub fast float %5851, %5847
  %5861 = fsub fast float %5852, %5848
  %5862 = fmul fast float %5858, %5859
  %5863 = fmul fast float %5858, %5860
  %5864 = fmul fast float %5858, %5861
  %5865 = fadd fast float %5862, %5846
  %5866 = fadd fast float %5863, %5847
  %5867 = fadd fast float %5864, %5848
  %5868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5869 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.CBufRet.f32 %5868, 1
  %5871 = fadd fast float %5870, %5869
  %5872 = call float @dx.op.unary.f32(i32 7, float %5871)  ; Saturate(value)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5868, 2
  %5874 = extractvalue %dx.types.CBufRet.f32 %5868, 3
  %5875 = fadd fast float %5874, %5873
  %5876 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  %5877 = fmul fast float %5872, %5856
  %5878 = fmul fast float %5877, %5876
  br label %5879

; <label>:5879                                    ; preds = %5840, %5759, %5594, %5576, %5574
  %5880 = phi float [ %5603, %5594 ], [ %5762, %5759 ], [ %5844, %5840 ], [ 0.000000e+00, %5574 ], [ 0.000000e+00, %5576 ]
  %5881 = phi float [ %5637, %5594 ], [ %5796, %5759 ], [ %5878, %5840 ], [ 0.000000e+00, %5574 ], [ 0.000000e+00, %5576 ]
  %5882 = phi float [ %5624, %5594 ], [ %5783, %5759 ], [ %5865, %5840 ], [ 0.000000e+00, %5574 ], [ 0.000000e+00, %5576 ]
  %5883 = phi float [ %5625, %5594 ], [ %5784, %5759 ], [ %5866, %5840 ], [ 0.000000e+00, %5574 ], [ 0.000000e+00, %5576 ]
  %5884 = phi float [ %5626, %5594 ], [ %5785, %5759 ], [ %5867, %5840 ], [ 0.000000e+00, %5574 ], [ 0.000000e+00, %5576 ]
  %5885 = fmul fast float %5517, %5881
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 2
  %5888 = fsub fast float %5524, %5887
  %5889 = fcmp fast olt float %5885, -2.000000e+01
  %5890 = call float @dx.op.unary.f32(i32 21, float %5885)  ; Exp(value)
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 2
  %5893 = extractvalue %dx.types.CBufRet.f32 %5891, 3
  %5894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5895 = extractvalue %dx.types.CBufRet.f32 %5894, 2
  %5896 = fmul fast float %5893, %5888
  %5897 = call float @dx.op.unary.f32(i32 7, float %5896)  ; Saturate(value)
  %5898 = fsub fast float 1.000000e+00, %5897
  %5899 = fmul fast float %5509, 5.000000e-01
  %5900 = fadd fast float %5899, 5.000000e-01
  %5901 = call float @dx.op.unary.f32(i32 7, float %5900)  ; Saturate(value)
  %5902 = fsub fast float 1.000000e+00, %5901
  %5903 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5898)  ; FMax(a,b)
  %5904 = fdiv fast float %5902, %5903
  %5905 = fsub fast float %5888, %5466
  %5906 = call float @dx.op.unary.f32(i32 6, float %5905)  ; FAbs(value)
  %5907 = fmul fast float %5906, %5892
  %5908 = call float @dx.op.unary.f32(i32 7, float %5904)  ; Saturate(value)
  %5909 = fsub fast float 1.000000e+00, %5907
  %5910 = fmul fast float %5909, %5908
  %5911 = fadd fast float %5910, %5907
  %5912 = fmul fast float %5895, %5888
  %5913 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  %5914 = fsub fast float 1.000000e+00, %5911
  %5915 = fmul fast float %5914, %5913
  %5916 = fadd fast float %5915, %5911
  %5917 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  %5918 = fadd fast float %5890, -1.000000e+00
  %5919 = select i1 %5889, float -1.000000e+00, float %5918
  %5920 = fmul fast float %5917, %5919
  %5921 = fadd fast float %5920, 1.000000e+00
  %5922 = fsub fast float -0.000000e+00, %5920
  %5923 = fmul fast float %5882, %5922
  %5924 = fmul fast float %5883, %5922
  %5925 = fmul fast float %5884, %5922
  br label %5926

; <label>:5926                                    ; preds = %5879, %5475
  %5927 = phi float [ %5880, %5879 ], [ 0.000000e+00, %5475 ]
  %5928 = phi float [ %5921, %5879 ], [ 1.000000e+00, %5475 ]
  %5929 = phi float [ %5923, %5879 ], [ 0.000000e+00, %5475 ]
  %5930 = phi float [ %5924, %5879 ], [ 0.000000e+00, %5475 ]
  %5931 = phi float [ %5925, %5879 ], [ 0.000000e+00, %5475 ]
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 1
  %5934 = fsub fast float 1.000000e+00, %5928
  %5935 = fmul fast float %5934, %5510
  %5936 = fmul fast float %5935, %5933
  %5937 = fsub fast float %5510, %5936
  br i1 %5503, label %5938, label %5967, !dx.controlflow.hints !172

; <label>:5938                                    ; preds = %5926
  %5939 = fmul fast float %5511, %5500
  %5940 = fadd fast float %5939, %5501
  %5941 = call float @dx.op.unary.f32(i32 7, float %5940)  ; Saturate(value)
  %5942 = fmul fast float %5482, %5937
  %5943 = fsub fast float -0.000000e+00, %5942
  %5944 = fmul fast float %5483, %5937
  %5945 = fsub fast float -0.000000e+00, %5944
  %5946 = call float @dx.op.unary.f32(i32 21, float %5943)  ; Exp(value)
  %5947 = call float @dx.op.unary.f32(i32 21, float %5945)  ; Exp(value)
  %5948 = call float @dx.op.binary.f32(i32 35, float %5490, float %5946)  ; FMax(a,b)
  %5949 = call float @dx.op.binary.f32(i32 35, float %5490, float %5947)  ; FMax(a,b)
  %5950 = fsub fast float %5949, %5948
  %5951 = fmul fast float %5950, %5941
  %5952 = fadd fast float %5951, %5948
  %5953 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  %5954 = fsub fast float %5487, %5492
  %5955 = fsub fast float %5488, %5493
  %5956 = fsub fast float %5489, %5494
  %5957 = fmul fast float %5941, %5954
  %5958 = fmul fast float %5941, %5955
  %5959 = fmul fast float %5941, %5956
  %5960 = fadd fast float %5957, %5492
  %5961 = fadd fast float %5958, %5493
  %5962 = fadd fast float %5959, %5494
  %5963 = fsub fast float 1.000000e+00, %5953
  %5964 = fmul fast float %5963, %5960
  %5965 = fmul fast float %5963, %5961
  %5966 = fmul fast float %5963, %5962
  br label %6026

; <label>:5967                                    ; preds = %5926
  %5968 = fmul fast float %5937, %5499
  %5969 = call float @dx.op.unary.f32(i32 7, float %5968)  ; Saturate(value)
  %5970 = fsub fast float 2.000000e+00, %5969
  %5971 = fmul fast float %5969, 9.921875e-01
  %5972 = fmul fast float %5971, %5970
  %5973 = fadd fast float %5972, 3.906250e-03
  %5974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %5973, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5975 = extractvalue %dx.types.ResRet.f32 %5974, 0
  %5976 = fsub fast float %5969, %5975
  %5977 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5976)  ; FMax(a,b)
  %5978 = fmul fast float %5485, %5466
  %5979 = call float @dx.op.unary.f32(i32 6, float %5978)  ; FAbs(value)
  %5980 = fcmp fast ogt float %5979, 0x3EB0C6F7A0000000
  br i1 %5980, label %5981, label %5987, !dx.controlflow.hints !173

; <label>:5981                                    ; preds = %5967
  %5982 = fmul fast float %5978, 0xBFF7154760000000
  %5983 = call float @dx.op.unary.f32(i32 21, float %5982)  ; Exp(value)
  %5984 = fsub fast float 1.000000e+00, %5983
  %5985 = fdiv fast float %5984, %5978
  %5986 = fmul fast float %5985, %5495
  br label %5987

; <label>:5987                                    ; preds = %5981, %5967
  %5988 = phi float [ %5986, %5981 ], [ %5495, %5967 ]
  %5989 = fadd fast float %5988, %5497
  %5990 = fmul fast float %5989, %5977
  %5991 = fmul fast float %5482, %5990
  %5992 = fsub fast float -0.000000e+00, %5991
  %5993 = fmul fast float %5483, %5990
  %5994 = fsub fast float -0.000000e+00, %5993
  %5995 = fmul fast float %5484, %5990
  %5996 = fsub fast float -0.000000e+00, %5995
  %5997 = call float @dx.op.unary.f32(i32 21, float %5992)  ; Exp(value)
  %5998 = call float @dx.op.unary.f32(i32 21, float %5994)  ; Exp(value)
  %5999 = call float @dx.op.unary.f32(i32 21, float %5996)  ; Exp(value)
  %6000 = fmul fast float %5511, %5511
  %6001 = fadd fast float %6000, 1.000000e+00
  %6002 = fmul fast float %6001, 0x3FAE8EC8A0000000
  %6003 = fmul fast float %6002, %5492
  %6004 = fmul fast float %6002, %5493
  %6005 = fmul fast float %6002, %5494
  %6006 = fmul fast float %5511, %5490
  %6007 = fsub fast float 1.000000e+00, %6006
  %6008 = fmul fast float %5490, %5490
  %6009 = fsub fast float 1.000000e+00, %6008
  %6010 = fmul fast float %6009, 0x3FB45F3060000000
  %6011 = fmul fast float %6007, %6007
  %6012 = fdiv fast float 1.000000e+00, %6011
  %6013 = fmul fast float %6010, %6012
  %6014 = fmul fast float %6013, %5487
  %6015 = fmul fast float %6013, %5488
  %6016 = fmul fast float %6013, %5489
  %6017 = fadd fast float %6014, %6003
  %6018 = fadd fast float %6015, %6004
  %6019 = fadd fast float %6016, %6005
  %6020 = fsub fast float 1.000000e+00, %5997
  %6021 = fsub fast float 1.000000e+00, %5998
  %6022 = fsub fast float 1.000000e+00, %5999
  %6023 = fmul fast float %6017, %6020
  %6024 = fmul fast float %6018, %6021
  %6025 = fmul fast float %6019, %6022
  br label %6026

; <label>:6026                                    ; preds = %5987, %5938
  %6027 = phi float [ %5964, %5938 ], [ %6023, %5987 ]
  %6028 = phi float [ %5965, %5938 ], [ %6024, %5987 ]
  %6029 = phi float [ %5966, %5938 ], [ %6025, %5987 ]
  %6030 = phi float [ %5953, %5938 ], [ %5997, %5987 ]
  %6031 = phi float [ %5953, %5938 ], [ %5998, %5987 ]
  %6032 = phi float [ %5953, %5938 ], [ %5999, %5987 ]
  br i1 %5519, label %6033, label %6231, !dx.controlflow.hints !174

; <label>:6033                                    ; preds = %6026
  %6034 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %6035 = fmul fast float %6034, %5934
  %6036 = fsub fast float %5929, %6027
  %6037 = fsub fast float %5930, %6028
  %6038 = fsub fast float %5931, %6029
  %6039 = fmul fast float %6035, %6036
  %6040 = fmul fast float %6035, %6037
  %6041 = fmul fast float %6035, %6038
  %6042 = fadd fast float %6039, %6027
  %6043 = fadd fast float %6040, %6028
  %6044 = fadd fast float %6041, %6029
  %6045 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6030)  ; FMax(a,b)
  %6046 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6031)  ; FMax(a,b)
  %6047 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6032)  ; FMax(a,b)
  %6048 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5928)  ; FMax(a,b)
  %6049 = call float @dx.op.binary.f32(i32 35, float %5927, float %5937)  ; FMax(a,b)
  %6050 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6049)  ; FMax(a,b)
  %6051 = fdiv fast float %5927, %6050
  %6052 = call float @dx.op.unary.f32(i32 7, float %6051)  ; Saturate(value)
  %6053 = fdiv fast float %5937, %6050
  %6054 = call float @dx.op.unary.f32(i32 7, float %6053)  ; Saturate(value)
  %6055 = fcmp fast une float %6048, 1.000000e+00
  br i1 %6055, label %6056, label %6069, !dx.controlflow.hints !175

; <label>:6056                                    ; preds = %6033
  %6057 = call float @dx.op.unary.f32(i32 23, float %6048)  ; Log(value)
  %6058 = fmul fast float %6057, 0x3FE62E4300000000
  %6059 = fmul fast float %5929, %6058
  %6060 = fsub fast float -0.000000e+00, %6059
  %6061 = fmul fast float %5930, %6058
  %6062 = fsub fast float -0.000000e+00, %6061
  %6063 = fmul fast float %5931, %6058
  %6064 = fsub fast float -0.000000e+00, %6063
  %6065 = fsub fast float 1.000000e+00, %6048
  %6066 = fdiv fast float %6060, %6065
  %6067 = fdiv fast float %6062, %6065
  %6068 = fdiv fast float %6064, %6065
  br label %6069

; <label>:6069                                    ; preds = %6056, %6033
  %6070 = phi float [ %6066, %6056 ], [ %5929, %6033 ]
  %6071 = phi float [ %6067, %6056 ], [ %5930, %6033 ]
  %6072 = phi float [ %6068, %6056 ], [ %5931, %6033 ]
  %6073 = phi float [ %6058, %6056 ], [ 0.000000e+00, %6033 ]
  %6074 = fcmp fast une float %6045, 1.000000e+00
  br i1 %6074, label %6075, label %6082, !dx.controlflow.hints !176

; <label>:6075                                    ; preds = %6069
  %6076 = call float @dx.op.unary.f32(i32 23, float %6045)  ; Log(value)
  %6077 = fmul fast float %6076, 0x3FE62E4300000000
  %6078 = fmul fast float %6042, %6077
  %6079 = fsub fast float -0.000000e+00, %6078
  %6080 = fsub fast float 1.000000e+00, %6045
  %6081 = fdiv fast float %6079, %6080
  br label %6082

; <label>:6082                                    ; preds = %6075, %6069
  %6083 = phi float [ %6081, %6075 ], [ %6042, %6069 ]
  %6084 = phi float [ %6077, %6075 ], [ 0.000000e+00, %6069 ]
  %6085 = fcmp fast une float %6046, 1.000000e+00
  br i1 %6085, label %6086, label %6093, !dx.controlflow.hints !176

; <label>:6086                                    ; preds = %6082
  %6087 = call float @dx.op.unary.f32(i32 23, float %6046)  ; Log(value)
  %6088 = fmul fast float %6087, 0x3FE62E4300000000
  %6089 = fmul fast float %6043, %6088
  %6090 = fsub fast float -0.000000e+00, %6089
  %6091 = fsub fast float 1.000000e+00, %6046
  %6092 = fdiv fast float %6090, %6091
  br label %6093

; <label>:6093                                    ; preds = %6086, %6082
  %6094 = phi float [ %6092, %6086 ], [ %6043, %6082 ]
  %6095 = phi float [ %6088, %6086 ], [ 0.000000e+00, %6082 ]
  %6096 = fcmp fast une float %6047, 1.000000e+00
  br i1 %6096, label %6097, label %6104, !dx.controlflow.hints !176

; <label>:6097                                    ; preds = %6093
  %6098 = call float @dx.op.unary.f32(i32 23, float %6047)  ; Log(value)
  %6099 = fmul fast float %6098, 0x3FE62E4300000000
  %6100 = fmul fast float %6044, %6099
  %6101 = fsub fast float -0.000000e+00, %6100
  %6102 = fsub fast float 1.000000e+00, %6047
  %6103 = fdiv fast float %6101, %6102
  br label %6104

; <label>:6104                                    ; preds = %6097, %6093
  %6105 = phi float [ %6103, %6097 ], [ %6044, %6093 ]
  %6106 = phi float [ %6099, %6097 ], [ 0.000000e+00, %6093 ]
  %6107 = fmul fast float %6070, %6054
  %6108 = fmul fast float %6071, %6054
  %6109 = fmul fast float %6072, %6054
  %6110 = fmul fast float %6073, %6054
  %6111 = fmul fast float %6083, %6052
  %6112 = fmul fast float %6094, %6052
  %6113 = fmul fast float %6105, %6052
  %6114 = fmul fast float %6084, %6052
  %6115 = fmul fast float %6095, %6052
  %6116 = fmul fast float %6106, %6052
  %6117 = fadd fast float %6111, %6107
  %6118 = fadd fast float %6112, %6108
  %6119 = fadd fast float %6113, %6109
  %6120 = fadd fast float %6114, %6110
  %6121 = fadd fast float %6115, %6110
  %6122 = fadd fast float %6116, %6110
  %6123 = fcmp fast une float %6120, 0.000000e+00
  br i1 %6123, label %6124, label %6131, !dx.controlflow.hints !177

; <label>:6124                                    ; preds = %6104
  %6125 = fmul fast float %6120, 0x3FF7154760000000
  %6126 = call float @dx.op.unary.f32(i32 21, float %6125)  ; Exp(value)
  %6127 = fsub fast float 1.000000e+00, %6126
  %6128 = fmul fast float %6117, %6127
  %6129 = fsub fast float -0.000000e+00, %6128
  %6130 = fdiv fast float %6129, %6120
  br label %6131

; <label>:6131                                    ; preds = %6124, %6104
  %6132 = phi float [ %6126, %6124 ], [ 1.000000e+00, %6104 ]
  %6133 = phi float [ %6130, %6124 ], [ %6117, %6104 ]
  %6134 = fcmp fast une float %6121, 0.000000e+00
  br i1 %6134, label %6135, label %6142, !dx.controlflow.hints !177

; <label>:6135                                    ; preds = %6131
  %6136 = fmul fast float %6121, 0x3FF7154760000000
  %6137 = call float @dx.op.unary.f32(i32 21, float %6136)  ; Exp(value)
  %6138 = fsub fast float 1.000000e+00, %6137
  %6139 = fmul fast float %6118, %6138
  %6140 = fsub fast float -0.000000e+00, %6139
  %6141 = fdiv fast float %6140, %6121
  br label %6142

; <label>:6142                                    ; preds = %6135, %6131
  %6143 = phi float [ %6137, %6135 ], [ 1.000000e+00, %6131 ]
  %6144 = phi float [ %6141, %6135 ], [ %6118, %6131 ]
  %6145 = fcmp fast une float %6122, 0.000000e+00
  br i1 %6145, label %6146, label %6153, !dx.controlflow.hints !177

; <label>:6146                                    ; preds = %6142
  %6147 = fmul fast float %6122, 0x3FF7154760000000
  %6148 = call float @dx.op.unary.f32(i32 21, float %6147)  ; Exp(value)
  %6149 = fsub fast float 1.000000e+00, %6148
  %6150 = fmul fast float %6119, %6149
  %6151 = fsub fast float -0.000000e+00, %6150
  %6152 = fdiv fast float %6151, %6122
  br label %6153

; <label>:6153                                    ; preds = %6146, %6142
  %6154 = phi float [ %6148, %6146 ], [ 1.000000e+00, %6142 ]
  %6155 = phi float [ %6152, %6146 ], [ %6119, %6142 ]
  %6156 = fcmp fast ogt float %6052, %6054
  br i1 %6156, label %6157, label %6177

; <label>:6157                                    ; preds = %6153
  %6158 = fsub fast float 1.000000e+00, %6054
  %6159 = fmul fast float %6070, %6158
  %6160 = fmul fast float %6071, %6158
  %6161 = fmul fast float %6072, %6158
  %6162 = fmul fast float %6073, %6158
  %6163 = fcmp fast une float %6162, 0.000000e+00
  br i1 %6163, label %6164, label %6215, !dx.controlflow.hints !178

; <label>:6164                                    ; preds = %6157
  %6165 = fmul fast float %6162, 0x3FF7154760000000
  %6166 = call float @dx.op.unary.f32(i32 21, float %6165)  ; Exp(value)
  %6167 = fsub fast float 1.000000e+00, %6166
  %6168 = fmul fast float %6159, %6167
  %6169 = fsub fast float -0.000000e+00, %6168
  %6170 = fmul fast float %6160, %6167
  %6171 = fsub fast float -0.000000e+00, %6170
  %6172 = fmul fast float %6161, %6167
  %6173 = fsub fast float -0.000000e+00, %6172
  %6174 = fdiv fast float %6169, %6162
  %6175 = fdiv fast float %6171, %6162
  %6176 = fdiv fast float %6173, %6162
  br label %6215

; <label>:6177                                    ; preds = %6153
  %6178 = fsub fast float 1.000000e+00, %6052
  %6179 = fmul fast float %6083, %6178
  %6180 = fmul fast float %6094, %6178
  %6181 = fmul fast float %6105, %6178
  %6182 = fmul fast float %6084, %6178
  %6183 = fmul fast float %6095, %6178
  %6184 = fmul fast float %6106, %6178
  %6185 = fcmp fast une float %6182, 0.000000e+00
  br i1 %6185, label %6186, label %6193, !dx.controlflow.hints !177

; <label>:6186                                    ; preds = %6177
  %6187 = fmul fast float %6182, 0x3FF7154760000000
  %6188 = call float @dx.op.unary.f32(i32 21, float %6187)  ; Exp(value)
  %6189 = fsub fast float 1.000000e+00, %6188
  %6190 = fmul fast float %6179, %6189
  %6191 = fsub fast float -0.000000e+00, %6190
  %6192 = fdiv fast float %6191, %6182
  br label %6193

; <label>:6193                                    ; preds = %6186, %6177
  %6194 = phi float [ %6192, %6186 ], [ %6179, %6177 ]
  %6195 = phi float [ %6188, %6186 ], [ 1.000000e+00, %6177 ]
  %6196 = fcmp fast une float %6183, 0.000000e+00
  br i1 %6196, label %6197, label %6204, !dx.controlflow.hints !177

; <label>:6197                                    ; preds = %6193
  %6198 = fmul fast float %6183, 0x3FF7154760000000
  %6199 = call float @dx.op.unary.f32(i32 21, float %6198)  ; Exp(value)
  %6200 = fsub fast float 1.000000e+00, %6199
  %6201 = fmul fast float %6180, %6200
  %6202 = fsub fast float -0.000000e+00, %6201
  %6203 = fdiv fast float %6202, %6183
  br label %6204

; <label>:6204                                    ; preds = %6197, %6193
  %6205 = phi float [ %6203, %6197 ], [ %6180, %6193 ]
  %6206 = phi float [ %6199, %6197 ], [ 1.000000e+00, %6193 ]
  %6207 = fcmp fast une float %6184, 0.000000e+00
  br i1 %6207, label %6208, label %6215, !dx.controlflow.hints !177

; <label>:6208                                    ; preds = %6204
  %6209 = fmul fast float %6184, 0x3FF7154760000000
  %6210 = call float @dx.op.unary.f32(i32 21, float %6209)  ; Exp(value)
  %6211 = fsub fast float 1.000000e+00, %6210
  %6212 = fmul fast float %6181, %6211
  %6213 = fsub fast float -0.000000e+00, %6212
  %6214 = fdiv fast float %6213, %6184
  br label %6215

; <label>:6215                                    ; preds = %6208, %6204, %6164, %6157
  %6216 = phi float [ %6214, %6208 ], [ %6176, %6164 ], [ %6161, %6157 ], [ %6181, %6204 ]
  %6217 = phi float [ %6205, %6208 ], [ %6175, %6164 ], [ %6160, %6157 ], [ %6205, %6204 ]
  %6218 = phi float [ %6194, %6208 ], [ %6174, %6164 ], [ %6159, %6157 ], [ %6194, %6204 ]
  %6219 = phi float [ %6210, %6208 ], [ %6166, %6164 ], [ 1.000000e+00, %6157 ], [ 1.000000e+00, %6204 ]
  %6220 = phi float [ %6206, %6208 ], [ %6166, %6164 ], [ 1.000000e+00, %6157 ], [ %6206, %6204 ]
  %6221 = phi float [ %6195, %6208 ], [ %6166, %6164 ], [ 1.000000e+00, %6157 ], [ %6195, %6204 ]
  %6222 = fmul fast float %6221, %6133
  %6223 = fmul fast float %6220, %6144
  %6224 = fmul fast float %6219, %6155
  %6225 = fadd fast float %6222, %6218
  %6226 = fadd fast float %6223, %6217
  %6227 = fadd fast float %6224, %6216
  %6228 = fmul fast float %6221, %6132
  %6229 = fmul fast float %6220, %6143
  %6230 = fmul fast float %6219, %6154
  br label %6231

; <label>:6231                                    ; preds = %6215, %6026
  %6232 = phi float [ %6230, %6215 ], [ %6032, %6026 ]
  %6233 = phi float [ %6229, %6215 ], [ %6031, %6026 ]
  %6234 = phi float [ %6228, %6215 ], [ %6030, %6026 ]
  %6235 = phi float [ %6227, %6215 ], [ %6029, %6026 ]
  %6236 = phi float [ %6226, %6215 ], [ %6028, %6026 ]
  %6237 = phi float [ %6225, %6215 ], [ %6027, %6026 ]
  %6238 = fmul fast float %6237, %5181
  %6239 = fmul fast float %6236, %5181
  %6240 = fmul fast float %6235, %5181
  %6241 = fmul fast float %6234, %5474
  %6242 = call float @dx.op.dot3.f32(i32 55, float %6234, float %6233, float %6232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6243 = call float @dx.op.dot3.f32(i32 55, float %6238, float %6239, float %6240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6244 = select i1 %228, float %6242, float %6234
  %6245 = select i1 %228, float %6242, float %6233
  %6246 = select i1 %228, float 1.000000e+00, float %6232
  %6247 = select i1 %228, float %6243, float %6238
  %6248 = select i1 %228, float 0.000000e+00, float %6239
  %6249 = select i1 %228, float 0.000000e+00, float %6240
  %6250 = fmul fast float %6244, %5468
  %6251 = fmul fast float %6245, %5469
  %6252 = fmul fast float %6246, %5470
  %6253 = fadd fast float %6250, %6247
  %6254 = fadd fast float %6251, %6248
  %6255 = fadd fast float %6249, %6252
  %6256 = fmul fast float %6244, %5471
  %6257 = fmul fast float %6245, %5472
  %6258 = fmul fast float %6246, %5473
  %6259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6260 = extractvalue %dx.types.CBufRet.i32 %6259, 0
  %6261 = icmp eq i32 %6260, 0
  br i1 %6261, label %6629, label %6262, !dx.controlflow.hints !179

; <label>:6262                                    ; preds = %6231
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 2
  %6265 = extractvalue %dx.types.CBufRet.f32 %6263, 3
  %6266 = fmul fast float %6264, %90
  %6267 = fmul fast float %6265, %91
  %6268 = fmul fast float %6266, 2.000000e+00
  %6269 = fmul fast float %6267, 2.000000e+00
  %6270 = fsub fast float 1.000000e+00, %6268
  %6271 = fsub fast float 1.000000e+00, %6269
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.CBufRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.CBufRet.f32 %6272, 2
  %6276 = fmul fast float %6270, %6273
  %6277 = fmul fast float %6270, %6274
  %6278 = fmul fast float %6270, %6275
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.CBufRet.f32 %6279, 1
  %6282 = extractvalue %dx.types.CBufRet.f32 %6279, 2
  %6283 = fmul fast float %6271, %6280
  %6284 = fmul fast float %6271, %6281
  %6285 = fmul fast float %6271, %6282
  %6286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6287 = extractvalue %dx.types.CBufRet.f32 %6286, 0
  %6288 = extractvalue %dx.types.CBufRet.f32 %6286, 1
  %6289 = extractvalue %dx.types.CBufRet.f32 %6286, 2
  %6290 = fadd fast float %6283, %6287
  %6291 = fadd fast float %6290, %6276
  %6292 = fadd fast float %6284, %6288
  %6293 = fadd fast float %6292, %6277
  %6294 = fadd fast float %6285, %6289
  %6295 = fadd fast float %6294, %6278
  %6296 = fmul fast float %6291, %5467
  %6297 = fmul fast float %6293, %5467
  %6298 = fmul fast float %6295, %5467
  %6299 = fmul fast float %6296, %6296
  %6300 = fmul fast float %6297, %6297
  %6301 = fadd fast float %6299, %6300
  %6302 = fmul fast float %6298, %6298
  %6303 = fadd fast float %6301, %6302
  %6304 = call float @dx.op.unary.f32(i32 24, float %6303)  ; Sqrt(value)
  %6305 = extractvalue %dx.types.CBufRet.f32 %5192, 0
  %6306 = fsub fast float %6304, %6305
  %6307 = extractvalue %dx.types.CBufRet.f32 %5192, 2
  %6308 = fmul fast float %6306, %6307
  %6309 = call float @dx.op.unary.f32(i32 7, float %6308)  ; Saturate(value)
  %6310 = fadd fast float %6309, -5.000000e-01
  %6311 = fmul fast float %6310, 2.000000e+00
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6314 = call float @dx.op.binary.f32(i32 36, float %6313, float %6311)  ; FMin(a,b)
  %6315 = fsub fast float -0.000000e+00, %6313
  %6316 = fcmp fast ogt float %6314, %6315
  br i1 %6316, label %6317, label %6629, !dx.controlflow.hints !180

; <label>:6317                                    ; preds = %6262
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 3
  %6320 = fcmp fast ogt float %6319, 0.000000e+00
  br i1 %6320, label %6321, label %6396, !dx.controlflow.hints !181

; <label>:6321                                    ; preds = %6317
  %6322 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6323 = extractvalue %dx.types.Dimensions %6322, 0
  %6324 = sitofp i32 %6323 to float
  %6325 = extractvalue %dx.types.Dimensions %6322, 1
  %6326 = sitofp i32 %6325 to float
  %6327 = fmul fast float %6266, %6324
  %6328 = fmul fast float %6267, %6326
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 1
  %6331 = fsub fast float -0.000000e+00, %6330
  %6332 = fptoui float %6331 to i32
  %6333 = fptoui float %6327 to i32
  %6334 = fptoui float %6328 to i32
  %6335 = and i32 %6332, 31
  %6336 = lshr i32 %6333, %6335
  %6337 = lshr i32 %6334, %6335
  %6338 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6332, i32 %6336, i32 %6337, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6339 = extractvalue %dx.types.ResRet.f32 %6338, 0
  %6340 = fcmp fast olt float %6339, -1.000000e+00
  %6341 = fcmp fast ogt float %6339, -1.000000e+00
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 1
  %6344 = select i1 %6341, float %6343, float 1.000000e+00
  %6345 = fadd fast float %6339, 1.000000e+00
  %6346 = fmul fast float %6344, %6345
  %6347 = call float @dx.op.unary.f32(i32 6, float %6346)  ; FAbs(value)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6342, 3
  %6349 = fcmp fast oge float %6347, %6348
  %6350 = select i1 %6349, float 0x4197782600000000, float %6347
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.CBufRet.f32 %6351, 1
  %6354 = extractvalue %dx.types.CBufRet.f32 %6351, 2
  %6355 = select i1 %6340, float %6352, float %6273
  %6356 = select i1 %6340, float %6353, float %6274
  %6357 = select i1 %6340, float %6354, float %6275
  %6358 = fmul fast float %6355, %6270
  %6359 = fmul fast float %6356, %6270
  %6360 = fmul fast float %6357, %6270
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 0
  %6363 = extractvalue %dx.types.CBufRet.f32 %6361, 1
  %6364 = extractvalue %dx.types.CBufRet.f32 %6361, 2
  %6365 = select i1 %6340, float %6362, float %6280
  %6366 = select i1 %6340, float %6363, float %6281
  %6367 = select i1 %6340, float %6364, float %6282
  %6368 = fmul fast float %6365, %6271
  %6369 = fmul fast float %6366, %6271
  %6370 = fmul fast float %6367, %6271
  %6371 = fadd fast float %6368, %6358
  %6372 = fadd fast float %6369, %6359
  %6373 = fadd fast float %6370, %6360
  %6374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.f32 %6374, 0
  %6376 = extractvalue %dx.types.CBufRet.f32 %6374, 1
  %6377 = extractvalue %dx.types.CBufRet.f32 %6374, 2
  %6378 = select i1 %6340, float %6375, float %6287
  %6379 = select i1 %6340, float %6376, float %6288
  %6380 = select i1 %6340, float %6377, float %6289
  %6381 = fadd fast float %6371, %6378
  %6382 = fadd fast float %6372, %6379
  %6383 = fadd fast float %6373, %6380
  %6384 = fmul fast float %6381, %6350
  %6385 = fmul fast float %6382, %6350
  %6386 = fmul fast float %6383, %6350
  %6387 = fmul fast float %6384, %6384
  %6388 = fmul fast float %6385, %6385
  %6389 = fadd fast float %6387, %6388
  %6390 = fmul fast float %6386, %6386
  %6391 = fadd fast float %6389, %6390
  %6392 = call float @dx.op.unary.f32(i32 24, float %6391)  ; Sqrt(value)
  %6393 = fsub fast float %6392, %6305
  %6394 = fmul fast float %6393, %6307
  %6395 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  br label %6396

; <label>:6396                                    ; preds = %6321, %6317
  %6397 = phi float [ %6395, %6321 ], [ 1.000000e+00, %6317 ]
  %6398 = fmul fast float %6314, 5.000000e-01
  %6399 = fadd fast float %6398, 5.000000e-01
  %6400 = call float @dx.op.unary.f32(i32 22, float %6399)  ; Frc(value)
  %6401 = call float @dx.op.unary.f32(i32 27, float %6400)  ; Round_ni(value)
  %6402 = call float @dx.op.unary.f32(i32 22, float %6400)  ; Frc(value)
  %6403 = fmul fast float %6402, 2.000000e+00
  %6404 = fadd fast float %6403, -1.000000e+00
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6266, float %6267, float %6401, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.ResRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.ResRet.f32 %6405, 2
  %6409 = extractvalue %dx.types.ResRet.f32 %6405, 3
  %6410 = fadd fast float %6406, -5.000000e-01
  %6411 = fadd fast float %6408, -5.000000e-01
  %6412 = fmul fast float %6410, 0xBFD5555560000000
  %6413 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6411, float %6412)  ; FMad(a,b,c)
  %6414 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6407, float 0.000000e+00)  ; FMad(a,b,c)
  %6415 = fadd fast float %6414, %6409
  %6416 = fmul fast float %6410, -7.500000e-01
  %6417 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6411, float %6416)  ; FMad(a,b,c)
  %6418 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6407, float 0.000000e+00)  ; FMad(a,b,c)
  %6419 = fadd fast float %6418, %6409
  %6420 = call float @dx.op.binary.f32(i32 35, float %6413, float -1.000000e+00)  ; FMax(a,b)
  %6421 = call float @dx.op.binary.f32(i32 35, float %6415, float -1.000000e+00)  ; FMax(a,b)
  %6422 = call float @dx.op.binary.f32(i32 35, float %6417, float -1.000000e+00)  ; FMax(a,b)
  %6423 = call float @dx.op.binary.f32(i32 35, float %6419, float -1.000000e+00)  ; FMax(a,b)
  %6424 = call float @dx.op.binary.f32(i32 36, float %6420, float 1.000000e+00)  ; FMin(a,b)
  %6425 = call float @dx.op.binary.f32(i32 36, float %6421, float 1.000000e+00)  ; FMin(a,b)
  %6426 = call float @dx.op.binary.f32(i32 36, float %6422, float 1.000000e+00)  ; FMin(a,b)
  %6427 = call float @dx.op.binary.f32(i32 36, float %6423, float 1.000000e+00)  ; FMin(a,b)
  %6428 = fcmp fast olt float %6424, 0x3FEFFF8020000000
  br i1 %6428, label %6429, label %6544, !dx.controlflow.hints !182

; <label>:6429                                    ; preds = %6396
  %6430 = extractvalue %dx.types.CBufRet.f32 %6312, 3
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6435 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6436 = fsub fast float %6432, %6424
  %6437 = fsub fast float %6433, %6425
  %6438 = fsub fast float %6434, %6426
  %6439 = fsub fast float %6435, %6427
  %6440 = fmul fast float %6436, %6430
  %6441 = fmul fast float %6437, %6430
  %6442 = fmul fast float %6438, %6430
  %6443 = fmul fast float %6439, %6430
  %6444 = fadd fast float %6440, %6424
  %6445 = fadd fast float %6441, %6425
  %6446 = fsub fast float -0.000000e+00, %6445
  %6447 = fadd fast float %6442, %6426
  %6448 = fadd fast float %6443, %6427
  %6449 = fmul fast float %6444, %6444
  %6450 = fsub fast float %6445, %6449
  %6451 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6450)  ; FMax(a,b)
  %6452 = fdiv fast float 1.000000e+00, %6451
  %6453 = fmul fast float %6445, %6444
  %6454 = fsub fast float %6447, %6453
  %6455 = fsub fast float %6404, %6444
  %6456 = fmul fast float %6404, %6404
  %6457 = fsub fast float %6456, %6445
  %6458 = fmul fast float %6455, %6452
  %6459 = fmul fast float %6458, %6454
  %6460 = fsub fast float %6457, %6459
  %6461 = fmul fast float %6445, %6445
  %6462 = fsub fast float %6448, %6461
  %6463 = fmul fast float %6454, %6454
  %6464 = fmul fast float %6463, %6452
  %6465 = fsub fast float %6462, %6464
  %6466 = fdiv fast float %6460, %6465
  %6467 = fmul fast float %6454, %6466
  %6468 = fsub fast float %6455, %6467
  %6469 = fmul fast float %6468, %6452
  %6470 = fmul fast float %6469, %6444
  %6471 = fsub fast float 1.000000e+00, %6470
  %6472 = fmul fast float %6445, %6466
  %6473 = fsub fast float %6471, %6472
  %6474 = fmul fast float %6469, %6469
  %6475 = fmul fast float %6466, 4.000000e+00
  %6476 = fmul fast float %6475, %6473
  %6477 = fsub fast float %6474, %6476
  %6478 = call float @dx.op.unary.f32(i32 24, float %6477)  ; Sqrt(value)
  %6479 = fcmp fast oge float %6469, 0.000000e+00
  %6480 = fsub fast float -0.000000e+00, %6478
  %6481 = select i1 %6479, float %6480, float %6478
  %6482 = fsub fast float %6481, %6469
  %6483 = fdiv fast float %6482, %6466
  %6484 = fdiv fast float %6473, %6482
  %6485 = fmul fast float %6483, 5.000000e-01
  %6486 = fmul fast float %6484, 2.000000e+00
  %6487 = select i1 %6479, float %6485, float %6486
  %6488 = select i1 %6479, float %6486, float %6485
  %6489 = call float @dx.op.binary.f32(i32 35, float %6487, float %6488)  ; FMax(a,b)
  %6490 = call float @dx.op.binary.f32(i32 36, float %6487, float %6488)  ; FMin(a,b)
  %6491 = fcmp fast ogt float %6404, %6490
  br i1 %6491, label %6492, label %6502

; <label>:6492                                    ; preds = %6429
  %6493 = fsub fast float %6404, %6490
  %6494 = fsub fast float %6489, %6490
  %6495 = fmul fast float %6493, %6494
  %6496 = fmul fast float %6489, %6404
  %6497 = fadd fast float %6489, %6404
  %6498 = fmul fast float %6497, %6444
  %6499 = fadd fast float %6496, %6445
  %6500 = fsub fast float %6499, %6498
  %6501 = fdiv fast float %6500, %6495
  br label %6502

; <label>:6502                                    ; preds = %6492, %6429
  %6503 = phi float [ %6501, %6492 ], [ 0.000000e+00, %6429 ]
  %6504 = fcmp fast ogt float %6404, %6489
  %6505 = fsub fast float %6404, %6489
  br i1 %6504, label %6506, label %6516

; <label>:6506                                    ; preds = %6502
  %6507 = fsub fast float %6489, %6490
  %6508 = fmul fast float %6507, %6505
  %6509 = fmul fast float %6490, %6404
  %6510 = fadd fast float %6490, %6404
  %6511 = fmul fast float %6510, %6444
  %6512 = fsub fast float %6446, %6509
  %6513 = fadd fast float %6512, %6511
  %6514 = fdiv fast float %6513, %6508
  %6515 = fadd fast float %6514, %6503
  br label %6516

; <label>:6516                                    ; preds = %6506, %6502
  %6517 = phi float [ %6515, %6506 ], [ %6503, %6502 ]
  %6518 = fsub fast float %6404, %6490
  %6519 = fmul fast float %6518, %6505
  %6520 = fmul fast float %6490, %6489
  %6521 = fadd fast float %6490, %6489
  %6522 = fmul fast float %6521, %6444
  %6523 = fadd fast float %6520, %6445
  %6524 = fsub fast float %6523, %6522
  %6525 = fdiv fast float %6524, %6519
  %6526 = call float @dx.op.unary.f32(i32 7, float %6517)  ; Saturate(value)
  %6527 = fcmp fast oeq float %5193, 0.000000e+00
  %6528 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6529 = fcmp fast oeq float %6528, 0.000000e+00
  %6530 = or i1 %6527, %6529
  %6531 = fmul fast float %6528, 2.000000e+00
  %6532 = fadd fast float %6313, %6314
  %6533 = fdiv fast float %6532, %6531
  %6534 = call float @dx.op.unary.f32(i32 7, float %6533)  ; Saturate(value)
  %6535 = fmul fast float %6534, 2.000000e+00
  %6536 = fsub fast float 3.000000e+00, %6535
  %6537 = fmul fast float %6534, %6534
  %6538 = fmul fast float %6537, %6536
  %6539 = select i1 %6530, float 1.000000e+00, float %6538
  %6540 = fmul fast float %6525, %5193
  %6541 = fadd fast float %6526, %6540
  %6542 = call float @dx.op.unary.f32(i32 7, float %6541)  ; Saturate(value)
  %6543 = fmul fast float %6539, %6542
  br label %6544

; <label>:6544                                    ; preds = %6516, %6396
  %6545 = phi float [ %6543, %6516 ], [ 0.000000e+00, %6396 ]
  %6546 = fsub fast float 1.000000e+00, %6545
  %6547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6266, float %6267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6548 = extractvalue %dx.types.ResRet.f32 %6547, 0
  %6549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.i32 %6549, 2
  %6551 = icmp eq i32 %6550, 0
  br i1 %6551, label %6557, label %6552

; <label>:6552                                    ; preds = %6544
  %6553 = call float @dx.op.unary.f32(i32 7, float %6545)  ; Saturate(value)
  %6554 = fadd fast float %6548, -1.000000e+00
  %6555 = fmul fast float %6553, %6554
  %6556 = fadd fast float %6555, 1.000000e+00
  br label %6557

; <label>:6557                                    ; preds = %6552, %6544
  %6558 = phi float [ %6556, %6552 ], [ %6546, %6544 ]
  br i1 %6320, label %6559, label %6577

; <label>:6559                                    ; preds = %6557
  %6560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.f32 %6560, 1
  %6562 = fsub fast float %6397, %6561
  %6563 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  %6564 = fsub fast float %6397, %6319
  %6565 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  %6566 = fsub fast float %6563, %6565
  %6567 = fsub fast float %6399, %6565
  %6568 = fdiv fast float %6567, %6566
  %6569 = call float @dx.op.unary.f32(i32 7, float %6568)  ; Saturate(value)
  %6570 = fmul fast float %6569, 2.000000e+00
  %6571 = fsub fast float 3.000000e+00, %6570
  %6572 = fsub fast float %6548, %6558
  %6573 = fmul fast float %6569, %6569
  %6574 = fmul fast float %6573, %6572
  %6575 = fmul fast float %6574, %6571
  %6576 = fadd fast float %6575, %6558
  br label %6577

; <label>:6577                                    ; preds = %6559, %6557
  %6578 = phi float [ %6576, %6559 ], [ %6558, %6557 ]
  %6579 = call float @dx.op.binary.f32(i32 35, float %6548, float %6578)  ; FMax(a,b)
  %6580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.i32 %6580, 2
  %6582 = and i32 %6581, 1
  %6583 = icmp eq i32 %6582, 0
  %6584 = fcmp fast une float %6579, 1.000000e+00
  %6585 = and i1 %6584, %6583
  br i1 %6585, label %6586, label %6605

; <label>:6586                                    ; preds = %6577
  %6587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6266, float %6267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6588 = extractvalue %dx.types.ResRet.f32 %6587, 0
  %6589 = extractvalue %dx.types.ResRet.f32 %6587, 1
  %6590 = extractvalue %dx.types.ResRet.f32 %6587, 2
  %6591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6592 = extractvalue %dx.types.CBufRet.f32 %6591, 1
  %6593 = fmul fast float %6592, %6588
  %6594 = fmul fast float %6592, %6589
  %6595 = fmul fast float %6592, %6590
  %6596 = fcmp fast ogt float %6548, 0x3FEFFF2E40000000
  %6597 = fsub fast float 1.000000e+00, %6579
  %6598 = fsub fast float 1.000000e+00, %6548
  %6599 = fdiv fast float %6597, %6598
  %6600 = call float @dx.op.unary.f32(i32 7, float %6599)  ; Saturate(value)
  %6601 = select i1 %6596, float 0.000000e+00, float %6600
  %6602 = fmul fast float %6593, %6601
  %6603 = fmul fast float %6594, %6601
  %6604 = fmul fast float %6595, %6601
  br label %6605

; <label>:6605                                    ; preds = %6586, %6577
  %6606 = phi float [ 0.000000e+00, %6577 ], [ %6602, %6586 ]
  %6607 = phi float [ 0.000000e+00, %6577 ], [ %6603, %6586 ]
  %6608 = phi float [ 0.000000e+00, %6577 ], [ %6604, %6586 ]
  %6609 = fmul fast float %6606, %5181
  %6610 = fmul fast float %6607, %5181
  %6611 = fmul fast float %6608, %5181
  %6612 = fmul fast float %6579, %6241
  %6613 = call float @dx.op.dot3.f32(i32 55, float %6579, float %6579, float %6579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6614 = call float @dx.op.dot3.f32(i32 55, float %6609, float %6610, float %6611, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6615 = select i1 %228, float %6613, float %6579
  %6616 = select i1 %228, float 1.000000e+00, float %6579
  %6617 = select i1 %228, float %6614, float %6609
  %6618 = select i1 %228, float 0.000000e+00, float %6610
  %6619 = select i1 %228, float 0.000000e+00, float %6611
  %6620 = fmul fast float %6615, %6253
  %6621 = fmul fast float %6615, %6254
  %6622 = fmul fast float %6616, %6255
  %6623 = fadd fast float %6620, %6617
  %6624 = fadd fast float %6621, %6618
  %6625 = fadd fast float %6619, %6622
  %6626 = fmul fast float %6615, %6256
  %6627 = fmul fast float %6615, %6257
  %6628 = fmul fast float %6616, %6258
  br label %6629

; <label>:6629                                    ; preds = %6605, %6262, %6231, %5463
  %6630 = phi float [ %5468, %5463 ], [ %6253, %6231 ], [ %6623, %6605 ], [ %6253, %6262 ]
  %6631 = phi float [ %5469, %5463 ], [ %6254, %6231 ], [ %6624, %6605 ], [ %6254, %6262 ]
  %6632 = phi float [ %5470, %5463 ], [ %6255, %6231 ], [ %6625, %6605 ], [ %6255, %6262 ]
  %6633 = phi float [ %5471, %5463 ], [ %6256, %6231 ], [ %6626, %6605 ], [ %6256, %6262 ]
  %6634 = phi float [ %5472, %5463 ], [ %6257, %6231 ], [ %6627, %6605 ], [ %6257, %6262 ]
  %6635 = phi float [ %5473, %5463 ], [ %6258, %6231 ], [ %6628, %6605 ], [ %6258, %6262 ]
  %6636 = phi float [ %5474, %5463 ], [ %6241, %6231 ], [ %6612, %6605 ], [ %6241, %6262 ]
  %6637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6638 = extractvalue %dx.types.CBufRet.f32 %6637, 2
  %6639 = extractvalue %dx.types.CBufRet.f32 %6637, 3
  %6640 = fmul fast float %6638, %90
  %6641 = fmul fast float %6639, %91
  %6642 = call float @dx.op.unary.f32(i32 7, float %6640)  ; Saturate(value)
  %6643 = call float @dx.op.unary.f32(i32 7, float %6641)  ; Saturate(value)
  %6644 = select i1 %5203, i32 2, i32 0
  %6645 = or i32 %6644, 1
  %6646 = uitofp i32 %6645 to float
  %6647 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6642, float %6643, float %6646, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6648 = extractvalue %dx.types.ResRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.ResRet.f32 %6647, 1
  %6650 = extractvalue %dx.types.ResRet.f32 %6647, 2
  %6651 = extractvalue %dx.types.ResRet.f32 %6647, 3
  %6652 = add nuw nsw i32 %6644, 2
  %6653 = uitofp i32 %6652 to float
  %6654 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6642, float %6643, float %6653, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6655 = extractvalue %dx.types.ResRet.f32 %6654, 0
  %6656 = extractvalue %dx.types.ResRet.f32 %6654, 1
  %6657 = extractvalue %dx.types.ResRet.f32 %6654, 2
  %6658 = extractvalue %dx.types.ResRet.f32 %6654, 3
  %6659 = call float @dx.op.binary.f32(i32 35, float %6649, float %6650)  ; FMax(a,b)
  %6660 = call float @dx.op.binary.f32(i32 35, float %6648, float %6659)  ; FMax(a,b)
  %6661 = call float @dx.op.binary.f32(i32 35, float %6660, float %6651)  ; FMax(a,b)
  %6662 = call float @dx.op.binary.f32(i32 36, float %6656, float %6657)  ; FMin(a,b)
  %6663 = call float @dx.op.binary.f32(i32 36, float %6655, float %6662)  ; FMin(a,b)
  %6664 = call float @dx.op.binary.f32(i32 36, float %6663, float %6658)  ; FMin(a,b)
  %6665 = fmul fast float %6661, 2.550000e+02
  %6666 = fadd fast float %6665, 0x3F70101020000000
  %6667 = fptoui float %6666 to i32
  %6668 = fmul fast float %6664, 2.550000e+02
  %6669 = fadd fast float %6668, 0x3F70101020000000
  %6670 = fptoui float %6669 to i32
  %6671 = icmp ult i32 %6667, %6670
  br i1 %6671, label %6672, label %6841

; <label>:6672                                    ; preds = %6629
  %6673 = fcmp fast ogt float %80, 9.843750e-01
  %6674 = fadd fast float %5467, -4.000000e+00
  %6675 = select i1 %6673, float -4.000000e+00, float %6674
  %6676 = call float @dx.op.binary.f32(i32 35, float %6675, float 0.000000e+00)  ; FMax(a,b)
  %6677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6677, 0
  %6679 = fadd fast float %6678, %6676
  %6680 = extractvalue %dx.types.CBufRet.f32 %6677, 2
  %6681 = fmul fast float %6679, %6680
  %6682 = call float @dx.op.unary.f32(i32 23, float %6681)  ; Log(value)
  %6683 = extractvalue %dx.types.CBufRet.f32 %6677, 3
  %6684 = fmul fast float %6683, %6682
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6687 = fmul fast float %6684, %6686
  %6688 = call float @dx.op.unary.f32(i32 7, float %6687)  ; Saturate(value)
  %6689 = uitofp i32 %6667 to float
  %6690 = uitofp i32 %6670 to float
  %6691 = fadd fast float %6689, 5.000000e-01
  %6692 = fadd fast float %6690, 5.000000e-01
  %6693 = fmul fast float %6686, %6691
  %6694 = fmul fast float %6686, %6692
  %6695 = fadd fast float %6693, 0x3F0FFB4800000000
  %6696 = fadd fast float %6694, 0xBF0FFB4800000000
  %6697 = call float @dx.op.binary.f32(i32 35, float %6688, float %6695)  ; FMax(a,b)
  %6698 = call float @dx.op.binary.f32(i32 36, float %6697, float %6696)  ; FMin(a,b)
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 1
  %6701 = extractvalue %dx.types.CBufRet.f32 %6699, 2
  %6702 = extractvalue %dx.types.CBufRet.f32 %6699, 0
  %6703 = select i1 %5203, float %6702, float 0.000000e+00
  %6704 = fmul fast float %6700, %6698
  %6705 = fadd fast float %6703, %6704
  %6706 = fadd fast float %6703, %6701
  %6707 = fsub fast float %6700, %6701
  %6708 = fadd fast float %6707, %6703
  %6709 = call float @dx.op.binary.f32(i32 35, float %6705, float %6706)  ; FMax(a,b)
  %6710 = call float @dx.op.binary.f32(i32 36, float %6709, float %6708)  ; FMin(a,b)
  %6711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6642, float %6643, float %6710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6712 = extractvalue %dx.types.ResRet.f32 %6711, 0
  %6713 = extractvalue %dx.types.ResRet.f32 %6711, 1
  %6714 = extractvalue %dx.types.ResRet.f32 %6711, 2
  %6715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.i32 %6715, 0
  %6717 = extractvalue %dx.types.CBufRet.i32 %6715, 1
  %6718 = uitofp i32 %6716 to float
  %6719 = uitofp i32 %6717 to float
  %6720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.f32 %6720, 0
  %6722 = extractvalue %dx.types.CBufRet.f32 %6720, 1
  %6723 = fmul fast float %6718, %6642
  %6724 = fmul fast float %6719, %6643
  %6725 = fadd fast float %6723, -5.000000e-01
  %6726 = fadd fast float %6724, -5.000000e-01
  %6727 = call float @dx.op.unary.f32(i32 22, float %6725)  ; Frc(value)
  %6728 = call float @dx.op.unary.f32(i32 22, float %6726)  ; Frc(value)
  %6729 = fmul fast float %6727, %6727
  %6730 = fmul fast float %6729, %6727
  %6731 = fsub fast float 3.000000e+00, %6727
  %6732 = fmul fast float %6729, %6731
  %6733 = fmul fast float %6727, 3.000000e+00
  %6734 = fmul fast float %6730, 3.000000e+00
  %6735 = fmul fast float %6729, 6.000000e+00
  %6736 = fsub fast float %6734, %6735
  %6737 = fadd fast float %6736, 4.000000e+00
  %6738 = fmul fast float %6737, 0x3FC5555560000000
  %6739 = fmul fast float %6730, -3.000000e+00
  %6740 = fadd fast float %6729, %6727
  %6741 = fmul fast float %6740, 3.000000e+00
  %6742 = fadd fast float %6739, 1.000000e+00
  %6743 = fadd fast float %6742, %6741
  %6744 = fmul fast float %6730, 0x3FC5555560000000
  %6745 = fmul fast float %6728, %6728
  %6746 = fmul fast float %6745, %6728
  %6747 = fsub fast float 3.000000e+00, %6728
  %6748 = fmul fast float %6745, %6747
  %6749 = fmul fast float %6728, 3.000000e+00
  %6750 = fmul fast float %6746, 3.000000e+00
  %6751 = fmul fast float %6745, 6.000000e+00
  %6752 = fsub fast float %6750, %6751
  %6753 = fadd fast float %6752, 4.000000e+00
  %6754 = fmul fast float %6753, 0x3FC5555560000000
  %6755 = fmul fast float %6746, -3.000000e+00
  %6756 = fadd fast float %6745, %6728
  %6757 = fmul fast float %6756, 3.000000e+00
  %6758 = fadd fast float %6755, 1.000000e+00
  %6759 = fadd fast float %6758, %6757
  %6760 = fmul fast float %6746, 0x3FC5555560000000
  %6761 = fadd fast float %6727, 1.000000e+00
  %6762 = fsub fast float 1.000000e+00, %6733
  %6763 = fadd fast float %6762, %6732
  %6764 = fadd fast float %6763, %6737
  %6765 = fmul fast float %6764, 0x3FC5555560000000
  %6766 = fdiv fast float %6738, %6765
  %6767 = fsub fast float %6761, %6766
  %6768 = fsub fast float 1.000000e+00, %6727
  %6769 = fadd fast float %6743, %6730
  %6770 = fmul fast float %6769, 0x3FC5555560000000
  %6771 = fdiv fast float %6744, %6770
  %6772 = fadd fast float %6768, %6771
  %6773 = fadd fast float %6728, 1.000000e+00
  %6774 = fsub fast float 1.000000e+00, %6749
  %6775 = fadd fast float %6774, %6748
  %6776 = fadd fast float %6775, %6753
  %6777 = fmul fast float %6776, 0x3FC5555560000000
  %6778 = fdiv fast float %6754, %6777
  %6779 = fsub fast float %6773, %6778
  %6780 = fsub fast float 1.000000e+00, %6728
  %6781 = fadd fast float %6759, %6746
  %6782 = fmul fast float %6781, 0x3FC5555560000000
  %6783 = fdiv fast float %6760, %6782
  %6784 = fadd fast float %6783, %6780
  %6785 = fmul fast float %6767, %6721
  %6786 = fsub fast float %6642, %6785
  %6787 = fmul fast float %6772, %6721
  %6788 = fadd fast float %6787, %6642
  %6789 = fmul fast float %6784, %6722
  %6790 = fadd fast float %6789, %6643
  %6791 = fmul fast float %6779, %6722
  %6792 = fsub fast float %6643, %6791
  %6793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6786, float %6792, float %6710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.ResRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.ResRet.f32 %6793, 2
  %6797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6788, float %6792, float %6710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6798 = extractvalue %dx.types.ResRet.f32 %6797, 0
  %6799 = extractvalue %dx.types.ResRet.f32 %6797, 1
  %6800 = extractvalue %dx.types.ResRet.f32 %6797, 2
  %6801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6786, float %6790, float %6710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6802 = extractvalue %dx.types.ResRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.ResRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.ResRet.f32 %6801, 2
  %6805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6788, float %6790, float %6710, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6806 = extractvalue %dx.types.ResRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.ResRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.ResRet.f32 %6805, 2
  %6809 = fsub fast float %6802, %6794
  %6810 = fsub fast float %6803, %6795
  %6811 = fsub fast float %6804, %6796
  %6812 = fmul fast float %6809, %6782
  %6813 = fmul fast float %6810, %6782
  %6814 = fmul fast float %6811, %6782
  %6815 = fadd fast float %6812, %6794
  %6816 = fadd fast float %6813, %6795
  %6817 = fadd fast float %6814, %6796
  %6818 = fsub fast float %6806, %6798
  %6819 = fsub fast float %6807, %6799
  %6820 = fsub fast float %6808, %6800
  %6821 = fmul fast float %6818, %6782
  %6822 = fmul fast float %6819, %6782
  %6823 = fmul fast float %6820, %6782
  %6824 = fsub fast float %6798, %6815
  %6825 = fadd fast float %6824, %6821
  %6826 = fsub fast float %6799, %6816
  %6827 = fadd fast float %6826, %6822
  %6828 = fsub fast float %6800, %6817
  %6829 = fadd fast float %6828, %6823
  %6830 = fmul fast float %6825, %6770
  %6831 = fmul fast float %6827, %6770
  %6832 = fmul fast float %6829, %6770
  %6833 = fadd fast float %6830, %6815
  %6834 = fadd fast float %6831, %6816
  %6835 = fadd fast float %6832, %6817
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6838 = fmul fast float %6833, %6837
  %6839 = fmul fast float %6834, %6837
  %6840 = fmul fast float %6835, %6837
  br label %6841

; <label>:6841                                    ; preds = %6672, %6629
  %6842 = phi float [ %6712, %6672 ], [ 1.000000e+00, %6629 ]
  %6843 = phi float [ %6713, %6672 ], [ 1.000000e+00, %6629 ]
  %6844 = phi float [ %6714, %6672 ], [ 1.000000e+00, %6629 ]
  %6845 = phi float [ %6838, %6672 ], [ 0.000000e+00, %6629 ]
  %6846 = phi float [ %6839, %6672 ], [ 0.000000e+00, %6629 ]
  %6847 = phi float [ %6840, %6672 ], [ 0.000000e+00, %6629 ]
  %6848 = fmul fast float %6845, %5181
  %6849 = fmul fast float %6846, %5181
  %6850 = fmul fast float %6847, %5181
  %6851 = fmul fast float %6842, %6636
  %6852 = call float @dx.op.dot3.f32(i32 55, float %6842, float %6843, float %6844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6853 = call float @dx.op.dot3.f32(i32 55, float %6848, float %6849, float %6850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6854 = select i1 %228, float %6852, float %6842
  %6855 = select i1 %228, float %6852, float %6843
  %6856 = select i1 %228, float 1.000000e+00, float %6844
  %6857 = select i1 %228, float %6853, float %6848
  %6858 = select i1 %228, float 0.000000e+00, float %6849
  %6859 = select i1 %228, float 0.000000e+00, float %6850
  %6860 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.i32 %6860, 3
  %6862 = and i32 %6861, 3
  %6863 = icmp ne i32 %6862, 0
  %6864 = and i32 %6861, 4
  %6865 = icmp ne i32 %6864, 0
  %6866 = and i1 %6863, %6865
  %6867 = and i1 %228, %6866
  br i1 %6867, label %6868, label %6874

; <label>:6868                                    ; preds = %6841
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6871 = fadd fast float %6851, -1.000000e+00
  %6872 = fmul fast float %6870, %6871
  %6873 = fadd fast float %6872, 1.000000e+00
  br label %6874

; <label>:6874                                    ; preds = %6868, %6841
  %6875 = phi float [ %6873, %6868 ], [ %6851, %6841 ]
  %6876 = fadd fast float %6633, %6630
  %6877 = fmul fast float %6854, %6876
  %6878 = fadd fast float %6877, %6857
  %6879 = fadd fast float %6634, %6631
  %6880 = fmul fast float %6855, %6879
  %6881 = fadd fast float %6880, %6858
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 0
  br i1 %228, label %6884, label %6908

; <label>:6884                                    ; preds = %6874
  %6885 = fadd fast float %6878, %6881
  %6886 = fmul fast float %6883, %6885
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 3
  %6889 = extractvalue %dx.types.CBufRet.f32 %5185, 1
  %6890 = fsub fast float %5190, %5184
  %6891 = fadd fast float %6890, %5191
  %6892 = fsub fast float %6891, %6889
  %6893 = extractvalue %dx.types.CBufRet.f32 %5185, 2
  %6894 = fmul fast float %6892, %6893
  %6895 = call float @dx.op.unary.f32(i32 7, float %6894)  ; Saturate(value)
  %6896 = fsub fast float %6895, %6888
  %6897 = fmul fast float %6896, %6875
  %6898 = fadd fast float %6897, %6888
  %6899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6899, 0
  %6901 = fsub fast float %6898, %6900
  %6902 = fmul fast float %6901, 1.000000e+01
  %6903 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6904 = fsub fast float %1471, %5181
  %6905 = fmul fast float %6903, %6904
  %6906 = fadd fast float %6905, %5181
  %6907 = fmul fast float %6906, %6898
  br label %6932

; <label>:6908                                    ; preds = %6874
  %6909 = fadd fast float %6635, %6632
  %6910 = fmul fast float %6856, %6909
  %6911 = fadd fast float %6910, %6859
  %6912 = fmul fast float %6883, %6878
  %6913 = fmul fast float %6883, %6881
  %6914 = fmul fast float %6883, %6911
  %6915 = call float @dx.op.binary.f32(i32 35, float %6913, float %6914)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 35, float %6912, float %6915)  ; FMax(a,b)
  %6917 = call float @dx.op.binary.f32(i32 35, float %6916, float %5181)  ; FMax(a,b)
  %6918 = fcmp fast ugt float %6917, 0x3F10000000000000
  br i1 %6918, label %6920, label %6919

; <label>:6919                                    ; preds = %6908
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6920

; <label>:6920                                    ; preds = %6919, %6908
  %6921 = add i32 %65, 132
  %6922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %6921, i32 undef)  ; BufferLoad(srv,index,wot)
  %6923 = extractvalue %dx.types.ResRet.i32 %6922, 0
  %6924 = and i32 %6923, 32
  %6925 = icmp eq i32 %6924, 0
  br i1 %6925, label %6932, label %6926

; <label>:6926                                    ; preds = %6920
  %6927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6928 = extractvalue %dx.types.CBufRet.f32 %6927, 0
  %6929 = fmul fast float %6928, 0x3FE99999A0000000
  %6930 = fadd fast float %6928, %6912
  %6931 = fadd fast float %6929, %6914
  br label %6932

; <label>:6932                                    ; preds = %6926, %6920, %6884
  %6933 = phi float [ %6886, %6884 ], [ %6930, %6926 ], [ %6912, %6920 ]
  %6934 = phi float [ %6907, %6884 ], [ %6913, %6926 ], [ %6913, %6920 ]
  %6935 = phi float [ %6906, %6884 ], [ %6931, %6926 ], [ %6914, %6920 ]
  %6936 = phi float [ %6906, %6884 ], [ %5181, %6926 ], [ %5181, %6920 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6937 = call float @dx.op.binary.f32(i32 36, float %6933, float 3.225500e+04)  ; FMin(a,b)
  %6938 = call float @dx.op.binary.f32(i32 36, float %6934, float 3.225500e+04)  ; FMin(a,b)
  %6939 = call float @dx.op.binary.f32(i32 36, float %6935, float 3.225500e+04)  ; FMin(a,b)
  %6940 = call float @dx.op.binary.f32(i32 36, float %6936, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6937)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6938)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6939)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6940)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!78 = !{[24 x i32] [i32 22, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!79 = !{void ()* @ps_main, !"ps_main", !80, !4, !97}
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
!95 = !{!96}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !83, i8 0, i32 1, i8 4, i32 0, i8 0, !84}
!97 = !{i32 0, i64 16}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
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
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !{!115, !117, !119, !121}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!118 = distinct !{!118, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!121 = distinct !{!121, !122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!122 = distinct !{!122, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = !{!135, !135, i64 0}
!135 = !{!"float", !112, i64 0}
!136 = !{!137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!137 = distinct !{!137, !138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!138 = distinct !{!138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!139 = distinct !{!139, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!140 = distinct !{!140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!141 = distinct !{!141, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!142 = distinct !{!142, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!151 = distinct !{!151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!160 = !{!156}
!161 = !{!157, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!162 = !{!163}
!163 = distinct !{!163, !164, !"\01?sort@@YAXAIAM00@Z: %c"}
!164 = distinct !{!164, !"\01?sort@@YAXAIAM00@Z"}
!165 = !{!166, !167, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!166 = distinct !{!166, !164, !"\01?sort@@YAXAIAM00@Z: %a"}
!167 = distinct !{!167, !164, !"\01?sort@@YAXAIAM00@Z: %b"}
!168 = !{!167}
!169 = !{!166, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!170 = !{!166}
!171 = !{!167, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 2}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}

