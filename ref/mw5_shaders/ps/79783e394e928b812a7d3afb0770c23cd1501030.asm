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
; shader hash: 32a2c09c730fd95c12c042790e9dbda6
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
  %417 = add i32 %56, 488
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
  br i1 %473, label %1123, label %474

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
  %693 = add i32 %56, 440
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
  %745 = add i32 %56, 424
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
  %769 = add i32 %56, 376
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
  %792 = add i32 %56, 456
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
  %990 = add i32 %56, 392
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
  %1074 = add i32 %56, 408
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
  %1110 = add i32 %56, 96
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = lshr i32 %1112, 8
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = call float @dx.op.dot3.f32(i32 55, float %979, float %980, float %981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1119 = fmul fast float %1117, %1118
  %1120 = fadd fast float %1119, %1114
  %1121 = fmul fast float %1120, 0x3F70101020000000
  %1122 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  br label %1123

; <label>:1123                                    ; preds = %1106, %459
  %1124 = phi float [ 0.000000e+00, %459 ], [ %1060, %1106 ]
  %1125 = phi float [ 0.000000e+00, %459 ], [ %1061, %1106 ]
  %1126 = phi float [ 0.000000e+00, %459 ], [ %979, %1106 ]
  %1127 = phi float [ 0.000000e+00, %459 ], [ %980, %1106 ]
  %1128 = phi float [ 0.000000e+00, %459 ], [ %981, %1106 ]
  %1129 = phi float [ 0.000000e+00, %459 ], [ %1107, %1106 ]
  %1130 = phi float [ 0.000000e+00, %459 ], [ %1108, %1106 ]
  %1131 = phi float [ 0.000000e+00, %459 ], [ %1109, %1106 ]
  %1132 = phi float [ 0.000000e+00, %459 ], [ %965, %1106 ]
  %1133 = phi float [ 0.000000e+00, %459 ], [ %761, %1106 ]
  %1134 = phi float [ 0.000000e+00, %459 ], [ %1059, %1106 ]
  %1135 = phi float [ 0.000000e+00, %459 ], [ %1062, %1106 ]
  %1136 = phi float [ 0.000000e+00, %459 ], [ %1122, %1106 ]
  br i1 %407, label %1978, label %1137

; <label>:1137                                    ; preds = %1123
  %1138 = icmp ult i32 %465, 2
  %1139 = add i32 %56, 40
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = add i32 %56, 44
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = or i32 %1144, %1141
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1978, label %1147

; <label>:1147                                    ; preds = %1137
  %1148 = and i32 %1141, 262144
  %1149 = icmp ne i32 %1148, 0
  %1150 = select i1 %1149, float %59, float 1.000000e+00
  %1151 = select i1 %1149, float %60, float 0.000000e+00
  %1152 = select i1 %1149, float %61, float 0.000000e+00
  %1153 = select i1 %1149, float %62, float 1.000000e+00
  %1154 = select i1 %1149, float %63, float %84
  %1155 = select i1 %1149, float %64, float %85
  %1156 = add i32 %56, 300
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = lshr i32 %1158, 16
  %1160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1159)  ; LegacyF16ToF32(value)
  %1161 = fmul fast float %1160, 0x3F50624DE0000000
  %1162 = add i32 %56, 104
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = lshr i32 %1164, 16
  %1166 = and i32 %1165, 255
  %1167 = lshr i32 %1164, 24
  %1168 = add i32 %56, 308
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 65535
  %1172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1171)  ; LegacyF16ToF32(value)
  %1173 = lshr i32 %1170, 16
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = add i32 %56, 48
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 22
  %1179 = shl nuw nsw i32 %1178, 5
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = shl i32 %1177, 4
  %1182 = and i32 %1181, 32752
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = lshr i32 %1177, 7
  %1185 = and i32 %1184, 32752
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 3
  %1189 = fmul fast float %1188, 1.000000e+03
  %1190 = fmul fast float %317, %1189
  %1191 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1192 = fadd fast float %1191, %307
  %1193 = fmul fast float %318, %1189
  %1194 = call float @dx.op.unary.f32(i32 22, float %1193)  ; Frc(value)
  %1195 = fadd fast float %1194, %309
  %1196 = fmul fast float %1161, %1189
  %1197 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1198 = fmul fast float %1197, 0x401921FB60000000
  %1199 = fadd fast float %1198, %1180
  %1200 = call float @dx.op.unary.f32(i32 13, float %1199)  ; Sin(value)
  %1201 = call float @dx.op.unary.f32(i32 12, float %1199)  ; Cos(value)
  %1202 = fsub fast float -0.000000e+00, %1200
  %1203 = fadd fast float %1154, -5.000000e-01
  %1204 = fadd fast float %1155, -5.000000e-01
  %1205 = fmul fast float %1172, %1203
  %1206 = fmul fast float %1174, %1204
  %1207 = fadd fast float %1205, 5.000000e-01
  %1208 = fadd fast float %1206, 5.000000e-01
  %1209 = fmul fast float %1183, %1207
  %1210 = fmul fast float %1186, %1208
  %1211 = fmul fast float %1201, %1209
  %1212 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %1210, float %1211)  ; FMad(a,b,c)
  %1213 = fmul fast float %1200, %1209
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %1210, float %1213)  ; FMad(a,b,c)
  %1215 = fadd fast float %1192, %1212
  %1216 = fadd fast float %1195, %1214
  %1217 = icmp ugt i32 %1166, 1
  %1218 = icmp ugt i32 %1164, 33554431
  %1219 = or i1 %1218, %1217
  br i1 %1219, label %1220, label %1245

; <label>:1220                                    ; preds = %1147
  %1221 = add i32 %56, 244
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = lshr i32 %1223, 16
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = fmul fast float %1188, %1225
  %1227 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1228 = mul nuw nsw i32 %1166, %1167
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1227, %1229
  %1231 = call float @dx.op.unary.f32(i32 27, float %1230)  ; Round_ni(value)
  %1232 = fptoui float %1231 to i32
  %1233 = urem i32 %1232, %1166
  %1234 = udiv i32 %1232, %1167
  %1235 = call float @dx.op.unary.f32(i32 22, float %1215)  ; Frc(value)
  %1236 = call float @dx.op.unary.f32(i32 22, float %1216)  ; Frc(value)
  %1237 = uitofp i32 %1233 to float
  %1238 = uitofp i32 %1234 to float
  %1239 = fadd fast float %1235, %1237
  %1240 = fadd fast float %1236, %1238
  %1241 = uitofp i32 %1166 to float
  %1242 = uitofp i32 %1167 to float
  %1243 = fdiv fast float %1239, %1241
  %1244 = fdiv fast float %1240, %1242
  br label %1245

; <label>:1245                                    ; preds = %1220, %1147
  %1246 = phi float [ %1243, %1220 ], [ %1215, %1147 ]
  %1247 = phi float [ %1244, %1220 ], [ %1216, %1147 ]
  %1248 = and i32 %1141, 16777216
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1359, label %1250

; <label>:1250                                    ; preds = %1245
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1255 = fadd fast float %1252, %161
  %1256 = fadd fast float %1253, %162
  %1257 = fadd fast float %1254, %163
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 0
  %1260 = call float @dx.op.unary.f32(i32 7, float %1259)  ; Saturate(value)
  %1261 = icmp eq i32 %57, 65535
  br i1 %1261, label %1356, label %1262

; <label>:1262                                    ; preds = %1250
  %1263 = lshr i32 %57, 1
  %1264 = shl i32 %1263, 2
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = and i32 %57, 1
  %1268 = icmp ne i32 %1267, 0
  %1269 = lshr i32 %1266, 16
  %1270 = and i32 %1266, 65535
  %1271 = select i1 %1268, i32 %1269, i32 %1270
  %1272 = icmp eq i32 %1271, 65535
  br i1 %1272, label %1352, label %1273

; <label>:1273                                    ; preds = %1262
  %1274 = mul nuw nsw i32 %1271, 40
  %1275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.ResRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.ResRet.f32 %1275, 2
  %1279 = add nuw nsw i32 %1274, 12
  %1280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.ResRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.ResRet.f32 %1280, 2
  %1284 = add nuw nsw i32 %1274, 24
  %1285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.ResRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.ResRet.f32 %1285, 2
  %1289 = add nuw nsw i32 %1274, 36
  %1290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.f32 %1290, 0
  %1292 = fsub fast float %1255, %1276
  %1293 = fsub fast float %1256, %1277
  %1294 = fsub fast float %1257, %1278
  %1295 = fmul fast float %1291, %1292
  %1296 = fmul fast float %1291, %1293
  %1297 = fmul fast float %1291, %1294
  %1298 = call float @dx.op.unary.f32(i32 27, float %1295)  ; Round_ni(value)
  %1299 = call float @dx.op.unary.f32(i32 27, float %1296)  ; Round_ni(value)
  %1300 = call float @dx.op.unary.f32(i32 27, float %1297)  ; Round_ni(value)
  %1301 = fadd fast float %1298, 5.000000e-01
  %1302 = fadd fast float %1299, 5.000000e-01
  %1303 = fadd fast float %1300, 5.000000e-01
  %1304 = fmul fast float %1301, %1281
  %1305 = fmul fast float %1302, %1282
  %1306 = fmul fast float %1303, %1283
  %1307 = shl i32 %57, 2
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = add i32 %1309, 0
  %1311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1312 = call float @dx.op.unary.f32(i32 22, float %1304)  ; Frc(value)
  %1313 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1314 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1311, %dx.types.Handle %49, float %1312, float %1313, float %1314, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.ResRet.f32 %1315, 1
  %1318 = extractvalue %dx.types.ResRet.f32 %1315, 2
  %1319 = fmul fast float %1316, 1.023000e+03
  %1320 = fmul fast float %1317, 1.023000e+03
  %1321 = fmul fast float %1318, 1.023000e+03
  %1322 = fadd fast float %1319, 5.000000e-01
  %1323 = fadd fast float %1320, 5.000000e-01
  %1324 = fadd fast float %1321, 5.000000e-01
  %1325 = call float @dx.op.unary.f32(i32 27, float %1322)  ; Round_ni(value)
  %1326 = call float @dx.op.unary.f32(i32 27, float %1323)  ; Round_ni(value)
  %1327 = call float @dx.op.unary.f32(i32 27, float %1324)  ; Round_ni(value)
  %1328 = fsub fast float %1295, %1298
  %1329 = fsub fast float %1296, %1299
  %1330 = fsub fast float %1297, %1300
  %1331 = fmul fast float %1328, 7.500000e-01
  %1332 = fmul fast float %1329, 7.500000e-01
  %1333 = fmul fast float %1330, 7.500000e-01
  %1334 = fadd fast float %1298, 1.250000e-01
  %1335 = fadd fast float %1334, %1331
  %1336 = fadd fast float %1335, %1325
  %1337 = fadd fast float %1299, 1.250000e-01
  %1338 = fadd fast float %1337, %1332
  %1339 = fadd fast float %1338, %1326
  %1340 = fadd fast float %1300, 1.250000e-01
  %1341 = fadd fast float %1340, %1333
  %1342 = fadd fast float %1341, %1327
  %1343 = fmul fast float %1336, %1286
  %1344 = fmul fast float %1339, %1287
  %1345 = fmul fast float %1342, %1288
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = add i32 %1347, 0
  %1349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1349, %dx.types.Handle %47, float %1343, float %1344, float %1345, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  br label %1352

; <label>:1352                                    ; preds = %1273, %1262
  %1353 = phi float [ %1351, %1273 ], [ -1.000000e+00, %1262 ]
  %1354 = fadd fast float %1353, %1260
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  br label %1356

; <label>:1356                                    ; preds = %1352, %1250
  %1357 = phi float [ %1355, %1352 ], [ %1260, %1250 ]
  %1358 = fmul fast float %1357, %462
  br label %1359

; <label>:1359                                    ; preds = %1356, %1245
  %1360 = phi float [ %1358, %1356 ], [ %462, %1245 ]
  %1361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.i32 %1361, 0
  %1363 = and i32 %1362, 256
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1411, label %1365

; <label>:1365                                    ; preds = %1359
  %1366 = add i32 %56, 444
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = add i32 %1368, 0
  %1370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1371 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1370, %dx.types.Handle %99, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = add i32 %56, 116
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = shl i32 %1375, 4
  %1377 = and i32 %1376, 32752
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = lshr i32 %1375, 7
  %1380 = and i32 %1379, 32752
  %1381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1380)  ; LegacyF16ToF32(value)
  %1382 = fsub fast float 1.000000e+00, %1360
  %1383 = call float @dx.op.binary.f32(i32 35, float %1382, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1384 = bitcast float %1360 to i32
  %1385 = sitofp i32 %1384 to float
  %1386 = fadd fast float %1385, 0xC1CFBF8940000000
  %1387 = fmul fast float %1381, %1386
  %1388 = fadd fast float %1387, 0x41CFBF8940000000
  %1389 = fptosi float %1388 to i32
  %1390 = bitcast i32 %1389 to float
  %1391 = bitcast float %1383 to i32
  %1392 = sitofp i32 %1391 to float
  %1393 = fadd fast float %1392, 0xC1CFBF8940000000
  %1394 = fmul fast float %1393, %1381
  %1395 = fadd fast float %1394, 0x41CFBF8940000000
  %1396 = fptosi float %1395 to i32
  %1397 = bitcast i32 %1396 to float
  %1398 = fmul fast float %1390, %1378
  %1399 = fmul fast float %1397, %1378
  %1400 = fsub fast float %1383, %1398
  %1401 = fadd fast float %1399, %1383
  %1402 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1403 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1404 = fsub fast float %1372, %1402
  %1405 = fsub fast float %1403, %1402
  %1406 = bitcast float %1405 to i32
  %1407 = sub nsw i32 2129859010, %1406
  %1408 = bitcast i32 %1407 to float
  %1409 = fmul fast float %1408, %1404
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  br label %1411

; <label>:1411                                    ; preds = %1365, %1359
  %1412 = phi float [ %1410, %1365 ], [ %1360, %1359 ]
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 128
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1433, label %1417

; <label>:1417                                    ; preds = %1411
  %1418 = add i32 %56, 428
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = add i32 %1420, 0
  %1422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1422, %dx.types.Handle %99, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1424 = extractvalue %dx.types.ResRet.f32 %1423, 0
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = and i32 %1426, 524288
  %1428 = icmp ne i32 %1427, 0
  %1429 = fcmp fast ogt float %1424, 0x3FE0101020000000
  %1430 = select i1 %1429, float 1.000000e+00, float 0.000000e+00
  %1431 = select i1 %1428, float %1430, float %1424
  %1432 = fmul fast float %1431, %1412
  br label %1433

; <label>:1433                                    ; preds = %1417, %1411
  %1434 = phi float [ %1432, %1417 ], [ %1412, %1411 ]
  %1435 = fcmp fast ult float %1434, 0x3F70101020000000
  br i1 %1435, label %1978, label %1436

; <label>:1436                                    ; preds = %1433
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 16
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %1639, label %1441

; <label>:1441                                    ; preds = %1436
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = add i32 %56, 380
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = add i32 %1446, 0
  %1448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1448, %dx.types.Handle %98, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = extractvalue %dx.types.ResRet.f32 %1449, 1
  %1452 = extractvalue %dx.types.ResRet.f32 %1449, 2
  %1453 = extractvalue %dx.types.ResRet.f32 %1449, 3
  %1454 = and i32 %1443, 255
  %1455 = uitofp i32 %1454 to float
  %1456 = lshr i32 %1443, 8
  %1457 = and i32 %1456, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = fmul fast float %1453, %1455
  %1460 = fadd fast float %1459, %1458
  %1461 = fmul fast float %1460, 0x3F70101000000000
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = and i32 %1463, 512
  %1465 = icmp eq i32 %1464, 0
  br i1 %1465, label %1474, label %1466

; <label>:1466                                    ; preds = %1441
  %1467 = add i32 %56, 460
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = add i32 %1469, 0
  %1471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1471, %dx.types.Handle %99, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  br label %1474

; <label>:1474                                    ; preds = %1466, %1441
  %1475 = phi float [ %1473, %1466 ], [ 1.000000e+00, %1441 ]
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 33554432
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1586, label %1480

; <label>:1480                                    ; preds = %1474
  %1481 = add i32 %56, 240
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 65535
  %1485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1484)  ; LegacyF16ToF32(value)
  %1486 = lshr i32 %1483, 16
  %1487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1486)  ; LegacyF16ToF32(value)
  %1488 = add i32 %56, 244
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 65535
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = lshr i32 %1494, 24
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1496, 0x3F70101020000000
  %1498 = and i32 %1494, 255
  %1499 = uitofp i32 %1498 to float
  %1500 = fmul fast float %1499, 0x3F70101020000000
  %1501 = lshr i32 %1494, 8
  %1502 = and i32 %1501, 255
  %1503 = uitofp i32 %1502 to float
  %1504 = fmul fast float %1503, 0x3F70101020000000
  %1505 = lshr i32 %1494, 16
  %1506 = and i32 %1505, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = fmul fast float %1507, 0x3F70101020000000
  %1509 = add i32 %56, 236
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = lshr i32 %1511, 24
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = and i32 %1511, 255
  %1516 = uitofp i32 %1515 to float
  %1517 = fmul fast float %1516, 0x3F70101020000000
  %1518 = lshr i32 %1511, 8
  %1519 = and i32 %1518, 255
  %1520 = uitofp i32 %1519 to float
  %1521 = fmul fast float %1520, 0x3F70101020000000
  %1522 = lshr i32 %1511, 16
  %1523 = and i32 %1522, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = fmul fast float %1524, 0x3F70101020000000
  %1526 = bitcast float %1450 to i32
  %1527 = ashr i32 %1526, 1
  %1528 = sub nsw i32 1597463174, %1527
  %1529 = bitcast i32 %1528 to float
  %1530 = fmul fast float %1450, 5.000000e-01
  %1531 = fmul fast float %1529, %1529
  %1532 = fmul fast float %1531, %1530
  %1533 = fsub fast float 1.500000e+00, %1532
  %1534 = fmul fast float %1529, %1450
  %1535 = fmul fast float %1534, %1533
  %1536 = bitcast float %1451 to i32
  %1537 = ashr i32 %1536, 1
  %1538 = sub nsw i32 1597463174, %1537
  %1539 = bitcast i32 %1538 to float
  %1540 = fmul fast float %1451, 5.000000e-01
  %1541 = fmul fast float %1539, %1539
  %1542 = fmul fast float %1541, %1540
  %1543 = fsub fast float 1.500000e+00, %1542
  %1544 = fmul fast float %1539, %1451
  %1545 = fmul fast float %1544, %1543
  %1546 = bitcast float %1452 to i32
  %1547 = ashr i32 %1546, 1
  %1548 = sub nsw i32 1597463174, %1547
  %1549 = bitcast i32 %1548 to float
  %1550 = fmul fast float %1452, 5.000000e-01
  %1551 = fmul fast float %1549, %1549
  %1552 = fmul fast float %1551, %1550
  %1553 = fsub fast float 1.500000e+00, %1552
  %1554 = fmul fast float %1549, %1452
  %1555 = fmul fast float %1554, %1553
  %1556 = fsub fast float %1535, %1517
  %1557 = fsub fast float %1545, %1521
  %1558 = fsub fast float %1555, %1525
  %1559 = fmul fast float %1556, %1485
  %1560 = fmul fast float %1557, %1487
  %1561 = fmul fast float %1558, %1492
  %1562 = fadd fast float %1559, %1500
  %1563 = fadd fast float %1560, %1504
  %1564 = fadd fast float %1561, %1508
  %1565 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1566 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1567 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1568 = fmul fast float %1565, %1565
  %1569 = fmul fast float %1566, %1566
  %1570 = fmul fast float %1567, %1567
  %1571 = fsub fast float %1568, %1450
  %1572 = fsub fast float %1569, %1451
  %1573 = fsub fast float %1570, %1452
  %1574 = fmul fast float %1571, %1475
  %1575 = fmul fast float %1572, %1475
  %1576 = fmul fast float %1573, %1475
  %1577 = fadd fast float %1574, %1450
  %1578 = fadd fast float %1575, %1451
  %1579 = fadd fast float %1576, %1452
  %1580 = fadd fast float %1497, %1461
  %1581 = fsub fast float %1580, %1514
  %1582 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1583 = fsub fast float %1582, %1461
  %1584 = fmul fast float %1583, %1475
  %1585 = fadd fast float %1584, %1461
  br label %1639

; <label>:1586                                    ; preds = %1474
  %1587 = and i32 %1477, 134217728
  %1588 = icmp eq i32 %1587, 0
  br i1 %1588, label %1623, label %1589

; <label>:1589                                    ; preds = %1586
  %1590 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1591 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1592 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1593 = fadd fast float %1590, -5.000000e-01
  %1594 = fadd fast float %1591, -5.000000e-01
  %1595 = fadd fast float %1592, -5.000000e-01
  %1596 = fmul fast float %1593, %1475
  %1597 = fmul fast float %1594, %1475
  %1598 = fmul fast float %1595, %1475
  %1599 = fadd fast float %1596, 5.000000e-01
  %1600 = fadd fast float %1597, 5.000000e-01
  %1601 = fadd fast float %1598, 5.000000e-01
  %1602 = call float @dx.op.unary.f32(i32 24, float %1450)  ; Sqrt(value)
  %1603 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1604 = call float @dx.op.unary.f32(i32 24, float %1452)  ; Sqrt(value)
  %1605 = fmul fast float %1599, 2.000000e+00
  %1606 = fsub fast float 1.000000e+00, %1605
  %1607 = fmul fast float %1606, %1602
  %1608 = fadd fast float %1607, %1605
  %1609 = fmul fast float %1608, %1602
  %1610 = fmul fast float %1600, 2.000000e+00
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = fmul fast float %1611, %1603
  %1613 = fadd fast float %1612, %1610
  %1614 = fmul fast float %1613, %1603
  %1615 = fmul fast float %1601, 2.000000e+00
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = fmul fast float %1616, %1604
  %1618 = fadd fast float %1617, %1615
  %1619 = fmul fast float %1618, %1604
  %1620 = fmul fast float %1609, %1609
  %1621 = fmul fast float %1614, %1614
  %1622 = fmul fast float %1619, %1619
  br label %1639

; <label>:1623                                    ; preds = %1586
  %1624 = fmul fast float %294, %294
  %1625 = fmul fast float %298, %298
  %1626 = fmul fast float %302, %302
  %1627 = fadd fast float %1624, -1.000000e+00
  %1628 = fadd fast float %1625, -1.000000e+00
  %1629 = fadd fast float %1626, -1.000000e+00
  %1630 = fmul fast float %1475, %1627
  %1631 = fmul fast float %1475, %1628
  %1632 = fmul fast float %1475, %1629
  %1633 = fadd fast float %1630, 1.000000e+00
  %1634 = fadd fast float %1631, 1.000000e+00
  %1635 = fadd fast float %1632, 1.000000e+00
  %1636 = fmul fast float %1633, %1450
  %1637 = fmul fast float %1634, %1451
  %1638 = fmul fast float %1635, %1452
  br label %1639

; <label>:1639                                    ; preds = %1623, %1589, %1480, %1436
  %1640 = phi float [ %1585, %1480 ], [ %1461, %1589 ], [ %1461, %1623 ], [ 0x3FA23C0BE0000000, %1436 ]
  %1641 = phi float [ %1577, %1480 ], [ %1620, %1589 ], [ %1636, %1623 ], [ 1.000000e+00, %1436 ]
  %1642 = phi float [ %1578, %1480 ], [ %1621, %1589 ], [ %1637, %1623 ], [ 1.000000e+00, %1436 ]
  %1643 = phi float [ %1579, %1480 ], [ %1622, %1589 ], [ %1638, %1623 ], [ 1.000000e+00, %1436 ]
  %1644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.i32 %1644, 1
  %1646 = and i32 %1645, 1
  %1647 = icmp ne i32 %1646, 0
  %1648 = add i32 %56, 356
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1648, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = and i32 %1650, 32
  %1652 = icmp ne i32 %1651, 0
  %1653 = and i1 %1647, %1652
  %1654 = select i1 %1653, float 1.000000e+00, float %1641
  %1655 = select i1 %1653, float 0x3FD3333340000000, float %1642
  %1656 = select i1 %1653, float 0x3FD3333340000000, float %1643
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 32
  %1660 = icmp eq i32 %1659, 0
  br i1 %1660, label %1733, label %1661

; <label>:1661                                    ; preds = %1639
  %1662 = add i32 %56, 108
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = add i32 %56, 396
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = add i32 %1667, 0
  %1669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1670 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1669, %dx.types.Handle %98, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1674 = extractvalue %dx.types.ResRet.f32 %1670, 3
  %1675 = and i32 %1664, 255
  %1676 = uitofp i32 %1675 to float
  %1677 = lshr i32 %1664, 8
  %1678 = and i32 %1677, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = lshr i32 %1664, 16
  %1681 = and i32 %1680, 255
  %1682 = uitofp i32 %1681 to float
  %1683 = fmul fast float %1682, 0x3F70101000000000
  %1684 = fmul fast float %1671, %1676
  %1685 = fadd fast float %1684, %1679
  %1686 = fmul fast float %1685, 0x3F70101000000000
  %1687 = fadd fast float %1672, -5.000000e-01
  %1688 = fadd fast float %1674, -5.000000e-01
  %1689 = fmul fast float %1687, %1683
  %1690 = fmul fast float %1688, %1683
  %1691 = fadd fast float %1689, 5.000000e-01
  %1692 = fadd fast float %1690, 5.000000e-01
  %1693 = fmul fast float %1691, 2.000000e+00
  %1694 = fadd fast float %1693, -1.000000e+00
  %1695 = fmul fast float %1692, 2.000000e+00
  %1696 = fadd fast float %1695, -1.000000e+00
  %1697 = fadd fast float %1694, %1696
  %1698 = fmul fast float %1697, 5.000000e-01
  %1699 = fsub fast float %1694, %1696
  %1700 = fmul fast float %1699, 5.000000e-01
  %1701 = call float @dx.op.unary.f32(i32 6, float %1698)  ; FAbs(value)
  %1702 = fsub fast float 1.000000e+00, %1701
  %1703 = call float @dx.op.unary.f32(i32 6, float %1700)  ; FAbs(value)
  %1704 = fsub fast float %1702, %1703
  %1705 = call float @dx.op.dot3.f32(i32 55, float %1698, float %1700, float %1704, float %1698, float %1700, float %1704)  ; Dot3(ax,ay,az,bx,by,bz)
  %1706 = call float @dx.op.unary.f32(i32 25, float %1705)  ; Rsqrt(value)
  %1707 = fmul fast float %1698, %1706
  %1708 = fmul fast float %1700, %1706
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = and i32 %1710, 67108864
  %1712 = icmp eq i32 %1711, 0
  br i1 %1712, label %1729, label %1713

; <label>:1713                                    ; preds = %1661
  %1714 = add i32 %56, 296
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = and i32 %1716, 65535
  %1718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1717)  ; LegacyF16ToF32(value)
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = and i32 %1720, 65535
  %1722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1721)  ; LegacyF16ToF32(value)
  %1723 = lshr i32 %1716, 16
  %1724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1723)  ; LegacyF16ToF32(value)
  %1725 = fsub fast float %1686, %1724
  %1726 = fmul fast float %1725, %1718
  %1727 = fadd fast float %1726, %1722
  %1728 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  br label %1729

; <label>:1729                                    ; preds = %1713, %1661
  %1730 = phi float [ %1728, %1713 ], [ %1686, %1661 ]
  %1731 = call float @dx.op.dot2.f32(i32 54, float %1707, float %1708, float %1150, float %1151)  ; Dot2(ax,ay,bx,by)
  %1732 = call float @dx.op.dot2.f32(i32 54, float %1707, float %1708, float %1152, float %1153)  ; Dot2(ax,ay,bx,by)
  br label %1733

; <label>:1733                                    ; preds = %1729, %1639
  %1734 = phi float [ %1730, %1729 ], [ 0x3FD6666660000000, %1639 ]
  %1735 = phi float [ %1731, %1729 ], [ 0.000000e+00, %1639 ]
  %1736 = phi float [ %1732, %1729 ], [ 0.000000e+00, %1639 ]
  %1737 = phi float [ %1673, %1729 ], [ 1.000000e+00, %1639 ]
  %1738 = add i32 %56, 176
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = lshr i32 %1740, 22
  %1742 = shl nuw nsw i32 %1741, 5
  %1743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1742)  ; LegacyF16ToF32(value)
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = and i32 %1745, 64
  %1747 = icmp eq i32 %1746, 0
  br i1 %1747, label %1781, label %1748

; <label>:1748                                    ; preds = %1733
  %1749 = add i32 %56, 412
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = add i32 %1751, 0
  %1753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1752, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = and i32 %1755, 131072
  %1757 = icmp eq i32 %1756, 0
  %1758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1753, %dx.types.Handle %98, float %1246, float %1247, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1759 = extractvalue %dx.types.ResRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.ResRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.ResRet.f32 %1758, 2
  %1762 = fmul fast float %1759, %282
  %1763 = fmul fast float %1760, %285
  %1764 = fmul fast float %1761, %288
  br i1 %1757, label %1771, label %1765

; <label>:1765                                    ; preds = %1748
  %1766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = extractvalue %dx.types.CBufRet.f32 %1766, 0
  %1768 = fmul fast float %1767, %1762
  %1769 = fmul fast float %1767, %1763
  %1770 = fmul fast float %1767, %1764
  br label %1771

; <label>:1771                                    ; preds = %1765, %1748
  %1772 = phi float [ %1768, %1765 ], [ %1762, %1748 ]
  %1773 = phi float [ %1769, %1765 ], [ %1763, %1748 ]
  %1774 = phi float [ %1770, %1765 ], [ %1764, %1748 ]
  %1775 = fmul fast float %1772, %1743
  %1776 = select i1 %223, float %1775, float %1772
  %1777 = call float @dx.op.dot3.f32(i32 55, float %1776, float %1773, float %1774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1778 = select i1 %223, float 0.000000e+00, float %1772
  %1779 = select i1 %223, float %1777, float %1773
  %1780 = select i1 %223, float 0.000000e+00, float %1774
  br label %1781

; <label>:1781                                    ; preds = %1771, %1733
  %1782 = phi float [ %1778, %1771 ], [ 0.000000e+00, %1733 ]
  %1783 = phi float [ %1779, %1771 ], [ 0.000000e+00, %1733 ]
  %1784 = phi float [ %1780, %1771 ], [ 0.000000e+00, %1733 ]
  %1785 = add i32 %56, 112
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = and i32 %1787, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = lshr i32 %1787, 8
  %1791 = and i32 %1790, 255
  %1792 = uitofp i32 %1791 to float
  %1793 = call float @dx.op.dot3.f32(i32 55, float %1654, float %1655, float %1656, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1794 = fmul fast float %1792, %1793
  %1795 = fadd fast float %1794, %1789
  %1796 = fmul fast float %1795, 0x3F70101020000000
  %1797 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  br i1 %1138, label %1798, label %1806

; <label>:1798                                    ; preds = %1781
  %1799 = fsub fast float 1.000000e+00, %1434
  %1800 = fmul fast float %1799, %1126
  %1801 = fmul fast float %1799, %1127
  %1802 = fmul fast float %1799, %1128
  %1803 = fmul fast float %1799, %1129
  %1804 = fmul fast float %1799, %1130
  %1805 = fmul fast float %1799, %1131
  br label %1806

; <label>:1806                                    ; preds = %1798, %1781
  %1807 = phi float [ %1800, %1798 ], [ %1126, %1781 ]
  %1808 = phi float [ %1801, %1798 ], [ %1127, %1781 ]
  %1809 = phi float [ %1802, %1798 ], [ %1128, %1781 ]
  %1810 = phi float [ %1803, %1798 ], [ %1129, %1781 ]
  %1811 = phi float [ %1804, %1798 ], [ %1130, %1781 ]
  %1812 = phi float [ %1805, %1798 ], [ %1131, %1781 ]
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 3
  %1816 = icmp eq i32 %1815, 3
  br i1 %1816, label %1895, label %1817

; <label>:1817                                    ; preds = %1806
  %1818 = and i32 %1814, 16
  %1819 = icmp ne i32 %1818, 0
  %1820 = select i1 %1819, float %1434, float 0.000000e+00
  %1821 = icmp eq i32 %1815, 0
  br i1 %1821, label %1822, label %1850

; <label>:1822                                    ; preds = %1817
  %1823 = and i32 %1814, 64
  %1824 = icmp ne i32 %1823, 0
  %1825 = select i1 %1824, float %1434, float 0.000000e+00
  %1826 = fsub fast float %1654, %1807
  %1827 = fsub fast float %1655, %1808
  %1828 = fsub fast float %1656, %1809
  %1829 = fmul fast float %1820, %1826
  %1830 = fmul fast float %1820, %1827
  %1831 = fmul fast float %1820, %1828
  %1832 = fadd fast float %1829, %1807
  %1833 = fadd fast float %1830, %1808
  %1834 = fadd fast float %1831, %1809
  %1835 = fsub fast float %1640, %1132
  %1836 = fmul fast float %1820, %1835
  %1837 = fadd fast float %1836, %1132
  %1838 = fsub fast float %1782, %1810
  %1839 = fsub fast float %1783, %1811
  %1840 = fsub fast float %1784, %1812
  %1841 = fmul fast float %1825, %1838
  %1842 = fmul fast float %1825, %1839
  %1843 = fmul fast float %1825, %1840
  %1844 = fadd fast float %1841, %1810
  %1845 = fadd fast float %1842, %1811
  %1846 = fadd fast float %1843, %1812
  %1847 = fsub fast float %1797, %1136
  %1848 = fmul fast float %1820, %1847
  %1849 = fadd fast float %1848, %1136
  br label %1895

; <label>:1850                                    ; preds = %1817
  %1851 = icmp eq i32 %1815, 1
  br i1 %1851, label %1852, label %1865

; <label>:1852                                    ; preds = %1850
  %1853 = fadd fast float %1654, -1.000000e+00
  %1854 = fadd fast float %1655, -1.000000e+00
  %1855 = fadd fast float %1656, -1.000000e+00
  %1856 = fmul fast float %1820, %1853
  %1857 = fmul fast float %1820, %1854
  %1858 = fmul fast float %1820, %1855
  %1859 = fadd fast float %1856, 1.000000e+00
  %1860 = fadd fast float %1857, 1.000000e+00
  %1861 = fadd fast float %1858, 1.000000e+00
  %1862 = fmul fast float %1859, %1807
  %1863 = fmul fast float %1860, %1808
  %1864 = fmul fast float %1861, %1809
  br label %1895

; <label>:1865                                    ; preds = %1850
  %1866 = icmp eq i32 %1815, 2
  br i1 %1866, label %1867, label %1895

; <label>:1867                                    ; preds = %1865
  %1868 = call float @dx.op.unary.f32(i32 24, float %1654)  ; Sqrt(value)
  %1869 = call float @dx.op.unary.f32(i32 24, float %1655)  ; Sqrt(value)
  %1870 = call float @dx.op.unary.f32(i32 24, float %1656)  ; Sqrt(value)
  %1871 = fadd fast float %1868, -5.000000e-01
  %1872 = fadd fast float %1869, -5.000000e-01
  %1873 = fadd fast float %1870, -5.000000e-01
  %1874 = fmul fast float %1871, %1820
  %1875 = fmul fast float %1872, %1820
  %1876 = fmul fast float %1873, %1820
  %1877 = fadd fast float %1874, 5.000000e-01
  %1878 = fadd fast float %1875, 5.000000e-01
  %1879 = fadd fast float %1876, 5.000000e-01
  %1880 = fmul fast float %1877, 2.000000e+00
  %1881 = fsub fast float 1.000000e+00, %1880
  %1882 = fmul fast float %1881, %1807
  %1883 = fadd fast float %1882, %1880
  %1884 = fmul fast float %1883, %1807
  %1885 = fmul fast float %1878, 2.000000e+00
  %1886 = fsub fast float 1.000000e+00, %1885
  %1887 = fmul fast float %1886, %1808
  %1888 = fadd fast float %1887, %1885
  %1889 = fmul fast float %1888, %1808
  %1890 = fmul fast float %1879, 2.000000e+00
  %1891 = fsub fast float 1.000000e+00, %1890
  %1892 = fmul fast float %1891, %1809
  %1893 = fadd fast float %1892, %1890
  %1894 = fmul fast float %1893, %1809
  br label %1895

; <label>:1895                                    ; preds = %1867, %1865, %1852, %1822, %1806
  %1896 = phi float [ %1807, %1806 ], [ %1884, %1867 ], [ %1807, %1865 ], [ %1862, %1852 ], [ %1832, %1822 ]
  %1897 = phi float [ %1808, %1806 ], [ %1889, %1867 ], [ %1808, %1865 ], [ %1863, %1852 ], [ %1833, %1822 ]
  %1898 = phi float [ %1809, %1806 ], [ %1894, %1867 ], [ %1809, %1865 ], [ %1864, %1852 ], [ %1834, %1822 ]
  %1899 = phi float [ %1810, %1806 ], [ %1810, %1867 ], [ %1810, %1865 ], [ %1810, %1852 ], [ %1844, %1822 ]
  %1900 = phi float [ %1811, %1806 ], [ %1811, %1867 ], [ %1811, %1865 ], [ %1811, %1852 ], [ %1845, %1822 ]
  %1901 = phi float [ %1812, %1806 ], [ %1812, %1867 ], [ %1812, %1865 ], [ %1812, %1852 ], [ %1846, %1822 ]
  %1902 = phi float [ %1132, %1806 ], [ %1132, %1867 ], [ %1132, %1865 ], [ %1132, %1852 ], [ %1837, %1822 ]
  %1903 = phi float [ %1136, %1806 ], [ %1136, %1867 ], [ %1136, %1865 ], [ %1136, %1852 ], [ %1849, %1822 ]
  %1904 = and i32 %1814, 12
  %1905 = icmp eq i32 %1904, 12
  br i1 %1905, label %1978, label %1906

; <label>:1906                                    ; preds = %1895
  %1907 = and i32 %1814, 2097184
  %1908 = icmp eq i32 %1907, 2097184
  %1909 = select i1 %1908, float %1434, float 0.000000e+00
  %1910 = and i32 %1814, 4194336
  %1911 = icmp eq i32 %1910, 4194336
  %1912 = select i1 %1911, float %1434, float 0.000000e+00
  %1913 = and i32 %1814, 8388640
  %1914 = icmp eq i32 %1913, 8388640
  %1915 = select i1 %1914, float %1434, float 0.000000e+00
  %1916 = icmp eq i32 %1904, 0
  br i1 %1916, label %1917, label %1930

; <label>:1917                                    ; preds = %1906
  %1918 = fsub fast float %1735, %1124
  %1919 = fsub fast float %1736, %1125
  %1920 = fmul fast float %1909, %1918
  %1921 = fmul fast float %1909, %1919
  %1922 = fadd fast float %1920, %1124
  %1923 = fadd fast float %1921, %1125
  %1924 = fsub fast float %1737, %1135
  %1925 = fmul fast float %1912, %1924
  %1926 = fadd fast float %1925, %1135
  %1927 = fsub fast float %1734, %1134
  %1928 = fmul fast float %1915, %1927
  %1929 = fadd fast float %1928, %1134
  br label %1978

; <label>:1930                                    ; preds = %1906
  %1931 = icmp eq i32 %1904, 4
  br i1 %1931, label %1932, label %1964

; <label>:1932                                    ; preds = %1930
  %1933 = fmul fast float %1909, %1735
  %1934 = fmul fast float %1909, %1736
  %1935 = fadd fast float %1933, %1124
  %1936 = fadd fast float %1934, %1125
  %1937 = call float @dx.op.binary.f32(i32 36, float %1135, float %1737)  ; FMin(a,b)
  %1938 = fsub fast float %1937, %1135
  %1939 = fmul fast float %1938, %1912
  %1940 = fadd fast float %1939, %1135
  %1941 = fadd fast float %1734, %1134
  %1942 = fmul fast float %1941, 0x3FF337FAE0000000
  %1943 = fmul fast float %1134, %1134
  %1944 = fmul fast float %1734, %1734
  %1945 = fadd fast float %1944, %1943
  %1946 = fmul fast float %1945, 0x3FE5152B00000000
  %1947 = fmul fast float %1134, 0xBFCC1F85E0000000
  %1948 = fmul fast float %1947, %1734
  %1949 = fadd fast float %1948, 0xBFE1363700000000
  %1950 = fadd fast float %1949, %1942
  %1951 = fsub fast float %1950, %1946
  %1952 = fmul fast float %1941, 0x3FBA6F0D00000000
  %1953 = fmul fast float %1945, 0x3FD0432880000000
  %1954 = fmul fast float %1134, 0xBFEF110800000000
  %1955 = fmul fast float %1954, %1734
  %1956 = fadd fast float %1955, 1.000000e+00
  %1957 = fsub fast float %1956, %1952
  %1958 = fadd fast float %1957, %1953
  %1959 = fdiv fast float %1951, %1958
  %1960 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1961 = fsub fast float %1960, %1134
  %1962 = fmul fast float %1961, %1915
  %1963 = fadd fast float %1962, %1134
  br label %1978

; <label>:1964                                    ; preds = %1930
  %1965 = icmp eq i32 %1904, 8
  br i1 %1965, label %1966, label %1978

; <label>:1966                                    ; preds = %1964
  %1967 = fmul fast float %1909, %1735
  %1968 = fmul fast float %1909, %1736
  %1969 = fadd fast float %1967, %1124
  %1970 = fadd fast float %1968, %1125
  %1971 = call float @dx.op.binary.f32(i32 36, float %1135, float %1737)  ; FMin(a,b)
  %1972 = fsub fast float %1971, %1135
  %1973 = fmul fast float %1972, %1912
  %1974 = fadd fast float %1973, %1135
  %1975 = fsub fast float %1734, %1134
  %1976 = fmul fast float %1915, %1975
  %1977 = fadd fast float %1976, %1134
  br label %1978

; <label>:1978                                    ; preds = %1966, %1964, %1932, %1917, %1895, %1433, %1137, %1123
  %1979 = phi float [ %1124, %1895 ], [ %1124, %1433 ], [ %1124, %1123 ], [ %1969, %1966 ], [ %1124, %1964 ], [ %1935, %1932 ], [ %1922, %1917 ], [ %1124, %1137 ]
  %1980 = phi float [ %1125, %1895 ], [ %1125, %1433 ], [ %1125, %1123 ], [ %1970, %1966 ], [ %1125, %1964 ], [ %1936, %1932 ], [ %1923, %1917 ], [ %1125, %1137 ]
  %1981 = phi float [ %1896, %1895 ], [ %1126, %1433 ], [ %1126, %1123 ], [ %1896, %1966 ], [ %1896, %1964 ], [ %1896, %1932 ], [ %1896, %1917 ], [ %1126, %1137 ]
  %1982 = phi float [ %1897, %1895 ], [ %1127, %1433 ], [ %1127, %1123 ], [ %1897, %1966 ], [ %1897, %1964 ], [ %1897, %1932 ], [ %1897, %1917 ], [ %1127, %1137 ]
  %1983 = phi float [ %1898, %1895 ], [ %1128, %1433 ], [ %1128, %1123 ], [ %1898, %1966 ], [ %1898, %1964 ], [ %1898, %1932 ], [ %1898, %1917 ], [ %1128, %1137 ]
  %1984 = phi float [ %1899, %1895 ], [ %1129, %1433 ], [ %1129, %1123 ], [ %1899, %1966 ], [ %1899, %1964 ], [ %1899, %1932 ], [ %1899, %1917 ], [ %1129, %1137 ]
  %1985 = phi float [ %1900, %1895 ], [ %1130, %1433 ], [ %1130, %1123 ], [ %1900, %1966 ], [ %1900, %1964 ], [ %1900, %1932 ], [ %1900, %1917 ], [ %1130, %1137 ]
  %1986 = phi float [ %1901, %1895 ], [ %1131, %1433 ], [ %1131, %1123 ], [ %1901, %1966 ], [ %1901, %1964 ], [ %1901, %1932 ], [ %1901, %1917 ], [ %1131, %1137 ]
  %1987 = phi float [ %1902, %1895 ], [ %1132, %1433 ], [ %1132, %1123 ], [ %1902, %1966 ], [ %1902, %1964 ], [ %1902, %1932 ], [ %1902, %1917 ], [ %1132, %1137 ]
  %1988 = phi float [ %1134, %1895 ], [ %1134, %1433 ], [ %1134, %1123 ], [ %1977, %1966 ], [ %1134, %1964 ], [ %1963, %1932 ], [ %1929, %1917 ], [ %1134, %1137 ]
  %1989 = phi float [ %1135, %1895 ], [ %1135, %1433 ], [ %1135, %1123 ], [ %1974, %1966 ], [ %1135, %1964 ], [ %1940, %1932 ], [ %1926, %1917 ], [ %1135, %1137 ]
  %1990 = phi float [ %1903, %1895 ], [ %1136, %1433 ], [ %1136, %1123 ], [ %1903, %1966 ], [ %1903, %1964 ], [ %1903, %1932 ], [ %1903, %1917 ], [ %1136, %1137 ]
  br i1 %409, label %2832, label %1991

; <label>:1991                                    ; preds = %1978
  %1992 = icmp ult i32 %465, 3
  %1993 = add i32 %56, 56
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = add i32 %56, 60
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = or i32 %1998, %1995
  %2000 = icmp eq i32 %1999, 0
  br i1 %2000, label %2832, label %2001

; <label>:2001                                    ; preds = %1991
  %2002 = and i32 %1995, 262144
  %2003 = icmp ne i32 %2002, 0
  %2004 = select i1 %2003, float %59, float 1.000000e+00
  %2005 = select i1 %2003, float %60, float 0.000000e+00
  %2006 = select i1 %2003, float %61, float 0.000000e+00
  %2007 = select i1 %2003, float %62, float 1.000000e+00
  %2008 = select i1 %2003, float %63, float %84
  %2009 = select i1 %2003, float %64, float %85
  %2010 = add i32 %56, 316
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = lshr i32 %2012, 16
  %2014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2013)  ; LegacyF16ToF32(value)
  %2015 = fmul fast float %2014, 0x3F50624DE0000000
  %2016 = add i32 %56, 120
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = lshr i32 %2018, 16
  %2020 = and i32 %2019, 255
  %2021 = lshr i32 %2018, 24
  %2022 = add i32 %56, 324
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = and i32 %2024, 65535
  %2026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2025)  ; LegacyF16ToF32(value)
  %2027 = lshr i32 %2024, 16
  %2028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2027)  ; LegacyF16ToF32(value)
  %2029 = add i32 %56, 64
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = lshr i32 %2031, 22
  %2033 = shl nuw nsw i32 %2032, 5
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = shl i32 %2031, 4
  %2036 = and i32 %2035, 32752
  %2037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2036)  ; LegacyF16ToF32(value)
  %2038 = lshr i32 %2031, 7
  %2039 = and i32 %2038, 32752
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2042 = extractvalue %dx.types.CBufRet.f32 %2041, 3
  %2043 = fmul fast float %2042, 1.000000e+03
  %2044 = fmul fast float %359, %2043
  %2045 = call float @dx.op.unary.f32(i32 22, float %2044)  ; Frc(value)
  %2046 = fadd fast float %2045, %349
  %2047 = fmul fast float %360, %2043
  %2048 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2049 = fadd fast float %2048, %351
  %2050 = fmul fast float %2015, %2043
  %2051 = call float @dx.op.unary.f32(i32 22, float %2050)  ; Frc(value)
  %2052 = fmul fast float %2051, 0x401921FB60000000
  %2053 = fadd fast float %2052, %2034
  %2054 = call float @dx.op.unary.f32(i32 13, float %2053)  ; Sin(value)
  %2055 = call float @dx.op.unary.f32(i32 12, float %2053)  ; Cos(value)
  %2056 = fsub fast float -0.000000e+00, %2054
  %2057 = fadd fast float %2008, -5.000000e-01
  %2058 = fadd fast float %2009, -5.000000e-01
  %2059 = fmul fast float %2026, %2057
  %2060 = fmul fast float %2028, %2058
  %2061 = fadd fast float %2059, 5.000000e-01
  %2062 = fadd fast float %2060, 5.000000e-01
  %2063 = fmul fast float %2037, %2061
  %2064 = fmul fast float %2040, %2062
  %2065 = fmul fast float %2055, %2063
  %2066 = call float @dx.op.tertiary.f32(i32 46, float %2056, float %2064, float %2065)  ; FMad(a,b,c)
  %2067 = fmul fast float %2054, %2063
  %2068 = call float @dx.op.tertiary.f32(i32 46, float %2055, float %2064, float %2067)  ; FMad(a,b,c)
  %2069 = fadd fast float %2046, %2066
  %2070 = fadd fast float %2049, %2068
  %2071 = icmp ugt i32 %2020, 1
  %2072 = icmp ugt i32 %2018, 33554431
  %2073 = or i1 %2072, %2071
  br i1 %2073, label %2074, label %2099

; <label>:2074                                    ; preds = %2001
  %2075 = add i32 %56, 260
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = lshr i32 %2077, 16
  %2079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2078)  ; LegacyF16ToF32(value)
  %2080 = fmul fast float %2042, %2079
  %2081 = call float @dx.op.unary.f32(i32 22, float %2080)  ; Frc(value)
  %2082 = mul nuw nsw i32 %2020, %2021
  %2083 = uitofp i32 %2082 to float
  %2084 = fmul fast float %2081, %2083
  %2085 = call float @dx.op.unary.f32(i32 27, float %2084)  ; Round_ni(value)
  %2086 = fptoui float %2085 to i32
  %2087 = urem i32 %2086, %2020
  %2088 = udiv i32 %2086, %2021
  %2089 = call float @dx.op.unary.f32(i32 22, float %2069)  ; Frc(value)
  %2090 = call float @dx.op.unary.f32(i32 22, float %2070)  ; Frc(value)
  %2091 = uitofp i32 %2087 to float
  %2092 = uitofp i32 %2088 to float
  %2093 = fadd fast float %2089, %2091
  %2094 = fadd fast float %2090, %2092
  %2095 = uitofp i32 %2020 to float
  %2096 = uitofp i32 %2021 to float
  %2097 = fdiv fast float %2093, %2095
  %2098 = fdiv fast float %2094, %2096
  br label %2099

; <label>:2099                                    ; preds = %2074, %2001
  %2100 = phi float [ %2097, %2074 ], [ %2069, %2001 ]
  %2101 = phi float [ %2098, %2074 ], [ %2070, %2001 ]
  %2102 = and i32 %1995, 16777216
  %2103 = icmp eq i32 %2102, 0
  br i1 %2103, label %2213, label %2104

; <label>:2104                                    ; preds = %2099
  %2105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2106 = extractvalue %dx.types.CBufRet.f32 %2105, 0
  %2107 = extractvalue %dx.types.CBufRet.f32 %2105, 1
  %2108 = extractvalue %dx.types.CBufRet.f32 %2105, 2
  %2109 = fadd fast float %2106, %161
  %2110 = fadd fast float %2107, %162
  %2111 = fadd fast float %2108, %163
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 0
  %2114 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2115 = icmp eq i32 %57, 65535
  br i1 %2115, label %2210, label %2116

; <label>:2116                                    ; preds = %2104
  %2117 = lshr i32 %57, 1
  %2118 = shl i32 %2117, 2
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = and i32 %57, 1
  %2122 = icmp ne i32 %2121, 0
  %2123 = lshr i32 %2120, 16
  %2124 = and i32 %2120, 65535
  %2125 = select i1 %2122, i32 %2123, i32 %2124
  %2126 = icmp eq i32 %2125, 65535
  br i1 %2126, label %2206, label %2127

; <label>:2127                                    ; preds = %2116
  %2128 = mul nuw nsw i32 %2125, 40
  %2129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.f32 %2129, 0
  %2131 = extractvalue %dx.types.ResRet.f32 %2129, 1
  %2132 = extractvalue %dx.types.ResRet.f32 %2129, 2
  %2133 = add nuw nsw i32 %2128, 12
  %2134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.ResRet.f32 %2134, 1
  %2137 = extractvalue %dx.types.ResRet.f32 %2134, 2
  %2138 = add nuw nsw i32 %2128, 24
  %2139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.ResRet.f32 %2139, 1
  %2142 = extractvalue %dx.types.ResRet.f32 %2139, 2
  %2143 = add nuw nsw i32 %2128, 36
  %2144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = fsub fast float %2109, %2130
  %2147 = fsub fast float %2110, %2131
  %2148 = fsub fast float %2111, %2132
  %2149 = fmul fast float %2145, %2146
  %2150 = fmul fast float %2145, %2147
  %2151 = fmul fast float %2145, %2148
  %2152 = call float @dx.op.unary.f32(i32 27, float %2149)  ; Round_ni(value)
  %2153 = call float @dx.op.unary.f32(i32 27, float %2150)  ; Round_ni(value)
  %2154 = call float @dx.op.unary.f32(i32 27, float %2151)  ; Round_ni(value)
  %2155 = fadd fast float %2152, 5.000000e-01
  %2156 = fadd fast float %2153, 5.000000e-01
  %2157 = fadd fast float %2154, 5.000000e-01
  %2158 = fmul fast float %2155, %2135
  %2159 = fmul fast float %2156, %2136
  %2160 = fmul fast float %2157, %2137
  %2161 = shl i32 %57, 2
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2161, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = add i32 %2163, 0
  %2165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2166 = call float @dx.op.unary.f32(i32 22, float %2158)  ; Frc(value)
  %2167 = call float @dx.op.unary.f32(i32 22, float %2159)  ; Frc(value)
  %2168 = call float @dx.op.unary.f32(i32 22, float %2160)  ; Frc(value)
  %2169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2165, %dx.types.Handle %49, float %2166, float %2167, float %2168, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2170 = extractvalue %dx.types.ResRet.f32 %2169, 0
  %2171 = extractvalue %dx.types.ResRet.f32 %2169, 1
  %2172 = extractvalue %dx.types.ResRet.f32 %2169, 2
  %2173 = fmul fast float %2170, 1.023000e+03
  %2174 = fmul fast float %2171, 1.023000e+03
  %2175 = fmul fast float %2172, 1.023000e+03
  %2176 = fadd fast float %2173, 5.000000e-01
  %2177 = fadd fast float %2174, 5.000000e-01
  %2178 = fadd fast float %2175, 5.000000e-01
  %2179 = call float @dx.op.unary.f32(i32 27, float %2176)  ; Round_ni(value)
  %2180 = call float @dx.op.unary.f32(i32 27, float %2177)  ; Round_ni(value)
  %2181 = call float @dx.op.unary.f32(i32 27, float %2178)  ; Round_ni(value)
  %2182 = fsub fast float %2149, %2152
  %2183 = fsub fast float %2150, %2153
  %2184 = fsub fast float %2151, %2154
  %2185 = fmul fast float %2182, 7.500000e-01
  %2186 = fmul fast float %2183, 7.500000e-01
  %2187 = fmul fast float %2184, 7.500000e-01
  %2188 = fadd fast float %2152, 1.250000e-01
  %2189 = fadd fast float %2188, %2185
  %2190 = fadd fast float %2189, %2179
  %2191 = fadd fast float %2153, 1.250000e-01
  %2192 = fadd fast float %2191, %2186
  %2193 = fadd fast float %2192, %2180
  %2194 = fadd fast float %2154, 1.250000e-01
  %2195 = fadd fast float %2194, %2187
  %2196 = fadd fast float %2195, %2181
  %2197 = fmul fast float %2190, %2140
  %2198 = fmul fast float %2193, %2141
  %2199 = fmul fast float %2196, %2142
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2161, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = add i32 %2201, 0
  %2203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2203, %dx.types.Handle %47, float %2197, float %2198, float %2199, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2205 = extractvalue %dx.types.ResRet.f32 %2204, 0
  br label %2206

; <label>:2206                                    ; preds = %2127, %2116
  %2207 = phi float [ %2205, %2127 ], [ -1.000000e+00, %2116 ]
  %2208 = fadd fast float %2207, %2114
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  br label %2210

; <label>:2210                                    ; preds = %2206, %2104
  %2211 = phi float [ %2209, %2206 ], [ %2114, %2104 ]
  %2212 = fmul fast float %2211, %461
  br label %2213

; <label>:2213                                    ; preds = %2210, %2099
  %2214 = phi float [ %2212, %2210 ], [ %461, %2099 ]
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 256
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2265, label %2219

; <label>:2219                                    ; preds = %2213
  %2220 = add i32 %56, 448
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = add i32 %2222, 0
  %2224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2224, %dx.types.Handle %99, float %2100, float %2101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  %2227 = add i32 %56, 132
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = shl i32 %2229, 4
  %2231 = and i32 %2230, 32752
  %2232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2231)  ; LegacyF16ToF32(value)
  %2233 = lshr i32 %2229, 7
  %2234 = and i32 %2233, 32752
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = fsub fast float 1.000000e+00, %2214
  %2237 = call float @dx.op.binary.f32(i32 35, float %2236, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2238 = bitcast float %2214 to i32
  %2239 = sitofp i32 %2238 to float
  %2240 = fadd fast float %2239, 0xC1CFBF8940000000
  %2241 = fmul fast float %2235, %2240
  %2242 = fadd fast float %2241, 0x41CFBF8940000000
  %2243 = fptosi float %2242 to i32
  %2244 = bitcast i32 %2243 to float
  %2245 = bitcast float %2237 to i32
  %2246 = sitofp i32 %2245 to float
  %2247 = fadd fast float %2246, 0xC1CFBF8940000000
  %2248 = fmul fast float %2247, %2235
  %2249 = fadd fast float %2248, 0x41CFBF8940000000
  %2250 = fptosi float %2249 to i32
  %2251 = bitcast i32 %2250 to float
  %2252 = fmul fast float %2244, %2232
  %2253 = fmul fast float %2251, %2232
  %2254 = fsub fast float %2237, %2252
  %2255 = fadd fast float %2253, %2237
  %2256 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2257 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2258 = fsub fast float %2226, %2256
  %2259 = fsub fast float %2257, %2256
  %2260 = bitcast float %2259 to i32
  %2261 = sub nsw i32 2129859010, %2260
  %2262 = bitcast i32 %2261 to float
  %2263 = fmul fast float %2262, %2258
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  br label %2265

; <label>:2265                                    ; preds = %2219, %2213
  %2266 = phi float [ %2264, %2219 ], [ %2214, %2213 ]
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = and i32 %2268, 128
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2287, label %2271

; <label>:2271                                    ; preds = %2265
  %2272 = add i32 %56, 432
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = add i32 %2274, 0
  %2276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2276, %dx.types.Handle %99, float %2100, float %2101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 524288
  %2282 = icmp ne i32 %2281, 0
  %2283 = fcmp fast ogt float %2278, 0x3FE0101020000000
  %2284 = select i1 %2283, float 1.000000e+00, float 0.000000e+00
  %2285 = select i1 %2282, float %2284, float %2278
  %2286 = fmul fast float %2285, %2266
  br label %2287

; <label>:2287                                    ; preds = %2271, %2265
  %2288 = phi float [ %2286, %2271 ], [ %2266, %2265 ]
  %2289 = fcmp fast ult float %2288, 0x3F70101020000000
  br i1 %2289, label %2832, label %2290

; <label>:2290                                    ; preds = %2287
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = and i32 %2292, 16
  %2294 = icmp eq i32 %2293, 0
  br i1 %2294, label %2493, label %2295

; <label>:2295                                    ; preds = %2290
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %56, 384
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2298, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = add i32 %2300, 0
  %2302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2302, %dx.types.Handle %98, float %2100, float %2101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = extractvalue %dx.types.ResRet.f32 %2303, 3
  %2308 = and i32 %2297, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = lshr i32 %2297, 8
  %2311 = and i32 %2310, 255
  %2312 = uitofp i32 %2311 to float
  %2313 = fmul fast float %2307, %2309
  %2314 = fadd fast float %2313, %2312
  %2315 = fmul fast float %2314, 0x3F70101000000000
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 512
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2328, label %2320

; <label>:2320                                    ; preds = %2295
  %2321 = add i32 %56, 464
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = add i32 %2323, 0
  %2325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2324, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2325, %dx.types.Handle %99, float %2100, float %2101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  br label %2328

; <label>:2328                                    ; preds = %2320, %2295
  %2329 = phi float [ %2327, %2320 ], [ 1.000000e+00, %2295 ]
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 33554432
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2440, label %2334

; <label>:2334                                    ; preds = %2328
  %2335 = add i32 %56, 256
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 65535
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = lshr i32 %2337, 16
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = add i32 %56, 260
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 65535
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = lshr i32 %2348, 24
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = and i32 %2348, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = fmul fast float %2353, 0x3F70101020000000
  %2355 = lshr i32 %2348, 8
  %2356 = and i32 %2355, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = fmul fast float %2357, 0x3F70101020000000
  %2359 = lshr i32 %2348, 16
  %2360 = and i32 %2359, 255
  %2361 = uitofp i32 %2360 to float
  %2362 = fmul fast float %2361, 0x3F70101020000000
  %2363 = add i32 %56, 252
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = lshr i32 %2365, 24
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = and i32 %2365, 255
  %2370 = uitofp i32 %2369 to float
  %2371 = fmul fast float %2370, 0x3F70101020000000
  %2372 = lshr i32 %2365, 8
  %2373 = and i32 %2372, 255
  %2374 = uitofp i32 %2373 to float
  %2375 = fmul fast float %2374, 0x3F70101020000000
  %2376 = lshr i32 %2365, 16
  %2377 = and i32 %2376, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = fmul fast float %2378, 0x3F70101020000000
  %2380 = bitcast float %2304 to i32
  %2381 = ashr i32 %2380, 1
  %2382 = sub nsw i32 1597463174, %2381
  %2383 = bitcast i32 %2382 to float
  %2384 = fmul fast float %2304, 5.000000e-01
  %2385 = fmul fast float %2383, %2383
  %2386 = fmul fast float %2385, %2384
  %2387 = fsub fast float 1.500000e+00, %2386
  %2388 = fmul fast float %2383, %2304
  %2389 = fmul fast float %2388, %2387
  %2390 = bitcast float %2305 to i32
  %2391 = ashr i32 %2390, 1
  %2392 = sub nsw i32 1597463174, %2391
  %2393 = bitcast i32 %2392 to float
  %2394 = fmul fast float %2305, 5.000000e-01
  %2395 = fmul fast float %2393, %2393
  %2396 = fmul fast float %2395, %2394
  %2397 = fsub fast float 1.500000e+00, %2396
  %2398 = fmul fast float %2393, %2305
  %2399 = fmul fast float %2398, %2397
  %2400 = bitcast float %2306 to i32
  %2401 = ashr i32 %2400, 1
  %2402 = sub nsw i32 1597463174, %2401
  %2403 = bitcast i32 %2402 to float
  %2404 = fmul fast float %2306, 5.000000e-01
  %2405 = fmul fast float %2403, %2403
  %2406 = fmul fast float %2405, %2404
  %2407 = fsub fast float 1.500000e+00, %2406
  %2408 = fmul fast float %2403, %2306
  %2409 = fmul fast float %2408, %2407
  %2410 = fsub fast float %2389, %2371
  %2411 = fsub fast float %2399, %2375
  %2412 = fsub fast float %2409, %2379
  %2413 = fmul fast float %2410, %2339
  %2414 = fmul fast float %2411, %2341
  %2415 = fmul fast float %2412, %2346
  %2416 = fadd fast float %2413, %2354
  %2417 = fadd fast float %2414, %2358
  %2418 = fadd fast float %2415, %2362
  %2419 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2420 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2421 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2422 = fmul fast float %2419, %2419
  %2423 = fmul fast float %2420, %2420
  %2424 = fmul fast float %2421, %2421
  %2425 = fsub fast float %2422, %2304
  %2426 = fsub fast float %2423, %2305
  %2427 = fsub fast float %2424, %2306
  %2428 = fmul fast float %2425, %2329
  %2429 = fmul fast float %2426, %2329
  %2430 = fmul fast float %2427, %2329
  %2431 = fadd fast float %2428, %2304
  %2432 = fadd fast float %2429, %2305
  %2433 = fadd fast float %2430, %2306
  %2434 = fadd fast float %2351, %2315
  %2435 = fsub fast float %2434, %2368
  %2436 = call float @dx.op.unary.f32(i32 7, float %2435)  ; Saturate(value)
  %2437 = fsub fast float %2436, %2315
  %2438 = fmul fast float %2437, %2329
  %2439 = fadd fast float %2438, %2315
  br label %2493

; <label>:2440                                    ; preds = %2328
  %2441 = and i32 %2331, 134217728
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2477, label %2443

; <label>:2443                                    ; preds = %2440
  %2444 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2445 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2446 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2447 = fadd fast float %2444, -5.000000e-01
  %2448 = fadd fast float %2445, -5.000000e-01
  %2449 = fadd fast float %2446, -5.000000e-01
  %2450 = fmul fast float %2447, %2329
  %2451 = fmul fast float %2448, %2329
  %2452 = fmul fast float %2449, %2329
  %2453 = fadd fast float %2450, 5.000000e-01
  %2454 = fadd fast float %2451, 5.000000e-01
  %2455 = fadd fast float %2452, 5.000000e-01
  %2456 = call float @dx.op.unary.f32(i32 24, float %2304)  ; Sqrt(value)
  %2457 = call float @dx.op.unary.f32(i32 24, float %2305)  ; Sqrt(value)
  %2458 = call float @dx.op.unary.f32(i32 24, float %2306)  ; Sqrt(value)
  %2459 = fmul fast float %2453, 2.000000e+00
  %2460 = fsub fast float 1.000000e+00, %2459
  %2461 = fmul fast float %2460, %2456
  %2462 = fadd fast float %2461, %2459
  %2463 = fmul fast float %2462, %2456
  %2464 = fmul fast float %2454, 2.000000e+00
  %2465 = fsub fast float 1.000000e+00, %2464
  %2466 = fmul fast float %2465, %2457
  %2467 = fadd fast float %2466, %2464
  %2468 = fmul fast float %2467, %2457
  %2469 = fmul fast float %2455, 2.000000e+00
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = fmul fast float %2470, %2458
  %2472 = fadd fast float %2471, %2469
  %2473 = fmul fast float %2472, %2458
  %2474 = fmul fast float %2463, %2463
  %2475 = fmul fast float %2468, %2468
  %2476 = fmul fast float %2473, %2473
  br label %2493

; <label>:2477                                    ; preds = %2440
  %2478 = fmul fast float %336, %336
  %2479 = fmul fast float %340, %340
  %2480 = fmul fast float %344, %344
  %2481 = fadd fast float %2478, -1.000000e+00
  %2482 = fadd fast float %2479, -1.000000e+00
  %2483 = fadd fast float %2480, -1.000000e+00
  %2484 = fmul fast float %2329, %2481
  %2485 = fmul fast float %2329, %2482
  %2486 = fmul fast float %2329, %2483
  %2487 = fadd fast float %2484, 1.000000e+00
  %2488 = fadd fast float %2485, 1.000000e+00
  %2489 = fadd fast float %2486, 1.000000e+00
  %2490 = fmul fast float %2487, %2304
  %2491 = fmul fast float %2488, %2305
  %2492 = fmul fast float %2489, %2306
  br label %2493

; <label>:2493                                    ; preds = %2477, %2443, %2334, %2290
  %2494 = phi float [ %2439, %2334 ], [ %2315, %2443 ], [ %2315, %2477 ], [ 0x3FA23C0BE0000000, %2290 ]
  %2495 = phi float [ %2431, %2334 ], [ %2474, %2443 ], [ %2490, %2477 ], [ 1.000000e+00, %2290 ]
  %2496 = phi float [ %2432, %2334 ], [ %2475, %2443 ], [ %2491, %2477 ], [ 1.000000e+00, %2290 ]
  %2497 = phi float [ %2433, %2334 ], [ %2476, %2443 ], [ %2492, %2477 ], [ 1.000000e+00, %2290 ]
  %2498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2499 = extractvalue %dx.types.CBufRet.i32 %2498, 1
  %2500 = and i32 %2499, 1
  %2501 = icmp ne i32 %2500, 0
  %2502 = add i32 %56, 356
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 32
  %2506 = icmp ne i32 %2505, 0
  %2507 = and i1 %2501, %2506
  %2508 = select i1 %2507, float 1.000000e+00, float %2495
  %2509 = select i1 %2507, float 0x3FD3333340000000, float %2496
  %2510 = select i1 %2507, float 0x3FD3333340000000, float %2497
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 32
  %2514 = icmp eq i32 %2513, 0
  br i1 %2514, label %2587, label %2515

; <label>:2515                                    ; preds = %2493
  %2516 = add i32 %56, 124
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = add i32 %56, 400
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = add i32 %2521, 0
  %2523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2523, %dx.types.Handle %98, float %2100, float %2101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2525 = extractvalue %dx.types.ResRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.ResRet.f32 %2524, 1
  %2527 = extractvalue %dx.types.ResRet.f32 %2524, 2
  %2528 = extractvalue %dx.types.ResRet.f32 %2524, 3
  %2529 = and i32 %2518, 255
  %2530 = uitofp i32 %2529 to float
  %2531 = lshr i32 %2518, 8
  %2532 = and i32 %2531, 255
  %2533 = uitofp i32 %2532 to float
  %2534 = lshr i32 %2518, 16
  %2535 = and i32 %2534, 255
  %2536 = uitofp i32 %2535 to float
  %2537 = fmul fast float %2536, 0x3F70101000000000
  %2538 = fmul fast float %2525, %2530
  %2539 = fadd fast float %2538, %2533
  %2540 = fmul fast float %2539, 0x3F70101000000000
  %2541 = fadd fast float %2526, -5.000000e-01
  %2542 = fadd fast float %2528, -5.000000e-01
  %2543 = fmul fast float %2541, %2537
  %2544 = fmul fast float %2542, %2537
  %2545 = fadd fast float %2543, 5.000000e-01
  %2546 = fadd fast float %2544, 5.000000e-01
  %2547 = fmul fast float %2545, 2.000000e+00
  %2548 = fadd fast float %2547, -1.000000e+00
  %2549 = fmul fast float %2546, 2.000000e+00
  %2550 = fadd fast float %2549, -1.000000e+00
  %2551 = fadd fast float %2548, %2550
  %2552 = fmul fast float %2551, 5.000000e-01
  %2553 = fsub fast float %2548, %2550
  %2554 = fmul fast float %2553, 5.000000e-01
  %2555 = call float @dx.op.unary.f32(i32 6, float %2552)  ; FAbs(value)
  %2556 = fsub fast float 1.000000e+00, %2555
  %2557 = call float @dx.op.unary.f32(i32 6, float %2554)  ; FAbs(value)
  %2558 = fsub fast float %2556, %2557
  %2559 = call float @dx.op.dot3.f32(i32 55, float %2552, float %2554, float %2558, float %2552, float %2554, float %2558)  ; Dot3(ax,ay,az,bx,by,bz)
  %2560 = call float @dx.op.unary.f32(i32 25, float %2559)  ; Rsqrt(value)
  %2561 = fmul fast float %2552, %2560
  %2562 = fmul fast float %2554, %2560
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = and i32 %2564, 67108864
  %2566 = icmp eq i32 %2565, 0
  br i1 %2566, label %2583, label %2567

; <label>:2567                                    ; preds = %2515
  %2568 = add i32 %56, 312
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = and i32 %2570, 65535
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 65535
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = lshr i32 %2570, 16
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = fsub fast float %2540, %2578
  %2580 = fmul fast float %2579, %2572
  %2581 = fadd fast float %2580, %2576
  %2582 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  br label %2583

; <label>:2583                                    ; preds = %2567, %2515
  %2584 = phi float [ %2582, %2567 ], [ %2540, %2515 ]
  %2585 = call float @dx.op.dot2.f32(i32 54, float %2561, float %2562, float %2004, float %2005)  ; Dot2(ax,ay,bx,by)
  %2586 = call float @dx.op.dot2.f32(i32 54, float %2561, float %2562, float %2006, float %2007)  ; Dot2(ax,ay,bx,by)
  br label %2587

; <label>:2587                                    ; preds = %2583, %2493
  %2588 = phi float [ %2584, %2583 ], [ 0x3FD6666660000000, %2493 ]
  %2589 = phi float [ %2585, %2583 ], [ 0.000000e+00, %2493 ]
  %2590 = phi float [ %2586, %2583 ], [ 0.000000e+00, %2493 ]
  %2591 = phi float [ %2527, %2583 ], [ 1.000000e+00, %2493 ]
  %2592 = add i32 %56, 192
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = lshr i32 %2594, 22
  %2596 = shl nuw nsw i32 %2595, 5
  %2597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2596)  ; LegacyF16ToF32(value)
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 64
  %2601 = icmp eq i32 %2600, 0
  br i1 %2601, label %2635, label %2602

; <label>:2602                                    ; preds = %2587
  %2603 = add i32 %56, 416
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = add i32 %2605, 0
  %2607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 131072
  %2611 = icmp eq i32 %2610, 0
  %2612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2607, %dx.types.Handle %98, float %2100, float %2101, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2613 = extractvalue %dx.types.ResRet.f32 %2612, 0
  %2614 = extractvalue %dx.types.ResRet.f32 %2612, 1
  %2615 = extractvalue %dx.types.ResRet.f32 %2612, 2
  %2616 = fmul fast float %2613, %324
  %2617 = fmul fast float %2614, %327
  %2618 = fmul fast float %2615, %330
  br i1 %2611, label %2625, label %2619

; <label>:2619                                    ; preds = %2602
  %2620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2621 = extractvalue %dx.types.CBufRet.f32 %2620, 0
  %2622 = fmul fast float %2621, %2616
  %2623 = fmul fast float %2621, %2617
  %2624 = fmul fast float %2621, %2618
  br label %2625

; <label>:2625                                    ; preds = %2619, %2602
  %2626 = phi float [ %2622, %2619 ], [ %2616, %2602 ]
  %2627 = phi float [ %2623, %2619 ], [ %2617, %2602 ]
  %2628 = phi float [ %2624, %2619 ], [ %2618, %2602 ]
  %2629 = fmul fast float %2626, %2597
  %2630 = select i1 %223, float %2629, float %2626
  %2631 = call float @dx.op.dot3.f32(i32 55, float %2630, float %2627, float %2628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2632 = select i1 %223, float 0.000000e+00, float %2626
  %2633 = select i1 %223, float %2631, float %2627
  %2634 = select i1 %223, float 0.000000e+00, float %2628
  br label %2635

; <label>:2635                                    ; preds = %2625, %2587
  %2636 = phi float [ %2632, %2625 ], [ 0.000000e+00, %2587 ]
  %2637 = phi float [ %2633, %2625 ], [ 0.000000e+00, %2587 ]
  %2638 = phi float [ %2634, %2625 ], [ 0.000000e+00, %2587 ]
  %2639 = add i32 %56, 128
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 255
  %2643 = uitofp i32 %2642 to float
  %2644 = lshr i32 %2641, 8
  %2645 = and i32 %2644, 255
  %2646 = uitofp i32 %2645 to float
  %2647 = call float @dx.op.dot3.f32(i32 55, float %2508, float %2509, float %2510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2648 = fmul fast float %2646, %2647
  %2649 = fadd fast float %2648, %2643
  %2650 = fmul fast float %2649, 0x3F70101020000000
  %2651 = call float @dx.op.unary.f32(i32 7, float %2650)  ; Saturate(value)
  br i1 %1992, label %2652, label %2660

; <label>:2652                                    ; preds = %2635
  %2653 = fsub fast float 1.000000e+00, %2288
  %2654 = fmul fast float %2653, %1981
  %2655 = fmul fast float %2653, %1982
  %2656 = fmul fast float %2653, %1983
  %2657 = fmul fast float %2653, %1984
  %2658 = fmul fast float %2653, %1985
  %2659 = fmul fast float %2653, %1986
  br label %2660

; <label>:2660                                    ; preds = %2652, %2635
  %2661 = phi float [ %2654, %2652 ], [ %1981, %2635 ]
  %2662 = phi float [ %2655, %2652 ], [ %1982, %2635 ]
  %2663 = phi float [ %2656, %2652 ], [ %1983, %2635 ]
  %2664 = phi float [ %2657, %2652 ], [ %1984, %2635 ]
  %2665 = phi float [ %2658, %2652 ], [ %1985, %2635 ]
  %2666 = phi float [ %2659, %2652 ], [ %1986, %2635 ]
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = and i32 %2668, 3
  %2670 = icmp eq i32 %2669, 3
  br i1 %2670, label %2749, label %2671

; <label>:2671                                    ; preds = %2660
  %2672 = and i32 %2668, 16
  %2673 = icmp ne i32 %2672, 0
  %2674 = select i1 %2673, float %2288, float 0.000000e+00
  %2675 = icmp eq i32 %2669, 0
  br i1 %2675, label %2676, label %2704

; <label>:2676                                    ; preds = %2671
  %2677 = and i32 %2668, 64
  %2678 = icmp ne i32 %2677, 0
  %2679 = select i1 %2678, float %2288, float 0.000000e+00
  %2680 = fsub fast float %2508, %2661
  %2681 = fsub fast float %2509, %2662
  %2682 = fsub fast float %2510, %2663
  %2683 = fmul fast float %2674, %2680
  %2684 = fmul fast float %2674, %2681
  %2685 = fmul fast float %2674, %2682
  %2686 = fadd fast float %2683, %2661
  %2687 = fadd fast float %2684, %2662
  %2688 = fadd fast float %2685, %2663
  %2689 = fsub fast float %2494, %1987
  %2690 = fmul fast float %2674, %2689
  %2691 = fadd fast float %2690, %1987
  %2692 = fsub fast float %2636, %2664
  %2693 = fsub fast float %2637, %2665
  %2694 = fsub fast float %2638, %2666
  %2695 = fmul fast float %2679, %2692
  %2696 = fmul fast float %2679, %2693
  %2697 = fmul fast float %2679, %2694
  %2698 = fadd fast float %2695, %2664
  %2699 = fadd fast float %2696, %2665
  %2700 = fadd fast float %2697, %2666
  %2701 = fsub fast float %2651, %1990
  %2702 = fmul fast float %2674, %2701
  %2703 = fadd fast float %2702, %1990
  br label %2749

; <label>:2704                                    ; preds = %2671
  %2705 = icmp eq i32 %2669, 1
  br i1 %2705, label %2706, label %2719

; <label>:2706                                    ; preds = %2704
  %2707 = fadd fast float %2508, -1.000000e+00
  %2708 = fadd fast float %2509, -1.000000e+00
  %2709 = fadd fast float %2510, -1.000000e+00
  %2710 = fmul fast float %2674, %2707
  %2711 = fmul fast float %2674, %2708
  %2712 = fmul fast float %2674, %2709
  %2713 = fadd fast float %2710, 1.000000e+00
  %2714 = fadd fast float %2711, 1.000000e+00
  %2715 = fadd fast float %2712, 1.000000e+00
  %2716 = fmul fast float %2713, %2661
  %2717 = fmul fast float %2714, %2662
  %2718 = fmul fast float %2715, %2663
  br label %2749

; <label>:2719                                    ; preds = %2704
  %2720 = icmp eq i32 %2669, 2
  br i1 %2720, label %2721, label %2749

; <label>:2721                                    ; preds = %2719
  %2722 = call float @dx.op.unary.f32(i32 24, float %2508)  ; Sqrt(value)
  %2723 = call float @dx.op.unary.f32(i32 24, float %2509)  ; Sqrt(value)
  %2724 = call float @dx.op.unary.f32(i32 24, float %2510)  ; Sqrt(value)
  %2725 = fadd fast float %2722, -5.000000e-01
  %2726 = fadd fast float %2723, -5.000000e-01
  %2727 = fadd fast float %2724, -5.000000e-01
  %2728 = fmul fast float %2725, %2674
  %2729 = fmul fast float %2726, %2674
  %2730 = fmul fast float %2727, %2674
  %2731 = fadd fast float %2728, 5.000000e-01
  %2732 = fadd fast float %2729, 5.000000e-01
  %2733 = fadd fast float %2730, 5.000000e-01
  %2734 = fmul fast float %2731, 2.000000e+00
  %2735 = fsub fast float 1.000000e+00, %2734
  %2736 = fmul fast float %2735, %2661
  %2737 = fadd fast float %2736, %2734
  %2738 = fmul fast float %2737, %2661
  %2739 = fmul fast float %2732, 2.000000e+00
  %2740 = fsub fast float 1.000000e+00, %2739
  %2741 = fmul fast float %2740, %2662
  %2742 = fadd fast float %2741, %2739
  %2743 = fmul fast float %2742, %2662
  %2744 = fmul fast float %2733, 2.000000e+00
  %2745 = fsub fast float 1.000000e+00, %2744
  %2746 = fmul fast float %2745, %2663
  %2747 = fadd fast float %2746, %2744
  %2748 = fmul fast float %2747, %2663
  br label %2749

; <label>:2749                                    ; preds = %2721, %2719, %2706, %2676, %2660
  %2750 = phi float [ %2661, %2660 ], [ %2738, %2721 ], [ %2661, %2719 ], [ %2716, %2706 ], [ %2686, %2676 ]
  %2751 = phi float [ %2662, %2660 ], [ %2743, %2721 ], [ %2662, %2719 ], [ %2717, %2706 ], [ %2687, %2676 ]
  %2752 = phi float [ %2663, %2660 ], [ %2748, %2721 ], [ %2663, %2719 ], [ %2718, %2706 ], [ %2688, %2676 ]
  %2753 = phi float [ %2664, %2660 ], [ %2664, %2721 ], [ %2664, %2719 ], [ %2664, %2706 ], [ %2698, %2676 ]
  %2754 = phi float [ %2665, %2660 ], [ %2665, %2721 ], [ %2665, %2719 ], [ %2665, %2706 ], [ %2699, %2676 ]
  %2755 = phi float [ %2666, %2660 ], [ %2666, %2721 ], [ %2666, %2719 ], [ %2666, %2706 ], [ %2700, %2676 ]
  %2756 = phi float [ %1987, %2660 ], [ %1987, %2721 ], [ %1987, %2719 ], [ %1987, %2706 ], [ %2691, %2676 ]
  %2757 = phi float [ %1990, %2660 ], [ %1990, %2721 ], [ %1990, %2719 ], [ %1990, %2706 ], [ %2703, %2676 ]
  %2758 = and i32 %2668, 12
  %2759 = icmp eq i32 %2758, 12
  br i1 %2759, label %2832, label %2760

; <label>:2760                                    ; preds = %2749
  %2761 = and i32 %2668, 2097184
  %2762 = icmp eq i32 %2761, 2097184
  %2763 = select i1 %2762, float %2288, float 0.000000e+00
  %2764 = and i32 %2668, 4194336
  %2765 = icmp eq i32 %2764, 4194336
  %2766 = select i1 %2765, float %2288, float 0.000000e+00
  %2767 = and i32 %2668, 8388640
  %2768 = icmp eq i32 %2767, 8388640
  %2769 = select i1 %2768, float %2288, float 0.000000e+00
  %2770 = icmp eq i32 %2758, 0
  br i1 %2770, label %2771, label %2784

; <label>:2771                                    ; preds = %2760
  %2772 = fsub fast float %2589, %1979
  %2773 = fsub fast float %2590, %1980
  %2774 = fmul fast float %2763, %2772
  %2775 = fmul fast float %2763, %2773
  %2776 = fadd fast float %2774, %1979
  %2777 = fadd fast float %2775, %1980
  %2778 = fsub fast float %2591, %1989
  %2779 = fmul fast float %2766, %2778
  %2780 = fadd fast float %2779, %1989
  %2781 = fsub fast float %2588, %1988
  %2782 = fmul fast float %2769, %2781
  %2783 = fadd fast float %2782, %1988
  br label %2832

; <label>:2784                                    ; preds = %2760
  %2785 = icmp eq i32 %2758, 4
  br i1 %2785, label %2786, label %2818

; <label>:2786                                    ; preds = %2784
  %2787 = fmul fast float %2763, %2589
  %2788 = fmul fast float %2763, %2590
  %2789 = fadd fast float %2787, %1979
  %2790 = fadd fast float %2788, %1980
  %2791 = call float @dx.op.binary.f32(i32 36, float %1989, float %2591)  ; FMin(a,b)
  %2792 = fsub fast float %2791, %1989
  %2793 = fmul fast float %2792, %2766
  %2794 = fadd fast float %2793, %1989
  %2795 = fadd fast float %2588, %1988
  %2796 = fmul fast float %2795, 0x3FF337FAE0000000
  %2797 = fmul fast float %1988, %1988
  %2798 = fmul fast float %2588, %2588
  %2799 = fadd fast float %2798, %2797
  %2800 = fmul fast float %2799, 0x3FE5152B00000000
  %2801 = fmul fast float %1988, 0xBFCC1F85E0000000
  %2802 = fmul fast float %2801, %2588
  %2803 = fadd fast float %2802, 0xBFE1363700000000
  %2804 = fadd fast float %2803, %2796
  %2805 = fsub fast float %2804, %2800
  %2806 = fmul fast float %2795, 0x3FBA6F0D00000000
  %2807 = fmul fast float %2799, 0x3FD0432880000000
  %2808 = fmul fast float %1988, 0xBFEF110800000000
  %2809 = fmul fast float %2808, %2588
  %2810 = fadd fast float %2809, 1.000000e+00
  %2811 = fsub fast float %2810, %2806
  %2812 = fadd fast float %2811, %2807
  %2813 = fdiv fast float %2805, %2812
  %2814 = call float @dx.op.unary.f32(i32 7, float %2813)  ; Saturate(value)
  %2815 = fsub fast float %2814, %1988
  %2816 = fmul fast float %2815, %2769
  %2817 = fadd fast float %2816, %1988
  br label %2832

; <label>:2818                                    ; preds = %2784
  %2819 = icmp eq i32 %2758, 8
  br i1 %2819, label %2820, label %2832

; <label>:2820                                    ; preds = %2818
  %2821 = fmul fast float %2763, %2589
  %2822 = fmul fast float %2763, %2590
  %2823 = fadd fast float %2821, %1979
  %2824 = fadd fast float %2822, %1980
  %2825 = call float @dx.op.binary.f32(i32 36, float %1989, float %2591)  ; FMin(a,b)
  %2826 = fsub fast float %2825, %1989
  %2827 = fmul fast float %2826, %2766
  %2828 = fadd fast float %2827, %1989
  %2829 = fsub fast float %2588, %1988
  %2830 = fmul fast float %2769, %2829
  %2831 = fadd fast float %2830, %1988
  br label %2832

; <label>:2832                                    ; preds = %2820, %2818, %2786, %2771, %2749, %2287, %1991, %1978
  %2833 = phi float [ %1979, %2749 ], [ %1979, %2287 ], [ %1979, %1978 ], [ %2823, %2820 ], [ %1979, %2818 ], [ %2789, %2786 ], [ %2776, %2771 ], [ %1979, %1991 ]
  %2834 = phi float [ %1980, %2749 ], [ %1980, %2287 ], [ %1980, %1978 ], [ %2824, %2820 ], [ %1980, %2818 ], [ %2790, %2786 ], [ %2777, %2771 ], [ %1980, %1991 ]
  %2835 = phi float [ %2750, %2749 ], [ %1981, %2287 ], [ %1981, %1978 ], [ %2750, %2820 ], [ %2750, %2818 ], [ %2750, %2786 ], [ %2750, %2771 ], [ %1981, %1991 ]
  %2836 = phi float [ %2751, %2749 ], [ %1982, %2287 ], [ %1982, %1978 ], [ %2751, %2820 ], [ %2751, %2818 ], [ %2751, %2786 ], [ %2751, %2771 ], [ %1982, %1991 ]
  %2837 = phi float [ %2752, %2749 ], [ %1983, %2287 ], [ %1983, %1978 ], [ %2752, %2820 ], [ %2752, %2818 ], [ %2752, %2786 ], [ %2752, %2771 ], [ %1983, %1991 ]
  %2838 = phi float [ %2753, %2749 ], [ %1984, %2287 ], [ %1984, %1978 ], [ %2753, %2820 ], [ %2753, %2818 ], [ %2753, %2786 ], [ %2753, %2771 ], [ %1984, %1991 ]
  %2839 = phi float [ %2754, %2749 ], [ %1985, %2287 ], [ %1985, %1978 ], [ %2754, %2820 ], [ %2754, %2818 ], [ %2754, %2786 ], [ %2754, %2771 ], [ %1985, %1991 ]
  %2840 = phi float [ %2755, %2749 ], [ %1986, %2287 ], [ %1986, %1978 ], [ %2755, %2820 ], [ %2755, %2818 ], [ %2755, %2786 ], [ %2755, %2771 ], [ %1986, %1991 ]
  %2841 = phi float [ %2756, %2749 ], [ %1987, %2287 ], [ %1987, %1978 ], [ %2756, %2820 ], [ %2756, %2818 ], [ %2756, %2786 ], [ %2756, %2771 ], [ %1987, %1991 ]
  %2842 = phi float [ %1988, %2749 ], [ %1988, %2287 ], [ %1988, %1978 ], [ %2831, %2820 ], [ %1988, %2818 ], [ %2817, %2786 ], [ %2783, %2771 ], [ %1988, %1991 ]
  %2843 = phi float [ %1989, %2749 ], [ %1989, %2287 ], [ %1989, %1978 ], [ %2828, %2820 ], [ %1989, %2818 ], [ %2794, %2786 ], [ %2780, %2771 ], [ %1989, %1991 ]
  %2844 = phi float [ %2757, %2749 ], [ %1990, %2287 ], [ %1990, %1978 ], [ %2757, %2820 ], [ %2757, %2818 ], [ %2757, %2786 ], [ %2757, %2771 ], [ %1990, %1991 ]
  br i1 %411, label %3686, label %2845

; <label>:2845                                    ; preds = %2832
  %2846 = icmp ult i32 %465, 4
  %2847 = add i32 %56, 72
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = add i32 %56, 76
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = or i32 %2852, %2849
  %2854 = icmp eq i32 %2853, 0
  br i1 %2854, label %3686, label %2855

; <label>:2855                                    ; preds = %2845
  %2856 = and i32 %2849, 262144
  %2857 = icmp ne i32 %2856, 0
  %2858 = select i1 %2857, float %59, float 1.000000e+00
  %2859 = select i1 %2857, float %60, float 0.000000e+00
  %2860 = select i1 %2857, float %61, float 0.000000e+00
  %2861 = select i1 %2857, float %62, float 1.000000e+00
  %2862 = select i1 %2857, float %63, float %84
  %2863 = select i1 %2857, float %64, float %85
  %2864 = add i32 %56, 332
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = lshr i32 %2866, 16
  %2868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2867)  ; LegacyF16ToF32(value)
  %2869 = fmul fast float %2868, 0x3F50624DE0000000
  %2870 = add i32 %56, 136
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = lshr i32 %2872, 16
  %2874 = and i32 %2873, 255
  %2875 = lshr i32 %2872, 24
  %2876 = add i32 %56, 340
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, 65535
  %2880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2879)  ; LegacyF16ToF32(value)
  %2881 = lshr i32 %2878, 16
  %2882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2881)  ; LegacyF16ToF32(value)
  %2883 = add i32 %56, 80
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = lshr i32 %2885, 22
  %2887 = shl nuw nsw i32 %2886, 5
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = shl i32 %2885, 4
  %2890 = and i32 %2889, 32752
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = lshr i32 %2885, 7
  %2893 = and i32 %2892, 32752
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2896 = extractvalue %dx.types.CBufRet.f32 %2895, 3
  %2897 = fmul fast float %2896, 1.000000e+03
  %2898 = fmul fast float %401, %2897
  %2899 = call float @dx.op.unary.f32(i32 22, float %2898)  ; Frc(value)
  %2900 = fadd fast float %2899, %391
  %2901 = fmul fast float %402, %2897
  %2902 = call float @dx.op.unary.f32(i32 22, float %2901)  ; Frc(value)
  %2903 = fadd fast float %2902, %393
  %2904 = fmul fast float %2869, %2897
  %2905 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2906 = fmul fast float %2905, 0x401921FB60000000
  %2907 = fadd fast float %2906, %2888
  %2908 = call float @dx.op.unary.f32(i32 13, float %2907)  ; Sin(value)
  %2909 = call float @dx.op.unary.f32(i32 12, float %2907)  ; Cos(value)
  %2910 = fsub fast float -0.000000e+00, %2908
  %2911 = fadd fast float %2862, -5.000000e-01
  %2912 = fadd fast float %2863, -5.000000e-01
  %2913 = fmul fast float %2880, %2911
  %2914 = fmul fast float %2882, %2912
  %2915 = fadd fast float %2913, 5.000000e-01
  %2916 = fadd fast float %2914, 5.000000e-01
  %2917 = fmul fast float %2891, %2915
  %2918 = fmul fast float %2894, %2916
  %2919 = fmul fast float %2909, %2917
  %2920 = call float @dx.op.tertiary.f32(i32 46, float %2910, float %2918, float %2919)  ; FMad(a,b,c)
  %2921 = fmul fast float %2908, %2917
  %2922 = call float @dx.op.tertiary.f32(i32 46, float %2909, float %2918, float %2921)  ; FMad(a,b,c)
  %2923 = fadd fast float %2900, %2920
  %2924 = fadd fast float %2903, %2922
  %2925 = icmp ugt i32 %2874, 1
  %2926 = icmp ugt i32 %2872, 33554431
  %2927 = or i1 %2926, %2925
  br i1 %2927, label %2928, label %2953

; <label>:2928                                    ; preds = %2855
  %2929 = add i32 %56, 276
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = lshr i32 %2931, 16
  %2933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2932)  ; LegacyF16ToF32(value)
  %2934 = fmul fast float %2896, %2933
  %2935 = call float @dx.op.unary.f32(i32 22, float %2934)  ; Frc(value)
  %2936 = mul nuw nsw i32 %2874, %2875
  %2937 = uitofp i32 %2936 to float
  %2938 = fmul fast float %2935, %2937
  %2939 = call float @dx.op.unary.f32(i32 27, float %2938)  ; Round_ni(value)
  %2940 = fptoui float %2939 to i32
  %2941 = urem i32 %2940, %2874
  %2942 = udiv i32 %2940, %2875
  %2943 = call float @dx.op.unary.f32(i32 22, float %2923)  ; Frc(value)
  %2944 = call float @dx.op.unary.f32(i32 22, float %2924)  ; Frc(value)
  %2945 = uitofp i32 %2941 to float
  %2946 = uitofp i32 %2942 to float
  %2947 = fadd fast float %2943, %2945
  %2948 = fadd fast float %2944, %2946
  %2949 = uitofp i32 %2874 to float
  %2950 = uitofp i32 %2875 to float
  %2951 = fdiv fast float %2947, %2949
  %2952 = fdiv fast float %2948, %2950
  br label %2953

; <label>:2953                                    ; preds = %2928, %2855
  %2954 = phi float [ %2951, %2928 ], [ %2923, %2855 ]
  %2955 = phi float [ %2952, %2928 ], [ %2924, %2855 ]
  %2956 = and i32 %2849, 16777216
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %3067, label %2958

; <label>:2958                                    ; preds = %2953
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2961 = extractvalue %dx.types.CBufRet.f32 %2959, 1
  %2962 = extractvalue %dx.types.CBufRet.f32 %2959, 2
  %2963 = fadd fast float %2960, %161
  %2964 = fadd fast float %2961, %162
  %2965 = fadd fast float %2962, %163
  %2966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2967 = extractvalue %dx.types.CBufRet.f32 %2966, 0
  %2968 = call float @dx.op.unary.f32(i32 7, float %2967)  ; Saturate(value)
  %2969 = icmp eq i32 %57, 65535
  br i1 %2969, label %3064, label %2970

; <label>:2970                                    ; preds = %2958
  %2971 = lshr i32 %57, 1
  %2972 = shl i32 %2971, 2
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = and i32 %57, 1
  %2976 = icmp ne i32 %2975, 0
  %2977 = lshr i32 %2974, 16
  %2978 = and i32 %2974, 65535
  %2979 = select i1 %2976, i32 %2977, i32 %2978
  %2980 = icmp eq i32 %2979, 65535
  br i1 %2980, label %3060, label %2981

; <label>:2981                                    ; preds = %2970
  %2982 = mul nuw nsw i32 %2979, 40
  %2983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.f32 %2983, 0
  %2985 = extractvalue %dx.types.ResRet.f32 %2983, 1
  %2986 = extractvalue %dx.types.ResRet.f32 %2983, 2
  %2987 = add nuw nsw i32 %2982, 12
  %2988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.f32 %2988, 0
  %2990 = extractvalue %dx.types.ResRet.f32 %2988, 1
  %2991 = extractvalue %dx.types.ResRet.f32 %2988, 2
  %2992 = add nuw nsw i32 %2982, 24
  %2993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.ResRet.f32 %2993, 1
  %2996 = extractvalue %dx.types.ResRet.f32 %2993, 2
  %2997 = add nuw nsw i32 %2982, 36
  %2998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = fsub fast float %2963, %2984
  %3001 = fsub fast float %2964, %2985
  %3002 = fsub fast float %2965, %2986
  %3003 = fmul fast float %2999, %3000
  %3004 = fmul fast float %2999, %3001
  %3005 = fmul fast float %2999, %3002
  %3006 = call float @dx.op.unary.f32(i32 27, float %3003)  ; Round_ni(value)
  %3007 = call float @dx.op.unary.f32(i32 27, float %3004)  ; Round_ni(value)
  %3008 = call float @dx.op.unary.f32(i32 27, float %3005)  ; Round_ni(value)
  %3009 = fadd fast float %3006, 5.000000e-01
  %3010 = fadd fast float %3007, 5.000000e-01
  %3011 = fadd fast float %3008, 5.000000e-01
  %3012 = fmul fast float %3009, %2989
  %3013 = fmul fast float %3010, %2990
  %3014 = fmul fast float %3011, %2991
  %3015 = shl i32 %57, 2
  %3016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3015, i32 undef)  ; BufferLoad(srv,index,wot)
  %3017 = extractvalue %dx.types.ResRet.i32 %3016, 0
  %3018 = add i32 %3017, 0
  %3019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3018, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3020 = call float @dx.op.unary.f32(i32 22, float %3012)  ; Frc(value)
  %3021 = call float @dx.op.unary.f32(i32 22, float %3013)  ; Frc(value)
  %3022 = call float @dx.op.unary.f32(i32 22, float %3014)  ; Frc(value)
  %3023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3019, %dx.types.Handle %49, float %3020, float %3021, float %3022, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3025 = extractvalue %dx.types.ResRet.f32 %3023, 1
  %3026 = extractvalue %dx.types.ResRet.f32 %3023, 2
  %3027 = fmul fast float %3024, 1.023000e+03
  %3028 = fmul fast float %3025, 1.023000e+03
  %3029 = fmul fast float %3026, 1.023000e+03
  %3030 = fadd fast float %3027, 5.000000e-01
  %3031 = fadd fast float %3028, 5.000000e-01
  %3032 = fadd fast float %3029, 5.000000e-01
  %3033 = call float @dx.op.unary.f32(i32 27, float %3030)  ; Round_ni(value)
  %3034 = call float @dx.op.unary.f32(i32 27, float %3031)  ; Round_ni(value)
  %3035 = call float @dx.op.unary.f32(i32 27, float %3032)  ; Round_ni(value)
  %3036 = fsub fast float %3003, %3006
  %3037 = fsub fast float %3004, %3007
  %3038 = fsub fast float %3005, %3008
  %3039 = fmul fast float %3036, 7.500000e-01
  %3040 = fmul fast float %3037, 7.500000e-01
  %3041 = fmul fast float %3038, 7.500000e-01
  %3042 = fadd fast float %3006, 1.250000e-01
  %3043 = fadd fast float %3042, %3039
  %3044 = fadd fast float %3043, %3033
  %3045 = fadd fast float %3007, 1.250000e-01
  %3046 = fadd fast float %3045, %3040
  %3047 = fadd fast float %3046, %3034
  %3048 = fadd fast float %3008, 1.250000e-01
  %3049 = fadd fast float %3048, %3041
  %3050 = fadd fast float %3049, %3035
  %3051 = fmul fast float %3044, %2994
  %3052 = fmul fast float %3047, %2995
  %3053 = fmul fast float %3050, %2996
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3015, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = add i32 %3055, 0
  %3057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3057, %dx.types.Handle %47, float %3051, float %3052, float %3053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3059 = extractvalue %dx.types.ResRet.f32 %3058, 0
  br label %3060

; <label>:3060                                    ; preds = %2981, %2970
  %3061 = phi float [ %3059, %2981 ], [ -1.000000e+00, %2970 ]
  %3062 = fadd fast float %3061, %2968
  %3063 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  br label %3064

; <label>:3064                                    ; preds = %3060, %2958
  %3065 = phi float [ %3063, %3060 ], [ %2968, %2958 ]
  %3066 = fmul fast float %3065, %460
  br label %3067

; <label>:3067                                    ; preds = %3064, %2953
  %3068 = phi float [ %3066, %3064 ], [ %460, %2953 ]
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = and i32 %3070, 256
  %3072 = icmp eq i32 %3071, 0
  br i1 %3072, label %3119, label %3073

; <label>:3073                                    ; preds = %3067
  %3074 = add i32 %56, 452
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = add i32 %3076, 0
  %3078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3079 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3078, %dx.types.Handle %99, float %2954, float %2955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3080 = extractvalue %dx.types.ResRet.f32 %3079, 0
  %3081 = add i32 %56, 148
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = shl i32 %3083, 4
  %3085 = and i32 %3084, 32752
  %3086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3085)  ; LegacyF16ToF32(value)
  %3087 = lshr i32 %3083, 7
  %3088 = and i32 %3087, 32752
  %3089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3088)  ; LegacyF16ToF32(value)
  %3090 = fsub fast float 1.000000e+00, %3068
  %3091 = call float @dx.op.binary.f32(i32 35, float %3090, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3092 = bitcast float %3068 to i32
  %3093 = sitofp i32 %3092 to float
  %3094 = fadd fast float %3093, 0xC1CFBF8940000000
  %3095 = fmul fast float %3089, %3094
  %3096 = fadd fast float %3095, 0x41CFBF8940000000
  %3097 = fptosi float %3096 to i32
  %3098 = bitcast i32 %3097 to float
  %3099 = bitcast float %3091 to i32
  %3100 = sitofp i32 %3099 to float
  %3101 = fadd fast float %3100, 0xC1CFBF8940000000
  %3102 = fmul fast float %3101, %3089
  %3103 = fadd fast float %3102, 0x41CFBF8940000000
  %3104 = fptosi float %3103 to i32
  %3105 = bitcast i32 %3104 to float
  %3106 = fmul fast float %3098, %3086
  %3107 = fmul fast float %3105, %3086
  %3108 = fsub fast float %3091, %3106
  %3109 = fadd fast float %3107, %3091
  %3110 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3111 = call float @dx.op.unary.f32(i32 7, float %3109)  ; Saturate(value)
  %3112 = fsub fast float %3080, %3110
  %3113 = fsub fast float %3111, %3110
  %3114 = bitcast float %3113 to i32
  %3115 = sub nsw i32 2129859010, %3114
  %3116 = bitcast i32 %3115 to float
  %3117 = fmul fast float %3116, %3112
  %3118 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  br label %3119

; <label>:3119                                    ; preds = %3073, %3067
  %3120 = phi float [ %3118, %3073 ], [ %3068, %3067 ]
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 128
  %3124 = icmp eq i32 %3123, 0
  br i1 %3124, label %3141, label %3125

; <label>:3125                                    ; preds = %3119
  %3126 = add i32 %56, 436
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = add i32 %3128, 0
  %3130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3130, %dx.types.Handle %99, float %2954, float %2955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = and i32 %3134, 524288
  %3136 = icmp ne i32 %3135, 0
  %3137 = fcmp fast ogt float %3132, 0x3FE0101020000000
  %3138 = select i1 %3137, float 1.000000e+00, float 0.000000e+00
  %3139 = select i1 %3136, float %3138, float %3132
  %3140 = fmul fast float %3139, %3120
  br label %3141

; <label>:3141                                    ; preds = %3125, %3119
  %3142 = phi float [ %3140, %3125 ], [ %3120, %3119 ]
  %3143 = fcmp fast ult float %3142, 0x3F70101020000000
  br i1 %3143, label %3686, label %3144

; <label>:3144                                    ; preds = %3141
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 16
  %3148 = icmp eq i32 %3147, 0
  br i1 %3148, label %3347, label %3149

; <label>:3149                                    ; preds = %3144
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = add i32 %56, 388
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = add i32 %3154, 0
  %3156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3156, %dx.types.Handle %98, float %2954, float %2955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3158 = extractvalue %dx.types.ResRet.f32 %3157, 0
  %3159 = extractvalue %dx.types.ResRet.f32 %3157, 1
  %3160 = extractvalue %dx.types.ResRet.f32 %3157, 2
  %3161 = extractvalue %dx.types.ResRet.f32 %3157, 3
  %3162 = and i32 %3151, 255
  %3163 = uitofp i32 %3162 to float
  %3164 = lshr i32 %3151, 8
  %3165 = and i32 %3164, 255
  %3166 = uitofp i32 %3165 to float
  %3167 = fmul fast float %3161, %3163
  %3168 = fadd fast float %3167, %3166
  %3169 = fmul fast float %3168, 0x3F70101000000000
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = and i32 %3171, 512
  %3173 = icmp eq i32 %3172, 0
  br i1 %3173, label %3182, label %3174

; <label>:3174                                    ; preds = %3149
  %3175 = add i32 %56, 468
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3175, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = add i32 %3177, 0
  %3179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3179, %dx.types.Handle %99, float %2954, float %2955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3181 = extractvalue %dx.types.ResRet.f32 %3180, 0
  br label %3182

; <label>:3182                                    ; preds = %3174, %3149
  %3183 = phi float [ %3181, %3174 ], [ 1.000000e+00, %3149 ]
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = and i32 %3185, 33554432
  %3187 = icmp eq i32 %3186, 0
  br i1 %3187, label %3294, label %3188

; <label>:3188                                    ; preds = %3182
  %3189 = add i32 %56, 272
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = lshr i32 %3191, 16
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = add i32 %56, 276
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 65535
  %3200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3199)  ; LegacyF16ToF32(value)
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = lshr i32 %3202, 24
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3204, 0x3F70101020000000
  %3206 = and i32 %3202, 255
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3207, 0x3F70101020000000
  %3209 = lshr i32 %3202, 8
  %3210 = and i32 %3209, 255
  %3211 = uitofp i32 %3210 to float
  %3212 = fmul fast float %3211, 0x3F70101020000000
  %3213 = lshr i32 %3202, 16
  %3214 = and i32 %3213, 255
  %3215 = uitofp i32 %3214 to float
  %3216 = fmul fast float %3215, 0x3F70101020000000
  %3217 = add i32 %56, 268
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = lshr i32 %3219, 24
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = and i32 %3219, 255
  %3224 = uitofp i32 %3223 to float
  %3225 = fmul fast float %3224, 0x3F70101020000000
  %3226 = lshr i32 %3219, 8
  %3227 = and i32 %3226, 255
  %3228 = uitofp i32 %3227 to float
  %3229 = fmul fast float %3228, 0x3F70101020000000
  %3230 = lshr i32 %3219, 16
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = fmul fast float %3232, 0x3F70101020000000
  %3234 = bitcast float %3158 to i32
  %3235 = ashr i32 %3234, 1
  %3236 = sub nsw i32 1597463174, %3235
  %3237 = bitcast i32 %3236 to float
  %3238 = fmul fast float %3158, 5.000000e-01
  %3239 = fmul fast float %3237, %3237
  %3240 = fmul fast float %3239, %3238
  %3241 = fsub fast float 1.500000e+00, %3240
  %3242 = fmul fast float %3237, %3158
  %3243 = fmul fast float %3242, %3241
  %3244 = bitcast float %3159 to i32
  %3245 = ashr i32 %3244, 1
  %3246 = sub nsw i32 1597463174, %3245
  %3247 = bitcast i32 %3246 to float
  %3248 = fmul fast float %3159, 5.000000e-01
  %3249 = fmul fast float %3247, %3247
  %3250 = fmul fast float %3249, %3248
  %3251 = fsub fast float 1.500000e+00, %3250
  %3252 = fmul fast float %3247, %3159
  %3253 = fmul fast float %3252, %3251
  %3254 = bitcast float %3160 to i32
  %3255 = ashr i32 %3254, 1
  %3256 = sub nsw i32 1597463174, %3255
  %3257 = bitcast i32 %3256 to float
  %3258 = fmul fast float %3160, 5.000000e-01
  %3259 = fmul fast float %3257, %3257
  %3260 = fmul fast float %3259, %3258
  %3261 = fsub fast float 1.500000e+00, %3260
  %3262 = fmul fast float %3257, %3160
  %3263 = fmul fast float %3262, %3261
  %3264 = fsub fast float %3243, %3225
  %3265 = fsub fast float %3253, %3229
  %3266 = fsub fast float %3263, %3233
  %3267 = fmul fast float %3264, %3193
  %3268 = fmul fast float %3265, %3195
  %3269 = fmul fast float %3266, %3200
  %3270 = fadd fast float %3267, %3208
  %3271 = fadd fast float %3268, %3212
  %3272 = fadd fast float %3269, %3216
  %3273 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3274 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3275 = call float @dx.op.unary.f32(i32 7, float %3272)  ; Saturate(value)
  %3276 = fmul fast float %3273, %3273
  %3277 = fmul fast float %3274, %3274
  %3278 = fmul fast float %3275, %3275
  %3279 = fsub fast float %3276, %3158
  %3280 = fsub fast float %3277, %3159
  %3281 = fsub fast float %3278, %3160
  %3282 = fmul fast float %3279, %3183
  %3283 = fmul fast float %3280, %3183
  %3284 = fmul fast float %3281, %3183
  %3285 = fadd fast float %3282, %3158
  %3286 = fadd fast float %3283, %3159
  %3287 = fadd fast float %3284, %3160
  %3288 = fadd fast float %3205, %3169
  %3289 = fsub fast float %3288, %3222
  %3290 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  %3291 = fsub fast float %3290, %3169
  %3292 = fmul fast float %3291, %3183
  %3293 = fadd fast float %3292, %3169
  br label %3347

; <label>:3294                                    ; preds = %3182
  %3295 = and i32 %3185, 134217728
  %3296 = icmp eq i32 %3295, 0
  br i1 %3296, label %3331, label %3297

; <label>:3297                                    ; preds = %3294
  %3298 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %3299 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %3300 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3301 = fadd fast float %3298, -5.000000e-01
  %3302 = fadd fast float %3299, -5.000000e-01
  %3303 = fadd fast float %3300, -5.000000e-01
  %3304 = fmul fast float %3301, %3183
  %3305 = fmul fast float %3302, %3183
  %3306 = fmul fast float %3303, %3183
  %3307 = fadd fast float %3304, 5.000000e-01
  %3308 = fadd fast float %3305, 5.000000e-01
  %3309 = fadd fast float %3306, 5.000000e-01
  %3310 = call float @dx.op.unary.f32(i32 24, float %3158)  ; Sqrt(value)
  %3311 = call float @dx.op.unary.f32(i32 24, float %3159)  ; Sqrt(value)
  %3312 = call float @dx.op.unary.f32(i32 24, float %3160)  ; Sqrt(value)
  %3313 = fmul fast float %3307, 2.000000e+00
  %3314 = fsub fast float 1.000000e+00, %3313
  %3315 = fmul fast float %3314, %3310
  %3316 = fadd fast float %3315, %3313
  %3317 = fmul fast float %3316, %3310
  %3318 = fmul fast float %3308, 2.000000e+00
  %3319 = fsub fast float 1.000000e+00, %3318
  %3320 = fmul fast float %3319, %3311
  %3321 = fadd fast float %3320, %3318
  %3322 = fmul fast float %3321, %3311
  %3323 = fmul fast float %3309, 2.000000e+00
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = fmul fast float %3324, %3312
  %3326 = fadd fast float %3325, %3323
  %3327 = fmul fast float %3326, %3312
  %3328 = fmul fast float %3317, %3317
  %3329 = fmul fast float %3322, %3322
  %3330 = fmul fast float %3327, %3327
  br label %3347

; <label>:3331                                    ; preds = %3294
  %3332 = fmul fast float %378, %378
  %3333 = fmul fast float %382, %382
  %3334 = fmul fast float %386, %386
  %3335 = fadd fast float %3332, -1.000000e+00
  %3336 = fadd fast float %3333, -1.000000e+00
  %3337 = fadd fast float %3334, -1.000000e+00
  %3338 = fmul fast float %3183, %3335
  %3339 = fmul fast float %3183, %3336
  %3340 = fmul fast float %3183, %3337
  %3341 = fadd fast float %3338, 1.000000e+00
  %3342 = fadd fast float %3339, 1.000000e+00
  %3343 = fadd fast float %3340, 1.000000e+00
  %3344 = fmul fast float %3341, %3158
  %3345 = fmul fast float %3342, %3159
  %3346 = fmul fast float %3343, %3160
  br label %3347

; <label>:3347                                    ; preds = %3331, %3297, %3188, %3144
  %3348 = phi float [ %3293, %3188 ], [ %3169, %3297 ], [ %3169, %3331 ], [ 0x3FA23C0BE0000000, %3144 ]
  %3349 = phi float [ %3285, %3188 ], [ %3328, %3297 ], [ %3344, %3331 ], [ 1.000000e+00, %3144 ]
  %3350 = phi float [ %3286, %3188 ], [ %3329, %3297 ], [ %3345, %3331 ], [ 1.000000e+00, %3144 ]
  %3351 = phi float [ %3287, %3188 ], [ %3330, %3297 ], [ %3346, %3331 ], [ 1.000000e+00, %3144 ]
  %3352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3353 = extractvalue %dx.types.CBufRet.i32 %3352, 1
  %3354 = and i32 %3353, 1
  %3355 = icmp ne i32 %3354, 0
  %3356 = add i32 %56, 356
  %3357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3356, i32 undef)  ; BufferLoad(srv,index,wot)
  %3358 = extractvalue %dx.types.ResRet.i32 %3357, 0
  %3359 = and i32 %3358, 32
  %3360 = icmp ne i32 %3359, 0
  %3361 = and i1 %3355, %3360
  %3362 = select i1 %3361, float 1.000000e+00, float %3349
  %3363 = select i1 %3361, float 0x3FD3333340000000, float %3350
  %3364 = select i1 %3361, float 0x3FD3333340000000, float %3351
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = and i32 %3366, 32
  %3368 = icmp eq i32 %3367, 0
  br i1 %3368, label %3441, label %3369

; <label>:3369                                    ; preds = %3347
  %3370 = add i32 %56, 140
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = add i32 %56, 404
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = add i32 %3375, 0
  %3377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3378 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3377, %dx.types.Handle %98, float %2954, float %2955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3379 = extractvalue %dx.types.ResRet.f32 %3378, 0
  %3380 = extractvalue %dx.types.ResRet.f32 %3378, 1
  %3381 = extractvalue %dx.types.ResRet.f32 %3378, 2
  %3382 = extractvalue %dx.types.ResRet.f32 %3378, 3
  %3383 = and i32 %3372, 255
  %3384 = uitofp i32 %3383 to float
  %3385 = lshr i32 %3372, 8
  %3386 = and i32 %3385, 255
  %3387 = uitofp i32 %3386 to float
  %3388 = lshr i32 %3372, 16
  %3389 = and i32 %3388, 255
  %3390 = uitofp i32 %3389 to float
  %3391 = fmul fast float %3390, 0x3F70101000000000
  %3392 = fmul fast float %3379, %3384
  %3393 = fadd fast float %3392, %3387
  %3394 = fmul fast float %3393, 0x3F70101000000000
  %3395 = fadd fast float %3380, -5.000000e-01
  %3396 = fadd fast float %3382, -5.000000e-01
  %3397 = fmul fast float %3395, %3391
  %3398 = fmul fast float %3396, %3391
  %3399 = fadd fast float %3397, 5.000000e-01
  %3400 = fadd fast float %3398, 5.000000e-01
  %3401 = fmul fast float %3399, 2.000000e+00
  %3402 = fadd fast float %3401, -1.000000e+00
  %3403 = fmul fast float %3400, 2.000000e+00
  %3404 = fadd fast float %3403, -1.000000e+00
  %3405 = fadd fast float %3402, %3404
  %3406 = fmul fast float %3405, 5.000000e-01
  %3407 = fsub fast float %3402, %3404
  %3408 = fmul fast float %3407, 5.000000e-01
  %3409 = call float @dx.op.unary.f32(i32 6, float %3406)  ; FAbs(value)
  %3410 = fsub fast float 1.000000e+00, %3409
  %3411 = call float @dx.op.unary.f32(i32 6, float %3408)  ; FAbs(value)
  %3412 = fsub fast float %3410, %3411
  %3413 = call float @dx.op.dot3.f32(i32 55, float %3406, float %3408, float %3412, float %3406, float %3408, float %3412)  ; Dot3(ax,ay,az,bx,by,bz)
  %3414 = call float @dx.op.unary.f32(i32 25, float %3413)  ; Rsqrt(value)
  %3415 = fmul fast float %3406, %3414
  %3416 = fmul fast float %3408, %3414
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = and i32 %3418, 67108864
  %3420 = icmp eq i32 %3419, 0
  br i1 %3420, label %3437, label %3421

; <label>:3421                                    ; preds = %3369
  %3422 = add i32 %56, 328
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = and i32 %3424, 65535
  %3426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3425)  ; LegacyF16ToF32(value)
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 65535
  %3430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3429)  ; LegacyF16ToF32(value)
  %3431 = lshr i32 %3424, 16
  %3432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3431)  ; LegacyF16ToF32(value)
  %3433 = fsub fast float %3394, %3432
  %3434 = fmul fast float %3433, %3426
  %3435 = fadd fast float %3434, %3430
  %3436 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  br label %3437

; <label>:3437                                    ; preds = %3421, %3369
  %3438 = phi float [ %3436, %3421 ], [ %3394, %3369 ]
  %3439 = call float @dx.op.dot2.f32(i32 54, float %3415, float %3416, float %2858, float %2859)  ; Dot2(ax,ay,bx,by)
  %3440 = call float @dx.op.dot2.f32(i32 54, float %3415, float %3416, float %2860, float %2861)  ; Dot2(ax,ay,bx,by)
  br label %3441

; <label>:3441                                    ; preds = %3437, %3347
  %3442 = phi float [ %3438, %3437 ], [ 0x3FD6666660000000, %3347 ]
  %3443 = phi float [ %3439, %3437 ], [ 0.000000e+00, %3347 ]
  %3444 = phi float [ %3440, %3437 ], [ 0.000000e+00, %3347 ]
  %3445 = phi float [ %3381, %3437 ], [ 1.000000e+00, %3347 ]
  %3446 = add i32 %56, 208
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = lshr i32 %3448, 22
  %3450 = shl nuw nsw i32 %3449, 5
  %3451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3450)  ; LegacyF16ToF32(value)
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = and i32 %3453, 64
  %3455 = icmp eq i32 %3454, 0
  br i1 %3455, label %3489, label %3456

; <label>:3456                                    ; preds = %3441
  %3457 = add i32 %56, 420
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = add i32 %3459, 0
  %3461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 131072
  %3465 = icmp eq i32 %3464, 0
  %3466 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3461, %dx.types.Handle %98, float %2954, float %2955, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.ResRet.f32 %3466, 1
  %3469 = extractvalue %dx.types.ResRet.f32 %3466, 2
  %3470 = fmul fast float %3467, %366
  %3471 = fmul fast float %3468, %369
  %3472 = fmul fast float %3469, %372
  br i1 %3465, label %3479, label %3473

; <label>:3473                                    ; preds = %3456
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 0
  %3476 = fmul fast float %3475, %3470
  %3477 = fmul fast float %3475, %3471
  %3478 = fmul fast float %3475, %3472
  br label %3479

; <label>:3479                                    ; preds = %3473, %3456
  %3480 = phi float [ %3476, %3473 ], [ %3470, %3456 ]
  %3481 = phi float [ %3477, %3473 ], [ %3471, %3456 ]
  %3482 = phi float [ %3478, %3473 ], [ %3472, %3456 ]
  %3483 = fmul fast float %3480, %3451
  %3484 = select i1 %223, float %3483, float %3480
  %3485 = call float @dx.op.dot3.f32(i32 55, float %3484, float %3481, float %3482, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3486 = select i1 %223, float 0.000000e+00, float %3480
  %3487 = select i1 %223, float %3485, float %3481
  %3488 = select i1 %223, float 0.000000e+00, float %3482
  br label %3489

; <label>:3489                                    ; preds = %3479, %3441
  %3490 = phi float [ %3486, %3479 ], [ 0.000000e+00, %3441 ]
  %3491 = phi float [ %3487, %3479 ], [ 0.000000e+00, %3441 ]
  %3492 = phi float [ %3488, %3479 ], [ 0.000000e+00, %3441 ]
  %3493 = add i32 %56, 144
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = and i32 %3495, 255
  %3497 = uitofp i32 %3496 to float
  %3498 = lshr i32 %3495, 8
  %3499 = and i32 %3498, 255
  %3500 = uitofp i32 %3499 to float
  %3501 = call float @dx.op.dot3.f32(i32 55, float %3362, float %3363, float %3364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3502 = fmul fast float %3500, %3501
  %3503 = fadd fast float %3502, %3497
  %3504 = fmul fast float %3503, 0x3F70101020000000
  %3505 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  br i1 %2846, label %3506, label %3514

; <label>:3506                                    ; preds = %3489
  %3507 = fsub fast float 1.000000e+00, %3142
  %3508 = fmul fast float %3507, %2835
  %3509 = fmul fast float %3507, %2836
  %3510 = fmul fast float %3507, %2837
  %3511 = fmul fast float %3507, %2838
  %3512 = fmul fast float %3507, %2839
  %3513 = fmul fast float %3507, %2840
  br label %3514

; <label>:3514                                    ; preds = %3506, %3489
  %3515 = phi float [ %3508, %3506 ], [ %2835, %3489 ]
  %3516 = phi float [ %3509, %3506 ], [ %2836, %3489 ]
  %3517 = phi float [ %3510, %3506 ], [ %2837, %3489 ]
  %3518 = phi float [ %3511, %3506 ], [ %2838, %3489 ]
  %3519 = phi float [ %3512, %3506 ], [ %2839, %3489 ]
  %3520 = phi float [ %3513, %3506 ], [ %2840, %3489 ]
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, 3
  %3524 = icmp eq i32 %3523, 3
  br i1 %3524, label %3603, label %3525

; <label>:3525                                    ; preds = %3514
  %3526 = and i32 %3522, 16
  %3527 = icmp ne i32 %3526, 0
  %3528 = select i1 %3527, float %3142, float 0.000000e+00
  %3529 = icmp eq i32 %3523, 0
  br i1 %3529, label %3530, label %3558

; <label>:3530                                    ; preds = %3525
  %3531 = and i32 %3522, 64
  %3532 = icmp ne i32 %3531, 0
  %3533 = select i1 %3532, float %3142, float 0.000000e+00
  %3534 = fsub fast float %3362, %3515
  %3535 = fsub fast float %3363, %3516
  %3536 = fsub fast float %3364, %3517
  %3537 = fmul fast float %3528, %3534
  %3538 = fmul fast float %3528, %3535
  %3539 = fmul fast float %3528, %3536
  %3540 = fadd fast float %3537, %3515
  %3541 = fadd fast float %3538, %3516
  %3542 = fadd fast float %3539, %3517
  %3543 = fsub fast float %3348, %2841
  %3544 = fmul fast float %3528, %3543
  %3545 = fadd fast float %3544, %2841
  %3546 = fsub fast float %3490, %3518
  %3547 = fsub fast float %3491, %3519
  %3548 = fsub fast float %3492, %3520
  %3549 = fmul fast float %3533, %3546
  %3550 = fmul fast float %3533, %3547
  %3551 = fmul fast float %3533, %3548
  %3552 = fadd fast float %3549, %3518
  %3553 = fadd fast float %3550, %3519
  %3554 = fadd fast float %3551, %3520
  %3555 = fsub fast float %3505, %2844
  %3556 = fmul fast float %3528, %3555
  %3557 = fadd fast float %3556, %2844
  br label %3603

; <label>:3558                                    ; preds = %3525
  %3559 = icmp eq i32 %3523, 1
  br i1 %3559, label %3560, label %3573

; <label>:3560                                    ; preds = %3558
  %3561 = fadd fast float %3362, -1.000000e+00
  %3562 = fadd fast float %3363, -1.000000e+00
  %3563 = fadd fast float %3364, -1.000000e+00
  %3564 = fmul fast float %3528, %3561
  %3565 = fmul fast float %3528, %3562
  %3566 = fmul fast float %3528, %3563
  %3567 = fadd fast float %3564, 1.000000e+00
  %3568 = fadd fast float %3565, 1.000000e+00
  %3569 = fadd fast float %3566, 1.000000e+00
  %3570 = fmul fast float %3567, %3515
  %3571 = fmul fast float %3568, %3516
  %3572 = fmul fast float %3569, %3517
  br label %3603

; <label>:3573                                    ; preds = %3558
  %3574 = icmp eq i32 %3523, 2
  br i1 %3574, label %3575, label %3603

; <label>:3575                                    ; preds = %3573
  %3576 = call float @dx.op.unary.f32(i32 24, float %3362)  ; Sqrt(value)
  %3577 = call float @dx.op.unary.f32(i32 24, float %3363)  ; Sqrt(value)
  %3578 = call float @dx.op.unary.f32(i32 24, float %3364)  ; Sqrt(value)
  %3579 = fadd fast float %3576, -5.000000e-01
  %3580 = fadd fast float %3577, -5.000000e-01
  %3581 = fadd fast float %3578, -5.000000e-01
  %3582 = fmul fast float %3579, %3528
  %3583 = fmul fast float %3580, %3528
  %3584 = fmul fast float %3581, %3528
  %3585 = fadd fast float %3582, 5.000000e-01
  %3586 = fadd fast float %3583, 5.000000e-01
  %3587 = fadd fast float %3584, 5.000000e-01
  %3588 = fmul fast float %3585, 2.000000e+00
  %3589 = fsub fast float 1.000000e+00, %3588
  %3590 = fmul fast float %3589, %3515
  %3591 = fadd fast float %3590, %3588
  %3592 = fmul fast float %3591, %3515
  %3593 = fmul fast float %3586, 2.000000e+00
  %3594 = fsub fast float 1.000000e+00, %3593
  %3595 = fmul fast float %3594, %3516
  %3596 = fadd fast float %3595, %3593
  %3597 = fmul fast float %3596, %3516
  %3598 = fmul fast float %3587, 2.000000e+00
  %3599 = fsub fast float 1.000000e+00, %3598
  %3600 = fmul fast float %3599, %3517
  %3601 = fadd fast float %3600, %3598
  %3602 = fmul fast float %3601, %3517
  br label %3603

; <label>:3603                                    ; preds = %3575, %3573, %3560, %3530, %3514
  %3604 = phi float [ %3515, %3514 ], [ %3592, %3575 ], [ %3515, %3573 ], [ %3570, %3560 ], [ %3540, %3530 ]
  %3605 = phi float [ %3516, %3514 ], [ %3597, %3575 ], [ %3516, %3573 ], [ %3571, %3560 ], [ %3541, %3530 ]
  %3606 = phi float [ %3517, %3514 ], [ %3602, %3575 ], [ %3517, %3573 ], [ %3572, %3560 ], [ %3542, %3530 ]
  %3607 = phi float [ %3518, %3514 ], [ %3518, %3575 ], [ %3518, %3573 ], [ %3518, %3560 ], [ %3552, %3530 ]
  %3608 = phi float [ %3519, %3514 ], [ %3519, %3575 ], [ %3519, %3573 ], [ %3519, %3560 ], [ %3553, %3530 ]
  %3609 = phi float [ %3520, %3514 ], [ %3520, %3575 ], [ %3520, %3573 ], [ %3520, %3560 ], [ %3554, %3530 ]
  %3610 = phi float [ %2841, %3514 ], [ %2841, %3575 ], [ %2841, %3573 ], [ %2841, %3560 ], [ %3545, %3530 ]
  %3611 = phi float [ %2844, %3514 ], [ %2844, %3575 ], [ %2844, %3573 ], [ %2844, %3560 ], [ %3557, %3530 ]
  %3612 = and i32 %3522, 12
  %3613 = icmp eq i32 %3612, 12
  br i1 %3613, label %3686, label %3614

; <label>:3614                                    ; preds = %3603
  %3615 = and i32 %3522, 2097184
  %3616 = icmp eq i32 %3615, 2097184
  %3617 = select i1 %3616, float %3142, float 0.000000e+00
  %3618 = and i32 %3522, 4194336
  %3619 = icmp eq i32 %3618, 4194336
  %3620 = select i1 %3619, float %3142, float 0.000000e+00
  %3621 = and i32 %3522, 8388640
  %3622 = icmp eq i32 %3621, 8388640
  %3623 = select i1 %3622, float %3142, float 0.000000e+00
  %3624 = icmp eq i32 %3612, 0
  br i1 %3624, label %3625, label %3638

; <label>:3625                                    ; preds = %3614
  %3626 = fsub fast float %3443, %2833
  %3627 = fsub fast float %3444, %2834
  %3628 = fmul fast float %3617, %3626
  %3629 = fmul fast float %3617, %3627
  %3630 = fadd fast float %3628, %2833
  %3631 = fadd fast float %3629, %2834
  %3632 = fsub fast float %3445, %2843
  %3633 = fmul fast float %3620, %3632
  %3634 = fadd fast float %3633, %2843
  %3635 = fsub fast float %3442, %2842
  %3636 = fmul fast float %3623, %3635
  %3637 = fadd fast float %3636, %2842
  br label %3686

; <label>:3638                                    ; preds = %3614
  %3639 = icmp eq i32 %3612, 4
  br i1 %3639, label %3640, label %3672

; <label>:3640                                    ; preds = %3638
  %3641 = fmul fast float %3617, %3443
  %3642 = fmul fast float %3617, %3444
  %3643 = fadd fast float %3641, %2833
  %3644 = fadd fast float %3642, %2834
  %3645 = call float @dx.op.binary.f32(i32 36, float %2843, float %3445)  ; FMin(a,b)
  %3646 = fsub fast float %3645, %2843
  %3647 = fmul fast float %3646, %3620
  %3648 = fadd fast float %3647, %2843
  %3649 = fadd fast float %3442, %2842
  %3650 = fmul fast float %3649, 0x3FF337FAE0000000
  %3651 = fmul fast float %2842, %2842
  %3652 = fmul fast float %3442, %3442
  %3653 = fadd fast float %3652, %3651
  %3654 = fmul fast float %3653, 0x3FE5152B00000000
  %3655 = fmul fast float %2842, 0xBFCC1F85E0000000
  %3656 = fmul fast float %3655, %3442
  %3657 = fadd fast float %3656, 0xBFE1363700000000
  %3658 = fadd fast float %3657, %3650
  %3659 = fsub fast float %3658, %3654
  %3660 = fmul fast float %3649, 0x3FBA6F0D00000000
  %3661 = fmul fast float %3653, 0x3FD0432880000000
  %3662 = fmul fast float %2842, 0xBFEF110800000000
  %3663 = fmul fast float %3662, %3442
  %3664 = fadd fast float %3663, 1.000000e+00
  %3665 = fsub fast float %3664, %3660
  %3666 = fadd fast float %3665, %3661
  %3667 = fdiv fast float %3659, %3666
  %3668 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  %3669 = fsub fast float %3668, %2842
  %3670 = fmul fast float %3669, %3623
  %3671 = fadd fast float %3670, %2842
  br label %3686

; <label>:3672                                    ; preds = %3638
  %3673 = icmp eq i32 %3612, 8
  br i1 %3673, label %3674, label %3686

; <label>:3674                                    ; preds = %3672
  %3675 = fmul fast float %3617, %3443
  %3676 = fmul fast float %3617, %3444
  %3677 = fadd fast float %3675, %2833
  %3678 = fadd fast float %3676, %2834
  %3679 = call float @dx.op.binary.f32(i32 36, float %2843, float %3445)  ; FMin(a,b)
  %3680 = fsub fast float %3679, %2843
  %3681 = fmul fast float %3680, %3620
  %3682 = fadd fast float %3681, %2843
  %3683 = fsub fast float %3442, %2842
  %3684 = fmul fast float %3623, %3683
  %3685 = fadd fast float %3684, %2842
  br label %3686

; <label>:3686                                    ; preds = %3674, %3672, %3640, %3625, %3603, %3141, %2845, %2832
  %3687 = phi float [ %2833, %3603 ], [ %2833, %3141 ], [ %2833, %2832 ], [ %2833, %2845 ], [ %3630, %3625 ], [ %3643, %3640 ], [ %2833, %3672 ], [ %3677, %3674 ]
  %3688 = phi float [ %2834, %3603 ], [ %2834, %3141 ], [ %2834, %2832 ], [ %2834, %2845 ], [ %3631, %3625 ], [ %3644, %3640 ], [ %2834, %3672 ], [ %3678, %3674 ]
  %3689 = phi float [ %3604, %3603 ], [ %2835, %3141 ], [ %2835, %2832 ], [ %2835, %2845 ], [ %3604, %3625 ], [ %3604, %3640 ], [ %3604, %3672 ], [ %3604, %3674 ]
  %3690 = phi float [ %3605, %3603 ], [ %2836, %3141 ], [ %2836, %2832 ], [ %2836, %2845 ], [ %3605, %3625 ], [ %3605, %3640 ], [ %3605, %3672 ], [ %3605, %3674 ]
  %3691 = phi float [ %3606, %3603 ], [ %2837, %3141 ], [ %2837, %2832 ], [ %2837, %2845 ], [ %3606, %3625 ], [ %3606, %3640 ], [ %3606, %3672 ], [ %3606, %3674 ]
  %3692 = phi float [ %3607, %3603 ], [ %2838, %3141 ], [ %2838, %2832 ], [ %2838, %2845 ], [ %3607, %3625 ], [ %3607, %3640 ], [ %3607, %3672 ], [ %3607, %3674 ]
  %3693 = phi float [ %3608, %3603 ], [ %2839, %3141 ], [ %2839, %2832 ], [ %2839, %2845 ], [ %3608, %3625 ], [ %3608, %3640 ], [ %3608, %3672 ], [ %3608, %3674 ]
  %3694 = phi float [ %3609, %3603 ], [ %2840, %3141 ], [ %2840, %2832 ], [ %2840, %2845 ], [ %3609, %3625 ], [ %3609, %3640 ], [ %3609, %3672 ], [ %3609, %3674 ]
  %3695 = phi float [ %3610, %3603 ], [ %2841, %3141 ], [ %2841, %2832 ], [ %2841, %2845 ], [ %3610, %3625 ], [ %3610, %3640 ], [ %3610, %3672 ], [ %3610, %3674 ]
  %3696 = phi float [ %2842, %3603 ], [ %2842, %3141 ], [ %2842, %2832 ], [ %2842, %2845 ], [ %3637, %3625 ], [ %3671, %3640 ], [ %2842, %3672 ], [ %3685, %3674 ]
  %3697 = phi float [ %2843, %3603 ], [ %2843, %3141 ], [ %2843, %2832 ], [ %2843, %2845 ], [ %3634, %3625 ], [ %3648, %3640 ], [ %2843, %3672 ], [ %3682, %3674 ]
  %3698 = phi float [ %3611, %3603 ], [ %2844, %3141 ], [ %2844, %2832 ], [ %2844, %2845 ], [ %3611, %3625 ], [ %3611, %3640 ], [ %3611, %3672 ], [ %3611, %3674 ]
  %3699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3700 = extractvalue %dx.types.CBufRet.f32 %3699, 0
  %3701 = call float @dx.op.dot2.f32(i32 54, float %3687, float %3688, float %3687, float %3688)  ; Dot2(ax,ay,bx,by)
  %3702 = fmul fast float %3701, 0x3FE3333340000000
  %3703 = fsub fast float 1.000000e+00, %3702
  %3704 = call float @dx.op.dot3.f32(i32 55, float %3687, float %3688, float %3703, float %3687, float %3688, float %3703)  ; Dot3(ax,ay,az,bx,by,bz)
  %3705 = call float @dx.op.unary.f32(i32 25, float %3704)  ; Rsqrt(value)
  %3706 = fmul fast float %3705, %3687
  %3707 = fmul fast float %3705, %3688
  %3708 = fmul fast float %3703, %3705
  %3709 = fmul fast float %3708, %111
  %3710 = fmul fast float %3708, %113
  %3711 = fmul fast float %3708, %115
  %3712 = fmul fast float %3706, %77
  %3713 = fmul fast float %3706, %78
  %3714 = fmul fast float %3706, %79
  %3715 = fadd fast float %3709, %3712
  %3716 = fadd fast float %3710, %3713
  %3717 = fadd fast float %3711, %3714
  %3718 = fmul fast float %3707, %125
  %3719 = fmul fast float %3707, %126
  %3720 = fmul fast float %3707, %127
  %3721 = fadd fast float %3715, %3718
  %3722 = fadd fast float %3716, %3719
  %3723 = fadd fast float %3717, %3720
  %3724 = call float @dx.op.dot3.f32(i32 55, float %3721, float %3722, float %3723, float %3721, float %3722, float %3723)  ; Dot3(ax,ay,az,bx,by,bz)
  %3725 = call float @dx.op.unary.f32(i32 25, float %3724)  ; Rsqrt(value)
  %3726 = fmul fast float %3721, %3725
  %3727 = fmul fast float %3722, %3725
  %3728 = fmul fast float %3723, %3725
  %3729 = and i32 %58, 1
  %3730 = icmp eq i32 %3729, 0
  br i1 %3730, label %3731, label %4243

; <label>:3731                                    ; preds = %3686
  %3732 = call float @dx.op.unary.f32(i32 83, float %161)  ; DerivCoarseX(value)
  %3733 = call float @dx.op.unary.f32(i32 83, float %162)  ; DerivCoarseX(value)
  %3734 = call float @dx.op.unary.f32(i32 83, float %163)  ; DerivCoarseX(value)
  %3735 = call float @dx.op.unary.f32(i32 84, float %161)  ; DerivCoarseY(value)
  %3736 = call float @dx.op.unary.f32(i32 84, float %162)  ; DerivCoarseY(value)
  %3737 = call float @dx.op.unary.f32(i32 84, float %163)  ; DerivCoarseY(value)
  %3738 = fadd fast float %3732, %161
  %3739 = fadd fast float %3733, %162
  %3740 = fadd fast float %3734, %163
  %3741 = fadd fast float %3735, %161
  %3742 = fadd fast float %3736, %162
  %3743 = fadd fast float %3737, %163
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = extractvalue %dx.types.CBufRet.f32 %3744, 1
  %3747 = extractvalue %dx.types.CBufRet.f32 %3744, 2
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 2
  %3750 = extractvalue %dx.types.CBufRet.f32 %3748, 3
  %3751 = fmul fast float %3745, %102
  %3752 = fmul fast float %3751, %3749
  %3753 = fmul fast float %3746, %103
  %3754 = fmul fast float %3753, %3750
  %3755 = fptoui float %3752 to i32
  %3756 = fptoui float %3754 to i32
  %3757 = fadd fast float %3745, -1.000000e+00
  %3758 = fadd fast float %3746, -1.000000e+00
  %3759 = fptoui float %3757 to i32
  %3760 = fptoui float %3758 to i32
  %3761 = call i32 @dx.op.binary.i32(i32 40, i32 %3755, i32 %3759)  ; UMin(a,b)
  %3762 = call i32 @dx.op.binary.i32(i32 40, i32 %3756, i32 %3760)  ; UMin(a,b)
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3765 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3766 = fmul fast float %3764, %93
  %3767 = fsub fast float %3766, %3765
  %3768 = fadd fast float %3747, -1.000000e+00
  %3769 = call float @dx.op.binary.f32(i32 36, float %3767, float %3768)  ; FMin(a,b)
  %3770 = fptoui float %3769 to i32
  %3771 = fptoui float %3745 to i32
  %3772 = fptoui float %3746 to i32
  %3773 = mul i32 %3770, %3772
  %3774 = add i32 %3773, %3762
  %3775 = mul i32 %3774, %3771
  %3776 = add i32 %3775, %3761
  %3777 = shl i32 %3776, 2
  %3778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.i32 %3778, 0
  %3780 = and i32 %3779, 1023
  %3781 = lshr i32 %3779, 10
  %3782 = icmp eq i32 %3780, 0
  br i1 %3782, label %4211, label %3783

; <label>:3783                                    ; preds = %3731
  %3784 = and i32 %3779, 1023
  br label %3785

; <label>:3785                                    ; preds = %3912, %3783
  %3786 = phi i32 [ %3862, %3912 ], [ 0, %3783 ]
  %3787 = phi float [ %3913, %3912 ], [ 0.000000e+00, %3783 ]
  %3788 = phi float [ %3914, %3912 ], [ %1133, %3783 ]
  %3789 = phi float [ %3915, %3912 ], [ %3700, %3783 ]
  %3790 = phi float [ %3916, %3912 ], [ %3698, %3783 ]
  %3791 = phi float [ %3917, %3912 ], [ 0.000000e+00, %3783 ]
  %3792 = phi float [ %3918, %3912 ], [ 0.000000e+00, %3783 ]
  %3793 = phi float [ %3919, %3912 ], [ %3692, %3783 ]
  %3794 = phi float [ %3920, %3912 ], [ %3693, %3783 ]
  %3795 = phi float [ %3921, %3912 ], [ %3694, %3783 ]
  %3796 = phi float [ %3922, %3912 ], [ %3726, %3783 ]
  %3797 = phi float [ %3923, %3912 ], [ %3727, %3783 ]
  %3798 = phi float [ %3924, %3912 ], [ %3728, %3783 ]
  %3799 = phi float [ %3925, %3912 ], [ %3697, %3783 ]
  %3800 = phi float [ %3926, %3912 ], [ %3696, %3783 ]
  %3801 = phi float [ %3927, %3912 ], [ 0.000000e+00, %3783 ]
  %3802 = phi float [ %3928, %3912 ], [ %3695, %3783 ]
  %3803 = phi float [ %3929, %3912 ], [ %3689, %3783 ]
  %3804 = phi float [ %3930, %3912 ], [ %3690, %3783 ]
  %3805 = phi float [ %3931, %3912 ], [ %3691, %3783 ]
  %3806 = add nuw nsw i32 %3786, %3781
  %3807 = shl i32 %3806, 2
  %3808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.i32 %3808, 0
  %3810 = shl i32 %3809, 8
  %3811 = or i32 %3810, 48
  %3812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.ResRet.f32 %3812, 1
  %3815 = extractvalue %dx.types.ResRet.f32 %3812, 2
  %3816 = extractvalue %dx.types.ResRet.f32 %3812, 3
  %3817 = or i32 %3810, 64
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.i32 %3818, 1
  %3821 = or i32 %3810, 80
  %3822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 2
  %3824 = extractvalue %dx.types.ResRet.f32 %3822, 3
  %3825 = or i32 %3810, 96
  %3826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3826, 3
  %3831 = or i32 %3810, 112
  %3832 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3831, i32 undef)  ; BufferLoad(srv,index,wot)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 2
  %3834 = or i32 %3810, 128
  %3835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.ResRet.f32 %3835, 1
  %3838 = extractvalue %dx.types.ResRet.f32 %3835, 2
  %3839 = extractvalue %dx.types.ResRet.f32 %3835, 3
  %3840 = or i32 %3810, 144
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = extractvalue %dx.types.ResRet.f32 %3841, 2
  %3845 = extractvalue %dx.types.ResRet.f32 %3841, 3
  %3846 = or i32 %3810, 160
  %3847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = extractvalue %dx.types.ResRet.f32 %3847, 3
  %3852 = or i32 %3810, 192
  %3853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.i32 %3853, 0
  %3855 = or i32 %3810, 208
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = or i32 %3810, 248
  %3859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.f32 %3859, 0
  %3861 = extractvalue %dx.types.ResRet.f32 %3859, 1
  %3862 = add nuw nsw i32 %3786, 1
  %3863 = bitcast float %3816 to i32
  %3864 = and i32 %3863, 512
  %3865 = icmp eq i32 %3864, 0
  %3866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = extractvalue %dx.types.ResRet.f32 %3866, 3
  %3871 = call float @dx.op.dot4.f32(i32 56, float %3867, float %3868, float %3869, float %3870, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3872 = or i32 %3810, 16
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.ResRet.f32 %3873, 3
  %3878 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3879 = or i32 %3810, 32
  %3880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.ResRet.f32 %3880, 2
  %3884 = extractvalue %dx.types.ResRet.f32 %3880, 3
  %3885 = call float @dx.op.dot4.f32(i32 56, float %3881, float %3882, float %3883, float %3884, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3886 = call float @dx.op.unary.f32(i32 27, float %3871)  ; Round_ni(value)
  %3887 = call float @dx.op.unary.f32(i32 6, float %3886)  ; FAbs(value)
  %3888 = call float @dx.op.unary.f32(i32 27, float %3878)  ; Round_ni(value)
  %3889 = call float @dx.op.unary.f32(i32 6, float %3888)  ; FAbs(value)
  %3890 = call float @dx.op.unary.f32(i32 6, float %3885)  ; FAbs(value)
  %3891 = call float @dx.op.unary.f32(i32 27, float %3890)  ; Round_ni(value)
  %3892 = fadd fast float %3889, %3887
  %3893 = fadd fast float %3892, %3891
  %3894 = fcmp fast oeq float %3893, 0.000000e+00
  %3895 = call float @dx.op.dot4.f32(i32 56, float %3867, float %3868, float %3869, float %3870, float %3738, float %3739, float %3740, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3896 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %3738, float %3739, float %3740, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3897 = call float @dx.op.dot4.f32(i32 56, float %3867, float %3868, float %3869, float %3870, float %3741, float %3742, float %3743, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3898 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %3741, float %3742, float %3743, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3899 = fsub fast float %3895, %3871
  %3900 = fsub fast float %3897, %3871
  %3901 = fsub fast float %3896, %3878
  %3902 = fsub fast float %3898, %3878
  %3903 = call float @dx.op.dot3.f32(i32 55, float %3813, float %3814, float %3815, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 2
  %3906 = fadd fast float %3905, %3903
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  %3909 = fcmp fast ogt float %3907, %3908
  %3910 = and i1 %3894, %3909
  %3911 = and i1 %3865, %3910
  br i1 %3911, label %3933, label %3912

; <label>:3912                                    ; preds = %4197, %4014, %3933, %3785
  %3913 = phi float [ %3787, %3933 ], [ %4017, %4014 ], [ %4017, %4197 ], [ %3787, %3785 ]
  %3914 = phi float [ %3788, %3933 ], [ %3788, %4014 ], [ %4172, %4197 ], [ %3788, %3785 ]
  %3915 = phi float [ %3789, %3933 ], [ %3789, %4014 ], [ %4171, %4197 ], [ %3789, %3785 ]
  %3916 = phi float [ %3790, %3933 ], [ %3790, %4014 ], [ %4169, %4197 ], [ %3790, %3785 ]
  %3917 = phi float [ %3791, %3933 ], [ %3791, %4014 ], [ %4141, %4197 ], [ %3791, %3785 ]
  %3918 = phi float [ %3792, %3933 ], [ %3792, %4014 ], [ %4139, %4197 ], [ %3792, %3785 ]
  %3919 = phi float [ %3793, %3933 ], [ %3793, %4014 ], [ %4207, %4197 ], [ %3793, %3785 ]
  %3920 = phi float [ %3794, %3933 ], [ %3794, %4014 ], [ %4208, %4197 ], [ %3794, %3785 ]
  %3921 = phi float [ %3795, %3933 ], [ %3795, %4014 ], [ %4209, %4197 ], [ %3795, %3785 ]
  %3922 = phi float [ %3796, %3933 ], [ %3796, %4014 ], [ %4120, %4197 ], [ %3796, %3785 ]
  %3923 = phi float [ %3797, %3933 ], [ %3797, %4014 ], [ %4121, %4197 ], [ %3797, %3785 ]
  %3924 = phi float [ %3798, %3933 ], [ %3798, %4014 ], [ %4122, %4197 ], [ %3798, %3785 ]
  %3925 = phi float [ %3799, %3933 ], [ %3799, %4014 ], [ %4149, %4197 ], [ %3799, %3785 ]
  %3926 = phi float [ %3800, %3933 ], [ %3800, %4014 ], [ %4146, %4197 ], [ %3800, %3785 ]
  %3927 = phi float [ %3801, %3933 ], [ %3801, %4014 ], [ %4143, %4197 ], [ %3801, %3785 ]
  %3928 = phi float [ %3802, %3933 ], [ %3802, %4014 ], [ %4137, %4197 ], [ %3802, %3785 ]
  %3929 = phi float [ %3803, %3933 ], [ %3803, %4014 ], [ %4132, %4197 ], [ %3803, %3785 ]
  %3930 = phi float [ %3804, %3933 ], [ %3804, %4014 ], [ %4133, %4197 ], [ %3804, %3785 ]
  %3931 = phi float [ %3805, %3933 ], [ %3805, %4014 ], [ %4134, %4197 ], [ %3805, %3785 ]
  %3932 = icmp eq i32 %3862, %3784
  br i1 %3932, label %4210, label %3785

; <label>:3933                                    ; preds = %3785
  %3934 = extractvalue %dx.types.ResRet.f32 %3832, 3
  %3935 = extractvalue %dx.types.ResRet.f32 %3832, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3937 = extractvalue %dx.types.ResRet.f32 %3822, 1
  %3938 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3939 = extractvalue %dx.types.ResRet.i32 %3818, 3
  %3940 = extractvalue %dx.types.ResRet.i32 %3818, 2
  %3941 = add i32 %3939, 0
  %3942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3941, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3944 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3942, %dx.types.Handle %3943, float %3871, float %3878, float undef, float undef, i32 0, i32 0, i32 undef, float %3899, float %3901, float undef, float %3900, float %3902, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = fmul fast float %3945, %3938
  %3947 = fadd fast float %3946, %3937
  %3948 = call float @dx.op.unary.f32(i32 7, float %3947)  ; Saturate(value)
  %3949 = fmul fast float %3871, %3827
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3878, float %3949)  ; FMad(a,b,c)
  %3951 = fadd fast float %3950, %3936
  %3952 = fmul fast float %3871, %3829
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3878, float %3952)  ; FMad(a,b,c)
  %3954 = fadd fast float %3953, %3935
  %3955 = fmul fast float %3899, %3827
  %3956 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3901, float %3955)  ; FMad(a,b,c)
  %3957 = fmul fast float %3899, %3829
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3901, float %3957)  ; FMad(a,b,c)
  %3959 = fmul fast float %3900, %3827
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3828, float %3902, float %3959)  ; FMad(a,b,c)
  %3961 = fmul fast float %3900, %3829
  %3962 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3902, float %3961)  ; FMad(a,b,c)
  %3963 = add i32 %3940, 0
  %3964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3964, %dx.types.Handle %3943, float %3951, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3956, float %3958, float undef, float %3960, float %3962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = and i32 %3863, 1024
  %3968 = icmp ne i32 %3967, 0
  %3969 = fcmp fast ogt float %3966, 0x3FE0101020000000
  %3970 = uitofp i1 %3969 to float
  %3971 = select i1 %3968, float %3970, float %3966
  %3972 = and i32 %3863, 8192
  %3973 = icmp ne i32 %3972, 0
  %3974 = select i1 %3973, float %3934, float 1.000000e+00
  %3975 = fmul fast float %3871, 2.000000e+00
  %3976 = fadd fast float %3975, -1.000000e+00
  %3977 = call float @dx.op.unary.f32(i32 6, float %3976)  ; FAbs(value)
  %3978 = fmul fast float %3977, %3860
  %3979 = fsub fast float %3978, %3860
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = fmul fast float %3878, 2.000000e+00
  %3982 = fadd fast float %3981, -1.000000e+00
  %3983 = call float @dx.op.unary.f32(i32 6, float %3982)  ; FAbs(value)
  %3984 = fmul fast float %3983, %3861
  %3985 = fsub fast float %3984, %3861
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3890, %3823
  %3988 = fsub fast float %3987, %3823
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3990 = fmul fast float %3948, %3974
  %3991 = fmul fast float %3990, %3945
  %3992 = fmul fast float %3991, %3980
  %3993 = fmul fast float %3992, %3971
  %3994 = fmul fast float %3993, %3986
  %3995 = fmul fast float %3994, %3989
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 1
  %3998 = extractvalue %dx.types.CBufRet.f32 %3996, 0
  %3999 = fsub fast float %3907, %3998
  %4000 = fmul fast float %3999, %3997
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4002 = fmul fast float %3995, %3824
  %4003 = fadd fast float %3995, %3824
  %4004 = fmul fast float %4003, %3833
  %4005 = fsub fast float %4004, %3833
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = and i32 %3863, 128
  %4008 = icmp ne i32 %4007, 0
  %4009 = select i1 %4008, float %4006, float %4002
  %4010 = fmul fast float %4009, %4001
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 0
  %4013 = fcmp fast ugt float %4010, %4012
  br i1 %4013, label %4014, label %3912

; <label>:4014                                    ; preds = %3933
  %4015 = select i1 %3973, float %4010, float 0.000000e+00
  %4016 = fadd fast float %4015, %3787
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  br i1 %3973, label %3912, label %4018

; <label>:4018                                    ; preds = %4014
  %4019 = and i32 %3863, 4
  %4020 = and i32 %3863, 8
  %4021 = add i32 %3819, 0
  %4022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4021, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4024 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4022, %dx.types.Handle %4023, float %3951, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3956, float %3958, float undef, float %3960, float %3962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.ResRet.f32 %4024, 1
  %4027 = extractvalue %dx.types.ResRet.f32 %4024, 2
  %4028 = extractvalue %dx.types.ResRet.f32 %4024, 3
  %4029 = bitcast float %3845 to i32
  %4030 = and i32 %4029, 255
  %4031 = uitofp i32 %4030 to float
  %4032 = lshr i32 %4029, 8
  %4033 = and i32 %4032, 255
  %4034 = uitofp i32 %4033 to float
  %4035 = fmul fast float %4028, %4031
  %4036 = fadd fast float %4035, %4034
  %4037 = fmul fast float %4036, 0x3F70101000000000
  %4038 = add i32 %3820, 0
  %4039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4038, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4040 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4039, %dx.types.Handle %4023, float %3951, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3956, float %3958, float undef, float %3960, float %3962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.ResRet.f32 %4040, 1
  %4043 = extractvalue %dx.types.ResRet.f32 %4040, 2
  %4044 = extractvalue %dx.types.ResRet.f32 %4040, 3
  %4045 = bitcast float %3839 to i32
  %4046 = and i32 %4045, 255
  %4047 = uitofp i32 %4046 to float
  %4048 = lshr i32 %4045, 8
  %4049 = and i32 %4048, 255
  %4050 = uitofp i32 %4049 to float
  %4051 = lshr i32 %4045, 16
  %4052 = and i32 %4051, 255
  %4053 = uitofp i32 %4052 to float
  %4054 = fmul fast float %4053, 0x3F70101000000000
  %4055 = fmul fast float %4041, %4047
  %4056 = fadd fast float %4055, %4050
  %4057 = fmul fast float %4056, 0x3F70101000000000
  %4058 = fadd fast float %4042, -5.000000e-01
  %4059 = fadd fast float %4044, -5.000000e-01
  %4060 = fmul fast float %4058, %4054
  %4061 = fmul fast float %4059, %4054
  %4062 = fadd fast float %4060, 5.000000e-01
  %4063 = fadd fast float %4061, 5.000000e-01
  %4064 = fmul fast float %4025, %3848
  %4065 = fmul fast float %4026, %3849
  %4066 = fmul fast float %4027, %3850
  %4067 = fmul fast float %4062, 2.000000e+00
  %4068 = fadd fast float %4067, -1.000000e+00
  %4069 = fmul fast float %4063, 2.000000e+00
  %4070 = fadd fast float %4069, -1.000000e+00
  %4071 = fadd fast float %4068, %4070
  %4072 = fmul fast float %4071, 5.000000e-01
  %4073 = fsub fast float %4068, %4070
  %4074 = fmul fast float %4073, 5.000000e-01
  %4075 = call float @dx.op.unary.f32(i32 6, float %4072)  ; FAbs(value)
  %4076 = fsub fast float 1.000000e+00, %4075
  %4077 = call float @dx.op.unary.f32(i32 6, float %4074)  ; FAbs(value)
  %4078 = fsub fast float %4076, %4077
  %4079 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4074, float %4078, float %4072, float %4074, float %4078)  ; Dot3(ax,ay,az,bx,by,bz)
  %4080 = call float @dx.op.unary.f32(i32 25, float %4079)  ; Rsqrt(value)
  %4081 = fmul fast float %4072, %4080
  %4082 = fmul fast float %4074, %4080
  %4083 = fmul fast float %4080, %4078
  %4084 = fmul fast float %4083, %3813
  %4085 = fmul fast float %4083, %3814
  %4086 = fmul fast float %4083, %3815
  %4087 = fmul fast float %4081, %3836
  %4088 = fmul fast float %4081, %3837
  %4089 = fmul fast float %4081, %3838
  %4090 = fadd fast float %4087, %4084
  %4091 = fadd fast float %4088, %4085
  %4092 = fadd fast float %4089, %4086
  %4093 = fmul fast float %4082, %3842
  %4094 = fmul fast float %4082, %3843
  %4095 = fmul fast float %4082, %3844
  %4096 = fadd fast float %4090, %4093
  %4097 = fadd fast float %4091, %4094
  %4098 = fadd fast float %4092, %4095
  %4099 = call float @dx.op.dot3.f32(i32 55, float %4096, float %4097, float %4098, float %4096, float %4097, float %4098)  ; Dot3(ax,ay,az,bx,by,bz)
  %4100 = call float @dx.op.unary.f32(i32 25, float %4099)  ; Rsqrt(value)
  %4101 = fmul fast float %4096, %4100
  %4102 = fmul fast float %4097, %4100
  %4103 = fmul fast float %4098, %4100
  %4104 = icmp ne i32 %4020, 0
  %4105 = select i1 %4104, float 1.000000e+00, float 0.000000e+00
  %4106 = fmul fast float %4010, %4105
  %4107 = and i32 %3863, 1
  %4108 = icmp eq i32 %4107, 0
  br i1 %4108, label %4109, label %4113

; <label>:4109                                    ; preds = %4018
  %4110 = fsub fast float %4101, %3796
  %4111 = fsub fast float %4102, %3797
  %4112 = fsub fast float %4103, %3798
  br label %4113

; <label>:4113                                    ; preds = %4109, %4018
  %4114 = phi float [ %4110, %4109 ], [ %4101, %4018 ]
  %4115 = phi float [ %4111, %4109 ], [ %4102, %4018 ]
  %4116 = phi float [ %4112, %4109 ], [ %4103, %4018 ]
  %4117 = fmul float %4116, %4106
  %4118 = fmul float %4115, %4106
  %4119 = fmul float %4114, %4106
  %4120 = fadd fast float %4119, %3796
  %4121 = fadd fast float %4118, %3797
  %4122 = fadd fast float %4117, %3798
  %4123 = icmp ne i32 %4019, 0
  %4124 = select i1 %4123, float 1.000000e+00, float 0.000000e+00
  %4125 = fmul fast float %4010, %4124
  %4126 = fsub fast float %4064, %3803
  %4127 = fsub fast float %4065, %3804
  %4128 = fsub fast float %4066, %3805
  %4129 = fmul fast float %4126, %4125
  %4130 = fmul fast float %4127, %4125
  %4131 = fmul fast float %4128, %4125
  %4132 = fadd fast float %4129, %3803
  %4133 = fadd fast float %4130, %3804
  %4134 = fadd fast float %4131, %3805
  %4135 = fsub fast float %4037, %3802
  %4136 = fmul fast float %4135, %4125
  %4137 = fadd fast float %4136, %3802
  %4138 = fmul fast float %4125, %3792
  %4139 = fsub fast float %3792, %4138
  %4140 = fmul fast float %4125, %3791
  %4141 = fsub fast float %3791, %4140
  %4142 = fadd fast float %4010, %3801
  %4143 = call float @dx.op.unary.f32(i32 7, float %4142)  ; Saturate(value)
  %4144 = fsub fast float %4057, %3800
  %4145 = fmul fast float %4144, %4106
  %4146 = fadd fast float %4145, %3800
  %4147 = fsub fast float %4043, %3799
  %4148 = fmul fast float %4147, %4106
  %4149 = fadd fast float %4148, %3799
  %4150 = call float @dx.op.dot3.f32(i32 55, float %4064, float %4065, float %4066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4154 = fmul fast float %4153, %4150
  %4155 = fadd fast float %4154, %4152
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = bitcast float %3851 to i32
  %4158 = and i32 %4157, 65535
  %4159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4158)  ; LegacyF16ToF32(value)
  %4160 = lshr i32 %4157, 16
  %4161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4160)  ; LegacyF16ToF32(value)
  %4162 = fcmp fast oge float %4159, 0.000000e+00
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = select i1 %4162, float %4159, float %4164
  %4166 = fadd fast float %4165, %4161
  %4167 = fsub fast float %4156, %3790
  %4168 = fmul fast float %4167, %4010
  %4169 = fadd fast float %4168, %3790
  %4170 = fmul fast float %4166, %4010
  %4171 = call float @dx.op.binary.f32(i32 35, float %3789, float %4170)  ; FMax(a,b)
  %4172 = call float @dx.op.binary.f32(i32 35, float %3788, float %4010)  ; FMax(a,b)
  %4173 = and i32 %3863, 16
  %4174 = icmp eq i32 %4173, 0
  br i1 %4174, label %4197, label %4175

; <label>:4175                                    ; preds = %4113
  %4176 = bitcast float %3857 to i32
  %4177 = add i32 %3854, 0
  %4178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4177, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4178, %dx.types.Handle %4023, float %3951, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3956, float %3958, float undef, float %3960, float %3962, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = and i32 %4176, 65535
  %4184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4183)  ; LegacyF16ToF32(value)
  %4185 = fmul fast float %4180, %3848
  %4186 = fmul fast float %4181, %3849
  %4187 = fmul fast float %4182, %3850
  %4188 = and i32 %3863, 16384
  %4189 = icmp ne i32 %4188, 0
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 0
  %4192 = select i1 %4189, float %4191, float 1.000000e+00
  %4193 = fmul fast float %4192, %4184
  %4194 = fmul fast float %4185, %4193
  %4195 = fmul fast float %4186, %4193
  %4196 = fmul fast float %4187, %4193
  br label %4197

; <label>:4197                                    ; preds = %4175, %4113
  %4198 = phi float [ %4194, %4175 ], [ 0.000000e+00, %4113 ]
  %4199 = phi float [ %4195, %4175 ], [ 0.000000e+00, %4113 ]
  %4200 = phi float [ %4196, %4175 ], [ 0.000000e+00, %4113 ]
  %4201 = fsub fast float %4198, %3793
  %4202 = fsub fast float %4199, %3794
  %4203 = fsub fast float %4200, %3795
  %4204 = fmul fast float %4201, %4010
  %4205 = fmul fast float %4202, %4010
  %4206 = fmul fast float %4203, %4010
  %4207 = fadd fast float %4204, %3793
  %4208 = fadd fast float %4205, %3794
  %4209 = fadd fast float %4206, %3795
  br label %3912

; <label>:4210                                    ; preds = %3912
  br label %4211

; <label>:4211                                    ; preds = %4210, %3731
  %4212 = phi float [ 0.000000e+00, %3731 ], [ %3913, %4210 ]
  %4213 = phi float [ %1133, %3731 ], [ %3914, %4210 ]
  %4214 = phi float [ %3700, %3731 ], [ %3915, %4210 ]
  %4215 = phi float [ %3698, %3731 ], [ %3916, %4210 ]
  %4216 = phi float [ 0.000000e+00, %3731 ], [ %3917, %4210 ]
  %4217 = phi float [ 0.000000e+00, %3731 ], [ %3918, %4210 ]
  %4218 = phi float [ %3692, %3731 ], [ %3919, %4210 ]
  %4219 = phi float [ %3693, %3731 ], [ %3920, %4210 ]
  %4220 = phi float [ %3694, %3731 ], [ %3921, %4210 ]
  %4221 = phi float [ %3726, %3731 ], [ %3922, %4210 ]
  %4222 = phi float [ %3727, %3731 ], [ %3923, %4210 ]
  %4223 = phi float [ %3728, %3731 ], [ %3924, %4210 ]
  %4224 = phi float [ %3697, %3731 ], [ %3925, %4210 ]
  %4225 = phi float [ %3696, %3731 ], [ %3926, %4210 ]
  %4226 = phi float [ 0.000000e+00, %3731 ], [ %3927, %4210 ]
  %4227 = phi float [ %3695, %3731 ], [ %3928, %4210 ]
  %4228 = phi float [ %3689, %3731 ], [ %3929, %4210 ]
  %4229 = phi float [ %3690, %3731 ], [ %3930, %4210 ]
  %4230 = phi float [ %3691, %3731 ], [ %3931, %4210 ]
  %4231 = call float @dx.op.dot3.f32(i32 55, float %4221, float %4222, float %4223, float %4221, float %4222, float %4223)  ; Dot3(ax,ay,az,bx,by,bz)
  %4232 = call float @dx.op.unary.f32(i32 25, float %4231)  ; Rsqrt(value)
  %4233 = fmul fast float %4232, %4221
  %4234 = fmul fast float %4232, %4222
  %4235 = fmul fast float %4232, %4223
  %4236 = fadd fast float %4226, %1133
  %4237 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4238 = call float @dx.op.dot3.f32(i32 55, float %4233, float %4234, float %4235, float %4233, float %4234, float %4235)  ; Dot3(ax,ay,az,bx,by,bz)
  %4239 = call float @dx.op.unary.f32(i32 25, float %4238)  ; Rsqrt(value)
  %4240 = fmul fast float %4239, %4233
  %4241 = fmul fast float %4239, %4234
  %4242 = fmul fast float %4239, %4235
  br label %4243

; <label>:4243                                    ; preds = %4211, %3686
  %4244 = phi float [ %4240, %4211 ], [ %3726, %3686 ]
  %4245 = phi float [ %4241, %4211 ], [ %3727, %3686 ]
  %4246 = phi float [ %4242, %4211 ], [ %3728, %3686 ]
  %4247 = phi float [ %4228, %4211 ], [ %3689, %3686 ]
  %4248 = phi float [ %4229, %4211 ], [ %3690, %3686 ]
  %4249 = phi float [ %4230, %4211 ], [ %3691, %3686 ]
  %4250 = phi float [ %4218, %4211 ], [ %3692, %3686 ]
  %4251 = phi float [ %4219, %4211 ], [ %3693, %3686 ]
  %4252 = phi float [ %4220, %4211 ], [ %3694, %3686 ]
  %4253 = phi float [ %4227, %4211 ], [ %3695, %3686 ]
  %4254 = phi float [ %4237, %4211 ], [ %1133, %3686 ]
  %4255 = phi float [ %4225, %4211 ], [ %3696, %3686 ]
  %4256 = phi float [ %4224, %4211 ], [ %3697, %3686 ]
  %4257 = phi float [ %4217, %4211 ], [ 0.000000e+00, %3686 ]
  %4258 = phi float [ %4216, %4211 ], [ 0.000000e+00, %3686 ]
  %4259 = phi float [ %4212, %4211 ], [ 0.000000e+00, %3686 ]
  %4260 = phi float [ %4214, %4211 ], [ %3700, %3686 ]
  %4261 = phi float [ %4213, %4211 ], [ %1133, %3686 ]
  %4262 = phi float [ %4215, %4211 ], [ %3698, %3686 ]
  %4263 = fadd fast float %4253, 0xBFB99999A0000000
  %4264 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4265 = fmul fast float %4264, 0x3FF1C71C80000000
  %4266 = call float @dx.op.binary.f32(i32 36, float %4253, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4267 = fsub fast float 1.000000e+00, %4265
  %4268 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4269 = fmul fast float %4268, %4247
  %4270 = fmul fast float %4268, %4248
  %4271 = fmul fast float %4268, %4249
  %4272 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4273 = call float @dx.op.unary.f32(i32 7, float %4270)  ; Saturate(value)
  %4274 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4275 = fmul fast float %4265, %4247
  %4276 = fmul fast float %4265, %4248
  %4277 = fmul fast float %4265, %4249
  %4278 = fadd fast float %4275, %4266
  %4279 = fadd fast float %4276, %4266
  %4280 = fadd fast float %4277, %4266
  %4281 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4284 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.i32 %4285, 3
  %4287 = and i32 %4286, 8
  %4288 = icmp ne i32 %4287, 0
  %4289 = call float @dx.op.binary.f32(i32 35, float %4272, float %4247)  ; FMax(a,b)
  %4290 = call float @dx.op.binary.f32(i32 35, float %4273, float %4247)  ; FMax(a,b)
  %4291 = call float @dx.op.binary.f32(i32 35, float %4274, float %4247)  ; FMax(a,b)
  %4292 = call float @dx.op.dot3.f32(i32 55, float %4272, float %4273, float %4274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4293 = select i1 %223, float %4247, float %4272
  %4294 = select i1 %223, float %4292, float %4273
  %4295 = select i1 %223, float 1.000000e+00, float %4274
  %4296 = select i1 %4288, float %4289, float %4293
  %4297 = select i1 %4288, float %4290, float %4294
  %4298 = select i1 %4288, float %4291, float %4295
  %4299 = add i32 %56, 492
  %4300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4299, i32 undef)  ; BufferLoad(srv,index,wot)
  %4301 = extractvalue %dx.types.ResRet.i32 %4300, 0
  %4302 = add i32 %4301, 0
  %4303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4303, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.ResRet.f32 %4304, 1
  %4307 = extractvalue %dx.types.ResRet.f32 %4304, 2
  %4308 = extractvalue %dx.types.ResRet.f32 %4304, 3
  %4309 = fmul fast float %4305, 2.000000e+00
  %4310 = fadd fast float %4309, -1.000000e+00
  %4311 = fmul fast float %4306, 2.000000e+00
  %4312 = fadd fast float %4311, -1.000000e+00
  %4313 = fmul fast float %4310, %77
  %4314 = fmul fast float %4310, %78
  %4315 = fmul fast float %4310, %79
  %4316 = fmul fast float %4312, %125
  %4317 = fmul fast float %4312, %126
  %4318 = fmul fast float %4312, %127
  %4319 = fadd fast float %4313, %4316
  %4320 = fadd fast float %4314, %4317
  %4321 = fadd fast float %4315, %4318
  %4322 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4320, float %4321, float %4319, float %4320, float %4321)  ; Dot3(ax,ay,az,bx,by,bz)
  %4323 = call float @dx.op.unary.f32(i32 25, float %4322)  ; Rsqrt(value)
  %4324 = fmul fast float %4319, %4323
  %4325 = fmul fast float %4320, %4323
  %4326 = fmul fast float %4321, %4323
  %4327 = add i32 %56, 360
  %4328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4327, i32 undef)  ; BufferLoad(srv,index,wot)
  %4329 = extractvalue %dx.types.ResRet.i32 %4328, 0
  %4330 = bitcast i32 %4329 to float
  %4331 = fmul fast float %4330, %4307
  %4332 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4333 = extractvalue %dx.types.ResRet.i32 %4328, 1
  %4334 = bitcast i32 %4333 to float
  %4335 = fmul fast float %4334, %4308
  %4336 = fmul fast float %4335, %4244
  %4337 = fmul fast float %4335, %4245
  %4338 = fmul fast float %4335, %4246
  %4339 = fadd fast float %4336, %4324
  %4340 = fadd fast float %4337, %4325
  %4341 = fadd fast float %4338, %4326
  %4342 = call float @dx.op.dot3.f32(i32 55, float %4339, float %4340, float %4341, float %4339, float %4340, float %4341)  ; Dot3(ax,ay,az,bx,by,bz)
  %4343 = call float @dx.op.unary.f32(i32 25, float %4342)  ; Rsqrt(value)
  %4344 = fmul fast float %4339, %4343
  %4345 = fmul fast float %4340, %4343
  %4346 = fmul fast float %4341, %4343
  %4347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4348 = extractvalue %dx.types.CBufRet.f32 %4347, 0
  %4349 = extractvalue %dx.types.CBufRet.f32 %4347, 1
  %4350 = extractvalue %dx.types.CBufRet.f32 %4347, 2
  %4351 = fadd fast float %4348, %161
  %4352 = fadd fast float %4349, %162
  %4353 = fadd fast float %4350, %163
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.CBufRet.f32 %4354, 1
  %4357 = fsub fast float %4351, %4355
  %4358 = fsub fast float %4352, %4356
  %4359 = fmul fast float %4357, %4357
  %4360 = fmul fast float %4358, %4358
  %4361 = fadd fast float %4359, %4360
  %4362 = call float @dx.op.unary.f32(i32 24, float %4361)  ; Sqrt(value)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4354, 2
  %4364 = fcmp fast olt float %4362, %4363
  br i1 %4364, label %4365, label %4432

; <label>:4365                                    ; preds = %4243
  %4366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.f32 %4366, 0
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 0
  %4372 = extractvalue %dx.types.CBufRet.f32 %4366, 1
  %4373 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4374 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4375 = extractvalue %dx.types.CBufRet.f32 %4366, 3
  %4376 = extractvalue %dx.types.CBufRet.f32 %4368, 3
  %4377 = extractvalue %dx.types.CBufRet.f32 %4370, 3
  %4378 = fadd fast float %4375, %4351
  %4379 = fadd fast float %4376, %4352
  %4380 = fadd fast float %4377, %4353
  %4381 = fmul fast float %4378, %4367
  %4382 = call float @dx.op.tertiary.f32(i32 46, float %4379, float %4369, float %4381)  ; FMad(a,b,c)
  %4383 = call float @dx.op.tertiary.f32(i32 46, float %4380, float %4371, float %4382)  ; FMad(a,b,c)
  %4384 = fmul fast float %4378, %4372
  %4385 = call float @dx.op.tertiary.f32(i32 46, float %4379, float %4373, float %4384)  ; FMad(a,b,c)
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4380, float %4374, float %4385)  ; FMad(a,b,c)
  %4387 = fsub fast float %4383, %4375
  %4388 = fsub fast float %4386, %4376
  %4389 = fsub fast float %4387, %4355
  %4390 = fadd fast float %4389, %4363
  %4391 = fsub fast float %4388, %4356
  %4392 = fadd fast float %4391, %4363
  %4393 = extractvalue %dx.types.CBufRet.f32 %4354, 3
  %4394 = fmul fast float %4390, %4393
  %4395 = fmul fast float %4392, %4393
  %4396 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4397 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4398 = fsub fast float 1.000000e+00, %4396
  %4399 = fsub fast float 1.000000e+00, %4397
  %4400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4398, float %4399, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = fcmp fast ugt float %4401, 0.000000e+00
  br i1 %4402, label %4403, label %4706

; <label>:4403                                    ; preds = %4365
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 2
  %4406 = fmul fast float %4405, %4401
  %4407 = extractvalue %dx.types.CBufRet.f32 %4404, 3
  %4408 = fadd fast float %4407, %4406
  %4409 = extractvalue %dx.types.CBufRet.f32 %4370, 2
  %4410 = fadd fast float %4408, %4377
  %4411 = fmul fast float %4383, %4371
  %4412 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4374, float %4411)  ; FMad(a,b,c)
  %4413 = call float @dx.op.tertiary.f32(i32 46, float %4410, float %4409, float %4412)  ; FMad(a,b,c)
  %4414 = fsub fast float %4413, %4377
  %4415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.f32 %4415, 2
  %4417 = fsub fast float %4414, %4416
  %4418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4398, float %4399, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4398, float %4399, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.ResRet.f32 %4422, 2
  %4426 = fadd fast float %4423, %4419
  %4427 = fmul fast float %4426, 0x3F847AE140000000
  %4428 = fadd fast float %4424, %4420
  %4429 = fmul fast float %4428, 0x3F847AE140000000
  %4430 = fadd fast float %4425, %4421
  %4431 = fmul fast float %4430, 0x3F847AE140000000
  br label %4706

; <label>:4432                                    ; preds = %4243
  %4433 = and i32 %199, 1
  %4434 = icmp eq i32 %4433, 0
  br i1 %4434, label %4706, label %4435

; <label>:4435                                    ; preds = %4432
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 0
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 0
  %4442 = extractvalue %dx.types.CBufRet.f32 %4436, 1
  %4443 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4444 = extractvalue %dx.types.CBufRet.f32 %4440, 1
  %4445 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4446 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4447 = extractvalue %dx.types.CBufRet.f32 %4440, 3
  %4448 = fadd fast float %4445, %4351
  %4449 = fadd fast float %4446, %4352
  %4450 = fadd fast float %4447, %4353
  %4451 = fmul fast float %4448, %4437
  %4452 = call float @dx.op.tertiary.f32(i32 46, float %4449, float %4439, float %4451)  ; FMad(a,b,c)
  %4453 = call float @dx.op.tertiary.f32(i32 46, float %4450, float %4441, float %4452)  ; FMad(a,b,c)
  %4454 = fmul fast float %4448, %4442
  %4455 = call float @dx.op.tertiary.f32(i32 46, float %4449, float %4443, float %4454)  ; FMad(a,b,c)
  %4456 = call float @dx.op.tertiary.f32(i32 46, float %4450, float %4444, float %4455)  ; FMad(a,b,c)
  %4457 = fsub fast float %4453, %4445
  %4458 = fsub fast float %4456, %4446
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4461 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4462 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4463 = extractvalue %dx.types.CBufRet.f32 %4459, 3
  %4464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.f32 %4464, 3
  %4466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.i32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.i32 %4466, 1
  %4469 = udiv i32 %4468, %4467
  %4470 = fsub fast float %4457, %4460
  %4471 = fsub fast float %4458, %4461
  %4472 = call float @dx.op.binary.f32(i32 35, float %4470, float 0.000000e+00)  ; FMax(a,b)
  %4473 = call float @dx.op.binary.f32(i32 35, float %4471, float 0.000000e+00)  ; FMax(a,b)
  %4474 = call float @dx.op.binary.f32(i32 36, float %4472, float %4462)  ; FMin(a,b)
  %4475 = call float @dx.op.binary.f32(i32 36, float %4473, float %4463)  ; FMin(a,b)
  %4476 = add i32 %4467, -1
  %4477 = add i32 %4469, -1
  %4478 = fmul fast float %4474, %4465
  %4479 = fmul fast float %4475, %4465
  %4480 = fptoui float %4478 to i32
  %4481 = fptoui float %4479 to i32
  %4482 = call i32 @dx.op.binary.i32(i32 40, i32 %4480, i32 %4476)  ; UMin(a,b)
  %4483 = call i32 @dx.op.binary.i32(i32 40, i32 %4481, i32 %4477)  ; UMin(a,b)
  %4484 = mul i32 %4483, %4467
  %4485 = add i32 %4484, %4482
  %4486 = shl i32 %4485, 2
  %4487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4486, i32 undef)  ; BufferLoad(srv,index,wot)
  %4488 = extractvalue %dx.types.ResRet.i32 %4487, 0
  %4489 = icmp eq i32 %4488, -1
  br i1 %4489, label %4706, label %4490

; <label>:4490                                    ; preds = %4435
  %4491 = mul i32 %4488, 148
  %4492 = add i32 %4491, 4
  %4493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4492, i32 undef)  ; BufferLoad(srv,index,wot)
  %4494 = extractvalue %dx.types.ResRet.f32 %4493, 0
  %4495 = add i32 %4491, 8
  %4496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4495, i32 undef)  ; BufferLoad(srv,index,wot)
  %4497 = extractvalue %dx.types.ResRet.f32 %4496, 0
  %4498 = add i32 %4491, 36
  %4499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = add i32 %4491, 60
  %4502 = add i32 %4491, 92
  %4503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4502, i32 undef)  ; BufferLoad(srv,index,wot)
  %4504 = extractvalue %dx.types.ResRet.i32 %4503, 0
  %4505 = add i32 %4491, 116
  %4506 = fsub fast float %4457, %4494
  %4507 = fsub fast float %4458, %4497
  %4508 = fmul fast float %4465, %4506
  %4509 = fmul fast float %4465, %4507
  %4510 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4511 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4512 = fsub fast float 1.000000e+00, %4511
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 2
  %4515 = call float @dx.op.unary.f32(i32 83, float %4510)  ; DerivCoarseX(value)
  %4516 = call float @dx.op.unary.f32(i32 83, float %4512)  ; DerivCoarseX(value)
  %4517 = call float @dx.op.unary.f32(i32 84, float %4510)  ; DerivCoarseY(value)
  %4518 = call float @dx.op.unary.f32(i32 84, float %4512)  ; DerivCoarseY(value)
  %4519 = fmul fast float %4515, %4514
  %4520 = fmul fast float %4516, %4514
  %4521 = fmul fast float %4517, %4514
  %4522 = fmul fast float %4518, %4514
  %4523 = call float @dx.op.dot2.f32(i32 54, float %4521, float %4522, float %4521, float %4522)  ; Dot2(ax,ay,bx,by)
  %4524 = call float @dx.op.dot2.f32(i32 54, float %4519, float %4520, float %4519, float %4520)  ; Dot2(ax,ay,bx,by)
  %4525 = call float @dx.op.binary.f32(i32 35, float %4524, float %4523)  ; FMax(a,b)
  %4526 = call float @dx.op.unary.f32(i32 23, float %4525)  ; Log(value)
  %4527 = fmul fast float %4526, 5.000000e-01
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4530 = fadd fast float %4529, %4527
  %4531 = call float @dx.op.binary.f32(i32 35, float %4530, float 0.000000e+00)  ; FMax(a,b)
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 3
  %4534 = fadd fast float %4533, %4531
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 3
  %4537 = fadd fast float %4534, %4536
  %4538 = add i32 %4504, 0
  %4539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4538, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4540 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4539, i32 0)  ; GetDimensions(handle,mipLevel)
  %4541 = extractvalue %dx.types.Dimensions %4540, 0
  %4542 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4541)  ; FirstbitLo(value)
  %4543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.i32 %4543, 1
  %4545 = sub nsw i32 %4544, %4542
  %4546 = sitofp i32 %4545 to float
  %4547 = fsub fast float %4537, %4546
  %4548 = call float @dx.op.binary.f32(i32 35, float %4547, float 0.000000e+00)  ; FMax(a,b)
  %4549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4539, %dx.types.Handle %46, float %4510, float %4512, float %4500, float undef, i32 0, i32 0, i32 undef, float %4548)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = fcmp ule float %4550, 0x3FE0101020000000
  %4552 = extractvalue %dx.types.CBufRet.i32 %4543, 0
  %4553 = and i32 %4552, 128
  %4554 = icmp ne i32 %4553, 0
  %4555 = and i1 %4551, %4554
  br i1 %4555, label %4706, label %4556

; <label>:4556                                    ; preds = %4490
  %4557 = add i32 %4491, 20
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = add i32 %4491, 24
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4563 = add i32 %4491, 40
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = add i32 %4491, 96
  %4567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.i32 %4567, 0
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 2
  %4571 = fmul fast float %4570, %4510
  %4572 = fmul fast float %4570, %4512
  %4573 = extractvalue %dx.types.CBufRet.f32 %4569, 3
  %4574 = fadd fast float %4571, %4573
  %4575 = fadd fast float %4572, %4573
  %4576 = add i32 %4568, 0
  %4577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4576, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4578 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4577, i32 0)  ; GetDimensions(handle,mipLevel)
  %4579 = extractvalue %dx.types.Dimensions %4578, 0
  %4580 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4579)  ; FirstbitLo(value)
  %4581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.i32 %4581, 1
  %4583 = sub nsw i32 %4582, %4580
  %4584 = sitofp i32 %4583 to float
  %4585 = fsub fast float %4534, %4584
  %4586 = call float @dx.op.binary.f32(i32 35, float %4585, float 0.000000e+00)  ; FMax(a,b)
  %4587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4577, %dx.types.Handle %46, float %4574, float %4575, float %4565, float undef, i32 0, i32 0, i32 undef, float %4586)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = fmul fast float %4588, %4559
  %4590 = fadd fast float %4589, %4562
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.CBufRet.f32 %4591, 1
  %4594 = extractvalue %dx.types.CBufRet.f32 %4591, 2
  %4595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.f32 %4595, 3
  %4597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4598 = extractvalue %dx.types.CBufRet.f32 %4597, 3
  %4599 = extractvalue %dx.types.CBufRet.f32 %4591, 3
  %4600 = fadd fast float %4596, %4457
  %4601 = fadd fast float %4598, %4458
  %4602 = fadd fast float %4590, %4599
  %4603 = fmul fast float %4600, %4592
  %4604 = call float @dx.op.tertiary.f32(i32 46, float %4601, float %4593, float %4603)  ; FMad(a,b,c)
  %4605 = call float @dx.op.tertiary.f32(i32 46, float %4602, float %4594, float %4604)  ; FMad(a,b,c)
  %4606 = fsub fast float %4605, %4599
  %4607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.f32 %4607, 2
  %4609 = fsub fast float %4606, %4608
  %4610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.i32 %4610, 0
  %4612 = call i32 @dx.op.binary.i32(i32 40, i32 %4488, i32 %4611)  ; UMin(a,b)
  %4613 = mul i32 %4612, 36
  %4614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.i32 %4614, 0
  %4616 = add i32 %4613, 4
  %4617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.f32 %4617, 0
  %4619 = fmul fast float %4618, %4510
  %4620 = fmul fast float %4618, %4512
  %4621 = extractvalue %dx.types.CBufRet.f32 %4617, 1
  %4622 = fadd fast float %4619, %4621
  %4623 = fadd fast float %4620, %4621
  %4624 = icmp eq i32 %4615, 0
  br i1 %4624, label %4693, label %4625

; <label>:4625                                    ; preds = %4556
  br label %4626

; <label>:4626                                    ; preds = %4683, %4625
  %4627 = phi float [ %4684, %4683 ], [ 0.000000e+00, %4625 ]
  %4628 = phi float [ %4685, %4683 ], [ 0.000000e+00, %4625 ]
  %4629 = phi float [ %4686, %4683 ], [ 0.000000e+00, %4625 ]
  %4630 = phi float [ %4687, %4683 ], [ 0.000000e+00, %4625 ]
  %4631 = phi float [ %4688, %4683 ], [ 0.000000e+00, %4625 ]
  %4632 = phi float [ %4689, %4683 ], [ 0.000000e+00, %4625 ]
  %4633 = phi i32 [ %4690, %4683 ], [ 0, %4625 ]
  %4634 = shl i32 %4633, 2
  %4635 = add i32 %4501, %4634
  %4636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4635, i32 undef)  ; BufferLoad(srv,index,wot)
  %4637 = extractvalue %dx.types.ResRet.f32 %4636, 0
  %4638 = add i32 %4505, %4634
  %4639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4638, i32 undef)  ; BufferLoad(srv,index,wot)
  %4640 = extractvalue %dx.types.ResRet.i32 %4639, 0
  %4641 = add i32 %4640, 0
  %4642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4641, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4643 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4642, i32 0)  ; GetDimensions(handle,mipLevel)
  %4644 = extractvalue %dx.types.Dimensions %4643, 0
  %4645 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4644)  ; FirstbitLo(value)
  %4646 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.i32 %4646, 1
  %4648 = sub nsw i32 %4647, %4645
  %4649 = sitofp i32 %4648 to float
  %4650 = fsub fast float %4534, %4649
  %4651 = call float @dx.op.binary.f32(i32 35, float %4650, float 0.000000e+00)  ; FMax(a,b)
  %4652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4642, %dx.types.Handle %46, float %4622, float %4623, float %4637, float undef, i32 0, i32 0, i32 undef, float %4651)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = fcmp fast ogt float %4653, 0.000000e+00
  br i1 %4654, label %4655, label %4683

; <label>:4655                                    ; preds = %4626
  %4656 = add i32 %4616, %4634
  %4657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4656, i32 undef)  ; BufferLoad(srv,index,wot)
  %4658 = extractvalue %dx.types.ResRet.i32 %4657, 0
  %4659 = and i32 %4658, 32767
  %4660 = mul nuw nsw i32 %4659, 928
  %4661 = add nuw nsw i32 %4660, 48
  %4662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.ResRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4662, 2
  %4666 = add nuw nsw i32 %4660, 60
  %4667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = extractvalue %dx.types.ResRet.f32 %4667, 1
  %4670 = extractvalue %dx.types.ResRet.f32 %4667, 2
  %4671 = fmul fast float %4663, %4653
  %4672 = fmul fast float %4664, %4653
  %4673 = fmul fast float %4665, %4653
  %4674 = fadd fast float %4671, %4627
  %4675 = fadd fast float %4672, %4628
  %4676 = fadd fast float %4673, %4629
  %4677 = fmul fast float %4668, %4653
  %4678 = fmul fast float %4669, %4653
  %4679 = fmul fast float %4670, %4653
  %4680 = fadd fast float %4677, %4630
  %4681 = fadd fast float %4678, %4631
  %4682 = fadd fast float %4679, %4632
  br label %4683

; <label>:4683                                    ; preds = %4655, %4626
  %4684 = phi float [ %4674, %4655 ], [ %4627, %4626 ]
  %4685 = phi float [ %4675, %4655 ], [ %4628, %4626 ]
  %4686 = phi float [ %4676, %4655 ], [ %4629, %4626 ]
  %4687 = phi float [ %4680, %4655 ], [ %4630, %4626 ]
  %4688 = phi float [ %4681, %4655 ], [ %4631, %4626 ]
  %4689 = phi float [ %4682, %4655 ], [ %4632, %4626 ]
  %4690 = add nuw i32 %4633, 1
  %4691 = icmp eq i32 %4690, %4615
  br i1 %4691, label %4692, label %4626

; <label>:4692                                    ; preds = %4683
  br label %4693

; <label>:4693                                    ; preds = %4692, %4556
  %4694 = phi float [ 0.000000e+00, %4556 ], [ %4684, %4692 ]
  %4695 = phi float [ 0.000000e+00, %4556 ], [ %4685, %4692 ]
  %4696 = phi float [ 0.000000e+00, %4556 ], [ %4686, %4692 ]
  %4697 = phi float [ 0.000000e+00, %4556 ], [ %4687, %4692 ]
  %4698 = phi float [ 0.000000e+00, %4556 ], [ %4688, %4692 ]
  %4699 = phi float [ 0.000000e+00, %4556 ], [ %4689, %4692 ]
  %4700 = fadd fast float %4697, %4694
  %4701 = fmul fast float %4700, 0x3F847AE140000000
  %4702 = fadd fast float %4698, %4695
  %4703 = fmul fast float %4702, 0x3F847AE140000000
  %4704 = fadd fast float %4699, %4696
  %4705 = fmul fast float %4704, 0x3F847AE140000000
  br label %4706

; <label>:4706                                    ; preds = %4693, %4490, %4435, %4432, %4403, %4365
  %4707 = phi float [ %4417, %4403 ], [ -1.310720e+05, %4365 ], [ %4609, %4693 ], [ -1.310720e+05, %4435 ], [ -1.310720e+05, %4490 ], [ -1.310720e+05, %4432 ]
  %4708 = phi float [ %4427, %4403 ], [ 0.000000e+00, %4365 ], [ %4701, %4693 ], [ 0.000000e+00, %4435 ], [ 0.000000e+00, %4490 ], [ 0.000000e+00, %4432 ]
  %4709 = phi float [ %4429, %4403 ], [ 0.000000e+00, %4365 ], [ %4703, %4693 ], [ 0.000000e+00, %4435 ], [ 0.000000e+00, %4490 ], [ 0.000000e+00, %4432 ]
  %4710 = phi float [ %4431, %4403 ], [ 0.000000e+00, %4365 ], [ %4705, %4693 ], [ 0.000000e+00, %4435 ], [ 0.000000e+00, %4490 ], [ 0.000000e+00, %4432 ]
  %4711 = phi i1 [ true, %4403 ], [ false, %4365 ], [ true, %4693 ], [ false, %4435 ], [ false, %4490 ], [ false, %4432 ]
  %4712 = and i32 %199, 3
  %4713 = icmp eq i32 %4712, 1
  %4714 = select i1 %4713, float 1.000000e+00, float 0.000000e+00
  %4715 = fsub fast float %4707, %163
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = select i1 %4711, float %4716, float 1.000000e+00
  %4718 = fmul fast float %4717, %4714
  %4719 = icmp eq i32 %4712, 3
  %4720 = select i1 %4719, float 1.000000e+00, float %4718
  %4721 = call float @dx.op.binary.f32(i32 35, float %4259, float %4720)  ; FMax(a,b)
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fcmp fast une float %4722, 0.000000e+00
  %4724 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = call float @dx.op.unary.f32(i32 25, float %4724)  ; Rsqrt(value)
  br i1 %4723, label %4733, label %4726

; <label>:4726                                    ; preds = %4706
  %4727 = fmul fast float %4725, %161
  %4728 = fmul fast float %4725, %162
  %4729 = fmul fast float %4725, %163
  %4730 = fsub fast float -0.000000e+00, %4727
  %4731 = fsub fast float -0.000000e+00, %4728
  %4732 = fsub fast float -0.000000e+00, %4729
  br label %4901

; <label>:4733                                    ; preds = %4706
  %4734 = fmul fast float %161, %4725
  %4735 = fsub fast float -0.000000e+00, %4734
  %4736 = fmul fast float %162, %4725
  %4737 = fsub fast float -0.000000e+00, %4736
  %4738 = fmul fast float %163, %4725
  %4739 = fsub fast float -0.000000e+00, %4738
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4735, float %4737, float %4739, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = fmul fast float %4722, 2.500000e+00
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = fmul fast float %4722, 0x4013FFFFE0000000
  %4744 = fadd fast float %4743, 0xBFFFFFFFE0000000
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4722, 0x4004000020000000
  %4747 = fadd fast float %4746, 0xBFF8000040000000
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4750 = fmul fast float %4263, 1.000000e+01
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fmul fast float %4751, 2.000000e+00
  %4753 = fsub fast float 3.000000e+00, %4752
  %4754 = fmul fast float %4751, %4751
  %4755 = fmul fast float %4754, %4753
  %4756 = fsub fast float 1.000000e+00, %4755
  %4757 = fsub fast float 0x3FE3333340000000, %4284
  %4758 = fmul fast float %4757, 0x400AAAAAA0000000
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fmul fast float %4756, %4759
  %4761 = fmul fast float %4296, 0x3FEA2B8620000000
  %4762 = fmul fast float %4297, 0x3FEA2B8620000000
  %4763 = fmul fast float %4298, 0x3FEA2B8620000000
  %4764 = fadd fast float %4761, 0x3FC81DFBA0000000
  %4765 = fmul fast float %4764, %4296
  %4766 = fadd fast float %4765, 0x3F910E6020000000
  %4767 = fadd fast float %4762, 0x3FC81DFBA0000000
  %4768 = fmul fast float %4767, %4297
  %4769 = fadd fast float %4768, 0x3F910E6020000000
  %4770 = fadd fast float %4763, 0x3FC81DFBA0000000
  %4771 = fmul fast float %4770, %4298
  %4772 = fadd fast float %4771, 0x3F910E6020000000
  %4773 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4774 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4775 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4776 = fsub fast float %4773, %4296
  %4777 = fsub fast float %4774, %4297
  %4778 = fsub fast float %4775, %4298
  %4779 = fmul fast float %4776, %4749
  %4780 = fmul fast float %4779, %4760
  %4781 = fmul fast float %4777, %4749
  %4782 = fmul fast float %4781, %4760
  %4783 = fmul fast float %4778, %4749
  %4784 = fmul fast float %4783, %4760
  %4785 = fadd fast float %4780, %4296
  %4786 = fadd fast float %4782, %4297
  %4787 = fadd fast float %4784, %4298
  %4788 = fmul fast float %4256, %4256
  %4789 = fmul fast float %4788, %4788
  %4790 = fadd fast float %4745, 1.000000e+00
  %4791 = fsub fast float %4790, %4760
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = call float @dx.op.dot3.f32(i32 55, float %111, float %113, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = fsub fast float 1.000000e+00, %4789
  %4796 = call float @dx.op.binary.f32(i32 36, float %4792, float %4795)  ; FMin(a,b)
  %4797 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4796, float %4797)  ; FMax(a,b)
  %4799 = fadd fast float %4794, 0xBFE4CCCCC0000000
  %4800 = fmul fast float %4799, 0x4006DB6DA0000000
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = fmul fast float %4801, 2.000000e+00
  %4803 = fsub fast float 3.000000e+00, %4802
  %4804 = bitcast float %4281 to i32
  %4805 = ashr i32 %4804, 1
  %4806 = add nsw i32 %4805, 532487669
  %4807 = bitcast i32 %4806 to float
  %4808 = fsub fast float 1.000000e+00, %4807
  %4809 = bitcast float %4808 to i32
  %4810 = sub nsw i32 2129859010, %4809
  %4811 = bitcast i32 %4810 to float
  %4812 = fmul fast float %4811, 2.000000e+00
  %4813 = bitcast float %4282 to i32
  %4814 = ashr i32 %4813, 1
  %4815 = add nsw i32 %4814, 532487669
  %4816 = bitcast i32 %4815 to float
  %4817 = fsub fast float 1.000000e+00, %4816
  %4818 = bitcast float %4817 to i32
  %4819 = sub nsw i32 2129859010, %4818
  %4820 = bitcast i32 %4819 to float
  %4821 = fmul fast float %4820, 2.000000e+00
  %4822 = bitcast float %4283 to i32
  %4823 = ashr i32 %4822, 1
  %4824 = add nsw i32 %4823, 532487669
  %4825 = bitcast i32 %4824 to float
  %4826 = fsub fast float 1.000000e+00, %4825
  %4827 = bitcast float %4826 to i32
  %4828 = sub nsw i32 2129859010, %4827
  %4829 = bitcast i32 %4828 to float
  %4830 = fmul fast float %4829, 2.000000e+00
  %4831 = fsub fast float 0x4002A9FBE0000000, %4812
  %4832 = fadd fast float %4812, 0x3FD54FDF00000000
  %4833 = bitcast float %4832 to i32
  %4834 = sub nsw i32 2129859010, %4833
  %4835 = bitcast i32 %4834 to float
  %4836 = fmul fast float %4835, %4831
  %4837 = fmul fast float %4836, %4836
  %4838 = fsub fast float 0x4002A9FBE0000000, %4821
  %4839 = fadd fast float %4821, 0x3FD54FDF00000000
  %4840 = bitcast float %4839 to i32
  %4841 = sub nsw i32 2129859010, %4840
  %4842 = bitcast i32 %4841 to float
  %4843 = fmul fast float %4842, %4838
  %4844 = fmul fast float %4843, %4843
  %4845 = fsub fast float 0x4002A9FBE0000000, %4830
  %4846 = fadd fast float %4830, 0x3FD54FDF00000000
  %4847 = bitcast float %4846 to i32
  %4848 = sub nsw i32 2129859010, %4847
  %4849 = bitcast i32 %4848 to float
  %4850 = fmul fast float %4849, %4845
  %4851 = fmul fast float %4850, %4850
  %4852 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4837)  ; FMax(a,b)
  %4853 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4844)  ; FMax(a,b)
  %4854 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4851)  ; FMax(a,b)
  %4855 = fsub fast float 1.000000e+00, %4740
  %4856 = fadd fast float %4855, %4756
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fsub fast float 1.000000e+00, %4720
  %4859 = fmul fast float %4798, %4858
  %4860 = fmul fast float %4801, %4801
  %4861 = fmul fast float %4860, %4859
  %4862 = fmul fast float %4861, %4803
  %4863 = fmul fast float %4858, 0xBFE99999A0000000
  %4864 = fmul fast float %4863, %4749
  %4865 = fmul fast float %4864, %4760
  %4866 = fadd fast float %4865, 1.000000e+00
  %4867 = fadd fast float %4284, -1.000000e+00
  %4868 = fmul fast float %4866, %4867
  %4869 = fadd fast float %4868, 1.000000e+00
  %4870 = fsub fast float %4852, %4281
  %4871 = fsub fast float %4853, %4282
  %4872 = fsub fast float %4854, %4283
  %4873 = fmul fast float %4862, %4870
  %4874 = fmul fast float %4862, %4871
  %4875 = fmul fast float %4862, %4872
  %4876 = fadd fast float %4873, %4281
  %4877 = fadd fast float %4874, %4282
  %4878 = fadd fast float %4875, %4283
  %4879 = fsub fast float %111, %4244
  %4880 = fsub fast float %113, %4245
  %4881 = fsub fast float %115, %4246
  %4882 = fmul fast float %4862, %4879
  %4883 = fmul fast float %4862, %4880
  %4884 = fmul fast float %4862, %4881
  %4885 = fadd fast float %4882, %4244
  %4886 = fadd fast float %4883, %4245
  %4887 = fadd fast float %4884, %4246
  %4888 = fmul fast float %4862, %4857
  %4889 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = fmul fast float %4888, %4890
  %4892 = fadd fast float %4891, %4889
  %4893 = fsub fast float 1.000000e+00, %4256
  %4894 = fmul fast float %4862, %4893
  %4895 = fadd fast float %4894, %4256
  %4896 = call float @dx.op.dot3.f32(i32 55, float %4885, float %4886, float %4887, float %4885, float %4886, float %4887)  ; Dot3(ax,ay,az,bx,by,bz)
  %4897 = call float @dx.op.unary.f32(i32 25, float %4896)  ; Rsqrt(value)
  %4898 = fmul fast float %4885, %4897
  %4899 = fmul fast float %4886, %4897
  %4900 = fmul fast float %4887, %4897
  br label %4901

; <label>:4901                                    ; preds = %4733, %4726
  %4902 = phi float [ %4732, %4726 ], [ %4739, %4733 ]
  %4903 = phi float [ %4731, %4726 ], [ %4737, %4733 ]
  %4904 = phi float [ %4730, %4726 ], [ %4735, %4733 ]
  %4905 = phi float [ %4729, %4726 ], [ %4738, %4733 ]
  %4906 = phi float [ %4728, %4726 ], [ %4736, %4733 ]
  %4907 = phi float [ %4727, %4726 ], [ %4734, %4733 ]
  %4908 = phi float [ %4244, %4726 ], [ %4898, %4733 ]
  %4909 = phi float [ %4245, %4726 ], [ %4899, %4733 ]
  %4910 = phi float [ %4246, %4726 ], [ %4900, %4733 ]
  %4911 = phi float [ %4296, %4726 ], [ %4785, %4733 ]
  %4912 = phi float [ %4297, %4726 ], [ %4786, %4733 ]
  %4913 = phi float [ %4298, %4726 ], [ %4787, %4733 ]
  %4914 = phi float [ %4281, %4726 ], [ %4876, %4733 ]
  %4915 = phi float [ %4282, %4726 ], [ %4877, %4733 ]
  %4916 = phi float [ %4283, %4726 ], [ %4878, %4733 ]
  %4917 = phi float [ %4284, %4726 ], [ %4892, %4733 ]
  %4918 = phi float [ %4256, %4726 ], [ %4895, %4733 ]
  %4919 = fsub fast float -0.000000e+00, %163
  %4920 = select i1 %223, float 0.000000e+00, float %4916
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4908, float %4909, float %4910, float %4904, float %4903, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4906, %4346
  %4924 = fmul fast float %4905, %4345
  %4925 = fsub fast float %4923, %4924
  %4926 = fmul fast float %4905, %4344
  %4927 = fmul fast float %4907, %4346
  %4928 = fsub fast float %4926, %4927
  %4929 = fmul fast float %4907, %4345
  %4930 = fmul fast float %4906, %4344
  %4931 = fsub fast float %4929, %4930
  %4932 = fmul fast float %4928, %4346
  %4933 = fmul fast float %4931, %4345
  %4934 = fmul fast float %4931, %4344
  %4935 = fmul fast float %4925, %4346
  %4936 = fmul fast float %4925, %4345
  %4937 = fmul fast float %4928, %4344
  %4938 = fsub fast float -0.000000e+00, %4908
  %4939 = fsub fast float %4938, %4933
  %4940 = fadd fast float %4939, %4932
  %4941 = fsub fast float -0.000000e+00, %4909
  %4942 = fsub fast float %4941, %4935
  %4943 = fadd fast float %4942, %4934
  %4944 = fsub fast float -0.000000e+00, %4910
  %4945 = fsub fast float %4944, %4937
  %4946 = fadd fast float %4945, %4936
  %4947 = fmul fast float %4940, %4332
  %4948 = fmul fast float %4943, %4332
  %4949 = fmul fast float %4946, %4332
  %4950 = fadd fast float %4947, %4908
  %4951 = fadd fast float %4948, %4909
  %4952 = fadd fast float %4949, %4910
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4950, float %4951, float %4952, float %4950, float %4951, float %4952)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = call float @dx.op.unary.f32(i32 25, float %4953)  ; Rsqrt(value)
  %4955 = fmul fast float %4950, %4954
  %4956 = fmul fast float %4951, %4954
  %4957 = fmul fast float %4952, %4954
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4906, float %4905, float %4955, float %4956, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = fmul fast float %4958, 2.000000e+00
  %4960 = fmul fast float %4955, %4959
  %4961 = fmul fast float %4956, %4959
  %4962 = fmul fast float %4957, %4959
  %4963 = fsub fast float %4907, %4960
  %4964 = fsub fast float %4906, %4961
  %4965 = fsub fast float %4905, %4962
  %4966 = call float @dx.op.binary.f32(i32 36, float %4918, float 1.000000e+00)  ; FMin(a,b)
  %4967 = fsub fast float 1.000000e+00, %4918
  %4968 = bitcast float %4967 to i32
  %4969 = sub nsw i32 2129859010, %4968
  %4970 = bitcast i32 %4969 to float
  %4971 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %4972 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = fcmp fast oeq float %4972, 0.000000e+00
  %4974 = fcmp fast oeq float %4971, 0.000000e+00
  %4975 = or i1 %4974, %4973
  br i1 %4975, label %5005, label %4976

; <label>:4976                                    ; preds = %4901
  %4977 = fsub fast float -0.000000e+00, %76
  %4978 = fsub fast float -0.000000e+00, %74
  %4979 = call float @dx.op.unary.f32(i32 24, float %4972)  ; Sqrt(value)
  %4980 = fdiv fast float %4979, %4971
  %4981 = fcmp fast ogt float %4980, 0x3FFB6F8900000000
  %4982 = select i1 %4981, float 0x3FFB6F8900000000, float %4980
  %4983 = fmul fast float %4982, 0x3FE8A23460000000
  %4984 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4985 = call float @dx.op.binary.f32(i32 35, float %4982, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4986 = fmul fast float %4984, %4971
  %4987 = fmul fast float %4985, 0x3FF279A740000000
  %4988 = fadd fast float %4987, -1.000000e+00
  %4989 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4978, float %75, float %4977, float %4978, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = call float @dx.op.unary.f32(i32 25, float %4989)  ; Rsqrt(value)
  %4991 = fmul fast float %4990, %4977
  %4992 = fmul fast float %4990, %4978
  %4993 = fmul fast float %4990, %75
  %4994 = fmul fast float %4988, %4988
  %4995 = fsub fast float 1.000000e+00, %4994
  %4996 = fmul fast float %4985, 0x40005F8BE0000000
  %4997 = fsub fast float 0x400C5BF8A0000000, %4996
  %4998 = fdiv fast float %4986, %4997
  %4999 = fmul fast float %4998, 0x3FEE31C3C0000000
  %5000 = fmul fast float %4999, %4995
  %5001 = fmul fast float %4985, 0x3FDACB7480000000
  %5002 = fadd fast float %5001, 0xBFD7347680000000
  %5003 = fmul fast float %5002, %4998
  %5004 = fmul fast float %5003, %4995
  br label %5005

; <label>:5005                                    ; preds = %4976, %4901
  %5006 = phi float [ %4991, %4976 ], [ 0.000000e+00, %4901 ]
  %5007 = phi float [ %4992, %4976 ], [ 0.000000e+00, %4901 ]
  %5008 = phi float [ %4993, %4976 ], [ 0.000000e+00, %4901 ]
  %5009 = phi float [ %5000, %4976 ], [ 0.000000e+00, %4901 ]
  %5010 = phi float [ %5004, %4976 ], [ 0.000000e+00, %4901 ]
  %5011 = call float @dx.op.dot3.f32(i32 55, float %5006, float %5007, float %5008, float %4908, float %4909, float %4910)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = fmul fast float %5011, %5011
  %5013 = fmul fast float %5012, 0x3FEE471020000000
  %5014 = fadd fast float %5013, 0xBFD42F6020000000
  %5015 = fmul fast float %4971, 0x3FD20DD760000000
  %5016 = fmul fast float %5014, %5010
  %5017 = fmul fast float %5009, 0x3FDF454380000000
  %5018 = fmul fast float %5017, %5011
  %5019 = fadd fast float %5018, %5015
  %5020 = fadd fast float %5019, %5016
  %5021 = call float @dx.op.dot3.f32(i32 55, float %5006, float %5007, float %5008, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %5022 = fmul fast float %5021, 0x3FDF454380000000
  %5023 = fmul fast float %5021, %5021
  %5024 = fmul fast float %5023, 0x3FEE471020000000
  %5025 = fadd fast float %5024, 0xBFD42F6020000000
  %5026 = call float @dx.op.dot3.f32(i32 55, float %4971, float %5009, float %5010, float 0x3FD20DD760000000, float %5022, float %5025)  ; Dot3(ax,ay,az,bx,by,bz)
  %5027 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5028 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5029 = fcmp fast oeq float %5028, 0.000000e+00
  %5030 = fcmp fast oeq float %5027, 0.000000e+00
  %5031 = or i1 %5030, %5029
  br i1 %5031, label %5061, label %5032

; <label>:5032                                    ; preds = %5005
  %5033 = fsub fast float -0.000000e+00, %72
  %5034 = fsub fast float -0.000000e+00, %70
  %5035 = call float @dx.op.unary.f32(i32 24, float %5028)  ; Sqrt(value)
  %5036 = fdiv fast float %5035, %5027
  %5037 = fcmp fast ogt float %5036, 0x3FFB6F8900000000
  %5038 = select i1 %5037, float 0x3FFB6F8900000000, float %5036
  %5039 = fmul fast float %5038, 0x3FE8A23460000000
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = call float @dx.op.binary.f32(i32 35, float %5038, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5042 = fmul fast float %5040, %5027
  %5043 = fmul fast float %5041, 0x3FF279A740000000
  %5044 = fadd fast float %5043, -1.000000e+00
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5034, float %71, float %5033, float %5034, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 25, float %5045)  ; Rsqrt(value)
  %5047 = fmul fast float %5046, %5033
  %5048 = fmul fast float %5046, %5034
  %5049 = fmul fast float %5046, %71
  %5050 = fmul fast float %5044, %5044
  %5051 = fsub fast float 1.000000e+00, %5050
  %5052 = fmul fast float %5041, 0x40005F8BE0000000
  %5053 = fsub fast float 0x400C5BF8A0000000, %5052
  %5054 = fdiv fast float %5042, %5053
  %5055 = fmul fast float %5054, 0x3FEE31C3C0000000
  %5056 = fmul fast float %5055, %5051
  %5057 = fmul fast float %5041, 0x3FDACB7480000000
  %5058 = fadd fast float %5057, 0xBFD7347680000000
  %5059 = fmul fast float %5058, %5054
  %5060 = fmul fast float %5059, %5051
  br label %5061

; <label>:5061                                    ; preds = %5032, %5005
  %5062 = phi float [ %5047, %5032 ], [ 0.000000e+00, %5005 ]
  %5063 = phi float [ %5048, %5032 ], [ 0.000000e+00, %5005 ]
  %5064 = phi float [ %5049, %5032 ], [ 0.000000e+00, %5005 ]
  %5065 = phi float [ %5056, %5032 ], [ 0.000000e+00, %5005 ]
  %5066 = phi float [ %5060, %5032 ], [ 0.000000e+00, %5005 ]
  %5067 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5063, float %5064, float %4908, float %4909, float %4910)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = fmul fast float %5067, %5067
  %5069 = fmul fast float %5068, 0x3FEE471020000000
  %5070 = fadd fast float %5069, 0xBFD42F6020000000
  %5071 = fmul fast float %5027, 0x3FD20DD760000000
  %5072 = fmul fast float %5070, %5066
  %5073 = fmul fast float %5065, 0x3FDF454380000000
  %5074 = fmul fast float %5073, %5067
  %5075 = fadd fast float %5074, %5071
  %5076 = fadd fast float %5075, %5072
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5063, float %5064, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = fmul fast float %5077, 0x3FDF454380000000
  %5079 = fmul fast float %5077, %5077
  %5080 = fmul fast float %5079, 0x3FEE471020000000
  %5081 = fadd fast float %5080, 0xBFD42F6020000000
  %5082 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5065, float %5066, float 0x3FD20DD760000000, float %5078, float %5081)  ; Dot3(ax,ay,az,bx,by,bz)
  %5083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5084 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = fcmp fast oeq float %5084, 0.000000e+00
  %5086 = fcmp fast oeq float %5083, 0.000000e+00
  %5087 = or i1 %5086, %5085
  br i1 %5087, label %5117, label %5088

; <label>:5088                                    ; preds = %5061
  %5089 = fsub fast float -0.000000e+00, %68
  %5090 = fsub fast float -0.000000e+00, %66
  %5091 = call float @dx.op.unary.f32(i32 24, float %5084)  ; Sqrt(value)
  %5092 = fdiv fast float %5091, %5083
  %5093 = fcmp fast ogt float %5092, 0x3FFB6F8900000000
  %5094 = select i1 %5093, float 0x3FFB6F8900000000, float %5092
  %5095 = fmul fast float %5094, 0x3FE8A23460000000
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = call float @dx.op.binary.f32(i32 35, float %5094, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5098 = fmul fast float %5096, %5083
  %5099 = fmul fast float %5097, 0x3FF279A740000000
  %5100 = fadd fast float %5099, -1.000000e+00
  %5101 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5090, float %67, float %5089, float %5090, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5102 = call float @dx.op.unary.f32(i32 25, float %5101)  ; Rsqrt(value)
  %5103 = fmul fast float %5102, %5089
  %5104 = fmul fast float %5102, %5090
  %5105 = fmul fast float %5102, %67
  %5106 = fmul fast float %5100, %5100
  %5107 = fsub fast float 1.000000e+00, %5106
  %5108 = fmul fast float %5097, 0x40005F8BE0000000
  %5109 = fsub fast float 0x400C5BF8A0000000, %5108
  %5110 = fdiv fast float %5098, %5109
  %5111 = fmul fast float %5110, 0x3FEE31C3C0000000
  %5112 = fmul fast float %5111, %5107
  %5113 = fmul fast float %5097, 0x3FDACB7480000000
  %5114 = fadd fast float %5113, 0xBFD7347680000000
  %5115 = fmul fast float %5114, %5110
  %5116 = fmul fast float %5115, %5107
  br label %5117

; <label>:5117                                    ; preds = %5088, %5061
  %5118 = phi float [ %5103, %5088 ], [ 0.000000e+00, %5061 ]
  %5119 = phi float [ %5104, %5088 ], [ 0.000000e+00, %5061 ]
  %5120 = phi float [ %5105, %5088 ], [ 0.000000e+00, %5061 ]
  %5121 = phi float [ %5112, %5088 ], [ 0.000000e+00, %5061 ]
  %5122 = phi float [ %5116, %5088 ], [ 0.000000e+00, %5061 ]
  %5123 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5119, float %5120, float %4908, float %4909, float %4910)  ; Dot3(ax,ay,az,bx,by,bz)
  %5124 = fmul fast float %5123, %5123
  %5125 = fmul fast float %5124, 0x3FEE471020000000
  %5126 = fadd fast float %5125, 0xBFD42F6020000000
  %5127 = fmul fast float %5083, 0x3FD20DD760000000
  %5128 = fmul fast float %5126, %5122
  %5129 = fmul fast float %5121, 0x3FDF454380000000
  %5130 = fmul fast float %5129, %5123
  %5131 = fadd fast float %5130, %5127
  %5132 = fadd fast float %5131, %5128
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5118, float %5119, float %5120, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = fmul fast float %5133, 0x3FDF454380000000
  %5135 = fmul fast float %5133, %5133
  %5136 = fmul fast float %5135, 0x3FEE471020000000
  %5137 = fadd fast float %5136, 0xBFD42F6020000000
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5121, float %5122, float 0x3FD20DD760000000, float %5134, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.binary.f32(i32 35, float %5020, float 0.000000e+00)  ; FMax(a,b)
  %5140 = call float @dx.op.binary.f32(i32 35, float %5076, float 0.000000e+00)  ; FMax(a,b)
  %5141 = call float @dx.op.binary.f32(i32 35, float %5132, float 0.000000e+00)  ; FMax(a,b)
  %5142 = call float @dx.op.binary.f32(i32 35, float %5026, float 0.000000e+00)  ; FMax(a,b)
  %5143 = call float @dx.op.binary.f32(i32 35, float %5082, float 0.000000e+00)  ; FMax(a,b)
  %5144 = call float @dx.op.binary.f32(i32 35, float %5138, float 0.000000e+00)  ; FMax(a,b)
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = call float @dx.op.binary.f32(i32 36, float %4911, float %5146)  ; FMin(a,b)
  %5148 = fsub fast float 1.000000e+00, %4966
  %5149 = fmul fast float %5147, %5148
  %5150 = fsub fast float 1.000000e+00, %5149
  %5151 = bitcast float %5150 to i32
  %5152 = sub nsw i32 2129859010, %5151
  %5153 = bitcast i32 %5152 to float
  %5154 = call float @dx.op.binary.f32(i32 36, float %4912, float %5146)  ; FMin(a,b)
  %5155 = fmul fast float %5154, %5148
  %5156 = fsub fast float 1.000000e+00, %5155
  %5157 = bitcast float %5156 to i32
  %5158 = sub nsw i32 2129859010, %5157
  %5159 = bitcast i32 %5158 to float
  %5160 = call float @dx.op.binary.f32(i32 36, float %4913, float %5146)  ; FMin(a,b)
  %5161 = fmul fast float %5160, %5148
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = bitcast float %5162 to i32
  %5164 = sub nsw i32 2129859010, %5163
  %5165 = bitcast i32 %5164 to float
  %5166 = fmul fast float %5139, %4966
  %5167 = fmul fast float %5166, %5153
  %5168 = fmul fast float %5140, %4966
  %5169 = fmul fast float %5168, %5159
  %5170 = fmul fast float %5141, %4966
  %5171 = fmul fast float %5170, %5165
  %5172 = call float @dx.op.binary.f32(i32 36, float %4914, float %5146)  ; FMin(a,b)
  %5173 = fmul fast float %5172, %5148
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = bitcast float %5174 to i32
  %5176 = sub nsw i32 2129859010, %5175
  %5177 = bitcast i32 %5176 to float
  %5178 = call float @dx.op.binary.f32(i32 36, float %4915, float %5146)  ; FMin(a,b)
  %5179 = fmul fast float %5178, %5148
  %5180 = fsub fast float 1.000000e+00, %5179
  %5181 = bitcast float %5180 to i32
  %5182 = sub nsw i32 2129859010, %5181
  %5183 = bitcast i32 %5182 to float
  %5184 = call float @dx.op.binary.f32(i32 36, float %4920, float %5146)  ; FMin(a,b)
  %5185 = fmul fast float %5184, %5148
  %5186 = fsub fast float 1.000000e+00, %5185
  %5187 = bitcast float %5186 to i32
  %5188 = sub nsw i32 2129859010, %5187
  %5189 = bitcast i32 %5188 to float
  %5190 = fmul fast float %5142, %4966
  %5191 = fmul fast float %5190, %5177
  %5192 = fmul fast float %5143, %4966
  %5193 = fmul fast float %5192, %5183
  %5194 = fmul fast float %5144, %4966
  %5195 = fmul fast float %5194, %5189
  %5196 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5169, float %5171, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5197 = select i1 %223, float 0.000000e+00, float %5167
  %5198 = select i1 %223, float %5196, float %5169
  %5199 = select i1 %223, float 0.000000e+00, float %5171
  %5200 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5193, float %5195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = select i1 %223, float 0.000000e+00, float %5191
  %5202 = select i1 %223, float %5200, float %5193
  %5203 = select i1 %223, float 0.000000e+00, float %5195
  %5204 = fmul fast float %4922, 9.843750e-01
  %5205 = fmul fast float %4917, 9.843750e-01
  %5206 = fadd fast float %5204, 7.812500e-03
  %5207 = fadd fast float %5205, 7.812500e-03
  %5208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5206, float %5207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 2
  %5210 = extractvalue %dx.types.ResRet.f32 %5208, 3
  %5211 = fmul fast float %5209, %4914
  %5212 = fmul fast float %5209, %4915
  %5213 = fmul fast float %5209, %4920
  %5214 = fadd fast float %5211, %5210
  %5215 = fadd fast float %5212, %5210
  %5216 = fadd fast float %5213, %5210
  %5217 = fcmp fast ogt float %4257, 0.000000e+00
  br i1 %5217, label %5218, label %5244

; <label>:5218                                    ; preds = %5117
  %5219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4257, float %4922, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.ResRet.f32 %5219, 2
  %5223 = fadd fast float %5220, -5.000000e-01
  %5224 = fadd fast float %5221, -5.000000e-01
  %5225 = fadd fast float %5222, -5.000000e-01
  %5226 = fsub fast float 1.000000e+00, %4914
  %5227 = fsub fast float 1.000000e+00, %4915
  %5228 = fsub fast float 1.000000e+00, %4920
  %5229 = fmul fast float %4914, 4.000000e+00
  %5230 = fmul fast float %5229, %5226
  %5231 = fmul fast float %5230, %5223
  %5232 = fmul fast float %4915, 4.000000e+00
  %5233 = fmul fast float %5232, %5227
  %5234 = fmul fast float %5233, %5224
  %5235 = fmul fast float %4920, 4.000000e+00
  %5236 = fmul fast float %5235, %5228
  %5237 = fmul fast float %5236, %5225
  %5238 = fadd fast float %5231, %5214
  %5239 = fadd fast float %5234, %5215
  %5240 = fadd fast float %5237, %5216
  %5241 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5242 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5243 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  br label %5244

; <label>:5244                                    ; preds = %5218, %5117
  %5245 = phi float [ %5241, %5218 ], [ %5214, %5117 ]
  %5246 = phi float [ %5242, %5218 ], [ %5215, %5117 ]
  %5247 = phi float [ %5243, %5218 ], [ %5216, %5117 ]
  %5248 = call float @dx.op.binary.f32(i32 35, float %5246, float %5247)  ; FMax(a,b)
  %5249 = call float @dx.op.binary.f32(i32 35, float %5245, float %5248)  ; FMax(a,b)
  %5250 = fsub fast float 1.000000e+00, %5249
  %5251 = fmul fast float %5250, %5197
  %5252 = fmul fast float %5250, %5198
  %5253 = fmul fast float %5250, %5199
  %5254 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = fcmp fast ogt float %5254, 0x3E7FF19E20000000
  %5256 = fdiv fast float 1.000000e+00, %5254
  %5257 = select i1 %5255, float %5256, float 0.000000e+00
  %5258 = fmul fast float %5257, %4911
  %5259 = fmul fast float %5257, %4912
  %5260 = fmul fast float %5257, %4913
  %5261 = fadd fast float %5258, -1.000000e+00
  %5262 = fadd fast float %5259, -1.000000e+00
  %5263 = fadd fast float %5260, -1.000000e+00
  %5264 = fmul fast float %5261, 5.000000e-01
  %5265 = fmul fast float %5262, 5.000000e-01
  %5266 = fmul fast float %5263, 5.000000e-01
  %5267 = fadd fast float %5264, 1.000000e+00
  %5268 = fadd fast float %5265, 1.000000e+00
  %5269 = fadd fast float %5266, 1.000000e+00
  %5270 = fmul fast float %5245, %5201
  %5271 = fmul fast float %5246, %5202
  %5272 = fmul fast float %5247, %5203
  %5273 = fsub fast float 1.000000e+00, %4922
  %5274 = bitcast float %5273 to i32
  %5275 = sitofp i32 %5274 to float
  %5276 = fmul fast float %5275, 5.000000e+00
  %5277 = fadd fast float %5276, 0xC1EFBF8940000000
  %5278 = fptosi float %5277 to i32
  %5279 = bitcast i32 %5278 to float
  %5280 = fmul fast float %5279, %4258
  %5281 = fmul fast float %5197, %5280
  %5282 = fmul fast float %5281, %5250
  %5283 = fmul fast float %5282, %5267
  %5284 = fmul fast float %5198, %5280
  %5285 = fmul fast float %5284, %5250
  %5286 = fmul fast float %5285, %5268
  %5287 = fmul fast float %5199, %5280
  %5288 = fmul fast float %5287, %5250
  %5289 = fmul fast float %5288, %5269
  %5290 = fmul fast float %5251, %4254
  %5291 = fmul fast float %5252, %4254
  %5292 = fmul fast float %5253, %4254
  %5293 = fadd fast float %5270, %4250
  %5294 = fadd fast float %5293, %5283
  %5295 = fmul fast float %5294, %4254
  %5296 = fadd fast float %5271, %4251
  %5297 = fadd fast float %5296, %5286
  %5298 = fmul fast float %5297, %4254
  %5299 = fadd fast float %5272, %4252
  %5300 = fadd fast float %5299, %5289
  %5301 = fmul fast float %5300, %4254
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 3
  %5304 = fcmp fast oeq float %5303, 0.000000e+00
  br i1 %5304, label %6384, label %5305

; <label>:5305                                    ; preds = %5244
  %5306 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5307 = extractvalue %dx.types.CBufRet.f32 %5302, 1
  %5308 = extractvalue %dx.types.CBufRet.f32 %5302, 2
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5314 = extractvalue %dx.types.CBufRet.f32 %5313, 0
  %5315 = extractvalue %dx.types.CBufRet.f32 %5313, 1
  %5316 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5311, float %5312, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = select i1 %223, float %5314, float %5310
  %5318 = select i1 %223, float %5316, float %5311
  %5319 = select i1 %223, float %5315, float %5312
  %5320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.f32 %5320, 2
  %5322 = fmul fast float %5321, %111
  %5323 = fmul fast float %5321, %113
  %5324 = fmul fast float %5321, %115
  %5325 = fadd fast float %5322, %161
  %5326 = fadd fast float %5323, %162
  %5327 = fadd fast float %5324, %163
  %5328 = fcmp fast olt float %5303, 0.000000e+00
  br i1 %5328, label %5953, label %5329

; <label>:5329                                    ; preds = %5305
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.CBufRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.CBufRet.f32 %5330, 2
  %5334 = extractvalue %dx.types.CBufRet.f32 %5330, 3
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.CBufRet.f32 %5335, 2
  %5339 = extractvalue %dx.types.CBufRet.f32 %5335, 3
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.CBufRet.f32 %5340, 1
  %5343 = extractvalue %dx.types.CBufRet.f32 %5340, 2
  %5344 = extractvalue %dx.types.CBufRet.f32 %5340, 3
  %5345 = fmul fast float %5331, %5325
  %5346 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5332, float %5345)  ; FMad(a,b,c)
  %5347 = call float @dx.op.tertiary.f32(i32 46, float %5327, float %5333, float %5346)  ; FMad(a,b,c)
  %5348 = fadd fast float %5347, %5334
  %5349 = fmul fast float %5336, %5325
  %5350 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5337, float %5349)  ; FMad(a,b,c)
  %5351 = call float @dx.op.tertiary.f32(i32 46, float %5327, float %5338, float %5350)  ; FMad(a,b,c)
  %5352 = fadd fast float %5351, %5339
  %5353 = fmul fast float %5341, %5325
  %5354 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5342, float %5353)  ; FMad(a,b,c)
  %5355 = call float @dx.op.tertiary.f32(i32 46, float %5327, float %5343, float %5354)  ; FMad(a,b,c)
  %5356 = fadd fast float %5355, %5344
  %5357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5357, 0
  %5359 = extractvalue %dx.types.CBufRet.f32 %5357, 1
  %5360 = extractvalue %dx.types.CBufRet.f32 %5357, 3
  %5361 = fmul fast float %5360, %5348
  %5362 = fmul fast float %5360, %5352
  %5363 = fadd fast float %5361, %5358
  %5364 = fadd fast float %5362, %5359
  %5365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5366 = extractvalue %dx.types.CBufRet.f32 %5365, 0
  %5367 = extractvalue %dx.types.CBufRet.f32 %5365, 1
  %5368 = extractvalue %dx.types.CBufRet.f32 %5365, 3
  %5369 = fmul fast float %5368, %5348
  %5370 = fmul fast float %5368, %5352
  %5371 = fadd fast float %5369, %5366
  %5372 = fadd fast float %5370, %5367
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 1
  %5375 = fsub fast float %5374, %5356
  %5376 = extractvalue %dx.types.CBufRet.f32 %5373, 2
  %5377 = fmul fast float %5375, %5376
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5365, 2
  %5381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5382 = extractvalue %dx.types.CBufRet.f32 %5381, 2
  %5383 = fadd fast float %5382, %5380
  %5384 = fcmp fast ogt float %5383, 0.000000e+00
  br i1 %5384, label %5385, label %5409

; <label>:5385                                    ; preds = %5329
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 0
  %5388 = extractvalue %dx.types.CBufRet.f32 %5386, 1
  %5389 = fsub fast float %5371, %5387
  %5390 = fsub fast float %5372, %5388
  %5391 = fcmp fast olt float %5389, 0.000000e+00
  %5392 = fcmp fast olt float %5390, 0.000000e+00
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.CBufRet.f32 %5393, 1
  %5396 = extractvalue %dx.types.CBufRet.f32 %5393, 2
  %5397 = extractvalue %dx.types.CBufRet.f32 %5393, 3
  %5398 = select i1 %5391, float %5394, float %5396
  %5399 = select i1 %5392, float %5395, float %5397
  %5400 = fmul fast float %5398, %5389
  %5401 = fmul fast float %5399, %5390
  %5402 = call float @dx.op.unary.f32(i32 6, float %5400)  ; FAbs(value)
  %5403 = call float @dx.op.unary.f32(i32 6, float %5401)  ; FAbs(value)
  %5404 = extractvalue %dx.types.CBufRet.f32 %5320, 0
  %5405 = call float @dx.op.binary.f32(i32 35, float %5402, float %5403)  ; FMax(a,b)
  %5406 = fsub fast float %5404, %5405
  %5407 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  %5408 = fmul fast float %5407, %5379
  br label %5409

; <label>:5409                                    ; preds = %5385, %5329
  %5410 = phi float [ %5408, %5385 ], [ 0.000000e+00, %5329 ]
  %5411 = extractvalue %dx.types.CBufRet.f32 %5357, 2
  %5412 = extractvalue %dx.types.CBufRet.f32 %5381, 1
  %5413 = fadd fast float %5412, %5411
  %5414 = fcmp fast ogt float %5413, 0.000000e+00
  %5415 = extractvalue %dx.types.CBufRet.f32 %5320, 0
  br i1 %5414, label %5416, label %5439

; <label>:5416                                    ; preds = %5409
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.CBufRet.f32 %5417, 1
  %5420 = fsub fast float %5363, %5418
  %5421 = fsub fast float %5364, %5419
  %5422 = fcmp fast olt float %5420, 0.000000e+00
  %5423 = fcmp fast olt float %5421, 0.000000e+00
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.CBufRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.CBufRet.f32 %5424, 2
  %5428 = extractvalue %dx.types.CBufRet.f32 %5424, 3
  %5429 = select i1 %5422, float %5425, float %5427
  %5430 = select i1 %5423, float %5426, float %5428
  %5431 = fmul fast float %5429, %5420
  %5432 = fmul fast float %5430, %5421
  %5433 = call float @dx.op.unary.f32(i32 6, float %5431)  ; FAbs(value)
  %5434 = call float @dx.op.unary.f32(i32 6, float %5432)  ; FAbs(value)
  %5435 = call float @dx.op.binary.f32(i32 35, float %5433, float %5434)  ; FMax(a,b)
  %5436 = fsub fast float %5415, %5435
  %5437 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5438 = fmul fast float %5437, %5379
  br label %5439

; <label>:5439                                    ; preds = %5416, %5409
  %5440 = phi float [ %5438, %5416 ], [ 0.000000e+00, %5409 ]
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5443 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5447 = fsub fast float %5348, %5445
  %5448 = fsub fast float %5352, %5446
  %5449 = fcmp fast olt float %5447, 0.000000e+00
  %5450 = fcmp fast olt float %5448, 0.000000e+00
  %5451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.CBufRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.CBufRet.f32 %5451, 2
  %5455 = extractvalue %dx.types.CBufRet.f32 %5451, 3
  %5456 = select i1 %5449, float %5452, float %5454
  %5457 = select i1 %5450, float %5453, float %5455
  %5458 = fmul fast float %5456, %5447
  %5459 = fmul fast float %5457, %5448
  %5460 = call float @dx.op.unary.f32(i32 6, float %5458)  ; FAbs(value)
  %5461 = call float @dx.op.unary.f32(i32 6, float %5459)  ; FAbs(value)
  %5462 = call float @dx.op.binary.f32(i32 35, float %5460, float %5461)  ; FMax(a,b)
  %5463 = fsub fast float %5415, %5462
  %5464 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5465 = call float @dx.op.binary.f32(i32 36, float %5464, float %5443)  ; FMin(a,b)
  %5466 = fmul fast float %5465, %5379
  %5467 = fsub fast float %5440, %5466
  %5468 = fsub fast float %5410, %5440
  %5469 = fsub fast float %5468, %5466
  %5470 = call float @dx.op.binary.f32(i32 35, float %5440, float %5410)  ; FMax(a,b)
  %5471 = call float @dx.op.binary.f32(i32 35, float %5466, float %5470)  ; FMax(a,b)
  %5472 = fcmp fast olt float %5471, 1.000000e+00
  br i1 %5472, label %5473, label %5871, !dx.controlflow.hints !94

; <label>:5473                                    ; preds = %5439
  %5474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.f32 %5474, 0
  %5476 = fcmp fast une float %5475, 0.000000e+00
  br i1 %5476, label %5477, label %5871, !dx.controlflow.hints !95

; <label>:5477                                    ; preds = %5473
  %5478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.CBufRet.f32 %5478, 1
  %5481 = extractvalue %dx.types.CBufRet.f32 %5478, 2
  %5482 = extractvalue %dx.types.CBufRet.f32 %5478, 3
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.CBufRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.CBufRet.f32 %5483, 2
  %5487 = extractvalue %dx.types.CBufRet.f32 %5483, 3
  %5488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.f32 %5488, 0
  %5490 = extractvalue %dx.types.CBufRet.f32 %5488, 1
  %5491 = extractvalue %dx.types.CBufRet.f32 %5488, 2
  %5492 = extractvalue %dx.types.CBufRet.f32 %5488, 3
  %5493 = fmul fast float %5479, %5325
  %5494 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5480, float %5493)  ; FMad(a,b,c)
  %5495 = call float @dx.op.tertiary.f32(i32 46, float %5327, float %5481, float %5494)  ; FMad(a,b,c)
  %5496 = fadd fast float %5495, %5482
  %5497 = fmul fast float %5484, %5325
  %5498 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5485, float %5497)  ; FMad(a,b,c)
  %5499 = call float @dx.op.tertiary.f32(i32 46, float %5327, float %5486, float %5498)  ; FMad(a,b,c)
  %5500 = fadd fast float %5499, %5487
  %5501 = fmul fast float %5489, %5325
  %5502 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5490, float %5501)  ; FMad(a,b,c)
  %5503 = call float @dx.op.tertiary.f32(i32 46, float %5327, float %5491, float %5502)  ; FMad(a,b,c)
  %5504 = fadd fast float %5503, %5492
  %5505 = fcmp fast oge float %5496, 1.000000e+00
  %5506 = fcmp fast oge float %5500, 1.000000e+00
  %5507 = or i1 %5505, %5506
  %5508 = fcmp fast olt float %5496, 0.000000e+00
  %5509 = fcmp fast olt float %5500, 0.000000e+00
  %5510 = or i1 %5508, %5509
  %5511 = or i1 %5507, %5510
  br i1 %5511, label %5871, label %5512, !dx.controlflow.hints !96

; <label>:5512                                    ; preds = %5477
  %5513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.CBufRet.f32 %5513, 1
  %5516 = extractvalue %dx.types.CBufRet.f32 %5513, 2
  %5517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5518 = extractvalue %dx.types.CBufRet.i32 %5517, 2
  %5519 = uitofp i32 %5518 to float
  %5520 = extractvalue %dx.types.CBufRet.i32 %5517, 3
  %5521 = uitofp i32 %5520 to float
  %5522 = extractvalue %dx.types.CBufRet.f32 %5513, 3
  %5523 = fmul fast float %5522, 2.000000e+00
  %5524 = fsub fast float %5496, %5514
  %5525 = fsub fast float %5500, %5515
  %5526 = fmul fast float %5523, %5524
  %5527 = fmul fast float %5523, %5525
  %5528 = fdiv fast float 1.000000e+00, %5308
  %5529 = fmul fast float %5527, %5528
  %5530 = call float @dx.op.unary.f32(i32 6, float %5529)  ; FAbs(value)
  %5531 = fmul fast float %5516, %5327
  %5532 = fmul fast float %5531, %5523
  %5533 = call float @dx.op.unary.f32(i32 6, float %5532)  ; FAbs(value)
  %5534 = call float @dx.op.unary.f32(i32 6, float %5526)  ; FAbs(value)
  %5535 = call float @dx.op.binary.f32(i32 35, float %5533, float %5530)  ; FMax(a,b)
  %5536 = call float @dx.op.binary.f32(i32 35, float %5534, float %5535)  ; FMax(a,b)
  %5537 = fmul fast float %5536, 2.000000e+00
  %5538 = call float @dx.op.unary.f32(i32 23, float %5537)  ; Log(value)
  %5539 = call float @dx.op.binary.f32(i32 35, float %5538, float %5519)  ; FMax(a,b)
  %5540 = call float @dx.op.unary.f32(i32 22, float %5539)  ; Frc(value)
  %5541 = fadd fast float %5540, 0xBFEA666660000000
  %5542 = fmul fast float %5541, 8.000000e+00
  %5543 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5544 = call float @dx.op.unary.f32(i32 27, float %5539)  ; Round_ni(value)
  %5545 = fadd fast float %5544, %5543
  %5546 = call float @dx.op.binary.f32(i32 36, float %5545, float %5521)  ; FMin(a,b)
  %5547 = call float @dx.op.unary.f32(i32 27, float %5546)  ; Round_ni(value)
  %5548 = fsub fast float -0.000000e+00, %5547
  %5549 = call float @dx.op.unary.f32(i32 21, float %5548)  ; Exp(value)
  %5550 = fmul fast float %5549, %5523
  %5551 = fmul fast float %5550, %5496
  %5552 = fmul fast float %5550, %5500
  %5553 = fmul fast float %5551, 2.500000e-01
  %5554 = fmul fast float %5552, 2.500000e-01
  %5555 = fadd fast float %5553, 5.000000e-01
  %5556 = fadd fast float %5554, 5.000000e-01
  %5557 = fsub fast float %5521, %5519
  %5558 = fptoui float %5557 to i32
  %5559 = add i32 %5558, 320
  %5560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5559)  ; CBufferLoadLegacy(handle,regIndex)
  %5561 = extractvalue %dx.types.CBufRet.f32 %5560, 0
  %5562 = extractvalue %dx.types.CBufRet.f32 %5560, 1
  %5563 = fcmp fast une float %5546, %5521
  %5564 = fsub fast float %5496, %5561
  %5565 = fsub fast float %5500, %5562
  %5566 = call float @dx.op.unary.f32(i32 6, float %5564)  ; FAbs(value)
  %5567 = call float @dx.op.unary.f32(i32 6, float %5565)  ; FAbs(value)
  %5568 = fmul fast float %5566, %5550
  %5569 = fmul fast float %5567, %5550
  %5570 = fcmp fast olt float %5568, 1.000000e+00
  %5571 = fcmp fast olt float %5569, 1.000000e+00
  %5572 = and i1 %5570, %5571
  %5573 = or i1 %5563, %5572
  br i1 %5573, label %5574, label %5871, !dx.controlflow.hints !97

; <label>:5574                                    ; preds = %5512
  %5575 = fmul fast float %5552, 5.000000e-01
  %5576 = fmul fast float %5551, 5.000000e-01
  %5577 = fadd fast float %5575, 5.000000e-01
  %5578 = fadd fast float %5576, 5.000000e-01
  %5579 = sitofp i32 %5518 to float
  %5580 = fsub fast float %5546, %5579
  %5581 = call float @dx.op.unary.f32(i32 27, float %5580)  ; Round_ni(value)
  %5582 = call float @dx.op.unary.f32(i32 22, float %5546)  ; Frc(value)
  %5583 = call float @dx.op.unary.f32(i32 22, float %5578)  ; Frc(value)
  %5584 = call float @dx.op.unary.f32(i32 22, float %5577)  ; Frc(value)
  %5585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5583, float %5584, float %5581, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5586 = extractvalue %dx.types.ResRet.f32 %5585, 0
  %5587 = extractvalue %dx.types.ResRet.f32 %5585, 1
  %5588 = extractvalue %dx.types.ResRet.f32 %5585, 2
  %5589 = extractvalue %dx.types.ResRet.f32 %5585, 3
  %5590 = fcmp fast ogt float %5582, 0.000000e+00
  br i1 %5590, label %5591, label %5612, !dx.controlflow.hints !98

; <label>:5591                                    ; preds = %5574
  %5592 = fadd fast float %5581, 1.000000e+00
  %5593 = call float @dx.op.unary.f32(i32 22, float %5555)  ; Frc(value)
  %5594 = call float @dx.op.unary.f32(i32 22, float %5556)  ; Frc(value)
  %5595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5593, float %5594, float %5592, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5596 = extractvalue %dx.types.ResRet.f32 %5595, 0
  %5597 = extractvalue %dx.types.ResRet.f32 %5595, 1
  %5598 = extractvalue %dx.types.ResRet.f32 %5595, 2
  %5599 = extractvalue %dx.types.ResRet.f32 %5595, 3
  %5600 = fsub fast float %5596, %5586
  %5601 = fsub fast float %5597, %5587
  %5602 = fsub fast float %5598, %5588
  %5603 = fsub fast float %5599, %5589
  %5604 = fmul fast float %5600, %5582
  %5605 = fmul fast float %5601, %5582
  %5606 = fmul fast float %5602, %5582
  %5607 = fmul fast float %5603, %5582
  %5608 = fadd fast float %5604, %5586
  %5609 = fadd fast float %5605, %5587
  %5610 = fadd fast float %5606, %5588
  %5611 = fadd fast float %5607, %5589
  br label %5612

; <label>:5612                                    ; preds = %5591, %5574
  %5613 = phi float [ %5608, %5591 ], [ %5586, %5574 ]
  %5614 = phi float [ %5609, %5591 ], [ %5587, %5574 ]
  %5615 = phi float [ %5610, %5591 ], [ %5588, %5574 ]
  %5616 = phi float [ %5611, %5591 ], [ %5589, %5574 ]
  %5617 = fadd fast float %5613, -5.000000e-01
  %5618 = fadd fast float %5615, -5.000000e-01
  %5619 = fmul fast float %5617, 0xBFD5555560000000
  %5620 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5618, float %5619)  ; FMad(a,b,c)
  %5621 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5614, float 0.000000e+00)  ; FMad(a,b,c)
  %5622 = fadd fast float %5621, %5616
  %5623 = fmul fast float %5617, -7.500000e-01
  %5624 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5618, float %5623)  ; FMad(a,b,c)
  %5625 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5614, float 0.000000e+00)  ; FMad(a,b,c)
  %5626 = fadd fast float %5625, %5616
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 0
  %5631 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5632 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5633 = extractvalue %dx.types.CBufRet.f32 %5629, 3
  %5634 = fsub fast float %5630, %5620
  %5635 = fsub fast float %5631, %5622
  %5636 = fsub fast float %5632, %5624
  %5637 = fsub fast float %5633, %5626
  %5638 = fmul fast float %5634, %5628
  %5639 = fmul fast float %5635, %5628
  %5640 = fmul fast float %5636, %5628
  %5641 = fmul fast float %5637, %5628
  %5642 = fadd fast float %5638, %5620
  %5643 = fadd fast float %5639, %5622
  %5644 = fadd fast float %5640, %5624
  %5645 = fadd fast float %5641, %5626
  %5646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5647 = extractvalue %dx.types.ResRet.i32 %5646, 0
  %5648 = and i32 %5647, 536870911
  %5649 = uitofp i32 %5648 to float
  %5650 = fmul fast float %5649, %5496
  %5651 = fmul fast float %5649, %5500
  %5652 = fptoui float %5650 to i32
  %5653 = fptoui float %5651 to i32
  %5654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5655 = extractvalue %dx.types.ResRet.i32 %5654, 0
  %5656 = and i32 %5655, 31
  %5657 = lshr i32 %5652, %5656
  %5658 = lshr i32 %5653, %5656
  %5659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5660 = extractvalue %dx.types.ResRet.i32 %5659, 0
  %5661 = and i32 %5660, 31
  %5662 = shl i32 1, %5661
  %5663 = call i32 @dx.op.binary.i32(i32 40, i32 %5662, i32 4)  ; UMin(a,b)
  %5664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5665 = extractvalue %dx.types.ResRet.i32 %5664, 0
  %5666 = extractvalue %dx.types.ResRet.i32 %5664, 1
  %5667 = icmp eq i32 %5663, 0
  br i1 %5667, label %5709, label %5668

; <label>:5668                                    ; preds = %5612
  br label %5669

; <label>:5669                                    ; preds = %5697, %5668
  %5670 = phi i32 [ %5700, %5697 ], [ 0, %5668 ]
  %5671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5672 = extractvalue %dx.types.ResRet.i32 %5671, 0
  %5673 = lshr i32 %5672, 16
  %5674 = and i32 %5673, 31
  %5675 = shl i32 %5658, %5674
  %5676 = add i32 %5675, %5657
  %5677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5678 = extractvalue %dx.types.ResRet.i32 %5677, 0
  %5679 = and i32 %5678, 31
  %5680 = shl i32 %5676, %5679
  %5681 = add i32 %5680, %5670
  %5682 = shl i32 %5681, 2
  %5683 = add i32 %5682, 32
  %5684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5683, i32 undef)  ; BufferLoad(srv,index,wot)
  %5685 = extractvalue %dx.types.ResRet.i32 %5684, 0
  %5686 = icmp slt i32 %5685, 0
  %5687 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5670
  %5688 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5670
  %5689 = bitcast float* %5687 to i32*
  %5690 = bitcast float* %5688 to i32*
  br i1 %5686, label %5691, label %5697

; <label>:5691                                    ; preds = %5669
  %5692 = and i32 %5685, 1073741823
  %5693 = add nuw nsw i32 %5692, 20
  %5694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5693, i32 undef)  ; BufferLoad(srv,index,wot)
  %5695 = extractvalue %dx.types.ResRet.i32 %5694, 0
  %5696 = extractvalue %dx.types.ResRet.i32 %5694, 1
  br label %5697

; <label>:5697                                    ; preds = %5691, %5669
  %5698 = phi i32 [ %5695, %5691 ], [ %5665, %5669 ]
  %5699 = phi i32 [ %5696, %5691 ], [ %5666, %5669 ]
  store i32 %5698, i32* %5689, align 4
  store i32 %5699, i32* %5690, align 4
  %5700 = add nuw i32 %5670, 1
  %5701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5702 = extractvalue %dx.types.CBufRet.i32 %5701, 2
  %5703 = icmp eq i32 %5702, 0
  %5704 = icmp ugt i32 %5685, -1073741825
  %5705 = and i1 %5704, %5703
  %5706 = icmp ult i32 %5700, %5663
  %5707 = and i1 %5705, %5706
  br i1 %5707, label %5669, label %5708

; <label>:5708                                    ; preds = %5697
  br label %5709

; <label>:5709                                    ; preds = %5708, %5612
  %5710 = phi i32 [ 0, %5612 ], [ %5700, %5708 ]
  %5711 = extractvalue %dx.types.CBufRet.f32 %5474, 2
  %5712 = fptoui float %5711 to i32
  %5713 = icmp eq i32 %5712, 0
  br i1 %5713, label %5765, label %5714

; <label>:5714                                    ; preds = %5709
  br label %5715

; <label>:5715                                    ; preds = %5760, %5714
  %5716 = phi i32 [ %5761, %5760 ], [ %5710, %5714 ]
  %5717 = phi i32 [ %5762, %5760 ], [ 0, %5714 ]
  %5718 = lshr i32 %5717, 2
  %5719 = and i32 %5717, 3
  %5720 = add nuw nsw i32 %5718, 83
  %5721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5720)  ; CBufferLoadLegacy(handle,regIndex)
  %5722 = extractvalue %dx.types.CBufRet.i32 %5721, 0
  %5723 = extractvalue %dx.types.CBufRet.i32 %5721, 1
  %5724 = extractvalue %dx.types.CBufRet.i32 %5721, 2
  %5725 = extractvalue %dx.types.CBufRet.i32 %5721, 3
  %5726 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5722, i32* %5726, align 4
  %5727 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5723, i32* %5727, align 4
  %5728 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5724, i32* %5728, align 4
  %5729 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5725, i32* %5729, align 4
  %5730 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5719
  %5731 = load i32, i32* %5730, align 4, !tbaa !99, !noalias !103
  %5732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5733 = extractvalue %dx.types.ResRet.i32 %5732, 0
  %5734 = lshr i32 %5733, 16
  %5735 = and i32 %5734, 31
  %5736 = shl i32 %5658, %5735
  %5737 = add i32 %5736, %5657
  %5738 = shl i32 %5737, 2
  %5739 = add i32 %5738, %5731
  %5740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5739, i32 undef)  ; BufferLoad(srv,index,wot)
  %5741 = extractvalue %dx.types.ResRet.i32 %5740, 0
  %5742 = icmp eq i32 %5741, 0
  br i1 %5742, label %5760, label %5743

; <label>:5743                                    ; preds = %5715
  %5744 = icmp slt i32 %5741, 0
  %5745 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5716
  %5746 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5716
  %5747 = bitcast float* %5745 to i32*
  %5748 = bitcast float* %5746 to i32*
  br i1 %5744, label %5749, label %5756

; <label>:5749                                    ; preds = %5743
  %5750 = and i32 %5741, 1073741823
  %5751 = add i32 %5731, 20
  %5752 = add i32 %5751, %5750
  %5753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5752, i32 undef)  ; BufferLoad(srv,index,wot)
  %5754 = extractvalue %dx.types.ResRet.i32 %5753, 0
  %5755 = extractvalue %dx.types.ResRet.i32 %5753, 1
  br label %5756

; <label>:5756                                    ; preds = %5749, %5743
  %5757 = phi i32 [ %5754, %5749 ], [ %5665, %5743 ]
  %5758 = phi i32 [ %5755, %5749 ], [ %5666, %5743 ]
  store i32 %5757, i32* %5747, align 4
  store i32 %5758, i32* %5748, align 4
  %5759 = add i32 %5716, 1
  br label %5760

; <label>:5760                                    ; preds = %5756, %5715
  %5761 = phi i32 [ %5716, %5715 ], [ %5759, %5756 ]
  %5762 = add nuw i32 %5717, 1
  %5763 = icmp eq i32 %5762, %5712
  br i1 %5763, label %5764, label %5715

; <label>:5764                                    ; preds = %5760
  br label %5765

; <label>:5765                                    ; preds = %5764, %5709
  %5766 = phi i32 [ %5710, %5709 ], [ %5761, %5764 ]
  %5767 = icmp eq i32 %5766, 1
  %5768 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %5769 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %5767, label %5770, label %5773

; <label>:5770                                    ; preds = %5765
  %5771 = load float, float* %5768, align 4
  %5772 = load float, float* %5769, align 4
  br label %5800

; <label>:5773                                    ; preds = %5765
  %5774 = load float, float* %5768, align 4
  %5775 = load float, float* %5769, align 4
  %5776 = fdiv fast float 1.000000e+00, %5775
  %5777 = fsub fast float %5774, %5776
  %5778 = icmp ugt i32 %5766, 1
  br i1 %5778, label %5779, label %5795

; <label>:5779                                    ; preds = %5773
  br label %5780

; <label>:5780                                    ; preds = %5780, %5779
  %5781 = phi float [ %5790, %5780 ], [ %5777, %5779 ]
  %5782 = phi float [ %5791, %5780 ], [ %5774, %5779 ]
  %5783 = phi i32 [ %5792, %5780 ], [ 1, %5779 ]
  %5784 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %5783
  %5785 = load float, float* %5784, align 4
  %5786 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %5783
  %5787 = load float, float* %5786, align 4
  %5788 = fdiv fast float 1.000000e+00, %5787
  %5789 = fsub fast float %5785, %5788
  %5790 = call float @dx.op.binary.f32(i32 36, float %5781, float %5789)  ; FMin(a,b)
  %5791 = call float @dx.op.binary.f32(i32 35, float %5782, float %5785)  ; FMax(a,b)
  %5792 = add nuw i32 %5783, 1
  %5793 = icmp eq i32 %5792, %5766
  br i1 %5793, label %5794, label %5780

; <label>:5794                                    ; preds = %5780
  br label %5795

; <label>:5795                                    ; preds = %5794, %5773
  %5796 = phi float [ %5777, %5773 ], [ %5790, %5794 ]
  %5797 = phi float [ %5774, %5773 ], [ %5791, %5794 ]
  %5798 = fsub fast float %5797, %5796
  %5799 = fdiv fast float 1.000000e+00, %5798
  br label %5800

; <label>:5800                                    ; preds = %5795, %5770
  %5801 = phi float [ %5771, %5770 ], [ %5797, %5795 ]
  %5802 = phi float [ %5772, %5770 ], [ %5799, %5795 ]
  %5803 = fadd fast float %5504, %5801
  %5804 = fmul fast float %5803, %5802
  %5805 = call float @dx.op.unary.f32(i32 7, float %5804)  ; Saturate(value)
  %5806 = fmul fast float %5805, 2.000000e+00
  %5807 = fsub fast float 1.000000e+00, %5806
  %5808 = fmul fast float %5642, %5642
  %5809 = fsub fast float %5643, %5808
  %5810 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5809)  ; FMax(a,b)
  %5811 = fdiv fast float 1.000000e+00, %5810
  %5812 = fmul fast float %5643, %5642
  %5813 = fsub fast float %5644, %5812
  %5814 = fsub fast float %5807, %5642
  %5815 = fmul fast float %5807, %5807
  %5816 = fsub fast float %5815, %5643
  %5817 = fmul fast float %5811, %5813
  %5818 = fmul fast float %5817, %5814
  %5819 = fsub fast float %5816, %5818
  %5820 = fmul fast float %5643, %5643
  %5821 = fsub fast float %5645, %5820
  %5822 = fmul fast float %5813, %5813
  %5823 = fmul fast float %5822, %5811
  %5824 = fsub fast float %5821, %5823
  %5825 = fdiv fast float %5819, %5824
  %5826 = fmul fast float %5825, %5813
  %5827 = fsub fast float %5814, %5826
  %5828 = fmul fast float %5827, %5811
  %5829 = fmul fast float %5828, %5642
  %5830 = fsub fast float 1.000000e+00, %5829
  %5831 = fmul fast float %5825, %5643
  %5832 = fsub fast float %5830, %5831
  %5833 = fmul fast float %5828, %5828
  %5834 = fmul fast float %5825, 4.000000e+00
  %5835 = fmul fast float %5834, %5832
  %5836 = fsub fast float %5833, %5835
  %5837 = call float @dx.op.unary.f32(i32 24, float %5836)  ; Sqrt(value)
  %5838 = fcmp fast oge float %5828, 0.000000e+00
  %5839 = fsub fast float -0.000000e+00, %5837
  %5840 = select i1 %5838, float %5839, float %5837
  %5841 = fsub fast float %5840, %5828
  %5842 = fdiv fast float %5841, %5825
  %5843 = fdiv fast float %5832, %5841
  %5844 = fmul fast float %5842, 5.000000e-01
  %5845 = fmul fast float %5843, 2.000000e+00
  %5846 = select i1 %5838, float %5844, float %5845
  %5847 = select i1 %5838, float %5845, float %5844
  %5848 = call float @dx.op.binary.f32(i32 35, float %5846, float %5847)  ; FMax(a,b)
  %5849 = call float @dx.op.binary.f32(i32 36, float %5846, float %5847)  ; FMin(a,b)
  %5850 = fcmp fast ogt float %5807, %5848
  %5851 = fsub fast float %5807, %5849
  %5852 = fsub fast float %5807, %5848
  %5853 = fsub fast float %5848, %5849
  %5854 = select i1 %5850, float %5852, float %5853
  %5855 = fmul float %5851, %5854
  %5856 = select i1 %5850, float %5849, float %5807
  %5857 = fcmp fast ogt float %5807, %5849
  %5858 = fmul fast float %5856, %5848
  %5859 = fadd fast float %5856, %5848
  %5860 = fmul fast float %5859, %5642
  %5861 = fadd fast float %5858, %5643
  %5862 = fsub fast float %5861, %5860
  %5863 = fdiv fast float %5862, %5855
  %5864 = select i1 %5857, float %5863, float 0.000000e+00
  %5865 = fsub fast float 1.000000e+00, %5864
  %5866 = select i1 %5850, float %5865, float %5864
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5869 = fmul fast float %5868, %5867
  %5870 = fsub fast float 1.000000e+00, %5869
  br label %5871

; <label>:5871                                    ; preds = %5800, %5512, %5477, %5473, %5439
  %5872 = phi float [ 1.000000e+00, %5439 ], [ %5870, %5800 ], [ 1.000000e+00, %5477 ], [ 1.000000e+00, %5512 ], [ 1.000000e+00, %5473 ]
  %5873 = fcmp fast ogt float %5469, 0.000000e+00
  br i1 %5873, label %5874, label %5880, !dx.controlflow.hints !112

; <label>:5874                                    ; preds = %5871
  %5875 = fadd fast float %5382, %5356
  %5876 = call float @dx.op.binary.f32(i32 35, float %5875, float 0.000000e+00)  ; FMax(a,b)
  %5877 = fadd fast float %5876, 0x3F10000000000000
  %5878 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5371, float %5372, float undef, float undef, i32 0, i32 0, i32 undef, float %5877)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5879 = extractvalue %dx.types.ResRet.f32 %5878, 0
  br label %5880

; <label>:5880                                    ; preds = %5874, %5871
  %5881 = phi float [ %5879, %5874 ], [ 1.000000e+00, %5871 ]
  %5882 = fcmp fast ogt float %5467, 0.000000e+00
  br i1 %5882, label %5883, label %5889, !dx.controlflow.hints !113

; <label>:5883                                    ; preds = %5880
  %5884 = fadd fast float %5412, %5356
  %5885 = call float @dx.op.binary.f32(i32 35, float %5884, float 0.000000e+00)  ; FMax(a,b)
  %5886 = fadd fast float %5885, 0x3F10000000000000
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5363, float %5364, float undef, float undef, i32 0, i32 0, i32 undef, float %5886)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  br label %5889

; <label>:5889                                    ; preds = %5883, %5880
  %5890 = phi float [ %5888, %5883 ], [ 1.000000e+00, %5880 ]
  %5891 = fcmp fast ogt float %5466, 0.000000e+00
  br i1 %5891, label %5892, label %5899, !dx.controlflow.hints !114

; <label>:5892                                    ; preds = %5889
  %5893 = extractvalue %dx.types.CBufRet.f32 %5381, 0
  %5894 = fadd fast float %5893, %5356
  %5895 = call float @dx.op.binary.f32(i32 35, float %5894, float 0.000000e+00)  ; FMax(a,b)
  %5896 = fadd fast float %5895, 0x3F10000000000000
  %5897 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5348, float %5352, float undef, float undef, i32 0, i32 0, i32 undef, float %5896)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5898 = extractvalue %dx.types.ResRet.f32 %5897, 0
  br label %5899

; <label>:5899                                    ; preds = %5892, %5889
  %5900 = phi float [ %5898, %5892 ], [ 1.000000e+00, %5889 ]
  %5901 = fsub fast float %5881, %5872
  %5902 = fmul fast float %5901, %5410
  %5903 = fadd fast float %5902, %5872
  %5904 = fsub fast float %5890, %5903
  %5905 = fmul fast float %5904, %5440
  %5906 = fadd fast float %5905, %5903
  %5907 = fsub fast float %5900, %5906
  %5908 = fmul fast float %5907, %5466
  %5909 = fadd fast float %5908, %5906
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 2
  %5912 = fcmp fast ogt float %5911, 0.000000e+00
  br i1 %5912, label %5913, label %5953, !dx.controlflow.hints !115

; <label>:5913                                    ; preds = %5899
  %5914 = fcmp fast ugt float %5911, 0.000000e+00
  br i1 %5914, label %5915, label %5950

; <label>:5915                                    ; preds = %5913
  %5916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5917 = extractvalue %dx.types.CBufRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.CBufRet.f32 %5916, 1
  %5919 = extractvalue %dx.types.CBufRet.f32 %5916, 2
  %5920 = extractvalue %dx.types.CBufRet.f32 %5916, 3
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.CBufRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.CBufRet.f32 %5921, 2
  %5925 = extractvalue %dx.types.CBufRet.f32 %5921, 3
  %5926 = extractvalue %dx.types.CBufRet.f32 %5910, 0
  %5927 = extractvalue %dx.types.CBufRet.f32 %5910, 1
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.CBufRet.f32 %5928, 2
  %5932 = fadd fast float %5929, %5325
  %5933 = fadd fast float %5930, %5326
  %5934 = fadd fast float %5931, %5327
  %5935 = fmul fast float %5932, %5917
  %5936 = call float @dx.op.tertiary.f32(i32 46, float %5918, float %5933, float %5935)  ; FMad(a,b,c)
  %5937 = call float @dx.op.tertiary.f32(i32 46, float %5919, float %5934, float %5936)  ; FMad(a,b,c)
  %5938 = fadd fast float %5937, %5920
  %5939 = fmul fast float %5932, %5922
  %5940 = call float @dx.op.tertiary.f32(i32 46, float %5923, float %5933, float %5939)  ; FMad(a,b,c)
  %5941 = call float @dx.op.tertiary.f32(i32 46, float %5924, float %5934, float %5940)  ; FMad(a,b,c)
  %5942 = fadd fast float %5941, %5925
  %5943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5938, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 0
  %5945 = fmul fast float %5944, %5927
  %5946 = fadd fast float %5945, %5926
  %5947 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5948 = fmul fast float %5947, %5911
  %5949 = fsub fast float 1.000000e+00, %5948
  br label %5950

; <label>:5950                                    ; preds = %5915, %5913
  %5951 = phi float [ %5949, %5915 ], [ 1.000000e+00, %5913 ]
  %5952 = fmul fast float %5951, %5909
  br label %5953

; <label>:5953                                    ; preds = %5950, %5899, %5305
  %5954 = phi float [ 1.000000e+00, %5305 ], [ %5952, %5950 ], [ %5909, %5899 ]
  %5955 = call float @dx.op.binary.f32(i32 36, float %5954, float %5954)  ; FMin(a,b)
  %5956 = call float @dx.op.binary.f32(i32 36, float %5954, float %5955)  ; FMin(a,b)
  %5957 = fcmp fast ogt float %5956, 0.000000e+00
  br i1 %5957, label %5958, label %6118, !dx.controlflow.hints !116

; <label>:5958                                    ; preds = %5953
  %5959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5960 = extractvalue %dx.types.CBufRet.f32 %5959, 0
  %5961 = extractvalue %dx.types.CBufRet.f32 %5959, 1
  %5962 = extractvalue %dx.types.CBufRet.f32 %5959, 2
  %5963 = extractvalue %dx.types.CBufRet.f32 %5959, 3
  %5964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5965 = extractvalue %dx.types.CBufRet.f32 %5964, 0
  %5966 = extractvalue %dx.types.CBufRet.f32 %5964, 1
  %5967 = extractvalue %dx.types.CBufRet.f32 %5964, 2
  %5968 = extractvalue %dx.types.CBufRet.f32 %5964, 3
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.CBufRet.f32 %5969, 1
  %5972 = extractvalue %dx.types.CBufRet.f32 %5969, 2
  %5973 = extractvalue %dx.types.CBufRet.f32 %5969, 3
  %5974 = fmul fast float %5960, %5325
  %5975 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5961, float %5974)  ; FMad(a,b,c)
  %5976 = call float @dx.op.tertiary.f32(i32 46, float %5327, float %5962, float %5975)  ; FMad(a,b,c)
  %5977 = fadd fast float %5976, %5963
  %5978 = fmul fast float %5965, %5325
  %5979 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5966, float %5978)  ; FMad(a,b,c)
  %5980 = call float @dx.op.tertiary.f32(i32 46, float %5327, float %5967, float %5979)  ; FMad(a,b,c)
  %5981 = fadd fast float %5980, %5968
  %5982 = fmul fast float %5970, %5325
  %5983 = call float @dx.op.tertiary.f32(i32 46, float %5326, float %5971, float %5982)  ; FMad(a,b,c)
  %5984 = call float @dx.op.tertiary.f32(i32 46, float %5327, float %5972, float %5983)  ; FMad(a,b,c)
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.CBufRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.CBufRet.f32 %5985, 3
  %5989 = fmul fast float %5988, %5977
  %5990 = fmul fast float %5988, %5981
  %5991 = fadd fast float %5989, %5986
  %5992 = fadd fast float %5990, %5987
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.CBufRet.f32 %5993, 1
  %5996 = fsub fast float %5991, %5994
  %5997 = fsub fast float %5992, %5995
  %5998 = fcmp fast olt float %5996, 0.000000e+00
  %5999 = fcmp fast olt float %5997, 0.000000e+00
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.CBufRet.f32 %6000, 2
  %6004 = extractvalue %dx.types.CBufRet.f32 %6000, 3
  %6005 = select i1 %5998, float %6001, float %6003
  %6006 = select i1 %5999, float %6002, float %6004
  %6007 = fmul fast float %6005, %5996
  %6008 = fmul fast float %6006, %5997
  %6009 = call float @dx.op.unary.f32(i32 6, float %6007)  ; FAbs(value)
  %6010 = call float @dx.op.unary.f32(i32 6, float %6008)  ; FAbs(value)
  %6011 = extractvalue %dx.types.CBufRet.f32 %5320, 0
  %6012 = call float @dx.op.binary.f32(i32 35, float %6009, float %6010)  ; FMax(a,b)
  %6013 = fsub fast float %6011, %6012
  %6014 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6015 = fcmp fast ogt float %6014, 0.000000e+00
  br i1 %6015, label %6016, label %6057, !dx.controlflow.hints !117

; <label>:6016                                    ; preds = %5958
  %6017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5991, float %5992, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6018 = extractvalue %dx.types.ResRet.f32 %6017, 1
  %6019 = fcmp fast ogt float %6018, 0.000000e+00
  br i1 %6019, label %6020, label %6052

; <label>:6020                                    ; preds = %6016
  %6021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5991, float %5992, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.ResRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.ResRet.f32 %6021, 2
  %6025 = extractvalue %dx.types.ResRet.f32 %6021, 3
  %6026 = fsub fast float 1.000000e+00, %5973
  %6027 = fsub fast float %6026, %5984
  %6028 = fmul fast float %6027, 0x400921FB60000000
  %6029 = fadd fast float %6028, 0x3FF921FB60000000
  %6030 = call float @dx.op.unary.f32(i32 13, float %6029)  ; Sin(value)
  %6031 = fadd fast float %6030, -1.000000e+00
  %6032 = fmul fast float %6031, 0x3FD45F3060000000
  %6033 = fmul fast float %6027, 0x401921FB60000000
  %6034 = fadd fast float %6033, 0x400921FB60000000
  %6035 = call float @dx.op.unary.f32(i32 13, float %6034)  ; Sin(value)
  %6036 = fadd fast float %6035, 0x3E7777A5C0000000
  %6037 = fmul fast float %6036, 0x3FC45F3060000000
  %6038 = fmul fast float %6027, 0x4022D97C80000000
  %6039 = fadd fast float %6038, 0x4012D97C80000000
  %6040 = call float @dx.op.unary.f32(i32 13, float %6039)  ; Sin(value)
  %6041 = fadd fast float %6040, 1.000000e+00
  %6042 = fmul fast float %6041, 0x3FBB2995E0000000
  %6043 = fmul fast float %6027, 0x402921FB60000000
  %6044 = fadd fast float %6043, 0x401921FB60000000
  %6045 = call float @dx.op.unary.f32(i32 13, float %6044)  ; Sin(value)
  %6046 = fadd fast float %6045, 0xBE8777A5C0000000
  %6047 = fmul fast float %6046, 0x3FB45F3060000000
  %6048 = call float @dx.op.dot4.f32(i32 56, float %6022, float %6023, float %6024, float %6025, float %6032, float %6037, float %6042, float %6047)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6049 = fmul fast float %6048, 0xBFF7154760000000
  %6050 = call float @dx.op.unary.f32(i32 21, float %6049)  ; Exp(value)
  %6051 = call float @dx.op.unary.f32(i32 7, float %6050)  ; Saturate(value)
  br label %6052

; <label>:6052                                    ; preds = %6020, %6016
  %6053 = phi float [ %6051, %6020 ], [ 1.000000e+00, %6016 ]
  %6054 = fadd fast float %6053, -1.000000e+00
  %6055 = fmul fast float %6054, %6014
  %6056 = fadd fast float %6055, 1.000000e+00
  br label %6057

; <label>:6057                                    ; preds = %6052, %5958
  %6058 = phi float [ %6056, %6052 ], [ 1.000000e+00, %5958 ]
  %6059 = fmul fast float %6058, %5954
  %6060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.CBufRet.f32 %6060, 1
  %6063 = extractvalue %dx.types.CBufRet.f32 %6060, 2
  %6064 = fadd fast float %6061, %161
  %6065 = fadd fast float %6062, %162
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6068 = fsub fast float -0.000000e+00, %6064
  %6069 = fsub fast float -0.000000e+00, %6065
  %6070 = fsub fast float %4919, %6063
  %6071 = fadd fast float %6070, %6067
  %6072 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6068, float %6069, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6073 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5306, float %5307, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = fdiv fast float 1.000000e+00, %6073
  %6075 = fmul fast float %6074, %6072
  %6076 = fmul fast float %5306, %6075
  %6077 = fmul fast float %5307, %6075
  %6078 = fadd fast float %6076, %6064
  %6079 = fadd fast float %6077, %6065
  %6080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.f32 %6080, 0
  %6082 = extractvalue %dx.types.CBufRet.f32 %6080, 1
  %6083 = fsub fast float %6078, %6081
  %6084 = fsub fast float %6079, %6082
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 2
  %6087 = extractvalue %dx.types.CBufRet.f32 %6085, 3
  %6088 = fmul fast float %6083, %6086
  %6089 = fmul fast float %6084, %6087
  %6090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.i32 %6090, 3
  %6092 = icmp eq i32 %6091, 0
  br i1 %6092, label %6098, label %6093

; <label>:6093                                    ; preds = %6057
  %6094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6088, float %6089, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6095 = extractvalue %dx.types.ResRet.f32 %6094, 0
  %6096 = extractvalue %dx.types.ResRet.f32 %6094, 1
  %6097 = extractvalue %dx.types.ResRet.f32 %6094, 2
  br label %6103

; <label>:6098                                    ; preds = %6057
  %6099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6088, float %6089, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6100 = extractvalue %dx.types.ResRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.ResRet.f32 %6099, 1
  %6102 = extractvalue %dx.types.ResRet.f32 %6099, 2
  br label %6103

; <label>:6103                                    ; preds = %6098, %6093
  %6104 = phi float [ %6095, %6093 ], [ %6100, %6098 ]
  %6105 = phi float [ %6096, %6093 ], [ %6101, %6098 ]
  %6106 = phi float [ %6097, %6093 ], [ %6102, %6098 ]
  %6107 = extractvalue %dx.types.CBufRet.f32 %6066, 2
  %6108 = fmul fast float %6107, %6104
  %6109 = extractvalue %dx.types.CBufRet.f32 %6066, 0
  %6110 = fsub fast float %6075, %6109
  %6111 = fsub fast float %6110, %6108
  %6112 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6111)  ; FMax(a,b)
  %6113 = fmul fast float %6112, %6105
  %6114 = call float @dx.op.binary.f32(i32 36, float %6106, float %6113)  ; FMin(a,b)
  %6115 = fmul fast float %6114, 0xBFF7154760000000
  %6116 = call float @dx.op.unary.f32(i32 21, float %6115)  ; Exp(value)
  %6117 = fmul fast float %6059, %6116
  br label %6118

; <label>:6118                                    ; preds = %6103, %5953
  %6119 = phi float [ %6117, %6103 ], [ %5954, %5953 ]
  %6120 = call float @dx.op.binary.f32(i32 36, float %6119, float %6119)  ; FMin(a,b)
  %6121 = call float @dx.op.binary.f32(i32 36, float %6119, float %6120)  ; FMin(a,b)
  %6122 = fcmp fast ogt float %6121, 0.000000e+00
  br i1 %6122, label %6123, label %6384, !dx.controlflow.hints !118

; <label>:6123                                    ; preds = %6118
  %6124 = fmul fast float %6119, %5317
  %6125 = fmul fast float %6119, %5318
  %6126 = fmul fast float %6119, %5319
  %6127 = fsub fast float %163, %4707
  %6128 = fcmp fast ogt float %6127, 0.000000e+00
  %6129 = fmul fast float %5306, 5.120000e+02
  %6130 = fmul fast float %5307, 5.120000e+02
  %6131 = fmul fast float %5308, 5.120000e+02
  %6132 = fadd fast float %6131, %163
  %6133 = fsub fast float %4707, %6132
  %6134 = fmul fast float %6133, 2.000000e+00
  %6135 = fadd fast float %6134, %6132
  %6136 = select i1 %6128, float %6135, float %6132
  %6137 = fsub fast float %6136, %163
  %6138 = call float @dx.op.dot3.f32(i32 55, float %6129, float %6130, float %6137, float %6129, float %6130, float %6137)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = call float @dx.op.unary.f32(i32 25, float %6138)  ; Rsqrt(value)
  %6140 = fmul fast float %6139, %6129
  %6141 = fmul fast float %6139, %6130
  %6142 = fmul fast float %6139, %6137
  %6143 = fsub fast float %4707, %163
  %6144 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6143)  ; Dot3(ax,ay,az,bx,by,bz)
  %6145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6140, float %6141, float %6142)  ; Dot3(ax,ay,az,bx,by,bz)
  %6146 = fdiv fast float 1.000000e+00, %6145
  %6147 = fmul fast float %6146, %6144
  %6148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6127, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6149 = fcmp fast ogt float %6148, 0.000000e+00
  %6150 = fcmp fast olt float %6148, 0.000000e+00
  %6151 = zext i1 %6149 to i32
  %6152 = zext i1 %6150 to i32
  %6153 = sub nsw i32 %6151, %6152
  %6154 = sitofp i32 %6153 to float
  %6155 = fsub fast float %6136, %4707
  %6156 = call float @dx.op.dot3.f32(i32 55, float %6129, float %6130, float %6155, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6157 = fcmp fast ogt float %6156, 0.000000e+00
  %6158 = fcmp fast olt float %6156, 0.000000e+00
  %6159 = zext i1 %6157 to i32
  %6160 = zext i1 %6158 to i32
  %6161 = sub nsw i32 %6159, %6160
  %6162 = sitofp i32 %6161 to float
  %6163 = fcmp fast une float %6154, %6162
  br i1 %6163, label %6164, label %6174

; <label>:6164                                    ; preds = %6123
  %6165 = fmul fast float %6147, %6142
  %6166 = fmul fast float %6147, %6141
  %6167 = fmul fast float %6147, %6140
  %6168 = fmul fast float %6167, %6167
  %6169 = fmul fast float %6166, %6166
  %6170 = fadd fast float %6168, %6169
  %6171 = fmul fast float %6165, %6165
  %6172 = fadd fast float %6170, %6171
  %6173 = call float @dx.op.unary.f32(i32 24, float %6172)  ; Sqrt(value)
  br label %6184

; <label>:6174                                    ; preds = %6123
  %6175 = icmp slt i32 %6153, 0
  br i1 %6175, label %6176, label %6184

; <label>:6176                                    ; preds = %6174
  %6177 = fsub fast float %163, %6136
  %6178 = fmul fast float %6129, %6129
  %6179 = fmul fast float %6130, %6130
  %6180 = fadd fast float %6178, %6179
  %6181 = fmul fast float %6177, %6177
  %6182 = fadd fast float %6180, %6181
  %6183 = call float @dx.op.unary.f32(i32 24, float %6182)  ; Sqrt(value)
  br label %6184

; <label>:6184                                    ; preds = %6176, %6174, %6164
  %6185 = phi float [ %6173, %6164 ], [ %6183, %6176 ], [ 0.000000e+00, %6174 ]
  %6186 = fsub fast float -0.000000e+00, %6185
  %6187 = select i1 %6128, float -0.000000e+00, float %6186
  %6188 = fmul fast float %4708, 0x3FF7154760000000
  %6189 = fmul fast float %6188, %6187
  %6190 = fmul fast float %4709, 0x3FF7154760000000
  %6191 = fmul fast float %6190, %6187
  %6192 = fmul fast float %4710, 0x3FF7154760000000
  %6193 = fmul fast float %6192, %6187
  %6194 = call float @dx.op.unary.f32(i32 21, float %6189)  ; Exp(value)
  %6195 = call float @dx.op.unary.f32(i32 21, float %6191)  ; Exp(value)
  %6196 = call float @dx.op.unary.f32(i32 21, float %6193)  ; Exp(value)
  %6197 = call float @dx.op.unary.f32(i32 7, float %6194)  ; Saturate(value)
  %6198 = call float @dx.op.unary.f32(i32 7, float %6195)  ; Saturate(value)
  %6199 = call float @dx.op.unary.f32(i32 7, float %6196)  ; Saturate(value)
  %6200 = fmul fast float %6124, %6197
  %6201 = fmul fast float %6125, %6198
  %6202 = fmul fast float %6126, %6199
  %6203 = fsub fast float %5306, %4907
  %6204 = fsub fast float %5307, %4906
  %6205 = fsub fast float %5308, %4905
  %6206 = call float @dx.op.dot3.f32(i32 55, float %6203, float %6204, float %6205, float %6203, float %6204, float %6205)  ; Dot3(ax,ay,az,bx,by,bz)
  %6207 = call float @dx.op.unary.f32(i32 25, float %6206)  ; Rsqrt(value)
  %6208 = fmul fast float %6207, %6203
  %6209 = fmul fast float %6207, %6204
  %6210 = fmul fast float %6207, %6205
  %6211 = call float @dx.op.dot3.f32(i32 55, float %5306, float %5307, float %5308, float %4908, float %4909, float %4910)  ; Dot3(ax,ay,az,bx,by,bz)
  %6212 = call float @dx.op.dot3.f32(i32 55, float %4904, float %4903, float %4902, float %6208, float %6209, float %6210)  ; Dot3(ax,ay,az,bx,by,bz)
  %6213 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  %6214 = fmul fast float %6213, %6213
  %6215 = fmul fast float %6214, %4970
  %6216 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6217 = fmul fast float %6216, %6213
  %6218 = call float @dx.op.dot3.f32(i32 55, float %4908, float %4909, float %4910, float %6208, float %6209, float %6210)  ; Dot3(ax,ay,az,bx,by,bz)
  %6219 = fmul fast float %6218, %6218
  %6220 = call float @dx.op.unary.f32(i32 6, float %6211)  ; FAbs(value)
  %6221 = fsub fast float 1.000000e+00, %4917
  %6222 = call float @dx.op.binary.f32(i32 35, float %6221, float 0x3F847AE140000000)  ; FMax(a,b)
  %6223 = fmul fast float %6222, %6222
  %6224 = fmul fast float %6223, %6223
  %6225 = fsub fast float 1.000000e+00, %6224
  %6226 = fmul fast float %4922, %4922
  %6227 = fmul fast float %6226, %6225
  %6228 = fadd fast float %6227, %6224
  %6229 = bitcast float %6228 to i32
  %6230 = ashr i32 %6229, 1
  %6231 = add nsw i32 %6230, 532487669
  %6232 = bitcast i32 %6231 to float
  %6233 = fadd fast float %6232, %4922
  %6234 = call float @dx.op.dot3.f32(i32 55, float %4344, float %4345, float %4346, float %6208, float %6209, float %6210)  ; Dot3(ax,ay,az,bx,by,bz)
  %6235 = fsub fast float 1.000000e+00, %4332
  %6236 = call float @dx.op.binary.f32(i32 35, float %6235, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6237 = fmul fast float %6236, %6236
  %6238 = fmul fast float %6237, %6224
  %6239 = fmul fast float %6234, %6234
  %6240 = fsub fast float 1.000000e+00, %6219
  %6241 = fsub fast float %6240, %6239
  %6242 = fdiv fast float %6239, %6238
  %6243 = fadd fast float %6242, %6219
  %6244 = fdiv fast float %6241, %6224
  %6245 = fadd fast float %6243, %6244
  %6246 = fmul fast float %6220, %6220
  %6247 = fmul fast float %6246, %6225
  %6248 = fadd fast float %6247, %6224
  %6249 = bitcast float %6248 to i32
  %6250 = ashr i32 %6249, 1
  %6251 = add nsw i32 %6250, 532487669
  %6252 = bitcast i32 %6251 to float
  %6253 = fadd fast float %6252, %6220
  %6254 = fmul fast float %6224, %6236
  %6255 = fmul fast float %6245, %6245
  %6256 = fmul fast float %6255, %6254
  %6257 = fmul fast float %6256, %6233
  %6258 = fmul fast float %6257, %6253
  %6259 = fdiv fast float 0x3FF0A00000000000, %6258
  %6260 = call float @dx.op.unary.f32(i32 6, float %6212)  ; FAbs(value)
  %6261 = fsub fast float 1.000000e+00, %6260
  %6262 = bitcast float %6261 to i32
  %6263 = sitofp i32 %6262 to float
  %6264 = fmul fast float %6263, 5.000000e+00
  %6265 = fadd fast float %6264, 0xC1EFBF8940000000
  %6266 = fptosi float %6265 to i32
  %6267 = bitcast i32 %6266 to float
  %6268 = fsub fast float 1.000000e+00, %4914
  %6269 = fsub fast float 1.000000e+00, %4915
  %6270 = fsub fast float 1.000000e+00, %4920
  %6271 = fmul fast float %6267, %6268
  %6272 = fmul fast float %6267, %6269
  %6273 = fmul fast float %6267, %6270
  %6274 = fadd fast float %6271, %4914
  %6275 = fadd fast float %6272, %4915
  %6276 = fadd fast float %6273, %4920
  br i1 %5217, label %6277, label %6300

; <label>:6277                                    ; preds = %6184
  %6278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4257, float %6260, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6279 = extractvalue %dx.types.ResRet.f32 %6278, 0
  %6280 = extractvalue %dx.types.ResRet.f32 %6278, 1
  %6281 = extractvalue %dx.types.ResRet.f32 %6278, 2
  %6282 = fadd fast float %6279, -5.000000e-01
  %6283 = fadd fast float %6280, -5.000000e-01
  %6284 = fadd fast float %6281, -5.000000e-01
  %6285 = fmul fast float %4914, 4.000000e+00
  %6286 = fmul fast float %6285, %6268
  %6287 = fmul fast float %6286, %6282
  %6288 = fmul fast float %4915, 4.000000e+00
  %6289 = fmul fast float %6288, %6269
  %6290 = fmul fast float %6289, %6283
  %6291 = fmul fast float %4920, 4.000000e+00
  %6292 = fmul fast float %6291, %6270
  %6293 = fmul fast float %6292, %6284
  %6294 = fadd fast float %6287, %6274
  %6295 = fadd fast float %6290, %6275
  %6296 = fadd fast float %6293, %6276
  %6297 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6298 = call float @dx.op.unary.f32(i32 7, float %6295)  ; Saturate(value)
  %6299 = call float @dx.op.unary.f32(i32 7, float %6296)  ; Saturate(value)
  br label %6300

; <label>:6300                                    ; preds = %6277, %6184
  %6301 = phi float [ %6297, %6277 ], [ %6274, %6184 ]
  %6302 = phi float [ %6298, %6277 ], [ %6275, %6184 ]
  %6303 = phi float [ %6299, %6277 ], [ %6276, %6184 ]
  %6304 = fmul fast float %6211, 9.843750e-01
  %6305 = fadd fast float %6304, 7.812500e-03
  %6306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6305, float %5207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6307 = extractvalue %dx.types.ResRet.f32 %6306, 2
  %6308 = extractvalue %dx.types.ResRet.f32 %6306, 3
  %6309 = fmul fast float %6307, %4914
  %6310 = fmul fast float %6307, %4915
  %6311 = fmul fast float %6307, %4920
  %6312 = fadd fast float %6309, %6308
  %6313 = fadd fast float %6310, %6308
  %6314 = fadd fast float %6311, %6308
  br i1 %5217, label %6315, label %6338

; <label>:6315                                    ; preds = %6300
  %6316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4257, float %6211, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6317 = extractvalue %dx.types.ResRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.ResRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.ResRet.f32 %6316, 2
  %6320 = fadd fast float %6317, -5.000000e-01
  %6321 = fadd fast float %6318, -5.000000e-01
  %6322 = fadd fast float %6319, -5.000000e-01
  %6323 = fmul fast float %4914, 4.000000e+00
  %6324 = fmul fast float %6323, %6268
  %6325 = fmul fast float %6324, %6320
  %6326 = fmul fast float %4915, 4.000000e+00
  %6327 = fmul fast float %6326, %6269
  %6328 = fmul fast float %6327, %6321
  %6329 = fmul fast float %4920, 4.000000e+00
  %6330 = fmul fast float %6329, %6270
  %6331 = fmul fast float %6330, %6322
  %6332 = fadd fast float %6325, %6312
  %6333 = fadd fast float %6328, %6313
  %6334 = fadd fast float %6331, %6314
  %6335 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6336 = call float @dx.op.unary.f32(i32 7, float %6333)  ; Saturate(value)
  %6337 = call float @dx.op.unary.f32(i32 7, float %6334)  ; Saturate(value)
  br label %6338

; <label>:6338                                    ; preds = %6315, %6300
  %6339 = phi float [ %6335, %6315 ], [ %6312, %6300 ]
  %6340 = phi float [ %6336, %6315 ], [ %6313, %6300 ]
  %6341 = phi float [ %6337, %6315 ], [ %6314, %6300 ]
  %6342 = call float @dx.op.binary.f32(i32 35, float %6340, float %6341)  ; FMax(a,b)
  %6343 = call float @dx.op.binary.f32(i32 35, float %6339, float %6342)  ; FMax(a,b)
  %6344 = fsub fast float 1.000000e+00, %6343
  %6345 = fmul fast float %6301, %6259
  %6346 = fmul fast float %6302, %6259
  %6347 = fmul fast float %6303, %6259
  %6348 = fsub fast float 1.000000e+00, %6212
  %6349 = bitcast float %6348 to i32
  %6350 = sitofp i32 %6349 to float
  %6351 = fmul fast float %6350, 5.000000e+00
  %6352 = fadd fast float %6351, 0xC1EFBF8940000000
  %6353 = fptosi float %6352 to i32
  %6354 = bitcast i32 %6353 to float
  %6355 = fmul fast float %6354, %4258
  %6356 = fmul fast float %6344, %6355
  %6357 = fmul fast float %6356, %5267
  %6358 = fmul fast float %6356, %5268
  %6359 = fmul fast float %6356, %5269
  %6360 = fadd fast float %6357, %6345
  %6361 = fadd fast float %6358, %6346
  %6362 = fadd fast float %6359, %6347
  %6363 = fmul fast float %6217, %6200
  %6364 = fmul fast float %6363, %6344
  %6365 = fmul fast float %6217, %6201
  %6366 = fmul fast float %6365, %6344
  %6367 = fmul fast float %6217, %6202
  %6368 = fmul fast float %6367, %6344
  %6369 = fmul fast float %6363, %6360
  %6370 = fmul fast float %6365, %6361
  %6371 = fmul fast float %6367, %6362
  %6372 = fadd fast float %6364, %5251
  %6373 = fmul fast float %6372, %4254
  %6374 = fadd fast float %6366, %5252
  %6375 = fmul fast float %6374, %4254
  %6376 = fadd fast float %6368, %5253
  %6377 = fmul fast float %6376, %4254
  %6378 = fadd fast float %6369, %5294
  %6379 = fmul fast float %6378, %4254
  %6380 = fadd fast float %6370, %5297
  %6381 = fmul fast float %6380, %4254
  %6382 = fadd fast float %6371, %5300
  %6383 = fmul fast float %6382, %4254
  br label %6384

; <label>:6384                                    ; preds = %6338, %6118, %5244
  %6385 = phi float [ %5295, %5244 ], [ %5295, %6118 ], [ %6379, %6338 ]
  %6386 = phi float [ %5298, %5244 ], [ %5298, %6118 ], [ %6381, %6338 ]
  %6387 = phi float [ %5301, %5244 ], [ %5301, %6118 ], [ %6383, %6338 ]
  %6388 = phi float [ %5290, %5244 ], [ %5290, %6118 ], [ %6373, %6338 ]
  %6389 = phi float [ %5291, %5244 ], [ %5291, %6118 ], [ %6375, %6338 ]
  %6390 = phi float [ %5292, %5244 ], [ %5292, %6118 ], [ %6377, %6338 ]
  %6391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.i32 %6391, 0
  %6393 = icmp eq i32 %6392, 0
  br i1 %6393, label %7024, label %6394

; <label>:6394                                    ; preds = %6384
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 2
  %6397 = extractvalue %dx.types.CBufRet.f32 %6395, 3
  %6398 = fmul fast float %6396, %102
  %6399 = fmul fast float %6397, %103
  %6400 = fptoui float %6398 to i32
  %6401 = fptoui float %6399 to i32
  %6402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6402, 0
  %6404 = extractvalue %dx.types.CBufRet.f32 %6402, 2
  %6405 = extractvalue %dx.types.CBufRet.f32 %6402, 3
  %6406 = fadd fast float %93, -4.000000e+00
  %6407 = call float @dx.op.binary.f32(i32 35, float %6406, float 0.000000e+00)  ; FMax(a,b)
  %6408 = fadd fast float %6407, %6403
  %6409 = fmul fast float %6408, %6404
  %6410 = call float @dx.op.unary.f32(i32 23, float %6409)  ; Log(value)
  %6411 = fmul fast float %6410, %6405
  %6412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.f32 %6412, 2
  %6414 = fmul fast float %6411, %6413
  %6415 = call float @dx.op.unary.f32(i32 7, float %6414)  ; Saturate(value)
  %6416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6417 = extractvalue %dx.types.CBufRet.i32 %6416, 1
  %6418 = add i32 %6417, -1
  %6419 = uitofp i32 %6417 to float
  %6420 = fmul fast float %6419, %6415
  %6421 = fptoui float %6420 to i32
  %6422 = call i32 @dx.op.binary.i32(i32 40, i32 %6421, i32 %6418)  ; UMin(a,b)
  %6423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6424 = extractvalue %dx.types.CBufRet.i32 %6423, 2
  %6425 = extractvalue %dx.types.CBufRet.i32 %6423, 3
  %6426 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6401, i32 %6424, i32 %6400)  ; UMad(a,b,c)
  %6427 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6422, i32 %6425, i32 %6426)  ; UMad(a,b,c)
  %6428 = add nsw i32 %6392, -1
  %6429 = call i32 @dx.op.binary.i32(i32 37, i32 %6428, i32 0)  ; IMax(a,b)
  %6430 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %6431 = fptoui float %6430 to i32
  %6432 = lshr i32 %6431, 5
  %6433 = call i32 @dx.op.binary.i32(i32 40, i32 %6432, i32 8191)  ; UMin(a,b)
  %6434 = shl i32 %6433, 2
  %6435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6434, i32 undef)  ; BufferLoad(srv,index,wot)
  %6436 = extractvalue %dx.types.ResRet.i32 %6435, 0
  %6437 = lshr i32 %6436, 16
  %6438 = and i32 %6436, 65535
  %6439 = lshr i32 %6436, 21
  %6440 = lshr i32 %6438, 5
  %6441 = call i32 @dx.op.binary.i32(i32 40, i32 %6440, i32 %6429)  ; UMin(a,b)
  %6442 = icmp ugt i32 %6439, %6441
  br i1 %6442, label %7024, label %6443

; <label>:6443                                    ; preds = %6394
  br label %6444

; <label>:6444                                    ; preds = %7014, %6443
  %6445 = phi i32 [ %7021, %7014 ], [ %6439, %6443 ]
  %6446 = phi float [ %7015, %7014 ], [ %6385, %6443 ]
  %6447 = phi float [ %7016, %7014 ], [ %6386, %6443 ]
  %6448 = phi float [ %7017, %7014 ], [ %6387, %6443 ]
  %6449 = phi float [ %7018, %7014 ], [ %6388, %6443 ]
  %6450 = phi float [ %7019, %7014 ], [ %6389, %6443 ]
  %6451 = phi float [ %7020, %7014 ], [ %6390, %6443 ]
  %6452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.i32 %6452, 0
  %6454 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6427, i32 %6453, i32 %6445)  ; UMad(a,b,c)
  %6455 = shl i32 %6454, 2
  %6456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6455, i32 undef)  ; BufferLoad(srv,index,wot)
  %6457 = extractvalue %dx.types.ResRet.i32 %6456, 0
  %6458 = shl i32 %6445, 5
  %6459 = sub nsw i32 %6437, %6458
  %6460 = call i32 @dx.op.binary.i32(i32 37, i32 %6459, i32 0)  ; IMax(a,b)
  %6461 = call i32 @dx.op.binary.i32(i32 38, i32 %6460, i32 31)  ; IMin(a,b)
  %6462 = sub nsw i32 1, %6437
  %6463 = add nsw i32 %6462, %6438
  %6464 = call i32 @dx.op.binary.i32(i32 37, i32 %6463, i32 0)  ; IMax(a,b)
  %6465 = call i32 @dx.op.binary.i32(i32 38, i32 %6464, i32 32)  ; IMin(a,b)
  %6466 = and i32 %6465, 31
  %6467 = shl i32 -1, %6466
  %6468 = xor i32 %6467, -1
  %6469 = and i32 %6461, 31
  %6470 = shl i32 %6468, %6469
  %6471 = icmp eq i32 %6465, 32
  %6472 = select i1 %6471, i32 -1, i32 %6470
  %6473 = and i32 %6472, %6457
  %6474 = icmp eq i32 %6473, 0
  br i1 %6474, label %7014, label %6475

; <label>:6475                                    ; preds = %6444
  br label %6476

; <label>:6476                                    ; preds = %6610, %6475
  %6477 = phi i32 [ %6488, %6610 ], [ %6473, %6475 ]
  %6478 = phi float [ %6611, %6610 ], [ %6446, %6475 ]
  %6479 = phi float [ %6612, %6610 ], [ %6447, %6475 ]
  %6480 = phi float [ %6613, %6610 ], [ %6448, %6475 ]
  %6481 = phi float [ %6614, %6610 ], [ %6449, %6475 ]
  %6482 = phi float [ %6615, %6610 ], [ %6450, %6475 ]
  %6483 = phi float [ %6616, %6610 ], [ %6451, %6475 ]
  %6484 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6477)  ; FirstbitLo(value)
  %6485 = add i32 %6484, %6458
  %6486 = and i32 %6484, 31
  %6487 = shl i32 1, %6486
  %6488 = xor i32 %6487, %6477
  %6489 = mul i32 %6485, 112
  %6490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6489, i32 undef)  ; BufferLoad(srv,index,wot)
  %6491 = extractvalue %dx.types.ResRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.ResRet.f32 %6490, 1
  %6493 = extractvalue %dx.types.ResRet.f32 %6490, 2
  %6494 = or i32 %6489, 12
  %6495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6494, i32 undef)  ; BufferLoad(srv,index,wot)
  %6496 = extractvalue %dx.types.ResRet.f32 %6495, 0
  %6497 = add i32 %6489, 16
  %6498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6497, i32 undef)  ; BufferLoad(srv,index,wot)
  %6499 = extractvalue %dx.types.ResRet.f32 %6498, 0
  %6500 = extractvalue %dx.types.ResRet.f32 %6498, 1
  %6501 = extractvalue %dx.types.ResRet.f32 %6498, 2
  %6502 = add i32 %6489, 28
  %6503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6502, i32 undef)  ; BufferLoad(srv,index,wot)
  %6504 = extractvalue %dx.types.ResRet.i32 %6503, 0
  %6505 = add i32 %6489, 44
  %6506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6505, i32 undef)  ; BufferLoad(srv,index,wot)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  %6508 = add i32 %6489, 48
  %6509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6508, i32 undef)  ; BufferLoad(srv,index,wot)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.ResRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.ResRet.f32 %6509, 2
  %6513 = extractvalue %dx.types.ResRet.f32 %6509, 3
  %6514 = add i32 %6489, 64
  %6515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6514, i32 undef)  ; BufferLoad(srv,index,wot)
  %6516 = extractvalue %dx.types.ResRet.f32 %6515, 0
  %6517 = extractvalue %dx.types.ResRet.f32 %6515, 1
  %6518 = extractvalue %dx.types.ResRet.f32 %6515, 2
  %6519 = extractvalue %dx.types.ResRet.f32 %6515, 3
  %6520 = add i32 %6489, 80
  %6521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6520, i32 undef)  ; BufferLoad(srv,index,wot)
  %6522 = extractvalue %dx.types.ResRet.f32 %6521, 1
  %6523 = extractvalue %dx.types.ResRet.f32 %6521, 2
  %6524 = add i32 %6489, 92
  %6525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6524, i32 undef)  ; BufferLoad(srv,index,wot)
  %6526 = extractvalue %dx.types.ResRet.i32 %6525, 0
  %6527 = call float @dx.op.dot3.f32(i32 55, float %6491, float %6492, float %6493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6528 = select i1 %223, float %6522, float %6491
  %6529 = select i1 %223, float %6527, float %6492
  %6530 = select i1 %223, float %6523, float %6493
  %6531 = and i32 %6526, 65535
  %6532 = uitofp i32 %6531 to float
  %6533 = lshr i32 %6526, 16
  %6534 = uitofp i32 %6533 to float
  %6535 = and i32 %6504, 65535
  %6536 = and i32 %6504, 50331648
  %6537 = icmp eq i32 %6536, 33554432
  %6538 = fsub fast float %6510, %161
  %6539 = fsub fast float %6511, %162
  %6540 = fsub fast float %6512, %163
  %6541 = call float @dx.op.dot3.f32(i32 55, float %6538, float %6539, float %6540, float %6538, float %6539, float %6540)  ; Dot3(ax,ay,az,bx,by,bz)
  %6542 = call float @dx.op.unary.f32(i32 24, float %6541)  ; Sqrt(value)
  %6543 = fdiv fast float 1.000000e+00, %6542
  %6544 = fmul fast float %6543, %6538
  %6545 = fmul fast float %6543, %6539
  %6546 = fmul fast float %6543, %6540
  %6547 = fadd fast float %6542, %6496
  %6548 = fdiv fast float 1.000000e+00, %6547
  %6549 = fmul float %6507, %6548
  %6550 = fmul float %6549, %6549
  %6551 = call float @dx.op.unary.f32(i32 7, float %6550)  ; Saturate(value)
  br i1 %6537, label %6552, label %6573

; <label>:6552                                    ; preds = %6476
  %6553 = fmul fast float %6518, %6499
  %6554 = fmul fast float %6518, %6500
  %6555 = fmul fast float %6518, %6501
  %6556 = fadd fast float %6538, %6553
  %6557 = fadd fast float %6539, %6554
  %6558 = fadd fast float %6540, %6555
  %6559 = call float @dx.op.dot3.f32(i32 55, float %6556, float %6557, float %6558, float %6556, float %6557, float %6558)  ; Dot3(ax,ay,az,bx,by,bz)
  %6560 = call float @dx.op.unary.f32(i32 25, float %6559)  ; Rsqrt(value)
  %6561 = fmul fast float %6560, %6556
  %6562 = fmul fast float %6560, %6557
  %6563 = fmul fast float %6560, %6558
  %6564 = fsub fast float %161, %6510
  %6565 = fsub fast float %162, %6511
  %6566 = fsub fast float %163, %6512
  %6567 = fsub fast float -0.000000e+00, %6564
  %6568 = fsub fast float -0.000000e+00, %6565
  %6569 = fsub fast float -0.000000e+00, %6566
  %6570 = call float @dx.op.dot3.f32(i32 55, float %6567, float %6568, float %6569, float %6499, float %6500, float %6501)  ; Dot3(ax,ay,az,bx,by,bz)
  %6571 = fcmp fast ogt float %6570, 0.000000e+00
  %6572 = uitofp i1 %6571 to float
  br label %6573

; <label>:6573                                    ; preds = %6552, %6476
  %6574 = phi float [ %6572, %6552 ], [ 1.000000e+00, %6476 ]
  %6575 = phi float [ %6561, %6552 ], [ %6544, %6476 ]
  %6576 = phi float [ %6562, %6552 ], [ %6545, %6476 ]
  %6577 = phi float [ %6563, %6552 ], [ %6546, %6476 ]
  %6578 = call float @dx.op.dot3.f32(i32 55, float %6499, float %6500, float %6501, float %6575, float %6576, float %6577)  ; Dot3(ax,ay,az,bx,by,bz)
  %6579 = fmul fast float %6578, %6578
  %6580 = call float @dx.op.unary.f32(i32 7, float %6579)  ; Saturate(value)
  %6581 = fsub fast float 1.000000e+00, %6580
  %6582 = fmul fast float %6581, 5.000000e-01
  %6583 = fcmp fast ogt float %6578, 0.000000e+00
  %6584 = fsub fast float 1.000000e+00, %6582
  %6585 = select i1 %6583, float %6582, float %6584
  %6586 = fmul fast float %6585, %6534
  %6587 = fadd fast float %6586, %6532
  %6588 = fmul fast float %6587, 0x3EF0001000000000
  %6589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6588, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6590 = extractvalue %dx.types.ResRet.f32 %6589, 0
  %6591 = fmul fast float %6578, %6516
  %6592 = fadd fast float %6591, %6517
  %6593 = call float @dx.op.unary.f32(i32 7, float %6592)  ; Saturate(value)
  %6594 = select i1 %6537, float 1.000000e+00, float %6593
  %6595 = select i1 %6537, float %6593, float 1.000000e+00
  %6596 = fmul fast float %6542, %6513
  %6597 = fsub fast float 1.000000e+00, %6596
  %6598 = fmul fast float %6597, %6519
  %6599 = call float @dx.op.unary.f32(i32 7, float %6598)  ; Saturate(value)
  %6600 = fmul fast float %6599, %6595
  %6601 = fmul fast float %6600, 2.000000e+00
  %6602 = fsub fast float 3.000000e+00, %6601
  %6603 = fmul fast float %6590, %6574
  %6604 = fmul fast float %6600, %6600
  %6605 = fmul fast float %6604, %6603
  %6606 = fmul fast float %6605, %6602
  %6607 = call float @dx.op.binary.f32(i32 36, float %6606, float %6606)  ; FMin(a,b)
  %6608 = call float @dx.op.binary.f32(i32 36, float %6606, float %6607)  ; FMin(a,b)
  %6609 = fcmp fast ogt float %6608, 0.000000e+00
  br i1 %6609, label %6618, label %6610, !dx.controlflow.hints !119

; <label>:6610                                    ; preds = %6970, %6718, %6573
  %6611 = phi float [ %6478, %6718 ], [ %6478, %6573 ], [ %7010, %6970 ]
  %6612 = phi float [ %6479, %6718 ], [ %6479, %6573 ], [ %7011, %6970 ]
  %6613 = phi float [ %6480, %6718 ], [ %6480, %6573 ], [ %7012, %6970 ]
  %6614 = phi float [ %6481, %6718 ], [ %6481, %6573 ], [ %7004, %6970 ]
  %6615 = phi float [ %6482, %6718 ], [ %6482, %6573 ], [ %7005, %6970 ]
  %6616 = phi float [ %6483, %6718 ], [ %6483, %6573 ], [ %7006, %6970 ]
  %6617 = icmp eq i32 %6477, %6487
  br i1 %6617, label %7013, label %6476

; <label>:6618                                    ; preds = %6573
  %6619 = icmp eq i32 %6535, 255
  br i1 %6619, label %6718, label %6620, !dx.controlflow.hints !120

; <label>:6620                                    ; preds = %6618
  %6621 = mul nuw nsw i32 %6535, 176
  %6622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6621, i32 undef)  ; BufferLoad(srv,index,wot)
  %6623 = extractvalue %dx.types.ResRet.f32 %6622, 0
  %6624 = extractvalue %dx.types.ResRet.f32 %6622, 1
  %6625 = extractvalue %dx.types.ResRet.f32 %6622, 2
  %6626 = extractvalue %dx.types.ResRet.f32 %6622, 3
  %6627 = add nuw nsw i32 %6621, 16
  %6628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6627, i32 undef)  ; BufferLoad(srv,index,wot)
  %6629 = extractvalue %dx.types.ResRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.ResRet.f32 %6628, 1
  %6631 = add nuw nsw i32 %6621, 32
  %6632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6631, i32 undef)  ; BufferLoad(srv,index,wot)
  %6633 = extractvalue %dx.types.ResRet.f32 %6632, 0
  %6634 = extractvalue %dx.types.ResRet.f32 %6632, 1
  %6635 = extractvalue %dx.types.ResRet.f32 %6632, 2
  %6636 = add nuw nsw i32 %6621, 48
  %6637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6636, i32 undef)  ; BufferLoad(srv,index,wot)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = extractvalue %dx.types.ResRet.f32 %6637, 1
  %6640 = extractvalue %dx.types.ResRet.f32 %6637, 2
  %6641 = extractvalue %dx.types.ResRet.f32 %6637, 3
  %6642 = add nuw nsw i32 %6621, 64
  %6643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6642, i32 undef)  ; BufferLoad(srv,index,wot)
  %6644 = extractvalue %dx.types.ResRet.f32 %6643, 0
  %6645 = extractvalue %dx.types.ResRet.f32 %6643, 1
  %6646 = extractvalue %dx.types.ResRet.f32 %6643, 2
  %6647 = extractvalue %dx.types.ResRet.f32 %6643, 3
  %6648 = add nuw nsw i32 %6621, 80
  %6649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6648, i32 undef)  ; BufferLoad(srv,index,wot)
  %6650 = extractvalue %dx.types.ResRet.f32 %6649, 0
  %6651 = extractvalue %dx.types.ResRet.f32 %6649, 1
  %6652 = extractvalue %dx.types.ResRet.f32 %6649, 2
  %6653 = extractvalue %dx.types.ResRet.f32 %6649, 3
  %6654 = add nuw nsw i32 %6621, 96
  %6655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6654, i32 undef)  ; BufferLoad(srv,index,wot)
  %6656 = extractvalue %dx.types.ResRet.f32 %6655, 0
  %6657 = extractvalue %dx.types.ResRet.f32 %6655, 1
  %6658 = extractvalue %dx.types.ResRet.f32 %6655, 2
  %6659 = extractvalue %dx.types.ResRet.f32 %6655, 3
  %6660 = bitcast float %6630 to i32
  %6661 = fmul fast float %6635, %111
  %6662 = fmul fast float %6635, %113
  %6663 = fmul fast float %6635, %115
  %6664 = fadd fast float %6661, %161
  %6665 = fadd fast float %6662, %162
  %6666 = fadd fast float %6663, %163
  %6667 = fmul fast float %6664, %6638
  %6668 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6644, float %6667)  ; FMad(a,b,c)
  %6669 = call float @dx.op.tertiary.f32(i32 46, float %6666, float %6650, float %6668)  ; FMad(a,b,c)
  %6670 = fadd fast float %6669, %6656
  %6671 = fmul fast float %6664, %6639
  %6672 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6645, float %6671)  ; FMad(a,b,c)
  %6673 = call float @dx.op.tertiary.f32(i32 46, float %6666, float %6651, float %6672)  ; FMad(a,b,c)
  %6674 = fadd fast float %6673, %6657
  %6675 = fmul fast float %6664, %6640
  %6676 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6646, float %6675)  ; FMad(a,b,c)
  %6677 = call float @dx.op.tertiary.f32(i32 46, float %6666, float %6652, float %6676)  ; FMad(a,b,c)
  %6678 = fadd fast float %6677, %6658
  %6679 = fmul fast float %6664, %6641
  %6680 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6647, float %6679)  ; FMad(a,b,c)
  %6681 = call float @dx.op.tertiary.f32(i32 46, float %6666, float %6653, float %6680)  ; FMad(a,b,c)
  %6682 = fadd fast float %6681, %6659
  %6683 = fdiv fast float %6670, %6682
  %6684 = fdiv fast float %6674, %6682
  %6685 = fdiv fast float %6678, %6682
  %6686 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6685)  ; FMax(a,b)
  %6687 = fmul fast float %234, 0x401921FB60000000
  %6688 = call float @dx.op.unary.f32(i32 13, float %6687)  ; Sin(value)
  %6689 = call float @dx.op.unary.f32(i32 12, float %6687)  ; Cos(value)
  %6690 = fsub fast float -0.000000e+00, %6688
  %6691 = fmul fast float %6625, 5.000000e-01
  %6692 = call float @dx.op.dot2.f32(i32 54, float %234, float %234, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6693 = call float @dx.op.unary.f32(i32 22, float %6692)  ; Frc(value)
  %6694 = fmul fast float %6693, 0x404A7DD040000000
  %6695 = call float @dx.op.unary.f32(i32 22, float %6694)  ; Frc(value)
  %6696 = fmul fast float %6695, %6634
  %6697 = fadd fast float %6696, %6691
  %6698 = call float @dx.op.tertiary.f32(i32 46, float %6697, float %6690, float 0.000000e+00)  ; FMad(a,b,c)
  %6699 = call float @dx.op.tertiary.f32(i32 46, float %6697, float %6689, float 0.000000e+00)  ; FMad(a,b,c)
  %6700 = fadd fast float %6698, %6683
  %6701 = fadd fast float %6699, %6684
  %6702 = fmul fast float %6700, %6629
  %6703 = fmul fast float %6701, %6629
  %6704 = call float @dx.op.binary.f32(i32 35, float %6702, float %6625)  ; FMax(a,b)
  %6705 = call float @dx.op.binary.f32(i32 35, float %6703, float %6625)  ; FMax(a,b)
  %6706 = call float @dx.op.binary.f32(i32 36, float %6704, float %6626)  ; FMin(a,b)
  %6707 = call float @dx.op.binary.f32(i32 36, float %6705, float %6626)  ; FMin(a,b)
  %6708 = fadd fast float %6706, %6623
  %6709 = fadd fast float %6707, %6624
  %6710 = uitofp i32 %6660 to float
  %6711 = fadd fast float %6686, %6633
  %6712 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6708, float %6709, float %6710, float undef, i32 0, i32 0, i32 undef, float %6711)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6713 = extractvalue %dx.types.ResRet.f32 %6712, 0
  %6714 = fadd fast float %6713, -1.000000e+00
  %6715 = fmul fast float %6714, %6594
  %6716 = fadd fast float %6715, 1.000000e+00
  %6717 = fmul fast float %6716, %6606
  br label %6718

; <label>:6718                                    ; preds = %6620, %6618
  %6719 = phi float [ %6717, %6620 ], [ %6606, %6618 ]
  %6720 = call float @dx.op.binary.f32(i32 36, float %6719, float %6719)  ; FMin(a,b)
  %6721 = call float @dx.op.binary.f32(i32 36, float %6719, float %6720)  ; FMin(a,b)
  %6722 = fcmp fast ogt float %6721, 0.000000e+00
  br i1 %6722, label %6723, label %6610, !dx.controlflow.hints !121

; <label>:6723                                    ; preds = %6718
  %6724 = fmul fast float %6719, %6528
  %6725 = fmul fast float %6719, %6529
  %6726 = fmul fast float %6719, %6530
  %6727 = fsub fast float %6512, %4707
  %6728 = fcmp fast ogt float %6727, 0.000000e+00
  %6729 = fsub fast float %163, %4707
  %6730 = fcmp fast ogt float %6729, 0.000000e+00
  %6731 = xor i1 %6730, %6728
  %6732 = fsub fast float %4707, %6512
  %6733 = fmul fast float %6732, 2.000000e+00
  %6734 = fadd fast float %6733, %6512
  %6735 = select i1 %6731, float %6512, float %6734
  %6736 = fsub fast float %6735, %163
  %6737 = call float @dx.op.dot3.f32(i32 55, float %6538, float %6539, float %6736, float %6538, float %6539, float %6736)  ; Dot3(ax,ay,az,bx,by,bz)
  %6738 = call float @dx.op.unary.f32(i32 25, float %6737)  ; Rsqrt(value)
  %6739 = fmul fast float %6738, %6538
  %6740 = fmul fast float %6738, %6539
  %6741 = fmul fast float %6738, %6736
  %6742 = fsub fast float %4707, %163
  %6743 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6742)  ; Dot3(ax,ay,az,bx,by,bz)
  %6744 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6739, float %6740, float %6741)  ; Dot3(ax,ay,az,bx,by,bz)
  %6745 = fdiv fast float 1.000000e+00, %6744
  %6746 = fmul fast float %6745, %6743
  %6747 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6729, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6748 = fcmp fast ogt float %6747, 0.000000e+00
  %6749 = fcmp fast olt float %6747, 0.000000e+00
  %6750 = zext i1 %6748 to i32
  %6751 = zext i1 %6749 to i32
  %6752 = sub nsw i32 %6750, %6751
  %6753 = sitofp i32 %6752 to float
  %6754 = fsub fast float %6735, %4707
  %6755 = call float @dx.op.dot3.f32(i32 55, float %6538, float %6539, float %6754, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6756 = fcmp fast ogt float %6755, 0.000000e+00
  %6757 = fcmp fast olt float %6755, 0.000000e+00
  %6758 = zext i1 %6756 to i32
  %6759 = zext i1 %6757 to i32
  %6760 = sub nsw i32 %6758, %6759
  %6761 = sitofp i32 %6760 to float
  %6762 = fcmp fast une float %6753, %6761
  br i1 %6762, label %6763, label %6773

; <label>:6763                                    ; preds = %6723
  %6764 = fmul fast float %6746, %6741
  %6765 = fmul fast float %6746, %6740
  %6766 = fmul fast float %6746, %6739
  %6767 = fmul fast float %6766, %6766
  %6768 = fmul fast float %6765, %6765
  %6769 = fadd fast float %6767, %6768
  %6770 = fmul fast float %6764, %6764
  %6771 = fadd fast float %6769, %6770
  %6772 = call float @dx.op.unary.f32(i32 24, float %6771)  ; Sqrt(value)
  br label %6785

; <label>:6773                                    ; preds = %6723
  %6774 = icmp slt i32 %6752, 0
  br i1 %6774, label %6775, label %6785

; <label>:6775                                    ; preds = %6773
  %6776 = fsub fast float %161, %6510
  %6777 = fsub fast float %162, %6511
  %6778 = fsub fast float %163, %6735
  %6779 = fmul fast float %6776, %6776
  %6780 = fmul fast float %6777, %6777
  %6781 = fadd fast float %6779, %6780
  %6782 = fmul fast float %6778, %6778
  %6783 = fadd fast float %6781, %6782
  %6784 = call float @dx.op.unary.f32(i32 24, float %6783)  ; Sqrt(value)
  br label %6785

; <label>:6785                                    ; preds = %6775, %6773, %6763
  %6786 = phi float [ %6772, %6763 ], [ %6784, %6775 ], [ 0.000000e+00, %6773 ]
  %6787 = and i1 %6730, %6728
  %6788 = fsub fast float -0.000000e+00, %6786
  %6789 = select i1 %6787, float -0.000000e+00, float %6788
  %6790 = fmul fast float %4708, 0x3FF7154760000000
  %6791 = fmul fast float %6790, %6789
  %6792 = fmul fast float %4709, 0x3FF7154760000000
  %6793 = fmul fast float %6792, %6789
  %6794 = fmul fast float %4710, 0x3FF7154760000000
  %6795 = fmul fast float %6794, %6789
  %6796 = call float @dx.op.unary.f32(i32 21, float %6791)  ; Exp(value)
  %6797 = call float @dx.op.unary.f32(i32 21, float %6793)  ; Exp(value)
  %6798 = call float @dx.op.unary.f32(i32 21, float %6795)  ; Exp(value)
  %6799 = call float @dx.op.unary.f32(i32 7, float %6796)  ; Saturate(value)
  %6800 = call float @dx.op.unary.f32(i32 7, float %6797)  ; Saturate(value)
  %6801 = call float @dx.op.unary.f32(i32 7, float %6798)  ; Saturate(value)
  %6802 = fmul fast float %6724, %6799
  %6803 = fmul fast float %6725, %6800
  %6804 = fmul fast float %6726, %6801
  %6805 = fsub fast float %6544, %4907
  %6806 = fsub fast float %6545, %4906
  %6807 = fsub fast float %6546, %4905
  %6808 = call float @dx.op.dot3.f32(i32 55, float %6805, float %6806, float %6807, float %6805, float %6806, float %6807)  ; Dot3(ax,ay,az,bx,by,bz)
  %6809 = call float @dx.op.unary.f32(i32 25, float %6808)  ; Rsqrt(value)
  %6810 = fmul fast float %6809, %6805
  %6811 = fmul fast float %6809, %6806
  %6812 = fmul fast float %6809, %6807
  %6813 = call float @dx.op.dot3.f32(i32 55, float %6544, float %6545, float %6546, float %4908, float %4909, float %4910)  ; Dot3(ax,ay,az,bx,by,bz)
  %6814 = call float @dx.op.dot3.f32(i32 55, float %4904, float %4903, float %4902, float %6810, float %6811, float %6812)  ; Dot3(ax,ay,az,bx,by,bz)
  %6815 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6816 = fmul fast float %6815, %6551
  %6817 = fmul fast float %6815, %6815
  %6818 = fmul fast float %6817, %4970
  %6819 = call float @dx.op.unary.f32(i32 7, float %6818)  ; Saturate(value)
  %6820 = fmul fast float %6816, %6819
  %6821 = bitcast float %6541 to i32
  %6822 = ashr i32 %6821, 1
  %6823 = sub nsw i32 1597463007, %6822
  %6824 = bitcast i32 %6823 to float
  %6825 = fmul fast float %6824, %6538
  %6826 = fmul fast float %6824, %6539
  %6827 = fmul fast float %6824, %6540
  %6828 = fsub fast float %6825, %4907
  %6829 = fsub fast float %6826, %4906
  %6830 = fsub fast float %6827, %4905
  %6831 = call float @dx.op.dot3.f32(i32 55, float %6828, float %6829, float %6830, float %6828, float %6829, float %6830)  ; Dot3(ax,ay,az,bx,by,bz)
  %6832 = call float @dx.op.unary.f32(i32 25, float %6831)  ; Rsqrt(value)
  %6833 = fmul fast float %6828, %6832
  %6834 = fmul fast float %6829, %6832
  %6835 = fmul fast float %6830, %6832
  %6836 = call float @dx.op.dot3.f32(i32 55, float %4908, float %4909, float %4910, float %6833, float %6834, float %6835)  ; Dot3(ax,ay,az,bx,by,bz)
  %6837 = fmul fast float %6836, %6836
  %6838 = call float @dx.op.unary.f32(i32 6, float %6813)  ; FAbs(value)
  %6839 = fsub fast float 1.000000e+00, %4917
  %6840 = call float @dx.op.binary.f32(i32 35, float %6839, float 0x3F847AE140000000)  ; FMax(a,b)
  %6841 = fmul fast float %6840, %6840
  %6842 = fmul fast float %6841, %6841
  %6843 = fsub fast float 1.000000e+00, %6842
  %6844 = fmul fast float %4922, %4922
  %6845 = fmul fast float %6844, %6843
  %6846 = fadd fast float %6845, %6842
  %6847 = bitcast float %6846 to i32
  %6848 = ashr i32 %6847, 1
  %6849 = add nsw i32 %6848, 532487669
  %6850 = bitcast i32 %6849 to float
  %6851 = fadd fast float %6850, %4922
  %6852 = call float @dx.op.dot3.f32(i32 55, float %4344, float %4345, float %4346, float %6833, float %6834, float %6835)  ; Dot3(ax,ay,az,bx,by,bz)
  %6853 = fsub fast float 1.000000e+00, %4332
  %6854 = call float @dx.op.binary.f32(i32 35, float %6853, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6855 = fmul fast float %6854, %6854
  %6856 = fmul fast float %6855, %6842
  %6857 = fmul fast float %6852, %6852
  %6858 = fsub fast float 1.000000e+00, %6837
  %6859 = fsub fast float %6858, %6857
  %6860 = fdiv fast float %6857, %6856
  %6861 = fadd fast float %6860, %6837
  %6862 = fdiv fast float %6859, %6842
  %6863 = fadd fast float %6861, %6862
  %6864 = fmul fast float %6838, %6838
  %6865 = fmul fast float %6864, %6843
  %6866 = fadd fast float %6865, %6842
  %6867 = bitcast float %6866 to i32
  %6868 = ashr i32 %6867, 1
  %6869 = add nsw i32 %6868, 532487669
  %6870 = bitcast i32 %6869 to float
  %6871 = fadd fast float %6870, %6838
  %6872 = fmul fast float %6842, %6854
  %6873 = fmul fast float %6863, %6863
  %6874 = fmul fast float %6873, %6872
  %6875 = fmul fast float %6874, %6851
  %6876 = fmul fast float %6875, %6871
  %6877 = fdiv fast float 1.000000e+00, %6876
  %6878 = bitcast float %6842 to i32
  %6879 = sitofp i32 %6878 to float
  %6880 = fmul fast float %6879, 0x3FE7F73180000000
  %6881 = fadd fast float %6880, 0x41AFE27C40000000
  %6882 = fptosi float %6881 to i32
  %6883 = bitcast i32 %6882 to float
  %6884 = fmul fast float %6507, 0x3FD80E9D60000000
  %6885 = fmul fast float %6884, %6824
  %6886 = fadd fast float %6883, %6885
  %6887 = bitcast float %6886 to i32
  %6888 = sub nsw i32 2129859010, %6887
  %6889 = bitcast i32 %6888 to float
  %6890 = fmul fast float %6883, %6877
  %6891 = fmul fast float %6890, %6889
  %6892 = call float @dx.op.unary.f32(i32 6, float %6814)  ; FAbs(value)
  %6893 = fsub fast float 1.000000e+00, %6892
  %6894 = bitcast float %6893 to i32
  %6895 = sitofp i32 %6894 to float
  %6896 = fmul fast float %6895, 5.000000e+00
  %6897 = fadd fast float %6896, 0xC1EFBF8940000000
  %6898 = fptosi float %6897 to i32
  %6899 = bitcast i32 %6898 to float
  %6900 = fsub fast float 1.000000e+00, %4914
  %6901 = fsub fast float 1.000000e+00, %4915
  %6902 = fsub fast float 1.000000e+00, %4920
  %6903 = fmul fast float %6899, %6900
  %6904 = fmul fast float %6899, %6901
  %6905 = fmul fast float %6899, %6902
  %6906 = fadd fast float %6903, %4914
  %6907 = fadd fast float %6904, %4915
  %6908 = fadd fast float %6905, %4920
  br i1 %5217, label %6909, label %6932

; <label>:6909                                    ; preds = %6785
  %6910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4257, float %6892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6911 = extractvalue %dx.types.ResRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.ResRet.f32 %6910, 1
  %6913 = extractvalue %dx.types.ResRet.f32 %6910, 2
  %6914 = fadd fast float %6911, -5.000000e-01
  %6915 = fadd fast float %6912, -5.000000e-01
  %6916 = fadd fast float %6913, -5.000000e-01
  %6917 = fmul fast float %4914, 4.000000e+00
  %6918 = fmul fast float %6917, %6900
  %6919 = fmul fast float %6918, %6914
  %6920 = fmul fast float %4915, 4.000000e+00
  %6921 = fmul fast float %6920, %6901
  %6922 = fmul fast float %6921, %6915
  %6923 = fmul fast float %4920, 4.000000e+00
  %6924 = fmul fast float %6923, %6902
  %6925 = fmul fast float %6924, %6916
  %6926 = fadd fast float %6919, %6906
  %6927 = fadd fast float %6922, %6907
  %6928 = fadd fast float %6925, %6908
  %6929 = call float @dx.op.unary.f32(i32 7, float %6926)  ; Saturate(value)
  %6930 = call float @dx.op.unary.f32(i32 7, float %6927)  ; Saturate(value)
  %6931 = call float @dx.op.unary.f32(i32 7, float %6928)  ; Saturate(value)
  br label %6932

; <label>:6932                                    ; preds = %6909, %6785
  %6933 = phi float [ %6929, %6909 ], [ %6906, %6785 ]
  %6934 = phi float [ %6930, %6909 ], [ %6907, %6785 ]
  %6935 = phi float [ %6931, %6909 ], [ %6908, %6785 ]
  %6936 = fmul fast float %6813, 9.843750e-01
  %6937 = fadd fast float %6936, 7.812500e-03
  %6938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6937, float %5207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6939 = extractvalue %dx.types.ResRet.f32 %6938, 2
  %6940 = extractvalue %dx.types.ResRet.f32 %6938, 3
  %6941 = fmul fast float %6939, %4914
  %6942 = fmul fast float %6939, %4915
  %6943 = fmul fast float %6939, %4920
  %6944 = fadd fast float %6941, %6940
  %6945 = fadd fast float %6942, %6940
  %6946 = fadd fast float %6943, %6940
  br i1 %5217, label %6947, label %6970

; <label>:6947                                    ; preds = %6932
  %6948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4257, float %6813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6949 = extractvalue %dx.types.ResRet.f32 %6948, 0
  %6950 = extractvalue %dx.types.ResRet.f32 %6948, 1
  %6951 = extractvalue %dx.types.ResRet.f32 %6948, 2
  %6952 = fadd fast float %6949, -5.000000e-01
  %6953 = fadd fast float %6950, -5.000000e-01
  %6954 = fadd fast float %6951, -5.000000e-01
  %6955 = fmul fast float %4914, 4.000000e+00
  %6956 = fmul fast float %6955, %6900
  %6957 = fmul fast float %6956, %6952
  %6958 = fmul fast float %4915, 4.000000e+00
  %6959 = fmul fast float %6958, %6901
  %6960 = fmul fast float %6959, %6953
  %6961 = fmul fast float %4920, 4.000000e+00
  %6962 = fmul fast float %6961, %6902
  %6963 = fmul fast float %6962, %6954
  %6964 = fadd fast float %6957, %6944
  %6965 = fadd fast float %6960, %6945
  %6966 = fadd fast float %6963, %6946
  %6967 = call float @dx.op.unary.f32(i32 7, float %6964)  ; Saturate(value)
  %6968 = call float @dx.op.unary.f32(i32 7, float %6965)  ; Saturate(value)
  %6969 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  br label %6970

; <label>:6970                                    ; preds = %6947, %6932
  %6971 = phi float [ %6967, %6947 ], [ %6944, %6932 ]
  %6972 = phi float [ %6968, %6947 ], [ %6945, %6932 ]
  %6973 = phi float [ %6969, %6947 ], [ %6946, %6932 ]
  %6974 = call float @dx.op.binary.f32(i32 35, float %6972, float %6973)  ; FMax(a,b)
  %6975 = call float @dx.op.binary.f32(i32 35, float %6971, float %6974)  ; FMax(a,b)
  %6976 = fsub fast float 1.000000e+00, %6975
  %6977 = fmul fast float %6933, %6891
  %6978 = fmul fast float %6934, %6891
  %6979 = fmul fast float %6935, %6891
  %6980 = fsub fast float 1.000000e+00, %6814
  %6981 = bitcast float %6980 to i32
  %6982 = sitofp i32 %6981 to float
  %6983 = fmul fast float %6982, 5.000000e+00
  %6984 = fadd fast float %6983, 0xC1EFBF8940000000
  %6985 = fptosi float %6984 to i32
  %6986 = bitcast i32 %6985 to float
  %6987 = fmul fast float %6986, %4258
  %6988 = fmul fast float %6976, %6987
  %6989 = fmul fast float %6988, %5267
  %6990 = fmul fast float %6988, %5268
  %6991 = fmul fast float %6988, %5269
  %6992 = fadd fast float %6989, %6977
  %6993 = fadd fast float %6990, %6978
  %6994 = fadd fast float %6991, %6979
  %6995 = fmul fast float %6802, %4254
  %6996 = fmul fast float %6995, %6820
  %6997 = fmul fast float %6996, %6976
  %6998 = fmul fast float %6803, %4254
  %6999 = fmul fast float %6998, %6820
  %7000 = fmul fast float %6999, %6976
  %7001 = fmul fast float %6804, %4254
  %7002 = fmul fast float %7001, %6820
  %7003 = fmul fast float %7002, %6976
  %7004 = fadd fast float %6997, %6481
  %7005 = fadd fast float %7000, %6482
  %7006 = fadd fast float %7003, %6483
  %7007 = fmul fast float %6996, %6992
  %7008 = fmul fast float %6999, %6993
  %7009 = fmul fast float %7002, %6994
  %7010 = fadd fast float %7007, %6478
  %7011 = fadd fast float %7008, %6479
  %7012 = fadd fast float %7009, %6480
  br label %6610

; <label>:7013                                    ; preds = %6610
  br label %7014

; <label>:7014                                    ; preds = %7013, %6444
  %7015 = phi float [ %6446, %6444 ], [ %6611, %7013 ]
  %7016 = phi float [ %6447, %6444 ], [ %6612, %7013 ]
  %7017 = phi float [ %6448, %6444 ], [ %6613, %7013 ]
  %7018 = phi float [ %6449, %6444 ], [ %6614, %7013 ]
  %7019 = phi float [ %6450, %6444 ], [ %6615, %7013 ]
  %7020 = phi float [ %6451, %6444 ], [ %6616, %7013 ]
  %7021 = add i32 %6445, 1
  %7022 = icmp ugt i32 %7021, %6441
  br i1 %7022, label %7023, label %6444

; <label>:7023                                    ; preds = %7014
  br label %7024

; <label>:7024                                    ; preds = %7023, %6394, %6384
  %7025 = phi float [ %6385, %6384 ], [ %6385, %6394 ], [ %7015, %7023 ]
  %7026 = phi float [ %6386, %6384 ], [ %6386, %6394 ], [ %7016, %7023 ]
  %7027 = phi float [ %6387, %6384 ], [ %6387, %6394 ], [ %7017, %7023 ]
  %7028 = phi float [ %6388, %6384 ], [ %6388, %6394 ], [ %7018, %7023 ]
  %7029 = phi float [ %6389, %6384 ], [ %6389, %6394 ], [ %7019, %7023 ]
  %7030 = phi float [ %6390, %6384 ], [ %6390, %6394 ], [ %7020, %7023 ]
  %7031 = fmul fast float %4254, %4254
  %7032 = fsub fast float 1.000000e+00, %7031
  %7033 = call float @dx.op.dot3.f32(i32 55, float %7032, float %7032, float %7032, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7034 = fsub fast float 1.000000e+00, %7033
  %7035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7036 = extractvalue %dx.types.CBufRet.f32 %7035, 0
  %7037 = fmul fast float %7036, %5273
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 3
  %7040 = fsub fast float 1.000000e+00, %4262
  %7041 = call float @dx.op.unary.f32(i32 7, float %7040)  ; Saturate(value)
  %7042 = fadd fast float %7030, %4260
  %7043 = fmul fast float %7042, %4262
  %7044 = fmul fast float %7041, %7039
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 3
  %7047 = fmul fast float %7028, %4911
  %7048 = fmul fast float %7029, %4912
  %7049 = fmul fast float %7030, %4913
  %7050 = fcmp fast ogt float %93, %183
  %7051 = and i1 %7050, %4713
  %7052 = or i1 %4719, %7051
  %7053 = icmp eq i32 %4712, 2
  %7054 = fcmp fast ole float %93, %183
  %7055 = and i1 %7054, %7053
  %7056 = or i1 %7055, %7052
  br i1 %7051, label %7057, label %7314

; <label>:7057                                    ; preds = %7024
  %7058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7058, 2
  %7060 = extractvalue %dx.types.CBufRet.f32 %7058, 3
  %7061 = fmul fast float %7059, %102
  %7062 = fmul fast float %7060, %103
  %7063 = call float @dx.op.unary.f32(i32 7, float %7061)  ; Saturate(value)
  %7064 = call float @dx.op.unary.f32(i32 7, float %7062)  ; Saturate(value)
  %7065 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7063, float %7064, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7066 = extractvalue %dx.types.ResRet.f32 %7065, 0
  %7067 = extractvalue %dx.types.ResRet.f32 %7065, 1
  %7068 = extractvalue %dx.types.ResRet.f32 %7065, 2
  %7069 = extractvalue %dx.types.ResRet.f32 %7065, 3
  %7070 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7063, float %7064, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7071 = extractvalue %dx.types.ResRet.f32 %7070, 0
  %7072 = extractvalue %dx.types.ResRet.f32 %7070, 1
  %7073 = extractvalue %dx.types.ResRet.f32 %7070, 2
  %7074 = extractvalue %dx.types.ResRet.f32 %7070, 3
  %7075 = call float @dx.op.binary.f32(i32 35, float %7067, float %7068)  ; FMax(a,b)
  %7076 = call float @dx.op.binary.f32(i32 35, float %7066, float %7075)  ; FMax(a,b)
  %7077 = call float @dx.op.binary.f32(i32 35, float %7076, float %7069)  ; FMax(a,b)
  %7078 = call float @dx.op.binary.f32(i32 36, float %7072, float %7073)  ; FMin(a,b)
  %7079 = call float @dx.op.binary.f32(i32 36, float %7071, float %7078)  ; FMin(a,b)
  %7080 = call float @dx.op.binary.f32(i32 36, float %7079, float %7074)  ; FMin(a,b)
  %7081 = fmul fast float %7077, 2.550000e+02
  %7082 = fadd fast float %7081, 0x3F70101020000000
  %7083 = fptoui float %7082 to i32
  %7084 = fmul fast float %7080, 2.550000e+02
  %7085 = fadd fast float %7084, 0x3F70101020000000
  %7086 = fptoui float %7085 to i32
  %7087 = icmp ult i32 %7083, %7086
  br i1 %7087, label %7088, label %7256

; <label>:7088                                    ; preds = %7057
  %7089 = fcmp fast ogt float %92, 9.843750e-01
  %7090 = fadd fast float %93, -4.000000e+00
  %7091 = select i1 %7089, float -4.000000e+00, float %7090
  %7092 = call float @dx.op.binary.f32(i32 35, float %7091, float 0.000000e+00)  ; FMax(a,b)
  %7093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7094 = extractvalue %dx.types.CBufRet.f32 %7093, 0
  %7095 = fadd fast float %7094, %7092
  %7096 = extractvalue %dx.types.CBufRet.f32 %7093, 2
  %7097 = fmul fast float %7095, %7096
  %7098 = call float @dx.op.unary.f32(i32 23, float %7097)  ; Log(value)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7093, 3
  %7100 = fmul fast float %7099, %7098
  %7101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.f32 %7101, 2
  %7103 = fmul fast float %7100, %7102
  %7104 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7105 = uitofp i32 %7083 to float
  %7106 = uitofp i32 %7086 to float
  %7107 = fadd fast float %7105, 5.000000e-01
  %7108 = fadd fast float %7106, 5.000000e-01
  %7109 = fmul fast float %7102, %7107
  %7110 = fmul fast float %7102, %7108
  %7111 = fadd fast float %7109, 0x3F0FFB4800000000
  %7112 = fadd fast float %7110, 0xBF0FFB4800000000
  %7113 = call float @dx.op.binary.f32(i32 35, float %7104, float %7111)  ; FMax(a,b)
  %7114 = call float @dx.op.binary.f32(i32 36, float %7113, float %7112)  ; FMin(a,b)
  %7115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7116 = extractvalue %dx.types.CBufRet.f32 %7115, 1
  %7117 = extractvalue %dx.types.CBufRet.f32 %7115, 2
  %7118 = extractvalue %dx.types.CBufRet.f32 %7115, 0
  %7119 = fmul fast float %7116, %7114
  %7120 = fadd fast float %7118, %7119
  %7121 = fadd fast float %7118, %7117
  %7122 = fsub fast float %7116, %7117
  %7123 = fadd fast float %7122, %7118
  %7124 = call float @dx.op.binary.f32(i32 35, float %7120, float %7121)  ; FMax(a,b)
  %7125 = call float @dx.op.binary.f32(i32 36, float %7124, float %7123)  ; FMin(a,b)
  %7126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7063, float %7064, float %7125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7127 = extractvalue %dx.types.ResRet.f32 %7126, 0
  %7128 = extractvalue %dx.types.ResRet.f32 %7126, 1
  %7129 = extractvalue %dx.types.ResRet.f32 %7126, 2
  %7130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7131 = extractvalue %dx.types.CBufRet.i32 %7130, 0
  %7132 = extractvalue %dx.types.CBufRet.i32 %7130, 1
  %7133 = uitofp i32 %7131 to float
  %7134 = uitofp i32 %7132 to float
  %7135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7135, 0
  %7137 = extractvalue %dx.types.CBufRet.f32 %7135, 1
  %7138 = fmul fast float %7133, %7063
  %7139 = fmul fast float %7134, %7064
  %7140 = fadd fast float %7138, -5.000000e-01
  %7141 = fadd fast float %7139, -5.000000e-01
  %7142 = call float @dx.op.unary.f32(i32 22, float %7140)  ; Frc(value)
  %7143 = call float @dx.op.unary.f32(i32 22, float %7141)  ; Frc(value)
  %7144 = fmul fast float %7142, %7142
  %7145 = fmul fast float %7144, %7142
  %7146 = fsub fast float 3.000000e+00, %7142
  %7147 = fmul fast float %7144, %7146
  %7148 = fmul fast float %7142, 3.000000e+00
  %7149 = fmul fast float %7145, 3.000000e+00
  %7150 = fmul fast float %7144, 6.000000e+00
  %7151 = fsub fast float %7149, %7150
  %7152 = fadd fast float %7151, 4.000000e+00
  %7153 = fmul fast float %7152, 0x3FC5555560000000
  %7154 = fmul fast float %7145, -3.000000e+00
  %7155 = fadd fast float %7144, %7142
  %7156 = fmul fast float %7155, 3.000000e+00
  %7157 = fadd fast float %7154, 1.000000e+00
  %7158 = fadd fast float %7157, %7156
  %7159 = fmul fast float %7145, 0x3FC5555560000000
  %7160 = fmul fast float %7143, %7143
  %7161 = fmul fast float %7160, %7143
  %7162 = fsub fast float 3.000000e+00, %7143
  %7163 = fmul fast float %7160, %7162
  %7164 = fmul fast float %7143, 3.000000e+00
  %7165 = fmul fast float %7161, 3.000000e+00
  %7166 = fmul fast float %7160, 6.000000e+00
  %7167 = fsub fast float %7165, %7166
  %7168 = fadd fast float %7167, 4.000000e+00
  %7169 = fmul fast float %7168, 0x3FC5555560000000
  %7170 = fmul fast float %7161, -3.000000e+00
  %7171 = fadd fast float %7160, %7143
  %7172 = fmul fast float %7171, 3.000000e+00
  %7173 = fadd fast float %7170, 1.000000e+00
  %7174 = fadd fast float %7173, %7172
  %7175 = fmul fast float %7161, 0x3FC5555560000000
  %7176 = fadd fast float %7142, 1.000000e+00
  %7177 = fsub fast float 1.000000e+00, %7148
  %7178 = fadd fast float %7177, %7147
  %7179 = fadd fast float %7178, %7152
  %7180 = fmul fast float %7179, 0x3FC5555560000000
  %7181 = fdiv fast float %7153, %7180
  %7182 = fsub fast float %7176, %7181
  %7183 = fsub fast float 1.000000e+00, %7142
  %7184 = fadd fast float %7158, %7145
  %7185 = fmul fast float %7184, 0x3FC5555560000000
  %7186 = fdiv fast float %7159, %7185
  %7187 = fadd fast float %7183, %7186
  %7188 = fadd fast float %7143, 1.000000e+00
  %7189 = fsub fast float 1.000000e+00, %7164
  %7190 = fadd fast float %7189, %7163
  %7191 = fadd fast float %7190, %7168
  %7192 = fmul fast float %7191, 0x3FC5555560000000
  %7193 = fdiv fast float %7169, %7192
  %7194 = fsub fast float %7188, %7193
  %7195 = fsub fast float 1.000000e+00, %7143
  %7196 = fadd fast float %7174, %7161
  %7197 = fmul fast float %7196, 0x3FC5555560000000
  %7198 = fdiv fast float %7175, %7197
  %7199 = fadd fast float %7198, %7195
  %7200 = fmul fast float %7182, %7136
  %7201 = fsub fast float %7063, %7200
  %7202 = fmul fast float %7187, %7136
  %7203 = fadd fast float %7202, %7063
  %7204 = fmul fast float %7199, %7137
  %7205 = fadd fast float %7204, %7064
  %7206 = fmul fast float %7194, %7137
  %7207 = fsub fast float %7064, %7206
  %7208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7201, float %7207, float %7125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7209 = extractvalue %dx.types.ResRet.f32 %7208, 0
  %7210 = extractvalue %dx.types.ResRet.f32 %7208, 1
  %7211 = extractvalue %dx.types.ResRet.f32 %7208, 2
  %7212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7203, float %7207, float %7125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7213 = extractvalue %dx.types.ResRet.f32 %7212, 0
  %7214 = extractvalue %dx.types.ResRet.f32 %7212, 1
  %7215 = extractvalue %dx.types.ResRet.f32 %7212, 2
  %7216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7201, float %7205, float %7125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7217 = extractvalue %dx.types.ResRet.f32 %7216, 0
  %7218 = extractvalue %dx.types.ResRet.f32 %7216, 1
  %7219 = extractvalue %dx.types.ResRet.f32 %7216, 2
  %7220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7203, float %7205, float %7125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7221 = extractvalue %dx.types.ResRet.f32 %7220, 0
  %7222 = extractvalue %dx.types.ResRet.f32 %7220, 1
  %7223 = extractvalue %dx.types.ResRet.f32 %7220, 2
  %7224 = fsub fast float %7217, %7209
  %7225 = fsub fast float %7218, %7210
  %7226 = fsub fast float %7219, %7211
  %7227 = fmul fast float %7224, %7197
  %7228 = fmul fast float %7225, %7197
  %7229 = fmul fast float %7226, %7197
  %7230 = fadd fast float %7227, %7209
  %7231 = fadd fast float %7228, %7210
  %7232 = fadd fast float %7229, %7211
  %7233 = fsub fast float %7221, %7213
  %7234 = fsub fast float %7222, %7214
  %7235 = fsub fast float %7223, %7215
  %7236 = fmul fast float %7233, %7197
  %7237 = fmul fast float %7234, %7197
  %7238 = fmul fast float %7235, %7197
  %7239 = fsub fast float %7213, %7230
  %7240 = fadd fast float %7239, %7236
  %7241 = fsub fast float %7214, %7231
  %7242 = fadd fast float %7241, %7237
  %7243 = fsub fast float %7215, %7232
  %7244 = fadd fast float %7243, %7238
  %7245 = fmul fast float %7240, %7185
  %7246 = fmul fast float %7242, %7185
  %7247 = fmul fast float %7244, %7185
  %7248 = fadd fast float %7245, %7230
  %7249 = fadd fast float %7246, %7231
  %7250 = fadd fast float %7247, %7232
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 1
  %7253 = fmul fast float %7248, %7252
  %7254 = fmul fast float %7249, %7252
  %7255 = fmul fast float %7250, %7252
  br label %7256

; <label>:7256                                    ; preds = %7088, %7057
  %7257 = phi float [ %7127, %7088 ], [ 1.000000e+00, %7057 ]
  %7258 = phi float [ %7128, %7088 ], [ 1.000000e+00, %7057 ]
  %7259 = phi float [ %7129, %7088 ], [ 1.000000e+00, %7057 ]
  %7260 = phi float [ %7253, %7088 ], [ 0.000000e+00, %7057 ]
  %7261 = phi float [ %7254, %7088 ], [ 0.000000e+00, %7057 ]
  %7262 = phi float [ %7255, %7088 ], [ 0.000000e+00, %7057 ]
  %7263 = fmul fast float %7260, %7034
  %7264 = fmul fast float %7261, %7034
  %7265 = fmul fast float %7262, %7034
  %7266 = call float @dx.op.dot3.f32(i32 55, float %7257, float %7258, float %7259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7267 = call float @dx.op.dot3.f32(i32 55, float %7263, float %7264, float %7265, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7268 = select i1 %223, float %7266, float %7257
  %7269 = select i1 %223, float %7266, float %7258
  %7270 = select i1 %223, float 1.000000e+00, float %7259
  %7271 = select i1 %223, float %7267, float %7263
  %7272 = select i1 %223, float 0.000000e+00, float %7264
  %7273 = select i1 %223, float 0.000000e+00, float %7265
  %7274 = fmul fast float %7268, %7047
  %7275 = fmul fast float %7269, %7048
  %7276 = fmul fast float %7270, %7049
  %7277 = fadd fast float %7274, %7271
  %7278 = fadd fast float %7275, %7272
  %7279 = fadd fast float %7273, %7276
  %7280 = fmul fast float %7268, %7025
  %7281 = fmul fast float %7269, %7026
  %7282 = fmul fast float %7270, %7027
  %7283 = fmul fast float %131, %7059
  %7284 = fmul fast float %133, %7060
  %7285 = fsub fast float 1.000000e+00, %7283
  %7286 = fsub fast float 1.000000e+00, %7284
  %7287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7288 = extractvalue %dx.types.CBufRet.f32 %7287, 0
  %7289 = extractvalue %dx.types.CBufRet.f32 %7287, 1
  %7290 = extractvalue %dx.types.CBufRet.f32 %7287, 2
  %7291 = fmul fast float %7285, %7288
  %7292 = fmul fast float %7285, %7289
  %7293 = fmul fast float %7285, %7290
  %7294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7295 = extractvalue %dx.types.CBufRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.CBufRet.f32 %7294, 1
  %7297 = extractvalue %dx.types.CBufRet.f32 %7294, 2
  %7298 = fmul fast float %7286, %7295
  %7299 = fmul fast float %7286, %7296
  %7300 = fmul fast float %7286, %7297
  %7301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.f32 %7301, 0
  %7303 = extractvalue %dx.types.CBufRet.f32 %7301, 1
  %7304 = extractvalue %dx.types.CBufRet.f32 %7301, 2
  %7305 = fadd fast float %7298, %7302
  %7306 = fadd fast float %7305, %7291
  %7307 = fadd fast float %7299, %7303
  %7308 = fadd fast float %7307, %7292
  %7309 = fadd fast float %7300, %7304
  %7310 = fadd fast float %7309, %7293
  %7311 = fmul fast float %7306, %183
  %7312 = fmul fast float %7308, %183
  %7313 = fmul fast float %7310, %183
  br label %7314

; <label>:7314                                    ; preds = %7256, %7024
  %7315 = phi float [ %7311, %7256 ], [ %161, %7024 ]
  %7316 = phi float [ %7312, %7256 ], [ %162, %7024 ]
  %7317 = phi float [ %7313, %7256 ], [ %163, %7024 ]
  %7318 = phi float [ %183, %7256 ], [ %93, %7024 ]
  %7319 = phi float [ %7277, %7256 ], [ %7047, %7024 ]
  %7320 = phi float [ %7278, %7256 ], [ %7048, %7024 ]
  %7321 = phi float [ %7279, %7256 ], [ %7049, %7024 ]
  %7322 = phi float [ %7280, %7256 ], [ %7025, %7024 ]
  %7323 = phi float [ %7281, %7256 ], [ %7026, %7024 ]
  %7324 = phi float [ %7282, %7256 ], [ %7027, %7024 ]
  %7325 = phi float [ %7257, %7256 ], [ 1.000000e+00, %7024 ]
  br i1 %7056, label %8480, label %7326

; <label>:7326                                    ; preds = %7314
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 0
  %7329 = extractvalue %dx.types.CBufRet.f32 %7327, 1
  %7330 = extractvalue %dx.types.CBufRet.f32 %7327, 2
  %7331 = extractvalue %dx.types.CBufRet.f32 %7327, 3
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 0
  %7334 = extractvalue %dx.types.CBufRet.f32 %7332, 1
  %7335 = extractvalue %dx.types.CBufRet.f32 %7332, 2
  %7336 = extractvalue %dx.types.CBufRet.f32 %7332, 3
  %7337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7338 = extractvalue %dx.types.CBufRet.f32 %7337, 0
  %7339 = extractvalue %dx.types.CBufRet.f32 %7337, 1
  %7340 = extractvalue %dx.types.CBufRet.f32 %7337, 2
  %7341 = extractvalue %dx.types.CBufRet.f32 %7337, 3
  %7342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7343 = extractvalue %dx.types.CBufRet.f32 %7342, 0
  %7344 = extractvalue %dx.types.CBufRet.f32 %7342, 1
  %7345 = extractvalue %dx.types.CBufRet.f32 %7342, 2
  %7346 = extractvalue %dx.types.CBufRet.f32 %7342, 3
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 3
  %7349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7350 = extractvalue %dx.types.CBufRet.f32 %7349, 3
  %7351 = extractvalue %dx.types.CBufRet.f32 %7349, 0
  %7352 = extractvalue %dx.types.CBufRet.f32 %7349, 1
  %7353 = extractvalue %dx.types.CBufRet.f32 %7349, 2
  %7354 = fcmp fast olt float %7353, -5.000000e-01
  %7355 = call float @dx.op.dot3.f32(i32 55, float %7315, float %7316, float %7317, float %7315, float %7316, float %7317)  ; Dot3(ax,ay,az,bx,by,bz)
  %7356 = call float @dx.op.unary.f32(i32 25, float %7355)  ; Rsqrt(value)
  %7357 = fmul fast float %7356, %7355
  %7358 = fmul fast float %7356, %7315
  %7359 = fmul fast float %7356, %7316
  %7360 = fmul fast float %7356, %7317
  %7361 = fadd fast float %7357, %7331
  %7362 = call float @dx.op.dot3.f32(i32 55, float %7358, float %7359, float %7360, float %7328, float %7329, float %7330)  ; Dot3(ax,ay,az,bx,by,bz)
  %7363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.i32 %7363, 1
  %7365 = and i32 %7364, 1
  %7366 = icmp ne i32 %7365, 0
  %7367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.f32 %7367, 2
  %7369 = fcmp fast ogt float %7368, 0.000000e+00
  %7370 = and i1 %7366, %7369
  br i1 %7370, label %7371, label %7777, !dx.controlflow.hints !122

; <label>:7371                                    ; preds = %7326
  %7372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7373 = extractvalue %dx.types.CBufRet.f32 %7372, 3
  %7374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7375 = extractvalue %dx.types.CBufRet.f32 %7374, 2
  %7376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.f32 %7376, 2
  %7378 = fsub fast float %7375, %7377
  %7379 = and i32 %7364, 2
  %7380 = extractvalue %dx.types.CBufRet.i32 %7363, 0
  %7381 = call i32 @dx.op.binary.i32(i32 40, i32 %7380, i32 3)  ; UMin(a,b)
  %7382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7383 = extractvalue %dx.types.CBufRet.f32 %7382, 0
  %7384 = extractvalue %dx.types.CBufRet.f32 %7382, 1
  %7385 = extractvalue %dx.types.CBufRet.f32 %7376, 0
  %7386 = extractvalue %dx.types.CBufRet.f32 %7376, 1
  %7387 = fsub fast float %7383, %7385
  %7388 = fsub fast float %7384, %7386
  %7389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7390 = extractvalue %dx.types.CBufRet.f32 %7389, 0
  %7391 = fcmp fast ogt float %7390, 0.000000e+00
  %7392 = fsub fast float -0.000000e+00, %7387
  %7393 = fsub fast float -0.000000e+00, %7388
  %7394 = call float @dx.op.dot2.f32(i32 54, float %7358, float %7359, float %7358, float %7359)  ; Dot2(ax,ay,bx,by)
  %7395 = call float @dx.op.dot2.f32(i32 54, float %7358, float %7359, float %7392, float %7393)  ; Dot2(ax,ay,bx,by)
  %7396 = fmul fast float %7395, 2.000000e+00
  %7397 = call float @dx.op.dot2.f32(i32 54, float %7392, float %7393, float %7392, float %7393)  ; Dot2(ax,ay,bx,by)
  %7398 = fmul fast float %7390, %7390
  %7399 = fsub fast float %7397, %7398
  %7400 = fmul fast float %7396, %7396
  %7401 = fmul fast float %7394, 4.000000e+00
  %7402 = fmul fast float %7401, %7399
  %7403 = fsub fast float %7400, %7402
  %7404 = fcmp fast ogt float %7403, 0.000000e+00
  br i1 %7404, label %7405, label %7420

; <label>:7405                                    ; preds = %7371
  %7406 = fcmp fast ogt float %7396, 0.000000e+00
  %7407 = call float @dx.op.unary.f32(i32 24, float %7403)  ; Sqrt(value)
  %7408 = fsub fast float -0.000000e+00, %7407
  %7409 = select i1 %7406, float %7407, float %7408
  %7410 = fadd fast float %7409, %7396
  %7411 = fmul float %7410, -5.000000e-01
  %7412 = fdiv fast float %7411, %7394
  %7413 = call float @dx.op.binary.f32(i32 35, float %7412, float 0.000000e+00)  ; FMax(a,b)
  %7414 = call float @dx.op.binary.f32(i32 36, float %7357, float %7413)  ; FMin(a,b)
  %7415 = fdiv fast float %7399, %7411
  %7416 = call float @dx.op.binary.f32(i32 35, float %7415, float 0.000000e+00)  ; FMax(a,b)
  %7417 = call float @dx.op.binary.f32(i32 36, float %7357, float %7416)  ; FMin(a,b)
  %7418 = call float @dx.op.binary.f32(i32 36, float %7414, float %7417)  ; FMin(a,b)
  %7419 = call float @dx.op.binary.f32(i32 35, float %7414, float %7417)  ; FMax(a,b)
  br label %7420

; <label>:7420                                    ; preds = %7405, %7371
  %7421 = phi float [ %7419, %7405 ], [ -1.000000e+00, %7371 ]
  %7422 = phi float [ %7418, %7405 ], [ -1.000000e+00, %7371 ]
  %7423 = phi i1 [ true, %7405 ], [ false, %7371 ]
  %7424 = and i1 %7391, %7423
  br i1 %7424, label %7425, label %7427

; <label>:7425                                    ; preds = %7420
  %7426 = fcmp fast oeq float %7422, %7421
  br i1 %7426, label %7730, label %7428

; <label>:7427                                    ; preds = %7420
  br i1 %7391, label %7730, label %7428

; <label>:7428                                    ; preds = %7427, %7425
  %7429 = phi float [ %7357, %7427 ], [ %7421, %7425 ]
  %7430 = phi float [ 0.000000e+00, %7427 ], [ %7422, %7425 ]
  %7431 = icmp ne i32 %7379, 0
  %7432 = fmul fast float %7429, %7360
  %7433 = fadd fast float %7432, %7373
  %7434 = fmul fast float %7433, %7429
  %7435 = select i1 %7431, float 0.000000e+00, float %7434
  %7436 = fcmp fast oeq float %7360, 0.000000e+00
  %7437 = fdiv fast float %7378, %7360
  %7438 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7437)  ; FMax(a,b)
  %7439 = select i1 %7436, float %7429, float %7438
  %7440 = call float @dx.op.binary.f32(i32 36, float %7429, float %7439)  ; FMin(a,b)
  %7441 = fcmp fast ogt float %7360, 0.000000e+00
  %7442 = fcmp fast olt float %7378, 0.000000e+00
  br i1 %7441, label %7443, label %7500

; <label>:7443                                    ; preds = %7428
  %7444 = icmp eq i32 %7379, 0
  br i1 %7442, label %7445, label %7489

; <label>:7445                                    ; preds = %7443
  %7446 = select i1 %7444, float %7429, float 0.000000e+00
  %7447 = fsub fast float -0.000000e+00, %7446
  %7448 = call float @dx.op.unary.f32(i32 6, float %7447)  ; FAbs(value)
  %7449 = fmul fast float %7446, %7360
  %7450 = fadd fast float %7449, %7373
  %7451 = fmul fast float %7448, %7450
  %7452 = fsub fast float %7435, %7451
  %7453 = fsub fast float %7429, %7448
  %7454 = select i1 %7444, float %7453, float 0.000000e+00
  %7455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7456 = extractvalue %dx.types.CBufRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.CBufRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.CBufRet.f32 %7455, 2
  %7459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7460 = extractvalue %dx.types.CBufRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.CBufRet.f32 %7459, 1
  %7462 = extractvalue %dx.types.CBufRet.f32 %7459, 2
  %7463 = extractvalue %dx.types.CBufRet.f32 %7459, 3
  %7464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7465 = extractvalue %dx.types.CBufRet.f32 %7464, 3
  %7466 = call float @dx.op.binary.f32(i32 36, float %7452, float %7465)  ; FMin(a,b)
  %7467 = fmul fast float %7463, %7454
  %7468 = call float @dx.op.unary.f32(i32 7, float %7467)  ; Saturate(value)
  %7469 = fsub fast float %7460, %7456
  %7470 = fsub fast float %7461, %7457
  %7471 = fsub fast float %7462, %7458
  %7472 = fmul fast float %7468, %7469
  %7473 = fmul fast float %7468, %7470
  %7474 = fmul fast float %7468, %7471
  %7475 = fadd fast float %7472, %7456
  %7476 = fadd fast float %7473, %7457
  %7477 = fadd fast float %7474, %7458
  %7478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.f32 %7478, 0
  %7480 = extractvalue %dx.types.CBufRet.f32 %7478, 1
  %7481 = fadd fast float %7480, %7479
  %7482 = call float @dx.op.unary.f32(i32 7, float %7481)  ; Saturate(value)
  %7483 = extractvalue %dx.types.CBufRet.f32 %7478, 2
  %7484 = extractvalue %dx.types.CBufRet.f32 %7478, 3
  %7485 = fadd fast float %7484, %7483
  %7486 = call float @dx.op.unary.f32(i32 7, float %7485)  ; Saturate(value)
  %7487 = fmul fast float %7482, %7466
  %7488 = fmul fast float %7487, %7486
  br label %7730

; <label>:7489                                    ; preds = %7443
  br i1 %7444, label %7490, label %7511

; <label>:7490                                    ; preds = %7489
  %7491 = call float @dx.op.binary.f32(i32 36, float %7440, float %7430)  ; FMin(a,b)
  %7492 = fsub fast float %7440, %7491
  %7493 = fsub fast float %7492, %7429
  %7494 = call float @dx.op.unary.f32(i32 6, float %7493)  ; FAbs(value)
  %7495 = fadd fast float %7492, %7429
  %7496 = fmul fast float %7495, %7360
  %7497 = fadd fast float %7496, %7373
  %7498 = fmul fast float %7497, %7494
  %7499 = fsub fast float %7435, %7498
  br label %7511

; <label>:7500                                    ; preds = %7428
  br i1 %7442, label %7501, label %7511

; <label>:7501                                    ; preds = %7500
  %7502 = call float @dx.op.binary.f32(i32 35, float %7430, float %7440)  ; FMax(a,b)
  %7503 = icmp eq i32 %7379, 0
  %7504 = select i1 %7503, float %7440, float 0.000000e+00
  %7505 = fsub fast float -0.000000e+00, %7504
  %7506 = call float @dx.op.unary.f32(i32 6, float %7505)  ; FAbs(value)
  %7507 = fmul fast float %7504, %7360
  %7508 = fadd fast float %7507, %7373
  %7509 = fmul fast float %7506, %7508
  %7510 = fsub fast float %7435, %7509
  br label %7511

; <label>:7511                                    ; preds = %7501, %7500, %7490, %7489
  %7512 = phi float [ %7430, %7489 ], [ %7430, %7490 ], [ %7502, %7501 ], [ %7430, %7500 ]
  %7513 = phi float [ 0.000000e+00, %7489 ], [ %7494, %7490 ], [ %7506, %7501 ], [ 0.000000e+00, %7500 ]
  %7514 = phi float [ %7435, %7489 ], [ %7499, %7490 ], [ %7510, %7501 ], [ %7435, %7500 ]
  %7515 = phi float [ %7440, %7489 ], [ %7440, %7490 ], [ %7429, %7501 ], [ %7429, %7500 ]
  %7516 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %7516, align 4, !tbaa !123, !noalias !125
  %7517 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %7517, align 4, !tbaa !123, !noalias !125
  %7518 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %7518, align 4, !tbaa !123, !noalias !125
  %7519 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %7519, align 4, !tbaa !123, !noalias !125
  %7520 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %7520, align 4, !tbaa !123, !noalias !125
  %7521 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %7521, align 4, !tbaa !123, !noalias !125
  %7522 = icmp sgt i32 %7381, 0
  br i1 %7522, label %7523, label %7584

; <label>:7523                                    ; preds = %7511
  br label %7524

; <label>:7524                                    ; preds = %7573, %7523
  %7525 = phi i32 [ %7574, %7573 ], [ 0, %7523 ]
  %7526 = phi i32 [ %7575, %7573 ], [ 0, %7523 ]
  %7527 = add nuw i32 %7526, 171
  %7528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7527)  ; CBufferLoadLegacy(handle,regIndex)
  %7529 = extractvalue %dx.types.CBufRet.f32 %7528, 0
  %7530 = extractvalue %dx.types.CBufRet.f32 %7528, 1
  %7531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7531, 0
  %7533 = extractvalue %dx.types.CBufRet.f32 %7531, 1
  %7534 = fsub fast float %7529, %7532
  %7535 = fsub fast float %7530, %7533
  %7536 = extractvalue %dx.types.CBufRet.f32 %7528, 2
  %7537 = fsub fast float -0.000000e+00, %7534
  %7538 = fsub fast float -0.000000e+00, %7535
  %7539 = call float @dx.op.dot2.f32(i32 54, float %7358, float %7359, float %7537, float %7538)  ; Dot2(ax,ay,bx,by)
  %7540 = fmul fast float %7539, 2.000000e+00
  %7541 = call float @dx.op.dot2.f32(i32 54, float %7537, float %7538, float %7537, float %7538)  ; Dot2(ax,ay,bx,by)
  %7542 = fmul fast float %7536, %7536
  %7543 = fsub fast float %7541, %7542
  %7544 = fmul fast float %7540, %7540
  %7545 = fmul fast float %7401, %7543
  %7546 = fsub fast float %7544, %7545
  %7547 = fcmp fast ogt float %7546, 0.000000e+00
  br i1 %7547, label %7548, label %7563

; <label>:7548                                    ; preds = %7524
  %7549 = fcmp fast ogt float %7540, 0.000000e+00
  %7550 = call float @dx.op.unary.f32(i32 24, float %7546)  ; Sqrt(value)
  %7551 = fsub fast float -0.000000e+00, %7550
  %7552 = select i1 %7549, float %7550, float %7551
  %7553 = fadd fast float %7552, %7540
  %7554 = fmul float %7553, -5.000000e-01
  %7555 = fdiv fast float %7554, %7394
  %7556 = call float @dx.op.binary.f32(i32 35, float %7555, float 0.000000e+00)  ; FMax(a,b)
  %7557 = call float @dx.op.binary.f32(i32 36, float %7429, float %7556)  ; FMin(a,b)
  %7558 = fdiv fast float %7543, %7554
  %7559 = call float @dx.op.binary.f32(i32 35, float %7558, float 0.000000e+00)  ; FMax(a,b)
  %7560 = call float @dx.op.binary.f32(i32 36, float %7429, float %7559)  ; FMin(a,b)
  %7561 = call float @dx.op.binary.f32(i32 36, float %7557, float %7560)  ; FMin(a,b)
  %7562 = call float @dx.op.binary.f32(i32 35, float %7557, float %7560)  ; FMax(a,b)
  br label %7563

; <label>:7563                                    ; preds = %7548, %7524
  %7564 = phi float [ %7562, %7548 ], [ -1.000000e+00, %7524 ]
  %7565 = phi float [ %7561, %7548 ], [ -1.000000e+00, %7524 ]
  %7566 = phi i1 [ true, %7548 ], [ false, %7524 ]
  br i1 %7566, label %7567, label %7573

; <label>:7567                                    ; preds = %7563
  %7568 = call float @dx.op.binary.f32(i32 35, float %7512, float %7565)  ; FMax(a,b)
  %7569 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7526
  store float %7568, float* %7569, align 4, !tbaa !123, !noalias !125
  %7570 = call float @dx.op.binary.f32(i32 35, float %7512, float %7564)  ; FMax(a,b)
  %7571 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7526
  store float %7570, float* %7571, align 4, !tbaa !123, !noalias !125
  %7572 = add nsw i32 %7525, 1
  br label %7573

; <label>:7573                                    ; preds = %7567, %7563
  %7574 = phi i32 [ %7572, %7567 ], [ %7525, %7563 ]
  %7575 = add nuw nsw i32 %7526, 1
  %7576 = icmp eq i32 %7575, %7381
  br i1 %7576, label %7577, label %7524

; <label>:7577                                    ; preds = %7573
  %7578 = load float, float* %7518, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7579 = load float, float* %7517, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %7580 = load float, float* %7516, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %7581 = load float, float* %7521, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7582 = load float, float* %7520, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %7583 = load float, float* %7519, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %7584

; <label>:7584                                    ; preds = %7577, %7511
  %7585 = phi float [ -1.000000e+00, %7511 ], [ %7583, %7577 ]
  %7586 = phi float [ -1.000000e+00, %7511 ], [ %7582, %7577 ]
  %7587 = phi float [ -1.000000e+00, %7511 ], [ %7581, %7577 ]
  %7588 = phi float [ -1.000000e+00, %7511 ], [ %7580, %7577 ]
  %7589 = phi float [ -1.000000e+00, %7511 ], [ %7579, %7577 ]
  %7590 = phi float [ -1.000000e+00, %7511 ], [ %7578, %7577 ]
  %7591 = phi i32 [ 0, %7511 ], [ %7574, %7577 ]
  %7592 = call float @dx.op.binary.f32(i32 36, float %7589, float %7590)  ; FMin(a,b)
  %7593 = call float @dx.op.binary.f32(i32 36, float %7588, float %7592)  ; FMin(a,b)
  %7594 = call float @dx.op.binary.f32(i32 35, float %7588, float %7589)  ; FMax(a,b)
  %7595 = call float @dx.op.binary.f32(i32 36, float %7594, float %7590)  ; FMin(a,b)
  %7596 = call float @dx.op.binary.f32(i32 36, float %7588, float %7589)  ; FMin(a,b)
  %7597 = call float @dx.op.binary.f32(i32 35, float %7596, float %7595)  ; FMax(a,b)
  %7598 = call float @dx.op.binary.f32(i32 35, float %7589, float %7590)  ; FMax(a,b)
  %7599 = call float @dx.op.binary.f32(i32 35, float %7588, float %7598)  ; FMax(a,b)
  store float %7593, float* %7516, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %7597, float* %7517, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %7599, float* %7518, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %7600 = call float @dx.op.binary.f32(i32 36, float %7586, float %7587)  ; FMin(a,b)
  %7601 = call float @dx.op.binary.f32(i32 36, float %7585, float %7600)  ; FMin(a,b)
  %7602 = call float @dx.op.binary.f32(i32 35, float %7585, float %7586)  ; FMax(a,b)
  %7603 = call float @dx.op.binary.f32(i32 36, float %7602, float %7587)  ; FMin(a,b)
  %7604 = call float @dx.op.binary.f32(i32 36, float %7585, float %7586)  ; FMin(a,b)
  %7605 = call float @dx.op.binary.f32(i32 35, float %7604, float %7603)  ; FMax(a,b)
  %7606 = call float @dx.op.binary.f32(i32 35, float %7586, float %7587)  ; FMax(a,b)
  %7607 = call float @dx.op.binary.f32(i32 35, float %7585, float %7606)  ; FMax(a,b)
  store float %7601, float* %7519, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %7605, float* %7520, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %7607, float* %7521, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %7608 = sub nsw i32 3, %7591
  %7609 = icmp sgt i32 %7608, 2
  br i1 %7609, label %7610, label %7648

; <label>:7610                                    ; preds = %7584
  %7611 = icmp eq i32 %7379, 0
  %7612 = fsub fast float %7429, %7513
  %7613 = select i1 %7611, float %7612, float %7513
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 0
  %7616 = extractvalue %dx.types.CBufRet.f32 %7614, 1
  %7617 = extractvalue %dx.types.CBufRet.f32 %7614, 2
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 0
  %7620 = extractvalue %dx.types.CBufRet.f32 %7618, 1
  %7621 = extractvalue %dx.types.CBufRet.f32 %7618, 2
  %7622 = extractvalue %dx.types.CBufRet.f32 %7618, 3
  %7623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7624 = extractvalue %dx.types.CBufRet.f32 %7623, 3
  %7625 = call float @dx.op.binary.f32(i32 36, float %7514, float %7624)  ; FMin(a,b)
  %7626 = fmul fast float %7622, %7613
  %7627 = call float @dx.op.unary.f32(i32 7, float %7626)  ; Saturate(value)
  %7628 = fsub fast float %7619, %7615
  %7629 = fsub fast float %7620, %7616
  %7630 = fsub fast float %7621, %7617
  %7631 = fmul fast float %7627, %7628
  %7632 = fmul fast float %7627, %7629
  %7633 = fmul fast float %7627, %7630
  %7634 = fadd fast float %7631, %7615
  %7635 = fadd fast float %7632, %7616
  %7636 = fadd fast float %7633, %7617
  %7637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7638 = extractvalue %dx.types.CBufRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.CBufRet.f32 %7637, 1
  %7640 = fadd fast float %7639, %7638
  %7641 = call float @dx.op.unary.f32(i32 7, float %7640)  ; Saturate(value)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7637, 2
  %7643 = extractvalue %dx.types.CBufRet.f32 %7637, 3
  %7644 = fadd fast float %7643, %7642
  %7645 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7646 = fmul fast float %7641, %7625
  %7647 = fmul fast float %7646, %7645
  br label %7730

; <label>:7648                                    ; preds = %7584
  %7649 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7608
  %7650 = load float, float* %7649, align 4, !tbaa !123, !noalias !125
  %7651 = fcmp fast olt float %7650, %7515
  %7652 = icmp sgt i32 %7591, 0
  %7653 = and i1 %7652, %7651
  br i1 %7653, label %7654, label %7691

; <label>:7654                                    ; preds = %7648
  br label %7655

; <label>:7655                                    ; preds = %7684, %7654
  %7656 = phi float [ %7685, %7684 ], [ %7513, %7654 ]
  %7657 = phi float [ %7686, %7684 ], [ %7514, %7654 ]
  %7658 = phi float [ %7666, %7684 ], [ %7650, %7654 ]
  %7659 = phi i32 [ %7663, %7684 ], [ %7608, %7654 ]
  %7660 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %7659
  %7661 = load float, float* %7660, align 4, !tbaa !123, !noalias !125
  %7662 = icmp slt i32 %7659, 2
  %7663 = add nsw i32 %7659, 1
  %7664 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %7663
  %7665 = load float, float* %7664, align 4, !tbaa !123, !noalias !125
  %7666 = select i1 %7662, float %7665, float %7429
  %7667 = call float @dx.op.binary.f32(i32 36, float %7666, float %7661)  ; FMin(a,b)
  %7668 = call float @dx.op.binary.f32(i32 36, float %7515, float %7667)  ; FMin(a,b)
  %7669 = icmp eq i32 %7379, 0
  %7670 = fadd fast float %7668, %7658
  %7671 = fmul fast float %7670, %7360
  %7672 = fadd fast float %7671, %7373
  br i1 %7669, label %7678, label %7673

; <label>:7673                                    ; preds = %7655
  %7674 = fsub fast float %7668, %7658
  %7675 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7674)  ; FMax(a,b)
  %7676 = fmul fast float %7675, %7672
  %7677 = fadd fast float %7676, %7657
  br label %7684

; <label>:7678                                    ; preds = %7655
  %7679 = fsub fast float %7658, %7668
  %7680 = call float @dx.op.unary.f32(i32 6, float %7679)  ; FAbs(value)
  %7681 = fadd fast float %7680, %7656
  %7682 = fmul fast float %7680, %7672
  %7683 = fsub fast float %7657, %7682
  br label %7684

; <label>:7684                                    ; preds = %7678, %7673
  %7685 = phi float [ %7675, %7673 ], [ %7681, %7678 ]
  %7686 = phi float [ %7677, %7673 ], [ %7683, %7678 ]
  %7687 = fcmp fast olt float %7666, %7515
  %7688 = icmp slt i32 %7663, 3
  %7689 = and i1 %7688, %7687
  br i1 %7689, label %7655, label %7690

; <label>:7690                                    ; preds = %7684
  br label %7691

; <label>:7691                                    ; preds = %7690, %7648
  %7692 = phi float [ %7513, %7648 ], [ %7685, %7690 ]
  %7693 = phi float [ %7514, %7648 ], [ %7686, %7690 ]
  %7694 = fsub fast float %7429, %7692
  %7695 = select i1 %7431, float %7692, float %7694
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.CBufRet.f32 %7696, 1
  %7699 = extractvalue %dx.types.CBufRet.f32 %7696, 2
  %7700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7700, 0
  %7702 = extractvalue %dx.types.CBufRet.f32 %7700, 1
  %7703 = extractvalue %dx.types.CBufRet.f32 %7700, 2
  %7704 = extractvalue %dx.types.CBufRet.f32 %7700, 3
  %7705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7706 = extractvalue %dx.types.CBufRet.f32 %7705, 3
  %7707 = call float @dx.op.binary.f32(i32 36, float %7693, float %7706)  ; FMin(a,b)
  %7708 = fmul fast float %7704, %7695
  %7709 = call float @dx.op.unary.f32(i32 7, float %7708)  ; Saturate(value)
  %7710 = fsub fast float %7701, %7697
  %7711 = fsub fast float %7702, %7698
  %7712 = fsub fast float %7703, %7699
  %7713 = fmul fast float %7709, %7710
  %7714 = fmul fast float %7709, %7711
  %7715 = fmul fast float %7709, %7712
  %7716 = fadd fast float %7713, %7697
  %7717 = fadd fast float %7714, %7698
  %7718 = fadd fast float %7715, %7699
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 0
  %7721 = extractvalue %dx.types.CBufRet.f32 %7719, 1
  %7722 = fadd fast float %7721, %7720
  %7723 = call float @dx.op.unary.f32(i32 7, float %7722)  ; Saturate(value)
  %7724 = extractvalue %dx.types.CBufRet.f32 %7719, 2
  %7725 = extractvalue %dx.types.CBufRet.f32 %7719, 3
  %7726 = fadd fast float %7725, %7724
  %7727 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7728 = fmul fast float %7723, %7707
  %7729 = fmul fast float %7728, %7727
  br label %7730

; <label>:7730                                    ; preds = %7691, %7610, %7445, %7427, %7425
  %7731 = phi float [ %7454, %7445 ], [ %7613, %7610 ], [ %7695, %7691 ], [ 0.000000e+00, %7425 ], [ 0.000000e+00, %7427 ]
  %7732 = phi float [ %7488, %7445 ], [ %7647, %7610 ], [ %7729, %7691 ], [ 0.000000e+00, %7425 ], [ 0.000000e+00, %7427 ]
  %7733 = phi float [ %7475, %7445 ], [ %7634, %7610 ], [ %7716, %7691 ], [ 0.000000e+00, %7425 ], [ 0.000000e+00, %7427 ]
  %7734 = phi float [ %7476, %7445 ], [ %7635, %7610 ], [ %7717, %7691 ], [ 0.000000e+00, %7425 ], [ 0.000000e+00, %7427 ]
  %7735 = phi float [ %7477, %7445 ], [ %7636, %7610 ], [ %7718, %7691 ], [ 0.000000e+00, %7425 ], [ 0.000000e+00, %7427 ]
  %7736 = fmul fast float %7368, %7732
  %7737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7738 = extractvalue %dx.types.CBufRet.f32 %7737, 2
  %7739 = fsub fast float %7375, %7738
  %7740 = fcmp fast olt float %7736, -2.000000e+01
  %7741 = call float @dx.op.unary.f32(i32 21, float %7736)  ; Exp(value)
  %7742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7743 = extractvalue %dx.types.CBufRet.f32 %7742, 2
  %7744 = extractvalue %dx.types.CBufRet.f32 %7742, 3
  %7745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7746 = extractvalue %dx.types.CBufRet.f32 %7745, 2
  %7747 = fmul fast float %7744, %7739
  %7748 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  %7749 = fsub fast float 1.000000e+00, %7748
  %7750 = fmul fast float %7360, 5.000000e-01
  %7751 = fadd fast float %7750, 5.000000e-01
  %7752 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7753 = fsub fast float 1.000000e+00, %7752
  %7754 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7749)  ; FMax(a,b)
  %7755 = fdiv fast float %7753, %7754
  %7756 = fsub fast float %7739, %7317
  %7757 = call float @dx.op.unary.f32(i32 6, float %7756)  ; FAbs(value)
  %7758 = fmul fast float %7757, %7743
  %7759 = call float @dx.op.unary.f32(i32 7, float %7755)  ; Saturate(value)
  %7760 = fsub fast float 1.000000e+00, %7758
  %7761 = fmul fast float %7760, %7759
  %7762 = fadd fast float %7761, %7758
  %7763 = fmul fast float %7746, %7739
  %7764 = call float @dx.op.unary.f32(i32 7, float %7763)  ; Saturate(value)
  %7765 = fsub fast float 1.000000e+00, %7762
  %7766 = fmul fast float %7765, %7764
  %7767 = fadd fast float %7766, %7762
  %7768 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7769 = fadd fast float %7741, -1.000000e+00
  %7770 = select i1 %7740, float -1.000000e+00, float %7769
  %7771 = fmul fast float %7768, %7770
  %7772 = fadd fast float %7771, 1.000000e+00
  %7773 = fsub fast float -0.000000e+00, %7771
  %7774 = fmul fast float %7733, %7773
  %7775 = fmul fast float %7734, %7773
  %7776 = fmul fast float %7735, %7773
  br label %7777

; <label>:7777                                    ; preds = %7730, %7326
  %7778 = phi float [ %7731, %7730 ], [ 0.000000e+00, %7326 ]
  %7779 = phi float [ %7772, %7730 ], [ 1.000000e+00, %7326 ]
  %7780 = phi float [ %7774, %7730 ], [ 0.000000e+00, %7326 ]
  %7781 = phi float [ %7775, %7730 ], [ 0.000000e+00, %7326 ]
  %7782 = phi float [ %7776, %7730 ], [ 0.000000e+00, %7326 ]
  %7783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7784 = extractvalue %dx.types.CBufRet.f32 %7783, 1
  %7785 = fsub fast float 1.000000e+00, %7779
  %7786 = fmul fast float %7785, %7361
  %7787 = fmul fast float %7786, %7784
  %7788 = fsub fast float %7361, %7787
  br i1 %7354, label %7789, label %7818, !dx.controlflow.hints !161

; <label>:7789                                    ; preds = %7777
  %7790 = fmul fast float %7362, %7351
  %7791 = fadd fast float %7790, %7352
  %7792 = call float @dx.op.unary.f32(i32 7, float %7791)  ; Saturate(value)
  %7793 = fmul fast float %7333, %7788
  %7794 = fsub fast float -0.000000e+00, %7793
  %7795 = fmul fast float %7334, %7788
  %7796 = fsub fast float -0.000000e+00, %7795
  %7797 = call float @dx.op.unary.f32(i32 21, float %7794)  ; Exp(value)
  %7798 = call float @dx.op.unary.f32(i32 21, float %7796)  ; Exp(value)
  %7799 = call float @dx.op.binary.f32(i32 35, float %7341, float %7797)  ; FMax(a,b)
  %7800 = call float @dx.op.binary.f32(i32 35, float %7341, float %7798)  ; FMax(a,b)
  %7801 = fsub fast float %7800, %7799
  %7802 = fmul fast float %7801, %7792
  %7803 = fadd fast float %7802, %7799
  %7804 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7805 = fsub fast float %7338, %7343
  %7806 = fsub fast float %7339, %7344
  %7807 = fsub fast float %7340, %7345
  %7808 = fmul fast float %7792, %7805
  %7809 = fmul fast float %7792, %7806
  %7810 = fmul fast float %7792, %7807
  %7811 = fadd fast float %7808, %7343
  %7812 = fadd fast float %7809, %7344
  %7813 = fadd fast float %7810, %7345
  %7814 = fsub fast float 1.000000e+00, %7804
  %7815 = fmul fast float %7814, %7811
  %7816 = fmul fast float %7814, %7812
  %7817 = fmul fast float %7814, %7813
  br label %7877

; <label>:7818                                    ; preds = %7777
  %7819 = fmul fast float %7788, %7350
  %7820 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  %7821 = fsub fast float 2.000000e+00, %7820
  %7822 = fmul fast float %7820, 9.921875e-01
  %7823 = fmul fast float %7822, %7821
  %7824 = fadd fast float %7823, 3.906250e-03
  %7825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7824, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7826 = extractvalue %dx.types.ResRet.f32 %7825, 0
  %7827 = fsub fast float %7820, %7826
  %7828 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7827)  ; FMax(a,b)
  %7829 = fmul fast float %7336, %7317
  %7830 = call float @dx.op.unary.f32(i32 6, float %7829)  ; FAbs(value)
  %7831 = fcmp fast ogt float %7830, 0x3EB0C6F7A0000000
  br i1 %7831, label %7832, label %7838, !dx.controlflow.hints !162

; <label>:7832                                    ; preds = %7818
  %7833 = fmul fast float %7829, 0xBFF7154760000000
  %7834 = call float @dx.op.unary.f32(i32 21, float %7833)  ; Exp(value)
  %7835 = fsub fast float 1.000000e+00, %7834
  %7836 = fdiv fast float %7835, %7829
  %7837 = fmul fast float %7836, %7346
  br label %7838

; <label>:7838                                    ; preds = %7832, %7818
  %7839 = phi float [ %7837, %7832 ], [ %7346, %7818 ]
  %7840 = fadd fast float %7839, %7348
  %7841 = fmul fast float %7840, %7828
  %7842 = fmul fast float %7333, %7841
  %7843 = fsub fast float -0.000000e+00, %7842
  %7844 = fmul fast float %7334, %7841
  %7845 = fsub fast float -0.000000e+00, %7844
  %7846 = fmul fast float %7335, %7841
  %7847 = fsub fast float -0.000000e+00, %7846
  %7848 = call float @dx.op.unary.f32(i32 21, float %7843)  ; Exp(value)
  %7849 = call float @dx.op.unary.f32(i32 21, float %7845)  ; Exp(value)
  %7850 = call float @dx.op.unary.f32(i32 21, float %7847)  ; Exp(value)
  %7851 = fmul fast float %7362, %7362
  %7852 = fadd fast float %7851, 1.000000e+00
  %7853 = fmul fast float %7852, 0x3FAE8EC8A0000000
  %7854 = fmul fast float %7853, %7343
  %7855 = fmul fast float %7853, %7344
  %7856 = fmul fast float %7853, %7345
  %7857 = fmul fast float %7362, %7341
  %7858 = fsub fast float 1.000000e+00, %7857
  %7859 = fmul fast float %7341, %7341
  %7860 = fsub fast float 1.000000e+00, %7859
  %7861 = fmul fast float %7860, 0x3FB45F3060000000
  %7862 = fmul fast float %7858, %7858
  %7863 = fdiv fast float 1.000000e+00, %7862
  %7864 = fmul fast float %7861, %7863
  %7865 = fmul fast float %7864, %7338
  %7866 = fmul fast float %7864, %7339
  %7867 = fmul fast float %7864, %7340
  %7868 = fadd fast float %7865, %7854
  %7869 = fadd fast float %7866, %7855
  %7870 = fadd fast float %7867, %7856
  %7871 = fsub fast float 1.000000e+00, %7848
  %7872 = fsub fast float 1.000000e+00, %7849
  %7873 = fsub fast float 1.000000e+00, %7850
  %7874 = fmul fast float %7868, %7871
  %7875 = fmul fast float %7869, %7872
  %7876 = fmul fast float %7870, %7873
  br label %7877

; <label>:7877                                    ; preds = %7838, %7789
  %7878 = phi float [ %7815, %7789 ], [ %7874, %7838 ]
  %7879 = phi float [ %7816, %7789 ], [ %7875, %7838 ]
  %7880 = phi float [ %7817, %7789 ], [ %7876, %7838 ]
  %7881 = phi float [ %7804, %7789 ], [ %7848, %7838 ]
  %7882 = phi float [ %7804, %7789 ], [ %7849, %7838 ]
  %7883 = phi float [ %7804, %7789 ], [ %7850, %7838 ]
  br i1 %7370, label %7884, label %8082, !dx.controlflow.hints !163

; <label>:7884                                    ; preds = %7877
  %7885 = extractvalue %dx.types.CBufRet.f32 %7783, 0
  %7886 = fmul fast float %7885, %7785
  %7887 = fsub fast float %7780, %7878
  %7888 = fsub fast float %7781, %7879
  %7889 = fsub fast float %7782, %7880
  %7890 = fmul fast float %7886, %7887
  %7891 = fmul fast float %7886, %7888
  %7892 = fmul fast float %7886, %7889
  %7893 = fadd fast float %7890, %7878
  %7894 = fadd fast float %7891, %7879
  %7895 = fadd fast float %7892, %7880
  %7896 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7881)  ; FMax(a,b)
  %7897 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7882)  ; FMax(a,b)
  %7898 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7883)  ; FMax(a,b)
  %7899 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7779)  ; FMax(a,b)
  %7900 = call float @dx.op.binary.f32(i32 35, float %7778, float %7788)  ; FMax(a,b)
  %7901 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7900)  ; FMax(a,b)
  %7902 = fdiv fast float %7778, %7901
  %7903 = call float @dx.op.unary.f32(i32 7, float %7902)  ; Saturate(value)
  %7904 = fdiv fast float %7788, %7901
  %7905 = call float @dx.op.unary.f32(i32 7, float %7904)  ; Saturate(value)
  %7906 = fcmp fast une float %7899, 1.000000e+00
  br i1 %7906, label %7907, label %7920, !dx.controlflow.hints !164

; <label>:7907                                    ; preds = %7884
  %7908 = call float @dx.op.unary.f32(i32 23, float %7899)  ; Log(value)
  %7909 = fmul fast float %7908, 0x3FE62E4300000000
  %7910 = fmul fast float %7780, %7909
  %7911 = fsub fast float -0.000000e+00, %7910
  %7912 = fmul fast float %7781, %7909
  %7913 = fsub fast float -0.000000e+00, %7912
  %7914 = fmul fast float %7782, %7909
  %7915 = fsub fast float -0.000000e+00, %7914
  %7916 = fsub fast float 1.000000e+00, %7899
  %7917 = fdiv fast float %7911, %7916
  %7918 = fdiv fast float %7913, %7916
  %7919 = fdiv fast float %7915, %7916
  br label %7920

; <label>:7920                                    ; preds = %7907, %7884
  %7921 = phi float [ %7917, %7907 ], [ %7780, %7884 ]
  %7922 = phi float [ %7918, %7907 ], [ %7781, %7884 ]
  %7923 = phi float [ %7919, %7907 ], [ %7782, %7884 ]
  %7924 = phi float [ %7909, %7907 ], [ 0.000000e+00, %7884 ]
  %7925 = fcmp fast une float %7896, 1.000000e+00
  br i1 %7925, label %7926, label %7933, !dx.controlflow.hints !165

; <label>:7926                                    ; preds = %7920
  %7927 = call float @dx.op.unary.f32(i32 23, float %7896)  ; Log(value)
  %7928 = fmul fast float %7927, 0x3FE62E4300000000
  %7929 = fmul fast float %7893, %7928
  %7930 = fsub fast float -0.000000e+00, %7929
  %7931 = fsub fast float 1.000000e+00, %7896
  %7932 = fdiv fast float %7930, %7931
  br label %7933

; <label>:7933                                    ; preds = %7926, %7920
  %7934 = phi float [ %7932, %7926 ], [ %7893, %7920 ]
  %7935 = phi float [ %7928, %7926 ], [ 0.000000e+00, %7920 ]
  %7936 = fcmp fast une float %7897, 1.000000e+00
  br i1 %7936, label %7937, label %7944, !dx.controlflow.hints !165

; <label>:7937                                    ; preds = %7933
  %7938 = call float @dx.op.unary.f32(i32 23, float %7897)  ; Log(value)
  %7939 = fmul fast float %7938, 0x3FE62E4300000000
  %7940 = fmul fast float %7894, %7939
  %7941 = fsub fast float -0.000000e+00, %7940
  %7942 = fsub fast float 1.000000e+00, %7897
  %7943 = fdiv fast float %7941, %7942
  br label %7944

; <label>:7944                                    ; preds = %7937, %7933
  %7945 = phi float [ %7943, %7937 ], [ %7894, %7933 ]
  %7946 = phi float [ %7939, %7937 ], [ 0.000000e+00, %7933 ]
  %7947 = fcmp fast une float %7898, 1.000000e+00
  br i1 %7947, label %7948, label %7955, !dx.controlflow.hints !165

; <label>:7948                                    ; preds = %7944
  %7949 = call float @dx.op.unary.f32(i32 23, float %7898)  ; Log(value)
  %7950 = fmul fast float %7949, 0x3FE62E4300000000
  %7951 = fmul fast float %7895, %7950
  %7952 = fsub fast float -0.000000e+00, %7951
  %7953 = fsub fast float 1.000000e+00, %7898
  %7954 = fdiv fast float %7952, %7953
  br label %7955

; <label>:7955                                    ; preds = %7948, %7944
  %7956 = phi float [ %7954, %7948 ], [ %7895, %7944 ]
  %7957 = phi float [ %7950, %7948 ], [ 0.000000e+00, %7944 ]
  %7958 = fmul fast float %7921, %7905
  %7959 = fmul fast float %7922, %7905
  %7960 = fmul fast float %7923, %7905
  %7961 = fmul fast float %7924, %7905
  %7962 = fmul fast float %7934, %7903
  %7963 = fmul fast float %7945, %7903
  %7964 = fmul fast float %7956, %7903
  %7965 = fmul fast float %7935, %7903
  %7966 = fmul fast float %7946, %7903
  %7967 = fmul fast float %7957, %7903
  %7968 = fadd fast float %7962, %7958
  %7969 = fadd fast float %7963, %7959
  %7970 = fadd fast float %7964, %7960
  %7971 = fadd fast float %7965, %7961
  %7972 = fadd fast float %7966, %7961
  %7973 = fadd fast float %7967, %7961
  %7974 = fcmp fast une float %7971, 0.000000e+00
  br i1 %7974, label %7975, label %7982, !dx.controlflow.hints !166

; <label>:7975                                    ; preds = %7955
  %7976 = fmul fast float %7971, 0x3FF7154760000000
  %7977 = call float @dx.op.unary.f32(i32 21, float %7976)  ; Exp(value)
  %7978 = fsub fast float 1.000000e+00, %7977
  %7979 = fmul fast float %7968, %7978
  %7980 = fsub fast float -0.000000e+00, %7979
  %7981 = fdiv fast float %7980, %7971
  br label %7982

; <label>:7982                                    ; preds = %7975, %7955
  %7983 = phi float [ %7977, %7975 ], [ 1.000000e+00, %7955 ]
  %7984 = phi float [ %7981, %7975 ], [ %7968, %7955 ]
  %7985 = fcmp fast une float %7972, 0.000000e+00
  br i1 %7985, label %7986, label %7993, !dx.controlflow.hints !166

; <label>:7986                                    ; preds = %7982
  %7987 = fmul fast float %7972, 0x3FF7154760000000
  %7988 = call float @dx.op.unary.f32(i32 21, float %7987)  ; Exp(value)
  %7989 = fsub fast float 1.000000e+00, %7988
  %7990 = fmul fast float %7969, %7989
  %7991 = fsub fast float -0.000000e+00, %7990
  %7992 = fdiv fast float %7991, %7972
  br label %7993

; <label>:7993                                    ; preds = %7986, %7982
  %7994 = phi float [ %7988, %7986 ], [ 1.000000e+00, %7982 ]
  %7995 = phi float [ %7992, %7986 ], [ %7969, %7982 ]
  %7996 = fcmp fast une float %7973, 0.000000e+00
  br i1 %7996, label %7997, label %8004, !dx.controlflow.hints !166

; <label>:7997                                    ; preds = %7993
  %7998 = fmul fast float %7973, 0x3FF7154760000000
  %7999 = call float @dx.op.unary.f32(i32 21, float %7998)  ; Exp(value)
  %8000 = fsub fast float 1.000000e+00, %7999
  %8001 = fmul fast float %7970, %8000
  %8002 = fsub fast float -0.000000e+00, %8001
  %8003 = fdiv fast float %8002, %7973
  br label %8004

; <label>:8004                                    ; preds = %7997, %7993
  %8005 = phi float [ %7999, %7997 ], [ 1.000000e+00, %7993 ]
  %8006 = phi float [ %8003, %7997 ], [ %7970, %7993 ]
  %8007 = fcmp fast ogt float %7903, %7905
  br i1 %8007, label %8008, label %8028

; <label>:8008                                    ; preds = %8004
  %8009 = fsub fast float 1.000000e+00, %7905
  %8010 = fmul fast float %7921, %8009
  %8011 = fmul fast float %7922, %8009
  %8012 = fmul fast float %7923, %8009
  %8013 = fmul fast float %7924, %8009
  %8014 = fcmp fast une float %8013, 0.000000e+00
  br i1 %8014, label %8015, label %8066, !dx.controlflow.hints !167

; <label>:8015                                    ; preds = %8008
  %8016 = fmul fast float %8013, 0x3FF7154760000000
  %8017 = call float @dx.op.unary.f32(i32 21, float %8016)  ; Exp(value)
  %8018 = fsub fast float 1.000000e+00, %8017
  %8019 = fmul fast float %8010, %8018
  %8020 = fsub fast float -0.000000e+00, %8019
  %8021 = fmul fast float %8011, %8018
  %8022 = fsub fast float -0.000000e+00, %8021
  %8023 = fmul fast float %8012, %8018
  %8024 = fsub fast float -0.000000e+00, %8023
  %8025 = fdiv fast float %8020, %8013
  %8026 = fdiv fast float %8022, %8013
  %8027 = fdiv fast float %8024, %8013
  br label %8066

; <label>:8028                                    ; preds = %8004
  %8029 = fsub fast float 1.000000e+00, %7903
  %8030 = fmul fast float %7934, %8029
  %8031 = fmul fast float %7945, %8029
  %8032 = fmul fast float %7956, %8029
  %8033 = fmul fast float %7935, %8029
  %8034 = fmul fast float %7946, %8029
  %8035 = fmul fast float %7957, %8029
  %8036 = fcmp fast une float %8033, 0.000000e+00
  br i1 %8036, label %8037, label %8044, !dx.controlflow.hints !166

; <label>:8037                                    ; preds = %8028
  %8038 = fmul fast float %8033, 0x3FF7154760000000
  %8039 = call float @dx.op.unary.f32(i32 21, float %8038)  ; Exp(value)
  %8040 = fsub fast float 1.000000e+00, %8039
  %8041 = fmul fast float %8030, %8040
  %8042 = fsub fast float -0.000000e+00, %8041
  %8043 = fdiv fast float %8042, %8033
  br label %8044

; <label>:8044                                    ; preds = %8037, %8028
  %8045 = phi float [ %8043, %8037 ], [ %8030, %8028 ]
  %8046 = phi float [ %8039, %8037 ], [ 1.000000e+00, %8028 ]
  %8047 = fcmp fast une float %8034, 0.000000e+00
  br i1 %8047, label %8048, label %8055, !dx.controlflow.hints !166

; <label>:8048                                    ; preds = %8044
  %8049 = fmul fast float %8034, 0x3FF7154760000000
  %8050 = call float @dx.op.unary.f32(i32 21, float %8049)  ; Exp(value)
  %8051 = fsub fast float 1.000000e+00, %8050
  %8052 = fmul fast float %8031, %8051
  %8053 = fsub fast float -0.000000e+00, %8052
  %8054 = fdiv fast float %8053, %8034
  br label %8055

; <label>:8055                                    ; preds = %8048, %8044
  %8056 = phi float [ %8054, %8048 ], [ %8031, %8044 ]
  %8057 = phi float [ %8050, %8048 ], [ 1.000000e+00, %8044 ]
  %8058 = fcmp fast une float %8035, 0.000000e+00
  br i1 %8058, label %8059, label %8066, !dx.controlflow.hints !166

; <label>:8059                                    ; preds = %8055
  %8060 = fmul fast float %8035, 0x3FF7154760000000
  %8061 = call float @dx.op.unary.f32(i32 21, float %8060)  ; Exp(value)
  %8062 = fsub fast float 1.000000e+00, %8061
  %8063 = fmul fast float %8032, %8062
  %8064 = fsub fast float -0.000000e+00, %8063
  %8065 = fdiv fast float %8064, %8035
  br label %8066

; <label>:8066                                    ; preds = %8059, %8055, %8015, %8008
  %8067 = phi float [ %8065, %8059 ], [ %8027, %8015 ], [ %8012, %8008 ], [ %8032, %8055 ]
  %8068 = phi float [ %8056, %8059 ], [ %8026, %8015 ], [ %8011, %8008 ], [ %8056, %8055 ]
  %8069 = phi float [ %8045, %8059 ], [ %8025, %8015 ], [ %8010, %8008 ], [ %8045, %8055 ]
  %8070 = phi float [ %8061, %8059 ], [ %8017, %8015 ], [ 1.000000e+00, %8008 ], [ 1.000000e+00, %8055 ]
  %8071 = phi float [ %8057, %8059 ], [ %8017, %8015 ], [ 1.000000e+00, %8008 ], [ %8057, %8055 ]
  %8072 = phi float [ %8046, %8059 ], [ %8017, %8015 ], [ 1.000000e+00, %8008 ], [ %8046, %8055 ]
  %8073 = fmul fast float %8072, %7984
  %8074 = fmul fast float %8071, %7995
  %8075 = fmul fast float %8070, %8006
  %8076 = fadd fast float %8073, %8069
  %8077 = fadd fast float %8074, %8068
  %8078 = fadd fast float %8075, %8067
  %8079 = fmul fast float %8072, %7983
  %8080 = fmul fast float %8071, %7994
  %8081 = fmul fast float %8070, %8005
  br label %8082

; <label>:8082                                    ; preds = %8066, %7877
  %8083 = phi float [ %8081, %8066 ], [ %7883, %7877 ]
  %8084 = phi float [ %8080, %8066 ], [ %7882, %7877 ]
  %8085 = phi float [ %8079, %8066 ], [ %7881, %7877 ]
  %8086 = phi float [ %8078, %8066 ], [ %7880, %7877 ]
  %8087 = phi float [ %8077, %8066 ], [ %7879, %7877 ]
  %8088 = phi float [ %8076, %8066 ], [ %7878, %7877 ]
  %8089 = fmul fast float %8088, %7034
  %8090 = fmul fast float %8087, %7034
  %8091 = fmul fast float %8086, %7034
  %8092 = fmul fast float %8085, %7325
  %8093 = call float @dx.op.dot3.f32(i32 55, float %8085, float %8084, float %8083, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8094 = call float @dx.op.dot3.f32(i32 55, float %8089, float %8090, float %8091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8095 = select i1 %223, float %8093, float %8085
  %8096 = select i1 %223, float %8093, float %8084
  %8097 = select i1 %223, float 1.000000e+00, float %8083
  %8098 = select i1 %223, float %8094, float %8089
  %8099 = select i1 %223, float 0.000000e+00, float %8090
  %8100 = select i1 %223, float 0.000000e+00, float %8091
  %8101 = fmul fast float %8095, %7319
  %8102 = fmul fast float %8096, %7320
  %8103 = fmul fast float %8097, %7321
  %8104 = fadd fast float %8101, %8098
  %8105 = fadd fast float %8102, %8099
  %8106 = fadd fast float %8100, %8103
  %8107 = fmul fast float %8095, %7322
  %8108 = fmul fast float %8096, %7323
  %8109 = fmul fast float %8097, %7324
  %8110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.i32 %8110, 0
  %8112 = icmp eq i32 %8111, 0
  br i1 %8112, label %8480, label %8113, !dx.controlflow.hints !168

; <label>:8113                                    ; preds = %8082
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 2
  %8116 = extractvalue %dx.types.CBufRet.f32 %8114, 3
  %8117 = fmul fast float %8115, %102
  %8118 = fmul fast float %8116, %103
  %8119 = fmul fast float %8117, 2.000000e+00
  %8120 = fmul fast float %8118, 2.000000e+00
  %8121 = fsub fast float 1.000000e+00, %8119
  %8122 = fsub fast float 1.000000e+00, %8120
  %8123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8124 = extractvalue %dx.types.CBufRet.f32 %8123, 0
  %8125 = extractvalue %dx.types.CBufRet.f32 %8123, 1
  %8126 = extractvalue %dx.types.CBufRet.f32 %8123, 2
  %8127 = fmul fast float %8121, %8124
  %8128 = fmul fast float %8121, %8125
  %8129 = fmul fast float %8121, %8126
  %8130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8131 = extractvalue %dx.types.CBufRet.f32 %8130, 0
  %8132 = extractvalue %dx.types.CBufRet.f32 %8130, 1
  %8133 = extractvalue %dx.types.CBufRet.f32 %8130, 2
  %8134 = fmul fast float %8122, %8131
  %8135 = fmul fast float %8122, %8132
  %8136 = fmul fast float %8122, %8133
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 0
  %8139 = extractvalue %dx.types.CBufRet.f32 %8137, 1
  %8140 = extractvalue %dx.types.CBufRet.f32 %8137, 2
  %8141 = fadd fast float %8134, %8138
  %8142 = fadd fast float %8141, %8127
  %8143 = fadd fast float %8135, %8139
  %8144 = fadd fast float %8143, %8128
  %8145 = fadd fast float %8136, %8140
  %8146 = fadd fast float %8145, %8129
  %8147 = fmul fast float %8142, %7318
  %8148 = fmul fast float %8144, %7318
  %8149 = fmul fast float %8146, %7318
  %8150 = fmul fast float %8147, %8147
  %8151 = fmul fast float %8148, %8148
  %8152 = fadd fast float %8150, %8151
  %8153 = fmul fast float %8149, %8149
  %8154 = fadd fast float %8152, %8153
  %8155 = call float @dx.op.unary.f32(i32 24, float %8154)  ; Sqrt(value)
  %8156 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %8157 = fsub fast float %8155, %8156
  %8158 = extractvalue %dx.types.CBufRet.f32 %7045, 2
  %8159 = fmul fast float %8157, %8158
  %8160 = call float @dx.op.unary.f32(i32 7, float %8159)  ; Saturate(value)
  %8161 = fadd fast float %8160, -5.000000e-01
  %8162 = fmul fast float %8161, 2.000000e+00
  %8163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8164 = extractvalue %dx.types.CBufRet.f32 %8163, 2
  %8165 = call float @dx.op.binary.f32(i32 36, float %8164, float %8162)  ; FMin(a,b)
  %8166 = fsub fast float -0.000000e+00, %8164
  %8167 = fcmp fast ogt float %8165, %8166
  br i1 %8167, label %8168, label %8480, !dx.controlflow.hints !169

; <label>:8168                                    ; preds = %8113
  %8169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8170 = extractvalue %dx.types.CBufRet.f32 %8169, 3
  %8171 = fcmp fast ogt float %8170, 0.000000e+00
  br i1 %8171, label %8172, label %8247, !dx.controlflow.hints !170

; <label>:8172                                    ; preds = %8168
  %8173 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8174 = extractvalue %dx.types.Dimensions %8173, 0
  %8175 = sitofp i32 %8174 to float
  %8176 = extractvalue %dx.types.Dimensions %8173, 1
  %8177 = sitofp i32 %8176 to float
  %8178 = fmul fast float %8117, %8175
  %8179 = fmul fast float %8118, %8177
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8182 = fsub fast float -0.000000e+00, %8181
  %8183 = fptoui float %8182 to i32
  %8184 = fptoui float %8178 to i32
  %8185 = fptoui float %8179 to i32
  %8186 = and i32 %8183, 31
  %8187 = lshr i32 %8184, %8186
  %8188 = lshr i32 %8185, %8186
  %8189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8183, i32 %8187, i32 %8188, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 0
  %8191 = fcmp fast olt float %8190, -1.000000e+00
  %8192 = fcmp fast ogt float %8190, -1.000000e+00
  %8193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8194 = extractvalue %dx.types.CBufRet.f32 %8193, 1
  %8195 = select i1 %8192, float %8194, float 1.000000e+00
  %8196 = fadd fast float %8190, 1.000000e+00
  %8197 = fmul fast float %8195, %8196
  %8198 = call float @dx.op.unary.f32(i32 6, float %8197)  ; FAbs(value)
  %8199 = extractvalue %dx.types.CBufRet.f32 %8193, 3
  %8200 = fcmp fast oge float %8198, %8199
  %8201 = select i1 %8200, float 0x4197782600000000, float %8198
  %8202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8202, 0
  %8204 = extractvalue %dx.types.CBufRet.f32 %8202, 1
  %8205 = extractvalue %dx.types.CBufRet.f32 %8202, 2
  %8206 = select i1 %8191, float %8203, float %8124
  %8207 = select i1 %8191, float %8204, float %8125
  %8208 = select i1 %8191, float %8205, float %8126
  %8209 = fmul fast float %8206, %8121
  %8210 = fmul fast float %8207, %8121
  %8211 = fmul fast float %8208, %8121
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 0
  %8214 = extractvalue %dx.types.CBufRet.f32 %8212, 1
  %8215 = extractvalue %dx.types.CBufRet.f32 %8212, 2
  %8216 = select i1 %8191, float %8213, float %8131
  %8217 = select i1 %8191, float %8214, float %8132
  %8218 = select i1 %8191, float %8215, float %8133
  %8219 = fmul fast float %8216, %8122
  %8220 = fmul fast float %8217, %8122
  %8221 = fmul fast float %8218, %8122
  %8222 = fadd fast float %8219, %8209
  %8223 = fadd fast float %8220, %8210
  %8224 = fadd fast float %8221, %8211
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.CBufRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.CBufRet.f32 %8225, 2
  %8229 = select i1 %8191, float %8226, float %8138
  %8230 = select i1 %8191, float %8227, float %8139
  %8231 = select i1 %8191, float %8228, float %8140
  %8232 = fadd fast float %8222, %8229
  %8233 = fadd fast float %8223, %8230
  %8234 = fadd fast float %8224, %8231
  %8235 = fmul fast float %8232, %8201
  %8236 = fmul fast float %8233, %8201
  %8237 = fmul fast float %8234, %8201
  %8238 = fmul fast float %8235, %8235
  %8239 = fmul fast float %8236, %8236
  %8240 = fadd fast float %8238, %8239
  %8241 = fmul fast float %8237, %8237
  %8242 = fadd fast float %8240, %8241
  %8243 = call float @dx.op.unary.f32(i32 24, float %8242)  ; Sqrt(value)
  %8244 = fsub fast float %8243, %8156
  %8245 = fmul fast float %8244, %8158
  %8246 = call float @dx.op.unary.f32(i32 7, float %8245)  ; Saturate(value)
  br label %8247

; <label>:8247                                    ; preds = %8172, %8168
  %8248 = phi float [ %8246, %8172 ], [ 1.000000e+00, %8168 ]
  %8249 = fmul fast float %8165, 5.000000e-01
  %8250 = fadd fast float %8249, 5.000000e-01
  %8251 = call float @dx.op.unary.f32(i32 22, float %8250)  ; Frc(value)
  %8252 = call float @dx.op.unary.f32(i32 27, float %8251)  ; Round_ni(value)
  %8253 = call float @dx.op.unary.f32(i32 22, float %8251)  ; Frc(value)
  %8254 = fmul fast float %8253, 2.000000e+00
  %8255 = fadd fast float %8254, -1.000000e+00
  %8256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8117, float %8118, float %8252, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8257 = extractvalue %dx.types.ResRet.f32 %8256, 0
  %8258 = extractvalue %dx.types.ResRet.f32 %8256, 1
  %8259 = extractvalue %dx.types.ResRet.f32 %8256, 2
  %8260 = extractvalue %dx.types.ResRet.f32 %8256, 3
  %8261 = fadd fast float %8257, -5.000000e-01
  %8262 = fadd fast float %8259, -5.000000e-01
  %8263 = fmul fast float %8261, 0xBFD5555560000000
  %8264 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8262, float %8263)  ; FMad(a,b,c)
  %8265 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8258, float 0.000000e+00)  ; FMad(a,b,c)
  %8266 = fadd fast float %8265, %8260
  %8267 = fmul fast float %8261, -7.500000e-01
  %8268 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8262, float %8267)  ; FMad(a,b,c)
  %8269 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8258, float 0.000000e+00)  ; FMad(a,b,c)
  %8270 = fadd fast float %8269, %8260
  %8271 = call float @dx.op.binary.f32(i32 35, float %8264, float -1.000000e+00)  ; FMax(a,b)
  %8272 = call float @dx.op.binary.f32(i32 35, float %8266, float -1.000000e+00)  ; FMax(a,b)
  %8273 = call float @dx.op.binary.f32(i32 35, float %8268, float -1.000000e+00)  ; FMax(a,b)
  %8274 = call float @dx.op.binary.f32(i32 35, float %8270, float -1.000000e+00)  ; FMax(a,b)
  %8275 = call float @dx.op.binary.f32(i32 36, float %8271, float 1.000000e+00)  ; FMin(a,b)
  %8276 = call float @dx.op.binary.f32(i32 36, float %8272, float 1.000000e+00)  ; FMin(a,b)
  %8277 = call float @dx.op.binary.f32(i32 36, float %8273, float 1.000000e+00)  ; FMin(a,b)
  %8278 = call float @dx.op.binary.f32(i32 36, float %8274, float 1.000000e+00)  ; FMin(a,b)
  %8279 = fcmp fast olt float %8275, 0x3FEFFF8020000000
  br i1 %8279, label %8280, label %8395, !dx.controlflow.hints !171

; <label>:8280                                    ; preds = %8247
  %8281 = extractvalue %dx.types.CBufRet.f32 %8163, 3
  %8282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8283 = extractvalue %dx.types.CBufRet.f32 %8282, 0
  %8284 = extractvalue %dx.types.CBufRet.f32 %8282, 1
  %8285 = extractvalue %dx.types.CBufRet.f32 %8282, 2
  %8286 = extractvalue %dx.types.CBufRet.f32 %8282, 3
  %8287 = fsub fast float %8283, %8275
  %8288 = fsub fast float %8284, %8276
  %8289 = fsub fast float %8285, %8277
  %8290 = fsub fast float %8286, %8278
  %8291 = fmul fast float %8287, %8281
  %8292 = fmul fast float %8288, %8281
  %8293 = fmul fast float %8289, %8281
  %8294 = fmul fast float %8290, %8281
  %8295 = fadd fast float %8291, %8275
  %8296 = fadd fast float %8292, %8276
  %8297 = fsub fast float -0.000000e+00, %8296
  %8298 = fadd fast float %8293, %8277
  %8299 = fadd fast float %8294, %8278
  %8300 = fmul fast float %8295, %8295
  %8301 = fsub fast float %8296, %8300
  %8302 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8301)  ; FMax(a,b)
  %8303 = fdiv fast float 1.000000e+00, %8302
  %8304 = fmul fast float %8296, %8295
  %8305 = fsub fast float %8298, %8304
  %8306 = fsub fast float %8255, %8295
  %8307 = fmul fast float %8255, %8255
  %8308 = fsub fast float %8307, %8296
  %8309 = fmul fast float %8306, %8303
  %8310 = fmul fast float %8309, %8305
  %8311 = fsub fast float %8308, %8310
  %8312 = fmul fast float %8296, %8296
  %8313 = fsub fast float %8299, %8312
  %8314 = fmul fast float %8305, %8305
  %8315 = fmul fast float %8314, %8303
  %8316 = fsub fast float %8313, %8315
  %8317 = fdiv fast float %8311, %8316
  %8318 = fmul fast float %8305, %8317
  %8319 = fsub fast float %8306, %8318
  %8320 = fmul fast float %8319, %8303
  %8321 = fmul fast float %8320, %8295
  %8322 = fsub fast float 1.000000e+00, %8321
  %8323 = fmul fast float %8296, %8317
  %8324 = fsub fast float %8322, %8323
  %8325 = fmul fast float %8320, %8320
  %8326 = fmul fast float %8317, 4.000000e+00
  %8327 = fmul fast float %8326, %8324
  %8328 = fsub fast float %8325, %8327
  %8329 = call float @dx.op.unary.f32(i32 24, float %8328)  ; Sqrt(value)
  %8330 = fcmp fast oge float %8320, 0.000000e+00
  %8331 = fsub fast float -0.000000e+00, %8329
  %8332 = select i1 %8330, float %8331, float %8329
  %8333 = fsub fast float %8332, %8320
  %8334 = fdiv fast float %8333, %8317
  %8335 = fdiv fast float %8324, %8333
  %8336 = fmul fast float %8334, 5.000000e-01
  %8337 = fmul fast float %8335, 2.000000e+00
  %8338 = select i1 %8330, float %8336, float %8337
  %8339 = select i1 %8330, float %8337, float %8336
  %8340 = call float @dx.op.binary.f32(i32 35, float %8338, float %8339)  ; FMax(a,b)
  %8341 = call float @dx.op.binary.f32(i32 36, float %8338, float %8339)  ; FMin(a,b)
  %8342 = fcmp fast ogt float %8255, %8341
  br i1 %8342, label %8343, label %8353

; <label>:8343                                    ; preds = %8280
  %8344 = fsub fast float %8255, %8341
  %8345 = fsub fast float %8340, %8341
  %8346 = fmul fast float %8344, %8345
  %8347 = fmul fast float %8340, %8255
  %8348 = fadd fast float %8340, %8255
  %8349 = fmul fast float %8348, %8295
  %8350 = fadd fast float %8347, %8296
  %8351 = fsub fast float %8350, %8349
  %8352 = fdiv fast float %8351, %8346
  br label %8353

; <label>:8353                                    ; preds = %8343, %8280
  %8354 = phi float [ %8352, %8343 ], [ 0.000000e+00, %8280 ]
  %8355 = fcmp fast ogt float %8255, %8340
  %8356 = fsub fast float %8255, %8340
  br i1 %8355, label %8357, label %8367

; <label>:8357                                    ; preds = %8353
  %8358 = fsub fast float %8340, %8341
  %8359 = fmul fast float %8358, %8356
  %8360 = fmul fast float %8341, %8255
  %8361 = fadd fast float %8341, %8255
  %8362 = fmul fast float %8361, %8295
  %8363 = fsub fast float %8297, %8360
  %8364 = fadd fast float %8363, %8362
  %8365 = fdiv fast float %8364, %8359
  %8366 = fadd fast float %8365, %8354
  br label %8367

; <label>:8367                                    ; preds = %8357, %8353
  %8368 = phi float [ %8366, %8357 ], [ %8354, %8353 ]
  %8369 = fsub fast float %8255, %8341
  %8370 = fmul fast float %8369, %8356
  %8371 = fmul fast float %8341, %8340
  %8372 = fadd fast float %8341, %8340
  %8373 = fmul fast float %8372, %8295
  %8374 = fadd fast float %8371, %8296
  %8375 = fsub fast float %8374, %8373
  %8376 = fdiv fast float %8375, %8370
  %8377 = call float @dx.op.unary.f32(i32 7, float %8368)  ; Saturate(value)
  %8378 = fcmp fast oeq float %7046, 0.000000e+00
  %8379 = extractvalue %dx.types.CBufRet.f32 %8163, 0
  %8380 = fcmp fast oeq float %8379, 0.000000e+00
  %8381 = or i1 %8378, %8380
  %8382 = fmul fast float %8379, 2.000000e+00
  %8383 = fadd fast float %8164, %8165
  %8384 = fdiv fast float %8383, %8382
  %8385 = call float @dx.op.unary.f32(i32 7, float %8384)  ; Saturate(value)
  %8386 = fmul fast float %8385, 2.000000e+00
  %8387 = fsub fast float 3.000000e+00, %8386
  %8388 = fmul fast float %8385, %8385
  %8389 = fmul fast float %8388, %8387
  %8390 = select i1 %8381, float 1.000000e+00, float %8389
  %8391 = fmul fast float %8376, %7046
  %8392 = fadd fast float %8377, %8391
  %8393 = call float @dx.op.unary.f32(i32 7, float %8392)  ; Saturate(value)
  %8394 = fmul fast float %8390, %8393
  br label %8395

; <label>:8395                                    ; preds = %8367, %8247
  %8396 = phi float [ %8394, %8367 ], [ 0.000000e+00, %8247 ]
  %8397 = fsub fast float 1.000000e+00, %8396
  %8398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8117, float %8118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8399 = extractvalue %dx.types.ResRet.f32 %8398, 0
  %8400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.i32 %8400, 2
  %8402 = icmp eq i32 %8401, 0
  br i1 %8402, label %8408, label %8403

; <label>:8403                                    ; preds = %8395
  %8404 = call float @dx.op.unary.f32(i32 7, float %8396)  ; Saturate(value)
  %8405 = fadd fast float %8399, -1.000000e+00
  %8406 = fmul fast float %8404, %8405
  %8407 = fadd fast float %8406, 1.000000e+00
  br label %8408

; <label>:8408                                    ; preds = %8403, %8395
  %8409 = phi float [ %8407, %8403 ], [ %8397, %8395 ]
  br i1 %8171, label %8410, label %8428

; <label>:8410                                    ; preds = %8408
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8413 = fsub fast float %8248, %8412
  %8414 = call float @dx.op.unary.f32(i32 7, float %8413)  ; Saturate(value)
  %8415 = fsub fast float %8248, %8170
  %8416 = call float @dx.op.unary.f32(i32 7, float %8415)  ; Saturate(value)
  %8417 = fsub fast float %8414, %8416
  %8418 = fsub fast float %8250, %8416
  %8419 = fdiv fast float %8418, %8417
  %8420 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8421 = fmul fast float %8420, 2.000000e+00
  %8422 = fsub fast float 3.000000e+00, %8421
  %8423 = fsub fast float %8399, %8409
  %8424 = fmul fast float %8420, %8420
  %8425 = fmul fast float %8424, %8423
  %8426 = fmul fast float %8425, %8422
  %8427 = fadd fast float %8426, %8409
  br label %8428

; <label>:8428                                    ; preds = %8410, %8408
  %8429 = phi float [ %8427, %8410 ], [ %8409, %8408 ]
  %8430 = call float @dx.op.binary.f32(i32 35, float %8399, float %8429)  ; FMax(a,b)
  %8431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8432 = extractvalue %dx.types.CBufRet.i32 %8431, 2
  %8433 = and i32 %8432, 1
  %8434 = icmp eq i32 %8433, 0
  %8435 = fcmp fast une float %8430, 1.000000e+00
  %8436 = and i1 %8435, %8434
  br i1 %8436, label %8437, label %8456

; <label>:8437                                    ; preds = %8428
  %8438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8117, float %8118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8439 = extractvalue %dx.types.ResRet.f32 %8438, 0
  %8440 = extractvalue %dx.types.ResRet.f32 %8438, 1
  %8441 = extractvalue %dx.types.ResRet.f32 %8438, 2
  %8442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8443 = extractvalue %dx.types.CBufRet.f32 %8442, 1
  %8444 = fmul fast float %8443, %8439
  %8445 = fmul fast float %8443, %8440
  %8446 = fmul fast float %8443, %8441
  %8447 = fcmp fast ogt float %8399, 0x3FEFFF2E40000000
  %8448 = fsub fast float 1.000000e+00, %8430
  %8449 = fsub fast float 1.000000e+00, %8399
  %8450 = fdiv fast float %8448, %8449
  %8451 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8452 = select i1 %8447, float 0.000000e+00, float %8451
  %8453 = fmul fast float %8444, %8452
  %8454 = fmul fast float %8445, %8452
  %8455 = fmul fast float %8446, %8452
  br label %8456

; <label>:8456                                    ; preds = %8437, %8428
  %8457 = phi float [ 0.000000e+00, %8428 ], [ %8453, %8437 ]
  %8458 = phi float [ 0.000000e+00, %8428 ], [ %8454, %8437 ]
  %8459 = phi float [ 0.000000e+00, %8428 ], [ %8455, %8437 ]
  %8460 = fmul fast float %8457, %7034
  %8461 = fmul fast float %8458, %7034
  %8462 = fmul fast float %8459, %7034
  %8463 = fmul fast float %8430, %8092
  %8464 = call float @dx.op.dot3.f32(i32 55, float %8430, float %8430, float %8430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8465 = call float @dx.op.dot3.f32(i32 55, float %8460, float %8461, float %8462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8466 = select i1 %223, float %8464, float %8430
  %8467 = select i1 %223, float 1.000000e+00, float %8430
  %8468 = select i1 %223, float %8465, float %8460
  %8469 = select i1 %223, float 0.000000e+00, float %8461
  %8470 = select i1 %223, float 0.000000e+00, float %8462
  %8471 = fmul fast float %8466, %8104
  %8472 = fmul fast float %8466, %8105
  %8473 = fmul fast float %8467, %8106
  %8474 = fadd fast float %8471, %8468
  %8475 = fadd fast float %8472, %8469
  %8476 = fadd fast float %8470, %8473
  %8477 = fmul fast float %8466, %8107
  %8478 = fmul fast float %8466, %8108
  %8479 = fmul fast float %8467, %8109
  br label %8480

; <label>:8480                                    ; preds = %8456, %8113, %8082, %7314
  %8481 = phi float [ %7319, %7314 ], [ %8104, %8082 ], [ %8474, %8456 ], [ %8104, %8113 ]
  %8482 = phi float [ %7320, %7314 ], [ %8105, %8082 ], [ %8475, %8456 ], [ %8105, %8113 ]
  %8483 = phi float [ %7321, %7314 ], [ %8106, %8082 ], [ %8476, %8456 ], [ %8106, %8113 ]
  %8484 = phi float [ %7322, %7314 ], [ %8107, %8082 ], [ %8477, %8456 ], [ %8107, %8113 ]
  %8485 = phi float [ %7323, %7314 ], [ %8108, %8082 ], [ %8478, %8456 ], [ %8108, %8113 ]
  %8486 = phi float [ %7324, %7314 ], [ %8109, %8082 ], [ %8479, %8456 ], [ %8109, %8113 ]
  %8487 = phi float [ %7325, %7314 ], [ %8092, %8082 ], [ %8463, %8456 ], [ %8092, %8113 ]
  %8488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8489 = extractvalue %dx.types.CBufRet.f32 %8488, 2
  %8490 = extractvalue %dx.types.CBufRet.f32 %8488, 3
  %8491 = fmul fast float %8489, %102
  %8492 = fmul fast float %8490, %103
  %8493 = call float @dx.op.unary.f32(i32 7, float %8491)  ; Saturate(value)
  %8494 = call float @dx.op.unary.f32(i32 7, float %8492)  ; Saturate(value)
  %8495 = select i1 %7056, i32 2, i32 0
  %8496 = or i32 %8495, 1
  %8497 = uitofp i32 %8496 to float
  %8498 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8493, float %8494, float %8497, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8499 = extractvalue %dx.types.ResRet.f32 %8498, 0
  %8500 = extractvalue %dx.types.ResRet.f32 %8498, 1
  %8501 = extractvalue %dx.types.ResRet.f32 %8498, 2
  %8502 = extractvalue %dx.types.ResRet.f32 %8498, 3
  %8503 = add nuw nsw i32 %8495, 2
  %8504 = uitofp i32 %8503 to float
  %8505 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8493, float %8494, float %8504, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8506 = extractvalue %dx.types.ResRet.f32 %8505, 0
  %8507 = extractvalue %dx.types.ResRet.f32 %8505, 1
  %8508 = extractvalue %dx.types.ResRet.f32 %8505, 2
  %8509 = extractvalue %dx.types.ResRet.f32 %8505, 3
  %8510 = call float @dx.op.binary.f32(i32 35, float %8500, float %8501)  ; FMax(a,b)
  %8511 = call float @dx.op.binary.f32(i32 35, float %8499, float %8510)  ; FMax(a,b)
  %8512 = call float @dx.op.binary.f32(i32 35, float %8511, float %8502)  ; FMax(a,b)
  %8513 = call float @dx.op.binary.f32(i32 36, float %8507, float %8508)  ; FMin(a,b)
  %8514 = call float @dx.op.binary.f32(i32 36, float %8506, float %8513)  ; FMin(a,b)
  %8515 = call float @dx.op.binary.f32(i32 36, float %8514, float %8509)  ; FMin(a,b)
  %8516 = fmul fast float %8512, 2.550000e+02
  %8517 = fadd fast float %8516, 0x3F70101020000000
  %8518 = fptoui float %8517 to i32
  %8519 = fmul fast float %8515, 2.550000e+02
  %8520 = fadd fast float %8519, 0x3F70101020000000
  %8521 = fptoui float %8520 to i32
  %8522 = icmp ult i32 %8518, %8521
  br i1 %8522, label %8523, label %8692

; <label>:8523                                    ; preds = %8480
  %8524 = fcmp fast ogt float %92, 9.843750e-01
  %8525 = fadd fast float %7318, -4.000000e+00
  %8526 = select i1 %8524, float -4.000000e+00, float %8525
  %8527 = call float @dx.op.binary.f32(i32 35, float %8526, float 0.000000e+00)  ; FMax(a,b)
  %8528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.f32 %8528, 0
  %8530 = fadd fast float %8529, %8527
  %8531 = extractvalue %dx.types.CBufRet.f32 %8528, 2
  %8532 = fmul fast float %8530, %8531
  %8533 = call float @dx.op.unary.f32(i32 23, float %8532)  ; Log(value)
  %8534 = extractvalue %dx.types.CBufRet.f32 %8528, 3
  %8535 = fmul fast float %8534, %8533
  %8536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8537 = extractvalue %dx.types.CBufRet.f32 %8536, 2
  %8538 = fmul fast float %8535, %8537
  %8539 = call float @dx.op.unary.f32(i32 7, float %8538)  ; Saturate(value)
  %8540 = uitofp i32 %8518 to float
  %8541 = uitofp i32 %8521 to float
  %8542 = fadd fast float %8540, 5.000000e-01
  %8543 = fadd fast float %8541, 5.000000e-01
  %8544 = fmul fast float %8537, %8542
  %8545 = fmul fast float %8537, %8543
  %8546 = fadd fast float %8544, 0x3F0FFB4800000000
  %8547 = fadd fast float %8545, 0xBF0FFB4800000000
  %8548 = call float @dx.op.binary.f32(i32 35, float %8539, float %8546)  ; FMax(a,b)
  %8549 = call float @dx.op.binary.f32(i32 36, float %8548, float %8547)  ; FMin(a,b)
  %8550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8551 = extractvalue %dx.types.CBufRet.f32 %8550, 1
  %8552 = extractvalue %dx.types.CBufRet.f32 %8550, 2
  %8553 = extractvalue %dx.types.CBufRet.f32 %8550, 0
  %8554 = select i1 %7056, float %8553, float 0.000000e+00
  %8555 = fmul fast float %8551, %8549
  %8556 = fadd fast float %8554, %8555
  %8557 = fadd fast float %8554, %8552
  %8558 = fsub fast float %8551, %8552
  %8559 = fadd fast float %8558, %8554
  %8560 = call float @dx.op.binary.f32(i32 35, float %8556, float %8557)  ; FMax(a,b)
  %8561 = call float @dx.op.binary.f32(i32 36, float %8560, float %8559)  ; FMin(a,b)
  %8562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8493, float %8494, float %8561, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8563 = extractvalue %dx.types.ResRet.f32 %8562, 0
  %8564 = extractvalue %dx.types.ResRet.f32 %8562, 1
  %8565 = extractvalue %dx.types.ResRet.f32 %8562, 2
  %8566 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.i32 %8566, 0
  %8568 = extractvalue %dx.types.CBufRet.i32 %8566, 1
  %8569 = uitofp i32 %8567 to float
  %8570 = uitofp i32 %8568 to float
  %8571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8572 = extractvalue %dx.types.CBufRet.f32 %8571, 0
  %8573 = extractvalue %dx.types.CBufRet.f32 %8571, 1
  %8574 = fmul fast float %8569, %8493
  %8575 = fmul fast float %8570, %8494
  %8576 = fadd fast float %8574, -5.000000e-01
  %8577 = fadd fast float %8575, -5.000000e-01
  %8578 = call float @dx.op.unary.f32(i32 22, float %8576)  ; Frc(value)
  %8579 = call float @dx.op.unary.f32(i32 22, float %8577)  ; Frc(value)
  %8580 = fmul fast float %8578, %8578
  %8581 = fmul fast float %8580, %8578
  %8582 = fsub fast float 3.000000e+00, %8578
  %8583 = fmul fast float %8580, %8582
  %8584 = fmul fast float %8578, 3.000000e+00
  %8585 = fmul fast float %8581, 3.000000e+00
  %8586 = fmul fast float %8580, 6.000000e+00
  %8587 = fsub fast float %8585, %8586
  %8588 = fadd fast float %8587, 4.000000e+00
  %8589 = fmul fast float %8588, 0x3FC5555560000000
  %8590 = fmul fast float %8581, -3.000000e+00
  %8591 = fadd fast float %8580, %8578
  %8592 = fmul fast float %8591, 3.000000e+00
  %8593 = fadd fast float %8590, 1.000000e+00
  %8594 = fadd fast float %8593, %8592
  %8595 = fmul fast float %8581, 0x3FC5555560000000
  %8596 = fmul fast float %8579, %8579
  %8597 = fmul fast float %8596, %8579
  %8598 = fsub fast float 3.000000e+00, %8579
  %8599 = fmul fast float %8596, %8598
  %8600 = fmul fast float %8579, 3.000000e+00
  %8601 = fmul fast float %8597, 3.000000e+00
  %8602 = fmul fast float %8596, 6.000000e+00
  %8603 = fsub fast float %8601, %8602
  %8604 = fadd fast float %8603, 4.000000e+00
  %8605 = fmul fast float %8604, 0x3FC5555560000000
  %8606 = fmul fast float %8597, -3.000000e+00
  %8607 = fadd fast float %8596, %8579
  %8608 = fmul fast float %8607, 3.000000e+00
  %8609 = fadd fast float %8606, 1.000000e+00
  %8610 = fadd fast float %8609, %8608
  %8611 = fmul fast float %8597, 0x3FC5555560000000
  %8612 = fadd fast float %8578, 1.000000e+00
  %8613 = fsub fast float 1.000000e+00, %8584
  %8614 = fadd fast float %8613, %8583
  %8615 = fadd fast float %8614, %8588
  %8616 = fmul fast float %8615, 0x3FC5555560000000
  %8617 = fdiv fast float %8589, %8616
  %8618 = fsub fast float %8612, %8617
  %8619 = fsub fast float 1.000000e+00, %8578
  %8620 = fadd fast float %8594, %8581
  %8621 = fmul fast float %8620, 0x3FC5555560000000
  %8622 = fdiv fast float %8595, %8621
  %8623 = fadd fast float %8619, %8622
  %8624 = fadd fast float %8579, 1.000000e+00
  %8625 = fsub fast float 1.000000e+00, %8600
  %8626 = fadd fast float %8625, %8599
  %8627 = fadd fast float %8626, %8604
  %8628 = fmul fast float %8627, 0x3FC5555560000000
  %8629 = fdiv fast float %8605, %8628
  %8630 = fsub fast float %8624, %8629
  %8631 = fsub fast float 1.000000e+00, %8579
  %8632 = fadd fast float %8610, %8597
  %8633 = fmul fast float %8632, 0x3FC5555560000000
  %8634 = fdiv fast float %8611, %8633
  %8635 = fadd fast float %8634, %8631
  %8636 = fmul fast float %8618, %8572
  %8637 = fsub fast float %8493, %8636
  %8638 = fmul fast float %8623, %8572
  %8639 = fadd fast float %8638, %8493
  %8640 = fmul fast float %8635, %8573
  %8641 = fadd fast float %8640, %8494
  %8642 = fmul fast float %8630, %8573
  %8643 = fsub fast float %8494, %8642
  %8644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8637, float %8643, float %8561, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8645 = extractvalue %dx.types.ResRet.f32 %8644, 0
  %8646 = extractvalue %dx.types.ResRet.f32 %8644, 1
  %8647 = extractvalue %dx.types.ResRet.f32 %8644, 2
  %8648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8639, float %8643, float %8561, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8649 = extractvalue %dx.types.ResRet.f32 %8648, 0
  %8650 = extractvalue %dx.types.ResRet.f32 %8648, 1
  %8651 = extractvalue %dx.types.ResRet.f32 %8648, 2
  %8652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8637, float %8641, float %8561, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8653 = extractvalue %dx.types.ResRet.f32 %8652, 0
  %8654 = extractvalue %dx.types.ResRet.f32 %8652, 1
  %8655 = extractvalue %dx.types.ResRet.f32 %8652, 2
  %8656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8639, float %8641, float %8561, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8657 = extractvalue %dx.types.ResRet.f32 %8656, 0
  %8658 = extractvalue %dx.types.ResRet.f32 %8656, 1
  %8659 = extractvalue %dx.types.ResRet.f32 %8656, 2
  %8660 = fsub fast float %8653, %8645
  %8661 = fsub fast float %8654, %8646
  %8662 = fsub fast float %8655, %8647
  %8663 = fmul fast float %8660, %8633
  %8664 = fmul fast float %8661, %8633
  %8665 = fmul fast float %8662, %8633
  %8666 = fadd fast float %8663, %8645
  %8667 = fadd fast float %8664, %8646
  %8668 = fadd fast float %8665, %8647
  %8669 = fsub fast float %8657, %8649
  %8670 = fsub fast float %8658, %8650
  %8671 = fsub fast float %8659, %8651
  %8672 = fmul fast float %8669, %8633
  %8673 = fmul fast float %8670, %8633
  %8674 = fmul fast float %8671, %8633
  %8675 = fsub fast float %8649, %8666
  %8676 = fadd fast float %8675, %8672
  %8677 = fsub fast float %8650, %8667
  %8678 = fadd fast float %8677, %8673
  %8679 = fsub fast float %8651, %8668
  %8680 = fadd fast float %8679, %8674
  %8681 = fmul fast float %8676, %8621
  %8682 = fmul fast float %8678, %8621
  %8683 = fmul fast float %8680, %8621
  %8684 = fadd fast float %8681, %8666
  %8685 = fadd fast float %8682, %8667
  %8686 = fadd fast float %8683, %8668
  %8687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8688 = extractvalue %dx.types.CBufRet.f32 %8687, 1
  %8689 = fmul fast float %8684, %8688
  %8690 = fmul fast float %8685, %8688
  %8691 = fmul fast float %8686, %8688
  br label %8692

; <label>:8692                                    ; preds = %8523, %8480
  %8693 = phi float [ %8563, %8523 ], [ 1.000000e+00, %8480 ]
  %8694 = phi float [ %8564, %8523 ], [ 1.000000e+00, %8480 ]
  %8695 = phi float [ %8565, %8523 ], [ 1.000000e+00, %8480 ]
  %8696 = phi float [ %8689, %8523 ], [ 0.000000e+00, %8480 ]
  %8697 = phi float [ %8690, %8523 ], [ 0.000000e+00, %8480 ]
  %8698 = phi float [ %8691, %8523 ], [ 0.000000e+00, %8480 ]
  %8699 = fmul fast float %8696, %7034
  %8700 = fmul fast float %8697, %7034
  %8701 = fmul fast float %8698, %7034
  %8702 = fmul fast float %8693, %8487
  %8703 = call float @dx.op.dot3.f32(i32 55, float %8693, float %8694, float %8695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8704 = call float @dx.op.dot3.f32(i32 55, float %8699, float %8700, float %8701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8705 = select i1 %223, float %8703, float %8693
  %8706 = select i1 %223, float %8703, float %8694
  %8707 = select i1 %223, float 1.000000e+00, float %8695
  %8708 = select i1 %223, float %8704, float %8699
  %8709 = select i1 %223, float 0.000000e+00, float %8700
  %8710 = select i1 %223, float 0.000000e+00, float %8701
  %8711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.i32 %8711, 3
  %8713 = and i32 %8712, 3
  %8714 = icmp ne i32 %8713, 0
  %8715 = and i32 %8712, 4
  %8716 = icmp ne i32 %8715, 0
  %8717 = and i1 %8714, %8716
  %8718 = and i1 %223, %8717
  br i1 %8718, label %8719, label %8725

; <label>:8719                                    ; preds = %8692
  %8720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8721 = extractvalue %dx.types.CBufRet.f32 %8720, 1
  %8722 = fadd fast float %8702, -1.000000e+00
  %8723 = fmul fast float %8721, %8722
  %8724 = fadd fast float %8723, 1.000000e+00
  br label %8725

; <label>:8725                                    ; preds = %8719, %8692
  %8726 = phi float [ %8724, %8719 ], [ %8702, %8692 ]
  %8727 = fadd fast float %8484, %8481
  %8728 = fmul fast float %8705, %8727
  %8729 = fadd fast float %8728, %8708
  %8730 = fadd fast float %8485, %8482
  %8731 = fmul fast float %8706, %8730
  %8732 = fadd fast float %8731, %8709
  %8733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8734 = extractvalue %dx.types.CBufRet.f32 %8733, 0
  br i1 %223, label %8735, label %8759

; <label>:8735                                    ; preds = %8725
  %8736 = fadd fast float %8729, %8732
  %8737 = fmul fast float %8734, %8736
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 3
  %8740 = extractvalue %dx.types.CBufRet.f32 %7038, 1
  %8741 = fsub fast float %7043, %7037
  %8742 = fadd fast float %8741, %7044
  %8743 = fsub fast float %8742, %8740
  %8744 = extractvalue %dx.types.CBufRet.f32 %7038, 2
  %8745 = fmul fast float %8743, %8744
  %8746 = call float @dx.op.unary.f32(i32 7, float %8745)  ; Saturate(value)
  %8747 = fsub fast float %8746, %8739
  %8748 = fmul fast float %8747, %8726
  %8749 = fadd fast float %8748, %8739
  %8750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8750, 0
  %8752 = fsub fast float %8749, %8751
  %8753 = fmul fast float %8752, 1.000000e+01
  %8754 = call float @dx.op.unary.f32(i32 7, float %8753)  ; Saturate(value)
  %8755 = fsub fast float %4261, %7034
  %8756 = fmul fast float %8754, %8755
  %8757 = fadd fast float %8756, %7034
  %8758 = fmul fast float %8757, %8749
  br label %8783

; <label>:8759                                    ; preds = %8725
  %8760 = fadd fast float %8486, %8483
  %8761 = fmul fast float %8707, %8760
  %8762 = fadd fast float %8761, %8710
  %8763 = fmul fast float %8734, %8729
  %8764 = fmul fast float %8734, %8732
  %8765 = fmul fast float %8734, %8762
  %8766 = call float @dx.op.binary.f32(i32 35, float %8764, float %8765)  ; FMax(a,b)
  %8767 = call float @dx.op.binary.f32(i32 35, float %8763, float %8766)  ; FMax(a,b)
  %8768 = call float @dx.op.binary.f32(i32 35, float %8767, float %7034)  ; FMax(a,b)
  %8769 = fcmp fast ugt float %8768, 0x3F10000000000000
  br i1 %8769, label %8771, label %8770

; <label>:8770                                    ; preds = %8759
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8771

; <label>:8771                                    ; preds = %8770, %8759
  %8772 = add i32 %56, 356
  %8773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8772, i32 undef)  ; BufferLoad(srv,index,wot)
  %8774 = extractvalue %dx.types.ResRet.i32 %8773, 0
  %8775 = and i32 %8774, 32
  %8776 = icmp eq i32 %8775, 0
  br i1 %8776, label %8783, label %8777

; <label>:8777                                    ; preds = %8771
  %8778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8779 = extractvalue %dx.types.CBufRet.f32 %8778, 0
  %8780 = fmul fast float %8779, 0x3FE99999A0000000
  %8781 = fadd fast float %8779, %8763
  %8782 = fadd fast float %8780, %8765
  br label %8783

; <label>:8783                                    ; preds = %8777, %8771, %8735
  %8784 = phi float [ %8737, %8735 ], [ %8781, %8777 ], [ %8763, %8771 ]
  %8785 = phi float [ %8758, %8735 ], [ %8764, %8777 ], [ %8764, %8771 ]
  %8786 = phi float [ %8757, %8735 ], [ %8782, %8777 ], [ %8765, %8771 ]
  %8787 = phi float [ %8757, %8735 ], [ %7034, %8777 ], [ %7034, %8771 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8788 = call float @dx.op.binary.f32(i32 36, float %8784, float 3.225500e+04)  ; FMin(a,b)
  %8789 = call float @dx.op.binary.f32(i32 36, float %8785, float 3.225500e+04)  ; FMin(a,b)
  %8790 = call float @dx.op.binary.f32(i32 36, float %8786, float 3.225500e+04)  ; FMin(a,b)
  %8791 = call float @dx.op.binary.f32(i32 36, float %8787, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8788)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8789)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8790)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8791)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

