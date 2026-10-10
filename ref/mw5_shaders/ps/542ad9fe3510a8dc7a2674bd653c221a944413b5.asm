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
; shader hash: f36bada422e1e6da6ca792f793db4a81
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
  %417 = add i32 %56, 552
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
  br i1 %473, label %1190, label %474

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
  %1112 = and i32 %1111, 26624
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1171, label %1114

; <label>:1114                                    ; preds = %1106
  %1115 = add i32 %56, 536
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %1117, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1119, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 3
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = and i32 %1125, 1048576
  %1127 = icmp ne i32 %1126, 0
  %1128 = and i32 %1125, 8192
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1144, label %1130

; <label>:1130                                    ; preds = %1114
  %1131 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1132 = select i1 %1127, float %1131, float %1122
  %1133 = select i1 %1127, float %1121, float %1122
  %1134 = add i32 %56, 96
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = lshr i32 %1136, 16
  %1138 = and i32 %1137, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = fmul fast float %1139, 0x3F80101020000000
  %1141 = fmul fast float %1140, %1133
  %1142 = fmul fast float %1140, %1122
  %1143 = fmul fast float %1140, %1132
  br label %1144

; <label>:1144                                    ; preds = %1130, %1114
  %1145 = phi float [ %1141, %1130 ], [ 0.000000e+00, %1114 ]
  %1146 = phi float [ %1142, %1130 ], [ 0.000000e+00, %1114 ]
  %1147 = phi float [ %1143, %1130 ], [ 0.000000e+00, %1114 ]
  %1148 = and i32 %1125, 2048
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1158, label %1150

; <label>:1150                                    ; preds = %1144
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = shl i32 %1152, 4
  %1154 = and i32 %1153, 32752
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = fmul fast float %1155, %1123
  %1157 = call float @dx.op.binary.f32(i32 35, float %1156, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1158

; <label>:1158                                    ; preds = %1150, %1144
  %1159 = phi float [ %1157, %1150 ], [ 0x3F70101020000000, %1144 ]
  %1160 = and i32 %1125, 16384
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1171, label %1162

; <label>:1162                                    ; preds = %1158
  %1163 = add i32 %56, 96
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = lshr i32 %1165, 24
  %1167 = uitofp i32 %1166 to float
  %1168 = fmul fast float %1121, 0x3F70101020000000
  %1169 = select i1 %1127, float 0x3F70101020000000, float %1168
  %1170 = fmul fast float %1169, %1167
  br label %1171

; <label>:1171                                    ; preds = %1162, %1158, %1106
  %1172 = phi float [ %1145, %1162 ], [ %1145, %1158 ], [ 0.000000e+00, %1106 ]
  %1173 = phi float [ %1146, %1162 ], [ %1146, %1158 ], [ 0.000000e+00, %1106 ]
  %1174 = phi float [ %1147, %1162 ], [ %1147, %1158 ], [ 0.000000e+00, %1106 ]
  %1175 = phi float [ %1159, %1162 ], [ %1159, %1158 ], [ 0x3F70101020000000, %1106 ]
  %1176 = phi float [ %1170, %1162 ], [ 0.000000e+00, %1158 ], [ 0.000000e+00, %1106 ]
  %1177 = add i32 %56, 96
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = and i32 %1179, 255
  %1181 = uitofp i32 %1180 to float
  %1182 = lshr i32 %1179, 8
  %1183 = and i32 %1182, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = call float @dx.op.dot3.f32(i32 55, float %979, float %980, float %981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1186 = fmul fast float %1184, %1185
  %1187 = fadd fast float %1186, %1181
  %1188 = fmul fast float %1187, 0x3F70101020000000
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  br label %1190

; <label>:1190                                    ; preds = %1171, %459
  %1191 = phi float [ 0.000000e+00, %459 ], [ %1060, %1171 ]
  %1192 = phi float [ 0.000000e+00, %459 ], [ %1061, %1171 ]
  %1193 = phi float [ 0.000000e+00, %459 ], [ %979, %1171 ]
  %1194 = phi float [ 0.000000e+00, %459 ], [ %980, %1171 ]
  %1195 = phi float [ 0.000000e+00, %459 ], [ %981, %1171 ]
  %1196 = phi float [ 0.000000e+00, %459 ], [ %1107, %1171 ]
  %1197 = phi float [ 0.000000e+00, %459 ], [ %1108, %1171 ]
  %1198 = phi float [ 0.000000e+00, %459 ], [ %1109, %1171 ]
  %1199 = phi float [ 0.000000e+00, %459 ], [ %1172, %1171 ]
  %1200 = phi float [ 0.000000e+00, %459 ], [ %1173, %1171 ]
  %1201 = phi float [ 0.000000e+00, %459 ], [ %1174, %1171 ]
  %1202 = phi float [ 0.000000e+00, %459 ], [ %965, %1171 ]
  %1203 = phi float [ 0.000000e+00, %459 ], [ %761, %1171 ]
  %1204 = phi float [ 0.000000e+00, %459 ], [ %1059, %1171 ]
  %1205 = phi float [ 0.000000e+00, %459 ], [ %1062, %1171 ]
  %1206 = phi float [ 0.000000e+00, %459 ], [ %1175, %1171 ]
  %1207 = phi float [ 0.000000e+00, %459 ], [ %1176, %1171 ]
  %1208 = phi float [ 0.000000e+00, %459 ], [ %1189, %1171 ]
  br i1 %407, label %2161, label %1209

; <label>:1209                                    ; preds = %1190
  %1210 = icmp ult i32 %465, 2
  %1211 = add i32 %56, 40
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = add i32 %56, 44
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = or i32 %1216, %1213
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %2161, label %1219

; <label>:1219                                    ; preds = %1209
  %1220 = and i32 %1213, 262144
  %1221 = icmp ne i32 %1220, 0
  %1222 = select i1 %1221, float %59, float 1.000000e+00
  %1223 = select i1 %1221, float %60, float 0.000000e+00
  %1224 = select i1 %1221, float %61, float 0.000000e+00
  %1225 = select i1 %1221, float %62, float 1.000000e+00
  %1226 = select i1 %1221, float %63, float %84
  %1227 = select i1 %1221, float %64, float %85
  %1228 = add i32 %56, 300
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = lshr i32 %1230, 16
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = fmul fast float %1232, 0x3F50624DE0000000
  %1234 = add i32 %56, 104
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = lshr i32 %1236, 16
  %1238 = and i32 %1237, 255
  %1239 = lshr i32 %1236, 24
  %1240 = add i32 %56, 308
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 65535
  %1244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1243)  ; LegacyF16ToF32(value)
  %1245 = lshr i32 %1242, 16
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = add i32 %56, 48
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = lshr i32 %1249, 22
  %1251 = shl nuw nsw i32 %1250, 5
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = shl i32 %1249, 4
  %1254 = and i32 %1253, 32752
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = lshr i32 %1249, 7
  %1257 = and i32 %1256, 32752
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 3
  %1261 = fmul fast float %1260, 1.000000e+03
  %1262 = fmul fast float %317, %1261
  %1263 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1264 = fadd fast float %1263, %307
  %1265 = fmul fast float %318, %1261
  %1266 = call float @dx.op.unary.f32(i32 22, float %1265)  ; Frc(value)
  %1267 = fadd fast float %1266, %309
  %1268 = fmul fast float %1233, %1261
  %1269 = call float @dx.op.unary.f32(i32 22, float %1268)  ; Frc(value)
  %1270 = fmul fast float %1269, 0x401921FB60000000
  %1271 = fadd fast float %1270, %1252
  %1272 = call float @dx.op.unary.f32(i32 13, float %1271)  ; Sin(value)
  %1273 = call float @dx.op.unary.f32(i32 12, float %1271)  ; Cos(value)
  %1274 = fsub fast float -0.000000e+00, %1272
  %1275 = fadd fast float %1226, -5.000000e-01
  %1276 = fadd fast float %1227, -5.000000e-01
  %1277 = fmul fast float %1244, %1275
  %1278 = fmul fast float %1246, %1276
  %1279 = fadd fast float %1277, 5.000000e-01
  %1280 = fadd fast float %1278, 5.000000e-01
  %1281 = fmul fast float %1255, %1279
  %1282 = fmul fast float %1258, %1280
  %1283 = fmul fast float %1273, %1281
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %1282, float %1283)  ; FMad(a,b,c)
  %1285 = fmul fast float %1272, %1281
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1282, float %1285)  ; FMad(a,b,c)
  %1287 = fadd fast float %1264, %1284
  %1288 = fadd fast float %1267, %1286
  %1289 = icmp ugt i32 %1238, 1
  %1290 = icmp ugt i32 %1236, 33554431
  %1291 = or i1 %1290, %1289
  br i1 %1291, label %1292, label %1317

; <label>:1292                                    ; preds = %1219
  %1293 = add i32 %56, 244
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 16
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = fmul fast float %1260, %1297
  %1299 = call float @dx.op.unary.f32(i32 22, float %1298)  ; Frc(value)
  %1300 = mul nuw nsw i32 %1238, %1239
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1299, %1301
  %1303 = call float @dx.op.unary.f32(i32 27, float %1302)  ; Round_ni(value)
  %1304 = fptoui float %1303 to i32
  %1305 = urem i32 %1304, %1238
  %1306 = udiv i32 %1304, %1239
  %1307 = call float @dx.op.unary.f32(i32 22, float %1287)  ; Frc(value)
  %1308 = call float @dx.op.unary.f32(i32 22, float %1288)  ; Frc(value)
  %1309 = uitofp i32 %1305 to float
  %1310 = uitofp i32 %1306 to float
  %1311 = fadd fast float %1307, %1309
  %1312 = fadd fast float %1308, %1310
  %1313 = uitofp i32 %1238 to float
  %1314 = uitofp i32 %1239 to float
  %1315 = fdiv fast float %1311, %1313
  %1316 = fdiv fast float %1312, %1314
  br label %1317

; <label>:1317                                    ; preds = %1292, %1219
  %1318 = phi float [ %1315, %1292 ], [ %1287, %1219 ]
  %1319 = phi float [ %1316, %1292 ], [ %1288, %1219 ]
  %1320 = and i32 %1213, 16777216
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1431, label %1322

; <label>:1322                                    ; preds = %1317
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.CBufRet.f32 %1323, 2
  %1327 = fadd fast float %1324, %161
  %1328 = fadd fast float %1325, %162
  %1329 = fadd fast float %1326, %163
  %1330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1331 = extractvalue %dx.types.CBufRet.f32 %1330, 0
  %1332 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1333 = icmp eq i32 %57, 65535
  br i1 %1333, label %1428, label %1334

; <label>:1334                                    ; preds = %1322
  %1335 = lshr i32 %57, 1
  %1336 = shl i32 %1335, 2
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %57, 1
  %1340 = icmp ne i32 %1339, 0
  %1341 = lshr i32 %1338, 16
  %1342 = and i32 %1338, 65535
  %1343 = select i1 %1340, i32 %1341, i32 %1342
  %1344 = icmp eq i32 %1343, 65535
  br i1 %1344, label %1424, label %1345

; <label>:1345                                    ; preds = %1334
  %1346 = mul nuw nsw i32 %1343, 40
  %1347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.ResRet.f32 %1347, 1
  %1350 = extractvalue %dx.types.ResRet.f32 %1347, 2
  %1351 = add nuw nsw i32 %1346, 12
  %1352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1351, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.ResRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.ResRet.f32 %1352, 2
  %1356 = add nuw nsw i32 %1346, 24
  %1357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.f32 %1357, 0
  %1359 = extractvalue %dx.types.ResRet.f32 %1357, 1
  %1360 = extractvalue %dx.types.ResRet.f32 %1357, 2
  %1361 = add nuw nsw i32 %1346, 36
  %1362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = fsub fast float %1327, %1348
  %1365 = fsub fast float %1328, %1349
  %1366 = fsub fast float %1329, %1350
  %1367 = fmul fast float %1363, %1364
  %1368 = fmul fast float %1363, %1365
  %1369 = fmul fast float %1363, %1366
  %1370 = call float @dx.op.unary.f32(i32 27, float %1367)  ; Round_ni(value)
  %1371 = call float @dx.op.unary.f32(i32 27, float %1368)  ; Round_ni(value)
  %1372 = call float @dx.op.unary.f32(i32 27, float %1369)  ; Round_ni(value)
  %1373 = fadd fast float %1370, 5.000000e-01
  %1374 = fadd fast float %1371, 5.000000e-01
  %1375 = fadd fast float %1372, 5.000000e-01
  %1376 = fmul fast float %1373, %1353
  %1377 = fmul fast float %1374, %1354
  %1378 = fmul fast float %1375, %1355
  %1379 = shl i32 %57, 2
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = add i32 %1381, 0
  %1383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1384 = call float @dx.op.unary.f32(i32 22, float %1376)  ; Frc(value)
  %1385 = call float @dx.op.unary.f32(i32 22, float %1377)  ; Frc(value)
  %1386 = call float @dx.op.unary.f32(i32 22, float %1378)  ; Frc(value)
  %1387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1383, %dx.types.Handle %49, float %1384, float %1385, float %1386, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1387, 2
  %1391 = fmul fast float %1388, 1.023000e+03
  %1392 = fmul fast float %1389, 1.023000e+03
  %1393 = fmul fast float %1390, 1.023000e+03
  %1394 = fadd fast float %1391, 5.000000e-01
  %1395 = fadd fast float %1392, 5.000000e-01
  %1396 = fadd fast float %1393, 5.000000e-01
  %1397 = call float @dx.op.unary.f32(i32 27, float %1394)  ; Round_ni(value)
  %1398 = call float @dx.op.unary.f32(i32 27, float %1395)  ; Round_ni(value)
  %1399 = call float @dx.op.unary.f32(i32 27, float %1396)  ; Round_ni(value)
  %1400 = fsub fast float %1367, %1370
  %1401 = fsub fast float %1368, %1371
  %1402 = fsub fast float %1369, %1372
  %1403 = fmul fast float %1400, 7.500000e-01
  %1404 = fmul fast float %1401, 7.500000e-01
  %1405 = fmul fast float %1402, 7.500000e-01
  %1406 = fadd fast float %1370, 1.250000e-01
  %1407 = fadd fast float %1406, %1403
  %1408 = fadd fast float %1407, %1397
  %1409 = fadd fast float %1371, 1.250000e-01
  %1410 = fadd fast float %1409, %1404
  %1411 = fadd fast float %1410, %1398
  %1412 = fadd fast float %1372, 1.250000e-01
  %1413 = fadd fast float %1412, %1405
  %1414 = fadd fast float %1413, %1399
  %1415 = fmul fast float %1408, %1358
  %1416 = fmul fast float %1411, %1359
  %1417 = fmul fast float %1414, %1360
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = add i32 %1419, 0
  %1421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1421, %dx.types.Handle %47, float %1415, float %1416, float %1417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  br label %1424

; <label>:1424                                    ; preds = %1345, %1334
  %1425 = phi float [ %1423, %1345 ], [ -1.000000e+00, %1334 ]
  %1426 = fadd fast float %1425, %1332
  %1427 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  br label %1428

; <label>:1428                                    ; preds = %1424, %1322
  %1429 = phi float [ %1427, %1424 ], [ %1332, %1322 ]
  %1430 = fmul fast float %1429, %462
  br label %1431

; <label>:1431                                    ; preds = %1428, %1317
  %1432 = phi float [ %1430, %1428 ], [ %462, %1317 ]
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 256
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1483, label %1437

; <label>:1437                                    ; preds = %1431
  %1438 = add i32 %56, 508
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = add i32 %1440, 0
  %1442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1442, %dx.types.Handle %99, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = add i32 %56, 116
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = shl i32 %1447, 4
  %1449 = and i32 %1448, 32752
  %1450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1449)  ; LegacyF16ToF32(value)
  %1451 = lshr i32 %1447, 7
  %1452 = and i32 %1451, 32752
  %1453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1452)  ; LegacyF16ToF32(value)
  %1454 = fsub fast float 1.000000e+00, %1432
  %1455 = call float @dx.op.binary.f32(i32 35, float %1454, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1456 = bitcast float %1432 to i32
  %1457 = sitofp i32 %1456 to float
  %1458 = fadd fast float %1457, 0xC1CFBF8940000000
  %1459 = fmul fast float %1453, %1458
  %1460 = fadd fast float %1459, 0x41CFBF8940000000
  %1461 = fptosi float %1460 to i32
  %1462 = bitcast i32 %1461 to float
  %1463 = bitcast float %1455 to i32
  %1464 = sitofp i32 %1463 to float
  %1465 = fadd fast float %1464, 0xC1CFBF8940000000
  %1466 = fmul fast float %1465, %1453
  %1467 = fadd fast float %1466, 0x41CFBF8940000000
  %1468 = fptosi float %1467 to i32
  %1469 = bitcast i32 %1468 to float
  %1470 = fmul fast float %1462, %1450
  %1471 = fmul fast float %1469, %1450
  %1472 = fsub fast float %1455, %1470
  %1473 = fadd fast float %1471, %1455
  %1474 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  %1475 = call float @dx.op.unary.f32(i32 7, float %1473)  ; Saturate(value)
  %1476 = fsub fast float %1444, %1474
  %1477 = fsub fast float %1475, %1474
  %1478 = bitcast float %1477 to i32
  %1479 = sub nsw i32 2129859010, %1478
  %1480 = bitcast i32 %1479 to float
  %1481 = fmul fast float %1480, %1476
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  br label %1483

; <label>:1483                                    ; preds = %1437, %1431
  %1484 = phi float [ %1482, %1437 ], [ %1432, %1431 ]
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 128
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1505, label %1489

; <label>:1489                                    ; preds = %1483
  %1490 = add i32 %56, 492
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = add i32 %1492, 0
  %1494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1495 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1494, %dx.types.Handle %99, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 524288
  %1500 = icmp ne i32 %1499, 0
  %1501 = fcmp fast ogt float %1496, 0x3FE0101020000000
  %1502 = select i1 %1501, float 1.000000e+00, float 0.000000e+00
  %1503 = select i1 %1500, float %1502, float %1496
  %1504 = fmul fast float %1503, %1484
  br label %1505

; <label>:1505                                    ; preds = %1489, %1483
  %1506 = phi float [ %1504, %1489 ], [ %1484, %1483 ]
  %1507 = fcmp fast ult float %1506, 0x3F70101020000000
  br i1 %1507, label %2161, label %1508

; <label>:1508                                    ; preds = %1505
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 16
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1711, label %1513

; <label>:1513                                    ; preds = %1508
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = add i32 %56, 444
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = add i32 %1518, 0
  %1520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1520, %dx.types.Handle %98, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1522 = extractvalue %dx.types.ResRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.ResRet.f32 %1521, 1
  %1524 = extractvalue %dx.types.ResRet.f32 %1521, 2
  %1525 = extractvalue %dx.types.ResRet.f32 %1521, 3
  %1526 = and i32 %1515, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = lshr i32 %1515, 8
  %1529 = and i32 %1528, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = fmul fast float %1525, %1527
  %1532 = fadd fast float %1531, %1530
  %1533 = fmul fast float %1532, 0x3F70101000000000
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 512
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1546, label %1538

; <label>:1538                                    ; preds = %1513
  %1539 = add i32 %56, 524
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = add i32 %1541, 0
  %1543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1543, %dx.types.Handle %99, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1545 = extractvalue %dx.types.ResRet.f32 %1544, 0
  br label %1546

; <label>:1546                                    ; preds = %1538, %1513
  %1547 = phi float [ %1545, %1538 ], [ 1.000000e+00, %1513 ]
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 33554432
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1658, label %1552

; <label>:1552                                    ; preds = %1546
  %1553 = add i32 %56, 240
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 65535
  %1557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1556)  ; LegacyF16ToF32(value)
  %1558 = lshr i32 %1555, 16
  %1559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1558)  ; LegacyF16ToF32(value)
  %1560 = add i32 %56, 244
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 65535
  %1564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1563)  ; LegacyF16ToF32(value)
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = lshr i32 %1566, 24
  %1568 = uitofp i32 %1567 to float
  %1569 = fmul fast float %1568, 0x3F70101020000000
  %1570 = and i32 %1566, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = fmul fast float %1571, 0x3F70101020000000
  %1573 = lshr i32 %1566, 8
  %1574 = and i32 %1573, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = fmul fast float %1575, 0x3F70101020000000
  %1577 = lshr i32 %1566, 16
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = add i32 %56, 236
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1581, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = lshr i32 %1583, 24
  %1585 = uitofp i32 %1584 to float
  %1586 = fmul fast float %1585, 0x3F70101020000000
  %1587 = and i32 %1583, 255
  %1588 = uitofp i32 %1587 to float
  %1589 = fmul fast float %1588, 0x3F70101020000000
  %1590 = lshr i32 %1583, 8
  %1591 = and i32 %1590, 255
  %1592 = uitofp i32 %1591 to float
  %1593 = fmul fast float %1592, 0x3F70101020000000
  %1594 = lshr i32 %1583, 16
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = fmul fast float %1596, 0x3F70101020000000
  %1598 = bitcast float %1522 to i32
  %1599 = ashr i32 %1598, 1
  %1600 = sub nsw i32 1597463174, %1599
  %1601 = bitcast i32 %1600 to float
  %1602 = fmul fast float %1522, 5.000000e-01
  %1603 = fmul fast float %1601, %1601
  %1604 = fmul fast float %1603, %1602
  %1605 = fsub fast float 1.500000e+00, %1604
  %1606 = fmul fast float %1601, %1522
  %1607 = fmul fast float %1606, %1605
  %1608 = bitcast float %1523 to i32
  %1609 = ashr i32 %1608, 1
  %1610 = sub nsw i32 1597463174, %1609
  %1611 = bitcast i32 %1610 to float
  %1612 = fmul fast float %1523, 5.000000e-01
  %1613 = fmul fast float %1611, %1611
  %1614 = fmul fast float %1613, %1612
  %1615 = fsub fast float 1.500000e+00, %1614
  %1616 = fmul fast float %1611, %1523
  %1617 = fmul fast float %1616, %1615
  %1618 = bitcast float %1524 to i32
  %1619 = ashr i32 %1618, 1
  %1620 = sub nsw i32 1597463174, %1619
  %1621 = bitcast i32 %1620 to float
  %1622 = fmul fast float %1524, 5.000000e-01
  %1623 = fmul fast float %1621, %1621
  %1624 = fmul fast float %1623, %1622
  %1625 = fsub fast float 1.500000e+00, %1624
  %1626 = fmul fast float %1621, %1524
  %1627 = fmul fast float %1626, %1625
  %1628 = fsub fast float %1607, %1589
  %1629 = fsub fast float %1617, %1593
  %1630 = fsub fast float %1627, %1597
  %1631 = fmul fast float %1628, %1557
  %1632 = fmul fast float %1629, %1559
  %1633 = fmul fast float %1630, %1564
  %1634 = fadd fast float %1631, %1572
  %1635 = fadd fast float %1632, %1576
  %1636 = fadd fast float %1633, %1580
  %1637 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1638 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  %1639 = call float @dx.op.unary.f32(i32 7, float %1636)  ; Saturate(value)
  %1640 = fmul fast float %1637, %1637
  %1641 = fmul fast float %1638, %1638
  %1642 = fmul fast float %1639, %1639
  %1643 = fsub fast float %1640, %1522
  %1644 = fsub fast float %1641, %1523
  %1645 = fsub fast float %1642, %1524
  %1646 = fmul fast float %1643, %1547
  %1647 = fmul fast float %1644, %1547
  %1648 = fmul fast float %1645, %1547
  %1649 = fadd fast float %1646, %1522
  %1650 = fadd fast float %1647, %1523
  %1651 = fadd fast float %1648, %1524
  %1652 = fadd fast float %1569, %1533
  %1653 = fsub fast float %1652, %1586
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = fsub fast float %1654, %1533
  %1656 = fmul fast float %1655, %1547
  %1657 = fadd fast float %1656, %1533
  br label %1711

; <label>:1658                                    ; preds = %1546
  %1659 = and i32 %1549, 134217728
  %1660 = icmp eq i32 %1659, 0
  br i1 %1660, label %1695, label %1661

; <label>:1661                                    ; preds = %1658
  %1662 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1663 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1664 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1665 = fadd fast float %1662, -5.000000e-01
  %1666 = fadd fast float %1663, -5.000000e-01
  %1667 = fadd fast float %1664, -5.000000e-01
  %1668 = fmul fast float %1665, %1547
  %1669 = fmul fast float %1666, %1547
  %1670 = fmul fast float %1667, %1547
  %1671 = fadd fast float %1668, 5.000000e-01
  %1672 = fadd fast float %1669, 5.000000e-01
  %1673 = fadd fast float %1670, 5.000000e-01
  %1674 = call float @dx.op.unary.f32(i32 24, float %1522)  ; Sqrt(value)
  %1675 = call float @dx.op.unary.f32(i32 24, float %1523)  ; Sqrt(value)
  %1676 = call float @dx.op.unary.f32(i32 24, float %1524)  ; Sqrt(value)
  %1677 = fmul fast float %1671, 2.000000e+00
  %1678 = fsub fast float 1.000000e+00, %1677
  %1679 = fmul fast float %1678, %1674
  %1680 = fadd fast float %1679, %1677
  %1681 = fmul fast float %1680, %1674
  %1682 = fmul fast float %1672, 2.000000e+00
  %1683 = fsub fast float 1.000000e+00, %1682
  %1684 = fmul fast float %1683, %1675
  %1685 = fadd fast float %1684, %1682
  %1686 = fmul fast float %1685, %1675
  %1687 = fmul fast float %1673, 2.000000e+00
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = fmul fast float %1688, %1676
  %1690 = fadd fast float %1689, %1687
  %1691 = fmul fast float %1690, %1676
  %1692 = fmul fast float %1681, %1681
  %1693 = fmul fast float %1686, %1686
  %1694 = fmul fast float %1691, %1691
  br label %1711

; <label>:1695                                    ; preds = %1658
  %1696 = fmul fast float %294, %294
  %1697 = fmul fast float %298, %298
  %1698 = fmul fast float %302, %302
  %1699 = fadd fast float %1696, -1.000000e+00
  %1700 = fadd fast float %1697, -1.000000e+00
  %1701 = fadd fast float %1698, -1.000000e+00
  %1702 = fmul fast float %1547, %1699
  %1703 = fmul fast float %1547, %1700
  %1704 = fmul fast float %1547, %1701
  %1705 = fadd fast float %1702, 1.000000e+00
  %1706 = fadd fast float %1703, 1.000000e+00
  %1707 = fadd fast float %1704, 1.000000e+00
  %1708 = fmul fast float %1705, %1522
  %1709 = fmul fast float %1706, %1523
  %1710 = fmul fast float %1707, %1524
  br label %1711

; <label>:1711                                    ; preds = %1695, %1661, %1552, %1508
  %1712 = phi float [ %1657, %1552 ], [ %1533, %1661 ], [ %1533, %1695 ], [ 0x3FA23C0BE0000000, %1508 ]
  %1713 = phi float [ %1649, %1552 ], [ %1692, %1661 ], [ %1708, %1695 ], [ 1.000000e+00, %1508 ]
  %1714 = phi float [ %1650, %1552 ], [ %1693, %1661 ], [ %1709, %1695 ], [ 1.000000e+00, %1508 ]
  %1715 = phi float [ %1651, %1552 ], [ %1694, %1661 ], [ %1710, %1695 ], [ 1.000000e+00, %1508 ]
  %1716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.i32 %1716, 1
  %1718 = and i32 %1717, 1
  %1719 = icmp ne i32 %1718, 0
  %1720 = add i32 %56, 356
  %1721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.i32 %1721, 0
  %1723 = and i32 %1722, 32
  %1724 = icmp ne i32 %1723, 0
  %1725 = and i1 %1719, %1724
  %1726 = select i1 %1725, float 1.000000e+00, float %1713
  %1727 = select i1 %1725, float 0x3FD3333340000000, float %1714
  %1728 = select i1 %1725, float 0x3FD3333340000000, float %1715
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 32
  %1732 = icmp eq i32 %1731, 0
  br i1 %1732, label %1805, label %1733

; <label>:1733                                    ; preds = %1711
  %1734 = add i32 %56, 108
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = add i32 %56, 460
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = add i32 %1739, 0
  %1741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1742 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1741, %dx.types.Handle %98, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.ResRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.ResRet.f32 %1742, 2
  %1746 = extractvalue %dx.types.ResRet.f32 %1742, 3
  %1747 = and i32 %1736, 255
  %1748 = uitofp i32 %1747 to float
  %1749 = lshr i32 %1736, 8
  %1750 = and i32 %1749, 255
  %1751 = uitofp i32 %1750 to float
  %1752 = lshr i32 %1736, 16
  %1753 = and i32 %1752, 255
  %1754 = uitofp i32 %1753 to float
  %1755 = fmul fast float %1754, 0x3F70101000000000
  %1756 = fmul fast float %1743, %1748
  %1757 = fadd fast float %1756, %1751
  %1758 = fmul fast float %1757, 0x3F70101000000000
  %1759 = fadd fast float %1744, -5.000000e-01
  %1760 = fadd fast float %1746, -5.000000e-01
  %1761 = fmul fast float %1759, %1755
  %1762 = fmul fast float %1760, %1755
  %1763 = fadd fast float %1761, 5.000000e-01
  %1764 = fadd fast float %1762, 5.000000e-01
  %1765 = fmul fast float %1763, 2.000000e+00
  %1766 = fadd fast float %1765, -1.000000e+00
  %1767 = fmul fast float %1764, 2.000000e+00
  %1768 = fadd fast float %1767, -1.000000e+00
  %1769 = fadd fast float %1766, %1768
  %1770 = fmul fast float %1769, 5.000000e-01
  %1771 = fsub fast float %1766, %1768
  %1772 = fmul fast float %1771, 5.000000e-01
  %1773 = call float @dx.op.unary.f32(i32 6, float %1770)  ; FAbs(value)
  %1774 = fsub fast float 1.000000e+00, %1773
  %1775 = call float @dx.op.unary.f32(i32 6, float %1772)  ; FAbs(value)
  %1776 = fsub fast float %1774, %1775
  %1777 = call float @dx.op.dot3.f32(i32 55, float %1770, float %1772, float %1776, float %1770, float %1772, float %1776)  ; Dot3(ax,ay,az,bx,by,bz)
  %1778 = call float @dx.op.unary.f32(i32 25, float %1777)  ; Rsqrt(value)
  %1779 = fmul fast float %1770, %1778
  %1780 = fmul fast float %1772, %1778
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = and i32 %1782, 67108864
  %1784 = icmp eq i32 %1783, 0
  br i1 %1784, label %1801, label %1785

; <label>:1785                                    ; preds = %1733
  %1786 = add i32 %56, 296
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = and i32 %1788, 65535
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 65535
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = lshr i32 %1788, 16
  %1796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1795)  ; LegacyF16ToF32(value)
  %1797 = fsub fast float %1758, %1796
  %1798 = fmul fast float %1797, %1790
  %1799 = fadd fast float %1798, %1794
  %1800 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  br label %1801

; <label>:1801                                    ; preds = %1785, %1733
  %1802 = phi float [ %1800, %1785 ], [ %1758, %1733 ]
  %1803 = call float @dx.op.dot2.f32(i32 54, float %1779, float %1780, float %1222, float %1223)  ; Dot2(ax,ay,bx,by)
  %1804 = call float @dx.op.dot2.f32(i32 54, float %1779, float %1780, float %1224, float %1225)  ; Dot2(ax,ay,bx,by)
  br label %1805

; <label>:1805                                    ; preds = %1801, %1711
  %1806 = phi float [ %1802, %1801 ], [ 0x3FD6666660000000, %1711 ]
  %1807 = phi float [ %1803, %1801 ], [ 0.000000e+00, %1711 ]
  %1808 = phi float [ %1804, %1801 ], [ 0.000000e+00, %1711 ]
  %1809 = phi float [ %1745, %1801 ], [ 1.000000e+00, %1711 ]
  %1810 = add i32 %56, 176
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = lshr i32 %1812, 22
  %1814 = shl nuw nsw i32 %1813, 5
  %1815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1814)  ; LegacyF16ToF32(value)
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = and i32 %1817, 64
  %1819 = icmp eq i32 %1818, 0
  br i1 %1819, label %1853, label %1820

; <label>:1820                                    ; preds = %1805
  %1821 = add i32 %56, 476
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = add i32 %1823, 0
  %1825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 131072
  %1829 = icmp eq i32 %1828, 0
  %1830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1825, %dx.types.Handle %98, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1831 = extractvalue %dx.types.ResRet.f32 %1830, 0
  %1832 = extractvalue %dx.types.ResRet.f32 %1830, 1
  %1833 = extractvalue %dx.types.ResRet.f32 %1830, 2
  %1834 = fmul fast float %1831, %282
  %1835 = fmul fast float %1832, %285
  %1836 = fmul fast float %1833, %288
  br i1 %1829, label %1843, label %1837

; <label>:1837                                    ; preds = %1820
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 0
  %1840 = fmul fast float %1839, %1834
  %1841 = fmul fast float %1839, %1835
  %1842 = fmul fast float %1839, %1836
  br label %1843

; <label>:1843                                    ; preds = %1837, %1820
  %1844 = phi float [ %1840, %1837 ], [ %1834, %1820 ]
  %1845 = phi float [ %1841, %1837 ], [ %1835, %1820 ]
  %1846 = phi float [ %1842, %1837 ], [ %1836, %1820 ]
  %1847 = fmul fast float %1844, %1815
  %1848 = select i1 %223, float %1847, float %1844
  %1849 = call float @dx.op.dot3.f32(i32 55, float %1848, float %1845, float %1846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1850 = select i1 %223, float 0.000000e+00, float %1844
  %1851 = select i1 %223, float %1849, float %1845
  %1852 = select i1 %223, float 0.000000e+00, float %1846
  br label %1853

; <label>:1853                                    ; preds = %1843, %1805
  %1854 = phi float [ %1850, %1843 ], [ 0.000000e+00, %1805 ]
  %1855 = phi float [ %1851, %1843 ], [ 0.000000e+00, %1805 ]
  %1856 = phi float [ %1852, %1843 ], [ 0.000000e+00, %1805 ]
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = and i32 %1858, 26624
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %1918, label %1861

; <label>:1861                                    ; preds = %1853
  %1862 = add i32 %56, 540
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = add i32 %1864, 0
  %1866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1866, %dx.types.Handle %99, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1868 = extractvalue %dx.types.ResRet.f32 %1867, 0
  %1869 = extractvalue %dx.types.ResRet.f32 %1867, 1
  %1870 = extractvalue %dx.types.ResRet.f32 %1867, 3
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = and i32 %1872, 1048576
  %1874 = icmp ne i32 %1873, 0
  %1875 = and i32 %1872, 8192
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %1891, label %1877

; <label>:1877                                    ; preds = %1861
  %1878 = extractvalue %dx.types.ResRet.f32 %1867, 2
  %1879 = select i1 %1874, float %1878, float %1869
  %1880 = select i1 %1874, float %1868, float %1869
  %1881 = add i32 %56, 112
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = lshr i32 %1883, 16
  %1885 = and i32 %1884, 255
  %1886 = uitofp i32 %1885 to float
  %1887 = fmul fast float %1886, 0x3F80101020000000
  %1888 = fmul fast float %1887, %1880
  %1889 = fmul fast float %1887, %1869
  %1890 = fmul fast float %1887, %1879
  br label %1891

; <label>:1891                                    ; preds = %1877, %1861
  %1892 = phi float [ %1888, %1877 ], [ 0.000000e+00, %1861 ]
  %1893 = phi float [ %1889, %1877 ], [ 0.000000e+00, %1861 ]
  %1894 = phi float [ %1890, %1877 ], [ 0.000000e+00, %1861 ]
  %1895 = and i32 %1872, 2048
  %1896 = icmp eq i32 %1895, 0
  br i1 %1896, label %1905, label %1897

; <label>:1897                                    ; preds = %1891
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = shl i32 %1899, 4
  %1901 = and i32 %1900, 32752
  %1902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1901)  ; LegacyF16ToF32(value)
  %1903 = fmul fast float %1902, %1870
  %1904 = call float @dx.op.binary.f32(i32 35, float %1903, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1905

; <label>:1905                                    ; preds = %1897, %1891
  %1906 = phi float [ %1904, %1897 ], [ 0x3F70101020000000, %1891 ]
  %1907 = and i32 %1872, 16384
  %1908 = icmp eq i32 %1907, 0
  br i1 %1908, label %1918, label %1909

; <label>:1909                                    ; preds = %1905
  %1910 = add i32 %56, 112
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = lshr i32 %1912, 24
  %1914 = uitofp i32 %1913 to float
  %1915 = fmul fast float %1868, 0x3F70101020000000
  %1916 = select i1 %1874, float 0x3F70101020000000, float %1915
  %1917 = fmul fast float %1916, %1914
  br label %1918

; <label>:1918                                    ; preds = %1909, %1905, %1853
  %1919 = phi float [ %1892, %1909 ], [ %1892, %1905 ], [ 0.000000e+00, %1853 ]
  %1920 = phi float [ %1893, %1909 ], [ %1893, %1905 ], [ 0.000000e+00, %1853 ]
  %1921 = phi float [ %1894, %1909 ], [ %1894, %1905 ], [ 0.000000e+00, %1853 ]
  %1922 = phi float [ %1906, %1909 ], [ %1906, %1905 ], [ 0x3F70101020000000, %1853 ]
  %1923 = phi float [ %1917, %1909 ], [ 0.000000e+00, %1905 ], [ 0.000000e+00, %1853 ]
  %1924 = add i32 %56, 112
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = and i32 %1926, 255
  %1928 = uitofp i32 %1927 to float
  %1929 = lshr i32 %1926, 8
  %1930 = and i32 %1929, 255
  %1931 = uitofp i32 %1930 to float
  %1932 = call float @dx.op.dot3.f32(i32 55, float %1726, float %1727, float %1728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1933 = fmul fast float %1931, %1932
  %1934 = fadd fast float %1933, %1928
  %1935 = fmul fast float %1934, 0x3F70101020000000
  %1936 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  br i1 %1210, label %1937, label %1945

; <label>:1937                                    ; preds = %1918
  %1938 = fsub fast float 1.000000e+00, %1506
  %1939 = fmul fast float %1938, %1193
  %1940 = fmul fast float %1938, %1194
  %1941 = fmul fast float %1938, %1195
  %1942 = fmul fast float %1938, %1196
  %1943 = fmul fast float %1938, %1197
  %1944 = fmul fast float %1938, %1198
  br label %1945

; <label>:1945                                    ; preds = %1937, %1918
  %1946 = phi float [ %1939, %1937 ], [ %1193, %1918 ]
  %1947 = phi float [ %1940, %1937 ], [ %1194, %1918 ]
  %1948 = phi float [ %1941, %1937 ], [ %1195, %1918 ]
  %1949 = phi float [ %1942, %1937 ], [ %1196, %1918 ]
  %1950 = phi float [ %1943, %1937 ], [ %1197, %1918 ]
  %1951 = phi float [ %1944, %1937 ], [ %1198, %1918 ]
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = and i32 %1953, 3
  %1955 = icmp eq i32 %1954, 3
  br i1 %1955, label %2034, label %1956

; <label>:1956                                    ; preds = %1945
  %1957 = and i32 %1953, 16
  %1958 = icmp ne i32 %1957, 0
  %1959 = select i1 %1958, float %1506, float 0.000000e+00
  %1960 = icmp eq i32 %1954, 0
  br i1 %1960, label %1961, label %1989

; <label>:1961                                    ; preds = %1956
  %1962 = and i32 %1953, 64
  %1963 = icmp ne i32 %1962, 0
  %1964 = select i1 %1963, float %1506, float 0.000000e+00
  %1965 = fsub fast float %1726, %1946
  %1966 = fsub fast float %1727, %1947
  %1967 = fsub fast float %1728, %1948
  %1968 = fmul fast float %1959, %1965
  %1969 = fmul fast float %1959, %1966
  %1970 = fmul fast float %1959, %1967
  %1971 = fadd fast float %1968, %1946
  %1972 = fadd fast float %1969, %1947
  %1973 = fadd fast float %1970, %1948
  %1974 = fsub fast float %1712, %1202
  %1975 = fmul fast float %1959, %1974
  %1976 = fadd fast float %1975, %1202
  %1977 = fsub fast float %1854, %1949
  %1978 = fsub fast float %1855, %1950
  %1979 = fsub fast float %1856, %1951
  %1980 = fmul fast float %1964, %1977
  %1981 = fmul fast float %1964, %1978
  %1982 = fmul fast float %1964, %1979
  %1983 = fadd fast float %1980, %1949
  %1984 = fadd fast float %1981, %1950
  %1985 = fadd fast float %1982, %1951
  %1986 = fsub fast float %1936, %1208
  %1987 = fmul fast float %1959, %1986
  %1988 = fadd fast float %1987, %1208
  br label %2034

; <label>:1989                                    ; preds = %1956
  %1990 = icmp eq i32 %1954, 1
  br i1 %1990, label %1991, label %2004

; <label>:1991                                    ; preds = %1989
  %1992 = fadd fast float %1726, -1.000000e+00
  %1993 = fadd fast float %1727, -1.000000e+00
  %1994 = fadd fast float %1728, -1.000000e+00
  %1995 = fmul fast float %1959, %1992
  %1996 = fmul fast float %1959, %1993
  %1997 = fmul fast float %1959, %1994
  %1998 = fadd fast float %1995, 1.000000e+00
  %1999 = fadd fast float %1996, 1.000000e+00
  %2000 = fadd fast float %1997, 1.000000e+00
  %2001 = fmul fast float %1998, %1946
  %2002 = fmul fast float %1999, %1947
  %2003 = fmul fast float %2000, %1948
  br label %2034

; <label>:2004                                    ; preds = %1989
  %2005 = icmp eq i32 %1954, 2
  br i1 %2005, label %2006, label %2034

; <label>:2006                                    ; preds = %2004
  %2007 = call float @dx.op.unary.f32(i32 24, float %1726)  ; Sqrt(value)
  %2008 = call float @dx.op.unary.f32(i32 24, float %1727)  ; Sqrt(value)
  %2009 = call float @dx.op.unary.f32(i32 24, float %1728)  ; Sqrt(value)
  %2010 = fadd fast float %2007, -5.000000e-01
  %2011 = fadd fast float %2008, -5.000000e-01
  %2012 = fadd fast float %2009, -5.000000e-01
  %2013 = fmul fast float %2010, %1959
  %2014 = fmul fast float %2011, %1959
  %2015 = fmul fast float %2012, %1959
  %2016 = fadd fast float %2013, 5.000000e-01
  %2017 = fadd fast float %2014, 5.000000e-01
  %2018 = fadd fast float %2015, 5.000000e-01
  %2019 = fmul fast float %2016, 2.000000e+00
  %2020 = fsub fast float 1.000000e+00, %2019
  %2021 = fmul fast float %2020, %1946
  %2022 = fadd fast float %2021, %2019
  %2023 = fmul fast float %2022, %1946
  %2024 = fmul fast float %2017, 2.000000e+00
  %2025 = fsub fast float 1.000000e+00, %2024
  %2026 = fmul fast float %2025, %1947
  %2027 = fadd fast float %2026, %2024
  %2028 = fmul fast float %2027, %1947
  %2029 = fmul fast float %2018, 2.000000e+00
  %2030 = fsub fast float 1.000000e+00, %2029
  %2031 = fmul fast float %2030, %1948
  %2032 = fadd fast float %2031, %2029
  %2033 = fmul fast float %2032, %1948
  br label %2034

; <label>:2034                                    ; preds = %2006, %2004, %1991, %1961, %1945
  %2035 = phi float [ %1946, %1945 ], [ %2023, %2006 ], [ %1946, %2004 ], [ %2001, %1991 ], [ %1971, %1961 ]
  %2036 = phi float [ %1947, %1945 ], [ %2028, %2006 ], [ %1947, %2004 ], [ %2002, %1991 ], [ %1972, %1961 ]
  %2037 = phi float [ %1948, %1945 ], [ %2033, %2006 ], [ %1948, %2004 ], [ %2003, %1991 ], [ %1973, %1961 ]
  %2038 = phi float [ %1949, %1945 ], [ %1949, %2006 ], [ %1949, %2004 ], [ %1949, %1991 ], [ %1983, %1961 ]
  %2039 = phi float [ %1950, %1945 ], [ %1950, %2006 ], [ %1950, %2004 ], [ %1950, %1991 ], [ %1984, %1961 ]
  %2040 = phi float [ %1951, %1945 ], [ %1951, %2006 ], [ %1951, %2004 ], [ %1951, %1991 ], [ %1985, %1961 ]
  %2041 = phi float [ %1202, %1945 ], [ %1202, %2006 ], [ %1202, %2004 ], [ %1202, %1991 ], [ %1976, %1961 ]
  %2042 = phi float [ %1208, %1945 ], [ %1208, %2006 ], [ %1208, %2004 ], [ %1208, %1991 ], [ %1988, %1961 ]
  %2043 = and i32 %1953, 12
  %2044 = icmp eq i32 %2043, 12
  br i1 %2044, label %2161, label %2045

; <label>:2045                                    ; preds = %2034
  %2046 = and i32 %1953, 2097184
  %2047 = icmp eq i32 %2046, 2097184
  %2048 = select i1 %2047, float %1506, float 0.000000e+00
  %2049 = and i32 %1953, 4194336
  %2050 = icmp eq i32 %2049, 4194336
  %2051 = select i1 %2050, float %1506, float 0.000000e+00
  %2052 = and i32 %1953, 8388640
  %2053 = icmp eq i32 %2052, 8388640
  %2054 = select i1 %2053, float %1506, float 0.000000e+00
  %2055 = and i32 %1953, 2048
  %2056 = icmp ne i32 %2055, 0
  %2057 = select i1 %2056, float %1506, float 0.000000e+00
  %2058 = and i32 %1953, 8192
  %2059 = icmp ne i32 %2058, 0
  %2060 = select i1 %2059, float %1506, float 0.000000e+00
  %2061 = and i32 %1953, 16384
  %2062 = icmp ne i32 %2061, 0
  %2063 = select i1 %2062, float %1506, float 0.000000e+00
  %2064 = icmp eq i32 %2043, 0
  br i1 %2064, label %2065, label %2093

; <label>:2065                                    ; preds = %2045
  %2066 = fsub fast float %1807, %1191
  %2067 = fsub fast float %1808, %1192
  %2068 = fmul fast float %2048, %2066
  %2069 = fmul fast float %2048, %2067
  %2070 = fadd fast float %2068, %1191
  %2071 = fadd fast float %2069, %1192
  %2072 = fsub fast float %1809, %1205
  %2073 = fmul fast float %2051, %2072
  %2074 = fadd fast float %2073, %1205
  %2075 = fsub fast float %1806, %1204
  %2076 = fmul fast float %2054, %2075
  %2077 = fadd fast float %2076, %1204
  %2078 = fsub fast float %1922, %1206
  %2079 = fmul fast float %2057, %2078
  %2080 = fadd fast float %2079, %1206
  %2081 = fsub fast float %1919, %1199
  %2082 = fsub fast float %1920, %1200
  %2083 = fsub fast float %1921, %1201
  %2084 = fmul fast float %2060, %2081
  %2085 = fmul fast float %2060, %2082
  %2086 = fmul fast float %2060, %2083
  %2087 = fadd fast float %2084, %1199
  %2088 = fadd fast float %2085, %1200
  %2089 = fadd fast float %2086, %1201
  %2090 = fsub fast float %1923, %1207
  %2091 = fmul fast float %2063, %2090
  %2092 = fadd fast float %2091, %1207
  br label %2161

; <label>:2093                                    ; preds = %2045
  %2094 = icmp eq i32 %2043, 4
  br i1 %2094, label %2095, label %2137

; <label>:2095                                    ; preds = %2093
  %2096 = fmul fast float %2048, %1807
  %2097 = fmul fast float %2048, %1808
  %2098 = fadd fast float %2096, %1191
  %2099 = fadd fast float %2097, %1192
  %2100 = call float @dx.op.binary.f32(i32 36, float %1205, float %1809)  ; FMin(a,b)
  %2101 = fsub fast float %2100, %1205
  %2102 = fmul fast float %2101, %2051
  %2103 = fadd fast float %2102, %1205
  %2104 = fadd fast float %1806, %1204
  %2105 = fmul fast float %2104, 0x3FF337FAE0000000
  %2106 = fmul fast float %1204, %1204
  %2107 = fmul fast float %1806, %1806
  %2108 = fadd fast float %2107, %2106
  %2109 = fmul fast float %2108, 0x3FE5152B00000000
  %2110 = fmul fast float %1204, 0xBFCC1F85E0000000
  %2111 = fmul fast float %2110, %1806
  %2112 = fadd fast float %2111, 0xBFE1363700000000
  %2113 = fadd fast float %2112, %2105
  %2114 = fsub fast float %2113, %2109
  %2115 = fmul fast float %2104, 0x3FBA6F0D00000000
  %2116 = fmul fast float %2108, 0x3FD0432880000000
  %2117 = fmul fast float %1204, 0xBFEF110800000000
  %2118 = fmul fast float %2117, %1806
  %2119 = fadd fast float %2118, 1.000000e+00
  %2120 = fsub fast float %2119, %2115
  %2121 = fadd fast float %2120, %2116
  %2122 = fdiv fast float %2114, %2121
  %2123 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  %2124 = fsub fast float %2123, %1204
  %2125 = fmul fast float %2124, %2054
  %2126 = fadd fast float %2125, %1204
  %2127 = fmul fast float %2057, %1922
  %2128 = fadd fast float %2127, %1206
  %2129 = fmul fast float %2060, %1919
  %2130 = fmul fast float %2060, %1920
  %2131 = fmul fast float %2060, %1921
  %2132 = fadd fast float %2129, %1199
  %2133 = fadd fast float %2130, %1200
  %2134 = fadd fast float %2131, %1201
  %2135 = fmul fast float %2063, %1923
  %2136 = fadd fast float %2135, %1207
  br label %2161

; <label>:2137                                    ; preds = %2093
  %2138 = icmp eq i32 %2043, 8
  br i1 %2138, label %2139, label %2161

; <label>:2139                                    ; preds = %2137
  %2140 = fmul fast float %2048, %1807
  %2141 = fmul fast float %2048, %1808
  %2142 = fadd fast float %2140, %1191
  %2143 = fadd fast float %2141, %1192
  %2144 = call float @dx.op.binary.f32(i32 36, float %1205, float %1809)  ; FMin(a,b)
  %2145 = fsub fast float %2144, %1205
  %2146 = fmul fast float %2145, %2051
  %2147 = fadd fast float %2146, %1205
  %2148 = fsub fast float %1806, %1204
  %2149 = fmul fast float %2054, %2148
  %2150 = fadd fast float %2149, %1204
  %2151 = fmul fast float %2057, %1922
  %2152 = fadd fast float %2151, %1206
  %2153 = fmul fast float %2060, %1919
  %2154 = fmul fast float %2060, %1920
  %2155 = fmul fast float %2060, %1921
  %2156 = fadd fast float %2153, %1199
  %2157 = fadd fast float %2154, %1200
  %2158 = fadd fast float %2155, %1201
  %2159 = fmul fast float %2063, %1923
  %2160 = fadd fast float %2159, %1207
  br label %2161

; <label>:2161                                    ; preds = %2139, %2137, %2095, %2065, %2034, %1505, %1209, %1190
  %2162 = phi float [ %1191, %2034 ], [ %1191, %1505 ], [ %1191, %1190 ], [ %2142, %2139 ], [ %1191, %2137 ], [ %2098, %2095 ], [ %2070, %2065 ], [ %1191, %1209 ]
  %2163 = phi float [ %1192, %2034 ], [ %1192, %1505 ], [ %1192, %1190 ], [ %2143, %2139 ], [ %1192, %2137 ], [ %2099, %2095 ], [ %2071, %2065 ], [ %1192, %1209 ]
  %2164 = phi float [ %2035, %2034 ], [ %1193, %1505 ], [ %1193, %1190 ], [ %2035, %2139 ], [ %2035, %2137 ], [ %2035, %2095 ], [ %2035, %2065 ], [ %1193, %1209 ]
  %2165 = phi float [ %2036, %2034 ], [ %1194, %1505 ], [ %1194, %1190 ], [ %2036, %2139 ], [ %2036, %2137 ], [ %2036, %2095 ], [ %2036, %2065 ], [ %1194, %1209 ]
  %2166 = phi float [ %2037, %2034 ], [ %1195, %1505 ], [ %1195, %1190 ], [ %2037, %2139 ], [ %2037, %2137 ], [ %2037, %2095 ], [ %2037, %2065 ], [ %1195, %1209 ]
  %2167 = phi float [ %2038, %2034 ], [ %1196, %1505 ], [ %1196, %1190 ], [ %2038, %2139 ], [ %2038, %2137 ], [ %2038, %2095 ], [ %2038, %2065 ], [ %1196, %1209 ]
  %2168 = phi float [ %2039, %2034 ], [ %1197, %1505 ], [ %1197, %1190 ], [ %2039, %2139 ], [ %2039, %2137 ], [ %2039, %2095 ], [ %2039, %2065 ], [ %1197, %1209 ]
  %2169 = phi float [ %2040, %2034 ], [ %1198, %1505 ], [ %1198, %1190 ], [ %2040, %2139 ], [ %2040, %2137 ], [ %2040, %2095 ], [ %2040, %2065 ], [ %1198, %1209 ]
  %2170 = phi float [ %1199, %2034 ], [ %1199, %1505 ], [ %1199, %1190 ], [ %2156, %2139 ], [ %1199, %2137 ], [ %2132, %2095 ], [ %2087, %2065 ], [ %1199, %1209 ]
  %2171 = phi float [ %1200, %2034 ], [ %1200, %1505 ], [ %1200, %1190 ], [ %2157, %2139 ], [ %1200, %2137 ], [ %2133, %2095 ], [ %2088, %2065 ], [ %1200, %1209 ]
  %2172 = phi float [ %1201, %2034 ], [ %1201, %1505 ], [ %1201, %1190 ], [ %2158, %2139 ], [ %1201, %2137 ], [ %2134, %2095 ], [ %2089, %2065 ], [ %1201, %1209 ]
  %2173 = phi float [ %2041, %2034 ], [ %1202, %1505 ], [ %1202, %1190 ], [ %2041, %2139 ], [ %2041, %2137 ], [ %2041, %2095 ], [ %2041, %2065 ], [ %1202, %1209 ]
  %2174 = phi float [ %1204, %2034 ], [ %1204, %1505 ], [ %1204, %1190 ], [ %2150, %2139 ], [ %1204, %2137 ], [ %2126, %2095 ], [ %2077, %2065 ], [ %1204, %1209 ]
  %2175 = phi float [ %1205, %2034 ], [ %1205, %1505 ], [ %1205, %1190 ], [ %2147, %2139 ], [ %1205, %2137 ], [ %2103, %2095 ], [ %2074, %2065 ], [ %1205, %1209 ]
  %2176 = phi float [ %1206, %2034 ], [ %1206, %1505 ], [ %1206, %1190 ], [ %2152, %2139 ], [ %1206, %2137 ], [ %2128, %2095 ], [ %2080, %2065 ], [ %1206, %1209 ]
  %2177 = phi float [ %1207, %2034 ], [ %1207, %1505 ], [ %1207, %1190 ], [ %2160, %2139 ], [ %1207, %2137 ], [ %2136, %2095 ], [ %2092, %2065 ], [ %1207, %1209 ]
  %2178 = phi float [ %2042, %2034 ], [ %1208, %1505 ], [ %1208, %1190 ], [ %2042, %2139 ], [ %2042, %2137 ], [ %2042, %2095 ], [ %2042, %2065 ], [ %1208, %1209 ]
  br i1 %409, label %3131, label %2179

; <label>:2179                                    ; preds = %2161
  %2180 = icmp ult i32 %465, 3
  %2181 = add i32 %56, 56
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = add i32 %56, 60
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = or i32 %2186, %2183
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %3131, label %2189

; <label>:2189                                    ; preds = %2179
  %2190 = and i32 %2183, 262144
  %2191 = icmp ne i32 %2190, 0
  %2192 = select i1 %2191, float %59, float 1.000000e+00
  %2193 = select i1 %2191, float %60, float 0.000000e+00
  %2194 = select i1 %2191, float %61, float 0.000000e+00
  %2195 = select i1 %2191, float %62, float 1.000000e+00
  %2196 = select i1 %2191, float %63, float %84
  %2197 = select i1 %2191, float %64, float %85
  %2198 = add i32 %56, 316
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = lshr i32 %2200, 16
  %2202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2201)  ; LegacyF16ToF32(value)
  %2203 = fmul fast float %2202, 0x3F50624DE0000000
  %2204 = add i32 %56, 120
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = lshr i32 %2206, 16
  %2208 = and i32 %2207, 255
  %2209 = lshr i32 %2206, 24
  %2210 = add i32 %56, 324
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = and i32 %2212, 65535
  %2214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2213)  ; LegacyF16ToF32(value)
  %2215 = lshr i32 %2212, 16
  %2216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2215)  ; LegacyF16ToF32(value)
  %2217 = add i32 %56, 64
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = lshr i32 %2219, 22
  %2221 = shl nuw nsw i32 %2220, 5
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = shl i32 %2219, 4
  %2224 = and i32 %2223, 32752
  %2225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2224)  ; LegacyF16ToF32(value)
  %2226 = lshr i32 %2219, 7
  %2227 = and i32 %2226, 32752
  %2228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2227)  ; LegacyF16ToF32(value)
  %2229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2230 = extractvalue %dx.types.CBufRet.f32 %2229, 3
  %2231 = fmul fast float %2230, 1.000000e+03
  %2232 = fmul fast float %359, %2231
  %2233 = call float @dx.op.unary.f32(i32 22, float %2232)  ; Frc(value)
  %2234 = fadd fast float %2233, %349
  %2235 = fmul fast float %360, %2231
  %2236 = call float @dx.op.unary.f32(i32 22, float %2235)  ; Frc(value)
  %2237 = fadd fast float %2236, %351
  %2238 = fmul fast float %2203, %2231
  %2239 = call float @dx.op.unary.f32(i32 22, float %2238)  ; Frc(value)
  %2240 = fmul fast float %2239, 0x401921FB60000000
  %2241 = fadd fast float %2240, %2222
  %2242 = call float @dx.op.unary.f32(i32 13, float %2241)  ; Sin(value)
  %2243 = call float @dx.op.unary.f32(i32 12, float %2241)  ; Cos(value)
  %2244 = fsub fast float -0.000000e+00, %2242
  %2245 = fadd fast float %2196, -5.000000e-01
  %2246 = fadd fast float %2197, -5.000000e-01
  %2247 = fmul fast float %2214, %2245
  %2248 = fmul fast float %2216, %2246
  %2249 = fadd fast float %2247, 5.000000e-01
  %2250 = fadd fast float %2248, 5.000000e-01
  %2251 = fmul fast float %2225, %2249
  %2252 = fmul fast float %2228, %2250
  %2253 = fmul fast float %2243, %2251
  %2254 = call float @dx.op.tertiary.f32(i32 46, float %2244, float %2252, float %2253)  ; FMad(a,b,c)
  %2255 = fmul fast float %2242, %2251
  %2256 = call float @dx.op.tertiary.f32(i32 46, float %2243, float %2252, float %2255)  ; FMad(a,b,c)
  %2257 = fadd fast float %2234, %2254
  %2258 = fadd fast float %2237, %2256
  %2259 = icmp ugt i32 %2208, 1
  %2260 = icmp ugt i32 %2206, 33554431
  %2261 = or i1 %2260, %2259
  br i1 %2261, label %2262, label %2287

; <label>:2262                                    ; preds = %2189
  %2263 = add i32 %56, 260
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = lshr i32 %2265, 16
  %2267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2266)  ; LegacyF16ToF32(value)
  %2268 = fmul fast float %2230, %2267
  %2269 = call float @dx.op.unary.f32(i32 22, float %2268)  ; Frc(value)
  %2270 = mul nuw nsw i32 %2208, %2209
  %2271 = uitofp i32 %2270 to float
  %2272 = fmul fast float %2269, %2271
  %2273 = call float @dx.op.unary.f32(i32 27, float %2272)  ; Round_ni(value)
  %2274 = fptoui float %2273 to i32
  %2275 = urem i32 %2274, %2208
  %2276 = udiv i32 %2274, %2209
  %2277 = call float @dx.op.unary.f32(i32 22, float %2257)  ; Frc(value)
  %2278 = call float @dx.op.unary.f32(i32 22, float %2258)  ; Frc(value)
  %2279 = uitofp i32 %2275 to float
  %2280 = uitofp i32 %2276 to float
  %2281 = fadd fast float %2277, %2279
  %2282 = fadd fast float %2278, %2280
  %2283 = uitofp i32 %2208 to float
  %2284 = uitofp i32 %2209 to float
  %2285 = fdiv fast float %2281, %2283
  %2286 = fdiv fast float %2282, %2284
  br label %2287

; <label>:2287                                    ; preds = %2262, %2189
  %2288 = phi float [ %2285, %2262 ], [ %2257, %2189 ]
  %2289 = phi float [ %2286, %2262 ], [ %2258, %2189 ]
  %2290 = and i32 %2183, 16777216
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2401, label %2292

; <label>:2292                                    ; preds = %2287
  %2293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2294 = extractvalue %dx.types.CBufRet.f32 %2293, 0
  %2295 = extractvalue %dx.types.CBufRet.f32 %2293, 1
  %2296 = extractvalue %dx.types.CBufRet.f32 %2293, 2
  %2297 = fadd fast float %2294, %161
  %2298 = fadd fast float %2295, %162
  %2299 = fadd fast float %2296, %163
  %2300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.f32 %2300, 0
  %2302 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2303 = icmp eq i32 %57, 65535
  br i1 %2303, label %2398, label %2304

; <label>:2304                                    ; preds = %2292
  %2305 = lshr i32 %57, 1
  %2306 = shl i32 %2305, 2
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = and i32 %57, 1
  %2310 = icmp ne i32 %2309, 0
  %2311 = lshr i32 %2308, 16
  %2312 = and i32 %2308, 65535
  %2313 = select i1 %2310, i32 %2311, i32 %2312
  %2314 = icmp eq i32 %2313, 65535
  br i1 %2314, label %2394, label %2315

; <label>:2315                                    ; preds = %2304
  %2316 = mul nuw nsw i32 %2313, 40
  %2317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.f32 %2317, 0
  %2319 = extractvalue %dx.types.ResRet.f32 %2317, 1
  %2320 = extractvalue %dx.types.ResRet.f32 %2317, 2
  %2321 = add nuw nsw i32 %2316, 12
  %2322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.ResRet.f32 %2322, 1
  %2325 = extractvalue %dx.types.ResRet.f32 %2322, 2
  %2326 = add nuw nsw i32 %2316, 24
  %2327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.f32 %2327, 0
  %2329 = extractvalue %dx.types.ResRet.f32 %2327, 1
  %2330 = extractvalue %dx.types.ResRet.f32 %2327, 2
  %2331 = add nuw nsw i32 %2316, 36
  %2332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 0
  %2334 = fsub fast float %2297, %2318
  %2335 = fsub fast float %2298, %2319
  %2336 = fsub fast float %2299, %2320
  %2337 = fmul fast float %2333, %2334
  %2338 = fmul fast float %2333, %2335
  %2339 = fmul fast float %2333, %2336
  %2340 = call float @dx.op.unary.f32(i32 27, float %2337)  ; Round_ni(value)
  %2341 = call float @dx.op.unary.f32(i32 27, float %2338)  ; Round_ni(value)
  %2342 = call float @dx.op.unary.f32(i32 27, float %2339)  ; Round_ni(value)
  %2343 = fadd fast float %2340, 5.000000e-01
  %2344 = fadd fast float %2341, 5.000000e-01
  %2345 = fadd fast float %2342, 5.000000e-01
  %2346 = fmul fast float %2343, %2323
  %2347 = fmul fast float %2344, %2324
  %2348 = fmul fast float %2345, %2325
  %2349 = shl i32 %57, 2
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = add i32 %2351, 0
  %2353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2352, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2354 = call float @dx.op.unary.f32(i32 22, float %2346)  ; Frc(value)
  %2355 = call float @dx.op.unary.f32(i32 22, float %2347)  ; Frc(value)
  %2356 = call float @dx.op.unary.f32(i32 22, float %2348)  ; Frc(value)
  %2357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2353, %dx.types.Handle %49, float %2354, float %2355, float %2356, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2358 = extractvalue %dx.types.ResRet.f32 %2357, 0
  %2359 = extractvalue %dx.types.ResRet.f32 %2357, 1
  %2360 = extractvalue %dx.types.ResRet.f32 %2357, 2
  %2361 = fmul fast float %2358, 1.023000e+03
  %2362 = fmul fast float %2359, 1.023000e+03
  %2363 = fmul fast float %2360, 1.023000e+03
  %2364 = fadd fast float %2361, 5.000000e-01
  %2365 = fadd fast float %2362, 5.000000e-01
  %2366 = fadd fast float %2363, 5.000000e-01
  %2367 = call float @dx.op.unary.f32(i32 27, float %2364)  ; Round_ni(value)
  %2368 = call float @dx.op.unary.f32(i32 27, float %2365)  ; Round_ni(value)
  %2369 = call float @dx.op.unary.f32(i32 27, float %2366)  ; Round_ni(value)
  %2370 = fsub fast float %2337, %2340
  %2371 = fsub fast float %2338, %2341
  %2372 = fsub fast float %2339, %2342
  %2373 = fmul fast float %2370, 7.500000e-01
  %2374 = fmul fast float %2371, 7.500000e-01
  %2375 = fmul fast float %2372, 7.500000e-01
  %2376 = fadd fast float %2340, 1.250000e-01
  %2377 = fadd fast float %2376, %2373
  %2378 = fadd fast float %2377, %2367
  %2379 = fadd fast float %2341, 1.250000e-01
  %2380 = fadd fast float %2379, %2374
  %2381 = fadd fast float %2380, %2368
  %2382 = fadd fast float %2342, 1.250000e-01
  %2383 = fadd fast float %2382, %2375
  %2384 = fadd fast float %2383, %2369
  %2385 = fmul fast float %2378, %2328
  %2386 = fmul fast float %2381, %2329
  %2387 = fmul fast float %2384, %2330
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2349, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = add i32 %2389, 0
  %2391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2391, %dx.types.Handle %47, float %2385, float %2386, float %2387, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2393 = extractvalue %dx.types.ResRet.f32 %2392, 0
  br label %2394

; <label>:2394                                    ; preds = %2315, %2304
  %2395 = phi float [ %2393, %2315 ], [ -1.000000e+00, %2304 ]
  %2396 = fadd fast float %2395, %2302
  %2397 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  br label %2398

; <label>:2398                                    ; preds = %2394, %2292
  %2399 = phi float [ %2397, %2394 ], [ %2302, %2292 ]
  %2400 = fmul fast float %2399, %461
  br label %2401

; <label>:2401                                    ; preds = %2398, %2287
  %2402 = phi float [ %2400, %2398 ], [ %461, %2287 ]
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = and i32 %2404, 256
  %2406 = icmp eq i32 %2405, 0
  br i1 %2406, label %2453, label %2407

; <label>:2407                                    ; preds = %2401
  %2408 = add i32 %56, 512
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = add i32 %2410, 0
  %2412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2412, %dx.types.Handle %99, float %2288, float %2289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = add i32 %56, 132
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = shl i32 %2417, 4
  %2419 = and i32 %2418, 32752
  %2420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2419)  ; LegacyF16ToF32(value)
  %2421 = lshr i32 %2417, 7
  %2422 = and i32 %2421, 32752
  %2423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2422)  ; LegacyF16ToF32(value)
  %2424 = fsub fast float 1.000000e+00, %2402
  %2425 = call float @dx.op.binary.f32(i32 35, float %2424, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2426 = bitcast float %2402 to i32
  %2427 = sitofp i32 %2426 to float
  %2428 = fadd fast float %2427, 0xC1CFBF8940000000
  %2429 = fmul fast float %2423, %2428
  %2430 = fadd fast float %2429, 0x41CFBF8940000000
  %2431 = fptosi float %2430 to i32
  %2432 = bitcast i32 %2431 to float
  %2433 = bitcast float %2425 to i32
  %2434 = sitofp i32 %2433 to float
  %2435 = fadd fast float %2434, 0xC1CFBF8940000000
  %2436 = fmul fast float %2435, %2423
  %2437 = fadd fast float %2436, 0x41CFBF8940000000
  %2438 = fptosi float %2437 to i32
  %2439 = bitcast i32 %2438 to float
  %2440 = fmul fast float %2432, %2420
  %2441 = fmul fast float %2439, %2420
  %2442 = fsub fast float %2425, %2440
  %2443 = fadd fast float %2441, %2425
  %2444 = call float @dx.op.unary.f32(i32 7, float %2442)  ; Saturate(value)
  %2445 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  %2446 = fsub fast float %2414, %2444
  %2447 = fsub fast float %2445, %2444
  %2448 = bitcast float %2447 to i32
  %2449 = sub nsw i32 2129859010, %2448
  %2450 = bitcast i32 %2449 to float
  %2451 = fmul fast float %2450, %2446
  %2452 = call float @dx.op.unary.f32(i32 7, float %2451)  ; Saturate(value)
  br label %2453

; <label>:2453                                    ; preds = %2407, %2401
  %2454 = phi float [ %2452, %2407 ], [ %2402, %2401 ]
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = and i32 %2456, 128
  %2458 = icmp eq i32 %2457, 0
  br i1 %2458, label %2475, label %2459

; <label>:2459                                    ; preds = %2453
  %2460 = add i32 %56, 496
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = add i32 %2462, 0
  %2464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2464, %dx.types.Handle %99, float %2288, float %2289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2466 = extractvalue %dx.types.ResRet.f32 %2465, 0
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = and i32 %2468, 524288
  %2470 = icmp ne i32 %2469, 0
  %2471 = fcmp fast ogt float %2466, 0x3FE0101020000000
  %2472 = select i1 %2471, float 1.000000e+00, float 0.000000e+00
  %2473 = select i1 %2470, float %2472, float %2466
  %2474 = fmul fast float %2473, %2454
  br label %2475

; <label>:2475                                    ; preds = %2459, %2453
  %2476 = phi float [ %2474, %2459 ], [ %2454, %2453 ]
  %2477 = fcmp fast ult float %2476, 0x3F70101020000000
  br i1 %2477, label %3131, label %2478

; <label>:2478                                    ; preds = %2475
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = and i32 %2480, 16
  %2482 = icmp eq i32 %2481, 0
  br i1 %2482, label %2681, label %2483

; <label>:2483                                    ; preds = %2478
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = add i32 %56, 448
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = add i32 %2488, 0
  %2490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2490, %dx.types.Handle %98, float %2288, float %2289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.ResRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.ResRet.f32 %2491, 2
  %2495 = extractvalue %dx.types.ResRet.f32 %2491, 3
  %2496 = and i32 %2485, 255
  %2497 = uitofp i32 %2496 to float
  %2498 = lshr i32 %2485, 8
  %2499 = and i32 %2498, 255
  %2500 = uitofp i32 %2499 to float
  %2501 = fmul fast float %2495, %2497
  %2502 = fadd fast float %2501, %2500
  %2503 = fmul fast float %2502, 0x3F70101000000000
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 512
  %2507 = icmp eq i32 %2506, 0
  br i1 %2507, label %2516, label %2508

; <label>:2508                                    ; preds = %2483
  %2509 = add i32 %56, 528
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = add i32 %2511, 0
  %2513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2513, %dx.types.Handle %99, float %2288, float %2289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2515 = extractvalue %dx.types.ResRet.f32 %2514, 0
  br label %2516

; <label>:2516                                    ; preds = %2508, %2483
  %2517 = phi float [ %2515, %2508 ], [ 1.000000e+00, %2483 ]
  %2518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.i32 %2518, 0
  %2520 = and i32 %2519, 33554432
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2628, label %2522

; <label>:2522                                    ; preds = %2516
  %2523 = add i32 %56, 256
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = and i32 %2525, 65535
  %2527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2526)  ; LegacyF16ToF32(value)
  %2528 = lshr i32 %2525, 16
  %2529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2528)  ; LegacyF16ToF32(value)
  %2530 = add i32 %56, 260
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2530, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = and i32 %2532, 65535
  %2534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2533)  ; LegacyF16ToF32(value)
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = lshr i32 %2536, 24
  %2538 = uitofp i32 %2537 to float
  %2539 = fmul fast float %2538, 0x3F70101020000000
  %2540 = and i32 %2536, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = fmul fast float %2541, 0x3F70101020000000
  %2543 = lshr i32 %2536, 8
  %2544 = and i32 %2543, 255
  %2545 = uitofp i32 %2544 to float
  %2546 = fmul fast float %2545, 0x3F70101020000000
  %2547 = lshr i32 %2536, 16
  %2548 = and i32 %2547, 255
  %2549 = uitofp i32 %2548 to float
  %2550 = fmul fast float %2549, 0x3F70101020000000
  %2551 = add i32 %56, 252
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = lshr i32 %2553, 24
  %2555 = uitofp i32 %2554 to float
  %2556 = fmul fast float %2555, 0x3F70101020000000
  %2557 = and i32 %2553, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = fmul fast float %2558, 0x3F70101020000000
  %2560 = lshr i32 %2553, 8
  %2561 = and i32 %2560, 255
  %2562 = uitofp i32 %2561 to float
  %2563 = fmul fast float %2562, 0x3F70101020000000
  %2564 = lshr i32 %2553, 16
  %2565 = and i32 %2564, 255
  %2566 = uitofp i32 %2565 to float
  %2567 = fmul fast float %2566, 0x3F70101020000000
  %2568 = bitcast float %2492 to i32
  %2569 = ashr i32 %2568, 1
  %2570 = sub nsw i32 1597463174, %2569
  %2571 = bitcast i32 %2570 to float
  %2572 = fmul fast float %2492, 5.000000e-01
  %2573 = fmul fast float %2571, %2571
  %2574 = fmul fast float %2573, %2572
  %2575 = fsub fast float 1.500000e+00, %2574
  %2576 = fmul fast float %2571, %2492
  %2577 = fmul fast float %2576, %2575
  %2578 = bitcast float %2493 to i32
  %2579 = ashr i32 %2578, 1
  %2580 = sub nsw i32 1597463174, %2579
  %2581 = bitcast i32 %2580 to float
  %2582 = fmul fast float %2493, 5.000000e-01
  %2583 = fmul fast float %2581, %2581
  %2584 = fmul fast float %2583, %2582
  %2585 = fsub fast float 1.500000e+00, %2584
  %2586 = fmul fast float %2581, %2493
  %2587 = fmul fast float %2586, %2585
  %2588 = bitcast float %2494 to i32
  %2589 = ashr i32 %2588, 1
  %2590 = sub nsw i32 1597463174, %2589
  %2591 = bitcast i32 %2590 to float
  %2592 = fmul fast float %2494, 5.000000e-01
  %2593 = fmul fast float %2591, %2591
  %2594 = fmul fast float %2593, %2592
  %2595 = fsub fast float 1.500000e+00, %2594
  %2596 = fmul fast float %2591, %2494
  %2597 = fmul fast float %2596, %2595
  %2598 = fsub fast float %2577, %2559
  %2599 = fsub fast float %2587, %2563
  %2600 = fsub fast float %2597, %2567
  %2601 = fmul fast float %2598, %2527
  %2602 = fmul fast float %2599, %2529
  %2603 = fmul fast float %2600, %2534
  %2604 = fadd fast float %2601, %2542
  %2605 = fadd fast float %2602, %2546
  %2606 = fadd fast float %2603, %2550
  %2607 = call float @dx.op.unary.f32(i32 7, float %2604)  ; Saturate(value)
  %2608 = call float @dx.op.unary.f32(i32 7, float %2605)  ; Saturate(value)
  %2609 = call float @dx.op.unary.f32(i32 7, float %2606)  ; Saturate(value)
  %2610 = fmul fast float %2607, %2607
  %2611 = fmul fast float %2608, %2608
  %2612 = fmul fast float %2609, %2609
  %2613 = fsub fast float %2610, %2492
  %2614 = fsub fast float %2611, %2493
  %2615 = fsub fast float %2612, %2494
  %2616 = fmul fast float %2613, %2517
  %2617 = fmul fast float %2614, %2517
  %2618 = fmul fast float %2615, %2517
  %2619 = fadd fast float %2616, %2492
  %2620 = fadd fast float %2617, %2493
  %2621 = fadd fast float %2618, %2494
  %2622 = fadd fast float %2539, %2503
  %2623 = fsub fast float %2622, %2556
  %2624 = call float @dx.op.unary.f32(i32 7, float %2623)  ; Saturate(value)
  %2625 = fsub fast float %2624, %2503
  %2626 = fmul fast float %2625, %2517
  %2627 = fadd fast float %2626, %2503
  br label %2681

; <label>:2628                                    ; preds = %2516
  %2629 = and i32 %2519, 134217728
  %2630 = icmp eq i32 %2629, 0
  br i1 %2630, label %2665, label %2631

; <label>:2631                                    ; preds = %2628
  %2632 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2633 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2634 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2635 = fadd fast float %2632, -5.000000e-01
  %2636 = fadd fast float %2633, -5.000000e-01
  %2637 = fadd fast float %2634, -5.000000e-01
  %2638 = fmul fast float %2635, %2517
  %2639 = fmul fast float %2636, %2517
  %2640 = fmul fast float %2637, %2517
  %2641 = fadd fast float %2638, 5.000000e-01
  %2642 = fadd fast float %2639, 5.000000e-01
  %2643 = fadd fast float %2640, 5.000000e-01
  %2644 = call float @dx.op.unary.f32(i32 24, float %2492)  ; Sqrt(value)
  %2645 = call float @dx.op.unary.f32(i32 24, float %2493)  ; Sqrt(value)
  %2646 = call float @dx.op.unary.f32(i32 24, float %2494)  ; Sqrt(value)
  %2647 = fmul fast float %2641, 2.000000e+00
  %2648 = fsub fast float 1.000000e+00, %2647
  %2649 = fmul fast float %2648, %2644
  %2650 = fadd fast float %2649, %2647
  %2651 = fmul fast float %2650, %2644
  %2652 = fmul fast float %2642, 2.000000e+00
  %2653 = fsub fast float 1.000000e+00, %2652
  %2654 = fmul fast float %2653, %2645
  %2655 = fadd fast float %2654, %2652
  %2656 = fmul fast float %2655, %2645
  %2657 = fmul fast float %2643, 2.000000e+00
  %2658 = fsub fast float 1.000000e+00, %2657
  %2659 = fmul fast float %2658, %2646
  %2660 = fadd fast float %2659, %2657
  %2661 = fmul fast float %2660, %2646
  %2662 = fmul fast float %2651, %2651
  %2663 = fmul fast float %2656, %2656
  %2664 = fmul fast float %2661, %2661
  br label %2681

; <label>:2665                                    ; preds = %2628
  %2666 = fmul fast float %336, %336
  %2667 = fmul fast float %340, %340
  %2668 = fmul fast float %344, %344
  %2669 = fadd fast float %2666, -1.000000e+00
  %2670 = fadd fast float %2667, -1.000000e+00
  %2671 = fadd fast float %2668, -1.000000e+00
  %2672 = fmul fast float %2517, %2669
  %2673 = fmul fast float %2517, %2670
  %2674 = fmul fast float %2517, %2671
  %2675 = fadd fast float %2672, 1.000000e+00
  %2676 = fadd fast float %2673, 1.000000e+00
  %2677 = fadd fast float %2674, 1.000000e+00
  %2678 = fmul fast float %2675, %2492
  %2679 = fmul fast float %2676, %2493
  %2680 = fmul fast float %2677, %2494
  br label %2681

; <label>:2681                                    ; preds = %2665, %2631, %2522, %2478
  %2682 = phi float [ %2627, %2522 ], [ %2503, %2631 ], [ %2503, %2665 ], [ 0x3FA23C0BE0000000, %2478 ]
  %2683 = phi float [ %2619, %2522 ], [ %2662, %2631 ], [ %2678, %2665 ], [ 1.000000e+00, %2478 ]
  %2684 = phi float [ %2620, %2522 ], [ %2663, %2631 ], [ %2679, %2665 ], [ 1.000000e+00, %2478 ]
  %2685 = phi float [ %2621, %2522 ], [ %2664, %2631 ], [ %2680, %2665 ], [ 1.000000e+00, %2478 ]
  %2686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2687 = extractvalue %dx.types.CBufRet.i32 %2686, 1
  %2688 = and i32 %2687, 1
  %2689 = icmp ne i32 %2688, 0
  %2690 = add i32 %56, 356
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %2692, 32
  %2694 = icmp ne i32 %2693, 0
  %2695 = and i1 %2689, %2694
  %2696 = select i1 %2695, float 1.000000e+00, float %2683
  %2697 = select i1 %2695, float 0x3FD3333340000000, float %2684
  %2698 = select i1 %2695, float 0x3FD3333340000000, float %2685
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = and i32 %2700, 32
  %2702 = icmp eq i32 %2701, 0
  br i1 %2702, label %2775, label %2703

; <label>:2703                                    ; preds = %2681
  %2704 = add i32 %56, 124
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = add i32 %56, 464
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = add i32 %2709, 0
  %2711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2711, %dx.types.Handle %98, float %2288, float %2289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2713 = extractvalue %dx.types.ResRet.f32 %2712, 0
  %2714 = extractvalue %dx.types.ResRet.f32 %2712, 1
  %2715 = extractvalue %dx.types.ResRet.f32 %2712, 2
  %2716 = extractvalue %dx.types.ResRet.f32 %2712, 3
  %2717 = and i32 %2706, 255
  %2718 = uitofp i32 %2717 to float
  %2719 = lshr i32 %2706, 8
  %2720 = and i32 %2719, 255
  %2721 = uitofp i32 %2720 to float
  %2722 = lshr i32 %2706, 16
  %2723 = and i32 %2722, 255
  %2724 = uitofp i32 %2723 to float
  %2725 = fmul fast float %2724, 0x3F70101000000000
  %2726 = fmul fast float %2713, %2718
  %2727 = fadd fast float %2726, %2721
  %2728 = fmul fast float %2727, 0x3F70101000000000
  %2729 = fadd fast float %2714, -5.000000e-01
  %2730 = fadd fast float %2716, -5.000000e-01
  %2731 = fmul fast float %2729, %2725
  %2732 = fmul fast float %2730, %2725
  %2733 = fadd fast float %2731, 5.000000e-01
  %2734 = fadd fast float %2732, 5.000000e-01
  %2735 = fmul fast float %2733, 2.000000e+00
  %2736 = fadd fast float %2735, -1.000000e+00
  %2737 = fmul fast float %2734, 2.000000e+00
  %2738 = fadd fast float %2737, -1.000000e+00
  %2739 = fadd fast float %2736, %2738
  %2740 = fmul fast float %2739, 5.000000e-01
  %2741 = fsub fast float %2736, %2738
  %2742 = fmul fast float %2741, 5.000000e-01
  %2743 = call float @dx.op.unary.f32(i32 6, float %2740)  ; FAbs(value)
  %2744 = fsub fast float 1.000000e+00, %2743
  %2745 = call float @dx.op.unary.f32(i32 6, float %2742)  ; FAbs(value)
  %2746 = fsub fast float %2744, %2745
  %2747 = call float @dx.op.dot3.f32(i32 55, float %2740, float %2742, float %2746, float %2740, float %2742, float %2746)  ; Dot3(ax,ay,az,bx,by,bz)
  %2748 = call float @dx.op.unary.f32(i32 25, float %2747)  ; Rsqrt(value)
  %2749 = fmul fast float %2740, %2748
  %2750 = fmul fast float %2742, %2748
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = and i32 %2752, 67108864
  %2754 = icmp eq i32 %2753, 0
  br i1 %2754, label %2771, label %2755

; <label>:2755                                    ; preds = %2703
  %2756 = add i32 %56, 312
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = and i32 %2758, 65535
  %2760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2759)  ; LegacyF16ToF32(value)
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = and i32 %2762, 65535
  %2764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2763)  ; LegacyF16ToF32(value)
  %2765 = lshr i32 %2758, 16
  %2766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2765)  ; LegacyF16ToF32(value)
  %2767 = fsub fast float %2728, %2766
  %2768 = fmul fast float %2767, %2760
  %2769 = fadd fast float %2768, %2764
  %2770 = call float @dx.op.unary.f32(i32 7, float %2769)  ; Saturate(value)
  br label %2771

; <label>:2771                                    ; preds = %2755, %2703
  %2772 = phi float [ %2770, %2755 ], [ %2728, %2703 ]
  %2773 = call float @dx.op.dot2.f32(i32 54, float %2749, float %2750, float %2192, float %2193)  ; Dot2(ax,ay,bx,by)
  %2774 = call float @dx.op.dot2.f32(i32 54, float %2749, float %2750, float %2194, float %2195)  ; Dot2(ax,ay,bx,by)
  br label %2775

; <label>:2775                                    ; preds = %2771, %2681
  %2776 = phi float [ %2772, %2771 ], [ 0x3FD6666660000000, %2681 ]
  %2777 = phi float [ %2773, %2771 ], [ 0.000000e+00, %2681 ]
  %2778 = phi float [ %2774, %2771 ], [ 0.000000e+00, %2681 ]
  %2779 = phi float [ %2715, %2771 ], [ 1.000000e+00, %2681 ]
  %2780 = add i32 %56, 192
  %2781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.i32 %2781, 0
  %2783 = lshr i32 %2782, 22
  %2784 = shl nuw nsw i32 %2783, 5
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = and i32 %2787, 64
  %2789 = icmp eq i32 %2788, 0
  br i1 %2789, label %2823, label %2790

; <label>:2790                                    ; preds = %2775
  %2791 = add i32 %56, 480
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = add i32 %2793, 0
  %2795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = and i32 %2797, 131072
  %2799 = icmp eq i32 %2798, 0
  %2800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2795, %dx.types.Handle %98, float %2288, float %2289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2801 = extractvalue %dx.types.ResRet.f32 %2800, 0
  %2802 = extractvalue %dx.types.ResRet.f32 %2800, 1
  %2803 = extractvalue %dx.types.ResRet.f32 %2800, 2
  %2804 = fmul fast float %2801, %324
  %2805 = fmul fast float %2802, %327
  %2806 = fmul fast float %2803, %330
  br i1 %2799, label %2813, label %2807

; <label>:2807                                    ; preds = %2790
  %2808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2809 = extractvalue %dx.types.CBufRet.f32 %2808, 0
  %2810 = fmul fast float %2809, %2804
  %2811 = fmul fast float %2809, %2805
  %2812 = fmul fast float %2809, %2806
  br label %2813

; <label>:2813                                    ; preds = %2807, %2790
  %2814 = phi float [ %2810, %2807 ], [ %2804, %2790 ]
  %2815 = phi float [ %2811, %2807 ], [ %2805, %2790 ]
  %2816 = phi float [ %2812, %2807 ], [ %2806, %2790 ]
  %2817 = fmul fast float %2814, %2785
  %2818 = select i1 %223, float %2817, float %2814
  %2819 = call float @dx.op.dot3.f32(i32 55, float %2818, float %2815, float %2816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2820 = select i1 %223, float 0.000000e+00, float %2814
  %2821 = select i1 %223, float %2819, float %2815
  %2822 = select i1 %223, float 0.000000e+00, float %2816
  br label %2823

; <label>:2823                                    ; preds = %2813, %2775
  %2824 = phi float [ %2820, %2813 ], [ 0.000000e+00, %2775 ]
  %2825 = phi float [ %2821, %2813 ], [ 0.000000e+00, %2775 ]
  %2826 = phi float [ %2822, %2813 ], [ 0.000000e+00, %2775 ]
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %2828, 26624
  %2830 = icmp eq i32 %2829, 0
  br i1 %2830, label %2888, label %2831

; <label>:2831                                    ; preds = %2823
  %2832 = add i32 %56, 544
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = add i32 %2834, 0
  %2836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2835, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2837 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2836, %dx.types.Handle %99, float %2288, float %2289, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2838 = extractvalue %dx.types.ResRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.ResRet.f32 %2837, 1
  %2840 = extractvalue %dx.types.ResRet.f32 %2837, 3
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = and i32 %2842, 1048576
  %2844 = icmp ne i32 %2843, 0
  %2845 = and i32 %2842, 8192
  %2846 = icmp eq i32 %2845, 0
  br i1 %2846, label %2861, label %2847

; <label>:2847                                    ; preds = %2831
  %2848 = extractvalue %dx.types.ResRet.f32 %2837, 2
  %2849 = select i1 %2844, float %2848, float %2839
  %2850 = select i1 %2844, float %2838, float %2839
  %2851 = add i32 %56, 128
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = lshr i32 %2853, 16
  %2855 = and i32 %2854, 255
  %2856 = uitofp i32 %2855 to float
  %2857 = fmul fast float %2856, 0x3F80101020000000
  %2858 = fmul fast float %2857, %2850
  %2859 = fmul fast float %2857, %2839
  %2860 = fmul fast float %2857, %2849
  br label %2861

; <label>:2861                                    ; preds = %2847, %2831
  %2862 = phi float [ %2858, %2847 ], [ 0.000000e+00, %2831 ]
  %2863 = phi float [ %2859, %2847 ], [ 0.000000e+00, %2831 ]
  %2864 = phi float [ %2860, %2847 ], [ 0.000000e+00, %2831 ]
  %2865 = and i32 %2842, 2048
  %2866 = icmp eq i32 %2865, 0
  br i1 %2866, label %2875, label %2867

; <label>:2867                                    ; preds = %2861
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = shl i32 %2869, 4
  %2871 = and i32 %2870, 32752
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = fmul fast float %2872, %2840
  %2874 = call float @dx.op.binary.f32(i32 35, float %2873, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2875

; <label>:2875                                    ; preds = %2867, %2861
  %2876 = phi float [ %2874, %2867 ], [ 0x3F70101020000000, %2861 ]
  %2877 = and i32 %2842, 16384
  %2878 = icmp eq i32 %2877, 0
  br i1 %2878, label %2888, label %2879

; <label>:2879                                    ; preds = %2875
  %2880 = add i32 %56, 128
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = lshr i32 %2882, 24
  %2884 = uitofp i32 %2883 to float
  %2885 = fmul fast float %2838, 0x3F70101020000000
  %2886 = select i1 %2844, float 0x3F70101020000000, float %2885
  %2887 = fmul fast float %2886, %2884
  br label %2888

; <label>:2888                                    ; preds = %2879, %2875, %2823
  %2889 = phi float [ %2862, %2879 ], [ %2862, %2875 ], [ 0.000000e+00, %2823 ]
  %2890 = phi float [ %2863, %2879 ], [ %2863, %2875 ], [ 0.000000e+00, %2823 ]
  %2891 = phi float [ %2864, %2879 ], [ %2864, %2875 ], [ 0.000000e+00, %2823 ]
  %2892 = phi float [ %2876, %2879 ], [ %2876, %2875 ], [ 0x3F70101020000000, %2823 ]
  %2893 = phi float [ %2887, %2879 ], [ 0.000000e+00, %2875 ], [ 0.000000e+00, %2823 ]
  %2894 = add i32 %56, 128
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = and i32 %2896, 255
  %2898 = uitofp i32 %2897 to float
  %2899 = lshr i32 %2896, 8
  %2900 = and i32 %2899, 255
  %2901 = uitofp i32 %2900 to float
  %2902 = call float @dx.op.dot3.f32(i32 55, float %2696, float %2697, float %2698, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2903 = fmul fast float %2901, %2902
  %2904 = fadd fast float %2903, %2898
  %2905 = fmul fast float %2904, 0x3F70101020000000
  %2906 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  br i1 %2180, label %2907, label %2915

; <label>:2907                                    ; preds = %2888
  %2908 = fsub fast float 1.000000e+00, %2476
  %2909 = fmul fast float %2908, %2164
  %2910 = fmul fast float %2908, %2165
  %2911 = fmul fast float %2908, %2166
  %2912 = fmul fast float %2908, %2167
  %2913 = fmul fast float %2908, %2168
  %2914 = fmul fast float %2908, %2169
  br label %2915

; <label>:2915                                    ; preds = %2907, %2888
  %2916 = phi float [ %2909, %2907 ], [ %2164, %2888 ]
  %2917 = phi float [ %2910, %2907 ], [ %2165, %2888 ]
  %2918 = phi float [ %2911, %2907 ], [ %2166, %2888 ]
  %2919 = phi float [ %2912, %2907 ], [ %2167, %2888 ]
  %2920 = phi float [ %2913, %2907 ], [ %2168, %2888 ]
  %2921 = phi float [ %2914, %2907 ], [ %2169, %2888 ]
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 3
  %2925 = icmp eq i32 %2924, 3
  br i1 %2925, label %3004, label %2926

; <label>:2926                                    ; preds = %2915
  %2927 = and i32 %2923, 16
  %2928 = icmp ne i32 %2927, 0
  %2929 = select i1 %2928, float %2476, float 0.000000e+00
  %2930 = icmp eq i32 %2924, 0
  br i1 %2930, label %2931, label %2959

; <label>:2931                                    ; preds = %2926
  %2932 = and i32 %2923, 64
  %2933 = icmp ne i32 %2932, 0
  %2934 = select i1 %2933, float %2476, float 0.000000e+00
  %2935 = fsub fast float %2696, %2916
  %2936 = fsub fast float %2697, %2917
  %2937 = fsub fast float %2698, %2918
  %2938 = fmul fast float %2929, %2935
  %2939 = fmul fast float %2929, %2936
  %2940 = fmul fast float %2929, %2937
  %2941 = fadd fast float %2938, %2916
  %2942 = fadd fast float %2939, %2917
  %2943 = fadd fast float %2940, %2918
  %2944 = fsub fast float %2682, %2173
  %2945 = fmul fast float %2929, %2944
  %2946 = fadd fast float %2945, %2173
  %2947 = fsub fast float %2824, %2919
  %2948 = fsub fast float %2825, %2920
  %2949 = fsub fast float %2826, %2921
  %2950 = fmul fast float %2934, %2947
  %2951 = fmul fast float %2934, %2948
  %2952 = fmul fast float %2934, %2949
  %2953 = fadd fast float %2950, %2919
  %2954 = fadd fast float %2951, %2920
  %2955 = fadd fast float %2952, %2921
  %2956 = fsub fast float %2906, %2178
  %2957 = fmul fast float %2929, %2956
  %2958 = fadd fast float %2957, %2178
  br label %3004

; <label>:2959                                    ; preds = %2926
  %2960 = icmp eq i32 %2924, 1
  br i1 %2960, label %2961, label %2974

; <label>:2961                                    ; preds = %2959
  %2962 = fadd fast float %2696, -1.000000e+00
  %2963 = fadd fast float %2697, -1.000000e+00
  %2964 = fadd fast float %2698, -1.000000e+00
  %2965 = fmul fast float %2929, %2962
  %2966 = fmul fast float %2929, %2963
  %2967 = fmul fast float %2929, %2964
  %2968 = fadd fast float %2965, 1.000000e+00
  %2969 = fadd fast float %2966, 1.000000e+00
  %2970 = fadd fast float %2967, 1.000000e+00
  %2971 = fmul fast float %2968, %2916
  %2972 = fmul fast float %2969, %2917
  %2973 = fmul fast float %2970, %2918
  br label %3004

; <label>:2974                                    ; preds = %2959
  %2975 = icmp eq i32 %2924, 2
  br i1 %2975, label %2976, label %3004

; <label>:2976                                    ; preds = %2974
  %2977 = call float @dx.op.unary.f32(i32 24, float %2696)  ; Sqrt(value)
  %2978 = call float @dx.op.unary.f32(i32 24, float %2697)  ; Sqrt(value)
  %2979 = call float @dx.op.unary.f32(i32 24, float %2698)  ; Sqrt(value)
  %2980 = fadd fast float %2977, -5.000000e-01
  %2981 = fadd fast float %2978, -5.000000e-01
  %2982 = fadd fast float %2979, -5.000000e-01
  %2983 = fmul fast float %2980, %2929
  %2984 = fmul fast float %2981, %2929
  %2985 = fmul fast float %2982, %2929
  %2986 = fadd fast float %2983, 5.000000e-01
  %2987 = fadd fast float %2984, 5.000000e-01
  %2988 = fadd fast float %2985, 5.000000e-01
  %2989 = fmul fast float %2986, 2.000000e+00
  %2990 = fsub fast float 1.000000e+00, %2989
  %2991 = fmul fast float %2990, %2916
  %2992 = fadd fast float %2991, %2989
  %2993 = fmul fast float %2992, %2916
  %2994 = fmul fast float %2987, 2.000000e+00
  %2995 = fsub fast float 1.000000e+00, %2994
  %2996 = fmul fast float %2995, %2917
  %2997 = fadd fast float %2996, %2994
  %2998 = fmul fast float %2997, %2917
  %2999 = fmul fast float %2988, 2.000000e+00
  %3000 = fsub fast float 1.000000e+00, %2999
  %3001 = fmul fast float %3000, %2918
  %3002 = fadd fast float %3001, %2999
  %3003 = fmul fast float %3002, %2918
  br label %3004

; <label>:3004                                    ; preds = %2976, %2974, %2961, %2931, %2915
  %3005 = phi float [ %2916, %2915 ], [ %2993, %2976 ], [ %2916, %2974 ], [ %2971, %2961 ], [ %2941, %2931 ]
  %3006 = phi float [ %2917, %2915 ], [ %2998, %2976 ], [ %2917, %2974 ], [ %2972, %2961 ], [ %2942, %2931 ]
  %3007 = phi float [ %2918, %2915 ], [ %3003, %2976 ], [ %2918, %2974 ], [ %2973, %2961 ], [ %2943, %2931 ]
  %3008 = phi float [ %2919, %2915 ], [ %2919, %2976 ], [ %2919, %2974 ], [ %2919, %2961 ], [ %2953, %2931 ]
  %3009 = phi float [ %2920, %2915 ], [ %2920, %2976 ], [ %2920, %2974 ], [ %2920, %2961 ], [ %2954, %2931 ]
  %3010 = phi float [ %2921, %2915 ], [ %2921, %2976 ], [ %2921, %2974 ], [ %2921, %2961 ], [ %2955, %2931 ]
  %3011 = phi float [ %2173, %2915 ], [ %2173, %2976 ], [ %2173, %2974 ], [ %2173, %2961 ], [ %2946, %2931 ]
  %3012 = phi float [ %2178, %2915 ], [ %2178, %2976 ], [ %2178, %2974 ], [ %2178, %2961 ], [ %2958, %2931 ]
  %3013 = and i32 %2923, 12
  %3014 = icmp eq i32 %3013, 12
  br i1 %3014, label %3131, label %3015

; <label>:3015                                    ; preds = %3004
  %3016 = and i32 %2923, 2097184
  %3017 = icmp eq i32 %3016, 2097184
  %3018 = select i1 %3017, float %2476, float 0.000000e+00
  %3019 = and i32 %2923, 4194336
  %3020 = icmp eq i32 %3019, 4194336
  %3021 = select i1 %3020, float %2476, float 0.000000e+00
  %3022 = and i32 %2923, 8388640
  %3023 = icmp eq i32 %3022, 8388640
  %3024 = select i1 %3023, float %2476, float 0.000000e+00
  %3025 = and i32 %2923, 2048
  %3026 = icmp ne i32 %3025, 0
  %3027 = select i1 %3026, float %2476, float 0.000000e+00
  %3028 = and i32 %2923, 8192
  %3029 = icmp ne i32 %3028, 0
  %3030 = select i1 %3029, float %2476, float 0.000000e+00
  %3031 = and i32 %2923, 16384
  %3032 = icmp ne i32 %3031, 0
  %3033 = select i1 %3032, float %2476, float 0.000000e+00
  %3034 = icmp eq i32 %3013, 0
  br i1 %3034, label %3035, label %3063

; <label>:3035                                    ; preds = %3015
  %3036 = fsub fast float %2777, %2162
  %3037 = fsub fast float %2778, %2163
  %3038 = fmul fast float %3018, %3036
  %3039 = fmul fast float %3018, %3037
  %3040 = fadd fast float %3038, %2162
  %3041 = fadd fast float %3039, %2163
  %3042 = fsub fast float %2779, %2175
  %3043 = fmul fast float %3021, %3042
  %3044 = fadd fast float %3043, %2175
  %3045 = fsub fast float %2776, %2174
  %3046 = fmul fast float %3024, %3045
  %3047 = fadd fast float %3046, %2174
  %3048 = fsub fast float %2892, %2176
  %3049 = fmul fast float %3027, %3048
  %3050 = fadd fast float %3049, %2176
  %3051 = fsub fast float %2889, %2170
  %3052 = fsub fast float %2890, %2171
  %3053 = fsub fast float %2891, %2172
  %3054 = fmul fast float %3030, %3051
  %3055 = fmul fast float %3030, %3052
  %3056 = fmul fast float %3030, %3053
  %3057 = fadd fast float %3054, %2170
  %3058 = fadd fast float %3055, %2171
  %3059 = fadd fast float %3056, %2172
  %3060 = fsub fast float %2893, %2177
  %3061 = fmul fast float %3033, %3060
  %3062 = fadd fast float %3061, %2177
  br label %3131

; <label>:3063                                    ; preds = %3015
  %3064 = icmp eq i32 %3013, 4
  br i1 %3064, label %3065, label %3107

; <label>:3065                                    ; preds = %3063
  %3066 = fmul fast float %3018, %2777
  %3067 = fmul fast float %3018, %2778
  %3068 = fadd fast float %3066, %2162
  %3069 = fadd fast float %3067, %2163
  %3070 = call float @dx.op.binary.f32(i32 36, float %2175, float %2779)  ; FMin(a,b)
  %3071 = fsub fast float %3070, %2175
  %3072 = fmul fast float %3071, %3021
  %3073 = fadd fast float %3072, %2175
  %3074 = fadd fast float %2776, %2174
  %3075 = fmul fast float %3074, 0x3FF337FAE0000000
  %3076 = fmul fast float %2174, %2174
  %3077 = fmul fast float %2776, %2776
  %3078 = fadd fast float %3077, %3076
  %3079 = fmul fast float %3078, 0x3FE5152B00000000
  %3080 = fmul fast float %2174, 0xBFCC1F85E0000000
  %3081 = fmul fast float %3080, %2776
  %3082 = fadd fast float %3081, 0xBFE1363700000000
  %3083 = fadd fast float %3082, %3075
  %3084 = fsub fast float %3083, %3079
  %3085 = fmul fast float %3074, 0x3FBA6F0D00000000
  %3086 = fmul fast float %3078, 0x3FD0432880000000
  %3087 = fmul fast float %2174, 0xBFEF110800000000
  %3088 = fmul fast float %3087, %2776
  %3089 = fadd fast float %3088, 1.000000e+00
  %3090 = fsub fast float %3089, %3085
  %3091 = fadd fast float %3090, %3086
  %3092 = fdiv fast float %3084, %3091
  %3093 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  %3094 = fsub fast float %3093, %2174
  %3095 = fmul fast float %3094, %3024
  %3096 = fadd fast float %3095, %2174
  %3097 = fmul fast float %3027, %2892
  %3098 = fadd fast float %3097, %2176
  %3099 = fmul fast float %3030, %2889
  %3100 = fmul fast float %3030, %2890
  %3101 = fmul fast float %3030, %2891
  %3102 = fadd fast float %3099, %2170
  %3103 = fadd fast float %3100, %2171
  %3104 = fadd fast float %3101, %2172
  %3105 = fmul fast float %3033, %2893
  %3106 = fadd fast float %3105, %2177
  br label %3131

; <label>:3107                                    ; preds = %3063
  %3108 = icmp eq i32 %3013, 8
  br i1 %3108, label %3109, label %3131

; <label>:3109                                    ; preds = %3107
  %3110 = fmul fast float %3018, %2777
  %3111 = fmul fast float %3018, %2778
  %3112 = fadd fast float %3110, %2162
  %3113 = fadd fast float %3111, %2163
  %3114 = call float @dx.op.binary.f32(i32 36, float %2175, float %2779)  ; FMin(a,b)
  %3115 = fsub fast float %3114, %2175
  %3116 = fmul fast float %3115, %3021
  %3117 = fadd fast float %3116, %2175
  %3118 = fsub fast float %2776, %2174
  %3119 = fmul fast float %3024, %3118
  %3120 = fadd fast float %3119, %2174
  %3121 = fmul fast float %3027, %2892
  %3122 = fadd fast float %3121, %2176
  %3123 = fmul fast float %3030, %2889
  %3124 = fmul fast float %3030, %2890
  %3125 = fmul fast float %3030, %2891
  %3126 = fadd fast float %3123, %2170
  %3127 = fadd fast float %3124, %2171
  %3128 = fadd fast float %3125, %2172
  %3129 = fmul fast float %3033, %2893
  %3130 = fadd fast float %3129, %2177
  br label %3131

; <label>:3131                                    ; preds = %3109, %3107, %3065, %3035, %3004, %2475, %2179, %2161
  %3132 = phi float [ %2162, %3004 ], [ %2162, %2475 ], [ %2162, %2161 ], [ %3112, %3109 ], [ %2162, %3107 ], [ %3068, %3065 ], [ %3040, %3035 ], [ %2162, %2179 ]
  %3133 = phi float [ %2163, %3004 ], [ %2163, %2475 ], [ %2163, %2161 ], [ %3113, %3109 ], [ %2163, %3107 ], [ %3069, %3065 ], [ %3041, %3035 ], [ %2163, %2179 ]
  %3134 = phi float [ %3005, %3004 ], [ %2164, %2475 ], [ %2164, %2161 ], [ %3005, %3109 ], [ %3005, %3107 ], [ %3005, %3065 ], [ %3005, %3035 ], [ %2164, %2179 ]
  %3135 = phi float [ %3006, %3004 ], [ %2165, %2475 ], [ %2165, %2161 ], [ %3006, %3109 ], [ %3006, %3107 ], [ %3006, %3065 ], [ %3006, %3035 ], [ %2165, %2179 ]
  %3136 = phi float [ %3007, %3004 ], [ %2166, %2475 ], [ %2166, %2161 ], [ %3007, %3109 ], [ %3007, %3107 ], [ %3007, %3065 ], [ %3007, %3035 ], [ %2166, %2179 ]
  %3137 = phi float [ %3008, %3004 ], [ %2167, %2475 ], [ %2167, %2161 ], [ %3008, %3109 ], [ %3008, %3107 ], [ %3008, %3065 ], [ %3008, %3035 ], [ %2167, %2179 ]
  %3138 = phi float [ %3009, %3004 ], [ %2168, %2475 ], [ %2168, %2161 ], [ %3009, %3109 ], [ %3009, %3107 ], [ %3009, %3065 ], [ %3009, %3035 ], [ %2168, %2179 ]
  %3139 = phi float [ %3010, %3004 ], [ %2169, %2475 ], [ %2169, %2161 ], [ %3010, %3109 ], [ %3010, %3107 ], [ %3010, %3065 ], [ %3010, %3035 ], [ %2169, %2179 ]
  %3140 = phi float [ %2170, %3004 ], [ %2170, %2475 ], [ %2170, %2161 ], [ %3126, %3109 ], [ %2170, %3107 ], [ %3102, %3065 ], [ %3057, %3035 ], [ %2170, %2179 ]
  %3141 = phi float [ %2171, %3004 ], [ %2171, %2475 ], [ %2171, %2161 ], [ %3127, %3109 ], [ %2171, %3107 ], [ %3103, %3065 ], [ %3058, %3035 ], [ %2171, %2179 ]
  %3142 = phi float [ %2172, %3004 ], [ %2172, %2475 ], [ %2172, %2161 ], [ %3128, %3109 ], [ %2172, %3107 ], [ %3104, %3065 ], [ %3059, %3035 ], [ %2172, %2179 ]
  %3143 = phi float [ %3011, %3004 ], [ %2173, %2475 ], [ %2173, %2161 ], [ %3011, %3109 ], [ %3011, %3107 ], [ %3011, %3065 ], [ %3011, %3035 ], [ %2173, %2179 ]
  %3144 = phi float [ %2174, %3004 ], [ %2174, %2475 ], [ %2174, %2161 ], [ %3120, %3109 ], [ %2174, %3107 ], [ %3096, %3065 ], [ %3047, %3035 ], [ %2174, %2179 ]
  %3145 = phi float [ %2175, %3004 ], [ %2175, %2475 ], [ %2175, %2161 ], [ %3117, %3109 ], [ %2175, %3107 ], [ %3073, %3065 ], [ %3044, %3035 ], [ %2175, %2179 ]
  %3146 = phi float [ %2176, %3004 ], [ %2176, %2475 ], [ %2176, %2161 ], [ %3122, %3109 ], [ %2176, %3107 ], [ %3098, %3065 ], [ %3050, %3035 ], [ %2176, %2179 ]
  %3147 = phi float [ %2177, %3004 ], [ %2177, %2475 ], [ %2177, %2161 ], [ %3130, %3109 ], [ %2177, %3107 ], [ %3106, %3065 ], [ %3062, %3035 ], [ %2177, %2179 ]
  %3148 = phi float [ %3012, %3004 ], [ %2178, %2475 ], [ %2178, %2161 ], [ %3012, %3109 ], [ %3012, %3107 ], [ %3012, %3065 ], [ %3012, %3035 ], [ %2178, %2179 ]
  br i1 %411, label %4101, label %3149

; <label>:3149                                    ; preds = %3131
  %3150 = icmp ult i32 %465, 4
  %3151 = add i32 %56, 72
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = add i32 %56, 76
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = or i32 %3156, %3153
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %4101, label %3159

; <label>:3159                                    ; preds = %3149
  %3160 = and i32 %3153, 262144
  %3161 = icmp ne i32 %3160, 0
  %3162 = select i1 %3161, float %59, float 1.000000e+00
  %3163 = select i1 %3161, float %60, float 0.000000e+00
  %3164 = select i1 %3161, float %61, float 0.000000e+00
  %3165 = select i1 %3161, float %62, float 1.000000e+00
  %3166 = select i1 %3161, float %63, float %84
  %3167 = select i1 %3161, float %64, float %85
  %3168 = add i32 %56, 332
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = lshr i32 %3170, 16
  %3172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3171)  ; LegacyF16ToF32(value)
  %3173 = fmul fast float %3172, 0x3F50624DE0000000
  %3174 = add i32 %56, 136
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = lshr i32 %3176, 16
  %3178 = and i32 %3177, 255
  %3179 = lshr i32 %3176, 24
  %3180 = add i32 %56, 340
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = and i32 %3182, 65535
  %3184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3183)  ; LegacyF16ToF32(value)
  %3185 = lshr i32 %3182, 16
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = add i32 %56, 80
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = lshr i32 %3189, 22
  %3191 = shl nuw nsw i32 %3190, 5
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = shl i32 %3189, 4
  %3194 = and i32 %3193, 32752
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = lshr i32 %3189, 7
  %3197 = and i32 %3196, 32752
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3200 = extractvalue %dx.types.CBufRet.f32 %3199, 3
  %3201 = fmul fast float %3200, 1.000000e+03
  %3202 = fmul fast float %401, %3201
  %3203 = call float @dx.op.unary.f32(i32 22, float %3202)  ; Frc(value)
  %3204 = fadd fast float %3203, %391
  %3205 = fmul fast float %402, %3201
  %3206 = call float @dx.op.unary.f32(i32 22, float %3205)  ; Frc(value)
  %3207 = fadd fast float %3206, %393
  %3208 = fmul fast float %3173, %3201
  %3209 = call float @dx.op.unary.f32(i32 22, float %3208)  ; Frc(value)
  %3210 = fmul fast float %3209, 0x401921FB60000000
  %3211 = fadd fast float %3210, %3192
  %3212 = call float @dx.op.unary.f32(i32 13, float %3211)  ; Sin(value)
  %3213 = call float @dx.op.unary.f32(i32 12, float %3211)  ; Cos(value)
  %3214 = fsub fast float -0.000000e+00, %3212
  %3215 = fadd fast float %3166, -5.000000e-01
  %3216 = fadd fast float %3167, -5.000000e-01
  %3217 = fmul fast float %3184, %3215
  %3218 = fmul fast float %3186, %3216
  %3219 = fadd fast float %3217, 5.000000e-01
  %3220 = fadd fast float %3218, 5.000000e-01
  %3221 = fmul fast float %3195, %3219
  %3222 = fmul fast float %3198, %3220
  %3223 = fmul fast float %3213, %3221
  %3224 = call float @dx.op.tertiary.f32(i32 46, float %3214, float %3222, float %3223)  ; FMad(a,b,c)
  %3225 = fmul fast float %3212, %3221
  %3226 = call float @dx.op.tertiary.f32(i32 46, float %3213, float %3222, float %3225)  ; FMad(a,b,c)
  %3227 = fadd fast float %3204, %3224
  %3228 = fadd fast float %3207, %3226
  %3229 = icmp ugt i32 %3178, 1
  %3230 = icmp ugt i32 %3176, 33554431
  %3231 = or i1 %3230, %3229
  br i1 %3231, label %3232, label %3257

; <label>:3232                                    ; preds = %3159
  %3233 = add i32 %56, 276
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = lshr i32 %3235, 16
  %3237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3236)  ; LegacyF16ToF32(value)
  %3238 = fmul fast float %3200, %3237
  %3239 = call float @dx.op.unary.f32(i32 22, float %3238)  ; Frc(value)
  %3240 = mul nuw nsw i32 %3178, %3179
  %3241 = uitofp i32 %3240 to float
  %3242 = fmul fast float %3239, %3241
  %3243 = call float @dx.op.unary.f32(i32 27, float %3242)  ; Round_ni(value)
  %3244 = fptoui float %3243 to i32
  %3245 = urem i32 %3244, %3178
  %3246 = udiv i32 %3244, %3179
  %3247 = call float @dx.op.unary.f32(i32 22, float %3227)  ; Frc(value)
  %3248 = call float @dx.op.unary.f32(i32 22, float %3228)  ; Frc(value)
  %3249 = uitofp i32 %3245 to float
  %3250 = uitofp i32 %3246 to float
  %3251 = fadd fast float %3247, %3249
  %3252 = fadd fast float %3248, %3250
  %3253 = uitofp i32 %3178 to float
  %3254 = uitofp i32 %3179 to float
  %3255 = fdiv fast float %3251, %3253
  %3256 = fdiv fast float %3252, %3254
  br label %3257

; <label>:3257                                    ; preds = %3232, %3159
  %3258 = phi float [ %3255, %3232 ], [ %3227, %3159 ]
  %3259 = phi float [ %3256, %3232 ], [ %3228, %3159 ]
  %3260 = and i32 %3153, 16777216
  %3261 = icmp eq i32 %3260, 0
  br i1 %3261, label %3371, label %3262

; <label>:3262                                    ; preds = %3257
  %3263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3264 = extractvalue %dx.types.CBufRet.f32 %3263, 0
  %3265 = extractvalue %dx.types.CBufRet.f32 %3263, 1
  %3266 = extractvalue %dx.types.CBufRet.f32 %3263, 2
  %3267 = fadd fast float %3264, %161
  %3268 = fadd fast float %3265, %162
  %3269 = fadd fast float %3266, %163
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 0
  %3272 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3273 = icmp eq i32 %57, 65535
  br i1 %3273, label %3368, label %3274

; <label>:3274                                    ; preds = %3262
  %3275 = lshr i32 %57, 1
  %3276 = shl i32 %3275, 2
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3276, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = and i32 %57, 1
  %3280 = icmp ne i32 %3279, 0
  %3281 = lshr i32 %3278, 16
  %3282 = and i32 %3278, 65535
  %3283 = select i1 %3280, i32 %3281, i32 %3282
  %3284 = icmp eq i32 %3283, 65535
  br i1 %3284, label %3364, label %3285

; <label>:3285                                    ; preds = %3274
  %3286 = mul nuw nsw i32 %3283, 40
  %3287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.f32 %3287, 0
  %3289 = extractvalue %dx.types.ResRet.f32 %3287, 1
  %3290 = extractvalue %dx.types.ResRet.f32 %3287, 2
  %3291 = add nuw nsw i32 %3286, 12
  %3292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.ResRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.ResRet.f32 %3292, 2
  %3296 = add nuw nsw i32 %3286, 24
  %3297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = add nuw nsw i32 %3286, 36
  %3302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.f32 %3302, 0
  %3304 = fsub fast float %3267, %3288
  %3305 = fsub fast float %3268, %3289
  %3306 = fsub fast float %3269, %3290
  %3307 = fmul fast float %3303, %3304
  %3308 = fmul fast float %3303, %3305
  %3309 = fmul fast float %3303, %3306
  %3310 = call float @dx.op.unary.f32(i32 27, float %3307)  ; Round_ni(value)
  %3311 = call float @dx.op.unary.f32(i32 27, float %3308)  ; Round_ni(value)
  %3312 = call float @dx.op.unary.f32(i32 27, float %3309)  ; Round_ni(value)
  %3313 = fadd fast float %3310, 5.000000e-01
  %3314 = fadd fast float %3311, 5.000000e-01
  %3315 = fadd fast float %3312, 5.000000e-01
  %3316 = fmul fast float %3313, %3293
  %3317 = fmul fast float %3314, %3294
  %3318 = fmul fast float %3315, %3295
  %3319 = shl i32 %57, 2
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = add i32 %3321, 0
  %3323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3324 = call float @dx.op.unary.f32(i32 22, float %3316)  ; Frc(value)
  %3325 = call float @dx.op.unary.f32(i32 22, float %3317)  ; Frc(value)
  %3326 = call float @dx.op.unary.f32(i32 22, float %3318)  ; Frc(value)
  %3327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3323, %dx.types.Handle %49, float %3324, float %3325, float %3326, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3328 = extractvalue %dx.types.ResRet.f32 %3327, 0
  %3329 = extractvalue %dx.types.ResRet.f32 %3327, 1
  %3330 = extractvalue %dx.types.ResRet.f32 %3327, 2
  %3331 = fmul fast float %3328, 1.023000e+03
  %3332 = fmul fast float %3329, 1.023000e+03
  %3333 = fmul fast float %3330, 1.023000e+03
  %3334 = fadd fast float %3331, 5.000000e-01
  %3335 = fadd fast float %3332, 5.000000e-01
  %3336 = fadd fast float %3333, 5.000000e-01
  %3337 = call float @dx.op.unary.f32(i32 27, float %3334)  ; Round_ni(value)
  %3338 = call float @dx.op.unary.f32(i32 27, float %3335)  ; Round_ni(value)
  %3339 = call float @dx.op.unary.f32(i32 27, float %3336)  ; Round_ni(value)
  %3340 = fsub fast float %3307, %3310
  %3341 = fsub fast float %3308, %3311
  %3342 = fsub fast float %3309, %3312
  %3343 = fmul fast float %3340, 7.500000e-01
  %3344 = fmul fast float %3341, 7.500000e-01
  %3345 = fmul fast float %3342, 7.500000e-01
  %3346 = fadd fast float %3310, 1.250000e-01
  %3347 = fadd fast float %3346, %3343
  %3348 = fadd fast float %3347, %3337
  %3349 = fadd fast float %3311, 1.250000e-01
  %3350 = fadd fast float %3349, %3344
  %3351 = fadd fast float %3350, %3338
  %3352 = fadd fast float %3312, 1.250000e-01
  %3353 = fadd fast float %3352, %3345
  %3354 = fadd fast float %3353, %3339
  %3355 = fmul fast float %3348, %3298
  %3356 = fmul fast float %3351, %3299
  %3357 = fmul fast float %3354, %3300
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = add i32 %3359, 0
  %3361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3360, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3361, %dx.types.Handle %47, float %3355, float %3356, float %3357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3363 = extractvalue %dx.types.ResRet.f32 %3362, 0
  br label %3364

; <label>:3364                                    ; preds = %3285, %3274
  %3365 = phi float [ %3363, %3285 ], [ -1.000000e+00, %3274 ]
  %3366 = fadd fast float %3365, %3272
  %3367 = call float @dx.op.unary.f32(i32 7, float %3366)  ; Saturate(value)
  br label %3368

; <label>:3368                                    ; preds = %3364, %3262
  %3369 = phi float [ %3367, %3364 ], [ %3272, %3262 ]
  %3370 = fmul fast float %3369, %460
  br label %3371

; <label>:3371                                    ; preds = %3368, %3257
  %3372 = phi float [ %3370, %3368 ], [ %460, %3257 ]
  %3373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.i32 %3373, 0
  %3375 = and i32 %3374, 256
  %3376 = icmp eq i32 %3375, 0
  br i1 %3376, label %3423, label %3377

; <label>:3377                                    ; preds = %3371
  %3378 = add i32 %56, 516
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = add i32 %3380, 0
  %3382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3382, %dx.types.Handle %99, float %3258, float %3259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = add i32 %56, 148
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = shl i32 %3387, 4
  %3389 = and i32 %3388, 32752
  %3390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3389)  ; LegacyF16ToF32(value)
  %3391 = lshr i32 %3387, 7
  %3392 = and i32 %3391, 32752
  %3393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3392)  ; LegacyF16ToF32(value)
  %3394 = fsub fast float 1.000000e+00, %3372
  %3395 = call float @dx.op.binary.f32(i32 35, float %3394, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3396 = bitcast float %3372 to i32
  %3397 = sitofp i32 %3396 to float
  %3398 = fadd fast float %3397, 0xC1CFBF8940000000
  %3399 = fmul fast float %3393, %3398
  %3400 = fadd fast float %3399, 0x41CFBF8940000000
  %3401 = fptosi float %3400 to i32
  %3402 = bitcast i32 %3401 to float
  %3403 = bitcast float %3395 to i32
  %3404 = sitofp i32 %3403 to float
  %3405 = fadd fast float %3404, 0xC1CFBF8940000000
  %3406 = fmul fast float %3405, %3393
  %3407 = fadd fast float %3406, 0x41CFBF8940000000
  %3408 = fptosi float %3407 to i32
  %3409 = bitcast i32 %3408 to float
  %3410 = fmul fast float %3402, %3390
  %3411 = fmul fast float %3409, %3390
  %3412 = fsub fast float %3395, %3410
  %3413 = fadd fast float %3411, %3395
  %3414 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3415 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3416 = fsub fast float %3384, %3414
  %3417 = fsub fast float %3415, %3414
  %3418 = bitcast float %3417 to i32
  %3419 = sub nsw i32 2129859010, %3418
  %3420 = bitcast i32 %3419 to float
  %3421 = fmul fast float %3420, %3416
  %3422 = call float @dx.op.unary.f32(i32 7, float %3421)  ; Saturate(value)
  br label %3423

; <label>:3423                                    ; preds = %3377, %3371
  %3424 = phi float [ %3422, %3377 ], [ %3372, %3371 ]
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = and i32 %3426, 128
  %3428 = icmp eq i32 %3427, 0
  br i1 %3428, label %3445, label %3429

; <label>:3429                                    ; preds = %3423
  %3430 = add i32 %56, 500
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = add i32 %3432, 0
  %3434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3435 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3434, %dx.types.Handle %99, float %3258, float %3259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = and i32 %3438, 524288
  %3440 = icmp ne i32 %3439, 0
  %3441 = fcmp fast ogt float %3436, 0x3FE0101020000000
  %3442 = select i1 %3441, float 1.000000e+00, float 0.000000e+00
  %3443 = select i1 %3440, float %3442, float %3436
  %3444 = fmul fast float %3443, %3424
  br label %3445

; <label>:3445                                    ; preds = %3429, %3423
  %3446 = phi float [ %3444, %3429 ], [ %3424, %3423 ]
  %3447 = fcmp fast ult float %3446, 0x3F70101020000000
  br i1 %3447, label %4101, label %3448

; <label>:3448                                    ; preds = %3445
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = and i32 %3450, 16
  %3452 = icmp eq i32 %3451, 0
  br i1 %3452, label %3651, label %3453

; <label>:3453                                    ; preds = %3448
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = add i32 %56, 452
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = add i32 %3458, 0
  %3460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3460, %dx.types.Handle %98, float %3258, float %3259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3465 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3466 = and i32 %3455, 255
  %3467 = uitofp i32 %3466 to float
  %3468 = lshr i32 %3455, 8
  %3469 = and i32 %3468, 255
  %3470 = uitofp i32 %3469 to float
  %3471 = fmul fast float %3465, %3467
  %3472 = fadd fast float %3471, %3470
  %3473 = fmul fast float %3472, 0x3F70101000000000
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = and i32 %3475, 512
  %3477 = icmp eq i32 %3476, 0
  br i1 %3477, label %3486, label %3478

; <label>:3478                                    ; preds = %3453
  %3479 = add i32 %56, 532
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = add i32 %3481, 0
  %3483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3483, %dx.types.Handle %99, float %3258, float %3259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 0
  br label %3486

; <label>:3486                                    ; preds = %3478, %3453
  %3487 = phi float [ %3485, %3478 ], [ 1.000000e+00, %3453 ]
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = and i32 %3489, 33554432
  %3491 = icmp eq i32 %3490, 0
  br i1 %3491, label %3598, label %3492

; <label>:3492                                    ; preds = %3486
  %3493 = add i32 %56, 272
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = and i32 %3495, 65535
  %3497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3496)  ; LegacyF16ToF32(value)
  %3498 = lshr i32 %3495, 16
  %3499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3498)  ; LegacyF16ToF32(value)
  %3500 = add i32 %56, 276
  %3501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.i32 %3501, 0
  %3503 = and i32 %3502, 65535
  %3504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3503)  ; LegacyF16ToF32(value)
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = lshr i32 %3506, 24
  %3508 = uitofp i32 %3507 to float
  %3509 = fmul fast float %3508, 0x3F70101020000000
  %3510 = and i32 %3506, 255
  %3511 = uitofp i32 %3510 to float
  %3512 = fmul fast float %3511, 0x3F70101020000000
  %3513 = lshr i32 %3506, 8
  %3514 = and i32 %3513, 255
  %3515 = uitofp i32 %3514 to float
  %3516 = fmul fast float %3515, 0x3F70101020000000
  %3517 = lshr i32 %3506, 16
  %3518 = and i32 %3517, 255
  %3519 = uitofp i32 %3518 to float
  %3520 = fmul fast float %3519, 0x3F70101020000000
  %3521 = add i32 %56, 268
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = lshr i32 %3523, 24
  %3525 = uitofp i32 %3524 to float
  %3526 = fmul fast float %3525, 0x3F70101020000000
  %3527 = and i32 %3523, 255
  %3528 = uitofp i32 %3527 to float
  %3529 = fmul fast float %3528, 0x3F70101020000000
  %3530 = lshr i32 %3523, 8
  %3531 = and i32 %3530, 255
  %3532 = uitofp i32 %3531 to float
  %3533 = fmul fast float %3532, 0x3F70101020000000
  %3534 = lshr i32 %3523, 16
  %3535 = and i32 %3534, 255
  %3536 = uitofp i32 %3535 to float
  %3537 = fmul fast float %3536, 0x3F70101020000000
  %3538 = bitcast float %3462 to i32
  %3539 = ashr i32 %3538, 1
  %3540 = sub nsw i32 1597463174, %3539
  %3541 = bitcast i32 %3540 to float
  %3542 = fmul fast float %3462, 5.000000e-01
  %3543 = fmul fast float %3541, %3541
  %3544 = fmul fast float %3543, %3542
  %3545 = fsub fast float 1.500000e+00, %3544
  %3546 = fmul fast float %3541, %3462
  %3547 = fmul fast float %3546, %3545
  %3548 = bitcast float %3463 to i32
  %3549 = ashr i32 %3548, 1
  %3550 = sub nsw i32 1597463174, %3549
  %3551 = bitcast i32 %3550 to float
  %3552 = fmul fast float %3463, 5.000000e-01
  %3553 = fmul fast float %3551, %3551
  %3554 = fmul fast float %3553, %3552
  %3555 = fsub fast float 1.500000e+00, %3554
  %3556 = fmul fast float %3551, %3463
  %3557 = fmul fast float %3556, %3555
  %3558 = bitcast float %3464 to i32
  %3559 = ashr i32 %3558, 1
  %3560 = sub nsw i32 1597463174, %3559
  %3561 = bitcast i32 %3560 to float
  %3562 = fmul fast float %3464, 5.000000e-01
  %3563 = fmul fast float %3561, %3561
  %3564 = fmul fast float %3563, %3562
  %3565 = fsub fast float 1.500000e+00, %3564
  %3566 = fmul fast float %3561, %3464
  %3567 = fmul fast float %3566, %3565
  %3568 = fsub fast float %3547, %3529
  %3569 = fsub fast float %3557, %3533
  %3570 = fsub fast float %3567, %3537
  %3571 = fmul fast float %3568, %3497
  %3572 = fmul fast float %3569, %3499
  %3573 = fmul fast float %3570, %3504
  %3574 = fadd fast float %3571, %3512
  %3575 = fadd fast float %3572, %3516
  %3576 = fadd fast float %3573, %3520
  %3577 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  %3578 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3579 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  %3580 = fmul fast float %3577, %3577
  %3581 = fmul fast float %3578, %3578
  %3582 = fmul fast float %3579, %3579
  %3583 = fsub fast float %3580, %3462
  %3584 = fsub fast float %3581, %3463
  %3585 = fsub fast float %3582, %3464
  %3586 = fmul fast float %3583, %3487
  %3587 = fmul fast float %3584, %3487
  %3588 = fmul fast float %3585, %3487
  %3589 = fadd fast float %3586, %3462
  %3590 = fadd fast float %3587, %3463
  %3591 = fadd fast float %3588, %3464
  %3592 = fadd fast float %3509, %3473
  %3593 = fsub fast float %3592, %3526
  %3594 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3595 = fsub fast float %3594, %3473
  %3596 = fmul fast float %3595, %3487
  %3597 = fadd fast float %3596, %3473
  br label %3651

; <label>:3598                                    ; preds = %3486
  %3599 = and i32 %3489, 134217728
  %3600 = icmp eq i32 %3599, 0
  br i1 %3600, label %3635, label %3601

; <label>:3601                                    ; preds = %3598
  %3602 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %3603 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %3604 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3605 = fadd fast float %3602, -5.000000e-01
  %3606 = fadd fast float %3603, -5.000000e-01
  %3607 = fadd fast float %3604, -5.000000e-01
  %3608 = fmul fast float %3605, %3487
  %3609 = fmul fast float %3606, %3487
  %3610 = fmul fast float %3607, %3487
  %3611 = fadd fast float %3608, 5.000000e-01
  %3612 = fadd fast float %3609, 5.000000e-01
  %3613 = fadd fast float %3610, 5.000000e-01
  %3614 = call float @dx.op.unary.f32(i32 24, float %3462)  ; Sqrt(value)
  %3615 = call float @dx.op.unary.f32(i32 24, float %3463)  ; Sqrt(value)
  %3616 = call float @dx.op.unary.f32(i32 24, float %3464)  ; Sqrt(value)
  %3617 = fmul fast float %3611, 2.000000e+00
  %3618 = fsub fast float 1.000000e+00, %3617
  %3619 = fmul fast float %3618, %3614
  %3620 = fadd fast float %3619, %3617
  %3621 = fmul fast float %3620, %3614
  %3622 = fmul fast float %3612, 2.000000e+00
  %3623 = fsub fast float 1.000000e+00, %3622
  %3624 = fmul fast float %3623, %3615
  %3625 = fadd fast float %3624, %3622
  %3626 = fmul fast float %3625, %3615
  %3627 = fmul fast float %3613, 2.000000e+00
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = fmul fast float %3628, %3616
  %3630 = fadd fast float %3629, %3627
  %3631 = fmul fast float %3630, %3616
  %3632 = fmul fast float %3621, %3621
  %3633 = fmul fast float %3626, %3626
  %3634 = fmul fast float %3631, %3631
  br label %3651

; <label>:3635                                    ; preds = %3598
  %3636 = fmul fast float %378, %378
  %3637 = fmul fast float %382, %382
  %3638 = fmul fast float %386, %386
  %3639 = fadd fast float %3636, -1.000000e+00
  %3640 = fadd fast float %3637, -1.000000e+00
  %3641 = fadd fast float %3638, -1.000000e+00
  %3642 = fmul fast float %3487, %3639
  %3643 = fmul fast float %3487, %3640
  %3644 = fmul fast float %3487, %3641
  %3645 = fadd fast float %3642, 1.000000e+00
  %3646 = fadd fast float %3643, 1.000000e+00
  %3647 = fadd fast float %3644, 1.000000e+00
  %3648 = fmul fast float %3645, %3462
  %3649 = fmul fast float %3646, %3463
  %3650 = fmul fast float %3647, %3464
  br label %3651

; <label>:3651                                    ; preds = %3635, %3601, %3492, %3448
  %3652 = phi float [ %3597, %3492 ], [ %3473, %3601 ], [ %3473, %3635 ], [ 0x3FA23C0BE0000000, %3448 ]
  %3653 = phi float [ %3589, %3492 ], [ %3632, %3601 ], [ %3648, %3635 ], [ 1.000000e+00, %3448 ]
  %3654 = phi float [ %3590, %3492 ], [ %3633, %3601 ], [ %3649, %3635 ], [ 1.000000e+00, %3448 ]
  %3655 = phi float [ %3591, %3492 ], [ %3634, %3601 ], [ %3650, %3635 ], [ 1.000000e+00, %3448 ]
  %3656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.i32 %3656, 1
  %3658 = and i32 %3657, 1
  %3659 = icmp ne i32 %3658, 0
  %3660 = add i32 %56, 356
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = and i32 %3662, 32
  %3664 = icmp ne i32 %3663, 0
  %3665 = and i1 %3659, %3664
  %3666 = select i1 %3665, float 1.000000e+00, float %3653
  %3667 = select i1 %3665, float 0x3FD3333340000000, float %3654
  %3668 = select i1 %3665, float 0x3FD3333340000000, float %3655
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = and i32 %3670, 32
  %3672 = icmp eq i32 %3671, 0
  br i1 %3672, label %3745, label %3673

; <label>:3673                                    ; preds = %3651
  %3674 = add i32 %56, 140
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3674, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = add i32 %56, 468
  %3678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.i32 %3678, 0
  %3680 = add i32 %3679, 0
  %3681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3680, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3682 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3681, %dx.types.Handle %98, float %3258, float %3259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3683 = extractvalue %dx.types.ResRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.ResRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3682, 2
  %3686 = extractvalue %dx.types.ResRet.f32 %3682, 3
  %3687 = and i32 %3676, 255
  %3688 = uitofp i32 %3687 to float
  %3689 = lshr i32 %3676, 8
  %3690 = and i32 %3689, 255
  %3691 = uitofp i32 %3690 to float
  %3692 = lshr i32 %3676, 16
  %3693 = and i32 %3692, 255
  %3694 = uitofp i32 %3693 to float
  %3695 = fmul fast float %3694, 0x3F70101000000000
  %3696 = fmul fast float %3683, %3688
  %3697 = fadd fast float %3696, %3691
  %3698 = fmul fast float %3697, 0x3F70101000000000
  %3699 = fadd fast float %3684, -5.000000e-01
  %3700 = fadd fast float %3686, -5.000000e-01
  %3701 = fmul fast float %3699, %3695
  %3702 = fmul fast float %3700, %3695
  %3703 = fadd fast float %3701, 5.000000e-01
  %3704 = fadd fast float %3702, 5.000000e-01
  %3705 = fmul fast float %3703, 2.000000e+00
  %3706 = fadd fast float %3705, -1.000000e+00
  %3707 = fmul fast float %3704, 2.000000e+00
  %3708 = fadd fast float %3707, -1.000000e+00
  %3709 = fadd fast float %3706, %3708
  %3710 = fmul fast float %3709, 5.000000e-01
  %3711 = fsub fast float %3706, %3708
  %3712 = fmul fast float %3711, 5.000000e-01
  %3713 = call float @dx.op.unary.f32(i32 6, float %3710)  ; FAbs(value)
  %3714 = fsub fast float 1.000000e+00, %3713
  %3715 = call float @dx.op.unary.f32(i32 6, float %3712)  ; FAbs(value)
  %3716 = fsub fast float %3714, %3715
  %3717 = call float @dx.op.dot3.f32(i32 55, float %3710, float %3712, float %3716, float %3710, float %3712, float %3716)  ; Dot3(ax,ay,az,bx,by,bz)
  %3718 = call float @dx.op.unary.f32(i32 25, float %3717)  ; Rsqrt(value)
  %3719 = fmul fast float %3710, %3718
  %3720 = fmul fast float %3712, %3718
  %3721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.i32 %3721, 0
  %3723 = and i32 %3722, 67108864
  %3724 = icmp eq i32 %3723, 0
  br i1 %3724, label %3741, label %3725

; <label>:3725                                    ; preds = %3673
  %3726 = add i32 %56, 328
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = and i32 %3728, 65535
  %3730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3729)  ; LegacyF16ToF32(value)
  %3731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.i32 %3731, 0
  %3733 = and i32 %3732, 65535
  %3734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3733)  ; LegacyF16ToF32(value)
  %3735 = lshr i32 %3728, 16
  %3736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3735)  ; LegacyF16ToF32(value)
  %3737 = fsub fast float %3698, %3736
  %3738 = fmul fast float %3737, %3730
  %3739 = fadd fast float %3738, %3734
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  br label %3741

; <label>:3741                                    ; preds = %3725, %3673
  %3742 = phi float [ %3740, %3725 ], [ %3698, %3673 ]
  %3743 = call float @dx.op.dot2.f32(i32 54, float %3719, float %3720, float %3162, float %3163)  ; Dot2(ax,ay,bx,by)
  %3744 = call float @dx.op.dot2.f32(i32 54, float %3719, float %3720, float %3164, float %3165)  ; Dot2(ax,ay,bx,by)
  br label %3745

; <label>:3745                                    ; preds = %3741, %3651
  %3746 = phi float [ %3742, %3741 ], [ 0x3FD6666660000000, %3651 ]
  %3747 = phi float [ %3743, %3741 ], [ 0.000000e+00, %3651 ]
  %3748 = phi float [ %3744, %3741 ], [ 0.000000e+00, %3651 ]
  %3749 = phi float [ %3685, %3741 ], [ 1.000000e+00, %3651 ]
  %3750 = add i32 %56, 208
  %3751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.i32 %3751, 0
  %3753 = lshr i32 %3752, 22
  %3754 = shl nuw nsw i32 %3753, 5
  %3755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3754)  ; LegacyF16ToF32(value)
  %3756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.i32 %3756, 0
  %3758 = and i32 %3757, 64
  %3759 = icmp eq i32 %3758, 0
  br i1 %3759, label %3793, label %3760

; <label>:3760                                    ; preds = %3745
  %3761 = add i32 %56, 484
  %3762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3761, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.i32 %3762, 0
  %3764 = add i32 %3763, 0
  %3765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.i32 %3766, 0
  %3768 = and i32 %3767, 131072
  %3769 = icmp eq i32 %3768, 0
  %3770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3765, %dx.types.Handle %98, float %3258, float %3259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3774 = fmul fast float %3771, %366
  %3775 = fmul fast float %3772, %369
  %3776 = fmul fast float %3773, %372
  br i1 %3769, label %3783, label %3777

; <label>:3777                                    ; preds = %3760
  %3778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3779 = extractvalue %dx.types.CBufRet.f32 %3778, 0
  %3780 = fmul fast float %3779, %3774
  %3781 = fmul fast float %3779, %3775
  %3782 = fmul fast float %3779, %3776
  br label %3783

; <label>:3783                                    ; preds = %3777, %3760
  %3784 = phi float [ %3780, %3777 ], [ %3774, %3760 ]
  %3785 = phi float [ %3781, %3777 ], [ %3775, %3760 ]
  %3786 = phi float [ %3782, %3777 ], [ %3776, %3760 ]
  %3787 = fmul fast float %3784, %3755
  %3788 = select i1 %223, float %3787, float %3784
  %3789 = call float @dx.op.dot3.f32(i32 55, float %3788, float %3785, float %3786, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3790 = select i1 %223, float 0.000000e+00, float %3784
  %3791 = select i1 %223, float %3789, float %3785
  %3792 = select i1 %223, float 0.000000e+00, float %3786
  br label %3793

; <label>:3793                                    ; preds = %3783, %3745
  %3794 = phi float [ %3790, %3783 ], [ 0.000000e+00, %3745 ]
  %3795 = phi float [ %3791, %3783 ], [ 0.000000e+00, %3745 ]
  %3796 = phi float [ %3792, %3783 ], [ 0.000000e+00, %3745 ]
  %3797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3798 = extractvalue %dx.types.ResRet.i32 %3797, 0
  %3799 = and i32 %3798, 26624
  %3800 = icmp eq i32 %3799, 0
  br i1 %3800, label %3858, label %3801

; <label>:3801                                    ; preds = %3793
  %3802 = add i32 %56, 548
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = add i32 %3804, 0
  %3806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3805, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3807 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3806, %dx.types.Handle %99, float %3258, float %3259, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3808 = extractvalue %dx.types.ResRet.f32 %3807, 0
  %3809 = extractvalue %dx.types.ResRet.f32 %3807, 1
  %3810 = extractvalue %dx.types.ResRet.f32 %3807, 3
  %3811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.i32 %3811, 0
  %3813 = and i32 %3812, 1048576
  %3814 = icmp ne i32 %3813, 0
  %3815 = and i32 %3812, 8192
  %3816 = icmp eq i32 %3815, 0
  br i1 %3816, label %3831, label %3817

; <label>:3817                                    ; preds = %3801
  %3818 = extractvalue %dx.types.ResRet.f32 %3807, 2
  %3819 = select i1 %3814, float %3818, float %3809
  %3820 = select i1 %3814, float %3808, float %3809
  %3821 = add i32 %56, 144
  %3822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.i32 %3822, 0
  %3824 = lshr i32 %3823, 16
  %3825 = and i32 %3824, 255
  %3826 = uitofp i32 %3825 to float
  %3827 = fmul fast float %3826, 0x3F80101020000000
  %3828 = fmul fast float %3827, %3820
  %3829 = fmul fast float %3827, %3809
  %3830 = fmul fast float %3827, %3819
  br label %3831

; <label>:3831                                    ; preds = %3817, %3801
  %3832 = phi float [ %3828, %3817 ], [ 0.000000e+00, %3801 ]
  %3833 = phi float [ %3829, %3817 ], [ 0.000000e+00, %3801 ]
  %3834 = phi float [ %3830, %3817 ], [ 0.000000e+00, %3801 ]
  %3835 = and i32 %3812, 2048
  %3836 = icmp eq i32 %3835, 0
  br i1 %3836, label %3845, label %3837

; <label>:3837                                    ; preds = %3831
  %3838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.i32 %3838, 0
  %3840 = shl i32 %3839, 4
  %3841 = and i32 %3840, 32752
  %3842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3841)  ; LegacyF16ToF32(value)
  %3843 = fmul fast float %3842, %3810
  %3844 = call float @dx.op.binary.f32(i32 35, float %3843, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3845

; <label>:3845                                    ; preds = %3837, %3831
  %3846 = phi float [ %3844, %3837 ], [ 0x3F70101020000000, %3831 ]
  %3847 = and i32 %3812, 16384
  %3848 = icmp eq i32 %3847, 0
  br i1 %3848, label %3858, label %3849

; <label>:3849                                    ; preds = %3845
  %3850 = add i32 %56, 144
  %3851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.i32 %3851, 0
  %3853 = lshr i32 %3852, 24
  %3854 = uitofp i32 %3853 to float
  %3855 = fmul fast float %3808, 0x3F70101020000000
  %3856 = select i1 %3814, float 0x3F70101020000000, float %3855
  %3857 = fmul fast float %3856, %3854
  br label %3858

; <label>:3858                                    ; preds = %3849, %3845, %3793
  %3859 = phi float [ %3832, %3849 ], [ %3832, %3845 ], [ 0.000000e+00, %3793 ]
  %3860 = phi float [ %3833, %3849 ], [ %3833, %3845 ], [ 0.000000e+00, %3793 ]
  %3861 = phi float [ %3834, %3849 ], [ %3834, %3845 ], [ 0.000000e+00, %3793 ]
  %3862 = phi float [ %3846, %3849 ], [ %3846, %3845 ], [ 0x3F70101020000000, %3793 ]
  %3863 = phi float [ %3857, %3849 ], [ 0.000000e+00, %3845 ], [ 0.000000e+00, %3793 ]
  %3864 = add i32 %56, 144
  %3865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.i32 %3865, 0
  %3867 = and i32 %3866, 255
  %3868 = uitofp i32 %3867 to float
  %3869 = lshr i32 %3866, 8
  %3870 = and i32 %3869, 255
  %3871 = uitofp i32 %3870 to float
  %3872 = call float @dx.op.dot3.f32(i32 55, float %3666, float %3667, float %3668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3873 = fmul fast float %3871, %3872
  %3874 = fadd fast float %3873, %3868
  %3875 = fmul fast float %3874, 0x3F70101020000000
  %3876 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  br i1 %3150, label %3877, label %3885

; <label>:3877                                    ; preds = %3858
  %3878 = fsub fast float 1.000000e+00, %3446
  %3879 = fmul fast float %3878, %3134
  %3880 = fmul fast float %3878, %3135
  %3881 = fmul fast float %3878, %3136
  %3882 = fmul fast float %3878, %3137
  %3883 = fmul fast float %3878, %3138
  %3884 = fmul fast float %3878, %3139
  br label %3885

; <label>:3885                                    ; preds = %3877, %3858
  %3886 = phi float [ %3879, %3877 ], [ %3134, %3858 ]
  %3887 = phi float [ %3880, %3877 ], [ %3135, %3858 ]
  %3888 = phi float [ %3881, %3877 ], [ %3136, %3858 ]
  %3889 = phi float [ %3882, %3877 ], [ %3137, %3858 ]
  %3890 = phi float [ %3883, %3877 ], [ %3138, %3858 ]
  %3891 = phi float [ %3884, %3877 ], [ %3139, %3858 ]
  %3892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.i32 %3892, 0
  %3894 = and i32 %3893, 3
  %3895 = icmp eq i32 %3894, 3
  br i1 %3895, label %3974, label %3896

; <label>:3896                                    ; preds = %3885
  %3897 = and i32 %3893, 16
  %3898 = icmp ne i32 %3897, 0
  %3899 = select i1 %3898, float %3446, float 0.000000e+00
  %3900 = icmp eq i32 %3894, 0
  br i1 %3900, label %3901, label %3929

; <label>:3901                                    ; preds = %3896
  %3902 = and i32 %3893, 64
  %3903 = icmp ne i32 %3902, 0
  %3904 = select i1 %3903, float %3446, float 0.000000e+00
  %3905 = fsub fast float %3666, %3886
  %3906 = fsub fast float %3667, %3887
  %3907 = fsub fast float %3668, %3888
  %3908 = fmul fast float %3899, %3905
  %3909 = fmul fast float %3899, %3906
  %3910 = fmul fast float %3899, %3907
  %3911 = fadd fast float %3908, %3886
  %3912 = fadd fast float %3909, %3887
  %3913 = fadd fast float %3910, %3888
  %3914 = fsub fast float %3652, %3143
  %3915 = fmul fast float %3899, %3914
  %3916 = fadd fast float %3915, %3143
  %3917 = fsub fast float %3794, %3889
  %3918 = fsub fast float %3795, %3890
  %3919 = fsub fast float %3796, %3891
  %3920 = fmul fast float %3904, %3917
  %3921 = fmul fast float %3904, %3918
  %3922 = fmul fast float %3904, %3919
  %3923 = fadd fast float %3920, %3889
  %3924 = fadd fast float %3921, %3890
  %3925 = fadd fast float %3922, %3891
  %3926 = fsub fast float %3876, %3148
  %3927 = fmul fast float %3899, %3926
  %3928 = fadd fast float %3927, %3148
  br label %3974

; <label>:3929                                    ; preds = %3896
  %3930 = icmp eq i32 %3894, 1
  br i1 %3930, label %3931, label %3944

; <label>:3931                                    ; preds = %3929
  %3932 = fadd fast float %3666, -1.000000e+00
  %3933 = fadd fast float %3667, -1.000000e+00
  %3934 = fadd fast float %3668, -1.000000e+00
  %3935 = fmul fast float %3899, %3932
  %3936 = fmul fast float %3899, %3933
  %3937 = fmul fast float %3899, %3934
  %3938 = fadd fast float %3935, 1.000000e+00
  %3939 = fadd fast float %3936, 1.000000e+00
  %3940 = fadd fast float %3937, 1.000000e+00
  %3941 = fmul fast float %3938, %3886
  %3942 = fmul fast float %3939, %3887
  %3943 = fmul fast float %3940, %3888
  br label %3974

; <label>:3944                                    ; preds = %3929
  %3945 = icmp eq i32 %3894, 2
  br i1 %3945, label %3946, label %3974

; <label>:3946                                    ; preds = %3944
  %3947 = call float @dx.op.unary.f32(i32 24, float %3666)  ; Sqrt(value)
  %3948 = call float @dx.op.unary.f32(i32 24, float %3667)  ; Sqrt(value)
  %3949 = call float @dx.op.unary.f32(i32 24, float %3668)  ; Sqrt(value)
  %3950 = fadd fast float %3947, -5.000000e-01
  %3951 = fadd fast float %3948, -5.000000e-01
  %3952 = fadd fast float %3949, -5.000000e-01
  %3953 = fmul fast float %3950, %3899
  %3954 = fmul fast float %3951, %3899
  %3955 = fmul fast float %3952, %3899
  %3956 = fadd fast float %3953, 5.000000e-01
  %3957 = fadd fast float %3954, 5.000000e-01
  %3958 = fadd fast float %3955, 5.000000e-01
  %3959 = fmul fast float %3956, 2.000000e+00
  %3960 = fsub fast float 1.000000e+00, %3959
  %3961 = fmul fast float %3960, %3886
  %3962 = fadd fast float %3961, %3959
  %3963 = fmul fast float %3962, %3886
  %3964 = fmul fast float %3957, 2.000000e+00
  %3965 = fsub fast float 1.000000e+00, %3964
  %3966 = fmul fast float %3965, %3887
  %3967 = fadd fast float %3966, %3964
  %3968 = fmul fast float %3967, %3887
  %3969 = fmul fast float %3958, 2.000000e+00
  %3970 = fsub fast float 1.000000e+00, %3969
  %3971 = fmul fast float %3970, %3888
  %3972 = fadd fast float %3971, %3969
  %3973 = fmul fast float %3972, %3888
  br label %3974

; <label>:3974                                    ; preds = %3946, %3944, %3931, %3901, %3885
  %3975 = phi float [ %3886, %3885 ], [ %3963, %3946 ], [ %3886, %3944 ], [ %3941, %3931 ], [ %3911, %3901 ]
  %3976 = phi float [ %3887, %3885 ], [ %3968, %3946 ], [ %3887, %3944 ], [ %3942, %3931 ], [ %3912, %3901 ]
  %3977 = phi float [ %3888, %3885 ], [ %3973, %3946 ], [ %3888, %3944 ], [ %3943, %3931 ], [ %3913, %3901 ]
  %3978 = phi float [ %3889, %3885 ], [ %3889, %3946 ], [ %3889, %3944 ], [ %3889, %3931 ], [ %3923, %3901 ]
  %3979 = phi float [ %3890, %3885 ], [ %3890, %3946 ], [ %3890, %3944 ], [ %3890, %3931 ], [ %3924, %3901 ]
  %3980 = phi float [ %3891, %3885 ], [ %3891, %3946 ], [ %3891, %3944 ], [ %3891, %3931 ], [ %3925, %3901 ]
  %3981 = phi float [ %3143, %3885 ], [ %3143, %3946 ], [ %3143, %3944 ], [ %3143, %3931 ], [ %3916, %3901 ]
  %3982 = phi float [ %3148, %3885 ], [ %3148, %3946 ], [ %3148, %3944 ], [ %3148, %3931 ], [ %3928, %3901 ]
  %3983 = and i32 %3893, 12
  %3984 = icmp eq i32 %3983, 12
  br i1 %3984, label %4101, label %3985

; <label>:3985                                    ; preds = %3974
  %3986 = and i32 %3893, 2097184
  %3987 = icmp eq i32 %3986, 2097184
  %3988 = select i1 %3987, float %3446, float 0.000000e+00
  %3989 = and i32 %3893, 4194336
  %3990 = icmp eq i32 %3989, 4194336
  %3991 = select i1 %3990, float %3446, float 0.000000e+00
  %3992 = and i32 %3893, 8388640
  %3993 = icmp eq i32 %3992, 8388640
  %3994 = select i1 %3993, float %3446, float 0.000000e+00
  %3995 = and i32 %3893, 2048
  %3996 = icmp ne i32 %3995, 0
  %3997 = select i1 %3996, float %3446, float 0.000000e+00
  %3998 = and i32 %3893, 8192
  %3999 = icmp ne i32 %3998, 0
  %4000 = select i1 %3999, float %3446, float 0.000000e+00
  %4001 = and i32 %3893, 16384
  %4002 = icmp ne i32 %4001, 0
  %4003 = select i1 %4002, float %3446, float 0.000000e+00
  %4004 = icmp eq i32 %3983, 0
  br i1 %4004, label %4005, label %4033

; <label>:4005                                    ; preds = %3985
  %4006 = fsub fast float %3747, %3132
  %4007 = fsub fast float %3748, %3133
  %4008 = fmul fast float %3988, %4006
  %4009 = fmul fast float %3988, %4007
  %4010 = fadd fast float %4008, %3132
  %4011 = fadd fast float %4009, %3133
  %4012 = fsub fast float %3749, %3145
  %4013 = fmul fast float %3991, %4012
  %4014 = fadd fast float %4013, %3145
  %4015 = fsub fast float %3746, %3144
  %4016 = fmul fast float %3994, %4015
  %4017 = fadd fast float %4016, %3144
  %4018 = fsub fast float %3862, %3146
  %4019 = fmul fast float %3997, %4018
  %4020 = fadd fast float %4019, %3146
  %4021 = fsub fast float %3859, %3140
  %4022 = fsub fast float %3860, %3141
  %4023 = fsub fast float %3861, %3142
  %4024 = fmul fast float %4000, %4021
  %4025 = fmul fast float %4000, %4022
  %4026 = fmul fast float %4000, %4023
  %4027 = fadd fast float %4024, %3140
  %4028 = fadd fast float %4025, %3141
  %4029 = fadd fast float %4026, %3142
  %4030 = fsub fast float %3863, %3147
  %4031 = fmul fast float %4003, %4030
  %4032 = fadd fast float %4031, %3147
  br label %4101

; <label>:4033                                    ; preds = %3985
  %4034 = icmp eq i32 %3983, 4
  br i1 %4034, label %4035, label %4077

; <label>:4035                                    ; preds = %4033
  %4036 = fmul fast float %3988, %3747
  %4037 = fmul fast float %3988, %3748
  %4038 = fadd fast float %4036, %3132
  %4039 = fadd fast float %4037, %3133
  %4040 = call float @dx.op.binary.f32(i32 36, float %3145, float %3749)  ; FMin(a,b)
  %4041 = fsub fast float %4040, %3145
  %4042 = fmul fast float %4041, %3991
  %4043 = fadd fast float %4042, %3145
  %4044 = fadd fast float %3746, %3144
  %4045 = fmul fast float %4044, 0x3FF337FAE0000000
  %4046 = fmul fast float %3144, %3144
  %4047 = fmul fast float %3746, %3746
  %4048 = fadd fast float %4047, %4046
  %4049 = fmul fast float %4048, 0x3FE5152B00000000
  %4050 = fmul fast float %3144, 0xBFCC1F85E0000000
  %4051 = fmul fast float %4050, %3746
  %4052 = fadd fast float %4051, 0xBFE1363700000000
  %4053 = fadd fast float %4052, %4045
  %4054 = fsub fast float %4053, %4049
  %4055 = fmul fast float %4044, 0x3FBA6F0D00000000
  %4056 = fmul fast float %4048, 0x3FD0432880000000
  %4057 = fmul fast float %3144, 0xBFEF110800000000
  %4058 = fmul fast float %4057, %3746
  %4059 = fadd fast float %4058, 1.000000e+00
  %4060 = fsub fast float %4059, %4055
  %4061 = fadd fast float %4060, %4056
  %4062 = fdiv fast float %4054, %4061
  %4063 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4064 = fsub fast float %4063, %3144
  %4065 = fmul fast float %4064, %3994
  %4066 = fadd fast float %4065, %3144
  %4067 = fmul fast float %3997, %3862
  %4068 = fadd fast float %4067, %3146
  %4069 = fmul fast float %4000, %3859
  %4070 = fmul fast float %4000, %3860
  %4071 = fmul fast float %4000, %3861
  %4072 = fadd fast float %4069, %3140
  %4073 = fadd fast float %4070, %3141
  %4074 = fadd fast float %4071, %3142
  %4075 = fmul fast float %4003, %3863
  %4076 = fadd fast float %4075, %3147
  br label %4101

; <label>:4077                                    ; preds = %4033
  %4078 = icmp eq i32 %3983, 8
  br i1 %4078, label %4079, label %4101

; <label>:4079                                    ; preds = %4077
  %4080 = fmul fast float %3988, %3747
  %4081 = fmul fast float %3988, %3748
  %4082 = fadd fast float %4080, %3132
  %4083 = fadd fast float %4081, %3133
  %4084 = call float @dx.op.binary.f32(i32 36, float %3145, float %3749)  ; FMin(a,b)
  %4085 = fsub fast float %4084, %3145
  %4086 = fmul fast float %4085, %3991
  %4087 = fadd fast float %4086, %3145
  %4088 = fsub fast float %3746, %3144
  %4089 = fmul fast float %3994, %4088
  %4090 = fadd fast float %4089, %3144
  %4091 = fmul fast float %3997, %3862
  %4092 = fadd fast float %4091, %3146
  %4093 = fmul fast float %4000, %3859
  %4094 = fmul fast float %4000, %3860
  %4095 = fmul fast float %4000, %3861
  %4096 = fadd fast float %4093, %3140
  %4097 = fadd fast float %4094, %3141
  %4098 = fadd fast float %4095, %3142
  %4099 = fmul fast float %4003, %3863
  %4100 = fadd fast float %4099, %3147
  br label %4101

; <label>:4101                                    ; preds = %4079, %4077, %4035, %4005, %3974, %3445, %3149, %3131
  %4102 = phi float [ %3132, %3974 ], [ %3132, %3445 ], [ %3132, %3131 ], [ %3132, %3149 ], [ %4010, %4005 ], [ %4038, %4035 ], [ %3132, %4077 ], [ %4082, %4079 ]
  %4103 = phi float [ %3133, %3974 ], [ %3133, %3445 ], [ %3133, %3131 ], [ %3133, %3149 ], [ %4011, %4005 ], [ %4039, %4035 ], [ %3133, %4077 ], [ %4083, %4079 ]
  %4104 = phi float [ %3975, %3974 ], [ %3134, %3445 ], [ %3134, %3131 ], [ %3134, %3149 ], [ %3975, %4005 ], [ %3975, %4035 ], [ %3975, %4077 ], [ %3975, %4079 ]
  %4105 = phi float [ %3976, %3974 ], [ %3135, %3445 ], [ %3135, %3131 ], [ %3135, %3149 ], [ %3976, %4005 ], [ %3976, %4035 ], [ %3976, %4077 ], [ %3976, %4079 ]
  %4106 = phi float [ %3977, %3974 ], [ %3136, %3445 ], [ %3136, %3131 ], [ %3136, %3149 ], [ %3977, %4005 ], [ %3977, %4035 ], [ %3977, %4077 ], [ %3977, %4079 ]
  %4107 = phi float [ %3978, %3974 ], [ %3137, %3445 ], [ %3137, %3131 ], [ %3137, %3149 ], [ %3978, %4005 ], [ %3978, %4035 ], [ %3978, %4077 ], [ %3978, %4079 ]
  %4108 = phi float [ %3979, %3974 ], [ %3138, %3445 ], [ %3138, %3131 ], [ %3138, %3149 ], [ %3979, %4005 ], [ %3979, %4035 ], [ %3979, %4077 ], [ %3979, %4079 ]
  %4109 = phi float [ %3980, %3974 ], [ %3139, %3445 ], [ %3139, %3131 ], [ %3139, %3149 ], [ %3980, %4005 ], [ %3980, %4035 ], [ %3980, %4077 ], [ %3980, %4079 ]
  %4110 = phi float [ %3140, %3974 ], [ %3140, %3445 ], [ %3140, %3131 ], [ %3140, %3149 ], [ %4027, %4005 ], [ %4072, %4035 ], [ %3140, %4077 ], [ %4096, %4079 ]
  %4111 = phi float [ %3141, %3974 ], [ %3141, %3445 ], [ %3141, %3131 ], [ %3141, %3149 ], [ %4028, %4005 ], [ %4073, %4035 ], [ %3141, %4077 ], [ %4097, %4079 ]
  %4112 = phi float [ %3142, %3974 ], [ %3142, %3445 ], [ %3142, %3131 ], [ %3142, %3149 ], [ %4029, %4005 ], [ %4074, %4035 ], [ %3142, %4077 ], [ %4098, %4079 ]
  %4113 = phi float [ %3981, %3974 ], [ %3143, %3445 ], [ %3143, %3131 ], [ %3143, %3149 ], [ %3981, %4005 ], [ %3981, %4035 ], [ %3981, %4077 ], [ %3981, %4079 ]
  %4114 = phi float [ %3144, %3974 ], [ %3144, %3445 ], [ %3144, %3131 ], [ %3144, %3149 ], [ %4017, %4005 ], [ %4066, %4035 ], [ %3144, %4077 ], [ %4090, %4079 ]
  %4115 = phi float [ %3145, %3974 ], [ %3145, %3445 ], [ %3145, %3131 ], [ %3145, %3149 ], [ %4014, %4005 ], [ %4043, %4035 ], [ %3145, %4077 ], [ %4087, %4079 ]
  %4116 = phi float [ %3146, %3974 ], [ %3146, %3445 ], [ %3146, %3131 ], [ %3146, %3149 ], [ %4020, %4005 ], [ %4068, %4035 ], [ %3146, %4077 ], [ %4092, %4079 ]
  %4117 = phi float [ %3147, %3974 ], [ %3147, %3445 ], [ %3147, %3131 ], [ %3147, %3149 ], [ %4032, %4005 ], [ %4076, %4035 ], [ %3147, %4077 ], [ %4100, %4079 ]
  %4118 = phi float [ %3982, %3974 ], [ %3148, %3445 ], [ %3148, %3131 ], [ %3148, %3149 ], [ %3982, %4005 ], [ %3982, %4035 ], [ %3982, %4077 ], [ %3982, %4079 ]
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4121 = call float @dx.op.dot2.f32(i32 54, float %4102, float %4103, float %4102, float %4103)  ; Dot2(ax,ay,bx,by)
  %4122 = fmul fast float %4121, 0x3FE3333340000000
  %4123 = fsub fast float 1.000000e+00, %4122
  %4124 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4123, float %4102, float %4103, float %4123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = call float @dx.op.unary.f32(i32 25, float %4124)  ; Rsqrt(value)
  %4126 = fmul fast float %4125, %4102
  %4127 = fmul fast float %4125, %4103
  %4128 = fmul fast float %4123, %4125
  %4129 = fmul fast float %4128, %111
  %4130 = fmul fast float %4128, %113
  %4131 = fmul fast float %4128, %115
  %4132 = fmul fast float %4126, %77
  %4133 = fmul fast float %4126, %78
  %4134 = fmul fast float %4126, %79
  %4135 = fadd fast float %4129, %4132
  %4136 = fadd fast float %4130, %4133
  %4137 = fadd fast float %4131, %4134
  %4138 = fmul fast float %125, %4127
  %4139 = fmul fast float %126, %4127
  %4140 = fmul fast float %127, %4127
  %4141 = fadd fast float %4135, %4138
  %4142 = fadd fast float %4136, %4139
  %4143 = fadd fast float %4137, %4140
  %4144 = call float @dx.op.dot3.f32(i32 55, float %4141, float %4142, float %4143, float %4141, float %4142, float %4143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4145 = call float @dx.op.unary.f32(i32 25, float %4144)  ; Rsqrt(value)
  %4146 = fmul fast float %4141, %4145
  %4147 = fmul fast float %4142, %4145
  %4148 = fmul fast float %4143, %4145
  %4149 = and i32 %58, 1
  %4150 = icmp eq i32 %4149, 0
  br i1 %4150, label %4151, label %4716

; <label>:4151                                    ; preds = %4101
  %4152 = call float @dx.op.unary.f32(i32 83, float %161)  ; DerivCoarseX(value)
  %4153 = call float @dx.op.unary.f32(i32 83, float %162)  ; DerivCoarseX(value)
  %4154 = call float @dx.op.unary.f32(i32 83, float %163)  ; DerivCoarseX(value)
  %4155 = call float @dx.op.unary.f32(i32 84, float %161)  ; DerivCoarseY(value)
  %4156 = call float @dx.op.unary.f32(i32 84, float %162)  ; DerivCoarseY(value)
  %4157 = call float @dx.op.unary.f32(i32 84, float %163)  ; DerivCoarseY(value)
  %4158 = fadd fast float %4152, %161
  %4159 = fadd fast float %4153, %162
  %4160 = fadd fast float %4154, %163
  %4161 = fadd fast float %4155, %161
  %4162 = fadd fast float %4156, %162
  %4163 = fadd fast float %4157, %163
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.CBufRet.f32 %4164, 1
  %4167 = extractvalue %dx.types.CBufRet.f32 %4164, 2
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 2
  %4170 = extractvalue %dx.types.CBufRet.f32 %4168, 3
  %4171 = fmul fast float %4165, %102
  %4172 = fmul fast float %4171, %4169
  %4173 = fmul fast float %4166, %103
  %4174 = fmul fast float %4173, %4170
  %4175 = fptoui float %4172 to i32
  %4176 = fptoui float %4174 to i32
  %4177 = fadd fast float %4165, -1.000000e+00
  %4178 = fadd fast float %4166, -1.000000e+00
  %4179 = fptoui float %4177 to i32
  %4180 = fptoui float %4178 to i32
  %4181 = call i32 @dx.op.binary.i32(i32 40, i32 %4175, i32 %4179)  ; UMin(a,b)
  %4182 = call i32 @dx.op.binary.i32(i32 40, i32 %4176, i32 %4180)  ; UMin(a,b)
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4185 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4186 = fmul fast float %4184, %93
  %4187 = fsub fast float %4186, %4185
  %4188 = fadd fast float %4167, -1.000000e+00
  %4189 = call float @dx.op.binary.f32(i32 36, float %4187, float %4188)  ; FMin(a,b)
  %4190 = fptoui float %4189 to i32
  %4191 = fptoui float %4165 to i32
  %4192 = fptoui float %4166 to i32
  %4193 = mul i32 %4190, %4192
  %4194 = add i32 %4193, %4182
  %4195 = mul i32 %4194, %4191
  %4196 = add i32 %4195, %4181
  %4197 = shl i32 %4196, 2
  %4198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.i32 %4198, 0
  %4200 = and i32 %4199, 1023
  %4201 = lshr i32 %4199, 10
  %4202 = icmp eq i32 %4200, 0
  br i1 %4202, label %4681, label %4203

; <label>:4203                                    ; preds = %4151
  %4204 = and i32 %4199, 1023
  br label %4205

; <label>:4205                                    ; preds = %4335, %4203
  %4206 = phi i32 [ %4285, %4335 ], [ 0, %4203 ]
  %4207 = phi float [ %4336, %4335 ], [ 0.000000e+00, %4203 ]
  %4208 = phi float [ %4337, %4335 ], [ %1203, %4203 ]
  %4209 = phi float [ %4338, %4335 ], [ %4120, %4203 ]
  %4210 = phi float [ %4339, %4335 ], [ %4118, %4203 ]
  %4211 = phi float [ %4340, %4335 ], [ %4117, %4203 ]
  %4212 = phi float [ %4341, %4335 ], [ 0.000000e+00, %4203 ]
  %4213 = phi float [ %4342, %4335 ], [ %4110, %4203 ]
  %4214 = phi float [ %4343, %4335 ], [ %4111, %4203 ]
  %4215 = phi float [ %4344, %4335 ], [ %4112, %4203 ]
  %4216 = phi float [ %4345, %4335 ], [ %4107, %4203 ]
  %4217 = phi float [ %4346, %4335 ], [ %4108, %4203 ]
  %4218 = phi float [ %4347, %4335 ], [ %4109, %4203 ]
  %4219 = phi float [ %4348, %4335 ], [ %4146, %4203 ]
  %4220 = phi float [ %4349, %4335 ], [ %4147, %4203 ]
  %4221 = phi float [ %4350, %4335 ], [ %4148, %4203 ]
  %4222 = phi float [ %4351, %4335 ], [ %4115, %4203 ]
  %4223 = phi float [ %4352, %4335 ], [ %4114, %4203 ]
  %4224 = phi float [ %4353, %4335 ], [ 0.000000e+00, %4203 ]
  %4225 = phi float [ %4354, %4335 ], [ %4113, %4203 ]
  %4226 = phi float [ %4355, %4335 ], [ %4104, %4203 ]
  %4227 = phi float [ %4356, %4335 ], [ %4105, %4203 ]
  %4228 = phi float [ %4357, %4335 ], [ %4106, %4203 ]
  %4229 = add nuw nsw i32 %4206, %4201
  %4230 = shl i32 %4229, 2
  %4231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.i32 %4231, 0
  %4233 = shl i32 %4232, 8
  %4234 = or i32 %4233, 48
  %4235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.ResRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.ResRet.f32 %4235, 2
  %4239 = extractvalue %dx.types.ResRet.f32 %4235, 3
  %4240 = or i32 %4233, 64
  %4241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.i32 %4241, 0
  %4243 = extractvalue %dx.types.ResRet.i32 %4241, 1
  %4244 = or i32 %4233, 80
  %4245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 2
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 3
  %4248 = or i32 %4233, 96
  %4249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4248, i32 undef)  ; BufferLoad(srv,index,wot)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.ResRet.f32 %4249, 1
  %4252 = extractvalue %dx.types.ResRet.f32 %4249, 2
  %4253 = extractvalue %dx.types.ResRet.f32 %4249, 3
  %4254 = or i32 %4233, 112
  %4255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4254, i32 undef)  ; BufferLoad(srv,index,wot)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 2
  %4257 = or i32 %4233, 128
  %4258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4257, i32 undef)  ; BufferLoad(srv,index,wot)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.ResRet.f32 %4258, 1
  %4261 = extractvalue %dx.types.ResRet.f32 %4258, 2
  %4262 = extractvalue %dx.types.ResRet.f32 %4258, 3
  %4263 = or i32 %4233, 144
  %4264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4266 = extractvalue %dx.types.ResRet.f32 %4264, 1
  %4267 = extractvalue %dx.types.ResRet.f32 %4264, 2
  %4268 = extractvalue %dx.types.ResRet.f32 %4264, 3
  %4269 = or i32 %4233, 160
  %4270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4269, i32 undef)  ; BufferLoad(srv,index,wot)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = extractvalue %dx.types.ResRet.f32 %4270, 1
  %4273 = extractvalue %dx.types.ResRet.f32 %4270, 2
  %4274 = extractvalue %dx.types.ResRet.f32 %4270, 3
  %4275 = or i32 %4233, 192
  %4276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.i32 %4276, 0
  %4278 = or i32 %4233, 208
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = or i32 %4233, 248
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = extractvalue %dx.types.ResRet.f32 %4282, 1
  %4285 = add nuw nsw i32 %4206, 1
  %4286 = bitcast float %4239 to i32
  %4287 = and i32 %4286, 512
  %4288 = icmp eq i32 %4287, 0
  %4289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4233, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.ResRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.ResRet.f32 %4289, 2
  %4293 = extractvalue %dx.types.ResRet.f32 %4289, 3
  %4294 = call float @dx.op.dot4.f32(i32 56, float %4290, float %4291, float %4292, float %4293, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4295 = or i32 %4233, 16
  %4296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4295, i32 undef)  ; BufferLoad(srv,index,wot)
  %4297 = extractvalue %dx.types.ResRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.ResRet.f32 %4296, 1
  %4299 = extractvalue %dx.types.ResRet.f32 %4296, 2
  %4300 = extractvalue %dx.types.ResRet.f32 %4296, 3
  %4301 = call float @dx.op.dot4.f32(i32 56, float %4297, float %4298, float %4299, float %4300, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4302 = or i32 %4233, 32
  %4303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4302, i32 undef)  ; BufferLoad(srv,index,wot)
  %4304 = extractvalue %dx.types.ResRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.ResRet.f32 %4303, 1
  %4306 = extractvalue %dx.types.ResRet.f32 %4303, 2
  %4307 = extractvalue %dx.types.ResRet.f32 %4303, 3
  %4308 = call float @dx.op.dot4.f32(i32 56, float %4304, float %4305, float %4306, float %4307, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4309 = call float @dx.op.unary.f32(i32 27, float %4294)  ; Round_ni(value)
  %4310 = call float @dx.op.unary.f32(i32 6, float %4309)  ; FAbs(value)
  %4311 = call float @dx.op.unary.f32(i32 27, float %4301)  ; Round_ni(value)
  %4312 = call float @dx.op.unary.f32(i32 6, float %4311)  ; FAbs(value)
  %4313 = call float @dx.op.unary.f32(i32 6, float %4308)  ; FAbs(value)
  %4314 = call float @dx.op.unary.f32(i32 27, float %4313)  ; Round_ni(value)
  %4315 = fadd fast float %4312, %4310
  %4316 = fadd fast float %4315, %4314
  %4317 = fcmp fast oeq float %4316, 0.000000e+00
  %4318 = call float @dx.op.dot4.f32(i32 56, float %4290, float %4291, float %4292, float %4293, float %4158, float %4159, float %4160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4319 = call float @dx.op.dot4.f32(i32 56, float %4297, float %4298, float %4299, float %4300, float %4158, float %4159, float %4160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4320 = call float @dx.op.dot4.f32(i32 56, float %4290, float %4291, float %4292, float %4293, float %4161, float %4162, float %4163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4321 = call float @dx.op.dot4.f32(i32 56, float %4297, float %4298, float %4299, float %4300, float %4161, float %4162, float %4163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4322 = fsub fast float %4318, %4294
  %4323 = fsub fast float %4320, %4294
  %4324 = fsub fast float %4319, %4301
  %4325 = fsub fast float %4321, %4301
  %4326 = call float @dx.op.dot3.f32(i32 55, float %4236, float %4237, float %4238, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 2
  %4329 = fadd fast float %4328, %4326
  %4330 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4327, 0
  %4332 = fcmp fast ogt float %4330, %4331
  %4333 = and i1 %4317, %4332
  %4334 = and i1 %4288, %4333
  br i1 %4334, label %4359, label %4335

; <label>:4335                                    ; preds = %4667, %4440, %4359, %4205
  %4336 = phi float [ %4207, %4359 ], [ %4443, %4440 ], [ %4443, %4667 ], [ %4207, %4205 ]
  %4337 = phi float [ %4208, %4359 ], [ %4208, %4440 ], [ %4643, %4667 ], [ %4208, %4205 ]
  %4338 = phi float [ %4209, %4359 ], [ %4209, %4440 ], [ %4642, %4667 ], [ %4209, %4205 ]
  %4339 = phi float [ %4210, %4359 ], [ %4210, %4440 ], [ %4640, %4667 ], [ %4210, %4205 ]
  %4340 = phi float [ %4211, %4359 ], [ %4211, %4440 ], [ %4567, %4667 ], [ %4211, %4205 ]
  %4341 = phi float [ %4212, %4359 ], [ %4212, %4440 ], [ %4565, %4667 ], [ %4212, %4205 ]
  %4342 = phi float [ %4213, %4359 ], [ %4213, %4440 ], [ %4610, %4667 ], [ %4213, %4205 ]
  %4343 = phi float [ %4214, %4359 ], [ %4214, %4440 ], [ %4611, %4667 ], [ %4214, %4205 ]
  %4344 = phi float [ %4215, %4359 ], [ %4215, %4440 ], [ %4612, %4667 ], [ %4215, %4205 ]
  %4345 = phi float [ %4216, %4359 ], [ %4216, %4440 ], [ %4677, %4667 ], [ %4216, %4205 ]
  %4346 = phi float [ %4217, %4359 ], [ %4217, %4440 ], [ %4678, %4667 ], [ %4217, %4205 ]
  %4347 = phi float [ %4218, %4359 ], [ %4218, %4440 ], [ %4679, %4667 ], [ %4218, %4205 ]
  %4348 = phi float [ %4219, %4359 ], [ %4219, %4440 ], [ %4546, %4667 ], [ %4219, %4205 ]
  %4349 = phi float [ %4220, %4359 ], [ %4220, %4440 ], [ %4547, %4667 ], [ %4220, %4205 ]
  %4350 = phi float [ %4221, %4359 ], [ %4221, %4440 ], [ %4548, %4667 ], [ %4221, %4205 ]
  %4351 = phi float [ %4222, %4359 ], [ %4222, %4440 ], [ %4620, %4667 ], [ %4222, %4205 ]
  %4352 = phi float [ %4223, %4359 ], [ %4223, %4440 ], [ %4617, %4667 ], [ %4223, %4205 ]
  %4353 = phi float [ %4224, %4359 ], [ %4224, %4440 ], [ %4614, %4667 ], [ %4224, %4205 ]
  %4354 = phi float [ %4225, %4359 ], [ %4225, %4440 ], [ %4563, %4667 ], [ %4225, %4205 ]
  %4355 = phi float [ %4226, %4359 ], [ %4226, %4440 ], [ %4558, %4667 ], [ %4226, %4205 ]
  %4356 = phi float [ %4227, %4359 ], [ %4227, %4440 ], [ %4559, %4667 ], [ %4227, %4205 ]
  %4357 = phi float [ %4228, %4359 ], [ %4228, %4440 ], [ %4560, %4667 ], [ %4228, %4205 ]
  %4358 = icmp eq i32 %4285, %4204
  br i1 %4358, label %4680, label %4205

; <label>:4359                                    ; preds = %4205
  %4360 = extractvalue %dx.types.ResRet.f32 %4255, 3
  %4361 = extractvalue %dx.types.ResRet.f32 %4255, 1
  %4362 = extractvalue %dx.types.ResRet.f32 %4255, 0
  %4363 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4364 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4365 = extractvalue %dx.types.ResRet.i32 %4241, 3
  %4366 = extractvalue %dx.types.ResRet.i32 %4241, 2
  %4367 = add i32 %4365, 0
  %4368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4367, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4370 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4368, %dx.types.Handle %4369, float %4294, float %4301, float undef, float undef, i32 0, i32 0, i32 undef, float %4322, float %4324, float undef, float %4323, float %4325, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = fmul fast float %4371, %4364
  %4373 = fadd fast float %4372, %4363
  %4374 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4375 = fmul fast float %4294, %4250
  %4376 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4301, float %4375)  ; FMad(a,b,c)
  %4377 = fadd fast float %4376, %4362
  %4378 = fmul fast float %4294, %4252
  %4379 = call float @dx.op.tertiary.f32(i32 46, float %4253, float %4301, float %4378)  ; FMad(a,b,c)
  %4380 = fadd fast float %4379, %4361
  %4381 = fmul fast float %4322, %4250
  %4382 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4324, float %4381)  ; FMad(a,b,c)
  %4383 = fmul fast float %4322, %4252
  %4384 = call float @dx.op.tertiary.f32(i32 46, float %4253, float %4324, float %4383)  ; FMad(a,b,c)
  %4385 = fmul fast float %4323, %4250
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4325, float %4385)  ; FMad(a,b,c)
  %4387 = fmul fast float %4323, %4252
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %4253, float %4325, float %4387)  ; FMad(a,b,c)
  %4389 = add i32 %4366, 0
  %4390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4389, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4391 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4390, %dx.types.Handle %4369, float %4377, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float %4382, float %4384, float undef, float %4386, float %4388, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = and i32 %4286, 1024
  %4394 = icmp ne i32 %4393, 0
  %4395 = fcmp fast ogt float %4392, 0x3FE0101020000000
  %4396 = uitofp i1 %4395 to float
  %4397 = select i1 %4394, float %4396, float %4392
  %4398 = and i32 %4286, 8192
  %4399 = icmp ne i32 %4398, 0
  %4400 = select i1 %4399, float %4360, float 1.000000e+00
  %4401 = fmul fast float %4294, 2.000000e+00
  %4402 = fadd fast float %4401, -1.000000e+00
  %4403 = call float @dx.op.unary.f32(i32 6, float %4402)  ; FAbs(value)
  %4404 = fmul fast float %4403, %4283
  %4405 = fsub fast float %4404, %4283
  %4406 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4407 = fmul fast float %4301, 2.000000e+00
  %4408 = fadd fast float %4407, -1.000000e+00
  %4409 = call float @dx.op.unary.f32(i32 6, float %4408)  ; FAbs(value)
  %4410 = fmul fast float %4409, %4284
  %4411 = fsub fast float %4410, %4284
  %4412 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4413 = fmul fast float %4313, %4246
  %4414 = fsub fast float %4413, %4246
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fmul fast float %4374, %4400
  %4417 = fmul fast float %4416, %4371
  %4418 = fmul fast float %4417, %4406
  %4419 = fmul fast float %4418, %4397
  %4420 = fmul fast float %4419, %4412
  %4421 = fmul fast float %4420, %4415
  %4422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4423 = extractvalue %dx.types.CBufRet.f32 %4422, 1
  %4424 = extractvalue %dx.types.CBufRet.f32 %4422, 0
  %4425 = fsub fast float %4330, %4424
  %4426 = fmul fast float %4425, %4423
  %4427 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4428 = fmul fast float %4421, %4247
  %4429 = fadd fast float %4421, %4247
  %4430 = fmul fast float %4429, %4256
  %4431 = fsub fast float %4430, %4256
  %4432 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4433 = and i32 %4286, 128
  %4434 = icmp ne i32 %4433, 0
  %4435 = select i1 %4434, float %4432, float %4428
  %4436 = fmul fast float %4435, %4427
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 0
  %4439 = fcmp fast ugt float %4436, %4438
  br i1 %4439, label %4440, label %4335

; <label>:4440                                    ; preds = %4359
  %4441 = select i1 %4399, float %4436, float 0.000000e+00
  %4442 = fadd fast float %4441, %4207
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  br i1 %4399, label %4335, label %4444

; <label>:4444                                    ; preds = %4440
  %4445 = and i32 %4286, 4
  %4446 = and i32 %4286, 8
  %4447 = add i32 %4242, 0
  %4448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4447, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4450 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4448, %dx.types.Handle %4449, float %4377, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float %4382, float %4384, float undef, float %4386, float %4388, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = extractvalue %dx.types.ResRet.f32 %4450, 1
  %4453 = extractvalue %dx.types.ResRet.f32 %4450, 2
  %4454 = extractvalue %dx.types.ResRet.f32 %4450, 3
  %4455 = bitcast float %4268 to i32
  %4456 = and i32 %4455, 255
  %4457 = uitofp i32 %4456 to float
  %4458 = lshr i32 %4455, 8
  %4459 = and i32 %4458, 255
  %4460 = uitofp i32 %4459 to float
  %4461 = fmul fast float %4454, %4457
  %4462 = fadd fast float %4461, %4460
  %4463 = fmul fast float %4462, 0x3F70101000000000
  %4464 = add i32 %4243, 0
  %4465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4464, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4466 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4465, %dx.types.Handle %4449, float %4377, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float %4382, float %4384, float undef, float %4386, float %4388, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4467 = extractvalue %dx.types.ResRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.ResRet.f32 %4466, 1
  %4469 = extractvalue %dx.types.ResRet.f32 %4466, 2
  %4470 = extractvalue %dx.types.ResRet.f32 %4466, 3
  %4471 = bitcast float %4262 to i32
  %4472 = and i32 %4471, 255
  %4473 = uitofp i32 %4472 to float
  %4474 = lshr i32 %4471, 8
  %4475 = and i32 %4474, 255
  %4476 = uitofp i32 %4475 to float
  %4477 = lshr i32 %4471, 16
  %4478 = and i32 %4477, 255
  %4479 = uitofp i32 %4478 to float
  %4480 = fmul fast float %4479, 0x3F70101000000000
  %4481 = fmul fast float %4467, %4473
  %4482 = fadd fast float %4481, %4476
  %4483 = fmul fast float %4482, 0x3F70101000000000
  %4484 = fadd fast float %4468, -5.000000e-01
  %4485 = fadd fast float %4470, -5.000000e-01
  %4486 = fmul fast float %4484, %4480
  %4487 = fmul fast float %4485, %4480
  %4488 = fadd fast float %4486, 5.000000e-01
  %4489 = fadd fast float %4487, 5.000000e-01
  %4490 = fmul fast float %4451, %4271
  %4491 = fmul fast float %4452, %4272
  %4492 = fmul fast float %4453, %4273
  %4493 = fmul fast float %4488, 2.000000e+00
  %4494 = fadd fast float %4493, -1.000000e+00
  %4495 = fmul fast float %4489, 2.000000e+00
  %4496 = fadd fast float %4495, -1.000000e+00
  %4497 = fadd fast float %4494, %4496
  %4498 = fmul fast float %4497, 5.000000e-01
  %4499 = fsub fast float %4494, %4496
  %4500 = fmul fast float %4499, 5.000000e-01
  %4501 = call float @dx.op.unary.f32(i32 6, float %4498)  ; FAbs(value)
  %4502 = fsub fast float 1.000000e+00, %4501
  %4503 = call float @dx.op.unary.f32(i32 6, float %4500)  ; FAbs(value)
  %4504 = fsub fast float %4502, %4503
  %4505 = call float @dx.op.dot3.f32(i32 55, float %4498, float %4500, float %4504, float %4498, float %4500, float %4504)  ; Dot3(ax,ay,az,bx,by,bz)
  %4506 = call float @dx.op.unary.f32(i32 25, float %4505)  ; Rsqrt(value)
  %4507 = fmul fast float %4498, %4506
  %4508 = fmul fast float %4500, %4506
  %4509 = fmul fast float %4506, %4504
  %4510 = fmul fast float %4509, %4236
  %4511 = fmul fast float %4509, %4237
  %4512 = fmul fast float %4509, %4238
  %4513 = fmul fast float %4507, %4259
  %4514 = fmul fast float %4507, %4260
  %4515 = fmul fast float %4507, %4261
  %4516 = fadd fast float %4513, %4510
  %4517 = fadd fast float %4514, %4511
  %4518 = fadd fast float %4515, %4512
  %4519 = fmul fast float %4508, %4265
  %4520 = fmul fast float %4508, %4266
  %4521 = fmul fast float %4508, %4267
  %4522 = fadd fast float %4516, %4519
  %4523 = fadd fast float %4517, %4520
  %4524 = fadd fast float %4518, %4521
  %4525 = call float @dx.op.dot3.f32(i32 55, float %4522, float %4523, float %4524, float %4522, float %4523, float %4524)  ; Dot3(ax,ay,az,bx,by,bz)
  %4526 = call float @dx.op.unary.f32(i32 25, float %4525)  ; Rsqrt(value)
  %4527 = fmul fast float %4522, %4526
  %4528 = fmul fast float %4523, %4526
  %4529 = fmul fast float %4524, %4526
  %4530 = icmp ne i32 %4446, 0
  %4531 = select i1 %4530, float 1.000000e+00, float 0.000000e+00
  %4532 = fmul fast float %4436, %4531
  %4533 = and i32 %4286, 1
  %4534 = icmp eq i32 %4533, 0
  br i1 %4534, label %4535, label %4539

; <label>:4535                                    ; preds = %4444
  %4536 = fsub fast float %4527, %4219
  %4537 = fsub fast float %4528, %4220
  %4538 = fsub fast float %4529, %4221
  br label %4539

; <label>:4539                                    ; preds = %4535, %4444
  %4540 = phi float [ %4536, %4535 ], [ %4527, %4444 ]
  %4541 = phi float [ %4537, %4535 ], [ %4528, %4444 ]
  %4542 = phi float [ %4538, %4535 ], [ %4529, %4444 ]
  %4543 = fmul float %4542, %4532
  %4544 = fmul float %4541, %4532
  %4545 = fmul float %4540, %4532
  %4546 = fadd fast float %4545, %4219
  %4547 = fadd fast float %4544, %4220
  %4548 = fadd fast float %4543, %4221
  %4549 = icmp ne i32 %4445, 0
  %4550 = select i1 %4549, float 1.000000e+00, float 0.000000e+00
  %4551 = fmul fast float %4436, %4550
  %4552 = fsub fast float %4490, %4226
  %4553 = fsub fast float %4491, %4227
  %4554 = fsub fast float %4492, %4228
  %4555 = fmul fast float %4552, %4551
  %4556 = fmul fast float %4553, %4551
  %4557 = fmul fast float %4554, %4551
  %4558 = fadd fast float %4555, %4226
  %4559 = fadd fast float %4556, %4227
  %4560 = fadd fast float %4557, %4228
  %4561 = fsub fast float %4463, %4225
  %4562 = fmul fast float %4561, %4551
  %4563 = fadd fast float %4562, %4225
  %4564 = fmul fast float %4551, %4212
  %4565 = fsub fast float %4212, %4564
  %4566 = fmul fast float %4551, %4211
  %4567 = fsub fast float %4211, %4566
  %4568 = bitcast float %4280 to i32
  %4569 = lshr i32 %4568, 16
  %4570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4569)  ; LegacyF16ToF32(value)
  %4571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %4572 = extractvalue %dx.types.ResRet.i32 %4571, 0
  %4573 = and i32 %4572, 1
  %4574 = icmp eq i32 %4573, 0
  br i1 %4574, label %4575, label %4600

; <label>:4575                                    ; preds = %4539
  %4576 = fadd fast float %4463, 0xBFB99999A0000000
  %4577 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4578 = fmul fast float %4577, 0x3FF1C71C80000000
  %4579 = fsub fast float 1.000000e+00, %4578
  %4580 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4581 = fmul fast float %4580, %4490
  %4582 = fmul fast float %4580, %4491
  %4583 = fmul fast float %4580, %4492
  %4584 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4585 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4586 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4587 = call float @dx.op.binary.f32(i32 35, float %4585, float %4586)  ; FMax(a,b)
  %4588 = call float @dx.op.binary.f32(i32 35, float %4584, float %4587)  ; FMax(a,b)
  %4589 = fcmp fast ogt float %4588, 0.000000e+00
  %4590 = bitcast float %4588 to i32
  %4591 = sub nsw i32 2129859010, %4590
  %4592 = bitcast i32 %4591 to float
  %4593 = select i1 %4589, float %4592, float 0.000000e+00
  %4594 = fmul fast float %4584, %4570
  %4595 = fmul fast float %4585, %4570
  %4596 = fmul fast float %4586, %4570
  %4597 = fmul fast float %4594, %4593
  %4598 = fmul fast float %4595, %4593
  %4599 = fmul fast float %4596, %4593
  br label %4600

; <label>:4600                                    ; preds = %4575, %4539
  %4601 = phi float [ %4570, %4539 ], [ %4597, %4575 ]
  %4602 = phi float [ %4570, %4539 ], [ %4598, %4575 ]
  %4603 = phi float [ %4570, %4539 ], [ %4599, %4575 ]
  %4604 = fsub fast float %4601, %4213
  %4605 = fsub fast float %4602, %4214
  %4606 = fsub fast float %4603, %4215
  %4607 = fmul fast float %4604, %4551
  %4608 = fmul fast float %4605, %4551
  %4609 = fmul fast float %4606, %4551
  %4610 = fadd fast float %4607, %4213
  %4611 = fadd fast float %4608, %4214
  %4612 = fadd fast float %4609, %4215
  %4613 = fadd fast float %4436, %4224
  %4614 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4615 = fsub fast float %4483, %4223
  %4616 = fmul fast float %4615, %4532
  %4617 = fadd fast float %4616, %4223
  %4618 = fsub fast float %4469, %4222
  %4619 = fmul fast float %4618, %4532
  %4620 = fadd fast float %4619, %4222
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4490, float %4491, float %4492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 0
  %4624 = extractvalue %dx.types.CBufRet.f32 %4622, 1
  %4625 = fmul fast float %4624, %4621
  %4626 = fadd fast float %4625, %4623
  %4627 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4628 = bitcast float %4274 to i32
  %4629 = and i32 %4628, 65535
  %4630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4629)  ; LegacyF16ToF32(value)
  %4631 = lshr i32 %4628, 16
  %4632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4631)  ; LegacyF16ToF32(value)
  %4633 = fcmp fast oge float %4630, 0.000000e+00
  %4634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4634, 0
  %4636 = select i1 %4633, float %4630, float %4635
  %4637 = fadd fast float %4636, %4632
  %4638 = fsub fast float %4627, %4210
  %4639 = fmul fast float %4638, %4436
  %4640 = fadd fast float %4639, %4210
  %4641 = fmul fast float %4637, %4436
  %4642 = call float @dx.op.binary.f32(i32 35, float %4209, float %4641)  ; FMax(a,b)
  %4643 = call float @dx.op.binary.f32(i32 35, float %4208, float %4436)  ; FMax(a,b)
  %4644 = and i32 %4286, 16
  %4645 = icmp eq i32 %4644, 0
  br i1 %4645, label %4667, label %4646

; <label>:4646                                    ; preds = %4600
  %4647 = add i32 %4277, 0
  %4648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4647, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4649 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4648, %dx.types.Handle %4449, float %4377, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float %4382, float %4384, float undef, float %4386, float %4388, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4650 = extractvalue %dx.types.ResRet.f32 %4649, 0
  %4651 = extractvalue %dx.types.ResRet.f32 %4649, 1
  %4652 = extractvalue %dx.types.ResRet.f32 %4649, 2
  %4653 = and i32 %4568, 65535
  %4654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4653)  ; LegacyF16ToF32(value)
  %4655 = fmul fast float %4650, %4271
  %4656 = fmul fast float %4651, %4272
  %4657 = fmul fast float %4652, %4273
  %4658 = and i32 %4286, 16384
  %4659 = icmp ne i32 %4658, 0
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 0
  %4662 = select i1 %4659, float %4661, float 1.000000e+00
  %4663 = fmul fast float %4662, %4654
  %4664 = fmul fast float %4655, %4663
  %4665 = fmul fast float %4656, %4663
  %4666 = fmul fast float %4657, %4663
  br label %4667

; <label>:4667                                    ; preds = %4646, %4600
  %4668 = phi float [ %4664, %4646 ], [ 0.000000e+00, %4600 ]
  %4669 = phi float [ %4665, %4646 ], [ 0.000000e+00, %4600 ]
  %4670 = phi float [ %4666, %4646 ], [ 0.000000e+00, %4600 ]
  %4671 = fsub fast float %4668, %4216
  %4672 = fsub fast float %4669, %4217
  %4673 = fsub fast float %4670, %4218
  %4674 = fmul fast float %4671, %4436
  %4675 = fmul fast float %4672, %4436
  %4676 = fmul fast float %4673, %4436
  %4677 = fadd fast float %4674, %4216
  %4678 = fadd fast float %4675, %4217
  %4679 = fadd fast float %4676, %4218
  br label %4335

; <label>:4680                                    ; preds = %4335
  br label %4681

; <label>:4681                                    ; preds = %4680, %4151
  %4682 = phi float [ 0.000000e+00, %4151 ], [ %4336, %4680 ]
  %4683 = phi float [ %1203, %4151 ], [ %4337, %4680 ]
  %4684 = phi float [ %4120, %4151 ], [ %4338, %4680 ]
  %4685 = phi float [ %4118, %4151 ], [ %4339, %4680 ]
  %4686 = phi float [ %4117, %4151 ], [ %4340, %4680 ]
  %4687 = phi float [ 0.000000e+00, %4151 ], [ %4341, %4680 ]
  %4688 = phi float [ %4110, %4151 ], [ %4342, %4680 ]
  %4689 = phi float [ %4111, %4151 ], [ %4343, %4680 ]
  %4690 = phi float [ %4112, %4151 ], [ %4344, %4680 ]
  %4691 = phi float [ %4107, %4151 ], [ %4345, %4680 ]
  %4692 = phi float [ %4108, %4151 ], [ %4346, %4680 ]
  %4693 = phi float [ %4109, %4151 ], [ %4347, %4680 ]
  %4694 = phi float [ %4146, %4151 ], [ %4348, %4680 ]
  %4695 = phi float [ %4147, %4151 ], [ %4349, %4680 ]
  %4696 = phi float [ %4148, %4151 ], [ %4350, %4680 ]
  %4697 = phi float [ %4115, %4151 ], [ %4351, %4680 ]
  %4698 = phi float [ %4114, %4151 ], [ %4352, %4680 ]
  %4699 = phi float [ 0.000000e+00, %4151 ], [ %4353, %4680 ]
  %4700 = phi float [ %4113, %4151 ], [ %4354, %4680 ]
  %4701 = phi float [ %4104, %4151 ], [ %4355, %4680 ]
  %4702 = phi float [ %4105, %4151 ], [ %4356, %4680 ]
  %4703 = phi float [ %4106, %4151 ], [ %4357, %4680 ]
  %4704 = call float @dx.op.dot3.f32(i32 55, float %4694, float %4695, float %4696, float %4694, float %4695, float %4696)  ; Dot3(ax,ay,az,bx,by,bz)
  %4705 = call float @dx.op.unary.f32(i32 25, float %4704)  ; Rsqrt(value)
  %4706 = fmul fast float %4705, %4694
  %4707 = fmul fast float %4705, %4695
  %4708 = fmul fast float %4705, %4696
  %4709 = fadd fast float %4699, %1203
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4711 = call float @dx.op.dot3.f32(i32 55, float %4706, float %4707, float %4708, float %4706, float %4707, float %4708)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = call float @dx.op.unary.f32(i32 25, float %4711)  ; Rsqrt(value)
  %4713 = fmul fast float %4712, %4706
  %4714 = fmul fast float %4712, %4707
  %4715 = fmul fast float %4712, %4708
  br label %4716

; <label>:4716                                    ; preds = %4681, %4101
  %4717 = phi float [ %4713, %4681 ], [ %4146, %4101 ]
  %4718 = phi float [ %4714, %4681 ], [ %4147, %4101 ]
  %4719 = phi float [ %4715, %4681 ], [ %4148, %4101 ]
  %4720 = phi float [ %4691, %4681 ], [ %4107, %4101 ]
  %4721 = phi float [ %4692, %4681 ], [ %4108, %4101 ]
  %4722 = phi float [ %4693, %4681 ], [ %4109, %4101 ]
  %4723 = phi float [ %4701, %4681 ], [ %4104, %4101 ]
  %4724 = phi float [ %4702, %4681 ], [ %4105, %4101 ]
  %4725 = phi float [ %4703, %4681 ], [ %4106, %4101 ]
  %4726 = phi float [ %4688, %4681 ], [ %4110, %4101 ]
  %4727 = phi float [ %4689, %4681 ], [ %4111, %4101 ]
  %4728 = phi float [ %4690, %4681 ], [ %4112, %4101 ]
  %4729 = phi float [ %4700, %4681 ], [ %4113, %4101 ]
  %4730 = phi float [ %4710, %4681 ], [ %1203, %4101 ]
  %4731 = phi float [ %4698, %4681 ], [ %4114, %4101 ]
  %4732 = phi float [ %4697, %4681 ], [ %4115, %4101 ]
  %4733 = phi float [ %4687, %4681 ], [ 0.000000e+00, %4101 ]
  %4734 = phi float [ %4686, %4681 ], [ %4117, %4101 ]
  %4735 = phi float [ %4682, %4681 ], [ 0.000000e+00, %4101 ]
  %4736 = phi float [ %4684, %4681 ], [ %4120, %4101 ]
  %4737 = phi float [ %4683, %4681 ], [ %1203, %4101 ]
  %4738 = phi float [ %4685, %4681 ], [ %4118, %4101 ]
  %4739 = fadd fast float %4729, 0xBFB99999A0000000
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = fmul fast float %4740, 0x3FF1C71C80000000
  %4742 = call float @dx.op.binary.f32(i32 36, float %4729, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4743 = fsub fast float 1.000000e+00, %4741
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fmul fast float %4744, %4723
  %4746 = fmul fast float %4744, %4724
  %4747 = fmul fast float %4744, %4725
  %4748 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4749 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4750 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4751 = fmul fast float %4741, %4723
  %4752 = fmul fast float %4741, %4724
  %4753 = fmul fast float %4741, %4725
  %4754 = fadd fast float %4751, %4742
  %4755 = fadd fast float %4752, %4742
  %4756 = fadd fast float %4753, %4742
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4759 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4760 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %4762 = extractvalue %dx.types.ResRet.i32 %4761, 0
  %4763 = and i32 %4762, 1
  %4764 = icmp eq i32 %4763, 0
  br i1 %4764, label %4779, label %4765

; <label>:4765                                    ; preds = %4716
  %4766 = call float @dx.op.binary.f32(i32 35, float %4749, float %4750)  ; FMax(a,b)
  %4767 = call float @dx.op.binary.f32(i32 35, float %4748, float %4766)  ; FMax(a,b)
  %4768 = fcmp fast ogt float %4767, 0.000000e+00
  %4769 = bitcast float %4767 to i32
  %4770 = sub nsw i32 2129859010, %4769
  %4771 = bitcast i32 %4770 to float
  %4772 = select i1 %4768, float %4771, float 0.000000e+00
  %4773 = fmul fast float %4748, %4726
  %4774 = fmul fast float %4749, %4727
  %4775 = fmul fast float %4750, %4728
  %4776 = fmul fast float %4773, %4772
  %4777 = fmul fast float %4774, %4772
  %4778 = fmul fast float %4775, %4772
  br label %4779

; <label>:4779                                    ; preds = %4765, %4716
  %4780 = phi float [ %4776, %4765 ], [ %4726, %4716 ]
  %4781 = phi float [ %4777, %4765 ], [ %4727, %4716 ]
  %4782 = phi float [ %4778, %4765 ], [ %4728, %4716 ]
  %4783 = fadd fast float %4748, 0xBFD51EB860000000
  %4784 = fadd fast float %4749, 0xBFD51EB860000000
  %4785 = fadd fast float %4750, 0xBFD51EB860000000
  %4786 = fmul fast float %4783, %4783
  %4787 = fmul fast float %4784, %4784
  %4788 = fmul fast float %4785, %4785
  %4789 = fmul fast float %4786, %4786
  %4790 = fmul fast float %4789, 1.000000e+02
  %4791 = fmul fast float %4787, %4787
  %4792 = fmul fast float %4791, 1.000000e+02
  %4793 = fmul fast float %4788, %4788
  %4794 = fmul fast float %4793, 1.000000e+02
  %4795 = fadd fast float %4790, 3.500000e+00
  %4796 = fadd fast float %4792, 3.500000e+00
  %4797 = fadd fast float %4794, 3.500000e+00
  %4798 = call float @dx.op.binary.f32(i32 35, float %4780, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4799 = call float @dx.op.binary.f32(i32 35, float %4781, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4800 = call float @dx.op.binary.f32(i32 35, float %4782, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4801 = fdiv fast float %4795, %4798
  %4802 = fdiv fast float %4796, %4799
  %4803 = fdiv fast float %4797, %4800
  %4804 = fmul fast float %4116, 0xBFF7154760000000
  %4805 = fmul fast float %4804, %4801
  %4806 = call float @dx.op.unary.f32(i32 21, float %4805)  ; Exp(value)
  %4807 = fmul fast float %4806, 2.500000e-01
  %4808 = fmul fast float %4116, 0xBFDEC709E0000000
  %4809 = fmul fast float %4808, %4801
  %4810 = call float @dx.op.unary.f32(i32 21, float %4809)  ; Exp(value)
  %4811 = fmul fast float %4810, 7.500000e-01
  %4812 = fmul fast float %4804, %4802
  %4813 = call float @dx.op.unary.f32(i32 21, float %4812)  ; Exp(value)
  %4814 = fmul fast float %4813, 2.500000e-01
  %4815 = fmul fast float %4808, %4802
  %4816 = call float @dx.op.unary.f32(i32 21, float %4815)  ; Exp(value)
  %4817 = fmul fast float %4816, 7.500000e-01
  %4818 = fmul fast float %4804, %4803
  %4819 = call float @dx.op.unary.f32(i32 21, float %4818)  ; Exp(value)
  %4820 = fmul fast float %4819, 2.500000e-01
  %4821 = fmul fast float %4808, %4803
  %4822 = call float @dx.op.unary.f32(i32 21, float %4821)  ; Exp(value)
  %4823 = fmul fast float %4822, 7.500000e-01
  %4824 = fadd fast float %4807, %4811
  %4825 = fadd fast float %4814, %4817
  %4826 = fadd fast float %4820, %4823
  %4827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.i32 %4827, 3
  %4829 = and i32 %4828, 8
  %4830 = icmp ne i32 %4829, 0
  %4831 = call float @dx.op.binary.f32(i32 35, float %4748, float %4723)  ; FMax(a,b)
  %4832 = call float @dx.op.binary.f32(i32 35, float %4749, float %4723)  ; FMax(a,b)
  %4833 = call float @dx.op.binary.f32(i32 35, float %4750, float %4723)  ; FMax(a,b)
  %4834 = call float @dx.op.dot3.f32(i32 55, float %4748, float %4749, float %4750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4835 = select i1 %223, float %4723, float %4748
  %4836 = select i1 %223, float %4834, float %4749
  %4837 = select i1 %223, float 1.000000e+00, float %4750
  %4838 = select i1 %4830, float %4831, float %4835
  %4839 = select i1 %4830, float %4832, float %4836
  %4840 = select i1 %4830, float %4833, float %4837
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 0
  %4843 = extractvalue %dx.types.CBufRet.f32 %4841, 1
  %4844 = extractvalue %dx.types.CBufRet.f32 %4841, 2
  %4845 = fadd fast float %4842, %161
  %4846 = fadd fast float %4843, %162
  %4847 = fadd fast float %4844, %163
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 0
  %4850 = extractvalue %dx.types.CBufRet.f32 %4848, 1
  %4851 = fsub fast float %4845, %4849
  %4852 = fsub fast float %4846, %4850
  %4853 = fmul fast float %4851, %4851
  %4854 = fmul fast float %4852, %4852
  %4855 = fadd fast float %4853, %4854
  %4856 = call float @dx.op.unary.f32(i32 24, float %4855)  ; Sqrt(value)
  %4857 = extractvalue %dx.types.CBufRet.f32 %4848, 2
  %4858 = fcmp fast olt float %4856, %4857
  br i1 %4858, label %4859, label %4926

; <label>:4859                                    ; preds = %4779
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 0
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 0
  %4864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4865 = extractvalue %dx.types.CBufRet.f32 %4864, 0
  %4866 = extractvalue %dx.types.CBufRet.f32 %4860, 1
  %4867 = extractvalue %dx.types.CBufRet.f32 %4862, 1
  %4868 = extractvalue %dx.types.CBufRet.f32 %4864, 1
  %4869 = extractvalue %dx.types.CBufRet.f32 %4860, 3
  %4870 = extractvalue %dx.types.CBufRet.f32 %4862, 3
  %4871 = extractvalue %dx.types.CBufRet.f32 %4864, 3
  %4872 = fadd fast float %4869, %4845
  %4873 = fadd fast float %4870, %4846
  %4874 = fadd fast float %4871, %4847
  %4875 = fmul fast float %4872, %4861
  %4876 = call float @dx.op.tertiary.f32(i32 46, float %4873, float %4863, float %4875)  ; FMad(a,b,c)
  %4877 = call float @dx.op.tertiary.f32(i32 46, float %4874, float %4865, float %4876)  ; FMad(a,b,c)
  %4878 = fmul fast float %4872, %4866
  %4879 = call float @dx.op.tertiary.f32(i32 46, float %4873, float %4867, float %4878)  ; FMad(a,b,c)
  %4880 = call float @dx.op.tertiary.f32(i32 46, float %4874, float %4868, float %4879)  ; FMad(a,b,c)
  %4881 = fsub fast float %4877, %4869
  %4882 = fsub fast float %4880, %4870
  %4883 = fsub fast float %4881, %4849
  %4884 = fadd fast float %4883, %4857
  %4885 = fsub fast float %4882, %4850
  %4886 = fadd fast float %4885, %4857
  %4887 = extractvalue %dx.types.CBufRet.f32 %4848, 3
  %4888 = fmul fast float %4884, %4887
  %4889 = fmul fast float %4886, %4887
  %4890 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4891 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4892 = fsub fast float 1.000000e+00, %4890
  %4893 = fsub fast float 1.000000e+00, %4891
  %4894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4892, float %4893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4895 = extractvalue %dx.types.ResRet.f32 %4894, 0
  %4896 = fcmp fast ugt float %4895, 0.000000e+00
  br i1 %4896, label %4897, label %5200

; <label>:4897                                    ; preds = %4859
  %4898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4899 = extractvalue %dx.types.CBufRet.f32 %4898, 2
  %4900 = fmul fast float %4899, %4895
  %4901 = extractvalue %dx.types.CBufRet.f32 %4898, 3
  %4902 = fadd fast float %4901, %4900
  %4903 = extractvalue %dx.types.CBufRet.f32 %4864, 2
  %4904 = fadd fast float %4902, %4871
  %4905 = fmul fast float %4877, %4865
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4880, float %4868, float %4905)  ; FMad(a,b,c)
  %4907 = call float @dx.op.tertiary.f32(i32 46, float %4904, float %4903, float %4906)  ; FMad(a,b,c)
  %4908 = fsub fast float %4907, %4871
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 2
  %4911 = fsub fast float %4908, %4910
  %4912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4892, float %4893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 0
  %4914 = extractvalue %dx.types.ResRet.f32 %4912, 1
  %4915 = extractvalue %dx.types.ResRet.f32 %4912, 2
  %4916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4892, float %4893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4917 = extractvalue %dx.types.ResRet.f32 %4916, 0
  %4918 = extractvalue %dx.types.ResRet.f32 %4916, 1
  %4919 = extractvalue %dx.types.ResRet.f32 %4916, 2
  %4920 = fadd fast float %4917, %4913
  %4921 = fmul fast float %4920, 0x3F847AE140000000
  %4922 = fadd fast float %4918, %4914
  %4923 = fmul fast float %4922, 0x3F847AE140000000
  %4924 = fadd fast float %4919, %4915
  %4925 = fmul fast float %4924, 0x3F847AE140000000
  br label %5200

; <label>:4926                                    ; preds = %4779
  %4927 = and i32 %199, 1
  %4928 = icmp eq i32 %4927, 0
  br i1 %4928, label %5200, label %4929

; <label>:4929                                    ; preds = %4926
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 0
  %4932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4933 = extractvalue %dx.types.CBufRet.f32 %4932, 0
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 0
  %4936 = extractvalue %dx.types.CBufRet.f32 %4930, 1
  %4937 = extractvalue %dx.types.CBufRet.f32 %4932, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4934, 1
  %4939 = extractvalue %dx.types.CBufRet.f32 %4930, 3
  %4940 = extractvalue %dx.types.CBufRet.f32 %4932, 3
  %4941 = extractvalue %dx.types.CBufRet.f32 %4934, 3
  %4942 = fadd fast float %4939, %4845
  %4943 = fadd fast float %4940, %4846
  %4944 = fadd fast float %4941, %4847
  %4945 = fmul fast float %4942, %4931
  %4946 = call float @dx.op.tertiary.f32(i32 46, float %4943, float %4933, float %4945)  ; FMad(a,b,c)
  %4947 = call float @dx.op.tertiary.f32(i32 46, float %4944, float %4935, float %4946)  ; FMad(a,b,c)
  %4948 = fmul fast float %4942, %4936
  %4949 = call float @dx.op.tertiary.f32(i32 46, float %4943, float %4937, float %4948)  ; FMad(a,b,c)
  %4950 = call float @dx.op.tertiary.f32(i32 46, float %4944, float %4938, float %4949)  ; FMad(a,b,c)
  %4951 = fsub fast float %4947, %4939
  %4952 = fsub fast float %4950, %4940
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 0
  %4955 = extractvalue %dx.types.CBufRet.f32 %4953, 1
  %4956 = extractvalue %dx.types.CBufRet.f32 %4953, 2
  %4957 = extractvalue %dx.types.CBufRet.f32 %4953, 3
  %4958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4958, 3
  %4960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.i32 %4960, 0
  %4962 = extractvalue %dx.types.CBufRet.i32 %4960, 1
  %4963 = udiv i32 %4962, %4961
  %4964 = fsub fast float %4951, %4954
  %4965 = fsub fast float %4952, %4955
  %4966 = call float @dx.op.binary.f32(i32 35, float %4964, float 0.000000e+00)  ; FMax(a,b)
  %4967 = call float @dx.op.binary.f32(i32 35, float %4965, float 0.000000e+00)  ; FMax(a,b)
  %4968 = call float @dx.op.binary.f32(i32 36, float %4966, float %4956)  ; FMin(a,b)
  %4969 = call float @dx.op.binary.f32(i32 36, float %4967, float %4957)  ; FMin(a,b)
  %4970 = add i32 %4961, -1
  %4971 = add i32 %4963, -1
  %4972 = fmul fast float %4968, %4959
  %4973 = fmul fast float %4969, %4959
  %4974 = fptoui float %4972 to i32
  %4975 = fptoui float %4973 to i32
  %4976 = call i32 @dx.op.binary.i32(i32 40, i32 %4974, i32 %4970)  ; UMin(a,b)
  %4977 = call i32 @dx.op.binary.i32(i32 40, i32 %4975, i32 %4971)  ; UMin(a,b)
  %4978 = mul i32 %4977, %4961
  %4979 = add i32 %4978, %4976
  %4980 = shl i32 %4979, 2
  %4981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4980, i32 undef)  ; BufferLoad(srv,index,wot)
  %4982 = extractvalue %dx.types.ResRet.i32 %4981, 0
  %4983 = icmp eq i32 %4982, -1
  br i1 %4983, label %5200, label %4984

; <label>:4984                                    ; preds = %4929
  %4985 = mul i32 %4982, 148
  %4986 = add i32 %4985, 4
  %4987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4986, i32 undef)  ; BufferLoad(srv,index,wot)
  %4988 = extractvalue %dx.types.ResRet.f32 %4987, 0
  %4989 = add i32 %4985, 8
  %4990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4989, i32 undef)  ; BufferLoad(srv,index,wot)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = add i32 %4985, 36
  %4993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4992, i32 undef)  ; BufferLoad(srv,index,wot)
  %4994 = extractvalue %dx.types.ResRet.f32 %4993, 0
  %4995 = add i32 %4985, 60
  %4996 = add i32 %4985, 92
  %4997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4996, i32 undef)  ; BufferLoad(srv,index,wot)
  %4998 = extractvalue %dx.types.ResRet.i32 %4997, 0
  %4999 = add i32 %4985, 116
  %5000 = fsub fast float %4951, %4988
  %5001 = fsub fast float %4952, %4991
  %5002 = fmul fast float %4959, %5000
  %5003 = fmul fast float %4959, %5001
  %5004 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5005 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5006 = fsub fast float 1.000000e+00, %5005
  %5007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.f32 %5007, 2
  %5009 = call float @dx.op.unary.f32(i32 83, float %5004)  ; DerivCoarseX(value)
  %5010 = call float @dx.op.unary.f32(i32 83, float %5006)  ; DerivCoarseX(value)
  %5011 = call float @dx.op.unary.f32(i32 84, float %5004)  ; DerivCoarseY(value)
  %5012 = call float @dx.op.unary.f32(i32 84, float %5006)  ; DerivCoarseY(value)
  %5013 = fmul fast float %5009, %5008
  %5014 = fmul fast float %5010, %5008
  %5015 = fmul fast float %5011, %5008
  %5016 = fmul fast float %5012, %5008
  %5017 = call float @dx.op.dot2.f32(i32 54, float %5015, float %5016, float %5015, float %5016)  ; Dot2(ax,ay,bx,by)
  %5018 = call float @dx.op.dot2.f32(i32 54, float %5013, float %5014, float %5013, float %5014)  ; Dot2(ax,ay,bx,by)
  %5019 = call float @dx.op.binary.f32(i32 35, float %5018, float %5017)  ; FMax(a,b)
  %5020 = call float @dx.op.unary.f32(i32 23, float %5019)  ; Log(value)
  %5021 = fmul fast float %5020, 5.000000e-01
  %5022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.f32 %5022, 1
  %5024 = fadd fast float %5023, %5021
  %5025 = call float @dx.op.binary.f32(i32 35, float %5024, float 0.000000e+00)  ; FMax(a,b)
  %5026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.f32 %5026, 3
  %5028 = fadd fast float %5027, %5025
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 3
  %5031 = fadd fast float %5028, %5030
  %5032 = add i32 %4998, 0
  %5033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5032, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5034 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5033, i32 0)  ; GetDimensions(handle,mipLevel)
  %5035 = extractvalue %dx.types.Dimensions %5034, 0
  %5036 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5035)  ; FirstbitLo(value)
  %5037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5038 = extractvalue %dx.types.CBufRet.i32 %5037, 1
  %5039 = sub nsw i32 %5038, %5036
  %5040 = sitofp i32 %5039 to float
  %5041 = fsub fast float %5031, %5040
  %5042 = call float @dx.op.binary.f32(i32 35, float %5041, float 0.000000e+00)  ; FMax(a,b)
  %5043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5033, %dx.types.Handle %46, float %5004, float %5006, float %4994, float undef, i32 0, i32 0, i32 undef, float %5042)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5044 = extractvalue %dx.types.ResRet.f32 %5043, 0
  %5045 = fcmp ule float %5044, 0x3FE0101020000000
  %5046 = extractvalue %dx.types.CBufRet.i32 %5037, 0
  %5047 = and i32 %5046, 128
  %5048 = icmp ne i32 %5047, 0
  %5049 = and i1 %5045, %5048
  br i1 %5049, label %5200, label %5050

; <label>:5050                                    ; preds = %4984
  %5051 = add i32 %4985, 20
  %5052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5051, i32 undef)  ; BufferLoad(srv,index,wot)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = add i32 %4985, 24
  %5055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5054, i32 undef)  ; BufferLoad(srv,index,wot)
  %5056 = extractvalue %dx.types.ResRet.f32 %5055, 0
  %5057 = add i32 %4985, 40
  %5058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5057, i32 undef)  ; BufferLoad(srv,index,wot)
  %5059 = extractvalue %dx.types.ResRet.f32 %5058, 0
  %5060 = add i32 %4985, 96
  %5061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.i32 %5061, 0
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 2
  %5065 = fmul fast float %5064, %5004
  %5066 = fmul fast float %5064, %5006
  %5067 = extractvalue %dx.types.CBufRet.f32 %5063, 3
  %5068 = fadd fast float %5065, %5067
  %5069 = fadd fast float %5066, %5067
  %5070 = add i32 %5062, 0
  %5071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5070, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5072 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5071, i32 0)  ; GetDimensions(handle,mipLevel)
  %5073 = extractvalue %dx.types.Dimensions %5072, 0
  %5074 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5073)  ; FirstbitLo(value)
  %5075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5076 = extractvalue %dx.types.CBufRet.i32 %5075, 1
  %5077 = sub nsw i32 %5076, %5074
  %5078 = sitofp i32 %5077 to float
  %5079 = fsub fast float %5028, %5078
  %5080 = call float @dx.op.binary.f32(i32 35, float %5079, float 0.000000e+00)  ; FMax(a,b)
  %5081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5071, %dx.types.Handle %46, float %5068, float %5069, float %5059, float undef, i32 0, i32 0, i32 undef, float %5080)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5082 = extractvalue %dx.types.ResRet.f32 %5081, 0
  %5083 = fmul fast float %5082, %5053
  %5084 = fadd fast float %5083, %5056
  %5085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.CBufRet.f32 %5085, 1
  %5088 = extractvalue %dx.types.CBufRet.f32 %5085, 2
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 3
  %5091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.f32 %5091, 3
  %5093 = extractvalue %dx.types.CBufRet.f32 %5085, 3
  %5094 = fadd fast float %5090, %4951
  %5095 = fadd fast float %5092, %4952
  %5096 = fadd fast float %5084, %5093
  %5097 = fmul fast float %5094, %5086
  %5098 = call float @dx.op.tertiary.f32(i32 46, float %5095, float %5087, float %5097)  ; FMad(a,b,c)
  %5099 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5088, float %5098)  ; FMad(a,b,c)
  %5100 = fsub fast float %5099, %5093
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5103 = fsub fast float %5100, %5102
  %5104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.i32 %5104, 0
  %5106 = call i32 @dx.op.binary.i32(i32 40, i32 %4982, i32 %5105)  ; UMin(a,b)
  %5107 = mul i32 %5106, 36
  %5108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5107, i32 undef)  ; BufferLoad(srv,index,wot)
  %5109 = extractvalue %dx.types.ResRet.i32 %5108, 0
  %5110 = add i32 %5107, 4
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5113 = fmul fast float %5112, %5004
  %5114 = fmul fast float %5112, %5006
  %5115 = extractvalue %dx.types.CBufRet.f32 %5111, 1
  %5116 = fadd fast float %5113, %5115
  %5117 = fadd fast float %5114, %5115
  %5118 = icmp eq i32 %5109, 0
  br i1 %5118, label %5187, label %5119

; <label>:5119                                    ; preds = %5050
  br label %5120

; <label>:5120                                    ; preds = %5177, %5119
  %5121 = phi float [ %5178, %5177 ], [ 0.000000e+00, %5119 ]
  %5122 = phi float [ %5179, %5177 ], [ 0.000000e+00, %5119 ]
  %5123 = phi float [ %5180, %5177 ], [ 0.000000e+00, %5119 ]
  %5124 = phi float [ %5181, %5177 ], [ 0.000000e+00, %5119 ]
  %5125 = phi float [ %5182, %5177 ], [ 0.000000e+00, %5119 ]
  %5126 = phi float [ %5183, %5177 ], [ 0.000000e+00, %5119 ]
  %5127 = phi i32 [ %5184, %5177 ], [ 0, %5119 ]
  %5128 = shl i32 %5127, 2
  %5129 = add i32 %4995, %5128
  %5130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5129, i32 undef)  ; BufferLoad(srv,index,wot)
  %5131 = extractvalue %dx.types.ResRet.f32 %5130, 0
  %5132 = add i32 %4999, %5128
  %5133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5132, i32 undef)  ; BufferLoad(srv,index,wot)
  %5134 = extractvalue %dx.types.ResRet.i32 %5133, 0
  %5135 = add i32 %5134, 0
  %5136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5137 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5136, i32 0)  ; GetDimensions(handle,mipLevel)
  %5138 = extractvalue %dx.types.Dimensions %5137, 0
  %5139 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5138)  ; FirstbitLo(value)
  %5140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.i32 %5140, 1
  %5142 = sub nsw i32 %5141, %5139
  %5143 = sitofp i32 %5142 to float
  %5144 = fsub fast float %5028, %5143
  %5145 = call float @dx.op.binary.f32(i32 35, float %5144, float 0.000000e+00)  ; FMax(a,b)
  %5146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5136, %dx.types.Handle %46, float %5116, float %5117, float %5131, float undef, i32 0, i32 0, i32 undef, float %5145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5147 = extractvalue %dx.types.ResRet.f32 %5146, 0
  %5148 = fcmp fast ogt float %5147, 0.000000e+00
  br i1 %5148, label %5149, label %5177

; <label>:5149                                    ; preds = %5120
  %5150 = add i32 %5110, %5128
  %5151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5150, i32 undef)  ; BufferLoad(srv,index,wot)
  %5152 = extractvalue %dx.types.ResRet.i32 %5151, 0
  %5153 = and i32 %5152, 32767
  %5154 = mul nuw nsw i32 %5153, 928
  %5155 = add nuw nsw i32 %5154, 48
  %5156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5155, i32 undef)  ; BufferLoad(srv,index,wot)
  %5157 = extractvalue %dx.types.ResRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.ResRet.f32 %5156, 1
  %5159 = extractvalue %dx.types.ResRet.f32 %5156, 2
  %5160 = add nuw nsw i32 %5154, 60
  %5161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5160, i32 undef)  ; BufferLoad(srv,index,wot)
  %5162 = extractvalue %dx.types.ResRet.f32 %5161, 0
  %5163 = extractvalue %dx.types.ResRet.f32 %5161, 1
  %5164 = extractvalue %dx.types.ResRet.f32 %5161, 2
  %5165 = fmul fast float %5157, %5147
  %5166 = fmul fast float %5158, %5147
  %5167 = fmul fast float %5159, %5147
  %5168 = fadd fast float %5165, %5121
  %5169 = fadd fast float %5166, %5122
  %5170 = fadd fast float %5167, %5123
  %5171 = fmul fast float %5162, %5147
  %5172 = fmul fast float %5163, %5147
  %5173 = fmul fast float %5164, %5147
  %5174 = fadd fast float %5171, %5124
  %5175 = fadd fast float %5172, %5125
  %5176 = fadd fast float %5173, %5126
  br label %5177

; <label>:5177                                    ; preds = %5149, %5120
  %5178 = phi float [ %5168, %5149 ], [ %5121, %5120 ]
  %5179 = phi float [ %5169, %5149 ], [ %5122, %5120 ]
  %5180 = phi float [ %5170, %5149 ], [ %5123, %5120 ]
  %5181 = phi float [ %5174, %5149 ], [ %5124, %5120 ]
  %5182 = phi float [ %5175, %5149 ], [ %5125, %5120 ]
  %5183 = phi float [ %5176, %5149 ], [ %5126, %5120 ]
  %5184 = add nuw i32 %5127, 1
  %5185 = icmp eq i32 %5184, %5109
  br i1 %5185, label %5186, label %5120

; <label>:5186                                    ; preds = %5177
  br label %5187

; <label>:5187                                    ; preds = %5186, %5050
  %5188 = phi float [ 0.000000e+00, %5050 ], [ %5178, %5186 ]
  %5189 = phi float [ 0.000000e+00, %5050 ], [ %5179, %5186 ]
  %5190 = phi float [ 0.000000e+00, %5050 ], [ %5180, %5186 ]
  %5191 = phi float [ 0.000000e+00, %5050 ], [ %5181, %5186 ]
  %5192 = phi float [ 0.000000e+00, %5050 ], [ %5182, %5186 ]
  %5193 = phi float [ 0.000000e+00, %5050 ], [ %5183, %5186 ]
  %5194 = fadd fast float %5191, %5188
  %5195 = fmul fast float %5194, 0x3F847AE140000000
  %5196 = fadd fast float %5192, %5189
  %5197 = fmul fast float %5196, 0x3F847AE140000000
  %5198 = fadd fast float %5193, %5190
  %5199 = fmul fast float %5198, 0x3F847AE140000000
  br label %5200

; <label>:5200                                    ; preds = %5187, %4984, %4929, %4926, %4897, %4859
  %5201 = phi float [ %4911, %4897 ], [ -1.310720e+05, %4859 ], [ %5103, %5187 ], [ -1.310720e+05, %4929 ], [ -1.310720e+05, %4984 ], [ -1.310720e+05, %4926 ]
  %5202 = phi float [ %4921, %4897 ], [ 0.000000e+00, %4859 ], [ %5195, %5187 ], [ 0.000000e+00, %4929 ], [ 0.000000e+00, %4984 ], [ 0.000000e+00, %4926 ]
  %5203 = phi float [ %4923, %4897 ], [ 0.000000e+00, %4859 ], [ %5197, %5187 ], [ 0.000000e+00, %4929 ], [ 0.000000e+00, %4984 ], [ 0.000000e+00, %4926 ]
  %5204 = phi float [ %4925, %4897 ], [ 0.000000e+00, %4859 ], [ %5199, %5187 ], [ 0.000000e+00, %4929 ], [ 0.000000e+00, %4984 ], [ 0.000000e+00, %4926 ]
  %5205 = phi i1 [ true, %4897 ], [ false, %4859 ], [ true, %5187 ], [ false, %4929 ], [ false, %4984 ], [ false, %4926 ]
  %5206 = and i32 %199, 3
  %5207 = icmp eq i32 %5206, 1
  %5208 = select i1 %5207, float 1.000000e+00, float 0.000000e+00
  %5209 = fsub fast float %5201, %163
  %5210 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5211 = select i1 %5205, float %5210, float 1.000000e+00
  %5212 = fmul fast float %5211, %5208
  %5213 = icmp eq i32 %5206, 3
  %5214 = select i1 %5213, float 1.000000e+00, float %5212
  %5215 = call float @dx.op.binary.f32(i32 35, float %4735, float %5214)  ; FMax(a,b)
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5217 = fcmp fast une float %5216, 0.000000e+00
  %5218 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5219 = call float @dx.op.unary.f32(i32 25, float %5218)  ; Rsqrt(value)
  br i1 %5217, label %5227, label %5220

; <label>:5220                                    ; preds = %5200
  %5221 = fmul fast float %5219, %161
  %5222 = fmul fast float %5219, %162
  %5223 = fmul fast float %5219, %163
  %5224 = fsub fast float -0.000000e+00, %5221
  %5225 = fsub fast float -0.000000e+00, %5222
  %5226 = fsub fast float -0.000000e+00, %5223
  br label %5395

; <label>:5227                                    ; preds = %5200
  %5228 = fmul fast float %161, %5219
  %5229 = fsub fast float -0.000000e+00, %5228
  %5230 = fmul fast float %162, %5219
  %5231 = fsub fast float -0.000000e+00, %5230
  %5232 = fmul fast float %163, %5219
  %5233 = fsub fast float -0.000000e+00, %5232
  %5234 = call float @dx.op.dot3.f32(i32 55, float %5229, float %5231, float %5233, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = fmul fast float %5216, 2.500000e+00
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = fmul fast float %5216, 0x4013FFFFE0000000
  %5238 = fadd fast float %5237, 0xBFFFFFFFE0000000
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5240 = fmul fast float %5216, 0x4004000020000000
  %5241 = fadd fast float %5240, 0xBFF8000040000000
  %5242 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5243 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5244 = fmul fast float %4739, 1.000000e+01
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = fmul fast float %5245, 2.000000e+00
  %5247 = fsub fast float 3.000000e+00, %5246
  %5248 = fmul fast float %5245, %5245
  %5249 = fmul fast float %5248, %5247
  %5250 = fsub fast float 1.000000e+00, %5249
  %5251 = fsub fast float 0x3FE3333340000000, %4760
  %5252 = fmul fast float %5251, 0x400AAAAAA0000000
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = fmul fast float %5250, %5253
  %5255 = fmul fast float %4838, 0x3FEA2B8620000000
  %5256 = fmul fast float %4839, 0x3FEA2B8620000000
  %5257 = fmul fast float %4840, 0x3FEA2B8620000000
  %5258 = fadd fast float %5255, 0x3FC81DFBA0000000
  %5259 = fmul fast float %5258, %4838
  %5260 = fadd fast float %5259, 0x3F910E6020000000
  %5261 = fadd fast float %5256, 0x3FC81DFBA0000000
  %5262 = fmul fast float %5261, %4839
  %5263 = fadd fast float %5262, 0x3F910E6020000000
  %5264 = fadd fast float %5257, 0x3FC81DFBA0000000
  %5265 = fmul fast float %5264, %4840
  %5266 = fadd fast float %5265, 0x3F910E6020000000
  %5267 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5269 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5270 = fsub fast float %5267, %4838
  %5271 = fsub fast float %5268, %4839
  %5272 = fsub fast float %5269, %4840
  %5273 = fmul fast float %5270, %5243
  %5274 = fmul fast float %5273, %5254
  %5275 = fmul fast float %5271, %5243
  %5276 = fmul fast float %5275, %5254
  %5277 = fmul fast float %5272, %5243
  %5278 = fmul fast float %5277, %5254
  %5279 = fadd fast float %5274, %4838
  %5280 = fadd fast float %5276, %4839
  %5281 = fadd fast float %5278, %4840
  %5282 = fmul fast float %4732, %4732
  %5283 = fmul fast float %5282, %5282
  %5284 = fadd fast float %5239, 1.000000e+00
  %5285 = fsub fast float %5284, %5254
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = call float @dx.op.dot3.f32(i32 55, float %111, float %113, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5288 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5289 = fsub fast float 1.000000e+00, %5283
  %5290 = call float @dx.op.binary.f32(i32 36, float %5286, float %5289)  ; FMin(a,b)
  %5291 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5292 = call float @dx.op.binary.f32(i32 35, float %5290, float %5291)  ; FMax(a,b)
  %5293 = fadd fast float %5288, 0xBFE4CCCCC0000000
  %5294 = fmul fast float %5293, 0x4006DB6DA0000000
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = fmul fast float %5295, 2.000000e+00
  %5297 = fsub fast float 3.000000e+00, %5296
  %5298 = bitcast float %4757 to i32
  %5299 = ashr i32 %5298, 1
  %5300 = add nsw i32 %5299, 532487669
  %5301 = bitcast i32 %5300 to float
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = bitcast float %5302 to i32
  %5304 = sub nsw i32 2129859010, %5303
  %5305 = bitcast i32 %5304 to float
  %5306 = fmul fast float %5305, 2.000000e+00
  %5307 = bitcast float %4758 to i32
  %5308 = ashr i32 %5307, 1
  %5309 = add nsw i32 %5308, 532487669
  %5310 = bitcast i32 %5309 to float
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = bitcast float %5311 to i32
  %5313 = sub nsw i32 2129859010, %5312
  %5314 = bitcast i32 %5313 to float
  %5315 = fmul fast float %5314, 2.000000e+00
  %5316 = bitcast float %4759 to i32
  %5317 = ashr i32 %5316, 1
  %5318 = add nsw i32 %5317, 532487669
  %5319 = bitcast i32 %5318 to float
  %5320 = fsub fast float 1.000000e+00, %5319
  %5321 = bitcast float %5320 to i32
  %5322 = sub nsw i32 2129859010, %5321
  %5323 = bitcast i32 %5322 to float
  %5324 = fmul fast float %5323, 2.000000e+00
  %5325 = fsub fast float 0x4002A9FBE0000000, %5306
  %5326 = fadd fast float %5306, 0x3FD54FDF00000000
  %5327 = bitcast float %5326 to i32
  %5328 = sub nsw i32 2129859010, %5327
  %5329 = bitcast i32 %5328 to float
  %5330 = fmul fast float %5329, %5325
  %5331 = fmul fast float %5330, %5330
  %5332 = fsub fast float 0x4002A9FBE0000000, %5315
  %5333 = fadd fast float %5315, 0x3FD54FDF00000000
  %5334 = bitcast float %5333 to i32
  %5335 = sub nsw i32 2129859010, %5334
  %5336 = bitcast i32 %5335 to float
  %5337 = fmul fast float %5336, %5332
  %5338 = fmul fast float %5337, %5337
  %5339 = fsub fast float 0x4002A9FBE0000000, %5324
  %5340 = fadd fast float %5324, 0x3FD54FDF00000000
  %5341 = bitcast float %5340 to i32
  %5342 = sub nsw i32 2129859010, %5341
  %5343 = bitcast i32 %5342 to float
  %5344 = fmul fast float %5343, %5339
  %5345 = fmul fast float %5344, %5344
  %5346 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5331)  ; FMax(a,b)
  %5347 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5338)  ; FMax(a,b)
  %5348 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5345)  ; FMax(a,b)
  %5349 = fsub fast float 1.000000e+00, %5234
  %5350 = fadd fast float %5349, %5250
  %5351 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5352 = fsub fast float 1.000000e+00, %5214
  %5353 = fmul fast float %5292, %5352
  %5354 = fmul fast float %5295, %5295
  %5355 = fmul fast float %5354, %5353
  %5356 = fmul fast float %5355, %5297
  %5357 = fmul fast float %5352, 0xBFE99999A0000000
  %5358 = fmul fast float %5357, %5243
  %5359 = fmul fast float %5358, %5254
  %5360 = fadd fast float %5359, 1.000000e+00
  %5361 = fadd fast float %4760, -1.000000e+00
  %5362 = fmul fast float %5360, %5361
  %5363 = fadd fast float %5362, 1.000000e+00
  %5364 = fsub fast float %5346, %4757
  %5365 = fsub fast float %5347, %4758
  %5366 = fsub fast float %5348, %4759
  %5367 = fmul fast float %5356, %5364
  %5368 = fmul fast float %5356, %5365
  %5369 = fmul fast float %5356, %5366
  %5370 = fadd fast float %5367, %4757
  %5371 = fadd fast float %5368, %4758
  %5372 = fadd fast float %5369, %4759
  %5373 = fsub fast float %111, %4717
  %5374 = fsub fast float %113, %4718
  %5375 = fsub fast float %115, %4719
  %5376 = fmul fast float %5356, %5373
  %5377 = fmul fast float %5356, %5374
  %5378 = fmul fast float %5356, %5375
  %5379 = fadd fast float %5376, %4717
  %5380 = fadd fast float %5377, %4718
  %5381 = fadd fast float %5378, %4719
  %5382 = fmul fast float %5356, %5351
  %5383 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = fmul fast float %5382, %5384
  %5386 = fadd fast float %5385, %5383
  %5387 = fsub fast float 1.000000e+00, %4732
  %5388 = fmul fast float %5356, %5387
  %5389 = fadd fast float %5388, %4732
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5379, float %5380, float %5381, float %5379, float %5380, float %5381)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.unary.f32(i32 25, float %5390)  ; Rsqrt(value)
  %5392 = fmul fast float %5379, %5391
  %5393 = fmul fast float %5380, %5391
  %5394 = fmul fast float %5381, %5391
  br label %5395

; <label>:5395                                    ; preds = %5227, %5220
  %5396 = phi float [ %5226, %5220 ], [ %5233, %5227 ]
  %5397 = phi float [ %5225, %5220 ], [ %5231, %5227 ]
  %5398 = phi float [ %5224, %5220 ], [ %5229, %5227 ]
  %5399 = phi float [ %5223, %5220 ], [ %5232, %5227 ]
  %5400 = phi float [ %5222, %5220 ], [ %5230, %5227 ]
  %5401 = phi float [ %5221, %5220 ], [ %5228, %5227 ]
  %5402 = phi float [ %4757, %5220 ], [ %5370, %5227 ]
  %5403 = phi float [ %4758, %5220 ], [ %5371, %5227 ]
  %5404 = phi float [ %4759, %5220 ], [ %5372, %5227 ]
  %5405 = phi float [ %4717, %5220 ], [ %5392, %5227 ]
  %5406 = phi float [ %4718, %5220 ], [ %5393, %5227 ]
  %5407 = phi float [ %4719, %5220 ], [ %5394, %5227 ]
  %5408 = phi float [ %4838, %5220 ], [ %5279, %5227 ]
  %5409 = phi float [ %4839, %5220 ], [ %5280, %5227 ]
  %5410 = phi float [ %4840, %5220 ], [ %5281, %5227 ]
  %5411 = phi float [ %4760, %5220 ], [ %5386, %5227 ]
  %5412 = phi float [ %4732, %5220 ], [ %5389, %5227 ]
  %5413 = fsub fast float -0.000000e+00, %163
  %5414 = select i1 %223, float 0.000000e+00, float %5404
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %5398, float %5397, float %5396)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = call float @dx.op.unary.f32(i32 7, float %5415)  ; Saturate(value)
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5400, float %5399, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = fmul fast float %5417, 2.000000e+00
  %5419 = fmul fast float %5418, %5405
  %5420 = fmul fast float %5418, %5406
  %5421 = fmul fast float %5418, %5407
  %5422 = fsub fast float %5401, %5419
  %5423 = fsub fast float %5400, %5420
  %5424 = fsub fast float %5399, %5421
  %5425 = call float @dx.op.binary.f32(i32 36, float %5412, float 1.000000e+00)  ; FMin(a,b)
  %5426 = fsub fast float 1.000000e+00, %5412
  %5427 = bitcast float %5426 to i32
  %5428 = sub nsw i32 2129859010, %5427
  %5429 = bitcast i32 %5428 to float
  %5430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5431 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = fcmp fast oeq float %5431, 0.000000e+00
  %5433 = fcmp fast oeq float %5430, 0.000000e+00
  %5434 = or i1 %5433, %5432
  br i1 %5434, label %5464, label %5435

; <label>:5435                                    ; preds = %5395
  %5436 = fsub fast float -0.000000e+00, %76
  %5437 = fsub fast float -0.000000e+00, %74
  %5438 = call float @dx.op.unary.f32(i32 24, float %5431)  ; Sqrt(value)
  %5439 = fdiv fast float %5438, %5430
  %5440 = fcmp fast ogt float %5439, 0x3FFB6F8900000000
  %5441 = select i1 %5440, float 0x3FFB6F8900000000, float %5439
  %5442 = fmul fast float %5441, 0x3FE8A23460000000
  %5443 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5444 = call float @dx.op.binary.f32(i32 35, float %5441, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5445 = fmul fast float %5443, %5430
  %5446 = fmul fast float %5444, 0x3FF279A740000000
  %5447 = fadd fast float %5446, -1.000000e+00
  %5448 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %75, float %5436, float %5437, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5449 = call float @dx.op.unary.f32(i32 25, float %5448)  ; Rsqrt(value)
  %5450 = fmul fast float %5449, %5436
  %5451 = fmul fast float %5449, %5437
  %5452 = fmul fast float %5449, %75
  %5453 = fmul fast float %5447, %5447
  %5454 = fsub fast float 1.000000e+00, %5453
  %5455 = fmul fast float %5444, 0x40005F8BE0000000
  %5456 = fsub fast float 0x400C5BF8A0000000, %5455
  %5457 = fdiv fast float %5445, %5456
  %5458 = fmul fast float %5457, 0x3FEE31C3C0000000
  %5459 = fmul fast float %5458, %5454
  %5460 = fmul fast float %5444, 0x3FDACB7480000000
  %5461 = fadd fast float %5460, 0xBFD7347680000000
  %5462 = fmul fast float %5461, %5457
  %5463 = fmul fast float %5462, %5454
  br label %5464

; <label>:5464                                    ; preds = %5435, %5395
  %5465 = phi float [ %5450, %5435 ], [ 0.000000e+00, %5395 ]
  %5466 = phi float [ %5451, %5435 ], [ 0.000000e+00, %5395 ]
  %5467 = phi float [ %5452, %5435 ], [ 0.000000e+00, %5395 ]
  %5468 = phi float [ %5459, %5435 ], [ 0.000000e+00, %5395 ]
  %5469 = phi float [ %5463, %5435 ], [ 0.000000e+00, %5395 ]
  %5470 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5466, float %5467, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = fmul fast float %5470, 0x3FDF454380000000
  %5472 = fmul fast float %5470, %5470
  %5473 = fmul fast float %5472, 0x3FEE471020000000
  %5474 = fadd fast float %5473, 0xBFD42F6020000000
  %5475 = fmul fast float %5430, 0x3FD20DD760000000
  %5476 = fmul fast float %5474, %5469
  %5477 = fadd fast float %5476, %5475
  %5478 = fmul fast float %5471, %5468
  %5479 = fadd fast float %5477, %5478
  %5480 = fsub fast float %5477, %5478
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5466, float %5467, float %5422, float %5423, float %5424)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = fmul fast float %5481, 0x3FDF454380000000
  %5483 = fmul fast float %5481, %5481
  %5484 = fmul fast float %5483, 0x3FEE471020000000
  %5485 = fadd fast float %5484, 0xBFD42F6020000000
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5430, float %5468, float %5469, float 0x3FD20DD760000000, float %5482, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5488 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = fcmp fast oeq float %5488, 0.000000e+00
  %5490 = fcmp fast oeq float %5487, 0.000000e+00
  %5491 = or i1 %5490, %5489
  br i1 %5491, label %5521, label %5492

; <label>:5492                                    ; preds = %5464
  %5493 = fsub fast float -0.000000e+00, %72
  %5494 = fsub fast float -0.000000e+00, %70
  %5495 = call float @dx.op.unary.f32(i32 24, float %5488)  ; Sqrt(value)
  %5496 = fdiv fast float %5495, %5487
  %5497 = fcmp fast ogt float %5496, 0x3FFB6F8900000000
  %5498 = select i1 %5497, float 0x3FFB6F8900000000, float %5496
  %5499 = fmul fast float %5498, 0x3FE8A23460000000
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = call float @dx.op.binary.f32(i32 35, float %5498, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5502 = fmul fast float %5500, %5487
  %5503 = fmul fast float %5501, 0x3FF279A740000000
  %5504 = fadd fast float %5503, -1.000000e+00
  %5505 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5494, float %71, float %5493, float %5494, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5506 = call float @dx.op.unary.f32(i32 25, float %5505)  ; Rsqrt(value)
  %5507 = fmul fast float %5506, %5493
  %5508 = fmul fast float %5506, %5494
  %5509 = fmul fast float %5506, %71
  %5510 = fmul fast float %5504, %5504
  %5511 = fsub fast float 1.000000e+00, %5510
  %5512 = fmul fast float %5501, 0x40005F8BE0000000
  %5513 = fsub fast float 0x400C5BF8A0000000, %5512
  %5514 = fdiv fast float %5502, %5513
  %5515 = fmul fast float %5514, 0x3FEE31C3C0000000
  %5516 = fmul fast float %5515, %5511
  %5517 = fmul fast float %5501, 0x3FDACB7480000000
  %5518 = fadd fast float %5517, 0xBFD7347680000000
  %5519 = fmul fast float %5518, %5514
  %5520 = fmul fast float %5519, %5511
  br label %5521

; <label>:5521                                    ; preds = %5492, %5464
  %5522 = phi float [ %5507, %5492 ], [ 0.000000e+00, %5464 ]
  %5523 = phi float [ %5508, %5492 ], [ 0.000000e+00, %5464 ]
  %5524 = phi float [ %5509, %5492 ], [ 0.000000e+00, %5464 ]
  %5525 = phi float [ %5516, %5492 ], [ 0.000000e+00, %5464 ]
  %5526 = phi float [ %5520, %5492 ], [ 0.000000e+00, %5464 ]
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5523, float %5524, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = fmul fast float %5527, 0x3FDF454380000000
  %5529 = fmul fast float %5527, %5527
  %5530 = fmul fast float %5529, 0x3FEE471020000000
  %5531 = fadd fast float %5530, 0xBFD42F6020000000
  %5532 = fmul fast float %5487, 0x3FD20DD760000000
  %5533 = fmul fast float %5531, %5526
  %5534 = fadd fast float %5533, %5532
  %5535 = fmul fast float %5528, %5525
  %5536 = fadd fast float %5534, %5535
  %5537 = fsub fast float %5534, %5535
  %5538 = call float @dx.op.dot3.f32(i32 55, float %5522, float %5523, float %5524, float %5422, float %5423, float %5424)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = fmul fast float %5538, 0x3FDF454380000000
  %5540 = fmul fast float %5538, %5538
  %5541 = fmul fast float %5540, 0x3FEE471020000000
  %5542 = fadd fast float %5541, 0xBFD42F6020000000
  %5543 = call float @dx.op.dot3.f32(i32 55, float %5487, float %5525, float %5526, float 0x3FD20DD760000000, float %5539, float %5542)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5545 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = fcmp fast oeq float %5545, 0.000000e+00
  %5547 = fcmp fast oeq float %5544, 0.000000e+00
  %5548 = or i1 %5547, %5546
  br i1 %5548, label %5578, label %5549

; <label>:5549                                    ; preds = %5521
  %5550 = fsub fast float -0.000000e+00, %68
  %5551 = fsub fast float -0.000000e+00, %66
  %5552 = call float @dx.op.unary.f32(i32 24, float %5545)  ; Sqrt(value)
  %5553 = fdiv fast float %5552, %5544
  %5554 = fcmp fast ogt float %5553, 0x3FFB6F8900000000
  %5555 = select i1 %5554, float 0x3FFB6F8900000000, float %5553
  %5556 = fmul fast float %5555, 0x3FE8A23460000000
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = call float @dx.op.binary.f32(i32 35, float %5555, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5559 = fmul fast float %5557, %5544
  %5560 = fmul fast float %5558, 0x3FF279A740000000
  %5561 = fadd fast float %5560, -1.000000e+00
  %5562 = call float @dx.op.dot3.f32(i32 55, float %5550, float %5551, float %67, float %5550, float %5551, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = call float @dx.op.unary.f32(i32 25, float %5562)  ; Rsqrt(value)
  %5564 = fmul fast float %5563, %5550
  %5565 = fmul fast float %5563, %5551
  %5566 = fmul fast float %5563, %67
  %5567 = fmul fast float %5561, %5561
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = fmul fast float %5558, 0x40005F8BE0000000
  %5570 = fsub fast float 0x400C5BF8A0000000, %5569
  %5571 = fdiv fast float %5559, %5570
  %5572 = fmul fast float %5571, 0x3FEE31C3C0000000
  %5573 = fmul fast float %5572, %5568
  %5574 = fmul fast float %5558, 0x3FDACB7480000000
  %5575 = fadd fast float %5574, 0xBFD7347680000000
  %5576 = fmul fast float %5575, %5571
  %5577 = fmul fast float %5576, %5568
  br label %5578

; <label>:5578                                    ; preds = %5549, %5521
  %5579 = phi float [ %5564, %5549 ], [ 0.000000e+00, %5521 ]
  %5580 = phi float [ %5565, %5549 ], [ 0.000000e+00, %5521 ]
  %5581 = phi float [ %5566, %5549 ], [ 0.000000e+00, %5521 ]
  %5582 = phi float [ %5573, %5549 ], [ 0.000000e+00, %5521 ]
  %5583 = phi float [ %5577, %5549 ], [ 0.000000e+00, %5521 ]
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5579, float %5580, float %5581, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = fmul fast float %5584, 0x3FDF454380000000
  %5586 = fmul fast float %5584, %5584
  %5587 = fmul fast float %5586, 0x3FEE471020000000
  %5588 = fadd fast float %5587, 0xBFD42F6020000000
  %5589 = fmul fast float %5544, 0x3FD20DD760000000
  %5590 = fmul fast float %5588, %5583
  %5591 = fadd fast float %5590, %5589
  %5592 = fmul fast float %5585, %5582
  %5593 = fadd fast float %5591, %5592
  %5594 = fsub fast float %5591, %5592
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5579, float %5580, float %5581, float %5422, float %5423, float %5424)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = fmul fast float %5595, 0x3FDF454380000000
  %5597 = fmul fast float %5595, %5595
  %5598 = fmul fast float %5597, 0x3FEE471020000000
  %5599 = fadd fast float %5598, 0xBFD42F6020000000
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5582, float %5583, float 0x3FD20DD760000000, float %5596, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = call float @dx.op.binary.f32(i32 35, float %5479, float 0.000000e+00)  ; FMax(a,b)
  %5602 = call float @dx.op.binary.f32(i32 35, float %5536, float 0.000000e+00)  ; FMax(a,b)
  %5603 = call float @dx.op.binary.f32(i32 35, float %5593, float 0.000000e+00)  ; FMax(a,b)
  %5604 = call float @dx.op.binary.f32(i32 35, float %5480, float 0.000000e+00)  ; FMax(a,b)
  %5605 = call float @dx.op.binary.f32(i32 35, float %5537, float 0.000000e+00)  ; FMax(a,b)
  %5606 = call float @dx.op.binary.f32(i32 35, float %5594, float 0.000000e+00)  ; FMax(a,b)
  %5607 = call float @dx.op.binary.f32(i32 35, float %5486, float 0.000000e+00)  ; FMax(a,b)
  %5608 = call float @dx.op.binary.f32(i32 35, float %5543, float 0.000000e+00)  ; FMax(a,b)
  %5609 = call float @dx.op.binary.f32(i32 35, float %5600, float 0.000000e+00)  ; FMax(a,b)
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 0
  %5612 = call float @dx.op.binary.f32(i32 36, float %5408, float %5611)  ; FMin(a,b)
  %5613 = fsub fast float 1.000000e+00, %5425
  %5614 = fmul fast float %5612, %5613
  %5615 = fsub fast float 1.000000e+00, %5614
  %5616 = bitcast float %5615 to i32
  %5617 = sub nsw i32 2129859010, %5616
  %5618 = bitcast i32 %5617 to float
  %5619 = call float @dx.op.binary.f32(i32 36, float %5409, float %5611)  ; FMin(a,b)
  %5620 = fmul fast float %5619, %5613
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = bitcast float %5621 to i32
  %5623 = sub nsw i32 2129859010, %5622
  %5624 = bitcast i32 %5623 to float
  %5625 = call float @dx.op.binary.f32(i32 36, float %5410, float %5611)  ; FMin(a,b)
  %5626 = fmul fast float %5625, %5613
  %5627 = fsub fast float 1.000000e+00, %5626
  %5628 = bitcast float %5627 to i32
  %5629 = sub nsw i32 2129859010, %5628
  %5630 = bitcast i32 %5629 to float
  %5631 = fmul fast float %5601, %5425
  %5632 = fmul fast float %5631, %5618
  %5633 = fmul fast float %5602, %5425
  %5634 = fmul fast float %5633, %5624
  %5635 = fmul fast float %5603, %5425
  %5636 = fmul fast float %5635, %5630
  %5637 = call float @dx.op.binary.f32(i32 36, float %5402, float %5611)  ; FMin(a,b)
  %5638 = fmul fast float %5637, %5613
  %5639 = fsub fast float 1.000000e+00, %5638
  %5640 = bitcast float %5639 to i32
  %5641 = sub nsw i32 2129859010, %5640
  %5642 = bitcast i32 %5641 to float
  %5643 = call float @dx.op.binary.f32(i32 36, float %5403, float %5611)  ; FMin(a,b)
  %5644 = fmul fast float %5643, %5613
  %5645 = fsub fast float 1.000000e+00, %5644
  %5646 = bitcast float %5645 to i32
  %5647 = sub nsw i32 2129859010, %5646
  %5648 = bitcast i32 %5647 to float
  %5649 = call float @dx.op.binary.f32(i32 36, float %5414, float %5611)  ; FMin(a,b)
  %5650 = fmul fast float %5649, %5613
  %5651 = fsub fast float 1.000000e+00, %5650
  %5652 = bitcast float %5651 to i32
  %5653 = sub nsw i32 2129859010, %5652
  %5654 = bitcast i32 %5653 to float
  %5655 = fmul fast float %5607, %5425
  %5656 = fmul fast float %5655, %5642
  %5657 = fmul fast float %5608, %5425
  %5658 = fmul fast float %5657, %5648
  %5659 = fmul fast float %5609, %5425
  %5660 = fmul fast float %5659, %5654
  %5661 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5634, float %5636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = select i1 %223, float 0.000000e+00, float %5632
  %5663 = select i1 %223, float %5661, float %5634
  %5664 = select i1 %223, float 0.000000e+00, float %5636
  %5665 = call float @dx.op.dot3.f32(i32 55, float %5604, float %5605, float %5606, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5666 = select i1 %223, float 0.000000e+00, float %5604
  %5667 = select i1 %223, float %5665, float %5605
  %5668 = select i1 %223, float 0.000000e+00, float %5606
  %5669 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5658, float %5660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = select i1 %223, float 0.000000e+00, float %5656
  %5671 = select i1 %223, float %5669, float %5658
  %5672 = select i1 %223, float 0.000000e+00, float %5660
  %5673 = fmul fast float %5416, 9.843750e-01
  %5674 = fmul fast float %5411, 9.843750e-01
  %5675 = fadd fast float %5673, 7.812500e-03
  %5676 = fadd fast float %5674, 7.812500e-03
  %5677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5675, float %5676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5678 = extractvalue %dx.types.ResRet.f32 %5677, 2
  %5679 = extractvalue %dx.types.ResRet.f32 %5677, 3
  %5680 = fmul fast float %5678, %5402
  %5681 = fmul fast float %5678, %5403
  %5682 = fmul fast float %5678, %5414
  %5683 = fadd fast float %5680, %5679
  %5684 = fadd fast float %5681, %5679
  %5685 = fadd fast float %5682, %5679
  %5686 = fcmp fast ogt float %4733, 0.000000e+00
  br i1 %5686, label %5687, label %5713

; <label>:5687                                    ; preds = %5578
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4733, float %5416, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  %5690 = extractvalue %dx.types.ResRet.f32 %5688, 1
  %5691 = extractvalue %dx.types.ResRet.f32 %5688, 2
  %5692 = fadd fast float %5689, -5.000000e-01
  %5693 = fadd fast float %5690, -5.000000e-01
  %5694 = fadd fast float %5691, -5.000000e-01
  %5695 = fsub fast float 1.000000e+00, %5402
  %5696 = fsub fast float 1.000000e+00, %5403
  %5697 = fsub fast float 1.000000e+00, %5414
  %5698 = fmul fast float %5402, 4.000000e+00
  %5699 = fmul fast float %5698, %5695
  %5700 = fmul fast float %5699, %5692
  %5701 = fmul fast float %5403, 4.000000e+00
  %5702 = fmul fast float %5701, %5696
  %5703 = fmul fast float %5702, %5693
  %5704 = fmul fast float %5414, 4.000000e+00
  %5705 = fmul fast float %5704, %5697
  %5706 = fmul fast float %5705, %5694
  %5707 = fadd fast float %5700, %5683
  %5708 = fadd fast float %5703, %5684
  %5709 = fadd fast float %5706, %5685
  %5710 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5711 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5712 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  br label %5713

; <label>:5713                                    ; preds = %5687, %5578
  %5714 = phi float [ %5710, %5687 ], [ %5683, %5578 ]
  %5715 = phi float [ %5711, %5687 ], [ %5684, %5578 ]
  %5716 = phi float [ %5712, %5687 ], [ %5685, %5578 ]
  %5717 = call float @dx.op.binary.f32(i32 35, float %5715, float %5716)  ; FMax(a,b)
  %5718 = call float @dx.op.binary.f32(i32 35, float %5714, float %5717)  ; FMax(a,b)
  %5719 = fsub fast float 1.000000e+00, %5718
  %5720 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = fcmp fast ogt float %5720, 0x3E7FF19E20000000
  %5722 = fdiv fast float 1.000000e+00, %5720
  %5723 = select i1 %5721, float %5722, float 0.000000e+00
  %5724 = fmul fast float %5723, %5408
  %5725 = fmul fast float %5723, %5409
  %5726 = fmul fast float %5723, %5410
  %5727 = fadd fast float %5724, -1.000000e+00
  %5728 = fadd fast float %5725, -1.000000e+00
  %5729 = fadd fast float %5726, -1.000000e+00
  %5730 = fmul fast float %5727, 5.000000e-01
  %5731 = fmul fast float %5728, 5.000000e-01
  %5732 = fmul fast float %5729, 5.000000e-01
  %5733 = fadd fast float %5730, 1.000000e+00
  %5734 = fadd fast float %5731, 1.000000e+00
  %5735 = fadd fast float %5732, 1.000000e+00
  %5736 = fmul fast float %5719, %4824
  %5737 = fmul fast float %5719, %4825
  %5738 = fmul fast float %5719, %4826
  %5739 = fadd fast float %5736, -1.000000e+00
  %5740 = fadd fast float %5737, -1.000000e+00
  %5741 = fadd fast float %5738, -1.000000e+00
  %5742 = fmul fast float %5739, %4730
  %5743 = fmul fast float %5740, %4730
  %5744 = fmul fast float %5741, %4730
  %5745 = fmul fast float %5714, %5670
  %5746 = fmul fast float %5715, %5671
  %5747 = fmul fast float %5716, %5672
  %5748 = fsub fast float 1.000000e+00, %5416
  %5749 = bitcast float %5748 to i32
  %5750 = sitofp i32 %5749 to float
  %5751 = fmul fast float %5750, 5.000000e+00
  %5752 = fadd fast float %5751, 0xC1EFBF8940000000
  %5753 = fptosi float %5752 to i32
  %5754 = bitcast i32 %5753 to float
  %5755 = fmul fast float %5754, %4734
  %5756 = fmul fast float %5662, %5755
  %5757 = fmul fast float %5756, %5719
  %5758 = fmul fast float %5757, %5733
  %5759 = fmul fast float %5663, %5755
  %5760 = fmul fast float %5759, %5719
  %5761 = fmul fast float %5760, %5734
  %5762 = fmul fast float %5664, %5755
  %5763 = fmul fast float %5762, %5719
  %5764 = fmul fast float %5763, %5735
  %5765 = fadd fast float %5745, %4720
  %5766 = fadd fast float %5765, %5758
  %5767 = fmul fast float %5766, %4730
  %5768 = fadd fast float %5746, %4721
  %5769 = fadd fast float %5768, %5761
  %5770 = fmul fast float %5769, %4730
  %5771 = fadd fast float %5747, %4722
  %5772 = fadd fast float %5771, %5764
  %5773 = fmul fast float %5772, %4730
  %5774 = fadd fast float %5744, 1.000000e+00
  %5775 = fadd fast float %5743, 1.000000e+00
  %5776 = fadd fast float %5742, 1.000000e+00
  %5777 = fmul fast float %5719, %5664
  %5778 = fmul fast float %5719, %5663
  %5779 = fmul fast float %5719, %5662
  %5780 = fmul fast float %5776, %5666
  %5781 = fmul fast float %5775, %5667
  %5782 = fmul fast float %5774, %5668
  %5783 = fadd fast float %5780, %5779
  %5784 = fmul fast float %5783, %4730
  %5785 = fadd fast float %5781, %5778
  %5786 = fmul fast float %5785, %4730
  %5787 = fadd fast float %5782, %5777
  %5788 = fmul fast float %5787, %4730
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5791 = fcmp fast oeq float %5790, 0.000000e+00
  br i1 %5791, label %6915, label %5792

; <label>:5792                                    ; preds = %5713
  %5793 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5795 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = extractvalue %dx.types.CBufRet.f32 %5796, 1
  %5799 = extractvalue %dx.types.CBufRet.f32 %5796, 2
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = select i1 %223, float %5801, float %5797
  %5805 = select i1 %223, float %5803, float %5798
  %5806 = select i1 %223, float %5802, float %5799
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 2
  %5809 = fmul fast float %5808, %111
  %5810 = fmul fast float %5808, %113
  %5811 = fmul fast float %5808, %115
  %5812 = fadd fast float %5809, %161
  %5813 = fadd fast float %5810, %162
  %5814 = fadd fast float %5811, %163
  %5815 = fcmp fast olt float %5790, 0.000000e+00
  br i1 %5815, label %6440, label %5816

; <label>:5816                                    ; preds = %5792
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.CBufRet.f32 %5817, 2
  %5821 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.CBufRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5826 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5829 = extractvalue %dx.types.CBufRet.f32 %5827, 1
  %5830 = extractvalue %dx.types.CBufRet.f32 %5827, 2
  %5831 = extractvalue %dx.types.CBufRet.f32 %5827, 3
  %5832 = fmul fast float %5818, %5812
  %5833 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %5819, float %5832)  ; FMad(a,b,c)
  %5834 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %5820, float %5833)  ; FMad(a,b,c)
  %5835 = fadd fast float %5834, %5821
  %5836 = fmul fast float %5823, %5812
  %5837 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %5824, float %5836)  ; FMad(a,b,c)
  %5838 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %5825, float %5837)  ; FMad(a,b,c)
  %5839 = fadd fast float %5838, %5826
  %5840 = fmul fast float %5828, %5812
  %5841 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %5829, float %5840)  ; FMad(a,b,c)
  %5842 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %5830, float %5841)  ; FMad(a,b,c)
  %5843 = fadd fast float %5842, %5831
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 0
  %5846 = extractvalue %dx.types.CBufRet.f32 %5844, 1
  %5847 = extractvalue %dx.types.CBufRet.f32 %5844, 3
  %5848 = fmul fast float %5847, %5835
  %5849 = fmul fast float %5847, %5839
  %5850 = fadd fast float %5848, %5845
  %5851 = fadd fast float %5849, %5846
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5856 = fmul fast float %5855, %5835
  %5857 = fmul fast float %5855, %5839
  %5858 = fadd fast float %5856, %5853
  %5859 = fadd fast float %5857, %5854
  %5860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5860, 1
  %5862 = fsub fast float %5861, %5843
  %5863 = extractvalue %dx.types.CBufRet.f32 %5860, 2
  %5864 = fmul fast float %5862, %5863
  %5865 = fsub fast float 1.000000e+00, %5864
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5869 = extractvalue %dx.types.CBufRet.f32 %5868, 2
  %5870 = fadd fast float %5869, %5867
  %5871 = fcmp fast ogt float %5870, 0.000000e+00
  br i1 %5871, label %5872, label %5896

; <label>:5872                                    ; preds = %5816
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.CBufRet.f32 %5873, 1
  %5876 = fsub fast float %5858, %5874
  %5877 = fsub fast float %5859, %5875
  %5878 = fcmp fast olt float %5876, 0.000000e+00
  %5879 = fcmp fast olt float %5877, 0.000000e+00
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.CBufRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.CBufRet.f32 %5880, 2
  %5884 = extractvalue %dx.types.CBufRet.f32 %5880, 3
  %5885 = select i1 %5878, float %5881, float %5883
  %5886 = select i1 %5879, float %5882, float %5884
  %5887 = fmul fast float %5885, %5876
  %5888 = fmul fast float %5886, %5877
  %5889 = call float @dx.op.unary.f32(i32 6, float %5887)  ; FAbs(value)
  %5890 = call float @dx.op.unary.f32(i32 6, float %5888)  ; FAbs(value)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5892 = call float @dx.op.binary.f32(i32 35, float %5889, float %5890)  ; FMax(a,b)
  %5893 = fsub fast float %5891, %5892
  %5894 = call float @dx.op.unary.f32(i32 7, float %5893)  ; Saturate(value)
  %5895 = fmul fast float %5894, %5866
  br label %5896

; <label>:5896                                    ; preds = %5872, %5816
  %5897 = phi float [ %5895, %5872 ], [ 0.000000e+00, %5816 ]
  %5898 = extractvalue %dx.types.CBufRet.f32 %5844, 2
  %5899 = extractvalue %dx.types.CBufRet.f32 %5868, 1
  %5900 = fadd fast float %5899, %5898
  %5901 = fcmp fast ogt float %5900, 0.000000e+00
  %5902 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  br i1 %5901, label %5903, label %5926

; <label>:5903                                    ; preds = %5896
  %5904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.CBufRet.f32 %5904, 1
  %5907 = fsub fast float %5850, %5905
  %5908 = fsub fast float %5851, %5906
  %5909 = fcmp fast olt float %5907, 0.000000e+00
  %5910 = fcmp fast olt float %5908, 0.000000e+00
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5915 = extractvalue %dx.types.CBufRet.f32 %5911, 3
  %5916 = select i1 %5909, float %5912, float %5914
  %5917 = select i1 %5910, float %5913, float %5915
  %5918 = fmul fast float %5916, %5907
  %5919 = fmul fast float %5917, %5908
  %5920 = call float @dx.op.unary.f32(i32 6, float %5918)  ; FAbs(value)
  %5921 = call float @dx.op.unary.f32(i32 6, float %5919)  ; FAbs(value)
  %5922 = call float @dx.op.binary.f32(i32 35, float %5920, float %5921)  ; FMax(a,b)
  %5923 = fsub fast float %5902, %5922
  %5924 = call float @dx.op.unary.f32(i32 7, float %5923)  ; Saturate(value)
  %5925 = fmul fast float %5924, %5866
  br label %5926

; <label>:5926                                    ; preds = %5903, %5896
  %5927 = phi float [ %5925, %5903 ], [ 0.000000e+00, %5896 ]
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5934 = fsub fast float %5835, %5932
  %5935 = fsub fast float %5839, %5933
  %5936 = fcmp fast olt float %5934, 0.000000e+00
  %5937 = fcmp fast olt float %5935, 0.000000e+00
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5942 = extractvalue %dx.types.CBufRet.f32 %5938, 3
  %5943 = select i1 %5936, float %5939, float %5941
  %5944 = select i1 %5937, float %5940, float %5942
  %5945 = fmul fast float %5943, %5934
  %5946 = fmul fast float %5944, %5935
  %5947 = call float @dx.op.unary.f32(i32 6, float %5945)  ; FAbs(value)
  %5948 = call float @dx.op.unary.f32(i32 6, float %5946)  ; FAbs(value)
  %5949 = call float @dx.op.binary.f32(i32 35, float %5947, float %5948)  ; FMax(a,b)
  %5950 = fsub fast float %5902, %5949
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = call float @dx.op.binary.f32(i32 36, float %5951, float %5930)  ; FMin(a,b)
  %5953 = fmul fast float %5952, %5866
  %5954 = fsub fast float %5927, %5953
  %5955 = fsub fast float %5897, %5927
  %5956 = fsub fast float %5955, %5953
  %5957 = call float @dx.op.binary.f32(i32 35, float %5927, float %5897)  ; FMax(a,b)
  %5958 = call float @dx.op.binary.f32(i32 35, float %5953, float %5957)  ; FMax(a,b)
  %5959 = fcmp fast olt float %5958, 1.000000e+00
  br i1 %5959, label %5960, label %6358, !dx.controlflow.hints !94

; <label>:5960                                    ; preds = %5926
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 0
  %5963 = fcmp fast une float %5962, 0.000000e+00
  br i1 %5963, label %5964, label %6358, !dx.controlflow.hints !95

; <label>:5964                                    ; preds = %5960
  %5965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.CBufRet.f32 %5965, 1
  %5968 = extractvalue %dx.types.CBufRet.f32 %5965, 2
  %5969 = extractvalue %dx.types.CBufRet.f32 %5965, 3
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.CBufRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.CBufRet.f32 %5970, 2
  %5974 = extractvalue %dx.types.CBufRet.f32 %5970, 3
  %5975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.CBufRet.f32 %5975, 1
  %5978 = extractvalue %dx.types.CBufRet.f32 %5975, 2
  %5979 = extractvalue %dx.types.CBufRet.f32 %5975, 3
  %5980 = fmul fast float %5966, %5812
  %5981 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %5967, float %5980)  ; FMad(a,b,c)
  %5982 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %5968, float %5981)  ; FMad(a,b,c)
  %5983 = fadd fast float %5982, %5969
  %5984 = fmul fast float %5971, %5812
  %5985 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %5972, float %5984)  ; FMad(a,b,c)
  %5986 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %5973, float %5985)  ; FMad(a,b,c)
  %5987 = fadd fast float %5986, %5974
  %5988 = fmul fast float %5976, %5812
  %5989 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %5977, float %5988)  ; FMad(a,b,c)
  %5990 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %5978, float %5989)  ; FMad(a,b,c)
  %5991 = fadd fast float %5990, %5979
  %5992 = fcmp fast oge float %5983, 1.000000e+00
  %5993 = fcmp fast oge float %5987, 1.000000e+00
  %5994 = or i1 %5992, %5993
  %5995 = fcmp fast olt float %5983, 0.000000e+00
  %5996 = fcmp fast olt float %5987, 0.000000e+00
  %5997 = or i1 %5995, %5996
  %5998 = or i1 %5994, %5997
  br i1 %5998, label %6358, label %5999, !dx.controlflow.hints !96

; <label>:5999                                    ; preds = %5964
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.CBufRet.f32 %6000, 2
  %6004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.i32 %6004, 2
  %6006 = uitofp i32 %6005 to float
  %6007 = extractvalue %dx.types.CBufRet.i32 %6004, 3
  %6008 = uitofp i32 %6007 to float
  %6009 = extractvalue %dx.types.CBufRet.f32 %6000, 3
  %6010 = fmul fast float %6009, 2.000000e+00
  %6011 = fsub fast float %5983, %6001
  %6012 = fsub fast float %5987, %6002
  %6013 = fmul fast float %6010, %6011
  %6014 = fmul fast float %6010, %6012
  %6015 = fdiv fast float 1.000000e+00, %5795
  %6016 = fmul fast float %6014, %6015
  %6017 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6018 = fmul fast float %6003, %5814
  %6019 = fmul fast float %6018, %6010
  %6020 = call float @dx.op.unary.f32(i32 6, float %6019)  ; FAbs(value)
  %6021 = call float @dx.op.unary.f32(i32 6, float %6013)  ; FAbs(value)
  %6022 = call float @dx.op.binary.f32(i32 35, float %6020, float %6017)  ; FMax(a,b)
  %6023 = call float @dx.op.binary.f32(i32 35, float %6021, float %6022)  ; FMax(a,b)
  %6024 = fmul fast float %6023, 2.000000e+00
  %6025 = call float @dx.op.unary.f32(i32 23, float %6024)  ; Log(value)
  %6026 = call float @dx.op.binary.f32(i32 35, float %6025, float %6006)  ; FMax(a,b)
  %6027 = call float @dx.op.unary.f32(i32 22, float %6026)  ; Frc(value)
  %6028 = fadd fast float %6027, 0xBFEA666660000000
  %6029 = fmul fast float %6028, 8.000000e+00
  %6030 = call float @dx.op.unary.f32(i32 7, float %6029)  ; Saturate(value)
  %6031 = call float @dx.op.unary.f32(i32 27, float %6026)  ; Round_ni(value)
  %6032 = fadd fast float %6031, %6030
  %6033 = call float @dx.op.binary.f32(i32 36, float %6032, float %6008)  ; FMin(a,b)
  %6034 = call float @dx.op.unary.f32(i32 27, float %6033)  ; Round_ni(value)
  %6035 = fsub fast float -0.000000e+00, %6034
  %6036 = call float @dx.op.unary.f32(i32 21, float %6035)  ; Exp(value)
  %6037 = fmul fast float %6036, %6010
  %6038 = fmul fast float %6037, %5983
  %6039 = fmul fast float %6037, %5987
  %6040 = fmul fast float %6038, 2.500000e-01
  %6041 = fmul fast float %6039, 2.500000e-01
  %6042 = fadd fast float %6040, 5.000000e-01
  %6043 = fadd fast float %6041, 5.000000e-01
  %6044 = fsub fast float %6008, %6006
  %6045 = fptoui float %6044 to i32
  %6046 = add i32 %6045, 320
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6046)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.CBufRet.f32 %6047, 1
  %6050 = fcmp fast une float %6033, %6008
  %6051 = fsub fast float %5983, %6048
  %6052 = fsub fast float %5987, %6049
  %6053 = call float @dx.op.unary.f32(i32 6, float %6051)  ; FAbs(value)
  %6054 = call float @dx.op.unary.f32(i32 6, float %6052)  ; FAbs(value)
  %6055 = fmul fast float %6053, %6037
  %6056 = fmul fast float %6054, %6037
  %6057 = fcmp fast olt float %6055, 1.000000e+00
  %6058 = fcmp fast olt float %6056, 1.000000e+00
  %6059 = and i1 %6057, %6058
  %6060 = or i1 %6050, %6059
  br i1 %6060, label %6061, label %6358, !dx.controlflow.hints !97

; <label>:6061                                    ; preds = %5999
  %6062 = fmul fast float %6039, 5.000000e-01
  %6063 = fmul fast float %6038, 5.000000e-01
  %6064 = fadd fast float %6062, 5.000000e-01
  %6065 = fadd fast float %6063, 5.000000e-01
  %6066 = sitofp i32 %6005 to float
  %6067 = fsub fast float %6033, %6066
  %6068 = call float @dx.op.unary.f32(i32 27, float %6067)  ; Round_ni(value)
  %6069 = call float @dx.op.unary.f32(i32 22, float %6033)  ; Frc(value)
  %6070 = call float @dx.op.unary.f32(i32 22, float %6065)  ; Frc(value)
  %6071 = call float @dx.op.unary.f32(i32 22, float %6064)  ; Frc(value)
  %6072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6070, float %6071, float %6068, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6073 = extractvalue %dx.types.ResRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.ResRet.f32 %6072, 1
  %6075 = extractvalue %dx.types.ResRet.f32 %6072, 2
  %6076 = extractvalue %dx.types.ResRet.f32 %6072, 3
  %6077 = fcmp fast ogt float %6069, 0.000000e+00
  br i1 %6077, label %6078, label %6099, !dx.controlflow.hints !98

; <label>:6078                                    ; preds = %6061
  %6079 = fadd fast float %6068, 1.000000e+00
  %6080 = call float @dx.op.unary.f32(i32 22, float %6042)  ; Frc(value)
  %6081 = call float @dx.op.unary.f32(i32 22, float %6043)  ; Frc(value)
  %6082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6080, float %6081, float %6079, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6083 = extractvalue %dx.types.ResRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.ResRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.ResRet.f32 %6082, 2
  %6086 = extractvalue %dx.types.ResRet.f32 %6082, 3
  %6087 = fsub fast float %6083, %6073
  %6088 = fsub fast float %6084, %6074
  %6089 = fsub fast float %6085, %6075
  %6090 = fsub fast float %6086, %6076
  %6091 = fmul fast float %6087, %6069
  %6092 = fmul fast float %6088, %6069
  %6093 = fmul fast float %6089, %6069
  %6094 = fmul fast float %6090, %6069
  %6095 = fadd fast float %6091, %6073
  %6096 = fadd fast float %6092, %6074
  %6097 = fadd fast float %6093, %6075
  %6098 = fadd fast float %6094, %6076
  br label %6099

; <label>:6099                                    ; preds = %6078, %6061
  %6100 = phi float [ %6095, %6078 ], [ %6073, %6061 ]
  %6101 = phi float [ %6096, %6078 ], [ %6074, %6061 ]
  %6102 = phi float [ %6097, %6078 ], [ %6075, %6061 ]
  %6103 = phi float [ %6098, %6078 ], [ %6076, %6061 ]
  %6104 = fadd fast float %6100, -5.000000e-01
  %6105 = fadd fast float %6102, -5.000000e-01
  %6106 = fmul fast float %6104, 0xBFD5555560000000
  %6107 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6105, float %6106)  ; FMad(a,b,c)
  %6108 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6101, float 0.000000e+00)  ; FMad(a,b,c)
  %6109 = fadd fast float %6108, %6103
  %6110 = fmul fast float %6104, -7.500000e-01
  %6111 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6105, float %6110)  ; FMad(a,b,c)
  %6112 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6101, float 0.000000e+00)  ; FMad(a,b,c)
  %6113 = fadd fast float %6112, %6103
  %6114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.f32 %6114, 0
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.CBufRet.f32 %6116, 2
  %6120 = extractvalue %dx.types.CBufRet.f32 %6116, 3
  %6121 = fsub fast float %6117, %6107
  %6122 = fsub fast float %6118, %6109
  %6123 = fsub fast float %6119, %6111
  %6124 = fsub fast float %6120, %6113
  %6125 = fmul fast float %6121, %6115
  %6126 = fmul fast float %6122, %6115
  %6127 = fmul fast float %6123, %6115
  %6128 = fmul fast float %6124, %6115
  %6129 = fadd fast float %6125, %6107
  %6130 = fadd fast float %6126, %6109
  %6131 = fadd fast float %6127, %6111
  %6132 = fadd fast float %6128, %6113
  %6133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6134 = extractvalue %dx.types.ResRet.i32 %6133, 0
  %6135 = and i32 %6134, 536870911
  %6136 = uitofp i32 %6135 to float
  %6137 = fmul fast float %6136, %5983
  %6138 = fmul fast float %6136, %5987
  %6139 = fptoui float %6137 to i32
  %6140 = fptoui float %6138 to i32
  %6141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6142 = extractvalue %dx.types.ResRet.i32 %6141, 0
  %6143 = and i32 %6142, 31
  %6144 = lshr i32 %6139, %6143
  %6145 = lshr i32 %6140, %6143
  %6146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6147 = extractvalue %dx.types.ResRet.i32 %6146, 0
  %6148 = and i32 %6147, 31
  %6149 = shl i32 1, %6148
  %6150 = call i32 @dx.op.binary.i32(i32 40, i32 %6149, i32 4)  ; UMin(a,b)
  %6151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6152 = extractvalue %dx.types.ResRet.i32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.i32 %6151, 1
  %6154 = icmp eq i32 %6150, 0
  br i1 %6154, label %6196, label %6155

; <label>:6155                                    ; preds = %6099
  br label %6156

; <label>:6156                                    ; preds = %6184, %6155
  %6157 = phi i32 [ %6187, %6184 ], [ 0, %6155 ]
  %6158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6159 = extractvalue %dx.types.ResRet.i32 %6158, 0
  %6160 = lshr i32 %6159, 16
  %6161 = and i32 %6160, 31
  %6162 = shl i32 %6145, %6161
  %6163 = add i32 %6162, %6144
  %6164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6165 = extractvalue %dx.types.ResRet.i32 %6164, 0
  %6166 = and i32 %6165, 31
  %6167 = shl i32 %6163, %6166
  %6168 = add i32 %6167, %6157
  %6169 = shl i32 %6168, 2
  %6170 = add i32 %6169, 32
  %6171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6170, i32 undef)  ; BufferLoad(srv,index,wot)
  %6172 = extractvalue %dx.types.ResRet.i32 %6171, 0
  %6173 = icmp slt i32 %6172, 0
  %6174 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6157
  %6175 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6157
  %6176 = bitcast float* %6174 to i32*
  %6177 = bitcast float* %6175 to i32*
  br i1 %6173, label %6178, label %6184

; <label>:6178                                    ; preds = %6156
  %6179 = and i32 %6172, 1073741823
  %6180 = add nuw nsw i32 %6179, 20
  %6181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6180, i32 undef)  ; BufferLoad(srv,index,wot)
  %6182 = extractvalue %dx.types.ResRet.i32 %6181, 0
  %6183 = extractvalue %dx.types.ResRet.i32 %6181, 1
  br label %6184

; <label>:6184                                    ; preds = %6178, %6156
  %6185 = phi i32 [ %6182, %6178 ], [ %6152, %6156 ]
  %6186 = phi i32 [ %6183, %6178 ], [ %6153, %6156 ]
  store i32 %6185, i32* %6176, align 4
  store i32 %6186, i32* %6177, align 4
  %6187 = add nuw i32 %6157, 1
  %6188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.i32 %6188, 2
  %6190 = icmp eq i32 %6189, 0
  %6191 = icmp ugt i32 %6172, -1073741825
  %6192 = and i1 %6191, %6190
  %6193 = icmp ult i32 %6187, %6150
  %6194 = and i1 %6192, %6193
  br i1 %6194, label %6156, label %6195

; <label>:6195                                    ; preds = %6184
  br label %6196

; <label>:6196                                    ; preds = %6195, %6099
  %6197 = phi i32 [ 0, %6099 ], [ %6187, %6195 ]
  %6198 = extractvalue %dx.types.CBufRet.f32 %5961, 2
  %6199 = fptoui float %6198 to i32
  %6200 = icmp eq i32 %6199, 0
  br i1 %6200, label %6252, label %6201

; <label>:6201                                    ; preds = %6196
  br label %6202

; <label>:6202                                    ; preds = %6247, %6201
  %6203 = phi i32 [ %6248, %6247 ], [ %6197, %6201 ]
  %6204 = phi i32 [ %6249, %6247 ], [ 0, %6201 ]
  %6205 = lshr i32 %6204, 2
  %6206 = and i32 %6204, 3
  %6207 = add nuw nsw i32 %6205, 83
  %6208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6207)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.i32 %6208, 0
  %6210 = extractvalue %dx.types.CBufRet.i32 %6208, 1
  %6211 = extractvalue %dx.types.CBufRet.i32 %6208, 2
  %6212 = extractvalue %dx.types.CBufRet.i32 %6208, 3
  %6213 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6209, i32* %6213, align 4
  %6214 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6210, i32* %6214, align 4
  %6215 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6211, i32* %6215, align 4
  %6216 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6212, i32* %6216, align 4
  %6217 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6206
  %6218 = load i32, i32* %6217, align 4, !tbaa !99, !noalias !103
  %6219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6220 = extractvalue %dx.types.ResRet.i32 %6219, 0
  %6221 = lshr i32 %6220, 16
  %6222 = and i32 %6221, 31
  %6223 = shl i32 %6145, %6222
  %6224 = add i32 %6223, %6144
  %6225 = shl i32 %6224, 2
  %6226 = add i32 %6225, %6218
  %6227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6226, i32 undef)  ; BufferLoad(srv,index,wot)
  %6228 = extractvalue %dx.types.ResRet.i32 %6227, 0
  %6229 = icmp eq i32 %6228, 0
  br i1 %6229, label %6247, label %6230

; <label>:6230                                    ; preds = %6202
  %6231 = icmp slt i32 %6228, 0
  %6232 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6203
  %6233 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6203
  %6234 = bitcast float* %6232 to i32*
  %6235 = bitcast float* %6233 to i32*
  br i1 %6231, label %6236, label %6243

; <label>:6236                                    ; preds = %6230
  %6237 = and i32 %6228, 1073741823
  %6238 = add i32 %6218, 20
  %6239 = add i32 %6238, %6237
  %6240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.i32 %6240, 0
  %6242 = extractvalue %dx.types.ResRet.i32 %6240, 1
  br label %6243

; <label>:6243                                    ; preds = %6236, %6230
  %6244 = phi i32 [ %6241, %6236 ], [ %6152, %6230 ]
  %6245 = phi i32 [ %6242, %6236 ], [ %6153, %6230 ]
  store i32 %6244, i32* %6234, align 4
  store i32 %6245, i32* %6235, align 4
  %6246 = add i32 %6203, 1
  br label %6247

; <label>:6247                                    ; preds = %6243, %6202
  %6248 = phi i32 [ %6203, %6202 ], [ %6246, %6243 ]
  %6249 = add nuw i32 %6204, 1
  %6250 = icmp eq i32 %6249, %6199
  br i1 %6250, label %6251, label %6202

; <label>:6251                                    ; preds = %6247
  br label %6252

; <label>:6252                                    ; preds = %6251, %6196
  %6253 = phi i32 [ %6197, %6196 ], [ %6248, %6251 ]
  %6254 = icmp eq i32 %6253, 1
  %6255 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6256 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6254, label %6257, label %6260

; <label>:6257                                    ; preds = %6252
  %6258 = load float, float* %6255, align 4
  %6259 = load float, float* %6256, align 4
  br label %6287

; <label>:6260                                    ; preds = %6252
  %6261 = load float, float* %6255, align 4
  %6262 = load float, float* %6256, align 4
  %6263 = fdiv fast float 1.000000e+00, %6262
  %6264 = fsub fast float %6261, %6263
  %6265 = icmp ugt i32 %6253, 1
  br i1 %6265, label %6266, label %6282

; <label>:6266                                    ; preds = %6260
  br label %6267

; <label>:6267                                    ; preds = %6267, %6266
  %6268 = phi float [ %6277, %6267 ], [ %6264, %6266 ]
  %6269 = phi float [ %6278, %6267 ], [ %6261, %6266 ]
  %6270 = phi i32 [ %6279, %6267 ], [ 1, %6266 ]
  %6271 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6270
  %6272 = load float, float* %6271, align 4
  %6273 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6270
  %6274 = load float, float* %6273, align 4
  %6275 = fdiv fast float 1.000000e+00, %6274
  %6276 = fsub fast float %6272, %6275
  %6277 = call float @dx.op.binary.f32(i32 36, float %6268, float %6276)  ; FMin(a,b)
  %6278 = call float @dx.op.binary.f32(i32 35, float %6269, float %6272)  ; FMax(a,b)
  %6279 = add nuw i32 %6270, 1
  %6280 = icmp eq i32 %6279, %6253
  br i1 %6280, label %6281, label %6267

; <label>:6281                                    ; preds = %6267
  br label %6282

; <label>:6282                                    ; preds = %6281, %6260
  %6283 = phi float [ %6264, %6260 ], [ %6277, %6281 ]
  %6284 = phi float [ %6261, %6260 ], [ %6278, %6281 ]
  %6285 = fsub fast float %6284, %6283
  %6286 = fdiv fast float 1.000000e+00, %6285
  br label %6287

; <label>:6287                                    ; preds = %6282, %6257
  %6288 = phi float [ %6258, %6257 ], [ %6284, %6282 ]
  %6289 = phi float [ %6259, %6257 ], [ %6286, %6282 ]
  %6290 = fadd fast float %5991, %6288
  %6291 = fmul fast float %6290, %6289
  %6292 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  %6293 = fmul fast float %6292, 2.000000e+00
  %6294 = fsub fast float 1.000000e+00, %6293
  %6295 = fmul fast float %6129, %6129
  %6296 = fsub fast float %6130, %6295
  %6297 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6296)  ; FMax(a,b)
  %6298 = fdiv fast float 1.000000e+00, %6297
  %6299 = fmul fast float %6130, %6129
  %6300 = fsub fast float %6131, %6299
  %6301 = fsub fast float %6294, %6129
  %6302 = fmul fast float %6294, %6294
  %6303 = fsub fast float %6302, %6130
  %6304 = fmul fast float %6298, %6300
  %6305 = fmul fast float %6304, %6301
  %6306 = fsub fast float %6303, %6305
  %6307 = fmul fast float %6130, %6130
  %6308 = fsub fast float %6132, %6307
  %6309 = fmul fast float %6300, %6300
  %6310 = fmul fast float %6309, %6298
  %6311 = fsub fast float %6308, %6310
  %6312 = fdiv fast float %6306, %6311
  %6313 = fmul fast float %6312, %6300
  %6314 = fsub fast float %6301, %6313
  %6315 = fmul fast float %6314, %6298
  %6316 = fmul fast float %6315, %6129
  %6317 = fsub fast float 1.000000e+00, %6316
  %6318 = fmul fast float %6312, %6130
  %6319 = fsub fast float %6317, %6318
  %6320 = fmul fast float %6315, %6315
  %6321 = fmul fast float %6312, 4.000000e+00
  %6322 = fmul fast float %6321, %6319
  %6323 = fsub fast float %6320, %6322
  %6324 = call float @dx.op.unary.f32(i32 24, float %6323)  ; Sqrt(value)
  %6325 = fcmp fast oge float %6315, 0.000000e+00
  %6326 = fsub fast float -0.000000e+00, %6324
  %6327 = select i1 %6325, float %6326, float %6324
  %6328 = fsub fast float %6327, %6315
  %6329 = fdiv fast float %6328, %6312
  %6330 = fdiv fast float %6319, %6328
  %6331 = fmul fast float %6329, 5.000000e-01
  %6332 = fmul fast float %6330, 2.000000e+00
  %6333 = select i1 %6325, float %6331, float %6332
  %6334 = select i1 %6325, float %6332, float %6331
  %6335 = call float @dx.op.binary.f32(i32 35, float %6333, float %6334)  ; FMax(a,b)
  %6336 = call float @dx.op.binary.f32(i32 36, float %6333, float %6334)  ; FMin(a,b)
  %6337 = fcmp fast ogt float %6294, %6335
  %6338 = fsub fast float %6294, %6336
  %6339 = fsub fast float %6294, %6335
  %6340 = fsub fast float %6335, %6336
  %6341 = select i1 %6337, float %6339, float %6340
  %6342 = fmul float %6338, %6341
  %6343 = select i1 %6337, float %6336, float %6294
  %6344 = fcmp fast ogt float %6294, %6336
  %6345 = fmul fast float %6343, %6335
  %6346 = fadd fast float %6343, %6335
  %6347 = fmul fast float %6346, %6129
  %6348 = fadd fast float %6345, %6130
  %6349 = fsub fast float %6348, %6347
  %6350 = fdiv fast float %6349, %6342
  %6351 = select i1 %6344, float %6350, float 0.000000e+00
  %6352 = fsub fast float 1.000000e+00, %6351
  %6353 = select i1 %6337, float %6352, float %6351
  %6354 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6114, 3
  %6356 = fmul fast float %6355, %6354
  %6357 = fsub fast float 1.000000e+00, %6356
  br label %6358

; <label>:6358                                    ; preds = %6287, %5999, %5964, %5960, %5926
  %6359 = phi float [ 1.000000e+00, %5926 ], [ %6357, %6287 ], [ 1.000000e+00, %5964 ], [ 1.000000e+00, %5999 ], [ 1.000000e+00, %5960 ]
  %6360 = fcmp fast ogt float %5956, 0.000000e+00
  br i1 %6360, label %6361, label %6367, !dx.controlflow.hints !112

; <label>:6361                                    ; preds = %6358
  %6362 = fadd fast float %5869, %5843
  %6363 = call float @dx.op.binary.f32(i32 35, float %6362, float 0.000000e+00)  ; FMax(a,b)
  %6364 = fadd fast float %6363, 0x3F10000000000000
  %6365 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5858, float %5859, float undef, float undef, i32 0, i32 0, i32 undef, float %6364)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6366 = extractvalue %dx.types.ResRet.f32 %6365, 0
  br label %6367

; <label>:6367                                    ; preds = %6361, %6358
  %6368 = phi float [ %6366, %6361 ], [ 1.000000e+00, %6358 ]
  %6369 = fcmp fast ogt float %5954, 0.000000e+00
  br i1 %6369, label %6370, label %6376, !dx.controlflow.hints !113

; <label>:6370                                    ; preds = %6367
  %6371 = fadd fast float %5899, %5843
  %6372 = call float @dx.op.binary.f32(i32 35, float %6371, float 0.000000e+00)  ; FMax(a,b)
  %6373 = fadd fast float %6372, 0x3F10000000000000
  %6374 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5850, float %5851, float undef, float undef, i32 0, i32 0, i32 undef, float %6373)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6375 = extractvalue %dx.types.ResRet.f32 %6374, 0
  br label %6376

; <label>:6376                                    ; preds = %6370, %6367
  %6377 = phi float [ %6375, %6370 ], [ 1.000000e+00, %6367 ]
  %6378 = fcmp fast ogt float %5953, 0.000000e+00
  br i1 %6378, label %6379, label %6386, !dx.controlflow.hints !114

; <label>:6379                                    ; preds = %6376
  %6380 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %6381 = fadd fast float %6380, %5843
  %6382 = call float @dx.op.binary.f32(i32 35, float %6381, float 0.000000e+00)  ; FMax(a,b)
  %6383 = fadd fast float %6382, 0x3F10000000000000
  %6384 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5835, float %5839, float undef, float undef, i32 0, i32 0, i32 undef, float %6383)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6385 = extractvalue %dx.types.ResRet.f32 %6384, 0
  br label %6386

; <label>:6386                                    ; preds = %6379, %6376
  %6387 = phi float [ %6385, %6379 ], [ 1.000000e+00, %6376 ]
  %6388 = fsub fast float %6368, %6359
  %6389 = fmul fast float %6388, %5897
  %6390 = fadd fast float %6389, %6359
  %6391 = fsub fast float %6377, %6390
  %6392 = fmul fast float %6391, %5927
  %6393 = fadd fast float %6392, %6390
  %6394 = fsub fast float %6387, %6393
  %6395 = fmul fast float %6394, %5953
  %6396 = fadd fast float %6395, %6393
  %6397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6397, 2
  %6399 = fcmp fast ogt float %6398, 0.000000e+00
  br i1 %6399, label %6400, label %6440, !dx.controlflow.hints !115

; <label>:6400                                    ; preds = %6386
  %6401 = fcmp fast ugt float %6398, 0.000000e+00
  br i1 %6401, label %6402, label %6437

; <label>:6402                                    ; preds = %6400
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6411 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6412 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6413 = extractvalue %dx.types.CBufRet.f32 %6397, 0
  %6414 = extractvalue %dx.types.CBufRet.f32 %6397, 1
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 0
  %6417 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %6418 = extractvalue %dx.types.CBufRet.f32 %6415, 2
  %6419 = fadd fast float %6416, %5812
  %6420 = fadd fast float %6417, %5813
  %6421 = fadd fast float %6418, %5814
  %6422 = fmul fast float %6419, %6404
  %6423 = call float @dx.op.tertiary.f32(i32 46, float %6405, float %6420, float %6422)  ; FMad(a,b,c)
  %6424 = call float @dx.op.tertiary.f32(i32 46, float %6406, float %6421, float %6423)  ; FMad(a,b,c)
  %6425 = fadd fast float %6424, %6407
  %6426 = fmul fast float %6419, %6409
  %6427 = call float @dx.op.tertiary.f32(i32 46, float %6410, float %6420, float %6426)  ; FMad(a,b,c)
  %6428 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %6421, float %6427)  ; FMad(a,b,c)
  %6429 = fadd fast float %6428, %6412
  %6430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6425, float %6429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6431 = extractvalue %dx.types.ResRet.f32 %6430, 0
  %6432 = fmul fast float %6431, %6414
  %6433 = fadd fast float %6432, %6413
  %6434 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  %6435 = fmul fast float %6434, %6398
  %6436 = fsub fast float 1.000000e+00, %6435
  br label %6437

; <label>:6437                                    ; preds = %6402, %6400
  %6438 = phi float [ %6436, %6402 ], [ 1.000000e+00, %6400 ]
  %6439 = fmul fast float %6438, %6396
  br label %6440

; <label>:6440                                    ; preds = %6437, %6386, %5792
  %6441 = phi float [ 1.000000e+00, %5792 ], [ %6439, %6437 ], [ %6396, %6386 ]
  %6442 = call float @dx.op.binary.f32(i32 36, float %6441, float %6441)  ; FMin(a,b)
  %6443 = call float @dx.op.binary.f32(i32 36, float %6441, float %6442)  ; FMin(a,b)
  %6444 = fcmp fast ogt float %6443, 0.000000e+00
  br i1 %6444, label %6445, label %6605, !dx.controlflow.hints !116

; <label>:6445                                    ; preds = %6440
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6449 = extractvalue %dx.types.CBufRet.f32 %6446, 2
  %6450 = extractvalue %dx.types.CBufRet.f32 %6446, 3
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.CBufRet.f32 %6451, 1
  %6454 = extractvalue %dx.types.CBufRet.f32 %6451, 2
  %6455 = extractvalue %dx.types.CBufRet.f32 %6451, 3
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 0
  %6458 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6459 = extractvalue %dx.types.CBufRet.f32 %6456, 2
  %6460 = extractvalue %dx.types.CBufRet.f32 %6456, 3
  %6461 = fmul fast float %6447, %5812
  %6462 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %6448, float %6461)  ; FMad(a,b,c)
  %6463 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %6449, float %6462)  ; FMad(a,b,c)
  %6464 = fadd fast float %6463, %6450
  %6465 = fmul fast float %6452, %5812
  %6466 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %6453, float %6465)  ; FMad(a,b,c)
  %6467 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %6454, float %6466)  ; FMad(a,b,c)
  %6468 = fadd fast float %6467, %6455
  %6469 = fmul fast float %6457, %5812
  %6470 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %6458, float %6469)  ; FMad(a,b,c)
  %6471 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %6459, float %6470)  ; FMad(a,b,c)
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.CBufRet.f32 %6472, 1
  %6475 = extractvalue %dx.types.CBufRet.f32 %6472, 3
  %6476 = fmul fast float %6475, %6464
  %6477 = fmul fast float %6475, %6468
  %6478 = fadd fast float %6476, %6473
  %6479 = fadd fast float %6477, %6474
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 0
  %6482 = extractvalue %dx.types.CBufRet.f32 %6480, 1
  %6483 = fsub fast float %6478, %6481
  %6484 = fsub fast float %6479, %6482
  %6485 = fcmp fast olt float %6483, 0.000000e+00
  %6486 = fcmp fast olt float %6484, 0.000000e+00
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 0
  %6489 = extractvalue %dx.types.CBufRet.f32 %6487, 1
  %6490 = extractvalue %dx.types.CBufRet.f32 %6487, 2
  %6491 = extractvalue %dx.types.CBufRet.f32 %6487, 3
  %6492 = select i1 %6485, float %6488, float %6490
  %6493 = select i1 %6486, float %6489, float %6491
  %6494 = fmul fast float %6492, %6483
  %6495 = fmul fast float %6493, %6484
  %6496 = call float @dx.op.unary.f32(i32 6, float %6494)  ; FAbs(value)
  %6497 = call float @dx.op.unary.f32(i32 6, float %6495)  ; FAbs(value)
  %6498 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %6499 = call float @dx.op.binary.f32(i32 35, float %6496, float %6497)  ; FMax(a,b)
  %6500 = fsub fast float %6498, %6499
  %6501 = call float @dx.op.unary.f32(i32 7, float %6500)  ; Saturate(value)
  %6502 = fcmp fast ogt float %6501, 0.000000e+00
  br i1 %6502, label %6503, label %6544, !dx.controlflow.hints !117

; <label>:6503                                    ; preds = %6445
  %6504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6478, float %6479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6505 = extractvalue %dx.types.ResRet.f32 %6504, 1
  %6506 = fcmp fast ogt float %6505, 0.000000e+00
  br i1 %6506, label %6507, label %6539

; <label>:6507                                    ; preds = %6503
  %6508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6478, float %6479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6509 = extractvalue %dx.types.ResRet.f32 %6508, 0
  %6510 = extractvalue %dx.types.ResRet.f32 %6508, 1
  %6511 = extractvalue %dx.types.ResRet.f32 %6508, 2
  %6512 = extractvalue %dx.types.ResRet.f32 %6508, 3
  %6513 = fsub fast float 1.000000e+00, %6460
  %6514 = fsub fast float %6513, %6471
  %6515 = fmul fast float %6514, 0x400921FB60000000
  %6516 = fadd fast float %6515, 0x3FF921FB60000000
  %6517 = call float @dx.op.unary.f32(i32 13, float %6516)  ; Sin(value)
  %6518 = fadd fast float %6517, -1.000000e+00
  %6519 = fmul fast float %6518, 0x3FD45F3060000000
  %6520 = fmul fast float %6514, 0x401921FB60000000
  %6521 = fadd fast float %6520, 0x400921FB60000000
  %6522 = call float @dx.op.unary.f32(i32 13, float %6521)  ; Sin(value)
  %6523 = fadd fast float %6522, 0x3E7777A5C0000000
  %6524 = fmul fast float %6523, 0x3FC45F3060000000
  %6525 = fmul fast float %6514, 0x4022D97C80000000
  %6526 = fadd fast float %6525, 0x4012D97C80000000
  %6527 = call float @dx.op.unary.f32(i32 13, float %6526)  ; Sin(value)
  %6528 = fadd fast float %6527, 1.000000e+00
  %6529 = fmul fast float %6528, 0x3FBB2995E0000000
  %6530 = fmul fast float %6514, 0x402921FB60000000
  %6531 = fadd fast float %6530, 0x401921FB60000000
  %6532 = call float @dx.op.unary.f32(i32 13, float %6531)  ; Sin(value)
  %6533 = fadd fast float %6532, 0xBE8777A5C0000000
  %6534 = fmul fast float %6533, 0x3FB45F3060000000
  %6535 = call float @dx.op.dot4.f32(i32 56, float %6509, float %6510, float %6511, float %6512, float %6519, float %6524, float %6529, float %6534)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6536 = fmul fast float %6535, 0xBFF7154760000000
  %6537 = call float @dx.op.unary.f32(i32 21, float %6536)  ; Exp(value)
  %6538 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  br label %6539

; <label>:6539                                    ; preds = %6507, %6503
  %6540 = phi float [ %6538, %6507 ], [ 1.000000e+00, %6503 ]
  %6541 = fadd fast float %6540, -1.000000e+00
  %6542 = fmul fast float %6541, %6501
  %6543 = fadd fast float %6542, 1.000000e+00
  br label %6544

; <label>:6544                                    ; preds = %6539, %6445
  %6545 = phi float [ %6543, %6539 ], [ 1.000000e+00, %6445 ]
  %6546 = fmul fast float %6545, %6441
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 0
  %6549 = extractvalue %dx.types.CBufRet.f32 %6547, 1
  %6550 = extractvalue %dx.types.CBufRet.f32 %6547, 2
  %6551 = fadd fast float %6548, %161
  %6552 = fadd fast float %6549, %162
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 1
  %6555 = fsub fast float -0.000000e+00, %6551
  %6556 = fsub fast float -0.000000e+00, %6552
  %6557 = fsub fast float %5413, %6550
  %6558 = fadd fast float %6557, %6554
  %6559 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6555, float %6556, float %6558)  ; Dot3(ax,ay,az,bx,by,bz)
  %6560 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5793, float %5794, float %5795)  ; Dot3(ax,ay,az,bx,by,bz)
  %6561 = fdiv fast float 1.000000e+00, %6560
  %6562 = fmul fast float %6561, %6559
  %6563 = fmul fast float %5793, %6562
  %6564 = fmul fast float %5794, %6562
  %6565 = fadd fast float %6563, %6551
  %6566 = fadd fast float %6564, %6552
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6569 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6570 = fsub fast float %6565, %6568
  %6571 = fsub fast float %6566, %6569
  %6572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.f32 %6572, 2
  %6574 = extractvalue %dx.types.CBufRet.f32 %6572, 3
  %6575 = fmul fast float %6570, %6573
  %6576 = fmul fast float %6571, %6574
  %6577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6578 = extractvalue %dx.types.CBufRet.i32 %6577, 3
  %6579 = icmp eq i32 %6578, 0
  br i1 %6579, label %6585, label %6580

; <label>:6580                                    ; preds = %6544
  %6581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6575, float %6576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6582 = extractvalue %dx.types.ResRet.f32 %6581, 0
  %6583 = extractvalue %dx.types.ResRet.f32 %6581, 1
  %6584 = extractvalue %dx.types.ResRet.f32 %6581, 2
  br label %6590

; <label>:6585                                    ; preds = %6544
  %6586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6575, float %6576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = extractvalue %dx.types.ResRet.f32 %6586, 1
  %6589 = extractvalue %dx.types.ResRet.f32 %6586, 2
  br label %6590

; <label>:6590                                    ; preds = %6585, %6580
  %6591 = phi float [ %6582, %6580 ], [ %6587, %6585 ]
  %6592 = phi float [ %6583, %6580 ], [ %6588, %6585 ]
  %6593 = phi float [ %6584, %6580 ], [ %6589, %6585 ]
  %6594 = extractvalue %dx.types.CBufRet.f32 %6553, 2
  %6595 = fmul fast float %6594, %6591
  %6596 = extractvalue %dx.types.CBufRet.f32 %6553, 0
  %6597 = fsub fast float %6562, %6596
  %6598 = fsub fast float %6597, %6595
  %6599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6598)  ; FMax(a,b)
  %6600 = fmul fast float %6599, %6592
  %6601 = call float @dx.op.binary.f32(i32 36, float %6593, float %6600)  ; FMin(a,b)
  %6602 = fmul fast float %6601, 0xBFF7154760000000
  %6603 = call float @dx.op.unary.f32(i32 21, float %6602)  ; Exp(value)
  %6604 = fmul fast float %6546, %6603
  br label %6605

; <label>:6605                                    ; preds = %6590, %6440
  %6606 = phi float [ %6604, %6590 ], [ %6441, %6440 ]
  %6607 = call float @dx.op.binary.f32(i32 36, float %6606, float %6606)  ; FMin(a,b)
  %6608 = call float @dx.op.binary.f32(i32 36, float %6606, float %6607)  ; FMin(a,b)
  %6609 = fcmp fast ogt float %6608, 0.000000e+00
  br i1 %6609, label %6610, label %6915, !dx.controlflow.hints !118

; <label>:6610                                    ; preds = %6605
  %6611 = fmul fast float %6606, %5804
  %6612 = fmul fast float %6606, %5805
  %6613 = fmul fast float %6606, %5806
  %6614 = fsub fast float %163, %5201
  %6615 = fcmp fast ogt float %6614, 0.000000e+00
  %6616 = fmul fast float %5793, 5.120000e+02
  %6617 = fmul fast float %5794, 5.120000e+02
  %6618 = fmul fast float %5795, 5.120000e+02
  %6619 = fadd fast float %6618, %163
  %6620 = fsub fast float %5201, %6619
  %6621 = fmul fast float %6620, 2.000000e+00
  %6622 = fadd fast float %6621, %6619
  %6623 = select i1 %6615, float %6622, float %6619
  %6624 = fsub fast float %6623, %163
  %6625 = call float @dx.op.dot3.f32(i32 55, float %6616, float %6617, float %6624, float %6616, float %6617, float %6624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6626 = call float @dx.op.unary.f32(i32 25, float %6625)  ; Rsqrt(value)
  %6627 = fmul fast float %6626, %6616
  %6628 = fmul fast float %6626, %6617
  %6629 = fmul fast float %6626, %6624
  %6630 = fsub fast float %5201, %163
  %6631 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6630)  ; Dot3(ax,ay,az,bx,by,bz)
  %6632 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6627, float %6628, float %6629)  ; Dot3(ax,ay,az,bx,by,bz)
  %6633 = fdiv fast float 1.000000e+00, %6632
  %6634 = fmul fast float %6633, %6631
  %6635 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6614, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6636 = fcmp fast ogt float %6635, 0.000000e+00
  %6637 = fcmp fast olt float %6635, 0.000000e+00
  %6638 = zext i1 %6636 to i32
  %6639 = zext i1 %6637 to i32
  %6640 = sub nsw i32 %6638, %6639
  %6641 = sitofp i32 %6640 to float
  %6642 = fsub fast float %6623, %5201
  %6643 = call float @dx.op.dot3.f32(i32 55, float %6616, float %6617, float %6642, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6644 = fcmp fast ogt float %6643, 0.000000e+00
  %6645 = fcmp fast olt float %6643, 0.000000e+00
  %6646 = zext i1 %6644 to i32
  %6647 = zext i1 %6645 to i32
  %6648 = sub nsw i32 %6646, %6647
  %6649 = sitofp i32 %6648 to float
  %6650 = fcmp fast une float %6641, %6649
  br i1 %6650, label %6651, label %6661

; <label>:6651                                    ; preds = %6610
  %6652 = fmul fast float %6634, %6629
  %6653 = fmul fast float %6634, %6628
  %6654 = fmul fast float %6634, %6627
  %6655 = fmul fast float %6654, %6654
  %6656 = fmul fast float %6653, %6653
  %6657 = fadd fast float %6655, %6656
  %6658 = fmul fast float %6652, %6652
  %6659 = fadd fast float %6657, %6658
  %6660 = call float @dx.op.unary.f32(i32 24, float %6659)  ; Sqrt(value)
  br label %6671

; <label>:6661                                    ; preds = %6610
  %6662 = icmp slt i32 %6640, 0
  br i1 %6662, label %6663, label %6671

; <label>:6663                                    ; preds = %6661
  %6664 = fsub fast float %163, %6623
  %6665 = fmul fast float %6616, %6616
  %6666 = fmul fast float %6617, %6617
  %6667 = fadd fast float %6665, %6666
  %6668 = fmul fast float %6664, %6664
  %6669 = fadd fast float %6667, %6668
  %6670 = call float @dx.op.unary.f32(i32 24, float %6669)  ; Sqrt(value)
  br label %6671

; <label>:6671                                    ; preds = %6663, %6661, %6651
  %6672 = phi float [ %6660, %6651 ], [ %6670, %6663 ], [ 0.000000e+00, %6661 ]
  %6673 = fsub fast float -0.000000e+00, %6672
  %6674 = select i1 %6615, float -0.000000e+00, float %6673
  %6675 = fmul fast float %5202, 0x3FF7154760000000
  %6676 = fmul fast float %6675, %6674
  %6677 = fmul fast float %5203, 0x3FF7154760000000
  %6678 = fmul fast float %6677, %6674
  %6679 = fmul fast float %5204, 0x3FF7154760000000
  %6680 = fmul fast float %6679, %6674
  %6681 = call float @dx.op.unary.f32(i32 21, float %6676)  ; Exp(value)
  %6682 = call float @dx.op.unary.f32(i32 21, float %6678)  ; Exp(value)
  %6683 = call float @dx.op.unary.f32(i32 21, float %6680)  ; Exp(value)
  %6684 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6685 = call float @dx.op.unary.f32(i32 7, float %6682)  ; Saturate(value)
  %6686 = call float @dx.op.unary.f32(i32 7, float %6683)  ; Saturate(value)
  %6687 = fmul fast float %6611, %6684
  %6688 = fmul fast float %6612, %6685
  %6689 = fmul fast float %6613, %6686
  %6690 = fsub fast float %5793, %5401
  %6691 = fsub fast float %5794, %5400
  %6692 = fsub fast float %5795, %5399
  %6693 = call float @dx.op.dot3.f32(i32 55, float %6690, float %6691, float %6692, float %6690, float %6691, float %6692)  ; Dot3(ax,ay,az,bx,by,bz)
  %6694 = call float @dx.op.unary.f32(i32 25, float %6693)  ; Rsqrt(value)
  %6695 = fmul fast float %6694, %6690
  %6696 = fmul fast float %6694, %6691
  %6697 = fmul fast float %6694, %6692
  %6698 = call float @dx.op.dot3.f32(i32 55, float %5793, float %5794, float %5795, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %6699 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5397, float %5396, float %6695, float %6696, float %6697)  ; Dot3(ax,ay,az,bx,by,bz)
  %6700 = call float @dx.op.unary.f32(i32 7, float %6698)  ; Saturate(value)
  %6701 = fmul fast float %6700, %6700
  %6702 = fmul fast float %6701, %5429
  %6703 = call float @dx.op.unary.f32(i32 7, float %6702)  ; Saturate(value)
  %6704 = fmul fast float %6703, %6700
  %6705 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %6695, float %6696, float %6697)  ; Dot3(ax,ay,az,bx,by,bz)
  %6706 = fmul fast float %6705, %6705
  %6707 = call float @dx.op.unary.f32(i32 6, float %6698)  ; FAbs(value)
  %6708 = fsub fast float 1.000000e+00, %5411
  %6709 = call float @dx.op.binary.f32(i32 35, float %6708, float 0x3F847AE140000000)  ; FMax(a,b)
  %6710 = fmul fast float %6709, %6709
  %6711 = fmul fast float %6710, %6710
  %6712 = fsub fast float 1.000000e+00, %6711
  %6713 = fmul fast float %5416, %5416
  %6714 = fmul fast float %6713, %6712
  %6715 = fadd fast float %6714, %6711
  %6716 = bitcast float %6715 to i32
  %6717 = ashr i32 %6716, 1
  %6718 = add nsw i32 %6717, 532487669
  %6719 = bitcast i32 %6718 to float
  %6720 = fadd fast float %6719, %5416
  %6721 = fmul fast float %6711, %6706
  %6722 = fsub fast float 1.000000e+00, %6706
  %6723 = fadd fast float %6722, %6721
  %6724 = fmul fast float %6707, %6707
  %6725 = fmul fast float %6724, %6712
  %6726 = fadd fast float %6725, %6711
  %6727 = bitcast float %6726 to i32
  %6728 = ashr i32 %6727, 1
  %6729 = add nsw i32 %6728, 532487669
  %6730 = bitcast i32 %6729 to float
  %6731 = fadd fast float %6730, %6707
  %6732 = fmul fast float %6723, %6723
  %6733 = fmul fast float %6732, %6720
  %6734 = fmul fast float %6733, %6731
  %6735 = fdiv fast float 0x3FF0A00000000000, %6734
  %6736 = fmul fast float %6735, %6711
  %6737 = call float @dx.op.unary.f32(i32 6, float %6699)  ; FAbs(value)
  %6738 = fsub fast float 1.000000e+00, %6737
  %6739 = bitcast float %6738 to i32
  %6740 = sitofp i32 %6739 to float
  %6741 = fmul fast float %6740, 5.000000e+00
  %6742 = fadd fast float %6741, 0xC1EFBF8940000000
  %6743 = fptosi float %6742 to i32
  %6744 = bitcast i32 %6743 to float
  %6745 = fsub fast float 1.000000e+00, %5402
  %6746 = fsub fast float 1.000000e+00, %5403
  %6747 = fsub fast float 1.000000e+00, %5414
  %6748 = fmul fast float %6744, %6745
  %6749 = fmul fast float %6744, %6746
  %6750 = fmul fast float %6744, %6747
  %6751 = fadd fast float %6748, %5402
  %6752 = fadd fast float %6749, %5403
  %6753 = fadd fast float %6750, %5414
  br i1 %5686, label %6754, label %6777

; <label>:6754                                    ; preds = %6671
  %6755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4733, float %6737, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6756 = extractvalue %dx.types.ResRet.f32 %6755, 0
  %6757 = extractvalue %dx.types.ResRet.f32 %6755, 1
  %6758 = extractvalue %dx.types.ResRet.f32 %6755, 2
  %6759 = fadd fast float %6756, -5.000000e-01
  %6760 = fadd fast float %6757, -5.000000e-01
  %6761 = fadd fast float %6758, -5.000000e-01
  %6762 = fmul fast float %5402, 4.000000e+00
  %6763 = fmul fast float %6762, %6745
  %6764 = fmul fast float %6763, %6759
  %6765 = fmul fast float %5403, 4.000000e+00
  %6766 = fmul fast float %6765, %6746
  %6767 = fmul fast float %6766, %6760
  %6768 = fmul fast float %5414, 4.000000e+00
  %6769 = fmul fast float %6768, %6747
  %6770 = fmul fast float %6769, %6761
  %6771 = fadd fast float %6764, %6751
  %6772 = fadd fast float %6767, %6752
  %6773 = fadd fast float %6770, %6753
  %6774 = call float @dx.op.unary.f32(i32 7, float %6771)  ; Saturate(value)
  %6775 = call float @dx.op.unary.f32(i32 7, float %6772)  ; Saturate(value)
  %6776 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  br label %6777

; <label>:6777                                    ; preds = %6754, %6671
  %6778 = phi float [ %6774, %6754 ], [ %6751, %6671 ]
  %6779 = phi float [ %6775, %6754 ], [ %6752, %6671 ]
  %6780 = phi float [ %6776, %6754 ], [ %6753, %6671 ]
  %6781 = fmul fast float %6698, 9.843750e-01
  %6782 = fadd fast float %6781, 7.812500e-03
  %6783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6782, float %5676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6784 = extractvalue %dx.types.ResRet.f32 %6783, 2
  %6785 = extractvalue %dx.types.ResRet.f32 %6783, 3
  %6786 = fmul fast float %6784, %5402
  %6787 = fmul fast float %6784, %5403
  %6788 = fmul fast float %6784, %5414
  %6789 = fadd fast float %6786, %6785
  %6790 = fadd fast float %6787, %6785
  %6791 = fadd fast float %6788, %6785
  br i1 %5686, label %6792, label %6815

; <label>:6792                                    ; preds = %6777
  %6793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4733, float %6698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.ResRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.ResRet.f32 %6793, 2
  %6797 = fadd fast float %6794, -5.000000e-01
  %6798 = fadd fast float %6795, -5.000000e-01
  %6799 = fadd fast float %6796, -5.000000e-01
  %6800 = fmul fast float %5402, 4.000000e+00
  %6801 = fmul fast float %6800, %6745
  %6802 = fmul fast float %6801, %6797
  %6803 = fmul fast float %5403, 4.000000e+00
  %6804 = fmul fast float %6803, %6746
  %6805 = fmul fast float %6804, %6798
  %6806 = fmul fast float %5414, 4.000000e+00
  %6807 = fmul fast float %6806, %6747
  %6808 = fmul fast float %6807, %6799
  %6809 = fadd fast float %6802, %6789
  %6810 = fadd fast float %6805, %6790
  %6811 = fadd fast float %6808, %6791
  %6812 = call float @dx.op.unary.f32(i32 7, float %6809)  ; Saturate(value)
  %6813 = call float @dx.op.unary.f32(i32 7, float %6810)  ; Saturate(value)
  %6814 = call float @dx.op.unary.f32(i32 7, float %6811)  ; Saturate(value)
  br label %6815

; <label>:6815                                    ; preds = %6792, %6777
  %6816 = phi float [ %6812, %6792 ], [ %6789, %6777 ]
  %6817 = phi float [ %6813, %6792 ], [ %6790, %6777 ]
  %6818 = phi float [ %6814, %6792 ], [ %6791, %6777 ]
  %6819 = call float @dx.op.binary.f32(i32 35, float %6817, float %6818)  ; FMax(a,b)
  %6820 = call float @dx.op.binary.f32(i32 35, float %6816, float %6819)  ; FMax(a,b)
  %6821 = fsub fast float 1.000000e+00, %6820
  %6822 = fsub fast float -0.000000e+00, %5405
  %6823 = fsub fast float -0.000000e+00, %5406
  %6824 = fsub fast float -0.000000e+00, %5407
  %6825 = call float @dx.op.dot3.f32(i32 55, float %5793, float %5794, float %5795, float %6822, float %6823, float %6824)  ; Dot3(ax,ay,az,bx,by,bz)
  %6826 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  %6827 = fmul fast float %6826, 9.843750e-01
  %6828 = fadd fast float %6827, 7.812500e-03
  %6829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6828, float %5676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 2
  %6831 = extractvalue %dx.types.ResRet.f32 %6829, 3
  %6832 = fmul fast float %6830, %5402
  %6833 = fmul fast float %6830, %5403
  %6834 = fmul fast float %6830, %5414
  %6835 = fadd fast float %6832, %6831
  %6836 = fadd fast float %6833, %6831
  %6837 = fadd fast float %6834, %6831
  br i1 %5686, label %6838, label %6861

; <label>:6838                                    ; preds = %6815
  %6839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4733, float %6826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6840 = extractvalue %dx.types.ResRet.f32 %6839, 0
  %6841 = extractvalue %dx.types.ResRet.f32 %6839, 1
  %6842 = extractvalue %dx.types.ResRet.f32 %6839, 2
  %6843 = fadd fast float %6840, -5.000000e-01
  %6844 = fadd fast float %6841, -5.000000e-01
  %6845 = fadd fast float %6842, -5.000000e-01
  %6846 = fmul fast float %5402, 4.000000e+00
  %6847 = fmul fast float %6846, %6745
  %6848 = fmul fast float %6847, %6843
  %6849 = fmul fast float %5403, 4.000000e+00
  %6850 = fmul fast float %6849, %6746
  %6851 = fmul fast float %6850, %6844
  %6852 = fmul fast float %5414, 4.000000e+00
  %6853 = fmul fast float %6852, %6747
  %6854 = fmul fast float %6853, %6845
  %6855 = fadd fast float %6848, %6835
  %6856 = fadd fast float %6851, %6836
  %6857 = fadd fast float %6854, %6837
  %6858 = call float @dx.op.unary.f32(i32 7, float %6855)  ; Saturate(value)
  %6859 = call float @dx.op.unary.f32(i32 7, float %6856)  ; Saturate(value)
  %6860 = call float @dx.op.unary.f32(i32 7, float %6857)  ; Saturate(value)
  br label %6861

; <label>:6861                                    ; preds = %6838, %6815
  %6862 = phi float [ %6858, %6838 ], [ %6835, %6815 ]
  %6863 = phi float [ %6859, %6838 ], [ %6836, %6815 ]
  %6864 = phi float [ %6860, %6838 ], [ %6837, %6815 ]
  %6865 = call float @dx.op.binary.f32(i32 35, float %6863, float %6864)  ; FMax(a,b)
  %6866 = call float @dx.op.binary.f32(i32 35, float %6862, float %6865)  ; FMax(a,b)
  %6867 = fsub fast float 1.000000e+00, %6866
  %6868 = fmul fast float %6867, %6826
  %6869 = fmul fast float %6868, %4824
  %6870 = fmul fast float %6868, %4825
  %6871 = fmul fast float %6868, %4826
  %6872 = fmul fast float %6778, %6736
  %6873 = fmul fast float %6779, %6736
  %6874 = fmul fast float %6780, %6736
  %6875 = fsub fast float 1.000000e+00, %6699
  %6876 = bitcast float %6875 to i32
  %6877 = sitofp i32 %6876 to float
  %6878 = fmul fast float %6877, 5.000000e+00
  %6879 = fadd fast float %6878, 0xC1EFBF8940000000
  %6880 = fptosi float %6879 to i32
  %6881 = bitcast i32 %6880 to float
  %6882 = fmul fast float %6881, %4734
  %6883 = fmul fast float %6821, %6882
  %6884 = fmul fast float %6883, %5733
  %6885 = fmul fast float %6883, %5734
  %6886 = fmul fast float %6883, %5735
  %6887 = fmul fast float %6821, %6704
  %6888 = fadd fast float %6884, %6872
  %6889 = fadd fast float %6885, %6873
  %6890 = fadd fast float %6886, %6874
  %6891 = fadd fast float %6869, %6887
  %6892 = fadd fast float %6870, %6887
  %6893 = fadd fast float %6871, %6887
  %6894 = fmul fast float %6891, %6687
  %6895 = fmul fast float %6892, %6688
  %6896 = fmul fast float %6893, %6689
  %6897 = fmul fast float %6704, %6687
  %6898 = fmul fast float %6897, %6888
  %6899 = fmul fast float %6704, %6688
  %6900 = fmul fast float %6899, %6889
  %6901 = fmul fast float %6704, %6689
  %6902 = fmul fast float %6901, %6890
  %6903 = fadd fast float %6894, %5783
  %6904 = fmul fast float %6903, %4730
  %6905 = fadd fast float %6895, %5785
  %6906 = fmul fast float %6905, %4730
  %6907 = fadd fast float %6896, %5787
  %6908 = fmul fast float %6907, %4730
  %6909 = fadd fast float %6898, %5766
  %6910 = fmul fast float %6909, %4730
  %6911 = fadd fast float %6900, %5769
  %6912 = fmul fast float %6911, %4730
  %6913 = fadd fast float %6902, %5772
  %6914 = fmul fast float %6913, %4730
  br label %6915

; <label>:6915                                    ; preds = %6861, %6605, %5713
  %6916 = phi float [ %5767, %5713 ], [ %5767, %6605 ], [ %6910, %6861 ]
  %6917 = phi float [ %5770, %5713 ], [ %5770, %6605 ], [ %6912, %6861 ]
  %6918 = phi float [ %5773, %5713 ], [ %5773, %6605 ], [ %6914, %6861 ]
  %6919 = phi float [ %5784, %5713 ], [ %5784, %6605 ], [ %6904, %6861 ]
  %6920 = phi float [ %5786, %5713 ], [ %5786, %6605 ], [ %6906, %6861 ]
  %6921 = phi float [ %5788, %5713 ], [ %5788, %6605 ], [ %6908, %6861 ]
  %6922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.i32 %6922, 0
  %6924 = icmp eq i32 %6923, 0
  br i1 %6924, label %7600, label %6925

; <label>:6925                                    ; preds = %6915
  %6926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6927 = extractvalue %dx.types.CBufRet.f32 %6926, 2
  %6928 = extractvalue %dx.types.CBufRet.f32 %6926, 3
  %6929 = fmul fast float %6927, %102
  %6930 = fmul fast float %6928, %103
  %6931 = fptoui float %6929 to i32
  %6932 = fptoui float %6930 to i32
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 0
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6936 = extractvalue %dx.types.CBufRet.f32 %6933, 3
  %6937 = fadd fast float %93, -4.000000e+00
  %6938 = call float @dx.op.binary.f32(i32 35, float %6937, float 0.000000e+00)  ; FMax(a,b)
  %6939 = fadd fast float %6938, %6934
  %6940 = fmul fast float %6939, %6935
  %6941 = call float @dx.op.unary.f32(i32 23, float %6940)  ; Log(value)
  %6942 = fmul fast float %6941, %6936
  %6943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6944 = extractvalue %dx.types.CBufRet.f32 %6943, 2
  %6945 = fmul fast float %6942, %6944
  %6946 = call float @dx.op.unary.f32(i32 7, float %6945)  ; Saturate(value)
  %6947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6948 = extractvalue %dx.types.CBufRet.i32 %6947, 1
  %6949 = add i32 %6948, -1
  %6950 = uitofp i32 %6948 to float
  %6951 = fmul fast float %6950, %6946
  %6952 = fptoui float %6951 to i32
  %6953 = call i32 @dx.op.binary.i32(i32 40, i32 %6952, i32 %6949)  ; UMin(a,b)
  %6954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.i32 %6954, 2
  %6956 = extractvalue %dx.types.CBufRet.i32 %6954, 3
  %6957 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6932, i32 %6955, i32 %6931)  ; UMad(a,b,c)
  %6958 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6953, i32 %6956, i32 %6957)  ; UMad(a,b,c)
  %6959 = add nsw i32 %6923, -1
  %6960 = call i32 @dx.op.binary.i32(i32 37, i32 %6959, i32 0)  ; IMax(a,b)
  %6961 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %6962 = fptoui float %6961 to i32
  %6963 = lshr i32 %6962, 5
  %6964 = call i32 @dx.op.binary.i32(i32 40, i32 %6963, i32 8191)  ; UMin(a,b)
  %6965 = shl i32 %6964, 2
  %6966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6965, i32 undef)  ; BufferLoad(srv,index,wot)
  %6967 = extractvalue %dx.types.ResRet.i32 %6966, 0
  %6968 = lshr i32 %6967, 16
  %6969 = and i32 %6967, 65535
  %6970 = lshr i32 %6967, 21
  %6971 = lshr i32 %6969, 5
  %6972 = call i32 @dx.op.binary.i32(i32 40, i32 %6971, i32 %6960)  ; UMin(a,b)
  %6973 = icmp ugt i32 %6970, %6972
  br i1 %6973, label %7600, label %6974

; <label>:6974                                    ; preds = %6925
  br label %6975

; <label>:6975                                    ; preds = %7590, %6974
  %6976 = phi i32 [ %7597, %7590 ], [ %6970, %6974 ]
  %6977 = phi float [ %7591, %7590 ], [ %6916, %6974 ]
  %6978 = phi float [ %7592, %7590 ], [ %6917, %6974 ]
  %6979 = phi float [ %7593, %7590 ], [ %6918, %6974 ]
  %6980 = phi float [ %7594, %7590 ], [ %6919, %6974 ]
  %6981 = phi float [ %7595, %7590 ], [ %6920, %6974 ]
  %6982 = phi float [ %7596, %7590 ], [ %6921, %6974 ]
  %6983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6984 = extractvalue %dx.types.CBufRet.i32 %6983, 0
  %6985 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6958, i32 %6984, i32 %6976)  ; UMad(a,b,c)
  %6986 = shl i32 %6985, 2
  %6987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6986, i32 undef)  ; BufferLoad(srv,index,wot)
  %6988 = extractvalue %dx.types.ResRet.i32 %6987, 0
  %6989 = shl i32 %6976, 5
  %6990 = sub nsw i32 %6968, %6989
  %6991 = call i32 @dx.op.binary.i32(i32 37, i32 %6990, i32 0)  ; IMax(a,b)
  %6992 = call i32 @dx.op.binary.i32(i32 38, i32 %6991, i32 31)  ; IMin(a,b)
  %6993 = sub nsw i32 1, %6968
  %6994 = add nsw i32 %6993, %6969
  %6995 = call i32 @dx.op.binary.i32(i32 37, i32 %6994, i32 0)  ; IMax(a,b)
  %6996 = call i32 @dx.op.binary.i32(i32 38, i32 %6995, i32 32)  ; IMin(a,b)
  %6997 = and i32 %6996, 31
  %6998 = shl i32 -1, %6997
  %6999 = xor i32 %6998, -1
  %7000 = and i32 %6992, 31
  %7001 = shl i32 %6999, %7000
  %7002 = icmp eq i32 %6996, 32
  %7003 = select i1 %7002, i32 -1, i32 %7001
  %7004 = and i32 %7003, %6988
  %7005 = icmp eq i32 %7004, 0
  br i1 %7005, label %7590, label %7006

; <label>:7006                                    ; preds = %6975
  br label %7007

; <label>:7007                                    ; preds = %7141, %7006
  %7008 = phi i32 [ %7019, %7141 ], [ %7004, %7006 ]
  %7009 = phi float [ %7142, %7141 ], [ %6977, %7006 ]
  %7010 = phi float [ %7143, %7141 ], [ %6978, %7006 ]
  %7011 = phi float [ %7144, %7141 ], [ %6979, %7006 ]
  %7012 = phi float [ %7145, %7141 ], [ %6980, %7006 ]
  %7013 = phi float [ %7146, %7141 ], [ %6981, %7006 ]
  %7014 = phi float [ %7147, %7141 ], [ %6982, %7006 ]
  %7015 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7008)  ; FirstbitLo(value)
  %7016 = add i32 %7015, %6989
  %7017 = and i32 %7015, 31
  %7018 = shl i32 1, %7017
  %7019 = xor i32 %7018, %7008
  %7020 = mul i32 %7016, 112
  %7021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7020, i32 undef)  ; BufferLoad(srv,index,wot)
  %7022 = extractvalue %dx.types.ResRet.f32 %7021, 0
  %7023 = extractvalue %dx.types.ResRet.f32 %7021, 1
  %7024 = extractvalue %dx.types.ResRet.f32 %7021, 2
  %7025 = or i32 %7020, 12
  %7026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7025, i32 undef)  ; BufferLoad(srv,index,wot)
  %7027 = extractvalue %dx.types.ResRet.f32 %7026, 0
  %7028 = add i32 %7020, 16
  %7029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7028, i32 undef)  ; BufferLoad(srv,index,wot)
  %7030 = extractvalue %dx.types.ResRet.f32 %7029, 0
  %7031 = extractvalue %dx.types.ResRet.f32 %7029, 1
  %7032 = extractvalue %dx.types.ResRet.f32 %7029, 2
  %7033 = add i32 %7020, 28
  %7034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7033, i32 undef)  ; BufferLoad(srv,index,wot)
  %7035 = extractvalue %dx.types.ResRet.i32 %7034, 0
  %7036 = add i32 %7020, 44
  %7037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7036, i32 undef)  ; BufferLoad(srv,index,wot)
  %7038 = extractvalue %dx.types.ResRet.f32 %7037, 0
  %7039 = add i32 %7020, 48
  %7040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7039, i32 undef)  ; BufferLoad(srv,index,wot)
  %7041 = extractvalue %dx.types.ResRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.ResRet.f32 %7040, 1
  %7043 = extractvalue %dx.types.ResRet.f32 %7040, 2
  %7044 = extractvalue %dx.types.ResRet.f32 %7040, 3
  %7045 = add i32 %7020, 64
  %7046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7045, i32 undef)  ; BufferLoad(srv,index,wot)
  %7047 = extractvalue %dx.types.ResRet.f32 %7046, 0
  %7048 = extractvalue %dx.types.ResRet.f32 %7046, 1
  %7049 = extractvalue %dx.types.ResRet.f32 %7046, 2
  %7050 = extractvalue %dx.types.ResRet.f32 %7046, 3
  %7051 = add i32 %7020, 80
  %7052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7051, i32 undef)  ; BufferLoad(srv,index,wot)
  %7053 = extractvalue %dx.types.ResRet.f32 %7052, 1
  %7054 = extractvalue %dx.types.ResRet.f32 %7052, 2
  %7055 = add i32 %7020, 92
  %7056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7055, i32 undef)  ; BufferLoad(srv,index,wot)
  %7057 = extractvalue %dx.types.ResRet.i32 %7056, 0
  %7058 = call float @dx.op.dot3.f32(i32 55, float %7022, float %7023, float %7024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7059 = select i1 %223, float %7053, float %7022
  %7060 = select i1 %223, float %7058, float %7023
  %7061 = select i1 %223, float %7054, float %7024
  %7062 = and i32 %7057, 65535
  %7063 = uitofp i32 %7062 to float
  %7064 = lshr i32 %7057, 16
  %7065 = uitofp i32 %7064 to float
  %7066 = and i32 %7035, 65535
  %7067 = and i32 %7035, 50331648
  %7068 = icmp eq i32 %7067, 33554432
  %7069 = fsub fast float %7041, %161
  %7070 = fsub fast float %7042, %162
  %7071 = fsub fast float %7043, %163
  %7072 = call float @dx.op.dot3.f32(i32 55, float %7069, float %7070, float %7071, float %7069, float %7070, float %7071)  ; Dot3(ax,ay,az,bx,by,bz)
  %7073 = call float @dx.op.unary.f32(i32 24, float %7072)  ; Sqrt(value)
  %7074 = fdiv fast float 1.000000e+00, %7073
  %7075 = fmul fast float %7074, %7069
  %7076 = fmul fast float %7074, %7070
  %7077 = fmul fast float %7074, %7071
  %7078 = fadd fast float %7073, %7027
  %7079 = fdiv fast float 1.000000e+00, %7078
  %7080 = fmul float %7038, %7079
  %7081 = fmul float %7080, %7080
  %7082 = call float @dx.op.unary.f32(i32 7, float %7081)  ; Saturate(value)
  br i1 %7068, label %7083, label %7104

; <label>:7083                                    ; preds = %7007
  %7084 = fmul fast float %7049, %7030
  %7085 = fmul fast float %7049, %7031
  %7086 = fmul fast float %7049, %7032
  %7087 = fadd fast float %7069, %7084
  %7088 = fadd fast float %7070, %7085
  %7089 = fadd fast float %7071, %7086
  %7090 = call float @dx.op.dot3.f32(i32 55, float %7087, float %7088, float %7089, float %7087, float %7088, float %7089)  ; Dot3(ax,ay,az,bx,by,bz)
  %7091 = call float @dx.op.unary.f32(i32 25, float %7090)  ; Rsqrt(value)
  %7092 = fmul fast float %7091, %7087
  %7093 = fmul fast float %7091, %7088
  %7094 = fmul fast float %7091, %7089
  %7095 = fsub fast float %161, %7041
  %7096 = fsub fast float %162, %7042
  %7097 = fsub fast float %163, %7043
  %7098 = fsub fast float -0.000000e+00, %7095
  %7099 = fsub fast float -0.000000e+00, %7096
  %7100 = fsub fast float -0.000000e+00, %7097
  %7101 = call float @dx.op.dot3.f32(i32 55, float %7098, float %7099, float %7100, float %7030, float %7031, float %7032)  ; Dot3(ax,ay,az,bx,by,bz)
  %7102 = fcmp fast ogt float %7101, 0.000000e+00
  %7103 = uitofp i1 %7102 to float
  br label %7104

; <label>:7104                                    ; preds = %7083, %7007
  %7105 = phi float [ %7103, %7083 ], [ 1.000000e+00, %7007 ]
  %7106 = phi float [ %7092, %7083 ], [ %7075, %7007 ]
  %7107 = phi float [ %7093, %7083 ], [ %7076, %7007 ]
  %7108 = phi float [ %7094, %7083 ], [ %7077, %7007 ]
  %7109 = call float @dx.op.dot3.f32(i32 55, float %7030, float %7031, float %7032, float %7106, float %7107, float %7108)  ; Dot3(ax,ay,az,bx,by,bz)
  %7110 = fmul fast float %7109, %7109
  %7111 = call float @dx.op.unary.f32(i32 7, float %7110)  ; Saturate(value)
  %7112 = fsub fast float 1.000000e+00, %7111
  %7113 = fmul fast float %7112, 5.000000e-01
  %7114 = fcmp fast ogt float %7109, 0.000000e+00
  %7115 = fsub fast float 1.000000e+00, %7113
  %7116 = select i1 %7114, float %7113, float %7115
  %7117 = fmul fast float %7116, %7065
  %7118 = fadd fast float %7117, %7063
  %7119 = fmul fast float %7118, 0x3EF0001000000000
  %7120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7119, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7121 = extractvalue %dx.types.ResRet.f32 %7120, 0
  %7122 = fmul fast float %7109, %7047
  %7123 = fadd fast float %7122, %7048
  %7124 = call float @dx.op.unary.f32(i32 7, float %7123)  ; Saturate(value)
  %7125 = select i1 %7068, float 1.000000e+00, float %7124
  %7126 = select i1 %7068, float %7124, float 1.000000e+00
  %7127 = fmul fast float %7073, %7044
  %7128 = fsub fast float 1.000000e+00, %7127
  %7129 = fmul fast float %7128, %7050
  %7130 = call float @dx.op.unary.f32(i32 7, float %7129)  ; Saturate(value)
  %7131 = fmul fast float %7130, %7126
  %7132 = fmul fast float %7131, 2.000000e+00
  %7133 = fsub fast float 3.000000e+00, %7132
  %7134 = fmul fast float %7121, %7105
  %7135 = fmul fast float %7131, %7131
  %7136 = fmul fast float %7135, %7134
  %7137 = fmul fast float %7136, %7133
  %7138 = call float @dx.op.binary.f32(i32 36, float %7137, float %7137)  ; FMin(a,b)
  %7139 = call float @dx.op.binary.f32(i32 36, float %7137, float %7138)  ; FMin(a,b)
  %7140 = fcmp fast ogt float %7139, 0.000000e+00
  br i1 %7140, label %7149, label %7141, !dx.controlflow.hints !119

; <label>:7141                                    ; preds = %7538, %7249, %7104
  %7142 = phi float [ %7009, %7249 ], [ %7009, %7104 ], [ %7586, %7538 ]
  %7143 = phi float [ %7010, %7249 ], [ %7010, %7104 ], [ %7587, %7538 ]
  %7144 = phi float [ %7011, %7249 ], [ %7011, %7104 ], [ %7588, %7538 ]
  %7145 = phi float [ %7012, %7249 ], [ %7012, %7104 ], [ %7577, %7538 ]
  %7146 = phi float [ %7013, %7249 ], [ %7013, %7104 ], [ %7578, %7538 ]
  %7147 = phi float [ %7014, %7249 ], [ %7014, %7104 ], [ %7579, %7538 ]
  %7148 = icmp eq i32 %7008, %7018
  br i1 %7148, label %7589, label %7007

; <label>:7149                                    ; preds = %7104
  %7150 = icmp eq i32 %7066, 255
  br i1 %7150, label %7249, label %7151, !dx.controlflow.hints !120

; <label>:7151                                    ; preds = %7149
  %7152 = mul nuw nsw i32 %7066, 176
  %7153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7152, i32 undef)  ; BufferLoad(srv,index,wot)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.ResRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.ResRet.f32 %7153, 2
  %7157 = extractvalue %dx.types.ResRet.f32 %7153, 3
  %7158 = add nuw nsw i32 %7152, 16
  %7159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7158, i32 undef)  ; BufferLoad(srv,index,wot)
  %7160 = extractvalue %dx.types.ResRet.f32 %7159, 0
  %7161 = extractvalue %dx.types.ResRet.f32 %7159, 1
  %7162 = add nuw nsw i32 %7152, 32
  %7163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7162, i32 undef)  ; BufferLoad(srv,index,wot)
  %7164 = extractvalue %dx.types.ResRet.f32 %7163, 0
  %7165 = extractvalue %dx.types.ResRet.f32 %7163, 1
  %7166 = extractvalue %dx.types.ResRet.f32 %7163, 2
  %7167 = add nuw nsw i32 %7152, 48
  %7168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7167, i32 undef)  ; BufferLoad(srv,index,wot)
  %7169 = extractvalue %dx.types.ResRet.f32 %7168, 0
  %7170 = extractvalue %dx.types.ResRet.f32 %7168, 1
  %7171 = extractvalue %dx.types.ResRet.f32 %7168, 2
  %7172 = extractvalue %dx.types.ResRet.f32 %7168, 3
  %7173 = add nuw nsw i32 %7152, 64
  %7174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7173, i32 undef)  ; BufferLoad(srv,index,wot)
  %7175 = extractvalue %dx.types.ResRet.f32 %7174, 0
  %7176 = extractvalue %dx.types.ResRet.f32 %7174, 1
  %7177 = extractvalue %dx.types.ResRet.f32 %7174, 2
  %7178 = extractvalue %dx.types.ResRet.f32 %7174, 3
  %7179 = add nuw nsw i32 %7152, 80
  %7180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7179, i32 undef)  ; BufferLoad(srv,index,wot)
  %7181 = extractvalue %dx.types.ResRet.f32 %7180, 0
  %7182 = extractvalue %dx.types.ResRet.f32 %7180, 1
  %7183 = extractvalue %dx.types.ResRet.f32 %7180, 2
  %7184 = extractvalue %dx.types.ResRet.f32 %7180, 3
  %7185 = add nuw nsw i32 %7152, 96
  %7186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7185, i32 undef)  ; BufferLoad(srv,index,wot)
  %7187 = extractvalue %dx.types.ResRet.f32 %7186, 0
  %7188 = extractvalue %dx.types.ResRet.f32 %7186, 1
  %7189 = extractvalue %dx.types.ResRet.f32 %7186, 2
  %7190 = extractvalue %dx.types.ResRet.f32 %7186, 3
  %7191 = bitcast float %7161 to i32
  %7192 = fmul fast float %7166, %111
  %7193 = fmul fast float %7166, %113
  %7194 = fmul fast float %7166, %115
  %7195 = fadd fast float %7192, %161
  %7196 = fadd fast float %7193, %162
  %7197 = fadd fast float %7194, %163
  %7198 = fmul fast float %7195, %7169
  %7199 = call float @dx.op.tertiary.f32(i32 46, float %7196, float %7175, float %7198)  ; FMad(a,b,c)
  %7200 = call float @dx.op.tertiary.f32(i32 46, float %7197, float %7181, float %7199)  ; FMad(a,b,c)
  %7201 = fadd fast float %7200, %7187
  %7202 = fmul fast float %7195, %7170
  %7203 = call float @dx.op.tertiary.f32(i32 46, float %7196, float %7176, float %7202)  ; FMad(a,b,c)
  %7204 = call float @dx.op.tertiary.f32(i32 46, float %7197, float %7182, float %7203)  ; FMad(a,b,c)
  %7205 = fadd fast float %7204, %7188
  %7206 = fmul fast float %7195, %7171
  %7207 = call float @dx.op.tertiary.f32(i32 46, float %7196, float %7177, float %7206)  ; FMad(a,b,c)
  %7208 = call float @dx.op.tertiary.f32(i32 46, float %7197, float %7183, float %7207)  ; FMad(a,b,c)
  %7209 = fadd fast float %7208, %7189
  %7210 = fmul fast float %7195, %7172
  %7211 = call float @dx.op.tertiary.f32(i32 46, float %7196, float %7178, float %7210)  ; FMad(a,b,c)
  %7212 = call float @dx.op.tertiary.f32(i32 46, float %7197, float %7184, float %7211)  ; FMad(a,b,c)
  %7213 = fadd fast float %7212, %7190
  %7214 = fdiv fast float %7201, %7213
  %7215 = fdiv fast float %7205, %7213
  %7216 = fdiv fast float %7209, %7213
  %7217 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7216)  ; FMax(a,b)
  %7218 = fmul fast float %234, 0x401921FB60000000
  %7219 = call float @dx.op.unary.f32(i32 13, float %7218)  ; Sin(value)
  %7220 = call float @dx.op.unary.f32(i32 12, float %7218)  ; Cos(value)
  %7221 = fsub fast float -0.000000e+00, %7219
  %7222 = fmul fast float %7156, 5.000000e-01
  %7223 = call float @dx.op.dot2.f32(i32 54, float %234, float %234, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7224 = call float @dx.op.unary.f32(i32 22, float %7223)  ; Frc(value)
  %7225 = fmul fast float %7224, 0x404A7DD040000000
  %7226 = call float @dx.op.unary.f32(i32 22, float %7225)  ; Frc(value)
  %7227 = fmul fast float %7226, %7165
  %7228 = fadd fast float %7227, %7222
  %7229 = call float @dx.op.tertiary.f32(i32 46, float %7228, float %7221, float 0.000000e+00)  ; FMad(a,b,c)
  %7230 = call float @dx.op.tertiary.f32(i32 46, float %7228, float %7220, float 0.000000e+00)  ; FMad(a,b,c)
  %7231 = fadd fast float %7229, %7214
  %7232 = fadd fast float %7230, %7215
  %7233 = fmul fast float %7231, %7160
  %7234 = fmul fast float %7232, %7160
  %7235 = call float @dx.op.binary.f32(i32 35, float %7233, float %7156)  ; FMax(a,b)
  %7236 = call float @dx.op.binary.f32(i32 35, float %7234, float %7156)  ; FMax(a,b)
  %7237 = call float @dx.op.binary.f32(i32 36, float %7235, float %7157)  ; FMin(a,b)
  %7238 = call float @dx.op.binary.f32(i32 36, float %7236, float %7157)  ; FMin(a,b)
  %7239 = fadd fast float %7237, %7154
  %7240 = fadd fast float %7238, %7155
  %7241 = uitofp i32 %7191 to float
  %7242 = fadd fast float %7217, %7164
  %7243 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7239, float %7240, float %7241, float undef, i32 0, i32 0, i32 undef, float %7242)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = fadd fast float %7244, -1.000000e+00
  %7246 = fmul fast float %7245, %7125
  %7247 = fadd fast float %7246, 1.000000e+00
  %7248 = fmul fast float %7247, %7137
  br label %7249

; <label>:7249                                    ; preds = %7151, %7149
  %7250 = phi float [ %7248, %7151 ], [ %7137, %7149 ]
  %7251 = call float @dx.op.binary.f32(i32 36, float %7250, float %7250)  ; FMin(a,b)
  %7252 = call float @dx.op.binary.f32(i32 36, float %7250, float %7251)  ; FMin(a,b)
  %7253 = fcmp fast ogt float %7252, 0.000000e+00
  br i1 %7253, label %7254, label %7141, !dx.controlflow.hints !121

; <label>:7254                                    ; preds = %7249
  %7255 = fmul fast float %7250, %7059
  %7256 = fmul fast float %7250, %7060
  %7257 = fmul fast float %7250, %7061
  %7258 = fsub fast float %7043, %5201
  %7259 = fcmp fast ogt float %7258, 0.000000e+00
  %7260 = fsub fast float %163, %5201
  %7261 = fcmp fast ogt float %7260, 0.000000e+00
  %7262 = xor i1 %7261, %7259
  %7263 = fsub fast float %5201, %7043
  %7264 = fmul fast float %7263, 2.000000e+00
  %7265 = fadd fast float %7264, %7043
  %7266 = select i1 %7262, float %7043, float %7265
  %7267 = fsub fast float %7266, %163
  %7268 = call float @dx.op.dot3.f32(i32 55, float %7069, float %7070, float %7267, float %7069, float %7070, float %7267)  ; Dot3(ax,ay,az,bx,by,bz)
  %7269 = call float @dx.op.unary.f32(i32 25, float %7268)  ; Rsqrt(value)
  %7270 = fmul fast float %7269, %7069
  %7271 = fmul fast float %7269, %7070
  %7272 = fmul fast float %7269, %7267
  %7273 = fsub fast float %5201, %163
  %7274 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7273)  ; Dot3(ax,ay,az,bx,by,bz)
  %7275 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7270, float %7271, float %7272)  ; Dot3(ax,ay,az,bx,by,bz)
  %7276 = fdiv fast float 1.000000e+00, %7275
  %7277 = fmul fast float %7276, %7274
  %7278 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7260, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7279 = fcmp fast ogt float %7278, 0.000000e+00
  %7280 = fcmp fast olt float %7278, 0.000000e+00
  %7281 = zext i1 %7279 to i32
  %7282 = zext i1 %7280 to i32
  %7283 = sub nsw i32 %7281, %7282
  %7284 = sitofp i32 %7283 to float
  %7285 = fsub fast float %7266, %5201
  %7286 = call float @dx.op.dot3.f32(i32 55, float %7069, float %7070, float %7285, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7287 = fcmp fast ogt float %7286, 0.000000e+00
  %7288 = fcmp fast olt float %7286, 0.000000e+00
  %7289 = zext i1 %7287 to i32
  %7290 = zext i1 %7288 to i32
  %7291 = sub nsw i32 %7289, %7290
  %7292 = sitofp i32 %7291 to float
  %7293 = fcmp fast une float %7284, %7292
  br i1 %7293, label %7294, label %7304

; <label>:7294                                    ; preds = %7254
  %7295 = fmul fast float %7277, %7272
  %7296 = fmul fast float %7277, %7271
  %7297 = fmul fast float %7277, %7270
  %7298 = fmul fast float %7297, %7297
  %7299 = fmul fast float %7296, %7296
  %7300 = fadd fast float %7298, %7299
  %7301 = fmul fast float %7295, %7295
  %7302 = fadd fast float %7300, %7301
  %7303 = call float @dx.op.unary.f32(i32 24, float %7302)  ; Sqrt(value)
  br label %7316

; <label>:7304                                    ; preds = %7254
  %7305 = icmp slt i32 %7283, 0
  br i1 %7305, label %7306, label %7316

; <label>:7306                                    ; preds = %7304
  %7307 = fsub fast float %161, %7041
  %7308 = fsub fast float %162, %7042
  %7309 = fsub fast float %163, %7266
  %7310 = fmul fast float %7307, %7307
  %7311 = fmul fast float %7308, %7308
  %7312 = fadd fast float %7310, %7311
  %7313 = fmul fast float %7309, %7309
  %7314 = fadd fast float %7312, %7313
  %7315 = call float @dx.op.unary.f32(i32 24, float %7314)  ; Sqrt(value)
  br label %7316

; <label>:7316                                    ; preds = %7306, %7304, %7294
  %7317 = phi float [ %7303, %7294 ], [ %7315, %7306 ], [ 0.000000e+00, %7304 ]
  %7318 = and i1 %7261, %7259
  %7319 = fsub fast float -0.000000e+00, %7317
  %7320 = select i1 %7318, float -0.000000e+00, float %7319
  %7321 = fmul fast float %5202, 0x3FF7154760000000
  %7322 = fmul fast float %7321, %7320
  %7323 = fmul fast float %5203, 0x3FF7154760000000
  %7324 = fmul fast float %7323, %7320
  %7325 = fmul fast float %5204, 0x3FF7154760000000
  %7326 = fmul fast float %7325, %7320
  %7327 = call float @dx.op.unary.f32(i32 21, float %7322)  ; Exp(value)
  %7328 = call float @dx.op.unary.f32(i32 21, float %7324)  ; Exp(value)
  %7329 = call float @dx.op.unary.f32(i32 21, float %7326)  ; Exp(value)
  %7330 = call float @dx.op.unary.f32(i32 7, float %7327)  ; Saturate(value)
  %7331 = call float @dx.op.unary.f32(i32 7, float %7328)  ; Saturate(value)
  %7332 = call float @dx.op.unary.f32(i32 7, float %7329)  ; Saturate(value)
  %7333 = fmul fast float %7255, %7330
  %7334 = fmul fast float %7256, %7331
  %7335 = fmul fast float %7257, %7332
  %7336 = fsub fast float %7075, %5401
  %7337 = fsub fast float %7076, %5400
  %7338 = fsub fast float %7077, %5399
  %7339 = call float @dx.op.dot3.f32(i32 55, float %7336, float %7337, float %7338, float %7336, float %7337, float %7338)  ; Dot3(ax,ay,az,bx,by,bz)
  %7340 = call float @dx.op.unary.f32(i32 25, float %7339)  ; Rsqrt(value)
  %7341 = fmul fast float %7340, %7336
  %7342 = fmul fast float %7340, %7337
  %7343 = fmul fast float %7340, %7338
  %7344 = call float @dx.op.dot3.f32(i32 55, float %7075, float %7076, float %7077, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %7345 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5397, float %5396, float %7341, float %7342, float %7343)  ; Dot3(ax,ay,az,bx,by,bz)
  %7346 = call float @dx.op.unary.f32(i32 7, float %7344)  ; Saturate(value)
  %7347 = fmul fast float %7346, %7082
  %7348 = fmul fast float %7346, %7346
  %7349 = fmul fast float %7348, %5429
  %7350 = call float @dx.op.unary.f32(i32 7, float %7349)  ; Saturate(value)
  %7351 = fmul fast float %7347, %7350
  %7352 = bitcast float %7072 to i32
  %7353 = ashr i32 %7352, 1
  %7354 = sub nsw i32 1597463007, %7353
  %7355 = bitcast i32 %7354 to float
  %7356 = fmul fast float %7355, %7069
  %7357 = fmul fast float %7355, %7070
  %7358 = fmul fast float %7355, %7071
  %7359 = fsub fast float %7356, %5401
  %7360 = fsub fast float %7357, %5400
  %7361 = fsub fast float %7358, %5399
  %7362 = call float @dx.op.dot3.f32(i32 55, float %7359, float %7360, float %7361, float %7359, float %7360, float %7361)  ; Dot3(ax,ay,az,bx,by,bz)
  %7363 = call float @dx.op.unary.f32(i32 25, float %7362)  ; Rsqrt(value)
  %7364 = fmul fast float %7359, %7363
  %7365 = fmul fast float %7360, %7363
  %7366 = fmul fast float %7361, %7363
  %7367 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %7364, float %7365, float %7366)  ; Dot3(ax,ay,az,bx,by,bz)
  %7368 = fmul fast float %7367, %7367
  %7369 = call float @dx.op.unary.f32(i32 6, float %7344)  ; FAbs(value)
  %7370 = fsub fast float 1.000000e+00, %5411
  %7371 = call float @dx.op.binary.f32(i32 35, float %7370, float 0x3F847AE140000000)  ; FMax(a,b)
  %7372 = fmul fast float %7371, %7371
  %7373 = fmul fast float %7372, %7372
  %7374 = fsub fast float 1.000000e+00, %7373
  %7375 = fmul fast float %5416, %5416
  %7376 = fmul fast float %7375, %7374
  %7377 = fadd fast float %7376, %7373
  %7378 = bitcast float %7377 to i32
  %7379 = ashr i32 %7378, 1
  %7380 = add nsw i32 %7379, 532487669
  %7381 = bitcast i32 %7380 to float
  %7382 = fadd fast float %7381, %5416
  %7383 = fmul fast float %7373, %7368
  %7384 = fsub fast float 1.000000e+00, %7368
  %7385 = fadd fast float %7384, %7383
  %7386 = fmul fast float %7369, %7369
  %7387 = fmul fast float %7386, %7374
  %7388 = fadd fast float %7387, %7373
  %7389 = bitcast float %7388 to i32
  %7390 = ashr i32 %7389, 1
  %7391 = add nsw i32 %7390, 532487669
  %7392 = bitcast i32 %7391 to float
  %7393 = fadd fast float %7392, %7369
  %7394 = fmul fast float %7385, %7385
  %7395 = fmul fast float %7394, %7382
  %7396 = fmul fast float %7395, %7393
  %7397 = fdiv fast float 1.000000e+00, %7396
  %7398 = bitcast float %7373 to i32
  %7399 = sitofp i32 %7398 to float
  %7400 = fmul fast float %7399, 0x3FE7F73180000000
  %7401 = fadd fast float %7400, 0x41AFE27C40000000
  %7402 = fptosi float %7401 to i32
  %7403 = bitcast i32 %7402 to float
  %7404 = fmul fast float %7038, 0x3FD80E9D60000000
  %7405 = fmul fast float %7404, %7355
  %7406 = fadd fast float %7403, %7405
  %7407 = bitcast float %7406 to i32
  %7408 = sub nsw i32 2129859010, %7407
  %7409 = bitcast i32 %7408 to float
  %7410 = fmul fast float %7373, %7397
  %7411 = fmul fast float %7410, %7403
  %7412 = fmul fast float %7411, %7409
  %7413 = call float @dx.op.unary.f32(i32 6, float %7345)  ; FAbs(value)
  %7414 = fsub fast float 1.000000e+00, %7413
  %7415 = bitcast float %7414 to i32
  %7416 = sitofp i32 %7415 to float
  %7417 = fmul fast float %7416, 5.000000e+00
  %7418 = fadd fast float %7417, 0xC1EFBF8940000000
  %7419 = fptosi float %7418 to i32
  %7420 = bitcast i32 %7419 to float
  %7421 = fsub fast float 1.000000e+00, %5402
  %7422 = fsub fast float 1.000000e+00, %5403
  %7423 = fsub fast float 1.000000e+00, %5414
  %7424 = fmul fast float %7420, %7421
  %7425 = fmul fast float %7420, %7422
  %7426 = fmul fast float %7420, %7423
  %7427 = fadd fast float %7424, %5402
  %7428 = fadd fast float %7425, %5403
  %7429 = fadd fast float %7426, %5414
  br i1 %5686, label %7430, label %7453

; <label>:7430                                    ; preds = %7316
  %7431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4733, float %7413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7432 = extractvalue %dx.types.ResRet.f32 %7431, 0
  %7433 = extractvalue %dx.types.ResRet.f32 %7431, 1
  %7434 = extractvalue %dx.types.ResRet.f32 %7431, 2
  %7435 = fadd fast float %7432, -5.000000e-01
  %7436 = fadd fast float %7433, -5.000000e-01
  %7437 = fadd fast float %7434, -5.000000e-01
  %7438 = fmul fast float %5402, 4.000000e+00
  %7439 = fmul fast float %7438, %7421
  %7440 = fmul fast float %7439, %7435
  %7441 = fmul fast float %5403, 4.000000e+00
  %7442 = fmul fast float %7441, %7422
  %7443 = fmul fast float %7442, %7436
  %7444 = fmul fast float %5414, 4.000000e+00
  %7445 = fmul fast float %7444, %7423
  %7446 = fmul fast float %7445, %7437
  %7447 = fadd fast float %7440, %7427
  %7448 = fadd fast float %7443, %7428
  %7449 = fadd fast float %7446, %7429
  %7450 = call float @dx.op.unary.f32(i32 7, float %7447)  ; Saturate(value)
  %7451 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  %7452 = call float @dx.op.unary.f32(i32 7, float %7449)  ; Saturate(value)
  br label %7453

; <label>:7453                                    ; preds = %7430, %7316
  %7454 = phi float [ %7450, %7430 ], [ %7427, %7316 ]
  %7455 = phi float [ %7451, %7430 ], [ %7428, %7316 ]
  %7456 = phi float [ %7452, %7430 ], [ %7429, %7316 ]
  %7457 = fmul fast float %7344, 9.843750e-01
  %7458 = fadd fast float %7457, 7.812500e-03
  %7459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7458, float %5676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 2
  %7461 = extractvalue %dx.types.ResRet.f32 %7459, 3
  %7462 = fmul fast float %7460, %5402
  %7463 = fmul fast float %7460, %5403
  %7464 = fmul fast float %7460, %5414
  %7465 = fadd fast float %7462, %7461
  %7466 = fadd fast float %7463, %7461
  %7467 = fadd fast float %7464, %7461
  br i1 %5686, label %7468, label %7491

; <label>:7468                                    ; preds = %7453
  %7469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4733, float %7344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7470 = extractvalue %dx.types.ResRet.f32 %7469, 0
  %7471 = extractvalue %dx.types.ResRet.f32 %7469, 1
  %7472 = extractvalue %dx.types.ResRet.f32 %7469, 2
  %7473 = fadd fast float %7470, -5.000000e-01
  %7474 = fadd fast float %7471, -5.000000e-01
  %7475 = fadd fast float %7472, -5.000000e-01
  %7476 = fmul fast float %5402, 4.000000e+00
  %7477 = fmul fast float %7476, %7421
  %7478 = fmul fast float %7477, %7473
  %7479 = fmul fast float %5403, 4.000000e+00
  %7480 = fmul fast float %7479, %7422
  %7481 = fmul fast float %7480, %7474
  %7482 = fmul fast float %5414, 4.000000e+00
  %7483 = fmul fast float %7482, %7423
  %7484 = fmul fast float %7483, %7475
  %7485 = fadd fast float %7478, %7465
  %7486 = fadd fast float %7481, %7466
  %7487 = fadd fast float %7484, %7467
  %7488 = call float @dx.op.unary.f32(i32 7, float %7485)  ; Saturate(value)
  %7489 = call float @dx.op.unary.f32(i32 7, float %7486)  ; Saturate(value)
  %7490 = call float @dx.op.unary.f32(i32 7, float %7487)  ; Saturate(value)
  br label %7491

; <label>:7491                                    ; preds = %7468, %7453
  %7492 = phi float [ %7488, %7468 ], [ %7465, %7453 ]
  %7493 = phi float [ %7489, %7468 ], [ %7466, %7453 ]
  %7494 = phi float [ %7490, %7468 ], [ %7467, %7453 ]
  %7495 = call float @dx.op.binary.f32(i32 35, float %7493, float %7494)  ; FMax(a,b)
  %7496 = call float @dx.op.binary.f32(i32 35, float %7492, float %7495)  ; FMax(a,b)
  %7497 = fsub fast float 1.000000e+00, %7496
  %7498 = fsub fast float -0.000000e+00, %5405
  %7499 = fsub fast float -0.000000e+00, %5406
  %7500 = fsub fast float -0.000000e+00, %5407
  %7501 = call float @dx.op.dot3.f32(i32 55, float %7075, float %7076, float %7077, float %7498, float %7499, float %7500)  ; Dot3(ax,ay,az,bx,by,bz)
  %7502 = call float @dx.op.unary.f32(i32 7, float %7501)  ; Saturate(value)
  %7503 = fmul fast float %7502, %7082
  %7504 = fmul fast float %7502, 9.843750e-01
  %7505 = fadd fast float %7504, 7.812500e-03
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7505, float %5676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 2
  %7508 = extractvalue %dx.types.ResRet.f32 %7506, 3
  %7509 = fmul fast float %7507, %5402
  %7510 = fmul fast float %7507, %5403
  %7511 = fmul fast float %7507, %5414
  %7512 = fadd fast float %7509, %7508
  %7513 = fadd fast float %7510, %7508
  %7514 = fadd fast float %7511, %7508
  br i1 %5686, label %7515, label %7538

; <label>:7515                                    ; preds = %7491
  %7516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4733, float %7502, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7517 = extractvalue %dx.types.ResRet.f32 %7516, 0
  %7518 = extractvalue %dx.types.ResRet.f32 %7516, 1
  %7519 = extractvalue %dx.types.ResRet.f32 %7516, 2
  %7520 = fadd fast float %7517, -5.000000e-01
  %7521 = fadd fast float %7518, -5.000000e-01
  %7522 = fadd fast float %7519, -5.000000e-01
  %7523 = fmul fast float %5402, 4.000000e+00
  %7524 = fmul fast float %7523, %7421
  %7525 = fmul fast float %7524, %7520
  %7526 = fmul fast float %5403, 4.000000e+00
  %7527 = fmul fast float %7526, %7422
  %7528 = fmul fast float %7527, %7521
  %7529 = fmul fast float %5414, 4.000000e+00
  %7530 = fmul fast float %7529, %7423
  %7531 = fmul fast float %7530, %7522
  %7532 = fadd fast float %7525, %7512
  %7533 = fadd fast float %7528, %7513
  %7534 = fadd fast float %7531, %7514
  %7535 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  %7536 = call float @dx.op.unary.f32(i32 7, float %7533)  ; Saturate(value)
  %7537 = call float @dx.op.unary.f32(i32 7, float %7534)  ; Saturate(value)
  br label %7538

; <label>:7538                                    ; preds = %7515, %7491
  %7539 = phi float [ %7535, %7515 ], [ %7512, %7491 ]
  %7540 = phi float [ %7536, %7515 ], [ %7513, %7491 ]
  %7541 = phi float [ %7537, %7515 ], [ %7514, %7491 ]
  %7542 = call float @dx.op.binary.f32(i32 35, float %7540, float %7541)  ; FMax(a,b)
  %7543 = call float @dx.op.binary.f32(i32 35, float %7539, float %7542)  ; FMax(a,b)
  %7544 = fsub fast float 1.000000e+00, %7543
  %7545 = fmul fast float %7503, %7544
  %7546 = fmul fast float %7545, %4824
  %7547 = fmul fast float %7545, %4825
  %7548 = fmul fast float %7545, %4826
  %7549 = fmul fast float %7454, %7412
  %7550 = fmul fast float %7455, %7412
  %7551 = fmul fast float %7456, %7412
  %7552 = fsub fast float 1.000000e+00, %7345
  %7553 = bitcast float %7552 to i32
  %7554 = sitofp i32 %7553 to float
  %7555 = fmul fast float %7554, 5.000000e+00
  %7556 = fadd fast float %7555, 0xC1EFBF8940000000
  %7557 = fptosi float %7556 to i32
  %7558 = bitcast i32 %7557 to float
  %7559 = fmul fast float %7558, %4734
  %7560 = fmul fast float %7497, %7559
  %7561 = fmul fast float %7560, %5733
  %7562 = fmul fast float %7560, %5734
  %7563 = fmul fast float %7560, %5735
  %7564 = fmul fast float %7497, %7351
  %7565 = fadd fast float %7561, %7549
  %7566 = fadd fast float %7562, %7550
  %7567 = fadd fast float %7563, %7551
  %7568 = fadd fast float %7546, %7564
  %7569 = fadd fast float %7547, %7564
  %7570 = fadd fast float %7548, %7564
  %7571 = fmul fast float %7333, %4730
  %7572 = fmul fast float %7571, %7568
  %7573 = fmul fast float %7334, %4730
  %7574 = fmul fast float %7573, %7569
  %7575 = fmul fast float %7335, %4730
  %7576 = fmul fast float %7575, %7570
  %7577 = fadd fast float %7572, %7012
  %7578 = fadd fast float %7574, %7013
  %7579 = fadd fast float %7576, %7014
  %7580 = fmul fast float %7571, %7351
  %7581 = fmul fast float %7580, %7565
  %7582 = fmul fast float %7573, %7351
  %7583 = fmul fast float %7582, %7566
  %7584 = fmul fast float %7575, %7351
  %7585 = fmul fast float %7584, %7567
  %7586 = fadd fast float %7581, %7009
  %7587 = fadd fast float %7583, %7010
  %7588 = fadd fast float %7585, %7011
  br label %7141

; <label>:7589                                    ; preds = %7141
  br label %7590

; <label>:7590                                    ; preds = %7589, %6975
  %7591 = phi float [ %6977, %6975 ], [ %7142, %7589 ]
  %7592 = phi float [ %6978, %6975 ], [ %7143, %7589 ]
  %7593 = phi float [ %6979, %6975 ], [ %7144, %7589 ]
  %7594 = phi float [ %6980, %6975 ], [ %7145, %7589 ]
  %7595 = phi float [ %6981, %6975 ], [ %7146, %7589 ]
  %7596 = phi float [ %6982, %6975 ], [ %7147, %7589 ]
  %7597 = add i32 %6976, 1
  %7598 = icmp ugt i32 %7597, %6972
  br i1 %7598, label %7599, label %6975

; <label>:7599                                    ; preds = %7590
  br label %7600

; <label>:7600                                    ; preds = %7599, %6925, %6915
  %7601 = phi float [ %6916, %6915 ], [ %6916, %6925 ], [ %7591, %7599 ]
  %7602 = phi float [ %6917, %6915 ], [ %6917, %6925 ], [ %7592, %7599 ]
  %7603 = phi float [ %6918, %6915 ], [ %6918, %6925 ], [ %7593, %7599 ]
  %7604 = phi float [ %6919, %6915 ], [ %6919, %6925 ], [ %7594, %7599 ]
  %7605 = phi float [ %6920, %6915 ], [ %6920, %6925 ], [ %7595, %7599 ]
  %7606 = phi float [ %6921, %6915 ], [ %6921, %6925 ], [ %7596, %7599 ]
  %7607 = fmul fast float %5742, %4730
  %7608 = fmul fast float %5743, %4730
  %7609 = fmul fast float %5744, %4730
  %7610 = fadd fast float %7607, 1.000000e+00
  %7611 = fadd fast float %7608, 1.000000e+00
  %7612 = fadd fast float %7609, 1.000000e+00
  %7613 = call float @dx.op.dot3.f32(i32 55, float %7610, float %7611, float %7612, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7614 = fsub fast float 1.000000e+00, %7613
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7617 = fmul fast float %7616, %5748
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 3
  %7620 = fsub fast float 1.000000e+00, %4738
  %7621 = call float @dx.op.unary.f32(i32 7, float %7620)  ; Saturate(value)
  %7622 = fadd fast float %7606, %4736
  %7623 = fmul fast float %7622, %4738
  %7624 = fmul fast float %7621, %7619
  %7625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7626 = extractvalue %dx.types.CBufRet.f32 %7625, 3
  %7627 = fmul fast float %7604, %5408
  %7628 = fmul fast float %7605, %5409
  %7629 = fmul fast float %7606, %5410
  %7630 = fcmp fast ogt float %93, %183
  %7631 = and i1 %7630, %5207
  %7632 = or i1 %5213, %7631
  %7633 = icmp eq i32 %5206, 2
  %7634 = fcmp fast ole float %93, %183
  %7635 = and i1 %7634, %7633
  %7636 = or i1 %7635, %7632
  br i1 %7631, label %7637, label %7894

; <label>:7637                                    ; preds = %7600
  %7638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7639 = extractvalue %dx.types.CBufRet.f32 %7638, 2
  %7640 = extractvalue %dx.types.CBufRet.f32 %7638, 3
  %7641 = fmul fast float %7639, %102
  %7642 = fmul fast float %7640, %103
  %7643 = call float @dx.op.unary.f32(i32 7, float %7641)  ; Saturate(value)
  %7644 = call float @dx.op.unary.f32(i32 7, float %7642)  ; Saturate(value)
  %7645 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7643, float %7644, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7646 = extractvalue %dx.types.ResRet.f32 %7645, 0
  %7647 = extractvalue %dx.types.ResRet.f32 %7645, 1
  %7648 = extractvalue %dx.types.ResRet.f32 %7645, 2
  %7649 = extractvalue %dx.types.ResRet.f32 %7645, 3
  %7650 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7643, float %7644, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7651 = extractvalue %dx.types.ResRet.f32 %7650, 0
  %7652 = extractvalue %dx.types.ResRet.f32 %7650, 1
  %7653 = extractvalue %dx.types.ResRet.f32 %7650, 2
  %7654 = extractvalue %dx.types.ResRet.f32 %7650, 3
  %7655 = call float @dx.op.binary.f32(i32 35, float %7647, float %7648)  ; FMax(a,b)
  %7656 = call float @dx.op.binary.f32(i32 35, float %7646, float %7655)  ; FMax(a,b)
  %7657 = call float @dx.op.binary.f32(i32 35, float %7656, float %7649)  ; FMax(a,b)
  %7658 = call float @dx.op.binary.f32(i32 36, float %7652, float %7653)  ; FMin(a,b)
  %7659 = call float @dx.op.binary.f32(i32 36, float %7651, float %7658)  ; FMin(a,b)
  %7660 = call float @dx.op.binary.f32(i32 36, float %7659, float %7654)  ; FMin(a,b)
  %7661 = fmul fast float %7657, 2.550000e+02
  %7662 = fadd fast float %7661, 0x3F70101020000000
  %7663 = fptoui float %7662 to i32
  %7664 = fmul fast float %7660, 2.550000e+02
  %7665 = fadd fast float %7664, 0x3F70101020000000
  %7666 = fptoui float %7665 to i32
  %7667 = icmp ult i32 %7663, %7666
  br i1 %7667, label %7668, label %7836

; <label>:7668                                    ; preds = %7637
  %7669 = fcmp fast ogt float %92, 9.843750e-01
  %7670 = fadd fast float %93, -4.000000e+00
  %7671 = select i1 %7669, float -4.000000e+00, float %7670
  %7672 = call float @dx.op.binary.f32(i32 35, float %7671, float 0.000000e+00)  ; FMax(a,b)
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 0
  %7675 = fadd fast float %7674, %7672
  %7676 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7677 = fmul fast float %7675, %7676
  %7678 = call float @dx.op.unary.f32(i32 23, float %7677)  ; Log(value)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7673, 3
  %7680 = fmul fast float %7679, %7678
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 2
  %7683 = fmul fast float %7680, %7682
  %7684 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7685 = uitofp i32 %7663 to float
  %7686 = uitofp i32 %7666 to float
  %7687 = fadd fast float %7685, 5.000000e-01
  %7688 = fadd fast float %7686, 5.000000e-01
  %7689 = fmul fast float %7682, %7687
  %7690 = fmul fast float %7682, %7688
  %7691 = fadd fast float %7689, 0x3F0FFB4800000000
  %7692 = fadd fast float %7690, 0xBF0FFB4800000000
  %7693 = call float @dx.op.binary.f32(i32 35, float %7684, float %7691)  ; FMax(a,b)
  %7694 = call float @dx.op.binary.f32(i32 36, float %7693, float %7692)  ; FMin(a,b)
  %7695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7696 = extractvalue %dx.types.CBufRet.f32 %7695, 1
  %7697 = extractvalue %dx.types.CBufRet.f32 %7695, 2
  %7698 = extractvalue %dx.types.CBufRet.f32 %7695, 0
  %7699 = fmul fast float %7696, %7694
  %7700 = fadd fast float %7698, %7699
  %7701 = fadd fast float %7698, %7697
  %7702 = fsub fast float %7696, %7697
  %7703 = fadd fast float %7702, %7698
  %7704 = call float @dx.op.binary.f32(i32 35, float %7700, float %7701)  ; FMax(a,b)
  %7705 = call float @dx.op.binary.f32(i32 36, float %7704, float %7703)  ; FMin(a,b)
  %7706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7643, float %7644, float %7705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7707 = extractvalue %dx.types.ResRet.f32 %7706, 0
  %7708 = extractvalue %dx.types.ResRet.f32 %7706, 1
  %7709 = extractvalue %dx.types.ResRet.f32 %7706, 2
  %7710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7711 = extractvalue %dx.types.CBufRet.i32 %7710, 0
  %7712 = extractvalue %dx.types.CBufRet.i32 %7710, 1
  %7713 = uitofp i32 %7711 to float
  %7714 = uitofp i32 %7712 to float
  %7715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7716 = extractvalue %dx.types.CBufRet.f32 %7715, 0
  %7717 = extractvalue %dx.types.CBufRet.f32 %7715, 1
  %7718 = fmul fast float %7713, %7643
  %7719 = fmul fast float %7714, %7644
  %7720 = fadd fast float %7718, -5.000000e-01
  %7721 = fadd fast float %7719, -5.000000e-01
  %7722 = call float @dx.op.unary.f32(i32 22, float %7720)  ; Frc(value)
  %7723 = call float @dx.op.unary.f32(i32 22, float %7721)  ; Frc(value)
  %7724 = fmul fast float %7722, %7722
  %7725 = fmul fast float %7724, %7722
  %7726 = fsub fast float 3.000000e+00, %7722
  %7727 = fmul fast float %7724, %7726
  %7728 = fmul fast float %7722, 3.000000e+00
  %7729 = fmul fast float %7725, 3.000000e+00
  %7730 = fmul fast float %7724, 6.000000e+00
  %7731 = fsub fast float %7729, %7730
  %7732 = fadd fast float %7731, 4.000000e+00
  %7733 = fmul fast float %7732, 0x3FC5555560000000
  %7734 = fmul fast float %7725, -3.000000e+00
  %7735 = fadd fast float %7724, %7722
  %7736 = fmul fast float %7735, 3.000000e+00
  %7737 = fadd fast float %7734, 1.000000e+00
  %7738 = fadd fast float %7737, %7736
  %7739 = fmul fast float %7725, 0x3FC5555560000000
  %7740 = fmul fast float %7723, %7723
  %7741 = fmul fast float %7740, %7723
  %7742 = fsub fast float 3.000000e+00, %7723
  %7743 = fmul fast float %7740, %7742
  %7744 = fmul fast float %7723, 3.000000e+00
  %7745 = fmul fast float %7741, 3.000000e+00
  %7746 = fmul fast float %7740, 6.000000e+00
  %7747 = fsub fast float %7745, %7746
  %7748 = fadd fast float %7747, 4.000000e+00
  %7749 = fmul fast float %7748, 0x3FC5555560000000
  %7750 = fmul fast float %7741, -3.000000e+00
  %7751 = fadd fast float %7740, %7723
  %7752 = fmul fast float %7751, 3.000000e+00
  %7753 = fadd fast float %7750, 1.000000e+00
  %7754 = fadd fast float %7753, %7752
  %7755 = fmul fast float %7741, 0x3FC5555560000000
  %7756 = fadd fast float %7722, 1.000000e+00
  %7757 = fsub fast float 1.000000e+00, %7728
  %7758 = fadd fast float %7757, %7727
  %7759 = fadd fast float %7758, %7732
  %7760 = fmul fast float %7759, 0x3FC5555560000000
  %7761 = fdiv fast float %7733, %7760
  %7762 = fsub fast float %7756, %7761
  %7763 = fsub fast float 1.000000e+00, %7722
  %7764 = fadd fast float %7738, %7725
  %7765 = fmul fast float %7764, 0x3FC5555560000000
  %7766 = fdiv fast float %7739, %7765
  %7767 = fadd fast float %7763, %7766
  %7768 = fadd fast float %7723, 1.000000e+00
  %7769 = fsub fast float 1.000000e+00, %7744
  %7770 = fadd fast float %7769, %7743
  %7771 = fadd fast float %7770, %7748
  %7772 = fmul fast float %7771, 0x3FC5555560000000
  %7773 = fdiv fast float %7749, %7772
  %7774 = fsub fast float %7768, %7773
  %7775 = fsub fast float 1.000000e+00, %7723
  %7776 = fadd fast float %7754, %7741
  %7777 = fmul fast float %7776, 0x3FC5555560000000
  %7778 = fdiv fast float %7755, %7777
  %7779 = fadd fast float %7778, %7775
  %7780 = fmul fast float %7762, %7716
  %7781 = fsub fast float %7643, %7780
  %7782 = fmul fast float %7767, %7716
  %7783 = fadd fast float %7782, %7643
  %7784 = fmul fast float %7779, %7717
  %7785 = fadd fast float %7784, %7644
  %7786 = fmul fast float %7774, %7717
  %7787 = fsub fast float %7644, %7786
  %7788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7781, float %7787, float %7705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7789 = extractvalue %dx.types.ResRet.f32 %7788, 0
  %7790 = extractvalue %dx.types.ResRet.f32 %7788, 1
  %7791 = extractvalue %dx.types.ResRet.f32 %7788, 2
  %7792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7783, float %7787, float %7705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7793 = extractvalue %dx.types.ResRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.ResRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.ResRet.f32 %7792, 2
  %7796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7781, float %7785, float %7705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7797 = extractvalue %dx.types.ResRet.f32 %7796, 0
  %7798 = extractvalue %dx.types.ResRet.f32 %7796, 1
  %7799 = extractvalue %dx.types.ResRet.f32 %7796, 2
  %7800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7783, float %7785, float %7705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7801 = extractvalue %dx.types.ResRet.f32 %7800, 0
  %7802 = extractvalue %dx.types.ResRet.f32 %7800, 1
  %7803 = extractvalue %dx.types.ResRet.f32 %7800, 2
  %7804 = fsub fast float %7797, %7789
  %7805 = fsub fast float %7798, %7790
  %7806 = fsub fast float %7799, %7791
  %7807 = fmul fast float %7804, %7777
  %7808 = fmul fast float %7805, %7777
  %7809 = fmul fast float %7806, %7777
  %7810 = fadd fast float %7807, %7789
  %7811 = fadd fast float %7808, %7790
  %7812 = fadd fast float %7809, %7791
  %7813 = fsub fast float %7801, %7793
  %7814 = fsub fast float %7802, %7794
  %7815 = fsub fast float %7803, %7795
  %7816 = fmul fast float %7813, %7777
  %7817 = fmul fast float %7814, %7777
  %7818 = fmul fast float %7815, %7777
  %7819 = fsub fast float %7793, %7810
  %7820 = fadd fast float %7819, %7816
  %7821 = fsub fast float %7794, %7811
  %7822 = fadd fast float %7821, %7817
  %7823 = fsub fast float %7795, %7812
  %7824 = fadd fast float %7823, %7818
  %7825 = fmul fast float %7820, %7765
  %7826 = fmul fast float %7822, %7765
  %7827 = fmul fast float %7824, %7765
  %7828 = fadd fast float %7825, %7810
  %7829 = fadd fast float %7826, %7811
  %7830 = fadd fast float %7827, %7812
  %7831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7832 = extractvalue %dx.types.CBufRet.f32 %7831, 1
  %7833 = fmul fast float %7828, %7832
  %7834 = fmul fast float %7829, %7832
  %7835 = fmul fast float %7830, %7832
  br label %7836

; <label>:7836                                    ; preds = %7668, %7637
  %7837 = phi float [ %7707, %7668 ], [ 1.000000e+00, %7637 ]
  %7838 = phi float [ %7708, %7668 ], [ 1.000000e+00, %7637 ]
  %7839 = phi float [ %7709, %7668 ], [ 1.000000e+00, %7637 ]
  %7840 = phi float [ %7833, %7668 ], [ 0.000000e+00, %7637 ]
  %7841 = phi float [ %7834, %7668 ], [ 0.000000e+00, %7637 ]
  %7842 = phi float [ %7835, %7668 ], [ 0.000000e+00, %7637 ]
  %7843 = fmul fast float %7840, %7614
  %7844 = fmul fast float %7841, %7614
  %7845 = fmul fast float %7842, %7614
  %7846 = call float @dx.op.dot3.f32(i32 55, float %7837, float %7838, float %7839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7847 = call float @dx.op.dot3.f32(i32 55, float %7843, float %7844, float %7845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7848 = select i1 %223, float %7846, float %7837
  %7849 = select i1 %223, float %7846, float %7838
  %7850 = select i1 %223, float 1.000000e+00, float %7839
  %7851 = select i1 %223, float %7847, float %7843
  %7852 = select i1 %223, float 0.000000e+00, float %7844
  %7853 = select i1 %223, float 0.000000e+00, float %7845
  %7854 = fmul fast float %7848, %7627
  %7855 = fmul fast float %7849, %7628
  %7856 = fmul fast float %7850, %7629
  %7857 = fadd fast float %7854, %7851
  %7858 = fadd fast float %7855, %7852
  %7859 = fadd fast float %7853, %7856
  %7860 = fmul fast float %7848, %7601
  %7861 = fmul fast float %7849, %7602
  %7862 = fmul fast float %7850, %7603
  %7863 = fmul fast float %131, %7639
  %7864 = fmul fast float %133, %7640
  %7865 = fsub fast float 1.000000e+00, %7863
  %7866 = fsub fast float 1.000000e+00, %7864
  %7867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7868 = extractvalue %dx.types.CBufRet.f32 %7867, 0
  %7869 = extractvalue %dx.types.CBufRet.f32 %7867, 1
  %7870 = extractvalue %dx.types.CBufRet.f32 %7867, 2
  %7871 = fmul fast float %7865, %7868
  %7872 = fmul fast float %7865, %7869
  %7873 = fmul fast float %7865, %7870
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 0
  %7876 = extractvalue %dx.types.CBufRet.f32 %7874, 1
  %7877 = extractvalue %dx.types.CBufRet.f32 %7874, 2
  %7878 = fmul fast float %7866, %7875
  %7879 = fmul fast float %7866, %7876
  %7880 = fmul fast float %7866, %7877
  %7881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.f32 %7881, 0
  %7883 = extractvalue %dx.types.CBufRet.f32 %7881, 1
  %7884 = extractvalue %dx.types.CBufRet.f32 %7881, 2
  %7885 = fadd fast float %7878, %7882
  %7886 = fadd fast float %7885, %7871
  %7887 = fadd fast float %7879, %7883
  %7888 = fadd fast float %7887, %7872
  %7889 = fadd fast float %7880, %7884
  %7890 = fadd fast float %7889, %7873
  %7891 = fmul fast float %7886, %183
  %7892 = fmul fast float %7888, %183
  %7893 = fmul fast float %7890, %183
  br label %7894

; <label>:7894                                    ; preds = %7836, %7600
  %7895 = phi float [ %7891, %7836 ], [ %161, %7600 ]
  %7896 = phi float [ %7892, %7836 ], [ %162, %7600 ]
  %7897 = phi float [ %7893, %7836 ], [ %163, %7600 ]
  %7898 = phi float [ %183, %7836 ], [ %93, %7600 ]
  %7899 = phi float [ %7857, %7836 ], [ %7627, %7600 ]
  %7900 = phi float [ %7858, %7836 ], [ %7628, %7600 ]
  %7901 = phi float [ %7859, %7836 ], [ %7629, %7600 ]
  %7902 = phi float [ %7860, %7836 ], [ %7601, %7600 ]
  %7903 = phi float [ %7861, %7836 ], [ %7602, %7600 ]
  %7904 = phi float [ %7862, %7836 ], [ %7603, %7600 ]
  %7905 = phi float [ %7837, %7836 ], [ 1.000000e+00, %7600 ]
  br i1 %7636, label %9060, label %7906

; <label>:7906                                    ; preds = %7894
  %7907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.CBufRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.CBufRet.f32 %7907, 2
  %7911 = extractvalue %dx.types.CBufRet.f32 %7907, 3
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 0
  %7914 = extractvalue %dx.types.CBufRet.f32 %7912, 1
  %7915 = extractvalue %dx.types.CBufRet.f32 %7912, 2
  %7916 = extractvalue %dx.types.CBufRet.f32 %7912, 3
  %7917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7918 = extractvalue %dx.types.CBufRet.f32 %7917, 0
  %7919 = extractvalue %dx.types.CBufRet.f32 %7917, 1
  %7920 = extractvalue %dx.types.CBufRet.f32 %7917, 2
  %7921 = extractvalue %dx.types.CBufRet.f32 %7917, 3
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 0
  %7924 = extractvalue %dx.types.CBufRet.f32 %7922, 1
  %7925 = extractvalue %dx.types.CBufRet.f32 %7922, 2
  %7926 = extractvalue %dx.types.CBufRet.f32 %7922, 3
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 3
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7931 = extractvalue %dx.types.CBufRet.f32 %7929, 0
  %7932 = extractvalue %dx.types.CBufRet.f32 %7929, 1
  %7933 = extractvalue %dx.types.CBufRet.f32 %7929, 2
  %7934 = fcmp fast olt float %7933, -5.000000e-01
  %7935 = call float @dx.op.dot3.f32(i32 55, float %7895, float %7896, float %7897, float %7895, float %7896, float %7897)  ; Dot3(ax,ay,az,bx,by,bz)
  %7936 = call float @dx.op.unary.f32(i32 25, float %7935)  ; Rsqrt(value)
  %7937 = fmul fast float %7936, %7935
  %7938 = fmul fast float %7936, %7895
  %7939 = fmul fast float %7936, %7896
  %7940 = fmul fast float %7936, %7897
  %7941 = fadd fast float %7937, %7911
  %7942 = call float @dx.op.dot3.f32(i32 55, float %7938, float %7939, float %7940, float %7908, float %7909, float %7910)  ; Dot3(ax,ay,az,bx,by,bz)
  %7943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.i32 %7943, 1
  %7945 = and i32 %7944, 1
  %7946 = icmp ne i32 %7945, 0
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 2
  %7949 = fcmp fast ogt float %7948, 0.000000e+00
  %7950 = and i1 %7946, %7949
  br i1 %7950, label %7951, label %8357, !dx.controlflow.hints !122

; <label>:7951                                    ; preds = %7906
  %7952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7953 = extractvalue %dx.types.CBufRet.f32 %7952, 3
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 2
  %7956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7957 = extractvalue %dx.types.CBufRet.f32 %7956, 2
  %7958 = fsub fast float %7955, %7957
  %7959 = and i32 %7944, 2
  %7960 = extractvalue %dx.types.CBufRet.i32 %7943, 0
  %7961 = call i32 @dx.op.binary.i32(i32 40, i32 %7960, i32 3)  ; UMin(a,b)
  %7962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7963 = extractvalue %dx.types.CBufRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.CBufRet.f32 %7962, 1
  %7965 = extractvalue %dx.types.CBufRet.f32 %7956, 0
  %7966 = extractvalue %dx.types.CBufRet.f32 %7956, 1
  %7967 = fsub fast float %7963, %7965
  %7968 = fsub fast float %7964, %7966
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 0
  %7971 = fcmp fast ogt float %7970, 0.000000e+00
  %7972 = fsub fast float -0.000000e+00, %7967
  %7973 = fsub fast float -0.000000e+00, %7968
  %7974 = call float @dx.op.dot2.f32(i32 54, float %7938, float %7939, float %7938, float %7939)  ; Dot2(ax,ay,bx,by)
  %7975 = call float @dx.op.dot2.f32(i32 54, float %7938, float %7939, float %7972, float %7973)  ; Dot2(ax,ay,bx,by)
  %7976 = fmul fast float %7975, 2.000000e+00
  %7977 = call float @dx.op.dot2.f32(i32 54, float %7972, float %7973, float %7972, float %7973)  ; Dot2(ax,ay,bx,by)
  %7978 = fmul fast float %7970, %7970
  %7979 = fsub fast float %7977, %7978
  %7980 = fmul fast float %7976, %7976
  %7981 = fmul fast float %7974, 4.000000e+00
  %7982 = fmul fast float %7981, %7979
  %7983 = fsub fast float %7980, %7982
  %7984 = fcmp fast ogt float %7983, 0.000000e+00
  br i1 %7984, label %7985, label %8000

; <label>:7985                                    ; preds = %7951
  %7986 = fcmp fast ogt float %7976, 0.000000e+00
  %7987 = call float @dx.op.unary.f32(i32 24, float %7983)  ; Sqrt(value)
  %7988 = fsub fast float -0.000000e+00, %7987
  %7989 = select i1 %7986, float %7987, float %7988
  %7990 = fadd fast float %7989, %7976
  %7991 = fmul float %7990, -5.000000e-01
  %7992 = fdiv fast float %7991, %7974
  %7993 = call float @dx.op.binary.f32(i32 35, float %7992, float 0.000000e+00)  ; FMax(a,b)
  %7994 = call float @dx.op.binary.f32(i32 36, float %7937, float %7993)  ; FMin(a,b)
  %7995 = fdiv fast float %7979, %7991
  %7996 = call float @dx.op.binary.f32(i32 35, float %7995, float 0.000000e+00)  ; FMax(a,b)
  %7997 = call float @dx.op.binary.f32(i32 36, float %7937, float %7996)  ; FMin(a,b)
  %7998 = call float @dx.op.binary.f32(i32 36, float %7994, float %7997)  ; FMin(a,b)
  %7999 = call float @dx.op.binary.f32(i32 35, float %7994, float %7997)  ; FMax(a,b)
  br label %8000

; <label>:8000                                    ; preds = %7985, %7951
  %8001 = phi float [ %7999, %7985 ], [ -1.000000e+00, %7951 ]
  %8002 = phi float [ %7998, %7985 ], [ -1.000000e+00, %7951 ]
  %8003 = phi i1 [ true, %7985 ], [ false, %7951 ]
  %8004 = and i1 %7971, %8003
  br i1 %8004, label %8005, label %8007

; <label>:8005                                    ; preds = %8000
  %8006 = fcmp fast oeq float %8002, %8001
  br i1 %8006, label %8310, label %8008

; <label>:8007                                    ; preds = %8000
  br i1 %7971, label %8310, label %8008

; <label>:8008                                    ; preds = %8007, %8005
  %8009 = phi float [ %7937, %8007 ], [ %8001, %8005 ]
  %8010 = phi float [ 0.000000e+00, %8007 ], [ %8002, %8005 ]
  %8011 = icmp ne i32 %7959, 0
  %8012 = fmul fast float %8009, %7940
  %8013 = fadd fast float %8012, %7953
  %8014 = fmul fast float %8013, %8009
  %8015 = select i1 %8011, float 0.000000e+00, float %8014
  %8016 = fcmp fast oeq float %7940, 0.000000e+00
  %8017 = fdiv fast float %7958, %7940
  %8018 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8017)  ; FMax(a,b)
  %8019 = select i1 %8016, float %8009, float %8018
  %8020 = call float @dx.op.binary.f32(i32 36, float %8009, float %8019)  ; FMin(a,b)
  %8021 = fcmp fast ogt float %7940, 0.000000e+00
  %8022 = fcmp fast olt float %7958, 0.000000e+00
  br i1 %8021, label %8023, label %8080

; <label>:8023                                    ; preds = %8008
  %8024 = icmp eq i32 %7959, 0
  br i1 %8022, label %8025, label %8069

; <label>:8025                                    ; preds = %8023
  %8026 = select i1 %8024, float %8009, float 0.000000e+00
  %8027 = fsub fast float -0.000000e+00, %8026
  %8028 = call float @dx.op.unary.f32(i32 6, float %8027)  ; FAbs(value)
  %8029 = fmul fast float %8026, %7940
  %8030 = fadd fast float %8029, %7953
  %8031 = fmul fast float %8028, %8030
  %8032 = fsub fast float %8015, %8031
  %8033 = fsub fast float %8009, %8028
  %8034 = select i1 %8024, float %8033, float 0.000000e+00
  %8035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8036 = extractvalue %dx.types.CBufRet.f32 %8035, 0
  %8037 = extractvalue %dx.types.CBufRet.f32 %8035, 1
  %8038 = extractvalue %dx.types.CBufRet.f32 %8035, 2
  %8039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8040 = extractvalue %dx.types.CBufRet.f32 %8039, 0
  %8041 = extractvalue %dx.types.CBufRet.f32 %8039, 1
  %8042 = extractvalue %dx.types.CBufRet.f32 %8039, 2
  %8043 = extractvalue %dx.types.CBufRet.f32 %8039, 3
  %8044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8045 = extractvalue %dx.types.CBufRet.f32 %8044, 3
  %8046 = call float @dx.op.binary.f32(i32 36, float %8032, float %8045)  ; FMin(a,b)
  %8047 = fmul fast float %8043, %8034
  %8048 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8049 = fsub fast float %8040, %8036
  %8050 = fsub fast float %8041, %8037
  %8051 = fsub fast float %8042, %8038
  %8052 = fmul fast float %8048, %8049
  %8053 = fmul fast float %8048, %8050
  %8054 = fmul fast float %8048, %8051
  %8055 = fadd fast float %8052, %8036
  %8056 = fadd fast float %8053, %8037
  %8057 = fadd fast float %8054, %8038
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.CBufRet.f32 %8058, 1
  %8061 = fadd fast float %8060, %8059
  %8062 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  %8063 = extractvalue %dx.types.CBufRet.f32 %8058, 2
  %8064 = extractvalue %dx.types.CBufRet.f32 %8058, 3
  %8065 = fadd fast float %8064, %8063
  %8066 = call float @dx.op.unary.f32(i32 7, float %8065)  ; Saturate(value)
  %8067 = fmul fast float %8062, %8046
  %8068 = fmul fast float %8067, %8066
  br label %8310

; <label>:8069                                    ; preds = %8023
  br i1 %8024, label %8070, label %8091

; <label>:8070                                    ; preds = %8069
  %8071 = call float @dx.op.binary.f32(i32 36, float %8020, float %8010)  ; FMin(a,b)
  %8072 = fsub fast float %8020, %8071
  %8073 = fsub fast float %8072, %8009
  %8074 = call float @dx.op.unary.f32(i32 6, float %8073)  ; FAbs(value)
  %8075 = fadd fast float %8072, %8009
  %8076 = fmul fast float %8075, %7940
  %8077 = fadd fast float %8076, %7953
  %8078 = fmul fast float %8077, %8074
  %8079 = fsub fast float %8015, %8078
  br label %8091

; <label>:8080                                    ; preds = %8008
  br i1 %8022, label %8081, label %8091

; <label>:8081                                    ; preds = %8080
  %8082 = call float @dx.op.binary.f32(i32 35, float %8010, float %8020)  ; FMax(a,b)
  %8083 = icmp eq i32 %7959, 0
  %8084 = select i1 %8083, float %8020, float 0.000000e+00
  %8085 = fsub fast float -0.000000e+00, %8084
  %8086 = call float @dx.op.unary.f32(i32 6, float %8085)  ; FAbs(value)
  %8087 = fmul fast float %8084, %7940
  %8088 = fadd fast float %8087, %7953
  %8089 = fmul fast float %8086, %8088
  %8090 = fsub fast float %8015, %8089
  br label %8091

; <label>:8091                                    ; preds = %8081, %8080, %8070, %8069
  %8092 = phi float [ %8010, %8069 ], [ %8010, %8070 ], [ %8082, %8081 ], [ %8010, %8080 ]
  %8093 = phi float [ 0.000000e+00, %8069 ], [ %8074, %8070 ], [ %8086, %8081 ], [ 0.000000e+00, %8080 ]
  %8094 = phi float [ %8015, %8069 ], [ %8079, %8070 ], [ %8090, %8081 ], [ %8015, %8080 ]
  %8095 = phi float [ %8020, %8069 ], [ %8020, %8070 ], [ %8009, %8081 ], [ %8009, %8080 ]
  %8096 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8096, align 4, !tbaa !123, !noalias !125
  %8097 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8097, align 4, !tbaa !123, !noalias !125
  %8098 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8098, align 4, !tbaa !123, !noalias !125
  %8099 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8099, align 4, !tbaa !123, !noalias !125
  %8100 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8100, align 4, !tbaa !123, !noalias !125
  %8101 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8101, align 4, !tbaa !123, !noalias !125
  %8102 = icmp sgt i32 %7961, 0
  br i1 %8102, label %8103, label %8164

; <label>:8103                                    ; preds = %8091
  br label %8104

; <label>:8104                                    ; preds = %8153, %8103
  %8105 = phi i32 [ %8154, %8153 ], [ 0, %8103 ]
  %8106 = phi i32 [ %8155, %8153 ], [ 0, %8103 ]
  %8107 = add nuw i32 %8106, 171
  %8108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8107)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8108, 0
  %8110 = extractvalue %dx.types.CBufRet.f32 %8108, 1
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 0
  %8113 = extractvalue %dx.types.CBufRet.f32 %8111, 1
  %8114 = fsub fast float %8109, %8112
  %8115 = fsub fast float %8110, %8113
  %8116 = extractvalue %dx.types.CBufRet.f32 %8108, 2
  %8117 = fsub fast float -0.000000e+00, %8114
  %8118 = fsub fast float -0.000000e+00, %8115
  %8119 = call float @dx.op.dot2.f32(i32 54, float %7938, float %7939, float %8117, float %8118)  ; Dot2(ax,ay,bx,by)
  %8120 = fmul fast float %8119, 2.000000e+00
  %8121 = call float @dx.op.dot2.f32(i32 54, float %8117, float %8118, float %8117, float %8118)  ; Dot2(ax,ay,bx,by)
  %8122 = fmul fast float %8116, %8116
  %8123 = fsub fast float %8121, %8122
  %8124 = fmul fast float %8120, %8120
  %8125 = fmul fast float %7981, %8123
  %8126 = fsub fast float %8124, %8125
  %8127 = fcmp fast ogt float %8126, 0.000000e+00
  br i1 %8127, label %8128, label %8143

; <label>:8128                                    ; preds = %8104
  %8129 = fcmp fast ogt float %8120, 0.000000e+00
  %8130 = call float @dx.op.unary.f32(i32 24, float %8126)  ; Sqrt(value)
  %8131 = fsub fast float -0.000000e+00, %8130
  %8132 = select i1 %8129, float %8130, float %8131
  %8133 = fadd fast float %8132, %8120
  %8134 = fmul float %8133, -5.000000e-01
  %8135 = fdiv fast float %8134, %7974
  %8136 = call float @dx.op.binary.f32(i32 35, float %8135, float 0.000000e+00)  ; FMax(a,b)
  %8137 = call float @dx.op.binary.f32(i32 36, float %8009, float %8136)  ; FMin(a,b)
  %8138 = fdiv fast float %8123, %8134
  %8139 = call float @dx.op.binary.f32(i32 35, float %8138, float 0.000000e+00)  ; FMax(a,b)
  %8140 = call float @dx.op.binary.f32(i32 36, float %8009, float %8139)  ; FMin(a,b)
  %8141 = call float @dx.op.binary.f32(i32 36, float %8137, float %8140)  ; FMin(a,b)
  %8142 = call float @dx.op.binary.f32(i32 35, float %8137, float %8140)  ; FMax(a,b)
  br label %8143

; <label>:8143                                    ; preds = %8128, %8104
  %8144 = phi float [ %8142, %8128 ], [ -1.000000e+00, %8104 ]
  %8145 = phi float [ %8141, %8128 ], [ -1.000000e+00, %8104 ]
  %8146 = phi i1 [ true, %8128 ], [ false, %8104 ]
  br i1 %8146, label %8147, label %8153

; <label>:8147                                    ; preds = %8143
  %8148 = call float @dx.op.binary.f32(i32 35, float %8092, float %8145)  ; FMax(a,b)
  %8149 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8106
  store float %8148, float* %8149, align 4, !tbaa !123, !noalias !125
  %8150 = call float @dx.op.binary.f32(i32 35, float %8092, float %8144)  ; FMax(a,b)
  %8151 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8106
  store float %8150, float* %8151, align 4, !tbaa !123, !noalias !125
  %8152 = add nsw i32 %8105, 1
  br label %8153

; <label>:8153                                    ; preds = %8147, %8143
  %8154 = phi i32 [ %8152, %8147 ], [ %8105, %8143 ]
  %8155 = add nuw nsw i32 %8106, 1
  %8156 = icmp eq i32 %8155, %7961
  br i1 %8156, label %8157, label %8104

; <label>:8157                                    ; preds = %8153
  %8158 = load float, float* %8098, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8159 = load float, float* %8097, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %8160 = load float, float* %8096, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %8161 = load float, float* %8101, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8162 = load float, float* %8100, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %8163 = load float, float* %8099, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %8164

; <label>:8164                                    ; preds = %8157, %8091
  %8165 = phi float [ -1.000000e+00, %8091 ], [ %8163, %8157 ]
  %8166 = phi float [ -1.000000e+00, %8091 ], [ %8162, %8157 ]
  %8167 = phi float [ -1.000000e+00, %8091 ], [ %8161, %8157 ]
  %8168 = phi float [ -1.000000e+00, %8091 ], [ %8160, %8157 ]
  %8169 = phi float [ -1.000000e+00, %8091 ], [ %8159, %8157 ]
  %8170 = phi float [ -1.000000e+00, %8091 ], [ %8158, %8157 ]
  %8171 = phi i32 [ 0, %8091 ], [ %8154, %8157 ]
  %8172 = call float @dx.op.binary.f32(i32 36, float %8169, float %8170)  ; FMin(a,b)
  %8173 = call float @dx.op.binary.f32(i32 36, float %8168, float %8172)  ; FMin(a,b)
  %8174 = call float @dx.op.binary.f32(i32 35, float %8168, float %8169)  ; FMax(a,b)
  %8175 = call float @dx.op.binary.f32(i32 36, float %8174, float %8170)  ; FMin(a,b)
  %8176 = call float @dx.op.binary.f32(i32 36, float %8168, float %8169)  ; FMin(a,b)
  %8177 = call float @dx.op.binary.f32(i32 35, float %8176, float %8175)  ; FMax(a,b)
  %8178 = call float @dx.op.binary.f32(i32 35, float %8169, float %8170)  ; FMax(a,b)
  %8179 = call float @dx.op.binary.f32(i32 35, float %8168, float %8178)  ; FMax(a,b)
  store float %8173, float* %8096, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %8177, float* %8097, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %8179, float* %8098, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8180 = call float @dx.op.binary.f32(i32 36, float %8166, float %8167)  ; FMin(a,b)
  %8181 = call float @dx.op.binary.f32(i32 36, float %8165, float %8180)  ; FMin(a,b)
  %8182 = call float @dx.op.binary.f32(i32 35, float %8165, float %8166)  ; FMax(a,b)
  %8183 = call float @dx.op.binary.f32(i32 36, float %8182, float %8167)  ; FMin(a,b)
  %8184 = call float @dx.op.binary.f32(i32 36, float %8165, float %8166)  ; FMin(a,b)
  %8185 = call float @dx.op.binary.f32(i32 35, float %8184, float %8183)  ; FMax(a,b)
  %8186 = call float @dx.op.binary.f32(i32 35, float %8166, float %8167)  ; FMax(a,b)
  %8187 = call float @dx.op.binary.f32(i32 35, float %8165, float %8186)  ; FMax(a,b)
  store float %8181, float* %8099, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %8185, float* %8100, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %8187, float* %8101, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8188 = sub nsw i32 3, %8171
  %8189 = icmp sgt i32 %8188, 2
  br i1 %8189, label %8190, label %8228

; <label>:8190                                    ; preds = %8164
  %8191 = icmp eq i32 %7959, 0
  %8192 = fsub fast float %8009, %8093
  %8193 = select i1 %8191, float %8192, float %8093
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 0
  %8196 = extractvalue %dx.types.CBufRet.f32 %8194, 1
  %8197 = extractvalue %dx.types.CBufRet.f32 %8194, 2
  %8198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.CBufRet.f32 %8198, 1
  %8201 = extractvalue %dx.types.CBufRet.f32 %8198, 2
  %8202 = extractvalue %dx.types.CBufRet.f32 %8198, 3
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 3
  %8205 = call float @dx.op.binary.f32(i32 36, float %8094, float %8204)  ; FMin(a,b)
  %8206 = fmul fast float %8202, %8193
  %8207 = call float @dx.op.unary.f32(i32 7, float %8206)  ; Saturate(value)
  %8208 = fsub fast float %8199, %8195
  %8209 = fsub fast float %8200, %8196
  %8210 = fsub fast float %8201, %8197
  %8211 = fmul fast float %8207, %8208
  %8212 = fmul fast float %8207, %8209
  %8213 = fmul fast float %8207, %8210
  %8214 = fadd fast float %8211, %8195
  %8215 = fadd fast float %8212, %8196
  %8216 = fadd fast float %8213, %8197
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 0
  %8219 = extractvalue %dx.types.CBufRet.f32 %8217, 1
  %8220 = fadd fast float %8219, %8218
  %8221 = call float @dx.op.unary.f32(i32 7, float %8220)  ; Saturate(value)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8217, 2
  %8223 = extractvalue %dx.types.CBufRet.f32 %8217, 3
  %8224 = fadd fast float %8223, %8222
  %8225 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8226 = fmul fast float %8221, %8205
  %8227 = fmul fast float %8226, %8225
  br label %8310

; <label>:8228                                    ; preds = %8164
  %8229 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8188
  %8230 = load float, float* %8229, align 4, !tbaa !123, !noalias !125
  %8231 = fcmp fast olt float %8230, %8095
  %8232 = icmp sgt i32 %8171, 0
  %8233 = and i1 %8232, %8231
  br i1 %8233, label %8234, label %8271

; <label>:8234                                    ; preds = %8228
  br label %8235

; <label>:8235                                    ; preds = %8264, %8234
  %8236 = phi float [ %8265, %8264 ], [ %8093, %8234 ]
  %8237 = phi float [ %8266, %8264 ], [ %8094, %8234 ]
  %8238 = phi float [ %8246, %8264 ], [ %8230, %8234 ]
  %8239 = phi i32 [ %8243, %8264 ], [ %8188, %8234 ]
  %8240 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8239
  %8241 = load float, float* %8240, align 4, !tbaa !123, !noalias !125
  %8242 = icmp slt i32 %8239, 2
  %8243 = add nsw i32 %8239, 1
  %8244 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8243
  %8245 = load float, float* %8244, align 4, !tbaa !123, !noalias !125
  %8246 = select i1 %8242, float %8245, float %8009
  %8247 = call float @dx.op.binary.f32(i32 36, float %8246, float %8241)  ; FMin(a,b)
  %8248 = call float @dx.op.binary.f32(i32 36, float %8095, float %8247)  ; FMin(a,b)
  %8249 = icmp eq i32 %7959, 0
  %8250 = fadd fast float %8248, %8238
  %8251 = fmul fast float %8250, %7940
  %8252 = fadd fast float %8251, %7953
  br i1 %8249, label %8258, label %8253

; <label>:8253                                    ; preds = %8235
  %8254 = fsub fast float %8248, %8238
  %8255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8254)  ; FMax(a,b)
  %8256 = fmul fast float %8255, %8252
  %8257 = fadd fast float %8256, %8237
  br label %8264

; <label>:8258                                    ; preds = %8235
  %8259 = fsub fast float %8238, %8248
  %8260 = call float @dx.op.unary.f32(i32 6, float %8259)  ; FAbs(value)
  %8261 = fadd fast float %8260, %8236
  %8262 = fmul fast float %8260, %8252
  %8263 = fsub fast float %8237, %8262
  br label %8264

; <label>:8264                                    ; preds = %8258, %8253
  %8265 = phi float [ %8255, %8253 ], [ %8261, %8258 ]
  %8266 = phi float [ %8257, %8253 ], [ %8263, %8258 ]
  %8267 = fcmp fast olt float %8246, %8095
  %8268 = icmp slt i32 %8243, 3
  %8269 = and i1 %8268, %8267
  br i1 %8269, label %8235, label %8270

; <label>:8270                                    ; preds = %8264
  br label %8271

; <label>:8271                                    ; preds = %8270, %8228
  %8272 = phi float [ %8093, %8228 ], [ %8265, %8270 ]
  %8273 = phi float [ %8094, %8228 ], [ %8266, %8270 ]
  %8274 = fsub fast float %8009, %8272
  %8275 = select i1 %8011, float %8272, float %8274
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8280, 0
  %8282 = extractvalue %dx.types.CBufRet.f32 %8280, 1
  %8283 = extractvalue %dx.types.CBufRet.f32 %8280, 2
  %8284 = extractvalue %dx.types.CBufRet.f32 %8280, 3
  %8285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.f32 %8285, 3
  %8287 = call float @dx.op.binary.f32(i32 36, float %8273, float %8286)  ; FMin(a,b)
  %8288 = fmul fast float %8284, %8275
  %8289 = call float @dx.op.unary.f32(i32 7, float %8288)  ; Saturate(value)
  %8290 = fsub fast float %8281, %8277
  %8291 = fsub fast float %8282, %8278
  %8292 = fsub fast float %8283, %8279
  %8293 = fmul fast float %8289, %8290
  %8294 = fmul fast float %8289, %8291
  %8295 = fmul fast float %8289, %8292
  %8296 = fadd fast float %8293, %8277
  %8297 = fadd fast float %8294, %8278
  %8298 = fadd fast float %8295, %8279
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 0
  %8301 = extractvalue %dx.types.CBufRet.f32 %8299, 1
  %8302 = fadd fast float %8301, %8300
  %8303 = call float @dx.op.unary.f32(i32 7, float %8302)  ; Saturate(value)
  %8304 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8305 = extractvalue %dx.types.CBufRet.f32 %8299, 3
  %8306 = fadd fast float %8305, %8304
  %8307 = call float @dx.op.unary.f32(i32 7, float %8306)  ; Saturate(value)
  %8308 = fmul fast float %8303, %8287
  %8309 = fmul fast float %8308, %8307
  br label %8310

; <label>:8310                                    ; preds = %8271, %8190, %8025, %8007, %8005
  %8311 = phi float [ %8034, %8025 ], [ %8193, %8190 ], [ %8275, %8271 ], [ 0.000000e+00, %8005 ], [ 0.000000e+00, %8007 ]
  %8312 = phi float [ %8068, %8025 ], [ %8227, %8190 ], [ %8309, %8271 ], [ 0.000000e+00, %8005 ], [ 0.000000e+00, %8007 ]
  %8313 = phi float [ %8055, %8025 ], [ %8214, %8190 ], [ %8296, %8271 ], [ 0.000000e+00, %8005 ], [ 0.000000e+00, %8007 ]
  %8314 = phi float [ %8056, %8025 ], [ %8215, %8190 ], [ %8297, %8271 ], [ 0.000000e+00, %8005 ], [ 0.000000e+00, %8007 ]
  %8315 = phi float [ %8057, %8025 ], [ %8216, %8190 ], [ %8298, %8271 ], [ 0.000000e+00, %8005 ], [ 0.000000e+00, %8007 ]
  %8316 = fmul fast float %7948, %8312
  %8317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.f32 %8317, 2
  %8319 = fsub fast float %7955, %8318
  %8320 = fcmp fast olt float %8316, -2.000000e+01
  %8321 = call float @dx.op.unary.f32(i32 21, float %8316)  ; Exp(value)
  %8322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8323 = extractvalue %dx.types.CBufRet.f32 %8322, 2
  %8324 = extractvalue %dx.types.CBufRet.f32 %8322, 3
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 2
  %8327 = fmul fast float %8324, %8319
  %8328 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  %8329 = fsub fast float 1.000000e+00, %8328
  %8330 = fmul fast float %7940, 5.000000e-01
  %8331 = fadd fast float %8330, 5.000000e-01
  %8332 = call float @dx.op.unary.f32(i32 7, float %8331)  ; Saturate(value)
  %8333 = fsub fast float 1.000000e+00, %8332
  %8334 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8329)  ; FMax(a,b)
  %8335 = fdiv fast float %8333, %8334
  %8336 = fsub fast float %8319, %7897
  %8337 = call float @dx.op.unary.f32(i32 6, float %8336)  ; FAbs(value)
  %8338 = fmul fast float %8337, %8323
  %8339 = call float @dx.op.unary.f32(i32 7, float %8335)  ; Saturate(value)
  %8340 = fsub fast float 1.000000e+00, %8338
  %8341 = fmul fast float %8340, %8339
  %8342 = fadd fast float %8341, %8338
  %8343 = fmul fast float %8326, %8319
  %8344 = call float @dx.op.unary.f32(i32 7, float %8343)  ; Saturate(value)
  %8345 = fsub fast float 1.000000e+00, %8342
  %8346 = fmul fast float %8345, %8344
  %8347 = fadd fast float %8346, %8342
  %8348 = call float @dx.op.unary.f32(i32 7, float %8347)  ; Saturate(value)
  %8349 = fadd fast float %8321, -1.000000e+00
  %8350 = select i1 %8320, float -1.000000e+00, float %8349
  %8351 = fmul fast float %8348, %8350
  %8352 = fadd fast float %8351, 1.000000e+00
  %8353 = fsub fast float -0.000000e+00, %8351
  %8354 = fmul fast float %8313, %8353
  %8355 = fmul fast float %8314, %8353
  %8356 = fmul fast float %8315, %8353
  br label %8357

; <label>:8357                                    ; preds = %8310, %7906
  %8358 = phi float [ %8311, %8310 ], [ 0.000000e+00, %7906 ]
  %8359 = phi float [ %8352, %8310 ], [ 1.000000e+00, %7906 ]
  %8360 = phi float [ %8354, %8310 ], [ 0.000000e+00, %7906 ]
  %8361 = phi float [ %8355, %8310 ], [ 0.000000e+00, %7906 ]
  %8362 = phi float [ %8356, %8310 ], [ 0.000000e+00, %7906 ]
  %8363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.f32 %8363, 1
  %8365 = fsub fast float 1.000000e+00, %8359
  %8366 = fmul fast float %8365, %7941
  %8367 = fmul fast float %8366, %8364
  %8368 = fsub fast float %7941, %8367
  br i1 %7934, label %8369, label %8398, !dx.controlflow.hints !161

; <label>:8369                                    ; preds = %8357
  %8370 = fmul fast float %7942, %7931
  %8371 = fadd fast float %8370, %7932
  %8372 = call float @dx.op.unary.f32(i32 7, float %8371)  ; Saturate(value)
  %8373 = fmul fast float %7913, %8368
  %8374 = fsub fast float -0.000000e+00, %8373
  %8375 = fmul fast float %7914, %8368
  %8376 = fsub fast float -0.000000e+00, %8375
  %8377 = call float @dx.op.unary.f32(i32 21, float %8374)  ; Exp(value)
  %8378 = call float @dx.op.unary.f32(i32 21, float %8376)  ; Exp(value)
  %8379 = call float @dx.op.binary.f32(i32 35, float %7921, float %8377)  ; FMax(a,b)
  %8380 = call float @dx.op.binary.f32(i32 35, float %7921, float %8378)  ; FMax(a,b)
  %8381 = fsub fast float %8380, %8379
  %8382 = fmul fast float %8381, %8372
  %8383 = fadd fast float %8382, %8379
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = fsub fast float %7918, %7923
  %8386 = fsub fast float %7919, %7924
  %8387 = fsub fast float %7920, %7925
  %8388 = fmul fast float %8372, %8385
  %8389 = fmul fast float %8372, %8386
  %8390 = fmul fast float %8372, %8387
  %8391 = fadd fast float %8388, %7923
  %8392 = fadd fast float %8389, %7924
  %8393 = fadd fast float %8390, %7925
  %8394 = fsub fast float 1.000000e+00, %8384
  %8395 = fmul fast float %8394, %8391
  %8396 = fmul fast float %8394, %8392
  %8397 = fmul fast float %8394, %8393
  br label %8457

; <label>:8398                                    ; preds = %8357
  %8399 = fmul fast float %8368, %7930
  %8400 = call float @dx.op.unary.f32(i32 7, float %8399)  ; Saturate(value)
  %8401 = fsub fast float 2.000000e+00, %8400
  %8402 = fmul fast float %8400, 9.921875e-01
  %8403 = fmul fast float %8402, %8401
  %8404 = fadd fast float %8403, 3.906250e-03
  %8405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8404, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8406 = extractvalue %dx.types.ResRet.f32 %8405, 0
  %8407 = fsub fast float %8400, %8406
  %8408 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8407)  ; FMax(a,b)
  %8409 = fmul fast float %7916, %7897
  %8410 = call float @dx.op.unary.f32(i32 6, float %8409)  ; FAbs(value)
  %8411 = fcmp fast ogt float %8410, 0x3EB0C6F7A0000000
  br i1 %8411, label %8412, label %8418, !dx.controlflow.hints !162

; <label>:8412                                    ; preds = %8398
  %8413 = fmul fast float %8409, 0xBFF7154760000000
  %8414 = call float @dx.op.unary.f32(i32 21, float %8413)  ; Exp(value)
  %8415 = fsub fast float 1.000000e+00, %8414
  %8416 = fdiv fast float %8415, %8409
  %8417 = fmul fast float %8416, %7926
  br label %8418

; <label>:8418                                    ; preds = %8412, %8398
  %8419 = phi float [ %8417, %8412 ], [ %7926, %8398 ]
  %8420 = fadd fast float %8419, %7928
  %8421 = fmul fast float %8420, %8408
  %8422 = fmul fast float %7913, %8421
  %8423 = fsub fast float -0.000000e+00, %8422
  %8424 = fmul fast float %7914, %8421
  %8425 = fsub fast float -0.000000e+00, %8424
  %8426 = fmul fast float %7915, %8421
  %8427 = fsub fast float -0.000000e+00, %8426
  %8428 = call float @dx.op.unary.f32(i32 21, float %8423)  ; Exp(value)
  %8429 = call float @dx.op.unary.f32(i32 21, float %8425)  ; Exp(value)
  %8430 = call float @dx.op.unary.f32(i32 21, float %8427)  ; Exp(value)
  %8431 = fmul fast float %7942, %7942
  %8432 = fadd fast float %8431, 1.000000e+00
  %8433 = fmul fast float %8432, 0x3FAE8EC8A0000000
  %8434 = fmul fast float %8433, %7923
  %8435 = fmul fast float %8433, %7924
  %8436 = fmul fast float %8433, %7925
  %8437 = fmul fast float %7942, %7921
  %8438 = fsub fast float 1.000000e+00, %8437
  %8439 = fmul fast float %7921, %7921
  %8440 = fsub fast float 1.000000e+00, %8439
  %8441 = fmul fast float %8440, 0x3FB45F3060000000
  %8442 = fmul fast float %8438, %8438
  %8443 = fdiv fast float 1.000000e+00, %8442
  %8444 = fmul fast float %8441, %8443
  %8445 = fmul fast float %8444, %7918
  %8446 = fmul fast float %8444, %7919
  %8447 = fmul fast float %8444, %7920
  %8448 = fadd fast float %8445, %8434
  %8449 = fadd fast float %8446, %8435
  %8450 = fadd fast float %8447, %8436
  %8451 = fsub fast float 1.000000e+00, %8428
  %8452 = fsub fast float 1.000000e+00, %8429
  %8453 = fsub fast float 1.000000e+00, %8430
  %8454 = fmul fast float %8448, %8451
  %8455 = fmul fast float %8449, %8452
  %8456 = fmul fast float %8450, %8453
  br label %8457

; <label>:8457                                    ; preds = %8418, %8369
  %8458 = phi float [ %8395, %8369 ], [ %8454, %8418 ]
  %8459 = phi float [ %8396, %8369 ], [ %8455, %8418 ]
  %8460 = phi float [ %8397, %8369 ], [ %8456, %8418 ]
  %8461 = phi float [ %8384, %8369 ], [ %8428, %8418 ]
  %8462 = phi float [ %8384, %8369 ], [ %8429, %8418 ]
  %8463 = phi float [ %8384, %8369 ], [ %8430, %8418 ]
  br i1 %7950, label %8464, label %8662, !dx.controlflow.hints !163

; <label>:8464                                    ; preds = %8457
  %8465 = extractvalue %dx.types.CBufRet.f32 %8363, 0
  %8466 = fmul fast float %8465, %8365
  %8467 = fsub fast float %8360, %8458
  %8468 = fsub fast float %8361, %8459
  %8469 = fsub fast float %8362, %8460
  %8470 = fmul fast float %8466, %8467
  %8471 = fmul fast float %8466, %8468
  %8472 = fmul fast float %8466, %8469
  %8473 = fadd fast float %8470, %8458
  %8474 = fadd fast float %8471, %8459
  %8475 = fadd fast float %8472, %8460
  %8476 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8461)  ; FMax(a,b)
  %8477 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8462)  ; FMax(a,b)
  %8478 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8463)  ; FMax(a,b)
  %8479 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8359)  ; FMax(a,b)
  %8480 = call float @dx.op.binary.f32(i32 35, float %8358, float %8368)  ; FMax(a,b)
  %8481 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8480)  ; FMax(a,b)
  %8482 = fdiv fast float %8358, %8481
  %8483 = call float @dx.op.unary.f32(i32 7, float %8482)  ; Saturate(value)
  %8484 = fdiv fast float %8368, %8481
  %8485 = call float @dx.op.unary.f32(i32 7, float %8484)  ; Saturate(value)
  %8486 = fcmp fast une float %8479, 1.000000e+00
  br i1 %8486, label %8487, label %8500, !dx.controlflow.hints !164

; <label>:8487                                    ; preds = %8464
  %8488 = call float @dx.op.unary.f32(i32 23, float %8479)  ; Log(value)
  %8489 = fmul fast float %8488, 0x3FE62E4300000000
  %8490 = fmul fast float %8360, %8489
  %8491 = fsub fast float -0.000000e+00, %8490
  %8492 = fmul fast float %8361, %8489
  %8493 = fsub fast float -0.000000e+00, %8492
  %8494 = fmul fast float %8362, %8489
  %8495 = fsub fast float -0.000000e+00, %8494
  %8496 = fsub fast float 1.000000e+00, %8479
  %8497 = fdiv fast float %8491, %8496
  %8498 = fdiv fast float %8493, %8496
  %8499 = fdiv fast float %8495, %8496
  br label %8500

; <label>:8500                                    ; preds = %8487, %8464
  %8501 = phi float [ %8497, %8487 ], [ %8360, %8464 ]
  %8502 = phi float [ %8498, %8487 ], [ %8361, %8464 ]
  %8503 = phi float [ %8499, %8487 ], [ %8362, %8464 ]
  %8504 = phi float [ %8489, %8487 ], [ 0.000000e+00, %8464 ]
  %8505 = fcmp fast une float %8476, 1.000000e+00
  br i1 %8505, label %8506, label %8513, !dx.controlflow.hints !165

; <label>:8506                                    ; preds = %8500
  %8507 = call float @dx.op.unary.f32(i32 23, float %8476)  ; Log(value)
  %8508 = fmul fast float %8507, 0x3FE62E4300000000
  %8509 = fmul fast float %8473, %8508
  %8510 = fsub fast float -0.000000e+00, %8509
  %8511 = fsub fast float 1.000000e+00, %8476
  %8512 = fdiv fast float %8510, %8511
  br label %8513

; <label>:8513                                    ; preds = %8506, %8500
  %8514 = phi float [ %8512, %8506 ], [ %8473, %8500 ]
  %8515 = phi float [ %8508, %8506 ], [ 0.000000e+00, %8500 ]
  %8516 = fcmp fast une float %8477, 1.000000e+00
  br i1 %8516, label %8517, label %8524, !dx.controlflow.hints !165

; <label>:8517                                    ; preds = %8513
  %8518 = call float @dx.op.unary.f32(i32 23, float %8477)  ; Log(value)
  %8519 = fmul fast float %8518, 0x3FE62E4300000000
  %8520 = fmul fast float %8474, %8519
  %8521 = fsub fast float -0.000000e+00, %8520
  %8522 = fsub fast float 1.000000e+00, %8477
  %8523 = fdiv fast float %8521, %8522
  br label %8524

; <label>:8524                                    ; preds = %8517, %8513
  %8525 = phi float [ %8523, %8517 ], [ %8474, %8513 ]
  %8526 = phi float [ %8519, %8517 ], [ 0.000000e+00, %8513 ]
  %8527 = fcmp fast une float %8478, 1.000000e+00
  br i1 %8527, label %8528, label %8535, !dx.controlflow.hints !165

; <label>:8528                                    ; preds = %8524
  %8529 = call float @dx.op.unary.f32(i32 23, float %8478)  ; Log(value)
  %8530 = fmul fast float %8529, 0x3FE62E4300000000
  %8531 = fmul fast float %8475, %8530
  %8532 = fsub fast float -0.000000e+00, %8531
  %8533 = fsub fast float 1.000000e+00, %8478
  %8534 = fdiv fast float %8532, %8533
  br label %8535

; <label>:8535                                    ; preds = %8528, %8524
  %8536 = phi float [ %8534, %8528 ], [ %8475, %8524 ]
  %8537 = phi float [ %8530, %8528 ], [ 0.000000e+00, %8524 ]
  %8538 = fmul fast float %8501, %8485
  %8539 = fmul fast float %8502, %8485
  %8540 = fmul fast float %8503, %8485
  %8541 = fmul fast float %8504, %8485
  %8542 = fmul fast float %8514, %8483
  %8543 = fmul fast float %8525, %8483
  %8544 = fmul fast float %8536, %8483
  %8545 = fmul fast float %8515, %8483
  %8546 = fmul fast float %8526, %8483
  %8547 = fmul fast float %8537, %8483
  %8548 = fadd fast float %8542, %8538
  %8549 = fadd fast float %8543, %8539
  %8550 = fadd fast float %8544, %8540
  %8551 = fadd fast float %8545, %8541
  %8552 = fadd fast float %8546, %8541
  %8553 = fadd fast float %8547, %8541
  %8554 = fcmp fast une float %8551, 0.000000e+00
  br i1 %8554, label %8555, label %8562, !dx.controlflow.hints !166

; <label>:8555                                    ; preds = %8535
  %8556 = fmul fast float %8551, 0x3FF7154760000000
  %8557 = call float @dx.op.unary.f32(i32 21, float %8556)  ; Exp(value)
  %8558 = fsub fast float 1.000000e+00, %8557
  %8559 = fmul fast float %8548, %8558
  %8560 = fsub fast float -0.000000e+00, %8559
  %8561 = fdiv fast float %8560, %8551
  br label %8562

; <label>:8562                                    ; preds = %8555, %8535
  %8563 = phi float [ %8557, %8555 ], [ 1.000000e+00, %8535 ]
  %8564 = phi float [ %8561, %8555 ], [ %8548, %8535 ]
  %8565 = fcmp fast une float %8552, 0.000000e+00
  br i1 %8565, label %8566, label %8573, !dx.controlflow.hints !166

; <label>:8566                                    ; preds = %8562
  %8567 = fmul fast float %8552, 0x3FF7154760000000
  %8568 = call float @dx.op.unary.f32(i32 21, float %8567)  ; Exp(value)
  %8569 = fsub fast float 1.000000e+00, %8568
  %8570 = fmul fast float %8549, %8569
  %8571 = fsub fast float -0.000000e+00, %8570
  %8572 = fdiv fast float %8571, %8552
  br label %8573

; <label>:8573                                    ; preds = %8566, %8562
  %8574 = phi float [ %8568, %8566 ], [ 1.000000e+00, %8562 ]
  %8575 = phi float [ %8572, %8566 ], [ %8549, %8562 ]
  %8576 = fcmp fast une float %8553, 0.000000e+00
  br i1 %8576, label %8577, label %8584, !dx.controlflow.hints !166

; <label>:8577                                    ; preds = %8573
  %8578 = fmul fast float %8553, 0x3FF7154760000000
  %8579 = call float @dx.op.unary.f32(i32 21, float %8578)  ; Exp(value)
  %8580 = fsub fast float 1.000000e+00, %8579
  %8581 = fmul fast float %8550, %8580
  %8582 = fsub fast float -0.000000e+00, %8581
  %8583 = fdiv fast float %8582, %8553
  br label %8584

; <label>:8584                                    ; preds = %8577, %8573
  %8585 = phi float [ %8579, %8577 ], [ 1.000000e+00, %8573 ]
  %8586 = phi float [ %8583, %8577 ], [ %8550, %8573 ]
  %8587 = fcmp fast ogt float %8483, %8485
  br i1 %8587, label %8588, label %8608

; <label>:8588                                    ; preds = %8584
  %8589 = fsub fast float 1.000000e+00, %8485
  %8590 = fmul fast float %8501, %8589
  %8591 = fmul fast float %8502, %8589
  %8592 = fmul fast float %8503, %8589
  %8593 = fmul fast float %8504, %8589
  %8594 = fcmp fast une float %8593, 0.000000e+00
  br i1 %8594, label %8595, label %8646, !dx.controlflow.hints !167

; <label>:8595                                    ; preds = %8588
  %8596 = fmul fast float %8593, 0x3FF7154760000000
  %8597 = call float @dx.op.unary.f32(i32 21, float %8596)  ; Exp(value)
  %8598 = fsub fast float 1.000000e+00, %8597
  %8599 = fmul fast float %8590, %8598
  %8600 = fsub fast float -0.000000e+00, %8599
  %8601 = fmul fast float %8591, %8598
  %8602 = fsub fast float -0.000000e+00, %8601
  %8603 = fmul fast float %8592, %8598
  %8604 = fsub fast float -0.000000e+00, %8603
  %8605 = fdiv fast float %8600, %8593
  %8606 = fdiv fast float %8602, %8593
  %8607 = fdiv fast float %8604, %8593
  br label %8646

; <label>:8608                                    ; preds = %8584
  %8609 = fsub fast float 1.000000e+00, %8483
  %8610 = fmul fast float %8514, %8609
  %8611 = fmul fast float %8525, %8609
  %8612 = fmul fast float %8536, %8609
  %8613 = fmul fast float %8515, %8609
  %8614 = fmul fast float %8526, %8609
  %8615 = fmul fast float %8537, %8609
  %8616 = fcmp fast une float %8613, 0.000000e+00
  br i1 %8616, label %8617, label %8624, !dx.controlflow.hints !166

; <label>:8617                                    ; preds = %8608
  %8618 = fmul fast float %8613, 0x3FF7154760000000
  %8619 = call float @dx.op.unary.f32(i32 21, float %8618)  ; Exp(value)
  %8620 = fsub fast float 1.000000e+00, %8619
  %8621 = fmul fast float %8610, %8620
  %8622 = fsub fast float -0.000000e+00, %8621
  %8623 = fdiv fast float %8622, %8613
  br label %8624

; <label>:8624                                    ; preds = %8617, %8608
  %8625 = phi float [ %8623, %8617 ], [ %8610, %8608 ]
  %8626 = phi float [ %8619, %8617 ], [ 1.000000e+00, %8608 ]
  %8627 = fcmp fast une float %8614, 0.000000e+00
  br i1 %8627, label %8628, label %8635, !dx.controlflow.hints !166

; <label>:8628                                    ; preds = %8624
  %8629 = fmul fast float %8614, 0x3FF7154760000000
  %8630 = call float @dx.op.unary.f32(i32 21, float %8629)  ; Exp(value)
  %8631 = fsub fast float 1.000000e+00, %8630
  %8632 = fmul fast float %8611, %8631
  %8633 = fsub fast float -0.000000e+00, %8632
  %8634 = fdiv fast float %8633, %8614
  br label %8635

; <label>:8635                                    ; preds = %8628, %8624
  %8636 = phi float [ %8634, %8628 ], [ %8611, %8624 ]
  %8637 = phi float [ %8630, %8628 ], [ 1.000000e+00, %8624 ]
  %8638 = fcmp fast une float %8615, 0.000000e+00
  br i1 %8638, label %8639, label %8646, !dx.controlflow.hints !166

; <label>:8639                                    ; preds = %8635
  %8640 = fmul fast float %8615, 0x3FF7154760000000
  %8641 = call float @dx.op.unary.f32(i32 21, float %8640)  ; Exp(value)
  %8642 = fsub fast float 1.000000e+00, %8641
  %8643 = fmul fast float %8612, %8642
  %8644 = fsub fast float -0.000000e+00, %8643
  %8645 = fdiv fast float %8644, %8615
  br label %8646

; <label>:8646                                    ; preds = %8639, %8635, %8595, %8588
  %8647 = phi float [ %8645, %8639 ], [ %8607, %8595 ], [ %8592, %8588 ], [ %8612, %8635 ]
  %8648 = phi float [ %8636, %8639 ], [ %8606, %8595 ], [ %8591, %8588 ], [ %8636, %8635 ]
  %8649 = phi float [ %8625, %8639 ], [ %8605, %8595 ], [ %8590, %8588 ], [ %8625, %8635 ]
  %8650 = phi float [ %8641, %8639 ], [ %8597, %8595 ], [ 1.000000e+00, %8588 ], [ 1.000000e+00, %8635 ]
  %8651 = phi float [ %8637, %8639 ], [ %8597, %8595 ], [ 1.000000e+00, %8588 ], [ %8637, %8635 ]
  %8652 = phi float [ %8626, %8639 ], [ %8597, %8595 ], [ 1.000000e+00, %8588 ], [ %8626, %8635 ]
  %8653 = fmul fast float %8652, %8564
  %8654 = fmul fast float %8651, %8575
  %8655 = fmul fast float %8650, %8586
  %8656 = fadd fast float %8653, %8649
  %8657 = fadd fast float %8654, %8648
  %8658 = fadd fast float %8655, %8647
  %8659 = fmul fast float %8652, %8563
  %8660 = fmul fast float %8651, %8574
  %8661 = fmul fast float %8650, %8585
  br label %8662

; <label>:8662                                    ; preds = %8646, %8457
  %8663 = phi float [ %8661, %8646 ], [ %8463, %8457 ]
  %8664 = phi float [ %8660, %8646 ], [ %8462, %8457 ]
  %8665 = phi float [ %8659, %8646 ], [ %8461, %8457 ]
  %8666 = phi float [ %8658, %8646 ], [ %8460, %8457 ]
  %8667 = phi float [ %8657, %8646 ], [ %8459, %8457 ]
  %8668 = phi float [ %8656, %8646 ], [ %8458, %8457 ]
  %8669 = fmul fast float %8668, %7614
  %8670 = fmul fast float %8667, %7614
  %8671 = fmul fast float %8666, %7614
  %8672 = fmul fast float %8665, %7905
  %8673 = call float @dx.op.dot3.f32(i32 55, float %8665, float %8664, float %8663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8674 = call float @dx.op.dot3.f32(i32 55, float %8669, float %8670, float %8671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8675 = select i1 %223, float %8673, float %8665
  %8676 = select i1 %223, float %8673, float %8664
  %8677 = select i1 %223, float 1.000000e+00, float %8663
  %8678 = select i1 %223, float %8674, float %8669
  %8679 = select i1 %223, float 0.000000e+00, float %8670
  %8680 = select i1 %223, float 0.000000e+00, float %8671
  %8681 = fmul fast float %8675, %7899
  %8682 = fmul fast float %8676, %7900
  %8683 = fmul fast float %8677, %7901
  %8684 = fadd fast float %8681, %8678
  %8685 = fadd fast float %8682, %8679
  %8686 = fadd fast float %8680, %8683
  %8687 = fmul fast float %8675, %7902
  %8688 = fmul fast float %8676, %7903
  %8689 = fmul fast float %8677, %7904
  %8690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8691 = extractvalue %dx.types.CBufRet.i32 %8690, 0
  %8692 = icmp eq i32 %8691, 0
  br i1 %8692, label %9060, label %8693, !dx.controlflow.hints !168

; <label>:8693                                    ; preds = %8662
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 2
  %8696 = extractvalue %dx.types.CBufRet.f32 %8694, 3
  %8697 = fmul fast float %8695, %102
  %8698 = fmul fast float %8696, %103
  %8699 = fmul fast float %8697, 2.000000e+00
  %8700 = fmul fast float %8698, 2.000000e+00
  %8701 = fsub fast float 1.000000e+00, %8699
  %8702 = fsub fast float 1.000000e+00, %8700
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.CBufRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.CBufRet.f32 %8703, 2
  %8707 = fmul fast float %8701, %8704
  %8708 = fmul fast float %8701, %8705
  %8709 = fmul fast float %8701, %8706
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 0
  %8712 = extractvalue %dx.types.CBufRet.f32 %8710, 1
  %8713 = extractvalue %dx.types.CBufRet.f32 %8710, 2
  %8714 = fmul fast float %8702, %8711
  %8715 = fmul fast float %8702, %8712
  %8716 = fmul fast float %8702, %8713
  %8717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8718 = extractvalue %dx.types.CBufRet.f32 %8717, 0
  %8719 = extractvalue %dx.types.CBufRet.f32 %8717, 1
  %8720 = extractvalue %dx.types.CBufRet.f32 %8717, 2
  %8721 = fadd fast float %8714, %8718
  %8722 = fadd fast float %8721, %8707
  %8723 = fadd fast float %8715, %8719
  %8724 = fadd fast float %8723, %8708
  %8725 = fadd fast float %8716, %8720
  %8726 = fadd fast float %8725, %8709
  %8727 = fmul fast float %8722, %7898
  %8728 = fmul fast float %8724, %7898
  %8729 = fmul fast float %8726, %7898
  %8730 = fmul fast float %8727, %8727
  %8731 = fmul fast float %8728, %8728
  %8732 = fadd fast float %8730, %8731
  %8733 = fmul fast float %8729, %8729
  %8734 = fadd fast float %8732, %8733
  %8735 = call float @dx.op.unary.f32(i32 24, float %8734)  ; Sqrt(value)
  %8736 = extractvalue %dx.types.CBufRet.f32 %7625, 0
  %8737 = fsub fast float %8735, %8736
  %8738 = extractvalue %dx.types.CBufRet.f32 %7625, 2
  %8739 = fmul fast float %8737, %8738
  %8740 = call float @dx.op.unary.f32(i32 7, float %8739)  ; Saturate(value)
  %8741 = fadd fast float %8740, -5.000000e-01
  %8742 = fmul fast float %8741, 2.000000e+00
  %8743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8743, 2
  %8745 = call float @dx.op.binary.f32(i32 36, float %8744, float %8742)  ; FMin(a,b)
  %8746 = fsub fast float -0.000000e+00, %8744
  %8747 = fcmp fast ogt float %8745, %8746
  br i1 %8747, label %8748, label %9060, !dx.controlflow.hints !169

; <label>:8748                                    ; preds = %8693
  %8749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8750 = extractvalue %dx.types.CBufRet.f32 %8749, 3
  %8751 = fcmp fast ogt float %8750, 0.000000e+00
  br i1 %8751, label %8752, label %8827, !dx.controlflow.hints !170

; <label>:8752                                    ; preds = %8748
  %8753 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8754 = extractvalue %dx.types.Dimensions %8753, 0
  %8755 = sitofp i32 %8754 to float
  %8756 = extractvalue %dx.types.Dimensions %8753, 1
  %8757 = sitofp i32 %8756 to float
  %8758 = fmul fast float %8697, %8755
  %8759 = fmul fast float %8698, %8757
  %8760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8761 = extractvalue %dx.types.CBufRet.f32 %8760, 1
  %8762 = fsub fast float -0.000000e+00, %8761
  %8763 = fptoui float %8762 to i32
  %8764 = fptoui float %8758 to i32
  %8765 = fptoui float %8759 to i32
  %8766 = and i32 %8763, 31
  %8767 = lshr i32 %8764, %8766
  %8768 = lshr i32 %8765, %8766
  %8769 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8763, i32 %8767, i32 %8768, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8770 = extractvalue %dx.types.ResRet.f32 %8769, 0
  %8771 = fcmp fast olt float %8770, -1.000000e+00
  %8772 = fcmp fast ogt float %8770, -1.000000e+00
  %8773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8774 = extractvalue %dx.types.CBufRet.f32 %8773, 1
  %8775 = select i1 %8772, float %8774, float 1.000000e+00
  %8776 = fadd fast float %8770, 1.000000e+00
  %8777 = fmul fast float %8775, %8776
  %8778 = call float @dx.op.unary.f32(i32 6, float %8777)  ; FAbs(value)
  %8779 = extractvalue %dx.types.CBufRet.f32 %8773, 3
  %8780 = fcmp fast oge float %8778, %8779
  %8781 = select i1 %8780, float 0x4197782600000000, float %8778
  %8782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8783 = extractvalue %dx.types.CBufRet.f32 %8782, 0
  %8784 = extractvalue %dx.types.CBufRet.f32 %8782, 1
  %8785 = extractvalue %dx.types.CBufRet.f32 %8782, 2
  %8786 = select i1 %8771, float %8783, float %8704
  %8787 = select i1 %8771, float %8784, float %8705
  %8788 = select i1 %8771, float %8785, float %8706
  %8789 = fmul fast float %8786, %8701
  %8790 = fmul fast float %8787, %8701
  %8791 = fmul fast float %8788, %8701
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8795 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8796 = select i1 %8771, float %8793, float %8711
  %8797 = select i1 %8771, float %8794, float %8712
  %8798 = select i1 %8771, float %8795, float %8713
  %8799 = fmul fast float %8796, %8702
  %8800 = fmul fast float %8797, %8702
  %8801 = fmul fast float %8798, %8702
  %8802 = fadd fast float %8799, %8789
  %8803 = fadd fast float %8800, %8790
  %8804 = fadd fast float %8801, %8791
  %8805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8806 = extractvalue %dx.types.CBufRet.f32 %8805, 0
  %8807 = extractvalue %dx.types.CBufRet.f32 %8805, 1
  %8808 = extractvalue %dx.types.CBufRet.f32 %8805, 2
  %8809 = select i1 %8771, float %8806, float %8718
  %8810 = select i1 %8771, float %8807, float %8719
  %8811 = select i1 %8771, float %8808, float %8720
  %8812 = fadd fast float %8802, %8809
  %8813 = fadd fast float %8803, %8810
  %8814 = fadd fast float %8804, %8811
  %8815 = fmul fast float %8812, %8781
  %8816 = fmul fast float %8813, %8781
  %8817 = fmul fast float %8814, %8781
  %8818 = fmul fast float %8815, %8815
  %8819 = fmul fast float %8816, %8816
  %8820 = fadd fast float %8818, %8819
  %8821 = fmul fast float %8817, %8817
  %8822 = fadd fast float %8820, %8821
  %8823 = call float @dx.op.unary.f32(i32 24, float %8822)  ; Sqrt(value)
  %8824 = fsub fast float %8823, %8736
  %8825 = fmul fast float %8824, %8738
  %8826 = call float @dx.op.unary.f32(i32 7, float %8825)  ; Saturate(value)
  br label %8827

; <label>:8827                                    ; preds = %8752, %8748
  %8828 = phi float [ %8826, %8752 ], [ 1.000000e+00, %8748 ]
  %8829 = fmul fast float %8745, 5.000000e-01
  %8830 = fadd fast float %8829, 5.000000e-01
  %8831 = call float @dx.op.unary.f32(i32 22, float %8830)  ; Frc(value)
  %8832 = call float @dx.op.unary.f32(i32 27, float %8831)  ; Round_ni(value)
  %8833 = call float @dx.op.unary.f32(i32 22, float %8831)  ; Frc(value)
  %8834 = fmul fast float %8833, 2.000000e+00
  %8835 = fadd fast float %8834, -1.000000e+00
  %8836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8697, float %8698, float %8832, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8837 = extractvalue %dx.types.ResRet.f32 %8836, 0
  %8838 = extractvalue %dx.types.ResRet.f32 %8836, 1
  %8839 = extractvalue %dx.types.ResRet.f32 %8836, 2
  %8840 = extractvalue %dx.types.ResRet.f32 %8836, 3
  %8841 = fadd fast float %8837, -5.000000e-01
  %8842 = fadd fast float %8839, -5.000000e-01
  %8843 = fmul fast float %8841, 0xBFD5555560000000
  %8844 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8842, float %8843)  ; FMad(a,b,c)
  %8845 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8838, float 0.000000e+00)  ; FMad(a,b,c)
  %8846 = fadd fast float %8845, %8840
  %8847 = fmul fast float %8841, -7.500000e-01
  %8848 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8842, float %8847)  ; FMad(a,b,c)
  %8849 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8838, float 0.000000e+00)  ; FMad(a,b,c)
  %8850 = fadd fast float %8849, %8840
  %8851 = call float @dx.op.binary.f32(i32 35, float %8844, float -1.000000e+00)  ; FMax(a,b)
  %8852 = call float @dx.op.binary.f32(i32 35, float %8846, float -1.000000e+00)  ; FMax(a,b)
  %8853 = call float @dx.op.binary.f32(i32 35, float %8848, float -1.000000e+00)  ; FMax(a,b)
  %8854 = call float @dx.op.binary.f32(i32 35, float %8850, float -1.000000e+00)  ; FMax(a,b)
  %8855 = call float @dx.op.binary.f32(i32 36, float %8851, float 1.000000e+00)  ; FMin(a,b)
  %8856 = call float @dx.op.binary.f32(i32 36, float %8852, float 1.000000e+00)  ; FMin(a,b)
  %8857 = call float @dx.op.binary.f32(i32 36, float %8853, float 1.000000e+00)  ; FMin(a,b)
  %8858 = call float @dx.op.binary.f32(i32 36, float %8854, float 1.000000e+00)  ; FMin(a,b)
  %8859 = fcmp fast olt float %8855, 0x3FEFFF8020000000
  br i1 %8859, label %8860, label %8975, !dx.controlflow.hints !171

; <label>:8860                                    ; preds = %8827
  %8861 = extractvalue %dx.types.CBufRet.f32 %8743, 3
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8866 = extractvalue %dx.types.CBufRet.f32 %8862, 3
  %8867 = fsub fast float %8863, %8855
  %8868 = fsub fast float %8864, %8856
  %8869 = fsub fast float %8865, %8857
  %8870 = fsub fast float %8866, %8858
  %8871 = fmul fast float %8867, %8861
  %8872 = fmul fast float %8868, %8861
  %8873 = fmul fast float %8869, %8861
  %8874 = fmul fast float %8870, %8861
  %8875 = fadd fast float %8871, %8855
  %8876 = fadd fast float %8872, %8856
  %8877 = fsub fast float -0.000000e+00, %8876
  %8878 = fadd fast float %8873, %8857
  %8879 = fadd fast float %8874, %8858
  %8880 = fmul fast float %8875, %8875
  %8881 = fsub fast float %8876, %8880
  %8882 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8881)  ; FMax(a,b)
  %8883 = fdiv fast float 1.000000e+00, %8882
  %8884 = fmul fast float %8876, %8875
  %8885 = fsub fast float %8878, %8884
  %8886 = fsub fast float %8835, %8875
  %8887 = fmul fast float %8835, %8835
  %8888 = fsub fast float %8887, %8876
  %8889 = fmul fast float %8886, %8883
  %8890 = fmul fast float %8889, %8885
  %8891 = fsub fast float %8888, %8890
  %8892 = fmul fast float %8876, %8876
  %8893 = fsub fast float %8879, %8892
  %8894 = fmul fast float %8885, %8885
  %8895 = fmul fast float %8894, %8883
  %8896 = fsub fast float %8893, %8895
  %8897 = fdiv fast float %8891, %8896
  %8898 = fmul fast float %8885, %8897
  %8899 = fsub fast float %8886, %8898
  %8900 = fmul fast float %8899, %8883
  %8901 = fmul fast float %8900, %8875
  %8902 = fsub fast float 1.000000e+00, %8901
  %8903 = fmul fast float %8876, %8897
  %8904 = fsub fast float %8902, %8903
  %8905 = fmul fast float %8900, %8900
  %8906 = fmul fast float %8897, 4.000000e+00
  %8907 = fmul fast float %8906, %8904
  %8908 = fsub fast float %8905, %8907
  %8909 = call float @dx.op.unary.f32(i32 24, float %8908)  ; Sqrt(value)
  %8910 = fcmp fast oge float %8900, 0.000000e+00
  %8911 = fsub fast float -0.000000e+00, %8909
  %8912 = select i1 %8910, float %8911, float %8909
  %8913 = fsub fast float %8912, %8900
  %8914 = fdiv fast float %8913, %8897
  %8915 = fdiv fast float %8904, %8913
  %8916 = fmul fast float %8914, 5.000000e-01
  %8917 = fmul fast float %8915, 2.000000e+00
  %8918 = select i1 %8910, float %8916, float %8917
  %8919 = select i1 %8910, float %8917, float %8916
  %8920 = call float @dx.op.binary.f32(i32 35, float %8918, float %8919)  ; FMax(a,b)
  %8921 = call float @dx.op.binary.f32(i32 36, float %8918, float %8919)  ; FMin(a,b)
  %8922 = fcmp fast ogt float %8835, %8921
  br i1 %8922, label %8923, label %8933

; <label>:8923                                    ; preds = %8860
  %8924 = fsub fast float %8835, %8921
  %8925 = fsub fast float %8920, %8921
  %8926 = fmul fast float %8924, %8925
  %8927 = fmul fast float %8920, %8835
  %8928 = fadd fast float %8920, %8835
  %8929 = fmul fast float %8928, %8875
  %8930 = fadd fast float %8927, %8876
  %8931 = fsub fast float %8930, %8929
  %8932 = fdiv fast float %8931, %8926
  br label %8933

; <label>:8933                                    ; preds = %8923, %8860
  %8934 = phi float [ %8932, %8923 ], [ 0.000000e+00, %8860 ]
  %8935 = fcmp fast ogt float %8835, %8920
  %8936 = fsub fast float %8835, %8920
  br i1 %8935, label %8937, label %8947

; <label>:8937                                    ; preds = %8933
  %8938 = fsub fast float %8920, %8921
  %8939 = fmul fast float %8938, %8936
  %8940 = fmul fast float %8921, %8835
  %8941 = fadd fast float %8921, %8835
  %8942 = fmul fast float %8941, %8875
  %8943 = fsub fast float %8877, %8940
  %8944 = fadd fast float %8943, %8942
  %8945 = fdiv fast float %8944, %8939
  %8946 = fadd fast float %8945, %8934
  br label %8947

; <label>:8947                                    ; preds = %8937, %8933
  %8948 = phi float [ %8946, %8937 ], [ %8934, %8933 ]
  %8949 = fsub fast float %8835, %8921
  %8950 = fmul fast float %8949, %8936
  %8951 = fmul fast float %8921, %8920
  %8952 = fadd fast float %8921, %8920
  %8953 = fmul fast float %8952, %8875
  %8954 = fadd fast float %8951, %8876
  %8955 = fsub fast float %8954, %8953
  %8956 = fdiv fast float %8955, %8950
  %8957 = call float @dx.op.unary.f32(i32 7, float %8948)  ; Saturate(value)
  %8958 = fcmp fast oeq float %7626, 0.000000e+00
  %8959 = extractvalue %dx.types.CBufRet.f32 %8743, 0
  %8960 = fcmp fast oeq float %8959, 0.000000e+00
  %8961 = or i1 %8958, %8960
  %8962 = fmul fast float %8959, 2.000000e+00
  %8963 = fadd fast float %8744, %8745
  %8964 = fdiv fast float %8963, %8962
  %8965 = call float @dx.op.unary.f32(i32 7, float %8964)  ; Saturate(value)
  %8966 = fmul fast float %8965, 2.000000e+00
  %8967 = fsub fast float 3.000000e+00, %8966
  %8968 = fmul fast float %8965, %8965
  %8969 = fmul fast float %8968, %8967
  %8970 = select i1 %8961, float 1.000000e+00, float %8969
  %8971 = fmul fast float %8956, %7626
  %8972 = fadd fast float %8957, %8971
  %8973 = call float @dx.op.unary.f32(i32 7, float %8972)  ; Saturate(value)
  %8974 = fmul fast float %8970, %8973
  br label %8975

; <label>:8975                                    ; preds = %8947, %8827
  %8976 = phi float [ %8974, %8947 ], [ 0.000000e+00, %8827 ]
  %8977 = fsub fast float 1.000000e+00, %8976
  %8978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8697, float %8698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8979 = extractvalue %dx.types.ResRet.f32 %8978, 0
  %8980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.i32 %8980, 2
  %8982 = icmp eq i32 %8981, 0
  br i1 %8982, label %8988, label %8983

; <label>:8983                                    ; preds = %8975
  %8984 = call float @dx.op.unary.f32(i32 7, float %8976)  ; Saturate(value)
  %8985 = fadd fast float %8979, -1.000000e+00
  %8986 = fmul fast float %8984, %8985
  %8987 = fadd fast float %8986, 1.000000e+00
  br label %8988

; <label>:8988                                    ; preds = %8983, %8975
  %8989 = phi float [ %8987, %8983 ], [ %8977, %8975 ]
  br i1 %8751, label %8990, label %9008

; <label>:8990                                    ; preds = %8988
  %8991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8992 = extractvalue %dx.types.CBufRet.f32 %8991, 1
  %8993 = fsub fast float %8828, %8992
  %8994 = call float @dx.op.unary.f32(i32 7, float %8993)  ; Saturate(value)
  %8995 = fsub fast float %8828, %8750
  %8996 = call float @dx.op.unary.f32(i32 7, float %8995)  ; Saturate(value)
  %8997 = fsub fast float %8994, %8996
  %8998 = fsub fast float %8830, %8996
  %8999 = fdiv fast float %8998, %8997
  %9000 = call float @dx.op.unary.f32(i32 7, float %8999)  ; Saturate(value)
  %9001 = fmul fast float %9000, 2.000000e+00
  %9002 = fsub fast float 3.000000e+00, %9001
  %9003 = fsub fast float %8979, %8989
  %9004 = fmul fast float %9000, %9000
  %9005 = fmul fast float %9004, %9003
  %9006 = fmul fast float %9005, %9002
  %9007 = fadd fast float %9006, %8989
  br label %9008

; <label>:9008                                    ; preds = %8990, %8988
  %9009 = phi float [ %9007, %8990 ], [ %8989, %8988 ]
  %9010 = call float @dx.op.binary.f32(i32 35, float %8979, float %9009)  ; FMax(a,b)
  %9011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.i32 %9011, 2
  %9013 = and i32 %9012, 1
  %9014 = icmp eq i32 %9013, 0
  %9015 = fcmp fast une float %9010, 1.000000e+00
  %9016 = and i1 %9015, %9014
  br i1 %9016, label %9017, label %9036

; <label>:9017                                    ; preds = %9008
  %9018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8697, float %8698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9019 = extractvalue %dx.types.ResRet.f32 %9018, 0
  %9020 = extractvalue %dx.types.ResRet.f32 %9018, 1
  %9021 = extractvalue %dx.types.ResRet.f32 %9018, 2
  %9022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9023 = extractvalue %dx.types.CBufRet.f32 %9022, 1
  %9024 = fmul fast float %9023, %9019
  %9025 = fmul fast float %9023, %9020
  %9026 = fmul fast float %9023, %9021
  %9027 = fcmp fast ogt float %8979, 0x3FEFFF2E40000000
  %9028 = fsub fast float 1.000000e+00, %9010
  %9029 = fsub fast float 1.000000e+00, %8979
  %9030 = fdiv fast float %9028, %9029
  %9031 = call float @dx.op.unary.f32(i32 7, float %9030)  ; Saturate(value)
  %9032 = select i1 %9027, float 0.000000e+00, float %9031
  %9033 = fmul fast float %9024, %9032
  %9034 = fmul fast float %9025, %9032
  %9035 = fmul fast float %9026, %9032
  br label %9036

; <label>:9036                                    ; preds = %9017, %9008
  %9037 = phi float [ 0.000000e+00, %9008 ], [ %9033, %9017 ]
  %9038 = phi float [ 0.000000e+00, %9008 ], [ %9034, %9017 ]
  %9039 = phi float [ 0.000000e+00, %9008 ], [ %9035, %9017 ]
  %9040 = fmul fast float %9037, %7614
  %9041 = fmul fast float %9038, %7614
  %9042 = fmul fast float %9039, %7614
  %9043 = fmul fast float %9010, %8672
  %9044 = call float @dx.op.dot3.f32(i32 55, float %9010, float %9010, float %9010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9045 = call float @dx.op.dot3.f32(i32 55, float %9040, float %9041, float %9042, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9046 = select i1 %223, float %9044, float %9010
  %9047 = select i1 %223, float 1.000000e+00, float %9010
  %9048 = select i1 %223, float %9045, float %9040
  %9049 = select i1 %223, float 0.000000e+00, float %9041
  %9050 = select i1 %223, float 0.000000e+00, float %9042
  %9051 = fmul fast float %9046, %8684
  %9052 = fmul fast float %9046, %8685
  %9053 = fmul fast float %9047, %8686
  %9054 = fadd fast float %9051, %9048
  %9055 = fadd fast float %9052, %9049
  %9056 = fadd fast float %9050, %9053
  %9057 = fmul fast float %9046, %8687
  %9058 = fmul fast float %9046, %8688
  %9059 = fmul fast float %9047, %8689
  br label %9060

; <label>:9060                                    ; preds = %9036, %8693, %8662, %7894
  %9061 = phi float [ %7899, %7894 ], [ %8684, %8662 ], [ %9054, %9036 ], [ %8684, %8693 ]
  %9062 = phi float [ %7900, %7894 ], [ %8685, %8662 ], [ %9055, %9036 ], [ %8685, %8693 ]
  %9063 = phi float [ %7901, %7894 ], [ %8686, %8662 ], [ %9056, %9036 ], [ %8686, %8693 ]
  %9064 = phi float [ %7902, %7894 ], [ %8687, %8662 ], [ %9057, %9036 ], [ %8687, %8693 ]
  %9065 = phi float [ %7903, %7894 ], [ %8688, %8662 ], [ %9058, %9036 ], [ %8688, %8693 ]
  %9066 = phi float [ %7904, %7894 ], [ %8689, %8662 ], [ %9059, %9036 ], [ %8689, %8693 ]
  %9067 = phi float [ %7905, %7894 ], [ %8672, %8662 ], [ %9043, %9036 ], [ %8672, %8693 ]
  %9068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9069 = extractvalue %dx.types.CBufRet.f32 %9068, 2
  %9070 = extractvalue %dx.types.CBufRet.f32 %9068, 3
  %9071 = fmul fast float %9069, %102
  %9072 = fmul fast float %9070, %103
  %9073 = call float @dx.op.unary.f32(i32 7, float %9071)  ; Saturate(value)
  %9074 = call float @dx.op.unary.f32(i32 7, float %9072)  ; Saturate(value)
  %9075 = select i1 %7636, i32 2, i32 0
  %9076 = or i32 %9075, 1
  %9077 = uitofp i32 %9076 to float
  %9078 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9073, float %9074, float %9077, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9079 = extractvalue %dx.types.ResRet.f32 %9078, 0
  %9080 = extractvalue %dx.types.ResRet.f32 %9078, 1
  %9081 = extractvalue %dx.types.ResRet.f32 %9078, 2
  %9082 = extractvalue %dx.types.ResRet.f32 %9078, 3
  %9083 = add nuw nsw i32 %9075, 2
  %9084 = uitofp i32 %9083 to float
  %9085 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9073, float %9074, float %9084, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9086 = extractvalue %dx.types.ResRet.f32 %9085, 0
  %9087 = extractvalue %dx.types.ResRet.f32 %9085, 1
  %9088 = extractvalue %dx.types.ResRet.f32 %9085, 2
  %9089 = extractvalue %dx.types.ResRet.f32 %9085, 3
  %9090 = call float @dx.op.binary.f32(i32 35, float %9080, float %9081)  ; FMax(a,b)
  %9091 = call float @dx.op.binary.f32(i32 35, float %9079, float %9090)  ; FMax(a,b)
  %9092 = call float @dx.op.binary.f32(i32 35, float %9091, float %9082)  ; FMax(a,b)
  %9093 = call float @dx.op.binary.f32(i32 36, float %9087, float %9088)  ; FMin(a,b)
  %9094 = call float @dx.op.binary.f32(i32 36, float %9086, float %9093)  ; FMin(a,b)
  %9095 = call float @dx.op.binary.f32(i32 36, float %9094, float %9089)  ; FMin(a,b)
  %9096 = fmul fast float %9092, 2.550000e+02
  %9097 = fadd fast float %9096, 0x3F70101020000000
  %9098 = fptoui float %9097 to i32
  %9099 = fmul fast float %9095, 2.550000e+02
  %9100 = fadd fast float %9099, 0x3F70101020000000
  %9101 = fptoui float %9100 to i32
  %9102 = icmp ult i32 %9098, %9101
  br i1 %9102, label %9103, label %9272

; <label>:9103                                    ; preds = %9060
  %9104 = fcmp fast ogt float %92, 9.843750e-01
  %9105 = fadd fast float %7898, -4.000000e+00
  %9106 = select i1 %9104, float -4.000000e+00, float %9105
  %9107 = call float @dx.op.binary.f32(i32 35, float %9106, float 0.000000e+00)  ; FMax(a,b)
  %9108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9109 = extractvalue %dx.types.CBufRet.f32 %9108, 0
  %9110 = fadd fast float %9109, %9107
  %9111 = extractvalue %dx.types.CBufRet.f32 %9108, 2
  %9112 = fmul fast float %9110, %9111
  %9113 = call float @dx.op.unary.f32(i32 23, float %9112)  ; Log(value)
  %9114 = extractvalue %dx.types.CBufRet.f32 %9108, 3
  %9115 = fmul fast float %9114, %9113
  %9116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9117 = extractvalue %dx.types.CBufRet.f32 %9116, 2
  %9118 = fmul fast float %9115, %9117
  %9119 = call float @dx.op.unary.f32(i32 7, float %9118)  ; Saturate(value)
  %9120 = uitofp i32 %9098 to float
  %9121 = uitofp i32 %9101 to float
  %9122 = fadd fast float %9120, 5.000000e-01
  %9123 = fadd fast float %9121, 5.000000e-01
  %9124 = fmul fast float %9117, %9122
  %9125 = fmul fast float %9117, %9123
  %9126 = fadd fast float %9124, 0x3F0FFB4800000000
  %9127 = fadd fast float %9125, 0xBF0FFB4800000000
  %9128 = call float @dx.op.binary.f32(i32 35, float %9119, float %9126)  ; FMax(a,b)
  %9129 = call float @dx.op.binary.f32(i32 36, float %9128, float %9127)  ; FMin(a,b)
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 1
  %9132 = extractvalue %dx.types.CBufRet.f32 %9130, 2
  %9133 = extractvalue %dx.types.CBufRet.f32 %9130, 0
  %9134 = select i1 %7636, float %9133, float 0.000000e+00
  %9135 = fmul fast float %9131, %9129
  %9136 = fadd fast float %9134, %9135
  %9137 = fadd fast float %9134, %9132
  %9138 = fsub fast float %9131, %9132
  %9139 = fadd fast float %9138, %9134
  %9140 = call float @dx.op.binary.f32(i32 35, float %9136, float %9137)  ; FMax(a,b)
  %9141 = call float @dx.op.binary.f32(i32 36, float %9140, float %9139)  ; FMin(a,b)
  %9142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9073, float %9074, float %9141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9143 = extractvalue %dx.types.ResRet.f32 %9142, 0
  %9144 = extractvalue %dx.types.ResRet.f32 %9142, 1
  %9145 = extractvalue %dx.types.ResRet.f32 %9142, 2
  %9146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9147 = extractvalue %dx.types.CBufRet.i32 %9146, 0
  %9148 = extractvalue %dx.types.CBufRet.i32 %9146, 1
  %9149 = uitofp i32 %9147 to float
  %9150 = uitofp i32 %9148 to float
  %9151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9152 = extractvalue %dx.types.CBufRet.f32 %9151, 0
  %9153 = extractvalue %dx.types.CBufRet.f32 %9151, 1
  %9154 = fmul fast float %9149, %9073
  %9155 = fmul fast float %9150, %9074
  %9156 = fadd fast float %9154, -5.000000e-01
  %9157 = fadd fast float %9155, -5.000000e-01
  %9158 = call float @dx.op.unary.f32(i32 22, float %9156)  ; Frc(value)
  %9159 = call float @dx.op.unary.f32(i32 22, float %9157)  ; Frc(value)
  %9160 = fmul fast float %9158, %9158
  %9161 = fmul fast float %9160, %9158
  %9162 = fsub fast float 3.000000e+00, %9158
  %9163 = fmul fast float %9160, %9162
  %9164 = fmul fast float %9158, 3.000000e+00
  %9165 = fmul fast float %9161, 3.000000e+00
  %9166 = fmul fast float %9160, 6.000000e+00
  %9167 = fsub fast float %9165, %9166
  %9168 = fadd fast float %9167, 4.000000e+00
  %9169 = fmul fast float %9168, 0x3FC5555560000000
  %9170 = fmul fast float %9161, -3.000000e+00
  %9171 = fadd fast float %9160, %9158
  %9172 = fmul fast float %9171, 3.000000e+00
  %9173 = fadd fast float %9170, 1.000000e+00
  %9174 = fadd fast float %9173, %9172
  %9175 = fmul fast float %9161, 0x3FC5555560000000
  %9176 = fmul fast float %9159, %9159
  %9177 = fmul fast float %9176, %9159
  %9178 = fsub fast float 3.000000e+00, %9159
  %9179 = fmul fast float %9176, %9178
  %9180 = fmul fast float %9159, 3.000000e+00
  %9181 = fmul fast float %9177, 3.000000e+00
  %9182 = fmul fast float %9176, 6.000000e+00
  %9183 = fsub fast float %9181, %9182
  %9184 = fadd fast float %9183, 4.000000e+00
  %9185 = fmul fast float %9184, 0x3FC5555560000000
  %9186 = fmul fast float %9177, -3.000000e+00
  %9187 = fadd fast float %9176, %9159
  %9188 = fmul fast float %9187, 3.000000e+00
  %9189 = fadd fast float %9186, 1.000000e+00
  %9190 = fadd fast float %9189, %9188
  %9191 = fmul fast float %9177, 0x3FC5555560000000
  %9192 = fadd fast float %9158, 1.000000e+00
  %9193 = fsub fast float 1.000000e+00, %9164
  %9194 = fadd fast float %9193, %9163
  %9195 = fadd fast float %9194, %9168
  %9196 = fmul fast float %9195, 0x3FC5555560000000
  %9197 = fdiv fast float %9169, %9196
  %9198 = fsub fast float %9192, %9197
  %9199 = fsub fast float 1.000000e+00, %9158
  %9200 = fadd fast float %9174, %9161
  %9201 = fmul fast float %9200, 0x3FC5555560000000
  %9202 = fdiv fast float %9175, %9201
  %9203 = fadd fast float %9199, %9202
  %9204 = fadd fast float %9159, 1.000000e+00
  %9205 = fsub fast float 1.000000e+00, %9180
  %9206 = fadd fast float %9205, %9179
  %9207 = fadd fast float %9206, %9184
  %9208 = fmul fast float %9207, 0x3FC5555560000000
  %9209 = fdiv fast float %9185, %9208
  %9210 = fsub fast float %9204, %9209
  %9211 = fsub fast float 1.000000e+00, %9159
  %9212 = fadd fast float %9190, %9177
  %9213 = fmul fast float %9212, 0x3FC5555560000000
  %9214 = fdiv fast float %9191, %9213
  %9215 = fadd fast float %9214, %9211
  %9216 = fmul fast float %9198, %9152
  %9217 = fsub fast float %9073, %9216
  %9218 = fmul fast float %9203, %9152
  %9219 = fadd fast float %9218, %9073
  %9220 = fmul fast float %9215, %9153
  %9221 = fadd fast float %9220, %9074
  %9222 = fmul fast float %9210, %9153
  %9223 = fsub fast float %9074, %9222
  %9224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9217, float %9223, float %9141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9225 = extractvalue %dx.types.ResRet.f32 %9224, 0
  %9226 = extractvalue %dx.types.ResRet.f32 %9224, 1
  %9227 = extractvalue %dx.types.ResRet.f32 %9224, 2
  %9228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9219, float %9223, float %9141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9229 = extractvalue %dx.types.ResRet.f32 %9228, 0
  %9230 = extractvalue %dx.types.ResRet.f32 %9228, 1
  %9231 = extractvalue %dx.types.ResRet.f32 %9228, 2
  %9232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9217, float %9221, float %9141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9233 = extractvalue %dx.types.ResRet.f32 %9232, 0
  %9234 = extractvalue %dx.types.ResRet.f32 %9232, 1
  %9235 = extractvalue %dx.types.ResRet.f32 %9232, 2
  %9236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9219, float %9221, float %9141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9237 = extractvalue %dx.types.ResRet.f32 %9236, 0
  %9238 = extractvalue %dx.types.ResRet.f32 %9236, 1
  %9239 = extractvalue %dx.types.ResRet.f32 %9236, 2
  %9240 = fsub fast float %9233, %9225
  %9241 = fsub fast float %9234, %9226
  %9242 = fsub fast float %9235, %9227
  %9243 = fmul fast float %9240, %9213
  %9244 = fmul fast float %9241, %9213
  %9245 = fmul fast float %9242, %9213
  %9246 = fadd fast float %9243, %9225
  %9247 = fadd fast float %9244, %9226
  %9248 = fadd fast float %9245, %9227
  %9249 = fsub fast float %9237, %9229
  %9250 = fsub fast float %9238, %9230
  %9251 = fsub fast float %9239, %9231
  %9252 = fmul fast float %9249, %9213
  %9253 = fmul fast float %9250, %9213
  %9254 = fmul fast float %9251, %9213
  %9255 = fsub fast float %9229, %9246
  %9256 = fadd fast float %9255, %9252
  %9257 = fsub fast float %9230, %9247
  %9258 = fadd fast float %9257, %9253
  %9259 = fsub fast float %9231, %9248
  %9260 = fadd fast float %9259, %9254
  %9261 = fmul fast float %9256, %9201
  %9262 = fmul fast float %9258, %9201
  %9263 = fmul fast float %9260, %9201
  %9264 = fadd fast float %9261, %9246
  %9265 = fadd fast float %9262, %9247
  %9266 = fadd fast float %9263, %9248
  %9267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9268 = extractvalue %dx.types.CBufRet.f32 %9267, 1
  %9269 = fmul fast float %9264, %9268
  %9270 = fmul fast float %9265, %9268
  %9271 = fmul fast float %9266, %9268
  br label %9272

; <label>:9272                                    ; preds = %9103, %9060
  %9273 = phi float [ %9143, %9103 ], [ 1.000000e+00, %9060 ]
  %9274 = phi float [ %9144, %9103 ], [ 1.000000e+00, %9060 ]
  %9275 = phi float [ %9145, %9103 ], [ 1.000000e+00, %9060 ]
  %9276 = phi float [ %9269, %9103 ], [ 0.000000e+00, %9060 ]
  %9277 = phi float [ %9270, %9103 ], [ 0.000000e+00, %9060 ]
  %9278 = phi float [ %9271, %9103 ], [ 0.000000e+00, %9060 ]
  %9279 = fmul fast float %9276, %7614
  %9280 = fmul fast float %9277, %7614
  %9281 = fmul fast float %9278, %7614
  %9282 = fmul fast float %9273, %9067
  %9283 = call float @dx.op.dot3.f32(i32 55, float %9273, float %9274, float %9275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9284 = call float @dx.op.dot3.f32(i32 55, float %9279, float %9280, float %9281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9285 = select i1 %223, float %9283, float %9273
  %9286 = select i1 %223, float %9283, float %9274
  %9287 = select i1 %223, float 1.000000e+00, float %9275
  %9288 = select i1 %223, float %9284, float %9279
  %9289 = select i1 %223, float 0.000000e+00, float %9280
  %9290 = select i1 %223, float 0.000000e+00, float %9281
  %9291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9292 = extractvalue %dx.types.CBufRet.i32 %9291, 3
  %9293 = and i32 %9292, 3
  %9294 = icmp ne i32 %9293, 0
  %9295 = and i32 %9292, 4
  %9296 = icmp ne i32 %9295, 0
  %9297 = and i1 %9294, %9296
  %9298 = and i1 %223, %9297
  br i1 %9298, label %9299, label %9305

; <label>:9299                                    ; preds = %9272
  %9300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9301 = extractvalue %dx.types.CBufRet.f32 %9300, 1
  %9302 = fadd fast float %9282, -1.000000e+00
  %9303 = fmul fast float %9301, %9302
  %9304 = fadd fast float %9303, 1.000000e+00
  br label %9305

; <label>:9305                                    ; preds = %9299, %9272
  %9306 = phi float [ %9304, %9299 ], [ %9282, %9272 ]
  %9307 = fadd fast float %9064, %9061
  %9308 = fmul fast float %9285, %9307
  %9309 = fadd fast float %9308, %9288
  %9310 = fadd fast float %9065, %9062
  %9311 = fmul fast float %9286, %9310
  %9312 = fadd fast float %9311, %9289
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 0
  br i1 %223, label %9315, label %9339

; <label>:9315                                    ; preds = %9305
  %9316 = fadd fast float %9309, %9312
  %9317 = fmul fast float %9314, %9316
  %9318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9319 = extractvalue %dx.types.CBufRet.f32 %9318, 3
  %9320 = extractvalue %dx.types.CBufRet.f32 %7618, 1
  %9321 = fsub fast float %7623, %7617
  %9322 = fadd fast float %9321, %7624
  %9323 = fsub fast float %9322, %9320
  %9324 = extractvalue %dx.types.CBufRet.f32 %7618, 2
  %9325 = fmul fast float %9323, %9324
  %9326 = call float @dx.op.unary.f32(i32 7, float %9325)  ; Saturate(value)
  %9327 = fsub fast float %9326, %9319
  %9328 = fmul fast float %9327, %9306
  %9329 = fadd fast float %9328, %9319
  %9330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9331 = extractvalue %dx.types.CBufRet.f32 %9330, 0
  %9332 = fsub fast float %9329, %9331
  %9333 = fmul fast float %9332, 1.000000e+01
  %9334 = call float @dx.op.unary.f32(i32 7, float %9333)  ; Saturate(value)
  %9335 = fsub fast float %4737, %7614
  %9336 = fmul fast float %9334, %9335
  %9337 = fadd fast float %9336, %7614
  %9338 = fmul fast float %9337, %9329
  br label %9363

; <label>:9339                                    ; preds = %9305
  %9340 = fadd fast float %9066, %9063
  %9341 = fmul fast float %9287, %9340
  %9342 = fadd fast float %9341, %9290
  %9343 = fmul fast float %9314, %9309
  %9344 = fmul fast float %9314, %9312
  %9345 = fmul fast float %9314, %9342
  %9346 = call float @dx.op.binary.f32(i32 35, float %9344, float %9345)  ; FMax(a,b)
  %9347 = call float @dx.op.binary.f32(i32 35, float %9343, float %9346)  ; FMax(a,b)
  %9348 = call float @dx.op.binary.f32(i32 35, float %9347, float %7614)  ; FMax(a,b)
  %9349 = fcmp fast ugt float %9348, 0x3F10000000000000
  br i1 %9349, label %9351, label %9350

; <label>:9350                                    ; preds = %9339
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9351

; <label>:9351                                    ; preds = %9350, %9339
  %9352 = add i32 %56, 356
  %9353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9352, i32 undef)  ; BufferLoad(srv,index,wot)
  %9354 = extractvalue %dx.types.ResRet.i32 %9353, 0
  %9355 = and i32 %9354, 32
  %9356 = icmp eq i32 %9355, 0
  br i1 %9356, label %9363, label %9357

; <label>:9357                                    ; preds = %9351
  %9358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9359 = extractvalue %dx.types.CBufRet.f32 %9358, 0
  %9360 = fmul fast float %9359, 0x3FE99999A0000000
  %9361 = fadd fast float %9359, %9343
  %9362 = fadd fast float %9360, %9345
  br label %9363

; <label>:9363                                    ; preds = %9357, %9351, %9315
  %9364 = phi float [ %9317, %9315 ], [ %9361, %9357 ], [ %9343, %9351 ]
  %9365 = phi float [ %9338, %9315 ], [ %9344, %9357 ], [ %9344, %9351 ]
  %9366 = phi float [ %9337, %9315 ], [ %9362, %9357 ], [ %9345, %9351 ]
  %9367 = phi float [ %9337, %9315 ], [ %7614, %9357 ], [ %7614, %9351 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9368 = call float @dx.op.binary.f32(i32 36, float %9364, float 3.225500e+04)  ; FMin(a,b)
  %9369 = call float @dx.op.binary.f32(i32 36, float %9365, float 3.225500e+04)  ; FMin(a,b)
  %9370 = call float @dx.op.binary.f32(i32 36, float %9366, float 3.225500e+04)  ; FMin(a,b)
  %9371 = call float @dx.op.binary.f32(i32 36, float %9367, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9368)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9369)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9370)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9371)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

