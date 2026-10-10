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
;
; shader hash: e81852adab277ba3991a87dada269e40
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
;                                   texture     f32          3d      T2      t0,space7unbounded
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
;                                   texture    byte         r/o     T18     t49,space1     1
;                                   texture    byte         r/o     T19     t50,space1     1
;                                   texture    byte         r/o     T20     t51,space1     1
;                                   texture    byte         r/o     T21     t52,space1     1
;                                   texture     f32          2d     T22             t0     1
;                                   texture     f32          2d     T23     t58,space2     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture     u32          2d     T26     t56,space2     1
;                                   texture     f32          2d     T27     t34,space2     1
;                                   texture     f32          2d     T28      t2,space2     1
;                                   texture     f32          2d     T29      t3,space2     1
;                                   texture     f32          2d     T30      t4,space2     1
;                                   textureunorm_f32     2darray     T31     t80,space2     1
;                                   texture    byte         r/o     T32     t67,space1     1
;                                   texture     f32          2d     T33      t7,space2     1
;                                   texture     f32          2d     T34      t6,space2     1
;                                   texture     f32          2d     T35      t5,space2     1
;                                   texture     f32          2d     T36     t38,space2     1
;                                   texture     f32          1d     T37     t30,space2     1
;                                   texture     f32          3d     T38     t44,space2     1
;                                   texture     f32          3d     T39     t45,space2     1
;                                   texture     f32     2darray     T40     t47,space2     1
;                                   textureunorm_f32     2darray     T41     t85,space2     1
;                                   texture     f32          2d     T42     t83,space2     1
;                                   texture     f32          2d     T43     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 26, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = alloca [4 x i32], align 4
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = alloca [12 x float], align 4
  %71 = alloca [12 x float], align 4
  %72 = alloca [3 x float], align 4
  %73 = alloca [3 x float], align 4
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %66
  %79 = fmul fast float %77, %67
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
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %95 = fmul fast float %93, 2.000000e+00
  %96 = fmul fast float %95, %78
  %97 = fmul fast float %94, 2.000000e+00
  %98 = fmul fast float %97, %79
  %99 = fsub fast float 1.000000e+00, %96
  %100 = fsub fast float 1.000000e+00, %98
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = fmul fast float %99, %102
  %106 = fmul fast float %99, %103
  %107 = fmul fast float %99, %104
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fmul fast float %100, %109
  %113 = fmul fast float %100, %110
  %114 = fmul fast float %100, %111
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fadd fast float %112, %116
  %120 = fadd fast float %119, %105
  %121 = fadd fast float %113, %117
  %122 = fadd fast float %121, %106
  %123 = fadd fast float %114, %118
  %124 = fadd fast float %123, %107
  %125 = fmul fast float %120, %69
  %126 = fmul fast float %122, %69
  %127 = fmul fast float %124, %69
  %128 = fadd fast float %62, 5.000000e-01
  %129 = fptoui float %128 to i32
  %130 = shl i32 %129, 3
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = or i32 %130, 4
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = and i32 %132, 8191
  %137 = lshr i32 %132, 13
  %138 = and i32 %137, 8191
  %139 = lshr i32 %132, 26
  %140 = and i32 %135, 65535
  %141 = lshr i32 %135, 16
  %142 = uitofp i32 %140 to float
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
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
  %157 = add i32 %52, 136
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = extractvalue %dx.types.ResRet.i32 %158, 1
  %161 = extractvalue %dx.types.ResRet.i32 %158, 2
  %162 = extractvalue %dx.types.ResRet.i32 %158, 3
  %163 = bitcast i32 %159 to float
  %164 = bitcast i32 %160 to float
  %165 = bitcast i32 %161 to float
  %166 = bitcast i32 %162 to float
  %167 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %168 = call float @dx.op.unary.f32(i32 25, float %167)  ; Rsqrt(value)
  %169 = fmul fast float %168, %57
  %170 = fmul fast float %168, %58
  %171 = fmul fast float %168, %59
  %172 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = call float @dx.op.unary.f32(i32 25, float %172)  ; Rsqrt(value)
  %174 = fmul fast float %173, %125
  %175 = fmul fast float %173, %126
  %176 = fmul fast float %173, %127
  %177 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float %169, float %170, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %178 = fmul fast float %177, %177
  %179 = fmul fast float %178, %165
  %180 = fadd fast float %179, %166
  %181 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %184 = fmul fast float %183, %172
  %185 = fsub fast float %163, %184
  %186 = fmul fast float %185, %164
  %187 = call float @dx.op.unary.f32(i32 7, float %186)  ; Saturate(value)
  %188 = fmul fast float %187, %181
  %189 = fmul fast float %78, 5.000000e-01
  %190 = fmul fast float %79, 5.000000e-01
  %191 = fptosi float %189 to i32
  %192 = fptosi float %190 to i32
  %193 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %191, i32 %192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = lshr i32 %194, 18
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F4C00EBA0000000
  %198 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %199 = fadd fast float %198, -1.000000e+00
  %200 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %18, i32 0)  ; GetDimensions(handle,mipLevel)
  %201 = extractvalue %dx.types.Dimensions %200, 0
  %202 = sitofp i32 %201 to float
  %203 = extractvalue %dx.types.Dimensions %200, 1
  %204 = sitofp i32 %203 to float
  %205 = fcmp fast oge float %189, %202
  %206 = fcmp fast oge float %190, %204
  %207 = or i1 %205, %206
  %208 = select i1 %207, float 0x4197782600000000, float %199
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = extractvalue %dx.types.CBufRet.f32 %209, 3
  %212 = fmul fast float %210, %78
  %213 = fmul fast float %211, %79
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 114688
  %217 = icmp ne i32 %216, 0
  %218 = select i1 %217, float %212, float 0.000000e+00
  %219 = select i1 %217, float %213, float 0.000000e+00
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %218, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fmul fast float %221, 2.550000e+02
  %223 = fptoui float %222 to i32
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 3
  %227 = and i32 %226, 3
  %228 = icmp ne i32 %227, 0
  %229 = and i32 %226, 4
  %230 = icmp ne i32 %229, 0
  %231 = and i1 %228, %230
  br i1 %231, label %232, label %243

; <label>:232                                     ; preds = %0
  %233 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %234 = fmul fast float %233, %79
  %235 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %236 = fmul fast float %235, %78
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %45, float %236, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fsub fast float 1.000000e+00, %238
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = fcmp fast olt float %239, %241
  br label %246

; <label>:243                                     ; preds = %0
  %244 = icmp eq i32 %229, 0
  %245 = and i1 %228, %244
  br label %246

; <label>:246                                     ; preds = %243, %232
  %247 = phi i1 [ %242, %232 ], [ %245, %243 ]
  %248 = add i32 %52, 60
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %260 = add i32 %52, 72
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %274 = add i32 %52, 36
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %52, 96
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 65535
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %283, 16
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = fmul fast float %285, 0x3F50624DE0000000
  %289 = fmul fast float %287, 0x3F50624DE0000000
  %290 = add i32 %52, 124
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 2
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %304, label %295

; <label>:295                                     ; preds = %246
  %296 = add i32 %52, 244
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = add i32 %298, 0
  %300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %299, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %301 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %300, %dx.types.Handle %75, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 3
  %303 = fmul fast float %302, %65
  br label %304

; <label>:304                                     ; preds = %295, %246
  %305 = phi float [ %65, %246 ], [ %303, %295 ]
  %306 = add i32 %52, 24
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = add i32 %52, 28
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = or i32 %311, %308
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %1023, label %314

; <label>:314                                     ; preds = %304
  %315 = add i32 %52, 92
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = lshr i32 %317, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = fmul fast float %319, 0x3F50624DE0000000
  %321 = add i32 %52, 40
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = lshr i32 %323, 16
  %325 = and i32 %324, 255
  %326 = lshr i32 %323, 24
  %327 = add i32 %52, 100
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %52, 32
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = lshr i32 %336, 22
  %338 = shl nuw nsw i32 %337, 5
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = shl i32 %336, 4
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %336, 7
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 3
  %348 = fmul fast float %347, 1.000000e+03
  %349 = fmul fast float %288, %348
  %350 = call float @dx.op.unary.f32(i32 22, float %349)  ; Frc(value)
  %351 = fadd fast float %350, %278
  %352 = fmul fast float %289, %348
  %353 = call float @dx.op.unary.f32(i32 22, float %352)  ; Frc(value)
  %354 = fadd fast float %353, %280
  %355 = fmul fast float %320, %348
  %356 = call float @dx.op.unary.f32(i32 22, float %355)  ; Frc(value)
  %357 = fmul fast float %356, 0x401921FB60000000
  %358 = fadd fast float %357, %339
  %359 = call float @dx.op.unary.f32(i32 13, float %358)  ; Sin(value)
  %360 = call float @dx.op.unary.f32(i32 12, float %358)  ; Cos(value)
  %361 = fsub fast float -0.000000e+00, %359
  %362 = fadd fast float %63, -5.000000e-01
  %363 = fadd fast float %64, -5.000000e-01
  %364 = fmul fast float %331, %362
  %365 = fmul fast float %333, %363
  %366 = fadd fast float %364, 5.000000e-01
  %367 = fadd fast float %365, 5.000000e-01
  %368 = fmul fast float %342, %366
  %369 = fmul fast float %345, %367
  %370 = fmul fast float %360, %368
  %371 = call float @dx.op.tertiary.f32(i32 46, float %361, float %369, float %370)  ; FMad(a,b,c)
  %372 = fmul fast float %359, %368
  %373 = call float @dx.op.tertiary.f32(i32 46, float %360, float %369, float %372)  ; FMad(a,b,c)
  %374 = fadd fast float %351, %371
  %375 = fadd fast float %354, %373
  %376 = icmp ugt i32 %325, 1
  %377 = icmp ugt i32 %323, 33554431
  %378 = or i1 %377, %376
  br i1 %378, label %379, label %404

; <label>:379                                     ; preds = %314
  %380 = add i32 %52, 84
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = lshr i32 %382, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = fmul fast float %347, %384
  %386 = call float @dx.op.unary.f32(i32 22, float %385)  ; Frc(value)
  %387 = mul nuw nsw i32 %325, %326
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %386, %388
  %390 = call float @dx.op.unary.f32(i32 27, float %389)  ; Round_ni(value)
  %391 = fptoui float %390 to i32
  %392 = urem i32 %391, %325
  %393 = udiv i32 %391, %326
  %394 = call float @dx.op.unary.f32(i32 22, float %374)  ; Frc(value)
  %395 = call float @dx.op.unary.f32(i32 22, float %375)  ; Frc(value)
  %396 = uitofp i32 %392 to float
  %397 = uitofp i32 %393 to float
  %398 = fadd fast float %394, %396
  %399 = fadd fast float %395, %397
  %400 = uitofp i32 %325 to float
  %401 = uitofp i32 %326 to float
  %402 = fdiv fast float %398, %400
  %403 = fdiv fast float %399, %401
  br label %404

; <label>:404                                     ; preds = %379, %314
  %405 = phi float [ %402, %379 ], [ %374, %314 ]
  %406 = phi float [ %403, %379 ], [ %375, %314 ]
  %407 = and i32 %308, 16777216
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %518, label %409

; <label>:409                                     ; preds = %404
  %410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %411 = extractvalue %dx.types.CBufRet.f32 %410, 0
  %412 = extractvalue %dx.types.CBufRet.f32 %410, 1
  %413 = extractvalue %dx.types.CBufRet.f32 %410, 2
  %414 = fadd fast float %411, %125
  %415 = fadd fast float %412, %126
  %416 = fadd fast float %413, %127
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = icmp eq i32 %51, 65535
  br i1 %420, label %515, label %421

; <label>:421                                     ; preds = %409
  %422 = lshr i32 %51, 1
  %423 = shl i32 %422, 2
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %51, 1
  %427 = icmp ne i32 %426, 0
  %428 = lshr i32 %425, 16
  %429 = and i32 %425, 65535
  %430 = select i1 %427, i32 %428, i32 %429
  %431 = icmp eq i32 %430, 65535
  br i1 %431, label %511, label %432

; <label>:432                                     ; preds = %421
  %433 = mul nuw nsw i32 %430, 40
  %434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = extractvalue %dx.types.ResRet.f32 %434, 1
  %437 = extractvalue %dx.types.ResRet.f32 %434, 2
  %438 = add nuw nsw i32 %433, 12
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = extractvalue %dx.types.ResRet.f32 %439, 2
  %443 = add nuw nsw i32 %433, 24
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = add nuw nsw i32 %433, 36
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = fsub fast float %414, %435
  %452 = fsub fast float %415, %436
  %453 = fsub fast float %416, %437
  %454 = fmul fast float %450, %451
  %455 = fmul fast float %450, %452
  %456 = fmul fast float %450, %453
  %457 = call float @dx.op.unary.f32(i32 27, float %454)  ; Round_ni(value)
  %458 = call float @dx.op.unary.f32(i32 27, float %455)  ; Round_ni(value)
  %459 = call float @dx.op.unary.f32(i32 27, float %456)  ; Round_ni(value)
  %460 = fadd fast float %457, 5.000000e-01
  %461 = fadd fast float %458, 5.000000e-01
  %462 = fadd fast float %459, 5.000000e-01
  %463 = fmul fast float %460, %440
  %464 = fmul fast float %461, %441
  %465 = fmul fast float %462, %442
  %466 = shl i32 %51, 2
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = add i32 %468, 0
  %470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %471 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %472 = call float @dx.op.unary.f32(i32 22, float %464)  ; Frc(value)
  %473 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %470, %dx.types.Handle %46, float %471, float %472, float %473, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = fmul fast float %475, 1.023000e+03
  %479 = fmul fast float %476, 1.023000e+03
  %480 = fmul fast float %477, 1.023000e+03
  %481 = fadd fast float %478, 5.000000e-01
  %482 = fadd fast float %479, 5.000000e-01
  %483 = fadd fast float %480, 5.000000e-01
  %484 = call float @dx.op.unary.f32(i32 27, float %481)  ; Round_ni(value)
  %485 = call float @dx.op.unary.f32(i32 27, float %482)  ; Round_ni(value)
  %486 = call float @dx.op.unary.f32(i32 27, float %483)  ; Round_ni(value)
  %487 = fsub fast float %454, %457
  %488 = fsub fast float %455, %458
  %489 = fsub fast float %456, %459
  %490 = fmul fast float %487, 7.500000e-01
  %491 = fmul fast float %488, 7.500000e-01
  %492 = fmul fast float %489, 7.500000e-01
  %493 = fadd fast float %457, 1.250000e-01
  %494 = fadd fast float %493, %490
  %495 = fadd fast float %494, %484
  %496 = fadd fast float %458, 1.250000e-01
  %497 = fadd fast float %496, %491
  %498 = fadd fast float %497, %485
  %499 = fadd fast float %459, 1.250000e-01
  %500 = fadd fast float %499, %492
  %501 = fadd fast float %500, %486
  %502 = fmul fast float %495, %445
  %503 = fmul fast float %498, %446
  %504 = fmul fast float %501, %447
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = add i32 %506, 0
  %508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %508, %dx.types.Handle %44, float %502, float %503, float %504, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  br label %511

; <label>:511                                     ; preds = %432, %421
  %512 = phi float [ %510, %432 ], [ -1.000000e+00, %421 ]
  %513 = fadd fast float %512, %419
  %514 = call float @dx.op.unary.f32(i32 7, float %513)  ; Saturate(value)
  br label %515

; <label>:515                                     ; preds = %511, %409
  %516 = phi float [ %514, %511 ], [ %419, %409 ]
  %517 = fmul fast float %516, %305
  br label %518

; <label>:518                                     ; preds = %515, %404
  %519 = phi float [ %517, %515 ], [ %305, %404 ]
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 256
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %570, label %524

; <label>:524                                     ; preds = %518
  %525 = add i32 %52, 232
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = add i32 %527, 0
  %529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %529, %dx.types.Handle %75, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = add i32 %52, 52
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = shl i32 %534, 4
  %536 = and i32 %535, 32752
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %534, 7
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = fsub fast float 1.000000e+00, %519
  %542 = call float @dx.op.binary.f32(i32 35, float %541, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %543 = bitcast float %519 to i32
  %544 = sitofp i32 %543 to float
  %545 = fadd fast float %544, 0xC1CFBF8940000000
  %546 = fmul fast float %540, %545
  %547 = fadd fast float %546, 0x41CFBF8940000000
  %548 = fptosi float %547 to i32
  %549 = bitcast i32 %548 to float
  %550 = bitcast float %542 to i32
  %551 = sitofp i32 %550 to float
  %552 = fadd fast float %551, 0xC1CFBF8940000000
  %553 = fmul fast float %552, %540
  %554 = fadd fast float %553, 0x41CFBF8940000000
  %555 = fptosi float %554 to i32
  %556 = bitcast i32 %555 to float
  %557 = fmul fast float %549, %537
  %558 = fmul fast float %556, %537
  %559 = fsub fast float %542, %557
  %560 = fadd fast float %558, %542
  %561 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  %562 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %563 = fsub fast float %531, %561
  %564 = fsub fast float %562, %561
  %565 = bitcast float %564 to i32
  %566 = sub nsw i32 2129859010, %565
  %567 = bitcast i32 %566 to float
  %568 = fmul fast float %567, %563
  %569 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  br label %570

; <label>:570                                     ; preds = %524, %518
  %571 = phi float [ %569, %524 ], [ %519, %518 ]
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 128
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %592, label %576

; <label>:576                                     ; preds = %570
  %577 = add i32 %52, 228
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = add i32 %579, 0
  %581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %581, %dx.types.Handle %75, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = and i32 %585, 524288
  %587 = icmp ne i32 %586, 0
  %588 = fcmp fast ogt float %583, 0x3FE0101020000000
  %589 = select i1 %588, float 1.000000e+00, float 0.000000e+00
  %590 = select i1 %587, float %589, float %583
  %591 = fmul fast float %590, %571
  br label %592

; <label>:592                                     ; preds = %576, %570
  %593 = phi float [ %591, %576 ], [ %571, %570 ]
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = and i32 %595, 16
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %796, label %598

; <label>:598                                     ; preds = %592
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = add i32 %52, 216
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = add i32 %603, 0
  %605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %605, %dx.types.Handle %74, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = extractvalue %dx.types.ResRet.f32 %606, 3
  %611 = and i32 %600, 255
  %612 = uitofp i32 %611 to float
  %613 = lshr i32 %600, 8
  %614 = and i32 %613, 255
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %610, %612
  %617 = fadd fast float %616, %615
  %618 = fmul fast float %617, 0x3F70101000000000
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = and i32 %620, 512
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %631, label %623

; <label>:623                                     ; preds = %598
  %624 = add i32 %52, 236
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = add i32 %626, 0
  %628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %628, %dx.types.Handle %75, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  br label %631

; <label>:631                                     ; preds = %623, %598
  %632 = phi float [ %630, %623 ], [ 1.000000e+00, %598 ]
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 33554432
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %743, label %637

; <label>:637                                     ; preds = %631
  %638 = add i32 %52, 80
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = lshr i32 %640, 16
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = add i32 %52, 84
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = and i32 %647, 65535
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = lshr i32 %651, 24
  %653 = uitofp i32 %652 to float
  %654 = fmul fast float %653, 0x3F70101020000000
  %655 = and i32 %651, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = lshr i32 %651, 8
  %659 = and i32 %658, 255
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, 0x3F70101020000000
  %662 = lshr i32 %651, 16
  %663 = and i32 %662, 255
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F70101020000000
  %666 = add i32 %52, 76
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = lshr i32 %668, 24
  %670 = uitofp i32 %669 to float
  %671 = fmul fast float %670, 0x3F70101020000000
  %672 = and i32 %668, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F70101020000000
  %675 = lshr i32 %668, 8
  %676 = and i32 %675, 255
  %677 = uitofp i32 %676 to float
  %678 = fmul fast float %677, 0x3F70101020000000
  %679 = lshr i32 %668, 16
  %680 = and i32 %679, 255
  %681 = uitofp i32 %680 to float
  %682 = fmul fast float %681, 0x3F70101020000000
  %683 = bitcast float %607 to i32
  %684 = ashr i32 %683, 1
  %685 = sub nsw i32 1597463174, %684
  %686 = bitcast i32 %685 to float
  %687 = fmul fast float %607, 5.000000e-01
  %688 = fmul fast float %686, %686
  %689 = fmul fast float %688, %687
  %690 = fsub fast float 1.500000e+00, %689
  %691 = fmul fast float %686, %607
  %692 = fmul fast float %691, %690
  %693 = bitcast float %608 to i32
  %694 = ashr i32 %693, 1
  %695 = sub nsw i32 1597463174, %694
  %696 = bitcast i32 %695 to float
  %697 = fmul fast float %608, 5.000000e-01
  %698 = fmul fast float %696, %696
  %699 = fmul fast float %698, %697
  %700 = fsub fast float 1.500000e+00, %699
  %701 = fmul fast float %696, %608
  %702 = fmul fast float %701, %700
  %703 = bitcast float %609 to i32
  %704 = ashr i32 %703, 1
  %705 = sub nsw i32 1597463174, %704
  %706 = bitcast i32 %705 to float
  %707 = fmul fast float %609, 5.000000e-01
  %708 = fmul fast float %706, %706
  %709 = fmul fast float %708, %707
  %710 = fsub fast float 1.500000e+00, %709
  %711 = fmul fast float %706, %609
  %712 = fmul fast float %711, %710
  %713 = fsub fast float %692, %674
  %714 = fsub fast float %702, %678
  %715 = fsub fast float %712, %682
  %716 = fmul fast float %713, %642
  %717 = fmul fast float %714, %644
  %718 = fmul fast float %715, %649
  %719 = fadd fast float %716, %657
  %720 = fadd fast float %717, %661
  %721 = fadd fast float %718, %665
  %722 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %723 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %724 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %725 = fmul fast float %722, %722
  %726 = fmul fast float %723, %723
  %727 = fmul fast float %724, %724
  %728 = fsub fast float %725, %607
  %729 = fsub fast float %726, %608
  %730 = fsub fast float %727, %609
  %731 = fmul fast float %728, %632
  %732 = fmul fast float %729, %632
  %733 = fmul fast float %730, %632
  %734 = fadd fast float %731, %607
  %735 = fadd fast float %732, %608
  %736 = fadd fast float %733, %609
  %737 = fadd fast float %654, %618
  %738 = fsub fast float %737, %671
  %739 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %740 = fsub fast float %739, %618
  %741 = fmul fast float %740, %632
  %742 = fadd fast float %741, %618
  br label %796

; <label>:743                                     ; preds = %631
  %744 = and i32 %634, 134217728
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %780, label %746

; <label>:746                                     ; preds = %743
  %747 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %748 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %749 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %750 = fadd fast float %747, -5.000000e-01
  %751 = fadd fast float %748, -5.000000e-01
  %752 = fadd fast float %749, -5.000000e-01
  %753 = fmul fast float %750, %632
  %754 = fmul fast float %751, %632
  %755 = fmul fast float %752, %632
  %756 = fadd fast float %753, 5.000000e-01
  %757 = fadd fast float %754, 5.000000e-01
  %758 = fadd fast float %755, 5.000000e-01
  %759 = call float @dx.op.unary.f32(i32 24, float %607)  ; Sqrt(value)
  %760 = call float @dx.op.unary.f32(i32 24, float %608)  ; Sqrt(value)
  %761 = call float @dx.op.unary.f32(i32 24, float %609)  ; Sqrt(value)
  %762 = fmul fast float %756, 2.000000e+00
  %763 = fsub fast float 1.000000e+00, %762
  %764 = fmul fast float %763, %759
  %765 = fadd fast float %764, %762
  %766 = fmul fast float %765, %759
  %767 = fmul fast float %757, 2.000000e+00
  %768 = fsub fast float 1.000000e+00, %767
  %769 = fmul fast float %768, %760
  %770 = fadd fast float %769, %767
  %771 = fmul fast float %770, %760
  %772 = fmul fast float %758, 2.000000e+00
  %773 = fsub fast float 1.000000e+00, %772
  %774 = fmul fast float %773, %761
  %775 = fadd fast float %774, %772
  %776 = fmul fast float %775, %761
  %777 = fmul fast float %766, %766
  %778 = fmul fast float %771, %771
  %779 = fmul fast float %776, %776
  br label %796

; <label>:780                                     ; preds = %743
  %781 = fmul fast float %265, %265
  %782 = fmul fast float %269, %269
  %783 = fmul fast float %273, %273
  %784 = fadd fast float %781, -1.000000e+00
  %785 = fadd fast float %782, -1.000000e+00
  %786 = fadd fast float %783, -1.000000e+00
  %787 = fmul fast float %632, %784
  %788 = fmul fast float %632, %785
  %789 = fmul fast float %632, %786
  %790 = fadd fast float %787, 1.000000e+00
  %791 = fadd fast float %788, 1.000000e+00
  %792 = fadd fast float %789, 1.000000e+00
  %793 = fmul fast float %790, %607
  %794 = fmul fast float %791, %608
  %795 = fmul fast float %792, %609
  br label %796

; <label>:796                                     ; preds = %780, %746, %637, %592
  %797 = phi float [ %742, %637 ], [ %618, %746 ], [ %618, %780 ], [ 0x3FA23C0BE0000000, %592 ]
  %798 = phi float [ %734, %637 ], [ %777, %746 ], [ %793, %780 ], [ 1.000000e+00, %592 ]
  %799 = phi float [ %735, %637 ], [ %778, %746 ], [ %794, %780 ], [ 1.000000e+00, %592 ]
  %800 = phi float [ %736, %637 ], [ %779, %746 ], [ %795, %780 ], [ 1.000000e+00, %592 ]
  %801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.i32 %801, 1
  %803 = and i32 %802, 1
  %804 = icmp ne i32 %803, 0
  %805 = add i32 %52, 132
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 32
  %809 = icmp ne i32 %808, 0
  %810 = and i1 %804, %809
  %811 = select i1 %810, float 1.000000e+00, float %798
  %812 = select i1 %810, float 0x3FD3333340000000, float %799
  %813 = select i1 %810, float 0x3FD3333340000000, float %800
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 32
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %958, label %818

; <label>:818                                     ; preds = %796
  %819 = add i32 %52, 44
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = add i32 %52, 220
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = add i32 %824, 0
  %826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %827 = add i32 %52, 184
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = extractvalue %dx.types.ResRet.i32 %828, 1
  %831 = extractvalue %dx.types.ResRet.i32 %828, 2
  %832 = extractvalue %dx.types.ResRet.i32 %828, 3
  %833 = bitcast i32 %830 to float
  %834 = bitcast i32 %831 to float
  %835 = bitcast i32 %832 to float
  %836 = add i32 %52, 200
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = extractvalue %dx.types.ResRet.i32 %837, 1
  %840 = extractvalue %dx.types.ResRet.i32 %837, 2
  %841 = extractvalue %dx.types.ResRet.i32 %837, 3
  %842 = bitcast i32 %839 to float
  %843 = bitcast i32 %840 to float
  %844 = bitcast i32 %841 to float
  %845 = fmul fast float %833, %405
  %846 = fmul fast float %833, %406
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %849 = fmul fast float %848, %834
  %850 = fmul fast float %848, %835
  %851 = fadd fast float %849, %845
  %852 = fadd fast float %850, %846
  %853 = fmul fast float %842, %405
  %854 = fmul fast float %842, %406
  %855 = fmul fast float %848, %843
  %856 = fmul fast float %848, %844
  %857 = fadd fast float %855, %853
  %858 = fadd fast float %856, %854
  %859 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %826, i32 0)  ; GetDimensions(handle,mipLevel)
  %860 = extractvalue %dx.types.Dimensions %859, 3
  %861 = sitofp i32 %860 to float
  %862 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %826, %dx.types.Handle %74, float %851, float %852, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %863 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %826, %dx.types.Handle %74, float %857, float %858, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %864 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %826, %dx.types.Handle %74, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %865 = extractvalue %dx.types.ResRet.f32 %864, 0
  %866 = extractvalue %dx.types.ResRet.f32 %864, 1
  %867 = extractvalue %dx.types.ResRet.f32 %864, 2
  %868 = extractvalue %dx.types.ResRet.f32 %864, 3
  %869 = and i32 %821, 255
  %870 = uitofp i32 %869 to float
  %871 = lshr i32 %821, 8
  %872 = and i32 %871, 255
  %873 = uitofp i32 %872 to float
  %874 = lshr i32 %821, 16
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = fmul fast float %876, 0x3F70101000000000
  %878 = fmul fast float %865, %870
  %879 = fadd fast float %878, %873
  %880 = fadd fast float %866, -5.000000e-01
  %881 = fadd fast float %868, -5.000000e-01
  %882 = fmul fast float %880, %877
  %883 = fmul fast float %881, %877
  %884 = fadd fast float %882, 5.000000e-01
  %885 = fadd fast float %883, 5.000000e-01
  %886 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %826, %dx.types.Handle %74, float %857, float %858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = extractvalue %dx.types.ResRet.f32 %886, 1
  %889 = extractvalue %dx.types.ResRet.f32 %886, 2
  %890 = extractvalue %dx.types.ResRet.f32 %886, 3
  %891 = fmul fast float %887, %870
  %892 = fadd fast float %891, %873
  %893 = fadd fast float %888, -5.000000e-01
  %894 = fadd fast float %890, -5.000000e-01
  %895 = fmul fast float %893, %877
  %896 = fmul fast float %894, %877
  %897 = fadd fast float %895, 5.000000e-01
  %898 = fadd fast float %896, 5.000000e-01
  %899 = fmul fast float %884, 2.000000e+00
  %900 = fadd fast float %899, -1.000000e+00
  %901 = fmul fast float %885, 2.000000e+00
  %902 = fadd fast float %901, -1.000000e+00
  %903 = fadd fast float %900, %902
  %904 = fmul fast float %903, 5.000000e-01
  %905 = fsub fast float %900, %902
  %906 = fmul fast float %905, 5.000000e-01
  %907 = call float @dx.op.unary.f32(i32 6, float %904)  ; FAbs(value)
  %908 = fsub fast float 1.000000e+00, %907
  %909 = call float @dx.op.unary.f32(i32 6, float %906)  ; FAbs(value)
  %910 = fsub fast float %908, %909
  %911 = call float @dx.op.dot3.f32(i32 55, float %904, float %906, float %910, float %904, float %906, float %910)  ; Dot3(ax,ay,az,bx,by,bz)
  %912 = call float @dx.op.unary.f32(i32 25, float %911)  ; Rsqrt(value)
  %913 = fmul fast float %897, 2.000000e+00
  %914 = fadd fast float %913, -1.000000e+00
  %915 = fmul fast float %898, 2.000000e+00
  %916 = fadd fast float %915, -1.000000e+00
  %917 = fadd fast float %914, %916
  %918 = fmul fast float %917, 5.000000e-01
  %919 = fsub fast float %914, %916
  %920 = fmul fast float %919, 5.000000e-01
  %921 = call float @dx.op.unary.f32(i32 6, float %918)  ; FAbs(value)
  %922 = fsub fast float 1.000000e+00, %921
  %923 = call float @dx.op.unary.f32(i32 6, float %920)  ; FAbs(value)
  %924 = fsub fast float %922, %923
  %925 = call float @dx.op.dot3.f32(i32 55, float %918, float %920, float %924, float %918, float %920, float %924)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = call float @dx.op.unary.f32(i32 25, float %925)  ; Rsqrt(value)
  %927 = fadd fast float %861, -1.000000e+00
  %928 = fsub fast float %927, %862
  %929 = fmul fast float %928, 5.000000e-01
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = fsub fast float %927, %863
  %932 = fmul fast float %931, 5.000000e-01
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  %934 = bitcast i32 %829 to float
  %935 = bitcast i32 %838 to float
  %936 = fmul fast float %904, %934
  %937 = fmul fast float %936, %912
  %938 = fmul fast float %937, %930
  %939 = fmul fast float %906, %934
  %940 = fmul fast float %939, %912
  %941 = fmul fast float %940, %930
  %942 = fmul fast float %926, %935
  %943 = fmul fast float %942, %918
  %944 = fmul fast float %943, %933
  %945 = fmul fast float %942, %920
  %946 = fmul fast float %945, %933
  %947 = fadd fast float %944, %938
  %948 = fadd fast float %946, %941
  %949 = fmul fast float %867, %934
  %950 = fmul fast float %889, %935
  %951 = fadd fast float %950, %949
  %952 = fmul fast float %879, %934
  %953 = fmul fast float %892, %935
  %954 = fadd fast float %953, %952
  %955 = fmul fast float %954, 0x3F70101000000000
  %956 = call float @dx.op.dot2.f32(i32 54, float %947, float %948, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %957 = call float @dx.op.dot2.f32(i32 54, float %947, float %948, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %958

; <label>:958                                     ; preds = %818, %796
  %959 = phi float [ %955, %818 ], [ 0x3FD6666660000000, %796 ]
  %960 = phi float [ %956, %818 ], [ 0.000000e+00, %796 ]
  %961 = phi float [ %957, %818 ], [ 0.000000e+00, %796 ]
  %962 = phi float [ %951, %818 ], [ 1.000000e+00, %796 ]
  %963 = add i32 %52, 64
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = lshr i32 %965, 22
  %967 = shl nuw nsw i32 %966, 5
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 64
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %1006, label %973

; <label>:973                                     ; preds = %958
  %974 = add i32 %52, 224
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = add i32 %976, 0
  %978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %977, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 131072
  %982 = icmp eq i32 %981, 0
  %983 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %978, %dx.types.Handle %74, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %984 = extractvalue %dx.types.ResRet.f32 %983, 0
  %985 = extractvalue %dx.types.ResRet.f32 %983, 1
  %986 = extractvalue %dx.types.ResRet.f32 %983, 2
  %987 = fmul fast float %984, %253
  %988 = fmul fast float %985, %256
  %989 = fmul fast float %986, %259
  br i1 %982, label %996, label %990

; <label>:990                                     ; preds = %973
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %993 = fmul fast float %992, %987
  %994 = fmul fast float %992, %988
  %995 = fmul fast float %992, %989
  br label %996

; <label>:996                                     ; preds = %990, %973
  %997 = phi float [ %993, %990 ], [ %987, %973 ]
  %998 = phi float [ %994, %990 ], [ %988, %973 ]
  %999 = phi float [ %995, %990 ], [ %989, %973 ]
  %1000 = fmul fast float %997, %968
  %1001 = select i1 %247, float %1000, float %997
  %1002 = call float @dx.op.dot3.f32(i32 55, float %1001, float %998, float %999, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = select i1 %247, float 0.000000e+00, float %997
  %1004 = select i1 %247, float %1002, float %998
  %1005 = select i1 %247, float 0.000000e+00, float %999
  br label %1006

; <label>:1006                                    ; preds = %996, %958
  %1007 = phi float [ %1003, %996 ], [ 0.000000e+00, %958 ]
  %1008 = phi float [ %1004, %996 ], [ 0.000000e+00, %958 ]
  %1009 = phi float [ %1005, %996 ], [ 0.000000e+00, %958 ]
  %1010 = add i32 %52, 48
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = and i32 %1012, 255
  %1014 = uitofp i32 %1013 to float
  %1015 = lshr i32 %1012, 8
  %1016 = and i32 %1015, 255
  %1017 = uitofp i32 %1016 to float
  %1018 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1019 = fmul fast float %1017, %1018
  %1020 = fadd fast float %1019, %1014
  %1021 = fmul fast float %1020, 0x3F70101020000000
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  br label %1023

; <label>:1023                                    ; preds = %1006, %304
  %1024 = phi float [ 0.000000e+00, %304 ], [ %960, %1006 ]
  %1025 = phi float [ 0.000000e+00, %304 ], [ %961, %1006 ]
  %1026 = phi float [ 0.000000e+00, %304 ], [ %811, %1006 ]
  %1027 = phi float [ 0.000000e+00, %304 ], [ %812, %1006 ]
  %1028 = phi float [ 0.000000e+00, %304 ], [ %813, %1006 ]
  %1029 = phi float [ 0.000000e+00, %304 ], [ %1007, %1006 ]
  %1030 = phi float [ 0.000000e+00, %304 ], [ %1008, %1006 ]
  %1031 = phi float [ 0.000000e+00, %304 ], [ %1009, %1006 ]
  %1032 = phi float [ 0.000000e+00, %304 ], [ %797, %1006 ]
  %1033 = phi float [ 0.000000e+00, %304 ], [ %593, %1006 ]
  %1034 = phi float [ 0.000000e+00, %304 ], [ %959, %1006 ]
  %1035 = phi float [ 0.000000e+00, %304 ], [ %962, %1006 ]
  %1036 = phi float [ 0.000000e+00, %304 ], [ %1022, %1006 ]
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = call float @dx.op.dot2.f32(i32 54, float %1024, float %1025, float %1024, float %1025)  ; Dot2(ax,ay,bx,by)
  %1040 = fmul fast float %1039, 0x3FE3333340000000
  %1041 = fsub fast float 1.000000e+00, %1040
  %1042 = call float @dx.op.dot3.f32(i32 55, float %1024, float %1025, float %1041, float %1024, float %1025, float %1041)  ; Dot3(ax,ay,az,bx,by,bz)
  %1043 = call float @dx.op.unary.f32(i32 25, float %1042)  ; Rsqrt(value)
  %1044 = fmul fast float %1043, %1024
  %1045 = fmul fast float %1043, %1025
  %1046 = fmul fast float %1041, %1043
  %1047 = fmul fast float %1046, %57
  %1048 = fmul fast float %1046, %58
  %1049 = fmul fast float %1046, %59
  %1050 = fmul fast float %1044, %53
  %1051 = fmul fast float %1044, %54
  %1052 = fmul fast float %1044, %55
  %1053 = fadd fast float %1047, %1050
  %1054 = fadd fast float %1048, %1051
  %1055 = fadd fast float %1049, %1052
  %1056 = fmul fast float %1045, %89
  %1057 = fmul fast float %1045, %90
  %1058 = fmul fast float %1045, %91
  %1059 = fadd fast float %1053, %1056
  %1060 = fadd fast float %1054, %1057
  %1061 = fadd fast float %1055, %1058
  %1062 = call float @dx.op.dot3.f32(i32 55, float %1059, float %1060, float %1061, float %1059, float %1060, float %1061)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = call float @dx.op.unary.f32(i32 25, float %1062)  ; Rsqrt(value)
  %1064 = fmul fast float %1059, %1063
  %1065 = fmul fast float %1060, %1063
  %1066 = fmul fast float %1061, %1063
  %1067 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %1068 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %1069 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %1070 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %1071 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %1072 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %1073 = fadd fast float %1067, %125
  %1074 = fadd fast float %1068, %126
  %1075 = fadd fast float %1069, %127
  %1076 = fadd fast float %1070, %125
  %1077 = fadd fast float %1071, %126
  %1078 = fadd fast float %1072, %127
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 3
  %1086 = fmul fast float %1080, %78
  %1087 = fmul fast float %1086, %1084
  %1088 = fmul fast float %1081, %79
  %1089 = fmul fast float %1088, %1085
  %1090 = fptoui float %1087 to i32
  %1091 = fptoui float %1089 to i32
  %1092 = fadd fast float %1080, -1.000000e+00
  %1093 = fadd fast float %1081, -1.000000e+00
  %1094 = fptoui float %1092 to i32
  %1095 = fptoui float %1093 to i32
  %1096 = call i32 @dx.op.binary.i32(i32 40, i32 %1090, i32 %1094)  ; UMin(a,b)
  %1097 = call i32 @dx.op.binary.i32(i32 40, i32 %1091, i32 %1095)  ; UMin(a,b)
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1100 = extractvalue %dx.types.CBufRet.f32 %1098, 3
  %1101 = fmul fast float %1099, %69
  %1102 = fsub fast float %1101, %1100
  %1103 = fadd fast float %1082, -1.000000e+00
  %1104 = call float @dx.op.binary.f32(i32 36, float %1102, float %1103)  ; FMin(a,b)
  %1105 = fptoui float %1104 to i32
  %1106 = fptoui float %1080 to i32
  %1107 = fptoui float %1081 to i32
  %1108 = mul i32 %1105, %1107
  %1109 = add i32 %1108, %1097
  %1110 = mul i32 %1109, %1106
  %1111 = add i32 %1110, %1096
  %1112 = shl i32 %1111, 2
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 1023
  %1116 = lshr i32 %1114, 10
  %1117 = icmp eq i32 %1115, 0
  br i1 %1117, label %1543, label %1118

; <label>:1118                                    ; preds = %1023
  %1119 = and i32 %1114, 1023
  br label %1120

; <label>:1120                                    ; preds = %1246, %1118
  %1121 = phi float [ %1247, %1246 ], [ 0.000000e+00, %1118 ]
  %1122 = phi float [ %1248, %1246 ], [ %1038, %1118 ]
  %1123 = phi float [ %1249, %1246 ], [ %1036, %1118 ]
  %1124 = phi float [ %1250, %1246 ], [ 0.000000e+00, %1118 ]
  %1125 = phi float [ %1251, %1246 ], [ 0.000000e+00, %1118 ]
  %1126 = phi float [ %1252, %1246 ], [ %1029, %1118 ]
  %1127 = phi float [ %1253, %1246 ], [ %1030, %1118 ]
  %1128 = phi float [ %1254, %1246 ], [ %1031, %1118 ]
  %1129 = phi float [ %1255, %1246 ], [ %1064, %1118 ]
  %1130 = phi float [ %1256, %1246 ], [ %1065, %1118 ]
  %1131 = phi float [ %1257, %1246 ], [ %1066, %1118 ]
  %1132 = phi float [ %1258, %1246 ], [ %1035, %1118 ]
  %1133 = phi float [ %1259, %1246 ], [ %1034, %1118 ]
  %1134 = phi float [ %1260, %1246 ], [ 0.000000e+00, %1118 ]
  %1135 = phi float [ %1261, %1246 ], [ %1032, %1118 ]
  %1136 = phi float [ %1262, %1246 ], [ %1026, %1118 ]
  %1137 = phi float [ %1263, %1246 ], [ %1027, %1118 ]
  %1138 = phi float [ %1264, %1246 ], [ %1028, %1118 ]
  %1139 = phi i32 [ %1196, %1246 ], [ 0, %1118 ]
  %1140 = add nuw nsw i32 %1139, %1116
  %1141 = shl i32 %1140, 2
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = shl i32 %1143, 8
  %1145 = or i32 %1144, 48
  %1146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = extractvalue %dx.types.ResRet.f32 %1146, 3
  %1151 = or i32 %1144, 64
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.i32 %1152, 1
  %1155 = or i32 %1144, 80
  %1156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 2
  %1158 = extractvalue %dx.types.ResRet.f32 %1156, 3
  %1159 = or i32 %1144, 96
  %1160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1160, 2
  %1164 = extractvalue %dx.types.ResRet.f32 %1160, 3
  %1165 = or i32 %1144, 112
  %1166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1168 = or i32 %1144, 128
  %1169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.ResRet.f32 %1169, 2
  %1173 = extractvalue %dx.types.ResRet.f32 %1169, 3
  %1174 = or i32 %1144, 144
  %1175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  %1179 = extractvalue %dx.types.ResRet.f32 %1175, 3
  %1180 = or i32 %1144, 160
  %1181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.ResRet.f32 %1181, 2
  %1185 = extractvalue %dx.types.ResRet.f32 %1181, 3
  %1186 = or i32 %1144, 192
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = or i32 %1144, 208
  %1190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = or i32 %1144, 248
  %1193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = add nuw nsw i32 %1139, 1
  %1197 = bitcast float %1150 to i32
  %1198 = and i32 %1197, 2560
  %1199 = icmp eq i32 %1198, 0
  %1200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1204 = extractvalue %dx.types.ResRet.f32 %1200, 3
  %1205 = call float @dx.op.dot4.f32(i32 56, float %1201, float %1202, float %1203, float %1204, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1206 = or i32 %1144, 16
  %1207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.ResRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.ResRet.f32 %1207, 2
  %1211 = extractvalue %dx.types.ResRet.f32 %1207, 3
  %1212 = call float @dx.op.dot4.f32(i32 56, float %1208, float %1209, float %1210, float %1211, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1213 = or i32 %1144, 32
  %1214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1218 = extractvalue %dx.types.ResRet.f32 %1214, 3
  %1219 = call float @dx.op.dot4.f32(i32 56, float %1215, float %1216, float %1217, float %1218, float %125, float %126, float %127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1220 = call float @dx.op.unary.f32(i32 27, float %1205)  ; Round_ni(value)
  %1221 = call float @dx.op.unary.f32(i32 6, float %1220)  ; FAbs(value)
  %1222 = call float @dx.op.unary.f32(i32 27, float %1212)  ; Round_ni(value)
  %1223 = call float @dx.op.unary.f32(i32 6, float %1222)  ; FAbs(value)
  %1224 = call float @dx.op.unary.f32(i32 6, float %1219)  ; FAbs(value)
  %1225 = call float @dx.op.unary.f32(i32 27, float %1224)  ; Round_ni(value)
  %1226 = fadd fast float %1223, %1221
  %1227 = fadd fast float %1226, %1225
  %1228 = fcmp fast oeq float %1227, 0.000000e+00
  %1229 = call float @dx.op.dot4.f32(i32 56, float %1201, float %1202, float %1203, float %1204, float %1073, float %1074, float %1075, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1230 = call float @dx.op.dot4.f32(i32 56, float %1208, float %1209, float %1210, float %1211, float %1073, float %1074, float %1075, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1231 = call float @dx.op.dot4.f32(i32 56, float %1201, float %1202, float %1203, float %1204, float %1076, float %1077, float %1078, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1232 = call float @dx.op.dot4.f32(i32 56, float %1208, float %1209, float %1210, float %1211, float %1076, float %1077, float %1078, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1233 = fsub fast float %1229, %1205
  %1234 = fsub fast float %1231, %1205
  %1235 = fsub fast float %1230, %1212
  %1236 = fsub fast float %1232, %1212
  %1237 = call float @dx.op.dot3.f32(i32 55, float %1147, float %1148, float %1149, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 2
  %1240 = fadd fast float %1239, %1237
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1238, 0
  %1243 = fcmp fast ogt float %1241, %1242
  %1244 = and i1 %1228, %1243
  %1245 = and i1 %1199, %1244
  br i1 %1245, label %1266, label %1246

; <label>:1246                                    ; preds = %1529, %1347, %1266, %1120
  %1247 = phi float [ %1121, %1266 ], [ %1350, %1347 ], [ %1350, %1529 ], [ %1121, %1120 ]
  %1248 = phi float [ %1122, %1266 ], [ %1122, %1347 ], [ %1504, %1529 ], [ %1122, %1120 ]
  %1249 = phi float [ %1123, %1266 ], [ %1123, %1347 ], [ %1502, %1529 ], [ %1123, %1120 ]
  %1250 = phi float [ %1124, %1266 ], [ %1124, %1347 ], [ %1474, %1529 ], [ %1124, %1120 ]
  %1251 = phi float [ %1125, %1266 ], [ %1125, %1347 ], [ %1472, %1529 ], [ %1125, %1120 ]
  %1252 = phi float [ %1126, %1266 ], [ %1126, %1347 ], [ %1539, %1529 ], [ %1126, %1120 ]
  %1253 = phi float [ %1127, %1266 ], [ %1127, %1347 ], [ %1540, %1529 ], [ %1127, %1120 ]
  %1254 = phi float [ %1128, %1266 ], [ %1128, %1347 ], [ %1541, %1529 ], [ %1128, %1120 ]
  %1255 = phi float [ %1129, %1266 ], [ %1129, %1347 ], [ %1453, %1529 ], [ %1129, %1120 ]
  %1256 = phi float [ %1130, %1266 ], [ %1130, %1347 ], [ %1454, %1529 ], [ %1130, %1120 ]
  %1257 = phi float [ %1131, %1266 ], [ %1131, %1347 ], [ %1455, %1529 ], [ %1131, %1120 ]
  %1258 = phi float [ %1132, %1266 ], [ %1132, %1347 ], [ %1482, %1529 ], [ %1132, %1120 ]
  %1259 = phi float [ %1133, %1266 ], [ %1133, %1347 ], [ %1479, %1529 ], [ %1133, %1120 ]
  %1260 = phi float [ %1134, %1266 ], [ %1134, %1347 ], [ %1476, %1529 ], [ %1134, %1120 ]
  %1261 = phi float [ %1135, %1266 ], [ %1135, %1347 ], [ %1470, %1529 ], [ %1135, %1120 ]
  %1262 = phi float [ %1136, %1266 ], [ %1136, %1347 ], [ %1465, %1529 ], [ %1136, %1120 ]
  %1263 = phi float [ %1137, %1266 ], [ %1137, %1347 ], [ %1466, %1529 ], [ %1137, %1120 ]
  %1264 = phi float [ %1138, %1266 ], [ %1138, %1347 ], [ %1467, %1529 ], [ %1138, %1120 ]
  %1265 = icmp eq i32 %1196, %1119
  br i1 %1265, label %1542, label %1120

; <label>:1266                                    ; preds = %1120
  %1267 = extractvalue %dx.types.ResRet.f32 %1166, 3
  %1268 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1270 = extractvalue %dx.types.ResRet.f32 %1156, 1
  %1271 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1272 = extractvalue %dx.types.ResRet.i32 %1152, 3
  %1273 = extractvalue %dx.types.ResRet.i32 %1152, 2
  %1274 = add i32 %1272, 0
  %1275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1274, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1277 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1275, %dx.types.Handle %1276, float %1205, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1233, float %1235, float undef, float %1234, float %1236, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = fmul fast float %1278, %1271
  %1280 = fadd fast float %1279, %1270
  %1281 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1282 = fmul fast float %1205, %1161
  %1283 = call float @dx.op.tertiary.f32(i32 46, float %1162, float %1212, float %1282)  ; FMad(a,b,c)
  %1284 = fadd fast float %1283, %1269
  %1285 = fmul fast float %1205, %1163
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1164, float %1212, float %1285)  ; FMad(a,b,c)
  %1287 = fadd fast float %1286, %1268
  %1288 = fmul fast float %1233, %1161
  %1289 = call float @dx.op.tertiary.f32(i32 46, float %1162, float %1235, float %1288)  ; FMad(a,b,c)
  %1290 = fmul fast float %1233, %1163
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1164, float %1235, float %1290)  ; FMad(a,b,c)
  %1292 = fmul fast float %1234, %1161
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1162, float %1236, float %1292)  ; FMad(a,b,c)
  %1294 = fmul fast float %1234, %1163
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1164, float %1236, float %1294)  ; FMad(a,b,c)
  %1296 = add i32 %1273, 0
  %1297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1298 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1297, %dx.types.Handle %1276, float %1284, float %1287, float undef, float undef, i32 0, i32 0, i32 undef, float %1289, float %1291, float undef, float %1293, float %1295, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = and i32 %1197, 1024
  %1301 = icmp ne i32 %1300, 0
  %1302 = fcmp fast ogt float %1299, 0x3FE0101020000000
  %1303 = uitofp i1 %1302 to float
  %1304 = select i1 %1301, float %1303, float %1299
  %1305 = and i32 %1197, 8192
  %1306 = icmp ne i32 %1305, 0
  %1307 = select i1 %1306, float %1267, float 1.000000e+00
  %1308 = fmul fast float %1205, 2.000000e+00
  %1309 = fadd fast float %1308, -1.000000e+00
  %1310 = call float @dx.op.unary.f32(i32 6, float %1309)  ; FAbs(value)
  %1311 = fmul fast float %1310, %1194
  %1312 = fsub fast float %1311, %1194
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = fmul fast float %1212, 2.000000e+00
  %1315 = fadd fast float %1314, -1.000000e+00
  %1316 = call float @dx.op.unary.f32(i32 6, float %1315)  ; FAbs(value)
  %1317 = fmul fast float %1316, %1195
  %1318 = fsub fast float %1317, %1195
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = fmul fast float %1224, %1157
  %1321 = fsub fast float %1320, %1157
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fmul fast float %1281, %1307
  %1324 = fmul fast float %1323, %1278
  %1325 = fmul fast float %1324, %1313
  %1326 = fmul fast float %1325, %1304
  %1327 = fmul fast float %1326, %1319
  %1328 = fmul fast float %1327, %1322
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1331 = extractvalue %dx.types.CBufRet.f32 %1329, 0
  %1332 = fsub fast float %1241, %1331
  %1333 = fmul fast float %1332, %1330
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1335 = fmul fast float %1328, %1158
  %1336 = fadd fast float %1328, %1158
  %1337 = fmul fast float %1336, %1167
  %1338 = fsub fast float %1337, %1167
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = and i32 %1197, 128
  %1341 = icmp ne i32 %1340, 0
  %1342 = select i1 %1341, float %1339, float %1335
  %1343 = fmul fast float %1342, %1334
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 0
  %1346 = fcmp fast ugt float %1343, %1345
  br i1 %1346, label %1347, label %1246

; <label>:1347                                    ; preds = %1266
  %1348 = select i1 %1306, float %1343, float 0.000000e+00
  %1349 = fadd fast float %1348, %1121
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  br i1 %1306, label %1246, label %1351

; <label>:1351                                    ; preds = %1347
  %1352 = and i32 %1197, 4
  %1353 = and i32 %1197, 8
  %1354 = add i32 %1153, 0
  %1355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1354, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1357 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1355, %dx.types.Handle %1356, float %1284, float %1287, float undef, float undef, i32 0, i32 0, i32 undef, float %1289, float %1291, float undef, float %1293, float %1295, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.ResRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.ResRet.f32 %1357, 2
  %1361 = extractvalue %dx.types.ResRet.f32 %1357, 3
  %1362 = bitcast float %1179 to i32
  %1363 = and i32 %1362, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = lshr i32 %1362, 8
  %1366 = and i32 %1365, 255
  %1367 = uitofp i32 %1366 to float
  %1368 = fmul fast float %1361, %1364
  %1369 = fadd fast float %1368, %1367
  %1370 = fmul fast float %1369, 0x3F70101000000000
  %1371 = add i32 %1154, 0
  %1372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1371, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1373 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1372, %dx.types.Handle %1356, float %1284, float %1287, float undef, float undef, i32 0, i32 0, i32 undef, float %1289, float %1291, float undef, float %1293, float %1295, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.ResRet.f32 %1373, 1
  %1376 = extractvalue %dx.types.ResRet.f32 %1373, 2
  %1377 = extractvalue %dx.types.ResRet.f32 %1373, 3
  %1378 = bitcast float %1173 to i32
  %1379 = and i32 %1378, 255
  %1380 = uitofp i32 %1379 to float
  %1381 = lshr i32 %1378, 8
  %1382 = and i32 %1381, 255
  %1383 = uitofp i32 %1382 to float
  %1384 = lshr i32 %1378, 16
  %1385 = and i32 %1384, 255
  %1386 = uitofp i32 %1385 to float
  %1387 = fmul fast float %1386, 0x3F70101000000000
  %1388 = fmul fast float %1374, %1380
  %1389 = fadd fast float %1388, %1383
  %1390 = fmul fast float %1389, 0x3F70101000000000
  %1391 = fadd fast float %1375, -5.000000e-01
  %1392 = fadd fast float %1377, -5.000000e-01
  %1393 = fmul fast float %1391, %1387
  %1394 = fmul fast float %1392, %1387
  %1395 = fadd fast float %1393, 5.000000e-01
  %1396 = fadd fast float %1394, 5.000000e-01
  %1397 = fmul fast float %1358, %1182
  %1398 = fmul fast float %1359, %1183
  %1399 = fmul fast float %1360, %1184
  %1400 = fmul fast float %1395, 2.000000e+00
  %1401 = fadd fast float %1400, -1.000000e+00
  %1402 = fmul fast float %1396, 2.000000e+00
  %1403 = fadd fast float %1402, -1.000000e+00
  %1404 = fadd fast float %1401, %1403
  %1405 = fmul fast float %1404, 5.000000e-01
  %1406 = fsub fast float %1401, %1403
  %1407 = fmul fast float %1406, 5.000000e-01
  %1408 = call float @dx.op.unary.f32(i32 6, float %1405)  ; FAbs(value)
  %1409 = fsub fast float 1.000000e+00, %1408
  %1410 = call float @dx.op.unary.f32(i32 6, float %1407)  ; FAbs(value)
  %1411 = fsub fast float %1409, %1410
  %1412 = call float @dx.op.dot3.f32(i32 55, float %1405, float %1407, float %1411, float %1405, float %1407, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1413 = call float @dx.op.unary.f32(i32 25, float %1412)  ; Rsqrt(value)
  %1414 = fmul fast float %1405, %1413
  %1415 = fmul fast float %1407, %1413
  %1416 = fmul fast float %1413, %1411
  %1417 = fmul fast float %1416, %1147
  %1418 = fmul fast float %1416, %1148
  %1419 = fmul fast float %1416, %1149
  %1420 = fmul fast float %1414, %1170
  %1421 = fmul fast float %1414, %1171
  %1422 = fmul fast float %1414, %1172
  %1423 = fadd fast float %1420, %1417
  %1424 = fadd fast float %1421, %1418
  %1425 = fadd fast float %1422, %1419
  %1426 = fmul fast float %1415, %1176
  %1427 = fmul fast float %1415, %1177
  %1428 = fmul fast float %1415, %1178
  %1429 = fadd fast float %1423, %1426
  %1430 = fadd fast float %1424, %1427
  %1431 = fadd fast float %1425, %1428
  %1432 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float %1429, float %1430, float %1431)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = call float @dx.op.unary.f32(i32 25, float %1432)  ; Rsqrt(value)
  %1434 = fmul fast float %1429, %1433
  %1435 = fmul fast float %1430, %1433
  %1436 = fmul fast float %1431, %1433
  %1437 = icmp ne i32 %1353, 0
  %1438 = select i1 %1437, float 1.000000e+00, float 0.000000e+00
  %1439 = fmul fast float %1343, %1438
  %1440 = and i32 %1197, 1
  %1441 = icmp eq i32 %1440, 0
  br i1 %1441, label %1442, label %1446

; <label>:1442                                    ; preds = %1351
  %1443 = fsub fast float %1434, %1129
  %1444 = fsub fast float %1435, %1130
  %1445 = fsub fast float %1436, %1131
  br label %1446

; <label>:1446                                    ; preds = %1442, %1351
  %1447 = phi float [ %1443, %1442 ], [ %1434, %1351 ]
  %1448 = phi float [ %1444, %1442 ], [ %1435, %1351 ]
  %1449 = phi float [ %1445, %1442 ], [ %1436, %1351 ]
  %1450 = fmul float %1449, %1439
  %1451 = fmul float %1448, %1439
  %1452 = fmul float %1447, %1439
  %1453 = fadd fast float %1452, %1129
  %1454 = fadd fast float %1451, %1130
  %1455 = fadd fast float %1450, %1131
  %1456 = icmp ne i32 %1352, 0
  %1457 = select i1 %1456, float 1.000000e+00, float 0.000000e+00
  %1458 = fmul fast float %1343, %1457
  %1459 = fsub fast float %1397, %1136
  %1460 = fsub fast float %1398, %1137
  %1461 = fsub fast float %1399, %1138
  %1462 = fmul fast float %1459, %1458
  %1463 = fmul fast float %1460, %1458
  %1464 = fmul fast float %1461, %1458
  %1465 = fadd fast float %1462, %1136
  %1466 = fadd fast float %1463, %1137
  %1467 = fadd fast float %1464, %1138
  %1468 = fsub fast float %1370, %1135
  %1469 = fmul fast float %1468, %1458
  %1470 = fadd fast float %1469, %1135
  %1471 = fmul fast float %1458, %1125
  %1472 = fsub fast float %1125, %1471
  %1473 = fmul fast float %1458, %1124
  %1474 = fsub fast float %1124, %1473
  %1475 = fadd fast float %1343, %1134
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1477 = fsub fast float %1390, %1133
  %1478 = fmul fast float %1477, %1439
  %1479 = fadd fast float %1478, %1133
  %1480 = fsub fast float %1376, %1132
  %1481 = fmul fast float %1480, %1439
  %1482 = fadd fast float %1481, %1132
  %1483 = call float @dx.op.dot3.f32(i32 55, float %1397, float %1398, float %1399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1487 = fmul fast float %1486, %1483
  %1488 = fadd fast float %1487, %1485
  %1489 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1490 = bitcast float %1185 to i32
  %1491 = and i32 %1490, 65535
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = lshr i32 %1490, 16
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = fcmp fast oge float %1492, 0.000000e+00
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 0
  %1498 = select i1 %1495, float %1492, float %1497
  %1499 = fadd fast float %1498, %1494
  %1500 = fsub fast float %1489, %1123
  %1501 = fmul fast float %1500, %1343
  %1502 = fadd fast float %1501, %1123
  %1503 = fmul fast float %1499, %1343
  %1504 = call float @dx.op.binary.f32(i32 35, float %1122, float %1503)  ; FMax(a,b)
  %1505 = and i32 %1197, 16
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1529, label %1507

; <label>:1507                                    ; preds = %1446
  %1508 = bitcast float %1191 to i32
  %1509 = add i32 %1188, 0
  %1510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1509, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1511 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1510, %dx.types.Handle %1356, float %1284, float %1287, float undef, float undef, i32 0, i32 0, i32 undef, float %1289, float %1291, float undef, float %1293, float %1295, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = extractvalue %dx.types.ResRet.f32 %1511, 1
  %1514 = extractvalue %dx.types.ResRet.f32 %1511, 2
  %1515 = and i32 %1508, 65535
  %1516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1515)  ; LegacyF16ToF32(value)
  %1517 = fmul fast float %1512, %1182
  %1518 = fmul fast float %1513, %1183
  %1519 = fmul fast float %1514, %1184
  %1520 = and i32 %1197, 16384
  %1521 = icmp ne i32 %1520, 0
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = select i1 %1521, float %1523, float 1.000000e+00
  %1525 = fmul fast float %1524, %1516
  %1526 = fmul fast float %1517, %1525
  %1527 = fmul fast float %1518, %1525
  %1528 = fmul fast float %1519, %1525
  br label %1529

; <label>:1529                                    ; preds = %1507, %1446
  %1530 = phi float [ %1526, %1507 ], [ 0.000000e+00, %1446 ]
  %1531 = phi float [ %1527, %1507 ], [ 0.000000e+00, %1446 ]
  %1532 = phi float [ %1528, %1507 ], [ 0.000000e+00, %1446 ]
  %1533 = fsub fast float %1530, %1126
  %1534 = fsub fast float %1531, %1127
  %1535 = fsub fast float %1532, %1128
  %1536 = fmul fast float %1533, %1343
  %1537 = fmul fast float %1534, %1343
  %1538 = fmul fast float %1535, %1343
  %1539 = fadd fast float %1536, %1126
  %1540 = fadd fast float %1537, %1127
  %1541 = fadd fast float %1538, %1128
  br label %1246

; <label>:1542                                    ; preds = %1246
  br label %1543

; <label>:1543                                    ; preds = %1542, %1023
  %1544 = phi float [ 0.000000e+00, %1023 ], [ %1247, %1542 ]
  %1545 = phi float [ %1038, %1023 ], [ %1248, %1542 ]
  %1546 = phi float [ %1036, %1023 ], [ %1249, %1542 ]
  %1547 = phi float [ 0.000000e+00, %1023 ], [ %1250, %1542 ]
  %1548 = phi float [ 0.000000e+00, %1023 ], [ %1251, %1542 ]
  %1549 = phi float [ %1029, %1023 ], [ %1252, %1542 ]
  %1550 = phi float [ %1030, %1023 ], [ %1253, %1542 ]
  %1551 = phi float [ %1031, %1023 ], [ %1254, %1542 ]
  %1552 = phi float [ %1064, %1023 ], [ %1255, %1542 ]
  %1553 = phi float [ %1065, %1023 ], [ %1256, %1542 ]
  %1554 = phi float [ %1066, %1023 ], [ %1257, %1542 ]
  %1555 = phi float [ %1035, %1023 ], [ %1258, %1542 ]
  %1556 = phi float [ %1034, %1023 ], [ %1259, %1542 ]
  %1557 = phi float [ 0.000000e+00, %1023 ], [ %1260, %1542 ]
  %1558 = phi float [ %1032, %1023 ], [ %1261, %1542 ]
  %1559 = phi float [ %1026, %1023 ], [ %1262, %1542 ]
  %1560 = phi float [ %1027, %1023 ], [ %1263, %1542 ]
  %1561 = phi float [ %1028, %1023 ], [ %1264, %1542 ]
  %1562 = call float @dx.op.dot3.f32(i32 55, float %1552, float %1553, float %1554, float %1552, float %1553, float %1554)  ; Dot3(ax,ay,az,bx,by,bz)
  %1563 = call float @dx.op.unary.f32(i32 25, float %1562)  ; Rsqrt(value)
  %1564 = fmul fast float %1563, %1552
  %1565 = fmul fast float %1563, %1553
  %1566 = fmul fast float %1563, %1554
  %1567 = fadd fast float %1557, %1033
  %1568 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1569 = call float @dx.op.dot3.f32(i32 55, float %1564, float %1565, float %1566, float %1564, float %1565, float %1566)  ; Dot3(ax,ay,az,bx,by,bz)
  %1570 = call float @dx.op.unary.f32(i32 25, float %1569)  ; Rsqrt(value)
  %1571 = fmul fast float %1570, %1564
  %1572 = fmul fast float %1570, %1565
  %1573 = fmul fast float %1570, %1566
  %1574 = add i32 %52, 168
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1574, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = extractvalue %dx.types.ResRet.i32 %1575, 1
  %1578 = extractvalue %dx.types.ResRet.i32 %1575, 2
  %1579 = bitcast i32 %1576 to float
  %1580 = bitcast i32 %1577 to float
  %1581 = bitcast i32 %1578 to float
  %1582 = add i32 %52, 152
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = extractvalue %dx.types.ResRet.i32 %1583, 1
  %1586 = extractvalue %dx.types.ResRet.i32 %1583, 2
  %1587 = bitcast i32 %1584 to float
  %1588 = bitcast i32 %1585 to float
  %1589 = bitcast i32 %1586 to float
  %1590 = fsub fast float %1587, %1579
  %1591 = fsub fast float %1588, %1580
  %1592 = fsub fast float %1589, %1581
  %1593 = fmul fast float %1590, %188
  %1594 = fmul fast float %1591, %188
  %1595 = fmul fast float %1592, %188
  %1596 = fadd fast float %1593, %1579
  %1597 = fadd fast float %1594, %1580
  %1598 = fadd fast float %1595, %1581
  %1599 = fmul fast float %1596, %1559
  %1600 = fmul fast float %1597, %1560
  %1601 = fmul fast float %1598, %1561
  %1602 = fmul fast float %1568, %188
  %1603 = fadd fast float %1558, 0xBFB99999A0000000
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1605 = fmul fast float %1604, 0x3FF1C71C80000000
  %1606 = call float @dx.op.binary.f32(i32 36, float %1558, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1607 = fsub fast float 1.000000e+00, %1605
  %1608 = call float @dx.op.unary.f32(i32 7, float %1607)  ; Saturate(value)
  %1609 = fmul fast float %1599, %1608
  %1610 = fmul fast float %1600, %1608
  %1611 = fmul fast float %1601, %1608
  %1612 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1613 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1614 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1615 = fmul fast float %1599, %1605
  %1616 = fmul fast float %1600, %1605
  %1617 = fmul fast float %1601, %1605
  %1618 = fadd fast float %1615, %1606
  %1619 = fadd fast float %1616, %1606
  %1620 = fadd fast float %1617, %1606
  %1621 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1622 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1623 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1624 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.i32 %1625, 3
  %1627 = and i32 %1626, 8
  %1628 = icmp ne i32 %1627, 0
  %1629 = call float @dx.op.binary.f32(i32 35, float %1612, float %1599)  ; FMax(a,b)
  %1630 = call float @dx.op.binary.f32(i32 35, float %1613, float %1599)  ; FMax(a,b)
  %1631 = call float @dx.op.binary.f32(i32 35, float %1614, float %1599)  ; FMax(a,b)
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1612, float %1613, float %1614, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = select i1 %247, float %1599, float %1612
  %1634 = select i1 %247, float %1632, float %1613
  %1635 = select i1 %247, float 1.000000e+00, float %1614
  %1636 = select i1 %1628, float %1629, float %1633
  %1637 = select i1 %1628, float %1630, float %1634
  %1638 = select i1 %1628, float %1631, float %1635
  %1639 = and i32 %223, 3
  %1640 = select i1 %217, i32 %1639, i32 0
  %1641 = icmp eq i32 %1640, 1
  br i1 %1641, label %1642, label %1718

; <label>:1642                                    ; preds = %1543
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 0
  %1645 = extractvalue %dx.types.CBufRet.f32 %1643, 1
  %1646 = fadd fast float %1644, %125
  %1647 = fadd fast float %1645, %126
  %1648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1649 = extractvalue %dx.types.CBufRet.f32 %1648, 0
  %1650 = extractvalue %dx.types.CBufRet.f32 %1648, 1
  %1651 = fsub fast float %1646, %1649
  %1652 = fsub fast float %1647, %1650
  %1653 = fmul fast float %1651, %1651
  %1654 = fmul fast float %1652, %1652
  %1655 = fadd fast float %1653, %1654
  %1656 = call float @dx.op.unary.f32(i32 24, float %1655)  ; Sqrt(value)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1648, 2
  %1658 = fcmp fast olt float %1656, %1657
  br i1 %1658, label %1659, label %1712

; <label>:1659                                    ; preds = %1642
  %1660 = extractvalue %dx.types.CBufRet.f32 %1643, 2
  %1661 = fadd fast float %1660, %127
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 0
  %1664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1664, 0
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.CBufRet.f32 %1662, 1
  %1669 = extractvalue %dx.types.CBufRet.f32 %1664, 1
  %1670 = extractvalue %dx.types.CBufRet.f32 %1666, 1
  %1671 = extractvalue %dx.types.CBufRet.f32 %1662, 3
  %1672 = extractvalue %dx.types.CBufRet.f32 %1664, 3
  %1673 = extractvalue %dx.types.CBufRet.f32 %1666, 3
  %1674 = fadd fast float %1671, %1646
  %1675 = fadd fast float %1672, %1647
  %1676 = fadd fast float %1661, %1673
  %1677 = fmul fast float %1674, %1663
  %1678 = call float @dx.op.tertiary.f32(i32 46, float %1675, float %1665, float %1677)  ; FMad(a,b,c)
  %1679 = call float @dx.op.tertiary.f32(i32 46, float %1676, float %1667, float %1678)  ; FMad(a,b,c)
  %1680 = fmul fast float %1674, %1668
  %1681 = call float @dx.op.tertiary.f32(i32 46, float %1675, float %1669, float %1680)  ; FMad(a,b,c)
  %1682 = call float @dx.op.tertiary.f32(i32 46, float %1676, float %1670, float %1681)  ; FMad(a,b,c)
  %1683 = fsub fast float %1679, %1671
  %1684 = fsub fast float %1682, %1672
  %1685 = fsub fast float %1683, %1649
  %1686 = fadd fast float %1685, %1657
  %1687 = fsub fast float %1684, %1650
  %1688 = fadd fast float %1687, %1657
  %1689 = extractvalue %dx.types.CBufRet.f32 %1648, 3
  %1690 = fmul fast float %1686, %1689
  %1691 = fmul fast float %1688, %1689
  %1692 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1693 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1694 = fsub fast float 1.000000e+00, %1692
  %1695 = fsub fast float 1.000000e+00, %1693
  %1696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %1694, float %1695, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1697 = extractvalue %dx.types.ResRet.f32 %1696, 0
  %1698 = fcmp fast ugt float %1697, 0.000000e+00
  br i1 %1698, label %1699, label %1712

; <label>:1699                                    ; preds = %1659
  %1700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1701 = extractvalue %dx.types.CBufRet.f32 %1700, 2
  %1702 = fmul fast float %1701, %1697
  %1703 = extractvalue %dx.types.CBufRet.f32 %1700, 3
  %1704 = fadd fast float %1703, %1702
  %1705 = extractvalue %dx.types.CBufRet.f32 %1666, 2
  %1706 = fadd fast float %1704, %1673
  %1707 = fmul fast float %1679, %1667
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1682, float %1670, float %1707)  ; FMad(a,b,c)
  %1709 = call float @dx.op.tertiary.f32(i32 46, float %1706, float %1705, float %1708)  ; FMad(a,b,c)
  %1710 = fsub fast float %1709, %1673
  %1711 = fsub fast float %1710, %1660
  br label %1712

; <label>:1712                                    ; preds = %1699, %1659, %1642
  %1713 = phi i1 [ true, %1699 ], [ false, %1659 ], [ false, %1642 ]
  %1714 = phi float [ %1711, %1699 ], [ -1.310720e+05, %1659 ], [ -1.310720e+05, %1642 ]
  %1715 = fsub fast float %1714, %127
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1717 = select i1 %1713, float %1716, float 1.000000e+00
  br label %1718

; <label>:1718                                    ; preds = %1712, %1543
  %1719 = phi float [ %1717, %1712 ], [ 0.000000e+00, %1543 ]
  %1720 = icmp eq i32 %1640, 3
  %1721 = select i1 %1720, float 1.000000e+00, float %1719
  %1722 = call float @dx.op.binary.f32(i32 35, float %1544, float %1721)  ; FMax(a,b)
  %1723 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1724 = fcmp fast une float %1723, 0.000000e+00
  %1725 = fsub fast float -0.000000e+00, %174
  %1726 = fsub fast float -0.000000e+00, %175
  %1727 = fsub fast float -0.000000e+00, %176
  br i1 %1724, label %1728, label %1890

; <label>:1728                                    ; preds = %1718
  %1729 = call float @dx.op.dot3.f32(i32 55, float %1725, float %1726, float %1727, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %1730 = fmul fast float %1723, 2.500000e+00
  %1731 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1732 = fmul fast float %1723, 0x4013FFFFE0000000
  %1733 = fadd fast float %1732, 0xBFFFFFFFE0000000
  %1734 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1735 = fmul fast float %1723, 0x4004000020000000
  %1736 = fadd fast float %1735, 0xBFF8000040000000
  %1737 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1738 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1739 = fmul fast float %1603, 1.000000e+01
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = fmul fast float %1740, 2.000000e+00
  %1742 = fsub fast float 3.000000e+00, %1741
  %1743 = fmul fast float %1740, %1740
  %1744 = fmul fast float %1743, %1742
  %1745 = fsub fast float 1.000000e+00, %1744
  %1746 = fsub fast float 0x3FE3333340000000, %1624
  %1747 = fmul fast float %1746, 0x400AAAAAA0000000
  %1748 = call float @dx.op.unary.f32(i32 7, float %1747)  ; Saturate(value)
  %1749 = fmul fast float %1745, %1748
  %1750 = fmul fast float %1636, 0x3FEA2B8620000000
  %1751 = fmul fast float %1637, 0x3FEA2B8620000000
  %1752 = fmul fast float %1638, 0x3FEA2B8620000000
  %1753 = fadd fast float %1750, 0x3FC81DFBA0000000
  %1754 = fmul fast float %1753, %1636
  %1755 = fadd fast float %1754, 0x3F910E6020000000
  %1756 = fadd fast float %1751, 0x3FC81DFBA0000000
  %1757 = fmul fast float %1756, %1637
  %1758 = fadd fast float %1757, 0x3F910E6020000000
  %1759 = fadd fast float %1752, 0x3FC81DFBA0000000
  %1760 = fmul fast float %1759, %1638
  %1761 = fadd fast float %1760, 0x3F910E6020000000
  %1762 = call float @dx.op.unary.f32(i32 7, float %1755)  ; Saturate(value)
  %1763 = call float @dx.op.unary.f32(i32 7, float %1758)  ; Saturate(value)
  %1764 = call float @dx.op.unary.f32(i32 7, float %1761)  ; Saturate(value)
  %1765 = fsub fast float %1762, %1636
  %1766 = fsub fast float %1763, %1637
  %1767 = fsub fast float %1764, %1638
  %1768 = fmul fast float %1765, %1738
  %1769 = fmul fast float %1768, %1749
  %1770 = fmul fast float %1766, %1738
  %1771 = fmul fast float %1770, %1749
  %1772 = fmul fast float %1767, %1738
  %1773 = fmul fast float %1772, %1749
  %1774 = fadd fast float %1769, %1636
  %1775 = fadd fast float %1771, %1637
  %1776 = fadd fast float %1773, %1638
  %1777 = fmul fast float %1555, %1555
  %1778 = fmul fast float %1777, %1777
  %1779 = fadd fast float %1734, 1.000000e+00
  %1780 = fsub fast float %1779, %1749
  %1781 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  %1782 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1783 = call float @dx.op.unary.f32(i32 7, float %1782)  ; Saturate(value)
  %1784 = fsub fast float 1.000000e+00, %1778
  %1785 = call float @dx.op.binary.f32(i32 36, float %1781, float %1784)  ; FMin(a,b)
  %1786 = call float @dx.op.unary.f32(i32 7, float %1737)  ; Saturate(value)
  %1787 = call float @dx.op.binary.f32(i32 35, float %1785, float %1786)  ; FMax(a,b)
  %1788 = fadd fast float %1783, 0xBFE4CCCCC0000000
  %1789 = fmul fast float %1788, 0x4006DB6DA0000000
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = fmul fast float %1790, 2.000000e+00
  %1792 = fsub fast float 3.000000e+00, %1791
  %1793 = bitcast float %1621 to i32
  %1794 = ashr i32 %1793, 1
  %1795 = add nsw i32 %1794, 532487669
  %1796 = bitcast i32 %1795 to float
  %1797 = fsub fast float 1.000000e+00, %1796
  %1798 = bitcast float %1797 to i32
  %1799 = sub nsw i32 2129859010, %1798
  %1800 = bitcast i32 %1799 to float
  %1801 = fmul fast float %1800, 2.000000e+00
  %1802 = bitcast float %1622 to i32
  %1803 = ashr i32 %1802, 1
  %1804 = add nsw i32 %1803, 532487669
  %1805 = bitcast i32 %1804 to float
  %1806 = fsub fast float 1.000000e+00, %1805
  %1807 = bitcast float %1806 to i32
  %1808 = sub nsw i32 2129859010, %1807
  %1809 = bitcast i32 %1808 to float
  %1810 = fmul fast float %1809, 2.000000e+00
  %1811 = bitcast float %1623 to i32
  %1812 = ashr i32 %1811, 1
  %1813 = add nsw i32 %1812, 532487669
  %1814 = bitcast i32 %1813 to float
  %1815 = fsub fast float 1.000000e+00, %1814
  %1816 = bitcast float %1815 to i32
  %1817 = sub nsw i32 2129859010, %1816
  %1818 = bitcast i32 %1817 to float
  %1819 = fmul fast float %1818, 2.000000e+00
  %1820 = fsub fast float 0x4002A9FBE0000000, %1801
  %1821 = fadd fast float %1801, 0x3FD54FDF00000000
  %1822 = bitcast float %1821 to i32
  %1823 = sub nsw i32 2129859010, %1822
  %1824 = bitcast i32 %1823 to float
  %1825 = fmul fast float %1824, %1820
  %1826 = fmul fast float %1825, %1825
  %1827 = fsub fast float 0x4002A9FBE0000000, %1810
  %1828 = fadd fast float %1810, 0x3FD54FDF00000000
  %1829 = bitcast float %1828 to i32
  %1830 = sub nsw i32 2129859010, %1829
  %1831 = bitcast i32 %1830 to float
  %1832 = fmul fast float %1831, %1827
  %1833 = fmul fast float %1832, %1832
  %1834 = fsub fast float 0x4002A9FBE0000000, %1819
  %1835 = fadd fast float %1819, 0x3FD54FDF00000000
  %1836 = bitcast float %1835 to i32
  %1837 = sub nsw i32 2129859010, %1836
  %1838 = bitcast i32 %1837 to float
  %1839 = fmul fast float %1838, %1834
  %1840 = fmul fast float %1839, %1839
  %1841 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1826)  ; FMax(a,b)
  %1842 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1833)  ; FMax(a,b)
  %1843 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1840)  ; FMax(a,b)
  %1844 = fsub fast float 1.000000e+00, %1729
  %1845 = fadd fast float %1844, %1745
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  %1847 = fsub fast float 1.000000e+00, %1721
  %1848 = fmul fast float %1787, %1847
  %1849 = fmul fast float %1790, %1790
  %1850 = fmul fast float %1849, %1848
  %1851 = fmul fast float %1850, %1792
  %1852 = fmul fast float %1847, 0xBFE99999A0000000
  %1853 = fmul fast float %1852, %1738
  %1854 = fmul fast float %1853, %1749
  %1855 = fadd fast float %1854, 1.000000e+00
  %1856 = fadd fast float %1624, -1.000000e+00
  %1857 = fmul fast float %1855, %1856
  %1858 = fadd fast float %1857, 1.000000e+00
  %1859 = fsub fast float %1841, %1621
  %1860 = fsub fast float %1842, %1622
  %1861 = fsub fast float %1843, %1623
  %1862 = fmul fast float %1851, %1859
  %1863 = fmul fast float %1851, %1860
  %1864 = fmul fast float %1851, %1861
  %1865 = fadd fast float %1862, %1621
  %1866 = fadd fast float %1863, %1622
  %1867 = fadd fast float %1864, %1623
  %1868 = fsub fast float %57, %1571
  %1869 = fsub fast float %58, %1572
  %1870 = fsub fast float %59, %1573
  %1871 = fmul fast float %1851, %1868
  %1872 = fmul fast float %1851, %1869
  %1873 = fmul fast float %1851, %1870
  %1874 = fadd fast float %1871, %1571
  %1875 = fadd fast float %1872, %1572
  %1876 = fadd fast float %1873, %1573
  %1877 = fmul fast float %1851, %1846
  %1878 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1879 = fsub fast float 1.000000e+00, %1878
  %1880 = fmul fast float %1877, %1879
  %1881 = fadd fast float %1880, %1878
  %1882 = fsub fast float 1.000000e+00, %1555
  %1883 = fmul fast float %1851, %1882
  %1884 = fadd fast float %1883, %1555
  %1885 = call float @dx.op.dot3.f32(i32 55, float %1874, float %1875, float %1876, float %1874, float %1875, float %1876)  ; Dot3(ax,ay,az,bx,by,bz)
  %1886 = call float @dx.op.unary.f32(i32 25, float %1885)  ; Rsqrt(value)
  %1887 = fmul fast float %1874, %1886
  %1888 = fmul fast float %1875, %1886
  %1889 = fmul fast float %1876, %1886
  br label %1890

; <label>:1890                                    ; preds = %1728, %1718
  %1891 = phi float [ %1774, %1728 ], [ %1636, %1718 ]
  %1892 = phi float [ %1775, %1728 ], [ %1637, %1718 ]
  %1893 = phi float [ %1776, %1728 ], [ %1638, %1718 ]
  %1894 = phi float [ %1865, %1728 ], [ %1621, %1718 ]
  %1895 = phi float [ %1866, %1728 ], [ %1622, %1718 ]
  %1896 = phi float [ %1867, %1728 ], [ %1623, %1718 ]
  %1897 = phi float [ %1887, %1728 ], [ %1571, %1718 ]
  %1898 = phi float [ %1888, %1728 ], [ %1572, %1718 ]
  %1899 = phi float [ %1889, %1728 ], [ %1573, %1718 ]
  %1900 = phi float [ %1881, %1728 ], [ %1624, %1718 ]
  %1901 = phi float [ %1884, %1728 ], [ %1555, %1718 ]
  %1902 = select i1 %247, float 0.000000e+00, float %1896
  %1903 = call float @dx.op.dot3.f32(i32 55, float %1897, float %1898, float %1899, float %1725, float %1726, float %1727)  ; Dot3(ax,ay,az,bx,by,bz)
  %1904 = call float @dx.op.unary.f32(i32 7, float %1903)  ; Saturate(value)
  %1905 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %1906 = fmul fast float %1905, 2.000000e+00
  %1907 = fmul fast float %1906, %1897
  %1908 = fmul fast float %1906, %1898
  %1909 = fmul fast float %1906, %1899
  %1910 = fsub fast float %174, %1907
  %1911 = fsub fast float %175, %1908
  %1912 = fsub fast float %176, %1909
  %1913 = call float @dx.op.binary.f32(i32 36, float %1901, float 1.000000e+00)  ; FMin(a,b)
  %1914 = fsub fast float 1.000000e+00, %1901
  %1915 = bitcast float %1914 to i32
  %1916 = sub nsw i32 2129859010, %1915
  %1917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1917, 0
  %1919 = extractvalue %dx.types.CBufRet.f32 %1917, 1
  %1920 = fadd fast float %1918, %125
  %1921 = fadd fast float %1919, %126
  %1922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.i32 %1922, 0
  %1924 = icmp eq i32 %1923, 1
  br i1 %1924, label %1925, label %1960

; <label>:1925                                    ; preds = %1890
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 0
  %1928 = extractvalue %dx.types.CBufRet.f32 %1926, 1
  %1929 = fsub fast float %1920, %1927
  %1930 = fsub fast float %1921, %1928
  %1931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.f32 %1931, 0
  %1933 = extractvalue %dx.types.CBufRet.f32 %1931, 1
  %1934 = fmul fast float %1929, %1932
  %1935 = fmul fast float %1930, %1933
  %1936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %1934, float %1935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = fcmp fast ogt float %1937, 0.000000e+00
  %1939 = extractvalue %dx.types.CBufRet.i32 %1922, 3
  %1940 = icmp ne i32 %1939, 0
  %1941 = and i1 %1938, %1940
  br i1 %1941, label %1942, label %1960, !dx.controlflow.hints !85

; <label>:1942                                    ; preds = %1925
  %1943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.CBufRet.f32 %1943, 1
  %1946 = fsub fast float %1920, %1944
  %1947 = fsub fast float %1921, %1945
  %1948 = fmul fast float %1946, %1946
  %1949 = fmul fast float %1947, %1947
  %1950 = fadd fast float %1948, %1949
  %1951 = uitofp i32 %1939 to float
  %1952 = fmul fast float %1951, %1951
  %1953 = fcmp fast ogt float %1950, %1952
  br i1 %1953, label %1960, label %1954

; <label>:1954                                    ; preds = %1942
  %1955 = call float @dx.op.unary.f32(i32 24, float %1950)  ; Sqrt(value)
  %1956 = fsub fast float %1951, %1955
  %1957 = fmul fast float %1956, 0x3F75555560000000
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = call float @dx.op.binary.f32(i32 36, float %1958, float %1937)  ; FMin(a,b)
  br label %1960

; <label>:1960                                    ; preds = %1954, %1942, %1925, %1890
  %1961 = phi float [ 1.000000e+00, %1890 ], [ %1959, %1954 ], [ %1937, %1925 ], [ 0.000000e+00, %1942 ]
  %1962 = fcmp fast ogt float %1961, 0.000000e+00
  br i1 %1962, label %1963, label %2061, !dx.controlflow.hints !86

; <label>:1963                                    ; preds = %1960
  %1964 = fadd fast float %156, 5.000000e-01
  %1965 = call float @dx.op.unary.f32(i32 27, float %1964)  ; Round_ni(value)
  %1966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %45, float %154, float %155, float %1965, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %1969 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1971 = extractvalue %dx.types.CBufRet.f32 %1970, 3
  %1972 = fmul fast float %1971, %1967
  %1973 = fmul fast float %1971, %1968
  %1974 = fmul fast float %1971, %1969
  %1975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %154, float %155, float %1965, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %45, float %154, float %155, float %1965, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.ResRet.f32 %1977, 1
  %1980 = fmul fast float %1978, 2.000000e+00
  %1981 = fmul fast float %1979, 2.000000e+00
  %1982 = fadd fast float %1980, -1.000000e+00
  %1983 = fadd fast float %1981, -1.000000e+00
  %1984 = fadd fast float %1982, %1983
  %1985 = fmul fast float %1984, 5.000000e-01
  %1986 = fsub fast float %1982, %1983
  %1987 = fmul fast float %1986, 5.000000e-01
  %1988 = call float @dx.op.unary.f32(i32 6, float %1985)  ; FAbs(value)
  %1989 = fsub fast float 1.000000e+00, %1988
  %1990 = call float @dx.op.unary.f32(i32 6, float %1987)  ; FAbs(value)
  %1991 = fsub fast float %1989, %1990
  %1992 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1991)  ; FMax(a,b)
  %1993 = call float @dx.op.dot3.f32(i32 55, float %1985, float %1987, float %1992, float %1985, float %1987, float %1992)  ; Dot3(ax,ay,az,bx,by,bz)
  %1994 = bitcast float %1993 to i32
  %1995 = ashr i32 %1994, 1
  %1996 = sub nsw i32 1597250115, %1995
  %1997 = bitcast i32 %1996 to float
  %1998 = fmul fast float %1997, %1985
  %1999 = fmul fast float %1997, %1987
  %2000 = fmul fast float %1997, %1992
  %2001 = fsub fast float 1.000000e+00, %1976
  %2002 = fdiv fast float %2001, %2000
  %2003 = fmul fast float %2000, %57
  %2004 = fmul fast float %2000, %58
  %2005 = fmul fast float %2000, %59
  %2006 = fmul fast float %1998, %53
  %2007 = fmul fast float %1998, %54
  %2008 = fmul fast float %1998, %55
  %2009 = fadd fast float %2003, %2006
  %2010 = fadd fast float %2004, %2007
  %2011 = fadd fast float %2005, %2008
  %2012 = fmul fast float %1999, %89
  %2013 = fmul fast float %1999, %90
  %2014 = fmul fast float %1999, %91
  %2015 = fadd fast float %2009, %2012
  %2016 = fadd fast float %2010, %2013
  %2017 = fadd fast float %2011, %2014
  %2018 = call float @dx.op.dot3.f32(i32 55, float %2015, float %2016, float %2017, float %2015, float %2016, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2019 = call float @dx.op.unary.f32(i32 25, float %2018)  ; Rsqrt(value)
  %2020 = fmul fast float %2015, %2019
  %2021 = fmul fast float %2016, %2019
  %2022 = fmul fast float %2017, %2019
  %2023 = call float @dx.op.dot3.f32(i32 55, float %1897, float %1898, float %1899, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2025 = fmul fast float %2024, 5.000000e-01
  %2026 = fadd fast float %2025, 5.000000e-01
  %2027 = fmul fast float %2026, %1976
  %2028 = call float @dx.op.dot3.f32(i32 55, float %1897, float %1898, float %1899, float %2020, float %2021, float %2022)  ; Dot3(ax,ay,az,bx,by,bz)
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2030 = fmul fast float %2029, %2002
  %2031 = fadd fast float %2027, %2030
  %2032 = fsub fast float 5.000000e-01, %2025
  %2033 = fmul fast float %2032, %1891
  %2034 = fmul fast float %2032, %1892
  %2035 = fmul fast float %2032, %1893
  %2036 = fadd fast float %2031, %2033
  %2037 = fmul fast float %2036, %1972
  %2038 = fadd fast float %2031, %2034
  %2039 = fmul fast float %2038, %1973
  %2040 = fadd fast float %2031, %2035
  %2041 = fmul fast float %2040, %1974
  %2042 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1911, float %1912, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = fmul fast float %2043, 5.000000e-01
  %2045 = fadd fast float %2044, 5.000000e-01
  %2046 = fmul fast float %2045, %1976
  %2047 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1911, float %1912, float %2020, float %2021, float %2022)  ; Dot3(ax,ay,az,bx,by,bz)
  %2048 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2049 = fmul fast float %2048, %2002
  %2050 = fadd fast float %2046, %2049
  %2051 = fsub fast float 5.000000e-01, %2044
  %2052 = fmul fast float %2051, %1891
  %2053 = fmul fast float %2051, %1892
  %2054 = fmul fast float %2051, %1893
  %2055 = fadd fast float %2050, %2052
  %2056 = fmul fast float %2055, %1972
  %2057 = fadd fast float %2050, %2053
  %2058 = fmul fast float %2057, %1973
  %2059 = fadd fast float %2050, %2054
  %2060 = fmul fast float %2059, %1974
  br label %2061

; <label>:2061                                    ; preds = %1963, %1960
  %2062 = phi float [ %2056, %1963 ], [ 0.000000e+00, %1960 ]
  %2063 = phi float [ %2058, %1963 ], [ 0.000000e+00, %1960 ]
  %2064 = phi float [ %2060, %1963 ], [ 0.000000e+00, %1960 ]
  %2065 = phi float [ %2037, %1963 ], [ 0.000000e+00, %1960 ]
  %2066 = phi float [ %2039, %1963 ], [ 0.000000e+00, %1960 ]
  %2067 = phi float [ %2041, %1963 ], [ 0.000000e+00, %1960 ]
  %2068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2069 = extractvalue %dx.types.CBufRet.f32 %2068, 0
  %2070 = fcmp fast ogt float %2069, 0.000000e+00
  %2071 = and i1 %1962, %2070
  br i1 %2071, label %2072, label %2276, !dx.controlflow.hints !87

; <label>:2072                                    ; preds = %2061
  %2073 = extractvalue %dx.types.CBufRet.f32 %1917, 2
  %2074 = fadd fast float %2073, %127
  %2075 = fmul fast float %1897, 3.200000e+01
  %2076 = fmul fast float %1898, 3.200000e+01
  %2077 = fadd fast float %1920, %2075
  %2078 = fadd fast float %1921, %2076
  %2079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2080 = extractvalue %dx.types.CBufRet.f32 %2079, 0
  %2081 = extractvalue %dx.types.CBufRet.f32 %2079, 1
  %2082 = fsub fast float %2077, %2080
  %2083 = fsub fast float %2078, %2081
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.CBufRet.f32 %2084, 1
  %2087 = fmul fast float %2082, %2085
  %2088 = fmul fast float %2083, %2086
  %2089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2090 = extractvalue %dx.types.CBufRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.CBufRet.f32 %2089, 1
  %2092 = fsub fast float %1920, %2090
  %2093 = fsub fast float %1921, %2091
  %2094 = fmul fast float %2092, %2092
  %2095 = fmul fast float %2093, %2093
  %2096 = fadd fast float %2094, %2095
  %2097 = call float @dx.op.unary.f32(i32 24, float %2096)  ; Sqrt(value)
  %2098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.CBufRet.f32 %2098, 1
  %2101 = fsub fast float %2097, %2099
  %2102 = fdiv fast float %2101, %2100
  %2103 = call float @dx.op.unary.f32(i32 7, float %2102)  ; Saturate(value)
  %2104 = fmul fast float %2103, 2.000000e+00
  %2105 = fsub fast float 3.000000e+00, %2104
  %2106 = fmul fast float %2103, %2103
  %2107 = fmul fast float %2106, %2105
  %2108 = fcmp fast oge float %2087, 0.000000e+00
  %2109 = fcmp fast ole float %2087, 1.000000e+00
  %2110 = and i1 %2109, %2108
  %2111 = fcmp fast oge float %2088, 0.000000e+00
  %2112 = and i1 %2111, %2110
  %2113 = fcmp fast ole float %2088, 1.000000e+00
  %2114 = and i1 %2113, %2112
  %2115 = fcmp fast ogt float %2107, 0.000000e+00
  %2116 = and i1 %2115, %2114
  br i1 %2116, label %2117, label %2240, !dx.controlflow.hints !88

; <label>:2117                                    ; preds = %2072
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 2
  %2120 = extractvalue %dx.types.CBufRet.f32 %2118, 3
  %2121 = fmul fast float %2119, %2087
  %2122 = fmul fast float %2120, %2088
  %2123 = call float @dx.op.unary.f32(i32 27, float %2121)  ; Round_ni(value)
  %2124 = call float @dx.op.unary.f32(i32 27, float %2122)  ; Round_ni(value)
  %2125 = fptosi float %2123 to i32
  %2126 = fptosi float %2124 to i32
  %2127 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %2125, i32 %2126, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = lshr i32 %2128, 16
  %2130 = icmp eq i32 %2129, 65535
  br i1 %2130, label %2240, label %2131

; <label>:2131                                    ; preds = %2117
  %2132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2132, 0
  %2134 = fmul fast float %2133, %2087
  %2135 = extractvalue %dx.types.CBufRet.f32 %2132, 1
  %2136 = fadd fast float %2134, %2135
  %2137 = extractvalue %dx.types.CBufRet.f32 %2132, 2
  %2138 = fmul fast float %2137, %2088
  %2139 = extractvalue %dx.types.CBufRet.f32 %2132, 3
  %2140 = fadd fast float %2138, %2139
  %2141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %2136, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.ResRet.f32 %2141, 1
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 1
  %2146 = extractvalue %dx.types.CBufRet.f32 %2144, 0
  %2147 = fsub fast float %2145, %2146
  %2148 = fmul fast float %2147, %2142
  %2149 = fadd fast float %2148, %2146
  %2150 = extractvalue %dx.types.CBufRet.f32 %2144, 3
  %2151 = extractvalue %dx.types.CBufRet.f32 %2144, 2
  %2152 = fsub fast float %2150, %2151
  %2153 = fmul fast float %2152, %2143
  %2154 = fadd fast float %2153, %2151
  %2155 = fsub fast float %2074, %2149
  %2156 = fsub fast float %2154, %2149
  %2157 = fdiv fast float %2155, %2156
  %2158 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2068, 1
  %2160 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2161 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2162 = fmul fast float %2160, %2087
  %2163 = fmul fast float %2161, %2088
  %2164 = fmul fast float %2162, 1.250000e-01
  %2165 = fmul fast float %2163, 1.250000e-01
  %2166 = call float @dx.op.unary.f32(i32 27, float %2164)  ; Round_ni(value)
  %2167 = call float @dx.op.unary.f32(i32 27, float %2165)  ; Round_ni(value)
  %2168 = fmul fast float %2166, 8.000000e+00
  %2169 = fmul fast float %2167, 8.000000e+00
  %2170 = fsub fast float %2162, %2168
  %2171 = fsub fast float %2163, %2169
  %2172 = fadd fast float %2170, 5.000000e-01
  %2173 = fadd fast float %2171, 5.000000e-01
  %2174 = and i32 %2129, 255
  %2175 = lshr i32 %2128, 24
  %2176 = mul nuw nsw i32 %2174, 9
  %2177 = uitofp i32 %2176 to float
  %2178 = mul nuw nsw i32 %2175, 9
  %2179 = uitofp i32 %2178 to float
  %2180 = fadd fast float %2172, %2177
  %2181 = fadd fast float %2173, %2179
  %2182 = fdiv fast float %2180, %2069
  %2183 = fdiv fast float %2181, %2159
  %2184 = fmul fast float %2158, 4.375000e-01
  %2185 = fadd fast float %2184, 3.125000e-02
  %2186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2182, float %2183, float %2185, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2187 = extractvalue %dx.types.ResRet.f32 %2186, 0
  %2188 = extractvalue %dx.types.ResRet.f32 %2186, 1
  %2189 = extractvalue %dx.types.ResRet.f32 %2186, 2
  %2190 = fadd fast float %2184, 5.312500e-01
  %2191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2182, float %2183, float %2190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2192 = extractvalue %dx.types.ResRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.ResRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.ResRet.f32 %2191, 2
  %2195 = fmul fast float %2192, 2.000000e+00
  %2196 = fmul fast float %2193, 2.000000e+00
  %2197 = fmul fast float %2194, 2.000000e+00
  %2198 = fadd fast float %2195, -1.000000e+00
  %2199 = fadd fast float %2196, -1.000000e+00
  %2200 = fadd fast float %2197, -1.000000e+00
  %2201 = fmul fast float %2198, %2198
  %2202 = fmul fast float %2199, %2199
  %2203 = fadd fast float %2201, %2202
  %2204 = fmul fast float %2200, %2200
  %2205 = fadd fast float %2203, %2204
  %2206 = call float @dx.op.unary.f32(i32 24, float %2205)  ; Sqrt(value)
  %2207 = fcmp fast ogt float %2206, 0.000000e+00
  br i1 %2207, label %2208, label %2212

; <label>:2208                                    ; preds = %2131
  %2209 = fdiv fast float %2198, %2206
  %2210 = fdiv fast float %2199, %2206
  %2211 = fdiv fast float %2200, %2206
  br label %2212

; <label>:2212                                    ; preds = %2208, %2131
  %2213 = phi float [ %2209, %2208 ], [ 0.000000e+00, %2131 ]
  %2214 = phi float [ %2210, %2208 ], [ 0.000000e+00, %2131 ]
  %2215 = phi float [ %2211, %2208 ], [ 0.000000e+00, %2131 ]
  %2216 = call float @dx.op.dot3.f32(i32 55, float %2213, float %2214, float %2215, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %2217 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2216)  ; FMax(a,b)
  %2218 = fmul fast float %2217, 0x400C5BF8A0000000
  %2219 = fmul fast float %2187, %2107
  %2220 = fmul fast float %2219, %2218
  %2221 = fmul fast float %2188, %2107
  %2222 = fmul fast float %2221, %2218
  %2223 = fmul fast float %2189, %2107
  %2224 = fmul fast float %2223, %2218
  %2225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2226 = extractvalue %dx.types.CBufRet.f32 %2225, 3
  %2227 = fmul fast float %2220, %2226
  %2228 = fmul fast float %2222, %2226
  %2229 = fmul fast float %2224, %2226
  %2230 = fcmp fast ogt float %2074, %2154
  br i1 %2230, label %2231, label %2240

; <label>:2231                                    ; preds = %2212
  %2232 = fmul fast float %2156, 0x3FC24924A0000000
  %2233 = fsub fast float %2074, %2154
  %2234 = fdiv fast float %2233, %2232
  %2235 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2236 = fsub fast float 1.000000e+00, %2235
  %2237 = fmul fast float %2236, %2227
  %2238 = fmul fast float %2236, %2228
  %2239 = fmul fast float %2236, %2229
  br label %2240

; <label>:2240                                    ; preds = %2231, %2212, %2117, %2072
  %2241 = phi float [ %2239, %2231 ], [ %2229, %2212 ], [ 0.000000e+00, %2117 ], [ 0.000000e+00, %2072 ]
  %2242 = phi float [ %2238, %2231 ], [ %2228, %2212 ], [ 0.000000e+00, %2117 ], [ 0.000000e+00, %2072 ]
  %2243 = phi float [ %2237, %2231 ], [ %2227, %2212 ], [ 0.000000e+00, %2117 ], [ 0.000000e+00, %2072 ]
  %2244 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2243)  ; FMax(a,b)
  %2245 = fmul fast float %2244, 0x3FD20DD760000000
  %2246 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %2247 = fmul fast float %2246, 0x3FDF454380000000
  %2248 = fmul fast float %2246, %2246
  %2249 = fmul fast float %2248, 0x3FEE471020000000
  %2250 = fadd fast float %2249, 0xBFD42F6020000000
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2244, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2247, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2242)  ; FMax(a,b)
  %2253 = fmul fast float %2252, 0x3FD20DD760000000
  %2254 = call float @dx.op.dot3.f32(i32 55, float %2252, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2247, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2241)  ; FMax(a,b)
  %2256 = fmul fast float %2255, 0x3FD20DD760000000
  %2257 = call float @dx.op.dot3.f32(i32 55, float %2255, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2247, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2258 = call float @dx.op.binary.f32(i32 35, float %2245, float 0.000000e+00)  ; FMax(a,b)
  %2259 = call float @dx.op.binary.f32(i32 35, float %2253, float 0.000000e+00)  ; FMax(a,b)
  %2260 = call float @dx.op.binary.f32(i32 35, float %2256, float 0.000000e+00)  ; FMax(a,b)
  %2261 = call float @dx.op.binary.f32(i32 35, float %2251, float 0.000000e+00)  ; FMax(a,b)
  %2262 = call float @dx.op.binary.f32(i32 35, float %2254, float 0.000000e+00)  ; FMax(a,b)
  %2263 = call float @dx.op.binary.f32(i32 35, float %2257, float 0.000000e+00)  ; FMax(a,b)
  %2264 = fmul fast float %2258, %1961
  %2265 = fmul fast float %2259, %1961
  %2266 = fmul fast float %2260, %1961
  %2267 = fadd fast float %2264, %2065
  %2268 = fadd fast float %2265, %2066
  %2269 = fadd fast float %2266, %2067
  %2270 = fmul fast float %2261, %1961
  %2271 = fmul fast float %2262, %1961
  %2272 = fmul fast float %2263, %1961
  %2273 = fadd fast float %2270, %2062
  %2274 = fadd fast float %2271, %2063
  %2275 = fadd fast float %2272, %2064
  br label %2276

; <label>:2276                                    ; preds = %2240, %2061
  %2277 = phi float [ %2273, %2240 ], [ %2062, %2061 ]
  %2278 = phi float [ %2274, %2240 ], [ %2063, %2061 ]
  %2279 = phi float [ %2275, %2240 ], [ %2064, %2061 ]
  %2280 = phi float [ %2267, %2240 ], [ %2065, %2061 ]
  %2281 = phi float [ %2268, %2240 ], [ %2066, %2061 ]
  %2282 = phi float [ %2269, %2240 ], [ %2067, %2061 ]
  %2283 = fcmp fast olt float %1961, 1.000000e+00
  br i1 %2283, label %2284, label %3102, !dx.controlflow.hints !89

; <label>:2284                                    ; preds = %2276
  %2285 = extractvalue %dx.types.CBufRet.f32 %1917, 2
  %2286 = fadd fast float %2285, %127
  %2287 = fmul fast float %1897, 3.200000e+01
  %2288 = fmul fast float %1898, 3.200000e+01
  %2289 = fadd fast float %1920, %2287
  %2290 = fadd fast float %1921, %2288
  %2291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2292 = extractvalue %dx.types.CBufRet.f32 %2291, 0
  %2293 = extractvalue %dx.types.CBufRet.f32 %2291, 1
  %2294 = fsub fast float %2289, %2292
  %2295 = fsub fast float %2290, %2293
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2299 = fmul fast float %2294, %2297
  %2300 = fmul fast float %2295, %2298
  %2301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2302 = extractvalue %dx.types.CBufRet.f32 %2301, 0
  %2303 = fmul fast float %2299, %2302
  %2304 = extractvalue %dx.types.CBufRet.f32 %2301, 1
  %2305 = fadd fast float %2303, %2304
  %2306 = extractvalue %dx.types.CBufRet.f32 %2301, 2
  %2307 = fmul fast float %2306, %2300
  %2308 = extractvalue %dx.types.CBufRet.f32 %2301, 3
  %2309 = fadd fast float %2307, %2308
  %2310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %45, float %2305, float %2309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2311 = extractvalue %dx.types.ResRet.f32 %2310, 0
  %2312 = extractvalue %dx.types.ResRet.f32 %2310, 1
  %2313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2313, 1
  %2315 = extractvalue %dx.types.CBufRet.f32 %2313, 0
  %2316 = fsub fast float %2314, %2315
  %2317 = fmul fast float %2316, %2311
  %2318 = fadd fast float %2317, %2315
  %2319 = extractvalue %dx.types.CBufRet.f32 %2313, 3
  %2320 = extractvalue %dx.types.CBufRet.f32 %2313, 2
  %2321 = fsub fast float %2319, %2320
  %2322 = fmul fast float %2321, %2312
  %2323 = fadd fast float %2322, %2320
  %2324 = fsub fast float %2286, %2318
  %2325 = fsub fast float %2323, %2318
  %2326 = fdiv fast float %2324, %2325
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 0
  %2330 = fmul fast float %2329, %2327
  %2331 = extractvalue %dx.types.CBufRet.f32 %2328, 1
  %2332 = fadd fast float %2330, %2331
  %2333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %2305, float %2309, float %2332, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2334 = extractvalue %dx.types.ResRet.f32 %2333, 0
  %2335 = extractvalue %dx.types.ResRet.f32 %2333, 1
  %2336 = extractvalue %dx.types.ResRet.f32 %2333, 2
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 0
  %2339 = extractvalue %dx.types.CBufRet.f32 %2337, 1
  %2340 = extractvalue %dx.types.CBufRet.f32 %2337, 2
  %2341 = fmul fast float %2338, %2334
  %2342 = fmul fast float %2339, %2335
  %2343 = fmul fast float %2340, %2336
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.CBufRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.CBufRet.f32 %2344, 2
  %2348 = fadd fast float %2341, %2345
  %2349 = fadd fast float %2342, %2346
  %2350 = fadd fast float %2343, %2347
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2353 = fmul fast float %2352, %2299
  %2354 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2355 = fadd fast float %2353, %2354
  %2356 = extractvalue %dx.types.CBufRet.f32 %2351, 2
  %2357 = fmul fast float %2356, %2300
  %2358 = extractvalue %dx.types.CBufRet.f32 %2351, 3
  %2359 = fadd fast float %2357, %2358
  %2360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2361 = extractvalue %dx.types.CBufRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.CBufRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.CBufRet.f32 %2360, 2
  %2364 = extractvalue %dx.types.CBufRet.f32 %2360, 3
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 0
  %2367 = extractvalue %dx.types.CBufRet.f32 %2365, 1
  %2368 = extractvalue %dx.types.CBufRet.f32 %2365, 2
  %2369 = extractvalue %dx.types.CBufRet.f32 %2365, 3
  %2370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2355, float %2359, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2371 = extractvalue %dx.types.ResRet.f32 %2370, 0
  %2372 = extractvalue %dx.types.ResRet.f32 %2370, 1
  %2373 = extractvalue %dx.types.ResRet.f32 %2370, 2
  %2374 = extractvalue %dx.types.ResRet.f32 %2370, 3
  %2375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2355, float %2359, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  %2377 = extractvalue %dx.types.ResRet.f32 %2375, 1
  %2378 = extractvalue %dx.types.ResRet.f32 %2375, 2
  %2379 = extractvalue %dx.types.ResRet.f32 %2375, 3
  %2380 = fmul fast float %2371, %2348
  %2381 = fmul fast float %2376, %2348
  %2382 = fmul fast float %2378, %2348
  %2383 = fmul fast float %2374, %2348
  %2384 = fadd fast float %2380, %2361
  %2385 = fadd fast float %2381, %2362
  %2386 = fadd fast float %2382, %2363
  %2387 = fadd fast float %2383, %2364
  %2388 = fmul fast float %2372, %2348
  %2389 = fmul fast float %2377, %2348
  %2390 = fadd fast float %2388, %2366
  %2391 = fadd fast float %2389, %2367
  %2392 = fmul fast float %2373, %2348
  %2393 = fmul fast float %2379, %2348
  %2394 = fadd fast float %2392, %2368
  %2395 = fadd fast float %2393, %2369
  %2396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2355, float %2359, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2397 = extractvalue %dx.types.ResRet.f32 %2396, 0
  %2398 = extractvalue %dx.types.ResRet.f32 %2396, 1
  %2399 = extractvalue %dx.types.ResRet.f32 %2396, 2
  %2400 = extractvalue %dx.types.ResRet.f32 %2396, 3
  %2401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2355, float %2359, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2402 = extractvalue %dx.types.ResRet.f32 %2401, 0
  %2403 = extractvalue %dx.types.ResRet.f32 %2401, 1
  %2404 = extractvalue %dx.types.ResRet.f32 %2401, 2
  %2405 = extractvalue %dx.types.ResRet.f32 %2401, 3
  %2406 = fmul fast float %2397, %2349
  %2407 = fmul fast float %2402, %2349
  %2408 = fmul fast float %2404, %2349
  %2409 = fmul fast float %2400, %2349
  %2410 = fadd fast float %2384, %2406
  %2411 = fadd fast float %2385, %2407
  %2412 = fadd fast float %2386, %2408
  %2413 = fadd fast float %2387, %2409
  %2414 = fmul fast float %2398, %2349
  %2415 = fmul fast float %2403, %2349
  %2416 = fadd fast float %2390, %2414
  %2417 = fadd fast float %2391, %2415
  %2418 = fmul fast float %2399, %2349
  %2419 = fmul fast float %2405, %2349
  %2420 = fadd fast float %2394, %2418
  %2421 = fadd fast float %2395, %2419
  %2422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2355, float %2359, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2423 = extractvalue %dx.types.ResRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.ResRet.f32 %2422, 1
  %2425 = extractvalue %dx.types.ResRet.f32 %2422, 2
  %2426 = extractvalue %dx.types.ResRet.f32 %2422, 3
  %2427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %2355, float %2359, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2428 = extractvalue %dx.types.ResRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.ResRet.f32 %2427, 1
  %2430 = extractvalue %dx.types.ResRet.f32 %2427, 2
  %2431 = extractvalue %dx.types.ResRet.f32 %2427, 3
  %2432 = fmul fast float %2423, %2350
  %2433 = fmul fast float %2428, %2350
  %2434 = fmul fast float %2430, %2350
  %2435 = fmul fast float %2426, %2350
  %2436 = fadd fast float %2410, %2432
  %2437 = fadd fast float %2411, %2433
  %2438 = fadd fast float %2412, %2434
  %2439 = fadd fast float %2413, %2435
  %2440 = fmul fast float %2424, %2350
  %2441 = fmul fast float %2429, %2350
  %2442 = fadd fast float %2416, %2440
  %2443 = fadd fast float %2417, %2441
  %2444 = fmul fast float %2425, %2350
  %2445 = fmul fast float %2431, %2350
  %2446 = fadd fast float %2420, %2444
  %2447 = fadd fast float %2421, %2445
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2450 = fsub fast float %1920, %2449
  %2451 = fsub fast float %2292, %1920
  %2452 = call float @dx.op.binary.f32(i32 35, float %2451, float %2450)  ; FMax(a,b)
  %2453 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2454 = fsub fast float %1921, %2453
  %2455 = fsub fast float %2293, %1921
  %2456 = call float @dx.op.binary.f32(i32 35, float %2455, float %2454)  ; FMax(a,b)
  %2457 = call float @dx.op.binary.f32(i32 35, float %2452, float %2456)  ; FMax(a,b)
  %2458 = extractvalue %dx.types.CBufRet.f32 %2296, 3
  %2459 = fmul fast float %2458, %2457
  %2460 = call float @dx.op.unary.f32(i32 7, float %2459)  ; Saturate(value)
  %2461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2461, 0
  %2463 = extractvalue %dx.types.CBufRet.f32 %2461, 1
  %2464 = extractvalue %dx.types.CBufRet.f32 %2461, 2
  %2465 = extractvalue %dx.types.CBufRet.f32 %2461, 3
  %2466 = fsub fast float %2462, %2436
  %2467 = fsub fast float %2463, %2437
  %2468 = fsub fast float %2464, %2438
  %2469 = fsub fast float %2465, %2439
  %2470 = fmul fast float %2466, %2460
  %2471 = fmul fast float %2467, %2460
  %2472 = fmul fast float %2468, %2460
  %2473 = fmul fast float %2469, %2460
  %2474 = fadd fast float %2470, %2436
  %2475 = fadd fast float %2471, %2437
  %2476 = fadd fast float %2472, %2438
  %2477 = fadd fast float %2473, %2439
  %2478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2478, 0
  %2480 = extractvalue %dx.types.CBufRet.f32 %2478, 1
  %2481 = fsub fast float %2479, %2442
  %2482 = fsub fast float %2480, %2443
  %2483 = fmul fast float %2481, %2460
  %2484 = fmul fast float %2482, %2460
  %2485 = fadd fast float %2483, %2442
  %2486 = fadd fast float %2484, %2443
  %2487 = extractvalue %dx.types.CBufRet.f32 %2478, 2
  %2488 = extractvalue %dx.types.CBufRet.f32 %2478, 3
  %2489 = fsub fast float %2487, %2446
  %2490 = fsub fast float %2488, %2447
  %2491 = fmul fast float %2489, %2460
  %2492 = fmul fast float %2490, %2460
  %2493 = fadd fast float %2491, %2446
  %2494 = fadd fast float %2492, %2447
  %2495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.f32 %2495, 0
  %2497 = fmul fast float %2496, %2474
  %2498 = fmul fast float %2496, %2475
  %2499 = fmul fast float %2496, %2476
  %2500 = fmul fast float %2496, %2477
  %2501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2502 = extractvalue %dx.types.CBufRet.f32 %2501, 0
  %2503 = fmul fast float %2502, %2485
  %2504 = fmul fast float %2502, %2486
  %2505 = fadd fast float %2503, %2497
  %2506 = fadd fast float %2504, %2499
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 0
  %2509 = fmul fast float %2508, %2493
  %2510 = fmul fast float %2508, %2494
  %2511 = fadd fast float %2505, %2509
  %2512 = fadd fast float %2506, %2510
  %2513 = extractvalue %dx.types.CBufRet.f32 %2495, 1
  %2514 = fmul fast float %2513, %2474
  %2515 = fmul fast float %2513, %2475
  %2516 = fmul fast float %2513, %2476
  %2517 = fmul fast float %2513, %2477
  %2518 = extractvalue %dx.types.CBufRet.f32 %2501, 1
  %2519 = fmul fast float %2518, %2485
  %2520 = fmul fast float %2518, %2486
  %2521 = fadd fast float %2519, %2514
  %2522 = fadd fast float %2520, %2516
  %2523 = extractvalue %dx.types.CBufRet.f32 %2507, 1
  %2524 = fmul fast float %2523, %2493
  %2525 = fmul fast float %2523, %2494
  %2526 = fadd fast float %2521, %2524
  %2527 = fadd fast float %2522, %2525
  %2528 = extractvalue %dx.types.CBufRet.f32 %2495, 2
  %2529 = fmul fast float %2528, %2474
  %2530 = fmul fast float %2528, %2475
  %2531 = fmul fast float %2528, %2476
  %2532 = fmul fast float %2528, %2477
  %2533 = extractvalue %dx.types.CBufRet.f32 %2501, 2
  %2534 = fmul fast float %2533, %2485
  %2535 = fmul fast float %2533, %2486
  %2536 = fadd fast float %2534, %2529
  %2537 = fadd fast float %2535, %2531
  %2538 = extractvalue %dx.types.CBufRet.f32 %2507, 2
  %2539 = fmul fast float %2538, %2493
  %2540 = fmul fast float %2538, %2494
  %2541 = fadd fast float %2536, %2539
  %2542 = fadd fast float %2537, %2540
  %2543 = fmul fast float %2530, %2530
  %2544 = fmul fast float %2542, %2542
  %2545 = fmul fast float %2532, %2532
  %2546 = fadd fast float %2545, %2543
  %2547 = fadd fast float %2546, %2544
  %2548 = call float @dx.op.unary.f32(i32 24, float %2547)  ; Sqrt(value)
  %2549 = fcmp fast ugt float %2548, 0.000000e+00
  br i1 %2549, label %2550, label %2565

; <label>:2550                                    ; preds = %2284
  %2551 = fsub fast float -0.000000e+00, %2532
  %2552 = fdiv fast float %2551, %2548
  %2553 = fsub fast float -0.000000e+00, %2530
  %2554 = fdiv fast float %2553, %2548
  %2555 = fdiv fast float %2542, %2548
  %2556 = fmul fast float %2541, 0x3FE279A760000000
  %2557 = fmul fast float %2554, %2530
  %2558 = fmul fast float %2555, %2542
  %2559 = fmul fast float %2552, %2532
  %2560 = fadd fast float %2557, %2559
  %2561 = fsub fast float %2560, %2558
  %2562 = call float @dx.op.unary.f32(i32 6, float %2561)  ; FAbs(value)
  %2563 = fadd fast float %2562, 0x3DDB7CDFE0000000
  %2564 = fdiv fast float %2556, %2563
  br label %2565

; <label>:2565                                    ; preds = %2550, %2284
  %2566 = phi float [ %2564, %2550 ], [ 1.000000e+00, %2284 ]
  %2567 = fmul fast float %2515, %2515
  %2568 = fmul fast float %2527, %2527
  %2569 = fmul fast float %2517, %2517
  %2570 = fadd fast float %2569, %2567
  %2571 = fadd fast float %2570, %2568
  %2572 = call float @dx.op.unary.f32(i32 24, float %2571)  ; Sqrt(value)
  %2573 = fcmp fast ugt float %2572, 0.000000e+00
  br i1 %2573, label %2574, label %2589

; <label>:2574                                    ; preds = %2565
  %2575 = fsub fast float -0.000000e+00, %2517
  %2576 = fdiv fast float %2575, %2572
  %2577 = fsub fast float -0.000000e+00, %2515
  %2578 = fdiv fast float %2577, %2572
  %2579 = fdiv fast float %2527, %2572
  %2580 = fmul fast float %2526, 0x3FE279A760000000
  %2581 = fmul fast float %2578, %2515
  %2582 = fmul fast float %2579, %2527
  %2583 = fmul fast float %2576, %2517
  %2584 = fadd fast float %2581, %2583
  %2585 = fsub fast float %2584, %2582
  %2586 = call float @dx.op.unary.f32(i32 6, float %2585)  ; FAbs(value)
  %2587 = fadd fast float %2586, 0x3DDB7CDFE0000000
  %2588 = fdiv fast float %2580, %2587
  br label %2589

; <label>:2589                                    ; preds = %2574, %2565
  %2590 = phi float [ %2588, %2574 ], [ 1.000000e+00, %2565 ]
  %2591 = call float @dx.op.binary.f32(i32 36, float %2590, float %2566)  ; FMin(a,b)
  %2592 = fmul fast float %2498, %2498
  %2593 = fmul fast float %2512, %2512
  %2594 = fmul fast float %2500, %2500
  %2595 = fadd fast float %2594, %2592
  %2596 = fadd fast float %2595, %2593
  %2597 = call float @dx.op.unary.f32(i32 24, float %2596)  ; Sqrt(value)
  %2598 = fcmp fast ugt float %2597, 0.000000e+00
  br i1 %2598, label %2599, label %2614

; <label>:2599                                    ; preds = %2589
  %2600 = fsub fast float -0.000000e+00, %2500
  %2601 = fdiv fast float %2600, %2597
  %2602 = fsub fast float -0.000000e+00, %2498
  %2603 = fdiv fast float %2602, %2597
  %2604 = fdiv fast float %2512, %2597
  %2605 = fmul fast float %2511, 0x3FE279A760000000
  %2606 = fmul fast float %2603, %2498
  %2607 = fmul fast float %2604, %2512
  %2608 = fmul fast float %2601, %2500
  %2609 = fadd fast float %2606, %2608
  %2610 = fsub fast float %2609, %2607
  %2611 = call float @dx.op.unary.f32(i32 6, float %2610)  ; FAbs(value)
  %2612 = fadd fast float %2611, 0x3DDB7CDFE0000000
  %2613 = fdiv fast float %2605, %2612
  br label %2614

; <label>:2614                                    ; preds = %2599, %2589
  %2615 = phi float [ %2613, %2599 ], [ 1.000000e+00, %2589 ]
  %2616 = call float @dx.op.binary.f32(i32 36, float %2615, float %2591)  ; FMin(a,b)
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2618 = fcmp fast olt float %2617, 1.000000e+00
  br i1 %2618, label %2619, label %2629

; <label>:2619                                    ; preds = %2614
  %2620 = fmul fast float %2617, %2498
  %2621 = fmul fast float %2617, %2512
  %2622 = fmul fast float %2617, %2500
  %2623 = fmul fast float %2617, %2515
  %2624 = fmul fast float %2617, %2527
  %2625 = fmul fast float %2617, %2517
  %2626 = fmul fast float %2617, %2530
  %2627 = fmul fast float %2617, %2542
  %2628 = fmul fast float %2617, %2532
  br label %2629

; <label>:2629                                    ; preds = %2619, %2614
  %2630 = phi float [ %2626, %2619 ], [ %2530, %2614 ]
  %2631 = phi float [ %2627, %2619 ], [ %2542, %2614 ]
  %2632 = phi float [ %2628, %2619 ], [ %2532, %2614 ]
  %2633 = phi float [ %2623, %2619 ], [ %2515, %2614 ]
  %2634 = phi float [ %2624, %2619 ], [ %2527, %2614 ]
  %2635 = phi float [ %2625, %2619 ], [ %2517, %2614 ]
  %2636 = phi float [ %2620, %2619 ], [ %2498, %2614 ]
  %2637 = phi float [ %2621, %2619 ], [ %2512, %2614 ]
  %2638 = phi float [ %2622, %2619 ], [ %2500, %2614 ]
  %2639 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2511)  ; FMax(a,b)
  %2640 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2526)  ; FMax(a,b)
  %2641 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2541)  ; FMax(a,b)
  %2642 = fcmp fast oge float %2299, 0.000000e+00
  %2643 = and i1 %2642, %2070
  %2644 = fcmp fast ole float %2299, 1.000000e+00
  %2645 = and i1 %2644, %2643
  %2646 = fcmp fast oge float %2300, 0.000000e+00
  %2647 = and i1 %2646, %2645
  %2648 = fcmp fast ole float %2300, 1.000000e+00
  %2649 = and i1 %2648, %2647
  br i1 %2649, label %2650, label %2795, !dx.controlflow.hints !90

; <label>:2650                                    ; preds = %2629
  %2651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2652 = extractvalue %dx.types.CBufRet.f32 %2651, 2
  %2653 = extractvalue %dx.types.CBufRet.f32 %2651, 3
  %2654 = fmul fast float %2652, %2299
  %2655 = fmul fast float %2653, %2300
  %2656 = call float @dx.op.unary.f32(i32 27, float %2654)  ; Round_ni(value)
  %2657 = call float @dx.op.unary.f32(i32 27, float %2655)  ; Round_ni(value)
  %2658 = fptosi float %2656 to i32
  %2659 = fptosi float %2657 to i32
  %2660 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %35, i32 0, i32 %2658, i32 %2659, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 65535
  %2663 = lshr i32 %2661, 16
  %2664 = icmp eq i32 %2662, 65535
  br i1 %2664, label %2701, label %2665

; <label>:2665                                    ; preds = %2650
  %2666 = extractvalue %dx.types.CBufRet.f32 %2068, 1
  %2667 = extractvalue %dx.types.CBufRet.f32 %2651, 0
  %2668 = extractvalue %dx.types.CBufRet.f32 %2651, 1
  %2669 = fmul fast float %2667, %2299
  %2670 = fmul fast float %2668, %2300
  %2671 = fmul fast float %2669, 1.250000e-01
  %2672 = fmul fast float %2670, 1.250000e-01
  %2673 = call float @dx.op.unary.f32(i32 27, float %2671)  ; Round_ni(value)
  %2674 = call float @dx.op.unary.f32(i32 27, float %2672)  ; Round_ni(value)
  %2675 = fmul fast float %2673, 8.000000e+00
  %2676 = fmul fast float %2674, 8.000000e+00
  %2677 = and i32 %2661, 255
  %2678 = lshr i32 %2661, 8
  %2679 = and i32 %2678, 255
  %2680 = mul nuw nsw i32 %2677, 9
  %2681 = uitofp i32 %2680 to float
  %2682 = mul nuw nsw i32 %2679, 9
  %2683 = uitofp i32 %2682 to float
  %2684 = fadd fast float %2681, 5.000000e-01
  %2685 = fadd fast float %2684, %2669
  %2686 = fsub fast float %2685, %2675
  %2687 = fadd fast float %2683, 5.000000e-01
  %2688 = fadd fast float %2687, %2670
  %2689 = fsub fast float %2688, %2676
  %2690 = fdiv fast float %2686, %2069
  %2691 = fdiv fast float %2689, %2666
  %2692 = fmul fast float %2327, 4.375000e-01
  %2693 = fadd fast float %2692, 3.125000e-02
  %2694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2690, float %2691, float %2693, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2695 = extractvalue %dx.types.ResRet.f32 %2694, 0
  %2696 = extractvalue %dx.types.ResRet.f32 %2694, 1
  %2697 = extractvalue %dx.types.ResRet.f32 %2694, 2
  %2698 = fadd fast float %2695, %2639
  %2699 = fadd fast float %2696, %2640
  %2700 = fadd fast float %2697, %2641
  br label %2701

; <label>:2701                                    ; preds = %2665, %2650
  %2702 = phi float [ %2700, %2665 ], [ %2641, %2650 ]
  %2703 = phi float [ %2699, %2665 ], [ %2640, %2650 ]
  %2704 = phi float [ %2698, %2665 ], [ %2639, %2650 ]
  %2705 = icmp eq i32 %2663, 65535
  br i1 %2705, label %2795, label %2706

; <label>:2706                                    ; preds = %2701
  %2707 = extractvalue %dx.types.CBufRet.f32 %2068, 1
  %2708 = extractvalue %dx.types.CBufRet.f32 %2651, 0
  %2709 = extractvalue %dx.types.CBufRet.f32 %2651, 1
  %2710 = fmul fast float %2708, %2299
  %2711 = fmul fast float %2709, %2300
  %2712 = fmul fast float %2710, 1.250000e-01
  %2713 = fmul fast float %2711, 1.250000e-01
  %2714 = call float @dx.op.unary.f32(i32 27, float %2712)  ; Round_ni(value)
  %2715 = call float @dx.op.unary.f32(i32 27, float %2713)  ; Round_ni(value)
  %2716 = fmul fast float %2714, 8.000000e+00
  %2717 = fmul fast float %2715, 8.000000e+00
  %2718 = fsub fast float %2710, %2716
  %2719 = fsub fast float %2711, %2717
  %2720 = fadd fast float %2718, 5.000000e-01
  %2721 = fadd fast float %2719, 5.000000e-01
  %2722 = and i32 %2663, 255
  %2723 = lshr i32 %2661, 24
  %2724 = mul nuw nsw i32 %2722, 9
  %2725 = uitofp i32 %2724 to float
  %2726 = mul nuw nsw i32 %2723, 9
  %2727 = uitofp i32 %2726 to float
  %2728 = fadd fast float %2720, %2725
  %2729 = fadd fast float %2721, %2727
  %2730 = fdiv fast float %2728, %2069
  %2731 = fdiv fast float %2729, %2707
  %2732 = fmul fast float %2327, 4.375000e-01
  %2733 = fadd fast float %2732, 3.125000e-02
  %2734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2730, float %2731, float %2733, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.ResRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.ResRet.f32 %2734, 2
  %2738 = fadd fast float %2732, 5.312500e-01
  %2739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %2730, float %2731, float %2738, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.ResRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.ResRet.f32 %2739, 2
  %2743 = fmul fast float %2740, 2.000000e+00
  %2744 = fmul fast float %2741, 2.000000e+00
  %2745 = fmul fast float %2742, 2.000000e+00
  %2746 = fadd fast float %2743, -1.000000e+00
  %2747 = fadd fast float %2744, -1.000000e+00
  %2748 = fadd fast float %2745, -1.000000e+00
  %2749 = fmul fast float %2746, %2746
  %2750 = fmul fast float %2747, %2747
  %2751 = fadd fast float %2749, %2750
  %2752 = fmul fast float %2748, %2748
  %2753 = fadd fast float %2751, %2752
  %2754 = call float @dx.op.unary.f32(i32 24, float %2753)  ; Sqrt(value)
  %2755 = fcmp fast ogt float %2754, 0.000000e+00
  br i1 %2755, label %2756, label %2760

; <label>:2756                                    ; preds = %2706
  %2757 = fdiv fast float %2746, %2754
  %2758 = fdiv fast float %2747, %2754
  %2759 = fdiv fast float %2748, %2754
  br label %2760

; <label>:2760                                    ; preds = %2756, %2706
  %2761 = phi float [ %2757, %2756 ], [ 0.000000e+00, %2706 ]
  %2762 = phi float [ %2758, %2756 ], [ 0.000000e+00, %2706 ]
  %2763 = phi float [ %2759, %2756 ], [ 0.000000e+00, %2706 ]
  %2764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2765 = extractvalue %dx.types.CBufRet.f32 %2764, 0
  %2766 = extractvalue %dx.types.CBufRet.f32 %2764, 1
  %2767 = fsub fast float %1920, %2765
  %2768 = fsub fast float %1921, %2766
  %2769 = fmul fast float %2767, %2767
  %2770 = fmul fast float %2768, %2768
  %2771 = fadd fast float %2769, %2770
  %2772 = call float @dx.op.unary.f32(i32 24, float %2771)  ; Sqrt(value)
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2776 = fsub fast float %2772, %2774
  %2777 = fdiv fast float %2776, %2775
  %2778 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2779 = fmul fast float %2778, 2.000000e+00
  %2780 = fsub fast float 3.000000e+00, %2779
  %2781 = fmul fast float %2778, %2778
  %2782 = fmul fast float %2781, %2780
  %2783 = call float @dx.op.dot3.f32(i32 55, float %2761, float %2762, float %2763, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %2784 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2783)  ; FMax(a,b)
  %2785 = fmul fast float %2784, 0x400C5BF8A0000000
  %2786 = fmul fast float %2782, %2735
  %2787 = fmul fast float %2786, %2785
  %2788 = fadd fast float %2787, %2704
  %2789 = fmul fast float %2782, %2736
  %2790 = fmul fast float %2789, %2785
  %2791 = fadd fast float %2790, %2703
  %2792 = fmul fast float %2782, %2737
  %2793 = fmul fast float %2792, %2785
  %2794 = fadd fast float %2793, %2702
  br label %2795

; <label>:2795                                    ; preds = %2760, %2701, %2629
  %2796 = phi float [ %2794, %2760 ], [ %2702, %2701 ], [ %2641, %2629 ]
  %2797 = phi float [ %2791, %2760 ], [ %2703, %2701 ], [ %2640, %2629 ]
  %2798 = phi float [ %2788, %2760 ], [ %2704, %2701 ], [ %2639, %2629 ]
  %2799 = fcmp fast ogt float %2286, %2323
  %2800 = and i1 %2642, %2799
  %2801 = and i1 %2644, %2800
  %2802 = and i1 %2646, %2801
  %2803 = and i1 %2648, %2802
  br i1 %2803, label %2804, label %2861, !dx.controlflow.hints !91

; <label>:2804                                    ; preds = %2795
  %2805 = fmul fast float %2325, 0x3FC24924A0000000
  %2806 = fsub fast float %2286, %2323
  %2807 = fdiv fast float %2806, %2805
  %2808 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.CBufRet.f32 %2811, 1
  %2814 = extractvalue %dx.types.CBufRet.f32 %2811, 2
  %2815 = fsub fast float %2810, %2798
  %2816 = fsub fast float %2812, %2636
  %2817 = fsub fast float %2813, %2637
  %2818 = fsub fast float %2814, %2638
  %2819 = fmul fast float %2815, %2808
  %2820 = fmul fast float %2816, %2808
  %2821 = fmul fast float %2817, %2808
  %2822 = fmul fast float %2818, %2808
  %2823 = fadd fast float %2819, %2798
  %2824 = fadd fast float %2820, %2636
  %2825 = fadd fast float %2821, %2637
  %2826 = fadd fast float %2822, %2638
  %2827 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.CBufRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.CBufRet.f32 %2828, 2
  %2832 = fsub fast float %2827, %2797
  %2833 = fsub fast float %2829, %2633
  %2834 = fsub fast float %2830, %2634
  %2835 = fsub fast float %2831, %2635
  %2836 = fmul fast float %2832, %2808
  %2837 = fmul fast float %2833, %2808
  %2838 = fmul fast float %2834, %2808
  %2839 = fmul fast float %2835, %2808
  %2840 = fadd fast float %2836, %2797
  %2841 = fadd fast float %2837, %2633
  %2842 = fadd fast float %2838, %2634
  %2843 = fadd fast float %2839, %2635
  %2844 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.CBufRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.CBufRet.f32 %2845, 2
  %2849 = fsub fast float %2844, %2796
  %2850 = fsub fast float %2846, %2630
  %2851 = fsub fast float %2847, %2631
  %2852 = fsub fast float %2848, %2632
  %2853 = fmul fast float %2849, %2808
  %2854 = fmul fast float %2850, %2808
  %2855 = fmul fast float %2851, %2808
  %2856 = fmul fast float %2852, %2808
  %2857 = fadd fast float %2853, %2796
  %2858 = fadd fast float %2854, %2630
  %2859 = fadd fast float %2855, %2631
  %2860 = fadd fast float %2856, %2632
  br label %2861

; <label>:2861                                    ; preds = %2804, %2795
  %2862 = phi float [ %2857, %2804 ], [ %2796, %2795 ]
  %2863 = phi float [ %2858, %2804 ], [ %2630, %2795 ]
  %2864 = phi float [ %2859, %2804 ], [ %2631, %2795 ]
  %2865 = phi float [ %2860, %2804 ], [ %2632, %2795 ]
  %2866 = phi float [ %2840, %2804 ], [ %2797, %2795 ]
  %2867 = phi float [ %2841, %2804 ], [ %2633, %2795 ]
  %2868 = phi float [ %2842, %2804 ], [ %2634, %2795 ]
  %2869 = phi float [ %2843, %2804 ], [ %2635, %2795 ]
  %2870 = phi float [ %2823, %2804 ], [ %2798, %2795 ]
  %2871 = phi float [ %2824, %2804 ], [ %2636, %2795 ]
  %2872 = phi float [ %2825, %2804 ], [ %2637, %2795 ]
  %2873 = phi float [ %2826, %2804 ], [ %2638, %2795 ]
  %2874 = extractvalue %dx.types.CBufRet.f32 %2448, 3
  %2875 = fmul fast float %2874, %2870
  %2876 = fmul fast float %2874, %2866
  %2877 = fmul fast float %2874, %2862
  %2878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2879 = extractvalue %dx.types.CBufRet.f32 %2878, 3
  %2880 = fmul fast float %2875, %2879
  %2881 = fmul fast float %2876, %2879
  %2882 = fmul fast float %2877, %2879
  %2883 = fmul fast float %2871, 1.500000e+00
  %2884 = fmul fast float %2883, %2874
  %2885 = fmul fast float %2884, %2879
  %2886 = fmul fast float %2872, 1.500000e+00
  %2887 = fmul fast float %2886, %2874
  %2888 = fmul fast float %2887, %2879
  %2889 = fmul fast float %2873, 1.500000e+00
  %2890 = fmul fast float %2889, %2874
  %2891 = fmul fast float %2890, %2879
  %2892 = fmul fast float %2867, 1.500000e+00
  %2893 = fmul fast float %2892, %2874
  %2894 = fmul fast float %2893, %2879
  %2895 = fmul fast float %2868, 1.500000e+00
  %2896 = fmul fast float %2895, %2874
  %2897 = fmul fast float %2896, %2879
  %2898 = fmul fast float %2869, 1.500000e+00
  %2899 = fmul fast float %2898, %2874
  %2900 = fmul fast float %2899, %2879
  %2901 = fmul fast float %2863, 1.500000e+00
  %2902 = fmul fast float %2901, %2874
  %2903 = fmul fast float %2902, %2879
  %2904 = fmul fast float %2864, 1.500000e+00
  %2905 = fmul fast float %2904, %2874
  %2906 = fmul fast float %2905, %2879
  %2907 = fmul fast float %2865, 1.500000e+00
  %2908 = fmul fast float %2907, %2874
  %2909 = fmul fast float %2908, %2879
  %2910 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2880)  ; FMax(a,b)
  %2911 = call float @dx.op.dot3.f32(i32 55, float %2885, float %2888, float %2891, float %2885, float %2888, float %2891)  ; Dot3(ax,ay,az,bx,by,bz)
  %2912 = fcmp fast oeq float %2911, 0.000000e+00
  %2913 = fcmp fast oeq float %2910, 0.000000e+00
  %2914 = or i1 %2913, %2912
  br i1 %2914, label %2944, label %2915

; <label>:2915                                    ; preds = %2861
  %2916 = fsub fast float -0.000000e+00, %2891
  %2917 = fsub fast float -0.000000e+00, %2885
  %2918 = call float @dx.op.unary.f32(i32 24, float %2911)  ; Sqrt(value)
  %2919 = fdiv fast float %2918, %2910
  %2920 = fcmp fast ogt float %2919, 0x3FFB6F8900000000
  %2921 = select i1 %2920, float 0x3FFB6F8900000000, float %2919
  %2922 = fmul fast float %2921, 0x3FE8A23460000000
  %2923 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2924 = call float @dx.op.binary.f32(i32 35, float %2921, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2925 = fmul fast float %2923, %2910
  %2926 = fmul fast float %2924, 0x3FF279A740000000
  %2927 = fadd fast float %2926, -1.000000e+00
  %2928 = call float @dx.op.dot3.f32(i32 55, float %2916, float %2917, float %2888, float %2916, float %2917, float %2888)  ; Dot3(ax,ay,az,bx,by,bz)
  %2929 = call float @dx.op.unary.f32(i32 25, float %2928)  ; Rsqrt(value)
  %2930 = fmul fast float %2929, %2916
  %2931 = fmul fast float %2929, %2917
  %2932 = fmul fast float %2929, %2888
  %2933 = fmul fast float %2927, %2927
  %2934 = fsub fast float 1.000000e+00, %2933
  %2935 = fmul fast float %2924, 0x40005F8BE0000000
  %2936 = fsub fast float 0x400C5BF8A0000000, %2935
  %2937 = fdiv fast float %2925, %2936
  %2938 = fmul fast float %2937, 0x3FEE31C3C0000000
  %2939 = fmul fast float %2938, %2934
  %2940 = fmul fast float %2924, 0x3FDACB7480000000
  %2941 = fadd fast float %2940, 0xBFD7347680000000
  %2942 = fmul fast float %2941, %2937
  %2943 = fmul fast float %2942, %2934
  br label %2944

; <label>:2944                                    ; preds = %2915, %2861
  %2945 = phi float [ %2930, %2915 ], [ 0.000000e+00, %2861 ]
  %2946 = phi float [ %2931, %2915 ], [ 0.000000e+00, %2861 ]
  %2947 = phi float [ %2932, %2915 ], [ 0.000000e+00, %2861 ]
  %2948 = phi float [ %2939, %2915 ], [ 0.000000e+00, %2861 ]
  %2949 = phi float [ %2943, %2915 ], [ 0.000000e+00, %2861 ]
  %2950 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2946, float %2947, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %2951 = fmul fast float %2950, %2950
  %2952 = fmul fast float %2951, 0x3FEE471020000000
  %2953 = fadd fast float %2952, 0xBFD42F6020000000
  %2954 = fmul fast float %2910, 0x3FD20DD760000000
  %2955 = fmul fast float %2953, %2949
  %2956 = fmul fast float %2948, 0x3FDF454380000000
  %2957 = fmul fast float %2956, %2950
  %2958 = fadd fast float %2957, %2954
  %2959 = fadd fast float %2958, %2955
  %2960 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2946, float %2947, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %2961 = fmul fast float %2960, 0x3FDF454380000000
  %2962 = fmul fast float %2960, %2960
  %2963 = fmul fast float %2962, 0x3FEE471020000000
  %2964 = fadd fast float %2963, 0xBFD42F6020000000
  %2965 = call float @dx.op.dot3.f32(i32 55, float %2910, float %2948, float %2949, float 0x3FD20DD760000000, float %2961, float %2964)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2881)  ; FMax(a,b)
  %2967 = call float @dx.op.dot3.f32(i32 55, float %2894, float %2897, float %2900, float %2894, float %2897, float %2900)  ; Dot3(ax,ay,az,bx,by,bz)
  %2968 = fcmp fast oeq float %2967, 0.000000e+00
  %2969 = fcmp fast oeq float %2966, 0.000000e+00
  %2970 = or i1 %2969, %2968
  br i1 %2970, label %3000, label %2971

; <label>:2971                                    ; preds = %2944
  %2972 = fsub fast float -0.000000e+00, %2900
  %2973 = fsub fast float -0.000000e+00, %2894
  %2974 = call float @dx.op.unary.f32(i32 24, float %2967)  ; Sqrt(value)
  %2975 = fdiv fast float %2974, %2966
  %2976 = fcmp fast ogt float %2975, 0x3FFB6F8900000000
  %2977 = select i1 %2976, float 0x3FFB6F8900000000, float %2975
  %2978 = fmul fast float %2977, 0x3FE8A23460000000
  %2979 = call float @dx.op.unary.f32(i32 7, float %2978)  ; Saturate(value)
  %2980 = call float @dx.op.binary.f32(i32 35, float %2977, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2981 = fmul fast float %2979, %2966
  %2982 = fmul fast float %2980, 0x3FF279A740000000
  %2983 = fadd fast float %2982, -1.000000e+00
  %2984 = call float @dx.op.dot3.f32(i32 55, float %2972, float %2973, float %2897, float %2972, float %2973, float %2897)  ; Dot3(ax,ay,az,bx,by,bz)
  %2985 = call float @dx.op.unary.f32(i32 25, float %2984)  ; Rsqrt(value)
  %2986 = fmul fast float %2985, %2972
  %2987 = fmul fast float %2985, %2973
  %2988 = fmul fast float %2985, %2897
  %2989 = fmul fast float %2983, %2983
  %2990 = fsub fast float 1.000000e+00, %2989
  %2991 = fmul fast float %2980, 0x40005F8BE0000000
  %2992 = fsub fast float 0x400C5BF8A0000000, %2991
  %2993 = fdiv fast float %2981, %2992
  %2994 = fmul fast float %2993, 0x3FEE31C3C0000000
  %2995 = fmul fast float %2994, %2990
  %2996 = fmul fast float %2980, 0x3FDACB7480000000
  %2997 = fadd fast float %2996, 0xBFD7347680000000
  %2998 = fmul fast float %2997, %2993
  %2999 = fmul fast float %2998, %2990
  br label %3000

; <label>:3000                                    ; preds = %2971, %2944
  %3001 = phi float [ %2986, %2971 ], [ 0.000000e+00, %2944 ]
  %3002 = phi float [ %2987, %2971 ], [ 0.000000e+00, %2944 ]
  %3003 = phi float [ %2988, %2971 ], [ 0.000000e+00, %2944 ]
  %3004 = phi float [ %2995, %2971 ], [ 0.000000e+00, %2944 ]
  %3005 = phi float [ %2999, %2971 ], [ 0.000000e+00, %2944 ]
  %3006 = call float @dx.op.dot3.f32(i32 55, float %3001, float %3002, float %3003, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %3007 = fmul fast float %3006, %3006
  %3008 = fmul fast float %3007, 0x3FEE471020000000
  %3009 = fadd fast float %3008, 0xBFD42F6020000000
  %3010 = fmul fast float %2966, 0x3FD20DD760000000
  %3011 = fmul fast float %3009, %3005
  %3012 = fmul fast float %3004, 0x3FDF454380000000
  %3013 = fmul fast float %3012, %3006
  %3014 = fadd fast float %3013, %3010
  %3015 = fadd fast float %3014, %3011
  %3016 = call float @dx.op.dot3.f32(i32 55, float %3001, float %3002, float %3003, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %3017 = fmul fast float %3016, 0x3FDF454380000000
  %3018 = fmul fast float %3016, %3016
  %3019 = fmul fast float %3018, 0x3FEE471020000000
  %3020 = fadd fast float %3019, 0xBFD42F6020000000
  %3021 = call float @dx.op.dot3.f32(i32 55, float %2966, float %3004, float %3005, float 0x3FD20DD760000000, float %3017, float %3020)  ; Dot3(ax,ay,az,bx,by,bz)
  %3022 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2882)  ; FMax(a,b)
  %3023 = call float @dx.op.dot3.f32(i32 55, float %2903, float %2906, float %2909, float %2903, float %2906, float %2909)  ; Dot3(ax,ay,az,bx,by,bz)
  %3024 = fcmp fast oeq float %3023, 0.000000e+00
  %3025 = fcmp fast oeq float %3022, 0.000000e+00
  %3026 = or i1 %3025, %3024
  br i1 %3026, label %3056, label %3027

; <label>:3027                                    ; preds = %3000
  %3028 = fsub fast float -0.000000e+00, %2909
  %3029 = fsub fast float -0.000000e+00, %2903
  %3030 = call float @dx.op.unary.f32(i32 24, float %3023)  ; Sqrt(value)
  %3031 = fdiv fast float %3030, %3022
  %3032 = fcmp fast ogt float %3031, 0x3FFB6F8900000000
  %3033 = select i1 %3032, float 0x3FFB6F8900000000, float %3031
  %3034 = fmul fast float %3033, 0x3FE8A23460000000
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3036 = call float @dx.op.binary.f32(i32 35, float %3033, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3037 = fmul fast float %3035, %3022
  %3038 = fmul fast float %3036, 0x3FF279A740000000
  %3039 = fadd fast float %3038, -1.000000e+00
  %3040 = call float @dx.op.dot3.f32(i32 55, float %3028, float %3029, float %2906, float %3028, float %3029, float %2906)  ; Dot3(ax,ay,az,bx,by,bz)
  %3041 = call float @dx.op.unary.f32(i32 25, float %3040)  ; Rsqrt(value)
  %3042 = fmul fast float %3041, %3028
  %3043 = fmul fast float %3041, %3029
  %3044 = fmul fast float %3041, %2906
  %3045 = fmul fast float %3039, %3039
  %3046 = fsub fast float 1.000000e+00, %3045
  %3047 = fmul fast float %3036, 0x40005F8BE0000000
  %3048 = fsub fast float 0x400C5BF8A0000000, %3047
  %3049 = fdiv fast float %3037, %3048
  %3050 = fmul fast float %3049, 0x3FEE31C3C0000000
  %3051 = fmul fast float %3050, %3046
  %3052 = fmul fast float %3036, 0x3FDACB7480000000
  %3053 = fadd fast float %3052, 0xBFD7347680000000
  %3054 = fmul fast float %3053, %3049
  %3055 = fmul fast float %3054, %3046
  br label %3056

; <label>:3056                                    ; preds = %3027, %3000
  %3057 = phi float [ %3042, %3027 ], [ 0.000000e+00, %3000 ]
  %3058 = phi float [ %3043, %3027 ], [ 0.000000e+00, %3000 ]
  %3059 = phi float [ %3044, %3027 ], [ 0.000000e+00, %3000 ]
  %3060 = phi float [ %3051, %3027 ], [ 0.000000e+00, %3000 ]
  %3061 = phi float [ %3055, %3027 ], [ 0.000000e+00, %3000 ]
  %3062 = call float @dx.op.dot3.f32(i32 55, float %3057, float %3058, float %3059, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %3063 = fmul fast float %3062, %3062
  %3064 = fmul fast float %3063, 0x3FEE471020000000
  %3065 = fadd fast float %3064, 0xBFD42F6020000000
  %3066 = fmul fast float %3022, 0x3FD20DD760000000
  %3067 = fmul fast float %3065, %3061
  %3068 = fmul fast float %3060, 0x3FDF454380000000
  %3069 = fmul fast float %3068, %3062
  %3070 = fadd fast float %3069, %3066
  %3071 = fadd fast float %3070, %3067
  %3072 = call float @dx.op.dot3.f32(i32 55, float %3057, float %3058, float %3059, float %1910, float %1911, float %1912)  ; Dot3(ax,ay,az,bx,by,bz)
  %3073 = fmul fast float %3072, 0x3FDF454380000000
  %3074 = fmul fast float %3072, %3072
  %3075 = fmul fast float %3074, 0x3FEE471020000000
  %3076 = fadd fast float %3075, 0xBFD42F6020000000
  %3077 = call float @dx.op.dot3.f32(i32 55, float %3022, float %3060, float %3061, float 0x3FD20DD760000000, float %3073, float %3076)  ; Dot3(ax,ay,az,bx,by,bz)
  %3078 = call float @dx.op.binary.f32(i32 35, float %2959, float 0.000000e+00)  ; FMax(a,b)
  %3079 = call float @dx.op.binary.f32(i32 35, float %3015, float 0.000000e+00)  ; FMax(a,b)
  %3080 = call float @dx.op.binary.f32(i32 35, float %3071, float 0.000000e+00)  ; FMax(a,b)
  %3081 = call float @dx.op.binary.f32(i32 35, float %2965, float 0.000000e+00)  ; FMax(a,b)
  %3082 = call float @dx.op.binary.f32(i32 35, float %3021, float 0.000000e+00)  ; FMax(a,b)
  %3083 = call float @dx.op.binary.f32(i32 35, float %3077, float 0.000000e+00)  ; FMax(a,b)
  %3084 = fsub fast float %2280, %3078
  %3085 = fsub fast float %2281, %3079
  %3086 = fsub fast float %2282, %3080
  %3087 = fmul fast float %3084, %1961
  %3088 = fmul fast float %3085, %1961
  %3089 = fmul fast float %3086, %1961
  %3090 = fadd fast float %3087, %3078
  %3091 = fadd fast float %3088, %3079
  %3092 = fadd fast float %3089, %3080
  %3093 = fsub fast float %2277, %3081
  %3094 = fsub fast float %2278, %3082
  %3095 = fsub fast float %2279, %3083
  %3096 = fmul fast float %3093, %1961
  %3097 = fmul fast float %3094, %1961
  %3098 = fmul fast float %3095, %1961
  %3099 = fadd fast float %3096, %3081
  %3100 = fadd fast float %3097, %3082
  %3101 = fadd fast float %3098, %3083
  br label %3102

; <label>:3102                                    ; preds = %3056, %2276
  %3103 = phi float [ %3099, %3056 ], [ %2277, %2276 ]
  %3104 = phi float [ %3100, %3056 ], [ %2278, %2276 ]
  %3105 = phi float [ %3101, %3056 ], [ %2279, %2276 ]
  %3106 = phi float [ %3090, %3056 ], [ %2280, %2276 ]
  %3107 = phi float [ %3091, %3056 ], [ %2281, %2276 ]
  %3108 = phi float [ %3092, %3056 ], [ %2282, %2276 ]
  %3109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3110 = extractvalue %dx.types.CBufRet.f32 %3109, 0
  %3111 = call float @dx.op.binary.f32(i32 36, float %1891, float %3110)  ; FMin(a,b)
  %3112 = fsub fast float 1.000000e+00, %1913
  %3113 = fmul fast float %3111, %3112
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = bitcast float %3114 to i32
  %3116 = sub nsw i32 2129859010, %3115
  %3117 = bitcast i32 %3116 to float
  %3118 = call float @dx.op.binary.f32(i32 36, float %1892, float %3110)  ; FMin(a,b)
  %3119 = fmul fast float %3118, %3112
  %3120 = fsub fast float 1.000000e+00, %3119
  %3121 = bitcast float %3120 to i32
  %3122 = sub nsw i32 2129859010, %3121
  %3123 = bitcast i32 %3122 to float
  %3124 = call float @dx.op.binary.f32(i32 36, float %1893, float %3110)  ; FMin(a,b)
  %3125 = fmul fast float %3124, %3112
  %3126 = fsub fast float 1.000000e+00, %3125
  %3127 = bitcast float %3126 to i32
  %3128 = sub nsw i32 2129859010, %3127
  %3129 = bitcast i32 %3128 to float
  %3130 = fmul fast float %3106, %1913
  %3131 = fmul fast float %3130, %3117
  %3132 = fmul fast float %3107, %1913
  %3133 = fmul fast float %3132, %3123
  %3134 = fmul fast float %3108, %1913
  %3135 = fmul fast float %3134, %3129
  %3136 = call float @dx.op.binary.f32(i32 36, float %1894, float %3110)  ; FMin(a,b)
  %3137 = fmul fast float %3136, %3112
  %3138 = fsub fast float 1.000000e+00, %3137
  %3139 = bitcast float %3138 to i32
  %3140 = sub nsw i32 2129859010, %3139
  %3141 = bitcast i32 %3140 to float
  %3142 = call float @dx.op.binary.f32(i32 36, float %1895, float %3110)  ; FMin(a,b)
  %3143 = fmul fast float %3142, %3112
  %3144 = fsub fast float 1.000000e+00, %3143
  %3145 = bitcast float %3144 to i32
  %3146 = sub nsw i32 2129859010, %3145
  %3147 = bitcast i32 %3146 to float
  %3148 = call float @dx.op.binary.f32(i32 36, float %1902, float %3110)  ; FMin(a,b)
  %3149 = fmul fast float %3148, %3112
  %3150 = fsub fast float 1.000000e+00, %3149
  %3151 = bitcast float %3150 to i32
  %3152 = sub nsw i32 2129859010, %3151
  %3153 = bitcast i32 %3152 to float
  %3154 = fmul fast float %3103, %1913
  %3155 = fmul fast float %3154, %3141
  %3156 = fmul fast float %3104, %1913
  %3157 = fmul fast float %3156, %3147
  %3158 = fmul fast float %3105, %1913
  %3159 = fmul fast float %3158, %3153
  %3160 = call float @dx.op.dot3.f32(i32 55, float %3131, float %3133, float %3135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3161 = select i1 %247, float 0.000000e+00, float %3131
  %3162 = select i1 %247, float %3160, float %3133
  %3163 = select i1 %247, float 0.000000e+00, float %3135
  %3164 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3157, float %3159, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3165 = select i1 %247, float 0.000000e+00, float %3155
  %3166 = select i1 %247, float %3164, float %3157
  %3167 = select i1 %247, float 0.000000e+00, float %3159
  %3168 = fmul fast float %1904, 9.843750e-01
  %3169 = fmul fast float %1900, 9.843750e-01
  %3170 = fadd fast float %3168, 7.812500e-03
  %3171 = fadd fast float %3169, 7.812500e-03
  %3172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %45, float %3170, float %3171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3173 = extractvalue %dx.types.ResRet.f32 %3172, 2
  %3174 = extractvalue %dx.types.ResRet.f32 %3172, 3
  %3175 = fmul fast float %3173, %1894
  %3176 = fmul fast float %3173, %1895
  %3177 = fmul fast float %3173, %1902
  %3178 = fadd fast float %3175, %3174
  %3179 = fadd fast float %3176, %3174
  %3180 = fadd fast float %3177, %3174
  %3181 = fcmp fast ogt float %1548, 0.000000e+00
  br i1 %3181, label %3182, label %3208

; <label>:3182                                    ; preds = %3102
  %3183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1548, float %1904, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3184 = extractvalue %dx.types.ResRet.f32 %3183, 0
  %3185 = extractvalue %dx.types.ResRet.f32 %3183, 1
  %3186 = extractvalue %dx.types.ResRet.f32 %3183, 2
  %3187 = fadd fast float %3184, -5.000000e-01
  %3188 = fadd fast float %3185, -5.000000e-01
  %3189 = fadd fast float %3186, -5.000000e-01
  %3190 = fsub fast float 1.000000e+00, %1894
  %3191 = fsub fast float 1.000000e+00, %1895
  %3192 = fsub fast float 1.000000e+00, %1902
  %3193 = fmul fast float %1894, 4.000000e+00
  %3194 = fmul fast float %3193, %3190
  %3195 = fmul fast float %3194, %3187
  %3196 = fmul fast float %1895, 4.000000e+00
  %3197 = fmul fast float %3196, %3191
  %3198 = fmul fast float %3197, %3188
  %3199 = fmul fast float %1902, 4.000000e+00
  %3200 = fmul fast float %3199, %3192
  %3201 = fmul fast float %3200, %3189
  %3202 = fadd fast float %3195, %3178
  %3203 = fadd fast float %3198, %3179
  %3204 = fadd fast float %3201, %3180
  %3205 = call float @dx.op.unary.f32(i32 7, float %3202)  ; Saturate(value)
  %3206 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  %3207 = call float @dx.op.unary.f32(i32 7, float %3204)  ; Saturate(value)
  br label %3208

; <label>:3208                                    ; preds = %3182, %3102
  %3209 = phi float [ %3205, %3182 ], [ %3178, %3102 ]
  %3210 = phi float [ %3206, %3182 ], [ %3179, %3102 ]
  %3211 = phi float [ %3207, %3182 ], [ %3180, %3102 ]
  %3212 = call float @dx.op.binary.f32(i32 35, float %3210, float %3211)  ; FMax(a,b)
  %3213 = call float @dx.op.binary.f32(i32 35, float %3209, float %3212)  ; FMax(a,b)
  %3214 = fsub fast float 1.000000e+00, %3213
  %3215 = fmul fast float %3214, %3161
  %3216 = fmul fast float %3214, %3162
  %3217 = fmul fast float %3214, %3163
  %3218 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3219 = fcmp fast ogt float %3218, 0x3E7FF19E20000000
  %3220 = fdiv fast float 1.000000e+00, %3218
  %3221 = select i1 %3219, float %3220, float 0.000000e+00
  %3222 = fmul fast float %3221, %1891
  %3223 = fmul fast float %3221, %1892
  %3224 = fmul fast float %3221, %1893
  %3225 = fadd fast float %3222, -1.000000e+00
  %3226 = fadd fast float %3223, -1.000000e+00
  %3227 = fadd fast float %3224, -1.000000e+00
  %3228 = fmul fast float %3225, 5.000000e-01
  %3229 = fmul fast float %3226, 5.000000e-01
  %3230 = fmul fast float %3227, 5.000000e-01
  %3231 = fadd fast float %3228, 1.000000e+00
  %3232 = fadd fast float %3229, 1.000000e+00
  %3233 = fadd fast float %3230, 1.000000e+00
  %3234 = fmul fast float %3209, %3165
  %3235 = fmul fast float %3210, %3166
  %3236 = fmul fast float %3211, %3167
  %3237 = fsub fast float 1.000000e+00, %1904
  %3238 = bitcast float %3237 to i32
  %3239 = sitofp i32 %3238 to float
  %3240 = fmul fast float %3239, 5.000000e+00
  %3241 = fadd fast float %3240, 0xC1EFBF8940000000
  %3242 = fptosi float %3241 to i32
  %3243 = bitcast i32 %3242 to float
  %3244 = fmul fast float %3243, %1547
  %3245 = fmul fast float %3161, %3244
  %3246 = fmul fast float %3245, %3214
  %3247 = fmul fast float %3246, %3231
  %3248 = fmul fast float %3162, %3244
  %3249 = fmul fast float %3248, %3214
  %3250 = fmul fast float %3249, %3232
  %3251 = fmul fast float %3163, %3244
  %3252 = fmul fast float %3251, %3214
  %3253 = fmul fast float %3252, %3233
  %3254 = fmul fast float %3215, %1602
  %3255 = fmul fast float %3216, %1602
  %3256 = fmul fast float %3217, %1602
  %3257 = fadd fast float %3234, %1549
  %3258 = fadd fast float %3257, %3247
  %3259 = fmul fast float %3258, %1602
  %3260 = fadd fast float %3235, %1550
  %3261 = fadd fast float %3260, %3250
  %3262 = fmul fast float %3261, %1602
  %3263 = fadd fast float %3236, %1551
  %3264 = fadd fast float %3263, %3253
  %3265 = fmul fast float %3264, %1602
  %3266 = bitcast i32 %1916 to float
  %3267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3268 = extractvalue %dx.types.CBufRet.f32 %3267, 3
  %3269 = fcmp fast oeq float %3268, 0.000000e+00
  br i1 %3269, label %4258, label %3270

; <label>:3270                                    ; preds = %3208
  %3271 = extractvalue %dx.types.CBufRet.f32 %3267, 0
  %3272 = extractvalue %dx.types.CBufRet.f32 %3267, 1
  %3273 = extractvalue %dx.types.CBufRet.f32 %3267, 2
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.CBufRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.CBufRet.f32 %3274, 2
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 0
  %3280 = extractvalue %dx.types.CBufRet.f32 %3278, 1
  %3281 = call float @dx.op.dot3.f32(i32 55, float %3275, float %3276, float %3277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = select i1 %247, float %3279, float %3275
  %3283 = select i1 %247, float %3281, float %3276
  %3284 = select i1 %247, float %3280, float %3277
  %3285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3286 = extractvalue %dx.types.CBufRet.f32 %3285, 2
  %3287 = fmul fast float %3286, %57
  %3288 = fmul fast float %3286, %58
  %3289 = fmul fast float %3286, %59
  %3290 = fadd fast float %3287, %125
  %3291 = fadd fast float %3288, %126
  %3292 = fadd fast float %3289, %127
  %3293 = fcmp fast olt float %3268, 0.000000e+00
  br i1 %3293, label %3915, label %3294

; <label>:3294                                    ; preds = %3270
  %3295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3296 = extractvalue %dx.types.CBufRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.CBufRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.CBufRet.f32 %3295, 2
  %3299 = extractvalue %dx.types.CBufRet.f32 %3295, 3
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.CBufRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.CBufRet.f32 %3300, 2
  %3304 = extractvalue %dx.types.CBufRet.f32 %3300, 3
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3308 = extractvalue %dx.types.CBufRet.f32 %3305, 2
  %3309 = extractvalue %dx.types.CBufRet.f32 %3305, 3
  %3310 = fmul fast float %3296, %3290
  %3311 = call float @dx.op.tertiary.f32(i32 46, float %3291, float %3297, float %3310)  ; FMad(a,b,c)
  %3312 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3298, float %3311)  ; FMad(a,b,c)
  %3313 = fadd fast float %3312, %3299
  %3314 = fmul fast float %3301, %3290
  %3315 = call float @dx.op.tertiary.f32(i32 46, float %3291, float %3302, float %3314)  ; FMad(a,b,c)
  %3316 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3303, float %3315)  ; FMad(a,b,c)
  %3317 = fadd fast float %3316, %3304
  %3318 = fmul fast float %3306, %3290
  %3319 = call float @dx.op.tertiary.f32(i32 46, float %3291, float %3307, float %3318)  ; FMad(a,b,c)
  %3320 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3308, float %3319)  ; FMad(a,b,c)
  %3321 = fadd fast float %3320, %3309
  %3322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3323 = extractvalue %dx.types.CBufRet.f32 %3322, 0
  %3324 = extractvalue %dx.types.CBufRet.f32 %3322, 1
  %3325 = extractvalue %dx.types.CBufRet.f32 %3322, 3
  %3326 = fmul fast float %3325, %3313
  %3327 = fmul fast float %3325, %3317
  %3328 = fadd fast float %3326, %3323
  %3329 = fadd fast float %3327, %3324
  %3330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3331 = extractvalue %dx.types.CBufRet.f32 %3330, 0
  %3332 = extractvalue %dx.types.CBufRet.f32 %3330, 1
  %3333 = extractvalue %dx.types.CBufRet.f32 %3330, 3
  %3334 = fmul fast float %3333, %3313
  %3335 = fmul fast float %3333, %3317
  %3336 = fadd fast float %3334, %3331
  %3337 = fadd fast float %3335, %3332
  %3338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3339 = extractvalue %dx.types.CBufRet.f32 %3338, 1
  %3340 = fsub fast float %3339, %3321
  %3341 = extractvalue %dx.types.CBufRet.f32 %3338, 2
  %3342 = fmul fast float %3340, %3341
  %3343 = fsub fast float 1.000000e+00, %3342
  %3344 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  %3345 = extractvalue %dx.types.CBufRet.f32 %3330, 2
  %3346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3347 = extractvalue %dx.types.CBufRet.f32 %3346, 2
  %3348 = fadd fast float %3347, %3345
  %3349 = fcmp fast ogt float %3348, 0.000000e+00
  br i1 %3349, label %3350, label %3374

; <label>:3350                                    ; preds = %3294
  %3351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3352 = extractvalue %dx.types.CBufRet.f32 %3351, 0
  %3353 = extractvalue %dx.types.CBufRet.f32 %3351, 1
  %3354 = fsub fast float %3336, %3352
  %3355 = fsub fast float %3337, %3353
  %3356 = fcmp fast olt float %3354, 0.000000e+00
  %3357 = fcmp fast olt float %3355, 0.000000e+00
  %3358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3358, 0
  %3360 = extractvalue %dx.types.CBufRet.f32 %3358, 1
  %3361 = extractvalue %dx.types.CBufRet.f32 %3358, 2
  %3362 = extractvalue %dx.types.CBufRet.f32 %3358, 3
  %3363 = select i1 %3356, float %3359, float %3361
  %3364 = select i1 %3357, float %3360, float %3362
  %3365 = fmul fast float %3363, %3354
  %3366 = fmul fast float %3364, %3355
  %3367 = call float @dx.op.unary.f32(i32 6, float %3365)  ; FAbs(value)
  %3368 = call float @dx.op.unary.f32(i32 6, float %3366)  ; FAbs(value)
  %3369 = extractvalue %dx.types.CBufRet.f32 %3285, 0
  %3370 = call float @dx.op.binary.f32(i32 35, float %3367, float %3368)  ; FMax(a,b)
  %3371 = fsub fast float %3369, %3370
  %3372 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3373 = fmul fast float %3372, %3344
  br label %3374

; <label>:3374                                    ; preds = %3350, %3294
  %3375 = phi float [ %3373, %3350 ], [ 0.000000e+00, %3294 ]
  %3376 = extractvalue %dx.types.CBufRet.f32 %3322, 2
  %3377 = extractvalue %dx.types.CBufRet.f32 %3346, 1
  %3378 = fadd fast float %3377, %3376
  %3379 = fcmp fast ogt float %3378, 0.000000e+00
  %3380 = extractvalue %dx.types.CBufRet.f32 %3285, 0
  br i1 %3379, label %3381, label %3404

; <label>:3381                                    ; preds = %3374
  %3382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3383 = extractvalue %dx.types.CBufRet.f32 %3382, 0
  %3384 = extractvalue %dx.types.CBufRet.f32 %3382, 1
  %3385 = fsub fast float %3328, %3383
  %3386 = fsub fast float %3329, %3384
  %3387 = fcmp fast olt float %3385, 0.000000e+00
  %3388 = fcmp fast olt float %3386, 0.000000e+00
  %3389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3390 = extractvalue %dx.types.CBufRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.CBufRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.CBufRet.f32 %3389, 2
  %3393 = extractvalue %dx.types.CBufRet.f32 %3389, 3
  %3394 = select i1 %3387, float %3390, float %3392
  %3395 = select i1 %3388, float %3391, float %3393
  %3396 = fmul fast float %3394, %3385
  %3397 = fmul fast float %3395, %3386
  %3398 = call float @dx.op.unary.f32(i32 6, float %3396)  ; FAbs(value)
  %3399 = call float @dx.op.unary.f32(i32 6, float %3397)  ; FAbs(value)
  %3400 = call float @dx.op.binary.f32(i32 35, float %3398, float %3399)  ; FMax(a,b)
  %3401 = fsub fast float %3380, %3400
  %3402 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  %3403 = fmul fast float %3402, %3344
  br label %3404

; <label>:3404                                    ; preds = %3381, %3374
  %3405 = phi float [ %3403, %3381 ], [ 0.000000e+00, %3374 ]
  %3406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3407 = extractvalue %dx.types.CBufRet.f32 %3406, 1
  %3408 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3410 = extractvalue %dx.types.CBufRet.f32 %3409, 0
  %3411 = extractvalue %dx.types.CBufRet.f32 %3409, 1
  %3412 = fsub fast float %3313, %3410
  %3413 = fsub fast float %3317, %3411
  %3414 = fcmp fast olt float %3412, 0.000000e+00
  %3415 = fcmp fast olt float %3413, 0.000000e+00
  %3416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.f32 %3416, 0
  %3418 = extractvalue %dx.types.CBufRet.f32 %3416, 1
  %3419 = extractvalue %dx.types.CBufRet.f32 %3416, 2
  %3420 = extractvalue %dx.types.CBufRet.f32 %3416, 3
  %3421 = select i1 %3414, float %3417, float %3419
  %3422 = select i1 %3415, float %3418, float %3420
  %3423 = fmul fast float %3421, %3412
  %3424 = fmul fast float %3422, %3413
  %3425 = call float @dx.op.unary.f32(i32 6, float %3423)  ; FAbs(value)
  %3426 = call float @dx.op.unary.f32(i32 6, float %3424)  ; FAbs(value)
  %3427 = call float @dx.op.binary.f32(i32 35, float %3425, float %3426)  ; FMax(a,b)
  %3428 = fsub fast float %3380, %3427
  %3429 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  %3430 = call float @dx.op.binary.f32(i32 36, float %3429, float %3408)  ; FMin(a,b)
  %3431 = fmul fast float %3430, %3344
  %3432 = fsub fast float %3405, %3431
  %3433 = fsub fast float %3375, %3405
  %3434 = fsub fast float %3433, %3431
  %3435 = call float @dx.op.binary.f32(i32 35, float %3405, float %3375)  ; FMax(a,b)
  %3436 = call float @dx.op.binary.f32(i32 35, float %3431, float %3435)  ; FMax(a,b)
  %3437 = fcmp fast olt float %3436, 1.000000e+00
  br i1 %3437, label %3438, label %3836, !dx.controlflow.hints !92

; <label>:3438                                    ; preds = %3404
  %3439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3440 = extractvalue %dx.types.CBufRet.f32 %3439, 0
  %3441 = fcmp fast une float %3440, 0.000000e+00
  br i1 %3441, label %3442, label %3836, !dx.controlflow.hints !93

; <label>:3442                                    ; preds = %3438
  %3443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3444 = extractvalue %dx.types.CBufRet.f32 %3443, 0
  %3445 = extractvalue %dx.types.CBufRet.f32 %3443, 1
  %3446 = extractvalue %dx.types.CBufRet.f32 %3443, 2
  %3447 = extractvalue %dx.types.CBufRet.f32 %3443, 3
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.CBufRet.f32 %3448, 2
  %3452 = extractvalue %dx.types.CBufRet.f32 %3448, 3
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.CBufRet.f32 %3453, 1
  %3456 = extractvalue %dx.types.CBufRet.f32 %3453, 2
  %3457 = extractvalue %dx.types.CBufRet.f32 %3453, 3
  %3458 = fmul fast float %3444, %3290
  %3459 = call float @dx.op.tertiary.f32(i32 46, float %3291, float %3445, float %3458)  ; FMad(a,b,c)
  %3460 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3446, float %3459)  ; FMad(a,b,c)
  %3461 = fadd fast float %3460, %3447
  %3462 = fmul fast float %3449, %3290
  %3463 = call float @dx.op.tertiary.f32(i32 46, float %3291, float %3450, float %3462)  ; FMad(a,b,c)
  %3464 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3451, float %3463)  ; FMad(a,b,c)
  %3465 = fadd fast float %3464, %3452
  %3466 = fmul fast float %3454, %3290
  %3467 = call float @dx.op.tertiary.f32(i32 46, float %3291, float %3455, float %3466)  ; FMad(a,b,c)
  %3468 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3456, float %3467)  ; FMad(a,b,c)
  %3469 = fadd fast float %3468, %3457
  %3470 = fcmp fast oge float %3461, 1.000000e+00
  %3471 = fcmp fast oge float %3465, 1.000000e+00
  %3472 = or i1 %3470, %3471
  %3473 = fcmp fast olt float %3461, 0.000000e+00
  %3474 = fcmp fast olt float %3465, 0.000000e+00
  %3475 = or i1 %3473, %3474
  %3476 = or i1 %3472, %3475
  br i1 %3476, label %3836, label %3477, !dx.controlflow.hints !94

; <label>:3477                                    ; preds = %3442
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.CBufRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.CBufRet.f32 %3478, 2
  %3482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.i32 %3482, 2
  %3484 = uitofp i32 %3483 to float
  %3485 = extractvalue %dx.types.CBufRet.i32 %3482, 3
  %3486 = uitofp i32 %3485 to float
  %3487 = extractvalue %dx.types.CBufRet.f32 %3478, 3
  %3488 = fmul fast float %3487, 2.000000e+00
  %3489 = fsub fast float %3461, %3479
  %3490 = fsub fast float %3465, %3480
  %3491 = fmul fast float %3488, %3489
  %3492 = fmul fast float %3488, %3490
  %3493 = fdiv fast float 1.000000e+00, %3273
  %3494 = fmul fast float %3492, %3493
  %3495 = call float @dx.op.unary.f32(i32 6, float %3494)  ; FAbs(value)
  %3496 = fmul fast float %3481, %3292
  %3497 = fmul fast float %3496, %3488
  %3498 = call float @dx.op.unary.f32(i32 6, float %3497)  ; FAbs(value)
  %3499 = call float @dx.op.unary.f32(i32 6, float %3491)  ; FAbs(value)
  %3500 = call float @dx.op.binary.f32(i32 35, float %3498, float %3495)  ; FMax(a,b)
  %3501 = call float @dx.op.binary.f32(i32 35, float %3499, float %3500)  ; FMax(a,b)
  %3502 = fmul fast float %3501, 2.000000e+00
  %3503 = call float @dx.op.unary.f32(i32 23, float %3502)  ; Log(value)
  %3504 = call float @dx.op.binary.f32(i32 35, float %3503, float %3484)  ; FMax(a,b)
  %3505 = call float @dx.op.unary.f32(i32 22, float %3504)  ; Frc(value)
  %3506 = fadd fast float %3505, 0xBFEA666660000000
  %3507 = fmul fast float %3506, 8.000000e+00
  %3508 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  %3509 = call float @dx.op.unary.f32(i32 27, float %3504)  ; Round_ni(value)
  %3510 = fadd fast float %3509, %3508
  %3511 = call float @dx.op.binary.f32(i32 36, float %3510, float %3486)  ; FMin(a,b)
  %3512 = call float @dx.op.unary.f32(i32 27, float %3511)  ; Round_ni(value)
  %3513 = fsub fast float -0.000000e+00, %3512
  %3514 = call float @dx.op.unary.f32(i32 21, float %3513)  ; Exp(value)
  %3515 = fmul fast float %3514, %3488
  %3516 = fmul fast float %3515, %3461
  %3517 = fmul fast float %3515, %3465
  %3518 = fmul fast float %3516, 2.500000e-01
  %3519 = fmul fast float %3517, 2.500000e-01
  %3520 = fadd fast float %3518, 5.000000e-01
  %3521 = fadd fast float %3519, 5.000000e-01
  %3522 = fsub fast float %3486, %3484
  %3523 = fptoui float %3522 to i32
  %3524 = add i32 %3523, 320
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %3524)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 0
  %3527 = extractvalue %dx.types.CBufRet.f32 %3525, 1
  %3528 = fcmp fast une float %3511, %3486
  %3529 = fsub fast float %3461, %3526
  %3530 = fsub fast float %3465, %3527
  %3531 = call float @dx.op.unary.f32(i32 6, float %3529)  ; FAbs(value)
  %3532 = call float @dx.op.unary.f32(i32 6, float %3530)  ; FAbs(value)
  %3533 = fmul fast float %3531, %3515
  %3534 = fmul fast float %3532, %3515
  %3535 = fcmp fast olt float %3533, 1.000000e+00
  %3536 = fcmp fast olt float %3534, 1.000000e+00
  %3537 = and i1 %3535, %3536
  %3538 = or i1 %3528, %3537
  br i1 %3538, label %3539, label %3836, !dx.controlflow.hints !95

; <label>:3539                                    ; preds = %3477
  %3540 = fmul fast float %3517, 5.000000e-01
  %3541 = fmul fast float %3516, 5.000000e-01
  %3542 = fadd fast float %3540, 5.000000e-01
  %3543 = fadd fast float %3541, 5.000000e-01
  %3544 = sitofp i32 %3483 to float
  %3545 = fsub fast float %3511, %3544
  %3546 = call float @dx.op.unary.f32(i32 27, float %3545)  ; Round_ni(value)
  %3547 = call float @dx.op.unary.f32(i32 22, float %3511)  ; Frc(value)
  %3548 = call float @dx.op.unary.f32(i32 22, float %3543)  ; Frc(value)
  %3549 = call float @dx.op.unary.f32(i32 22, float %3542)  ; Frc(value)
  %3550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %3548, float %3549, float %3546, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3551 = extractvalue %dx.types.ResRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.ResRet.f32 %3550, 1
  %3553 = extractvalue %dx.types.ResRet.f32 %3550, 2
  %3554 = extractvalue %dx.types.ResRet.f32 %3550, 3
  %3555 = fcmp fast ogt float %3547, 0.000000e+00
  br i1 %3555, label %3556, label %3577, !dx.controlflow.hints !96

; <label>:3556                                    ; preds = %3539
  %3557 = fadd fast float %3546, 1.000000e+00
  %3558 = call float @dx.op.unary.f32(i32 22, float %3520)  ; Frc(value)
  %3559 = call float @dx.op.unary.f32(i32 22, float %3521)  ; Frc(value)
  %3560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %44, float %3558, float %3559, float %3557, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3561 = extractvalue %dx.types.ResRet.f32 %3560, 0
  %3562 = extractvalue %dx.types.ResRet.f32 %3560, 1
  %3563 = extractvalue %dx.types.ResRet.f32 %3560, 2
  %3564 = extractvalue %dx.types.ResRet.f32 %3560, 3
  %3565 = fsub fast float %3561, %3551
  %3566 = fsub fast float %3562, %3552
  %3567 = fsub fast float %3563, %3553
  %3568 = fsub fast float %3564, %3554
  %3569 = fmul fast float %3565, %3547
  %3570 = fmul fast float %3566, %3547
  %3571 = fmul fast float %3567, %3547
  %3572 = fmul fast float %3568, %3547
  %3573 = fadd fast float %3569, %3551
  %3574 = fadd fast float %3570, %3552
  %3575 = fadd fast float %3571, %3553
  %3576 = fadd fast float %3572, %3554
  br label %3577

; <label>:3577                                    ; preds = %3556, %3539
  %3578 = phi float [ %3573, %3556 ], [ %3551, %3539 ]
  %3579 = phi float [ %3574, %3556 ], [ %3552, %3539 ]
  %3580 = phi float [ %3575, %3556 ], [ %3553, %3539 ]
  %3581 = phi float [ %3576, %3556 ], [ %3554, %3539 ]
  %3582 = fadd fast float %3578, -5.000000e-01
  %3583 = fadd fast float %3580, -5.000000e-01
  %3584 = fmul fast float %3582, 0xBFD5555560000000
  %3585 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3583, float %3584)  ; FMad(a,b,c)
  %3586 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3579, float 0.000000e+00)  ; FMad(a,b,c)
  %3587 = fadd fast float %3586, %3581
  %3588 = fmul fast float %3582, -7.500000e-01
  %3589 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3583, float %3588)  ; FMad(a,b,c)
  %3590 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3579, float 0.000000e+00)  ; FMad(a,b,c)
  %3591 = fadd fast float %3590, %3581
  %3592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3593 = extractvalue %dx.types.CBufRet.f32 %3592, 0
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.CBufRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.CBufRet.f32 %3594, 2
  %3598 = extractvalue %dx.types.CBufRet.f32 %3594, 3
  %3599 = fsub fast float %3595, %3585
  %3600 = fsub fast float %3596, %3587
  %3601 = fsub fast float %3597, %3589
  %3602 = fsub fast float %3598, %3591
  %3603 = fmul fast float %3599, %3593
  %3604 = fmul fast float %3600, %3593
  %3605 = fmul fast float %3601, %3593
  %3606 = fmul fast float %3602, %3593
  %3607 = fadd fast float %3603, %3585
  %3608 = fadd fast float %3604, %3587
  %3609 = fadd fast float %3605, %3589
  %3610 = fadd fast float %3606, %3591
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = and i32 %3612, 536870911
  %3614 = uitofp i32 %3613 to float
  %3615 = fmul fast float %3614, %3461
  %3616 = fmul fast float %3614, %3465
  %3617 = fptoui float %3615 to i32
  %3618 = fptoui float %3616 to i32
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = and i32 %3620, 31
  %3622 = lshr i32 %3617, %3621
  %3623 = lshr i32 %3618, %3621
  %3624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.i32 %3624, 0
  %3626 = and i32 %3625, 31
  %3627 = shl i32 1, %3626
  %3628 = call i32 @dx.op.binary.i32(i32 40, i32 %3627, i32 4)  ; UMin(a,b)
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = extractvalue %dx.types.ResRet.i32 %3629, 1
  %3632 = icmp eq i32 %3628, 0
  br i1 %3632, label %3674, label %3633

; <label>:3633                                    ; preds = %3577
  br label %3634

; <label>:3634                                    ; preds = %3662, %3633
  %3635 = phi i32 [ %3665, %3662 ], [ 0, %3633 ]
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = lshr i32 %3637, 16
  %3639 = and i32 %3638, 31
  %3640 = shl i32 %3623, %3639
  %3641 = add i32 %3640, %3622
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = and i32 %3643, 31
  %3645 = shl i32 %3641, %3644
  %3646 = add i32 %3645, %3635
  %3647 = shl i32 %3646, 2
  %3648 = add i32 %3647, 32
  %3649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.i32 %3649, 0
  %3651 = icmp slt i32 %3650, 0
  %3652 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3635
  %3653 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3635
  %3654 = bitcast float* %3652 to i32*
  %3655 = bitcast float* %3653 to i32*
  br i1 %3651, label %3656, label %3662

; <label>:3656                                    ; preds = %3634
  %3657 = and i32 %3650, 1073741823
  %3658 = add nuw nsw i32 %3657, 20
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.i32 %3659, 1
  br label %3662

; <label>:3662                                    ; preds = %3656, %3634
  %3663 = phi i32 [ %3660, %3656 ], [ %3630, %3634 ]
  %3664 = phi i32 [ %3661, %3656 ], [ %3631, %3634 ]
  store i32 %3663, i32* %3654, align 4
  store i32 %3664, i32* %3655, align 4
  %3665 = add nuw i32 %3635, 1
  %3666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3667 = extractvalue %dx.types.CBufRet.i32 %3666, 2
  %3668 = icmp eq i32 %3667, 0
  %3669 = icmp ugt i32 %3650, -1073741825
  %3670 = and i1 %3669, %3668
  %3671 = icmp ult i32 %3665, %3628
  %3672 = and i1 %3670, %3671
  br i1 %3672, label %3634, label %3673

; <label>:3673                                    ; preds = %3662
  br label %3674

; <label>:3674                                    ; preds = %3673, %3577
  %3675 = phi i32 [ 0, %3577 ], [ %3665, %3673 ]
  %3676 = extractvalue %dx.types.CBufRet.f32 %3439, 2
  %3677 = fptoui float %3676 to i32
  %3678 = icmp eq i32 %3677, 0
  br i1 %3678, label %3730, label %3679

; <label>:3679                                    ; preds = %3674
  br label %3680

; <label>:3680                                    ; preds = %3725, %3679
  %3681 = phi i32 [ %3726, %3725 ], [ %3675, %3679 ]
  %3682 = phi i32 [ %3727, %3725 ], [ 0, %3679 ]
  %3683 = lshr i32 %3682, 2
  %3684 = and i32 %3682, 3
  %3685 = add nuw nsw i32 %3683, 83
  %3686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %3685)  ; CBufferLoadLegacy(handle,regIndex)
  %3687 = extractvalue %dx.types.CBufRet.i32 %3686, 0
  %3688 = extractvalue %dx.types.CBufRet.i32 %3686, 1
  %3689 = extractvalue %dx.types.CBufRet.i32 %3686, 2
  %3690 = extractvalue %dx.types.CBufRet.i32 %3686, 3
  %3691 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %3687, i32* %3691, align 4
  %3692 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %3688, i32* %3692, align 4
  %3693 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %3689, i32* %3693, align 4
  %3694 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %3690, i32* %3694, align 4
  %3695 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %3684
  %3696 = load i32, i32* %3695, align 4, !tbaa !97, !noalias !101
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = lshr i32 %3698, 16
  %3700 = and i32 %3699, 31
  %3701 = shl i32 %3623, %3700
  %3702 = add i32 %3701, %3622
  %3703 = shl i32 %3702, 2
  %3704 = add i32 %3703, %3696
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = icmp eq i32 %3706, 0
  br i1 %3707, label %3725, label %3708

; <label>:3708                                    ; preds = %3680
  %3709 = icmp slt i32 %3706, 0
  %3710 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3681
  %3711 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3681
  %3712 = bitcast float* %3710 to i32*
  %3713 = bitcast float* %3711 to i32*
  br i1 %3709, label %3714, label %3721

; <label>:3714                                    ; preds = %3708
  %3715 = and i32 %3706, 1073741823
  %3716 = add i32 %3696, 20
  %3717 = add i32 %3716, %3715
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3717, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = extractvalue %dx.types.ResRet.i32 %3718, 1
  br label %3721

; <label>:3721                                    ; preds = %3714, %3708
  %3722 = phi i32 [ %3719, %3714 ], [ %3630, %3708 ]
  %3723 = phi i32 [ %3720, %3714 ], [ %3631, %3708 ]
  store i32 %3722, i32* %3712, align 4
  store i32 %3723, i32* %3713, align 4
  %3724 = add i32 %3681, 1
  br label %3725

; <label>:3725                                    ; preds = %3721, %3680
  %3726 = phi i32 [ %3681, %3680 ], [ %3724, %3721 ]
  %3727 = add nuw i32 %3682, 1
  %3728 = icmp eq i32 %3727, %3677
  br i1 %3728, label %3729, label %3680

; <label>:3729                                    ; preds = %3725
  br label %3730

; <label>:3730                                    ; preds = %3729, %3674
  %3731 = phi i32 [ %3675, %3674 ], [ %3726, %3729 ]
  %3732 = icmp eq i32 %3731, 1
  %3733 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 0
  %3734 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 0
  br i1 %3732, label %3735, label %3738

; <label>:3735                                    ; preds = %3730
  %3736 = load float, float* %3733, align 4
  %3737 = load float, float* %3734, align 4
  br label %3765

; <label>:3738                                    ; preds = %3730
  %3739 = load float, float* %3733, align 4
  %3740 = load float, float* %3734, align 4
  %3741 = fdiv fast float 1.000000e+00, %3740
  %3742 = fsub fast float %3739, %3741
  %3743 = icmp ugt i32 %3731, 1
  br i1 %3743, label %3744, label %3760

; <label>:3744                                    ; preds = %3738
  br label %3745

; <label>:3745                                    ; preds = %3745, %3744
  %3746 = phi float [ %3755, %3745 ], [ %3742, %3744 ]
  %3747 = phi float [ %3756, %3745 ], [ %3739, %3744 ]
  %3748 = phi i32 [ %3757, %3745 ], [ 1, %3744 ]
  %3749 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3748
  %3750 = load float, float* %3749, align 4
  %3751 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3748
  %3752 = load float, float* %3751, align 4
  %3753 = fdiv fast float 1.000000e+00, %3752
  %3754 = fsub fast float %3750, %3753
  %3755 = call float @dx.op.binary.f32(i32 36, float %3746, float %3754)  ; FMin(a,b)
  %3756 = call float @dx.op.binary.f32(i32 35, float %3747, float %3750)  ; FMax(a,b)
  %3757 = add nuw i32 %3748, 1
  %3758 = icmp eq i32 %3757, %3731
  br i1 %3758, label %3759, label %3745

; <label>:3759                                    ; preds = %3745
  br label %3760

; <label>:3760                                    ; preds = %3759, %3738
  %3761 = phi float [ %3742, %3738 ], [ %3755, %3759 ]
  %3762 = phi float [ %3739, %3738 ], [ %3756, %3759 ]
  %3763 = fsub fast float %3762, %3761
  %3764 = fdiv fast float 1.000000e+00, %3763
  br label %3765

; <label>:3765                                    ; preds = %3760, %3735
  %3766 = phi float [ %3736, %3735 ], [ %3762, %3760 ]
  %3767 = phi float [ %3737, %3735 ], [ %3764, %3760 ]
  %3768 = fadd fast float %3469, %3766
  %3769 = fmul fast float %3768, %3767
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3771 = fmul fast float %3770, 2.000000e+00
  %3772 = fsub fast float 1.000000e+00, %3771
  %3773 = fmul fast float %3607, %3607
  %3774 = fsub fast float %3608, %3773
  %3775 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3774)  ; FMax(a,b)
  %3776 = fdiv fast float 1.000000e+00, %3775
  %3777 = fmul fast float %3608, %3607
  %3778 = fsub fast float %3609, %3777
  %3779 = fsub fast float %3772, %3607
  %3780 = fmul fast float %3772, %3772
  %3781 = fsub fast float %3780, %3608
  %3782 = fmul fast float %3776, %3778
  %3783 = fmul fast float %3782, %3779
  %3784 = fsub fast float %3781, %3783
  %3785 = fmul fast float %3608, %3608
  %3786 = fsub fast float %3610, %3785
  %3787 = fmul fast float %3778, %3778
  %3788 = fmul fast float %3787, %3776
  %3789 = fsub fast float %3786, %3788
  %3790 = fdiv fast float %3784, %3789
  %3791 = fmul fast float %3790, %3778
  %3792 = fsub fast float %3779, %3791
  %3793 = fmul fast float %3792, %3776
  %3794 = fmul fast float %3793, %3607
  %3795 = fsub fast float 1.000000e+00, %3794
  %3796 = fmul fast float %3790, %3608
  %3797 = fsub fast float %3795, %3796
  %3798 = fmul fast float %3793, %3793
  %3799 = fmul fast float %3790, 4.000000e+00
  %3800 = fmul fast float %3799, %3797
  %3801 = fsub fast float %3798, %3800
  %3802 = call float @dx.op.unary.f32(i32 24, float %3801)  ; Sqrt(value)
  %3803 = fcmp fast oge float %3793, 0.000000e+00
  %3804 = fsub fast float -0.000000e+00, %3802
  %3805 = select i1 %3803, float %3804, float %3802
  %3806 = fsub fast float %3805, %3793
  %3807 = fdiv fast float %3806, %3790
  %3808 = fdiv fast float %3797, %3806
  %3809 = fmul fast float %3807, 5.000000e-01
  %3810 = fmul fast float %3808, 2.000000e+00
  %3811 = select i1 %3803, float %3809, float %3810
  %3812 = select i1 %3803, float %3810, float %3809
  %3813 = call float @dx.op.binary.f32(i32 35, float %3811, float %3812)  ; FMax(a,b)
  %3814 = call float @dx.op.binary.f32(i32 36, float %3811, float %3812)  ; FMin(a,b)
  %3815 = fcmp fast ogt float %3772, %3813
  %3816 = fsub fast float %3772, %3814
  %3817 = fsub fast float %3772, %3813
  %3818 = fsub fast float %3813, %3814
  %3819 = select i1 %3815, float %3817, float %3818
  %3820 = fmul float %3816, %3819
  %3821 = select i1 %3815, float %3814, float %3772
  %3822 = fcmp fast ogt float %3772, %3814
  %3823 = fmul fast float %3821, %3813
  %3824 = fadd fast float %3821, %3813
  %3825 = fmul fast float %3824, %3607
  %3826 = fadd fast float %3823, %3608
  %3827 = fsub fast float %3826, %3825
  %3828 = fdiv fast float %3827, %3820
  %3829 = select i1 %3822, float %3828, float 0.000000e+00
  %3830 = fsub fast float 1.000000e+00, %3829
  %3831 = select i1 %3815, float %3830, float %3829
  %3832 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3592, 3
  %3834 = fmul fast float %3833, %3832
  %3835 = fsub fast float 1.000000e+00, %3834
  br label %3836

; <label>:3836                                    ; preds = %3765, %3477, %3442, %3438, %3404
  %3837 = phi float [ 1.000000e+00, %3404 ], [ %3835, %3765 ], [ 1.000000e+00, %3442 ], [ 1.000000e+00, %3477 ], [ 1.000000e+00, %3438 ]
  %3838 = fcmp fast ogt float %3434, 0.000000e+00
  br i1 %3838, label %3839, label %3845, !dx.controlflow.hints !110

; <label>:3839                                    ; preds = %3836
  %3840 = fadd fast float %3347, %3321
  %3841 = call float @dx.op.binary.f32(i32 35, float %3840, float 0.000000e+00)  ; FMax(a,b)
  %3842 = fadd fast float %3841, 0x3F10000000000000
  %3843 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %47, float %3336, float %3337, float undef, float undef, i32 0, i32 0, i32 undef, float %3842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  br label %3845

; <label>:3845                                    ; preds = %3839, %3836
  %3846 = phi float [ %3844, %3839 ], [ 1.000000e+00, %3836 ]
  %3847 = fcmp fast ogt float %3432, 0.000000e+00
  br i1 %3847, label %3848, label %3854, !dx.controlflow.hints !111

; <label>:3848                                    ; preds = %3845
  %3849 = fadd fast float %3377, %3321
  %3850 = call float @dx.op.binary.f32(i32 35, float %3849, float 0.000000e+00)  ; FMax(a,b)
  %3851 = fadd fast float %3850, 0x3F10000000000000
  %3852 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %47, float %3328, float %3329, float undef, float undef, i32 0, i32 0, i32 undef, float %3851)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  br label %3854

; <label>:3854                                    ; preds = %3848, %3845
  %3855 = phi float [ %3853, %3848 ], [ 1.000000e+00, %3845 ]
  %3856 = fcmp fast ogt float %3431, 0.000000e+00
  br i1 %3856, label %3857, label %3864, !dx.controlflow.hints !112

; <label>:3857                                    ; preds = %3854
  %3858 = extractvalue %dx.types.CBufRet.f32 %3346, 0
  %3859 = fadd fast float %3858, %3321
  %3860 = call float @dx.op.binary.f32(i32 35, float %3859, float 0.000000e+00)  ; FMax(a,b)
  %3861 = fadd fast float %3860, 0x3F10000000000000
  %3862 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %3313, float %3317, float undef, float undef, i32 0, i32 0, i32 undef, float %3861)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  br label %3864

; <label>:3864                                    ; preds = %3857, %3854
  %3865 = phi float [ %3863, %3857 ], [ 1.000000e+00, %3854 ]
  %3866 = fsub fast float %3846, %3837
  %3867 = fmul fast float %3866, %3375
  %3868 = fadd fast float %3867, %3837
  %3869 = fsub fast float %3855, %3868
  %3870 = fmul fast float %3869, %3405
  %3871 = fadd fast float %3870, %3868
  %3872 = fsub fast float %3865, %3871
  %3873 = fmul fast float %3872, %3431
  %3874 = fadd fast float %3873, %3871
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 2
  %3877 = fcmp fast ogt float %3876, 0.000000e+00
  br i1 %3877, label %3878, label %3915, !dx.controlflow.hints !113

; <label>:3878                                    ; preds = %3864
  %3879 = fcmp fast ugt float %3876, 0.000000e+00
  br i1 %3879, label %3880, label %3912

; <label>:3880                                    ; preds = %3878
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3884 = extractvalue %dx.types.CBufRet.f32 %3881, 2
  %3885 = extractvalue %dx.types.CBufRet.f32 %3881, 3
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.CBufRet.f32 %3886, 1
  %3889 = extractvalue %dx.types.CBufRet.f32 %3886, 2
  %3890 = extractvalue %dx.types.CBufRet.f32 %3886, 3
  %3891 = extractvalue %dx.types.CBufRet.f32 %3875, 0
  %3892 = extractvalue %dx.types.CBufRet.f32 %3875, 1
  %3893 = extractvalue %dx.types.CBufRet.f32 %1917, 2
  %3894 = fadd fast float %1918, %3290
  %3895 = fadd fast float %1919, %3291
  %3896 = fadd fast float %3893, %3292
  %3897 = fmul fast float %3894, %3882
  %3898 = call float @dx.op.tertiary.f32(i32 46, float %3883, float %3895, float %3897)  ; FMad(a,b,c)
  %3899 = call float @dx.op.tertiary.f32(i32 46, float %3884, float %3896, float %3898)  ; FMad(a,b,c)
  %3900 = fadd fast float %3899, %3885
  %3901 = fmul fast float %3894, %3887
  %3902 = call float @dx.op.tertiary.f32(i32 46, float %3888, float %3895, float %3901)  ; FMad(a,b,c)
  %3903 = call float @dx.op.tertiary.f32(i32 46, float %3889, float %3896, float %3902)  ; FMad(a,b,c)
  %3904 = fadd fast float %3903, %3890
  %3905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %42, float %3900, float %3904, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 0
  %3907 = fmul fast float %3906, %3892
  %3908 = fadd fast float %3907, %3891
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = fmul fast float %3909, %3876
  %3911 = fsub fast float 1.000000e+00, %3910
  br label %3912

; <label>:3912                                    ; preds = %3880, %3878
  %3913 = phi float [ %3911, %3880 ], [ 1.000000e+00, %3878 ]
  %3914 = fmul fast float %3913, %3874
  br label %3915

; <label>:3915                                    ; preds = %3912, %3864, %3270
  %3916 = phi float [ 1.000000e+00, %3270 ], [ %3914, %3912 ], [ %3874, %3864 ]
  %3917 = call float @dx.op.binary.f32(i32 36, float %3916, float %3916)  ; FMin(a,b)
  %3918 = call float @dx.op.binary.f32(i32 36, float %3916, float %3917)  ; FMin(a,b)
  %3919 = fcmp fast ogt float %3918, 0.000000e+00
  br i1 %3919, label %3920, label %4078, !dx.controlflow.hints !114

; <label>:3920                                    ; preds = %3915
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.CBufRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.CBufRet.f32 %3921, 2
  %3925 = extractvalue %dx.types.CBufRet.f32 %3921, 3
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.CBufRet.f32 %3926, 1
  %3929 = extractvalue %dx.types.CBufRet.f32 %3926, 2
  %3930 = extractvalue %dx.types.CBufRet.f32 %3926, 3
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 0
  %3933 = extractvalue %dx.types.CBufRet.f32 %3931, 1
  %3934 = extractvalue %dx.types.CBufRet.f32 %3931, 2
  %3935 = extractvalue %dx.types.CBufRet.f32 %3931, 3
  %3936 = fmul fast float %3922, %3290
  %3937 = call float @dx.op.tertiary.f32(i32 46, float %3291, float %3923, float %3936)  ; FMad(a,b,c)
  %3938 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3924, float %3937)  ; FMad(a,b,c)
  %3939 = fadd fast float %3938, %3925
  %3940 = fmul fast float %3927, %3290
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3291, float %3928, float %3940)  ; FMad(a,b,c)
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3929, float %3941)  ; FMad(a,b,c)
  %3943 = fadd fast float %3942, %3930
  %3944 = fmul fast float %3932, %3290
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3291, float %3933, float %3944)  ; FMad(a,b,c)
  %3946 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3934, float %3945)  ; FMad(a,b,c)
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.CBufRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.CBufRet.f32 %3947, 3
  %3951 = fmul fast float %3950, %3939
  %3952 = fmul fast float %3950, %3943
  %3953 = fadd fast float %3951, %3948
  %3954 = fadd fast float %3952, %3949
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3958 = fsub fast float %3953, %3956
  %3959 = fsub fast float %3954, %3957
  %3960 = fcmp fast olt float %3958, 0.000000e+00
  %3961 = fcmp fast olt float %3959, 0.000000e+00
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.CBufRet.f32 %3962, 1
  %3965 = extractvalue %dx.types.CBufRet.f32 %3962, 2
  %3966 = extractvalue %dx.types.CBufRet.f32 %3962, 3
  %3967 = select i1 %3960, float %3963, float %3965
  %3968 = select i1 %3961, float %3964, float %3966
  %3969 = fmul fast float %3967, %3958
  %3970 = fmul fast float %3968, %3959
  %3971 = call float @dx.op.unary.f32(i32 6, float %3969)  ; FAbs(value)
  %3972 = call float @dx.op.unary.f32(i32 6, float %3970)  ; FAbs(value)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3285, 0
  %3974 = call float @dx.op.binary.f32(i32 35, float %3971, float %3972)  ; FMax(a,b)
  %3975 = fsub fast float %3973, %3974
  %3976 = call float @dx.op.unary.f32(i32 7, float %3975)  ; Saturate(value)
  %3977 = fcmp fast ogt float %3976, 0.000000e+00
  br i1 %3977, label %3978, label %4019, !dx.controlflow.hints !115

; <label>:3978                                    ; preds = %3920
  %3979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %3953, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3980 = extractvalue %dx.types.ResRet.f32 %3979, 1
  %3981 = fcmp fast ogt float %3980, 0.000000e+00
  br i1 %3981, label %3982, label %4014

; <label>:3982                                    ; preds = %3978
  %3983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %3953, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.ResRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.ResRet.f32 %3983, 2
  %3987 = extractvalue %dx.types.ResRet.f32 %3983, 3
  %3988 = fsub fast float 1.000000e+00, %3935
  %3989 = fsub fast float %3988, %3946
  %3990 = fmul fast float %3989, 0x400921FB60000000
  %3991 = fadd fast float %3990, 0x3FF921FB60000000
  %3992 = call float @dx.op.unary.f32(i32 13, float %3991)  ; Sin(value)
  %3993 = fadd fast float %3992, -1.000000e+00
  %3994 = fmul fast float %3993, 0x3FD45F3060000000
  %3995 = fmul fast float %3989, 0x401921FB60000000
  %3996 = fadd fast float %3995, 0x400921FB60000000
  %3997 = call float @dx.op.unary.f32(i32 13, float %3996)  ; Sin(value)
  %3998 = fadd fast float %3997, 0x3E7777A5C0000000
  %3999 = fmul fast float %3998, 0x3FC45F3060000000
  %4000 = fmul fast float %3989, 0x4022D97C80000000
  %4001 = fadd fast float %4000, 0x4012D97C80000000
  %4002 = call float @dx.op.unary.f32(i32 13, float %4001)  ; Sin(value)
  %4003 = fadd fast float %4002, 1.000000e+00
  %4004 = fmul fast float %4003, 0x3FBB2995E0000000
  %4005 = fmul fast float %3989, 0x402921FB60000000
  %4006 = fadd fast float %4005, 0x401921FB60000000
  %4007 = call float @dx.op.unary.f32(i32 13, float %4006)  ; Sin(value)
  %4008 = fadd fast float %4007, 0xBE8777A5C0000000
  %4009 = fmul fast float %4008, 0x3FB45F3060000000
  %4010 = call float @dx.op.dot4.f32(i32 56, float %3984, float %3985, float %3986, float %3987, float %3994, float %3999, float %4004, float %4009)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4011 = fmul fast float %4010, 0xBFF7154760000000
  %4012 = call float @dx.op.unary.f32(i32 21, float %4011)  ; Exp(value)
  %4013 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  br label %4014

; <label>:4014                                    ; preds = %3982, %3978
  %4015 = phi float [ %4013, %3982 ], [ 1.000000e+00, %3978 ]
  %4016 = fadd fast float %4015, -1.000000e+00
  %4017 = fmul fast float %4016, %3976
  %4018 = fadd fast float %4017, 1.000000e+00
  br label %4019

; <label>:4019                                    ; preds = %4014, %3920
  %4020 = phi float [ %4018, %4014 ], [ 1.000000e+00, %3920 ]
  %4021 = fmul fast float %4020, %3916
  %4022 = extractvalue %dx.types.CBufRet.f32 %1917, 2
  %4023 = fadd fast float %1918, %125
  %4024 = fadd fast float %1919, %126
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4027 = fsub fast float -0.000000e+00, %4023
  %4028 = fsub fast float -0.000000e+00, %4024
  %4029 = fsub fast float -0.000000e+00, %127
  %4030 = fsub fast float %4029, %4022
  %4031 = fadd fast float %4030, %4026
  %4032 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4027, float %4028, float %4031)  ; Dot3(ax,ay,az,bx,by,bz)
  %4033 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3271, float %3272, float %3273)  ; Dot3(ax,ay,az,bx,by,bz)
  %4034 = fdiv fast float 1.000000e+00, %4033
  %4035 = fmul fast float %4034, %4032
  %4036 = fmul fast float %3271, %4035
  %4037 = fmul fast float %3272, %4035
  %4038 = fadd fast float %4036, %4023
  %4039 = fadd fast float %4037, %4024
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.CBufRet.f32 %4040, 1
  %4043 = fsub fast float %4038, %4041
  %4044 = fsub fast float %4039, %4042
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 2
  %4047 = extractvalue %dx.types.CBufRet.f32 %4045, 3
  %4048 = fmul fast float %4043, %4046
  %4049 = fmul fast float %4044, %4047
  %4050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.i32 %4050, 3
  %4052 = icmp eq i32 %4051, 0
  br i1 %4052, label %4058, label %4053

; <label>:4053                                    ; preds = %4019
  %4054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %4048, float %4049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4055 = extractvalue %dx.types.ResRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.ResRet.f32 %4054, 1
  %4057 = extractvalue %dx.types.ResRet.f32 %4054, 2
  br label %4063

; <label>:4058                                    ; preds = %4019
  %4059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %45, float %4048, float %4049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = extractvalue %dx.types.ResRet.f32 %4059, 1
  %4062 = extractvalue %dx.types.ResRet.f32 %4059, 2
  br label %4063

; <label>:4063                                    ; preds = %4058, %4053
  %4064 = phi float [ %4055, %4053 ], [ %4060, %4058 ]
  %4065 = phi float [ %4056, %4053 ], [ %4061, %4058 ]
  %4066 = phi float [ %4057, %4053 ], [ %4062, %4058 ]
  %4067 = extractvalue %dx.types.CBufRet.f32 %4025, 2
  %4068 = fmul fast float %4067, %4064
  %4069 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4070 = fsub fast float %4035, %4069
  %4071 = fsub fast float %4070, %4068
  %4072 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4071)  ; FMax(a,b)
  %4073 = fmul fast float %4072, %4065
  %4074 = call float @dx.op.binary.f32(i32 36, float %4066, float %4073)  ; FMin(a,b)
  %4075 = fmul fast float %4074, 0xBFF7154760000000
  %4076 = call float @dx.op.unary.f32(i32 21, float %4075)  ; Exp(value)
  %4077 = fmul fast float %4021, %4076
  br label %4078

; <label>:4078                                    ; preds = %4063, %3915
  %4079 = phi float [ %4077, %4063 ], [ %3916, %3915 ]
  %4080 = call float @dx.op.binary.f32(i32 36, float %4079, float %4079)  ; FMin(a,b)
  %4081 = call float @dx.op.binary.f32(i32 36, float %4079, float %4080)  ; FMin(a,b)
  %4082 = fcmp fast ogt float %4081, 0.000000e+00
  br i1 %4082, label %4083, label %4258, !dx.controlflow.hints !116

; <label>:4083                                    ; preds = %4078
  %4084 = fmul fast float %4079, %3282
  %4085 = fmul fast float %4079, %3283
  %4086 = fmul fast float %4079, %3284
  %4087 = fsub fast float %3271, %174
  %4088 = fsub fast float %3272, %175
  %4089 = fsub fast float %3273, %176
  %4090 = call float @dx.op.dot3.f32(i32 55, float %4087, float %4088, float %4089, float %4087, float %4088, float %4089)  ; Dot3(ax,ay,az,bx,by,bz)
  %4091 = call float @dx.op.unary.f32(i32 25, float %4090)  ; Rsqrt(value)
  %4092 = fmul fast float %4091, %4087
  %4093 = fmul fast float %4091, %4088
  %4094 = fmul fast float %4091, %4089
  %4095 = call float @dx.op.dot3.f32(i32 55, float %3271, float %3272, float %3273, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %4096 = call float @dx.op.dot3.f32(i32 55, float %1725, float %1726, float %1727, float %4092, float %4093, float %4094)  ; Dot3(ax,ay,az,bx,by,bz)
  %4097 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4098 = fmul fast float %4097, %4097
  %4099 = fmul fast float %4098, %3266
  %4100 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4101 = fmul fast float %4100, %4097
  %4102 = call float @dx.op.dot3.f32(i32 55, float %1897, float %1898, float %1899, float %4092, float %4093, float %4094)  ; Dot3(ax,ay,az,bx,by,bz)
  %4103 = fmul fast float %4102, %4102
  %4104 = call float @dx.op.unary.f32(i32 6, float %4095)  ; FAbs(value)
  %4105 = fsub fast float 1.000000e+00, %1900
  %4106 = call float @dx.op.binary.f32(i32 35, float %4105, float 0x3F847AE140000000)  ; FMax(a,b)
  %4107 = fmul fast float %4106, %4106
  %4108 = fmul fast float %4107, %4107
  %4109 = fsub fast float 1.000000e+00, %4108
  %4110 = fmul fast float %1904, %1904
  %4111 = fmul fast float %4110, %4109
  %4112 = fadd fast float %4111, %4108
  %4113 = bitcast float %4112 to i32
  %4114 = ashr i32 %4113, 1
  %4115 = add nsw i32 %4114, 532487669
  %4116 = bitcast i32 %4115 to float
  %4117 = fadd fast float %4116, %1904
  %4118 = fmul fast float %4108, %4103
  %4119 = fsub fast float 1.000000e+00, %4103
  %4120 = fadd fast float %4119, %4118
  %4121 = fmul fast float %4104, %4104
  %4122 = fmul fast float %4121, %4109
  %4123 = fadd fast float %4122, %4108
  %4124 = bitcast float %4123 to i32
  %4125 = ashr i32 %4124, 1
  %4126 = add nsw i32 %4125, 532487669
  %4127 = bitcast i32 %4126 to float
  %4128 = fadd fast float %4127, %4104
  %4129 = fmul fast float %4120, %4120
  %4130 = fmul fast float %4129, %4117
  %4131 = fmul fast float %4130, %4128
  %4132 = fdiv fast float 0x3FF0A00000000000, %4131
  %4133 = fmul fast float %4132, %4108
  %4134 = call float @dx.op.unary.f32(i32 6, float %4096)  ; FAbs(value)
  %4135 = fsub fast float 1.000000e+00, %4134
  %4136 = bitcast float %4135 to i32
  %4137 = sitofp i32 %4136 to float
  %4138 = fmul fast float %4137, 5.000000e+00
  %4139 = fadd fast float %4138, 0xC1EFBF8940000000
  %4140 = fptosi float %4139 to i32
  %4141 = bitcast i32 %4140 to float
  %4142 = fsub fast float 1.000000e+00, %1894
  %4143 = fsub fast float 1.000000e+00, %1895
  %4144 = fsub fast float 1.000000e+00, %1902
  %4145 = fmul fast float %4141, %4142
  %4146 = fmul fast float %4141, %4143
  %4147 = fmul fast float %4141, %4144
  %4148 = fadd fast float %4145, %1894
  %4149 = fadd fast float %4146, %1895
  %4150 = fadd fast float %4147, %1902
  br i1 %3181, label %4151, label %4174

; <label>:4151                                    ; preds = %4083
  %4152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1548, float %4134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = fadd fast float %4153, -5.000000e-01
  %4157 = fadd fast float %4154, -5.000000e-01
  %4158 = fadd fast float %4155, -5.000000e-01
  %4159 = fmul fast float %1894, 4.000000e+00
  %4160 = fmul fast float %4159, %4142
  %4161 = fmul fast float %4160, %4156
  %4162 = fmul fast float %1895, 4.000000e+00
  %4163 = fmul fast float %4162, %4143
  %4164 = fmul fast float %4163, %4157
  %4165 = fmul fast float %1902, 4.000000e+00
  %4166 = fmul fast float %4165, %4144
  %4167 = fmul fast float %4166, %4158
  %4168 = fadd fast float %4161, %4148
  %4169 = fadd fast float %4164, %4149
  %4170 = fadd fast float %4167, %4150
  %4171 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4173 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  br label %4174

; <label>:4174                                    ; preds = %4151, %4083
  %4175 = phi float [ %4171, %4151 ], [ %4148, %4083 ]
  %4176 = phi float [ %4172, %4151 ], [ %4149, %4083 ]
  %4177 = phi float [ %4173, %4151 ], [ %4150, %4083 ]
  %4178 = fmul fast float %4095, 9.843750e-01
  %4179 = fadd fast float %4178, 7.812500e-03
  %4180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %45, float %4179, float %3171, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4181 = extractvalue %dx.types.ResRet.f32 %4180, 2
  %4182 = extractvalue %dx.types.ResRet.f32 %4180, 3
  %4183 = fmul fast float %4181, %1894
  %4184 = fmul fast float %4181, %1895
  %4185 = fmul fast float %4181, %1902
  %4186 = fadd fast float %4183, %4182
  %4187 = fadd fast float %4184, %4182
  %4188 = fadd fast float %4185, %4182
  br i1 %3181, label %4189, label %4212

; <label>:4189                                    ; preds = %4174
  %4190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1548, float %4095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4193 = extractvalue %dx.types.ResRet.f32 %4190, 2
  %4194 = fadd fast float %4191, -5.000000e-01
  %4195 = fadd fast float %4192, -5.000000e-01
  %4196 = fadd fast float %4193, -5.000000e-01
  %4197 = fmul fast float %1894, 4.000000e+00
  %4198 = fmul fast float %4197, %4142
  %4199 = fmul fast float %4198, %4194
  %4200 = fmul fast float %1895, 4.000000e+00
  %4201 = fmul fast float %4200, %4143
  %4202 = fmul fast float %4201, %4195
  %4203 = fmul fast float %1902, 4.000000e+00
  %4204 = fmul fast float %4203, %4144
  %4205 = fmul fast float %4204, %4196
  %4206 = fadd fast float %4199, %4186
  %4207 = fadd fast float %4202, %4187
  %4208 = fadd fast float %4205, %4188
  %4209 = call float @dx.op.unary.f32(i32 7, float %4206)  ; Saturate(value)
  %4210 = call float @dx.op.unary.f32(i32 7, float %4207)  ; Saturate(value)
  %4211 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  br label %4212

; <label>:4212                                    ; preds = %4189, %4174
  %4213 = phi float [ %4209, %4189 ], [ %4186, %4174 ]
  %4214 = phi float [ %4210, %4189 ], [ %4187, %4174 ]
  %4215 = phi float [ %4211, %4189 ], [ %4188, %4174 ]
  %4216 = call float @dx.op.binary.f32(i32 35, float %4214, float %4215)  ; FMax(a,b)
  %4217 = call float @dx.op.binary.f32(i32 35, float %4213, float %4216)  ; FMax(a,b)
  %4218 = fsub fast float 1.000000e+00, %4217
  %4219 = fmul fast float %4175, %4133
  %4220 = fmul fast float %4176, %4133
  %4221 = fmul fast float %4177, %4133
  %4222 = fsub fast float 1.000000e+00, %4096
  %4223 = bitcast float %4222 to i32
  %4224 = sitofp i32 %4223 to float
  %4225 = fmul fast float %4224, 5.000000e+00
  %4226 = fadd fast float %4225, 0xC1EFBF8940000000
  %4227 = fptosi float %4226 to i32
  %4228 = bitcast i32 %4227 to float
  %4229 = fmul fast float %4228, %1547
  %4230 = fmul fast float %4218, %4229
  %4231 = fmul fast float %4230, %3231
  %4232 = fmul fast float %4230, %3232
  %4233 = fmul fast float %4230, %3233
  %4234 = fadd fast float %4231, %4219
  %4235 = fadd fast float %4232, %4220
  %4236 = fadd fast float %4233, %4221
  %4237 = fmul fast float %4101, %4084
  %4238 = fmul fast float %4237, %4218
  %4239 = fmul fast float %4101, %4085
  %4240 = fmul fast float %4239, %4218
  %4241 = fmul fast float %4101, %4086
  %4242 = fmul fast float %4241, %4218
  %4243 = fmul fast float %4237, %4234
  %4244 = fmul fast float %4239, %4235
  %4245 = fmul fast float %4241, %4236
  %4246 = fadd fast float %4238, %3215
  %4247 = fmul fast float %4246, %1602
  %4248 = fadd fast float %4240, %3216
  %4249 = fmul fast float %4248, %1602
  %4250 = fadd fast float %4242, %3217
  %4251 = fmul fast float %4250, %1602
  %4252 = fadd fast float %4243, %3258
  %4253 = fmul fast float %4252, %1602
  %4254 = fadd fast float %4244, %3261
  %4255 = fmul fast float %4254, %1602
  %4256 = fadd fast float %4245, %3264
  %4257 = fmul fast float %4256, %1602
  br label %4258

; <label>:4258                                    ; preds = %4212, %4078, %3208
  %4259 = phi float [ %3259, %3208 ], [ %3259, %4078 ], [ %4253, %4212 ]
  %4260 = phi float [ %3262, %3208 ], [ %3262, %4078 ], [ %4255, %4212 ]
  %4261 = phi float [ %3265, %3208 ], [ %3265, %4078 ], [ %4257, %4212 ]
  %4262 = phi float [ %3254, %3208 ], [ %3254, %4078 ], [ %4247, %4212 ]
  %4263 = phi float [ %3255, %3208 ], [ %3255, %4078 ], [ %4249, %4212 ]
  %4264 = phi float [ %3256, %3208 ], [ %3256, %4078 ], [ %4251, %4212 ]
  %4265 = fmul fast float %1602, %1602
  %4266 = fsub fast float 1.000000e+00, %4265
  %4267 = call float @dx.op.dot3.f32(i32 55, float %4266, float %4266, float %4266, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4268 = fsub fast float 1.000000e+00, %4267
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4271 = fmul fast float %4270, %3237
  %4272 = fmul fast float %1899, 2.000000e+00
  %4273 = fmul fast float %4272, %1905
  %4274 = fsub fast float %176, %4273
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = fsub fast float 1.000000e+00, %4275
  %4277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4277, 3
  %4279 = fmul fast float %4278, %4276
  %4280 = fsub fast float 1.000000e+00, %1546
  %4281 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4282 = fadd fast float %4264, %1545
  %4283 = fmul fast float %4282, %1546
  %4284 = fmul fast float %4279, %4281
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 3
  %4287 = fmul fast float %4262, %1891
  %4288 = fmul fast float %4263, %1892
  %4289 = fmul fast float %4264, %1893
  %4290 = fcmp fast ogt float %69, %208
  %4291 = and i1 %4290, %1641
  %4292 = or i1 %1720, %4291
  %4293 = icmp eq i32 %1640, 2
  %4294 = fcmp fast ole float %69, %208
  %4295 = and i1 %4294, %4293
  %4296 = or i1 %4295, %4292
  br i1 %4291, label %4297, label %4556

; <label>:4297                                    ; preds = %4258
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 2
  %4300 = extractvalue %dx.types.CBufRet.f32 %4298, 3
  %4301 = fmul fast float %4299, %78
  %4302 = fmul fast float %4300, %79
  %4303 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4304 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4305 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %4303, float %4304, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4305, 2
  %4309 = extractvalue %dx.types.ResRet.f32 %4305, 3
  %4310 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %4303, float %4304, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 0
  %4312 = extractvalue %dx.types.ResRet.f32 %4310, 1
  %4313 = extractvalue %dx.types.ResRet.f32 %4310, 2
  %4314 = extractvalue %dx.types.ResRet.f32 %4310, 3
  %4315 = call float @dx.op.binary.f32(i32 35, float %4307, float %4308)  ; FMax(a,b)
  %4316 = call float @dx.op.binary.f32(i32 35, float %4306, float %4315)  ; FMax(a,b)
  %4317 = call float @dx.op.binary.f32(i32 35, float %4316, float %4309)  ; FMax(a,b)
  %4318 = call float @dx.op.binary.f32(i32 36, float %4312, float %4313)  ; FMin(a,b)
  %4319 = call float @dx.op.binary.f32(i32 36, float %4311, float %4318)  ; FMin(a,b)
  %4320 = call float @dx.op.binary.f32(i32 36, float %4319, float %4314)  ; FMin(a,b)
  %4321 = fmul fast float %4317, 2.550000e+02
  %4322 = fadd fast float %4321, 0x3F70101020000000
  %4323 = fptoui float %4322 to i32
  %4324 = fmul fast float %4320, 2.550000e+02
  %4325 = fadd fast float %4324, 0x3F70101020000000
  %4326 = fptoui float %4325 to i32
  %4327 = icmp ult i32 %4323, %4326
  br i1 %4327, label %4328, label %4496

; <label>:4328                                    ; preds = %4297
  %4329 = fcmp fast ogt float %68, 9.843750e-01
  %4330 = fadd fast float %69, -4.000000e+00
  %4331 = select i1 %4329, float -4.000000e+00, float %4330
  %4332 = call float @dx.op.binary.f32(i32 35, float %4331, float 0.000000e+00)  ; FMax(a,b)
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 0
  %4335 = fadd fast float %4334, %4332
  %4336 = extractvalue %dx.types.CBufRet.f32 %4333, 2
  %4337 = fmul fast float %4335, %4336
  %4338 = call float @dx.op.unary.f32(i32 23, float %4337)  ; Log(value)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4340 = fmul fast float %4339, %4338
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 2
  %4343 = fmul fast float %4340, %4342
  %4344 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4345 = uitofp i32 %4323 to float
  %4346 = uitofp i32 %4326 to float
  %4347 = fadd fast float %4345, 5.000000e-01
  %4348 = fadd fast float %4346, 5.000000e-01
  %4349 = fmul fast float %4342, %4347
  %4350 = fmul fast float %4342, %4348
  %4351 = fadd fast float %4349, 0x3F0FFB4800000000
  %4352 = fadd fast float %4350, 0xBF0FFB4800000000
  %4353 = call float @dx.op.binary.f32(i32 35, float %4344, float %4351)  ; FMax(a,b)
  %4354 = call float @dx.op.binary.f32(i32 36, float %4353, float %4352)  ; FMin(a,b)
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 1
  %4357 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4358 = extractvalue %dx.types.CBufRet.f32 %4355, 0
  %4359 = fmul fast float %4356, %4354
  %4360 = fadd fast float %4358, %4359
  %4361 = fadd fast float %4358, %4357
  %4362 = fsub fast float %4356, %4357
  %4363 = fadd fast float %4362, %4358
  %4364 = call float @dx.op.binary.f32(i32 35, float %4360, float %4361)  ; FMax(a,b)
  %4365 = call float @dx.op.binary.f32(i32 36, float %4364, float %4363)  ; FMin(a,b)
  %4366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %4303, float %4304, float %4365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.ResRet.f32 %4366, 1
  %4369 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.i32 %4370, 0
  %4372 = extractvalue %dx.types.CBufRet.i32 %4370, 1
  %4373 = uitofp i32 %4371 to float
  %4374 = uitofp i32 %4372 to float
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4378 = fmul fast float %4373, %4303
  %4379 = fmul fast float %4374, %4304
  %4380 = fadd fast float %4378, -5.000000e-01
  %4381 = fadd fast float %4379, -5.000000e-01
  %4382 = call float @dx.op.unary.f32(i32 22, float %4380)  ; Frc(value)
  %4383 = call float @dx.op.unary.f32(i32 22, float %4381)  ; Frc(value)
  %4384 = fmul fast float %4382, %4382
  %4385 = fmul fast float %4384, %4382
  %4386 = fsub fast float 3.000000e+00, %4382
  %4387 = fmul fast float %4384, %4386
  %4388 = fmul fast float %4382, 3.000000e+00
  %4389 = fmul fast float %4385, 3.000000e+00
  %4390 = fmul fast float %4384, 6.000000e+00
  %4391 = fsub fast float %4389, %4390
  %4392 = fadd fast float %4391, 4.000000e+00
  %4393 = fmul fast float %4392, 0x3FC5555560000000
  %4394 = fmul fast float %4385, -3.000000e+00
  %4395 = fadd fast float %4384, %4382
  %4396 = fmul fast float %4395, 3.000000e+00
  %4397 = fadd fast float %4394, 1.000000e+00
  %4398 = fadd fast float %4397, %4396
  %4399 = fmul fast float %4385, 0x3FC5555560000000
  %4400 = fmul fast float %4383, %4383
  %4401 = fmul fast float %4400, %4383
  %4402 = fsub fast float 3.000000e+00, %4383
  %4403 = fmul fast float %4400, %4402
  %4404 = fmul fast float %4383, 3.000000e+00
  %4405 = fmul fast float %4401, 3.000000e+00
  %4406 = fmul fast float %4400, 6.000000e+00
  %4407 = fsub fast float %4405, %4406
  %4408 = fadd fast float %4407, 4.000000e+00
  %4409 = fmul fast float %4408, 0x3FC5555560000000
  %4410 = fmul fast float %4401, -3.000000e+00
  %4411 = fadd fast float %4400, %4383
  %4412 = fmul fast float %4411, 3.000000e+00
  %4413 = fadd fast float %4410, 1.000000e+00
  %4414 = fadd fast float %4413, %4412
  %4415 = fmul fast float %4401, 0x3FC5555560000000
  %4416 = fadd fast float %4382, 1.000000e+00
  %4417 = fsub fast float 1.000000e+00, %4388
  %4418 = fadd fast float %4417, %4387
  %4419 = fadd fast float %4418, %4392
  %4420 = fmul fast float %4419, 0x3FC5555560000000
  %4421 = fdiv fast float %4393, %4420
  %4422 = fsub fast float %4416, %4421
  %4423 = fsub fast float 1.000000e+00, %4382
  %4424 = fadd fast float %4398, %4385
  %4425 = fmul fast float %4424, 0x3FC5555560000000
  %4426 = fdiv fast float %4399, %4425
  %4427 = fadd fast float %4423, %4426
  %4428 = fadd fast float %4383, 1.000000e+00
  %4429 = fsub fast float 1.000000e+00, %4404
  %4430 = fadd fast float %4429, %4403
  %4431 = fadd fast float %4430, %4408
  %4432 = fmul fast float %4431, 0x3FC5555560000000
  %4433 = fdiv fast float %4409, %4432
  %4434 = fsub fast float %4428, %4433
  %4435 = fsub fast float 1.000000e+00, %4383
  %4436 = fadd fast float %4414, %4401
  %4437 = fmul fast float %4436, 0x3FC5555560000000
  %4438 = fdiv fast float %4415, %4437
  %4439 = fadd fast float %4438, %4435
  %4440 = fmul fast float %4422, %4376
  %4441 = fsub fast float %4303, %4440
  %4442 = fmul fast float %4427, %4376
  %4443 = fadd fast float %4442, %4303
  %4444 = fmul fast float %4439, %4377
  %4445 = fadd fast float %4444, %4304
  %4446 = fmul fast float %4434, %4377
  %4447 = fsub fast float %4304, %4446
  %4448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4441, float %4447, float %4365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4449 = extractvalue %dx.types.ResRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.ResRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.ResRet.f32 %4448, 2
  %4452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4443, float %4447, float %4365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4453 = extractvalue %dx.types.ResRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.ResRet.f32 %4452, 1
  %4455 = extractvalue %dx.types.ResRet.f32 %4452, 2
  %4456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4441, float %4445, float %4365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4457 = extractvalue %dx.types.ResRet.f32 %4456, 0
  %4458 = extractvalue %dx.types.ResRet.f32 %4456, 1
  %4459 = extractvalue %dx.types.ResRet.f32 %4456, 2
  %4460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %4443, float %4445, float %4365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4461 = extractvalue %dx.types.ResRet.f32 %4460, 0
  %4462 = extractvalue %dx.types.ResRet.f32 %4460, 1
  %4463 = extractvalue %dx.types.ResRet.f32 %4460, 2
  %4464 = fsub fast float %4457, %4449
  %4465 = fsub fast float %4458, %4450
  %4466 = fsub fast float %4459, %4451
  %4467 = fmul fast float %4464, %4437
  %4468 = fmul fast float %4465, %4437
  %4469 = fmul fast float %4466, %4437
  %4470 = fadd fast float %4467, %4449
  %4471 = fadd fast float %4468, %4450
  %4472 = fadd fast float %4469, %4451
  %4473 = fsub fast float %4461, %4453
  %4474 = fsub fast float %4462, %4454
  %4475 = fsub fast float %4463, %4455
  %4476 = fmul fast float %4473, %4437
  %4477 = fmul fast float %4474, %4437
  %4478 = fmul fast float %4475, %4437
  %4479 = fsub fast float %4453, %4470
  %4480 = fadd fast float %4479, %4476
  %4481 = fsub fast float %4454, %4471
  %4482 = fadd fast float %4481, %4477
  %4483 = fsub fast float %4455, %4472
  %4484 = fadd fast float %4483, %4478
  %4485 = fmul fast float %4480, %4425
  %4486 = fmul fast float %4482, %4425
  %4487 = fmul fast float %4484, %4425
  %4488 = fadd fast float %4485, %4470
  %4489 = fadd fast float %4486, %4471
  %4490 = fadd fast float %4487, %4472
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 1
  %4493 = fmul fast float %4488, %4492
  %4494 = fmul fast float %4489, %4492
  %4495 = fmul fast float %4490, %4492
  br label %4496

; <label>:4496                                    ; preds = %4328, %4297
  %4497 = phi float [ %4367, %4328 ], [ 1.000000e+00, %4297 ]
  %4498 = phi float [ %4368, %4328 ], [ 1.000000e+00, %4297 ]
  %4499 = phi float [ %4369, %4328 ], [ 1.000000e+00, %4297 ]
  %4500 = phi float [ %4493, %4328 ], [ 0.000000e+00, %4297 ]
  %4501 = phi float [ %4494, %4328 ], [ 0.000000e+00, %4297 ]
  %4502 = phi float [ %4495, %4328 ], [ 0.000000e+00, %4297 ]
  %4503 = fmul fast float %4500, %4268
  %4504 = fmul fast float %4501, %4268
  %4505 = fmul fast float %4502, %4268
  %4506 = call float @dx.op.dot3.f32(i32 55, float %4497, float %4498, float %4499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4507 = call float @dx.op.dot3.f32(i32 55, float %4503, float %4504, float %4505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4508 = select i1 %247, float %4506, float %4497
  %4509 = select i1 %247, float %4506, float %4498
  %4510 = select i1 %247, float 1.000000e+00, float %4499
  %4511 = select i1 %247, float %4507, float %4503
  %4512 = select i1 %247, float 0.000000e+00, float %4504
  %4513 = select i1 %247, float 0.000000e+00, float %4505
  %4514 = fmul fast float %4508, %4287
  %4515 = fmul fast float %4509, %4288
  %4516 = fmul fast float %4510, %4289
  %4517 = fadd fast float %4514, %4511
  %4518 = fadd fast float %4515, %4512
  %4519 = fadd fast float %4513, %4516
  %4520 = fmul fast float %4508, %4259
  %4521 = fmul fast float %4509, %4260
  %4522 = fmul fast float %4510, %4261
  %4523 = fmul fast float %78, 2.000000e+00
  %4524 = fmul fast float %4523, %4299
  %4525 = fmul fast float %79, 2.000000e+00
  %4526 = fmul fast float %4525, %4300
  %4527 = fsub fast float 1.000000e+00, %4524
  %4528 = fsub fast float 1.000000e+00, %4526
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.CBufRet.f32 %4529, 1
  %4532 = extractvalue %dx.types.CBufRet.f32 %4529, 2
  %4533 = fmul fast float %4527, %4530
  %4534 = fmul fast float %4527, %4531
  %4535 = fmul fast float %4527, %4532
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = extractvalue %dx.types.CBufRet.f32 %4536, 1
  %4539 = extractvalue %dx.types.CBufRet.f32 %4536, 2
  %4540 = fmul fast float %4528, %4537
  %4541 = fmul fast float %4528, %4538
  %4542 = fmul fast float %4528, %4539
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4547 = fadd fast float %4540, %4544
  %4548 = fadd fast float %4547, %4533
  %4549 = fadd fast float %4541, %4545
  %4550 = fadd fast float %4549, %4534
  %4551 = fadd fast float %4542, %4546
  %4552 = fadd fast float %4551, %4535
  %4553 = fmul fast float %4548, %208
  %4554 = fmul fast float %4550, %208
  %4555 = fmul fast float %4552, %208
  br label %4556

; <label>:4556                                    ; preds = %4496, %4258
  %4557 = phi float [ %4553, %4496 ], [ %125, %4258 ]
  %4558 = phi float [ %4554, %4496 ], [ %126, %4258 ]
  %4559 = phi float [ %4555, %4496 ], [ %127, %4258 ]
  %4560 = phi float [ %208, %4496 ], [ %69, %4258 ]
  %4561 = phi float [ %4517, %4496 ], [ %4287, %4258 ]
  %4562 = phi float [ %4518, %4496 ], [ %4288, %4258 ]
  %4563 = phi float [ %4519, %4496 ], [ %4289, %4258 ]
  %4564 = phi float [ %4520, %4496 ], [ %4259, %4258 ]
  %4565 = phi float [ %4521, %4496 ], [ %4260, %4258 ]
  %4566 = phi float [ %4522, %4496 ], [ %4261, %4258 ]
  %4567 = phi float [ %4497, %4496 ], [ 1.000000e+00, %4258 ]
  br i1 %4296, label %5722, label %4568

; <label>:4568                                    ; preds = %4556
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.CBufRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.CBufRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.CBufRet.f32 %4569, 3
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.CBufRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.CBufRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.CBufRet.f32 %4574, 3
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.CBufRet.f32 %4579, 2
  %4583 = extractvalue %dx.types.CBufRet.f32 %4579, 3
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.CBufRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.CBufRet.f32 %4584, 2
  %4588 = extractvalue %dx.types.CBufRet.f32 %4584, 3
  %4589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4590 = extractvalue %dx.types.CBufRet.f32 %4589, 3
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 3
  %4593 = extractvalue %dx.types.CBufRet.f32 %4591, 0
  %4594 = extractvalue %dx.types.CBufRet.f32 %4591, 1
  %4595 = extractvalue %dx.types.CBufRet.f32 %4591, 2
  %4596 = fcmp fast olt float %4595, -5.000000e-01
  %4597 = call float @dx.op.dot3.f32(i32 55, float %4557, float %4558, float %4559, float %4557, float %4558, float %4559)  ; Dot3(ax,ay,az,bx,by,bz)
  %4598 = call float @dx.op.unary.f32(i32 25, float %4597)  ; Rsqrt(value)
  %4599 = fmul fast float %4598, %4597
  %4600 = fmul fast float %4598, %4557
  %4601 = fmul fast float %4598, %4558
  %4602 = fmul fast float %4598, %4559
  %4603 = fadd fast float %4599, %4573
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4600, float %4601, float %4602, float %4570, float %4571, float %4572)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.i32 %4605, 1
  %4607 = and i32 %4606, 1
  %4608 = icmp ne i32 %4607, 0
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 2
  %4611 = fcmp fast ogt float %4610, 0.000000e+00
  %4612 = and i1 %4608, %4611
  br i1 %4612, label %4613, label %5019, !dx.controlflow.hints !117

; <label>:4613                                    ; preds = %4568
  %4614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.f32 %4614, 3
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 2
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4620 = fsub fast float %4617, %4619
  %4621 = and i32 %4606, 2
  %4622 = extractvalue %dx.types.CBufRet.i32 %4605, 0
  %4623 = call i32 @dx.op.binary.i32(i32 40, i32 %4622, i32 3)  ; UMin(a,b)
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.CBufRet.f32 %4624, 1
  %4627 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4628 = extractvalue %dx.types.CBufRet.f32 %4618, 1
  %4629 = fsub fast float %4625, %4627
  %4630 = fsub fast float %4626, %4628
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4633 = fcmp fast ogt float %4632, 0.000000e+00
  %4634 = fsub fast float -0.000000e+00, %4629
  %4635 = fsub fast float -0.000000e+00, %4630
  %4636 = call float @dx.op.dot2.f32(i32 54, float %4600, float %4601, float %4600, float %4601)  ; Dot2(ax,ay,bx,by)
  %4637 = call float @dx.op.dot2.f32(i32 54, float %4600, float %4601, float %4634, float %4635)  ; Dot2(ax,ay,bx,by)
  %4638 = fmul fast float %4637, 2.000000e+00
  %4639 = call float @dx.op.dot2.f32(i32 54, float %4634, float %4635, float %4634, float %4635)  ; Dot2(ax,ay,bx,by)
  %4640 = fmul fast float %4632, %4632
  %4641 = fsub fast float %4639, %4640
  %4642 = fmul fast float %4638, %4638
  %4643 = fmul fast float %4636, 4.000000e+00
  %4644 = fmul fast float %4643, %4641
  %4645 = fsub fast float %4642, %4644
  %4646 = fcmp fast ogt float %4645, 0.000000e+00
  br i1 %4646, label %4647, label %4662

; <label>:4647                                    ; preds = %4613
  %4648 = fcmp fast ogt float %4638, 0.000000e+00
  %4649 = call float @dx.op.unary.f32(i32 24, float %4645)  ; Sqrt(value)
  %4650 = fsub fast float -0.000000e+00, %4649
  %4651 = select i1 %4648, float %4649, float %4650
  %4652 = fadd fast float %4651, %4638
  %4653 = fmul float %4652, -5.000000e-01
  %4654 = fdiv fast float %4653, %4636
  %4655 = call float @dx.op.binary.f32(i32 35, float %4654, float 0.000000e+00)  ; FMax(a,b)
  %4656 = call float @dx.op.binary.f32(i32 36, float %4599, float %4655)  ; FMin(a,b)
  %4657 = fdiv fast float %4641, %4653
  %4658 = call float @dx.op.binary.f32(i32 35, float %4657, float 0.000000e+00)  ; FMax(a,b)
  %4659 = call float @dx.op.binary.f32(i32 36, float %4599, float %4658)  ; FMin(a,b)
  %4660 = call float @dx.op.binary.f32(i32 36, float %4656, float %4659)  ; FMin(a,b)
  %4661 = call float @dx.op.binary.f32(i32 35, float %4656, float %4659)  ; FMax(a,b)
  br label %4662

; <label>:4662                                    ; preds = %4647, %4613
  %4663 = phi float [ %4661, %4647 ], [ -1.000000e+00, %4613 ]
  %4664 = phi float [ %4660, %4647 ], [ -1.000000e+00, %4613 ]
  %4665 = phi i1 [ true, %4647 ], [ false, %4613 ]
  %4666 = and i1 %4633, %4665
  br i1 %4666, label %4667, label %4669

; <label>:4667                                    ; preds = %4662
  %4668 = fcmp fast oeq float %4664, %4663
  br i1 %4668, label %4972, label %4670

; <label>:4669                                    ; preds = %4662
  br i1 %4633, label %4972, label %4670

; <label>:4670                                    ; preds = %4669, %4667
  %4671 = phi float [ %4599, %4669 ], [ %4663, %4667 ]
  %4672 = phi float [ 0.000000e+00, %4669 ], [ %4664, %4667 ]
  %4673 = icmp ne i32 %4621, 0
  %4674 = fmul fast float %4671, %4602
  %4675 = fadd fast float %4674, %4615
  %4676 = fmul fast float %4675, %4671
  %4677 = select i1 %4673, float 0.000000e+00, float %4676
  %4678 = fcmp fast oeq float %4602, 0.000000e+00
  %4679 = fdiv fast float %4620, %4602
  %4680 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4679)  ; FMax(a,b)
  %4681 = select i1 %4678, float %4671, float %4680
  %4682 = call float @dx.op.binary.f32(i32 36, float %4671, float %4681)  ; FMin(a,b)
  %4683 = fcmp fast ogt float %4602, 0.000000e+00
  %4684 = fcmp fast olt float %4620, 0.000000e+00
  br i1 %4683, label %4685, label %4742

; <label>:4685                                    ; preds = %4670
  %4686 = icmp eq i32 %4621, 0
  br i1 %4684, label %4687, label %4731

; <label>:4687                                    ; preds = %4685
  %4688 = select i1 %4686, float %4671, float 0.000000e+00
  %4689 = fsub fast float -0.000000e+00, %4688
  %4690 = call float @dx.op.unary.f32(i32 6, float %4689)  ; FAbs(value)
  %4691 = fmul fast float %4688, %4602
  %4692 = fadd fast float %4691, %4615
  %4693 = fmul fast float %4690, %4692
  %4694 = fsub fast float %4677, %4693
  %4695 = fsub fast float %4671, %4690
  %4696 = select i1 %4686, float %4695, float 0.000000e+00
  %4697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4698 = extractvalue %dx.types.CBufRet.f32 %4697, 0
  %4699 = extractvalue %dx.types.CBufRet.f32 %4697, 1
  %4700 = extractvalue %dx.types.CBufRet.f32 %4697, 2
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.CBufRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.CBufRet.f32 %4701, 2
  %4705 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.f32 %4706, 3
  %4708 = call float @dx.op.binary.f32(i32 36, float %4694, float %4707)  ; FMin(a,b)
  %4709 = fmul fast float %4705, %4696
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4711 = fsub fast float %4702, %4698
  %4712 = fsub fast float %4703, %4699
  %4713 = fsub fast float %4704, %4700
  %4714 = fmul fast float %4710, %4711
  %4715 = fmul fast float %4710, %4712
  %4716 = fmul fast float %4710, %4713
  %4717 = fadd fast float %4714, %4698
  %4718 = fadd fast float %4715, %4699
  %4719 = fadd fast float %4716, %4700
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 0
  %4722 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4723 = fadd fast float %4722, %4721
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4720, 2
  %4726 = extractvalue %dx.types.CBufRet.f32 %4720, 3
  %4727 = fadd fast float %4726, %4725
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4724, %4708
  %4730 = fmul fast float %4729, %4728
  br label %4972

; <label>:4731                                    ; preds = %4685
  br i1 %4686, label %4732, label %4753

; <label>:4732                                    ; preds = %4731
  %4733 = call float @dx.op.binary.f32(i32 36, float %4682, float %4672)  ; FMin(a,b)
  %4734 = fsub fast float %4682, %4733
  %4735 = fsub fast float %4734, %4671
  %4736 = call float @dx.op.unary.f32(i32 6, float %4735)  ; FAbs(value)
  %4737 = fadd fast float %4734, %4671
  %4738 = fmul fast float %4737, %4602
  %4739 = fadd fast float %4738, %4615
  %4740 = fmul fast float %4739, %4736
  %4741 = fsub fast float %4677, %4740
  br label %4753

; <label>:4742                                    ; preds = %4670
  br i1 %4684, label %4743, label %4753

; <label>:4743                                    ; preds = %4742
  %4744 = call float @dx.op.binary.f32(i32 35, float %4672, float %4682)  ; FMax(a,b)
  %4745 = icmp eq i32 %4621, 0
  %4746 = select i1 %4745, float %4682, float 0.000000e+00
  %4747 = fsub fast float -0.000000e+00, %4746
  %4748 = call float @dx.op.unary.f32(i32 6, float %4747)  ; FAbs(value)
  %4749 = fmul fast float %4746, %4602
  %4750 = fadd fast float %4749, %4615
  %4751 = fmul fast float %4748, %4750
  %4752 = fsub fast float %4677, %4751
  br label %4753

; <label>:4753                                    ; preds = %4743, %4742, %4732, %4731
  %4754 = phi float [ %4672, %4731 ], [ %4672, %4732 ], [ %4744, %4743 ], [ %4672, %4742 ]
  %4755 = phi float [ 0.000000e+00, %4731 ], [ %4736, %4732 ], [ %4748, %4743 ], [ 0.000000e+00, %4742 ]
  %4756 = phi float [ %4677, %4731 ], [ %4741, %4732 ], [ %4752, %4743 ], [ %4677, %4742 ]
  %4757 = phi float [ %4682, %4731 ], [ %4682, %4732 ], [ %4671, %4743 ], [ %4671, %4742 ]
  %4758 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 0
  store float -1.000000e+00, float* %4758, align 4, !tbaa !118, !noalias !120
  %4759 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 1
  store float -1.000000e+00, float* %4759, align 4, !tbaa !118, !noalias !120
  %4760 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 2
  store float -1.000000e+00, float* %4760, align 4, !tbaa !118, !noalias !120
  %4761 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 0
  store float -1.000000e+00, float* %4761, align 4, !tbaa !118, !noalias !120
  %4762 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 1
  store float -1.000000e+00, float* %4762, align 4, !tbaa !118, !noalias !120
  %4763 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 2
  store float -1.000000e+00, float* %4763, align 4, !tbaa !118, !noalias !120
  %4764 = icmp sgt i32 %4623, 0
  br i1 %4764, label %4765, label %4826

; <label>:4765                                    ; preds = %4753
  br label %4766

; <label>:4766                                    ; preds = %4815, %4765
  %4767 = phi i32 [ %4816, %4815 ], [ 0, %4765 ]
  %4768 = phi i32 [ %4817, %4815 ], [ 0, %4765 ]
  %4769 = add nuw i32 %4768, 171
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %4769)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.CBufRet.f32 %4770, 1
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.CBufRet.f32 %4773, 1
  %4776 = fsub fast float %4771, %4774
  %4777 = fsub fast float %4772, %4775
  %4778 = extractvalue %dx.types.CBufRet.f32 %4770, 2
  %4779 = fsub fast float -0.000000e+00, %4776
  %4780 = fsub fast float -0.000000e+00, %4777
  %4781 = call float @dx.op.dot2.f32(i32 54, float %4600, float %4601, float %4779, float %4780)  ; Dot2(ax,ay,bx,by)
  %4782 = fmul fast float %4781, 2.000000e+00
  %4783 = call float @dx.op.dot2.f32(i32 54, float %4779, float %4780, float %4779, float %4780)  ; Dot2(ax,ay,bx,by)
  %4784 = fmul fast float %4778, %4778
  %4785 = fsub fast float %4783, %4784
  %4786 = fmul fast float %4782, %4782
  %4787 = fmul fast float %4643, %4785
  %4788 = fsub fast float %4786, %4787
  %4789 = fcmp fast ogt float %4788, 0.000000e+00
  br i1 %4789, label %4790, label %4805

; <label>:4790                                    ; preds = %4766
  %4791 = fcmp fast ogt float %4782, 0.000000e+00
  %4792 = call float @dx.op.unary.f32(i32 24, float %4788)  ; Sqrt(value)
  %4793 = fsub fast float -0.000000e+00, %4792
  %4794 = select i1 %4791, float %4792, float %4793
  %4795 = fadd fast float %4794, %4782
  %4796 = fmul float %4795, -5.000000e-01
  %4797 = fdiv fast float %4796, %4636
  %4798 = call float @dx.op.binary.f32(i32 35, float %4797, float 0.000000e+00)  ; FMax(a,b)
  %4799 = call float @dx.op.binary.f32(i32 36, float %4671, float %4798)  ; FMin(a,b)
  %4800 = fdiv fast float %4785, %4796
  %4801 = call float @dx.op.binary.f32(i32 35, float %4800, float 0.000000e+00)  ; FMax(a,b)
  %4802 = call float @dx.op.binary.f32(i32 36, float %4671, float %4801)  ; FMin(a,b)
  %4803 = call float @dx.op.binary.f32(i32 36, float %4799, float %4802)  ; FMin(a,b)
  %4804 = call float @dx.op.binary.f32(i32 35, float %4799, float %4802)  ; FMax(a,b)
  br label %4805

; <label>:4805                                    ; preds = %4790, %4766
  %4806 = phi float [ %4804, %4790 ], [ -1.000000e+00, %4766 ]
  %4807 = phi float [ %4803, %4790 ], [ -1.000000e+00, %4766 ]
  %4808 = phi i1 [ true, %4790 ], [ false, %4766 ]
  br i1 %4808, label %4809, label %4815

; <label>:4809                                    ; preds = %4805
  %4810 = call float @dx.op.binary.f32(i32 35, float %4754, float %4807)  ; FMax(a,b)
  %4811 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %4768
  store float %4810, float* %4811, align 4, !tbaa !118, !noalias !120
  %4812 = call float @dx.op.binary.f32(i32 35, float %4754, float %4806)  ; FMax(a,b)
  %4813 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 %4768
  store float %4812, float* %4813, align 4, !tbaa !118, !noalias !120
  %4814 = add nsw i32 %4767, 1
  br label %4815

; <label>:4815                                    ; preds = %4809, %4805
  %4816 = phi i32 [ %4814, %4809 ], [ %4767, %4805 ]
  %4817 = add nuw nsw i32 %4768, 1
  %4818 = icmp eq i32 %4817, %4623
  br i1 %4818, label %4819, label %4766

; <label>:4819                                    ; preds = %4815
  %4820 = load float, float* %4760, align 4, !tbaa !118, !alias.scope !136, !noalias !139
  %4821 = load float, float* %4759, align 4, !tbaa !118, !alias.scope !142, !noalias !143
  %4822 = load float, float* %4758, align 4, !tbaa !118, !alias.scope !144, !noalias !145
  %4823 = load float, float* %4763, align 4, !tbaa !118, !alias.scope !146, !noalias !149
  %4824 = load float, float* %4762, align 4, !tbaa !118, !alias.scope !152, !noalias !153
  %4825 = load float, float* %4761, align 4, !tbaa !118, !alias.scope !154, !noalias !155
  br label %4826

; <label>:4826                                    ; preds = %4819, %4753
  %4827 = phi float [ -1.000000e+00, %4753 ], [ %4825, %4819 ]
  %4828 = phi float [ -1.000000e+00, %4753 ], [ %4824, %4819 ]
  %4829 = phi float [ -1.000000e+00, %4753 ], [ %4823, %4819 ]
  %4830 = phi float [ -1.000000e+00, %4753 ], [ %4822, %4819 ]
  %4831 = phi float [ -1.000000e+00, %4753 ], [ %4821, %4819 ]
  %4832 = phi float [ -1.000000e+00, %4753 ], [ %4820, %4819 ]
  %4833 = phi i32 [ 0, %4753 ], [ %4816, %4819 ]
  %4834 = call float @dx.op.binary.f32(i32 36, float %4831, float %4832)  ; FMin(a,b)
  %4835 = call float @dx.op.binary.f32(i32 36, float %4830, float %4834)  ; FMin(a,b)
  %4836 = call float @dx.op.binary.f32(i32 35, float %4830, float %4831)  ; FMax(a,b)
  %4837 = call float @dx.op.binary.f32(i32 36, float %4836, float %4832)  ; FMin(a,b)
  %4838 = call float @dx.op.binary.f32(i32 36, float %4830, float %4831)  ; FMin(a,b)
  %4839 = call float @dx.op.binary.f32(i32 35, float %4838, float %4837)  ; FMax(a,b)
  %4840 = call float @dx.op.binary.f32(i32 35, float %4831, float %4832)  ; FMax(a,b)
  %4841 = call float @dx.op.binary.f32(i32 35, float %4830, float %4840)  ; FMax(a,b)
  store float %4835, float* %4758, align 4, !tbaa !118, !alias.scope !144, !noalias !145
  store float %4839, float* %4759, align 4, !tbaa !118, !alias.scope !142, !noalias !143
  store float %4841, float* %4760, align 4, !tbaa !118, !alias.scope !136, !noalias !139
  %4842 = call float @dx.op.binary.f32(i32 36, float %4828, float %4829)  ; FMin(a,b)
  %4843 = call float @dx.op.binary.f32(i32 36, float %4827, float %4842)  ; FMin(a,b)
  %4844 = call float @dx.op.binary.f32(i32 35, float %4827, float %4828)  ; FMax(a,b)
  %4845 = call float @dx.op.binary.f32(i32 36, float %4844, float %4829)  ; FMin(a,b)
  %4846 = call float @dx.op.binary.f32(i32 36, float %4827, float %4828)  ; FMin(a,b)
  %4847 = call float @dx.op.binary.f32(i32 35, float %4846, float %4845)  ; FMax(a,b)
  %4848 = call float @dx.op.binary.f32(i32 35, float %4828, float %4829)  ; FMax(a,b)
  %4849 = call float @dx.op.binary.f32(i32 35, float %4827, float %4848)  ; FMax(a,b)
  store float %4843, float* %4761, align 4, !tbaa !118, !alias.scope !154, !noalias !155
  store float %4847, float* %4762, align 4, !tbaa !118, !alias.scope !152, !noalias !153
  store float %4849, float* %4763, align 4, !tbaa !118, !alias.scope !146, !noalias !149
  %4850 = sub nsw i32 3, %4833
  %4851 = icmp sgt i32 %4850, 2
  br i1 %4851, label %4852, label %4890

; <label>:4852                                    ; preds = %4826
  %4853 = icmp eq i32 %4621, 0
  %4854 = fsub fast float %4671, %4755
  %4855 = select i1 %4853, float %4854, float %4755
  %4856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4857 = extractvalue %dx.types.CBufRet.f32 %4856, 0
  %4858 = extractvalue %dx.types.CBufRet.f32 %4856, 1
  %4859 = extractvalue %dx.types.CBufRet.f32 %4856, 2
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 0
  %4862 = extractvalue %dx.types.CBufRet.f32 %4860, 1
  %4863 = extractvalue %dx.types.CBufRet.f32 %4860, 2
  %4864 = extractvalue %dx.types.CBufRet.f32 %4860, 3
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 3
  %4867 = call float @dx.op.binary.f32(i32 36, float %4756, float %4866)  ; FMin(a,b)
  %4868 = fmul fast float %4864, %4855
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = fsub fast float %4861, %4857
  %4871 = fsub fast float %4862, %4858
  %4872 = fsub fast float %4863, %4859
  %4873 = fmul fast float %4869, %4870
  %4874 = fmul fast float %4869, %4871
  %4875 = fmul fast float %4869, %4872
  %4876 = fadd fast float %4873, %4857
  %4877 = fadd fast float %4874, %4858
  %4878 = fadd fast float %4875, %4859
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = fadd fast float %4881, %4880
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4885 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4886 = fadd fast float %4885, %4884
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fmul fast float %4883, %4867
  %4889 = fmul fast float %4888, %4887
  br label %4972

; <label>:4890                                    ; preds = %4826
  %4891 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %4850
  %4892 = load float, float* %4891, align 4, !tbaa !118, !noalias !120
  %4893 = fcmp fast olt float %4892, %4757
  %4894 = icmp sgt i32 %4833, 0
  %4895 = and i1 %4894, %4893
  br i1 %4895, label %4896, label %4933

; <label>:4896                                    ; preds = %4890
  br label %4897

; <label>:4897                                    ; preds = %4926, %4896
  %4898 = phi float [ %4927, %4926 ], [ %4755, %4896 ]
  %4899 = phi float [ %4928, %4926 ], [ %4756, %4896 ]
  %4900 = phi float [ %4908, %4926 ], [ %4892, %4896 ]
  %4901 = phi i32 [ %4905, %4926 ], [ %4850, %4896 ]
  %4902 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 %4901
  %4903 = load float, float* %4902, align 4, !tbaa !118, !noalias !120
  %4904 = icmp slt i32 %4901, 2
  %4905 = add nsw i32 %4901, 1
  %4906 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %4905
  %4907 = load float, float* %4906, align 4, !tbaa !118, !noalias !120
  %4908 = select i1 %4904, float %4907, float %4671
  %4909 = call float @dx.op.binary.f32(i32 36, float %4908, float %4903)  ; FMin(a,b)
  %4910 = call float @dx.op.binary.f32(i32 36, float %4757, float %4909)  ; FMin(a,b)
  %4911 = icmp eq i32 %4621, 0
  %4912 = fadd fast float %4910, %4900
  %4913 = fmul fast float %4912, %4602
  %4914 = fadd fast float %4913, %4615
  br i1 %4911, label %4920, label %4915

; <label>:4915                                    ; preds = %4897
  %4916 = fsub fast float %4910, %4900
  %4917 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4916)  ; FMax(a,b)
  %4918 = fmul fast float %4917, %4914
  %4919 = fadd fast float %4918, %4899
  br label %4926

; <label>:4920                                    ; preds = %4897
  %4921 = fsub fast float %4900, %4910
  %4922 = call float @dx.op.unary.f32(i32 6, float %4921)  ; FAbs(value)
  %4923 = fadd fast float %4922, %4898
  %4924 = fmul fast float %4922, %4914
  %4925 = fsub fast float %4899, %4924
  br label %4926

; <label>:4926                                    ; preds = %4920, %4915
  %4927 = phi float [ %4917, %4915 ], [ %4923, %4920 ]
  %4928 = phi float [ %4919, %4915 ], [ %4925, %4920 ]
  %4929 = fcmp fast olt float %4908, %4757
  %4930 = icmp slt i32 %4905, 3
  %4931 = and i1 %4930, %4929
  br i1 %4931, label %4897, label %4932

; <label>:4932                                    ; preds = %4926
  br label %4933

; <label>:4933                                    ; preds = %4932, %4890
  %4934 = phi float [ %4755, %4890 ], [ %4927, %4932 ]
  %4935 = phi float [ %4756, %4890 ], [ %4928, %4932 ]
  %4936 = fsub fast float %4671, %4934
  %4937 = select i1 %4673, float %4934, float %4936
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 0
  %4940 = extractvalue %dx.types.CBufRet.f32 %4938, 1
  %4941 = extractvalue %dx.types.CBufRet.f32 %4938, 2
  %4942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4943 = extractvalue %dx.types.CBufRet.f32 %4942, 0
  %4944 = extractvalue %dx.types.CBufRet.f32 %4942, 1
  %4945 = extractvalue %dx.types.CBufRet.f32 %4942, 2
  %4946 = extractvalue %dx.types.CBufRet.f32 %4942, 3
  %4947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4948 = extractvalue %dx.types.CBufRet.f32 %4947, 3
  %4949 = call float @dx.op.binary.f32(i32 36, float %4935, float %4948)  ; FMin(a,b)
  %4950 = fmul fast float %4946, %4937
  %4951 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4952 = fsub fast float %4943, %4939
  %4953 = fsub fast float %4944, %4940
  %4954 = fsub fast float %4945, %4941
  %4955 = fmul fast float %4951, %4952
  %4956 = fmul fast float %4951, %4953
  %4957 = fmul fast float %4951, %4954
  %4958 = fadd fast float %4955, %4939
  %4959 = fadd fast float %4956, %4940
  %4960 = fadd fast float %4957, %4941
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4964 = fadd fast float %4963, %4962
  %4965 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4961, 2
  %4967 = extractvalue %dx.types.CBufRet.f32 %4961, 3
  %4968 = fadd fast float %4967, %4966
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4965, %4949
  %4971 = fmul fast float %4970, %4969
  br label %4972

; <label>:4972                                    ; preds = %4933, %4852, %4687, %4669, %4667
  %4973 = phi float [ %4696, %4687 ], [ %4855, %4852 ], [ %4937, %4933 ], [ 0.000000e+00, %4667 ], [ 0.000000e+00, %4669 ]
  %4974 = phi float [ %4730, %4687 ], [ %4889, %4852 ], [ %4971, %4933 ], [ 0.000000e+00, %4667 ], [ 0.000000e+00, %4669 ]
  %4975 = phi float [ %4717, %4687 ], [ %4876, %4852 ], [ %4958, %4933 ], [ 0.000000e+00, %4667 ], [ 0.000000e+00, %4669 ]
  %4976 = phi float [ %4718, %4687 ], [ %4877, %4852 ], [ %4959, %4933 ], [ 0.000000e+00, %4667 ], [ 0.000000e+00, %4669 ]
  %4977 = phi float [ %4719, %4687 ], [ %4878, %4852 ], [ %4960, %4933 ], [ 0.000000e+00, %4667 ], [ 0.000000e+00, %4669 ]
  %4978 = fmul fast float %4610, %4974
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4981 = fsub fast float %4617, %4980
  %4982 = fcmp fast olt float %4978, -2.000000e+01
  %4983 = call float @dx.op.unary.f32(i32 21, float %4978)  ; Exp(value)
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 2
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 3
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 2
  %4989 = fmul fast float %4986, %4981
  %4990 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4991 = fsub fast float 1.000000e+00, %4990
  %4992 = fmul fast float %4602, 5.000000e-01
  %4993 = fadd fast float %4992, 5.000000e-01
  %4994 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4995 = fsub fast float 1.000000e+00, %4994
  %4996 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4991)  ; FMax(a,b)
  %4997 = fdiv fast float %4995, %4996
  %4998 = fsub fast float %4981, %4559
  %4999 = call float @dx.op.unary.f32(i32 6, float %4998)  ; FAbs(value)
  %5000 = fmul fast float %4999, %4985
  %5001 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %5002 = fsub fast float 1.000000e+00, %5000
  %5003 = fmul fast float %5002, %5001
  %5004 = fadd fast float %5003, %5000
  %5005 = fmul fast float %4988, %4981
  %5006 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5007 = fsub fast float 1.000000e+00, %5004
  %5008 = fmul fast float %5007, %5006
  %5009 = fadd fast float %5008, %5004
  %5010 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5011 = fadd fast float %4983, -1.000000e+00
  %5012 = select i1 %4982, float -1.000000e+00, float %5011
  %5013 = fmul fast float %5010, %5012
  %5014 = fadd fast float %5013, 1.000000e+00
  %5015 = fsub fast float -0.000000e+00, %5013
  %5016 = fmul fast float %4975, %5015
  %5017 = fmul fast float %4976, %5015
  %5018 = fmul fast float %4977, %5015
  br label %5019

; <label>:5019                                    ; preds = %4972, %4568
  %5020 = phi float [ %4973, %4972 ], [ 0.000000e+00, %4568 ]
  %5021 = phi float [ %5014, %4972 ], [ 1.000000e+00, %4568 ]
  %5022 = phi float [ %5016, %4972 ], [ 0.000000e+00, %4568 ]
  %5023 = phi float [ %5017, %4972 ], [ 0.000000e+00, %4568 ]
  %5024 = phi float [ %5018, %4972 ], [ 0.000000e+00, %4568 ]
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 1
  %5027 = fsub fast float 1.000000e+00, %5021
  %5028 = fmul fast float %5027, %4603
  %5029 = fmul fast float %5028, %5026
  %5030 = fsub fast float %4603, %5029
  br i1 %4596, label %5031, label %5060, !dx.controlflow.hints !156

; <label>:5031                                    ; preds = %5019
  %5032 = fmul fast float %4604, %4593
  %5033 = fadd fast float %5032, %4594
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = fmul fast float %4575, %5030
  %5036 = fsub fast float -0.000000e+00, %5035
  %5037 = fmul fast float %4576, %5030
  %5038 = fsub fast float -0.000000e+00, %5037
  %5039 = call float @dx.op.unary.f32(i32 21, float %5036)  ; Exp(value)
  %5040 = call float @dx.op.unary.f32(i32 21, float %5038)  ; Exp(value)
  %5041 = call float @dx.op.binary.f32(i32 35, float %4583, float %5039)  ; FMax(a,b)
  %5042 = call float @dx.op.binary.f32(i32 35, float %4583, float %5040)  ; FMax(a,b)
  %5043 = fsub fast float %5042, %5041
  %5044 = fmul fast float %5043, %5034
  %5045 = fadd fast float %5044, %5041
  %5046 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5047 = fsub fast float %4580, %4585
  %5048 = fsub fast float %4581, %4586
  %5049 = fsub fast float %4582, %4587
  %5050 = fmul fast float %5034, %5047
  %5051 = fmul fast float %5034, %5048
  %5052 = fmul fast float %5034, %5049
  %5053 = fadd fast float %5050, %4585
  %5054 = fadd fast float %5051, %4586
  %5055 = fadd fast float %5052, %4587
  %5056 = fsub fast float 1.000000e+00, %5046
  %5057 = fmul fast float %5056, %5053
  %5058 = fmul fast float %5056, %5054
  %5059 = fmul fast float %5056, %5055
  br label %5119

; <label>:5060                                    ; preds = %5019
  %5061 = fmul fast float %5030, %4592
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = fsub fast float 2.000000e+00, %5062
  %5064 = fmul fast float %5062, 9.921875e-01
  %5065 = fmul fast float %5064, %5063
  %5066 = fadd fast float %5065, 3.906250e-03
  %5067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %45, float %5066, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5068 = extractvalue %dx.types.ResRet.f32 %5067, 0
  %5069 = fsub fast float %5062, %5068
  %5070 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5069)  ; FMax(a,b)
  %5071 = fmul fast float %4578, %4559
  %5072 = call float @dx.op.unary.f32(i32 6, float %5071)  ; FAbs(value)
  %5073 = fcmp fast ogt float %5072, 0x3EB0C6F7A0000000
  br i1 %5073, label %5074, label %5080, !dx.controlflow.hints !157

; <label>:5074                                    ; preds = %5060
  %5075 = fmul fast float %5071, 0xBFF7154760000000
  %5076 = call float @dx.op.unary.f32(i32 21, float %5075)  ; Exp(value)
  %5077 = fsub fast float 1.000000e+00, %5076
  %5078 = fdiv fast float %5077, %5071
  %5079 = fmul fast float %5078, %4588
  br label %5080

; <label>:5080                                    ; preds = %5074, %5060
  %5081 = phi float [ %5079, %5074 ], [ %4588, %5060 ]
  %5082 = fadd fast float %5081, %4590
  %5083 = fmul fast float %5082, %5070
  %5084 = fmul fast float %4575, %5083
  %5085 = fsub fast float -0.000000e+00, %5084
  %5086 = fmul fast float %4576, %5083
  %5087 = fsub fast float -0.000000e+00, %5086
  %5088 = fmul fast float %4577, %5083
  %5089 = fsub fast float -0.000000e+00, %5088
  %5090 = call float @dx.op.unary.f32(i32 21, float %5085)  ; Exp(value)
  %5091 = call float @dx.op.unary.f32(i32 21, float %5087)  ; Exp(value)
  %5092 = call float @dx.op.unary.f32(i32 21, float %5089)  ; Exp(value)
  %5093 = fmul fast float %4604, %4604
  %5094 = fadd fast float %5093, 1.000000e+00
  %5095 = fmul fast float %5094, 0x3FAE8EC8A0000000
  %5096 = fmul fast float %5095, %4585
  %5097 = fmul fast float %5095, %4586
  %5098 = fmul fast float %5095, %4587
  %5099 = fmul fast float %4604, %4583
  %5100 = fsub fast float 1.000000e+00, %5099
  %5101 = fmul fast float %4583, %4583
  %5102 = fsub fast float 1.000000e+00, %5101
  %5103 = fmul fast float %5102, 0x3FB45F3060000000
  %5104 = fmul fast float %5100, %5100
  %5105 = fdiv fast float 1.000000e+00, %5104
  %5106 = fmul fast float %5103, %5105
  %5107 = fmul fast float %5106, %4580
  %5108 = fmul fast float %5106, %4581
  %5109 = fmul fast float %5106, %4582
  %5110 = fadd fast float %5107, %5096
  %5111 = fadd fast float %5108, %5097
  %5112 = fadd fast float %5109, %5098
  %5113 = fsub fast float 1.000000e+00, %5090
  %5114 = fsub fast float 1.000000e+00, %5091
  %5115 = fsub fast float 1.000000e+00, %5092
  %5116 = fmul fast float %5110, %5113
  %5117 = fmul fast float %5111, %5114
  %5118 = fmul fast float %5112, %5115
  br label %5119

; <label>:5119                                    ; preds = %5080, %5031
  %5120 = phi float [ %5057, %5031 ], [ %5116, %5080 ]
  %5121 = phi float [ %5058, %5031 ], [ %5117, %5080 ]
  %5122 = phi float [ %5059, %5031 ], [ %5118, %5080 ]
  %5123 = phi float [ %5046, %5031 ], [ %5090, %5080 ]
  %5124 = phi float [ %5046, %5031 ], [ %5091, %5080 ]
  %5125 = phi float [ %5046, %5031 ], [ %5092, %5080 ]
  br i1 %4612, label %5126, label %5324, !dx.controlflow.hints !158

; <label>:5126                                    ; preds = %5119
  %5127 = extractvalue %dx.types.CBufRet.f32 %5025, 0
  %5128 = fmul fast float %5127, %5027
  %5129 = fsub fast float %5022, %5120
  %5130 = fsub fast float %5023, %5121
  %5131 = fsub fast float %5024, %5122
  %5132 = fmul fast float %5128, %5129
  %5133 = fmul fast float %5128, %5130
  %5134 = fmul fast float %5128, %5131
  %5135 = fadd fast float %5132, %5120
  %5136 = fadd fast float %5133, %5121
  %5137 = fadd fast float %5134, %5122
  %5138 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5123)  ; FMax(a,b)
  %5139 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5124)  ; FMax(a,b)
  %5140 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5125)  ; FMax(a,b)
  %5141 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5021)  ; FMax(a,b)
  %5142 = call float @dx.op.binary.f32(i32 35, float %5020, float %5030)  ; FMax(a,b)
  %5143 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5142)  ; FMax(a,b)
  %5144 = fdiv fast float %5020, %5143
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = fdiv fast float %5030, %5143
  %5147 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5148 = fcmp fast une float %5141, 1.000000e+00
  br i1 %5148, label %5149, label %5162, !dx.controlflow.hints !159

; <label>:5149                                    ; preds = %5126
  %5150 = call float @dx.op.unary.f32(i32 23, float %5141)  ; Log(value)
  %5151 = fmul fast float %5150, 0x3FE62E4300000000
  %5152 = fmul fast float %5022, %5151
  %5153 = fsub fast float -0.000000e+00, %5152
  %5154 = fmul fast float %5023, %5151
  %5155 = fsub fast float -0.000000e+00, %5154
  %5156 = fmul fast float %5024, %5151
  %5157 = fsub fast float -0.000000e+00, %5156
  %5158 = fsub fast float 1.000000e+00, %5141
  %5159 = fdiv fast float %5153, %5158
  %5160 = fdiv fast float %5155, %5158
  %5161 = fdiv fast float %5157, %5158
  br label %5162

; <label>:5162                                    ; preds = %5149, %5126
  %5163 = phi float [ %5159, %5149 ], [ %5022, %5126 ]
  %5164 = phi float [ %5160, %5149 ], [ %5023, %5126 ]
  %5165 = phi float [ %5161, %5149 ], [ %5024, %5126 ]
  %5166 = phi float [ %5151, %5149 ], [ 0.000000e+00, %5126 ]
  %5167 = fcmp fast une float %5138, 1.000000e+00
  br i1 %5167, label %5168, label %5175, !dx.controlflow.hints !160

; <label>:5168                                    ; preds = %5162
  %5169 = call float @dx.op.unary.f32(i32 23, float %5138)  ; Log(value)
  %5170 = fmul fast float %5169, 0x3FE62E4300000000
  %5171 = fmul fast float %5135, %5170
  %5172 = fsub fast float -0.000000e+00, %5171
  %5173 = fsub fast float 1.000000e+00, %5138
  %5174 = fdiv fast float %5172, %5173
  br label %5175

; <label>:5175                                    ; preds = %5168, %5162
  %5176 = phi float [ %5174, %5168 ], [ %5135, %5162 ]
  %5177 = phi float [ %5170, %5168 ], [ 0.000000e+00, %5162 ]
  %5178 = fcmp fast une float %5139, 1.000000e+00
  br i1 %5178, label %5179, label %5186, !dx.controlflow.hints !160

; <label>:5179                                    ; preds = %5175
  %5180 = call float @dx.op.unary.f32(i32 23, float %5139)  ; Log(value)
  %5181 = fmul fast float %5180, 0x3FE62E4300000000
  %5182 = fmul fast float %5136, %5181
  %5183 = fsub fast float -0.000000e+00, %5182
  %5184 = fsub fast float 1.000000e+00, %5139
  %5185 = fdiv fast float %5183, %5184
  br label %5186

; <label>:5186                                    ; preds = %5179, %5175
  %5187 = phi float [ %5185, %5179 ], [ %5136, %5175 ]
  %5188 = phi float [ %5181, %5179 ], [ 0.000000e+00, %5175 ]
  %5189 = fcmp fast une float %5140, 1.000000e+00
  br i1 %5189, label %5190, label %5197, !dx.controlflow.hints !160

; <label>:5190                                    ; preds = %5186
  %5191 = call float @dx.op.unary.f32(i32 23, float %5140)  ; Log(value)
  %5192 = fmul fast float %5191, 0x3FE62E4300000000
  %5193 = fmul fast float %5137, %5192
  %5194 = fsub fast float -0.000000e+00, %5193
  %5195 = fsub fast float 1.000000e+00, %5140
  %5196 = fdiv fast float %5194, %5195
  br label %5197

; <label>:5197                                    ; preds = %5190, %5186
  %5198 = phi float [ %5196, %5190 ], [ %5137, %5186 ]
  %5199 = phi float [ %5192, %5190 ], [ 0.000000e+00, %5186 ]
  %5200 = fmul fast float %5163, %5147
  %5201 = fmul fast float %5164, %5147
  %5202 = fmul fast float %5165, %5147
  %5203 = fmul fast float %5166, %5147
  %5204 = fmul fast float %5176, %5145
  %5205 = fmul fast float %5187, %5145
  %5206 = fmul fast float %5198, %5145
  %5207 = fmul fast float %5177, %5145
  %5208 = fmul fast float %5188, %5145
  %5209 = fmul fast float %5199, %5145
  %5210 = fadd fast float %5204, %5200
  %5211 = fadd fast float %5205, %5201
  %5212 = fadd fast float %5206, %5202
  %5213 = fadd fast float %5207, %5203
  %5214 = fadd fast float %5208, %5203
  %5215 = fadd fast float %5209, %5203
  %5216 = fcmp fast une float %5213, 0.000000e+00
  br i1 %5216, label %5217, label %5224, !dx.controlflow.hints !161

; <label>:5217                                    ; preds = %5197
  %5218 = fmul fast float %5213, 0x3FF7154760000000
  %5219 = call float @dx.op.unary.f32(i32 21, float %5218)  ; Exp(value)
  %5220 = fsub fast float 1.000000e+00, %5219
  %5221 = fmul fast float %5210, %5220
  %5222 = fsub fast float -0.000000e+00, %5221
  %5223 = fdiv fast float %5222, %5213
  br label %5224

; <label>:5224                                    ; preds = %5217, %5197
  %5225 = phi float [ %5219, %5217 ], [ 1.000000e+00, %5197 ]
  %5226 = phi float [ %5223, %5217 ], [ %5210, %5197 ]
  %5227 = fcmp fast une float %5214, 0.000000e+00
  br i1 %5227, label %5228, label %5235, !dx.controlflow.hints !161

; <label>:5228                                    ; preds = %5224
  %5229 = fmul fast float %5214, 0x3FF7154760000000
  %5230 = call float @dx.op.unary.f32(i32 21, float %5229)  ; Exp(value)
  %5231 = fsub fast float 1.000000e+00, %5230
  %5232 = fmul fast float %5211, %5231
  %5233 = fsub fast float -0.000000e+00, %5232
  %5234 = fdiv fast float %5233, %5214
  br label %5235

; <label>:5235                                    ; preds = %5228, %5224
  %5236 = phi float [ %5230, %5228 ], [ 1.000000e+00, %5224 ]
  %5237 = phi float [ %5234, %5228 ], [ %5211, %5224 ]
  %5238 = fcmp fast une float %5215, 0.000000e+00
  br i1 %5238, label %5239, label %5246, !dx.controlflow.hints !161

; <label>:5239                                    ; preds = %5235
  %5240 = fmul fast float %5215, 0x3FF7154760000000
  %5241 = call float @dx.op.unary.f32(i32 21, float %5240)  ; Exp(value)
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = fmul fast float %5212, %5242
  %5244 = fsub fast float -0.000000e+00, %5243
  %5245 = fdiv fast float %5244, %5215
  br label %5246

; <label>:5246                                    ; preds = %5239, %5235
  %5247 = phi float [ %5241, %5239 ], [ 1.000000e+00, %5235 ]
  %5248 = phi float [ %5245, %5239 ], [ %5212, %5235 ]
  %5249 = fcmp fast ogt float %5145, %5147
  br i1 %5249, label %5250, label %5270

; <label>:5250                                    ; preds = %5246
  %5251 = fsub fast float 1.000000e+00, %5147
  %5252 = fmul fast float %5163, %5251
  %5253 = fmul fast float %5164, %5251
  %5254 = fmul fast float %5165, %5251
  %5255 = fmul fast float %5166, %5251
  %5256 = fcmp fast une float %5255, 0.000000e+00
  br i1 %5256, label %5257, label %5308, !dx.controlflow.hints !162

; <label>:5257                                    ; preds = %5250
  %5258 = fmul fast float %5255, 0x3FF7154760000000
  %5259 = call float @dx.op.unary.f32(i32 21, float %5258)  ; Exp(value)
  %5260 = fsub fast float 1.000000e+00, %5259
  %5261 = fmul fast float %5252, %5260
  %5262 = fsub fast float -0.000000e+00, %5261
  %5263 = fmul fast float %5253, %5260
  %5264 = fsub fast float -0.000000e+00, %5263
  %5265 = fmul fast float %5254, %5260
  %5266 = fsub fast float -0.000000e+00, %5265
  %5267 = fdiv fast float %5262, %5255
  %5268 = fdiv fast float %5264, %5255
  %5269 = fdiv fast float %5266, %5255
  br label %5308

; <label>:5270                                    ; preds = %5246
  %5271 = fsub fast float 1.000000e+00, %5145
  %5272 = fmul fast float %5176, %5271
  %5273 = fmul fast float %5187, %5271
  %5274 = fmul fast float %5198, %5271
  %5275 = fmul fast float %5177, %5271
  %5276 = fmul fast float %5188, %5271
  %5277 = fmul fast float %5199, %5271
  %5278 = fcmp fast une float %5275, 0.000000e+00
  br i1 %5278, label %5279, label %5286, !dx.controlflow.hints !161

; <label>:5279                                    ; preds = %5270
  %5280 = fmul fast float %5275, 0x3FF7154760000000
  %5281 = call float @dx.op.unary.f32(i32 21, float %5280)  ; Exp(value)
  %5282 = fsub fast float 1.000000e+00, %5281
  %5283 = fmul fast float %5272, %5282
  %5284 = fsub fast float -0.000000e+00, %5283
  %5285 = fdiv fast float %5284, %5275
  br label %5286

; <label>:5286                                    ; preds = %5279, %5270
  %5287 = phi float [ %5285, %5279 ], [ %5272, %5270 ]
  %5288 = phi float [ %5281, %5279 ], [ 1.000000e+00, %5270 ]
  %5289 = fcmp fast une float %5276, 0.000000e+00
  br i1 %5289, label %5290, label %5297, !dx.controlflow.hints !161

; <label>:5290                                    ; preds = %5286
  %5291 = fmul fast float %5276, 0x3FF7154760000000
  %5292 = call float @dx.op.unary.f32(i32 21, float %5291)  ; Exp(value)
  %5293 = fsub fast float 1.000000e+00, %5292
  %5294 = fmul fast float %5273, %5293
  %5295 = fsub fast float -0.000000e+00, %5294
  %5296 = fdiv fast float %5295, %5276
  br label %5297

; <label>:5297                                    ; preds = %5290, %5286
  %5298 = phi float [ %5296, %5290 ], [ %5273, %5286 ]
  %5299 = phi float [ %5292, %5290 ], [ 1.000000e+00, %5286 ]
  %5300 = fcmp fast une float %5277, 0.000000e+00
  br i1 %5300, label %5301, label %5308, !dx.controlflow.hints !161

; <label>:5301                                    ; preds = %5297
  %5302 = fmul fast float %5277, 0x3FF7154760000000
  %5303 = call float @dx.op.unary.f32(i32 21, float %5302)  ; Exp(value)
  %5304 = fsub fast float 1.000000e+00, %5303
  %5305 = fmul fast float %5274, %5304
  %5306 = fsub fast float -0.000000e+00, %5305
  %5307 = fdiv fast float %5306, %5277
  br label %5308

; <label>:5308                                    ; preds = %5301, %5297, %5257, %5250
  %5309 = phi float [ %5307, %5301 ], [ %5269, %5257 ], [ %5254, %5250 ], [ %5274, %5297 ]
  %5310 = phi float [ %5298, %5301 ], [ %5268, %5257 ], [ %5253, %5250 ], [ %5298, %5297 ]
  %5311 = phi float [ %5287, %5301 ], [ %5267, %5257 ], [ %5252, %5250 ], [ %5287, %5297 ]
  %5312 = phi float [ %5303, %5301 ], [ %5259, %5257 ], [ 1.000000e+00, %5250 ], [ 1.000000e+00, %5297 ]
  %5313 = phi float [ %5299, %5301 ], [ %5259, %5257 ], [ 1.000000e+00, %5250 ], [ %5299, %5297 ]
  %5314 = phi float [ %5288, %5301 ], [ %5259, %5257 ], [ 1.000000e+00, %5250 ], [ %5288, %5297 ]
  %5315 = fmul fast float %5314, %5226
  %5316 = fmul fast float %5313, %5237
  %5317 = fmul fast float %5312, %5248
  %5318 = fadd fast float %5315, %5311
  %5319 = fadd fast float %5316, %5310
  %5320 = fadd fast float %5317, %5309
  %5321 = fmul fast float %5314, %5225
  %5322 = fmul fast float %5313, %5236
  %5323 = fmul fast float %5312, %5247
  br label %5324

; <label>:5324                                    ; preds = %5308, %5119
  %5325 = phi float [ %5323, %5308 ], [ %5125, %5119 ]
  %5326 = phi float [ %5322, %5308 ], [ %5124, %5119 ]
  %5327 = phi float [ %5321, %5308 ], [ %5123, %5119 ]
  %5328 = phi float [ %5320, %5308 ], [ %5122, %5119 ]
  %5329 = phi float [ %5319, %5308 ], [ %5121, %5119 ]
  %5330 = phi float [ %5318, %5308 ], [ %5120, %5119 ]
  %5331 = fmul fast float %5330, %4268
  %5332 = fmul fast float %5329, %4268
  %5333 = fmul fast float %5328, %4268
  %5334 = fmul fast float %5327, %4567
  %5335 = call float @dx.op.dot3.f32(i32 55, float %5327, float %5326, float %5325, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = call float @dx.op.dot3.f32(i32 55, float %5331, float %5332, float %5333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = select i1 %247, float %5335, float %5327
  %5338 = select i1 %247, float %5335, float %5326
  %5339 = select i1 %247, float 1.000000e+00, float %5325
  %5340 = select i1 %247, float %5336, float %5331
  %5341 = select i1 %247, float 0.000000e+00, float %5332
  %5342 = select i1 %247, float 0.000000e+00, float %5333
  %5343 = fmul fast float %5337, %4561
  %5344 = fmul fast float %5338, %4562
  %5345 = fmul fast float %5339, %4563
  %5346 = fadd fast float %5343, %5340
  %5347 = fadd fast float %5344, %5341
  %5348 = fadd fast float %5342, %5345
  %5349 = fmul fast float %5337, %4564
  %5350 = fmul fast float %5338, %4565
  %5351 = fmul fast float %5339, %4566
  %5352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.i32 %5352, 0
  %5354 = icmp eq i32 %5353, 0
  br i1 %5354, label %5722, label %5355, !dx.controlflow.hints !163

; <label>:5355                                    ; preds = %5324
  %5356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5356, 2
  %5358 = extractvalue %dx.types.CBufRet.f32 %5356, 3
  %5359 = fmul fast float %5357, %78
  %5360 = fmul fast float %5358, %79
  %5361 = fmul fast float %5359, 2.000000e+00
  %5362 = fmul fast float %5360, 2.000000e+00
  %5363 = fsub fast float 1.000000e+00, %5361
  %5364 = fsub fast float 1.000000e+00, %5362
  %5365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5366 = extractvalue %dx.types.CBufRet.f32 %5365, 0
  %5367 = extractvalue %dx.types.CBufRet.f32 %5365, 1
  %5368 = extractvalue %dx.types.CBufRet.f32 %5365, 2
  %5369 = fmul fast float %5363, %5366
  %5370 = fmul fast float %5363, %5367
  %5371 = fmul fast float %5363, %5368
  %5372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5373 = extractvalue %dx.types.CBufRet.f32 %5372, 0
  %5374 = extractvalue %dx.types.CBufRet.f32 %5372, 1
  %5375 = extractvalue %dx.types.CBufRet.f32 %5372, 2
  %5376 = fmul fast float %5364, %5373
  %5377 = fmul fast float %5364, %5374
  %5378 = fmul fast float %5364, %5375
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5383 = fadd fast float %5376, %5380
  %5384 = fadd fast float %5383, %5369
  %5385 = fadd fast float %5377, %5381
  %5386 = fadd fast float %5385, %5370
  %5387 = fadd fast float %5378, %5382
  %5388 = fadd fast float %5387, %5371
  %5389 = fmul fast float %5384, %4560
  %5390 = fmul fast float %5386, %4560
  %5391 = fmul fast float %5388, %4560
  %5392 = fmul fast float %5389, %5389
  %5393 = fmul fast float %5390, %5390
  %5394 = fadd fast float %5392, %5393
  %5395 = fmul fast float %5391, %5391
  %5396 = fadd fast float %5394, %5395
  %5397 = call float @dx.op.unary.f32(i32 24, float %5396)  ; Sqrt(value)
  %5398 = extractvalue %dx.types.CBufRet.f32 %4285, 0
  %5399 = fsub fast float %5397, %5398
  %5400 = extractvalue %dx.types.CBufRet.f32 %4285, 2
  %5401 = fmul fast float %5399, %5400
  %5402 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  %5403 = fadd fast float %5402, -5.000000e-01
  %5404 = fmul fast float %5403, 2.000000e+00
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 2
  %5407 = call float @dx.op.binary.f32(i32 36, float %5406, float %5404)  ; FMin(a,b)
  %5408 = fsub fast float -0.000000e+00, %5406
  %5409 = fcmp fast ogt float %5407, %5408
  br i1 %5409, label %5410, label %5722, !dx.controlflow.hints !164

; <label>:5410                                    ; preds = %5355
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 3
  %5413 = fcmp fast ogt float %5412, 0.000000e+00
  br i1 %5413, label %5414, label %5489, !dx.controlflow.hints !165

; <label>:5414                                    ; preds = %5410
  %5415 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %5416 = extractvalue %dx.types.Dimensions %5415, 0
  %5417 = sitofp i32 %5416 to float
  %5418 = extractvalue %dx.types.Dimensions %5415, 1
  %5419 = sitofp i32 %5418 to float
  %5420 = fmul fast float %5359, %5417
  %5421 = fmul fast float %5360, %5419
  %5422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.f32 %5422, 1
  %5424 = fsub fast float -0.000000e+00, %5423
  %5425 = fptoui float %5424 to i32
  %5426 = fptoui float %5420 to i32
  %5427 = fptoui float %5421 to i32
  %5428 = and i32 %5425, 31
  %5429 = lshr i32 %5426, %5428
  %5430 = lshr i32 %5427, %5428
  %5431 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 %5425, i32 %5429, i32 %5430, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = fcmp fast olt float %5432, -1.000000e+00
  %5434 = fcmp fast ogt float %5432, -1.000000e+00
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5437 = select i1 %5434, float %5436, float 1.000000e+00
  %5438 = fadd fast float %5432, 1.000000e+00
  %5439 = fmul fast float %5437, %5438
  %5440 = call float @dx.op.unary.f32(i32 6, float %5439)  ; FAbs(value)
  %5441 = extractvalue %dx.types.CBufRet.f32 %5435, 3
  %5442 = fcmp fast oge float %5440, %5441
  %5443 = select i1 %5442, float 0x4197782600000000, float %5440
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5447 = extractvalue %dx.types.CBufRet.f32 %5444, 2
  %5448 = select i1 %5433, float %5445, float %5366
  %5449 = select i1 %5433, float %5446, float %5367
  %5450 = select i1 %5433, float %5447, float %5368
  %5451 = fmul fast float %5448, %5363
  %5452 = fmul fast float %5449, %5363
  %5453 = fmul fast float %5450, %5363
  %5454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.CBufRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.CBufRet.f32 %5454, 2
  %5458 = select i1 %5433, float %5455, float %5373
  %5459 = select i1 %5433, float %5456, float %5374
  %5460 = select i1 %5433, float %5457, float %5375
  %5461 = fmul fast float %5458, %5364
  %5462 = fmul fast float %5459, %5364
  %5463 = fmul fast float %5460, %5364
  %5464 = fadd fast float %5461, %5451
  %5465 = fadd fast float %5462, %5452
  %5466 = fadd fast float %5463, %5453
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 0
  %5469 = extractvalue %dx.types.CBufRet.f32 %5467, 1
  %5470 = extractvalue %dx.types.CBufRet.f32 %5467, 2
  %5471 = select i1 %5433, float %5468, float %5380
  %5472 = select i1 %5433, float %5469, float %5381
  %5473 = select i1 %5433, float %5470, float %5382
  %5474 = fadd fast float %5464, %5471
  %5475 = fadd fast float %5465, %5472
  %5476 = fadd fast float %5466, %5473
  %5477 = fmul fast float %5474, %5443
  %5478 = fmul fast float %5475, %5443
  %5479 = fmul fast float %5476, %5443
  %5480 = fmul fast float %5477, %5477
  %5481 = fmul fast float %5478, %5478
  %5482 = fadd fast float %5480, %5481
  %5483 = fmul fast float %5479, %5479
  %5484 = fadd fast float %5482, %5483
  %5485 = call float @dx.op.unary.f32(i32 24, float %5484)  ; Sqrt(value)
  %5486 = fsub fast float %5485, %5398
  %5487 = fmul fast float %5486, %5400
  %5488 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  br label %5489

; <label>:5489                                    ; preds = %5414, %5410
  %5490 = phi float [ %5488, %5414 ], [ 1.000000e+00, %5410 ]
  %5491 = fmul fast float %5407, 5.000000e-01
  %5492 = fadd fast float %5491, 5.000000e-01
  %5493 = call float @dx.op.unary.f32(i32 22, float %5492)  ; Frc(value)
  %5494 = call float @dx.op.unary.f32(i32 27, float %5493)  ; Round_ni(value)
  %5495 = call float @dx.op.unary.f32(i32 22, float %5493)  ; Frc(value)
  %5496 = fmul fast float %5495, 2.000000e+00
  %5497 = fadd fast float %5496, -1.000000e+00
  %5498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %5359, float %5360, float %5494, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5499 = extractvalue %dx.types.ResRet.f32 %5498, 0
  %5500 = extractvalue %dx.types.ResRet.f32 %5498, 1
  %5501 = extractvalue %dx.types.ResRet.f32 %5498, 2
  %5502 = extractvalue %dx.types.ResRet.f32 %5498, 3
  %5503 = fadd fast float %5499, -5.000000e-01
  %5504 = fadd fast float %5501, -5.000000e-01
  %5505 = fmul fast float %5503, 0xBFD5555560000000
  %5506 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5504, float %5505)  ; FMad(a,b,c)
  %5507 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5500, float 0.000000e+00)  ; FMad(a,b,c)
  %5508 = fadd fast float %5507, %5502
  %5509 = fmul fast float %5503, -7.500000e-01
  %5510 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5504, float %5509)  ; FMad(a,b,c)
  %5511 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5500, float 0.000000e+00)  ; FMad(a,b,c)
  %5512 = fadd fast float %5511, %5502
  %5513 = call float @dx.op.binary.f32(i32 35, float %5506, float -1.000000e+00)  ; FMax(a,b)
  %5514 = call float @dx.op.binary.f32(i32 35, float %5508, float -1.000000e+00)  ; FMax(a,b)
  %5515 = call float @dx.op.binary.f32(i32 35, float %5510, float -1.000000e+00)  ; FMax(a,b)
  %5516 = call float @dx.op.binary.f32(i32 35, float %5512, float -1.000000e+00)  ; FMax(a,b)
  %5517 = call float @dx.op.binary.f32(i32 36, float %5513, float 1.000000e+00)  ; FMin(a,b)
  %5518 = call float @dx.op.binary.f32(i32 36, float %5514, float 1.000000e+00)  ; FMin(a,b)
  %5519 = call float @dx.op.binary.f32(i32 36, float %5515, float 1.000000e+00)  ; FMin(a,b)
  %5520 = call float @dx.op.binary.f32(i32 36, float %5516, float 1.000000e+00)  ; FMin(a,b)
  %5521 = fcmp fast olt float %5517, 0x3FEFFF8020000000
  br i1 %5521, label %5522, label %5637, !dx.controlflow.hints !166

; <label>:5522                                    ; preds = %5489
  %5523 = extractvalue %dx.types.CBufRet.f32 %5405, 3
  %5524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5525 = extractvalue %dx.types.CBufRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.CBufRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.CBufRet.f32 %5524, 2
  %5528 = extractvalue %dx.types.CBufRet.f32 %5524, 3
  %5529 = fsub fast float %5525, %5517
  %5530 = fsub fast float %5526, %5518
  %5531 = fsub fast float %5527, %5519
  %5532 = fsub fast float %5528, %5520
  %5533 = fmul fast float %5529, %5523
  %5534 = fmul fast float %5530, %5523
  %5535 = fmul fast float %5531, %5523
  %5536 = fmul fast float %5532, %5523
  %5537 = fadd fast float %5533, %5517
  %5538 = fadd fast float %5534, %5518
  %5539 = fsub fast float -0.000000e+00, %5538
  %5540 = fadd fast float %5535, %5519
  %5541 = fadd fast float %5536, %5520
  %5542 = fmul fast float %5537, %5537
  %5543 = fsub fast float %5538, %5542
  %5544 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5543)  ; FMax(a,b)
  %5545 = fdiv fast float 1.000000e+00, %5544
  %5546 = fmul fast float %5538, %5537
  %5547 = fsub fast float %5540, %5546
  %5548 = fsub fast float %5497, %5537
  %5549 = fmul fast float %5497, %5497
  %5550 = fsub fast float %5549, %5538
  %5551 = fmul fast float %5548, %5545
  %5552 = fmul fast float %5551, %5547
  %5553 = fsub fast float %5550, %5552
  %5554 = fmul fast float %5538, %5538
  %5555 = fsub fast float %5541, %5554
  %5556 = fmul fast float %5547, %5547
  %5557 = fmul fast float %5556, %5545
  %5558 = fsub fast float %5555, %5557
  %5559 = fdiv fast float %5553, %5558
  %5560 = fmul fast float %5547, %5559
  %5561 = fsub fast float %5548, %5560
  %5562 = fmul fast float %5561, %5545
  %5563 = fmul fast float %5562, %5537
  %5564 = fsub fast float 1.000000e+00, %5563
  %5565 = fmul fast float %5538, %5559
  %5566 = fsub fast float %5564, %5565
  %5567 = fmul fast float %5562, %5562
  %5568 = fmul fast float %5559, 4.000000e+00
  %5569 = fmul fast float %5568, %5566
  %5570 = fsub fast float %5567, %5569
  %5571 = call float @dx.op.unary.f32(i32 24, float %5570)  ; Sqrt(value)
  %5572 = fcmp fast oge float %5562, 0.000000e+00
  %5573 = fsub fast float -0.000000e+00, %5571
  %5574 = select i1 %5572, float %5573, float %5571
  %5575 = fsub fast float %5574, %5562
  %5576 = fdiv fast float %5575, %5559
  %5577 = fdiv fast float %5566, %5575
  %5578 = fmul fast float %5576, 5.000000e-01
  %5579 = fmul fast float %5577, 2.000000e+00
  %5580 = select i1 %5572, float %5578, float %5579
  %5581 = select i1 %5572, float %5579, float %5578
  %5582 = call float @dx.op.binary.f32(i32 35, float %5580, float %5581)  ; FMax(a,b)
  %5583 = call float @dx.op.binary.f32(i32 36, float %5580, float %5581)  ; FMin(a,b)
  %5584 = fcmp fast ogt float %5497, %5583
  br i1 %5584, label %5585, label %5595

; <label>:5585                                    ; preds = %5522
  %5586 = fsub fast float %5497, %5583
  %5587 = fsub fast float %5582, %5583
  %5588 = fmul fast float %5586, %5587
  %5589 = fmul fast float %5582, %5497
  %5590 = fadd fast float %5582, %5497
  %5591 = fmul fast float %5590, %5537
  %5592 = fadd fast float %5589, %5538
  %5593 = fsub fast float %5592, %5591
  %5594 = fdiv fast float %5593, %5588
  br label %5595

; <label>:5595                                    ; preds = %5585, %5522
  %5596 = phi float [ %5594, %5585 ], [ 0.000000e+00, %5522 ]
  %5597 = fcmp fast ogt float %5497, %5582
  %5598 = fsub fast float %5497, %5582
  br i1 %5597, label %5599, label %5609

; <label>:5599                                    ; preds = %5595
  %5600 = fsub fast float %5582, %5583
  %5601 = fmul fast float %5600, %5598
  %5602 = fmul fast float %5583, %5497
  %5603 = fadd fast float %5583, %5497
  %5604 = fmul fast float %5603, %5537
  %5605 = fsub fast float %5539, %5602
  %5606 = fadd fast float %5605, %5604
  %5607 = fdiv fast float %5606, %5601
  %5608 = fadd fast float %5607, %5596
  br label %5609

; <label>:5609                                    ; preds = %5599, %5595
  %5610 = phi float [ %5608, %5599 ], [ %5596, %5595 ]
  %5611 = fsub fast float %5497, %5583
  %5612 = fmul fast float %5611, %5598
  %5613 = fmul fast float %5583, %5582
  %5614 = fadd fast float %5583, %5582
  %5615 = fmul fast float %5614, %5537
  %5616 = fadd fast float %5613, %5538
  %5617 = fsub fast float %5616, %5615
  %5618 = fdiv fast float %5617, %5612
  %5619 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5620 = fcmp fast oeq float %4286, 0.000000e+00
  %5621 = extractvalue %dx.types.CBufRet.f32 %5405, 0
  %5622 = fcmp fast oeq float %5621, 0.000000e+00
  %5623 = or i1 %5620, %5622
  %5624 = fmul fast float %5621, 2.000000e+00
  %5625 = fadd fast float %5406, %5407
  %5626 = fdiv fast float %5625, %5624
  %5627 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5628 = fmul fast float %5627, 2.000000e+00
  %5629 = fsub fast float 3.000000e+00, %5628
  %5630 = fmul fast float %5627, %5627
  %5631 = fmul fast float %5630, %5629
  %5632 = select i1 %5623, float 1.000000e+00, float %5631
  %5633 = fmul fast float %5618, %4286
  %5634 = fadd fast float %5619, %5633
  %5635 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5636 = fmul fast float %5632, %5635
  br label %5637

; <label>:5637                                    ; preds = %5609, %5489
  %5638 = phi float [ %5636, %5609 ], [ 0.000000e+00, %5489 ]
  %5639 = fsub fast float 1.000000e+00, %5638
  %5640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %45, float %5359, float %5360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5641 = extractvalue %dx.types.ResRet.f32 %5640, 0
  %5642 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.i32 %5642, 2
  %5644 = icmp eq i32 %5643, 0
  br i1 %5644, label %5650, label %5645

; <label>:5645                                    ; preds = %5637
  %5646 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5647 = fadd fast float %5641, -1.000000e+00
  %5648 = fmul fast float %5646, %5647
  %5649 = fadd fast float %5648, 1.000000e+00
  br label %5650

; <label>:5650                                    ; preds = %5645, %5637
  %5651 = phi float [ %5649, %5645 ], [ %5639, %5637 ]
  br i1 %5413, label %5652, label %5670

; <label>:5652                                    ; preds = %5650
  %5653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.f32 %5653, 1
  %5655 = fsub fast float %5490, %5654
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fsub fast float %5490, %5412
  %5658 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5659 = fsub fast float %5656, %5658
  %5660 = fsub fast float %5492, %5658
  %5661 = fdiv fast float %5660, %5659
  %5662 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5663 = fmul fast float %5662, 2.000000e+00
  %5664 = fsub fast float 3.000000e+00, %5663
  %5665 = fsub fast float %5641, %5651
  %5666 = fmul fast float %5662, %5662
  %5667 = fmul fast float %5666, %5665
  %5668 = fmul fast float %5667, %5664
  %5669 = fadd fast float %5668, %5651
  br label %5670

; <label>:5670                                    ; preds = %5652, %5650
  %5671 = phi float [ %5669, %5652 ], [ %5651, %5650 ]
  %5672 = call float @dx.op.binary.f32(i32 35, float %5641, float %5671)  ; FMax(a,b)
  %5673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.i32 %5673, 2
  %5675 = and i32 %5674, 1
  %5676 = icmp eq i32 %5675, 0
  %5677 = fcmp fast une float %5672, 1.000000e+00
  %5678 = and i1 %5677, %5676
  br i1 %5678, label %5679, label %5698

; <label>:5679                                    ; preds = %5670
  %5680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %45, float %5359, float %5360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.ResRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.ResRet.f32 %5680, 2
  %5684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5685 = extractvalue %dx.types.CBufRet.f32 %5684, 1
  %5686 = fmul fast float %5685, %5681
  %5687 = fmul fast float %5685, %5682
  %5688 = fmul fast float %5685, %5683
  %5689 = fcmp fast ogt float %5641, 0x3FEFFF2E40000000
  %5690 = fsub fast float 1.000000e+00, %5672
  %5691 = fsub fast float 1.000000e+00, %5641
  %5692 = fdiv fast float %5690, %5691
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5694 = select i1 %5689, float 0.000000e+00, float %5693
  %5695 = fmul fast float %5686, %5694
  %5696 = fmul fast float %5687, %5694
  %5697 = fmul fast float %5688, %5694
  br label %5698

; <label>:5698                                    ; preds = %5679, %5670
  %5699 = phi float [ 0.000000e+00, %5670 ], [ %5695, %5679 ]
  %5700 = phi float [ 0.000000e+00, %5670 ], [ %5696, %5679 ]
  %5701 = phi float [ 0.000000e+00, %5670 ], [ %5697, %5679 ]
  %5702 = fmul fast float %5699, %4268
  %5703 = fmul fast float %5700, %4268
  %5704 = fmul fast float %5701, %4268
  %5705 = fmul fast float %5672, %5334
  %5706 = call float @dx.op.dot3.f32(i32 55, float %5672, float %5672, float %5672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5703, float %5704, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = select i1 %247, float %5706, float %5672
  %5709 = select i1 %247, float 1.000000e+00, float %5672
  %5710 = select i1 %247, float %5707, float %5702
  %5711 = select i1 %247, float 0.000000e+00, float %5703
  %5712 = select i1 %247, float 0.000000e+00, float %5704
  %5713 = fmul fast float %5708, %5346
  %5714 = fmul fast float %5708, %5347
  %5715 = fmul fast float %5709, %5348
  %5716 = fadd fast float %5713, %5710
  %5717 = fadd fast float %5714, %5711
  %5718 = fadd fast float %5712, %5715
  %5719 = fmul fast float %5708, %5349
  %5720 = fmul fast float %5708, %5350
  %5721 = fmul fast float %5709, %5351
  br label %5722

; <label>:5722                                    ; preds = %5698, %5355, %5324, %4556
  %5723 = phi float [ %4561, %4556 ], [ %5346, %5324 ], [ %5716, %5698 ], [ %5346, %5355 ]
  %5724 = phi float [ %4562, %4556 ], [ %5347, %5324 ], [ %5717, %5698 ], [ %5347, %5355 ]
  %5725 = phi float [ %4563, %4556 ], [ %5348, %5324 ], [ %5718, %5698 ], [ %5348, %5355 ]
  %5726 = phi float [ %4564, %4556 ], [ %5349, %5324 ], [ %5719, %5698 ], [ %5349, %5355 ]
  %5727 = phi float [ %4565, %4556 ], [ %5350, %5324 ], [ %5720, %5698 ], [ %5350, %5355 ]
  %5728 = phi float [ %4566, %4556 ], [ %5351, %5324 ], [ %5721, %5698 ], [ %5351, %5355 ]
  %5729 = phi float [ %4567, %4556 ], [ %5334, %5324 ], [ %5705, %5698 ], [ %5334, %5355 ]
  %5730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.f32 %5730, 2
  %5732 = extractvalue %dx.types.CBufRet.f32 %5730, 3
  %5733 = fmul fast float %5731, %78
  %5734 = fmul fast float %5732, %79
  %5735 = call float @dx.op.unary.f32(i32 7, float %5733)  ; Saturate(value)
  %5736 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5737 = select i1 %4296, i32 2, i32 0
  %5738 = or i32 %5737, 1
  %5739 = uitofp i32 %5738 to float
  %5740 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %5735, float %5736, float %5739, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5741 = extractvalue %dx.types.ResRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.ResRet.f32 %5740, 1
  %5743 = extractvalue %dx.types.ResRet.f32 %5740, 2
  %5744 = extractvalue %dx.types.ResRet.f32 %5740, 3
  %5745 = add nuw nsw i32 %5737, 2
  %5746 = uitofp i32 %5745 to float
  %5747 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %45, float %5735, float %5736, float %5746, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5748 = extractvalue %dx.types.ResRet.f32 %5747, 0
  %5749 = extractvalue %dx.types.ResRet.f32 %5747, 1
  %5750 = extractvalue %dx.types.ResRet.f32 %5747, 2
  %5751 = extractvalue %dx.types.ResRet.f32 %5747, 3
  %5752 = call float @dx.op.binary.f32(i32 35, float %5742, float %5743)  ; FMax(a,b)
  %5753 = call float @dx.op.binary.f32(i32 35, float %5741, float %5752)  ; FMax(a,b)
  %5754 = call float @dx.op.binary.f32(i32 35, float %5753, float %5744)  ; FMax(a,b)
  %5755 = call float @dx.op.binary.f32(i32 36, float %5749, float %5750)  ; FMin(a,b)
  %5756 = call float @dx.op.binary.f32(i32 36, float %5748, float %5755)  ; FMin(a,b)
  %5757 = call float @dx.op.binary.f32(i32 36, float %5756, float %5751)  ; FMin(a,b)
  %5758 = fmul fast float %5754, 2.550000e+02
  %5759 = fadd fast float %5758, 0x3F70101020000000
  %5760 = fptoui float %5759 to i32
  %5761 = fmul fast float %5757, 2.550000e+02
  %5762 = fadd fast float %5761, 0x3F70101020000000
  %5763 = fptoui float %5762 to i32
  %5764 = icmp ult i32 %5760, %5763
  br i1 %5764, label %5765, label %5934

; <label>:5765                                    ; preds = %5722
  %5766 = fcmp fast ogt float %68, 9.843750e-01
  %5767 = fadd fast float %4560, -4.000000e+00
  %5768 = select i1 %5766, float -4.000000e+00, float %5767
  %5769 = call float @dx.op.binary.f32(i32 35, float %5768, float 0.000000e+00)  ; FMax(a,b)
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 0
  %5772 = fadd fast float %5771, %5769
  %5773 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %5774 = fmul fast float %5772, %5773
  %5775 = call float @dx.op.unary.f32(i32 23, float %5774)  ; Log(value)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5770, 3
  %5777 = fmul fast float %5776, %5775
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 2
  %5780 = fmul fast float %5777, %5779
  %5781 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5782 = uitofp i32 %5760 to float
  %5783 = uitofp i32 %5763 to float
  %5784 = fadd fast float %5782, 5.000000e-01
  %5785 = fadd fast float %5783, 5.000000e-01
  %5786 = fmul fast float %5779, %5784
  %5787 = fmul fast float %5779, %5785
  %5788 = fadd fast float %5786, 0x3F0FFB4800000000
  %5789 = fadd fast float %5787, 0xBF0FFB4800000000
  %5790 = call float @dx.op.binary.f32(i32 35, float %5781, float %5788)  ; FMax(a,b)
  %5791 = call float @dx.op.binary.f32(i32 36, float %5790, float %5789)  ; FMin(a,b)
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5795 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5796 = select i1 %4296, float %5795, float 0.000000e+00
  %5797 = fmul fast float %5793, %5791
  %5798 = fadd fast float %5796, %5797
  %5799 = fadd fast float %5796, %5794
  %5800 = fsub fast float %5793, %5794
  %5801 = fadd fast float %5800, %5796
  %5802 = call float @dx.op.binary.f32(i32 35, float %5798, float %5799)  ; FMax(a,b)
  %5803 = call float @dx.op.binary.f32(i32 36, float %5802, float %5801)  ; FMin(a,b)
  %5804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %43, float %5735, float %5736, float %5803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5805 = extractvalue %dx.types.ResRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.ResRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.ResRet.f32 %5804, 2
  %5808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.i32 %5808, 0
  %5810 = extractvalue %dx.types.CBufRet.i32 %5808, 1
  %5811 = uitofp i32 %5809 to float
  %5812 = uitofp i32 %5810 to float
  %5813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5814 = extractvalue %dx.types.CBufRet.f32 %5813, 0
  %5815 = extractvalue %dx.types.CBufRet.f32 %5813, 1
  %5816 = fmul fast float %5811, %5735
  %5817 = fmul fast float %5812, %5736
  %5818 = fadd fast float %5816, -5.000000e-01
  %5819 = fadd fast float %5817, -5.000000e-01
  %5820 = call float @dx.op.unary.f32(i32 22, float %5818)  ; Frc(value)
  %5821 = call float @dx.op.unary.f32(i32 22, float %5819)  ; Frc(value)
  %5822 = fmul fast float %5820, %5820
  %5823 = fmul fast float %5822, %5820
  %5824 = fsub fast float 3.000000e+00, %5820
  %5825 = fmul fast float %5822, %5824
  %5826 = fmul fast float %5820, 3.000000e+00
  %5827 = fmul fast float %5823, 3.000000e+00
  %5828 = fmul fast float %5822, 6.000000e+00
  %5829 = fsub fast float %5827, %5828
  %5830 = fadd fast float %5829, 4.000000e+00
  %5831 = fmul fast float %5830, 0x3FC5555560000000
  %5832 = fmul fast float %5823, -3.000000e+00
  %5833 = fadd fast float %5822, %5820
  %5834 = fmul fast float %5833, 3.000000e+00
  %5835 = fadd fast float %5832, 1.000000e+00
  %5836 = fadd fast float %5835, %5834
  %5837 = fmul fast float %5823, 0x3FC5555560000000
  %5838 = fmul fast float %5821, %5821
  %5839 = fmul fast float %5838, %5821
  %5840 = fsub fast float 3.000000e+00, %5821
  %5841 = fmul fast float %5838, %5840
  %5842 = fmul fast float %5821, 3.000000e+00
  %5843 = fmul fast float %5839, 3.000000e+00
  %5844 = fmul fast float %5838, 6.000000e+00
  %5845 = fsub fast float %5843, %5844
  %5846 = fadd fast float %5845, 4.000000e+00
  %5847 = fmul fast float %5846, 0x3FC5555560000000
  %5848 = fmul fast float %5839, -3.000000e+00
  %5849 = fadd fast float %5838, %5821
  %5850 = fmul fast float %5849, 3.000000e+00
  %5851 = fadd fast float %5848, 1.000000e+00
  %5852 = fadd fast float %5851, %5850
  %5853 = fmul fast float %5839, 0x3FC5555560000000
  %5854 = fadd fast float %5820, 1.000000e+00
  %5855 = fsub fast float 1.000000e+00, %5826
  %5856 = fadd fast float %5855, %5825
  %5857 = fadd fast float %5856, %5830
  %5858 = fmul fast float %5857, 0x3FC5555560000000
  %5859 = fdiv fast float %5831, %5858
  %5860 = fsub fast float %5854, %5859
  %5861 = fsub fast float 1.000000e+00, %5820
  %5862 = fadd fast float %5836, %5823
  %5863 = fmul fast float %5862, 0x3FC5555560000000
  %5864 = fdiv fast float %5837, %5863
  %5865 = fadd fast float %5861, %5864
  %5866 = fadd fast float %5821, 1.000000e+00
  %5867 = fsub fast float 1.000000e+00, %5842
  %5868 = fadd fast float %5867, %5841
  %5869 = fadd fast float %5868, %5846
  %5870 = fmul fast float %5869, 0x3FC5555560000000
  %5871 = fdiv fast float %5847, %5870
  %5872 = fsub fast float %5866, %5871
  %5873 = fsub fast float 1.000000e+00, %5821
  %5874 = fadd fast float %5852, %5839
  %5875 = fmul fast float %5874, 0x3FC5555560000000
  %5876 = fdiv fast float %5853, %5875
  %5877 = fadd fast float %5876, %5873
  %5878 = fmul fast float %5860, %5814
  %5879 = fsub fast float %5735, %5878
  %5880 = fmul fast float %5865, %5814
  %5881 = fadd fast float %5880, %5735
  %5882 = fmul fast float %5877, %5815
  %5883 = fadd fast float %5882, %5736
  %5884 = fmul fast float %5872, %5815
  %5885 = fsub fast float %5736, %5884
  %5886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %5879, float %5885, float %5803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5887 = extractvalue %dx.types.ResRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.ResRet.f32 %5886, 1
  %5889 = extractvalue %dx.types.ResRet.f32 %5886, 2
  %5890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %5881, float %5885, float %5803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.ResRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.ResRet.f32 %5890, 2
  %5894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %5879, float %5883, float %5803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5895 = extractvalue %dx.types.ResRet.f32 %5894, 0
  %5896 = extractvalue %dx.types.ResRet.f32 %5894, 1
  %5897 = extractvalue %dx.types.ResRet.f32 %5894, 2
  %5898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %43, float %5881, float %5883, float %5803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5899 = extractvalue %dx.types.ResRet.f32 %5898, 0
  %5900 = extractvalue %dx.types.ResRet.f32 %5898, 1
  %5901 = extractvalue %dx.types.ResRet.f32 %5898, 2
  %5902 = fsub fast float %5895, %5887
  %5903 = fsub fast float %5896, %5888
  %5904 = fsub fast float %5897, %5889
  %5905 = fmul fast float %5902, %5875
  %5906 = fmul fast float %5903, %5875
  %5907 = fmul fast float %5904, %5875
  %5908 = fadd fast float %5905, %5887
  %5909 = fadd fast float %5906, %5888
  %5910 = fadd fast float %5907, %5889
  %5911 = fsub fast float %5899, %5891
  %5912 = fsub fast float %5900, %5892
  %5913 = fsub fast float %5901, %5893
  %5914 = fmul fast float %5911, %5875
  %5915 = fmul fast float %5912, %5875
  %5916 = fmul fast float %5913, %5875
  %5917 = fsub fast float %5891, %5908
  %5918 = fadd fast float %5917, %5914
  %5919 = fsub fast float %5892, %5909
  %5920 = fadd fast float %5919, %5915
  %5921 = fsub fast float %5893, %5910
  %5922 = fadd fast float %5921, %5916
  %5923 = fmul fast float %5918, %5863
  %5924 = fmul fast float %5920, %5863
  %5925 = fmul fast float %5922, %5863
  %5926 = fadd fast float %5923, %5908
  %5927 = fadd fast float %5924, %5909
  %5928 = fadd fast float %5925, %5910
  %5929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5930 = extractvalue %dx.types.CBufRet.f32 %5929, 1
  %5931 = fmul fast float %5926, %5930
  %5932 = fmul fast float %5927, %5930
  %5933 = fmul fast float %5928, %5930
  br label %5934

; <label>:5934                                    ; preds = %5765, %5722
  %5935 = phi float [ %5805, %5765 ], [ 1.000000e+00, %5722 ]
  %5936 = phi float [ %5806, %5765 ], [ 1.000000e+00, %5722 ]
  %5937 = phi float [ %5807, %5765 ], [ 1.000000e+00, %5722 ]
  %5938 = phi float [ %5931, %5765 ], [ 0.000000e+00, %5722 ]
  %5939 = phi float [ %5932, %5765 ], [ 0.000000e+00, %5722 ]
  %5940 = phi float [ %5933, %5765 ], [ 0.000000e+00, %5722 ]
  %5941 = fmul fast float %5938, %4268
  %5942 = fmul fast float %5939, %4268
  %5943 = fmul fast float %5940, %4268
  %5944 = fmul fast float %5935, %5729
  %5945 = call float @dx.op.dot3.f32(i32 55, float %5935, float %5936, float %5937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5941, float %5942, float %5943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = select i1 %247, float %5945, float %5935
  %5948 = select i1 %247, float %5945, float %5936
  %5949 = select i1 %247, float 1.000000e+00, float %5937
  %5950 = select i1 %247, float %5946, float %5941
  %5951 = select i1 %247, float 0.000000e+00, float %5942
  %5952 = select i1 %247, float 0.000000e+00, float %5943
  %5953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.i32 %5953, 3
  %5955 = and i32 %5954, 3
  %5956 = icmp ne i32 %5955, 0
  %5957 = and i32 %5954, 4
  %5958 = icmp ne i32 %5957, 0
  %5959 = and i1 %5956, %5958
  %5960 = and i1 %247, %5959
  br i1 %5960, label %5961, label %5967

; <label>:5961                                    ; preds = %5934
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 1
  %5964 = fadd fast float %5944, -1.000000e+00
  %5965 = fmul fast float %5963, %5964
  %5966 = fadd fast float %5965, 1.000000e+00
  br label %5967

; <label>:5967                                    ; preds = %5961, %5934
  %5968 = phi float [ %5966, %5961 ], [ %5944, %5934 ]
  %5969 = fadd fast float %5726, %5723
  %5970 = fmul fast float %5947, %5969
  %5971 = fadd fast float %5970, %5950
  %5972 = fadd fast float %5727, %5724
  %5973 = fmul fast float %5948, %5972
  %5974 = fadd fast float %5973, %5951
  %5975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.f32 %5975, 0
  br i1 %247, label %5977, label %6000

; <label>:5977                                    ; preds = %5967
  %5978 = fadd fast float %5971, %5974
  %5979 = fmul fast float %5976, %5978
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 3
  %5982 = extractvalue %dx.types.CBufRet.f32 %4277, 1
  %5983 = fsub fast float %4283, %4271
  %5984 = fadd fast float %5983, %4284
  %5985 = fsub fast float %5984, %5982
  %5986 = extractvalue %dx.types.CBufRet.f32 %4277, 2
  %5987 = fmul fast float %5985, %5986
  %5988 = call float @dx.op.unary.f32(i32 7, float %5987)  ; Saturate(value)
  %5989 = fsub fast float %5988, %5981
  %5990 = fmul fast float %5989, %5968
  %5991 = fadd fast float %5990, %5981
  %5992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5993 = extractvalue %dx.types.CBufRet.f32 %5992, 0
  %5994 = fsub fast float %5991, %5993
  %5995 = fmul fast float %5994, 1.000000e+01
  %5996 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5997 = fmul fast float %5996, %4267
  %5998 = fadd fast float %5997, %4268
  %5999 = fmul fast float %5998, %5991
  br label %6024

; <label>:6000                                    ; preds = %5967
  %6001 = fadd fast float %5728, %5725
  %6002 = fmul fast float %5949, %6001
  %6003 = fadd fast float %6002, %5952
  %6004 = fmul fast float %5976, %5971
  %6005 = fmul fast float %5976, %5974
  %6006 = fmul fast float %5976, %6003
  %6007 = call float @dx.op.binary.f32(i32 35, float %6005, float %6006)  ; FMax(a,b)
  %6008 = call float @dx.op.binary.f32(i32 35, float %6004, float %6007)  ; FMax(a,b)
  %6009 = call float @dx.op.binary.f32(i32 35, float %6008, float %4268)  ; FMax(a,b)
  %6010 = fcmp fast ugt float %6009, 0x3F10000000000000
  br i1 %6010, label %6012, label %6011

; <label>:6011                                    ; preds = %6000
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6012

; <label>:6012                                    ; preds = %6011, %6000
  %6013 = add i32 %52, 132
  %6014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %6013, i32 undef)  ; BufferLoad(srv,index,wot)
  %6015 = extractvalue %dx.types.ResRet.i32 %6014, 0
  %6016 = and i32 %6015, 32
  %6017 = icmp eq i32 %6016, 0
  br i1 %6017, label %6024, label %6018

; <label>:6018                                    ; preds = %6012
  %6019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.f32 %6019, 0
  %6021 = fmul fast float %6020, 0x3FE99999A0000000
  %6022 = fadd fast float %6020, %6004
  %6023 = fadd fast float %6021, %6006
  br label %6024

; <label>:6024                                    ; preds = %6018, %6012, %5977
  %6025 = phi float [ %5979, %5977 ], [ %6022, %6018 ], [ %6004, %6012 ]
  %6026 = phi float [ %5999, %5977 ], [ %6005, %6018 ], [ %6005, %6012 ]
  %6027 = phi float [ %5998, %5977 ], [ %6023, %6018 ], [ %6006, %6012 ]
  %6028 = phi float [ %5998, %5977 ], [ %4268, %6018 ], [ %4268, %6012 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6029 = call float @dx.op.binary.f32(i32 36, float %6025, float 3.225500e+04)  ; FMin(a,b)
  %6030 = call float @dx.op.binary.f32(i32 36, float %6026, float 3.225500e+04)  ; FMin(a,b)
  %6031 = call float @dx.op.binary.f32(i32 36, float %6027, float 3.225500e+04)  ; FMin(a,b)
  %6032 = call float @dx.op.binary.f32(i32 36, float %6028, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6029)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6030)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6031)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6032)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!64}
!dx.entryPoints = !{!65}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !53, !56}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
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
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !17}
!35 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !40}
!40 = !{i32 0, i32 14}
!41 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!42 = !{i32 33, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!47 = !{i32 38, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!48 = !{i32 39, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!50 = !{i32 41, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !40}
!51 = !{i32 42, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!53 = !{!54, !55}
!54 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!55 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!56 = !{!57, !58, !59, !60, !61, !62, !63}
!57 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!58 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!59 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!60 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!61 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!62 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!63 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!64 = !{[28 x i32] [i32 26, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15]}
!65 = !{void ()* @ps_main, !"ps_main", !66, !4, !84}
!66 = !{!67, !82, null}
!67 = !{!68, !71, !73, !75, !77, !78, !79, !80, !81}
!68 = !{i32 0, !"SV_Position", i8 9, i8 3, !69, i8 4, i32 1, i8 4, i32 0, i8 0, !70}
!69 = !{i32 0}
!70 = !{i32 3, i32 15}
!71 = !{i32 1, !"COLOR", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 1, i8 0, !72}
!72 = !{i32 3, i32 1}
!73 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 2, i32 2, i8 0, !74}
!74 = !{i32 3, i32 3}
!75 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 3, i8 0, !76}
!76 = !{i32 3, i32 7}
!77 = !{i32 4, !"NORMAL", i8 9, i8 0, !69, i8 2, i32 1, i8 3, i32 4, i8 0, !76}
!78 = !{i32 5, !"TANGENT", i8 9, i8 0, !69, i8 2, i32 1, i8 4, i32 5, i8 0, !70}
!79 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !69, i8 1, i32 1, i8 1, i32 6, i8 0, !72}
!80 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !69, i8 1, i32 1, i8 1, i32 6, i8 1, !72}
!81 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !69, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !69, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!84 = !{i32 0, i64 16}
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
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !{!102, !104, !106, !108}
!102 = distinct !{!102, !103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!103 = distinct !{!103, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!107 = distinct !{!107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = !{!119, !119, i64 0}
!119 = !{!"float", !99, i64 0}
!120 = !{!121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!121 = distinct !{!121, !122, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!122 = distinct !{!122, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!123 = distinct !{!123, !124, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!124 = distinct !{!124, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!125 = distinct !{!125, !124, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!126 = distinct !{!126, !127, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!127 = distinct !{!127, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!128 = distinct !{!128, !127, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!129 = distinct !{!129, !127, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!130 = distinct !{!130, !131, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!131 = distinct !{!131, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!132 = distinct !{!132, !131, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!133 = distinct !{!133, !131, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!134 = distinct !{!134, !135, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!135 = distinct !{!135, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"\01?sort@@YAXAIAM00@Z: %c"}
!138 = distinct !{!138, !"\01?sort@@YAXAIAM00@Z"}
!139 = !{!140, !141, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!140 = distinct !{!140, !138, !"\01?sort@@YAXAIAM00@Z: %a"}
!141 = distinct !{!141, !138, !"\01?sort@@YAXAIAM00@Z: %b"}
!142 = !{!141}
!143 = !{!140, !137, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!144 = !{!140}
!145 = !{!141, !137, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!146 = !{!147}
!147 = distinct !{!147, !148, !"\01?sort@@YAXAIAM00@Z: %c"}
!148 = distinct !{!148, !"\01?sort@@YAXAIAM00@Z"}
!149 = !{!150, !151, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!150 = distinct !{!150, !148, !"\01?sort@@YAXAIAM00@Z: %a"}
!151 = distinct !{!151, !148, !"\01?sort@@YAXAIAM00@Z: %b"}
!152 = !{!151}
!153 = !{!150, !147, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!154 = !{!150}
!155 = !{!151, !147, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 2}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}

