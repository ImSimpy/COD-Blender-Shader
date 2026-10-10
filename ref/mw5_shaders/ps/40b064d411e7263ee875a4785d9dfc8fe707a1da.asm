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
; shader hash: 195549d045f5beb72283eee9fc1f72fd
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
  %949 = phi float [ 0.000000e+00, %295 ], [ %930, %929 ]
  %950 = phi float [ 0.000000e+00, %295 ], [ %931, %929 ]
  %951 = phi float [ 0.000000e+00, %295 ], [ %932, %929 ]
  %952 = phi float [ 0.000000e+00, %295 ], [ %802, %929 ]
  %953 = phi float [ 0.000000e+00, %295 ], [ %803, %929 ]
  %954 = phi float [ 0.000000e+00, %295 ], [ %804, %929 ]
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
  br i1 %1040, label %1466, label %1041

; <label>:1041                                    ; preds = %946
  %1042 = and i32 %1037, 1023
  br label %1043

; <label>:1043                                    ; preds = %1169, %1041
  %1044 = phi float [ %1170, %1169 ], [ 0.000000e+00, %1041 ]
  %1045 = phi float [ %1171, %1169 ], [ %961, %1041 ]
  %1046 = phi float [ %1172, %1169 ], [ %959, %1041 ]
  %1047 = phi float [ %1173, %1169 ], [ 0.000000e+00, %1041 ]
  %1048 = phi float [ %1174, %1169 ], [ 0.000000e+00, %1041 ]
  %1049 = phi float [ %1175, %1169 ], [ %949, %1041 ]
  %1050 = phi float [ %1176, %1169 ], [ %950, %1041 ]
  %1051 = phi float [ %1177, %1169 ], [ %951, %1041 ]
  %1052 = phi float [ %1178, %1169 ], [ %987, %1041 ]
  %1053 = phi float [ %1179, %1169 ], [ %988, %1041 ]
  %1054 = phi float [ %1180, %1169 ], [ %989, %1041 ]
  %1055 = phi float [ %1181, %1169 ], [ %958, %1041 ]
  %1056 = phi float [ %1182, %1169 ], [ %957, %1041 ]
  %1057 = phi float [ %1183, %1169 ], [ 0.000000e+00, %1041 ]
  %1058 = phi float [ %1184, %1169 ], [ %955, %1041 ]
  %1059 = phi float [ %1185, %1169 ], [ %952, %1041 ]
  %1060 = phi float [ %1186, %1169 ], [ %953, %1041 ]
  %1061 = phi float [ %1187, %1169 ], [ %954, %1041 ]
  %1062 = phi i32 [ %1119, %1169 ], [ 0, %1041 ]
  %1063 = add nuw nsw i32 %1062, %1039
  %1064 = shl i32 %1063, 2
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = shl i32 %1066, 8
  %1068 = or i32 %1067, 48
  %1069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = extractvalue %dx.types.ResRet.f32 %1069, 3
  %1074 = or i32 %1067, 64
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.i32 %1075, 1
  %1078 = or i32 %1067, 80
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 3
  %1082 = or i32 %1067, 96
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = or i32 %1067, 112
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1091 = or i32 %1067, 128
  %1092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = extractvalue %dx.types.ResRet.f32 %1092, 3
  %1097 = or i32 %1067, 144
  %1098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.ResRet.f32 %1098, 2
  %1102 = extractvalue %dx.types.ResRet.f32 %1098, 3
  %1103 = or i32 %1067, 160
  %1104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1108 = extractvalue %dx.types.ResRet.f32 %1104, 3
  %1109 = or i32 %1067, 192
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = or i32 %1067, 208
  %1113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = or i32 %1067, 248
  %1116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = add nuw nsw i32 %1062, 1
  %1120 = bitcast float %1073 to i32
  %1121 = and i32 %1120, 2560
  %1122 = icmp eq i32 %1121, 0
  %1123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = extractvalue %dx.types.ResRet.f32 %1123, 3
  %1128 = call float @dx.op.dot4.f32(i32 56, float %1124, float %1125, float %1126, float %1127, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1129 = or i32 %1067, 16
  %1130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = extractvalue %dx.types.ResRet.f32 %1130, 3
  %1135 = call float @dx.op.dot4.f32(i32 56, float %1131, float %1132, float %1133, float %1134, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1136 = or i32 %1067, 32
  %1137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.ResRet.f32 %1137, 2
  %1141 = extractvalue %dx.types.ResRet.f32 %1137, 3
  %1142 = call float @dx.op.dot4.f32(i32 56, float %1138, float %1139, float %1140, float %1141, float %137, float %138, float %139, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1143 = call float @dx.op.unary.f32(i32 27, float %1128)  ; Round_ni(value)
  %1144 = call float @dx.op.unary.f32(i32 6, float %1143)  ; FAbs(value)
  %1145 = call float @dx.op.unary.f32(i32 27, float %1135)  ; Round_ni(value)
  %1146 = call float @dx.op.unary.f32(i32 6, float %1145)  ; FAbs(value)
  %1147 = call float @dx.op.unary.f32(i32 6, float %1142)  ; FAbs(value)
  %1148 = call float @dx.op.unary.f32(i32 27, float %1147)  ; Round_ni(value)
  %1149 = fadd fast float %1146, %1144
  %1150 = fadd fast float %1149, %1148
  %1151 = fcmp fast oeq float %1150, 0.000000e+00
  %1152 = call float @dx.op.dot4.f32(i32 56, float %1124, float %1125, float %1126, float %1127, float %996, float %997, float %998, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1153 = call float @dx.op.dot4.f32(i32 56, float %1131, float %1132, float %1133, float %1134, float %996, float %997, float %998, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1154 = call float @dx.op.dot4.f32(i32 56, float %1124, float %1125, float %1126, float %1127, float %999, float %1000, float %1001, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1155 = call float @dx.op.dot4.f32(i32 56, float %1131, float %1132, float %1133, float %1134, float %999, float %1000, float %1001, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1156 = fsub fast float %1152, %1128
  %1157 = fsub fast float %1154, %1128
  %1158 = fsub fast float %1153, %1135
  %1159 = fsub fast float %1155, %1135
  %1160 = call float @dx.op.dot3.f32(i32 55, float %1070, float %1071, float %1072, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 2
  %1163 = fadd fast float %1162, %1160
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1161, 0
  %1166 = fcmp fast ogt float %1164, %1165
  %1167 = and i1 %1151, %1166
  %1168 = and i1 %1122, %1167
  br i1 %1168, label %1189, label %1169

; <label>:1169                                    ; preds = %1452, %1270, %1189, %1043
  %1170 = phi float [ %1044, %1189 ], [ %1273, %1270 ], [ %1273, %1452 ], [ %1044, %1043 ]
  %1171 = phi float [ %1045, %1189 ], [ %1045, %1270 ], [ %1427, %1452 ], [ %1045, %1043 ]
  %1172 = phi float [ %1046, %1189 ], [ %1046, %1270 ], [ %1425, %1452 ], [ %1046, %1043 ]
  %1173 = phi float [ %1047, %1189 ], [ %1047, %1270 ], [ %1397, %1452 ], [ %1047, %1043 ]
  %1174 = phi float [ %1048, %1189 ], [ %1048, %1270 ], [ %1395, %1452 ], [ %1048, %1043 ]
  %1175 = phi float [ %1049, %1189 ], [ %1049, %1270 ], [ %1462, %1452 ], [ %1049, %1043 ]
  %1176 = phi float [ %1050, %1189 ], [ %1050, %1270 ], [ %1463, %1452 ], [ %1050, %1043 ]
  %1177 = phi float [ %1051, %1189 ], [ %1051, %1270 ], [ %1464, %1452 ], [ %1051, %1043 ]
  %1178 = phi float [ %1052, %1189 ], [ %1052, %1270 ], [ %1376, %1452 ], [ %1052, %1043 ]
  %1179 = phi float [ %1053, %1189 ], [ %1053, %1270 ], [ %1377, %1452 ], [ %1053, %1043 ]
  %1180 = phi float [ %1054, %1189 ], [ %1054, %1270 ], [ %1378, %1452 ], [ %1054, %1043 ]
  %1181 = phi float [ %1055, %1189 ], [ %1055, %1270 ], [ %1405, %1452 ], [ %1055, %1043 ]
  %1182 = phi float [ %1056, %1189 ], [ %1056, %1270 ], [ %1402, %1452 ], [ %1056, %1043 ]
  %1183 = phi float [ %1057, %1189 ], [ %1057, %1270 ], [ %1399, %1452 ], [ %1057, %1043 ]
  %1184 = phi float [ %1058, %1189 ], [ %1058, %1270 ], [ %1393, %1452 ], [ %1058, %1043 ]
  %1185 = phi float [ %1059, %1189 ], [ %1059, %1270 ], [ %1388, %1452 ], [ %1059, %1043 ]
  %1186 = phi float [ %1060, %1189 ], [ %1060, %1270 ], [ %1389, %1452 ], [ %1060, %1043 ]
  %1187 = phi float [ %1061, %1189 ], [ %1061, %1270 ], [ %1390, %1452 ], [ %1061, %1043 ]
  %1188 = icmp eq i32 %1119, %1042
  br i1 %1188, label %1465, label %1043

; <label>:1189                                    ; preds = %1043
  %1190 = extractvalue %dx.types.ResRet.f32 %1089, 3
  %1191 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1192 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1193 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1194 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1195 = extractvalue %dx.types.ResRet.i32 %1075, 3
  %1196 = extractvalue %dx.types.ResRet.i32 %1075, 2
  %1197 = add i32 %1195, 0
  %1198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1197, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1200 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1198, %dx.types.Handle %1199, float %1128, float %1135, float undef, float undef, i32 0, i32 0, i32 undef, float %1156, float %1158, float undef, float %1157, float %1159, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = fmul fast float %1201, %1194
  %1203 = fadd fast float %1202, %1193
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1205 = fmul fast float %1128, %1084
  %1206 = call float @dx.op.tertiary.f32(i32 46, float %1085, float %1135, float %1205)  ; FMad(a,b,c)
  %1207 = fadd fast float %1206, %1192
  %1208 = fmul fast float %1128, %1086
  %1209 = call float @dx.op.tertiary.f32(i32 46, float %1087, float %1135, float %1208)  ; FMad(a,b,c)
  %1210 = fadd fast float %1209, %1191
  %1211 = fmul fast float %1156, %1084
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %1085, float %1158, float %1211)  ; FMad(a,b,c)
  %1213 = fmul fast float %1156, %1086
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1087, float %1158, float %1213)  ; FMad(a,b,c)
  %1215 = fmul fast float %1157, %1084
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %1085, float %1159, float %1215)  ; FMad(a,b,c)
  %1217 = fmul fast float %1157, %1086
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %1087, float %1159, float %1217)  ; FMad(a,b,c)
  %1219 = add i32 %1196, 0
  %1220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1219, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1221 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1220, %dx.types.Handle %1199, float %1207, float %1210, float undef, float undef, i32 0, i32 0, i32 undef, float %1212, float %1214, float undef, float %1216, float %1218, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = and i32 %1120, 1024
  %1224 = icmp ne i32 %1223, 0
  %1225 = fcmp fast ogt float %1222, 0x3FE0101020000000
  %1226 = uitofp i1 %1225 to float
  %1227 = select i1 %1224, float %1226, float %1222
  %1228 = and i32 %1120, 8192
  %1229 = icmp ne i32 %1228, 0
  %1230 = select i1 %1229, float %1190, float 1.000000e+00
  %1231 = fmul fast float %1128, 2.000000e+00
  %1232 = fadd fast float %1231, -1.000000e+00
  %1233 = call float @dx.op.unary.f32(i32 6, float %1232)  ; FAbs(value)
  %1234 = fmul fast float %1233, %1117
  %1235 = fsub fast float %1234, %1117
  %1236 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1237 = fmul fast float %1135, 2.000000e+00
  %1238 = fadd fast float %1237, -1.000000e+00
  %1239 = call float @dx.op.unary.f32(i32 6, float %1238)  ; FAbs(value)
  %1240 = fmul fast float %1239, %1118
  %1241 = fsub fast float %1240, %1118
  %1242 = call float @dx.op.unary.f32(i32 7, float %1241)  ; Saturate(value)
  %1243 = fmul fast float %1147, %1080
  %1244 = fsub fast float %1243, %1080
  %1245 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1246 = fmul fast float %1204, %1230
  %1247 = fmul fast float %1246, %1201
  %1248 = fmul fast float %1247, %1236
  %1249 = fmul fast float %1248, %1227
  %1250 = fmul fast float %1249, %1242
  %1251 = fmul fast float %1250, %1245
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1254 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1255 = fsub fast float %1164, %1254
  %1256 = fmul fast float %1255, %1253
  %1257 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1258 = fmul fast float %1251, %1081
  %1259 = fadd fast float %1251, %1081
  %1260 = fmul fast float %1259, %1090
  %1261 = fsub fast float %1260, %1090
  %1262 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1263 = and i32 %1120, 128
  %1264 = icmp ne i32 %1263, 0
  %1265 = select i1 %1264, float %1262, float %1258
  %1266 = fmul fast float %1265, %1257
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = fcmp fast ugt float %1266, %1268
  br i1 %1269, label %1270, label %1169

; <label>:1270                                    ; preds = %1189
  %1271 = select i1 %1229, float %1266, float 0.000000e+00
  %1272 = fadd fast float %1271, %1044
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  br i1 %1229, label %1169, label %1274

; <label>:1274                                    ; preds = %1270
  %1275 = and i32 %1120, 4
  %1276 = and i32 %1120, 8
  %1277 = add i32 %1076, 0
  %1278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1277, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1280 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1278, %dx.types.Handle %1279, float %1207, float %1210, float undef, float undef, i32 0, i32 0, i32 undef, float %1212, float %1214, float undef, float %1216, float %1218, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.ResRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.ResRet.f32 %1280, 2
  %1284 = extractvalue %dx.types.ResRet.f32 %1280, 3
  %1285 = bitcast float %1102 to i32
  %1286 = and i32 %1285, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = lshr i32 %1285, 8
  %1289 = and i32 %1288, 255
  %1290 = uitofp i32 %1289 to float
  %1291 = fmul fast float %1284, %1287
  %1292 = fadd fast float %1291, %1290
  %1293 = fmul fast float %1292, 0x3F70101000000000
  %1294 = add i32 %1077, 0
  %1295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1294, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1296 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1295, %dx.types.Handle %1279, float %1207, float %1210, float undef, float undef, i32 0, i32 0, i32 undef, float %1212, float %1214, float undef, float %1216, float %1218, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1297 = extractvalue %dx.types.ResRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.ResRet.f32 %1296, 1
  %1299 = extractvalue %dx.types.ResRet.f32 %1296, 2
  %1300 = extractvalue %dx.types.ResRet.f32 %1296, 3
  %1301 = bitcast float %1096 to i32
  %1302 = and i32 %1301, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = lshr i32 %1301, 8
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = lshr i32 %1301, 16
  %1308 = and i32 %1307, 255
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3F70101000000000
  %1311 = fmul fast float %1297, %1303
  %1312 = fadd fast float %1311, %1306
  %1313 = fmul fast float %1312, 0x3F70101000000000
  %1314 = fadd fast float %1298, -5.000000e-01
  %1315 = fadd fast float %1300, -5.000000e-01
  %1316 = fmul fast float %1314, %1310
  %1317 = fmul fast float %1315, %1310
  %1318 = fadd fast float %1316, 5.000000e-01
  %1319 = fadd fast float %1317, 5.000000e-01
  %1320 = fmul fast float %1281, %1105
  %1321 = fmul fast float %1282, %1106
  %1322 = fmul fast float %1283, %1107
  %1323 = fmul fast float %1318, 2.000000e+00
  %1324 = fadd fast float %1323, -1.000000e+00
  %1325 = fmul fast float %1319, 2.000000e+00
  %1326 = fadd fast float %1325, -1.000000e+00
  %1327 = fadd fast float %1324, %1326
  %1328 = fmul fast float %1327, 5.000000e-01
  %1329 = fsub fast float %1324, %1326
  %1330 = fmul fast float %1329, 5.000000e-01
  %1331 = call float @dx.op.unary.f32(i32 6, float %1328)  ; FAbs(value)
  %1332 = fsub fast float 1.000000e+00, %1331
  %1333 = call float @dx.op.unary.f32(i32 6, float %1330)  ; FAbs(value)
  %1334 = fsub fast float %1332, %1333
  %1335 = call float @dx.op.dot3.f32(i32 55, float %1328, float %1330, float %1334, float %1328, float %1330, float %1334)  ; Dot3(ax,ay,az,bx,by,bz)
  %1336 = call float @dx.op.unary.f32(i32 25, float %1335)  ; Rsqrt(value)
  %1337 = fmul fast float %1328, %1336
  %1338 = fmul fast float %1330, %1336
  %1339 = fmul fast float %1336, %1334
  %1340 = fmul fast float %1339, %1070
  %1341 = fmul fast float %1339, %1071
  %1342 = fmul fast float %1339, %1072
  %1343 = fmul fast float %1337, %1093
  %1344 = fmul fast float %1337, %1094
  %1345 = fmul fast float %1337, %1095
  %1346 = fadd fast float %1343, %1340
  %1347 = fadd fast float %1344, %1341
  %1348 = fadd fast float %1345, %1342
  %1349 = fmul fast float %1338, %1099
  %1350 = fmul fast float %1338, %1100
  %1351 = fmul fast float %1338, %1101
  %1352 = fadd fast float %1346, %1349
  %1353 = fadd fast float %1347, %1350
  %1354 = fadd fast float %1348, %1351
  %1355 = call float @dx.op.dot3.f32(i32 55, float %1352, float %1353, float %1354, float %1352, float %1353, float %1354)  ; Dot3(ax,ay,az,bx,by,bz)
  %1356 = call float @dx.op.unary.f32(i32 25, float %1355)  ; Rsqrt(value)
  %1357 = fmul fast float %1352, %1356
  %1358 = fmul fast float %1353, %1356
  %1359 = fmul fast float %1354, %1356
  %1360 = icmp ne i32 %1276, 0
  %1361 = select i1 %1360, float 1.000000e+00, float 0.000000e+00
  %1362 = fmul fast float %1266, %1361
  %1363 = and i32 %1120, 1
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1365, label %1369

; <label>:1365                                    ; preds = %1274
  %1366 = fsub fast float %1357, %1052
  %1367 = fsub fast float %1358, %1053
  %1368 = fsub fast float %1359, %1054
  br label %1369

; <label>:1369                                    ; preds = %1365, %1274
  %1370 = phi float [ %1366, %1365 ], [ %1357, %1274 ]
  %1371 = phi float [ %1367, %1365 ], [ %1358, %1274 ]
  %1372 = phi float [ %1368, %1365 ], [ %1359, %1274 ]
  %1373 = fmul float %1372, %1362
  %1374 = fmul float %1371, %1362
  %1375 = fmul float %1370, %1362
  %1376 = fadd fast float %1375, %1052
  %1377 = fadd fast float %1374, %1053
  %1378 = fadd fast float %1373, %1054
  %1379 = icmp ne i32 %1275, 0
  %1380 = select i1 %1379, float 1.000000e+00, float 0.000000e+00
  %1381 = fmul fast float %1266, %1380
  %1382 = fsub fast float %1320, %1059
  %1383 = fsub fast float %1321, %1060
  %1384 = fsub fast float %1322, %1061
  %1385 = fmul fast float %1382, %1381
  %1386 = fmul fast float %1383, %1381
  %1387 = fmul fast float %1384, %1381
  %1388 = fadd fast float %1385, %1059
  %1389 = fadd fast float %1386, %1060
  %1390 = fadd fast float %1387, %1061
  %1391 = fsub fast float %1293, %1058
  %1392 = fmul fast float %1391, %1381
  %1393 = fadd fast float %1392, %1058
  %1394 = fmul fast float %1381, %1048
  %1395 = fsub fast float %1048, %1394
  %1396 = fmul fast float %1381, %1047
  %1397 = fsub fast float %1047, %1396
  %1398 = fadd fast float %1266, %1057
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1400 = fsub fast float %1313, %1056
  %1401 = fmul fast float %1400, %1362
  %1402 = fadd fast float %1401, %1056
  %1403 = fsub fast float %1299, %1055
  %1404 = fmul fast float %1403, %1362
  %1405 = fadd fast float %1404, %1055
  %1406 = call float @dx.op.dot3.f32(i32 55, float %1320, float %1321, float %1322, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.CBufRet.f32 %1407, 1
  %1410 = fmul fast float %1409, %1406
  %1411 = fadd fast float %1410, %1408
  %1412 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1413 = bitcast float %1108 to i32
  %1414 = and i32 %1413, 65535
  %1415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1414)  ; LegacyF16ToF32(value)
  %1416 = lshr i32 %1413, 16
  %1417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1416)  ; LegacyF16ToF32(value)
  %1418 = fcmp fast oge float %1415, 0.000000e+00
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = select i1 %1418, float %1415, float %1420
  %1422 = fadd fast float %1421, %1417
  %1423 = fsub fast float %1412, %1046
  %1424 = fmul fast float %1423, %1266
  %1425 = fadd fast float %1424, %1046
  %1426 = fmul fast float %1422, %1266
  %1427 = call float @dx.op.binary.f32(i32 35, float %1045, float %1426)  ; FMax(a,b)
  %1428 = and i32 %1120, 16
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1452, label %1430

; <label>:1430                                    ; preds = %1369
  %1431 = bitcast float %1114 to i32
  %1432 = add i32 %1111, 0
  %1433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1432, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1434 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1433, %dx.types.Handle %1279, float %1207, float %1210, float undef, float undef, i32 0, i32 0, i32 undef, float %1212, float %1214, float undef, float %1216, float %1218, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.ResRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.ResRet.f32 %1434, 2
  %1438 = and i32 %1431, 65535
  %1439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1438)  ; LegacyF16ToF32(value)
  %1440 = fmul fast float %1435, %1105
  %1441 = fmul fast float %1436, %1106
  %1442 = fmul fast float %1437, %1107
  %1443 = and i32 %1120, 16384
  %1444 = icmp ne i32 %1443, 0
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = select i1 %1444, float %1446, float 1.000000e+00
  %1448 = fmul fast float %1447, %1439
  %1449 = fmul fast float %1440, %1448
  %1450 = fmul fast float %1441, %1448
  %1451 = fmul fast float %1442, %1448
  br label %1452

; <label>:1452                                    ; preds = %1430, %1369
  %1453 = phi float [ %1449, %1430 ], [ 0.000000e+00, %1369 ]
  %1454 = phi float [ %1450, %1430 ], [ 0.000000e+00, %1369 ]
  %1455 = phi float [ %1451, %1430 ], [ 0.000000e+00, %1369 ]
  %1456 = fsub fast float %1453, %1049
  %1457 = fsub fast float %1454, %1050
  %1458 = fsub fast float %1455, %1051
  %1459 = fmul fast float %1456, %1266
  %1460 = fmul fast float %1457, %1266
  %1461 = fmul fast float %1458, %1266
  %1462 = fadd fast float %1459, %1049
  %1463 = fadd fast float %1460, %1050
  %1464 = fadd fast float %1461, %1051
  br label %1169

; <label>:1465                                    ; preds = %1169
  br label %1466

; <label>:1466                                    ; preds = %1465, %946
  %1467 = phi float [ 0.000000e+00, %946 ], [ %1170, %1465 ]
  %1468 = phi float [ %961, %946 ], [ %1171, %1465 ]
  %1469 = phi float [ %959, %946 ], [ %1172, %1465 ]
  %1470 = phi float [ 0.000000e+00, %946 ], [ %1173, %1465 ]
  %1471 = phi float [ 0.000000e+00, %946 ], [ %1174, %1465 ]
  %1472 = phi float [ %949, %946 ], [ %1175, %1465 ]
  %1473 = phi float [ %950, %946 ], [ %1176, %1465 ]
  %1474 = phi float [ %951, %946 ], [ %1177, %1465 ]
  %1475 = phi float [ %987, %946 ], [ %1178, %1465 ]
  %1476 = phi float [ %988, %946 ], [ %1179, %1465 ]
  %1477 = phi float [ %989, %946 ], [ %1180, %1465 ]
  %1478 = phi float [ %958, %946 ], [ %1181, %1465 ]
  %1479 = phi float [ %957, %946 ], [ %1182, %1465 ]
  %1480 = phi float [ 0.000000e+00, %946 ], [ %1183, %1465 ]
  %1481 = phi float [ %955, %946 ], [ %1184, %1465 ]
  %1482 = phi float [ %952, %946 ], [ %1185, %1465 ]
  %1483 = phi float [ %953, %946 ], [ %1186, %1465 ]
  %1484 = phi float [ %954, %946 ], [ %1187, %1465 ]
  %1485 = call float @dx.op.dot3.f32(i32 55, float %1475, float %1476, float %1477, float %1475, float %1476, float %1477)  ; Dot3(ax,ay,az,bx,by,bz)
  %1486 = call float @dx.op.unary.f32(i32 25, float %1485)  ; Rsqrt(value)
  %1487 = fmul fast float %1486, %1475
  %1488 = fmul fast float %1486, %1476
  %1489 = fmul fast float %1486, %1477
  %1490 = fadd fast float %1480, %956
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  %1492 = call float @dx.op.dot3.f32(i32 55, float %1487, float %1488, float %1489, float %1487, float %1488, float %1489)  ; Dot3(ax,ay,az,bx,by,bz)
  %1493 = call float @dx.op.unary.f32(i32 25, float %1492)  ; Rsqrt(value)
  %1494 = fmul fast float %1493, %1487
  %1495 = fmul fast float %1493, %1488
  %1496 = fmul fast float %1493, %1489
  %1497 = fadd fast float %1481, 0xBFB99999A0000000
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1499 = fmul fast float %1498, 0x3FF1C71C80000000
  %1500 = call float @dx.op.binary.f32(i32 36, float %1481, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1501 = fsub fast float 1.000000e+00, %1499
  %1502 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1503 = fmul fast float %1502, %1482
  %1504 = fmul fast float %1502, %1483
  %1505 = fmul fast float %1502, %1484
  %1506 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1507 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1508 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1509 = fmul fast float %1499, %1482
  %1510 = fmul fast float %1499, %1483
  %1511 = fmul fast float %1499, %1484
  %1512 = fadd fast float %1509, %1500
  %1513 = fadd fast float %1510, %1500
  %1514 = fadd fast float %1511, %1500
  %1515 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1516 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1517 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1518 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.i32 %1519, 3
  %1521 = and i32 %1520, 8
  %1522 = icmp ne i32 %1521, 0
  %1523 = call float @dx.op.binary.f32(i32 35, float %1506, float %1482)  ; FMax(a,b)
  %1524 = call float @dx.op.binary.f32(i32 35, float %1507, float %1482)  ; FMax(a,b)
  %1525 = call float @dx.op.binary.f32(i32 35, float %1508, float %1482)  ; FMax(a,b)
  %1526 = call float @dx.op.dot3.f32(i32 55, float %1506, float %1507, float %1508, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1527 = select i1 %228, float %1482, float %1506
  %1528 = select i1 %228, float %1526, float %1507
  %1529 = select i1 %228, float 1.000000e+00, float %1508
  %1530 = select i1 %1522, float %1523, float %1527
  %1531 = select i1 %1522, float %1524, float %1528
  %1532 = select i1 %1522, float %1525, float %1529
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.CBufRet.f32 %1533, 1
  %1536 = extractvalue %dx.types.CBufRet.f32 %1533, 2
  %1537 = fadd fast float %1534, %137
  %1538 = fadd fast float %1535, %138
  %1539 = fadd fast float %1536, %139
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 0
  %1542 = extractvalue %dx.types.CBufRet.f32 %1540, 1
  %1543 = fsub fast float %1537, %1541
  %1544 = fsub fast float %1538, %1542
  %1545 = fmul fast float %1543, %1543
  %1546 = fmul fast float %1544, %1544
  %1547 = fadd fast float %1545, %1546
  %1548 = call float @dx.op.unary.f32(i32 24, float %1547)  ; Sqrt(value)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1540, 2
  %1550 = fcmp fast olt float %1548, %1549
  br i1 %1550, label %1551, label %1618

; <label>:1551                                    ; preds = %1466
  %1552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.f32 %1552, 0
  %1554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1555 = extractvalue %dx.types.CBufRet.f32 %1554, 0
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.CBufRet.f32 %1552, 1
  %1559 = extractvalue %dx.types.CBufRet.f32 %1554, 1
  %1560 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1561 = extractvalue %dx.types.CBufRet.f32 %1552, 3
  %1562 = extractvalue %dx.types.CBufRet.f32 %1554, 3
  %1563 = extractvalue %dx.types.CBufRet.f32 %1556, 3
  %1564 = fadd fast float %1561, %1537
  %1565 = fadd fast float %1562, %1538
  %1566 = fadd fast float %1563, %1539
  %1567 = fmul fast float %1564, %1553
  %1568 = call float @dx.op.tertiary.f32(i32 46, float %1565, float %1555, float %1567)  ; FMad(a,b,c)
  %1569 = call float @dx.op.tertiary.f32(i32 46, float %1566, float %1557, float %1568)  ; FMad(a,b,c)
  %1570 = fmul fast float %1564, %1558
  %1571 = call float @dx.op.tertiary.f32(i32 46, float %1565, float %1559, float %1570)  ; FMad(a,b,c)
  %1572 = call float @dx.op.tertiary.f32(i32 46, float %1566, float %1560, float %1571)  ; FMad(a,b,c)
  %1573 = fsub fast float %1569, %1561
  %1574 = fsub fast float %1572, %1562
  %1575 = fsub fast float %1573, %1541
  %1576 = fadd fast float %1575, %1549
  %1577 = fsub fast float %1574, %1542
  %1578 = fadd fast float %1577, %1549
  %1579 = extractvalue %dx.types.CBufRet.f32 %1540, 3
  %1580 = fmul fast float %1576, %1579
  %1581 = fmul fast float %1578, %1579
  %1582 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1583 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1584 = fsub fast float 1.000000e+00, %1582
  %1585 = fsub fast float 1.000000e+00, %1583
  %1586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %58, float %1584, float %1585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = fcmp fast ugt float %1587, 0.000000e+00
  br i1 %1588, label %1589, label %1892

; <label>:1589                                    ; preds = %1551
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 2
  %1592 = fmul fast float %1591, %1587
  %1593 = extractvalue %dx.types.CBufRet.f32 %1590, 3
  %1594 = fadd fast float %1593, %1592
  %1595 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1596 = fadd fast float %1594, %1563
  %1597 = fmul fast float %1569, %1557
  %1598 = call float @dx.op.tertiary.f32(i32 46, float %1572, float %1560, float %1597)  ; FMad(a,b,c)
  %1599 = call float @dx.op.tertiary.f32(i32 46, float %1596, float %1595, float %1598)  ; FMad(a,b,c)
  %1600 = fsub fast float %1599, %1563
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 2
  %1603 = fsub fast float %1600, %1602
  %1604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %58, float %1584, float %1585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1605 = extractvalue %dx.types.ResRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.ResRet.f32 %1604, 1
  %1607 = extractvalue %dx.types.ResRet.f32 %1604, 2
  %1608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %58, float %1584, float %1585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1609 = extractvalue %dx.types.ResRet.f32 %1608, 0
  %1610 = extractvalue %dx.types.ResRet.f32 %1608, 1
  %1611 = extractvalue %dx.types.ResRet.f32 %1608, 2
  %1612 = fadd fast float %1609, %1605
  %1613 = fmul fast float %1612, 0x3F847AE140000000
  %1614 = fadd fast float %1610, %1606
  %1615 = fmul fast float %1614, 0x3F847AE140000000
  %1616 = fadd fast float %1611, %1607
  %1617 = fmul fast float %1616, 0x3F847AE140000000
  br label %1892

; <label>:1618                                    ; preds = %1466
  %1619 = and i32 %204, 1
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %1892, label %1621

; <label>:1621                                    ; preds = %1618
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1629 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1631 = extractvalue %dx.types.CBufRet.f32 %1622, 3
  %1632 = extractvalue %dx.types.CBufRet.f32 %1624, 3
  %1633 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1634 = fadd fast float %1631, %1537
  %1635 = fadd fast float %1632, %1538
  %1636 = fadd fast float %1633, %1539
  %1637 = fmul fast float %1634, %1623
  %1638 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1625, float %1637)  ; FMad(a,b,c)
  %1639 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1627, float %1638)  ; FMad(a,b,c)
  %1640 = fmul fast float %1634, %1628
  %1641 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1629, float %1640)  ; FMad(a,b,c)
  %1642 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1630, float %1641)  ; FMad(a,b,c)
  %1643 = fsub fast float %1639, %1631
  %1644 = fsub fast float %1642, %1632
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1649 = extractvalue %dx.types.CBufRet.f32 %1645, 3
  %1650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1651 = extractvalue %dx.types.CBufRet.f32 %1650, 3
  %1652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.i32 %1652, 0
  %1654 = extractvalue %dx.types.CBufRet.i32 %1652, 1
  %1655 = udiv i32 %1654, %1653
  %1656 = fsub fast float %1643, %1646
  %1657 = fsub fast float %1644, %1647
  %1658 = call float @dx.op.binary.f32(i32 35, float %1656, float 0.000000e+00)  ; FMax(a,b)
  %1659 = call float @dx.op.binary.f32(i32 35, float %1657, float 0.000000e+00)  ; FMax(a,b)
  %1660 = call float @dx.op.binary.f32(i32 36, float %1658, float %1648)  ; FMin(a,b)
  %1661 = call float @dx.op.binary.f32(i32 36, float %1659, float %1649)  ; FMin(a,b)
  %1662 = add i32 %1653, -1
  %1663 = add i32 %1655, -1
  %1664 = fmul fast float %1660, %1651
  %1665 = fmul fast float %1661, %1651
  %1666 = fptoui float %1664 to i32
  %1667 = fptoui float %1665 to i32
  %1668 = call i32 @dx.op.binary.i32(i32 40, i32 %1666, i32 %1662)  ; UMin(a,b)
  %1669 = call i32 @dx.op.binary.i32(i32 40, i32 %1667, i32 %1663)  ; UMin(a,b)
  %1670 = mul i32 %1669, %1653
  %1671 = add i32 %1670, %1668
  %1672 = shl i32 %1671, 2
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = icmp eq i32 %1674, -1
  br i1 %1675, label %1892, label %1676

; <label>:1676                                    ; preds = %1621
  %1677 = mul i32 %1674, 148
  %1678 = add i32 %1677, 4
  %1679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.f32 %1679, 0
  %1681 = add i32 %1677, 8
  %1682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.f32 %1682, 0
  %1684 = add i32 %1677, 36
  %1685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1684, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  %1687 = add i32 %1677, 60
  %1688 = add i32 %1677, 92
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = add i32 %1677, 116
  %1692 = fsub fast float %1643, %1680
  %1693 = fsub fast float %1644, %1683
  %1694 = fmul fast float %1651, %1692
  %1695 = fmul fast float %1651, %1693
  %1696 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1697 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1699, 2
  %1701 = call float @dx.op.unary.f32(i32 83, float %1696)  ; DerivCoarseX(value)
  %1702 = call float @dx.op.unary.f32(i32 83, float %1698)  ; DerivCoarseX(value)
  %1703 = call float @dx.op.unary.f32(i32 84, float %1696)  ; DerivCoarseY(value)
  %1704 = call float @dx.op.unary.f32(i32 84, float %1698)  ; DerivCoarseY(value)
  %1705 = fmul fast float %1701, %1700
  %1706 = fmul fast float %1702, %1700
  %1707 = fmul fast float %1703, %1700
  %1708 = fmul fast float %1704, %1700
  %1709 = call float @dx.op.dot2.f32(i32 54, float %1707, float %1708, float %1707, float %1708)  ; Dot2(ax,ay,bx,by)
  %1710 = call float @dx.op.dot2.f32(i32 54, float %1705, float %1706, float %1705, float %1706)  ; Dot2(ax,ay,bx,by)
  %1711 = call float @dx.op.binary.f32(i32 35, float %1710, float %1709)  ; FMax(a,b)
  %1712 = call float @dx.op.unary.f32(i32 23, float %1711)  ; Log(value)
  %1713 = fmul fast float %1712, 5.000000e-01
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1716 = fadd fast float %1715, %1713
  %1717 = call float @dx.op.binary.f32(i32 35, float %1716, float 0.000000e+00)  ; FMax(a,b)
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 3
  %1720 = fadd fast float %1719, %1717
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 3
  %1723 = fadd fast float %1720, %1722
  %1724 = add i32 %1690, 0
  %1725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1724, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1726 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1725, i32 0)  ; GetDimensions(handle,mipLevel)
  %1727 = extractvalue %dx.types.Dimensions %1726, 0
  %1728 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1727)  ; FirstbitLo(value)
  %1729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.i32 %1729, 1
  %1731 = sub nsw i32 %1730, %1728
  %1732 = sitofp i32 %1731 to float
  %1733 = fsub fast float %1723, %1732
  %1734 = call float @dx.op.binary.f32(i32 35, float %1733, float 0.000000e+00)  ; FMax(a,b)
  %1735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1725, %dx.types.Handle %56, float %1696, float %1698, float %1686, float undef, i32 0, i32 0, i32 undef, float %1734)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1736 = extractvalue %dx.types.ResRet.f32 %1735, 0
  %1737 = fcmp ule float %1736, 0x3FE0101020000000
  %1738 = extractvalue %dx.types.CBufRet.i32 %1729, 0
  %1739 = and i32 %1738, 128
  %1740 = icmp ne i32 %1739, 0
  %1741 = and i1 %1737, %1740
  br i1 %1741, label %1892, label %1742

; <label>:1742                                    ; preds = %1676
  %1743 = add i32 %1677, 20
  %1744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1746 = add i32 %1677, 24
  %1747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.f32 %1747, 0
  %1749 = add i32 %1677, 40
  %1750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  %1752 = add i32 %1677, 96
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1756 = extractvalue %dx.types.CBufRet.f32 %1755, 2
  %1757 = fmul fast float %1756, %1696
  %1758 = fmul fast float %1756, %1698
  %1759 = extractvalue %dx.types.CBufRet.f32 %1755, 3
  %1760 = fadd fast float %1757, %1759
  %1761 = fadd fast float %1758, %1759
  %1762 = add i32 %1754, 0
  %1763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1762, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1764 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1763, i32 0)  ; GetDimensions(handle,mipLevel)
  %1765 = extractvalue %dx.types.Dimensions %1764, 0
  %1766 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1765)  ; FirstbitLo(value)
  %1767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.i32 %1767, 1
  %1769 = sub nsw i32 %1768, %1766
  %1770 = sitofp i32 %1769 to float
  %1771 = fsub fast float %1720, %1770
  %1772 = call float @dx.op.binary.f32(i32 35, float %1771, float 0.000000e+00)  ; FMax(a,b)
  %1773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1763, %dx.types.Handle %56, float %1760, float %1761, float %1751, float undef, i32 0, i32 0, i32 undef, float %1772)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1774 = extractvalue %dx.types.ResRet.f32 %1773, 0
  %1775 = fmul fast float %1774, %1745
  %1776 = fadd fast float %1775, %1748
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 0
  %1779 = extractvalue %dx.types.CBufRet.f32 %1777, 1
  %1780 = extractvalue %dx.types.CBufRet.f32 %1777, 2
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 3
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 3
  %1785 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1786 = fadd fast float %1782, %1643
  %1787 = fadd fast float %1784, %1644
  %1788 = fadd fast float %1776, %1785
  %1789 = fmul fast float %1786, %1778
  %1790 = call float @dx.op.tertiary.f32(i32 46, float %1787, float %1779, float %1789)  ; FMad(a,b,c)
  %1791 = call float @dx.op.tertiary.f32(i32 46, float %1788, float %1780, float %1790)  ; FMad(a,b,c)
  %1792 = fsub fast float %1791, %1785
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 2
  %1795 = fsub fast float %1792, %1794
  %1796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.i32 %1796, 0
  %1798 = call i32 @dx.op.binary.i32(i32 40, i32 %1674, i32 %1797)  ; UMin(a,b)
  %1799 = mul i32 %1798, 36
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = add i32 %1799, 4
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 0
  %1805 = fmul fast float %1804, %1696
  %1806 = fmul fast float %1804, %1698
  %1807 = extractvalue %dx.types.CBufRet.f32 %1803, 1
  %1808 = fadd fast float %1805, %1807
  %1809 = fadd fast float %1806, %1807
  %1810 = icmp eq i32 %1801, 0
  br i1 %1810, label %1879, label %1811

; <label>:1811                                    ; preds = %1742
  br label %1812

; <label>:1812                                    ; preds = %1869, %1811
  %1813 = phi float [ %1870, %1869 ], [ 0.000000e+00, %1811 ]
  %1814 = phi float [ %1871, %1869 ], [ 0.000000e+00, %1811 ]
  %1815 = phi float [ %1872, %1869 ], [ 0.000000e+00, %1811 ]
  %1816 = phi float [ %1873, %1869 ], [ 0.000000e+00, %1811 ]
  %1817 = phi float [ %1874, %1869 ], [ 0.000000e+00, %1811 ]
  %1818 = phi float [ %1875, %1869 ], [ 0.000000e+00, %1811 ]
  %1819 = phi i32 [ %1876, %1869 ], [ 0, %1811 ]
  %1820 = shl i32 %1819, 2
  %1821 = add i32 %1687, %1820
  %1822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.f32 %1822, 0
  %1824 = add i32 %1691, %1820
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = add i32 %1826, 0
  %1828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1827, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1829 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1828, i32 0)  ; GetDimensions(handle,mipLevel)
  %1830 = extractvalue %dx.types.Dimensions %1829, 0
  %1831 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1830)  ; FirstbitLo(value)
  %1832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.i32 %1832, 1
  %1834 = sub nsw i32 %1833, %1831
  %1835 = sitofp i32 %1834 to float
  %1836 = fsub fast float %1720, %1835
  %1837 = call float @dx.op.binary.f32(i32 35, float %1836, float 0.000000e+00)  ; FMax(a,b)
  %1838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1828, %dx.types.Handle %56, float %1808, float %1809, float %1823, float undef, i32 0, i32 0, i32 undef, float %1837)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = fcmp fast ogt float %1839, 0.000000e+00
  br i1 %1840, label %1841, label %1869

; <label>:1841                                    ; preds = %1812
  %1842 = add i32 %1802, %1820
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = and i32 %1844, 32767
  %1846 = mul nuw nsw i32 %1845, 928
  %1847 = add nuw nsw i32 %1846, 48
  %1848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.ResRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.ResRet.f32 %1848, 2
  %1852 = add nuw nsw i32 %1846, 60
  %1853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1852, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.ResRet.f32 %1853, 1
  %1856 = extractvalue %dx.types.ResRet.f32 %1853, 2
  %1857 = fmul fast float %1849, %1839
  %1858 = fmul fast float %1850, %1839
  %1859 = fmul fast float %1851, %1839
  %1860 = fadd fast float %1857, %1813
  %1861 = fadd fast float %1858, %1814
  %1862 = fadd fast float %1859, %1815
  %1863 = fmul fast float %1854, %1839
  %1864 = fmul fast float %1855, %1839
  %1865 = fmul fast float %1856, %1839
  %1866 = fadd fast float %1863, %1816
  %1867 = fadd fast float %1864, %1817
  %1868 = fadd fast float %1865, %1818
  br label %1869

; <label>:1869                                    ; preds = %1841, %1812
  %1870 = phi float [ %1860, %1841 ], [ %1813, %1812 ]
  %1871 = phi float [ %1861, %1841 ], [ %1814, %1812 ]
  %1872 = phi float [ %1862, %1841 ], [ %1815, %1812 ]
  %1873 = phi float [ %1866, %1841 ], [ %1816, %1812 ]
  %1874 = phi float [ %1867, %1841 ], [ %1817, %1812 ]
  %1875 = phi float [ %1868, %1841 ], [ %1818, %1812 ]
  %1876 = add nuw i32 %1819, 1
  %1877 = icmp eq i32 %1876, %1801
  br i1 %1877, label %1878, label %1812

; <label>:1878                                    ; preds = %1869
  br label %1879

; <label>:1879                                    ; preds = %1878, %1742
  %1880 = phi float [ 0.000000e+00, %1742 ], [ %1870, %1878 ]
  %1881 = phi float [ 0.000000e+00, %1742 ], [ %1871, %1878 ]
  %1882 = phi float [ 0.000000e+00, %1742 ], [ %1872, %1878 ]
  %1883 = phi float [ 0.000000e+00, %1742 ], [ %1873, %1878 ]
  %1884 = phi float [ 0.000000e+00, %1742 ], [ %1874, %1878 ]
  %1885 = phi float [ 0.000000e+00, %1742 ], [ %1875, %1878 ]
  %1886 = fadd fast float %1883, %1880
  %1887 = fmul fast float %1886, 0x3F847AE140000000
  %1888 = fadd fast float %1884, %1881
  %1889 = fmul fast float %1888, 0x3F847AE140000000
  %1890 = fadd fast float %1885, %1882
  %1891 = fmul fast float %1890, 0x3F847AE140000000
  br label %1892

; <label>:1892                                    ; preds = %1879, %1676, %1621, %1618, %1589, %1551
  %1893 = phi float [ %1603, %1589 ], [ -1.310720e+05, %1551 ], [ %1795, %1879 ], [ -1.310720e+05, %1621 ], [ -1.310720e+05, %1676 ], [ -1.310720e+05, %1618 ]
  %1894 = phi float [ %1613, %1589 ], [ 0.000000e+00, %1551 ], [ %1887, %1879 ], [ 0.000000e+00, %1621 ], [ 0.000000e+00, %1676 ], [ 0.000000e+00, %1618 ]
  %1895 = phi float [ %1615, %1589 ], [ 0.000000e+00, %1551 ], [ %1889, %1879 ], [ 0.000000e+00, %1621 ], [ 0.000000e+00, %1676 ], [ 0.000000e+00, %1618 ]
  %1896 = phi float [ %1617, %1589 ], [ 0.000000e+00, %1551 ], [ %1891, %1879 ], [ 0.000000e+00, %1621 ], [ 0.000000e+00, %1676 ], [ 0.000000e+00, %1618 ]
  %1897 = phi i1 [ true, %1589 ], [ false, %1551 ], [ true, %1879 ], [ false, %1621 ], [ false, %1676 ], [ false, %1618 ]
  %1898 = and i32 %204, 3
  %1899 = icmp eq i32 %1898, 1
  %1900 = select i1 %1899, float 1.000000e+00, float 0.000000e+00
  %1901 = fsub fast float %1893, %139
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = select i1 %1897, float %1902, float 1.000000e+00
  %1904 = fmul fast float %1903, %1900
  %1905 = icmp eq i32 %1898, 3
  %1906 = select i1 %1905, float 1.000000e+00, float %1904
  %1907 = call float @dx.op.binary.f32(i32 35, float %1467, float %1906)  ; FMax(a,b)
  %1908 = call float @dx.op.unary.f32(i32 7, float %1907)  ; Saturate(value)
  %1909 = fcmp fast une float %1908, 0.000000e+00
  %1910 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %1911 = call float @dx.op.unary.f32(i32 25, float %1910)  ; Rsqrt(value)
  br i1 %1909, label %1919, label %1912

; <label>:1912                                    ; preds = %1892
  %1913 = fmul fast float %1911, %137
  %1914 = fmul fast float %1911, %138
  %1915 = fmul fast float %1911, %139
  %1916 = fsub fast float -0.000000e+00, %1913
  %1917 = fsub fast float -0.000000e+00, %1914
  %1918 = fsub fast float -0.000000e+00, %1915
  br label %2087

; <label>:1919                                    ; preds = %1892
  %1920 = fmul fast float %137, %1911
  %1921 = fsub fast float -0.000000e+00, %1920
  %1922 = fmul fast float %138, %1911
  %1923 = fsub fast float -0.000000e+00, %1922
  %1924 = fmul fast float %139, %1911
  %1925 = fsub fast float -0.000000e+00, %1924
  %1926 = call float @dx.op.dot3.f32(i32 55, float %1921, float %1923, float %1925, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %1927 = fmul fast float %1908, 2.500000e+00
  %1928 = call float @dx.op.unary.f32(i32 7, float %1927)  ; Saturate(value)
  %1929 = fmul fast float %1908, 0x4013FFFFE0000000
  %1930 = fadd fast float %1929, 0xBFFFFFFFE0000000
  %1931 = call float @dx.op.unary.f32(i32 7, float %1930)  ; Saturate(value)
  %1932 = fmul fast float %1908, 0x4004000020000000
  %1933 = fadd fast float %1932, 0xBFF8000040000000
  %1934 = call float @dx.op.unary.f32(i32 7, float %1933)  ; Saturate(value)
  %1935 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  %1936 = fmul fast float %1497, 1.000000e+01
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fmul fast float %1937, 2.000000e+00
  %1939 = fsub fast float 3.000000e+00, %1938
  %1940 = fmul fast float %1937, %1937
  %1941 = fmul fast float %1940, %1939
  %1942 = fsub fast float 1.000000e+00, %1941
  %1943 = fsub fast float 0x3FE3333340000000, %1518
  %1944 = fmul fast float %1943, 0x400AAAAAA0000000
  %1945 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  %1946 = fmul fast float %1942, %1945
  %1947 = fmul fast float %1530, 0x3FEA2B8620000000
  %1948 = fmul fast float %1531, 0x3FEA2B8620000000
  %1949 = fmul fast float %1532, 0x3FEA2B8620000000
  %1950 = fadd fast float %1947, 0x3FC81DFBA0000000
  %1951 = fmul fast float %1950, %1530
  %1952 = fadd fast float %1951, 0x3F910E6020000000
  %1953 = fadd fast float %1948, 0x3FC81DFBA0000000
  %1954 = fmul fast float %1953, %1531
  %1955 = fadd fast float %1954, 0x3F910E6020000000
  %1956 = fadd fast float %1949, 0x3FC81DFBA0000000
  %1957 = fmul fast float %1956, %1532
  %1958 = fadd fast float %1957, 0x3F910E6020000000
  %1959 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1960 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1961 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1962 = fsub fast float %1959, %1530
  %1963 = fsub fast float %1960, %1531
  %1964 = fsub fast float %1961, %1532
  %1965 = fmul fast float %1962, %1935
  %1966 = fmul fast float %1965, %1946
  %1967 = fmul fast float %1963, %1935
  %1968 = fmul fast float %1967, %1946
  %1969 = fmul fast float %1964, %1935
  %1970 = fmul fast float %1969, %1946
  %1971 = fadd fast float %1966, %1530
  %1972 = fadd fast float %1968, %1531
  %1973 = fadd fast float %1970, %1532
  %1974 = fmul fast float %1478, %1478
  %1975 = fmul fast float %1974, %1974
  %1976 = fadd fast float %1931, 1.000000e+00
  %1977 = fsub fast float %1976, %1946
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = fsub fast float 1.000000e+00, %1975
  %1982 = call float @dx.op.binary.f32(i32 36, float %1978, float %1981)  ; FMin(a,b)
  %1983 = call float @dx.op.unary.f32(i32 7, float %1934)  ; Saturate(value)
  %1984 = call float @dx.op.binary.f32(i32 35, float %1982, float %1983)  ; FMax(a,b)
  %1985 = fadd fast float %1980, 0xBFE4CCCCC0000000
  %1986 = fmul fast float %1985, 0x4006DB6DA0000000
  %1987 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1988 = fmul fast float %1987, 2.000000e+00
  %1989 = fsub fast float 3.000000e+00, %1988
  %1990 = bitcast float %1515 to i32
  %1991 = ashr i32 %1990, 1
  %1992 = add nsw i32 %1991, 532487669
  %1993 = bitcast i32 %1992 to float
  %1994 = fsub fast float 1.000000e+00, %1993
  %1995 = bitcast float %1994 to i32
  %1996 = sub nsw i32 2129859010, %1995
  %1997 = bitcast i32 %1996 to float
  %1998 = fmul fast float %1997, 2.000000e+00
  %1999 = bitcast float %1516 to i32
  %2000 = ashr i32 %1999, 1
  %2001 = add nsw i32 %2000, 532487669
  %2002 = bitcast i32 %2001 to float
  %2003 = fsub fast float 1.000000e+00, %2002
  %2004 = bitcast float %2003 to i32
  %2005 = sub nsw i32 2129859010, %2004
  %2006 = bitcast i32 %2005 to float
  %2007 = fmul fast float %2006, 2.000000e+00
  %2008 = bitcast float %1517 to i32
  %2009 = ashr i32 %2008, 1
  %2010 = add nsw i32 %2009, 532487669
  %2011 = bitcast i32 %2010 to float
  %2012 = fsub fast float 1.000000e+00, %2011
  %2013 = bitcast float %2012 to i32
  %2014 = sub nsw i32 2129859010, %2013
  %2015 = bitcast i32 %2014 to float
  %2016 = fmul fast float %2015, 2.000000e+00
  %2017 = fsub fast float 0x4002A9FBE0000000, %1998
  %2018 = fadd fast float %1998, 0x3FD54FDF00000000
  %2019 = bitcast float %2018 to i32
  %2020 = sub nsw i32 2129859010, %2019
  %2021 = bitcast i32 %2020 to float
  %2022 = fmul fast float %2021, %2017
  %2023 = fmul fast float %2022, %2022
  %2024 = fsub fast float 0x4002A9FBE0000000, %2007
  %2025 = fadd fast float %2007, 0x3FD54FDF00000000
  %2026 = bitcast float %2025 to i32
  %2027 = sub nsw i32 2129859010, %2026
  %2028 = bitcast i32 %2027 to float
  %2029 = fmul fast float %2028, %2024
  %2030 = fmul fast float %2029, %2029
  %2031 = fsub fast float 0x4002A9FBE0000000, %2016
  %2032 = fadd fast float %2016, 0x3FD54FDF00000000
  %2033 = bitcast float %2032 to i32
  %2034 = sub nsw i32 2129859010, %2033
  %2035 = bitcast i32 %2034 to float
  %2036 = fmul fast float %2035, %2031
  %2037 = fmul fast float %2036, %2036
  %2038 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2023)  ; FMax(a,b)
  %2039 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2030)  ; FMax(a,b)
  %2040 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2037)  ; FMax(a,b)
  %2041 = fsub fast float 1.000000e+00, %1926
  %2042 = fadd fast float %2041, %1942
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = fsub fast float 1.000000e+00, %1906
  %2045 = fmul fast float %1984, %2044
  %2046 = fmul fast float %1987, %1987
  %2047 = fmul fast float %2046, %2045
  %2048 = fmul fast float %2047, %1989
  %2049 = fmul fast float %2044, 0xBFE99999A0000000
  %2050 = fmul fast float %2049, %1935
  %2051 = fmul fast float %2050, %1946
  %2052 = fadd fast float %2051, 1.000000e+00
  %2053 = fadd fast float %1518, -1.000000e+00
  %2054 = fmul fast float %2052, %2053
  %2055 = fadd fast float %2054, 1.000000e+00
  %2056 = fsub fast float %2038, %1515
  %2057 = fsub fast float %2039, %1516
  %2058 = fsub fast float %2040, %1517
  %2059 = fmul fast float %2048, %2056
  %2060 = fmul fast float %2048, %2057
  %2061 = fmul fast float %2048, %2058
  %2062 = fadd fast float %2059, %1515
  %2063 = fadd fast float %2060, %1516
  %2064 = fadd fast float %2061, %1517
  %2065 = fsub fast float %70, %1494
  %2066 = fsub fast float %71, %1495
  %2067 = fsub fast float %72, %1496
  %2068 = fmul fast float %2048, %2065
  %2069 = fmul fast float %2048, %2066
  %2070 = fmul fast float %2048, %2067
  %2071 = fadd fast float %2068, %1494
  %2072 = fadd fast float %2069, %1495
  %2073 = fadd fast float %2070, %1496
  %2074 = fmul fast float %2048, %2043
  %2075 = call float @dx.op.unary.f32(i32 7, float %2055)  ; Saturate(value)
  %2076 = fsub fast float 1.000000e+00, %2075
  %2077 = fmul fast float %2074, %2076
  %2078 = fadd fast float %2077, %2075
  %2079 = fsub fast float 1.000000e+00, %1478
  %2080 = fmul fast float %2048, %2079
  %2081 = fadd fast float %2080, %1478
  %2082 = call float @dx.op.dot3.f32(i32 55, float %2071, float %2072, float %2073, float %2071, float %2072, float %2073)  ; Dot3(ax,ay,az,bx,by,bz)
  %2083 = call float @dx.op.unary.f32(i32 25, float %2082)  ; Rsqrt(value)
  %2084 = fmul fast float %2071, %2083
  %2085 = fmul fast float %2072, %2083
  %2086 = fmul fast float %2073, %2083
  br label %2087

; <label>:2087                                    ; preds = %1919, %1912
  %2088 = phi float [ %1918, %1912 ], [ %1925, %1919 ]
  %2089 = phi float [ %1917, %1912 ], [ %1923, %1919 ]
  %2090 = phi float [ %1916, %1912 ], [ %1921, %1919 ]
  %2091 = phi float [ %1915, %1912 ], [ %1924, %1919 ]
  %2092 = phi float [ %1914, %1912 ], [ %1922, %1919 ]
  %2093 = phi float [ %1913, %1912 ], [ %1920, %1919 ]
  %2094 = phi float [ %1515, %1912 ], [ %2062, %1919 ]
  %2095 = phi float [ %1516, %1912 ], [ %2063, %1919 ]
  %2096 = phi float [ %1517, %1912 ], [ %2064, %1919 ]
  %2097 = phi float [ %1530, %1912 ], [ %1971, %1919 ]
  %2098 = phi float [ %1531, %1912 ], [ %1972, %1919 ]
  %2099 = phi float [ %1532, %1912 ], [ %1973, %1919 ]
  %2100 = phi float [ %1494, %1912 ], [ %2084, %1919 ]
  %2101 = phi float [ %1495, %1912 ], [ %2085, %1919 ]
  %2102 = phi float [ %1496, %1912 ], [ %2086, %1919 ]
  %2103 = phi float [ %1518, %1912 ], [ %2078, %1919 ]
  %2104 = phi float [ %1478, %1912 ], [ %2081, %1919 ]
  %2105 = fsub fast float -0.000000e+00, %139
  %2106 = select i1 %228, float 0.000000e+00, float %2096
  %2107 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float %2090, float %2089, float %2088)  ; Dot3(ax,ay,az,bx,by,bz)
  %2108 = call float @dx.op.unary.f32(i32 7, float %2107)  ; Saturate(value)
  %2109 = call float @dx.op.dot3.f32(i32 55, float %2093, float %2092, float %2091, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %2110 = fmul fast float %2109, 2.000000e+00
  %2111 = fmul fast float %2110, %2100
  %2112 = fmul fast float %2110, %2101
  %2113 = fmul fast float %2110, %2102
  %2114 = fsub fast float %2093, %2111
  %2115 = fsub fast float %2092, %2112
  %2116 = fsub fast float %2091, %2113
  %2117 = call float @dx.op.binary.f32(i32 36, float %2104, float 1.000000e+00)  ; FMin(a,b)
  %2118 = fsub fast float 1.000000e+00, %2104
  %2119 = bitcast float %2118 to i32
  %2120 = sub nsw i32 2129859010, %2119
  %2121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2122 = extractvalue %dx.types.CBufRet.f32 %2121, 0
  %2123 = extractvalue %dx.types.CBufRet.f32 %2121, 1
  %2124 = fadd fast float %2122, %137
  %2125 = fadd fast float %2123, %138
  %2126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.i32 %2126, 0
  %2128 = icmp eq i32 %2127, 1
  br i1 %2128, label %2129, label %2164

; <label>:2129                                    ; preds = %2087
  %2130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.CBufRet.f32 %2130, 1
  %2133 = fsub fast float %2124, %2131
  %2134 = fsub fast float %2125, %2132
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 0
  %2137 = extractvalue %dx.types.CBufRet.f32 %2135, 1
  %2138 = fmul fast float %2133, %2136
  %2139 = fmul fast float %2134, %2137
  %2140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %58, float %2138, float %2139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  %2142 = fcmp fast ogt float %2141, 0.000000e+00
  %2143 = extractvalue %dx.types.CBufRet.i32 %2126, 3
  %2144 = icmp ne i32 %2143, 0
  %2145 = and i1 %2142, %2144
  br i1 %2145, label %2146, label %2164, !dx.controlflow.hints !98

; <label>:2146                                    ; preds = %2129
  %2147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2148 = extractvalue %dx.types.CBufRet.f32 %2147, 0
  %2149 = extractvalue %dx.types.CBufRet.f32 %2147, 1
  %2150 = fsub fast float %2124, %2148
  %2151 = fsub fast float %2125, %2149
  %2152 = fmul fast float %2150, %2150
  %2153 = fmul fast float %2151, %2151
  %2154 = fadd fast float %2152, %2153
  %2155 = uitofp i32 %2143 to float
  %2156 = fmul fast float %2155, %2155
  %2157 = fcmp fast ogt float %2154, %2156
  br i1 %2157, label %2164, label %2158

; <label>:2158                                    ; preds = %2146
  %2159 = call float @dx.op.unary.f32(i32 24, float %2154)  ; Sqrt(value)
  %2160 = fsub fast float %2155, %2159
  %2161 = fmul fast float %2160, 0x3F75555560000000
  %2162 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2163 = call float @dx.op.binary.f32(i32 36, float %2162, float %2141)  ; FMin(a,b)
  br label %2164

; <label>:2164                                    ; preds = %2158, %2146, %2129, %2087
  %2165 = phi float [ 1.000000e+00, %2087 ], [ %2163, %2158 ], [ %2141, %2129 ], [ 0.000000e+00, %2146 ]
  %2166 = fcmp fast ogt float %2165, 0.000000e+00
  br i1 %2166, label %2167, label %2265, !dx.controlflow.hints !99

; <label>:2167                                    ; preds = %2164
  %2168 = fadd fast float %168, 5.000000e-01
  %2169 = call float @dx.op.unary.f32(i32 27, float %2168)  ; Round_ni(value)
  %2170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %58, float %166, float %167, float %2169, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2171 = extractvalue %dx.types.ResRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.ResRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.ResRet.f32 %2170, 2
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 3
  %2176 = fmul fast float %2175, %2171
  %2177 = fmul fast float %2175, %2172
  %2178 = fmul fast float %2175, %2173
  %2179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %58, float %166, float %167, float %2169, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2180 = extractvalue %dx.types.ResRet.f32 %2179, 0
  %2181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %58, float %166, float %167, float %2169, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2182 = extractvalue %dx.types.ResRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.ResRet.f32 %2181, 1
  %2184 = fmul fast float %2182, 2.000000e+00
  %2185 = fmul fast float %2183, 2.000000e+00
  %2186 = fadd fast float %2184, -1.000000e+00
  %2187 = fadd fast float %2185, -1.000000e+00
  %2188 = fadd fast float %2186, %2187
  %2189 = fmul fast float %2188, 5.000000e-01
  %2190 = fsub fast float %2186, %2187
  %2191 = fmul fast float %2190, 5.000000e-01
  %2192 = call float @dx.op.unary.f32(i32 6, float %2189)  ; FAbs(value)
  %2193 = fsub fast float 1.000000e+00, %2192
  %2194 = call float @dx.op.unary.f32(i32 6, float %2191)  ; FAbs(value)
  %2195 = fsub fast float %2193, %2194
  %2196 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2195)  ; FMax(a,b)
  %2197 = call float @dx.op.dot3.f32(i32 55, float %2189, float %2191, float %2196, float %2189, float %2191, float %2196)  ; Dot3(ax,ay,az,bx,by,bz)
  %2198 = bitcast float %2197 to i32
  %2199 = ashr i32 %2198, 1
  %2200 = sub nsw i32 1597250115, %2199
  %2201 = bitcast i32 %2200 to float
  %2202 = fmul fast float %2201, %2189
  %2203 = fmul fast float %2201, %2191
  %2204 = fmul fast float %2201, %2196
  %2205 = fsub fast float 1.000000e+00, %2180
  %2206 = fdiv fast float %2205, %2204
  %2207 = fmul fast float %2204, %70
  %2208 = fmul fast float %2204, %71
  %2209 = fmul fast float %2204, %72
  %2210 = fmul fast float %2202, %66
  %2211 = fmul fast float %2202, %67
  %2212 = fmul fast float %2202, %68
  %2213 = fadd fast float %2207, %2210
  %2214 = fadd fast float %2208, %2211
  %2215 = fadd fast float %2209, %2212
  %2216 = fmul fast float %2203, %101
  %2217 = fmul fast float %2203, %102
  %2218 = fmul fast float %2203, %103
  %2219 = fadd fast float %2213, %2216
  %2220 = fadd fast float %2214, %2217
  %2221 = fadd fast float %2215, %2218
  %2222 = call float @dx.op.dot3.f32(i32 55, float %2219, float %2220, float %2221, float %2219, float %2220, float %2221)  ; Dot3(ax,ay,az,bx,by,bz)
  %2223 = call float @dx.op.unary.f32(i32 25, float %2222)  ; Rsqrt(value)
  %2224 = fmul fast float %2219, %2223
  %2225 = fmul fast float %2220, %2223
  %2226 = fmul fast float %2221, %2223
  %2227 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %2228 = call float @dx.op.unary.f32(i32 7, float %2227)  ; Saturate(value)
  %2229 = fmul fast float %2228, 5.000000e-01
  %2230 = fadd fast float %2229, 5.000000e-01
  %2231 = fmul fast float %2230, %2180
  %2232 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float %2224, float %2225, float %2226)  ; Dot3(ax,ay,az,bx,by,bz)
  %2233 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2234 = fmul fast float %2233, %2206
  %2235 = fadd fast float %2231, %2234
  %2236 = fsub fast float 5.000000e-01, %2229
  %2237 = fmul fast float %2236, %2097
  %2238 = fmul fast float %2236, %2098
  %2239 = fmul fast float %2236, %2099
  %2240 = fadd fast float %2235, %2237
  %2241 = fmul fast float %2240, %2176
  %2242 = fadd fast float %2235, %2238
  %2243 = fmul fast float %2242, %2177
  %2244 = fadd fast float %2235, %2239
  %2245 = fmul fast float %2244, %2178
  %2246 = call float @dx.op.dot3.f32(i32 55, float %2114, float %2115, float %2116, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2248 = fmul fast float %2247, 5.000000e-01
  %2249 = fadd fast float %2248, 5.000000e-01
  %2250 = fmul fast float %2249, %2180
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2114, float %2115, float %2116, float %2224, float %2225, float %2226)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = fmul fast float %2252, %2206
  %2254 = fadd fast float %2250, %2253
  %2255 = fsub fast float 5.000000e-01, %2248
  %2256 = fmul fast float %2255, %2097
  %2257 = fmul fast float %2255, %2098
  %2258 = fmul fast float %2255, %2099
  %2259 = fadd fast float %2254, %2256
  %2260 = fmul fast float %2259, %2176
  %2261 = fadd fast float %2254, %2257
  %2262 = fmul fast float %2261, %2177
  %2263 = fadd fast float %2254, %2258
  %2264 = fmul fast float %2263, %2178
  br label %2265

; <label>:2265                                    ; preds = %2167, %2164
  %2266 = phi float [ %2260, %2167 ], [ 0.000000e+00, %2164 ]
  %2267 = phi float [ %2262, %2167 ], [ 0.000000e+00, %2164 ]
  %2268 = phi float [ %2264, %2167 ], [ 0.000000e+00, %2164 ]
  %2269 = phi float [ %2241, %2167 ], [ 0.000000e+00, %2164 ]
  %2270 = phi float [ %2243, %2167 ], [ 0.000000e+00, %2164 ]
  %2271 = phi float [ %2245, %2167 ], [ 0.000000e+00, %2164 ]
  %2272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2273 = extractvalue %dx.types.CBufRet.f32 %2272, 0
  %2274 = fcmp fast ogt float %2273, 0.000000e+00
  %2275 = and i1 %2166, %2274
  br i1 %2275, label %2276, label %2480, !dx.controlflow.hints !100

; <label>:2276                                    ; preds = %2265
  %2277 = extractvalue %dx.types.CBufRet.f32 %2121, 2
  %2278 = fadd fast float %2277, %139
  %2279 = fmul fast float %2100, 3.200000e+01
  %2280 = fmul fast float %2101, 3.200000e+01
  %2281 = fadd fast float %2124, %2279
  %2282 = fadd fast float %2125, %2280
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2286 = fsub fast float %2281, %2284
  %2287 = fsub fast float %2282, %2285
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2291 = fmul fast float %2286, %2289
  %2292 = fmul fast float %2287, %2290
  %2293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2294 = extractvalue %dx.types.CBufRet.f32 %2293, 0
  %2295 = extractvalue %dx.types.CBufRet.f32 %2293, 1
  %2296 = fsub fast float %2124, %2294
  %2297 = fsub fast float %2125, %2295
  %2298 = fmul fast float %2296, %2296
  %2299 = fmul fast float %2297, %2297
  %2300 = fadd fast float %2298, %2299
  %2301 = call float @dx.op.unary.f32(i32 24, float %2300)  ; Sqrt(value)
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.CBufRet.f32 %2302, 1
  %2305 = fsub fast float %2301, %2303
  %2306 = fdiv fast float %2305, %2304
  %2307 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2308 = fmul fast float %2307, 2.000000e+00
  %2309 = fsub fast float 3.000000e+00, %2308
  %2310 = fmul fast float %2307, %2307
  %2311 = fmul fast float %2310, %2309
  %2312 = fcmp fast oge float %2291, 0.000000e+00
  %2313 = fcmp fast ole float %2291, 1.000000e+00
  %2314 = and i1 %2313, %2312
  %2315 = fcmp fast oge float %2292, 0.000000e+00
  %2316 = and i1 %2315, %2314
  %2317 = fcmp fast ole float %2292, 1.000000e+00
  %2318 = and i1 %2317, %2316
  %2319 = fcmp fast ogt float %2311, 0.000000e+00
  %2320 = and i1 %2319, %2318
  br i1 %2320, label %2321, label %2444, !dx.controlflow.hints !101

; <label>:2321                                    ; preds = %2276
  %2322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2323 = extractvalue %dx.types.CBufRet.f32 %2322, 2
  %2324 = extractvalue %dx.types.CBufRet.f32 %2322, 3
  %2325 = fmul fast float %2323, %2291
  %2326 = fmul fast float %2324, %2292
  %2327 = call float @dx.op.unary.f32(i32 27, float %2325)  ; Round_ni(value)
  %2328 = call float @dx.op.unary.f32(i32 27, float %2326)  ; Round_ni(value)
  %2329 = fptosi float %2327 to i32
  %2330 = fptosi float %2328 to i32
  %2331 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2329, i32 %2330, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = lshr i32 %2332, 16
  %2334 = icmp eq i32 %2333, 65535
  br i1 %2334, label %2444, label %2335

; <label>:2335                                    ; preds = %2321
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 0
  %2338 = fmul fast float %2337, %2291
  %2339 = extractvalue %dx.types.CBufRet.f32 %2336, 1
  %2340 = fadd fast float %2338, %2339
  %2341 = extractvalue %dx.types.CBufRet.f32 %2336, 2
  %2342 = fmul fast float %2341, %2292
  %2343 = extractvalue %dx.types.CBufRet.f32 %2336, 3
  %2344 = fadd fast float %2342, %2343
  %2345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2340, float %2344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2346 = extractvalue %dx.types.ResRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.ResRet.f32 %2345, 1
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 1
  %2350 = extractvalue %dx.types.CBufRet.f32 %2348, 0
  %2351 = fsub fast float %2349, %2350
  %2352 = fmul fast float %2351, %2346
  %2353 = fadd fast float %2352, %2350
  %2354 = extractvalue %dx.types.CBufRet.f32 %2348, 3
  %2355 = extractvalue %dx.types.CBufRet.f32 %2348, 2
  %2356 = fsub fast float %2354, %2355
  %2357 = fmul fast float %2356, %2347
  %2358 = fadd fast float %2357, %2355
  %2359 = fsub fast float %2278, %2353
  %2360 = fsub fast float %2358, %2353
  %2361 = fdiv fast float %2359, %2360
  %2362 = call float @dx.op.unary.f32(i32 7, float %2361)  ; Saturate(value)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2364 = extractvalue %dx.types.CBufRet.f32 %2322, 0
  %2365 = extractvalue %dx.types.CBufRet.f32 %2322, 1
  %2366 = fmul fast float %2364, %2291
  %2367 = fmul fast float %2365, %2292
  %2368 = fmul fast float %2366, 1.250000e-01
  %2369 = fmul fast float %2367, 1.250000e-01
  %2370 = call float @dx.op.unary.f32(i32 27, float %2368)  ; Round_ni(value)
  %2371 = call float @dx.op.unary.f32(i32 27, float %2369)  ; Round_ni(value)
  %2372 = fmul fast float %2370, 8.000000e+00
  %2373 = fmul fast float %2371, 8.000000e+00
  %2374 = fsub fast float %2366, %2372
  %2375 = fsub fast float %2367, %2373
  %2376 = fadd fast float %2374, 5.000000e-01
  %2377 = fadd fast float %2375, 5.000000e-01
  %2378 = and i32 %2333, 255
  %2379 = lshr i32 %2332, 24
  %2380 = mul nuw nsw i32 %2378, 9
  %2381 = uitofp i32 %2380 to float
  %2382 = mul nuw nsw i32 %2379, 9
  %2383 = uitofp i32 %2382 to float
  %2384 = fadd fast float %2376, %2381
  %2385 = fadd fast float %2377, %2383
  %2386 = fdiv fast float %2384, %2273
  %2387 = fdiv fast float %2385, %2363
  %2388 = fmul fast float %2362, 4.375000e-01
  %2389 = fadd fast float %2388, 3.125000e-02
  %2390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2386, float %2387, float %2389, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2391 = extractvalue %dx.types.ResRet.f32 %2390, 0
  %2392 = extractvalue %dx.types.ResRet.f32 %2390, 1
  %2393 = extractvalue %dx.types.ResRet.f32 %2390, 2
  %2394 = fadd fast float %2388, 5.312500e-01
  %2395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2386, float %2387, float %2394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.ResRet.f32 %2395, 1
  %2398 = extractvalue %dx.types.ResRet.f32 %2395, 2
  %2399 = fmul fast float %2396, 2.000000e+00
  %2400 = fmul fast float %2397, 2.000000e+00
  %2401 = fmul fast float %2398, 2.000000e+00
  %2402 = fadd fast float %2399, -1.000000e+00
  %2403 = fadd fast float %2400, -1.000000e+00
  %2404 = fadd fast float %2401, -1.000000e+00
  %2405 = fmul fast float %2402, %2402
  %2406 = fmul fast float %2403, %2403
  %2407 = fadd fast float %2405, %2406
  %2408 = fmul fast float %2404, %2404
  %2409 = fadd fast float %2407, %2408
  %2410 = call float @dx.op.unary.f32(i32 24, float %2409)  ; Sqrt(value)
  %2411 = fcmp fast ogt float %2410, 0.000000e+00
  br i1 %2411, label %2412, label %2416

; <label>:2412                                    ; preds = %2335
  %2413 = fdiv fast float %2402, %2410
  %2414 = fdiv fast float %2403, %2410
  %2415 = fdiv fast float %2404, %2410
  br label %2416

; <label>:2416                                    ; preds = %2412, %2335
  %2417 = phi float [ %2413, %2412 ], [ 0.000000e+00, %2335 ]
  %2418 = phi float [ %2414, %2412 ], [ 0.000000e+00, %2335 ]
  %2419 = phi float [ %2415, %2412 ], [ 0.000000e+00, %2335 ]
  %2420 = call float @dx.op.dot3.f32(i32 55, float %2417, float %2418, float %2419, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %2421 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2420)  ; FMax(a,b)
  %2422 = fmul fast float %2421, 0x400C5BF8A0000000
  %2423 = fmul fast float %2391, %2311
  %2424 = fmul fast float %2423, %2422
  %2425 = fmul fast float %2392, %2311
  %2426 = fmul fast float %2425, %2422
  %2427 = fmul fast float %2393, %2311
  %2428 = fmul fast float %2427, %2422
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 3
  %2431 = fmul fast float %2424, %2430
  %2432 = fmul fast float %2426, %2430
  %2433 = fmul fast float %2428, %2430
  %2434 = fcmp fast ogt float %2278, %2358
  br i1 %2434, label %2435, label %2444

; <label>:2435                                    ; preds = %2416
  %2436 = fmul fast float %2360, 0x3FC24924A0000000
  %2437 = fsub fast float %2278, %2358
  %2438 = fdiv fast float %2437, %2436
  %2439 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2440 = fsub fast float 1.000000e+00, %2439
  %2441 = fmul fast float %2440, %2431
  %2442 = fmul fast float %2440, %2432
  %2443 = fmul fast float %2440, %2433
  br label %2444

; <label>:2444                                    ; preds = %2435, %2416, %2321, %2276
  %2445 = phi float [ %2443, %2435 ], [ %2433, %2416 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2276 ]
  %2446 = phi float [ %2442, %2435 ], [ %2432, %2416 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2276 ]
  %2447 = phi float [ %2441, %2435 ], [ %2431, %2416 ], [ 0.000000e+00, %2321 ], [ 0.000000e+00, %2276 ]
  %2448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2447)  ; FMax(a,b)
  %2449 = fmul fast float %2448, 0x3FD20DD760000000
  %2450 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2114, float %2115, float %2116)  ; Dot3(ax,ay,az,bx,by,bz)
  %2451 = fmul fast float %2450, 0x3FDF454380000000
  %2452 = fmul fast float %2450, %2450
  %2453 = fmul fast float %2452, 0x3FEE471020000000
  %2454 = fadd fast float %2453, 0xBFD42F6020000000
  %2455 = call float @dx.op.dot3.f32(i32 55, float %2448, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2451, float %2454)  ; Dot3(ax,ay,az,bx,by,bz)
  %2456 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2446)  ; FMax(a,b)
  %2457 = fmul fast float %2456, 0x3FD20DD760000000
  %2458 = call float @dx.op.dot3.f32(i32 55, float %2456, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2451, float %2454)  ; Dot3(ax,ay,az,bx,by,bz)
  %2459 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2445)  ; FMax(a,b)
  %2460 = fmul fast float %2459, 0x3FD20DD760000000
  %2461 = call float @dx.op.dot3.f32(i32 55, float %2459, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2451, float %2454)  ; Dot3(ax,ay,az,bx,by,bz)
  %2462 = call float @dx.op.binary.f32(i32 35, float %2449, float 0.000000e+00)  ; FMax(a,b)
  %2463 = call float @dx.op.binary.f32(i32 35, float %2457, float 0.000000e+00)  ; FMax(a,b)
  %2464 = call float @dx.op.binary.f32(i32 35, float %2460, float 0.000000e+00)  ; FMax(a,b)
  %2465 = call float @dx.op.binary.f32(i32 35, float %2455, float 0.000000e+00)  ; FMax(a,b)
  %2466 = call float @dx.op.binary.f32(i32 35, float %2458, float 0.000000e+00)  ; FMax(a,b)
  %2467 = call float @dx.op.binary.f32(i32 35, float %2461, float 0.000000e+00)  ; FMax(a,b)
  %2468 = fmul fast float %2462, %2165
  %2469 = fmul fast float %2463, %2165
  %2470 = fmul fast float %2464, %2165
  %2471 = fadd fast float %2468, %2269
  %2472 = fadd fast float %2469, %2270
  %2473 = fadd fast float %2470, %2271
  %2474 = fmul fast float %2465, %2165
  %2475 = fmul fast float %2466, %2165
  %2476 = fmul fast float %2467, %2165
  %2477 = fadd fast float %2474, %2266
  %2478 = fadd fast float %2475, %2267
  %2479 = fadd fast float %2476, %2268
  br label %2480

; <label>:2480                                    ; preds = %2444, %2265
  %2481 = phi float [ %2477, %2444 ], [ %2266, %2265 ]
  %2482 = phi float [ %2478, %2444 ], [ %2267, %2265 ]
  %2483 = phi float [ %2479, %2444 ], [ %2268, %2265 ]
  %2484 = phi float [ %2471, %2444 ], [ %2269, %2265 ]
  %2485 = phi float [ %2472, %2444 ], [ %2270, %2265 ]
  %2486 = phi float [ %2473, %2444 ], [ %2271, %2265 ]
  %2487 = fcmp fast olt float %2165, 1.000000e+00
  br i1 %2487, label %2488, label %3306, !dx.controlflow.hints !102

; <label>:2488                                    ; preds = %2480
  %2489 = extractvalue %dx.types.CBufRet.f32 %2121, 2
  %2490 = fadd fast float %2489, %139
  %2491 = fmul fast float %2100, 3.200000e+01
  %2492 = fmul fast float %2101, 3.200000e+01
  %2493 = fadd fast float %2124, %2491
  %2494 = fadd fast float %2125, %2492
  %2495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.CBufRet.f32 %2495, 1
  %2498 = fsub fast float %2493, %2496
  %2499 = fsub fast float %2494, %2497
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %2503 = fmul fast float %2498, %2501
  %2504 = fmul fast float %2499, %2502
  %2505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2506 = extractvalue %dx.types.CBufRet.f32 %2505, 0
  %2507 = fmul fast float %2503, %2506
  %2508 = extractvalue %dx.types.CBufRet.f32 %2505, 1
  %2509 = fadd fast float %2507, %2508
  %2510 = extractvalue %dx.types.CBufRet.f32 %2505, 2
  %2511 = fmul fast float %2510, %2504
  %2512 = extractvalue %dx.types.CBufRet.f32 %2505, 3
  %2513 = fadd fast float %2511, %2512
  %2514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %58, float %2509, float %2513, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2515 = extractvalue %dx.types.ResRet.f32 %2514, 0
  %2516 = extractvalue %dx.types.ResRet.f32 %2514, 1
  %2517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2517, 1
  %2519 = extractvalue %dx.types.CBufRet.f32 %2517, 0
  %2520 = fsub fast float %2518, %2519
  %2521 = fmul fast float %2520, %2515
  %2522 = fadd fast float %2521, %2519
  %2523 = extractvalue %dx.types.CBufRet.f32 %2517, 3
  %2524 = extractvalue %dx.types.CBufRet.f32 %2517, 2
  %2525 = fsub fast float %2523, %2524
  %2526 = fmul fast float %2525, %2516
  %2527 = fadd fast float %2526, %2524
  %2528 = fsub fast float %2490, %2522
  %2529 = fsub fast float %2527, %2522
  %2530 = fdiv fast float %2528, %2529
  %2531 = call float @dx.op.unary.f32(i32 7, float %2530)  ; Saturate(value)
  %2532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2533 = extractvalue %dx.types.CBufRet.f32 %2532, 0
  %2534 = fmul fast float %2533, %2531
  %2535 = extractvalue %dx.types.CBufRet.f32 %2532, 1
  %2536 = fadd fast float %2534, %2535
  %2537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %58, float %2509, float %2513, float %2536, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2538 = extractvalue %dx.types.ResRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.ResRet.f32 %2537, 1
  %2540 = extractvalue %dx.types.ResRet.f32 %2537, 2
  %2541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2542 = extractvalue %dx.types.CBufRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.CBufRet.f32 %2541, 1
  %2544 = extractvalue %dx.types.CBufRet.f32 %2541, 2
  %2545 = fmul fast float %2542, %2538
  %2546 = fmul fast float %2543, %2539
  %2547 = fmul fast float %2544, %2540
  %2548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2549 = extractvalue %dx.types.CBufRet.f32 %2548, 0
  %2550 = extractvalue %dx.types.CBufRet.f32 %2548, 1
  %2551 = extractvalue %dx.types.CBufRet.f32 %2548, 2
  %2552 = fadd fast float %2545, %2549
  %2553 = fadd fast float %2546, %2550
  %2554 = fadd fast float %2547, %2551
  %2555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2556 = extractvalue %dx.types.CBufRet.f32 %2555, 0
  %2557 = fmul fast float %2556, %2503
  %2558 = extractvalue %dx.types.CBufRet.f32 %2555, 1
  %2559 = fadd fast float %2557, %2558
  %2560 = extractvalue %dx.types.CBufRet.f32 %2555, 2
  %2561 = fmul fast float %2560, %2504
  %2562 = extractvalue %dx.types.CBufRet.f32 %2555, 3
  %2563 = fadd fast float %2561, %2562
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.CBufRet.f32 %2564, 1
  %2567 = extractvalue %dx.types.CBufRet.f32 %2564, 2
  %2568 = extractvalue %dx.types.CBufRet.f32 %2564, 3
  %2569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2570 = extractvalue %dx.types.CBufRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.CBufRet.f32 %2569, 1
  %2572 = extractvalue %dx.types.CBufRet.f32 %2569, 2
  %2573 = extractvalue %dx.types.CBufRet.f32 %2569, 3
  %2574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2559, float %2563, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2575 = extractvalue %dx.types.ResRet.f32 %2574, 0
  %2576 = extractvalue %dx.types.ResRet.f32 %2574, 1
  %2577 = extractvalue %dx.types.ResRet.f32 %2574, 2
  %2578 = extractvalue %dx.types.ResRet.f32 %2574, 3
  %2579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2559, float %2563, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2580 = extractvalue %dx.types.ResRet.f32 %2579, 0
  %2581 = extractvalue %dx.types.ResRet.f32 %2579, 1
  %2582 = extractvalue %dx.types.ResRet.f32 %2579, 2
  %2583 = extractvalue %dx.types.ResRet.f32 %2579, 3
  %2584 = fmul fast float %2575, %2552
  %2585 = fmul fast float %2580, %2552
  %2586 = fmul fast float %2582, %2552
  %2587 = fmul fast float %2578, %2552
  %2588 = fadd fast float %2584, %2565
  %2589 = fadd fast float %2585, %2566
  %2590 = fadd fast float %2586, %2567
  %2591 = fadd fast float %2587, %2568
  %2592 = fmul fast float %2576, %2552
  %2593 = fmul fast float %2581, %2552
  %2594 = fadd fast float %2592, %2570
  %2595 = fadd fast float %2593, %2571
  %2596 = fmul fast float %2577, %2552
  %2597 = fmul fast float %2583, %2552
  %2598 = fadd fast float %2596, %2572
  %2599 = fadd fast float %2597, %2573
  %2600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2559, float %2563, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2601 = extractvalue %dx.types.ResRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.ResRet.f32 %2600, 1
  %2603 = extractvalue %dx.types.ResRet.f32 %2600, 2
  %2604 = extractvalue %dx.types.ResRet.f32 %2600, 3
  %2605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2559, float %2563, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2606 = extractvalue %dx.types.ResRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.ResRet.f32 %2605, 1
  %2608 = extractvalue %dx.types.ResRet.f32 %2605, 2
  %2609 = extractvalue %dx.types.ResRet.f32 %2605, 3
  %2610 = fmul fast float %2601, %2553
  %2611 = fmul fast float %2606, %2553
  %2612 = fmul fast float %2608, %2553
  %2613 = fmul fast float %2604, %2553
  %2614 = fadd fast float %2588, %2610
  %2615 = fadd fast float %2589, %2611
  %2616 = fadd fast float %2590, %2612
  %2617 = fadd fast float %2591, %2613
  %2618 = fmul fast float %2602, %2553
  %2619 = fmul fast float %2607, %2553
  %2620 = fadd fast float %2594, %2618
  %2621 = fadd fast float %2595, %2619
  %2622 = fmul fast float %2603, %2553
  %2623 = fmul fast float %2609, %2553
  %2624 = fadd fast float %2598, %2622
  %2625 = fadd fast float %2599, %2623
  %2626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2559, float %2563, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2627 = extractvalue %dx.types.ResRet.f32 %2626, 0
  %2628 = extractvalue %dx.types.ResRet.f32 %2626, 1
  %2629 = extractvalue %dx.types.ResRet.f32 %2626, 2
  %2630 = extractvalue %dx.types.ResRet.f32 %2626, 3
  %2631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %58, float %2559, float %2563, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2632 = extractvalue %dx.types.ResRet.f32 %2631, 0
  %2633 = extractvalue %dx.types.ResRet.f32 %2631, 1
  %2634 = extractvalue %dx.types.ResRet.f32 %2631, 2
  %2635 = extractvalue %dx.types.ResRet.f32 %2631, 3
  %2636 = fmul fast float %2627, %2554
  %2637 = fmul fast float %2632, %2554
  %2638 = fmul fast float %2634, %2554
  %2639 = fmul fast float %2630, %2554
  %2640 = fadd fast float %2614, %2636
  %2641 = fadd fast float %2615, %2637
  %2642 = fadd fast float %2616, %2638
  %2643 = fadd fast float %2617, %2639
  %2644 = fmul fast float %2628, %2554
  %2645 = fmul fast float %2633, %2554
  %2646 = fadd fast float %2620, %2644
  %2647 = fadd fast float %2621, %2645
  %2648 = fmul fast float %2629, %2554
  %2649 = fmul fast float %2635, %2554
  %2650 = fadd fast float %2624, %2648
  %2651 = fadd fast float %2625, %2649
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2654 = fsub fast float %2124, %2653
  %2655 = fsub fast float %2496, %2124
  %2656 = call float @dx.op.binary.f32(i32 35, float %2655, float %2654)  ; FMax(a,b)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2652, 1
  %2658 = fsub fast float %2125, %2657
  %2659 = fsub fast float %2497, %2125
  %2660 = call float @dx.op.binary.f32(i32 35, float %2659, float %2658)  ; FMax(a,b)
  %2661 = call float @dx.op.binary.f32(i32 35, float %2656, float %2660)  ; FMax(a,b)
  %2662 = extractvalue %dx.types.CBufRet.f32 %2500, 3
  %2663 = fmul fast float %2662, %2661
  %2664 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 0
  %2667 = extractvalue %dx.types.CBufRet.f32 %2665, 1
  %2668 = extractvalue %dx.types.CBufRet.f32 %2665, 2
  %2669 = extractvalue %dx.types.CBufRet.f32 %2665, 3
  %2670 = fsub fast float %2666, %2640
  %2671 = fsub fast float %2667, %2641
  %2672 = fsub fast float %2668, %2642
  %2673 = fsub fast float %2669, %2643
  %2674 = fmul fast float %2670, %2664
  %2675 = fmul fast float %2671, %2664
  %2676 = fmul fast float %2672, %2664
  %2677 = fmul fast float %2673, %2664
  %2678 = fadd fast float %2674, %2640
  %2679 = fadd fast float %2675, %2641
  %2680 = fadd fast float %2676, %2642
  %2681 = fadd fast float %2677, %2643
  %2682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2683 = extractvalue %dx.types.CBufRet.f32 %2682, 0
  %2684 = extractvalue %dx.types.CBufRet.f32 %2682, 1
  %2685 = fsub fast float %2683, %2646
  %2686 = fsub fast float %2684, %2647
  %2687 = fmul fast float %2685, %2664
  %2688 = fmul fast float %2686, %2664
  %2689 = fadd fast float %2687, %2646
  %2690 = fadd fast float %2688, %2647
  %2691 = extractvalue %dx.types.CBufRet.f32 %2682, 2
  %2692 = extractvalue %dx.types.CBufRet.f32 %2682, 3
  %2693 = fsub fast float %2691, %2650
  %2694 = fsub fast float %2692, %2651
  %2695 = fmul fast float %2693, %2664
  %2696 = fmul fast float %2694, %2664
  %2697 = fadd fast float %2695, %2650
  %2698 = fadd fast float %2696, %2651
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 0
  %2701 = fmul fast float %2700, %2678
  %2702 = fmul fast float %2700, %2679
  %2703 = fmul fast float %2700, %2680
  %2704 = fmul fast float %2700, %2681
  %2705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2705, 0
  %2707 = fmul fast float %2706, %2689
  %2708 = fmul fast float %2706, %2690
  %2709 = fadd fast float %2707, %2701
  %2710 = fadd fast float %2708, %2703
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = fmul fast float %2712, %2697
  %2714 = fmul fast float %2712, %2698
  %2715 = fadd fast float %2709, %2713
  %2716 = fadd fast float %2710, %2714
  %2717 = extractvalue %dx.types.CBufRet.f32 %2699, 1
  %2718 = fmul fast float %2717, %2678
  %2719 = fmul fast float %2717, %2679
  %2720 = fmul fast float %2717, %2680
  %2721 = fmul fast float %2717, %2681
  %2722 = extractvalue %dx.types.CBufRet.f32 %2705, 1
  %2723 = fmul fast float %2722, %2689
  %2724 = fmul fast float %2722, %2690
  %2725 = fadd fast float %2723, %2718
  %2726 = fadd fast float %2724, %2720
  %2727 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2728 = fmul fast float %2727, %2697
  %2729 = fmul fast float %2727, %2698
  %2730 = fadd fast float %2725, %2728
  %2731 = fadd fast float %2726, %2729
  %2732 = extractvalue %dx.types.CBufRet.f32 %2699, 2
  %2733 = fmul fast float %2732, %2678
  %2734 = fmul fast float %2732, %2679
  %2735 = fmul fast float %2732, %2680
  %2736 = fmul fast float %2732, %2681
  %2737 = extractvalue %dx.types.CBufRet.f32 %2705, 2
  %2738 = fmul fast float %2737, %2689
  %2739 = fmul fast float %2737, %2690
  %2740 = fadd fast float %2738, %2733
  %2741 = fadd fast float %2739, %2735
  %2742 = extractvalue %dx.types.CBufRet.f32 %2711, 2
  %2743 = fmul fast float %2742, %2697
  %2744 = fmul fast float %2742, %2698
  %2745 = fadd fast float %2740, %2743
  %2746 = fadd fast float %2741, %2744
  %2747 = fmul fast float %2734, %2734
  %2748 = fmul fast float %2746, %2746
  %2749 = fmul fast float %2736, %2736
  %2750 = fadd fast float %2749, %2747
  %2751 = fadd fast float %2750, %2748
  %2752 = call float @dx.op.unary.f32(i32 24, float %2751)  ; Sqrt(value)
  %2753 = fcmp fast ugt float %2752, 0.000000e+00
  br i1 %2753, label %2754, label %2769

; <label>:2754                                    ; preds = %2488
  %2755 = fsub fast float -0.000000e+00, %2736
  %2756 = fdiv fast float %2755, %2752
  %2757 = fsub fast float -0.000000e+00, %2734
  %2758 = fdiv fast float %2757, %2752
  %2759 = fdiv fast float %2746, %2752
  %2760 = fmul fast float %2745, 0x3FE279A760000000
  %2761 = fmul fast float %2758, %2734
  %2762 = fmul fast float %2759, %2746
  %2763 = fmul fast float %2756, %2736
  %2764 = fadd fast float %2761, %2763
  %2765 = fsub fast float %2764, %2762
  %2766 = call float @dx.op.unary.f32(i32 6, float %2765)  ; FAbs(value)
  %2767 = fadd fast float %2766, 0x3DDB7CDFE0000000
  %2768 = fdiv fast float %2760, %2767
  br label %2769

; <label>:2769                                    ; preds = %2754, %2488
  %2770 = phi float [ %2768, %2754 ], [ 1.000000e+00, %2488 ]
  %2771 = fmul fast float %2719, %2719
  %2772 = fmul fast float %2731, %2731
  %2773 = fmul fast float %2721, %2721
  %2774 = fadd fast float %2773, %2771
  %2775 = fadd fast float %2774, %2772
  %2776 = call float @dx.op.unary.f32(i32 24, float %2775)  ; Sqrt(value)
  %2777 = fcmp fast ugt float %2776, 0.000000e+00
  br i1 %2777, label %2778, label %2793

; <label>:2778                                    ; preds = %2769
  %2779 = fsub fast float -0.000000e+00, %2721
  %2780 = fdiv fast float %2779, %2776
  %2781 = fsub fast float -0.000000e+00, %2719
  %2782 = fdiv fast float %2781, %2776
  %2783 = fdiv fast float %2731, %2776
  %2784 = fmul fast float %2730, 0x3FE279A760000000
  %2785 = fmul fast float %2782, %2719
  %2786 = fmul fast float %2783, %2731
  %2787 = fmul fast float %2780, %2721
  %2788 = fadd fast float %2785, %2787
  %2789 = fsub fast float %2788, %2786
  %2790 = call float @dx.op.unary.f32(i32 6, float %2789)  ; FAbs(value)
  %2791 = fadd fast float %2790, 0x3DDB7CDFE0000000
  %2792 = fdiv fast float %2784, %2791
  br label %2793

; <label>:2793                                    ; preds = %2778, %2769
  %2794 = phi float [ %2792, %2778 ], [ 1.000000e+00, %2769 ]
  %2795 = call float @dx.op.binary.f32(i32 36, float %2794, float %2770)  ; FMin(a,b)
  %2796 = fmul fast float %2702, %2702
  %2797 = fmul fast float %2716, %2716
  %2798 = fmul fast float %2704, %2704
  %2799 = fadd fast float %2798, %2796
  %2800 = fadd fast float %2799, %2797
  %2801 = call float @dx.op.unary.f32(i32 24, float %2800)  ; Sqrt(value)
  %2802 = fcmp fast ugt float %2801, 0.000000e+00
  br i1 %2802, label %2803, label %2818

; <label>:2803                                    ; preds = %2793
  %2804 = fsub fast float -0.000000e+00, %2704
  %2805 = fdiv fast float %2804, %2801
  %2806 = fsub fast float -0.000000e+00, %2702
  %2807 = fdiv fast float %2806, %2801
  %2808 = fdiv fast float %2716, %2801
  %2809 = fmul fast float %2715, 0x3FE279A760000000
  %2810 = fmul fast float %2807, %2702
  %2811 = fmul fast float %2808, %2716
  %2812 = fmul fast float %2805, %2704
  %2813 = fadd fast float %2810, %2812
  %2814 = fsub fast float %2813, %2811
  %2815 = call float @dx.op.unary.f32(i32 6, float %2814)  ; FAbs(value)
  %2816 = fadd fast float %2815, 0x3DDB7CDFE0000000
  %2817 = fdiv fast float %2809, %2816
  br label %2818

; <label>:2818                                    ; preds = %2803, %2793
  %2819 = phi float [ %2817, %2803 ], [ 1.000000e+00, %2793 ]
  %2820 = call float @dx.op.binary.f32(i32 36, float %2819, float %2795)  ; FMin(a,b)
  %2821 = call float @dx.op.unary.f32(i32 7, float %2820)  ; Saturate(value)
  %2822 = fcmp fast olt float %2821, 1.000000e+00
  br i1 %2822, label %2823, label %2833

; <label>:2823                                    ; preds = %2818
  %2824 = fmul fast float %2821, %2702
  %2825 = fmul fast float %2821, %2716
  %2826 = fmul fast float %2821, %2704
  %2827 = fmul fast float %2821, %2719
  %2828 = fmul fast float %2821, %2731
  %2829 = fmul fast float %2821, %2721
  %2830 = fmul fast float %2821, %2734
  %2831 = fmul fast float %2821, %2746
  %2832 = fmul fast float %2821, %2736
  br label %2833

; <label>:2833                                    ; preds = %2823, %2818
  %2834 = phi float [ %2830, %2823 ], [ %2734, %2818 ]
  %2835 = phi float [ %2831, %2823 ], [ %2746, %2818 ]
  %2836 = phi float [ %2832, %2823 ], [ %2736, %2818 ]
  %2837 = phi float [ %2827, %2823 ], [ %2719, %2818 ]
  %2838 = phi float [ %2828, %2823 ], [ %2731, %2818 ]
  %2839 = phi float [ %2829, %2823 ], [ %2721, %2818 ]
  %2840 = phi float [ %2824, %2823 ], [ %2702, %2818 ]
  %2841 = phi float [ %2825, %2823 ], [ %2716, %2818 ]
  %2842 = phi float [ %2826, %2823 ], [ %2704, %2818 ]
  %2843 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2715)  ; FMax(a,b)
  %2844 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2730)  ; FMax(a,b)
  %2845 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2745)  ; FMax(a,b)
  %2846 = fcmp fast oge float %2503, 0.000000e+00
  %2847 = and i1 %2846, %2274
  %2848 = fcmp fast ole float %2503, 1.000000e+00
  %2849 = and i1 %2848, %2847
  %2850 = fcmp fast oge float %2504, 0.000000e+00
  %2851 = and i1 %2850, %2849
  %2852 = fcmp fast ole float %2504, 1.000000e+00
  %2853 = and i1 %2852, %2851
  br i1 %2853, label %2854, label %2999, !dx.controlflow.hints !103

; <label>:2854                                    ; preds = %2833
  %2855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.f32 %2855, 2
  %2857 = extractvalue %dx.types.CBufRet.f32 %2855, 3
  %2858 = fmul fast float %2856, %2503
  %2859 = fmul fast float %2857, %2504
  %2860 = call float @dx.op.unary.f32(i32 27, float %2858)  ; Round_ni(value)
  %2861 = call float @dx.op.unary.f32(i32 27, float %2859)  ; Round_ni(value)
  %2862 = fptosi float %2860 to i32
  %2863 = fptosi float %2861 to i32
  %2864 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %48, i32 0, i32 %2862, i32 %2863, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = and i32 %2865, 65535
  %2867 = lshr i32 %2865, 16
  %2868 = icmp eq i32 %2866, 65535
  br i1 %2868, label %2905, label %2869

; <label>:2869                                    ; preds = %2854
  %2870 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2871 = extractvalue %dx.types.CBufRet.f32 %2855, 0
  %2872 = extractvalue %dx.types.CBufRet.f32 %2855, 1
  %2873 = fmul fast float %2871, %2503
  %2874 = fmul fast float %2872, %2504
  %2875 = fmul fast float %2873, 1.250000e-01
  %2876 = fmul fast float %2874, 1.250000e-01
  %2877 = call float @dx.op.unary.f32(i32 27, float %2875)  ; Round_ni(value)
  %2878 = call float @dx.op.unary.f32(i32 27, float %2876)  ; Round_ni(value)
  %2879 = fmul fast float %2877, 8.000000e+00
  %2880 = fmul fast float %2878, 8.000000e+00
  %2881 = and i32 %2865, 255
  %2882 = lshr i32 %2865, 8
  %2883 = and i32 %2882, 255
  %2884 = mul nuw nsw i32 %2881, 9
  %2885 = uitofp i32 %2884 to float
  %2886 = mul nuw nsw i32 %2883, 9
  %2887 = uitofp i32 %2886 to float
  %2888 = fadd fast float %2885, 5.000000e-01
  %2889 = fadd fast float %2888, %2873
  %2890 = fsub fast float %2889, %2879
  %2891 = fadd fast float %2887, 5.000000e-01
  %2892 = fadd fast float %2891, %2874
  %2893 = fsub fast float %2892, %2880
  %2894 = fdiv fast float %2890, %2273
  %2895 = fdiv fast float %2893, %2870
  %2896 = fmul fast float %2531, 4.375000e-01
  %2897 = fadd fast float %2896, 3.125000e-02
  %2898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2894, float %2895, float %2897, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.ResRet.f32 %2898, 1
  %2901 = extractvalue %dx.types.ResRet.f32 %2898, 2
  %2902 = fadd fast float %2899, %2843
  %2903 = fadd fast float %2900, %2844
  %2904 = fadd fast float %2901, %2845
  br label %2905

; <label>:2905                                    ; preds = %2869, %2854
  %2906 = phi float [ %2904, %2869 ], [ %2845, %2854 ]
  %2907 = phi float [ %2903, %2869 ], [ %2844, %2854 ]
  %2908 = phi float [ %2902, %2869 ], [ %2843, %2854 ]
  %2909 = icmp eq i32 %2867, 65535
  br i1 %2909, label %2999, label %2910

; <label>:2910                                    ; preds = %2905
  %2911 = extractvalue %dx.types.CBufRet.f32 %2272, 1
  %2912 = extractvalue %dx.types.CBufRet.f32 %2855, 0
  %2913 = extractvalue %dx.types.CBufRet.f32 %2855, 1
  %2914 = fmul fast float %2912, %2503
  %2915 = fmul fast float %2913, %2504
  %2916 = fmul fast float %2914, 1.250000e-01
  %2917 = fmul fast float %2915, 1.250000e-01
  %2918 = call float @dx.op.unary.f32(i32 27, float %2916)  ; Round_ni(value)
  %2919 = call float @dx.op.unary.f32(i32 27, float %2917)  ; Round_ni(value)
  %2920 = fmul fast float %2918, 8.000000e+00
  %2921 = fmul fast float %2919, 8.000000e+00
  %2922 = fsub fast float %2914, %2920
  %2923 = fsub fast float %2915, %2921
  %2924 = fadd fast float %2922, 5.000000e-01
  %2925 = fadd fast float %2923, 5.000000e-01
  %2926 = and i32 %2867, 255
  %2927 = lshr i32 %2865, 24
  %2928 = mul nuw nsw i32 %2926, 9
  %2929 = uitofp i32 %2928 to float
  %2930 = mul nuw nsw i32 %2927, 9
  %2931 = uitofp i32 %2930 to float
  %2932 = fadd fast float %2924, %2929
  %2933 = fadd fast float %2925, %2931
  %2934 = fdiv fast float %2932, %2273
  %2935 = fdiv fast float %2933, %2911
  %2936 = fmul fast float %2531, 4.375000e-01
  %2937 = fadd fast float %2936, 3.125000e-02
  %2938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2934, float %2935, float %2937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2939 = extractvalue %dx.types.ResRet.f32 %2938, 0
  %2940 = extractvalue %dx.types.ResRet.f32 %2938, 1
  %2941 = extractvalue %dx.types.ResRet.f32 %2938, 2
  %2942 = fadd fast float %2936, 5.312500e-01
  %2943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %58, float %2934, float %2935, float %2942, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2944 = extractvalue %dx.types.ResRet.f32 %2943, 0
  %2945 = extractvalue %dx.types.ResRet.f32 %2943, 1
  %2946 = extractvalue %dx.types.ResRet.f32 %2943, 2
  %2947 = fmul fast float %2944, 2.000000e+00
  %2948 = fmul fast float %2945, 2.000000e+00
  %2949 = fmul fast float %2946, 2.000000e+00
  %2950 = fadd fast float %2947, -1.000000e+00
  %2951 = fadd fast float %2948, -1.000000e+00
  %2952 = fadd fast float %2949, -1.000000e+00
  %2953 = fmul fast float %2950, %2950
  %2954 = fmul fast float %2951, %2951
  %2955 = fadd fast float %2953, %2954
  %2956 = fmul fast float %2952, %2952
  %2957 = fadd fast float %2955, %2956
  %2958 = call float @dx.op.unary.f32(i32 24, float %2957)  ; Sqrt(value)
  %2959 = fcmp fast ogt float %2958, 0.000000e+00
  br i1 %2959, label %2960, label %2964

; <label>:2960                                    ; preds = %2910
  %2961 = fdiv fast float %2950, %2958
  %2962 = fdiv fast float %2951, %2958
  %2963 = fdiv fast float %2952, %2958
  br label %2964

; <label>:2964                                    ; preds = %2960, %2910
  %2965 = phi float [ %2961, %2960 ], [ 0.000000e+00, %2910 ]
  %2966 = phi float [ %2962, %2960 ], [ 0.000000e+00, %2910 ]
  %2967 = phi float [ %2963, %2960 ], [ 0.000000e+00, %2910 ]
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.CBufRet.f32 %2968, 1
  %2971 = fsub fast float %2124, %2969
  %2972 = fsub fast float %2125, %2970
  %2973 = fmul fast float %2971, %2971
  %2974 = fmul fast float %2972, %2972
  %2975 = fadd fast float %2973, %2974
  %2976 = call float @dx.op.unary.f32(i32 24, float %2975)  ; Sqrt(value)
  %2977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2978 = extractvalue %dx.types.CBufRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.CBufRet.f32 %2977, 1
  %2980 = fsub fast float %2976, %2978
  %2981 = fdiv fast float %2980, %2979
  %2982 = call float @dx.op.unary.f32(i32 7, float %2981)  ; Saturate(value)
  %2983 = fmul fast float %2982, 2.000000e+00
  %2984 = fsub fast float 3.000000e+00, %2983
  %2985 = fmul fast float %2982, %2982
  %2986 = fmul fast float %2985, %2984
  %2987 = call float @dx.op.dot3.f32(i32 55, float %2965, float %2966, float %2967, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %2988 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2987)  ; FMax(a,b)
  %2989 = fmul fast float %2988, 0x400C5BF8A0000000
  %2990 = fmul fast float %2986, %2939
  %2991 = fmul fast float %2990, %2989
  %2992 = fadd fast float %2991, %2908
  %2993 = fmul fast float %2986, %2940
  %2994 = fmul fast float %2993, %2989
  %2995 = fadd fast float %2994, %2907
  %2996 = fmul fast float %2986, %2941
  %2997 = fmul fast float %2996, %2989
  %2998 = fadd fast float %2997, %2906
  br label %2999

; <label>:2999                                    ; preds = %2964, %2905, %2833
  %3000 = phi float [ %2998, %2964 ], [ %2906, %2905 ], [ %2845, %2833 ]
  %3001 = phi float [ %2995, %2964 ], [ %2907, %2905 ], [ %2844, %2833 ]
  %3002 = phi float [ %2992, %2964 ], [ %2908, %2905 ], [ %2843, %2833 ]
  %3003 = fcmp fast ogt float %2490, %2527
  %3004 = and i1 %2846, %3003
  %3005 = and i1 %2848, %3004
  %3006 = and i1 %2850, %3005
  %3007 = and i1 %2852, %3006
  br i1 %3007, label %3008, label %3065, !dx.controlflow.hints !104

; <label>:3008                                    ; preds = %2999
  %3009 = fmul fast float %2529, 0x3FC24924A0000000
  %3010 = fsub fast float %2490, %2527
  %3011 = fdiv fast float %3010, %3009
  %3012 = call float @dx.op.unary.f32(i32 7, float %3011)  ; Saturate(value)
  %3013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.f32 %3013, 0
  %3015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3016 = extractvalue %dx.types.CBufRet.f32 %3015, 0
  %3017 = extractvalue %dx.types.CBufRet.f32 %3015, 1
  %3018 = extractvalue %dx.types.CBufRet.f32 %3015, 2
  %3019 = fsub fast float %3014, %3002
  %3020 = fsub fast float %3016, %2840
  %3021 = fsub fast float %3017, %2841
  %3022 = fsub fast float %3018, %2842
  %3023 = fmul fast float %3019, %3012
  %3024 = fmul fast float %3020, %3012
  %3025 = fmul fast float %3021, %3012
  %3026 = fmul fast float %3022, %3012
  %3027 = fadd fast float %3023, %3002
  %3028 = fadd fast float %3024, %2840
  %3029 = fadd fast float %3025, %2841
  %3030 = fadd fast float %3026, %2842
  %3031 = extractvalue %dx.types.CBufRet.f32 %3013, 1
  %3032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3033 = extractvalue %dx.types.CBufRet.f32 %3032, 0
  %3034 = extractvalue %dx.types.CBufRet.f32 %3032, 1
  %3035 = extractvalue %dx.types.CBufRet.f32 %3032, 2
  %3036 = fsub fast float %3031, %3001
  %3037 = fsub fast float %3033, %2837
  %3038 = fsub fast float %3034, %2838
  %3039 = fsub fast float %3035, %2839
  %3040 = fmul fast float %3036, %3012
  %3041 = fmul fast float %3037, %3012
  %3042 = fmul fast float %3038, %3012
  %3043 = fmul fast float %3039, %3012
  %3044 = fadd fast float %3040, %3001
  %3045 = fadd fast float %3041, %2837
  %3046 = fadd fast float %3042, %2838
  %3047 = fadd fast float %3043, %2839
  %3048 = extractvalue %dx.types.CBufRet.f32 %3013, 2
  %3049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3050 = extractvalue %dx.types.CBufRet.f32 %3049, 0
  %3051 = extractvalue %dx.types.CBufRet.f32 %3049, 1
  %3052 = extractvalue %dx.types.CBufRet.f32 %3049, 2
  %3053 = fsub fast float %3048, %3000
  %3054 = fsub fast float %3050, %2834
  %3055 = fsub fast float %3051, %2835
  %3056 = fsub fast float %3052, %2836
  %3057 = fmul fast float %3053, %3012
  %3058 = fmul fast float %3054, %3012
  %3059 = fmul fast float %3055, %3012
  %3060 = fmul fast float %3056, %3012
  %3061 = fadd fast float %3057, %3000
  %3062 = fadd fast float %3058, %2834
  %3063 = fadd fast float %3059, %2835
  %3064 = fadd fast float %3060, %2836
  br label %3065

; <label>:3065                                    ; preds = %3008, %2999
  %3066 = phi float [ %3061, %3008 ], [ %3000, %2999 ]
  %3067 = phi float [ %3062, %3008 ], [ %2834, %2999 ]
  %3068 = phi float [ %3063, %3008 ], [ %2835, %2999 ]
  %3069 = phi float [ %3064, %3008 ], [ %2836, %2999 ]
  %3070 = phi float [ %3044, %3008 ], [ %3001, %2999 ]
  %3071 = phi float [ %3045, %3008 ], [ %2837, %2999 ]
  %3072 = phi float [ %3046, %3008 ], [ %2838, %2999 ]
  %3073 = phi float [ %3047, %3008 ], [ %2839, %2999 ]
  %3074 = phi float [ %3027, %3008 ], [ %3002, %2999 ]
  %3075 = phi float [ %3028, %3008 ], [ %2840, %2999 ]
  %3076 = phi float [ %3029, %3008 ], [ %2841, %2999 ]
  %3077 = phi float [ %3030, %3008 ], [ %2842, %2999 ]
  %3078 = extractvalue %dx.types.CBufRet.f32 %2652, 3
  %3079 = fmul fast float %3078, %3074
  %3080 = fmul fast float %3078, %3070
  %3081 = fmul fast float %3078, %3066
  %3082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3083 = extractvalue %dx.types.CBufRet.f32 %3082, 3
  %3084 = fmul fast float %3079, %3083
  %3085 = fmul fast float %3080, %3083
  %3086 = fmul fast float %3081, %3083
  %3087 = fmul fast float %3075, 1.500000e+00
  %3088 = fmul fast float %3087, %3078
  %3089 = fmul fast float %3088, %3083
  %3090 = fmul fast float %3076, 1.500000e+00
  %3091 = fmul fast float %3090, %3078
  %3092 = fmul fast float %3091, %3083
  %3093 = fmul fast float %3077, 1.500000e+00
  %3094 = fmul fast float %3093, %3078
  %3095 = fmul fast float %3094, %3083
  %3096 = fmul fast float %3071, 1.500000e+00
  %3097 = fmul fast float %3096, %3078
  %3098 = fmul fast float %3097, %3083
  %3099 = fmul fast float %3072, 1.500000e+00
  %3100 = fmul fast float %3099, %3078
  %3101 = fmul fast float %3100, %3083
  %3102 = fmul fast float %3073, 1.500000e+00
  %3103 = fmul fast float %3102, %3078
  %3104 = fmul fast float %3103, %3083
  %3105 = fmul fast float %3067, 1.500000e+00
  %3106 = fmul fast float %3105, %3078
  %3107 = fmul fast float %3106, %3083
  %3108 = fmul fast float %3068, 1.500000e+00
  %3109 = fmul fast float %3108, %3078
  %3110 = fmul fast float %3109, %3083
  %3111 = fmul fast float %3069, 1.500000e+00
  %3112 = fmul fast float %3111, %3078
  %3113 = fmul fast float %3112, %3083
  %3114 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3084)  ; FMax(a,b)
  %3115 = call float @dx.op.dot3.f32(i32 55, float %3089, float %3092, float %3095, float %3089, float %3092, float %3095)  ; Dot3(ax,ay,az,bx,by,bz)
  %3116 = fcmp fast oeq float %3115, 0.000000e+00
  %3117 = fcmp fast oeq float %3114, 0.000000e+00
  %3118 = or i1 %3117, %3116
  br i1 %3118, label %3148, label %3119

; <label>:3119                                    ; preds = %3065
  %3120 = fsub fast float -0.000000e+00, %3095
  %3121 = fsub fast float -0.000000e+00, %3089
  %3122 = call float @dx.op.unary.f32(i32 24, float %3115)  ; Sqrt(value)
  %3123 = fdiv fast float %3122, %3114
  %3124 = fcmp fast ogt float %3123, 0x3FFB6F8900000000
  %3125 = select i1 %3124, float 0x3FFB6F8900000000, float %3123
  %3126 = fmul fast float %3125, 0x3FE8A23460000000
  %3127 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  %3128 = call float @dx.op.binary.f32(i32 35, float %3125, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3129 = fmul fast float %3127, %3114
  %3130 = fmul fast float %3128, 0x3FF279A740000000
  %3131 = fadd fast float %3130, -1.000000e+00
  %3132 = call float @dx.op.dot3.f32(i32 55, float %3120, float %3121, float %3092, float %3120, float %3121, float %3092)  ; Dot3(ax,ay,az,bx,by,bz)
  %3133 = call float @dx.op.unary.f32(i32 25, float %3132)  ; Rsqrt(value)
  %3134 = fmul fast float %3133, %3120
  %3135 = fmul fast float %3133, %3121
  %3136 = fmul fast float %3133, %3092
  %3137 = fmul fast float %3131, %3131
  %3138 = fsub fast float 1.000000e+00, %3137
  %3139 = fmul fast float %3128, 0x40005F8BE0000000
  %3140 = fsub fast float 0x400C5BF8A0000000, %3139
  %3141 = fdiv fast float %3129, %3140
  %3142 = fmul fast float %3141, 0x3FEE31C3C0000000
  %3143 = fmul fast float %3142, %3138
  %3144 = fmul fast float %3128, 0x3FDACB7480000000
  %3145 = fadd fast float %3144, 0xBFD7347680000000
  %3146 = fmul fast float %3145, %3141
  %3147 = fmul fast float %3146, %3138
  br label %3148

; <label>:3148                                    ; preds = %3119, %3065
  %3149 = phi float [ %3134, %3119 ], [ 0.000000e+00, %3065 ]
  %3150 = phi float [ %3135, %3119 ], [ 0.000000e+00, %3065 ]
  %3151 = phi float [ %3136, %3119 ], [ 0.000000e+00, %3065 ]
  %3152 = phi float [ %3143, %3119 ], [ 0.000000e+00, %3065 ]
  %3153 = phi float [ %3147, %3119 ], [ 0.000000e+00, %3065 ]
  %3154 = call float @dx.op.dot3.f32(i32 55, float %3149, float %3150, float %3151, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %3155 = fmul fast float %3154, %3154
  %3156 = fmul fast float %3155, 0x3FEE471020000000
  %3157 = fadd fast float %3156, 0xBFD42F6020000000
  %3158 = fmul fast float %3114, 0x3FD20DD760000000
  %3159 = fmul fast float %3157, %3153
  %3160 = fmul fast float %3152, 0x3FDF454380000000
  %3161 = fmul fast float %3160, %3154
  %3162 = fadd fast float %3161, %3158
  %3163 = fadd fast float %3162, %3159
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3149, float %3150, float %3151, float %2114, float %2115, float %2116)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = fmul fast float %3164, 0x3FDF454380000000
  %3166 = fmul fast float %3164, %3164
  %3167 = fmul fast float %3166, 0x3FEE471020000000
  %3168 = fadd fast float %3167, 0xBFD42F6020000000
  %3169 = call float @dx.op.dot3.f32(i32 55, float %3114, float %3152, float %3153, float 0x3FD20DD760000000, float %3165, float %3168)  ; Dot3(ax,ay,az,bx,by,bz)
  %3170 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3085)  ; FMax(a,b)
  %3171 = call float @dx.op.dot3.f32(i32 55, float %3098, float %3101, float %3104, float %3098, float %3101, float %3104)  ; Dot3(ax,ay,az,bx,by,bz)
  %3172 = fcmp fast oeq float %3171, 0.000000e+00
  %3173 = fcmp fast oeq float %3170, 0.000000e+00
  %3174 = or i1 %3173, %3172
  br i1 %3174, label %3204, label %3175

; <label>:3175                                    ; preds = %3148
  %3176 = fsub fast float -0.000000e+00, %3104
  %3177 = fsub fast float -0.000000e+00, %3098
  %3178 = call float @dx.op.unary.f32(i32 24, float %3171)  ; Sqrt(value)
  %3179 = fdiv fast float %3178, %3170
  %3180 = fcmp fast ogt float %3179, 0x3FFB6F8900000000
  %3181 = select i1 %3180, float 0x3FFB6F8900000000, float %3179
  %3182 = fmul fast float %3181, 0x3FE8A23460000000
  %3183 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  %3184 = call float @dx.op.binary.f32(i32 35, float %3181, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3185 = fmul fast float %3183, %3170
  %3186 = fmul fast float %3184, 0x3FF279A740000000
  %3187 = fadd fast float %3186, -1.000000e+00
  %3188 = call float @dx.op.dot3.f32(i32 55, float %3176, float %3177, float %3101, float %3176, float %3177, float %3101)  ; Dot3(ax,ay,az,bx,by,bz)
  %3189 = call float @dx.op.unary.f32(i32 25, float %3188)  ; Rsqrt(value)
  %3190 = fmul fast float %3189, %3176
  %3191 = fmul fast float %3189, %3177
  %3192 = fmul fast float %3189, %3101
  %3193 = fmul fast float %3187, %3187
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3184, 0x40005F8BE0000000
  %3196 = fsub fast float 0x400C5BF8A0000000, %3195
  %3197 = fdiv fast float %3185, %3196
  %3198 = fmul fast float %3197, 0x3FEE31C3C0000000
  %3199 = fmul fast float %3198, %3194
  %3200 = fmul fast float %3184, 0x3FDACB7480000000
  %3201 = fadd fast float %3200, 0xBFD7347680000000
  %3202 = fmul fast float %3201, %3197
  %3203 = fmul fast float %3202, %3194
  br label %3204

; <label>:3204                                    ; preds = %3175, %3148
  %3205 = phi float [ %3190, %3175 ], [ 0.000000e+00, %3148 ]
  %3206 = phi float [ %3191, %3175 ], [ 0.000000e+00, %3148 ]
  %3207 = phi float [ %3192, %3175 ], [ 0.000000e+00, %3148 ]
  %3208 = phi float [ %3199, %3175 ], [ 0.000000e+00, %3148 ]
  %3209 = phi float [ %3203, %3175 ], [ 0.000000e+00, %3148 ]
  %3210 = call float @dx.op.dot3.f32(i32 55, float %3205, float %3206, float %3207, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %3211 = fmul fast float %3210, %3210
  %3212 = fmul fast float %3211, 0x3FEE471020000000
  %3213 = fadd fast float %3212, 0xBFD42F6020000000
  %3214 = fmul fast float %3170, 0x3FD20DD760000000
  %3215 = fmul fast float %3213, %3209
  %3216 = fmul fast float %3208, 0x3FDF454380000000
  %3217 = fmul fast float %3216, %3210
  %3218 = fadd fast float %3217, %3214
  %3219 = fadd fast float %3218, %3215
  %3220 = call float @dx.op.dot3.f32(i32 55, float %3205, float %3206, float %3207, float %2114, float %2115, float %2116)  ; Dot3(ax,ay,az,bx,by,bz)
  %3221 = fmul fast float %3220, 0x3FDF454380000000
  %3222 = fmul fast float %3220, %3220
  %3223 = fmul fast float %3222, 0x3FEE471020000000
  %3224 = fadd fast float %3223, 0xBFD42F6020000000
  %3225 = call float @dx.op.dot3.f32(i32 55, float %3170, float %3208, float %3209, float 0x3FD20DD760000000, float %3221, float %3224)  ; Dot3(ax,ay,az,bx,by,bz)
  %3226 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3086)  ; FMax(a,b)
  %3227 = call float @dx.op.dot3.f32(i32 55, float %3107, float %3110, float %3113, float %3107, float %3110, float %3113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3228 = fcmp fast oeq float %3227, 0.000000e+00
  %3229 = fcmp fast oeq float %3226, 0.000000e+00
  %3230 = or i1 %3229, %3228
  br i1 %3230, label %3260, label %3231

; <label>:3231                                    ; preds = %3204
  %3232 = fsub fast float -0.000000e+00, %3113
  %3233 = fsub fast float -0.000000e+00, %3107
  %3234 = call float @dx.op.unary.f32(i32 24, float %3227)  ; Sqrt(value)
  %3235 = fdiv fast float %3234, %3226
  %3236 = fcmp fast ogt float %3235, 0x3FFB6F8900000000
  %3237 = select i1 %3236, float 0x3FFB6F8900000000, float %3235
  %3238 = fmul fast float %3237, 0x3FE8A23460000000
  %3239 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3240 = call float @dx.op.binary.f32(i32 35, float %3237, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3241 = fmul fast float %3239, %3226
  %3242 = fmul fast float %3240, 0x3FF279A740000000
  %3243 = fadd fast float %3242, -1.000000e+00
  %3244 = call float @dx.op.dot3.f32(i32 55, float %3232, float %3233, float %3110, float %3232, float %3233, float %3110)  ; Dot3(ax,ay,az,bx,by,bz)
  %3245 = call float @dx.op.unary.f32(i32 25, float %3244)  ; Rsqrt(value)
  %3246 = fmul fast float %3245, %3232
  %3247 = fmul fast float %3245, %3233
  %3248 = fmul fast float %3245, %3110
  %3249 = fmul fast float %3243, %3243
  %3250 = fsub fast float 1.000000e+00, %3249
  %3251 = fmul fast float %3240, 0x40005F8BE0000000
  %3252 = fsub fast float 0x400C5BF8A0000000, %3251
  %3253 = fdiv fast float %3241, %3252
  %3254 = fmul fast float %3253, 0x3FEE31C3C0000000
  %3255 = fmul fast float %3254, %3250
  %3256 = fmul fast float %3240, 0x3FDACB7480000000
  %3257 = fadd fast float %3256, 0xBFD7347680000000
  %3258 = fmul fast float %3257, %3253
  %3259 = fmul fast float %3258, %3250
  br label %3260

; <label>:3260                                    ; preds = %3231, %3204
  %3261 = phi float [ %3246, %3231 ], [ 0.000000e+00, %3204 ]
  %3262 = phi float [ %3247, %3231 ], [ 0.000000e+00, %3204 ]
  %3263 = phi float [ %3248, %3231 ], [ 0.000000e+00, %3204 ]
  %3264 = phi float [ %3255, %3231 ], [ 0.000000e+00, %3204 ]
  %3265 = phi float [ %3259, %3231 ], [ 0.000000e+00, %3204 ]
  %3266 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3262, float %3263, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %3267 = fmul fast float %3266, %3266
  %3268 = fmul fast float %3267, 0x3FEE471020000000
  %3269 = fadd fast float %3268, 0xBFD42F6020000000
  %3270 = fmul fast float %3226, 0x3FD20DD760000000
  %3271 = fmul fast float %3269, %3265
  %3272 = fmul fast float %3264, 0x3FDF454380000000
  %3273 = fmul fast float %3272, %3266
  %3274 = fadd fast float %3273, %3270
  %3275 = fadd fast float %3274, %3271
  %3276 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3262, float %3263, float %2114, float %2115, float %2116)  ; Dot3(ax,ay,az,bx,by,bz)
  %3277 = fmul fast float %3276, 0x3FDF454380000000
  %3278 = fmul fast float %3276, %3276
  %3279 = fmul fast float %3278, 0x3FEE471020000000
  %3280 = fadd fast float %3279, 0xBFD42F6020000000
  %3281 = call float @dx.op.dot3.f32(i32 55, float %3226, float %3264, float %3265, float 0x3FD20DD760000000, float %3277, float %3280)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = call float @dx.op.binary.f32(i32 35, float %3163, float 0.000000e+00)  ; FMax(a,b)
  %3283 = call float @dx.op.binary.f32(i32 35, float %3219, float 0.000000e+00)  ; FMax(a,b)
  %3284 = call float @dx.op.binary.f32(i32 35, float %3275, float 0.000000e+00)  ; FMax(a,b)
  %3285 = call float @dx.op.binary.f32(i32 35, float %3169, float 0.000000e+00)  ; FMax(a,b)
  %3286 = call float @dx.op.binary.f32(i32 35, float %3225, float 0.000000e+00)  ; FMax(a,b)
  %3287 = call float @dx.op.binary.f32(i32 35, float %3281, float 0.000000e+00)  ; FMax(a,b)
  %3288 = fsub fast float %2484, %3282
  %3289 = fsub fast float %2485, %3283
  %3290 = fsub fast float %2486, %3284
  %3291 = fmul fast float %3288, %2165
  %3292 = fmul fast float %3289, %2165
  %3293 = fmul fast float %3290, %2165
  %3294 = fadd fast float %3291, %3282
  %3295 = fadd fast float %3292, %3283
  %3296 = fadd fast float %3293, %3284
  %3297 = fsub fast float %2481, %3285
  %3298 = fsub fast float %2482, %3286
  %3299 = fsub fast float %2483, %3287
  %3300 = fmul fast float %3297, %2165
  %3301 = fmul fast float %3298, %2165
  %3302 = fmul fast float %3299, %2165
  %3303 = fadd fast float %3300, %3285
  %3304 = fadd fast float %3301, %3286
  %3305 = fadd fast float %3302, %3287
  br label %3306

; <label>:3306                                    ; preds = %3260, %2480
  %3307 = phi float [ %3303, %3260 ], [ %2481, %2480 ]
  %3308 = phi float [ %3304, %3260 ], [ %2482, %2480 ]
  %3309 = phi float [ %3305, %3260 ], [ %2483, %2480 ]
  %3310 = phi float [ %3294, %3260 ], [ %2484, %2480 ]
  %3311 = phi float [ %3295, %3260 ], [ %2485, %2480 ]
  %3312 = phi float [ %3296, %3260 ], [ %2486, %2480 ]
  %3313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3314 = extractvalue %dx.types.CBufRet.f32 %3313, 0
  %3315 = call float @dx.op.binary.f32(i32 36, float %2097, float %3314)  ; FMin(a,b)
  %3316 = fsub fast float 1.000000e+00, %2117
  %3317 = fmul fast float %3315, %3316
  %3318 = fsub fast float 1.000000e+00, %3317
  %3319 = bitcast float %3318 to i32
  %3320 = sub nsw i32 2129859010, %3319
  %3321 = bitcast i32 %3320 to float
  %3322 = call float @dx.op.binary.f32(i32 36, float %2098, float %3314)  ; FMin(a,b)
  %3323 = fmul fast float %3322, %3316
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = bitcast float %3324 to i32
  %3326 = sub nsw i32 2129859010, %3325
  %3327 = bitcast i32 %3326 to float
  %3328 = call float @dx.op.binary.f32(i32 36, float %2099, float %3314)  ; FMin(a,b)
  %3329 = fmul fast float %3328, %3316
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = bitcast float %3330 to i32
  %3332 = sub nsw i32 2129859010, %3331
  %3333 = bitcast i32 %3332 to float
  %3334 = fmul fast float %3310, %2117
  %3335 = fmul fast float %3334, %3321
  %3336 = fmul fast float %3311, %2117
  %3337 = fmul fast float %3336, %3327
  %3338 = fmul fast float %3312, %2117
  %3339 = fmul fast float %3338, %3333
  %3340 = call float @dx.op.binary.f32(i32 36, float %2094, float %3314)  ; FMin(a,b)
  %3341 = fmul fast float %3340, %3316
  %3342 = fsub fast float 1.000000e+00, %3341
  %3343 = bitcast float %3342 to i32
  %3344 = sub nsw i32 2129859010, %3343
  %3345 = bitcast i32 %3344 to float
  %3346 = call float @dx.op.binary.f32(i32 36, float %2095, float %3314)  ; FMin(a,b)
  %3347 = fmul fast float %3346, %3316
  %3348 = fsub fast float 1.000000e+00, %3347
  %3349 = bitcast float %3348 to i32
  %3350 = sub nsw i32 2129859010, %3349
  %3351 = bitcast i32 %3350 to float
  %3352 = call float @dx.op.binary.f32(i32 36, float %2106, float %3314)  ; FMin(a,b)
  %3353 = fmul fast float %3352, %3316
  %3354 = fsub fast float 1.000000e+00, %3353
  %3355 = bitcast float %3354 to i32
  %3356 = sub nsw i32 2129859010, %3355
  %3357 = bitcast i32 %3356 to float
  %3358 = fmul fast float %3307, %2117
  %3359 = fmul fast float %3358, %3345
  %3360 = fmul fast float %3308, %2117
  %3361 = fmul fast float %3360, %3351
  %3362 = fmul fast float %3309, %2117
  %3363 = fmul fast float %3362, %3357
  %3364 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3337, float %3339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3365 = select i1 %228, float 0.000000e+00, float %3335
  %3366 = select i1 %228, float %3364, float %3337
  %3367 = select i1 %228, float 0.000000e+00, float %3339
  %3368 = call float @dx.op.dot3.f32(i32 55, float %3359, float %3361, float %3363, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = select i1 %228, float 0.000000e+00, float %3359
  %3370 = select i1 %228, float %3368, float %3361
  %3371 = select i1 %228, float 0.000000e+00, float %3363
  %3372 = fmul fast float %2108, 9.843750e-01
  %3373 = fmul fast float %2103, 9.843750e-01
  %3374 = fadd fast float %3372, 7.812500e-03
  %3375 = fadd fast float %3373, 7.812500e-03
  %3376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %3374, float %3375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3377 = extractvalue %dx.types.ResRet.f32 %3376, 2
  %3378 = extractvalue %dx.types.ResRet.f32 %3376, 3
  %3379 = fmul fast float %3377, %2094
  %3380 = fmul fast float %3377, %2095
  %3381 = fmul fast float %3377, %2106
  %3382 = fadd fast float %3379, %3378
  %3383 = fadd fast float %3380, %3378
  %3384 = fadd fast float %3381, %3378
  %3385 = fcmp fast ogt float %1471, 0.000000e+00
  br i1 %3385, label %3386, label %3412

; <label>:3386                                    ; preds = %3306
  %3387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1471, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3388 = extractvalue %dx.types.ResRet.f32 %3387, 0
  %3389 = extractvalue %dx.types.ResRet.f32 %3387, 1
  %3390 = extractvalue %dx.types.ResRet.f32 %3387, 2
  %3391 = fadd fast float %3388, -5.000000e-01
  %3392 = fadd fast float %3389, -5.000000e-01
  %3393 = fadd fast float %3390, -5.000000e-01
  %3394 = fsub fast float 1.000000e+00, %2094
  %3395 = fsub fast float 1.000000e+00, %2095
  %3396 = fsub fast float 1.000000e+00, %2106
  %3397 = fmul fast float %2094, 4.000000e+00
  %3398 = fmul fast float %3397, %3394
  %3399 = fmul fast float %3398, %3391
  %3400 = fmul fast float %2095, 4.000000e+00
  %3401 = fmul fast float %3400, %3395
  %3402 = fmul fast float %3401, %3392
  %3403 = fmul fast float %2106, 4.000000e+00
  %3404 = fmul fast float %3403, %3396
  %3405 = fmul fast float %3404, %3393
  %3406 = fadd fast float %3399, %3382
  %3407 = fadd fast float %3402, %3383
  %3408 = fadd fast float %3405, %3384
  %3409 = call float @dx.op.unary.f32(i32 7, float %3406)  ; Saturate(value)
  %3410 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3411 = call float @dx.op.unary.f32(i32 7, float %3408)  ; Saturate(value)
  br label %3412

; <label>:3412                                    ; preds = %3386, %3306
  %3413 = phi float [ %3409, %3386 ], [ %3382, %3306 ]
  %3414 = phi float [ %3410, %3386 ], [ %3383, %3306 ]
  %3415 = phi float [ %3411, %3386 ], [ %3384, %3306 ]
  %3416 = call float @dx.op.binary.f32(i32 35, float %3414, float %3415)  ; FMax(a,b)
  %3417 = call float @dx.op.binary.f32(i32 35, float %3413, float %3416)  ; FMax(a,b)
  %3418 = fsub fast float 1.000000e+00, %3417
  %3419 = fmul fast float %3418, %3365
  %3420 = fmul fast float %3418, %3366
  %3421 = fmul fast float %3418, %3367
  %3422 = call float @dx.op.dot3.f32(i32 55, float %2097, float %2098, float %2099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3423 = fcmp fast ogt float %3422, 0x3E7FF19E20000000
  %3424 = fdiv fast float 1.000000e+00, %3422
  %3425 = select i1 %3423, float %3424, float 0.000000e+00
  %3426 = fmul fast float %3425, %2097
  %3427 = fmul fast float %3425, %2098
  %3428 = fmul fast float %3425, %2099
  %3429 = fadd fast float %3426, -1.000000e+00
  %3430 = fadd fast float %3427, -1.000000e+00
  %3431 = fadd fast float %3428, -1.000000e+00
  %3432 = fmul fast float %3429, 5.000000e-01
  %3433 = fmul fast float %3430, 5.000000e-01
  %3434 = fmul fast float %3431, 5.000000e-01
  %3435 = fadd fast float %3432, 1.000000e+00
  %3436 = fadd fast float %3433, 1.000000e+00
  %3437 = fadd fast float %3434, 1.000000e+00
  %3438 = fmul fast float %3413, %3369
  %3439 = fmul fast float %3414, %3370
  %3440 = fmul fast float %3415, %3371
  %3441 = fsub fast float 1.000000e+00, %2108
  %3442 = bitcast float %3441 to i32
  %3443 = sitofp i32 %3442 to float
  %3444 = fmul fast float %3443, 5.000000e+00
  %3445 = fadd fast float %3444, 0xC1EFBF8940000000
  %3446 = fptosi float %3445 to i32
  %3447 = bitcast i32 %3446 to float
  %3448 = fmul fast float %3447, %1470
  %3449 = fmul fast float %3365, %3448
  %3450 = fmul fast float %3449, %3418
  %3451 = fmul fast float %3450, %3435
  %3452 = fmul fast float %3366, %3448
  %3453 = fmul fast float %3452, %3418
  %3454 = fmul fast float %3453, %3436
  %3455 = fmul fast float %3367, %3448
  %3456 = fmul fast float %3455, %3418
  %3457 = fmul fast float %3456, %3437
  %3458 = fmul fast float %3419, %1491
  %3459 = fmul fast float %3420, %1491
  %3460 = fmul fast float %3421, %1491
  %3461 = fadd fast float %3438, %1472
  %3462 = fadd fast float %3461, %3451
  %3463 = fmul fast float %3462, %1491
  %3464 = fadd fast float %3439, %1473
  %3465 = fadd fast float %3464, %3454
  %3466 = fmul fast float %3465, %1491
  %3467 = fadd fast float %3440, %1474
  %3468 = fadd fast float %3467, %3457
  %3469 = fmul fast float %3468, %1491
  %3470 = bitcast i32 %2120 to float
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 3
  %3473 = fcmp fast oeq float %3472, 0.000000e+00
  br i1 %3473, label %4537, label %3474

; <label>:3474                                    ; preds = %3412
  %3475 = extractvalue %dx.types.CBufRet.f32 %3471, 0
  %3476 = extractvalue %dx.types.CBufRet.f32 %3471, 1
  %3477 = extractvalue %dx.types.CBufRet.f32 %3471, 2
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.CBufRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.CBufRet.f32 %3478, 2
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.CBufRet.f32 %3482, 1
  %3485 = call float @dx.op.dot3.f32(i32 55, float %3479, float %3480, float %3481, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3486 = select i1 %228, float %3483, float %3479
  %3487 = select i1 %228, float %3485, float %3480
  %3488 = select i1 %228, float %3484, float %3481
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 2
  %3491 = fmul fast float %3490, %70
  %3492 = fmul fast float %3490, %71
  %3493 = fmul fast float %3490, %72
  %3494 = fadd fast float %3491, %137
  %3495 = fadd fast float %3492, %138
  %3496 = fadd fast float %3493, %139
  %3497 = fcmp fast olt float %3472, 0.000000e+00
  br i1 %3497, label %4119, label %3498

; <label>:3498                                    ; preds = %3474
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 0
  %3501 = extractvalue %dx.types.CBufRet.f32 %3499, 1
  %3502 = extractvalue %dx.types.CBufRet.f32 %3499, 2
  %3503 = extractvalue %dx.types.CBufRet.f32 %3499, 3
  %3504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.CBufRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.CBufRet.f32 %3504, 2
  %3508 = extractvalue %dx.types.CBufRet.f32 %3504, 3
  %3509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3510 = extractvalue %dx.types.CBufRet.f32 %3509, 0
  %3511 = extractvalue %dx.types.CBufRet.f32 %3509, 1
  %3512 = extractvalue %dx.types.CBufRet.f32 %3509, 2
  %3513 = extractvalue %dx.types.CBufRet.f32 %3509, 3
  %3514 = fmul fast float %3500, %3494
  %3515 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3501, float %3514)  ; FMad(a,b,c)
  %3516 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %3502, float %3515)  ; FMad(a,b,c)
  %3517 = fadd fast float %3516, %3503
  %3518 = fmul fast float %3505, %3494
  %3519 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3506, float %3518)  ; FMad(a,b,c)
  %3520 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %3507, float %3519)  ; FMad(a,b,c)
  %3521 = fadd fast float %3520, %3508
  %3522 = fmul fast float %3510, %3494
  %3523 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3511, float %3522)  ; FMad(a,b,c)
  %3524 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %3512, float %3523)  ; FMad(a,b,c)
  %3525 = fadd fast float %3524, %3513
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 0
  %3528 = extractvalue %dx.types.CBufRet.f32 %3526, 1
  %3529 = extractvalue %dx.types.CBufRet.f32 %3526, 3
  %3530 = fmul fast float %3529, %3517
  %3531 = fmul fast float %3529, %3521
  %3532 = fadd fast float %3530, %3527
  %3533 = fadd fast float %3531, %3528
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.CBufRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.CBufRet.f32 %3534, 3
  %3538 = fmul fast float %3537, %3517
  %3539 = fmul fast float %3537, %3521
  %3540 = fadd fast float %3538, %3535
  %3541 = fadd fast float %3539, %3536
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 1
  %3544 = fsub fast float %3543, %3525
  %3545 = extractvalue %dx.types.CBufRet.f32 %3542, 2
  %3546 = fmul fast float %3544, %3545
  %3547 = fsub fast float 1.000000e+00, %3546
  %3548 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3534, 2
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 2
  %3552 = fadd fast float %3551, %3549
  %3553 = fcmp fast ogt float %3552, 0.000000e+00
  br i1 %3553, label %3554, label %3578

; <label>:3554                                    ; preds = %3498
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.CBufRet.f32 %3555, 1
  %3558 = fsub fast float %3540, %3556
  %3559 = fsub fast float %3541, %3557
  %3560 = fcmp fast olt float %3558, 0.000000e+00
  %3561 = fcmp fast olt float %3559, 0.000000e+00
  %3562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3563 = extractvalue %dx.types.CBufRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.CBufRet.f32 %3562, 1
  %3565 = extractvalue %dx.types.CBufRet.f32 %3562, 2
  %3566 = extractvalue %dx.types.CBufRet.f32 %3562, 3
  %3567 = select i1 %3560, float %3563, float %3565
  %3568 = select i1 %3561, float %3564, float %3566
  %3569 = fmul fast float %3567, %3558
  %3570 = fmul fast float %3568, %3559
  %3571 = call float @dx.op.unary.f32(i32 6, float %3569)  ; FAbs(value)
  %3572 = call float @dx.op.unary.f32(i32 6, float %3570)  ; FAbs(value)
  %3573 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  %3574 = call float @dx.op.binary.f32(i32 35, float %3571, float %3572)  ; FMax(a,b)
  %3575 = fsub fast float %3573, %3574
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3577 = fmul fast float %3576, %3548
  br label %3578

; <label>:3578                                    ; preds = %3554, %3498
  %3579 = phi float [ %3577, %3554 ], [ 0.000000e+00, %3498 ]
  %3580 = extractvalue %dx.types.CBufRet.f32 %3526, 2
  %3581 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3582 = fadd fast float %3581, %3580
  %3583 = fcmp fast ogt float %3582, 0.000000e+00
  %3584 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  br i1 %3583, label %3585, label %3608

; <label>:3585                                    ; preds = %3578
  %3586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.CBufRet.f32 %3586, 1
  %3589 = fsub fast float %3532, %3587
  %3590 = fsub fast float %3533, %3588
  %3591 = fcmp fast olt float %3589, 0.000000e+00
  %3592 = fcmp fast olt float %3590, 0.000000e+00
  %3593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3594 = extractvalue %dx.types.CBufRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.CBufRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.CBufRet.f32 %3593, 2
  %3597 = extractvalue %dx.types.CBufRet.f32 %3593, 3
  %3598 = select i1 %3591, float %3594, float %3596
  %3599 = select i1 %3592, float %3595, float %3597
  %3600 = fmul fast float %3598, %3589
  %3601 = fmul fast float %3599, %3590
  %3602 = call float @dx.op.unary.f32(i32 6, float %3600)  ; FAbs(value)
  %3603 = call float @dx.op.unary.f32(i32 6, float %3601)  ; FAbs(value)
  %3604 = call float @dx.op.binary.f32(i32 35, float %3602, float %3603)  ; FMax(a,b)
  %3605 = fsub fast float %3584, %3604
  %3606 = call float @dx.op.unary.f32(i32 7, float %3605)  ; Saturate(value)
  %3607 = fmul fast float %3606, %3548
  br label %3608

; <label>:3608                                    ; preds = %3585, %3578
  %3609 = phi float [ %3607, %3585 ], [ 0.000000e+00, %3578 ]
  %3610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3610, 1
  %3612 = call float @dx.op.unary.f32(i32 7, float %3611)  ; Saturate(value)
  %3613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.CBufRet.f32 %3613, 1
  %3616 = fsub fast float %3517, %3614
  %3617 = fsub fast float %3521, %3615
  %3618 = fcmp fast olt float %3616, 0.000000e+00
  %3619 = fcmp fast olt float %3617, 0.000000e+00
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.CBufRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3625 = select i1 %3618, float %3621, float %3623
  %3626 = select i1 %3619, float %3622, float %3624
  %3627 = fmul fast float %3625, %3616
  %3628 = fmul fast float %3626, %3617
  %3629 = call float @dx.op.unary.f32(i32 6, float %3627)  ; FAbs(value)
  %3630 = call float @dx.op.unary.f32(i32 6, float %3628)  ; FAbs(value)
  %3631 = call float @dx.op.binary.f32(i32 35, float %3629, float %3630)  ; FMax(a,b)
  %3632 = fsub fast float %3584, %3631
  %3633 = call float @dx.op.unary.f32(i32 7, float %3632)  ; Saturate(value)
  %3634 = call float @dx.op.binary.f32(i32 36, float %3633, float %3612)  ; FMin(a,b)
  %3635 = fmul fast float %3634, %3548
  %3636 = fsub fast float %3609, %3635
  %3637 = fsub fast float %3579, %3609
  %3638 = fsub fast float %3637, %3635
  %3639 = call float @dx.op.binary.f32(i32 35, float %3609, float %3579)  ; FMax(a,b)
  %3640 = call float @dx.op.binary.f32(i32 35, float %3635, float %3639)  ; FMax(a,b)
  %3641 = fcmp fast olt float %3640, 1.000000e+00
  br i1 %3641, label %3642, label %4040, !dx.controlflow.hints !105

; <label>:3642                                    ; preds = %3608
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 0
  %3645 = fcmp fast une float %3644, 0.000000e+00
  br i1 %3645, label %3646, label %4040, !dx.controlflow.hints !106

; <label>:3646                                    ; preds = %3642
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.CBufRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.CBufRet.f32 %3647, 2
  %3651 = extractvalue %dx.types.CBufRet.f32 %3647, 3
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.CBufRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.CBufRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.CBufRet.f32 %3652, 3
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.CBufRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.CBufRet.f32 %3657, 2
  %3661 = extractvalue %dx.types.CBufRet.f32 %3657, 3
  %3662 = fmul fast float %3648, %3494
  %3663 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3649, float %3662)  ; FMad(a,b,c)
  %3664 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %3650, float %3663)  ; FMad(a,b,c)
  %3665 = fadd fast float %3664, %3651
  %3666 = fmul fast float %3653, %3494
  %3667 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3654, float %3666)  ; FMad(a,b,c)
  %3668 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %3655, float %3667)  ; FMad(a,b,c)
  %3669 = fadd fast float %3668, %3656
  %3670 = fmul fast float %3658, %3494
  %3671 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %3659, float %3670)  ; FMad(a,b,c)
  %3672 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %3660, float %3671)  ; FMad(a,b,c)
  %3673 = fadd fast float %3672, %3661
  %3674 = fcmp fast oge float %3665, 1.000000e+00
  %3675 = fcmp fast oge float %3669, 1.000000e+00
  %3676 = or i1 %3674, %3675
  %3677 = fcmp fast olt float %3665, 0.000000e+00
  %3678 = fcmp fast olt float %3669, 0.000000e+00
  %3679 = or i1 %3677, %3678
  %3680 = or i1 %3676, %3679
  br i1 %3680, label %4040, label %3681, !dx.controlflow.hints !107

; <label>:3681                                    ; preds = %3646
  %3682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3683 = extractvalue %dx.types.CBufRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.CBufRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.CBufRet.f32 %3682, 2
  %3686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3687 = extractvalue %dx.types.CBufRet.i32 %3686, 2
  %3688 = uitofp i32 %3687 to float
  %3689 = extractvalue %dx.types.CBufRet.i32 %3686, 3
  %3690 = uitofp i32 %3689 to float
  %3691 = extractvalue %dx.types.CBufRet.f32 %3682, 3
  %3692 = fmul fast float %3691, 2.000000e+00
  %3693 = fsub fast float %3665, %3683
  %3694 = fsub fast float %3669, %3684
  %3695 = fmul fast float %3692, %3693
  %3696 = fmul fast float %3692, %3694
  %3697 = fdiv fast float 1.000000e+00, %3477
  %3698 = fmul fast float %3696, %3697
  %3699 = call float @dx.op.unary.f32(i32 6, float %3698)  ; FAbs(value)
  %3700 = fmul fast float %3685, %3496
  %3701 = fmul fast float %3700, %3692
  %3702 = call float @dx.op.unary.f32(i32 6, float %3701)  ; FAbs(value)
  %3703 = call float @dx.op.unary.f32(i32 6, float %3695)  ; FAbs(value)
  %3704 = call float @dx.op.binary.f32(i32 35, float %3702, float %3699)  ; FMax(a,b)
  %3705 = call float @dx.op.binary.f32(i32 35, float %3703, float %3704)  ; FMax(a,b)
  %3706 = fmul fast float %3705, 2.000000e+00
  %3707 = call float @dx.op.unary.f32(i32 23, float %3706)  ; Log(value)
  %3708 = call float @dx.op.binary.f32(i32 35, float %3707, float %3688)  ; FMax(a,b)
  %3709 = call float @dx.op.unary.f32(i32 22, float %3708)  ; Frc(value)
  %3710 = fadd fast float %3709, 0xBFEA666660000000
  %3711 = fmul fast float %3710, 8.000000e+00
  %3712 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3713 = call float @dx.op.unary.f32(i32 27, float %3708)  ; Round_ni(value)
  %3714 = fadd fast float %3713, %3712
  %3715 = call float @dx.op.binary.f32(i32 36, float %3714, float %3690)  ; FMin(a,b)
  %3716 = call float @dx.op.unary.f32(i32 27, float %3715)  ; Round_ni(value)
  %3717 = fsub fast float -0.000000e+00, %3716
  %3718 = call float @dx.op.unary.f32(i32 21, float %3717)  ; Exp(value)
  %3719 = fmul fast float %3718, %3692
  %3720 = fmul fast float %3719, %3665
  %3721 = fmul fast float %3719, %3669
  %3722 = fmul fast float %3720, 2.500000e-01
  %3723 = fmul fast float %3721, 2.500000e-01
  %3724 = fadd fast float %3722, 5.000000e-01
  %3725 = fadd fast float %3723, 5.000000e-01
  %3726 = fsub fast float %3690, %3688
  %3727 = fptoui float %3726 to i32
  %3728 = add i32 %3727, 320
  %3729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %3728)  ; CBufferLoadLegacy(handle,regIndex)
  %3730 = extractvalue %dx.types.CBufRet.f32 %3729, 0
  %3731 = extractvalue %dx.types.CBufRet.f32 %3729, 1
  %3732 = fcmp fast une float %3715, %3690
  %3733 = fsub fast float %3665, %3730
  %3734 = fsub fast float %3669, %3731
  %3735 = call float @dx.op.unary.f32(i32 6, float %3733)  ; FAbs(value)
  %3736 = call float @dx.op.unary.f32(i32 6, float %3734)  ; FAbs(value)
  %3737 = fmul fast float %3735, %3719
  %3738 = fmul fast float %3736, %3719
  %3739 = fcmp fast olt float %3737, 1.000000e+00
  %3740 = fcmp fast olt float %3738, 1.000000e+00
  %3741 = and i1 %3739, %3740
  %3742 = or i1 %3732, %3741
  br i1 %3742, label %3743, label %4040, !dx.controlflow.hints !108

; <label>:3743                                    ; preds = %3681
  %3744 = fmul fast float %3721, 5.000000e-01
  %3745 = fmul fast float %3720, 5.000000e-01
  %3746 = fadd fast float %3744, 5.000000e-01
  %3747 = fadd fast float %3745, 5.000000e-01
  %3748 = sitofp i32 %3687 to float
  %3749 = fsub fast float %3715, %3748
  %3750 = call float @dx.op.unary.f32(i32 27, float %3749)  ; Round_ni(value)
  %3751 = call float @dx.op.unary.f32(i32 22, float %3715)  ; Frc(value)
  %3752 = call float @dx.op.unary.f32(i32 22, float %3747)  ; Frc(value)
  %3753 = call float @dx.op.unary.f32(i32 22, float %3746)  ; Frc(value)
  %3754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3752, float %3753, float %3750, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3755 = extractvalue %dx.types.ResRet.f32 %3754, 0
  %3756 = extractvalue %dx.types.ResRet.f32 %3754, 1
  %3757 = extractvalue %dx.types.ResRet.f32 %3754, 2
  %3758 = extractvalue %dx.types.ResRet.f32 %3754, 3
  %3759 = fcmp fast ogt float %3751, 0.000000e+00
  br i1 %3759, label %3760, label %3781, !dx.controlflow.hints !109

; <label>:3760                                    ; preds = %3743
  %3761 = fadd fast float %3750, 1.000000e+00
  %3762 = call float @dx.op.unary.f32(i32 22, float %3724)  ; Frc(value)
  %3763 = call float @dx.op.unary.f32(i32 22, float %3725)  ; Frc(value)
  %3764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %57, float %3762, float %3763, float %3761, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3765 = extractvalue %dx.types.ResRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.ResRet.f32 %3764, 3
  %3769 = fsub fast float %3765, %3755
  %3770 = fsub fast float %3766, %3756
  %3771 = fsub fast float %3767, %3757
  %3772 = fsub fast float %3768, %3758
  %3773 = fmul fast float %3769, %3751
  %3774 = fmul fast float %3770, %3751
  %3775 = fmul fast float %3771, %3751
  %3776 = fmul fast float %3772, %3751
  %3777 = fadd fast float %3773, %3755
  %3778 = fadd fast float %3774, %3756
  %3779 = fadd fast float %3775, %3757
  %3780 = fadd fast float %3776, %3758
  br label %3781

; <label>:3781                                    ; preds = %3760, %3743
  %3782 = phi float [ %3777, %3760 ], [ %3755, %3743 ]
  %3783 = phi float [ %3778, %3760 ], [ %3756, %3743 ]
  %3784 = phi float [ %3779, %3760 ], [ %3757, %3743 ]
  %3785 = phi float [ %3780, %3760 ], [ %3758, %3743 ]
  %3786 = fadd fast float %3782, -5.000000e-01
  %3787 = fadd fast float %3784, -5.000000e-01
  %3788 = fmul fast float %3786, 0xBFD5555560000000
  %3789 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3787, float %3788)  ; FMad(a,b,c)
  %3790 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3783, float 0.000000e+00)  ; FMad(a,b,c)
  %3791 = fadd fast float %3790, %3785
  %3792 = fmul fast float %3786, -7.500000e-01
  %3793 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3787, float %3792)  ; FMad(a,b,c)
  %3794 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3783, float 0.000000e+00)  ; FMad(a,b,c)
  %3795 = fadd fast float %3794, %3785
  %3796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3797 = extractvalue %dx.types.CBufRet.f32 %3796, 0
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.CBufRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.CBufRet.f32 %3798, 2
  %3802 = extractvalue %dx.types.CBufRet.f32 %3798, 3
  %3803 = fsub fast float %3799, %3789
  %3804 = fsub fast float %3800, %3791
  %3805 = fsub fast float %3801, %3793
  %3806 = fsub fast float %3802, %3795
  %3807 = fmul fast float %3803, %3797
  %3808 = fmul fast float %3804, %3797
  %3809 = fmul fast float %3805, %3797
  %3810 = fmul fast float %3806, %3797
  %3811 = fadd fast float %3807, %3789
  %3812 = fadd fast float %3808, %3791
  %3813 = fadd fast float %3809, %3793
  %3814 = fadd fast float %3810, %3795
  %3815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.i32 %3815, 0
  %3817 = and i32 %3816, 536870911
  %3818 = uitofp i32 %3817 to float
  %3819 = fmul fast float %3818, %3665
  %3820 = fmul fast float %3818, %3669
  %3821 = fptoui float %3819 to i32
  %3822 = fptoui float %3820 to i32
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = and i32 %3824, 31
  %3826 = lshr i32 %3821, %3825
  %3827 = lshr i32 %3822, %3825
  %3828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.i32 %3828, 0
  %3830 = and i32 %3829, 31
  %3831 = shl i32 1, %3830
  %3832 = call i32 @dx.op.binary.i32(i32 40, i32 %3831, i32 4)  ; UMin(a,b)
  %3833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.i32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.i32 %3833, 1
  %3836 = icmp eq i32 %3832, 0
  br i1 %3836, label %3878, label %3837

; <label>:3837                                    ; preds = %3781
  br label %3838

; <label>:3838                                    ; preds = %3866, %3837
  %3839 = phi i32 [ %3869, %3866 ], [ 0, %3837 ]
  %3840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.i32 %3840, 0
  %3842 = lshr i32 %3841, 16
  %3843 = and i32 %3842, 31
  %3844 = shl i32 %3827, %3843
  %3845 = add i32 %3844, %3826
  %3846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.i32 %3846, 0
  %3848 = and i32 %3847, 31
  %3849 = shl i32 %3845, %3848
  %3850 = add i32 %3849, %3839
  %3851 = shl i32 %3850, 2
  %3852 = add i32 %3851, 32
  %3853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.i32 %3853, 0
  %3855 = icmp slt i32 %3854, 0
  %3856 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %3839
  %3857 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3839
  %3858 = bitcast float* %3856 to i32*
  %3859 = bitcast float* %3857 to i32*
  br i1 %3855, label %3860, label %3866

; <label>:3860                                    ; preds = %3838
  %3861 = and i32 %3854, 1073741823
  %3862 = add nuw nsw i32 %3861, 20
  %3863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.i32 %3863, 0
  %3865 = extractvalue %dx.types.ResRet.i32 %3863, 1
  br label %3866

; <label>:3866                                    ; preds = %3860, %3838
  %3867 = phi i32 [ %3864, %3860 ], [ %3834, %3838 ]
  %3868 = phi i32 [ %3865, %3860 ], [ %3835, %3838 ]
  store i32 %3867, i32* %3858, align 4
  store i32 %3868, i32* %3859, align 4
  %3869 = add nuw i32 %3839, 1
  %3870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.i32 %3870, 2
  %3872 = icmp eq i32 %3871, 0
  %3873 = icmp ugt i32 %3854, -1073741825
  %3874 = and i1 %3873, %3872
  %3875 = icmp ult i32 %3869, %3832
  %3876 = and i1 %3874, %3875
  br i1 %3876, label %3838, label %3877

; <label>:3877                                    ; preds = %3866
  br label %3878

; <label>:3878                                    ; preds = %3877, %3781
  %3879 = phi i32 [ 0, %3781 ], [ %3869, %3877 ]
  %3880 = extractvalue %dx.types.CBufRet.f32 %3643, 2
  %3881 = fptoui float %3880 to i32
  %3882 = icmp eq i32 %3881, 0
  br i1 %3882, label %3934, label %3883

; <label>:3883                                    ; preds = %3878
  br label %3884

; <label>:3884                                    ; preds = %3929, %3883
  %3885 = phi i32 [ %3930, %3929 ], [ %3879, %3883 ]
  %3886 = phi i32 [ %3931, %3929 ], [ 0, %3883 ]
  %3887 = lshr i32 %3886, 2
  %3888 = and i32 %3886, 3
  %3889 = add nuw nsw i32 %3887, 83
  %3890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 %3889)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.i32 %3890, 0
  %3892 = extractvalue %dx.types.CBufRet.i32 %3890, 1
  %3893 = extractvalue %dx.types.CBufRet.i32 %3890, 2
  %3894 = extractvalue %dx.types.CBufRet.i32 %3890, 3
  %3895 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 0
  store i32 %3891, i32* %3895, align 4
  %3896 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 1
  store i32 %3892, i32* %3896, align 4
  %3897 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 2
  store i32 %3893, i32* %3897, align 4
  %3898 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 3
  store i32 %3894, i32* %3898, align 4
  %3899 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i32 0, i32 %3888
  %3900 = load i32, i32* %3899, align 4, !tbaa !110, !noalias !114
  %3901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.i32 %3901, 0
  %3903 = lshr i32 %3902, 16
  %3904 = and i32 %3903, 31
  %3905 = shl i32 %3827, %3904
  %3906 = add i32 %3905, %3826
  %3907 = shl i32 %3906, 2
  %3908 = add i32 %3907, %3900
  %3909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.i32 %3909, 0
  %3911 = icmp eq i32 %3910, 0
  br i1 %3911, label %3929, label %3912

; <label>:3912                                    ; preds = %3884
  %3913 = icmp slt i32 %3910, 0
  %3914 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %3885
  %3915 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3885
  %3916 = bitcast float* %3914 to i32*
  %3917 = bitcast float* %3915 to i32*
  br i1 %3913, label %3918, label %3925

; <label>:3918                                    ; preds = %3912
  %3919 = and i32 %3910, 1073741823
  %3920 = add i32 %3900, 20
  %3921 = add i32 %3920, %3919
  %3922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3923 = extractvalue %dx.types.ResRet.i32 %3922, 0
  %3924 = extractvalue %dx.types.ResRet.i32 %3922, 1
  br label %3925

; <label>:3925                                    ; preds = %3918, %3912
  %3926 = phi i32 [ %3923, %3918 ], [ %3834, %3912 ]
  %3927 = phi i32 [ %3924, %3918 ], [ %3835, %3912 ]
  store i32 %3926, i32* %3916, align 4
  store i32 %3927, i32* %3917, align 4
  %3928 = add i32 %3885, 1
  br label %3929

; <label>:3929                                    ; preds = %3925, %3884
  %3930 = phi i32 [ %3885, %3884 ], [ %3928, %3925 ]
  %3931 = add nuw i32 %3886, 1
  %3932 = icmp eq i32 %3931, %3881
  br i1 %3932, label %3933, label %3884

; <label>:3933                                    ; preds = %3929
  br label %3934

; <label>:3934                                    ; preds = %3933, %3878
  %3935 = phi i32 [ %3879, %3878 ], [ %3930, %3933 ]
  %3936 = icmp eq i32 %3935, 1
  %3937 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  %3938 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  br i1 %3936, label %3939, label %3942

; <label>:3939                                    ; preds = %3934
  %3940 = load float, float* %3937, align 4
  %3941 = load float, float* %3938, align 4
  br label %3969

; <label>:3942                                    ; preds = %3934
  %3943 = load float, float* %3937, align 4
  %3944 = load float, float* %3938, align 4
  %3945 = fdiv fast float 1.000000e+00, %3944
  %3946 = fsub fast float %3943, %3945
  %3947 = icmp ugt i32 %3935, 1
  br i1 %3947, label %3948, label %3964

; <label>:3948                                    ; preds = %3942
  br label %3949

; <label>:3949                                    ; preds = %3949, %3948
  %3950 = phi float [ %3959, %3949 ], [ %3946, %3948 ]
  %3951 = phi float [ %3960, %3949 ], [ %3943, %3948 ]
  %3952 = phi i32 [ %3961, %3949 ], [ 1, %3948 ]
  %3953 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %3952
  %3954 = load float, float* %3953, align 4
  %3955 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3952
  %3956 = load float, float* %3955, align 4
  %3957 = fdiv fast float 1.000000e+00, %3956
  %3958 = fsub fast float %3954, %3957
  %3959 = call float @dx.op.binary.f32(i32 36, float %3950, float %3958)  ; FMin(a,b)
  %3960 = call float @dx.op.binary.f32(i32 35, float %3951, float %3954)  ; FMax(a,b)
  %3961 = add nuw i32 %3952, 1
  %3962 = icmp eq i32 %3961, %3935
  br i1 %3962, label %3963, label %3949

; <label>:3963                                    ; preds = %3949
  br label %3964

; <label>:3964                                    ; preds = %3963, %3942
  %3965 = phi float [ %3946, %3942 ], [ %3959, %3963 ]
  %3966 = phi float [ %3943, %3942 ], [ %3960, %3963 ]
  %3967 = fsub fast float %3966, %3965
  %3968 = fdiv fast float 1.000000e+00, %3967
  br label %3969

; <label>:3969                                    ; preds = %3964, %3939
  %3970 = phi float [ %3940, %3939 ], [ %3966, %3964 ]
  %3971 = phi float [ %3941, %3939 ], [ %3968, %3964 ]
  %3972 = fadd fast float %3673, %3970
  %3973 = fmul fast float %3972, %3971
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = fmul fast float %3974, 2.000000e+00
  %3976 = fsub fast float 1.000000e+00, %3975
  %3977 = fmul fast float %3811, %3811
  %3978 = fsub fast float %3812, %3977
  %3979 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3978)  ; FMax(a,b)
  %3980 = fdiv fast float 1.000000e+00, %3979
  %3981 = fmul fast float %3812, %3811
  %3982 = fsub fast float %3813, %3981
  %3983 = fsub fast float %3976, %3811
  %3984 = fmul fast float %3976, %3976
  %3985 = fsub fast float %3984, %3812
  %3986 = fmul fast float %3980, %3982
  %3987 = fmul fast float %3986, %3983
  %3988 = fsub fast float %3985, %3987
  %3989 = fmul fast float %3812, %3812
  %3990 = fsub fast float %3814, %3989
  %3991 = fmul fast float %3982, %3982
  %3992 = fmul fast float %3991, %3980
  %3993 = fsub fast float %3990, %3992
  %3994 = fdiv fast float %3988, %3993
  %3995 = fmul fast float %3994, %3982
  %3996 = fsub fast float %3983, %3995
  %3997 = fmul fast float %3996, %3980
  %3998 = fmul fast float %3997, %3811
  %3999 = fsub fast float 1.000000e+00, %3998
  %4000 = fmul fast float %3994, %3812
  %4001 = fsub fast float %3999, %4000
  %4002 = fmul fast float %3997, %3997
  %4003 = fmul fast float %3994, 4.000000e+00
  %4004 = fmul fast float %4003, %4001
  %4005 = fsub fast float %4002, %4004
  %4006 = call float @dx.op.unary.f32(i32 24, float %4005)  ; Sqrt(value)
  %4007 = fcmp fast oge float %3997, 0.000000e+00
  %4008 = fsub fast float -0.000000e+00, %4006
  %4009 = select i1 %4007, float %4008, float %4006
  %4010 = fsub fast float %4009, %3997
  %4011 = fdiv fast float %4010, %3994
  %4012 = fdiv fast float %4001, %4010
  %4013 = fmul fast float %4011, 5.000000e-01
  %4014 = fmul fast float %4012, 2.000000e+00
  %4015 = select i1 %4007, float %4013, float %4014
  %4016 = select i1 %4007, float %4014, float %4013
  %4017 = call float @dx.op.binary.f32(i32 35, float %4015, float %4016)  ; FMax(a,b)
  %4018 = call float @dx.op.binary.f32(i32 36, float %4015, float %4016)  ; FMin(a,b)
  %4019 = fcmp fast ogt float %3976, %4017
  %4020 = fsub fast float %3976, %4018
  %4021 = fsub fast float %3976, %4017
  %4022 = fsub fast float %4017, %4018
  %4023 = select i1 %4019, float %4021, float %4022
  %4024 = fmul float %4020, %4023
  %4025 = select i1 %4019, float %4018, float %3976
  %4026 = fcmp fast ogt float %3976, %4018
  %4027 = fmul fast float %4025, %4017
  %4028 = fadd fast float %4025, %4017
  %4029 = fmul fast float %4028, %3811
  %4030 = fadd fast float %4027, %3812
  %4031 = fsub fast float %4030, %4029
  %4032 = fdiv fast float %4031, %4024
  %4033 = select i1 %4026, float %4032, float 0.000000e+00
  %4034 = fsub fast float 1.000000e+00, %4033
  %4035 = select i1 %4019, float %4034, float %4033
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = extractvalue %dx.types.CBufRet.f32 %3796, 3
  %4038 = fmul fast float %4037, %4036
  %4039 = fsub fast float 1.000000e+00, %4038
  br label %4040

; <label>:4040                                    ; preds = %3969, %3681, %3646, %3642, %3608
  %4041 = phi float [ 1.000000e+00, %3608 ], [ %4039, %3969 ], [ 1.000000e+00, %3646 ], [ 1.000000e+00, %3681 ], [ 1.000000e+00, %3642 ]
  %4042 = fcmp fast ogt float %3638, 0.000000e+00
  br i1 %4042, label %4043, label %4049, !dx.controlflow.hints !123

; <label>:4043                                    ; preds = %4040
  %4044 = fadd fast float %3551, %3525
  %4045 = call float @dx.op.binary.f32(i32 35, float %4044, float 0.000000e+00)  ; FMax(a,b)
  %4046 = fadd fast float %4045, 0x3F10000000000000
  %4047 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %60, float %3540, float %3541, float undef, float undef, i32 0, i32 0, i32 undef, float %4046)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  br label %4049

; <label>:4049                                    ; preds = %4043, %4040
  %4050 = phi float [ %4048, %4043 ], [ 1.000000e+00, %4040 ]
  %4051 = fcmp fast ogt float %3636, 0.000000e+00
  br i1 %4051, label %4052, label %4058, !dx.controlflow.hints !124

; <label>:4052                                    ; preds = %4049
  %4053 = fadd fast float %3581, %3525
  %4054 = call float @dx.op.binary.f32(i32 35, float %4053, float 0.000000e+00)  ; FMax(a,b)
  %4055 = fadd fast float %4054, 0x3F10000000000000
  %4056 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %60, float %3532, float %3533, float undef, float undef, i32 0, i32 0, i32 undef, float %4055)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  br label %4058

; <label>:4058                                    ; preds = %4052, %4049
  %4059 = phi float [ %4057, %4052 ], [ 1.000000e+00, %4049 ]
  %4060 = fcmp fast ogt float %3635, 0.000000e+00
  br i1 %4060, label %4061, label %4068, !dx.controlflow.hints !125

; <label>:4061                                    ; preds = %4058
  %4062 = extractvalue %dx.types.CBufRet.f32 %3550, 0
  %4063 = fadd fast float %4062, %3525
  %4064 = call float @dx.op.binary.f32(i32 35, float %4063, float 0.000000e+00)  ; FMax(a,b)
  %4065 = fadd fast float %4064, 0x3F10000000000000
  %4066 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %60, float %3517, float %3521, float undef, float undef, i32 0, i32 0, i32 undef, float %4065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  br label %4068

; <label>:4068                                    ; preds = %4061, %4058
  %4069 = phi float [ %4067, %4061 ], [ 1.000000e+00, %4058 ]
  %4070 = fsub fast float %4050, %4041
  %4071 = fmul fast float %4070, %3579
  %4072 = fadd fast float %4071, %4041
  %4073 = fsub fast float %4059, %4072
  %4074 = fmul fast float %4073, %3609
  %4075 = fadd fast float %4074, %4072
  %4076 = fsub fast float %4069, %4075
  %4077 = fmul fast float %4076, %3635
  %4078 = fadd fast float %4077, %4075
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 2
  %4081 = fcmp fast ogt float %4080, 0.000000e+00
  br i1 %4081, label %4082, label %4119, !dx.controlflow.hints !126

; <label>:4082                                    ; preds = %4068
  %4083 = fcmp fast ugt float %4080, 0.000000e+00
  br i1 %4083, label %4084, label %4116

; <label>:4084                                    ; preds = %4082
  %4085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4085, 0
  %4087 = extractvalue %dx.types.CBufRet.f32 %4085, 1
  %4088 = extractvalue %dx.types.CBufRet.f32 %4085, 2
  %4089 = extractvalue %dx.types.CBufRet.f32 %4085, 3
  %4090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4091 = extractvalue %dx.types.CBufRet.f32 %4090, 0
  %4092 = extractvalue %dx.types.CBufRet.f32 %4090, 1
  %4093 = extractvalue %dx.types.CBufRet.f32 %4090, 2
  %4094 = extractvalue %dx.types.CBufRet.f32 %4090, 3
  %4095 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4096 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4097 = extractvalue %dx.types.CBufRet.f32 %2121, 2
  %4098 = fadd fast float %2122, %3494
  %4099 = fadd fast float %2123, %3495
  %4100 = fadd fast float %4097, %3496
  %4101 = fmul fast float %4098, %4086
  %4102 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4099, float %4101)  ; FMad(a,b,c)
  %4103 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4100, float %4102)  ; FMad(a,b,c)
  %4104 = fadd fast float %4103, %4089
  %4105 = fmul fast float %4098, %4091
  %4106 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4099, float %4105)  ; FMad(a,b,c)
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4100, float %4106)  ; FMad(a,b,c)
  %4108 = fadd fast float %4107, %4094
  %4109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %55, float %4104, float %4108, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = fmul fast float %4110, %4096
  %4112 = fadd fast float %4111, %4095
  %4113 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4114 = fmul fast float %4113, %4080
  %4115 = fsub fast float 1.000000e+00, %4114
  br label %4116

; <label>:4116                                    ; preds = %4084, %4082
  %4117 = phi float [ %4115, %4084 ], [ 1.000000e+00, %4082 ]
  %4118 = fmul fast float %4117, %4078
  br label %4119

; <label>:4119                                    ; preds = %4116, %4068, %3474
  %4120 = phi float [ 1.000000e+00, %3474 ], [ %4118, %4116 ], [ %4078, %4068 ]
  %4121 = call float @dx.op.binary.f32(i32 36, float %4120, float %4120)  ; FMin(a,b)
  %4122 = call float @dx.op.binary.f32(i32 36, float %4120, float %4121)  ; FMin(a,b)
  %4123 = fcmp fast ogt float %4122, 0.000000e+00
  br i1 %4123, label %4124, label %4281, !dx.controlflow.hints !127

; <label>:4124                                    ; preds = %4119
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.CBufRet.f32 %4125, 2
  %4129 = extractvalue %dx.types.CBufRet.f32 %4125, 3
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.CBufRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.CBufRet.f32 %4130, 2
  %4134 = extractvalue %dx.types.CBufRet.f32 %4130, 3
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4138 = extractvalue %dx.types.CBufRet.f32 %4135, 2
  %4139 = extractvalue %dx.types.CBufRet.f32 %4135, 3
  %4140 = fmul fast float %4126, %3494
  %4141 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %4127, float %4140)  ; FMad(a,b,c)
  %4142 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %4128, float %4141)  ; FMad(a,b,c)
  %4143 = fadd fast float %4142, %4129
  %4144 = fmul fast float %4131, %3494
  %4145 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %4132, float %4144)  ; FMad(a,b,c)
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %4133, float %4145)  ; FMad(a,b,c)
  %4147 = fadd fast float %4146, %4134
  %4148 = fmul fast float %4136, %3494
  %4149 = call float @dx.op.tertiary.f32(i32 46, float %3495, float %4137, float %4148)  ; FMad(a,b,c)
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %3496, float %4138, float %4149)  ; FMad(a,b,c)
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.CBufRet.f32 %4151, 3
  %4155 = fmul fast float %4154, %4143
  %4156 = fmul fast float %4154, %4147
  %4157 = fadd fast float %4155, %4152
  %4158 = fadd fast float %4156, %4153
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4162 = fsub fast float %4157, %4160
  %4163 = fsub fast float %4158, %4161
  %4164 = fcmp fast olt float %4162, 0.000000e+00
  %4165 = fcmp fast olt float %4163, 0.000000e+00
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4170 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4171 = select i1 %4164, float %4167, float %4169
  %4172 = select i1 %4165, float %4168, float %4170
  %4173 = fmul fast float %4171, %4162
  %4174 = fmul fast float %4172, %4163
  %4175 = call float @dx.op.unary.f32(i32 6, float %4173)  ; FAbs(value)
  %4176 = call float @dx.op.unary.f32(i32 6, float %4174)  ; FAbs(value)
  %4177 = extractvalue %dx.types.CBufRet.f32 %3489, 0
  %4178 = call float @dx.op.binary.f32(i32 35, float %4175, float %4176)  ; FMax(a,b)
  %4179 = fsub fast float %4177, %4178
  %4180 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4181 = fcmp fast ogt float %4180, 0.000000e+00
  br i1 %4181, label %4182, label %4223, !dx.controlflow.hints !128

; <label>:4182                                    ; preds = %4124
  %4183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %58, float %4157, float %4158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4184 = extractvalue %dx.types.ResRet.f32 %4183, 1
  %4185 = fcmp fast ogt float %4184, 0.000000e+00
  br i1 %4185, label %4186, label %4218

; <label>:4186                                    ; preds = %4182
  %4187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %58, float %4157, float %4158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = extractvalue %dx.types.ResRet.f32 %4187, 1
  %4190 = extractvalue %dx.types.ResRet.f32 %4187, 2
  %4191 = extractvalue %dx.types.ResRet.f32 %4187, 3
  %4192 = fsub fast float 1.000000e+00, %4139
  %4193 = fsub fast float %4192, %4150
  %4194 = fmul fast float %4193, 0x400921FB60000000
  %4195 = fadd fast float %4194, 0x3FF921FB60000000
  %4196 = call float @dx.op.unary.f32(i32 13, float %4195)  ; Sin(value)
  %4197 = fadd fast float %4196, -1.000000e+00
  %4198 = fmul fast float %4197, 0x3FD45F3060000000
  %4199 = fmul fast float %4193, 0x401921FB60000000
  %4200 = fadd fast float %4199, 0x400921FB60000000
  %4201 = call float @dx.op.unary.f32(i32 13, float %4200)  ; Sin(value)
  %4202 = fadd fast float %4201, 0x3E7777A5C0000000
  %4203 = fmul fast float %4202, 0x3FC45F3060000000
  %4204 = fmul fast float %4193, 0x4022D97C80000000
  %4205 = fadd fast float %4204, 0x4012D97C80000000
  %4206 = call float @dx.op.unary.f32(i32 13, float %4205)  ; Sin(value)
  %4207 = fadd fast float %4206, 1.000000e+00
  %4208 = fmul fast float %4207, 0x3FBB2995E0000000
  %4209 = fmul fast float %4193, 0x402921FB60000000
  %4210 = fadd fast float %4209, 0x401921FB60000000
  %4211 = call float @dx.op.unary.f32(i32 13, float %4210)  ; Sin(value)
  %4212 = fadd fast float %4211, 0xBE8777A5C0000000
  %4213 = fmul fast float %4212, 0x3FB45F3060000000
  %4214 = call float @dx.op.dot4.f32(i32 56, float %4188, float %4189, float %4190, float %4191, float %4198, float %4203, float %4208, float %4213)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4215 = fmul fast float %4214, 0xBFF7154760000000
  %4216 = call float @dx.op.unary.f32(i32 21, float %4215)  ; Exp(value)
  %4217 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  br label %4218

; <label>:4218                                    ; preds = %4186, %4182
  %4219 = phi float [ %4217, %4186 ], [ 1.000000e+00, %4182 ]
  %4220 = fadd fast float %4219, -1.000000e+00
  %4221 = fmul fast float %4220, %4180
  %4222 = fadd fast float %4221, 1.000000e+00
  br label %4223

; <label>:4223                                    ; preds = %4218, %4124
  %4224 = phi float [ %4222, %4218 ], [ 1.000000e+00, %4124 ]
  %4225 = fmul fast float %4224, %4120
  %4226 = extractvalue %dx.types.CBufRet.f32 %2121, 2
  %4227 = fadd fast float %2122, %137
  %4228 = fadd fast float %2123, %138
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4231 = fsub fast float -0.000000e+00, %4227
  %4232 = fsub fast float -0.000000e+00, %4228
  %4233 = fsub fast float %2105, %4226
  %4234 = fadd fast float %4233, %4230
  %4235 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4231, float %4232, float %4234)  ; Dot3(ax,ay,az,bx,by,bz)
  %4236 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3475, float %3476, float %3477)  ; Dot3(ax,ay,az,bx,by,bz)
  %4237 = fdiv fast float 1.000000e+00, %4236
  %4238 = fmul fast float %4237, %4235
  %4239 = fmul fast float %3475, %4238
  %4240 = fmul fast float %3476, %4238
  %4241 = fadd fast float %4239, %4227
  %4242 = fadd fast float %4240, %4228
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4245 = extractvalue %dx.types.CBufRet.f32 %4243, 1
  %4246 = fsub fast float %4241, %4244
  %4247 = fsub fast float %4242, %4245
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 2
  %4250 = extractvalue %dx.types.CBufRet.f32 %4248, 3
  %4251 = fmul fast float %4246, %4249
  %4252 = fmul fast float %4247, %4250
  %4253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.i32 %4253, 3
  %4255 = icmp eq i32 %4254, 0
  br i1 %4255, label %4261, label %4256

; <label>:4256                                    ; preds = %4223
  %4257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %57, float %4251, float %4252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = extractvalue %dx.types.ResRet.f32 %4257, 1
  %4260 = extractvalue %dx.types.ResRet.f32 %4257, 2
  br label %4266

; <label>:4261                                    ; preds = %4223
  %4262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %58, float %4251, float %4252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.ResRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4262, 2
  br label %4266

; <label>:4266                                    ; preds = %4261, %4256
  %4267 = phi float [ %4258, %4256 ], [ %4263, %4261 ]
  %4268 = phi float [ %4259, %4256 ], [ %4264, %4261 ]
  %4269 = phi float [ %4260, %4256 ], [ %4265, %4261 ]
  %4270 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4271 = fmul fast float %4270, %4267
  %4272 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4273 = fsub fast float %4238, %4272
  %4274 = fsub fast float %4273, %4271
  %4275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4274)  ; FMax(a,b)
  %4276 = fmul fast float %4275, %4268
  %4277 = call float @dx.op.binary.f32(i32 36, float %4269, float %4276)  ; FMin(a,b)
  %4278 = fmul fast float %4277, 0xBFF7154760000000
  %4279 = call float @dx.op.unary.f32(i32 21, float %4278)  ; Exp(value)
  %4280 = fmul fast float %4225, %4279
  br label %4281

; <label>:4281                                    ; preds = %4266, %4119
  %4282 = phi float [ %4280, %4266 ], [ %4120, %4119 ]
  %4283 = call float @dx.op.binary.f32(i32 36, float %4282, float %4282)  ; FMin(a,b)
  %4284 = call float @dx.op.binary.f32(i32 36, float %4282, float %4283)  ; FMin(a,b)
  %4285 = fcmp fast ogt float %4284, 0.000000e+00
  br i1 %4285, label %4286, label %4537, !dx.controlflow.hints !129

; <label>:4286                                    ; preds = %4281
  %4287 = fmul fast float %4282, %3486
  %4288 = fmul fast float %4282, %3487
  %4289 = fmul fast float %4282, %3488
  %4290 = fsub fast float %139, %1893
  %4291 = fcmp fast ogt float %4290, 0.000000e+00
  %4292 = fmul fast float %3475, 5.120000e+02
  %4293 = fmul fast float %3476, 5.120000e+02
  %4294 = fmul fast float %3477, 5.120000e+02
  %4295 = fadd fast float %4294, %139
  %4296 = fsub fast float %1893, %4295
  %4297 = fmul fast float %4296, 2.000000e+00
  %4298 = fadd fast float %4297, %4295
  %4299 = select i1 %4291, float %4298, float %4295
  %4300 = fsub fast float %4299, %139
  %4301 = call float @dx.op.dot3.f32(i32 55, float %4292, float %4293, float %4300, float %4292, float %4293, float %4300)  ; Dot3(ax,ay,az,bx,by,bz)
  %4302 = call float @dx.op.unary.f32(i32 25, float %4301)  ; Rsqrt(value)
  %4303 = fmul fast float %4302, %4292
  %4304 = fmul fast float %4302, %4293
  %4305 = fmul fast float %4302, %4300
  %4306 = fsub fast float %1893, %139
  %4307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4306)  ; Dot3(ax,ay,az,bx,by,bz)
  %4308 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4303, float %4304, float %4305)  ; Dot3(ax,ay,az,bx,by,bz)
  %4309 = fdiv fast float 1.000000e+00, %4308
  %4310 = fmul fast float %4309, %4307
  %4311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4290, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4312 = fcmp fast ogt float %4311, 0.000000e+00
  %4313 = fcmp fast olt float %4311, 0.000000e+00
  %4314 = zext i1 %4312 to i32
  %4315 = zext i1 %4313 to i32
  %4316 = sub nsw i32 %4314, %4315
  %4317 = sitofp i32 %4316 to float
  %4318 = fsub fast float %4299, %1893
  %4319 = call float @dx.op.dot3.f32(i32 55, float %4292, float %4293, float %4318, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4320 = fcmp fast ogt float %4319, 0.000000e+00
  %4321 = fcmp fast olt float %4319, 0.000000e+00
  %4322 = zext i1 %4320 to i32
  %4323 = zext i1 %4321 to i32
  %4324 = sub nsw i32 %4322, %4323
  %4325 = sitofp i32 %4324 to float
  %4326 = fcmp fast une float %4317, %4325
  br i1 %4326, label %4327, label %4337

; <label>:4327                                    ; preds = %4286
  %4328 = fmul fast float %4310, %4305
  %4329 = fmul fast float %4310, %4304
  %4330 = fmul fast float %4310, %4303
  %4331 = fmul fast float %4330, %4330
  %4332 = fmul fast float %4329, %4329
  %4333 = fadd fast float %4331, %4332
  %4334 = fmul fast float %4328, %4328
  %4335 = fadd fast float %4333, %4334
  %4336 = call float @dx.op.unary.f32(i32 24, float %4335)  ; Sqrt(value)
  br label %4347

; <label>:4337                                    ; preds = %4286
  %4338 = icmp slt i32 %4316, 0
  br i1 %4338, label %4339, label %4347

; <label>:4339                                    ; preds = %4337
  %4340 = fsub fast float %139, %4299
  %4341 = fmul fast float %4292, %4292
  %4342 = fmul fast float %4293, %4293
  %4343 = fadd fast float %4341, %4342
  %4344 = fmul fast float %4340, %4340
  %4345 = fadd fast float %4343, %4344
  %4346 = call float @dx.op.unary.f32(i32 24, float %4345)  ; Sqrt(value)
  br label %4347

; <label>:4347                                    ; preds = %4339, %4337, %4327
  %4348 = phi float [ %4336, %4327 ], [ %4346, %4339 ], [ 0.000000e+00, %4337 ]
  %4349 = fsub fast float -0.000000e+00, %4348
  %4350 = select i1 %4291, float -0.000000e+00, float %4349
  %4351 = fmul fast float %1894, 0x3FF7154760000000
  %4352 = fmul fast float %4351, %4350
  %4353 = fmul fast float %1895, 0x3FF7154760000000
  %4354 = fmul fast float %4353, %4350
  %4355 = fmul fast float %1896, 0x3FF7154760000000
  %4356 = fmul fast float %4355, %4350
  %4357 = call float @dx.op.unary.f32(i32 21, float %4352)  ; Exp(value)
  %4358 = call float @dx.op.unary.f32(i32 21, float %4354)  ; Exp(value)
  %4359 = call float @dx.op.unary.f32(i32 21, float %4356)  ; Exp(value)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4362 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4363 = fmul fast float %4287, %4360
  %4364 = fmul fast float %4288, %4361
  %4365 = fmul fast float %4289, %4362
  %4366 = fsub fast float %3475, %2093
  %4367 = fsub fast float %3476, %2092
  %4368 = fsub fast float %3477, %2091
  %4369 = call float @dx.op.dot3.f32(i32 55, float %4366, float %4367, float %4368, float %4366, float %4367, float %4368)  ; Dot3(ax,ay,az,bx,by,bz)
  %4370 = call float @dx.op.unary.f32(i32 25, float %4369)  ; Rsqrt(value)
  %4371 = fmul fast float %4370, %4366
  %4372 = fmul fast float %4370, %4367
  %4373 = fmul fast float %4370, %4368
  %4374 = call float @dx.op.dot3.f32(i32 55, float %3475, float %3476, float %3477, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %4375 = call float @dx.op.dot3.f32(i32 55, float %2090, float %2089, float %2088, float %4371, float %4372, float %4373)  ; Dot3(ax,ay,az,bx,by,bz)
  %4376 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4377 = fmul fast float %4376, %4376
  %4378 = fmul fast float %4377, %3470
  %4379 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4380 = fmul fast float %4379, %4376
  %4381 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float %4371, float %4372, float %4373)  ; Dot3(ax,ay,az,bx,by,bz)
  %4382 = fmul fast float %4381, %4381
  %4383 = call float @dx.op.unary.f32(i32 6, float %4374)  ; FAbs(value)
  %4384 = fsub fast float 1.000000e+00, %2103
  %4385 = call float @dx.op.binary.f32(i32 35, float %4384, float 0x3F847AE140000000)  ; FMax(a,b)
  %4386 = fmul fast float %4385, %4385
  %4387 = fmul fast float %4386, %4386
  %4388 = fsub fast float 1.000000e+00, %4387
  %4389 = fmul fast float %2108, %2108
  %4390 = fmul fast float %4389, %4388
  %4391 = fadd fast float %4390, %4387
  %4392 = bitcast float %4391 to i32
  %4393 = ashr i32 %4392, 1
  %4394 = add nsw i32 %4393, 532487669
  %4395 = bitcast i32 %4394 to float
  %4396 = fadd fast float %4395, %2108
  %4397 = fmul fast float %4387, %4382
  %4398 = fsub fast float 1.000000e+00, %4382
  %4399 = fadd fast float %4398, %4397
  %4400 = fmul fast float %4383, %4383
  %4401 = fmul fast float %4400, %4388
  %4402 = fadd fast float %4401, %4387
  %4403 = bitcast float %4402 to i32
  %4404 = ashr i32 %4403, 1
  %4405 = add nsw i32 %4404, 532487669
  %4406 = bitcast i32 %4405 to float
  %4407 = fadd fast float %4406, %4383
  %4408 = fmul fast float %4399, %4399
  %4409 = fmul fast float %4408, %4396
  %4410 = fmul fast float %4409, %4407
  %4411 = fdiv fast float 0x3FF0A00000000000, %4410
  %4412 = fmul fast float %4411, %4387
  %4413 = call float @dx.op.unary.f32(i32 6, float %4375)  ; FAbs(value)
  %4414 = fsub fast float 1.000000e+00, %4413
  %4415 = bitcast float %4414 to i32
  %4416 = sitofp i32 %4415 to float
  %4417 = fmul fast float %4416, 5.000000e+00
  %4418 = fadd fast float %4417, 0xC1EFBF8940000000
  %4419 = fptosi float %4418 to i32
  %4420 = bitcast i32 %4419 to float
  %4421 = fsub fast float 1.000000e+00, %2094
  %4422 = fsub fast float 1.000000e+00, %2095
  %4423 = fsub fast float 1.000000e+00, %2106
  %4424 = fmul fast float %4420, %4421
  %4425 = fmul fast float %4420, %4422
  %4426 = fmul fast float %4420, %4423
  %4427 = fadd fast float %4424, %2094
  %4428 = fadd fast float %4425, %2095
  %4429 = fadd fast float %4426, %2106
  br i1 %3385, label %4430, label %4453

; <label>:4430                                    ; preds = %4347
  %4431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1471, float %4413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = extractvalue %dx.types.ResRet.f32 %4431, 1
  %4434 = extractvalue %dx.types.ResRet.f32 %4431, 2
  %4435 = fadd fast float %4432, -5.000000e-01
  %4436 = fadd fast float %4433, -5.000000e-01
  %4437 = fadd fast float %4434, -5.000000e-01
  %4438 = fmul fast float %2094, 4.000000e+00
  %4439 = fmul fast float %4438, %4421
  %4440 = fmul fast float %4439, %4435
  %4441 = fmul fast float %2095, 4.000000e+00
  %4442 = fmul fast float %4441, %4422
  %4443 = fmul fast float %4442, %4436
  %4444 = fmul fast float %2106, 4.000000e+00
  %4445 = fmul fast float %4444, %4423
  %4446 = fmul fast float %4445, %4437
  %4447 = fadd fast float %4440, %4427
  %4448 = fadd fast float %4443, %4428
  %4449 = fadd fast float %4446, %4429
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4451 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4452 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  br label %4453

; <label>:4453                                    ; preds = %4430, %4347
  %4454 = phi float [ %4450, %4430 ], [ %4427, %4347 ]
  %4455 = phi float [ %4451, %4430 ], [ %4428, %4347 ]
  %4456 = phi float [ %4452, %4430 ], [ %4429, %4347 ]
  %4457 = fmul fast float %4374, 9.843750e-01
  %4458 = fadd fast float %4457, 7.812500e-03
  %4459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %4458, float %3375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4460 = extractvalue %dx.types.ResRet.f32 %4459, 2
  %4461 = extractvalue %dx.types.ResRet.f32 %4459, 3
  %4462 = fmul fast float %4460, %2094
  %4463 = fmul fast float %4460, %2095
  %4464 = fmul fast float %4460, %2106
  %4465 = fadd fast float %4462, %4461
  %4466 = fadd fast float %4463, %4461
  %4467 = fadd fast float %4464, %4461
  br i1 %3385, label %4468, label %4491

; <label>:4468                                    ; preds = %4453
  %4469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1471, float %4374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4470 = extractvalue %dx.types.ResRet.f32 %4469, 0
  %4471 = extractvalue %dx.types.ResRet.f32 %4469, 1
  %4472 = extractvalue %dx.types.ResRet.f32 %4469, 2
  %4473 = fadd fast float %4470, -5.000000e-01
  %4474 = fadd fast float %4471, -5.000000e-01
  %4475 = fadd fast float %4472, -5.000000e-01
  %4476 = fmul fast float %2094, 4.000000e+00
  %4477 = fmul fast float %4476, %4421
  %4478 = fmul fast float %4477, %4473
  %4479 = fmul fast float %2095, 4.000000e+00
  %4480 = fmul fast float %4479, %4422
  %4481 = fmul fast float %4480, %4474
  %4482 = fmul fast float %2106, 4.000000e+00
  %4483 = fmul fast float %4482, %4423
  %4484 = fmul fast float %4483, %4475
  %4485 = fadd fast float %4478, %4465
  %4486 = fadd fast float %4481, %4466
  %4487 = fadd fast float %4484, %4467
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4489 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4490 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  br label %4491

; <label>:4491                                    ; preds = %4468, %4453
  %4492 = phi float [ %4488, %4468 ], [ %4465, %4453 ]
  %4493 = phi float [ %4489, %4468 ], [ %4466, %4453 ]
  %4494 = phi float [ %4490, %4468 ], [ %4467, %4453 ]
  %4495 = call float @dx.op.binary.f32(i32 35, float %4493, float %4494)  ; FMax(a,b)
  %4496 = call float @dx.op.binary.f32(i32 35, float %4492, float %4495)  ; FMax(a,b)
  %4497 = fsub fast float 1.000000e+00, %4496
  %4498 = fmul fast float %4454, %4412
  %4499 = fmul fast float %4455, %4412
  %4500 = fmul fast float %4456, %4412
  %4501 = fsub fast float 1.000000e+00, %4375
  %4502 = bitcast float %4501 to i32
  %4503 = sitofp i32 %4502 to float
  %4504 = fmul fast float %4503, 5.000000e+00
  %4505 = fadd fast float %4504, 0xC1EFBF8940000000
  %4506 = fptosi float %4505 to i32
  %4507 = bitcast i32 %4506 to float
  %4508 = fmul fast float %4507, %1470
  %4509 = fmul fast float %4497, %4508
  %4510 = fmul fast float %4509, %3435
  %4511 = fmul fast float %4509, %3436
  %4512 = fmul fast float %4509, %3437
  %4513 = fadd fast float %4510, %4498
  %4514 = fadd fast float %4511, %4499
  %4515 = fadd fast float %4512, %4500
  %4516 = fmul fast float %4380, %4363
  %4517 = fmul fast float %4516, %4497
  %4518 = fmul fast float %4380, %4364
  %4519 = fmul fast float %4518, %4497
  %4520 = fmul fast float %4380, %4365
  %4521 = fmul fast float %4520, %4497
  %4522 = fmul fast float %4516, %4513
  %4523 = fmul fast float %4518, %4514
  %4524 = fmul fast float %4520, %4515
  %4525 = fadd fast float %4517, %3419
  %4526 = fmul fast float %4525, %1491
  %4527 = fadd fast float %4519, %3420
  %4528 = fmul fast float %4527, %1491
  %4529 = fadd fast float %4521, %3421
  %4530 = fmul fast float %4529, %1491
  %4531 = fadd fast float %4522, %3462
  %4532 = fmul fast float %4531, %1491
  %4533 = fadd fast float %4523, %3465
  %4534 = fmul fast float %4533, %1491
  %4535 = fadd fast float %4524, %3468
  %4536 = fmul fast float %4535, %1491
  br label %4537

; <label>:4537                                    ; preds = %4491, %4281, %3412
  %4538 = phi float [ %3463, %3412 ], [ %3463, %4281 ], [ %4532, %4491 ]
  %4539 = phi float [ %3466, %3412 ], [ %3466, %4281 ], [ %4534, %4491 ]
  %4540 = phi float [ %3469, %3412 ], [ %3469, %4281 ], [ %4536, %4491 ]
  %4541 = phi float [ %3458, %3412 ], [ %3458, %4281 ], [ %4526, %4491 ]
  %4542 = phi float [ %3459, %3412 ], [ %3459, %4281 ], [ %4528, %4491 ]
  %4543 = phi float [ %3460, %3412 ], [ %3460, %4281 ], [ %4530, %4491 ]
  %4544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.i32 %4544, 0
  %4546 = icmp eq i32 %4545, 0
  br i1 %4546, label %5167, label %4547

; <label>:4547                                    ; preds = %4537
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 2
  %4550 = extractvalue %dx.types.CBufRet.f32 %4548, 3
  %4551 = fmul fast float %4549, %90
  %4552 = fmul fast float %4550, %91
  %4553 = fptoui float %4551 to i32
  %4554 = fptoui float %4552 to i32
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 0
  %4557 = extractvalue %dx.types.CBufRet.f32 %4555, 2
  %4558 = extractvalue %dx.types.CBufRet.f32 %4555, 3
  %4559 = fadd fast float %81, -4.000000e+00
  %4560 = call float @dx.op.binary.f32(i32 35, float %4559, float 0.000000e+00)  ; FMax(a,b)
  %4561 = fadd fast float %4560, %4556
  %4562 = fmul fast float %4561, %4557
  %4563 = call float @dx.op.unary.f32(i32 23, float %4562)  ; Log(value)
  %4564 = fmul fast float %4563, %4558
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4567 = fmul fast float %4564, %4566
  %4568 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.i32 %4569, 1
  %4571 = add i32 %4570, -1
  %4572 = uitofp i32 %4570 to float
  %4573 = fmul fast float %4572, %4568
  %4574 = fptoui float %4573 to i32
  %4575 = call i32 @dx.op.binary.i32(i32 40, i32 %4574, i32 %4571)  ; UMin(a,b)
  %4576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.i32 %4576, 2
  %4578 = extractvalue %dx.types.CBufRet.i32 %4576, 3
  %4579 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4554, i32 %4577, i32 %4553)  ; UMad(a,b,c)
  %4580 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4575, i32 %4578, i32 %4579)  ; UMad(a,b,c)
  %4581 = add nsw i32 %4545, -1
  %4582 = call i32 @dx.op.binary.i32(i32 37, i32 %4581, i32 0)  ; IMax(a,b)
  %4583 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %4584 = fptoui float %4583 to i32
  %4585 = lshr i32 %4584, 5
  %4586 = call i32 @dx.op.binary.i32(i32 40, i32 %4585, i32 8191)  ; UMin(a,b)
  %4587 = shl i32 %4586, 2
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = lshr i32 %4589, 16
  %4591 = and i32 %4589, 65535
  %4592 = lshr i32 %4589, 21
  %4593 = lshr i32 %4591, 5
  %4594 = call i32 @dx.op.binary.i32(i32 40, i32 %4593, i32 %4582)  ; UMin(a,b)
  %4595 = icmp ugt i32 %4592, %4594
  br i1 %4595, label %5167, label %4596

; <label>:4596                                    ; preds = %4547
  br label %4597

; <label>:4597                                    ; preds = %5157, %4596
  %4598 = phi i32 [ %5164, %5157 ], [ %4592, %4596 ]
  %4599 = phi float [ %5158, %5157 ], [ %4538, %4596 ]
  %4600 = phi float [ %5159, %5157 ], [ %4539, %4596 ]
  %4601 = phi float [ %5160, %5157 ], [ %4540, %4596 ]
  %4602 = phi float [ %5161, %5157 ], [ %4541, %4596 ]
  %4603 = phi float [ %5162, %5157 ], [ %4542, %4596 ]
  %4604 = phi float [ %5163, %5157 ], [ %4543, %4596 ]
  %4605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.i32 %4605, 0
  %4607 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4580, i32 %4606, i32 %4598)  ; UMad(a,b,c)
  %4608 = shl i32 %4607, 2
  %4609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.i32 %4609, 0
  %4611 = shl i32 %4598, 5
  %4612 = sub nsw i32 %4590, %4611
  %4613 = call i32 @dx.op.binary.i32(i32 37, i32 %4612, i32 0)  ; IMax(a,b)
  %4614 = call i32 @dx.op.binary.i32(i32 38, i32 %4613, i32 31)  ; IMin(a,b)
  %4615 = sub nsw i32 1, %4590
  %4616 = add nsw i32 %4615, %4591
  %4617 = call i32 @dx.op.binary.i32(i32 37, i32 %4616, i32 0)  ; IMax(a,b)
  %4618 = call i32 @dx.op.binary.i32(i32 38, i32 %4617, i32 32)  ; IMin(a,b)
  %4619 = and i32 %4618, 31
  %4620 = shl i32 -1, %4619
  %4621 = xor i32 %4620, -1
  %4622 = and i32 %4614, 31
  %4623 = shl i32 %4621, %4622
  %4624 = icmp eq i32 %4618, 32
  %4625 = select i1 %4624, i32 -1, i32 %4623
  %4626 = and i32 %4625, %4610
  %4627 = icmp eq i32 %4626, 0
  br i1 %4627, label %5157, label %4628

; <label>:4628                                    ; preds = %4597
  br label %4629

; <label>:4629                                    ; preds = %4763, %4628
  %4630 = phi i32 [ %4641, %4763 ], [ %4626, %4628 ]
  %4631 = phi float [ %4764, %4763 ], [ %4599, %4628 ]
  %4632 = phi float [ %4765, %4763 ], [ %4600, %4628 ]
  %4633 = phi float [ %4766, %4763 ], [ %4601, %4628 ]
  %4634 = phi float [ %4767, %4763 ], [ %4602, %4628 ]
  %4635 = phi float [ %4768, %4763 ], [ %4603, %4628 ]
  %4636 = phi float [ %4769, %4763 ], [ %4604, %4628 ]
  %4637 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4630)  ; FirstbitLo(value)
  %4638 = add i32 %4637, %4611
  %4639 = and i32 %4637, 31
  %4640 = shl i32 1, %4639
  %4641 = xor i32 %4640, %4630
  %4642 = mul i32 %4638, 112
  %4643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4642, i32 undef)  ; BufferLoad(srv,index,wot)
  %4644 = extractvalue %dx.types.ResRet.f32 %4643, 0
  %4645 = extractvalue %dx.types.ResRet.f32 %4643, 1
  %4646 = extractvalue %dx.types.ResRet.f32 %4643, 2
  %4647 = or i32 %4642, 12
  %4648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4649 = extractvalue %dx.types.ResRet.f32 %4648, 0
  %4650 = add i32 %4642, 16
  %4651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4650, i32 undef)  ; BufferLoad(srv,index,wot)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  %4653 = extractvalue %dx.types.ResRet.f32 %4651, 1
  %4654 = extractvalue %dx.types.ResRet.f32 %4651, 2
  %4655 = add i32 %4642, 28
  %4656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4655, i32 undef)  ; BufferLoad(srv,index,wot)
  %4657 = extractvalue %dx.types.ResRet.i32 %4656, 0
  %4658 = add i32 %4642, 44
  %4659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4658, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = add i32 %4642, 48
  %4662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.ResRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4662, 2
  %4666 = extractvalue %dx.types.ResRet.f32 %4662, 3
  %4667 = add i32 %4642, 64
  %4668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4667, i32 undef)  ; BufferLoad(srv,index,wot)
  %4669 = extractvalue %dx.types.ResRet.f32 %4668, 0
  %4670 = extractvalue %dx.types.ResRet.f32 %4668, 1
  %4671 = extractvalue %dx.types.ResRet.f32 %4668, 2
  %4672 = extractvalue %dx.types.ResRet.f32 %4668, 3
  %4673 = add i32 %4642, 80
  %4674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4673, i32 undef)  ; BufferLoad(srv,index,wot)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 1
  %4676 = extractvalue %dx.types.ResRet.f32 %4674, 2
  %4677 = add i32 %4642, 92
  %4678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4677, i32 undef)  ; BufferLoad(srv,index,wot)
  %4679 = extractvalue %dx.types.ResRet.i32 %4678, 0
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = select i1 %228, float %4675, float %4644
  %4682 = select i1 %228, float %4680, float %4645
  %4683 = select i1 %228, float %4676, float %4646
  %4684 = and i32 %4679, 65535
  %4685 = uitofp i32 %4684 to float
  %4686 = lshr i32 %4679, 16
  %4687 = uitofp i32 %4686 to float
  %4688 = and i32 %4657, 65535
  %4689 = and i32 %4657, 50331648
  %4690 = icmp eq i32 %4689, 33554432
  %4691 = fsub fast float %4663, %137
  %4692 = fsub fast float %4664, %138
  %4693 = fsub fast float %4665, %139
  %4694 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %4691, float %4692, float %4693)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = call float @dx.op.unary.f32(i32 24, float %4694)  ; Sqrt(value)
  %4696 = fdiv fast float 1.000000e+00, %4695
  %4697 = fmul fast float %4696, %4691
  %4698 = fmul fast float %4696, %4692
  %4699 = fmul fast float %4696, %4693
  %4700 = fadd fast float %4695, %4649
  %4701 = fdiv fast float 1.000000e+00, %4700
  %4702 = fmul float %4660, %4701
  %4703 = fmul float %4702, %4702
  %4704 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  br i1 %4690, label %4705, label %4726

; <label>:4705                                    ; preds = %4629
  %4706 = fmul fast float %4671, %4652
  %4707 = fmul fast float %4671, %4653
  %4708 = fmul fast float %4671, %4654
  %4709 = fadd fast float %4691, %4706
  %4710 = fadd fast float %4692, %4707
  %4711 = fadd fast float %4693, %4708
  %4712 = call float @dx.op.dot3.f32(i32 55, float %4709, float %4710, float %4711, float %4709, float %4710, float %4711)  ; Dot3(ax,ay,az,bx,by,bz)
  %4713 = call float @dx.op.unary.f32(i32 25, float %4712)  ; Rsqrt(value)
  %4714 = fmul fast float %4713, %4709
  %4715 = fmul fast float %4713, %4710
  %4716 = fmul fast float %4713, %4711
  %4717 = fsub fast float %137, %4663
  %4718 = fsub fast float %138, %4664
  %4719 = fsub fast float %139, %4665
  %4720 = fsub fast float -0.000000e+00, %4717
  %4721 = fsub fast float -0.000000e+00, %4718
  %4722 = fsub fast float -0.000000e+00, %4719
  %4723 = call float @dx.op.dot3.f32(i32 55, float %4720, float %4721, float %4722, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %4724 = fcmp fast ogt float %4723, 0.000000e+00
  %4725 = uitofp i1 %4724 to float
  br label %4726

; <label>:4726                                    ; preds = %4705, %4629
  %4727 = phi float [ %4725, %4705 ], [ 1.000000e+00, %4629 ]
  %4728 = phi float [ %4714, %4705 ], [ %4697, %4629 ]
  %4729 = phi float [ %4715, %4705 ], [ %4698, %4629 ]
  %4730 = phi float [ %4716, %4705 ], [ %4699, %4629 ]
  %4731 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %4728, float %4729, float %4730)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = fmul fast float %4731, %4731
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fsub fast float 1.000000e+00, %4733
  %4735 = fmul fast float %4734, 5.000000e-01
  %4736 = fcmp fast ogt float %4731, 0.000000e+00
  %4737 = fsub fast float 1.000000e+00, %4735
  %4738 = select i1 %4736, float %4735, float %4737
  %4739 = fmul fast float %4738, %4687
  %4740 = fadd fast float %4739, %4685
  %4741 = fmul fast float %4740, 0x3EF0001000000000
  %4742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %58, float %4741, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4743 = extractvalue %dx.types.ResRet.f32 %4742, 0
  %4744 = fmul fast float %4731, %4669
  %4745 = fadd fast float %4744, %4670
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = select i1 %4690, float 1.000000e+00, float %4746
  %4748 = select i1 %4690, float %4746, float 1.000000e+00
  %4749 = fmul fast float %4695, %4666
  %4750 = fsub fast float 1.000000e+00, %4749
  %4751 = fmul fast float %4750, %4672
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %4752, %4748
  %4754 = fmul fast float %4753, 2.000000e+00
  %4755 = fsub fast float 3.000000e+00, %4754
  %4756 = fmul fast float %4743, %4727
  %4757 = fmul fast float %4753, %4753
  %4758 = fmul fast float %4757, %4756
  %4759 = fmul fast float %4758, %4755
  %4760 = call float @dx.op.binary.f32(i32 36, float %4759, float %4759)  ; FMin(a,b)
  %4761 = call float @dx.op.binary.f32(i32 36, float %4759, float %4760)  ; FMin(a,b)
  %4762 = fcmp fast ogt float %4761, 0.000000e+00
  br i1 %4762, label %4771, label %4763, !dx.controlflow.hints !130

; <label>:4763                                    ; preds = %5113, %4871, %4726
  %4764 = phi float [ %4631, %4871 ], [ %4631, %4726 ], [ %5153, %5113 ]
  %4765 = phi float [ %4632, %4871 ], [ %4632, %4726 ], [ %5154, %5113 ]
  %4766 = phi float [ %4633, %4871 ], [ %4633, %4726 ], [ %5155, %5113 ]
  %4767 = phi float [ %4634, %4871 ], [ %4634, %4726 ], [ %5147, %5113 ]
  %4768 = phi float [ %4635, %4871 ], [ %4635, %4726 ], [ %5148, %5113 ]
  %4769 = phi float [ %4636, %4871 ], [ %4636, %4726 ], [ %5149, %5113 ]
  %4770 = icmp eq i32 %4630, %4640
  br i1 %4770, label %5156, label %4629

; <label>:4771                                    ; preds = %4726
  %4772 = icmp eq i32 %4688, 255
  br i1 %4772, label %4871, label %4773, !dx.controlflow.hints !131

; <label>:4773                                    ; preds = %4771
  %4774 = mul nuw nsw i32 %4688, 176
  %4775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4774, i32 undef)  ; BufferLoad(srv,index,wot)
  %4776 = extractvalue %dx.types.ResRet.f32 %4775, 0
  %4777 = extractvalue %dx.types.ResRet.f32 %4775, 1
  %4778 = extractvalue %dx.types.ResRet.f32 %4775, 2
  %4779 = extractvalue %dx.types.ResRet.f32 %4775, 3
  %4780 = add nuw nsw i32 %4774, 16
  %4781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4780, i32 undef)  ; BufferLoad(srv,index,wot)
  %4782 = extractvalue %dx.types.ResRet.f32 %4781, 0
  %4783 = extractvalue %dx.types.ResRet.f32 %4781, 1
  %4784 = add nuw nsw i32 %4774, 32
  %4785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4784, i32 undef)  ; BufferLoad(srv,index,wot)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.ResRet.f32 %4785, 1
  %4788 = extractvalue %dx.types.ResRet.f32 %4785, 2
  %4789 = add nuw nsw i32 %4774, 48
  %4790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4789, i32 undef)  ; BufferLoad(srv,index,wot)
  %4791 = extractvalue %dx.types.ResRet.f32 %4790, 0
  %4792 = extractvalue %dx.types.ResRet.f32 %4790, 1
  %4793 = extractvalue %dx.types.ResRet.f32 %4790, 2
  %4794 = extractvalue %dx.types.ResRet.f32 %4790, 3
  %4795 = add nuw nsw i32 %4774, 64
  %4796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4795, i32 undef)  ; BufferLoad(srv,index,wot)
  %4797 = extractvalue %dx.types.ResRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.ResRet.f32 %4796, 1
  %4799 = extractvalue %dx.types.ResRet.f32 %4796, 2
  %4800 = extractvalue %dx.types.ResRet.f32 %4796, 3
  %4801 = add nuw nsw i32 %4774, 80
  %4802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4801, i32 undef)  ; BufferLoad(srv,index,wot)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = extractvalue %dx.types.ResRet.f32 %4802, 3
  %4807 = add nuw nsw i32 %4774, 96
  %4808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4807, i32 undef)  ; BufferLoad(srv,index,wot)
  %4809 = extractvalue %dx.types.ResRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.ResRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.ResRet.f32 %4808, 2
  %4812 = extractvalue %dx.types.ResRet.f32 %4808, 3
  %4813 = bitcast float %4783 to i32
  %4814 = fmul fast float %4788, %70
  %4815 = fmul fast float %4788, %71
  %4816 = fmul fast float %4788, %72
  %4817 = fadd fast float %4814, %137
  %4818 = fadd fast float %4815, %138
  %4819 = fadd fast float %4816, %139
  %4820 = fmul fast float %4817, %4791
  %4821 = call float @dx.op.tertiary.f32(i32 46, float %4818, float %4797, float %4820)  ; FMad(a,b,c)
  %4822 = call float @dx.op.tertiary.f32(i32 46, float %4819, float %4803, float %4821)  ; FMad(a,b,c)
  %4823 = fadd fast float %4822, %4809
  %4824 = fmul fast float %4817, %4792
  %4825 = call float @dx.op.tertiary.f32(i32 46, float %4818, float %4798, float %4824)  ; FMad(a,b,c)
  %4826 = call float @dx.op.tertiary.f32(i32 46, float %4819, float %4804, float %4825)  ; FMad(a,b,c)
  %4827 = fadd fast float %4826, %4810
  %4828 = fmul fast float %4817, %4793
  %4829 = call float @dx.op.tertiary.f32(i32 46, float %4818, float %4799, float %4828)  ; FMad(a,b,c)
  %4830 = call float @dx.op.tertiary.f32(i32 46, float %4819, float %4805, float %4829)  ; FMad(a,b,c)
  %4831 = fadd fast float %4830, %4811
  %4832 = fmul fast float %4817, %4794
  %4833 = call float @dx.op.tertiary.f32(i32 46, float %4818, float %4800, float %4832)  ; FMad(a,b,c)
  %4834 = call float @dx.op.tertiary.f32(i32 46, float %4819, float %4806, float %4833)  ; FMad(a,b,c)
  %4835 = fadd fast float %4834, %4812
  %4836 = fdiv fast float %4823, %4835
  %4837 = fdiv fast float %4827, %4835
  %4838 = fdiv fast float %4831, %4835
  %4839 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4838)  ; FMax(a,b)
  %4840 = fmul fast float %239, 0x401921FB60000000
  %4841 = call float @dx.op.unary.f32(i32 13, float %4840)  ; Sin(value)
  %4842 = call float @dx.op.unary.f32(i32 12, float %4840)  ; Cos(value)
  %4843 = fsub fast float -0.000000e+00, %4841
  %4844 = fmul fast float %4778, 5.000000e-01
  %4845 = call float @dx.op.dot2.f32(i32 54, float %239, float %239, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4846 = call float @dx.op.unary.f32(i32 22, float %4845)  ; Frc(value)
  %4847 = fmul fast float %4846, 0x404A7DD040000000
  %4848 = call float @dx.op.unary.f32(i32 22, float %4847)  ; Frc(value)
  %4849 = fmul fast float %4848, %4787
  %4850 = fadd fast float %4849, %4844
  %4851 = call float @dx.op.tertiary.f32(i32 46, float %4850, float %4843, float 0.000000e+00)  ; FMad(a,b,c)
  %4852 = call float @dx.op.tertiary.f32(i32 46, float %4850, float %4842, float 0.000000e+00)  ; FMad(a,b,c)
  %4853 = fadd fast float %4851, %4836
  %4854 = fadd fast float %4852, %4837
  %4855 = fmul fast float %4853, %4782
  %4856 = fmul fast float %4854, %4782
  %4857 = call float @dx.op.binary.f32(i32 35, float %4855, float %4778)  ; FMax(a,b)
  %4858 = call float @dx.op.binary.f32(i32 35, float %4856, float %4778)  ; FMax(a,b)
  %4859 = call float @dx.op.binary.f32(i32 36, float %4857, float %4779)  ; FMin(a,b)
  %4860 = call float @dx.op.binary.f32(i32 36, float %4858, float %4779)  ; FMin(a,b)
  %4861 = fadd fast float %4859, %4776
  %4862 = fadd fast float %4860, %4777
  %4863 = uitofp i32 %4813 to float
  %4864 = fadd fast float %4839, %4786
  %4865 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %60, float %4861, float %4862, float %4863, float undef, i32 0, i32 0, i32 undef, float %4864)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4866 = extractvalue %dx.types.ResRet.f32 %4865, 0
  %4867 = fadd fast float %4866, -1.000000e+00
  %4868 = fmul fast float %4867, %4747
  %4869 = fadd fast float %4868, 1.000000e+00
  %4870 = fmul fast float %4869, %4759
  br label %4871

; <label>:4871                                    ; preds = %4773, %4771
  %4872 = phi float [ %4870, %4773 ], [ %4759, %4771 ]
  %4873 = call float @dx.op.binary.f32(i32 36, float %4872, float %4872)  ; FMin(a,b)
  %4874 = call float @dx.op.binary.f32(i32 36, float %4872, float %4873)  ; FMin(a,b)
  %4875 = fcmp fast ogt float %4874, 0.000000e+00
  br i1 %4875, label %4876, label %4763, !dx.controlflow.hints !132

; <label>:4876                                    ; preds = %4871
  %4877 = fmul fast float %4872, %4681
  %4878 = fmul fast float %4872, %4682
  %4879 = fmul fast float %4872, %4683
  %4880 = fsub fast float %4665, %1893
  %4881 = fcmp fast ogt float %4880, 0.000000e+00
  %4882 = fsub fast float %139, %1893
  %4883 = fcmp fast ogt float %4882, 0.000000e+00
  %4884 = xor i1 %4883, %4881
  %4885 = fsub fast float %1893, %4665
  %4886 = fmul fast float %4885, 2.000000e+00
  %4887 = fadd fast float %4886, %4665
  %4888 = select i1 %4884, float %4665, float %4887
  %4889 = fsub fast float %4888, %139
  %4890 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4889, float %4691, float %4692, float %4889)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = call float @dx.op.unary.f32(i32 25, float %4890)  ; Rsqrt(value)
  %4892 = fmul fast float %4891, %4691
  %4893 = fmul fast float %4891, %4692
  %4894 = fmul fast float %4891, %4889
  %4895 = fsub fast float %1893, %139
  %4896 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4895)  ; Dot3(ax,ay,az,bx,by,bz)
  %4897 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4892, float %4893, float %4894)  ; Dot3(ax,ay,az,bx,by,bz)
  %4898 = fdiv fast float 1.000000e+00, %4897
  %4899 = fmul fast float %4898, %4896
  %4900 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4882, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4901 = fcmp fast ogt float %4900, 0.000000e+00
  %4902 = fcmp fast olt float %4900, 0.000000e+00
  %4903 = zext i1 %4901 to i32
  %4904 = zext i1 %4902 to i32
  %4905 = sub nsw i32 %4903, %4904
  %4906 = sitofp i32 %4905 to float
  %4907 = fsub fast float %4888, %1893
  %4908 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4907, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = fcmp fast ogt float %4908, 0.000000e+00
  %4910 = fcmp fast olt float %4908, 0.000000e+00
  %4911 = zext i1 %4909 to i32
  %4912 = zext i1 %4910 to i32
  %4913 = sub nsw i32 %4911, %4912
  %4914 = sitofp i32 %4913 to float
  %4915 = fcmp fast une float %4906, %4914
  br i1 %4915, label %4916, label %4926

; <label>:4916                                    ; preds = %4876
  %4917 = fmul fast float %4899, %4894
  %4918 = fmul fast float %4899, %4893
  %4919 = fmul fast float %4899, %4892
  %4920 = fmul fast float %4919, %4919
  %4921 = fmul fast float %4918, %4918
  %4922 = fadd fast float %4920, %4921
  %4923 = fmul fast float %4917, %4917
  %4924 = fadd fast float %4922, %4923
  %4925 = call float @dx.op.unary.f32(i32 24, float %4924)  ; Sqrt(value)
  br label %4938

; <label>:4926                                    ; preds = %4876
  %4927 = icmp slt i32 %4905, 0
  br i1 %4927, label %4928, label %4938

; <label>:4928                                    ; preds = %4926
  %4929 = fsub fast float %137, %4663
  %4930 = fsub fast float %138, %4664
  %4931 = fsub fast float %139, %4888
  %4932 = fmul fast float %4929, %4929
  %4933 = fmul fast float %4930, %4930
  %4934 = fadd fast float %4932, %4933
  %4935 = fmul fast float %4931, %4931
  %4936 = fadd fast float %4934, %4935
  %4937 = call float @dx.op.unary.f32(i32 24, float %4936)  ; Sqrt(value)
  br label %4938

; <label>:4938                                    ; preds = %4928, %4926, %4916
  %4939 = phi float [ %4925, %4916 ], [ %4937, %4928 ], [ 0.000000e+00, %4926 ]
  %4940 = and i1 %4883, %4881
  %4941 = fsub fast float -0.000000e+00, %4939
  %4942 = select i1 %4940, float -0.000000e+00, float %4941
  %4943 = fmul fast float %1894, 0x3FF7154760000000
  %4944 = fmul fast float %4943, %4942
  %4945 = fmul fast float %1895, 0x3FF7154760000000
  %4946 = fmul fast float %4945, %4942
  %4947 = fmul fast float %1896, 0x3FF7154760000000
  %4948 = fmul fast float %4947, %4942
  %4949 = call float @dx.op.unary.f32(i32 21, float %4944)  ; Exp(value)
  %4950 = call float @dx.op.unary.f32(i32 21, float %4946)  ; Exp(value)
  %4951 = call float @dx.op.unary.f32(i32 21, float %4948)  ; Exp(value)
  %4952 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4955 = fmul fast float %4877, %4952
  %4956 = fmul fast float %4878, %4953
  %4957 = fmul fast float %4879, %4954
  %4958 = fsub fast float %4697, %2093
  %4959 = fsub fast float %4698, %2092
  %4960 = fsub fast float %4699, %2091
  %4961 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %4958, float %4959, float %4960)  ; Dot3(ax,ay,az,bx,by,bz)
  %4962 = call float @dx.op.unary.f32(i32 25, float %4961)  ; Rsqrt(value)
  %4963 = fmul fast float %4962, %4958
  %4964 = fmul fast float %4962, %4959
  %4965 = fmul fast float %4962, %4960
  %4966 = call float @dx.op.dot3.f32(i32 55, float %4697, float %4698, float %4699, float %2100, float %2101, float %2102)  ; Dot3(ax,ay,az,bx,by,bz)
  %4967 = call float @dx.op.dot3.f32(i32 55, float %2090, float %2089, float %2088, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4969 = fmul fast float %4968, %4704
  %4970 = fmul fast float %4968, %4968
  %4971 = fmul fast float %4970, %3470
  %4972 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4973 = fmul fast float %4969, %4972
  %4974 = bitcast float %4694 to i32
  %4975 = ashr i32 %4974, 1
  %4976 = sub nsw i32 1597463007, %4975
  %4977 = bitcast i32 %4976 to float
  %4978 = fmul fast float %4977, %4691
  %4979 = fmul fast float %4977, %4692
  %4980 = fmul fast float %4977, %4693
  %4981 = fsub fast float %4978, %2093
  %4982 = fsub fast float %4979, %2092
  %4983 = fsub fast float %4980, %2091
  %4984 = call float @dx.op.dot3.f32(i32 55, float %4981, float %4982, float %4983, float %4981, float %4982, float %4983)  ; Dot3(ax,ay,az,bx,by,bz)
  %4985 = call float @dx.op.unary.f32(i32 25, float %4984)  ; Rsqrt(value)
  %4986 = fmul fast float %4981, %4985
  %4987 = fmul fast float %4982, %4985
  %4988 = fmul fast float %4983, %4985
  %4989 = call float @dx.op.dot3.f32(i32 55, float %2100, float %2101, float %2102, float %4986, float %4987, float %4988)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = fmul fast float %4989, %4989
  %4991 = call float @dx.op.unary.f32(i32 6, float %4966)  ; FAbs(value)
  %4992 = fsub fast float 1.000000e+00, %2103
  %4993 = call float @dx.op.binary.f32(i32 35, float %4992, float 0x3F847AE140000000)  ; FMax(a,b)
  %4994 = fmul fast float %4993, %4993
  %4995 = fmul fast float %4994, %4994
  %4996 = fsub fast float 1.000000e+00, %4995
  %4997 = fmul fast float %2108, %2108
  %4998 = fmul fast float %4997, %4996
  %4999 = fadd fast float %4998, %4995
  %5000 = bitcast float %4999 to i32
  %5001 = ashr i32 %5000, 1
  %5002 = add nsw i32 %5001, 532487669
  %5003 = bitcast i32 %5002 to float
  %5004 = fadd fast float %5003, %2108
  %5005 = fmul fast float %4995, %4990
  %5006 = fsub fast float 1.000000e+00, %4990
  %5007 = fadd fast float %5006, %5005
  %5008 = fmul fast float %4991, %4991
  %5009 = fmul fast float %5008, %4996
  %5010 = fadd fast float %5009, %4995
  %5011 = bitcast float %5010 to i32
  %5012 = ashr i32 %5011, 1
  %5013 = add nsw i32 %5012, 532487669
  %5014 = bitcast i32 %5013 to float
  %5015 = fadd fast float %5014, %4991
  %5016 = fmul fast float %5007, %5007
  %5017 = fmul fast float %5016, %5004
  %5018 = fmul fast float %5017, %5015
  %5019 = fdiv fast float 1.000000e+00, %5018
  %5020 = bitcast float %4995 to i32
  %5021 = sitofp i32 %5020 to float
  %5022 = fmul fast float %5021, 0x3FE7F73180000000
  %5023 = fadd fast float %5022, 0x41AFE27C40000000
  %5024 = fptosi float %5023 to i32
  %5025 = bitcast i32 %5024 to float
  %5026 = fmul fast float %4660, 0x3FD80E9D60000000
  %5027 = fmul fast float %5026, %4977
  %5028 = fadd fast float %5025, %5027
  %5029 = bitcast float %5028 to i32
  %5030 = sub nsw i32 2129859010, %5029
  %5031 = bitcast i32 %5030 to float
  %5032 = fmul fast float %4995, %5019
  %5033 = fmul fast float %5032, %5025
  %5034 = fmul fast float %5033, %5031
  %5035 = call float @dx.op.unary.f32(i32 6, float %4967)  ; FAbs(value)
  %5036 = fsub fast float 1.000000e+00, %5035
  %5037 = bitcast float %5036 to i32
  %5038 = sitofp i32 %5037 to float
  %5039 = fmul fast float %5038, 5.000000e+00
  %5040 = fadd fast float %5039, 0xC1EFBF8940000000
  %5041 = fptosi float %5040 to i32
  %5042 = bitcast i32 %5041 to float
  %5043 = fsub fast float 1.000000e+00, %2094
  %5044 = fsub fast float 1.000000e+00, %2095
  %5045 = fsub fast float 1.000000e+00, %2106
  %5046 = fmul fast float %5042, %5043
  %5047 = fmul fast float %5042, %5044
  %5048 = fmul fast float %5042, %5045
  %5049 = fadd fast float %5046, %2094
  %5050 = fadd fast float %5047, %2095
  %5051 = fadd fast float %5048, %2106
  br i1 %3385, label %5052, label %5075

; <label>:5052                                    ; preds = %4938
  %5053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1471, float %5035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5054 = extractvalue %dx.types.ResRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.ResRet.f32 %5053, 1
  %5056 = extractvalue %dx.types.ResRet.f32 %5053, 2
  %5057 = fadd fast float %5054, -5.000000e-01
  %5058 = fadd fast float %5055, -5.000000e-01
  %5059 = fadd fast float %5056, -5.000000e-01
  %5060 = fmul fast float %2094, 4.000000e+00
  %5061 = fmul fast float %5060, %5043
  %5062 = fmul fast float %5061, %5057
  %5063 = fmul fast float %2095, 4.000000e+00
  %5064 = fmul fast float %5063, %5044
  %5065 = fmul fast float %5064, %5058
  %5066 = fmul fast float %2106, 4.000000e+00
  %5067 = fmul fast float %5066, %5045
  %5068 = fmul fast float %5067, %5059
  %5069 = fadd fast float %5062, %5049
  %5070 = fadd fast float %5065, %5050
  %5071 = fadd fast float %5068, %5051
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5074 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  br label %5075

; <label>:5075                                    ; preds = %5052, %4938
  %5076 = phi float [ %5072, %5052 ], [ %5049, %4938 ]
  %5077 = phi float [ %5073, %5052 ], [ %5050, %4938 ]
  %5078 = phi float [ %5074, %5052 ], [ %5051, %4938 ]
  %5079 = fmul fast float %4966, 9.843750e-01
  %5080 = fadd fast float %5079, 7.812500e-03
  %5081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %58, float %5080, float %3375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5082 = extractvalue %dx.types.ResRet.f32 %5081, 2
  %5083 = extractvalue %dx.types.ResRet.f32 %5081, 3
  %5084 = fmul fast float %5082, %2094
  %5085 = fmul fast float %5082, %2095
  %5086 = fmul fast float %5082, %2106
  %5087 = fadd fast float %5084, %5083
  %5088 = fadd fast float %5085, %5083
  %5089 = fadd fast float %5086, %5083
  br i1 %3385, label %5090, label %5113

; <label>:5090                                    ; preds = %5075
  %5091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %58, float %1471, float %4966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5092 = extractvalue %dx.types.ResRet.f32 %5091, 0
  %5093 = extractvalue %dx.types.ResRet.f32 %5091, 1
  %5094 = extractvalue %dx.types.ResRet.f32 %5091, 2
  %5095 = fadd fast float %5092, -5.000000e-01
  %5096 = fadd fast float %5093, -5.000000e-01
  %5097 = fadd fast float %5094, -5.000000e-01
  %5098 = fmul fast float %2094, 4.000000e+00
  %5099 = fmul fast float %5098, %5043
  %5100 = fmul fast float %5099, %5095
  %5101 = fmul fast float %2095, 4.000000e+00
  %5102 = fmul fast float %5101, %5044
  %5103 = fmul fast float %5102, %5096
  %5104 = fmul fast float %2106, 4.000000e+00
  %5105 = fmul fast float %5104, %5045
  %5106 = fmul fast float %5105, %5097
  %5107 = fadd fast float %5100, %5087
  %5108 = fadd fast float %5103, %5088
  %5109 = fadd fast float %5106, %5089
  %5110 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5112 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  br label %5113

; <label>:5113                                    ; preds = %5090, %5075
  %5114 = phi float [ %5110, %5090 ], [ %5087, %5075 ]
  %5115 = phi float [ %5111, %5090 ], [ %5088, %5075 ]
  %5116 = phi float [ %5112, %5090 ], [ %5089, %5075 ]
  %5117 = call float @dx.op.binary.f32(i32 35, float %5115, float %5116)  ; FMax(a,b)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5114, float %5117)  ; FMax(a,b)
  %5119 = fsub fast float 1.000000e+00, %5118
  %5120 = fmul fast float %5076, %5034
  %5121 = fmul fast float %5077, %5034
  %5122 = fmul fast float %5078, %5034
  %5123 = fsub fast float 1.000000e+00, %4967
  %5124 = bitcast float %5123 to i32
  %5125 = sitofp i32 %5124 to float
  %5126 = fmul fast float %5125, 5.000000e+00
  %5127 = fadd fast float %5126, 0xC1EFBF8940000000
  %5128 = fptosi float %5127 to i32
  %5129 = bitcast i32 %5128 to float
  %5130 = fmul fast float %5129, %1470
  %5131 = fmul fast float %5119, %5130
  %5132 = fmul fast float %5131, %3435
  %5133 = fmul fast float %5131, %3436
  %5134 = fmul fast float %5131, %3437
  %5135 = fadd fast float %5132, %5120
  %5136 = fadd fast float %5133, %5121
  %5137 = fadd fast float %5134, %5122
  %5138 = fmul fast float %4955, %1491
  %5139 = fmul fast float %5138, %4973
  %5140 = fmul fast float %5139, %5119
  %5141 = fmul fast float %4956, %1491
  %5142 = fmul fast float %5141, %4973
  %5143 = fmul fast float %5142, %5119
  %5144 = fmul fast float %4957, %1491
  %5145 = fmul fast float %5144, %4973
  %5146 = fmul fast float %5145, %5119
  %5147 = fadd fast float %5140, %4634
  %5148 = fadd fast float %5143, %4635
  %5149 = fadd fast float %5146, %4636
  %5150 = fmul fast float %5139, %5135
  %5151 = fmul fast float %5142, %5136
  %5152 = fmul fast float %5145, %5137
  %5153 = fadd fast float %5150, %4631
  %5154 = fadd fast float %5151, %4632
  %5155 = fadd fast float %5152, %4633
  br label %4763

; <label>:5156                                    ; preds = %4763
  br label %5157

; <label>:5157                                    ; preds = %5156, %4597
  %5158 = phi float [ %4599, %4597 ], [ %4764, %5156 ]
  %5159 = phi float [ %4600, %4597 ], [ %4765, %5156 ]
  %5160 = phi float [ %4601, %4597 ], [ %4766, %5156 ]
  %5161 = phi float [ %4602, %4597 ], [ %4767, %5156 ]
  %5162 = phi float [ %4603, %4597 ], [ %4768, %5156 ]
  %5163 = phi float [ %4604, %4597 ], [ %4769, %5156 ]
  %5164 = add i32 %4598, 1
  %5165 = icmp ugt i32 %5164, %4594
  br i1 %5165, label %5166, label %4597

; <label>:5166                                    ; preds = %5157
  br label %5167

; <label>:5167                                    ; preds = %5166, %4547, %4537
  %5168 = phi float [ %4538, %4537 ], [ %4538, %4547 ], [ %5158, %5166 ]
  %5169 = phi float [ %4539, %4537 ], [ %4539, %4547 ], [ %5159, %5166 ]
  %5170 = phi float [ %4540, %4537 ], [ %4540, %4547 ], [ %5160, %5166 ]
  %5171 = phi float [ %4541, %4537 ], [ %4541, %4547 ], [ %5161, %5166 ]
  %5172 = phi float [ %4542, %4537 ], [ %4542, %4547 ], [ %5162, %5166 ]
  %5173 = phi float [ %4543, %4537 ], [ %4543, %4547 ], [ %5163, %5166 ]
  %5174 = fmul fast float %1491, %1491
  %5175 = fsub fast float 1.000000e+00, %5174
  %5176 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5175, float %5175, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = fsub fast float 1.000000e+00, %5176
  %5178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5179 = extractvalue %dx.types.CBufRet.f32 %5178, 0
  %5180 = fmul fast float %5179, %3441
  %5181 = fmul fast float %2102, 2.000000e+00
  %5182 = fmul fast float %5181, %2109
  %5183 = fsub fast float %2091, %5182
  %5184 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5185 = fsub fast float 1.000000e+00, %5184
  %5186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5186, 3
  %5188 = fmul fast float %5187, %5185
  %5189 = fsub fast float 1.000000e+00, %1469
  %5190 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5191 = fadd fast float %5173, %1468
  %5192 = fmul fast float %5191, %1469
  %5193 = fmul fast float %5188, %5190
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5196 = fmul fast float %5171, %2097
  %5197 = fmul fast float %5172, %2098
  %5198 = fmul fast float %5173, %2099
  %5199 = fcmp fast ogt float %81, %188
  %5200 = and i1 %5199, %1899
  %5201 = or i1 %1905, %5200
  %5202 = icmp eq i32 %1898, 2
  %5203 = fcmp fast ole float %81, %188
  %5204 = and i1 %5203, %5202
  %5205 = or i1 %5204, %5201
  br i1 %5200, label %5206, label %5465

; <label>:5206                                    ; preds = %5167
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 2
  %5209 = extractvalue %dx.types.CBufRet.f32 %5207, 3
  %5210 = fmul fast float %5208, %90
  %5211 = fmul fast float %5209, %91
  %5212 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5213 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5214 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5212, float %5213, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 0
  %5216 = extractvalue %dx.types.ResRet.f32 %5214, 1
  %5217 = extractvalue %dx.types.ResRet.f32 %5214, 2
  %5218 = extractvalue %dx.types.ResRet.f32 %5214, 3
  %5219 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %5212, float %5213, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.ResRet.f32 %5219, 2
  %5223 = extractvalue %dx.types.ResRet.f32 %5219, 3
  %5224 = call float @dx.op.binary.f32(i32 35, float %5216, float %5217)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 35, float %5215, float %5224)  ; FMax(a,b)
  %5226 = call float @dx.op.binary.f32(i32 35, float %5225, float %5218)  ; FMax(a,b)
  %5227 = call float @dx.op.binary.f32(i32 36, float %5221, float %5222)  ; FMin(a,b)
  %5228 = call float @dx.op.binary.f32(i32 36, float %5220, float %5227)  ; FMin(a,b)
  %5229 = call float @dx.op.binary.f32(i32 36, float %5228, float %5223)  ; FMin(a,b)
  %5230 = fmul fast float %5226, 2.550000e+02
  %5231 = fadd fast float %5230, 0x3F70101020000000
  %5232 = fptoui float %5231 to i32
  %5233 = fmul fast float %5229, 2.550000e+02
  %5234 = fadd fast float %5233, 0x3F70101020000000
  %5235 = fptoui float %5234 to i32
  %5236 = icmp ult i32 %5232, %5235
  br i1 %5236, label %5237, label %5405

; <label>:5237                                    ; preds = %5206
  %5238 = fcmp fast ogt float %80, 9.843750e-01
  %5239 = fadd fast float %81, -4.000000e+00
  %5240 = select i1 %5238, float -4.000000e+00, float %5239
  %5241 = call float @dx.op.binary.f32(i32 35, float %5240, float 0.000000e+00)  ; FMax(a,b)
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = fadd fast float %5243, %5241
  %5245 = extractvalue %dx.types.CBufRet.f32 %5242, 2
  %5246 = fmul fast float %5244, %5245
  %5247 = call float @dx.op.unary.f32(i32 23, float %5246)  ; Log(value)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5249 = fmul fast float %5248, %5247
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 2
  %5252 = fmul fast float %5249, %5251
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = uitofp i32 %5232 to float
  %5255 = uitofp i32 %5235 to float
  %5256 = fadd fast float %5254, 5.000000e-01
  %5257 = fadd fast float %5255, 5.000000e-01
  %5258 = fmul fast float %5251, %5256
  %5259 = fmul fast float %5251, %5257
  %5260 = fadd fast float %5258, 0x3F0FFB4800000000
  %5261 = fadd fast float %5259, 0xBF0FFB4800000000
  %5262 = call float @dx.op.binary.f32(i32 35, float %5253, float %5260)  ; FMax(a,b)
  %5263 = call float @dx.op.binary.f32(i32 36, float %5262, float %5261)  ; FMin(a,b)
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.f32 %5264, 1
  %5266 = extractvalue %dx.types.CBufRet.f32 %5264, 2
  %5267 = extractvalue %dx.types.CBufRet.f32 %5264, 0
  %5268 = fmul fast float %5265, %5263
  %5269 = fadd fast float %5267, %5268
  %5270 = fadd fast float %5267, %5266
  %5271 = fsub fast float %5265, %5266
  %5272 = fadd fast float %5271, %5267
  %5273 = call float @dx.op.binary.f32(i32 35, float %5269, float %5270)  ; FMax(a,b)
  %5274 = call float @dx.op.binary.f32(i32 36, float %5273, float %5272)  ; FMin(a,b)
  %5275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %5212, float %5213, float %5274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.i32 %5279, 0
  %5281 = extractvalue %dx.types.CBufRet.i32 %5279, 1
  %5282 = uitofp i32 %5280 to float
  %5283 = uitofp i32 %5281 to float
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.CBufRet.f32 %5284, 1
  %5287 = fmul fast float %5282, %5212
  %5288 = fmul fast float %5283, %5213
  %5289 = fadd fast float %5287, -5.000000e-01
  %5290 = fadd fast float %5288, -5.000000e-01
  %5291 = call float @dx.op.unary.f32(i32 22, float %5289)  ; Frc(value)
  %5292 = call float @dx.op.unary.f32(i32 22, float %5290)  ; Frc(value)
  %5293 = fmul fast float %5291, %5291
  %5294 = fmul fast float %5293, %5291
  %5295 = fsub fast float 3.000000e+00, %5291
  %5296 = fmul fast float %5293, %5295
  %5297 = fmul fast float %5291, 3.000000e+00
  %5298 = fmul fast float %5294, 3.000000e+00
  %5299 = fmul fast float %5293, 6.000000e+00
  %5300 = fsub fast float %5298, %5299
  %5301 = fadd fast float %5300, 4.000000e+00
  %5302 = fmul fast float %5301, 0x3FC5555560000000
  %5303 = fmul fast float %5294, -3.000000e+00
  %5304 = fadd fast float %5293, %5291
  %5305 = fmul fast float %5304, 3.000000e+00
  %5306 = fadd fast float %5303, 1.000000e+00
  %5307 = fadd fast float %5306, %5305
  %5308 = fmul fast float %5294, 0x3FC5555560000000
  %5309 = fmul fast float %5292, %5292
  %5310 = fmul fast float %5309, %5292
  %5311 = fsub fast float 3.000000e+00, %5292
  %5312 = fmul fast float %5309, %5311
  %5313 = fmul fast float %5292, 3.000000e+00
  %5314 = fmul fast float %5310, 3.000000e+00
  %5315 = fmul fast float %5309, 6.000000e+00
  %5316 = fsub fast float %5314, %5315
  %5317 = fadd fast float %5316, 4.000000e+00
  %5318 = fmul fast float %5317, 0x3FC5555560000000
  %5319 = fmul fast float %5310, -3.000000e+00
  %5320 = fadd fast float %5309, %5292
  %5321 = fmul fast float %5320, 3.000000e+00
  %5322 = fadd fast float %5319, 1.000000e+00
  %5323 = fadd fast float %5322, %5321
  %5324 = fmul fast float %5310, 0x3FC5555560000000
  %5325 = fadd fast float %5291, 1.000000e+00
  %5326 = fsub fast float 1.000000e+00, %5297
  %5327 = fadd fast float %5326, %5296
  %5328 = fadd fast float %5327, %5301
  %5329 = fmul fast float %5328, 0x3FC5555560000000
  %5330 = fdiv fast float %5302, %5329
  %5331 = fsub fast float %5325, %5330
  %5332 = fsub fast float 1.000000e+00, %5291
  %5333 = fadd fast float %5307, %5294
  %5334 = fmul fast float %5333, 0x3FC5555560000000
  %5335 = fdiv fast float %5308, %5334
  %5336 = fadd fast float %5332, %5335
  %5337 = fadd fast float %5292, 1.000000e+00
  %5338 = fsub fast float 1.000000e+00, %5313
  %5339 = fadd fast float %5338, %5312
  %5340 = fadd fast float %5339, %5317
  %5341 = fmul fast float %5340, 0x3FC5555560000000
  %5342 = fdiv fast float %5318, %5341
  %5343 = fsub fast float %5337, %5342
  %5344 = fsub fast float 1.000000e+00, %5292
  %5345 = fadd fast float %5323, %5310
  %5346 = fmul fast float %5345, 0x3FC5555560000000
  %5347 = fdiv fast float %5324, %5346
  %5348 = fadd fast float %5347, %5344
  %5349 = fmul fast float %5331, %5285
  %5350 = fsub fast float %5212, %5349
  %5351 = fmul fast float %5336, %5285
  %5352 = fadd fast float %5351, %5212
  %5353 = fmul fast float %5348, %5286
  %5354 = fadd fast float %5353, %5213
  %5355 = fmul fast float %5343, %5286
  %5356 = fsub fast float %5213, %5355
  %5357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5350, float %5356, float %5274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5358 = extractvalue %dx.types.ResRet.f32 %5357, 0
  %5359 = extractvalue %dx.types.ResRet.f32 %5357, 1
  %5360 = extractvalue %dx.types.ResRet.f32 %5357, 2
  %5361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5352, float %5356, float %5274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5362 = extractvalue %dx.types.ResRet.f32 %5361, 0
  %5363 = extractvalue %dx.types.ResRet.f32 %5361, 1
  %5364 = extractvalue %dx.types.ResRet.f32 %5361, 2
  %5365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5350, float %5354, float %5274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5366 = extractvalue %dx.types.ResRet.f32 %5365, 0
  %5367 = extractvalue %dx.types.ResRet.f32 %5365, 1
  %5368 = extractvalue %dx.types.ResRet.f32 %5365, 2
  %5369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %5352, float %5354, float %5274, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = fsub fast float %5366, %5358
  %5374 = fsub fast float %5367, %5359
  %5375 = fsub fast float %5368, %5360
  %5376 = fmul fast float %5373, %5346
  %5377 = fmul fast float %5374, %5346
  %5378 = fmul fast float %5375, %5346
  %5379 = fadd fast float %5376, %5358
  %5380 = fadd fast float %5377, %5359
  %5381 = fadd fast float %5378, %5360
  %5382 = fsub fast float %5370, %5362
  %5383 = fsub fast float %5371, %5363
  %5384 = fsub fast float %5372, %5364
  %5385 = fmul fast float %5382, %5346
  %5386 = fmul fast float %5383, %5346
  %5387 = fmul fast float %5384, %5346
  %5388 = fsub fast float %5362, %5379
  %5389 = fadd fast float %5388, %5385
  %5390 = fsub fast float %5363, %5380
  %5391 = fadd fast float %5390, %5386
  %5392 = fsub fast float %5364, %5381
  %5393 = fadd fast float %5392, %5387
  %5394 = fmul fast float %5389, %5334
  %5395 = fmul fast float %5391, %5334
  %5396 = fmul fast float %5393, %5334
  %5397 = fadd fast float %5394, %5379
  %5398 = fadd fast float %5395, %5380
  %5399 = fadd fast float %5396, %5381
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5402 = fmul fast float %5397, %5401
  %5403 = fmul fast float %5398, %5401
  %5404 = fmul fast float %5399, %5401
  br label %5405

; <label>:5405                                    ; preds = %5237, %5206
  %5406 = phi float [ %5276, %5237 ], [ 1.000000e+00, %5206 ]
  %5407 = phi float [ %5277, %5237 ], [ 1.000000e+00, %5206 ]
  %5408 = phi float [ %5278, %5237 ], [ 1.000000e+00, %5206 ]
  %5409 = phi float [ %5402, %5237 ], [ 0.000000e+00, %5206 ]
  %5410 = phi float [ %5403, %5237 ], [ 0.000000e+00, %5206 ]
  %5411 = phi float [ %5404, %5237 ], [ 0.000000e+00, %5206 ]
  %5412 = fmul fast float %5409, %5177
  %5413 = fmul fast float %5410, %5177
  %5414 = fmul fast float %5411, %5177
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5407, float %5408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5413, float %5414, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = select i1 %228, float %5415, float %5406
  %5418 = select i1 %228, float %5415, float %5407
  %5419 = select i1 %228, float 1.000000e+00, float %5408
  %5420 = select i1 %228, float %5416, float %5412
  %5421 = select i1 %228, float 0.000000e+00, float %5413
  %5422 = select i1 %228, float 0.000000e+00, float %5414
  %5423 = fmul fast float %5417, %5196
  %5424 = fmul fast float %5418, %5197
  %5425 = fmul fast float %5419, %5198
  %5426 = fadd fast float %5423, %5420
  %5427 = fadd fast float %5424, %5421
  %5428 = fadd fast float %5422, %5425
  %5429 = fmul fast float %5417, %5168
  %5430 = fmul fast float %5418, %5169
  %5431 = fmul fast float %5419, %5170
  %5432 = fmul fast float %90, 2.000000e+00
  %5433 = fmul fast float %5432, %5208
  %5434 = fmul fast float %91, 2.000000e+00
  %5435 = fmul fast float %5434, %5209
  %5436 = fsub fast float 1.000000e+00, %5433
  %5437 = fsub fast float 1.000000e+00, %5435
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.CBufRet.f32 %5438, 2
  %5442 = fmul fast float %5436, %5439
  %5443 = fmul fast float %5436, %5440
  %5444 = fmul fast float %5436, %5441
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5449 = fmul fast float %5437, %5446
  %5450 = fmul fast float %5437, %5447
  %5451 = fmul fast float %5437, %5448
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5456 = fadd fast float %5449, %5453
  %5457 = fadd fast float %5456, %5442
  %5458 = fadd fast float %5450, %5454
  %5459 = fadd fast float %5458, %5443
  %5460 = fadd fast float %5451, %5455
  %5461 = fadd fast float %5460, %5444
  %5462 = fmul fast float %5457, %188
  %5463 = fmul fast float %5459, %188
  %5464 = fmul fast float %5461, %188
  br label %5465

; <label>:5465                                    ; preds = %5405, %5167
  %5466 = phi float [ %5462, %5405 ], [ %137, %5167 ]
  %5467 = phi float [ %5463, %5405 ], [ %138, %5167 ]
  %5468 = phi float [ %5464, %5405 ], [ %139, %5167 ]
  %5469 = phi float [ %188, %5405 ], [ %81, %5167 ]
  %5470 = phi float [ %5426, %5405 ], [ %5196, %5167 ]
  %5471 = phi float [ %5427, %5405 ], [ %5197, %5167 ]
  %5472 = phi float [ %5428, %5405 ], [ %5198, %5167 ]
  %5473 = phi float [ %5429, %5405 ], [ %5168, %5167 ]
  %5474 = phi float [ %5430, %5405 ], [ %5169, %5167 ]
  %5475 = phi float [ %5431, %5405 ], [ %5170, %5167 ]
  %5476 = phi float [ %5406, %5405 ], [ 1.000000e+00, %5167 ]
  br i1 %5205, label %6631, label %5477

; <label>:5477                                    ; preds = %5465
  %5478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.CBufRet.f32 %5478, 1
  %5481 = extractvalue %dx.types.CBufRet.f32 %5478, 2
  %5482 = extractvalue %dx.types.CBufRet.f32 %5478, 3
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.CBufRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.CBufRet.f32 %5483, 2
  %5487 = extractvalue %dx.types.CBufRet.f32 %5483, 3
  %5488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.f32 %5488, 0
  %5490 = extractvalue %dx.types.CBufRet.f32 %5488, 1
  %5491 = extractvalue %dx.types.CBufRet.f32 %5488, 2
  %5492 = extractvalue %dx.types.CBufRet.f32 %5488, 3
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.CBufRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5497 = extractvalue %dx.types.CBufRet.f32 %5493, 3
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 3
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 3
  %5502 = extractvalue %dx.types.CBufRet.f32 %5500, 0
  %5503 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5504 = extractvalue %dx.types.CBufRet.f32 %5500, 2
  %5505 = fcmp fast olt float %5504, -5.000000e-01
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = call float @dx.op.unary.f32(i32 25, float %5506)  ; Rsqrt(value)
  %5508 = fmul fast float %5507, %5506
  %5509 = fmul fast float %5507, %5466
  %5510 = fmul fast float %5507, %5467
  %5511 = fmul fast float %5507, %5468
  %5512 = fadd fast float %5508, %5482
  %5513 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5479, float %5480, float %5481)  ; Dot3(ax,ay,az,bx,by,bz)
  %5514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.i32 %5514, 1
  %5516 = and i32 %5515, 1
  %5517 = icmp ne i32 %5516, 0
  %5518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5519 = extractvalue %dx.types.CBufRet.f32 %5518, 2
  %5520 = fcmp fast ogt float %5519, 0.000000e+00
  %5521 = and i1 %5517, %5520
  br i1 %5521, label %5522, label %5928, !dx.controlflow.hints !133

; <label>:5522                                    ; preds = %5477
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 3
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5527, 2
  %5529 = fsub fast float %5526, %5528
  %5530 = and i32 %5515, 2
  %5531 = extractvalue %dx.types.CBufRet.i32 %5514, 0
  %5532 = call i32 @dx.op.binary.i32(i32 40, i32 %5531, i32 3)  ; UMin(a,b)
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5536 = extractvalue %dx.types.CBufRet.f32 %5527, 0
  %5537 = extractvalue %dx.types.CBufRet.f32 %5527, 1
  %5538 = fsub fast float %5534, %5536
  %5539 = fsub fast float %5535, %5537
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 0
  %5542 = fcmp fast ogt float %5541, 0.000000e+00
  %5543 = fsub fast float -0.000000e+00, %5538
  %5544 = fsub fast float -0.000000e+00, %5539
  %5545 = call float @dx.op.dot2.f32(i32 54, float %5509, float %5510, float %5509, float %5510)  ; Dot2(ax,ay,bx,by)
  %5546 = call float @dx.op.dot2.f32(i32 54, float %5509, float %5510, float %5543, float %5544)  ; Dot2(ax,ay,bx,by)
  %5547 = fmul fast float %5546, 2.000000e+00
  %5548 = call float @dx.op.dot2.f32(i32 54, float %5543, float %5544, float %5543, float %5544)  ; Dot2(ax,ay,bx,by)
  %5549 = fmul fast float %5541, %5541
  %5550 = fsub fast float %5548, %5549
  %5551 = fmul fast float %5547, %5547
  %5552 = fmul fast float %5545, 4.000000e+00
  %5553 = fmul fast float %5552, %5550
  %5554 = fsub fast float %5551, %5553
  %5555 = fcmp fast ogt float %5554, 0.000000e+00
  br i1 %5555, label %5556, label %5571

; <label>:5556                                    ; preds = %5522
  %5557 = fcmp fast ogt float %5547, 0.000000e+00
  %5558 = call float @dx.op.unary.f32(i32 24, float %5554)  ; Sqrt(value)
  %5559 = fsub fast float -0.000000e+00, %5558
  %5560 = select i1 %5557, float %5558, float %5559
  %5561 = fadd fast float %5560, %5547
  %5562 = fmul float %5561, -5.000000e-01
  %5563 = fdiv fast float %5562, %5545
  %5564 = call float @dx.op.binary.f32(i32 35, float %5563, float 0.000000e+00)  ; FMax(a,b)
  %5565 = call float @dx.op.binary.f32(i32 36, float %5508, float %5564)  ; FMin(a,b)
  %5566 = fdiv fast float %5550, %5562
  %5567 = call float @dx.op.binary.f32(i32 35, float %5566, float 0.000000e+00)  ; FMax(a,b)
  %5568 = call float @dx.op.binary.f32(i32 36, float %5508, float %5567)  ; FMin(a,b)
  %5569 = call float @dx.op.binary.f32(i32 36, float %5565, float %5568)  ; FMin(a,b)
  %5570 = call float @dx.op.binary.f32(i32 35, float %5565, float %5568)  ; FMax(a,b)
  br label %5571

; <label>:5571                                    ; preds = %5556, %5522
  %5572 = phi float [ %5570, %5556 ], [ -1.000000e+00, %5522 ]
  %5573 = phi float [ %5569, %5556 ], [ -1.000000e+00, %5522 ]
  %5574 = phi i1 [ true, %5556 ], [ false, %5522 ]
  %5575 = and i1 %5542, %5574
  br i1 %5575, label %5576, label %5578

; <label>:5576                                    ; preds = %5571
  %5577 = fcmp fast oeq float %5573, %5572
  br i1 %5577, label %5881, label %5579

; <label>:5578                                    ; preds = %5571
  br i1 %5542, label %5881, label %5579

; <label>:5579                                    ; preds = %5578, %5576
  %5580 = phi float [ %5508, %5578 ], [ %5572, %5576 ]
  %5581 = phi float [ 0.000000e+00, %5578 ], [ %5573, %5576 ]
  %5582 = icmp ne i32 %5530, 0
  %5583 = fmul fast float %5580, %5511
  %5584 = fadd fast float %5583, %5524
  %5585 = fmul fast float %5584, %5580
  %5586 = select i1 %5582, float 0.000000e+00, float %5585
  %5587 = fcmp fast oeq float %5511, 0.000000e+00
  %5588 = fdiv fast float %5529, %5511
  %5589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5588)  ; FMax(a,b)
  %5590 = select i1 %5587, float %5580, float %5589
  %5591 = call float @dx.op.binary.f32(i32 36, float %5580, float %5590)  ; FMin(a,b)
  %5592 = fcmp fast ogt float %5511, 0.000000e+00
  %5593 = fcmp fast olt float %5529, 0.000000e+00
  br i1 %5592, label %5594, label %5651

; <label>:5594                                    ; preds = %5579
  %5595 = icmp eq i32 %5530, 0
  br i1 %5593, label %5596, label %5640

; <label>:5596                                    ; preds = %5594
  %5597 = select i1 %5595, float %5580, float 0.000000e+00
  %5598 = fsub fast float -0.000000e+00, %5597
  %5599 = call float @dx.op.unary.f32(i32 6, float %5598)  ; FAbs(value)
  %5600 = fmul fast float %5597, %5511
  %5601 = fadd fast float %5600, %5524
  %5602 = fmul fast float %5599, %5601
  %5603 = fsub fast float %5586, %5602
  %5604 = fsub fast float %5580, %5599
  %5605 = select i1 %5595, float %5604, float 0.000000e+00
  %5606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = extractvalue %dx.types.CBufRet.f32 %5606, 0
  %5608 = extractvalue %dx.types.CBufRet.f32 %5606, 1
  %5609 = extractvalue %dx.types.CBufRet.f32 %5606, 2
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.CBufRet.f32 %5610, 2
  %5614 = extractvalue %dx.types.CBufRet.f32 %5610, 3
  %5615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5615, 3
  %5617 = call float @dx.op.binary.f32(i32 36, float %5603, float %5616)  ; FMin(a,b)
  %5618 = fmul fast float %5614, %5605
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = fsub fast float %5611, %5607
  %5621 = fsub fast float %5612, %5608
  %5622 = fsub fast float %5613, %5609
  %5623 = fmul fast float %5619, %5620
  %5624 = fmul fast float %5619, %5621
  %5625 = fmul fast float %5619, %5622
  %5626 = fadd fast float %5623, %5607
  %5627 = fadd fast float %5624, %5608
  %5628 = fadd fast float %5625, %5609
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 0
  %5631 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5632 = fadd fast float %5631, %5630
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5635 = extractvalue %dx.types.CBufRet.f32 %5629, 3
  %5636 = fadd fast float %5635, %5634
  %5637 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5638 = fmul fast float %5633, %5617
  %5639 = fmul fast float %5638, %5637
  br label %5881

; <label>:5640                                    ; preds = %5594
  br i1 %5595, label %5641, label %5662

; <label>:5641                                    ; preds = %5640
  %5642 = call float @dx.op.binary.f32(i32 36, float %5591, float %5581)  ; FMin(a,b)
  %5643 = fsub fast float %5591, %5642
  %5644 = fsub fast float %5643, %5580
  %5645 = call float @dx.op.unary.f32(i32 6, float %5644)  ; FAbs(value)
  %5646 = fadd fast float %5643, %5580
  %5647 = fmul fast float %5646, %5511
  %5648 = fadd fast float %5647, %5524
  %5649 = fmul fast float %5648, %5645
  %5650 = fsub fast float %5586, %5649
  br label %5662

; <label>:5651                                    ; preds = %5579
  br i1 %5593, label %5652, label %5662

; <label>:5652                                    ; preds = %5651
  %5653 = call float @dx.op.binary.f32(i32 35, float %5581, float %5591)  ; FMax(a,b)
  %5654 = icmp eq i32 %5530, 0
  %5655 = select i1 %5654, float %5591, float 0.000000e+00
  %5656 = fsub fast float -0.000000e+00, %5655
  %5657 = call float @dx.op.unary.f32(i32 6, float %5656)  ; FAbs(value)
  %5658 = fmul fast float %5655, %5511
  %5659 = fadd fast float %5658, %5524
  %5660 = fmul fast float %5657, %5659
  %5661 = fsub fast float %5586, %5660
  br label %5662

; <label>:5662                                    ; preds = %5652, %5651, %5641, %5640
  %5663 = phi float [ %5581, %5640 ], [ %5581, %5641 ], [ %5653, %5652 ], [ %5581, %5651 ]
  %5664 = phi float [ 0.000000e+00, %5640 ], [ %5645, %5641 ], [ %5657, %5652 ], [ 0.000000e+00, %5651 ]
  %5665 = phi float [ %5586, %5640 ], [ %5650, %5641 ], [ %5661, %5652 ], [ %5586, %5651 ]
  %5666 = phi float [ %5591, %5640 ], [ %5591, %5641 ], [ %5580, %5652 ], [ %5580, %5651 ]
  %5667 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %5667, align 4, !tbaa !134, !noalias !136
  %5668 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %5668, align 4, !tbaa !134, !noalias !136
  %5669 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %5669, align 4, !tbaa !134, !noalias !136
  %5670 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %5670, align 4, !tbaa !134, !noalias !136
  %5671 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %5671, align 4, !tbaa !134, !noalias !136
  %5672 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %5672, align 4, !tbaa !134, !noalias !136
  %5673 = icmp sgt i32 %5532, 0
  br i1 %5673, label %5674, label %5735

; <label>:5674                                    ; preds = %5662
  br label %5675

; <label>:5675                                    ; preds = %5724, %5674
  %5676 = phi i32 [ %5725, %5724 ], [ 0, %5674 ]
  %5677 = phi i32 [ %5726, %5724 ], [ 0, %5674 ]
  %5678 = add nuw i32 %5677, 171
  %5679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 %5678)  ; CBufferLoadLegacy(handle,regIndex)
  %5680 = extractvalue %dx.types.CBufRet.f32 %5679, 0
  %5681 = extractvalue %dx.types.CBufRet.f32 %5679, 1
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5685 = fsub fast float %5680, %5683
  %5686 = fsub fast float %5681, %5684
  %5687 = extractvalue %dx.types.CBufRet.f32 %5679, 2
  %5688 = fsub fast float -0.000000e+00, %5685
  %5689 = fsub fast float -0.000000e+00, %5686
  %5690 = call float @dx.op.dot2.f32(i32 54, float %5509, float %5510, float %5688, float %5689)  ; Dot2(ax,ay,bx,by)
  %5691 = fmul fast float %5690, 2.000000e+00
  %5692 = call float @dx.op.dot2.f32(i32 54, float %5688, float %5689, float %5688, float %5689)  ; Dot2(ax,ay,bx,by)
  %5693 = fmul fast float %5687, %5687
  %5694 = fsub fast float %5692, %5693
  %5695 = fmul fast float %5691, %5691
  %5696 = fmul fast float %5552, %5694
  %5697 = fsub fast float %5695, %5696
  %5698 = fcmp fast ogt float %5697, 0.000000e+00
  br i1 %5698, label %5699, label %5714

; <label>:5699                                    ; preds = %5675
  %5700 = fcmp fast ogt float %5691, 0.000000e+00
  %5701 = call float @dx.op.unary.f32(i32 24, float %5697)  ; Sqrt(value)
  %5702 = fsub fast float -0.000000e+00, %5701
  %5703 = select i1 %5700, float %5701, float %5702
  %5704 = fadd fast float %5703, %5691
  %5705 = fmul float %5704, -5.000000e-01
  %5706 = fdiv fast float %5705, %5545
  %5707 = call float @dx.op.binary.f32(i32 35, float %5706, float 0.000000e+00)  ; FMax(a,b)
  %5708 = call float @dx.op.binary.f32(i32 36, float %5580, float %5707)  ; FMin(a,b)
  %5709 = fdiv fast float %5694, %5705
  %5710 = call float @dx.op.binary.f32(i32 35, float %5709, float 0.000000e+00)  ; FMax(a,b)
  %5711 = call float @dx.op.binary.f32(i32 36, float %5580, float %5710)  ; FMin(a,b)
  %5712 = call float @dx.op.binary.f32(i32 36, float %5708, float %5711)  ; FMin(a,b)
  %5713 = call float @dx.op.binary.f32(i32 35, float %5708, float %5711)  ; FMax(a,b)
  br label %5714

; <label>:5714                                    ; preds = %5699, %5675
  %5715 = phi float [ %5713, %5699 ], [ -1.000000e+00, %5675 ]
  %5716 = phi float [ %5712, %5699 ], [ -1.000000e+00, %5675 ]
  %5717 = phi i1 [ true, %5699 ], [ false, %5675 ]
  br i1 %5717, label %5718, label %5724

; <label>:5718                                    ; preds = %5714
  %5719 = call float @dx.op.binary.f32(i32 35, float %5663, float %5716)  ; FMax(a,b)
  %5720 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %5677
  store float %5719, float* %5720, align 4, !tbaa !134, !noalias !136
  %5721 = call float @dx.op.binary.f32(i32 35, float %5663, float %5715)  ; FMax(a,b)
  %5722 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5677
  store float %5721, float* %5722, align 4, !tbaa !134, !noalias !136
  %5723 = add nsw i32 %5676, 1
  br label %5724

; <label>:5724                                    ; preds = %5718, %5714
  %5725 = phi i32 [ %5723, %5718 ], [ %5676, %5714 ]
  %5726 = add nuw nsw i32 %5677, 1
  %5727 = icmp eq i32 %5726, %5532
  br i1 %5727, label %5728, label %5675

; <label>:5728                                    ; preds = %5724
  %5729 = load float, float* %5669, align 4, !tbaa !134, !alias.scope !152, !noalias !155
  %5730 = load float, float* %5668, align 4, !tbaa !134, !alias.scope !158, !noalias !159
  %5731 = load float, float* %5667, align 4, !tbaa !134, !alias.scope !160, !noalias !161
  %5732 = load float, float* %5672, align 4, !tbaa !134, !alias.scope !162, !noalias !165
  %5733 = load float, float* %5671, align 4, !tbaa !134, !alias.scope !168, !noalias !169
  %5734 = load float, float* %5670, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  br label %5735

; <label>:5735                                    ; preds = %5728, %5662
  %5736 = phi float [ -1.000000e+00, %5662 ], [ %5734, %5728 ]
  %5737 = phi float [ -1.000000e+00, %5662 ], [ %5733, %5728 ]
  %5738 = phi float [ -1.000000e+00, %5662 ], [ %5732, %5728 ]
  %5739 = phi float [ -1.000000e+00, %5662 ], [ %5731, %5728 ]
  %5740 = phi float [ -1.000000e+00, %5662 ], [ %5730, %5728 ]
  %5741 = phi float [ -1.000000e+00, %5662 ], [ %5729, %5728 ]
  %5742 = phi i32 [ 0, %5662 ], [ %5725, %5728 ]
  %5743 = call float @dx.op.binary.f32(i32 36, float %5740, float %5741)  ; FMin(a,b)
  %5744 = call float @dx.op.binary.f32(i32 36, float %5739, float %5743)  ; FMin(a,b)
  %5745 = call float @dx.op.binary.f32(i32 35, float %5739, float %5740)  ; FMax(a,b)
  %5746 = call float @dx.op.binary.f32(i32 36, float %5745, float %5741)  ; FMin(a,b)
  %5747 = call float @dx.op.binary.f32(i32 36, float %5739, float %5740)  ; FMin(a,b)
  %5748 = call float @dx.op.binary.f32(i32 35, float %5747, float %5746)  ; FMax(a,b)
  %5749 = call float @dx.op.binary.f32(i32 35, float %5740, float %5741)  ; FMax(a,b)
  %5750 = call float @dx.op.binary.f32(i32 35, float %5739, float %5749)  ; FMax(a,b)
  store float %5744, float* %5667, align 4, !tbaa !134, !alias.scope !160, !noalias !161
  store float %5748, float* %5668, align 4, !tbaa !134, !alias.scope !158, !noalias !159
  store float %5750, float* %5669, align 4, !tbaa !134, !alias.scope !152, !noalias !155
  %5751 = call float @dx.op.binary.f32(i32 36, float %5737, float %5738)  ; FMin(a,b)
  %5752 = call float @dx.op.binary.f32(i32 36, float %5736, float %5751)  ; FMin(a,b)
  %5753 = call float @dx.op.binary.f32(i32 35, float %5736, float %5737)  ; FMax(a,b)
  %5754 = call float @dx.op.binary.f32(i32 36, float %5753, float %5738)  ; FMin(a,b)
  %5755 = call float @dx.op.binary.f32(i32 36, float %5736, float %5737)  ; FMin(a,b)
  %5756 = call float @dx.op.binary.f32(i32 35, float %5755, float %5754)  ; FMax(a,b)
  %5757 = call float @dx.op.binary.f32(i32 35, float %5737, float %5738)  ; FMax(a,b)
  %5758 = call float @dx.op.binary.f32(i32 35, float %5736, float %5757)  ; FMax(a,b)
  store float %5752, float* %5670, align 4, !tbaa !134, !alias.scope !170, !noalias !171
  store float %5756, float* %5671, align 4, !tbaa !134, !alias.scope !168, !noalias !169
  store float %5758, float* %5672, align 4, !tbaa !134, !alias.scope !162, !noalias !165
  %5759 = sub nsw i32 3, %5742
  %5760 = icmp sgt i32 %5759, 2
  br i1 %5760, label %5761, label %5799

; <label>:5761                                    ; preds = %5735
  %5762 = icmp eq i32 %5530, 0
  %5763 = fsub fast float %5580, %5664
  %5764 = select i1 %5762, float %5763, float %5664
  %5765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.CBufRet.f32 %5765, 1
  %5768 = extractvalue %dx.types.CBufRet.f32 %5765, 2
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.CBufRet.f32 %5769, 2
  %5773 = extractvalue %dx.types.CBufRet.f32 %5769, 3
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5776 = call float @dx.op.binary.f32(i32 36, float %5665, float %5775)  ; FMin(a,b)
  %5777 = fmul fast float %5773, %5764
  %5778 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5779 = fsub fast float %5770, %5766
  %5780 = fsub fast float %5771, %5767
  %5781 = fsub fast float %5772, %5768
  %5782 = fmul fast float %5778, %5779
  %5783 = fmul fast float %5778, %5780
  %5784 = fmul fast float %5778, %5781
  %5785 = fadd fast float %5782, %5766
  %5786 = fadd fast float %5783, %5767
  %5787 = fadd fast float %5784, %5768
  %5788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.CBufRet.f32 %5788, 1
  %5791 = fadd fast float %5790, %5789
  %5792 = call float @dx.op.unary.f32(i32 7, float %5791)  ; Saturate(value)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5788, 2
  %5794 = extractvalue %dx.types.CBufRet.f32 %5788, 3
  %5795 = fadd fast float %5794, %5793
  %5796 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5797 = fmul fast float %5792, %5776
  %5798 = fmul fast float %5797, %5796
  br label %5881

; <label>:5799                                    ; preds = %5735
  %5800 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %5759
  %5801 = load float, float* %5800, align 4, !tbaa !134, !noalias !136
  %5802 = fcmp fast olt float %5801, %5666
  %5803 = icmp sgt i32 %5742, 0
  %5804 = and i1 %5803, %5802
  br i1 %5804, label %5805, label %5842

; <label>:5805                                    ; preds = %5799
  br label %5806

; <label>:5806                                    ; preds = %5835, %5805
  %5807 = phi float [ %5836, %5835 ], [ %5664, %5805 ]
  %5808 = phi float [ %5837, %5835 ], [ %5665, %5805 ]
  %5809 = phi float [ %5817, %5835 ], [ %5801, %5805 ]
  %5810 = phi i32 [ %5814, %5835 ], [ %5759, %5805 ]
  %5811 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %5810
  %5812 = load float, float* %5811, align 4, !tbaa !134, !noalias !136
  %5813 = icmp slt i32 %5810, 2
  %5814 = add nsw i32 %5810, 1
  %5815 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %5814
  %5816 = load float, float* %5815, align 4, !tbaa !134, !noalias !136
  %5817 = select i1 %5813, float %5816, float %5580
  %5818 = call float @dx.op.binary.f32(i32 36, float %5817, float %5812)  ; FMin(a,b)
  %5819 = call float @dx.op.binary.f32(i32 36, float %5666, float %5818)  ; FMin(a,b)
  %5820 = icmp eq i32 %5530, 0
  %5821 = fadd fast float %5819, %5809
  %5822 = fmul fast float %5821, %5511
  %5823 = fadd fast float %5822, %5524
  br i1 %5820, label %5829, label %5824

; <label>:5824                                    ; preds = %5806
  %5825 = fsub fast float %5819, %5809
  %5826 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5825)  ; FMax(a,b)
  %5827 = fmul fast float %5826, %5823
  %5828 = fadd fast float %5827, %5808
  br label %5835

; <label>:5829                                    ; preds = %5806
  %5830 = fsub fast float %5809, %5819
  %5831 = call float @dx.op.unary.f32(i32 6, float %5830)  ; FAbs(value)
  %5832 = fadd fast float %5831, %5807
  %5833 = fmul fast float %5831, %5823
  %5834 = fsub fast float %5808, %5833
  br label %5835

; <label>:5835                                    ; preds = %5829, %5824
  %5836 = phi float [ %5826, %5824 ], [ %5832, %5829 ]
  %5837 = phi float [ %5828, %5824 ], [ %5834, %5829 ]
  %5838 = fcmp fast olt float %5817, %5666
  %5839 = icmp slt i32 %5814, 3
  %5840 = and i1 %5839, %5838
  br i1 %5840, label %5806, label %5841

; <label>:5841                                    ; preds = %5835
  br label %5842

; <label>:5842                                    ; preds = %5841, %5799
  %5843 = phi float [ %5664, %5799 ], [ %5836, %5841 ]
  %5844 = phi float [ %5665, %5799 ], [ %5837, %5841 ]
  %5845 = fsub fast float %5580, %5843
  %5846 = select i1 %5582, float %5843, float %5845
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5850 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.CBufRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.CBufRet.f32 %5851, 2
  %5855 = extractvalue %dx.types.CBufRet.f32 %5851, 3
  %5856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.f32 %5856, 3
  %5858 = call float @dx.op.binary.f32(i32 36, float %5844, float %5857)  ; FMin(a,b)
  %5859 = fmul fast float %5855, %5846
  %5860 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5861 = fsub fast float %5852, %5848
  %5862 = fsub fast float %5853, %5849
  %5863 = fsub fast float %5854, %5850
  %5864 = fmul fast float %5860, %5861
  %5865 = fmul fast float %5860, %5862
  %5866 = fmul fast float %5860, %5863
  %5867 = fadd fast float %5864, %5848
  %5868 = fadd fast float %5865, %5849
  %5869 = fadd fast float %5866, %5850
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.CBufRet.f32 %5870, 1
  %5873 = fadd fast float %5872, %5871
  %5874 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5870, 2
  %5876 = extractvalue %dx.types.CBufRet.f32 %5870, 3
  %5877 = fadd fast float %5876, %5875
  %5878 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  %5879 = fmul fast float %5874, %5858
  %5880 = fmul fast float %5879, %5878
  br label %5881

; <label>:5881                                    ; preds = %5842, %5761, %5596, %5578, %5576
  %5882 = phi float [ %5605, %5596 ], [ %5764, %5761 ], [ %5846, %5842 ], [ 0.000000e+00, %5576 ], [ 0.000000e+00, %5578 ]
  %5883 = phi float [ %5639, %5596 ], [ %5798, %5761 ], [ %5880, %5842 ], [ 0.000000e+00, %5576 ], [ 0.000000e+00, %5578 ]
  %5884 = phi float [ %5626, %5596 ], [ %5785, %5761 ], [ %5867, %5842 ], [ 0.000000e+00, %5576 ], [ 0.000000e+00, %5578 ]
  %5885 = phi float [ %5627, %5596 ], [ %5786, %5761 ], [ %5868, %5842 ], [ 0.000000e+00, %5576 ], [ 0.000000e+00, %5578 ]
  %5886 = phi float [ %5628, %5596 ], [ %5787, %5761 ], [ %5869, %5842 ], [ 0.000000e+00, %5576 ], [ 0.000000e+00, %5578 ]
  %5887 = fmul fast float %5519, %5883
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5890 = fsub fast float %5526, %5889
  %5891 = fcmp fast olt float %5887, -2.000000e+01
  %5892 = call float @dx.op.unary.f32(i32 21, float %5887)  ; Exp(value)
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 2
  %5895 = extractvalue %dx.types.CBufRet.f32 %5893, 3
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5898 = fmul fast float %5895, %5890
  %5899 = call float @dx.op.unary.f32(i32 7, float %5898)  ; Saturate(value)
  %5900 = fsub fast float 1.000000e+00, %5899
  %5901 = fmul fast float %5511, 5.000000e-01
  %5902 = fadd fast float %5901, 5.000000e-01
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = fsub fast float 1.000000e+00, %5903
  %5905 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5900)  ; FMax(a,b)
  %5906 = fdiv fast float %5904, %5905
  %5907 = fsub fast float %5890, %5468
  %5908 = call float @dx.op.unary.f32(i32 6, float %5907)  ; FAbs(value)
  %5909 = fmul fast float %5908, %5894
  %5910 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5911 = fsub fast float 1.000000e+00, %5909
  %5912 = fmul fast float %5911, %5910
  %5913 = fadd fast float %5912, %5909
  %5914 = fmul fast float %5897, %5890
  %5915 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5916 = fsub fast float 1.000000e+00, %5913
  %5917 = fmul fast float %5916, %5915
  %5918 = fadd fast float %5917, %5913
  %5919 = call float @dx.op.unary.f32(i32 7, float %5918)  ; Saturate(value)
  %5920 = fadd fast float %5892, -1.000000e+00
  %5921 = select i1 %5891, float -1.000000e+00, float %5920
  %5922 = fmul fast float %5919, %5921
  %5923 = fadd fast float %5922, 1.000000e+00
  %5924 = fsub fast float -0.000000e+00, %5922
  %5925 = fmul fast float %5884, %5924
  %5926 = fmul fast float %5885, %5924
  %5927 = fmul fast float %5886, %5924
  br label %5928

; <label>:5928                                    ; preds = %5881, %5477
  %5929 = phi float [ %5882, %5881 ], [ 0.000000e+00, %5477 ]
  %5930 = phi float [ %5923, %5881 ], [ 1.000000e+00, %5477 ]
  %5931 = phi float [ %5925, %5881 ], [ 0.000000e+00, %5477 ]
  %5932 = phi float [ %5926, %5881 ], [ 0.000000e+00, %5477 ]
  %5933 = phi float [ %5927, %5881 ], [ 0.000000e+00, %5477 ]
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5936 = fsub fast float 1.000000e+00, %5930
  %5937 = fmul fast float %5936, %5512
  %5938 = fmul fast float %5937, %5935
  %5939 = fsub fast float %5512, %5938
  br i1 %5505, label %5940, label %5969, !dx.controlflow.hints !172

; <label>:5940                                    ; preds = %5928
  %5941 = fmul fast float %5513, %5502
  %5942 = fadd fast float %5941, %5503
  %5943 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5944 = fmul fast float %5484, %5939
  %5945 = fsub fast float -0.000000e+00, %5944
  %5946 = fmul fast float %5485, %5939
  %5947 = fsub fast float -0.000000e+00, %5946
  %5948 = call float @dx.op.unary.f32(i32 21, float %5945)  ; Exp(value)
  %5949 = call float @dx.op.unary.f32(i32 21, float %5947)  ; Exp(value)
  %5950 = call float @dx.op.binary.f32(i32 35, float %5492, float %5948)  ; FMax(a,b)
  %5951 = call float @dx.op.binary.f32(i32 35, float %5492, float %5949)  ; FMax(a,b)
  %5952 = fsub fast float %5951, %5950
  %5953 = fmul fast float %5952, %5943
  %5954 = fadd fast float %5953, %5950
  %5955 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5956 = fsub fast float %5489, %5494
  %5957 = fsub fast float %5490, %5495
  %5958 = fsub fast float %5491, %5496
  %5959 = fmul fast float %5943, %5956
  %5960 = fmul fast float %5943, %5957
  %5961 = fmul fast float %5943, %5958
  %5962 = fadd fast float %5959, %5494
  %5963 = fadd fast float %5960, %5495
  %5964 = fadd fast float %5961, %5496
  %5965 = fsub fast float 1.000000e+00, %5955
  %5966 = fmul fast float %5965, %5962
  %5967 = fmul fast float %5965, %5963
  %5968 = fmul fast float %5965, %5964
  br label %6028

; <label>:5969                                    ; preds = %5928
  %5970 = fmul fast float %5939, %5501
  %5971 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5972 = fsub fast float 2.000000e+00, %5971
  %5973 = fmul fast float %5971, 9.921875e-01
  %5974 = fmul fast float %5973, %5972
  %5975 = fadd fast float %5974, 3.906250e-03
  %5976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %58, float %5975, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5977 = extractvalue %dx.types.ResRet.f32 %5976, 0
  %5978 = fsub fast float %5971, %5977
  %5979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5978)  ; FMax(a,b)
  %5980 = fmul fast float %5487, %5468
  %5981 = call float @dx.op.unary.f32(i32 6, float %5980)  ; FAbs(value)
  %5982 = fcmp fast ogt float %5981, 0x3EB0C6F7A0000000
  br i1 %5982, label %5983, label %5989, !dx.controlflow.hints !173

; <label>:5983                                    ; preds = %5969
  %5984 = fmul fast float %5980, 0xBFF7154760000000
  %5985 = call float @dx.op.unary.f32(i32 21, float %5984)  ; Exp(value)
  %5986 = fsub fast float 1.000000e+00, %5985
  %5987 = fdiv fast float %5986, %5980
  %5988 = fmul fast float %5987, %5497
  br label %5989

; <label>:5989                                    ; preds = %5983, %5969
  %5990 = phi float [ %5988, %5983 ], [ %5497, %5969 ]
  %5991 = fadd fast float %5990, %5499
  %5992 = fmul fast float %5991, %5979
  %5993 = fmul fast float %5484, %5992
  %5994 = fsub fast float -0.000000e+00, %5993
  %5995 = fmul fast float %5485, %5992
  %5996 = fsub fast float -0.000000e+00, %5995
  %5997 = fmul fast float %5486, %5992
  %5998 = fsub fast float -0.000000e+00, %5997
  %5999 = call float @dx.op.unary.f32(i32 21, float %5994)  ; Exp(value)
  %6000 = call float @dx.op.unary.f32(i32 21, float %5996)  ; Exp(value)
  %6001 = call float @dx.op.unary.f32(i32 21, float %5998)  ; Exp(value)
  %6002 = fmul fast float %5513, %5513
  %6003 = fadd fast float %6002, 1.000000e+00
  %6004 = fmul fast float %6003, 0x3FAE8EC8A0000000
  %6005 = fmul fast float %6004, %5494
  %6006 = fmul fast float %6004, %5495
  %6007 = fmul fast float %6004, %5496
  %6008 = fmul fast float %5513, %5492
  %6009 = fsub fast float 1.000000e+00, %6008
  %6010 = fmul fast float %5492, %5492
  %6011 = fsub fast float 1.000000e+00, %6010
  %6012 = fmul fast float %6011, 0x3FB45F3060000000
  %6013 = fmul fast float %6009, %6009
  %6014 = fdiv fast float 1.000000e+00, %6013
  %6015 = fmul fast float %6012, %6014
  %6016 = fmul fast float %6015, %5489
  %6017 = fmul fast float %6015, %5490
  %6018 = fmul fast float %6015, %5491
  %6019 = fadd fast float %6016, %6005
  %6020 = fadd fast float %6017, %6006
  %6021 = fadd fast float %6018, %6007
  %6022 = fsub fast float 1.000000e+00, %5999
  %6023 = fsub fast float 1.000000e+00, %6000
  %6024 = fsub fast float 1.000000e+00, %6001
  %6025 = fmul fast float %6019, %6022
  %6026 = fmul fast float %6020, %6023
  %6027 = fmul fast float %6021, %6024
  br label %6028

; <label>:6028                                    ; preds = %5989, %5940
  %6029 = phi float [ %5966, %5940 ], [ %6025, %5989 ]
  %6030 = phi float [ %5967, %5940 ], [ %6026, %5989 ]
  %6031 = phi float [ %5968, %5940 ], [ %6027, %5989 ]
  %6032 = phi float [ %5955, %5940 ], [ %5999, %5989 ]
  %6033 = phi float [ %5955, %5940 ], [ %6000, %5989 ]
  %6034 = phi float [ %5955, %5940 ], [ %6001, %5989 ]
  br i1 %5521, label %6035, label %6233, !dx.controlflow.hints !174

; <label>:6035                                    ; preds = %6028
  %6036 = extractvalue %dx.types.CBufRet.f32 %5934, 0
  %6037 = fmul fast float %6036, %5936
  %6038 = fsub fast float %5931, %6029
  %6039 = fsub fast float %5932, %6030
  %6040 = fsub fast float %5933, %6031
  %6041 = fmul fast float %6037, %6038
  %6042 = fmul fast float %6037, %6039
  %6043 = fmul fast float %6037, %6040
  %6044 = fadd fast float %6041, %6029
  %6045 = fadd fast float %6042, %6030
  %6046 = fadd fast float %6043, %6031
  %6047 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6032)  ; FMax(a,b)
  %6048 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6033)  ; FMax(a,b)
  %6049 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6034)  ; FMax(a,b)
  %6050 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5930)  ; FMax(a,b)
  %6051 = call float @dx.op.binary.f32(i32 35, float %5929, float %5939)  ; FMax(a,b)
  %6052 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6051)  ; FMax(a,b)
  %6053 = fdiv fast float %5929, %6052
  %6054 = call float @dx.op.unary.f32(i32 7, float %6053)  ; Saturate(value)
  %6055 = fdiv fast float %5939, %6052
  %6056 = call float @dx.op.unary.f32(i32 7, float %6055)  ; Saturate(value)
  %6057 = fcmp fast une float %6050, 1.000000e+00
  br i1 %6057, label %6058, label %6071, !dx.controlflow.hints !175

; <label>:6058                                    ; preds = %6035
  %6059 = call float @dx.op.unary.f32(i32 23, float %6050)  ; Log(value)
  %6060 = fmul fast float %6059, 0x3FE62E4300000000
  %6061 = fmul fast float %5931, %6060
  %6062 = fsub fast float -0.000000e+00, %6061
  %6063 = fmul fast float %5932, %6060
  %6064 = fsub fast float -0.000000e+00, %6063
  %6065 = fmul fast float %5933, %6060
  %6066 = fsub fast float -0.000000e+00, %6065
  %6067 = fsub fast float 1.000000e+00, %6050
  %6068 = fdiv fast float %6062, %6067
  %6069 = fdiv fast float %6064, %6067
  %6070 = fdiv fast float %6066, %6067
  br label %6071

; <label>:6071                                    ; preds = %6058, %6035
  %6072 = phi float [ %6068, %6058 ], [ %5931, %6035 ]
  %6073 = phi float [ %6069, %6058 ], [ %5932, %6035 ]
  %6074 = phi float [ %6070, %6058 ], [ %5933, %6035 ]
  %6075 = phi float [ %6060, %6058 ], [ 0.000000e+00, %6035 ]
  %6076 = fcmp fast une float %6047, 1.000000e+00
  br i1 %6076, label %6077, label %6084, !dx.controlflow.hints !176

; <label>:6077                                    ; preds = %6071
  %6078 = call float @dx.op.unary.f32(i32 23, float %6047)  ; Log(value)
  %6079 = fmul fast float %6078, 0x3FE62E4300000000
  %6080 = fmul fast float %6044, %6079
  %6081 = fsub fast float -0.000000e+00, %6080
  %6082 = fsub fast float 1.000000e+00, %6047
  %6083 = fdiv fast float %6081, %6082
  br label %6084

; <label>:6084                                    ; preds = %6077, %6071
  %6085 = phi float [ %6083, %6077 ], [ %6044, %6071 ]
  %6086 = phi float [ %6079, %6077 ], [ 0.000000e+00, %6071 ]
  %6087 = fcmp fast une float %6048, 1.000000e+00
  br i1 %6087, label %6088, label %6095, !dx.controlflow.hints !176

; <label>:6088                                    ; preds = %6084
  %6089 = call float @dx.op.unary.f32(i32 23, float %6048)  ; Log(value)
  %6090 = fmul fast float %6089, 0x3FE62E4300000000
  %6091 = fmul fast float %6045, %6090
  %6092 = fsub fast float -0.000000e+00, %6091
  %6093 = fsub fast float 1.000000e+00, %6048
  %6094 = fdiv fast float %6092, %6093
  br label %6095

; <label>:6095                                    ; preds = %6088, %6084
  %6096 = phi float [ %6094, %6088 ], [ %6045, %6084 ]
  %6097 = phi float [ %6090, %6088 ], [ 0.000000e+00, %6084 ]
  %6098 = fcmp fast une float %6049, 1.000000e+00
  br i1 %6098, label %6099, label %6106, !dx.controlflow.hints !176

; <label>:6099                                    ; preds = %6095
  %6100 = call float @dx.op.unary.f32(i32 23, float %6049)  ; Log(value)
  %6101 = fmul fast float %6100, 0x3FE62E4300000000
  %6102 = fmul fast float %6046, %6101
  %6103 = fsub fast float -0.000000e+00, %6102
  %6104 = fsub fast float 1.000000e+00, %6049
  %6105 = fdiv fast float %6103, %6104
  br label %6106

; <label>:6106                                    ; preds = %6099, %6095
  %6107 = phi float [ %6105, %6099 ], [ %6046, %6095 ]
  %6108 = phi float [ %6101, %6099 ], [ 0.000000e+00, %6095 ]
  %6109 = fmul fast float %6072, %6056
  %6110 = fmul fast float %6073, %6056
  %6111 = fmul fast float %6074, %6056
  %6112 = fmul fast float %6075, %6056
  %6113 = fmul fast float %6085, %6054
  %6114 = fmul fast float %6096, %6054
  %6115 = fmul fast float %6107, %6054
  %6116 = fmul fast float %6086, %6054
  %6117 = fmul fast float %6097, %6054
  %6118 = fmul fast float %6108, %6054
  %6119 = fadd fast float %6113, %6109
  %6120 = fadd fast float %6114, %6110
  %6121 = fadd fast float %6115, %6111
  %6122 = fadd fast float %6116, %6112
  %6123 = fadd fast float %6117, %6112
  %6124 = fadd fast float %6118, %6112
  %6125 = fcmp fast une float %6122, 0.000000e+00
  br i1 %6125, label %6126, label %6133, !dx.controlflow.hints !177

; <label>:6126                                    ; preds = %6106
  %6127 = fmul fast float %6122, 0x3FF7154760000000
  %6128 = call float @dx.op.unary.f32(i32 21, float %6127)  ; Exp(value)
  %6129 = fsub fast float 1.000000e+00, %6128
  %6130 = fmul fast float %6119, %6129
  %6131 = fsub fast float -0.000000e+00, %6130
  %6132 = fdiv fast float %6131, %6122
  br label %6133

; <label>:6133                                    ; preds = %6126, %6106
  %6134 = phi float [ %6128, %6126 ], [ 1.000000e+00, %6106 ]
  %6135 = phi float [ %6132, %6126 ], [ %6119, %6106 ]
  %6136 = fcmp fast une float %6123, 0.000000e+00
  br i1 %6136, label %6137, label %6144, !dx.controlflow.hints !177

; <label>:6137                                    ; preds = %6133
  %6138 = fmul fast float %6123, 0x3FF7154760000000
  %6139 = call float @dx.op.unary.f32(i32 21, float %6138)  ; Exp(value)
  %6140 = fsub fast float 1.000000e+00, %6139
  %6141 = fmul fast float %6120, %6140
  %6142 = fsub fast float -0.000000e+00, %6141
  %6143 = fdiv fast float %6142, %6123
  br label %6144

; <label>:6144                                    ; preds = %6137, %6133
  %6145 = phi float [ %6139, %6137 ], [ 1.000000e+00, %6133 ]
  %6146 = phi float [ %6143, %6137 ], [ %6120, %6133 ]
  %6147 = fcmp fast une float %6124, 0.000000e+00
  br i1 %6147, label %6148, label %6155, !dx.controlflow.hints !177

; <label>:6148                                    ; preds = %6144
  %6149 = fmul fast float %6124, 0x3FF7154760000000
  %6150 = call float @dx.op.unary.f32(i32 21, float %6149)  ; Exp(value)
  %6151 = fsub fast float 1.000000e+00, %6150
  %6152 = fmul fast float %6121, %6151
  %6153 = fsub fast float -0.000000e+00, %6152
  %6154 = fdiv fast float %6153, %6124
  br label %6155

; <label>:6155                                    ; preds = %6148, %6144
  %6156 = phi float [ %6150, %6148 ], [ 1.000000e+00, %6144 ]
  %6157 = phi float [ %6154, %6148 ], [ %6121, %6144 ]
  %6158 = fcmp fast ogt float %6054, %6056
  br i1 %6158, label %6159, label %6179

; <label>:6159                                    ; preds = %6155
  %6160 = fsub fast float 1.000000e+00, %6056
  %6161 = fmul fast float %6072, %6160
  %6162 = fmul fast float %6073, %6160
  %6163 = fmul fast float %6074, %6160
  %6164 = fmul fast float %6075, %6160
  %6165 = fcmp fast une float %6164, 0.000000e+00
  br i1 %6165, label %6166, label %6217, !dx.controlflow.hints !178

; <label>:6166                                    ; preds = %6159
  %6167 = fmul fast float %6164, 0x3FF7154760000000
  %6168 = call float @dx.op.unary.f32(i32 21, float %6167)  ; Exp(value)
  %6169 = fsub fast float 1.000000e+00, %6168
  %6170 = fmul fast float %6161, %6169
  %6171 = fsub fast float -0.000000e+00, %6170
  %6172 = fmul fast float %6162, %6169
  %6173 = fsub fast float -0.000000e+00, %6172
  %6174 = fmul fast float %6163, %6169
  %6175 = fsub fast float -0.000000e+00, %6174
  %6176 = fdiv fast float %6171, %6164
  %6177 = fdiv fast float %6173, %6164
  %6178 = fdiv fast float %6175, %6164
  br label %6217

; <label>:6179                                    ; preds = %6155
  %6180 = fsub fast float 1.000000e+00, %6054
  %6181 = fmul fast float %6085, %6180
  %6182 = fmul fast float %6096, %6180
  %6183 = fmul fast float %6107, %6180
  %6184 = fmul fast float %6086, %6180
  %6185 = fmul fast float %6097, %6180
  %6186 = fmul fast float %6108, %6180
  %6187 = fcmp fast une float %6184, 0.000000e+00
  br i1 %6187, label %6188, label %6195, !dx.controlflow.hints !177

; <label>:6188                                    ; preds = %6179
  %6189 = fmul fast float %6184, 0x3FF7154760000000
  %6190 = call float @dx.op.unary.f32(i32 21, float %6189)  ; Exp(value)
  %6191 = fsub fast float 1.000000e+00, %6190
  %6192 = fmul fast float %6181, %6191
  %6193 = fsub fast float -0.000000e+00, %6192
  %6194 = fdiv fast float %6193, %6184
  br label %6195

; <label>:6195                                    ; preds = %6188, %6179
  %6196 = phi float [ %6194, %6188 ], [ %6181, %6179 ]
  %6197 = phi float [ %6190, %6188 ], [ 1.000000e+00, %6179 ]
  %6198 = fcmp fast une float %6185, 0.000000e+00
  br i1 %6198, label %6199, label %6206, !dx.controlflow.hints !177

; <label>:6199                                    ; preds = %6195
  %6200 = fmul fast float %6185, 0x3FF7154760000000
  %6201 = call float @dx.op.unary.f32(i32 21, float %6200)  ; Exp(value)
  %6202 = fsub fast float 1.000000e+00, %6201
  %6203 = fmul fast float %6182, %6202
  %6204 = fsub fast float -0.000000e+00, %6203
  %6205 = fdiv fast float %6204, %6185
  br label %6206

; <label>:6206                                    ; preds = %6199, %6195
  %6207 = phi float [ %6205, %6199 ], [ %6182, %6195 ]
  %6208 = phi float [ %6201, %6199 ], [ 1.000000e+00, %6195 ]
  %6209 = fcmp fast une float %6186, 0.000000e+00
  br i1 %6209, label %6210, label %6217, !dx.controlflow.hints !177

; <label>:6210                                    ; preds = %6206
  %6211 = fmul fast float %6186, 0x3FF7154760000000
  %6212 = call float @dx.op.unary.f32(i32 21, float %6211)  ; Exp(value)
  %6213 = fsub fast float 1.000000e+00, %6212
  %6214 = fmul fast float %6183, %6213
  %6215 = fsub fast float -0.000000e+00, %6214
  %6216 = fdiv fast float %6215, %6186
  br label %6217

; <label>:6217                                    ; preds = %6210, %6206, %6166, %6159
  %6218 = phi float [ %6216, %6210 ], [ %6178, %6166 ], [ %6163, %6159 ], [ %6183, %6206 ]
  %6219 = phi float [ %6207, %6210 ], [ %6177, %6166 ], [ %6162, %6159 ], [ %6207, %6206 ]
  %6220 = phi float [ %6196, %6210 ], [ %6176, %6166 ], [ %6161, %6159 ], [ %6196, %6206 ]
  %6221 = phi float [ %6212, %6210 ], [ %6168, %6166 ], [ 1.000000e+00, %6159 ], [ 1.000000e+00, %6206 ]
  %6222 = phi float [ %6208, %6210 ], [ %6168, %6166 ], [ 1.000000e+00, %6159 ], [ %6208, %6206 ]
  %6223 = phi float [ %6197, %6210 ], [ %6168, %6166 ], [ 1.000000e+00, %6159 ], [ %6197, %6206 ]
  %6224 = fmul fast float %6223, %6135
  %6225 = fmul fast float %6222, %6146
  %6226 = fmul fast float %6221, %6157
  %6227 = fadd fast float %6224, %6220
  %6228 = fadd fast float %6225, %6219
  %6229 = fadd fast float %6226, %6218
  %6230 = fmul fast float %6223, %6134
  %6231 = fmul fast float %6222, %6145
  %6232 = fmul fast float %6221, %6156
  br label %6233

; <label>:6233                                    ; preds = %6217, %6028
  %6234 = phi float [ %6232, %6217 ], [ %6034, %6028 ]
  %6235 = phi float [ %6231, %6217 ], [ %6033, %6028 ]
  %6236 = phi float [ %6230, %6217 ], [ %6032, %6028 ]
  %6237 = phi float [ %6229, %6217 ], [ %6031, %6028 ]
  %6238 = phi float [ %6228, %6217 ], [ %6030, %6028 ]
  %6239 = phi float [ %6227, %6217 ], [ %6029, %6028 ]
  %6240 = fmul fast float %6239, %5177
  %6241 = fmul fast float %6238, %5177
  %6242 = fmul fast float %6237, %5177
  %6243 = fmul fast float %6236, %5476
  %6244 = call float @dx.op.dot3.f32(i32 55, float %6236, float %6235, float %6234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6245 = call float @dx.op.dot3.f32(i32 55, float %6240, float %6241, float %6242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6246 = select i1 %228, float %6244, float %6236
  %6247 = select i1 %228, float %6244, float %6235
  %6248 = select i1 %228, float 1.000000e+00, float %6234
  %6249 = select i1 %228, float %6245, float %6240
  %6250 = select i1 %228, float 0.000000e+00, float %6241
  %6251 = select i1 %228, float 0.000000e+00, float %6242
  %6252 = fmul fast float %6246, %5470
  %6253 = fmul fast float %6247, %5471
  %6254 = fmul fast float %6248, %5472
  %6255 = fadd fast float %6252, %6249
  %6256 = fadd fast float %6253, %6250
  %6257 = fadd fast float %6251, %6254
  %6258 = fmul fast float %6246, %5473
  %6259 = fmul fast float %6247, %5474
  %6260 = fmul fast float %6248, %5475
  %6261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.i32 %6261, 0
  %6263 = icmp eq i32 %6262, 0
  br i1 %6263, label %6631, label %6264, !dx.controlflow.hints !179

; <label>:6264                                    ; preds = %6233
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 2
  %6267 = extractvalue %dx.types.CBufRet.f32 %6265, 3
  %6268 = fmul fast float %6266, %90
  %6269 = fmul fast float %6267, %91
  %6270 = fmul fast float %6268, 2.000000e+00
  %6271 = fmul fast float %6269, 2.000000e+00
  %6272 = fsub fast float 1.000000e+00, %6270
  %6273 = fsub fast float 1.000000e+00, %6271
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.CBufRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.CBufRet.f32 %6274, 2
  %6278 = fmul fast float %6272, %6275
  %6279 = fmul fast float %6272, %6276
  %6280 = fmul fast float %6272, %6277
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.CBufRet.f32 %6281, 1
  %6284 = extractvalue %dx.types.CBufRet.f32 %6281, 2
  %6285 = fmul fast float %6273, %6282
  %6286 = fmul fast float %6273, %6283
  %6287 = fmul fast float %6273, %6284
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 0
  %6290 = extractvalue %dx.types.CBufRet.f32 %6288, 1
  %6291 = extractvalue %dx.types.CBufRet.f32 %6288, 2
  %6292 = fadd fast float %6285, %6289
  %6293 = fadd fast float %6292, %6278
  %6294 = fadd fast float %6286, %6290
  %6295 = fadd fast float %6294, %6279
  %6296 = fadd fast float %6287, %6291
  %6297 = fadd fast float %6296, %6280
  %6298 = fmul fast float %6293, %5469
  %6299 = fmul fast float %6295, %5469
  %6300 = fmul fast float %6297, %5469
  %6301 = fmul fast float %6298, %6298
  %6302 = fmul fast float %6299, %6299
  %6303 = fadd fast float %6301, %6302
  %6304 = fmul fast float %6300, %6300
  %6305 = fadd fast float %6303, %6304
  %6306 = call float @dx.op.unary.f32(i32 24, float %6305)  ; Sqrt(value)
  %6307 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %6308 = fsub fast float %6306, %6307
  %6309 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %6310 = fmul fast float %6308, %6309
  %6311 = call float @dx.op.unary.f32(i32 7, float %6310)  ; Saturate(value)
  %6312 = fadd fast float %6311, -5.000000e-01
  %6313 = fmul fast float %6312, 2.000000e+00
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 2
  %6316 = call float @dx.op.binary.f32(i32 36, float %6315, float %6313)  ; FMin(a,b)
  %6317 = fsub fast float -0.000000e+00, %6315
  %6318 = fcmp fast ogt float %6316, %6317
  br i1 %6318, label %6319, label %6631, !dx.controlflow.hints !180

; <label>:6319                                    ; preds = %6264
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 3
  %6322 = fcmp fast ogt float %6321, 0.000000e+00
  br i1 %6322, label %6323, label %6398, !dx.controlflow.hints !181

; <label>:6323                                    ; preds = %6319
  %6324 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6325 = extractvalue %dx.types.Dimensions %6324, 0
  %6326 = sitofp i32 %6325 to float
  %6327 = extractvalue %dx.types.Dimensions %6324, 1
  %6328 = sitofp i32 %6327 to float
  %6329 = fmul fast float %6268, %6326
  %6330 = fmul fast float %6269, %6328
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 1
  %6333 = fsub fast float -0.000000e+00, %6332
  %6334 = fptoui float %6333 to i32
  %6335 = fptoui float %6329 to i32
  %6336 = fptoui float %6330 to i32
  %6337 = and i32 %6334, 31
  %6338 = lshr i32 %6335, %6337
  %6339 = lshr i32 %6336, %6337
  %6340 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6334, i32 %6338, i32 %6339, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6341 = extractvalue %dx.types.ResRet.f32 %6340, 0
  %6342 = fcmp fast olt float %6341, -1.000000e+00
  %6343 = fcmp fast ogt float %6341, -1.000000e+00
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6346 = select i1 %6343, float %6345, float 1.000000e+00
  %6347 = fadd fast float %6341, 1.000000e+00
  %6348 = fmul fast float %6346, %6347
  %6349 = call float @dx.op.unary.f32(i32 6, float %6348)  ; FAbs(value)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6344, 3
  %6351 = fcmp fast oge float %6349, %6350
  %6352 = select i1 %6351, float 0x4197782600000000, float %6349
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.CBufRet.f32 %6353, 2
  %6357 = select i1 %6342, float %6354, float %6275
  %6358 = select i1 %6342, float %6355, float %6276
  %6359 = select i1 %6342, float %6356, float %6277
  %6360 = fmul fast float %6357, %6272
  %6361 = fmul fast float %6358, %6272
  %6362 = fmul fast float %6359, %6272
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.CBufRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6367 = select i1 %6342, float %6364, float %6282
  %6368 = select i1 %6342, float %6365, float %6283
  %6369 = select i1 %6342, float %6366, float %6284
  %6370 = fmul fast float %6367, %6273
  %6371 = fmul fast float %6368, %6273
  %6372 = fmul fast float %6369, %6273
  %6373 = fadd fast float %6370, %6360
  %6374 = fadd fast float %6371, %6361
  %6375 = fadd fast float %6372, %6362
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.CBufRet.f32 %6376, 1
  %6379 = extractvalue %dx.types.CBufRet.f32 %6376, 2
  %6380 = select i1 %6342, float %6377, float %6289
  %6381 = select i1 %6342, float %6378, float %6290
  %6382 = select i1 %6342, float %6379, float %6291
  %6383 = fadd fast float %6373, %6380
  %6384 = fadd fast float %6374, %6381
  %6385 = fadd fast float %6375, %6382
  %6386 = fmul fast float %6383, %6352
  %6387 = fmul fast float %6384, %6352
  %6388 = fmul fast float %6385, %6352
  %6389 = fmul fast float %6386, %6386
  %6390 = fmul fast float %6387, %6387
  %6391 = fadd fast float %6389, %6390
  %6392 = fmul fast float %6388, %6388
  %6393 = fadd fast float %6391, %6392
  %6394 = call float @dx.op.unary.f32(i32 24, float %6393)  ; Sqrt(value)
  %6395 = fsub fast float %6394, %6307
  %6396 = fmul fast float %6395, %6309
  %6397 = call float @dx.op.unary.f32(i32 7, float %6396)  ; Saturate(value)
  br label %6398

; <label>:6398                                    ; preds = %6323, %6319
  %6399 = phi float [ %6397, %6323 ], [ 1.000000e+00, %6319 ]
  %6400 = fmul fast float %6316, 5.000000e-01
  %6401 = fadd fast float %6400, 5.000000e-01
  %6402 = call float @dx.op.unary.f32(i32 22, float %6401)  ; Frc(value)
  %6403 = call float @dx.op.unary.f32(i32 27, float %6402)  ; Round_ni(value)
  %6404 = call float @dx.op.unary.f32(i32 22, float %6402)  ; Frc(value)
  %6405 = fmul fast float %6404, 2.000000e+00
  %6406 = fadd fast float %6405, -1.000000e+00
  %6407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %58, float %6268, float %6269, float %6403, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6411 = extractvalue %dx.types.ResRet.f32 %6407, 3
  %6412 = fadd fast float %6408, -5.000000e-01
  %6413 = fadd fast float %6410, -5.000000e-01
  %6414 = fmul fast float %6412, 0xBFD5555560000000
  %6415 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6413, float %6414)  ; FMad(a,b,c)
  %6416 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6409, float 0.000000e+00)  ; FMad(a,b,c)
  %6417 = fadd fast float %6416, %6411
  %6418 = fmul fast float %6412, -7.500000e-01
  %6419 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6413, float %6418)  ; FMad(a,b,c)
  %6420 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6409, float 0.000000e+00)  ; FMad(a,b,c)
  %6421 = fadd fast float %6420, %6411
  %6422 = call float @dx.op.binary.f32(i32 35, float %6415, float -1.000000e+00)  ; FMax(a,b)
  %6423 = call float @dx.op.binary.f32(i32 35, float %6417, float -1.000000e+00)  ; FMax(a,b)
  %6424 = call float @dx.op.binary.f32(i32 35, float %6419, float -1.000000e+00)  ; FMax(a,b)
  %6425 = call float @dx.op.binary.f32(i32 35, float %6421, float -1.000000e+00)  ; FMax(a,b)
  %6426 = call float @dx.op.binary.f32(i32 36, float %6422, float 1.000000e+00)  ; FMin(a,b)
  %6427 = call float @dx.op.binary.f32(i32 36, float %6423, float 1.000000e+00)  ; FMin(a,b)
  %6428 = call float @dx.op.binary.f32(i32 36, float %6424, float 1.000000e+00)  ; FMin(a,b)
  %6429 = call float @dx.op.binary.f32(i32 36, float %6425, float 1.000000e+00)  ; FMin(a,b)
  %6430 = fcmp fast olt float %6426, 0x3FEFFF8020000000
  br i1 %6430, label %6431, label %6546, !dx.controlflow.hints !182

; <label>:6431                                    ; preds = %6398
  %6432 = extractvalue %dx.types.CBufRet.f32 %6314, 3
  %6433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6433, 0
  %6435 = extractvalue %dx.types.CBufRet.f32 %6433, 1
  %6436 = extractvalue %dx.types.CBufRet.f32 %6433, 2
  %6437 = extractvalue %dx.types.CBufRet.f32 %6433, 3
  %6438 = fsub fast float %6434, %6426
  %6439 = fsub fast float %6435, %6427
  %6440 = fsub fast float %6436, %6428
  %6441 = fsub fast float %6437, %6429
  %6442 = fmul fast float %6438, %6432
  %6443 = fmul fast float %6439, %6432
  %6444 = fmul fast float %6440, %6432
  %6445 = fmul fast float %6441, %6432
  %6446 = fadd fast float %6442, %6426
  %6447 = fadd fast float %6443, %6427
  %6448 = fsub fast float -0.000000e+00, %6447
  %6449 = fadd fast float %6444, %6428
  %6450 = fadd fast float %6445, %6429
  %6451 = fmul fast float %6446, %6446
  %6452 = fsub fast float %6447, %6451
  %6453 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6452)  ; FMax(a,b)
  %6454 = fdiv fast float 1.000000e+00, %6453
  %6455 = fmul fast float %6447, %6446
  %6456 = fsub fast float %6449, %6455
  %6457 = fsub fast float %6406, %6446
  %6458 = fmul fast float %6406, %6406
  %6459 = fsub fast float %6458, %6447
  %6460 = fmul fast float %6457, %6454
  %6461 = fmul fast float %6460, %6456
  %6462 = fsub fast float %6459, %6461
  %6463 = fmul fast float %6447, %6447
  %6464 = fsub fast float %6450, %6463
  %6465 = fmul fast float %6456, %6456
  %6466 = fmul fast float %6465, %6454
  %6467 = fsub fast float %6464, %6466
  %6468 = fdiv fast float %6462, %6467
  %6469 = fmul fast float %6456, %6468
  %6470 = fsub fast float %6457, %6469
  %6471 = fmul fast float %6470, %6454
  %6472 = fmul fast float %6471, %6446
  %6473 = fsub fast float 1.000000e+00, %6472
  %6474 = fmul fast float %6447, %6468
  %6475 = fsub fast float %6473, %6474
  %6476 = fmul fast float %6471, %6471
  %6477 = fmul fast float %6468, 4.000000e+00
  %6478 = fmul fast float %6477, %6475
  %6479 = fsub fast float %6476, %6478
  %6480 = call float @dx.op.unary.f32(i32 24, float %6479)  ; Sqrt(value)
  %6481 = fcmp fast oge float %6471, 0.000000e+00
  %6482 = fsub fast float -0.000000e+00, %6480
  %6483 = select i1 %6481, float %6482, float %6480
  %6484 = fsub fast float %6483, %6471
  %6485 = fdiv fast float %6484, %6468
  %6486 = fdiv fast float %6475, %6484
  %6487 = fmul fast float %6485, 5.000000e-01
  %6488 = fmul fast float %6486, 2.000000e+00
  %6489 = select i1 %6481, float %6487, float %6488
  %6490 = select i1 %6481, float %6488, float %6487
  %6491 = call float @dx.op.binary.f32(i32 35, float %6489, float %6490)  ; FMax(a,b)
  %6492 = call float @dx.op.binary.f32(i32 36, float %6489, float %6490)  ; FMin(a,b)
  %6493 = fcmp fast ogt float %6406, %6492
  br i1 %6493, label %6494, label %6504

; <label>:6494                                    ; preds = %6431
  %6495 = fsub fast float %6406, %6492
  %6496 = fsub fast float %6491, %6492
  %6497 = fmul fast float %6495, %6496
  %6498 = fmul fast float %6491, %6406
  %6499 = fadd fast float %6491, %6406
  %6500 = fmul fast float %6499, %6446
  %6501 = fadd fast float %6498, %6447
  %6502 = fsub fast float %6501, %6500
  %6503 = fdiv fast float %6502, %6497
  br label %6504

; <label>:6504                                    ; preds = %6494, %6431
  %6505 = phi float [ %6503, %6494 ], [ 0.000000e+00, %6431 ]
  %6506 = fcmp fast ogt float %6406, %6491
  %6507 = fsub fast float %6406, %6491
  br i1 %6506, label %6508, label %6518

; <label>:6508                                    ; preds = %6504
  %6509 = fsub fast float %6491, %6492
  %6510 = fmul fast float %6509, %6507
  %6511 = fmul fast float %6492, %6406
  %6512 = fadd fast float %6492, %6406
  %6513 = fmul fast float %6512, %6446
  %6514 = fsub fast float %6448, %6511
  %6515 = fadd fast float %6514, %6513
  %6516 = fdiv fast float %6515, %6510
  %6517 = fadd fast float %6516, %6505
  br label %6518

; <label>:6518                                    ; preds = %6508, %6504
  %6519 = phi float [ %6517, %6508 ], [ %6505, %6504 ]
  %6520 = fsub fast float %6406, %6492
  %6521 = fmul fast float %6520, %6507
  %6522 = fmul fast float %6492, %6491
  %6523 = fadd fast float %6492, %6491
  %6524 = fmul fast float %6523, %6446
  %6525 = fadd fast float %6522, %6447
  %6526 = fsub fast float %6525, %6524
  %6527 = fdiv fast float %6526, %6521
  %6528 = call float @dx.op.unary.f32(i32 7, float %6519)  ; Saturate(value)
  %6529 = fcmp fast oeq float %5195, 0.000000e+00
  %6530 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6531 = fcmp fast oeq float %6530, 0.000000e+00
  %6532 = or i1 %6529, %6531
  %6533 = fmul fast float %6530, 2.000000e+00
  %6534 = fadd fast float %6315, %6316
  %6535 = fdiv fast float %6534, %6533
  %6536 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6537 = fmul fast float %6536, 2.000000e+00
  %6538 = fsub fast float 3.000000e+00, %6537
  %6539 = fmul fast float %6536, %6536
  %6540 = fmul fast float %6539, %6538
  %6541 = select i1 %6532, float 1.000000e+00, float %6540
  %6542 = fmul fast float %6527, %5195
  %6543 = fadd fast float %6528, %6542
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = fmul fast float %6541, %6544
  br label %6546

; <label>:6546                                    ; preds = %6518, %6398
  %6547 = phi float [ %6545, %6518 ], [ 0.000000e+00, %6398 ]
  %6548 = fsub fast float 1.000000e+00, %6547
  %6549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %58, float %6268, float %6269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6550 = extractvalue %dx.types.ResRet.f32 %6549, 0
  %6551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.i32 %6551, 2
  %6553 = icmp eq i32 %6552, 0
  br i1 %6553, label %6559, label %6554

; <label>:6554                                    ; preds = %6546
  %6555 = call float @dx.op.unary.f32(i32 7, float %6547)  ; Saturate(value)
  %6556 = fadd fast float %6550, -1.000000e+00
  %6557 = fmul fast float %6555, %6556
  %6558 = fadd fast float %6557, 1.000000e+00
  br label %6559

; <label>:6559                                    ; preds = %6554, %6546
  %6560 = phi float [ %6558, %6554 ], [ %6548, %6546 ]
  br i1 %6322, label %6561, label %6579

; <label>:6561                                    ; preds = %6559
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 1
  %6564 = fsub fast float %6399, %6563
  %6565 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  %6566 = fsub fast float %6399, %6321
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6568 = fsub fast float %6565, %6567
  %6569 = fsub fast float %6401, %6567
  %6570 = fdiv fast float %6569, %6568
  %6571 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6572 = fmul fast float %6571, 2.000000e+00
  %6573 = fsub fast float 3.000000e+00, %6572
  %6574 = fsub fast float %6550, %6560
  %6575 = fmul fast float %6571, %6571
  %6576 = fmul fast float %6575, %6574
  %6577 = fmul fast float %6576, %6573
  %6578 = fadd fast float %6577, %6560
  br label %6579

; <label>:6579                                    ; preds = %6561, %6559
  %6580 = phi float [ %6578, %6561 ], [ %6560, %6559 ]
  %6581 = call float @dx.op.binary.f32(i32 35, float %6550, float %6580)  ; FMax(a,b)
  %6582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6583 = extractvalue %dx.types.CBufRet.i32 %6582, 2
  %6584 = and i32 %6583, 1
  %6585 = icmp eq i32 %6584, 0
  %6586 = fcmp fast une float %6581, 1.000000e+00
  %6587 = and i1 %6586, %6585
  br i1 %6587, label %6588, label %6607

; <label>:6588                                    ; preds = %6579
  %6589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %58, float %6268, float %6269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6590 = extractvalue %dx.types.ResRet.f32 %6589, 0
  %6591 = extractvalue %dx.types.ResRet.f32 %6589, 1
  %6592 = extractvalue %dx.types.ResRet.f32 %6589, 2
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 1
  %6595 = fmul fast float %6594, %6590
  %6596 = fmul fast float %6594, %6591
  %6597 = fmul fast float %6594, %6592
  %6598 = fcmp fast ogt float %6550, 0x3FEFFF2E40000000
  %6599 = fsub fast float 1.000000e+00, %6581
  %6600 = fsub fast float 1.000000e+00, %6550
  %6601 = fdiv fast float %6599, %6600
  %6602 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6603 = select i1 %6598, float 0.000000e+00, float %6602
  %6604 = fmul fast float %6595, %6603
  %6605 = fmul fast float %6596, %6603
  %6606 = fmul fast float %6597, %6603
  br label %6607

; <label>:6607                                    ; preds = %6588, %6579
  %6608 = phi float [ 0.000000e+00, %6579 ], [ %6604, %6588 ]
  %6609 = phi float [ 0.000000e+00, %6579 ], [ %6605, %6588 ]
  %6610 = phi float [ 0.000000e+00, %6579 ], [ %6606, %6588 ]
  %6611 = fmul fast float %6608, %5177
  %6612 = fmul fast float %6609, %5177
  %6613 = fmul fast float %6610, %5177
  %6614 = fmul fast float %6581, %6243
  %6615 = call float @dx.op.dot3.f32(i32 55, float %6581, float %6581, float %6581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6616 = call float @dx.op.dot3.f32(i32 55, float %6611, float %6612, float %6613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6617 = select i1 %228, float %6615, float %6581
  %6618 = select i1 %228, float 1.000000e+00, float %6581
  %6619 = select i1 %228, float %6616, float %6611
  %6620 = select i1 %228, float 0.000000e+00, float %6612
  %6621 = select i1 %228, float 0.000000e+00, float %6613
  %6622 = fmul fast float %6617, %6255
  %6623 = fmul fast float %6617, %6256
  %6624 = fmul fast float %6618, %6257
  %6625 = fadd fast float %6622, %6619
  %6626 = fadd fast float %6623, %6620
  %6627 = fadd fast float %6621, %6624
  %6628 = fmul fast float %6617, %6258
  %6629 = fmul fast float %6617, %6259
  %6630 = fmul fast float %6618, %6260
  br label %6631

; <label>:6631                                    ; preds = %6607, %6264, %6233, %5465
  %6632 = phi float [ %5470, %5465 ], [ %6255, %6233 ], [ %6625, %6607 ], [ %6255, %6264 ]
  %6633 = phi float [ %5471, %5465 ], [ %6256, %6233 ], [ %6626, %6607 ], [ %6256, %6264 ]
  %6634 = phi float [ %5472, %5465 ], [ %6257, %6233 ], [ %6627, %6607 ], [ %6257, %6264 ]
  %6635 = phi float [ %5473, %5465 ], [ %6258, %6233 ], [ %6628, %6607 ], [ %6258, %6264 ]
  %6636 = phi float [ %5474, %5465 ], [ %6259, %6233 ], [ %6629, %6607 ], [ %6259, %6264 ]
  %6637 = phi float [ %5475, %5465 ], [ %6260, %6233 ], [ %6630, %6607 ], [ %6260, %6264 ]
  %6638 = phi float [ %5476, %5465 ], [ %6243, %6233 ], [ %6614, %6607 ], [ %6243, %6264 ]
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %61, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 2
  %6641 = extractvalue %dx.types.CBufRet.f32 %6639, 3
  %6642 = fmul fast float %6640, %90
  %6643 = fmul fast float %6641, %91
  %6644 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  %6645 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  %6646 = select i1 %5205, i32 2, i32 0
  %6647 = or i32 %6646, 1
  %6648 = uitofp i32 %6647 to float
  %6649 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6644, float %6645, float %6648, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6650 = extractvalue %dx.types.ResRet.f32 %6649, 0
  %6651 = extractvalue %dx.types.ResRet.f32 %6649, 1
  %6652 = extractvalue %dx.types.ResRet.f32 %6649, 2
  %6653 = extractvalue %dx.types.ResRet.f32 %6649, 3
  %6654 = add nuw nsw i32 %6646, 2
  %6655 = uitofp i32 %6654 to float
  %6656 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %58, float %6644, float %6645, float %6655, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6657 = extractvalue %dx.types.ResRet.f32 %6656, 0
  %6658 = extractvalue %dx.types.ResRet.f32 %6656, 1
  %6659 = extractvalue %dx.types.ResRet.f32 %6656, 2
  %6660 = extractvalue %dx.types.ResRet.f32 %6656, 3
  %6661 = call float @dx.op.binary.f32(i32 35, float %6651, float %6652)  ; FMax(a,b)
  %6662 = call float @dx.op.binary.f32(i32 35, float %6650, float %6661)  ; FMax(a,b)
  %6663 = call float @dx.op.binary.f32(i32 35, float %6662, float %6653)  ; FMax(a,b)
  %6664 = call float @dx.op.binary.f32(i32 36, float %6658, float %6659)  ; FMin(a,b)
  %6665 = call float @dx.op.binary.f32(i32 36, float %6657, float %6664)  ; FMin(a,b)
  %6666 = call float @dx.op.binary.f32(i32 36, float %6665, float %6660)  ; FMin(a,b)
  %6667 = fmul fast float %6663, 2.550000e+02
  %6668 = fadd fast float %6667, 0x3F70101020000000
  %6669 = fptoui float %6668 to i32
  %6670 = fmul fast float %6666, 2.550000e+02
  %6671 = fadd fast float %6670, 0x3F70101020000000
  %6672 = fptoui float %6671 to i32
  %6673 = icmp ult i32 %6669, %6672
  br i1 %6673, label %6674, label %6843

; <label>:6674                                    ; preds = %6631
  %6675 = fcmp fast ogt float %80, 9.843750e-01
  %6676 = fadd fast float %5469, -4.000000e+00
  %6677 = select i1 %6675, float -4.000000e+00, float %6676
  %6678 = call float @dx.op.binary.f32(i32 35, float %6677, float 0.000000e+00)  ; FMax(a,b)
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = fadd fast float %6680, %6678
  %6682 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6683 = fmul fast float %6681, %6682
  %6684 = call float @dx.op.unary.f32(i32 23, float %6683)  ; Log(value)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6679, 3
  %6686 = fmul fast float %6685, %6684
  %6687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6688 = extractvalue %dx.types.CBufRet.f32 %6687, 2
  %6689 = fmul fast float %6686, %6688
  %6690 = call float @dx.op.unary.f32(i32 7, float %6689)  ; Saturate(value)
  %6691 = uitofp i32 %6669 to float
  %6692 = uitofp i32 %6672 to float
  %6693 = fadd fast float %6691, 5.000000e-01
  %6694 = fadd fast float %6692, 5.000000e-01
  %6695 = fmul fast float %6688, %6693
  %6696 = fmul fast float %6688, %6694
  %6697 = fadd fast float %6695, 0x3F0FFB4800000000
  %6698 = fadd fast float %6696, 0xBF0FFB4800000000
  %6699 = call float @dx.op.binary.f32(i32 35, float %6690, float %6697)  ; FMax(a,b)
  %6700 = call float @dx.op.binary.f32(i32 36, float %6699, float %6698)  ; FMin(a,b)
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 1
  %6703 = extractvalue %dx.types.CBufRet.f32 %6701, 2
  %6704 = extractvalue %dx.types.CBufRet.f32 %6701, 0
  %6705 = select i1 %5205, float %6704, float 0.000000e+00
  %6706 = fmul fast float %6702, %6700
  %6707 = fadd fast float %6705, %6706
  %6708 = fadd fast float %6705, %6703
  %6709 = fsub fast float %6702, %6703
  %6710 = fadd fast float %6709, %6705
  %6711 = call float @dx.op.binary.f32(i32 35, float %6707, float %6708)  ; FMax(a,b)
  %6712 = call float @dx.op.binary.f32(i32 36, float %6711, float %6710)  ; FMin(a,b)
  %6713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %56, float %6644, float %6645, float %6712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6714 = extractvalue %dx.types.ResRet.f32 %6713, 0
  %6715 = extractvalue %dx.types.ResRet.f32 %6713, 1
  %6716 = extractvalue %dx.types.ResRet.f32 %6713, 2
  %6717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.i32 %6717, 0
  %6719 = extractvalue %dx.types.CBufRet.i32 %6717, 1
  %6720 = uitofp i32 %6718 to float
  %6721 = uitofp i32 %6719 to float
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6725 = fmul fast float %6720, %6644
  %6726 = fmul fast float %6721, %6645
  %6727 = fadd fast float %6725, -5.000000e-01
  %6728 = fadd fast float %6726, -5.000000e-01
  %6729 = call float @dx.op.unary.f32(i32 22, float %6727)  ; Frc(value)
  %6730 = call float @dx.op.unary.f32(i32 22, float %6728)  ; Frc(value)
  %6731 = fmul fast float %6729, %6729
  %6732 = fmul fast float %6731, %6729
  %6733 = fsub fast float 3.000000e+00, %6729
  %6734 = fmul fast float %6731, %6733
  %6735 = fmul fast float %6729, 3.000000e+00
  %6736 = fmul fast float %6732, 3.000000e+00
  %6737 = fmul fast float %6731, 6.000000e+00
  %6738 = fsub fast float %6736, %6737
  %6739 = fadd fast float %6738, 4.000000e+00
  %6740 = fmul fast float %6739, 0x3FC5555560000000
  %6741 = fmul fast float %6732, -3.000000e+00
  %6742 = fadd fast float %6731, %6729
  %6743 = fmul fast float %6742, 3.000000e+00
  %6744 = fadd fast float %6741, 1.000000e+00
  %6745 = fadd fast float %6744, %6743
  %6746 = fmul fast float %6732, 0x3FC5555560000000
  %6747 = fmul fast float %6730, %6730
  %6748 = fmul fast float %6747, %6730
  %6749 = fsub fast float 3.000000e+00, %6730
  %6750 = fmul fast float %6747, %6749
  %6751 = fmul fast float %6730, 3.000000e+00
  %6752 = fmul fast float %6748, 3.000000e+00
  %6753 = fmul fast float %6747, 6.000000e+00
  %6754 = fsub fast float %6752, %6753
  %6755 = fadd fast float %6754, 4.000000e+00
  %6756 = fmul fast float %6755, 0x3FC5555560000000
  %6757 = fmul fast float %6748, -3.000000e+00
  %6758 = fadd fast float %6747, %6730
  %6759 = fmul fast float %6758, 3.000000e+00
  %6760 = fadd fast float %6757, 1.000000e+00
  %6761 = fadd fast float %6760, %6759
  %6762 = fmul fast float %6748, 0x3FC5555560000000
  %6763 = fadd fast float %6729, 1.000000e+00
  %6764 = fsub fast float 1.000000e+00, %6735
  %6765 = fadd fast float %6764, %6734
  %6766 = fadd fast float %6765, %6739
  %6767 = fmul fast float %6766, 0x3FC5555560000000
  %6768 = fdiv fast float %6740, %6767
  %6769 = fsub fast float %6763, %6768
  %6770 = fsub fast float 1.000000e+00, %6729
  %6771 = fadd fast float %6745, %6732
  %6772 = fmul fast float %6771, 0x3FC5555560000000
  %6773 = fdiv fast float %6746, %6772
  %6774 = fadd fast float %6770, %6773
  %6775 = fadd fast float %6730, 1.000000e+00
  %6776 = fsub fast float 1.000000e+00, %6751
  %6777 = fadd fast float %6776, %6750
  %6778 = fadd fast float %6777, %6755
  %6779 = fmul fast float %6778, 0x3FC5555560000000
  %6780 = fdiv fast float %6756, %6779
  %6781 = fsub fast float %6775, %6780
  %6782 = fsub fast float 1.000000e+00, %6730
  %6783 = fadd fast float %6761, %6748
  %6784 = fmul fast float %6783, 0x3FC5555560000000
  %6785 = fdiv fast float %6762, %6784
  %6786 = fadd fast float %6785, %6782
  %6787 = fmul fast float %6769, %6723
  %6788 = fsub fast float %6644, %6787
  %6789 = fmul fast float %6774, %6723
  %6790 = fadd fast float %6789, %6644
  %6791 = fmul fast float %6786, %6724
  %6792 = fadd fast float %6791, %6645
  %6793 = fmul fast float %6781, %6724
  %6794 = fsub fast float %6645, %6793
  %6795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6788, float %6794, float %6712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6796 = extractvalue %dx.types.ResRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.ResRet.f32 %6795, 1
  %6798 = extractvalue %dx.types.ResRet.f32 %6795, 2
  %6799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6790, float %6794, float %6712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6800 = extractvalue %dx.types.ResRet.f32 %6799, 0
  %6801 = extractvalue %dx.types.ResRet.f32 %6799, 1
  %6802 = extractvalue %dx.types.ResRet.f32 %6799, 2
  %6803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6788, float %6792, float %6712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.ResRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.ResRet.f32 %6803, 2
  %6807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %56, float %6790, float %6792, float %6712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6808 = extractvalue %dx.types.ResRet.f32 %6807, 0
  %6809 = extractvalue %dx.types.ResRet.f32 %6807, 1
  %6810 = extractvalue %dx.types.ResRet.f32 %6807, 2
  %6811 = fsub fast float %6804, %6796
  %6812 = fsub fast float %6805, %6797
  %6813 = fsub fast float %6806, %6798
  %6814 = fmul fast float %6811, %6784
  %6815 = fmul fast float %6812, %6784
  %6816 = fmul fast float %6813, %6784
  %6817 = fadd fast float %6814, %6796
  %6818 = fadd fast float %6815, %6797
  %6819 = fadd fast float %6816, %6798
  %6820 = fsub fast float %6808, %6800
  %6821 = fsub fast float %6809, %6801
  %6822 = fsub fast float %6810, %6802
  %6823 = fmul fast float %6820, %6784
  %6824 = fmul fast float %6821, %6784
  %6825 = fmul fast float %6822, %6784
  %6826 = fsub fast float %6800, %6817
  %6827 = fadd fast float %6826, %6823
  %6828 = fsub fast float %6801, %6818
  %6829 = fadd fast float %6828, %6824
  %6830 = fsub fast float %6802, %6819
  %6831 = fadd fast float %6830, %6825
  %6832 = fmul fast float %6827, %6772
  %6833 = fmul fast float %6829, %6772
  %6834 = fmul fast float %6831, %6772
  %6835 = fadd fast float %6832, %6817
  %6836 = fadd fast float %6833, %6818
  %6837 = fadd fast float %6834, %6819
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6840 = fmul fast float %6835, %6839
  %6841 = fmul fast float %6836, %6839
  %6842 = fmul fast float %6837, %6839
  br label %6843

; <label>:6843                                    ; preds = %6674, %6631
  %6844 = phi float [ %6714, %6674 ], [ 1.000000e+00, %6631 ]
  %6845 = phi float [ %6715, %6674 ], [ 1.000000e+00, %6631 ]
  %6846 = phi float [ %6716, %6674 ], [ 1.000000e+00, %6631 ]
  %6847 = phi float [ %6840, %6674 ], [ 0.000000e+00, %6631 ]
  %6848 = phi float [ %6841, %6674 ], [ 0.000000e+00, %6631 ]
  %6849 = phi float [ %6842, %6674 ], [ 0.000000e+00, %6631 ]
  %6850 = fmul fast float %6847, %5177
  %6851 = fmul fast float %6848, %5177
  %6852 = fmul fast float %6849, %5177
  %6853 = fmul fast float %6844, %6638
  %6854 = call float @dx.op.dot3.f32(i32 55, float %6844, float %6845, float %6846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6855 = call float @dx.op.dot3.f32(i32 55, float %6850, float %6851, float %6852, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6856 = select i1 %228, float %6854, float %6844
  %6857 = select i1 %228, float %6854, float %6845
  %6858 = select i1 %228, float 1.000000e+00, float %6846
  %6859 = select i1 %228, float %6855, float %6850
  %6860 = select i1 %228, float 0.000000e+00, float %6851
  %6861 = select i1 %228, float 0.000000e+00, float %6852
  %6862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %62, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.i32 %6862, 3
  %6864 = and i32 %6863, 3
  %6865 = icmp ne i32 %6864, 0
  %6866 = and i32 %6863, 4
  %6867 = icmp ne i32 %6866, 0
  %6868 = and i1 %6865, %6867
  %6869 = and i1 %228, %6868
  br i1 %6869, label %6870, label %6876

; <label>:6870                                    ; preds = %6843
  %6871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6872 = extractvalue %dx.types.CBufRet.f32 %6871, 1
  %6873 = fadd fast float %6853, -1.000000e+00
  %6874 = fmul fast float %6872, %6873
  %6875 = fadd fast float %6874, 1.000000e+00
  br label %6876

; <label>:6876                                    ; preds = %6870, %6843
  %6877 = phi float [ %6875, %6870 ], [ %6853, %6843 ]
  %6878 = fadd fast float %6635, %6632
  %6879 = fmul fast float %6856, %6878
  %6880 = fadd fast float %6879, %6859
  %6881 = fadd fast float %6636, %6633
  %6882 = fmul fast float %6857, %6881
  %6883 = fadd fast float %6882, %6860
  %6884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6884, 0
  br i1 %228, label %6886, label %6909

; <label>:6886                                    ; preds = %6876
  %6887 = fadd fast float %6880, %6883
  %6888 = fmul fast float %6885, %6887
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 3
  %6891 = extractvalue %dx.types.CBufRet.f32 %5186, 1
  %6892 = fsub fast float %5192, %5180
  %6893 = fadd fast float %6892, %5193
  %6894 = fsub fast float %6893, %6891
  %6895 = extractvalue %dx.types.CBufRet.f32 %5186, 2
  %6896 = fmul fast float %6894, %6895
  %6897 = call float @dx.op.unary.f32(i32 7, float %6896)  ; Saturate(value)
  %6898 = fsub fast float %6897, %6890
  %6899 = fmul fast float %6898, %6877
  %6900 = fadd fast float %6899, %6890
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 0
  %6903 = fsub fast float %6900, %6902
  %6904 = fmul fast float %6903, 1.000000e+01
  %6905 = call float @dx.op.unary.f32(i32 7, float %6904)  ; Saturate(value)
  %6906 = fmul fast float %6905, %5176
  %6907 = fadd fast float %6906, %5177
  %6908 = fmul fast float %6907, %6900
  br label %6933

; <label>:6909                                    ; preds = %6876
  %6910 = fadd fast float %6637, %6634
  %6911 = fmul fast float %6858, %6910
  %6912 = fadd fast float %6911, %6861
  %6913 = fmul fast float %6885, %6880
  %6914 = fmul fast float %6885, %6883
  %6915 = fmul fast float %6885, %6912
  %6916 = call float @dx.op.binary.f32(i32 35, float %6914, float %6915)  ; FMax(a,b)
  %6917 = call float @dx.op.binary.f32(i32 35, float %6913, float %6916)  ; FMax(a,b)
  %6918 = call float @dx.op.binary.f32(i32 35, float %6917, float %5177)  ; FMax(a,b)
  %6919 = fcmp fast ugt float %6918, 0x3F10000000000000
  br i1 %6919, label %6921, label %6920

; <label>:6920                                    ; preds = %6909
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6921

; <label>:6921                                    ; preds = %6920, %6909
  %6922 = add i32 %65, 132
  %6923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %54, i32 %6922, i32 undef)  ; BufferLoad(srv,index,wot)
  %6924 = extractvalue %dx.types.ResRet.i32 %6923, 0
  %6925 = and i32 %6924, 32
  %6926 = icmp eq i32 %6925, 0
  br i1 %6926, label %6933, label %6927

; <label>:6927                                    ; preds = %6921
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %62, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6930 = fmul fast float %6929, 0x3FE99999A0000000
  %6931 = fadd fast float %6929, %6913
  %6932 = fadd fast float %6930, %6915
  br label %6933

; <label>:6933                                    ; preds = %6927, %6921, %6886
  %6934 = phi float [ %6888, %6886 ], [ %6931, %6927 ], [ %6913, %6921 ]
  %6935 = phi float [ %6908, %6886 ], [ %6914, %6927 ], [ %6914, %6921 ]
  %6936 = phi float [ %6907, %6886 ], [ %6932, %6927 ], [ %6915, %6921 ]
  %6937 = phi float [ %6907, %6886 ], [ %5177, %6927 ], [ %5177, %6921 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6938 = call float @dx.op.binary.f32(i32 36, float %6934, float 3.225500e+04)  ; FMin(a,b)
  %6939 = call float @dx.op.binary.f32(i32 36, float %6935, float 3.225500e+04)  ; FMin(a,b)
  %6940 = call float @dx.op.binary.f32(i32 36, float %6936, float 3.225500e+04)  ; FMin(a,b)
  %6941 = call float @dx.op.binary.f32(i32 36, float %6937, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6938)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6939)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6940)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6941)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

