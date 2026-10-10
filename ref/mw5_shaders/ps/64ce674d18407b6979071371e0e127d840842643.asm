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
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: f95c121bb22f70c5c27be00dd27f4b7c
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t14,space2     1
;                                   texture     f32          2d      T8     t13,space2     1
;                                   texture     u32          2d      T9     t17,space2     1
;                                   texture     f32          3d     T10     t18,space2     1
;                                   texture     f32     2darray     T11     t23,space2     1
;                                   texture     f32     2darray     T12     t24,space2     1
;                                   texture     f32     2darray     T13     t25,space2     1
;                                   texture    byte         r/o     T14     t66,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     f32          2d     T17     t69,space2     1
;                                   texture     f32          2d     T18     t37,space2     1
;                                   texture     f32          2d     T19             t0     1
;                                   texture     f32          2d     T20     t58,space2     1
;                                   texture     f32          2d     T21     t59,space2     1
;                                   texture     f32          2d     T22     t60,space2     1
;                                   texture    byte         r/o     T23     t45,space1     1
;                                   texture    byte         r/o     T24     t46,space1     1
;                                   texture    byte         r/o     T25     t47,space1     1
;                                   texture    byte         r/o     T26     t48,space1     1
;                                   texture     f32          2d     T27     t57,space2     1
;                                   texture    byte         r/o     T28     t69,space1     1
;                                   texture     u32          2d     T29     t56,space2     1
;                                   texture     f32          2d     T30     t34,space2     1
;                                   texture    byte         r/o     T31     t10,space1     1
;                                   texture    byte         r/o     T32      t1,space1     1
;                                   texture     f32          1d     T33     t32,space2     1
;                                   texture     f32     2darray     T34      t8,space2     1
;                                   texture     f32          2d     T35      t2,space2     1
;                                   texture     f32          2d     T36      t3,space2     1
;                                   texture     f32          2d     T37      t4,space2     1
;                                   textureunorm_f32     2darray     T38     t80,space2     1
;                                   texture    byte         r/o     T39     t67,space1     1
;                                   texture     f32          2d     T40      t7,space2     1
;                                   texture     f32          2d     T41      t6,space2     1
;                                   texture     f32          2d     T42      t5,space2     1
;                                   texture     f32          2d     T43     t38,space2     1
;                                   texture    byte         r/o     T44     t12,space1     1
;                                   texture    byte         r/o     T45     t13,space1     1
;                                   texture     f32          1d     T46     t30,space2     1
;                                   texture     f32          3d     T47     t44,space2     1
;                                   texture     f32          3d     T48     t45,space2     1
;                                   texture     f32     2darray     T49     t47,space2     1
;                                   textureunorm_f32     2darray     T50     t85,space2     1
;                                   texture     f32          2d     T51     t83,space2     1
;                                   texture     f32          2d     T52     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 21, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = alloca [4 x i32], align 4
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = alloca [12 x float], align 4
  %78 = alloca [12 x float], align 4
  %79 = alloca [3 x float], align 4
  %80 = alloca [3 x float], align 4
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fmul fast float %84, %73
  %86 = fmul fast float %84, %74
  %87 = fmul fast float %66, %63
  %88 = fmul fast float %67, %62
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %67, %61
  %91 = fmul fast float %65, %63
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %65, %62
  %94 = fmul fast float %66, %61
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %89, %64
  %97 = fmul fast float %92, %64
  %98 = fmul fast float %95, %64
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %102 = fmul fast float %100, 2.000000e+00
  %103 = fmul fast float %102, %85
  %104 = fmul fast float %101, 2.000000e+00
  %105 = fmul fast float %104, %86
  %106 = fsub fast float 1.000000e+00, %103
  %107 = fsub fast float 1.000000e+00, %105
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fmul fast float %106, %109
  %113 = fmul fast float %106, %110
  %114 = fmul fast float %106, %111
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fmul fast float %107, %116
  %120 = fmul fast float %107, %117
  %121 = fmul fast float %107, %118
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fadd fast float %119, %123
  %127 = fadd fast float %126, %112
  %128 = fadd fast float %120, %124
  %129 = fadd fast float %128, %113
  %130 = fadd fast float %121, %125
  %131 = fadd fast float %130, %114
  %132 = fmul fast float %127, %76
  %133 = fmul fast float %129, %76
  %134 = fmul fast float %131, %76
  %135 = fadd fast float %70, 5.000000e-01
  %136 = fptoui float %135 to i32
  %137 = shl i32 %136, 3
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %137, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = or i32 %137, 4
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %139, 8191
  %144 = lshr i32 %139, 13
  %145 = and i32 %144, 8191
  %146 = lshr i32 %139, 26
  %147 = and i32 %142, 65535
  %148 = lshr i32 %142, 16
  %149 = uitofp i32 %147 to float
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %152 = uitofp i32 %148 to float
  %153 = uitofp i32 %143 to float
  %154 = fmul fast float %151, %153
  %155 = uitofp i32 %145 to float
  %156 = fmul fast float %151, %155
  %157 = fmul fast float %151, %68
  %158 = fmul fast float %157, %149
  %159 = fmul fast float %151, %69
  %160 = fmul fast float %159, %152
  %161 = fadd fast float %158, %154
  %162 = fadd fast float %156, %160
  %163 = uitofp i32 %146 to float
  %164 = fmul fast float %85, 5.000000e-01
  %165 = fmul fast float %86, 5.000000e-01
  %166 = fptosi float %164 to i32
  %167 = fptosi float %165 to i32
  %168 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %166, i32 %167, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = lshr i32 %169, 18
  %171 = uitofp i32 %170 to float
  %172 = fmul fast float %171, 0x3F4C00EBA0000000
  %173 = call float @dx.op.unary.f32(i32 21, float %172)  ; Exp(value)
  %174 = fadd fast float %173, -1.000000e+00
  %175 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %176 = extractvalue %dx.types.Dimensions %175, 0
  %177 = sitofp i32 %176 to float
  %178 = extractvalue %dx.types.Dimensions %175, 1
  %179 = sitofp i32 %178 to float
  %180 = fcmp fast oge float %164, %177
  %181 = fcmp fast oge float %165, %179
  %182 = or i1 %180, %181
  %183 = select i1 %182, float 0x4197782600000000, float %174
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %187 = fmul fast float %185, %85
  %188 = fmul fast float %186, %86
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 114688
  %192 = icmp ne i32 %191, 0
  %193 = select i1 %192, float %187, float 0.000000e+00
  %194 = select i1 %192, float %188, float 0.000000e+00
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %55, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = fmul fast float %196, 2.550000e+02
  %198 = fptoui float %197 to i32
  %199 = select i1 %192, i32 %198, i32 0
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.i32 %201, 3
  %203 = and i32 %202, 3
  %204 = icmp ne i32 %203, 0
  %205 = and i32 %202, 4
  %206 = icmp ne i32 %205, 0
  %207 = and i1 %204, %206
  br i1 %207, label %208, label %219

; <label>:208                                     ; preds = %0
  %209 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %210 = fmul fast float %209, %86
  %211 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %212 = fmul fast float %211, %85
  %213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %212, float %210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fsub fast float 1.000000e+00, %214
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = fcmp fast olt float %215, %217
  br label %222

; <label>:219                                     ; preds = %0
  %220 = icmp eq i32 %205, 0
  %221 = and i1 %204, %220
  br label %222

; <label>:222                                     ; preds = %219, %208
  %223 = phi i1 [ %218, %208 ], [ %221, %219 ]
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = fmul fast float %225, 0x3FE3C6EF40000000
  %227 = frem fast float %85, 2.560000e+02
  %228 = frem fast float %86, 2.560000e+02
  %229 = fptoui float %227 to i32
  %230 = fptoui float %228 to i32
  %231 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %229, i32 %230, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = fadd fast float %232, %226
  %234 = call float @dx.op.unary.f32(i32 22, float %233)  ; Frc(value)
  %235 = add i32 %60, 60
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = shl i32 %237, 4
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %237, 7
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %237, 22
  %245 = shl nuw nsw i32 %244, 5
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %60, 72
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %249, 8
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = lshr i32 %249, 16
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = add i32 %60, 36
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %60, 96
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %272, 0x3F50624DE0000000
  %276 = fmul fast float %274, 0x3F50624DE0000000
  %277 = add i32 %60, 108
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 2
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %290, label %282

; <label>:282                                     ; preds = %222
  %283 = add i32 %60, 184
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = add i32 %285, 0
  %287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %287, %dx.types.Handle %82, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 3
  br label %290

; <label>:290                                     ; preds = %282, %222
  %291 = phi float [ 1.000000e+00, %222 ], [ %289, %282 ]
  %292 = add i32 %60, 24
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = add i32 %60, 28
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = or i32 %297, %294
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %978, label %300

; <label>:300                                     ; preds = %290
  %301 = add i32 %60, 92
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = lshr i32 %303, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = fmul fast float %305, 0x3F50624DE0000000
  %307 = add i32 %60, 40
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = lshr i32 %309, 16
  %311 = and i32 %310, 255
  %312 = lshr i32 %309, 24
  %313 = add i32 %60, 100
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %60, 32
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = lshr i32 %322, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = shl i32 %322, 4
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %322, 7
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 3
  %334 = fmul fast float %333, 1.000000e+03
  %335 = fmul fast float %275, %334
  %336 = call float @dx.op.unary.f32(i32 22, float %335)  ; Frc(value)
  %337 = fadd fast float %336, %265
  %338 = fmul fast float %276, %334
  %339 = call float @dx.op.unary.f32(i32 22, float %338)  ; Frc(value)
  %340 = fadd fast float %339, %267
  %341 = fmul fast float %306, %334
  %342 = call float @dx.op.unary.f32(i32 22, float %341)  ; Frc(value)
  %343 = fmul fast float %342, 0x401921FB60000000
  %344 = fadd fast float %343, %325
  %345 = call float @dx.op.unary.f32(i32 13, float %344)  ; Sin(value)
  %346 = call float @dx.op.unary.f32(i32 12, float %344)  ; Cos(value)
  %347 = fsub fast float -0.000000e+00, %345
  %348 = fadd fast float %71, -5.000000e-01
  %349 = fadd fast float %72, -5.000000e-01
  %350 = fmul fast float %317, %348
  %351 = fmul fast float %319, %349
  %352 = fadd fast float %350, 5.000000e-01
  %353 = fadd fast float %351, 5.000000e-01
  %354 = fmul fast float %328, %352
  %355 = fmul fast float %331, %353
  %356 = fmul fast float %346, %354
  %357 = call float @dx.op.tertiary.f32(i32 46, float %347, float %355, float %356)  ; FMad(a,b,c)
  %358 = fmul fast float %345, %354
  %359 = call float @dx.op.tertiary.f32(i32 46, float %346, float %355, float %358)  ; FMad(a,b,c)
  %360 = fadd fast float %337, %357
  %361 = fadd fast float %340, %359
  %362 = icmp ugt i32 %311, 1
  %363 = icmp ugt i32 %309, 33554431
  %364 = or i1 %363, %362
  br i1 %364, label %365, label %390

; <label>:365                                     ; preds = %300
  %366 = add i32 %60, 84
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = lshr i32 %368, 16
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = fmul fast float %333, %370
  %372 = call float @dx.op.unary.f32(i32 22, float %371)  ; Frc(value)
  %373 = mul nuw nsw i32 %311, %312
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %372, %374
  %376 = call float @dx.op.unary.f32(i32 27, float %375)  ; Round_ni(value)
  %377 = fptoui float %376 to i32
  %378 = urem i32 %377, %311
  %379 = udiv i32 %377, %312
  %380 = call float @dx.op.unary.f32(i32 22, float %360)  ; Frc(value)
  %381 = call float @dx.op.unary.f32(i32 22, float %361)  ; Frc(value)
  %382 = uitofp i32 %378 to float
  %383 = uitofp i32 %379 to float
  %384 = fadd fast float %380, %382
  %385 = fadd fast float %381, %383
  %386 = uitofp i32 %311 to float
  %387 = uitofp i32 %312 to float
  %388 = fdiv fast float %384, %386
  %389 = fdiv fast float %385, %387
  br label %390

; <label>:390                                     ; preds = %365, %300
  %391 = phi float [ %388, %365 ], [ %360, %300 ]
  %392 = phi float [ %389, %365 ], [ %361, %300 ]
  %393 = and i32 %294, 256
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %441, label %395

; <label>:395                                     ; preds = %390
  %396 = add i32 %60, 168
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = add i32 %398, 0
  %400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %400, %dx.types.Handle %82, float %391, float %392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = add i32 %60, 52
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = shl i32 %405, 4
  %407 = and i32 %406, 32752
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %405, 7
  %410 = and i32 %409, 32752
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = fsub fast float 1.000000e+00, %291
  %413 = call float @dx.op.binary.f32(i32 35, float %412, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %414 = bitcast float %291 to i32
  %415 = sitofp i32 %414 to float
  %416 = fadd fast float %415, 0xC1CFBF8940000000
  %417 = fmul fast float %411, %416
  %418 = fadd fast float %417, 0x41CFBF8940000000
  %419 = fptosi float %418 to i32
  %420 = bitcast i32 %419 to float
  %421 = bitcast float %413 to i32
  %422 = sitofp i32 %421 to float
  %423 = fadd fast float %422, 0xC1CFBF8940000000
  %424 = fmul fast float %423, %411
  %425 = fadd fast float %424, 0x41CFBF8940000000
  %426 = fptosi float %425 to i32
  %427 = bitcast i32 %426 to float
  %428 = fmul fast float %420, %408
  %429 = fmul fast float %427, %408
  %430 = fsub fast float %413, %428
  %431 = fadd fast float %429, %413
  %432 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %433 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %434 = fsub fast float %402, %432
  %435 = fsub fast float %433, %432
  %436 = bitcast float %435 to i32
  %437 = sub nsw i32 2129859010, %436
  %438 = bitcast i32 %437 to float
  %439 = fmul fast float %438, %434
  %440 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  br label %441

; <label>:441                                     ; preds = %395, %390
  %442 = phi float [ %440, %395 ], [ %291, %390 ]
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 128
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %463, label %447

; <label>:447                                     ; preds = %441
  %448 = add i32 %60, 164
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = add i32 %450, 0
  %452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %452, %dx.types.Handle %82, float %391, float %392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = and i32 %456, 524288
  %458 = icmp ne i32 %457, 0
  %459 = fcmp fast ogt float %454, 0x3FE0101020000000
  %460 = select i1 %459, float 1.000000e+00, float 0.000000e+00
  %461 = select i1 %458, float %460, float %454
  %462 = fmul fast float %461, %442
  br label %463

; <label>:463                                     ; preds = %447, %441
  %464 = phi float [ %462, %447 ], [ %442, %441 ]
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 16
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %667, label %469

; <label>:469                                     ; preds = %463
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = add i32 %60, 152
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = add i32 %474, 0
  %476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %476, %dx.types.Handle %81, float %391, float %392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = extractvalue %dx.types.ResRet.f32 %477, 1
  %480 = extractvalue %dx.types.ResRet.f32 %477, 2
  %481 = extractvalue %dx.types.ResRet.f32 %477, 3
  %482 = and i32 %471, 255
  %483 = uitofp i32 %482 to float
  %484 = lshr i32 %471, 8
  %485 = and i32 %484, 255
  %486 = uitofp i32 %485 to float
  %487 = fmul fast float %481, %483
  %488 = fadd fast float %487, %486
  %489 = fmul fast float %488, 0x3F70101000000000
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 512
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %502, label %494

; <label>:494                                     ; preds = %469
  %495 = add i32 %60, 172
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %497, 0
  %499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %499, %dx.types.Handle %82, float %391, float %392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  br label %502

; <label>:502                                     ; preds = %494, %469
  %503 = phi float [ %501, %494 ], [ 1.000000e+00, %469 ]
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 33554432
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %614, label %508

; <label>:508                                     ; preds = %502
  %509 = add i32 %60, 80
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 65535
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %511, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = add i32 %60, 84
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 65535
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = lshr i32 %522, 24
  %524 = uitofp i32 %523 to float
  %525 = fmul fast float %524, 0x3F70101020000000
  %526 = and i32 %522, 255
  %527 = uitofp i32 %526 to float
  %528 = fmul fast float %527, 0x3F70101020000000
  %529 = lshr i32 %522, 8
  %530 = and i32 %529, 255
  %531 = uitofp i32 %530 to float
  %532 = fmul fast float %531, 0x3F70101020000000
  %533 = lshr i32 %522, 16
  %534 = and i32 %533, 255
  %535 = uitofp i32 %534 to float
  %536 = fmul fast float %535, 0x3F70101020000000
  %537 = add i32 %60, 76
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = lshr i32 %539, 24
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, 0x3F70101020000000
  %543 = and i32 %539, 255
  %544 = uitofp i32 %543 to float
  %545 = fmul fast float %544, 0x3F70101020000000
  %546 = lshr i32 %539, 8
  %547 = and i32 %546, 255
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %548, 0x3F70101020000000
  %550 = lshr i32 %539, 16
  %551 = and i32 %550, 255
  %552 = uitofp i32 %551 to float
  %553 = fmul fast float %552, 0x3F70101020000000
  %554 = bitcast float %478 to i32
  %555 = ashr i32 %554, 1
  %556 = sub nsw i32 1597463174, %555
  %557 = bitcast i32 %556 to float
  %558 = fmul fast float %478, 5.000000e-01
  %559 = fmul fast float %557, %557
  %560 = fmul fast float %559, %558
  %561 = fsub fast float 1.500000e+00, %560
  %562 = fmul fast float %557, %478
  %563 = fmul fast float %562, %561
  %564 = bitcast float %479 to i32
  %565 = ashr i32 %564, 1
  %566 = sub nsw i32 1597463174, %565
  %567 = bitcast i32 %566 to float
  %568 = fmul fast float %479, 5.000000e-01
  %569 = fmul fast float %567, %567
  %570 = fmul fast float %569, %568
  %571 = fsub fast float 1.500000e+00, %570
  %572 = fmul fast float %567, %479
  %573 = fmul fast float %572, %571
  %574 = bitcast float %480 to i32
  %575 = ashr i32 %574, 1
  %576 = sub nsw i32 1597463174, %575
  %577 = bitcast i32 %576 to float
  %578 = fmul fast float %480, 5.000000e-01
  %579 = fmul fast float %577, %577
  %580 = fmul fast float %579, %578
  %581 = fsub fast float 1.500000e+00, %580
  %582 = fmul fast float %577, %480
  %583 = fmul fast float %582, %581
  %584 = fsub fast float %563, %545
  %585 = fsub fast float %573, %549
  %586 = fsub fast float %583, %553
  %587 = fmul fast float %584, %513
  %588 = fmul fast float %585, %515
  %589 = fmul fast float %586, %520
  %590 = fadd fast float %587, %528
  %591 = fadd fast float %588, %532
  %592 = fadd fast float %589, %536
  %593 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  %594 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %595 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %596 = fmul fast float %593, %593
  %597 = fmul fast float %594, %594
  %598 = fmul fast float %595, %595
  %599 = fsub fast float %596, %478
  %600 = fsub fast float %597, %479
  %601 = fsub fast float %598, %480
  %602 = fmul fast float %599, %503
  %603 = fmul fast float %600, %503
  %604 = fmul fast float %601, %503
  %605 = fadd fast float %602, %478
  %606 = fadd fast float %603, %479
  %607 = fadd fast float %604, %480
  %608 = fadd fast float %525, %489
  %609 = fsub fast float %608, %542
  %610 = call float @dx.op.unary.f32(i32 7, float %609)  ; Saturate(value)
  %611 = fsub fast float %610, %489
  %612 = fmul fast float %611, %503
  %613 = fadd fast float %612, %489
  br label %667

; <label>:614                                     ; preds = %502
  %615 = and i32 %505, 134217728
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %651, label %617

; <label>:617                                     ; preds = %614
  %618 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %619 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %620 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %621 = fadd fast float %618, -5.000000e-01
  %622 = fadd fast float %619, -5.000000e-01
  %623 = fadd fast float %620, -5.000000e-01
  %624 = fmul fast float %621, %503
  %625 = fmul fast float %622, %503
  %626 = fmul fast float %623, %503
  %627 = fadd fast float %624, 5.000000e-01
  %628 = fadd fast float %625, 5.000000e-01
  %629 = fadd fast float %626, 5.000000e-01
  %630 = call float @dx.op.unary.f32(i32 24, float %478)  ; Sqrt(value)
  %631 = call float @dx.op.unary.f32(i32 24, float %479)  ; Sqrt(value)
  %632 = call float @dx.op.unary.f32(i32 24, float %480)  ; Sqrt(value)
  %633 = fmul fast float %627, 2.000000e+00
  %634 = fsub fast float 1.000000e+00, %633
  %635 = fmul fast float %634, %630
  %636 = fadd fast float %635, %633
  %637 = fmul fast float %636, %630
  %638 = fmul fast float %628, 2.000000e+00
  %639 = fsub fast float 1.000000e+00, %638
  %640 = fmul fast float %639, %631
  %641 = fadd fast float %640, %638
  %642 = fmul fast float %641, %631
  %643 = fmul fast float %629, 2.000000e+00
  %644 = fsub fast float 1.000000e+00, %643
  %645 = fmul fast float %644, %632
  %646 = fadd fast float %645, %643
  %647 = fmul fast float %646, %632
  %648 = fmul fast float %637, %637
  %649 = fmul fast float %642, %642
  %650 = fmul fast float %647, %647
  br label %667

; <label>:651                                     ; preds = %614
  %652 = fmul fast float %252, %252
  %653 = fmul fast float %256, %256
  %654 = fmul fast float %260, %260
  %655 = fadd fast float %652, -1.000000e+00
  %656 = fadd fast float %653, -1.000000e+00
  %657 = fadd fast float %654, -1.000000e+00
  %658 = fmul fast float %503, %655
  %659 = fmul fast float %503, %656
  %660 = fmul fast float %503, %657
  %661 = fadd fast float %658, 1.000000e+00
  %662 = fadd fast float %659, 1.000000e+00
  %663 = fadd fast float %660, 1.000000e+00
  %664 = fmul fast float %661, %478
  %665 = fmul fast float %662, %479
  %666 = fmul fast float %663, %480
  br label %667

; <label>:667                                     ; preds = %651, %617, %508, %463
  %668 = phi float [ %613, %508 ], [ %489, %617 ], [ %489, %651 ], [ 0x3FA23C0BE0000000, %463 ]
  %669 = phi float [ %605, %508 ], [ %648, %617 ], [ %664, %651 ], [ 1.000000e+00, %463 ]
  %670 = phi float [ %606, %508 ], [ %649, %617 ], [ %665, %651 ], [ 1.000000e+00, %463 ]
  %671 = phi float [ %607, %508 ], [ %650, %617 ], [ %666, %651 ], [ 1.000000e+00, %463 ]
  %672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.i32 %672, 1
  %674 = and i32 %673, 1
  %675 = icmp ne i32 %674, 0
  %676 = add i32 %60, 116
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 32
  %680 = icmp ne i32 %679, 0
  %681 = and i1 %675, %680
  %682 = select i1 %681, float 1.000000e+00, float %669
  %683 = select i1 %681, float 0x3FD3333340000000, float %670
  %684 = select i1 %681, float 0x3FD3333340000000, float %671
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 32
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %829, label %689

; <label>:689                                     ; preds = %667
  %690 = add i32 %60, 44
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %60, 156
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %695, 0
  %697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %698 = add i32 %60, 120
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %698, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = extractvalue %dx.types.ResRet.i32 %699, 1
  %702 = extractvalue %dx.types.ResRet.i32 %699, 2
  %703 = extractvalue %dx.types.ResRet.i32 %699, 3
  %704 = bitcast i32 %701 to float
  %705 = bitcast i32 %702 to float
  %706 = bitcast i32 %703 to float
  %707 = add i32 %60, 136
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = extractvalue %dx.types.ResRet.i32 %708, 1
  %711 = extractvalue %dx.types.ResRet.i32 %708, 2
  %712 = extractvalue %dx.types.ResRet.i32 %708, 3
  %713 = bitcast i32 %710 to float
  %714 = bitcast i32 %711 to float
  %715 = bitcast i32 %712 to float
  %716 = fmul fast float %704, %391
  %717 = fmul fast float %704, %392
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 3
  %720 = fmul fast float %719, %705
  %721 = fmul fast float %719, %706
  %722 = fadd fast float %720, %716
  %723 = fadd fast float %721, %717
  %724 = fmul fast float %713, %391
  %725 = fmul fast float %713, %392
  %726 = fmul fast float %719, %714
  %727 = fmul fast float %719, %715
  %728 = fadd fast float %726, %724
  %729 = fadd fast float %727, %725
  %730 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %697, i32 0)  ; GetDimensions(handle,mipLevel)
  %731 = extractvalue %dx.types.Dimensions %730, 3
  %732 = sitofp i32 %731 to float
  %733 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %697, %dx.types.Handle %81, float %722, float %723, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %734 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %697, %dx.types.Handle %81, float %728, float %729, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %735 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %81, float %722, float %723, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = extractvalue %dx.types.ResRet.f32 %735, 2
  %739 = extractvalue %dx.types.ResRet.f32 %735, 3
  %740 = and i32 %692, 255
  %741 = uitofp i32 %740 to float
  %742 = lshr i32 %692, 8
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = lshr i32 %692, 16
  %746 = and i32 %745, 255
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F70101000000000
  %749 = fmul fast float %736, %741
  %750 = fadd fast float %749, %744
  %751 = fadd fast float %737, -5.000000e-01
  %752 = fadd fast float %739, -5.000000e-01
  %753 = fmul fast float %751, %748
  %754 = fmul fast float %752, %748
  %755 = fadd fast float %753, 5.000000e-01
  %756 = fadd fast float %754, 5.000000e-01
  %757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %81, float %728, float %729, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = extractvalue %dx.types.ResRet.f32 %757, 2
  %761 = extractvalue %dx.types.ResRet.f32 %757, 3
  %762 = fmul fast float %758, %741
  %763 = fadd fast float %762, %744
  %764 = fadd fast float %759, -5.000000e-01
  %765 = fadd fast float %761, -5.000000e-01
  %766 = fmul fast float %764, %748
  %767 = fmul fast float %765, %748
  %768 = fadd fast float %766, 5.000000e-01
  %769 = fadd fast float %767, 5.000000e-01
  %770 = fmul fast float %755, 2.000000e+00
  %771 = fadd fast float %770, -1.000000e+00
  %772 = fmul fast float %756, 2.000000e+00
  %773 = fadd fast float %772, -1.000000e+00
  %774 = fadd fast float %771, %773
  %775 = fmul fast float %774, 5.000000e-01
  %776 = fsub fast float %771, %773
  %777 = fmul fast float %776, 5.000000e-01
  %778 = call float @dx.op.unary.f32(i32 6, float %775)  ; FAbs(value)
  %779 = fsub fast float 1.000000e+00, %778
  %780 = call float @dx.op.unary.f32(i32 6, float %777)  ; FAbs(value)
  %781 = fsub fast float %779, %780
  %782 = call float @dx.op.dot3.f32(i32 55, float %775, float %777, float %781, float %775, float %777, float %781)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = call float @dx.op.unary.f32(i32 25, float %782)  ; Rsqrt(value)
  %784 = fmul fast float %768, 2.000000e+00
  %785 = fadd fast float %784, -1.000000e+00
  %786 = fmul fast float %769, 2.000000e+00
  %787 = fadd fast float %786, -1.000000e+00
  %788 = fadd fast float %785, %787
  %789 = fmul fast float %788, 5.000000e-01
  %790 = fsub fast float %785, %787
  %791 = fmul fast float %790, 5.000000e-01
  %792 = call float @dx.op.unary.f32(i32 6, float %789)  ; FAbs(value)
  %793 = fsub fast float 1.000000e+00, %792
  %794 = call float @dx.op.unary.f32(i32 6, float %791)  ; FAbs(value)
  %795 = fsub fast float %793, %794
  %796 = call float @dx.op.dot3.f32(i32 55, float %789, float %791, float %795, float %789, float %791, float %795)  ; Dot3(ax,ay,az,bx,by,bz)
  %797 = call float @dx.op.unary.f32(i32 25, float %796)  ; Rsqrt(value)
  %798 = fadd fast float %732, -1.000000e+00
  %799 = fsub fast float %798, %733
  %800 = fmul fast float %799, 5.000000e-01
  %801 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %802 = fsub fast float %798, %734
  %803 = fmul fast float %802, 5.000000e-01
  %804 = call float @dx.op.unary.f32(i32 7, float %803)  ; Saturate(value)
  %805 = bitcast i32 %700 to float
  %806 = bitcast i32 %709 to float
  %807 = fmul fast float %775, %805
  %808 = fmul fast float %807, %783
  %809 = fmul fast float %808, %801
  %810 = fmul fast float %777, %805
  %811 = fmul fast float %810, %783
  %812 = fmul fast float %811, %801
  %813 = fmul fast float %797, %806
  %814 = fmul fast float %813, %789
  %815 = fmul fast float %814, %804
  %816 = fmul fast float %813, %791
  %817 = fmul fast float %816, %804
  %818 = fadd fast float %815, %809
  %819 = fadd fast float %817, %812
  %820 = fmul fast float %738, %805
  %821 = fmul fast float %760, %806
  %822 = fadd fast float %821, %820
  %823 = fmul fast float %750, %805
  %824 = fmul fast float %763, %806
  %825 = fadd fast float %824, %823
  %826 = fmul fast float %825, 0x3F70101000000000
  %827 = call float @dx.op.dot2.f32(i32 54, float %818, float %819, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %828 = call float @dx.op.dot2.f32(i32 54, float %818, float %819, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %829

; <label>:829                                     ; preds = %689, %667
  %830 = phi float [ %826, %689 ], [ 0x3FD6666660000000, %667 ]
  %831 = phi float [ %827, %689 ], [ 0.000000e+00, %667 ]
  %832 = phi float [ %828, %689 ], [ 0.000000e+00, %667 ]
  %833 = phi float [ %822, %689 ], [ 1.000000e+00, %667 ]
  %834 = add i32 %60, 64
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 22
  %838 = shl nuw nsw i32 %837, 5
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 64
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %877, label %844

; <label>:844                                     ; preds = %829
  %845 = add i32 %60, 160
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = add i32 %847, 0
  %849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 131072
  %853 = icmp eq i32 %852, 0
  %854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %849, %dx.types.Handle %81, float %391, float %392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = fmul fast float %855, %240
  %859 = fmul fast float %856, %243
  %860 = fmul fast float %857, %246
  br i1 %853, label %867, label %861

; <label>:861                                     ; preds = %844
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = fmul fast float %863, %858
  %865 = fmul fast float %863, %859
  %866 = fmul fast float %863, %860
  br label %867

; <label>:867                                     ; preds = %861, %844
  %868 = phi float [ %864, %861 ], [ %858, %844 ]
  %869 = phi float [ %865, %861 ], [ %859, %844 ]
  %870 = phi float [ %866, %861 ], [ %860, %844 ]
  %871 = fmul fast float %868, %839
  %872 = select i1 %223, float %871, float %868
  %873 = call float @dx.op.dot3.f32(i32 55, float %872, float %869, float %870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %874 = select i1 %223, float 0.000000e+00, float %868
  %875 = select i1 %223, float %873, float %869
  %876 = select i1 %223, float 0.000000e+00, float %870
  br label %877

; <label>:877                                     ; preds = %867, %829
  %878 = phi float [ %874, %867 ], [ 0.000000e+00, %829 ]
  %879 = phi float [ %875, %867 ], [ 0.000000e+00, %829 ]
  %880 = phi float [ %876, %867 ], [ 0.000000e+00, %829 ]
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 1024
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %915, label %885

; <label>:885                                     ; preds = %877
  %886 = add i32 %60, 56
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 255
  %890 = uitofp i32 %889 to float
  %891 = fmul fast float %890, 0x3F70101020000000
  %892 = lshr i32 %888, 8
  %893 = and i32 %892, 255
  %894 = uitofp i32 %893 to float
  %895 = fmul fast float %894, 0x3F70101020000000
  %896 = lshr i32 %888, 16
  %897 = and i32 %896, 255
  %898 = uitofp i32 %897 to float
  %899 = fmul fast float %898, 0x3F70101020000000
  %900 = fmul fast float %891, %891
  %901 = fmul fast float %895, %895
  %902 = fmul fast float %899, %899
  %903 = add i32 %60, 176
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = add i32 %905, 0
  %907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %908 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %907, %dx.types.Handle %82, float %391, float %392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 2
  %912 = fmul fast float %900, %909
  %913 = fmul fast float %901, %910
  %914 = fmul fast float %902, %911
  br label %915

; <label>:915                                     ; preds = %885, %877
  %916 = phi float [ %912, %885 ], [ 0.000000e+00, %877 ]
  %917 = phi float [ %913, %885 ], [ 0.000000e+00, %877 ]
  %918 = phi float [ %914, %885 ], [ 0.000000e+00, %877 ]
  %919 = fcmp fast ogt float %916, 0.000000e+00
  %920 = fcmp fast ogt float %917, 0.000000e+00
  %921 = fcmp fast ogt float %918, 0.000000e+00
  %922 = call float @dx.op.unary.f32(i32 23, float %916)  ; Log(value)
  %923 = call float @dx.op.unary.f32(i32 23, float %917)  ; Log(value)
  %924 = call float @dx.op.unary.f32(i32 23, float %918)  ; Log(value)
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = lshr i32 %926, 7
  %928 = and i32 %927, 32752
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = fmul fast float %922, 0xBFE62E4300000000
  %931 = fmul fast float %930, %929
  %932 = fmul fast float %923, 0xBFE62E4300000000
  %933 = fmul fast float %932, %929
  %934 = fmul fast float %924, 0xBFE62E4300000000
  %935 = fmul fast float %934, %929
  %936 = select i1 %919, float %931, float 1.270000e+02
  %937 = select i1 %920, float %933, float 1.270000e+02
  %938 = select i1 %921, float %935, float 1.270000e+02
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = and i32 %940, 10240
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %963, label %943

; <label>:943                                     ; preds = %915
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = and i32 %945, 2048
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %963, label %948

; <label>:948                                     ; preds = %943
  %949 = add i32 %60, 180
  %950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.i32 %950, 0
  %952 = add i32 %951, 0
  %953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %952, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %954 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %953, %dx.types.Handle %82, float %391, float %392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %955 = extractvalue %dx.types.ResRet.f32 %954, 3
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = shl i32 %957, 4
  %959 = and i32 %958, 32752
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = fmul fast float %960, %955
  %962 = call float @dx.op.binary.f32(i32 35, float %961, float 0x3F70101020000000)  ; FMax(a,b)
  br label %963

; <label>:963                                     ; preds = %948, %943, %915
  %964 = phi float [ %962, %948 ], [ 0x3F70101020000000, %943 ], [ 0x3F70101020000000, %915 ]
  %965 = add i32 %60, 48
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 255
  %969 = uitofp i32 %968 to float
  %970 = lshr i32 %967, 8
  %971 = and i32 %970, 255
  %972 = uitofp i32 %971 to float
  %973 = call float @dx.op.dot3.f32(i32 55, float %682, float %683, float %684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %974 = fmul fast float %972, %973
  %975 = fadd fast float %974, %969
  %976 = fmul fast float %975, 0x3F70101020000000
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  br label %978

; <label>:978                                     ; preds = %963, %290
  %979 = phi float [ 0.000000e+00, %290 ], [ %831, %963 ]
  %980 = phi float [ 0.000000e+00, %290 ], [ %832, %963 ]
  %981 = phi float [ 0.000000e+00, %290 ], [ %878, %963 ]
  %982 = phi float [ 0.000000e+00, %290 ], [ %879, %963 ]
  %983 = phi float [ 0.000000e+00, %290 ], [ %880, %963 ]
  %984 = phi float [ 0.000000e+00, %290 ], [ %936, %963 ]
  %985 = phi float [ 0.000000e+00, %290 ], [ %937, %963 ]
  %986 = phi float [ 0.000000e+00, %290 ], [ %938, %963 ]
  %987 = phi float [ 0.000000e+00, %290 ], [ %682, %963 ]
  %988 = phi float [ 0.000000e+00, %290 ], [ %683, %963 ]
  %989 = phi float [ 0.000000e+00, %290 ], [ %684, %963 ]
  %990 = phi float [ 0.000000e+00, %290 ], [ %668, %963 ]
  %991 = phi float [ 0.000000e+00, %290 ], [ %464, %963 ]
  %992 = phi float [ 0.000000e+00, %290 ], [ %830, %963 ]
  %993 = phi float [ 0.000000e+00, %290 ], [ %833, %963 ]
  %994 = phi float [ 0.000000e+00, %290 ], [ %964, %963 ]
  %995 = phi float [ 0.000000e+00, %290 ], [ %977, %963 ]
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = call float @dx.op.dot2.f32(i32 54, float %979, float %980, float %979, float %980)  ; Dot2(ax,ay,bx,by)
  %999 = fmul fast float %998, 0x3FE3333340000000
  %1000 = fsub fast float 1.000000e+00, %999
  %1001 = call float @dx.op.dot3.f32(i32 55, float %979, float %980, float %1000, float %979, float %980, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = call float @dx.op.unary.f32(i32 25, float %1001)  ; Rsqrt(value)
  %1003 = fmul fast float %1002, %979
  %1004 = fmul fast float %1002, %980
  %1005 = fmul fast float %1000, %1002
  %1006 = fmul fast float %1005, %65
  %1007 = fmul fast float %1005, %66
  %1008 = fmul fast float %1005, %67
  %1009 = fmul fast float %1003, %61
  %1010 = fmul fast float %1003, %62
  %1011 = fmul fast float %1003, %63
  %1012 = fadd fast float %1006, %1009
  %1013 = fadd fast float %1007, %1010
  %1014 = fadd fast float %1008, %1011
  %1015 = fmul fast float %1004, %96
  %1016 = fmul fast float %1004, %97
  %1017 = fmul fast float %1004, %98
  %1018 = fadd fast float %1012, %1015
  %1019 = fadd fast float %1013, %1016
  %1020 = fadd fast float %1014, %1017
  %1021 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1019, float %1020, float %1018, float %1019, float %1020)  ; Dot3(ax,ay,az,bx,by,bz)
  %1022 = call float @dx.op.unary.f32(i32 25, float %1021)  ; Rsqrt(value)
  %1023 = fmul fast float %1018, %1022
  %1024 = fmul fast float %1019, %1022
  %1025 = fmul fast float %1020, %1022
  %1026 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %1027 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %1028 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %1029 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %1030 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %1031 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %1032 = fadd fast float %1026, %132
  %1033 = fadd fast float %1027, %133
  %1034 = fadd fast float %1028, %134
  %1035 = fadd fast float %1029, %132
  %1036 = fadd fast float %1030, %133
  %1037 = fadd fast float %1031, %134
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.CBufRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1044 = extractvalue %dx.types.CBufRet.f32 %1042, 3
  %1045 = fmul fast float %1039, %85
  %1046 = fmul fast float %1045, %1043
  %1047 = fmul fast float %1040, %86
  %1048 = fmul fast float %1047, %1044
  %1049 = fptoui float %1046 to i32
  %1050 = fptoui float %1048 to i32
  %1051 = fadd fast float %1039, -1.000000e+00
  %1052 = fadd fast float %1040, -1.000000e+00
  %1053 = fptoui float %1051 to i32
  %1054 = fptoui float %1052 to i32
  %1055 = call i32 @dx.op.binary.i32(i32 40, i32 %1049, i32 %1053)  ; UMin(a,b)
  %1056 = call i32 @dx.op.binary.i32(i32 40, i32 %1050, i32 %1054)  ; UMin(a,b)
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 2
  %1059 = extractvalue %dx.types.CBufRet.f32 %1057, 3
  %1060 = fmul fast float %1058, %76
  %1061 = fsub fast float %1060, %1059
  %1062 = fadd fast float %1041, -1.000000e+00
  %1063 = call float @dx.op.binary.f32(i32 36, float %1061, float %1062)  ; FMin(a,b)
  %1064 = fptoui float %1063 to i32
  %1065 = fptoui float %1039 to i32
  %1066 = fptoui float %1040 to i32
  %1067 = mul i32 %1064, %1066
  %1068 = add i32 %1067, %1056
  %1069 = mul i32 %1068, %1065
  %1070 = add i32 %1069, %1055
  %1071 = shl i32 %1070, 2
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = and i32 %1073, 1023
  %1075 = lshr i32 %1073, 10
  %1076 = icmp eq i32 %1074, 0
  br i1 %1076, label %1530, label %1077

; <label>:1077                                    ; preds = %978
  %1078 = and i32 %1073, 1023
  br label %1079

; <label>:1079                                    ; preds = %1208, %1077
  %1080 = phi float [ %1209, %1208 ], [ 0.000000e+00, %1077 ]
  %1081 = phi float [ %1210, %1208 ], [ %997, %1077 ]
  %1082 = phi float [ %1211, %1208 ], [ %995, %1077 ]
  %1083 = phi float [ %1212, %1208 ], [ %984, %1077 ]
  %1084 = phi float [ %1213, %1208 ], [ %985, %1077 ]
  %1085 = phi float [ %1214, %1208 ], [ %986, %1077 ]
  %1086 = phi float [ %1215, %1208 ], [ 0.000000e+00, %1077 ]
  %1087 = phi float [ %1216, %1208 ], [ 0.000000e+00, %1077 ]
  %1088 = phi float [ %1217, %1208 ], [ %981, %1077 ]
  %1089 = phi float [ %1218, %1208 ], [ %982, %1077 ]
  %1090 = phi float [ %1219, %1208 ], [ %983, %1077 ]
  %1091 = phi float [ %1220, %1208 ], [ %1023, %1077 ]
  %1092 = phi float [ %1221, %1208 ], [ %1024, %1077 ]
  %1093 = phi float [ %1222, %1208 ], [ %1025, %1077 ]
  %1094 = phi float [ %1223, %1208 ], [ %993, %1077 ]
  %1095 = phi float [ %1224, %1208 ], [ %992, %1077 ]
  %1096 = phi float [ %1225, %1208 ], [ 0.000000e+00, %1077 ]
  %1097 = phi float [ %1226, %1208 ], [ %990, %1077 ]
  %1098 = phi float [ %1227, %1208 ], [ %987, %1077 ]
  %1099 = phi float [ %1228, %1208 ], [ %988, %1077 ]
  %1100 = phi float [ %1229, %1208 ], [ %989, %1077 ]
  %1101 = phi i32 [ %1158, %1208 ], [ 0, %1077 ]
  %1102 = add nuw nsw i32 %1101, %1075
  %1103 = shl i32 %1102, 2
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = shl i32 %1105, 8
  %1107 = or i32 %1106, 48
  %1108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = extractvalue %dx.types.ResRet.f32 %1108, 3
  %1113 = or i32 %1106, 64
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.i32 %1114, 1
  %1117 = or i32 %1106, 80
  %1118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 3
  %1121 = or i32 %1106, 96
  %1122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.ResRet.f32 %1122, 2
  %1126 = extractvalue %dx.types.ResRet.f32 %1122, 3
  %1127 = or i32 %1106, 112
  %1128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1130 = or i32 %1106, 128
  %1131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = extractvalue %dx.types.ResRet.f32 %1131, 3
  %1136 = or i32 %1106, 144
  %1137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.ResRet.f32 %1137, 2
  %1141 = extractvalue %dx.types.ResRet.f32 %1137, 3
  %1142 = or i32 %1106, 160
  %1143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1143, 2
  %1147 = extractvalue %dx.types.ResRet.f32 %1143, 3
  %1148 = or i32 %1106, 192
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = or i32 %1106, 208
  %1152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = or i32 %1106, 248
  %1155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1158 = add nuw nsw i32 %1101, 1
  %1159 = bitcast float %1112 to i32
  %1160 = and i32 %1159, 2560
  %1161 = icmp eq i32 %1160, 2048
  %1162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.ResRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.ResRet.f32 %1162, 2
  %1166 = extractvalue %dx.types.ResRet.f32 %1162, 3
  %1167 = call float @dx.op.dot4.f32(i32 56, float %1163, float %1164, float %1165, float %1166, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1168 = or i32 %1106, 16
  %1169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.ResRet.f32 %1169, 2
  %1173 = extractvalue %dx.types.ResRet.f32 %1169, 3
  %1174 = call float @dx.op.dot4.f32(i32 56, float %1170, float %1171, float %1172, float %1173, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1175 = or i32 %1106, 32
  %1176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.ResRet.f32 %1176, 1
  %1179 = extractvalue %dx.types.ResRet.f32 %1176, 2
  %1180 = extractvalue %dx.types.ResRet.f32 %1176, 3
  %1181 = call float @dx.op.dot4.f32(i32 56, float %1177, float %1178, float %1179, float %1180, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1182 = call float @dx.op.unary.f32(i32 27, float %1167)  ; Round_ni(value)
  %1183 = call float @dx.op.unary.f32(i32 6, float %1182)  ; FAbs(value)
  %1184 = call float @dx.op.unary.f32(i32 27, float %1174)  ; Round_ni(value)
  %1185 = call float @dx.op.unary.f32(i32 6, float %1184)  ; FAbs(value)
  %1186 = call float @dx.op.unary.f32(i32 6, float %1181)  ; FAbs(value)
  %1187 = call float @dx.op.unary.f32(i32 27, float %1186)  ; Round_ni(value)
  %1188 = fadd fast float %1185, %1183
  %1189 = fadd fast float %1188, %1187
  %1190 = fcmp fast oeq float %1189, 0.000000e+00
  %1191 = call float @dx.op.dot4.f32(i32 56, float %1163, float %1164, float %1165, float %1166, float %1032, float %1033, float %1034, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1192 = call float @dx.op.dot4.f32(i32 56, float %1170, float %1171, float %1172, float %1173, float %1032, float %1033, float %1034, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1193 = call float @dx.op.dot4.f32(i32 56, float %1163, float %1164, float %1165, float %1166, float %1035, float %1036, float %1037, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1194 = call float @dx.op.dot4.f32(i32 56, float %1170, float %1171, float %1172, float %1173, float %1035, float %1036, float %1037, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1195 = fsub fast float %1191, %1167
  %1196 = fsub fast float %1193, %1167
  %1197 = fsub fast float %1192, %1174
  %1198 = fsub fast float %1194, %1174
  %1199 = call float @dx.op.dot3.f32(i32 55, float %1109, float %1110, float %1111, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 2
  %1202 = fadd fast float %1201, %1199
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1200, 0
  %1205 = fcmp fast ogt float %1203, %1204
  %1206 = and i1 %1190, %1205
  %1207 = and i1 %1161, %1206
  br i1 %1207, label %1231, label %1208

; <label>:1208                                    ; preds = %1516, %1312, %1231, %1079
  %1209 = phi float [ %1080, %1231 ], [ %1315, %1312 ], [ %1315, %1516 ], [ %1080, %1079 ]
  %1210 = phi float [ %1081, %1231 ], [ %1081, %1312 ], [ %1492, %1516 ], [ %1081, %1079 ]
  %1211 = phi float [ %1082, %1231 ], [ %1082, %1312 ], [ %1490, %1516 ], [ %1082, %1079 ]
  %1212 = phi float [ %1083, %1231 ], [ %1083, %1312 ], [ %1468, %1516 ], [ %1083, %1079 ]
  %1213 = phi float [ %1084, %1231 ], [ %1084, %1312 ], [ %1469, %1516 ], [ %1084, %1079 ]
  %1214 = phi float [ %1085, %1231 ], [ %1085, %1312 ], [ %1470, %1516 ], [ %1085, %1079 ]
  %1215 = phi float [ %1086, %1231 ], [ %1086, %1312 ], [ %1439, %1516 ], [ %1086, %1079 ]
  %1216 = phi float [ %1087, %1231 ], [ %1087, %1312 ], [ %1437, %1516 ], [ %1087, %1079 ]
  %1217 = phi float [ %1088, %1231 ], [ %1088, %1312 ], [ %1526, %1516 ], [ %1088, %1079 ]
  %1218 = phi float [ %1089, %1231 ], [ %1089, %1312 ], [ %1527, %1516 ], [ %1089, %1079 ]
  %1219 = phi float [ %1090, %1231 ], [ %1090, %1312 ], [ %1528, %1516 ], [ %1090, %1079 ]
  %1220 = phi float [ %1091, %1231 ], [ %1091, %1312 ], [ %1418, %1516 ], [ %1091, %1079 ]
  %1221 = phi float [ %1092, %1231 ], [ %1092, %1312 ], [ %1419, %1516 ], [ %1092, %1079 ]
  %1222 = phi float [ %1093, %1231 ], [ %1093, %1312 ], [ %1420, %1516 ], [ %1093, %1079 ]
  %1223 = phi float [ %1094, %1231 ], [ %1094, %1312 ], [ %1448, %1516 ], [ %1094, %1079 ]
  %1224 = phi float [ %1095, %1231 ], [ %1095, %1312 ], [ %1445, %1516 ], [ %1095, %1079 ]
  %1225 = phi float [ %1096, %1231 ], [ %1096, %1312 ], [ %1442, %1516 ], [ %1096, %1079 ]
  %1226 = phi float [ %1097, %1231 ], [ %1097, %1312 ], [ %1435, %1516 ], [ %1097, %1079 ]
  %1227 = phi float [ %1098, %1231 ], [ %1098, %1312 ], [ %1430, %1516 ], [ %1098, %1079 ]
  %1228 = phi float [ %1099, %1231 ], [ %1099, %1312 ], [ %1431, %1516 ], [ %1099, %1079 ]
  %1229 = phi float [ %1100, %1231 ], [ %1100, %1312 ], [ %1432, %1516 ], [ %1100, %1079 ]
  %1230 = icmp eq i32 %1158, %1078
  br i1 %1230, label %1529, label %1079

; <label>:1231                                    ; preds = %1079
  %1232 = extractvalue %dx.types.ResRet.f32 %1128, 3
  %1233 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1234 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1235 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1236 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1237 = extractvalue %dx.types.ResRet.i32 %1114, 3
  %1238 = extractvalue %dx.types.ResRet.i32 %1114, 2
  %1239 = add i32 %1237, 0
  %1240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1239, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1240, %dx.types.Handle %1241, float %1167, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float %1195, float %1197, float undef, float %1196, float %1198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = fmul fast float %1243, %1236
  %1245 = fadd fast float %1244, %1235
  %1246 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1247 = fmul fast float %1167, %1123
  %1248 = call float @dx.op.tertiary.f32(i32 46, float %1124, float %1174, float %1247)  ; FMad(a,b,c)
  %1249 = fadd fast float %1248, %1234
  %1250 = fmul fast float %1167, %1125
  %1251 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %1174, float %1250)  ; FMad(a,b,c)
  %1252 = fadd fast float %1251, %1233
  %1253 = fmul fast float %1195, %1123
  %1254 = call float @dx.op.tertiary.f32(i32 46, float %1124, float %1197, float %1253)  ; FMad(a,b,c)
  %1255 = fmul fast float %1195, %1125
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %1197, float %1255)  ; FMad(a,b,c)
  %1257 = fmul fast float %1196, %1123
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %1124, float %1198, float %1257)  ; FMad(a,b,c)
  %1259 = fmul fast float %1196, %1125
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %1198, float %1259)  ; FMad(a,b,c)
  %1261 = add i32 %1238, 0
  %1262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1261, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1263 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1262, %dx.types.Handle %1241, float %1249, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float %1254, float %1256, float undef, float %1258, float %1260, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = and i32 %1159, 1024
  %1266 = icmp ne i32 %1265, 0
  %1267 = fcmp fast ogt float %1264, 0x3FE0101020000000
  %1268 = uitofp i1 %1267 to float
  %1269 = select i1 %1266, float %1268, float %1264
  %1270 = and i32 %1159, 8192
  %1271 = icmp ne i32 %1270, 0
  %1272 = select i1 %1271, float %1232, float 1.000000e+00
  %1273 = fmul fast float %1167, 2.000000e+00
  %1274 = fadd fast float %1273, -1.000000e+00
  %1275 = call float @dx.op.unary.f32(i32 6, float %1274)  ; FAbs(value)
  %1276 = fmul fast float %1275, %1156
  %1277 = fsub fast float %1276, %1156
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = fmul fast float %1174, 2.000000e+00
  %1280 = fadd fast float %1279, -1.000000e+00
  %1281 = call float @dx.op.unary.f32(i32 6, float %1280)  ; FAbs(value)
  %1282 = fmul fast float %1281, %1157
  %1283 = fsub fast float %1282, %1157
  %1284 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1285 = fmul fast float %1186, %1119
  %1286 = fsub fast float %1285, %1119
  %1287 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  %1288 = fmul fast float %1246, %1272
  %1289 = fmul fast float %1288, %1243
  %1290 = fmul fast float %1289, %1278
  %1291 = fmul fast float %1290, %1269
  %1292 = fmul fast float %1291, %1284
  %1293 = fmul fast float %1292, %1287
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1297 = fsub fast float %1203, %1296
  %1298 = fmul fast float %1297, %1295
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = fmul fast float %1293, %1120
  %1301 = fadd fast float %1293, %1120
  %1302 = fmul fast float %1301, %1129
  %1303 = fsub fast float %1302, %1129
  %1304 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1305 = and i32 %1159, 128
  %1306 = icmp ne i32 %1305, 0
  %1307 = select i1 %1306, float %1304, float %1300
  %1308 = fmul fast float %1307, %1299
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = fcmp fast ugt float %1308, %1310
  br i1 %1311, label %1312, label %1208

; <label>:1312                                    ; preds = %1231
  %1313 = select i1 %1271, float %1308, float 0.000000e+00
  %1314 = fadd fast float %1313, %1080
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  br i1 %1271, label %1208, label %1316

; <label>:1316                                    ; preds = %1312
  %1317 = and i32 %1159, 4
  %1318 = and i32 %1159, 8
  %1319 = add i32 %1115, 0
  %1320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1319, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1322 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1320, %dx.types.Handle %1321, float %1249, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float %1254, float %1256, float undef, float %1258, float %1260, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  %1324 = extractvalue %dx.types.ResRet.f32 %1322, 1
  %1325 = extractvalue %dx.types.ResRet.f32 %1322, 2
  %1326 = extractvalue %dx.types.ResRet.f32 %1322, 3
  %1327 = bitcast float %1141 to i32
  %1328 = and i32 %1327, 255
  %1329 = uitofp i32 %1328 to float
  %1330 = lshr i32 %1327, 8
  %1331 = and i32 %1330, 255
  %1332 = uitofp i32 %1331 to float
  %1333 = fmul fast float %1326, %1329
  %1334 = fadd fast float %1333, %1332
  %1335 = fmul fast float %1334, 0x3F70101000000000
  %1336 = add i32 %1116, 0
  %1337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1338 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1337, %dx.types.Handle %1321, float %1249, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float %1254, float %1256, float undef, float %1258, float %1260, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = extractvalue %dx.types.ResRet.f32 %1338, 1
  %1341 = extractvalue %dx.types.ResRet.f32 %1338, 2
  %1342 = extractvalue %dx.types.ResRet.f32 %1338, 3
  %1343 = bitcast float %1135 to i32
  %1344 = and i32 %1343, 255
  %1345 = uitofp i32 %1344 to float
  %1346 = lshr i32 %1343, 8
  %1347 = and i32 %1346, 255
  %1348 = uitofp i32 %1347 to float
  %1349 = lshr i32 %1343, 16
  %1350 = and i32 %1349, 255
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1351, 0x3F70101000000000
  %1353 = fmul fast float %1339, %1345
  %1354 = fadd fast float %1353, %1348
  %1355 = fmul fast float %1354, 0x3F70101000000000
  %1356 = fadd fast float %1340, -5.000000e-01
  %1357 = fadd fast float %1342, -5.000000e-01
  %1358 = fmul fast float %1356, %1352
  %1359 = fmul fast float %1357, %1352
  %1360 = fadd fast float %1358, 5.000000e-01
  %1361 = fadd fast float %1359, 5.000000e-01
  %1362 = fmul fast float %1323, %1144
  %1363 = fmul fast float %1324, %1145
  %1364 = fmul fast float %1325, %1146
  %1365 = fmul fast float %1360, 2.000000e+00
  %1366 = fadd fast float %1365, -1.000000e+00
  %1367 = fmul fast float %1361, 2.000000e+00
  %1368 = fadd fast float %1367, -1.000000e+00
  %1369 = fadd fast float %1366, %1368
  %1370 = fmul fast float %1369, 5.000000e-01
  %1371 = fsub fast float %1366, %1368
  %1372 = fmul fast float %1371, 5.000000e-01
  %1373 = call float @dx.op.unary.f32(i32 6, float %1370)  ; FAbs(value)
  %1374 = fsub fast float 1.000000e+00, %1373
  %1375 = call float @dx.op.unary.f32(i32 6, float %1372)  ; FAbs(value)
  %1376 = fsub fast float %1374, %1375
  %1377 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1372, float %1376, float %1370, float %1372, float %1376)  ; Dot3(ax,ay,az,bx,by,bz)
  %1378 = call float @dx.op.unary.f32(i32 25, float %1377)  ; Rsqrt(value)
  %1379 = fmul fast float %1370, %1378
  %1380 = fmul fast float %1372, %1378
  %1381 = fmul fast float %1378, %1376
  %1382 = fmul fast float %1381, %1109
  %1383 = fmul fast float %1381, %1110
  %1384 = fmul fast float %1381, %1111
  %1385 = fmul fast float %1379, %1132
  %1386 = fmul fast float %1379, %1133
  %1387 = fmul fast float %1379, %1134
  %1388 = fadd fast float %1385, %1382
  %1389 = fadd fast float %1386, %1383
  %1390 = fadd fast float %1387, %1384
  %1391 = fmul fast float %1380, %1138
  %1392 = fmul fast float %1380, %1139
  %1393 = fmul fast float %1380, %1140
  %1394 = fadd fast float %1388, %1391
  %1395 = fadd fast float %1389, %1392
  %1396 = fadd fast float %1390, %1393
  %1397 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1398 = call float @dx.op.unary.f32(i32 25, float %1397)  ; Rsqrt(value)
  %1399 = fmul fast float %1394, %1398
  %1400 = fmul fast float %1395, %1398
  %1401 = fmul fast float %1396, %1398
  %1402 = icmp ne i32 %1318, 0
  %1403 = select i1 %1402, float 1.000000e+00, float 0.000000e+00
  %1404 = fmul fast float %1308, %1403
  %1405 = and i32 %1159, 1
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1407, label %1411

; <label>:1407                                    ; preds = %1316
  %1408 = fsub fast float %1399, %1091
  %1409 = fsub fast float %1400, %1092
  %1410 = fsub fast float %1401, %1093
  br label %1411

; <label>:1411                                    ; preds = %1407, %1316
  %1412 = phi float [ %1408, %1407 ], [ %1399, %1316 ]
  %1413 = phi float [ %1409, %1407 ], [ %1400, %1316 ]
  %1414 = phi float [ %1410, %1407 ], [ %1401, %1316 ]
  %1415 = fmul float %1414, %1404
  %1416 = fmul float %1413, %1404
  %1417 = fmul float %1412, %1404
  %1418 = fadd fast float %1417, %1091
  %1419 = fadd fast float %1416, %1092
  %1420 = fadd fast float %1415, %1093
  %1421 = icmp ne i32 %1317, 0
  %1422 = select i1 %1421, float 1.000000e+00, float 0.000000e+00
  %1423 = fmul fast float %1308, %1422
  %1424 = fsub fast float %1362, %1098
  %1425 = fsub fast float %1363, %1099
  %1426 = fsub fast float %1364, %1100
  %1427 = fmul fast float %1424, %1423
  %1428 = fmul fast float %1425, %1423
  %1429 = fmul fast float %1426, %1423
  %1430 = fadd fast float %1427, %1098
  %1431 = fadd fast float %1428, %1099
  %1432 = fadd fast float %1429, %1100
  %1433 = fsub fast float %1335, %1097
  %1434 = fmul fast float %1433, %1423
  %1435 = fadd fast float %1434, %1097
  %1436 = fmul fast float %1423, %1087
  %1437 = fsub fast float %1087, %1436
  %1438 = fmul fast float %1423, %1086
  %1439 = fsub fast float %1086, %1438
  %1440 = bitcast float %1153 to i32
  %1441 = fadd fast float %1308, %1096
  %1442 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1443 = fsub fast float %1355, %1095
  %1444 = fmul fast float %1443, %1404
  %1445 = fadd fast float %1444, %1095
  %1446 = fsub fast float %1341, %1094
  %1447 = fmul fast float %1446, %1404
  %1448 = fadd fast float %1447, %1094
  br i1 %1406, label %1457, label %1449

; <label>:1449                                    ; preds = %1411
  %1450 = and i32 %1159, 32768
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1467, label %1452

; <label>:1452                                    ; preds = %1449
  %1453 = fmul fast float %1404, 1.270000e+02
  %1454 = fadd fast float %1453, %1083
  %1455 = fadd fast float %1453, %1084
  %1456 = fadd fast float %1453, %1085
  br label %1467

; <label>:1457                                    ; preds = %1411
  %1458 = fsub fast float 1.270000e+02, %1083
  %1459 = fsub fast float 1.270000e+02, %1084
  %1460 = fsub fast float 1.270000e+02, %1085
  %1461 = fmul fast float %1404, %1458
  %1462 = fmul fast float %1404, %1459
  %1463 = fmul fast float %1404, %1460
  %1464 = fadd fast float %1461, %1083
  %1465 = fadd fast float %1462, %1084
  %1466 = fadd fast float %1463, %1085
  br label %1467

; <label>:1467                                    ; preds = %1457, %1452, %1449
  %1468 = phi float [ %1454, %1452 ], [ %1083, %1449 ], [ %1464, %1457 ]
  %1469 = phi float [ %1455, %1452 ], [ %1084, %1449 ], [ %1465, %1457 ]
  %1470 = phi float [ %1456, %1452 ], [ %1085, %1449 ], [ %1466, %1457 ]
  %1471 = call float @dx.op.dot3.f32(i32 55, float %1362, float %1363, float %1364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1475 = fmul fast float %1474, %1471
  %1476 = fadd fast float %1475, %1473
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1478 = bitcast float %1147 to i32
  %1479 = and i32 %1478, 65535
  %1480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1479)  ; LegacyF16ToF32(value)
  %1481 = lshr i32 %1478, 16
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = fcmp fast oge float %1480, 0.000000e+00
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = select i1 %1483, float %1480, float %1485
  %1487 = fadd fast float %1486, %1482
  %1488 = fsub fast float %1477, %1082
  %1489 = fmul fast float %1488, %1308
  %1490 = fadd fast float %1489, %1082
  %1491 = fmul fast float %1487, %1308
  %1492 = call float @dx.op.binary.f32(i32 35, float %1081, float %1491)  ; FMax(a,b)
  %1493 = and i32 %1159, 16
  %1494 = icmp eq i32 %1493, 0
  br i1 %1494, label %1516, label %1495

; <label>:1495                                    ; preds = %1467
  %1496 = add i32 %1150, 0
  %1497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1496, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1498 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1497, %dx.types.Handle %1321, float %1249, float %1252, float undef, float undef, i32 0, i32 0, i32 undef, float %1254, float %1256, float undef, float %1258, float %1260, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1499 = extractvalue %dx.types.ResRet.f32 %1498, 0
  %1500 = extractvalue %dx.types.ResRet.f32 %1498, 1
  %1501 = extractvalue %dx.types.ResRet.f32 %1498, 2
  %1502 = and i32 %1440, 65535
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = fmul fast float %1499, %1144
  %1505 = fmul fast float %1500, %1145
  %1506 = fmul fast float %1501, %1146
  %1507 = and i32 %1159, 16384
  %1508 = icmp ne i32 %1507, 0
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 0
  %1511 = select i1 %1508, float %1510, float 1.000000e+00
  %1512 = fmul fast float %1511, %1503
  %1513 = fmul fast float %1504, %1512
  %1514 = fmul fast float %1505, %1512
  %1515 = fmul fast float %1506, %1512
  br label %1516

; <label>:1516                                    ; preds = %1495, %1467
  %1517 = phi float [ %1513, %1495 ], [ 0.000000e+00, %1467 ]
  %1518 = phi float [ %1514, %1495 ], [ 0.000000e+00, %1467 ]
  %1519 = phi float [ %1515, %1495 ], [ 0.000000e+00, %1467 ]
  %1520 = fsub fast float %1517, %1088
  %1521 = fsub fast float %1518, %1089
  %1522 = fsub fast float %1519, %1090
  %1523 = fmul fast float %1520, %1308
  %1524 = fmul fast float %1521, %1308
  %1525 = fmul fast float %1522, %1308
  %1526 = fadd fast float %1523, %1088
  %1527 = fadd fast float %1524, %1089
  %1528 = fadd fast float %1525, %1090
  br label %1208

; <label>:1529                                    ; preds = %1208
  br label %1530

; <label>:1530                                    ; preds = %1529, %978
  %1531 = phi float [ 0.000000e+00, %978 ], [ %1209, %1529 ]
  %1532 = phi float [ %997, %978 ], [ %1210, %1529 ]
  %1533 = phi float [ %995, %978 ], [ %1211, %1529 ]
  %1534 = phi float [ %984, %978 ], [ %1212, %1529 ]
  %1535 = phi float [ %985, %978 ], [ %1213, %1529 ]
  %1536 = phi float [ %986, %978 ], [ %1214, %1529 ]
  %1537 = phi float [ 0.000000e+00, %978 ], [ %1215, %1529 ]
  %1538 = phi float [ 0.000000e+00, %978 ], [ %1216, %1529 ]
  %1539 = phi float [ %981, %978 ], [ %1217, %1529 ]
  %1540 = phi float [ %982, %978 ], [ %1218, %1529 ]
  %1541 = phi float [ %983, %978 ], [ %1219, %1529 ]
  %1542 = phi float [ %1023, %978 ], [ %1220, %1529 ]
  %1543 = phi float [ %1024, %978 ], [ %1221, %1529 ]
  %1544 = phi float [ %1025, %978 ], [ %1222, %1529 ]
  %1545 = phi float [ %993, %978 ], [ %1223, %1529 ]
  %1546 = phi float [ %992, %978 ], [ %1224, %1529 ]
  %1547 = phi float [ 0.000000e+00, %978 ], [ %1225, %1529 ]
  %1548 = phi float [ %990, %978 ], [ %1226, %1529 ]
  %1549 = phi float [ %987, %978 ], [ %1227, %1529 ]
  %1550 = phi float [ %988, %978 ], [ %1228, %1529 ]
  %1551 = phi float [ %989, %978 ], [ %1229, %1529 ]
  %1552 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1543, float %1544, float %1542, float %1543, float %1544)  ; Dot3(ax,ay,az,bx,by,bz)
  %1553 = call float @dx.op.unary.f32(i32 25, float %1552)  ; Rsqrt(value)
  %1554 = fmul fast float %1553, %1542
  %1555 = fmul fast float %1553, %1543
  %1556 = fmul fast float %1553, %1544
  %1557 = fadd fast float %1547, %991
  %1558 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1559 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1555, float %1556, float %1554, float %1555, float %1556)  ; Dot3(ax,ay,az,bx,by,bz)
  %1560 = call float @dx.op.unary.f32(i32 25, float %1559)  ; Rsqrt(value)
  %1561 = fmul fast float %1560, %1554
  %1562 = fmul fast float %1560, %1555
  %1563 = fmul fast float %1560, %1556
  %1564 = fadd fast float %1548, 0xBFB99999A0000000
  %1565 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1566 = fmul fast float %1565, 0x3FF1C71C80000000
  %1567 = call float @dx.op.binary.f32(i32 36, float %1548, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1568 = fsub fast float 1.000000e+00, %1566
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1570 = fmul fast float %1569, %1549
  %1571 = fmul fast float %1569, %1550
  %1572 = fmul fast float %1569, %1551
  %1573 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1574 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1575 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1576 = fmul fast float %1566, %1549
  %1577 = fmul fast float %1566, %1550
  %1578 = fmul fast float %1566, %1551
  %1579 = fadd fast float %1576, %1567
  %1580 = fadd fast float %1577, %1567
  %1581 = fadd fast float %1578, %1567
  %1582 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1583 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1584 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1585 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1586 = call float @dx.op.binary.f32(i32 36, float %1534, float 1.270000e+02)  ; FMin(a,b)
  %1587 = call float @dx.op.binary.f32(i32 36, float %1535, float 1.270000e+02)  ; FMin(a,b)
  %1588 = call float @dx.op.binary.f32(i32 36, float %1536, float 1.270000e+02)  ; FMin(a,b)
  %1589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.i32 %1589, 3
  %1591 = and i32 %1590, 8
  %1592 = icmp ne i32 %1591, 0
  %1593 = call float @dx.op.binary.f32(i32 35, float %1573, float %1549)  ; FMax(a,b)
  %1594 = call float @dx.op.binary.f32(i32 35, float %1574, float %1549)  ; FMax(a,b)
  %1595 = call float @dx.op.binary.f32(i32 35, float %1575, float %1549)  ; FMax(a,b)
  %1596 = call float @dx.op.dot3.f32(i32 55, float %1573, float %1574, float %1575, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1597 = select i1 %223, float %1549, float %1573
  %1598 = select i1 %223, float %1596, float %1574
  %1599 = select i1 %223, float 1.000000e+00, float %1575
  %1600 = select i1 %1592, float %1593, float %1597
  %1601 = select i1 %1592, float %1594, float %1598
  %1602 = select i1 %1592, float %1595, float %1599
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 1
  %1606 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1607 = fadd fast float %1604, %132
  %1608 = fadd fast float %1605, %133
  %1609 = fadd fast float %1606, %134
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.CBufRet.f32 %1610, 1
  %1613 = fsub fast float %1607, %1611
  %1614 = fsub fast float %1608, %1612
  %1615 = fmul fast float %1613, %1613
  %1616 = fmul fast float %1614, %1614
  %1617 = fadd fast float %1615, %1616
  %1618 = call float @dx.op.unary.f32(i32 24, float %1617)  ; Sqrt(value)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1620 = fcmp fast olt float %1618, %1619
  br i1 %1620, label %1621, label %1688

; <label>:1621                                    ; preds = %1530
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1629 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1631 = extractvalue %dx.types.CBufRet.f32 %1622, 3
  %1632 = extractvalue %dx.types.CBufRet.f32 %1624, 3
  %1633 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1634 = fadd fast float %1631, %1607
  %1635 = fadd fast float %1632, %1608
  %1636 = fadd fast float %1633, %1609
  %1637 = fmul fast float %1634, %1623
  %1638 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1625, float %1637)  ; FMad(a,b,c)
  %1639 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1627, float %1638)  ; FMad(a,b,c)
  %1640 = fmul fast float %1634, %1628
  %1641 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1629, float %1640)  ; FMad(a,b,c)
  %1642 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1630, float %1641)  ; FMad(a,b,c)
  %1643 = fsub fast float %1639, %1631
  %1644 = fsub fast float %1642, %1632
  %1645 = fsub fast float %1643, %1611
  %1646 = fadd fast float %1645, %1619
  %1647 = fsub fast float %1644, %1612
  %1648 = fadd fast float %1647, %1619
  %1649 = extractvalue %dx.types.CBufRet.f32 %1610, 3
  %1650 = fmul fast float %1646, %1649
  %1651 = fmul fast float %1648, %1649
  %1652 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1653 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1654 = fsub fast float 1.000000e+00, %1652
  %1655 = fsub fast float 1.000000e+00, %1653
  %1656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %1654, float %1655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 0
  %1658 = fcmp fast ugt float %1657, 0.000000e+00
  br i1 %1658, label %1659, label %1962

; <label>:1659                                    ; preds = %1621
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1662 = fmul fast float %1661, %1657
  %1663 = extractvalue %dx.types.CBufRet.f32 %1660, 3
  %1664 = fadd fast float %1663, %1662
  %1665 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1666 = fadd fast float %1664, %1633
  %1667 = fmul fast float %1639, %1627
  %1668 = call float @dx.op.tertiary.f32(i32 46, float %1642, float %1630, float %1667)  ; FMad(a,b,c)
  %1669 = call float @dx.op.tertiary.f32(i32 46, float %1666, float %1665, float %1668)  ; FMad(a,b,c)
  %1670 = fsub fast float %1669, %1633
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 2
  %1673 = fsub fast float %1670, %1672
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %54, float %1654, float %1655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %54, float %1654, float %1655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = fadd fast float %1679, %1675
  %1683 = fmul fast float %1682, 0x3F847AE140000000
  %1684 = fadd fast float %1680, %1676
  %1685 = fmul fast float %1684, 0x3F847AE140000000
  %1686 = fadd fast float %1681, %1677
  %1687 = fmul fast float %1686, 0x3F847AE140000000
  br label %1962

; <label>:1688                                    ; preds = %1530
  %1689 = and i32 %199, 1
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1962, label %1691

; <label>:1691                                    ; preds = %1688
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 0
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1700 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1701 = extractvalue %dx.types.CBufRet.f32 %1692, 3
  %1702 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %1703 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1704 = fadd fast float %1701, %1607
  %1705 = fadd fast float %1702, %1608
  %1706 = fadd fast float %1703, %1609
  %1707 = fmul fast float %1704, %1693
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1705, float %1695, float %1707)  ; FMad(a,b,c)
  %1709 = call float @dx.op.tertiary.f32(i32 46, float %1706, float %1697, float %1708)  ; FMad(a,b,c)
  %1710 = fmul fast float %1704, %1698
  %1711 = call float @dx.op.tertiary.f32(i32 46, float %1705, float %1699, float %1710)  ; FMad(a,b,c)
  %1712 = call float @dx.op.tertiary.f32(i32 46, float %1706, float %1700, float %1711)  ; FMad(a,b,c)
  %1713 = fsub fast float %1709, %1701
  %1714 = fsub fast float %1712, %1702
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1719 = extractvalue %dx.types.CBufRet.f32 %1715, 3
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 3
  %1722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.i32 %1722, 0
  %1724 = extractvalue %dx.types.CBufRet.i32 %1722, 1
  %1725 = udiv i32 %1724, %1723
  %1726 = fsub fast float %1713, %1716
  %1727 = fsub fast float %1714, %1717
  %1728 = call float @dx.op.binary.f32(i32 35, float %1726, float 0.000000e+00)  ; FMax(a,b)
  %1729 = call float @dx.op.binary.f32(i32 35, float %1727, float 0.000000e+00)  ; FMax(a,b)
  %1730 = call float @dx.op.binary.f32(i32 36, float %1728, float %1718)  ; FMin(a,b)
  %1731 = call float @dx.op.binary.f32(i32 36, float %1729, float %1719)  ; FMin(a,b)
  %1732 = add i32 %1723, -1
  %1733 = add i32 %1725, -1
  %1734 = fmul fast float %1730, %1721
  %1735 = fmul fast float %1731, %1721
  %1736 = fptoui float %1734 to i32
  %1737 = fptoui float %1735 to i32
  %1738 = call i32 @dx.op.binary.i32(i32 40, i32 %1736, i32 %1732)  ; UMin(a,b)
  %1739 = call i32 @dx.op.binary.i32(i32 40, i32 %1737, i32 %1733)  ; UMin(a,b)
  %1740 = mul i32 %1739, %1723
  %1741 = add i32 %1740, %1738
  %1742 = shl i32 %1741, 2
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = icmp eq i32 %1744, -1
  br i1 %1745, label %1962, label %1746

; <label>:1746                                    ; preds = %1691
  %1747 = mul i32 %1744, 148
  %1748 = add i32 %1747, 4
  %1749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.f32 %1749, 0
  %1751 = add i32 %1747, 8
  %1752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.f32 %1752, 0
  %1754 = add i32 %1747, 36
  %1755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = add i32 %1747, 60
  %1758 = add i32 %1747, 92
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = add i32 %1747, 116
  %1762 = fsub fast float %1713, %1750
  %1763 = fsub fast float %1714, %1753
  %1764 = fmul fast float %1721, %1762
  %1765 = fmul fast float %1721, %1763
  %1766 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1767 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1771 = call float @dx.op.unary.f32(i32 83, float %1766)  ; DerivCoarseX(value)
  %1772 = call float @dx.op.unary.f32(i32 83, float %1768)  ; DerivCoarseX(value)
  %1773 = call float @dx.op.unary.f32(i32 84, float %1766)  ; DerivCoarseY(value)
  %1774 = call float @dx.op.unary.f32(i32 84, float %1768)  ; DerivCoarseY(value)
  %1775 = fmul fast float %1771, %1770
  %1776 = fmul fast float %1772, %1770
  %1777 = fmul fast float %1773, %1770
  %1778 = fmul fast float %1774, %1770
  %1779 = call float @dx.op.dot2.f32(i32 54, float %1777, float %1778, float %1777, float %1778)  ; Dot2(ax,ay,bx,by)
  %1780 = call float @dx.op.dot2.f32(i32 54, float %1775, float %1776, float %1775, float %1776)  ; Dot2(ax,ay,bx,by)
  %1781 = call float @dx.op.binary.f32(i32 35, float %1780, float %1779)  ; FMax(a,b)
  %1782 = call float @dx.op.unary.f32(i32 23, float %1781)  ; Log(value)
  %1783 = fmul fast float %1782, 5.000000e-01
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 1
  %1786 = fadd fast float %1785, %1783
  %1787 = call float @dx.op.binary.f32(i32 35, float %1786, float 0.000000e+00)  ; FMax(a,b)
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1790 = fadd fast float %1789, %1787
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 3
  %1793 = fadd fast float %1790, %1792
  %1794 = add i32 %1760, 0
  %1795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1794, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1796 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1795, i32 0)  ; GetDimensions(handle,mipLevel)
  %1797 = extractvalue %dx.types.Dimensions %1796, 0
  %1798 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1797)  ; FirstbitLo(value)
  %1799 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.i32 %1799, 1
  %1801 = sub nsw i32 %1800, %1798
  %1802 = sitofp i32 %1801 to float
  %1803 = fsub fast float %1793, %1802
  %1804 = call float @dx.op.binary.f32(i32 35, float %1803, float 0.000000e+00)  ; FMax(a,b)
  %1805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1795, %dx.types.Handle %52, float %1766, float %1768, float %1756, float undef, i32 0, i32 0, i32 undef, float %1804)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1807 = fcmp ule float %1806, 0x3FE0101020000000
  %1808 = extractvalue %dx.types.CBufRet.i32 %1799, 0
  %1809 = and i32 %1808, 128
  %1810 = icmp ne i32 %1809, 0
  %1811 = and i1 %1807, %1810
  br i1 %1811, label %1962, label %1812

; <label>:1812                                    ; preds = %1746
  %1813 = add i32 %1747, 20
  %1814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1816 = add i32 %1747, 24
  %1817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = add i32 %1747, 40
  %1820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.f32 %1820, 0
  %1822 = add i32 %1747, 96
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %1827 = fmul fast float %1826, %1766
  %1828 = fmul fast float %1826, %1768
  %1829 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1830 = fadd fast float %1827, %1829
  %1831 = fadd fast float %1828, %1829
  %1832 = add i32 %1824, 0
  %1833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1832, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1834 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1833, i32 0)  ; GetDimensions(handle,mipLevel)
  %1835 = extractvalue %dx.types.Dimensions %1834, 0
  %1836 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1835)  ; FirstbitLo(value)
  %1837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.i32 %1837, 1
  %1839 = sub nsw i32 %1838, %1836
  %1840 = sitofp i32 %1839 to float
  %1841 = fsub fast float %1790, %1840
  %1842 = call float @dx.op.binary.f32(i32 35, float %1841, float 0.000000e+00)  ; FMax(a,b)
  %1843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1833, %dx.types.Handle %52, float %1830, float %1831, float %1821, float undef, i32 0, i32 0, i32 undef, float %1842)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = fmul fast float %1844, %1815
  %1846 = fadd fast float %1845, %1818
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1850 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 3
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 3
  %1855 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1856 = fadd fast float %1852, %1713
  %1857 = fadd fast float %1854, %1714
  %1858 = fadd fast float %1846, %1855
  %1859 = fmul fast float %1856, %1848
  %1860 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1849, float %1859)  ; FMad(a,b,c)
  %1861 = call float @dx.op.tertiary.f32(i32 46, float %1858, float %1850, float %1860)  ; FMad(a,b,c)
  %1862 = fsub fast float %1861, %1855
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1865 = fsub fast float %1862, %1864
  %1866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.i32 %1866, 0
  %1868 = call i32 @dx.op.binary.i32(i32 40, i32 %1744, i32 %1867)  ; UMin(a,b)
  %1869 = mul i32 %1868, 36
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = add i32 %1869, 4
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = fmul fast float %1874, %1766
  %1876 = fmul fast float %1874, %1768
  %1877 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1878 = fadd fast float %1875, %1877
  %1879 = fadd fast float %1876, %1877
  %1880 = icmp eq i32 %1871, 0
  br i1 %1880, label %1949, label %1881

; <label>:1881                                    ; preds = %1812
  br label %1882

; <label>:1882                                    ; preds = %1939, %1881
  %1883 = phi float [ %1940, %1939 ], [ 0.000000e+00, %1881 ]
  %1884 = phi float [ %1941, %1939 ], [ 0.000000e+00, %1881 ]
  %1885 = phi float [ %1942, %1939 ], [ 0.000000e+00, %1881 ]
  %1886 = phi float [ %1943, %1939 ], [ 0.000000e+00, %1881 ]
  %1887 = phi float [ %1944, %1939 ], [ 0.000000e+00, %1881 ]
  %1888 = phi float [ %1945, %1939 ], [ 0.000000e+00, %1881 ]
  %1889 = phi i32 [ %1946, %1939 ], [ 0, %1881 ]
  %1890 = shl i32 %1889, 2
  %1891 = add i32 %1757, %1890
  %1892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.f32 %1892, 0
  %1894 = add i32 %1761, %1890
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = add i32 %1896, 0
  %1898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1897, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1899 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1898, i32 0)  ; GetDimensions(handle,mipLevel)
  %1900 = extractvalue %dx.types.Dimensions %1899, 0
  %1901 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1900)  ; FirstbitLo(value)
  %1902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1903 = extractvalue %dx.types.CBufRet.i32 %1902, 1
  %1904 = sub nsw i32 %1903, %1901
  %1905 = sitofp i32 %1904 to float
  %1906 = fsub fast float %1790, %1905
  %1907 = call float @dx.op.binary.f32(i32 35, float %1906, float 0.000000e+00)  ; FMax(a,b)
  %1908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1898, %dx.types.Handle %52, float %1878, float %1879, float %1893, float undef, i32 0, i32 0, i32 undef, float %1907)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = fcmp fast ogt float %1909, 0.000000e+00
  br i1 %1910, label %1911, label %1939

; <label>:1911                                    ; preds = %1882
  %1912 = add i32 %1872, %1890
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 32767
  %1916 = mul nuw nsw i32 %1915, 928
  %1917 = add nuw nsw i32 %1916, 48
  %1918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.ResRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.ResRet.f32 %1918, 2
  %1922 = add nuw nsw i32 %1916, 60
  %1923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = extractvalue %dx.types.ResRet.f32 %1923, 1
  %1926 = extractvalue %dx.types.ResRet.f32 %1923, 2
  %1927 = fmul fast float %1919, %1909
  %1928 = fmul fast float %1920, %1909
  %1929 = fmul fast float %1921, %1909
  %1930 = fadd fast float %1927, %1883
  %1931 = fadd fast float %1928, %1884
  %1932 = fadd fast float %1929, %1885
  %1933 = fmul fast float %1924, %1909
  %1934 = fmul fast float %1925, %1909
  %1935 = fmul fast float %1926, %1909
  %1936 = fadd fast float %1933, %1886
  %1937 = fadd fast float %1934, %1887
  %1938 = fadd fast float %1935, %1888
  br label %1939

; <label>:1939                                    ; preds = %1911, %1882
  %1940 = phi float [ %1930, %1911 ], [ %1883, %1882 ]
  %1941 = phi float [ %1931, %1911 ], [ %1884, %1882 ]
  %1942 = phi float [ %1932, %1911 ], [ %1885, %1882 ]
  %1943 = phi float [ %1936, %1911 ], [ %1886, %1882 ]
  %1944 = phi float [ %1937, %1911 ], [ %1887, %1882 ]
  %1945 = phi float [ %1938, %1911 ], [ %1888, %1882 ]
  %1946 = add nuw i32 %1889, 1
  %1947 = icmp eq i32 %1946, %1871
  br i1 %1947, label %1948, label %1882

; <label>:1948                                    ; preds = %1939
  br label %1949

; <label>:1949                                    ; preds = %1948, %1812
  %1950 = phi float [ 0.000000e+00, %1812 ], [ %1940, %1948 ]
  %1951 = phi float [ 0.000000e+00, %1812 ], [ %1941, %1948 ]
  %1952 = phi float [ 0.000000e+00, %1812 ], [ %1942, %1948 ]
  %1953 = phi float [ 0.000000e+00, %1812 ], [ %1943, %1948 ]
  %1954 = phi float [ 0.000000e+00, %1812 ], [ %1944, %1948 ]
  %1955 = phi float [ 0.000000e+00, %1812 ], [ %1945, %1948 ]
  %1956 = fadd fast float %1953, %1950
  %1957 = fmul fast float %1956, 0x3F847AE140000000
  %1958 = fadd fast float %1954, %1951
  %1959 = fmul fast float %1958, 0x3F847AE140000000
  %1960 = fadd fast float %1955, %1952
  %1961 = fmul fast float %1960, 0x3F847AE140000000
  br label %1962

; <label>:1962                                    ; preds = %1949, %1746, %1691, %1688, %1659, %1621
  %1963 = phi float [ %1673, %1659 ], [ -1.310720e+05, %1621 ], [ %1865, %1949 ], [ -1.310720e+05, %1691 ], [ -1.310720e+05, %1746 ], [ -1.310720e+05, %1688 ]
  %1964 = phi float [ %1683, %1659 ], [ 0.000000e+00, %1621 ], [ %1957, %1949 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1746 ], [ 0.000000e+00, %1688 ]
  %1965 = phi float [ %1685, %1659 ], [ 0.000000e+00, %1621 ], [ %1959, %1949 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1746 ], [ 0.000000e+00, %1688 ]
  %1966 = phi float [ %1687, %1659 ], [ 0.000000e+00, %1621 ], [ %1961, %1949 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1746 ], [ 0.000000e+00, %1688 ]
  %1967 = phi i1 [ true, %1659 ], [ false, %1621 ], [ true, %1949 ], [ false, %1691 ], [ false, %1746 ], [ false, %1688 ]
  %1968 = and i32 %199, 3
  %1969 = icmp eq i32 %1968, 1
  %1970 = select i1 %1969, float 1.000000e+00, float 0.000000e+00
  %1971 = fsub fast float %1963, %134
  %1972 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1973 = select i1 %1967, float %1972, float 1.000000e+00
  %1974 = fmul fast float %1973, %1970
  %1975 = icmp eq i32 %1968, 3
  %1976 = select i1 %1975, float 1.000000e+00, float %1974
  %1977 = call float @dx.op.binary.f32(i32 35, float %1531, float %1976)  ; FMax(a,b)
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = fcmp fast une float %1978, 0.000000e+00
  %1980 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %1981 = call float @dx.op.unary.f32(i32 25, float %1980)  ; Rsqrt(value)
  br i1 %1979, label %1989, label %1982

; <label>:1982                                    ; preds = %1962
  %1983 = fmul fast float %1981, %132
  %1984 = fmul fast float %1981, %133
  %1985 = fmul fast float %1981, %134
  %1986 = fsub fast float -0.000000e+00, %1983
  %1987 = fsub fast float -0.000000e+00, %1984
  %1988 = fsub fast float -0.000000e+00, %1985
  br label %2157

; <label>:1989                                    ; preds = %1962
  %1990 = fmul fast float %132, %1981
  %1991 = fsub fast float -0.000000e+00, %1990
  %1992 = fmul fast float %133, %1981
  %1993 = fsub fast float -0.000000e+00, %1992
  %1994 = fmul fast float %134, %1981
  %1995 = fsub fast float -0.000000e+00, %1994
  %1996 = call float @dx.op.dot3.f32(i32 55, float %1991, float %1993, float %1995, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %1997 = fmul fast float %1978, 2.500000e+00
  %1998 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %1999 = fmul fast float %1978, 0x4013FFFFE0000000
  %2000 = fadd fast float %1999, 0xBFFFFFFFE0000000
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = fmul fast float %1978, 0x4004000020000000
  %2003 = fadd fast float %2002, 0xBFF8000040000000
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2005 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2006 = fmul fast float %1564, 1.000000e+01
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2008 = fmul fast float %2007, 2.000000e+00
  %2009 = fsub fast float 3.000000e+00, %2008
  %2010 = fmul fast float %2007, %2007
  %2011 = fmul fast float %2010, %2009
  %2012 = fsub fast float 1.000000e+00, %2011
  %2013 = fsub fast float 0x3FE3333340000000, %1585
  %2014 = fmul fast float %2013, 0x400AAAAAA0000000
  %2015 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2016 = fmul fast float %2012, %2015
  %2017 = fmul fast float %1600, 0x3FEA2B8620000000
  %2018 = fmul fast float %1601, 0x3FEA2B8620000000
  %2019 = fmul fast float %1602, 0x3FEA2B8620000000
  %2020 = fadd fast float %2017, 0x3FC81DFBA0000000
  %2021 = fmul fast float %2020, %1600
  %2022 = fadd fast float %2021, 0x3F910E6020000000
  %2023 = fadd fast float %2018, 0x3FC81DFBA0000000
  %2024 = fmul fast float %2023, %1601
  %2025 = fadd fast float %2024, 0x3F910E6020000000
  %2026 = fadd fast float %2019, 0x3FC81DFBA0000000
  %2027 = fmul fast float %2026, %1602
  %2028 = fadd fast float %2027, 0x3F910E6020000000
  %2029 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2030 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2031 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2032 = fsub fast float %2029, %1600
  %2033 = fsub fast float %2030, %1601
  %2034 = fsub fast float %2031, %1602
  %2035 = fmul fast float %2032, %2005
  %2036 = fmul fast float %2035, %2016
  %2037 = fmul fast float %2033, %2005
  %2038 = fmul fast float %2037, %2016
  %2039 = fmul fast float %2034, %2005
  %2040 = fmul fast float %2039, %2016
  %2041 = fadd fast float %2036, %1600
  %2042 = fadd fast float %2038, %1601
  %2043 = fadd fast float %2040, %1602
  %2044 = fmul fast float %1545, %1545
  %2045 = fmul fast float %2044, %2044
  %2046 = fadd fast float %2001, 1.000000e+00
  %2047 = fsub fast float %2046, %2016
  %2048 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2049 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2051 = fsub fast float 1.000000e+00, %2045
  %2052 = call float @dx.op.binary.f32(i32 36, float %2048, float %2051)  ; FMin(a,b)
  %2053 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2054 = call float @dx.op.binary.f32(i32 35, float %2052, float %2053)  ; FMax(a,b)
  %2055 = fadd fast float %2050, 0xBFE4CCCCC0000000
  %2056 = fmul fast float %2055, 0x4006DB6DA0000000
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = fmul fast float %2057, 2.000000e+00
  %2059 = fsub fast float 3.000000e+00, %2058
  %2060 = bitcast float %1582 to i32
  %2061 = ashr i32 %2060, 1
  %2062 = add nsw i32 %2061, 532487669
  %2063 = bitcast i32 %2062 to float
  %2064 = fsub fast float 1.000000e+00, %2063
  %2065 = bitcast float %2064 to i32
  %2066 = sub nsw i32 2129859010, %2065
  %2067 = bitcast i32 %2066 to float
  %2068 = fmul fast float %2067, 2.000000e+00
  %2069 = bitcast float %1583 to i32
  %2070 = ashr i32 %2069, 1
  %2071 = add nsw i32 %2070, 532487669
  %2072 = bitcast i32 %2071 to float
  %2073 = fsub fast float 1.000000e+00, %2072
  %2074 = bitcast float %2073 to i32
  %2075 = sub nsw i32 2129859010, %2074
  %2076 = bitcast i32 %2075 to float
  %2077 = fmul fast float %2076, 2.000000e+00
  %2078 = bitcast float %1584 to i32
  %2079 = ashr i32 %2078, 1
  %2080 = add nsw i32 %2079, 532487669
  %2081 = bitcast i32 %2080 to float
  %2082 = fsub fast float 1.000000e+00, %2081
  %2083 = bitcast float %2082 to i32
  %2084 = sub nsw i32 2129859010, %2083
  %2085 = bitcast i32 %2084 to float
  %2086 = fmul fast float %2085, 2.000000e+00
  %2087 = fsub fast float 0x4002A9FBE0000000, %2068
  %2088 = fadd fast float %2068, 0x3FD54FDF00000000
  %2089 = bitcast float %2088 to i32
  %2090 = sub nsw i32 2129859010, %2089
  %2091 = bitcast i32 %2090 to float
  %2092 = fmul fast float %2091, %2087
  %2093 = fmul fast float %2092, %2092
  %2094 = fsub fast float 0x4002A9FBE0000000, %2077
  %2095 = fadd fast float %2077, 0x3FD54FDF00000000
  %2096 = bitcast float %2095 to i32
  %2097 = sub nsw i32 2129859010, %2096
  %2098 = bitcast i32 %2097 to float
  %2099 = fmul fast float %2098, %2094
  %2100 = fmul fast float %2099, %2099
  %2101 = fsub fast float 0x4002A9FBE0000000, %2086
  %2102 = fadd fast float %2086, 0x3FD54FDF00000000
  %2103 = bitcast float %2102 to i32
  %2104 = sub nsw i32 2129859010, %2103
  %2105 = bitcast i32 %2104 to float
  %2106 = fmul fast float %2105, %2101
  %2107 = fmul fast float %2106, %2106
  %2108 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2093)  ; FMax(a,b)
  %2109 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2100)  ; FMax(a,b)
  %2110 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2107)  ; FMax(a,b)
  %2111 = fsub fast float 1.000000e+00, %1996
  %2112 = fadd fast float %2111, %2012
  %2113 = call float @dx.op.unary.f32(i32 7, float %2112)  ; Saturate(value)
  %2114 = fsub fast float 1.000000e+00, %1976
  %2115 = fmul fast float %2054, %2114
  %2116 = fmul fast float %2057, %2057
  %2117 = fmul fast float %2116, %2115
  %2118 = fmul fast float %2117, %2059
  %2119 = fmul fast float %2114, 0xBFE99999A0000000
  %2120 = fmul fast float %2119, %2005
  %2121 = fmul fast float %2120, %2016
  %2122 = fadd fast float %2121, 1.000000e+00
  %2123 = fadd fast float %1585, -1.000000e+00
  %2124 = fmul fast float %2122, %2123
  %2125 = fadd fast float %2124, 1.000000e+00
  %2126 = fsub fast float %2108, %1582
  %2127 = fsub fast float %2109, %1583
  %2128 = fsub fast float %2110, %1584
  %2129 = fmul fast float %2118, %2126
  %2130 = fmul fast float %2118, %2127
  %2131 = fmul fast float %2118, %2128
  %2132 = fadd fast float %2129, %1582
  %2133 = fadd fast float %2130, %1583
  %2134 = fadd fast float %2131, %1584
  %2135 = fsub fast float %65, %1561
  %2136 = fsub fast float %66, %1562
  %2137 = fsub fast float %67, %1563
  %2138 = fmul fast float %2118, %2135
  %2139 = fmul fast float %2118, %2136
  %2140 = fmul fast float %2118, %2137
  %2141 = fadd fast float %2138, %1561
  %2142 = fadd fast float %2139, %1562
  %2143 = fadd fast float %2140, %1563
  %2144 = fmul fast float %2118, %2113
  %2145 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2144, %2146
  %2148 = fadd fast float %2147, %2145
  %2149 = fsub fast float 1.000000e+00, %1545
  %2150 = fmul fast float %2118, %2149
  %2151 = fadd fast float %2150, %1545
  %2152 = call float @dx.op.dot3.f32(i32 55, float %2141, float %2142, float %2143, float %2141, float %2142, float %2143)  ; Dot3(ax,ay,az,bx,by,bz)
  %2153 = call float @dx.op.unary.f32(i32 25, float %2152)  ; Rsqrt(value)
  %2154 = fmul fast float %2141, %2153
  %2155 = fmul fast float %2142, %2153
  %2156 = fmul fast float %2143, %2153
  br label %2157

; <label>:2157                                    ; preds = %1989, %1982
  %2158 = phi float [ %1988, %1982 ], [ %1995, %1989 ]
  %2159 = phi float [ %1987, %1982 ], [ %1993, %1989 ]
  %2160 = phi float [ %1986, %1982 ], [ %1991, %1989 ]
  %2161 = phi float [ %1985, %1982 ], [ %1994, %1989 ]
  %2162 = phi float [ %1984, %1982 ], [ %1992, %1989 ]
  %2163 = phi float [ %1983, %1982 ], [ %1990, %1989 ]
  %2164 = phi float [ %1600, %1982 ], [ %2041, %1989 ]
  %2165 = phi float [ %1601, %1982 ], [ %2042, %1989 ]
  %2166 = phi float [ %1602, %1982 ], [ %2043, %1989 ]
  %2167 = phi float [ %1582, %1982 ], [ %2132, %1989 ]
  %2168 = phi float [ %1583, %1982 ], [ %2133, %1989 ]
  %2169 = phi float [ %1584, %1982 ], [ %2134, %1989 ]
  %2170 = phi float [ %1561, %1982 ], [ %2154, %1989 ]
  %2171 = phi float [ %1562, %1982 ], [ %2155, %1989 ]
  %2172 = phi float [ %1563, %1982 ], [ %2156, %1989 ]
  %2173 = phi float [ %1585, %1982 ], [ %2148, %1989 ]
  %2174 = phi float [ %1545, %1982 ], [ %2151, %1989 ]
  %2175 = fsub fast float -0.000000e+00, %134
  %2176 = select i1 %223, float 0.000000e+00, float %2169
  %2177 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %2160, float %2159, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = call float @dx.op.dot3.f32(i32 55, float %2163, float %2162, float %2161, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2180 = fmul fast float %2179, 2.000000e+00
  %2181 = fmul fast float %2180, %2170
  %2182 = fmul fast float %2180, %2171
  %2183 = fmul fast float %2180, %2172
  %2184 = fsub fast float %2163, %2181
  %2185 = fsub fast float %2162, %2182
  %2186 = fsub fast float %2161, %2183
  %2187 = call float @dx.op.binary.f32(i32 36, float %2174, float 1.000000e+00)  ; FMin(a,b)
  %2188 = fsub fast float 1.000000e+00, %2174
  %2189 = bitcast float %2188 to i32
  %2190 = sub nsw i32 2129859010, %2189
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2194 = fadd fast float %2192, %132
  %2195 = fadd fast float %2193, %133
  %2196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.i32 %2196, 0
  %2198 = icmp eq i32 %2197, 1
  br i1 %2198, label %2199, label %2234

; <label>:2199                                    ; preds = %2157
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 0
  %2202 = extractvalue %dx.types.CBufRet.f32 %2200, 1
  %2203 = fsub fast float %2194, %2201
  %2204 = fsub fast float %2195, %2202
  %2205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2205, 0
  %2207 = extractvalue %dx.types.CBufRet.f32 %2205, 1
  %2208 = fmul fast float %2203, %2206
  %2209 = fmul fast float %2204, %2207
  %2210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %54, float %2208, float %2209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2211 = extractvalue %dx.types.ResRet.f32 %2210, 0
  %2212 = fcmp fast ogt float %2211, 0.000000e+00
  %2213 = extractvalue %dx.types.CBufRet.i32 %2196, 3
  %2214 = icmp ne i32 %2213, 0
  %2215 = and i1 %2212, %2214
  br i1 %2215, label %2216, label %2234, !dx.controlflow.hints !92

; <label>:2216                                    ; preds = %2199
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.CBufRet.f32 %2217, 1
  %2220 = fsub fast float %2194, %2218
  %2221 = fsub fast float %2195, %2219
  %2222 = fmul fast float %2220, %2220
  %2223 = fmul fast float %2221, %2221
  %2224 = fadd fast float %2222, %2223
  %2225 = uitofp i32 %2213 to float
  %2226 = fmul fast float %2225, %2225
  %2227 = fcmp fast ogt float %2224, %2226
  br i1 %2227, label %2234, label %2228

; <label>:2228                                    ; preds = %2216
  %2229 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2230 = fsub fast float %2225, %2229
  %2231 = fmul fast float %2230, 0x3F75555560000000
  %2232 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2233 = call float @dx.op.binary.f32(i32 36, float %2232, float %2211)  ; FMin(a,b)
  br label %2234

; <label>:2234                                    ; preds = %2228, %2216, %2199, %2157
  %2235 = phi float [ 1.000000e+00, %2157 ], [ %2233, %2228 ], [ %2211, %2199 ], [ 0.000000e+00, %2216 ]
  %2236 = fcmp fast ogt float %2235, 0.000000e+00
  br i1 %2236, label %2237, label %2335, !dx.controlflow.hints !93

; <label>:2237                                    ; preds = %2234
  %2238 = fadd fast float %163, 5.000000e-01
  %2239 = call float @dx.op.unary.f32(i32 27, float %2238)  ; Round_ni(value)
  %2240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %54, float %161, float %162, float %2239, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2241 = extractvalue %dx.types.ResRet.f32 %2240, 0
  %2242 = extractvalue %dx.types.ResRet.f32 %2240, 1
  %2243 = extractvalue %dx.types.ResRet.f32 %2240, 2
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 3
  %2246 = fmul fast float %2245, %2241
  %2247 = fmul fast float %2245, %2242
  %2248 = fmul fast float %2245, %2243
  %2249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %54, float %161, float %162, float %2239, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2250 = extractvalue %dx.types.ResRet.f32 %2249, 0
  %2251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %54, float %161, float %162, float %2239, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2252 = extractvalue %dx.types.ResRet.f32 %2251, 0
  %2253 = extractvalue %dx.types.ResRet.f32 %2251, 1
  %2254 = fmul fast float %2252, 2.000000e+00
  %2255 = fmul fast float %2253, 2.000000e+00
  %2256 = fadd fast float %2254, -1.000000e+00
  %2257 = fadd fast float %2255, -1.000000e+00
  %2258 = fadd fast float %2256, %2257
  %2259 = fmul fast float %2258, 5.000000e-01
  %2260 = fsub fast float %2256, %2257
  %2261 = fmul fast float %2260, 5.000000e-01
  %2262 = call float @dx.op.unary.f32(i32 6, float %2259)  ; FAbs(value)
  %2263 = fsub fast float 1.000000e+00, %2262
  %2264 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2265 = fsub fast float %2263, %2264
  %2266 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2265)  ; FMax(a,b)
  %2267 = call float @dx.op.dot3.f32(i32 55, float %2259, float %2261, float %2266, float %2259, float %2261, float %2266)  ; Dot3(ax,ay,az,bx,by,bz)
  %2268 = bitcast float %2267 to i32
  %2269 = ashr i32 %2268, 1
  %2270 = sub nsw i32 1597250115, %2269
  %2271 = bitcast i32 %2270 to float
  %2272 = fmul fast float %2271, %2259
  %2273 = fmul fast float %2271, %2261
  %2274 = fmul fast float %2271, %2266
  %2275 = fsub fast float 1.000000e+00, %2250
  %2276 = fdiv fast float %2275, %2274
  %2277 = fmul fast float %2274, %65
  %2278 = fmul fast float %2274, %66
  %2279 = fmul fast float %2274, %67
  %2280 = fmul fast float %2272, %61
  %2281 = fmul fast float %2272, %62
  %2282 = fmul fast float %2272, %63
  %2283 = fadd fast float %2277, %2280
  %2284 = fadd fast float %2278, %2281
  %2285 = fadd fast float %2279, %2282
  %2286 = fmul fast float %2273, %96
  %2287 = fmul fast float %2273, %97
  %2288 = fmul fast float %2273, %98
  %2289 = fadd fast float %2283, %2286
  %2290 = fadd fast float %2284, %2287
  %2291 = fadd fast float %2285, %2288
  %2292 = call float @dx.op.dot3.f32(i32 55, float %2289, float %2290, float %2291, float %2289, float %2290, float %2291)  ; Dot3(ax,ay,az,bx,by,bz)
  %2293 = call float @dx.op.unary.f32(i32 25, float %2292)  ; Rsqrt(value)
  %2294 = fmul fast float %2289, %2293
  %2295 = fmul fast float %2290, %2293
  %2296 = fmul fast float %2291, %2293
  %2297 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2298 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2299 = fmul fast float %2298, 5.000000e-01
  %2300 = fadd fast float %2299, 5.000000e-01
  %2301 = fmul fast float %2300, %2250
  %2302 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2303 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2304 = fmul fast float %2303, %2276
  %2305 = fadd fast float %2301, %2304
  %2306 = fsub fast float 5.000000e-01, %2299
  %2307 = fmul fast float %2306, %2164
  %2308 = fmul fast float %2306, %2165
  %2309 = fmul fast float %2306, %2166
  %2310 = fadd fast float %2305, %2307
  %2311 = fmul fast float %2310, %2246
  %2312 = fadd fast float %2305, %2308
  %2313 = fmul fast float %2312, %2247
  %2314 = fadd fast float %2305, %2309
  %2315 = fmul fast float %2314, %2248
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2184, float %2185, float %2186, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  %2318 = fmul fast float %2317, 5.000000e-01
  %2319 = fadd fast float %2318, 5.000000e-01
  %2320 = fmul fast float %2319, %2250
  %2321 = call float @dx.op.dot3.f32(i32 55, float %2184, float %2185, float %2186, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2322 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2323 = fmul fast float %2322, %2276
  %2324 = fadd fast float %2320, %2323
  %2325 = fsub fast float 5.000000e-01, %2318
  %2326 = fmul fast float %2325, %2164
  %2327 = fmul fast float %2325, %2165
  %2328 = fmul fast float %2325, %2166
  %2329 = fadd fast float %2324, %2326
  %2330 = fmul fast float %2329, %2246
  %2331 = fadd fast float %2324, %2327
  %2332 = fmul fast float %2331, %2247
  %2333 = fadd fast float %2324, %2328
  %2334 = fmul fast float %2333, %2248
  br label %2335

; <label>:2335                                    ; preds = %2237, %2234
  %2336 = phi float [ %2330, %2237 ], [ 0.000000e+00, %2234 ]
  %2337 = phi float [ %2332, %2237 ], [ 0.000000e+00, %2234 ]
  %2338 = phi float [ %2334, %2237 ], [ 0.000000e+00, %2234 ]
  %2339 = phi float [ %2311, %2237 ], [ 0.000000e+00, %2234 ]
  %2340 = phi float [ %2313, %2237 ], [ 0.000000e+00, %2234 ]
  %2341 = phi float [ %2315, %2237 ], [ 0.000000e+00, %2234 ]
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 0
  %2344 = fcmp fast ogt float %2343, 0.000000e+00
  %2345 = and i1 %2236, %2344
  br i1 %2345, label %2346, label %2550, !dx.controlflow.hints !94

; <label>:2346                                    ; preds = %2335
  %2347 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2348 = fadd fast float %2347, %134
  %2349 = fmul fast float %2170, 3.200000e+01
  %2350 = fmul fast float %2171, 3.200000e+01
  %2351 = fadd fast float %2194, %2349
  %2352 = fadd fast float %2195, %2350
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2355 = extractvalue %dx.types.CBufRet.f32 %2353, 1
  %2356 = fsub fast float %2351, %2354
  %2357 = fsub fast float %2352, %2355
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.CBufRet.f32 %2358, 1
  %2361 = fmul fast float %2356, %2359
  %2362 = fmul fast float %2357, %2360
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2366 = fsub fast float %2194, %2364
  %2367 = fsub fast float %2195, %2365
  %2368 = fmul fast float %2366, %2366
  %2369 = fmul fast float %2367, %2367
  %2370 = fadd fast float %2368, %2369
  %2371 = call float @dx.op.unary.f32(i32 24, float %2370)  ; Sqrt(value)
  %2372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.CBufRet.f32 %2372, 1
  %2375 = fsub fast float %2371, %2373
  %2376 = fdiv fast float %2375, %2374
  %2377 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2378 = fmul fast float %2377, 2.000000e+00
  %2379 = fsub fast float 3.000000e+00, %2378
  %2380 = fmul fast float %2377, %2377
  %2381 = fmul fast float %2380, %2379
  %2382 = fcmp fast oge float %2361, 0.000000e+00
  %2383 = fcmp fast ole float %2361, 1.000000e+00
  %2384 = and i1 %2383, %2382
  %2385 = fcmp fast oge float %2362, 0.000000e+00
  %2386 = and i1 %2385, %2384
  %2387 = fcmp fast ole float %2362, 1.000000e+00
  %2388 = and i1 %2387, %2386
  %2389 = fcmp fast ogt float %2381, 0.000000e+00
  %2390 = and i1 %2389, %2388
  br i1 %2390, label %2391, label %2514, !dx.controlflow.hints !95

; <label>:2391                                    ; preds = %2346
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2394 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2395 = fmul fast float %2393, %2361
  %2396 = fmul fast float %2394, %2362
  %2397 = call float @dx.op.unary.f32(i32 27, float %2395)  ; Round_ni(value)
  %2398 = call float @dx.op.unary.f32(i32 27, float %2396)  ; Round_ni(value)
  %2399 = fptosi float %2397 to i32
  %2400 = fptosi float %2398 to i32
  %2401 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %44, i32 0, i32 %2399, i32 %2400, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = lshr i32 %2402, 16
  %2404 = icmp eq i32 %2403, 65535
  br i1 %2404, label %2514, label %2405

; <label>:2405                                    ; preds = %2391
  %2406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2407 = extractvalue %dx.types.CBufRet.f32 %2406, 0
  %2408 = fmul fast float %2407, %2361
  %2409 = extractvalue %dx.types.CBufRet.f32 %2406, 1
  %2410 = fadd fast float %2408, %2409
  %2411 = extractvalue %dx.types.CBufRet.f32 %2406, 2
  %2412 = fmul fast float %2411, %2362
  %2413 = extractvalue %dx.types.CBufRet.f32 %2406, 3
  %2414 = fadd fast float %2412, %2413
  %2415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %54, float %2410, float %2414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2416 = extractvalue %dx.types.ResRet.f32 %2415, 0
  %2417 = extractvalue %dx.types.ResRet.f32 %2415, 1
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2420 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2421 = fsub fast float %2419, %2420
  %2422 = fmul fast float %2421, %2416
  %2423 = fadd fast float %2422, %2420
  %2424 = extractvalue %dx.types.CBufRet.f32 %2418, 3
  %2425 = extractvalue %dx.types.CBufRet.f32 %2418, 2
  %2426 = fsub fast float %2424, %2425
  %2427 = fmul fast float %2426, %2417
  %2428 = fadd fast float %2427, %2425
  %2429 = fsub fast float %2348, %2423
  %2430 = fsub fast float %2428, %2423
  %2431 = fdiv fast float %2429, %2430
  %2432 = call float @dx.op.unary.f32(i32 7, float %2431)  ; Saturate(value)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2434 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2435 = extractvalue %dx.types.CBufRet.f32 %2392, 1
  %2436 = fmul fast float %2434, %2361
  %2437 = fmul fast float %2435, %2362
  %2438 = fmul fast float %2436, 1.250000e-01
  %2439 = fmul fast float %2437, 1.250000e-01
  %2440 = call float @dx.op.unary.f32(i32 27, float %2438)  ; Round_ni(value)
  %2441 = call float @dx.op.unary.f32(i32 27, float %2439)  ; Round_ni(value)
  %2442 = fmul fast float %2440, 8.000000e+00
  %2443 = fmul fast float %2441, 8.000000e+00
  %2444 = fsub fast float %2436, %2442
  %2445 = fsub fast float %2437, %2443
  %2446 = fadd fast float %2444, 5.000000e-01
  %2447 = fadd fast float %2445, 5.000000e-01
  %2448 = and i32 %2403, 255
  %2449 = lshr i32 %2402, 24
  %2450 = mul nuw nsw i32 %2448, 9
  %2451 = uitofp i32 %2450 to float
  %2452 = mul nuw nsw i32 %2449, 9
  %2453 = uitofp i32 %2452 to float
  %2454 = fadd fast float %2446, %2451
  %2455 = fadd fast float %2447, %2453
  %2456 = fdiv fast float %2454, %2343
  %2457 = fdiv fast float %2455, %2433
  %2458 = fmul fast float %2432, 4.375000e-01
  %2459 = fadd fast float %2458, 3.125000e-02
  %2460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %2456, float %2457, float %2459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = fadd fast float %2458, 5.312500e-01
  %2465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %2456, float %2457, float %2464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2466 = extractvalue %dx.types.ResRet.f32 %2465, 0
  %2467 = extractvalue %dx.types.ResRet.f32 %2465, 1
  %2468 = extractvalue %dx.types.ResRet.f32 %2465, 2
  %2469 = fmul fast float %2466, 2.000000e+00
  %2470 = fmul fast float %2467, 2.000000e+00
  %2471 = fmul fast float %2468, 2.000000e+00
  %2472 = fadd fast float %2469, -1.000000e+00
  %2473 = fadd fast float %2470, -1.000000e+00
  %2474 = fadd fast float %2471, -1.000000e+00
  %2475 = fmul fast float %2472, %2472
  %2476 = fmul fast float %2473, %2473
  %2477 = fadd fast float %2475, %2476
  %2478 = fmul fast float %2474, %2474
  %2479 = fadd fast float %2477, %2478
  %2480 = call float @dx.op.unary.f32(i32 24, float %2479)  ; Sqrt(value)
  %2481 = fcmp fast ogt float %2480, 0.000000e+00
  br i1 %2481, label %2482, label %2486

; <label>:2482                                    ; preds = %2405
  %2483 = fdiv fast float %2472, %2480
  %2484 = fdiv fast float %2473, %2480
  %2485 = fdiv fast float %2474, %2480
  br label %2486

; <label>:2486                                    ; preds = %2482, %2405
  %2487 = phi float [ %2483, %2482 ], [ 0.000000e+00, %2405 ]
  %2488 = phi float [ %2484, %2482 ], [ 0.000000e+00, %2405 ]
  %2489 = phi float [ %2485, %2482 ], [ 0.000000e+00, %2405 ]
  %2490 = call float @dx.op.dot3.f32(i32 55, float %2487, float %2488, float %2489, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2491 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2490)  ; FMax(a,b)
  %2492 = fmul fast float %2491, 0x400C5BF8A0000000
  %2493 = fmul fast float %2461, %2381
  %2494 = fmul fast float %2493, %2492
  %2495 = fmul fast float %2462, %2381
  %2496 = fmul fast float %2495, %2492
  %2497 = fmul fast float %2463, %2381
  %2498 = fmul fast float %2497, %2492
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 3
  %2501 = fmul fast float %2494, %2500
  %2502 = fmul fast float %2496, %2500
  %2503 = fmul fast float %2498, %2500
  %2504 = fcmp fast ogt float %2348, %2428
  br i1 %2504, label %2505, label %2514

; <label>:2505                                    ; preds = %2486
  %2506 = fmul fast float %2430, 0x3FC24924A0000000
  %2507 = fsub fast float %2348, %2428
  %2508 = fdiv fast float %2507, %2506
  %2509 = call float @dx.op.unary.f32(i32 7, float %2508)  ; Saturate(value)
  %2510 = fsub fast float 1.000000e+00, %2509
  %2511 = fmul fast float %2510, %2501
  %2512 = fmul fast float %2510, %2502
  %2513 = fmul fast float %2510, %2503
  br label %2514

; <label>:2514                                    ; preds = %2505, %2486, %2391, %2346
  %2515 = phi float [ %2513, %2505 ], [ %2503, %2486 ], [ 0.000000e+00, %2391 ], [ 0.000000e+00, %2346 ]
  %2516 = phi float [ %2512, %2505 ], [ %2502, %2486 ], [ 0.000000e+00, %2391 ], [ 0.000000e+00, %2346 ]
  %2517 = phi float [ %2511, %2505 ], [ %2501, %2486 ], [ 0.000000e+00, %2391 ], [ 0.000000e+00, %2346 ]
  %2518 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2517)  ; FMax(a,b)
  %2519 = fmul fast float %2518, 0x3FD20DD760000000
  %2520 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %2521 = fmul fast float %2520, 0x3FDF454380000000
  %2522 = fmul fast float %2520, %2520
  %2523 = fmul fast float %2522, 0x3FEE471020000000
  %2524 = fadd fast float %2523, 0xBFD42F6020000000
  %2525 = call float @dx.op.dot3.f32(i32 55, float %2518, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2521, float %2524)  ; Dot3(ax,ay,az,bx,by,bz)
  %2526 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2516)  ; FMax(a,b)
  %2527 = fmul fast float %2526, 0x3FD20DD760000000
  %2528 = call float @dx.op.dot3.f32(i32 55, float %2526, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2521, float %2524)  ; Dot3(ax,ay,az,bx,by,bz)
  %2529 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2515)  ; FMax(a,b)
  %2530 = fmul fast float %2529, 0x3FD20DD760000000
  %2531 = call float @dx.op.dot3.f32(i32 55, float %2529, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2521, float %2524)  ; Dot3(ax,ay,az,bx,by,bz)
  %2532 = call float @dx.op.binary.f32(i32 35, float %2519, float 0.000000e+00)  ; FMax(a,b)
  %2533 = call float @dx.op.binary.f32(i32 35, float %2527, float 0.000000e+00)  ; FMax(a,b)
  %2534 = call float @dx.op.binary.f32(i32 35, float %2530, float 0.000000e+00)  ; FMax(a,b)
  %2535 = call float @dx.op.binary.f32(i32 35, float %2525, float 0.000000e+00)  ; FMax(a,b)
  %2536 = call float @dx.op.binary.f32(i32 35, float %2528, float 0.000000e+00)  ; FMax(a,b)
  %2537 = call float @dx.op.binary.f32(i32 35, float %2531, float 0.000000e+00)  ; FMax(a,b)
  %2538 = fmul fast float %2532, %2235
  %2539 = fmul fast float %2533, %2235
  %2540 = fmul fast float %2534, %2235
  %2541 = fadd fast float %2538, %2339
  %2542 = fadd fast float %2539, %2340
  %2543 = fadd fast float %2540, %2341
  %2544 = fmul fast float %2535, %2235
  %2545 = fmul fast float %2536, %2235
  %2546 = fmul fast float %2537, %2235
  %2547 = fadd fast float %2544, %2336
  %2548 = fadd fast float %2545, %2337
  %2549 = fadd fast float %2546, %2338
  br label %2550

; <label>:2550                                    ; preds = %2514, %2335
  %2551 = phi float [ %2547, %2514 ], [ %2336, %2335 ]
  %2552 = phi float [ %2548, %2514 ], [ %2337, %2335 ]
  %2553 = phi float [ %2549, %2514 ], [ %2338, %2335 ]
  %2554 = phi float [ %2541, %2514 ], [ %2339, %2335 ]
  %2555 = phi float [ %2542, %2514 ], [ %2340, %2335 ]
  %2556 = phi float [ %2543, %2514 ], [ %2341, %2335 ]
  %2557 = fcmp fast olt float %2235, 1.000000e+00
  br i1 %2557, label %2558, label %3376, !dx.controlflow.hints !96

; <label>:2558                                    ; preds = %2550
  %2559 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2560 = fadd fast float %2559, %134
  %2561 = fmul fast float %2170, 3.200000e+01
  %2562 = fmul fast float %2171, 3.200000e+01
  %2563 = fadd fast float %2194, %2561
  %2564 = fadd fast float %2195, %2562
  %2565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.f32 %2565, 0
  %2567 = extractvalue %dx.types.CBufRet.f32 %2565, 1
  %2568 = fsub fast float %2563, %2566
  %2569 = fsub fast float %2564, %2567
  %2570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2571 = extractvalue %dx.types.CBufRet.f32 %2570, 0
  %2572 = extractvalue %dx.types.CBufRet.f32 %2570, 1
  %2573 = fmul fast float %2568, %2571
  %2574 = fmul fast float %2569, %2572
  %2575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2576 = extractvalue %dx.types.CBufRet.f32 %2575, 0
  %2577 = fmul fast float %2573, %2576
  %2578 = extractvalue %dx.types.CBufRet.f32 %2575, 1
  %2579 = fadd fast float %2577, %2578
  %2580 = extractvalue %dx.types.CBufRet.f32 %2575, 2
  %2581 = fmul fast float %2580, %2574
  %2582 = extractvalue %dx.types.CBufRet.f32 %2575, 3
  %2583 = fadd fast float %2581, %2582
  %2584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %54, float %2579, float %2583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2585 = extractvalue %dx.types.ResRet.f32 %2584, 0
  %2586 = extractvalue %dx.types.ResRet.f32 %2584, 1
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2589 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2590 = fsub fast float %2588, %2589
  %2591 = fmul fast float %2590, %2585
  %2592 = fadd fast float %2591, %2589
  %2593 = extractvalue %dx.types.CBufRet.f32 %2587, 3
  %2594 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2595 = fsub fast float %2593, %2594
  %2596 = fmul fast float %2595, %2586
  %2597 = fadd fast float %2596, %2594
  %2598 = fsub fast float %2560, %2592
  %2599 = fsub fast float %2597, %2592
  %2600 = fdiv fast float %2598, %2599
  %2601 = call float @dx.op.unary.f32(i32 7, float %2600)  ; Saturate(value)
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 0
  %2604 = fmul fast float %2603, %2601
  %2605 = extractvalue %dx.types.CBufRet.f32 %2602, 1
  %2606 = fadd fast float %2604, %2605
  %2607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %47, %dx.types.Handle %54, float %2579, float %2583, float %2606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2608 = extractvalue %dx.types.ResRet.f32 %2607, 0
  %2609 = extractvalue %dx.types.ResRet.f32 %2607, 1
  %2610 = extractvalue %dx.types.ResRet.f32 %2607, 2
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.CBufRet.f32 %2611, 1
  %2614 = extractvalue %dx.types.CBufRet.f32 %2611, 2
  %2615 = fmul fast float %2612, %2608
  %2616 = fmul fast float %2613, %2609
  %2617 = fmul fast float %2614, %2610
  %2618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2619 = extractvalue %dx.types.CBufRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.CBufRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.CBufRet.f32 %2618, 2
  %2622 = fadd fast float %2615, %2619
  %2623 = fadd fast float %2616, %2620
  %2624 = fadd fast float %2617, %2621
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = fmul fast float %2626, %2573
  %2628 = extractvalue %dx.types.CBufRet.f32 %2625, 1
  %2629 = fadd fast float %2627, %2628
  %2630 = extractvalue %dx.types.CBufRet.f32 %2625, 2
  %2631 = fmul fast float %2630, %2574
  %2632 = extractvalue %dx.types.CBufRet.f32 %2625, 3
  %2633 = fadd fast float %2631, %2632
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2634, 1
  %2637 = extractvalue %dx.types.CBufRet.f32 %2634, 2
  %2638 = extractvalue %dx.types.CBufRet.f32 %2634, 3
  %2639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.f32 %2639, 0
  %2641 = extractvalue %dx.types.CBufRet.f32 %2639, 1
  %2642 = extractvalue %dx.types.CBufRet.f32 %2639, 2
  %2643 = extractvalue %dx.types.CBufRet.f32 %2639, 3
  %2644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %2629, float %2633, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  %2646 = extractvalue %dx.types.ResRet.f32 %2644, 1
  %2647 = extractvalue %dx.types.ResRet.f32 %2644, 2
  %2648 = extractvalue %dx.types.ResRet.f32 %2644, 3
  %2649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %2629, float %2633, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = extractvalue %dx.types.ResRet.f32 %2649, 3
  %2654 = fmul fast float %2645, %2622
  %2655 = fmul fast float %2650, %2622
  %2656 = fmul fast float %2652, %2622
  %2657 = fmul fast float %2648, %2622
  %2658 = fadd fast float %2654, %2635
  %2659 = fadd fast float %2655, %2636
  %2660 = fadd fast float %2656, %2637
  %2661 = fadd fast float %2657, %2638
  %2662 = fmul fast float %2646, %2622
  %2663 = fmul fast float %2651, %2622
  %2664 = fadd fast float %2662, %2640
  %2665 = fadd fast float %2663, %2641
  %2666 = fmul fast float %2647, %2622
  %2667 = fmul fast float %2653, %2622
  %2668 = fadd fast float %2666, %2642
  %2669 = fadd fast float %2667, %2643
  %2670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %2629, float %2633, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2671 = extractvalue %dx.types.ResRet.f32 %2670, 0
  %2672 = extractvalue %dx.types.ResRet.f32 %2670, 1
  %2673 = extractvalue %dx.types.ResRet.f32 %2670, 2
  %2674 = extractvalue %dx.types.ResRet.f32 %2670, 3
  %2675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %2629, float %2633, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2676 = extractvalue %dx.types.ResRet.f32 %2675, 0
  %2677 = extractvalue %dx.types.ResRet.f32 %2675, 1
  %2678 = extractvalue %dx.types.ResRet.f32 %2675, 2
  %2679 = extractvalue %dx.types.ResRet.f32 %2675, 3
  %2680 = fmul fast float %2671, %2623
  %2681 = fmul fast float %2676, %2623
  %2682 = fmul fast float %2678, %2623
  %2683 = fmul fast float %2674, %2623
  %2684 = fadd fast float %2658, %2680
  %2685 = fadd fast float %2659, %2681
  %2686 = fadd fast float %2660, %2682
  %2687 = fadd fast float %2661, %2683
  %2688 = fmul fast float %2672, %2623
  %2689 = fmul fast float %2677, %2623
  %2690 = fadd fast float %2664, %2688
  %2691 = fadd fast float %2665, %2689
  %2692 = fmul fast float %2673, %2623
  %2693 = fmul fast float %2679, %2623
  %2694 = fadd fast float %2668, %2692
  %2695 = fadd fast float %2669, %2693
  %2696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %2629, float %2633, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2697 = extractvalue %dx.types.ResRet.f32 %2696, 0
  %2698 = extractvalue %dx.types.ResRet.f32 %2696, 1
  %2699 = extractvalue %dx.types.ResRet.f32 %2696, 2
  %2700 = extractvalue %dx.types.ResRet.f32 %2696, 3
  %2701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %2629, float %2633, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.ResRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.ResRet.f32 %2701, 2
  %2705 = extractvalue %dx.types.ResRet.f32 %2701, 3
  %2706 = fmul fast float %2697, %2624
  %2707 = fmul fast float %2702, %2624
  %2708 = fmul fast float %2704, %2624
  %2709 = fmul fast float %2700, %2624
  %2710 = fadd fast float %2684, %2706
  %2711 = fadd fast float %2685, %2707
  %2712 = fadd fast float %2686, %2708
  %2713 = fadd fast float %2687, %2709
  %2714 = fmul fast float %2698, %2624
  %2715 = fmul fast float %2703, %2624
  %2716 = fadd fast float %2690, %2714
  %2717 = fadd fast float %2691, %2715
  %2718 = fmul fast float %2699, %2624
  %2719 = fmul fast float %2705, %2624
  %2720 = fadd fast float %2694, %2718
  %2721 = fadd fast float %2695, %2719
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = fsub fast float %2194, %2723
  %2725 = fsub fast float %2566, %2194
  %2726 = call float @dx.op.binary.f32(i32 35, float %2725, float %2724)  ; FMax(a,b)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2722, 1
  %2728 = fsub fast float %2195, %2727
  %2729 = fsub fast float %2567, %2195
  %2730 = call float @dx.op.binary.f32(i32 35, float %2729, float %2728)  ; FMax(a,b)
  %2731 = call float @dx.op.binary.f32(i32 35, float %2726, float %2730)  ; FMax(a,b)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2570, 3
  %2733 = fmul fast float %2732, %2731
  %2734 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.CBufRet.f32 %2735, 1
  %2738 = extractvalue %dx.types.CBufRet.f32 %2735, 2
  %2739 = extractvalue %dx.types.CBufRet.f32 %2735, 3
  %2740 = fsub fast float %2736, %2710
  %2741 = fsub fast float %2737, %2711
  %2742 = fsub fast float %2738, %2712
  %2743 = fsub fast float %2739, %2713
  %2744 = fmul fast float %2740, %2734
  %2745 = fmul fast float %2741, %2734
  %2746 = fmul fast float %2742, %2734
  %2747 = fmul fast float %2743, %2734
  %2748 = fadd fast float %2744, %2710
  %2749 = fadd fast float %2745, %2711
  %2750 = fadd fast float %2746, %2712
  %2751 = fadd fast float %2747, %2713
  %2752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2753 = extractvalue %dx.types.CBufRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.CBufRet.f32 %2752, 1
  %2755 = fsub fast float %2753, %2716
  %2756 = fsub fast float %2754, %2717
  %2757 = fmul fast float %2755, %2734
  %2758 = fmul fast float %2756, %2734
  %2759 = fadd fast float %2757, %2716
  %2760 = fadd fast float %2758, %2717
  %2761 = extractvalue %dx.types.CBufRet.f32 %2752, 2
  %2762 = extractvalue %dx.types.CBufRet.f32 %2752, 3
  %2763 = fsub fast float %2761, %2720
  %2764 = fsub fast float %2762, %2721
  %2765 = fmul fast float %2763, %2734
  %2766 = fmul fast float %2764, %2734
  %2767 = fadd fast float %2765, %2720
  %2768 = fadd fast float %2766, %2721
  %2769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2770 = extractvalue %dx.types.CBufRet.f32 %2769, 0
  %2771 = fmul fast float %2770, %2748
  %2772 = fmul fast float %2770, %2749
  %2773 = fmul fast float %2770, %2750
  %2774 = fmul fast float %2770, %2751
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = fmul fast float %2776, %2759
  %2778 = fmul fast float %2776, %2760
  %2779 = fadd fast float %2777, %2771
  %2780 = fadd fast float %2778, %2773
  %2781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2782 = extractvalue %dx.types.CBufRet.f32 %2781, 0
  %2783 = fmul fast float %2782, %2767
  %2784 = fmul fast float %2782, %2768
  %2785 = fadd fast float %2779, %2783
  %2786 = fadd fast float %2780, %2784
  %2787 = extractvalue %dx.types.CBufRet.f32 %2769, 1
  %2788 = fmul fast float %2787, %2748
  %2789 = fmul fast float %2787, %2749
  %2790 = fmul fast float %2787, %2750
  %2791 = fmul fast float %2787, %2751
  %2792 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2793 = fmul fast float %2792, %2759
  %2794 = fmul fast float %2792, %2760
  %2795 = fadd fast float %2793, %2788
  %2796 = fadd fast float %2794, %2790
  %2797 = extractvalue %dx.types.CBufRet.f32 %2781, 1
  %2798 = fmul fast float %2797, %2767
  %2799 = fmul fast float %2797, %2768
  %2800 = fadd fast float %2795, %2798
  %2801 = fadd fast float %2796, %2799
  %2802 = extractvalue %dx.types.CBufRet.f32 %2769, 2
  %2803 = fmul fast float %2802, %2748
  %2804 = fmul fast float %2802, %2749
  %2805 = fmul fast float %2802, %2750
  %2806 = fmul fast float %2802, %2751
  %2807 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2808 = fmul fast float %2807, %2759
  %2809 = fmul fast float %2807, %2760
  %2810 = fadd fast float %2808, %2803
  %2811 = fadd fast float %2809, %2805
  %2812 = extractvalue %dx.types.CBufRet.f32 %2781, 2
  %2813 = fmul fast float %2812, %2767
  %2814 = fmul fast float %2812, %2768
  %2815 = fadd fast float %2810, %2813
  %2816 = fadd fast float %2811, %2814
  %2817 = fmul fast float %2804, %2804
  %2818 = fmul fast float %2816, %2816
  %2819 = fmul fast float %2806, %2806
  %2820 = fadd fast float %2819, %2817
  %2821 = fadd fast float %2820, %2818
  %2822 = call float @dx.op.unary.f32(i32 24, float %2821)  ; Sqrt(value)
  %2823 = fcmp fast ugt float %2822, 0.000000e+00
  br i1 %2823, label %2824, label %2839

; <label>:2824                                    ; preds = %2558
  %2825 = fsub fast float -0.000000e+00, %2806
  %2826 = fdiv fast float %2825, %2822
  %2827 = fsub fast float -0.000000e+00, %2804
  %2828 = fdiv fast float %2827, %2822
  %2829 = fdiv fast float %2816, %2822
  %2830 = fmul fast float %2815, 0x3FE279A760000000
  %2831 = fmul fast float %2828, %2804
  %2832 = fmul fast float %2829, %2816
  %2833 = fmul fast float %2826, %2806
  %2834 = fadd fast float %2831, %2833
  %2835 = fsub fast float %2834, %2832
  %2836 = call float @dx.op.unary.f32(i32 6, float %2835)  ; FAbs(value)
  %2837 = fadd fast float %2836, 0x3DDB7CDFE0000000
  %2838 = fdiv fast float %2830, %2837
  br label %2839

; <label>:2839                                    ; preds = %2824, %2558
  %2840 = phi float [ %2838, %2824 ], [ 1.000000e+00, %2558 ]
  %2841 = fmul fast float %2789, %2789
  %2842 = fmul fast float %2801, %2801
  %2843 = fmul fast float %2791, %2791
  %2844 = fadd fast float %2843, %2841
  %2845 = fadd fast float %2844, %2842
  %2846 = call float @dx.op.unary.f32(i32 24, float %2845)  ; Sqrt(value)
  %2847 = fcmp fast ugt float %2846, 0.000000e+00
  br i1 %2847, label %2848, label %2863

; <label>:2848                                    ; preds = %2839
  %2849 = fsub fast float -0.000000e+00, %2791
  %2850 = fdiv fast float %2849, %2846
  %2851 = fsub fast float -0.000000e+00, %2789
  %2852 = fdiv fast float %2851, %2846
  %2853 = fdiv fast float %2801, %2846
  %2854 = fmul fast float %2800, 0x3FE279A760000000
  %2855 = fmul fast float %2852, %2789
  %2856 = fmul fast float %2853, %2801
  %2857 = fmul fast float %2850, %2791
  %2858 = fadd fast float %2855, %2857
  %2859 = fsub fast float %2858, %2856
  %2860 = call float @dx.op.unary.f32(i32 6, float %2859)  ; FAbs(value)
  %2861 = fadd fast float %2860, 0x3DDB7CDFE0000000
  %2862 = fdiv fast float %2854, %2861
  br label %2863

; <label>:2863                                    ; preds = %2848, %2839
  %2864 = phi float [ %2862, %2848 ], [ 1.000000e+00, %2839 ]
  %2865 = call float @dx.op.binary.f32(i32 36, float %2864, float %2840)  ; FMin(a,b)
  %2866 = fmul fast float %2772, %2772
  %2867 = fmul fast float %2786, %2786
  %2868 = fmul fast float %2774, %2774
  %2869 = fadd fast float %2868, %2866
  %2870 = fadd fast float %2869, %2867
  %2871 = call float @dx.op.unary.f32(i32 24, float %2870)  ; Sqrt(value)
  %2872 = fcmp fast ugt float %2871, 0.000000e+00
  br i1 %2872, label %2873, label %2888

; <label>:2873                                    ; preds = %2863
  %2874 = fsub fast float -0.000000e+00, %2774
  %2875 = fdiv fast float %2874, %2871
  %2876 = fsub fast float -0.000000e+00, %2772
  %2877 = fdiv fast float %2876, %2871
  %2878 = fdiv fast float %2786, %2871
  %2879 = fmul fast float %2785, 0x3FE279A760000000
  %2880 = fmul fast float %2877, %2772
  %2881 = fmul fast float %2878, %2786
  %2882 = fmul fast float %2875, %2774
  %2883 = fadd fast float %2880, %2882
  %2884 = fsub fast float %2883, %2881
  %2885 = call float @dx.op.unary.f32(i32 6, float %2884)  ; FAbs(value)
  %2886 = fadd fast float %2885, 0x3DDB7CDFE0000000
  %2887 = fdiv fast float %2879, %2886
  br label %2888

; <label>:2888                                    ; preds = %2873, %2863
  %2889 = phi float [ %2887, %2873 ], [ 1.000000e+00, %2863 ]
  %2890 = call float @dx.op.binary.f32(i32 36, float %2889, float %2865)  ; FMin(a,b)
  %2891 = call float @dx.op.unary.f32(i32 7, float %2890)  ; Saturate(value)
  %2892 = fcmp fast olt float %2891, 1.000000e+00
  br i1 %2892, label %2893, label %2903

; <label>:2893                                    ; preds = %2888
  %2894 = fmul fast float %2891, %2772
  %2895 = fmul fast float %2891, %2786
  %2896 = fmul fast float %2891, %2774
  %2897 = fmul fast float %2891, %2789
  %2898 = fmul fast float %2891, %2801
  %2899 = fmul fast float %2891, %2791
  %2900 = fmul fast float %2891, %2804
  %2901 = fmul fast float %2891, %2816
  %2902 = fmul fast float %2891, %2806
  br label %2903

; <label>:2903                                    ; preds = %2893, %2888
  %2904 = phi float [ %2900, %2893 ], [ %2804, %2888 ]
  %2905 = phi float [ %2901, %2893 ], [ %2816, %2888 ]
  %2906 = phi float [ %2902, %2893 ], [ %2806, %2888 ]
  %2907 = phi float [ %2897, %2893 ], [ %2789, %2888 ]
  %2908 = phi float [ %2898, %2893 ], [ %2801, %2888 ]
  %2909 = phi float [ %2899, %2893 ], [ %2791, %2888 ]
  %2910 = phi float [ %2894, %2893 ], [ %2772, %2888 ]
  %2911 = phi float [ %2895, %2893 ], [ %2786, %2888 ]
  %2912 = phi float [ %2896, %2893 ], [ %2774, %2888 ]
  %2913 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2785)  ; FMax(a,b)
  %2914 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2800)  ; FMax(a,b)
  %2915 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2815)  ; FMax(a,b)
  %2916 = fcmp fast oge float %2573, 0.000000e+00
  %2917 = and i1 %2916, %2344
  %2918 = fcmp fast ole float %2573, 1.000000e+00
  %2919 = and i1 %2918, %2917
  %2920 = fcmp fast oge float %2574, 0.000000e+00
  %2921 = and i1 %2920, %2919
  %2922 = fcmp fast ole float %2574, 1.000000e+00
  %2923 = and i1 %2922, %2921
  br i1 %2923, label %2924, label %3069, !dx.controlflow.hints !97

; <label>:2924                                    ; preds = %2903
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 2
  %2927 = extractvalue %dx.types.CBufRet.f32 %2925, 3
  %2928 = fmul fast float %2926, %2573
  %2929 = fmul fast float %2927, %2574
  %2930 = call float @dx.op.unary.f32(i32 27, float %2928)  ; Round_ni(value)
  %2931 = call float @dx.op.unary.f32(i32 27, float %2929)  ; Round_ni(value)
  %2932 = fptosi float %2930 to i32
  %2933 = fptosi float %2931 to i32
  %2934 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %44, i32 0, i32 %2932, i32 %2933, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 65535
  %2937 = lshr i32 %2935, 16
  %2938 = icmp eq i32 %2936, 65535
  br i1 %2938, label %2975, label %2939

; <label>:2939                                    ; preds = %2924
  %2940 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2941 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2943 = fmul fast float %2941, %2573
  %2944 = fmul fast float %2942, %2574
  %2945 = fmul fast float %2943, 1.250000e-01
  %2946 = fmul fast float %2944, 1.250000e-01
  %2947 = call float @dx.op.unary.f32(i32 27, float %2945)  ; Round_ni(value)
  %2948 = call float @dx.op.unary.f32(i32 27, float %2946)  ; Round_ni(value)
  %2949 = fmul fast float %2947, 8.000000e+00
  %2950 = fmul fast float %2948, 8.000000e+00
  %2951 = and i32 %2935, 255
  %2952 = lshr i32 %2935, 8
  %2953 = and i32 %2952, 255
  %2954 = mul nuw nsw i32 %2951, 9
  %2955 = uitofp i32 %2954 to float
  %2956 = mul nuw nsw i32 %2953, 9
  %2957 = uitofp i32 %2956 to float
  %2958 = fadd fast float %2955, 5.000000e-01
  %2959 = fadd fast float %2958, %2943
  %2960 = fsub fast float %2959, %2949
  %2961 = fadd fast float %2957, 5.000000e-01
  %2962 = fadd fast float %2961, %2944
  %2963 = fsub fast float %2962, %2950
  %2964 = fdiv fast float %2960, %2343
  %2965 = fdiv fast float %2963, %2940
  %2966 = fmul fast float %2601, 4.375000e-01
  %2967 = fadd fast float %2966, 3.125000e-02
  %2968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %2964, float %2965, float %2967, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = fadd fast float %2969, %2913
  %2973 = fadd fast float %2970, %2914
  %2974 = fadd fast float %2971, %2915
  br label %2975

; <label>:2975                                    ; preds = %2939, %2924
  %2976 = phi float [ %2974, %2939 ], [ %2915, %2924 ]
  %2977 = phi float [ %2973, %2939 ], [ %2914, %2924 ]
  %2978 = phi float [ %2972, %2939 ], [ %2913, %2924 ]
  %2979 = icmp eq i32 %2937, 65535
  br i1 %2979, label %3069, label %2980

; <label>:2980                                    ; preds = %2975
  %2981 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2982 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2983 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2984 = fmul fast float %2982, %2573
  %2985 = fmul fast float %2983, %2574
  %2986 = fmul fast float %2984, 1.250000e-01
  %2987 = fmul fast float %2985, 1.250000e-01
  %2988 = call float @dx.op.unary.f32(i32 27, float %2986)  ; Round_ni(value)
  %2989 = call float @dx.op.unary.f32(i32 27, float %2987)  ; Round_ni(value)
  %2990 = fmul fast float %2988, 8.000000e+00
  %2991 = fmul fast float %2989, 8.000000e+00
  %2992 = fsub fast float %2984, %2990
  %2993 = fsub fast float %2985, %2991
  %2994 = fadd fast float %2992, 5.000000e-01
  %2995 = fadd fast float %2993, 5.000000e-01
  %2996 = and i32 %2937, 255
  %2997 = lshr i32 %2935, 24
  %2998 = mul nuw nsw i32 %2996, 9
  %2999 = uitofp i32 %2998 to float
  %3000 = mul nuw nsw i32 %2997, 9
  %3001 = uitofp i32 %3000 to float
  %3002 = fadd fast float %2994, %2999
  %3003 = fadd fast float %2995, %3001
  %3004 = fdiv fast float %3002, %2343
  %3005 = fdiv fast float %3003, %2981
  %3006 = fmul fast float %2601, 4.375000e-01
  %3007 = fadd fast float %3006, 3.125000e-02
  %3008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %3004, float %3005, float %3007, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = extractvalue %dx.types.ResRet.f32 %3008, 1
  %3011 = extractvalue %dx.types.ResRet.f32 %3008, 2
  %3012 = fadd fast float %3006, 5.312500e-01
  %3013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %3004, float %3005, float %3012, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3014 = extractvalue %dx.types.ResRet.f32 %3013, 0
  %3015 = extractvalue %dx.types.ResRet.f32 %3013, 1
  %3016 = extractvalue %dx.types.ResRet.f32 %3013, 2
  %3017 = fmul fast float %3014, 2.000000e+00
  %3018 = fmul fast float %3015, 2.000000e+00
  %3019 = fmul fast float %3016, 2.000000e+00
  %3020 = fadd fast float %3017, -1.000000e+00
  %3021 = fadd fast float %3018, -1.000000e+00
  %3022 = fadd fast float %3019, -1.000000e+00
  %3023 = fmul fast float %3020, %3020
  %3024 = fmul fast float %3021, %3021
  %3025 = fadd fast float %3023, %3024
  %3026 = fmul fast float %3022, %3022
  %3027 = fadd fast float %3025, %3026
  %3028 = call float @dx.op.unary.f32(i32 24, float %3027)  ; Sqrt(value)
  %3029 = fcmp fast ogt float %3028, 0.000000e+00
  br i1 %3029, label %3030, label %3034

; <label>:3030                                    ; preds = %2980
  %3031 = fdiv fast float %3020, %3028
  %3032 = fdiv fast float %3021, %3028
  %3033 = fdiv fast float %3022, %3028
  br label %3034

; <label>:3034                                    ; preds = %3030, %2980
  %3035 = phi float [ %3031, %3030 ], [ 0.000000e+00, %2980 ]
  %3036 = phi float [ %3032, %3030 ], [ 0.000000e+00, %2980 ]
  %3037 = phi float [ %3033, %3030 ], [ 0.000000e+00, %2980 ]
  %3038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3039 = extractvalue %dx.types.CBufRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.CBufRet.f32 %3038, 1
  %3041 = fsub fast float %2194, %3039
  %3042 = fsub fast float %2195, %3040
  %3043 = fmul fast float %3041, %3041
  %3044 = fmul fast float %3042, %3042
  %3045 = fadd fast float %3043, %3044
  %3046 = call float @dx.op.unary.f32(i32 24, float %3045)  ; Sqrt(value)
  %3047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.f32 %3047, 0
  %3049 = extractvalue %dx.types.CBufRet.f32 %3047, 1
  %3050 = fsub fast float %3046, %3048
  %3051 = fdiv fast float %3050, %3049
  %3052 = call float @dx.op.unary.f32(i32 7, float %3051)  ; Saturate(value)
  %3053 = fmul fast float %3052, 2.000000e+00
  %3054 = fsub fast float 3.000000e+00, %3053
  %3055 = fmul fast float %3052, %3052
  %3056 = fmul fast float %3055, %3054
  %3057 = call float @dx.op.dot3.f32(i32 55, float %3035, float %3036, float %3037, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3058 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3057)  ; FMax(a,b)
  %3059 = fmul fast float %3058, 0x400C5BF8A0000000
  %3060 = fmul fast float %3056, %3009
  %3061 = fmul fast float %3060, %3059
  %3062 = fadd fast float %3061, %2978
  %3063 = fmul fast float %3056, %3010
  %3064 = fmul fast float %3063, %3059
  %3065 = fadd fast float %3064, %2977
  %3066 = fmul fast float %3056, %3011
  %3067 = fmul fast float %3066, %3059
  %3068 = fadd fast float %3067, %2976
  br label %3069

; <label>:3069                                    ; preds = %3034, %2975, %2903
  %3070 = phi float [ %3068, %3034 ], [ %2976, %2975 ], [ %2915, %2903 ]
  %3071 = phi float [ %3065, %3034 ], [ %2977, %2975 ], [ %2914, %2903 ]
  %3072 = phi float [ %3062, %3034 ], [ %2978, %2975 ], [ %2913, %2903 ]
  %3073 = fcmp fast ogt float %2560, %2597
  %3074 = and i1 %2916, %3073
  %3075 = and i1 %2918, %3074
  %3076 = and i1 %2920, %3075
  %3077 = and i1 %2922, %3076
  br i1 %3077, label %3078, label %3135, !dx.controlflow.hints !98

; <label>:3078                                    ; preds = %3069
  %3079 = fmul fast float %2599, 0x3FC24924A0000000
  %3080 = fsub fast float %2560, %2597
  %3081 = fdiv fast float %3080, %3079
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3084 = extractvalue %dx.types.CBufRet.f32 %3083, 0
  %3085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3086 = extractvalue %dx.types.CBufRet.f32 %3085, 0
  %3087 = extractvalue %dx.types.CBufRet.f32 %3085, 1
  %3088 = extractvalue %dx.types.CBufRet.f32 %3085, 2
  %3089 = fsub fast float %3084, %3072
  %3090 = fsub fast float %3086, %2910
  %3091 = fsub fast float %3087, %2911
  %3092 = fsub fast float %3088, %2912
  %3093 = fmul fast float %3089, %3082
  %3094 = fmul fast float %3090, %3082
  %3095 = fmul fast float %3091, %3082
  %3096 = fmul fast float %3092, %3082
  %3097 = fadd fast float %3093, %3072
  %3098 = fadd fast float %3094, %2910
  %3099 = fadd fast float %3095, %2911
  %3100 = fadd fast float %3096, %2912
  %3101 = extractvalue %dx.types.CBufRet.f32 %3083, 1
  %3102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3103 = extractvalue %dx.types.CBufRet.f32 %3102, 0
  %3104 = extractvalue %dx.types.CBufRet.f32 %3102, 1
  %3105 = extractvalue %dx.types.CBufRet.f32 %3102, 2
  %3106 = fsub fast float %3101, %3071
  %3107 = fsub fast float %3103, %2907
  %3108 = fsub fast float %3104, %2908
  %3109 = fsub fast float %3105, %2909
  %3110 = fmul fast float %3106, %3082
  %3111 = fmul fast float %3107, %3082
  %3112 = fmul fast float %3108, %3082
  %3113 = fmul fast float %3109, %3082
  %3114 = fadd fast float %3110, %3071
  %3115 = fadd fast float %3111, %2907
  %3116 = fadd fast float %3112, %2908
  %3117 = fadd fast float %3113, %2909
  %3118 = extractvalue %dx.types.CBufRet.f32 %3083, 2
  %3119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.f32 %3119, 0
  %3121 = extractvalue %dx.types.CBufRet.f32 %3119, 1
  %3122 = extractvalue %dx.types.CBufRet.f32 %3119, 2
  %3123 = fsub fast float %3118, %3070
  %3124 = fsub fast float %3120, %2904
  %3125 = fsub fast float %3121, %2905
  %3126 = fsub fast float %3122, %2906
  %3127 = fmul fast float %3123, %3082
  %3128 = fmul fast float %3124, %3082
  %3129 = fmul fast float %3125, %3082
  %3130 = fmul fast float %3126, %3082
  %3131 = fadd fast float %3127, %3070
  %3132 = fadd fast float %3128, %2904
  %3133 = fadd fast float %3129, %2905
  %3134 = fadd fast float %3130, %2906
  br label %3135

; <label>:3135                                    ; preds = %3078, %3069
  %3136 = phi float [ %3131, %3078 ], [ %3070, %3069 ]
  %3137 = phi float [ %3132, %3078 ], [ %2904, %3069 ]
  %3138 = phi float [ %3133, %3078 ], [ %2905, %3069 ]
  %3139 = phi float [ %3134, %3078 ], [ %2906, %3069 ]
  %3140 = phi float [ %3114, %3078 ], [ %3071, %3069 ]
  %3141 = phi float [ %3115, %3078 ], [ %2907, %3069 ]
  %3142 = phi float [ %3116, %3078 ], [ %2908, %3069 ]
  %3143 = phi float [ %3117, %3078 ], [ %2909, %3069 ]
  %3144 = phi float [ %3097, %3078 ], [ %3072, %3069 ]
  %3145 = phi float [ %3098, %3078 ], [ %2910, %3069 ]
  %3146 = phi float [ %3099, %3078 ], [ %2911, %3069 ]
  %3147 = phi float [ %3100, %3078 ], [ %2912, %3069 ]
  %3148 = extractvalue %dx.types.CBufRet.f32 %2722, 3
  %3149 = fmul fast float %3148, %3144
  %3150 = fmul fast float %3148, %3140
  %3151 = fmul fast float %3148, %3136
  %3152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.f32 %3152, 3
  %3154 = fmul fast float %3149, %3153
  %3155 = fmul fast float %3150, %3153
  %3156 = fmul fast float %3151, %3153
  %3157 = fmul fast float %3145, 1.500000e+00
  %3158 = fmul fast float %3157, %3148
  %3159 = fmul fast float %3158, %3153
  %3160 = fmul fast float %3146, 1.500000e+00
  %3161 = fmul fast float %3160, %3148
  %3162 = fmul fast float %3161, %3153
  %3163 = fmul fast float %3147, 1.500000e+00
  %3164 = fmul fast float %3163, %3148
  %3165 = fmul fast float %3164, %3153
  %3166 = fmul fast float %3141, 1.500000e+00
  %3167 = fmul fast float %3166, %3148
  %3168 = fmul fast float %3167, %3153
  %3169 = fmul fast float %3142, 1.500000e+00
  %3170 = fmul fast float %3169, %3148
  %3171 = fmul fast float %3170, %3153
  %3172 = fmul fast float %3143, 1.500000e+00
  %3173 = fmul fast float %3172, %3148
  %3174 = fmul fast float %3173, %3153
  %3175 = fmul fast float %3137, 1.500000e+00
  %3176 = fmul fast float %3175, %3148
  %3177 = fmul fast float %3176, %3153
  %3178 = fmul fast float %3138, 1.500000e+00
  %3179 = fmul fast float %3178, %3148
  %3180 = fmul fast float %3179, %3153
  %3181 = fmul fast float %3139, 1.500000e+00
  %3182 = fmul fast float %3181, %3148
  %3183 = fmul fast float %3182, %3153
  %3184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3154)  ; FMax(a,b)
  %3185 = call float @dx.op.dot3.f32(i32 55, float %3159, float %3162, float %3165, float %3159, float %3162, float %3165)  ; Dot3(ax,ay,az,bx,by,bz)
  %3186 = fcmp fast oeq float %3185, 0.000000e+00
  %3187 = fcmp fast oeq float %3184, 0.000000e+00
  %3188 = or i1 %3187, %3186
  br i1 %3188, label %3218, label %3189

; <label>:3189                                    ; preds = %3135
  %3190 = fsub fast float -0.000000e+00, %3165
  %3191 = fsub fast float -0.000000e+00, %3159
  %3192 = call float @dx.op.unary.f32(i32 24, float %3185)  ; Sqrt(value)
  %3193 = fdiv fast float %3192, %3184
  %3194 = fcmp fast ogt float %3193, 0x3FFB6F8900000000
  %3195 = select i1 %3194, float 0x3FFB6F8900000000, float %3193
  %3196 = fmul fast float %3195, 0x3FE8A23460000000
  %3197 = call float @dx.op.unary.f32(i32 7, float %3196)  ; Saturate(value)
  %3198 = call float @dx.op.binary.f32(i32 35, float %3195, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3199 = fmul fast float %3197, %3184
  %3200 = fmul fast float %3198, 0x3FF279A740000000
  %3201 = fadd fast float %3200, -1.000000e+00
  %3202 = call float @dx.op.dot3.f32(i32 55, float %3190, float %3191, float %3162, float %3190, float %3191, float %3162)  ; Dot3(ax,ay,az,bx,by,bz)
  %3203 = call float @dx.op.unary.f32(i32 25, float %3202)  ; Rsqrt(value)
  %3204 = fmul fast float %3203, %3190
  %3205 = fmul fast float %3203, %3191
  %3206 = fmul fast float %3203, %3162
  %3207 = fmul fast float %3201, %3201
  %3208 = fsub fast float 1.000000e+00, %3207
  %3209 = fmul fast float %3198, 0x40005F8BE0000000
  %3210 = fsub fast float 0x400C5BF8A0000000, %3209
  %3211 = fdiv fast float %3199, %3210
  %3212 = fmul fast float %3211, 0x3FEE31C3C0000000
  %3213 = fmul fast float %3212, %3208
  %3214 = fmul fast float %3198, 0x3FDACB7480000000
  %3215 = fadd fast float %3214, 0xBFD7347680000000
  %3216 = fmul fast float %3215, %3211
  %3217 = fmul fast float %3216, %3208
  br label %3218

; <label>:3218                                    ; preds = %3189, %3135
  %3219 = phi float [ %3204, %3189 ], [ 0.000000e+00, %3135 ]
  %3220 = phi float [ %3205, %3189 ], [ 0.000000e+00, %3135 ]
  %3221 = phi float [ %3206, %3189 ], [ 0.000000e+00, %3135 ]
  %3222 = phi float [ %3213, %3189 ], [ 0.000000e+00, %3135 ]
  %3223 = phi float [ %3217, %3189 ], [ 0.000000e+00, %3135 ]
  %3224 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3225 = fmul fast float %3224, %3224
  %3226 = fmul fast float %3225, 0x3FEE471020000000
  %3227 = fadd fast float %3226, 0xBFD42F6020000000
  %3228 = fmul fast float %3184, 0x3FD20DD760000000
  %3229 = fmul fast float %3227, %3223
  %3230 = fmul fast float %3222, 0x3FDF454380000000
  %3231 = fmul fast float %3230, %3224
  %3232 = fadd fast float %3231, %3228
  %3233 = fadd fast float %3232, %3229
  %3234 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %3235 = fmul fast float %3234, 0x3FDF454380000000
  %3236 = fmul fast float %3234, %3234
  %3237 = fmul fast float %3236, 0x3FEE471020000000
  %3238 = fadd fast float %3237, 0xBFD42F6020000000
  %3239 = call float @dx.op.dot3.f32(i32 55, float %3184, float %3222, float %3223, float 0x3FD20DD760000000, float %3235, float %3238)  ; Dot3(ax,ay,az,bx,by,bz)
  %3240 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3155)  ; FMax(a,b)
  %3241 = call float @dx.op.dot3.f32(i32 55, float %3168, float %3171, float %3174, float %3168, float %3171, float %3174)  ; Dot3(ax,ay,az,bx,by,bz)
  %3242 = fcmp fast oeq float %3241, 0.000000e+00
  %3243 = fcmp fast oeq float %3240, 0.000000e+00
  %3244 = or i1 %3243, %3242
  br i1 %3244, label %3274, label %3245

; <label>:3245                                    ; preds = %3218
  %3246 = fsub fast float -0.000000e+00, %3174
  %3247 = fsub fast float -0.000000e+00, %3168
  %3248 = call float @dx.op.unary.f32(i32 24, float %3241)  ; Sqrt(value)
  %3249 = fdiv fast float %3248, %3240
  %3250 = fcmp fast ogt float %3249, 0x3FFB6F8900000000
  %3251 = select i1 %3250, float 0x3FFB6F8900000000, float %3249
  %3252 = fmul fast float %3251, 0x3FE8A23460000000
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = call float @dx.op.binary.f32(i32 35, float %3251, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3255 = fmul fast float %3253, %3240
  %3256 = fmul fast float %3254, 0x3FF279A740000000
  %3257 = fadd fast float %3256, -1.000000e+00
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3246, float %3247, float %3171, float %3246, float %3247, float %3171)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = call float @dx.op.unary.f32(i32 25, float %3258)  ; Rsqrt(value)
  %3260 = fmul fast float %3259, %3246
  %3261 = fmul fast float %3259, %3247
  %3262 = fmul fast float %3259, %3171
  %3263 = fmul fast float %3257, %3257
  %3264 = fsub fast float 1.000000e+00, %3263
  %3265 = fmul fast float %3254, 0x40005F8BE0000000
  %3266 = fsub fast float 0x400C5BF8A0000000, %3265
  %3267 = fdiv fast float %3255, %3266
  %3268 = fmul fast float %3267, 0x3FEE31C3C0000000
  %3269 = fmul fast float %3268, %3264
  %3270 = fmul fast float %3254, 0x3FDACB7480000000
  %3271 = fadd fast float %3270, 0xBFD7347680000000
  %3272 = fmul fast float %3271, %3267
  %3273 = fmul fast float %3272, %3264
  br label %3274

; <label>:3274                                    ; preds = %3245, %3218
  %3275 = phi float [ %3260, %3245 ], [ 0.000000e+00, %3218 ]
  %3276 = phi float [ %3261, %3245 ], [ 0.000000e+00, %3218 ]
  %3277 = phi float [ %3262, %3245 ], [ 0.000000e+00, %3218 ]
  %3278 = phi float [ %3269, %3245 ], [ 0.000000e+00, %3218 ]
  %3279 = phi float [ %3273, %3245 ], [ 0.000000e+00, %3218 ]
  %3280 = call float @dx.op.dot3.f32(i32 55, float %3275, float %3276, float %3277, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3281 = fmul fast float %3280, %3280
  %3282 = fmul fast float %3281, 0x3FEE471020000000
  %3283 = fadd fast float %3282, 0xBFD42F6020000000
  %3284 = fmul fast float %3240, 0x3FD20DD760000000
  %3285 = fmul fast float %3283, %3279
  %3286 = fmul fast float %3278, 0x3FDF454380000000
  %3287 = fmul fast float %3286, %3280
  %3288 = fadd fast float %3287, %3284
  %3289 = fadd fast float %3288, %3285
  %3290 = call float @dx.op.dot3.f32(i32 55, float %3275, float %3276, float %3277, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %3291 = fmul fast float %3290, 0x3FDF454380000000
  %3292 = fmul fast float %3290, %3290
  %3293 = fmul fast float %3292, 0x3FEE471020000000
  %3294 = fadd fast float %3293, 0xBFD42F6020000000
  %3295 = call float @dx.op.dot3.f32(i32 55, float %3240, float %3278, float %3279, float 0x3FD20DD760000000, float %3291, float %3294)  ; Dot3(ax,ay,az,bx,by,bz)
  %3296 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3156)  ; FMax(a,b)
  %3297 = call float @dx.op.dot3.f32(i32 55, float %3177, float %3180, float %3183, float %3177, float %3180, float %3183)  ; Dot3(ax,ay,az,bx,by,bz)
  %3298 = fcmp fast oeq float %3297, 0.000000e+00
  %3299 = fcmp fast oeq float %3296, 0.000000e+00
  %3300 = or i1 %3299, %3298
  br i1 %3300, label %3330, label %3301

; <label>:3301                                    ; preds = %3274
  %3302 = fsub fast float -0.000000e+00, %3183
  %3303 = fsub fast float -0.000000e+00, %3177
  %3304 = call float @dx.op.unary.f32(i32 24, float %3297)  ; Sqrt(value)
  %3305 = fdiv fast float %3304, %3296
  %3306 = fcmp fast ogt float %3305, 0x3FFB6F8900000000
  %3307 = select i1 %3306, float 0x3FFB6F8900000000, float %3305
  %3308 = fmul fast float %3307, 0x3FE8A23460000000
  %3309 = call float @dx.op.unary.f32(i32 7, float %3308)  ; Saturate(value)
  %3310 = call float @dx.op.binary.f32(i32 35, float %3307, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3311 = fmul fast float %3309, %3296
  %3312 = fmul fast float %3310, 0x3FF279A740000000
  %3313 = fadd fast float %3312, -1.000000e+00
  %3314 = call float @dx.op.dot3.f32(i32 55, float %3302, float %3303, float %3180, float %3302, float %3303, float %3180)  ; Dot3(ax,ay,az,bx,by,bz)
  %3315 = call float @dx.op.unary.f32(i32 25, float %3314)  ; Rsqrt(value)
  %3316 = fmul fast float %3315, %3302
  %3317 = fmul fast float %3315, %3303
  %3318 = fmul fast float %3315, %3180
  %3319 = fmul fast float %3313, %3313
  %3320 = fsub fast float 1.000000e+00, %3319
  %3321 = fmul fast float %3310, 0x40005F8BE0000000
  %3322 = fsub fast float 0x400C5BF8A0000000, %3321
  %3323 = fdiv fast float %3311, %3322
  %3324 = fmul fast float %3323, 0x3FEE31C3C0000000
  %3325 = fmul fast float %3324, %3320
  %3326 = fmul fast float %3310, 0x3FDACB7480000000
  %3327 = fadd fast float %3326, 0xBFD7347680000000
  %3328 = fmul fast float %3327, %3323
  %3329 = fmul fast float %3328, %3320
  br label %3330

; <label>:3330                                    ; preds = %3301, %3274
  %3331 = phi float [ %3316, %3301 ], [ 0.000000e+00, %3274 ]
  %3332 = phi float [ %3317, %3301 ], [ 0.000000e+00, %3274 ]
  %3333 = phi float [ %3318, %3301 ], [ 0.000000e+00, %3274 ]
  %3334 = phi float [ %3325, %3301 ], [ 0.000000e+00, %3274 ]
  %3335 = phi float [ %3329, %3301 ], [ 0.000000e+00, %3274 ]
  %3336 = call float @dx.op.dot3.f32(i32 55, float %3331, float %3332, float %3333, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %3337 = fmul fast float %3336, %3336
  %3338 = fmul fast float %3337, 0x3FEE471020000000
  %3339 = fadd fast float %3338, 0xBFD42F6020000000
  %3340 = fmul fast float %3296, 0x3FD20DD760000000
  %3341 = fmul fast float %3339, %3335
  %3342 = fmul fast float %3334, 0x3FDF454380000000
  %3343 = fmul fast float %3342, %3336
  %3344 = fadd fast float %3343, %3340
  %3345 = fadd fast float %3344, %3341
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3331, float %3332, float %3333, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = fmul fast float %3346, 0x3FDF454380000000
  %3348 = fmul fast float %3346, %3346
  %3349 = fmul fast float %3348, 0x3FEE471020000000
  %3350 = fadd fast float %3349, 0xBFD42F6020000000
  %3351 = call float @dx.op.dot3.f32(i32 55, float %3296, float %3334, float %3335, float 0x3FD20DD760000000, float %3347, float %3350)  ; Dot3(ax,ay,az,bx,by,bz)
  %3352 = call float @dx.op.binary.f32(i32 35, float %3233, float 0.000000e+00)  ; FMax(a,b)
  %3353 = call float @dx.op.binary.f32(i32 35, float %3289, float 0.000000e+00)  ; FMax(a,b)
  %3354 = call float @dx.op.binary.f32(i32 35, float %3345, float 0.000000e+00)  ; FMax(a,b)
  %3355 = call float @dx.op.binary.f32(i32 35, float %3239, float 0.000000e+00)  ; FMax(a,b)
  %3356 = call float @dx.op.binary.f32(i32 35, float %3295, float 0.000000e+00)  ; FMax(a,b)
  %3357 = call float @dx.op.binary.f32(i32 35, float %3351, float 0.000000e+00)  ; FMax(a,b)
  %3358 = fsub fast float %2554, %3352
  %3359 = fsub fast float %2555, %3353
  %3360 = fsub fast float %2556, %3354
  %3361 = fmul fast float %3358, %2235
  %3362 = fmul fast float %3359, %2235
  %3363 = fmul fast float %3360, %2235
  %3364 = fadd fast float %3361, %3352
  %3365 = fadd fast float %3362, %3353
  %3366 = fadd fast float %3363, %3354
  %3367 = fsub fast float %2551, %3355
  %3368 = fsub fast float %2552, %3356
  %3369 = fsub fast float %2553, %3357
  %3370 = fmul fast float %3367, %2235
  %3371 = fmul fast float %3368, %2235
  %3372 = fmul fast float %3369, %2235
  %3373 = fadd fast float %3370, %3355
  %3374 = fadd fast float %3371, %3356
  %3375 = fadd fast float %3372, %3357
  br label %3376

; <label>:3376                                    ; preds = %3330, %2550
  %3377 = phi float [ %3373, %3330 ], [ %2551, %2550 ]
  %3378 = phi float [ %3374, %3330 ], [ %2552, %2550 ]
  %3379 = phi float [ %3375, %3330 ], [ %2553, %2550 ]
  %3380 = phi float [ %3364, %3330 ], [ %2554, %2550 ]
  %3381 = phi float [ %3365, %3330 ], [ %2555, %2550 ]
  %3382 = phi float [ %3366, %3330 ], [ %2556, %2550 ]
  %3383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3384 = extractvalue %dx.types.CBufRet.f32 %3383, 0
  %3385 = call float @dx.op.binary.f32(i32 36, float %2164, float %3384)  ; FMin(a,b)
  %3386 = fsub fast float 1.000000e+00, %2187
  %3387 = fmul fast float %3385, %3386
  %3388 = fsub fast float 1.000000e+00, %3387
  %3389 = bitcast float %3388 to i32
  %3390 = sub nsw i32 2129859010, %3389
  %3391 = bitcast i32 %3390 to float
  %3392 = call float @dx.op.binary.f32(i32 36, float %2165, float %3384)  ; FMin(a,b)
  %3393 = fmul fast float %3392, %3386
  %3394 = fsub fast float 1.000000e+00, %3393
  %3395 = bitcast float %3394 to i32
  %3396 = sub nsw i32 2129859010, %3395
  %3397 = bitcast i32 %3396 to float
  %3398 = call float @dx.op.binary.f32(i32 36, float %2166, float %3384)  ; FMin(a,b)
  %3399 = fmul fast float %3398, %3386
  %3400 = fsub fast float 1.000000e+00, %3399
  %3401 = bitcast float %3400 to i32
  %3402 = sub nsw i32 2129859010, %3401
  %3403 = bitcast i32 %3402 to float
  %3404 = fmul fast float %3380, %2187
  %3405 = fmul fast float %3404, %3391
  %3406 = fmul fast float %3381, %2187
  %3407 = fmul fast float %3406, %3397
  %3408 = fmul fast float %3382, %2187
  %3409 = fmul fast float %3408, %3403
  %3410 = call float @dx.op.binary.f32(i32 36, float %2167, float %3384)  ; FMin(a,b)
  %3411 = fmul fast float %3410, %3386
  %3412 = fsub fast float 1.000000e+00, %3411
  %3413 = bitcast float %3412 to i32
  %3414 = sub nsw i32 2129859010, %3413
  %3415 = bitcast i32 %3414 to float
  %3416 = call float @dx.op.binary.f32(i32 36, float %2168, float %3384)  ; FMin(a,b)
  %3417 = fmul fast float %3416, %3386
  %3418 = fsub fast float 1.000000e+00, %3417
  %3419 = bitcast float %3418 to i32
  %3420 = sub nsw i32 2129859010, %3419
  %3421 = bitcast i32 %3420 to float
  %3422 = call float @dx.op.binary.f32(i32 36, float %2176, float %3384)  ; FMin(a,b)
  %3423 = fmul fast float %3422, %3386
  %3424 = fsub fast float 1.000000e+00, %3423
  %3425 = bitcast float %3424 to i32
  %3426 = sub nsw i32 2129859010, %3425
  %3427 = bitcast i32 %3426 to float
  %3428 = fmul fast float %3377, %2187
  %3429 = fmul fast float %3428, %3415
  %3430 = fmul fast float %3378, %2187
  %3431 = fmul fast float %3430, %3421
  %3432 = fmul fast float %3379, %2187
  %3433 = fmul fast float %3432, %3427
  %3434 = call float @dx.op.dot3.f32(i32 55, float %3405, float %3407, float %3409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3435 = select i1 %223, float 0.000000e+00, float %3405
  %3436 = select i1 %223, float %3434, float %3407
  %3437 = select i1 %223, float 0.000000e+00, float %3409
  %3438 = call float @dx.op.dot3.f32(i32 55, float %3429, float %3431, float %3433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3439 = select i1 %223, float 0.000000e+00, float %3429
  %3440 = select i1 %223, float %3438, float %3431
  %3441 = select i1 %223, float 0.000000e+00, float %3433
  %3442 = fmul fast float %994, %994
  %3443 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3444 = fmul fast float %2178, 9.843750e-01
  %3445 = fmul fast float %2173, 9.843750e-01
  %3446 = fadd fast float %3444, 7.812500e-03
  %3447 = fadd fast float %3445, 7.812500e-03
  %3448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %3446, float %3447, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.ResRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.ResRet.f32 %3448, 2
  %3452 = extractvalue %dx.types.ResRet.f32 %3448, 3
  %3453 = fsub fast float 1.000000e+00, %3443
  %3454 = fsub fast float %3451, %3449
  %3455 = fsub fast float %3452, %3450
  %3456 = fmul fast float %3454, %3453
  %3457 = fmul fast float %3455, %3453
  %3458 = fadd fast float %3456, %3449
  %3459 = fadd fast float %3457, %3450
  %3460 = fmul fast float %3458, %2167
  %3461 = fmul fast float %3458, %2168
  %3462 = fmul fast float %3458, %2176
  %3463 = fadd fast float %3460, %3459
  %3464 = fadd fast float %3461, %3459
  %3465 = fadd fast float %3462, %3459
  %3466 = fcmp fast ogt float %1538, 0.000000e+00
  br i1 %3466, label %3467, label %3493

; <label>:3467                                    ; preds = %3376
  %3468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %1538, float %2178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3469 = extractvalue %dx.types.ResRet.f32 %3468, 0
  %3470 = extractvalue %dx.types.ResRet.f32 %3468, 1
  %3471 = extractvalue %dx.types.ResRet.f32 %3468, 2
  %3472 = fadd fast float %3469, -5.000000e-01
  %3473 = fadd fast float %3470, -5.000000e-01
  %3474 = fadd fast float %3471, -5.000000e-01
  %3475 = fsub fast float 1.000000e+00, %2167
  %3476 = fsub fast float 1.000000e+00, %2168
  %3477 = fsub fast float 1.000000e+00, %2176
  %3478 = fmul fast float %2167, 4.000000e+00
  %3479 = fmul fast float %3478, %3475
  %3480 = fmul fast float %3479, %3472
  %3481 = fmul fast float %2168, 4.000000e+00
  %3482 = fmul fast float %3481, %3476
  %3483 = fmul fast float %3482, %3473
  %3484 = fmul fast float %2176, 4.000000e+00
  %3485 = fmul fast float %3484, %3477
  %3486 = fmul fast float %3485, %3474
  %3487 = fadd fast float %3480, %3463
  %3488 = fadd fast float %3483, %3464
  %3489 = fadd fast float %3486, %3465
  %3490 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  %3491 = call float @dx.op.unary.f32(i32 7, float %3488)  ; Saturate(value)
  %3492 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  br label %3493

; <label>:3493                                    ; preds = %3467, %3376
  %3494 = phi float [ %3490, %3467 ], [ %3463, %3376 ]
  %3495 = phi float [ %3491, %3467 ], [ %3464, %3376 ]
  %3496 = phi float [ %3492, %3467 ], [ %3465, %3376 ]
  %3497 = call float @dx.op.binary.f32(i32 35, float %3495, float %3496)  ; FMax(a,b)
  %3498 = call float @dx.op.binary.f32(i32 35, float %3494, float %3497)  ; FMax(a,b)
  %3499 = fsub fast float 1.000000e+00, %3498
  %3500 = fmul fast float %3499, %3435
  %3501 = fmul fast float %3499, %3436
  %3502 = fmul fast float %3499, %3437
  %3503 = call float @dx.op.dot3.f32(i32 55, float %2164, float %2165, float %2166, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3504 = fcmp fast ogt float %3503, 0x3E7FF19E20000000
  %3505 = fdiv fast float 1.000000e+00, %3503
  %3506 = select i1 %3504, float %3505, float 0.000000e+00
  %3507 = fmul fast float %3506, %2164
  %3508 = fmul fast float %3506, %2165
  %3509 = fmul fast float %3506, %2166
  %3510 = fadd fast float %3507, -1.000000e+00
  %3511 = fadd fast float %3508, -1.000000e+00
  %3512 = fadd fast float %3509, -1.000000e+00
  %3513 = fmul fast float %3510, 5.000000e-01
  %3514 = fmul fast float %3511, 5.000000e-01
  %3515 = fmul fast float %3512, 5.000000e-01
  %3516 = fadd fast float %3513, 1.000000e+00
  %3517 = fadd fast float %3514, 1.000000e+00
  %3518 = fadd fast float %3515, 1.000000e+00
  %3519 = call float @dx.op.binary.f32(i32 35, float %2178, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3520 = fdiv fast float %994, %3519
  %3521 = fcmp fast olt float %1586, 1.270000e+02
  %3522 = fcmp fast olt float %1587, 1.270000e+02
  %3523 = fcmp fast olt float %1588, 1.270000e+02
  %3524 = fmul fast float %1586, 0xBFF7154760000000
  %3525 = fmul fast float %3524, %3520
  %3526 = fmul fast float %1587, 0xBFF7154760000000
  %3527 = fmul fast float %3526, %3520
  %3528 = fmul fast float %1588, 0xBFF7154760000000
  %3529 = fmul fast float %3528, %3520
  %3530 = call float @dx.op.unary.f32(i32 21, float %3525)  ; Exp(value)
  %3531 = call float @dx.op.unary.f32(i32 21, float %3527)  ; Exp(value)
  %3532 = call float @dx.op.unary.f32(i32 21, float %3529)  ; Exp(value)
  %3533 = call float @dx.op.unary.f32(i32 7, float %3530)  ; Saturate(value)
  %3534 = call float @dx.op.unary.f32(i32 7, float %3531)  ; Saturate(value)
  %3535 = call float @dx.op.unary.f32(i32 7, float %3532)  ; Saturate(value)
  %3536 = select i1 %3521, float %3533, float 0.000000e+00
  %3537 = select i1 %3522, float %3534, float 0.000000e+00
  %3538 = select i1 %3523, float %3535, float 0.000000e+00
  %3539 = fmul fast float %3536, %3499
  %3540 = fmul fast float %3537, %3499
  %3541 = fmul fast float %3538, %3499
  %3542 = fadd fast float %3539, -1.000000e+00
  %3543 = fadd fast float %3540, -1.000000e+00
  %3544 = fadd fast float %3541, -1.000000e+00
  %3545 = fmul fast float %3494, %3439
  %3546 = fmul fast float %3495, %3440
  %3547 = fmul fast float %3496, %3441
  %3548 = fsub fast float 1.000000e+00, %2178
  %3549 = bitcast float %3548 to i32
  %3550 = sitofp i32 %3549 to float
  %3551 = fmul fast float %3550, 5.000000e+00
  %3552 = fadd fast float %3551, 0xC1EFBF8940000000
  %3553 = fptosi float %3552 to i32
  %3554 = bitcast i32 %3553 to float
  %3555 = fmul fast float %3554, %1537
  %3556 = fmul fast float %3435, %3555
  %3557 = fmul fast float %3556, %3499
  %3558 = fmul fast float %3557, %3516
  %3559 = fmul fast float %3436, %3555
  %3560 = fmul fast float %3559, %3499
  %3561 = fmul fast float %3560, %3517
  %3562 = fmul fast float %3437, %3555
  %3563 = fmul fast float %3562, %3499
  %3564 = fmul fast float %3563, %3518
  %3565 = fmul fast float %3500, %1558
  %3566 = fmul fast float %3501, %1558
  %3567 = fmul fast float %3502, %1558
  %3568 = fadd fast float %3545, %1539
  %3569 = fadd fast float %3568, %3558
  %3570 = fmul fast float %3569, %1558
  %3571 = fadd fast float %3546, %1540
  %3572 = fadd fast float %3571, %3561
  %3573 = fmul fast float %3572, %1558
  %3574 = fadd fast float %3547, %1541
  %3575 = fadd fast float %3574, %3564
  %3576 = fmul fast float %3575, %1558
  %3577 = bitcast i32 %2190 to float
  %3578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3579 = extractvalue %dx.types.CBufRet.f32 %3578, 3
  %3580 = fcmp fast oeq float %3579, 0.000000e+00
  br i1 %3580, label %4656, label %3581

; <label>:3581                                    ; preds = %3493
  %3582 = extractvalue %dx.types.CBufRet.f32 %3578, 0
  %3583 = extractvalue %dx.types.CBufRet.f32 %3578, 1
  %3584 = extractvalue %dx.types.CBufRet.f32 %3578, 2
  %3585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3586 = extractvalue %dx.types.CBufRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.CBufRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.CBufRet.f32 %3585, 2
  %3589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3590 = extractvalue %dx.types.CBufRet.f32 %3589, 0
  %3591 = extractvalue %dx.types.CBufRet.f32 %3589, 1
  %3592 = call float @dx.op.dot3.f32(i32 55, float %3586, float %3587, float %3588, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3593 = select i1 %223, float %3590, float %3586
  %3594 = select i1 %223, float %3592, float %3587
  %3595 = select i1 %223, float %3591, float %3588
  %3596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3596, 2
  %3598 = fmul fast float %3597, %65
  %3599 = fmul fast float %3597, %66
  %3600 = fmul fast float %3597, %67
  %3601 = fadd fast float %3598, %132
  %3602 = fadd fast float %3599, %133
  %3603 = fadd fast float %3600, %134
  %3604 = fcmp fast olt float %3579, 0.000000e+00
  br i1 %3604, label %4226, label %3605

; <label>:3605                                    ; preds = %3581
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.CBufRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.CBufRet.f32 %3606, 3
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.CBufRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.CBufRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.CBufRet.f32 %3611, 3
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.CBufRet.f32 %3616, 1
  %3619 = extractvalue %dx.types.CBufRet.f32 %3616, 2
  %3620 = extractvalue %dx.types.CBufRet.f32 %3616, 3
  %3621 = fmul fast float %3607, %3601
  %3622 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3608, float %3621)  ; FMad(a,b,c)
  %3623 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3609, float %3622)  ; FMad(a,b,c)
  %3624 = fadd fast float %3623, %3610
  %3625 = fmul fast float %3612, %3601
  %3626 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3613, float %3625)  ; FMad(a,b,c)
  %3627 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3614, float %3626)  ; FMad(a,b,c)
  %3628 = fadd fast float %3627, %3615
  %3629 = fmul fast float %3617, %3601
  %3630 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3618, float %3629)  ; FMad(a,b,c)
  %3631 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3619, float %3630)  ; FMad(a,b,c)
  %3632 = fadd fast float %3631, %3620
  %3633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3634 = extractvalue %dx.types.CBufRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.CBufRet.f32 %3633, 1
  %3636 = extractvalue %dx.types.CBufRet.f32 %3633, 3
  %3637 = fmul fast float %3636, %3624
  %3638 = fmul fast float %3636, %3628
  %3639 = fadd fast float %3637, %3634
  %3640 = fadd fast float %3638, %3635
  %3641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3642 = extractvalue %dx.types.CBufRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.CBufRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.CBufRet.f32 %3641, 3
  %3645 = fmul fast float %3644, %3624
  %3646 = fmul fast float %3644, %3628
  %3647 = fadd fast float %3645, %3642
  %3648 = fadd fast float %3646, %3643
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 1
  %3651 = fsub fast float %3650, %3632
  %3652 = extractvalue %dx.types.CBufRet.f32 %3649, 2
  %3653 = fmul fast float %3651, %3652
  %3654 = fsub fast float 1.000000e+00, %3653
  %3655 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3641, 2
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 2
  %3659 = fadd fast float %3658, %3656
  %3660 = fcmp fast ogt float %3659, 0.000000e+00
  br i1 %3660, label %3661, label %3685

; <label>:3661                                    ; preds = %3605
  %3662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3663 = extractvalue %dx.types.CBufRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.CBufRet.f32 %3662, 1
  %3665 = fsub fast float %3647, %3663
  %3666 = fsub fast float %3648, %3664
  %3667 = fcmp fast olt float %3665, 0.000000e+00
  %3668 = fcmp fast olt float %3666, 0.000000e+00
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.CBufRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.CBufRet.f32 %3669, 2
  %3673 = extractvalue %dx.types.CBufRet.f32 %3669, 3
  %3674 = select i1 %3667, float %3670, float %3672
  %3675 = select i1 %3668, float %3671, float %3673
  %3676 = fmul fast float %3674, %3665
  %3677 = fmul fast float %3675, %3666
  %3678 = call float @dx.op.unary.f32(i32 6, float %3676)  ; FAbs(value)
  %3679 = call float @dx.op.unary.f32(i32 6, float %3677)  ; FAbs(value)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %3681 = call float @dx.op.binary.f32(i32 35, float %3678, float %3679)  ; FMax(a,b)
  %3682 = fsub fast float %3680, %3681
  %3683 = call float @dx.op.unary.f32(i32 7, float %3682)  ; Saturate(value)
  %3684 = fmul fast float %3683, %3655
  br label %3685

; <label>:3685                                    ; preds = %3661, %3605
  %3686 = phi float [ %3684, %3661 ], [ 0.000000e+00, %3605 ]
  %3687 = extractvalue %dx.types.CBufRet.f32 %3633, 2
  %3688 = extractvalue %dx.types.CBufRet.f32 %3657, 1
  %3689 = fadd fast float %3688, %3687
  %3690 = fcmp fast ogt float %3689, 0.000000e+00
  %3691 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  br i1 %3690, label %3692, label %3715

; <label>:3692                                    ; preds = %3685
  %3693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3694 = extractvalue %dx.types.CBufRet.f32 %3693, 0
  %3695 = extractvalue %dx.types.CBufRet.f32 %3693, 1
  %3696 = fsub fast float %3639, %3694
  %3697 = fsub fast float %3640, %3695
  %3698 = fcmp fast olt float %3696, 0.000000e+00
  %3699 = fcmp fast olt float %3697, 0.000000e+00
  %3700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3701 = extractvalue %dx.types.CBufRet.f32 %3700, 0
  %3702 = extractvalue %dx.types.CBufRet.f32 %3700, 1
  %3703 = extractvalue %dx.types.CBufRet.f32 %3700, 2
  %3704 = extractvalue %dx.types.CBufRet.f32 %3700, 3
  %3705 = select i1 %3698, float %3701, float %3703
  %3706 = select i1 %3699, float %3702, float %3704
  %3707 = fmul fast float %3705, %3696
  %3708 = fmul fast float %3706, %3697
  %3709 = call float @dx.op.unary.f32(i32 6, float %3707)  ; FAbs(value)
  %3710 = call float @dx.op.unary.f32(i32 6, float %3708)  ; FAbs(value)
  %3711 = call float @dx.op.binary.f32(i32 35, float %3709, float %3710)  ; FMax(a,b)
  %3712 = fsub fast float %3691, %3711
  %3713 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3714 = fmul fast float %3713, %3655
  br label %3715

; <label>:3715                                    ; preds = %3692, %3685
  %3716 = phi float [ %3714, %3692 ], [ 0.000000e+00, %3685 ]
  %3717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.f32 %3717, 1
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.CBufRet.f32 %3720, 1
  %3723 = fsub fast float %3624, %3721
  %3724 = fsub fast float %3628, %3722
  %3725 = fcmp fast olt float %3723, 0.000000e+00
  %3726 = fcmp fast olt float %3724, 0.000000e+00
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.CBufRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3731 = extractvalue %dx.types.CBufRet.f32 %3727, 3
  %3732 = select i1 %3725, float %3728, float %3730
  %3733 = select i1 %3726, float %3729, float %3731
  %3734 = fmul fast float %3732, %3723
  %3735 = fmul fast float %3733, %3724
  %3736 = call float @dx.op.unary.f32(i32 6, float %3734)  ; FAbs(value)
  %3737 = call float @dx.op.unary.f32(i32 6, float %3735)  ; FAbs(value)
  %3738 = call float @dx.op.binary.f32(i32 35, float %3736, float %3737)  ; FMax(a,b)
  %3739 = fsub fast float %3691, %3738
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = call float @dx.op.binary.f32(i32 36, float %3740, float %3719)  ; FMin(a,b)
  %3742 = fmul fast float %3741, %3655
  %3743 = fsub fast float %3716, %3742
  %3744 = fsub fast float %3686, %3716
  %3745 = fsub fast float %3744, %3742
  %3746 = call float @dx.op.binary.f32(i32 35, float %3716, float %3686)  ; FMax(a,b)
  %3747 = call float @dx.op.binary.f32(i32 35, float %3742, float %3746)  ; FMax(a,b)
  %3748 = fcmp fast olt float %3747, 1.000000e+00
  br i1 %3748, label %3749, label %4147, !dx.controlflow.hints !99

; <label>:3749                                    ; preds = %3715
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = fcmp fast une float %3751, 0.000000e+00
  br i1 %3752, label %3753, label %4147, !dx.controlflow.hints !100

; <label>:3753                                    ; preds = %3749
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 0
  %3756 = extractvalue %dx.types.CBufRet.f32 %3754, 1
  %3757 = extractvalue %dx.types.CBufRet.f32 %3754, 2
  %3758 = extractvalue %dx.types.CBufRet.f32 %3754, 3
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 0
  %3761 = extractvalue %dx.types.CBufRet.f32 %3759, 1
  %3762 = extractvalue %dx.types.CBufRet.f32 %3759, 2
  %3763 = extractvalue %dx.types.CBufRet.f32 %3759, 3
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.CBufRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.CBufRet.f32 %3764, 3
  %3769 = fmul fast float %3755, %3601
  %3770 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3756, float %3769)  ; FMad(a,b,c)
  %3771 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3757, float %3770)  ; FMad(a,b,c)
  %3772 = fadd fast float %3771, %3758
  %3773 = fmul fast float %3760, %3601
  %3774 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3761, float %3773)  ; FMad(a,b,c)
  %3775 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3762, float %3774)  ; FMad(a,b,c)
  %3776 = fadd fast float %3775, %3763
  %3777 = fmul fast float %3765, %3601
  %3778 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3766, float %3777)  ; FMad(a,b,c)
  %3779 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3767, float %3778)  ; FMad(a,b,c)
  %3780 = fadd fast float %3779, %3768
  %3781 = fcmp fast oge float %3772, 1.000000e+00
  %3782 = fcmp fast oge float %3776, 1.000000e+00
  %3783 = or i1 %3781, %3782
  %3784 = fcmp fast olt float %3772, 0.000000e+00
  %3785 = fcmp fast olt float %3776, 0.000000e+00
  %3786 = or i1 %3784, %3785
  %3787 = or i1 %3783, %3786
  br i1 %3787, label %4147, label %3788, !dx.controlflow.hints !101

; <label>:3788                                    ; preds = %3753
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.CBufRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.CBufRet.f32 %3789, 2
  %3793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.i32 %3793, 2
  %3795 = uitofp i32 %3794 to float
  %3796 = extractvalue %dx.types.CBufRet.i32 %3793, 3
  %3797 = uitofp i32 %3796 to float
  %3798 = extractvalue %dx.types.CBufRet.f32 %3789, 3
  %3799 = fmul fast float %3798, 2.000000e+00
  %3800 = fsub fast float %3772, %3790
  %3801 = fsub fast float %3776, %3791
  %3802 = fmul fast float %3799, %3800
  %3803 = fmul fast float %3799, %3801
  %3804 = fdiv fast float 1.000000e+00, %3584
  %3805 = fmul fast float %3803, %3804
  %3806 = call float @dx.op.unary.f32(i32 6, float %3805)  ; FAbs(value)
  %3807 = fmul fast float %3792, %3603
  %3808 = fmul fast float %3807, %3799
  %3809 = call float @dx.op.unary.f32(i32 6, float %3808)  ; FAbs(value)
  %3810 = call float @dx.op.unary.f32(i32 6, float %3802)  ; FAbs(value)
  %3811 = call float @dx.op.binary.f32(i32 35, float %3809, float %3806)  ; FMax(a,b)
  %3812 = call float @dx.op.binary.f32(i32 35, float %3810, float %3811)  ; FMax(a,b)
  %3813 = fmul fast float %3812, 2.000000e+00
  %3814 = call float @dx.op.unary.f32(i32 23, float %3813)  ; Log(value)
  %3815 = call float @dx.op.binary.f32(i32 35, float %3814, float %3795)  ; FMax(a,b)
  %3816 = call float @dx.op.unary.f32(i32 22, float %3815)  ; Frc(value)
  %3817 = fadd fast float %3816, 0xBFEA666660000000
  %3818 = fmul fast float %3817, 8.000000e+00
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3820 = call float @dx.op.unary.f32(i32 27, float %3815)  ; Round_ni(value)
  %3821 = fadd fast float %3820, %3819
  %3822 = call float @dx.op.binary.f32(i32 36, float %3821, float %3797)  ; FMin(a,b)
  %3823 = call float @dx.op.unary.f32(i32 27, float %3822)  ; Round_ni(value)
  %3824 = fsub fast float -0.000000e+00, %3823
  %3825 = call float @dx.op.unary.f32(i32 21, float %3824)  ; Exp(value)
  %3826 = fmul fast float %3825, %3799
  %3827 = fmul fast float %3826, %3772
  %3828 = fmul fast float %3826, %3776
  %3829 = fmul fast float %3827, 2.500000e-01
  %3830 = fmul fast float %3828, 2.500000e-01
  %3831 = fadd fast float %3829, 5.000000e-01
  %3832 = fadd fast float %3830, 5.000000e-01
  %3833 = fsub fast float %3797, %3795
  %3834 = fptoui float %3833 to i32
  %3835 = add i32 %3834, 320
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %3835)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.CBufRet.f32 %3836, 1
  %3839 = fcmp fast une float %3822, %3797
  %3840 = fsub fast float %3772, %3837
  %3841 = fsub fast float %3776, %3838
  %3842 = call float @dx.op.unary.f32(i32 6, float %3840)  ; FAbs(value)
  %3843 = call float @dx.op.unary.f32(i32 6, float %3841)  ; FAbs(value)
  %3844 = fmul fast float %3842, %3826
  %3845 = fmul fast float %3843, %3826
  %3846 = fcmp fast olt float %3844, 1.000000e+00
  %3847 = fcmp fast olt float %3845, 1.000000e+00
  %3848 = and i1 %3846, %3847
  %3849 = or i1 %3839, %3848
  br i1 %3849, label %3850, label %4147, !dx.controlflow.hints !102

; <label>:3850                                    ; preds = %3788
  %3851 = fmul fast float %3828, 5.000000e-01
  %3852 = fmul fast float %3827, 5.000000e-01
  %3853 = fadd fast float %3851, 5.000000e-01
  %3854 = fadd fast float %3852, 5.000000e-01
  %3855 = sitofp i32 %3794 to float
  %3856 = fsub fast float %3822, %3855
  %3857 = call float @dx.op.unary.f32(i32 27, float %3856)  ; Round_ni(value)
  %3858 = call float @dx.op.unary.f32(i32 22, float %3822)  ; Frc(value)
  %3859 = call float @dx.op.unary.f32(i32 22, float %3854)  ; Frc(value)
  %3860 = call float @dx.op.unary.f32(i32 22, float %3853)  ; Frc(value)
  %3861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %3859, float %3860, float %3857, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3865 = extractvalue %dx.types.ResRet.f32 %3861, 3
  %3866 = fcmp fast ogt float %3858, 0.000000e+00
  br i1 %3866, label %3867, label %3888, !dx.controlflow.hints !103

; <label>:3867                                    ; preds = %3850
  %3868 = fadd fast float %3857, 1.000000e+00
  %3869 = call float @dx.op.unary.f32(i32 22, float %3831)  ; Frc(value)
  %3870 = call float @dx.op.unary.f32(i32 22, float %3832)  ; Frc(value)
  %3871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %3869, float %3870, float %3868, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.ResRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.ResRet.f32 %3871, 2
  %3875 = extractvalue %dx.types.ResRet.f32 %3871, 3
  %3876 = fsub fast float %3872, %3862
  %3877 = fsub fast float %3873, %3863
  %3878 = fsub fast float %3874, %3864
  %3879 = fsub fast float %3875, %3865
  %3880 = fmul fast float %3876, %3858
  %3881 = fmul fast float %3877, %3858
  %3882 = fmul fast float %3878, %3858
  %3883 = fmul fast float %3879, %3858
  %3884 = fadd fast float %3880, %3862
  %3885 = fadd fast float %3881, %3863
  %3886 = fadd fast float %3882, %3864
  %3887 = fadd fast float %3883, %3865
  br label %3888

; <label>:3888                                    ; preds = %3867, %3850
  %3889 = phi float [ %3884, %3867 ], [ %3862, %3850 ]
  %3890 = phi float [ %3885, %3867 ], [ %3863, %3850 ]
  %3891 = phi float [ %3886, %3867 ], [ %3864, %3850 ]
  %3892 = phi float [ %3887, %3867 ], [ %3865, %3850 ]
  %3893 = fadd fast float %3889, -5.000000e-01
  %3894 = fadd fast float %3891, -5.000000e-01
  %3895 = fmul fast float %3893, 0xBFD5555560000000
  %3896 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3894, float %3895)  ; FMad(a,b,c)
  %3897 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3890, float 0.000000e+00)  ; FMad(a,b,c)
  %3898 = fadd fast float %3897, %3892
  %3899 = fmul fast float %3893, -7.500000e-01
  %3900 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3894, float %3899)  ; FMad(a,b,c)
  %3901 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3890, float 0.000000e+00)  ; FMad(a,b,c)
  %3902 = fadd fast float %3901, %3892
  %3903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3903, 0
  %3905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3906 = extractvalue %dx.types.CBufRet.f32 %3905, 0
  %3907 = extractvalue %dx.types.CBufRet.f32 %3905, 1
  %3908 = extractvalue %dx.types.CBufRet.f32 %3905, 2
  %3909 = extractvalue %dx.types.CBufRet.f32 %3905, 3
  %3910 = fsub fast float %3906, %3896
  %3911 = fsub fast float %3907, %3898
  %3912 = fsub fast float %3908, %3900
  %3913 = fsub fast float %3909, %3902
  %3914 = fmul fast float %3910, %3904
  %3915 = fmul fast float %3911, %3904
  %3916 = fmul fast float %3912, %3904
  %3917 = fmul fast float %3913, %3904
  %3918 = fadd fast float %3914, %3896
  %3919 = fadd fast float %3915, %3898
  %3920 = fadd fast float %3916, %3900
  %3921 = fadd fast float %3917, %3902
  %3922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3923 = extractvalue %dx.types.ResRet.i32 %3922, 0
  %3924 = and i32 %3923, 536870911
  %3925 = uitofp i32 %3924 to float
  %3926 = fmul fast float %3925, %3772
  %3927 = fmul fast float %3925, %3776
  %3928 = fptoui float %3926 to i32
  %3929 = fptoui float %3927 to i32
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = and i32 %3931, 31
  %3933 = lshr i32 %3928, %3932
  %3934 = lshr i32 %3929, %3932
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = and i32 %3936, 31
  %3938 = shl i32 1, %3937
  %3939 = call i32 @dx.op.binary.i32(i32 40, i32 %3938, i32 4)  ; UMin(a,b)
  %3940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.i32 %3940, 0
  %3942 = extractvalue %dx.types.ResRet.i32 %3940, 1
  %3943 = icmp eq i32 %3939, 0
  br i1 %3943, label %3985, label %3944

; <label>:3944                                    ; preds = %3888
  br label %3945

; <label>:3945                                    ; preds = %3973, %3944
  %3946 = phi i32 [ %3976, %3973 ], [ 0, %3944 ]
  %3947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.i32 %3947, 0
  %3949 = lshr i32 %3948, 16
  %3950 = and i32 %3949, 31
  %3951 = shl i32 %3934, %3950
  %3952 = add i32 %3951, %3933
  %3953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.i32 %3953, 0
  %3955 = and i32 %3954, 31
  %3956 = shl i32 %3952, %3955
  %3957 = add i32 %3956, %3946
  %3958 = shl i32 %3957, 2
  %3959 = add i32 %3958, 32
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = icmp slt i32 %3961, 0
  %3963 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3946
  %3964 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3946
  %3965 = bitcast float* %3963 to i32*
  %3966 = bitcast float* %3964 to i32*
  br i1 %3962, label %3967, label %3973

; <label>:3967                                    ; preds = %3945
  %3968 = and i32 %3961, 1073741823
  %3969 = add nuw nsw i32 %3968, 20
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = extractvalue %dx.types.ResRet.i32 %3970, 1
  br label %3973

; <label>:3973                                    ; preds = %3967, %3945
  %3974 = phi i32 [ %3971, %3967 ], [ %3941, %3945 ]
  %3975 = phi i32 [ %3972, %3967 ], [ %3942, %3945 ]
  store i32 %3974, i32* %3965, align 4
  store i32 %3975, i32* %3966, align 4
  %3976 = add nuw i32 %3946, 1
  %3977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.i32 %3977, 2
  %3979 = icmp eq i32 %3978, 0
  %3980 = icmp ugt i32 %3961, -1073741825
  %3981 = and i1 %3980, %3979
  %3982 = icmp ult i32 %3976, %3939
  %3983 = and i1 %3981, %3982
  br i1 %3983, label %3945, label %3984

; <label>:3984                                    ; preds = %3973
  br label %3985

; <label>:3985                                    ; preds = %3984, %3888
  %3986 = phi i32 [ 0, %3888 ], [ %3976, %3984 ]
  %3987 = extractvalue %dx.types.CBufRet.f32 %3750, 2
  %3988 = fptoui float %3987 to i32
  %3989 = icmp eq i32 %3988, 0
  br i1 %3989, label %4041, label %3990

; <label>:3990                                    ; preds = %3985
  br label %3991

; <label>:3991                                    ; preds = %4036, %3990
  %3992 = phi i32 [ %4037, %4036 ], [ %3986, %3990 ]
  %3993 = phi i32 [ %4038, %4036 ], [ 0, %3990 ]
  %3994 = lshr i32 %3993, 2
  %3995 = and i32 %3993, 3
  %3996 = add nuw nsw i32 %3994, 83
  %3997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %3996)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.i32 %3997, 0
  %3999 = extractvalue %dx.types.CBufRet.i32 %3997, 1
  %4000 = extractvalue %dx.types.CBufRet.i32 %3997, 2
  %4001 = extractvalue %dx.types.CBufRet.i32 %3997, 3
  %4002 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %3998, i32* %4002, align 4
  %4003 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %3999, i32* %4003, align 4
  %4004 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %4000, i32* %4004, align 4
  %4005 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %4001, i32* %4005, align 4
  %4006 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %3995
  %4007 = load i32, i32* %4006, align 4, !tbaa !104, !noalias !108
  %4008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.i32 %4008, 0
  %4010 = lshr i32 %4009, 16
  %4011 = and i32 %4010, 31
  %4012 = shl i32 %3934, %4011
  %4013 = add i32 %4012, %3933
  %4014 = shl i32 %4013, 2
  %4015 = add i32 %4014, %4007
  %4016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4015, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.i32 %4016, 0
  %4018 = icmp eq i32 %4017, 0
  br i1 %4018, label %4036, label %4019

; <label>:4019                                    ; preds = %3991
  %4020 = icmp slt i32 %4017, 0
  %4021 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3992
  %4022 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3992
  %4023 = bitcast float* %4021 to i32*
  %4024 = bitcast float* %4022 to i32*
  br i1 %4020, label %4025, label %4032

; <label>:4025                                    ; preds = %4019
  %4026 = and i32 %4017, 1073741823
  %4027 = add i32 %4007, 20
  %4028 = add i32 %4027, %4026
  %4029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.i32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.i32 %4029, 1
  br label %4032

; <label>:4032                                    ; preds = %4025, %4019
  %4033 = phi i32 [ %4030, %4025 ], [ %3941, %4019 ]
  %4034 = phi i32 [ %4031, %4025 ], [ %3942, %4019 ]
  store i32 %4033, i32* %4023, align 4
  store i32 %4034, i32* %4024, align 4
  %4035 = add i32 %3992, 1
  br label %4036

; <label>:4036                                    ; preds = %4032, %3991
  %4037 = phi i32 [ %3992, %3991 ], [ %4035, %4032 ]
  %4038 = add nuw i32 %3993, 1
  %4039 = icmp eq i32 %4038, %3988
  br i1 %4039, label %4040, label %3991

; <label>:4040                                    ; preds = %4036
  br label %4041

; <label>:4041                                    ; preds = %4040, %3985
  %4042 = phi i32 [ %3986, %3985 ], [ %4037, %4040 ]
  %4043 = icmp eq i32 %4042, 1
  %4044 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 0
  %4045 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  br i1 %4043, label %4046, label %4049

; <label>:4046                                    ; preds = %4041
  %4047 = load float, float* %4044, align 4
  %4048 = load float, float* %4045, align 4
  br label %4076

; <label>:4049                                    ; preds = %4041
  %4050 = load float, float* %4044, align 4
  %4051 = load float, float* %4045, align 4
  %4052 = fdiv fast float 1.000000e+00, %4051
  %4053 = fsub fast float %4050, %4052
  %4054 = icmp ugt i32 %4042, 1
  br i1 %4054, label %4055, label %4071

; <label>:4055                                    ; preds = %4049
  br label %4056

; <label>:4056                                    ; preds = %4056, %4055
  %4057 = phi float [ %4066, %4056 ], [ %4053, %4055 ]
  %4058 = phi float [ %4067, %4056 ], [ %4050, %4055 ]
  %4059 = phi i32 [ %4068, %4056 ], [ 1, %4055 ]
  %4060 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %4059
  %4061 = load float, float* %4060, align 4
  %4062 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %4059
  %4063 = load float, float* %4062, align 4
  %4064 = fdiv fast float 1.000000e+00, %4063
  %4065 = fsub fast float %4061, %4064
  %4066 = call float @dx.op.binary.f32(i32 36, float %4057, float %4065)  ; FMin(a,b)
  %4067 = call float @dx.op.binary.f32(i32 35, float %4058, float %4061)  ; FMax(a,b)
  %4068 = add nuw i32 %4059, 1
  %4069 = icmp eq i32 %4068, %4042
  br i1 %4069, label %4070, label %4056

; <label>:4070                                    ; preds = %4056
  br label %4071

; <label>:4071                                    ; preds = %4070, %4049
  %4072 = phi float [ %4053, %4049 ], [ %4066, %4070 ]
  %4073 = phi float [ %4050, %4049 ], [ %4067, %4070 ]
  %4074 = fsub fast float %4073, %4072
  %4075 = fdiv fast float 1.000000e+00, %4074
  br label %4076

; <label>:4076                                    ; preds = %4071, %4046
  %4077 = phi float [ %4047, %4046 ], [ %4073, %4071 ]
  %4078 = phi float [ %4048, %4046 ], [ %4075, %4071 ]
  %4079 = fadd fast float %3780, %4077
  %4080 = fmul fast float %4079, %4078
  %4081 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4082 = fmul fast float %4081, 2.000000e+00
  %4083 = fsub fast float 1.000000e+00, %4082
  %4084 = fmul fast float %3918, %3918
  %4085 = fsub fast float %3919, %4084
  %4086 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4085)  ; FMax(a,b)
  %4087 = fdiv fast float 1.000000e+00, %4086
  %4088 = fmul fast float %3919, %3918
  %4089 = fsub fast float %3920, %4088
  %4090 = fsub fast float %4083, %3918
  %4091 = fmul fast float %4083, %4083
  %4092 = fsub fast float %4091, %3919
  %4093 = fmul fast float %4087, %4089
  %4094 = fmul fast float %4093, %4090
  %4095 = fsub fast float %4092, %4094
  %4096 = fmul fast float %3919, %3919
  %4097 = fsub fast float %3921, %4096
  %4098 = fmul fast float %4089, %4089
  %4099 = fmul fast float %4098, %4087
  %4100 = fsub fast float %4097, %4099
  %4101 = fdiv fast float %4095, %4100
  %4102 = fmul fast float %4101, %4089
  %4103 = fsub fast float %4090, %4102
  %4104 = fmul fast float %4103, %4087
  %4105 = fmul fast float %4104, %3918
  %4106 = fsub fast float 1.000000e+00, %4105
  %4107 = fmul fast float %4101, %3919
  %4108 = fsub fast float %4106, %4107
  %4109 = fmul fast float %4104, %4104
  %4110 = fmul fast float %4101, 4.000000e+00
  %4111 = fmul fast float %4110, %4108
  %4112 = fsub fast float %4109, %4111
  %4113 = call float @dx.op.unary.f32(i32 24, float %4112)  ; Sqrt(value)
  %4114 = fcmp fast oge float %4104, 0.000000e+00
  %4115 = fsub fast float -0.000000e+00, %4113
  %4116 = select i1 %4114, float %4115, float %4113
  %4117 = fsub fast float %4116, %4104
  %4118 = fdiv fast float %4117, %4101
  %4119 = fdiv fast float %4108, %4117
  %4120 = fmul fast float %4118, 5.000000e-01
  %4121 = fmul fast float %4119, 2.000000e+00
  %4122 = select i1 %4114, float %4120, float %4121
  %4123 = select i1 %4114, float %4121, float %4120
  %4124 = call float @dx.op.binary.f32(i32 35, float %4122, float %4123)  ; FMax(a,b)
  %4125 = call float @dx.op.binary.f32(i32 36, float %4122, float %4123)  ; FMin(a,b)
  %4126 = fcmp fast ogt float %4083, %4124
  %4127 = fsub fast float %4083, %4125
  %4128 = fsub fast float %4083, %4124
  %4129 = fsub fast float %4124, %4125
  %4130 = select i1 %4126, float %4128, float %4129
  %4131 = fmul float %4127, %4130
  %4132 = select i1 %4126, float %4125, float %4083
  %4133 = fcmp fast ogt float %4083, %4125
  %4134 = fmul fast float %4132, %4124
  %4135 = fadd fast float %4132, %4124
  %4136 = fmul fast float %4135, %3918
  %4137 = fadd fast float %4134, %3919
  %4138 = fsub fast float %4137, %4136
  %4139 = fdiv fast float %4138, %4131
  %4140 = select i1 %4133, float %4139, float 0.000000e+00
  %4141 = fsub fast float 1.000000e+00, %4140
  %4142 = select i1 %4126, float %4141, float %4140
  %4143 = call float @dx.op.unary.f32(i32 7, float %4142)  ; Saturate(value)
  %4144 = extractvalue %dx.types.CBufRet.f32 %3903, 3
  %4145 = fmul fast float %4144, %4143
  %4146 = fsub fast float 1.000000e+00, %4145
  br label %4147

; <label>:4147                                    ; preds = %4076, %3788, %3753, %3749, %3715
  %4148 = phi float [ 1.000000e+00, %3715 ], [ %4146, %4076 ], [ 1.000000e+00, %3753 ], [ 1.000000e+00, %3788 ], [ 1.000000e+00, %3749 ]
  %4149 = fcmp fast ogt float %3745, 0.000000e+00
  br i1 %4149, label %4150, label %4156, !dx.controlflow.hints !117

; <label>:4150                                    ; preds = %4147
  %4151 = fadd fast float %3658, %3632
  %4152 = call float @dx.op.binary.f32(i32 35, float %4151, float 0.000000e+00)  ; FMax(a,b)
  %4153 = fadd fast float %4152, 0x3F10000000000000
  %4154 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %3647, float %3648, float undef, float undef, i32 0, i32 0, i32 undef, float %4153)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 0
  br label %4156

; <label>:4156                                    ; preds = %4150, %4147
  %4157 = phi float [ %4155, %4150 ], [ 1.000000e+00, %4147 ]
  %4158 = fcmp fast ogt float %3743, 0.000000e+00
  br i1 %4158, label %4159, label %4165, !dx.controlflow.hints !118

; <label>:4159                                    ; preds = %4156
  %4160 = fadd fast float %3688, %3632
  %4161 = call float @dx.op.binary.f32(i32 35, float %4160, float 0.000000e+00)  ; FMax(a,b)
  %4162 = fadd fast float %4161, 0x3F10000000000000
  %4163 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %3639, float %3640, float undef, float undef, i32 0, i32 0, i32 undef, float %4162)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  br label %4165

; <label>:4165                                    ; preds = %4159, %4156
  %4166 = phi float [ %4164, %4159 ], [ 1.000000e+00, %4156 ]
  %4167 = fcmp fast ogt float %3742, 0.000000e+00
  br i1 %4167, label %4168, label %4175, !dx.controlflow.hints !119

; <label>:4168                                    ; preds = %4165
  %4169 = extractvalue %dx.types.CBufRet.f32 %3657, 0
  %4170 = fadd fast float %4169, %3632
  %4171 = call float @dx.op.binary.f32(i32 35, float %4170, float 0.000000e+00)  ; FMax(a,b)
  %4172 = fadd fast float %4171, 0x3F10000000000000
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %3624, float %3628, float undef, float undef, i32 0, i32 0, i32 undef, float %4172)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  br label %4175

; <label>:4175                                    ; preds = %4168, %4165
  %4176 = phi float [ %4174, %4168 ], [ 1.000000e+00, %4165 ]
  %4177 = fsub fast float %4157, %4148
  %4178 = fmul fast float %4177, %3686
  %4179 = fadd fast float %4178, %4148
  %4180 = fsub fast float %4166, %4179
  %4181 = fmul fast float %4180, %3716
  %4182 = fadd fast float %4181, %4179
  %4183 = fsub fast float %4176, %4182
  %4184 = fmul fast float %4183, %3742
  %4185 = fadd fast float %4184, %4182
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4188 = fcmp fast ogt float %4187, 0.000000e+00
  br i1 %4188, label %4189, label %4226, !dx.controlflow.hints !120

; <label>:4189                                    ; preds = %4175
  %4190 = fcmp fast ugt float %4187, 0.000000e+00
  br i1 %4190, label %4191, label %4223

; <label>:4191                                    ; preds = %4189
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.CBufRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.CBufRet.f32 %4192, 2
  %4196 = extractvalue %dx.types.CBufRet.f32 %4192, 3
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.CBufRet.f32 %4197, 1
  %4200 = extractvalue %dx.types.CBufRet.f32 %4197, 2
  %4201 = extractvalue %dx.types.CBufRet.f32 %4197, 3
  %4202 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4203 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4204 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %4205 = fadd fast float %2192, %3601
  %4206 = fadd fast float %2193, %3602
  %4207 = fadd fast float %4204, %3603
  %4208 = fmul fast float %4205, %4193
  %4209 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4206, float %4208)  ; FMad(a,b,c)
  %4210 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4207, float %4209)  ; FMad(a,b,c)
  %4211 = fadd fast float %4210, %4196
  %4212 = fmul fast float %4205, %4198
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4206, float %4212)  ; FMad(a,b,c)
  %4214 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4207, float %4213)  ; FMad(a,b,c)
  %4215 = fadd fast float %4214, %4201
  %4216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %4211, float %4215, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = fmul fast float %4217, %4203
  %4219 = fadd fast float %4218, %4202
  %4220 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4221 = fmul fast float %4220, %4187
  %4222 = fsub fast float 1.000000e+00, %4221
  br label %4223

; <label>:4223                                    ; preds = %4191, %4189
  %4224 = phi float [ %4222, %4191 ], [ 1.000000e+00, %4189 ]
  %4225 = fmul fast float %4224, %4185
  br label %4226

; <label>:4226                                    ; preds = %4223, %4175, %3581
  %4227 = phi float [ 1.000000e+00, %3581 ], [ %4225, %4223 ], [ %4185, %4175 ]
  %4228 = call float @dx.op.binary.f32(i32 36, float %4227, float %4227)  ; FMin(a,b)
  %4229 = call float @dx.op.binary.f32(i32 36, float %4227, float %4228)  ; FMin(a,b)
  %4230 = fcmp fast ogt float %4229, 0.000000e+00
  br i1 %4230, label %4231, label %4388, !dx.controlflow.hints !121

; <label>:4231                                    ; preds = %4226
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 0
  %4234 = extractvalue %dx.types.CBufRet.f32 %4232, 1
  %4235 = extractvalue %dx.types.CBufRet.f32 %4232, 2
  %4236 = extractvalue %dx.types.CBufRet.f32 %4232, 3
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 0
  %4239 = extractvalue %dx.types.CBufRet.f32 %4237, 1
  %4240 = extractvalue %dx.types.CBufRet.f32 %4237, 2
  %4241 = extractvalue %dx.types.CBufRet.f32 %4237, 3
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4245 = extractvalue %dx.types.CBufRet.f32 %4242, 2
  %4246 = extractvalue %dx.types.CBufRet.f32 %4242, 3
  %4247 = fmul fast float %4233, %3601
  %4248 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %4234, float %4247)  ; FMad(a,b,c)
  %4249 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %4235, float %4248)  ; FMad(a,b,c)
  %4250 = fadd fast float %4249, %4236
  %4251 = fmul fast float %4238, %3601
  %4252 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %4239, float %4251)  ; FMad(a,b,c)
  %4253 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %4240, float %4252)  ; FMad(a,b,c)
  %4254 = fadd fast float %4253, %4241
  %4255 = fmul fast float %4243, %3601
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %4244, float %4255)  ; FMad(a,b,c)
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %4245, float %4256)  ; FMad(a,b,c)
  %4258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.CBufRet.f32 %4258, 1
  %4261 = extractvalue %dx.types.CBufRet.f32 %4258, 3
  %4262 = fmul fast float %4261, %4250
  %4263 = fmul fast float %4261, %4254
  %4264 = fadd fast float %4262, %4259
  %4265 = fadd fast float %4263, %4260
  %4266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4267 = extractvalue %dx.types.CBufRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.CBufRet.f32 %4266, 1
  %4269 = fsub fast float %4264, %4267
  %4270 = fsub fast float %4265, %4268
  %4271 = fcmp fast olt float %4269, 0.000000e+00
  %4272 = fcmp fast olt float %4270, 0.000000e+00
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 0
  %4275 = extractvalue %dx.types.CBufRet.f32 %4273, 1
  %4276 = extractvalue %dx.types.CBufRet.f32 %4273, 2
  %4277 = extractvalue %dx.types.CBufRet.f32 %4273, 3
  %4278 = select i1 %4271, float %4274, float %4276
  %4279 = select i1 %4272, float %4275, float %4277
  %4280 = fmul fast float %4278, %4269
  %4281 = fmul fast float %4279, %4270
  %4282 = call float @dx.op.unary.f32(i32 6, float %4280)  ; FAbs(value)
  %4283 = call float @dx.op.unary.f32(i32 6, float %4281)  ; FAbs(value)
  %4284 = extractvalue %dx.types.CBufRet.f32 %3596, 0
  %4285 = call float @dx.op.binary.f32(i32 35, float %4282, float %4283)  ; FMax(a,b)
  %4286 = fsub fast float %4284, %4285
  %4287 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4288 = fcmp fast ogt float %4287, 0.000000e+00
  br i1 %4288, label %4289, label %4330, !dx.controlflow.hints !122

; <label>:4289                                    ; preds = %4231
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %4264, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 1
  %4292 = fcmp fast ogt float %4291, 0.000000e+00
  br i1 %4292, label %4293, label %4325

; <label>:4293                                    ; preds = %4289
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %4264, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = extractvalue %dx.types.ResRet.f32 %4294, 1
  %4297 = extractvalue %dx.types.ResRet.f32 %4294, 2
  %4298 = extractvalue %dx.types.ResRet.f32 %4294, 3
  %4299 = fsub fast float 1.000000e+00, %4246
  %4300 = fsub fast float %4299, %4257
  %4301 = fmul fast float %4300, 0x400921FB60000000
  %4302 = fadd fast float %4301, 0x3FF921FB60000000
  %4303 = call float @dx.op.unary.f32(i32 13, float %4302)  ; Sin(value)
  %4304 = fadd fast float %4303, -1.000000e+00
  %4305 = fmul fast float %4304, 0x3FD45F3060000000
  %4306 = fmul fast float %4300, 0x401921FB60000000
  %4307 = fadd fast float %4306, 0x400921FB60000000
  %4308 = call float @dx.op.unary.f32(i32 13, float %4307)  ; Sin(value)
  %4309 = fadd fast float %4308, 0x3E7777A5C0000000
  %4310 = fmul fast float %4309, 0x3FC45F3060000000
  %4311 = fmul fast float %4300, 0x4022D97C80000000
  %4312 = fadd fast float %4311, 0x4012D97C80000000
  %4313 = call float @dx.op.unary.f32(i32 13, float %4312)  ; Sin(value)
  %4314 = fadd fast float %4313, 1.000000e+00
  %4315 = fmul fast float %4314, 0x3FBB2995E0000000
  %4316 = fmul fast float %4300, 0x402921FB60000000
  %4317 = fadd fast float %4316, 0x401921FB60000000
  %4318 = call float @dx.op.unary.f32(i32 13, float %4317)  ; Sin(value)
  %4319 = fadd fast float %4318, 0xBE8777A5C0000000
  %4320 = fmul fast float %4319, 0x3FB45F3060000000
  %4321 = call float @dx.op.dot4.f32(i32 56, float %4295, float %4296, float %4297, float %4298, float %4305, float %4310, float %4315, float %4320)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4322 = fmul fast float %4321, 0xBFF7154760000000
  %4323 = call float @dx.op.unary.f32(i32 21, float %4322)  ; Exp(value)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  br label %4325

; <label>:4325                                    ; preds = %4293, %4289
  %4326 = phi float [ %4324, %4293 ], [ 1.000000e+00, %4289 ]
  %4327 = fadd fast float %4326, -1.000000e+00
  %4328 = fmul fast float %4327, %4287
  %4329 = fadd fast float %4328, 1.000000e+00
  br label %4330

; <label>:4330                                    ; preds = %4325, %4231
  %4331 = phi float [ %4329, %4325 ], [ 1.000000e+00, %4231 ]
  %4332 = fmul fast float %4331, %4227
  %4333 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %4334 = fadd fast float %2192, %132
  %4335 = fadd fast float %2193, %133
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 1
  %4338 = fsub fast float -0.000000e+00, %4334
  %4339 = fsub fast float -0.000000e+00, %4335
  %4340 = fsub fast float %2175, %4333
  %4341 = fadd fast float %4340, %4337
  %4342 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4338, float %4339, float %4341)  ; Dot3(ax,ay,az,bx,by,bz)
  %4343 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3582, float %3583, float %3584)  ; Dot3(ax,ay,az,bx,by,bz)
  %4344 = fdiv fast float 1.000000e+00, %4343
  %4345 = fmul fast float %4344, %4342
  %4346 = fmul fast float %3582, %4345
  %4347 = fmul fast float %3583, %4345
  %4348 = fadd fast float %4346, %4334
  %4349 = fadd fast float %4347, %4335
  %4350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4351 = extractvalue %dx.types.CBufRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.CBufRet.f32 %4350, 1
  %4353 = fsub fast float %4348, %4351
  %4354 = fsub fast float %4349, %4352
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4357 = extractvalue %dx.types.CBufRet.f32 %4355, 3
  %4358 = fmul fast float %4353, %4356
  %4359 = fmul fast float %4354, %4357
  %4360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.i32 %4360, 3
  %4362 = icmp eq i32 %4361, 0
  br i1 %4362, label %4368, label %4363

; <label>:4363                                    ; preds = %4330
  %4364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %4358, float %4359, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.ResRet.f32 %4364, 1
  %4367 = extractvalue %dx.types.ResRet.f32 %4364, 2
  br label %4373

; <label>:4368                                    ; preds = %4330
  %4369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %4358, float %4359, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.ResRet.f32 %4369, 2
  br label %4373

; <label>:4373                                    ; preds = %4368, %4363
  %4374 = phi float [ %4365, %4363 ], [ %4370, %4368 ]
  %4375 = phi float [ %4366, %4363 ], [ %4371, %4368 ]
  %4376 = phi float [ %4367, %4363 ], [ %4372, %4368 ]
  %4377 = extractvalue %dx.types.CBufRet.f32 %4336, 2
  %4378 = fmul fast float %4377, %4374
  %4379 = extractvalue %dx.types.CBufRet.f32 %4336, 0
  %4380 = fsub fast float %4345, %4379
  %4381 = fsub fast float %4380, %4378
  %4382 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4381)  ; FMax(a,b)
  %4383 = fmul fast float %4382, %4375
  %4384 = call float @dx.op.binary.f32(i32 36, float %4376, float %4383)  ; FMin(a,b)
  %4385 = fmul fast float %4384, 0xBFF7154760000000
  %4386 = call float @dx.op.unary.f32(i32 21, float %4385)  ; Exp(value)
  %4387 = fmul fast float %4332, %4386
  br label %4388

; <label>:4388                                    ; preds = %4373, %4226
  %4389 = phi float [ %4387, %4373 ], [ %4227, %4226 ]
  %4390 = call float @dx.op.binary.f32(i32 36, float %4389, float %4389)  ; FMin(a,b)
  %4391 = call float @dx.op.binary.f32(i32 36, float %4389, float %4390)  ; FMin(a,b)
  %4392 = fcmp fast ogt float %4391, 0.000000e+00
  br i1 %4392, label %4393, label %4656, !dx.controlflow.hints !123

; <label>:4393                                    ; preds = %4388
  %4394 = fmul fast float %4389, %3593
  %4395 = fmul fast float %4389, %3594
  %4396 = fmul fast float %4389, %3595
  %4397 = fsub fast float %134, %1963
  %4398 = fcmp fast ogt float %4397, 0.000000e+00
  %4399 = fmul fast float %3582, 5.120000e+02
  %4400 = fmul fast float %3583, 5.120000e+02
  %4401 = fmul fast float %3584, 5.120000e+02
  %4402 = fadd fast float %4401, %134
  %4403 = fsub fast float %1963, %4402
  %4404 = fmul fast float %4403, 2.000000e+00
  %4405 = fadd fast float %4404, %4402
  %4406 = select i1 %4398, float %4405, float %4402
  %4407 = fsub fast float %4406, %134
  %4408 = call float @dx.op.dot3.f32(i32 55, float %4399, float %4400, float %4407, float %4399, float %4400, float %4407)  ; Dot3(ax,ay,az,bx,by,bz)
  %4409 = call float @dx.op.unary.f32(i32 25, float %4408)  ; Rsqrt(value)
  %4410 = fmul fast float %4409, %4399
  %4411 = fmul fast float %4409, %4400
  %4412 = fmul fast float %4409, %4407
  %4413 = fsub fast float %1963, %134
  %4414 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4413)  ; Dot3(ax,ay,az,bx,by,bz)
  %4415 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4410, float %4411, float %4412)  ; Dot3(ax,ay,az,bx,by,bz)
  %4416 = fdiv fast float 1.000000e+00, %4415
  %4417 = fmul fast float %4416, %4414
  %4418 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4397, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4419 = fcmp fast ogt float %4418, 0.000000e+00
  %4420 = fcmp fast olt float %4418, 0.000000e+00
  %4421 = zext i1 %4419 to i32
  %4422 = zext i1 %4420 to i32
  %4423 = sub nsw i32 %4421, %4422
  %4424 = sitofp i32 %4423 to float
  %4425 = fsub fast float %4406, %1963
  %4426 = call float @dx.op.dot3.f32(i32 55, float %4399, float %4400, float %4425, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = fcmp fast ogt float %4426, 0.000000e+00
  %4428 = fcmp fast olt float %4426, 0.000000e+00
  %4429 = zext i1 %4427 to i32
  %4430 = zext i1 %4428 to i32
  %4431 = sub nsw i32 %4429, %4430
  %4432 = sitofp i32 %4431 to float
  %4433 = fcmp fast une float %4424, %4432
  br i1 %4433, label %4434, label %4444

; <label>:4434                                    ; preds = %4393
  %4435 = fmul fast float %4417, %4412
  %4436 = fmul fast float %4417, %4411
  %4437 = fmul fast float %4417, %4410
  %4438 = fmul fast float %4437, %4437
  %4439 = fmul fast float %4436, %4436
  %4440 = fadd fast float %4438, %4439
  %4441 = fmul fast float %4435, %4435
  %4442 = fadd fast float %4440, %4441
  %4443 = call float @dx.op.unary.f32(i32 24, float %4442)  ; Sqrt(value)
  br label %4454

; <label>:4444                                    ; preds = %4393
  %4445 = icmp slt i32 %4423, 0
  br i1 %4445, label %4446, label %4454

; <label>:4446                                    ; preds = %4444
  %4447 = fsub fast float %134, %4406
  %4448 = fmul fast float %4399, %4399
  %4449 = fmul fast float %4400, %4400
  %4450 = fadd fast float %4448, %4449
  %4451 = fmul fast float %4447, %4447
  %4452 = fadd fast float %4450, %4451
  %4453 = call float @dx.op.unary.f32(i32 24, float %4452)  ; Sqrt(value)
  br label %4454

; <label>:4454                                    ; preds = %4446, %4444, %4434
  %4455 = phi float [ %4443, %4434 ], [ %4453, %4446 ], [ 0.000000e+00, %4444 ]
  %4456 = fsub fast float -0.000000e+00, %4455
  %4457 = select i1 %4398, float -0.000000e+00, float %4456
  %4458 = fmul fast float %1964, 0x3FF7154760000000
  %4459 = fmul fast float %4458, %4457
  %4460 = fmul fast float %1965, 0x3FF7154760000000
  %4461 = fmul fast float %4460, %4457
  %4462 = fmul fast float %1966, 0x3FF7154760000000
  %4463 = fmul fast float %4462, %4457
  %4464 = call float @dx.op.unary.f32(i32 21, float %4459)  ; Exp(value)
  %4465 = call float @dx.op.unary.f32(i32 21, float %4461)  ; Exp(value)
  %4466 = call float @dx.op.unary.f32(i32 21, float %4463)  ; Exp(value)
  %4467 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4468 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4470 = fmul fast float %4394, %4467
  %4471 = fmul fast float %4395, %4468
  %4472 = fmul fast float %4396, %4469
  %4473 = fsub fast float %3582, %2163
  %4474 = fsub fast float %3583, %2162
  %4475 = fsub fast float %3584, %2161
  %4476 = call float @dx.op.dot3.f32(i32 55, float %4473, float %4474, float %4475, float %4473, float %4474, float %4475)  ; Dot3(ax,ay,az,bx,by,bz)
  %4477 = call float @dx.op.unary.f32(i32 25, float %4476)  ; Rsqrt(value)
  %4478 = fmul fast float %4477, %4473
  %4479 = fmul fast float %4477, %4474
  %4480 = fmul fast float %4477, %4475
  %4481 = call float @dx.op.dot3.f32(i32 55, float %3582, float %3583, float %3584, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %4482 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2159, float %2158, float %4478, float %4479, float %4480)  ; Dot3(ax,ay,az,bx,by,bz)
  %4483 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4484 = fmul fast float %4483, %4483
  %4485 = fmul fast float %4484, %3577
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fmul fast float %4486, %4483
  %4488 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %4478, float %4479, float %4480)  ; Dot3(ax,ay,az,bx,by,bz)
  %4489 = fmul fast float %4488, %4488
  %4490 = call float @dx.op.unary.f32(i32 6, float %4481)  ; FAbs(value)
  %4491 = fsub fast float 1.000000e+00, %2173
  %4492 = call float @dx.op.binary.f32(i32 35, float %4491, float 0x3F847AE140000000)  ; FMax(a,b)
  %4493 = fmul fast float %4492, %4492
  %4494 = fmul fast float %4493, %4493
  %4495 = fsub fast float 1.000000e+00, %4494
  %4496 = fmul fast float %2178, %2178
  %4497 = fmul fast float %4496, %4495
  %4498 = fadd fast float %4497, %4494
  %4499 = bitcast float %4498 to i32
  %4500 = ashr i32 %4499, 1
  %4501 = add nsw i32 %4500, 532487669
  %4502 = bitcast i32 %4501 to float
  %4503 = fadd fast float %4502, %2178
  %4504 = fmul fast float %4494, %4489
  %4505 = fsub fast float 1.000000e+00, %4489
  %4506 = fadd fast float %4505, %4504
  %4507 = fmul fast float %4490, %4490
  %4508 = fmul fast float %4507, %4495
  %4509 = fadd fast float %4508, %4494
  %4510 = bitcast float %4509 to i32
  %4511 = ashr i32 %4510, 1
  %4512 = add nsw i32 %4511, 532487669
  %4513 = bitcast i32 %4512 to float
  %4514 = fadd fast float %4513, %4490
  %4515 = fmul fast float %4506, %4506
  %4516 = fmul fast float %4515, %4503
  %4517 = fmul fast float %4516, %4514
  %4518 = fdiv fast float 0x3FF0A00000000000, %4517
  %4519 = fmul fast float %4518, %4494
  %4520 = fmul fast float %3443, 0x3FF9999980000000
  %4521 = fsub fast float 5.000000e+00, %4520
  %4522 = call float @dx.op.unary.f32(i32 6, float %4482)  ; FAbs(value)
  %4523 = fsub fast float 1.000000e+00, %4522
  %4524 = fmul fast float %3443, 0x41D9660740000000
  %4525 = fadd fast float %4524, 0xC1EFBF8940000000
  %4526 = bitcast float %4523 to i32
  %4527 = sitofp i32 %4526 to float
  %4528 = fmul fast float %4527, %4521
  %4529 = fadd fast float %4525, %4528
  %4530 = fptosi float %4529 to i32
  %4531 = bitcast i32 %4530 to float
  %4532 = fsub fast float 1.000000e+00, %2167
  %4533 = fsub fast float 1.000000e+00, %2168
  %4534 = fsub fast float 1.000000e+00, %2176
  %4535 = fmul fast float %4531, %4532
  %4536 = fmul fast float %4531, %4533
  %4537 = fmul fast float %4531, %4534
  %4538 = fadd fast float %4535, %2167
  %4539 = fadd fast float %4536, %2168
  %4540 = fadd fast float %4537, %2176
  br i1 %3466, label %4541, label %4564

; <label>:4541                                    ; preds = %4454
  %4542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %1538, float %4522, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = extractvalue %dx.types.ResRet.f32 %4542, 1
  %4545 = extractvalue %dx.types.ResRet.f32 %4542, 2
  %4546 = fadd fast float %4543, -5.000000e-01
  %4547 = fadd fast float %4544, -5.000000e-01
  %4548 = fadd fast float %4545, -5.000000e-01
  %4549 = fmul fast float %2167, 4.000000e+00
  %4550 = fmul fast float %4549, %4532
  %4551 = fmul fast float %4550, %4546
  %4552 = fmul fast float %2168, 4.000000e+00
  %4553 = fmul fast float %4552, %4533
  %4554 = fmul fast float %4553, %4547
  %4555 = fmul fast float %2176, 4.000000e+00
  %4556 = fmul fast float %4555, %4534
  %4557 = fmul fast float %4556, %4548
  %4558 = fadd fast float %4551, %4538
  %4559 = fadd fast float %4554, %4539
  %4560 = fadd fast float %4557, %4540
  %4561 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4562 = call float @dx.op.unary.f32(i32 7, float %4559)  ; Saturate(value)
  %4563 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  br label %4564

; <label>:4564                                    ; preds = %4541, %4454
  %4565 = phi float [ %4561, %4541 ], [ %4538, %4454 ]
  %4566 = phi float [ %4562, %4541 ], [ %4539, %4454 ]
  %4567 = phi float [ %4563, %4541 ], [ %4540, %4454 ]
  %4568 = fmul fast float %4481, 9.843750e-01
  %4569 = fadd fast float %4568, 7.812500e-03
  %4570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %4569, float %3447, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.ResRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.ResRet.f32 %4570, 2
  %4574 = extractvalue %dx.types.ResRet.f32 %4570, 3
  %4575 = fsub fast float %4573, %4571
  %4576 = fsub fast float %4574, %4572
  %4577 = fmul fast float %4575, %3453
  %4578 = fmul fast float %4576, %3453
  %4579 = fadd fast float %4577, %4571
  %4580 = fadd fast float %4578, %4572
  %4581 = fmul fast float %4579, %2167
  %4582 = fmul fast float %4579, %2168
  %4583 = fmul fast float %4579, %2176
  %4584 = fadd fast float %4581, %4580
  %4585 = fadd fast float %4582, %4580
  %4586 = fadd fast float %4583, %4580
  br i1 %3466, label %4587, label %4610

; <label>:4587                                    ; preds = %4564
  %4588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %1538, float %4481, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = fadd fast float %4589, -5.000000e-01
  %4593 = fadd fast float %4590, -5.000000e-01
  %4594 = fadd fast float %4591, -5.000000e-01
  %4595 = fmul fast float %2167, 4.000000e+00
  %4596 = fmul fast float %4595, %4532
  %4597 = fmul fast float %4596, %4592
  %4598 = fmul fast float %2168, 4.000000e+00
  %4599 = fmul fast float %4598, %4533
  %4600 = fmul fast float %4599, %4593
  %4601 = fmul fast float %2176, 4.000000e+00
  %4602 = fmul fast float %4601, %4534
  %4603 = fmul fast float %4602, %4594
  %4604 = fadd fast float %4597, %4584
  %4605 = fadd fast float %4600, %4585
  %4606 = fadd fast float %4603, %4586
  %4607 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4609 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  br label %4610

; <label>:4610                                    ; preds = %4587, %4564
  %4611 = phi float [ %4607, %4587 ], [ %4584, %4564 ]
  %4612 = phi float [ %4608, %4587 ], [ %4585, %4564 ]
  %4613 = phi float [ %4609, %4587 ], [ %4586, %4564 ]
  %4614 = call float @dx.op.binary.f32(i32 35, float %4612, float %4613)  ; FMax(a,b)
  %4615 = call float @dx.op.binary.f32(i32 35, float %4611, float %4614)  ; FMax(a,b)
  %4616 = fsub fast float 1.000000e+00, %4615
  %4617 = fmul fast float %4565, %4519
  %4618 = fmul fast float %4566, %4519
  %4619 = fmul fast float %4567, %4519
  %4620 = fsub fast float 1.000000e+00, %4482
  %4621 = bitcast float %4620 to i32
  %4622 = sitofp i32 %4621 to float
  %4623 = fmul fast float %4622, 5.000000e+00
  %4624 = fadd fast float %4623, 0xC1EFBF8940000000
  %4625 = fptosi float %4624 to i32
  %4626 = bitcast i32 %4625 to float
  %4627 = fmul fast float %4626, %1537
  %4628 = fmul fast float %4616, %4627
  %4629 = fmul fast float %4628, %3516
  %4630 = fmul fast float %4628, %3517
  %4631 = fmul fast float %4628, %3518
  %4632 = fadd fast float %4629, %4617
  %4633 = fadd fast float %4630, %4618
  %4634 = fadd fast float %4631, %4619
  %4635 = fmul fast float %4487, %4470
  %4636 = fmul fast float %4635, %4616
  %4637 = fmul fast float %4487, %4471
  %4638 = fmul fast float %4637, %4616
  %4639 = fmul fast float %4487, %4472
  %4640 = fmul fast float %4639, %4616
  %4641 = fmul fast float %4635, %4632
  %4642 = fmul fast float %4637, %4633
  %4643 = fmul fast float %4639, %4634
  %4644 = fadd fast float %4636, %3500
  %4645 = fmul fast float %4644, %1558
  %4646 = fadd fast float %4638, %3501
  %4647 = fmul fast float %4646, %1558
  %4648 = fadd fast float %4640, %3502
  %4649 = fmul fast float %4648, %1558
  %4650 = fadd fast float %4641, %3569
  %4651 = fmul fast float %4650, %1558
  %4652 = fadd fast float %4642, %3572
  %4653 = fmul fast float %4652, %1558
  %4654 = fadd fast float %4643, %3575
  %4655 = fmul fast float %4654, %1558
  br label %4656

; <label>:4656                                    ; preds = %4610, %4388, %3493
  %4657 = phi float [ %3570, %3493 ], [ %3570, %4388 ], [ %4651, %4610 ]
  %4658 = phi float [ %3573, %3493 ], [ %3573, %4388 ], [ %4653, %4610 ]
  %4659 = phi float [ %3576, %3493 ], [ %3576, %4388 ], [ %4655, %4610 ]
  %4660 = phi float [ %3565, %3493 ], [ %3565, %4388 ], [ %4645, %4610 ]
  %4661 = phi float [ %3566, %3493 ], [ %3566, %4388 ], [ %4647, %4610 ]
  %4662 = phi float [ %3567, %3493 ], [ %3567, %4388 ], [ %4649, %4610 ]
  %4663 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4664 = extractvalue %dx.types.CBufRet.i32 %4663, 0
  %4665 = icmp eq i32 %4664, 0
  br i1 %4665, label %5298, label %4666

; <label>:4666                                    ; preds = %4656
  %4667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4668 = extractvalue %dx.types.CBufRet.f32 %4667, 2
  %4669 = extractvalue %dx.types.CBufRet.f32 %4667, 3
  %4670 = fmul fast float %4668, %85
  %4671 = fmul fast float %4669, %86
  %4672 = fptoui float %4670 to i32
  %4673 = fptoui float %4671 to i32
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 0
  %4676 = extractvalue %dx.types.CBufRet.f32 %4674, 2
  %4677 = extractvalue %dx.types.CBufRet.f32 %4674, 3
  %4678 = fadd fast float %76, -4.000000e+00
  %4679 = call float @dx.op.binary.f32(i32 35, float %4678, float 0.000000e+00)  ; FMax(a,b)
  %4680 = fadd fast float %4679, %4675
  %4681 = fmul fast float %4680, %4676
  %4682 = call float @dx.op.unary.f32(i32 23, float %4681)  ; Log(value)
  %4683 = fmul fast float %4682, %4677
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 2
  %4686 = fmul fast float %4683, %4685
  %4687 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.i32 %4688, 1
  %4690 = add i32 %4689, -1
  %4691 = uitofp i32 %4689 to float
  %4692 = fmul fast float %4691, %4687
  %4693 = fptoui float %4692 to i32
  %4694 = call i32 @dx.op.binary.i32(i32 40, i32 %4693, i32 %4690)  ; UMin(a,b)
  %4695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4696 = extractvalue %dx.types.CBufRet.i32 %4695, 2
  %4697 = extractvalue %dx.types.CBufRet.i32 %4695, 3
  %4698 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4673, i32 %4696, i32 %4672)  ; UMad(a,b,c)
  %4699 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4694, i32 %4697, i32 %4698)  ; UMad(a,b,c)
  %4700 = add nsw i32 %4664, -1
  %4701 = call i32 @dx.op.binary.i32(i32 37, i32 %4700, i32 0)  ; IMax(a,b)
  %4702 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %4703 = fptoui float %4702 to i32
  %4704 = lshr i32 %4703, 5
  %4705 = call i32 @dx.op.binary.i32(i32 40, i32 %4704, i32 8191)  ; UMin(a,b)
  %4706 = shl i32 %4705, 2
  %4707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4706, i32 undef)  ; BufferLoad(srv,index,wot)
  %4708 = extractvalue %dx.types.ResRet.i32 %4707, 0
  %4709 = lshr i32 %4708, 16
  %4710 = and i32 %4708, 65535
  %4711 = lshr i32 %4708, 21
  %4712 = lshr i32 %4710, 5
  %4713 = call i32 @dx.op.binary.i32(i32 40, i32 %4712, i32 %4701)  ; UMin(a,b)
  %4714 = icmp ugt i32 %4711, %4713
  br i1 %4714, label %5298, label %4715

; <label>:4715                                    ; preds = %4666
  br label %4716

; <label>:4716                                    ; preds = %5288, %4715
  %4717 = phi i32 [ %5295, %5288 ], [ %4711, %4715 ]
  %4718 = phi float [ %5289, %5288 ], [ %4657, %4715 ]
  %4719 = phi float [ %5290, %5288 ], [ %4658, %4715 ]
  %4720 = phi float [ %5291, %5288 ], [ %4659, %4715 ]
  %4721 = phi float [ %5292, %5288 ], [ %4660, %4715 ]
  %4722 = phi float [ %5293, %5288 ], [ %4661, %4715 ]
  %4723 = phi float [ %5294, %5288 ], [ %4662, %4715 ]
  %4724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.i32 %4724, 0
  %4726 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4699, i32 %4725, i32 %4717)  ; UMad(a,b,c)
  %4727 = shl i32 %4726, 2
  %4728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4727, i32 undef)  ; BufferLoad(srv,index,wot)
  %4729 = extractvalue %dx.types.ResRet.i32 %4728, 0
  %4730 = shl i32 %4717, 5
  %4731 = sub nsw i32 %4709, %4730
  %4732 = call i32 @dx.op.binary.i32(i32 37, i32 %4731, i32 0)  ; IMax(a,b)
  %4733 = call i32 @dx.op.binary.i32(i32 38, i32 %4732, i32 31)  ; IMin(a,b)
  %4734 = sub nsw i32 1, %4709
  %4735 = add nsw i32 %4734, %4710
  %4736 = call i32 @dx.op.binary.i32(i32 37, i32 %4735, i32 0)  ; IMax(a,b)
  %4737 = call i32 @dx.op.binary.i32(i32 38, i32 %4736, i32 32)  ; IMin(a,b)
  %4738 = and i32 %4737, 31
  %4739 = shl i32 -1, %4738
  %4740 = xor i32 %4739, -1
  %4741 = and i32 %4733, 31
  %4742 = shl i32 %4740, %4741
  %4743 = icmp eq i32 %4737, 32
  %4744 = select i1 %4743, i32 -1, i32 %4742
  %4745 = and i32 %4744, %4729
  %4746 = icmp eq i32 %4745, 0
  br i1 %4746, label %5288, label %4747

; <label>:4747                                    ; preds = %4716
  br label %4748

; <label>:4748                                    ; preds = %4882, %4747
  %4749 = phi i32 [ %4760, %4882 ], [ %4745, %4747 ]
  %4750 = phi float [ %4883, %4882 ], [ %4718, %4747 ]
  %4751 = phi float [ %4884, %4882 ], [ %4719, %4747 ]
  %4752 = phi float [ %4885, %4882 ], [ %4720, %4747 ]
  %4753 = phi float [ %4886, %4882 ], [ %4721, %4747 ]
  %4754 = phi float [ %4887, %4882 ], [ %4722, %4747 ]
  %4755 = phi float [ %4888, %4882 ], [ %4723, %4747 ]
  %4756 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4749)  ; FirstbitLo(value)
  %4757 = add i32 %4756, %4730
  %4758 = and i32 %4756, 31
  %4759 = shl i32 1, %4758
  %4760 = xor i32 %4759, %4749
  %4761 = mul i32 %4757, 112
  %4762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4761, i32 undef)  ; BufferLoad(srv,index,wot)
  %4763 = extractvalue %dx.types.ResRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.ResRet.f32 %4762, 1
  %4765 = extractvalue %dx.types.ResRet.f32 %4762, 2
  %4766 = or i32 %4761, 12
  %4767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4766, i32 undef)  ; BufferLoad(srv,index,wot)
  %4768 = extractvalue %dx.types.ResRet.f32 %4767, 0
  %4769 = add i32 %4761, 16
  %4770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4769, i32 undef)  ; BufferLoad(srv,index,wot)
  %4771 = extractvalue %dx.types.ResRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.ResRet.f32 %4770, 1
  %4773 = extractvalue %dx.types.ResRet.f32 %4770, 2
  %4774 = add i32 %4761, 28
  %4775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4774, i32 undef)  ; BufferLoad(srv,index,wot)
  %4776 = extractvalue %dx.types.ResRet.i32 %4775, 0
  %4777 = add i32 %4761, 44
  %4778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4777, i32 undef)  ; BufferLoad(srv,index,wot)
  %4779 = extractvalue %dx.types.ResRet.f32 %4778, 0
  %4780 = add i32 %4761, 48
  %4781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4780, i32 undef)  ; BufferLoad(srv,index,wot)
  %4782 = extractvalue %dx.types.ResRet.f32 %4781, 0
  %4783 = extractvalue %dx.types.ResRet.f32 %4781, 1
  %4784 = extractvalue %dx.types.ResRet.f32 %4781, 2
  %4785 = extractvalue %dx.types.ResRet.f32 %4781, 3
  %4786 = add i32 %4761, 64
  %4787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4786, i32 undef)  ; BufferLoad(srv,index,wot)
  %4788 = extractvalue %dx.types.ResRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.ResRet.f32 %4787, 1
  %4790 = extractvalue %dx.types.ResRet.f32 %4787, 2
  %4791 = extractvalue %dx.types.ResRet.f32 %4787, 3
  %4792 = add i32 %4761, 80
  %4793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4792, i32 undef)  ; BufferLoad(srv,index,wot)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 1
  %4795 = extractvalue %dx.types.ResRet.f32 %4793, 2
  %4796 = add i32 %4761, 92
  %4797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4796, i32 undef)  ; BufferLoad(srv,index,wot)
  %4798 = extractvalue %dx.types.ResRet.i32 %4797, 0
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4763, float %4764, float %4765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = select i1 %223, float %4794, float %4763
  %4801 = select i1 %223, float %4799, float %4764
  %4802 = select i1 %223, float %4795, float %4765
  %4803 = and i32 %4798, 65535
  %4804 = uitofp i32 %4803 to float
  %4805 = lshr i32 %4798, 16
  %4806 = uitofp i32 %4805 to float
  %4807 = and i32 %4776, 65535
  %4808 = and i32 %4776, 50331648
  %4809 = icmp eq i32 %4808, 33554432
  %4810 = fsub fast float %4782, %132
  %4811 = fsub fast float %4783, %133
  %4812 = fsub fast float %4784, %134
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %4812, float %4810, float %4811, float %4812)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = call float @dx.op.unary.f32(i32 24, float %4813)  ; Sqrt(value)
  %4815 = fdiv fast float 1.000000e+00, %4814
  %4816 = fmul fast float %4815, %4810
  %4817 = fmul fast float %4815, %4811
  %4818 = fmul fast float %4815, %4812
  %4819 = fadd fast float %4814, %4768
  %4820 = fdiv fast float 1.000000e+00, %4819
  %4821 = fmul float %4779, %4820
  %4822 = fmul float %4821, %4821
  %4823 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  br i1 %4809, label %4824, label %4845

; <label>:4824                                    ; preds = %4748
  %4825 = fmul fast float %4790, %4771
  %4826 = fmul fast float %4790, %4772
  %4827 = fmul fast float %4790, %4773
  %4828 = fadd fast float %4810, %4825
  %4829 = fadd fast float %4811, %4826
  %4830 = fadd fast float %4812, %4827
  %4831 = call float @dx.op.dot3.f32(i32 55, float %4828, float %4829, float %4830, float %4828, float %4829, float %4830)  ; Dot3(ax,ay,az,bx,by,bz)
  %4832 = call float @dx.op.unary.f32(i32 25, float %4831)  ; Rsqrt(value)
  %4833 = fmul fast float %4832, %4828
  %4834 = fmul fast float %4832, %4829
  %4835 = fmul fast float %4832, %4830
  %4836 = fsub fast float %132, %4782
  %4837 = fsub fast float %133, %4783
  %4838 = fsub fast float %134, %4784
  %4839 = fsub fast float -0.000000e+00, %4836
  %4840 = fsub fast float -0.000000e+00, %4837
  %4841 = fsub fast float -0.000000e+00, %4838
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4839, float %4840, float %4841, float %4771, float %4772, float %4773)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = fcmp fast ogt float %4842, 0.000000e+00
  %4844 = uitofp i1 %4843 to float
  br label %4845

; <label>:4845                                    ; preds = %4824, %4748
  %4846 = phi float [ %4844, %4824 ], [ 1.000000e+00, %4748 ]
  %4847 = phi float [ %4833, %4824 ], [ %4816, %4748 ]
  %4848 = phi float [ %4834, %4824 ], [ %4817, %4748 ]
  %4849 = phi float [ %4835, %4824 ], [ %4818, %4748 ]
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4771, float %4772, float %4773, float %4847, float %4848, float %4849)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = fmul fast float %4850, %4850
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fsub fast float 1.000000e+00, %4852
  %4854 = fmul fast float %4853, 5.000000e-01
  %4855 = fcmp fast ogt float %4850, 0.000000e+00
  %4856 = fsub fast float 1.000000e+00, %4854
  %4857 = select i1 %4855, float %4854, float %4856
  %4858 = fmul fast float %4857, %4806
  %4859 = fadd fast float %4858, %4804
  %4860 = fmul fast float %4859, 0x3EF0001000000000
  %4861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %4860, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4862 = extractvalue %dx.types.ResRet.f32 %4861, 0
  %4863 = fmul fast float %4850, %4788
  %4864 = fadd fast float %4863, %4789
  %4865 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4866 = select i1 %4809, float 1.000000e+00, float %4865
  %4867 = select i1 %4809, float %4865, float 1.000000e+00
  %4868 = fmul fast float %4814, %4785
  %4869 = fsub fast float 1.000000e+00, %4868
  %4870 = fmul fast float %4869, %4791
  %4871 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4872 = fmul fast float %4871, %4867
  %4873 = fmul fast float %4872, 2.000000e+00
  %4874 = fsub fast float 3.000000e+00, %4873
  %4875 = fmul fast float %4862, %4846
  %4876 = fmul fast float %4872, %4872
  %4877 = fmul fast float %4876, %4875
  %4878 = fmul fast float %4877, %4874
  %4879 = call float @dx.op.binary.f32(i32 36, float %4878, float %4878)  ; FMin(a,b)
  %4880 = call float @dx.op.binary.f32(i32 36, float %4878, float %4879)  ; FMin(a,b)
  %4881 = fcmp fast ogt float %4880, 0.000000e+00
  br i1 %4881, label %4890, label %4882, !dx.controlflow.hints !124

; <label>:4882                                    ; preds = %5244, %4990, %4845
  %4883 = phi float [ %4750, %4990 ], [ %4750, %4845 ], [ %5284, %5244 ]
  %4884 = phi float [ %4751, %4990 ], [ %4751, %4845 ], [ %5285, %5244 ]
  %4885 = phi float [ %4752, %4990 ], [ %4752, %4845 ], [ %5286, %5244 ]
  %4886 = phi float [ %4753, %4990 ], [ %4753, %4845 ], [ %5278, %5244 ]
  %4887 = phi float [ %4754, %4990 ], [ %4754, %4845 ], [ %5279, %5244 ]
  %4888 = phi float [ %4755, %4990 ], [ %4755, %4845 ], [ %5280, %5244 ]
  %4889 = icmp eq i32 %4749, %4759
  br i1 %4889, label %5287, label %4748

; <label>:4890                                    ; preds = %4845
  %4891 = icmp eq i32 %4807, 255
  br i1 %4891, label %4990, label %4892, !dx.controlflow.hints !125

; <label>:4892                                    ; preds = %4890
  %4893 = mul nuw nsw i32 %4807, 176
  %4894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4893, i32 undef)  ; BufferLoad(srv,index,wot)
  %4895 = extractvalue %dx.types.ResRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.ResRet.f32 %4894, 1
  %4897 = extractvalue %dx.types.ResRet.f32 %4894, 2
  %4898 = extractvalue %dx.types.ResRet.f32 %4894, 3
  %4899 = add nuw nsw i32 %4893, 16
  %4900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4899, i32 undef)  ; BufferLoad(srv,index,wot)
  %4901 = extractvalue %dx.types.ResRet.f32 %4900, 0
  %4902 = extractvalue %dx.types.ResRet.f32 %4900, 1
  %4903 = add nuw nsw i32 %4893, 32
  %4904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4903, i32 undef)  ; BufferLoad(srv,index,wot)
  %4905 = extractvalue %dx.types.ResRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.ResRet.f32 %4904, 1
  %4907 = extractvalue %dx.types.ResRet.f32 %4904, 2
  %4908 = add nuw nsw i32 %4893, 48
  %4909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4908, i32 undef)  ; BufferLoad(srv,index,wot)
  %4910 = extractvalue %dx.types.ResRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.ResRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.ResRet.f32 %4909, 2
  %4913 = extractvalue %dx.types.ResRet.f32 %4909, 3
  %4914 = add nuw nsw i32 %4893, 64
  %4915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4914, i32 undef)  ; BufferLoad(srv,index,wot)
  %4916 = extractvalue %dx.types.ResRet.f32 %4915, 0
  %4917 = extractvalue %dx.types.ResRet.f32 %4915, 1
  %4918 = extractvalue %dx.types.ResRet.f32 %4915, 2
  %4919 = extractvalue %dx.types.ResRet.f32 %4915, 3
  %4920 = add nuw nsw i32 %4893, 80
  %4921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4920, i32 undef)  ; BufferLoad(srv,index,wot)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = extractvalue %dx.types.ResRet.f32 %4921, 1
  %4924 = extractvalue %dx.types.ResRet.f32 %4921, 2
  %4925 = extractvalue %dx.types.ResRet.f32 %4921, 3
  %4926 = add nuw nsw i32 %4893, 96
  %4927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4926, i32 undef)  ; BufferLoad(srv,index,wot)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.ResRet.f32 %4927, 1
  %4930 = extractvalue %dx.types.ResRet.f32 %4927, 2
  %4931 = extractvalue %dx.types.ResRet.f32 %4927, 3
  %4932 = bitcast float %4902 to i32
  %4933 = fmul fast float %4907, %65
  %4934 = fmul fast float %4907, %66
  %4935 = fmul fast float %4907, %67
  %4936 = fadd fast float %4933, %132
  %4937 = fadd fast float %4934, %133
  %4938 = fadd fast float %4935, %134
  %4939 = fmul fast float %4936, %4910
  %4940 = call float @dx.op.tertiary.f32(i32 46, float %4937, float %4916, float %4939)  ; FMad(a,b,c)
  %4941 = call float @dx.op.tertiary.f32(i32 46, float %4938, float %4922, float %4940)  ; FMad(a,b,c)
  %4942 = fadd fast float %4941, %4928
  %4943 = fmul fast float %4936, %4911
  %4944 = call float @dx.op.tertiary.f32(i32 46, float %4937, float %4917, float %4943)  ; FMad(a,b,c)
  %4945 = call float @dx.op.tertiary.f32(i32 46, float %4938, float %4923, float %4944)  ; FMad(a,b,c)
  %4946 = fadd fast float %4945, %4929
  %4947 = fmul fast float %4936, %4912
  %4948 = call float @dx.op.tertiary.f32(i32 46, float %4937, float %4918, float %4947)  ; FMad(a,b,c)
  %4949 = call float @dx.op.tertiary.f32(i32 46, float %4938, float %4924, float %4948)  ; FMad(a,b,c)
  %4950 = fadd fast float %4949, %4930
  %4951 = fmul fast float %4936, %4913
  %4952 = call float @dx.op.tertiary.f32(i32 46, float %4937, float %4919, float %4951)  ; FMad(a,b,c)
  %4953 = call float @dx.op.tertiary.f32(i32 46, float %4938, float %4925, float %4952)  ; FMad(a,b,c)
  %4954 = fadd fast float %4953, %4931
  %4955 = fdiv fast float %4942, %4954
  %4956 = fdiv fast float %4946, %4954
  %4957 = fdiv fast float %4950, %4954
  %4958 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4957)  ; FMax(a,b)
  %4959 = fmul fast float %234, 0x401921FB60000000
  %4960 = call float @dx.op.unary.f32(i32 13, float %4959)  ; Sin(value)
  %4961 = call float @dx.op.unary.f32(i32 12, float %4959)  ; Cos(value)
  %4962 = fsub fast float -0.000000e+00, %4960
  %4963 = fmul fast float %4897, 5.000000e-01
  %4964 = call float @dx.op.dot2.f32(i32 54, float %234, float %234, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4965 = call float @dx.op.unary.f32(i32 22, float %4964)  ; Frc(value)
  %4966 = fmul fast float %4965, 0x404A7DD040000000
  %4967 = call float @dx.op.unary.f32(i32 22, float %4966)  ; Frc(value)
  %4968 = fmul fast float %4967, %4906
  %4969 = fadd fast float %4968, %4963
  %4970 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4962, float 0.000000e+00)  ; FMad(a,b,c)
  %4971 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4961, float 0.000000e+00)  ; FMad(a,b,c)
  %4972 = fadd fast float %4970, %4955
  %4973 = fadd fast float %4971, %4956
  %4974 = fmul fast float %4972, %4901
  %4975 = fmul fast float %4973, %4901
  %4976 = call float @dx.op.binary.f32(i32 35, float %4974, float %4897)  ; FMax(a,b)
  %4977 = call float @dx.op.binary.f32(i32 35, float %4975, float %4897)  ; FMax(a,b)
  %4978 = call float @dx.op.binary.f32(i32 36, float %4976, float %4898)  ; FMin(a,b)
  %4979 = call float @dx.op.binary.f32(i32 36, float %4977, float %4898)  ; FMin(a,b)
  %4980 = fadd fast float %4978, %4895
  %4981 = fadd fast float %4979, %4896
  %4982 = uitofp i32 %4932 to float
  %4983 = fadd fast float %4958, %4905
  %4984 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %4980, float %4981, float %4982, float undef, i32 0, i32 0, i32 undef, float %4983)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4985 = extractvalue %dx.types.ResRet.f32 %4984, 0
  %4986 = fadd fast float %4985, -1.000000e+00
  %4987 = fmul fast float %4986, %4866
  %4988 = fadd fast float %4987, 1.000000e+00
  %4989 = fmul fast float %4988, %4878
  br label %4990

; <label>:4990                                    ; preds = %4892, %4890
  %4991 = phi float [ %4989, %4892 ], [ %4878, %4890 ]
  %4992 = call float @dx.op.binary.f32(i32 36, float %4991, float %4991)  ; FMin(a,b)
  %4993 = call float @dx.op.binary.f32(i32 36, float %4991, float %4992)  ; FMin(a,b)
  %4994 = fcmp fast ogt float %4993, 0.000000e+00
  br i1 %4994, label %4995, label %4882, !dx.controlflow.hints !126

; <label>:4995                                    ; preds = %4990
  %4996 = fmul fast float %4991, %4800
  %4997 = fmul fast float %4991, %4801
  %4998 = fmul fast float %4991, %4802
  %4999 = fsub fast float %4784, %1963
  %5000 = fcmp fast ogt float %4999, 0.000000e+00
  %5001 = fsub fast float %134, %1963
  %5002 = fcmp fast ogt float %5001, 0.000000e+00
  %5003 = xor i1 %5002, %5000
  %5004 = fsub fast float %1963, %4784
  %5005 = fmul fast float %5004, 2.000000e+00
  %5006 = fadd fast float %5005, %4784
  %5007 = select i1 %5003, float %4784, float %5006
  %5008 = fsub fast float %5007, %134
  %5009 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %5008, float %4810, float %4811, float %5008)  ; Dot3(ax,ay,az,bx,by,bz)
  %5010 = call float @dx.op.unary.f32(i32 25, float %5009)  ; Rsqrt(value)
  %5011 = fmul fast float %5010, %4810
  %5012 = fmul fast float %5010, %4811
  %5013 = fmul fast float %5010, %5008
  %5014 = fsub fast float %1963, %134
  %5015 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5011, float %5012, float %5013)  ; Dot3(ax,ay,az,bx,by,bz)
  %5017 = fdiv fast float 1.000000e+00, %5016
  %5018 = fmul fast float %5017, %5015
  %5019 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5001, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5020 = fcmp fast ogt float %5019, 0.000000e+00
  %5021 = fcmp fast olt float %5019, 0.000000e+00
  %5022 = zext i1 %5020 to i32
  %5023 = zext i1 %5021 to i32
  %5024 = sub nsw i32 %5022, %5023
  %5025 = sitofp i32 %5024 to float
  %5026 = fsub fast float %5007, %1963
  %5027 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %5026, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5028 = fcmp fast ogt float %5027, 0.000000e+00
  %5029 = fcmp fast olt float %5027, 0.000000e+00
  %5030 = zext i1 %5028 to i32
  %5031 = zext i1 %5029 to i32
  %5032 = sub nsw i32 %5030, %5031
  %5033 = sitofp i32 %5032 to float
  %5034 = fcmp fast une float %5025, %5033
  br i1 %5034, label %5035, label %5045

; <label>:5035                                    ; preds = %4995
  %5036 = fmul fast float %5018, %5013
  %5037 = fmul fast float %5018, %5012
  %5038 = fmul fast float %5018, %5011
  %5039 = fmul fast float %5038, %5038
  %5040 = fmul fast float %5037, %5037
  %5041 = fadd fast float %5039, %5040
  %5042 = fmul fast float %5036, %5036
  %5043 = fadd fast float %5041, %5042
  %5044 = call float @dx.op.unary.f32(i32 24, float %5043)  ; Sqrt(value)
  br label %5057

; <label>:5045                                    ; preds = %4995
  %5046 = icmp slt i32 %5024, 0
  br i1 %5046, label %5047, label %5057

; <label>:5047                                    ; preds = %5045
  %5048 = fsub fast float %132, %4782
  %5049 = fsub fast float %133, %4783
  %5050 = fsub fast float %134, %5007
  %5051 = fmul fast float %5048, %5048
  %5052 = fmul fast float %5049, %5049
  %5053 = fadd fast float %5051, %5052
  %5054 = fmul fast float %5050, %5050
  %5055 = fadd fast float %5053, %5054
  %5056 = call float @dx.op.unary.f32(i32 24, float %5055)  ; Sqrt(value)
  br label %5057

; <label>:5057                                    ; preds = %5047, %5045, %5035
  %5058 = phi float [ %5044, %5035 ], [ %5056, %5047 ], [ 0.000000e+00, %5045 ]
  %5059 = and i1 %5002, %5000
  %5060 = fsub fast float -0.000000e+00, %5058
  %5061 = select i1 %5059, float -0.000000e+00, float %5060
  %5062 = fmul fast float %1964, 0x3FF7154760000000
  %5063 = fmul fast float %5062, %5061
  %5064 = fmul fast float %1965, 0x3FF7154760000000
  %5065 = fmul fast float %5064, %5061
  %5066 = fmul fast float %1966, 0x3FF7154760000000
  %5067 = fmul fast float %5066, %5061
  %5068 = call float @dx.op.unary.f32(i32 21, float %5063)  ; Exp(value)
  %5069 = call float @dx.op.unary.f32(i32 21, float %5065)  ; Exp(value)
  %5070 = call float @dx.op.unary.f32(i32 21, float %5067)  ; Exp(value)
  %5071 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5074 = fmul fast float %4996, %5071
  %5075 = fmul fast float %4997, %5072
  %5076 = fmul fast float %4998, %5073
  %5077 = fsub fast float %4816, %2163
  %5078 = fsub fast float %4817, %2162
  %5079 = fsub fast float %4818, %2161
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float %5077, float %5078, float %5079)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = call float @dx.op.unary.f32(i32 25, float %5080)  ; Rsqrt(value)
  %5082 = fmul fast float %5081, %5077
  %5083 = fmul fast float %5081, %5078
  %5084 = fmul fast float %5081, %5079
  %5085 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5086 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2159, float %2158, float %5082, float %5083, float %5084)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5088 = fmul fast float %5087, %4823
  %5089 = fmul fast float %5087, %5087
  %5090 = fmul fast float %5089, %3577
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5092 = fmul fast float %5088, %5091
  %5093 = bitcast float %4813 to i32
  %5094 = ashr i32 %5093, 1
  %5095 = sub nsw i32 1597463007, %5094
  %5096 = bitcast i32 %5095 to float
  %5097 = fmul fast float %5096, %4810
  %5098 = fmul fast float %5096, %4811
  %5099 = fmul fast float %5096, %4812
  %5100 = fsub fast float %5097, %2163
  %5101 = fsub fast float %5098, %2162
  %5102 = fsub fast float %5099, %2161
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = call float @dx.op.unary.f32(i32 25, float %5103)  ; Rsqrt(value)
  %5105 = fmul fast float %5100, %5104
  %5106 = fmul fast float %5101, %5104
  %5107 = fmul fast float %5102, %5104
  %5108 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %5105, float %5106, float %5107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5109 = fmul fast float %5108, %5108
  %5110 = call float @dx.op.unary.f32(i32 6, float %5085)  ; FAbs(value)
  %5111 = fsub fast float 1.000000e+00, %2173
  %5112 = call float @dx.op.binary.f32(i32 35, float %5111, float 0x3F847AE140000000)  ; FMax(a,b)
  %5113 = fmul fast float %5112, %5112
  %5114 = fmul fast float %5113, %5113
  %5115 = fsub fast float 1.000000e+00, %5114
  %5116 = fmul fast float %2178, %2178
  %5117 = fmul fast float %5116, %5115
  %5118 = fadd fast float %5117, %5114
  %5119 = bitcast float %5118 to i32
  %5120 = ashr i32 %5119, 1
  %5121 = add nsw i32 %5120, 532487669
  %5122 = bitcast i32 %5121 to float
  %5123 = fadd fast float %5122, %2178
  %5124 = fmul fast float %5114, %5109
  %5125 = fsub fast float 1.000000e+00, %5109
  %5126 = fadd fast float %5125, %5124
  %5127 = fmul fast float %5110, %5110
  %5128 = fmul fast float %5127, %5115
  %5129 = fadd fast float %5128, %5114
  %5130 = bitcast float %5129 to i32
  %5131 = ashr i32 %5130, 1
  %5132 = add nsw i32 %5131, 532487669
  %5133 = bitcast i32 %5132 to float
  %5134 = fadd fast float %5133, %5110
  %5135 = fmul fast float %5126, %5126
  %5136 = fmul fast float %5135, %5123
  %5137 = fmul fast float %5136, %5134
  %5138 = fdiv fast float 1.000000e+00, %5137
  %5139 = bitcast float %5114 to i32
  %5140 = sitofp i32 %5139 to float
  %5141 = fmul fast float %5140, 0x3FE7F73180000000
  %5142 = fadd fast float %5141, 0x41AFE27C40000000
  %5143 = fptosi float %5142 to i32
  %5144 = bitcast i32 %5143 to float
  %5145 = fmul fast float %4779, 0x3FD80E9D60000000
  %5146 = fmul fast float %5145, %5096
  %5147 = fadd fast float %5144, %5146
  %5148 = bitcast float %5147 to i32
  %5149 = sub nsw i32 2129859010, %5148
  %5150 = bitcast i32 %5149 to float
  %5151 = fmul fast float %5114, %5138
  %5152 = fmul fast float %5151, %5144
  %5153 = fmul fast float %5152, %5150
  %5154 = fmul fast float %3443, 0x3FF9999980000000
  %5155 = fsub fast float 5.000000e+00, %5154
  %5156 = call float @dx.op.unary.f32(i32 6, float %5086)  ; FAbs(value)
  %5157 = fsub fast float 1.000000e+00, %5156
  %5158 = fmul fast float %3443, 0x41D9660740000000
  %5159 = fadd fast float %5158, 0xC1EFBF8940000000
  %5160 = bitcast float %5157 to i32
  %5161 = sitofp i32 %5160 to float
  %5162 = fmul fast float %5161, %5155
  %5163 = fadd fast float %5159, %5162
  %5164 = fptosi float %5163 to i32
  %5165 = bitcast i32 %5164 to float
  %5166 = fsub fast float 1.000000e+00, %2167
  %5167 = fsub fast float 1.000000e+00, %2168
  %5168 = fsub fast float 1.000000e+00, %2176
  %5169 = fmul fast float %5165, %5166
  %5170 = fmul fast float %5165, %5167
  %5171 = fmul fast float %5165, %5168
  %5172 = fadd fast float %5169, %2167
  %5173 = fadd fast float %5170, %2168
  %5174 = fadd fast float %5171, %2176
  br i1 %3466, label %5175, label %5198

; <label>:5175                                    ; preds = %5057
  %5176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %1538, float %5156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5177 = extractvalue %dx.types.ResRet.f32 %5176, 0
  %5178 = extractvalue %dx.types.ResRet.f32 %5176, 1
  %5179 = extractvalue %dx.types.ResRet.f32 %5176, 2
  %5180 = fadd fast float %5177, -5.000000e-01
  %5181 = fadd fast float %5178, -5.000000e-01
  %5182 = fadd fast float %5179, -5.000000e-01
  %5183 = fmul fast float %2167, 4.000000e+00
  %5184 = fmul fast float %5183, %5166
  %5185 = fmul fast float %5184, %5180
  %5186 = fmul fast float %2168, 4.000000e+00
  %5187 = fmul fast float %5186, %5167
  %5188 = fmul fast float %5187, %5181
  %5189 = fmul fast float %2176, 4.000000e+00
  %5190 = fmul fast float %5189, %5168
  %5191 = fmul fast float %5190, %5182
  %5192 = fadd fast float %5185, %5172
  %5193 = fadd fast float %5188, %5173
  %5194 = fadd fast float %5191, %5174
  %5195 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5196 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5197 = call float @dx.op.unary.f32(i32 7, float %5194)  ; Saturate(value)
  br label %5198

; <label>:5198                                    ; preds = %5175, %5057
  %5199 = phi float [ %5195, %5175 ], [ %5172, %5057 ]
  %5200 = phi float [ %5196, %5175 ], [ %5173, %5057 ]
  %5201 = phi float [ %5197, %5175 ], [ %5174, %5057 ]
  %5202 = fmul fast float %5085, 9.843750e-01
  %5203 = fadd fast float %5202, 7.812500e-03
  %5204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5203, float %3447, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5205 = extractvalue %dx.types.ResRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.ResRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.ResRet.f32 %5204, 2
  %5208 = extractvalue %dx.types.ResRet.f32 %5204, 3
  %5209 = fsub fast float %5207, %5205
  %5210 = fsub fast float %5208, %5206
  %5211 = fmul fast float %5209, %3453
  %5212 = fmul fast float %5210, %3453
  %5213 = fadd fast float %5211, %5205
  %5214 = fadd fast float %5212, %5206
  %5215 = fmul fast float %5213, %2167
  %5216 = fmul fast float %5213, %2168
  %5217 = fmul fast float %5213, %2176
  %5218 = fadd fast float %5215, %5214
  %5219 = fadd fast float %5216, %5214
  %5220 = fadd fast float %5217, %5214
  br i1 %3466, label %5221, label %5244

; <label>:5221                                    ; preds = %5198
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %1538, float %5085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.ResRet.f32 %5222, 1
  %5225 = extractvalue %dx.types.ResRet.f32 %5222, 2
  %5226 = fadd fast float %5223, -5.000000e-01
  %5227 = fadd fast float %5224, -5.000000e-01
  %5228 = fadd fast float %5225, -5.000000e-01
  %5229 = fmul fast float %2167, 4.000000e+00
  %5230 = fmul fast float %5229, %5166
  %5231 = fmul fast float %5230, %5226
  %5232 = fmul fast float %2168, 4.000000e+00
  %5233 = fmul fast float %5232, %5167
  %5234 = fmul fast float %5233, %5227
  %5235 = fmul fast float %2176, 4.000000e+00
  %5236 = fmul fast float %5235, %5168
  %5237 = fmul fast float %5236, %5228
  %5238 = fadd fast float %5231, %5218
  %5239 = fadd fast float %5234, %5219
  %5240 = fadd fast float %5237, %5220
  %5241 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5242 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5243 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  br label %5244

; <label>:5244                                    ; preds = %5221, %5198
  %5245 = phi float [ %5241, %5221 ], [ %5218, %5198 ]
  %5246 = phi float [ %5242, %5221 ], [ %5219, %5198 ]
  %5247 = phi float [ %5243, %5221 ], [ %5220, %5198 ]
  %5248 = call float @dx.op.binary.f32(i32 35, float %5246, float %5247)  ; FMax(a,b)
  %5249 = call float @dx.op.binary.f32(i32 35, float %5245, float %5248)  ; FMax(a,b)
  %5250 = fsub fast float 1.000000e+00, %5249
  %5251 = fmul fast float %5199, %5153
  %5252 = fmul fast float %5200, %5153
  %5253 = fmul fast float %5201, %5153
  %5254 = fsub fast float 1.000000e+00, %5086
  %5255 = bitcast float %5254 to i32
  %5256 = sitofp i32 %5255 to float
  %5257 = fmul fast float %5256, 5.000000e+00
  %5258 = fadd fast float %5257, 0xC1EFBF8940000000
  %5259 = fptosi float %5258 to i32
  %5260 = bitcast i32 %5259 to float
  %5261 = fmul fast float %5260, %1537
  %5262 = fmul fast float %5250, %5261
  %5263 = fmul fast float %5262, %3516
  %5264 = fmul fast float %5262, %3517
  %5265 = fmul fast float %5262, %3518
  %5266 = fadd fast float %5263, %5251
  %5267 = fadd fast float %5264, %5252
  %5268 = fadd fast float %5265, %5253
  %5269 = fmul fast float %5074, %1558
  %5270 = fmul fast float %5269, %5092
  %5271 = fmul fast float %5270, %5250
  %5272 = fmul fast float %5075, %1558
  %5273 = fmul fast float %5272, %5092
  %5274 = fmul fast float %5273, %5250
  %5275 = fmul fast float %5076, %1558
  %5276 = fmul fast float %5275, %5092
  %5277 = fmul fast float %5276, %5250
  %5278 = fadd fast float %5271, %4753
  %5279 = fadd fast float %5274, %4754
  %5280 = fadd fast float %5277, %4755
  %5281 = fmul fast float %5270, %5266
  %5282 = fmul fast float %5273, %5267
  %5283 = fmul fast float %5276, %5268
  %5284 = fadd fast float %5281, %4750
  %5285 = fadd fast float %5282, %4751
  %5286 = fadd fast float %5283, %4752
  br label %4882

; <label>:5287                                    ; preds = %4882
  br label %5288

; <label>:5288                                    ; preds = %5287, %4716
  %5289 = phi float [ %4718, %4716 ], [ %4883, %5287 ]
  %5290 = phi float [ %4719, %4716 ], [ %4884, %5287 ]
  %5291 = phi float [ %4720, %4716 ], [ %4885, %5287 ]
  %5292 = phi float [ %4721, %4716 ], [ %4886, %5287 ]
  %5293 = phi float [ %4722, %4716 ], [ %4887, %5287 ]
  %5294 = phi float [ %4723, %4716 ], [ %4888, %5287 ]
  %5295 = add i32 %4717, 1
  %5296 = icmp ugt i32 %5295, %4713
  br i1 %5296, label %5297, label %4716

; <label>:5297                                    ; preds = %5288
  br label %5298

; <label>:5298                                    ; preds = %5297, %4666, %4656
  %5299 = phi float [ %4657, %4656 ], [ %4657, %4666 ], [ %5289, %5297 ]
  %5300 = phi float [ %4658, %4656 ], [ %4658, %4666 ], [ %5290, %5297 ]
  %5301 = phi float [ %4659, %4656 ], [ %4659, %4666 ], [ %5291, %5297 ]
  %5302 = phi float [ %4660, %4656 ], [ %4660, %4666 ], [ %5292, %5297 ]
  %5303 = phi float [ %4661, %4656 ], [ %4661, %4666 ], [ %5293, %5297 ]
  %5304 = phi float [ %4662, %4656 ], [ %4662, %4666 ], [ %5294, %5297 ]
  %5305 = fmul fast float %1558, %1558
  %5306 = fmul fast float %5305, %3542
  %5307 = fmul fast float %5305, %3543
  %5308 = fmul fast float %5305, %3544
  %5309 = fadd fast float %5306, 1.000000e+00
  %5310 = fadd fast float %5307, 1.000000e+00
  %5311 = fadd fast float %5308, 1.000000e+00
  %5312 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = fsub fast float 1.000000e+00, %5312
  %5314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.f32 %5314, 0
  %5316 = fmul fast float %5315, %3548
  %5317 = fmul fast float %2172, 2.000000e+00
  %5318 = fmul fast float %5317, %2179
  %5319 = fsub fast float %2161, %5318
  %5320 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5321 = fsub fast float 1.000000e+00, %5320
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 3
  %5324 = fmul fast float %5323, %5321
  %5325 = fsub fast float 1.000000e+00, %1533
  %5326 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5327 = fadd fast float %5304, %1532
  %5328 = fmul fast float %5327, %1533
  %5329 = fmul fast float %5324, %5326
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 3
  %5332 = fmul fast float %5302, %2164
  %5333 = fmul fast float %5303, %2165
  %5334 = fmul fast float %5304, %2166
  %5335 = fcmp fast ogt float %76, %183
  %5336 = and i1 %5335, %1969
  %5337 = or i1 %1975, %5336
  %5338 = icmp eq i32 %1968, 2
  %5339 = fcmp fast ole float %76, %183
  %5340 = and i1 %5339, %5338
  %5341 = or i1 %5340, %5337
  br i1 %5336, label %5342, label %5601

; <label>:5342                                    ; preds = %5298
  %5343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5343, 2
  %5345 = extractvalue %dx.types.CBufRet.f32 %5343, 3
  %5346 = fmul fast float %5344, %85
  %5347 = fmul fast float %5345, %86
  %5348 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5349 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5350 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %5348, float %5349, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  %5352 = extractvalue %dx.types.ResRet.f32 %5350, 1
  %5353 = extractvalue %dx.types.ResRet.f32 %5350, 2
  %5354 = extractvalue %dx.types.ResRet.f32 %5350, 3
  %5355 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %5348, float %5349, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5356 = extractvalue %dx.types.ResRet.f32 %5355, 0
  %5357 = extractvalue %dx.types.ResRet.f32 %5355, 1
  %5358 = extractvalue %dx.types.ResRet.f32 %5355, 2
  %5359 = extractvalue %dx.types.ResRet.f32 %5355, 3
  %5360 = call float @dx.op.binary.f32(i32 35, float %5352, float %5353)  ; FMax(a,b)
  %5361 = call float @dx.op.binary.f32(i32 35, float %5351, float %5360)  ; FMax(a,b)
  %5362 = call float @dx.op.binary.f32(i32 35, float %5361, float %5354)  ; FMax(a,b)
  %5363 = call float @dx.op.binary.f32(i32 36, float %5357, float %5358)  ; FMin(a,b)
  %5364 = call float @dx.op.binary.f32(i32 36, float %5356, float %5363)  ; FMin(a,b)
  %5365 = call float @dx.op.binary.f32(i32 36, float %5364, float %5359)  ; FMin(a,b)
  %5366 = fmul fast float %5362, 2.550000e+02
  %5367 = fadd fast float %5366, 0x3F70101020000000
  %5368 = fptoui float %5367 to i32
  %5369 = fmul fast float %5365, 2.550000e+02
  %5370 = fadd fast float %5369, 0x3F70101020000000
  %5371 = fptoui float %5370 to i32
  %5372 = icmp ult i32 %5368, %5371
  br i1 %5372, label %5373, label %5541

; <label>:5373                                    ; preds = %5342
  %5374 = fcmp fast ogt float %75, 9.843750e-01
  %5375 = fadd fast float %76, -4.000000e+00
  %5376 = select i1 %5374, float -4.000000e+00, float %5375
  %5377 = call float @dx.op.binary.f32(i32 35, float %5376, float 0.000000e+00)  ; FMax(a,b)
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 0
  %5380 = fadd fast float %5379, %5377
  %5381 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5382 = fmul fast float %5380, %5381
  %5383 = call float @dx.op.unary.f32(i32 23, float %5382)  ; Log(value)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5378, 3
  %5385 = fmul fast float %5384, %5383
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 2
  %5388 = fmul fast float %5385, %5387
  %5389 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5390 = uitofp i32 %5368 to float
  %5391 = uitofp i32 %5371 to float
  %5392 = fadd fast float %5390, 5.000000e-01
  %5393 = fadd fast float %5391, 5.000000e-01
  %5394 = fmul fast float %5387, %5392
  %5395 = fmul fast float %5387, %5393
  %5396 = fadd fast float %5394, 0x3F0FFB4800000000
  %5397 = fadd fast float %5395, 0xBF0FFB4800000000
  %5398 = call float @dx.op.binary.f32(i32 35, float %5389, float %5396)  ; FMax(a,b)
  %5399 = call float @dx.op.binary.f32(i32 36, float %5398, float %5397)  ; FMin(a,b)
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5402 = extractvalue %dx.types.CBufRet.f32 %5400, 2
  %5403 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5404 = fmul fast float %5401, %5399
  %5405 = fadd fast float %5403, %5404
  %5406 = fadd fast float %5403, %5402
  %5407 = fsub fast float %5401, %5402
  %5408 = fadd fast float %5407, %5403
  %5409 = call float @dx.op.binary.f32(i32 35, float %5405, float %5406)  ; FMax(a,b)
  %5410 = call float @dx.op.binary.f32(i32 36, float %5409, float %5408)  ; FMin(a,b)
  %5411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %5348, float %5349, float %5410, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.ResRet.f32 %5411, 1
  %5414 = extractvalue %dx.types.ResRet.f32 %5411, 2
  %5415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.i32 %5415, 0
  %5417 = extractvalue %dx.types.CBufRet.i32 %5415, 1
  %5418 = uitofp i32 %5416 to float
  %5419 = uitofp i32 %5417 to float
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 0
  %5422 = extractvalue %dx.types.CBufRet.f32 %5420, 1
  %5423 = fmul fast float %5418, %5348
  %5424 = fmul fast float %5419, %5349
  %5425 = fadd fast float %5423, -5.000000e-01
  %5426 = fadd fast float %5424, -5.000000e-01
  %5427 = call float @dx.op.unary.f32(i32 22, float %5425)  ; Frc(value)
  %5428 = call float @dx.op.unary.f32(i32 22, float %5426)  ; Frc(value)
  %5429 = fmul fast float %5427, %5427
  %5430 = fmul fast float %5429, %5427
  %5431 = fsub fast float 3.000000e+00, %5427
  %5432 = fmul fast float %5429, %5431
  %5433 = fmul fast float %5427, 3.000000e+00
  %5434 = fmul fast float %5430, 3.000000e+00
  %5435 = fmul fast float %5429, 6.000000e+00
  %5436 = fsub fast float %5434, %5435
  %5437 = fadd fast float %5436, 4.000000e+00
  %5438 = fmul fast float %5437, 0x3FC5555560000000
  %5439 = fmul fast float %5430, -3.000000e+00
  %5440 = fadd fast float %5429, %5427
  %5441 = fmul fast float %5440, 3.000000e+00
  %5442 = fadd fast float %5439, 1.000000e+00
  %5443 = fadd fast float %5442, %5441
  %5444 = fmul fast float %5430, 0x3FC5555560000000
  %5445 = fmul fast float %5428, %5428
  %5446 = fmul fast float %5445, %5428
  %5447 = fsub fast float 3.000000e+00, %5428
  %5448 = fmul fast float %5445, %5447
  %5449 = fmul fast float %5428, 3.000000e+00
  %5450 = fmul fast float %5446, 3.000000e+00
  %5451 = fmul fast float %5445, 6.000000e+00
  %5452 = fsub fast float %5450, %5451
  %5453 = fadd fast float %5452, 4.000000e+00
  %5454 = fmul fast float %5453, 0x3FC5555560000000
  %5455 = fmul fast float %5446, -3.000000e+00
  %5456 = fadd fast float %5445, %5428
  %5457 = fmul fast float %5456, 3.000000e+00
  %5458 = fadd fast float %5455, 1.000000e+00
  %5459 = fadd fast float %5458, %5457
  %5460 = fmul fast float %5446, 0x3FC5555560000000
  %5461 = fadd fast float %5427, 1.000000e+00
  %5462 = fsub fast float 1.000000e+00, %5433
  %5463 = fadd fast float %5462, %5432
  %5464 = fadd fast float %5463, %5437
  %5465 = fmul fast float %5464, 0x3FC5555560000000
  %5466 = fdiv fast float %5438, %5465
  %5467 = fsub fast float %5461, %5466
  %5468 = fsub fast float 1.000000e+00, %5427
  %5469 = fadd fast float %5443, %5430
  %5470 = fmul fast float %5469, 0x3FC5555560000000
  %5471 = fdiv fast float %5444, %5470
  %5472 = fadd fast float %5468, %5471
  %5473 = fadd fast float %5428, 1.000000e+00
  %5474 = fsub fast float 1.000000e+00, %5449
  %5475 = fadd fast float %5474, %5448
  %5476 = fadd fast float %5475, %5453
  %5477 = fmul fast float %5476, 0x3FC5555560000000
  %5478 = fdiv fast float %5454, %5477
  %5479 = fsub fast float %5473, %5478
  %5480 = fsub fast float 1.000000e+00, %5428
  %5481 = fadd fast float %5459, %5446
  %5482 = fmul fast float %5481, 0x3FC5555560000000
  %5483 = fdiv fast float %5460, %5482
  %5484 = fadd fast float %5483, %5480
  %5485 = fmul fast float %5467, %5421
  %5486 = fsub fast float %5348, %5485
  %5487 = fmul fast float %5472, %5421
  %5488 = fadd fast float %5487, %5348
  %5489 = fmul fast float %5484, %5422
  %5490 = fadd fast float %5489, %5349
  %5491 = fmul fast float %5479, %5422
  %5492 = fsub fast float %5349, %5491
  %5493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %5486, float %5492, float %5410, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5494 = extractvalue %dx.types.ResRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.ResRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.ResRet.f32 %5493, 2
  %5497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %5488, float %5492, float %5410, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5498 = extractvalue %dx.types.ResRet.f32 %5497, 0
  %5499 = extractvalue %dx.types.ResRet.f32 %5497, 1
  %5500 = extractvalue %dx.types.ResRet.f32 %5497, 2
  %5501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %5486, float %5490, float %5410, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5502 = extractvalue %dx.types.ResRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.ResRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.ResRet.f32 %5501, 2
  %5505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %5488, float %5490, float %5410, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5506 = extractvalue %dx.types.ResRet.f32 %5505, 0
  %5507 = extractvalue %dx.types.ResRet.f32 %5505, 1
  %5508 = extractvalue %dx.types.ResRet.f32 %5505, 2
  %5509 = fsub fast float %5502, %5494
  %5510 = fsub fast float %5503, %5495
  %5511 = fsub fast float %5504, %5496
  %5512 = fmul fast float %5509, %5482
  %5513 = fmul fast float %5510, %5482
  %5514 = fmul fast float %5511, %5482
  %5515 = fadd fast float %5512, %5494
  %5516 = fadd fast float %5513, %5495
  %5517 = fadd fast float %5514, %5496
  %5518 = fsub fast float %5506, %5498
  %5519 = fsub fast float %5507, %5499
  %5520 = fsub fast float %5508, %5500
  %5521 = fmul fast float %5518, %5482
  %5522 = fmul fast float %5519, %5482
  %5523 = fmul fast float %5520, %5482
  %5524 = fsub fast float %5498, %5515
  %5525 = fadd fast float %5524, %5521
  %5526 = fsub fast float %5499, %5516
  %5527 = fadd fast float %5526, %5522
  %5528 = fsub fast float %5500, %5517
  %5529 = fadd fast float %5528, %5523
  %5530 = fmul fast float %5525, %5470
  %5531 = fmul fast float %5527, %5470
  %5532 = fmul fast float %5529, %5470
  %5533 = fadd fast float %5530, %5515
  %5534 = fadd fast float %5531, %5516
  %5535 = fadd fast float %5532, %5517
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 1
  %5538 = fmul fast float %5533, %5537
  %5539 = fmul fast float %5534, %5537
  %5540 = fmul fast float %5535, %5537
  br label %5541

; <label>:5541                                    ; preds = %5373, %5342
  %5542 = phi float [ %5412, %5373 ], [ 1.000000e+00, %5342 ]
  %5543 = phi float [ %5413, %5373 ], [ 1.000000e+00, %5342 ]
  %5544 = phi float [ %5414, %5373 ], [ 1.000000e+00, %5342 ]
  %5545 = phi float [ %5538, %5373 ], [ 0.000000e+00, %5342 ]
  %5546 = phi float [ %5539, %5373 ], [ 0.000000e+00, %5342 ]
  %5547 = phi float [ %5540, %5373 ], [ 0.000000e+00, %5342 ]
  %5548 = fmul fast float %5545, %5313
  %5549 = fmul fast float %5546, %5313
  %5550 = fmul fast float %5547, %5313
  %5551 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5543, float %5544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5549, float %5550, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5553 = select i1 %223, float %5551, float %5542
  %5554 = select i1 %223, float %5551, float %5543
  %5555 = select i1 %223, float 1.000000e+00, float %5544
  %5556 = select i1 %223, float %5552, float %5548
  %5557 = select i1 %223, float 0.000000e+00, float %5549
  %5558 = select i1 %223, float 0.000000e+00, float %5550
  %5559 = fmul fast float %5553, %5332
  %5560 = fmul fast float %5554, %5333
  %5561 = fmul fast float %5555, %5334
  %5562 = fadd fast float %5559, %5556
  %5563 = fadd fast float %5560, %5557
  %5564 = fadd fast float %5558, %5561
  %5565 = fmul fast float %5553, %5299
  %5566 = fmul fast float %5554, %5300
  %5567 = fmul fast float %5555, %5301
  %5568 = fmul fast float %85, 2.000000e+00
  %5569 = fmul fast float %5568, %5344
  %5570 = fmul fast float %86, 2.000000e+00
  %5571 = fmul fast float %5570, %5345
  %5572 = fsub fast float 1.000000e+00, %5569
  %5573 = fsub fast float 1.000000e+00, %5571
  %5574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.f32 %5574, 0
  %5576 = extractvalue %dx.types.CBufRet.f32 %5574, 1
  %5577 = extractvalue %dx.types.CBufRet.f32 %5574, 2
  %5578 = fmul fast float %5572, %5575
  %5579 = fmul fast float %5572, %5576
  %5580 = fmul fast float %5572, %5577
  %5581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5582 = extractvalue %dx.types.CBufRet.f32 %5581, 0
  %5583 = extractvalue %dx.types.CBufRet.f32 %5581, 1
  %5584 = extractvalue %dx.types.CBufRet.f32 %5581, 2
  %5585 = fmul fast float %5573, %5582
  %5586 = fmul fast float %5573, %5583
  %5587 = fmul fast float %5573, %5584
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5591 = extractvalue %dx.types.CBufRet.f32 %5588, 2
  %5592 = fadd fast float %5585, %5589
  %5593 = fadd fast float %5592, %5578
  %5594 = fadd fast float %5586, %5590
  %5595 = fadd fast float %5594, %5579
  %5596 = fadd fast float %5587, %5591
  %5597 = fadd fast float %5596, %5580
  %5598 = fmul fast float %5593, %183
  %5599 = fmul fast float %5595, %183
  %5600 = fmul fast float %5597, %183
  br label %5601

; <label>:5601                                    ; preds = %5541, %5298
  %5602 = phi float [ %5598, %5541 ], [ %132, %5298 ]
  %5603 = phi float [ %5599, %5541 ], [ %133, %5298 ]
  %5604 = phi float [ %5600, %5541 ], [ %134, %5298 ]
  %5605 = phi float [ %183, %5541 ], [ %76, %5298 ]
  %5606 = phi float [ %5562, %5541 ], [ %5332, %5298 ]
  %5607 = phi float [ %5563, %5541 ], [ %5333, %5298 ]
  %5608 = phi float [ %5564, %5541 ], [ %5334, %5298 ]
  %5609 = phi float [ %5565, %5541 ], [ %5299, %5298 ]
  %5610 = phi float [ %5566, %5541 ], [ %5300, %5298 ]
  %5611 = phi float [ %5567, %5541 ], [ %5301, %5298 ]
  %5612 = phi float [ %5542, %5541 ], [ 1.000000e+00, %5298 ]
  br i1 %5341, label %6767, label %5613

; <label>:5613                                    ; preds = %5601
  %5614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.f32 %5614, 0
  %5616 = extractvalue %dx.types.CBufRet.f32 %5614, 1
  %5617 = extractvalue %dx.types.CBufRet.f32 %5614, 2
  %5618 = extractvalue %dx.types.CBufRet.f32 %5614, 3
  %5619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5620 = extractvalue %dx.types.CBufRet.f32 %5619, 0
  %5621 = extractvalue %dx.types.CBufRet.f32 %5619, 1
  %5622 = extractvalue %dx.types.CBufRet.f32 %5619, 2
  %5623 = extractvalue %dx.types.CBufRet.f32 %5619, 3
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  %5626 = extractvalue %dx.types.CBufRet.f32 %5624, 1
  %5627 = extractvalue %dx.types.CBufRet.f32 %5624, 2
  %5628 = extractvalue %dx.types.CBufRet.f32 %5624, 3
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 0
  %5631 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5632 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5633 = extractvalue %dx.types.CBufRet.f32 %5629, 3
  %5634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5635 = extractvalue %dx.types.CBufRet.f32 %5634, 3
  %5636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5637 = extractvalue %dx.types.CBufRet.f32 %5636, 3
  %5638 = extractvalue %dx.types.CBufRet.f32 %5636, 0
  %5639 = extractvalue %dx.types.CBufRet.f32 %5636, 1
  %5640 = extractvalue %dx.types.CBufRet.f32 %5636, 2
  %5641 = fcmp fast olt float %5640, -5.000000e-01
  %5642 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float %5602, float %5603, float %5604)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = call float @dx.op.unary.f32(i32 25, float %5642)  ; Rsqrt(value)
  %5644 = fmul fast float %5643, %5642
  %5645 = fmul fast float %5643, %5602
  %5646 = fmul fast float %5643, %5603
  %5647 = fmul fast float %5643, %5604
  %5648 = fadd fast float %5644, %5618
  %5649 = call float @dx.op.dot3.f32(i32 55, float %5645, float %5646, float %5647, float %5615, float %5616, float %5617)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.i32 %5650, 1
  %5652 = and i32 %5651, 1
  %5653 = icmp ne i32 %5652, 0
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 2
  %5656 = fcmp fast ogt float %5655, 0.000000e+00
  %5657 = and i1 %5653, %5656
  br i1 %5657, label %5658, label %6064, !dx.controlflow.hints !127

; <label>:5658                                    ; preds = %5613
  %5659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5660 = extractvalue %dx.types.CBufRet.f32 %5659, 3
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 2
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 2
  %5665 = fsub fast float %5662, %5664
  %5666 = and i32 %5651, 2
  %5667 = extractvalue %dx.types.CBufRet.i32 %5650, 0
  %5668 = call i32 @dx.op.binary.i32(i32 40, i32 %5667, i32 3)  ; UMin(a,b)
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.CBufRet.f32 %5669, 1
  %5672 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5673 = extractvalue %dx.types.CBufRet.f32 %5663, 1
  %5674 = fsub fast float %5670, %5672
  %5675 = fsub fast float %5671, %5673
  %5676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.f32 %5676, 0
  %5678 = fcmp fast ogt float %5677, 0.000000e+00
  %5679 = fsub fast float -0.000000e+00, %5674
  %5680 = fsub fast float -0.000000e+00, %5675
  %5681 = call float @dx.op.dot2.f32(i32 54, float %5645, float %5646, float %5645, float %5646)  ; Dot2(ax,ay,bx,by)
  %5682 = call float @dx.op.dot2.f32(i32 54, float %5645, float %5646, float %5679, float %5680)  ; Dot2(ax,ay,bx,by)
  %5683 = fmul fast float %5682, 2.000000e+00
  %5684 = call float @dx.op.dot2.f32(i32 54, float %5679, float %5680, float %5679, float %5680)  ; Dot2(ax,ay,bx,by)
  %5685 = fmul fast float %5677, %5677
  %5686 = fsub fast float %5684, %5685
  %5687 = fmul fast float %5683, %5683
  %5688 = fmul fast float %5681, 4.000000e+00
  %5689 = fmul fast float %5688, %5686
  %5690 = fsub fast float %5687, %5689
  %5691 = fcmp fast ogt float %5690, 0.000000e+00
  br i1 %5691, label %5692, label %5707

; <label>:5692                                    ; preds = %5658
  %5693 = fcmp fast ogt float %5683, 0.000000e+00
  %5694 = call float @dx.op.unary.f32(i32 24, float %5690)  ; Sqrt(value)
  %5695 = fsub fast float -0.000000e+00, %5694
  %5696 = select i1 %5693, float %5694, float %5695
  %5697 = fadd fast float %5696, %5683
  %5698 = fmul float %5697, -5.000000e-01
  %5699 = fdiv fast float %5698, %5681
  %5700 = call float @dx.op.binary.f32(i32 35, float %5699, float 0.000000e+00)  ; FMax(a,b)
  %5701 = call float @dx.op.binary.f32(i32 36, float %5644, float %5700)  ; FMin(a,b)
  %5702 = fdiv fast float %5686, %5698
  %5703 = call float @dx.op.binary.f32(i32 35, float %5702, float 0.000000e+00)  ; FMax(a,b)
  %5704 = call float @dx.op.binary.f32(i32 36, float %5644, float %5703)  ; FMin(a,b)
  %5705 = call float @dx.op.binary.f32(i32 36, float %5701, float %5704)  ; FMin(a,b)
  %5706 = call float @dx.op.binary.f32(i32 35, float %5701, float %5704)  ; FMax(a,b)
  br label %5707

; <label>:5707                                    ; preds = %5692, %5658
  %5708 = phi float [ %5706, %5692 ], [ -1.000000e+00, %5658 ]
  %5709 = phi float [ %5705, %5692 ], [ -1.000000e+00, %5658 ]
  %5710 = phi i1 [ true, %5692 ], [ false, %5658 ]
  %5711 = and i1 %5678, %5710
  br i1 %5711, label %5712, label %5714

; <label>:5712                                    ; preds = %5707
  %5713 = fcmp fast oeq float %5709, %5708
  br i1 %5713, label %6017, label %5715

; <label>:5714                                    ; preds = %5707
  br i1 %5678, label %6017, label %5715

; <label>:5715                                    ; preds = %5714, %5712
  %5716 = phi float [ %5644, %5714 ], [ %5708, %5712 ]
  %5717 = phi float [ 0.000000e+00, %5714 ], [ %5709, %5712 ]
  %5718 = icmp ne i32 %5666, 0
  %5719 = fmul fast float %5716, %5647
  %5720 = fadd fast float %5719, %5660
  %5721 = fmul fast float %5720, %5716
  %5722 = select i1 %5718, float 0.000000e+00, float %5721
  %5723 = fcmp fast oeq float %5647, 0.000000e+00
  %5724 = fdiv fast float %5665, %5647
  %5725 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5724)  ; FMax(a,b)
  %5726 = select i1 %5723, float %5716, float %5725
  %5727 = call float @dx.op.binary.f32(i32 36, float %5716, float %5726)  ; FMin(a,b)
  %5728 = fcmp fast ogt float %5647, 0.000000e+00
  %5729 = fcmp fast olt float %5665, 0.000000e+00
  br i1 %5728, label %5730, label %5787

; <label>:5730                                    ; preds = %5715
  %5731 = icmp eq i32 %5666, 0
  br i1 %5729, label %5732, label %5776

; <label>:5732                                    ; preds = %5730
  %5733 = select i1 %5731, float %5716, float 0.000000e+00
  %5734 = fsub fast float -0.000000e+00, %5733
  %5735 = call float @dx.op.unary.f32(i32 6, float %5734)  ; FAbs(value)
  %5736 = fmul fast float %5733, %5647
  %5737 = fadd fast float %5736, %5660
  %5738 = fmul fast float %5735, %5737
  %5739 = fsub fast float %5722, %5738
  %5740 = fsub fast float %5716, %5735
  %5741 = select i1 %5731, float %5740, float 0.000000e+00
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %5744 = extractvalue %dx.types.CBufRet.f32 %5742, 1
  %5745 = extractvalue %dx.types.CBufRet.f32 %5742, 2
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5749 = extractvalue %dx.types.CBufRet.f32 %5746, 2
  %5750 = extractvalue %dx.types.CBufRet.f32 %5746, 3
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 3
  %5753 = call float @dx.op.binary.f32(i32 36, float %5739, float %5752)  ; FMin(a,b)
  %5754 = fmul fast float %5750, %5741
  %5755 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5756 = fsub fast float %5747, %5743
  %5757 = fsub fast float %5748, %5744
  %5758 = fsub fast float %5749, %5745
  %5759 = fmul fast float %5755, %5756
  %5760 = fmul fast float %5755, %5757
  %5761 = fmul fast float %5755, %5758
  %5762 = fadd fast float %5759, %5743
  %5763 = fadd fast float %5760, %5744
  %5764 = fadd fast float %5761, %5745
  %5765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.CBufRet.f32 %5765, 1
  %5768 = fadd fast float %5767, %5766
  %5769 = call float @dx.op.unary.f32(i32 7, float %5768)  ; Saturate(value)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5765, 2
  %5771 = extractvalue %dx.types.CBufRet.f32 %5765, 3
  %5772 = fadd fast float %5771, %5770
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = fmul fast float %5769, %5753
  %5775 = fmul fast float %5774, %5773
  br label %6017

; <label>:5776                                    ; preds = %5730
  br i1 %5731, label %5777, label %5798

; <label>:5777                                    ; preds = %5776
  %5778 = call float @dx.op.binary.f32(i32 36, float %5727, float %5717)  ; FMin(a,b)
  %5779 = fsub fast float %5727, %5778
  %5780 = fsub fast float %5779, %5716
  %5781 = call float @dx.op.unary.f32(i32 6, float %5780)  ; FAbs(value)
  %5782 = fadd fast float %5779, %5716
  %5783 = fmul fast float %5782, %5647
  %5784 = fadd fast float %5783, %5660
  %5785 = fmul fast float %5784, %5781
  %5786 = fsub fast float %5722, %5785
  br label %5798

; <label>:5787                                    ; preds = %5715
  br i1 %5729, label %5788, label %5798

; <label>:5788                                    ; preds = %5787
  %5789 = call float @dx.op.binary.f32(i32 35, float %5717, float %5727)  ; FMax(a,b)
  %5790 = icmp eq i32 %5666, 0
  %5791 = select i1 %5790, float %5727, float 0.000000e+00
  %5792 = fsub fast float -0.000000e+00, %5791
  %5793 = call float @dx.op.unary.f32(i32 6, float %5792)  ; FAbs(value)
  %5794 = fmul fast float %5791, %5647
  %5795 = fadd fast float %5794, %5660
  %5796 = fmul fast float %5793, %5795
  %5797 = fsub fast float %5722, %5796
  br label %5798

; <label>:5798                                    ; preds = %5788, %5787, %5777, %5776
  %5799 = phi float [ %5717, %5776 ], [ %5717, %5777 ], [ %5789, %5788 ], [ %5717, %5787 ]
  %5800 = phi float [ 0.000000e+00, %5776 ], [ %5781, %5777 ], [ %5793, %5788 ], [ 0.000000e+00, %5787 ]
  %5801 = phi float [ %5722, %5776 ], [ %5786, %5777 ], [ %5797, %5788 ], [ %5722, %5787 ]
  %5802 = phi float [ %5727, %5776 ], [ %5727, %5777 ], [ %5716, %5788 ], [ %5716, %5787 ]
  %5803 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float -1.000000e+00, float* %5803, align 4, !tbaa !128, !noalias !130
  %5804 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float -1.000000e+00, float* %5804, align 4, !tbaa !128, !noalias !130
  %5805 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float -1.000000e+00, float* %5805, align 4, !tbaa !128, !noalias !130
  %5806 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  store float -1.000000e+00, float* %5806, align 4, !tbaa !128, !noalias !130
  %5807 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 1
  store float -1.000000e+00, float* %5807, align 4, !tbaa !128, !noalias !130
  %5808 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 2
  store float -1.000000e+00, float* %5808, align 4, !tbaa !128, !noalias !130
  %5809 = icmp sgt i32 %5668, 0
  br i1 %5809, label %5810, label %5871

; <label>:5810                                    ; preds = %5798
  br label %5811

; <label>:5811                                    ; preds = %5860, %5810
  %5812 = phi i32 [ %5861, %5860 ], [ 0, %5810 ]
  %5813 = phi i32 [ %5862, %5860 ], [ 0, %5810 ]
  %5814 = add nuw i32 %5813, 171
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %5814)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5820 = extractvalue %dx.types.CBufRet.f32 %5818, 1
  %5821 = fsub fast float %5816, %5819
  %5822 = fsub fast float %5817, %5820
  %5823 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5824 = fsub fast float -0.000000e+00, %5821
  %5825 = fsub fast float -0.000000e+00, %5822
  %5826 = call float @dx.op.dot2.f32(i32 54, float %5645, float %5646, float %5824, float %5825)  ; Dot2(ax,ay,bx,by)
  %5827 = fmul fast float %5826, 2.000000e+00
  %5828 = call float @dx.op.dot2.f32(i32 54, float %5824, float %5825, float %5824, float %5825)  ; Dot2(ax,ay,bx,by)
  %5829 = fmul fast float %5823, %5823
  %5830 = fsub fast float %5828, %5829
  %5831 = fmul fast float %5827, %5827
  %5832 = fmul fast float %5688, %5830
  %5833 = fsub fast float %5831, %5832
  %5834 = fcmp fast ogt float %5833, 0.000000e+00
  br i1 %5834, label %5835, label %5850

; <label>:5835                                    ; preds = %5811
  %5836 = fcmp fast ogt float %5827, 0.000000e+00
  %5837 = call float @dx.op.unary.f32(i32 24, float %5833)  ; Sqrt(value)
  %5838 = fsub fast float -0.000000e+00, %5837
  %5839 = select i1 %5836, float %5837, float %5838
  %5840 = fadd fast float %5839, %5827
  %5841 = fmul float %5840, -5.000000e-01
  %5842 = fdiv fast float %5841, %5681
  %5843 = call float @dx.op.binary.f32(i32 35, float %5842, float 0.000000e+00)  ; FMax(a,b)
  %5844 = call float @dx.op.binary.f32(i32 36, float %5716, float %5843)  ; FMin(a,b)
  %5845 = fdiv fast float %5830, %5841
  %5846 = call float @dx.op.binary.f32(i32 35, float %5845, float 0.000000e+00)  ; FMax(a,b)
  %5847 = call float @dx.op.binary.f32(i32 36, float %5716, float %5846)  ; FMin(a,b)
  %5848 = call float @dx.op.binary.f32(i32 36, float %5844, float %5847)  ; FMin(a,b)
  %5849 = call float @dx.op.binary.f32(i32 35, float %5844, float %5847)  ; FMax(a,b)
  br label %5850

; <label>:5850                                    ; preds = %5835, %5811
  %5851 = phi float [ %5849, %5835 ], [ -1.000000e+00, %5811 ]
  %5852 = phi float [ %5848, %5835 ], [ -1.000000e+00, %5811 ]
  %5853 = phi i1 [ true, %5835 ], [ false, %5811 ]
  br i1 %5853, label %5854, label %5860

; <label>:5854                                    ; preds = %5850
  %5855 = call float @dx.op.binary.f32(i32 35, float %5799, float %5852)  ; FMax(a,b)
  %5856 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5813
  store float %5855, float* %5856, align 4, !tbaa !128, !noalias !130
  %5857 = call float @dx.op.binary.f32(i32 35, float %5799, float %5851)  ; FMax(a,b)
  %5858 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5813
  store float %5857, float* %5858, align 4, !tbaa !128, !noalias !130
  %5859 = add nsw i32 %5812, 1
  br label %5860

; <label>:5860                                    ; preds = %5854, %5850
  %5861 = phi i32 [ %5859, %5854 ], [ %5812, %5850 ]
  %5862 = add nuw nsw i32 %5813, 1
  %5863 = icmp eq i32 %5862, %5668
  br i1 %5863, label %5864, label %5811

; <label>:5864                                    ; preds = %5860
  %5865 = load float, float* %5805, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %5866 = load float, float* %5804, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %5867 = load float, float* %5803, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %5868 = load float, float* %5808, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %5869 = load float, float* %5807, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %5870 = load float, float* %5806, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %5871

; <label>:5871                                    ; preds = %5864, %5798
  %5872 = phi float [ -1.000000e+00, %5798 ], [ %5870, %5864 ]
  %5873 = phi float [ -1.000000e+00, %5798 ], [ %5869, %5864 ]
  %5874 = phi float [ -1.000000e+00, %5798 ], [ %5868, %5864 ]
  %5875 = phi float [ -1.000000e+00, %5798 ], [ %5867, %5864 ]
  %5876 = phi float [ -1.000000e+00, %5798 ], [ %5866, %5864 ]
  %5877 = phi float [ -1.000000e+00, %5798 ], [ %5865, %5864 ]
  %5878 = phi i32 [ 0, %5798 ], [ %5861, %5864 ]
  %5879 = call float @dx.op.binary.f32(i32 36, float %5876, float %5877)  ; FMin(a,b)
  %5880 = call float @dx.op.binary.f32(i32 36, float %5875, float %5879)  ; FMin(a,b)
  %5881 = call float @dx.op.binary.f32(i32 35, float %5875, float %5876)  ; FMax(a,b)
  %5882 = call float @dx.op.binary.f32(i32 36, float %5881, float %5877)  ; FMin(a,b)
  %5883 = call float @dx.op.binary.f32(i32 36, float %5875, float %5876)  ; FMin(a,b)
  %5884 = call float @dx.op.binary.f32(i32 35, float %5883, float %5882)  ; FMax(a,b)
  %5885 = call float @dx.op.binary.f32(i32 35, float %5876, float %5877)  ; FMax(a,b)
  %5886 = call float @dx.op.binary.f32(i32 35, float %5875, float %5885)  ; FMax(a,b)
  store float %5880, float* %5803, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %5884, float* %5804, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %5886, float* %5805, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %5887 = call float @dx.op.binary.f32(i32 36, float %5873, float %5874)  ; FMin(a,b)
  %5888 = call float @dx.op.binary.f32(i32 36, float %5872, float %5887)  ; FMin(a,b)
  %5889 = call float @dx.op.binary.f32(i32 35, float %5872, float %5873)  ; FMax(a,b)
  %5890 = call float @dx.op.binary.f32(i32 36, float %5889, float %5874)  ; FMin(a,b)
  %5891 = call float @dx.op.binary.f32(i32 36, float %5872, float %5873)  ; FMin(a,b)
  %5892 = call float @dx.op.binary.f32(i32 35, float %5891, float %5890)  ; FMax(a,b)
  %5893 = call float @dx.op.binary.f32(i32 35, float %5873, float %5874)  ; FMax(a,b)
  %5894 = call float @dx.op.binary.f32(i32 35, float %5872, float %5893)  ; FMax(a,b)
  store float %5888, float* %5806, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %5892, float* %5807, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %5894, float* %5808, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %5895 = sub nsw i32 3, %5878
  %5896 = icmp sgt i32 %5895, 2
  br i1 %5896, label %5897, label %5935

; <label>:5897                                    ; preds = %5871
  %5898 = icmp eq i32 %5666, 0
  %5899 = fsub fast float %5716, %5800
  %5900 = select i1 %5898, float %5899, float %5800
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5904 = extractvalue %dx.types.CBufRet.f32 %5901, 2
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5908 = extractvalue %dx.types.CBufRet.f32 %5905, 2
  %5909 = extractvalue %dx.types.CBufRet.f32 %5905, 3
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 3
  %5912 = call float @dx.op.binary.f32(i32 36, float %5801, float %5911)  ; FMin(a,b)
  %5913 = fmul fast float %5909, %5900
  %5914 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  %5915 = fsub fast float %5906, %5902
  %5916 = fsub fast float %5907, %5903
  %5917 = fsub fast float %5908, %5904
  %5918 = fmul fast float %5914, %5915
  %5919 = fmul fast float %5914, %5916
  %5920 = fmul fast float %5914, %5917
  %5921 = fadd fast float %5918, %5902
  %5922 = fadd fast float %5919, %5903
  %5923 = fadd fast float %5920, %5904
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5927 = fadd fast float %5926, %5925
  %5928 = call float @dx.op.unary.f32(i32 7, float %5927)  ; Saturate(value)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5930 = extractvalue %dx.types.CBufRet.f32 %5924, 3
  %5931 = fadd fast float %5930, %5929
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5933 = fmul fast float %5928, %5912
  %5934 = fmul fast float %5933, %5932
  br label %6017

; <label>:5935                                    ; preds = %5871
  %5936 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5895
  %5937 = load float, float* %5936, align 4, !tbaa !128, !noalias !130
  %5938 = fcmp fast olt float %5937, %5802
  %5939 = icmp sgt i32 %5878, 0
  %5940 = and i1 %5939, %5938
  br i1 %5940, label %5941, label %5978

; <label>:5941                                    ; preds = %5935
  br label %5942

; <label>:5942                                    ; preds = %5971, %5941
  %5943 = phi float [ %5972, %5971 ], [ %5800, %5941 ]
  %5944 = phi float [ %5973, %5971 ], [ %5801, %5941 ]
  %5945 = phi float [ %5953, %5971 ], [ %5937, %5941 ]
  %5946 = phi i32 [ %5950, %5971 ], [ %5895, %5941 ]
  %5947 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5946
  %5948 = load float, float* %5947, align 4, !tbaa !128, !noalias !130
  %5949 = icmp slt i32 %5946, 2
  %5950 = add nsw i32 %5946, 1
  %5951 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5950
  %5952 = load float, float* %5951, align 4, !tbaa !128, !noalias !130
  %5953 = select i1 %5949, float %5952, float %5716
  %5954 = call float @dx.op.binary.f32(i32 36, float %5953, float %5948)  ; FMin(a,b)
  %5955 = call float @dx.op.binary.f32(i32 36, float %5802, float %5954)  ; FMin(a,b)
  %5956 = icmp eq i32 %5666, 0
  %5957 = fadd fast float %5955, %5945
  %5958 = fmul fast float %5957, %5647
  %5959 = fadd fast float %5958, %5660
  br i1 %5956, label %5965, label %5960

; <label>:5960                                    ; preds = %5942
  %5961 = fsub fast float %5955, %5945
  %5962 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5961)  ; FMax(a,b)
  %5963 = fmul fast float %5962, %5959
  %5964 = fadd fast float %5963, %5944
  br label %5971

; <label>:5965                                    ; preds = %5942
  %5966 = fsub fast float %5945, %5955
  %5967 = call float @dx.op.unary.f32(i32 6, float %5966)  ; FAbs(value)
  %5968 = fadd fast float %5967, %5943
  %5969 = fmul fast float %5967, %5959
  %5970 = fsub fast float %5944, %5969
  br label %5971

; <label>:5971                                    ; preds = %5965, %5960
  %5972 = phi float [ %5962, %5960 ], [ %5968, %5965 ]
  %5973 = phi float [ %5964, %5960 ], [ %5970, %5965 ]
  %5974 = fcmp fast olt float %5953, %5802
  %5975 = icmp slt i32 %5950, 3
  %5976 = and i1 %5975, %5974
  br i1 %5976, label %5942, label %5977

; <label>:5977                                    ; preds = %5971
  br label %5978

; <label>:5978                                    ; preds = %5977, %5935
  %5979 = phi float [ %5800, %5935 ], [ %5972, %5977 ]
  %5980 = phi float [ %5801, %5935 ], [ %5973, %5977 ]
  %5981 = fsub fast float %5716, %5979
  %5982 = select i1 %5718, float %5979, float %5981
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5986 = extractvalue %dx.types.CBufRet.f32 %5983, 2
  %5987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5987, 0
  %5989 = extractvalue %dx.types.CBufRet.f32 %5987, 1
  %5990 = extractvalue %dx.types.CBufRet.f32 %5987, 2
  %5991 = extractvalue %dx.types.CBufRet.f32 %5987, 3
  %5992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.f32 %5992, 3
  %5994 = call float @dx.op.binary.f32(i32 36, float %5980, float %5993)  ; FMin(a,b)
  %5995 = fmul fast float %5991, %5982
  %5996 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5997 = fsub fast float %5988, %5984
  %5998 = fsub fast float %5989, %5985
  %5999 = fsub fast float %5990, %5986
  %6000 = fmul fast float %5996, %5997
  %6001 = fmul fast float %5996, %5998
  %6002 = fmul fast float %5996, %5999
  %6003 = fadd fast float %6000, %5984
  %6004 = fadd fast float %6001, %5985
  %6005 = fadd fast float %6002, %5986
  %6006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6007 = extractvalue %dx.types.CBufRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.CBufRet.f32 %6006, 1
  %6009 = fadd fast float %6008, %6007
  %6010 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6011 = extractvalue %dx.types.CBufRet.f32 %6006, 2
  %6012 = extractvalue %dx.types.CBufRet.f32 %6006, 3
  %6013 = fadd fast float %6012, %6011
  %6014 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6015 = fmul fast float %6010, %5994
  %6016 = fmul fast float %6015, %6014
  br label %6017

; <label>:6017                                    ; preds = %5978, %5897, %5732, %5714, %5712
  %6018 = phi float [ %5741, %5732 ], [ %5900, %5897 ], [ %5982, %5978 ], [ 0.000000e+00, %5712 ], [ 0.000000e+00, %5714 ]
  %6019 = phi float [ %5775, %5732 ], [ %5934, %5897 ], [ %6016, %5978 ], [ 0.000000e+00, %5712 ], [ 0.000000e+00, %5714 ]
  %6020 = phi float [ %5762, %5732 ], [ %5921, %5897 ], [ %6003, %5978 ], [ 0.000000e+00, %5712 ], [ 0.000000e+00, %5714 ]
  %6021 = phi float [ %5763, %5732 ], [ %5922, %5897 ], [ %6004, %5978 ], [ 0.000000e+00, %5712 ], [ 0.000000e+00, %5714 ]
  %6022 = phi float [ %5764, %5732 ], [ %5923, %5897 ], [ %6005, %5978 ], [ 0.000000e+00, %5712 ], [ 0.000000e+00, %5714 ]
  %6023 = fmul fast float %5655, %6019
  %6024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.f32 %6024, 2
  %6026 = fsub fast float %5662, %6025
  %6027 = fcmp fast olt float %6023, -2.000000e+01
  %6028 = call float @dx.op.unary.f32(i32 21, float %6023)  ; Exp(value)
  %6029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.f32 %6029, 2
  %6031 = extractvalue %dx.types.CBufRet.f32 %6029, 3
  %6032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6033 = extractvalue %dx.types.CBufRet.f32 %6032, 2
  %6034 = fmul fast float %6031, %6026
  %6035 = call float @dx.op.unary.f32(i32 7, float %6034)  ; Saturate(value)
  %6036 = fsub fast float 1.000000e+00, %6035
  %6037 = fmul fast float %5647, 5.000000e-01
  %6038 = fadd fast float %6037, 5.000000e-01
  %6039 = call float @dx.op.unary.f32(i32 7, float %6038)  ; Saturate(value)
  %6040 = fsub fast float 1.000000e+00, %6039
  %6041 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6036)  ; FMax(a,b)
  %6042 = fdiv fast float %6040, %6041
  %6043 = fsub fast float %6026, %5604
  %6044 = call float @dx.op.unary.f32(i32 6, float %6043)  ; FAbs(value)
  %6045 = fmul fast float %6044, %6030
  %6046 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6047 = fsub fast float 1.000000e+00, %6045
  %6048 = fmul fast float %6047, %6046
  %6049 = fadd fast float %6048, %6045
  %6050 = fmul fast float %6033, %6026
  %6051 = call float @dx.op.unary.f32(i32 7, float %6050)  ; Saturate(value)
  %6052 = fsub fast float 1.000000e+00, %6049
  %6053 = fmul fast float %6052, %6051
  %6054 = fadd fast float %6053, %6049
  %6055 = call float @dx.op.unary.f32(i32 7, float %6054)  ; Saturate(value)
  %6056 = fadd fast float %6028, -1.000000e+00
  %6057 = select i1 %6027, float -1.000000e+00, float %6056
  %6058 = fmul fast float %6055, %6057
  %6059 = fadd fast float %6058, 1.000000e+00
  %6060 = fsub fast float -0.000000e+00, %6058
  %6061 = fmul fast float %6020, %6060
  %6062 = fmul fast float %6021, %6060
  %6063 = fmul fast float %6022, %6060
  br label %6064

; <label>:6064                                    ; preds = %6017, %5613
  %6065 = phi float [ %6018, %6017 ], [ 0.000000e+00, %5613 ]
  %6066 = phi float [ %6059, %6017 ], [ 1.000000e+00, %5613 ]
  %6067 = phi float [ %6061, %6017 ], [ 0.000000e+00, %5613 ]
  %6068 = phi float [ %6062, %6017 ], [ 0.000000e+00, %5613 ]
  %6069 = phi float [ %6063, %6017 ], [ 0.000000e+00, %5613 ]
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6072 = fsub fast float 1.000000e+00, %6066
  %6073 = fmul fast float %6072, %5648
  %6074 = fmul fast float %6073, %6071
  %6075 = fsub fast float %5648, %6074
  br i1 %5641, label %6076, label %6105, !dx.controlflow.hints !166

; <label>:6076                                    ; preds = %6064
  %6077 = fmul fast float %5649, %5638
  %6078 = fadd fast float %6077, %5639
  %6079 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6080 = fmul fast float %5620, %6075
  %6081 = fsub fast float -0.000000e+00, %6080
  %6082 = fmul fast float %5621, %6075
  %6083 = fsub fast float -0.000000e+00, %6082
  %6084 = call float @dx.op.unary.f32(i32 21, float %6081)  ; Exp(value)
  %6085 = call float @dx.op.unary.f32(i32 21, float %6083)  ; Exp(value)
  %6086 = call float @dx.op.binary.f32(i32 35, float %5628, float %6084)  ; FMax(a,b)
  %6087 = call float @dx.op.binary.f32(i32 35, float %5628, float %6085)  ; FMax(a,b)
  %6088 = fsub fast float %6087, %6086
  %6089 = fmul fast float %6088, %6079
  %6090 = fadd fast float %6089, %6086
  %6091 = call float @dx.op.unary.f32(i32 7, float %6090)  ; Saturate(value)
  %6092 = fsub fast float %5625, %5630
  %6093 = fsub fast float %5626, %5631
  %6094 = fsub fast float %5627, %5632
  %6095 = fmul fast float %6079, %6092
  %6096 = fmul fast float %6079, %6093
  %6097 = fmul fast float %6079, %6094
  %6098 = fadd fast float %6095, %5630
  %6099 = fadd fast float %6096, %5631
  %6100 = fadd fast float %6097, %5632
  %6101 = fsub fast float 1.000000e+00, %6091
  %6102 = fmul fast float %6101, %6098
  %6103 = fmul fast float %6101, %6099
  %6104 = fmul fast float %6101, %6100
  br label %6164

; <label>:6105                                    ; preds = %6064
  %6106 = fmul fast float %6075, %5637
  %6107 = call float @dx.op.unary.f32(i32 7, float %6106)  ; Saturate(value)
  %6108 = fsub fast float 2.000000e+00, %6107
  %6109 = fmul fast float %6107, 9.921875e-01
  %6110 = fmul fast float %6109, %6108
  %6111 = fadd fast float %6110, 3.906250e-03
  %6112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %6111, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6113 = extractvalue %dx.types.ResRet.f32 %6112, 0
  %6114 = fsub fast float %6107, %6113
  %6115 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6114)  ; FMax(a,b)
  %6116 = fmul fast float %5623, %5604
  %6117 = call float @dx.op.unary.f32(i32 6, float %6116)  ; FAbs(value)
  %6118 = fcmp fast ogt float %6117, 0x3EB0C6F7A0000000
  br i1 %6118, label %6119, label %6125, !dx.controlflow.hints !167

; <label>:6119                                    ; preds = %6105
  %6120 = fmul fast float %6116, 0xBFF7154760000000
  %6121 = call float @dx.op.unary.f32(i32 21, float %6120)  ; Exp(value)
  %6122 = fsub fast float 1.000000e+00, %6121
  %6123 = fdiv fast float %6122, %6116
  %6124 = fmul fast float %6123, %5633
  br label %6125

; <label>:6125                                    ; preds = %6119, %6105
  %6126 = phi float [ %6124, %6119 ], [ %5633, %6105 ]
  %6127 = fadd fast float %6126, %5635
  %6128 = fmul fast float %6127, %6115
  %6129 = fmul fast float %5620, %6128
  %6130 = fsub fast float -0.000000e+00, %6129
  %6131 = fmul fast float %5621, %6128
  %6132 = fsub fast float -0.000000e+00, %6131
  %6133 = fmul fast float %5622, %6128
  %6134 = fsub fast float -0.000000e+00, %6133
  %6135 = call float @dx.op.unary.f32(i32 21, float %6130)  ; Exp(value)
  %6136 = call float @dx.op.unary.f32(i32 21, float %6132)  ; Exp(value)
  %6137 = call float @dx.op.unary.f32(i32 21, float %6134)  ; Exp(value)
  %6138 = fmul fast float %5649, %5649
  %6139 = fadd fast float %6138, 1.000000e+00
  %6140 = fmul fast float %6139, 0x3FAE8EC8A0000000
  %6141 = fmul fast float %6140, %5630
  %6142 = fmul fast float %6140, %5631
  %6143 = fmul fast float %6140, %5632
  %6144 = fmul fast float %5649, %5628
  %6145 = fsub fast float 1.000000e+00, %6144
  %6146 = fmul fast float %5628, %5628
  %6147 = fsub fast float 1.000000e+00, %6146
  %6148 = fmul fast float %6147, 0x3FB45F3060000000
  %6149 = fmul fast float %6145, %6145
  %6150 = fdiv fast float 1.000000e+00, %6149
  %6151 = fmul fast float %6148, %6150
  %6152 = fmul fast float %6151, %5625
  %6153 = fmul fast float %6151, %5626
  %6154 = fmul fast float %6151, %5627
  %6155 = fadd fast float %6152, %6141
  %6156 = fadd fast float %6153, %6142
  %6157 = fadd fast float %6154, %6143
  %6158 = fsub fast float 1.000000e+00, %6135
  %6159 = fsub fast float 1.000000e+00, %6136
  %6160 = fsub fast float 1.000000e+00, %6137
  %6161 = fmul fast float %6155, %6158
  %6162 = fmul fast float %6156, %6159
  %6163 = fmul fast float %6157, %6160
  br label %6164

; <label>:6164                                    ; preds = %6125, %6076
  %6165 = phi float [ %6102, %6076 ], [ %6161, %6125 ]
  %6166 = phi float [ %6103, %6076 ], [ %6162, %6125 ]
  %6167 = phi float [ %6104, %6076 ], [ %6163, %6125 ]
  %6168 = phi float [ %6091, %6076 ], [ %6135, %6125 ]
  %6169 = phi float [ %6091, %6076 ], [ %6136, %6125 ]
  %6170 = phi float [ %6091, %6076 ], [ %6137, %6125 ]
  br i1 %5657, label %6171, label %6369, !dx.controlflow.hints !168

; <label>:6171                                    ; preds = %6164
  %6172 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6173 = fmul fast float %6172, %6072
  %6174 = fsub fast float %6067, %6165
  %6175 = fsub fast float %6068, %6166
  %6176 = fsub fast float %6069, %6167
  %6177 = fmul fast float %6173, %6174
  %6178 = fmul fast float %6173, %6175
  %6179 = fmul fast float %6173, %6176
  %6180 = fadd fast float %6177, %6165
  %6181 = fadd fast float %6178, %6166
  %6182 = fadd fast float %6179, %6167
  %6183 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6168)  ; FMax(a,b)
  %6184 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6169)  ; FMax(a,b)
  %6185 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6170)  ; FMax(a,b)
  %6186 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6066)  ; FMax(a,b)
  %6187 = call float @dx.op.binary.f32(i32 35, float %6065, float %6075)  ; FMax(a,b)
  %6188 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6187)  ; FMax(a,b)
  %6189 = fdiv fast float %6065, %6188
  %6190 = call float @dx.op.unary.f32(i32 7, float %6189)  ; Saturate(value)
  %6191 = fdiv fast float %6075, %6188
  %6192 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  %6193 = fcmp fast une float %6186, 1.000000e+00
  br i1 %6193, label %6194, label %6207, !dx.controlflow.hints !169

; <label>:6194                                    ; preds = %6171
  %6195 = call float @dx.op.unary.f32(i32 23, float %6186)  ; Log(value)
  %6196 = fmul fast float %6195, 0x3FE62E4300000000
  %6197 = fmul fast float %6067, %6196
  %6198 = fsub fast float -0.000000e+00, %6197
  %6199 = fmul fast float %6068, %6196
  %6200 = fsub fast float -0.000000e+00, %6199
  %6201 = fmul fast float %6069, %6196
  %6202 = fsub fast float -0.000000e+00, %6201
  %6203 = fsub fast float 1.000000e+00, %6186
  %6204 = fdiv fast float %6198, %6203
  %6205 = fdiv fast float %6200, %6203
  %6206 = fdiv fast float %6202, %6203
  br label %6207

; <label>:6207                                    ; preds = %6194, %6171
  %6208 = phi float [ %6204, %6194 ], [ %6067, %6171 ]
  %6209 = phi float [ %6205, %6194 ], [ %6068, %6171 ]
  %6210 = phi float [ %6206, %6194 ], [ %6069, %6171 ]
  %6211 = phi float [ %6196, %6194 ], [ 0.000000e+00, %6171 ]
  %6212 = fcmp fast une float %6183, 1.000000e+00
  br i1 %6212, label %6213, label %6220, !dx.controlflow.hints !170

; <label>:6213                                    ; preds = %6207
  %6214 = call float @dx.op.unary.f32(i32 23, float %6183)  ; Log(value)
  %6215 = fmul fast float %6214, 0x3FE62E4300000000
  %6216 = fmul fast float %6180, %6215
  %6217 = fsub fast float -0.000000e+00, %6216
  %6218 = fsub fast float 1.000000e+00, %6183
  %6219 = fdiv fast float %6217, %6218
  br label %6220

; <label>:6220                                    ; preds = %6213, %6207
  %6221 = phi float [ %6219, %6213 ], [ %6180, %6207 ]
  %6222 = phi float [ %6215, %6213 ], [ 0.000000e+00, %6207 ]
  %6223 = fcmp fast une float %6184, 1.000000e+00
  br i1 %6223, label %6224, label %6231, !dx.controlflow.hints !170

; <label>:6224                                    ; preds = %6220
  %6225 = call float @dx.op.unary.f32(i32 23, float %6184)  ; Log(value)
  %6226 = fmul fast float %6225, 0x3FE62E4300000000
  %6227 = fmul fast float %6181, %6226
  %6228 = fsub fast float -0.000000e+00, %6227
  %6229 = fsub fast float 1.000000e+00, %6184
  %6230 = fdiv fast float %6228, %6229
  br label %6231

; <label>:6231                                    ; preds = %6224, %6220
  %6232 = phi float [ %6230, %6224 ], [ %6181, %6220 ]
  %6233 = phi float [ %6226, %6224 ], [ 0.000000e+00, %6220 ]
  %6234 = fcmp fast une float %6185, 1.000000e+00
  br i1 %6234, label %6235, label %6242, !dx.controlflow.hints !170

; <label>:6235                                    ; preds = %6231
  %6236 = call float @dx.op.unary.f32(i32 23, float %6185)  ; Log(value)
  %6237 = fmul fast float %6236, 0x3FE62E4300000000
  %6238 = fmul fast float %6182, %6237
  %6239 = fsub fast float -0.000000e+00, %6238
  %6240 = fsub fast float 1.000000e+00, %6185
  %6241 = fdiv fast float %6239, %6240
  br label %6242

; <label>:6242                                    ; preds = %6235, %6231
  %6243 = phi float [ %6241, %6235 ], [ %6182, %6231 ]
  %6244 = phi float [ %6237, %6235 ], [ 0.000000e+00, %6231 ]
  %6245 = fmul fast float %6208, %6192
  %6246 = fmul fast float %6209, %6192
  %6247 = fmul fast float %6210, %6192
  %6248 = fmul fast float %6211, %6192
  %6249 = fmul fast float %6221, %6190
  %6250 = fmul fast float %6232, %6190
  %6251 = fmul fast float %6243, %6190
  %6252 = fmul fast float %6222, %6190
  %6253 = fmul fast float %6233, %6190
  %6254 = fmul fast float %6244, %6190
  %6255 = fadd fast float %6249, %6245
  %6256 = fadd fast float %6250, %6246
  %6257 = fadd fast float %6251, %6247
  %6258 = fadd fast float %6252, %6248
  %6259 = fadd fast float %6253, %6248
  %6260 = fadd fast float %6254, %6248
  %6261 = fcmp fast une float %6258, 0.000000e+00
  br i1 %6261, label %6262, label %6269, !dx.controlflow.hints !171

; <label>:6262                                    ; preds = %6242
  %6263 = fmul fast float %6258, 0x3FF7154760000000
  %6264 = call float @dx.op.unary.f32(i32 21, float %6263)  ; Exp(value)
  %6265 = fsub fast float 1.000000e+00, %6264
  %6266 = fmul fast float %6255, %6265
  %6267 = fsub fast float -0.000000e+00, %6266
  %6268 = fdiv fast float %6267, %6258
  br label %6269

; <label>:6269                                    ; preds = %6262, %6242
  %6270 = phi float [ %6264, %6262 ], [ 1.000000e+00, %6242 ]
  %6271 = phi float [ %6268, %6262 ], [ %6255, %6242 ]
  %6272 = fcmp fast une float %6259, 0.000000e+00
  br i1 %6272, label %6273, label %6280, !dx.controlflow.hints !171

; <label>:6273                                    ; preds = %6269
  %6274 = fmul fast float %6259, 0x3FF7154760000000
  %6275 = call float @dx.op.unary.f32(i32 21, float %6274)  ; Exp(value)
  %6276 = fsub fast float 1.000000e+00, %6275
  %6277 = fmul fast float %6256, %6276
  %6278 = fsub fast float -0.000000e+00, %6277
  %6279 = fdiv fast float %6278, %6259
  br label %6280

; <label>:6280                                    ; preds = %6273, %6269
  %6281 = phi float [ %6275, %6273 ], [ 1.000000e+00, %6269 ]
  %6282 = phi float [ %6279, %6273 ], [ %6256, %6269 ]
  %6283 = fcmp fast une float %6260, 0.000000e+00
  br i1 %6283, label %6284, label %6291, !dx.controlflow.hints !171

; <label>:6284                                    ; preds = %6280
  %6285 = fmul fast float %6260, 0x3FF7154760000000
  %6286 = call float @dx.op.unary.f32(i32 21, float %6285)  ; Exp(value)
  %6287 = fsub fast float 1.000000e+00, %6286
  %6288 = fmul fast float %6257, %6287
  %6289 = fsub fast float -0.000000e+00, %6288
  %6290 = fdiv fast float %6289, %6260
  br label %6291

; <label>:6291                                    ; preds = %6284, %6280
  %6292 = phi float [ %6286, %6284 ], [ 1.000000e+00, %6280 ]
  %6293 = phi float [ %6290, %6284 ], [ %6257, %6280 ]
  %6294 = fcmp fast ogt float %6190, %6192
  br i1 %6294, label %6295, label %6315

; <label>:6295                                    ; preds = %6291
  %6296 = fsub fast float 1.000000e+00, %6192
  %6297 = fmul fast float %6208, %6296
  %6298 = fmul fast float %6209, %6296
  %6299 = fmul fast float %6210, %6296
  %6300 = fmul fast float %6211, %6296
  %6301 = fcmp fast une float %6300, 0.000000e+00
  br i1 %6301, label %6302, label %6353, !dx.controlflow.hints !172

; <label>:6302                                    ; preds = %6295
  %6303 = fmul fast float %6300, 0x3FF7154760000000
  %6304 = call float @dx.op.unary.f32(i32 21, float %6303)  ; Exp(value)
  %6305 = fsub fast float 1.000000e+00, %6304
  %6306 = fmul fast float %6297, %6305
  %6307 = fsub fast float -0.000000e+00, %6306
  %6308 = fmul fast float %6298, %6305
  %6309 = fsub fast float -0.000000e+00, %6308
  %6310 = fmul fast float %6299, %6305
  %6311 = fsub fast float -0.000000e+00, %6310
  %6312 = fdiv fast float %6307, %6300
  %6313 = fdiv fast float %6309, %6300
  %6314 = fdiv fast float %6311, %6300
  br label %6353

; <label>:6315                                    ; preds = %6291
  %6316 = fsub fast float 1.000000e+00, %6190
  %6317 = fmul fast float %6221, %6316
  %6318 = fmul fast float %6232, %6316
  %6319 = fmul fast float %6243, %6316
  %6320 = fmul fast float %6222, %6316
  %6321 = fmul fast float %6233, %6316
  %6322 = fmul fast float %6244, %6316
  %6323 = fcmp fast une float %6320, 0.000000e+00
  br i1 %6323, label %6324, label %6331, !dx.controlflow.hints !171

; <label>:6324                                    ; preds = %6315
  %6325 = fmul fast float %6320, 0x3FF7154760000000
  %6326 = call float @dx.op.unary.f32(i32 21, float %6325)  ; Exp(value)
  %6327 = fsub fast float 1.000000e+00, %6326
  %6328 = fmul fast float %6317, %6327
  %6329 = fsub fast float -0.000000e+00, %6328
  %6330 = fdiv fast float %6329, %6320
  br label %6331

; <label>:6331                                    ; preds = %6324, %6315
  %6332 = phi float [ %6330, %6324 ], [ %6317, %6315 ]
  %6333 = phi float [ %6326, %6324 ], [ 1.000000e+00, %6315 ]
  %6334 = fcmp fast une float %6321, 0.000000e+00
  br i1 %6334, label %6335, label %6342, !dx.controlflow.hints !171

; <label>:6335                                    ; preds = %6331
  %6336 = fmul fast float %6321, 0x3FF7154760000000
  %6337 = call float @dx.op.unary.f32(i32 21, float %6336)  ; Exp(value)
  %6338 = fsub fast float 1.000000e+00, %6337
  %6339 = fmul fast float %6318, %6338
  %6340 = fsub fast float -0.000000e+00, %6339
  %6341 = fdiv fast float %6340, %6321
  br label %6342

; <label>:6342                                    ; preds = %6335, %6331
  %6343 = phi float [ %6341, %6335 ], [ %6318, %6331 ]
  %6344 = phi float [ %6337, %6335 ], [ 1.000000e+00, %6331 ]
  %6345 = fcmp fast une float %6322, 0.000000e+00
  br i1 %6345, label %6346, label %6353, !dx.controlflow.hints !171

; <label>:6346                                    ; preds = %6342
  %6347 = fmul fast float %6322, 0x3FF7154760000000
  %6348 = call float @dx.op.unary.f32(i32 21, float %6347)  ; Exp(value)
  %6349 = fsub fast float 1.000000e+00, %6348
  %6350 = fmul fast float %6319, %6349
  %6351 = fsub fast float -0.000000e+00, %6350
  %6352 = fdiv fast float %6351, %6322
  br label %6353

; <label>:6353                                    ; preds = %6346, %6342, %6302, %6295
  %6354 = phi float [ %6352, %6346 ], [ %6314, %6302 ], [ %6299, %6295 ], [ %6319, %6342 ]
  %6355 = phi float [ %6343, %6346 ], [ %6313, %6302 ], [ %6298, %6295 ], [ %6343, %6342 ]
  %6356 = phi float [ %6332, %6346 ], [ %6312, %6302 ], [ %6297, %6295 ], [ %6332, %6342 ]
  %6357 = phi float [ %6348, %6346 ], [ %6304, %6302 ], [ 1.000000e+00, %6295 ], [ 1.000000e+00, %6342 ]
  %6358 = phi float [ %6344, %6346 ], [ %6304, %6302 ], [ 1.000000e+00, %6295 ], [ %6344, %6342 ]
  %6359 = phi float [ %6333, %6346 ], [ %6304, %6302 ], [ 1.000000e+00, %6295 ], [ %6333, %6342 ]
  %6360 = fmul fast float %6359, %6271
  %6361 = fmul fast float %6358, %6282
  %6362 = fmul fast float %6357, %6293
  %6363 = fadd fast float %6360, %6356
  %6364 = fadd fast float %6361, %6355
  %6365 = fadd fast float %6362, %6354
  %6366 = fmul fast float %6359, %6270
  %6367 = fmul fast float %6358, %6281
  %6368 = fmul fast float %6357, %6292
  br label %6369

; <label>:6369                                    ; preds = %6353, %6164
  %6370 = phi float [ %6368, %6353 ], [ %6170, %6164 ]
  %6371 = phi float [ %6367, %6353 ], [ %6169, %6164 ]
  %6372 = phi float [ %6366, %6353 ], [ %6168, %6164 ]
  %6373 = phi float [ %6365, %6353 ], [ %6167, %6164 ]
  %6374 = phi float [ %6364, %6353 ], [ %6166, %6164 ]
  %6375 = phi float [ %6363, %6353 ], [ %6165, %6164 ]
  %6376 = fmul fast float %6375, %5313
  %6377 = fmul fast float %6374, %5313
  %6378 = fmul fast float %6373, %5313
  %6379 = fmul fast float %6372, %5612
  %6380 = call float @dx.op.dot3.f32(i32 55, float %6372, float %6371, float %6370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6381 = call float @dx.op.dot3.f32(i32 55, float %6376, float %6377, float %6378, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6382 = select i1 %223, float %6380, float %6372
  %6383 = select i1 %223, float %6380, float %6371
  %6384 = select i1 %223, float 1.000000e+00, float %6370
  %6385 = select i1 %223, float %6381, float %6376
  %6386 = select i1 %223, float 0.000000e+00, float %6377
  %6387 = select i1 %223, float 0.000000e+00, float %6378
  %6388 = fmul fast float %6382, %5606
  %6389 = fmul fast float %6383, %5607
  %6390 = fmul fast float %6384, %5608
  %6391 = fadd fast float %6388, %6385
  %6392 = fadd fast float %6389, %6386
  %6393 = fadd fast float %6387, %6390
  %6394 = fmul fast float %6382, %5609
  %6395 = fmul fast float %6383, %5610
  %6396 = fmul fast float %6384, %5611
  %6397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.i32 %6397, 0
  %6399 = icmp eq i32 %6398, 0
  br i1 %6399, label %6767, label %6400, !dx.controlflow.hints !173

; <label>:6400                                    ; preds = %6369
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 2
  %6403 = extractvalue %dx.types.CBufRet.f32 %6401, 3
  %6404 = fmul fast float %6402, %85
  %6405 = fmul fast float %6403, %86
  %6406 = fmul fast float %6404, 2.000000e+00
  %6407 = fmul fast float %6405, 2.000000e+00
  %6408 = fsub fast float 1.000000e+00, %6406
  %6409 = fsub fast float 1.000000e+00, %6407
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 0
  %6412 = extractvalue %dx.types.CBufRet.f32 %6410, 1
  %6413 = extractvalue %dx.types.CBufRet.f32 %6410, 2
  %6414 = fmul fast float %6408, %6411
  %6415 = fmul fast float %6408, %6412
  %6416 = fmul fast float %6408, %6413
  %6417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6418 = extractvalue %dx.types.CBufRet.f32 %6417, 0
  %6419 = extractvalue %dx.types.CBufRet.f32 %6417, 1
  %6420 = extractvalue %dx.types.CBufRet.f32 %6417, 2
  %6421 = fmul fast float %6409, %6418
  %6422 = fmul fast float %6409, %6419
  %6423 = fmul fast float %6409, %6420
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.CBufRet.f32 %6424, 2
  %6428 = fadd fast float %6421, %6425
  %6429 = fadd fast float %6428, %6414
  %6430 = fadd fast float %6422, %6426
  %6431 = fadd fast float %6430, %6415
  %6432 = fadd fast float %6423, %6427
  %6433 = fadd fast float %6432, %6416
  %6434 = fmul fast float %6429, %5605
  %6435 = fmul fast float %6431, %5605
  %6436 = fmul fast float %6433, %5605
  %6437 = fmul fast float %6434, %6434
  %6438 = fmul fast float %6435, %6435
  %6439 = fadd fast float %6437, %6438
  %6440 = fmul fast float %6436, %6436
  %6441 = fadd fast float %6439, %6440
  %6442 = call float @dx.op.unary.f32(i32 24, float %6441)  ; Sqrt(value)
  %6443 = extractvalue %dx.types.CBufRet.f32 %5330, 0
  %6444 = fsub fast float %6442, %6443
  %6445 = extractvalue %dx.types.CBufRet.f32 %5330, 2
  %6446 = fmul fast float %6444, %6445
  %6447 = call float @dx.op.unary.f32(i32 7, float %6446)  ; Saturate(value)
  %6448 = fadd fast float %6447, -5.000000e-01
  %6449 = fmul fast float %6448, 2.000000e+00
  %6450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6451 = extractvalue %dx.types.CBufRet.f32 %6450, 2
  %6452 = call float @dx.op.binary.f32(i32 36, float %6451, float %6449)  ; FMin(a,b)
  %6453 = fsub fast float -0.000000e+00, %6451
  %6454 = fcmp fast ogt float %6452, %6453
  br i1 %6454, label %6455, label %6767, !dx.controlflow.hints !174

; <label>:6455                                    ; preds = %6400
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 3
  %6458 = fcmp fast ogt float %6457, 0.000000e+00
  br i1 %6458, label %6459, label %6534, !dx.controlflow.hints !175

; <label>:6459                                    ; preds = %6455
  %6460 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6461 = extractvalue %dx.types.Dimensions %6460, 0
  %6462 = sitofp i32 %6461 to float
  %6463 = extractvalue %dx.types.Dimensions %6460, 1
  %6464 = sitofp i32 %6463 to float
  %6465 = fmul fast float %6404, %6462
  %6466 = fmul fast float %6405, %6464
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 1
  %6469 = fsub fast float -0.000000e+00, %6468
  %6470 = fptoui float %6469 to i32
  %6471 = fptoui float %6465 to i32
  %6472 = fptoui float %6466 to i32
  %6473 = and i32 %6470, 31
  %6474 = lshr i32 %6471, %6473
  %6475 = lshr i32 %6472, %6473
  %6476 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6470, i32 %6474, i32 %6475, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6477 = extractvalue %dx.types.ResRet.f32 %6476, 0
  %6478 = fcmp fast olt float %6477, -1.000000e+00
  %6479 = fcmp fast ogt float %6477, -1.000000e+00
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 1
  %6482 = select i1 %6479, float %6481, float 1.000000e+00
  %6483 = fadd fast float %6477, 1.000000e+00
  %6484 = fmul fast float %6482, %6483
  %6485 = call float @dx.op.unary.f32(i32 6, float %6484)  ; FAbs(value)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6480, 3
  %6487 = fcmp fast oge float %6485, %6486
  %6488 = select i1 %6487, float 0x4197782600000000, float %6485
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.CBufRet.f32 %6489, 2
  %6493 = select i1 %6478, float %6490, float %6411
  %6494 = select i1 %6478, float %6491, float %6412
  %6495 = select i1 %6478, float %6492, float %6413
  %6496 = fmul fast float %6493, %6408
  %6497 = fmul fast float %6494, %6408
  %6498 = fmul fast float %6495, %6408
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.CBufRet.f32 %6499, 1
  %6502 = extractvalue %dx.types.CBufRet.f32 %6499, 2
  %6503 = select i1 %6478, float %6500, float %6418
  %6504 = select i1 %6478, float %6501, float %6419
  %6505 = select i1 %6478, float %6502, float %6420
  %6506 = fmul fast float %6503, %6409
  %6507 = fmul fast float %6504, %6409
  %6508 = fmul fast float %6505, %6409
  %6509 = fadd fast float %6506, %6496
  %6510 = fadd fast float %6507, %6497
  %6511 = fadd fast float %6508, %6498
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6515 = extractvalue %dx.types.CBufRet.f32 %6512, 2
  %6516 = select i1 %6478, float %6513, float %6425
  %6517 = select i1 %6478, float %6514, float %6426
  %6518 = select i1 %6478, float %6515, float %6427
  %6519 = fadd fast float %6509, %6516
  %6520 = fadd fast float %6510, %6517
  %6521 = fadd fast float %6511, %6518
  %6522 = fmul fast float %6519, %6488
  %6523 = fmul fast float %6520, %6488
  %6524 = fmul fast float %6521, %6488
  %6525 = fmul fast float %6522, %6522
  %6526 = fmul fast float %6523, %6523
  %6527 = fadd fast float %6525, %6526
  %6528 = fmul fast float %6524, %6524
  %6529 = fadd fast float %6527, %6528
  %6530 = call float @dx.op.unary.f32(i32 24, float %6529)  ; Sqrt(value)
  %6531 = fsub fast float %6530, %6443
  %6532 = fmul fast float %6531, %6445
  %6533 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  br label %6534

; <label>:6534                                    ; preds = %6459, %6455
  %6535 = phi float [ %6533, %6459 ], [ 1.000000e+00, %6455 ]
  %6536 = fmul fast float %6452, 5.000000e-01
  %6537 = fadd fast float %6536, 5.000000e-01
  %6538 = call float @dx.op.unary.f32(i32 22, float %6537)  ; Frc(value)
  %6539 = call float @dx.op.unary.f32(i32 27, float %6538)  ; Round_ni(value)
  %6540 = call float @dx.op.unary.f32(i32 22, float %6538)  ; Frc(value)
  %6541 = fmul fast float %6540, 2.000000e+00
  %6542 = fadd fast float %6541, -1.000000e+00
  %6543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %6404, float %6405, float %6539, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6544 = extractvalue %dx.types.ResRet.f32 %6543, 0
  %6545 = extractvalue %dx.types.ResRet.f32 %6543, 1
  %6546 = extractvalue %dx.types.ResRet.f32 %6543, 2
  %6547 = extractvalue %dx.types.ResRet.f32 %6543, 3
  %6548 = fadd fast float %6544, -5.000000e-01
  %6549 = fadd fast float %6546, -5.000000e-01
  %6550 = fmul fast float %6548, 0xBFD5555560000000
  %6551 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6549, float %6550)  ; FMad(a,b,c)
  %6552 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6545, float 0.000000e+00)  ; FMad(a,b,c)
  %6553 = fadd fast float %6552, %6547
  %6554 = fmul fast float %6548, -7.500000e-01
  %6555 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6549, float %6554)  ; FMad(a,b,c)
  %6556 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6545, float 0.000000e+00)  ; FMad(a,b,c)
  %6557 = fadd fast float %6556, %6547
  %6558 = call float @dx.op.binary.f32(i32 35, float %6551, float -1.000000e+00)  ; FMax(a,b)
  %6559 = call float @dx.op.binary.f32(i32 35, float %6553, float -1.000000e+00)  ; FMax(a,b)
  %6560 = call float @dx.op.binary.f32(i32 35, float %6555, float -1.000000e+00)  ; FMax(a,b)
  %6561 = call float @dx.op.binary.f32(i32 35, float %6557, float -1.000000e+00)  ; FMax(a,b)
  %6562 = call float @dx.op.binary.f32(i32 36, float %6558, float 1.000000e+00)  ; FMin(a,b)
  %6563 = call float @dx.op.binary.f32(i32 36, float %6559, float 1.000000e+00)  ; FMin(a,b)
  %6564 = call float @dx.op.binary.f32(i32 36, float %6560, float 1.000000e+00)  ; FMin(a,b)
  %6565 = call float @dx.op.binary.f32(i32 36, float %6561, float 1.000000e+00)  ; FMin(a,b)
  %6566 = fcmp fast olt float %6562, 0x3FEFFF8020000000
  br i1 %6566, label %6567, label %6682, !dx.controlflow.hints !176

; <label>:6567                                    ; preds = %6534
  %6568 = extractvalue %dx.types.CBufRet.f32 %6450, 3
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 0
  %6571 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %6572 = extractvalue %dx.types.CBufRet.f32 %6569, 2
  %6573 = extractvalue %dx.types.CBufRet.f32 %6569, 3
  %6574 = fsub fast float %6570, %6562
  %6575 = fsub fast float %6571, %6563
  %6576 = fsub fast float %6572, %6564
  %6577 = fsub fast float %6573, %6565
  %6578 = fmul fast float %6574, %6568
  %6579 = fmul fast float %6575, %6568
  %6580 = fmul fast float %6576, %6568
  %6581 = fmul fast float %6577, %6568
  %6582 = fadd fast float %6578, %6562
  %6583 = fadd fast float %6579, %6563
  %6584 = fsub fast float -0.000000e+00, %6583
  %6585 = fadd fast float %6580, %6564
  %6586 = fadd fast float %6581, %6565
  %6587 = fmul fast float %6582, %6582
  %6588 = fsub fast float %6583, %6587
  %6589 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6588)  ; FMax(a,b)
  %6590 = fdiv fast float 1.000000e+00, %6589
  %6591 = fmul fast float %6583, %6582
  %6592 = fsub fast float %6585, %6591
  %6593 = fsub fast float %6542, %6582
  %6594 = fmul fast float %6542, %6542
  %6595 = fsub fast float %6594, %6583
  %6596 = fmul fast float %6593, %6590
  %6597 = fmul fast float %6596, %6592
  %6598 = fsub fast float %6595, %6597
  %6599 = fmul fast float %6583, %6583
  %6600 = fsub fast float %6586, %6599
  %6601 = fmul fast float %6592, %6592
  %6602 = fmul fast float %6601, %6590
  %6603 = fsub fast float %6600, %6602
  %6604 = fdiv fast float %6598, %6603
  %6605 = fmul fast float %6592, %6604
  %6606 = fsub fast float %6593, %6605
  %6607 = fmul fast float %6606, %6590
  %6608 = fmul fast float %6607, %6582
  %6609 = fsub fast float 1.000000e+00, %6608
  %6610 = fmul fast float %6583, %6604
  %6611 = fsub fast float %6609, %6610
  %6612 = fmul fast float %6607, %6607
  %6613 = fmul fast float %6604, 4.000000e+00
  %6614 = fmul fast float %6613, %6611
  %6615 = fsub fast float %6612, %6614
  %6616 = call float @dx.op.unary.f32(i32 24, float %6615)  ; Sqrt(value)
  %6617 = fcmp fast oge float %6607, 0.000000e+00
  %6618 = fsub fast float -0.000000e+00, %6616
  %6619 = select i1 %6617, float %6618, float %6616
  %6620 = fsub fast float %6619, %6607
  %6621 = fdiv fast float %6620, %6604
  %6622 = fdiv fast float %6611, %6620
  %6623 = fmul fast float %6621, 5.000000e-01
  %6624 = fmul fast float %6622, 2.000000e+00
  %6625 = select i1 %6617, float %6623, float %6624
  %6626 = select i1 %6617, float %6624, float %6623
  %6627 = call float @dx.op.binary.f32(i32 35, float %6625, float %6626)  ; FMax(a,b)
  %6628 = call float @dx.op.binary.f32(i32 36, float %6625, float %6626)  ; FMin(a,b)
  %6629 = fcmp fast ogt float %6542, %6628
  br i1 %6629, label %6630, label %6640

; <label>:6630                                    ; preds = %6567
  %6631 = fsub fast float %6542, %6628
  %6632 = fsub fast float %6627, %6628
  %6633 = fmul fast float %6631, %6632
  %6634 = fmul fast float %6627, %6542
  %6635 = fadd fast float %6627, %6542
  %6636 = fmul fast float %6635, %6582
  %6637 = fadd fast float %6634, %6583
  %6638 = fsub fast float %6637, %6636
  %6639 = fdiv fast float %6638, %6633
  br label %6640

; <label>:6640                                    ; preds = %6630, %6567
  %6641 = phi float [ %6639, %6630 ], [ 0.000000e+00, %6567 ]
  %6642 = fcmp fast ogt float %6542, %6627
  %6643 = fsub fast float %6542, %6627
  br i1 %6642, label %6644, label %6654

; <label>:6644                                    ; preds = %6640
  %6645 = fsub fast float %6627, %6628
  %6646 = fmul fast float %6645, %6643
  %6647 = fmul fast float %6628, %6542
  %6648 = fadd fast float %6628, %6542
  %6649 = fmul fast float %6648, %6582
  %6650 = fsub fast float %6584, %6647
  %6651 = fadd fast float %6650, %6649
  %6652 = fdiv fast float %6651, %6646
  %6653 = fadd fast float %6652, %6641
  br label %6654

; <label>:6654                                    ; preds = %6644, %6640
  %6655 = phi float [ %6653, %6644 ], [ %6641, %6640 ]
  %6656 = fsub fast float %6542, %6628
  %6657 = fmul fast float %6656, %6643
  %6658 = fmul fast float %6628, %6627
  %6659 = fadd fast float %6628, %6627
  %6660 = fmul fast float %6659, %6582
  %6661 = fadd fast float %6658, %6583
  %6662 = fsub fast float %6661, %6660
  %6663 = fdiv fast float %6662, %6657
  %6664 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  %6665 = fcmp fast oeq float %5331, 0.000000e+00
  %6666 = extractvalue %dx.types.CBufRet.f32 %6450, 0
  %6667 = fcmp fast oeq float %6666, 0.000000e+00
  %6668 = or i1 %6665, %6667
  %6669 = fmul fast float %6666, 2.000000e+00
  %6670 = fadd fast float %6451, %6452
  %6671 = fdiv fast float %6670, %6669
  %6672 = call float @dx.op.unary.f32(i32 7, float %6671)  ; Saturate(value)
  %6673 = fmul fast float %6672, 2.000000e+00
  %6674 = fsub fast float 3.000000e+00, %6673
  %6675 = fmul fast float %6672, %6672
  %6676 = fmul fast float %6675, %6674
  %6677 = select i1 %6668, float 1.000000e+00, float %6676
  %6678 = fmul fast float %6663, %5331
  %6679 = fadd fast float %6664, %6678
  %6680 = call float @dx.op.unary.f32(i32 7, float %6679)  ; Saturate(value)
  %6681 = fmul fast float %6677, %6680
  br label %6682

; <label>:6682                                    ; preds = %6654, %6534
  %6683 = phi float [ %6681, %6654 ], [ 0.000000e+00, %6534 ]
  %6684 = fsub fast float 1.000000e+00, %6683
  %6685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %6404, float %6405, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6686 = extractvalue %dx.types.ResRet.f32 %6685, 0
  %6687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6688 = extractvalue %dx.types.CBufRet.i32 %6687, 2
  %6689 = icmp eq i32 %6688, 0
  br i1 %6689, label %6695, label %6690

; <label>:6690                                    ; preds = %6682
  %6691 = call float @dx.op.unary.f32(i32 7, float %6683)  ; Saturate(value)
  %6692 = fadd fast float %6686, -1.000000e+00
  %6693 = fmul fast float %6691, %6692
  %6694 = fadd fast float %6693, 1.000000e+00
  br label %6695

; <label>:6695                                    ; preds = %6690, %6682
  %6696 = phi float [ %6694, %6690 ], [ %6684, %6682 ]
  br i1 %6458, label %6697, label %6715

; <label>:6697                                    ; preds = %6695
  %6698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6699 = extractvalue %dx.types.CBufRet.f32 %6698, 1
  %6700 = fsub fast float %6535, %6699
  %6701 = call float @dx.op.unary.f32(i32 7, float %6700)  ; Saturate(value)
  %6702 = fsub fast float %6535, %6457
  %6703 = call float @dx.op.unary.f32(i32 7, float %6702)  ; Saturate(value)
  %6704 = fsub fast float %6701, %6703
  %6705 = fsub fast float %6537, %6703
  %6706 = fdiv fast float %6705, %6704
  %6707 = call float @dx.op.unary.f32(i32 7, float %6706)  ; Saturate(value)
  %6708 = fmul fast float %6707, 2.000000e+00
  %6709 = fsub fast float 3.000000e+00, %6708
  %6710 = fsub fast float %6686, %6696
  %6711 = fmul fast float %6707, %6707
  %6712 = fmul fast float %6711, %6710
  %6713 = fmul fast float %6712, %6709
  %6714 = fadd fast float %6713, %6696
  br label %6715

; <label>:6715                                    ; preds = %6697, %6695
  %6716 = phi float [ %6714, %6697 ], [ %6696, %6695 ]
  %6717 = call float @dx.op.binary.f32(i32 35, float %6686, float %6716)  ; FMax(a,b)
  %6718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.i32 %6718, 2
  %6720 = and i32 %6719, 1
  %6721 = icmp eq i32 %6720, 0
  %6722 = fcmp fast une float %6717, 1.000000e+00
  %6723 = and i1 %6722, %6721
  br i1 %6723, label %6724, label %6743

; <label>:6724                                    ; preds = %6715
  %6725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %6404, float %6405, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6726 = extractvalue %dx.types.ResRet.f32 %6725, 0
  %6727 = extractvalue %dx.types.ResRet.f32 %6725, 1
  %6728 = extractvalue %dx.types.ResRet.f32 %6725, 2
  %6729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6730 = extractvalue %dx.types.CBufRet.f32 %6729, 1
  %6731 = fmul fast float %6730, %6726
  %6732 = fmul fast float %6730, %6727
  %6733 = fmul fast float %6730, %6728
  %6734 = fcmp fast ogt float %6686, 0x3FEFFF2E40000000
  %6735 = fsub fast float 1.000000e+00, %6717
  %6736 = fsub fast float 1.000000e+00, %6686
  %6737 = fdiv fast float %6735, %6736
  %6738 = call float @dx.op.unary.f32(i32 7, float %6737)  ; Saturate(value)
  %6739 = select i1 %6734, float 0.000000e+00, float %6738
  %6740 = fmul fast float %6731, %6739
  %6741 = fmul fast float %6732, %6739
  %6742 = fmul fast float %6733, %6739
  br label %6743

; <label>:6743                                    ; preds = %6724, %6715
  %6744 = phi float [ 0.000000e+00, %6715 ], [ %6740, %6724 ]
  %6745 = phi float [ 0.000000e+00, %6715 ], [ %6741, %6724 ]
  %6746 = phi float [ 0.000000e+00, %6715 ], [ %6742, %6724 ]
  %6747 = fmul fast float %6744, %5313
  %6748 = fmul fast float %6745, %5313
  %6749 = fmul fast float %6746, %5313
  %6750 = fmul fast float %6717, %6379
  %6751 = call float @dx.op.dot3.f32(i32 55, float %6717, float %6717, float %6717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6752 = call float @dx.op.dot3.f32(i32 55, float %6747, float %6748, float %6749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6753 = select i1 %223, float %6751, float %6717
  %6754 = select i1 %223, float 1.000000e+00, float %6717
  %6755 = select i1 %223, float %6752, float %6747
  %6756 = select i1 %223, float 0.000000e+00, float %6748
  %6757 = select i1 %223, float 0.000000e+00, float %6749
  %6758 = fmul fast float %6753, %6391
  %6759 = fmul fast float %6753, %6392
  %6760 = fmul fast float %6754, %6393
  %6761 = fadd fast float %6758, %6755
  %6762 = fadd fast float %6759, %6756
  %6763 = fadd fast float %6757, %6760
  %6764 = fmul fast float %6753, %6394
  %6765 = fmul fast float %6753, %6395
  %6766 = fmul fast float %6754, %6396
  br label %6767

; <label>:6767                                    ; preds = %6743, %6400, %6369, %5601
  %6768 = phi float [ %5606, %5601 ], [ %6391, %6369 ], [ %6761, %6743 ], [ %6391, %6400 ]
  %6769 = phi float [ %5607, %5601 ], [ %6392, %6369 ], [ %6762, %6743 ], [ %6392, %6400 ]
  %6770 = phi float [ %5608, %5601 ], [ %6393, %6369 ], [ %6763, %6743 ], [ %6393, %6400 ]
  %6771 = phi float [ %5609, %5601 ], [ %6394, %6369 ], [ %6764, %6743 ], [ %6394, %6400 ]
  %6772 = phi float [ %5610, %5601 ], [ %6395, %6369 ], [ %6765, %6743 ], [ %6395, %6400 ]
  %6773 = phi float [ %5611, %5601 ], [ %6396, %6369 ], [ %6766, %6743 ], [ %6396, %6400 ]
  %6774 = phi float [ %5612, %5601 ], [ %6379, %6369 ], [ %6750, %6743 ], [ %6379, %6400 ]
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 2
  %6777 = extractvalue %dx.types.CBufRet.f32 %6775, 3
  %6778 = fmul fast float %6776, %85
  %6779 = fmul fast float %6777, %86
  %6780 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6781 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  %6782 = select i1 %5341, i32 2, i32 0
  %6783 = or i32 %6782, 1
  %6784 = uitofp i32 %6783 to float
  %6785 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %6780, float %6781, float %6784, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6786 = extractvalue %dx.types.ResRet.f32 %6785, 0
  %6787 = extractvalue %dx.types.ResRet.f32 %6785, 1
  %6788 = extractvalue %dx.types.ResRet.f32 %6785, 2
  %6789 = extractvalue %dx.types.ResRet.f32 %6785, 3
  %6790 = add nuw nsw i32 %6782, 2
  %6791 = uitofp i32 %6790 to float
  %6792 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %6780, float %6781, float %6791, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.ResRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.ResRet.f32 %6792, 2
  %6796 = extractvalue %dx.types.ResRet.f32 %6792, 3
  %6797 = call float @dx.op.binary.f32(i32 35, float %6787, float %6788)  ; FMax(a,b)
  %6798 = call float @dx.op.binary.f32(i32 35, float %6786, float %6797)  ; FMax(a,b)
  %6799 = call float @dx.op.binary.f32(i32 35, float %6798, float %6789)  ; FMax(a,b)
  %6800 = call float @dx.op.binary.f32(i32 36, float %6794, float %6795)  ; FMin(a,b)
  %6801 = call float @dx.op.binary.f32(i32 36, float %6793, float %6800)  ; FMin(a,b)
  %6802 = call float @dx.op.binary.f32(i32 36, float %6801, float %6796)  ; FMin(a,b)
  %6803 = fmul fast float %6799, 2.550000e+02
  %6804 = fadd fast float %6803, 0x3F70101020000000
  %6805 = fptoui float %6804 to i32
  %6806 = fmul fast float %6802, 2.550000e+02
  %6807 = fadd fast float %6806, 0x3F70101020000000
  %6808 = fptoui float %6807 to i32
  %6809 = icmp ult i32 %6805, %6808
  br i1 %6809, label %6810, label %6979

; <label>:6810                                    ; preds = %6767
  %6811 = fcmp fast ogt float %75, 9.843750e-01
  %6812 = fadd fast float %5605, -4.000000e+00
  %6813 = select i1 %6811, float -4.000000e+00, float %6812
  %6814 = call float @dx.op.binary.f32(i32 35, float %6813, float 0.000000e+00)  ; FMax(a,b)
  %6815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6815, 0
  %6817 = fadd fast float %6816, %6814
  %6818 = extractvalue %dx.types.CBufRet.f32 %6815, 2
  %6819 = fmul fast float %6817, %6818
  %6820 = call float @dx.op.unary.f32(i32 23, float %6819)  ; Log(value)
  %6821 = extractvalue %dx.types.CBufRet.f32 %6815, 3
  %6822 = fmul fast float %6821, %6820
  %6823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6824 = extractvalue %dx.types.CBufRet.f32 %6823, 2
  %6825 = fmul fast float %6822, %6824
  %6826 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  %6827 = uitofp i32 %6805 to float
  %6828 = uitofp i32 %6808 to float
  %6829 = fadd fast float %6827, 5.000000e-01
  %6830 = fadd fast float %6828, 5.000000e-01
  %6831 = fmul fast float %6824, %6829
  %6832 = fmul fast float %6824, %6830
  %6833 = fadd fast float %6831, 0x3F0FFB4800000000
  %6834 = fadd fast float %6832, 0xBF0FFB4800000000
  %6835 = call float @dx.op.binary.f32(i32 35, float %6826, float %6833)  ; FMax(a,b)
  %6836 = call float @dx.op.binary.f32(i32 36, float %6835, float %6834)  ; FMin(a,b)
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6839 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6840 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6841 = select i1 %5341, float %6840, float 0.000000e+00
  %6842 = fmul fast float %6838, %6836
  %6843 = fadd fast float %6841, %6842
  %6844 = fadd fast float %6841, %6839
  %6845 = fsub fast float %6838, %6839
  %6846 = fadd fast float %6845, %6841
  %6847 = call float @dx.op.binary.f32(i32 35, float %6843, float %6844)  ; FMax(a,b)
  %6848 = call float @dx.op.binary.f32(i32 36, float %6847, float %6846)  ; FMin(a,b)
  %6849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %6780, float %6781, float %6848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6850 = extractvalue %dx.types.ResRet.f32 %6849, 0
  %6851 = extractvalue %dx.types.ResRet.f32 %6849, 1
  %6852 = extractvalue %dx.types.ResRet.f32 %6849, 2
  %6853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.i32 %6853, 0
  %6855 = extractvalue %dx.types.CBufRet.i32 %6853, 1
  %6856 = uitofp i32 %6854 to float
  %6857 = uitofp i32 %6855 to float
  %6858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6859 = extractvalue %dx.types.CBufRet.f32 %6858, 0
  %6860 = extractvalue %dx.types.CBufRet.f32 %6858, 1
  %6861 = fmul fast float %6856, %6780
  %6862 = fmul fast float %6857, %6781
  %6863 = fadd fast float %6861, -5.000000e-01
  %6864 = fadd fast float %6862, -5.000000e-01
  %6865 = call float @dx.op.unary.f32(i32 22, float %6863)  ; Frc(value)
  %6866 = call float @dx.op.unary.f32(i32 22, float %6864)  ; Frc(value)
  %6867 = fmul fast float %6865, %6865
  %6868 = fmul fast float %6867, %6865
  %6869 = fsub fast float 3.000000e+00, %6865
  %6870 = fmul fast float %6867, %6869
  %6871 = fmul fast float %6865, 3.000000e+00
  %6872 = fmul fast float %6868, 3.000000e+00
  %6873 = fmul fast float %6867, 6.000000e+00
  %6874 = fsub fast float %6872, %6873
  %6875 = fadd fast float %6874, 4.000000e+00
  %6876 = fmul fast float %6875, 0x3FC5555560000000
  %6877 = fmul fast float %6868, -3.000000e+00
  %6878 = fadd fast float %6867, %6865
  %6879 = fmul fast float %6878, 3.000000e+00
  %6880 = fadd fast float %6877, 1.000000e+00
  %6881 = fadd fast float %6880, %6879
  %6882 = fmul fast float %6868, 0x3FC5555560000000
  %6883 = fmul fast float %6866, %6866
  %6884 = fmul fast float %6883, %6866
  %6885 = fsub fast float 3.000000e+00, %6866
  %6886 = fmul fast float %6883, %6885
  %6887 = fmul fast float %6866, 3.000000e+00
  %6888 = fmul fast float %6884, 3.000000e+00
  %6889 = fmul fast float %6883, 6.000000e+00
  %6890 = fsub fast float %6888, %6889
  %6891 = fadd fast float %6890, 4.000000e+00
  %6892 = fmul fast float %6891, 0x3FC5555560000000
  %6893 = fmul fast float %6884, -3.000000e+00
  %6894 = fadd fast float %6883, %6866
  %6895 = fmul fast float %6894, 3.000000e+00
  %6896 = fadd fast float %6893, 1.000000e+00
  %6897 = fadd fast float %6896, %6895
  %6898 = fmul fast float %6884, 0x3FC5555560000000
  %6899 = fadd fast float %6865, 1.000000e+00
  %6900 = fsub fast float 1.000000e+00, %6871
  %6901 = fadd fast float %6900, %6870
  %6902 = fadd fast float %6901, %6875
  %6903 = fmul fast float %6902, 0x3FC5555560000000
  %6904 = fdiv fast float %6876, %6903
  %6905 = fsub fast float %6899, %6904
  %6906 = fsub fast float 1.000000e+00, %6865
  %6907 = fadd fast float %6881, %6868
  %6908 = fmul fast float %6907, 0x3FC5555560000000
  %6909 = fdiv fast float %6882, %6908
  %6910 = fadd fast float %6906, %6909
  %6911 = fadd fast float %6866, 1.000000e+00
  %6912 = fsub fast float 1.000000e+00, %6887
  %6913 = fadd fast float %6912, %6886
  %6914 = fadd fast float %6913, %6891
  %6915 = fmul fast float %6914, 0x3FC5555560000000
  %6916 = fdiv fast float %6892, %6915
  %6917 = fsub fast float %6911, %6916
  %6918 = fsub fast float 1.000000e+00, %6866
  %6919 = fadd fast float %6897, %6884
  %6920 = fmul fast float %6919, 0x3FC5555560000000
  %6921 = fdiv fast float %6898, %6920
  %6922 = fadd fast float %6921, %6918
  %6923 = fmul fast float %6905, %6859
  %6924 = fsub fast float %6780, %6923
  %6925 = fmul fast float %6910, %6859
  %6926 = fadd fast float %6925, %6780
  %6927 = fmul fast float %6922, %6860
  %6928 = fadd fast float %6927, %6781
  %6929 = fmul fast float %6917, %6860
  %6930 = fsub fast float %6781, %6929
  %6931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %6924, float %6930, float %6848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6932 = extractvalue %dx.types.ResRet.f32 %6931, 0
  %6933 = extractvalue %dx.types.ResRet.f32 %6931, 1
  %6934 = extractvalue %dx.types.ResRet.f32 %6931, 2
  %6935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %6926, float %6930, float %6848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6936 = extractvalue %dx.types.ResRet.f32 %6935, 0
  %6937 = extractvalue %dx.types.ResRet.f32 %6935, 1
  %6938 = extractvalue %dx.types.ResRet.f32 %6935, 2
  %6939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %6924, float %6928, float %6848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6940 = extractvalue %dx.types.ResRet.f32 %6939, 0
  %6941 = extractvalue %dx.types.ResRet.f32 %6939, 1
  %6942 = extractvalue %dx.types.ResRet.f32 %6939, 2
  %6943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %6926, float %6928, float %6848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6944 = extractvalue %dx.types.ResRet.f32 %6943, 0
  %6945 = extractvalue %dx.types.ResRet.f32 %6943, 1
  %6946 = extractvalue %dx.types.ResRet.f32 %6943, 2
  %6947 = fsub fast float %6940, %6932
  %6948 = fsub fast float %6941, %6933
  %6949 = fsub fast float %6942, %6934
  %6950 = fmul fast float %6947, %6920
  %6951 = fmul fast float %6948, %6920
  %6952 = fmul fast float %6949, %6920
  %6953 = fadd fast float %6950, %6932
  %6954 = fadd fast float %6951, %6933
  %6955 = fadd fast float %6952, %6934
  %6956 = fsub fast float %6944, %6936
  %6957 = fsub fast float %6945, %6937
  %6958 = fsub fast float %6946, %6938
  %6959 = fmul fast float %6956, %6920
  %6960 = fmul fast float %6957, %6920
  %6961 = fmul fast float %6958, %6920
  %6962 = fsub fast float %6936, %6953
  %6963 = fadd fast float %6962, %6959
  %6964 = fsub fast float %6937, %6954
  %6965 = fadd fast float %6964, %6960
  %6966 = fsub fast float %6938, %6955
  %6967 = fadd fast float %6966, %6961
  %6968 = fmul fast float %6963, %6908
  %6969 = fmul fast float %6965, %6908
  %6970 = fmul fast float %6967, %6908
  %6971 = fadd fast float %6968, %6953
  %6972 = fadd fast float %6969, %6954
  %6973 = fadd fast float %6970, %6955
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %6976 = fmul fast float %6971, %6975
  %6977 = fmul fast float %6972, %6975
  %6978 = fmul fast float %6973, %6975
  br label %6979

; <label>:6979                                    ; preds = %6810, %6767
  %6980 = phi float [ %6850, %6810 ], [ 1.000000e+00, %6767 ]
  %6981 = phi float [ %6851, %6810 ], [ 1.000000e+00, %6767 ]
  %6982 = phi float [ %6852, %6810 ], [ 1.000000e+00, %6767 ]
  %6983 = phi float [ %6976, %6810 ], [ 0.000000e+00, %6767 ]
  %6984 = phi float [ %6977, %6810 ], [ 0.000000e+00, %6767 ]
  %6985 = phi float [ %6978, %6810 ], [ 0.000000e+00, %6767 ]
  %6986 = fmul fast float %6983, %5313
  %6987 = fmul fast float %6984, %5313
  %6988 = fmul fast float %6985, %5313
  %6989 = fmul fast float %6980, %6774
  %6990 = call float @dx.op.dot3.f32(i32 55, float %6980, float %6981, float %6982, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6991 = call float @dx.op.dot3.f32(i32 55, float %6986, float %6987, float %6988, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6992 = select i1 %223, float %6990, float %6980
  %6993 = select i1 %223, float %6990, float %6981
  %6994 = select i1 %223, float 1.000000e+00, float %6982
  %6995 = select i1 %223, float %6991, float %6986
  %6996 = select i1 %223, float 0.000000e+00, float %6987
  %6997 = select i1 %223, float 0.000000e+00, float %6988
  %6998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6999 = extractvalue %dx.types.CBufRet.i32 %6998, 3
  %7000 = and i32 %6999, 3
  %7001 = icmp ne i32 %7000, 0
  %7002 = and i32 %6999, 4
  %7003 = icmp ne i32 %7002, 0
  %7004 = and i1 %7001, %7003
  %7005 = and i1 %223, %7004
  br i1 %7005, label %7006, label %7012

; <label>:7006                                    ; preds = %6979
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 1
  %7009 = fadd fast float %6989, -1.000000e+00
  %7010 = fmul fast float %7008, %7009
  %7011 = fadd fast float %7010, 1.000000e+00
  br label %7012

; <label>:7012                                    ; preds = %7006, %6979
  %7013 = phi float [ %7011, %7006 ], [ %6989, %6979 ]
  %7014 = fadd fast float %6771, %6768
  %7015 = fmul fast float %6992, %7014
  %7016 = fadd fast float %7015, %6995
  %7017 = fadd fast float %6772, %6769
  %7018 = fmul fast float %6993, %7017
  %7019 = fadd fast float %7018, %6996
  %7020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7020, 0
  br i1 %223, label %7022, label %7045

; <label>:7022                                    ; preds = %7012
  %7023 = fadd fast float %7016, %7019
  %7024 = fmul fast float %7021, %7023
  %7025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7026 = extractvalue %dx.types.CBufRet.f32 %7025, 3
  %7027 = extractvalue %dx.types.CBufRet.f32 %5322, 1
  %7028 = fsub fast float %5328, %5316
  %7029 = fadd fast float %7028, %5329
  %7030 = fsub fast float %7029, %7027
  %7031 = extractvalue %dx.types.CBufRet.f32 %5322, 2
  %7032 = fmul fast float %7030, %7031
  %7033 = call float @dx.op.unary.f32(i32 7, float %7032)  ; Saturate(value)
  %7034 = fsub fast float %7033, %7026
  %7035 = fmul fast float %7034, %7013
  %7036 = fadd fast float %7035, %7026
  %7037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7038 = extractvalue %dx.types.CBufRet.f32 %7037, 0
  %7039 = fsub fast float %7036, %7038
  %7040 = fmul fast float %7039, 1.000000e+01
  %7041 = call float @dx.op.unary.f32(i32 7, float %7040)  ; Saturate(value)
  %7042 = fmul fast float %7041, %5312
  %7043 = fadd fast float %7042, %5313
  %7044 = fmul fast float %7043, %7036
  br label %7069

; <label>:7045                                    ; preds = %7012
  %7046 = fadd fast float %6773, %6770
  %7047 = fmul fast float %6994, %7046
  %7048 = fadd fast float %7047, %6997
  %7049 = fmul fast float %7021, %7016
  %7050 = fmul fast float %7021, %7019
  %7051 = fmul fast float %7021, %7048
  %7052 = call float @dx.op.binary.f32(i32 35, float %7050, float %7051)  ; FMax(a,b)
  %7053 = call float @dx.op.binary.f32(i32 35, float %7049, float %7052)  ; FMax(a,b)
  %7054 = call float @dx.op.binary.f32(i32 35, float %7053, float %5313)  ; FMax(a,b)
  %7055 = fcmp fast ugt float %7054, 0x3F10000000000000
  br i1 %7055, label %7057, label %7056

; <label>:7056                                    ; preds = %7045
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7057

; <label>:7057                                    ; preds = %7056, %7045
  %7058 = add i32 %60, 116
  %7059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %7058, i32 undef)  ; BufferLoad(srv,index,wot)
  %7060 = extractvalue %dx.types.ResRet.i32 %7059, 0
  %7061 = and i32 %7060, 32
  %7062 = icmp eq i32 %7061, 0
  br i1 %7062, label %7069, label %7063

; <label>:7063                                    ; preds = %7057
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 0
  %7066 = fmul fast float %7065, 0x3FE99999A0000000
  %7067 = fadd fast float %7065, %7049
  %7068 = fadd fast float %7066, %7051
  br label %7069

; <label>:7069                                    ; preds = %7063, %7057, %7022
  %7070 = phi float [ %7024, %7022 ], [ %7067, %7063 ], [ %7049, %7057 ]
  %7071 = phi float [ %7044, %7022 ], [ %7050, %7063 ], [ %7050, %7057 ]
  %7072 = phi float [ %7043, %7022 ], [ %7068, %7063 ], [ %7051, %7057 ]
  %7073 = phi float [ %7043, %7022 ], [ %5313, %7063 ], [ %5313, %7057 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7074 = call float @dx.op.binary.f32(i32 36, float %7070, float 3.225500e+04)  ; FMin(a,b)
  %7075 = call float @dx.op.binary.f32(i32 36, float %7071, float 3.225500e+04)  ; FMin(a,b)
  %7076 = call float @dx.op.binary.f32(i32 36, float %7072, float 3.225500e+04)  ; FMin(a,b)
  %7077 = call float @dx.op.binary.f32(i32 36, float %7073, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7074)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7075)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7076)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7077)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!73}
!dx.entryPoints = !{!74}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !62, !65}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !17}
!38 = !{i32 30, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!42 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !47}
!47 = !{i32 0, i32 14}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!56 = !{i32 47, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !47}
!60 = !{i32 51, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!61 = !{i32 52, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!62 = !{!63, !64}
!63 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!64 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!65 = !{!66, !67, !68, !69, !70, !71, !72}
!66 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!67 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!68 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!69 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!70 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!71 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!72 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!73 = !{[23 x i32] [i32 21, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15]}
!74 = !{void ()* @ps_main, !"ps_main", !75, !4, !91}
!75 = !{!76, !89, null}
!76 = !{!77, !80, !82, !84, !85, !86, !88}
!77 = !{i32 0, !"SV_Position", i8 9, i8 3, !78, i8 4, i32 1, i8 4, i32 0, i8 0, !79}
!78 = !{i32 0}
!79 = !{i32 3, i32 15}
!80 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 2, i32 1, i8 0, !81}
!81 = !{i32 3, i32 3}
!82 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 2, i8 0, !83}
!83 = !{i32 3, i32 7}
!84 = !{i32 3, !"NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 3, i8 0, !83}
!85 = !{i32 4, !"TANGENT", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 4, i8 0, !79}
!86 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !78, i8 1, i32 1, i8 1, i32 5, i8 0, !87}
!87 = !{i32 3, i32 1}
!88 = !{i32 6, !"SV_SampleIndex", i8 5, i8 12, !78, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!89 = !{!90}
!90 = !{i32 0, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 0, i8 0, !79}
!91 = !{i32 0, i64 16}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = !{!105, !105, i64 0}
!105 = !{!"int", !106, i64 0}
!106 = !{!"omnipotent char", !107, i64 0}
!107 = !{!"Simple C/C++ TBAA"}
!108 = !{!109, !111, !113, !115}
!109 = distinct !{!109, !110, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!110 = distinct !{!110, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!111 = distinct !{!111, !112, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!112 = distinct !{!112, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!113 = distinct !{!113, !114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!114 = distinct !{!114, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!115 = distinct !{!115, !116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!116 = distinct !{!116, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = !{!129, !129, i64 0}
!129 = !{!"float", !106, i64 0}
!130 = !{!131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!131 = distinct !{!131, !132, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!132 = distinct !{!132, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!133 = distinct !{!133, !134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!134 = distinct !{!134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!135 = distinct !{!135, !134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!141 = distinct !{!141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!142 = distinct !{!142, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!143 = distinct !{!143, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!144 = distinct !{!144, !145, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!145 = distinct !{!145, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"\01?sort@@YAXAIAM00@Z: %c"}
!148 = distinct !{!148, !"\01?sort@@YAXAIAM00@Z"}
!149 = !{!150, !151, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!150 = distinct !{!150, !148, !"\01?sort@@YAXAIAM00@Z: %a"}
!151 = distinct !{!151, !148, !"\01?sort@@YAXAIAM00@Z: %b"}
!152 = !{!151}
!153 = !{!150, !147, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!154 = !{!150}
!155 = !{!151, !147, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!156 = !{!157}
!157 = distinct !{!157, !158, !"\01?sort@@YAXAIAM00@Z: %c"}
!158 = distinct !{!158, !"\01?sort@@YAXAIAM00@Z"}
!159 = !{!160, !161, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!160 = distinct !{!160, !158, !"\01?sort@@YAXAIAM00@Z: %a"}
!161 = distinct !{!161, !158, !"\01?sort@@YAXAIAM00@Z: %b"}
!162 = !{!161}
!163 = !{!160, !157, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!164 = !{!160}
!165 = !{!161, !157, !131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 2}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}

