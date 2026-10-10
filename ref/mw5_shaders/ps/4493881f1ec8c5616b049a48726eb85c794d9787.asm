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
; shader hash: c96920400a4419645d2b7a93d3118488
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   sampler      NA          NA      S7             s6     1
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
;                                   texture     f32          2d     T25             t1     1
;                                   texture     f32          2d     T26     t58,space2     1
;                                   texture     f32          2d     T27     t59,space2     1
;                                   texture     f32          2d     T28     t60,space2     1
;                                   texture    byte         r/o     T29     t45,space1     1
;                                   texture    byte         r/o     T30     t46,space1     1
;                                   texture    byte         r/o     T31     t47,space1     1
;                                   texture    byte         r/o     T32     t48,space1     1
;                                   texture     f32          2d     T33     t57,space2     1
;                                   texture    byte         r/o     T34     t69,space1     1
;                                   texture     u32          2d     T35     t56,space2     1
;                                   texture     f32          2d     T36     t34,space2     1
;                                   texture    byte         r/o     T37     t10,space1     1
;                                   texture    byte         r/o     T38      t1,space1     1
;                                   texture     f32          1d     T39     t32,space2     1
;                                   texture     f32     2darray     T40      t8,space2     1
;                                   texture     f32          2d     T41      t2,space2     1
;                                   texture     f32          2d     T42      t3,space2     1
;                                   texture     f32          2d     T43      t4,space2     1
;                                   textureunorm_f32     2darray     T44     t80,space2     1
;                                   texture    byte         r/o     T45     t67,space1     1
;                                   texture     f32          2d     T46      t7,space2     1
;                                   texture     f32          2d     T47      t6,space2     1
;                                   texture     f32          2d     T48      t5,space2     1
;                                   texture     f32          2d     T49     t38,space2     1
;                                   texture    byte         r/o     T50     t12,space1     1
;                                   texture    byte         r/o     T51     t13,space1     1
;                                   texture     f32          1d     T52     t30,space2     1
;                                   texture     f32          3d     T53     t44,space2     1
;                                   texture     f32          3d     T54     t45,space2     1
;                                   texture     f32     2darray     T55     t47,space2     1
;                                   textureunorm_f32     2darray     T56     t85,space2     1
;                                   texture     f32          2d     T57     t83,space2     1
;                                   texture     f32          2d     T58     t86,space2     1
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 58, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = alloca [4 x i32], align 4
  %66 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = alloca [12 x float], align 4
  %85 = alloca [12 x float], align 4
  %86 = alloca [3 x float], align 4
  %87 = alloca [3 x float], align 4
  %88 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %89 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = fmul fast float %91, %80
  %93 = fmul fast float %91, %81
  %94 = fmul fast float %73, %70
  %95 = fmul fast float %74, %69
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %74, %68
  %98 = fmul fast float %72, %70
  %99 = fsub fast float %97, %98
  %100 = fmul fast float %72, %69
  %101 = fmul fast float %73, %68
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %96, %71
  %104 = fmul fast float %99, %71
  %105 = fmul fast float %102, %71
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %107, 2.000000e+00
  %110 = fmul fast float %109, %92
  %111 = fmul fast float %108, 2.000000e+00
  %112 = fmul fast float %111, %93
  %113 = fsub fast float 1.000000e+00, %110
  %114 = fsub fast float 1.000000e+00, %112
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fmul fast float %113, %116
  %120 = fmul fast float %113, %117
  %121 = fmul fast float %113, %118
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fmul fast float %114, %123
  %127 = fmul fast float %114, %124
  %128 = fmul fast float %114, %125
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = fadd fast float %126, %130
  %134 = fadd fast float %133, %119
  %135 = fadd fast float %127, %131
  %136 = fadd fast float %135, %120
  %137 = fadd fast float %128, %132
  %138 = fadd fast float %137, %121
  %139 = fmul fast float %134, %83
  %140 = fmul fast float %136, %83
  %141 = fmul fast float %138, %83
  %142 = fadd fast float %77, 5.000000e-01
  %143 = fptoui float %142 to i32
  %144 = shl i32 %143, 3
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = or i32 %144, 4
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = and i32 %146, 8191
  %151 = lshr i32 %146, 13
  %152 = and i32 %151, 8191
  %153 = lshr i32 %146, 26
  %154 = and i32 %149, 65535
  %155 = lshr i32 %149, 16
  %156 = uitofp i32 %154 to float
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %159 = uitofp i32 %155 to float
  %160 = uitofp i32 %150 to float
  %161 = fmul fast float %158, %160
  %162 = uitofp i32 %152 to float
  %163 = fmul fast float %158, %162
  %164 = fmul fast float %158, %75
  %165 = fmul fast float %164, %156
  %166 = fmul fast float %158, %76
  %167 = fmul fast float %166, %159
  %168 = fadd fast float %165, %161
  %169 = fadd fast float %163, %167
  %170 = uitofp i32 %153 to float
  %171 = fmul fast float %92, 5.000000e-01
  %172 = fmul fast float %93, 5.000000e-01
  %173 = fptosi float %171 to i32
  %174 = fptosi float %172 to i32
  %175 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %173, i32 %174, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = lshr i32 %176, 18
  %178 = uitofp i32 %177 to float
  %179 = fmul fast float %178, 0x3F4C00EBA0000000
  %180 = call float @dx.op.unary.f32(i32 21, float %179)  ; Exp(value)
  %181 = fadd fast float %180, -1.000000e+00
  %182 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %183 = extractvalue %dx.types.Dimensions %182, 0
  %184 = sitofp i32 %183 to float
  %185 = extractvalue %dx.types.Dimensions %182, 1
  %186 = sitofp i32 %185 to float
  %187 = fcmp fast oge float %171, %184
  %188 = fcmp fast oge float %172, %186
  %189 = or i1 %187, %188
  %190 = select i1 %189, float 0x4197782600000000, float %181
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %194 = fmul fast float %192, %92
  %195 = fmul fast float %193, %93
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = and i32 %197, 114688
  %199 = icmp ne i32 %198, 0
  %200 = select i1 %199, float %194, float 0.000000e+00
  %201 = select i1 %199, float %195, float 0.000000e+00
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %61, float %200, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = fmul fast float %203, 2.550000e+02
  %205 = fptoui float %204 to i32
  %206 = select i1 %199, i32 %205, i32 0
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.i32 %208, 3
  %210 = and i32 %209, 3
  %211 = icmp ne i32 %210, 0
  %212 = and i32 %209, 4
  %213 = icmp ne i32 %212, 0
  %214 = and i1 %211, %213
  br i1 %214, label %215, label %226

; <label>:215                                     ; preds = %0
  %216 = extractvalue %dx.types.CBufRet.f32 %207, 3
  %217 = fmul fast float %216, %93
  %218 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %219 = fmul fast float %218, %92
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %60, float %219, float %217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fsub fast float 1.000000e+00, %221
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 0
  %225 = fcmp fast olt float %222, %224
  br label %229

; <label>:226                                     ; preds = %0
  %227 = icmp eq i32 %212, 0
  %228 = and i1 %211, %227
  br label %229

; <label>:229                                     ; preds = %226, %215
  %230 = phi i1 [ %225, %215 ], [ %228, %226 ]
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = fmul fast float %232, 0x3FE3C6EF40000000
  %234 = frem fast float %92, 2.560000e+02
  %235 = frem fast float %93, 2.560000e+02
  %236 = fptoui float %234 to i32
  %237 = fptoui float %235 to i32
  %238 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %236, i32 %237, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = fadd fast float %239, %233
  %242 = fadd fast float %240, %233
  %243 = call float @dx.op.unary.f32(i32 22, float %241)  ; Frc(value)
  %244 = call float @dx.op.unary.f32(i32 22, float %242)  ; Frc(value)
  %245 = add i32 %67, 60
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = shl i32 %247, 4
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %247, 7
  %252 = and i32 %251, 32752
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %247, 22
  %255 = shl nuw nsw i32 %254, 5
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = add i32 %67, 72
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = lshr i32 %259, 8
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = lshr i32 %259, 16
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = add i32 %67, 36
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %273, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = add i32 %67, 96
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %280, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = fmul fast float %282, 0x3F50624DE0000000
  %286 = fmul fast float %284, 0x3F50624DE0000000
  %287 = add i32 %67, 124
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 2
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %300, label %292

; <label>:292                                     ; preds = %229
  %293 = add i32 %67, 200
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = add i32 %295, 0
  %297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %297, %dx.types.Handle %89, float %78, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 3
  br label %300

; <label>:300                                     ; preds = %292, %229
  %301 = phi float [ 1.000000e+00, %229 ], [ %299, %292 ]
  %302 = add i32 %67, 24
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = add i32 %67, 28
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = or i32 %307, %304
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %1130, label %310

; <label>:310                                     ; preds = %300
  %311 = add i32 %67, 92
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = lshr i32 %313, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = fmul fast float %315, 0x3F50624DE0000000
  %317 = add i32 %67, 40
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = lshr i32 %319, 16
  %321 = and i32 %320, 255
  %322 = lshr i32 %319, 24
  %323 = add i32 %67, 100
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 65535
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %325, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = add i32 %67, 32
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = lshr i32 %332, 22
  %334 = shl nuw nsw i32 %333, 5
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = shl i32 %332, 4
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %332, 7
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 3
  %344 = fmul fast float %343, 1.000000e+03
  %345 = fmul fast float %285, %344
  %346 = call float @dx.op.unary.f32(i32 22, float %345)  ; Frc(value)
  %347 = fadd fast float %346, %275
  %348 = fmul fast float %286, %344
  %349 = call float @dx.op.unary.f32(i32 22, float %348)  ; Frc(value)
  %350 = fadd fast float %349, %277
  %351 = fmul fast float %316, %344
  %352 = call float @dx.op.unary.f32(i32 22, float %351)  ; Frc(value)
  %353 = fmul fast float %352, 0x401921FB60000000
  %354 = fadd fast float %353, %335
  %355 = call float @dx.op.unary.f32(i32 13, float %354)  ; Sin(value)
  %356 = call float @dx.op.unary.f32(i32 12, float %354)  ; Cos(value)
  %357 = fsub fast float -0.000000e+00, %355
  %358 = fadd fast float %78, -5.000000e-01
  %359 = fadd fast float %79, -5.000000e-01
  %360 = fmul fast float %327, %358
  %361 = fmul fast float %329, %359
  %362 = fadd fast float %360, 5.000000e-01
  %363 = fadd fast float %361, 5.000000e-01
  %364 = fmul fast float %338, %362
  %365 = fmul fast float %341, %363
  %366 = fmul fast float %356, %364
  %367 = call float @dx.op.tertiary.f32(i32 46, float %357, float %365, float %366)  ; FMad(a,b,c)
  %368 = fmul fast float %355, %364
  %369 = call float @dx.op.tertiary.f32(i32 46, float %356, float %365, float %368)  ; FMad(a,b,c)
  %370 = fadd fast float %347, %367
  %371 = fadd fast float %350, %369
  %372 = icmp ugt i32 %321, 1
  %373 = icmp ugt i32 %319, 33554431
  %374 = or i1 %373, %372
  br i1 %374, label %375, label %400

; <label>:375                                     ; preds = %310
  %376 = add i32 %67, 84
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = lshr i32 %378, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = fmul fast float %343, %380
  %382 = call float @dx.op.unary.f32(i32 22, float %381)  ; Frc(value)
  %383 = mul nuw nsw i32 %321, %322
  %384 = uitofp i32 %383 to float
  %385 = fmul fast float %382, %384
  %386 = call float @dx.op.unary.f32(i32 27, float %385)  ; Round_ni(value)
  %387 = fptoui float %386 to i32
  %388 = urem i32 %387, %321
  %389 = udiv i32 %387, %322
  %390 = call float @dx.op.unary.f32(i32 22, float %370)  ; Frc(value)
  %391 = call float @dx.op.unary.f32(i32 22, float %371)  ; Frc(value)
  %392 = uitofp i32 %388 to float
  %393 = uitofp i32 %389 to float
  %394 = fadd fast float %390, %392
  %395 = fadd fast float %391, %393
  %396 = uitofp i32 %321 to float
  %397 = uitofp i32 %322 to float
  %398 = fdiv fast float %394, %396
  %399 = fdiv fast float %395, %397
  br label %400

; <label>:400                                     ; preds = %375, %310
  %401 = phi float [ %398, %375 ], [ %370, %310 ]
  %402 = phi float [ %399, %375 ], [ %371, %310 ]
  %403 = and i32 %304, 16777216
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %514, label %405

; <label>:405                                     ; preds = %400
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %409 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %410 = fadd fast float %407, %139
  %411 = fadd fast float %408, %140
  %412 = fadd fast float %409, %141
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = icmp eq i32 %66, 65535
  br i1 %416, label %511, label %417

; <label>:417                                     ; preds = %405
  %418 = lshr i32 %66, 1
  %419 = shl i32 %418, 2
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %66, 1
  %423 = icmp ne i32 %422, 0
  %424 = lshr i32 %421, 16
  %425 = and i32 %421, 65535
  %426 = select i1 %423, i32 %424, i32 %425
  %427 = icmp eq i32 %426, 65535
  br i1 %427, label %507, label %428

; <label>:428                                     ; preds = %417
  %429 = mul nuw nsw i32 %426, 40
  %430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = add nuw nsw i32 %429, 12
  %435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.f32 %435, 0
  %437 = extractvalue %dx.types.ResRet.f32 %435, 1
  %438 = extractvalue %dx.types.ResRet.f32 %435, 2
  %439 = add nuw nsw i32 %429, 24
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = add nuw nsw i32 %429, 36
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = fsub fast float %410, %431
  %448 = fsub fast float %411, %432
  %449 = fsub fast float %412, %433
  %450 = fmul fast float %446, %447
  %451 = fmul fast float %446, %448
  %452 = fmul fast float %446, %449
  %453 = call float @dx.op.unary.f32(i32 27, float %450)  ; Round_ni(value)
  %454 = call float @dx.op.unary.f32(i32 27, float %451)  ; Round_ni(value)
  %455 = call float @dx.op.unary.f32(i32 27, float %452)  ; Round_ni(value)
  %456 = fadd fast float %453, 5.000000e-01
  %457 = fadd fast float %454, 5.000000e-01
  %458 = fadd fast float %455, 5.000000e-01
  %459 = fmul fast float %456, %436
  %460 = fmul fast float %457, %437
  %461 = fmul fast float %458, %438
  %462 = shl i32 %66, 2
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = add i32 %464, 0
  %466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %467 = call float @dx.op.unary.f32(i32 22, float %459)  ; Frc(value)
  %468 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %469 = call float @dx.op.unary.f32(i32 22, float %461)  ; Frc(value)
  %470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %466, %dx.types.Handle %61, float %467, float %468, float %469, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 0
  %472 = extractvalue %dx.types.ResRet.f32 %470, 1
  %473 = extractvalue %dx.types.ResRet.f32 %470, 2
  %474 = fmul fast float %471, 1.023000e+03
  %475 = fmul fast float %472, 1.023000e+03
  %476 = fmul fast float %473, 1.023000e+03
  %477 = fadd fast float %474, 5.000000e-01
  %478 = fadd fast float %475, 5.000000e-01
  %479 = fadd fast float %476, 5.000000e-01
  %480 = call float @dx.op.unary.f32(i32 27, float %477)  ; Round_ni(value)
  %481 = call float @dx.op.unary.f32(i32 27, float %478)  ; Round_ni(value)
  %482 = call float @dx.op.unary.f32(i32 27, float %479)  ; Round_ni(value)
  %483 = fsub fast float %450, %453
  %484 = fsub fast float %451, %454
  %485 = fsub fast float %452, %455
  %486 = fmul fast float %483, 7.500000e-01
  %487 = fmul fast float %484, 7.500000e-01
  %488 = fmul fast float %485, 7.500000e-01
  %489 = fadd fast float %453, 1.250000e-01
  %490 = fadd fast float %489, %486
  %491 = fadd fast float %490, %480
  %492 = fadd fast float %454, 1.250000e-01
  %493 = fadd fast float %492, %487
  %494 = fadd fast float %493, %481
  %495 = fadd fast float %455, 1.250000e-01
  %496 = fadd fast float %495, %488
  %497 = fadd fast float %496, %482
  %498 = fmul fast float %491, %441
  %499 = fmul fast float %494, %442
  %500 = fmul fast float %497, %443
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = add i32 %502, 0
  %504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %503, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %504, %dx.types.Handle %59, float %498, float %499, float %500, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  br label %507

; <label>:507                                     ; preds = %428, %417
  %508 = phi float [ %506, %428 ], [ -1.000000e+00, %417 ]
  %509 = fadd fast float %508, %415
  %510 = call float @dx.op.unary.f32(i32 7, float %509)  ; Saturate(value)
  br label %511

; <label>:511                                     ; preds = %507, %405
  %512 = phi float [ %510, %507 ], [ %415, %405 ]
  %513 = fmul fast float %512, %301
  br label %514

; <label>:514                                     ; preds = %511, %400
  %515 = phi float [ %513, %511 ], [ %301, %400 ]
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = and i32 %517, 256
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %566, label %520

; <label>:520                                     ; preds = %514
  %521 = add i32 %67, 184
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = add i32 %523, 0
  %525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %525, %dx.types.Handle %89, float %401, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = add i32 %67, 52
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = shl i32 %530, 4
  %532 = and i32 %531, 32752
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = lshr i32 %530, 7
  %535 = and i32 %534, 32752
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = fsub fast float 1.000000e+00, %515
  %538 = call float @dx.op.binary.f32(i32 35, float %537, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %539 = bitcast float %515 to i32
  %540 = sitofp i32 %539 to float
  %541 = fadd fast float %540, 0xC1CFBF8940000000
  %542 = fmul fast float %536, %541
  %543 = fadd fast float %542, 0x41CFBF8940000000
  %544 = fptosi float %543 to i32
  %545 = bitcast i32 %544 to float
  %546 = bitcast float %538 to i32
  %547 = sitofp i32 %546 to float
  %548 = fadd fast float %547, 0xC1CFBF8940000000
  %549 = fmul fast float %548, %536
  %550 = fadd fast float %549, 0x41CFBF8940000000
  %551 = fptosi float %550 to i32
  %552 = bitcast i32 %551 to float
  %553 = fmul fast float %545, %533
  %554 = fmul fast float %552, %533
  %555 = fsub fast float %538, %553
  %556 = fadd fast float %554, %538
  %557 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %558 = call float @dx.op.unary.f32(i32 7, float %556)  ; Saturate(value)
  %559 = fsub fast float %527, %557
  %560 = fsub fast float %558, %557
  %561 = bitcast float %560 to i32
  %562 = sub nsw i32 2129859010, %561
  %563 = bitcast i32 %562 to float
  %564 = fmul fast float %563, %559
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  br label %566

; <label>:566                                     ; preds = %520, %514
  %567 = phi float [ %565, %520 ], [ %515, %514 ]
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 128
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %588, label %572

; <label>:572                                     ; preds = %566
  %573 = add i32 %67, 180
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = add i32 %575, 0
  %577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %576, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %578 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %577, %dx.types.Handle %89, float %401, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = and i32 %581, 524288
  %583 = icmp ne i32 %582, 0
  %584 = fcmp fast ogt float %579, 0x3FE0101020000000
  %585 = select i1 %584, float 1.000000e+00, float 0.000000e+00
  %586 = select i1 %583, float %585, float %579
  %587 = fmul fast float %586, %567
  br label %588

; <label>:588                                     ; preds = %572, %566
  %589 = phi float [ %587, %572 ], [ %567, %566 ]
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = and i32 %591, 16
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %792, label %594

; <label>:594                                     ; preds = %588
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = add i32 %67, 168
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = add i32 %599, 0
  %601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %601, %dx.types.Handle %88, float %401, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = extractvalue %dx.types.ResRet.f32 %602, 3
  %607 = and i32 %596, 255
  %608 = uitofp i32 %607 to float
  %609 = lshr i32 %596, 8
  %610 = and i32 %609, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %606, %608
  %613 = fadd fast float %612, %611
  %614 = fmul fast float %613, 0x3F70101000000000
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = and i32 %616, 512
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %627, label %619

; <label>:619                                     ; preds = %594
  %620 = add i32 %67, 188
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %624, %dx.types.Handle %89, float %401, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  br label %627

; <label>:627                                     ; preds = %619, %594
  %628 = phi float [ %626, %619 ], [ 1.000000e+00, %594 ]
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = and i32 %630, 33554432
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %739, label %633

; <label>:633                                     ; preds = %627
  %634 = add i32 %67, 80
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %636, 16
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = add i32 %67, 84
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 65535
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = lshr i32 %647, 24
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = and i32 %647, 255
  %652 = uitofp i32 %651 to float
  %653 = fmul fast float %652, 0x3F70101020000000
  %654 = lshr i32 %647, 8
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = lshr i32 %647, 16
  %659 = and i32 %658, 255
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, 0x3F70101020000000
  %662 = add i32 %67, 76
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = lshr i32 %664, 24
  %666 = uitofp i32 %665 to float
  %667 = fmul fast float %666, 0x3F70101020000000
  %668 = and i32 %664, 255
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %669, 0x3F70101020000000
  %671 = lshr i32 %664, 8
  %672 = and i32 %671, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F70101020000000
  %675 = lshr i32 %664, 16
  %676 = and i32 %675, 255
  %677 = uitofp i32 %676 to float
  %678 = fmul fast float %677, 0x3F70101020000000
  %679 = bitcast float %603 to i32
  %680 = ashr i32 %679, 1
  %681 = sub nsw i32 1597463174, %680
  %682 = bitcast i32 %681 to float
  %683 = fmul fast float %603, 5.000000e-01
  %684 = fmul fast float %682, %682
  %685 = fmul fast float %684, %683
  %686 = fsub fast float 1.500000e+00, %685
  %687 = fmul fast float %682, %603
  %688 = fmul fast float %687, %686
  %689 = bitcast float %604 to i32
  %690 = ashr i32 %689, 1
  %691 = sub nsw i32 1597463174, %690
  %692 = bitcast i32 %691 to float
  %693 = fmul fast float %604, 5.000000e-01
  %694 = fmul fast float %692, %692
  %695 = fmul fast float %694, %693
  %696 = fsub fast float 1.500000e+00, %695
  %697 = fmul fast float %692, %604
  %698 = fmul fast float %697, %696
  %699 = bitcast float %605 to i32
  %700 = ashr i32 %699, 1
  %701 = sub nsw i32 1597463174, %700
  %702 = bitcast i32 %701 to float
  %703 = fmul fast float %605, 5.000000e-01
  %704 = fmul fast float %702, %702
  %705 = fmul fast float %704, %703
  %706 = fsub fast float 1.500000e+00, %705
  %707 = fmul fast float %702, %605
  %708 = fmul fast float %707, %706
  %709 = fsub fast float %688, %670
  %710 = fsub fast float %698, %674
  %711 = fsub fast float %708, %678
  %712 = fmul fast float %709, %638
  %713 = fmul fast float %710, %640
  %714 = fmul fast float %711, %645
  %715 = fadd fast float %712, %653
  %716 = fadd fast float %713, %657
  %717 = fadd fast float %714, %661
  %718 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %719 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  %720 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %721 = fmul fast float %718, %718
  %722 = fmul fast float %719, %719
  %723 = fmul fast float %720, %720
  %724 = fsub fast float %721, %603
  %725 = fsub fast float %722, %604
  %726 = fsub fast float %723, %605
  %727 = fmul fast float %724, %628
  %728 = fmul fast float %725, %628
  %729 = fmul fast float %726, %628
  %730 = fadd fast float %727, %603
  %731 = fadd fast float %728, %604
  %732 = fadd fast float %729, %605
  %733 = fadd fast float %650, %614
  %734 = fsub fast float %733, %667
  %735 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %736 = fsub fast float %735, %614
  %737 = fmul fast float %736, %628
  %738 = fadd fast float %737, %614
  br label %792

; <label>:739                                     ; preds = %627
  %740 = and i32 %630, 134217728
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %776, label %742

; <label>:742                                     ; preds = %739
  %743 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %744 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %745 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %746 = fadd fast float %743, -5.000000e-01
  %747 = fadd fast float %744, -5.000000e-01
  %748 = fadd fast float %745, -5.000000e-01
  %749 = fmul fast float %746, %628
  %750 = fmul fast float %747, %628
  %751 = fmul fast float %748, %628
  %752 = fadd fast float %749, 5.000000e-01
  %753 = fadd fast float %750, 5.000000e-01
  %754 = fadd fast float %751, 5.000000e-01
  %755 = call float @dx.op.unary.f32(i32 24, float %603)  ; Sqrt(value)
  %756 = call float @dx.op.unary.f32(i32 24, float %604)  ; Sqrt(value)
  %757 = call float @dx.op.unary.f32(i32 24, float %605)  ; Sqrt(value)
  %758 = fmul fast float %752, 2.000000e+00
  %759 = fsub fast float 1.000000e+00, %758
  %760 = fmul fast float %759, %755
  %761 = fadd fast float %760, %758
  %762 = fmul fast float %761, %755
  %763 = fmul fast float %753, 2.000000e+00
  %764 = fsub fast float 1.000000e+00, %763
  %765 = fmul fast float %764, %756
  %766 = fadd fast float %765, %763
  %767 = fmul fast float %766, %756
  %768 = fmul fast float %754, 2.000000e+00
  %769 = fsub fast float 1.000000e+00, %768
  %770 = fmul fast float %769, %757
  %771 = fadd fast float %770, %768
  %772 = fmul fast float %771, %757
  %773 = fmul fast float %762, %762
  %774 = fmul fast float %767, %767
  %775 = fmul fast float %772, %772
  br label %792

; <label>:776                                     ; preds = %739
  %777 = fmul fast float %262, %262
  %778 = fmul fast float %266, %266
  %779 = fmul fast float %270, %270
  %780 = fadd fast float %777, -1.000000e+00
  %781 = fadd fast float %778, -1.000000e+00
  %782 = fadd fast float %779, -1.000000e+00
  %783 = fmul fast float %628, %780
  %784 = fmul fast float %628, %781
  %785 = fmul fast float %628, %782
  %786 = fadd fast float %783, 1.000000e+00
  %787 = fadd fast float %784, 1.000000e+00
  %788 = fadd fast float %785, 1.000000e+00
  %789 = fmul fast float %786, %603
  %790 = fmul fast float %787, %604
  %791 = fmul fast float %788, %605
  br label %792

; <label>:792                                     ; preds = %776, %742, %633, %588
  %793 = phi float [ %738, %633 ], [ %614, %742 ], [ %614, %776 ], [ 0x3FA23C0BE0000000, %588 ]
  %794 = phi float [ %730, %633 ], [ %773, %742 ], [ %789, %776 ], [ 1.000000e+00, %588 ]
  %795 = phi float [ %731, %633 ], [ %774, %742 ], [ %790, %776 ], [ 1.000000e+00, %588 ]
  %796 = phi float [ %732, %633 ], [ %775, %742 ], [ %791, %776 ], [ 1.000000e+00, %588 ]
  %797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.i32 %797, 1
  %799 = and i32 %798, 1
  %800 = icmp ne i32 %799, 0
  %801 = add i32 %67, 132
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 32
  %805 = icmp ne i32 %804, 0
  %806 = and i1 %800, %805
  %807 = select i1 %806, float 1.000000e+00, float %794
  %808 = select i1 %806, float 0x3FD3333340000000, float %795
  %809 = select i1 %806, float 0x3FD3333340000000, float %796
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, 32
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %954, label %814

; <label>:814                                     ; preds = %792
  %815 = add i32 %67, 44
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = add i32 %67, 172
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = add i32 %820, 0
  %822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %823 = add i32 %67, 136
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = extractvalue %dx.types.ResRet.i32 %824, 1
  %827 = extractvalue %dx.types.ResRet.i32 %824, 2
  %828 = extractvalue %dx.types.ResRet.i32 %824, 3
  %829 = bitcast i32 %826 to float
  %830 = bitcast i32 %827 to float
  %831 = bitcast i32 %828 to float
  %832 = add i32 %67, 152
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = extractvalue %dx.types.ResRet.i32 %833, 1
  %836 = extractvalue %dx.types.ResRet.i32 %833, 2
  %837 = extractvalue %dx.types.ResRet.i32 %833, 3
  %838 = bitcast i32 %835 to float
  %839 = bitcast i32 %836 to float
  %840 = bitcast i32 %837 to float
  %841 = fmul fast float %829, %401
  %842 = fmul fast float %829, %402
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 3
  %845 = fmul fast float %844, %830
  %846 = fmul fast float %844, %831
  %847 = fadd fast float %845, %841
  %848 = fadd fast float %846, %842
  %849 = fmul fast float %838, %401
  %850 = fmul fast float %838, %402
  %851 = fmul fast float %844, %839
  %852 = fmul fast float %844, %840
  %853 = fadd fast float %851, %849
  %854 = fadd fast float %852, %850
  %855 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %822, i32 0)  ; GetDimensions(handle,mipLevel)
  %856 = extractvalue %dx.types.Dimensions %855, 3
  %857 = sitofp i32 %856 to float
  %858 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %822, %dx.types.Handle %88, float %847, float %848, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %859 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %822, %dx.types.Handle %88, float %853, float %854, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %860 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %822, %dx.types.Handle %88, float %847, float %848, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = extractvalue %dx.types.ResRet.f32 %860, 2
  %864 = extractvalue %dx.types.ResRet.f32 %860, 3
  %865 = and i32 %817, 255
  %866 = uitofp i32 %865 to float
  %867 = lshr i32 %817, 8
  %868 = and i32 %867, 255
  %869 = uitofp i32 %868 to float
  %870 = lshr i32 %817, 16
  %871 = and i32 %870, 255
  %872 = uitofp i32 %871 to float
  %873 = fmul fast float %872, 0x3F70101000000000
  %874 = fmul fast float %861, %866
  %875 = fadd fast float %874, %869
  %876 = fadd fast float %862, -5.000000e-01
  %877 = fadd fast float %864, -5.000000e-01
  %878 = fmul fast float %876, %873
  %879 = fmul fast float %877, %873
  %880 = fadd fast float %878, 5.000000e-01
  %881 = fadd fast float %879, 5.000000e-01
  %882 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %822, %dx.types.Handle %88, float %853, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = extractvalue %dx.types.ResRet.f32 %882, 1
  %885 = extractvalue %dx.types.ResRet.f32 %882, 2
  %886 = extractvalue %dx.types.ResRet.f32 %882, 3
  %887 = fmul fast float %883, %866
  %888 = fadd fast float %887, %869
  %889 = fadd fast float %884, -5.000000e-01
  %890 = fadd fast float %886, -5.000000e-01
  %891 = fmul fast float %889, %873
  %892 = fmul fast float %890, %873
  %893 = fadd fast float %891, 5.000000e-01
  %894 = fadd fast float %892, 5.000000e-01
  %895 = fmul fast float %880, 2.000000e+00
  %896 = fadd fast float %895, -1.000000e+00
  %897 = fmul fast float %881, 2.000000e+00
  %898 = fadd fast float %897, -1.000000e+00
  %899 = fadd fast float %896, %898
  %900 = fmul fast float %899, 5.000000e-01
  %901 = fsub fast float %896, %898
  %902 = fmul fast float %901, 5.000000e-01
  %903 = call float @dx.op.unary.f32(i32 6, float %900)  ; FAbs(value)
  %904 = fsub fast float 1.000000e+00, %903
  %905 = call float @dx.op.unary.f32(i32 6, float %902)  ; FAbs(value)
  %906 = fsub fast float %904, %905
  %907 = call float @dx.op.dot3.f32(i32 55, float %900, float %902, float %906, float %900, float %902, float %906)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = call float @dx.op.unary.f32(i32 25, float %907)  ; Rsqrt(value)
  %909 = fmul fast float %893, 2.000000e+00
  %910 = fadd fast float %909, -1.000000e+00
  %911 = fmul fast float %894, 2.000000e+00
  %912 = fadd fast float %911, -1.000000e+00
  %913 = fadd fast float %910, %912
  %914 = fmul fast float %913, 5.000000e-01
  %915 = fsub fast float %910, %912
  %916 = fmul fast float %915, 5.000000e-01
  %917 = call float @dx.op.unary.f32(i32 6, float %914)  ; FAbs(value)
  %918 = fsub fast float 1.000000e+00, %917
  %919 = call float @dx.op.unary.f32(i32 6, float %916)  ; FAbs(value)
  %920 = fsub fast float %918, %919
  %921 = call float @dx.op.dot3.f32(i32 55, float %914, float %916, float %920, float %914, float %916, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %922 = call float @dx.op.unary.f32(i32 25, float %921)  ; Rsqrt(value)
  %923 = fadd fast float %857, -1.000000e+00
  %924 = fsub fast float %923, %858
  %925 = fmul fast float %924, 5.000000e-01
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %927 = fsub fast float %923, %859
  %928 = fmul fast float %927, 5.000000e-01
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = bitcast i32 %825 to float
  %931 = bitcast i32 %834 to float
  %932 = fmul fast float %900, %930
  %933 = fmul fast float %932, %908
  %934 = fmul fast float %933, %926
  %935 = fmul fast float %902, %930
  %936 = fmul fast float %935, %908
  %937 = fmul fast float %936, %926
  %938 = fmul fast float %922, %931
  %939 = fmul fast float %938, %914
  %940 = fmul fast float %939, %929
  %941 = fmul fast float %938, %916
  %942 = fmul fast float %941, %929
  %943 = fadd fast float %940, %934
  %944 = fadd fast float %942, %937
  %945 = fmul fast float %863, %930
  %946 = fmul fast float %885, %931
  %947 = fadd fast float %946, %945
  %948 = fmul fast float %875, %930
  %949 = fmul fast float %888, %931
  %950 = fadd fast float %949, %948
  %951 = fmul fast float %950, 0x3F70101000000000
  %952 = call float @dx.op.dot2.f32(i32 54, float %943, float %944, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %953 = call float @dx.op.dot2.f32(i32 54, float %943, float %944, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %954

; <label>:954                                     ; preds = %814, %792
  %955 = phi float [ %951, %814 ], [ 0x3FD6666660000000, %792 ]
  %956 = phi float [ %952, %814 ], [ 0.000000e+00, %792 ]
  %957 = phi float [ %953, %814 ], [ 0.000000e+00, %792 ]
  %958 = phi float [ %947, %814 ], [ 1.000000e+00, %792 ]
  %959 = add i32 %67, 64
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = lshr i32 %961, 22
  %963 = shl nuw nsw i32 %962, 5
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 64
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %1002, label %969

; <label>:969                                     ; preds = %954
  %970 = add i32 %67, 176
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = add i32 %972, 0
  %974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %973, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 131072
  %978 = icmp eq i32 %977, 0
  %979 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %974, %dx.types.Handle %88, float %401, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %980 = extractvalue %dx.types.ResRet.f32 %979, 0
  %981 = extractvalue %dx.types.ResRet.f32 %979, 1
  %982 = extractvalue %dx.types.ResRet.f32 %979, 2
  %983 = fmul fast float %980, %250
  %984 = fmul fast float %981, %253
  %985 = fmul fast float %982, %256
  br i1 %978, label %992, label %986

; <label>:986                                     ; preds = %969
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = fmul fast float %988, %983
  %990 = fmul fast float %988, %984
  %991 = fmul fast float %988, %985
  br label %992

; <label>:992                                     ; preds = %986, %969
  %993 = phi float [ %989, %986 ], [ %983, %969 ]
  %994 = phi float [ %990, %986 ], [ %984, %969 ]
  %995 = phi float [ %991, %986 ], [ %985, %969 ]
  %996 = fmul fast float %993, %964
  %997 = select i1 %230, float %996, float %993
  %998 = call float @dx.op.dot3.f32(i32 55, float %997, float %994, float %995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %999 = select i1 %230, float 0.000000e+00, float %993
  %1000 = select i1 %230, float %998, float %994
  %1001 = select i1 %230, float 0.000000e+00, float %995
  br label %1002

; <label>:1002                                    ; preds = %992, %954
  %1003 = phi float [ %999, %992 ], [ 0.000000e+00, %954 ]
  %1004 = phi float [ %1000, %992 ], [ 0.000000e+00, %954 ]
  %1005 = phi float [ %1001, %992 ], [ 0.000000e+00, %954 ]
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = and i32 %1007, 1024
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1040, label %1010

; <label>:1010                                    ; preds = %1002
  %1011 = add i32 %67, 56
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = and i32 %1013, 255
  %1015 = uitofp i32 %1014 to float
  %1016 = fmul fast float %1015, 0x3F70101020000000
  %1017 = lshr i32 %1013, 8
  %1018 = and i32 %1017, 255
  %1019 = uitofp i32 %1018 to float
  %1020 = fmul fast float %1019, 0x3F70101020000000
  %1021 = lshr i32 %1013, 16
  %1022 = and i32 %1021, 255
  %1023 = uitofp i32 %1022 to float
  %1024 = fmul fast float %1023, 0x3F70101020000000
  %1025 = fmul fast float %1016, %1016
  %1026 = fmul fast float %1020, %1020
  %1027 = fmul fast float %1024, %1024
  %1028 = add i32 %67, 192
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = add i32 %1030, 0
  %1032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1032, %dx.types.Handle %89, float %401, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = fmul fast float %1025, %1034
  %1038 = fmul fast float %1026, %1035
  %1039 = fmul fast float %1027, %1036
  br label %1040

; <label>:1040                                    ; preds = %1010, %1002
  %1041 = phi float [ %1037, %1010 ], [ 0.000000e+00, %1002 ]
  %1042 = phi float [ %1038, %1010 ], [ 0.000000e+00, %1002 ]
  %1043 = phi float [ %1039, %1010 ], [ 0.000000e+00, %1002 ]
  %1044 = fcmp fast ogt float %1041, 0.000000e+00
  %1045 = fcmp fast ogt float %1042, 0.000000e+00
  %1046 = fcmp fast ogt float %1043, 0.000000e+00
  %1047 = call float @dx.op.unary.f32(i32 23, float %1041)  ; Log(value)
  %1048 = call float @dx.op.unary.f32(i32 23, float %1042)  ; Log(value)
  %1049 = call float @dx.op.unary.f32(i32 23, float %1043)  ; Log(value)
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = lshr i32 %1051, 7
  %1053 = and i32 %1052, 32752
  %1054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1053)  ; LegacyF16ToF32(value)
  %1055 = fmul fast float %1047, 0xBFE62E4300000000
  %1056 = fmul fast float %1055, %1054
  %1057 = fmul fast float %1048, 0xBFE62E4300000000
  %1058 = fmul fast float %1057, %1054
  %1059 = fmul fast float %1049, 0xBFE62E4300000000
  %1060 = fmul fast float %1059, %1054
  %1061 = select i1 %1044, float %1056, float 1.270000e+02
  %1062 = select i1 %1045, float %1058, float 1.270000e+02
  %1063 = select i1 %1046, float %1060, float 1.270000e+02
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %1065, 10240
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1112, label %1068

; <label>:1068                                    ; preds = %1040
  %1069 = add i32 %67, 196
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %1071, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1073, %dx.types.Handle %89, float %401, float %402, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 3
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 1048576
  %1080 = icmp ne i32 %1079, 0
  %1081 = and i32 %1078, 8192
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1098, label %1083

; <label>:1083                                    ; preds = %1068
  %1084 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1085 = select i1 %1080, float %1084, float %1075
  %1086 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1087 = select i1 %1080, float %1086, float %1075
  %1088 = add i32 %67, 48
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = lshr i32 %1090, 16
  %1092 = and i32 %1091, 255
  %1093 = uitofp i32 %1092 to float
  %1094 = fmul fast float %1093, 0x3F80101020000000
  %1095 = fmul fast float %1094, %1087
  %1096 = fmul fast float %1094, %1075
  %1097 = fmul fast float %1094, %1085
  br label %1098

; <label>:1098                                    ; preds = %1083, %1068
  %1099 = phi float [ %1095, %1083 ], [ 0.000000e+00, %1068 ]
  %1100 = phi float [ %1096, %1083 ], [ 0.000000e+00, %1068 ]
  %1101 = phi float [ %1097, %1083 ], [ 0.000000e+00, %1068 ]
  %1102 = and i32 %1078, 2048
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1112, label %1104

; <label>:1104                                    ; preds = %1098
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = shl i32 %1106, 4
  %1108 = and i32 %1107, 32752
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = fmul fast float %1109, %1076
  %1111 = call float @dx.op.binary.f32(i32 35, float %1110, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1112

; <label>:1112                                    ; preds = %1104, %1098, %1040
  %1113 = phi float [ %1099, %1104 ], [ %1099, %1098 ], [ 0.000000e+00, %1040 ]
  %1114 = phi float [ %1100, %1104 ], [ %1100, %1098 ], [ 0.000000e+00, %1040 ]
  %1115 = phi float [ %1101, %1104 ], [ %1101, %1098 ], [ 0.000000e+00, %1040 ]
  %1116 = phi float [ %1111, %1104 ], [ 0x3F70101020000000, %1098 ], [ 0x3F70101020000000, %1040 ]
  %1117 = add i32 %67, 48
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = lshr i32 %1119, 8
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = call float @dx.op.dot3.f32(i32 55, float %807, float %808, float %809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = fmul fast float %1124, %1125
  %1127 = fadd fast float %1126, %1121
  %1128 = fmul fast float %1127, 0x3F70101020000000
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  br label %1130

; <label>:1130                                    ; preds = %1112, %300
  %1131 = phi float [ 0.000000e+00, %300 ], [ %956, %1112 ]
  %1132 = phi float [ 0.000000e+00, %300 ], [ %957, %1112 ]
  %1133 = phi float [ 0.000000e+00, %300 ], [ %807, %1112 ]
  %1134 = phi float [ 0.000000e+00, %300 ], [ %808, %1112 ]
  %1135 = phi float [ 0.000000e+00, %300 ], [ %809, %1112 ]
  %1136 = phi float [ 0.000000e+00, %300 ], [ %1113, %1112 ]
  %1137 = phi float [ 0.000000e+00, %300 ], [ %1114, %1112 ]
  %1138 = phi float [ 0.000000e+00, %300 ], [ %1115, %1112 ]
  %1139 = phi float [ 0.000000e+00, %300 ], [ %1003, %1112 ]
  %1140 = phi float [ 0.000000e+00, %300 ], [ %1004, %1112 ]
  %1141 = phi float [ 0.000000e+00, %300 ], [ %1005, %1112 ]
  %1142 = phi float [ 0.000000e+00, %300 ], [ %1061, %1112 ]
  %1143 = phi float [ 0.000000e+00, %300 ], [ %1062, %1112 ]
  %1144 = phi float [ 0.000000e+00, %300 ], [ %1063, %1112 ]
  %1145 = phi float [ 0.000000e+00, %300 ], [ %793, %1112 ]
  %1146 = phi float [ 0.000000e+00, %300 ], [ %589, %1112 ]
  %1147 = phi float [ 0.000000e+00, %300 ], [ %955, %1112 ]
  %1148 = phi float [ 0.000000e+00, %300 ], [ %958, %1112 ]
  %1149 = phi float [ 0.000000e+00, %300 ], [ %1116, %1112 ]
  %1150 = phi float [ 0.000000e+00, %300 ], [ %1129, %1112 ]
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = call float @dx.op.dot2.f32(i32 54, float %1131, float %1132, float %1131, float %1132)  ; Dot2(ax,ay,bx,by)
  %1154 = fmul fast float %1153, 0x3FE3333340000000
  %1155 = fsub fast float 1.000000e+00, %1154
  %1156 = call float @dx.op.dot3.f32(i32 55, float %1131, float %1132, float %1155, float %1131, float %1132, float %1155)  ; Dot3(ax,ay,az,bx,by,bz)
  %1157 = call float @dx.op.unary.f32(i32 25, float %1156)  ; Rsqrt(value)
  %1158 = fmul fast float %1157, %1131
  %1159 = fmul fast float %1157, %1132
  %1160 = fmul fast float %1155, %1157
  %1161 = fmul fast float %1160, %72
  %1162 = fmul fast float %1160, %73
  %1163 = fmul fast float %1160, %74
  %1164 = fmul fast float %1158, %68
  %1165 = fmul fast float %1158, %69
  %1166 = fmul fast float %1158, %70
  %1167 = fadd fast float %1161, %1164
  %1168 = fadd fast float %1162, %1165
  %1169 = fadd fast float %1163, %1166
  %1170 = fmul fast float %1159, %103
  %1171 = fmul fast float %1159, %104
  %1172 = fmul fast float %1159, %105
  %1173 = fadd fast float %1167, %1170
  %1174 = fadd fast float %1168, %1171
  %1175 = fadd fast float %1169, %1172
  %1176 = call float @dx.op.dot3.f32(i32 55, float %1173, float %1174, float %1175, float %1173, float %1174, float %1175)  ; Dot3(ax,ay,az,bx,by,bz)
  %1177 = call float @dx.op.unary.f32(i32 25, float %1176)  ; Rsqrt(value)
  %1178 = fmul fast float %1173, %1177
  %1179 = fmul fast float %1174, %1177
  %1180 = fmul fast float %1175, %1177
  %1181 = call float @dx.op.unary.f32(i32 83, float %139)  ; DerivCoarseX(value)
  %1182 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %1183 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %1184 = call float @dx.op.unary.f32(i32 84, float %139)  ; DerivCoarseY(value)
  %1185 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %1186 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %1187 = fadd fast float %1181, %139
  %1188 = fadd fast float %1182, %140
  %1189 = fadd fast float %1183, %141
  %1190 = fadd fast float %1184, %139
  %1191 = fadd fast float %1185, %140
  %1192 = fadd fast float %1186, %141
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 2
  %1199 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1200 = fmul fast float %1194, %92
  %1201 = fmul fast float %1200, %1198
  %1202 = fmul fast float %1195, %93
  %1203 = fmul fast float %1202, %1199
  %1204 = fptoui float %1201 to i32
  %1205 = fptoui float %1203 to i32
  %1206 = fadd fast float %1194, -1.000000e+00
  %1207 = fadd fast float %1195, -1.000000e+00
  %1208 = fptoui float %1206 to i32
  %1209 = fptoui float %1207 to i32
  %1210 = call i32 @dx.op.binary.i32(i32 40, i32 %1204, i32 %1208)  ; UMin(a,b)
  %1211 = call i32 @dx.op.binary.i32(i32 40, i32 %1205, i32 %1209)  ; UMin(a,b)
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1214 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1215 = fmul fast float %1213, %83
  %1216 = fsub fast float %1215, %1214
  %1217 = fadd fast float %1196, -1.000000e+00
  %1218 = call float @dx.op.binary.f32(i32 36, float %1216, float %1217)  ; FMin(a,b)
  %1219 = fptoui float %1218 to i32
  %1220 = fptoui float %1194 to i32
  %1221 = fptoui float %1195 to i32
  %1222 = mul i32 %1219, %1221
  %1223 = add i32 %1222, %1211
  %1224 = mul i32 %1223, %1220
  %1225 = add i32 %1224, %1210
  %1226 = shl i32 %1225, 2
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 1023
  %1230 = lshr i32 %1228, 10
  %1231 = icmp eq i32 %1229, 0
  br i1 %1231, label %1735, label %1232

; <label>:1232                                    ; preds = %1130
  %1233 = and i32 %1228, 1023
  br label %1234

; <label>:1234                                    ; preds = %1366, %1232
  %1235 = phi float [ %1367, %1366 ], [ 0.000000e+00, %1232 ]
  %1236 = phi float [ %1368, %1366 ], [ %1152, %1232 ]
  %1237 = phi float [ %1369, %1366 ], [ %1150, %1232 ]
  %1238 = phi float [ %1370, %1366 ], [ %1142, %1232 ]
  %1239 = phi float [ %1371, %1366 ], [ %1143, %1232 ]
  %1240 = phi float [ %1372, %1366 ], [ %1144, %1232 ]
  %1241 = phi float [ %1373, %1366 ], [ 0.000000e+00, %1232 ]
  %1242 = phi float [ %1374, %1366 ], [ 0.000000e+00, %1232 ]
  %1243 = phi float [ %1375, %1366 ], [ %1136, %1232 ]
  %1244 = phi float [ %1376, %1366 ], [ %1137, %1232 ]
  %1245 = phi float [ %1377, %1366 ], [ %1138, %1232 ]
  %1246 = phi float [ %1378, %1366 ], [ %1139, %1232 ]
  %1247 = phi float [ %1379, %1366 ], [ %1140, %1232 ]
  %1248 = phi float [ %1380, %1366 ], [ %1141, %1232 ]
  %1249 = phi float [ %1381, %1366 ], [ %1178, %1232 ]
  %1250 = phi float [ %1382, %1366 ], [ %1179, %1232 ]
  %1251 = phi float [ %1383, %1366 ], [ %1180, %1232 ]
  %1252 = phi float [ %1384, %1366 ], [ %1148, %1232 ]
  %1253 = phi float [ %1385, %1366 ], [ %1147, %1232 ]
  %1254 = phi float [ %1386, %1366 ], [ 0.000000e+00, %1232 ]
  %1255 = phi float [ %1387, %1366 ], [ %1145, %1232 ]
  %1256 = phi float [ %1388, %1366 ], [ %1133, %1232 ]
  %1257 = phi float [ %1389, %1366 ], [ %1134, %1232 ]
  %1258 = phi float [ %1390, %1366 ], [ %1135, %1232 ]
  %1259 = phi i32 [ %1316, %1366 ], [ 0, %1232 ]
  %1260 = add nuw nsw i32 %1259, %1230
  %1261 = shl i32 %1260, 2
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = shl i32 %1263, 8
  %1265 = or i32 %1264, 48
  %1266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  %1270 = extractvalue %dx.types.ResRet.f32 %1266, 3
  %1271 = or i32 %1264, 64
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = extractvalue %dx.types.ResRet.i32 %1272, 1
  %1275 = or i32 %1264, 80
  %1276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 2
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 3
  %1279 = or i32 %1264, 96
  %1280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.ResRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.ResRet.f32 %1280, 2
  %1284 = extractvalue %dx.types.ResRet.f32 %1280, 3
  %1285 = or i32 %1264, 112
  %1286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 2
  %1288 = or i32 %1264, 128
  %1289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = extractvalue %dx.types.ResRet.f32 %1289, 1
  %1292 = extractvalue %dx.types.ResRet.f32 %1289, 2
  %1293 = extractvalue %dx.types.ResRet.f32 %1289, 3
  %1294 = or i32 %1264, 144
  %1295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.ResRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.ResRet.f32 %1295, 2
  %1299 = extractvalue %dx.types.ResRet.f32 %1295, 3
  %1300 = or i32 %1264, 160
  %1301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.ResRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1301, 2
  %1305 = extractvalue %dx.types.ResRet.f32 %1301, 3
  %1306 = or i32 %1264, 192
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = or i32 %1264, 208
  %1310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = or i32 %1264, 248
  %1313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.ResRet.f32 %1313, 1
  %1316 = add nuw nsw i32 %1259, 1
  %1317 = bitcast float %1270 to i32
  %1318 = and i32 %1317, 2560
  %1319 = icmp eq i32 %1318, 0
  %1320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.ResRet.f32 %1320, 1
  %1323 = extractvalue %dx.types.ResRet.f32 %1320, 2
  %1324 = extractvalue %dx.types.ResRet.f32 %1320, 3
  %1325 = call float @dx.op.dot4.f32(i32 56, float %1321, float %1322, float %1323, float %1324, float %139, float %140, float %141, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1326 = or i32 %1264, 16
  %1327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = extractvalue %dx.types.ResRet.f32 %1327, 1
  %1330 = extractvalue %dx.types.ResRet.f32 %1327, 2
  %1331 = extractvalue %dx.types.ResRet.f32 %1327, 3
  %1332 = call float @dx.op.dot4.f32(i32 56, float %1328, float %1329, float %1330, float %1331, float %139, float %140, float %141, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1333 = or i32 %1264, 32
  %1334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.ResRet.f32 %1334, 1
  %1337 = extractvalue %dx.types.ResRet.f32 %1334, 2
  %1338 = extractvalue %dx.types.ResRet.f32 %1334, 3
  %1339 = call float @dx.op.dot4.f32(i32 56, float %1335, float %1336, float %1337, float %1338, float %139, float %140, float %141, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1340 = call float @dx.op.unary.f32(i32 27, float %1325)  ; Round_ni(value)
  %1341 = call float @dx.op.unary.f32(i32 6, float %1340)  ; FAbs(value)
  %1342 = call float @dx.op.unary.f32(i32 27, float %1332)  ; Round_ni(value)
  %1343 = call float @dx.op.unary.f32(i32 6, float %1342)  ; FAbs(value)
  %1344 = call float @dx.op.unary.f32(i32 6, float %1339)  ; FAbs(value)
  %1345 = call float @dx.op.unary.f32(i32 27, float %1344)  ; Round_ni(value)
  %1346 = fadd fast float %1343, %1341
  %1347 = fadd fast float %1346, %1345
  %1348 = fcmp fast oeq float %1347, 0.000000e+00
  %1349 = call float @dx.op.dot4.f32(i32 56, float %1321, float %1322, float %1323, float %1324, float %1187, float %1188, float %1189, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1350 = call float @dx.op.dot4.f32(i32 56, float %1328, float %1329, float %1330, float %1331, float %1187, float %1188, float %1189, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1351 = call float @dx.op.dot4.f32(i32 56, float %1321, float %1322, float %1323, float %1324, float %1190, float %1191, float %1192, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1352 = call float @dx.op.dot4.f32(i32 56, float %1328, float %1329, float %1330, float %1331, float %1190, float %1191, float %1192, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1353 = fsub fast float %1349, %1325
  %1354 = fsub fast float %1351, %1325
  %1355 = fsub fast float %1350, %1332
  %1356 = fsub fast float %1352, %1332
  %1357 = call float @dx.op.dot3.f32(i32 55, float %1267, float %1268, float %1269, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 2
  %1360 = fadd fast float %1359, %1357
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1362 = extractvalue %dx.types.CBufRet.f32 %1358, 0
  %1363 = fcmp fast ogt float %1361, %1362
  %1364 = and i1 %1348, %1363
  %1365 = and i1 %1319, %1364
  br i1 %1365, label %1392, label %1366

; <label>:1366                                    ; preds = %1721, %1473, %1392, %1234
  %1367 = phi float [ %1235, %1392 ], [ %1476, %1473 ], [ %1476, %1721 ], [ %1235, %1234 ]
  %1368 = phi float [ %1236, %1392 ], [ %1236, %1473 ], [ %1697, %1721 ], [ %1236, %1234 ]
  %1369 = phi float [ %1237, %1392 ], [ %1237, %1473 ], [ %1695, %1721 ], [ %1237, %1234 ]
  %1370 = phi float [ %1238, %1392 ], [ %1238, %1473 ], [ %1673, %1721 ], [ %1238, %1234 ]
  %1371 = phi float [ %1239, %1392 ], [ %1239, %1473 ], [ %1674, %1721 ], [ %1239, %1234 ]
  %1372 = phi float [ %1240, %1392 ], [ %1240, %1473 ], [ %1675, %1721 ], [ %1240, %1234 ]
  %1373 = phi float [ %1241, %1392 ], [ %1241, %1473 ], [ %1600, %1721 ], [ %1241, %1234 ]
  %1374 = phi float [ %1242, %1392 ], [ %1242, %1473 ], [ %1598, %1721 ], [ %1242, %1234 ]
  %1375 = phi float [ %1243, %1392 ], [ %1243, %1473 ], [ %1643, %1721 ], [ %1243, %1234 ]
  %1376 = phi float [ %1244, %1392 ], [ %1244, %1473 ], [ %1644, %1721 ], [ %1244, %1234 ]
  %1377 = phi float [ %1245, %1392 ], [ %1245, %1473 ], [ %1645, %1721 ], [ %1245, %1234 ]
  %1378 = phi float [ %1246, %1392 ], [ %1246, %1473 ], [ %1731, %1721 ], [ %1246, %1234 ]
  %1379 = phi float [ %1247, %1392 ], [ %1247, %1473 ], [ %1732, %1721 ], [ %1247, %1234 ]
  %1380 = phi float [ %1248, %1392 ], [ %1248, %1473 ], [ %1733, %1721 ], [ %1248, %1234 ]
  %1381 = phi float [ %1249, %1392 ], [ %1249, %1473 ], [ %1579, %1721 ], [ %1249, %1234 ]
  %1382 = phi float [ %1250, %1392 ], [ %1250, %1473 ], [ %1580, %1721 ], [ %1250, %1234 ]
  %1383 = phi float [ %1251, %1392 ], [ %1251, %1473 ], [ %1581, %1721 ], [ %1251, %1234 ]
  %1384 = phi float [ %1252, %1392 ], [ %1252, %1473 ], [ %1653, %1721 ], [ %1252, %1234 ]
  %1385 = phi float [ %1253, %1392 ], [ %1253, %1473 ], [ %1650, %1721 ], [ %1253, %1234 ]
  %1386 = phi float [ %1254, %1392 ], [ %1254, %1473 ], [ %1647, %1721 ], [ %1254, %1234 ]
  %1387 = phi float [ %1255, %1392 ], [ %1255, %1473 ], [ %1596, %1721 ], [ %1255, %1234 ]
  %1388 = phi float [ %1256, %1392 ], [ %1256, %1473 ], [ %1591, %1721 ], [ %1256, %1234 ]
  %1389 = phi float [ %1257, %1392 ], [ %1257, %1473 ], [ %1592, %1721 ], [ %1257, %1234 ]
  %1390 = phi float [ %1258, %1392 ], [ %1258, %1473 ], [ %1593, %1721 ], [ %1258, %1234 ]
  %1391 = icmp eq i32 %1316, %1233
  br i1 %1391, label %1734, label %1234

; <label>:1392                                    ; preds = %1234
  %1393 = extractvalue %dx.types.ResRet.f32 %1286, 3
  %1394 = extractvalue %dx.types.ResRet.f32 %1286, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1396 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1397 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1398 = extractvalue %dx.types.ResRet.i32 %1272, 3
  %1399 = extractvalue %dx.types.ResRet.i32 %1272, 2
  %1400 = add i32 %1398, 0
  %1401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1400, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1403 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1401, %dx.types.Handle %1402, float %1325, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float %1353, float %1355, float undef, float %1354, float %1356, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = fmul fast float %1404, %1397
  %1406 = fadd fast float %1405, %1396
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1408 = fmul fast float %1325, %1281
  %1409 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1332, float %1408)  ; FMad(a,b,c)
  %1410 = fadd fast float %1409, %1395
  %1411 = fmul fast float %1325, %1283
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1332, float %1411)  ; FMad(a,b,c)
  %1413 = fadd fast float %1412, %1394
  %1414 = fmul fast float %1353, %1281
  %1415 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1355, float %1414)  ; FMad(a,b,c)
  %1416 = fmul fast float %1353, %1283
  %1417 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1355, float %1416)  ; FMad(a,b,c)
  %1418 = fmul fast float %1354, %1281
  %1419 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1356, float %1418)  ; FMad(a,b,c)
  %1420 = fmul fast float %1354, %1283
  %1421 = call float @dx.op.tertiary.f32(i32 46, float %1284, float %1356, float %1420)  ; FMad(a,b,c)
  %1422 = add i32 %1399, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1422, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1423, %dx.types.Handle %1402, float %1410, float %1413, float undef, float undef, i32 0, i32 0, i32 undef, float %1415, float %1417, float undef, float %1419, float %1421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = and i32 %1317, 1024
  %1427 = icmp ne i32 %1426, 0
  %1428 = fcmp fast ogt float %1425, 0x3FE0101020000000
  %1429 = uitofp i1 %1428 to float
  %1430 = select i1 %1427, float %1429, float %1425
  %1431 = and i32 %1317, 8192
  %1432 = icmp ne i32 %1431, 0
  %1433 = select i1 %1432, float %1393, float 1.000000e+00
  %1434 = fmul fast float %1325, 2.000000e+00
  %1435 = fadd fast float %1434, -1.000000e+00
  %1436 = call float @dx.op.unary.f32(i32 6, float %1435)  ; FAbs(value)
  %1437 = fmul fast float %1436, %1314
  %1438 = fsub fast float %1437, %1314
  %1439 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1440 = fmul fast float %1332, 2.000000e+00
  %1441 = fadd fast float %1440, -1.000000e+00
  %1442 = call float @dx.op.unary.f32(i32 6, float %1441)  ; FAbs(value)
  %1443 = fmul fast float %1442, %1315
  %1444 = fsub fast float %1443, %1315
  %1445 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1446 = fmul fast float %1344, %1277
  %1447 = fsub fast float %1446, %1277
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1449 = fmul fast float %1407, %1433
  %1450 = fmul fast float %1449, %1404
  %1451 = fmul fast float %1450, %1439
  %1452 = fmul fast float %1451, %1430
  %1453 = fmul fast float %1452, %1445
  %1454 = fmul fast float %1453, %1448
  %1455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1456 = extractvalue %dx.types.CBufRet.f32 %1455, 1
  %1457 = extractvalue %dx.types.CBufRet.f32 %1455, 0
  %1458 = fsub fast float %1361, %1457
  %1459 = fmul fast float %1458, %1456
  %1460 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1461 = fmul fast float %1454, %1278
  %1462 = fadd fast float %1454, %1278
  %1463 = fmul fast float %1462, %1287
  %1464 = fsub fast float %1463, %1287
  %1465 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1466 = and i32 %1317, 128
  %1467 = icmp ne i32 %1466, 0
  %1468 = select i1 %1467, float %1465, float %1461
  %1469 = fmul fast float %1468, %1460
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = fcmp fast ugt float %1469, %1471
  br i1 %1472, label %1473, label %1366

; <label>:1473                                    ; preds = %1392
  %1474 = select i1 %1432, float %1469, float 0.000000e+00
  %1475 = fadd fast float %1474, %1235
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  br i1 %1432, label %1366, label %1477

; <label>:1477                                    ; preds = %1473
  %1478 = and i32 %1317, 4
  %1479 = and i32 %1317, 8
  %1480 = add i32 %1273, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1480, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1481, %dx.types.Handle %1482, float %1410, float %1413, float undef, float undef, i32 0, i32 0, i32 undef, float %1415, float %1417, float undef, float %1419, float %1421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.ResRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.ResRet.f32 %1483, 2
  %1487 = extractvalue %dx.types.ResRet.f32 %1483, 3
  %1488 = bitcast float %1299 to i32
  %1489 = and i32 %1488, 255
  %1490 = uitofp i32 %1489 to float
  %1491 = lshr i32 %1488, 8
  %1492 = and i32 %1491, 255
  %1493 = uitofp i32 %1492 to float
  %1494 = fmul fast float %1487, %1490
  %1495 = fadd fast float %1494, %1493
  %1496 = fmul fast float %1495, 0x3F70101000000000
  %1497 = add i32 %1274, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1497, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1498, %dx.types.Handle %1482, float %1410, float %1413, float undef, float undef, i32 0, i32 0, i32 undef, float %1415, float %1417, float undef, float %1419, float %1421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = extractvalue %dx.types.ResRet.f32 %1499, 1
  %1502 = extractvalue %dx.types.ResRet.f32 %1499, 2
  %1503 = extractvalue %dx.types.ResRet.f32 %1499, 3
  %1504 = bitcast float %1293 to i32
  %1505 = and i32 %1504, 255
  %1506 = uitofp i32 %1505 to float
  %1507 = lshr i32 %1504, 8
  %1508 = and i32 %1507, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = lshr i32 %1504, 16
  %1511 = and i32 %1510, 255
  %1512 = uitofp i32 %1511 to float
  %1513 = fmul fast float %1512, 0x3F70101000000000
  %1514 = fmul fast float %1500, %1506
  %1515 = fadd fast float %1514, %1509
  %1516 = fmul fast float %1515, 0x3F70101000000000
  %1517 = fadd fast float %1501, -5.000000e-01
  %1518 = fadd fast float %1503, -5.000000e-01
  %1519 = fmul fast float %1517, %1513
  %1520 = fmul fast float %1518, %1513
  %1521 = fadd fast float %1519, 5.000000e-01
  %1522 = fadd fast float %1520, 5.000000e-01
  %1523 = fmul fast float %1484, %1302
  %1524 = fmul fast float %1485, %1303
  %1525 = fmul fast float %1486, %1304
  %1526 = fmul fast float %1521, 2.000000e+00
  %1527 = fadd fast float %1526, -1.000000e+00
  %1528 = fmul fast float %1522, 2.000000e+00
  %1529 = fadd fast float %1528, -1.000000e+00
  %1530 = fadd fast float %1527, %1529
  %1531 = fmul fast float %1530, 5.000000e-01
  %1532 = fsub fast float %1527, %1529
  %1533 = fmul fast float %1532, 5.000000e-01
  %1534 = call float @dx.op.unary.f32(i32 6, float %1531)  ; FAbs(value)
  %1535 = fsub fast float 1.000000e+00, %1534
  %1536 = call float @dx.op.unary.f32(i32 6, float %1533)  ; FAbs(value)
  %1537 = fsub fast float %1535, %1536
  %1538 = call float @dx.op.dot3.f32(i32 55, float %1531, float %1533, float %1537, float %1531, float %1533, float %1537)  ; Dot3(ax,ay,az,bx,by,bz)
  %1539 = call float @dx.op.unary.f32(i32 25, float %1538)  ; Rsqrt(value)
  %1540 = fmul fast float %1531, %1539
  %1541 = fmul fast float %1533, %1539
  %1542 = fmul fast float %1539, %1537
  %1543 = fmul fast float %1542, %1267
  %1544 = fmul fast float %1542, %1268
  %1545 = fmul fast float %1542, %1269
  %1546 = fmul fast float %1540, %1290
  %1547 = fmul fast float %1540, %1291
  %1548 = fmul fast float %1540, %1292
  %1549 = fadd fast float %1546, %1543
  %1550 = fadd fast float %1547, %1544
  %1551 = fadd fast float %1548, %1545
  %1552 = fmul fast float %1541, %1296
  %1553 = fmul fast float %1541, %1297
  %1554 = fmul fast float %1541, %1298
  %1555 = fadd fast float %1549, %1552
  %1556 = fadd fast float %1550, %1553
  %1557 = fadd fast float %1551, %1554
  %1558 = call float @dx.op.dot3.f32(i32 55, float %1555, float %1556, float %1557, float %1555, float %1556, float %1557)  ; Dot3(ax,ay,az,bx,by,bz)
  %1559 = call float @dx.op.unary.f32(i32 25, float %1558)  ; Rsqrt(value)
  %1560 = fmul fast float %1555, %1559
  %1561 = fmul fast float %1556, %1559
  %1562 = fmul fast float %1557, %1559
  %1563 = icmp ne i32 %1479, 0
  %1564 = select i1 %1563, float 1.000000e+00, float 0.000000e+00
  %1565 = fmul fast float %1469, %1564
  %1566 = and i32 %1317, 1
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1568, label %1572

; <label>:1568                                    ; preds = %1477
  %1569 = fsub fast float %1560, %1249
  %1570 = fsub fast float %1561, %1250
  %1571 = fsub fast float %1562, %1251
  br label %1572

; <label>:1572                                    ; preds = %1568, %1477
  %1573 = phi float [ %1569, %1568 ], [ %1560, %1477 ]
  %1574 = phi float [ %1570, %1568 ], [ %1561, %1477 ]
  %1575 = phi float [ %1571, %1568 ], [ %1562, %1477 ]
  %1576 = fmul float %1575, %1565
  %1577 = fmul float %1574, %1565
  %1578 = fmul float %1573, %1565
  %1579 = fadd fast float %1578, %1249
  %1580 = fadd fast float %1577, %1250
  %1581 = fadd fast float %1576, %1251
  %1582 = icmp ne i32 %1478, 0
  %1583 = select i1 %1582, float 1.000000e+00, float 0.000000e+00
  %1584 = fmul fast float %1469, %1583
  %1585 = fsub fast float %1523, %1256
  %1586 = fsub fast float %1524, %1257
  %1587 = fsub fast float %1525, %1258
  %1588 = fmul fast float %1585, %1584
  %1589 = fmul fast float %1586, %1584
  %1590 = fmul fast float %1587, %1584
  %1591 = fadd fast float %1588, %1256
  %1592 = fadd fast float %1589, %1257
  %1593 = fadd fast float %1590, %1258
  %1594 = fsub fast float %1496, %1255
  %1595 = fmul fast float %1594, %1584
  %1596 = fadd fast float %1595, %1255
  %1597 = fmul fast float %1584, %1242
  %1598 = fsub fast float %1242, %1597
  %1599 = fmul fast float %1584, %1241
  %1600 = fsub fast float %1241, %1599
  %1601 = bitcast float %1311 to i32
  %1602 = lshr i32 %1601, 16
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 1
  %1607 = icmp eq i32 %1606, 0
  br i1 %1607, label %1608, label %1633

; <label>:1608                                    ; preds = %1572
  %1609 = fadd fast float %1496, 0xBFB99999A0000000
  %1610 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1611 = fmul fast float %1610, 0x3FF1C71C80000000
  %1612 = fsub fast float 1.000000e+00, %1611
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1614 = fmul fast float %1613, %1523
  %1615 = fmul fast float %1613, %1524
  %1616 = fmul fast float %1613, %1525
  %1617 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1618 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1619 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1620 = call float @dx.op.binary.f32(i32 35, float %1618, float %1619)  ; FMax(a,b)
  %1621 = call float @dx.op.binary.f32(i32 35, float %1617, float %1620)  ; FMax(a,b)
  %1622 = fcmp fast ogt float %1621, 0.000000e+00
  %1623 = bitcast float %1621 to i32
  %1624 = sub nsw i32 2129859010, %1623
  %1625 = bitcast i32 %1624 to float
  %1626 = select i1 %1622, float %1625, float 0.000000e+00
  %1627 = fmul fast float %1617, %1603
  %1628 = fmul fast float %1618, %1603
  %1629 = fmul fast float %1619, %1603
  %1630 = fmul fast float %1627, %1626
  %1631 = fmul fast float %1628, %1626
  %1632 = fmul fast float %1629, %1626
  br label %1633

; <label>:1633                                    ; preds = %1608, %1572
  %1634 = phi float [ %1603, %1572 ], [ %1630, %1608 ]
  %1635 = phi float [ %1603, %1572 ], [ %1631, %1608 ]
  %1636 = phi float [ %1603, %1572 ], [ %1632, %1608 ]
  %1637 = fsub fast float %1634, %1243
  %1638 = fsub fast float %1635, %1244
  %1639 = fsub fast float %1636, %1245
  %1640 = fmul fast float %1637, %1584
  %1641 = fmul fast float %1638, %1584
  %1642 = fmul fast float %1639, %1584
  %1643 = fadd fast float %1640, %1243
  %1644 = fadd fast float %1641, %1244
  %1645 = fadd fast float %1642, %1245
  %1646 = fadd fast float %1469, %1254
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1648 = fsub fast float %1516, %1253
  %1649 = fmul fast float %1648, %1565
  %1650 = fadd fast float %1649, %1253
  %1651 = fsub fast float %1502, %1252
  %1652 = fmul fast float %1651, %1565
  %1653 = fadd fast float %1652, %1252
  br i1 %1567, label %1662, label %1654

; <label>:1654                                    ; preds = %1633
  %1655 = and i32 %1317, 32768
  %1656 = icmp eq i32 %1655, 0
  br i1 %1656, label %1672, label %1657

; <label>:1657                                    ; preds = %1654
  %1658 = fmul fast float %1565, 1.270000e+02
  %1659 = fadd fast float %1658, %1238
  %1660 = fadd fast float %1658, %1239
  %1661 = fadd fast float %1658, %1240
  br label %1672

; <label>:1662                                    ; preds = %1633
  %1663 = fsub fast float 1.270000e+02, %1238
  %1664 = fsub fast float 1.270000e+02, %1239
  %1665 = fsub fast float 1.270000e+02, %1240
  %1666 = fmul fast float %1565, %1663
  %1667 = fmul fast float %1565, %1664
  %1668 = fmul fast float %1565, %1665
  %1669 = fadd fast float %1666, %1238
  %1670 = fadd fast float %1667, %1239
  %1671 = fadd fast float %1668, %1240
  br label %1672

; <label>:1672                                    ; preds = %1662, %1657, %1654
  %1673 = phi float [ %1659, %1657 ], [ %1238, %1654 ], [ %1669, %1662 ]
  %1674 = phi float [ %1660, %1657 ], [ %1239, %1654 ], [ %1670, %1662 ]
  %1675 = phi float [ %1661, %1657 ], [ %1240, %1654 ], [ %1671, %1662 ]
  %1676 = call float @dx.op.dot3.f32(i32 55, float %1523, float %1524, float %1525, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 0
  %1679 = extractvalue %dx.types.CBufRet.f32 %1677, 1
  %1680 = fmul fast float %1679, %1676
  %1681 = fadd fast float %1680, %1678
  %1682 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1683 = bitcast float %1305 to i32
  %1684 = and i32 %1683, 65535
  %1685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1684)  ; LegacyF16ToF32(value)
  %1686 = lshr i32 %1683, 16
  %1687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1686)  ; LegacyF16ToF32(value)
  %1688 = fcmp fast oge float %1685, 0.000000e+00
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = select i1 %1688, float %1685, float %1690
  %1692 = fadd fast float %1691, %1687
  %1693 = fsub fast float %1682, %1237
  %1694 = fmul fast float %1693, %1469
  %1695 = fadd fast float %1694, %1237
  %1696 = fmul fast float %1692, %1469
  %1697 = call float @dx.op.binary.f32(i32 35, float %1236, float %1696)  ; FMax(a,b)
  %1698 = and i32 %1317, 16
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1721, label %1700

; <label>:1700                                    ; preds = %1672
  %1701 = add i32 %1308, 0
  %1702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1701, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1703 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1702, %dx.types.Handle %1482, float %1410, float %1413, float undef, float undef, i32 0, i32 0, i32 undef, float %1415, float %1417, float undef, float %1419, float %1421, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1704 = extractvalue %dx.types.ResRet.f32 %1703, 0
  %1705 = extractvalue %dx.types.ResRet.f32 %1703, 1
  %1706 = extractvalue %dx.types.ResRet.f32 %1703, 2
  %1707 = and i32 %1601, 65535
  %1708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1707)  ; LegacyF16ToF32(value)
  %1709 = fmul fast float %1704, %1302
  %1710 = fmul fast float %1705, %1303
  %1711 = fmul fast float %1706, %1304
  %1712 = and i32 %1317, 16384
  %1713 = icmp ne i32 %1712, 0
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  %1716 = select i1 %1713, float %1715, float 1.000000e+00
  %1717 = fmul fast float %1716, %1708
  %1718 = fmul fast float %1709, %1717
  %1719 = fmul fast float %1710, %1717
  %1720 = fmul fast float %1711, %1717
  br label %1721

; <label>:1721                                    ; preds = %1700, %1672
  %1722 = phi float [ %1718, %1700 ], [ 0.000000e+00, %1672 ]
  %1723 = phi float [ %1719, %1700 ], [ 0.000000e+00, %1672 ]
  %1724 = phi float [ %1720, %1700 ], [ 0.000000e+00, %1672 ]
  %1725 = fsub fast float %1722, %1246
  %1726 = fsub fast float %1723, %1247
  %1727 = fsub fast float %1724, %1248
  %1728 = fmul fast float %1725, %1469
  %1729 = fmul fast float %1726, %1469
  %1730 = fmul fast float %1727, %1469
  %1731 = fadd fast float %1728, %1246
  %1732 = fadd fast float %1729, %1247
  %1733 = fadd fast float %1730, %1248
  br label %1366

; <label>:1734                                    ; preds = %1366
  br label %1735

; <label>:1735                                    ; preds = %1734, %1130
  %1736 = phi float [ 0.000000e+00, %1130 ], [ %1367, %1734 ]
  %1737 = phi float [ %1152, %1130 ], [ %1368, %1734 ]
  %1738 = phi float [ %1150, %1130 ], [ %1369, %1734 ]
  %1739 = phi float [ %1142, %1130 ], [ %1370, %1734 ]
  %1740 = phi float [ %1143, %1130 ], [ %1371, %1734 ]
  %1741 = phi float [ %1144, %1130 ], [ %1372, %1734 ]
  %1742 = phi float [ 0.000000e+00, %1130 ], [ %1373, %1734 ]
  %1743 = phi float [ 0.000000e+00, %1130 ], [ %1374, %1734 ]
  %1744 = phi float [ %1136, %1130 ], [ %1375, %1734 ]
  %1745 = phi float [ %1137, %1130 ], [ %1376, %1734 ]
  %1746 = phi float [ %1138, %1130 ], [ %1377, %1734 ]
  %1747 = phi float [ %1139, %1130 ], [ %1378, %1734 ]
  %1748 = phi float [ %1140, %1130 ], [ %1379, %1734 ]
  %1749 = phi float [ %1141, %1130 ], [ %1380, %1734 ]
  %1750 = phi float [ %1178, %1130 ], [ %1381, %1734 ]
  %1751 = phi float [ %1179, %1130 ], [ %1382, %1734 ]
  %1752 = phi float [ %1180, %1130 ], [ %1383, %1734 ]
  %1753 = phi float [ %1148, %1130 ], [ %1384, %1734 ]
  %1754 = phi float [ %1147, %1130 ], [ %1385, %1734 ]
  %1755 = phi float [ 0.000000e+00, %1130 ], [ %1386, %1734 ]
  %1756 = phi float [ %1145, %1130 ], [ %1387, %1734 ]
  %1757 = phi float [ %1133, %1130 ], [ %1388, %1734 ]
  %1758 = phi float [ %1134, %1130 ], [ %1389, %1734 ]
  %1759 = phi float [ %1135, %1130 ], [ %1390, %1734 ]
  %1760 = call float @dx.op.dot3.f32(i32 55, float %1750, float %1751, float %1752, float %1750, float %1751, float %1752)  ; Dot3(ax,ay,az,bx,by,bz)
  %1761 = call float @dx.op.unary.f32(i32 25, float %1760)  ; Rsqrt(value)
  %1762 = fmul fast float %1761, %1750
  %1763 = fmul fast float %1761, %1751
  %1764 = fmul fast float %1761, %1752
  %1765 = fadd fast float %1755, %1146
  %1766 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1767 = call float @dx.op.dot3.f32(i32 55, float %1762, float %1763, float %1764, float %1762, float %1763, float %1764)  ; Dot3(ax,ay,az,bx,by,bz)
  %1768 = call float @dx.op.unary.f32(i32 25, float %1767)  ; Rsqrt(value)
  %1769 = fmul fast float %1768, %1762
  %1770 = fmul fast float %1768, %1763
  %1771 = fmul fast float %1768, %1764
  %1772 = fadd fast float %1756, 0xBFB99999A0000000
  %1773 = call float @dx.op.unary.f32(i32 7, float %1772)  ; Saturate(value)
  %1774 = fmul fast float %1773, 0x3FF1C71C80000000
  %1775 = call float @dx.op.binary.f32(i32 36, float %1756, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1776 = fsub fast float 1.000000e+00, %1774
  %1777 = call float @dx.op.unary.f32(i32 7, float %1776)  ; Saturate(value)
  %1778 = fmul fast float %1777, %1757
  %1779 = fmul fast float %1777, %1758
  %1780 = fmul fast float %1777, %1759
  %1781 = call float @dx.op.unary.f32(i32 7, float %1778)  ; Saturate(value)
  %1782 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1783 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1784 = fmul fast float %1774, %1757
  %1785 = fmul fast float %1774, %1758
  %1786 = fmul fast float %1774, %1759
  %1787 = fadd fast float %1784, %1775
  %1788 = fadd fast float %1785, %1775
  %1789 = fadd fast float %1786, %1775
  %1790 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1791 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1792 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1793 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = and i32 %1795, 1
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %1812, label %1798

; <label>:1798                                    ; preds = %1735
  %1799 = call float @dx.op.binary.f32(i32 35, float %1782, float %1783)  ; FMax(a,b)
  %1800 = call float @dx.op.binary.f32(i32 35, float %1781, float %1799)  ; FMax(a,b)
  %1801 = fcmp fast ogt float %1800, 0.000000e+00
  %1802 = bitcast float %1800 to i32
  %1803 = sub nsw i32 2129859010, %1802
  %1804 = bitcast i32 %1803 to float
  %1805 = select i1 %1801, float %1804, float 0.000000e+00
  %1806 = fmul fast float %1781, %1744
  %1807 = fmul fast float %1782, %1745
  %1808 = fmul fast float %1783, %1746
  %1809 = fmul fast float %1806, %1805
  %1810 = fmul fast float %1807, %1805
  %1811 = fmul fast float %1808, %1805
  br label %1812

; <label>:1812                                    ; preds = %1798, %1735
  %1813 = phi float [ %1809, %1798 ], [ %1744, %1735 ]
  %1814 = phi float [ %1810, %1798 ], [ %1745, %1735 ]
  %1815 = phi float [ %1811, %1798 ], [ %1746, %1735 ]
  %1816 = call float @dx.op.binary.f32(i32 36, float %1739, float 1.270000e+02)  ; FMin(a,b)
  %1817 = call float @dx.op.binary.f32(i32 36, float %1740, float 1.270000e+02)  ; FMin(a,b)
  %1818 = call float @dx.op.binary.f32(i32 36, float %1741, float 1.270000e+02)  ; FMin(a,b)
  %1819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.i32 %1819, 3
  %1821 = and i32 %1820, 8
  %1822 = icmp ne i32 %1821, 0
  %1823 = call float @dx.op.binary.f32(i32 35, float %1781, float %1757)  ; FMax(a,b)
  %1824 = call float @dx.op.binary.f32(i32 35, float %1782, float %1757)  ; FMax(a,b)
  %1825 = call float @dx.op.binary.f32(i32 35, float %1783, float %1757)  ; FMax(a,b)
  %1826 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1782, float %1783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1827 = select i1 %230, float %1757, float %1781
  %1828 = select i1 %230, float %1826, float %1782
  %1829 = select i1 %230, float 1.000000e+00, float %1783
  %1830 = select i1 %1822, float %1823, float %1827
  %1831 = select i1 %1822, float %1824, float %1828
  %1832 = select i1 %1822, float %1825, float %1829
  %1833 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1814, float %1815, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1834 = select i1 %230, float %1833, float %1813
  %1835 = select i1 %230, float %1833, float %1814
  %1836 = select i1 %230, float %1833, float %1815
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.CBufRet.f32 %1837, 2
  %1841 = fadd fast float %1838, %139
  %1842 = fadd fast float %1839, %140
  %1843 = fadd fast float %1840, %141
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.CBufRet.f32 %1844, 1
  %1847 = fsub fast float %1841, %1845
  %1848 = fsub fast float %1842, %1846
  %1849 = fmul fast float %1847, %1847
  %1850 = fmul fast float %1848, %1848
  %1851 = fadd fast float %1849, %1850
  %1852 = call float @dx.op.unary.f32(i32 24, float %1851)  ; Sqrt(value)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1844, 2
  %1854 = fcmp fast olt float %1852, %1853
  br i1 %1854, label %1855, label %1922

; <label>:1855                                    ; preds = %1812
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 0
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 0
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.CBufRet.f32 %1856, 1
  %1863 = extractvalue %dx.types.CBufRet.f32 %1858, 1
  %1864 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1865 = extractvalue %dx.types.CBufRet.f32 %1856, 3
  %1866 = extractvalue %dx.types.CBufRet.f32 %1858, 3
  %1867 = extractvalue %dx.types.CBufRet.f32 %1860, 3
  %1868 = fadd fast float %1865, %1841
  %1869 = fadd fast float %1866, %1842
  %1870 = fadd fast float %1867, %1843
  %1871 = fmul fast float %1868, %1857
  %1872 = call float @dx.op.tertiary.f32(i32 46, float %1869, float %1859, float %1871)  ; FMad(a,b,c)
  %1873 = call float @dx.op.tertiary.f32(i32 46, float %1870, float %1861, float %1872)  ; FMad(a,b,c)
  %1874 = fmul fast float %1868, %1862
  %1875 = call float @dx.op.tertiary.f32(i32 46, float %1869, float %1863, float %1874)  ; FMad(a,b,c)
  %1876 = call float @dx.op.tertiary.f32(i32 46, float %1870, float %1864, float %1875)  ; FMad(a,b,c)
  %1877 = fsub fast float %1873, %1865
  %1878 = fsub fast float %1876, %1866
  %1879 = fsub fast float %1877, %1845
  %1880 = fadd fast float %1879, %1853
  %1881 = fsub fast float %1878, %1846
  %1882 = fadd fast float %1881, %1853
  %1883 = extractvalue %dx.types.CBufRet.f32 %1844, 3
  %1884 = fmul fast float %1880, %1883
  %1885 = fmul fast float %1882, %1883
  %1886 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1887 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1888 = fsub fast float 1.000000e+00, %1886
  %1889 = fsub fast float 1.000000e+00, %1887
  %1890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %60, float %1888, float %1889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1891 = extractvalue %dx.types.ResRet.f32 %1890, 0
  %1892 = fcmp fast ugt float %1891, 0.000000e+00
  br i1 %1892, label %1893, label %2196

; <label>:1893                                    ; preds = %1855
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 2
  %1896 = fmul fast float %1895, %1891
  %1897 = extractvalue %dx.types.CBufRet.f32 %1894, 3
  %1898 = fadd fast float %1897, %1896
  %1899 = extractvalue %dx.types.CBufRet.f32 %1860, 2
  %1900 = fadd fast float %1898, %1867
  %1901 = fmul fast float %1873, %1861
  %1902 = call float @dx.op.tertiary.f32(i32 46, float %1876, float %1864, float %1901)  ; FMad(a,b,c)
  %1903 = call float @dx.op.tertiary.f32(i32 46, float %1900, float %1899, float %1902)  ; FMad(a,b,c)
  %1904 = fsub fast float %1903, %1867
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 2
  %1907 = fsub fast float %1904, %1906
  %1908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %60, float %1888, float %1889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %60, float %1888, float %1889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.ResRet.f32 %1912, 1
  %1915 = extractvalue %dx.types.ResRet.f32 %1912, 2
  %1916 = fadd fast float %1913, %1909
  %1917 = fmul fast float %1916, 0x3F847AE140000000
  %1918 = fadd fast float %1914, %1910
  %1919 = fmul fast float %1918, 0x3F847AE140000000
  %1920 = fadd fast float %1915, %1911
  %1921 = fmul fast float %1920, 0x3F847AE140000000
  br label %2196

; <label>:1922                                    ; preds = %1812
  %1923 = and i32 %206, 1
  %1924 = icmp eq i32 %1923, 0
  br i1 %1924, label %2196, label %1925

; <label>:1925                                    ; preds = %1922
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 0
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 0
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.CBufRet.f32 %1926, 1
  %1933 = extractvalue %dx.types.CBufRet.f32 %1928, 1
  %1934 = extractvalue %dx.types.CBufRet.f32 %1930, 1
  %1935 = extractvalue %dx.types.CBufRet.f32 %1926, 3
  %1936 = extractvalue %dx.types.CBufRet.f32 %1928, 3
  %1937 = extractvalue %dx.types.CBufRet.f32 %1930, 3
  %1938 = fadd fast float %1935, %1841
  %1939 = fadd fast float %1936, %1842
  %1940 = fadd fast float %1937, %1843
  %1941 = fmul fast float %1938, %1927
  %1942 = call float @dx.op.tertiary.f32(i32 46, float %1939, float %1929, float %1941)  ; FMad(a,b,c)
  %1943 = call float @dx.op.tertiary.f32(i32 46, float %1940, float %1931, float %1942)  ; FMad(a,b,c)
  %1944 = fmul fast float %1938, %1932
  %1945 = call float @dx.op.tertiary.f32(i32 46, float %1939, float %1933, float %1944)  ; FMad(a,b,c)
  %1946 = call float @dx.op.tertiary.f32(i32 46, float %1940, float %1934, float %1945)  ; FMad(a,b,c)
  %1947 = fsub fast float %1943, %1935
  %1948 = fsub fast float %1946, %1936
  %1949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1950 = extractvalue %dx.types.CBufRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.CBufRet.f32 %1949, 1
  %1952 = extractvalue %dx.types.CBufRet.f32 %1949, 2
  %1953 = extractvalue %dx.types.CBufRet.f32 %1949, 3
  %1954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1955 = extractvalue %dx.types.CBufRet.f32 %1954, 3
  %1956 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.i32 %1956, 0
  %1958 = extractvalue %dx.types.CBufRet.i32 %1956, 1
  %1959 = udiv i32 %1958, %1957
  %1960 = fsub fast float %1947, %1950
  %1961 = fsub fast float %1948, %1951
  %1962 = call float @dx.op.binary.f32(i32 35, float %1960, float 0.000000e+00)  ; FMax(a,b)
  %1963 = call float @dx.op.binary.f32(i32 35, float %1961, float 0.000000e+00)  ; FMax(a,b)
  %1964 = call float @dx.op.binary.f32(i32 36, float %1962, float %1952)  ; FMin(a,b)
  %1965 = call float @dx.op.binary.f32(i32 36, float %1963, float %1953)  ; FMin(a,b)
  %1966 = add i32 %1957, -1
  %1967 = add i32 %1959, -1
  %1968 = fmul fast float %1964, %1955
  %1969 = fmul fast float %1965, %1955
  %1970 = fptoui float %1968 to i32
  %1971 = fptoui float %1969 to i32
  %1972 = call i32 @dx.op.binary.i32(i32 40, i32 %1970, i32 %1966)  ; UMin(a,b)
  %1973 = call i32 @dx.op.binary.i32(i32 40, i32 %1971, i32 %1967)  ; UMin(a,b)
  %1974 = mul i32 %1973, %1957
  %1975 = add i32 %1974, %1972
  %1976 = shl i32 %1975, 2
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = icmp eq i32 %1978, -1
  br i1 %1979, label %2196, label %1980

; <label>:1980                                    ; preds = %1925
  %1981 = mul i32 %1978, 148
  %1982 = add i32 %1981, 4
  %1983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = add i32 %1981, 8
  %1986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = add i32 %1981, 36
  %1989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 0
  %1991 = add i32 %1981, 60
  %1992 = add i32 %1981, 92
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = add i32 %1981, 116
  %1996 = fsub fast float %1947, %1984
  %1997 = fsub fast float %1948, %1987
  %1998 = fmul fast float %1955, %1996
  %1999 = fmul fast float %1955, %1997
  %2000 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2001 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2002 = fsub fast float 1.000000e+00, %2001
  %2003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2004 = extractvalue %dx.types.CBufRet.f32 %2003, 2
  %2005 = call float @dx.op.unary.f32(i32 83, float %2000)  ; DerivCoarseX(value)
  %2006 = call float @dx.op.unary.f32(i32 83, float %2002)  ; DerivCoarseX(value)
  %2007 = call float @dx.op.unary.f32(i32 84, float %2000)  ; DerivCoarseY(value)
  %2008 = call float @dx.op.unary.f32(i32 84, float %2002)  ; DerivCoarseY(value)
  %2009 = fmul fast float %2005, %2004
  %2010 = fmul fast float %2006, %2004
  %2011 = fmul fast float %2007, %2004
  %2012 = fmul fast float %2008, %2004
  %2013 = call float @dx.op.dot2.f32(i32 54, float %2011, float %2012, float %2011, float %2012)  ; Dot2(ax,ay,bx,by)
  %2014 = call float @dx.op.dot2.f32(i32 54, float %2009, float %2010, float %2009, float %2010)  ; Dot2(ax,ay,bx,by)
  %2015 = call float @dx.op.binary.f32(i32 35, float %2014, float %2013)  ; FMax(a,b)
  %2016 = call float @dx.op.unary.f32(i32 23, float %2015)  ; Log(value)
  %2017 = fmul fast float %2016, 5.000000e-01
  %2018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2019 = extractvalue %dx.types.CBufRet.f32 %2018, 1
  %2020 = fadd fast float %2019, %2017
  %2021 = call float @dx.op.binary.f32(i32 35, float %2020, float 0.000000e+00)  ; FMax(a,b)
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 3
  %2024 = fadd fast float %2023, %2021
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2027 = fadd fast float %2024, %2026
  %2028 = add i32 %1994, 0
  %2029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2028, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2030 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2029, i32 0)  ; GetDimensions(handle,mipLevel)
  %2031 = extractvalue %dx.types.Dimensions %2030, 0
  %2032 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2031)  ; FirstbitLo(value)
  %2033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2034 = extractvalue %dx.types.CBufRet.i32 %2033, 1
  %2035 = sub nsw i32 %2034, %2032
  %2036 = sitofp i32 %2035 to float
  %2037 = fsub fast float %2027, %2036
  %2038 = call float @dx.op.binary.f32(i32 35, float %2037, float 0.000000e+00)  ; FMax(a,b)
  %2039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2029, %dx.types.Handle %58, float %2000, float %2002, float %1990, float undef, i32 0, i32 0, i32 undef, float %2038)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2040 = extractvalue %dx.types.ResRet.f32 %2039, 0
  %2041 = fcmp ule float %2040, 0x3FE0101020000000
  %2042 = extractvalue %dx.types.CBufRet.i32 %2033, 0
  %2043 = and i32 %2042, 128
  %2044 = icmp ne i32 %2043, 0
  %2045 = and i1 %2041, %2044
  br i1 %2045, label %2196, label %2046

; <label>:2046                                    ; preds = %1980
  %2047 = add i32 %1981, 20
  %2048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = add i32 %1981, 24
  %2051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 0
  %2053 = add i32 %1981, 40
  %2054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2053, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = add i32 %1981, 96
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2060 = extractvalue %dx.types.CBufRet.f32 %2059, 2
  %2061 = fmul fast float %2060, %2000
  %2062 = fmul fast float %2060, %2002
  %2063 = extractvalue %dx.types.CBufRet.f32 %2059, 3
  %2064 = fadd fast float %2061, %2063
  %2065 = fadd fast float %2062, %2063
  %2066 = add i32 %2058, 0
  %2067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2066, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2068 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2067, i32 0)  ; GetDimensions(handle,mipLevel)
  %2069 = extractvalue %dx.types.Dimensions %2068, 0
  %2070 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2069)  ; FirstbitLo(value)
  %2071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2072 = extractvalue %dx.types.CBufRet.i32 %2071, 1
  %2073 = sub nsw i32 %2072, %2070
  %2074 = sitofp i32 %2073 to float
  %2075 = fsub fast float %2024, %2074
  %2076 = call float @dx.op.binary.f32(i32 35, float %2075, float 0.000000e+00)  ; FMax(a,b)
  %2077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2067, %dx.types.Handle %58, float %2064, float %2065, float %2055, float undef, i32 0, i32 0, i32 undef, float %2076)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2078 = extractvalue %dx.types.ResRet.f32 %2077, 0
  %2079 = fmul fast float %2078, %2049
  %2080 = fadd fast float %2079, %2052
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.CBufRet.f32 %2081, 1
  %2084 = extractvalue %dx.types.CBufRet.f32 %2081, 2
  %2085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2086 = extractvalue %dx.types.CBufRet.f32 %2085, 3
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 3
  %2089 = extractvalue %dx.types.CBufRet.f32 %2081, 3
  %2090 = fadd fast float %2086, %1947
  %2091 = fadd fast float %2088, %1948
  %2092 = fadd fast float %2080, %2089
  %2093 = fmul fast float %2090, %2082
  %2094 = call float @dx.op.tertiary.f32(i32 46, float %2091, float %2083, float %2093)  ; FMad(a,b,c)
  %2095 = call float @dx.op.tertiary.f32(i32 46, float %2092, float %2084, float %2094)  ; FMad(a,b,c)
  %2096 = fsub fast float %2095, %2089
  %2097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2098 = extractvalue %dx.types.CBufRet.f32 %2097, 2
  %2099 = fsub fast float %2096, %2098
  %2100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.i32 %2100, 0
  %2102 = call i32 @dx.op.binary.i32(i32 40, i32 %1978, i32 %2101)  ; UMin(a,b)
  %2103 = mul i32 %2102, 36
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = add i32 %2103, 4
  %2107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2108 = extractvalue %dx.types.CBufRet.f32 %2107, 0
  %2109 = fmul fast float %2108, %2000
  %2110 = fmul fast float %2108, %2002
  %2111 = extractvalue %dx.types.CBufRet.f32 %2107, 1
  %2112 = fadd fast float %2109, %2111
  %2113 = fadd fast float %2110, %2111
  %2114 = icmp eq i32 %2105, 0
  br i1 %2114, label %2183, label %2115

; <label>:2115                                    ; preds = %2046
  br label %2116

; <label>:2116                                    ; preds = %2173, %2115
  %2117 = phi float [ %2174, %2173 ], [ 0.000000e+00, %2115 ]
  %2118 = phi float [ %2175, %2173 ], [ 0.000000e+00, %2115 ]
  %2119 = phi float [ %2176, %2173 ], [ 0.000000e+00, %2115 ]
  %2120 = phi float [ %2177, %2173 ], [ 0.000000e+00, %2115 ]
  %2121 = phi float [ %2178, %2173 ], [ 0.000000e+00, %2115 ]
  %2122 = phi float [ %2179, %2173 ], [ 0.000000e+00, %2115 ]
  %2123 = phi i32 [ %2180, %2173 ], [ 0, %2115 ]
  %2124 = shl i32 %2123, 2
  %2125 = add i32 %1991, %2124
  %2126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.f32 %2126, 0
  %2128 = add i32 %1995, %2124
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = add i32 %2130, 0
  %2132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2131, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2133 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2132, i32 0)  ; GetDimensions(handle,mipLevel)
  %2134 = extractvalue %dx.types.Dimensions %2133, 0
  %2135 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2134)  ; FirstbitLo(value)
  %2136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.i32 %2136, 1
  %2138 = sub nsw i32 %2137, %2135
  %2139 = sitofp i32 %2138 to float
  %2140 = fsub fast float %2024, %2139
  %2141 = call float @dx.op.binary.f32(i32 35, float %2140, float 0.000000e+00)  ; FMax(a,b)
  %2142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2132, %dx.types.Handle %58, float %2112, float %2113, float %2127, float undef, i32 0, i32 0, i32 undef, float %2141)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2143 = extractvalue %dx.types.ResRet.f32 %2142, 0
  %2144 = fcmp fast ogt float %2143, 0.000000e+00
  br i1 %2144, label %2145, label %2173

; <label>:2145                                    ; preds = %2116
  %2146 = add i32 %2106, %2124
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 32767
  %2150 = mul nuw nsw i32 %2149, 928
  %2151 = add nuw nsw i32 %2150, 48
  %2152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.f32 %2152, 0
  %2154 = extractvalue %dx.types.ResRet.f32 %2152, 1
  %2155 = extractvalue %dx.types.ResRet.f32 %2152, 2
  %2156 = add nuw nsw i32 %2150, 60
  %2157 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.ResRet.f32 %2157, 1
  %2160 = extractvalue %dx.types.ResRet.f32 %2157, 2
  %2161 = fmul fast float %2153, %2143
  %2162 = fmul fast float %2154, %2143
  %2163 = fmul fast float %2155, %2143
  %2164 = fadd fast float %2161, %2117
  %2165 = fadd fast float %2162, %2118
  %2166 = fadd fast float %2163, %2119
  %2167 = fmul fast float %2158, %2143
  %2168 = fmul fast float %2159, %2143
  %2169 = fmul fast float %2160, %2143
  %2170 = fadd fast float %2167, %2120
  %2171 = fadd fast float %2168, %2121
  %2172 = fadd fast float %2169, %2122
  br label %2173

; <label>:2173                                    ; preds = %2145, %2116
  %2174 = phi float [ %2164, %2145 ], [ %2117, %2116 ]
  %2175 = phi float [ %2165, %2145 ], [ %2118, %2116 ]
  %2176 = phi float [ %2166, %2145 ], [ %2119, %2116 ]
  %2177 = phi float [ %2170, %2145 ], [ %2120, %2116 ]
  %2178 = phi float [ %2171, %2145 ], [ %2121, %2116 ]
  %2179 = phi float [ %2172, %2145 ], [ %2122, %2116 ]
  %2180 = add nuw i32 %2123, 1
  %2181 = icmp eq i32 %2180, %2105
  br i1 %2181, label %2182, label %2116

; <label>:2182                                    ; preds = %2173
  br label %2183

; <label>:2183                                    ; preds = %2182, %2046
  %2184 = phi float [ 0.000000e+00, %2046 ], [ %2174, %2182 ]
  %2185 = phi float [ 0.000000e+00, %2046 ], [ %2175, %2182 ]
  %2186 = phi float [ 0.000000e+00, %2046 ], [ %2176, %2182 ]
  %2187 = phi float [ 0.000000e+00, %2046 ], [ %2177, %2182 ]
  %2188 = phi float [ 0.000000e+00, %2046 ], [ %2178, %2182 ]
  %2189 = phi float [ 0.000000e+00, %2046 ], [ %2179, %2182 ]
  %2190 = fadd fast float %2187, %2184
  %2191 = fmul fast float %2190, 0x3F847AE140000000
  %2192 = fadd fast float %2188, %2185
  %2193 = fmul fast float %2192, 0x3F847AE140000000
  %2194 = fadd fast float %2189, %2186
  %2195 = fmul fast float %2194, 0x3F847AE140000000
  br label %2196

; <label>:2196                                    ; preds = %2183, %1980, %1925, %1922, %1893, %1855
  %2197 = phi float [ %1907, %1893 ], [ -1.310720e+05, %1855 ], [ %2099, %2183 ], [ -1.310720e+05, %1925 ], [ -1.310720e+05, %1980 ], [ -1.310720e+05, %1922 ]
  %2198 = phi float [ %1917, %1893 ], [ 0.000000e+00, %1855 ], [ %2191, %2183 ], [ 0.000000e+00, %1925 ], [ 0.000000e+00, %1980 ], [ 0.000000e+00, %1922 ]
  %2199 = phi float [ %1919, %1893 ], [ 0.000000e+00, %1855 ], [ %2193, %2183 ], [ 0.000000e+00, %1925 ], [ 0.000000e+00, %1980 ], [ 0.000000e+00, %1922 ]
  %2200 = phi float [ %1921, %1893 ], [ 0.000000e+00, %1855 ], [ %2195, %2183 ], [ 0.000000e+00, %1925 ], [ 0.000000e+00, %1980 ], [ 0.000000e+00, %1922 ]
  %2201 = phi i1 [ true, %1893 ], [ false, %1855 ], [ true, %2183 ], [ false, %1925 ], [ false, %1980 ], [ false, %1922 ]
  %2202 = and i32 %206, 3
  %2203 = icmp eq i32 %2202, 1
  %2204 = select i1 %2203, float 1.000000e+00, float 0.000000e+00
  %2205 = fsub fast float %2197, %141
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2207 = select i1 %2201, float %2206, float 1.000000e+00
  %2208 = fmul fast float %2207, %2204
  %2209 = icmp eq i32 %2202, 3
  %2210 = select i1 %2209, float 1.000000e+00, float %2208
  %2211 = call float @dx.op.binary.f32(i32 35, float %1736, float %2210)  ; FMax(a,b)
  %2212 = call float @dx.op.unary.f32(i32 7, float %2211)  ; Saturate(value)
  %2213 = fcmp fast une float %2212, 0.000000e+00
  %2214 = call float @dx.op.dot3.f32(i32 55, float %139, float %140, float %141, float %139, float %140, float %141)  ; Dot3(ax,ay,az,bx,by,bz)
  %2215 = call float @dx.op.unary.f32(i32 25, float %2214)  ; Rsqrt(value)
  br i1 %2213, label %2223, label %2216

; <label>:2216                                    ; preds = %2196
  %2217 = fmul fast float %2215, %139
  %2218 = fmul fast float %2215, %140
  %2219 = fmul fast float %2215, %141
  %2220 = fsub fast float -0.000000e+00, %2217
  %2221 = fsub fast float -0.000000e+00, %2218
  %2222 = fsub fast float -0.000000e+00, %2219
  br label %2391

; <label>:2223                                    ; preds = %2196
  %2224 = fmul fast float %139, %2215
  %2225 = fsub fast float -0.000000e+00, %2224
  %2226 = fmul fast float %140, %2215
  %2227 = fsub fast float -0.000000e+00, %2226
  %2228 = fmul fast float %141, %2215
  %2229 = fsub fast float -0.000000e+00, %2228
  %2230 = call float @dx.op.dot3.f32(i32 55, float %2225, float %2227, float %2229, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %2231 = fmul fast float %2212, 2.500000e+00
  %2232 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2233 = fmul fast float %2212, 0x4013FFFFE0000000
  %2234 = fadd fast float %2233, 0xBFFFFFFFE0000000
  %2235 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2236 = fmul fast float %2212, 0x4004000020000000
  %2237 = fadd fast float %2236, 0xBFF8000040000000
  %2238 = call float @dx.op.unary.f32(i32 7, float %2237)  ; Saturate(value)
  %2239 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2240 = fmul fast float %1772, 1.000000e+01
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fmul fast float %2241, 2.000000e+00
  %2243 = fsub fast float 3.000000e+00, %2242
  %2244 = fmul fast float %2241, %2241
  %2245 = fmul fast float %2244, %2243
  %2246 = fsub fast float 1.000000e+00, %2245
  %2247 = fsub fast float 0x3FE3333340000000, %1793
  %2248 = fmul fast float %2247, 0x400AAAAAA0000000
  %2249 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2250 = fmul fast float %2246, %2249
  %2251 = fmul fast float %1830, 0x3FEA2B8620000000
  %2252 = fmul fast float %1831, 0x3FEA2B8620000000
  %2253 = fmul fast float %1832, 0x3FEA2B8620000000
  %2254 = fadd fast float %2251, 0x3FC81DFBA0000000
  %2255 = fmul fast float %2254, %1830
  %2256 = fadd fast float %2255, 0x3F910E6020000000
  %2257 = fadd fast float %2252, 0x3FC81DFBA0000000
  %2258 = fmul fast float %2257, %1831
  %2259 = fadd fast float %2258, 0x3F910E6020000000
  %2260 = fadd fast float %2253, 0x3FC81DFBA0000000
  %2261 = fmul fast float %2260, %1832
  %2262 = fadd fast float %2261, 0x3F910E6020000000
  %2263 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2264 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2265 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2266 = fsub fast float %2263, %1830
  %2267 = fsub fast float %2264, %1831
  %2268 = fsub fast float %2265, %1832
  %2269 = fmul fast float %2266, %2239
  %2270 = fmul fast float %2269, %2250
  %2271 = fmul fast float %2267, %2239
  %2272 = fmul fast float %2271, %2250
  %2273 = fmul fast float %2268, %2239
  %2274 = fmul fast float %2273, %2250
  %2275 = fadd fast float %2270, %1830
  %2276 = fadd fast float %2272, %1831
  %2277 = fadd fast float %2274, %1832
  %2278 = fmul fast float %1753, %1753
  %2279 = fmul fast float %2278, %2278
  %2280 = fadd fast float %2235, 1.000000e+00
  %2281 = fsub fast float %2280, %2250
  %2282 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2283 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2284 = call float @dx.op.unary.f32(i32 7, float %2283)  ; Saturate(value)
  %2285 = fsub fast float 1.000000e+00, %2279
  %2286 = call float @dx.op.binary.f32(i32 36, float %2282, float %2285)  ; FMin(a,b)
  %2287 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2288 = call float @dx.op.binary.f32(i32 35, float %2286, float %2287)  ; FMax(a,b)
  %2289 = fadd fast float %2284, 0xBFE4CCCCC0000000
  %2290 = fmul fast float %2289, 0x4006DB6DA0000000
  %2291 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2292 = fmul fast float %2291, 2.000000e+00
  %2293 = fsub fast float 3.000000e+00, %2292
  %2294 = bitcast float %1790 to i32
  %2295 = ashr i32 %2294, 1
  %2296 = add nsw i32 %2295, 532487669
  %2297 = bitcast i32 %2296 to float
  %2298 = fsub fast float 1.000000e+00, %2297
  %2299 = bitcast float %2298 to i32
  %2300 = sub nsw i32 2129859010, %2299
  %2301 = bitcast i32 %2300 to float
  %2302 = fmul fast float %2301, 2.000000e+00
  %2303 = bitcast float %1791 to i32
  %2304 = ashr i32 %2303, 1
  %2305 = add nsw i32 %2304, 532487669
  %2306 = bitcast i32 %2305 to float
  %2307 = fsub fast float 1.000000e+00, %2306
  %2308 = bitcast float %2307 to i32
  %2309 = sub nsw i32 2129859010, %2308
  %2310 = bitcast i32 %2309 to float
  %2311 = fmul fast float %2310, 2.000000e+00
  %2312 = bitcast float %1792 to i32
  %2313 = ashr i32 %2312, 1
  %2314 = add nsw i32 %2313, 532487669
  %2315 = bitcast i32 %2314 to float
  %2316 = fsub fast float 1.000000e+00, %2315
  %2317 = bitcast float %2316 to i32
  %2318 = sub nsw i32 2129859010, %2317
  %2319 = bitcast i32 %2318 to float
  %2320 = fmul fast float %2319, 2.000000e+00
  %2321 = fsub fast float 0x4002A9FBE0000000, %2302
  %2322 = fadd fast float %2302, 0x3FD54FDF00000000
  %2323 = bitcast float %2322 to i32
  %2324 = sub nsw i32 2129859010, %2323
  %2325 = bitcast i32 %2324 to float
  %2326 = fmul fast float %2325, %2321
  %2327 = fmul fast float %2326, %2326
  %2328 = fsub fast float 0x4002A9FBE0000000, %2311
  %2329 = fadd fast float %2311, 0x3FD54FDF00000000
  %2330 = bitcast float %2329 to i32
  %2331 = sub nsw i32 2129859010, %2330
  %2332 = bitcast i32 %2331 to float
  %2333 = fmul fast float %2332, %2328
  %2334 = fmul fast float %2333, %2333
  %2335 = fsub fast float 0x4002A9FBE0000000, %2320
  %2336 = fadd fast float %2320, 0x3FD54FDF00000000
  %2337 = bitcast float %2336 to i32
  %2338 = sub nsw i32 2129859010, %2337
  %2339 = bitcast i32 %2338 to float
  %2340 = fmul fast float %2339, %2335
  %2341 = fmul fast float %2340, %2340
  %2342 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2327)  ; FMax(a,b)
  %2343 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2334)  ; FMax(a,b)
  %2344 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2341)  ; FMax(a,b)
  %2345 = fsub fast float 1.000000e+00, %2230
  %2346 = fadd fast float %2345, %2246
  %2347 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2348 = fsub fast float 1.000000e+00, %2210
  %2349 = fmul fast float %2288, %2348
  %2350 = fmul fast float %2291, %2291
  %2351 = fmul fast float %2350, %2349
  %2352 = fmul fast float %2351, %2293
  %2353 = fmul fast float %2348, 0xBFE99999A0000000
  %2354 = fmul fast float %2353, %2239
  %2355 = fmul fast float %2354, %2250
  %2356 = fadd fast float %2355, 1.000000e+00
  %2357 = fadd fast float %1793, -1.000000e+00
  %2358 = fmul fast float %2356, %2357
  %2359 = fadd fast float %2358, 1.000000e+00
  %2360 = fsub fast float %2342, %1790
  %2361 = fsub fast float %2343, %1791
  %2362 = fsub fast float %2344, %1792
  %2363 = fmul fast float %2352, %2360
  %2364 = fmul fast float %2352, %2361
  %2365 = fmul fast float %2352, %2362
  %2366 = fadd fast float %2363, %1790
  %2367 = fadd fast float %2364, %1791
  %2368 = fadd fast float %2365, %1792
  %2369 = fsub fast float %72, %1769
  %2370 = fsub fast float %73, %1770
  %2371 = fsub fast float %74, %1771
  %2372 = fmul fast float %2352, %2369
  %2373 = fmul fast float %2352, %2370
  %2374 = fmul fast float %2352, %2371
  %2375 = fadd fast float %2372, %1769
  %2376 = fadd fast float %2373, %1770
  %2377 = fadd fast float %2374, %1771
  %2378 = fmul fast float %2352, %2347
  %2379 = call float @dx.op.unary.f32(i32 7, float %2359)  ; Saturate(value)
  %2380 = fsub fast float 1.000000e+00, %2379
  %2381 = fmul fast float %2378, %2380
  %2382 = fadd fast float %2381, %2379
  %2383 = fsub fast float 1.000000e+00, %1753
  %2384 = fmul fast float %2352, %2383
  %2385 = fadd fast float %2384, %1753
  %2386 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2376, float %2377, float %2375, float %2376, float %2377)  ; Dot3(ax,ay,az,bx,by,bz)
  %2387 = call float @dx.op.unary.f32(i32 25, float %2386)  ; Rsqrt(value)
  %2388 = fmul fast float %2375, %2387
  %2389 = fmul fast float %2376, %2387
  %2390 = fmul fast float %2377, %2387
  br label %2391

; <label>:2391                                    ; preds = %2223, %2216
  %2392 = phi float [ %2222, %2216 ], [ %2229, %2223 ]
  %2393 = phi float [ %2221, %2216 ], [ %2227, %2223 ]
  %2394 = phi float [ %2220, %2216 ], [ %2225, %2223 ]
  %2395 = phi float [ %2219, %2216 ], [ %2228, %2223 ]
  %2396 = phi float [ %2218, %2216 ], [ %2226, %2223 ]
  %2397 = phi float [ %2217, %2216 ], [ %2224, %2223 ]
  %2398 = phi float [ %1830, %2216 ], [ %2275, %2223 ]
  %2399 = phi float [ %1831, %2216 ], [ %2276, %2223 ]
  %2400 = phi float [ %1832, %2216 ], [ %2277, %2223 ]
  %2401 = phi float [ %1769, %2216 ], [ %2388, %2223 ]
  %2402 = phi float [ %1770, %2216 ], [ %2389, %2223 ]
  %2403 = phi float [ %1771, %2216 ], [ %2390, %2223 ]
  %2404 = phi float [ %1790, %2216 ], [ %2366, %2223 ]
  %2405 = phi float [ %1791, %2216 ], [ %2367, %2223 ]
  %2406 = phi float [ %1792, %2216 ], [ %2368, %2223 ]
  %2407 = phi float [ %1793, %2216 ], [ %2382, %2223 ]
  %2408 = phi float [ %1753, %2216 ], [ %2385, %2223 ]
  %2409 = fsub fast float -0.000000e+00, %141
  %2410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2411 = extractvalue %dx.types.CBufRet.f32 %2410, 2
  %2412 = extractvalue %dx.types.CBufRet.f32 %2410, 3
  %2413 = fmul fast float %92, 2.000000e+00
  %2414 = fmul fast float %2413, %2411
  %2415 = fmul fast float %93, 2.000000e+00
  %2416 = fmul fast float %2415, %2412
  %2417 = fsub fast float 1.000000e+00, %2414
  %2418 = fsub fast float 1.000000e+00, %2416
  %2419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2420 = extractvalue %dx.types.CBufRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.CBufRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.CBufRet.f32 %2419, 2
  %2423 = fmul fast float %2417, %2420
  %2424 = fmul fast float %2417, %2421
  %2425 = fmul fast float %2417, %2422
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.CBufRet.f32 %2426, 1
  %2429 = extractvalue %dx.types.CBufRet.f32 %2426, 2
  %2430 = fmul fast float %2418, %2427
  %2431 = fmul fast float %2418, %2428
  %2432 = fmul fast float %2418, %2429
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2435 = extractvalue %dx.types.CBufRet.f32 %2433, 1
  %2436 = extractvalue %dx.types.CBufRet.f32 %2433, 2
  %2437 = fadd fast float %2430, %2434
  %2438 = fadd fast float %2437, %2423
  %2439 = fadd fast float %2431, %2435
  %2440 = fadd fast float %2439, %2424
  %2441 = fadd fast float %2432, %2436
  %2442 = fadd fast float %2441, %2425
  %2443 = fmul fast float %2438, %83
  %2444 = fmul fast float %2440, %83
  %2445 = fmul fast float %2442, %83
  %2446 = select i1 %230, float 0.000000e+00, float %2406
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2402, float %2403, float %2394, float %2393, float %2392)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = call float @dx.op.unary.f32(i32 7, float %2447)  ; Saturate(value)
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2397, float %2396, float %2395, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = fmul fast float %2449, 2.000000e+00
  %2451 = fmul fast float %2450, %2401
  %2452 = fmul fast float %2450, %2402
  %2453 = fmul fast float %2450, %2403
  %2454 = fsub fast float %2397, %2451
  %2455 = fsub fast float %2396, %2452
  %2456 = fsub fast float %2395, %2453
  %2457 = call float @dx.op.binary.f32(i32 36, float %2408, float 1.000000e+00)  ; FMin(a,b)
  %2458 = fsub fast float 1.000000e+00, %2408
  %2459 = bitcast float %2458 to i32
  %2460 = sub nsw i32 2129859010, %2459
  %2461 = bitcast i32 %2460 to float
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 0
  %2464 = extractvalue %dx.types.CBufRet.f32 %2462, 1
  %2465 = fadd fast float %2463, %139
  %2466 = fadd fast float %2464, %140
  %2467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.i32 %2467, 0
  %2469 = icmp eq i32 %2468, 1
  br i1 %2469, label %2470, label %2505

; <label>:2470                                    ; preds = %2391
  %2471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2472 = extractvalue %dx.types.CBufRet.f32 %2471, 0
  %2473 = extractvalue %dx.types.CBufRet.f32 %2471, 1
  %2474 = fsub fast float %2465, %2472
  %2475 = fsub fast float %2466, %2473
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 0
  %2478 = extractvalue %dx.types.CBufRet.f32 %2476, 1
  %2479 = fmul fast float %2474, %2477
  %2480 = fmul fast float %2475, %2478
  %2481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %51, %dx.types.Handle %60, float %2479, float %2480, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2482 = extractvalue %dx.types.ResRet.f32 %2481, 0
  %2483 = fcmp fast ogt float %2482, 0.000000e+00
  %2484 = extractvalue %dx.types.CBufRet.i32 %2467, 3
  %2485 = icmp ne i32 %2484, 0
  %2486 = and i1 %2483, %2485
  br i1 %2486, label %2487, label %2505, !dx.controlflow.hints !100

; <label>:2487                                    ; preds = %2470
  %2488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.f32 %2488, 0
  %2490 = extractvalue %dx.types.CBufRet.f32 %2488, 1
  %2491 = fsub fast float %2465, %2489
  %2492 = fsub fast float %2466, %2490
  %2493 = fmul fast float %2491, %2491
  %2494 = fmul fast float %2492, %2492
  %2495 = fadd fast float %2493, %2494
  %2496 = uitofp i32 %2484 to float
  %2497 = fmul fast float %2496, %2496
  %2498 = fcmp fast ogt float %2495, %2497
  br i1 %2498, label %2505, label %2499

; <label>:2499                                    ; preds = %2487
  %2500 = call float @dx.op.unary.f32(i32 24, float %2495)  ; Sqrt(value)
  %2501 = fsub fast float %2496, %2500
  %2502 = fmul fast float %2501, 0x3F75555560000000
  %2503 = call float @dx.op.unary.f32(i32 7, float %2502)  ; Saturate(value)
  %2504 = call float @dx.op.binary.f32(i32 36, float %2503, float %2482)  ; FMin(a,b)
  br label %2505

; <label>:2505                                    ; preds = %2499, %2487, %2470, %2391
  %2506 = phi float [ 1.000000e+00, %2391 ], [ %2504, %2499 ], [ %2482, %2470 ], [ 0.000000e+00, %2487 ]
  %2507 = fcmp fast ogt float %2506, 0.000000e+00
  br i1 %2507, label %2508, label %2606, !dx.controlflow.hints !101

; <label>:2508                                    ; preds = %2505
  %2509 = fadd fast float %170, 5.000000e-01
  %2510 = call float @dx.op.unary.f32(i32 27, float %2509)  ; Round_ni(value)
  %2511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %60, float %168, float %169, float %2510, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2512 = extractvalue %dx.types.ResRet.f32 %2511, 0
  %2513 = extractvalue %dx.types.ResRet.f32 %2511, 1
  %2514 = extractvalue %dx.types.ResRet.f32 %2511, 2
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 3
  %2517 = fmul fast float %2516, %2512
  %2518 = fmul fast float %2516, %2513
  %2519 = fmul fast float %2516, %2514
  %2520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %60, float %168, float %169, float %2510, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  %2522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %60, float %168, float %169, float %2510, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2523 = extractvalue %dx.types.ResRet.f32 %2522, 0
  %2524 = extractvalue %dx.types.ResRet.f32 %2522, 1
  %2525 = fmul fast float %2523, 2.000000e+00
  %2526 = fmul fast float %2524, 2.000000e+00
  %2527 = fadd fast float %2525, -1.000000e+00
  %2528 = fadd fast float %2526, -1.000000e+00
  %2529 = fadd fast float %2527, %2528
  %2530 = fmul fast float %2529, 5.000000e-01
  %2531 = fsub fast float %2527, %2528
  %2532 = fmul fast float %2531, 5.000000e-01
  %2533 = call float @dx.op.unary.f32(i32 6, float %2530)  ; FAbs(value)
  %2534 = fsub fast float 1.000000e+00, %2533
  %2535 = call float @dx.op.unary.f32(i32 6, float %2532)  ; FAbs(value)
  %2536 = fsub fast float %2534, %2535
  %2537 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2536)  ; FMax(a,b)
  %2538 = call float @dx.op.dot3.f32(i32 55, float %2530, float %2532, float %2537, float %2530, float %2532, float %2537)  ; Dot3(ax,ay,az,bx,by,bz)
  %2539 = bitcast float %2538 to i32
  %2540 = ashr i32 %2539, 1
  %2541 = sub nsw i32 1597250115, %2540
  %2542 = bitcast i32 %2541 to float
  %2543 = fmul fast float %2542, %2530
  %2544 = fmul fast float %2542, %2532
  %2545 = fmul fast float %2542, %2537
  %2546 = fsub fast float 1.000000e+00, %2521
  %2547 = fdiv fast float %2546, %2545
  %2548 = fmul fast float %2545, %72
  %2549 = fmul fast float %2545, %73
  %2550 = fmul fast float %2545, %74
  %2551 = fmul fast float %2543, %68
  %2552 = fmul fast float %2543, %69
  %2553 = fmul fast float %2543, %70
  %2554 = fadd fast float %2548, %2551
  %2555 = fadd fast float %2549, %2552
  %2556 = fadd fast float %2550, %2553
  %2557 = fmul fast float %2544, %103
  %2558 = fmul fast float %2544, %104
  %2559 = fmul fast float %2544, %105
  %2560 = fadd fast float %2554, %2557
  %2561 = fadd fast float %2555, %2558
  %2562 = fadd fast float %2556, %2559
  %2563 = call float @dx.op.dot3.f32(i32 55, float %2560, float %2561, float %2562, float %2560, float %2561, float %2562)  ; Dot3(ax,ay,az,bx,by,bz)
  %2564 = call float @dx.op.unary.f32(i32 25, float %2563)  ; Rsqrt(value)
  %2565 = fmul fast float %2560, %2564
  %2566 = fmul fast float %2561, %2564
  %2567 = fmul fast float %2562, %2564
  %2568 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2402, float %2403, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %2569 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2570 = fmul fast float %2569, 5.000000e-01
  %2571 = fadd fast float %2570, 5.000000e-01
  %2572 = fmul fast float %2571, %2521
  %2573 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2402, float %2403, float %2565, float %2566, float %2567)  ; Dot3(ax,ay,az,bx,by,bz)
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = fmul fast float %2574, %2547
  %2576 = fadd fast float %2572, %2575
  %2577 = fsub fast float 5.000000e-01, %2570
  %2578 = fmul fast float %2577, %2398
  %2579 = fmul fast float %2577, %2399
  %2580 = fmul fast float %2577, %2400
  %2581 = fadd fast float %2576, %2578
  %2582 = fmul fast float %2581, %2517
  %2583 = fadd fast float %2576, %2579
  %2584 = fmul fast float %2583, %2518
  %2585 = fadd fast float %2576, %2580
  %2586 = fmul fast float %2585, %2519
  %2587 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2455, float %2456, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %2588 = call float @dx.op.unary.f32(i32 7, float %2587)  ; Saturate(value)
  %2589 = fmul fast float %2588, 5.000000e-01
  %2590 = fadd fast float %2589, 5.000000e-01
  %2591 = fmul fast float %2590, %2521
  %2592 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2455, float %2456, float %2565, float %2566, float %2567)  ; Dot3(ax,ay,az,bx,by,bz)
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  %2594 = fmul fast float %2593, %2547
  %2595 = fadd fast float %2591, %2594
  %2596 = fsub fast float 5.000000e-01, %2589
  %2597 = fmul fast float %2596, %2398
  %2598 = fmul fast float %2596, %2399
  %2599 = fmul fast float %2596, %2400
  %2600 = fadd fast float %2595, %2597
  %2601 = fmul fast float %2600, %2517
  %2602 = fadd fast float %2595, %2598
  %2603 = fmul fast float %2602, %2518
  %2604 = fadd fast float %2595, %2599
  %2605 = fmul fast float %2604, %2519
  br label %2606

; <label>:2606                                    ; preds = %2508, %2505
  %2607 = phi float [ %2601, %2508 ], [ 0.000000e+00, %2505 ]
  %2608 = phi float [ %2603, %2508 ], [ 0.000000e+00, %2505 ]
  %2609 = phi float [ %2605, %2508 ], [ 0.000000e+00, %2505 ]
  %2610 = phi float [ %2582, %2508 ], [ 0.000000e+00, %2505 ]
  %2611 = phi float [ %2584, %2508 ], [ 0.000000e+00, %2505 ]
  %2612 = phi float [ %2586, %2508 ], [ 0.000000e+00, %2505 ]
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 0
  %2615 = fcmp fast ogt float %2614, 0.000000e+00
  %2616 = and i1 %2507, %2615
  br i1 %2616, label %2617, label %2821, !dx.controlflow.hints !102

; <label>:2617                                    ; preds = %2606
  %2618 = extractvalue %dx.types.CBufRet.f32 %2462, 2
  %2619 = fadd fast float %2618, %141
  %2620 = fmul fast float %2401, 3.200000e+01
  %2621 = fmul fast float %2402, 3.200000e+01
  %2622 = fadd fast float %2465, %2620
  %2623 = fadd fast float %2466, %2621
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 0
  %2626 = extractvalue %dx.types.CBufRet.f32 %2624, 1
  %2627 = fsub fast float %2622, %2625
  %2628 = fsub fast float %2623, %2626
  %2629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2630 = extractvalue %dx.types.CBufRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.CBufRet.f32 %2629, 1
  %2632 = fmul fast float %2627, %2630
  %2633 = fmul fast float %2628, %2631
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2634, 1
  %2637 = fsub fast float %2465, %2635
  %2638 = fsub fast float %2466, %2636
  %2639 = fmul fast float %2637, %2637
  %2640 = fmul fast float %2638, %2638
  %2641 = fadd fast float %2639, %2640
  %2642 = call float @dx.op.unary.f32(i32 24, float %2641)  ; Sqrt(value)
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 0
  %2645 = extractvalue %dx.types.CBufRet.f32 %2643, 1
  %2646 = fsub fast float %2642, %2644
  %2647 = fdiv fast float %2646, %2645
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  %2649 = fmul fast float %2648, 2.000000e+00
  %2650 = fsub fast float 3.000000e+00, %2649
  %2651 = fmul fast float %2648, %2648
  %2652 = fmul fast float %2651, %2650
  %2653 = fcmp fast oge float %2632, 0.000000e+00
  %2654 = fcmp fast ole float %2632, 1.000000e+00
  %2655 = and i1 %2654, %2653
  %2656 = fcmp fast oge float %2633, 0.000000e+00
  %2657 = and i1 %2656, %2655
  %2658 = fcmp fast ole float %2633, 1.000000e+00
  %2659 = and i1 %2658, %2657
  %2660 = fcmp fast ogt float %2652, 0.000000e+00
  %2661 = and i1 %2660, %2659
  br i1 %2661, label %2662, label %2785, !dx.controlflow.hints !103

; <label>:2662                                    ; preds = %2617
  %2663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2664 = extractvalue %dx.types.CBufRet.f32 %2663, 2
  %2665 = extractvalue %dx.types.CBufRet.f32 %2663, 3
  %2666 = fmul fast float %2664, %2632
  %2667 = fmul fast float %2665, %2633
  %2668 = call float @dx.op.unary.f32(i32 27, float %2666)  ; Round_ni(value)
  %2669 = call float @dx.op.unary.f32(i32 27, float %2667)  ; Round_ni(value)
  %2670 = fptosi float %2668 to i32
  %2671 = fptosi float %2669 to i32
  %2672 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %49, i32 0, i32 %2670, i32 %2671, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = lshr i32 %2673, 16
  %2675 = icmp eq i32 %2674, 65535
  br i1 %2675, label %2785, label %2676

; <label>:2676                                    ; preds = %2662
  %2677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2678 = extractvalue %dx.types.CBufRet.f32 %2677, 0
  %2679 = fmul fast float %2678, %2632
  %2680 = extractvalue %dx.types.CBufRet.f32 %2677, 1
  %2681 = fadd fast float %2679, %2680
  %2682 = extractvalue %dx.types.CBufRet.f32 %2677, 2
  %2683 = fmul fast float %2682, %2633
  %2684 = extractvalue %dx.types.CBufRet.f32 %2677, 3
  %2685 = fadd fast float %2683, %2684
  %2686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %60, float %2681, float %2685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2687 = extractvalue %dx.types.ResRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.ResRet.f32 %2686, 1
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 1
  %2691 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2692 = fsub fast float %2690, %2691
  %2693 = fmul fast float %2692, %2687
  %2694 = fadd fast float %2693, %2691
  %2695 = extractvalue %dx.types.CBufRet.f32 %2689, 3
  %2696 = extractvalue %dx.types.CBufRet.f32 %2689, 2
  %2697 = fsub fast float %2695, %2696
  %2698 = fmul fast float %2697, %2688
  %2699 = fadd fast float %2698, %2696
  %2700 = fsub fast float %2619, %2694
  %2701 = fsub fast float %2699, %2694
  %2702 = fdiv fast float %2700, %2701
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2613, 1
  %2705 = extractvalue %dx.types.CBufRet.f32 %2663, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2663, 1
  %2707 = fmul fast float %2705, %2632
  %2708 = fmul fast float %2706, %2633
  %2709 = fmul fast float %2707, 1.250000e-01
  %2710 = fmul fast float %2708, 1.250000e-01
  %2711 = call float @dx.op.unary.f32(i32 27, float %2709)  ; Round_ni(value)
  %2712 = call float @dx.op.unary.f32(i32 27, float %2710)  ; Round_ni(value)
  %2713 = fmul fast float %2711, 8.000000e+00
  %2714 = fmul fast float %2712, 8.000000e+00
  %2715 = fsub fast float %2707, %2713
  %2716 = fsub fast float %2708, %2714
  %2717 = fadd fast float %2715, 5.000000e-01
  %2718 = fadd fast float %2716, 5.000000e-01
  %2719 = and i32 %2674, 255
  %2720 = lshr i32 %2673, 24
  %2721 = mul nuw nsw i32 %2719, 9
  %2722 = uitofp i32 %2721 to float
  %2723 = mul nuw nsw i32 %2720, 9
  %2724 = uitofp i32 %2723 to float
  %2725 = fadd fast float %2717, %2722
  %2726 = fadd fast float %2718, %2724
  %2727 = fdiv fast float %2725, %2614
  %2728 = fdiv fast float %2726, %2704
  %2729 = fmul fast float %2703, 4.375000e-01
  %2730 = fadd fast float %2729, 3.125000e-02
  %2731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %60, float %2727, float %2728, float %2730, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.ResRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.ResRet.f32 %2731, 2
  %2735 = fadd fast float %2729, 5.312500e-01
  %2736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %60, float %2727, float %2728, float %2735, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2737 = extractvalue %dx.types.ResRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.ResRet.f32 %2736, 1
  %2739 = extractvalue %dx.types.ResRet.f32 %2736, 2
  %2740 = fmul fast float %2737, 2.000000e+00
  %2741 = fmul fast float %2738, 2.000000e+00
  %2742 = fmul fast float %2739, 2.000000e+00
  %2743 = fadd fast float %2740, -1.000000e+00
  %2744 = fadd fast float %2741, -1.000000e+00
  %2745 = fadd fast float %2742, -1.000000e+00
  %2746 = fmul fast float %2743, %2743
  %2747 = fmul fast float %2744, %2744
  %2748 = fadd fast float %2746, %2747
  %2749 = fmul fast float %2745, %2745
  %2750 = fadd fast float %2748, %2749
  %2751 = call float @dx.op.unary.f32(i32 24, float %2750)  ; Sqrt(value)
  %2752 = fcmp fast ogt float %2751, 0.000000e+00
  br i1 %2752, label %2753, label %2757

; <label>:2753                                    ; preds = %2676
  %2754 = fdiv fast float %2743, %2751
  %2755 = fdiv fast float %2744, %2751
  %2756 = fdiv fast float %2745, %2751
  br label %2757

; <label>:2757                                    ; preds = %2753, %2676
  %2758 = phi float [ %2754, %2753 ], [ 0.000000e+00, %2676 ]
  %2759 = phi float [ %2755, %2753 ], [ 0.000000e+00, %2676 ]
  %2760 = phi float [ %2756, %2753 ], [ 0.000000e+00, %2676 ]
  %2761 = call float @dx.op.dot3.f32(i32 55, float %2758, float %2759, float %2760, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %2762 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2761)  ; FMax(a,b)
  %2763 = fmul fast float %2762, 0x400C5BF8A0000000
  %2764 = fmul fast float %2732, %2652
  %2765 = fmul fast float %2764, %2763
  %2766 = fmul fast float %2733, %2652
  %2767 = fmul fast float %2766, %2763
  %2768 = fmul fast float %2734, %2652
  %2769 = fmul fast float %2768, %2763
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 3
  %2772 = fmul fast float %2765, %2771
  %2773 = fmul fast float %2767, %2771
  %2774 = fmul fast float %2769, %2771
  %2775 = fcmp fast ogt float %2619, %2699
  br i1 %2775, label %2776, label %2785

; <label>:2776                                    ; preds = %2757
  %2777 = fmul fast float %2701, 0x3FC24924A0000000
  %2778 = fsub fast float %2619, %2699
  %2779 = fdiv fast float %2778, %2777
  %2780 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2781 = fsub fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2781, %2772
  %2783 = fmul fast float %2781, %2773
  %2784 = fmul fast float %2781, %2774
  br label %2785

; <label>:2785                                    ; preds = %2776, %2757, %2662, %2617
  %2786 = phi float [ %2784, %2776 ], [ %2774, %2757 ], [ 0.000000e+00, %2662 ], [ 0.000000e+00, %2617 ]
  %2787 = phi float [ %2783, %2776 ], [ %2773, %2757 ], [ 0.000000e+00, %2662 ], [ 0.000000e+00, %2617 ]
  %2788 = phi float [ %2782, %2776 ], [ %2772, %2757 ], [ 0.000000e+00, %2662 ], [ 0.000000e+00, %2617 ]
  %2789 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2788)  ; FMax(a,b)
  %2790 = fmul fast float %2789, 0x3FD20DD760000000
  %2791 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2454, float %2455, float %2456)  ; Dot3(ax,ay,az,bx,by,bz)
  %2792 = fmul fast float %2791, 0x3FDF454380000000
  %2793 = fmul fast float %2791, %2791
  %2794 = fmul fast float %2793, 0x3FEE471020000000
  %2795 = fadd fast float %2794, 0xBFD42F6020000000
  %2796 = call float @dx.op.dot3.f32(i32 55, float %2789, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2792, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2787)  ; FMax(a,b)
  %2798 = fmul fast float %2797, 0x3FD20DD760000000
  %2799 = call float @dx.op.dot3.f32(i32 55, float %2797, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2792, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2800 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2786)  ; FMax(a,b)
  %2801 = fmul fast float %2800, 0x3FD20DD760000000
  %2802 = call float @dx.op.dot3.f32(i32 55, float %2800, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2792, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2803 = call float @dx.op.binary.f32(i32 35, float %2790, float 0.000000e+00)  ; FMax(a,b)
  %2804 = call float @dx.op.binary.f32(i32 35, float %2798, float 0.000000e+00)  ; FMax(a,b)
  %2805 = call float @dx.op.binary.f32(i32 35, float %2801, float 0.000000e+00)  ; FMax(a,b)
  %2806 = call float @dx.op.binary.f32(i32 35, float %2796, float 0.000000e+00)  ; FMax(a,b)
  %2807 = call float @dx.op.binary.f32(i32 35, float %2799, float 0.000000e+00)  ; FMax(a,b)
  %2808 = call float @dx.op.binary.f32(i32 35, float %2802, float 0.000000e+00)  ; FMax(a,b)
  %2809 = fmul fast float %2803, %2506
  %2810 = fmul fast float %2804, %2506
  %2811 = fmul fast float %2805, %2506
  %2812 = fadd fast float %2809, %2610
  %2813 = fadd fast float %2810, %2611
  %2814 = fadd fast float %2811, %2612
  %2815 = fmul fast float %2806, %2506
  %2816 = fmul fast float %2807, %2506
  %2817 = fmul fast float %2808, %2506
  %2818 = fadd fast float %2815, %2607
  %2819 = fadd fast float %2816, %2608
  %2820 = fadd fast float %2817, %2609
  br label %2821

; <label>:2821                                    ; preds = %2785, %2606
  %2822 = phi float [ %2818, %2785 ], [ %2607, %2606 ]
  %2823 = phi float [ %2819, %2785 ], [ %2608, %2606 ]
  %2824 = phi float [ %2820, %2785 ], [ %2609, %2606 ]
  %2825 = phi float [ %2812, %2785 ], [ %2610, %2606 ]
  %2826 = phi float [ %2813, %2785 ], [ %2611, %2606 ]
  %2827 = phi float [ %2814, %2785 ], [ %2612, %2606 ]
  %2828 = fcmp fast olt float %2506, 1.000000e+00
  br i1 %2828, label %2829, label %3647, !dx.controlflow.hints !104

; <label>:2829                                    ; preds = %2821
  %2830 = extractvalue %dx.types.CBufRet.f32 %2462, 2
  %2831 = fadd fast float %2830, %141
  %2832 = fmul fast float %2401, 3.200000e+01
  %2833 = fmul fast float %2402, 3.200000e+01
  %2834 = fadd fast float %2465, %2832
  %2835 = fadd fast float %2466, %2833
  %2836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2837 = extractvalue %dx.types.CBufRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.CBufRet.f32 %2836, 1
  %2839 = fsub fast float %2834, %2837
  %2840 = fsub fast float %2835, %2838
  %2841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.f32 %2841, 0
  %2843 = extractvalue %dx.types.CBufRet.f32 %2841, 1
  %2844 = fmul fast float %2839, %2842
  %2845 = fmul fast float %2840, %2843
  %2846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2847 = extractvalue %dx.types.CBufRet.f32 %2846, 0
  %2848 = fmul fast float %2844, %2847
  %2849 = extractvalue %dx.types.CBufRet.f32 %2846, 1
  %2850 = fadd fast float %2848, %2849
  %2851 = extractvalue %dx.types.CBufRet.f32 %2846, 2
  %2852 = fmul fast float %2851, %2845
  %2853 = extractvalue %dx.types.CBufRet.f32 %2846, 3
  %2854 = fadd fast float %2852, %2853
  %2855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %60, float %2850, float %2854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2856 = extractvalue %dx.types.ResRet.f32 %2855, 0
  %2857 = extractvalue %dx.types.ResRet.f32 %2855, 1
  %2858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2858, 1
  %2860 = extractvalue %dx.types.CBufRet.f32 %2858, 0
  %2861 = fsub fast float %2859, %2860
  %2862 = fmul fast float %2861, %2856
  %2863 = fadd fast float %2862, %2860
  %2864 = extractvalue %dx.types.CBufRet.f32 %2858, 3
  %2865 = extractvalue %dx.types.CBufRet.f32 %2858, 2
  %2866 = fsub fast float %2864, %2865
  %2867 = fmul fast float %2866, %2857
  %2868 = fadd fast float %2867, %2865
  %2869 = fsub fast float %2831, %2863
  %2870 = fsub fast float %2868, %2863
  %2871 = fdiv fast float %2869, %2870
  %2872 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 0
  %2875 = fmul fast float %2874, %2872
  %2876 = extractvalue %dx.types.CBufRet.f32 %2873, 1
  %2877 = fadd fast float %2875, %2876
  %2878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %60, float %2850, float %2854, float %2877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.ResRet.f32 %2878, 1
  %2881 = extractvalue %dx.types.ResRet.f32 %2878, 2
  %2882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2883 = extractvalue %dx.types.CBufRet.f32 %2882, 0
  %2884 = extractvalue %dx.types.CBufRet.f32 %2882, 1
  %2885 = extractvalue %dx.types.CBufRet.f32 %2882, 2
  %2886 = fmul fast float %2883, %2879
  %2887 = fmul fast float %2884, %2880
  %2888 = fmul fast float %2885, %2881
  %2889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2890 = extractvalue %dx.types.CBufRet.f32 %2889, 0
  %2891 = extractvalue %dx.types.CBufRet.f32 %2889, 1
  %2892 = extractvalue %dx.types.CBufRet.f32 %2889, 2
  %2893 = fadd fast float %2886, %2890
  %2894 = fadd fast float %2887, %2891
  %2895 = fadd fast float %2888, %2892
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 0
  %2898 = fmul fast float %2897, %2844
  %2899 = extractvalue %dx.types.CBufRet.f32 %2896, 1
  %2900 = fadd fast float %2898, %2899
  %2901 = extractvalue %dx.types.CBufRet.f32 %2896, 2
  %2902 = fmul fast float %2901, %2845
  %2903 = extractvalue %dx.types.CBufRet.f32 %2896, 3
  %2904 = fadd fast float %2902, %2903
  %2905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.f32 %2905, 0
  %2907 = extractvalue %dx.types.CBufRet.f32 %2905, 1
  %2908 = extractvalue %dx.types.CBufRet.f32 %2905, 2
  %2909 = extractvalue %dx.types.CBufRet.f32 %2905, 3
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 0
  %2912 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %2913 = extractvalue %dx.types.CBufRet.f32 %2910, 2
  %2914 = extractvalue %dx.types.CBufRet.f32 %2910, 3
  %2915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %60, float %2900, float %2904, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2916 = extractvalue %dx.types.ResRet.f32 %2915, 0
  %2917 = extractvalue %dx.types.ResRet.f32 %2915, 1
  %2918 = extractvalue %dx.types.ResRet.f32 %2915, 2
  %2919 = extractvalue %dx.types.ResRet.f32 %2915, 3
  %2920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %60, float %2900, float %2904, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2921 = extractvalue %dx.types.ResRet.f32 %2920, 0
  %2922 = extractvalue %dx.types.ResRet.f32 %2920, 1
  %2923 = extractvalue %dx.types.ResRet.f32 %2920, 2
  %2924 = extractvalue %dx.types.ResRet.f32 %2920, 3
  %2925 = fmul fast float %2916, %2893
  %2926 = fmul fast float %2921, %2893
  %2927 = fmul fast float %2923, %2893
  %2928 = fmul fast float %2919, %2893
  %2929 = fadd fast float %2925, %2906
  %2930 = fadd fast float %2926, %2907
  %2931 = fadd fast float %2927, %2908
  %2932 = fadd fast float %2928, %2909
  %2933 = fmul fast float %2917, %2893
  %2934 = fmul fast float %2922, %2893
  %2935 = fadd fast float %2933, %2911
  %2936 = fadd fast float %2934, %2912
  %2937 = fmul fast float %2918, %2893
  %2938 = fmul fast float %2924, %2893
  %2939 = fadd fast float %2937, %2913
  %2940 = fadd fast float %2938, %2914
  %2941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %60, float %2900, float %2904, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.ResRet.f32 %2941, 2
  %2945 = extractvalue %dx.types.ResRet.f32 %2941, 3
  %2946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %60, float %2900, float %2904, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2947 = extractvalue %dx.types.ResRet.f32 %2946, 0
  %2948 = extractvalue %dx.types.ResRet.f32 %2946, 1
  %2949 = extractvalue %dx.types.ResRet.f32 %2946, 2
  %2950 = extractvalue %dx.types.ResRet.f32 %2946, 3
  %2951 = fmul fast float %2942, %2894
  %2952 = fmul fast float %2947, %2894
  %2953 = fmul fast float %2949, %2894
  %2954 = fmul fast float %2945, %2894
  %2955 = fadd fast float %2929, %2951
  %2956 = fadd fast float %2930, %2952
  %2957 = fadd fast float %2931, %2953
  %2958 = fadd fast float %2932, %2954
  %2959 = fmul fast float %2943, %2894
  %2960 = fmul fast float %2948, %2894
  %2961 = fadd fast float %2935, %2959
  %2962 = fadd fast float %2936, %2960
  %2963 = fmul fast float %2944, %2894
  %2964 = fmul fast float %2950, %2894
  %2965 = fadd fast float %2939, %2963
  %2966 = fadd fast float %2940, %2964
  %2967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %60, float %2900, float %2904, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2968 = extractvalue %dx.types.ResRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.ResRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.ResRet.f32 %2967, 2
  %2971 = extractvalue %dx.types.ResRet.f32 %2967, 3
  %2972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %60, float %2900, float %2904, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  %2976 = extractvalue %dx.types.ResRet.f32 %2972, 3
  %2977 = fmul fast float %2968, %2895
  %2978 = fmul fast float %2973, %2895
  %2979 = fmul fast float %2975, %2895
  %2980 = fmul fast float %2971, %2895
  %2981 = fadd fast float %2955, %2977
  %2982 = fadd fast float %2956, %2978
  %2983 = fadd fast float %2957, %2979
  %2984 = fadd fast float %2958, %2980
  %2985 = fmul fast float %2969, %2895
  %2986 = fmul fast float %2974, %2895
  %2987 = fadd fast float %2961, %2985
  %2988 = fadd fast float %2962, %2986
  %2989 = fmul fast float %2970, %2895
  %2990 = fmul fast float %2976, %2895
  %2991 = fadd fast float %2965, %2989
  %2992 = fadd fast float %2966, %2990
  %2993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2994 = extractvalue %dx.types.CBufRet.f32 %2993, 0
  %2995 = fsub fast float %2465, %2994
  %2996 = fsub fast float %2837, %2465
  %2997 = call float @dx.op.binary.f32(i32 35, float %2996, float %2995)  ; FMax(a,b)
  %2998 = extractvalue %dx.types.CBufRet.f32 %2993, 1
  %2999 = fsub fast float %2466, %2998
  %3000 = fsub fast float %2838, %2466
  %3001 = call float @dx.op.binary.f32(i32 35, float %3000, float %2999)  ; FMax(a,b)
  %3002 = call float @dx.op.binary.f32(i32 35, float %2997, float %3001)  ; FMax(a,b)
  %3003 = extractvalue %dx.types.CBufRet.f32 %2841, 3
  %3004 = fmul fast float %3003, %3002
  %3005 = call float @dx.op.unary.f32(i32 7, float %3004)  ; Saturate(value)
  %3006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3007 = extractvalue %dx.types.CBufRet.f32 %3006, 0
  %3008 = extractvalue %dx.types.CBufRet.f32 %3006, 1
  %3009 = extractvalue %dx.types.CBufRet.f32 %3006, 2
  %3010 = extractvalue %dx.types.CBufRet.f32 %3006, 3
  %3011 = fsub fast float %3007, %2981
  %3012 = fsub fast float %3008, %2982
  %3013 = fsub fast float %3009, %2983
  %3014 = fsub fast float %3010, %2984
  %3015 = fmul fast float %3011, %3005
  %3016 = fmul fast float %3012, %3005
  %3017 = fmul fast float %3013, %3005
  %3018 = fmul fast float %3014, %3005
  %3019 = fadd fast float %3015, %2981
  %3020 = fadd fast float %3016, %2982
  %3021 = fadd fast float %3017, %2983
  %3022 = fadd fast float %3018, %2984
  %3023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.f32 %3023, 0
  %3025 = extractvalue %dx.types.CBufRet.f32 %3023, 1
  %3026 = fsub fast float %3024, %2987
  %3027 = fsub fast float %3025, %2988
  %3028 = fmul fast float %3026, %3005
  %3029 = fmul fast float %3027, %3005
  %3030 = fadd fast float %3028, %2987
  %3031 = fadd fast float %3029, %2988
  %3032 = extractvalue %dx.types.CBufRet.f32 %3023, 2
  %3033 = extractvalue %dx.types.CBufRet.f32 %3023, 3
  %3034 = fsub fast float %3032, %2991
  %3035 = fsub fast float %3033, %2992
  %3036 = fmul fast float %3034, %3005
  %3037 = fmul fast float %3035, %3005
  %3038 = fadd fast float %3036, %2991
  %3039 = fadd fast float %3037, %2992
  %3040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.f32 %3040, 0
  %3042 = fmul fast float %3041, %3019
  %3043 = fmul fast float %3041, %3020
  %3044 = fmul fast float %3041, %3021
  %3045 = fmul fast float %3041, %3022
  %3046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.f32 %3046, 0
  %3048 = fmul fast float %3047, %3030
  %3049 = fmul fast float %3047, %3031
  %3050 = fadd fast float %3048, %3042
  %3051 = fadd fast float %3049, %3044
  %3052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3053 = extractvalue %dx.types.CBufRet.f32 %3052, 0
  %3054 = fmul fast float %3053, %3038
  %3055 = fmul fast float %3053, %3039
  %3056 = fadd fast float %3050, %3054
  %3057 = fadd fast float %3051, %3055
  %3058 = extractvalue %dx.types.CBufRet.f32 %3040, 1
  %3059 = fmul fast float %3058, %3019
  %3060 = fmul fast float %3058, %3020
  %3061 = fmul fast float %3058, %3021
  %3062 = fmul fast float %3058, %3022
  %3063 = extractvalue %dx.types.CBufRet.f32 %3046, 1
  %3064 = fmul fast float %3063, %3030
  %3065 = fmul fast float %3063, %3031
  %3066 = fadd fast float %3064, %3059
  %3067 = fadd fast float %3065, %3061
  %3068 = extractvalue %dx.types.CBufRet.f32 %3052, 1
  %3069 = fmul fast float %3068, %3038
  %3070 = fmul fast float %3068, %3039
  %3071 = fadd fast float %3066, %3069
  %3072 = fadd fast float %3067, %3070
  %3073 = extractvalue %dx.types.CBufRet.f32 %3040, 2
  %3074 = fmul fast float %3073, %3019
  %3075 = fmul fast float %3073, %3020
  %3076 = fmul fast float %3073, %3021
  %3077 = fmul fast float %3073, %3022
  %3078 = extractvalue %dx.types.CBufRet.f32 %3046, 2
  %3079 = fmul fast float %3078, %3030
  %3080 = fmul fast float %3078, %3031
  %3081 = fadd fast float %3079, %3074
  %3082 = fadd fast float %3080, %3076
  %3083 = extractvalue %dx.types.CBufRet.f32 %3052, 2
  %3084 = fmul fast float %3083, %3038
  %3085 = fmul fast float %3083, %3039
  %3086 = fadd fast float %3081, %3084
  %3087 = fadd fast float %3082, %3085
  %3088 = fmul fast float %3075, %3075
  %3089 = fmul fast float %3087, %3087
  %3090 = fmul fast float %3077, %3077
  %3091 = fadd fast float %3090, %3088
  %3092 = fadd fast float %3091, %3089
  %3093 = call float @dx.op.unary.f32(i32 24, float %3092)  ; Sqrt(value)
  %3094 = fcmp fast ugt float %3093, 0.000000e+00
  br i1 %3094, label %3095, label %3110

; <label>:3095                                    ; preds = %2829
  %3096 = fsub fast float -0.000000e+00, %3077
  %3097 = fdiv fast float %3096, %3093
  %3098 = fsub fast float -0.000000e+00, %3075
  %3099 = fdiv fast float %3098, %3093
  %3100 = fdiv fast float %3087, %3093
  %3101 = fmul fast float %3086, 0x3FE279A760000000
  %3102 = fmul fast float %3099, %3075
  %3103 = fmul fast float %3100, %3087
  %3104 = fmul fast float %3097, %3077
  %3105 = fadd fast float %3102, %3104
  %3106 = fsub fast float %3105, %3103
  %3107 = call float @dx.op.unary.f32(i32 6, float %3106)  ; FAbs(value)
  %3108 = fadd fast float %3107, 0x3DDB7CDFE0000000
  %3109 = fdiv fast float %3101, %3108
  br label %3110

; <label>:3110                                    ; preds = %3095, %2829
  %3111 = phi float [ %3109, %3095 ], [ 1.000000e+00, %2829 ]
  %3112 = fmul fast float %3060, %3060
  %3113 = fmul fast float %3072, %3072
  %3114 = fmul fast float %3062, %3062
  %3115 = fadd fast float %3114, %3112
  %3116 = fadd fast float %3115, %3113
  %3117 = call float @dx.op.unary.f32(i32 24, float %3116)  ; Sqrt(value)
  %3118 = fcmp fast ugt float %3117, 0.000000e+00
  br i1 %3118, label %3119, label %3134

; <label>:3119                                    ; preds = %3110
  %3120 = fsub fast float -0.000000e+00, %3062
  %3121 = fdiv fast float %3120, %3117
  %3122 = fsub fast float -0.000000e+00, %3060
  %3123 = fdiv fast float %3122, %3117
  %3124 = fdiv fast float %3072, %3117
  %3125 = fmul fast float %3071, 0x3FE279A760000000
  %3126 = fmul fast float %3123, %3060
  %3127 = fmul fast float %3124, %3072
  %3128 = fmul fast float %3121, %3062
  %3129 = fadd fast float %3126, %3128
  %3130 = fsub fast float %3129, %3127
  %3131 = call float @dx.op.unary.f32(i32 6, float %3130)  ; FAbs(value)
  %3132 = fadd fast float %3131, 0x3DDB7CDFE0000000
  %3133 = fdiv fast float %3125, %3132
  br label %3134

; <label>:3134                                    ; preds = %3119, %3110
  %3135 = phi float [ %3133, %3119 ], [ 1.000000e+00, %3110 ]
  %3136 = call float @dx.op.binary.f32(i32 36, float %3135, float %3111)  ; FMin(a,b)
  %3137 = fmul fast float %3043, %3043
  %3138 = fmul fast float %3057, %3057
  %3139 = fmul fast float %3045, %3045
  %3140 = fadd fast float %3139, %3137
  %3141 = fadd fast float %3140, %3138
  %3142 = call float @dx.op.unary.f32(i32 24, float %3141)  ; Sqrt(value)
  %3143 = fcmp fast ugt float %3142, 0.000000e+00
  br i1 %3143, label %3144, label %3159

; <label>:3144                                    ; preds = %3134
  %3145 = fsub fast float -0.000000e+00, %3045
  %3146 = fdiv fast float %3145, %3142
  %3147 = fsub fast float -0.000000e+00, %3043
  %3148 = fdiv fast float %3147, %3142
  %3149 = fdiv fast float %3057, %3142
  %3150 = fmul fast float %3056, 0x3FE279A760000000
  %3151 = fmul fast float %3148, %3043
  %3152 = fmul fast float %3149, %3057
  %3153 = fmul fast float %3146, %3045
  %3154 = fadd fast float %3151, %3153
  %3155 = fsub fast float %3154, %3152
  %3156 = call float @dx.op.unary.f32(i32 6, float %3155)  ; FAbs(value)
  %3157 = fadd fast float %3156, 0x3DDB7CDFE0000000
  %3158 = fdiv fast float %3150, %3157
  br label %3159

; <label>:3159                                    ; preds = %3144, %3134
  %3160 = phi float [ %3158, %3144 ], [ 1.000000e+00, %3134 ]
  %3161 = call float @dx.op.binary.f32(i32 36, float %3160, float %3136)  ; FMin(a,b)
  %3162 = call float @dx.op.unary.f32(i32 7, float %3161)  ; Saturate(value)
  %3163 = fcmp fast olt float %3162, 1.000000e+00
  br i1 %3163, label %3164, label %3174

; <label>:3164                                    ; preds = %3159
  %3165 = fmul fast float %3162, %3043
  %3166 = fmul fast float %3162, %3057
  %3167 = fmul fast float %3162, %3045
  %3168 = fmul fast float %3162, %3060
  %3169 = fmul fast float %3162, %3072
  %3170 = fmul fast float %3162, %3062
  %3171 = fmul fast float %3162, %3075
  %3172 = fmul fast float %3162, %3087
  %3173 = fmul fast float %3162, %3077
  br label %3174

; <label>:3174                                    ; preds = %3164, %3159
  %3175 = phi float [ %3171, %3164 ], [ %3075, %3159 ]
  %3176 = phi float [ %3172, %3164 ], [ %3087, %3159 ]
  %3177 = phi float [ %3173, %3164 ], [ %3077, %3159 ]
  %3178 = phi float [ %3168, %3164 ], [ %3060, %3159 ]
  %3179 = phi float [ %3169, %3164 ], [ %3072, %3159 ]
  %3180 = phi float [ %3170, %3164 ], [ %3062, %3159 ]
  %3181 = phi float [ %3165, %3164 ], [ %3043, %3159 ]
  %3182 = phi float [ %3166, %3164 ], [ %3057, %3159 ]
  %3183 = phi float [ %3167, %3164 ], [ %3045, %3159 ]
  %3184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3056)  ; FMax(a,b)
  %3185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3071)  ; FMax(a,b)
  %3186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3086)  ; FMax(a,b)
  %3187 = fcmp fast oge float %2844, 0.000000e+00
  %3188 = and i1 %3187, %2615
  %3189 = fcmp fast ole float %2844, 1.000000e+00
  %3190 = and i1 %3189, %3188
  %3191 = fcmp fast oge float %2845, 0.000000e+00
  %3192 = and i1 %3191, %3190
  %3193 = fcmp fast ole float %2845, 1.000000e+00
  %3194 = and i1 %3193, %3192
  br i1 %3194, label %3195, label %3340, !dx.controlflow.hints !105

; <label>:3195                                    ; preds = %3174
  %3196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.f32 %3196, 2
  %3198 = extractvalue %dx.types.CBufRet.f32 %3196, 3
  %3199 = fmul fast float %3197, %2844
  %3200 = fmul fast float %3198, %2845
  %3201 = call float @dx.op.unary.f32(i32 27, float %3199)  ; Round_ni(value)
  %3202 = call float @dx.op.unary.f32(i32 27, float %3200)  ; Round_ni(value)
  %3203 = fptosi float %3201 to i32
  %3204 = fptosi float %3202 to i32
  %3205 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %49, i32 0, i32 %3203, i32 %3204, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 65535
  %3208 = lshr i32 %3206, 16
  %3209 = icmp eq i32 %3207, 65535
  br i1 %3209, label %3246, label %3210

; <label>:3210                                    ; preds = %3195
  %3211 = extractvalue %dx.types.CBufRet.f32 %2613, 1
  %3212 = extractvalue %dx.types.CBufRet.f32 %3196, 0
  %3213 = extractvalue %dx.types.CBufRet.f32 %3196, 1
  %3214 = fmul fast float %3212, %2844
  %3215 = fmul fast float %3213, %2845
  %3216 = fmul fast float %3214, 1.250000e-01
  %3217 = fmul fast float %3215, 1.250000e-01
  %3218 = call float @dx.op.unary.f32(i32 27, float %3216)  ; Round_ni(value)
  %3219 = call float @dx.op.unary.f32(i32 27, float %3217)  ; Round_ni(value)
  %3220 = fmul fast float %3218, 8.000000e+00
  %3221 = fmul fast float %3219, 8.000000e+00
  %3222 = and i32 %3206, 255
  %3223 = lshr i32 %3206, 8
  %3224 = and i32 %3223, 255
  %3225 = mul nuw nsw i32 %3222, 9
  %3226 = uitofp i32 %3225 to float
  %3227 = mul nuw nsw i32 %3224, 9
  %3228 = uitofp i32 %3227 to float
  %3229 = fadd fast float %3226, 5.000000e-01
  %3230 = fadd fast float %3229, %3214
  %3231 = fsub fast float %3230, %3220
  %3232 = fadd fast float %3228, 5.000000e-01
  %3233 = fadd fast float %3232, %3215
  %3234 = fsub fast float %3233, %3221
  %3235 = fdiv fast float %3231, %2614
  %3236 = fdiv fast float %3234, %3211
  %3237 = fmul fast float %2872, 4.375000e-01
  %3238 = fadd fast float %3237, 3.125000e-02
  %3239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %60, float %3235, float %3236, float %3238, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3240 = extractvalue %dx.types.ResRet.f32 %3239, 0
  %3241 = extractvalue %dx.types.ResRet.f32 %3239, 1
  %3242 = extractvalue %dx.types.ResRet.f32 %3239, 2
  %3243 = fadd fast float %3240, %3184
  %3244 = fadd fast float %3241, %3185
  %3245 = fadd fast float %3242, %3186
  br label %3246

; <label>:3246                                    ; preds = %3210, %3195
  %3247 = phi float [ %3245, %3210 ], [ %3186, %3195 ]
  %3248 = phi float [ %3244, %3210 ], [ %3185, %3195 ]
  %3249 = phi float [ %3243, %3210 ], [ %3184, %3195 ]
  %3250 = icmp eq i32 %3208, 65535
  br i1 %3250, label %3340, label %3251

; <label>:3251                                    ; preds = %3246
  %3252 = extractvalue %dx.types.CBufRet.f32 %2613, 1
  %3253 = extractvalue %dx.types.CBufRet.f32 %3196, 0
  %3254 = extractvalue %dx.types.CBufRet.f32 %3196, 1
  %3255 = fmul fast float %3253, %2844
  %3256 = fmul fast float %3254, %2845
  %3257 = fmul fast float %3255, 1.250000e-01
  %3258 = fmul fast float %3256, 1.250000e-01
  %3259 = call float @dx.op.unary.f32(i32 27, float %3257)  ; Round_ni(value)
  %3260 = call float @dx.op.unary.f32(i32 27, float %3258)  ; Round_ni(value)
  %3261 = fmul fast float %3259, 8.000000e+00
  %3262 = fmul fast float %3260, 8.000000e+00
  %3263 = fsub fast float %3255, %3261
  %3264 = fsub fast float %3256, %3262
  %3265 = fadd fast float %3263, 5.000000e-01
  %3266 = fadd fast float %3264, 5.000000e-01
  %3267 = and i32 %3208, 255
  %3268 = lshr i32 %3206, 24
  %3269 = mul nuw nsw i32 %3267, 9
  %3270 = uitofp i32 %3269 to float
  %3271 = mul nuw nsw i32 %3268, 9
  %3272 = uitofp i32 %3271 to float
  %3273 = fadd fast float %3265, %3270
  %3274 = fadd fast float %3266, %3272
  %3275 = fdiv fast float %3273, %2614
  %3276 = fdiv fast float %3274, %3252
  %3277 = fmul fast float %2872, 4.375000e-01
  %3278 = fadd fast float %3277, 3.125000e-02
  %3279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %60, float %3275, float %3276, float %3278, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = extractvalue %dx.types.ResRet.f32 %3279, 1
  %3282 = extractvalue %dx.types.ResRet.f32 %3279, 2
  %3283 = fadd fast float %3277, 5.312500e-01
  %3284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %60, float %3275, float %3276, float %3283, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.ResRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.ResRet.f32 %3284, 2
  %3288 = fmul fast float %3285, 2.000000e+00
  %3289 = fmul fast float %3286, 2.000000e+00
  %3290 = fmul fast float %3287, 2.000000e+00
  %3291 = fadd fast float %3288, -1.000000e+00
  %3292 = fadd fast float %3289, -1.000000e+00
  %3293 = fadd fast float %3290, -1.000000e+00
  %3294 = fmul fast float %3291, %3291
  %3295 = fmul fast float %3292, %3292
  %3296 = fadd fast float %3294, %3295
  %3297 = fmul fast float %3293, %3293
  %3298 = fadd fast float %3296, %3297
  %3299 = call float @dx.op.unary.f32(i32 24, float %3298)  ; Sqrt(value)
  %3300 = fcmp fast ogt float %3299, 0.000000e+00
  br i1 %3300, label %3301, label %3305

; <label>:3301                                    ; preds = %3251
  %3302 = fdiv fast float %3291, %3299
  %3303 = fdiv fast float %3292, %3299
  %3304 = fdiv fast float %3293, %3299
  br label %3305

; <label>:3305                                    ; preds = %3301, %3251
  %3306 = phi float [ %3302, %3301 ], [ 0.000000e+00, %3251 ]
  %3307 = phi float [ %3303, %3301 ], [ 0.000000e+00, %3251 ]
  %3308 = phi float [ %3304, %3301 ], [ 0.000000e+00, %3251 ]
  %3309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.CBufRet.f32 %3309, 1
  %3312 = fsub fast float %2465, %3310
  %3313 = fsub fast float %2466, %3311
  %3314 = fmul fast float %3312, %3312
  %3315 = fmul fast float %3313, %3313
  %3316 = fadd fast float %3314, %3315
  %3317 = call float @dx.op.unary.f32(i32 24, float %3316)  ; Sqrt(value)
  %3318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3319 = extractvalue %dx.types.CBufRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.CBufRet.f32 %3318, 1
  %3321 = fsub fast float %3317, %3319
  %3322 = fdiv fast float %3321, %3320
  %3323 = call float @dx.op.unary.f32(i32 7, float %3322)  ; Saturate(value)
  %3324 = fmul fast float %3323, 2.000000e+00
  %3325 = fsub fast float 3.000000e+00, %3324
  %3326 = fmul fast float %3323, %3323
  %3327 = fmul fast float %3326, %3325
  %3328 = call float @dx.op.dot3.f32(i32 55, float %3306, float %3307, float %3308, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %3329 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3328)  ; FMax(a,b)
  %3330 = fmul fast float %3329, 0x400C5BF8A0000000
  %3331 = fmul fast float %3327, %3280
  %3332 = fmul fast float %3331, %3330
  %3333 = fadd fast float %3332, %3249
  %3334 = fmul fast float %3327, %3281
  %3335 = fmul fast float %3334, %3330
  %3336 = fadd fast float %3335, %3248
  %3337 = fmul fast float %3327, %3282
  %3338 = fmul fast float %3337, %3330
  %3339 = fadd fast float %3338, %3247
  br label %3340

; <label>:3340                                    ; preds = %3305, %3246, %3174
  %3341 = phi float [ %3339, %3305 ], [ %3247, %3246 ], [ %3186, %3174 ]
  %3342 = phi float [ %3336, %3305 ], [ %3248, %3246 ], [ %3185, %3174 ]
  %3343 = phi float [ %3333, %3305 ], [ %3249, %3246 ], [ %3184, %3174 ]
  %3344 = fcmp fast ogt float %2831, %2868
  %3345 = and i1 %3187, %3344
  %3346 = and i1 %3189, %3345
  %3347 = and i1 %3191, %3346
  %3348 = and i1 %3193, %3347
  br i1 %3348, label %3349, label %3406, !dx.controlflow.hints !106

; <label>:3349                                    ; preds = %3340
  %3350 = fmul fast float %2870, 0x3FC24924A0000000
  %3351 = fsub fast float %2831, %2868
  %3352 = fdiv fast float %3351, %3350
  %3353 = call float @dx.op.unary.f32(i32 7, float %3352)  ; Saturate(value)
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 0
  %3356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3357 = extractvalue %dx.types.CBufRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.CBufRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.CBufRet.f32 %3356, 2
  %3360 = fsub fast float %3355, %3343
  %3361 = fsub fast float %3357, %3181
  %3362 = fsub fast float %3358, %3182
  %3363 = fsub fast float %3359, %3183
  %3364 = fmul fast float %3360, %3353
  %3365 = fmul fast float %3361, %3353
  %3366 = fmul fast float %3362, %3353
  %3367 = fmul fast float %3363, %3353
  %3368 = fadd fast float %3364, %3343
  %3369 = fadd fast float %3365, %3181
  %3370 = fadd fast float %3366, %3182
  %3371 = fadd fast float %3367, %3183
  %3372 = extractvalue %dx.types.CBufRet.f32 %3354, 1
  %3373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3374 = extractvalue %dx.types.CBufRet.f32 %3373, 0
  %3375 = extractvalue %dx.types.CBufRet.f32 %3373, 1
  %3376 = extractvalue %dx.types.CBufRet.f32 %3373, 2
  %3377 = fsub fast float %3372, %3342
  %3378 = fsub fast float %3374, %3178
  %3379 = fsub fast float %3375, %3179
  %3380 = fsub fast float %3376, %3180
  %3381 = fmul fast float %3377, %3353
  %3382 = fmul fast float %3378, %3353
  %3383 = fmul fast float %3379, %3353
  %3384 = fmul fast float %3380, %3353
  %3385 = fadd fast float %3381, %3342
  %3386 = fadd fast float %3382, %3178
  %3387 = fadd fast float %3383, %3179
  %3388 = fadd fast float %3384, %3180
  %3389 = extractvalue %dx.types.CBufRet.f32 %3354, 2
  %3390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3391 = extractvalue %dx.types.CBufRet.f32 %3390, 0
  %3392 = extractvalue %dx.types.CBufRet.f32 %3390, 1
  %3393 = extractvalue %dx.types.CBufRet.f32 %3390, 2
  %3394 = fsub fast float %3389, %3341
  %3395 = fsub fast float %3391, %3175
  %3396 = fsub fast float %3392, %3176
  %3397 = fsub fast float %3393, %3177
  %3398 = fmul fast float %3394, %3353
  %3399 = fmul fast float %3395, %3353
  %3400 = fmul fast float %3396, %3353
  %3401 = fmul fast float %3397, %3353
  %3402 = fadd fast float %3398, %3341
  %3403 = fadd fast float %3399, %3175
  %3404 = fadd fast float %3400, %3176
  %3405 = fadd fast float %3401, %3177
  br label %3406

; <label>:3406                                    ; preds = %3349, %3340
  %3407 = phi float [ %3402, %3349 ], [ %3341, %3340 ]
  %3408 = phi float [ %3403, %3349 ], [ %3175, %3340 ]
  %3409 = phi float [ %3404, %3349 ], [ %3176, %3340 ]
  %3410 = phi float [ %3405, %3349 ], [ %3177, %3340 ]
  %3411 = phi float [ %3385, %3349 ], [ %3342, %3340 ]
  %3412 = phi float [ %3386, %3349 ], [ %3178, %3340 ]
  %3413 = phi float [ %3387, %3349 ], [ %3179, %3340 ]
  %3414 = phi float [ %3388, %3349 ], [ %3180, %3340 ]
  %3415 = phi float [ %3368, %3349 ], [ %3343, %3340 ]
  %3416 = phi float [ %3369, %3349 ], [ %3181, %3340 ]
  %3417 = phi float [ %3370, %3349 ], [ %3182, %3340 ]
  %3418 = phi float [ %3371, %3349 ], [ %3183, %3340 ]
  %3419 = extractvalue %dx.types.CBufRet.f32 %2993, 3
  %3420 = fmul fast float %3419, %3415
  %3421 = fmul fast float %3419, %3411
  %3422 = fmul fast float %3419, %3407
  %3423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3424 = extractvalue %dx.types.CBufRet.f32 %3423, 3
  %3425 = fmul fast float %3420, %3424
  %3426 = fmul fast float %3421, %3424
  %3427 = fmul fast float %3422, %3424
  %3428 = fmul fast float %3416, 1.500000e+00
  %3429 = fmul fast float %3428, %3419
  %3430 = fmul fast float %3429, %3424
  %3431 = fmul fast float %3417, 1.500000e+00
  %3432 = fmul fast float %3431, %3419
  %3433 = fmul fast float %3432, %3424
  %3434 = fmul fast float %3418, 1.500000e+00
  %3435 = fmul fast float %3434, %3419
  %3436 = fmul fast float %3435, %3424
  %3437 = fmul fast float %3412, 1.500000e+00
  %3438 = fmul fast float %3437, %3419
  %3439 = fmul fast float %3438, %3424
  %3440 = fmul fast float %3413, 1.500000e+00
  %3441 = fmul fast float %3440, %3419
  %3442 = fmul fast float %3441, %3424
  %3443 = fmul fast float %3414, 1.500000e+00
  %3444 = fmul fast float %3443, %3419
  %3445 = fmul fast float %3444, %3424
  %3446 = fmul fast float %3408, 1.500000e+00
  %3447 = fmul fast float %3446, %3419
  %3448 = fmul fast float %3447, %3424
  %3449 = fmul fast float %3409, 1.500000e+00
  %3450 = fmul fast float %3449, %3419
  %3451 = fmul fast float %3450, %3424
  %3452 = fmul fast float %3410, 1.500000e+00
  %3453 = fmul fast float %3452, %3419
  %3454 = fmul fast float %3453, %3424
  %3455 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3425)  ; FMax(a,b)
  %3456 = call float @dx.op.dot3.f32(i32 55, float %3430, float %3433, float %3436, float %3430, float %3433, float %3436)  ; Dot3(ax,ay,az,bx,by,bz)
  %3457 = fcmp fast oeq float %3456, 0.000000e+00
  %3458 = fcmp fast oeq float %3455, 0.000000e+00
  %3459 = or i1 %3458, %3457
  br i1 %3459, label %3489, label %3460

; <label>:3460                                    ; preds = %3406
  %3461 = fsub fast float -0.000000e+00, %3436
  %3462 = fsub fast float -0.000000e+00, %3430
  %3463 = call float @dx.op.unary.f32(i32 24, float %3456)  ; Sqrt(value)
  %3464 = fdiv fast float %3463, %3455
  %3465 = fcmp fast ogt float %3464, 0x3FFB6F8900000000
  %3466 = select i1 %3465, float 0x3FFB6F8900000000, float %3464
  %3467 = fmul fast float %3466, 0x3FE8A23460000000
  %3468 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  %3469 = call float @dx.op.binary.f32(i32 35, float %3466, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3470 = fmul fast float %3468, %3455
  %3471 = fmul fast float %3469, 0x3FF279A740000000
  %3472 = fadd fast float %3471, -1.000000e+00
  %3473 = call float @dx.op.dot3.f32(i32 55, float %3461, float %3462, float %3433, float %3461, float %3462, float %3433)  ; Dot3(ax,ay,az,bx,by,bz)
  %3474 = call float @dx.op.unary.f32(i32 25, float %3473)  ; Rsqrt(value)
  %3475 = fmul fast float %3474, %3461
  %3476 = fmul fast float %3474, %3462
  %3477 = fmul fast float %3474, %3433
  %3478 = fmul fast float %3472, %3472
  %3479 = fsub fast float 1.000000e+00, %3478
  %3480 = fmul fast float %3469, 0x40005F8BE0000000
  %3481 = fsub fast float 0x400C5BF8A0000000, %3480
  %3482 = fdiv fast float %3470, %3481
  %3483 = fmul fast float %3482, 0x3FEE31C3C0000000
  %3484 = fmul fast float %3483, %3479
  %3485 = fmul fast float %3469, 0x3FDACB7480000000
  %3486 = fadd fast float %3485, 0xBFD7347680000000
  %3487 = fmul fast float %3486, %3482
  %3488 = fmul fast float %3487, %3479
  br label %3489

; <label>:3489                                    ; preds = %3460, %3406
  %3490 = phi float [ %3475, %3460 ], [ 0.000000e+00, %3406 ]
  %3491 = phi float [ %3476, %3460 ], [ 0.000000e+00, %3406 ]
  %3492 = phi float [ %3477, %3460 ], [ 0.000000e+00, %3406 ]
  %3493 = phi float [ %3484, %3460 ], [ 0.000000e+00, %3406 ]
  %3494 = phi float [ %3488, %3460 ], [ 0.000000e+00, %3406 ]
  %3495 = call float @dx.op.dot3.f32(i32 55, float %3490, float %3491, float %3492, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %3496 = fmul fast float %3495, %3495
  %3497 = fmul fast float %3496, 0x3FEE471020000000
  %3498 = fadd fast float %3497, 0xBFD42F6020000000
  %3499 = fmul fast float %3455, 0x3FD20DD760000000
  %3500 = fmul fast float %3498, %3494
  %3501 = fmul fast float %3493, 0x3FDF454380000000
  %3502 = fmul fast float %3501, %3495
  %3503 = fadd fast float %3502, %3499
  %3504 = fadd fast float %3503, %3500
  %3505 = call float @dx.op.dot3.f32(i32 55, float %3490, float %3491, float %3492, float %2454, float %2455, float %2456)  ; Dot3(ax,ay,az,bx,by,bz)
  %3506 = fmul fast float %3505, 0x3FDF454380000000
  %3507 = fmul fast float %3505, %3505
  %3508 = fmul fast float %3507, 0x3FEE471020000000
  %3509 = fadd fast float %3508, 0xBFD42F6020000000
  %3510 = call float @dx.op.dot3.f32(i32 55, float %3455, float %3493, float %3494, float 0x3FD20DD760000000, float %3506, float %3509)  ; Dot3(ax,ay,az,bx,by,bz)
  %3511 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3426)  ; FMax(a,b)
  %3512 = call float @dx.op.dot3.f32(i32 55, float %3439, float %3442, float %3445, float %3439, float %3442, float %3445)  ; Dot3(ax,ay,az,bx,by,bz)
  %3513 = fcmp fast oeq float %3512, 0.000000e+00
  %3514 = fcmp fast oeq float %3511, 0.000000e+00
  %3515 = or i1 %3514, %3513
  br i1 %3515, label %3545, label %3516

; <label>:3516                                    ; preds = %3489
  %3517 = fsub fast float -0.000000e+00, %3445
  %3518 = fsub fast float -0.000000e+00, %3439
  %3519 = call float @dx.op.unary.f32(i32 24, float %3512)  ; Sqrt(value)
  %3520 = fdiv fast float %3519, %3511
  %3521 = fcmp fast ogt float %3520, 0x3FFB6F8900000000
  %3522 = select i1 %3521, float 0x3FFB6F8900000000, float %3520
  %3523 = fmul fast float %3522, 0x3FE8A23460000000
  %3524 = call float @dx.op.unary.f32(i32 7, float %3523)  ; Saturate(value)
  %3525 = call float @dx.op.binary.f32(i32 35, float %3522, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3526 = fmul fast float %3524, %3511
  %3527 = fmul fast float %3525, 0x3FF279A740000000
  %3528 = fadd fast float %3527, -1.000000e+00
  %3529 = call float @dx.op.dot3.f32(i32 55, float %3517, float %3518, float %3442, float %3517, float %3518, float %3442)  ; Dot3(ax,ay,az,bx,by,bz)
  %3530 = call float @dx.op.unary.f32(i32 25, float %3529)  ; Rsqrt(value)
  %3531 = fmul fast float %3530, %3517
  %3532 = fmul fast float %3530, %3518
  %3533 = fmul fast float %3530, %3442
  %3534 = fmul fast float %3528, %3528
  %3535 = fsub fast float 1.000000e+00, %3534
  %3536 = fmul fast float %3525, 0x40005F8BE0000000
  %3537 = fsub fast float 0x400C5BF8A0000000, %3536
  %3538 = fdiv fast float %3526, %3537
  %3539 = fmul fast float %3538, 0x3FEE31C3C0000000
  %3540 = fmul fast float %3539, %3535
  %3541 = fmul fast float %3525, 0x3FDACB7480000000
  %3542 = fadd fast float %3541, 0xBFD7347680000000
  %3543 = fmul fast float %3542, %3538
  %3544 = fmul fast float %3543, %3535
  br label %3545

; <label>:3545                                    ; preds = %3516, %3489
  %3546 = phi float [ %3531, %3516 ], [ 0.000000e+00, %3489 ]
  %3547 = phi float [ %3532, %3516 ], [ 0.000000e+00, %3489 ]
  %3548 = phi float [ %3533, %3516 ], [ 0.000000e+00, %3489 ]
  %3549 = phi float [ %3540, %3516 ], [ 0.000000e+00, %3489 ]
  %3550 = phi float [ %3544, %3516 ], [ 0.000000e+00, %3489 ]
  %3551 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %3552 = fmul fast float %3551, %3551
  %3553 = fmul fast float %3552, 0x3FEE471020000000
  %3554 = fadd fast float %3553, 0xBFD42F6020000000
  %3555 = fmul fast float %3511, 0x3FD20DD760000000
  %3556 = fmul fast float %3554, %3550
  %3557 = fmul fast float %3549, 0x3FDF454380000000
  %3558 = fmul fast float %3557, %3551
  %3559 = fadd fast float %3558, %3555
  %3560 = fadd fast float %3559, %3556
  %3561 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float %2454, float %2455, float %2456)  ; Dot3(ax,ay,az,bx,by,bz)
  %3562 = fmul fast float %3561, 0x3FDF454380000000
  %3563 = fmul fast float %3561, %3561
  %3564 = fmul fast float %3563, 0x3FEE471020000000
  %3565 = fadd fast float %3564, 0xBFD42F6020000000
  %3566 = call float @dx.op.dot3.f32(i32 55, float %3511, float %3549, float %3550, float 0x3FD20DD760000000, float %3562, float %3565)  ; Dot3(ax,ay,az,bx,by,bz)
  %3567 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3427)  ; FMax(a,b)
  %3568 = call float @dx.op.dot3.f32(i32 55, float %3448, float %3451, float %3454, float %3448, float %3451, float %3454)  ; Dot3(ax,ay,az,bx,by,bz)
  %3569 = fcmp fast oeq float %3568, 0.000000e+00
  %3570 = fcmp fast oeq float %3567, 0.000000e+00
  %3571 = or i1 %3570, %3569
  br i1 %3571, label %3601, label %3572

; <label>:3572                                    ; preds = %3545
  %3573 = fsub fast float -0.000000e+00, %3454
  %3574 = fsub fast float -0.000000e+00, %3448
  %3575 = call float @dx.op.unary.f32(i32 24, float %3568)  ; Sqrt(value)
  %3576 = fdiv fast float %3575, %3567
  %3577 = fcmp fast ogt float %3576, 0x3FFB6F8900000000
  %3578 = select i1 %3577, float 0x3FFB6F8900000000, float %3576
  %3579 = fmul fast float %3578, 0x3FE8A23460000000
  %3580 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3581 = call float @dx.op.binary.f32(i32 35, float %3578, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3582 = fmul fast float %3580, %3567
  %3583 = fmul fast float %3581, 0x3FF279A740000000
  %3584 = fadd fast float %3583, -1.000000e+00
  %3585 = call float @dx.op.dot3.f32(i32 55, float %3573, float %3574, float %3451, float %3573, float %3574, float %3451)  ; Dot3(ax,ay,az,bx,by,bz)
  %3586 = call float @dx.op.unary.f32(i32 25, float %3585)  ; Rsqrt(value)
  %3587 = fmul fast float %3586, %3573
  %3588 = fmul fast float %3586, %3574
  %3589 = fmul fast float %3586, %3451
  %3590 = fmul fast float %3584, %3584
  %3591 = fsub fast float 1.000000e+00, %3590
  %3592 = fmul fast float %3581, 0x40005F8BE0000000
  %3593 = fsub fast float 0x400C5BF8A0000000, %3592
  %3594 = fdiv fast float %3582, %3593
  %3595 = fmul fast float %3594, 0x3FEE31C3C0000000
  %3596 = fmul fast float %3595, %3591
  %3597 = fmul fast float %3581, 0x3FDACB7480000000
  %3598 = fadd fast float %3597, 0xBFD7347680000000
  %3599 = fmul fast float %3598, %3594
  %3600 = fmul fast float %3599, %3591
  br label %3601

; <label>:3601                                    ; preds = %3572, %3545
  %3602 = phi float [ %3587, %3572 ], [ 0.000000e+00, %3545 ]
  %3603 = phi float [ %3588, %3572 ], [ 0.000000e+00, %3545 ]
  %3604 = phi float [ %3589, %3572 ], [ 0.000000e+00, %3545 ]
  %3605 = phi float [ %3596, %3572 ], [ 0.000000e+00, %3545 ]
  %3606 = phi float [ %3600, %3572 ], [ 0.000000e+00, %3545 ]
  %3607 = call float @dx.op.dot3.f32(i32 55, float %3602, float %3603, float %3604, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %3608 = fmul fast float %3607, %3607
  %3609 = fmul fast float %3608, 0x3FEE471020000000
  %3610 = fadd fast float %3609, 0xBFD42F6020000000
  %3611 = fmul fast float %3567, 0x3FD20DD760000000
  %3612 = fmul fast float %3610, %3606
  %3613 = fmul fast float %3605, 0x3FDF454380000000
  %3614 = fmul fast float %3613, %3607
  %3615 = fadd fast float %3614, %3611
  %3616 = fadd fast float %3615, %3612
  %3617 = call float @dx.op.dot3.f32(i32 55, float %3602, float %3603, float %3604, float %2454, float %2455, float %2456)  ; Dot3(ax,ay,az,bx,by,bz)
  %3618 = fmul fast float %3617, 0x3FDF454380000000
  %3619 = fmul fast float %3617, %3617
  %3620 = fmul fast float %3619, 0x3FEE471020000000
  %3621 = fadd fast float %3620, 0xBFD42F6020000000
  %3622 = call float @dx.op.dot3.f32(i32 55, float %3567, float %3605, float %3606, float 0x3FD20DD760000000, float %3618, float %3621)  ; Dot3(ax,ay,az,bx,by,bz)
  %3623 = call float @dx.op.binary.f32(i32 35, float %3504, float 0.000000e+00)  ; FMax(a,b)
  %3624 = call float @dx.op.binary.f32(i32 35, float %3560, float 0.000000e+00)  ; FMax(a,b)
  %3625 = call float @dx.op.binary.f32(i32 35, float %3616, float 0.000000e+00)  ; FMax(a,b)
  %3626 = call float @dx.op.binary.f32(i32 35, float %3510, float 0.000000e+00)  ; FMax(a,b)
  %3627 = call float @dx.op.binary.f32(i32 35, float %3566, float 0.000000e+00)  ; FMax(a,b)
  %3628 = call float @dx.op.binary.f32(i32 35, float %3622, float 0.000000e+00)  ; FMax(a,b)
  %3629 = fsub fast float %2825, %3623
  %3630 = fsub fast float %2826, %3624
  %3631 = fsub fast float %2827, %3625
  %3632 = fmul fast float %3629, %2506
  %3633 = fmul fast float %3630, %2506
  %3634 = fmul fast float %3631, %2506
  %3635 = fadd fast float %3632, %3623
  %3636 = fadd fast float %3633, %3624
  %3637 = fadd fast float %3634, %3625
  %3638 = fsub fast float %2822, %3626
  %3639 = fsub fast float %2823, %3627
  %3640 = fsub fast float %2824, %3628
  %3641 = fmul fast float %3638, %2506
  %3642 = fmul fast float %3639, %2506
  %3643 = fmul fast float %3640, %2506
  %3644 = fadd fast float %3641, %3626
  %3645 = fadd fast float %3642, %3627
  %3646 = fadd fast float %3643, %3628
  br label %3647

; <label>:3647                                    ; preds = %3601, %2821
  %3648 = phi float [ %3644, %3601 ], [ %2822, %2821 ]
  %3649 = phi float [ %3645, %3601 ], [ %2823, %2821 ]
  %3650 = phi float [ %3646, %3601 ], [ %2824, %2821 ]
  %3651 = phi float [ %3635, %3601 ], [ %2825, %2821 ]
  %3652 = phi float [ %3636, %3601 ], [ %2826, %2821 ]
  %3653 = phi float [ %3637, %3601 ], [ %2827, %2821 ]
  %3654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3654, 0
  %3656 = call float @dx.op.binary.f32(i32 36, float %2398, float %3655)  ; FMin(a,b)
  %3657 = fsub fast float 1.000000e+00, %2457
  %3658 = fmul fast float %3656, %3657
  %3659 = fsub fast float 1.000000e+00, %3658
  %3660 = bitcast float %3659 to i32
  %3661 = sub nsw i32 2129859010, %3660
  %3662 = bitcast i32 %3661 to float
  %3663 = call float @dx.op.binary.f32(i32 36, float %2399, float %3655)  ; FMin(a,b)
  %3664 = fmul fast float %3663, %3657
  %3665 = fsub fast float 1.000000e+00, %3664
  %3666 = bitcast float %3665 to i32
  %3667 = sub nsw i32 2129859010, %3666
  %3668 = bitcast i32 %3667 to float
  %3669 = call float @dx.op.binary.f32(i32 36, float %2400, float %3655)  ; FMin(a,b)
  %3670 = fmul fast float %3669, %3657
  %3671 = fsub fast float 1.000000e+00, %3670
  %3672 = bitcast float %3671 to i32
  %3673 = sub nsw i32 2129859010, %3672
  %3674 = bitcast i32 %3673 to float
  %3675 = fmul fast float %3651, %2457
  %3676 = fmul fast float %3675, %3662
  %3677 = fmul fast float %3652, %2457
  %3678 = fmul fast float %3677, %3668
  %3679 = fmul fast float %3653, %2457
  %3680 = fmul fast float %3679, %3674
  %3681 = call float @dx.op.binary.f32(i32 36, float %2404, float %3655)  ; FMin(a,b)
  %3682 = fmul fast float %3681, %3657
  %3683 = fsub fast float 1.000000e+00, %3682
  %3684 = bitcast float %3683 to i32
  %3685 = sub nsw i32 2129859010, %3684
  %3686 = bitcast i32 %3685 to float
  %3687 = call float @dx.op.binary.f32(i32 36, float %2405, float %3655)  ; FMin(a,b)
  %3688 = fmul fast float %3687, %3657
  %3689 = fsub fast float 1.000000e+00, %3688
  %3690 = bitcast float %3689 to i32
  %3691 = sub nsw i32 2129859010, %3690
  %3692 = bitcast i32 %3691 to float
  %3693 = call float @dx.op.binary.f32(i32 36, float %2446, float %3655)  ; FMin(a,b)
  %3694 = fmul fast float %3693, %3657
  %3695 = fsub fast float 1.000000e+00, %3694
  %3696 = bitcast float %3695 to i32
  %3697 = sub nsw i32 2129859010, %3696
  %3698 = bitcast i32 %3697 to float
  %3699 = fmul fast float %3648, %2457
  %3700 = fmul fast float %3699, %3686
  %3701 = fmul fast float %3649, %2457
  %3702 = fmul fast float %3701, %3692
  %3703 = fmul fast float %3650, %2457
  %3704 = fmul fast float %3703, %3698
  %3705 = call float @dx.op.dot3.f32(i32 55, float %3676, float %3678, float %3680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3706 = select i1 %230, float 0.000000e+00, float %3676
  %3707 = select i1 %230, float %3705, float %3678
  %3708 = select i1 %230, float 0.000000e+00, float %3680
  %3709 = call float @dx.op.dot3.f32(i32 55, float %3700, float %3702, float %3704, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3710 = select i1 %230, float 0.000000e+00, float %3700
  %3711 = select i1 %230, float %3709, float %3702
  %3712 = select i1 %230, float 0.000000e+00, float %3704
  %3713 = fmul fast float %1149, %1149
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = fmul fast float %2448, 9.843750e-01
  %3716 = fmul fast float %2407, 9.843750e-01
  %3717 = fadd fast float %3715, 7.812500e-03
  %3718 = fadd fast float %3716, 7.812500e-03
  %3719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %60, float %3717, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3721 = extractvalue %dx.types.ResRet.f32 %3719, 1
  %3722 = extractvalue %dx.types.ResRet.f32 %3719, 2
  %3723 = extractvalue %dx.types.ResRet.f32 %3719, 3
  %3724 = fsub fast float 1.000000e+00, %3714
  %3725 = fsub fast float %3722, %3720
  %3726 = fsub fast float %3723, %3721
  %3727 = fmul fast float %3725, %3724
  %3728 = fmul fast float %3726, %3724
  %3729 = fadd fast float %3727, %3720
  %3730 = fadd fast float %3728, %3721
  %3731 = fmul fast float %3729, %2404
  %3732 = fmul fast float %3729, %2405
  %3733 = fmul fast float %3729, %2446
  %3734 = fadd fast float %3731, %3730
  %3735 = fadd fast float %3732, %3730
  %3736 = fadd fast float %3733, %3730
  %3737 = fcmp fast ogt float %1743, 0.000000e+00
  br i1 %3737, label %3738, label %3764

; <label>:3738                                    ; preds = %3647
  %3739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %60, float %1743, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  %3741 = extractvalue %dx.types.ResRet.f32 %3739, 1
  %3742 = extractvalue %dx.types.ResRet.f32 %3739, 2
  %3743 = fadd fast float %3740, -5.000000e-01
  %3744 = fadd fast float %3741, -5.000000e-01
  %3745 = fadd fast float %3742, -5.000000e-01
  %3746 = fsub fast float 1.000000e+00, %2404
  %3747 = fsub fast float 1.000000e+00, %2405
  %3748 = fsub fast float 1.000000e+00, %2446
  %3749 = fmul fast float %2404, 4.000000e+00
  %3750 = fmul fast float %3749, %3746
  %3751 = fmul fast float %3750, %3743
  %3752 = fmul fast float %2405, 4.000000e+00
  %3753 = fmul fast float %3752, %3747
  %3754 = fmul fast float %3753, %3744
  %3755 = fmul fast float %2446, 4.000000e+00
  %3756 = fmul fast float %3755, %3748
  %3757 = fmul fast float %3756, %3745
  %3758 = fadd fast float %3751, %3734
  %3759 = fadd fast float %3754, %3735
  %3760 = fadd fast float %3757, %3736
  %3761 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3762 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3763 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  br label %3764

; <label>:3764                                    ; preds = %3738, %3647
  %3765 = phi float [ %3761, %3738 ], [ %3734, %3647 ]
  %3766 = phi float [ %3762, %3738 ], [ %3735, %3647 ]
  %3767 = phi float [ %3763, %3738 ], [ %3736, %3647 ]
  %3768 = call float @dx.op.binary.f32(i32 35, float %3766, float %3767)  ; FMax(a,b)
  %3769 = call float @dx.op.binary.f32(i32 35, float %3765, float %3768)  ; FMax(a,b)
  %3770 = fsub fast float 1.000000e+00, %3769
  %3771 = fmul fast float %3770, %3706
  %3772 = fmul fast float %3770, %3707
  %3773 = fmul fast float %3770, %3708
  %3774 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3775 = fcmp fast ogt float %3774, 0x3E7FF19E20000000
  %3776 = fdiv fast float 1.000000e+00, %3774
  %3777 = select i1 %3775, float %3776, float 0.000000e+00
  %3778 = fmul fast float %3777, %2398
  %3779 = fmul fast float %3777, %2399
  %3780 = fmul fast float %3777, %2400
  %3781 = fadd fast float %3778, -1.000000e+00
  %3782 = fadd fast float %3779, -1.000000e+00
  %3783 = fadd fast float %3780, -1.000000e+00
  %3784 = fmul fast float %3781, 5.000000e-01
  %3785 = fmul fast float %3782, 5.000000e-01
  %3786 = fmul fast float %3783, 5.000000e-01
  %3787 = fadd fast float %3784, 1.000000e+00
  %3788 = fadd fast float %3785, 1.000000e+00
  %3789 = fadd fast float %3786, 1.000000e+00
  %3790 = call float @dx.op.binary.f32(i32 35, float %2448, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3791 = fdiv fast float %1149, %3790
  %3792 = fcmp fast olt float %1816, 1.270000e+02
  %3793 = fcmp fast olt float %1817, 1.270000e+02
  %3794 = fcmp fast olt float %1818, 1.270000e+02
  %3795 = fmul fast float %1816, 0xBFF7154760000000
  %3796 = fmul fast float %3795, %3791
  %3797 = fmul fast float %1817, 0xBFF7154760000000
  %3798 = fmul fast float %3797, %3791
  %3799 = fmul fast float %1818, 0xBFF7154760000000
  %3800 = fmul fast float %3799, %3791
  %3801 = call float @dx.op.unary.f32(i32 21, float %3796)  ; Exp(value)
  %3802 = call float @dx.op.unary.f32(i32 21, float %3798)  ; Exp(value)
  %3803 = call float @dx.op.unary.f32(i32 21, float %3800)  ; Exp(value)
  %3804 = call float @dx.op.unary.f32(i32 7, float %3801)  ; Saturate(value)
  %3805 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  %3806 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3807 = select i1 %3792, float %3804, float 0.000000e+00
  %3808 = select i1 %3793, float %3805, float 0.000000e+00
  %3809 = select i1 %3794, float %3806, float 0.000000e+00
  %3810 = fmul fast float %3807, %3770
  %3811 = fmul fast float %3808, %3770
  %3812 = fmul fast float %3809, %3770
  %3813 = fadd fast float %3810, -1.000000e+00
  %3814 = fadd fast float %3811, -1.000000e+00
  %3815 = fadd fast float %3812, -1.000000e+00
  %3816 = fmul fast float %3813, %1766
  %3817 = fmul fast float %3814, %1766
  %3818 = fmul fast float %3815, %1766
  %3819 = fadd fast float %3816, 1.000000e+00
  %3820 = fadd fast float %3817, 1.000000e+00
  %3821 = fadd fast float %3818, 1.000000e+00
  %3822 = fmul fast float %2405, 0x401CF23780000000
  %3823 = fadd fast float %3822, 0x3FF32641C0000000
  %3824 = fdiv fast float 1.000000e+00, %3823
  %3825 = call float @dx.op.dot3.f32(i32 55, float %2394, float %2393, float %2392, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %3826 = fmul fast float %3824, %3824
  %3827 = fmul fast float %3825, %3825
  %3828 = fsub fast float 1.000000e+00, %3827
  %3829 = fmul fast float %3826, %3828
  %3830 = fsub fast float 1.000000e+00, %3829
  %3831 = fcmp fast oge float %3830, 0.000000e+00
  %3832 = fmul fast float %3824, %2394
  %3833 = fmul fast float %3824, %2393
  %3834 = fmul fast float %3824, %2392
  %3835 = call float @dx.op.unary.f32(i32 24, float %3830)  ; Sqrt(value)
  %3836 = fmul fast float %3825, %3824
  %3837 = fadd fast float %3836, %3835
  %3838 = fmul fast float %3837, %2401
  %3839 = fmul fast float %3837, %2402
  %3840 = fmul fast float %3837, %2403
  %3841 = fsub fast float %3832, %3838
  %3842 = fsub fast float %3833, %3839
  %3843 = fsub fast float %3834, %3840
  %3844 = select i1 %3831, float %3841, float 0.000000e+00
  %3845 = select i1 %3831, float %3842, float 0.000000e+00
  %3846 = select i1 %3831, float %3843, float 0.000000e+00
  %3847 = fmul fast float %3844, %1149
  %3848 = fmul fast float %3845, %1149
  %3849 = fmul fast float %3846, %1149
  %3850 = fadd fast float %3847, %2443
  %3851 = fadd fast float %3848, %2444
  %3852 = fadd fast float %3849, %2445
  %3853 = call float @dx.op.dot3.f32(i32 55, float %1834, float %1835, float %1836, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3854 = fsub fast float 1.000000e+00, %2407
  %3855 = fmul fast float %3854, %1766
  %3856 = fsub fast float 1.000000e+00, %3855
  %3857 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3858 = fsub fast float 1.000000e+00, %3857
  %3859 = fmul fast float %2405, 0x4012D0A400000000
  %3860 = fadd fast float %3859, 0x3FDB6377A0000000
  %3861 = fmul fast float %3858, %3860
  %3862 = fadd fast float %3861, %3853
  %3863 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3864 = fmul fast float %3765, %3710
  %3865 = fmul fast float %3766, %3711
  %3866 = fmul fast float %3767, %3712
  %3867 = fsub fast float 1.000000e+00, %2448
  %3868 = bitcast float %3867 to i32
  %3869 = sitofp i32 %3868 to float
  %3870 = fmul fast float %3869, 5.000000e+00
  %3871 = fadd fast float %3870, 0xC1EFBF8940000000
  %3872 = fptosi float %3871 to i32
  %3873 = bitcast i32 %3872 to float
  %3874 = fmul fast float %3873, %1742
  %3875 = fmul fast float %3706, %3874
  %3876 = fmul fast float %3875, %3770
  %3877 = fmul fast float %3876, %3787
  %3878 = fmul fast float %3707, %3874
  %3879 = fmul fast float %3878, %3770
  %3880 = fmul fast float %3879, %3788
  %3881 = fmul fast float %3708, %3874
  %3882 = fmul fast float %3881, %3770
  %3883 = fmul fast float %3882, %3789
  %3884 = fmul fast float %3771, %1766
  %3885 = fmul fast float %3772, %1766
  %3886 = fmul fast float %3773, %1766
  %3887 = fsub fast float 1.000000e+00, %3863
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.CBufRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.CBufRet.f32 %3888, 2
  %3892 = extractvalue %dx.types.CBufRet.f32 %3888, 3
  %3893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.f32 %3893, 0
  %3895 = extractvalue %dx.types.CBufRet.f32 %3893, 1
  %3896 = extractvalue %dx.types.CBufRet.f32 %3893, 2
  %3897 = extractvalue %dx.types.CBufRet.f32 %3893, 3
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 0
  %3900 = extractvalue %dx.types.CBufRet.f32 %3898, 1
  %3901 = extractvalue %dx.types.CBufRet.f32 %3898, 2
  %3902 = extractvalue %dx.types.CBufRet.f32 %3898, 3
  %3903 = fmul fast float %3850, %3889
  %3904 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3890, float %3903)  ; FMad(a,b,c)
  %3905 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3891, float %3904)  ; FMad(a,b,c)
  %3906 = fadd fast float %3905, %3892
  %3907 = fmul fast float %3850, %3894
  %3908 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3895, float %3907)  ; FMad(a,b,c)
  %3909 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3896, float %3908)  ; FMad(a,b,c)
  %3910 = fadd fast float %3909, %3897
  %3911 = fmul fast float %3850, %3899
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3900, float %3911)  ; FMad(a,b,c)
  %3913 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3901, float %3912)  ; FMad(a,b,c)
  %3914 = fadd fast float %3913, %3902
  %3915 = fdiv fast float %3906, %3914
  %3916 = fdiv fast float %3910, %3914
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3920 = fmul fast float %3918, %3915
  %3921 = fmul fast float %3919, %3916
  %3922 = extractvalue %dx.types.CBufRet.f32 %3917, 2
  %3923 = extractvalue %dx.types.CBufRet.f32 %3917, 3
  %3924 = fadd fast float %3920, %3922
  %3925 = fadd fast float %3921, %3923
  %3926 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3927 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.CBufRet.f32 %3928, 1
  %3931 = fmul fast float %3929, %3926
  %3932 = fmul fast float %3930, %3927
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 1
  %3935 = extractvalue %dx.types.CBufRet.f32 %3933, 2
  %3936 = fsub fast float %3934, %3935
  %3937 = fmul fast float %3936, %3887
  %3938 = fadd fast float %3937, %3935
  %3939 = fmul fast float %243, 2.000000e+00
  %3940 = fmul fast float %244, 2.000000e+00
  %3941 = fadd fast float %3939, -1.000000e+00
  %3942 = fadd fast float %3940, -1.000000e+00
  %3943 = fmul fast float %3938, %3941
  %3944 = fmul fast float %3938, %3942
  %3945 = fadd fast float %3943, %3931
  %3946 = fadd fast float %3944, %3932
  %3947 = extractvalue %dx.types.CBufRet.f32 %3928, 2
  %3948 = extractvalue %dx.types.CBufRet.f32 %3928, 3
  %3949 = fmul fast float %3945, %3947
  %3950 = fmul fast float %3946, %3948
  %3951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %61, float %3949, float %3950, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3952 = extractvalue %dx.types.ResRet.f32 %3951, 0
  %3953 = fcmp fast ogt float %3952, -1.000000e+00
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 1
  %3956 = select i1 %3953, float %3955, float 1.000000e+00
  %3957 = fadd fast float %3952, 1.000000e+00
  %3958 = fmul fast float %3956, %3957
  %3959 = call float @dx.op.unary.f32(i32 6, float %3958)  ; FAbs(value)
  %3960 = fsub fast float %3959, %3914
  %3961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3961, 2
  %3963 = fmul fast float %3962, %3959
  %3964 = fdiv fast float 1.600000e+02, %3963
  %3965 = fmul fast float %3863, %3863
  %3966 = fmul fast float %3965, 0xBFB5B17960000000
  %3967 = fmul fast float %3966, %3960
  %3968 = fmul fast float %3967, %3964
  %3969 = call float @dx.op.unary.f32(i32 21, float %3968)  ; Exp(value)
  %3970 = fmul fast float %3969, 0x3FF04B2960000000
  %3971 = fsub fast float 0x3FF04B2960000000, %3970
  %3972 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  %3973 = fmul fast float %3972, 4.000000e+00
  %3974 = fadd fast float %243, -5.000000e-01
  %3975 = fadd fast float %244, -5.000000e-01
  %3976 = fmul fast float %3972, 0x3FBEB851E0000000
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fmul fast float %3977, %3974
  %3979 = fmul fast float %3977, %3975
  %3980 = fadd fast float %3978, %3924
  %3981 = fadd fast float %3979, %3925
  %3982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.i32 %3982, 0
  %3984 = icmp eq i32 %3983, 0
  br i1 %3984, label %3990, label %3985, !dx.controlflow.hints !107

; <label>:3985                                    ; preds = %3764
  %3986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %3980, float %3981, float undef, float undef, i32 0, i32 0, i32 undef, float %3973)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3987 = extractvalue %dx.types.ResRet.f32 %3986, 0
  %3988 = extractvalue %dx.types.ResRet.f32 %3986, 1
  %3989 = extractvalue %dx.types.ResRet.f32 %3986, 2
  br label %3995

; <label>:3990                                    ; preds = %3764
  %3991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %58, float %3980, float %3981, float undef, float undef, i32 0, i32 0, i32 undef, float %3973)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3992 = extractvalue %dx.types.ResRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.ResRet.f32 %3991, 1
  %3994 = extractvalue %dx.types.ResRet.f32 %3991, 2
  br label %3995

; <label>:3995                                    ; preds = %3990, %3985
  %3996 = phi float [ %3987, %3985 ], [ %3992, %3990 ]
  %3997 = phi float [ %3988, %3985 ], [ %3993, %3990 ]
  %3998 = phi float [ %3989, %3985 ], [ %3994, %3990 ]
  %3999 = select i1 %230, float 0.000000e+00, float %3997
  %4000 = select i1 %230, float 0.000000e+00, float %3998
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4003 = fmul fast float %3996, %3819
  %4004 = fmul fast float %4003, %4002
  %4005 = fmul fast float %3999, %3820
  %4006 = fmul fast float %4005, %4002
  %4007 = fmul fast float %4000, %3821
  %4008 = fmul fast float %4007, %4002
  %4009 = fadd fast float %3864, %1747
  %4010 = fadd fast float %4009, %3877
  %4011 = fadd fast float %4010, %4004
  %4012 = fmul fast float %4011, %1766
  %4013 = fadd fast float %3865, %1748
  %4014 = fadd fast float %4013, %3880
  %4015 = fadd fast float %4014, %4006
  %4016 = fmul fast float %4015, %1766
  %4017 = fadd fast float %3866, %1749
  %4018 = fadd fast float %4017, %3883
  %4019 = fadd fast float %4018, %4008
  %4020 = fmul fast float %4019, %1766
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 3
  %4023 = fcmp fast oeq float %4022, 0.000000e+00
  br i1 %4023, label %5222, label %4024

; <label>:4024                                    ; preds = %3995
  %4025 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4026 = extractvalue %dx.types.CBufRet.f32 %4021, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4030 = extractvalue %dx.types.CBufRet.f32 %4028, 1
  %4031 = extractvalue %dx.types.CBufRet.f32 %4028, 2
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.CBufRet.f32 %4032, 1
  %4035 = call float @dx.op.dot3.f32(i32 55, float %4029, float %4030, float %4031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4036 = select i1 %230, float %4033, float %4029
  %4037 = select i1 %230, float %4035, float %4030
  %4038 = select i1 %230, float %4034, float %4031
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 2
  %4041 = fmul fast float %4040, %72
  %4042 = fmul fast float %4040, %73
  %4043 = fmul fast float %4040, %74
  %4044 = fadd fast float %4041, %139
  %4045 = fadd fast float %4042, %140
  %4046 = fadd fast float %4043, %141
  %4047 = fcmp fast olt float %4022, 0.000000e+00
  br i1 %4047, label %4669, label %4048

; <label>:4048                                    ; preds = %4024
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 0
  %4051 = extractvalue %dx.types.CBufRet.f32 %4049, 1
  %4052 = extractvalue %dx.types.CBufRet.f32 %4049, 2
  %4053 = extractvalue %dx.types.CBufRet.f32 %4049, 3
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.CBufRet.f32 %4054, 1
  %4057 = extractvalue %dx.types.CBufRet.f32 %4054, 2
  %4058 = extractvalue %dx.types.CBufRet.f32 %4054, 3
  %4059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4059, 0
  %4061 = extractvalue %dx.types.CBufRet.f32 %4059, 1
  %4062 = extractvalue %dx.types.CBufRet.f32 %4059, 2
  %4063 = extractvalue %dx.types.CBufRet.f32 %4059, 3
  %4064 = fmul fast float %4050, %4044
  %4065 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4051, float %4064)  ; FMad(a,b,c)
  %4066 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4052, float %4065)  ; FMad(a,b,c)
  %4067 = fadd fast float %4066, %4053
  %4068 = fmul fast float %4055, %4044
  %4069 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4056, float %4068)  ; FMad(a,b,c)
  %4070 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4057, float %4069)  ; FMad(a,b,c)
  %4071 = fadd fast float %4070, %4058
  %4072 = fmul fast float %4060, %4044
  %4073 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4061, float %4072)  ; FMad(a,b,c)
  %4074 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4062, float %4073)  ; FMad(a,b,c)
  %4075 = fadd fast float %4074, %4063
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4079 = extractvalue %dx.types.CBufRet.f32 %4076, 3
  %4080 = fmul fast float %4079, %4067
  %4081 = fmul fast float %4079, %4071
  %4082 = fadd fast float %4080, %4077
  %4083 = fadd fast float %4081, %4078
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.CBufRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.CBufRet.f32 %4084, 3
  %4088 = fmul fast float %4087, %4067
  %4089 = fmul fast float %4087, %4071
  %4090 = fadd fast float %4088, %4085
  %4091 = fadd fast float %4089, %4086
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4094 = fsub fast float %4093, %4075
  %4095 = extractvalue %dx.types.CBufRet.f32 %4092, 2
  %4096 = fmul fast float %4094, %4095
  %4097 = fsub fast float 1.000000e+00, %4096
  %4098 = call float @dx.op.unary.f32(i32 7, float %4097)  ; Saturate(value)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4084, 2
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4102 = fadd fast float %4101, %4099
  %4103 = fcmp fast ogt float %4102, 0.000000e+00
  br i1 %4103, label %4104, label %4128

; <label>:4104                                    ; preds = %4048
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.CBufRet.f32 %4105, 1
  %4108 = fsub fast float %4090, %4106
  %4109 = fsub fast float %4091, %4107
  %4110 = fcmp fast olt float %4108, 0.000000e+00
  %4111 = fcmp fast olt float %4109, 0.000000e+00
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.CBufRet.f32 %4112, 1
  %4115 = extractvalue %dx.types.CBufRet.f32 %4112, 2
  %4116 = extractvalue %dx.types.CBufRet.f32 %4112, 3
  %4117 = select i1 %4110, float %4113, float %4115
  %4118 = select i1 %4111, float %4114, float %4116
  %4119 = fmul fast float %4117, %4108
  %4120 = fmul fast float %4118, %4109
  %4121 = call float @dx.op.unary.f32(i32 6, float %4119)  ; FAbs(value)
  %4122 = call float @dx.op.unary.f32(i32 6, float %4120)  ; FAbs(value)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4124 = call float @dx.op.binary.f32(i32 35, float %4121, float %4122)  ; FMax(a,b)
  %4125 = fsub fast float %4123, %4124
  %4126 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  %4127 = fmul fast float %4126, %4098
  br label %4128

; <label>:4128                                    ; preds = %4104, %4048
  %4129 = phi float [ %4127, %4104 ], [ 0.000000e+00, %4048 ]
  %4130 = extractvalue %dx.types.CBufRet.f32 %4076, 2
  %4131 = extractvalue %dx.types.CBufRet.f32 %4100, 1
  %4132 = fadd fast float %4131, %4130
  %4133 = fcmp fast ogt float %4132, 0.000000e+00
  %4134 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  br i1 %4133, label %4135, label %4158

; <label>:4135                                    ; preds = %4128
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4139 = fsub fast float %4082, %4137
  %4140 = fsub fast float %4083, %4138
  %4141 = fcmp fast olt float %4139, 0.000000e+00
  %4142 = fcmp fast olt float %4140, 0.000000e+00
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.CBufRet.f32 %4143, 2
  %4147 = extractvalue %dx.types.CBufRet.f32 %4143, 3
  %4148 = select i1 %4141, float %4144, float %4146
  %4149 = select i1 %4142, float %4145, float %4147
  %4150 = fmul fast float %4148, %4139
  %4151 = fmul fast float %4149, %4140
  %4152 = call float @dx.op.unary.f32(i32 6, float %4150)  ; FAbs(value)
  %4153 = call float @dx.op.unary.f32(i32 6, float %4151)  ; FAbs(value)
  %4154 = call float @dx.op.binary.f32(i32 35, float %4152, float %4153)  ; FMax(a,b)
  %4155 = fsub fast float %4134, %4154
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = fmul fast float %4156, %4098
  br label %4158

; <label>:4158                                    ; preds = %4135, %4128
  %4159 = phi float [ %4157, %4135 ], [ 0.000000e+00, %4128 ]
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 1
  %4162 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4166 = fsub fast float %4067, %4164
  %4167 = fsub fast float %4071, %4165
  %4168 = fcmp fast olt float %4166, 0.000000e+00
  %4169 = fcmp fast olt float %4167, 0.000000e+00
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4181 = call float @dx.op.binary.f32(i32 35, float %4179, float %4180)  ; FMax(a,b)
  %4182 = fsub fast float %4134, %4181
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4184 = call float @dx.op.binary.f32(i32 36, float %4183, float %4162)  ; FMin(a,b)
  %4185 = fmul fast float %4184, %4098
  %4186 = fsub fast float %4159, %4185
  %4187 = fsub fast float %4129, %4159
  %4188 = fsub fast float %4187, %4185
  %4189 = call float @dx.op.binary.f32(i32 35, float %4159, float %4129)  ; FMax(a,b)
  %4190 = call float @dx.op.binary.f32(i32 35, float %4185, float %4189)  ; FMax(a,b)
  %4191 = fcmp fast olt float %4190, 1.000000e+00
  br i1 %4191, label %4192, label %4590, !dx.controlflow.hints !108

; <label>:4192                                    ; preds = %4158
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = fcmp fast une float %4194, 0.000000e+00
  br i1 %4195, label %4196, label %4590, !dx.controlflow.hints !109

; <label>:4196                                    ; preds = %4192
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.CBufRet.f32 %4197, 1
  %4200 = extractvalue %dx.types.CBufRet.f32 %4197, 2
  %4201 = extractvalue %dx.types.CBufRet.f32 %4197, 3
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.CBufRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.CBufRet.f32 %4202, 2
  %4206 = extractvalue %dx.types.CBufRet.f32 %4202, 3
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.CBufRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.CBufRet.f32 %4207, 2
  %4211 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4212 = fmul fast float %4198, %4044
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4199, float %4212)  ; FMad(a,b,c)
  %4214 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4200, float %4213)  ; FMad(a,b,c)
  %4215 = fadd fast float %4214, %4201
  %4216 = fmul fast float %4203, %4044
  %4217 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4204, float %4216)  ; FMad(a,b,c)
  %4218 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4205, float %4217)  ; FMad(a,b,c)
  %4219 = fadd fast float %4218, %4206
  %4220 = fmul fast float %4208, %4044
  %4221 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4209, float %4220)  ; FMad(a,b,c)
  %4222 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4210, float %4221)  ; FMad(a,b,c)
  %4223 = fadd fast float %4222, %4211
  %4224 = fcmp fast oge float %4215, 1.000000e+00
  %4225 = fcmp fast oge float %4219, 1.000000e+00
  %4226 = or i1 %4224, %4225
  %4227 = fcmp fast olt float %4215, 0.000000e+00
  %4228 = fcmp fast olt float %4219, 0.000000e+00
  %4229 = or i1 %4227, %4228
  %4230 = or i1 %4226, %4229
  br i1 %4230, label %4590, label %4231, !dx.controlflow.hints !110

; <label>:4231                                    ; preds = %4196
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 0
  %4234 = extractvalue %dx.types.CBufRet.f32 %4232, 1
  %4235 = extractvalue %dx.types.CBufRet.f32 %4232, 2
  %4236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.i32 %4236, 2
  %4238 = uitofp i32 %4237 to float
  %4239 = extractvalue %dx.types.CBufRet.i32 %4236, 3
  %4240 = uitofp i32 %4239 to float
  %4241 = extractvalue %dx.types.CBufRet.f32 %4232, 3
  %4242 = fmul fast float %4241, 2.000000e+00
  %4243 = fsub fast float %4215, %4233
  %4244 = fsub fast float %4219, %4234
  %4245 = fmul fast float %4242, %4243
  %4246 = fmul fast float %4242, %4244
  %4247 = fdiv fast float 1.000000e+00, %4027
  %4248 = fmul fast float %4246, %4247
  %4249 = call float @dx.op.unary.f32(i32 6, float %4248)  ; FAbs(value)
  %4250 = fmul fast float %4235, %4046
  %4251 = fmul fast float %4250, %4242
  %4252 = call float @dx.op.unary.f32(i32 6, float %4251)  ; FAbs(value)
  %4253 = call float @dx.op.unary.f32(i32 6, float %4245)  ; FAbs(value)
  %4254 = call float @dx.op.binary.f32(i32 35, float %4252, float %4249)  ; FMax(a,b)
  %4255 = call float @dx.op.binary.f32(i32 35, float %4253, float %4254)  ; FMax(a,b)
  %4256 = fmul fast float %4255, 2.000000e+00
  %4257 = call float @dx.op.unary.f32(i32 23, float %4256)  ; Log(value)
  %4258 = call float @dx.op.binary.f32(i32 35, float %4257, float %4238)  ; FMax(a,b)
  %4259 = call float @dx.op.unary.f32(i32 22, float %4258)  ; Frc(value)
  %4260 = fadd fast float %4259, 0xBFEA666660000000
  %4261 = fmul fast float %4260, 8.000000e+00
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = call float @dx.op.unary.f32(i32 27, float %4258)  ; Round_ni(value)
  %4264 = fadd fast float %4263, %4262
  %4265 = call float @dx.op.binary.f32(i32 36, float %4264, float %4240)  ; FMin(a,b)
  %4266 = call float @dx.op.unary.f32(i32 27, float %4265)  ; Round_ni(value)
  %4267 = fsub fast float -0.000000e+00, %4266
  %4268 = call float @dx.op.unary.f32(i32 21, float %4267)  ; Exp(value)
  %4269 = fmul fast float %4268, %4242
  %4270 = fmul fast float %4269, %4215
  %4271 = fmul fast float %4269, %4219
  %4272 = fmul fast float %4270, 2.500000e-01
  %4273 = fmul fast float %4271, 2.500000e-01
  %4274 = fadd fast float %4272, 5.000000e-01
  %4275 = fadd fast float %4273, 5.000000e-01
  %4276 = fsub fast float %4240, %4238
  %4277 = fptoui float %4276 to i32
  %4278 = add i32 %4277, 320
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 %4278)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 0
  %4281 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4282 = fcmp fast une float %4265, %4240
  %4283 = fsub fast float %4215, %4280
  %4284 = fsub fast float %4219, %4281
  %4285 = call float @dx.op.unary.f32(i32 6, float %4283)  ; FAbs(value)
  %4286 = call float @dx.op.unary.f32(i32 6, float %4284)  ; FAbs(value)
  %4287 = fmul fast float %4285, %4269
  %4288 = fmul fast float %4286, %4269
  %4289 = fcmp fast olt float %4287, 1.000000e+00
  %4290 = fcmp fast olt float %4288, 1.000000e+00
  %4291 = and i1 %4289, %4290
  %4292 = or i1 %4282, %4291
  br i1 %4292, label %4293, label %4590, !dx.controlflow.hints !111

; <label>:4293                                    ; preds = %4231
  %4294 = fmul fast float %4271, 5.000000e-01
  %4295 = fmul fast float %4270, 5.000000e-01
  %4296 = fadd fast float %4294, 5.000000e-01
  %4297 = fadd fast float %4295, 5.000000e-01
  %4298 = sitofp i32 %4237 to float
  %4299 = fsub fast float %4265, %4298
  %4300 = call float @dx.op.unary.f32(i32 27, float %4299)  ; Round_ni(value)
  %4301 = call float @dx.op.unary.f32(i32 22, float %4265)  ; Frc(value)
  %4302 = call float @dx.op.unary.f32(i32 22, float %4297)  ; Frc(value)
  %4303 = call float @dx.op.unary.f32(i32 22, float %4296)  ; Frc(value)
  %4304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %59, float %4302, float %4303, float %4300, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.ResRet.f32 %4304, 1
  %4307 = extractvalue %dx.types.ResRet.f32 %4304, 2
  %4308 = extractvalue %dx.types.ResRet.f32 %4304, 3
  %4309 = fcmp fast ogt float %4301, 0.000000e+00
  br i1 %4309, label %4310, label %4331, !dx.controlflow.hints !112

; <label>:4310                                    ; preds = %4293
  %4311 = fadd fast float %4300, 1.000000e+00
  %4312 = call float @dx.op.unary.f32(i32 22, float %4274)  ; Frc(value)
  %4313 = call float @dx.op.unary.f32(i32 22, float %4275)  ; Frc(value)
  %4314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %59, float %4312, float %4313, float %4311, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4315 = extractvalue %dx.types.ResRet.f32 %4314, 0
  %4316 = extractvalue %dx.types.ResRet.f32 %4314, 1
  %4317 = extractvalue %dx.types.ResRet.f32 %4314, 2
  %4318 = extractvalue %dx.types.ResRet.f32 %4314, 3
  %4319 = fsub fast float %4315, %4305
  %4320 = fsub fast float %4316, %4306
  %4321 = fsub fast float %4317, %4307
  %4322 = fsub fast float %4318, %4308
  %4323 = fmul fast float %4319, %4301
  %4324 = fmul fast float %4320, %4301
  %4325 = fmul fast float %4321, %4301
  %4326 = fmul fast float %4322, %4301
  %4327 = fadd fast float %4323, %4305
  %4328 = fadd fast float %4324, %4306
  %4329 = fadd fast float %4325, %4307
  %4330 = fadd fast float %4326, %4308
  br label %4331

; <label>:4331                                    ; preds = %4310, %4293
  %4332 = phi float [ %4327, %4310 ], [ %4305, %4293 ]
  %4333 = phi float [ %4328, %4310 ], [ %4306, %4293 ]
  %4334 = phi float [ %4329, %4310 ], [ %4307, %4293 ]
  %4335 = phi float [ %4330, %4310 ], [ %4308, %4293 ]
  %4336 = fadd fast float %4332, -5.000000e-01
  %4337 = fadd fast float %4334, -5.000000e-01
  %4338 = fmul fast float %4336, 0xBFD5555560000000
  %4339 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4337, float %4338)  ; FMad(a,b,c)
  %4340 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4333, float 0.000000e+00)  ; FMad(a,b,c)
  %4341 = fadd fast float %4340, %4335
  %4342 = fmul fast float %4336, -7.500000e-01
  %4343 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4337, float %4342)  ; FMad(a,b,c)
  %4344 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4333, float 0.000000e+00)  ; FMad(a,b,c)
  %4345 = fadd fast float %4344, %4335
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 0
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 0
  %4350 = extractvalue %dx.types.CBufRet.f32 %4348, 1
  %4351 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4352 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4353 = fsub fast float %4349, %4339
  %4354 = fsub fast float %4350, %4341
  %4355 = fsub fast float %4351, %4343
  %4356 = fsub fast float %4352, %4345
  %4357 = fmul fast float %4353, %4347
  %4358 = fmul fast float %4354, %4347
  %4359 = fmul fast float %4355, %4347
  %4360 = fmul fast float %4356, %4347
  %4361 = fadd fast float %4357, %4339
  %4362 = fadd fast float %4358, %4341
  %4363 = fadd fast float %4359, %4343
  %4364 = fadd fast float %4360, %4345
  %4365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.i32 %4365, 0
  %4367 = and i32 %4366, 536870911
  %4368 = uitofp i32 %4367 to float
  %4369 = fmul fast float %4368, %4215
  %4370 = fmul fast float %4368, %4219
  %4371 = fptoui float %4369 to i32
  %4372 = fptoui float %4370 to i32
  %4373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4374 = extractvalue %dx.types.ResRet.i32 %4373, 0
  %4375 = and i32 %4374, 31
  %4376 = lshr i32 %4371, %4375
  %4377 = lshr i32 %4372, %4375
  %4378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4379 = extractvalue %dx.types.ResRet.i32 %4378, 0
  %4380 = and i32 %4379, 31
  %4381 = shl i32 1, %4380
  %4382 = call i32 @dx.op.binary.i32(i32 40, i32 %4381, i32 4)  ; UMin(a,b)
  %4383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.i32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.i32 %4383, 1
  %4386 = icmp eq i32 %4382, 0
  br i1 %4386, label %4428, label %4387

; <label>:4387                                    ; preds = %4331
  br label %4388

; <label>:4388                                    ; preds = %4416, %4387
  %4389 = phi i32 [ %4419, %4416 ], [ 0, %4387 ]
  %4390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.i32 %4390, 0
  %4392 = lshr i32 %4391, 16
  %4393 = and i32 %4392, 31
  %4394 = shl i32 %4377, %4393
  %4395 = add i32 %4394, %4376
  %4396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.i32 %4396, 0
  %4398 = and i32 %4397, 31
  %4399 = shl i32 %4395, %4398
  %4400 = add i32 %4399, %4389
  %4401 = shl i32 %4400, 2
  %4402 = add i32 %4401, 32
  %4403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4404 = extractvalue %dx.types.ResRet.i32 %4403, 0
  %4405 = icmp slt i32 %4404, 0
  %4406 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4389
  %4407 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %4389
  %4408 = bitcast float* %4406 to i32*
  %4409 = bitcast float* %4407 to i32*
  br i1 %4405, label %4410, label %4416

; <label>:4410                                    ; preds = %4388
  %4411 = and i32 %4404, 1073741823
  %4412 = add nuw nsw i32 %4411, 20
  %4413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.i32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.i32 %4413, 1
  br label %4416

; <label>:4416                                    ; preds = %4410, %4388
  %4417 = phi i32 [ %4414, %4410 ], [ %4384, %4388 ]
  %4418 = phi i32 [ %4415, %4410 ], [ %4385, %4388 ]
  store i32 %4417, i32* %4408, align 4
  store i32 %4418, i32* %4409, align 4
  %4419 = add nuw i32 %4389, 1
  %4420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4421 = extractvalue %dx.types.CBufRet.i32 %4420, 2
  %4422 = icmp eq i32 %4421, 0
  %4423 = icmp ugt i32 %4404, -1073741825
  %4424 = and i1 %4423, %4422
  %4425 = icmp ult i32 %4419, %4382
  %4426 = and i1 %4424, %4425
  br i1 %4426, label %4388, label %4427

; <label>:4427                                    ; preds = %4416
  br label %4428

; <label>:4428                                    ; preds = %4427, %4331
  %4429 = phi i32 [ 0, %4331 ], [ %4419, %4427 ]
  %4430 = extractvalue %dx.types.CBufRet.f32 %4193, 2
  %4431 = fptoui float %4430 to i32
  %4432 = icmp eq i32 %4431, 0
  br i1 %4432, label %4484, label %4433

; <label>:4433                                    ; preds = %4428
  br label %4434

; <label>:4434                                    ; preds = %4479, %4433
  %4435 = phi i32 [ %4480, %4479 ], [ %4429, %4433 ]
  %4436 = phi i32 [ %4481, %4479 ], [ 0, %4433 ]
  %4437 = lshr i32 %4436, 2
  %4438 = and i32 %4436, 3
  %4439 = add nuw nsw i32 %4437, 83
  %4440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 %4439)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.i32 %4440, 0
  %4442 = extractvalue %dx.types.CBufRet.i32 %4440, 1
  %4443 = extractvalue %dx.types.CBufRet.i32 %4440, 2
  %4444 = extractvalue %dx.types.CBufRet.i32 %4440, 3
  %4445 = getelementptr inbounds [4 x i32], [4 x i32]* %65, i32 0, i32 0
  store i32 %4441, i32* %4445, align 4
  %4446 = getelementptr inbounds [4 x i32], [4 x i32]* %65, i32 0, i32 1
  store i32 %4442, i32* %4446, align 4
  %4447 = getelementptr inbounds [4 x i32], [4 x i32]* %65, i32 0, i32 2
  store i32 %4443, i32* %4447, align 4
  %4448 = getelementptr inbounds [4 x i32], [4 x i32]* %65, i32 0, i32 3
  store i32 %4444, i32* %4448, align 4
  %4449 = getelementptr inbounds [4 x i32], [4 x i32]* %65, i32 0, i32 %4438
  %4450 = load i32, i32* %4449, align 4, !tbaa !113, !noalias !117
  %4451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4452 = extractvalue %dx.types.ResRet.i32 %4451, 0
  %4453 = lshr i32 %4452, 16
  %4454 = and i32 %4453, 31
  %4455 = shl i32 %4377, %4454
  %4456 = add i32 %4455, %4376
  %4457 = shl i32 %4456, 2
  %4458 = add i32 %4457, %4450
  %4459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4458, i32 undef)  ; BufferLoad(srv,index,wot)
  %4460 = extractvalue %dx.types.ResRet.i32 %4459, 0
  %4461 = icmp eq i32 %4460, 0
  br i1 %4461, label %4479, label %4462

; <label>:4462                                    ; preds = %4434
  %4463 = icmp slt i32 %4460, 0
  %4464 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4435
  %4465 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %4435
  %4466 = bitcast float* %4464 to i32*
  %4467 = bitcast float* %4465 to i32*
  br i1 %4463, label %4468, label %4475

; <label>:4468                                    ; preds = %4462
  %4469 = and i32 %4460, 1073741823
  %4470 = add i32 %4450, 20
  %4471 = add i32 %4470, %4469
  %4472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4471, i32 undef)  ; BufferLoad(srv,index,wot)
  %4473 = extractvalue %dx.types.ResRet.i32 %4472, 0
  %4474 = extractvalue %dx.types.ResRet.i32 %4472, 1
  br label %4475

; <label>:4475                                    ; preds = %4468, %4462
  %4476 = phi i32 [ %4473, %4468 ], [ %4384, %4462 ]
  %4477 = phi i32 [ %4474, %4468 ], [ %4385, %4462 ]
  store i32 %4476, i32* %4466, align 4
  store i32 %4477, i32* %4467, align 4
  %4478 = add i32 %4435, 1
  br label %4479

; <label>:4479                                    ; preds = %4475, %4434
  %4480 = phi i32 [ %4435, %4434 ], [ %4478, %4475 ]
  %4481 = add nuw i32 %4436, 1
  %4482 = icmp eq i32 %4481, %4431
  br i1 %4482, label %4483, label %4434

; <label>:4483                                    ; preds = %4479
  br label %4484

; <label>:4484                                    ; preds = %4483, %4428
  %4485 = phi i32 [ %4429, %4428 ], [ %4480, %4483 ]
  %4486 = icmp eq i32 %4485, 1
  %4487 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  %4488 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 0
  br i1 %4486, label %4489, label %4492

; <label>:4489                                    ; preds = %4484
  %4490 = load float, float* %4487, align 4
  %4491 = load float, float* %4488, align 4
  br label %4519

; <label>:4492                                    ; preds = %4484
  %4493 = load float, float* %4487, align 4
  %4494 = load float, float* %4488, align 4
  %4495 = fdiv fast float 1.000000e+00, %4494
  %4496 = fsub fast float %4493, %4495
  %4497 = icmp ugt i32 %4485, 1
  br i1 %4497, label %4498, label %4514

; <label>:4498                                    ; preds = %4492
  br label %4499

; <label>:4499                                    ; preds = %4499, %4498
  %4500 = phi float [ %4509, %4499 ], [ %4496, %4498 ]
  %4501 = phi float [ %4510, %4499 ], [ %4493, %4498 ]
  %4502 = phi i32 [ %4511, %4499 ], [ 1, %4498 ]
  %4503 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4502
  %4504 = load float, float* %4503, align 4
  %4505 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %4502
  %4506 = load float, float* %4505, align 4
  %4507 = fdiv fast float 1.000000e+00, %4506
  %4508 = fsub fast float %4504, %4507
  %4509 = call float @dx.op.binary.f32(i32 36, float %4500, float %4508)  ; FMin(a,b)
  %4510 = call float @dx.op.binary.f32(i32 35, float %4501, float %4504)  ; FMax(a,b)
  %4511 = add nuw i32 %4502, 1
  %4512 = icmp eq i32 %4511, %4485
  br i1 %4512, label %4513, label %4499

; <label>:4513                                    ; preds = %4499
  br label %4514

; <label>:4514                                    ; preds = %4513, %4492
  %4515 = phi float [ %4496, %4492 ], [ %4509, %4513 ]
  %4516 = phi float [ %4493, %4492 ], [ %4510, %4513 ]
  %4517 = fsub fast float %4516, %4515
  %4518 = fdiv fast float 1.000000e+00, %4517
  br label %4519

; <label>:4519                                    ; preds = %4514, %4489
  %4520 = phi float [ %4490, %4489 ], [ %4516, %4514 ]
  %4521 = phi float [ %4491, %4489 ], [ %4518, %4514 ]
  %4522 = fadd fast float %4223, %4520
  %4523 = fmul fast float %4522, %4521
  %4524 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4525 = fmul fast float %4524, 2.000000e+00
  %4526 = fsub fast float 1.000000e+00, %4525
  %4527 = fmul fast float %4361, %4361
  %4528 = fsub fast float %4362, %4527
  %4529 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4528)  ; FMax(a,b)
  %4530 = fdiv fast float 1.000000e+00, %4529
  %4531 = fmul fast float %4362, %4361
  %4532 = fsub fast float %4363, %4531
  %4533 = fsub fast float %4526, %4361
  %4534 = fmul fast float %4526, %4526
  %4535 = fsub fast float %4534, %4362
  %4536 = fmul fast float %4530, %4532
  %4537 = fmul fast float %4536, %4533
  %4538 = fsub fast float %4535, %4537
  %4539 = fmul fast float %4362, %4362
  %4540 = fsub fast float %4364, %4539
  %4541 = fmul fast float %4532, %4532
  %4542 = fmul fast float %4541, %4530
  %4543 = fsub fast float %4540, %4542
  %4544 = fdiv fast float %4538, %4543
  %4545 = fmul fast float %4544, %4532
  %4546 = fsub fast float %4533, %4545
  %4547 = fmul fast float %4546, %4530
  %4548 = fmul fast float %4547, %4361
  %4549 = fsub fast float 1.000000e+00, %4548
  %4550 = fmul fast float %4544, %4362
  %4551 = fsub fast float %4549, %4550
  %4552 = fmul fast float %4547, %4547
  %4553 = fmul fast float %4544, 4.000000e+00
  %4554 = fmul fast float %4553, %4551
  %4555 = fsub fast float %4552, %4554
  %4556 = call float @dx.op.unary.f32(i32 24, float %4555)  ; Sqrt(value)
  %4557 = fcmp fast oge float %4547, 0.000000e+00
  %4558 = fsub fast float -0.000000e+00, %4556
  %4559 = select i1 %4557, float %4558, float %4556
  %4560 = fsub fast float %4559, %4547
  %4561 = fdiv fast float %4560, %4544
  %4562 = fdiv fast float %4551, %4560
  %4563 = fmul fast float %4561, 5.000000e-01
  %4564 = fmul fast float %4562, 2.000000e+00
  %4565 = select i1 %4557, float %4563, float %4564
  %4566 = select i1 %4557, float %4564, float %4563
  %4567 = call float @dx.op.binary.f32(i32 35, float %4565, float %4566)  ; FMax(a,b)
  %4568 = call float @dx.op.binary.f32(i32 36, float %4565, float %4566)  ; FMin(a,b)
  %4569 = fcmp fast ogt float %4526, %4567
  %4570 = fsub fast float %4526, %4568
  %4571 = fsub fast float %4526, %4567
  %4572 = fsub fast float %4567, %4568
  %4573 = select i1 %4569, float %4571, float %4572
  %4574 = fmul float %4570, %4573
  %4575 = select i1 %4569, float %4568, float %4526
  %4576 = fcmp fast ogt float %4526, %4568
  %4577 = fmul fast float %4575, %4567
  %4578 = fadd fast float %4575, %4567
  %4579 = fmul fast float %4578, %4361
  %4580 = fadd fast float %4577, %4362
  %4581 = fsub fast float %4580, %4579
  %4582 = fdiv fast float %4581, %4574
  %4583 = select i1 %4576, float %4582, float 0.000000e+00
  %4584 = fsub fast float 1.000000e+00, %4583
  %4585 = select i1 %4569, float %4584, float %4583
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4346, 3
  %4588 = fmul fast float %4587, %4586
  %4589 = fsub fast float 1.000000e+00, %4588
  br label %4590

; <label>:4590                                    ; preds = %4519, %4231, %4196, %4192, %4158
  %4591 = phi float [ 1.000000e+00, %4158 ], [ %4589, %4519 ], [ 1.000000e+00, %4196 ], [ 1.000000e+00, %4231 ], [ 1.000000e+00, %4192 ]
  %4592 = fcmp fast ogt float %4188, 0.000000e+00
  br i1 %4592, label %4593, label %4599, !dx.controlflow.hints !126

; <label>:4593                                    ; preds = %4590
  %4594 = fadd fast float %4101, %4075
  %4595 = call float @dx.op.binary.f32(i32 35, float %4594, float 0.000000e+00)  ; FMax(a,b)
  %4596 = fadd fast float %4595, 0x3F10000000000000
  %4597 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %62, float %4090, float %4091, float undef, float undef, i32 0, i32 0, i32 undef, float %4596)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  br label %4599

; <label>:4599                                    ; preds = %4593, %4590
  %4600 = phi float [ %4598, %4593 ], [ 1.000000e+00, %4590 ]
  %4601 = fcmp fast ogt float %4186, 0.000000e+00
  br i1 %4601, label %4602, label %4608, !dx.controlflow.hints !127

; <label>:4602                                    ; preds = %4599
  %4603 = fadd fast float %4131, %4075
  %4604 = call float @dx.op.binary.f32(i32 35, float %4603, float 0.000000e+00)  ; FMax(a,b)
  %4605 = fadd fast float %4604, 0x3F10000000000000
  %4606 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %62, float %4082, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4605)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  br label %4608

; <label>:4608                                    ; preds = %4602, %4599
  %4609 = phi float [ %4607, %4602 ], [ 1.000000e+00, %4599 ]
  %4610 = fcmp fast ogt float %4185, 0.000000e+00
  br i1 %4610, label %4611, label %4618, !dx.controlflow.hints !128

; <label>:4611                                    ; preds = %4608
  %4612 = extractvalue %dx.types.CBufRet.f32 %4100, 0
  %4613 = fadd fast float %4612, %4075
  %4614 = call float @dx.op.binary.f32(i32 35, float %4613, float 0.000000e+00)  ; FMax(a,b)
  %4615 = fadd fast float %4614, 0x3F10000000000000
  %4616 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %62, float %4067, float %4071, float undef, float undef, i32 0, i32 0, i32 undef, float %4615)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  br label %4618

; <label>:4618                                    ; preds = %4611, %4608
  %4619 = phi float [ %4617, %4611 ], [ 1.000000e+00, %4608 ]
  %4620 = fsub fast float %4600, %4591
  %4621 = fmul fast float %4620, %4129
  %4622 = fadd fast float %4621, %4591
  %4623 = fsub fast float %4609, %4622
  %4624 = fmul fast float %4623, %4159
  %4625 = fadd fast float %4624, %4622
  %4626 = fsub fast float %4619, %4625
  %4627 = fmul fast float %4626, %4185
  %4628 = fadd fast float %4627, %4625
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 2
  %4631 = fcmp fast ogt float %4630, 0.000000e+00
  br i1 %4631, label %4632, label %4669, !dx.controlflow.hints !129

; <label>:4632                                    ; preds = %4618
  %4633 = fcmp fast ugt float %4630, 0.000000e+00
  br i1 %4633, label %4634, label %4666

; <label>:4634                                    ; preds = %4632
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 0
  %4637 = extractvalue %dx.types.CBufRet.f32 %4635, 1
  %4638 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4639 = extractvalue %dx.types.CBufRet.f32 %4635, 3
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.CBufRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.CBufRet.f32 %4640, 2
  %4644 = extractvalue %dx.types.CBufRet.f32 %4640, 3
  %4645 = extractvalue %dx.types.CBufRet.f32 %4629, 0
  %4646 = extractvalue %dx.types.CBufRet.f32 %4629, 1
  %4647 = extractvalue %dx.types.CBufRet.f32 %2462, 2
  %4648 = fadd fast float %2463, %4044
  %4649 = fadd fast float %2464, %4045
  %4650 = fadd fast float %4647, %4046
  %4651 = fmul fast float %4648, %4636
  %4652 = call float @dx.op.tertiary.f32(i32 46, float %4637, float %4649, float %4651)  ; FMad(a,b,c)
  %4653 = call float @dx.op.tertiary.f32(i32 46, float %4638, float %4650, float %4652)  ; FMad(a,b,c)
  %4654 = fadd fast float %4653, %4639
  %4655 = fmul fast float %4648, %4641
  %4656 = call float @dx.op.tertiary.f32(i32 46, float %4642, float %4649, float %4655)  ; FMad(a,b,c)
  %4657 = call float @dx.op.tertiary.f32(i32 46, float %4643, float %4650, float %4656)  ; FMad(a,b,c)
  %4658 = fadd fast float %4657, %4644
  %4659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %57, float %4654, float %4658, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = fmul fast float %4660, %4646
  %4662 = fadd fast float %4661, %4645
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = fmul fast float %4663, %4630
  %4665 = fsub fast float 1.000000e+00, %4664
  br label %4666

; <label>:4666                                    ; preds = %4634, %4632
  %4667 = phi float [ %4665, %4634 ], [ 1.000000e+00, %4632 ]
  %4668 = fmul fast float %4667, %4628
  br label %4669

; <label>:4669                                    ; preds = %4666, %4618, %4024
  %4670 = phi float [ 1.000000e+00, %4024 ], [ %4668, %4666 ], [ %4628, %4618 ]
  %4671 = call float @dx.op.binary.f32(i32 36, float %4670, float %4670)  ; FMin(a,b)
  %4672 = call float @dx.op.binary.f32(i32 36, float %4670, float %4671)  ; FMin(a,b)
  %4673 = fcmp fast ogt float %4672, 0.000000e+00
  br i1 %4673, label %4674, label %4831, !dx.controlflow.hints !130

; <label>:4674                                    ; preds = %4669
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 0
  %4677 = extractvalue %dx.types.CBufRet.f32 %4675, 1
  %4678 = extractvalue %dx.types.CBufRet.f32 %4675, 2
  %4679 = extractvalue %dx.types.CBufRet.f32 %4675, 3
  %4680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.f32 %4680, 0
  %4682 = extractvalue %dx.types.CBufRet.f32 %4680, 1
  %4683 = extractvalue %dx.types.CBufRet.f32 %4680, 2
  %4684 = extractvalue %dx.types.CBufRet.f32 %4680, 3
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 0
  %4687 = extractvalue %dx.types.CBufRet.f32 %4685, 1
  %4688 = extractvalue %dx.types.CBufRet.f32 %4685, 2
  %4689 = extractvalue %dx.types.CBufRet.f32 %4685, 3
  %4690 = fmul fast float %4676, %4044
  %4691 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4677, float %4690)  ; FMad(a,b,c)
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4678, float %4691)  ; FMad(a,b,c)
  %4693 = fadd fast float %4692, %4679
  %4694 = fmul fast float %4681, %4044
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4682, float %4694)  ; FMad(a,b,c)
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4683, float %4695)  ; FMad(a,b,c)
  %4697 = fadd fast float %4696, %4684
  %4698 = fmul fast float %4686, %4044
  %4699 = call float @dx.op.tertiary.f32(i32 46, float %4045, float %4687, float %4698)  ; FMad(a,b,c)
  %4700 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4688, float %4699)  ; FMad(a,b,c)
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.CBufRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4705 = fmul fast float %4704, %4693
  %4706 = fmul fast float %4704, %4697
  %4707 = fadd fast float %4705, %4702
  %4708 = fadd fast float %4706, %4703
  %4709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.CBufRet.f32 %4709, 1
  %4712 = fsub fast float %4707, %4710
  %4713 = fsub fast float %4708, %4711
  %4714 = fcmp fast olt float %4712, 0.000000e+00
  %4715 = fcmp fast olt float %4713, 0.000000e+00
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 0
  %4718 = extractvalue %dx.types.CBufRet.f32 %4716, 1
  %4719 = extractvalue %dx.types.CBufRet.f32 %4716, 2
  %4720 = extractvalue %dx.types.CBufRet.f32 %4716, 3
  %4721 = select i1 %4714, float %4717, float %4719
  %4722 = select i1 %4715, float %4718, float %4720
  %4723 = fmul fast float %4721, %4712
  %4724 = fmul fast float %4722, %4713
  %4725 = call float @dx.op.unary.f32(i32 6, float %4723)  ; FAbs(value)
  %4726 = call float @dx.op.unary.f32(i32 6, float %4724)  ; FAbs(value)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4728 = call float @dx.op.binary.f32(i32 35, float %4725, float %4726)  ; FMax(a,b)
  %4729 = fsub fast float %4727, %4728
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = fcmp fast ogt float %4730, 0.000000e+00
  br i1 %4731, label %4732, label %4773, !dx.controlflow.hints !131

; <label>:4732                                    ; preds = %4674
  %4733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %60, float %4707, float %4708, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 1
  %4735 = fcmp fast ogt float %4734, 0.000000e+00
  br i1 %4735, label %4736, label %4768

; <label>:4736                                    ; preds = %4732
  %4737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %60, float %4707, float %4708, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = extractvalue %dx.types.ResRet.f32 %4737, 1
  %4740 = extractvalue %dx.types.ResRet.f32 %4737, 2
  %4741 = extractvalue %dx.types.ResRet.f32 %4737, 3
  %4742 = fsub fast float 1.000000e+00, %4689
  %4743 = fsub fast float %4742, %4700
  %4744 = fmul fast float %4743, 0x400921FB60000000
  %4745 = fadd fast float %4744, 0x3FF921FB60000000
  %4746 = call float @dx.op.unary.f32(i32 13, float %4745)  ; Sin(value)
  %4747 = fadd fast float %4746, -1.000000e+00
  %4748 = fmul fast float %4747, 0x3FD45F3060000000
  %4749 = fmul fast float %4743, 0x401921FB60000000
  %4750 = fadd fast float %4749, 0x400921FB60000000
  %4751 = call float @dx.op.unary.f32(i32 13, float %4750)  ; Sin(value)
  %4752 = fadd fast float %4751, 0x3E7777A5C0000000
  %4753 = fmul fast float %4752, 0x3FC45F3060000000
  %4754 = fmul fast float %4743, 0x4022D97C80000000
  %4755 = fadd fast float %4754, 0x4012D97C80000000
  %4756 = call float @dx.op.unary.f32(i32 13, float %4755)  ; Sin(value)
  %4757 = fadd fast float %4756, 1.000000e+00
  %4758 = fmul fast float %4757, 0x3FBB2995E0000000
  %4759 = fmul fast float %4743, 0x402921FB60000000
  %4760 = fadd fast float %4759, 0x401921FB60000000
  %4761 = call float @dx.op.unary.f32(i32 13, float %4760)  ; Sin(value)
  %4762 = fadd fast float %4761, 0xBE8777A5C0000000
  %4763 = fmul fast float %4762, 0x3FB45F3060000000
  %4764 = call float @dx.op.dot4.f32(i32 56, float %4738, float %4739, float %4740, float %4741, float %4748, float %4753, float %4758, float %4763)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4765 = fmul fast float %4764, 0xBFF7154760000000
  %4766 = call float @dx.op.unary.f32(i32 21, float %4765)  ; Exp(value)
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  br label %4768

; <label>:4768                                    ; preds = %4736, %4732
  %4769 = phi float [ %4767, %4736 ], [ 1.000000e+00, %4732 ]
  %4770 = fadd fast float %4769, -1.000000e+00
  %4771 = fmul fast float %4770, %4730
  %4772 = fadd fast float %4771, 1.000000e+00
  br label %4773

; <label>:4773                                    ; preds = %4768, %4674
  %4774 = phi float [ %4772, %4768 ], [ 1.000000e+00, %4674 ]
  %4775 = fmul fast float %4774, %4670
  %4776 = extractvalue %dx.types.CBufRet.f32 %2462, 2
  %4777 = fadd fast float %2463, %139
  %4778 = fadd fast float %2464, %140
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 1
  %4781 = fsub fast float -0.000000e+00, %4777
  %4782 = fsub fast float -0.000000e+00, %4778
  %4783 = fsub fast float %2409, %4776
  %4784 = fadd fast float %4783, %4780
  %4785 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4781, float %4782, float %4784)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4025, float %4026, float %4027)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = fdiv fast float 1.000000e+00, %4786
  %4788 = fmul fast float %4787, %4785
  %4789 = fmul fast float %4025, %4788
  %4790 = fmul fast float %4026, %4788
  %4791 = fadd fast float %4789, %4777
  %4792 = fadd fast float %4790, %4778
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 0
  %4795 = extractvalue %dx.types.CBufRet.f32 %4793, 1
  %4796 = fsub fast float %4791, %4794
  %4797 = fsub fast float %4792, %4795
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 2
  %4800 = extractvalue %dx.types.CBufRet.f32 %4798, 3
  %4801 = fmul fast float %4796, %4799
  %4802 = fmul fast float %4797, %4800
  %4803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.i32 %4803, 3
  %4805 = icmp eq i32 %4804, 0
  br i1 %4805, label %4811, label %4806

; <label>:4806                                    ; preds = %4773
  %4807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %59, float %4801, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4808 = extractvalue %dx.types.ResRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.ResRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.ResRet.f32 %4807, 2
  br label %4816

; <label>:4811                                    ; preds = %4773
  %4812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %60, float %4801, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4813 = extractvalue %dx.types.ResRet.f32 %4812, 0
  %4814 = extractvalue %dx.types.ResRet.f32 %4812, 1
  %4815 = extractvalue %dx.types.ResRet.f32 %4812, 2
  br label %4816

; <label>:4816                                    ; preds = %4811, %4806
  %4817 = phi float [ %4808, %4806 ], [ %4813, %4811 ]
  %4818 = phi float [ %4809, %4806 ], [ %4814, %4811 ]
  %4819 = phi float [ %4810, %4806 ], [ %4815, %4811 ]
  %4820 = extractvalue %dx.types.CBufRet.f32 %4779, 2
  %4821 = fmul fast float %4820, %4817
  %4822 = extractvalue %dx.types.CBufRet.f32 %4779, 0
  %4823 = fsub fast float %4788, %4822
  %4824 = fsub fast float %4823, %4821
  %4825 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4824)  ; FMax(a,b)
  %4826 = fmul fast float %4825, %4818
  %4827 = call float @dx.op.binary.f32(i32 36, float %4819, float %4826)  ; FMin(a,b)
  %4828 = fmul fast float %4827, 0xBFF7154760000000
  %4829 = call float @dx.op.unary.f32(i32 21, float %4828)  ; Exp(value)
  %4830 = fmul fast float %4775, %4829
  br label %4831

; <label>:4831                                    ; preds = %4816, %4669
  %4832 = phi float [ %4830, %4816 ], [ %4670, %4669 ]
  %4833 = call float @dx.op.binary.f32(i32 36, float %4832, float %4832)  ; FMin(a,b)
  %4834 = call float @dx.op.binary.f32(i32 36, float %4832, float %4833)  ; FMin(a,b)
  %4835 = fcmp fast ogt float %4834, 0.000000e+00
  br i1 %4835, label %4836, label %5222, !dx.controlflow.hints !132

; <label>:4836                                    ; preds = %4831
  %4837 = fmul fast float %4832, %4036
  %4838 = fmul fast float %4832, %4037
  %4839 = fmul fast float %4832, %4038
  %4840 = fsub fast float %141, %2197
  %4841 = fcmp fast ogt float %4840, 0.000000e+00
  %4842 = fmul fast float %4025, 5.120000e+02
  %4843 = fmul fast float %4026, 5.120000e+02
  %4844 = fmul fast float %4027, 5.120000e+02
  %4845 = fadd fast float %4844, %141
  %4846 = fsub fast float %2197, %4845
  %4847 = fmul fast float %4846, 2.000000e+00
  %4848 = fadd fast float %4847, %4845
  %4849 = select i1 %4841, float %4848, float %4845
  %4850 = fsub fast float %4849, %141
  %4851 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4850, float %4842, float %4843, float %4850)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = call float @dx.op.unary.f32(i32 25, float %4851)  ; Rsqrt(value)
  %4853 = fmul fast float %4852, %4842
  %4854 = fmul fast float %4852, %4843
  %4855 = fmul fast float %4852, %4850
  %4856 = fsub fast float %2197, %141
  %4857 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4853, float %4854, float %4855)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = fdiv fast float 1.000000e+00, %4858
  %4860 = fmul fast float %4859, %4857
  %4861 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4840, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4862 = fcmp fast ogt float %4861, 0.000000e+00
  %4863 = fcmp fast olt float %4861, 0.000000e+00
  %4864 = zext i1 %4862 to i32
  %4865 = zext i1 %4863 to i32
  %4866 = sub nsw i32 %4864, %4865
  %4867 = sitofp i32 %4866 to float
  %4868 = fsub fast float %4849, %2197
  %4869 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4868, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4870 = fcmp fast ogt float %4869, 0.000000e+00
  %4871 = fcmp fast olt float %4869, 0.000000e+00
  %4872 = zext i1 %4870 to i32
  %4873 = zext i1 %4871 to i32
  %4874 = sub nsw i32 %4872, %4873
  %4875 = sitofp i32 %4874 to float
  %4876 = fcmp fast une float %4867, %4875
  br i1 %4876, label %4877, label %4887

; <label>:4877                                    ; preds = %4836
  %4878 = fmul fast float %4860, %4855
  %4879 = fmul fast float %4860, %4854
  %4880 = fmul fast float %4860, %4853
  %4881 = fmul fast float %4880, %4880
  %4882 = fmul fast float %4879, %4879
  %4883 = fadd fast float %4881, %4882
  %4884 = fmul fast float %4878, %4878
  %4885 = fadd fast float %4883, %4884
  %4886 = call float @dx.op.unary.f32(i32 24, float %4885)  ; Sqrt(value)
  br label %4897

; <label>:4887                                    ; preds = %4836
  %4888 = icmp slt i32 %4866, 0
  br i1 %4888, label %4889, label %4897

; <label>:4889                                    ; preds = %4887
  %4890 = fsub fast float %141, %4849
  %4891 = fmul fast float %4842, %4842
  %4892 = fmul fast float %4843, %4843
  %4893 = fadd fast float %4891, %4892
  %4894 = fmul fast float %4890, %4890
  %4895 = fadd fast float %4893, %4894
  %4896 = call float @dx.op.unary.f32(i32 24, float %4895)  ; Sqrt(value)
  br label %4897

; <label>:4897                                    ; preds = %4889, %4887, %4877
  %4898 = phi float [ %4886, %4877 ], [ %4896, %4889 ], [ 0.000000e+00, %4887 ]
  %4899 = fsub fast float -0.000000e+00, %4898
  %4900 = select i1 %4841, float -0.000000e+00, float %4899
  %4901 = fmul fast float %2198, 0x3FF7154760000000
  %4902 = fmul fast float %4901, %4900
  %4903 = fmul fast float %2199, 0x3FF7154760000000
  %4904 = fmul fast float %4903, %4900
  %4905 = fmul fast float %2200, 0x3FF7154760000000
  %4906 = fmul fast float %4905, %4900
  %4907 = call float @dx.op.unary.f32(i32 21, float %4902)  ; Exp(value)
  %4908 = call float @dx.op.unary.f32(i32 21, float %4904)  ; Exp(value)
  %4909 = call float @dx.op.unary.f32(i32 21, float %4906)  ; Exp(value)
  %4910 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4912 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4913 = fmul fast float %4837, %4910
  %4914 = fmul fast float %4838, %4911
  %4915 = fmul fast float %4839, %4912
  %4916 = fsub fast float %4025, %2397
  %4917 = fsub fast float %4026, %2396
  %4918 = fsub fast float %4027, %2395
  %4919 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = call float @dx.op.unary.f32(i32 25, float %4919)  ; Rsqrt(value)
  %4921 = fmul fast float %4920, %4916
  %4922 = fmul fast float %4920, %4917
  %4923 = fmul fast float %4920, %4918
  %4924 = call float @dx.op.dot3.f32(i32 55, float %4025, float %4026, float %4027, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = call float @dx.op.dot3.f32(i32 55, float %2394, float %2393, float %2392, float %4921, float %4922, float %4923)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4927 = fmul fast float %4926, %4926
  %4928 = fmul fast float %4927, %2461
  %4929 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4930 = fmul fast float %4929, %4926
  %4931 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2402, float %2403, float %4921, float %4922, float %4923)  ; Dot3(ax,ay,az,bx,by,bz)
  %4932 = fmul fast float %4931, %4931
  %4933 = call float @dx.op.unary.f32(i32 6, float %4924)  ; FAbs(value)
  %4934 = call float @dx.op.binary.f32(i32 35, float %3854, float 0x3F847AE140000000)  ; FMax(a,b)
  %4935 = fmul fast float %4934, %4934
  %4936 = fmul fast float %4935, %4935
  %4937 = fsub fast float 1.000000e+00, %4936
  %4938 = fmul fast float %2448, %2448
  %4939 = fmul fast float %4938, %4937
  %4940 = fadd fast float %4939, %4936
  %4941 = bitcast float %4940 to i32
  %4942 = ashr i32 %4941, 1
  %4943 = add nsw i32 %4942, 532487669
  %4944 = bitcast i32 %4943 to float
  %4945 = fadd fast float %4944, %2448
  %4946 = fmul fast float %4936, %4932
  %4947 = fsub fast float 1.000000e+00, %4932
  %4948 = fadd fast float %4947, %4946
  %4949 = fmul fast float %4933, %4933
  %4950 = fmul fast float %4949, %4937
  %4951 = fadd fast float %4950, %4936
  %4952 = bitcast float %4951 to i32
  %4953 = ashr i32 %4952, 1
  %4954 = add nsw i32 %4953, 532487669
  %4955 = bitcast i32 %4954 to float
  %4956 = fadd fast float %4955, %4933
  %4957 = fmul fast float %4948, %4948
  %4958 = fmul fast float %4957, %4945
  %4959 = fmul fast float %4958, %4956
  %4960 = fdiv fast float 0x3FF0A00000000000, %4959
  %4961 = fmul fast float %4960, %4936
  %4962 = fmul fast float %3714, 0x3FF9999980000000
  %4963 = fsub fast float 5.000000e+00, %4962
  %4964 = call float @dx.op.unary.f32(i32 6, float %4925)  ; FAbs(value)
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = fmul fast float %3714, 0x41D9660740000000
  %4967 = fadd fast float %4966, 0xC1EFBF8940000000
  %4968 = bitcast float %4965 to i32
  %4969 = sitofp i32 %4968 to float
  %4970 = fmul fast float %4969, %4963
  %4971 = fadd fast float %4967, %4970
  %4972 = fptosi float %4971 to i32
  %4973 = bitcast i32 %4972 to float
  %4974 = fsub fast float 1.000000e+00, %2404
  %4975 = fsub fast float 1.000000e+00, %2405
  %4976 = fsub fast float 1.000000e+00, %2446
  %4977 = fmul fast float %4973, %4974
  %4978 = fmul fast float %4973, %4975
  %4979 = fmul fast float %4973, %4976
  %4980 = fadd fast float %4977, %2404
  %4981 = fadd fast float %4978, %2405
  %4982 = fadd fast float %4979, %2446
  br i1 %3737, label %4983, label %5006

; <label>:4983                                    ; preds = %4897
  %4984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %60, float %1743, float %4964, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4985 = extractvalue %dx.types.ResRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.ResRet.f32 %4984, 1
  %4987 = extractvalue %dx.types.ResRet.f32 %4984, 2
  %4988 = fadd fast float %4985, -5.000000e-01
  %4989 = fadd fast float %4986, -5.000000e-01
  %4990 = fadd fast float %4987, -5.000000e-01
  %4991 = fmul fast float %2404, 4.000000e+00
  %4992 = fmul fast float %4991, %4974
  %4993 = fmul fast float %4992, %4988
  %4994 = fmul fast float %2405, 4.000000e+00
  %4995 = fmul fast float %4994, %4975
  %4996 = fmul fast float %4995, %4989
  %4997 = fmul fast float %2446, 4.000000e+00
  %4998 = fmul fast float %4997, %4976
  %4999 = fmul fast float %4998, %4990
  %5000 = fadd fast float %4993, %4980
  %5001 = fadd fast float %4996, %4981
  %5002 = fadd fast float %4999, %4982
  %5003 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5004 = call float @dx.op.unary.f32(i32 7, float %5001)  ; Saturate(value)
  %5005 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  br label %5006

; <label>:5006                                    ; preds = %4983, %4897
  %5007 = phi float [ %5003, %4983 ], [ %4980, %4897 ]
  %5008 = phi float [ %5004, %4983 ], [ %4981, %4897 ]
  %5009 = phi float [ %5005, %4983 ], [ %4982, %4897 ]
  %5010 = fmul fast float %4924, 9.843750e-01
  %5011 = fadd fast float %5010, 7.812500e-03
  %5012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %60, float %5011, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5013 = extractvalue %dx.types.ResRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.ResRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.ResRet.f32 %5012, 2
  %5016 = extractvalue %dx.types.ResRet.f32 %5012, 3
  %5017 = fsub fast float %5015, %5013
  %5018 = fsub fast float %5016, %5014
  %5019 = fmul fast float %5017, %3724
  %5020 = fmul fast float %5018, %3724
  %5021 = fadd fast float %5019, %5013
  %5022 = fadd fast float %5020, %5014
  %5023 = fmul fast float %5021, %2404
  %5024 = fmul fast float %5021, %2405
  %5025 = fmul fast float %5021, %2446
  %5026 = fadd fast float %5023, %5022
  %5027 = fadd fast float %5024, %5022
  %5028 = fadd fast float %5025, %5022
  br i1 %3737, label %5029, label %5052

; <label>:5029                                    ; preds = %5006
  %5030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %60, float %1743, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5031 = extractvalue %dx.types.ResRet.f32 %5030, 0
  %5032 = extractvalue %dx.types.ResRet.f32 %5030, 1
  %5033 = extractvalue %dx.types.ResRet.f32 %5030, 2
  %5034 = fadd fast float %5031, -5.000000e-01
  %5035 = fadd fast float %5032, -5.000000e-01
  %5036 = fadd fast float %5033, -5.000000e-01
  %5037 = fmul fast float %2404, 4.000000e+00
  %5038 = fmul fast float %5037, %4974
  %5039 = fmul fast float %5038, %5034
  %5040 = fmul fast float %2405, 4.000000e+00
  %5041 = fmul fast float %5040, %4975
  %5042 = fmul fast float %5041, %5035
  %5043 = fmul fast float %2446, 4.000000e+00
  %5044 = fmul fast float %5043, %4976
  %5045 = fmul fast float %5044, %5036
  %5046 = fadd fast float %5039, %5026
  %5047 = fadd fast float %5042, %5027
  %5048 = fadd fast float %5045, %5028
  %5049 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5050 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5051 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  br label %5052

; <label>:5052                                    ; preds = %5029, %5006
  %5053 = phi float [ %5049, %5029 ], [ %5026, %5006 ]
  %5054 = phi float [ %5050, %5029 ], [ %5027, %5006 ]
  %5055 = phi float [ %5051, %5029 ], [ %5028, %5006 ]
  %5056 = call float @dx.op.binary.f32(i32 35, float %5054, float %5055)  ; FMax(a,b)
  %5057 = call float @dx.op.binary.f32(i32 35, float %5053, float %5056)  ; FMax(a,b)
  %5058 = fsub fast float 1.000000e+00, %5057
  %5059 = call float @dx.op.binary.f32(i32 35, float %4933, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5060 = fdiv fast float %1149, %5059
  %5061 = fmul fast float %3795, %5060
  %5062 = fmul fast float %3797, %5060
  %5063 = fmul fast float %3799, %5060
  %5064 = call float @dx.op.unary.f32(i32 21, float %5061)  ; Exp(value)
  %5065 = call float @dx.op.unary.f32(i32 21, float %5062)  ; Exp(value)
  %5066 = call float @dx.op.unary.f32(i32 21, float %5063)  ; Exp(value)
  %5067 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5068 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5069 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5070 = select i1 %3792, float %5067, float 0.000000e+00
  %5071 = select i1 %3793, float %5068, float 0.000000e+00
  %5072 = select i1 %3794, float %5069, float 0.000000e+00
  %5073 = fsub fast float -0.000000e+00, %2401
  %5074 = fsub fast float -0.000000e+00, %2402
  %5075 = fsub fast float -0.000000e+00, %2403
  %5076 = call float @dx.op.dot3.f32(i32 55, float %4025, float %4026, float %4027, float %5073, float %5074, float %5075)  ; Dot3(ax,ay,az,bx,by,bz)
  %5077 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5078 = fmul fast float %5077, 9.843750e-01
  %5079 = fadd fast float %5078, 7.812500e-03
  %5080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %60, float %5079, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5081 = extractvalue %dx.types.ResRet.f32 %5080, 0
  %5082 = extractvalue %dx.types.ResRet.f32 %5080, 1
  %5083 = extractvalue %dx.types.ResRet.f32 %5080, 2
  %5084 = extractvalue %dx.types.ResRet.f32 %5080, 3
  %5085 = fsub fast float %5083, %5081
  %5086 = fsub fast float %5084, %5082
  %5087 = fmul fast float %5085, %3724
  %5088 = fmul fast float %5086, %3724
  %5089 = fadd fast float %5087, %5081
  %5090 = fadd fast float %5088, %5082
  %5091 = fmul fast float %5089, %2404
  %5092 = fmul fast float %5089, %2405
  %5093 = fmul fast float %5089, %2446
  %5094 = fadd fast float %5091, %5090
  %5095 = fadd fast float %5092, %5090
  %5096 = fadd fast float %5093, %5090
  br i1 %3737, label %5097, label %5120

; <label>:5097                                    ; preds = %5052
  %5098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %60, float %1743, float %5077, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5099 = extractvalue %dx.types.ResRet.f32 %5098, 0
  %5100 = extractvalue %dx.types.ResRet.f32 %5098, 1
  %5101 = extractvalue %dx.types.ResRet.f32 %5098, 2
  %5102 = fadd fast float %5099, -5.000000e-01
  %5103 = fadd fast float %5100, -5.000000e-01
  %5104 = fadd fast float %5101, -5.000000e-01
  %5105 = fmul fast float %2404, 4.000000e+00
  %5106 = fmul fast float %5105, %4974
  %5107 = fmul fast float %5106, %5102
  %5108 = fmul fast float %2405, 4.000000e+00
  %5109 = fmul fast float %5108, %4975
  %5110 = fmul fast float %5109, %5103
  %5111 = fmul fast float %2446, 4.000000e+00
  %5112 = fmul fast float %5111, %4976
  %5113 = fmul fast float %5112, %5104
  %5114 = fadd fast float %5107, %5094
  %5115 = fadd fast float %5110, %5095
  %5116 = fadd fast float %5113, %5096
  %5117 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5118 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5119 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  br label %5120

; <label>:5120                                    ; preds = %5097, %5052
  %5121 = phi float [ %5117, %5097 ], [ %5094, %5052 ]
  %5122 = phi float [ %5118, %5097 ], [ %5095, %5052 ]
  %5123 = phi float [ %5119, %5097 ], [ %5096, %5052 ]
  %5124 = call float @dx.op.binary.f32(i32 35, float %5122, float %5123)  ; FMax(a,b)
  %5125 = call float @dx.op.binary.f32(i32 35, float %5121, float %5124)  ; FMax(a,b)
  %5126 = fsub fast float 1.000000e+00, %5125
  %5127 = fmul fast float %3854, %3860
  %5128 = fadd fast float %3853, %5127
  %5129 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5130 = fsub fast float %4025, %2454
  %5131 = fsub fast float %4026, %2455
  %5132 = fsub fast float %4027, %2456
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5130, float %5131, float %5132, float %5130, float %5131, float %5132)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = call float @dx.op.unary.f32(i32 25, float %5133)  ; Rsqrt(value)
  %5135 = fmul fast float %5134, %5130
  %5136 = fmul fast float %5134, %5131
  %5137 = fmul fast float %5134, %5132
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5073, float %5074, float %5075, float %5135, float %5136, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = fmul fast float %5138, %5138
  %5140 = call float @dx.op.unary.f32(i32 6, float %5077)  ; FAbs(value)
  %5141 = call float @dx.op.binary.f32(i32 35, float %5129, float 0x3F847AE140000000)  ; FMax(a,b)
  %5142 = fmul fast float %5141, %5141
  %5143 = fmul fast float %5142, %5142
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = fmul fast float %4938, %5144
  %5146 = fadd fast float %5145, %5143
  %5147 = bitcast float %5146 to i32
  %5148 = ashr i32 %5147, 1
  %5149 = add nsw i32 %5148, 532487669
  %5150 = bitcast i32 %5149 to float
  %5151 = fadd fast float %5150, %2448
  %5152 = fmul fast float %5143, %5139
  %5153 = fsub fast float 1.000000e+00, %5139
  %5154 = fadd fast float %5153, %5152
  %5155 = fmul fast float %5140, %5140
  %5156 = fmul fast float %5155, %5144
  %5157 = fadd fast float %5156, %5143
  %5158 = bitcast float %5157 to i32
  %5159 = ashr i32 %5158, 1
  %5160 = add nsw i32 %5159, 532487669
  %5161 = bitcast i32 %5160 to float
  %5162 = fadd fast float %5161, %5140
  %5163 = fmul fast float %5154, %5154
  %5164 = fmul fast float %5163, %5151
  %5165 = fmul fast float %5164, %5162
  %5166 = fdiv fast float 0x3FF0A00000000000, %5165
  %5167 = fmul fast float %5166, %5143
  %5168 = fmul fast float %5077, %5070
  %5169 = fmul fast float %5077, %5071
  %5170 = fmul fast float %5077, %5072
  %5171 = fmul fast float %5168, %5126
  %5172 = fmul fast float %5171, %5167
  %5173 = fmul fast float %5169, %5126
  %5174 = fmul fast float %5173, %5167
  %5175 = fmul fast float %5170, %5126
  %5176 = fmul fast float %5175, %5167
  %5177 = fmul fast float %5007, %4961
  %5178 = fmul fast float %5008, %4961
  %5179 = fmul fast float %5009, %4961
  %5180 = fsub fast float 1.000000e+00, %4925
  %5181 = bitcast float %5180 to i32
  %5182 = sitofp i32 %5181 to float
  %5183 = fmul fast float %5182, 5.000000e+00
  %5184 = fadd fast float %5183, 0xC1EFBF8940000000
  %5185 = fptosi float %5184 to i32
  %5186 = bitcast i32 %5185 to float
  %5187 = fmul fast float %5186, %1742
  %5188 = fmul fast float %5058, %5187
  %5189 = fmul fast float %5188, %3787
  %5190 = fmul fast float %5188, %3788
  %5191 = fmul fast float %5188, %3789
  %5192 = fadd fast float %5189, %5177
  %5193 = fadd fast float %5190, %5178
  %5194 = fadd fast float %5191, %5179
  %5195 = fmul fast float %5192, %4930
  %5196 = fmul fast float %5193, %4930
  %5197 = fmul fast float %5194, %4930
  %5198 = fmul fast float %4930, %4913
  %5199 = fmul fast float %5198, %5058
  %5200 = fmul fast float %4930, %4914
  %5201 = fmul fast float %5200, %5058
  %5202 = fmul fast float %4930, %4915
  %5203 = fmul fast float %5202, %5058
  %5204 = fadd fast float %5195, %5172
  %5205 = fadd fast float %5196, %5174
  %5206 = fadd fast float %5197, %5176
  %5207 = fmul fast float %5204, %4913
  %5208 = fmul fast float %5205, %4914
  %5209 = fmul fast float %5206, %4915
  %5210 = fadd fast float %5199, %3771
  %5211 = fmul fast float %5210, %1766
  %5212 = fadd fast float %5201, %3772
  %5213 = fmul fast float %5212, %1766
  %5214 = fadd fast float %5203, %3773
  %5215 = fmul fast float %5214, %1766
  %5216 = fadd fast float %5207, %4011
  %5217 = fmul fast float %5216, %1766
  %5218 = fadd fast float %5208, %4015
  %5219 = fmul fast float %5218, %1766
  %5220 = fadd fast float %5209, %4019
  %5221 = fmul fast float %5220, %1766
  br label %5222

; <label>:5222                                    ; preds = %5120, %4831, %3995
  %5223 = phi float [ %4012, %3995 ], [ %4012, %4831 ], [ %5217, %5120 ]
  %5224 = phi float [ %4016, %3995 ], [ %4016, %4831 ], [ %5219, %5120 ]
  %5225 = phi float [ %4020, %3995 ], [ %4020, %4831 ], [ %5221, %5120 ]
  %5226 = phi float [ %3884, %3995 ], [ %3884, %4831 ], [ %5211, %5120 ]
  %5227 = phi float [ %3885, %3995 ], [ %3885, %4831 ], [ %5213, %5120 ]
  %5228 = phi float [ %3886, %3995 ], [ %3886, %4831 ], [ %5215, %5120 ]
  %5229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.i32 %5229, 0
  %5231 = icmp eq i32 %5230, 0
  br i1 %5231, label %6006, label %5232

; <label>:5232                                    ; preds = %5222
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 2
  %5235 = extractvalue %dx.types.CBufRet.f32 %5233, 3
  %5236 = fmul fast float %5234, %92
  %5237 = fmul fast float %5235, %93
  %5238 = fptoui float %5236 to i32
  %5239 = fptoui float %5237 to i32
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 0
  %5242 = extractvalue %dx.types.CBufRet.f32 %5240, 2
  %5243 = extractvalue %dx.types.CBufRet.f32 %5240, 3
  %5244 = fadd fast float %83, -4.000000e+00
  %5245 = call float @dx.op.binary.f32(i32 35, float %5244, float 0.000000e+00)  ; FMax(a,b)
  %5246 = fadd fast float %5245, %5241
  %5247 = fmul fast float %5246, %5242
  %5248 = call float @dx.op.unary.f32(i32 23, float %5247)  ; Log(value)
  %5249 = fmul fast float %5248, %5243
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 2
  %5252 = fmul fast float %5249, %5251
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.i32 %5254, 1
  %5256 = add i32 %5255, -1
  %5257 = uitofp i32 %5255 to float
  %5258 = fmul fast float %5257, %5253
  %5259 = fptoui float %5258 to i32
  %5260 = call i32 @dx.op.binary.i32(i32 40, i32 %5259, i32 %5256)  ; UMin(a,b)
  %5261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.i32 %5261, 2
  %5263 = extractvalue %dx.types.CBufRet.i32 %5261, 3
  %5264 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5239, i32 %5262, i32 %5238)  ; UMad(a,b,c)
  %5265 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5260, i32 %5263, i32 %5264)  ; UMad(a,b,c)
  %5266 = add nsw i32 %5230, -1
  %5267 = call i32 @dx.op.binary.i32(i32 37, i32 %5266, i32 0)  ; IMax(a,b)
  %5268 = call float @dx.op.binary.f32(i32 35, float %83, float 0.000000e+00)  ; FMax(a,b)
  %5269 = fptoui float %5268 to i32
  %5270 = lshr i32 %5269, 5
  %5271 = call i32 @dx.op.binary.i32(i32 40, i32 %5270, i32 8191)  ; UMin(a,b)
  %5272 = shl i32 %5271, 2
  %5273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5274 = extractvalue %dx.types.ResRet.i32 %5273, 0
  %5275 = lshr i32 %5274, 16
  %5276 = and i32 %5274, 65535
  %5277 = lshr i32 %5274, 21
  %5278 = lshr i32 %5276, 5
  %5279 = call i32 @dx.op.binary.i32(i32 40, i32 %5278, i32 %5267)  ; UMin(a,b)
  %5280 = icmp ugt i32 %5277, %5279
  br i1 %5280, label %6006, label %5281

; <label>:5281                                    ; preds = %5232
  br label %5282

; <label>:5282                                    ; preds = %5996, %5281
  %5283 = phi i32 [ %6003, %5996 ], [ %5277, %5281 ]
  %5284 = phi float [ %5997, %5996 ], [ %5223, %5281 ]
  %5285 = phi float [ %5998, %5996 ], [ %5224, %5281 ]
  %5286 = phi float [ %5999, %5996 ], [ %5225, %5281 ]
  %5287 = phi float [ %6000, %5996 ], [ %5226, %5281 ]
  %5288 = phi float [ %6001, %5996 ], [ %5227, %5281 ]
  %5289 = phi float [ %6002, %5996 ], [ %5228, %5281 ]
  %5290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.i32 %5290, 0
  %5292 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5265, i32 %5291, i32 %5283)  ; UMad(a,b,c)
  %5293 = shl i32 %5292, 2
  %5294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %5312, label %5996, label %5313

; <label>:5313                                    ; preds = %5282
  br label %5314

; <label>:5314                                    ; preds = %5449, %5313
  %5315 = phi i32 [ %5326, %5449 ], [ %5311, %5313 ]
  %5316 = phi float [ %5450, %5449 ], [ %5284, %5313 ]
  %5317 = phi float [ %5451, %5449 ], [ %5285, %5313 ]
  %5318 = phi float [ %5452, %5449 ], [ %5286, %5313 ]
  %5319 = phi float [ %5453, %5449 ], [ %5287, %5313 ]
  %5320 = phi float [ %5454, %5449 ], [ %5288, %5313 ]
  %5321 = phi float [ %5455, %5449 ], [ %5289, %5313 ]
  %5322 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5315)  ; FirstbitLo(value)
  %5323 = add i32 %5322, %5296
  %5324 = and i32 %5322, 31
  %5325 = shl i32 1, %5324
  %5326 = xor i32 %5325, %5315
  %5327 = mul i32 %5323, 112
  %5328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = extractvalue %dx.types.ResRet.f32 %5328, 1
  %5331 = extractvalue %dx.types.ResRet.f32 %5328, 2
  %5332 = or i32 %5327, 12
  %5333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5332, i32 undef)  ; BufferLoad(srv,index,wot)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 0
  %5335 = add i32 %5327, 16
  %5336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5335, i32 undef)  ; BufferLoad(srv,index,wot)
  %5337 = extractvalue %dx.types.ResRet.f32 %5336, 0
  %5338 = extractvalue %dx.types.ResRet.f32 %5336, 1
  %5339 = extractvalue %dx.types.ResRet.f32 %5336, 2
  %5340 = add i32 %5327, 28
  %5341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5340, i32 undef)  ; BufferLoad(srv,index,wot)
  %5342 = extractvalue %dx.types.ResRet.i32 %5341, 0
  %5343 = add i32 %5327, 44
  %5344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5343, i32 undef)  ; BufferLoad(srv,index,wot)
  %5345 = extractvalue %dx.types.ResRet.f32 %5344, 0
  %5346 = add i32 %5327, 48
  %5347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5346, i32 undef)  ; BufferLoad(srv,index,wot)
  %5348 = extractvalue %dx.types.ResRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.ResRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.ResRet.f32 %5347, 2
  %5351 = extractvalue %dx.types.ResRet.f32 %5347, 3
  %5352 = add i32 %5327, 64
  %5353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5352, i32 undef)  ; BufferLoad(srv,index,wot)
  %5354 = extractvalue %dx.types.ResRet.f32 %5353, 0
  %5355 = extractvalue %dx.types.ResRet.f32 %5353, 1
  %5356 = extractvalue %dx.types.ResRet.f32 %5353, 2
  %5357 = extractvalue %dx.types.ResRet.f32 %5353, 3
  %5358 = add i32 %5327, 80
  %5359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 1
  %5361 = extractvalue %dx.types.ResRet.f32 %5359, 2
  %5362 = add i32 %5327, 92
  %5363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5362, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.i32 %5363, 0
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5330, float %5331, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = select i1 %230, float %5360, float %5329
  %5367 = select i1 %230, float %5365, float %5330
  %5368 = select i1 %230, float %5361, float %5331
  %5369 = and i32 %5364, 65535
  %5370 = uitofp i32 %5369 to float
  %5371 = lshr i32 %5364, 16
  %5372 = uitofp i32 %5371 to float
  %5373 = and i32 %5342, 65535
  %5374 = and i32 %5342, 50331648
  %5375 = icmp slt i32 %5342, 0
  %5376 = icmp eq i32 %5374, 33554432
  %5377 = fsub fast float %5348, %139
  %5378 = fsub fast float %5349, %140
  %5379 = fsub fast float %5350, %141
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5377, float %5378, float %5379, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = call float @dx.op.unary.f32(i32 24, float %5380)  ; Sqrt(value)
  %5382 = fdiv fast float 1.000000e+00, %5381
  %5383 = fmul fast float %5382, %5377
  %5384 = fmul fast float %5382, %5378
  %5385 = fmul fast float %5382, %5379
  %5386 = fadd fast float %5381, %5334
  %5387 = fdiv fast float 1.000000e+00, %5386
  %5388 = fmul float %5345, %5387
  %5389 = fmul float %5388, %5388
  %5390 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  br i1 %5376, label %5391, label %5412

; <label>:5391                                    ; preds = %5314
  %5392 = fmul fast float %5356, %5337
  %5393 = fmul fast float %5356, %5338
  %5394 = fmul fast float %5356, %5339
  %5395 = fadd fast float %5377, %5392
  %5396 = fadd fast float %5378, %5393
  %5397 = fadd fast float %5379, %5394
  %5398 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5396, float %5397, float %5395, float %5396, float %5397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = call float @dx.op.unary.f32(i32 25, float %5398)  ; Rsqrt(value)
  %5400 = fmul fast float %5399, %5395
  %5401 = fmul fast float %5399, %5396
  %5402 = fmul fast float %5399, %5397
  %5403 = fsub fast float %139, %5348
  %5404 = fsub fast float %140, %5349
  %5405 = fsub fast float %141, %5350
  %5406 = fsub fast float -0.000000e+00, %5403
  %5407 = fsub fast float -0.000000e+00, %5404
  %5408 = fsub fast float -0.000000e+00, %5405
  %5409 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5407, float %5408, float %5337, float %5338, float %5339)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = fcmp fast ogt float %5409, 0.000000e+00
  %5411 = uitofp i1 %5410 to float
  br label %5412

; <label>:5412                                    ; preds = %5391, %5314
  %5413 = phi float [ %5411, %5391 ], [ 1.000000e+00, %5314 ]
  %5414 = phi float [ %5400, %5391 ], [ %5383, %5314 ]
  %5415 = phi float [ %5401, %5391 ], [ %5384, %5314 ]
  %5416 = phi float [ %5402, %5391 ], [ %5385, %5314 ]
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5337, float %5338, float %5339, float %5414, float %5415, float %5416)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = fmul fast float %5417, %5417
  %5419 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5420 = fsub fast float 1.000000e+00, %5419
  %5421 = fmul fast float %5420, 5.000000e-01
  %5422 = fcmp fast ogt float %5417, 0.000000e+00
  %5423 = fsub fast float 1.000000e+00, %5421
  %5424 = select i1 %5422, float %5421, float %5423
  %5425 = fmul fast float %5424, %5372
  %5426 = fadd fast float %5425, %5370
  %5427 = fmul fast float %5426, 0x3EF0001000000000
  %5428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %60, float %5427, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 0
  %5430 = fmul fast float %5417, %5354
  %5431 = fadd fast float %5430, %5355
  %5432 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5433 = select i1 %5376, float 1.000000e+00, float %5432
  %5434 = select i1 %5376, float %5432, float 1.000000e+00
  %5435 = fmul fast float %5381, %5351
  %5436 = fsub fast float 1.000000e+00, %5435
  %5437 = fmul fast float %5436, %5357
  %5438 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5439 = fmul fast float %5438, %5434
  %5440 = fmul fast float %5439, 2.000000e+00
  %5441 = fsub fast float 3.000000e+00, %5440
  %5442 = fmul fast float %5429, %5413
  %5443 = fmul fast float %5439, %5439
  %5444 = fmul fast float %5443, %5442
  %5445 = fmul fast float %5444, %5441
  %5446 = call float @dx.op.binary.f32(i32 36, float %5445, float %5445)  ; FMin(a,b)
  %5447 = call float @dx.op.binary.f32(i32 36, float %5445, float %5446)  ; FMin(a,b)
  %5448 = fcmp fast ogt float %5447, 0.000000e+00
  br i1 %5448, label %5457, label %5449, !dx.controlflow.hints !133

; <label>:5449                                    ; preds = %5949, %5557, %5412
  %5450 = phi float [ %5316, %5557 ], [ %5316, %5412 ], [ %5992, %5949 ]
  %5451 = phi float [ %5317, %5557 ], [ %5317, %5412 ], [ %5993, %5949 ]
  %5452 = phi float [ %5318, %5557 ], [ %5318, %5412 ], [ %5994, %5949 ]
  %5453 = phi float [ %5319, %5557 ], [ %5319, %5412 ], [ %5986, %5949 ]
  %5454 = phi float [ %5320, %5557 ], [ %5320, %5412 ], [ %5987, %5949 ]
  %5455 = phi float [ %5321, %5557 ], [ %5321, %5412 ], [ %5988, %5949 ]
  %5456 = icmp eq i32 %5315, %5325
  br i1 %5456, label %5995, label %5314

; <label>:5457                                    ; preds = %5412
  %5458 = icmp eq i32 %5373, 255
  br i1 %5458, label %5557, label %5459, !dx.controlflow.hints !134

; <label>:5459                                    ; preds = %5457
  %5460 = mul nuw nsw i32 %5373, 176
  %5461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5460, i32 undef)  ; BufferLoad(srv,index,wot)
  %5462 = extractvalue %dx.types.ResRet.f32 %5461, 0
  %5463 = extractvalue %dx.types.ResRet.f32 %5461, 1
  %5464 = extractvalue %dx.types.ResRet.f32 %5461, 2
  %5465 = extractvalue %dx.types.ResRet.f32 %5461, 3
  %5466 = add nuw nsw i32 %5460, 16
  %5467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5466, i32 undef)  ; BufferLoad(srv,index,wot)
  %5468 = extractvalue %dx.types.ResRet.f32 %5467, 0
  %5469 = extractvalue %dx.types.ResRet.f32 %5467, 1
  %5470 = add nuw nsw i32 %5460, 32
  %5471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5470, i32 undef)  ; BufferLoad(srv,index,wot)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.ResRet.f32 %5471, 2
  %5475 = add nuw nsw i32 %5460, 48
  %5476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5475, i32 undef)  ; BufferLoad(srv,index,wot)
  %5477 = extractvalue %dx.types.ResRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.ResRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.ResRet.f32 %5476, 2
  %5480 = extractvalue %dx.types.ResRet.f32 %5476, 3
  %5481 = add nuw nsw i32 %5460, 64
  %5482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5481, i32 undef)  ; BufferLoad(srv,index,wot)
  %5483 = extractvalue %dx.types.ResRet.f32 %5482, 0
  %5484 = extractvalue %dx.types.ResRet.f32 %5482, 1
  %5485 = extractvalue %dx.types.ResRet.f32 %5482, 2
  %5486 = extractvalue %dx.types.ResRet.f32 %5482, 3
  %5487 = add nuw nsw i32 %5460, 80
  %5488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5487, i32 undef)  ; BufferLoad(srv,index,wot)
  %5489 = extractvalue %dx.types.ResRet.f32 %5488, 0
  %5490 = extractvalue %dx.types.ResRet.f32 %5488, 1
  %5491 = extractvalue %dx.types.ResRet.f32 %5488, 2
  %5492 = extractvalue %dx.types.ResRet.f32 %5488, 3
  %5493 = add nuw nsw i32 %5460, 96
  %5494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5493, i32 undef)  ; BufferLoad(srv,index,wot)
  %5495 = extractvalue %dx.types.ResRet.f32 %5494, 0
  %5496 = extractvalue %dx.types.ResRet.f32 %5494, 1
  %5497 = extractvalue %dx.types.ResRet.f32 %5494, 2
  %5498 = extractvalue %dx.types.ResRet.f32 %5494, 3
  %5499 = bitcast float %5469 to i32
  %5500 = fmul fast float %5474, %72
  %5501 = fmul fast float %5474, %73
  %5502 = fmul fast float %5474, %74
  %5503 = fadd fast float %5500, %139
  %5504 = fadd fast float %5501, %140
  %5505 = fadd fast float %5502, %141
  %5506 = fmul fast float %5503, %5477
  %5507 = call float @dx.op.tertiary.f32(i32 46, float %5504, float %5483, float %5506)  ; FMad(a,b,c)
  %5508 = call float @dx.op.tertiary.f32(i32 46, float %5505, float %5489, float %5507)  ; FMad(a,b,c)
  %5509 = fadd fast float %5508, %5495
  %5510 = fmul fast float %5503, %5478
  %5511 = call float @dx.op.tertiary.f32(i32 46, float %5504, float %5484, float %5510)  ; FMad(a,b,c)
  %5512 = call float @dx.op.tertiary.f32(i32 46, float %5505, float %5490, float %5511)  ; FMad(a,b,c)
  %5513 = fadd fast float %5512, %5496
  %5514 = fmul fast float %5503, %5479
  %5515 = call float @dx.op.tertiary.f32(i32 46, float %5504, float %5485, float %5514)  ; FMad(a,b,c)
  %5516 = call float @dx.op.tertiary.f32(i32 46, float %5505, float %5491, float %5515)  ; FMad(a,b,c)
  %5517 = fadd fast float %5516, %5497
  %5518 = fmul fast float %5503, %5480
  %5519 = call float @dx.op.tertiary.f32(i32 46, float %5504, float %5486, float %5518)  ; FMad(a,b,c)
  %5520 = call float @dx.op.tertiary.f32(i32 46, float %5505, float %5492, float %5519)  ; FMad(a,b,c)
  %5521 = fadd fast float %5520, %5498
  %5522 = fdiv fast float %5509, %5521
  %5523 = fdiv fast float %5513, %5521
  %5524 = fdiv fast float %5517, %5521
  %5525 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5524)  ; FMax(a,b)
  %5526 = fmul fast float %243, 0x401921FB60000000
  %5527 = call float @dx.op.unary.f32(i32 13, float %5526)  ; Sin(value)
  %5528 = call float @dx.op.unary.f32(i32 12, float %5526)  ; Cos(value)
  %5529 = fsub fast float -0.000000e+00, %5527
  %5530 = fmul fast float %5464, 5.000000e-01
  %5531 = call float @dx.op.dot2.f32(i32 54, float %243, float %243, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %5532 = call float @dx.op.unary.f32(i32 22, float %5531)  ; Frc(value)
  %5533 = fmul fast float %5532, 0x404A7DD040000000
  %5534 = call float @dx.op.unary.f32(i32 22, float %5533)  ; Frc(value)
  %5535 = fmul fast float %5534, %5473
  %5536 = fadd fast float %5535, %5530
  %5537 = call float @dx.op.tertiary.f32(i32 46, float %5536, float %5529, float 0.000000e+00)  ; FMad(a,b,c)
  %5538 = call float @dx.op.tertiary.f32(i32 46, float %5536, float %5528, float 0.000000e+00)  ; FMad(a,b,c)
  %5539 = fadd fast float %5537, %5522
  %5540 = fadd fast float %5538, %5523
  %5541 = fmul fast float %5539, %5468
  %5542 = fmul fast float %5540, %5468
  %5543 = call float @dx.op.binary.f32(i32 35, float %5541, float %5464)  ; FMax(a,b)
  %5544 = call float @dx.op.binary.f32(i32 35, float %5542, float %5464)  ; FMax(a,b)
  %5545 = call float @dx.op.binary.f32(i32 36, float %5543, float %5465)  ; FMin(a,b)
  %5546 = call float @dx.op.binary.f32(i32 36, float %5544, float %5465)  ; FMin(a,b)
  %5547 = fadd fast float %5545, %5462
  %5548 = fadd fast float %5546, %5463
  %5549 = uitofp i32 %5499 to float
  %5550 = fadd fast float %5525, %5472
  %5551 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %62, float %5547, float %5548, float %5549, float undef, i32 0, i32 0, i32 undef, float %5550)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5552 = extractvalue %dx.types.ResRet.f32 %5551, 0
  %5553 = fadd fast float %5552, -1.000000e+00
  %5554 = fmul fast float %5553, %5433
  %5555 = fadd fast float %5554, 1.000000e+00
  %5556 = fmul fast float %5555, %5445
  br label %5557

; <label>:5557                                    ; preds = %5459, %5457
  %5558 = phi float [ %5556, %5459 ], [ %5445, %5457 ]
  %5559 = call float @dx.op.binary.f32(i32 36, float %5558, float %5558)  ; FMin(a,b)
  %5560 = call float @dx.op.binary.f32(i32 36, float %5558, float %5559)  ; FMin(a,b)
  %5561 = fcmp fast ogt float %5560, 0.000000e+00
  br i1 %5561, label %5562, label %5449, !dx.controlflow.hints !135

; <label>:5562                                    ; preds = %5557
  %5563 = fmul fast float %5558, %5366
  %5564 = fmul fast float %5558, %5367
  %5565 = fmul fast float %5558, %5368
  %5566 = fsub fast float %5350, %2197
  %5567 = fcmp fast ogt float %5566, 0.000000e+00
  %5568 = fsub fast float %141, %2197
  %5569 = fcmp fast ogt float %5568, 0.000000e+00
  %5570 = xor i1 %5569, %5567
  %5571 = fsub fast float %2197, %5350
  %5572 = fmul fast float %5571, 2.000000e+00
  %5573 = fadd fast float %5572, %5350
  %5574 = select i1 %5570, float %5350, float %5573
  %5575 = fsub fast float %5574, %141
  %5576 = call float @dx.op.dot3.f32(i32 55, float %5377, float %5378, float %5575, float %5377, float %5378, float %5575)  ; Dot3(ax,ay,az,bx,by,bz)
  %5577 = call float @dx.op.unary.f32(i32 25, float %5576)  ; Rsqrt(value)
  %5578 = fmul fast float %5577, %5377
  %5579 = fmul fast float %5577, %5378
  %5580 = fmul fast float %5577, %5575
  %5581 = fsub fast float %2197, %141
  %5582 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5581)  ; Dot3(ax,ay,az,bx,by,bz)
  %5583 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5578, float %5579, float %5580)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = fdiv fast float 1.000000e+00, %5583
  %5585 = fmul fast float %5584, %5582
  %5586 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5568, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = fcmp fast ogt float %5586, 0.000000e+00
  %5588 = fcmp fast olt float %5586, 0.000000e+00
  %5589 = zext i1 %5587 to i32
  %5590 = zext i1 %5588 to i32
  %5591 = sub nsw i32 %5589, %5590
  %5592 = sitofp i32 %5591 to float
  %5593 = fsub fast float %5574, %2197
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5377, float %5378, float %5593, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = fcmp fast ogt float %5594, 0.000000e+00
  %5596 = fcmp fast olt float %5594, 0.000000e+00
  %5597 = zext i1 %5595 to i32
  %5598 = zext i1 %5596 to i32
  %5599 = sub nsw i32 %5597, %5598
  %5600 = sitofp i32 %5599 to float
  %5601 = fcmp fast une float %5592, %5600
  br i1 %5601, label %5602, label %5612

; <label>:5602                                    ; preds = %5562
  %5603 = fmul fast float %5585, %5580
  %5604 = fmul fast float %5585, %5579
  %5605 = fmul fast float %5585, %5578
  %5606 = fmul fast float %5605, %5605
  %5607 = fmul fast float %5604, %5604
  %5608 = fadd fast float %5606, %5607
  %5609 = fmul fast float %5603, %5603
  %5610 = fadd fast float %5608, %5609
  %5611 = call float @dx.op.unary.f32(i32 24, float %5610)  ; Sqrt(value)
  br label %5624

; <label>:5612                                    ; preds = %5562
  %5613 = icmp slt i32 %5591, 0
  br i1 %5613, label %5614, label %5624

; <label>:5614                                    ; preds = %5612
  %5615 = fsub fast float %139, %5348
  %5616 = fsub fast float %140, %5349
  %5617 = fsub fast float %141, %5574
  %5618 = fmul fast float %5615, %5615
  %5619 = fmul fast float %5616, %5616
  %5620 = fadd fast float %5618, %5619
  %5621 = fmul fast float %5617, %5617
  %5622 = fadd fast float %5620, %5621
  %5623 = call float @dx.op.unary.f32(i32 24, float %5622)  ; Sqrt(value)
  br label %5624

; <label>:5624                                    ; preds = %5614, %5612, %5602
  %5625 = phi float [ %5611, %5602 ], [ %5623, %5614 ], [ 0.000000e+00, %5612 ]
  %5626 = and i1 %5569, %5567
  %5627 = fsub fast float -0.000000e+00, %5625
  %5628 = select i1 %5626, float -0.000000e+00, float %5627
  %5629 = fmul fast float %2198, 0x3FF7154760000000
  %5630 = fmul fast float %5629, %5628
  %5631 = fmul fast float %2199, 0x3FF7154760000000
  %5632 = fmul fast float %5631, %5628
  %5633 = fmul fast float %2200, 0x3FF7154760000000
  %5634 = fmul fast float %5633, %5628
  %5635 = call float @dx.op.unary.f32(i32 21, float %5630)  ; Exp(value)
  %5636 = call float @dx.op.unary.f32(i32 21, float %5632)  ; Exp(value)
  %5637 = call float @dx.op.unary.f32(i32 21, float %5634)  ; Exp(value)
  %5638 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5639 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5641 = fmul fast float %5563, %5638
  %5642 = fmul fast float %5564, %5639
  %5643 = fmul fast float %5565, %5640
  %5644 = fsub fast float %5383, %2397
  %5645 = fsub fast float %5384, %2396
  %5646 = fsub fast float %5385, %2395
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5644, float %5645, float %5646, float %5644, float %5645, float %5646)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = call float @dx.op.unary.f32(i32 25, float %5647)  ; Rsqrt(value)
  %5649 = fmul fast float %5648, %5644
  %5650 = fmul fast float %5648, %5645
  %5651 = fmul fast float %5648, %5646
  %5652 = call float @dx.op.dot3.f32(i32 55, float %5383, float %5384, float %5385, float %2401, float %2402, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %5653 = call float @dx.op.dot3.f32(i32 55, float %2394, float %2393, float %2392, float %5649, float %5650, float %5651)  ; Dot3(ax,ay,az,bx,by,bz)
  %5654 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5655 = fmul fast float %5654, %5390
  %5656 = fmul fast float %5654, %5654
  %5657 = fmul fast float %5656, %2461
  %5658 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5659 = fmul fast float %5655, %5658
  %5660 = bitcast float %5380 to i32
  %5661 = ashr i32 %5660, 1
  %5662 = sub nsw i32 1597463007, %5661
  %5663 = bitcast i32 %5662 to float
  %5664 = fmul fast float %5663, %5377
  %5665 = fmul fast float %5663, %5378
  %5666 = fmul fast float %5663, %5379
  %5667 = fsub fast float %5664, %2397
  %5668 = fsub fast float %5665, %2396
  %5669 = fsub fast float %5666, %2395
  %5670 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float %5667, float %5668, float %5669)  ; Dot3(ax,ay,az,bx,by,bz)
  %5671 = call float @dx.op.unary.f32(i32 25, float %5670)  ; Rsqrt(value)
  %5672 = fmul fast float %5667, %5671
  %5673 = fmul fast float %5668, %5671
  %5674 = fmul fast float %5669, %5671
  %5675 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2402, float %2403, float %5672, float %5673, float %5674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = fmul fast float %5675, %5675
  %5677 = call float @dx.op.unary.f32(i32 6, float %5652)  ; FAbs(value)
  %5678 = call float @dx.op.binary.f32(i32 35, float %3854, float 0x3F847AE140000000)  ; FMax(a,b)
  %5679 = fmul fast float %5678, %5678
  %5680 = fmul fast float %5679, %5679
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = fmul fast float %2448, %2448
  %5683 = fmul fast float %5682, %5681
  %5684 = fadd fast float %5683, %5680
  %5685 = bitcast float %5684 to i32
  %5686 = ashr i32 %5685, 1
  %5687 = add nsw i32 %5686, 532487669
  %5688 = bitcast i32 %5687 to float
  %5689 = fadd fast float %5688, %2448
  %5690 = fmul fast float %5680, %5676
  %5691 = fsub fast float 1.000000e+00, %5676
  %5692 = fadd fast float %5691, %5690
  %5693 = fmul fast float %5677, %5677
  %5694 = fmul fast float %5693, %5681
  %5695 = fadd fast float %5694, %5680
  %5696 = bitcast float %5695 to i32
  %5697 = ashr i32 %5696, 1
  %5698 = add nsw i32 %5697, 532487669
  %5699 = bitcast i32 %5698 to float
  %5700 = fadd fast float %5699, %5677
  %5701 = fmul fast float %5692, %5692
  %5702 = fmul fast float %5701, %5689
  %5703 = fmul fast float %5702, %5700
  %5704 = fdiv fast float 1.000000e+00, %5703
  %5705 = bitcast float %5680 to i32
  %5706 = sitofp i32 %5705 to float
  %5707 = fmul fast float %5706, 0x3FE7F73180000000
  %5708 = fadd fast float %5707, 0x41AFE27C40000000
  %5709 = fptosi float %5708 to i32
  %5710 = bitcast i32 %5709 to float
  %5711 = fmul fast float %5345, 0x3FD80E9D60000000
  %5712 = fmul fast float %5711, %5663
  %5713 = fadd fast float %5710, %5712
  %5714 = bitcast float %5713 to i32
  %5715 = sub nsw i32 2129859010, %5714
  %5716 = bitcast i32 %5715 to float
  %5717 = fmul fast float %5680, %5704
  %5718 = fmul fast float %5717, %5710
  %5719 = fmul fast float %5718, %5716
  %5720 = fmul fast float %3714, 0x3FF9999980000000
  %5721 = fsub fast float 5.000000e+00, %5720
  %5722 = call float @dx.op.unary.f32(i32 6, float %5653)  ; FAbs(value)
  %5723 = fsub fast float 1.000000e+00, %5722
  %5724 = fmul fast float %3714, 0x41D9660740000000
  %5725 = fadd fast float %5724, 0xC1EFBF8940000000
  %5726 = bitcast float %5723 to i32
  %5727 = sitofp i32 %5726 to float
  %5728 = fmul fast float %5727, %5721
  %5729 = fadd fast float %5725, %5728
  %5730 = fptosi float %5729 to i32
  %5731 = bitcast i32 %5730 to float
  %5732 = fsub fast float 1.000000e+00, %2404
  %5733 = fsub fast float 1.000000e+00, %2405
  %5734 = fsub fast float 1.000000e+00, %2446
  %5735 = fmul fast float %5731, %5732
  %5736 = fmul fast float %5731, %5733
  %5737 = fmul fast float %5731, %5734
  %5738 = fadd fast float %5735, %2404
  %5739 = fadd fast float %5736, %2405
  %5740 = fadd fast float %5737, %2446
  br i1 %3737, label %5741, label %5764

; <label>:5741                                    ; preds = %5624
  %5742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %60, float %1743, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5743 = extractvalue %dx.types.ResRet.f32 %5742, 0
  %5744 = extractvalue %dx.types.ResRet.f32 %5742, 1
  %5745 = extractvalue %dx.types.ResRet.f32 %5742, 2
  %5746 = fadd fast float %5743, -5.000000e-01
  %5747 = fadd fast float %5744, -5.000000e-01
  %5748 = fadd fast float %5745, -5.000000e-01
  %5749 = fmul fast float %2404, 4.000000e+00
  %5750 = fmul fast float %5749, %5732
  %5751 = fmul fast float %5750, %5746
  %5752 = fmul fast float %2405, 4.000000e+00
  %5753 = fmul fast float %5752, %5733
  %5754 = fmul fast float %5753, %5747
  %5755 = fmul fast float %2446, 4.000000e+00
  %5756 = fmul fast float %5755, %5734
  %5757 = fmul fast float %5756, %5748
  %5758 = fadd fast float %5751, %5738
  %5759 = fadd fast float %5754, %5739
  %5760 = fadd fast float %5757, %5740
  %5761 = call float @dx.op.unary.f32(i32 7, float %5758)  ; Saturate(value)
  %5762 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5763 = call float @dx.op.unary.f32(i32 7, float %5760)  ; Saturate(value)
  br label %5764

; <label>:5764                                    ; preds = %5741, %5624
  %5765 = phi float [ %5761, %5741 ], [ %5738, %5624 ]
  %5766 = phi float [ %5762, %5741 ], [ %5739, %5624 ]
  %5767 = phi float [ %5763, %5741 ], [ %5740, %5624 ]
  %5768 = fmul fast float %5652, 9.843750e-01
  %5769 = fadd fast float %5768, 7.812500e-03
  %5770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %60, float %5769, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5771 = extractvalue %dx.types.ResRet.f32 %5770, 0
  %5772 = extractvalue %dx.types.ResRet.f32 %5770, 1
  %5773 = extractvalue %dx.types.ResRet.f32 %5770, 2
  %5774 = extractvalue %dx.types.ResRet.f32 %5770, 3
  %5775 = fsub fast float %5773, %5771
  %5776 = fsub fast float %5774, %5772
  %5777 = fmul fast float %5775, %3724
  %5778 = fmul fast float %5776, %3724
  %5779 = fadd fast float %5777, %5771
  %5780 = fadd fast float %5778, %5772
  %5781 = fmul fast float %5779, %2404
  %5782 = fmul fast float %5779, %2405
  %5783 = fmul fast float %5779, %2446
  %5784 = fadd fast float %5781, %5780
  %5785 = fadd fast float %5782, %5780
  %5786 = fadd fast float %5783, %5780
  br i1 %3737, label %5787, label %5810

; <label>:5787                                    ; preds = %5764
  %5788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %60, float %1743, float %5652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5789 = extractvalue %dx.types.ResRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.ResRet.f32 %5788, 1
  %5791 = extractvalue %dx.types.ResRet.f32 %5788, 2
  %5792 = fadd fast float %5789, -5.000000e-01
  %5793 = fadd fast float %5790, -5.000000e-01
  %5794 = fadd fast float %5791, -5.000000e-01
  %5795 = fmul fast float %2404, 4.000000e+00
  %5796 = fmul fast float %5795, %5732
  %5797 = fmul fast float %5796, %5792
  %5798 = fmul fast float %2405, 4.000000e+00
  %5799 = fmul fast float %5798, %5733
  %5800 = fmul fast float %5799, %5793
  %5801 = fmul fast float %2446, 4.000000e+00
  %5802 = fmul fast float %5801, %5734
  %5803 = fmul fast float %5802, %5794
  %5804 = fadd fast float %5797, %5784
  %5805 = fadd fast float %5800, %5785
  %5806 = fadd fast float %5803, %5786
  %5807 = call float @dx.op.unary.f32(i32 7, float %5804)  ; Saturate(value)
  %5808 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5809 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  br label %5810

; <label>:5810                                    ; preds = %5787, %5764
  %5811 = phi float [ %5807, %5787 ], [ %5784, %5764 ]
  %5812 = phi float [ %5808, %5787 ], [ %5785, %5764 ]
  %5813 = phi float [ %5809, %5787 ], [ %5786, %5764 ]
  %5814 = call float @dx.op.binary.f32(i32 35, float %5812, float %5813)  ; FMax(a,b)
  %5815 = call float @dx.op.binary.f32(i32 35, float %5811, float %5814)  ; FMax(a,b)
  %5816 = fsub fast float 1.000000e+00, %5815
  %5817 = call float @dx.op.binary.f32(i32 35, float %5677, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5818 = fdiv fast float %1149, %5817
  %5819 = fmul fast float %3795, %5818
  %5820 = fmul fast float %3797, %5818
  %5821 = fmul fast float %3799, %5818
  %5822 = call float @dx.op.unary.f32(i32 21, float %5819)  ; Exp(value)
  %5823 = call float @dx.op.unary.f32(i32 21, float %5820)  ; Exp(value)
  %5824 = call float @dx.op.unary.f32(i32 21, float %5821)  ; Exp(value)
  %5825 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5826 = call float @dx.op.unary.f32(i32 7, float %5823)  ; Saturate(value)
  %5827 = call float @dx.op.unary.f32(i32 7, float %5824)  ; Saturate(value)
  %5828 = select i1 %3792, float %5825, float 0.000000e+00
  %5829 = select i1 %3793, float %5826, float 0.000000e+00
  %5830 = select i1 %3794, float %5827, float 0.000000e+00
  %5831 = fsub fast float -0.000000e+00, %2401
  %5832 = fsub fast float -0.000000e+00, %2402
  %5833 = fsub fast float -0.000000e+00, %2403
  %5834 = call float @dx.op.dot3.f32(i32 55, float %5383, float %5384, float %5385, float %5831, float %5832, float %5833)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  %5836 = fmul fast float %5835, %5390
  %5837 = fmul fast float %5835, 9.843750e-01
  %5838 = fadd fast float %5837, 7.812500e-03
  %5839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %60, float %5838, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5840 = extractvalue %dx.types.ResRet.f32 %5839, 0
  %5841 = extractvalue %dx.types.ResRet.f32 %5839, 1
  %5842 = extractvalue %dx.types.ResRet.f32 %5839, 2
  %5843 = extractvalue %dx.types.ResRet.f32 %5839, 3
  %5844 = fsub fast float %5842, %5840
  %5845 = fsub fast float %5843, %5841
  %5846 = fmul fast float %5844, %3724
  %5847 = fmul fast float %5845, %3724
  %5848 = fadd fast float %5846, %5840
  %5849 = fadd fast float %5847, %5841
  %5850 = fmul fast float %5848, %2404
  %5851 = fmul fast float %5848, %2405
  %5852 = fmul fast float %5848, %2446
  %5853 = fadd fast float %5850, %5849
  %5854 = fadd fast float %5851, %5849
  %5855 = fadd fast float %5852, %5849
  br i1 %3737, label %5856, label %5879

; <label>:5856                                    ; preds = %5810
  %5857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %60, float %1743, float %5835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.ResRet.f32 %5857, 2
  %5861 = fadd fast float %5858, -5.000000e-01
  %5862 = fadd fast float %5859, -5.000000e-01
  %5863 = fadd fast float %5860, -5.000000e-01
  %5864 = fmul fast float %2404, 4.000000e+00
  %5865 = fmul fast float %5864, %5732
  %5866 = fmul fast float %5865, %5861
  %5867 = fmul fast float %2405, 4.000000e+00
  %5868 = fmul fast float %5867, %5733
  %5869 = fmul fast float %5868, %5862
  %5870 = fmul fast float %2446, 4.000000e+00
  %5871 = fmul fast float %5870, %5734
  %5872 = fmul fast float %5871, %5863
  %5873 = fadd fast float %5866, %5853
  %5874 = fadd fast float %5869, %5854
  %5875 = fadd fast float %5872, %5855
  %5876 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  %5877 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5878 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  br label %5879

; <label>:5879                                    ; preds = %5856, %5810
  %5880 = phi float [ %5876, %5856 ], [ %5853, %5810 ]
  %5881 = phi float [ %5877, %5856 ], [ %5854, %5810 ]
  %5882 = phi float [ %5878, %5856 ], [ %5855, %5810 ]
  %5883 = call float @dx.op.binary.f32(i32 35, float %5881, float %5882)  ; FMax(a,b)
  %5884 = call float @dx.op.binary.f32(i32 35, float %5880, float %5883)  ; FMax(a,b)
  %5885 = fsub fast float 1.000000e+00, %5884
  %5886 = fmul fast float %3854, %3860
  %5887 = fadd fast float %3853, %5886
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = fsub fast float %5664, %2454
  %5890 = fsub fast float %5665, %2455
  %5891 = fsub fast float %5666, %2456
  %5892 = call float @dx.op.dot3.f32(i32 55, float %5889, float %5890, float %5891, float %5889, float %5890, float %5891)  ; Dot3(ax,ay,az,bx,by,bz)
  %5893 = call float @dx.op.unary.f32(i32 25, float %5892)  ; Rsqrt(value)
  %5894 = fmul fast float %5889, %5893
  %5895 = fmul fast float %5890, %5893
  %5896 = fmul fast float %5891, %5893
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5831, float %5832, float %5833, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = fmul fast float %5897, %5897
  %5899 = call float @dx.op.unary.f32(i32 6, float %5835)  ; FAbs(value)
  %5900 = call float @dx.op.binary.f32(i32 35, float %5888, float 0x3F847AE140000000)  ; FMax(a,b)
  %5901 = fmul fast float %5900, %5900
  %5902 = fmul fast float %5901, %5901
  %5903 = fsub fast float 1.000000e+00, %5902
  %5904 = fmul fast float %5682, %5903
  %5905 = fadd fast float %5904, %5902
  %5906 = bitcast float %5905 to i32
  %5907 = ashr i32 %5906, 1
  %5908 = add nsw i32 %5907, 532487669
  %5909 = bitcast i32 %5908 to float
  %5910 = fadd fast float %5909, %2448
  %5911 = fmul fast float %5902, %5898
  %5912 = fsub fast float 1.000000e+00, %5898
  %5913 = fadd fast float %5912, %5911
  %5914 = fmul fast float %5899, %5899
  %5915 = fmul fast float %5914, %5903
  %5916 = fadd fast float %5915, %5902
  %5917 = bitcast float %5916 to i32
  %5918 = ashr i32 %5917, 1
  %5919 = add nsw i32 %5918, 532487669
  %5920 = bitcast i32 %5919 to float
  %5921 = fadd fast float %5920, %5899
  %5922 = fmul fast float %5913, %5913
  %5923 = fmul fast float %5922, %5910
  %5924 = fmul fast float %5923, %5921
  %5925 = fdiv fast float 1.000000e+00, %5924
  %5926 = bitcast float %5902 to i32
  %5927 = sitofp i32 %5926 to float
  %5928 = fmul fast float %5927, 0x3FE7F73180000000
  %5929 = fadd fast float %5928, 0x41AFE27C40000000
  %5930 = fptosi float %5929 to i32
  %5931 = bitcast i32 %5930 to float
  %5932 = fadd fast float %5931, %5712
  %5933 = bitcast float %5932 to i32
  %5934 = sub nsw i32 2129859010, %5933
  %5935 = bitcast i32 %5934 to float
  %5936 = fmul fast float %5902, %5925
  %5937 = fmul fast float %5936, %5931
  %5938 = fmul fast float %5937, %5935
  br i1 %5375, label %5939, label %5949

; <label>:5939                                    ; preds = %5879
  %5940 = fmul fast float %5836, %5828
  %5941 = fmul fast float %5836, %5829
  %5942 = fmul fast float %5836, %5830
  %5943 = fmul fast float %5940, %5885
  %5944 = fmul fast float %5943, %5938
  %5945 = fmul fast float %5941, %5885
  %5946 = fmul fast float %5945, %5938
  %5947 = fmul fast float %5942, %5885
  %5948 = fmul fast float %5947, %5938
  br label %5949

; <label>:5949                                    ; preds = %5939, %5879
  %5950 = phi float [ %5944, %5939 ], [ 0.000000e+00, %5879 ]
  %5951 = phi float [ %5946, %5939 ], [ 0.000000e+00, %5879 ]
  %5952 = phi float [ %5948, %5939 ], [ 0.000000e+00, %5879 ]
  %5953 = fmul fast float %5765, %5719
  %5954 = fmul fast float %5766, %5719
  %5955 = fmul fast float %5767, %5719
  %5956 = fsub fast float 1.000000e+00, %5653
  %5957 = bitcast float %5956 to i32
  %5958 = sitofp i32 %5957 to float
  %5959 = fmul fast float %5958, 5.000000e+00
  %5960 = fadd fast float %5959, 0xC1EFBF8940000000
  %5961 = fptosi float %5960 to i32
  %5962 = bitcast i32 %5961 to float
  %5963 = fmul fast float %5962, %1742
  %5964 = fmul fast float %5816, %5963
  %5965 = fmul fast float %5964, %3787
  %5966 = fmul fast float %5964, %3788
  %5967 = fmul fast float %5964, %3789
  %5968 = fadd fast float %5965, %5953
  %5969 = fadd fast float %5966, %5954
  %5970 = fadd fast float %5967, %5955
  %5971 = fmul fast float %5968, %5659
  %5972 = fmul fast float %5969, %5659
  %5973 = fmul fast float %5970, %5659
  %5974 = fadd fast float %5971, %5950
  %5975 = fadd fast float %5972, %5951
  %5976 = fadd fast float %5973, %5952
  %5977 = fmul fast float %5641, %1766
  %5978 = fmul fast float %5977, %5659
  %5979 = fmul fast float %5978, %5816
  %5980 = fmul fast float %5642, %1766
  %5981 = fmul fast float %5980, %5659
  %5982 = fmul fast float %5981, %5816
  %5983 = fmul fast float %5643, %1766
  %5984 = fmul fast float %5983, %5659
  %5985 = fmul fast float %5984, %5816
  %5986 = fadd fast float %5979, %5319
  %5987 = fadd fast float %5982, %5320
  %5988 = fadd fast float %5985, %5321
  %5989 = fmul fast float %5977, %5974
  %5990 = fmul fast float %5980, %5975
  %5991 = fmul fast float %5983, %5976
  %5992 = fadd fast float %5989, %5316
  %5993 = fadd fast float %5990, %5317
  %5994 = fadd fast float %5991, %5318
  br label %5449

; <label>:5995                                    ; preds = %5449
  br label %5996

; <label>:5996                                    ; preds = %5995, %5282
  %5997 = phi float [ %5284, %5282 ], [ %5450, %5995 ]
  %5998 = phi float [ %5285, %5282 ], [ %5451, %5995 ]
  %5999 = phi float [ %5286, %5282 ], [ %5452, %5995 ]
  %6000 = phi float [ %5287, %5282 ], [ %5453, %5995 ]
  %6001 = phi float [ %5288, %5282 ], [ %5454, %5995 ]
  %6002 = phi float [ %5289, %5282 ], [ %5455, %5995 ]
  %6003 = add i32 %5283, 1
  %6004 = icmp ugt i32 %6003, %5279
  br i1 %6004, label %6005, label %5282

; <label>:6005                                    ; preds = %5996
  br label %6006

; <label>:6006                                    ; preds = %6005, %5232, %5222
  %6007 = phi float [ %5223, %5222 ], [ %5223, %5232 ], [ %5997, %6005 ]
  %6008 = phi float [ %5224, %5222 ], [ %5224, %5232 ], [ %5998, %6005 ]
  %6009 = phi float [ %5225, %5222 ], [ %5225, %5232 ], [ %5999, %6005 ]
  %6010 = phi float [ %5226, %5222 ], [ %5226, %5232 ], [ %6000, %6005 ]
  %6011 = phi float [ %5227, %5222 ], [ %5227, %5232 ], [ %6001, %6005 ]
  %6012 = phi float [ %5228, %5222 ], [ %5228, %5232 ], [ %6002, %6005 ]
  %6013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.f32 %6013, 0
  %6015 = fmul fast float %6014, %3867
  %6016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6017 = extractvalue %dx.types.CBufRet.f32 %6016, 3
  %6018 = fsub fast float 1.000000e+00, %1738
  %6019 = call float @dx.op.unary.f32(i32 7, float %6018)  ; Saturate(value)
  %6020 = fadd fast float %6012, %1737
  %6021 = fmul fast float %6020, %1738
  %6022 = fmul fast float %6019, %6017
  %6023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6024 = extractvalue %dx.types.CBufRet.f32 %6023, 3
  %6025 = fmul fast float %6010, %2398
  %6026 = fmul fast float %6011, %2399
  %6027 = fmul fast float %6012, %2400
  %6028 = fcmp fast ogt float %83, %190
  %6029 = and i1 %6028, %2203
  %6030 = or i1 %2209, %6029
  %6031 = icmp eq i32 %2202, 2
  %6032 = fcmp fast ole float %83, %190
  %6033 = and i1 %6032, %6031
  %6034 = or i1 %6033, %6030
  br i1 %6029, label %6035, label %6284

; <label>:6035                                    ; preds = %6006
  %6036 = fmul fast float %3947, %92
  %6037 = fmul fast float %3948, %93
  %6038 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  %6039 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6040 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %60, float %6038, float %6039, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6041 = extractvalue %dx.types.ResRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.ResRet.f32 %6040, 1
  %6043 = extractvalue %dx.types.ResRet.f32 %6040, 2
  %6044 = extractvalue %dx.types.ResRet.f32 %6040, 3
  %6045 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %60, float %6038, float %6039, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6046 = extractvalue %dx.types.ResRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.ResRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.ResRet.f32 %6045, 2
  %6049 = extractvalue %dx.types.ResRet.f32 %6045, 3
  %6050 = call float @dx.op.binary.f32(i32 35, float %6042, float %6043)  ; FMax(a,b)
  %6051 = call float @dx.op.binary.f32(i32 35, float %6041, float %6050)  ; FMax(a,b)
  %6052 = call float @dx.op.binary.f32(i32 35, float %6051, float %6044)  ; FMax(a,b)
  %6053 = call float @dx.op.binary.f32(i32 36, float %6047, float %6048)  ; FMin(a,b)
  %6054 = call float @dx.op.binary.f32(i32 36, float %6046, float %6053)  ; FMin(a,b)
  %6055 = call float @dx.op.binary.f32(i32 36, float %6054, float %6049)  ; FMin(a,b)
  %6056 = fmul fast float %6052, 2.550000e+02
  %6057 = fadd fast float %6056, 0x3F70101020000000
  %6058 = fptoui float %6057 to i32
  %6059 = fmul fast float %6055, 2.550000e+02
  %6060 = fadd fast float %6059, 0x3F70101020000000
  %6061 = fptoui float %6060 to i32
  %6062 = icmp ult i32 %6058, %6061
  br i1 %6062, label %6063, label %6229

; <label>:6063                                    ; preds = %6035
  %6064 = fcmp fast ogt float %82, 9.843750e-01
  %6065 = fadd fast float %83, -4.000000e+00
  %6066 = select i1 %6064, float -4.000000e+00, float %6065
  %6067 = call float @dx.op.binary.f32(i32 35, float %6066, float 0.000000e+00)  ; FMax(a,b)
  %6068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.f32 %6068, 0
  %6070 = fadd fast float %6069, %6067
  %6071 = extractvalue %dx.types.CBufRet.f32 %6068, 2
  %6072 = fmul fast float %6070, %6071
  %6073 = call float @dx.op.unary.f32(i32 23, float %6072)  ; Log(value)
  %6074 = extractvalue %dx.types.CBufRet.f32 %6068, 3
  %6075 = fmul fast float %6074, %6073
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6078 = fmul fast float %6075, %6077
  %6079 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6080 = uitofp i32 %6058 to float
  %6081 = uitofp i32 %6061 to float
  %6082 = fadd fast float %6080, 5.000000e-01
  %6083 = fadd fast float %6081, 5.000000e-01
  %6084 = fmul fast float %6077, %6082
  %6085 = fmul fast float %6077, %6083
  %6086 = fadd fast float %6084, 0x3F0FFB4800000000
  %6087 = fadd fast float %6085, 0xBF0FFB4800000000
  %6088 = call float @dx.op.binary.f32(i32 35, float %6079, float %6086)  ; FMax(a,b)
  %6089 = call float @dx.op.binary.f32(i32 36, float %6088, float %6087)  ; FMin(a,b)
  %6090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6090, 1
  %6092 = extractvalue %dx.types.CBufRet.f32 %6090, 2
  %6093 = extractvalue %dx.types.CBufRet.f32 %6090, 0
  %6094 = fmul fast float %6091, %6089
  %6095 = fadd fast float %6093, %6094
  %6096 = fadd fast float %6093, %6092
  %6097 = fsub fast float %6091, %6092
  %6098 = fadd fast float %6097, %6093
  %6099 = call float @dx.op.binary.f32(i32 35, float %6095, float %6096)  ; FMax(a,b)
  %6100 = call float @dx.op.binary.f32(i32 36, float %6099, float %6098)  ; FMin(a,b)
  %6101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %58, float %6038, float %6039, float %6100, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6102 = extractvalue %dx.types.ResRet.f32 %6101, 0
  %6103 = extractvalue %dx.types.ResRet.f32 %6101, 1
  %6104 = extractvalue %dx.types.ResRet.f32 %6101, 2
  %6105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.i32 %6105, 0
  %6107 = extractvalue %dx.types.CBufRet.i32 %6105, 1
  %6108 = uitofp i32 %6106 to float
  %6109 = uitofp i32 %6107 to float
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 0
  %6112 = extractvalue %dx.types.CBufRet.f32 %6110, 1
  %6113 = fmul fast float %6108, %6038
  %6114 = fmul fast float %6109, %6039
  %6115 = fadd fast float %6113, -5.000000e-01
  %6116 = fadd fast float %6114, -5.000000e-01
  %6117 = call float @dx.op.unary.f32(i32 22, float %6115)  ; Frc(value)
  %6118 = call float @dx.op.unary.f32(i32 22, float %6116)  ; Frc(value)
  %6119 = fmul fast float %6117, %6117
  %6120 = fmul fast float %6119, %6117
  %6121 = fsub fast float 3.000000e+00, %6117
  %6122 = fmul fast float %6119, %6121
  %6123 = fmul fast float %6117, 3.000000e+00
  %6124 = fmul fast float %6120, 3.000000e+00
  %6125 = fmul fast float %6119, 6.000000e+00
  %6126 = fsub fast float %6124, %6125
  %6127 = fadd fast float %6126, 4.000000e+00
  %6128 = fmul fast float %6127, 0x3FC5555560000000
  %6129 = fmul fast float %6120, -3.000000e+00
  %6130 = fadd fast float %6119, %6117
  %6131 = fmul fast float %6130, 3.000000e+00
  %6132 = fadd fast float %6129, 1.000000e+00
  %6133 = fadd fast float %6132, %6131
  %6134 = fmul fast float %6120, 0x3FC5555560000000
  %6135 = fmul fast float %6118, %6118
  %6136 = fmul fast float %6135, %6118
  %6137 = fsub fast float 3.000000e+00, %6118
  %6138 = fmul fast float %6135, %6137
  %6139 = fmul fast float %6118, 3.000000e+00
  %6140 = fmul fast float %6136, 3.000000e+00
  %6141 = fmul fast float %6135, 6.000000e+00
  %6142 = fsub fast float %6140, %6141
  %6143 = fadd fast float %6142, 4.000000e+00
  %6144 = fmul fast float %6143, 0x3FC5555560000000
  %6145 = fmul fast float %6136, -3.000000e+00
  %6146 = fadd fast float %6135, %6118
  %6147 = fmul fast float %6146, 3.000000e+00
  %6148 = fadd fast float %6145, 1.000000e+00
  %6149 = fadd fast float %6148, %6147
  %6150 = fmul fast float %6136, 0x3FC5555560000000
  %6151 = fadd fast float %6117, 1.000000e+00
  %6152 = fsub fast float 1.000000e+00, %6123
  %6153 = fadd fast float %6152, %6122
  %6154 = fadd fast float %6153, %6127
  %6155 = fmul fast float %6154, 0x3FC5555560000000
  %6156 = fdiv fast float %6128, %6155
  %6157 = fsub fast float %6151, %6156
  %6158 = fsub fast float 1.000000e+00, %6117
  %6159 = fadd fast float %6133, %6120
  %6160 = fmul fast float %6159, 0x3FC5555560000000
  %6161 = fdiv fast float %6134, %6160
  %6162 = fadd fast float %6158, %6161
  %6163 = fadd fast float %6118, 1.000000e+00
  %6164 = fsub fast float 1.000000e+00, %6139
  %6165 = fadd fast float %6164, %6138
  %6166 = fadd fast float %6165, %6143
  %6167 = fmul fast float %6166, 0x3FC5555560000000
  %6168 = fdiv fast float %6144, %6167
  %6169 = fsub fast float %6163, %6168
  %6170 = fsub fast float 1.000000e+00, %6118
  %6171 = fadd fast float %6149, %6136
  %6172 = fmul fast float %6171, 0x3FC5555560000000
  %6173 = fdiv fast float %6150, %6172
  %6174 = fadd fast float %6173, %6170
  %6175 = fmul fast float %6157, %6111
  %6176 = fsub fast float %6038, %6175
  %6177 = fmul fast float %6162, %6111
  %6178 = fadd fast float %6177, %6038
  %6179 = fmul fast float %6174, %6112
  %6180 = fadd fast float %6179, %6039
  %6181 = fmul fast float %6169, %6112
  %6182 = fsub fast float %6039, %6181
  %6183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %6176, float %6182, float %6100, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.ResRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.ResRet.f32 %6183, 2
  %6187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %6178, float %6182, float %6100, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6188 = extractvalue %dx.types.ResRet.f32 %6187, 0
  %6189 = extractvalue %dx.types.ResRet.f32 %6187, 1
  %6190 = extractvalue %dx.types.ResRet.f32 %6187, 2
  %6191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %6176, float %6180, float %6100, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6192 = extractvalue %dx.types.ResRet.f32 %6191, 0
  %6193 = extractvalue %dx.types.ResRet.f32 %6191, 1
  %6194 = extractvalue %dx.types.ResRet.f32 %6191, 2
  %6195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %6178, float %6180, float %6100, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6196 = extractvalue %dx.types.ResRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.ResRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.ResRet.f32 %6195, 2
  %6199 = fsub fast float %6192, %6184
  %6200 = fsub fast float %6193, %6185
  %6201 = fsub fast float %6194, %6186
  %6202 = fmul fast float %6199, %6172
  %6203 = fmul fast float %6200, %6172
  %6204 = fmul fast float %6201, %6172
  %6205 = fadd fast float %6202, %6184
  %6206 = fadd fast float %6203, %6185
  %6207 = fadd fast float %6204, %6186
  %6208 = fsub fast float %6196, %6188
  %6209 = fsub fast float %6197, %6189
  %6210 = fsub fast float %6198, %6190
  %6211 = fmul fast float %6208, %6172
  %6212 = fmul fast float %6209, %6172
  %6213 = fmul fast float %6210, %6172
  %6214 = fsub fast float %6188, %6205
  %6215 = fadd fast float %6214, %6211
  %6216 = fsub fast float %6189, %6206
  %6217 = fadd fast float %6216, %6212
  %6218 = fsub fast float %6190, %6207
  %6219 = fadd fast float %6218, %6213
  %6220 = fmul fast float %6215, %6160
  %6221 = fmul fast float %6217, %6160
  %6222 = fmul fast float %6219, %6160
  %6223 = fadd fast float %6220, %6205
  %6224 = fadd fast float %6221, %6206
  %6225 = fadd fast float %6222, %6207
  %6226 = fmul fast float %6223, %4002
  %6227 = fmul fast float %6224, %4002
  %6228 = fmul fast float %6225, %4002
  br label %6229

; <label>:6229                                    ; preds = %6063, %6035
  %6230 = phi float [ %6102, %6063 ], [ 1.000000e+00, %6035 ]
  %6231 = phi float [ %6103, %6063 ], [ 1.000000e+00, %6035 ]
  %6232 = phi float [ %6104, %6063 ], [ 1.000000e+00, %6035 ]
  %6233 = phi float [ %6226, %6063 ], [ 0.000000e+00, %6035 ]
  %6234 = phi float [ %6227, %6063 ], [ 0.000000e+00, %6035 ]
  %6235 = phi float [ %6228, %6063 ], [ 0.000000e+00, %6035 ]
  %6236 = call float @dx.op.dot3.f32(i32 55, float %6230, float %6231, float %6232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = call float @dx.op.dot3.f32(i32 55, float %6233, float %6234, float %6235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6238 = select i1 %230, float %6236, float %6230
  %6239 = select i1 %230, float %6236, float %6231
  %6240 = select i1 %230, float 1.000000e+00, float %6232
  %6241 = select i1 %230, float %6237, float %6233
  %6242 = select i1 %230, float 0.000000e+00, float %6234
  %6243 = select i1 %230, float 0.000000e+00, float %6235
  %6244 = fmul fast float %6238, %6025
  %6245 = fmul fast float %6239, %6026
  %6246 = fmul fast float %6240, %6027
  %6247 = fadd fast float %6244, %6241
  %6248 = fadd fast float %6245, %6242
  %6249 = fadd fast float %6243, %6246
  %6250 = fmul fast float %6238, %6007
  %6251 = fmul fast float %6239, %6008
  %6252 = fmul fast float %6240, %6009
  %6253 = fmul fast float %2413, %3947
  %6254 = fmul fast float %2415, %3948
  %6255 = fsub fast float 1.000000e+00, %6253
  %6256 = fsub fast float 1.000000e+00, %6254
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.CBufRet.f32 %6257, 1
  %6260 = extractvalue %dx.types.CBufRet.f32 %6257, 2
  %6261 = fmul fast float %6255, %6258
  %6262 = fmul fast float %6255, %6259
  %6263 = fmul fast float %6255, %6260
  %6264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.CBufRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.CBufRet.f32 %6264, 2
  %6268 = fmul fast float %6256, %6265
  %6269 = fmul fast float %6256, %6266
  %6270 = fmul fast float %6256, %6267
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6275 = fadd fast float %6268, %6272
  %6276 = fadd fast float %6275, %6261
  %6277 = fadd fast float %6269, %6273
  %6278 = fadd fast float %6277, %6262
  %6279 = fadd fast float %6270, %6274
  %6280 = fadd fast float %6279, %6263
  %6281 = fmul fast float %6276, %190
  %6282 = fmul fast float %6278, %190
  %6283 = fmul fast float %6280, %190
  br label %6284

; <label>:6284                                    ; preds = %6229, %6006
  %6285 = phi float [ %6281, %6229 ], [ %139, %6006 ]
  %6286 = phi float [ %6282, %6229 ], [ %140, %6006 ]
  %6287 = phi float [ %6283, %6229 ], [ %141, %6006 ]
  %6288 = phi float [ %190, %6229 ], [ %83, %6006 ]
  %6289 = phi float [ %6247, %6229 ], [ %6025, %6006 ]
  %6290 = phi float [ %6248, %6229 ], [ %6026, %6006 ]
  %6291 = phi float [ %6249, %6229 ], [ %6027, %6006 ]
  %6292 = phi float [ %6250, %6229 ], [ %6007, %6006 ]
  %6293 = phi float [ %6251, %6229 ], [ %6008, %6006 ]
  %6294 = phi float [ %6252, %6229 ], [ %6009, %6006 ]
  %6295 = phi float [ %6230, %6229 ], [ 1.000000e+00, %6006 ]
  br i1 %6034, label %7437, label %6296

; <label>:6296                                    ; preds = %6284
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.CBufRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.CBufRet.f32 %6297, 2
  %6301 = extractvalue %dx.types.CBufRet.f32 %6297, 3
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.CBufRet.f32 %6302, 2
  %6306 = extractvalue %dx.types.CBufRet.f32 %6302, 3
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6311 = extractvalue %dx.types.CBufRet.f32 %6307, 3
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6314 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6315 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6316 = extractvalue %dx.types.CBufRet.f32 %6312, 3
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 3
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 3
  %6321 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6322 = extractvalue %dx.types.CBufRet.f32 %6319, 1
  %6323 = extractvalue %dx.types.CBufRet.f32 %6319, 2
  %6324 = fcmp fast olt float %6323, -5.000000e-01
  %6325 = call float @dx.op.dot3.f32(i32 55, float %6285, float %6286, float %6287, float %6285, float %6286, float %6287)  ; Dot3(ax,ay,az,bx,by,bz)
  %6326 = call float @dx.op.unary.f32(i32 25, float %6325)  ; Rsqrt(value)
  %6327 = fmul fast float %6326, %6325
  %6328 = fmul fast float %6326, %6285
  %6329 = fmul fast float %6326, %6286
  %6330 = fmul fast float %6326, %6287
  %6331 = fadd fast float %6327, %6301
  %6332 = call float @dx.op.dot3.f32(i32 55, float %6328, float %6329, float %6330, float %6298, float %6299, float %6300)  ; Dot3(ax,ay,az,bx,by,bz)
  %6333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.i32 %6333, 1
  %6335 = and i32 %6334, 1
  %6336 = icmp ne i32 %6335, 0
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 2
  %6339 = fcmp fast ogt float %6338, 0.000000e+00
  %6340 = and i1 %6336, %6339
  br i1 %6340, label %6341, label %6747, !dx.controlflow.hints !136

; <label>:6341                                    ; preds = %6296
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 3
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 2
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6348 = fsub fast float %6345, %6347
  %6349 = and i32 %6334, 2
  %6350 = extractvalue %dx.types.CBufRet.i32 %6333, 0
  %6351 = call i32 @dx.op.binary.i32(i32 40, i32 %6350, i32 3)  ; UMin(a,b)
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6356 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6357 = fsub fast float %6353, %6355
  %6358 = fsub fast float %6354, %6356
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 0
  %6361 = fcmp fast ogt float %6360, 0.000000e+00
  %6362 = fsub fast float -0.000000e+00, %6357
  %6363 = fsub fast float -0.000000e+00, %6358
  %6364 = call float @dx.op.dot2.f32(i32 54, float %6328, float %6329, float %6328, float %6329)  ; Dot2(ax,ay,bx,by)
  %6365 = call float @dx.op.dot2.f32(i32 54, float %6328, float %6329, float %6362, float %6363)  ; Dot2(ax,ay,bx,by)
  %6366 = fmul fast float %6365, 2.000000e+00
  %6367 = call float @dx.op.dot2.f32(i32 54, float %6362, float %6363, float %6362, float %6363)  ; Dot2(ax,ay,bx,by)
  %6368 = fmul fast float %6360, %6360
  %6369 = fsub fast float %6367, %6368
  %6370 = fmul fast float %6366, %6366
  %6371 = fmul fast float %6364, 4.000000e+00
  %6372 = fmul fast float %6371, %6369
  %6373 = fsub fast float %6370, %6372
  %6374 = fcmp fast ogt float %6373, 0.000000e+00
  br i1 %6374, label %6375, label %6390

; <label>:6375                                    ; preds = %6341
  %6376 = fcmp fast ogt float %6366, 0.000000e+00
  %6377 = call float @dx.op.unary.f32(i32 24, float %6373)  ; Sqrt(value)
  %6378 = fsub fast float -0.000000e+00, %6377
  %6379 = select i1 %6376, float %6377, float %6378
  %6380 = fadd fast float %6379, %6366
  %6381 = fmul float %6380, -5.000000e-01
  %6382 = fdiv fast float %6381, %6364
  %6383 = call float @dx.op.binary.f32(i32 35, float %6382, float 0.000000e+00)  ; FMax(a,b)
  %6384 = call float @dx.op.binary.f32(i32 36, float %6327, float %6383)  ; FMin(a,b)
  %6385 = fdiv fast float %6369, %6381
  %6386 = call float @dx.op.binary.f32(i32 35, float %6385, float 0.000000e+00)  ; FMax(a,b)
  %6387 = call float @dx.op.binary.f32(i32 36, float %6327, float %6386)  ; FMin(a,b)
  %6388 = call float @dx.op.binary.f32(i32 36, float %6384, float %6387)  ; FMin(a,b)
  %6389 = call float @dx.op.binary.f32(i32 35, float %6384, float %6387)  ; FMax(a,b)
  br label %6390

; <label>:6390                                    ; preds = %6375, %6341
  %6391 = phi float [ %6389, %6375 ], [ -1.000000e+00, %6341 ]
  %6392 = phi float [ %6388, %6375 ], [ -1.000000e+00, %6341 ]
  %6393 = phi i1 [ true, %6375 ], [ false, %6341 ]
  %6394 = and i1 %6361, %6393
  br i1 %6394, label %6395, label %6397

; <label>:6395                                    ; preds = %6390
  %6396 = fcmp fast oeq float %6392, %6391
  br i1 %6396, label %6700, label %6398

; <label>:6397                                    ; preds = %6390
  br i1 %6361, label %6700, label %6398

; <label>:6398                                    ; preds = %6397, %6395
  %6399 = phi float [ %6327, %6397 ], [ %6391, %6395 ]
  %6400 = phi float [ 0.000000e+00, %6397 ], [ %6392, %6395 ]
  %6401 = icmp ne i32 %6349, 0
  %6402 = fmul fast float %6399, %6330
  %6403 = fadd fast float %6402, %6343
  %6404 = fmul fast float %6403, %6399
  %6405 = select i1 %6401, float 0.000000e+00, float %6404
  %6406 = fcmp fast oeq float %6330, 0.000000e+00
  %6407 = fdiv fast float %6348, %6330
  %6408 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6407)  ; FMax(a,b)
  %6409 = select i1 %6406, float %6399, float %6408
  %6410 = call float @dx.op.binary.f32(i32 36, float %6399, float %6409)  ; FMin(a,b)
  %6411 = fcmp fast ogt float %6330, 0.000000e+00
  %6412 = fcmp fast olt float %6348, 0.000000e+00
  br i1 %6411, label %6413, label %6470

; <label>:6413                                    ; preds = %6398
  %6414 = icmp eq i32 %6349, 0
  br i1 %6412, label %6415, label %6459

; <label>:6415                                    ; preds = %6413
  %6416 = select i1 %6414, float %6399, float 0.000000e+00
  %6417 = fsub fast float -0.000000e+00, %6416
  %6418 = call float @dx.op.unary.f32(i32 6, float %6417)  ; FAbs(value)
  %6419 = fmul fast float %6416, %6330
  %6420 = fadd fast float %6419, %6343
  %6421 = fmul fast float %6418, %6420
  %6422 = fsub fast float %6405, %6421
  %6423 = fsub fast float %6399, %6418
  %6424 = select i1 %6414, float %6423, float 0.000000e+00
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.CBufRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.CBufRet.f32 %6425, 2
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6431 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6432 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6433 = extractvalue %dx.types.CBufRet.f32 %6429, 3
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 3
  %6436 = call float @dx.op.binary.f32(i32 36, float %6422, float %6435)  ; FMin(a,b)
  %6437 = fmul fast float %6433, %6424
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6439 = fsub fast float %6430, %6426
  %6440 = fsub fast float %6431, %6427
  %6441 = fsub fast float %6432, %6428
  %6442 = fmul fast float %6438, %6439
  %6443 = fmul fast float %6438, %6440
  %6444 = fmul fast float %6438, %6441
  %6445 = fadd fast float %6442, %6426
  %6446 = fadd fast float %6443, %6427
  %6447 = fadd fast float %6444, %6428
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 0
  %6450 = extractvalue %dx.types.CBufRet.f32 %6448, 1
  %6451 = fadd fast float %6450, %6449
  %6452 = call float @dx.op.unary.f32(i32 7, float %6451)  ; Saturate(value)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6448, 2
  %6454 = extractvalue %dx.types.CBufRet.f32 %6448, 3
  %6455 = fadd fast float %6454, %6453
  %6456 = call float @dx.op.unary.f32(i32 7, float %6455)  ; Saturate(value)
  %6457 = fmul fast float %6452, %6436
  %6458 = fmul fast float %6457, %6456
  br label %6700

; <label>:6459                                    ; preds = %6413
  br i1 %6414, label %6460, label %6481

; <label>:6460                                    ; preds = %6459
  %6461 = call float @dx.op.binary.f32(i32 36, float %6410, float %6400)  ; FMin(a,b)
  %6462 = fsub fast float %6410, %6461
  %6463 = fsub fast float %6462, %6399
  %6464 = call float @dx.op.unary.f32(i32 6, float %6463)  ; FAbs(value)
  %6465 = fadd fast float %6462, %6399
  %6466 = fmul fast float %6465, %6330
  %6467 = fadd fast float %6466, %6343
  %6468 = fmul fast float %6467, %6464
  %6469 = fsub fast float %6405, %6468
  br label %6481

; <label>:6470                                    ; preds = %6398
  br i1 %6412, label %6471, label %6481

; <label>:6471                                    ; preds = %6470
  %6472 = call float @dx.op.binary.f32(i32 35, float %6400, float %6410)  ; FMax(a,b)
  %6473 = icmp eq i32 %6349, 0
  %6474 = select i1 %6473, float %6410, float 0.000000e+00
  %6475 = fsub fast float -0.000000e+00, %6474
  %6476 = call float @dx.op.unary.f32(i32 6, float %6475)  ; FAbs(value)
  %6477 = fmul fast float %6474, %6330
  %6478 = fadd fast float %6477, %6343
  %6479 = fmul fast float %6476, %6478
  %6480 = fsub fast float %6405, %6479
  br label %6481

; <label>:6481                                    ; preds = %6471, %6470, %6460, %6459
  %6482 = phi float [ %6400, %6459 ], [ %6400, %6460 ], [ %6472, %6471 ], [ %6400, %6470 ]
  %6483 = phi float [ 0.000000e+00, %6459 ], [ %6464, %6460 ], [ %6476, %6471 ], [ 0.000000e+00, %6470 ]
  %6484 = phi float [ %6405, %6459 ], [ %6469, %6460 ], [ %6480, %6471 ], [ %6405, %6470 ]
  %6485 = phi float [ %6410, %6459 ], [ %6410, %6460 ], [ %6399, %6471 ], [ %6399, %6470 ]
  %6486 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %6486, align 4, !tbaa !137, !noalias !139
  %6487 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %6487, align 4, !tbaa !137, !noalias !139
  %6488 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %6488, align 4, !tbaa !137, !noalias !139
  %6489 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 0
  store float -1.000000e+00, float* %6489, align 4, !tbaa !137, !noalias !139
  %6490 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 1
  store float -1.000000e+00, float* %6490, align 4, !tbaa !137, !noalias !139
  %6491 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 2
  store float -1.000000e+00, float* %6491, align 4, !tbaa !137, !noalias !139
  %6492 = icmp sgt i32 %6351, 0
  br i1 %6492, label %6493, label %6554

; <label>:6493                                    ; preds = %6481
  br label %6494

; <label>:6494                                    ; preds = %6543, %6493
  %6495 = phi i32 [ %6544, %6543 ], [ 0, %6493 ]
  %6496 = phi i32 [ %6545, %6543 ], [ 0, %6493 ]
  %6497 = add nuw i32 %6496, 171
  %6498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 %6497)  ; CBufferLoadLegacy(handle,regIndex)
  %6499 = extractvalue %dx.types.CBufRet.f32 %6498, 0
  %6500 = extractvalue %dx.types.CBufRet.f32 %6498, 1
  %6501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6502 = extractvalue %dx.types.CBufRet.f32 %6501, 0
  %6503 = extractvalue %dx.types.CBufRet.f32 %6501, 1
  %6504 = fsub fast float %6499, %6502
  %6505 = fsub fast float %6500, %6503
  %6506 = extractvalue %dx.types.CBufRet.f32 %6498, 2
  %6507 = fsub fast float -0.000000e+00, %6504
  %6508 = fsub fast float -0.000000e+00, %6505
  %6509 = call float @dx.op.dot2.f32(i32 54, float %6328, float %6329, float %6507, float %6508)  ; Dot2(ax,ay,bx,by)
  %6510 = fmul fast float %6509, 2.000000e+00
  %6511 = call float @dx.op.dot2.f32(i32 54, float %6507, float %6508, float %6507, float %6508)  ; Dot2(ax,ay,bx,by)
  %6512 = fmul fast float %6506, %6506
  %6513 = fsub fast float %6511, %6512
  %6514 = fmul fast float %6510, %6510
  %6515 = fmul fast float %6371, %6513
  %6516 = fsub fast float %6514, %6515
  %6517 = fcmp fast ogt float %6516, 0.000000e+00
  br i1 %6517, label %6518, label %6533

; <label>:6518                                    ; preds = %6494
  %6519 = fcmp fast ogt float %6510, 0.000000e+00
  %6520 = call float @dx.op.unary.f32(i32 24, float %6516)  ; Sqrt(value)
  %6521 = fsub fast float -0.000000e+00, %6520
  %6522 = select i1 %6519, float %6520, float %6521
  %6523 = fadd fast float %6522, %6510
  %6524 = fmul float %6523, -5.000000e-01
  %6525 = fdiv fast float %6524, %6364
  %6526 = call float @dx.op.binary.f32(i32 35, float %6525, float 0.000000e+00)  ; FMax(a,b)
  %6527 = call float @dx.op.binary.f32(i32 36, float %6399, float %6526)  ; FMin(a,b)
  %6528 = fdiv fast float %6513, %6524
  %6529 = call float @dx.op.binary.f32(i32 35, float %6528, float 0.000000e+00)  ; FMax(a,b)
  %6530 = call float @dx.op.binary.f32(i32 36, float %6399, float %6529)  ; FMin(a,b)
  %6531 = call float @dx.op.binary.f32(i32 36, float %6527, float %6530)  ; FMin(a,b)
  %6532 = call float @dx.op.binary.f32(i32 35, float %6527, float %6530)  ; FMax(a,b)
  br label %6533

; <label>:6533                                    ; preds = %6518, %6494
  %6534 = phi float [ %6532, %6518 ], [ -1.000000e+00, %6494 ]
  %6535 = phi float [ %6531, %6518 ], [ -1.000000e+00, %6494 ]
  %6536 = phi i1 [ true, %6518 ], [ false, %6494 ]
  br i1 %6536, label %6537, label %6543

; <label>:6537                                    ; preds = %6533
  %6538 = call float @dx.op.binary.f32(i32 35, float %6482, float %6535)  ; FMax(a,b)
  %6539 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %6496
  store float %6538, float* %6539, align 4, !tbaa !137, !noalias !139
  %6540 = call float @dx.op.binary.f32(i32 35, float %6482, float %6534)  ; FMax(a,b)
  %6541 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %6496
  store float %6540, float* %6541, align 4, !tbaa !137, !noalias !139
  %6542 = add nsw i32 %6495, 1
  br label %6543

; <label>:6543                                    ; preds = %6537, %6533
  %6544 = phi i32 [ %6542, %6537 ], [ %6495, %6533 ]
  %6545 = add nuw nsw i32 %6496, 1
  %6546 = icmp eq i32 %6545, %6351
  br i1 %6546, label %6547, label %6494

; <label>:6547                                    ; preds = %6543
  %6548 = load float, float* %6488, align 4, !tbaa !137, !alias.scope !155, !noalias !158
  %6549 = load float, float* %6487, align 4, !tbaa !137, !alias.scope !161, !noalias !162
  %6550 = load float, float* %6486, align 4, !tbaa !137, !alias.scope !163, !noalias !164
  %6551 = load float, float* %6491, align 4, !tbaa !137, !alias.scope !165, !noalias !168
  %6552 = load float, float* %6490, align 4, !tbaa !137, !alias.scope !171, !noalias !172
  %6553 = load float, float* %6489, align 4, !tbaa !137, !alias.scope !173, !noalias !174
  br label %6554

; <label>:6554                                    ; preds = %6547, %6481
  %6555 = phi float [ -1.000000e+00, %6481 ], [ %6553, %6547 ]
  %6556 = phi float [ -1.000000e+00, %6481 ], [ %6552, %6547 ]
  %6557 = phi float [ -1.000000e+00, %6481 ], [ %6551, %6547 ]
  %6558 = phi float [ -1.000000e+00, %6481 ], [ %6550, %6547 ]
  %6559 = phi float [ -1.000000e+00, %6481 ], [ %6549, %6547 ]
  %6560 = phi float [ -1.000000e+00, %6481 ], [ %6548, %6547 ]
  %6561 = phi i32 [ 0, %6481 ], [ %6544, %6547 ]
  %6562 = call float @dx.op.binary.f32(i32 36, float %6559, float %6560)  ; FMin(a,b)
  %6563 = call float @dx.op.binary.f32(i32 36, float %6558, float %6562)  ; FMin(a,b)
  %6564 = call float @dx.op.binary.f32(i32 35, float %6558, float %6559)  ; FMax(a,b)
  %6565 = call float @dx.op.binary.f32(i32 36, float %6564, float %6560)  ; FMin(a,b)
  %6566 = call float @dx.op.binary.f32(i32 36, float %6558, float %6559)  ; FMin(a,b)
  %6567 = call float @dx.op.binary.f32(i32 35, float %6566, float %6565)  ; FMax(a,b)
  %6568 = call float @dx.op.binary.f32(i32 35, float %6559, float %6560)  ; FMax(a,b)
  %6569 = call float @dx.op.binary.f32(i32 35, float %6558, float %6568)  ; FMax(a,b)
  store float %6563, float* %6486, align 4, !tbaa !137, !alias.scope !163, !noalias !164
  store float %6567, float* %6487, align 4, !tbaa !137, !alias.scope !161, !noalias !162
  store float %6569, float* %6488, align 4, !tbaa !137, !alias.scope !155, !noalias !158
  %6570 = call float @dx.op.binary.f32(i32 36, float %6556, float %6557)  ; FMin(a,b)
  %6571 = call float @dx.op.binary.f32(i32 36, float %6555, float %6570)  ; FMin(a,b)
  %6572 = call float @dx.op.binary.f32(i32 35, float %6555, float %6556)  ; FMax(a,b)
  %6573 = call float @dx.op.binary.f32(i32 36, float %6572, float %6557)  ; FMin(a,b)
  %6574 = call float @dx.op.binary.f32(i32 36, float %6555, float %6556)  ; FMin(a,b)
  %6575 = call float @dx.op.binary.f32(i32 35, float %6574, float %6573)  ; FMax(a,b)
  %6576 = call float @dx.op.binary.f32(i32 35, float %6556, float %6557)  ; FMax(a,b)
  %6577 = call float @dx.op.binary.f32(i32 35, float %6555, float %6576)  ; FMax(a,b)
  store float %6571, float* %6489, align 4, !tbaa !137, !alias.scope !173, !noalias !174
  store float %6575, float* %6490, align 4, !tbaa !137, !alias.scope !171, !noalias !172
  store float %6577, float* %6491, align 4, !tbaa !137, !alias.scope !165, !noalias !168
  %6578 = sub nsw i32 3, %6561
  %6579 = icmp sgt i32 %6578, 2
  br i1 %6579, label %6580, label %6618

; <label>:6580                                    ; preds = %6554
  %6581 = icmp eq i32 %6349, 0
  %6582 = fsub fast float %6399, %6483
  %6583 = select i1 %6581, float %6582, float %6483
  %6584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6585 = extractvalue %dx.types.CBufRet.f32 %6584, 0
  %6586 = extractvalue %dx.types.CBufRet.f32 %6584, 1
  %6587 = extractvalue %dx.types.CBufRet.f32 %6584, 2
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.CBufRet.f32 %6588, 1
  %6591 = extractvalue %dx.types.CBufRet.f32 %6588, 2
  %6592 = extractvalue %dx.types.CBufRet.f32 %6588, 3
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 3
  %6595 = call float @dx.op.binary.f32(i32 36, float %6484, float %6594)  ; FMin(a,b)
  %6596 = fmul fast float %6592, %6583
  %6597 = call float @dx.op.unary.f32(i32 7, float %6596)  ; Saturate(value)
  %6598 = fsub fast float %6589, %6585
  %6599 = fsub fast float %6590, %6586
  %6600 = fsub fast float %6591, %6587
  %6601 = fmul fast float %6597, %6598
  %6602 = fmul fast float %6597, %6599
  %6603 = fmul fast float %6597, %6600
  %6604 = fadd fast float %6601, %6585
  %6605 = fadd fast float %6602, %6586
  %6606 = fadd fast float %6603, %6587
  %6607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6608 = extractvalue %dx.types.CBufRet.f32 %6607, 0
  %6609 = extractvalue %dx.types.CBufRet.f32 %6607, 1
  %6610 = fadd fast float %6609, %6608
  %6611 = call float @dx.op.unary.f32(i32 7, float %6610)  ; Saturate(value)
  %6612 = extractvalue %dx.types.CBufRet.f32 %6607, 2
  %6613 = extractvalue %dx.types.CBufRet.f32 %6607, 3
  %6614 = fadd fast float %6613, %6612
  %6615 = call float @dx.op.unary.f32(i32 7, float %6614)  ; Saturate(value)
  %6616 = fmul fast float %6611, %6595
  %6617 = fmul fast float %6616, %6615
  br label %6700

; <label>:6618                                    ; preds = %6554
  %6619 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %6578
  %6620 = load float, float* %6619, align 4, !tbaa !137, !noalias !139
  %6621 = fcmp fast olt float %6620, %6485
  %6622 = icmp sgt i32 %6561, 0
  %6623 = and i1 %6622, %6621
  br i1 %6623, label %6624, label %6661

; <label>:6624                                    ; preds = %6618
  br label %6625

; <label>:6625                                    ; preds = %6654, %6624
  %6626 = phi float [ %6655, %6654 ], [ %6483, %6624 ]
  %6627 = phi float [ %6656, %6654 ], [ %6484, %6624 ]
  %6628 = phi float [ %6636, %6654 ], [ %6620, %6624 ]
  %6629 = phi i32 [ %6633, %6654 ], [ %6578, %6624 ]
  %6630 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %6629
  %6631 = load float, float* %6630, align 4, !tbaa !137, !noalias !139
  %6632 = icmp slt i32 %6629, 2
  %6633 = add nsw i32 %6629, 1
  %6634 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %6633
  %6635 = load float, float* %6634, align 4, !tbaa !137, !noalias !139
  %6636 = select i1 %6632, float %6635, float %6399
  %6637 = call float @dx.op.binary.f32(i32 36, float %6636, float %6631)  ; FMin(a,b)
  %6638 = call float @dx.op.binary.f32(i32 36, float %6485, float %6637)  ; FMin(a,b)
  %6639 = icmp eq i32 %6349, 0
  %6640 = fadd fast float %6638, %6628
  %6641 = fmul fast float %6640, %6330
  %6642 = fadd fast float %6641, %6343
  br i1 %6639, label %6648, label %6643

; <label>:6643                                    ; preds = %6625
  %6644 = fsub fast float %6638, %6628
  %6645 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6644)  ; FMax(a,b)
  %6646 = fmul fast float %6645, %6642
  %6647 = fadd fast float %6646, %6627
  br label %6654

; <label>:6648                                    ; preds = %6625
  %6649 = fsub fast float %6628, %6638
  %6650 = call float @dx.op.unary.f32(i32 6, float %6649)  ; FAbs(value)
  %6651 = fadd fast float %6650, %6626
  %6652 = fmul fast float %6650, %6642
  %6653 = fsub fast float %6627, %6652
  br label %6654

; <label>:6654                                    ; preds = %6648, %6643
  %6655 = phi float [ %6645, %6643 ], [ %6651, %6648 ]
  %6656 = phi float [ %6647, %6643 ], [ %6653, %6648 ]
  %6657 = fcmp fast olt float %6636, %6485
  %6658 = icmp slt i32 %6633, 3
  %6659 = and i1 %6658, %6657
  br i1 %6659, label %6625, label %6660

; <label>:6660                                    ; preds = %6654
  br label %6661

; <label>:6661                                    ; preds = %6660, %6618
  %6662 = phi float [ %6483, %6618 ], [ %6655, %6660 ]
  %6663 = phi float [ %6484, %6618 ], [ %6656, %6660 ]
  %6664 = fsub fast float %6399, %6662
  %6665 = select i1 %6401, float %6662, float %6664
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.CBufRet.f32 %6666, 1
  %6669 = extractvalue %dx.types.CBufRet.f32 %6666, 2
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  %6672 = extractvalue %dx.types.CBufRet.f32 %6670, 1
  %6673 = extractvalue %dx.types.CBufRet.f32 %6670, 2
  %6674 = extractvalue %dx.types.CBufRet.f32 %6670, 3
  %6675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6676 = extractvalue %dx.types.CBufRet.f32 %6675, 3
  %6677 = call float @dx.op.binary.f32(i32 36, float %6663, float %6676)  ; FMin(a,b)
  %6678 = fmul fast float %6674, %6665
  %6679 = call float @dx.op.unary.f32(i32 7, float %6678)  ; Saturate(value)
  %6680 = fsub fast float %6671, %6667
  %6681 = fsub fast float %6672, %6668
  %6682 = fsub fast float %6673, %6669
  %6683 = fmul fast float %6679, %6680
  %6684 = fmul fast float %6679, %6681
  %6685 = fmul fast float %6679, %6682
  %6686 = fadd fast float %6683, %6667
  %6687 = fadd fast float %6684, %6668
  %6688 = fadd fast float %6685, %6669
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6692 = fadd fast float %6691, %6690
  %6693 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6694 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6695 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6696 = fadd fast float %6695, %6694
  %6697 = call float @dx.op.unary.f32(i32 7, float %6696)  ; Saturate(value)
  %6698 = fmul fast float %6693, %6677
  %6699 = fmul fast float %6698, %6697
  br label %6700

; <label>:6700                                    ; preds = %6661, %6580, %6415, %6397, %6395
  %6701 = phi float [ %6424, %6415 ], [ %6583, %6580 ], [ %6665, %6661 ], [ 0.000000e+00, %6395 ], [ 0.000000e+00, %6397 ]
  %6702 = phi float [ %6458, %6415 ], [ %6617, %6580 ], [ %6699, %6661 ], [ 0.000000e+00, %6395 ], [ 0.000000e+00, %6397 ]
  %6703 = phi float [ %6445, %6415 ], [ %6604, %6580 ], [ %6686, %6661 ], [ 0.000000e+00, %6395 ], [ 0.000000e+00, %6397 ]
  %6704 = phi float [ %6446, %6415 ], [ %6605, %6580 ], [ %6687, %6661 ], [ 0.000000e+00, %6395 ], [ 0.000000e+00, %6397 ]
  %6705 = phi float [ %6447, %6415 ], [ %6606, %6580 ], [ %6688, %6661 ], [ 0.000000e+00, %6395 ], [ 0.000000e+00, %6397 ]
  %6706 = fmul fast float %6338, %6702
  %6707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6707, 2
  %6709 = fsub fast float %6345, %6708
  %6710 = fcmp fast olt float %6706, -2.000000e+01
  %6711 = call float @dx.op.unary.f32(i32 21, float %6706)  ; Exp(value)
  %6712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6713 = extractvalue %dx.types.CBufRet.f32 %6712, 2
  %6714 = extractvalue %dx.types.CBufRet.f32 %6712, 3
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 2
  %6717 = fmul fast float %6714, %6709
  %6718 = call float @dx.op.unary.f32(i32 7, float %6717)  ; Saturate(value)
  %6719 = fsub fast float 1.000000e+00, %6718
  %6720 = fmul fast float %6330, 5.000000e-01
  %6721 = fadd fast float %6720, 5.000000e-01
  %6722 = call float @dx.op.unary.f32(i32 7, float %6721)  ; Saturate(value)
  %6723 = fsub fast float 1.000000e+00, %6722
  %6724 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6719)  ; FMax(a,b)
  %6725 = fdiv fast float %6723, %6724
  %6726 = fsub fast float %6709, %6287
  %6727 = call float @dx.op.unary.f32(i32 6, float %6726)  ; FAbs(value)
  %6728 = fmul fast float %6727, %6713
  %6729 = call float @dx.op.unary.f32(i32 7, float %6725)  ; Saturate(value)
  %6730 = fsub fast float 1.000000e+00, %6728
  %6731 = fmul fast float %6730, %6729
  %6732 = fadd fast float %6731, %6728
  %6733 = fmul fast float %6716, %6709
  %6734 = call float @dx.op.unary.f32(i32 7, float %6733)  ; Saturate(value)
  %6735 = fsub fast float 1.000000e+00, %6732
  %6736 = fmul fast float %6735, %6734
  %6737 = fadd fast float %6736, %6732
  %6738 = call float @dx.op.unary.f32(i32 7, float %6737)  ; Saturate(value)
  %6739 = fadd fast float %6711, -1.000000e+00
  %6740 = select i1 %6710, float -1.000000e+00, float %6739
  %6741 = fmul fast float %6738, %6740
  %6742 = fadd fast float %6741, 1.000000e+00
  %6743 = fsub fast float -0.000000e+00, %6741
  %6744 = fmul fast float %6703, %6743
  %6745 = fmul fast float %6704, %6743
  %6746 = fmul fast float %6705, %6743
  br label %6747

; <label>:6747                                    ; preds = %6700, %6296
  %6748 = phi float [ %6701, %6700 ], [ 0.000000e+00, %6296 ]
  %6749 = phi float [ %6742, %6700 ], [ 1.000000e+00, %6296 ]
  %6750 = phi float [ %6744, %6700 ], [ 0.000000e+00, %6296 ]
  %6751 = phi float [ %6745, %6700 ], [ 0.000000e+00, %6296 ]
  %6752 = phi float [ %6746, %6700 ], [ 0.000000e+00, %6296 ]
  %6753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6753, 1
  %6755 = fsub fast float 1.000000e+00, %6749
  %6756 = fmul fast float %6755, %6331
  %6757 = fmul fast float %6756, %6754
  %6758 = fsub fast float %6331, %6757
  br i1 %6324, label %6759, label %6788, !dx.controlflow.hints !175

; <label>:6759                                    ; preds = %6747
  %6760 = fmul fast float %6332, %6321
  %6761 = fadd fast float %6760, %6322
  %6762 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6763 = fmul fast float %6303, %6758
  %6764 = fsub fast float -0.000000e+00, %6763
  %6765 = fmul fast float %6304, %6758
  %6766 = fsub fast float -0.000000e+00, %6765
  %6767 = call float @dx.op.unary.f32(i32 21, float %6764)  ; Exp(value)
  %6768 = call float @dx.op.unary.f32(i32 21, float %6766)  ; Exp(value)
  %6769 = call float @dx.op.binary.f32(i32 35, float %6311, float %6767)  ; FMax(a,b)
  %6770 = call float @dx.op.binary.f32(i32 35, float %6311, float %6768)  ; FMax(a,b)
  %6771 = fsub fast float %6770, %6769
  %6772 = fmul fast float %6771, %6762
  %6773 = fadd fast float %6772, %6769
  %6774 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6775 = fsub fast float %6308, %6313
  %6776 = fsub fast float %6309, %6314
  %6777 = fsub fast float %6310, %6315
  %6778 = fmul fast float %6762, %6775
  %6779 = fmul fast float %6762, %6776
  %6780 = fmul fast float %6762, %6777
  %6781 = fadd fast float %6778, %6313
  %6782 = fadd fast float %6779, %6314
  %6783 = fadd fast float %6780, %6315
  %6784 = fsub fast float 1.000000e+00, %6774
  %6785 = fmul fast float %6784, %6781
  %6786 = fmul fast float %6784, %6782
  %6787 = fmul fast float %6784, %6783
  br label %6847

; <label>:6788                                    ; preds = %6747
  %6789 = fmul fast float %6758, %6320
  %6790 = call float @dx.op.unary.f32(i32 7, float %6789)  ; Saturate(value)
  %6791 = fsub fast float 2.000000e+00, %6790
  %6792 = fmul fast float %6790, 9.921875e-01
  %6793 = fmul fast float %6792, %6791
  %6794 = fadd fast float %6793, 3.906250e-03
  %6795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %60, float %6794, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6796 = extractvalue %dx.types.ResRet.f32 %6795, 0
  %6797 = fsub fast float %6790, %6796
  %6798 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6797)  ; FMax(a,b)
  %6799 = fmul fast float %6306, %6287
  %6800 = call float @dx.op.unary.f32(i32 6, float %6799)  ; FAbs(value)
  %6801 = fcmp fast ogt float %6800, 0x3EB0C6F7A0000000
  br i1 %6801, label %6802, label %6808, !dx.controlflow.hints !176

; <label>:6802                                    ; preds = %6788
  %6803 = fmul fast float %6799, 0xBFF7154760000000
  %6804 = call float @dx.op.unary.f32(i32 21, float %6803)  ; Exp(value)
  %6805 = fsub fast float 1.000000e+00, %6804
  %6806 = fdiv fast float %6805, %6799
  %6807 = fmul fast float %6806, %6316
  br label %6808

; <label>:6808                                    ; preds = %6802, %6788
  %6809 = phi float [ %6807, %6802 ], [ %6316, %6788 ]
  %6810 = fadd fast float %6809, %6318
  %6811 = fmul fast float %6810, %6798
  %6812 = fmul fast float %6303, %6811
  %6813 = fsub fast float -0.000000e+00, %6812
  %6814 = fmul fast float %6304, %6811
  %6815 = fsub fast float -0.000000e+00, %6814
  %6816 = fmul fast float %6305, %6811
  %6817 = fsub fast float -0.000000e+00, %6816
  %6818 = call float @dx.op.unary.f32(i32 21, float %6813)  ; Exp(value)
  %6819 = call float @dx.op.unary.f32(i32 21, float %6815)  ; Exp(value)
  %6820 = call float @dx.op.unary.f32(i32 21, float %6817)  ; Exp(value)
  %6821 = fmul fast float %6332, %6332
  %6822 = fadd fast float %6821, 1.000000e+00
  %6823 = fmul fast float %6822, 0x3FAE8EC8A0000000
  %6824 = fmul fast float %6823, %6313
  %6825 = fmul fast float %6823, %6314
  %6826 = fmul fast float %6823, %6315
  %6827 = fmul fast float %6332, %6311
  %6828 = fsub fast float 1.000000e+00, %6827
  %6829 = fmul fast float %6311, %6311
  %6830 = fsub fast float 1.000000e+00, %6829
  %6831 = fmul fast float %6830, 0x3FB45F3060000000
  %6832 = fmul fast float %6828, %6828
  %6833 = fdiv fast float 1.000000e+00, %6832
  %6834 = fmul fast float %6831, %6833
  %6835 = fmul fast float %6834, %6308
  %6836 = fmul fast float %6834, %6309
  %6837 = fmul fast float %6834, %6310
  %6838 = fadd fast float %6835, %6824
  %6839 = fadd fast float %6836, %6825
  %6840 = fadd fast float %6837, %6826
  %6841 = fsub fast float 1.000000e+00, %6818
  %6842 = fsub fast float 1.000000e+00, %6819
  %6843 = fsub fast float 1.000000e+00, %6820
  %6844 = fmul fast float %6838, %6841
  %6845 = fmul fast float %6839, %6842
  %6846 = fmul fast float %6840, %6843
  br label %6847

; <label>:6847                                    ; preds = %6808, %6759
  %6848 = phi float [ %6785, %6759 ], [ %6844, %6808 ]
  %6849 = phi float [ %6786, %6759 ], [ %6845, %6808 ]
  %6850 = phi float [ %6787, %6759 ], [ %6846, %6808 ]
  %6851 = phi float [ %6774, %6759 ], [ %6818, %6808 ]
  %6852 = phi float [ %6774, %6759 ], [ %6819, %6808 ]
  %6853 = phi float [ %6774, %6759 ], [ %6820, %6808 ]
  br i1 %6340, label %6854, label %7052, !dx.controlflow.hints !177

; <label>:6854                                    ; preds = %6847
  %6855 = extractvalue %dx.types.CBufRet.f32 %6753, 0
  %6856 = fmul fast float %6855, %6755
  %6857 = fsub fast float %6750, %6848
  %6858 = fsub fast float %6751, %6849
  %6859 = fsub fast float %6752, %6850
  %6860 = fmul fast float %6856, %6857
  %6861 = fmul fast float %6856, %6858
  %6862 = fmul fast float %6856, %6859
  %6863 = fadd fast float %6860, %6848
  %6864 = fadd fast float %6861, %6849
  %6865 = fadd fast float %6862, %6850
  %6866 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6851)  ; FMax(a,b)
  %6867 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6852)  ; FMax(a,b)
  %6868 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6853)  ; FMax(a,b)
  %6869 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6749)  ; FMax(a,b)
  %6870 = call float @dx.op.binary.f32(i32 35, float %6748, float %6758)  ; FMax(a,b)
  %6871 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6870)  ; FMax(a,b)
  %6872 = fdiv fast float %6748, %6871
  %6873 = call float @dx.op.unary.f32(i32 7, float %6872)  ; Saturate(value)
  %6874 = fdiv fast float %6758, %6871
  %6875 = call float @dx.op.unary.f32(i32 7, float %6874)  ; Saturate(value)
  %6876 = fcmp fast une float %6869, 1.000000e+00
  br i1 %6876, label %6877, label %6890, !dx.controlflow.hints !178

; <label>:6877                                    ; preds = %6854
  %6878 = call float @dx.op.unary.f32(i32 23, float %6869)  ; Log(value)
  %6879 = fmul fast float %6878, 0x3FE62E4300000000
  %6880 = fmul fast float %6750, %6879
  %6881 = fsub fast float -0.000000e+00, %6880
  %6882 = fmul fast float %6751, %6879
  %6883 = fsub fast float -0.000000e+00, %6882
  %6884 = fmul fast float %6752, %6879
  %6885 = fsub fast float -0.000000e+00, %6884
  %6886 = fsub fast float 1.000000e+00, %6869
  %6887 = fdiv fast float %6881, %6886
  %6888 = fdiv fast float %6883, %6886
  %6889 = fdiv fast float %6885, %6886
  br label %6890

; <label>:6890                                    ; preds = %6877, %6854
  %6891 = phi float [ %6887, %6877 ], [ %6750, %6854 ]
  %6892 = phi float [ %6888, %6877 ], [ %6751, %6854 ]
  %6893 = phi float [ %6889, %6877 ], [ %6752, %6854 ]
  %6894 = phi float [ %6879, %6877 ], [ 0.000000e+00, %6854 ]
  %6895 = fcmp fast une float %6866, 1.000000e+00
  br i1 %6895, label %6896, label %6903, !dx.controlflow.hints !179

; <label>:6896                                    ; preds = %6890
  %6897 = call float @dx.op.unary.f32(i32 23, float %6866)  ; Log(value)
  %6898 = fmul fast float %6897, 0x3FE62E4300000000
  %6899 = fmul fast float %6863, %6898
  %6900 = fsub fast float -0.000000e+00, %6899
  %6901 = fsub fast float 1.000000e+00, %6866
  %6902 = fdiv fast float %6900, %6901
  br label %6903

; <label>:6903                                    ; preds = %6896, %6890
  %6904 = phi float [ %6902, %6896 ], [ %6863, %6890 ]
  %6905 = phi float [ %6898, %6896 ], [ 0.000000e+00, %6890 ]
  %6906 = fcmp fast une float %6867, 1.000000e+00
  br i1 %6906, label %6907, label %6914, !dx.controlflow.hints !179

; <label>:6907                                    ; preds = %6903
  %6908 = call float @dx.op.unary.f32(i32 23, float %6867)  ; Log(value)
  %6909 = fmul fast float %6908, 0x3FE62E4300000000
  %6910 = fmul fast float %6864, %6909
  %6911 = fsub fast float -0.000000e+00, %6910
  %6912 = fsub fast float 1.000000e+00, %6867
  %6913 = fdiv fast float %6911, %6912
  br label %6914

; <label>:6914                                    ; preds = %6907, %6903
  %6915 = phi float [ %6913, %6907 ], [ %6864, %6903 ]
  %6916 = phi float [ %6909, %6907 ], [ 0.000000e+00, %6903 ]
  %6917 = fcmp fast une float %6868, 1.000000e+00
  br i1 %6917, label %6918, label %6925, !dx.controlflow.hints !179

; <label>:6918                                    ; preds = %6914
  %6919 = call float @dx.op.unary.f32(i32 23, float %6868)  ; Log(value)
  %6920 = fmul fast float %6919, 0x3FE62E4300000000
  %6921 = fmul fast float %6865, %6920
  %6922 = fsub fast float -0.000000e+00, %6921
  %6923 = fsub fast float 1.000000e+00, %6868
  %6924 = fdiv fast float %6922, %6923
  br label %6925

; <label>:6925                                    ; preds = %6918, %6914
  %6926 = phi float [ %6924, %6918 ], [ %6865, %6914 ]
  %6927 = phi float [ %6920, %6918 ], [ 0.000000e+00, %6914 ]
  %6928 = fmul fast float %6891, %6875
  %6929 = fmul fast float %6892, %6875
  %6930 = fmul fast float %6893, %6875
  %6931 = fmul fast float %6894, %6875
  %6932 = fmul fast float %6904, %6873
  %6933 = fmul fast float %6915, %6873
  %6934 = fmul fast float %6926, %6873
  %6935 = fmul fast float %6905, %6873
  %6936 = fmul fast float %6916, %6873
  %6937 = fmul fast float %6927, %6873
  %6938 = fadd fast float %6932, %6928
  %6939 = fadd fast float %6933, %6929
  %6940 = fadd fast float %6934, %6930
  %6941 = fadd fast float %6935, %6931
  %6942 = fadd fast float %6936, %6931
  %6943 = fadd fast float %6937, %6931
  %6944 = fcmp fast une float %6941, 0.000000e+00
  br i1 %6944, label %6945, label %6952, !dx.controlflow.hints !180

; <label>:6945                                    ; preds = %6925
  %6946 = fmul fast float %6941, 0x3FF7154760000000
  %6947 = call float @dx.op.unary.f32(i32 21, float %6946)  ; Exp(value)
  %6948 = fsub fast float 1.000000e+00, %6947
  %6949 = fmul fast float %6938, %6948
  %6950 = fsub fast float -0.000000e+00, %6949
  %6951 = fdiv fast float %6950, %6941
  br label %6952

; <label>:6952                                    ; preds = %6945, %6925
  %6953 = phi float [ %6947, %6945 ], [ 1.000000e+00, %6925 ]
  %6954 = phi float [ %6951, %6945 ], [ %6938, %6925 ]
  %6955 = fcmp fast une float %6942, 0.000000e+00
  br i1 %6955, label %6956, label %6963, !dx.controlflow.hints !180

; <label>:6956                                    ; preds = %6952
  %6957 = fmul fast float %6942, 0x3FF7154760000000
  %6958 = call float @dx.op.unary.f32(i32 21, float %6957)  ; Exp(value)
  %6959 = fsub fast float 1.000000e+00, %6958
  %6960 = fmul fast float %6939, %6959
  %6961 = fsub fast float -0.000000e+00, %6960
  %6962 = fdiv fast float %6961, %6942
  br label %6963

; <label>:6963                                    ; preds = %6956, %6952
  %6964 = phi float [ %6958, %6956 ], [ 1.000000e+00, %6952 ]
  %6965 = phi float [ %6962, %6956 ], [ %6939, %6952 ]
  %6966 = fcmp fast une float %6943, 0.000000e+00
  br i1 %6966, label %6967, label %6974, !dx.controlflow.hints !180

; <label>:6967                                    ; preds = %6963
  %6968 = fmul fast float %6943, 0x3FF7154760000000
  %6969 = call float @dx.op.unary.f32(i32 21, float %6968)  ; Exp(value)
  %6970 = fsub fast float 1.000000e+00, %6969
  %6971 = fmul fast float %6940, %6970
  %6972 = fsub fast float -0.000000e+00, %6971
  %6973 = fdiv fast float %6972, %6943
  br label %6974

; <label>:6974                                    ; preds = %6967, %6963
  %6975 = phi float [ %6969, %6967 ], [ 1.000000e+00, %6963 ]
  %6976 = phi float [ %6973, %6967 ], [ %6940, %6963 ]
  %6977 = fcmp fast ogt float %6873, %6875
  br i1 %6977, label %6978, label %6998

; <label>:6978                                    ; preds = %6974
  %6979 = fsub fast float 1.000000e+00, %6875
  %6980 = fmul fast float %6891, %6979
  %6981 = fmul fast float %6892, %6979
  %6982 = fmul fast float %6893, %6979
  %6983 = fmul fast float %6894, %6979
  %6984 = fcmp fast une float %6983, 0.000000e+00
  br i1 %6984, label %6985, label %7036, !dx.controlflow.hints !181

; <label>:6985                                    ; preds = %6978
  %6986 = fmul fast float %6983, 0x3FF7154760000000
  %6987 = call float @dx.op.unary.f32(i32 21, float %6986)  ; Exp(value)
  %6988 = fsub fast float 1.000000e+00, %6987
  %6989 = fmul fast float %6980, %6988
  %6990 = fsub fast float -0.000000e+00, %6989
  %6991 = fmul fast float %6981, %6988
  %6992 = fsub fast float -0.000000e+00, %6991
  %6993 = fmul fast float %6982, %6988
  %6994 = fsub fast float -0.000000e+00, %6993
  %6995 = fdiv fast float %6990, %6983
  %6996 = fdiv fast float %6992, %6983
  %6997 = fdiv fast float %6994, %6983
  br label %7036

; <label>:6998                                    ; preds = %6974
  %6999 = fsub fast float 1.000000e+00, %6873
  %7000 = fmul fast float %6904, %6999
  %7001 = fmul fast float %6915, %6999
  %7002 = fmul fast float %6926, %6999
  %7003 = fmul fast float %6905, %6999
  %7004 = fmul fast float %6916, %6999
  %7005 = fmul fast float %6927, %6999
  %7006 = fcmp fast une float %7003, 0.000000e+00
  br i1 %7006, label %7007, label %7014, !dx.controlflow.hints !180

; <label>:7007                                    ; preds = %6998
  %7008 = fmul fast float %7003, 0x3FF7154760000000
  %7009 = call float @dx.op.unary.f32(i32 21, float %7008)  ; Exp(value)
  %7010 = fsub fast float 1.000000e+00, %7009
  %7011 = fmul fast float %7000, %7010
  %7012 = fsub fast float -0.000000e+00, %7011
  %7013 = fdiv fast float %7012, %7003
  br label %7014

; <label>:7014                                    ; preds = %7007, %6998
  %7015 = phi float [ %7013, %7007 ], [ %7000, %6998 ]
  %7016 = phi float [ %7009, %7007 ], [ 1.000000e+00, %6998 ]
  %7017 = fcmp fast une float %7004, 0.000000e+00
  br i1 %7017, label %7018, label %7025, !dx.controlflow.hints !180

; <label>:7018                                    ; preds = %7014
  %7019 = fmul fast float %7004, 0x3FF7154760000000
  %7020 = call float @dx.op.unary.f32(i32 21, float %7019)  ; Exp(value)
  %7021 = fsub fast float 1.000000e+00, %7020
  %7022 = fmul fast float %7001, %7021
  %7023 = fsub fast float -0.000000e+00, %7022
  %7024 = fdiv fast float %7023, %7004
  br label %7025

; <label>:7025                                    ; preds = %7018, %7014
  %7026 = phi float [ %7024, %7018 ], [ %7001, %7014 ]
  %7027 = phi float [ %7020, %7018 ], [ 1.000000e+00, %7014 ]
  %7028 = fcmp fast une float %7005, 0.000000e+00
  br i1 %7028, label %7029, label %7036, !dx.controlflow.hints !180

; <label>:7029                                    ; preds = %7025
  %7030 = fmul fast float %7005, 0x3FF7154760000000
  %7031 = call float @dx.op.unary.f32(i32 21, float %7030)  ; Exp(value)
  %7032 = fsub fast float 1.000000e+00, %7031
  %7033 = fmul fast float %7002, %7032
  %7034 = fsub fast float -0.000000e+00, %7033
  %7035 = fdiv fast float %7034, %7005
  br label %7036

; <label>:7036                                    ; preds = %7029, %7025, %6985, %6978
  %7037 = phi float [ %7035, %7029 ], [ %6997, %6985 ], [ %6982, %6978 ], [ %7002, %7025 ]
  %7038 = phi float [ %7026, %7029 ], [ %6996, %6985 ], [ %6981, %6978 ], [ %7026, %7025 ]
  %7039 = phi float [ %7015, %7029 ], [ %6995, %6985 ], [ %6980, %6978 ], [ %7015, %7025 ]
  %7040 = phi float [ %7031, %7029 ], [ %6987, %6985 ], [ 1.000000e+00, %6978 ], [ 1.000000e+00, %7025 ]
  %7041 = phi float [ %7027, %7029 ], [ %6987, %6985 ], [ 1.000000e+00, %6978 ], [ %7027, %7025 ]
  %7042 = phi float [ %7016, %7029 ], [ %6987, %6985 ], [ 1.000000e+00, %6978 ], [ %7016, %7025 ]
  %7043 = fmul fast float %7042, %6954
  %7044 = fmul fast float %7041, %6965
  %7045 = fmul fast float %7040, %6976
  %7046 = fadd fast float %7043, %7039
  %7047 = fadd fast float %7044, %7038
  %7048 = fadd fast float %7045, %7037
  %7049 = fmul fast float %7042, %6953
  %7050 = fmul fast float %7041, %6964
  %7051 = fmul fast float %7040, %6975
  br label %7052

; <label>:7052                                    ; preds = %7036, %6847
  %7053 = phi float [ %7051, %7036 ], [ %6853, %6847 ]
  %7054 = phi float [ %7050, %7036 ], [ %6852, %6847 ]
  %7055 = phi float [ %7049, %7036 ], [ %6851, %6847 ]
  %7056 = phi float [ %7048, %7036 ], [ %6850, %6847 ]
  %7057 = phi float [ %7047, %7036 ], [ %6849, %6847 ]
  %7058 = phi float [ %7046, %7036 ], [ %6848, %6847 ]
  %7059 = fmul fast float %7055, %6295
  %7060 = call float @dx.op.dot3.f32(i32 55, float %7055, float %7054, float %7053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7061 = call float @dx.op.dot3.f32(i32 55, float %7058, float %7057, float %7056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7062 = select i1 %230, float %7060, float %7055
  %7063 = select i1 %230, float %7060, float %7054
  %7064 = select i1 %230, float 1.000000e+00, float %7053
  %7065 = select i1 %230, float %7061, float %7058
  %7066 = select i1 %230, float 0.000000e+00, float %7057
  %7067 = select i1 %230, float 0.000000e+00, float %7056
  %7068 = fmul fast float %7062, %6289
  %7069 = fmul fast float %7063, %6290
  %7070 = fmul fast float %7064, %6291
  %7071 = fadd fast float %7068, %7065
  %7072 = fadd fast float %7069, %7066
  %7073 = fadd fast float %7067, %7070
  %7074 = fmul fast float %7062, %6292
  %7075 = fmul fast float %7063, %6293
  %7076 = fmul fast float %7064, %6294
  %7077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.i32 %7077, 0
  %7079 = icmp eq i32 %7078, 0
  br i1 %7079, label %7437, label %7080, !dx.controlflow.hints !182

; <label>:7080                                    ; preds = %7052
  %7081 = fmul fast float %3947, %92
  %7082 = fmul fast float %3948, %93
  %7083 = fmul fast float %7081, 2.000000e+00
  %7084 = fmul fast float %7082, 2.000000e+00
  %7085 = fsub fast float 1.000000e+00, %7083
  %7086 = fsub fast float 1.000000e+00, %7084
  %7087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.f32 %7087, 0
  %7089 = extractvalue %dx.types.CBufRet.f32 %7087, 1
  %7090 = extractvalue %dx.types.CBufRet.f32 %7087, 2
  %7091 = fmul fast float %7085, %7088
  %7092 = fmul fast float %7085, %7089
  %7093 = fmul fast float %7085, %7090
  %7094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7095 = extractvalue %dx.types.CBufRet.f32 %7094, 0
  %7096 = extractvalue %dx.types.CBufRet.f32 %7094, 1
  %7097 = extractvalue %dx.types.CBufRet.f32 %7094, 2
  %7098 = fmul fast float %7086, %7095
  %7099 = fmul fast float %7086, %7096
  %7100 = fmul fast float %7086, %7097
  %7101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.f32 %7101, 0
  %7103 = extractvalue %dx.types.CBufRet.f32 %7101, 1
  %7104 = extractvalue %dx.types.CBufRet.f32 %7101, 2
  %7105 = fadd fast float %7098, %7102
  %7106 = fadd fast float %7105, %7091
  %7107 = fadd fast float %7099, %7103
  %7108 = fadd fast float %7107, %7092
  %7109 = fadd fast float %7100, %7104
  %7110 = fadd fast float %7109, %7093
  %7111 = fmul fast float %7106, %6288
  %7112 = fmul fast float %7108, %6288
  %7113 = fmul fast float %7110, %6288
  %7114 = fmul fast float %7111, %7111
  %7115 = fmul fast float %7112, %7112
  %7116 = fadd fast float %7114, %7115
  %7117 = fmul fast float %7113, %7113
  %7118 = fadd fast float %7116, %7117
  %7119 = call float @dx.op.unary.f32(i32 24, float %7118)  ; Sqrt(value)
  %7120 = extractvalue %dx.types.CBufRet.f32 %6023, 0
  %7121 = fsub fast float %7119, %7120
  %7122 = extractvalue %dx.types.CBufRet.f32 %6023, 2
  %7123 = fmul fast float %7121, %7122
  %7124 = call float @dx.op.unary.f32(i32 7, float %7123)  ; Saturate(value)
  %7125 = fadd fast float %7124, -5.000000e-01
  %7126 = fmul fast float %7125, 2.000000e+00
  %7127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7127, 2
  %7129 = call float @dx.op.binary.f32(i32 36, float %7128, float %7126)  ; FMin(a,b)
  %7130 = fsub fast float -0.000000e+00, %7128
  %7131 = fcmp fast ogt float %7129, %7130
  br i1 %7131, label %7132, label %7437, !dx.controlflow.hints !183

; <label>:7132                                    ; preds = %7080
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 3
  %7135 = fcmp fast ogt float %7134, 0.000000e+00
  br i1 %7135, label %7136, label %7209, !dx.controlflow.hints !184

; <label>:7136                                    ; preds = %7132
  %7137 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %7138 = extractvalue %dx.types.Dimensions %7137, 0
  %7139 = sitofp i32 %7138 to float
  %7140 = extractvalue %dx.types.Dimensions %7137, 1
  %7141 = sitofp i32 %7140 to float
  %7142 = fmul fast float %7081, %7139
  %7143 = fmul fast float %7082, %7141
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %63, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 1
  %7146 = fsub fast float -0.000000e+00, %7145
  %7147 = fptoui float %7146 to i32
  %7148 = fptoui float %7142 to i32
  %7149 = fptoui float %7143 to i32
  %7150 = and i32 %7147, 31
  %7151 = lshr i32 %7148, %7150
  %7152 = lshr i32 %7149, %7150
  %7153 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %7147, i32 %7151, i32 %7152, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 0
  %7155 = fcmp fast olt float %7154, -1.000000e+00
  %7156 = fcmp fast ogt float %7154, -1.000000e+00
  %7157 = select i1 %7156, float %3955, float 1.000000e+00
  %7158 = fadd fast float %7154, 1.000000e+00
  %7159 = fmul fast float %7157, %7158
  %7160 = call float @dx.op.unary.f32(i32 6, float %7159)  ; FAbs(value)
  %7161 = extractvalue %dx.types.CBufRet.f32 %3954, 3
  %7162 = fcmp fast oge float %7160, %7161
  %7163 = select i1 %7162, float 0x4197782600000000, float %7160
  %7164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7165 = extractvalue %dx.types.CBufRet.f32 %7164, 0
  %7166 = extractvalue %dx.types.CBufRet.f32 %7164, 1
  %7167 = extractvalue %dx.types.CBufRet.f32 %7164, 2
  %7168 = select i1 %7155, float %7165, float %7088
  %7169 = select i1 %7155, float %7166, float %7089
  %7170 = select i1 %7155, float %7167, float %7090
  %7171 = fmul fast float %7168, %7085
  %7172 = fmul fast float %7169, %7085
  %7173 = fmul fast float %7170, %7085
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 0
  %7176 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7177 = extractvalue %dx.types.CBufRet.f32 %7174, 2
  %7178 = select i1 %7155, float %7175, float %7095
  %7179 = select i1 %7155, float %7176, float %7096
  %7180 = select i1 %7155, float %7177, float %7097
  %7181 = fmul fast float %7178, %7086
  %7182 = fmul fast float %7179, %7086
  %7183 = fmul fast float %7180, %7086
  %7184 = fadd fast float %7181, %7171
  %7185 = fadd fast float %7182, %7172
  %7186 = fadd fast float %7183, %7173
  %7187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7188 = extractvalue %dx.types.CBufRet.f32 %7187, 0
  %7189 = extractvalue %dx.types.CBufRet.f32 %7187, 1
  %7190 = extractvalue %dx.types.CBufRet.f32 %7187, 2
  %7191 = select i1 %7155, float %7188, float %7102
  %7192 = select i1 %7155, float %7189, float %7103
  %7193 = select i1 %7155, float %7190, float %7104
  %7194 = fadd fast float %7184, %7191
  %7195 = fadd fast float %7185, %7192
  %7196 = fadd fast float %7186, %7193
  %7197 = fmul fast float %7194, %7163
  %7198 = fmul fast float %7195, %7163
  %7199 = fmul fast float %7196, %7163
  %7200 = fmul fast float %7197, %7197
  %7201 = fmul fast float %7198, %7198
  %7202 = fadd fast float %7200, %7201
  %7203 = fmul fast float %7199, %7199
  %7204 = fadd fast float %7202, %7203
  %7205 = call float @dx.op.unary.f32(i32 24, float %7204)  ; Sqrt(value)
  %7206 = fsub fast float %7205, %7120
  %7207 = fmul fast float %7206, %7122
  %7208 = call float @dx.op.unary.f32(i32 7, float %7207)  ; Saturate(value)
  br label %7209

; <label>:7209                                    ; preds = %7136, %7132
  %7210 = phi float [ %7208, %7136 ], [ 1.000000e+00, %7132 ]
  %7211 = fmul fast float %7129, 5.000000e-01
  %7212 = fadd fast float %7211, 5.000000e-01
  %7213 = call float @dx.op.unary.f32(i32 22, float %7212)  ; Frc(value)
  %7214 = call float @dx.op.unary.f32(i32 27, float %7213)  ; Round_ni(value)
  %7215 = call float @dx.op.unary.f32(i32 22, float %7213)  ; Frc(value)
  %7216 = fmul fast float %7215, 2.000000e+00
  %7217 = fadd fast float %7216, -1.000000e+00
  %7218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %60, float %7081, float %7082, float %7214, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7219 = extractvalue %dx.types.ResRet.f32 %7218, 0
  %7220 = extractvalue %dx.types.ResRet.f32 %7218, 1
  %7221 = extractvalue %dx.types.ResRet.f32 %7218, 2
  %7222 = extractvalue %dx.types.ResRet.f32 %7218, 3
  %7223 = fadd fast float %7219, -5.000000e-01
  %7224 = fadd fast float %7221, -5.000000e-01
  %7225 = fmul fast float %7223, 0xBFD5555560000000
  %7226 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7224, float %7225)  ; FMad(a,b,c)
  %7227 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7220, float 0.000000e+00)  ; FMad(a,b,c)
  %7228 = fadd fast float %7227, %7222
  %7229 = fmul fast float %7223, -7.500000e-01
  %7230 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7224, float %7229)  ; FMad(a,b,c)
  %7231 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7220, float 0.000000e+00)  ; FMad(a,b,c)
  %7232 = fadd fast float %7231, %7222
  %7233 = call float @dx.op.binary.f32(i32 35, float %7226, float -1.000000e+00)  ; FMax(a,b)
  %7234 = call float @dx.op.binary.f32(i32 35, float %7228, float -1.000000e+00)  ; FMax(a,b)
  %7235 = call float @dx.op.binary.f32(i32 35, float %7230, float -1.000000e+00)  ; FMax(a,b)
  %7236 = call float @dx.op.binary.f32(i32 35, float %7232, float -1.000000e+00)  ; FMax(a,b)
  %7237 = call float @dx.op.binary.f32(i32 36, float %7233, float 1.000000e+00)  ; FMin(a,b)
  %7238 = call float @dx.op.binary.f32(i32 36, float %7234, float 1.000000e+00)  ; FMin(a,b)
  %7239 = call float @dx.op.binary.f32(i32 36, float %7235, float 1.000000e+00)  ; FMin(a,b)
  %7240 = call float @dx.op.binary.f32(i32 36, float %7236, float 1.000000e+00)  ; FMin(a,b)
  %7241 = fcmp fast olt float %7237, 0x3FEFFF8020000000
  br i1 %7241, label %7242, label %7357, !dx.controlflow.hints !185

; <label>:7242                                    ; preds = %7209
  %7243 = extractvalue %dx.types.CBufRet.f32 %7127, 3
  %7244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7245 = extractvalue %dx.types.CBufRet.f32 %7244, 0
  %7246 = extractvalue %dx.types.CBufRet.f32 %7244, 1
  %7247 = extractvalue %dx.types.CBufRet.f32 %7244, 2
  %7248 = extractvalue %dx.types.CBufRet.f32 %7244, 3
  %7249 = fsub fast float %7245, %7237
  %7250 = fsub fast float %7246, %7238
  %7251 = fsub fast float %7247, %7239
  %7252 = fsub fast float %7248, %7240
  %7253 = fmul fast float %7249, %7243
  %7254 = fmul fast float %7250, %7243
  %7255 = fmul fast float %7251, %7243
  %7256 = fmul fast float %7252, %7243
  %7257 = fadd fast float %7253, %7237
  %7258 = fadd fast float %7254, %7238
  %7259 = fsub fast float -0.000000e+00, %7258
  %7260 = fadd fast float %7255, %7239
  %7261 = fadd fast float %7256, %7240
  %7262 = fmul fast float %7257, %7257
  %7263 = fsub fast float %7258, %7262
  %7264 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7263)  ; FMax(a,b)
  %7265 = fdiv fast float 1.000000e+00, %7264
  %7266 = fmul fast float %7258, %7257
  %7267 = fsub fast float %7260, %7266
  %7268 = fsub fast float %7217, %7257
  %7269 = fmul fast float %7217, %7217
  %7270 = fsub fast float %7269, %7258
  %7271 = fmul fast float %7268, %7265
  %7272 = fmul fast float %7271, %7267
  %7273 = fsub fast float %7270, %7272
  %7274 = fmul fast float %7258, %7258
  %7275 = fsub fast float %7261, %7274
  %7276 = fmul fast float %7267, %7267
  %7277 = fmul fast float %7276, %7265
  %7278 = fsub fast float %7275, %7277
  %7279 = fdiv fast float %7273, %7278
  %7280 = fmul fast float %7267, %7279
  %7281 = fsub fast float %7268, %7280
  %7282 = fmul fast float %7281, %7265
  %7283 = fmul fast float %7282, %7257
  %7284 = fsub fast float 1.000000e+00, %7283
  %7285 = fmul fast float %7258, %7279
  %7286 = fsub fast float %7284, %7285
  %7287 = fmul fast float %7282, %7282
  %7288 = fmul fast float %7279, 4.000000e+00
  %7289 = fmul fast float %7288, %7286
  %7290 = fsub fast float %7287, %7289
  %7291 = call float @dx.op.unary.f32(i32 24, float %7290)  ; Sqrt(value)
  %7292 = fcmp fast oge float %7282, 0.000000e+00
  %7293 = fsub fast float -0.000000e+00, %7291
  %7294 = select i1 %7292, float %7293, float %7291
  %7295 = fsub fast float %7294, %7282
  %7296 = fdiv fast float %7295, %7279
  %7297 = fdiv fast float %7286, %7295
  %7298 = fmul fast float %7296, 5.000000e-01
  %7299 = fmul fast float %7297, 2.000000e+00
  %7300 = select i1 %7292, float %7298, float %7299
  %7301 = select i1 %7292, float %7299, float %7298
  %7302 = call float @dx.op.binary.f32(i32 35, float %7300, float %7301)  ; FMax(a,b)
  %7303 = call float @dx.op.binary.f32(i32 36, float %7300, float %7301)  ; FMin(a,b)
  %7304 = fcmp fast ogt float %7217, %7303
  br i1 %7304, label %7305, label %7315

; <label>:7305                                    ; preds = %7242
  %7306 = fsub fast float %7217, %7303
  %7307 = fsub fast float %7302, %7303
  %7308 = fmul fast float %7306, %7307
  %7309 = fmul fast float %7302, %7217
  %7310 = fadd fast float %7302, %7217
  %7311 = fmul fast float %7310, %7257
  %7312 = fadd fast float %7309, %7258
  %7313 = fsub fast float %7312, %7311
  %7314 = fdiv fast float %7313, %7308
  br label %7315

; <label>:7315                                    ; preds = %7305, %7242
  %7316 = phi float [ %7314, %7305 ], [ 0.000000e+00, %7242 ]
  %7317 = fcmp fast ogt float %7217, %7302
  %7318 = fsub fast float %7217, %7302
  br i1 %7317, label %7319, label %7329

; <label>:7319                                    ; preds = %7315
  %7320 = fsub fast float %7302, %7303
  %7321 = fmul fast float %7320, %7318
  %7322 = fmul fast float %7303, %7217
  %7323 = fadd fast float %7303, %7217
  %7324 = fmul fast float %7323, %7257
  %7325 = fsub fast float %7259, %7322
  %7326 = fadd fast float %7325, %7324
  %7327 = fdiv fast float %7326, %7321
  %7328 = fadd fast float %7327, %7316
  br label %7329

; <label>:7329                                    ; preds = %7319, %7315
  %7330 = phi float [ %7328, %7319 ], [ %7316, %7315 ]
  %7331 = fsub fast float %7217, %7303
  %7332 = fmul fast float %7331, %7318
  %7333 = fmul fast float %7303, %7302
  %7334 = fadd fast float %7303, %7302
  %7335 = fmul fast float %7334, %7257
  %7336 = fadd fast float %7333, %7258
  %7337 = fsub fast float %7336, %7335
  %7338 = fdiv fast float %7337, %7332
  %7339 = call float @dx.op.unary.f32(i32 7, float %7330)  ; Saturate(value)
  %7340 = fcmp fast oeq float %6024, 0.000000e+00
  %7341 = extractvalue %dx.types.CBufRet.f32 %7127, 0
  %7342 = fcmp fast oeq float %7341, 0.000000e+00
  %7343 = or i1 %7340, %7342
  %7344 = fmul fast float %7341, 2.000000e+00
  %7345 = fadd fast float %7128, %7129
  %7346 = fdiv fast float %7345, %7344
  %7347 = call float @dx.op.unary.f32(i32 7, float %7346)  ; Saturate(value)
  %7348 = fmul fast float %7347, 2.000000e+00
  %7349 = fsub fast float 3.000000e+00, %7348
  %7350 = fmul fast float %7347, %7347
  %7351 = fmul fast float %7350, %7349
  %7352 = select i1 %7343, float 1.000000e+00, float %7351
  %7353 = fmul fast float %7338, %6024
  %7354 = fadd fast float %7339, %7353
  %7355 = call float @dx.op.unary.f32(i32 7, float %7354)  ; Saturate(value)
  %7356 = fmul fast float %7352, %7355
  br label %7357

; <label>:7357                                    ; preds = %7329, %7209
  %7358 = phi float [ %7356, %7329 ], [ 0.000000e+00, %7209 ]
  %7359 = fsub fast float 1.000000e+00, %7358
  %7360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %60, float %7081, float %7082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7361 = extractvalue %dx.types.ResRet.f32 %7360, 0
  %7362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7363 = extractvalue %dx.types.CBufRet.i32 %7362, 2
  %7364 = icmp eq i32 %7363, 0
  br i1 %7364, label %7370, label %7365

; <label>:7365                                    ; preds = %7357
  %7366 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  %7367 = fadd fast float %7361, -1.000000e+00
  %7368 = fmul fast float %7366, %7367
  %7369 = fadd fast float %7368, 1.000000e+00
  br label %7370

; <label>:7370                                    ; preds = %7365, %7357
  %7371 = phi float [ %7369, %7365 ], [ %7359, %7357 ]
  br i1 %7135, label %7372, label %7390

; <label>:7372                                    ; preds = %7370
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 1
  %7375 = fsub fast float %7210, %7374
  %7376 = call float @dx.op.unary.f32(i32 7, float %7375)  ; Saturate(value)
  %7377 = fsub fast float %7210, %7134
  %7378 = call float @dx.op.unary.f32(i32 7, float %7377)  ; Saturate(value)
  %7379 = fsub fast float %7376, %7378
  %7380 = fsub fast float %7212, %7378
  %7381 = fdiv fast float %7380, %7379
  %7382 = call float @dx.op.unary.f32(i32 7, float %7381)  ; Saturate(value)
  %7383 = fmul fast float %7382, 2.000000e+00
  %7384 = fsub fast float 3.000000e+00, %7383
  %7385 = fsub fast float %7361, %7371
  %7386 = fmul fast float %7382, %7382
  %7387 = fmul fast float %7386, %7385
  %7388 = fmul fast float %7387, %7384
  %7389 = fadd fast float %7388, %7371
  br label %7390

; <label>:7390                                    ; preds = %7372, %7370
  %7391 = phi float [ %7389, %7372 ], [ %7371, %7370 ]
  %7392 = call float @dx.op.binary.f32(i32 35, float %7361, float %7391)  ; FMax(a,b)
  %7393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.i32 %7393, 2
  %7395 = and i32 %7394, 1
  %7396 = icmp eq i32 %7395, 0
  %7397 = fcmp fast une float %7392, 1.000000e+00
  %7398 = and i1 %7397, %7396
  br i1 %7398, label %7399, label %7416

; <label>:7399                                    ; preds = %7390
  %7400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %60, float %7081, float %7082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7401 = extractvalue %dx.types.ResRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.ResRet.f32 %7400, 1
  %7403 = extractvalue %dx.types.ResRet.f32 %7400, 2
  %7404 = fmul fast float %4002, %7401
  %7405 = fmul fast float %4002, %7402
  %7406 = fmul fast float %4002, %7403
  %7407 = fcmp fast ogt float %7361, 0x3FEFFF2E40000000
  %7408 = fsub fast float 1.000000e+00, %7392
  %7409 = fsub fast float 1.000000e+00, %7361
  %7410 = fdiv fast float %7408, %7409
  %7411 = call float @dx.op.unary.f32(i32 7, float %7410)  ; Saturate(value)
  %7412 = select i1 %7407, float 0.000000e+00, float %7411
  %7413 = fmul fast float %7404, %7412
  %7414 = fmul fast float %7405, %7412
  %7415 = fmul fast float %7406, %7412
  br label %7416

; <label>:7416                                    ; preds = %7399, %7390
  %7417 = phi float [ 0.000000e+00, %7390 ], [ %7413, %7399 ]
  %7418 = phi float [ 0.000000e+00, %7390 ], [ %7414, %7399 ]
  %7419 = phi float [ 0.000000e+00, %7390 ], [ %7415, %7399 ]
  %7420 = fmul fast float %7392, %7059
  %7421 = call float @dx.op.dot3.f32(i32 55, float %7392, float %7392, float %7392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7422 = call float @dx.op.dot3.f32(i32 55, float %7417, float %7418, float %7419, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7423 = select i1 %230, float %7421, float %7392
  %7424 = select i1 %230, float 1.000000e+00, float %7392
  %7425 = select i1 %230, float %7422, float %7417
  %7426 = select i1 %230, float 0.000000e+00, float %7418
  %7427 = select i1 %230, float 0.000000e+00, float %7419
  %7428 = fmul fast float %7423, %7071
  %7429 = fmul fast float %7423, %7072
  %7430 = fmul fast float %7424, %7073
  %7431 = fadd fast float %7428, %7425
  %7432 = fadd fast float %7429, %7426
  %7433 = fadd fast float %7427, %7430
  %7434 = fmul fast float %7423, %7074
  %7435 = fmul fast float %7423, %7075
  %7436 = fmul fast float %7424, %7076
  br label %7437

; <label>:7437                                    ; preds = %7416, %7080, %7052, %6284
  %7438 = phi float [ %6289, %6284 ], [ %7071, %7052 ], [ %7431, %7416 ], [ %7071, %7080 ]
  %7439 = phi float [ %6290, %6284 ], [ %7072, %7052 ], [ %7432, %7416 ], [ %7072, %7080 ]
  %7440 = phi float [ %6291, %6284 ], [ %7073, %7052 ], [ %7433, %7416 ], [ %7073, %7080 ]
  %7441 = phi float [ %6292, %6284 ], [ %7074, %7052 ], [ %7434, %7416 ], [ %7074, %7080 ]
  %7442 = phi float [ %6293, %6284 ], [ %7075, %7052 ], [ %7435, %7416 ], [ %7075, %7080 ]
  %7443 = phi float [ %6294, %6284 ], [ %7076, %7052 ], [ %7436, %7416 ], [ %7076, %7080 ]
  %7444 = phi float [ %6295, %6284 ], [ %7059, %7052 ], [ %7420, %7416 ], [ %7059, %7080 ]
  %7445 = fmul fast float %3947, %92
  %7446 = fmul fast float %3948, %93
  %7447 = call float @dx.op.unary.f32(i32 7, float %7445)  ; Saturate(value)
  %7448 = call float @dx.op.unary.f32(i32 7, float %7446)  ; Saturate(value)
  %7449 = select i1 %6034, i32 2, i32 0
  %7450 = or i32 %7449, 1
  %7451 = uitofp i32 %7450 to float
  %7452 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %60, float %7447, float %7448, float %7451, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7453 = extractvalue %dx.types.ResRet.f32 %7452, 0
  %7454 = extractvalue %dx.types.ResRet.f32 %7452, 1
  %7455 = extractvalue %dx.types.ResRet.f32 %7452, 2
  %7456 = extractvalue %dx.types.ResRet.f32 %7452, 3
  %7457 = add nuw nsw i32 %7449, 2
  %7458 = uitofp i32 %7457 to float
  %7459 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %60, float %7447, float %7448, float %7458, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.ResRet.f32 %7459, 1
  %7462 = extractvalue %dx.types.ResRet.f32 %7459, 2
  %7463 = extractvalue %dx.types.ResRet.f32 %7459, 3
  %7464 = call float @dx.op.binary.f32(i32 35, float %7454, float %7455)  ; FMax(a,b)
  %7465 = call float @dx.op.binary.f32(i32 35, float %7453, float %7464)  ; FMax(a,b)
  %7466 = call float @dx.op.binary.f32(i32 35, float %7465, float %7456)  ; FMax(a,b)
  %7467 = call float @dx.op.binary.f32(i32 36, float %7461, float %7462)  ; FMin(a,b)
  %7468 = call float @dx.op.binary.f32(i32 36, float %7460, float %7467)  ; FMin(a,b)
  %7469 = call float @dx.op.binary.f32(i32 36, float %7468, float %7463)  ; FMin(a,b)
  %7470 = fmul fast float %7466, 2.550000e+02
  %7471 = fadd fast float %7470, 0x3F70101020000000
  %7472 = fptoui float %7471 to i32
  %7473 = fmul fast float %7469, 2.550000e+02
  %7474 = fadd fast float %7473, 0x3F70101020000000
  %7475 = fptoui float %7474 to i32
  %7476 = icmp ult i32 %7472, %7475
  br i1 %7476, label %7477, label %7644

; <label>:7477                                    ; preds = %7437
  %7478 = fcmp fast ogt float %82, 9.843750e-01
  %7479 = fadd fast float %6288, -4.000000e+00
  %7480 = select i1 %7478, float -4.000000e+00, float %7479
  %7481 = call float @dx.op.binary.f32(i32 35, float %7480, float 0.000000e+00)  ; FMax(a,b)
  %7482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7483 = extractvalue %dx.types.CBufRet.f32 %7482, 0
  %7484 = fadd fast float %7483, %7481
  %7485 = extractvalue %dx.types.CBufRet.f32 %7482, 2
  %7486 = fmul fast float %7484, %7485
  %7487 = call float @dx.op.unary.f32(i32 23, float %7486)  ; Log(value)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7482, 3
  %7489 = fmul fast float %7488, %7487
  %7490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7491 = extractvalue %dx.types.CBufRet.f32 %7490, 2
  %7492 = fmul fast float %7489, %7491
  %7493 = call float @dx.op.unary.f32(i32 7, float %7492)  ; Saturate(value)
  %7494 = uitofp i32 %7472 to float
  %7495 = uitofp i32 %7475 to float
  %7496 = fadd fast float %7494, 5.000000e-01
  %7497 = fadd fast float %7495, 5.000000e-01
  %7498 = fmul fast float %7491, %7496
  %7499 = fmul fast float %7491, %7497
  %7500 = fadd fast float %7498, 0x3F0FFB4800000000
  %7501 = fadd fast float %7499, 0xBF0FFB4800000000
  %7502 = call float @dx.op.binary.f32(i32 35, float %7493, float %7500)  ; FMax(a,b)
  %7503 = call float @dx.op.binary.f32(i32 36, float %7502, float %7501)  ; FMin(a,b)
  %7504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7505 = extractvalue %dx.types.CBufRet.f32 %7504, 1
  %7506 = extractvalue %dx.types.CBufRet.f32 %7504, 2
  %7507 = extractvalue %dx.types.CBufRet.f32 %7504, 0
  %7508 = select i1 %6034, float %7507, float 0.000000e+00
  %7509 = fmul fast float %7505, %7503
  %7510 = fadd fast float %7508, %7509
  %7511 = fadd fast float %7508, %7506
  %7512 = fsub fast float %7505, %7506
  %7513 = fadd fast float %7512, %7508
  %7514 = call float @dx.op.binary.f32(i32 35, float %7510, float %7511)  ; FMax(a,b)
  %7515 = call float @dx.op.binary.f32(i32 36, float %7514, float %7513)  ; FMin(a,b)
  %7516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %58, float %7447, float %7448, float %7515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7517 = extractvalue %dx.types.ResRet.f32 %7516, 0
  %7518 = extractvalue %dx.types.ResRet.f32 %7516, 1
  %7519 = extractvalue %dx.types.ResRet.f32 %7516, 2
  %7520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7521 = extractvalue %dx.types.CBufRet.i32 %7520, 0
  %7522 = extractvalue %dx.types.CBufRet.i32 %7520, 1
  %7523 = uitofp i32 %7521 to float
  %7524 = uitofp i32 %7522 to float
  %7525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7526 = extractvalue %dx.types.CBufRet.f32 %7525, 0
  %7527 = extractvalue %dx.types.CBufRet.f32 %7525, 1
  %7528 = fmul fast float %7523, %7447
  %7529 = fmul fast float %7524, %7448
  %7530 = fadd fast float %7528, -5.000000e-01
  %7531 = fadd fast float %7529, -5.000000e-01
  %7532 = call float @dx.op.unary.f32(i32 22, float %7530)  ; Frc(value)
  %7533 = call float @dx.op.unary.f32(i32 22, float %7531)  ; Frc(value)
  %7534 = fmul fast float %7532, %7532
  %7535 = fmul fast float %7534, %7532
  %7536 = fsub fast float 3.000000e+00, %7532
  %7537 = fmul fast float %7534, %7536
  %7538 = fmul fast float %7532, 3.000000e+00
  %7539 = fmul fast float %7535, 3.000000e+00
  %7540 = fmul fast float %7534, 6.000000e+00
  %7541 = fsub fast float %7539, %7540
  %7542 = fadd fast float %7541, 4.000000e+00
  %7543 = fmul fast float %7542, 0x3FC5555560000000
  %7544 = fmul fast float %7535, -3.000000e+00
  %7545 = fadd fast float %7534, %7532
  %7546 = fmul fast float %7545, 3.000000e+00
  %7547 = fadd fast float %7544, 1.000000e+00
  %7548 = fadd fast float %7547, %7546
  %7549 = fmul fast float %7535, 0x3FC5555560000000
  %7550 = fmul fast float %7533, %7533
  %7551 = fmul fast float %7550, %7533
  %7552 = fsub fast float 3.000000e+00, %7533
  %7553 = fmul fast float %7550, %7552
  %7554 = fmul fast float %7533, 3.000000e+00
  %7555 = fmul fast float %7551, 3.000000e+00
  %7556 = fmul fast float %7550, 6.000000e+00
  %7557 = fsub fast float %7555, %7556
  %7558 = fadd fast float %7557, 4.000000e+00
  %7559 = fmul fast float %7558, 0x3FC5555560000000
  %7560 = fmul fast float %7551, -3.000000e+00
  %7561 = fadd fast float %7550, %7533
  %7562 = fmul fast float %7561, 3.000000e+00
  %7563 = fadd fast float %7560, 1.000000e+00
  %7564 = fadd fast float %7563, %7562
  %7565 = fmul fast float %7551, 0x3FC5555560000000
  %7566 = fadd fast float %7532, 1.000000e+00
  %7567 = fsub fast float 1.000000e+00, %7538
  %7568 = fadd fast float %7567, %7537
  %7569 = fadd fast float %7568, %7542
  %7570 = fmul fast float %7569, 0x3FC5555560000000
  %7571 = fdiv fast float %7543, %7570
  %7572 = fsub fast float %7566, %7571
  %7573 = fsub fast float 1.000000e+00, %7532
  %7574 = fadd fast float %7548, %7535
  %7575 = fmul fast float %7574, 0x3FC5555560000000
  %7576 = fdiv fast float %7549, %7575
  %7577 = fadd fast float %7573, %7576
  %7578 = fadd fast float %7533, 1.000000e+00
  %7579 = fsub fast float 1.000000e+00, %7554
  %7580 = fadd fast float %7579, %7553
  %7581 = fadd fast float %7580, %7558
  %7582 = fmul fast float %7581, 0x3FC5555560000000
  %7583 = fdiv fast float %7559, %7582
  %7584 = fsub fast float %7578, %7583
  %7585 = fsub fast float 1.000000e+00, %7533
  %7586 = fadd fast float %7564, %7551
  %7587 = fmul fast float %7586, 0x3FC5555560000000
  %7588 = fdiv fast float %7565, %7587
  %7589 = fadd fast float %7588, %7585
  %7590 = fmul fast float %7572, %7526
  %7591 = fsub fast float %7447, %7590
  %7592 = fmul fast float %7577, %7526
  %7593 = fadd fast float %7592, %7447
  %7594 = fmul fast float %7589, %7527
  %7595 = fadd fast float %7594, %7448
  %7596 = fmul fast float %7584, %7527
  %7597 = fsub fast float %7448, %7596
  %7598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %7591, float %7597, float %7515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7599 = extractvalue %dx.types.ResRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.ResRet.f32 %7598, 1
  %7601 = extractvalue %dx.types.ResRet.f32 %7598, 2
  %7602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %7593, float %7597, float %7515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7603 = extractvalue %dx.types.ResRet.f32 %7602, 0
  %7604 = extractvalue %dx.types.ResRet.f32 %7602, 1
  %7605 = extractvalue %dx.types.ResRet.f32 %7602, 2
  %7606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %7591, float %7595, float %7515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7607 = extractvalue %dx.types.ResRet.f32 %7606, 0
  %7608 = extractvalue %dx.types.ResRet.f32 %7606, 1
  %7609 = extractvalue %dx.types.ResRet.f32 %7606, 2
  %7610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %58, float %7593, float %7595, float %7515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7611 = extractvalue %dx.types.ResRet.f32 %7610, 0
  %7612 = extractvalue %dx.types.ResRet.f32 %7610, 1
  %7613 = extractvalue %dx.types.ResRet.f32 %7610, 2
  %7614 = fsub fast float %7607, %7599
  %7615 = fsub fast float %7608, %7600
  %7616 = fsub fast float %7609, %7601
  %7617 = fmul fast float %7614, %7587
  %7618 = fmul fast float %7615, %7587
  %7619 = fmul fast float %7616, %7587
  %7620 = fadd fast float %7617, %7599
  %7621 = fadd fast float %7618, %7600
  %7622 = fadd fast float %7619, %7601
  %7623 = fsub fast float %7611, %7603
  %7624 = fsub fast float %7612, %7604
  %7625 = fsub fast float %7613, %7605
  %7626 = fmul fast float %7623, %7587
  %7627 = fmul fast float %7624, %7587
  %7628 = fmul fast float %7625, %7587
  %7629 = fsub fast float %7603, %7620
  %7630 = fadd fast float %7629, %7626
  %7631 = fsub fast float %7604, %7621
  %7632 = fadd fast float %7631, %7627
  %7633 = fsub fast float %7605, %7622
  %7634 = fadd fast float %7633, %7628
  %7635 = fmul fast float %7630, %7575
  %7636 = fmul fast float %7632, %7575
  %7637 = fmul fast float %7634, %7575
  %7638 = fadd fast float %7635, %7620
  %7639 = fadd fast float %7636, %7621
  %7640 = fadd fast float %7637, %7622
  %7641 = fmul fast float %7638, %4002
  %7642 = fmul fast float %7639, %4002
  %7643 = fmul fast float %7640, %4002
  br label %7644

; <label>:7644                                    ; preds = %7477, %7437
  %7645 = phi float [ %7517, %7477 ], [ 1.000000e+00, %7437 ]
  %7646 = phi float [ %7518, %7477 ], [ 1.000000e+00, %7437 ]
  %7647 = phi float [ %7519, %7477 ], [ 1.000000e+00, %7437 ]
  %7648 = phi float [ %7641, %7477 ], [ 0.000000e+00, %7437 ]
  %7649 = phi float [ %7642, %7477 ], [ 0.000000e+00, %7437 ]
  %7650 = phi float [ %7643, %7477 ], [ 0.000000e+00, %7437 ]
  %7651 = fmul fast float %7645, %7444
  %7652 = call float @dx.op.dot3.f32(i32 55, float %7645, float %7646, float %7647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7653 = call float @dx.op.dot3.f32(i32 55, float %7648, float %7649, float %7650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7654 = select i1 %230, float %7652, float %7645
  %7655 = select i1 %230, float %7652, float %7646
  %7656 = select i1 %230, float 1.000000e+00, float %7647
  %7657 = select i1 %230, float %7653, float %7648
  %7658 = select i1 %230, float 0.000000e+00, float %7649
  %7659 = select i1 %230, float 0.000000e+00, float %7650
  %7660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %64, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7661 = extractvalue %dx.types.CBufRet.i32 %7660, 3
  %7662 = and i32 %7661, 3
  %7663 = icmp ne i32 %7662, 0
  %7664 = and i32 %7661, 4
  %7665 = icmp ne i32 %7664, 0
  %7666 = and i1 %7663, %7665
  %7667 = and i1 %230, %7666
  br i1 %7667, label %7668, label %7674

; <label>:7668                                    ; preds = %7644
  %7669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7670 = extractvalue %dx.types.CBufRet.f32 %7669, 1
  %7671 = fadd fast float %7651, -1.000000e+00
  %7672 = fmul fast float %7670, %7671
  %7673 = fadd fast float %7672, 1.000000e+00
  br label %7674

; <label>:7674                                    ; preds = %7668, %7644
  %7675 = phi float [ %7673, %7668 ], [ %7651, %7644 ]
  %7676 = fadd fast float %7441, %7438
  %7677 = fmul fast float %7654, %7676
  %7678 = fadd fast float %7677, %7657
  %7679 = fadd fast float %7442, %7439
  %7680 = fmul fast float %7655, %7679
  %7681 = fadd fast float %7680, %7658
  %7682 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  br i1 %230, label %7683, label %7698

; <label>:7683                                    ; preds = %7674
  %7684 = fadd fast float %7678, %7681
  %7685 = fmul fast float %7682, %7684
  %7686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7687 = extractvalue %dx.types.CBufRet.f32 %7686, 3
  %7688 = extractvalue %dx.types.CBufRet.f32 %6016, 1
  %7689 = fsub fast float %6021, %6015
  %7690 = fadd fast float %7689, %6022
  %7691 = fsub fast float %7690, %7688
  %7692 = extractvalue %dx.types.CBufRet.f32 %6016, 2
  %7693 = fmul fast float %7691, %7692
  %7694 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7695 = fsub fast float %7694, %7687
  %7696 = fmul fast float %7695, %7675
  %7697 = fadd fast float %7696, %7687
  br label %7722

; <label>:7698                                    ; preds = %7674
  %7699 = fadd fast float %7443, %7440
  %7700 = fmul fast float %7656, %7699
  %7701 = fadd fast float %7700, %7659
  %7702 = fmul fast float %7682, %7678
  %7703 = fmul fast float %7682, %7681
  %7704 = fmul fast float %7682, %7701
  %7705 = call float @dx.op.binary.f32(i32 35, float %7703, float %7704)  ; FMax(a,b)
  %7706 = call float @dx.op.binary.f32(i32 35, float %7702, float %7705)  ; FMax(a,b)
  %7707 = call float @dx.op.binary.f32(i32 35, float %7706, float 1.000000e+00)  ; FMax(a,b)
  %7708 = fcmp fast ugt float %7707, 0x3F10000000000000
  br i1 %7708, label %7710, label %7709

; <label>:7709                                    ; preds = %7698
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7710

; <label>:7710                                    ; preds = %7709, %7698
  %7711 = add i32 %67, 132
  %7712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %55, i32 %7711, i32 undef)  ; BufferLoad(srv,index,wot)
  %7713 = extractvalue %dx.types.ResRet.i32 %7712, 0
  %7714 = and i32 %7713, 32
  %7715 = icmp eq i32 %7714, 0
  br i1 %7715, label %7722, label %7716

; <label>:7716                                    ; preds = %7710
  %7717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7718 = extractvalue %dx.types.CBufRet.f32 %7717, 0
  %7719 = fmul fast float %7718, 0x3FE99999A0000000
  %7720 = fadd fast float %7718, %7702
  %7721 = fadd fast float %7719, %7704
  br label %7722

; <label>:7722                                    ; preds = %7716, %7710, %7683
  %7723 = phi float [ %7685, %7683 ], [ %7720, %7716 ], [ %7702, %7710 ]
  %7724 = phi float [ %7697, %7683 ], [ %7703, %7716 ], [ %7703, %7710 ]
  %7725 = phi float [ 1.000000e+00, %7683 ], [ %7721, %7716 ], [ %7704, %7710 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7726 = call float @dx.op.binary.f32(i32 36, float %7723, float 3.225500e+04)  ; FMin(a,b)
  %7727 = call float @dx.op.binary.f32(i32 36, float %7724, float 3.225500e+04)  ; FMin(a,b)
  %7728 = call float @dx.op.binary.f32(i32 36, float %7725, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7726)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7727)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7728)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

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
!dx.viewIdState = !{!80}
!dx.entryPoints = !{!81}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !68, !71}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
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
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !18}
!44 = !{i32 36, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!48 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!49 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!50 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!51 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!52 = !{i32 44, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !53}
!53 = !{i32 0, i32 14}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!59 = !{i32 50, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!60 = !{i32 51, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!61 = !{i32 52, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!62 = !{i32 53, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!63 = !{i32 54, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!64 = !{i32 55, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!65 = !{i32 56, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !53}
!66 = !{i32 57, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!67 = !{i32 58, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!68 = !{!69, !70}
!69 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!70 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79}
!72 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!73 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!74 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!75 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!76 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!77 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!78 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!79 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!80 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!81 = !{void ()* @ps_main, !"ps_main", !82, !4, !99}
!82 = !{!83, !97, null}
!83 = !{!84, !87, !89, !91, !92, !93, !95, !96}
!84 = !{i32 0, !"SV_Position", i8 9, i8 3, !85, i8 4, i32 1, i8 4, i32 0, i8 0, !86}
!85 = !{i32 0}
!86 = !{i32 3, i32 15}
!87 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !85, i8 2, i32 1, i8 2, i32 1, i8 0, !88}
!88 = !{i32 3, i32 3}
!89 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !85, i8 2, i32 1, i8 3, i32 2, i8 0, !90}
!90 = !{i32 3, i32 7}
!91 = !{i32 3, !"NORMAL", i8 9, i8 0, !85, i8 2, i32 1, i8 3, i32 3, i8 0, !90}
!92 = !{i32 4, !"TANGENT", i8 9, i8 0, !85, i8 2, i32 1, i8 4, i32 4, i8 0, !86}
!93 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !85, i8 1, i32 1, i8 1, i32 5, i8 0, !94}
!94 = !{i32 3, i32 1}
!95 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !85, i8 1, i32 1, i8 1, i32 5, i8 1, !94}
!96 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !85, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !85, i8 0, i32 1, i8 4, i32 0, i8 0, !86}
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

