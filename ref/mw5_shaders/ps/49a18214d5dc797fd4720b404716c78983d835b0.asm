;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 5353b4c7138c3f49fe8782e689830f18
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
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t49,space1     1
;                                   texture    byte         r/o      T8     t50,space1     1
;                                   texture    byte         r/o      T9     t51,space1     1
;                                   texture    byte         r/o     T10     t52,space1     1
;                                   texture    byte         r/o     T11     t16,space1     1
;                                   texture    byte         r/o     T12     t17,space1     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14             t0     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     u32          2d     T24     t56,space2     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27      t1,space1     1
;                                   texture     f32          1d     T28     t32,space2     1
;                                   texture     f32     2darray     T29      t8,space2     1
;                                   texture     f32          2d     T30      t2,space2     1
;                                   texture     f32          2d     T31      t3,space2     1
;                                   texture     f32          2d     T32      t4,space2     1
;                                   textureunorm_f32     2darray     T33     t80,space2     1
;                                   texture    byte         r/o     T34     t67,space1     1
;                                   texture     f32          2d     T35      t7,space2     1
;                                   texture     f32          2d     T36      t6,space2     1
;                                   texture     f32          2d     T37      t5,space2     1
;                                   texture     f32          2d     T38     t38,space2     1
;                                   texture    byte         r/o     T39     t12,space1     1
;                                   texture    byte         r/o     T40     t13,space1     1
;                                   texture     f32          1d     T41     t30,space2     1
;                                   texture     f32          3d     T42     t44,space2     1
;                                   texture     f32          3d     T43     t45,space2     1
;                                   texture     f32     2darray     T44     t47,space2     1
;                                   textureunorm_f32     2darray     T45     t85,space2     1
;                                   texture     f32          2d     T46     t83,space2     1
;                                   texture     f32          2d     T47     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = icmp ne i32 %54, 0
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = alloca [12 x float], align 4
  %95 = alloca [12 x float], align 4
  %96 = alloca [3 x float], align 4
  %97 = alloca [3 x float], align 4
  %98 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %99 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = fmul fast float %101, %90
  %103 = fmul fast float %101, %91
  %104 = select i1 %55, float 1.000000e+00, float -1.000000e+00
  %105 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %106 = bitcast float %105 to i32
  %107 = ashr i32 %106, 1
  %108 = sub nsw i32 1597250115, %107
  %109 = bitcast i32 %108 to float
  %110 = fmul fast float %81, %104
  %111 = fmul fast float %110, %109
  %112 = fmul fast float %82, %104
  %113 = fmul fast float %112, %109
  %114 = fmul fast float %83, %104
  %115 = fmul fast float %114, %109
  %116 = fmul fast float %82, %79
  %117 = fmul fast float %83, %78
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %83, %77
  %120 = fmul fast float %81, %79
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %81, %78
  %123 = fmul fast float %82, %77
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %118, %80
  %126 = fmul fast float %121, %80
  %127 = fmul fast float %124, %80
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 3
  %131 = fmul fast float %102, 2.000000e+00
  %132 = fmul fast float %131, %129
  %133 = fmul fast float %103, 2.000000e+00
  %134 = fmul fast float %133, %130
  %135 = fsub fast float 1.000000e+00, %132
  %136 = fsub fast float 1.000000e+00, %134
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %135, %138
  %142 = fmul fast float %135, %139
  %143 = fmul fast float %135, %140
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fmul fast float %136, %145
  %149 = fmul fast float %136, %146
  %150 = fmul fast float %136, %147
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = fadd fast float %148, %152
  %156 = fadd fast float %155, %141
  %157 = fadd fast float %149, %153
  %158 = fadd fast float %157, %142
  %159 = fadd fast float %150, %154
  %160 = fadd fast float %159, %143
  %161 = fmul fast float %156, %93
  %162 = fmul fast float %158, %93
  %163 = fmul fast float %160, %93
  %164 = fmul fast float %102, 5.000000e-01
  %165 = fmul fast float %103, 5.000000e-01
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
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %187 = fmul fast float %185, %102
  %188 = fmul fast float %186, %103
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 114688
  %192 = icmp ne i32 %191, 0
  %193 = select i1 %192, float %187, float 0.000000e+00
  %194 = select i1 %192, float %188, float 0.000000e+00
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = fmul fast float %196, 2.550000e+02
  %198 = fptoui float %197 to i32
  %199 = select i1 %192, i32 %198, i32 0
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.i32 %201, 3
  %203 = and i32 %202, 3
  %204 = icmp ne i32 %203, 0
  %205 = and i32 %202, 4
  %206 = icmp ne i32 %205, 0
  %207 = and i1 %204, %206
  br i1 %207, label %208, label %219

; <label>:208                                     ; preds = %0
  %209 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %210 = fmul fast float %209, %103
  %211 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %212 = fmul fast float %211, %102
  %213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %212, float %210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fsub fast float 1.000000e+00, %214
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = fcmp fast olt float %215, %217
  br label %222

; <label>:219                                     ; preds = %0
  %220 = icmp eq i32 %205, 0
  %221 = and i1 %204, %220
  br label %222

; <label>:222                                     ; preds = %219, %208
  %223 = phi i1 [ %218, %208 ], [ %221, %219 ]
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = fmul fast float %225, 0x3FE3C6EF40000000
  %227 = frem fast float %102, 2.560000e+02
  %228 = frem fast float %103, 2.560000e+02
  %229 = fptoui float %227 to i32
  %230 = fptoui float %228 to i32
  %231 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %229, i32 %230, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = fadd fast float %232, %226
  %234 = call float @dx.op.unary.f32(i32 22, float %233)  ; Frc(value)
  %235 = add i32 %56, 156
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %247 = add i32 %56, 216
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %261 = add i32 %56, 36
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %56, 288
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %272, 0x3F50624DE0000000
  %276 = fmul fast float %274, 0x3F50624DE0000000
  %277 = add i32 %56, 172
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = shl i32 %279, 4
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %279, 7
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %279, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %56, 232
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %291, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %291, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = add i32 %56, 52
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %56, 304
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %56, 188
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = shl i32 %321, 4
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %321, 7
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %321, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %56, 248
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %333, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = add i32 %56, 68
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %56, 320
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %56, 204
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = shl i32 %363, 4
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %363, 7
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %363, 22
  %371 = shl nuw nsw i32 %370, 5
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %56, 264
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %375, 8
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %375, 16
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = add i32 %56, 84
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = add i32 %56, 336
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 65535
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %396, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = fmul fast float %398, 0x3F50624DE0000000
  %402 = fmul fast float %400, 0x3F50624DE0000000
  %403 = add i32 %56, 348
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 32
  %407 = icmp eq i32 %406, 0
  %408 = and i32 %405, 64
  %409 = icmp eq i32 %408, 0
  %410 = and i32 %405, 128
  %411 = icmp eq i32 %410, 0
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 2
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %431, label %416

; <label>:416                                     ; preds = %222
  %417 = add i32 %56, 568
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %419, 0
  %421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %421, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = extractvalue %dx.types.ResRet.f32 %422, 3
  %427 = fmul fast float %426, %86
  %428 = fmul fast float %423, %87
  %429 = fmul fast float %424, %88
  %430 = fmul fast float %425, %89
  br label %431

; <label>:431                                     ; preds = %416, %222
  %432 = phi float [ %89, %222 ], [ %430, %416 ]
  %433 = phi float [ %88, %222 ], [ %429, %416 ]
  %434 = phi float [ %87, %222 ], [ %428, %416 ]
  %435 = phi float [ %86, %222 ], [ %427, %416 ]
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 2
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %459, label %440

; <label>:440                                     ; preds = %431
  %441 = add i32 %56, 44
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %434, float 1.000000e+00
  %447 = add i32 %56, 60
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %433, float 1.000000e+00
  %453 = add i32 %56, 76
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 1
  %457 = icmp ne i32 %456, 0
  %458 = select i1 %457, float %432, float 1.000000e+00
  br label %459

; <label>:459                                     ; preds = %440, %431
  %460 = phi float [ %432, %431 ], [ %458, %440 ]
  %461 = phi float [ %433, %431 ], [ %452, %440 ]
  %462 = phi float [ %434, %431 ], [ %446, %440 ]
  %463 = lshr i32 %437, 20
  %464 = and i32 %463, 3
  %465 = add nuw nsw i32 %464, 1
  %466 = add i32 %56, 24
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = add i32 %56, 28
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = or i32 %471, %468
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %1248, label %474

; <label>:474                                     ; preds = %459
  %475 = and i32 %468, 262144
  %476 = icmp ne i32 %475, 0
  %477 = select i1 %476, float %59, float 1.000000e+00
  %478 = select i1 %476, float %60, float 0.000000e+00
  %479 = select i1 %476, float %61, float 0.000000e+00
  %480 = select i1 %476, float %62, float 1.000000e+00
  %481 = select i1 %476, float %63, float %84
  %482 = select i1 %476, float %64, float %85
  %483 = add i32 %56, 284
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = lshr i32 %485, 16
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = fmul fast float %487, 0x3F50624DE0000000
  %489 = add i32 %56, 88
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = lshr i32 %491, 16
  %493 = and i32 %492, 255
  %494 = lshr i32 %491, 24
  %495 = add i32 %56, 292
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 65535
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = lshr i32 %497, 16
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = add i32 %56, 32
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = lshr i32 %504, 22
  %506 = shl nuw nsw i32 %505, 5
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = shl i32 %504, 4
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %504, 7
  %512 = and i32 %511, 32752
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 3
  %516 = fmul fast float %515, 1.000000e+03
  %517 = fmul fast float %275, %516
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fadd fast float %518, %265
  %520 = fmul fast float %276, %516
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = fadd fast float %521, %267
  %523 = fmul fast float %488, %516
  %524 = call float @dx.op.unary.f32(i32 22, float %523)  ; Frc(value)
  %525 = fmul fast float %524, 0x401921FB60000000
  %526 = fadd fast float %525, %507
  %527 = call float @dx.op.unary.f32(i32 13, float %526)  ; Sin(value)
  %528 = call float @dx.op.unary.f32(i32 12, float %526)  ; Cos(value)
  %529 = fsub fast float -0.000000e+00, %527
  %530 = fadd fast float %481, -5.000000e-01
  %531 = fadd fast float %482, -5.000000e-01
  %532 = fmul fast float %499, %530
  %533 = fmul fast float %501, %531
  %534 = fadd fast float %532, 5.000000e-01
  %535 = fadd fast float %533, 5.000000e-01
  %536 = fmul fast float %510, %534
  %537 = fmul fast float %513, %535
  %538 = fmul fast float %528, %536
  %539 = call float @dx.op.tertiary.f32(i32 46, float %529, float %537, float %538)  ; FMad(a,b,c)
  %540 = fmul fast float %527, %536
  %541 = call float @dx.op.tertiary.f32(i32 46, float %528, float %537, float %540)  ; FMad(a,b,c)
  %542 = fadd fast float %519, %539
  %543 = fadd fast float %522, %541
  %544 = icmp ugt i32 %493, 1
  %545 = icmp ugt i32 %491, 33554431
  %546 = or i1 %545, %544
  br i1 %546, label %547, label %572

; <label>:547                                     ; preds = %474
  %548 = add i32 %56, 228
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = lshr i32 %550, 16
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = fmul fast float %515, %552
  %554 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %555 = mul nuw nsw i32 %493, %494
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %554, %556
  %558 = call float @dx.op.unary.f32(i32 27, float %557)  ; Round_ni(value)
  %559 = fptoui float %558 to i32
  %560 = urem i32 %559, %493
  %561 = udiv i32 %559, %494
  %562 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %563 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %564 = uitofp i32 %560 to float
  %565 = uitofp i32 %561 to float
  %566 = fadd fast float %562, %564
  %567 = fadd fast float %563, %565
  %568 = uitofp i32 %493 to float
  %569 = uitofp i32 %494 to float
  %570 = fdiv fast float %566, %568
  %571 = fdiv fast float %567, %569
  br label %572

; <label>:572                                     ; preds = %547, %474
  %573 = phi float [ %570, %547 ], [ %542, %474 ]
  %574 = phi float [ %571, %547 ], [ %543, %474 ]
  %575 = and i32 %468, 16777216
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %686, label %577

; <label>:577                                     ; preds = %572
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %581 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %582 = fadd fast float %579, %161
  %583 = fadd fast float %580, %162
  %584 = fadd fast float %581, %163
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %587 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %588 = icmp eq i32 %57, 65535
  br i1 %588, label %683, label %589

; <label>:589                                     ; preds = %577
  %590 = lshr i32 %57, 1
  %591 = shl i32 %590, 2
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %57, 1
  %595 = icmp ne i32 %594, 0
  %596 = lshr i32 %593, 16
  %597 = and i32 %593, 65535
  %598 = select i1 %595, i32 %596, i32 %597
  %599 = icmp eq i32 %598, 65535
  br i1 %599, label %679, label %600

; <label>:600                                     ; preds = %589
  %601 = mul nuw nsw i32 %598, 40
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = add nuw nsw i32 %601, 12
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = add nuw nsw i32 %601, 24
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = add nuw nsw i32 %601, 36
  %617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = fsub fast float %582, %603
  %620 = fsub fast float %583, %604
  %621 = fsub fast float %584, %605
  %622 = fmul fast float %618, %619
  %623 = fmul fast float %618, %620
  %624 = fmul fast float %618, %621
  %625 = call float @dx.op.unary.f32(i32 27, float %622)  ; Round_ni(value)
  %626 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %627 = call float @dx.op.unary.f32(i32 27, float %624)  ; Round_ni(value)
  %628 = fadd fast float %625, 5.000000e-01
  %629 = fadd fast float %626, 5.000000e-01
  %630 = fadd fast float %627, 5.000000e-01
  %631 = fmul fast float %628, %608
  %632 = fmul fast float %629, %609
  %633 = fmul fast float %630, %610
  %634 = shl i32 %57, 2
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = add i32 %636, 0
  %638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %639 = call float @dx.op.unary.f32(i32 22, float %631)  ; Frc(value)
  %640 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %641 = call float @dx.op.unary.f32(i32 22, float %633)  ; Frc(value)
  %642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %638, %dx.types.Handle %49, float %639, float %640, float %641, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = fmul fast float %643, 1.023000e+03
  %647 = fmul fast float %644, 1.023000e+03
  %648 = fmul fast float %645, 1.023000e+03
  %649 = fadd fast float %646, 5.000000e-01
  %650 = fadd fast float %647, 5.000000e-01
  %651 = fadd fast float %648, 5.000000e-01
  %652 = call float @dx.op.unary.f32(i32 27, float %649)  ; Round_ni(value)
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = call float @dx.op.unary.f32(i32 27, float %651)  ; Round_ni(value)
  %655 = fsub fast float %622, %625
  %656 = fsub fast float %623, %626
  %657 = fsub fast float %624, %627
  %658 = fmul fast float %655, 7.500000e-01
  %659 = fmul fast float %656, 7.500000e-01
  %660 = fmul fast float %657, 7.500000e-01
  %661 = fadd fast float %625, 1.250000e-01
  %662 = fadd fast float %661, %658
  %663 = fadd fast float %662, %652
  %664 = fadd fast float %626, 1.250000e-01
  %665 = fadd fast float %664, %659
  %666 = fadd fast float %665, %653
  %667 = fadd fast float %627, 1.250000e-01
  %668 = fadd fast float %667, %660
  %669 = fadd fast float %668, %654
  %670 = fmul fast float %663, %613
  %671 = fmul fast float %666, %614
  %672 = fmul fast float %669, %615
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %676, %dx.types.Handle %47, float %670, float %671, float %672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  br label %679

; <label>:679                                     ; preds = %600, %589
  %680 = phi float [ %678, %600 ], [ -1.000000e+00, %589 ]
  %681 = fadd fast float %680, %587
  %682 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  br label %683

; <label>:683                                     ; preds = %679, %577
  %684 = phi float [ %682, %679 ], [ %587, %577 ]
  %685 = fmul fast float %684, %435
  br label %686

; <label>:686                                     ; preds = %683, %572
  %687 = phi float [ %685, %683 ], [ %435, %572 ]
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 256
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %738, label %692

; <label>:692                                     ; preds = %686
  %693 = add i32 %56, 504
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %695, 0
  %697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = add i32 %56, 100
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = shl i32 %702, 4
  %704 = and i32 %703, 32752
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = lshr i32 %702, 7
  %707 = and i32 %706, 32752
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = fsub fast float 1.000000e+00, %687
  %710 = call float @dx.op.binary.f32(i32 35, float %709, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %711 = bitcast float %687 to i32
  %712 = sitofp i32 %711 to float
  %713 = fadd fast float %712, 0xC1CFBF8940000000
  %714 = fmul fast float %708, %713
  %715 = fadd fast float %714, 0x41CFBF8940000000
  %716 = fptosi float %715 to i32
  %717 = bitcast i32 %716 to float
  %718 = bitcast float %710 to i32
  %719 = sitofp i32 %718 to float
  %720 = fadd fast float %719, 0xC1CFBF8940000000
  %721 = fmul fast float %720, %708
  %722 = fadd fast float %721, 0x41CFBF8940000000
  %723 = fptosi float %722 to i32
  %724 = bitcast i32 %723 to float
  %725 = fmul fast float %717, %705
  %726 = fmul fast float %724, %705
  %727 = fsub fast float %710, %725
  %728 = fadd fast float %726, %710
  %729 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %730 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %731 = fsub fast float %699, %729
  %732 = fsub fast float %730, %729
  %733 = bitcast float %732 to i32
  %734 = sub nsw i32 2129859010, %733
  %735 = bitcast i32 %734 to float
  %736 = fmul fast float %735, %731
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  br label %738

; <label>:738                                     ; preds = %692, %686
  %739 = phi float [ %737, %692 ], [ %687, %686 ]
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 128
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %760, label %744

; <label>:744                                     ; preds = %738
  %745 = add i32 %56, 488
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = add i32 %747, 0
  %749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %750 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %749, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 524288
  %755 = icmp ne i32 %754, 0
  %756 = fcmp fast ogt float %751, 0x3FE0101020000000
  %757 = select i1 %756, float 1.000000e+00, float 0.000000e+00
  %758 = select i1 %755, float %757, float %751
  %759 = fmul fast float %758, %739
  br label %760

; <label>:760                                     ; preds = %744, %738
  %761 = phi float [ %759, %744 ], [ %739, %738 ]
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 16
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %964, label %766

; <label>:766                                     ; preds = %760
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %56, 440
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = add i32 %771, 0
  %773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %773, %dx.types.Handle %98, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = and i32 %768, 255
  %780 = uitofp i32 %779 to float
  %781 = lshr i32 %768, 8
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %778, %780
  %785 = fadd fast float %784, %783
  %786 = fmul fast float %785, 0x3F70101000000000
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 512
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %799, label %791

; <label>:791                                     ; preds = %766
  %792 = add i32 %56, 520
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = add i32 %794, 0
  %796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %797 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %796, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 0
  br label %799

; <label>:799                                     ; preds = %791, %766
  %800 = phi float [ %798, %791 ], [ 1.000000e+00, %766 ]
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 33554432
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %911, label %805

; <label>:805                                     ; preds = %799
  %806 = add i32 %56, 224
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = lshr i32 %808, 16
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = add i32 %56, 228
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 65535
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = lshr i32 %819, 24
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = and i32 %819, 255
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F70101020000000
  %826 = lshr i32 %819, 8
  %827 = and i32 %826, 255
  %828 = uitofp i32 %827 to float
  %829 = fmul fast float %828, 0x3F70101020000000
  %830 = lshr i32 %819, 16
  %831 = and i32 %830, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = add i32 %56, 220
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 24
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = and i32 %836, 255
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, 0x3F70101020000000
  %843 = lshr i32 %836, 8
  %844 = and i32 %843, 255
  %845 = uitofp i32 %844 to float
  %846 = fmul fast float %845, 0x3F70101020000000
  %847 = lshr i32 %836, 16
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = bitcast float %775 to i32
  %852 = ashr i32 %851, 1
  %853 = sub nsw i32 1597463174, %852
  %854 = bitcast i32 %853 to float
  %855 = fmul fast float %775, 5.000000e-01
  %856 = fmul fast float %854, %854
  %857 = fmul fast float %856, %855
  %858 = fsub fast float 1.500000e+00, %857
  %859 = fmul fast float %854, %775
  %860 = fmul fast float %859, %858
  %861 = bitcast float %776 to i32
  %862 = ashr i32 %861, 1
  %863 = sub nsw i32 1597463174, %862
  %864 = bitcast i32 %863 to float
  %865 = fmul fast float %776, 5.000000e-01
  %866 = fmul fast float %864, %864
  %867 = fmul fast float %866, %865
  %868 = fsub fast float 1.500000e+00, %867
  %869 = fmul fast float %864, %776
  %870 = fmul fast float %869, %868
  %871 = bitcast float %777 to i32
  %872 = ashr i32 %871, 1
  %873 = sub nsw i32 1597463174, %872
  %874 = bitcast i32 %873 to float
  %875 = fmul fast float %777, 5.000000e-01
  %876 = fmul fast float %874, %874
  %877 = fmul fast float %876, %875
  %878 = fsub fast float 1.500000e+00, %877
  %879 = fmul fast float %874, %777
  %880 = fmul fast float %879, %878
  %881 = fsub fast float %860, %842
  %882 = fsub fast float %870, %846
  %883 = fsub fast float %880, %850
  %884 = fmul fast float %881, %810
  %885 = fmul fast float %882, %812
  %886 = fmul fast float %883, %817
  %887 = fadd fast float %884, %825
  %888 = fadd fast float %885, %829
  %889 = fadd fast float %886, %833
  %890 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %891 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %892 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %893 = fmul fast float %890, %890
  %894 = fmul fast float %891, %891
  %895 = fmul fast float %892, %892
  %896 = fsub fast float %893, %775
  %897 = fsub fast float %894, %776
  %898 = fsub fast float %895, %777
  %899 = fmul fast float %896, %800
  %900 = fmul fast float %897, %800
  %901 = fmul fast float %898, %800
  %902 = fadd fast float %899, %775
  %903 = fadd fast float %900, %776
  %904 = fadd fast float %901, %777
  %905 = fadd fast float %822, %786
  %906 = fsub fast float %905, %839
  %907 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  %908 = fsub fast float %907, %786
  %909 = fmul fast float %908, %800
  %910 = fadd fast float %909, %786
  br label %964

; <label>:911                                     ; preds = %799
  %912 = and i32 %802, 134217728
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %948, label %914

; <label>:914                                     ; preds = %911
  %915 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %916 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %917 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %918 = fadd fast float %915, -5.000000e-01
  %919 = fadd fast float %916, -5.000000e-01
  %920 = fadd fast float %917, -5.000000e-01
  %921 = fmul fast float %918, %800
  %922 = fmul fast float %919, %800
  %923 = fmul fast float %920, %800
  %924 = fadd fast float %921, 5.000000e-01
  %925 = fadd fast float %922, 5.000000e-01
  %926 = fadd fast float %923, 5.000000e-01
  %927 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %928 = call float @dx.op.unary.f32(i32 24, float %776)  ; Sqrt(value)
  %929 = call float @dx.op.unary.f32(i32 24, float %777)  ; Sqrt(value)
  %930 = fmul fast float %924, 2.000000e+00
  %931 = fsub fast float 1.000000e+00, %930
  %932 = fmul fast float %931, %927
  %933 = fadd fast float %932, %930
  %934 = fmul fast float %933, %927
  %935 = fmul fast float %925, 2.000000e+00
  %936 = fsub fast float 1.000000e+00, %935
  %937 = fmul fast float %936, %928
  %938 = fadd fast float %937, %935
  %939 = fmul fast float %938, %928
  %940 = fmul fast float %926, 2.000000e+00
  %941 = fsub fast float 1.000000e+00, %940
  %942 = fmul fast float %941, %929
  %943 = fadd fast float %942, %940
  %944 = fmul fast float %943, %929
  %945 = fmul fast float %934, %934
  %946 = fmul fast float %939, %939
  %947 = fmul fast float %944, %944
  br label %964

; <label>:948                                     ; preds = %911
  %949 = fmul fast float %252, %252
  %950 = fmul fast float %256, %256
  %951 = fmul fast float %260, %260
  %952 = fadd fast float %949, -1.000000e+00
  %953 = fadd fast float %950, -1.000000e+00
  %954 = fadd fast float %951, -1.000000e+00
  %955 = fmul fast float %800, %952
  %956 = fmul fast float %800, %953
  %957 = fmul fast float %800, %954
  %958 = fadd fast float %955, 1.000000e+00
  %959 = fadd fast float %956, 1.000000e+00
  %960 = fadd fast float %957, 1.000000e+00
  %961 = fmul fast float %958, %775
  %962 = fmul fast float %959, %776
  %963 = fmul fast float %960, %777
  br label %964

; <label>:964                                     ; preds = %948, %914, %805, %760
  %965 = phi float [ %910, %805 ], [ %786, %914 ], [ %786, %948 ], [ 0x3FA23C0BE0000000, %760 ]
  %966 = phi float [ %902, %805 ], [ %945, %914 ], [ %961, %948 ], [ 1.000000e+00, %760 ]
  %967 = phi float [ %903, %805 ], [ %946, %914 ], [ %962, %948 ], [ 1.000000e+00, %760 ]
  %968 = phi float [ %904, %805 ], [ %947, %914 ], [ %963, %948 ], [ 1.000000e+00, %760 ]
  %969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.i32 %969, 1
  %971 = and i32 %970, 1
  %972 = icmp ne i32 %971, 0
  %973 = add i32 %56, 356
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 32
  %977 = icmp ne i32 %976, 0
  %978 = and i1 %972, %977
  %979 = select i1 %978, float 1.000000e+00, float %966
  %980 = select i1 %978, float 0x3FD3333340000000, float %967
  %981 = select i1 %978, float 0x3FD3333340000000, float %968
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 32
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1058, label %986

; <label>:986                                     ; preds = %964
  %987 = add i32 %56, 92
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %56, 456
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = add i32 %992, 0
  %994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %994, %dx.types.Handle %98, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = extractvalue %dx.types.ResRet.f32 %995, 3
  %1000 = and i32 %989, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = lshr i32 %989, 8
  %1003 = and i32 %1002, 255
  %1004 = uitofp i32 %1003 to float
  %1005 = lshr i32 %989, 16
  %1006 = and i32 %1005, 255
  %1007 = uitofp i32 %1006 to float
  %1008 = fmul fast float %1007, 0x3F70101000000000
  %1009 = fmul fast float %996, %1001
  %1010 = fadd fast float %1009, %1004
  %1011 = fmul fast float %1010, 0x3F70101000000000
  %1012 = fadd fast float %997, -5.000000e-01
  %1013 = fadd fast float %999, -5.000000e-01
  %1014 = fmul fast float %1012, %1008
  %1015 = fmul fast float %1013, %1008
  %1016 = fadd fast float %1014, 5.000000e-01
  %1017 = fadd fast float %1015, 5.000000e-01
  %1018 = fmul fast float %1016, 2.000000e+00
  %1019 = fadd fast float %1018, -1.000000e+00
  %1020 = fmul fast float %1017, 2.000000e+00
  %1021 = fadd fast float %1020, -1.000000e+00
  %1022 = fadd fast float %1019, %1021
  %1023 = fmul fast float %1022, 5.000000e-01
  %1024 = fsub fast float %1019, %1021
  %1025 = fmul fast float %1024, 5.000000e-01
  %1026 = call float @dx.op.unary.f32(i32 6, float %1023)  ; FAbs(value)
  %1027 = fsub fast float 1.000000e+00, %1026
  %1028 = call float @dx.op.unary.f32(i32 6, float %1025)  ; FAbs(value)
  %1029 = fsub fast float %1027, %1028
  %1030 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1025, float %1029, float %1023, float %1025, float %1029)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = call float @dx.op.unary.f32(i32 25, float %1030)  ; Rsqrt(value)
  %1032 = fmul fast float %1023, %1031
  %1033 = fmul fast float %1025, %1031
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 67108864
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1054, label %1038

; <label>:1038                                    ; preds = %986
  %1039 = add i32 %56, 280
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 65535
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = and i32 %1045, 65535
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = lshr i32 %1041, 16
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = fsub fast float %1011, %1049
  %1051 = fmul fast float %1050, %1043
  %1052 = fadd fast float %1051, %1047
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  br label %1054

; <label>:1054                                    ; preds = %1038, %986
  %1055 = phi float [ %1053, %1038 ], [ %1011, %986 ]
  %1056 = call float @dx.op.dot2.f32(i32 54, float %1032, float %1033, float %477, float %478)  ; Dot2(ax,ay,bx,by)
  %1057 = call float @dx.op.dot2.f32(i32 54, float %1032, float %1033, float %479, float %480)  ; Dot2(ax,ay,bx,by)
  br label %1058

; <label>:1058                                    ; preds = %1054, %964
  %1059 = phi float [ %1055, %1054 ], [ 0x3FD6666660000000, %964 ]
  %1060 = phi float [ %1056, %1054 ], [ 0.000000e+00, %964 ]
  %1061 = phi float [ %1057, %1054 ], [ 0.000000e+00, %964 ]
  %1062 = phi float [ %998, %1054 ], [ 1.000000e+00, %964 ]
  %1063 = add i32 %56, 160
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = lshr i32 %1065, 22
  %1067 = shl nuw nsw i32 %1066, 5
  %1068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1067)  ; LegacyF16ToF32(value)
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 64
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1106, label %1073

; <label>:1073                                    ; preds = %1058
  %1074 = add i32 %56, 472
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = add i32 %1076, 0
  %1078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %1080, 131072
  %1082 = icmp eq i32 %1081, 0
  %1083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1078, %dx.types.Handle %98, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = fmul fast float %1084, %240
  %1088 = fmul fast float %1085, %243
  %1089 = fmul fast float %1086, %246
  br i1 %1082, label %1096, label %1090

; <label>:1090                                    ; preds = %1073
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = fmul fast float %1092, %1087
  %1094 = fmul fast float %1092, %1088
  %1095 = fmul fast float %1092, %1089
  br label %1096

; <label>:1096                                    ; preds = %1090, %1073
  %1097 = phi float [ %1093, %1090 ], [ %1087, %1073 ]
  %1098 = phi float [ %1094, %1090 ], [ %1088, %1073 ]
  %1099 = phi float [ %1095, %1090 ], [ %1089, %1073 ]
  %1100 = fmul fast float %1097, %1068
  %1101 = select i1 %223, float %1100, float %1097
  %1102 = call float @dx.op.dot3.f32(i32 55, float %1101, float %1098, float %1099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1103 = select i1 %223, float 0.000000e+00, float %1097
  %1104 = select i1 %223, float %1102, float %1098
  %1105 = select i1 %223, float 0.000000e+00, float %1099
  br label %1106

; <label>:1106                                    ; preds = %1096, %1058
  %1107 = phi float [ %1103, %1096 ], [ 0.000000e+00, %1058 ]
  %1108 = phi float [ %1104, %1096 ], [ 0.000000e+00, %1058 ]
  %1109 = phi float [ %1105, %1096 ], [ 0.000000e+00, %1058 ]
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 1024
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1144, label %1114

; <label>:1114                                    ; preds = %1106
  %1115 = add i32 %56, 152
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = lshr i32 %1117, 8
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = fmul fast float %1123, 0x3F70101020000000
  %1125 = lshr i32 %1117, 16
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F70101020000000
  %1129 = fmul fast float %1120, %1120
  %1130 = fmul fast float %1124, %1124
  %1131 = fmul fast float %1128, %1128
  %1132 = add i32 %56, 536
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = add i32 %1134, 0
  %1136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1136, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.ResRet.f32 %1137, 2
  %1141 = fmul fast float %1129, %1138
  %1142 = fmul fast float %1130, %1139
  %1143 = fmul fast float %1131, %1140
  br label %1144

; <label>:1144                                    ; preds = %1114, %1106
  %1145 = phi float [ %1141, %1114 ], [ 0.000000e+00, %1106 ]
  %1146 = phi float [ %1142, %1114 ], [ 0.000000e+00, %1106 ]
  %1147 = phi float [ %1143, %1114 ], [ 0.000000e+00, %1106 ]
  %1148 = fcmp fast ogt float %1145, 0.000000e+00
  %1149 = fcmp fast ogt float %1146, 0.000000e+00
  %1150 = fcmp fast ogt float %1147, 0.000000e+00
  %1151 = call float @dx.op.unary.f32(i32 23, float %1145)  ; Log(value)
  %1152 = call float @dx.op.unary.f32(i32 23, float %1146)  ; Log(value)
  %1153 = call float @dx.op.unary.f32(i32 23, float %1147)  ; Log(value)
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = lshr i32 %1155, 7
  %1157 = and i32 %1156, 32752
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = fmul fast float %1151, 0xBFE62E4300000000
  %1160 = fmul fast float %1159, %1158
  %1161 = fmul fast float %1152, 0xBFE62E4300000000
  %1162 = fmul fast float %1161, %1158
  %1163 = fmul fast float %1153, 0xBFE62E4300000000
  %1164 = fmul fast float %1163, %1158
  %1165 = select i1 %1148, float %1160, float 1.270000e+02
  %1166 = select i1 %1149, float %1162, float 1.270000e+02
  %1167 = select i1 %1150, float %1164, float 1.270000e+02
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 26624
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1229, label %1172

; <label>:1172                                    ; preds = %1144
  %1173 = add i32 %56, 552
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %1175, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1177, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1178, 3
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 1048576
  %1185 = icmp ne i32 %1184, 0
  %1186 = and i32 %1183, 8192
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1202, label %1188

; <label>:1188                                    ; preds = %1172
  %1189 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1190 = select i1 %1185, float %1189, float %1180
  %1191 = select i1 %1185, float %1179, float %1180
  %1192 = add i32 %56, 96
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 16
  %1196 = and i32 %1195, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1197, 0x3F80101020000000
  %1199 = fmul fast float %1198, %1191
  %1200 = fmul fast float %1198, %1180
  %1201 = fmul fast float %1198, %1190
  br label %1202

; <label>:1202                                    ; preds = %1188, %1172
  %1203 = phi float [ %1199, %1188 ], [ 0.000000e+00, %1172 ]
  %1204 = phi float [ %1200, %1188 ], [ 0.000000e+00, %1172 ]
  %1205 = phi float [ %1201, %1188 ], [ 0.000000e+00, %1172 ]
  %1206 = and i32 %1183, 2048
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1216, label %1208

; <label>:1208                                    ; preds = %1202
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = shl i32 %1210, 4
  %1212 = and i32 %1211, 32752
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = fmul fast float %1213, %1181
  %1215 = call float @dx.op.binary.f32(i32 35, float %1214, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1216

; <label>:1216                                    ; preds = %1208, %1202
  %1217 = phi float [ %1215, %1208 ], [ 0x3F70101020000000, %1202 ]
  %1218 = and i32 %1183, 16384
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1229, label %1220

; <label>:1220                                    ; preds = %1216
  %1221 = add i32 %56, 96
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = lshr i32 %1223, 24
  %1225 = uitofp i32 %1224 to float
  %1226 = fmul fast float %1179, 0x3F70101020000000
  %1227 = select i1 %1185, float 0x3F70101020000000, float %1226
  %1228 = fmul fast float %1227, %1225
  br label %1229

; <label>:1229                                    ; preds = %1220, %1216, %1144
  %1230 = phi float [ %1203, %1220 ], [ %1203, %1216 ], [ 0.000000e+00, %1144 ]
  %1231 = phi float [ %1204, %1220 ], [ %1204, %1216 ], [ 0.000000e+00, %1144 ]
  %1232 = phi float [ %1205, %1220 ], [ %1205, %1216 ], [ 0.000000e+00, %1144 ]
  %1233 = phi float [ %1217, %1220 ], [ %1217, %1216 ], [ 0x3F70101020000000, %1144 ]
  %1234 = phi float [ %1228, %1220 ], [ 0.000000e+00, %1216 ], [ 0.000000e+00, %1144 ]
  %1235 = add i32 %56, 96
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = lshr i32 %1237, 8
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = call float @dx.op.dot3.f32(i32 55, float %979, float %980, float %981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1244 = fmul fast float %1242, %1243
  %1245 = fadd fast float %1244, %1239
  %1246 = fmul fast float %1245, 0x3F70101020000000
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  br label %1248

; <label>:1248                                    ; preds = %1229, %459
  %1249 = phi float [ 0.000000e+00, %459 ], [ %1060, %1229 ]
  %1250 = phi float [ 0.000000e+00, %459 ], [ %1061, %1229 ]
  %1251 = phi float [ 0.000000e+00, %459 ], [ %979, %1229 ]
  %1252 = phi float [ 0.000000e+00, %459 ], [ %980, %1229 ]
  %1253 = phi float [ 0.000000e+00, %459 ], [ %981, %1229 ]
  %1254 = phi float [ 0.000000e+00, %459 ], [ %1107, %1229 ]
  %1255 = phi float [ 0.000000e+00, %459 ], [ %1108, %1229 ]
  %1256 = phi float [ 0.000000e+00, %459 ], [ %1109, %1229 ]
  %1257 = phi float [ 0.000000e+00, %459 ], [ %1230, %1229 ]
  %1258 = phi float [ 0.000000e+00, %459 ], [ %1231, %1229 ]
  %1259 = phi float [ 0.000000e+00, %459 ], [ %1232, %1229 ]
  %1260 = phi float [ 0.000000e+00, %459 ], [ %1165, %1229 ]
  %1261 = phi float [ 0.000000e+00, %459 ], [ %1166, %1229 ]
  %1262 = phi float [ 0.000000e+00, %459 ], [ %1167, %1229 ]
  %1263 = phi float [ 0.000000e+00, %459 ], [ %965, %1229 ]
  %1264 = phi float [ 0.000000e+00, %459 ], [ %761, %1229 ]
  %1265 = phi float [ 0.000000e+00, %459 ], [ %1059, %1229 ]
  %1266 = phi float [ 0.000000e+00, %459 ], [ %1062, %1229 ]
  %1267 = phi float [ 0.000000e+00, %459 ], [ %1233, %1229 ]
  %1268 = phi float [ 0.000000e+00, %459 ], [ %1234, %1229 ]
  %1269 = phi float [ 0.000000e+00, %459 ], [ %1247, %1229 ]
  br i1 %407, label %2331, label %1270

; <label>:1270                                    ; preds = %1248
  %1271 = icmp ult i32 %465, 2
  %1272 = add i32 %56, 40
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = add i32 %56, 44
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = or i32 %1277, %1274
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %2331, label %1280

; <label>:1280                                    ; preds = %1270
  %1281 = and i32 %1274, 262144
  %1282 = icmp ne i32 %1281, 0
  %1283 = select i1 %1282, float %59, float 1.000000e+00
  %1284 = select i1 %1282, float %60, float 0.000000e+00
  %1285 = select i1 %1282, float %61, float 0.000000e+00
  %1286 = select i1 %1282, float %62, float 1.000000e+00
  %1287 = select i1 %1282, float %63, float %84
  %1288 = select i1 %1282, float %64, float %85
  %1289 = add i32 %56, 300
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 16
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = fmul fast float %1293, 0x3F50624DE0000000
  %1295 = add i32 %56, 104
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 16
  %1299 = and i32 %1298, 255
  %1300 = lshr i32 %1297, 24
  %1301 = add i32 %56, 308
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 65535
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = lshr i32 %1303, 16
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = add i32 %56, 48
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = lshr i32 %1310, 22
  %1312 = shl nuw nsw i32 %1311, 5
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = shl i32 %1310, 4
  %1315 = and i32 %1314, 32752
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = lshr i32 %1310, 7
  %1318 = and i32 %1317, 32752
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 3
  %1322 = fmul fast float %1321, 1.000000e+03
  %1323 = fmul fast float %317, %1322
  %1324 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1325 = fadd fast float %1324, %307
  %1326 = fmul fast float %318, %1322
  %1327 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1328 = fadd fast float %1327, %309
  %1329 = fmul fast float %1294, %1322
  %1330 = call float @dx.op.unary.f32(i32 22, float %1329)  ; Frc(value)
  %1331 = fmul fast float %1330, 0x401921FB60000000
  %1332 = fadd fast float %1331, %1313
  %1333 = call float @dx.op.unary.f32(i32 13, float %1332)  ; Sin(value)
  %1334 = call float @dx.op.unary.f32(i32 12, float %1332)  ; Cos(value)
  %1335 = fsub fast float -0.000000e+00, %1333
  %1336 = fadd fast float %1287, -5.000000e-01
  %1337 = fadd fast float %1288, -5.000000e-01
  %1338 = fmul fast float %1305, %1336
  %1339 = fmul fast float %1307, %1337
  %1340 = fadd fast float %1338, 5.000000e-01
  %1341 = fadd fast float %1339, 5.000000e-01
  %1342 = fmul fast float %1316, %1340
  %1343 = fmul fast float %1319, %1341
  %1344 = fmul fast float %1334, %1342
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %1335, float %1343, float %1344)  ; FMad(a,b,c)
  %1346 = fmul fast float %1333, %1342
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1334, float %1343, float %1346)  ; FMad(a,b,c)
  %1348 = fadd fast float %1325, %1345
  %1349 = fadd fast float %1328, %1347
  %1350 = icmp ugt i32 %1299, 1
  %1351 = icmp ugt i32 %1297, 33554431
  %1352 = or i1 %1351, %1350
  br i1 %1352, label %1353, label %1378

; <label>:1353                                    ; preds = %1280
  %1354 = add i32 %56, 244
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = lshr i32 %1356, 16
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = fmul fast float %1321, %1358
  %1360 = call float @dx.op.unary.f32(i32 22, float %1359)  ; Frc(value)
  %1361 = mul nuw nsw i32 %1299, %1300
  %1362 = uitofp i32 %1361 to float
  %1363 = fmul fast float %1360, %1362
  %1364 = call float @dx.op.unary.f32(i32 27, float %1363)  ; Round_ni(value)
  %1365 = fptoui float %1364 to i32
  %1366 = urem i32 %1365, %1299
  %1367 = udiv i32 %1365, %1300
  %1368 = call float @dx.op.unary.f32(i32 22, float %1348)  ; Frc(value)
  %1369 = call float @dx.op.unary.f32(i32 22, float %1349)  ; Frc(value)
  %1370 = uitofp i32 %1366 to float
  %1371 = uitofp i32 %1367 to float
  %1372 = fadd fast float %1368, %1370
  %1373 = fadd fast float %1369, %1371
  %1374 = uitofp i32 %1299 to float
  %1375 = uitofp i32 %1300 to float
  %1376 = fdiv fast float %1372, %1374
  %1377 = fdiv fast float %1373, %1375
  br label %1378

; <label>:1378                                    ; preds = %1353, %1280
  %1379 = phi float [ %1376, %1353 ], [ %1348, %1280 ]
  %1380 = phi float [ %1377, %1353 ], [ %1349, %1280 ]
  %1381 = and i32 %1274, 16777216
  %1382 = icmp eq i32 %1381, 0
  br i1 %1382, label %1492, label %1383

; <label>:1383                                    ; preds = %1378
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1387 = extractvalue %dx.types.CBufRet.f32 %1384, 2
  %1388 = fadd fast float %1385, %161
  %1389 = fadd fast float %1386, %162
  %1390 = fadd fast float %1387, %163
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = icmp eq i32 %57, 65535
  br i1 %1394, label %1489, label %1395

; <label>:1395                                    ; preds = %1383
  %1396 = lshr i32 %57, 1
  %1397 = shl i32 %1396, 2
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = and i32 %57, 1
  %1401 = icmp ne i32 %1400, 0
  %1402 = lshr i32 %1399, 16
  %1403 = and i32 %1399, 65535
  %1404 = select i1 %1401, i32 %1402, i32 %1403
  %1405 = icmp eq i32 %1404, 65535
  br i1 %1405, label %1485, label %1406

; <label>:1406                                    ; preds = %1395
  %1407 = mul nuw nsw i32 %1404, 40
  %1408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = add nuw nsw i32 %1407, 12
  %1413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  %1417 = add nuw nsw i32 %1407, 24
  %1418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.ResRet.f32 %1418, 2
  %1422 = add nuw nsw i32 %1407, 36
  %1423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.f32 %1423, 0
  %1425 = fsub fast float %1388, %1409
  %1426 = fsub fast float %1389, %1410
  %1427 = fsub fast float %1390, %1411
  %1428 = fmul fast float %1424, %1425
  %1429 = fmul fast float %1424, %1426
  %1430 = fmul fast float %1424, %1427
  %1431 = call float @dx.op.unary.f32(i32 27, float %1428)  ; Round_ni(value)
  %1432 = call float @dx.op.unary.f32(i32 27, float %1429)  ; Round_ni(value)
  %1433 = call float @dx.op.unary.f32(i32 27, float %1430)  ; Round_ni(value)
  %1434 = fadd fast float %1431, 5.000000e-01
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = fadd fast float %1433, 5.000000e-01
  %1437 = fmul fast float %1434, %1414
  %1438 = fmul fast float %1435, %1415
  %1439 = fmul fast float %1436, %1416
  %1440 = shl i32 %57, 2
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = add i32 %1442, 0
  %1444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1445 = call float @dx.op.unary.f32(i32 22, float %1437)  ; Frc(value)
  %1446 = call float @dx.op.unary.f32(i32 22, float %1438)  ; Frc(value)
  %1447 = call float @dx.op.unary.f32(i32 22, float %1439)  ; Frc(value)
  %1448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1444, %dx.types.Handle %49, float %1445, float %1446, float %1447, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = fmul fast float %1449, 1.023000e+03
  %1453 = fmul fast float %1450, 1.023000e+03
  %1454 = fmul fast float %1451, 1.023000e+03
  %1455 = fadd fast float %1452, 5.000000e-01
  %1456 = fadd fast float %1453, 5.000000e-01
  %1457 = fadd fast float %1454, 5.000000e-01
  %1458 = call float @dx.op.unary.f32(i32 27, float %1455)  ; Round_ni(value)
  %1459 = call float @dx.op.unary.f32(i32 27, float %1456)  ; Round_ni(value)
  %1460 = call float @dx.op.unary.f32(i32 27, float %1457)  ; Round_ni(value)
  %1461 = fsub fast float %1428, %1431
  %1462 = fsub fast float %1429, %1432
  %1463 = fsub fast float %1430, %1433
  %1464 = fmul fast float %1461, 7.500000e-01
  %1465 = fmul fast float %1462, 7.500000e-01
  %1466 = fmul fast float %1463, 7.500000e-01
  %1467 = fadd fast float %1431, 1.250000e-01
  %1468 = fadd fast float %1467, %1464
  %1469 = fadd fast float %1468, %1458
  %1470 = fadd fast float %1432, 1.250000e-01
  %1471 = fadd fast float %1470, %1465
  %1472 = fadd fast float %1471, %1459
  %1473 = fadd fast float %1433, 1.250000e-01
  %1474 = fadd fast float %1473, %1466
  %1475 = fadd fast float %1474, %1460
  %1476 = fmul fast float %1469, %1419
  %1477 = fmul fast float %1472, %1420
  %1478 = fmul fast float %1475, %1421
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = add i32 %1480, 0
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1482, %dx.types.Handle %47, float %1476, float %1477, float %1478, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  br label %1485

; <label>:1485                                    ; preds = %1406, %1395
  %1486 = phi float [ %1484, %1406 ], [ -1.000000e+00, %1395 ]
  %1487 = fadd fast float %1486, %1393
  %1488 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  br label %1489

; <label>:1489                                    ; preds = %1485, %1383
  %1490 = phi float [ %1488, %1485 ], [ %1393, %1383 ]
  %1491 = fmul fast float %1490, %462
  br label %1492

; <label>:1492                                    ; preds = %1489, %1378
  %1493 = phi float [ %1491, %1489 ], [ %462, %1378 ]
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 256
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1544, label %1498

; <label>:1498                                    ; preds = %1492
  %1499 = add i32 %56, 508
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = add i32 %1501, 0
  %1503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1503, %dx.types.Handle %99, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = add i32 %56, 116
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = shl i32 %1508, 4
  %1510 = and i32 %1509, 32752
  %1511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1510)  ; LegacyF16ToF32(value)
  %1512 = lshr i32 %1508, 7
  %1513 = and i32 %1512, 32752
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = fsub fast float 1.000000e+00, %1493
  %1516 = call float @dx.op.binary.f32(i32 35, float %1515, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1517 = bitcast float %1493 to i32
  %1518 = sitofp i32 %1517 to float
  %1519 = fadd fast float %1518, 0xC1CFBF8940000000
  %1520 = fmul fast float %1514, %1519
  %1521 = fadd fast float %1520, 0x41CFBF8940000000
  %1522 = fptosi float %1521 to i32
  %1523 = bitcast i32 %1522 to float
  %1524 = bitcast float %1516 to i32
  %1525 = sitofp i32 %1524 to float
  %1526 = fadd fast float %1525, 0xC1CFBF8940000000
  %1527 = fmul fast float %1526, %1514
  %1528 = fadd fast float %1527, 0x41CFBF8940000000
  %1529 = fptosi float %1528 to i32
  %1530 = bitcast i32 %1529 to float
  %1531 = fmul fast float %1523, %1511
  %1532 = fmul fast float %1530, %1511
  %1533 = fsub fast float %1516, %1531
  %1534 = fadd fast float %1532, %1516
  %1535 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1536 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1537 = fsub fast float %1505, %1535
  %1538 = fsub fast float %1536, %1535
  %1539 = bitcast float %1538 to i32
  %1540 = sub nsw i32 2129859010, %1539
  %1541 = bitcast i32 %1540 to float
  %1542 = fmul fast float %1541, %1537
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  br label %1544

; <label>:1544                                    ; preds = %1498, %1492
  %1545 = phi float [ %1543, %1498 ], [ %1493, %1492 ]
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 128
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1566, label %1550

; <label>:1550                                    ; preds = %1544
  %1551 = add i32 %56, 492
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %1553, 0
  %1555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1555, %dx.types.Handle %99, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 524288
  %1561 = icmp ne i32 %1560, 0
  %1562 = fcmp fast ogt float %1557, 0x3FE0101020000000
  %1563 = select i1 %1562, float 1.000000e+00, float 0.000000e+00
  %1564 = select i1 %1561, float %1563, float %1557
  %1565 = fmul fast float %1564, %1545
  br label %1566

; <label>:1566                                    ; preds = %1550, %1544
  %1567 = phi float [ %1565, %1550 ], [ %1545, %1544 ]
  %1568 = fcmp fast ult float %1567, 0x3F70101020000000
  br i1 %1568, label %2331, label %1569

; <label>:1569                                    ; preds = %1566
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 16
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1772, label %1574

; <label>:1574                                    ; preds = %1569
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = add i32 %56, 444
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = add i32 %1579, 0
  %1581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1581, %dx.types.Handle %98, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.ResRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.ResRet.f32 %1582, 2
  %1586 = extractvalue %dx.types.ResRet.f32 %1582, 3
  %1587 = and i32 %1576, 255
  %1588 = uitofp i32 %1587 to float
  %1589 = lshr i32 %1576, 8
  %1590 = and i32 %1589, 255
  %1591 = uitofp i32 %1590 to float
  %1592 = fmul fast float %1586, %1588
  %1593 = fadd fast float %1592, %1591
  %1594 = fmul fast float %1593, 0x3F70101000000000
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 512
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1607, label %1599

; <label>:1599                                    ; preds = %1574
  %1600 = add i32 %56, 524
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = add i32 %1602, 0
  %1604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1604, %dx.types.Handle %99, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  br label %1607

; <label>:1607                                    ; preds = %1599, %1574
  %1608 = phi float [ %1606, %1599 ], [ 1.000000e+00, %1574 ]
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 33554432
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1719, label %1613

; <label>:1613                                    ; preds = %1607
  %1614 = add i32 %56, 240
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 65535
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = lshr i32 %1616, 16
  %1620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1619)  ; LegacyF16ToF32(value)
  %1621 = add i32 %56, 244
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 65535
  %1625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1624)  ; LegacyF16ToF32(value)
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = lshr i32 %1627, 24
  %1629 = uitofp i32 %1628 to float
  %1630 = fmul fast float %1629, 0x3F70101020000000
  %1631 = and i32 %1627, 255
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = lshr i32 %1627, 8
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = fmul fast float %1636, 0x3F70101020000000
  %1638 = lshr i32 %1627, 16
  %1639 = and i32 %1638, 255
  %1640 = uitofp i32 %1639 to float
  %1641 = fmul fast float %1640, 0x3F70101020000000
  %1642 = add i32 %56, 236
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = lshr i32 %1644, 24
  %1646 = uitofp i32 %1645 to float
  %1647 = fmul fast float %1646, 0x3F70101020000000
  %1648 = and i32 %1644, 255
  %1649 = uitofp i32 %1648 to float
  %1650 = fmul fast float %1649, 0x3F70101020000000
  %1651 = lshr i32 %1644, 8
  %1652 = and i32 %1651, 255
  %1653 = uitofp i32 %1652 to float
  %1654 = fmul fast float %1653, 0x3F70101020000000
  %1655 = lshr i32 %1644, 16
  %1656 = and i32 %1655, 255
  %1657 = uitofp i32 %1656 to float
  %1658 = fmul fast float %1657, 0x3F70101020000000
  %1659 = bitcast float %1583 to i32
  %1660 = ashr i32 %1659, 1
  %1661 = sub nsw i32 1597463174, %1660
  %1662 = bitcast i32 %1661 to float
  %1663 = fmul fast float %1583, 5.000000e-01
  %1664 = fmul fast float %1662, %1662
  %1665 = fmul fast float %1664, %1663
  %1666 = fsub fast float 1.500000e+00, %1665
  %1667 = fmul fast float %1662, %1583
  %1668 = fmul fast float %1667, %1666
  %1669 = bitcast float %1584 to i32
  %1670 = ashr i32 %1669, 1
  %1671 = sub nsw i32 1597463174, %1670
  %1672 = bitcast i32 %1671 to float
  %1673 = fmul fast float %1584, 5.000000e-01
  %1674 = fmul fast float %1672, %1672
  %1675 = fmul fast float %1674, %1673
  %1676 = fsub fast float 1.500000e+00, %1675
  %1677 = fmul fast float %1672, %1584
  %1678 = fmul fast float %1677, %1676
  %1679 = bitcast float %1585 to i32
  %1680 = ashr i32 %1679, 1
  %1681 = sub nsw i32 1597463174, %1680
  %1682 = bitcast i32 %1681 to float
  %1683 = fmul fast float %1585, 5.000000e-01
  %1684 = fmul fast float %1682, %1682
  %1685 = fmul fast float %1684, %1683
  %1686 = fsub fast float 1.500000e+00, %1685
  %1687 = fmul fast float %1682, %1585
  %1688 = fmul fast float %1687, %1686
  %1689 = fsub fast float %1668, %1650
  %1690 = fsub fast float %1678, %1654
  %1691 = fsub fast float %1688, %1658
  %1692 = fmul fast float %1689, %1618
  %1693 = fmul fast float %1690, %1620
  %1694 = fmul fast float %1691, %1625
  %1695 = fadd fast float %1692, %1633
  %1696 = fadd fast float %1693, %1637
  %1697 = fadd fast float %1694, %1641
  %1698 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1699 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1700 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1701 = fmul fast float %1698, %1698
  %1702 = fmul fast float %1699, %1699
  %1703 = fmul fast float %1700, %1700
  %1704 = fsub fast float %1701, %1583
  %1705 = fsub fast float %1702, %1584
  %1706 = fsub fast float %1703, %1585
  %1707 = fmul fast float %1704, %1608
  %1708 = fmul fast float %1705, %1608
  %1709 = fmul fast float %1706, %1608
  %1710 = fadd fast float %1707, %1583
  %1711 = fadd fast float %1708, %1584
  %1712 = fadd fast float %1709, %1585
  %1713 = fadd fast float %1630, %1594
  %1714 = fsub fast float %1713, %1647
  %1715 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1716 = fsub fast float %1715, %1594
  %1717 = fmul fast float %1716, %1608
  %1718 = fadd fast float %1717, %1594
  br label %1772

; <label>:1719                                    ; preds = %1607
  %1720 = and i32 %1610, 134217728
  %1721 = icmp eq i32 %1720, 0
  br i1 %1721, label %1756, label %1722

; <label>:1722                                    ; preds = %1719
  %1723 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1724 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1725 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1726 = fadd fast float %1723, -5.000000e-01
  %1727 = fadd fast float %1724, -5.000000e-01
  %1728 = fadd fast float %1725, -5.000000e-01
  %1729 = fmul fast float %1726, %1608
  %1730 = fmul fast float %1727, %1608
  %1731 = fmul fast float %1728, %1608
  %1732 = fadd fast float %1729, 5.000000e-01
  %1733 = fadd fast float %1730, 5.000000e-01
  %1734 = fadd fast float %1731, 5.000000e-01
  %1735 = call float @dx.op.unary.f32(i32 24, float %1583)  ; Sqrt(value)
  %1736 = call float @dx.op.unary.f32(i32 24, float %1584)  ; Sqrt(value)
  %1737 = call float @dx.op.unary.f32(i32 24, float %1585)  ; Sqrt(value)
  %1738 = fmul fast float %1732, 2.000000e+00
  %1739 = fsub fast float 1.000000e+00, %1738
  %1740 = fmul fast float %1739, %1735
  %1741 = fadd fast float %1740, %1738
  %1742 = fmul fast float %1741, %1735
  %1743 = fmul fast float %1733, 2.000000e+00
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = fmul fast float %1744, %1736
  %1746 = fadd fast float %1745, %1743
  %1747 = fmul fast float %1746, %1736
  %1748 = fmul fast float %1734, 2.000000e+00
  %1749 = fsub fast float 1.000000e+00, %1748
  %1750 = fmul fast float %1749, %1737
  %1751 = fadd fast float %1750, %1748
  %1752 = fmul fast float %1751, %1737
  %1753 = fmul fast float %1742, %1742
  %1754 = fmul fast float %1747, %1747
  %1755 = fmul fast float %1752, %1752
  br label %1772

; <label>:1756                                    ; preds = %1719
  %1757 = fmul fast float %294, %294
  %1758 = fmul fast float %298, %298
  %1759 = fmul fast float %302, %302
  %1760 = fadd fast float %1757, -1.000000e+00
  %1761 = fadd fast float %1758, -1.000000e+00
  %1762 = fadd fast float %1759, -1.000000e+00
  %1763 = fmul fast float %1608, %1760
  %1764 = fmul fast float %1608, %1761
  %1765 = fmul fast float %1608, %1762
  %1766 = fadd fast float %1763, 1.000000e+00
  %1767 = fadd fast float %1764, 1.000000e+00
  %1768 = fadd fast float %1765, 1.000000e+00
  %1769 = fmul fast float %1766, %1583
  %1770 = fmul fast float %1767, %1584
  %1771 = fmul fast float %1768, %1585
  br label %1772

; <label>:1772                                    ; preds = %1756, %1722, %1613, %1569
  %1773 = phi float [ %1718, %1613 ], [ %1594, %1722 ], [ %1594, %1756 ], [ 0x3FA23C0BE0000000, %1569 ]
  %1774 = phi float [ %1710, %1613 ], [ %1753, %1722 ], [ %1769, %1756 ], [ 1.000000e+00, %1569 ]
  %1775 = phi float [ %1711, %1613 ], [ %1754, %1722 ], [ %1770, %1756 ], [ 1.000000e+00, %1569 ]
  %1776 = phi float [ %1712, %1613 ], [ %1755, %1722 ], [ %1771, %1756 ], [ 1.000000e+00, %1569 ]
  %1777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.i32 %1777, 1
  %1779 = and i32 %1778, 1
  %1780 = icmp ne i32 %1779, 0
  %1781 = add i32 %56, 356
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = and i32 %1783, 32
  %1785 = icmp ne i32 %1784, 0
  %1786 = and i1 %1780, %1785
  %1787 = select i1 %1786, float 1.000000e+00, float %1774
  %1788 = select i1 %1786, float 0x3FD3333340000000, float %1775
  %1789 = select i1 %1786, float 0x3FD3333340000000, float %1776
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = and i32 %1791, 32
  %1793 = icmp eq i32 %1792, 0
  br i1 %1793, label %1866, label %1794

; <label>:1794                                    ; preds = %1772
  %1795 = add i32 %56, 108
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = add i32 %56, 460
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = add i32 %1800, 0
  %1802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1803 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1802, %dx.types.Handle %98, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = extractvalue %dx.types.ResRet.f32 %1803, 1
  %1806 = extractvalue %dx.types.ResRet.f32 %1803, 2
  %1807 = extractvalue %dx.types.ResRet.f32 %1803, 3
  %1808 = and i32 %1797, 255
  %1809 = uitofp i32 %1808 to float
  %1810 = lshr i32 %1797, 8
  %1811 = and i32 %1810, 255
  %1812 = uitofp i32 %1811 to float
  %1813 = lshr i32 %1797, 16
  %1814 = and i32 %1813, 255
  %1815 = uitofp i32 %1814 to float
  %1816 = fmul fast float %1815, 0x3F70101000000000
  %1817 = fmul fast float %1804, %1809
  %1818 = fadd fast float %1817, %1812
  %1819 = fmul fast float %1818, 0x3F70101000000000
  %1820 = fadd fast float %1805, -5.000000e-01
  %1821 = fadd fast float %1807, -5.000000e-01
  %1822 = fmul fast float %1820, %1816
  %1823 = fmul fast float %1821, %1816
  %1824 = fadd fast float %1822, 5.000000e-01
  %1825 = fadd fast float %1823, 5.000000e-01
  %1826 = fmul fast float %1824, 2.000000e+00
  %1827 = fadd fast float %1826, -1.000000e+00
  %1828 = fmul fast float %1825, 2.000000e+00
  %1829 = fadd fast float %1828, -1.000000e+00
  %1830 = fadd fast float %1827, %1829
  %1831 = fmul fast float %1830, 5.000000e-01
  %1832 = fsub fast float %1827, %1829
  %1833 = fmul fast float %1832, 5.000000e-01
  %1834 = call float @dx.op.unary.f32(i32 6, float %1831)  ; FAbs(value)
  %1835 = fsub fast float 1.000000e+00, %1834
  %1836 = call float @dx.op.unary.f32(i32 6, float %1833)  ; FAbs(value)
  %1837 = fsub fast float %1835, %1836
  %1838 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1833, float %1837, float %1831, float %1833, float %1837)  ; Dot3(ax,ay,az,bx,by,bz)
  %1839 = call float @dx.op.unary.f32(i32 25, float %1838)  ; Rsqrt(value)
  %1840 = fmul fast float %1831, %1839
  %1841 = fmul fast float %1833, %1839
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = and i32 %1843, 67108864
  %1845 = icmp eq i32 %1844, 0
  br i1 %1845, label %1862, label %1846

; <label>:1846                                    ; preds = %1794
  %1847 = add i32 %56, 296
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = and i32 %1849, 65535
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 65535
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = lshr i32 %1849, 16
  %1857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1856)  ; LegacyF16ToF32(value)
  %1858 = fsub fast float %1819, %1857
  %1859 = fmul fast float %1858, %1851
  %1860 = fadd fast float %1859, %1855
  %1861 = call float @dx.op.unary.f32(i32 7, float %1860)  ; Saturate(value)
  br label %1862

; <label>:1862                                    ; preds = %1846, %1794
  %1863 = phi float [ %1861, %1846 ], [ %1819, %1794 ]
  %1864 = call float @dx.op.dot2.f32(i32 54, float %1840, float %1841, float %1283, float %1284)  ; Dot2(ax,ay,bx,by)
  %1865 = call float @dx.op.dot2.f32(i32 54, float %1840, float %1841, float %1285, float %1286)  ; Dot2(ax,ay,bx,by)
  br label %1866

; <label>:1866                                    ; preds = %1862, %1772
  %1867 = phi float [ %1863, %1862 ], [ 0x3FD6666660000000, %1772 ]
  %1868 = phi float [ %1864, %1862 ], [ 0.000000e+00, %1772 ]
  %1869 = phi float [ %1865, %1862 ], [ 0.000000e+00, %1772 ]
  %1870 = phi float [ %1806, %1862 ], [ 1.000000e+00, %1772 ]
  %1871 = add i32 %56, 176
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = lshr i32 %1873, 22
  %1875 = shl nuw nsw i32 %1874, 5
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = and i32 %1878, 64
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %1914, label %1881

; <label>:1881                                    ; preds = %1866
  %1882 = add i32 %56, 476
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = add i32 %1884, 0
  %1886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = and i32 %1888, 131072
  %1890 = icmp eq i32 %1889, 0
  %1891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1886, %dx.types.Handle %98, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.ResRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.ResRet.f32 %1891, 2
  %1895 = fmul fast float %1892, %282
  %1896 = fmul fast float %1893, %285
  %1897 = fmul fast float %1894, %288
  br i1 %1890, label %1904, label %1898

; <label>:1898                                    ; preds = %1881
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 0
  %1901 = fmul fast float %1900, %1895
  %1902 = fmul fast float %1900, %1896
  %1903 = fmul fast float %1900, %1897
  br label %1904

; <label>:1904                                    ; preds = %1898, %1881
  %1905 = phi float [ %1901, %1898 ], [ %1895, %1881 ]
  %1906 = phi float [ %1902, %1898 ], [ %1896, %1881 ]
  %1907 = phi float [ %1903, %1898 ], [ %1897, %1881 ]
  %1908 = fmul fast float %1905, %1876
  %1909 = select i1 %223, float %1908, float %1905
  %1910 = call float @dx.op.dot3.f32(i32 55, float %1909, float %1906, float %1907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1911 = select i1 %223, float 0.000000e+00, float %1905
  %1912 = select i1 %223, float %1910, float %1906
  %1913 = select i1 %223, float 0.000000e+00, float %1907
  br label %1914

; <label>:1914                                    ; preds = %1904, %1866
  %1915 = phi float [ %1911, %1904 ], [ 0.000000e+00, %1866 ]
  %1916 = phi float [ %1912, %1904 ], [ 0.000000e+00, %1866 ]
  %1917 = phi float [ %1913, %1904 ], [ 0.000000e+00, %1866 ]
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 1024
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %1952, label %1922

; <label>:1922                                    ; preds = %1914
  %1923 = add i32 %56, 168
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = and i32 %1925, 255
  %1927 = uitofp i32 %1926 to float
  %1928 = fmul fast float %1927, 0x3F70101020000000
  %1929 = lshr i32 %1925, 8
  %1930 = and i32 %1929, 255
  %1931 = uitofp i32 %1930 to float
  %1932 = fmul fast float %1931, 0x3F70101020000000
  %1933 = lshr i32 %1925, 16
  %1934 = and i32 %1933, 255
  %1935 = uitofp i32 %1934 to float
  %1936 = fmul fast float %1935, 0x3F70101020000000
  %1937 = fmul fast float %1928, %1928
  %1938 = fmul fast float %1932, %1932
  %1939 = fmul fast float %1936, %1936
  %1940 = add i32 %56, 540
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = add i32 %1942, 0
  %1944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1943, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1945 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1944, %dx.types.Handle %99, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1946 = extractvalue %dx.types.ResRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.ResRet.f32 %1945, 1
  %1948 = extractvalue %dx.types.ResRet.f32 %1945, 2
  %1949 = fmul fast float %1937, %1946
  %1950 = fmul fast float %1938, %1947
  %1951 = fmul fast float %1939, %1948
  br label %1952

; <label>:1952                                    ; preds = %1922, %1914
  %1953 = phi float [ %1949, %1922 ], [ 0.000000e+00, %1914 ]
  %1954 = phi float [ %1950, %1922 ], [ 0.000000e+00, %1914 ]
  %1955 = phi float [ %1951, %1922 ], [ 0.000000e+00, %1914 ]
  %1956 = fcmp fast ogt float %1953, 0.000000e+00
  %1957 = fcmp fast ogt float %1954, 0.000000e+00
  %1958 = fcmp fast ogt float %1955, 0.000000e+00
  %1959 = call float @dx.op.unary.f32(i32 23, float %1953)  ; Log(value)
  %1960 = call float @dx.op.unary.f32(i32 23, float %1954)  ; Log(value)
  %1961 = call float @dx.op.unary.f32(i32 23, float %1955)  ; Log(value)
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = lshr i32 %1963, 7
  %1965 = and i32 %1964, 32752
  %1966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1965)  ; LegacyF16ToF32(value)
  %1967 = fmul fast float %1959, 0xBFE62E4300000000
  %1968 = fmul fast float %1967, %1966
  %1969 = fmul fast float %1960, 0xBFE62E4300000000
  %1970 = fmul fast float %1969, %1966
  %1971 = fmul fast float %1961, 0xBFE62E4300000000
  %1972 = fmul fast float %1971, %1966
  %1973 = select i1 %1956, float %1968, float 1.270000e+02
  %1974 = select i1 %1957, float %1970, float 1.270000e+02
  %1975 = select i1 %1958, float %1972, float 1.270000e+02
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 26624
  %1979 = icmp eq i32 %1978, 0
  br i1 %1979, label %2037, label %1980

; <label>:1980                                    ; preds = %1952
  %1981 = add i32 %56, 556
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = add i32 %1983, 0
  %1985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1985, %dx.types.Handle %99, float %1379, float %1380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1987 = extractvalue %dx.types.ResRet.f32 %1986, 0
  %1988 = extractvalue %dx.types.ResRet.f32 %1986, 1
  %1989 = extractvalue %dx.types.ResRet.f32 %1986, 3
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = and i32 %1991, 1048576
  %1993 = icmp ne i32 %1992, 0
  %1994 = and i32 %1991, 8192
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2010, label %1996

; <label>:1996                                    ; preds = %1980
  %1997 = extractvalue %dx.types.ResRet.f32 %1986, 2
  %1998 = select i1 %1993, float %1997, float %1988
  %1999 = select i1 %1993, float %1987, float %1988
  %2000 = add i32 %56, 112
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = lshr i32 %2002, 16
  %2004 = and i32 %2003, 255
  %2005 = uitofp i32 %2004 to float
  %2006 = fmul fast float %2005, 0x3F80101020000000
  %2007 = fmul fast float %2006, %1999
  %2008 = fmul fast float %2006, %1988
  %2009 = fmul fast float %2006, %1998
  br label %2010

; <label>:2010                                    ; preds = %1996, %1980
  %2011 = phi float [ %2007, %1996 ], [ 0.000000e+00, %1980 ]
  %2012 = phi float [ %2008, %1996 ], [ 0.000000e+00, %1980 ]
  %2013 = phi float [ %2009, %1996 ], [ 0.000000e+00, %1980 ]
  %2014 = and i32 %1991, 2048
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2024, label %2016

; <label>:2016                                    ; preds = %2010
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = shl i32 %2018, 4
  %2020 = and i32 %2019, 32752
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = fmul fast float %2021, %1989
  %2023 = call float @dx.op.binary.f32(i32 35, float %2022, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2024

; <label>:2024                                    ; preds = %2016, %2010
  %2025 = phi float [ %2023, %2016 ], [ 0x3F70101020000000, %2010 ]
  %2026 = and i32 %1991, 16384
  %2027 = icmp eq i32 %2026, 0
  br i1 %2027, label %2037, label %2028

; <label>:2028                                    ; preds = %2024
  %2029 = add i32 %56, 112
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = lshr i32 %2031, 24
  %2033 = uitofp i32 %2032 to float
  %2034 = fmul fast float %1987, 0x3F70101020000000
  %2035 = select i1 %1993, float 0x3F70101020000000, float %2034
  %2036 = fmul fast float %2035, %2033
  br label %2037

; <label>:2037                                    ; preds = %2028, %2024, %1952
  %2038 = phi float [ %2011, %2028 ], [ %2011, %2024 ], [ 0.000000e+00, %1952 ]
  %2039 = phi float [ %2012, %2028 ], [ %2012, %2024 ], [ 0.000000e+00, %1952 ]
  %2040 = phi float [ %2013, %2028 ], [ %2013, %2024 ], [ 0.000000e+00, %1952 ]
  %2041 = phi float [ %2025, %2028 ], [ %2025, %2024 ], [ 0x3F70101020000000, %1952 ]
  %2042 = phi float [ %2036, %2028 ], [ 0.000000e+00, %2024 ], [ 0.000000e+00, %1952 ]
  %2043 = add i32 %56, 112
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = and i32 %2045, 255
  %2047 = uitofp i32 %2046 to float
  %2048 = lshr i32 %2045, 8
  %2049 = and i32 %2048, 255
  %2050 = uitofp i32 %2049 to float
  %2051 = call float @dx.op.dot3.f32(i32 55, float %1787, float %1788, float %1789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2052 = fmul fast float %2050, %2051
  %2053 = fadd fast float %2052, %2047
  %2054 = fmul fast float %2053, 0x3F70101020000000
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  br i1 %1271, label %2056, label %2091

; <label>:2056                                    ; preds = %2037
  %2057 = fmul fast float %2041, 2.000000e+00
  %2058 = fcmp fast olt float %1973, 1.270000e+02
  %2059 = fcmp fast olt float %1974, 1.270000e+02
  %2060 = fcmp fast olt float %1975, 1.270000e+02
  %2061 = fmul fast float %1973, 0xBFF7154760000000
  %2062 = fmul fast float %2061, %2057
  %2063 = fmul fast float %1974, 0xBFF7154760000000
  %2064 = fmul fast float %2063, %2057
  %2065 = fmul fast float %1975, 0xBFF7154760000000
  %2066 = fmul fast float %2065, %2057
  %2067 = call float @dx.op.unary.f32(i32 21, float %2062)  ; Exp(value)
  %2068 = call float @dx.op.unary.f32(i32 21, float %2064)  ; Exp(value)
  %2069 = call float @dx.op.unary.f32(i32 21, float %2066)  ; Exp(value)
  %2070 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2071 = call float @dx.op.unary.f32(i32 7, float %2068)  ; Saturate(value)
  %2072 = call float @dx.op.unary.f32(i32 7, float %2069)  ; Saturate(value)
  %2073 = fadd fast float %2070, -1.000000e+00
  %2074 = select i1 %2058, float %2073, float -1.000000e+00
  %2075 = fadd fast float %2071, -1.000000e+00
  %2076 = select i1 %2059, float %2075, float -1.000000e+00
  %2077 = fadd fast float %2072, -1.000000e+00
  %2078 = select i1 %2060, float %2077, float -1.000000e+00
  %2079 = fmul fast float %2074, %1567
  %2080 = fmul fast float %2076, %1567
  %2081 = fmul fast float %2078, %1567
  %2082 = fadd fast float %2079, 1.000000e+00
  %2083 = fadd fast float %2080, 1.000000e+00
  %2084 = fadd fast float %2081, 1.000000e+00
  %2085 = fmul fast float %2082, %1251
  %2086 = fmul fast float %2083, %1252
  %2087 = fmul fast float %2084, %1253
  %2088 = fmul fast float %2082, %1254
  %2089 = fmul fast float %2083, %1255
  %2090 = fmul fast float %2084, %1256
  br label %2091

; <label>:2091                                    ; preds = %2056, %2037
  %2092 = phi float [ %2085, %2056 ], [ %1251, %2037 ]
  %2093 = phi float [ %2086, %2056 ], [ %1252, %2037 ]
  %2094 = phi float [ %2087, %2056 ], [ %1253, %2037 ]
  %2095 = phi float [ %2088, %2056 ], [ %1254, %2037 ]
  %2096 = phi float [ %2089, %2056 ], [ %1255, %2037 ]
  %2097 = phi float [ %2090, %2056 ], [ %1256, %2037 ]
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = and i32 %2099, 3
  %2101 = icmp eq i32 %2100, 3
  br i1 %2101, label %2180, label %2102

; <label>:2102                                    ; preds = %2091
  %2103 = and i32 %2099, 16
  %2104 = icmp ne i32 %2103, 0
  %2105 = select i1 %2104, float %1567, float 0.000000e+00
  %2106 = icmp eq i32 %2100, 0
  br i1 %2106, label %2107, label %2135

; <label>:2107                                    ; preds = %2102
  %2108 = and i32 %2099, 64
  %2109 = icmp ne i32 %2108, 0
  %2110 = select i1 %2109, float %1567, float 0.000000e+00
  %2111 = fsub fast float %1787, %2092
  %2112 = fsub fast float %1788, %2093
  %2113 = fsub fast float %1789, %2094
  %2114 = fmul fast float %2105, %2111
  %2115 = fmul fast float %2105, %2112
  %2116 = fmul fast float %2105, %2113
  %2117 = fadd fast float %2114, %2092
  %2118 = fadd fast float %2115, %2093
  %2119 = fadd fast float %2116, %2094
  %2120 = fsub fast float %1773, %1263
  %2121 = fmul fast float %2105, %2120
  %2122 = fadd fast float %2121, %1263
  %2123 = fsub fast float %1915, %2095
  %2124 = fsub fast float %1916, %2096
  %2125 = fsub fast float %1917, %2097
  %2126 = fmul fast float %2110, %2123
  %2127 = fmul fast float %2110, %2124
  %2128 = fmul fast float %2110, %2125
  %2129 = fadd fast float %2126, %2095
  %2130 = fadd fast float %2127, %2096
  %2131 = fadd fast float %2128, %2097
  %2132 = fsub fast float %2055, %1269
  %2133 = fmul fast float %2105, %2132
  %2134 = fadd fast float %2133, %1269
  br label %2180

; <label>:2135                                    ; preds = %2102
  %2136 = icmp eq i32 %2100, 1
  br i1 %2136, label %2137, label %2150

; <label>:2137                                    ; preds = %2135
  %2138 = fadd fast float %1787, -1.000000e+00
  %2139 = fadd fast float %1788, -1.000000e+00
  %2140 = fadd fast float %1789, -1.000000e+00
  %2141 = fmul fast float %2105, %2138
  %2142 = fmul fast float %2105, %2139
  %2143 = fmul fast float %2105, %2140
  %2144 = fadd fast float %2141, 1.000000e+00
  %2145 = fadd fast float %2142, 1.000000e+00
  %2146 = fadd fast float %2143, 1.000000e+00
  %2147 = fmul fast float %2144, %2092
  %2148 = fmul fast float %2145, %2093
  %2149 = fmul fast float %2146, %2094
  br label %2180

; <label>:2150                                    ; preds = %2135
  %2151 = icmp eq i32 %2100, 2
  br i1 %2151, label %2152, label %2180

; <label>:2152                                    ; preds = %2150
  %2153 = call float @dx.op.unary.f32(i32 24, float %1787)  ; Sqrt(value)
  %2154 = call float @dx.op.unary.f32(i32 24, float %1788)  ; Sqrt(value)
  %2155 = call float @dx.op.unary.f32(i32 24, float %1789)  ; Sqrt(value)
  %2156 = fadd fast float %2153, -5.000000e-01
  %2157 = fadd fast float %2154, -5.000000e-01
  %2158 = fadd fast float %2155, -5.000000e-01
  %2159 = fmul fast float %2156, %2105
  %2160 = fmul fast float %2157, %2105
  %2161 = fmul fast float %2158, %2105
  %2162 = fadd fast float %2159, 5.000000e-01
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = fmul fast float %2162, 2.000000e+00
  %2166 = fsub fast float 1.000000e+00, %2165
  %2167 = fmul fast float %2166, %2092
  %2168 = fadd fast float %2167, %2165
  %2169 = fmul fast float %2168, %2092
  %2170 = fmul fast float %2163, 2.000000e+00
  %2171 = fsub fast float 1.000000e+00, %2170
  %2172 = fmul fast float %2171, %2093
  %2173 = fadd fast float %2172, %2170
  %2174 = fmul fast float %2173, %2093
  %2175 = fmul fast float %2164, 2.000000e+00
  %2176 = fsub fast float 1.000000e+00, %2175
  %2177 = fmul fast float %2176, %2094
  %2178 = fadd fast float %2177, %2175
  %2179 = fmul fast float %2178, %2094
  br label %2180

; <label>:2180                                    ; preds = %2152, %2150, %2137, %2107, %2091
  %2181 = phi float [ %2092, %2091 ], [ %2169, %2152 ], [ %2092, %2150 ], [ %2147, %2137 ], [ %2117, %2107 ]
  %2182 = phi float [ %2093, %2091 ], [ %2174, %2152 ], [ %2093, %2150 ], [ %2148, %2137 ], [ %2118, %2107 ]
  %2183 = phi float [ %2094, %2091 ], [ %2179, %2152 ], [ %2094, %2150 ], [ %2149, %2137 ], [ %2119, %2107 ]
  %2184 = phi float [ %2095, %2091 ], [ %2095, %2152 ], [ %2095, %2150 ], [ %2095, %2137 ], [ %2129, %2107 ]
  %2185 = phi float [ %2096, %2091 ], [ %2096, %2152 ], [ %2096, %2150 ], [ %2096, %2137 ], [ %2130, %2107 ]
  %2186 = phi float [ %2097, %2091 ], [ %2097, %2152 ], [ %2097, %2150 ], [ %2097, %2137 ], [ %2131, %2107 ]
  %2187 = phi float [ %1263, %2091 ], [ %1263, %2152 ], [ %1263, %2150 ], [ %1263, %2137 ], [ %2122, %2107 ]
  %2188 = phi float [ %1269, %2091 ], [ %1269, %2152 ], [ %1269, %2150 ], [ %1269, %2137 ], [ %2134, %2107 ]
  %2189 = and i32 %2099, 12
  %2190 = icmp eq i32 %2189, 12
  br i1 %2190, label %2331, label %2191

; <label>:2191                                    ; preds = %2180
  %2192 = and i32 %2099, 2097184
  %2193 = icmp eq i32 %2192, 2097184
  %2194 = select i1 %2193, float %1567, float 0.000000e+00
  %2195 = and i32 %2099, 4194336
  %2196 = icmp eq i32 %2195, 4194336
  %2197 = select i1 %2196, float %1567, float 0.000000e+00
  %2198 = and i32 %2099, 8388640
  %2199 = icmp eq i32 %2198, 8388640
  %2200 = select i1 %2199, float %1567, float 0.000000e+00
  %2201 = and i32 %2099, 1024
  %2202 = icmp ne i32 %2201, 0
  %2203 = select i1 %2202, float %1567, float 0.000000e+00
  %2204 = and i32 %2099, 2048
  %2205 = icmp ne i32 %2204, 0
  %2206 = select i1 %2205, float %1567, float 0.000000e+00
  %2207 = and i32 %2099, 8192
  %2208 = icmp ne i32 %2207, 0
  %2209 = select i1 %2208, float %1567, float 0.000000e+00
  %2210 = and i32 %2099, 16384
  %2211 = icmp ne i32 %2210, 0
  %2212 = select i1 %2211, float %1567, float 0.000000e+00
  %2213 = icmp eq i32 %2189, 0
  br i1 %2213, label %2214, label %2251

; <label>:2214                                    ; preds = %2191
  %2215 = fsub fast float %1868, %1249
  %2216 = fsub fast float %1869, %1250
  %2217 = fmul fast float %2194, %2215
  %2218 = fmul fast float %2194, %2216
  %2219 = fadd fast float %2217, %1249
  %2220 = fadd fast float %2218, %1250
  %2221 = fsub fast float %1870, %1266
  %2222 = fmul fast float %2197, %2221
  %2223 = fadd fast float %2222, %1266
  %2224 = fsub fast float %1867, %1265
  %2225 = fmul fast float %2200, %2224
  %2226 = fadd fast float %2225, %1265
  %2227 = fsub fast float %1973, %1260
  %2228 = fsub fast float %1974, %1261
  %2229 = fsub fast float %1975, %1262
  %2230 = fmul fast float %2203, %2227
  %2231 = fmul fast float %2203, %2228
  %2232 = fmul fast float %2203, %2229
  %2233 = fadd fast float %2230, %1260
  %2234 = fadd fast float %2231, %1261
  %2235 = fadd fast float %2232, %1262
  %2236 = fsub fast float %2041, %1267
  %2237 = fmul fast float %2206, %2236
  %2238 = fadd fast float %2237, %1267
  %2239 = fsub fast float %2038, %1257
  %2240 = fsub fast float %2039, %1258
  %2241 = fsub fast float %2040, %1259
  %2242 = fmul fast float %2209, %2239
  %2243 = fmul fast float %2209, %2240
  %2244 = fmul fast float %2209, %2241
  %2245 = fadd fast float %2242, %1257
  %2246 = fadd fast float %2243, %1258
  %2247 = fadd fast float %2244, %1259
  %2248 = fsub fast float %2042, %1268
  %2249 = fmul fast float %2212, %2248
  %2250 = fadd fast float %2249, %1268
  br label %2331

; <label>:2251                                    ; preds = %2191
  %2252 = icmp eq i32 %2189, 4
  br i1 %2252, label %2253, label %2301

; <label>:2253                                    ; preds = %2251
  %2254 = fmul fast float %2194, %1868
  %2255 = fmul fast float %2194, %1869
  %2256 = fadd fast float %2254, %1249
  %2257 = fadd fast float %2255, %1250
  %2258 = call float @dx.op.binary.f32(i32 36, float %1266, float %1870)  ; FMin(a,b)
  %2259 = fsub fast float %2258, %1266
  %2260 = fmul fast float %2259, %2197
  %2261 = fadd fast float %2260, %1266
  %2262 = fadd fast float %1867, %1265
  %2263 = fmul fast float %2262, 0x3FF337FAE0000000
  %2264 = fmul fast float %1265, %1265
  %2265 = fmul fast float %1867, %1867
  %2266 = fadd fast float %2265, %2264
  %2267 = fmul fast float %2266, 0x3FE5152B00000000
  %2268 = fmul fast float %1265, 0xBFCC1F85E0000000
  %2269 = fmul fast float %2268, %1867
  %2270 = fadd fast float %2269, 0xBFE1363700000000
  %2271 = fadd fast float %2270, %2263
  %2272 = fsub fast float %2271, %2267
  %2273 = fmul fast float %2262, 0x3FBA6F0D00000000
  %2274 = fmul fast float %2266, 0x3FD0432880000000
  %2275 = fmul fast float %1265, 0xBFEF110800000000
  %2276 = fmul fast float %2275, %1867
  %2277 = fadd fast float %2276, 1.000000e+00
  %2278 = fsub fast float %2277, %2273
  %2279 = fadd fast float %2278, %2274
  %2280 = fdiv fast float %2272, %2279
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  %2282 = fsub fast float %2281, %1265
  %2283 = fmul fast float %2282, %2200
  %2284 = fadd fast float %2283, %1265
  %2285 = fmul fast float %2203, %1973
  %2286 = fmul fast float %2203, %1974
  %2287 = fmul fast float %2203, %1975
  %2288 = fadd fast float %2285, %1260
  %2289 = fadd fast float %2286, %1261
  %2290 = fadd fast float %2287, %1262
  %2291 = fmul fast float %2206, %2041
  %2292 = fadd fast float %2291, %1267
  %2293 = fmul fast float %2209, %2038
  %2294 = fmul fast float %2209, %2039
  %2295 = fmul fast float %2209, %2040
  %2296 = fadd fast float %2293, %1257
  %2297 = fadd fast float %2294, %1258
  %2298 = fadd fast float %2295, %1259
  %2299 = fmul fast float %2212, %2042
  %2300 = fadd fast float %2299, %1268
  br label %2331

; <label>:2301                                    ; preds = %2251
  %2302 = icmp eq i32 %2189, 8
  br i1 %2302, label %2303, label %2331

; <label>:2303                                    ; preds = %2301
  %2304 = fmul fast float %2194, %1868
  %2305 = fmul fast float %2194, %1869
  %2306 = fadd fast float %2304, %1249
  %2307 = fadd fast float %2305, %1250
  %2308 = call float @dx.op.binary.f32(i32 36, float %1266, float %1870)  ; FMin(a,b)
  %2309 = fsub fast float %2308, %1266
  %2310 = fmul fast float %2309, %2197
  %2311 = fadd fast float %2310, %1266
  %2312 = fsub fast float %1867, %1265
  %2313 = fmul fast float %2200, %2312
  %2314 = fadd fast float %2313, %1265
  %2315 = fmul fast float %2203, %1973
  %2316 = fmul fast float %2203, %1974
  %2317 = fmul fast float %2203, %1975
  %2318 = fadd fast float %2315, %1260
  %2319 = fadd fast float %2316, %1261
  %2320 = fadd fast float %2317, %1262
  %2321 = fmul fast float %2206, %2041
  %2322 = fadd fast float %2321, %1267
  %2323 = fmul fast float %2209, %2038
  %2324 = fmul fast float %2209, %2039
  %2325 = fmul fast float %2209, %2040
  %2326 = fadd fast float %2323, %1257
  %2327 = fadd fast float %2324, %1258
  %2328 = fadd fast float %2325, %1259
  %2329 = fmul fast float %2212, %2042
  %2330 = fadd fast float %2329, %1268
  br label %2331

; <label>:2331                                    ; preds = %2303, %2301, %2253, %2214, %2180, %1566, %1270, %1248
  %2332 = phi float [ %1249, %2180 ], [ %1249, %1566 ], [ %1249, %1248 ], [ %2306, %2303 ], [ %1249, %2301 ], [ %2256, %2253 ], [ %2219, %2214 ], [ %1249, %1270 ]
  %2333 = phi float [ %1250, %2180 ], [ %1250, %1566 ], [ %1250, %1248 ], [ %2307, %2303 ], [ %1250, %2301 ], [ %2257, %2253 ], [ %2220, %2214 ], [ %1250, %1270 ]
  %2334 = phi float [ %2181, %2180 ], [ %1251, %1566 ], [ %1251, %1248 ], [ %2181, %2303 ], [ %2181, %2301 ], [ %2181, %2253 ], [ %2181, %2214 ], [ %1251, %1270 ]
  %2335 = phi float [ %2182, %2180 ], [ %1252, %1566 ], [ %1252, %1248 ], [ %2182, %2303 ], [ %2182, %2301 ], [ %2182, %2253 ], [ %2182, %2214 ], [ %1252, %1270 ]
  %2336 = phi float [ %2183, %2180 ], [ %1253, %1566 ], [ %1253, %1248 ], [ %2183, %2303 ], [ %2183, %2301 ], [ %2183, %2253 ], [ %2183, %2214 ], [ %1253, %1270 ]
  %2337 = phi float [ %2184, %2180 ], [ %1254, %1566 ], [ %1254, %1248 ], [ %2184, %2303 ], [ %2184, %2301 ], [ %2184, %2253 ], [ %2184, %2214 ], [ %1254, %1270 ]
  %2338 = phi float [ %2185, %2180 ], [ %1255, %1566 ], [ %1255, %1248 ], [ %2185, %2303 ], [ %2185, %2301 ], [ %2185, %2253 ], [ %2185, %2214 ], [ %1255, %1270 ]
  %2339 = phi float [ %2186, %2180 ], [ %1256, %1566 ], [ %1256, %1248 ], [ %2186, %2303 ], [ %2186, %2301 ], [ %2186, %2253 ], [ %2186, %2214 ], [ %1256, %1270 ]
  %2340 = phi float [ %1257, %2180 ], [ %1257, %1566 ], [ %1257, %1248 ], [ %2326, %2303 ], [ %1257, %2301 ], [ %2296, %2253 ], [ %2245, %2214 ], [ %1257, %1270 ]
  %2341 = phi float [ %1258, %2180 ], [ %1258, %1566 ], [ %1258, %1248 ], [ %2327, %2303 ], [ %1258, %2301 ], [ %2297, %2253 ], [ %2246, %2214 ], [ %1258, %1270 ]
  %2342 = phi float [ %1259, %2180 ], [ %1259, %1566 ], [ %1259, %1248 ], [ %2328, %2303 ], [ %1259, %2301 ], [ %2298, %2253 ], [ %2247, %2214 ], [ %1259, %1270 ]
  %2343 = phi float [ %1260, %2180 ], [ %1260, %1566 ], [ %1260, %1248 ], [ %2318, %2303 ], [ %1260, %2301 ], [ %2288, %2253 ], [ %2233, %2214 ], [ %1260, %1270 ]
  %2344 = phi float [ %1261, %2180 ], [ %1261, %1566 ], [ %1261, %1248 ], [ %2319, %2303 ], [ %1261, %2301 ], [ %2289, %2253 ], [ %2234, %2214 ], [ %1261, %1270 ]
  %2345 = phi float [ %1262, %2180 ], [ %1262, %1566 ], [ %1262, %1248 ], [ %2320, %2303 ], [ %1262, %2301 ], [ %2290, %2253 ], [ %2235, %2214 ], [ %1262, %1270 ]
  %2346 = phi float [ %2187, %2180 ], [ %1263, %1566 ], [ %1263, %1248 ], [ %2187, %2303 ], [ %2187, %2301 ], [ %2187, %2253 ], [ %2187, %2214 ], [ %1263, %1270 ]
  %2347 = phi float [ %1265, %2180 ], [ %1265, %1566 ], [ %1265, %1248 ], [ %2314, %2303 ], [ %1265, %2301 ], [ %2284, %2253 ], [ %2226, %2214 ], [ %1265, %1270 ]
  %2348 = phi float [ %1266, %2180 ], [ %1266, %1566 ], [ %1266, %1248 ], [ %2311, %2303 ], [ %1266, %2301 ], [ %2261, %2253 ], [ %2223, %2214 ], [ %1266, %1270 ]
  %2349 = phi float [ %1267, %2180 ], [ %1267, %1566 ], [ %1267, %1248 ], [ %2322, %2303 ], [ %1267, %2301 ], [ %2292, %2253 ], [ %2238, %2214 ], [ %1267, %1270 ]
  %2350 = phi float [ %1268, %2180 ], [ %1268, %1566 ], [ %1268, %1248 ], [ %2330, %2303 ], [ %1268, %2301 ], [ %2300, %2253 ], [ %2250, %2214 ], [ %1268, %1270 ]
  %2351 = phi float [ %2188, %2180 ], [ %1269, %1566 ], [ %1269, %1248 ], [ %2188, %2303 ], [ %2188, %2301 ], [ %2188, %2253 ], [ %2188, %2214 ], [ %1269, %1270 ]
  br i1 %409, label %3413, label %2352

; <label>:2352                                    ; preds = %2331
  %2353 = icmp ult i32 %465, 3
  %2354 = add i32 %56, 56
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = add i32 %56, 60
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = or i32 %2359, %2356
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %3413, label %2362

; <label>:2362                                    ; preds = %2352
  %2363 = and i32 %2356, 262144
  %2364 = icmp ne i32 %2363, 0
  %2365 = select i1 %2364, float %59, float 1.000000e+00
  %2366 = select i1 %2364, float %60, float 0.000000e+00
  %2367 = select i1 %2364, float %61, float 0.000000e+00
  %2368 = select i1 %2364, float %62, float 1.000000e+00
  %2369 = select i1 %2364, float %63, float %84
  %2370 = select i1 %2364, float %64, float %85
  %2371 = add i32 %56, 316
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = lshr i32 %2373, 16
  %2375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2374)  ; LegacyF16ToF32(value)
  %2376 = fmul fast float %2375, 0x3F50624DE0000000
  %2377 = add i32 %56, 120
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = lshr i32 %2379, 16
  %2381 = and i32 %2380, 255
  %2382 = lshr i32 %2379, 24
  %2383 = add i32 %56, 324
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 65535
  %2387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2386)  ; LegacyF16ToF32(value)
  %2388 = lshr i32 %2385, 16
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = add i32 %56, 64
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = lshr i32 %2392, 22
  %2394 = shl nuw nsw i32 %2393, 5
  %2395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2394)  ; LegacyF16ToF32(value)
  %2396 = shl i32 %2392, 4
  %2397 = and i32 %2396, 32752
  %2398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2397)  ; LegacyF16ToF32(value)
  %2399 = lshr i32 %2392, 7
  %2400 = and i32 %2399, 32752
  %2401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2400)  ; LegacyF16ToF32(value)
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 3
  %2404 = fmul fast float %2403, 1.000000e+03
  %2405 = fmul fast float %359, %2404
  %2406 = call float @dx.op.unary.f32(i32 22, float %2405)  ; Frc(value)
  %2407 = fadd fast float %2406, %349
  %2408 = fmul fast float %360, %2404
  %2409 = call float @dx.op.unary.f32(i32 22, float %2408)  ; Frc(value)
  %2410 = fadd fast float %2409, %351
  %2411 = fmul fast float %2376, %2404
  %2412 = call float @dx.op.unary.f32(i32 22, float %2411)  ; Frc(value)
  %2413 = fmul fast float %2412, 0x401921FB60000000
  %2414 = fadd fast float %2413, %2395
  %2415 = call float @dx.op.unary.f32(i32 13, float %2414)  ; Sin(value)
  %2416 = call float @dx.op.unary.f32(i32 12, float %2414)  ; Cos(value)
  %2417 = fsub fast float -0.000000e+00, %2415
  %2418 = fadd fast float %2369, -5.000000e-01
  %2419 = fadd fast float %2370, -5.000000e-01
  %2420 = fmul fast float %2387, %2418
  %2421 = fmul fast float %2389, %2419
  %2422 = fadd fast float %2420, 5.000000e-01
  %2423 = fadd fast float %2421, 5.000000e-01
  %2424 = fmul fast float %2398, %2422
  %2425 = fmul fast float %2401, %2423
  %2426 = fmul fast float %2416, %2424
  %2427 = call float @dx.op.tertiary.f32(i32 46, float %2417, float %2425, float %2426)  ; FMad(a,b,c)
  %2428 = fmul fast float %2415, %2424
  %2429 = call float @dx.op.tertiary.f32(i32 46, float %2416, float %2425, float %2428)  ; FMad(a,b,c)
  %2430 = fadd fast float %2407, %2427
  %2431 = fadd fast float %2410, %2429
  %2432 = icmp ugt i32 %2381, 1
  %2433 = icmp ugt i32 %2379, 33554431
  %2434 = or i1 %2433, %2432
  br i1 %2434, label %2435, label %2460

; <label>:2435                                    ; preds = %2362
  %2436 = add i32 %56, 260
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = lshr i32 %2438, 16
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = fmul fast float %2403, %2440
  %2442 = call float @dx.op.unary.f32(i32 22, float %2441)  ; Frc(value)
  %2443 = mul nuw nsw i32 %2381, %2382
  %2444 = uitofp i32 %2443 to float
  %2445 = fmul fast float %2442, %2444
  %2446 = call float @dx.op.unary.f32(i32 27, float %2445)  ; Round_ni(value)
  %2447 = fptoui float %2446 to i32
  %2448 = urem i32 %2447, %2381
  %2449 = udiv i32 %2447, %2382
  %2450 = call float @dx.op.unary.f32(i32 22, float %2430)  ; Frc(value)
  %2451 = call float @dx.op.unary.f32(i32 22, float %2431)  ; Frc(value)
  %2452 = uitofp i32 %2448 to float
  %2453 = uitofp i32 %2449 to float
  %2454 = fadd fast float %2450, %2452
  %2455 = fadd fast float %2451, %2453
  %2456 = uitofp i32 %2381 to float
  %2457 = uitofp i32 %2382 to float
  %2458 = fdiv fast float %2454, %2456
  %2459 = fdiv fast float %2455, %2457
  br label %2460

; <label>:2460                                    ; preds = %2435, %2362
  %2461 = phi float [ %2458, %2435 ], [ %2430, %2362 ]
  %2462 = phi float [ %2459, %2435 ], [ %2431, %2362 ]
  %2463 = and i32 %2356, 16777216
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2574, label %2465

; <label>:2465                                    ; preds = %2460
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2468 = extractvalue %dx.types.CBufRet.f32 %2466, 1
  %2469 = extractvalue %dx.types.CBufRet.f32 %2466, 2
  %2470 = fadd fast float %2467, %161
  %2471 = fadd fast float %2468, %162
  %2472 = fadd fast float %2469, %163
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2475 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  %2476 = icmp eq i32 %57, 65535
  br i1 %2476, label %2571, label %2477

; <label>:2477                                    ; preds = %2465
  %2478 = lshr i32 %57, 1
  %2479 = shl i32 %2478, 2
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %57, 1
  %2483 = icmp ne i32 %2482, 0
  %2484 = lshr i32 %2481, 16
  %2485 = and i32 %2481, 65535
  %2486 = select i1 %2483, i32 %2484, i32 %2485
  %2487 = icmp eq i32 %2486, 65535
  br i1 %2487, label %2567, label %2488

; <label>:2488                                    ; preds = %2477
  %2489 = mul nuw nsw i32 %2486, 40
  %2490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2490, 2
  %2494 = add nuw nsw i32 %2489, 12
  %2495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.ResRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.ResRet.f32 %2495, 2
  %2499 = add nuw nsw i32 %2489, 24
  %2500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.ResRet.f32 %2500, 1
  %2503 = extractvalue %dx.types.ResRet.f32 %2500, 2
  %2504 = add nuw nsw i32 %2489, 36
  %2505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.f32 %2505, 0
  %2507 = fsub fast float %2470, %2491
  %2508 = fsub fast float %2471, %2492
  %2509 = fsub fast float %2472, %2493
  %2510 = fmul fast float %2506, %2507
  %2511 = fmul fast float %2506, %2508
  %2512 = fmul fast float %2506, %2509
  %2513 = call float @dx.op.unary.f32(i32 27, float %2510)  ; Round_ni(value)
  %2514 = call float @dx.op.unary.f32(i32 27, float %2511)  ; Round_ni(value)
  %2515 = call float @dx.op.unary.f32(i32 27, float %2512)  ; Round_ni(value)
  %2516 = fadd fast float %2513, 5.000000e-01
  %2517 = fadd fast float %2514, 5.000000e-01
  %2518 = fadd fast float %2515, 5.000000e-01
  %2519 = fmul fast float %2516, %2496
  %2520 = fmul fast float %2517, %2497
  %2521 = fmul fast float %2518, %2498
  %2522 = shl i32 %57, 2
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = add i32 %2524, 0
  %2526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2527 = call float @dx.op.unary.f32(i32 22, float %2519)  ; Frc(value)
  %2528 = call float @dx.op.unary.f32(i32 22, float %2520)  ; Frc(value)
  %2529 = call float @dx.op.unary.f32(i32 22, float %2521)  ; Frc(value)
  %2530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2526, %dx.types.Handle %49, float %2527, float %2528, float %2529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2531 = extractvalue %dx.types.ResRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.ResRet.f32 %2530, 1
  %2533 = extractvalue %dx.types.ResRet.f32 %2530, 2
  %2534 = fmul fast float %2531, 1.023000e+03
  %2535 = fmul fast float %2532, 1.023000e+03
  %2536 = fmul fast float %2533, 1.023000e+03
  %2537 = fadd fast float %2534, 5.000000e-01
  %2538 = fadd fast float %2535, 5.000000e-01
  %2539 = fadd fast float %2536, 5.000000e-01
  %2540 = call float @dx.op.unary.f32(i32 27, float %2537)  ; Round_ni(value)
  %2541 = call float @dx.op.unary.f32(i32 27, float %2538)  ; Round_ni(value)
  %2542 = call float @dx.op.unary.f32(i32 27, float %2539)  ; Round_ni(value)
  %2543 = fsub fast float %2510, %2513
  %2544 = fsub fast float %2511, %2514
  %2545 = fsub fast float %2512, %2515
  %2546 = fmul fast float %2543, 7.500000e-01
  %2547 = fmul fast float %2544, 7.500000e-01
  %2548 = fmul fast float %2545, 7.500000e-01
  %2549 = fadd fast float %2513, 1.250000e-01
  %2550 = fadd fast float %2549, %2546
  %2551 = fadd fast float %2550, %2540
  %2552 = fadd fast float %2514, 1.250000e-01
  %2553 = fadd fast float %2552, %2547
  %2554 = fadd fast float %2553, %2541
  %2555 = fadd fast float %2515, 1.250000e-01
  %2556 = fadd fast float %2555, %2548
  %2557 = fadd fast float %2556, %2542
  %2558 = fmul fast float %2551, %2501
  %2559 = fmul fast float %2554, %2502
  %2560 = fmul fast float %2557, %2503
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = add i32 %2562, 0
  %2564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2564, %dx.types.Handle %47, float %2558, float %2559, float %2560, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2566 = extractvalue %dx.types.ResRet.f32 %2565, 0
  br label %2567

; <label>:2567                                    ; preds = %2488, %2477
  %2568 = phi float [ %2566, %2488 ], [ -1.000000e+00, %2477 ]
  %2569 = fadd fast float %2568, %2475
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  br label %2571

; <label>:2571                                    ; preds = %2567, %2465
  %2572 = phi float [ %2570, %2567 ], [ %2475, %2465 ]
  %2573 = fmul fast float %2572, %461
  br label %2574

; <label>:2574                                    ; preds = %2571, %2460
  %2575 = phi float [ %2573, %2571 ], [ %461, %2460 ]
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 256
  %2579 = icmp eq i32 %2578, 0
  br i1 %2579, label %2626, label %2580

; <label>:2580                                    ; preds = %2574
  %2581 = add i32 %56, 512
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = add i32 %2583, 0
  %2585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2584, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2585, %dx.types.Handle %99, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = add i32 %56, 132
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = shl i32 %2590, 4
  %2592 = and i32 %2591, 32752
  %2593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2592)  ; LegacyF16ToF32(value)
  %2594 = lshr i32 %2590, 7
  %2595 = and i32 %2594, 32752
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = fsub fast float 1.000000e+00, %2575
  %2598 = call float @dx.op.binary.f32(i32 35, float %2597, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2599 = bitcast float %2575 to i32
  %2600 = sitofp i32 %2599 to float
  %2601 = fadd fast float %2600, 0xC1CFBF8940000000
  %2602 = fmul fast float %2596, %2601
  %2603 = fadd fast float %2602, 0x41CFBF8940000000
  %2604 = fptosi float %2603 to i32
  %2605 = bitcast i32 %2604 to float
  %2606 = bitcast float %2598 to i32
  %2607 = sitofp i32 %2606 to float
  %2608 = fadd fast float %2607, 0xC1CFBF8940000000
  %2609 = fmul fast float %2608, %2596
  %2610 = fadd fast float %2609, 0x41CFBF8940000000
  %2611 = fptosi float %2610 to i32
  %2612 = bitcast i32 %2611 to float
  %2613 = fmul fast float %2605, %2593
  %2614 = fmul fast float %2612, %2593
  %2615 = fsub fast float %2598, %2613
  %2616 = fadd fast float %2614, %2598
  %2617 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2618 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2619 = fsub fast float %2587, %2617
  %2620 = fsub fast float %2618, %2617
  %2621 = bitcast float %2620 to i32
  %2622 = sub nsw i32 2129859010, %2621
  %2623 = bitcast i32 %2622 to float
  %2624 = fmul fast float %2623, %2619
  %2625 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  br label %2626

; <label>:2626                                    ; preds = %2580, %2574
  %2627 = phi float [ %2625, %2580 ], [ %2575, %2574 ]
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 128
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2648, label %2632

; <label>:2632                                    ; preds = %2626
  %2633 = add i32 %56, 496
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = add i32 %2635, 0
  %2637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2637, %dx.types.Handle %99, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 524288
  %2643 = icmp ne i32 %2642, 0
  %2644 = fcmp fast ogt float %2639, 0x3FE0101020000000
  %2645 = select i1 %2644, float 1.000000e+00, float 0.000000e+00
  %2646 = select i1 %2643, float %2645, float %2639
  %2647 = fmul fast float %2646, %2627
  br label %2648

; <label>:2648                                    ; preds = %2632, %2626
  %2649 = phi float [ %2647, %2632 ], [ %2627, %2626 ]
  %2650 = fcmp fast ult float %2649, 0x3F70101020000000
  br i1 %2650, label %3413, label %2651

; <label>:2651                                    ; preds = %2648
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = and i32 %2653, 16
  %2655 = icmp eq i32 %2654, 0
  br i1 %2655, label %2854, label %2656

; <label>:2656                                    ; preds = %2651
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = add i32 %56, 448
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = add i32 %2661, 0
  %2663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2663, %dx.types.Handle %98, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.ResRet.f32 %2664, 1
  %2667 = extractvalue %dx.types.ResRet.f32 %2664, 2
  %2668 = extractvalue %dx.types.ResRet.f32 %2664, 3
  %2669 = and i32 %2658, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = lshr i32 %2658, 8
  %2672 = and i32 %2671, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2668, %2670
  %2675 = fadd fast float %2674, %2673
  %2676 = fmul fast float %2675, 0x3F70101000000000
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 512
  %2680 = icmp eq i32 %2679, 0
  br i1 %2680, label %2689, label %2681

; <label>:2681                                    ; preds = %2656
  %2682 = add i32 %56, 528
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2682, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = add i32 %2684, 0
  %2686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2686, %dx.types.Handle %99, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2688 = extractvalue %dx.types.ResRet.f32 %2687, 0
  br label %2689

; <label>:2689                                    ; preds = %2681, %2656
  %2690 = phi float [ %2688, %2681 ], [ 1.000000e+00, %2656 ]
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %2692, 33554432
  %2694 = icmp eq i32 %2693, 0
  br i1 %2694, label %2801, label %2695

; <label>:2695                                    ; preds = %2689
  %2696 = add i32 %56, 256
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 65535
  %2700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2699)  ; LegacyF16ToF32(value)
  %2701 = lshr i32 %2698, 16
  %2702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2701)  ; LegacyF16ToF32(value)
  %2703 = add i32 %56, 260
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = and i32 %2705, 65535
  %2707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2706)  ; LegacyF16ToF32(value)
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = lshr i32 %2709, 24
  %2711 = uitofp i32 %2710 to float
  %2712 = fmul fast float %2711, 0x3F70101020000000
  %2713 = and i32 %2709, 255
  %2714 = uitofp i32 %2713 to float
  %2715 = fmul fast float %2714, 0x3F70101020000000
  %2716 = lshr i32 %2709, 8
  %2717 = and i32 %2716, 255
  %2718 = uitofp i32 %2717 to float
  %2719 = fmul fast float %2718, 0x3F70101020000000
  %2720 = lshr i32 %2709, 16
  %2721 = and i32 %2720, 255
  %2722 = uitofp i32 %2721 to float
  %2723 = fmul fast float %2722, 0x3F70101020000000
  %2724 = add i32 %56, 252
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = lshr i32 %2726, 24
  %2728 = uitofp i32 %2727 to float
  %2729 = fmul fast float %2728, 0x3F70101020000000
  %2730 = and i32 %2726, 255
  %2731 = uitofp i32 %2730 to float
  %2732 = fmul fast float %2731, 0x3F70101020000000
  %2733 = lshr i32 %2726, 8
  %2734 = and i32 %2733, 255
  %2735 = uitofp i32 %2734 to float
  %2736 = fmul fast float %2735, 0x3F70101020000000
  %2737 = lshr i32 %2726, 16
  %2738 = and i32 %2737, 255
  %2739 = uitofp i32 %2738 to float
  %2740 = fmul fast float %2739, 0x3F70101020000000
  %2741 = bitcast float %2665 to i32
  %2742 = ashr i32 %2741, 1
  %2743 = sub nsw i32 1597463174, %2742
  %2744 = bitcast i32 %2743 to float
  %2745 = fmul fast float %2665, 5.000000e-01
  %2746 = fmul fast float %2744, %2744
  %2747 = fmul fast float %2746, %2745
  %2748 = fsub fast float 1.500000e+00, %2747
  %2749 = fmul fast float %2744, %2665
  %2750 = fmul fast float %2749, %2748
  %2751 = bitcast float %2666 to i32
  %2752 = ashr i32 %2751, 1
  %2753 = sub nsw i32 1597463174, %2752
  %2754 = bitcast i32 %2753 to float
  %2755 = fmul fast float %2666, 5.000000e-01
  %2756 = fmul fast float %2754, %2754
  %2757 = fmul fast float %2756, %2755
  %2758 = fsub fast float 1.500000e+00, %2757
  %2759 = fmul fast float %2754, %2666
  %2760 = fmul fast float %2759, %2758
  %2761 = bitcast float %2667 to i32
  %2762 = ashr i32 %2761, 1
  %2763 = sub nsw i32 1597463174, %2762
  %2764 = bitcast i32 %2763 to float
  %2765 = fmul fast float %2667, 5.000000e-01
  %2766 = fmul fast float %2764, %2764
  %2767 = fmul fast float %2766, %2765
  %2768 = fsub fast float 1.500000e+00, %2767
  %2769 = fmul fast float %2764, %2667
  %2770 = fmul fast float %2769, %2768
  %2771 = fsub fast float %2750, %2732
  %2772 = fsub fast float %2760, %2736
  %2773 = fsub fast float %2770, %2740
  %2774 = fmul fast float %2771, %2700
  %2775 = fmul fast float %2772, %2702
  %2776 = fmul fast float %2773, %2707
  %2777 = fadd fast float %2774, %2715
  %2778 = fadd fast float %2775, %2719
  %2779 = fadd fast float %2776, %2723
  %2780 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2781 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  %2782 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2783 = fmul fast float %2780, %2780
  %2784 = fmul fast float %2781, %2781
  %2785 = fmul fast float %2782, %2782
  %2786 = fsub fast float %2783, %2665
  %2787 = fsub fast float %2784, %2666
  %2788 = fsub fast float %2785, %2667
  %2789 = fmul fast float %2786, %2690
  %2790 = fmul fast float %2787, %2690
  %2791 = fmul fast float %2788, %2690
  %2792 = fadd fast float %2789, %2665
  %2793 = fadd fast float %2790, %2666
  %2794 = fadd fast float %2791, %2667
  %2795 = fadd fast float %2712, %2676
  %2796 = fsub fast float %2795, %2729
  %2797 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2798 = fsub fast float %2797, %2676
  %2799 = fmul fast float %2798, %2690
  %2800 = fadd fast float %2799, %2676
  br label %2854

; <label>:2801                                    ; preds = %2689
  %2802 = and i32 %2692, 134217728
  %2803 = icmp eq i32 %2802, 0
  br i1 %2803, label %2838, label %2804

; <label>:2804                                    ; preds = %2801
  %2805 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2806 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2807 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2808 = fadd fast float %2805, -5.000000e-01
  %2809 = fadd fast float %2806, -5.000000e-01
  %2810 = fadd fast float %2807, -5.000000e-01
  %2811 = fmul fast float %2808, %2690
  %2812 = fmul fast float %2809, %2690
  %2813 = fmul fast float %2810, %2690
  %2814 = fadd fast float %2811, 5.000000e-01
  %2815 = fadd fast float %2812, 5.000000e-01
  %2816 = fadd fast float %2813, 5.000000e-01
  %2817 = call float @dx.op.unary.f32(i32 24, float %2665)  ; Sqrt(value)
  %2818 = call float @dx.op.unary.f32(i32 24, float %2666)  ; Sqrt(value)
  %2819 = call float @dx.op.unary.f32(i32 24, float %2667)  ; Sqrt(value)
  %2820 = fmul fast float %2814, 2.000000e+00
  %2821 = fsub fast float 1.000000e+00, %2820
  %2822 = fmul fast float %2821, %2817
  %2823 = fadd fast float %2822, %2820
  %2824 = fmul fast float %2823, %2817
  %2825 = fmul fast float %2815, 2.000000e+00
  %2826 = fsub fast float 1.000000e+00, %2825
  %2827 = fmul fast float %2826, %2818
  %2828 = fadd fast float %2827, %2825
  %2829 = fmul fast float %2828, %2818
  %2830 = fmul fast float %2816, 2.000000e+00
  %2831 = fsub fast float 1.000000e+00, %2830
  %2832 = fmul fast float %2831, %2819
  %2833 = fadd fast float %2832, %2830
  %2834 = fmul fast float %2833, %2819
  %2835 = fmul fast float %2824, %2824
  %2836 = fmul fast float %2829, %2829
  %2837 = fmul fast float %2834, %2834
  br label %2854

; <label>:2838                                    ; preds = %2801
  %2839 = fmul fast float %336, %336
  %2840 = fmul fast float %340, %340
  %2841 = fmul fast float %344, %344
  %2842 = fadd fast float %2839, -1.000000e+00
  %2843 = fadd fast float %2840, -1.000000e+00
  %2844 = fadd fast float %2841, -1.000000e+00
  %2845 = fmul fast float %2690, %2842
  %2846 = fmul fast float %2690, %2843
  %2847 = fmul fast float %2690, %2844
  %2848 = fadd fast float %2845, 1.000000e+00
  %2849 = fadd fast float %2846, 1.000000e+00
  %2850 = fadd fast float %2847, 1.000000e+00
  %2851 = fmul fast float %2848, %2665
  %2852 = fmul fast float %2849, %2666
  %2853 = fmul fast float %2850, %2667
  br label %2854

; <label>:2854                                    ; preds = %2838, %2804, %2695, %2651
  %2855 = phi float [ %2800, %2695 ], [ %2676, %2804 ], [ %2676, %2838 ], [ 0x3FA23C0BE0000000, %2651 ]
  %2856 = phi float [ %2792, %2695 ], [ %2835, %2804 ], [ %2851, %2838 ], [ 1.000000e+00, %2651 ]
  %2857 = phi float [ %2793, %2695 ], [ %2836, %2804 ], [ %2852, %2838 ], [ 1.000000e+00, %2651 ]
  %2858 = phi float [ %2794, %2695 ], [ %2837, %2804 ], [ %2853, %2838 ], [ 1.000000e+00, %2651 ]
  %2859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.i32 %2859, 1
  %2861 = and i32 %2860, 1
  %2862 = icmp ne i32 %2861, 0
  %2863 = add i32 %56, 356
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = and i32 %2865, 32
  %2867 = icmp ne i32 %2866, 0
  %2868 = and i1 %2862, %2867
  %2869 = select i1 %2868, float 1.000000e+00, float %2856
  %2870 = select i1 %2868, float 0x3FD3333340000000, float %2857
  %2871 = select i1 %2868, float 0x3FD3333340000000, float %2858
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 32
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2948, label %2876

; <label>:2876                                    ; preds = %2854
  %2877 = add i32 %56, 124
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = add i32 %56, 464
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = add i32 %2882, 0
  %2884 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2883, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2884, %dx.types.Handle %98, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = extractvalue %dx.types.ResRet.f32 %2885, 3
  %2890 = and i32 %2879, 255
  %2891 = uitofp i32 %2890 to float
  %2892 = lshr i32 %2879, 8
  %2893 = and i32 %2892, 255
  %2894 = uitofp i32 %2893 to float
  %2895 = lshr i32 %2879, 16
  %2896 = and i32 %2895, 255
  %2897 = uitofp i32 %2896 to float
  %2898 = fmul fast float %2897, 0x3F70101000000000
  %2899 = fmul fast float %2886, %2891
  %2900 = fadd fast float %2899, %2894
  %2901 = fmul fast float %2900, 0x3F70101000000000
  %2902 = fadd fast float %2887, -5.000000e-01
  %2903 = fadd fast float %2889, -5.000000e-01
  %2904 = fmul fast float %2902, %2898
  %2905 = fmul fast float %2903, %2898
  %2906 = fadd fast float %2904, 5.000000e-01
  %2907 = fadd fast float %2905, 5.000000e-01
  %2908 = fmul fast float %2906, 2.000000e+00
  %2909 = fadd fast float %2908, -1.000000e+00
  %2910 = fmul fast float %2907, 2.000000e+00
  %2911 = fadd fast float %2910, -1.000000e+00
  %2912 = fadd fast float %2909, %2911
  %2913 = fmul fast float %2912, 5.000000e-01
  %2914 = fsub fast float %2909, %2911
  %2915 = fmul fast float %2914, 5.000000e-01
  %2916 = call float @dx.op.unary.f32(i32 6, float %2913)  ; FAbs(value)
  %2917 = fsub fast float 1.000000e+00, %2916
  %2918 = call float @dx.op.unary.f32(i32 6, float %2915)  ; FAbs(value)
  %2919 = fsub fast float %2917, %2918
  %2920 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2915, float %2919, float %2913, float %2915, float %2919)  ; Dot3(ax,ay,az,bx,by,bz)
  %2921 = call float @dx.op.unary.f32(i32 25, float %2920)  ; Rsqrt(value)
  %2922 = fmul fast float %2913, %2921
  %2923 = fmul fast float %2915, %2921
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 67108864
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %2944, label %2928

; <label>:2928                                    ; preds = %2876
  %2929 = add i32 %56, 312
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 65535
  %2933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2932)  ; LegacyF16ToF32(value)
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 65535
  %2937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2936)  ; LegacyF16ToF32(value)
  %2938 = lshr i32 %2931, 16
  %2939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2938)  ; LegacyF16ToF32(value)
  %2940 = fsub fast float %2901, %2939
  %2941 = fmul fast float %2940, %2933
  %2942 = fadd fast float %2941, %2937
  %2943 = call float @dx.op.unary.f32(i32 7, float %2942)  ; Saturate(value)
  br label %2944

; <label>:2944                                    ; preds = %2928, %2876
  %2945 = phi float [ %2943, %2928 ], [ %2901, %2876 ]
  %2946 = call float @dx.op.dot2.f32(i32 54, float %2922, float %2923, float %2365, float %2366)  ; Dot2(ax,ay,bx,by)
  %2947 = call float @dx.op.dot2.f32(i32 54, float %2922, float %2923, float %2367, float %2368)  ; Dot2(ax,ay,bx,by)
  br label %2948

; <label>:2948                                    ; preds = %2944, %2854
  %2949 = phi float [ %2945, %2944 ], [ 0x3FD6666660000000, %2854 ]
  %2950 = phi float [ %2946, %2944 ], [ 0.000000e+00, %2854 ]
  %2951 = phi float [ %2947, %2944 ], [ 0.000000e+00, %2854 ]
  %2952 = phi float [ %2888, %2944 ], [ 1.000000e+00, %2854 ]
  %2953 = add i32 %56, 192
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = lshr i32 %2955, 22
  %2957 = shl nuw nsw i32 %2956, 5
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 64
  %2962 = icmp eq i32 %2961, 0
  br i1 %2962, label %2996, label %2963

; <label>:2963                                    ; preds = %2948
  %2964 = add i32 %56, 480
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = add i32 %2966, 0
  %2968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, 131072
  %2972 = icmp eq i32 %2971, 0
  %2973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2968, %dx.types.Handle %98, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = fmul fast float %2974, %324
  %2978 = fmul fast float %2975, %327
  %2979 = fmul fast float %2976, %330
  br i1 %2972, label %2986, label %2980

; <label>:2980                                    ; preds = %2963
  %2981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2982 = extractvalue %dx.types.CBufRet.f32 %2981, 0
  %2983 = fmul fast float %2982, %2977
  %2984 = fmul fast float %2982, %2978
  %2985 = fmul fast float %2982, %2979
  br label %2986

; <label>:2986                                    ; preds = %2980, %2963
  %2987 = phi float [ %2983, %2980 ], [ %2977, %2963 ]
  %2988 = phi float [ %2984, %2980 ], [ %2978, %2963 ]
  %2989 = phi float [ %2985, %2980 ], [ %2979, %2963 ]
  %2990 = fmul fast float %2987, %2958
  %2991 = select i1 %223, float %2990, float %2987
  %2992 = call float @dx.op.dot3.f32(i32 55, float %2991, float %2988, float %2989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2993 = select i1 %223, float 0.000000e+00, float %2987
  %2994 = select i1 %223, float %2992, float %2988
  %2995 = select i1 %223, float 0.000000e+00, float %2989
  br label %2996

; <label>:2996                                    ; preds = %2986, %2948
  %2997 = phi float [ %2993, %2986 ], [ 0.000000e+00, %2948 ]
  %2998 = phi float [ %2994, %2986 ], [ 0.000000e+00, %2948 ]
  %2999 = phi float [ %2995, %2986 ], [ 0.000000e+00, %2948 ]
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 1024
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %3034, label %3004

; <label>:3004                                    ; preds = %2996
  %3005 = add i32 %56, 184
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = and i32 %3007, 255
  %3009 = uitofp i32 %3008 to float
  %3010 = fmul fast float %3009, 0x3F70101020000000
  %3011 = lshr i32 %3007, 8
  %3012 = and i32 %3011, 255
  %3013 = uitofp i32 %3012 to float
  %3014 = fmul fast float %3013, 0x3F70101020000000
  %3015 = lshr i32 %3007, 16
  %3016 = and i32 %3015, 255
  %3017 = uitofp i32 %3016 to float
  %3018 = fmul fast float %3017, 0x3F70101020000000
  %3019 = fmul fast float %3010, %3010
  %3020 = fmul fast float %3014, %3014
  %3021 = fmul fast float %3018, %3018
  %3022 = add i32 %56, 544
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = add i32 %3024, 0
  %3026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3026, %dx.types.Handle %99, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3029 = extractvalue %dx.types.ResRet.f32 %3027, 1
  %3030 = extractvalue %dx.types.ResRet.f32 %3027, 2
  %3031 = fmul fast float %3019, %3028
  %3032 = fmul fast float %3020, %3029
  %3033 = fmul fast float %3021, %3030
  br label %3034

; <label>:3034                                    ; preds = %3004, %2996
  %3035 = phi float [ %3031, %3004 ], [ 0.000000e+00, %2996 ]
  %3036 = phi float [ %3032, %3004 ], [ 0.000000e+00, %2996 ]
  %3037 = phi float [ %3033, %3004 ], [ 0.000000e+00, %2996 ]
  %3038 = fcmp fast ogt float %3035, 0.000000e+00
  %3039 = fcmp fast ogt float %3036, 0.000000e+00
  %3040 = fcmp fast ogt float %3037, 0.000000e+00
  %3041 = call float @dx.op.unary.f32(i32 23, float %3035)  ; Log(value)
  %3042 = call float @dx.op.unary.f32(i32 23, float %3036)  ; Log(value)
  %3043 = call float @dx.op.unary.f32(i32 23, float %3037)  ; Log(value)
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = lshr i32 %3045, 7
  %3047 = and i32 %3046, 32752
  %3048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3047)  ; LegacyF16ToF32(value)
  %3049 = fmul fast float %3041, 0xBFE62E4300000000
  %3050 = fmul fast float %3049, %3048
  %3051 = fmul fast float %3042, 0xBFE62E4300000000
  %3052 = fmul fast float %3051, %3048
  %3053 = fmul fast float %3043, 0xBFE62E4300000000
  %3054 = fmul fast float %3053, %3048
  %3055 = select i1 %3038, float %3050, float 1.270000e+02
  %3056 = select i1 %3039, float %3052, float 1.270000e+02
  %3057 = select i1 %3040, float %3054, float 1.270000e+02
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 26624
  %3061 = icmp eq i32 %3060, 0
  br i1 %3061, label %3119, label %3062

; <label>:3062                                    ; preds = %3034
  %3063 = add i32 %56, 560
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = add i32 %3065, 0
  %3067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3068 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3067, %dx.types.Handle %99, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 0
  %3070 = extractvalue %dx.types.ResRet.f32 %3068, 1
  %3071 = extractvalue %dx.types.ResRet.f32 %3068, 3
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = and i32 %3073, 1048576
  %3075 = icmp ne i32 %3074, 0
  %3076 = and i32 %3073, 8192
  %3077 = icmp eq i32 %3076, 0
  br i1 %3077, label %3092, label %3078

; <label>:3078                                    ; preds = %3062
  %3079 = extractvalue %dx.types.ResRet.f32 %3068, 2
  %3080 = select i1 %3075, float %3079, float %3070
  %3081 = select i1 %3075, float %3069, float %3070
  %3082 = add i32 %56, 128
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = lshr i32 %3084, 16
  %3086 = and i32 %3085, 255
  %3087 = uitofp i32 %3086 to float
  %3088 = fmul fast float %3087, 0x3F80101020000000
  %3089 = fmul fast float %3088, %3081
  %3090 = fmul fast float %3088, %3070
  %3091 = fmul fast float %3088, %3080
  br label %3092

; <label>:3092                                    ; preds = %3078, %3062
  %3093 = phi float [ %3089, %3078 ], [ 0.000000e+00, %3062 ]
  %3094 = phi float [ %3090, %3078 ], [ 0.000000e+00, %3062 ]
  %3095 = phi float [ %3091, %3078 ], [ 0.000000e+00, %3062 ]
  %3096 = and i32 %3073, 2048
  %3097 = icmp eq i32 %3096, 0
  br i1 %3097, label %3106, label %3098

; <label>:3098                                    ; preds = %3092
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = shl i32 %3100, 4
  %3102 = and i32 %3101, 32752
  %3103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3102)  ; LegacyF16ToF32(value)
  %3104 = fmul fast float %3103, %3071
  %3105 = call float @dx.op.binary.f32(i32 35, float %3104, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3106

; <label>:3106                                    ; preds = %3098, %3092
  %3107 = phi float [ %3105, %3098 ], [ 0x3F70101020000000, %3092 ]
  %3108 = and i32 %3073, 16384
  %3109 = icmp eq i32 %3108, 0
  br i1 %3109, label %3119, label %3110

; <label>:3110                                    ; preds = %3106
  %3111 = add i32 %56, 128
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = lshr i32 %3113, 24
  %3115 = uitofp i32 %3114 to float
  %3116 = fmul fast float %3069, 0x3F70101020000000
  %3117 = select i1 %3075, float 0x3F70101020000000, float %3116
  %3118 = fmul fast float %3117, %3115
  br label %3119

; <label>:3119                                    ; preds = %3110, %3106, %3034
  %3120 = phi float [ %3093, %3110 ], [ %3093, %3106 ], [ 0.000000e+00, %3034 ]
  %3121 = phi float [ %3094, %3110 ], [ %3094, %3106 ], [ 0.000000e+00, %3034 ]
  %3122 = phi float [ %3095, %3110 ], [ %3095, %3106 ], [ 0.000000e+00, %3034 ]
  %3123 = phi float [ %3107, %3110 ], [ %3107, %3106 ], [ 0x3F70101020000000, %3034 ]
  %3124 = phi float [ %3118, %3110 ], [ 0.000000e+00, %3106 ], [ 0.000000e+00, %3034 ]
  %3125 = add i32 %56, 128
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3125, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = lshr i32 %3127, 8
  %3131 = and i32 %3130, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = call float @dx.op.dot3.f32(i32 55, float %2869, float %2870, float %2871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3134 = fmul fast float %3132, %3133
  %3135 = fadd fast float %3134, %3129
  %3136 = fmul fast float %3135, 0x3F70101020000000
  %3137 = call float @dx.op.unary.f32(i32 7, float %3136)  ; Saturate(value)
  br i1 %2353, label %3138, label %3173

; <label>:3138                                    ; preds = %3119
  %3139 = fmul fast float %3123, 2.000000e+00
  %3140 = fcmp fast olt float %3055, 1.270000e+02
  %3141 = fcmp fast olt float %3056, 1.270000e+02
  %3142 = fcmp fast olt float %3057, 1.270000e+02
  %3143 = fmul fast float %3055, 0xBFF7154760000000
  %3144 = fmul fast float %3143, %3139
  %3145 = fmul fast float %3056, 0xBFF7154760000000
  %3146 = fmul fast float %3145, %3139
  %3147 = fmul fast float %3057, 0xBFF7154760000000
  %3148 = fmul fast float %3147, %3139
  %3149 = call float @dx.op.unary.f32(i32 21, float %3144)  ; Exp(value)
  %3150 = call float @dx.op.unary.f32(i32 21, float %3146)  ; Exp(value)
  %3151 = call float @dx.op.unary.f32(i32 21, float %3148)  ; Exp(value)
  %3152 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3153 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  %3154 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3155 = fadd fast float %3152, -1.000000e+00
  %3156 = select i1 %3140, float %3155, float -1.000000e+00
  %3157 = fadd fast float %3153, -1.000000e+00
  %3158 = select i1 %3141, float %3157, float -1.000000e+00
  %3159 = fadd fast float %3154, -1.000000e+00
  %3160 = select i1 %3142, float %3159, float -1.000000e+00
  %3161 = fmul fast float %3156, %2649
  %3162 = fmul fast float %3158, %2649
  %3163 = fmul fast float %3160, %2649
  %3164 = fadd fast float %3161, 1.000000e+00
  %3165 = fadd fast float %3162, 1.000000e+00
  %3166 = fadd fast float %3163, 1.000000e+00
  %3167 = fmul fast float %3164, %2334
  %3168 = fmul fast float %3165, %2335
  %3169 = fmul fast float %3166, %2336
  %3170 = fmul fast float %3164, %2337
  %3171 = fmul fast float %3165, %2338
  %3172 = fmul fast float %3166, %2339
  br label %3173

; <label>:3173                                    ; preds = %3138, %3119
  %3174 = phi float [ %3167, %3138 ], [ %2334, %3119 ]
  %3175 = phi float [ %3168, %3138 ], [ %2335, %3119 ]
  %3176 = phi float [ %3169, %3138 ], [ %2336, %3119 ]
  %3177 = phi float [ %3170, %3138 ], [ %2337, %3119 ]
  %3178 = phi float [ %3171, %3138 ], [ %2338, %3119 ]
  %3179 = phi float [ %3172, %3138 ], [ %2339, %3119 ]
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 3
  %3183 = icmp eq i32 %3182, 3
  br i1 %3183, label %3262, label %3184

; <label>:3184                                    ; preds = %3173
  %3185 = and i32 %3181, 16
  %3186 = icmp ne i32 %3185, 0
  %3187 = select i1 %3186, float %2649, float 0.000000e+00
  %3188 = icmp eq i32 %3182, 0
  br i1 %3188, label %3189, label %3217

; <label>:3189                                    ; preds = %3184
  %3190 = and i32 %3181, 64
  %3191 = icmp ne i32 %3190, 0
  %3192 = select i1 %3191, float %2649, float 0.000000e+00
  %3193 = fsub fast float %2869, %3174
  %3194 = fsub fast float %2870, %3175
  %3195 = fsub fast float %2871, %3176
  %3196 = fmul fast float %3187, %3193
  %3197 = fmul fast float %3187, %3194
  %3198 = fmul fast float %3187, %3195
  %3199 = fadd fast float %3196, %3174
  %3200 = fadd fast float %3197, %3175
  %3201 = fadd fast float %3198, %3176
  %3202 = fsub fast float %2855, %2346
  %3203 = fmul fast float %3187, %3202
  %3204 = fadd fast float %3203, %2346
  %3205 = fsub fast float %2997, %3177
  %3206 = fsub fast float %2998, %3178
  %3207 = fsub fast float %2999, %3179
  %3208 = fmul fast float %3192, %3205
  %3209 = fmul fast float %3192, %3206
  %3210 = fmul fast float %3192, %3207
  %3211 = fadd fast float %3208, %3177
  %3212 = fadd fast float %3209, %3178
  %3213 = fadd fast float %3210, %3179
  %3214 = fsub fast float %3137, %2351
  %3215 = fmul fast float %3187, %3214
  %3216 = fadd fast float %3215, %2351
  br label %3262

; <label>:3217                                    ; preds = %3184
  %3218 = icmp eq i32 %3182, 1
  br i1 %3218, label %3219, label %3232

; <label>:3219                                    ; preds = %3217
  %3220 = fadd fast float %2869, -1.000000e+00
  %3221 = fadd fast float %2870, -1.000000e+00
  %3222 = fadd fast float %2871, -1.000000e+00
  %3223 = fmul fast float %3187, %3220
  %3224 = fmul fast float %3187, %3221
  %3225 = fmul fast float %3187, %3222
  %3226 = fadd fast float %3223, 1.000000e+00
  %3227 = fadd fast float %3224, 1.000000e+00
  %3228 = fadd fast float %3225, 1.000000e+00
  %3229 = fmul fast float %3226, %3174
  %3230 = fmul fast float %3227, %3175
  %3231 = fmul fast float %3228, %3176
  br label %3262

; <label>:3232                                    ; preds = %3217
  %3233 = icmp eq i32 %3182, 2
  br i1 %3233, label %3234, label %3262

; <label>:3234                                    ; preds = %3232
  %3235 = call float @dx.op.unary.f32(i32 24, float %2869)  ; Sqrt(value)
  %3236 = call float @dx.op.unary.f32(i32 24, float %2870)  ; Sqrt(value)
  %3237 = call float @dx.op.unary.f32(i32 24, float %2871)  ; Sqrt(value)
  %3238 = fadd fast float %3235, -5.000000e-01
  %3239 = fadd fast float %3236, -5.000000e-01
  %3240 = fadd fast float %3237, -5.000000e-01
  %3241 = fmul fast float %3238, %3187
  %3242 = fmul fast float %3239, %3187
  %3243 = fmul fast float %3240, %3187
  %3244 = fadd fast float %3241, 5.000000e-01
  %3245 = fadd fast float %3242, 5.000000e-01
  %3246 = fadd fast float %3243, 5.000000e-01
  %3247 = fmul fast float %3244, 2.000000e+00
  %3248 = fsub fast float 1.000000e+00, %3247
  %3249 = fmul fast float %3248, %3174
  %3250 = fadd fast float %3249, %3247
  %3251 = fmul fast float %3250, %3174
  %3252 = fmul fast float %3245, 2.000000e+00
  %3253 = fsub fast float 1.000000e+00, %3252
  %3254 = fmul fast float %3253, %3175
  %3255 = fadd fast float %3254, %3252
  %3256 = fmul fast float %3255, %3175
  %3257 = fmul fast float %3246, 2.000000e+00
  %3258 = fsub fast float 1.000000e+00, %3257
  %3259 = fmul fast float %3258, %3176
  %3260 = fadd fast float %3259, %3257
  %3261 = fmul fast float %3260, %3176
  br label %3262

; <label>:3262                                    ; preds = %3234, %3232, %3219, %3189, %3173
  %3263 = phi float [ %3174, %3173 ], [ %3251, %3234 ], [ %3174, %3232 ], [ %3229, %3219 ], [ %3199, %3189 ]
  %3264 = phi float [ %3175, %3173 ], [ %3256, %3234 ], [ %3175, %3232 ], [ %3230, %3219 ], [ %3200, %3189 ]
  %3265 = phi float [ %3176, %3173 ], [ %3261, %3234 ], [ %3176, %3232 ], [ %3231, %3219 ], [ %3201, %3189 ]
  %3266 = phi float [ %3177, %3173 ], [ %3177, %3234 ], [ %3177, %3232 ], [ %3177, %3219 ], [ %3211, %3189 ]
  %3267 = phi float [ %3178, %3173 ], [ %3178, %3234 ], [ %3178, %3232 ], [ %3178, %3219 ], [ %3212, %3189 ]
  %3268 = phi float [ %3179, %3173 ], [ %3179, %3234 ], [ %3179, %3232 ], [ %3179, %3219 ], [ %3213, %3189 ]
  %3269 = phi float [ %2346, %3173 ], [ %2346, %3234 ], [ %2346, %3232 ], [ %2346, %3219 ], [ %3204, %3189 ]
  %3270 = phi float [ %2351, %3173 ], [ %2351, %3234 ], [ %2351, %3232 ], [ %2351, %3219 ], [ %3216, %3189 ]
  %3271 = and i32 %3181, 12
  %3272 = icmp eq i32 %3271, 12
  br i1 %3272, label %3413, label %3273

; <label>:3273                                    ; preds = %3262
  %3274 = and i32 %3181, 2097184
  %3275 = icmp eq i32 %3274, 2097184
  %3276 = select i1 %3275, float %2649, float 0.000000e+00
  %3277 = and i32 %3181, 4194336
  %3278 = icmp eq i32 %3277, 4194336
  %3279 = select i1 %3278, float %2649, float 0.000000e+00
  %3280 = and i32 %3181, 8388640
  %3281 = icmp eq i32 %3280, 8388640
  %3282 = select i1 %3281, float %2649, float 0.000000e+00
  %3283 = and i32 %3181, 1024
  %3284 = icmp ne i32 %3283, 0
  %3285 = select i1 %3284, float %2649, float 0.000000e+00
  %3286 = and i32 %3181, 2048
  %3287 = icmp ne i32 %3286, 0
  %3288 = select i1 %3287, float %2649, float 0.000000e+00
  %3289 = and i32 %3181, 8192
  %3290 = icmp ne i32 %3289, 0
  %3291 = select i1 %3290, float %2649, float 0.000000e+00
  %3292 = and i32 %3181, 16384
  %3293 = icmp ne i32 %3292, 0
  %3294 = select i1 %3293, float %2649, float 0.000000e+00
  %3295 = icmp eq i32 %3271, 0
  br i1 %3295, label %3296, label %3333

; <label>:3296                                    ; preds = %3273
  %3297 = fsub fast float %2950, %2332
  %3298 = fsub fast float %2951, %2333
  %3299 = fmul fast float %3276, %3297
  %3300 = fmul fast float %3276, %3298
  %3301 = fadd fast float %3299, %2332
  %3302 = fadd fast float %3300, %2333
  %3303 = fsub fast float %2952, %2348
  %3304 = fmul fast float %3279, %3303
  %3305 = fadd fast float %3304, %2348
  %3306 = fsub fast float %2949, %2347
  %3307 = fmul fast float %3282, %3306
  %3308 = fadd fast float %3307, %2347
  %3309 = fsub fast float %3055, %2343
  %3310 = fsub fast float %3056, %2344
  %3311 = fsub fast float %3057, %2345
  %3312 = fmul fast float %3285, %3309
  %3313 = fmul fast float %3285, %3310
  %3314 = fmul fast float %3285, %3311
  %3315 = fadd fast float %3312, %2343
  %3316 = fadd fast float %3313, %2344
  %3317 = fadd fast float %3314, %2345
  %3318 = fsub fast float %3123, %2349
  %3319 = fmul fast float %3288, %3318
  %3320 = fadd fast float %3319, %2349
  %3321 = fsub fast float %3120, %2340
  %3322 = fsub fast float %3121, %2341
  %3323 = fsub fast float %3122, %2342
  %3324 = fmul fast float %3291, %3321
  %3325 = fmul fast float %3291, %3322
  %3326 = fmul fast float %3291, %3323
  %3327 = fadd fast float %3324, %2340
  %3328 = fadd fast float %3325, %2341
  %3329 = fadd fast float %3326, %2342
  %3330 = fsub fast float %3124, %2350
  %3331 = fmul fast float %3294, %3330
  %3332 = fadd fast float %3331, %2350
  br label %3413

; <label>:3333                                    ; preds = %3273
  %3334 = icmp eq i32 %3271, 4
  br i1 %3334, label %3335, label %3383

; <label>:3335                                    ; preds = %3333
  %3336 = fmul fast float %3276, %2950
  %3337 = fmul fast float %3276, %2951
  %3338 = fadd fast float %3336, %2332
  %3339 = fadd fast float %3337, %2333
  %3340 = call float @dx.op.binary.f32(i32 36, float %2348, float %2952)  ; FMin(a,b)
  %3341 = fsub fast float %3340, %2348
  %3342 = fmul fast float %3341, %3279
  %3343 = fadd fast float %3342, %2348
  %3344 = fadd fast float %2949, %2347
  %3345 = fmul fast float %3344, 0x3FF337FAE0000000
  %3346 = fmul fast float %2347, %2347
  %3347 = fmul fast float %2949, %2949
  %3348 = fadd fast float %3347, %3346
  %3349 = fmul fast float %3348, 0x3FE5152B00000000
  %3350 = fmul fast float %2347, 0xBFCC1F85E0000000
  %3351 = fmul fast float %3350, %2949
  %3352 = fadd fast float %3351, 0xBFE1363700000000
  %3353 = fadd fast float %3352, %3345
  %3354 = fsub fast float %3353, %3349
  %3355 = fmul fast float %3344, 0x3FBA6F0D00000000
  %3356 = fmul fast float %3348, 0x3FD0432880000000
  %3357 = fmul fast float %2347, 0xBFEF110800000000
  %3358 = fmul fast float %3357, %2949
  %3359 = fadd fast float %3358, 1.000000e+00
  %3360 = fsub fast float %3359, %3355
  %3361 = fadd fast float %3360, %3356
  %3362 = fdiv fast float %3354, %3361
  %3363 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3364 = fsub fast float %3363, %2347
  %3365 = fmul fast float %3364, %3282
  %3366 = fadd fast float %3365, %2347
  %3367 = fmul fast float %3285, %3055
  %3368 = fmul fast float %3285, %3056
  %3369 = fmul fast float %3285, %3057
  %3370 = fadd fast float %3367, %2343
  %3371 = fadd fast float %3368, %2344
  %3372 = fadd fast float %3369, %2345
  %3373 = fmul fast float %3288, %3123
  %3374 = fadd fast float %3373, %2349
  %3375 = fmul fast float %3291, %3120
  %3376 = fmul fast float %3291, %3121
  %3377 = fmul fast float %3291, %3122
  %3378 = fadd fast float %3375, %2340
  %3379 = fadd fast float %3376, %2341
  %3380 = fadd fast float %3377, %2342
  %3381 = fmul fast float %3294, %3124
  %3382 = fadd fast float %3381, %2350
  br label %3413

; <label>:3383                                    ; preds = %3333
  %3384 = icmp eq i32 %3271, 8
  br i1 %3384, label %3385, label %3413

; <label>:3385                                    ; preds = %3383
  %3386 = fmul fast float %3276, %2950
  %3387 = fmul fast float %3276, %2951
  %3388 = fadd fast float %3386, %2332
  %3389 = fadd fast float %3387, %2333
  %3390 = call float @dx.op.binary.f32(i32 36, float %2348, float %2952)  ; FMin(a,b)
  %3391 = fsub fast float %3390, %2348
  %3392 = fmul fast float %3391, %3279
  %3393 = fadd fast float %3392, %2348
  %3394 = fsub fast float %2949, %2347
  %3395 = fmul fast float %3282, %3394
  %3396 = fadd fast float %3395, %2347
  %3397 = fmul fast float %3285, %3055
  %3398 = fmul fast float %3285, %3056
  %3399 = fmul fast float %3285, %3057
  %3400 = fadd fast float %3397, %2343
  %3401 = fadd fast float %3398, %2344
  %3402 = fadd fast float %3399, %2345
  %3403 = fmul fast float %3288, %3123
  %3404 = fadd fast float %3403, %2349
  %3405 = fmul fast float %3291, %3120
  %3406 = fmul fast float %3291, %3121
  %3407 = fmul fast float %3291, %3122
  %3408 = fadd fast float %3405, %2340
  %3409 = fadd fast float %3406, %2341
  %3410 = fadd fast float %3407, %2342
  %3411 = fmul fast float %3294, %3124
  %3412 = fadd fast float %3411, %2350
  br label %3413

; <label>:3413                                    ; preds = %3385, %3383, %3335, %3296, %3262, %2648, %2352, %2331
  %3414 = phi float [ %2332, %3262 ], [ %2332, %2648 ], [ %2332, %2331 ], [ %3388, %3385 ], [ %2332, %3383 ], [ %3338, %3335 ], [ %3301, %3296 ], [ %2332, %2352 ]
  %3415 = phi float [ %2333, %3262 ], [ %2333, %2648 ], [ %2333, %2331 ], [ %3389, %3385 ], [ %2333, %3383 ], [ %3339, %3335 ], [ %3302, %3296 ], [ %2333, %2352 ]
  %3416 = phi float [ %3263, %3262 ], [ %2334, %2648 ], [ %2334, %2331 ], [ %3263, %3385 ], [ %3263, %3383 ], [ %3263, %3335 ], [ %3263, %3296 ], [ %2334, %2352 ]
  %3417 = phi float [ %3264, %3262 ], [ %2335, %2648 ], [ %2335, %2331 ], [ %3264, %3385 ], [ %3264, %3383 ], [ %3264, %3335 ], [ %3264, %3296 ], [ %2335, %2352 ]
  %3418 = phi float [ %3265, %3262 ], [ %2336, %2648 ], [ %2336, %2331 ], [ %3265, %3385 ], [ %3265, %3383 ], [ %3265, %3335 ], [ %3265, %3296 ], [ %2336, %2352 ]
  %3419 = phi float [ %3266, %3262 ], [ %2337, %2648 ], [ %2337, %2331 ], [ %3266, %3385 ], [ %3266, %3383 ], [ %3266, %3335 ], [ %3266, %3296 ], [ %2337, %2352 ]
  %3420 = phi float [ %3267, %3262 ], [ %2338, %2648 ], [ %2338, %2331 ], [ %3267, %3385 ], [ %3267, %3383 ], [ %3267, %3335 ], [ %3267, %3296 ], [ %2338, %2352 ]
  %3421 = phi float [ %3268, %3262 ], [ %2339, %2648 ], [ %2339, %2331 ], [ %3268, %3385 ], [ %3268, %3383 ], [ %3268, %3335 ], [ %3268, %3296 ], [ %2339, %2352 ]
  %3422 = phi float [ %2340, %3262 ], [ %2340, %2648 ], [ %2340, %2331 ], [ %3408, %3385 ], [ %2340, %3383 ], [ %3378, %3335 ], [ %3327, %3296 ], [ %2340, %2352 ]
  %3423 = phi float [ %2341, %3262 ], [ %2341, %2648 ], [ %2341, %2331 ], [ %3409, %3385 ], [ %2341, %3383 ], [ %3379, %3335 ], [ %3328, %3296 ], [ %2341, %2352 ]
  %3424 = phi float [ %2342, %3262 ], [ %2342, %2648 ], [ %2342, %2331 ], [ %3410, %3385 ], [ %2342, %3383 ], [ %3380, %3335 ], [ %3329, %3296 ], [ %2342, %2352 ]
  %3425 = phi float [ %2343, %3262 ], [ %2343, %2648 ], [ %2343, %2331 ], [ %3400, %3385 ], [ %2343, %3383 ], [ %3370, %3335 ], [ %3315, %3296 ], [ %2343, %2352 ]
  %3426 = phi float [ %2344, %3262 ], [ %2344, %2648 ], [ %2344, %2331 ], [ %3401, %3385 ], [ %2344, %3383 ], [ %3371, %3335 ], [ %3316, %3296 ], [ %2344, %2352 ]
  %3427 = phi float [ %2345, %3262 ], [ %2345, %2648 ], [ %2345, %2331 ], [ %3402, %3385 ], [ %2345, %3383 ], [ %3372, %3335 ], [ %3317, %3296 ], [ %2345, %2352 ]
  %3428 = phi float [ %3269, %3262 ], [ %2346, %2648 ], [ %2346, %2331 ], [ %3269, %3385 ], [ %3269, %3383 ], [ %3269, %3335 ], [ %3269, %3296 ], [ %2346, %2352 ]
  %3429 = phi float [ %2347, %3262 ], [ %2347, %2648 ], [ %2347, %2331 ], [ %3396, %3385 ], [ %2347, %3383 ], [ %3366, %3335 ], [ %3308, %3296 ], [ %2347, %2352 ]
  %3430 = phi float [ %2348, %3262 ], [ %2348, %2648 ], [ %2348, %2331 ], [ %3393, %3385 ], [ %2348, %3383 ], [ %3343, %3335 ], [ %3305, %3296 ], [ %2348, %2352 ]
  %3431 = phi float [ %2349, %3262 ], [ %2349, %2648 ], [ %2349, %2331 ], [ %3404, %3385 ], [ %2349, %3383 ], [ %3374, %3335 ], [ %3320, %3296 ], [ %2349, %2352 ]
  %3432 = phi float [ %2350, %3262 ], [ %2350, %2648 ], [ %2350, %2331 ], [ %3412, %3385 ], [ %2350, %3383 ], [ %3382, %3335 ], [ %3332, %3296 ], [ %2350, %2352 ]
  %3433 = phi float [ %3270, %3262 ], [ %2351, %2648 ], [ %2351, %2331 ], [ %3270, %3385 ], [ %3270, %3383 ], [ %3270, %3335 ], [ %3270, %3296 ], [ %2351, %2352 ]
  br i1 %411, label %4495, label %3434

; <label>:3434                                    ; preds = %3413
  %3435 = icmp ult i32 %465, 4
  %3436 = add i32 %56, 72
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = add i32 %56, 76
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = or i32 %3441, %3438
  %3443 = icmp eq i32 %3442, 0
  br i1 %3443, label %4495, label %3444

; <label>:3444                                    ; preds = %3434
  %3445 = and i32 %3438, 262144
  %3446 = icmp ne i32 %3445, 0
  %3447 = select i1 %3446, float %59, float 1.000000e+00
  %3448 = select i1 %3446, float %60, float 0.000000e+00
  %3449 = select i1 %3446, float %61, float 0.000000e+00
  %3450 = select i1 %3446, float %62, float 1.000000e+00
  %3451 = select i1 %3446, float %63, float %84
  %3452 = select i1 %3446, float %64, float %85
  %3453 = add i32 %56, 332
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = lshr i32 %3455, 16
  %3457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3456)  ; LegacyF16ToF32(value)
  %3458 = fmul fast float %3457, 0x3F50624DE0000000
  %3459 = add i32 %56, 136
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = lshr i32 %3461, 16
  %3463 = and i32 %3462, 255
  %3464 = lshr i32 %3461, 24
  %3465 = add i32 %56, 340
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = and i32 %3467, 65535
  %3469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3468)  ; LegacyF16ToF32(value)
  %3470 = lshr i32 %3467, 16
  %3471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3470)  ; LegacyF16ToF32(value)
  %3472 = add i32 %56, 80
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = lshr i32 %3474, 22
  %3476 = shl nuw nsw i32 %3475, 5
  %3477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3476)  ; LegacyF16ToF32(value)
  %3478 = shl i32 %3474, 4
  %3479 = and i32 %3478, 32752
  %3480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3479)  ; LegacyF16ToF32(value)
  %3481 = lshr i32 %3474, 7
  %3482 = and i32 %3481, 32752
  %3483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3482)  ; LegacyF16ToF32(value)
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 3
  %3486 = fmul fast float %3485, 1.000000e+03
  %3487 = fmul fast float %401, %3486
  %3488 = call float @dx.op.unary.f32(i32 22, float %3487)  ; Frc(value)
  %3489 = fadd fast float %3488, %391
  %3490 = fmul fast float %402, %3486
  %3491 = call float @dx.op.unary.f32(i32 22, float %3490)  ; Frc(value)
  %3492 = fadd fast float %3491, %393
  %3493 = fmul fast float %3458, %3486
  %3494 = call float @dx.op.unary.f32(i32 22, float %3493)  ; Frc(value)
  %3495 = fmul fast float %3494, 0x401921FB60000000
  %3496 = fadd fast float %3495, %3477
  %3497 = call float @dx.op.unary.f32(i32 13, float %3496)  ; Sin(value)
  %3498 = call float @dx.op.unary.f32(i32 12, float %3496)  ; Cos(value)
  %3499 = fsub fast float -0.000000e+00, %3497
  %3500 = fadd fast float %3451, -5.000000e-01
  %3501 = fadd fast float %3452, -5.000000e-01
  %3502 = fmul fast float %3469, %3500
  %3503 = fmul fast float %3471, %3501
  %3504 = fadd fast float %3502, 5.000000e-01
  %3505 = fadd fast float %3503, 5.000000e-01
  %3506 = fmul fast float %3480, %3504
  %3507 = fmul fast float %3483, %3505
  %3508 = fmul fast float %3498, %3506
  %3509 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3507, float %3508)  ; FMad(a,b,c)
  %3510 = fmul fast float %3497, %3506
  %3511 = call float @dx.op.tertiary.f32(i32 46, float %3498, float %3507, float %3510)  ; FMad(a,b,c)
  %3512 = fadd fast float %3489, %3509
  %3513 = fadd fast float %3492, %3511
  %3514 = icmp ugt i32 %3463, 1
  %3515 = icmp ugt i32 %3461, 33554431
  %3516 = or i1 %3515, %3514
  br i1 %3516, label %3517, label %3542

; <label>:3517                                    ; preds = %3444
  %3518 = add i32 %56, 276
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = lshr i32 %3520, 16
  %3522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3521)  ; LegacyF16ToF32(value)
  %3523 = fmul fast float %3485, %3522
  %3524 = call float @dx.op.unary.f32(i32 22, float %3523)  ; Frc(value)
  %3525 = mul nuw nsw i32 %3463, %3464
  %3526 = uitofp i32 %3525 to float
  %3527 = fmul fast float %3524, %3526
  %3528 = call float @dx.op.unary.f32(i32 27, float %3527)  ; Round_ni(value)
  %3529 = fptoui float %3528 to i32
  %3530 = urem i32 %3529, %3463
  %3531 = udiv i32 %3529, %3464
  %3532 = call float @dx.op.unary.f32(i32 22, float %3512)  ; Frc(value)
  %3533 = call float @dx.op.unary.f32(i32 22, float %3513)  ; Frc(value)
  %3534 = uitofp i32 %3530 to float
  %3535 = uitofp i32 %3531 to float
  %3536 = fadd fast float %3532, %3534
  %3537 = fadd fast float %3533, %3535
  %3538 = uitofp i32 %3463 to float
  %3539 = uitofp i32 %3464 to float
  %3540 = fdiv fast float %3536, %3538
  %3541 = fdiv fast float %3537, %3539
  br label %3542

; <label>:3542                                    ; preds = %3517, %3444
  %3543 = phi float [ %3540, %3517 ], [ %3512, %3444 ]
  %3544 = phi float [ %3541, %3517 ], [ %3513, %3444 ]
  %3545 = and i32 %3438, 16777216
  %3546 = icmp eq i32 %3545, 0
  br i1 %3546, label %3656, label %3547

; <label>:3547                                    ; preds = %3542
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.CBufRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.CBufRet.f32 %3548, 2
  %3552 = fadd fast float %3549, %161
  %3553 = fadd fast float %3550, %162
  %3554 = fadd fast float %3551, %163
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 0
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3558 = icmp eq i32 %57, 65535
  br i1 %3558, label %3653, label %3559

; <label>:3559                                    ; preds = %3547
  %3560 = lshr i32 %57, 1
  %3561 = shl i32 %3560, 2
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %57, 1
  %3565 = icmp ne i32 %3564, 0
  %3566 = lshr i32 %3563, 16
  %3567 = and i32 %3563, 65535
  %3568 = select i1 %3565, i32 %3566, i32 %3567
  %3569 = icmp eq i32 %3568, 65535
  br i1 %3569, label %3649, label %3570

; <label>:3570                                    ; preds = %3559
  %3571 = mul nuw nsw i32 %3568, 40
  %3572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = extractvalue %dx.types.ResRet.f32 %3572, 1
  %3575 = extractvalue %dx.types.ResRet.f32 %3572, 2
  %3576 = add nuw nsw i32 %3571, 12
  %3577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3579 = extractvalue %dx.types.ResRet.f32 %3577, 1
  %3580 = extractvalue %dx.types.ResRet.f32 %3577, 2
  %3581 = add nuw nsw i32 %3571, 24
  %3582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = add nuw nsw i32 %3571, 36
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = fsub fast float %3552, %3573
  %3590 = fsub fast float %3553, %3574
  %3591 = fsub fast float %3554, %3575
  %3592 = fmul fast float %3588, %3589
  %3593 = fmul fast float %3588, %3590
  %3594 = fmul fast float %3588, %3591
  %3595 = call float @dx.op.unary.f32(i32 27, float %3592)  ; Round_ni(value)
  %3596 = call float @dx.op.unary.f32(i32 27, float %3593)  ; Round_ni(value)
  %3597 = call float @dx.op.unary.f32(i32 27, float %3594)  ; Round_ni(value)
  %3598 = fadd fast float %3595, 5.000000e-01
  %3599 = fadd fast float %3596, 5.000000e-01
  %3600 = fadd fast float %3597, 5.000000e-01
  %3601 = fmul fast float %3598, %3578
  %3602 = fmul fast float %3599, %3579
  %3603 = fmul fast float %3600, %3580
  %3604 = shl i32 %57, 2
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = add i32 %3606, 0
  %3608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3609 = call float @dx.op.unary.f32(i32 22, float %3601)  ; Frc(value)
  %3610 = call float @dx.op.unary.f32(i32 22, float %3602)  ; Frc(value)
  %3611 = call float @dx.op.unary.f32(i32 22, float %3603)  ; Frc(value)
  %3612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3608, %dx.types.Handle %49, float %3609, float %3610, float %3611, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = fmul fast float %3613, 1.023000e+03
  %3617 = fmul fast float %3614, 1.023000e+03
  %3618 = fmul fast float %3615, 1.023000e+03
  %3619 = fadd fast float %3616, 5.000000e-01
  %3620 = fadd fast float %3617, 5.000000e-01
  %3621 = fadd fast float %3618, 5.000000e-01
  %3622 = call float @dx.op.unary.f32(i32 27, float %3619)  ; Round_ni(value)
  %3623 = call float @dx.op.unary.f32(i32 27, float %3620)  ; Round_ni(value)
  %3624 = call float @dx.op.unary.f32(i32 27, float %3621)  ; Round_ni(value)
  %3625 = fsub fast float %3592, %3595
  %3626 = fsub fast float %3593, %3596
  %3627 = fsub fast float %3594, %3597
  %3628 = fmul fast float %3625, 7.500000e-01
  %3629 = fmul fast float %3626, 7.500000e-01
  %3630 = fmul fast float %3627, 7.500000e-01
  %3631 = fadd fast float %3595, 1.250000e-01
  %3632 = fadd fast float %3631, %3628
  %3633 = fadd fast float %3632, %3622
  %3634 = fadd fast float %3596, 1.250000e-01
  %3635 = fadd fast float %3634, %3629
  %3636 = fadd fast float %3635, %3623
  %3637 = fadd fast float %3597, 1.250000e-01
  %3638 = fadd fast float %3637, %3630
  %3639 = fadd fast float %3638, %3624
  %3640 = fmul fast float %3633, %3583
  %3641 = fmul fast float %3636, %3584
  %3642 = fmul fast float %3639, %3585
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = add i32 %3644, 0
  %3646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3646, %dx.types.Handle %47, float %3640, float %3641, float %3642, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  br label %3649

; <label>:3649                                    ; preds = %3570, %3559
  %3650 = phi float [ %3648, %3570 ], [ -1.000000e+00, %3559 ]
  %3651 = fadd fast float %3650, %3557
  %3652 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  br label %3653

; <label>:3653                                    ; preds = %3649, %3547
  %3654 = phi float [ %3652, %3649 ], [ %3557, %3547 ]
  %3655 = fmul fast float %3654, %460
  br label %3656

; <label>:3656                                    ; preds = %3653, %3542
  %3657 = phi float [ %3655, %3653 ], [ %460, %3542 ]
  %3658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.i32 %3658, 0
  %3660 = and i32 %3659, 256
  %3661 = icmp eq i32 %3660, 0
  br i1 %3661, label %3708, label %3662

; <label>:3662                                    ; preds = %3656
  %3663 = add i32 %56, 516
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = add i32 %3665, 0
  %3667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3668 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3667, %dx.types.Handle %99, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3670 = add i32 %56, 148
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = shl i32 %3672, 4
  %3674 = and i32 %3673, 32752
  %3675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3674)  ; LegacyF16ToF32(value)
  %3676 = lshr i32 %3672, 7
  %3677 = and i32 %3676, 32752
  %3678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3677)  ; LegacyF16ToF32(value)
  %3679 = fsub fast float 1.000000e+00, %3657
  %3680 = call float @dx.op.binary.f32(i32 35, float %3679, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3681 = bitcast float %3657 to i32
  %3682 = sitofp i32 %3681 to float
  %3683 = fadd fast float %3682, 0xC1CFBF8940000000
  %3684 = fmul fast float %3678, %3683
  %3685 = fadd fast float %3684, 0x41CFBF8940000000
  %3686 = fptosi float %3685 to i32
  %3687 = bitcast i32 %3686 to float
  %3688 = bitcast float %3680 to i32
  %3689 = sitofp i32 %3688 to float
  %3690 = fadd fast float %3689, 0xC1CFBF8940000000
  %3691 = fmul fast float %3690, %3678
  %3692 = fadd fast float %3691, 0x41CFBF8940000000
  %3693 = fptosi float %3692 to i32
  %3694 = bitcast i32 %3693 to float
  %3695 = fmul fast float %3687, %3675
  %3696 = fmul fast float %3694, %3675
  %3697 = fsub fast float %3680, %3695
  %3698 = fadd fast float %3696, %3680
  %3699 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3700 = call float @dx.op.unary.f32(i32 7, float %3698)  ; Saturate(value)
  %3701 = fsub fast float %3669, %3699
  %3702 = fsub fast float %3700, %3699
  %3703 = bitcast float %3702 to i32
  %3704 = sub nsw i32 2129859010, %3703
  %3705 = bitcast i32 %3704 to float
  %3706 = fmul fast float %3705, %3701
  %3707 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  br label %3708

; <label>:3708                                    ; preds = %3662, %3656
  %3709 = phi float [ %3707, %3662 ], [ %3657, %3656 ]
  %3710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.i32 %3710, 0
  %3712 = and i32 %3711, 128
  %3713 = icmp eq i32 %3712, 0
  br i1 %3713, label %3730, label %3714

; <label>:3714                                    ; preds = %3708
  %3715 = add i32 %56, 500
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = add i32 %3717, 0
  %3719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3718, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3720 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3719, %dx.types.Handle %99, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = and i32 %3723, 524288
  %3725 = icmp ne i32 %3724, 0
  %3726 = fcmp fast ogt float %3721, 0x3FE0101020000000
  %3727 = select i1 %3726, float 1.000000e+00, float 0.000000e+00
  %3728 = select i1 %3725, float %3727, float %3721
  %3729 = fmul fast float %3728, %3709
  br label %3730

; <label>:3730                                    ; preds = %3714, %3708
  %3731 = phi float [ %3729, %3714 ], [ %3709, %3708 ]
  %3732 = fcmp fast ult float %3731, 0x3F70101020000000
  br i1 %3732, label %4495, label %3733

; <label>:3733                                    ; preds = %3730
  %3734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.i32 %3734, 0
  %3736 = and i32 %3735, 16
  %3737 = icmp eq i32 %3736, 0
  br i1 %3737, label %3936, label %3738

; <label>:3738                                    ; preds = %3733
  %3739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.i32 %3739, 0
  %3741 = add i32 %56, 452
  %3742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.i32 %3742, 0
  %3744 = add i32 %3743, 0
  %3745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3744, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3745, %dx.types.Handle %98, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3748 = extractvalue %dx.types.ResRet.f32 %3746, 1
  %3749 = extractvalue %dx.types.ResRet.f32 %3746, 2
  %3750 = extractvalue %dx.types.ResRet.f32 %3746, 3
  %3751 = and i32 %3740, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = lshr i32 %3740, 8
  %3754 = and i32 %3753, 255
  %3755 = uitofp i32 %3754 to float
  %3756 = fmul fast float %3750, %3752
  %3757 = fadd fast float %3756, %3755
  %3758 = fmul fast float %3757, 0x3F70101000000000
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = and i32 %3760, 512
  %3762 = icmp eq i32 %3761, 0
  br i1 %3762, label %3771, label %3763

; <label>:3763                                    ; preds = %3738
  %3764 = add i32 %56, 532
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = add i32 %3766, 0
  %3768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3768, %dx.types.Handle %99, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3770 = extractvalue %dx.types.ResRet.f32 %3769, 0
  br label %3771

; <label>:3771                                    ; preds = %3763, %3738
  %3772 = phi float [ %3770, %3763 ], [ 1.000000e+00, %3738 ]
  %3773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.i32 %3773, 0
  %3775 = and i32 %3774, 33554432
  %3776 = icmp eq i32 %3775, 0
  br i1 %3776, label %3883, label %3777

; <label>:3777                                    ; preds = %3771
  %3778 = add i32 %56, 272
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3778, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = and i32 %3780, 65535
  %3782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3781)  ; LegacyF16ToF32(value)
  %3783 = lshr i32 %3780, 16
  %3784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3783)  ; LegacyF16ToF32(value)
  %3785 = add i32 %56, 276
  %3786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.i32 %3786, 0
  %3788 = and i32 %3787, 65535
  %3789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3788)  ; LegacyF16ToF32(value)
  %3790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.i32 %3790, 0
  %3792 = lshr i32 %3791, 24
  %3793 = uitofp i32 %3792 to float
  %3794 = fmul fast float %3793, 0x3F70101020000000
  %3795 = and i32 %3791, 255
  %3796 = uitofp i32 %3795 to float
  %3797 = fmul fast float %3796, 0x3F70101020000000
  %3798 = lshr i32 %3791, 8
  %3799 = and i32 %3798, 255
  %3800 = uitofp i32 %3799 to float
  %3801 = fmul fast float %3800, 0x3F70101020000000
  %3802 = lshr i32 %3791, 16
  %3803 = and i32 %3802, 255
  %3804 = uitofp i32 %3803 to float
  %3805 = fmul fast float %3804, 0x3F70101020000000
  %3806 = add i32 %56, 268
  %3807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3806, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.i32 %3807, 0
  %3809 = lshr i32 %3808, 24
  %3810 = uitofp i32 %3809 to float
  %3811 = fmul fast float %3810, 0x3F70101020000000
  %3812 = and i32 %3808, 255
  %3813 = uitofp i32 %3812 to float
  %3814 = fmul fast float %3813, 0x3F70101020000000
  %3815 = lshr i32 %3808, 8
  %3816 = and i32 %3815, 255
  %3817 = uitofp i32 %3816 to float
  %3818 = fmul fast float %3817, 0x3F70101020000000
  %3819 = lshr i32 %3808, 16
  %3820 = and i32 %3819, 255
  %3821 = uitofp i32 %3820 to float
  %3822 = fmul fast float %3821, 0x3F70101020000000
  %3823 = bitcast float %3747 to i32
  %3824 = ashr i32 %3823, 1
  %3825 = sub nsw i32 1597463174, %3824
  %3826 = bitcast i32 %3825 to float
  %3827 = fmul fast float %3747, 5.000000e-01
  %3828 = fmul fast float %3826, %3826
  %3829 = fmul fast float %3828, %3827
  %3830 = fsub fast float 1.500000e+00, %3829
  %3831 = fmul fast float %3826, %3747
  %3832 = fmul fast float %3831, %3830
  %3833 = bitcast float %3748 to i32
  %3834 = ashr i32 %3833, 1
  %3835 = sub nsw i32 1597463174, %3834
  %3836 = bitcast i32 %3835 to float
  %3837 = fmul fast float %3748, 5.000000e-01
  %3838 = fmul fast float %3836, %3836
  %3839 = fmul fast float %3838, %3837
  %3840 = fsub fast float 1.500000e+00, %3839
  %3841 = fmul fast float %3836, %3748
  %3842 = fmul fast float %3841, %3840
  %3843 = bitcast float %3749 to i32
  %3844 = ashr i32 %3843, 1
  %3845 = sub nsw i32 1597463174, %3844
  %3846 = bitcast i32 %3845 to float
  %3847 = fmul fast float %3749, 5.000000e-01
  %3848 = fmul fast float %3846, %3846
  %3849 = fmul fast float %3848, %3847
  %3850 = fsub fast float 1.500000e+00, %3849
  %3851 = fmul fast float %3846, %3749
  %3852 = fmul fast float %3851, %3850
  %3853 = fsub fast float %3832, %3814
  %3854 = fsub fast float %3842, %3818
  %3855 = fsub fast float %3852, %3822
  %3856 = fmul fast float %3853, %3782
  %3857 = fmul fast float %3854, %3784
  %3858 = fmul fast float %3855, %3789
  %3859 = fadd fast float %3856, %3797
  %3860 = fadd fast float %3857, %3801
  %3861 = fadd fast float %3858, %3805
  %3862 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3863 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3864 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3865 = fmul fast float %3862, %3862
  %3866 = fmul fast float %3863, %3863
  %3867 = fmul fast float %3864, %3864
  %3868 = fsub fast float %3865, %3747
  %3869 = fsub fast float %3866, %3748
  %3870 = fsub fast float %3867, %3749
  %3871 = fmul fast float %3868, %3772
  %3872 = fmul fast float %3869, %3772
  %3873 = fmul fast float %3870, %3772
  %3874 = fadd fast float %3871, %3747
  %3875 = fadd fast float %3872, %3748
  %3876 = fadd fast float %3873, %3749
  %3877 = fadd fast float %3794, %3758
  %3878 = fsub fast float %3877, %3811
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = fsub fast float %3879, %3758
  %3881 = fmul fast float %3880, %3772
  %3882 = fadd fast float %3881, %3758
  br label %3936

; <label>:3883                                    ; preds = %3771
  %3884 = and i32 %3774, 134217728
  %3885 = icmp eq i32 %3884, 0
  br i1 %3885, label %3920, label %3886

; <label>:3886                                    ; preds = %3883
  %3887 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %3888 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %3889 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3890 = fadd fast float %3887, -5.000000e-01
  %3891 = fadd fast float %3888, -5.000000e-01
  %3892 = fadd fast float %3889, -5.000000e-01
  %3893 = fmul fast float %3890, %3772
  %3894 = fmul fast float %3891, %3772
  %3895 = fmul fast float %3892, %3772
  %3896 = fadd fast float %3893, 5.000000e-01
  %3897 = fadd fast float %3894, 5.000000e-01
  %3898 = fadd fast float %3895, 5.000000e-01
  %3899 = call float @dx.op.unary.f32(i32 24, float %3747)  ; Sqrt(value)
  %3900 = call float @dx.op.unary.f32(i32 24, float %3748)  ; Sqrt(value)
  %3901 = call float @dx.op.unary.f32(i32 24, float %3749)  ; Sqrt(value)
  %3902 = fmul fast float %3896, 2.000000e+00
  %3903 = fsub fast float 1.000000e+00, %3902
  %3904 = fmul fast float %3903, %3899
  %3905 = fadd fast float %3904, %3902
  %3906 = fmul fast float %3905, %3899
  %3907 = fmul fast float %3897, 2.000000e+00
  %3908 = fsub fast float 1.000000e+00, %3907
  %3909 = fmul fast float %3908, %3900
  %3910 = fadd fast float %3909, %3907
  %3911 = fmul fast float %3910, %3900
  %3912 = fmul fast float %3898, 2.000000e+00
  %3913 = fsub fast float 1.000000e+00, %3912
  %3914 = fmul fast float %3913, %3901
  %3915 = fadd fast float %3914, %3912
  %3916 = fmul fast float %3915, %3901
  %3917 = fmul fast float %3906, %3906
  %3918 = fmul fast float %3911, %3911
  %3919 = fmul fast float %3916, %3916
  br label %3936

; <label>:3920                                    ; preds = %3883
  %3921 = fmul fast float %378, %378
  %3922 = fmul fast float %382, %382
  %3923 = fmul fast float %386, %386
  %3924 = fadd fast float %3921, -1.000000e+00
  %3925 = fadd fast float %3922, -1.000000e+00
  %3926 = fadd fast float %3923, -1.000000e+00
  %3927 = fmul fast float %3772, %3924
  %3928 = fmul fast float %3772, %3925
  %3929 = fmul fast float %3772, %3926
  %3930 = fadd fast float %3927, 1.000000e+00
  %3931 = fadd fast float %3928, 1.000000e+00
  %3932 = fadd fast float %3929, 1.000000e+00
  %3933 = fmul fast float %3930, %3747
  %3934 = fmul fast float %3931, %3748
  %3935 = fmul fast float %3932, %3749
  br label %3936

; <label>:3936                                    ; preds = %3920, %3886, %3777, %3733
  %3937 = phi float [ %3882, %3777 ], [ %3758, %3886 ], [ %3758, %3920 ], [ 0x3FA23C0BE0000000, %3733 ]
  %3938 = phi float [ %3874, %3777 ], [ %3917, %3886 ], [ %3933, %3920 ], [ 1.000000e+00, %3733 ]
  %3939 = phi float [ %3875, %3777 ], [ %3918, %3886 ], [ %3934, %3920 ], [ 1.000000e+00, %3733 ]
  %3940 = phi float [ %3876, %3777 ], [ %3919, %3886 ], [ %3935, %3920 ], [ 1.000000e+00, %3733 ]
  %3941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.i32 %3941, 1
  %3943 = and i32 %3942, 1
  %3944 = icmp ne i32 %3943, 0
  %3945 = add i32 %56, 356
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = and i32 %3947, 32
  %3949 = icmp ne i32 %3948, 0
  %3950 = and i1 %3944, %3949
  %3951 = select i1 %3950, float 1.000000e+00, float %3938
  %3952 = select i1 %3950, float 0x3FD3333340000000, float %3939
  %3953 = select i1 %3950, float 0x3FD3333340000000, float %3940
  %3954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.i32 %3954, 0
  %3956 = and i32 %3955, 32
  %3957 = icmp eq i32 %3956, 0
  br i1 %3957, label %4030, label %3958

; <label>:3958                                    ; preds = %3936
  %3959 = add i32 %56, 140
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = add i32 %56, 468
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = add i32 %3964, 0
  %3966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3965, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3967 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3966, %dx.types.Handle %98, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3968 = extractvalue %dx.types.ResRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.ResRet.f32 %3967, 1
  %3970 = extractvalue %dx.types.ResRet.f32 %3967, 2
  %3971 = extractvalue %dx.types.ResRet.f32 %3967, 3
  %3972 = and i32 %3961, 255
  %3973 = uitofp i32 %3972 to float
  %3974 = lshr i32 %3961, 8
  %3975 = and i32 %3974, 255
  %3976 = uitofp i32 %3975 to float
  %3977 = lshr i32 %3961, 16
  %3978 = and i32 %3977, 255
  %3979 = uitofp i32 %3978 to float
  %3980 = fmul fast float %3979, 0x3F70101000000000
  %3981 = fmul fast float %3968, %3973
  %3982 = fadd fast float %3981, %3976
  %3983 = fmul fast float %3982, 0x3F70101000000000
  %3984 = fadd fast float %3969, -5.000000e-01
  %3985 = fadd fast float %3971, -5.000000e-01
  %3986 = fmul fast float %3984, %3980
  %3987 = fmul fast float %3985, %3980
  %3988 = fadd fast float %3986, 5.000000e-01
  %3989 = fadd fast float %3987, 5.000000e-01
  %3990 = fmul fast float %3988, 2.000000e+00
  %3991 = fadd fast float %3990, -1.000000e+00
  %3992 = fmul fast float %3989, 2.000000e+00
  %3993 = fadd fast float %3992, -1.000000e+00
  %3994 = fadd fast float %3991, %3993
  %3995 = fmul fast float %3994, 5.000000e-01
  %3996 = fsub fast float %3991, %3993
  %3997 = fmul fast float %3996, 5.000000e-01
  %3998 = call float @dx.op.unary.f32(i32 6, float %3995)  ; FAbs(value)
  %3999 = fsub fast float 1.000000e+00, %3998
  %4000 = call float @dx.op.unary.f32(i32 6, float %3997)  ; FAbs(value)
  %4001 = fsub fast float %3999, %4000
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3995, float %3997, float %4001, float %3995, float %3997, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = call float @dx.op.unary.f32(i32 25, float %4002)  ; Rsqrt(value)
  %4004 = fmul fast float %3995, %4003
  %4005 = fmul fast float %3997, %4003
  %4006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.i32 %4006, 0
  %4008 = and i32 %4007, 67108864
  %4009 = icmp eq i32 %4008, 0
  br i1 %4009, label %4026, label %4010

; <label>:4010                                    ; preds = %3958
  %4011 = add i32 %56, 328
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4011, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = and i32 %4013, 65535
  %4015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4014)  ; LegacyF16ToF32(value)
  %4016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.i32 %4016, 0
  %4018 = and i32 %4017, 65535
  %4019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4018)  ; LegacyF16ToF32(value)
  %4020 = lshr i32 %4013, 16
  %4021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4020)  ; LegacyF16ToF32(value)
  %4022 = fsub fast float %3983, %4021
  %4023 = fmul fast float %4022, %4015
  %4024 = fadd fast float %4023, %4019
  %4025 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  br label %4026

; <label>:4026                                    ; preds = %4010, %3958
  %4027 = phi float [ %4025, %4010 ], [ %3983, %3958 ]
  %4028 = call float @dx.op.dot2.f32(i32 54, float %4004, float %4005, float %3447, float %3448)  ; Dot2(ax,ay,bx,by)
  %4029 = call float @dx.op.dot2.f32(i32 54, float %4004, float %4005, float %3449, float %3450)  ; Dot2(ax,ay,bx,by)
  br label %4030

; <label>:4030                                    ; preds = %4026, %3936
  %4031 = phi float [ %4027, %4026 ], [ 0x3FD6666660000000, %3936 ]
  %4032 = phi float [ %4028, %4026 ], [ 0.000000e+00, %3936 ]
  %4033 = phi float [ %4029, %4026 ], [ 0.000000e+00, %3936 ]
  %4034 = phi float [ %3970, %4026 ], [ 1.000000e+00, %3936 ]
  %4035 = add i32 %56, 208
  %4036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.i32 %4036, 0
  %4038 = lshr i32 %4037, 22
  %4039 = shl nuw nsw i32 %4038, 5
  %4040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4039)  ; LegacyF16ToF32(value)
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = and i32 %4042, 64
  %4044 = icmp eq i32 %4043, 0
  br i1 %4044, label %4078, label %4045

; <label>:4045                                    ; preds = %4030
  %4046 = add i32 %56, 484
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = add i32 %4048, 0
  %4050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4052 = extractvalue %dx.types.ResRet.i32 %4051, 0
  %4053 = and i32 %4052, 131072
  %4054 = icmp eq i32 %4053, 0
  %4055 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4050, %dx.types.Handle %98, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.ResRet.f32 %4055, 1
  %4058 = extractvalue %dx.types.ResRet.f32 %4055, 2
  %4059 = fmul fast float %4056, %366
  %4060 = fmul fast float %4057, %369
  %4061 = fmul fast float %4058, %372
  br i1 %4054, label %4068, label %4062

; <label>:4062                                    ; preds = %4045
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = fmul fast float %4064, %4059
  %4066 = fmul fast float %4064, %4060
  %4067 = fmul fast float %4064, %4061
  br label %4068

; <label>:4068                                    ; preds = %4062, %4045
  %4069 = phi float [ %4065, %4062 ], [ %4059, %4045 ]
  %4070 = phi float [ %4066, %4062 ], [ %4060, %4045 ]
  %4071 = phi float [ %4067, %4062 ], [ %4061, %4045 ]
  %4072 = fmul fast float %4069, %4040
  %4073 = select i1 %223, float %4072, float %4069
  %4074 = call float @dx.op.dot3.f32(i32 55, float %4073, float %4070, float %4071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4075 = select i1 %223, float 0.000000e+00, float %4069
  %4076 = select i1 %223, float %4074, float %4070
  %4077 = select i1 %223, float 0.000000e+00, float %4071
  br label %4078

; <label>:4078                                    ; preds = %4068, %4030
  %4079 = phi float [ %4075, %4068 ], [ 0.000000e+00, %4030 ]
  %4080 = phi float [ %4076, %4068 ], [ 0.000000e+00, %4030 ]
  %4081 = phi float [ %4077, %4068 ], [ 0.000000e+00, %4030 ]
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = and i32 %4083, 1024
  %4085 = icmp eq i32 %4084, 0
  br i1 %4085, label %4116, label %4086

; <label>:4086                                    ; preds = %4078
  %4087 = add i32 %56, 200
  %4088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4087, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.i32 %4088, 0
  %4090 = and i32 %4089, 255
  %4091 = uitofp i32 %4090 to float
  %4092 = fmul fast float %4091, 0x3F70101020000000
  %4093 = lshr i32 %4089, 8
  %4094 = and i32 %4093, 255
  %4095 = uitofp i32 %4094 to float
  %4096 = fmul fast float %4095, 0x3F70101020000000
  %4097 = lshr i32 %4089, 16
  %4098 = and i32 %4097, 255
  %4099 = uitofp i32 %4098 to float
  %4100 = fmul fast float %4099, 0x3F70101020000000
  %4101 = fmul fast float %4092, %4092
  %4102 = fmul fast float %4096, %4096
  %4103 = fmul fast float %4100, %4100
  %4104 = add i32 %56, 548
  %4105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.i32 %4105, 0
  %4107 = add i32 %4106, 0
  %4108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4108, %dx.types.Handle %99, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.ResRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.ResRet.f32 %4109, 2
  %4113 = fmul fast float %4101, %4110
  %4114 = fmul fast float %4102, %4111
  %4115 = fmul fast float %4103, %4112
  br label %4116

; <label>:4116                                    ; preds = %4086, %4078
  %4117 = phi float [ %4113, %4086 ], [ 0.000000e+00, %4078 ]
  %4118 = phi float [ %4114, %4086 ], [ 0.000000e+00, %4078 ]
  %4119 = phi float [ %4115, %4086 ], [ 0.000000e+00, %4078 ]
  %4120 = fcmp fast ogt float %4117, 0.000000e+00
  %4121 = fcmp fast ogt float %4118, 0.000000e+00
  %4122 = fcmp fast ogt float %4119, 0.000000e+00
  %4123 = call float @dx.op.unary.f32(i32 23, float %4117)  ; Log(value)
  %4124 = call float @dx.op.unary.f32(i32 23, float %4118)  ; Log(value)
  %4125 = call float @dx.op.unary.f32(i32 23, float %4119)  ; Log(value)
  %4126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.i32 %4126, 0
  %4128 = lshr i32 %4127, 7
  %4129 = and i32 %4128, 32752
  %4130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4129)  ; LegacyF16ToF32(value)
  %4131 = fmul fast float %4123, 0xBFE62E4300000000
  %4132 = fmul fast float %4131, %4130
  %4133 = fmul fast float %4124, 0xBFE62E4300000000
  %4134 = fmul fast float %4133, %4130
  %4135 = fmul fast float %4125, 0xBFE62E4300000000
  %4136 = fmul fast float %4135, %4130
  %4137 = select i1 %4120, float %4132, float 1.270000e+02
  %4138 = select i1 %4121, float %4134, float 1.270000e+02
  %4139 = select i1 %4122, float %4136, float 1.270000e+02
  %4140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.i32 %4140, 0
  %4142 = and i32 %4141, 26624
  %4143 = icmp eq i32 %4142, 0
  br i1 %4143, label %4201, label %4144

; <label>:4144                                    ; preds = %4116
  %4145 = add i32 %56, 564
  %4146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4145, i32 undef)  ; BufferLoad(srv,index,wot)
  %4147 = extractvalue %dx.types.ResRet.i32 %4146, 0
  %4148 = add i32 %4147, 0
  %4149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4149, %dx.types.Handle %99, float %3543, float %3544, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.ResRet.f32 %4150, 1
  %4153 = extractvalue %dx.types.ResRet.f32 %4150, 3
  %4154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.i32 %4154, 0
  %4156 = and i32 %4155, 1048576
  %4157 = icmp ne i32 %4156, 0
  %4158 = and i32 %4155, 8192
  %4159 = icmp eq i32 %4158, 0
  br i1 %4159, label %4174, label %4160

; <label>:4160                                    ; preds = %4144
  %4161 = extractvalue %dx.types.ResRet.f32 %4150, 2
  %4162 = select i1 %4157, float %4161, float %4152
  %4163 = select i1 %4157, float %4151, float %4152
  %4164 = add i32 %56, 144
  %4165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.i32 %4165, 0
  %4167 = lshr i32 %4166, 16
  %4168 = and i32 %4167, 255
  %4169 = uitofp i32 %4168 to float
  %4170 = fmul fast float %4169, 0x3F80101020000000
  %4171 = fmul fast float %4170, %4163
  %4172 = fmul fast float %4170, %4152
  %4173 = fmul fast float %4170, %4162
  br label %4174

; <label>:4174                                    ; preds = %4160, %4144
  %4175 = phi float [ %4171, %4160 ], [ 0.000000e+00, %4144 ]
  %4176 = phi float [ %4172, %4160 ], [ 0.000000e+00, %4144 ]
  %4177 = phi float [ %4173, %4160 ], [ 0.000000e+00, %4144 ]
  %4178 = and i32 %4155, 2048
  %4179 = icmp eq i32 %4178, 0
  br i1 %4179, label %4188, label %4180

; <label>:4180                                    ; preds = %4174
  %4181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.i32 %4181, 0
  %4183 = shl i32 %4182, 4
  %4184 = and i32 %4183, 32752
  %4185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4184)  ; LegacyF16ToF32(value)
  %4186 = fmul fast float %4185, %4153
  %4187 = call float @dx.op.binary.f32(i32 35, float %4186, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4188

; <label>:4188                                    ; preds = %4180, %4174
  %4189 = phi float [ %4187, %4180 ], [ 0x3F70101020000000, %4174 ]
  %4190 = and i32 %4155, 16384
  %4191 = icmp eq i32 %4190, 0
  br i1 %4191, label %4201, label %4192

; <label>:4192                                    ; preds = %4188
  %4193 = add i32 %56, 144
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = lshr i32 %4195, 24
  %4197 = uitofp i32 %4196 to float
  %4198 = fmul fast float %4151, 0x3F70101020000000
  %4199 = select i1 %4157, float 0x3F70101020000000, float %4198
  %4200 = fmul fast float %4199, %4197
  br label %4201

; <label>:4201                                    ; preds = %4192, %4188, %4116
  %4202 = phi float [ %4175, %4192 ], [ %4175, %4188 ], [ 0.000000e+00, %4116 ]
  %4203 = phi float [ %4176, %4192 ], [ %4176, %4188 ], [ 0.000000e+00, %4116 ]
  %4204 = phi float [ %4177, %4192 ], [ %4177, %4188 ], [ 0.000000e+00, %4116 ]
  %4205 = phi float [ %4189, %4192 ], [ %4189, %4188 ], [ 0x3F70101020000000, %4116 ]
  %4206 = phi float [ %4200, %4192 ], [ 0.000000e+00, %4188 ], [ 0.000000e+00, %4116 ]
  %4207 = add i32 %56, 144
  %4208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.i32 %4208, 0
  %4210 = and i32 %4209, 255
  %4211 = uitofp i32 %4210 to float
  %4212 = lshr i32 %4209, 8
  %4213 = and i32 %4212, 255
  %4214 = uitofp i32 %4213 to float
  %4215 = call float @dx.op.dot3.f32(i32 55, float %3951, float %3952, float %3953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4216 = fmul fast float %4214, %4215
  %4217 = fadd fast float %4216, %4211
  %4218 = fmul fast float %4217, 0x3F70101020000000
  %4219 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  br i1 %3435, label %4220, label %4255

; <label>:4220                                    ; preds = %4201
  %4221 = fmul fast float %4205, 2.000000e+00
  %4222 = fcmp fast olt float %4137, 1.270000e+02
  %4223 = fcmp fast olt float %4138, 1.270000e+02
  %4224 = fcmp fast olt float %4139, 1.270000e+02
  %4225 = fmul fast float %4137, 0xBFF7154760000000
  %4226 = fmul fast float %4225, %4221
  %4227 = fmul fast float %4138, 0xBFF7154760000000
  %4228 = fmul fast float %4227, %4221
  %4229 = fmul fast float %4139, 0xBFF7154760000000
  %4230 = fmul fast float %4229, %4221
  %4231 = call float @dx.op.unary.f32(i32 21, float %4226)  ; Exp(value)
  %4232 = call float @dx.op.unary.f32(i32 21, float %4228)  ; Exp(value)
  %4233 = call float @dx.op.unary.f32(i32 21, float %4230)  ; Exp(value)
  %4234 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4235 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = fadd fast float %4234, -1.000000e+00
  %4238 = select i1 %4222, float %4237, float -1.000000e+00
  %4239 = fadd fast float %4235, -1.000000e+00
  %4240 = select i1 %4223, float %4239, float -1.000000e+00
  %4241 = fadd fast float %4236, -1.000000e+00
  %4242 = select i1 %4224, float %4241, float -1.000000e+00
  %4243 = fmul fast float %4238, %3731
  %4244 = fmul fast float %4240, %3731
  %4245 = fmul fast float %4242, %3731
  %4246 = fadd fast float %4243, 1.000000e+00
  %4247 = fadd fast float %4244, 1.000000e+00
  %4248 = fadd fast float %4245, 1.000000e+00
  %4249 = fmul fast float %4246, %3416
  %4250 = fmul fast float %4247, %3417
  %4251 = fmul fast float %4248, %3418
  %4252 = fmul fast float %4246, %3419
  %4253 = fmul fast float %4247, %3420
  %4254 = fmul fast float %4248, %3421
  br label %4255

; <label>:4255                                    ; preds = %4220, %4201
  %4256 = phi float [ %4249, %4220 ], [ %3416, %4201 ]
  %4257 = phi float [ %4250, %4220 ], [ %3417, %4201 ]
  %4258 = phi float [ %4251, %4220 ], [ %3418, %4201 ]
  %4259 = phi float [ %4252, %4220 ], [ %3419, %4201 ]
  %4260 = phi float [ %4253, %4220 ], [ %3420, %4201 ]
  %4261 = phi float [ %4254, %4220 ], [ %3421, %4201 ]
  %4262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.i32 %4262, 0
  %4264 = and i32 %4263, 3
  %4265 = icmp eq i32 %4264, 3
  br i1 %4265, label %4344, label %4266

; <label>:4266                                    ; preds = %4255
  %4267 = and i32 %4263, 16
  %4268 = icmp ne i32 %4267, 0
  %4269 = select i1 %4268, float %3731, float 0.000000e+00
  %4270 = icmp eq i32 %4264, 0
  br i1 %4270, label %4271, label %4299

; <label>:4271                                    ; preds = %4266
  %4272 = and i32 %4263, 64
  %4273 = icmp ne i32 %4272, 0
  %4274 = select i1 %4273, float %3731, float 0.000000e+00
  %4275 = fsub fast float %3951, %4256
  %4276 = fsub fast float %3952, %4257
  %4277 = fsub fast float %3953, %4258
  %4278 = fmul fast float %4269, %4275
  %4279 = fmul fast float %4269, %4276
  %4280 = fmul fast float %4269, %4277
  %4281 = fadd fast float %4278, %4256
  %4282 = fadd fast float %4279, %4257
  %4283 = fadd fast float %4280, %4258
  %4284 = fsub fast float %3937, %3428
  %4285 = fmul fast float %4269, %4284
  %4286 = fadd fast float %4285, %3428
  %4287 = fsub fast float %4079, %4259
  %4288 = fsub fast float %4080, %4260
  %4289 = fsub fast float %4081, %4261
  %4290 = fmul fast float %4274, %4287
  %4291 = fmul fast float %4274, %4288
  %4292 = fmul fast float %4274, %4289
  %4293 = fadd fast float %4290, %4259
  %4294 = fadd fast float %4291, %4260
  %4295 = fadd fast float %4292, %4261
  %4296 = fsub fast float %4219, %3433
  %4297 = fmul fast float %4269, %4296
  %4298 = fadd fast float %4297, %3433
  br label %4344

; <label>:4299                                    ; preds = %4266
  %4300 = icmp eq i32 %4264, 1
  br i1 %4300, label %4301, label %4314

; <label>:4301                                    ; preds = %4299
  %4302 = fadd fast float %3951, -1.000000e+00
  %4303 = fadd fast float %3952, -1.000000e+00
  %4304 = fadd fast float %3953, -1.000000e+00
  %4305 = fmul fast float %4269, %4302
  %4306 = fmul fast float %4269, %4303
  %4307 = fmul fast float %4269, %4304
  %4308 = fadd fast float %4305, 1.000000e+00
  %4309 = fadd fast float %4306, 1.000000e+00
  %4310 = fadd fast float %4307, 1.000000e+00
  %4311 = fmul fast float %4308, %4256
  %4312 = fmul fast float %4309, %4257
  %4313 = fmul fast float %4310, %4258
  br label %4344

; <label>:4314                                    ; preds = %4299
  %4315 = icmp eq i32 %4264, 2
  br i1 %4315, label %4316, label %4344

; <label>:4316                                    ; preds = %4314
  %4317 = call float @dx.op.unary.f32(i32 24, float %3951)  ; Sqrt(value)
  %4318 = call float @dx.op.unary.f32(i32 24, float %3952)  ; Sqrt(value)
  %4319 = call float @dx.op.unary.f32(i32 24, float %3953)  ; Sqrt(value)
  %4320 = fadd fast float %4317, -5.000000e-01
  %4321 = fadd fast float %4318, -5.000000e-01
  %4322 = fadd fast float %4319, -5.000000e-01
  %4323 = fmul fast float %4320, %4269
  %4324 = fmul fast float %4321, %4269
  %4325 = fmul fast float %4322, %4269
  %4326 = fadd fast float %4323, 5.000000e-01
  %4327 = fadd fast float %4324, 5.000000e-01
  %4328 = fadd fast float %4325, 5.000000e-01
  %4329 = fmul fast float %4326, 2.000000e+00
  %4330 = fsub fast float 1.000000e+00, %4329
  %4331 = fmul fast float %4330, %4256
  %4332 = fadd fast float %4331, %4329
  %4333 = fmul fast float %4332, %4256
  %4334 = fmul fast float %4327, 2.000000e+00
  %4335 = fsub fast float 1.000000e+00, %4334
  %4336 = fmul fast float %4335, %4257
  %4337 = fadd fast float %4336, %4334
  %4338 = fmul fast float %4337, %4257
  %4339 = fmul fast float %4328, 2.000000e+00
  %4340 = fsub fast float 1.000000e+00, %4339
  %4341 = fmul fast float %4340, %4258
  %4342 = fadd fast float %4341, %4339
  %4343 = fmul fast float %4342, %4258
  br label %4344

; <label>:4344                                    ; preds = %4316, %4314, %4301, %4271, %4255
  %4345 = phi float [ %4256, %4255 ], [ %4333, %4316 ], [ %4256, %4314 ], [ %4311, %4301 ], [ %4281, %4271 ]
  %4346 = phi float [ %4257, %4255 ], [ %4338, %4316 ], [ %4257, %4314 ], [ %4312, %4301 ], [ %4282, %4271 ]
  %4347 = phi float [ %4258, %4255 ], [ %4343, %4316 ], [ %4258, %4314 ], [ %4313, %4301 ], [ %4283, %4271 ]
  %4348 = phi float [ %4259, %4255 ], [ %4259, %4316 ], [ %4259, %4314 ], [ %4259, %4301 ], [ %4293, %4271 ]
  %4349 = phi float [ %4260, %4255 ], [ %4260, %4316 ], [ %4260, %4314 ], [ %4260, %4301 ], [ %4294, %4271 ]
  %4350 = phi float [ %4261, %4255 ], [ %4261, %4316 ], [ %4261, %4314 ], [ %4261, %4301 ], [ %4295, %4271 ]
  %4351 = phi float [ %3428, %4255 ], [ %3428, %4316 ], [ %3428, %4314 ], [ %3428, %4301 ], [ %4286, %4271 ]
  %4352 = phi float [ %3433, %4255 ], [ %3433, %4316 ], [ %3433, %4314 ], [ %3433, %4301 ], [ %4298, %4271 ]
  %4353 = and i32 %4263, 12
  %4354 = icmp eq i32 %4353, 12
  br i1 %4354, label %4495, label %4355

; <label>:4355                                    ; preds = %4344
  %4356 = and i32 %4263, 2097184
  %4357 = icmp eq i32 %4356, 2097184
  %4358 = select i1 %4357, float %3731, float 0.000000e+00
  %4359 = and i32 %4263, 4194336
  %4360 = icmp eq i32 %4359, 4194336
  %4361 = select i1 %4360, float %3731, float 0.000000e+00
  %4362 = and i32 %4263, 8388640
  %4363 = icmp eq i32 %4362, 8388640
  %4364 = select i1 %4363, float %3731, float 0.000000e+00
  %4365 = and i32 %4263, 1024
  %4366 = icmp ne i32 %4365, 0
  %4367 = select i1 %4366, float %3731, float 0.000000e+00
  %4368 = and i32 %4263, 2048
  %4369 = icmp ne i32 %4368, 0
  %4370 = select i1 %4369, float %3731, float 0.000000e+00
  %4371 = and i32 %4263, 8192
  %4372 = icmp ne i32 %4371, 0
  %4373 = select i1 %4372, float %3731, float 0.000000e+00
  %4374 = and i32 %4263, 16384
  %4375 = icmp ne i32 %4374, 0
  %4376 = select i1 %4375, float %3731, float 0.000000e+00
  %4377 = icmp eq i32 %4353, 0
  br i1 %4377, label %4378, label %4415

; <label>:4378                                    ; preds = %4355
  %4379 = fsub fast float %4032, %3414
  %4380 = fsub fast float %4033, %3415
  %4381 = fmul fast float %4358, %4379
  %4382 = fmul fast float %4358, %4380
  %4383 = fadd fast float %4381, %3414
  %4384 = fadd fast float %4382, %3415
  %4385 = fsub fast float %4034, %3430
  %4386 = fmul fast float %4361, %4385
  %4387 = fadd fast float %4386, %3430
  %4388 = fsub fast float %4031, %3429
  %4389 = fmul fast float %4364, %4388
  %4390 = fadd fast float %4389, %3429
  %4391 = fsub fast float %4137, %3425
  %4392 = fsub fast float %4138, %3426
  %4393 = fsub fast float %4139, %3427
  %4394 = fmul fast float %4367, %4391
  %4395 = fmul fast float %4367, %4392
  %4396 = fmul fast float %4367, %4393
  %4397 = fadd fast float %4394, %3425
  %4398 = fadd fast float %4395, %3426
  %4399 = fadd fast float %4396, %3427
  %4400 = fsub fast float %4205, %3431
  %4401 = fmul fast float %4370, %4400
  %4402 = fadd fast float %4401, %3431
  %4403 = fsub fast float %4202, %3422
  %4404 = fsub fast float %4203, %3423
  %4405 = fsub fast float %4204, %3424
  %4406 = fmul fast float %4373, %4403
  %4407 = fmul fast float %4373, %4404
  %4408 = fmul fast float %4373, %4405
  %4409 = fadd fast float %4406, %3422
  %4410 = fadd fast float %4407, %3423
  %4411 = fadd fast float %4408, %3424
  %4412 = fsub fast float %4206, %3432
  %4413 = fmul fast float %4376, %4412
  %4414 = fadd fast float %4413, %3432
  br label %4495

; <label>:4415                                    ; preds = %4355
  %4416 = icmp eq i32 %4353, 4
  br i1 %4416, label %4417, label %4465

; <label>:4417                                    ; preds = %4415
  %4418 = fmul fast float %4358, %4032
  %4419 = fmul fast float %4358, %4033
  %4420 = fadd fast float %4418, %3414
  %4421 = fadd fast float %4419, %3415
  %4422 = call float @dx.op.binary.f32(i32 36, float %3430, float %4034)  ; FMin(a,b)
  %4423 = fsub fast float %4422, %3430
  %4424 = fmul fast float %4423, %4361
  %4425 = fadd fast float %4424, %3430
  %4426 = fadd fast float %4031, %3429
  %4427 = fmul fast float %4426, 0x3FF337FAE0000000
  %4428 = fmul fast float %3429, %3429
  %4429 = fmul fast float %4031, %4031
  %4430 = fadd fast float %4429, %4428
  %4431 = fmul fast float %4430, 0x3FE5152B00000000
  %4432 = fmul fast float %3429, 0xBFCC1F85E0000000
  %4433 = fmul fast float %4432, %4031
  %4434 = fadd fast float %4433, 0xBFE1363700000000
  %4435 = fadd fast float %4434, %4427
  %4436 = fsub fast float %4435, %4431
  %4437 = fmul fast float %4426, 0x3FBA6F0D00000000
  %4438 = fmul fast float %4430, 0x3FD0432880000000
  %4439 = fmul fast float %3429, 0xBFEF110800000000
  %4440 = fmul fast float %4439, %4031
  %4441 = fadd fast float %4440, 1.000000e+00
  %4442 = fsub fast float %4441, %4437
  %4443 = fadd fast float %4442, %4438
  %4444 = fdiv fast float %4436, %4443
  %4445 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4446 = fsub fast float %4445, %3429
  %4447 = fmul fast float %4446, %4364
  %4448 = fadd fast float %4447, %3429
  %4449 = fmul fast float %4367, %4137
  %4450 = fmul fast float %4367, %4138
  %4451 = fmul fast float %4367, %4139
  %4452 = fadd fast float %4449, %3425
  %4453 = fadd fast float %4450, %3426
  %4454 = fadd fast float %4451, %3427
  %4455 = fmul fast float %4370, %4205
  %4456 = fadd fast float %4455, %3431
  %4457 = fmul fast float %4373, %4202
  %4458 = fmul fast float %4373, %4203
  %4459 = fmul fast float %4373, %4204
  %4460 = fadd fast float %4457, %3422
  %4461 = fadd fast float %4458, %3423
  %4462 = fadd fast float %4459, %3424
  %4463 = fmul fast float %4376, %4206
  %4464 = fadd fast float %4463, %3432
  br label %4495

; <label>:4465                                    ; preds = %4415
  %4466 = icmp eq i32 %4353, 8
  br i1 %4466, label %4467, label %4495

; <label>:4467                                    ; preds = %4465
  %4468 = fmul fast float %4358, %4032
  %4469 = fmul fast float %4358, %4033
  %4470 = fadd fast float %4468, %3414
  %4471 = fadd fast float %4469, %3415
  %4472 = call float @dx.op.binary.f32(i32 36, float %3430, float %4034)  ; FMin(a,b)
  %4473 = fsub fast float %4472, %3430
  %4474 = fmul fast float %4473, %4361
  %4475 = fadd fast float %4474, %3430
  %4476 = fsub fast float %4031, %3429
  %4477 = fmul fast float %4364, %4476
  %4478 = fadd fast float %4477, %3429
  %4479 = fmul fast float %4367, %4137
  %4480 = fmul fast float %4367, %4138
  %4481 = fmul fast float %4367, %4139
  %4482 = fadd fast float %4479, %3425
  %4483 = fadd fast float %4480, %3426
  %4484 = fadd fast float %4481, %3427
  %4485 = fmul fast float %4370, %4205
  %4486 = fadd fast float %4485, %3431
  %4487 = fmul fast float %4373, %4202
  %4488 = fmul fast float %4373, %4203
  %4489 = fmul fast float %4373, %4204
  %4490 = fadd fast float %4487, %3422
  %4491 = fadd fast float %4488, %3423
  %4492 = fadd fast float %4489, %3424
  %4493 = fmul fast float %4376, %4206
  %4494 = fadd fast float %4493, %3432
  br label %4495

; <label>:4495                                    ; preds = %4467, %4465, %4417, %4378, %4344, %3730, %3434, %3413
  %4496 = phi float [ %3414, %4344 ], [ %3414, %3730 ], [ %3414, %3413 ], [ %3414, %3434 ], [ %4383, %4378 ], [ %4420, %4417 ], [ %3414, %4465 ], [ %4470, %4467 ]
  %4497 = phi float [ %3415, %4344 ], [ %3415, %3730 ], [ %3415, %3413 ], [ %3415, %3434 ], [ %4384, %4378 ], [ %4421, %4417 ], [ %3415, %4465 ], [ %4471, %4467 ]
  %4498 = phi float [ %4345, %4344 ], [ %3416, %3730 ], [ %3416, %3413 ], [ %3416, %3434 ], [ %4345, %4378 ], [ %4345, %4417 ], [ %4345, %4465 ], [ %4345, %4467 ]
  %4499 = phi float [ %4346, %4344 ], [ %3417, %3730 ], [ %3417, %3413 ], [ %3417, %3434 ], [ %4346, %4378 ], [ %4346, %4417 ], [ %4346, %4465 ], [ %4346, %4467 ]
  %4500 = phi float [ %4347, %4344 ], [ %3418, %3730 ], [ %3418, %3413 ], [ %3418, %3434 ], [ %4347, %4378 ], [ %4347, %4417 ], [ %4347, %4465 ], [ %4347, %4467 ]
  %4501 = phi float [ %4348, %4344 ], [ %3419, %3730 ], [ %3419, %3413 ], [ %3419, %3434 ], [ %4348, %4378 ], [ %4348, %4417 ], [ %4348, %4465 ], [ %4348, %4467 ]
  %4502 = phi float [ %4349, %4344 ], [ %3420, %3730 ], [ %3420, %3413 ], [ %3420, %3434 ], [ %4349, %4378 ], [ %4349, %4417 ], [ %4349, %4465 ], [ %4349, %4467 ]
  %4503 = phi float [ %4350, %4344 ], [ %3421, %3730 ], [ %3421, %3413 ], [ %3421, %3434 ], [ %4350, %4378 ], [ %4350, %4417 ], [ %4350, %4465 ], [ %4350, %4467 ]
  %4504 = phi float [ %3422, %4344 ], [ %3422, %3730 ], [ %3422, %3413 ], [ %3422, %3434 ], [ %4409, %4378 ], [ %4460, %4417 ], [ %3422, %4465 ], [ %4490, %4467 ]
  %4505 = phi float [ %3423, %4344 ], [ %3423, %3730 ], [ %3423, %3413 ], [ %3423, %3434 ], [ %4410, %4378 ], [ %4461, %4417 ], [ %3423, %4465 ], [ %4491, %4467 ]
  %4506 = phi float [ %3424, %4344 ], [ %3424, %3730 ], [ %3424, %3413 ], [ %3424, %3434 ], [ %4411, %4378 ], [ %4462, %4417 ], [ %3424, %4465 ], [ %4492, %4467 ]
  %4507 = phi float [ %3425, %4344 ], [ %3425, %3730 ], [ %3425, %3413 ], [ %3425, %3434 ], [ %4397, %4378 ], [ %4452, %4417 ], [ %3425, %4465 ], [ %4482, %4467 ]
  %4508 = phi float [ %3426, %4344 ], [ %3426, %3730 ], [ %3426, %3413 ], [ %3426, %3434 ], [ %4398, %4378 ], [ %4453, %4417 ], [ %3426, %4465 ], [ %4483, %4467 ]
  %4509 = phi float [ %3427, %4344 ], [ %3427, %3730 ], [ %3427, %3413 ], [ %3427, %3434 ], [ %4399, %4378 ], [ %4454, %4417 ], [ %3427, %4465 ], [ %4484, %4467 ]
  %4510 = phi float [ %4351, %4344 ], [ %3428, %3730 ], [ %3428, %3413 ], [ %3428, %3434 ], [ %4351, %4378 ], [ %4351, %4417 ], [ %4351, %4465 ], [ %4351, %4467 ]
  %4511 = phi float [ %3429, %4344 ], [ %3429, %3730 ], [ %3429, %3413 ], [ %3429, %3434 ], [ %4390, %4378 ], [ %4448, %4417 ], [ %3429, %4465 ], [ %4478, %4467 ]
  %4512 = phi float [ %3430, %4344 ], [ %3430, %3730 ], [ %3430, %3413 ], [ %3430, %3434 ], [ %4387, %4378 ], [ %4425, %4417 ], [ %3430, %4465 ], [ %4475, %4467 ]
  %4513 = phi float [ %3431, %4344 ], [ %3431, %3730 ], [ %3431, %3413 ], [ %3431, %3434 ], [ %4402, %4378 ], [ %4456, %4417 ], [ %3431, %4465 ], [ %4486, %4467 ]
  %4514 = phi float [ %3432, %4344 ], [ %3432, %3730 ], [ %3432, %3413 ], [ %3432, %3434 ], [ %4414, %4378 ], [ %4464, %4417 ], [ %3432, %4465 ], [ %4494, %4467 ]
  %4515 = phi float [ %4352, %4344 ], [ %3433, %3730 ], [ %3433, %3413 ], [ %3433, %3434 ], [ %4352, %4378 ], [ %4352, %4417 ], [ %4352, %4465 ], [ %4352, %4467 ]
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 0
  %4518 = call float @dx.op.dot2.f32(i32 54, float %4496, float %4497, float %4496, float %4497)  ; Dot2(ax,ay,bx,by)
  %4519 = fmul fast float %4518, 0x3FE3333340000000
  %4520 = fsub fast float 1.000000e+00, %4519
  %4521 = call float @dx.op.dot3.f32(i32 55, float %4496, float %4497, float %4520, float %4496, float %4497, float %4520)  ; Dot3(ax,ay,az,bx,by,bz)
  %4522 = call float @dx.op.unary.f32(i32 25, float %4521)  ; Rsqrt(value)
  %4523 = fmul fast float %4522, %4496
  %4524 = fmul fast float %4522, %4497
  %4525 = fmul fast float %4520, %4522
  %4526 = fmul fast float %4525, %111
  %4527 = fmul fast float %4525, %113
  %4528 = fmul fast float %4525, %115
  %4529 = fmul fast float %4523, %77
  %4530 = fmul fast float %4523, %78
  %4531 = fmul fast float %4523, %79
  %4532 = fadd fast float %4526, %4529
  %4533 = fadd fast float %4527, %4530
  %4534 = fadd fast float %4528, %4531
  %4535 = fmul fast float %125, %4524
  %4536 = fmul fast float %126, %4524
  %4537 = fmul fast float %127, %4524
  %4538 = fadd fast float %4532, %4535
  %4539 = fadd fast float %4533, %4536
  %4540 = fadd fast float %4534, %4537
  %4541 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4539, float %4540, float %4538, float %4539, float %4540)  ; Dot3(ax,ay,az,bx,by,bz)
  %4542 = call float @dx.op.unary.f32(i32 25, float %4541)  ; Rsqrt(value)
  %4543 = fmul fast float %4538, %4542
  %4544 = fmul fast float %4539, %4542
  %4545 = fmul fast float %4540, %4542
  %4546 = and i32 %58, 1
  %4547 = icmp eq i32 %4546, 0
  br i1 %4547, label %4548, label %5144

; <label>:4548                                    ; preds = %4495
  %4549 = call float @dx.op.unary.f32(i32 83, float %161)  ; DerivCoarseX(value)
  %4550 = call float @dx.op.unary.f32(i32 83, float %162)  ; DerivCoarseX(value)
  %4551 = call float @dx.op.unary.f32(i32 83, float %163)  ; DerivCoarseX(value)
  %4552 = call float @dx.op.unary.f32(i32 84, float %161)  ; DerivCoarseY(value)
  %4553 = call float @dx.op.unary.f32(i32 84, float %162)  ; DerivCoarseY(value)
  %4554 = call float @dx.op.unary.f32(i32 84, float %163)  ; DerivCoarseY(value)
  %4555 = fadd fast float %4549, %161
  %4556 = fadd fast float %4550, %162
  %4557 = fadd fast float %4551, %163
  %4558 = fadd fast float %4552, %161
  %4559 = fadd fast float %4553, %162
  %4560 = fadd fast float %4554, %163
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.CBufRet.f32 %4561, 1
  %4564 = extractvalue %dx.types.CBufRet.f32 %4561, 2
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4568 = fmul fast float %4562, %102
  %4569 = fmul fast float %4568, %4566
  %4570 = fmul fast float %4563, %103
  %4571 = fmul fast float %4570, %4567
  %4572 = fptoui float %4569 to i32
  %4573 = fptoui float %4571 to i32
  %4574 = fadd fast float %4562, -1.000000e+00
  %4575 = fadd fast float %4563, -1.000000e+00
  %4576 = fptoui float %4574 to i32
  %4577 = fptoui float %4575 to i32
  %4578 = call i32 @dx.op.binary.i32(i32 40, i32 %4572, i32 %4576)  ; UMin(a,b)
  %4579 = call i32 @dx.op.binary.i32(i32 40, i32 %4573, i32 %4577)  ; UMin(a,b)
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 2
  %4582 = extractvalue %dx.types.CBufRet.f32 %4580, 3
  %4583 = fmul fast float %4581, %93
  %4584 = fsub fast float %4583, %4582
  %4585 = fadd fast float %4564, -1.000000e+00
  %4586 = call float @dx.op.binary.f32(i32 36, float %4584, float %4585)  ; FMin(a,b)
  %4587 = fptoui float %4586 to i32
  %4588 = fptoui float %4562 to i32
  %4589 = fptoui float %4563 to i32
  %4590 = mul i32 %4587, %4589
  %4591 = add i32 %4590, %4579
  %4592 = mul i32 %4591, %4588
  %4593 = add i32 %4592, %4578
  %4594 = shl i32 %4593, 2
  %4595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.i32 %4595, 0
  %4597 = and i32 %4596, 1023
  %4598 = lshr i32 %4596, 10
  %4599 = icmp eq i32 %4597, 0
  br i1 %4599, label %5106, label %4600

; <label>:4600                                    ; preds = %4548
  %4601 = and i32 %4596, 1023
  br label %4602

; <label>:4602                                    ; preds = %4735, %4600
  %4603 = phi i32 [ %4685, %4735 ], [ 0, %4600 ]
  %4604 = phi float [ %4736, %4735 ], [ 0.000000e+00, %4600 ]
  %4605 = phi float [ %4737, %4735 ], [ %1264, %4600 ]
  %4606 = phi float [ %4738, %4735 ], [ %4517, %4600 ]
  %4607 = phi float [ %4739, %4735 ], [ %4515, %4600 ]
  %4608 = phi float [ %4740, %4735 ], [ %4507, %4600 ]
  %4609 = phi float [ %4741, %4735 ], [ %4508, %4600 ]
  %4610 = phi float [ %4742, %4735 ], [ %4509, %4600 ]
  %4611 = phi float [ %4743, %4735 ], [ %4514, %4600 ]
  %4612 = phi float [ %4744, %4735 ], [ 0.000000e+00, %4600 ]
  %4613 = phi float [ %4745, %4735 ], [ %4504, %4600 ]
  %4614 = phi float [ %4746, %4735 ], [ %4505, %4600 ]
  %4615 = phi float [ %4747, %4735 ], [ %4506, %4600 ]
  %4616 = phi float [ %4748, %4735 ], [ %4501, %4600 ]
  %4617 = phi float [ %4749, %4735 ], [ %4502, %4600 ]
  %4618 = phi float [ %4750, %4735 ], [ %4503, %4600 ]
  %4619 = phi float [ %4751, %4735 ], [ %4543, %4600 ]
  %4620 = phi float [ %4752, %4735 ], [ %4544, %4600 ]
  %4621 = phi float [ %4753, %4735 ], [ %4545, %4600 ]
  %4622 = phi float [ %4754, %4735 ], [ %4512, %4600 ]
  %4623 = phi float [ %4755, %4735 ], [ %4511, %4600 ]
  %4624 = phi float [ %4756, %4735 ], [ 0.000000e+00, %4600 ]
  %4625 = phi float [ %4757, %4735 ], [ %4510, %4600 ]
  %4626 = phi float [ %4758, %4735 ], [ %4498, %4600 ]
  %4627 = phi float [ %4759, %4735 ], [ %4499, %4600 ]
  %4628 = phi float [ %4760, %4735 ], [ %4500, %4600 ]
  %4629 = add nuw nsw i32 %4603, %4598
  %4630 = shl i32 %4629, 2
  %4631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4630, i32 undef)  ; BufferLoad(srv,index,wot)
  %4632 = extractvalue %dx.types.ResRet.i32 %4631, 0
  %4633 = shl i32 %4632, 8
  %4634 = or i32 %4633, 48
  %4635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4634, i32 undef)  ; BufferLoad(srv,index,wot)
  %4636 = extractvalue %dx.types.ResRet.f32 %4635, 0
  %4637 = extractvalue %dx.types.ResRet.f32 %4635, 1
  %4638 = extractvalue %dx.types.ResRet.f32 %4635, 2
  %4639 = extractvalue %dx.types.ResRet.f32 %4635, 3
  %4640 = or i32 %4633, 64
  %4641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4642 = extractvalue %dx.types.ResRet.i32 %4641, 0
  %4643 = extractvalue %dx.types.ResRet.i32 %4641, 1
  %4644 = or i32 %4633, 80
  %4645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4644, i32 undef)  ; BufferLoad(srv,index,wot)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 2
  %4647 = extractvalue %dx.types.ResRet.f32 %4645, 3
  %4648 = or i32 %4633, 96
  %4649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4648, i32 undef)  ; BufferLoad(srv,index,wot)
  %4650 = extractvalue %dx.types.ResRet.f32 %4649, 0
  %4651 = extractvalue %dx.types.ResRet.f32 %4649, 1
  %4652 = extractvalue %dx.types.ResRet.f32 %4649, 2
  %4653 = extractvalue %dx.types.ResRet.f32 %4649, 3
  %4654 = or i32 %4633, 112
  %4655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4654, i32 undef)  ; BufferLoad(srv,index,wot)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 2
  %4657 = or i32 %4633, 128
  %4658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4657, i32 undef)  ; BufferLoad(srv,index,wot)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = extractvalue %dx.types.ResRet.f32 %4658, 1
  %4661 = extractvalue %dx.types.ResRet.f32 %4658, 2
  %4662 = extractvalue %dx.types.ResRet.f32 %4658, 3
  %4663 = or i32 %4633, 144
  %4664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = extractvalue %dx.types.ResRet.f32 %4664, 1
  %4667 = extractvalue %dx.types.ResRet.f32 %4664, 2
  %4668 = extractvalue %dx.types.ResRet.f32 %4664, 3
  %4669 = or i32 %4633, 160
  %4670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4669, i32 undef)  ; BufferLoad(srv,index,wot)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4674 = extractvalue %dx.types.ResRet.f32 %4670, 3
  %4675 = or i32 %4633, 192
  %4676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4675, i32 undef)  ; BufferLoad(srv,index,wot)
  %4677 = extractvalue %dx.types.ResRet.i32 %4676, 0
  %4678 = or i32 %4633, 208
  %4679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4678, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = or i32 %4633, 248
  %4682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4681, i32 undef)  ; BufferLoad(srv,index,wot)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.ResRet.f32 %4682, 1
  %4685 = add nuw nsw i32 %4603, 1
  %4686 = bitcast float %4639 to i32
  %4687 = and i32 %4686, 512
  %4688 = icmp eq i32 %4687, 0
  %4689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4633, i32 undef)  ; BufferLoad(srv,index,wot)
  %4690 = extractvalue %dx.types.ResRet.f32 %4689, 0
  %4691 = extractvalue %dx.types.ResRet.f32 %4689, 1
  %4692 = extractvalue %dx.types.ResRet.f32 %4689, 2
  %4693 = extractvalue %dx.types.ResRet.f32 %4689, 3
  %4694 = call float @dx.op.dot4.f32(i32 56, float %4690, float %4691, float %4692, float %4693, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4695 = or i32 %4633, 16
  %4696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4695, i32 undef)  ; BufferLoad(srv,index,wot)
  %4697 = extractvalue %dx.types.ResRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.ResRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.ResRet.f32 %4696, 2
  %4700 = extractvalue %dx.types.ResRet.f32 %4696, 3
  %4701 = call float @dx.op.dot4.f32(i32 56, float %4697, float %4698, float %4699, float %4700, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4702 = or i32 %4633, 32
  %4703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4702, i32 undef)  ; BufferLoad(srv,index,wot)
  %4704 = extractvalue %dx.types.ResRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.ResRet.f32 %4703, 1
  %4706 = extractvalue %dx.types.ResRet.f32 %4703, 2
  %4707 = extractvalue %dx.types.ResRet.f32 %4703, 3
  %4708 = call float @dx.op.dot4.f32(i32 56, float %4704, float %4705, float %4706, float %4707, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4709 = call float @dx.op.unary.f32(i32 27, float %4694)  ; Round_ni(value)
  %4710 = call float @dx.op.unary.f32(i32 6, float %4709)  ; FAbs(value)
  %4711 = call float @dx.op.unary.f32(i32 27, float %4701)  ; Round_ni(value)
  %4712 = call float @dx.op.unary.f32(i32 6, float %4711)  ; FAbs(value)
  %4713 = call float @dx.op.unary.f32(i32 6, float %4708)  ; FAbs(value)
  %4714 = call float @dx.op.unary.f32(i32 27, float %4713)  ; Round_ni(value)
  %4715 = fadd fast float %4712, %4710
  %4716 = fadd fast float %4715, %4714
  %4717 = fcmp fast oeq float %4716, 0.000000e+00
  %4718 = call float @dx.op.dot4.f32(i32 56, float %4690, float %4691, float %4692, float %4693, float %4555, float %4556, float %4557, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4719 = call float @dx.op.dot4.f32(i32 56, float %4697, float %4698, float %4699, float %4700, float %4555, float %4556, float %4557, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4720 = call float @dx.op.dot4.f32(i32 56, float %4690, float %4691, float %4692, float %4693, float %4558, float %4559, float %4560, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4721 = call float @dx.op.dot4.f32(i32 56, float %4697, float %4698, float %4699, float %4700, float %4558, float %4559, float %4560, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4722 = fsub fast float %4718, %4694
  %4723 = fsub fast float %4720, %4694
  %4724 = fsub fast float %4719, %4701
  %4725 = fsub fast float %4721, %4701
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4637, float %4638, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.f32 %4727, 2
  %4729 = fadd fast float %4728, %4726
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4727, 0
  %4732 = fcmp fast ogt float %4730, %4731
  %4733 = and i1 %4717, %4732
  %4734 = and i1 %4688, %4733
  br i1 %4734, label %4762, label %4735

; <label>:4735                                    ; preds = %5092, %4843, %4762, %4602
  %4736 = phi float [ %4604, %4762 ], [ %4846, %4843 ], [ %4846, %5092 ], [ %4604, %4602 ]
  %4737 = phi float [ %4605, %4762 ], [ %4605, %4843 ], [ %5068, %5092 ], [ %4605, %4602 ]
  %4738 = phi float [ %4606, %4762 ], [ %4606, %4843 ], [ %5067, %5092 ], [ %4606, %4602 ]
  %4739 = phi float [ %4607, %4762 ], [ %4607, %4843 ], [ %5065, %5092 ], [ %4607, %4602 ]
  %4740 = phi float [ %4608, %4762 ], [ %4608, %4843 ], [ %5043, %5092 ], [ %4608, %4602 ]
  %4741 = phi float [ %4609, %4762 ], [ %4609, %4843 ], [ %5044, %5092 ], [ %4609, %4602 ]
  %4742 = phi float [ %4610, %4762 ], [ %4610, %4843 ], [ %5045, %5092 ], [ %4610, %4602 ]
  %4743 = phi float [ %4611, %4762 ], [ %4611, %4843 ], [ %4970, %5092 ], [ %4611, %4602 ]
  %4744 = phi float [ %4612, %4762 ], [ %4612, %4843 ], [ %4968, %5092 ], [ %4612, %4602 ]
  %4745 = phi float [ %4613, %4762 ], [ %4613, %4843 ], [ %5013, %5092 ], [ %4613, %4602 ]
  %4746 = phi float [ %4614, %4762 ], [ %4614, %4843 ], [ %5014, %5092 ], [ %4614, %4602 ]
  %4747 = phi float [ %4615, %4762 ], [ %4615, %4843 ], [ %5015, %5092 ], [ %4615, %4602 ]
  %4748 = phi float [ %4616, %4762 ], [ %4616, %4843 ], [ %5102, %5092 ], [ %4616, %4602 ]
  %4749 = phi float [ %4617, %4762 ], [ %4617, %4843 ], [ %5103, %5092 ], [ %4617, %4602 ]
  %4750 = phi float [ %4618, %4762 ], [ %4618, %4843 ], [ %5104, %5092 ], [ %4618, %4602 ]
  %4751 = phi float [ %4619, %4762 ], [ %4619, %4843 ], [ %4949, %5092 ], [ %4619, %4602 ]
  %4752 = phi float [ %4620, %4762 ], [ %4620, %4843 ], [ %4950, %5092 ], [ %4620, %4602 ]
  %4753 = phi float [ %4621, %4762 ], [ %4621, %4843 ], [ %4951, %5092 ], [ %4621, %4602 ]
  %4754 = phi float [ %4622, %4762 ], [ %4622, %4843 ], [ %5023, %5092 ], [ %4622, %4602 ]
  %4755 = phi float [ %4623, %4762 ], [ %4623, %4843 ], [ %5020, %5092 ], [ %4623, %4602 ]
  %4756 = phi float [ %4624, %4762 ], [ %4624, %4843 ], [ %5017, %5092 ], [ %4624, %4602 ]
  %4757 = phi float [ %4625, %4762 ], [ %4625, %4843 ], [ %4966, %5092 ], [ %4625, %4602 ]
  %4758 = phi float [ %4626, %4762 ], [ %4626, %4843 ], [ %4961, %5092 ], [ %4626, %4602 ]
  %4759 = phi float [ %4627, %4762 ], [ %4627, %4843 ], [ %4962, %5092 ], [ %4627, %4602 ]
  %4760 = phi float [ %4628, %4762 ], [ %4628, %4843 ], [ %4963, %5092 ], [ %4628, %4602 ]
  %4761 = icmp eq i32 %4685, %4601
  br i1 %4761, label %5105, label %4602

; <label>:4762                                    ; preds = %4602
  %4763 = extractvalue %dx.types.ResRet.f32 %4655, 3
  %4764 = extractvalue %dx.types.ResRet.f32 %4655, 1
  %4765 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4766 = extractvalue %dx.types.ResRet.f32 %4645, 1
  %4767 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4768 = extractvalue %dx.types.ResRet.i32 %4641, 3
  %4769 = extractvalue %dx.types.ResRet.i32 %4641, 2
  %4770 = add i32 %4768, 0
  %4771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4770, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4773 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4771, %dx.types.Handle %4772, float %4694, float %4701, float undef, float undef, i32 0, i32 0, i32 undef, float %4722, float %4724, float undef, float %4723, float %4725, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = fmul fast float %4774, %4767
  %4776 = fadd fast float %4775, %4766
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = fmul fast float %4694, %4650
  %4779 = call float @dx.op.tertiary.f32(i32 46, float %4651, float %4701, float %4778)  ; FMad(a,b,c)
  %4780 = fadd fast float %4779, %4765
  %4781 = fmul fast float %4694, %4652
  %4782 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4701, float %4781)  ; FMad(a,b,c)
  %4783 = fadd fast float %4782, %4764
  %4784 = fmul fast float %4722, %4650
  %4785 = call float @dx.op.tertiary.f32(i32 46, float %4651, float %4724, float %4784)  ; FMad(a,b,c)
  %4786 = fmul fast float %4722, %4652
  %4787 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4724, float %4786)  ; FMad(a,b,c)
  %4788 = fmul fast float %4723, %4650
  %4789 = call float @dx.op.tertiary.f32(i32 46, float %4651, float %4725, float %4788)  ; FMad(a,b,c)
  %4790 = fmul fast float %4723, %4652
  %4791 = call float @dx.op.tertiary.f32(i32 46, float %4653, float %4725, float %4790)  ; FMad(a,b,c)
  %4792 = add i32 %4769, 0
  %4793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4792, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4794 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4793, %dx.types.Handle %4772, float %4780, float %4783, float undef, float undef, i32 0, i32 0, i32 undef, float %4785, float %4787, float undef, float %4789, float %4791, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 0
  %4796 = and i32 %4686, 1024
  %4797 = icmp ne i32 %4796, 0
  %4798 = fcmp fast ogt float %4795, 0x3FE0101020000000
  %4799 = uitofp i1 %4798 to float
  %4800 = select i1 %4797, float %4799, float %4795
  %4801 = and i32 %4686, 8192
  %4802 = icmp ne i32 %4801, 0
  %4803 = select i1 %4802, float %4763, float 1.000000e+00
  %4804 = fmul fast float %4694, 2.000000e+00
  %4805 = fadd fast float %4804, -1.000000e+00
  %4806 = call float @dx.op.unary.f32(i32 6, float %4805)  ; FAbs(value)
  %4807 = fmul fast float %4806, %4683
  %4808 = fsub fast float %4807, %4683
  %4809 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4810 = fmul fast float %4701, 2.000000e+00
  %4811 = fadd fast float %4810, -1.000000e+00
  %4812 = call float @dx.op.unary.f32(i32 6, float %4811)  ; FAbs(value)
  %4813 = fmul fast float %4812, %4684
  %4814 = fsub fast float %4813, %4684
  %4815 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4816 = fmul fast float %4713, %4646
  %4817 = fsub fast float %4816, %4646
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fmul fast float %4777, %4803
  %4820 = fmul fast float %4819, %4774
  %4821 = fmul fast float %4820, %4809
  %4822 = fmul fast float %4821, %4800
  %4823 = fmul fast float %4822, %4815
  %4824 = fmul fast float %4823, %4818
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 1
  %4827 = extractvalue %dx.types.CBufRet.f32 %4825, 0
  %4828 = fsub fast float %4730, %4827
  %4829 = fmul fast float %4828, %4826
  %4830 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4831 = fmul fast float %4824, %4647
  %4832 = fadd fast float %4824, %4647
  %4833 = fmul fast float %4832, %4656
  %4834 = fsub fast float %4833, %4656
  %4835 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4836 = and i32 %4686, 128
  %4837 = icmp ne i32 %4836, 0
  %4838 = select i1 %4837, float %4835, float %4831
  %4839 = fmul fast float %4838, %4830
  %4840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4841 = extractvalue %dx.types.CBufRet.f32 %4840, 0
  %4842 = fcmp fast ugt float %4839, %4841
  br i1 %4842, label %4843, label %4735

; <label>:4843                                    ; preds = %4762
  %4844 = select i1 %4802, float %4839, float 0.000000e+00
  %4845 = fadd fast float %4844, %4604
  %4846 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  br i1 %4802, label %4735, label %4847

; <label>:4847                                    ; preds = %4843
  %4848 = and i32 %4686, 4
  %4849 = and i32 %4686, 8
  %4850 = add i32 %4642, 0
  %4851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4850, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4852 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4853 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4851, %dx.types.Handle %4852, float %4780, float %4783, float undef, float undef, i32 0, i32 0, i32 undef, float %4785, float %4787, float undef, float %4789, float %4791, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4854 = extractvalue %dx.types.ResRet.f32 %4853, 0
  %4855 = extractvalue %dx.types.ResRet.f32 %4853, 1
  %4856 = extractvalue %dx.types.ResRet.f32 %4853, 2
  %4857 = extractvalue %dx.types.ResRet.f32 %4853, 3
  %4858 = bitcast float %4668 to i32
  %4859 = and i32 %4858, 255
  %4860 = uitofp i32 %4859 to float
  %4861 = lshr i32 %4858, 8
  %4862 = and i32 %4861, 255
  %4863 = uitofp i32 %4862 to float
  %4864 = fmul fast float %4857, %4860
  %4865 = fadd fast float %4864, %4863
  %4866 = fmul fast float %4865, 0x3F70101000000000
  %4867 = add i32 %4643, 0
  %4868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4867, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4869 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4868, %dx.types.Handle %4852, float %4780, float %4783, float undef, float undef, i32 0, i32 0, i32 undef, float %4785, float %4787, float undef, float %4789, float %4791, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4870 = extractvalue %dx.types.ResRet.f32 %4869, 0
  %4871 = extractvalue %dx.types.ResRet.f32 %4869, 1
  %4872 = extractvalue %dx.types.ResRet.f32 %4869, 2
  %4873 = extractvalue %dx.types.ResRet.f32 %4869, 3
  %4874 = bitcast float %4662 to i32
  %4875 = and i32 %4874, 255
  %4876 = uitofp i32 %4875 to float
  %4877 = lshr i32 %4874, 8
  %4878 = and i32 %4877, 255
  %4879 = uitofp i32 %4878 to float
  %4880 = lshr i32 %4874, 16
  %4881 = and i32 %4880, 255
  %4882 = uitofp i32 %4881 to float
  %4883 = fmul fast float %4882, 0x3F70101000000000
  %4884 = fmul fast float %4870, %4876
  %4885 = fadd fast float %4884, %4879
  %4886 = fmul fast float %4885, 0x3F70101000000000
  %4887 = fadd fast float %4871, -5.000000e-01
  %4888 = fadd fast float %4873, -5.000000e-01
  %4889 = fmul fast float %4887, %4883
  %4890 = fmul fast float %4888, %4883
  %4891 = fadd fast float %4889, 5.000000e-01
  %4892 = fadd fast float %4890, 5.000000e-01
  %4893 = fmul fast float %4854, %4671
  %4894 = fmul fast float %4855, %4672
  %4895 = fmul fast float %4856, %4673
  %4896 = fmul fast float %4891, 2.000000e+00
  %4897 = fadd fast float %4896, -1.000000e+00
  %4898 = fmul fast float %4892, 2.000000e+00
  %4899 = fadd fast float %4898, -1.000000e+00
  %4900 = fadd fast float %4897, %4899
  %4901 = fmul fast float %4900, 5.000000e-01
  %4902 = fsub fast float %4897, %4899
  %4903 = fmul fast float %4902, 5.000000e-01
  %4904 = call float @dx.op.unary.f32(i32 6, float %4901)  ; FAbs(value)
  %4905 = fsub fast float 1.000000e+00, %4904
  %4906 = call float @dx.op.unary.f32(i32 6, float %4903)  ; FAbs(value)
  %4907 = fsub fast float %4905, %4906
  %4908 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4903, float %4907, float %4901, float %4903, float %4907)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = call float @dx.op.unary.f32(i32 25, float %4908)  ; Rsqrt(value)
  %4910 = fmul fast float %4901, %4909
  %4911 = fmul fast float %4903, %4909
  %4912 = fmul fast float %4909, %4907
  %4913 = fmul fast float %4912, %4636
  %4914 = fmul fast float %4912, %4637
  %4915 = fmul fast float %4912, %4638
  %4916 = fmul fast float %4910, %4659
  %4917 = fmul fast float %4910, %4660
  %4918 = fmul fast float %4910, %4661
  %4919 = fadd fast float %4916, %4913
  %4920 = fadd fast float %4917, %4914
  %4921 = fadd fast float %4918, %4915
  %4922 = fmul fast float %4911, %4665
  %4923 = fmul fast float %4911, %4666
  %4924 = fmul fast float %4911, %4667
  %4925 = fadd fast float %4919, %4922
  %4926 = fadd fast float %4920, %4923
  %4927 = fadd fast float %4921, %4924
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = call float @dx.op.unary.f32(i32 25, float %4928)  ; Rsqrt(value)
  %4930 = fmul fast float %4925, %4929
  %4931 = fmul fast float %4926, %4929
  %4932 = fmul fast float %4927, %4929
  %4933 = icmp ne i32 %4849, 0
  %4934 = select i1 %4933, float 1.000000e+00, float 0.000000e+00
  %4935 = fmul fast float %4839, %4934
  %4936 = and i32 %4686, 1
  %4937 = icmp eq i32 %4936, 0
  br i1 %4937, label %4938, label %4942

; <label>:4938                                    ; preds = %4847
  %4939 = fsub fast float %4930, %4619
  %4940 = fsub fast float %4931, %4620
  %4941 = fsub fast float %4932, %4621
  br label %4942

; <label>:4942                                    ; preds = %4938, %4847
  %4943 = phi float [ %4939, %4938 ], [ %4930, %4847 ]
  %4944 = phi float [ %4940, %4938 ], [ %4931, %4847 ]
  %4945 = phi float [ %4941, %4938 ], [ %4932, %4847 ]
  %4946 = fmul float %4945, %4935
  %4947 = fmul float %4944, %4935
  %4948 = fmul float %4943, %4935
  %4949 = fadd fast float %4948, %4619
  %4950 = fadd fast float %4947, %4620
  %4951 = fadd fast float %4946, %4621
  %4952 = icmp ne i32 %4848, 0
  %4953 = select i1 %4952, float 1.000000e+00, float 0.000000e+00
  %4954 = fmul fast float %4839, %4953
  %4955 = fsub fast float %4893, %4626
  %4956 = fsub fast float %4894, %4627
  %4957 = fsub fast float %4895, %4628
  %4958 = fmul fast float %4955, %4954
  %4959 = fmul fast float %4956, %4954
  %4960 = fmul fast float %4957, %4954
  %4961 = fadd fast float %4958, %4626
  %4962 = fadd fast float %4959, %4627
  %4963 = fadd fast float %4960, %4628
  %4964 = fsub fast float %4866, %4625
  %4965 = fmul fast float %4964, %4954
  %4966 = fadd fast float %4965, %4625
  %4967 = fmul fast float %4954, %4612
  %4968 = fsub fast float %4612, %4967
  %4969 = fmul fast float %4954, %4611
  %4970 = fsub fast float %4611, %4969
  %4971 = bitcast float %4680 to i32
  %4972 = lshr i32 %4971, 16
  %4973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4972)  ; LegacyF16ToF32(value)
  %4974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %4975 = extractvalue %dx.types.ResRet.i32 %4974, 0
  %4976 = and i32 %4975, 1
  %4977 = icmp eq i32 %4976, 0
  br i1 %4977, label %4978, label %5003

; <label>:4978                                    ; preds = %4942
  %4979 = fadd fast float %4866, 0xBFB99999A0000000
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fmul fast float %4980, 0x3FF1C71C80000000
  %4982 = fsub fast float 1.000000e+00, %4981
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fmul fast float %4983, %4893
  %4985 = fmul fast float %4983, %4894
  %4986 = fmul fast float %4983, %4895
  %4987 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4989 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4990 = call float @dx.op.binary.f32(i32 35, float %4988, float %4989)  ; FMax(a,b)
  %4991 = call float @dx.op.binary.f32(i32 35, float %4987, float %4990)  ; FMax(a,b)
  %4992 = fcmp fast ogt float %4991, 0.000000e+00
  %4993 = bitcast float %4991 to i32
  %4994 = sub nsw i32 2129859010, %4993
  %4995 = bitcast i32 %4994 to float
  %4996 = select i1 %4992, float %4995, float 0.000000e+00
  %4997 = fmul fast float %4987, %4973
  %4998 = fmul fast float %4988, %4973
  %4999 = fmul fast float %4989, %4973
  %5000 = fmul fast float %4997, %4996
  %5001 = fmul fast float %4998, %4996
  %5002 = fmul fast float %4999, %4996
  br label %5003

; <label>:5003                                    ; preds = %4978, %4942
  %5004 = phi float [ %4973, %4942 ], [ %5000, %4978 ]
  %5005 = phi float [ %4973, %4942 ], [ %5001, %4978 ]
  %5006 = phi float [ %4973, %4942 ], [ %5002, %4978 ]
  %5007 = fsub fast float %5004, %4613
  %5008 = fsub fast float %5005, %4614
  %5009 = fsub fast float %5006, %4615
  %5010 = fmul fast float %5007, %4954
  %5011 = fmul fast float %5008, %4954
  %5012 = fmul fast float %5009, %4954
  %5013 = fadd fast float %5010, %4613
  %5014 = fadd fast float %5011, %4614
  %5015 = fadd fast float %5012, %4615
  %5016 = fadd fast float %4839, %4624
  %5017 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5018 = fsub fast float %4886, %4623
  %5019 = fmul fast float %5018, %4935
  %5020 = fadd fast float %5019, %4623
  %5021 = fsub fast float %4872, %4622
  %5022 = fmul fast float %5021, %4935
  %5023 = fadd fast float %5022, %4622
  br i1 %4937, label %5032, label %5024

; <label>:5024                                    ; preds = %5003
  %5025 = and i32 %4686, 32768
  %5026 = icmp eq i32 %5025, 0
  br i1 %5026, label %5042, label %5027

; <label>:5027                                    ; preds = %5024
  %5028 = fmul fast float %4935, 1.270000e+02
  %5029 = fadd fast float %5028, %4608
  %5030 = fadd fast float %5028, %4609
  %5031 = fadd fast float %5028, %4610
  br label %5042

; <label>:5032                                    ; preds = %5003
  %5033 = fsub fast float 1.270000e+02, %4608
  %5034 = fsub fast float 1.270000e+02, %4609
  %5035 = fsub fast float 1.270000e+02, %4610
  %5036 = fmul fast float %4935, %5033
  %5037 = fmul fast float %4935, %5034
  %5038 = fmul fast float %4935, %5035
  %5039 = fadd fast float %5036, %4608
  %5040 = fadd fast float %5037, %4609
  %5041 = fadd fast float %5038, %4610
  br label %5042

; <label>:5042                                    ; preds = %5032, %5027, %5024
  %5043 = phi float [ %5029, %5027 ], [ %4608, %5024 ], [ %5039, %5032 ]
  %5044 = phi float [ %5030, %5027 ], [ %4609, %5024 ], [ %5040, %5032 ]
  %5045 = phi float [ %5031, %5027 ], [ %4610, %5024 ], [ %5041, %5032 ]
  %5046 = call float @dx.op.dot3.f32(i32 55, float %4893, float %4894, float %4895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5048 = extractvalue %dx.types.CBufRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.CBufRet.f32 %5047, 1
  %5050 = fmul fast float %5049, %5046
  %5051 = fadd fast float %5050, %5048
  %5052 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5053 = bitcast float %4674 to i32
  %5054 = and i32 %5053, 65535
  %5055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5054)  ; LegacyF16ToF32(value)
  %5056 = lshr i32 %5053, 16
  %5057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5056)  ; LegacyF16ToF32(value)
  %5058 = fcmp fast oge float %5055, 0.000000e+00
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 0
  %5061 = select i1 %5058, float %5055, float %5060
  %5062 = fadd fast float %5061, %5057
  %5063 = fsub fast float %5052, %4607
  %5064 = fmul fast float %5063, %4839
  %5065 = fadd fast float %5064, %4607
  %5066 = fmul fast float %5062, %4839
  %5067 = call float @dx.op.binary.f32(i32 35, float %4606, float %5066)  ; FMax(a,b)
  %5068 = call float @dx.op.binary.f32(i32 35, float %4605, float %4839)  ; FMax(a,b)
  %5069 = and i32 %4686, 16
  %5070 = icmp eq i32 %5069, 0
  br i1 %5070, label %5092, label %5071

; <label>:5071                                    ; preds = %5042
  %5072 = add i32 %4677, 0
  %5073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5072, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5074 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5073, %dx.types.Handle %4852, float %4780, float %4783, float undef, float undef, i32 0, i32 0, i32 undef, float %4785, float %4787, float undef, float %4789, float %4791, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5075 = extractvalue %dx.types.ResRet.f32 %5074, 0
  %5076 = extractvalue %dx.types.ResRet.f32 %5074, 1
  %5077 = extractvalue %dx.types.ResRet.f32 %5074, 2
  %5078 = and i32 %4971, 65535
  %5079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5078)  ; LegacyF16ToF32(value)
  %5080 = fmul fast float %5075, %4671
  %5081 = fmul fast float %5076, %4672
  %5082 = fmul fast float %5077, %4673
  %5083 = and i32 %4686, 16384
  %5084 = icmp ne i32 %5083, 0
  %5085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.f32 %5085, 0
  %5087 = select i1 %5084, float %5086, float 1.000000e+00
  %5088 = fmul fast float %5087, %5079
  %5089 = fmul fast float %5080, %5088
  %5090 = fmul fast float %5081, %5088
  %5091 = fmul fast float %5082, %5088
  br label %5092

; <label>:5092                                    ; preds = %5071, %5042
  %5093 = phi float [ %5089, %5071 ], [ 0.000000e+00, %5042 ]
  %5094 = phi float [ %5090, %5071 ], [ 0.000000e+00, %5042 ]
  %5095 = phi float [ %5091, %5071 ], [ 0.000000e+00, %5042 ]
  %5096 = fsub fast float %5093, %4616
  %5097 = fsub fast float %5094, %4617
  %5098 = fsub fast float %5095, %4618
  %5099 = fmul fast float %5096, %4839
  %5100 = fmul fast float %5097, %4839
  %5101 = fmul fast float %5098, %4839
  %5102 = fadd fast float %5099, %4616
  %5103 = fadd fast float %5100, %4617
  %5104 = fadd fast float %5101, %4618
  br label %4735

; <label>:5105                                    ; preds = %4735
  br label %5106

; <label>:5106                                    ; preds = %5105, %4548
  %5107 = phi float [ 0.000000e+00, %4548 ], [ %4736, %5105 ]
  %5108 = phi float [ %1264, %4548 ], [ %4737, %5105 ]
  %5109 = phi float [ %4517, %4548 ], [ %4738, %5105 ]
  %5110 = phi float [ %4515, %4548 ], [ %4739, %5105 ]
  %5111 = phi float [ %4507, %4548 ], [ %4740, %5105 ]
  %5112 = phi float [ %4508, %4548 ], [ %4741, %5105 ]
  %5113 = phi float [ %4509, %4548 ], [ %4742, %5105 ]
  %5114 = phi float [ %4514, %4548 ], [ %4743, %5105 ]
  %5115 = phi float [ 0.000000e+00, %4548 ], [ %4744, %5105 ]
  %5116 = phi float [ %4504, %4548 ], [ %4745, %5105 ]
  %5117 = phi float [ %4505, %4548 ], [ %4746, %5105 ]
  %5118 = phi float [ %4506, %4548 ], [ %4747, %5105 ]
  %5119 = phi float [ %4501, %4548 ], [ %4748, %5105 ]
  %5120 = phi float [ %4502, %4548 ], [ %4749, %5105 ]
  %5121 = phi float [ %4503, %4548 ], [ %4750, %5105 ]
  %5122 = phi float [ %4543, %4548 ], [ %4751, %5105 ]
  %5123 = phi float [ %4544, %4548 ], [ %4752, %5105 ]
  %5124 = phi float [ %4545, %4548 ], [ %4753, %5105 ]
  %5125 = phi float [ %4512, %4548 ], [ %4754, %5105 ]
  %5126 = phi float [ %4511, %4548 ], [ %4755, %5105 ]
  %5127 = phi float [ 0.000000e+00, %4548 ], [ %4756, %5105 ]
  %5128 = phi float [ %4510, %4548 ], [ %4757, %5105 ]
  %5129 = phi float [ %4498, %4548 ], [ %4758, %5105 ]
  %5130 = phi float [ %4499, %4548 ], [ %4759, %5105 ]
  %5131 = phi float [ %4500, %4548 ], [ %4760, %5105 ]
  %5132 = call float @dx.op.dot3.f32(i32 55, float %5122, float %5123, float %5124, float %5122, float %5123, float %5124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5133 = call float @dx.op.unary.f32(i32 25, float %5132)  ; Rsqrt(value)
  %5134 = fmul fast float %5133, %5122
  %5135 = fmul fast float %5133, %5123
  %5136 = fmul fast float %5133, %5124
  %5137 = fadd fast float %5127, %1264
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = call float @dx.op.dot3.f32(i32 55, float %5134, float %5135, float %5136, float %5134, float %5135, float %5136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = call float @dx.op.unary.f32(i32 25, float %5139)  ; Rsqrt(value)
  %5141 = fmul fast float %5140, %5134
  %5142 = fmul fast float %5140, %5135
  %5143 = fmul fast float %5140, %5136
  br label %5144

; <label>:5144                                    ; preds = %5106, %4495
  %5145 = phi float [ %5141, %5106 ], [ %4543, %4495 ]
  %5146 = phi float [ %5142, %5106 ], [ %4544, %4495 ]
  %5147 = phi float [ %5143, %5106 ], [ %4545, %4495 ]
  %5148 = phi float [ %5129, %5106 ], [ %4498, %4495 ]
  %5149 = phi float [ %5130, %5106 ], [ %4499, %4495 ]
  %5150 = phi float [ %5131, %5106 ], [ %4500, %4495 ]
  %5151 = phi float [ %5119, %5106 ], [ %4501, %4495 ]
  %5152 = phi float [ %5120, %5106 ], [ %4502, %4495 ]
  %5153 = phi float [ %5121, %5106 ], [ %4503, %4495 ]
  %5154 = phi float [ %5116, %5106 ], [ %4504, %4495 ]
  %5155 = phi float [ %5117, %5106 ], [ %4505, %4495 ]
  %5156 = phi float [ %5118, %5106 ], [ %4506, %4495 ]
  %5157 = phi float [ %5111, %5106 ], [ %4507, %4495 ]
  %5158 = phi float [ %5112, %5106 ], [ %4508, %4495 ]
  %5159 = phi float [ %5113, %5106 ], [ %4509, %4495 ]
  %5160 = phi float [ %5128, %5106 ], [ %4510, %4495 ]
  %5161 = phi float [ %5138, %5106 ], [ %1264, %4495 ]
  %5162 = phi float [ %5126, %5106 ], [ %4511, %4495 ]
  %5163 = phi float [ %5125, %5106 ], [ %4512, %4495 ]
  %5164 = phi float [ %5115, %5106 ], [ 0.000000e+00, %4495 ]
  %5165 = phi float [ %5114, %5106 ], [ %4514, %4495 ]
  %5166 = phi float [ %5107, %5106 ], [ 0.000000e+00, %4495 ]
  %5167 = phi float [ %5109, %5106 ], [ %4517, %4495 ]
  %5168 = phi float [ %5108, %5106 ], [ %1264, %4495 ]
  %5169 = phi float [ %5110, %5106 ], [ %4515, %4495 ]
  %5170 = fadd fast float %5160, 0xBFB99999A0000000
  %5171 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  %5172 = fmul fast float %5171, 0x3FF1C71C80000000
  %5173 = call float @dx.op.binary.f32(i32 36, float %5160, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5174 = fsub fast float 1.000000e+00, %5172
  %5175 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5176 = fmul fast float %5175, %5148
  %5177 = fmul fast float %5175, %5149
  %5178 = fmul fast float %5175, %5150
  %5179 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5180 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5181 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5182 = fmul fast float %5172, %5148
  %5183 = fmul fast float %5172, %5149
  %5184 = fmul fast float %5172, %5150
  %5185 = fadd fast float %5182, %5173
  %5186 = fadd fast float %5183, %5173
  %5187 = fadd fast float %5184, %5173
  %5188 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5190 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5191 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %5193 = extractvalue %dx.types.ResRet.i32 %5192, 0
  %5194 = and i32 %5193, 1
  %5195 = icmp eq i32 %5194, 0
  br i1 %5195, label %5210, label %5196

; <label>:5196                                    ; preds = %5144
  %5197 = call float @dx.op.binary.f32(i32 35, float %5180, float %5181)  ; FMax(a,b)
  %5198 = call float @dx.op.binary.f32(i32 35, float %5179, float %5197)  ; FMax(a,b)
  %5199 = fcmp fast ogt float %5198, 0.000000e+00
  %5200 = bitcast float %5198 to i32
  %5201 = sub nsw i32 2129859010, %5200
  %5202 = bitcast i32 %5201 to float
  %5203 = select i1 %5199, float %5202, float 0.000000e+00
  %5204 = fmul fast float %5179, %5154
  %5205 = fmul fast float %5180, %5155
  %5206 = fmul fast float %5181, %5156
  %5207 = fmul fast float %5204, %5203
  %5208 = fmul fast float %5205, %5203
  %5209 = fmul fast float %5206, %5203
  br label %5210

; <label>:5210                                    ; preds = %5196, %5144
  %5211 = phi float [ %5207, %5196 ], [ %5154, %5144 ]
  %5212 = phi float [ %5208, %5196 ], [ %5155, %5144 ]
  %5213 = phi float [ %5209, %5196 ], [ %5156, %5144 ]
  %5214 = call float @dx.op.binary.f32(i32 36, float %5157, float 1.270000e+02)  ; FMin(a,b)
  %5215 = call float @dx.op.binary.f32(i32 36, float %5158, float 1.270000e+02)  ; FMin(a,b)
  %5216 = call float @dx.op.binary.f32(i32 36, float %5159, float 1.270000e+02)  ; FMin(a,b)
  %5217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.i32 %5217, 3
  %5219 = and i32 %5218, 8
  %5220 = icmp ne i32 %5219, 0
  %5221 = call float @dx.op.binary.f32(i32 35, float %5179, float %5148)  ; FMax(a,b)
  %5222 = call float @dx.op.binary.f32(i32 35, float %5180, float %5148)  ; FMax(a,b)
  %5223 = call float @dx.op.binary.f32(i32 35, float %5181, float %5148)  ; FMax(a,b)
  %5224 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5225 = select i1 %223, float %5148, float %5179
  %5226 = select i1 %223, float %5224, float %5180
  %5227 = select i1 %223, float 1.000000e+00, float %5181
  %5228 = select i1 %5220, float %5221, float %5225
  %5229 = select i1 %5220, float %5222, float %5226
  %5230 = select i1 %5220, float %5223, float %5227
  %5231 = call float @dx.op.dot3.f32(i32 55, float %5211, float %5212, float %5213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5232 = select i1 %223, float %5231, float %5211
  %5233 = select i1 %223, float %5231, float %5212
  %5234 = select i1 %223, float %5231, float %5213
  %5235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.CBufRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.CBufRet.f32 %5235, 2
  %5239 = fadd fast float %5236, %161
  %5240 = fadd fast float %5237, %162
  %5241 = fadd fast float %5238, %163
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5245 = fsub fast float %5239, %5243
  %5246 = fsub fast float %5240, %5244
  %5247 = fmul fast float %5245, %5245
  %5248 = fmul fast float %5246, %5246
  %5249 = fadd fast float %5247, %5248
  %5250 = call float @dx.op.unary.f32(i32 24, float %5249)  ; Sqrt(value)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5242, 2
  %5252 = fcmp fast olt float %5250, %5251
  br i1 %5252, label %5253, label %5320

; <label>:5253                                    ; preds = %5210
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 0
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5261 = extractvalue %dx.types.CBufRet.f32 %5256, 1
  %5262 = extractvalue %dx.types.CBufRet.f32 %5258, 1
  %5263 = extractvalue %dx.types.CBufRet.f32 %5254, 3
  %5264 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5265 = extractvalue %dx.types.CBufRet.f32 %5258, 3
  %5266 = fadd fast float %5263, %5239
  %5267 = fadd fast float %5264, %5240
  %5268 = fadd fast float %5265, %5241
  %5269 = fmul fast float %5266, %5255
  %5270 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5257, float %5269)  ; FMad(a,b,c)
  %5271 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5259, float %5270)  ; FMad(a,b,c)
  %5272 = fmul fast float %5266, %5260
  %5273 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5261, float %5272)  ; FMad(a,b,c)
  %5274 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5262, float %5273)  ; FMad(a,b,c)
  %5275 = fsub fast float %5271, %5263
  %5276 = fsub fast float %5274, %5264
  %5277 = fsub fast float %5275, %5243
  %5278 = fadd fast float %5277, %5251
  %5279 = fsub fast float %5276, %5244
  %5280 = fadd fast float %5279, %5251
  %5281 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5282 = fmul fast float %5278, %5281
  %5283 = fmul fast float %5280, %5281
  %5284 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5286 = fsub fast float 1.000000e+00, %5284
  %5287 = fsub fast float 1.000000e+00, %5285
  %5288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %5286, float %5287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = fcmp fast ugt float %5289, 0.000000e+00
  br i1 %5290, label %5291, label %5594

; <label>:5291                                    ; preds = %5253
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 2
  %5294 = fmul fast float %5293, %5289
  %5295 = extractvalue %dx.types.CBufRet.f32 %5292, 3
  %5296 = fadd fast float %5295, %5294
  %5297 = extractvalue %dx.types.CBufRet.f32 %5258, 2
  %5298 = fadd fast float %5296, %5265
  %5299 = fmul fast float %5271, %5259
  %5300 = call float @dx.op.tertiary.f32(i32 46, float %5274, float %5262, float %5299)  ; FMad(a,b,c)
  %5301 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5297, float %5300)  ; FMad(a,b,c)
  %5302 = fsub fast float %5301, %5265
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 2
  %5305 = fsub fast float %5302, %5304
  %5306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %5286, float %5287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.ResRet.f32 %5306, 1
  %5309 = extractvalue %dx.types.ResRet.f32 %5306, 2
  %5310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %5286, float %5287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5311 = extractvalue %dx.types.ResRet.f32 %5310, 0
  %5312 = extractvalue %dx.types.ResRet.f32 %5310, 1
  %5313 = extractvalue %dx.types.ResRet.f32 %5310, 2
  %5314 = fadd fast float %5311, %5307
  %5315 = fmul fast float %5314, 0x3F847AE140000000
  %5316 = fadd fast float %5312, %5308
  %5317 = fmul fast float %5316, 0x3F847AE140000000
  %5318 = fadd fast float %5313, %5309
  %5319 = fmul fast float %5318, 0x3F847AE140000000
  br label %5594

; <label>:5320                                    ; preds = %5210
  %5321 = and i32 %199, 1
  %5322 = icmp eq i32 %5321, 0
  br i1 %5322, label %5594, label %5323

; <label>:5323                                    ; preds = %5320
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 0
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 0
  %5330 = extractvalue %dx.types.CBufRet.f32 %5324, 1
  %5331 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5332 = extractvalue %dx.types.CBufRet.f32 %5328, 1
  %5333 = extractvalue %dx.types.CBufRet.f32 %5324, 3
  %5334 = extractvalue %dx.types.CBufRet.f32 %5326, 3
  %5335 = extractvalue %dx.types.CBufRet.f32 %5328, 3
  %5336 = fadd fast float %5333, %5239
  %5337 = fadd fast float %5334, %5240
  %5338 = fadd fast float %5335, %5241
  %5339 = fmul fast float %5336, %5325
  %5340 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5327, float %5339)  ; FMad(a,b,c)
  %5341 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5329, float %5340)  ; FMad(a,b,c)
  %5342 = fmul fast float %5336, %5330
  %5343 = call float @dx.op.tertiary.f32(i32 46, float %5337, float %5331, float %5342)  ; FMad(a,b,c)
  %5344 = call float @dx.op.tertiary.f32(i32 46, float %5338, float %5332, float %5343)  ; FMad(a,b,c)
  %5345 = fsub fast float %5341, %5333
  %5346 = fsub fast float %5344, %5334
  %5347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.CBufRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.CBufRet.f32 %5347, 2
  %5351 = extractvalue %dx.types.CBufRet.f32 %5347, 3
  %5352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.f32 %5352, 3
  %5354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.i32 %5354, 0
  %5356 = extractvalue %dx.types.CBufRet.i32 %5354, 1
  %5357 = udiv i32 %5356, %5355
  %5358 = fsub fast float %5345, %5348
  %5359 = fsub fast float %5346, %5349
  %5360 = call float @dx.op.binary.f32(i32 35, float %5358, float 0.000000e+00)  ; FMax(a,b)
  %5361 = call float @dx.op.binary.f32(i32 35, float %5359, float 0.000000e+00)  ; FMax(a,b)
  %5362 = call float @dx.op.binary.f32(i32 36, float %5360, float %5350)  ; FMin(a,b)
  %5363 = call float @dx.op.binary.f32(i32 36, float %5361, float %5351)  ; FMin(a,b)
  %5364 = add i32 %5355, -1
  %5365 = add i32 %5357, -1
  %5366 = fmul fast float %5362, %5353
  %5367 = fmul fast float %5363, %5353
  %5368 = fptoui float %5366 to i32
  %5369 = fptoui float %5367 to i32
  %5370 = call i32 @dx.op.binary.i32(i32 40, i32 %5368, i32 %5364)  ; UMin(a,b)
  %5371 = call i32 @dx.op.binary.i32(i32 40, i32 %5369, i32 %5365)  ; UMin(a,b)
  %5372 = mul i32 %5371, %5355
  %5373 = add i32 %5372, %5370
  %5374 = shl i32 %5373, 2
  %5375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5374, i32 undef)  ; BufferLoad(srv,index,wot)
  %5376 = extractvalue %dx.types.ResRet.i32 %5375, 0
  %5377 = icmp eq i32 %5376, -1
  br i1 %5377, label %5594, label %5378

; <label>:5378                                    ; preds = %5323
  %5379 = mul i32 %5376, 148
  %5380 = add i32 %5379, 4
  %5381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5380, i32 undef)  ; BufferLoad(srv,index,wot)
  %5382 = extractvalue %dx.types.ResRet.f32 %5381, 0
  %5383 = add i32 %5379, 8
  %5384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5383, i32 undef)  ; BufferLoad(srv,index,wot)
  %5385 = extractvalue %dx.types.ResRet.f32 %5384, 0
  %5386 = add i32 %5379, 36
  %5387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5386, i32 undef)  ; BufferLoad(srv,index,wot)
  %5388 = extractvalue %dx.types.ResRet.f32 %5387, 0
  %5389 = add i32 %5379, 60
  %5390 = add i32 %5379, 92
  %5391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5390, i32 undef)  ; BufferLoad(srv,index,wot)
  %5392 = extractvalue %dx.types.ResRet.i32 %5391, 0
  %5393 = add i32 %5379, 116
  %5394 = fsub fast float %5345, %5382
  %5395 = fsub fast float %5346, %5385
  %5396 = fmul fast float %5353, %5394
  %5397 = fmul fast float %5353, %5395
  %5398 = call float @dx.op.unary.f32(i32 7, float %5396)  ; Saturate(value)
  %5399 = call float @dx.op.unary.f32(i32 7, float %5397)  ; Saturate(value)
  %5400 = fsub fast float 1.000000e+00, %5399
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 2
  %5403 = call float @dx.op.unary.f32(i32 83, float %5398)  ; DerivCoarseX(value)
  %5404 = call float @dx.op.unary.f32(i32 83, float %5400)  ; DerivCoarseX(value)
  %5405 = call float @dx.op.unary.f32(i32 84, float %5398)  ; DerivCoarseY(value)
  %5406 = call float @dx.op.unary.f32(i32 84, float %5400)  ; DerivCoarseY(value)
  %5407 = fmul fast float %5403, %5402
  %5408 = fmul fast float %5404, %5402
  %5409 = fmul fast float %5405, %5402
  %5410 = fmul fast float %5406, %5402
  %5411 = call float @dx.op.dot2.f32(i32 54, float %5409, float %5410, float %5409, float %5410)  ; Dot2(ax,ay,bx,by)
  %5412 = call float @dx.op.dot2.f32(i32 54, float %5407, float %5408, float %5407, float %5408)  ; Dot2(ax,ay,bx,by)
  %5413 = call float @dx.op.binary.f32(i32 35, float %5412, float %5411)  ; FMax(a,b)
  %5414 = call float @dx.op.unary.f32(i32 23, float %5413)  ; Log(value)
  %5415 = fmul fast float %5414, 5.000000e-01
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 1
  %5418 = fadd fast float %5417, %5415
  %5419 = call float @dx.op.binary.f32(i32 35, float %5418, float 0.000000e+00)  ; FMax(a,b)
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 3
  %5422 = fadd fast float %5421, %5419
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 3
  %5425 = fadd fast float %5422, %5424
  %5426 = add i32 %5392, 0
  %5427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5426, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5428 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5427, i32 0)  ; GetDimensions(handle,mipLevel)
  %5429 = extractvalue %dx.types.Dimensions %5428, 0
  %5430 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5429)  ; FirstbitLo(value)
  %5431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.i32 %5431, 1
  %5433 = sub nsw i32 %5432, %5430
  %5434 = sitofp i32 %5433 to float
  %5435 = fsub fast float %5425, %5434
  %5436 = call float @dx.op.binary.f32(i32 35, float %5435, float 0.000000e+00)  ; FMax(a,b)
  %5437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5427, %dx.types.Handle %46, float %5398, float %5400, float %5388, float undef, i32 0, i32 0, i32 undef, float %5436)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5438 = extractvalue %dx.types.ResRet.f32 %5437, 0
  %5439 = fcmp ule float %5438, 0x3FE0101020000000
  %5440 = extractvalue %dx.types.CBufRet.i32 %5431, 0
  %5441 = and i32 %5440, 128
  %5442 = icmp ne i32 %5441, 0
  %5443 = and i1 %5439, %5442
  br i1 %5443, label %5594, label %5444

; <label>:5444                                    ; preds = %5378
  %5445 = add i32 %5379, 20
  %5446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5445, i32 undef)  ; BufferLoad(srv,index,wot)
  %5447 = extractvalue %dx.types.ResRet.f32 %5446, 0
  %5448 = add i32 %5379, 24
  %5449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = add i32 %5379, 40
  %5452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = add i32 %5379, 96
  %5455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5454, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.i32 %5455, 0
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 2
  %5459 = fmul fast float %5458, %5398
  %5460 = fmul fast float %5458, %5400
  %5461 = extractvalue %dx.types.CBufRet.f32 %5457, 3
  %5462 = fadd fast float %5459, %5461
  %5463 = fadd fast float %5460, %5461
  %5464 = add i32 %5456, 0
  %5465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5464, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5466 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5465, i32 0)  ; GetDimensions(handle,mipLevel)
  %5467 = extractvalue %dx.types.Dimensions %5466, 0
  %5468 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5467)  ; FirstbitLo(value)
  %5469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.i32 %5469, 1
  %5471 = sub nsw i32 %5470, %5468
  %5472 = sitofp i32 %5471 to float
  %5473 = fsub fast float %5422, %5472
  %5474 = call float @dx.op.binary.f32(i32 35, float %5473, float 0.000000e+00)  ; FMax(a,b)
  %5475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5465, %dx.types.Handle %46, float %5462, float %5463, float %5453, float undef, i32 0, i32 0, i32 undef, float %5474)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5476 = extractvalue %dx.types.ResRet.f32 %5475, 0
  %5477 = fmul fast float %5476, %5447
  %5478 = fadd fast float %5477, %5450
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.CBufRet.f32 %5479, 1
  %5482 = extractvalue %dx.types.CBufRet.f32 %5479, 2
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 3
  %5485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.f32 %5485, 3
  %5487 = extractvalue %dx.types.CBufRet.f32 %5479, 3
  %5488 = fadd fast float %5484, %5345
  %5489 = fadd fast float %5486, %5346
  %5490 = fadd fast float %5478, %5487
  %5491 = fmul fast float %5488, %5480
  %5492 = call float @dx.op.tertiary.f32(i32 46, float %5489, float %5481, float %5491)  ; FMad(a,b,c)
  %5493 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %5482, float %5492)  ; FMad(a,b,c)
  %5494 = fsub fast float %5493, %5487
  %5495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.f32 %5495, 2
  %5497 = fsub fast float %5494, %5496
  %5498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.i32 %5498, 0
  %5500 = call i32 @dx.op.binary.i32(i32 40, i32 %5376, i32 %5499)  ; UMin(a,b)
  %5501 = mul i32 %5500, 36
  %5502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5501, i32 undef)  ; BufferLoad(srv,index,wot)
  %5503 = extractvalue %dx.types.ResRet.i32 %5502, 0
  %5504 = add i32 %5501, 4
  %5505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.f32 %5505, 0
  %5507 = fmul fast float %5506, %5398
  %5508 = fmul fast float %5506, %5400
  %5509 = extractvalue %dx.types.CBufRet.f32 %5505, 1
  %5510 = fadd fast float %5507, %5509
  %5511 = fadd fast float %5508, %5509
  %5512 = icmp eq i32 %5503, 0
  br i1 %5512, label %5581, label %5513

; <label>:5513                                    ; preds = %5444
  br label %5514

; <label>:5514                                    ; preds = %5571, %5513
  %5515 = phi float [ %5572, %5571 ], [ 0.000000e+00, %5513 ]
  %5516 = phi float [ %5573, %5571 ], [ 0.000000e+00, %5513 ]
  %5517 = phi float [ %5574, %5571 ], [ 0.000000e+00, %5513 ]
  %5518 = phi float [ %5575, %5571 ], [ 0.000000e+00, %5513 ]
  %5519 = phi float [ %5576, %5571 ], [ 0.000000e+00, %5513 ]
  %5520 = phi float [ %5577, %5571 ], [ 0.000000e+00, %5513 ]
  %5521 = phi i32 [ %5578, %5571 ], [ 0, %5513 ]
  %5522 = shl i32 %5521, 2
  %5523 = add i32 %5389, %5522
  %5524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5523, i32 undef)  ; BufferLoad(srv,index,wot)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  %5526 = add i32 %5393, %5522
  %5527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5526, i32 undef)  ; BufferLoad(srv,index,wot)
  %5528 = extractvalue %dx.types.ResRet.i32 %5527, 0
  %5529 = add i32 %5528, 0
  %5530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5529, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5531 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5530, i32 0)  ; GetDimensions(handle,mipLevel)
  %5532 = extractvalue %dx.types.Dimensions %5531, 0
  %5533 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5532)  ; FirstbitLo(value)
  %5534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.i32 %5534, 1
  %5536 = sub nsw i32 %5535, %5533
  %5537 = sitofp i32 %5536 to float
  %5538 = fsub fast float %5422, %5537
  %5539 = call float @dx.op.binary.f32(i32 35, float %5538, float 0.000000e+00)  ; FMax(a,b)
  %5540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5530, %dx.types.Handle %46, float %5510, float %5511, float %5525, float undef, i32 0, i32 0, i32 undef, float %5539)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5541 = extractvalue %dx.types.ResRet.f32 %5540, 0
  %5542 = fcmp fast ogt float %5541, 0.000000e+00
  br i1 %5542, label %5543, label %5571

; <label>:5543                                    ; preds = %5514
  %5544 = add i32 %5504, %5522
  %5545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5544, i32 undef)  ; BufferLoad(srv,index,wot)
  %5546 = extractvalue %dx.types.ResRet.i32 %5545, 0
  %5547 = and i32 %5546, 32767
  %5548 = mul nuw nsw i32 %5547, 928
  %5549 = add nuw nsw i32 %5548, 48
  %5550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5549, i32 undef)  ; BufferLoad(srv,index,wot)
  %5551 = extractvalue %dx.types.ResRet.f32 %5550, 0
  %5552 = extractvalue %dx.types.ResRet.f32 %5550, 1
  %5553 = extractvalue %dx.types.ResRet.f32 %5550, 2
  %5554 = add nuw nsw i32 %5548, 60
  %5555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5554, i32 undef)  ; BufferLoad(srv,index,wot)
  %5556 = extractvalue %dx.types.ResRet.f32 %5555, 0
  %5557 = extractvalue %dx.types.ResRet.f32 %5555, 1
  %5558 = extractvalue %dx.types.ResRet.f32 %5555, 2
  %5559 = fmul fast float %5551, %5541
  %5560 = fmul fast float %5552, %5541
  %5561 = fmul fast float %5553, %5541
  %5562 = fadd fast float %5559, %5515
  %5563 = fadd fast float %5560, %5516
  %5564 = fadd fast float %5561, %5517
  %5565 = fmul fast float %5556, %5541
  %5566 = fmul fast float %5557, %5541
  %5567 = fmul fast float %5558, %5541
  %5568 = fadd fast float %5565, %5518
  %5569 = fadd fast float %5566, %5519
  %5570 = fadd fast float %5567, %5520
  br label %5571

; <label>:5571                                    ; preds = %5543, %5514
  %5572 = phi float [ %5562, %5543 ], [ %5515, %5514 ]
  %5573 = phi float [ %5563, %5543 ], [ %5516, %5514 ]
  %5574 = phi float [ %5564, %5543 ], [ %5517, %5514 ]
  %5575 = phi float [ %5568, %5543 ], [ %5518, %5514 ]
  %5576 = phi float [ %5569, %5543 ], [ %5519, %5514 ]
  %5577 = phi float [ %5570, %5543 ], [ %5520, %5514 ]
  %5578 = add nuw i32 %5521, 1
  %5579 = icmp eq i32 %5578, %5503
  br i1 %5579, label %5580, label %5514

; <label>:5580                                    ; preds = %5571
  br label %5581

; <label>:5581                                    ; preds = %5580, %5444
  %5582 = phi float [ 0.000000e+00, %5444 ], [ %5572, %5580 ]
  %5583 = phi float [ 0.000000e+00, %5444 ], [ %5573, %5580 ]
  %5584 = phi float [ 0.000000e+00, %5444 ], [ %5574, %5580 ]
  %5585 = phi float [ 0.000000e+00, %5444 ], [ %5575, %5580 ]
  %5586 = phi float [ 0.000000e+00, %5444 ], [ %5576, %5580 ]
  %5587 = phi float [ 0.000000e+00, %5444 ], [ %5577, %5580 ]
  %5588 = fadd fast float %5585, %5582
  %5589 = fmul fast float %5588, 0x3F847AE140000000
  %5590 = fadd fast float %5586, %5583
  %5591 = fmul fast float %5590, 0x3F847AE140000000
  %5592 = fadd fast float %5587, %5584
  %5593 = fmul fast float %5592, 0x3F847AE140000000
  br label %5594

; <label>:5594                                    ; preds = %5581, %5378, %5323, %5320, %5291, %5253
  %5595 = phi float [ %5305, %5291 ], [ -1.310720e+05, %5253 ], [ %5497, %5581 ], [ -1.310720e+05, %5323 ], [ -1.310720e+05, %5378 ], [ -1.310720e+05, %5320 ]
  %5596 = phi float [ %5315, %5291 ], [ 0.000000e+00, %5253 ], [ %5589, %5581 ], [ 0.000000e+00, %5323 ], [ 0.000000e+00, %5378 ], [ 0.000000e+00, %5320 ]
  %5597 = phi float [ %5317, %5291 ], [ 0.000000e+00, %5253 ], [ %5591, %5581 ], [ 0.000000e+00, %5323 ], [ 0.000000e+00, %5378 ], [ 0.000000e+00, %5320 ]
  %5598 = phi float [ %5319, %5291 ], [ 0.000000e+00, %5253 ], [ %5593, %5581 ], [ 0.000000e+00, %5323 ], [ 0.000000e+00, %5378 ], [ 0.000000e+00, %5320 ]
  %5599 = phi i1 [ true, %5291 ], [ false, %5253 ], [ true, %5581 ], [ false, %5323 ], [ false, %5378 ], [ false, %5320 ]
  %5600 = and i32 %199, 3
  %5601 = icmp eq i32 %5600, 1
  %5602 = select i1 %5601, float 1.000000e+00, float 0.000000e+00
  %5603 = fsub fast float %5595, %163
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = select i1 %5599, float %5604, float 1.000000e+00
  %5606 = fmul fast float %5605, %5602
  %5607 = icmp eq i32 %5600, 3
  %5608 = select i1 %5607, float 1.000000e+00, float %5606
  %5609 = call float @dx.op.binary.f32(i32 35, float %5166, float %5608)  ; FMax(a,b)
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fcmp fast une float %5610, 0.000000e+00
  %5612 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = call float @dx.op.unary.f32(i32 25, float %5612)  ; Rsqrt(value)
  br i1 %5611, label %5621, label %5614

; <label>:5614                                    ; preds = %5594
  %5615 = fmul fast float %5613, %161
  %5616 = fmul fast float %5613, %162
  %5617 = fmul fast float %5613, %163
  %5618 = fsub fast float -0.000000e+00, %5615
  %5619 = fsub fast float -0.000000e+00, %5616
  %5620 = fsub fast float -0.000000e+00, %5617
  br label %5789

; <label>:5621                                    ; preds = %5594
  %5622 = fmul fast float %161, %5613
  %5623 = fsub fast float -0.000000e+00, %5622
  %5624 = fmul fast float %162, %5613
  %5625 = fsub fast float -0.000000e+00, %5624
  %5626 = fmul fast float %163, %5613
  %5627 = fsub fast float -0.000000e+00, %5626
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5625, float %5627, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = fmul fast float %5610, 2.500000e+00
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = fmul fast float %5610, 0x4013FFFFE0000000
  %5632 = fadd fast float %5631, 0xBFFFFFFFE0000000
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5634 = fmul fast float %5610, 0x4004000020000000
  %5635 = fadd fast float %5634, 0xBFF8000040000000
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5638 = fmul fast float %5170, 1.000000e+01
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5640 = fmul fast float %5639, 2.000000e+00
  %5641 = fsub fast float 3.000000e+00, %5640
  %5642 = fmul fast float %5639, %5639
  %5643 = fmul fast float %5642, %5641
  %5644 = fsub fast float 1.000000e+00, %5643
  %5645 = fsub fast float 0x3FE3333340000000, %5191
  %5646 = fmul fast float %5645, 0x400AAAAAA0000000
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = fmul fast float %5644, %5647
  %5649 = fmul fast float %5228, 0x3FEA2B8620000000
  %5650 = fmul fast float %5229, 0x3FEA2B8620000000
  %5651 = fmul fast float %5230, 0x3FEA2B8620000000
  %5652 = fadd fast float %5649, 0x3FC81DFBA0000000
  %5653 = fmul fast float %5652, %5228
  %5654 = fadd fast float %5653, 0x3F910E6020000000
  %5655 = fadd fast float %5650, 0x3FC81DFBA0000000
  %5656 = fmul fast float %5655, %5229
  %5657 = fadd fast float %5656, 0x3F910E6020000000
  %5658 = fadd fast float %5651, 0x3FC81DFBA0000000
  %5659 = fmul fast float %5658, %5230
  %5660 = fadd fast float %5659, 0x3F910E6020000000
  %5661 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5662 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5663 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5664 = fsub fast float %5661, %5228
  %5665 = fsub fast float %5662, %5229
  %5666 = fsub fast float %5663, %5230
  %5667 = fmul fast float %5664, %5637
  %5668 = fmul fast float %5667, %5648
  %5669 = fmul fast float %5665, %5637
  %5670 = fmul fast float %5669, %5648
  %5671 = fmul fast float %5666, %5637
  %5672 = fmul fast float %5671, %5648
  %5673 = fadd fast float %5668, %5228
  %5674 = fadd fast float %5670, %5229
  %5675 = fadd fast float %5672, %5230
  %5676 = fmul fast float %5163, %5163
  %5677 = fmul fast float %5676, %5676
  %5678 = fadd fast float %5633, 1.000000e+00
  %5679 = fsub fast float %5678, %5648
  %5680 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5681 = call float @dx.op.dot3.f32(i32 55, float %111, float %113, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = fsub fast float 1.000000e+00, %5677
  %5684 = call float @dx.op.binary.f32(i32 36, float %5680, float %5683)  ; FMin(a,b)
  %5685 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5686 = call float @dx.op.binary.f32(i32 35, float %5684, float %5685)  ; FMax(a,b)
  %5687 = fadd fast float %5682, 0xBFE4CCCCC0000000
  %5688 = fmul fast float %5687, 0x4006DB6DA0000000
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = fmul fast float %5689, 2.000000e+00
  %5691 = fsub fast float 3.000000e+00, %5690
  %5692 = bitcast float %5188 to i32
  %5693 = ashr i32 %5692, 1
  %5694 = add nsw i32 %5693, 532487669
  %5695 = bitcast i32 %5694 to float
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = bitcast float %5696 to i32
  %5698 = sub nsw i32 2129859010, %5697
  %5699 = bitcast i32 %5698 to float
  %5700 = fmul fast float %5699, 2.000000e+00
  %5701 = bitcast float %5189 to i32
  %5702 = ashr i32 %5701, 1
  %5703 = add nsw i32 %5702, 532487669
  %5704 = bitcast i32 %5703 to float
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = bitcast float %5705 to i32
  %5707 = sub nsw i32 2129859010, %5706
  %5708 = bitcast i32 %5707 to float
  %5709 = fmul fast float %5708, 2.000000e+00
  %5710 = bitcast float %5190 to i32
  %5711 = ashr i32 %5710, 1
  %5712 = add nsw i32 %5711, 532487669
  %5713 = bitcast i32 %5712 to float
  %5714 = fsub fast float 1.000000e+00, %5713
  %5715 = bitcast float %5714 to i32
  %5716 = sub nsw i32 2129859010, %5715
  %5717 = bitcast i32 %5716 to float
  %5718 = fmul fast float %5717, 2.000000e+00
  %5719 = fsub fast float 0x4002A9FBE0000000, %5700
  %5720 = fadd fast float %5700, 0x3FD54FDF00000000
  %5721 = bitcast float %5720 to i32
  %5722 = sub nsw i32 2129859010, %5721
  %5723 = bitcast i32 %5722 to float
  %5724 = fmul fast float %5723, %5719
  %5725 = fmul fast float %5724, %5724
  %5726 = fsub fast float 0x4002A9FBE0000000, %5709
  %5727 = fadd fast float %5709, 0x3FD54FDF00000000
  %5728 = bitcast float %5727 to i32
  %5729 = sub nsw i32 2129859010, %5728
  %5730 = bitcast i32 %5729 to float
  %5731 = fmul fast float %5730, %5726
  %5732 = fmul fast float %5731, %5731
  %5733 = fsub fast float 0x4002A9FBE0000000, %5718
  %5734 = fadd fast float %5718, 0x3FD54FDF00000000
  %5735 = bitcast float %5734 to i32
  %5736 = sub nsw i32 2129859010, %5735
  %5737 = bitcast i32 %5736 to float
  %5738 = fmul fast float %5737, %5733
  %5739 = fmul fast float %5738, %5738
  %5740 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5725)  ; FMax(a,b)
  %5741 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5732)  ; FMax(a,b)
  %5742 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5739)  ; FMax(a,b)
  %5743 = fsub fast float 1.000000e+00, %5628
  %5744 = fadd fast float %5743, %5644
  %5745 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5746 = fsub fast float 1.000000e+00, %5608
  %5747 = fmul fast float %5686, %5746
  %5748 = fmul fast float %5689, %5689
  %5749 = fmul fast float %5748, %5747
  %5750 = fmul fast float %5749, %5691
  %5751 = fmul fast float %5746, 0xBFE99999A0000000
  %5752 = fmul fast float %5751, %5637
  %5753 = fmul fast float %5752, %5648
  %5754 = fadd fast float %5753, 1.000000e+00
  %5755 = fadd fast float %5191, -1.000000e+00
  %5756 = fmul fast float %5754, %5755
  %5757 = fadd fast float %5756, 1.000000e+00
  %5758 = fsub fast float %5740, %5188
  %5759 = fsub fast float %5741, %5189
  %5760 = fsub fast float %5742, %5190
  %5761 = fmul fast float %5750, %5758
  %5762 = fmul fast float %5750, %5759
  %5763 = fmul fast float %5750, %5760
  %5764 = fadd fast float %5761, %5188
  %5765 = fadd fast float %5762, %5189
  %5766 = fadd fast float %5763, %5190
  %5767 = fsub fast float %111, %5145
  %5768 = fsub fast float %113, %5146
  %5769 = fsub fast float %115, %5147
  %5770 = fmul fast float %5750, %5767
  %5771 = fmul fast float %5750, %5768
  %5772 = fmul fast float %5750, %5769
  %5773 = fadd fast float %5770, %5145
  %5774 = fadd fast float %5771, %5146
  %5775 = fadd fast float %5772, %5147
  %5776 = fmul fast float %5750, %5745
  %5777 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  %5778 = fsub fast float 1.000000e+00, %5777
  %5779 = fmul fast float %5776, %5778
  %5780 = fadd fast float %5779, %5777
  %5781 = fsub fast float 1.000000e+00, %5163
  %5782 = fmul fast float %5750, %5781
  %5783 = fadd fast float %5782, %5163
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5773, float %5774, float %5775, float %5773, float %5774, float %5775)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = call float @dx.op.unary.f32(i32 25, float %5784)  ; Rsqrt(value)
  %5786 = fmul fast float %5773, %5785
  %5787 = fmul fast float %5774, %5785
  %5788 = fmul fast float %5775, %5785
  br label %5789

; <label>:5789                                    ; preds = %5621, %5614
  %5790 = phi float [ %5620, %5614 ], [ %5627, %5621 ]
  %5791 = phi float [ %5619, %5614 ], [ %5625, %5621 ]
  %5792 = phi float [ %5618, %5614 ], [ %5623, %5621 ]
  %5793 = phi float [ %5617, %5614 ], [ %5626, %5621 ]
  %5794 = phi float [ %5616, %5614 ], [ %5624, %5621 ]
  %5795 = phi float [ %5615, %5614 ], [ %5622, %5621 ]
  %5796 = phi float [ %5228, %5614 ], [ %5673, %5621 ]
  %5797 = phi float [ %5229, %5614 ], [ %5674, %5621 ]
  %5798 = phi float [ %5230, %5614 ], [ %5675, %5621 ]
  %5799 = phi float [ %5188, %5614 ], [ %5764, %5621 ]
  %5800 = phi float [ %5189, %5614 ], [ %5765, %5621 ]
  %5801 = phi float [ %5190, %5614 ], [ %5766, %5621 ]
  %5802 = phi float [ %5145, %5614 ], [ %5786, %5621 ]
  %5803 = phi float [ %5146, %5614 ], [ %5787, %5621 ]
  %5804 = phi float [ %5147, %5614 ], [ %5788, %5621 ]
  %5805 = phi float [ %5191, %5614 ], [ %5780, %5621 ]
  %5806 = phi float [ %5163, %5614 ], [ %5783, %5621 ]
  %5807 = fsub fast float -0.000000e+00, %163
  %5808 = select i1 %223, float 0.000000e+00, float %5801
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5802, float %5803, float %5804, float %5792, float %5791, float %5790)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5811 = call float @dx.op.dot3.f32(i32 55, float %5795, float %5794, float %5793, float %5802, float %5803, float %5804)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = fmul fast float %5811, 2.000000e+00
  %5813 = fmul fast float %5812, %5802
  %5814 = fmul fast float %5812, %5803
  %5815 = fmul fast float %5812, %5804
  %5816 = fsub fast float %5795, %5813
  %5817 = fsub fast float %5794, %5814
  %5818 = fsub fast float %5793, %5815
  %5819 = call float @dx.op.binary.f32(i32 36, float %5806, float 1.000000e+00)  ; FMin(a,b)
  %5820 = fsub fast float 1.000000e+00, %5806
  %5821 = bitcast float %5820 to i32
  %5822 = sub nsw i32 2129859010, %5821
  %5823 = bitcast i32 %5822 to float
  %5824 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5825 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = fcmp fast oeq float %5825, 0.000000e+00
  %5827 = fcmp fast oeq float %5824, 0.000000e+00
  %5828 = or i1 %5827, %5826
  br i1 %5828, label %5858, label %5829

; <label>:5829                                    ; preds = %5789
  %5830 = fsub fast float -0.000000e+00, %76
  %5831 = fsub fast float -0.000000e+00, %74
  %5832 = call float @dx.op.unary.f32(i32 24, float %5825)  ; Sqrt(value)
  %5833 = fdiv fast float %5832, %5824
  %5834 = fcmp fast ogt float %5833, 0x3FFB6F8900000000
  %5835 = select i1 %5834, float 0x3FFB6F8900000000, float %5833
  %5836 = fmul fast float %5835, 0x3FE8A23460000000
  %5837 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  %5838 = call float @dx.op.binary.f32(i32 35, float %5835, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5839 = fmul fast float %5837, %5824
  %5840 = fmul fast float %5838, 0x3FF279A740000000
  %5841 = fadd fast float %5840, -1.000000e+00
  %5842 = call float @dx.op.dot3.f32(i32 55, float %5830, float %5831, float %75, float %5830, float %5831, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = call float @dx.op.unary.f32(i32 25, float %5842)  ; Rsqrt(value)
  %5844 = fmul fast float %5843, %5830
  %5845 = fmul fast float %5843, %5831
  %5846 = fmul fast float %5843, %75
  %5847 = fmul fast float %5841, %5841
  %5848 = fsub fast float 1.000000e+00, %5847
  %5849 = fmul fast float %5838, 0x40005F8BE0000000
  %5850 = fsub fast float 0x400C5BF8A0000000, %5849
  %5851 = fdiv fast float %5839, %5850
  %5852 = fmul fast float %5851, 0x3FEE31C3C0000000
  %5853 = fmul fast float %5852, %5848
  %5854 = fmul fast float %5838, 0x3FDACB7480000000
  %5855 = fadd fast float %5854, 0xBFD7347680000000
  %5856 = fmul fast float %5855, %5851
  %5857 = fmul fast float %5856, %5848
  br label %5858

; <label>:5858                                    ; preds = %5829, %5789
  %5859 = phi float [ %5844, %5829 ], [ 0.000000e+00, %5789 ]
  %5860 = phi float [ %5845, %5829 ], [ 0.000000e+00, %5789 ]
  %5861 = phi float [ %5846, %5829 ], [ 0.000000e+00, %5789 ]
  %5862 = phi float [ %5853, %5829 ], [ 0.000000e+00, %5789 ]
  %5863 = phi float [ %5857, %5829 ], [ 0.000000e+00, %5789 ]
  %5864 = call float @dx.op.dot3.f32(i32 55, float %5859, float %5860, float %5861, float %5802, float %5803, float %5804)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = fmul fast float %5864, 0x3FDF454380000000
  %5866 = fmul fast float %5864, %5864
  %5867 = fmul fast float %5866, 0x3FEE471020000000
  %5868 = fadd fast float %5867, 0xBFD42F6020000000
  %5869 = fmul fast float %5824, 0x3FD20DD760000000
  %5870 = fmul fast float %5868, %5863
  %5871 = fadd fast float %5870, %5869
  %5872 = fmul fast float %5865, %5862
  %5873 = fadd fast float %5871, %5872
  %5874 = fsub fast float %5871, %5872
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5859, float %5860, float %5861, float %5816, float %5817, float %5818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = fmul fast float %5875, 0x3FDF454380000000
  %5877 = fmul fast float %5875, %5875
  %5878 = fmul fast float %5877, 0x3FEE471020000000
  %5879 = fadd fast float %5878, 0xBFD42F6020000000
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5862, float %5863, float 0x3FD20DD760000000, float %5876, float %5879)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5882 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = fcmp fast oeq float %5882, 0.000000e+00
  %5884 = fcmp fast oeq float %5881, 0.000000e+00
  %5885 = or i1 %5884, %5883
  br i1 %5885, label %5915, label %5886

; <label>:5886                                    ; preds = %5858
  %5887 = fsub fast float -0.000000e+00, %72
  %5888 = fsub fast float -0.000000e+00, %70
  %5889 = call float @dx.op.unary.f32(i32 24, float %5882)  ; Sqrt(value)
  %5890 = fdiv fast float %5889, %5881
  %5891 = fcmp fast ogt float %5890, 0x3FFB6F8900000000
  %5892 = select i1 %5891, float 0x3FFB6F8900000000, float %5890
  %5893 = fmul fast float %5892, 0x3FE8A23460000000
  %5894 = call float @dx.op.unary.f32(i32 7, float %5893)  ; Saturate(value)
  %5895 = call float @dx.op.binary.f32(i32 35, float %5892, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5896 = fmul fast float %5894, %5881
  %5897 = fmul fast float %5895, 0x3FF279A740000000
  %5898 = fadd fast float %5897, -1.000000e+00
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5887, float %5888, float %71, float %5887, float %5888, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = call float @dx.op.unary.f32(i32 25, float %5899)  ; Rsqrt(value)
  %5901 = fmul fast float %5900, %5887
  %5902 = fmul fast float %5900, %5888
  %5903 = fmul fast float %5900, %71
  %5904 = fmul fast float %5898, %5898
  %5905 = fsub fast float 1.000000e+00, %5904
  %5906 = fmul fast float %5895, 0x40005F8BE0000000
  %5907 = fsub fast float 0x400C5BF8A0000000, %5906
  %5908 = fdiv fast float %5896, %5907
  %5909 = fmul fast float %5908, 0x3FEE31C3C0000000
  %5910 = fmul fast float %5909, %5905
  %5911 = fmul fast float %5895, 0x3FDACB7480000000
  %5912 = fadd fast float %5911, 0xBFD7347680000000
  %5913 = fmul fast float %5912, %5908
  %5914 = fmul fast float %5913, %5905
  br label %5915

; <label>:5915                                    ; preds = %5886, %5858
  %5916 = phi float [ %5901, %5886 ], [ 0.000000e+00, %5858 ]
  %5917 = phi float [ %5902, %5886 ], [ 0.000000e+00, %5858 ]
  %5918 = phi float [ %5903, %5886 ], [ 0.000000e+00, %5858 ]
  %5919 = phi float [ %5910, %5886 ], [ 0.000000e+00, %5858 ]
  %5920 = phi float [ %5914, %5886 ], [ 0.000000e+00, %5858 ]
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5916, float %5917, float %5918, float %5802, float %5803, float %5804)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = fmul fast float %5921, 0x3FDF454380000000
  %5923 = fmul fast float %5921, %5921
  %5924 = fmul fast float %5923, 0x3FEE471020000000
  %5925 = fadd fast float %5924, 0xBFD42F6020000000
  %5926 = fmul fast float %5881, 0x3FD20DD760000000
  %5927 = fmul fast float %5925, %5920
  %5928 = fadd fast float %5927, %5926
  %5929 = fmul fast float %5922, %5919
  %5930 = fadd fast float %5928, %5929
  %5931 = fsub fast float %5928, %5929
  %5932 = call float @dx.op.dot3.f32(i32 55, float %5916, float %5917, float %5918, float %5816, float %5817, float %5818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = fmul fast float %5932, 0x3FDF454380000000
  %5934 = fmul fast float %5932, %5932
  %5935 = fmul fast float %5934, 0x3FEE471020000000
  %5936 = fadd fast float %5935, 0xBFD42F6020000000
  %5937 = call float @dx.op.dot3.f32(i32 55, float %5881, float %5919, float %5920, float 0x3FD20DD760000000, float %5933, float %5936)  ; Dot3(ax,ay,az,bx,by,bz)
  %5938 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5939 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5940 = fcmp fast oeq float %5939, 0.000000e+00
  %5941 = fcmp fast oeq float %5938, 0.000000e+00
  %5942 = or i1 %5941, %5940
  br i1 %5942, label %5972, label %5943

; <label>:5943                                    ; preds = %5915
  %5944 = fsub fast float -0.000000e+00, %68
  %5945 = fsub fast float -0.000000e+00, %66
  %5946 = call float @dx.op.unary.f32(i32 24, float %5939)  ; Sqrt(value)
  %5947 = fdiv fast float %5946, %5938
  %5948 = fcmp fast ogt float %5947, 0x3FFB6F8900000000
  %5949 = select i1 %5948, float 0x3FFB6F8900000000, float %5947
  %5950 = fmul fast float %5949, 0x3FE8A23460000000
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = call float @dx.op.binary.f32(i32 35, float %5949, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5953 = fmul fast float %5951, %5938
  %5954 = fmul fast float %5952, 0x3FF279A740000000
  %5955 = fadd fast float %5954, -1.000000e+00
  %5956 = call float @dx.op.dot3.f32(i32 55, float %5944, float %5945, float %67, float %5944, float %5945, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5957 = call float @dx.op.unary.f32(i32 25, float %5956)  ; Rsqrt(value)
  %5958 = fmul fast float %5957, %5944
  %5959 = fmul fast float %5957, %5945
  %5960 = fmul fast float %5957, %67
  %5961 = fmul fast float %5955, %5955
  %5962 = fsub fast float 1.000000e+00, %5961
  %5963 = fmul fast float %5952, 0x40005F8BE0000000
  %5964 = fsub fast float 0x400C5BF8A0000000, %5963
  %5965 = fdiv fast float %5953, %5964
  %5966 = fmul fast float %5965, 0x3FEE31C3C0000000
  %5967 = fmul fast float %5966, %5962
  %5968 = fmul fast float %5952, 0x3FDACB7480000000
  %5969 = fadd fast float %5968, 0xBFD7347680000000
  %5970 = fmul fast float %5969, %5965
  %5971 = fmul fast float %5970, %5962
  br label %5972

; <label>:5972                                    ; preds = %5943, %5915
  %5973 = phi float [ %5958, %5943 ], [ 0.000000e+00, %5915 ]
  %5974 = phi float [ %5959, %5943 ], [ 0.000000e+00, %5915 ]
  %5975 = phi float [ %5960, %5943 ], [ 0.000000e+00, %5915 ]
  %5976 = phi float [ %5967, %5943 ], [ 0.000000e+00, %5915 ]
  %5977 = phi float [ %5971, %5943 ], [ 0.000000e+00, %5915 ]
  %5978 = call float @dx.op.dot3.f32(i32 55, float %5973, float %5974, float %5975, float %5802, float %5803, float %5804)  ; Dot3(ax,ay,az,bx,by,bz)
  %5979 = fmul fast float %5978, 0x3FDF454380000000
  %5980 = fmul fast float %5978, %5978
  %5981 = fmul fast float %5980, 0x3FEE471020000000
  %5982 = fadd fast float %5981, 0xBFD42F6020000000
  %5983 = fmul fast float %5938, 0x3FD20DD760000000
  %5984 = fmul fast float %5982, %5977
  %5985 = fadd fast float %5984, %5983
  %5986 = fmul fast float %5979, %5976
  %5987 = fadd fast float %5985, %5986
  %5988 = fsub fast float %5985, %5986
  %5989 = call float @dx.op.dot3.f32(i32 55, float %5973, float %5974, float %5975, float %5816, float %5817, float %5818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5990 = fmul fast float %5989, 0x3FDF454380000000
  %5991 = fmul fast float %5989, %5989
  %5992 = fmul fast float %5991, 0x3FEE471020000000
  %5993 = fadd fast float %5992, 0xBFD42F6020000000
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5976, float %5977, float 0x3FD20DD760000000, float %5990, float %5993)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = call float @dx.op.binary.f32(i32 35, float %5873, float 0.000000e+00)  ; FMax(a,b)
  %5996 = call float @dx.op.binary.f32(i32 35, float %5930, float 0.000000e+00)  ; FMax(a,b)
  %5997 = call float @dx.op.binary.f32(i32 35, float %5987, float 0.000000e+00)  ; FMax(a,b)
  %5998 = call float @dx.op.binary.f32(i32 35, float %5874, float 0.000000e+00)  ; FMax(a,b)
  %5999 = call float @dx.op.binary.f32(i32 35, float %5931, float 0.000000e+00)  ; FMax(a,b)
  %6000 = call float @dx.op.binary.f32(i32 35, float %5988, float 0.000000e+00)  ; FMax(a,b)
  %6001 = call float @dx.op.binary.f32(i32 35, float %5880, float 0.000000e+00)  ; FMax(a,b)
  %6002 = call float @dx.op.binary.f32(i32 35, float %5937, float 0.000000e+00)  ; FMax(a,b)
  %6003 = call float @dx.op.binary.f32(i32 35, float %5994, float 0.000000e+00)  ; FMax(a,b)
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  %6006 = call float @dx.op.binary.f32(i32 36, float %5796, float %6005)  ; FMin(a,b)
  %6007 = fsub fast float 1.000000e+00, %5819
  %6008 = fmul fast float %6006, %6007
  %6009 = fsub fast float 1.000000e+00, %6008
  %6010 = bitcast float %6009 to i32
  %6011 = sub nsw i32 2129859010, %6010
  %6012 = bitcast i32 %6011 to float
  %6013 = call float @dx.op.binary.f32(i32 36, float %5797, float %6005)  ; FMin(a,b)
  %6014 = fmul fast float %6013, %6007
  %6015 = fsub fast float 1.000000e+00, %6014
  %6016 = bitcast float %6015 to i32
  %6017 = sub nsw i32 2129859010, %6016
  %6018 = bitcast i32 %6017 to float
  %6019 = call float @dx.op.binary.f32(i32 36, float %5798, float %6005)  ; FMin(a,b)
  %6020 = fmul fast float %6019, %6007
  %6021 = fsub fast float 1.000000e+00, %6020
  %6022 = bitcast float %6021 to i32
  %6023 = sub nsw i32 2129859010, %6022
  %6024 = bitcast i32 %6023 to float
  %6025 = fmul fast float %5995, %5819
  %6026 = fmul fast float %6025, %6012
  %6027 = fmul fast float %5996, %5819
  %6028 = fmul fast float %6027, %6018
  %6029 = fmul fast float %5997, %5819
  %6030 = fmul fast float %6029, %6024
  %6031 = call float @dx.op.binary.f32(i32 36, float %5799, float %6005)  ; FMin(a,b)
  %6032 = fmul fast float %6031, %6007
  %6033 = fsub fast float 1.000000e+00, %6032
  %6034 = bitcast float %6033 to i32
  %6035 = sub nsw i32 2129859010, %6034
  %6036 = bitcast i32 %6035 to float
  %6037 = call float @dx.op.binary.f32(i32 36, float %5800, float %6005)  ; FMin(a,b)
  %6038 = fmul fast float %6037, %6007
  %6039 = fsub fast float 1.000000e+00, %6038
  %6040 = bitcast float %6039 to i32
  %6041 = sub nsw i32 2129859010, %6040
  %6042 = bitcast i32 %6041 to float
  %6043 = call float @dx.op.binary.f32(i32 36, float %5808, float %6005)  ; FMin(a,b)
  %6044 = fmul fast float %6043, %6007
  %6045 = fsub fast float 1.000000e+00, %6044
  %6046 = bitcast float %6045 to i32
  %6047 = sub nsw i32 2129859010, %6046
  %6048 = bitcast i32 %6047 to float
  %6049 = fmul fast float %6001, %5819
  %6050 = fmul fast float %6049, %6036
  %6051 = fmul fast float %6002, %5819
  %6052 = fmul fast float %6051, %6042
  %6053 = fmul fast float %6003, %5819
  %6054 = fmul fast float %6053, %6048
  %6055 = call float @dx.op.dot3.f32(i32 55, float %6026, float %6028, float %6030, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6056 = select i1 %223, float 0.000000e+00, float %6026
  %6057 = select i1 %223, float %6055, float %6028
  %6058 = select i1 %223, float 0.000000e+00, float %6030
  %6059 = call float @dx.op.dot3.f32(i32 55, float %5998, float %5999, float %6000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = select i1 %223, float 0.000000e+00, float %5998
  %6061 = select i1 %223, float %6059, float %5999
  %6062 = select i1 %223, float 0.000000e+00, float %6000
  %6063 = call float @dx.op.dot3.f32(i32 55, float %6050, float %6052, float %6054, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6064 = select i1 %223, float 0.000000e+00, float %6050
  %6065 = select i1 %223, float %6063, float %6052
  %6066 = select i1 %223, float 0.000000e+00, float %6054
  %6067 = fmul fast float %4513, %4513
  %6068 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6069 = fmul fast float %5810, 9.843750e-01
  %6070 = fmul fast float %5805, 9.843750e-01
  %6071 = fadd fast float %6069, 7.812500e-03
  %6072 = fadd fast float %6070, 7.812500e-03
  %6073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6071, float %6072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6074 = extractvalue %dx.types.ResRet.f32 %6073, 0
  %6075 = extractvalue %dx.types.ResRet.f32 %6073, 1
  %6076 = extractvalue %dx.types.ResRet.f32 %6073, 2
  %6077 = extractvalue %dx.types.ResRet.f32 %6073, 3
  %6078 = fsub fast float 1.000000e+00, %6068
  %6079 = fsub fast float %6076, %6074
  %6080 = fsub fast float %6077, %6075
  %6081 = fmul fast float %6079, %6078
  %6082 = fmul fast float %6080, %6078
  %6083 = fadd fast float %6081, %6074
  %6084 = fadd fast float %6082, %6075
  %6085 = fmul fast float %6083, %5799
  %6086 = fmul fast float %6083, %5800
  %6087 = fmul fast float %6083, %5808
  %6088 = fadd fast float %6085, %6084
  %6089 = fadd fast float %6086, %6084
  %6090 = fadd fast float %6087, %6084
  %6091 = fcmp fast ogt float %5164, 0.000000e+00
  br i1 %6091, label %6092, label %6118

; <label>:6092                                    ; preds = %5972
  %6093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5164, float %5810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6094 = extractvalue %dx.types.ResRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.f32 %6093, 1
  %6096 = extractvalue %dx.types.ResRet.f32 %6093, 2
  %6097 = fadd fast float %6094, -5.000000e-01
  %6098 = fadd fast float %6095, -5.000000e-01
  %6099 = fadd fast float %6096, -5.000000e-01
  %6100 = fsub fast float 1.000000e+00, %5799
  %6101 = fsub fast float 1.000000e+00, %5800
  %6102 = fsub fast float 1.000000e+00, %5808
  %6103 = fmul fast float %5799, 4.000000e+00
  %6104 = fmul fast float %6103, %6100
  %6105 = fmul fast float %6104, %6097
  %6106 = fmul fast float %5800, 4.000000e+00
  %6107 = fmul fast float %6106, %6101
  %6108 = fmul fast float %6107, %6098
  %6109 = fmul fast float %5808, 4.000000e+00
  %6110 = fmul fast float %6109, %6102
  %6111 = fmul fast float %6110, %6099
  %6112 = fadd fast float %6105, %6088
  %6113 = fadd fast float %6108, %6089
  %6114 = fadd fast float %6111, %6090
  %6115 = call float @dx.op.unary.f32(i32 7, float %6112)  ; Saturate(value)
  %6116 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6117 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  br label %6118

; <label>:6118                                    ; preds = %6092, %5972
  %6119 = phi float [ %6115, %6092 ], [ %6088, %5972 ]
  %6120 = phi float [ %6116, %6092 ], [ %6089, %5972 ]
  %6121 = phi float [ %6117, %6092 ], [ %6090, %5972 ]
  %6122 = call float @dx.op.binary.f32(i32 35, float %6120, float %6121)  ; FMax(a,b)
  %6123 = call float @dx.op.binary.f32(i32 35, float %6119, float %6122)  ; FMax(a,b)
  %6124 = fsub fast float 1.000000e+00, %6123
  %6125 = call float @dx.op.dot3.f32(i32 55, float %5796, float %5797, float %5798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6126 = fcmp fast ogt float %6125, 0x3E7FF19E20000000
  %6127 = fdiv fast float 1.000000e+00, %6125
  %6128 = select i1 %6126, float %6127, float 0.000000e+00
  %6129 = fmul fast float %6128, %5796
  %6130 = fmul fast float %6128, %5797
  %6131 = fmul fast float %6128, %5798
  %6132 = fadd fast float %6129, -1.000000e+00
  %6133 = fadd fast float %6130, -1.000000e+00
  %6134 = fadd fast float %6131, -1.000000e+00
  %6135 = fmul fast float %6132, 5.000000e-01
  %6136 = fmul fast float %6133, 5.000000e-01
  %6137 = fmul fast float %6134, 5.000000e-01
  %6138 = fadd fast float %6135, 1.000000e+00
  %6139 = fadd fast float %6136, 1.000000e+00
  %6140 = fadd fast float %6137, 1.000000e+00
  %6141 = call float @dx.op.binary.f32(i32 35, float %5810, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6142 = fdiv fast float %4513, %6141
  %6143 = fcmp fast olt float %5214, 1.270000e+02
  %6144 = fcmp fast olt float %5215, 1.270000e+02
  %6145 = fcmp fast olt float %5216, 1.270000e+02
  %6146 = fmul fast float %5214, 0xBFF7154760000000
  %6147 = fmul fast float %6146, %6142
  %6148 = fmul fast float %5215, 0xBFF7154760000000
  %6149 = fmul fast float %6148, %6142
  %6150 = fmul fast float %5216, 0xBFF7154760000000
  %6151 = fmul fast float %6150, %6142
  %6152 = call float @dx.op.unary.f32(i32 21, float %6147)  ; Exp(value)
  %6153 = call float @dx.op.unary.f32(i32 21, float %6149)  ; Exp(value)
  %6154 = call float @dx.op.unary.f32(i32 21, float %6151)  ; Exp(value)
  %6155 = call float @dx.op.unary.f32(i32 7, float %6152)  ; Saturate(value)
  %6156 = call float @dx.op.unary.f32(i32 7, float %6153)  ; Saturate(value)
  %6157 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6158 = select i1 %6143, float %6155, float 0.000000e+00
  %6159 = select i1 %6144, float %6156, float 0.000000e+00
  %6160 = select i1 %6145, float %6157, float 0.000000e+00
  %6161 = fmul fast float %6158, %6124
  %6162 = fmul fast float %6159, %6124
  %6163 = fmul fast float %6160, %6124
  %6164 = fadd fast float %6161, -1.000000e+00
  %6165 = fadd fast float %6162, -1.000000e+00
  %6166 = fadd fast float %6163, -1.000000e+00
  %6167 = fmul fast float %6164, %5161
  %6168 = fmul fast float %6165, %5161
  %6169 = fmul fast float %6166, %5161
  %6170 = fmul fast float %6119, %6064
  %6171 = fmul fast float %6120, %6065
  %6172 = fmul fast float %6121, %6066
  %6173 = fsub fast float 1.000000e+00, %5810
  %6174 = bitcast float %6173 to i32
  %6175 = sitofp i32 %6174 to float
  %6176 = fmul fast float %6175, 5.000000e+00
  %6177 = fadd fast float %6176, 0xC1EFBF8940000000
  %6178 = fptosi float %6177 to i32
  %6179 = bitcast i32 %6178 to float
  %6180 = fmul fast float %6179, %5165
  %6181 = fmul fast float %6056, %6180
  %6182 = fmul fast float %6181, %6124
  %6183 = fmul fast float %6182, %6138
  %6184 = fmul fast float %6057, %6180
  %6185 = fmul fast float %6184, %6124
  %6186 = fmul fast float %6185, %6139
  %6187 = fmul fast float %6058, %6180
  %6188 = fmul fast float %6187, %6124
  %6189 = fmul fast float %6188, %6140
  %6190 = fadd fast float %6170, %5151
  %6191 = fadd fast float %6190, %6183
  %6192 = fmul fast float %6191, %5161
  %6193 = fadd fast float %6171, %5152
  %6194 = fadd fast float %6193, %6186
  %6195 = fmul fast float %6194, %5161
  %6196 = fadd fast float %6172, %5153
  %6197 = fadd fast float %6196, %6189
  %6198 = fmul fast float %6197, %5161
  %6199 = fmul fast float %5800, 0x4012D0A400000000
  %6200 = fadd fast float %6169, 1.000000e+00
  %6201 = fadd fast float %6168, 1.000000e+00
  %6202 = fadd fast float %6167, 1.000000e+00
  %6203 = fmul fast float %6124, %6058
  %6204 = fmul fast float %6124, %6057
  %6205 = fmul fast float %6124, %6056
  %6206 = fsub fast float 1.000000e+00, %5805
  %6207 = fmul fast float %6206, %5161
  %6208 = fsub fast float 1.000000e+00, %6207
  %6209 = call float @dx.op.unary.f32(i32 7, float %6208)  ; Saturate(value)
  %6210 = fsub fast float 1.000000e+00, %6209
  %6211 = fadd fast float %6199, 0x3FDB6377A0000000
  %6212 = fmul fast float %6210, %6211
  %6213 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5233, float %5234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6214 = fadd fast float %6212, %6213
  %6215 = call float @dx.op.unary.f32(i32 7, float %6214)  ; Saturate(value)
  %6216 = call float @dx.op.binary.f32(i32 35, float %6215, float 0x3F847AE140000000)  ; FMax(a,b)
  %6217 = fmul fast float %6216, %6216
  %6218 = fmul fast float %6217, %6217
  %6219 = fmul fast float %6218, 0xC00A935000000000
  %6220 = call float @dx.op.unary.f32(i32 21, float %6219)  ; Exp(value)
  %6221 = fsub fast float 1.000000e+00, %6220
  %6222 = fmul fast float %6202, %6060
  %6223 = fmul fast float %6222, %6221
  %6224 = fmul fast float %6201, %6061
  %6225 = fmul fast float %6224, %6221
  %6226 = fmul fast float %6200, %6062
  %6227 = fmul fast float %6226, %6221
  %6228 = fadd fast float %6223, %6205
  %6229 = fmul fast float %6228, %5161
  %6230 = fadd fast float %6225, %6204
  %6231 = fmul fast float %6230, %5161
  %6232 = fadd fast float %6227, %6203
  %6233 = fmul fast float %6232, %5161
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6236 = fcmp fast oeq float %6235, 0.000000e+00
  br i1 %6236, label %7441, label %6237

; <label>:6237                                    ; preds = %6118
  %6238 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6239 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6240 = extractvalue %dx.types.CBufRet.f32 %6234, 2
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = call float @dx.op.dot3.f32(i32 55, float %6242, float %6243, float %6244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6249 = select i1 %223, float %6246, float %6242
  %6250 = select i1 %223, float %6248, float %6243
  %6251 = select i1 %223, float %6247, float %6244
  %6252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6252, 2
  %6254 = fmul fast float %6253, %111
  %6255 = fmul fast float %6253, %113
  %6256 = fmul fast float %6253, %115
  %6257 = fadd fast float %6254, %161
  %6258 = fadd fast float %6255, %162
  %6259 = fadd fast float %6256, %163
  %6260 = fcmp fast olt float %6235, 0.000000e+00
  br i1 %6260, label %6885, label %6261

; <label>:6261                                    ; preds = %6237
  %6262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.CBufRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.CBufRet.f32 %6262, 2
  %6266 = extractvalue %dx.types.CBufRet.f32 %6262, 3
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.CBufRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.CBufRet.f32 %6267, 2
  %6271 = extractvalue %dx.types.CBufRet.f32 %6267, 3
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.CBufRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.CBufRet.f32 %6272, 2
  %6276 = extractvalue %dx.types.CBufRet.f32 %6272, 3
  %6277 = fmul fast float %6263, %6257
  %6278 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6264, float %6277)  ; FMad(a,b,c)
  %6279 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6265, float %6278)  ; FMad(a,b,c)
  %6280 = fadd fast float %6279, %6266
  %6281 = fmul fast float %6268, %6257
  %6282 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6269, float %6281)  ; FMad(a,b,c)
  %6283 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6270, float %6282)  ; FMad(a,b,c)
  %6284 = fadd fast float %6283, %6271
  %6285 = fmul fast float %6273, %6257
  %6286 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6274, float %6285)  ; FMad(a,b,c)
  %6287 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6275, float %6286)  ; FMad(a,b,c)
  %6288 = fadd fast float %6287, %6276
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6292 = extractvalue %dx.types.CBufRet.f32 %6289, 3
  %6293 = fmul fast float %6292, %6280
  %6294 = fmul fast float %6292, %6284
  %6295 = fadd fast float %6293, %6290
  %6296 = fadd fast float %6294, %6291
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.CBufRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.CBufRet.f32 %6297, 3
  %6301 = fmul fast float %6300, %6280
  %6302 = fmul fast float %6300, %6284
  %6303 = fadd fast float %6301, %6298
  %6304 = fadd fast float %6302, %6299
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 1
  %6307 = fsub fast float %6306, %6288
  %6308 = extractvalue %dx.types.CBufRet.f32 %6305, 2
  %6309 = fmul fast float %6307, %6308
  %6310 = fsub fast float 1.000000e+00, %6309
  %6311 = call float @dx.op.unary.f32(i32 7, float %6310)  ; Saturate(value)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6297, 2
  %6313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6314 = extractvalue %dx.types.CBufRet.f32 %6313, 2
  %6315 = fadd fast float %6314, %6312
  %6316 = fcmp fast ogt float %6315, 0.000000e+00
  br i1 %6316, label %6317, label %6341

; <label>:6317                                    ; preds = %6261
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 0
  %6320 = extractvalue %dx.types.CBufRet.f32 %6318, 1
  %6321 = fsub fast float %6303, %6319
  %6322 = fsub fast float %6304, %6320
  %6323 = fcmp fast olt float %6321, 0.000000e+00
  %6324 = fcmp fast olt float %6322, 0.000000e+00
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6329 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6330 = select i1 %6323, float %6326, float %6328
  %6331 = select i1 %6324, float %6327, float %6329
  %6332 = fmul fast float %6330, %6321
  %6333 = fmul fast float %6331, %6322
  %6334 = call float @dx.op.unary.f32(i32 6, float %6332)  ; FAbs(value)
  %6335 = call float @dx.op.unary.f32(i32 6, float %6333)  ; FAbs(value)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6252, 0
  %6337 = call float @dx.op.binary.f32(i32 35, float %6334, float %6335)  ; FMax(a,b)
  %6338 = fsub fast float %6336, %6337
  %6339 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  %6340 = fmul fast float %6339, %6311
  br label %6341

; <label>:6341                                    ; preds = %6317, %6261
  %6342 = phi float [ %6340, %6317 ], [ 0.000000e+00, %6261 ]
  %6343 = extractvalue %dx.types.CBufRet.f32 %6289, 2
  %6344 = extractvalue %dx.types.CBufRet.f32 %6313, 1
  %6345 = fadd fast float %6344, %6343
  %6346 = fcmp fast ogt float %6345, 0.000000e+00
  %6347 = extractvalue %dx.types.CBufRet.f32 %6252, 0
  br i1 %6346, label %6348, label %6371

; <label>:6348                                    ; preds = %6341
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 0
  %6351 = extractvalue %dx.types.CBufRet.f32 %6349, 1
  %6352 = fsub fast float %6295, %6350
  %6353 = fsub fast float %6296, %6351
  %6354 = fcmp fast olt float %6352, 0.000000e+00
  %6355 = fcmp fast olt float %6353, 0.000000e+00
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6358 = extractvalue %dx.types.CBufRet.f32 %6356, 1
  %6359 = extractvalue %dx.types.CBufRet.f32 %6356, 2
  %6360 = extractvalue %dx.types.CBufRet.f32 %6356, 3
  %6361 = select i1 %6354, float %6357, float %6359
  %6362 = select i1 %6355, float %6358, float %6360
  %6363 = fmul fast float %6361, %6352
  %6364 = fmul fast float %6362, %6353
  %6365 = call float @dx.op.unary.f32(i32 6, float %6363)  ; FAbs(value)
  %6366 = call float @dx.op.unary.f32(i32 6, float %6364)  ; FAbs(value)
  %6367 = call float @dx.op.binary.f32(i32 35, float %6365, float %6366)  ; FMax(a,b)
  %6368 = fsub fast float %6347, %6367
  %6369 = call float @dx.op.unary.f32(i32 7, float %6368)  ; Saturate(value)
  %6370 = fmul fast float %6369, %6311
  br label %6371

; <label>:6371                                    ; preds = %6348, %6341
  %6372 = phi float [ %6370, %6348 ], [ 0.000000e+00, %6341 ]
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 1
  %6375 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.CBufRet.f32 %6376, 1
  %6379 = fsub fast float %6280, %6377
  %6380 = fsub fast float %6284, %6378
  %6381 = fcmp fast olt float %6379, 0.000000e+00
  %6382 = fcmp fast olt float %6380, 0.000000e+00
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6385 = extractvalue %dx.types.CBufRet.f32 %6383, 1
  %6386 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6387 = extractvalue %dx.types.CBufRet.f32 %6383, 3
  %6388 = select i1 %6381, float %6384, float %6386
  %6389 = select i1 %6382, float %6385, float %6387
  %6390 = fmul fast float %6388, %6379
  %6391 = fmul fast float %6389, %6380
  %6392 = call float @dx.op.unary.f32(i32 6, float %6390)  ; FAbs(value)
  %6393 = call float @dx.op.unary.f32(i32 6, float %6391)  ; FAbs(value)
  %6394 = call float @dx.op.binary.f32(i32 35, float %6392, float %6393)  ; FMax(a,b)
  %6395 = fsub fast float %6347, %6394
  %6396 = call float @dx.op.unary.f32(i32 7, float %6395)  ; Saturate(value)
  %6397 = call float @dx.op.binary.f32(i32 36, float %6396, float %6375)  ; FMin(a,b)
  %6398 = fmul fast float %6397, %6311
  %6399 = fsub fast float %6372, %6398
  %6400 = fsub fast float %6342, %6372
  %6401 = fsub fast float %6400, %6398
  %6402 = call float @dx.op.binary.f32(i32 35, float %6372, float %6342)  ; FMax(a,b)
  %6403 = call float @dx.op.binary.f32(i32 35, float %6398, float %6402)  ; FMax(a,b)
  %6404 = fcmp fast olt float %6403, 1.000000e+00
  br i1 %6404, label %6405, label %6803, !dx.controlflow.hints !94

; <label>:6405                                    ; preds = %6371
  %6406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.f32 %6406, 0
  %6408 = fcmp fast une float %6407, 0.000000e+00
  br i1 %6408, label %6409, label %6803, !dx.controlflow.hints !95

; <label>:6409                                    ; preds = %6405
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 0
  %6412 = extractvalue %dx.types.CBufRet.f32 %6410, 1
  %6413 = extractvalue %dx.types.CBufRet.f32 %6410, 2
  %6414 = extractvalue %dx.types.CBufRet.f32 %6410, 3
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 0
  %6417 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %6418 = extractvalue %dx.types.CBufRet.f32 %6415, 2
  %6419 = extractvalue %dx.types.CBufRet.f32 %6415, 3
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.CBufRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.CBufRet.f32 %6420, 2
  %6424 = extractvalue %dx.types.CBufRet.f32 %6420, 3
  %6425 = fmul fast float %6411, %6257
  %6426 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6412, float %6425)  ; FMad(a,b,c)
  %6427 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6413, float %6426)  ; FMad(a,b,c)
  %6428 = fadd fast float %6427, %6414
  %6429 = fmul fast float %6416, %6257
  %6430 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6417, float %6429)  ; FMad(a,b,c)
  %6431 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6418, float %6430)  ; FMad(a,b,c)
  %6432 = fadd fast float %6431, %6419
  %6433 = fmul fast float %6421, %6257
  %6434 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6422, float %6433)  ; FMad(a,b,c)
  %6435 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6423, float %6434)  ; FMad(a,b,c)
  %6436 = fadd fast float %6435, %6424
  %6437 = fcmp fast oge float %6428, 1.000000e+00
  %6438 = fcmp fast oge float %6432, 1.000000e+00
  %6439 = or i1 %6437, %6438
  %6440 = fcmp fast olt float %6428, 0.000000e+00
  %6441 = fcmp fast olt float %6432, 0.000000e+00
  %6442 = or i1 %6440, %6441
  %6443 = or i1 %6439, %6442
  br i1 %6443, label %6803, label %6444, !dx.controlflow.hints !96

; <label>:6444                                    ; preds = %6409
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 0
  %6447 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6448 = extractvalue %dx.types.CBufRet.f32 %6445, 2
  %6449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.i32 %6449, 2
  %6451 = uitofp i32 %6450 to float
  %6452 = extractvalue %dx.types.CBufRet.i32 %6449, 3
  %6453 = uitofp i32 %6452 to float
  %6454 = extractvalue %dx.types.CBufRet.f32 %6445, 3
  %6455 = fmul fast float %6454, 2.000000e+00
  %6456 = fsub fast float %6428, %6446
  %6457 = fsub fast float %6432, %6447
  %6458 = fmul fast float %6455, %6456
  %6459 = fmul fast float %6455, %6457
  %6460 = fdiv fast float 1.000000e+00, %6240
  %6461 = fmul fast float %6459, %6460
  %6462 = call float @dx.op.unary.f32(i32 6, float %6461)  ; FAbs(value)
  %6463 = fmul fast float %6448, %6259
  %6464 = fmul fast float %6463, %6455
  %6465 = call float @dx.op.unary.f32(i32 6, float %6464)  ; FAbs(value)
  %6466 = call float @dx.op.unary.f32(i32 6, float %6458)  ; FAbs(value)
  %6467 = call float @dx.op.binary.f32(i32 35, float %6465, float %6462)  ; FMax(a,b)
  %6468 = call float @dx.op.binary.f32(i32 35, float %6466, float %6467)  ; FMax(a,b)
  %6469 = fmul fast float %6468, 2.000000e+00
  %6470 = call float @dx.op.unary.f32(i32 23, float %6469)  ; Log(value)
  %6471 = call float @dx.op.binary.f32(i32 35, float %6470, float %6451)  ; FMax(a,b)
  %6472 = call float @dx.op.unary.f32(i32 22, float %6471)  ; Frc(value)
  %6473 = fadd fast float %6472, 0xBFEA666660000000
  %6474 = fmul fast float %6473, 8.000000e+00
  %6475 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6476 = call float @dx.op.unary.f32(i32 27, float %6471)  ; Round_ni(value)
  %6477 = fadd fast float %6476, %6475
  %6478 = call float @dx.op.binary.f32(i32 36, float %6477, float %6453)  ; FMin(a,b)
  %6479 = call float @dx.op.unary.f32(i32 27, float %6478)  ; Round_ni(value)
  %6480 = fsub fast float -0.000000e+00, %6479
  %6481 = call float @dx.op.unary.f32(i32 21, float %6480)  ; Exp(value)
  %6482 = fmul fast float %6481, %6455
  %6483 = fmul fast float %6482, %6428
  %6484 = fmul fast float %6482, %6432
  %6485 = fmul fast float %6483, 2.500000e-01
  %6486 = fmul fast float %6484, 2.500000e-01
  %6487 = fadd fast float %6485, 5.000000e-01
  %6488 = fadd fast float %6486, 5.000000e-01
  %6489 = fsub fast float %6453, %6451
  %6490 = fptoui float %6489 to i32
  %6491 = add i32 %6490, 320
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6491)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %6495 = fcmp fast une float %6478, %6453
  %6496 = fsub fast float %6428, %6493
  %6497 = fsub fast float %6432, %6494
  %6498 = call float @dx.op.unary.f32(i32 6, float %6496)  ; FAbs(value)
  %6499 = call float @dx.op.unary.f32(i32 6, float %6497)  ; FAbs(value)
  %6500 = fmul fast float %6498, %6482
  %6501 = fmul fast float %6499, %6482
  %6502 = fcmp fast olt float %6500, 1.000000e+00
  %6503 = fcmp fast olt float %6501, 1.000000e+00
  %6504 = and i1 %6502, %6503
  %6505 = or i1 %6495, %6504
  br i1 %6505, label %6506, label %6803, !dx.controlflow.hints !97

; <label>:6506                                    ; preds = %6444
  %6507 = fmul fast float %6484, 5.000000e-01
  %6508 = fmul fast float %6483, 5.000000e-01
  %6509 = fadd fast float %6507, 5.000000e-01
  %6510 = fadd fast float %6508, 5.000000e-01
  %6511 = sitofp i32 %6450 to float
  %6512 = fsub fast float %6478, %6511
  %6513 = call float @dx.op.unary.f32(i32 27, float %6512)  ; Round_ni(value)
  %6514 = call float @dx.op.unary.f32(i32 22, float %6478)  ; Frc(value)
  %6515 = call float @dx.op.unary.f32(i32 22, float %6510)  ; Frc(value)
  %6516 = call float @dx.op.unary.f32(i32 22, float %6509)  ; Frc(value)
  %6517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6515, float %6516, float %6513, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6518 = extractvalue %dx.types.ResRet.f32 %6517, 0
  %6519 = extractvalue %dx.types.ResRet.f32 %6517, 1
  %6520 = extractvalue %dx.types.ResRet.f32 %6517, 2
  %6521 = extractvalue %dx.types.ResRet.f32 %6517, 3
  %6522 = fcmp fast ogt float %6514, 0.000000e+00
  br i1 %6522, label %6523, label %6544, !dx.controlflow.hints !98

; <label>:6523                                    ; preds = %6506
  %6524 = fadd fast float %6513, 1.000000e+00
  %6525 = call float @dx.op.unary.f32(i32 22, float %6487)  ; Frc(value)
  %6526 = call float @dx.op.unary.f32(i32 22, float %6488)  ; Frc(value)
  %6527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6525, float %6526, float %6524, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6528 = extractvalue %dx.types.ResRet.f32 %6527, 0
  %6529 = extractvalue %dx.types.ResRet.f32 %6527, 1
  %6530 = extractvalue %dx.types.ResRet.f32 %6527, 2
  %6531 = extractvalue %dx.types.ResRet.f32 %6527, 3
  %6532 = fsub fast float %6528, %6518
  %6533 = fsub fast float %6529, %6519
  %6534 = fsub fast float %6530, %6520
  %6535 = fsub fast float %6531, %6521
  %6536 = fmul fast float %6532, %6514
  %6537 = fmul fast float %6533, %6514
  %6538 = fmul fast float %6534, %6514
  %6539 = fmul fast float %6535, %6514
  %6540 = fadd fast float %6536, %6518
  %6541 = fadd fast float %6537, %6519
  %6542 = fadd fast float %6538, %6520
  %6543 = fadd fast float %6539, %6521
  br label %6544

; <label>:6544                                    ; preds = %6523, %6506
  %6545 = phi float [ %6540, %6523 ], [ %6518, %6506 ]
  %6546 = phi float [ %6541, %6523 ], [ %6519, %6506 ]
  %6547 = phi float [ %6542, %6523 ], [ %6520, %6506 ]
  %6548 = phi float [ %6543, %6523 ], [ %6521, %6506 ]
  %6549 = fadd fast float %6545, -5.000000e-01
  %6550 = fadd fast float %6547, -5.000000e-01
  %6551 = fmul fast float %6549, 0xBFD5555560000000
  %6552 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6550, float %6551)  ; FMad(a,b,c)
  %6553 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6546, float 0.000000e+00)  ; FMad(a,b,c)
  %6554 = fadd fast float %6553, %6548
  %6555 = fmul fast float %6549, -7.500000e-01
  %6556 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6550, float %6555)  ; FMad(a,b,c)
  %6557 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6546, float 0.000000e+00)  ; FMad(a,b,c)
  %6558 = fadd fast float %6557, %6548
  %6559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6560 = extractvalue %dx.types.CBufRet.f32 %6559, 0
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 0
  %6563 = extractvalue %dx.types.CBufRet.f32 %6561, 1
  %6564 = extractvalue %dx.types.CBufRet.f32 %6561, 2
  %6565 = extractvalue %dx.types.CBufRet.f32 %6561, 3
  %6566 = fsub fast float %6562, %6552
  %6567 = fsub fast float %6563, %6554
  %6568 = fsub fast float %6564, %6556
  %6569 = fsub fast float %6565, %6558
  %6570 = fmul fast float %6566, %6560
  %6571 = fmul fast float %6567, %6560
  %6572 = fmul fast float %6568, %6560
  %6573 = fmul fast float %6569, %6560
  %6574 = fadd fast float %6570, %6552
  %6575 = fadd fast float %6571, %6554
  %6576 = fadd fast float %6572, %6556
  %6577 = fadd fast float %6573, %6558
  %6578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6579 = extractvalue %dx.types.ResRet.i32 %6578, 0
  %6580 = and i32 %6579, 536870911
  %6581 = uitofp i32 %6580 to float
  %6582 = fmul fast float %6581, %6428
  %6583 = fmul fast float %6581, %6432
  %6584 = fptoui float %6582 to i32
  %6585 = fptoui float %6583 to i32
  %6586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6587 = extractvalue %dx.types.ResRet.i32 %6586, 0
  %6588 = and i32 %6587, 31
  %6589 = lshr i32 %6584, %6588
  %6590 = lshr i32 %6585, %6588
  %6591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6592 = extractvalue %dx.types.ResRet.i32 %6591, 0
  %6593 = and i32 %6592, 31
  %6594 = shl i32 1, %6593
  %6595 = call i32 @dx.op.binary.i32(i32 40, i32 %6594, i32 4)  ; UMin(a,b)
  %6596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6597 = extractvalue %dx.types.ResRet.i32 %6596, 0
  %6598 = extractvalue %dx.types.ResRet.i32 %6596, 1
  %6599 = icmp eq i32 %6595, 0
  br i1 %6599, label %6641, label %6600

; <label>:6600                                    ; preds = %6544
  br label %6601

; <label>:6601                                    ; preds = %6629, %6600
  %6602 = phi i32 [ %6632, %6629 ], [ 0, %6600 ]
  %6603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6604 = extractvalue %dx.types.ResRet.i32 %6603, 0
  %6605 = lshr i32 %6604, 16
  %6606 = and i32 %6605, 31
  %6607 = shl i32 %6590, %6606
  %6608 = add i32 %6607, %6589
  %6609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6610 = extractvalue %dx.types.ResRet.i32 %6609, 0
  %6611 = and i32 %6610, 31
  %6612 = shl i32 %6608, %6611
  %6613 = add i32 %6612, %6602
  %6614 = shl i32 %6613, 2
  %6615 = add i32 %6614, 32
  %6616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6615, i32 undef)  ; BufferLoad(srv,index,wot)
  %6617 = extractvalue %dx.types.ResRet.i32 %6616, 0
  %6618 = icmp slt i32 %6617, 0
  %6619 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6602
  %6620 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6602
  %6621 = bitcast float* %6619 to i32*
  %6622 = bitcast float* %6620 to i32*
  br i1 %6618, label %6623, label %6629

; <label>:6623                                    ; preds = %6601
  %6624 = and i32 %6617, 1073741823
  %6625 = add nuw nsw i32 %6624, 20
  %6626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6625, i32 undef)  ; BufferLoad(srv,index,wot)
  %6627 = extractvalue %dx.types.ResRet.i32 %6626, 0
  %6628 = extractvalue %dx.types.ResRet.i32 %6626, 1
  br label %6629

; <label>:6629                                    ; preds = %6623, %6601
  %6630 = phi i32 [ %6627, %6623 ], [ %6597, %6601 ]
  %6631 = phi i32 [ %6628, %6623 ], [ %6598, %6601 ]
  store i32 %6630, i32* %6621, align 4
  store i32 %6631, i32* %6622, align 4
  %6632 = add nuw i32 %6602, 1
  %6633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.i32 %6633, 2
  %6635 = icmp eq i32 %6634, 0
  %6636 = icmp ugt i32 %6617, -1073741825
  %6637 = and i1 %6636, %6635
  %6638 = icmp ult i32 %6632, %6595
  %6639 = and i1 %6637, %6638
  br i1 %6639, label %6601, label %6640

; <label>:6640                                    ; preds = %6629
  br label %6641

; <label>:6641                                    ; preds = %6640, %6544
  %6642 = phi i32 [ 0, %6544 ], [ %6632, %6640 ]
  %6643 = extractvalue %dx.types.CBufRet.f32 %6406, 2
  %6644 = fptoui float %6643 to i32
  %6645 = icmp eq i32 %6644, 0
  br i1 %6645, label %6697, label %6646

; <label>:6646                                    ; preds = %6641
  br label %6647

; <label>:6647                                    ; preds = %6692, %6646
  %6648 = phi i32 [ %6693, %6692 ], [ %6642, %6646 ]
  %6649 = phi i32 [ %6694, %6692 ], [ 0, %6646 ]
  %6650 = lshr i32 %6649, 2
  %6651 = and i32 %6649, 3
  %6652 = add nuw nsw i32 %6650, 83
  %6653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6652)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.i32 %6653, 0
  %6655 = extractvalue %dx.types.CBufRet.i32 %6653, 1
  %6656 = extractvalue %dx.types.CBufRet.i32 %6653, 2
  %6657 = extractvalue %dx.types.CBufRet.i32 %6653, 3
  %6658 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6654, i32* %6658, align 4
  %6659 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6655, i32* %6659, align 4
  %6660 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6656, i32* %6660, align 4
  %6661 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6657, i32* %6661, align 4
  %6662 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6651
  %6663 = load i32, i32* %6662, align 4, !tbaa !99, !noalias !103
  %6664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6665 = extractvalue %dx.types.ResRet.i32 %6664, 0
  %6666 = lshr i32 %6665, 16
  %6667 = and i32 %6666, 31
  %6668 = shl i32 %6590, %6667
  %6669 = add i32 %6668, %6589
  %6670 = shl i32 %6669, 2
  %6671 = add i32 %6670, %6663
  %6672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6671, i32 undef)  ; BufferLoad(srv,index,wot)
  %6673 = extractvalue %dx.types.ResRet.i32 %6672, 0
  %6674 = icmp eq i32 %6673, 0
  br i1 %6674, label %6692, label %6675

; <label>:6675                                    ; preds = %6647
  %6676 = icmp slt i32 %6673, 0
  %6677 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6648
  %6678 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6648
  %6679 = bitcast float* %6677 to i32*
  %6680 = bitcast float* %6678 to i32*
  br i1 %6676, label %6681, label %6688

; <label>:6681                                    ; preds = %6675
  %6682 = and i32 %6673, 1073741823
  %6683 = add i32 %6663, 20
  %6684 = add i32 %6683, %6682
  %6685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6684, i32 undef)  ; BufferLoad(srv,index,wot)
  %6686 = extractvalue %dx.types.ResRet.i32 %6685, 0
  %6687 = extractvalue %dx.types.ResRet.i32 %6685, 1
  br label %6688

; <label>:6688                                    ; preds = %6681, %6675
  %6689 = phi i32 [ %6686, %6681 ], [ %6597, %6675 ]
  %6690 = phi i32 [ %6687, %6681 ], [ %6598, %6675 ]
  store i32 %6689, i32* %6679, align 4
  store i32 %6690, i32* %6680, align 4
  %6691 = add i32 %6648, 1
  br label %6692

; <label>:6692                                    ; preds = %6688, %6647
  %6693 = phi i32 [ %6648, %6647 ], [ %6691, %6688 ]
  %6694 = add nuw i32 %6649, 1
  %6695 = icmp eq i32 %6694, %6644
  br i1 %6695, label %6696, label %6647

; <label>:6696                                    ; preds = %6692
  br label %6697

; <label>:6697                                    ; preds = %6696, %6641
  %6698 = phi i32 [ %6642, %6641 ], [ %6693, %6696 ]
  %6699 = icmp eq i32 %6698, 1
  %6700 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6701 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6699, label %6702, label %6705

; <label>:6702                                    ; preds = %6697
  %6703 = load float, float* %6700, align 4
  %6704 = load float, float* %6701, align 4
  br label %6732

; <label>:6705                                    ; preds = %6697
  %6706 = load float, float* %6700, align 4
  %6707 = load float, float* %6701, align 4
  %6708 = fdiv fast float 1.000000e+00, %6707
  %6709 = fsub fast float %6706, %6708
  %6710 = icmp ugt i32 %6698, 1
  br i1 %6710, label %6711, label %6727

; <label>:6711                                    ; preds = %6705
  br label %6712

; <label>:6712                                    ; preds = %6712, %6711
  %6713 = phi float [ %6722, %6712 ], [ %6709, %6711 ]
  %6714 = phi float [ %6723, %6712 ], [ %6706, %6711 ]
  %6715 = phi i32 [ %6724, %6712 ], [ 1, %6711 ]
  %6716 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6715
  %6717 = load float, float* %6716, align 4
  %6718 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6715
  %6719 = load float, float* %6718, align 4
  %6720 = fdiv fast float 1.000000e+00, %6719
  %6721 = fsub fast float %6717, %6720
  %6722 = call float @dx.op.binary.f32(i32 36, float %6713, float %6721)  ; FMin(a,b)
  %6723 = call float @dx.op.binary.f32(i32 35, float %6714, float %6717)  ; FMax(a,b)
  %6724 = add nuw i32 %6715, 1
  %6725 = icmp eq i32 %6724, %6698
  br i1 %6725, label %6726, label %6712

; <label>:6726                                    ; preds = %6712
  br label %6727

; <label>:6727                                    ; preds = %6726, %6705
  %6728 = phi float [ %6709, %6705 ], [ %6722, %6726 ]
  %6729 = phi float [ %6706, %6705 ], [ %6723, %6726 ]
  %6730 = fsub fast float %6729, %6728
  %6731 = fdiv fast float 1.000000e+00, %6730
  br label %6732

; <label>:6732                                    ; preds = %6727, %6702
  %6733 = phi float [ %6703, %6702 ], [ %6729, %6727 ]
  %6734 = phi float [ %6704, %6702 ], [ %6731, %6727 ]
  %6735 = fadd fast float %6436, %6733
  %6736 = fmul fast float %6735, %6734
  %6737 = call float @dx.op.unary.f32(i32 7, float %6736)  ; Saturate(value)
  %6738 = fmul fast float %6737, 2.000000e+00
  %6739 = fsub fast float 1.000000e+00, %6738
  %6740 = fmul fast float %6574, %6574
  %6741 = fsub fast float %6575, %6740
  %6742 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6741)  ; FMax(a,b)
  %6743 = fdiv fast float 1.000000e+00, %6742
  %6744 = fmul fast float %6575, %6574
  %6745 = fsub fast float %6576, %6744
  %6746 = fsub fast float %6739, %6574
  %6747 = fmul fast float %6739, %6739
  %6748 = fsub fast float %6747, %6575
  %6749 = fmul fast float %6743, %6745
  %6750 = fmul fast float %6749, %6746
  %6751 = fsub fast float %6748, %6750
  %6752 = fmul fast float %6575, %6575
  %6753 = fsub fast float %6577, %6752
  %6754 = fmul fast float %6745, %6745
  %6755 = fmul fast float %6754, %6743
  %6756 = fsub fast float %6753, %6755
  %6757 = fdiv fast float %6751, %6756
  %6758 = fmul fast float %6757, %6745
  %6759 = fsub fast float %6746, %6758
  %6760 = fmul fast float %6759, %6743
  %6761 = fmul fast float %6760, %6574
  %6762 = fsub fast float 1.000000e+00, %6761
  %6763 = fmul fast float %6757, %6575
  %6764 = fsub fast float %6762, %6763
  %6765 = fmul fast float %6760, %6760
  %6766 = fmul fast float %6757, 4.000000e+00
  %6767 = fmul fast float %6766, %6764
  %6768 = fsub fast float %6765, %6767
  %6769 = call float @dx.op.unary.f32(i32 24, float %6768)  ; Sqrt(value)
  %6770 = fcmp fast oge float %6760, 0.000000e+00
  %6771 = fsub fast float -0.000000e+00, %6769
  %6772 = select i1 %6770, float %6771, float %6769
  %6773 = fsub fast float %6772, %6760
  %6774 = fdiv fast float %6773, %6757
  %6775 = fdiv fast float %6764, %6773
  %6776 = fmul fast float %6774, 5.000000e-01
  %6777 = fmul fast float %6775, 2.000000e+00
  %6778 = select i1 %6770, float %6776, float %6777
  %6779 = select i1 %6770, float %6777, float %6776
  %6780 = call float @dx.op.binary.f32(i32 35, float %6778, float %6779)  ; FMax(a,b)
  %6781 = call float @dx.op.binary.f32(i32 36, float %6778, float %6779)  ; FMin(a,b)
  %6782 = fcmp fast ogt float %6739, %6780
  %6783 = fsub fast float %6739, %6781
  %6784 = fsub fast float %6739, %6780
  %6785 = fsub fast float %6780, %6781
  %6786 = select i1 %6782, float %6784, float %6785
  %6787 = fmul float %6783, %6786
  %6788 = select i1 %6782, float %6781, float %6739
  %6789 = fcmp fast ogt float %6739, %6781
  %6790 = fmul fast float %6788, %6780
  %6791 = fadd fast float %6788, %6780
  %6792 = fmul fast float %6791, %6574
  %6793 = fadd fast float %6790, %6575
  %6794 = fsub fast float %6793, %6792
  %6795 = fdiv fast float %6794, %6787
  %6796 = select i1 %6789, float %6795, float 0.000000e+00
  %6797 = fsub fast float 1.000000e+00, %6796
  %6798 = select i1 %6782, float %6797, float %6796
  %6799 = call float @dx.op.unary.f32(i32 7, float %6798)  ; Saturate(value)
  %6800 = extractvalue %dx.types.CBufRet.f32 %6559, 3
  %6801 = fmul fast float %6800, %6799
  %6802 = fsub fast float 1.000000e+00, %6801
  br label %6803

; <label>:6803                                    ; preds = %6732, %6444, %6409, %6405, %6371
  %6804 = phi float [ 1.000000e+00, %6371 ], [ %6802, %6732 ], [ 1.000000e+00, %6409 ], [ 1.000000e+00, %6444 ], [ 1.000000e+00, %6405 ]
  %6805 = fcmp fast ogt float %6401, 0.000000e+00
  br i1 %6805, label %6806, label %6812, !dx.controlflow.hints !112

; <label>:6806                                    ; preds = %6803
  %6807 = fadd fast float %6314, %6288
  %6808 = call float @dx.op.binary.f32(i32 35, float %6807, float 0.000000e+00)  ; FMax(a,b)
  %6809 = fadd fast float %6808, 0x3F10000000000000
  %6810 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %6303, float %6304, float undef, float undef, i32 0, i32 0, i32 undef, float %6809)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6811 = extractvalue %dx.types.ResRet.f32 %6810, 0
  br label %6812

; <label>:6812                                    ; preds = %6806, %6803
  %6813 = phi float [ %6811, %6806 ], [ 1.000000e+00, %6803 ]
  %6814 = fcmp fast ogt float %6399, 0.000000e+00
  br i1 %6814, label %6815, label %6821, !dx.controlflow.hints !113

; <label>:6815                                    ; preds = %6812
  %6816 = fadd fast float %6344, %6288
  %6817 = call float @dx.op.binary.f32(i32 35, float %6816, float 0.000000e+00)  ; FMax(a,b)
  %6818 = fadd fast float %6817, 0x3F10000000000000
  %6819 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %6295, float %6296, float undef, float undef, i32 0, i32 0, i32 undef, float %6818)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6820 = extractvalue %dx.types.ResRet.f32 %6819, 0
  br label %6821

; <label>:6821                                    ; preds = %6815, %6812
  %6822 = phi float [ %6820, %6815 ], [ 1.000000e+00, %6812 ]
  %6823 = fcmp fast ogt float %6398, 0.000000e+00
  br i1 %6823, label %6824, label %6831, !dx.controlflow.hints !114

; <label>:6824                                    ; preds = %6821
  %6825 = extractvalue %dx.types.CBufRet.f32 %6313, 0
  %6826 = fadd fast float %6825, %6288
  %6827 = call float @dx.op.binary.f32(i32 35, float %6826, float 0.000000e+00)  ; FMax(a,b)
  %6828 = fadd fast float %6827, 0x3F10000000000000
  %6829 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %6280, float %6284, float undef, float undef, i32 0, i32 0, i32 undef, float %6828)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 0
  br label %6831

; <label>:6831                                    ; preds = %6824, %6821
  %6832 = phi float [ %6830, %6824 ], [ 1.000000e+00, %6821 ]
  %6833 = fsub fast float %6813, %6804
  %6834 = fmul fast float %6833, %6342
  %6835 = fadd fast float %6834, %6804
  %6836 = fsub fast float %6822, %6835
  %6837 = fmul fast float %6836, %6372
  %6838 = fadd fast float %6837, %6835
  %6839 = fsub fast float %6832, %6838
  %6840 = fmul fast float %6839, %6398
  %6841 = fadd fast float %6840, %6838
  %6842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6843 = extractvalue %dx.types.CBufRet.f32 %6842, 2
  %6844 = fcmp fast ogt float %6843, 0.000000e+00
  br i1 %6844, label %6845, label %6885, !dx.controlflow.hints !115

; <label>:6845                                    ; preds = %6831
  %6846 = fcmp fast ugt float %6843, 0.000000e+00
  br i1 %6846, label %6847, label %6882

; <label>:6847                                    ; preds = %6845
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6851 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6852 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.f32 %6853, 0
  %6855 = extractvalue %dx.types.CBufRet.f32 %6853, 1
  %6856 = extractvalue %dx.types.CBufRet.f32 %6853, 2
  %6857 = extractvalue %dx.types.CBufRet.f32 %6853, 3
  %6858 = extractvalue %dx.types.CBufRet.f32 %6842, 0
  %6859 = extractvalue %dx.types.CBufRet.f32 %6842, 1
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 0
  %6862 = extractvalue %dx.types.CBufRet.f32 %6860, 1
  %6863 = extractvalue %dx.types.CBufRet.f32 %6860, 2
  %6864 = fadd fast float %6861, %6257
  %6865 = fadd fast float %6862, %6258
  %6866 = fadd fast float %6863, %6259
  %6867 = fmul fast float %6864, %6849
  %6868 = call float @dx.op.tertiary.f32(i32 46, float %6850, float %6865, float %6867)  ; FMad(a,b,c)
  %6869 = call float @dx.op.tertiary.f32(i32 46, float %6851, float %6866, float %6868)  ; FMad(a,b,c)
  %6870 = fadd fast float %6869, %6852
  %6871 = fmul fast float %6864, %6854
  %6872 = call float @dx.op.tertiary.f32(i32 46, float %6855, float %6865, float %6871)  ; FMad(a,b,c)
  %6873 = call float @dx.op.tertiary.f32(i32 46, float %6856, float %6866, float %6872)  ; FMad(a,b,c)
  %6874 = fadd fast float %6873, %6857
  %6875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6870, float %6874, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6876 = extractvalue %dx.types.ResRet.f32 %6875, 0
  %6877 = fmul fast float %6876, %6859
  %6878 = fadd fast float %6877, %6858
  %6879 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  %6880 = fmul fast float %6879, %6843
  %6881 = fsub fast float 1.000000e+00, %6880
  br label %6882

; <label>:6882                                    ; preds = %6847, %6845
  %6883 = phi float [ %6881, %6847 ], [ 1.000000e+00, %6845 ]
  %6884 = fmul fast float %6883, %6841
  br label %6885

; <label>:6885                                    ; preds = %6882, %6831, %6237
  %6886 = phi float [ 1.000000e+00, %6237 ], [ %6884, %6882 ], [ %6841, %6831 ]
  %6887 = call float @dx.op.binary.f32(i32 36, float %6886, float %6886)  ; FMin(a,b)
  %6888 = call float @dx.op.binary.f32(i32 36, float %6886, float %6887)  ; FMin(a,b)
  %6889 = fcmp fast ogt float %6888, 0.000000e+00
  br i1 %6889, label %6890, label %7050, !dx.controlflow.hints !116

; <label>:6890                                    ; preds = %6885
  %6891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6892 = extractvalue %dx.types.CBufRet.f32 %6891, 0
  %6893 = extractvalue %dx.types.CBufRet.f32 %6891, 1
  %6894 = extractvalue %dx.types.CBufRet.f32 %6891, 2
  %6895 = extractvalue %dx.types.CBufRet.f32 %6891, 3
  %6896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6896, 0
  %6898 = extractvalue %dx.types.CBufRet.f32 %6896, 1
  %6899 = extractvalue %dx.types.CBufRet.f32 %6896, 2
  %6900 = extractvalue %dx.types.CBufRet.f32 %6896, 3
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 0
  %6903 = extractvalue %dx.types.CBufRet.f32 %6901, 1
  %6904 = extractvalue %dx.types.CBufRet.f32 %6901, 2
  %6905 = extractvalue %dx.types.CBufRet.f32 %6901, 3
  %6906 = fmul fast float %6892, %6257
  %6907 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6893, float %6906)  ; FMad(a,b,c)
  %6908 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6894, float %6907)  ; FMad(a,b,c)
  %6909 = fadd fast float %6908, %6895
  %6910 = fmul fast float %6897, %6257
  %6911 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6898, float %6910)  ; FMad(a,b,c)
  %6912 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6899, float %6911)  ; FMad(a,b,c)
  %6913 = fadd fast float %6912, %6900
  %6914 = fmul fast float %6902, %6257
  %6915 = call float @dx.op.tertiary.f32(i32 46, float %6258, float %6903, float %6914)  ; FMad(a,b,c)
  %6916 = call float @dx.op.tertiary.f32(i32 46, float %6259, float %6904, float %6915)  ; FMad(a,b,c)
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.CBufRet.f32 %6917, 1
  %6920 = extractvalue %dx.types.CBufRet.f32 %6917, 3
  %6921 = fmul fast float %6920, %6909
  %6922 = fmul fast float %6920, %6913
  %6923 = fadd fast float %6921, %6918
  %6924 = fadd fast float %6922, %6919
  %6925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6926 = extractvalue %dx.types.CBufRet.f32 %6925, 0
  %6927 = extractvalue %dx.types.CBufRet.f32 %6925, 1
  %6928 = fsub fast float %6923, %6926
  %6929 = fsub fast float %6924, %6927
  %6930 = fcmp fast olt float %6928, 0.000000e+00
  %6931 = fcmp fast olt float %6929, 0.000000e+00
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.CBufRet.f32 %6932, 1
  %6935 = extractvalue %dx.types.CBufRet.f32 %6932, 2
  %6936 = extractvalue %dx.types.CBufRet.f32 %6932, 3
  %6937 = select i1 %6930, float %6933, float %6935
  %6938 = select i1 %6931, float %6934, float %6936
  %6939 = fmul fast float %6937, %6928
  %6940 = fmul fast float %6938, %6929
  %6941 = call float @dx.op.unary.f32(i32 6, float %6939)  ; FAbs(value)
  %6942 = call float @dx.op.unary.f32(i32 6, float %6940)  ; FAbs(value)
  %6943 = extractvalue %dx.types.CBufRet.f32 %6252, 0
  %6944 = call float @dx.op.binary.f32(i32 35, float %6941, float %6942)  ; FMax(a,b)
  %6945 = fsub fast float %6943, %6944
  %6946 = call float @dx.op.unary.f32(i32 7, float %6945)  ; Saturate(value)
  %6947 = fcmp fast ogt float %6946, 0.000000e+00
  br i1 %6947, label %6948, label %6989, !dx.controlflow.hints !117

; <label>:6948                                    ; preds = %6890
  %6949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6923, float %6924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6950 = extractvalue %dx.types.ResRet.f32 %6949, 1
  %6951 = fcmp fast ogt float %6950, 0.000000e+00
  br i1 %6951, label %6952, label %6984

; <label>:6952                                    ; preds = %6948
  %6953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6923, float %6924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6954 = extractvalue %dx.types.ResRet.f32 %6953, 0
  %6955 = extractvalue %dx.types.ResRet.f32 %6953, 1
  %6956 = extractvalue %dx.types.ResRet.f32 %6953, 2
  %6957 = extractvalue %dx.types.ResRet.f32 %6953, 3
  %6958 = fsub fast float 1.000000e+00, %6905
  %6959 = fsub fast float %6958, %6916
  %6960 = fmul fast float %6959, 0x400921FB60000000
  %6961 = fadd fast float %6960, 0x3FF921FB60000000
  %6962 = call float @dx.op.unary.f32(i32 13, float %6961)  ; Sin(value)
  %6963 = fadd fast float %6962, -1.000000e+00
  %6964 = fmul fast float %6963, 0x3FD45F3060000000
  %6965 = fmul fast float %6959, 0x401921FB60000000
  %6966 = fadd fast float %6965, 0x400921FB60000000
  %6967 = call float @dx.op.unary.f32(i32 13, float %6966)  ; Sin(value)
  %6968 = fadd fast float %6967, 0x3E7777A5C0000000
  %6969 = fmul fast float %6968, 0x3FC45F3060000000
  %6970 = fmul fast float %6959, 0x4022D97C80000000
  %6971 = fadd fast float %6970, 0x4012D97C80000000
  %6972 = call float @dx.op.unary.f32(i32 13, float %6971)  ; Sin(value)
  %6973 = fadd fast float %6972, 1.000000e+00
  %6974 = fmul fast float %6973, 0x3FBB2995E0000000
  %6975 = fmul fast float %6959, 0x402921FB60000000
  %6976 = fadd fast float %6975, 0x401921FB60000000
  %6977 = call float @dx.op.unary.f32(i32 13, float %6976)  ; Sin(value)
  %6978 = fadd fast float %6977, 0xBE8777A5C0000000
  %6979 = fmul fast float %6978, 0x3FB45F3060000000
  %6980 = call float @dx.op.dot4.f32(i32 56, float %6954, float %6955, float %6956, float %6957, float %6964, float %6969, float %6974, float %6979)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6981 = fmul fast float %6980, 0xBFF7154760000000
  %6982 = call float @dx.op.unary.f32(i32 21, float %6981)  ; Exp(value)
  %6983 = call float @dx.op.unary.f32(i32 7, float %6982)  ; Saturate(value)
  br label %6984

; <label>:6984                                    ; preds = %6952, %6948
  %6985 = phi float [ %6983, %6952 ], [ 1.000000e+00, %6948 ]
  %6986 = fadd fast float %6985, -1.000000e+00
  %6987 = fmul fast float %6986, %6946
  %6988 = fadd fast float %6987, 1.000000e+00
  br label %6989

; <label>:6989                                    ; preds = %6984, %6890
  %6990 = phi float [ %6988, %6984 ], [ 1.000000e+00, %6890 ]
  %6991 = fmul fast float %6990, %6886
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.CBufRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.CBufRet.f32 %6992, 2
  %6996 = fadd fast float %6993, %161
  %6997 = fadd fast float %6994, %162
  %6998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6999 = extractvalue %dx.types.CBufRet.f32 %6998, 1
  %7000 = fsub fast float -0.000000e+00, %6996
  %7001 = fsub fast float -0.000000e+00, %6997
  %7002 = fsub fast float %5807, %6995
  %7003 = fadd fast float %7002, %6999
  %7004 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7000, float %7001, float %7003)  ; Dot3(ax,ay,az,bx,by,bz)
  %7005 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6238, float %6239, float %6240)  ; Dot3(ax,ay,az,bx,by,bz)
  %7006 = fdiv fast float 1.000000e+00, %7005
  %7007 = fmul fast float %7006, %7004
  %7008 = fmul fast float %6238, %7007
  %7009 = fmul fast float %6239, %7007
  %7010 = fadd fast float %7008, %6996
  %7011 = fadd fast float %7009, %6997
  %7012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7013 = extractvalue %dx.types.CBufRet.f32 %7012, 0
  %7014 = extractvalue %dx.types.CBufRet.f32 %7012, 1
  %7015 = fsub fast float %7010, %7013
  %7016 = fsub fast float %7011, %7014
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 2
  %7019 = extractvalue %dx.types.CBufRet.f32 %7017, 3
  %7020 = fmul fast float %7015, %7018
  %7021 = fmul fast float %7016, %7019
  %7022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.i32 %7022, 3
  %7024 = icmp eq i32 %7023, 0
  br i1 %7024, label %7030, label %7025

; <label>:7025                                    ; preds = %6989
  %7026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %7020, float %7021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7027 = extractvalue %dx.types.ResRet.f32 %7026, 0
  %7028 = extractvalue %dx.types.ResRet.f32 %7026, 1
  %7029 = extractvalue %dx.types.ResRet.f32 %7026, 2
  br label %7035

; <label>:7030                                    ; preds = %6989
  %7031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %7020, float %7021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7032 = extractvalue %dx.types.ResRet.f32 %7031, 0
  %7033 = extractvalue %dx.types.ResRet.f32 %7031, 1
  %7034 = extractvalue %dx.types.ResRet.f32 %7031, 2
  br label %7035

; <label>:7035                                    ; preds = %7030, %7025
  %7036 = phi float [ %7027, %7025 ], [ %7032, %7030 ]
  %7037 = phi float [ %7028, %7025 ], [ %7033, %7030 ]
  %7038 = phi float [ %7029, %7025 ], [ %7034, %7030 ]
  %7039 = extractvalue %dx.types.CBufRet.f32 %6998, 2
  %7040 = fmul fast float %7039, %7036
  %7041 = extractvalue %dx.types.CBufRet.f32 %6998, 0
  %7042 = fsub fast float %7007, %7041
  %7043 = fsub fast float %7042, %7040
  %7044 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7043)  ; FMax(a,b)
  %7045 = fmul fast float %7044, %7037
  %7046 = call float @dx.op.binary.f32(i32 36, float %7038, float %7045)  ; FMin(a,b)
  %7047 = fmul fast float %7046, 0xBFF7154760000000
  %7048 = call float @dx.op.unary.f32(i32 21, float %7047)  ; Exp(value)
  %7049 = fmul fast float %6991, %7048
  br label %7050

; <label>:7050                                    ; preds = %7035, %6885
  %7051 = phi float [ %7049, %7035 ], [ %6886, %6885 ]
  %7052 = call float @dx.op.binary.f32(i32 36, float %7051, float %7051)  ; FMin(a,b)
  %7053 = call float @dx.op.binary.f32(i32 36, float %7051, float %7052)  ; FMin(a,b)
  %7054 = fcmp fast ogt float %7053, 0.000000e+00
  br i1 %7054, label %7055, label %7441, !dx.controlflow.hints !118

; <label>:7055                                    ; preds = %7050
  %7056 = fmul fast float %7051, %6249
  %7057 = fmul fast float %7051, %6250
  %7058 = fmul fast float %7051, %6251
  %7059 = fsub fast float %163, %5595
  %7060 = fcmp fast ogt float %7059, 0.000000e+00
  %7061 = fmul fast float %6238, 5.120000e+02
  %7062 = fmul fast float %6239, 5.120000e+02
  %7063 = fmul fast float %6240, 5.120000e+02
  %7064 = fadd fast float %7063, %163
  %7065 = fsub fast float %5595, %7064
  %7066 = fmul fast float %7065, 2.000000e+00
  %7067 = fadd fast float %7066, %7064
  %7068 = select i1 %7060, float %7067, float %7064
  %7069 = fsub fast float %7068, %163
  %7070 = call float @dx.op.dot3.f32(i32 55, float %7061, float %7062, float %7069, float %7061, float %7062, float %7069)  ; Dot3(ax,ay,az,bx,by,bz)
  %7071 = call float @dx.op.unary.f32(i32 25, float %7070)  ; Rsqrt(value)
  %7072 = fmul fast float %7071, %7061
  %7073 = fmul fast float %7071, %7062
  %7074 = fmul fast float %7071, %7069
  %7075 = fsub fast float %5595, %163
  %7076 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7075)  ; Dot3(ax,ay,az,bx,by,bz)
  %7077 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7072, float %7073, float %7074)  ; Dot3(ax,ay,az,bx,by,bz)
  %7078 = fdiv fast float 1.000000e+00, %7077
  %7079 = fmul fast float %7078, %7076
  %7080 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7059, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7081 = fcmp fast ogt float %7080, 0.000000e+00
  %7082 = fcmp fast olt float %7080, 0.000000e+00
  %7083 = zext i1 %7081 to i32
  %7084 = zext i1 %7082 to i32
  %7085 = sub nsw i32 %7083, %7084
  %7086 = sitofp i32 %7085 to float
  %7087 = fsub fast float %7068, %5595
  %7088 = call float @dx.op.dot3.f32(i32 55, float %7061, float %7062, float %7087, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7089 = fcmp fast ogt float %7088, 0.000000e+00
  %7090 = fcmp fast olt float %7088, 0.000000e+00
  %7091 = zext i1 %7089 to i32
  %7092 = zext i1 %7090 to i32
  %7093 = sub nsw i32 %7091, %7092
  %7094 = sitofp i32 %7093 to float
  %7095 = fcmp fast une float %7086, %7094
  br i1 %7095, label %7096, label %7106

; <label>:7096                                    ; preds = %7055
  %7097 = fmul fast float %7079, %7074
  %7098 = fmul fast float %7079, %7073
  %7099 = fmul fast float %7079, %7072
  %7100 = fmul fast float %7099, %7099
  %7101 = fmul fast float %7098, %7098
  %7102 = fadd fast float %7100, %7101
  %7103 = fmul fast float %7097, %7097
  %7104 = fadd fast float %7102, %7103
  %7105 = call float @dx.op.unary.f32(i32 24, float %7104)  ; Sqrt(value)
  br label %7116

; <label>:7106                                    ; preds = %7055
  %7107 = icmp slt i32 %7085, 0
  br i1 %7107, label %7108, label %7116

; <label>:7108                                    ; preds = %7106
  %7109 = fsub fast float %163, %7068
  %7110 = fmul fast float %7061, %7061
  %7111 = fmul fast float %7062, %7062
  %7112 = fadd fast float %7110, %7111
  %7113 = fmul fast float %7109, %7109
  %7114 = fadd fast float %7112, %7113
  %7115 = call float @dx.op.unary.f32(i32 24, float %7114)  ; Sqrt(value)
  br label %7116

; <label>:7116                                    ; preds = %7108, %7106, %7096
  %7117 = phi float [ %7105, %7096 ], [ %7115, %7108 ], [ 0.000000e+00, %7106 ]
  %7118 = fsub fast float -0.000000e+00, %7117
  %7119 = select i1 %7060, float -0.000000e+00, float %7118
  %7120 = fmul fast float %5596, 0x3FF7154760000000
  %7121 = fmul fast float %7120, %7119
  %7122 = fmul fast float %5597, 0x3FF7154760000000
  %7123 = fmul fast float %7122, %7119
  %7124 = fmul fast float %5598, 0x3FF7154760000000
  %7125 = fmul fast float %7124, %7119
  %7126 = call float @dx.op.unary.f32(i32 21, float %7121)  ; Exp(value)
  %7127 = call float @dx.op.unary.f32(i32 21, float %7123)  ; Exp(value)
  %7128 = call float @dx.op.unary.f32(i32 21, float %7125)  ; Exp(value)
  %7129 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  %7130 = call float @dx.op.unary.f32(i32 7, float %7127)  ; Saturate(value)
  %7131 = call float @dx.op.unary.f32(i32 7, float %7128)  ; Saturate(value)
  %7132 = fmul fast float %7056, %7129
  %7133 = fmul fast float %7057, %7130
  %7134 = fmul fast float %7058, %7131
  %7135 = fsub fast float %6238, %5795
  %7136 = fsub fast float %6239, %5794
  %7137 = fsub fast float %6240, %5793
  %7138 = call float @dx.op.dot3.f32(i32 55, float %7135, float %7136, float %7137, float %7135, float %7136, float %7137)  ; Dot3(ax,ay,az,bx,by,bz)
  %7139 = call float @dx.op.unary.f32(i32 25, float %7138)  ; Rsqrt(value)
  %7140 = fmul fast float %7139, %7135
  %7141 = fmul fast float %7139, %7136
  %7142 = fmul fast float %7139, %7137
  %7143 = call float @dx.op.dot3.f32(i32 55, float %6238, float %6239, float %6240, float %5802, float %5803, float %5804)  ; Dot3(ax,ay,az,bx,by,bz)
  %7144 = call float @dx.op.dot3.f32(i32 55, float %5792, float %5791, float %5790, float %7140, float %7141, float %7142)  ; Dot3(ax,ay,az,bx,by,bz)
  %7145 = call float @dx.op.unary.f32(i32 7, float %7143)  ; Saturate(value)
  %7146 = fmul fast float %7145, %7145
  %7147 = fmul fast float %7146, %5823
  %7148 = call float @dx.op.unary.f32(i32 7, float %7147)  ; Saturate(value)
  %7149 = fmul fast float %7148, %7145
  %7150 = call float @dx.op.dot3.f32(i32 55, float %5802, float %5803, float %5804, float %7140, float %7141, float %7142)  ; Dot3(ax,ay,az,bx,by,bz)
  %7151 = fmul fast float %7150, %7150
  %7152 = call float @dx.op.unary.f32(i32 6, float %7143)  ; FAbs(value)
  %7153 = call float @dx.op.binary.f32(i32 35, float %6206, float 0x3F847AE140000000)  ; FMax(a,b)
  %7154 = fmul fast float %7153, %7153
  %7155 = fmul fast float %7154, %7154
  %7156 = fsub fast float 1.000000e+00, %7155
  %7157 = fmul fast float %5810, %5810
  %7158 = fmul fast float %7157, %7156
  %7159 = fadd fast float %7158, %7155
  %7160 = bitcast float %7159 to i32
  %7161 = ashr i32 %7160, 1
  %7162 = add nsw i32 %7161, 532487669
  %7163 = bitcast i32 %7162 to float
  %7164 = fadd fast float %7163, %5810
  %7165 = fmul fast float %7155, %7151
  %7166 = fsub fast float 1.000000e+00, %7151
  %7167 = fadd fast float %7166, %7165
  %7168 = fmul fast float %7152, %7152
  %7169 = fmul fast float %7168, %7156
  %7170 = fadd fast float %7169, %7155
  %7171 = bitcast float %7170 to i32
  %7172 = ashr i32 %7171, 1
  %7173 = add nsw i32 %7172, 532487669
  %7174 = bitcast i32 %7173 to float
  %7175 = fadd fast float %7174, %7152
  %7176 = fmul fast float %7167, %7167
  %7177 = fmul fast float %7176, %7164
  %7178 = fmul fast float %7177, %7175
  %7179 = fdiv fast float 0x3FF0A00000000000, %7178
  %7180 = fmul fast float %7179, %7155
  %7181 = fmul fast float %6068, 0x3FF9999980000000
  %7182 = fsub fast float 5.000000e+00, %7181
  %7183 = call float @dx.op.unary.f32(i32 6, float %7144)  ; FAbs(value)
  %7184 = fsub fast float 1.000000e+00, %7183
  %7185 = fmul fast float %6068, 0x41D9660740000000
  %7186 = fadd fast float %7185, 0xC1EFBF8940000000
  %7187 = bitcast float %7184 to i32
  %7188 = sitofp i32 %7187 to float
  %7189 = fmul fast float %7188, %7182
  %7190 = fadd fast float %7186, %7189
  %7191 = fptosi float %7190 to i32
  %7192 = bitcast i32 %7191 to float
  %7193 = fsub fast float 1.000000e+00, %5799
  %7194 = fsub fast float 1.000000e+00, %5800
  %7195 = fsub fast float 1.000000e+00, %5808
  %7196 = fmul fast float %7192, %7193
  %7197 = fmul fast float %7192, %7194
  %7198 = fmul fast float %7192, %7195
  %7199 = fadd fast float %7196, %5799
  %7200 = fadd fast float %7197, %5800
  %7201 = fadd fast float %7198, %5808
  br i1 %6091, label %7202, label %7225

; <label>:7202                                    ; preds = %7116
  %7203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5164, float %7183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7204 = extractvalue %dx.types.ResRet.f32 %7203, 0
  %7205 = extractvalue %dx.types.ResRet.f32 %7203, 1
  %7206 = extractvalue %dx.types.ResRet.f32 %7203, 2
  %7207 = fadd fast float %7204, -5.000000e-01
  %7208 = fadd fast float %7205, -5.000000e-01
  %7209 = fadd fast float %7206, -5.000000e-01
  %7210 = fmul fast float %5799, 4.000000e+00
  %7211 = fmul fast float %7210, %7193
  %7212 = fmul fast float %7211, %7207
  %7213 = fmul fast float %5800, 4.000000e+00
  %7214 = fmul fast float %7213, %7194
  %7215 = fmul fast float %7214, %7208
  %7216 = fmul fast float %5808, 4.000000e+00
  %7217 = fmul fast float %7216, %7195
  %7218 = fmul fast float %7217, %7209
  %7219 = fadd fast float %7212, %7199
  %7220 = fadd fast float %7215, %7200
  %7221 = fadd fast float %7218, %7201
  %7222 = call float @dx.op.unary.f32(i32 7, float %7219)  ; Saturate(value)
  %7223 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  %7224 = call float @dx.op.unary.f32(i32 7, float %7221)  ; Saturate(value)
  br label %7225

; <label>:7225                                    ; preds = %7202, %7116
  %7226 = phi float [ %7222, %7202 ], [ %7199, %7116 ]
  %7227 = phi float [ %7223, %7202 ], [ %7200, %7116 ]
  %7228 = phi float [ %7224, %7202 ], [ %7201, %7116 ]
  %7229 = fmul fast float %7143, 9.843750e-01
  %7230 = fadd fast float %7229, 7.812500e-03
  %7231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7230, float %6072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7232 = extractvalue %dx.types.ResRet.f32 %7231, 0
  %7233 = extractvalue %dx.types.ResRet.f32 %7231, 1
  %7234 = extractvalue %dx.types.ResRet.f32 %7231, 2
  %7235 = extractvalue %dx.types.ResRet.f32 %7231, 3
  %7236 = fsub fast float %7234, %7232
  %7237 = fsub fast float %7235, %7233
  %7238 = fmul fast float %7236, %6078
  %7239 = fmul fast float %7237, %6078
  %7240 = fadd fast float %7238, %7232
  %7241 = fadd fast float %7239, %7233
  %7242 = fmul fast float %7240, %5799
  %7243 = fmul fast float %7240, %5800
  %7244 = fmul fast float %7240, %5808
  %7245 = fadd fast float %7242, %7241
  %7246 = fadd fast float %7243, %7241
  %7247 = fadd fast float %7244, %7241
  br i1 %6091, label %7248, label %7271

; <label>:7248                                    ; preds = %7225
  %7249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5164, float %7143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7250 = extractvalue %dx.types.ResRet.f32 %7249, 0
  %7251 = extractvalue %dx.types.ResRet.f32 %7249, 1
  %7252 = extractvalue %dx.types.ResRet.f32 %7249, 2
  %7253 = fadd fast float %7250, -5.000000e-01
  %7254 = fadd fast float %7251, -5.000000e-01
  %7255 = fadd fast float %7252, -5.000000e-01
  %7256 = fmul fast float %5799, 4.000000e+00
  %7257 = fmul fast float %7256, %7193
  %7258 = fmul fast float %7257, %7253
  %7259 = fmul fast float %5800, 4.000000e+00
  %7260 = fmul fast float %7259, %7194
  %7261 = fmul fast float %7260, %7254
  %7262 = fmul fast float %5808, 4.000000e+00
  %7263 = fmul fast float %7262, %7195
  %7264 = fmul fast float %7263, %7255
  %7265 = fadd fast float %7258, %7245
  %7266 = fadd fast float %7261, %7246
  %7267 = fadd fast float %7264, %7247
  %7268 = call float @dx.op.unary.f32(i32 7, float %7265)  ; Saturate(value)
  %7269 = call float @dx.op.unary.f32(i32 7, float %7266)  ; Saturate(value)
  %7270 = call float @dx.op.unary.f32(i32 7, float %7267)  ; Saturate(value)
  br label %7271

; <label>:7271                                    ; preds = %7248, %7225
  %7272 = phi float [ %7268, %7248 ], [ %7245, %7225 ]
  %7273 = phi float [ %7269, %7248 ], [ %7246, %7225 ]
  %7274 = phi float [ %7270, %7248 ], [ %7247, %7225 ]
  %7275 = call float @dx.op.binary.f32(i32 35, float %7273, float %7274)  ; FMax(a,b)
  %7276 = call float @dx.op.binary.f32(i32 35, float %7272, float %7275)  ; FMax(a,b)
  %7277 = fsub fast float 1.000000e+00, %7276
  %7278 = call float @dx.op.binary.f32(i32 35, float %7152, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7279 = fdiv fast float %4513, %7278
  %7280 = fmul fast float %6146, %7279
  %7281 = fmul fast float %6148, %7279
  %7282 = fmul fast float %6150, %7279
  %7283 = call float @dx.op.unary.f32(i32 21, float %7280)  ; Exp(value)
  %7284 = call float @dx.op.unary.f32(i32 21, float %7281)  ; Exp(value)
  %7285 = call float @dx.op.unary.f32(i32 21, float %7282)  ; Exp(value)
  %7286 = call float @dx.op.unary.f32(i32 7, float %7283)  ; Saturate(value)
  %7287 = call float @dx.op.unary.f32(i32 7, float %7284)  ; Saturate(value)
  %7288 = call float @dx.op.unary.f32(i32 7, float %7285)  ; Saturate(value)
  %7289 = select i1 %6143, float %7286, float 0.000000e+00
  %7290 = select i1 %6144, float %7287, float 0.000000e+00
  %7291 = select i1 %6145, float %7288, float 0.000000e+00
  %7292 = fsub fast float -0.000000e+00, %5802
  %7293 = fsub fast float -0.000000e+00, %5803
  %7294 = fsub fast float -0.000000e+00, %5804
  %7295 = call float @dx.op.dot3.f32(i32 55, float %6238, float %6239, float %6240, float %7292, float %7293, float %7294)  ; Dot3(ax,ay,az,bx,by,bz)
  %7296 = call float @dx.op.unary.f32(i32 7, float %7295)  ; Saturate(value)
  %7297 = fmul fast float %7296, 9.843750e-01
  %7298 = fadd fast float %7297, 7.812500e-03
  %7299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7298, float %6072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7300 = extractvalue %dx.types.ResRet.f32 %7299, 0
  %7301 = extractvalue %dx.types.ResRet.f32 %7299, 1
  %7302 = extractvalue %dx.types.ResRet.f32 %7299, 2
  %7303 = extractvalue %dx.types.ResRet.f32 %7299, 3
  %7304 = fsub fast float %7302, %7300
  %7305 = fsub fast float %7303, %7301
  %7306 = fmul fast float %7304, %6078
  %7307 = fmul fast float %7305, %6078
  %7308 = fadd fast float %7306, %7300
  %7309 = fadd fast float %7307, %7301
  %7310 = fmul fast float %7308, %5799
  %7311 = fmul fast float %7308, %5800
  %7312 = fmul fast float %7308, %5808
  %7313 = fadd fast float %7310, %7309
  %7314 = fadd fast float %7311, %7309
  %7315 = fadd fast float %7312, %7309
  br i1 %6091, label %7316, label %7339

; <label>:7316                                    ; preds = %7271
  %7317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5164, float %7296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7318 = extractvalue %dx.types.ResRet.f32 %7317, 0
  %7319 = extractvalue %dx.types.ResRet.f32 %7317, 1
  %7320 = extractvalue %dx.types.ResRet.f32 %7317, 2
  %7321 = fadd fast float %7318, -5.000000e-01
  %7322 = fadd fast float %7319, -5.000000e-01
  %7323 = fadd fast float %7320, -5.000000e-01
  %7324 = fmul fast float %5799, 4.000000e+00
  %7325 = fmul fast float %7324, %7193
  %7326 = fmul fast float %7325, %7321
  %7327 = fmul fast float %5800, 4.000000e+00
  %7328 = fmul fast float %7327, %7194
  %7329 = fmul fast float %7328, %7322
  %7330 = fmul fast float %5808, 4.000000e+00
  %7331 = fmul fast float %7330, %7195
  %7332 = fmul fast float %7331, %7323
  %7333 = fadd fast float %7326, %7313
  %7334 = fadd fast float %7329, %7314
  %7335 = fadd fast float %7332, %7315
  %7336 = call float @dx.op.unary.f32(i32 7, float %7333)  ; Saturate(value)
  %7337 = call float @dx.op.unary.f32(i32 7, float %7334)  ; Saturate(value)
  %7338 = call float @dx.op.unary.f32(i32 7, float %7335)  ; Saturate(value)
  br label %7339

; <label>:7339                                    ; preds = %7316, %7271
  %7340 = phi float [ %7336, %7316 ], [ %7313, %7271 ]
  %7341 = phi float [ %7337, %7316 ], [ %7314, %7271 ]
  %7342 = phi float [ %7338, %7316 ], [ %7315, %7271 ]
  %7343 = call float @dx.op.binary.f32(i32 35, float %7341, float %7342)  ; FMax(a,b)
  %7344 = call float @dx.op.binary.f32(i32 35, float %7340, float %7343)  ; FMax(a,b)
  %7345 = fsub fast float 1.000000e+00, %7344
  %7346 = fmul fast float %6206, %6211
  %7347 = fadd fast float %6213, %7346
  %7348 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  %7349 = fsub fast float %6238, %5816
  %7350 = fsub fast float %6239, %5817
  %7351 = fsub fast float %6240, %5818
  %7352 = call float @dx.op.dot3.f32(i32 55, float %7349, float %7350, float %7351, float %7349, float %7350, float %7351)  ; Dot3(ax,ay,az,bx,by,bz)
  %7353 = call float @dx.op.unary.f32(i32 25, float %7352)  ; Rsqrt(value)
  %7354 = fmul fast float %7353, %7349
  %7355 = fmul fast float %7353, %7350
  %7356 = fmul fast float %7353, %7351
  %7357 = call float @dx.op.dot3.f32(i32 55, float %7292, float %7293, float %7294, float %7354, float %7355, float %7356)  ; Dot3(ax,ay,az,bx,by,bz)
  %7358 = fmul fast float %7357, %7357
  %7359 = call float @dx.op.unary.f32(i32 6, float %7296)  ; FAbs(value)
  %7360 = call float @dx.op.binary.f32(i32 35, float %7348, float 0x3F847AE140000000)  ; FMax(a,b)
  %7361 = fmul fast float %7360, %7360
  %7362 = fmul fast float %7361, %7361
  %7363 = fsub fast float 1.000000e+00, %7362
  %7364 = fmul fast float %7157, %7363
  %7365 = fadd fast float %7364, %7362
  %7366 = bitcast float %7365 to i32
  %7367 = ashr i32 %7366, 1
  %7368 = add nsw i32 %7367, 532487669
  %7369 = bitcast i32 %7368 to float
  %7370 = fadd fast float %7369, %5810
  %7371 = fmul fast float %7362, %7358
  %7372 = fsub fast float 1.000000e+00, %7358
  %7373 = fadd fast float %7372, %7371
  %7374 = fmul fast float %7359, %7359
  %7375 = fmul fast float %7374, %7363
  %7376 = fadd fast float %7375, %7362
  %7377 = bitcast float %7376 to i32
  %7378 = ashr i32 %7377, 1
  %7379 = add nsw i32 %7378, 532487669
  %7380 = bitcast i32 %7379 to float
  %7381 = fadd fast float %7380, %7359
  %7382 = fmul fast float %7373, %7373
  %7383 = fmul fast float %7382, %7370
  %7384 = fmul fast float %7383, %7381
  %7385 = fdiv fast float 0x3FF0A00000000000, %7384
  %7386 = fmul fast float %7385, %7362
  %7387 = fmul fast float %7296, %7289
  %7388 = fmul fast float %7296, %7290
  %7389 = fmul fast float %7296, %7291
  %7390 = fmul fast float %7387, %7345
  %7391 = fmul fast float %7390, %7386
  %7392 = fmul fast float %7388, %7345
  %7393 = fmul fast float %7392, %7386
  %7394 = fmul fast float %7389, %7345
  %7395 = fmul fast float %7394, %7386
  %7396 = fmul fast float %7226, %7180
  %7397 = fmul fast float %7227, %7180
  %7398 = fmul fast float %7228, %7180
  %7399 = fsub fast float 1.000000e+00, %7144
  %7400 = bitcast float %7399 to i32
  %7401 = sitofp i32 %7400 to float
  %7402 = fmul fast float %7401, 5.000000e+00
  %7403 = fadd fast float %7402, 0xC1EFBF8940000000
  %7404 = fptosi float %7403 to i32
  %7405 = bitcast i32 %7404 to float
  %7406 = fmul fast float %7405, %5165
  %7407 = fmul fast float %7277, %7406
  %7408 = fmul fast float %7407, %6138
  %7409 = fmul fast float %7407, %6139
  %7410 = fmul fast float %7407, %6140
  %7411 = fadd fast float %7408, %7396
  %7412 = fadd fast float %7409, %7397
  %7413 = fadd fast float %7410, %7398
  %7414 = fmul fast float %7411, %7149
  %7415 = fmul fast float %7412, %7149
  %7416 = fmul fast float %7413, %7149
  %7417 = fmul fast float %7149, %7132
  %7418 = fmul fast float %7417, %7277
  %7419 = fmul fast float %7149, %7133
  %7420 = fmul fast float %7419, %7277
  %7421 = fmul fast float %7149, %7134
  %7422 = fmul fast float %7421, %7277
  %7423 = fadd fast float %7414, %7391
  %7424 = fadd fast float %7415, %7393
  %7425 = fadd fast float %7416, %7395
  %7426 = fmul fast float %7423, %7132
  %7427 = fmul fast float %7424, %7133
  %7428 = fmul fast float %7425, %7134
  %7429 = fadd fast float %7418, %6228
  %7430 = fmul fast float %7429, %5161
  %7431 = fadd fast float %7420, %6230
  %7432 = fmul fast float %7431, %5161
  %7433 = fadd fast float %7422, %6232
  %7434 = fmul fast float %7433, %5161
  %7435 = fadd fast float %7426, %6191
  %7436 = fmul fast float %7435, %5161
  %7437 = fadd fast float %7427, %6194
  %7438 = fmul fast float %7437, %5161
  %7439 = fadd fast float %7428, %6197
  %7440 = fmul fast float %7439, %5161
  br label %7441

; <label>:7441                                    ; preds = %7339, %7050, %6118
  %7442 = phi float [ %6192, %6118 ], [ %6192, %7050 ], [ %7436, %7339 ]
  %7443 = phi float [ %6195, %6118 ], [ %6195, %7050 ], [ %7438, %7339 ]
  %7444 = phi float [ %6198, %6118 ], [ %6198, %7050 ], [ %7440, %7339 ]
  %7445 = phi float [ %6229, %6118 ], [ %6229, %7050 ], [ %7430, %7339 ]
  %7446 = phi float [ %6231, %6118 ], [ %6231, %7050 ], [ %7432, %7339 ]
  %7447 = phi float [ %6233, %6118 ], [ %6233, %7050 ], [ %7434, %7339 ]
  %7448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.i32 %7448, 0
  %7450 = icmp eq i32 %7449, 0
  br i1 %7450, label %8225, label %7451

; <label>:7451                                    ; preds = %7441
  %7452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7453 = extractvalue %dx.types.CBufRet.f32 %7452, 2
  %7454 = extractvalue %dx.types.CBufRet.f32 %7452, 3
  %7455 = fmul fast float %7453, %102
  %7456 = fmul fast float %7454, %103
  %7457 = fptoui float %7455 to i32
  %7458 = fptoui float %7456 to i32
  %7459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7460 = extractvalue %dx.types.CBufRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.CBufRet.f32 %7459, 2
  %7462 = extractvalue %dx.types.CBufRet.f32 %7459, 3
  %7463 = fadd fast float %93, -4.000000e+00
  %7464 = call float @dx.op.binary.f32(i32 35, float %7463, float 0.000000e+00)  ; FMax(a,b)
  %7465 = fadd fast float %7464, %7460
  %7466 = fmul fast float %7465, %7461
  %7467 = call float @dx.op.unary.f32(i32 23, float %7466)  ; Log(value)
  %7468 = fmul fast float %7467, %7462
  %7469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7470 = extractvalue %dx.types.CBufRet.f32 %7469, 2
  %7471 = fmul fast float %7468, %7470
  %7472 = call float @dx.op.unary.f32(i32 7, float %7471)  ; Saturate(value)
  %7473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7474 = extractvalue %dx.types.CBufRet.i32 %7473, 1
  %7475 = add i32 %7474, -1
  %7476 = uitofp i32 %7474 to float
  %7477 = fmul fast float %7476, %7472
  %7478 = fptoui float %7477 to i32
  %7479 = call i32 @dx.op.binary.i32(i32 40, i32 %7478, i32 %7475)  ; UMin(a,b)
  %7480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7481 = extractvalue %dx.types.CBufRet.i32 %7480, 2
  %7482 = extractvalue %dx.types.CBufRet.i32 %7480, 3
  %7483 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7458, i32 %7481, i32 %7457)  ; UMad(a,b,c)
  %7484 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7479, i32 %7482, i32 %7483)  ; UMad(a,b,c)
  %7485 = add nsw i32 %7449, -1
  %7486 = call i32 @dx.op.binary.i32(i32 37, i32 %7485, i32 0)  ; IMax(a,b)
  %7487 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %7488 = fptoui float %7487 to i32
  %7489 = lshr i32 %7488, 5
  %7490 = call i32 @dx.op.binary.i32(i32 40, i32 %7489, i32 8191)  ; UMin(a,b)
  %7491 = shl i32 %7490, 2
  %7492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7491, i32 undef)  ; BufferLoad(srv,index,wot)
  %7493 = extractvalue %dx.types.ResRet.i32 %7492, 0
  %7494 = lshr i32 %7493, 16
  %7495 = and i32 %7493, 65535
  %7496 = lshr i32 %7493, 21
  %7497 = lshr i32 %7495, 5
  %7498 = call i32 @dx.op.binary.i32(i32 40, i32 %7497, i32 %7486)  ; UMin(a,b)
  %7499 = icmp ugt i32 %7496, %7498
  br i1 %7499, label %8225, label %7500

; <label>:7500                                    ; preds = %7451
  br label %7501

; <label>:7501                                    ; preds = %8215, %7500
  %7502 = phi i32 [ %8222, %8215 ], [ %7496, %7500 ]
  %7503 = phi float [ %8216, %8215 ], [ %7442, %7500 ]
  %7504 = phi float [ %8217, %8215 ], [ %7443, %7500 ]
  %7505 = phi float [ %8218, %8215 ], [ %7444, %7500 ]
  %7506 = phi float [ %8219, %8215 ], [ %7445, %7500 ]
  %7507 = phi float [ %8220, %8215 ], [ %7446, %7500 ]
  %7508 = phi float [ %8221, %8215 ], [ %7447, %7500 ]
  %7509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.i32 %7509, 0
  %7511 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7484, i32 %7510, i32 %7502)  ; UMad(a,b,c)
  %7512 = shl i32 %7511, 2
  %7513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7512, i32 undef)  ; BufferLoad(srv,index,wot)
  %7514 = extractvalue %dx.types.ResRet.i32 %7513, 0
  %7515 = shl i32 %7502, 5
  %7516 = sub nsw i32 %7494, %7515
  %7517 = call i32 @dx.op.binary.i32(i32 37, i32 %7516, i32 0)  ; IMax(a,b)
  %7518 = call i32 @dx.op.binary.i32(i32 38, i32 %7517, i32 31)  ; IMin(a,b)
  %7519 = sub nsw i32 1, %7494
  %7520 = add nsw i32 %7519, %7495
  %7521 = call i32 @dx.op.binary.i32(i32 37, i32 %7520, i32 0)  ; IMax(a,b)
  %7522 = call i32 @dx.op.binary.i32(i32 38, i32 %7521, i32 32)  ; IMin(a,b)
  %7523 = and i32 %7522, 31
  %7524 = shl i32 -1, %7523
  %7525 = xor i32 %7524, -1
  %7526 = and i32 %7518, 31
  %7527 = shl i32 %7525, %7526
  %7528 = icmp eq i32 %7522, 32
  %7529 = select i1 %7528, i32 -1, i32 %7527
  %7530 = and i32 %7529, %7514
  %7531 = icmp eq i32 %7530, 0
  br i1 %7531, label %8215, label %7532

; <label>:7532                                    ; preds = %7501
  br label %7533

; <label>:7533                                    ; preds = %7668, %7532
  %7534 = phi i32 [ %7545, %7668 ], [ %7530, %7532 ]
  %7535 = phi float [ %7669, %7668 ], [ %7503, %7532 ]
  %7536 = phi float [ %7670, %7668 ], [ %7504, %7532 ]
  %7537 = phi float [ %7671, %7668 ], [ %7505, %7532 ]
  %7538 = phi float [ %7672, %7668 ], [ %7506, %7532 ]
  %7539 = phi float [ %7673, %7668 ], [ %7507, %7532 ]
  %7540 = phi float [ %7674, %7668 ], [ %7508, %7532 ]
  %7541 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7534)  ; FirstbitLo(value)
  %7542 = add i32 %7541, %7515
  %7543 = and i32 %7541, 31
  %7544 = shl i32 1, %7543
  %7545 = xor i32 %7544, %7534
  %7546 = mul i32 %7542, 112
  %7547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7546, i32 undef)  ; BufferLoad(srv,index,wot)
  %7548 = extractvalue %dx.types.ResRet.f32 %7547, 0
  %7549 = extractvalue %dx.types.ResRet.f32 %7547, 1
  %7550 = extractvalue %dx.types.ResRet.f32 %7547, 2
  %7551 = or i32 %7546, 12
  %7552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7551, i32 undef)  ; BufferLoad(srv,index,wot)
  %7553 = extractvalue %dx.types.ResRet.f32 %7552, 0
  %7554 = add i32 %7546, 16
  %7555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7554, i32 undef)  ; BufferLoad(srv,index,wot)
  %7556 = extractvalue %dx.types.ResRet.f32 %7555, 0
  %7557 = extractvalue %dx.types.ResRet.f32 %7555, 1
  %7558 = extractvalue %dx.types.ResRet.f32 %7555, 2
  %7559 = add i32 %7546, 28
  %7560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7559, i32 undef)  ; BufferLoad(srv,index,wot)
  %7561 = extractvalue %dx.types.ResRet.i32 %7560, 0
  %7562 = add i32 %7546, 44
  %7563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7562, i32 undef)  ; BufferLoad(srv,index,wot)
  %7564 = extractvalue %dx.types.ResRet.f32 %7563, 0
  %7565 = add i32 %7546, 48
  %7566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7565, i32 undef)  ; BufferLoad(srv,index,wot)
  %7567 = extractvalue %dx.types.ResRet.f32 %7566, 0
  %7568 = extractvalue %dx.types.ResRet.f32 %7566, 1
  %7569 = extractvalue %dx.types.ResRet.f32 %7566, 2
  %7570 = extractvalue %dx.types.ResRet.f32 %7566, 3
  %7571 = add i32 %7546, 64
  %7572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7571, i32 undef)  ; BufferLoad(srv,index,wot)
  %7573 = extractvalue %dx.types.ResRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.ResRet.f32 %7572, 1
  %7575 = extractvalue %dx.types.ResRet.f32 %7572, 2
  %7576 = extractvalue %dx.types.ResRet.f32 %7572, 3
  %7577 = add i32 %7546, 80
  %7578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7577, i32 undef)  ; BufferLoad(srv,index,wot)
  %7579 = extractvalue %dx.types.ResRet.f32 %7578, 1
  %7580 = extractvalue %dx.types.ResRet.f32 %7578, 2
  %7581 = add i32 %7546, 92
  %7582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7581, i32 undef)  ; BufferLoad(srv,index,wot)
  %7583 = extractvalue %dx.types.ResRet.i32 %7582, 0
  %7584 = call float @dx.op.dot3.f32(i32 55, float %7548, float %7549, float %7550, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7585 = select i1 %223, float %7579, float %7548
  %7586 = select i1 %223, float %7584, float %7549
  %7587 = select i1 %223, float %7580, float %7550
  %7588 = and i32 %7583, 65535
  %7589 = uitofp i32 %7588 to float
  %7590 = lshr i32 %7583, 16
  %7591 = uitofp i32 %7590 to float
  %7592 = and i32 %7561, 65535
  %7593 = and i32 %7561, 50331648
  %7594 = icmp slt i32 %7561, 0
  %7595 = icmp eq i32 %7593, 33554432
  %7596 = fsub fast float %7567, %161
  %7597 = fsub fast float %7568, %162
  %7598 = fsub fast float %7569, %163
  %7599 = call float @dx.op.dot3.f32(i32 55, float %7596, float %7597, float %7598, float %7596, float %7597, float %7598)  ; Dot3(ax,ay,az,bx,by,bz)
  %7600 = call float @dx.op.unary.f32(i32 24, float %7599)  ; Sqrt(value)
  %7601 = fdiv fast float 1.000000e+00, %7600
  %7602 = fmul fast float %7601, %7596
  %7603 = fmul fast float %7601, %7597
  %7604 = fmul fast float %7601, %7598
  %7605 = fadd fast float %7600, %7553
  %7606 = fdiv fast float 1.000000e+00, %7605
  %7607 = fmul float %7564, %7606
  %7608 = fmul float %7607, %7607
  %7609 = call float @dx.op.unary.f32(i32 7, float %7608)  ; Saturate(value)
  br i1 %7595, label %7610, label %7631

; <label>:7610                                    ; preds = %7533
  %7611 = fmul fast float %7575, %7556
  %7612 = fmul fast float %7575, %7557
  %7613 = fmul fast float %7575, %7558
  %7614 = fadd fast float %7596, %7611
  %7615 = fadd fast float %7597, %7612
  %7616 = fadd fast float %7598, %7613
  %7617 = call float @dx.op.dot3.f32(i32 55, float %7614, float %7615, float %7616, float %7614, float %7615, float %7616)  ; Dot3(ax,ay,az,bx,by,bz)
  %7618 = call float @dx.op.unary.f32(i32 25, float %7617)  ; Rsqrt(value)
  %7619 = fmul fast float %7618, %7614
  %7620 = fmul fast float %7618, %7615
  %7621 = fmul fast float %7618, %7616
  %7622 = fsub fast float %161, %7567
  %7623 = fsub fast float %162, %7568
  %7624 = fsub fast float %163, %7569
  %7625 = fsub fast float -0.000000e+00, %7622
  %7626 = fsub fast float -0.000000e+00, %7623
  %7627 = fsub fast float -0.000000e+00, %7624
  %7628 = call float @dx.op.dot3.f32(i32 55, float %7625, float %7626, float %7627, float %7556, float %7557, float %7558)  ; Dot3(ax,ay,az,bx,by,bz)
  %7629 = fcmp fast ogt float %7628, 0.000000e+00
  %7630 = uitofp i1 %7629 to float
  br label %7631

; <label>:7631                                    ; preds = %7610, %7533
  %7632 = phi float [ %7630, %7610 ], [ 1.000000e+00, %7533 ]
  %7633 = phi float [ %7619, %7610 ], [ %7602, %7533 ]
  %7634 = phi float [ %7620, %7610 ], [ %7603, %7533 ]
  %7635 = phi float [ %7621, %7610 ], [ %7604, %7533 ]
  %7636 = call float @dx.op.dot3.f32(i32 55, float %7556, float %7557, float %7558, float %7633, float %7634, float %7635)  ; Dot3(ax,ay,az,bx,by,bz)
  %7637 = fmul fast float %7636, %7636
  %7638 = call float @dx.op.unary.f32(i32 7, float %7637)  ; Saturate(value)
  %7639 = fsub fast float 1.000000e+00, %7638
  %7640 = fmul fast float %7639, 5.000000e-01
  %7641 = fcmp fast ogt float %7636, 0.000000e+00
  %7642 = fsub fast float 1.000000e+00, %7640
  %7643 = select i1 %7641, float %7640, float %7642
  %7644 = fmul fast float %7643, %7591
  %7645 = fadd fast float %7644, %7589
  %7646 = fmul fast float %7645, 0x3EF0001000000000
  %7647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7646, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7648 = extractvalue %dx.types.ResRet.f32 %7647, 0
  %7649 = fmul fast float %7636, %7573
  %7650 = fadd fast float %7649, %7574
  %7651 = call float @dx.op.unary.f32(i32 7, float %7650)  ; Saturate(value)
  %7652 = select i1 %7595, float 1.000000e+00, float %7651
  %7653 = select i1 %7595, float %7651, float 1.000000e+00
  %7654 = fmul fast float %7600, %7570
  %7655 = fsub fast float 1.000000e+00, %7654
  %7656 = fmul fast float %7655, %7576
  %7657 = call float @dx.op.unary.f32(i32 7, float %7656)  ; Saturate(value)
  %7658 = fmul fast float %7657, %7653
  %7659 = fmul fast float %7658, 2.000000e+00
  %7660 = fsub fast float 3.000000e+00, %7659
  %7661 = fmul fast float %7648, %7632
  %7662 = fmul fast float %7658, %7658
  %7663 = fmul fast float %7662, %7661
  %7664 = fmul fast float %7663, %7660
  %7665 = call float @dx.op.binary.f32(i32 36, float %7664, float %7664)  ; FMin(a,b)
  %7666 = call float @dx.op.binary.f32(i32 36, float %7664, float %7665)  ; FMin(a,b)
  %7667 = fcmp fast ogt float %7666, 0.000000e+00
  br i1 %7667, label %7676, label %7668, !dx.controlflow.hints !119

; <label>:7668                                    ; preds = %8168, %7776, %7631
  %7669 = phi float [ %7535, %7776 ], [ %7535, %7631 ], [ %8211, %8168 ]
  %7670 = phi float [ %7536, %7776 ], [ %7536, %7631 ], [ %8212, %8168 ]
  %7671 = phi float [ %7537, %7776 ], [ %7537, %7631 ], [ %8213, %8168 ]
  %7672 = phi float [ %7538, %7776 ], [ %7538, %7631 ], [ %8205, %8168 ]
  %7673 = phi float [ %7539, %7776 ], [ %7539, %7631 ], [ %8206, %8168 ]
  %7674 = phi float [ %7540, %7776 ], [ %7540, %7631 ], [ %8207, %8168 ]
  %7675 = icmp eq i32 %7534, %7544
  br i1 %7675, label %8214, label %7533

; <label>:7676                                    ; preds = %7631
  %7677 = icmp eq i32 %7592, 255
  br i1 %7677, label %7776, label %7678, !dx.controlflow.hints !120

; <label>:7678                                    ; preds = %7676
  %7679 = mul nuw nsw i32 %7592, 176
  %7680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7679, i32 undef)  ; BufferLoad(srv,index,wot)
  %7681 = extractvalue %dx.types.ResRet.f32 %7680, 0
  %7682 = extractvalue %dx.types.ResRet.f32 %7680, 1
  %7683 = extractvalue %dx.types.ResRet.f32 %7680, 2
  %7684 = extractvalue %dx.types.ResRet.f32 %7680, 3
  %7685 = add nuw nsw i32 %7679, 16
  %7686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7685, i32 undef)  ; BufferLoad(srv,index,wot)
  %7687 = extractvalue %dx.types.ResRet.f32 %7686, 0
  %7688 = extractvalue %dx.types.ResRet.f32 %7686, 1
  %7689 = add nuw nsw i32 %7679, 32
  %7690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7689, i32 undef)  ; BufferLoad(srv,index,wot)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 0
  %7692 = extractvalue %dx.types.ResRet.f32 %7690, 1
  %7693 = extractvalue %dx.types.ResRet.f32 %7690, 2
  %7694 = add nuw nsw i32 %7679, 48
  %7695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7694, i32 undef)  ; BufferLoad(srv,index,wot)
  %7696 = extractvalue %dx.types.ResRet.f32 %7695, 0
  %7697 = extractvalue %dx.types.ResRet.f32 %7695, 1
  %7698 = extractvalue %dx.types.ResRet.f32 %7695, 2
  %7699 = extractvalue %dx.types.ResRet.f32 %7695, 3
  %7700 = add nuw nsw i32 %7679, 64
  %7701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7700, i32 undef)  ; BufferLoad(srv,index,wot)
  %7702 = extractvalue %dx.types.ResRet.f32 %7701, 0
  %7703 = extractvalue %dx.types.ResRet.f32 %7701, 1
  %7704 = extractvalue %dx.types.ResRet.f32 %7701, 2
  %7705 = extractvalue %dx.types.ResRet.f32 %7701, 3
  %7706 = add nuw nsw i32 %7679, 80
  %7707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7706, i32 undef)  ; BufferLoad(srv,index,wot)
  %7708 = extractvalue %dx.types.ResRet.f32 %7707, 0
  %7709 = extractvalue %dx.types.ResRet.f32 %7707, 1
  %7710 = extractvalue %dx.types.ResRet.f32 %7707, 2
  %7711 = extractvalue %dx.types.ResRet.f32 %7707, 3
  %7712 = add nuw nsw i32 %7679, 96
  %7713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7712, i32 undef)  ; BufferLoad(srv,index,wot)
  %7714 = extractvalue %dx.types.ResRet.f32 %7713, 0
  %7715 = extractvalue %dx.types.ResRet.f32 %7713, 1
  %7716 = extractvalue %dx.types.ResRet.f32 %7713, 2
  %7717 = extractvalue %dx.types.ResRet.f32 %7713, 3
  %7718 = bitcast float %7688 to i32
  %7719 = fmul fast float %7693, %111
  %7720 = fmul fast float %7693, %113
  %7721 = fmul fast float %7693, %115
  %7722 = fadd fast float %7719, %161
  %7723 = fadd fast float %7720, %162
  %7724 = fadd fast float %7721, %163
  %7725 = fmul fast float %7722, %7696
  %7726 = call float @dx.op.tertiary.f32(i32 46, float %7723, float %7702, float %7725)  ; FMad(a,b,c)
  %7727 = call float @dx.op.tertiary.f32(i32 46, float %7724, float %7708, float %7726)  ; FMad(a,b,c)
  %7728 = fadd fast float %7727, %7714
  %7729 = fmul fast float %7722, %7697
  %7730 = call float @dx.op.tertiary.f32(i32 46, float %7723, float %7703, float %7729)  ; FMad(a,b,c)
  %7731 = call float @dx.op.tertiary.f32(i32 46, float %7724, float %7709, float %7730)  ; FMad(a,b,c)
  %7732 = fadd fast float %7731, %7715
  %7733 = fmul fast float %7722, %7698
  %7734 = call float @dx.op.tertiary.f32(i32 46, float %7723, float %7704, float %7733)  ; FMad(a,b,c)
  %7735 = call float @dx.op.tertiary.f32(i32 46, float %7724, float %7710, float %7734)  ; FMad(a,b,c)
  %7736 = fadd fast float %7735, %7716
  %7737 = fmul fast float %7722, %7699
  %7738 = call float @dx.op.tertiary.f32(i32 46, float %7723, float %7705, float %7737)  ; FMad(a,b,c)
  %7739 = call float @dx.op.tertiary.f32(i32 46, float %7724, float %7711, float %7738)  ; FMad(a,b,c)
  %7740 = fadd fast float %7739, %7717
  %7741 = fdiv fast float %7728, %7740
  %7742 = fdiv fast float %7732, %7740
  %7743 = fdiv fast float %7736, %7740
  %7744 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7743)  ; FMax(a,b)
  %7745 = fmul fast float %234, 0x401921FB60000000
  %7746 = call float @dx.op.unary.f32(i32 13, float %7745)  ; Sin(value)
  %7747 = call float @dx.op.unary.f32(i32 12, float %7745)  ; Cos(value)
  %7748 = fsub fast float -0.000000e+00, %7746
  %7749 = fmul fast float %7683, 5.000000e-01
  %7750 = call float @dx.op.dot2.f32(i32 54, float %234, float %234, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7751 = call float @dx.op.unary.f32(i32 22, float %7750)  ; Frc(value)
  %7752 = fmul fast float %7751, 0x404A7DD040000000
  %7753 = call float @dx.op.unary.f32(i32 22, float %7752)  ; Frc(value)
  %7754 = fmul fast float %7753, %7692
  %7755 = fadd fast float %7754, %7749
  %7756 = call float @dx.op.tertiary.f32(i32 46, float %7755, float %7748, float 0.000000e+00)  ; FMad(a,b,c)
  %7757 = call float @dx.op.tertiary.f32(i32 46, float %7755, float %7747, float 0.000000e+00)  ; FMad(a,b,c)
  %7758 = fadd fast float %7756, %7741
  %7759 = fadd fast float %7757, %7742
  %7760 = fmul fast float %7758, %7687
  %7761 = fmul fast float %7759, %7687
  %7762 = call float @dx.op.binary.f32(i32 35, float %7760, float %7683)  ; FMax(a,b)
  %7763 = call float @dx.op.binary.f32(i32 35, float %7761, float %7683)  ; FMax(a,b)
  %7764 = call float @dx.op.binary.f32(i32 36, float %7762, float %7684)  ; FMin(a,b)
  %7765 = call float @dx.op.binary.f32(i32 36, float %7763, float %7684)  ; FMin(a,b)
  %7766 = fadd fast float %7764, %7681
  %7767 = fadd fast float %7765, %7682
  %7768 = uitofp i32 %7718 to float
  %7769 = fadd fast float %7744, %7691
  %7770 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7766, float %7767, float %7768, float undef, i32 0, i32 0, i32 undef, float %7769)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7771 = extractvalue %dx.types.ResRet.f32 %7770, 0
  %7772 = fadd fast float %7771, -1.000000e+00
  %7773 = fmul fast float %7772, %7652
  %7774 = fadd fast float %7773, 1.000000e+00
  %7775 = fmul fast float %7774, %7664
  br label %7776

; <label>:7776                                    ; preds = %7678, %7676
  %7777 = phi float [ %7775, %7678 ], [ %7664, %7676 ]
  %7778 = call float @dx.op.binary.f32(i32 36, float %7777, float %7777)  ; FMin(a,b)
  %7779 = call float @dx.op.binary.f32(i32 36, float %7777, float %7778)  ; FMin(a,b)
  %7780 = fcmp fast ogt float %7779, 0.000000e+00
  br i1 %7780, label %7781, label %7668, !dx.controlflow.hints !121

; <label>:7781                                    ; preds = %7776
  %7782 = fmul fast float %7777, %7585
  %7783 = fmul fast float %7777, %7586
  %7784 = fmul fast float %7777, %7587
  %7785 = fsub fast float %7569, %5595
  %7786 = fcmp fast ogt float %7785, 0.000000e+00
  %7787 = fsub fast float %163, %5595
  %7788 = fcmp fast ogt float %7787, 0.000000e+00
  %7789 = xor i1 %7788, %7786
  %7790 = fsub fast float %5595, %7569
  %7791 = fmul fast float %7790, 2.000000e+00
  %7792 = fadd fast float %7791, %7569
  %7793 = select i1 %7789, float %7569, float %7792
  %7794 = fsub fast float %7793, %163
  %7795 = call float @dx.op.dot3.f32(i32 55, float %7596, float %7597, float %7794, float %7596, float %7597, float %7794)  ; Dot3(ax,ay,az,bx,by,bz)
  %7796 = call float @dx.op.unary.f32(i32 25, float %7795)  ; Rsqrt(value)
  %7797 = fmul fast float %7796, %7596
  %7798 = fmul fast float %7796, %7597
  %7799 = fmul fast float %7796, %7794
  %7800 = fsub fast float %5595, %163
  %7801 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7800)  ; Dot3(ax,ay,az,bx,by,bz)
  %7802 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7797, float %7798, float %7799)  ; Dot3(ax,ay,az,bx,by,bz)
  %7803 = fdiv fast float 1.000000e+00, %7802
  %7804 = fmul fast float %7803, %7801
  %7805 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7787, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7806 = fcmp fast ogt float %7805, 0.000000e+00
  %7807 = fcmp fast olt float %7805, 0.000000e+00
  %7808 = zext i1 %7806 to i32
  %7809 = zext i1 %7807 to i32
  %7810 = sub nsw i32 %7808, %7809
  %7811 = sitofp i32 %7810 to float
  %7812 = fsub fast float %7793, %5595
  %7813 = call float @dx.op.dot3.f32(i32 55, float %7596, float %7597, float %7812, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7814 = fcmp fast ogt float %7813, 0.000000e+00
  %7815 = fcmp fast olt float %7813, 0.000000e+00
  %7816 = zext i1 %7814 to i32
  %7817 = zext i1 %7815 to i32
  %7818 = sub nsw i32 %7816, %7817
  %7819 = sitofp i32 %7818 to float
  %7820 = fcmp fast une float %7811, %7819
  br i1 %7820, label %7821, label %7831

; <label>:7821                                    ; preds = %7781
  %7822 = fmul fast float %7804, %7799
  %7823 = fmul fast float %7804, %7798
  %7824 = fmul fast float %7804, %7797
  %7825 = fmul fast float %7824, %7824
  %7826 = fmul fast float %7823, %7823
  %7827 = fadd fast float %7825, %7826
  %7828 = fmul fast float %7822, %7822
  %7829 = fadd fast float %7827, %7828
  %7830 = call float @dx.op.unary.f32(i32 24, float %7829)  ; Sqrt(value)
  br label %7843

; <label>:7831                                    ; preds = %7781
  %7832 = icmp slt i32 %7810, 0
  br i1 %7832, label %7833, label %7843

; <label>:7833                                    ; preds = %7831
  %7834 = fsub fast float %161, %7567
  %7835 = fsub fast float %162, %7568
  %7836 = fsub fast float %163, %7793
  %7837 = fmul fast float %7834, %7834
  %7838 = fmul fast float %7835, %7835
  %7839 = fadd fast float %7837, %7838
  %7840 = fmul fast float %7836, %7836
  %7841 = fadd fast float %7839, %7840
  %7842 = call float @dx.op.unary.f32(i32 24, float %7841)  ; Sqrt(value)
  br label %7843

; <label>:7843                                    ; preds = %7833, %7831, %7821
  %7844 = phi float [ %7830, %7821 ], [ %7842, %7833 ], [ 0.000000e+00, %7831 ]
  %7845 = and i1 %7788, %7786
  %7846 = fsub fast float -0.000000e+00, %7844
  %7847 = select i1 %7845, float -0.000000e+00, float %7846
  %7848 = fmul fast float %5596, 0x3FF7154760000000
  %7849 = fmul fast float %7848, %7847
  %7850 = fmul fast float %5597, 0x3FF7154760000000
  %7851 = fmul fast float %7850, %7847
  %7852 = fmul fast float %5598, 0x3FF7154760000000
  %7853 = fmul fast float %7852, %7847
  %7854 = call float @dx.op.unary.f32(i32 21, float %7849)  ; Exp(value)
  %7855 = call float @dx.op.unary.f32(i32 21, float %7851)  ; Exp(value)
  %7856 = call float @dx.op.unary.f32(i32 21, float %7853)  ; Exp(value)
  %7857 = call float @dx.op.unary.f32(i32 7, float %7854)  ; Saturate(value)
  %7858 = call float @dx.op.unary.f32(i32 7, float %7855)  ; Saturate(value)
  %7859 = call float @dx.op.unary.f32(i32 7, float %7856)  ; Saturate(value)
  %7860 = fmul fast float %7782, %7857
  %7861 = fmul fast float %7783, %7858
  %7862 = fmul fast float %7784, %7859
  %7863 = fsub fast float %7602, %5795
  %7864 = fsub fast float %7603, %5794
  %7865 = fsub fast float %7604, %5793
  %7866 = call float @dx.op.dot3.f32(i32 55, float %7863, float %7864, float %7865, float %7863, float %7864, float %7865)  ; Dot3(ax,ay,az,bx,by,bz)
  %7867 = call float @dx.op.unary.f32(i32 25, float %7866)  ; Rsqrt(value)
  %7868 = fmul fast float %7867, %7863
  %7869 = fmul fast float %7867, %7864
  %7870 = fmul fast float %7867, %7865
  %7871 = call float @dx.op.dot3.f32(i32 55, float %7602, float %7603, float %7604, float %5802, float %5803, float %5804)  ; Dot3(ax,ay,az,bx,by,bz)
  %7872 = call float @dx.op.dot3.f32(i32 55, float %5792, float %5791, float %5790, float %7868, float %7869, float %7870)  ; Dot3(ax,ay,az,bx,by,bz)
  %7873 = call float @dx.op.unary.f32(i32 7, float %7871)  ; Saturate(value)
  %7874 = fmul fast float %7873, %7609
  %7875 = fmul fast float %7873, %7873
  %7876 = fmul fast float %7875, %5823
  %7877 = call float @dx.op.unary.f32(i32 7, float %7876)  ; Saturate(value)
  %7878 = fmul fast float %7874, %7877
  %7879 = bitcast float %7599 to i32
  %7880 = ashr i32 %7879, 1
  %7881 = sub nsw i32 1597463007, %7880
  %7882 = bitcast i32 %7881 to float
  %7883 = fmul fast float %7882, %7596
  %7884 = fmul fast float %7882, %7597
  %7885 = fmul fast float %7882, %7598
  %7886 = fsub fast float %7883, %5795
  %7887 = fsub fast float %7884, %5794
  %7888 = fsub fast float %7885, %5793
  %7889 = call float @dx.op.dot3.f32(i32 55, float %7886, float %7887, float %7888, float %7886, float %7887, float %7888)  ; Dot3(ax,ay,az,bx,by,bz)
  %7890 = call float @dx.op.unary.f32(i32 25, float %7889)  ; Rsqrt(value)
  %7891 = fmul fast float %7886, %7890
  %7892 = fmul fast float %7887, %7890
  %7893 = fmul fast float %7888, %7890
  %7894 = call float @dx.op.dot3.f32(i32 55, float %5802, float %5803, float %5804, float %7891, float %7892, float %7893)  ; Dot3(ax,ay,az,bx,by,bz)
  %7895 = fmul fast float %7894, %7894
  %7896 = call float @dx.op.unary.f32(i32 6, float %7871)  ; FAbs(value)
  %7897 = call float @dx.op.binary.f32(i32 35, float %6206, float 0x3F847AE140000000)  ; FMax(a,b)
  %7898 = fmul fast float %7897, %7897
  %7899 = fmul fast float %7898, %7898
  %7900 = fsub fast float 1.000000e+00, %7899
  %7901 = fmul fast float %5810, %5810
  %7902 = fmul fast float %7901, %7900
  %7903 = fadd fast float %7902, %7899
  %7904 = bitcast float %7903 to i32
  %7905 = ashr i32 %7904, 1
  %7906 = add nsw i32 %7905, 532487669
  %7907 = bitcast i32 %7906 to float
  %7908 = fadd fast float %7907, %5810
  %7909 = fmul fast float %7899, %7895
  %7910 = fsub fast float 1.000000e+00, %7895
  %7911 = fadd fast float %7910, %7909
  %7912 = fmul fast float %7896, %7896
  %7913 = fmul fast float %7912, %7900
  %7914 = fadd fast float %7913, %7899
  %7915 = bitcast float %7914 to i32
  %7916 = ashr i32 %7915, 1
  %7917 = add nsw i32 %7916, 532487669
  %7918 = bitcast i32 %7917 to float
  %7919 = fadd fast float %7918, %7896
  %7920 = fmul fast float %7911, %7911
  %7921 = fmul fast float %7920, %7908
  %7922 = fmul fast float %7921, %7919
  %7923 = fdiv fast float 1.000000e+00, %7922
  %7924 = bitcast float %7899 to i32
  %7925 = sitofp i32 %7924 to float
  %7926 = fmul fast float %7925, 0x3FE7F73180000000
  %7927 = fadd fast float %7926, 0x41AFE27C40000000
  %7928 = fptosi float %7927 to i32
  %7929 = bitcast i32 %7928 to float
  %7930 = fmul fast float %7564, 0x3FD80E9D60000000
  %7931 = fmul fast float %7930, %7882
  %7932 = fadd fast float %7929, %7931
  %7933 = bitcast float %7932 to i32
  %7934 = sub nsw i32 2129859010, %7933
  %7935 = bitcast i32 %7934 to float
  %7936 = fmul fast float %7899, %7923
  %7937 = fmul fast float %7936, %7929
  %7938 = fmul fast float %7937, %7935
  %7939 = fmul fast float %6068, 0x3FF9999980000000
  %7940 = fsub fast float 5.000000e+00, %7939
  %7941 = call float @dx.op.unary.f32(i32 6, float %7872)  ; FAbs(value)
  %7942 = fsub fast float 1.000000e+00, %7941
  %7943 = fmul fast float %6068, 0x41D9660740000000
  %7944 = fadd fast float %7943, 0xC1EFBF8940000000
  %7945 = bitcast float %7942 to i32
  %7946 = sitofp i32 %7945 to float
  %7947 = fmul fast float %7946, %7940
  %7948 = fadd fast float %7944, %7947
  %7949 = fptosi float %7948 to i32
  %7950 = bitcast i32 %7949 to float
  %7951 = fsub fast float 1.000000e+00, %5799
  %7952 = fsub fast float 1.000000e+00, %5800
  %7953 = fsub fast float 1.000000e+00, %5808
  %7954 = fmul fast float %7950, %7951
  %7955 = fmul fast float %7950, %7952
  %7956 = fmul fast float %7950, %7953
  %7957 = fadd fast float %7954, %5799
  %7958 = fadd fast float %7955, %5800
  %7959 = fadd fast float %7956, %5808
  br i1 %6091, label %7960, label %7983

; <label>:7960                                    ; preds = %7843
  %7961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5164, float %7941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7962 = extractvalue %dx.types.ResRet.f32 %7961, 0
  %7963 = extractvalue %dx.types.ResRet.f32 %7961, 1
  %7964 = extractvalue %dx.types.ResRet.f32 %7961, 2
  %7965 = fadd fast float %7962, -5.000000e-01
  %7966 = fadd fast float %7963, -5.000000e-01
  %7967 = fadd fast float %7964, -5.000000e-01
  %7968 = fmul fast float %5799, 4.000000e+00
  %7969 = fmul fast float %7968, %7951
  %7970 = fmul fast float %7969, %7965
  %7971 = fmul fast float %5800, 4.000000e+00
  %7972 = fmul fast float %7971, %7952
  %7973 = fmul fast float %7972, %7966
  %7974 = fmul fast float %5808, 4.000000e+00
  %7975 = fmul fast float %7974, %7953
  %7976 = fmul fast float %7975, %7967
  %7977 = fadd fast float %7970, %7957
  %7978 = fadd fast float %7973, %7958
  %7979 = fadd fast float %7976, %7959
  %7980 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7981 = call float @dx.op.unary.f32(i32 7, float %7978)  ; Saturate(value)
  %7982 = call float @dx.op.unary.f32(i32 7, float %7979)  ; Saturate(value)
  br label %7983

; <label>:7983                                    ; preds = %7960, %7843
  %7984 = phi float [ %7980, %7960 ], [ %7957, %7843 ]
  %7985 = phi float [ %7981, %7960 ], [ %7958, %7843 ]
  %7986 = phi float [ %7982, %7960 ], [ %7959, %7843 ]
  %7987 = fmul fast float %7871, 9.843750e-01
  %7988 = fadd fast float %7987, 7.812500e-03
  %7989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7988, float %6072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7990 = extractvalue %dx.types.ResRet.f32 %7989, 0
  %7991 = extractvalue %dx.types.ResRet.f32 %7989, 1
  %7992 = extractvalue %dx.types.ResRet.f32 %7989, 2
  %7993 = extractvalue %dx.types.ResRet.f32 %7989, 3
  %7994 = fsub fast float %7992, %7990
  %7995 = fsub fast float %7993, %7991
  %7996 = fmul fast float %7994, %6078
  %7997 = fmul fast float %7995, %6078
  %7998 = fadd fast float %7996, %7990
  %7999 = fadd fast float %7997, %7991
  %8000 = fmul fast float %7998, %5799
  %8001 = fmul fast float %7998, %5800
  %8002 = fmul fast float %7998, %5808
  %8003 = fadd fast float %8000, %7999
  %8004 = fadd fast float %8001, %7999
  %8005 = fadd fast float %8002, %7999
  br i1 %6091, label %8006, label %8029

; <label>:8006                                    ; preds = %7983
  %8007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5164, float %7871, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8008 = extractvalue %dx.types.ResRet.f32 %8007, 0
  %8009 = extractvalue %dx.types.ResRet.f32 %8007, 1
  %8010 = extractvalue %dx.types.ResRet.f32 %8007, 2
  %8011 = fadd fast float %8008, -5.000000e-01
  %8012 = fadd fast float %8009, -5.000000e-01
  %8013 = fadd fast float %8010, -5.000000e-01
  %8014 = fmul fast float %5799, 4.000000e+00
  %8015 = fmul fast float %8014, %7951
  %8016 = fmul fast float %8015, %8011
  %8017 = fmul fast float %5800, 4.000000e+00
  %8018 = fmul fast float %8017, %7952
  %8019 = fmul fast float %8018, %8012
  %8020 = fmul fast float %5808, 4.000000e+00
  %8021 = fmul fast float %8020, %7953
  %8022 = fmul fast float %8021, %8013
  %8023 = fadd fast float %8016, %8003
  %8024 = fadd fast float %8019, %8004
  %8025 = fadd fast float %8022, %8005
  %8026 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  %8027 = call float @dx.op.unary.f32(i32 7, float %8024)  ; Saturate(value)
  %8028 = call float @dx.op.unary.f32(i32 7, float %8025)  ; Saturate(value)
  br label %8029

; <label>:8029                                    ; preds = %8006, %7983
  %8030 = phi float [ %8026, %8006 ], [ %8003, %7983 ]
  %8031 = phi float [ %8027, %8006 ], [ %8004, %7983 ]
  %8032 = phi float [ %8028, %8006 ], [ %8005, %7983 ]
  %8033 = call float @dx.op.binary.f32(i32 35, float %8031, float %8032)  ; FMax(a,b)
  %8034 = call float @dx.op.binary.f32(i32 35, float %8030, float %8033)  ; FMax(a,b)
  %8035 = fsub fast float 1.000000e+00, %8034
  %8036 = call float @dx.op.binary.f32(i32 35, float %7896, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8037 = fdiv fast float %4513, %8036
  %8038 = fmul fast float %6146, %8037
  %8039 = fmul fast float %6148, %8037
  %8040 = fmul fast float %6150, %8037
  %8041 = call float @dx.op.unary.f32(i32 21, float %8038)  ; Exp(value)
  %8042 = call float @dx.op.unary.f32(i32 21, float %8039)  ; Exp(value)
  %8043 = call float @dx.op.unary.f32(i32 21, float %8040)  ; Exp(value)
  %8044 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8045 = call float @dx.op.unary.f32(i32 7, float %8042)  ; Saturate(value)
  %8046 = call float @dx.op.unary.f32(i32 7, float %8043)  ; Saturate(value)
  %8047 = select i1 %6143, float %8044, float 0.000000e+00
  %8048 = select i1 %6144, float %8045, float 0.000000e+00
  %8049 = select i1 %6145, float %8046, float 0.000000e+00
  %8050 = fsub fast float -0.000000e+00, %5802
  %8051 = fsub fast float -0.000000e+00, %5803
  %8052 = fsub fast float -0.000000e+00, %5804
  %8053 = call float @dx.op.dot3.f32(i32 55, float %7602, float %7603, float %7604, float %8050, float %8051, float %8052)  ; Dot3(ax,ay,az,bx,by,bz)
  %8054 = call float @dx.op.unary.f32(i32 7, float %8053)  ; Saturate(value)
  %8055 = fmul fast float %8054, %7609
  %8056 = fmul fast float %8054, 9.843750e-01
  %8057 = fadd fast float %8056, 7.812500e-03
  %8058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %8057, float %6072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8059 = extractvalue %dx.types.ResRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.ResRet.f32 %8058, 1
  %8061 = extractvalue %dx.types.ResRet.f32 %8058, 2
  %8062 = extractvalue %dx.types.ResRet.f32 %8058, 3
  %8063 = fsub fast float %8061, %8059
  %8064 = fsub fast float %8062, %8060
  %8065 = fmul fast float %8063, %6078
  %8066 = fmul fast float %8064, %6078
  %8067 = fadd fast float %8065, %8059
  %8068 = fadd fast float %8066, %8060
  %8069 = fmul fast float %8067, %5799
  %8070 = fmul fast float %8067, %5800
  %8071 = fmul fast float %8067, %5808
  %8072 = fadd fast float %8069, %8068
  %8073 = fadd fast float %8070, %8068
  %8074 = fadd fast float %8071, %8068
  br i1 %6091, label %8075, label %8098

; <label>:8075                                    ; preds = %8029
  %8076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %5164, float %8054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8077 = extractvalue %dx.types.ResRet.f32 %8076, 0
  %8078 = extractvalue %dx.types.ResRet.f32 %8076, 1
  %8079 = extractvalue %dx.types.ResRet.f32 %8076, 2
  %8080 = fadd fast float %8077, -5.000000e-01
  %8081 = fadd fast float %8078, -5.000000e-01
  %8082 = fadd fast float %8079, -5.000000e-01
  %8083 = fmul fast float %5799, 4.000000e+00
  %8084 = fmul fast float %8083, %7951
  %8085 = fmul fast float %8084, %8080
  %8086 = fmul fast float %5800, 4.000000e+00
  %8087 = fmul fast float %8086, %7952
  %8088 = fmul fast float %8087, %8081
  %8089 = fmul fast float %5808, 4.000000e+00
  %8090 = fmul fast float %8089, %7953
  %8091 = fmul fast float %8090, %8082
  %8092 = fadd fast float %8085, %8072
  %8093 = fadd fast float %8088, %8073
  %8094 = fadd fast float %8091, %8074
  %8095 = call float @dx.op.unary.f32(i32 7, float %8092)  ; Saturate(value)
  %8096 = call float @dx.op.unary.f32(i32 7, float %8093)  ; Saturate(value)
  %8097 = call float @dx.op.unary.f32(i32 7, float %8094)  ; Saturate(value)
  br label %8098

; <label>:8098                                    ; preds = %8075, %8029
  %8099 = phi float [ %8095, %8075 ], [ %8072, %8029 ]
  %8100 = phi float [ %8096, %8075 ], [ %8073, %8029 ]
  %8101 = phi float [ %8097, %8075 ], [ %8074, %8029 ]
  %8102 = call float @dx.op.binary.f32(i32 35, float %8100, float %8101)  ; FMax(a,b)
  %8103 = call float @dx.op.binary.f32(i32 35, float %8099, float %8102)  ; FMax(a,b)
  %8104 = fsub fast float 1.000000e+00, %8103
  %8105 = fmul fast float %6206, %6211
  %8106 = fadd fast float %6213, %8105
  %8107 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  %8108 = fsub fast float %7883, %5816
  %8109 = fsub fast float %7884, %5817
  %8110 = fsub fast float %7885, %5818
  %8111 = call float @dx.op.dot3.f32(i32 55, float %8108, float %8109, float %8110, float %8108, float %8109, float %8110)  ; Dot3(ax,ay,az,bx,by,bz)
  %8112 = call float @dx.op.unary.f32(i32 25, float %8111)  ; Rsqrt(value)
  %8113 = fmul fast float %8108, %8112
  %8114 = fmul fast float %8109, %8112
  %8115 = fmul fast float %8110, %8112
  %8116 = call float @dx.op.dot3.f32(i32 55, float %8050, float %8051, float %8052, float %8113, float %8114, float %8115)  ; Dot3(ax,ay,az,bx,by,bz)
  %8117 = fmul fast float %8116, %8116
  %8118 = call float @dx.op.unary.f32(i32 6, float %8054)  ; FAbs(value)
  %8119 = call float @dx.op.binary.f32(i32 35, float %8107, float 0x3F847AE140000000)  ; FMax(a,b)
  %8120 = fmul fast float %8119, %8119
  %8121 = fmul fast float %8120, %8120
  %8122 = fsub fast float 1.000000e+00, %8121
  %8123 = fmul fast float %7901, %8122
  %8124 = fadd fast float %8123, %8121
  %8125 = bitcast float %8124 to i32
  %8126 = ashr i32 %8125, 1
  %8127 = add nsw i32 %8126, 532487669
  %8128 = bitcast i32 %8127 to float
  %8129 = fadd fast float %8128, %5810
  %8130 = fmul fast float %8121, %8117
  %8131 = fsub fast float 1.000000e+00, %8117
  %8132 = fadd fast float %8131, %8130
  %8133 = fmul fast float %8118, %8118
  %8134 = fmul fast float %8133, %8122
  %8135 = fadd fast float %8134, %8121
  %8136 = bitcast float %8135 to i32
  %8137 = ashr i32 %8136, 1
  %8138 = add nsw i32 %8137, 532487669
  %8139 = bitcast i32 %8138 to float
  %8140 = fadd fast float %8139, %8118
  %8141 = fmul fast float %8132, %8132
  %8142 = fmul fast float %8141, %8129
  %8143 = fmul fast float %8142, %8140
  %8144 = fdiv fast float 1.000000e+00, %8143
  %8145 = bitcast float %8121 to i32
  %8146 = sitofp i32 %8145 to float
  %8147 = fmul fast float %8146, 0x3FE7F73180000000
  %8148 = fadd fast float %8147, 0x41AFE27C40000000
  %8149 = fptosi float %8148 to i32
  %8150 = bitcast i32 %8149 to float
  %8151 = fadd fast float %8150, %7931
  %8152 = bitcast float %8151 to i32
  %8153 = sub nsw i32 2129859010, %8152
  %8154 = bitcast i32 %8153 to float
  %8155 = fmul fast float %8121, %8144
  %8156 = fmul fast float %8155, %8150
  %8157 = fmul fast float %8156, %8154
  br i1 %7594, label %8158, label %8168

; <label>:8158                                    ; preds = %8098
  %8159 = fmul fast float %8055, %8047
  %8160 = fmul fast float %8055, %8048
  %8161 = fmul fast float %8055, %8049
  %8162 = fmul fast float %8159, %8104
  %8163 = fmul fast float %8162, %8157
  %8164 = fmul fast float %8160, %8104
  %8165 = fmul fast float %8164, %8157
  %8166 = fmul fast float %8161, %8104
  %8167 = fmul fast float %8166, %8157
  br label %8168

; <label>:8168                                    ; preds = %8158, %8098
  %8169 = phi float [ %8163, %8158 ], [ 0.000000e+00, %8098 ]
  %8170 = phi float [ %8165, %8158 ], [ 0.000000e+00, %8098 ]
  %8171 = phi float [ %8167, %8158 ], [ 0.000000e+00, %8098 ]
  %8172 = fmul fast float %7984, %7938
  %8173 = fmul fast float %7985, %7938
  %8174 = fmul fast float %7986, %7938
  %8175 = fsub fast float 1.000000e+00, %7872
  %8176 = bitcast float %8175 to i32
  %8177 = sitofp i32 %8176 to float
  %8178 = fmul fast float %8177, 5.000000e+00
  %8179 = fadd fast float %8178, 0xC1EFBF8940000000
  %8180 = fptosi float %8179 to i32
  %8181 = bitcast i32 %8180 to float
  %8182 = fmul fast float %8181, %5165
  %8183 = fmul fast float %8035, %8182
  %8184 = fmul fast float %8183, %6138
  %8185 = fmul fast float %8183, %6139
  %8186 = fmul fast float %8183, %6140
  %8187 = fadd fast float %8184, %8172
  %8188 = fadd fast float %8185, %8173
  %8189 = fadd fast float %8186, %8174
  %8190 = fmul fast float %8187, %7878
  %8191 = fmul fast float %8188, %7878
  %8192 = fmul fast float %8189, %7878
  %8193 = fadd fast float %8190, %8169
  %8194 = fadd fast float %8191, %8170
  %8195 = fadd fast float %8192, %8171
  %8196 = fmul fast float %7860, %5161
  %8197 = fmul fast float %8196, %7878
  %8198 = fmul fast float %8197, %8035
  %8199 = fmul fast float %7861, %5161
  %8200 = fmul fast float %8199, %7878
  %8201 = fmul fast float %8200, %8035
  %8202 = fmul fast float %7862, %5161
  %8203 = fmul fast float %8202, %7878
  %8204 = fmul fast float %8203, %8035
  %8205 = fadd fast float %8198, %7538
  %8206 = fadd fast float %8201, %7539
  %8207 = fadd fast float %8204, %7540
  %8208 = fmul fast float %8196, %8193
  %8209 = fmul fast float %8199, %8194
  %8210 = fmul fast float %8202, %8195
  %8211 = fadd fast float %8208, %7535
  %8212 = fadd fast float %8209, %7536
  %8213 = fadd fast float %8210, %7537
  br label %7668

; <label>:8214                                    ; preds = %7668
  br label %8215

; <label>:8215                                    ; preds = %8214, %7501
  %8216 = phi float [ %7503, %7501 ], [ %7669, %8214 ]
  %8217 = phi float [ %7504, %7501 ], [ %7670, %8214 ]
  %8218 = phi float [ %7505, %7501 ], [ %7671, %8214 ]
  %8219 = phi float [ %7506, %7501 ], [ %7672, %8214 ]
  %8220 = phi float [ %7507, %7501 ], [ %7673, %8214 ]
  %8221 = phi float [ %7508, %7501 ], [ %7674, %8214 ]
  %8222 = add i32 %7502, 1
  %8223 = icmp ugt i32 %8222, %7498
  br i1 %8223, label %8224, label %7501

; <label>:8224                                    ; preds = %8215
  br label %8225

; <label>:8225                                    ; preds = %8224, %7451, %7441
  %8226 = phi float [ %7442, %7441 ], [ %7442, %7451 ], [ %8216, %8224 ]
  %8227 = phi float [ %7443, %7441 ], [ %7443, %7451 ], [ %8217, %8224 ]
  %8228 = phi float [ %7444, %7441 ], [ %7444, %7451 ], [ %8218, %8224 ]
  %8229 = phi float [ %7445, %7441 ], [ %7445, %7451 ], [ %8219, %8224 ]
  %8230 = phi float [ %7446, %7441 ], [ %7446, %7451 ], [ %8220, %8224 ]
  %8231 = phi float [ %7447, %7441 ], [ %7447, %7451 ], [ %8221, %8224 ]
  %8232 = fmul fast float %6167, %5161
  %8233 = fmul fast float %6168, %5161
  %8234 = fmul fast float %6169, %5161
  %8235 = fadd fast float %8232, 1.000000e+00
  %8236 = fadd fast float %8233, 1.000000e+00
  %8237 = fadd fast float %8234, 1.000000e+00
  %8238 = call float @dx.op.dot3.f32(i32 55, float %8235, float %8236, float %8237, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8239 = fsub fast float 1.000000e+00, %8238
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 0
  %8242 = fmul fast float %8241, %6173
  %8243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.f32 %8243, 3
  %8245 = fsub fast float 1.000000e+00, %5169
  %8246 = call float @dx.op.unary.f32(i32 7, float %8245)  ; Saturate(value)
  %8247 = fadd fast float %8231, %5167
  %8248 = fmul fast float %8247, %5169
  %8249 = fmul fast float %8246, %8244
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 3
  %8252 = fmul fast float %8229, %5796
  %8253 = fmul fast float %8230, %5797
  %8254 = fmul fast float %8231, %5798
  %8255 = fcmp fast ogt float %93, %183
  %8256 = and i1 %8255, %5601
  %8257 = or i1 %5607, %8256
  %8258 = icmp eq i32 %5600, 2
  %8259 = fcmp fast ole float %93, %183
  %8260 = and i1 %8259, %8258
  %8261 = or i1 %8260, %8257
  br i1 %8256, label %8262, label %8519

; <label>:8262                                    ; preds = %8225
  %8263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8263, 2
  %8265 = extractvalue %dx.types.CBufRet.f32 %8263, 3
  %8266 = fmul fast float %8264, %102
  %8267 = fmul fast float %8265, %103
  %8268 = call float @dx.op.unary.f32(i32 7, float %8266)  ; Saturate(value)
  %8269 = call float @dx.op.unary.f32(i32 7, float %8267)  ; Saturate(value)
  %8270 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8268, float %8269, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8271 = extractvalue %dx.types.ResRet.f32 %8270, 0
  %8272 = extractvalue %dx.types.ResRet.f32 %8270, 1
  %8273 = extractvalue %dx.types.ResRet.f32 %8270, 2
  %8274 = extractvalue %dx.types.ResRet.f32 %8270, 3
  %8275 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8268, float %8269, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8276 = extractvalue %dx.types.ResRet.f32 %8275, 0
  %8277 = extractvalue %dx.types.ResRet.f32 %8275, 1
  %8278 = extractvalue %dx.types.ResRet.f32 %8275, 2
  %8279 = extractvalue %dx.types.ResRet.f32 %8275, 3
  %8280 = call float @dx.op.binary.f32(i32 35, float %8272, float %8273)  ; FMax(a,b)
  %8281 = call float @dx.op.binary.f32(i32 35, float %8271, float %8280)  ; FMax(a,b)
  %8282 = call float @dx.op.binary.f32(i32 35, float %8281, float %8274)  ; FMax(a,b)
  %8283 = call float @dx.op.binary.f32(i32 36, float %8277, float %8278)  ; FMin(a,b)
  %8284 = call float @dx.op.binary.f32(i32 36, float %8276, float %8283)  ; FMin(a,b)
  %8285 = call float @dx.op.binary.f32(i32 36, float %8284, float %8279)  ; FMin(a,b)
  %8286 = fmul fast float %8282, 2.550000e+02
  %8287 = fadd fast float %8286, 0x3F70101020000000
  %8288 = fptoui float %8287 to i32
  %8289 = fmul fast float %8285, 2.550000e+02
  %8290 = fadd fast float %8289, 0x3F70101020000000
  %8291 = fptoui float %8290 to i32
  %8292 = icmp ult i32 %8288, %8291
  br i1 %8292, label %8293, label %8461

; <label>:8293                                    ; preds = %8262
  %8294 = fcmp fast ogt float %92, 9.843750e-01
  %8295 = fadd fast float %93, -4.000000e+00
  %8296 = select i1 %8294, float -4.000000e+00, float %8295
  %8297 = call float @dx.op.binary.f32(i32 35, float %8296, float 0.000000e+00)  ; FMax(a,b)
  %8298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8299 = extractvalue %dx.types.CBufRet.f32 %8298, 0
  %8300 = fadd fast float %8299, %8297
  %8301 = extractvalue %dx.types.CBufRet.f32 %8298, 2
  %8302 = fmul fast float %8300, %8301
  %8303 = call float @dx.op.unary.f32(i32 23, float %8302)  ; Log(value)
  %8304 = extractvalue %dx.types.CBufRet.f32 %8298, 3
  %8305 = fmul fast float %8304, %8303
  %8306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8307 = extractvalue %dx.types.CBufRet.f32 %8306, 2
  %8308 = fmul fast float %8305, %8307
  %8309 = call float @dx.op.unary.f32(i32 7, float %8308)  ; Saturate(value)
  %8310 = uitofp i32 %8288 to float
  %8311 = uitofp i32 %8291 to float
  %8312 = fadd fast float %8310, 5.000000e-01
  %8313 = fadd fast float %8311, 5.000000e-01
  %8314 = fmul fast float %8307, %8312
  %8315 = fmul fast float %8307, %8313
  %8316 = fadd fast float %8314, 0x3F0FFB4800000000
  %8317 = fadd fast float %8315, 0xBF0FFB4800000000
  %8318 = call float @dx.op.binary.f32(i32 35, float %8309, float %8316)  ; FMax(a,b)
  %8319 = call float @dx.op.binary.f32(i32 36, float %8318, float %8317)  ; FMin(a,b)
  %8320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8321 = extractvalue %dx.types.CBufRet.f32 %8320, 1
  %8322 = extractvalue %dx.types.CBufRet.f32 %8320, 2
  %8323 = extractvalue %dx.types.CBufRet.f32 %8320, 0
  %8324 = fmul fast float %8321, %8319
  %8325 = fadd fast float %8323, %8324
  %8326 = fadd fast float %8323, %8322
  %8327 = fsub fast float %8321, %8322
  %8328 = fadd fast float %8327, %8323
  %8329 = call float @dx.op.binary.f32(i32 35, float %8325, float %8326)  ; FMax(a,b)
  %8330 = call float @dx.op.binary.f32(i32 36, float %8329, float %8328)  ; FMin(a,b)
  %8331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8268, float %8269, float %8330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8332 = extractvalue %dx.types.ResRet.f32 %8331, 0
  %8333 = extractvalue %dx.types.ResRet.f32 %8331, 1
  %8334 = extractvalue %dx.types.ResRet.f32 %8331, 2
  %8335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8336 = extractvalue %dx.types.CBufRet.i32 %8335, 0
  %8337 = extractvalue %dx.types.CBufRet.i32 %8335, 1
  %8338 = uitofp i32 %8336 to float
  %8339 = uitofp i32 %8337 to float
  %8340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8341 = extractvalue %dx.types.CBufRet.f32 %8340, 0
  %8342 = extractvalue %dx.types.CBufRet.f32 %8340, 1
  %8343 = fmul fast float %8338, %8268
  %8344 = fmul fast float %8339, %8269
  %8345 = fadd fast float %8343, -5.000000e-01
  %8346 = fadd fast float %8344, -5.000000e-01
  %8347 = call float @dx.op.unary.f32(i32 22, float %8345)  ; Frc(value)
  %8348 = call float @dx.op.unary.f32(i32 22, float %8346)  ; Frc(value)
  %8349 = fmul fast float %8347, %8347
  %8350 = fmul fast float %8349, %8347
  %8351 = fsub fast float 3.000000e+00, %8347
  %8352 = fmul fast float %8349, %8351
  %8353 = fmul fast float %8347, 3.000000e+00
  %8354 = fmul fast float %8350, 3.000000e+00
  %8355 = fmul fast float %8349, 6.000000e+00
  %8356 = fsub fast float %8354, %8355
  %8357 = fadd fast float %8356, 4.000000e+00
  %8358 = fmul fast float %8357, 0x3FC5555560000000
  %8359 = fmul fast float %8350, -3.000000e+00
  %8360 = fadd fast float %8349, %8347
  %8361 = fmul fast float %8360, 3.000000e+00
  %8362 = fadd fast float %8359, 1.000000e+00
  %8363 = fadd fast float %8362, %8361
  %8364 = fmul fast float %8350, 0x3FC5555560000000
  %8365 = fmul fast float %8348, %8348
  %8366 = fmul fast float %8365, %8348
  %8367 = fsub fast float 3.000000e+00, %8348
  %8368 = fmul fast float %8365, %8367
  %8369 = fmul fast float %8348, 3.000000e+00
  %8370 = fmul fast float %8366, 3.000000e+00
  %8371 = fmul fast float %8365, 6.000000e+00
  %8372 = fsub fast float %8370, %8371
  %8373 = fadd fast float %8372, 4.000000e+00
  %8374 = fmul fast float %8373, 0x3FC5555560000000
  %8375 = fmul fast float %8366, -3.000000e+00
  %8376 = fadd fast float %8365, %8348
  %8377 = fmul fast float %8376, 3.000000e+00
  %8378 = fadd fast float %8375, 1.000000e+00
  %8379 = fadd fast float %8378, %8377
  %8380 = fmul fast float %8366, 0x3FC5555560000000
  %8381 = fadd fast float %8347, 1.000000e+00
  %8382 = fsub fast float 1.000000e+00, %8353
  %8383 = fadd fast float %8382, %8352
  %8384 = fadd fast float %8383, %8357
  %8385 = fmul fast float %8384, 0x3FC5555560000000
  %8386 = fdiv fast float %8358, %8385
  %8387 = fsub fast float %8381, %8386
  %8388 = fsub fast float 1.000000e+00, %8347
  %8389 = fadd fast float %8363, %8350
  %8390 = fmul fast float %8389, 0x3FC5555560000000
  %8391 = fdiv fast float %8364, %8390
  %8392 = fadd fast float %8388, %8391
  %8393 = fadd fast float %8348, 1.000000e+00
  %8394 = fsub fast float 1.000000e+00, %8369
  %8395 = fadd fast float %8394, %8368
  %8396 = fadd fast float %8395, %8373
  %8397 = fmul fast float %8396, 0x3FC5555560000000
  %8398 = fdiv fast float %8374, %8397
  %8399 = fsub fast float %8393, %8398
  %8400 = fsub fast float 1.000000e+00, %8348
  %8401 = fadd fast float %8379, %8366
  %8402 = fmul fast float %8401, 0x3FC5555560000000
  %8403 = fdiv fast float %8380, %8402
  %8404 = fadd fast float %8403, %8400
  %8405 = fmul fast float %8387, %8341
  %8406 = fsub fast float %8268, %8405
  %8407 = fmul fast float %8392, %8341
  %8408 = fadd fast float %8407, %8268
  %8409 = fmul fast float %8404, %8342
  %8410 = fadd fast float %8409, %8269
  %8411 = fmul fast float %8399, %8342
  %8412 = fsub fast float %8269, %8411
  %8413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8406, float %8412, float %8330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8414 = extractvalue %dx.types.ResRet.f32 %8413, 0
  %8415 = extractvalue %dx.types.ResRet.f32 %8413, 1
  %8416 = extractvalue %dx.types.ResRet.f32 %8413, 2
  %8417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8408, float %8412, float %8330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8418 = extractvalue %dx.types.ResRet.f32 %8417, 0
  %8419 = extractvalue %dx.types.ResRet.f32 %8417, 1
  %8420 = extractvalue %dx.types.ResRet.f32 %8417, 2
  %8421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8406, float %8410, float %8330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8422 = extractvalue %dx.types.ResRet.f32 %8421, 0
  %8423 = extractvalue %dx.types.ResRet.f32 %8421, 1
  %8424 = extractvalue %dx.types.ResRet.f32 %8421, 2
  %8425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8408, float %8410, float %8330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8426 = extractvalue %dx.types.ResRet.f32 %8425, 0
  %8427 = extractvalue %dx.types.ResRet.f32 %8425, 1
  %8428 = extractvalue %dx.types.ResRet.f32 %8425, 2
  %8429 = fsub fast float %8422, %8414
  %8430 = fsub fast float %8423, %8415
  %8431 = fsub fast float %8424, %8416
  %8432 = fmul fast float %8429, %8402
  %8433 = fmul fast float %8430, %8402
  %8434 = fmul fast float %8431, %8402
  %8435 = fadd fast float %8432, %8414
  %8436 = fadd fast float %8433, %8415
  %8437 = fadd fast float %8434, %8416
  %8438 = fsub fast float %8426, %8418
  %8439 = fsub fast float %8427, %8419
  %8440 = fsub fast float %8428, %8420
  %8441 = fmul fast float %8438, %8402
  %8442 = fmul fast float %8439, %8402
  %8443 = fmul fast float %8440, %8402
  %8444 = fsub fast float %8418, %8435
  %8445 = fadd fast float %8444, %8441
  %8446 = fsub fast float %8419, %8436
  %8447 = fadd fast float %8446, %8442
  %8448 = fsub fast float %8420, %8437
  %8449 = fadd fast float %8448, %8443
  %8450 = fmul fast float %8445, %8390
  %8451 = fmul fast float %8447, %8390
  %8452 = fmul fast float %8449, %8390
  %8453 = fadd fast float %8450, %8435
  %8454 = fadd fast float %8451, %8436
  %8455 = fadd fast float %8452, %8437
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 1
  %8458 = fmul fast float %8453, %8457
  %8459 = fmul fast float %8454, %8457
  %8460 = fmul fast float %8455, %8457
  br label %8461

; <label>:8461                                    ; preds = %8293, %8262
  %8462 = phi float [ %8332, %8293 ], [ 1.000000e+00, %8262 ]
  %8463 = phi float [ %8333, %8293 ], [ 1.000000e+00, %8262 ]
  %8464 = phi float [ %8334, %8293 ], [ 1.000000e+00, %8262 ]
  %8465 = phi float [ %8458, %8293 ], [ 0.000000e+00, %8262 ]
  %8466 = phi float [ %8459, %8293 ], [ 0.000000e+00, %8262 ]
  %8467 = phi float [ %8460, %8293 ], [ 0.000000e+00, %8262 ]
  %8468 = fmul fast float %8465, %8239
  %8469 = fmul fast float %8466, %8239
  %8470 = fmul fast float %8467, %8239
  %8471 = call float @dx.op.dot3.f32(i32 55, float %8462, float %8463, float %8464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8472 = call float @dx.op.dot3.f32(i32 55, float %8468, float %8469, float %8470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8473 = select i1 %223, float %8471, float %8462
  %8474 = select i1 %223, float %8471, float %8463
  %8475 = select i1 %223, float 1.000000e+00, float %8464
  %8476 = select i1 %223, float %8472, float %8468
  %8477 = select i1 %223, float 0.000000e+00, float %8469
  %8478 = select i1 %223, float 0.000000e+00, float %8470
  %8479 = fmul fast float %8473, %8252
  %8480 = fmul fast float %8474, %8253
  %8481 = fmul fast float %8475, %8254
  %8482 = fadd fast float %8479, %8476
  %8483 = fadd fast float %8480, %8477
  %8484 = fadd fast float %8478, %8481
  %8485 = fmul fast float %8473, %8226
  %8486 = fmul fast float %8474, %8227
  %8487 = fmul fast float %8475, %8228
  %8488 = fmul fast float %131, %8264
  %8489 = fmul fast float %133, %8265
  %8490 = fsub fast float 1.000000e+00, %8488
  %8491 = fsub fast float 1.000000e+00, %8489
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8495 = extractvalue %dx.types.CBufRet.f32 %8492, 2
  %8496 = fmul fast float %8490, %8493
  %8497 = fmul fast float %8490, %8494
  %8498 = fmul fast float %8490, %8495
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8502 = extractvalue %dx.types.CBufRet.f32 %8499, 2
  %8503 = fmul fast float %8491, %8500
  %8504 = fmul fast float %8491, %8501
  %8505 = fmul fast float %8491, %8502
  %8506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8507 = extractvalue %dx.types.CBufRet.f32 %8506, 0
  %8508 = extractvalue %dx.types.CBufRet.f32 %8506, 1
  %8509 = extractvalue %dx.types.CBufRet.f32 %8506, 2
  %8510 = fadd fast float %8503, %8507
  %8511 = fadd fast float %8510, %8496
  %8512 = fadd fast float %8504, %8508
  %8513 = fadd fast float %8512, %8497
  %8514 = fadd fast float %8505, %8509
  %8515 = fadd fast float %8514, %8498
  %8516 = fmul fast float %8511, %183
  %8517 = fmul fast float %8513, %183
  %8518 = fmul fast float %8515, %183
  br label %8519

; <label>:8519                                    ; preds = %8461, %8225
  %8520 = phi float [ %8516, %8461 ], [ %161, %8225 ]
  %8521 = phi float [ %8517, %8461 ], [ %162, %8225 ]
  %8522 = phi float [ %8518, %8461 ], [ %163, %8225 ]
  %8523 = phi float [ %183, %8461 ], [ %93, %8225 ]
  %8524 = phi float [ %8482, %8461 ], [ %8252, %8225 ]
  %8525 = phi float [ %8483, %8461 ], [ %8253, %8225 ]
  %8526 = phi float [ %8484, %8461 ], [ %8254, %8225 ]
  %8527 = phi float [ %8485, %8461 ], [ %8226, %8225 ]
  %8528 = phi float [ %8486, %8461 ], [ %8227, %8225 ]
  %8529 = phi float [ %8487, %8461 ], [ %8228, %8225 ]
  %8530 = phi float [ %8462, %8461 ], [ 1.000000e+00, %8225 ]
  br i1 %8261, label %9685, label %8531

; <label>:8531                                    ; preds = %8519
  %8532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8533 = extractvalue %dx.types.CBufRet.f32 %8532, 0
  %8534 = extractvalue %dx.types.CBufRet.f32 %8532, 1
  %8535 = extractvalue %dx.types.CBufRet.f32 %8532, 2
  %8536 = extractvalue %dx.types.CBufRet.f32 %8532, 3
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 0
  %8539 = extractvalue %dx.types.CBufRet.f32 %8537, 1
  %8540 = extractvalue %dx.types.CBufRet.f32 %8537, 2
  %8541 = extractvalue %dx.types.CBufRet.f32 %8537, 3
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.CBufRet.f32 %8542, 1
  %8545 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8546 = extractvalue %dx.types.CBufRet.f32 %8542, 3
  %8547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8548 = extractvalue %dx.types.CBufRet.f32 %8547, 0
  %8549 = extractvalue %dx.types.CBufRet.f32 %8547, 1
  %8550 = extractvalue %dx.types.CBufRet.f32 %8547, 2
  %8551 = extractvalue %dx.types.CBufRet.f32 %8547, 3
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 3
  %8554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8555 = extractvalue %dx.types.CBufRet.f32 %8554, 3
  %8556 = extractvalue %dx.types.CBufRet.f32 %8554, 0
  %8557 = extractvalue %dx.types.CBufRet.f32 %8554, 1
  %8558 = extractvalue %dx.types.CBufRet.f32 %8554, 2
  %8559 = fcmp fast olt float %8558, -5.000000e-01
  %8560 = call float @dx.op.dot3.f32(i32 55, float %8520, float %8521, float %8522, float %8520, float %8521, float %8522)  ; Dot3(ax,ay,az,bx,by,bz)
  %8561 = call float @dx.op.unary.f32(i32 25, float %8560)  ; Rsqrt(value)
  %8562 = fmul fast float %8561, %8560
  %8563 = fmul fast float %8561, %8520
  %8564 = fmul fast float %8561, %8521
  %8565 = fmul fast float %8561, %8522
  %8566 = fadd fast float %8562, %8536
  %8567 = call float @dx.op.dot3.f32(i32 55, float %8563, float %8564, float %8565, float %8533, float %8534, float %8535)  ; Dot3(ax,ay,az,bx,by,bz)
  %8568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.i32 %8568, 1
  %8570 = and i32 %8569, 1
  %8571 = icmp ne i32 %8570, 0
  %8572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8573 = extractvalue %dx.types.CBufRet.f32 %8572, 2
  %8574 = fcmp fast ogt float %8573, 0.000000e+00
  %8575 = and i1 %8571, %8574
  br i1 %8575, label %8576, label %8982, !dx.controlflow.hints !122

; <label>:8576                                    ; preds = %8531
  %8577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8578 = extractvalue %dx.types.CBufRet.f32 %8577, 3
  %8579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8579, 2
  %8581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8582 = extractvalue %dx.types.CBufRet.f32 %8581, 2
  %8583 = fsub fast float %8580, %8582
  %8584 = and i32 %8569, 2
  %8585 = extractvalue %dx.types.CBufRet.i32 %8568, 0
  %8586 = call i32 @dx.op.binary.i32(i32 40, i32 %8585, i32 3)  ; UMin(a,b)
  %8587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8588 = extractvalue %dx.types.CBufRet.f32 %8587, 0
  %8589 = extractvalue %dx.types.CBufRet.f32 %8587, 1
  %8590 = extractvalue %dx.types.CBufRet.f32 %8581, 0
  %8591 = extractvalue %dx.types.CBufRet.f32 %8581, 1
  %8592 = fsub fast float %8588, %8590
  %8593 = fsub fast float %8589, %8591
  %8594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8595 = extractvalue %dx.types.CBufRet.f32 %8594, 0
  %8596 = fcmp fast ogt float %8595, 0.000000e+00
  %8597 = fsub fast float -0.000000e+00, %8592
  %8598 = fsub fast float -0.000000e+00, %8593
  %8599 = call float @dx.op.dot2.f32(i32 54, float %8563, float %8564, float %8563, float %8564)  ; Dot2(ax,ay,bx,by)
  %8600 = call float @dx.op.dot2.f32(i32 54, float %8563, float %8564, float %8597, float %8598)  ; Dot2(ax,ay,bx,by)
  %8601 = fmul fast float %8600, 2.000000e+00
  %8602 = call float @dx.op.dot2.f32(i32 54, float %8597, float %8598, float %8597, float %8598)  ; Dot2(ax,ay,bx,by)
  %8603 = fmul fast float %8595, %8595
  %8604 = fsub fast float %8602, %8603
  %8605 = fmul fast float %8601, %8601
  %8606 = fmul fast float %8599, 4.000000e+00
  %8607 = fmul fast float %8606, %8604
  %8608 = fsub fast float %8605, %8607
  %8609 = fcmp fast ogt float %8608, 0.000000e+00
  br i1 %8609, label %8610, label %8625

; <label>:8610                                    ; preds = %8576
  %8611 = fcmp fast ogt float %8601, 0.000000e+00
  %8612 = call float @dx.op.unary.f32(i32 24, float %8608)  ; Sqrt(value)
  %8613 = fsub fast float -0.000000e+00, %8612
  %8614 = select i1 %8611, float %8612, float %8613
  %8615 = fadd fast float %8614, %8601
  %8616 = fmul float %8615, -5.000000e-01
  %8617 = fdiv fast float %8616, %8599
  %8618 = call float @dx.op.binary.f32(i32 35, float %8617, float 0.000000e+00)  ; FMax(a,b)
  %8619 = call float @dx.op.binary.f32(i32 36, float %8562, float %8618)  ; FMin(a,b)
  %8620 = fdiv fast float %8604, %8616
  %8621 = call float @dx.op.binary.f32(i32 35, float %8620, float 0.000000e+00)  ; FMax(a,b)
  %8622 = call float @dx.op.binary.f32(i32 36, float %8562, float %8621)  ; FMin(a,b)
  %8623 = call float @dx.op.binary.f32(i32 36, float %8619, float %8622)  ; FMin(a,b)
  %8624 = call float @dx.op.binary.f32(i32 35, float %8619, float %8622)  ; FMax(a,b)
  br label %8625

; <label>:8625                                    ; preds = %8610, %8576
  %8626 = phi float [ %8624, %8610 ], [ -1.000000e+00, %8576 ]
  %8627 = phi float [ %8623, %8610 ], [ -1.000000e+00, %8576 ]
  %8628 = phi i1 [ true, %8610 ], [ false, %8576 ]
  %8629 = and i1 %8596, %8628
  br i1 %8629, label %8630, label %8632

; <label>:8630                                    ; preds = %8625
  %8631 = fcmp fast oeq float %8627, %8626
  br i1 %8631, label %8935, label %8633

; <label>:8632                                    ; preds = %8625
  br i1 %8596, label %8935, label %8633

; <label>:8633                                    ; preds = %8632, %8630
  %8634 = phi float [ %8562, %8632 ], [ %8626, %8630 ]
  %8635 = phi float [ 0.000000e+00, %8632 ], [ %8627, %8630 ]
  %8636 = icmp ne i32 %8584, 0
  %8637 = fmul fast float %8634, %8565
  %8638 = fadd fast float %8637, %8578
  %8639 = fmul fast float %8638, %8634
  %8640 = select i1 %8636, float 0.000000e+00, float %8639
  %8641 = fcmp fast oeq float %8565, 0.000000e+00
  %8642 = fdiv fast float %8583, %8565
  %8643 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8642)  ; FMax(a,b)
  %8644 = select i1 %8641, float %8634, float %8643
  %8645 = call float @dx.op.binary.f32(i32 36, float %8634, float %8644)  ; FMin(a,b)
  %8646 = fcmp fast ogt float %8565, 0.000000e+00
  %8647 = fcmp fast olt float %8583, 0.000000e+00
  br i1 %8646, label %8648, label %8705

; <label>:8648                                    ; preds = %8633
  %8649 = icmp eq i32 %8584, 0
  br i1 %8647, label %8650, label %8694

; <label>:8650                                    ; preds = %8648
  %8651 = select i1 %8649, float %8634, float 0.000000e+00
  %8652 = fsub fast float -0.000000e+00, %8651
  %8653 = call float @dx.op.unary.f32(i32 6, float %8652)  ; FAbs(value)
  %8654 = fmul fast float %8651, %8565
  %8655 = fadd fast float %8654, %8578
  %8656 = fmul fast float %8653, %8655
  %8657 = fsub fast float %8640, %8656
  %8658 = fsub fast float %8634, %8653
  %8659 = select i1 %8649, float %8658, float 0.000000e+00
  %8660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8661 = extractvalue %dx.types.CBufRet.f32 %8660, 0
  %8662 = extractvalue %dx.types.CBufRet.f32 %8660, 1
  %8663 = extractvalue %dx.types.CBufRet.f32 %8660, 2
  %8664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8665 = extractvalue %dx.types.CBufRet.f32 %8664, 0
  %8666 = extractvalue %dx.types.CBufRet.f32 %8664, 1
  %8667 = extractvalue %dx.types.CBufRet.f32 %8664, 2
  %8668 = extractvalue %dx.types.CBufRet.f32 %8664, 3
  %8669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8670 = extractvalue %dx.types.CBufRet.f32 %8669, 3
  %8671 = call float @dx.op.binary.f32(i32 36, float %8657, float %8670)  ; FMin(a,b)
  %8672 = fmul fast float %8668, %8659
  %8673 = call float @dx.op.unary.f32(i32 7, float %8672)  ; Saturate(value)
  %8674 = fsub fast float %8665, %8661
  %8675 = fsub fast float %8666, %8662
  %8676 = fsub fast float %8667, %8663
  %8677 = fmul fast float %8673, %8674
  %8678 = fmul fast float %8673, %8675
  %8679 = fmul fast float %8673, %8676
  %8680 = fadd fast float %8677, %8661
  %8681 = fadd fast float %8678, %8662
  %8682 = fadd fast float %8679, %8663
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 0
  %8685 = extractvalue %dx.types.CBufRet.f32 %8683, 1
  %8686 = fadd fast float %8685, %8684
  %8687 = call float @dx.op.unary.f32(i32 7, float %8686)  ; Saturate(value)
  %8688 = extractvalue %dx.types.CBufRet.f32 %8683, 2
  %8689 = extractvalue %dx.types.CBufRet.f32 %8683, 3
  %8690 = fadd fast float %8689, %8688
  %8691 = call float @dx.op.unary.f32(i32 7, float %8690)  ; Saturate(value)
  %8692 = fmul fast float %8687, %8671
  %8693 = fmul fast float %8692, %8691
  br label %8935

; <label>:8694                                    ; preds = %8648
  br i1 %8649, label %8695, label %8716

; <label>:8695                                    ; preds = %8694
  %8696 = call float @dx.op.binary.f32(i32 36, float %8645, float %8635)  ; FMin(a,b)
  %8697 = fsub fast float %8645, %8696
  %8698 = fsub fast float %8697, %8634
  %8699 = call float @dx.op.unary.f32(i32 6, float %8698)  ; FAbs(value)
  %8700 = fadd fast float %8697, %8634
  %8701 = fmul fast float %8700, %8565
  %8702 = fadd fast float %8701, %8578
  %8703 = fmul fast float %8702, %8699
  %8704 = fsub fast float %8640, %8703
  br label %8716

; <label>:8705                                    ; preds = %8633
  br i1 %8647, label %8706, label %8716

; <label>:8706                                    ; preds = %8705
  %8707 = call float @dx.op.binary.f32(i32 35, float %8635, float %8645)  ; FMax(a,b)
  %8708 = icmp eq i32 %8584, 0
  %8709 = select i1 %8708, float %8645, float 0.000000e+00
  %8710 = fsub fast float -0.000000e+00, %8709
  %8711 = call float @dx.op.unary.f32(i32 6, float %8710)  ; FAbs(value)
  %8712 = fmul fast float %8709, %8565
  %8713 = fadd fast float %8712, %8578
  %8714 = fmul fast float %8711, %8713
  %8715 = fsub fast float %8640, %8714
  br label %8716

; <label>:8716                                    ; preds = %8706, %8705, %8695, %8694
  %8717 = phi float [ %8635, %8694 ], [ %8635, %8695 ], [ %8707, %8706 ], [ %8635, %8705 ]
  %8718 = phi float [ 0.000000e+00, %8694 ], [ %8699, %8695 ], [ %8711, %8706 ], [ 0.000000e+00, %8705 ]
  %8719 = phi float [ %8640, %8694 ], [ %8704, %8695 ], [ %8715, %8706 ], [ %8640, %8705 ]
  %8720 = phi float [ %8645, %8694 ], [ %8645, %8695 ], [ %8634, %8706 ], [ %8634, %8705 ]
  %8721 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8721, align 4, !tbaa !123, !noalias !125
  %8722 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8722, align 4, !tbaa !123, !noalias !125
  %8723 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8723, align 4, !tbaa !123, !noalias !125
  %8724 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8724, align 4, !tbaa !123, !noalias !125
  %8725 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8725, align 4, !tbaa !123, !noalias !125
  %8726 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8726, align 4, !tbaa !123, !noalias !125
  %8727 = icmp sgt i32 %8586, 0
  br i1 %8727, label %8728, label %8789

; <label>:8728                                    ; preds = %8716
  br label %8729

; <label>:8729                                    ; preds = %8778, %8728
  %8730 = phi i32 [ %8779, %8778 ], [ 0, %8728 ]
  %8731 = phi i32 [ %8780, %8778 ], [ 0, %8728 ]
  %8732 = add nuw i32 %8731, 171
  %8733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8732)  ; CBufferLoadLegacy(handle,regIndex)
  %8734 = extractvalue %dx.types.CBufRet.f32 %8733, 0
  %8735 = extractvalue %dx.types.CBufRet.f32 %8733, 1
  %8736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8737 = extractvalue %dx.types.CBufRet.f32 %8736, 0
  %8738 = extractvalue %dx.types.CBufRet.f32 %8736, 1
  %8739 = fsub fast float %8734, %8737
  %8740 = fsub fast float %8735, %8738
  %8741 = extractvalue %dx.types.CBufRet.f32 %8733, 2
  %8742 = fsub fast float -0.000000e+00, %8739
  %8743 = fsub fast float -0.000000e+00, %8740
  %8744 = call float @dx.op.dot2.f32(i32 54, float %8563, float %8564, float %8742, float %8743)  ; Dot2(ax,ay,bx,by)
  %8745 = fmul fast float %8744, 2.000000e+00
  %8746 = call float @dx.op.dot2.f32(i32 54, float %8742, float %8743, float %8742, float %8743)  ; Dot2(ax,ay,bx,by)
  %8747 = fmul fast float %8741, %8741
  %8748 = fsub fast float %8746, %8747
  %8749 = fmul fast float %8745, %8745
  %8750 = fmul fast float %8606, %8748
  %8751 = fsub fast float %8749, %8750
  %8752 = fcmp fast ogt float %8751, 0.000000e+00
  br i1 %8752, label %8753, label %8768

; <label>:8753                                    ; preds = %8729
  %8754 = fcmp fast ogt float %8745, 0.000000e+00
  %8755 = call float @dx.op.unary.f32(i32 24, float %8751)  ; Sqrt(value)
  %8756 = fsub fast float -0.000000e+00, %8755
  %8757 = select i1 %8754, float %8755, float %8756
  %8758 = fadd fast float %8757, %8745
  %8759 = fmul float %8758, -5.000000e-01
  %8760 = fdiv fast float %8759, %8599
  %8761 = call float @dx.op.binary.f32(i32 35, float %8760, float 0.000000e+00)  ; FMax(a,b)
  %8762 = call float @dx.op.binary.f32(i32 36, float %8634, float %8761)  ; FMin(a,b)
  %8763 = fdiv fast float %8748, %8759
  %8764 = call float @dx.op.binary.f32(i32 35, float %8763, float 0.000000e+00)  ; FMax(a,b)
  %8765 = call float @dx.op.binary.f32(i32 36, float %8634, float %8764)  ; FMin(a,b)
  %8766 = call float @dx.op.binary.f32(i32 36, float %8762, float %8765)  ; FMin(a,b)
  %8767 = call float @dx.op.binary.f32(i32 35, float %8762, float %8765)  ; FMax(a,b)
  br label %8768

; <label>:8768                                    ; preds = %8753, %8729
  %8769 = phi float [ %8767, %8753 ], [ -1.000000e+00, %8729 ]
  %8770 = phi float [ %8766, %8753 ], [ -1.000000e+00, %8729 ]
  %8771 = phi i1 [ true, %8753 ], [ false, %8729 ]
  br i1 %8771, label %8772, label %8778

; <label>:8772                                    ; preds = %8768
  %8773 = call float @dx.op.binary.f32(i32 35, float %8717, float %8770)  ; FMax(a,b)
  %8774 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8731
  store float %8773, float* %8774, align 4, !tbaa !123, !noalias !125
  %8775 = call float @dx.op.binary.f32(i32 35, float %8717, float %8769)  ; FMax(a,b)
  %8776 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8731
  store float %8775, float* %8776, align 4, !tbaa !123, !noalias !125
  %8777 = add nsw i32 %8730, 1
  br label %8778

; <label>:8778                                    ; preds = %8772, %8768
  %8779 = phi i32 [ %8777, %8772 ], [ %8730, %8768 ]
  %8780 = add nuw nsw i32 %8731, 1
  %8781 = icmp eq i32 %8780, %8586
  br i1 %8781, label %8782, label %8729

; <label>:8782                                    ; preds = %8778
  %8783 = load float, float* %8723, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8784 = load float, float* %8722, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %8785 = load float, float* %8721, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %8786 = load float, float* %8726, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8787 = load float, float* %8725, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %8788 = load float, float* %8724, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %8789

; <label>:8789                                    ; preds = %8782, %8716
  %8790 = phi float [ -1.000000e+00, %8716 ], [ %8788, %8782 ]
  %8791 = phi float [ -1.000000e+00, %8716 ], [ %8787, %8782 ]
  %8792 = phi float [ -1.000000e+00, %8716 ], [ %8786, %8782 ]
  %8793 = phi float [ -1.000000e+00, %8716 ], [ %8785, %8782 ]
  %8794 = phi float [ -1.000000e+00, %8716 ], [ %8784, %8782 ]
  %8795 = phi float [ -1.000000e+00, %8716 ], [ %8783, %8782 ]
  %8796 = phi i32 [ 0, %8716 ], [ %8779, %8782 ]
  %8797 = call float @dx.op.binary.f32(i32 36, float %8794, float %8795)  ; FMin(a,b)
  %8798 = call float @dx.op.binary.f32(i32 36, float %8793, float %8797)  ; FMin(a,b)
  %8799 = call float @dx.op.binary.f32(i32 35, float %8793, float %8794)  ; FMax(a,b)
  %8800 = call float @dx.op.binary.f32(i32 36, float %8799, float %8795)  ; FMin(a,b)
  %8801 = call float @dx.op.binary.f32(i32 36, float %8793, float %8794)  ; FMin(a,b)
  %8802 = call float @dx.op.binary.f32(i32 35, float %8801, float %8800)  ; FMax(a,b)
  %8803 = call float @dx.op.binary.f32(i32 35, float %8794, float %8795)  ; FMax(a,b)
  %8804 = call float @dx.op.binary.f32(i32 35, float %8793, float %8803)  ; FMax(a,b)
  store float %8798, float* %8721, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %8802, float* %8722, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %8804, float* %8723, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8805 = call float @dx.op.binary.f32(i32 36, float %8791, float %8792)  ; FMin(a,b)
  %8806 = call float @dx.op.binary.f32(i32 36, float %8790, float %8805)  ; FMin(a,b)
  %8807 = call float @dx.op.binary.f32(i32 35, float %8790, float %8791)  ; FMax(a,b)
  %8808 = call float @dx.op.binary.f32(i32 36, float %8807, float %8792)  ; FMin(a,b)
  %8809 = call float @dx.op.binary.f32(i32 36, float %8790, float %8791)  ; FMin(a,b)
  %8810 = call float @dx.op.binary.f32(i32 35, float %8809, float %8808)  ; FMax(a,b)
  %8811 = call float @dx.op.binary.f32(i32 35, float %8791, float %8792)  ; FMax(a,b)
  %8812 = call float @dx.op.binary.f32(i32 35, float %8790, float %8811)  ; FMax(a,b)
  store float %8806, float* %8724, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %8810, float* %8725, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %8812, float* %8726, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8813 = sub nsw i32 3, %8796
  %8814 = icmp sgt i32 %8813, 2
  br i1 %8814, label %8815, label %8853

; <label>:8815                                    ; preds = %8789
  %8816 = icmp eq i32 %8584, 0
  %8817 = fsub fast float %8634, %8718
  %8818 = select i1 %8816, float %8817, float %8718
  %8819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8820 = extractvalue %dx.types.CBufRet.f32 %8819, 0
  %8821 = extractvalue %dx.types.CBufRet.f32 %8819, 1
  %8822 = extractvalue %dx.types.CBufRet.f32 %8819, 2
  %8823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8824 = extractvalue %dx.types.CBufRet.f32 %8823, 0
  %8825 = extractvalue %dx.types.CBufRet.f32 %8823, 1
  %8826 = extractvalue %dx.types.CBufRet.f32 %8823, 2
  %8827 = extractvalue %dx.types.CBufRet.f32 %8823, 3
  %8828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8829 = extractvalue %dx.types.CBufRet.f32 %8828, 3
  %8830 = call float @dx.op.binary.f32(i32 36, float %8719, float %8829)  ; FMin(a,b)
  %8831 = fmul fast float %8827, %8818
  %8832 = call float @dx.op.unary.f32(i32 7, float %8831)  ; Saturate(value)
  %8833 = fsub fast float %8824, %8820
  %8834 = fsub fast float %8825, %8821
  %8835 = fsub fast float %8826, %8822
  %8836 = fmul fast float %8832, %8833
  %8837 = fmul fast float %8832, %8834
  %8838 = fmul fast float %8832, %8835
  %8839 = fadd fast float %8836, %8820
  %8840 = fadd fast float %8837, %8821
  %8841 = fadd fast float %8838, %8822
  %8842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8843 = extractvalue %dx.types.CBufRet.f32 %8842, 0
  %8844 = extractvalue %dx.types.CBufRet.f32 %8842, 1
  %8845 = fadd fast float %8844, %8843
  %8846 = call float @dx.op.unary.f32(i32 7, float %8845)  ; Saturate(value)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8842, 2
  %8848 = extractvalue %dx.types.CBufRet.f32 %8842, 3
  %8849 = fadd fast float %8848, %8847
  %8850 = call float @dx.op.unary.f32(i32 7, float %8849)  ; Saturate(value)
  %8851 = fmul fast float %8846, %8830
  %8852 = fmul fast float %8851, %8850
  br label %8935

; <label>:8853                                    ; preds = %8789
  %8854 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8813
  %8855 = load float, float* %8854, align 4, !tbaa !123, !noalias !125
  %8856 = fcmp fast olt float %8855, %8720
  %8857 = icmp sgt i32 %8796, 0
  %8858 = and i1 %8857, %8856
  br i1 %8858, label %8859, label %8896

; <label>:8859                                    ; preds = %8853
  br label %8860

; <label>:8860                                    ; preds = %8889, %8859
  %8861 = phi float [ %8890, %8889 ], [ %8718, %8859 ]
  %8862 = phi float [ %8891, %8889 ], [ %8719, %8859 ]
  %8863 = phi float [ %8871, %8889 ], [ %8855, %8859 ]
  %8864 = phi i32 [ %8868, %8889 ], [ %8813, %8859 ]
  %8865 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8864
  %8866 = load float, float* %8865, align 4, !tbaa !123, !noalias !125
  %8867 = icmp slt i32 %8864, 2
  %8868 = add nsw i32 %8864, 1
  %8869 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8868
  %8870 = load float, float* %8869, align 4, !tbaa !123, !noalias !125
  %8871 = select i1 %8867, float %8870, float %8634
  %8872 = call float @dx.op.binary.f32(i32 36, float %8871, float %8866)  ; FMin(a,b)
  %8873 = call float @dx.op.binary.f32(i32 36, float %8720, float %8872)  ; FMin(a,b)
  %8874 = icmp eq i32 %8584, 0
  %8875 = fadd fast float %8873, %8863
  %8876 = fmul fast float %8875, %8565
  %8877 = fadd fast float %8876, %8578
  br i1 %8874, label %8883, label %8878

; <label>:8878                                    ; preds = %8860
  %8879 = fsub fast float %8873, %8863
  %8880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8879)  ; FMax(a,b)
  %8881 = fmul fast float %8880, %8877
  %8882 = fadd fast float %8881, %8862
  br label %8889

; <label>:8883                                    ; preds = %8860
  %8884 = fsub fast float %8863, %8873
  %8885 = call float @dx.op.unary.f32(i32 6, float %8884)  ; FAbs(value)
  %8886 = fadd fast float %8885, %8861
  %8887 = fmul fast float %8885, %8877
  %8888 = fsub fast float %8862, %8887
  br label %8889

; <label>:8889                                    ; preds = %8883, %8878
  %8890 = phi float [ %8880, %8878 ], [ %8886, %8883 ]
  %8891 = phi float [ %8882, %8878 ], [ %8888, %8883 ]
  %8892 = fcmp fast olt float %8871, %8720
  %8893 = icmp slt i32 %8868, 3
  %8894 = and i1 %8893, %8892
  br i1 %8894, label %8860, label %8895

; <label>:8895                                    ; preds = %8889
  br label %8896

; <label>:8896                                    ; preds = %8895, %8853
  %8897 = phi float [ %8718, %8853 ], [ %8890, %8895 ]
  %8898 = phi float [ %8719, %8853 ], [ %8891, %8895 ]
  %8899 = fsub fast float %8634, %8897
  %8900 = select i1 %8636, float %8897, float %8899
  %8901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8902 = extractvalue %dx.types.CBufRet.f32 %8901, 0
  %8903 = extractvalue %dx.types.CBufRet.f32 %8901, 1
  %8904 = extractvalue %dx.types.CBufRet.f32 %8901, 2
  %8905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8906 = extractvalue %dx.types.CBufRet.f32 %8905, 0
  %8907 = extractvalue %dx.types.CBufRet.f32 %8905, 1
  %8908 = extractvalue %dx.types.CBufRet.f32 %8905, 2
  %8909 = extractvalue %dx.types.CBufRet.f32 %8905, 3
  %8910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.f32 %8910, 3
  %8912 = call float @dx.op.binary.f32(i32 36, float %8898, float %8911)  ; FMin(a,b)
  %8913 = fmul fast float %8909, %8900
  %8914 = call float @dx.op.unary.f32(i32 7, float %8913)  ; Saturate(value)
  %8915 = fsub fast float %8906, %8902
  %8916 = fsub fast float %8907, %8903
  %8917 = fsub fast float %8908, %8904
  %8918 = fmul fast float %8914, %8915
  %8919 = fmul fast float %8914, %8916
  %8920 = fmul fast float %8914, %8917
  %8921 = fadd fast float %8918, %8902
  %8922 = fadd fast float %8919, %8903
  %8923 = fadd fast float %8920, %8904
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 0
  %8926 = extractvalue %dx.types.CBufRet.f32 %8924, 1
  %8927 = fadd fast float %8926, %8925
  %8928 = call float @dx.op.unary.f32(i32 7, float %8927)  ; Saturate(value)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8924, 2
  %8930 = extractvalue %dx.types.CBufRet.f32 %8924, 3
  %8931 = fadd fast float %8930, %8929
  %8932 = call float @dx.op.unary.f32(i32 7, float %8931)  ; Saturate(value)
  %8933 = fmul fast float %8928, %8912
  %8934 = fmul fast float %8933, %8932
  br label %8935

; <label>:8935                                    ; preds = %8896, %8815, %8650, %8632, %8630
  %8936 = phi float [ %8659, %8650 ], [ %8818, %8815 ], [ %8900, %8896 ], [ 0.000000e+00, %8630 ], [ 0.000000e+00, %8632 ]
  %8937 = phi float [ %8693, %8650 ], [ %8852, %8815 ], [ %8934, %8896 ], [ 0.000000e+00, %8630 ], [ 0.000000e+00, %8632 ]
  %8938 = phi float [ %8680, %8650 ], [ %8839, %8815 ], [ %8921, %8896 ], [ 0.000000e+00, %8630 ], [ 0.000000e+00, %8632 ]
  %8939 = phi float [ %8681, %8650 ], [ %8840, %8815 ], [ %8922, %8896 ], [ 0.000000e+00, %8630 ], [ 0.000000e+00, %8632 ]
  %8940 = phi float [ %8682, %8650 ], [ %8841, %8815 ], [ %8923, %8896 ], [ 0.000000e+00, %8630 ], [ 0.000000e+00, %8632 ]
  %8941 = fmul fast float %8573, %8937
  %8942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8943 = extractvalue %dx.types.CBufRet.f32 %8942, 2
  %8944 = fsub fast float %8580, %8943
  %8945 = fcmp fast olt float %8941, -2.000000e+01
  %8946 = call float @dx.op.unary.f32(i32 21, float %8941)  ; Exp(value)
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 2
  %8949 = extractvalue %dx.types.CBufRet.f32 %8947, 3
  %8950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8951 = extractvalue %dx.types.CBufRet.f32 %8950, 2
  %8952 = fmul fast float %8949, %8944
  %8953 = call float @dx.op.unary.f32(i32 7, float %8952)  ; Saturate(value)
  %8954 = fsub fast float 1.000000e+00, %8953
  %8955 = fmul fast float %8565, 5.000000e-01
  %8956 = fadd fast float %8955, 5.000000e-01
  %8957 = call float @dx.op.unary.f32(i32 7, float %8956)  ; Saturate(value)
  %8958 = fsub fast float 1.000000e+00, %8957
  %8959 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8954)  ; FMax(a,b)
  %8960 = fdiv fast float %8958, %8959
  %8961 = fsub fast float %8944, %8522
  %8962 = call float @dx.op.unary.f32(i32 6, float %8961)  ; FAbs(value)
  %8963 = fmul fast float %8962, %8948
  %8964 = call float @dx.op.unary.f32(i32 7, float %8960)  ; Saturate(value)
  %8965 = fsub fast float 1.000000e+00, %8963
  %8966 = fmul fast float %8965, %8964
  %8967 = fadd fast float %8966, %8963
  %8968 = fmul fast float %8951, %8944
  %8969 = call float @dx.op.unary.f32(i32 7, float %8968)  ; Saturate(value)
  %8970 = fsub fast float 1.000000e+00, %8967
  %8971 = fmul fast float %8970, %8969
  %8972 = fadd fast float %8971, %8967
  %8973 = call float @dx.op.unary.f32(i32 7, float %8972)  ; Saturate(value)
  %8974 = fadd fast float %8946, -1.000000e+00
  %8975 = select i1 %8945, float -1.000000e+00, float %8974
  %8976 = fmul fast float %8973, %8975
  %8977 = fadd fast float %8976, 1.000000e+00
  %8978 = fsub fast float -0.000000e+00, %8976
  %8979 = fmul fast float %8938, %8978
  %8980 = fmul fast float %8939, %8978
  %8981 = fmul fast float %8940, %8978
  br label %8982

; <label>:8982                                    ; preds = %8935, %8531
  %8983 = phi float [ %8936, %8935 ], [ 0.000000e+00, %8531 ]
  %8984 = phi float [ %8977, %8935 ], [ 1.000000e+00, %8531 ]
  %8985 = phi float [ %8979, %8935 ], [ 0.000000e+00, %8531 ]
  %8986 = phi float [ %8980, %8935 ], [ 0.000000e+00, %8531 ]
  %8987 = phi float [ %8981, %8935 ], [ 0.000000e+00, %8531 ]
  %8988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8988, 1
  %8990 = fsub fast float 1.000000e+00, %8984
  %8991 = fmul fast float %8990, %8566
  %8992 = fmul fast float %8991, %8989
  %8993 = fsub fast float %8566, %8992
  br i1 %8559, label %8994, label %9023, !dx.controlflow.hints !161

; <label>:8994                                    ; preds = %8982
  %8995 = fmul fast float %8567, %8556
  %8996 = fadd fast float %8995, %8557
  %8997 = call float @dx.op.unary.f32(i32 7, float %8996)  ; Saturate(value)
  %8998 = fmul fast float %8538, %8993
  %8999 = fsub fast float -0.000000e+00, %8998
  %9000 = fmul fast float %8539, %8993
  %9001 = fsub fast float -0.000000e+00, %9000
  %9002 = call float @dx.op.unary.f32(i32 21, float %8999)  ; Exp(value)
  %9003 = call float @dx.op.unary.f32(i32 21, float %9001)  ; Exp(value)
  %9004 = call float @dx.op.binary.f32(i32 35, float %8546, float %9002)  ; FMax(a,b)
  %9005 = call float @dx.op.binary.f32(i32 35, float %8546, float %9003)  ; FMax(a,b)
  %9006 = fsub fast float %9005, %9004
  %9007 = fmul fast float %9006, %8997
  %9008 = fadd fast float %9007, %9004
  %9009 = call float @dx.op.unary.f32(i32 7, float %9008)  ; Saturate(value)
  %9010 = fsub fast float %8543, %8548
  %9011 = fsub fast float %8544, %8549
  %9012 = fsub fast float %8545, %8550
  %9013 = fmul fast float %8997, %9010
  %9014 = fmul fast float %8997, %9011
  %9015 = fmul fast float %8997, %9012
  %9016 = fadd fast float %9013, %8548
  %9017 = fadd fast float %9014, %8549
  %9018 = fadd fast float %9015, %8550
  %9019 = fsub fast float 1.000000e+00, %9009
  %9020 = fmul fast float %9019, %9016
  %9021 = fmul fast float %9019, %9017
  %9022 = fmul fast float %9019, %9018
  br label %9082

; <label>:9023                                    ; preds = %8982
  %9024 = fmul fast float %8993, %8555
  %9025 = call float @dx.op.unary.f32(i32 7, float %9024)  ; Saturate(value)
  %9026 = fsub fast float 2.000000e+00, %9025
  %9027 = fmul fast float %9025, 9.921875e-01
  %9028 = fmul fast float %9027, %9026
  %9029 = fadd fast float %9028, 3.906250e-03
  %9030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %9029, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9031 = extractvalue %dx.types.ResRet.f32 %9030, 0
  %9032 = fsub fast float %9025, %9031
  %9033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9032)  ; FMax(a,b)
  %9034 = fmul fast float %8541, %8522
  %9035 = call float @dx.op.unary.f32(i32 6, float %9034)  ; FAbs(value)
  %9036 = fcmp fast ogt float %9035, 0x3EB0C6F7A0000000
  br i1 %9036, label %9037, label %9043, !dx.controlflow.hints !162

; <label>:9037                                    ; preds = %9023
  %9038 = fmul fast float %9034, 0xBFF7154760000000
  %9039 = call float @dx.op.unary.f32(i32 21, float %9038)  ; Exp(value)
  %9040 = fsub fast float 1.000000e+00, %9039
  %9041 = fdiv fast float %9040, %9034
  %9042 = fmul fast float %9041, %8551
  br label %9043

; <label>:9043                                    ; preds = %9037, %9023
  %9044 = phi float [ %9042, %9037 ], [ %8551, %9023 ]
  %9045 = fadd fast float %9044, %8553
  %9046 = fmul fast float %9045, %9033
  %9047 = fmul fast float %8538, %9046
  %9048 = fsub fast float -0.000000e+00, %9047
  %9049 = fmul fast float %8539, %9046
  %9050 = fsub fast float -0.000000e+00, %9049
  %9051 = fmul fast float %8540, %9046
  %9052 = fsub fast float -0.000000e+00, %9051
  %9053 = call float @dx.op.unary.f32(i32 21, float %9048)  ; Exp(value)
  %9054 = call float @dx.op.unary.f32(i32 21, float %9050)  ; Exp(value)
  %9055 = call float @dx.op.unary.f32(i32 21, float %9052)  ; Exp(value)
  %9056 = fmul fast float %8567, %8567
  %9057 = fadd fast float %9056, 1.000000e+00
  %9058 = fmul fast float %9057, 0x3FAE8EC8A0000000
  %9059 = fmul fast float %9058, %8548
  %9060 = fmul fast float %9058, %8549
  %9061 = fmul fast float %9058, %8550
  %9062 = fmul fast float %8567, %8546
  %9063 = fsub fast float 1.000000e+00, %9062
  %9064 = fmul fast float %8546, %8546
  %9065 = fsub fast float 1.000000e+00, %9064
  %9066 = fmul fast float %9065, 0x3FB45F3060000000
  %9067 = fmul fast float %9063, %9063
  %9068 = fdiv fast float 1.000000e+00, %9067
  %9069 = fmul fast float %9066, %9068
  %9070 = fmul fast float %9069, %8543
  %9071 = fmul fast float %9069, %8544
  %9072 = fmul fast float %9069, %8545
  %9073 = fadd fast float %9070, %9059
  %9074 = fadd fast float %9071, %9060
  %9075 = fadd fast float %9072, %9061
  %9076 = fsub fast float 1.000000e+00, %9053
  %9077 = fsub fast float 1.000000e+00, %9054
  %9078 = fsub fast float 1.000000e+00, %9055
  %9079 = fmul fast float %9073, %9076
  %9080 = fmul fast float %9074, %9077
  %9081 = fmul fast float %9075, %9078
  br label %9082

; <label>:9082                                    ; preds = %9043, %8994
  %9083 = phi float [ %9020, %8994 ], [ %9079, %9043 ]
  %9084 = phi float [ %9021, %8994 ], [ %9080, %9043 ]
  %9085 = phi float [ %9022, %8994 ], [ %9081, %9043 ]
  %9086 = phi float [ %9009, %8994 ], [ %9053, %9043 ]
  %9087 = phi float [ %9009, %8994 ], [ %9054, %9043 ]
  %9088 = phi float [ %9009, %8994 ], [ %9055, %9043 ]
  br i1 %8575, label %9089, label %9287, !dx.controlflow.hints !163

; <label>:9089                                    ; preds = %9082
  %9090 = extractvalue %dx.types.CBufRet.f32 %8988, 0
  %9091 = fmul fast float %9090, %8990
  %9092 = fsub fast float %8985, %9083
  %9093 = fsub fast float %8986, %9084
  %9094 = fsub fast float %8987, %9085
  %9095 = fmul fast float %9091, %9092
  %9096 = fmul fast float %9091, %9093
  %9097 = fmul fast float %9091, %9094
  %9098 = fadd fast float %9095, %9083
  %9099 = fadd fast float %9096, %9084
  %9100 = fadd fast float %9097, %9085
  %9101 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9086)  ; FMax(a,b)
  %9102 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9087)  ; FMax(a,b)
  %9103 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9088)  ; FMax(a,b)
  %9104 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8984)  ; FMax(a,b)
  %9105 = call float @dx.op.binary.f32(i32 35, float %8983, float %8993)  ; FMax(a,b)
  %9106 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9105)  ; FMax(a,b)
  %9107 = fdiv fast float %8983, %9106
  %9108 = call float @dx.op.unary.f32(i32 7, float %9107)  ; Saturate(value)
  %9109 = fdiv fast float %8993, %9106
  %9110 = call float @dx.op.unary.f32(i32 7, float %9109)  ; Saturate(value)
  %9111 = fcmp fast une float %9104, 1.000000e+00
  br i1 %9111, label %9112, label %9125, !dx.controlflow.hints !164

; <label>:9112                                    ; preds = %9089
  %9113 = call float @dx.op.unary.f32(i32 23, float %9104)  ; Log(value)
  %9114 = fmul fast float %9113, 0x3FE62E4300000000
  %9115 = fmul fast float %8985, %9114
  %9116 = fsub fast float -0.000000e+00, %9115
  %9117 = fmul fast float %8986, %9114
  %9118 = fsub fast float -0.000000e+00, %9117
  %9119 = fmul fast float %8987, %9114
  %9120 = fsub fast float -0.000000e+00, %9119
  %9121 = fsub fast float 1.000000e+00, %9104
  %9122 = fdiv fast float %9116, %9121
  %9123 = fdiv fast float %9118, %9121
  %9124 = fdiv fast float %9120, %9121
  br label %9125

; <label>:9125                                    ; preds = %9112, %9089
  %9126 = phi float [ %9122, %9112 ], [ %8985, %9089 ]
  %9127 = phi float [ %9123, %9112 ], [ %8986, %9089 ]
  %9128 = phi float [ %9124, %9112 ], [ %8987, %9089 ]
  %9129 = phi float [ %9114, %9112 ], [ 0.000000e+00, %9089 ]
  %9130 = fcmp fast une float %9101, 1.000000e+00
  br i1 %9130, label %9131, label %9138, !dx.controlflow.hints !165

; <label>:9131                                    ; preds = %9125
  %9132 = call float @dx.op.unary.f32(i32 23, float %9101)  ; Log(value)
  %9133 = fmul fast float %9132, 0x3FE62E4300000000
  %9134 = fmul fast float %9098, %9133
  %9135 = fsub fast float -0.000000e+00, %9134
  %9136 = fsub fast float 1.000000e+00, %9101
  %9137 = fdiv fast float %9135, %9136
  br label %9138

; <label>:9138                                    ; preds = %9131, %9125
  %9139 = phi float [ %9137, %9131 ], [ %9098, %9125 ]
  %9140 = phi float [ %9133, %9131 ], [ 0.000000e+00, %9125 ]
  %9141 = fcmp fast une float %9102, 1.000000e+00
  br i1 %9141, label %9142, label %9149, !dx.controlflow.hints !165

; <label>:9142                                    ; preds = %9138
  %9143 = call float @dx.op.unary.f32(i32 23, float %9102)  ; Log(value)
  %9144 = fmul fast float %9143, 0x3FE62E4300000000
  %9145 = fmul fast float %9099, %9144
  %9146 = fsub fast float -0.000000e+00, %9145
  %9147 = fsub fast float 1.000000e+00, %9102
  %9148 = fdiv fast float %9146, %9147
  br label %9149

; <label>:9149                                    ; preds = %9142, %9138
  %9150 = phi float [ %9148, %9142 ], [ %9099, %9138 ]
  %9151 = phi float [ %9144, %9142 ], [ 0.000000e+00, %9138 ]
  %9152 = fcmp fast une float %9103, 1.000000e+00
  br i1 %9152, label %9153, label %9160, !dx.controlflow.hints !165

; <label>:9153                                    ; preds = %9149
  %9154 = call float @dx.op.unary.f32(i32 23, float %9103)  ; Log(value)
  %9155 = fmul fast float %9154, 0x3FE62E4300000000
  %9156 = fmul fast float %9100, %9155
  %9157 = fsub fast float -0.000000e+00, %9156
  %9158 = fsub fast float 1.000000e+00, %9103
  %9159 = fdiv fast float %9157, %9158
  br label %9160

; <label>:9160                                    ; preds = %9153, %9149
  %9161 = phi float [ %9159, %9153 ], [ %9100, %9149 ]
  %9162 = phi float [ %9155, %9153 ], [ 0.000000e+00, %9149 ]
  %9163 = fmul fast float %9126, %9110
  %9164 = fmul fast float %9127, %9110
  %9165 = fmul fast float %9128, %9110
  %9166 = fmul fast float %9129, %9110
  %9167 = fmul fast float %9139, %9108
  %9168 = fmul fast float %9150, %9108
  %9169 = fmul fast float %9161, %9108
  %9170 = fmul fast float %9140, %9108
  %9171 = fmul fast float %9151, %9108
  %9172 = fmul fast float %9162, %9108
  %9173 = fadd fast float %9167, %9163
  %9174 = fadd fast float %9168, %9164
  %9175 = fadd fast float %9169, %9165
  %9176 = fadd fast float %9170, %9166
  %9177 = fadd fast float %9171, %9166
  %9178 = fadd fast float %9172, %9166
  %9179 = fcmp fast une float %9176, 0.000000e+00
  br i1 %9179, label %9180, label %9187, !dx.controlflow.hints !166

; <label>:9180                                    ; preds = %9160
  %9181 = fmul fast float %9176, 0x3FF7154760000000
  %9182 = call float @dx.op.unary.f32(i32 21, float %9181)  ; Exp(value)
  %9183 = fsub fast float 1.000000e+00, %9182
  %9184 = fmul fast float %9173, %9183
  %9185 = fsub fast float -0.000000e+00, %9184
  %9186 = fdiv fast float %9185, %9176
  br label %9187

; <label>:9187                                    ; preds = %9180, %9160
  %9188 = phi float [ %9182, %9180 ], [ 1.000000e+00, %9160 ]
  %9189 = phi float [ %9186, %9180 ], [ %9173, %9160 ]
  %9190 = fcmp fast une float %9177, 0.000000e+00
  br i1 %9190, label %9191, label %9198, !dx.controlflow.hints !166

; <label>:9191                                    ; preds = %9187
  %9192 = fmul fast float %9177, 0x3FF7154760000000
  %9193 = call float @dx.op.unary.f32(i32 21, float %9192)  ; Exp(value)
  %9194 = fsub fast float 1.000000e+00, %9193
  %9195 = fmul fast float %9174, %9194
  %9196 = fsub fast float -0.000000e+00, %9195
  %9197 = fdiv fast float %9196, %9177
  br label %9198

; <label>:9198                                    ; preds = %9191, %9187
  %9199 = phi float [ %9193, %9191 ], [ 1.000000e+00, %9187 ]
  %9200 = phi float [ %9197, %9191 ], [ %9174, %9187 ]
  %9201 = fcmp fast une float %9178, 0.000000e+00
  br i1 %9201, label %9202, label %9209, !dx.controlflow.hints !166

; <label>:9202                                    ; preds = %9198
  %9203 = fmul fast float %9178, 0x3FF7154760000000
  %9204 = call float @dx.op.unary.f32(i32 21, float %9203)  ; Exp(value)
  %9205 = fsub fast float 1.000000e+00, %9204
  %9206 = fmul fast float %9175, %9205
  %9207 = fsub fast float -0.000000e+00, %9206
  %9208 = fdiv fast float %9207, %9178
  br label %9209

; <label>:9209                                    ; preds = %9202, %9198
  %9210 = phi float [ %9204, %9202 ], [ 1.000000e+00, %9198 ]
  %9211 = phi float [ %9208, %9202 ], [ %9175, %9198 ]
  %9212 = fcmp fast ogt float %9108, %9110
  br i1 %9212, label %9213, label %9233

; <label>:9213                                    ; preds = %9209
  %9214 = fsub fast float 1.000000e+00, %9110
  %9215 = fmul fast float %9126, %9214
  %9216 = fmul fast float %9127, %9214
  %9217 = fmul fast float %9128, %9214
  %9218 = fmul fast float %9129, %9214
  %9219 = fcmp fast une float %9218, 0.000000e+00
  br i1 %9219, label %9220, label %9271, !dx.controlflow.hints !167

; <label>:9220                                    ; preds = %9213
  %9221 = fmul fast float %9218, 0x3FF7154760000000
  %9222 = call float @dx.op.unary.f32(i32 21, float %9221)  ; Exp(value)
  %9223 = fsub fast float 1.000000e+00, %9222
  %9224 = fmul fast float %9215, %9223
  %9225 = fsub fast float -0.000000e+00, %9224
  %9226 = fmul fast float %9216, %9223
  %9227 = fsub fast float -0.000000e+00, %9226
  %9228 = fmul fast float %9217, %9223
  %9229 = fsub fast float -0.000000e+00, %9228
  %9230 = fdiv fast float %9225, %9218
  %9231 = fdiv fast float %9227, %9218
  %9232 = fdiv fast float %9229, %9218
  br label %9271

; <label>:9233                                    ; preds = %9209
  %9234 = fsub fast float 1.000000e+00, %9108
  %9235 = fmul fast float %9139, %9234
  %9236 = fmul fast float %9150, %9234
  %9237 = fmul fast float %9161, %9234
  %9238 = fmul fast float %9140, %9234
  %9239 = fmul fast float %9151, %9234
  %9240 = fmul fast float %9162, %9234
  %9241 = fcmp fast une float %9238, 0.000000e+00
  br i1 %9241, label %9242, label %9249, !dx.controlflow.hints !166

; <label>:9242                                    ; preds = %9233
  %9243 = fmul fast float %9238, 0x3FF7154760000000
  %9244 = call float @dx.op.unary.f32(i32 21, float %9243)  ; Exp(value)
  %9245 = fsub fast float 1.000000e+00, %9244
  %9246 = fmul fast float %9235, %9245
  %9247 = fsub fast float -0.000000e+00, %9246
  %9248 = fdiv fast float %9247, %9238
  br label %9249

; <label>:9249                                    ; preds = %9242, %9233
  %9250 = phi float [ %9248, %9242 ], [ %9235, %9233 ]
  %9251 = phi float [ %9244, %9242 ], [ 1.000000e+00, %9233 ]
  %9252 = fcmp fast une float %9239, 0.000000e+00
  br i1 %9252, label %9253, label %9260, !dx.controlflow.hints !166

; <label>:9253                                    ; preds = %9249
  %9254 = fmul fast float %9239, 0x3FF7154760000000
  %9255 = call float @dx.op.unary.f32(i32 21, float %9254)  ; Exp(value)
  %9256 = fsub fast float 1.000000e+00, %9255
  %9257 = fmul fast float %9236, %9256
  %9258 = fsub fast float -0.000000e+00, %9257
  %9259 = fdiv fast float %9258, %9239
  br label %9260

; <label>:9260                                    ; preds = %9253, %9249
  %9261 = phi float [ %9259, %9253 ], [ %9236, %9249 ]
  %9262 = phi float [ %9255, %9253 ], [ 1.000000e+00, %9249 ]
  %9263 = fcmp fast une float %9240, 0.000000e+00
  br i1 %9263, label %9264, label %9271, !dx.controlflow.hints !166

; <label>:9264                                    ; preds = %9260
  %9265 = fmul fast float %9240, 0x3FF7154760000000
  %9266 = call float @dx.op.unary.f32(i32 21, float %9265)  ; Exp(value)
  %9267 = fsub fast float 1.000000e+00, %9266
  %9268 = fmul fast float %9237, %9267
  %9269 = fsub fast float -0.000000e+00, %9268
  %9270 = fdiv fast float %9269, %9240
  br label %9271

; <label>:9271                                    ; preds = %9264, %9260, %9220, %9213
  %9272 = phi float [ %9270, %9264 ], [ %9232, %9220 ], [ %9217, %9213 ], [ %9237, %9260 ]
  %9273 = phi float [ %9261, %9264 ], [ %9231, %9220 ], [ %9216, %9213 ], [ %9261, %9260 ]
  %9274 = phi float [ %9250, %9264 ], [ %9230, %9220 ], [ %9215, %9213 ], [ %9250, %9260 ]
  %9275 = phi float [ %9266, %9264 ], [ %9222, %9220 ], [ 1.000000e+00, %9213 ], [ 1.000000e+00, %9260 ]
  %9276 = phi float [ %9262, %9264 ], [ %9222, %9220 ], [ 1.000000e+00, %9213 ], [ %9262, %9260 ]
  %9277 = phi float [ %9251, %9264 ], [ %9222, %9220 ], [ 1.000000e+00, %9213 ], [ %9251, %9260 ]
  %9278 = fmul fast float %9277, %9189
  %9279 = fmul fast float %9276, %9200
  %9280 = fmul fast float %9275, %9211
  %9281 = fadd fast float %9278, %9274
  %9282 = fadd fast float %9279, %9273
  %9283 = fadd fast float %9280, %9272
  %9284 = fmul fast float %9277, %9188
  %9285 = fmul fast float %9276, %9199
  %9286 = fmul fast float %9275, %9210
  br label %9287

; <label>:9287                                    ; preds = %9271, %9082
  %9288 = phi float [ %9286, %9271 ], [ %9088, %9082 ]
  %9289 = phi float [ %9285, %9271 ], [ %9087, %9082 ]
  %9290 = phi float [ %9284, %9271 ], [ %9086, %9082 ]
  %9291 = phi float [ %9283, %9271 ], [ %9085, %9082 ]
  %9292 = phi float [ %9282, %9271 ], [ %9084, %9082 ]
  %9293 = phi float [ %9281, %9271 ], [ %9083, %9082 ]
  %9294 = fmul fast float %9293, %8239
  %9295 = fmul fast float %9292, %8239
  %9296 = fmul fast float %9291, %8239
  %9297 = fmul fast float %9290, %8530
  %9298 = call float @dx.op.dot3.f32(i32 55, float %9290, float %9289, float %9288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9299 = call float @dx.op.dot3.f32(i32 55, float %9294, float %9295, float %9296, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9300 = select i1 %223, float %9298, float %9290
  %9301 = select i1 %223, float %9298, float %9289
  %9302 = select i1 %223, float 1.000000e+00, float %9288
  %9303 = select i1 %223, float %9299, float %9294
  %9304 = select i1 %223, float 0.000000e+00, float %9295
  %9305 = select i1 %223, float 0.000000e+00, float %9296
  %9306 = fmul fast float %9300, %8524
  %9307 = fmul fast float %9301, %8525
  %9308 = fmul fast float %9302, %8526
  %9309 = fadd fast float %9306, %9303
  %9310 = fadd fast float %9307, %9304
  %9311 = fadd fast float %9305, %9308
  %9312 = fmul fast float %9300, %8527
  %9313 = fmul fast float %9301, %8528
  %9314 = fmul fast float %9302, %8529
  %9315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9316 = extractvalue %dx.types.CBufRet.i32 %9315, 0
  %9317 = icmp eq i32 %9316, 0
  br i1 %9317, label %9685, label %9318, !dx.controlflow.hints !168

; <label>:9318                                    ; preds = %9287
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 2
  %9321 = extractvalue %dx.types.CBufRet.f32 %9319, 3
  %9322 = fmul fast float %9320, %102
  %9323 = fmul fast float %9321, %103
  %9324 = fmul fast float %9322, 2.000000e+00
  %9325 = fmul fast float %9323, 2.000000e+00
  %9326 = fsub fast float 1.000000e+00, %9324
  %9327 = fsub fast float 1.000000e+00, %9325
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 0
  %9330 = extractvalue %dx.types.CBufRet.f32 %9328, 1
  %9331 = extractvalue %dx.types.CBufRet.f32 %9328, 2
  %9332 = fmul fast float %9326, %9329
  %9333 = fmul fast float %9326, %9330
  %9334 = fmul fast float %9326, %9331
  %9335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9336 = extractvalue %dx.types.CBufRet.f32 %9335, 0
  %9337 = extractvalue %dx.types.CBufRet.f32 %9335, 1
  %9338 = extractvalue %dx.types.CBufRet.f32 %9335, 2
  %9339 = fmul fast float %9327, %9336
  %9340 = fmul fast float %9327, %9337
  %9341 = fmul fast float %9327, %9338
  %9342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9343 = extractvalue %dx.types.CBufRet.f32 %9342, 0
  %9344 = extractvalue %dx.types.CBufRet.f32 %9342, 1
  %9345 = extractvalue %dx.types.CBufRet.f32 %9342, 2
  %9346 = fadd fast float %9339, %9343
  %9347 = fadd fast float %9346, %9332
  %9348 = fadd fast float %9340, %9344
  %9349 = fadd fast float %9348, %9333
  %9350 = fadd fast float %9341, %9345
  %9351 = fadd fast float %9350, %9334
  %9352 = fmul fast float %9347, %8523
  %9353 = fmul fast float %9349, %8523
  %9354 = fmul fast float %9351, %8523
  %9355 = fmul fast float %9352, %9352
  %9356 = fmul fast float %9353, %9353
  %9357 = fadd fast float %9355, %9356
  %9358 = fmul fast float %9354, %9354
  %9359 = fadd fast float %9357, %9358
  %9360 = call float @dx.op.unary.f32(i32 24, float %9359)  ; Sqrt(value)
  %9361 = extractvalue %dx.types.CBufRet.f32 %8250, 0
  %9362 = fsub fast float %9360, %9361
  %9363 = extractvalue %dx.types.CBufRet.f32 %8250, 2
  %9364 = fmul fast float %9362, %9363
  %9365 = call float @dx.op.unary.f32(i32 7, float %9364)  ; Saturate(value)
  %9366 = fadd fast float %9365, -5.000000e-01
  %9367 = fmul fast float %9366, 2.000000e+00
  %9368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9369 = extractvalue %dx.types.CBufRet.f32 %9368, 2
  %9370 = call float @dx.op.binary.f32(i32 36, float %9369, float %9367)  ; FMin(a,b)
  %9371 = fsub fast float -0.000000e+00, %9369
  %9372 = fcmp fast ogt float %9370, %9371
  br i1 %9372, label %9373, label %9685, !dx.controlflow.hints !169

; <label>:9373                                    ; preds = %9318
  %9374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9375 = extractvalue %dx.types.CBufRet.f32 %9374, 3
  %9376 = fcmp fast ogt float %9375, 0.000000e+00
  br i1 %9376, label %9377, label %9452, !dx.controlflow.hints !170

; <label>:9377                                    ; preds = %9373
  %9378 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %9379 = extractvalue %dx.types.Dimensions %9378, 0
  %9380 = sitofp i32 %9379 to float
  %9381 = extractvalue %dx.types.Dimensions %9378, 1
  %9382 = sitofp i32 %9381 to float
  %9383 = fmul fast float %9322, %9380
  %9384 = fmul fast float %9323, %9382
  %9385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9386 = extractvalue %dx.types.CBufRet.f32 %9385, 1
  %9387 = fsub fast float -0.000000e+00, %9386
  %9388 = fptoui float %9387 to i32
  %9389 = fptoui float %9383 to i32
  %9390 = fptoui float %9384 to i32
  %9391 = and i32 %9388, 31
  %9392 = lshr i32 %9389, %9391
  %9393 = lshr i32 %9390, %9391
  %9394 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %9388, i32 %9392, i32 %9393, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9395 = extractvalue %dx.types.ResRet.f32 %9394, 0
  %9396 = fcmp fast olt float %9395, -1.000000e+00
  %9397 = fcmp fast ogt float %9395, -1.000000e+00
  %9398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9399 = extractvalue %dx.types.CBufRet.f32 %9398, 1
  %9400 = select i1 %9397, float %9399, float 1.000000e+00
  %9401 = fadd fast float %9395, 1.000000e+00
  %9402 = fmul fast float %9400, %9401
  %9403 = call float @dx.op.unary.f32(i32 6, float %9402)  ; FAbs(value)
  %9404 = extractvalue %dx.types.CBufRet.f32 %9398, 3
  %9405 = fcmp fast oge float %9403, %9404
  %9406 = select i1 %9405, float 0x4197782600000000, float %9403
  %9407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9408 = extractvalue %dx.types.CBufRet.f32 %9407, 0
  %9409 = extractvalue %dx.types.CBufRet.f32 %9407, 1
  %9410 = extractvalue %dx.types.CBufRet.f32 %9407, 2
  %9411 = select i1 %9396, float %9408, float %9329
  %9412 = select i1 %9396, float %9409, float %9330
  %9413 = select i1 %9396, float %9410, float %9331
  %9414 = fmul fast float %9411, %9326
  %9415 = fmul fast float %9412, %9326
  %9416 = fmul fast float %9413, %9326
  %9417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9418 = extractvalue %dx.types.CBufRet.f32 %9417, 0
  %9419 = extractvalue %dx.types.CBufRet.f32 %9417, 1
  %9420 = extractvalue %dx.types.CBufRet.f32 %9417, 2
  %9421 = select i1 %9396, float %9418, float %9336
  %9422 = select i1 %9396, float %9419, float %9337
  %9423 = select i1 %9396, float %9420, float %9338
  %9424 = fmul fast float %9421, %9327
  %9425 = fmul fast float %9422, %9327
  %9426 = fmul fast float %9423, %9327
  %9427 = fadd fast float %9424, %9414
  %9428 = fadd fast float %9425, %9415
  %9429 = fadd fast float %9426, %9416
  %9430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9431 = extractvalue %dx.types.CBufRet.f32 %9430, 0
  %9432 = extractvalue %dx.types.CBufRet.f32 %9430, 1
  %9433 = extractvalue %dx.types.CBufRet.f32 %9430, 2
  %9434 = select i1 %9396, float %9431, float %9343
  %9435 = select i1 %9396, float %9432, float %9344
  %9436 = select i1 %9396, float %9433, float %9345
  %9437 = fadd fast float %9427, %9434
  %9438 = fadd fast float %9428, %9435
  %9439 = fadd fast float %9429, %9436
  %9440 = fmul fast float %9437, %9406
  %9441 = fmul fast float %9438, %9406
  %9442 = fmul fast float %9439, %9406
  %9443 = fmul fast float %9440, %9440
  %9444 = fmul fast float %9441, %9441
  %9445 = fadd fast float %9443, %9444
  %9446 = fmul fast float %9442, %9442
  %9447 = fadd fast float %9445, %9446
  %9448 = call float @dx.op.unary.f32(i32 24, float %9447)  ; Sqrt(value)
  %9449 = fsub fast float %9448, %9361
  %9450 = fmul fast float %9449, %9363
  %9451 = call float @dx.op.unary.f32(i32 7, float %9450)  ; Saturate(value)
  br label %9452

; <label>:9452                                    ; preds = %9377, %9373
  %9453 = phi float [ %9451, %9377 ], [ 1.000000e+00, %9373 ]
  %9454 = fmul fast float %9370, 5.000000e-01
  %9455 = fadd fast float %9454, 5.000000e-01
  %9456 = call float @dx.op.unary.f32(i32 22, float %9455)  ; Frc(value)
  %9457 = call float @dx.op.unary.f32(i32 27, float %9456)  ; Round_ni(value)
  %9458 = call float @dx.op.unary.f32(i32 22, float %9456)  ; Frc(value)
  %9459 = fmul fast float %9458, 2.000000e+00
  %9460 = fadd fast float %9459, -1.000000e+00
  %9461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %9322, float %9323, float %9457, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9462 = extractvalue %dx.types.ResRet.f32 %9461, 0
  %9463 = extractvalue %dx.types.ResRet.f32 %9461, 1
  %9464 = extractvalue %dx.types.ResRet.f32 %9461, 2
  %9465 = extractvalue %dx.types.ResRet.f32 %9461, 3
  %9466 = fadd fast float %9462, -5.000000e-01
  %9467 = fadd fast float %9464, -5.000000e-01
  %9468 = fmul fast float %9466, 0xBFD5555560000000
  %9469 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9467, float %9468)  ; FMad(a,b,c)
  %9470 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9463, float 0.000000e+00)  ; FMad(a,b,c)
  %9471 = fadd fast float %9470, %9465
  %9472 = fmul fast float %9466, -7.500000e-01
  %9473 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9467, float %9472)  ; FMad(a,b,c)
  %9474 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9463, float 0.000000e+00)  ; FMad(a,b,c)
  %9475 = fadd fast float %9474, %9465
  %9476 = call float @dx.op.binary.f32(i32 35, float %9469, float -1.000000e+00)  ; FMax(a,b)
  %9477 = call float @dx.op.binary.f32(i32 35, float %9471, float -1.000000e+00)  ; FMax(a,b)
  %9478 = call float @dx.op.binary.f32(i32 35, float %9473, float -1.000000e+00)  ; FMax(a,b)
  %9479 = call float @dx.op.binary.f32(i32 35, float %9475, float -1.000000e+00)  ; FMax(a,b)
  %9480 = call float @dx.op.binary.f32(i32 36, float %9476, float 1.000000e+00)  ; FMin(a,b)
  %9481 = call float @dx.op.binary.f32(i32 36, float %9477, float 1.000000e+00)  ; FMin(a,b)
  %9482 = call float @dx.op.binary.f32(i32 36, float %9478, float 1.000000e+00)  ; FMin(a,b)
  %9483 = call float @dx.op.binary.f32(i32 36, float %9479, float 1.000000e+00)  ; FMin(a,b)
  %9484 = fcmp fast olt float %9480, 0x3FEFFF8020000000
  br i1 %9484, label %9485, label %9600, !dx.controlflow.hints !171

; <label>:9485                                    ; preds = %9452
  %9486 = extractvalue %dx.types.CBufRet.f32 %9368, 3
  %9487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9488 = extractvalue %dx.types.CBufRet.f32 %9487, 0
  %9489 = extractvalue %dx.types.CBufRet.f32 %9487, 1
  %9490 = extractvalue %dx.types.CBufRet.f32 %9487, 2
  %9491 = extractvalue %dx.types.CBufRet.f32 %9487, 3
  %9492 = fsub fast float %9488, %9480
  %9493 = fsub fast float %9489, %9481
  %9494 = fsub fast float %9490, %9482
  %9495 = fsub fast float %9491, %9483
  %9496 = fmul fast float %9492, %9486
  %9497 = fmul fast float %9493, %9486
  %9498 = fmul fast float %9494, %9486
  %9499 = fmul fast float %9495, %9486
  %9500 = fadd fast float %9496, %9480
  %9501 = fadd fast float %9497, %9481
  %9502 = fsub fast float -0.000000e+00, %9501
  %9503 = fadd fast float %9498, %9482
  %9504 = fadd fast float %9499, %9483
  %9505 = fmul fast float %9500, %9500
  %9506 = fsub fast float %9501, %9505
  %9507 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9506)  ; FMax(a,b)
  %9508 = fdiv fast float 1.000000e+00, %9507
  %9509 = fmul fast float %9501, %9500
  %9510 = fsub fast float %9503, %9509
  %9511 = fsub fast float %9460, %9500
  %9512 = fmul fast float %9460, %9460
  %9513 = fsub fast float %9512, %9501
  %9514 = fmul fast float %9511, %9508
  %9515 = fmul fast float %9514, %9510
  %9516 = fsub fast float %9513, %9515
  %9517 = fmul fast float %9501, %9501
  %9518 = fsub fast float %9504, %9517
  %9519 = fmul fast float %9510, %9510
  %9520 = fmul fast float %9519, %9508
  %9521 = fsub fast float %9518, %9520
  %9522 = fdiv fast float %9516, %9521
  %9523 = fmul fast float %9510, %9522
  %9524 = fsub fast float %9511, %9523
  %9525 = fmul fast float %9524, %9508
  %9526 = fmul fast float %9525, %9500
  %9527 = fsub fast float 1.000000e+00, %9526
  %9528 = fmul fast float %9501, %9522
  %9529 = fsub fast float %9527, %9528
  %9530 = fmul fast float %9525, %9525
  %9531 = fmul fast float %9522, 4.000000e+00
  %9532 = fmul fast float %9531, %9529
  %9533 = fsub fast float %9530, %9532
  %9534 = call float @dx.op.unary.f32(i32 24, float %9533)  ; Sqrt(value)
  %9535 = fcmp fast oge float %9525, 0.000000e+00
  %9536 = fsub fast float -0.000000e+00, %9534
  %9537 = select i1 %9535, float %9536, float %9534
  %9538 = fsub fast float %9537, %9525
  %9539 = fdiv fast float %9538, %9522
  %9540 = fdiv fast float %9529, %9538
  %9541 = fmul fast float %9539, 5.000000e-01
  %9542 = fmul fast float %9540, 2.000000e+00
  %9543 = select i1 %9535, float %9541, float %9542
  %9544 = select i1 %9535, float %9542, float %9541
  %9545 = call float @dx.op.binary.f32(i32 35, float %9543, float %9544)  ; FMax(a,b)
  %9546 = call float @dx.op.binary.f32(i32 36, float %9543, float %9544)  ; FMin(a,b)
  %9547 = fcmp fast ogt float %9460, %9546
  br i1 %9547, label %9548, label %9558

; <label>:9548                                    ; preds = %9485
  %9549 = fsub fast float %9460, %9546
  %9550 = fsub fast float %9545, %9546
  %9551 = fmul fast float %9549, %9550
  %9552 = fmul fast float %9545, %9460
  %9553 = fadd fast float %9545, %9460
  %9554 = fmul fast float %9553, %9500
  %9555 = fadd fast float %9552, %9501
  %9556 = fsub fast float %9555, %9554
  %9557 = fdiv fast float %9556, %9551
  br label %9558

; <label>:9558                                    ; preds = %9548, %9485
  %9559 = phi float [ %9557, %9548 ], [ 0.000000e+00, %9485 ]
  %9560 = fcmp fast ogt float %9460, %9545
  %9561 = fsub fast float %9460, %9545
  br i1 %9560, label %9562, label %9572

; <label>:9562                                    ; preds = %9558
  %9563 = fsub fast float %9545, %9546
  %9564 = fmul fast float %9563, %9561
  %9565 = fmul fast float %9546, %9460
  %9566 = fadd fast float %9546, %9460
  %9567 = fmul fast float %9566, %9500
  %9568 = fsub fast float %9502, %9565
  %9569 = fadd fast float %9568, %9567
  %9570 = fdiv fast float %9569, %9564
  %9571 = fadd fast float %9570, %9559
  br label %9572

; <label>:9572                                    ; preds = %9562, %9558
  %9573 = phi float [ %9571, %9562 ], [ %9559, %9558 ]
  %9574 = fsub fast float %9460, %9546
  %9575 = fmul fast float %9574, %9561
  %9576 = fmul fast float %9546, %9545
  %9577 = fadd fast float %9546, %9545
  %9578 = fmul fast float %9577, %9500
  %9579 = fadd fast float %9576, %9501
  %9580 = fsub fast float %9579, %9578
  %9581 = fdiv fast float %9580, %9575
  %9582 = call float @dx.op.unary.f32(i32 7, float %9573)  ; Saturate(value)
  %9583 = fcmp fast oeq float %8251, 0.000000e+00
  %9584 = extractvalue %dx.types.CBufRet.f32 %9368, 0
  %9585 = fcmp fast oeq float %9584, 0.000000e+00
  %9586 = or i1 %9583, %9585
  %9587 = fmul fast float %9584, 2.000000e+00
  %9588 = fadd fast float %9369, %9370
  %9589 = fdiv fast float %9588, %9587
  %9590 = call float @dx.op.unary.f32(i32 7, float %9589)  ; Saturate(value)
  %9591 = fmul fast float %9590, 2.000000e+00
  %9592 = fsub fast float 3.000000e+00, %9591
  %9593 = fmul fast float %9590, %9590
  %9594 = fmul fast float %9593, %9592
  %9595 = select i1 %9586, float 1.000000e+00, float %9594
  %9596 = fmul fast float %9581, %8251
  %9597 = fadd fast float %9582, %9596
  %9598 = call float @dx.op.unary.f32(i32 7, float %9597)  ; Saturate(value)
  %9599 = fmul fast float %9595, %9598
  br label %9600

; <label>:9600                                    ; preds = %9572, %9452
  %9601 = phi float [ %9599, %9572 ], [ 0.000000e+00, %9452 ]
  %9602 = fsub fast float 1.000000e+00, %9601
  %9603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %9322, float %9323, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9604 = extractvalue %dx.types.ResRet.f32 %9603, 0
  %9605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9606 = extractvalue %dx.types.CBufRet.i32 %9605, 2
  %9607 = icmp eq i32 %9606, 0
  br i1 %9607, label %9613, label %9608

; <label>:9608                                    ; preds = %9600
  %9609 = call float @dx.op.unary.f32(i32 7, float %9601)  ; Saturate(value)
  %9610 = fadd fast float %9604, -1.000000e+00
  %9611 = fmul fast float %9609, %9610
  %9612 = fadd fast float %9611, 1.000000e+00
  br label %9613

; <label>:9613                                    ; preds = %9608, %9600
  %9614 = phi float [ %9612, %9608 ], [ %9602, %9600 ]
  br i1 %9376, label %9615, label %9633

; <label>:9615                                    ; preds = %9613
  %9616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9617 = extractvalue %dx.types.CBufRet.f32 %9616, 1
  %9618 = fsub fast float %9453, %9617
  %9619 = call float @dx.op.unary.f32(i32 7, float %9618)  ; Saturate(value)
  %9620 = fsub fast float %9453, %9375
  %9621 = call float @dx.op.unary.f32(i32 7, float %9620)  ; Saturate(value)
  %9622 = fsub fast float %9619, %9621
  %9623 = fsub fast float %9455, %9621
  %9624 = fdiv fast float %9623, %9622
  %9625 = call float @dx.op.unary.f32(i32 7, float %9624)  ; Saturate(value)
  %9626 = fmul fast float %9625, 2.000000e+00
  %9627 = fsub fast float 3.000000e+00, %9626
  %9628 = fsub fast float %9604, %9614
  %9629 = fmul fast float %9625, %9625
  %9630 = fmul fast float %9629, %9628
  %9631 = fmul fast float %9630, %9627
  %9632 = fadd fast float %9631, %9614
  br label %9633

; <label>:9633                                    ; preds = %9615, %9613
  %9634 = phi float [ %9632, %9615 ], [ %9614, %9613 ]
  %9635 = call float @dx.op.binary.f32(i32 35, float %9604, float %9634)  ; FMax(a,b)
  %9636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9637 = extractvalue %dx.types.CBufRet.i32 %9636, 2
  %9638 = and i32 %9637, 1
  %9639 = icmp eq i32 %9638, 0
  %9640 = fcmp fast une float %9635, 1.000000e+00
  %9641 = and i1 %9640, %9639
  br i1 %9641, label %9642, label %9661

; <label>:9642                                    ; preds = %9633
  %9643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %9322, float %9323, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9644 = extractvalue %dx.types.ResRet.f32 %9643, 0
  %9645 = extractvalue %dx.types.ResRet.f32 %9643, 1
  %9646 = extractvalue %dx.types.ResRet.f32 %9643, 2
  %9647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9648 = extractvalue %dx.types.CBufRet.f32 %9647, 1
  %9649 = fmul fast float %9648, %9644
  %9650 = fmul fast float %9648, %9645
  %9651 = fmul fast float %9648, %9646
  %9652 = fcmp fast ogt float %9604, 0x3FEFFF2E40000000
  %9653 = fsub fast float 1.000000e+00, %9635
  %9654 = fsub fast float 1.000000e+00, %9604
  %9655 = fdiv fast float %9653, %9654
  %9656 = call float @dx.op.unary.f32(i32 7, float %9655)  ; Saturate(value)
  %9657 = select i1 %9652, float 0.000000e+00, float %9656
  %9658 = fmul fast float %9649, %9657
  %9659 = fmul fast float %9650, %9657
  %9660 = fmul fast float %9651, %9657
  br label %9661

; <label>:9661                                    ; preds = %9642, %9633
  %9662 = phi float [ 0.000000e+00, %9633 ], [ %9658, %9642 ]
  %9663 = phi float [ 0.000000e+00, %9633 ], [ %9659, %9642 ]
  %9664 = phi float [ 0.000000e+00, %9633 ], [ %9660, %9642 ]
  %9665 = fmul fast float %9662, %8239
  %9666 = fmul fast float %9663, %8239
  %9667 = fmul fast float %9664, %8239
  %9668 = fmul fast float %9635, %9297
  %9669 = call float @dx.op.dot3.f32(i32 55, float %9635, float %9635, float %9635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9670 = call float @dx.op.dot3.f32(i32 55, float %9665, float %9666, float %9667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9671 = select i1 %223, float %9669, float %9635
  %9672 = select i1 %223, float 1.000000e+00, float %9635
  %9673 = select i1 %223, float %9670, float %9665
  %9674 = select i1 %223, float 0.000000e+00, float %9666
  %9675 = select i1 %223, float 0.000000e+00, float %9667
  %9676 = fmul fast float %9671, %9309
  %9677 = fmul fast float %9671, %9310
  %9678 = fmul fast float %9672, %9311
  %9679 = fadd fast float %9676, %9673
  %9680 = fadd fast float %9677, %9674
  %9681 = fadd fast float %9675, %9678
  %9682 = fmul fast float %9671, %9312
  %9683 = fmul fast float %9671, %9313
  %9684 = fmul fast float %9672, %9314
  br label %9685

; <label>:9685                                    ; preds = %9661, %9318, %9287, %8519
  %9686 = phi float [ %8524, %8519 ], [ %9309, %9287 ], [ %9679, %9661 ], [ %9309, %9318 ]
  %9687 = phi float [ %8525, %8519 ], [ %9310, %9287 ], [ %9680, %9661 ], [ %9310, %9318 ]
  %9688 = phi float [ %8526, %8519 ], [ %9311, %9287 ], [ %9681, %9661 ], [ %9311, %9318 ]
  %9689 = phi float [ %8527, %8519 ], [ %9312, %9287 ], [ %9682, %9661 ], [ %9312, %9318 ]
  %9690 = phi float [ %8528, %8519 ], [ %9313, %9287 ], [ %9683, %9661 ], [ %9313, %9318 ]
  %9691 = phi float [ %8529, %8519 ], [ %9314, %9287 ], [ %9684, %9661 ], [ %9314, %9318 ]
  %9692 = phi float [ %8530, %8519 ], [ %9297, %9287 ], [ %9668, %9661 ], [ %9297, %9318 ]
  %9693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9694 = extractvalue %dx.types.CBufRet.f32 %9693, 2
  %9695 = extractvalue %dx.types.CBufRet.f32 %9693, 3
  %9696 = fmul fast float %9694, %102
  %9697 = fmul fast float %9695, %103
  %9698 = call float @dx.op.unary.f32(i32 7, float %9696)  ; Saturate(value)
  %9699 = call float @dx.op.unary.f32(i32 7, float %9697)  ; Saturate(value)
  %9700 = select i1 %8261, i32 2, i32 0
  %9701 = or i32 %9700, 1
  %9702 = uitofp i32 %9701 to float
  %9703 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9698, float %9699, float %9702, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9704 = extractvalue %dx.types.ResRet.f32 %9703, 0
  %9705 = extractvalue %dx.types.ResRet.f32 %9703, 1
  %9706 = extractvalue %dx.types.ResRet.f32 %9703, 2
  %9707 = extractvalue %dx.types.ResRet.f32 %9703, 3
  %9708 = add nuw nsw i32 %9700, 2
  %9709 = uitofp i32 %9708 to float
  %9710 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9698, float %9699, float %9709, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9711 = extractvalue %dx.types.ResRet.f32 %9710, 0
  %9712 = extractvalue %dx.types.ResRet.f32 %9710, 1
  %9713 = extractvalue %dx.types.ResRet.f32 %9710, 2
  %9714 = extractvalue %dx.types.ResRet.f32 %9710, 3
  %9715 = call float @dx.op.binary.f32(i32 35, float %9705, float %9706)  ; FMax(a,b)
  %9716 = call float @dx.op.binary.f32(i32 35, float %9704, float %9715)  ; FMax(a,b)
  %9717 = call float @dx.op.binary.f32(i32 35, float %9716, float %9707)  ; FMax(a,b)
  %9718 = call float @dx.op.binary.f32(i32 36, float %9712, float %9713)  ; FMin(a,b)
  %9719 = call float @dx.op.binary.f32(i32 36, float %9711, float %9718)  ; FMin(a,b)
  %9720 = call float @dx.op.binary.f32(i32 36, float %9719, float %9714)  ; FMin(a,b)
  %9721 = fmul fast float %9717, 2.550000e+02
  %9722 = fadd fast float %9721, 0x3F70101020000000
  %9723 = fptoui float %9722 to i32
  %9724 = fmul fast float %9720, 2.550000e+02
  %9725 = fadd fast float %9724, 0x3F70101020000000
  %9726 = fptoui float %9725 to i32
  %9727 = icmp ult i32 %9723, %9726
  br i1 %9727, label %9728, label %9897

; <label>:9728                                    ; preds = %9685
  %9729 = fcmp fast ogt float %92, 9.843750e-01
  %9730 = fadd fast float %8523, -4.000000e+00
  %9731 = select i1 %9729, float -4.000000e+00, float %9730
  %9732 = call float @dx.op.binary.f32(i32 35, float %9731, float 0.000000e+00)  ; FMax(a,b)
  %9733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9734 = extractvalue %dx.types.CBufRet.f32 %9733, 0
  %9735 = fadd fast float %9734, %9732
  %9736 = extractvalue %dx.types.CBufRet.f32 %9733, 2
  %9737 = fmul fast float %9735, %9736
  %9738 = call float @dx.op.unary.f32(i32 23, float %9737)  ; Log(value)
  %9739 = extractvalue %dx.types.CBufRet.f32 %9733, 3
  %9740 = fmul fast float %9739, %9738
  %9741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9742 = extractvalue %dx.types.CBufRet.f32 %9741, 2
  %9743 = fmul fast float %9740, %9742
  %9744 = call float @dx.op.unary.f32(i32 7, float %9743)  ; Saturate(value)
  %9745 = uitofp i32 %9723 to float
  %9746 = uitofp i32 %9726 to float
  %9747 = fadd fast float %9745, 5.000000e-01
  %9748 = fadd fast float %9746, 5.000000e-01
  %9749 = fmul fast float %9742, %9747
  %9750 = fmul fast float %9742, %9748
  %9751 = fadd fast float %9749, 0x3F0FFB4800000000
  %9752 = fadd fast float %9750, 0xBF0FFB4800000000
  %9753 = call float @dx.op.binary.f32(i32 35, float %9744, float %9751)  ; FMax(a,b)
  %9754 = call float @dx.op.binary.f32(i32 36, float %9753, float %9752)  ; FMin(a,b)
  %9755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9756 = extractvalue %dx.types.CBufRet.f32 %9755, 1
  %9757 = extractvalue %dx.types.CBufRet.f32 %9755, 2
  %9758 = extractvalue %dx.types.CBufRet.f32 %9755, 0
  %9759 = select i1 %8261, float %9758, float 0.000000e+00
  %9760 = fmul fast float %9756, %9754
  %9761 = fadd fast float %9759, %9760
  %9762 = fadd fast float %9759, %9757
  %9763 = fsub fast float %9756, %9757
  %9764 = fadd fast float %9763, %9759
  %9765 = call float @dx.op.binary.f32(i32 35, float %9761, float %9762)  ; FMax(a,b)
  %9766 = call float @dx.op.binary.f32(i32 36, float %9765, float %9764)  ; FMin(a,b)
  %9767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9698, float %9699, float %9766, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9768 = extractvalue %dx.types.ResRet.f32 %9767, 0
  %9769 = extractvalue %dx.types.ResRet.f32 %9767, 1
  %9770 = extractvalue %dx.types.ResRet.f32 %9767, 2
  %9771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9772 = extractvalue %dx.types.CBufRet.i32 %9771, 0
  %9773 = extractvalue %dx.types.CBufRet.i32 %9771, 1
  %9774 = uitofp i32 %9772 to float
  %9775 = uitofp i32 %9773 to float
  %9776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9777 = extractvalue %dx.types.CBufRet.f32 %9776, 0
  %9778 = extractvalue %dx.types.CBufRet.f32 %9776, 1
  %9779 = fmul fast float %9774, %9698
  %9780 = fmul fast float %9775, %9699
  %9781 = fadd fast float %9779, -5.000000e-01
  %9782 = fadd fast float %9780, -5.000000e-01
  %9783 = call float @dx.op.unary.f32(i32 22, float %9781)  ; Frc(value)
  %9784 = call float @dx.op.unary.f32(i32 22, float %9782)  ; Frc(value)
  %9785 = fmul fast float %9783, %9783
  %9786 = fmul fast float %9785, %9783
  %9787 = fsub fast float 3.000000e+00, %9783
  %9788 = fmul fast float %9785, %9787
  %9789 = fmul fast float %9783, 3.000000e+00
  %9790 = fmul fast float %9786, 3.000000e+00
  %9791 = fmul fast float %9785, 6.000000e+00
  %9792 = fsub fast float %9790, %9791
  %9793 = fadd fast float %9792, 4.000000e+00
  %9794 = fmul fast float %9793, 0x3FC5555560000000
  %9795 = fmul fast float %9786, -3.000000e+00
  %9796 = fadd fast float %9785, %9783
  %9797 = fmul fast float %9796, 3.000000e+00
  %9798 = fadd fast float %9795, 1.000000e+00
  %9799 = fadd fast float %9798, %9797
  %9800 = fmul fast float %9786, 0x3FC5555560000000
  %9801 = fmul fast float %9784, %9784
  %9802 = fmul fast float %9801, %9784
  %9803 = fsub fast float 3.000000e+00, %9784
  %9804 = fmul fast float %9801, %9803
  %9805 = fmul fast float %9784, 3.000000e+00
  %9806 = fmul fast float %9802, 3.000000e+00
  %9807 = fmul fast float %9801, 6.000000e+00
  %9808 = fsub fast float %9806, %9807
  %9809 = fadd fast float %9808, 4.000000e+00
  %9810 = fmul fast float %9809, 0x3FC5555560000000
  %9811 = fmul fast float %9802, -3.000000e+00
  %9812 = fadd fast float %9801, %9784
  %9813 = fmul fast float %9812, 3.000000e+00
  %9814 = fadd fast float %9811, 1.000000e+00
  %9815 = fadd fast float %9814, %9813
  %9816 = fmul fast float %9802, 0x3FC5555560000000
  %9817 = fadd fast float %9783, 1.000000e+00
  %9818 = fsub fast float 1.000000e+00, %9789
  %9819 = fadd fast float %9818, %9788
  %9820 = fadd fast float %9819, %9793
  %9821 = fmul fast float %9820, 0x3FC5555560000000
  %9822 = fdiv fast float %9794, %9821
  %9823 = fsub fast float %9817, %9822
  %9824 = fsub fast float 1.000000e+00, %9783
  %9825 = fadd fast float %9799, %9786
  %9826 = fmul fast float %9825, 0x3FC5555560000000
  %9827 = fdiv fast float %9800, %9826
  %9828 = fadd fast float %9824, %9827
  %9829 = fadd fast float %9784, 1.000000e+00
  %9830 = fsub fast float 1.000000e+00, %9805
  %9831 = fadd fast float %9830, %9804
  %9832 = fadd fast float %9831, %9809
  %9833 = fmul fast float %9832, 0x3FC5555560000000
  %9834 = fdiv fast float %9810, %9833
  %9835 = fsub fast float %9829, %9834
  %9836 = fsub fast float 1.000000e+00, %9784
  %9837 = fadd fast float %9815, %9802
  %9838 = fmul fast float %9837, 0x3FC5555560000000
  %9839 = fdiv fast float %9816, %9838
  %9840 = fadd fast float %9839, %9836
  %9841 = fmul fast float %9823, %9777
  %9842 = fsub fast float %9698, %9841
  %9843 = fmul fast float %9828, %9777
  %9844 = fadd fast float %9843, %9698
  %9845 = fmul fast float %9840, %9778
  %9846 = fadd fast float %9845, %9699
  %9847 = fmul fast float %9835, %9778
  %9848 = fsub fast float %9699, %9847
  %9849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9842, float %9848, float %9766, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9850 = extractvalue %dx.types.ResRet.f32 %9849, 0
  %9851 = extractvalue %dx.types.ResRet.f32 %9849, 1
  %9852 = extractvalue %dx.types.ResRet.f32 %9849, 2
  %9853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9844, float %9848, float %9766, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9854 = extractvalue %dx.types.ResRet.f32 %9853, 0
  %9855 = extractvalue %dx.types.ResRet.f32 %9853, 1
  %9856 = extractvalue %dx.types.ResRet.f32 %9853, 2
  %9857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9842, float %9846, float %9766, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9858 = extractvalue %dx.types.ResRet.f32 %9857, 0
  %9859 = extractvalue %dx.types.ResRet.f32 %9857, 1
  %9860 = extractvalue %dx.types.ResRet.f32 %9857, 2
  %9861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9844, float %9846, float %9766, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9862 = extractvalue %dx.types.ResRet.f32 %9861, 0
  %9863 = extractvalue %dx.types.ResRet.f32 %9861, 1
  %9864 = extractvalue %dx.types.ResRet.f32 %9861, 2
  %9865 = fsub fast float %9858, %9850
  %9866 = fsub fast float %9859, %9851
  %9867 = fsub fast float %9860, %9852
  %9868 = fmul fast float %9865, %9838
  %9869 = fmul fast float %9866, %9838
  %9870 = fmul fast float %9867, %9838
  %9871 = fadd fast float %9868, %9850
  %9872 = fadd fast float %9869, %9851
  %9873 = fadd fast float %9870, %9852
  %9874 = fsub fast float %9862, %9854
  %9875 = fsub fast float %9863, %9855
  %9876 = fsub fast float %9864, %9856
  %9877 = fmul fast float %9874, %9838
  %9878 = fmul fast float %9875, %9838
  %9879 = fmul fast float %9876, %9838
  %9880 = fsub fast float %9854, %9871
  %9881 = fadd fast float %9880, %9877
  %9882 = fsub fast float %9855, %9872
  %9883 = fadd fast float %9882, %9878
  %9884 = fsub fast float %9856, %9873
  %9885 = fadd fast float %9884, %9879
  %9886 = fmul fast float %9881, %9826
  %9887 = fmul fast float %9883, %9826
  %9888 = fmul fast float %9885, %9826
  %9889 = fadd fast float %9886, %9871
  %9890 = fadd fast float %9887, %9872
  %9891 = fadd fast float %9888, %9873
  %9892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9893 = extractvalue %dx.types.CBufRet.f32 %9892, 1
  %9894 = fmul fast float %9889, %9893
  %9895 = fmul fast float %9890, %9893
  %9896 = fmul fast float %9891, %9893
  br label %9897

; <label>:9897                                    ; preds = %9728, %9685
  %9898 = phi float [ %9768, %9728 ], [ 1.000000e+00, %9685 ]
  %9899 = phi float [ %9769, %9728 ], [ 1.000000e+00, %9685 ]
  %9900 = phi float [ %9770, %9728 ], [ 1.000000e+00, %9685 ]
  %9901 = phi float [ %9894, %9728 ], [ 0.000000e+00, %9685 ]
  %9902 = phi float [ %9895, %9728 ], [ 0.000000e+00, %9685 ]
  %9903 = phi float [ %9896, %9728 ], [ 0.000000e+00, %9685 ]
  %9904 = fmul fast float %9901, %8239
  %9905 = fmul fast float %9902, %8239
  %9906 = fmul fast float %9903, %8239
  %9907 = fmul fast float %9898, %9692
  %9908 = call float @dx.op.dot3.f32(i32 55, float %9898, float %9899, float %9900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9909 = call float @dx.op.dot3.f32(i32 55, float %9904, float %9905, float %9906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9910 = select i1 %223, float %9908, float %9898
  %9911 = select i1 %223, float %9908, float %9899
  %9912 = select i1 %223, float 1.000000e+00, float %9900
  %9913 = select i1 %223, float %9909, float %9904
  %9914 = select i1 %223, float 0.000000e+00, float %9905
  %9915 = select i1 %223, float 0.000000e+00, float %9906
  %9916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9917 = extractvalue %dx.types.CBufRet.i32 %9916, 3
  %9918 = and i32 %9917, 3
  %9919 = icmp ne i32 %9918, 0
  %9920 = and i32 %9917, 4
  %9921 = icmp ne i32 %9920, 0
  %9922 = and i1 %9919, %9921
  %9923 = and i1 %223, %9922
  br i1 %9923, label %9924, label %9930

; <label>:9924                                    ; preds = %9897
  %9925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9926 = extractvalue %dx.types.CBufRet.f32 %9925, 1
  %9927 = fadd fast float %9907, -1.000000e+00
  %9928 = fmul fast float %9926, %9927
  %9929 = fadd fast float %9928, 1.000000e+00
  br label %9930

; <label>:9930                                    ; preds = %9924, %9897
  %9931 = phi float [ %9929, %9924 ], [ %9907, %9897 ]
  %9932 = fadd fast float %9689, %9686
  %9933 = fmul fast float %9910, %9932
  %9934 = fadd fast float %9933, %9913
  %9935 = fadd fast float %9690, %9687
  %9936 = fmul fast float %9911, %9935
  %9937 = fadd fast float %9936, %9914
  %9938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9939 = extractvalue %dx.types.CBufRet.f32 %9938, 0
  br i1 %223, label %9940, label %9964

; <label>:9940                                    ; preds = %9930
  %9941 = fadd fast float %9934, %9937
  %9942 = fmul fast float %9939, %9941
  %9943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9944 = extractvalue %dx.types.CBufRet.f32 %9943, 3
  %9945 = extractvalue %dx.types.CBufRet.f32 %8243, 1
  %9946 = fsub fast float %8248, %8242
  %9947 = fadd fast float %9946, %8249
  %9948 = fsub fast float %9947, %9945
  %9949 = extractvalue %dx.types.CBufRet.f32 %8243, 2
  %9950 = fmul fast float %9948, %9949
  %9951 = call float @dx.op.unary.f32(i32 7, float %9950)  ; Saturate(value)
  %9952 = fsub fast float %9951, %9944
  %9953 = fmul fast float %9952, %9931
  %9954 = fadd fast float %9953, %9944
  %9955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9956 = extractvalue %dx.types.CBufRet.f32 %9955, 0
  %9957 = fsub fast float %9954, %9956
  %9958 = fmul fast float %9957, 1.000000e+01
  %9959 = call float @dx.op.unary.f32(i32 7, float %9958)  ; Saturate(value)
  %9960 = fsub fast float %5168, %8239
  %9961 = fmul fast float %9959, %9960
  %9962 = fadd fast float %9961, %8239
  %9963 = fmul fast float %9962, %9954
  br label %9988

; <label>:9964                                    ; preds = %9930
  %9965 = fadd fast float %9691, %9688
  %9966 = fmul fast float %9912, %9965
  %9967 = fadd fast float %9966, %9915
  %9968 = fmul fast float %9939, %9934
  %9969 = fmul fast float %9939, %9937
  %9970 = fmul fast float %9939, %9967
  %9971 = call float @dx.op.binary.f32(i32 35, float %9969, float %9970)  ; FMax(a,b)
  %9972 = call float @dx.op.binary.f32(i32 35, float %9968, float %9971)  ; FMax(a,b)
  %9973 = call float @dx.op.binary.f32(i32 35, float %9972, float %8239)  ; FMax(a,b)
  %9974 = fcmp fast ugt float %9973, 0x3F10000000000000
  br i1 %9974, label %9976, label %9975

; <label>:9975                                    ; preds = %9964
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9976

; <label>:9976                                    ; preds = %9975, %9964
  %9977 = add i32 %56, 356
  %9978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9977, i32 undef)  ; BufferLoad(srv,index,wot)
  %9979 = extractvalue %dx.types.ResRet.i32 %9978, 0
  %9980 = and i32 %9979, 32
  %9981 = icmp eq i32 %9980, 0
  br i1 %9981, label %9988, label %9982

; <label>:9982                                    ; preds = %9976
  %9983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9984 = extractvalue %dx.types.CBufRet.f32 %9983, 0
  %9985 = fmul fast float %9984, 0x3FE99999A0000000
  %9986 = fadd fast float %9984, %9968
  %9987 = fadd fast float %9985, %9970
  br label %9988

; <label>:9988                                    ; preds = %9982, %9976, %9940
  %9989 = phi float [ %9942, %9940 ], [ %9986, %9982 ], [ %9968, %9976 ]
  %9990 = phi float [ %9963, %9940 ], [ %9969, %9982 ], [ %9969, %9976 ]
  %9991 = phi float [ %9962, %9940 ], [ %9987, %9982 ], [ %9970, %9976 ]
  %9992 = phi float [ %9962, %9940 ], [ %8239, %9982 ], [ %8239, %9976 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9993 = call float @dx.op.binary.f32(i32 36, float %9989, float 3.225500e+04)  ; FMin(a,b)
  %9994 = call float @dx.op.binary.f32(i32 36, float %9990, float 3.225500e+04)  ; FMin(a,b)
  %9995 = call float @dx.op.binary.f32(i32 36, float %9991, float 3.225500e+04)  ; FMin(a,b)
  %9996 = call float @dx.op.binary.f32(i32 36, float %9992, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9993)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9994)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9995)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9996)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!68}
!dx.entryPoints = !{!69}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !57, !60}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !32}
!32 = !{i32 0, i32 5}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !42}
!42 = !{i32 0, i32 14}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !42}
!55 = !{i32 46, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!57 = !{!58, !59}
!58 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[47 x i32] [i32 45, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !93}
!70 = !{!71, !91, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !88, !90}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 1, i8 0, !74}
!76 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 2, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"SH_RED", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 5, i8 0, !74}
!82 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!83 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 7, i8 0, !74}
!84 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 8, i8 0, !77}
!85 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 9, i8 0, !74}
!86 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 10, i8 0, !87}
!87 = !{i32 3, i32 13}
!88 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !73, i8 1, i32 1, i8 1, i32 11, i8 0, !89}
!89 = !{i32 3, i32 1}
!90 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!91 = !{!92}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!93 = !{i32 0, i64 16}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!104, !106, !108, !110}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !101, i64 0}
!125 = !{!126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!140 = distinct !{!140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!149 = !{!145}
!150 = !{!146, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!159 = !{!155}
!160 = !{!156, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 2}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}

