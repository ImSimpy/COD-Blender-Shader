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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 8e6b2266d13544c9ff44c500cdb1fb31
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = alloca [12 x float], align 4
  %88 = alloca [12 x float], align 4
  %89 = alloca [3 x float], align 4
  %90 = alloca [3 x float], align 4
  %91 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %92 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = fmul fast float %94, %83
  %96 = fmul fast float %94, %84
  %97 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %98 = bitcast float %97 to i32
  %99 = ashr i32 %98, 1
  %100 = sub nsw i32 1597250115, %99
  %101 = bitcast i32 %100 to float
  %102 = fmul fast float %101, %74
  %103 = fmul fast float %101, %75
  %104 = fmul fast float %101, %76
  %105 = fmul fast float %75, %72
  %106 = fmul fast float %76, %71
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %76, %70
  %109 = fmul fast float %74, %72
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %74, %71
  %112 = fmul fast float %75, %70
  %113 = fsub fast float %111, %112
  %114 = fmul fast float %107, %73
  %115 = fmul fast float %110, %73
  %116 = fmul fast float %113, %73
  %117 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %118 = bitcast float %117 to i32
  %119 = ashr i32 %118, 1
  %120 = sub nsw i32 1597250115, %119
  %121 = bitcast i32 %120 to float
  %122 = fmul fast float %121, %63
  %123 = fmul fast float %121, %64
  %124 = fmul fast float %121, %65
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = fmul fast float %95, 2.000000e+00
  %129 = fmul fast float %128, %126
  %130 = fmul fast float %96, 2.000000e+00
  %131 = fmul fast float %130, %127
  %132 = fsub fast float 1.000000e+00, %129
  %133 = fsub fast float 1.000000e+00, %131
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fmul fast float %132, %135
  %139 = fmul fast float %132, %136
  %140 = fmul fast float %132, %137
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = fmul fast float %133, %142
  %146 = fmul fast float %133, %143
  %147 = fmul fast float %133, %144
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = fadd fast float %145, %149
  %153 = fadd fast float %152, %138
  %154 = fadd fast float %146, %150
  %155 = fadd fast float %154, %139
  %156 = fadd fast float %147, %151
  %157 = fadd fast float %156, %140
  %158 = fmul fast float %153, %86
  %159 = fmul fast float %155, %86
  %160 = fmul fast float %157, %86
  %161 = fmul fast float %95, 5.000000e-01
  %162 = fmul fast float %96, 5.000000e-01
  %163 = fptosi float %161 to i32
  %164 = fptosi float %162 to i32
  %165 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %163, i32 %164, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = lshr i32 %166, 18
  %168 = uitofp i32 %167 to float
  %169 = fmul fast float %168, 0x3F4C00EBA0000000
  %170 = call float @dx.op.unary.f32(i32 21, float %169)  ; Exp(value)
  %171 = fadd fast float %170, -1.000000e+00
  %172 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %173 = extractvalue %dx.types.Dimensions %172, 0
  %174 = sitofp i32 %173 to float
  %175 = extractvalue %dx.types.Dimensions %172, 1
  %176 = sitofp i32 %175 to float
  %177 = fcmp fast oge float %161, %174
  %178 = fcmp fast oge float %162, %176
  %179 = or i1 %177, %178
  %180 = select i1 %179, float 0x4197782600000000, float %171
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %184 = fmul fast float %182, %95
  %185 = fmul fast float %183, %96
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 114688
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float %184, float 0.000000e+00
  %191 = select i1 %189, float %185, float 0.000000e+00
  %192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fmul fast float %193, 2.550000e+02
  %195 = fptoui float %194 to i32
  %196 = select i1 %189, i32 %195, i32 0
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.i32 %198, 3
  %200 = and i32 %199, 3
  %201 = icmp ne i32 %200, 0
  %202 = and i32 %199, 4
  %203 = icmp ne i32 %202, 0
  %204 = and i1 %201, %203
  br i1 %204, label %205, label %216

; <label>:205                                     ; preds = %0
  %206 = extractvalue %dx.types.CBufRet.f32 %197, 3
  %207 = fmul fast float %206, %96
  %208 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %209 = fmul fast float %208, %95
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %209, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = fsub fast float 1.000000e+00, %211
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = fcmp fast olt float %212, %214
  br label %219

; <label>:216                                     ; preds = %0
  %217 = icmp eq i32 %202, 0
  %218 = and i1 %201, %217
  br label %219

; <label>:219                                     ; preds = %216, %205
  %220 = phi i1 [ %215, %205 ], [ %218, %216 ]
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = fmul fast float %222, 0x3FE3C6EF40000000
  %224 = frem fast float %95, 2.560000e+02
  %225 = frem fast float %96, 2.560000e+02
  %226 = fptoui float %224 to i32
  %227 = fptoui float %225 to i32
  %228 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %226, i32 %227, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fadd fast float %229, %223
  %231 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %232 = add i32 %54, 156
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = shl i32 %234, 4
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %234, 7
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %234, 22
  %242 = shl nuw nsw i32 %241, 5
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = add i32 %54, 216
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %246, 8
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %246, 16
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = add i32 %54, 36
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = add i32 %54, 288
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %267, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = fmul fast float %269, 0x3F50624DE0000000
  %273 = fmul fast float %271, 0x3F50624DE0000000
  %274 = add i32 %54, 172
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = shl i32 %276, 4
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %276, 7
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %276, 22
  %284 = shl nuw nsw i32 %283, 5
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %54, 232
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %288, 8
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %288, 16
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = add i32 %54, 52
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %54, 304
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %311, 0x3F50624DE0000000
  %315 = fmul fast float %313, 0x3F50624DE0000000
  %316 = add i32 %54, 188
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = shl i32 %318, 4
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %318, 7
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %318, 22
  %326 = shl nuw nsw i32 %325, 5
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %54, 248
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %330, 8
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %330, 16
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = add i32 %54, 68
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %54, 320
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = fmul fast float %353, 0x3F50624DE0000000
  %357 = fmul fast float %355, 0x3F50624DE0000000
  %358 = add i32 %54, 204
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = shl i32 %360, 4
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %360, 7
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %360, 22
  %368 = shl nuw nsw i32 %367, 5
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = add i32 %54, 264
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %372, 8
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %372, 16
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = add i32 %54, 84
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = add i32 %54, 336
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = fmul fast float %395, 0x3F50624DE0000000
  %399 = fmul fast float %397, 0x3F50624DE0000000
  %400 = add i32 %54, 348
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 32
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %402, 64
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %402, 128
  %408 = icmp eq i32 %407, 0
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 2
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %428, label %413

; <label>:413                                     ; preds = %219
  %414 = add i32 %54, 488
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = add i32 %416, 0
  %418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %418, %dx.types.Handle %92, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = extractvalue %dx.types.ResRet.f32 %419, 3
  %424 = fmul fast float %423, %79
  %425 = fmul fast float %420, %80
  %426 = fmul fast float %421, %81
  %427 = fmul fast float %422, %82
  br label %428

; <label>:428                                     ; preds = %413, %219
  %429 = phi float [ %82, %219 ], [ %427, %413 ]
  %430 = phi float [ %81, %219 ], [ %426, %413 ]
  %431 = phi float [ %80, %219 ], [ %425, %413 ]
  %432 = phi float [ %79, %219 ], [ %424, %413 ]
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 2
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %456, label %437

; <label>:437                                     ; preds = %428
  %438 = add i32 %54, 44
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %431, float 1.000000e+00
  %444 = add i32 %54, 60
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %430, float 1.000000e+00
  %450 = add i32 %54, 76
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 1
  %454 = icmp ne i32 %453, 0
  %455 = select i1 %454, float %429, float 1.000000e+00
  br label %456

; <label>:456                                     ; preds = %437, %428
  %457 = phi float [ %429, %428 ], [ %455, %437 ]
  %458 = phi float [ %430, %428 ], [ %449, %437 ]
  %459 = phi float [ %431, %428 ], [ %443, %437 ]
  %460 = lshr i32 %434, 20
  %461 = and i32 %460, 3
  %462 = add nuw nsw i32 %461, 1
  %463 = add i32 %54, 24
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = add i32 %54, 28
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = or i32 %468, %465
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %1204, label %471

; <label>:471                                     ; preds = %456
  %472 = and i32 %465, 262144
  %473 = icmp ne i32 %472, 0
  %474 = select i1 %473, float %57, float 1.000000e+00
  %475 = select i1 %473, float %58, float 0.000000e+00
  %476 = select i1 %473, float %59, float 0.000000e+00
  %477 = select i1 %473, float %60, float 1.000000e+00
  %478 = select i1 %473, float %61, float %77
  %479 = select i1 %473, float %62, float %78
  %480 = add i32 %54, 284
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = fmul fast float %484, 0x3F50624DE0000000
  %486 = add i32 %54, 88
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = lshr i32 %488, 16
  %490 = and i32 %489, 255
  %491 = lshr i32 %488, 24
  %492 = add i32 %54, 292
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = and i32 %494, 65535
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = lshr i32 %494, 16
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = add i32 %54, 32
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 22
  %503 = shl nuw nsw i32 %502, 5
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = shl i32 %501, 4
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %501, 7
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %513 = fmul fast float %512, 1.000000e+03
  %514 = fmul fast float %272, %513
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fadd fast float %515, %262
  %517 = fmul fast float %273, %513
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fadd fast float %518, %264
  %520 = fmul fast float %485, %513
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = fmul fast float %521, 0x401921FB60000000
  %523 = fadd fast float %522, %504
  %524 = call float @dx.op.unary.f32(i32 13, float %523)  ; Sin(value)
  %525 = call float @dx.op.unary.f32(i32 12, float %523)  ; Cos(value)
  %526 = fsub fast float -0.000000e+00, %524
  %527 = fadd fast float %478, -5.000000e-01
  %528 = fadd fast float %479, -5.000000e-01
  %529 = fmul fast float %496, %527
  %530 = fmul fast float %498, %528
  %531 = fadd fast float %529, 5.000000e-01
  %532 = fadd fast float %530, 5.000000e-01
  %533 = fmul fast float %507, %531
  %534 = fmul fast float %510, %532
  %535 = fmul fast float %525, %533
  %536 = call float @dx.op.tertiary.f32(i32 46, float %526, float %534, float %535)  ; FMad(a,b,c)
  %537 = fmul fast float %524, %533
  %538 = call float @dx.op.tertiary.f32(i32 46, float %525, float %534, float %537)  ; FMad(a,b,c)
  %539 = fadd fast float %516, %536
  %540 = fadd fast float %519, %538
  %541 = icmp ugt i32 %490, 1
  %542 = icmp ugt i32 %488, 33554431
  %543 = or i1 %542, %541
  br i1 %543, label %544, label %569

; <label>:544                                     ; preds = %471
  %545 = add i32 %54, 228
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = lshr i32 %547, 16
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = fmul fast float %512, %549
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = mul nuw nsw i32 %490, %491
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %551, %553
  %555 = call float @dx.op.unary.f32(i32 27, float %554)  ; Round_ni(value)
  %556 = fptoui float %555 to i32
  %557 = urem i32 %556, %490
  %558 = udiv i32 %556, %491
  %559 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %560 = call float @dx.op.unary.f32(i32 22, float %540)  ; Frc(value)
  %561 = uitofp i32 %557 to float
  %562 = uitofp i32 %558 to float
  %563 = fadd fast float %559, %561
  %564 = fadd fast float %560, %562
  %565 = uitofp i32 %490 to float
  %566 = uitofp i32 %491 to float
  %567 = fdiv fast float %563, %565
  %568 = fdiv fast float %564, %566
  br label %569

; <label>:569                                     ; preds = %544, %471
  %570 = phi float [ %567, %544 ], [ %539, %471 ]
  %571 = phi float [ %568, %544 ], [ %540, %471 ]
  %572 = and i32 %465, 16777216
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %683, label %574

; <label>:574                                     ; preds = %569
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %578 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %579 = fadd fast float %576, %158
  %580 = fadd fast float %577, %159
  %581 = fadd fast float %578, %160
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = icmp eq i32 %55, 65535
  br i1 %585, label %680, label %586

; <label>:586                                     ; preds = %574
  %587 = lshr i32 %55, 1
  %588 = shl i32 %587, 2
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %55, 1
  %592 = icmp ne i32 %591, 0
  %593 = lshr i32 %590, 16
  %594 = and i32 %590, 65535
  %595 = select i1 %592, i32 %593, i32 %594
  %596 = icmp eq i32 %595, 65535
  br i1 %596, label %676, label %597

; <label>:597                                     ; preds = %586
  %598 = mul nuw nsw i32 %595, 40
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = add nuw nsw i32 %598, 12
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = add nuw nsw i32 %598, 24
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = add nuw nsw i32 %598, 36
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = fsub fast float %579, %600
  %617 = fsub fast float %580, %601
  %618 = fsub fast float %581, %602
  %619 = fmul fast float %615, %616
  %620 = fmul fast float %615, %617
  %621 = fmul fast float %615, %618
  %622 = call float @dx.op.unary.f32(i32 27, float %619)  ; Round_ni(value)
  %623 = call float @dx.op.unary.f32(i32 27, float %620)  ; Round_ni(value)
  %624 = call float @dx.op.unary.f32(i32 27, float %621)  ; Round_ni(value)
  %625 = fadd fast float %622, 5.000000e-01
  %626 = fadd fast float %623, 5.000000e-01
  %627 = fadd fast float %624, 5.000000e-01
  %628 = fmul fast float %625, %605
  %629 = fmul fast float %626, %606
  %630 = fmul fast float %627, %607
  %631 = shl i32 %55, 2
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = add i32 %633, 0
  %635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %636 = call float @dx.op.unary.f32(i32 22, float %628)  ; Frc(value)
  %637 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %638 = call float @dx.op.unary.f32(i32 22, float %630)  ; Frc(value)
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %49, float %636, float %637, float %638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = fmul fast float %640, 1.023000e+03
  %644 = fmul fast float %641, 1.023000e+03
  %645 = fmul fast float %642, 1.023000e+03
  %646 = fadd fast float %643, 5.000000e-01
  %647 = fadd fast float %644, 5.000000e-01
  %648 = fadd fast float %645, 5.000000e-01
  %649 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %650 = call float @dx.op.unary.f32(i32 27, float %647)  ; Round_ni(value)
  %651 = call float @dx.op.unary.f32(i32 27, float %648)  ; Round_ni(value)
  %652 = fsub fast float %619, %622
  %653 = fsub fast float %620, %623
  %654 = fsub fast float %621, %624
  %655 = fmul fast float %652, 7.500000e-01
  %656 = fmul fast float %653, 7.500000e-01
  %657 = fmul fast float %654, 7.500000e-01
  %658 = fadd fast float %622, 1.250000e-01
  %659 = fadd fast float %658, %655
  %660 = fadd fast float %659, %649
  %661 = fadd fast float %623, 1.250000e-01
  %662 = fadd fast float %661, %656
  %663 = fadd fast float %662, %650
  %664 = fadd fast float %624, 1.250000e-01
  %665 = fadd fast float %664, %657
  %666 = fadd fast float %665, %651
  %667 = fmul fast float %660, %610
  %668 = fmul fast float %663, %611
  %669 = fmul fast float %666, %612
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %673, %dx.types.Handle %47, float %667, float %668, float %669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  br label %676

; <label>:676                                     ; preds = %597, %586
  %677 = phi float [ %675, %597 ], [ -1.000000e+00, %586 ]
  %678 = fadd fast float %677, %584
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  br label %680

; <label>:680                                     ; preds = %676, %574
  %681 = phi float [ %679, %676 ], [ %584, %574 ]
  %682 = fmul fast float %681, %432
  br label %683

; <label>:683                                     ; preds = %680, %569
  %684 = phi float [ %682, %680 ], [ %432, %569 ]
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 256
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %735, label %689

; <label>:689                                     ; preds = %683
  %690 = add i32 %54, 424
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %692, 0
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %694, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = add i32 %54, 100
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = shl i32 %699, 4
  %701 = and i32 %700, 32752
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = lshr i32 %699, 7
  %704 = and i32 %703, 32752
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = fsub fast float 1.000000e+00, %684
  %707 = call float @dx.op.binary.f32(i32 35, float %706, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %708 = bitcast float %684 to i32
  %709 = sitofp i32 %708 to float
  %710 = fadd fast float %709, 0xC1CFBF8940000000
  %711 = fmul fast float %705, %710
  %712 = fadd fast float %711, 0x41CFBF8940000000
  %713 = fptosi float %712 to i32
  %714 = bitcast i32 %713 to float
  %715 = bitcast float %707 to i32
  %716 = sitofp i32 %715 to float
  %717 = fadd fast float %716, 0xC1CFBF8940000000
  %718 = fmul fast float %717, %705
  %719 = fadd fast float %718, 0x41CFBF8940000000
  %720 = fptosi float %719 to i32
  %721 = bitcast i32 %720 to float
  %722 = fmul fast float %714, %702
  %723 = fmul fast float %721, %702
  %724 = fsub fast float %707, %722
  %725 = fadd fast float %723, %707
  %726 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %728 = fsub fast float %696, %726
  %729 = fsub fast float %727, %726
  %730 = bitcast float %729 to i32
  %731 = sub nsw i32 2129859010, %730
  %732 = bitcast i32 %731 to float
  %733 = fmul fast float %732, %728
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  br label %735

; <label>:735                                     ; preds = %689, %683
  %736 = phi float [ %734, %689 ], [ %684, %683 ]
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = and i32 %738, 128
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %757, label %741

; <label>:741                                     ; preds = %735
  %742 = add i32 %54, 408
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = add i32 %744, 0
  %746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %746, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 524288
  %752 = icmp ne i32 %751, 0
  %753 = fcmp fast ogt float %748, 0x3FE0101020000000
  %754 = select i1 %753, float 1.000000e+00, float 0.000000e+00
  %755 = select i1 %752, float %754, float %748
  %756 = fmul fast float %755, %736
  br label %757

; <label>:757                                     ; preds = %741, %735
  %758 = phi float [ %756, %741 ], [ %736, %735 ]
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 16
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %961, label %763

; <label>:763                                     ; preds = %757
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %54, 360
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %768, 0
  %770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %770, %dx.types.Handle %91, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = and i32 %765, 255
  %777 = uitofp i32 %776 to float
  %778 = lshr i32 %765, 8
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %775, %777
  %782 = fadd fast float %781, %780
  %783 = fmul fast float %782, 0x3F70101000000000
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 512
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %796, label %788

; <label>:788                                     ; preds = %763
  %789 = add i32 %54, 440
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = add i32 %791, 0
  %793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %792, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %794 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %793, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  br label %796

; <label>:796                                     ; preds = %788, %763
  %797 = phi float [ %795, %788 ], [ 1.000000e+00, %763 ]
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 33554432
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %908, label %802

; <label>:802                                     ; preds = %796
  %803 = add i32 %54, 224
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %805, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = add i32 %54, 228
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = lshr i32 %816, 24
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = and i32 %816, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = lshr i32 %816, 8
  %824 = and i32 %823, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = lshr i32 %816, 16
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = add i32 %54, 220
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = lshr i32 %833, 24
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = and i32 %833, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = lshr i32 %833, 8
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = lshr i32 %833, 16
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = bitcast float %772 to i32
  %849 = ashr i32 %848, 1
  %850 = sub nsw i32 1597463174, %849
  %851 = bitcast i32 %850 to float
  %852 = fmul fast float %772, 5.000000e-01
  %853 = fmul fast float %851, %851
  %854 = fmul fast float %853, %852
  %855 = fsub fast float 1.500000e+00, %854
  %856 = fmul fast float %851, %772
  %857 = fmul fast float %856, %855
  %858 = bitcast float %773 to i32
  %859 = ashr i32 %858, 1
  %860 = sub nsw i32 1597463174, %859
  %861 = bitcast i32 %860 to float
  %862 = fmul fast float %773, 5.000000e-01
  %863 = fmul fast float %861, %861
  %864 = fmul fast float %863, %862
  %865 = fsub fast float 1.500000e+00, %864
  %866 = fmul fast float %861, %773
  %867 = fmul fast float %866, %865
  %868 = bitcast float %774 to i32
  %869 = ashr i32 %868, 1
  %870 = sub nsw i32 1597463174, %869
  %871 = bitcast i32 %870 to float
  %872 = fmul fast float %774, 5.000000e-01
  %873 = fmul fast float %871, %871
  %874 = fmul fast float %873, %872
  %875 = fsub fast float 1.500000e+00, %874
  %876 = fmul fast float %871, %774
  %877 = fmul fast float %876, %875
  %878 = fsub fast float %857, %839
  %879 = fsub fast float %867, %843
  %880 = fsub fast float %877, %847
  %881 = fmul fast float %878, %807
  %882 = fmul fast float %879, %809
  %883 = fmul fast float %880, %814
  %884 = fadd fast float %881, %822
  %885 = fadd fast float %882, %826
  %886 = fadd fast float %883, %830
  %887 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %888 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %889 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %890 = fmul fast float %887, %887
  %891 = fmul fast float %888, %888
  %892 = fmul fast float %889, %889
  %893 = fsub fast float %890, %772
  %894 = fsub fast float %891, %773
  %895 = fsub fast float %892, %774
  %896 = fmul fast float %893, %797
  %897 = fmul fast float %894, %797
  %898 = fmul fast float %895, %797
  %899 = fadd fast float %896, %772
  %900 = fadd fast float %897, %773
  %901 = fadd fast float %898, %774
  %902 = fadd fast float %819, %783
  %903 = fsub fast float %902, %836
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = fsub fast float %904, %783
  %906 = fmul fast float %905, %797
  %907 = fadd fast float %906, %783
  br label %961

; <label>:908                                     ; preds = %796
  %909 = and i32 %799, 134217728
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %945, label %911

; <label>:911                                     ; preds = %908
  %912 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %913 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %914 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %915 = fadd fast float %912, -5.000000e-01
  %916 = fadd fast float %913, -5.000000e-01
  %917 = fadd fast float %914, -5.000000e-01
  %918 = fmul fast float %915, %797
  %919 = fmul fast float %916, %797
  %920 = fmul fast float %917, %797
  %921 = fadd fast float %918, 5.000000e-01
  %922 = fadd fast float %919, 5.000000e-01
  %923 = fadd fast float %920, 5.000000e-01
  %924 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %926 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %927 = fmul fast float %921, 2.000000e+00
  %928 = fsub fast float 1.000000e+00, %927
  %929 = fmul fast float %928, %924
  %930 = fadd fast float %929, %927
  %931 = fmul fast float %930, %924
  %932 = fmul fast float %922, 2.000000e+00
  %933 = fsub fast float 1.000000e+00, %932
  %934 = fmul fast float %933, %925
  %935 = fadd fast float %934, %932
  %936 = fmul fast float %935, %925
  %937 = fmul fast float %923, 2.000000e+00
  %938 = fsub fast float 1.000000e+00, %937
  %939 = fmul fast float %938, %926
  %940 = fadd fast float %939, %937
  %941 = fmul fast float %940, %926
  %942 = fmul fast float %931, %931
  %943 = fmul fast float %936, %936
  %944 = fmul fast float %941, %941
  br label %961

; <label>:945                                     ; preds = %908
  %946 = fmul fast float %249, %249
  %947 = fmul fast float %253, %253
  %948 = fmul fast float %257, %257
  %949 = fadd fast float %946, -1.000000e+00
  %950 = fadd fast float %947, -1.000000e+00
  %951 = fadd fast float %948, -1.000000e+00
  %952 = fmul fast float %797, %949
  %953 = fmul fast float %797, %950
  %954 = fmul fast float %797, %951
  %955 = fadd fast float %952, 1.000000e+00
  %956 = fadd fast float %953, 1.000000e+00
  %957 = fadd fast float %954, 1.000000e+00
  %958 = fmul fast float %955, %772
  %959 = fmul fast float %956, %773
  %960 = fmul fast float %957, %774
  br label %961

; <label>:961                                     ; preds = %945, %911, %802, %757
  %962 = phi float [ %907, %802 ], [ %783, %911 ], [ %783, %945 ], [ 0x3FA23C0BE0000000, %757 ]
  %963 = phi float [ %899, %802 ], [ %942, %911 ], [ %958, %945 ], [ 1.000000e+00, %757 ]
  %964 = phi float [ %900, %802 ], [ %943, %911 ], [ %959, %945 ], [ 1.000000e+00, %757 ]
  %965 = phi float [ %901, %802 ], [ %944, %911 ], [ %960, %945 ], [ 1.000000e+00, %757 ]
  %966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.i32 %966, 1
  %968 = and i32 %967, 1
  %969 = icmp ne i32 %968, 0
  %970 = add i32 %54, 356
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 32
  %974 = icmp ne i32 %973, 0
  %975 = and i1 %969, %974
  %976 = select i1 %975, float 1.000000e+00, float %963
  %977 = select i1 %975, float 0x3FD3333340000000, float %964
  %978 = select i1 %975, float 0x3FD3333340000000, float %965
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 32
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1055, label %983

; <label>:983                                     ; preds = %961
  %984 = add i32 %54, 92
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %54, 376
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %989, 0
  %991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %991, %dx.types.Handle %91, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = extractvalue %dx.types.ResRet.f32 %992, 3
  %997 = and i32 %986, 255
  %998 = uitofp i32 %997 to float
  %999 = lshr i32 %986, 8
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = lshr i32 %986, 16
  %1003 = and i32 %1002, 255
  %1004 = uitofp i32 %1003 to float
  %1005 = fmul fast float %1004, 0x3F70101000000000
  %1006 = fmul fast float %993, %998
  %1007 = fadd fast float %1006, %1001
  %1008 = fmul fast float %1007, 0x3F70101000000000
  %1009 = fadd fast float %994, -5.000000e-01
  %1010 = fadd fast float %996, -5.000000e-01
  %1011 = fmul fast float %1009, %1005
  %1012 = fmul fast float %1010, %1005
  %1013 = fadd fast float %1011, 5.000000e-01
  %1014 = fadd fast float %1012, 5.000000e-01
  %1015 = fmul fast float %1013, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = fmul fast float %1014, 2.000000e+00
  %1018 = fadd fast float %1017, -1.000000e+00
  %1019 = fadd fast float %1016, %1018
  %1020 = fmul fast float %1019, 5.000000e-01
  %1021 = fsub fast float %1016, %1018
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1024 = fsub fast float 1.000000e+00, %1023
  %1025 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1026 = fsub fast float %1024, %1025
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1022, float %1026, float %1020, float %1022, float %1026)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = call float @dx.op.unary.f32(i32 25, float %1027)  ; Rsqrt(value)
  %1029 = fmul fast float %1020, %1028
  %1030 = fmul fast float %1022, %1028
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = and i32 %1032, 67108864
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1051, label %1035

; <label>:1035                                    ; preds = %983
  %1036 = add i32 %54, 280
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 65535
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 65535
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = lshr i32 %1038, 16
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = fsub fast float %1008, %1046
  %1048 = fmul fast float %1047, %1040
  %1049 = fadd fast float %1048, %1044
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  br label %1051

; <label>:1051                                    ; preds = %1035, %983
  %1052 = phi float [ %1050, %1035 ], [ %1008, %983 ]
  %1053 = call float @dx.op.dot2.f32(i32 54, float %1029, float %1030, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  %1054 = call float @dx.op.dot2.f32(i32 54, float %1029, float %1030, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  br label %1055

; <label>:1055                                    ; preds = %1051, %961
  %1056 = phi float [ %1052, %1051 ], [ 0x3FD6666660000000, %961 ]
  %1057 = phi float [ %1053, %1051 ], [ 0.000000e+00, %961 ]
  %1058 = phi float [ %1054, %1051 ], [ 0.000000e+00, %961 ]
  %1059 = phi float [ %995, %1051 ], [ 1.000000e+00, %961 ]
  %1060 = add i32 %54, 160
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = lshr i32 %1062, 22
  %1064 = shl nuw nsw i32 %1063, 5
  %1065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1064)  ; LegacyF16ToF32(value)
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 64
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1103, label %1070

; <label>:1070                                    ; preds = %1055
  %1071 = add i32 %54, 392
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = add i32 %1073, 0
  %1075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %1077, 131072
  %1079 = icmp eq i32 %1078, 0
  %1080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1075, %dx.types.Handle %91, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = fmul fast float %1081, %237
  %1085 = fmul fast float %1082, %240
  %1086 = fmul fast float %1083, %243
  br i1 %1079, label %1093, label %1087

; <label>:1087                                    ; preds = %1070
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1090 = fmul fast float %1089, %1084
  %1091 = fmul fast float %1089, %1085
  %1092 = fmul fast float %1089, %1086
  br label %1093

; <label>:1093                                    ; preds = %1087, %1070
  %1094 = phi float [ %1090, %1087 ], [ %1084, %1070 ]
  %1095 = phi float [ %1091, %1087 ], [ %1085, %1070 ]
  %1096 = phi float [ %1092, %1087 ], [ %1086, %1070 ]
  %1097 = fmul fast float %1094, %1065
  %1098 = select i1 %220, float %1097, float %1094
  %1099 = call float @dx.op.dot3.f32(i32 55, float %1098, float %1095, float %1096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = select i1 %220, float 0.000000e+00, float %1094
  %1101 = select i1 %220, float %1099, float %1095
  %1102 = select i1 %220, float 0.000000e+00, float %1096
  br label %1103

; <label>:1103                                    ; preds = %1093, %1055
  %1104 = phi float [ %1100, %1093 ], [ 0.000000e+00, %1055 ]
  %1105 = phi float [ %1101, %1093 ], [ 0.000000e+00, %1055 ]
  %1106 = phi float [ %1102, %1093 ], [ 0.000000e+00, %1055 ]
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 1024
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1141, label %1111

; <label>:1111                                    ; preds = %1103
  %1112 = add i32 %54, 152
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = fmul fast float %1116, 0x3F70101020000000
  %1118 = lshr i32 %1114, 8
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = fmul fast float %1120, 0x3F70101020000000
  %1122 = lshr i32 %1114, 16
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = fmul fast float %1124, 0x3F70101020000000
  %1126 = fmul fast float %1117, %1117
  %1127 = fmul fast float %1121, %1121
  %1128 = fmul fast float %1125, %1125
  %1129 = add i32 %54, 456
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %1131, 0
  %1133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1133, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = fmul fast float %1126, %1135
  %1139 = fmul fast float %1127, %1136
  %1140 = fmul fast float %1128, %1137
  br label %1141

; <label>:1141                                    ; preds = %1111, %1103
  %1142 = phi float [ %1138, %1111 ], [ 0.000000e+00, %1103 ]
  %1143 = phi float [ %1139, %1111 ], [ 0.000000e+00, %1103 ]
  %1144 = phi float [ %1140, %1111 ], [ 0.000000e+00, %1103 ]
  %1145 = fcmp fast ogt float %1142, 0.000000e+00
  %1146 = fcmp fast ogt float %1143, 0.000000e+00
  %1147 = fcmp fast ogt float %1144, 0.000000e+00
  %1148 = call float @dx.op.unary.f32(i32 23, float %1142)  ; Log(value)
  %1149 = call float @dx.op.unary.f32(i32 23, float %1143)  ; Log(value)
  %1150 = call float @dx.op.unary.f32(i32 23, float %1144)  ; Log(value)
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = lshr i32 %1152, 7
  %1154 = and i32 %1153, 32752
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = fmul fast float %1148, 0xBFE62E4300000000
  %1157 = fmul fast float %1156, %1155
  %1158 = fmul fast float %1149, 0xBFE62E4300000000
  %1159 = fmul fast float %1158, %1155
  %1160 = fmul fast float %1150, 0xBFE62E4300000000
  %1161 = fmul fast float %1160, %1155
  %1162 = select i1 %1145, float %1157, float 1.270000e+02
  %1163 = select i1 %1146, float %1159, float 1.270000e+02
  %1164 = select i1 %1147, float %1161, float 1.270000e+02
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 10240
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1189, label %1169

; <label>:1169                                    ; preds = %1141
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 2048
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1189, label %1174

; <label>:1174                                    ; preds = %1169
  %1175 = add i32 %54, 472
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = add i32 %1177, 0
  %1179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1179, %dx.types.Handle %92, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 3
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = shl i32 %1183, 4
  %1185 = and i32 %1184, 32752
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = fmul fast float %1186, %1181
  %1188 = call float @dx.op.binary.f32(i32 35, float %1187, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1189

; <label>:1189                                    ; preds = %1174, %1169, %1141
  %1190 = phi float [ %1188, %1174 ], [ 0x3F70101020000000, %1169 ], [ 0x3F70101020000000, %1141 ]
  %1191 = add i32 %54, 96
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 255
  %1195 = uitofp i32 %1194 to float
  %1196 = lshr i32 %1193, 8
  %1197 = and i32 %1196, 255
  %1198 = uitofp i32 %1197 to float
  %1199 = call float @dx.op.dot3.f32(i32 55, float %976, float %977, float %978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1200 = fmul fast float %1198, %1199
  %1201 = fadd fast float %1200, %1195
  %1202 = fmul fast float %1201, 0x3F70101020000000
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  br label %1204

; <label>:1204                                    ; preds = %1189, %456
  %1205 = phi float [ 0.000000e+00, %456 ], [ %1057, %1189 ]
  %1206 = phi float [ 0.000000e+00, %456 ], [ %1058, %1189 ]
  %1207 = phi float [ 0.000000e+00, %456 ], [ %976, %1189 ]
  %1208 = phi float [ 0.000000e+00, %456 ], [ %977, %1189 ]
  %1209 = phi float [ 0.000000e+00, %456 ], [ %978, %1189 ]
  %1210 = phi float [ 0.000000e+00, %456 ], [ %1104, %1189 ]
  %1211 = phi float [ 0.000000e+00, %456 ], [ %1105, %1189 ]
  %1212 = phi float [ 0.000000e+00, %456 ], [ %1106, %1189 ]
  %1213 = phi float [ 0.000000e+00, %456 ], [ %1162, %1189 ]
  %1214 = phi float [ 0.000000e+00, %456 ], [ %1163, %1189 ]
  %1215 = phi float [ 0.000000e+00, %456 ], [ %1164, %1189 ]
  %1216 = phi float [ 0.000000e+00, %456 ], [ %962, %1189 ]
  %1217 = phi float [ 0.000000e+00, %456 ], [ %758, %1189 ]
  %1218 = phi float [ 0.000000e+00, %456 ], [ %1056, %1189 ]
  %1219 = phi float [ 0.000000e+00, %456 ], [ %1059, %1189 ]
  %1220 = phi float [ 0.000000e+00, %456 ], [ %1190, %1189 ]
  %1221 = phi float [ 0.000000e+00, %456 ], [ %1203, %1189 ]
  br i1 %404, label %2208, label %1222

; <label>:1222                                    ; preds = %1204
  %1223 = icmp ult i32 %462, 2
  %1224 = add i32 %54, 40
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = add i32 %54, 44
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = or i32 %1229, %1226
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %2208, label %1232

; <label>:1232                                    ; preds = %1222
  %1233 = and i32 %1226, 262144
  %1234 = icmp ne i32 %1233, 0
  %1235 = select i1 %1234, float %57, float 1.000000e+00
  %1236 = select i1 %1234, float %58, float 0.000000e+00
  %1237 = select i1 %1234, float %59, float 0.000000e+00
  %1238 = select i1 %1234, float %60, float 1.000000e+00
  %1239 = select i1 %1234, float %61, float %77
  %1240 = select i1 %1234, float %62, float %78
  %1241 = add i32 %54, 300
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = lshr i32 %1243, 16
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = fmul fast float %1245, 0x3F50624DE0000000
  %1247 = add i32 %54, 104
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = lshr i32 %1249, 16
  %1251 = and i32 %1250, 255
  %1252 = lshr i32 %1249, 24
  %1253 = add i32 %54, 308
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, 65535
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = lshr i32 %1255, 16
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = add i32 %54, 48
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = lshr i32 %1262, 22
  %1264 = shl nuw nsw i32 %1263, 5
  %1265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1264)  ; LegacyF16ToF32(value)
  %1266 = shl i32 %1262, 4
  %1267 = and i32 %1266, 32752
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = lshr i32 %1262, 7
  %1270 = and i32 %1269, 32752
  %1271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1270)  ; LegacyF16ToF32(value)
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 3
  %1274 = fmul fast float %1273, 1.000000e+03
  %1275 = fmul fast float %314, %1274
  %1276 = call float @dx.op.unary.f32(i32 22, float %1275)  ; Frc(value)
  %1277 = fadd fast float %1276, %304
  %1278 = fmul fast float %315, %1274
  %1279 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1280 = fadd fast float %1279, %306
  %1281 = fmul fast float %1246, %1274
  %1282 = call float @dx.op.unary.f32(i32 22, float %1281)  ; Frc(value)
  %1283 = fmul fast float %1282, 0x401921FB60000000
  %1284 = fadd fast float %1283, %1265
  %1285 = call float @dx.op.unary.f32(i32 13, float %1284)  ; Sin(value)
  %1286 = call float @dx.op.unary.f32(i32 12, float %1284)  ; Cos(value)
  %1287 = fsub fast float -0.000000e+00, %1285
  %1288 = fadd fast float %1239, -5.000000e-01
  %1289 = fadd fast float %1240, -5.000000e-01
  %1290 = fmul fast float %1257, %1288
  %1291 = fmul fast float %1259, %1289
  %1292 = fadd fast float %1290, 5.000000e-01
  %1293 = fadd fast float %1291, 5.000000e-01
  %1294 = fmul fast float %1268, %1292
  %1295 = fmul fast float %1271, %1293
  %1296 = fmul fast float %1286, %1294
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1295, float %1296)  ; FMad(a,b,c)
  %1298 = fmul fast float %1285, %1294
  %1299 = call float @dx.op.tertiary.f32(i32 46, float %1286, float %1295, float %1298)  ; FMad(a,b,c)
  %1300 = fadd fast float %1277, %1297
  %1301 = fadd fast float %1280, %1299
  %1302 = icmp ugt i32 %1251, 1
  %1303 = icmp ugt i32 %1249, 33554431
  %1304 = or i1 %1303, %1302
  br i1 %1304, label %1305, label %1330

; <label>:1305                                    ; preds = %1232
  %1306 = add i32 %54, 244
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = lshr i32 %1308, 16
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = fmul fast float %1273, %1310
  %1312 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1313 = mul nuw nsw i32 %1251, %1252
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1312, %1314
  %1316 = call float @dx.op.unary.f32(i32 27, float %1315)  ; Round_ni(value)
  %1317 = fptoui float %1316 to i32
  %1318 = urem i32 %1317, %1251
  %1319 = udiv i32 %1317, %1252
  %1320 = call float @dx.op.unary.f32(i32 22, float %1300)  ; Frc(value)
  %1321 = call float @dx.op.unary.f32(i32 22, float %1301)  ; Frc(value)
  %1322 = uitofp i32 %1318 to float
  %1323 = uitofp i32 %1319 to float
  %1324 = fadd fast float %1320, %1322
  %1325 = fadd fast float %1321, %1323
  %1326 = uitofp i32 %1251 to float
  %1327 = uitofp i32 %1252 to float
  %1328 = fdiv fast float %1324, %1326
  %1329 = fdiv fast float %1325, %1327
  br label %1330

; <label>:1330                                    ; preds = %1305, %1232
  %1331 = phi float [ %1328, %1305 ], [ %1300, %1232 ]
  %1332 = phi float [ %1329, %1305 ], [ %1301, %1232 ]
  %1333 = and i32 %1226, 16777216
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1444, label %1335

; <label>:1335                                    ; preds = %1330
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1340 = fadd fast float %1337, %158
  %1341 = fadd fast float %1338, %159
  %1342 = fadd fast float %1339, %160
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = icmp eq i32 %55, 65535
  br i1 %1346, label %1441, label %1347

; <label>:1347                                    ; preds = %1335
  %1348 = lshr i32 %55, 1
  %1349 = shl i32 %1348, 2
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %55, 1
  %1353 = icmp ne i32 %1352, 0
  %1354 = lshr i32 %1351, 16
  %1355 = and i32 %1351, 65535
  %1356 = select i1 %1353, i32 %1354, i32 %1355
  %1357 = icmp eq i32 %1356, 65535
  br i1 %1357, label %1437, label %1358

; <label>:1358                                    ; preds = %1347
  %1359 = mul nuw nsw i32 %1356, 40
  %1360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = add nuw nsw i32 %1359, 12
  %1365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.ResRet.f32 %1365, 1
  %1368 = extractvalue %dx.types.ResRet.f32 %1365, 2
  %1369 = add nuw nsw i32 %1359, 24
  %1370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.ResRet.f32 %1370, 1
  %1373 = extractvalue %dx.types.ResRet.f32 %1370, 2
  %1374 = add nuw nsw i32 %1359, 36
  %1375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = fsub fast float %1340, %1361
  %1378 = fsub fast float %1341, %1362
  %1379 = fsub fast float %1342, %1363
  %1380 = fmul fast float %1376, %1377
  %1381 = fmul fast float %1376, %1378
  %1382 = fmul fast float %1376, %1379
  %1383 = call float @dx.op.unary.f32(i32 27, float %1380)  ; Round_ni(value)
  %1384 = call float @dx.op.unary.f32(i32 27, float %1381)  ; Round_ni(value)
  %1385 = call float @dx.op.unary.f32(i32 27, float %1382)  ; Round_ni(value)
  %1386 = fadd fast float %1383, 5.000000e-01
  %1387 = fadd fast float %1384, 5.000000e-01
  %1388 = fadd fast float %1385, 5.000000e-01
  %1389 = fmul fast float %1386, %1366
  %1390 = fmul fast float %1387, %1367
  %1391 = fmul fast float %1388, %1368
  %1392 = shl i32 %55, 2
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = add i32 %1394, 0
  %1396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1395, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1397 = call float @dx.op.unary.f32(i32 22, float %1389)  ; Frc(value)
  %1398 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1399 = call float @dx.op.unary.f32(i32 22, float %1391)  ; Frc(value)
  %1400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1396, %dx.types.Handle %49, float %1397, float %1398, float %1399, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = fmul fast float %1401, 1.023000e+03
  %1405 = fmul fast float %1402, 1.023000e+03
  %1406 = fmul fast float %1403, 1.023000e+03
  %1407 = fadd fast float %1404, 5.000000e-01
  %1408 = fadd fast float %1405, 5.000000e-01
  %1409 = fadd fast float %1406, 5.000000e-01
  %1410 = call float @dx.op.unary.f32(i32 27, float %1407)  ; Round_ni(value)
  %1411 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1409)  ; Round_ni(value)
  %1413 = fsub fast float %1380, %1383
  %1414 = fsub fast float %1381, %1384
  %1415 = fsub fast float %1382, %1385
  %1416 = fmul fast float %1413, 7.500000e-01
  %1417 = fmul fast float %1414, 7.500000e-01
  %1418 = fmul fast float %1415, 7.500000e-01
  %1419 = fadd fast float %1383, 1.250000e-01
  %1420 = fadd fast float %1419, %1416
  %1421 = fadd fast float %1420, %1410
  %1422 = fadd fast float %1384, 1.250000e-01
  %1423 = fadd fast float %1422, %1417
  %1424 = fadd fast float %1423, %1411
  %1425 = fadd fast float %1385, 1.250000e-01
  %1426 = fadd fast float %1425, %1418
  %1427 = fadd fast float %1426, %1412
  %1428 = fmul fast float %1421, %1371
  %1429 = fmul fast float %1424, %1372
  %1430 = fmul fast float %1427, %1373
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = add i32 %1432, 0
  %1434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1434, %dx.types.Handle %47, float %1428, float %1429, float %1430, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  br label %1437

; <label>:1437                                    ; preds = %1358, %1347
  %1438 = phi float [ %1436, %1358 ], [ -1.000000e+00, %1347 ]
  %1439 = fadd fast float %1438, %1345
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  br label %1441

; <label>:1441                                    ; preds = %1437, %1335
  %1442 = phi float [ %1440, %1437 ], [ %1345, %1335 ]
  %1443 = fmul fast float %1442, %459
  br label %1444

; <label>:1444                                    ; preds = %1441, %1330
  %1445 = phi float [ %1443, %1441 ], [ %459, %1330 ]
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 256
  %1449 = icmp eq i32 %1448, 0
  br i1 %1449, label %1496, label %1450

; <label>:1450                                    ; preds = %1444
  %1451 = add i32 %54, 428
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = add i32 %1453, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1455, %dx.types.Handle %92, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = add i32 %54, 116
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = shl i32 %1460, 4
  %1462 = and i32 %1461, 32752
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = lshr i32 %1460, 7
  %1465 = and i32 %1464, 32752
  %1466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1465)  ; LegacyF16ToF32(value)
  %1467 = fsub fast float 1.000000e+00, %1445
  %1468 = call float @dx.op.binary.f32(i32 35, float %1467, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1469 = bitcast float %1445 to i32
  %1470 = sitofp i32 %1469 to float
  %1471 = fadd fast float %1470, 0xC1CFBF8940000000
  %1472 = fmul fast float %1466, %1471
  %1473 = fadd fast float %1472, 0x41CFBF8940000000
  %1474 = fptosi float %1473 to i32
  %1475 = bitcast i32 %1474 to float
  %1476 = bitcast float %1468 to i32
  %1477 = sitofp i32 %1476 to float
  %1478 = fadd fast float %1477, 0xC1CFBF8940000000
  %1479 = fmul fast float %1478, %1466
  %1480 = fadd fast float %1479, 0x41CFBF8940000000
  %1481 = fptosi float %1480 to i32
  %1482 = bitcast i32 %1481 to float
  %1483 = fmul fast float %1475, %1463
  %1484 = fmul fast float %1482, %1463
  %1485 = fsub fast float %1468, %1483
  %1486 = fadd fast float %1484, %1468
  %1487 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1488 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1489 = fsub fast float %1457, %1487
  %1490 = fsub fast float %1488, %1487
  %1491 = bitcast float %1490 to i32
  %1492 = sub nsw i32 2129859010, %1491
  %1493 = bitcast i32 %1492 to float
  %1494 = fmul fast float %1493, %1489
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  br label %1496

; <label>:1496                                    ; preds = %1450, %1444
  %1497 = phi float [ %1495, %1450 ], [ %1445, %1444 ]
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 128
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1518, label %1502

; <label>:1502                                    ; preds = %1496
  %1503 = add i32 %54, 412
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = add i32 %1505, 0
  %1507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1507, %dx.types.Handle %92, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = and i32 %1511, 524288
  %1513 = icmp ne i32 %1512, 0
  %1514 = fcmp fast ogt float %1509, 0x3FE0101020000000
  %1515 = select i1 %1514, float 1.000000e+00, float 0.000000e+00
  %1516 = select i1 %1513, float %1515, float %1509
  %1517 = fmul fast float %1516, %1497
  br label %1518

; <label>:1518                                    ; preds = %1502, %1496
  %1519 = phi float [ %1517, %1502 ], [ %1497, %1496 ]
  %1520 = fcmp fast ult float %1519, 0x3F70101020000000
  br i1 %1520, label %2208, label %1521

; <label>:1521                                    ; preds = %1518
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 16
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1724, label %1526

; <label>:1526                                    ; preds = %1521
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %54, 364
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %91, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.ResRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.ResRet.f32 %1534, 2
  %1538 = extractvalue %dx.types.ResRet.f32 %1534, 3
  %1539 = and i32 %1528, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = lshr i32 %1528, 8
  %1542 = and i32 %1541, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = fmul fast float %1538, %1540
  %1545 = fadd fast float %1544, %1543
  %1546 = fmul fast float %1545, 0x3F70101000000000
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 512
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1559, label %1551

; <label>:1551                                    ; preds = %1526
  %1552 = add i32 %54, 444
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = add i32 %1554, 0
  %1556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1556, %dx.types.Handle %92, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  br label %1559

; <label>:1559                                    ; preds = %1551, %1526
  %1560 = phi float [ %1558, %1551 ], [ 1.000000e+00, %1526 ]
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 33554432
  %1564 = icmp eq i32 %1563, 0
  br i1 %1564, label %1671, label %1565

; <label>:1565                                    ; preds = %1559
  %1566 = add i32 %54, 240
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 65535
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = lshr i32 %1568, 16
  %1572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1571)  ; LegacyF16ToF32(value)
  %1573 = add i32 %54, 244
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 65535
  %1577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1576)  ; LegacyF16ToF32(value)
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = lshr i32 %1579, 24
  %1581 = uitofp i32 %1580 to float
  %1582 = fmul fast float %1581, 0x3F70101020000000
  %1583 = and i32 %1579, 255
  %1584 = uitofp i32 %1583 to float
  %1585 = fmul fast float %1584, 0x3F70101020000000
  %1586 = lshr i32 %1579, 8
  %1587 = and i32 %1586, 255
  %1588 = uitofp i32 %1587 to float
  %1589 = fmul fast float %1588, 0x3F70101020000000
  %1590 = lshr i32 %1579, 16
  %1591 = and i32 %1590, 255
  %1592 = uitofp i32 %1591 to float
  %1593 = fmul fast float %1592, 0x3F70101020000000
  %1594 = add i32 %54, 236
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = lshr i32 %1596, 24
  %1598 = uitofp i32 %1597 to float
  %1599 = fmul fast float %1598, 0x3F70101020000000
  %1600 = and i32 %1596, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = lshr i32 %1596, 8
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = fmul fast float %1605, 0x3F70101020000000
  %1607 = lshr i32 %1596, 16
  %1608 = and i32 %1607, 255
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1609, 0x3F70101020000000
  %1611 = bitcast float %1535 to i32
  %1612 = ashr i32 %1611, 1
  %1613 = sub nsw i32 1597463174, %1612
  %1614 = bitcast i32 %1613 to float
  %1615 = fmul fast float %1535, 5.000000e-01
  %1616 = fmul fast float %1614, %1614
  %1617 = fmul fast float %1616, %1615
  %1618 = fsub fast float 1.500000e+00, %1617
  %1619 = fmul fast float %1614, %1535
  %1620 = fmul fast float %1619, %1618
  %1621 = bitcast float %1536 to i32
  %1622 = ashr i32 %1621, 1
  %1623 = sub nsw i32 1597463174, %1622
  %1624 = bitcast i32 %1623 to float
  %1625 = fmul fast float %1536, 5.000000e-01
  %1626 = fmul fast float %1624, %1624
  %1627 = fmul fast float %1626, %1625
  %1628 = fsub fast float 1.500000e+00, %1627
  %1629 = fmul fast float %1624, %1536
  %1630 = fmul fast float %1629, %1628
  %1631 = bitcast float %1537 to i32
  %1632 = ashr i32 %1631, 1
  %1633 = sub nsw i32 1597463174, %1632
  %1634 = bitcast i32 %1633 to float
  %1635 = fmul fast float %1537, 5.000000e-01
  %1636 = fmul fast float %1634, %1634
  %1637 = fmul fast float %1636, %1635
  %1638 = fsub fast float 1.500000e+00, %1637
  %1639 = fmul fast float %1634, %1537
  %1640 = fmul fast float %1639, %1638
  %1641 = fsub fast float %1620, %1602
  %1642 = fsub fast float %1630, %1606
  %1643 = fsub fast float %1640, %1610
  %1644 = fmul fast float %1641, %1570
  %1645 = fmul fast float %1642, %1572
  %1646 = fmul fast float %1643, %1577
  %1647 = fadd fast float %1644, %1585
  %1648 = fadd fast float %1645, %1589
  %1649 = fadd fast float %1646, %1593
  %1650 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1651 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1652 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1653 = fmul fast float %1650, %1650
  %1654 = fmul fast float %1651, %1651
  %1655 = fmul fast float %1652, %1652
  %1656 = fsub fast float %1653, %1535
  %1657 = fsub fast float %1654, %1536
  %1658 = fsub fast float %1655, %1537
  %1659 = fmul fast float %1656, %1560
  %1660 = fmul fast float %1657, %1560
  %1661 = fmul fast float %1658, %1560
  %1662 = fadd fast float %1659, %1535
  %1663 = fadd fast float %1660, %1536
  %1664 = fadd fast float %1661, %1537
  %1665 = fadd fast float %1582, %1546
  %1666 = fsub fast float %1665, %1599
  %1667 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1668 = fsub fast float %1667, %1546
  %1669 = fmul fast float %1668, %1560
  %1670 = fadd fast float %1669, %1546
  br label %1724

; <label>:1671                                    ; preds = %1559
  %1672 = and i32 %1562, 134217728
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1708, label %1674

; <label>:1674                                    ; preds = %1671
  %1675 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1676 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1677 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fadd fast float %1676, -5.000000e-01
  %1680 = fadd fast float %1677, -5.000000e-01
  %1681 = fmul fast float %1678, %1560
  %1682 = fmul fast float %1679, %1560
  %1683 = fmul fast float %1680, %1560
  %1684 = fadd fast float %1681, 5.000000e-01
  %1685 = fadd fast float %1682, 5.000000e-01
  %1686 = fadd fast float %1683, 5.000000e-01
  %1687 = call float @dx.op.unary.f32(i32 24, float %1535)  ; Sqrt(value)
  %1688 = call float @dx.op.unary.f32(i32 24, float %1536)  ; Sqrt(value)
  %1689 = call float @dx.op.unary.f32(i32 24, float %1537)  ; Sqrt(value)
  %1690 = fmul fast float %1684, 2.000000e+00
  %1691 = fsub fast float 1.000000e+00, %1690
  %1692 = fmul fast float %1691, %1687
  %1693 = fadd fast float %1692, %1690
  %1694 = fmul fast float %1693, %1687
  %1695 = fmul fast float %1685, 2.000000e+00
  %1696 = fsub fast float 1.000000e+00, %1695
  %1697 = fmul fast float %1696, %1688
  %1698 = fadd fast float %1697, %1695
  %1699 = fmul fast float %1698, %1688
  %1700 = fmul fast float %1686, 2.000000e+00
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = fmul fast float %1701, %1689
  %1703 = fadd fast float %1702, %1700
  %1704 = fmul fast float %1703, %1689
  %1705 = fmul fast float %1694, %1694
  %1706 = fmul fast float %1699, %1699
  %1707 = fmul fast float %1704, %1704
  br label %1724

; <label>:1708                                    ; preds = %1671
  %1709 = fmul fast float %291, %291
  %1710 = fmul fast float %295, %295
  %1711 = fmul fast float %299, %299
  %1712 = fadd fast float %1709, -1.000000e+00
  %1713 = fadd fast float %1710, -1.000000e+00
  %1714 = fadd fast float %1711, -1.000000e+00
  %1715 = fmul fast float %1560, %1712
  %1716 = fmul fast float %1560, %1713
  %1717 = fmul fast float %1560, %1714
  %1718 = fadd fast float %1715, 1.000000e+00
  %1719 = fadd fast float %1716, 1.000000e+00
  %1720 = fadd fast float %1717, 1.000000e+00
  %1721 = fmul fast float %1718, %1535
  %1722 = fmul fast float %1719, %1536
  %1723 = fmul fast float %1720, %1537
  br label %1724

; <label>:1724                                    ; preds = %1708, %1674, %1565, %1521
  %1725 = phi float [ %1670, %1565 ], [ %1546, %1674 ], [ %1546, %1708 ], [ 0x3FA23C0BE0000000, %1521 ]
  %1726 = phi float [ %1662, %1565 ], [ %1705, %1674 ], [ %1721, %1708 ], [ 1.000000e+00, %1521 ]
  %1727 = phi float [ %1663, %1565 ], [ %1706, %1674 ], [ %1722, %1708 ], [ 1.000000e+00, %1521 ]
  %1728 = phi float [ %1664, %1565 ], [ %1707, %1674 ], [ %1723, %1708 ], [ 1.000000e+00, %1521 ]
  %1729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.i32 %1729, 1
  %1731 = and i32 %1730, 1
  %1732 = icmp ne i32 %1731, 0
  %1733 = add i32 %54, 356
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = and i32 %1735, 32
  %1737 = icmp ne i32 %1736, 0
  %1738 = and i1 %1732, %1737
  %1739 = select i1 %1738, float 1.000000e+00, float %1726
  %1740 = select i1 %1738, float 0x3FD3333340000000, float %1727
  %1741 = select i1 %1738, float 0x3FD3333340000000, float %1728
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = and i32 %1743, 32
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %1818, label %1746

; <label>:1746                                    ; preds = %1724
  %1747 = add i32 %54, 108
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = add i32 %54, 380
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = add i32 %1752, 0
  %1754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1754, %dx.types.Handle %91, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = extractvalue %dx.types.ResRet.f32 %1755, 1
  %1758 = extractvalue %dx.types.ResRet.f32 %1755, 2
  %1759 = extractvalue %dx.types.ResRet.f32 %1755, 3
  %1760 = and i32 %1749, 255
  %1761 = uitofp i32 %1760 to float
  %1762 = lshr i32 %1749, 8
  %1763 = and i32 %1762, 255
  %1764 = uitofp i32 %1763 to float
  %1765 = lshr i32 %1749, 16
  %1766 = and i32 %1765, 255
  %1767 = uitofp i32 %1766 to float
  %1768 = fmul fast float %1767, 0x3F70101000000000
  %1769 = fmul fast float %1756, %1761
  %1770 = fadd fast float %1769, %1764
  %1771 = fmul fast float %1770, 0x3F70101000000000
  %1772 = fadd fast float %1757, -5.000000e-01
  %1773 = fadd fast float %1759, -5.000000e-01
  %1774 = fmul fast float %1772, %1768
  %1775 = fmul fast float %1773, %1768
  %1776 = fadd fast float %1774, 5.000000e-01
  %1777 = fadd fast float %1775, 5.000000e-01
  %1778 = fmul fast float %1776, 2.000000e+00
  %1779 = fadd fast float %1778, -1.000000e+00
  %1780 = fmul fast float %1777, 2.000000e+00
  %1781 = fadd fast float %1780, -1.000000e+00
  %1782 = fadd fast float %1779, %1781
  %1783 = fmul fast float %1782, 5.000000e-01
  %1784 = fsub fast float %1779, %1781
  %1785 = fmul fast float %1784, 5.000000e-01
  %1786 = call float @dx.op.unary.f32(i32 6, float %1783)  ; FAbs(value)
  %1787 = fsub fast float 1.000000e+00, %1786
  %1788 = call float @dx.op.unary.f32(i32 6, float %1785)  ; FAbs(value)
  %1789 = fsub fast float %1787, %1788
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1783, float %1785, float %1789, float %1783, float %1785, float %1789)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = call float @dx.op.unary.f32(i32 25, float %1790)  ; Rsqrt(value)
  %1792 = fmul fast float %1783, %1791
  %1793 = fmul fast float %1785, %1791
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = and i32 %1795, 67108864
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %1814, label %1798

; <label>:1798                                    ; preds = %1746
  %1799 = add i32 %54, 296
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 65535
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = and i32 %1805, 65535
  %1807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1806)  ; LegacyF16ToF32(value)
  %1808 = lshr i32 %1801, 16
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = fsub fast float %1771, %1809
  %1811 = fmul fast float %1810, %1803
  %1812 = fadd fast float %1811, %1807
  %1813 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  br label %1814

; <label>:1814                                    ; preds = %1798, %1746
  %1815 = phi float [ %1813, %1798 ], [ %1771, %1746 ]
  %1816 = call float @dx.op.dot2.f32(i32 54, float %1792, float %1793, float %1235, float %1236)  ; Dot2(ax,ay,bx,by)
  %1817 = call float @dx.op.dot2.f32(i32 54, float %1792, float %1793, float %1237, float %1238)  ; Dot2(ax,ay,bx,by)
  br label %1818

; <label>:1818                                    ; preds = %1814, %1724
  %1819 = phi float [ %1815, %1814 ], [ 0x3FD6666660000000, %1724 ]
  %1820 = phi float [ %1816, %1814 ], [ 0.000000e+00, %1724 ]
  %1821 = phi float [ %1817, %1814 ], [ 0.000000e+00, %1724 ]
  %1822 = phi float [ %1758, %1814 ], [ 1.000000e+00, %1724 ]
  %1823 = add i32 %54, 176
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = lshr i32 %1825, 22
  %1827 = shl nuw nsw i32 %1826, 5
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = and i32 %1830, 64
  %1832 = icmp eq i32 %1831, 0
  br i1 %1832, label %1866, label %1833

; <label>:1833                                    ; preds = %1818
  %1834 = add i32 %54, 396
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = add i32 %1836, 0
  %1838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = and i32 %1840, 131072
  %1842 = icmp eq i32 %1841, 0
  %1843 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1838, %dx.types.Handle %91, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.ResRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.ResRet.f32 %1843, 2
  %1847 = fmul fast float %1844, %279
  %1848 = fmul fast float %1845, %282
  %1849 = fmul fast float %1846, %285
  br i1 %1842, label %1856, label %1850

; <label>:1850                                    ; preds = %1833
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = fmul fast float %1852, %1847
  %1854 = fmul fast float %1852, %1848
  %1855 = fmul fast float %1852, %1849
  br label %1856

; <label>:1856                                    ; preds = %1850, %1833
  %1857 = phi float [ %1853, %1850 ], [ %1847, %1833 ]
  %1858 = phi float [ %1854, %1850 ], [ %1848, %1833 ]
  %1859 = phi float [ %1855, %1850 ], [ %1849, %1833 ]
  %1860 = fmul fast float %1857, %1828
  %1861 = select i1 %220, float %1860, float %1857
  %1862 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1858, float %1859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1863 = select i1 %220, float 0.000000e+00, float %1857
  %1864 = select i1 %220, float %1862, float %1858
  %1865 = select i1 %220, float 0.000000e+00, float %1859
  br label %1866

; <label>:1866                                    ; preds = %1856, %1818
  %1867 = phi float [ %1863, %1856 ], [ 0.000000e+00, %1818 ]
  %1868 = phi float [ %1864, %1856 ], [ 0.000000e+00, %1818 ]
  %1869 = phi float [ %1865, %1856 ], [ 0.000000e+00, %1818 ]
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = and i32 %1871, 1024
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1904, label %1874

; <label>:1874                                    ; preds = %1866
  %1875 = add i32 %54, 168
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = and i32 %1877, 255
  %1879 = uitofp i32 %1878 to float
  %1880 = fmul fast float %1879, 0x3F70101020000000
  %1881 = lshr i32 %1877, 8
  %1882 = and i32 %1881, 255
  %1883 = uitofp i32 %1882 to float
  %1884 = fmul fast float %1883, 0x3F70101020000000
  %1885 = lshr i32 %1877, 16
  %1886 = and i32 %1885, 255
  %1887 = uitofp i32 %1886 to float
  %1888 = fmul fast float %1887, 0x3F70101020000000
  %1889 = fmul fast float %1880, %1880
  %1890 = fmul fast float %1884, %1884
  %1891 = fmul fast float %1888, %1888
  %1892 = add i32 %54, 460
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = add i32 %1894, 0
  %1896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1896, %dx.types.Handle %92, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1898 = extractvalue %dx.types.ResRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.ResRet.f32 %1897, 1
  %1900 = extractvalue %dx.types.ResRet.f32 %1897, 2
  %1901 = fmul fast float %1889, %1898
  %1902 = fmul fast float %1890, %1899
  %1903 = fmul fast float %1891, %1900
  br label %1904

; <label>:1904                                    ; preds = %1874, %1866
  %1905 = phi float [ %1901, %1874 ], [ 0.000000e+00, %1866 ]
  %1906 = phi float [ %1902, %1874 ], [ 0.000000e+00, %1866 ]
  %1907 = phi float [ %1903, %1874 ], [ 0.000000e+00, %1866 ]
  %1908 = fcmp fast ogt float %1905, 0.000000e+00
  %1909 = fcmp fast ogt float %1906, 0.000000e+00
  %1910 = fcmp fast ogt float %1907, 0.000000e+00
  %1911 = call float @dx.op.unary.f32(i32 23, float %1905)  ; Log(value)
  %1912 = call float @dx.op.unary.f32(i32 23, float %1906)  ; Log(value)
  %1913 = call float @dx.op.unary.f32(i32 23, float %1907)  ; Log(value)
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = lshr i32 %1915, 7
  %1917 = and i32 %1916, 32752
  %1918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1917)  ; LegacyF16ToF32(value)
  %1919 = fmul fast float %1911, 0xBFE62E4300000000
  %1920 = fmul fast float %1919, %1918
  %1921 = fmul fast float %1912, 0xBFE62E4300000000
  %1922 = fmul fast float %1921, %1918
  %1923 = fmul fast float %1913, 0xBFE62E4300000000
  %1924 = fmul fast float %1923, %1918
  %1925 = select i1 %1908, float %1920, float 1.270000e+02
  %1926 = select i1 %1909, float %1922, float 1.270000e+02
  %1927 = select i1 %1910, float %1924, float 1.270000e+02
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = and i32 %1929, 10240
  %1931 = icmp eq i32 %1930, 0
  br i1 %1931, label %1952, label %1932

; <label>:1932                                    ; preds = %1904
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = and i32 %1934, 2048
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %1952, label %1937

; <label>:1937                                    ; preds = %1932
  %1938 = add i32 %54, 476
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = add i32 %1940, 0
  %1942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1942, %dx.types.Handle %92, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 3
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = shl i32 %1946, 4
  %1948 = and i32 %1947, 32752
  %1949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1948)  ; LegacyF16ToF32(value)
  %1950 = fmul fast float %1949, %1944
  %1951 = call float @dx.op.binary.f32(i32 35, float %1950, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1952

; <label>:1952                                    ; preds = %1937, %1932, %1904
  %1953 = phi float [ %1951, %1937 ], [ 0x3F70101020000000, %1932 ], [ 0x3F70101020000000, %1904 ]
  %1954 = add i32 %54, 112
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = and i32 %1956, 255
  %1958 = uitofp i32 %1957 to float
  %1959 = lshr i32 %1956, 8
  %1960 = and i32 %1959, 255
  %1961 = uitofp i32 %1960 to float
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1739, float %1740, float %1741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = fmul fast float %1961, %1962
  %1964 = fadd fast float %1963, %1958
  %1965 = fmul fast float %1964, 0x3F70101020000000
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  br i1 %1223, label %1967, label %2002

; <label>:1967                                    ; preds = %1952
  %1968 = fmul fast float %1953, 2.000000e+00
  %1969 = fcmp fast olt float %1925, 1.270000e+02
  %1970 = fcmp fast olt float %1926, 1.270000e+02
  %1971 = fcmp fast olt float %1927, 1.270000e+02
  %1972 = fmul fast float %1925, 0xBFF7154760000000
  %1973 = fmul fast float %1972, %1968
  %1974 = fmul fast float %1926, 0xBFF7154760000000
  %1975 = fmul fast float %1974, %1968
  %1976 = fmul fast float %1927, 0xBFF7154760000000
  %1977 = fmul fast float %1976, %1968
  %1978 = call float @dx.op.unary.f32(i32 21, float %1973)  ; Exp(value)
  %1979 = call float @dx.op.unary.f32(i32 21, float %1975)  ; Exp(value)
  %1980 = call float @dx.op.unary.f32(i32 21, float %1977)  ; Exp(value)
  %1981 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1982 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1983 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1984 = fadd fast float %1981, -1.000000e+00
  %1985 = select i1 %1969, float %1984, float -1.000000e+00
  %1986 = fadd fast float %1982, -1.000000e+00
  %1987 = select i1 %1970, float %1986, float -1.000000e+00
  %1988 = fadd fast float %1983, -1.000000e+00
  %1989 = select i1 %1971, float %1988, float -1.000000e+00
  %1990 = fmul fast float %1985, %1519
  %1991 = fmul fast float %1987, %1519
  %1992 = fmul fast float %1989, %1519
  %1993 = fadd fast float %1990, 1.000000e+00
  %1994 = fadd fast float %1991, 1.000000e+00
  %1995 = fadd fast float %1992, 1.000000e+00
  %1996 = fmul fast float %1993, %1207
  %1997 = fmul fast float %1994, %1208
  %1998 = fmul fast float %1995, %1209
  %1999 = fmul fast float %1993, %1210
  %2000 = fmul fast float %1994, %1211
  %2001 = fmul fast float %1995, %1212
  br label %2002

; <label>:2002                                    ; preds = %1967, %1952
  %2003 = phi float [ %1996, %1967 ], [ %1207, %1952 ]
  %2004 = phi float [ %1997, %1967 ], [ %1208, %1952 ]
  %2005 = phi float [ %1998, %1967 ], [ %1209, %1952 ]
  %2006 = phi float [ %1999, %1967 ], [ %1210, %1952 ]
  %2007 = phi float [ %2000, %1967 ], [ %1211, %1952 ]
  %2008 = phi float [ %2001, %1967 ], [ %1212, %1952 ]
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = and i32 %2010, 3
  %2012 = icmp eq i32 %2011, 3
  br i1 %2012, label %2091, label %2013

; <label>:2013                                    ; preds = %2002
  %2014 = and i32 %2010, 16
  %2015 = icmp ne i32 %2014, 0
  %2016 = select i1 %2015, float %1519, float 0.000000e+00
  %2017 = icmp eq i32 %2011, 0
  br i1 %2017, label %2018, label %2046

; <label>:2018                                    ; preds = %2013
  %2019 = and i32 %2010, 64
  %2020 = icmp ne i32 %2019, 0
  %2021 = select i1 %2020, float %1519, float 0.000000e+00
  %2022 = fsub fast float %1739, %2003
  %2023 = fsub fast float %1740, %2004
  %2024 = fsub fast float %1741, %2005
  %2025 = fmul fast float %2016, %2022
  %2026 = fmul fast float %2016, %2023
  %2027 = fmul fast float %2016, %2024
  %2028 = fadd fast float %2025, %2003
  %2029 = fadd fast float %2026, %2004
  %2030 = fadd fast float %2027, %2005
  %2031 = fsub fast float %1725, %1216
  %2032 = fmul fast float %2016, %2031
  %2033 = fadd fast float %2032, %1216
  %2034 = fsub fast float %1867, %2006
  %2035 = fsub fast float %1868, %2007
  %2036 = fsub fast float %1869, %2008
  %2037 = fmul fast float %2021, %2034
  %2038 = fmul fast float %2021, %2035
  %2039 = fmul fast float %2021, %2036
  %2040 = fadd fast float %2037, %2006
  %2041 = fadd fast float %2038, %2007
  %2042 = fadd fast float %2039, %2008
  %2043 = fsub fast float %1966, %1221
  %2044 = fmul fast float %2016, %2043
  %2045 = fadd fast float %2044, %1221
  br label %2091

; <label>:2046                                    ; preds = %2013
  %2047 = icmp eq i32 %2011, 1
  br i1 %2047, label %2048, label %2061

; <label>:2048                                    ; preds = %2046
  %2049 = fadd fast float %1739, -1.000000e+00
  %2050 = fadd fast float %1740, -1.000000e+00
  %2051 = fadd fast float %1741, -1.000000e+00
  %2052 = fmul fast float %2016, %2049
  %2053 = fmul fast float %2016, %2050
  %2054 = fmul fast float %2016, %2051
  %2055 = fadd fast float %2052, 1.000000e+00
  %2056 = fadd fast float %2053, 1.000000e+00
  %2057 = fadd fast float %2054, 1.000000e+00
  %2058 = fmul fast float %2055, %2003
  %2059 = fmul fast float %2056, %2004
  %2060 = fmul fast float %2057, %2005
  br label %2091

; <label>:2061                                    ; preds = %2046
  %2062 = icmp eq i32 %2011, 2
  br i1 %2062, label %2063, label %2091

; <label>:2063                                    ; preds = %2061
  %2064 = call float @dx.op.unary.f32(i32 24, float %1739)  ; Sqrt(value)
  %2065 = call float @dx.op.unary.f32(i32 24, float %1740)  ; Sqrt(value)
  %2066 = call float @dx.op.unary.f32(i32 24, float %1741)  ; Sqrt(value)
  %2067 = fadd fast float %2064, -5.000000e-01
  %2068 = fadd fast float %2065, -5.000000e-01
  %2069 = fadd fast float %2066, -5.000000e-01
  %2070 = fmul fast float %2067, %2016
  %2071 = fmul fast float %2068, %2016
  %2072 = fmul fast float %2069, %2016
  %2073 = fadd fast float %2070, 5.000000e-01
  %2074 = fadd fast float %2071, 5.000000e-01
  %2075 = fadd fast float %2072, 5.000000e-01
  %2076 = fmul fast float %2073, 2.000000e+00
  %2077 = fsub fast float 1.000000e+00, %2076
  %2078 = fmul fast float %2077, %2003
  %2079 = fadd fast float %2078, %2076
  %2080 = fmul fast float %2079, %2003
  %2081 = fmul fast float %2074, 2.000000e+00
  %2082 = fsub fast float 1.000000e+00, %2081
  %2083 = fmul fast float %2082, %2004
  %2084 = fadd fast float %2083, %2081
  %2085 = fmul fast float %2084, %2004
  %2086 = fmul fast float %2075, 2.000000e+00
  %2087 = fsub fast float 1.000000e+00, %2086
  %2088 = fmul fast float %2087, %2005
  %2089 = fadd fast float %2088, %2086
  %2090 = fmul fast float %2089, %2005
  br label %2091

; <label>:2091                                    ; preds = %2063, %2061, %2048, %2018, %2002
  %2092 = phi float [ %2003, %2002 ], [ %2080, %2063 ], [ %2003, %2061 ], [ %2058, %2048 ], [ %2028, %2018 ]
  %2093 = phi float [ %2004, %2002 ], [ %2085, %2063 ], [ %2004, %2061 ], [ %2059, %2048 ], [ %2029, %2018 ]
  %2094 = phi float [ %2005, %2002 ], [ %2090, %2063 ], [ %2005, %2061 ], [ %2060, %2048 ], [ %2030, %2018 ]
  %2095 = phi float [ %2006, %2002 ], [ %2006, %2063 ], [ %2006, %2061 ], [ %2006, %2048 ], [ %2040, %2018 ]
  %2096 = phi float [ %2007, %2002 ], [ %2007, %2063 ], [ %2007, %2061 ], [ %2007, %2048 ], [ %2041, %2018 ]
  %2097 = phi float [ %2008, %2002 ], [ %2008, %2063 ], [ %2008, %2061 ], [ %2008, %2048 ], [ %2042, %2018 ]
  %2098 = phi float [ %1216, %2002 ], [ %1216, %2063 ], [ %1216, %2061 ], [ %1216, %2048 ], [ %2033, %2018 ]
  %2099 = phi float [ %1221, %2002 ], [ %1221, %2063 ], [ %1221, %2061 ], [ %1221, %2048 ], [ %2045, %2018 ]
  %2100 = and i32 %2010, 12
  %2101 = icmp eq i32 %2100, 12
  br i1 %2101, label %2208, label %2102

; <label>:2102                                    ; preds = %2091
  %2103 = and i32 %2010, 2097184
  %2104 = icmp eq i32 %2103, 2097184
  %2105 = select i1 %2104, float %1519, float 0.000000e+00
  %2106 = and i32 %2010, 4194336
  %2107 = icmp eq i32 %2106, 4194336
  %2108 = select i1 %2107, float %1519, float 0.000000e+00
  %2109 = and i32 %2010, 8388640
  %2110 = icmp eq i32 %2109, 8388640
  %2111 = select i1 %2110, float %1519, float 0.000000e+00
  %2112 = and i32 %2010, 1024
  %2113 = icmp ne i32 %2112, 0
  %2114 = select i1 %2113, float %1519, float 0.000000e+00
  %2115 = and i32 %2010, 2048
  %2116 = icmp ne i32 %2115, 0
  %2117 = select i1 %2116, float %1519, float 0.000000e+00
  %2118 = icmp eq i32 %2100, 0
  br i1 %2118, label %2119, label %2144

; <label>:2119                                    ; preds = %2102
  %2120 = fsub fast float %1820, %1205
  %2121 = fsub fast float %1821, %1206
  %2122 = fmul fast float %2105, %2120
  %2123 = fmul fast float %2105, %2121
  %2124 = fadd fast float %2122, %1205
  %2125 = fadd fast float %2123, %1206
  %2126 = fsub fast float %1822, %1219
  %2127 = fmul fast float %2108, %2126
  %2128 = fadd fast float %2127, %1219
  %2129 = fsub fast float %1819, %1218
  %2130 = fmul fast float %2111, %2129
  %2131 = fadd fast float %2130, %1218
  %2132 = fsub fast float %1925, %1213
  %2133 = fsub fast float %1926, %1214
  %2134 = fsub fast float %1927, %1215
  %2135 = fmul fast float %2114, %2132
  %2136 = fmul fast float %2114, %2133
  %2137 = fmul fast float %2114, %2134
  %2138 = fadd fast float %2135, %1213
  %2139 = fadd fast float %2136, %1214
  %2140 = fadd fast float %2137, %1215
  %2141 = fsub fast float %1953, %1220
  %2142 = fmul fast float %2117, %2141
  %2143 = fadd fast float %2142, %1220
  br label %2208

; <label>:2144                                    ; preds = %2102
  %2145 = icmp eq i32 %2100, 4
  br i1 %2145, label %2146, label %2186

; <label>:2146                                    ; preds = %2144
  %2147 = fmul fast float %2105, %1820
  %2148 = fmul fast float %2105, %1821
  %2149 = fadd fast float %2147, %1205
  %2150 = fadd fast float %2148, %1206
  %2151 = call float @dx.op.binary.f32(i32 36, float %1219, float %1822)  ; FMin(a,b)
  %2152 = fsub fast float %2151, %1219
  %2153 = fmul fast float %2152, %2108
  %2154 = fadd fast float %2153, %1219
  %2155 = fadd fast float %1819, %1218
  %2156 = fmul fast float %2155, 0x3FF337FAE0000000
  %2157 = fmul fast float %1218, %1218
  %2158 = fmul fast float %1819, %1819
  %2159 = fadd fast float %2158, %2157
  %2160 = fmul fast float %2159, 0x3FE5152B00000000
  %2161 = fmul fast float %1218, 0xBFCC1F85E0000000
  %2162 = fmul fast float %2161, %1819
  %2163 = fadd fast float %2162, 0xBFE1363700000000
  %2164 = fadd fast float %2163, %2156
  %2165 = fsub fast float %2164, %2160
  %2166 = fmul fast float %2155, 0x3FBA6F0D00000000
  %2167 = fmul fast float %2159, 0x3FD0432880000000
  %2168 = fmul fast float %1218, 0xBFEF110800000000
  %2169 = fmul fast float %2168, %1819
  %2170 = fadd fast float %2169, 1.000000e+00
  %2171 = fsub fast float %2170, %2166
  %2172 = fadd fast float %2171, %2167
  %2173 = fdiv fast float %2165, %2172
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fsub fast float %2174, %1218
  %2176 = fmul fast float %2175, %2111
  %2177 = fadd fast float %2176, %1218
  %2178 = fmul fast float %2114, %1925
  %2179 = fmul fast float %2114, %1926
  %2180 = fmul fast float %2114, %1927
  %2181 = fadd fast float %2178, %1213
  %2182 = fadd fast float %2179, %1214
  %2183 = fadd fast float %2180, %1215
  %2184 = fmul fast float %2117, %1953
  %2185 = fadd fast float %2184, %1220
  br label %2208

; <label>:2186                                    ; preds = %2144
  %2187 = icmp eq i32 %2100, 8
  br i1 %2187, label %2188, label %2208

; <label>:2188                                    ; preds = %2186
  %2189 = fmul fast float %2105, %1820
  %2190 = fmul fast float %2105, %1821
  %2191 = fadd fast float %2189, %1205
  %2192 = fadd fast float %2190, %1206
  %2193 = call float @dx.op.binary.f32(i32 36, float %1219, float %1822)  ; FMin(a,b)
  %2194 = fsub fast float %2193, %1219
  %2195 = fmul fast float %2194, %2108
  %2196 = fadd fast float %2195, %1219
  %2197 = fsub fast float %1819, %1218
  %2198 = fmul fast float %2111, %2197
  %2199 = fadd fast float %2198, %1218
  %2200 = fmul fast float %2114, %1925
  %2201 = fmul fast float %2114, %1926
  %2202 = fmul fast float %2114, %1927
  %2203 = fadd fast float %2200, %1213
  %2204 = fadd fast float %2201, %1214
  %2205 = fadd fast float %2202, %1215
  %2206 = fmul fast float %2117, %1953
  %2207 = fadd fast float %2206, %1220
  br label %2208

; <label>:2208                                    ; preds = %2188, %2186, %2146, %2119, %2091, %1518, %1222, %1204
  %2209 = phi float [ %1205, %2091 ], [ %1205, %1518 ], [ %1205, %1204 ], [ %2191, %2188 ], [ %1205, %2186 ], [ %2149, %2146 ], [ %2124, %2119 ], [ %1205, %1222 ]
  %2210 = phi float [ %1206, %2091 ], [ %1206, %1518 ], [ %1206, %1204 ], [ %2192, %2188 ], [ %1206, %2186 ], [ %2150, %2146 ], [ %2125, %2119 ], [ %1206, %1222 ]
  %2211 = phi float [ %2092, %2091 ], [ %1207, %1518 ], [ %1207, %1204 ], [ %2092, %2188 ], [ %2092, %2186 ], [ %2092, %2146 ], [ %2092, %2119 ], [ %1207, %1222 ]
  %2212 = phi float [ %2093, %2091 ], [ %1208, %1518 ], [ %1208, %1204 ], [ %2093, %2188 ], [ %2093, %2186 ], [ %2093, %2146 ], [ %2093, %2119 ], [ %1208, %1222 ]
  %2213 = phi float [ %2094, %2091 ], [ %1209, %1518 ], [ %1209, %1204 ], [ %2094, %2188 ], [ %2094, %2186 ], [ %2094, %2146 ], [ %2094, %2119 ], [ %1209, %1222 ]
  %2214 = phi float [ %2095, %2091 ], [ %1210, %1518 ], [ %1210, %1204 ], [ %2095, %2188 ], [ %2095, %2186 ], [ %2095, %2146 ], [ %2095, %2119 ], [ %1210, %1222 ]
  %2215 = phi float [ %2096, %2091 ], [ %1211, %1518 ], [ %1211, %1204 ], [ %2096, %2188 ], [ %2096, %2186 ], [ %2096, %2146 ], [ %2096, %2119 ], [ %1211, %1222 ]
  %2216 = phi float [ %2097, %2091 ], [ %1212, %1518 ], [ %1212, %1204 ], [ %2097, %2188 ], [ %2097, %2186 ], [ %2097, %2146 ], [ %2097, %2119 ], [ %1212, %1222 ]
  %2217 = phi float [ %1213, %2091 ], [ %1213, %1518 ], [ %1213, %1204 ], [ %2203, %2188 ], [ %1213, %2186 ], [ %2181, %2146 ], [ %2138, %2119 ], [ %1213, %1222 ]
  %2218 = phi float [ %1214, %2091 ], [ %1214, %1518 ], [ %1214, %1204 ], [ %2204, %2188 ], [ %1214, %2186 ], [ %2182, %2146 ], [ %2139, %2119 ], [ %1214, %1222 ]
  %2219 = phi float [ %1215, %2091 ], [ %1215, %1518 ], [ %1215, %1204 ], [ %2205, %2188 ], [ %1215, %2186 ], [ %2183, %2146 ], [ %2140, %2119 ], [ %1215, %1222 ]
  %2220 = phi float [ %2098, %2091 ], [ %1216, %1518 ], [ %1216, %1204 ], [ %2098, %2188 ], [ %2098, %2186 ], [ %2098, %2146 ], [ %2098, %2119 ], [ %1216, %1222 ]
  %2221 = phi float [ %1218, %2091 ], [ %1218, %1518 ], [ %1218, %1204 ], [ %2199, %2188 ], [ %1218, %2186 ], [ %2177, %2146 ], [ %2131, %2119 ], [ %1218, %1222 ]
  %2222 = phi float [ %1219, %2091 ], [ %1219, %1518 ], [ %1219, %1204 ], [ %2196, %2188 ], [ %1219, %2186 ], [ %2154, %2146 ], [ %2128, %2119 ], [ %1219, %1222 ]
  %2223 = phi float [ %1220, %2091 ], [ %1220, %1518 ], [ %1220, %1204 ], [ %2207, %2188 ], [ %1220, %2186 ], [ %2185, %2146 ], [ %2143, %2119 ], [ %1220, %1222 ]
  %2224 = phi float [ %2099, %2091 ], [ %1221, %1518 ], [ %1221, %1204 ], [ %2099, %2188 ], [ %2099, %2186 ], [ %2099, %2146 ], [ %2099, %2119 ], [ %1221, %1222 ]
  br i1 %406, label %3211, label %2225

; <label>:2225                                    ; preds = %2208
  %2226 = icmp ult i32 %462, 3
  %2227 = add i32 %54, 56
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = add i32 %54, 60
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = or i32 %2232, %2229
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %3211, label %2235

; <label>:2235                                    ; preds = %2225
  %2236 = and i32 %2229, 262144
  %2237 = icmp ne i32 %2236, 0
  %2238 = select i1 %2237, float %57, float 1.000000e+00
  %2239 = select i1 %2237, float %58, float 0.000000e+00
  %2240 = select i1 %2237, float %59, float 0.000000e+00
  %2241 = select i1 %2237, float %60, float 1.000000e+00
  %2242 = select i1 %2237, float %61, float %77
  %2243 = select i1 %2237, float %62, float %78
  %2244 = add i32 %54, 316
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = lshr i32 %2246, 16
  %2248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2247)  ; LegacyF16ToF32(value)
  %2249 = fmul fast float %2248, 0x3F50624DE0000000
  %2250 = add i32 %54, 120
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = lshr i32 %2252, 16
  %2254 = and i32 %2253, 255
  %2255 = lshr i32 %2252, 24
  %2256 = add i32 %54, 324
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %2258, 65535
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = lshr i32 %2258, 16
  %2262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2261)  ; LegacyF16ToF32(value)
  %2263 = add i32 %54, 64
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = lshr i32 %2265, 22
  %2267 = shl nuw nsw i32 %2266, 5
  %2268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2267)  ; LegacyF16ToF32(value)
  %2269 = shl i32 %2265, 4
  %2270 = and i32 %2269, 32752
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = lshr i32 %2265, 7
  %2273 = and i32 %2272, 32752
  %2274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2273)  ; LegacyF16ToF32(value)
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 3
  %2277 = fmul fast float %2276, 1.000000e+03
  %2278 = fmul fast float %356, %2277
  %2279 = call float @dx.op.unary.f32(i32 22, float %2278)  ; Frc(value)
  %2280 = fadd fast float %2279, %346
  %2281 = fmul fast float %357, %2277
  %2282 = call float @dx.op.unary.f32(i32 22, float %2281)  ; Frc(value)
  %2283 = fadd fast float %2282, %348
  %2284 = fmul fast float %2249, %2277
  %2285 = call float @dx.op.unary.f32(i32 22, float %2284)  ; Frc(value)
  %2286 = fmul fast float %2285, 0x401921FB60000000
  %2287 = fadd fast float %2286, %2268
  %2288 = call float @dx.op.unary.f32(i32 13, float %2287)  ; Sin(value)
  %2289 = call float @dx.op.unary.f32(i32 12, float %2287)  ; Cos(value)
  %2290 = fsub fast float -0.000000e+00, %2288
  %2291 = fadd fast float %2242, -5.000000e-01
  %2292 = fadd fast float %2243, -5.000000e-01
  %2293 = fmul fast float %2260, %2291
  %2294 = fmul fast float %2262, %2292
  %2295 = fadd fast float %2293, 5.000000e-01
  %2296 = fadd fast float %2294, 5.000000e-01
  %2297 = fmul fast float %2271, %2295
  %2298 = fmul fast float %2274, %2296
  %2299 = fmul fast float %2289, %2297
  %2300 = call float @dx.op.tertiary.f32(i32 46, float %2290, float %2298, float %2299)  ; FMad(a,b,c)
  %2301 = fmul fast float %2288, %2297
  %2302 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2298, float %2301)  ; FMad(a,b,c)
  %2303 = fadd fast float %2280, %2300
  %2304 = fadd fast float %2283, %2302
  %2305 = icmp ugt i32 %2254, 1
  %2306 = icmp ugt i32 %2252, 33554431
  %2307 = or i1 %2306, %2305
  br i1 %2307, label %2308, label %2333

; <label>:2308                                    ; preds = %2235
  %2309 = add i32 %54, 260
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = lshr i32 %2311, 16
  %2313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2312)  ; LegacyF16ToF32(value)
  %2314 = fmul fast float %2276, %2313
  %2315 = call float @dx.op.unary.f32(i32 22, float %2314)  ; Frc(value)
  %2316 = mul nuw nsw i32 %2254, %2255
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2315, %2317
  %2319 = call float @dx.op.unary.f32(i32 27, float %2318)  ; Round_ni(value)
  %2320 = fptoui float %2319 to i32
  %2321 = urem i32 %2320, %2254
  %2322 = udiv i32 %2320, %2255
  %2323 = call float @dx.op.unary.f32(i32 22, float %2303)  ; Frc(value)
  %2324 = call float @dx.op.unary.f32(i32 22, float %2304)  ; Frc(value)
  %2325 = uitofp i32 %2321 to float
  %2326 = uitofp i32 %2322 to float
  %2327 = fadd fast float %2323, %2325
  %2328 = fadd fast float %2324, %2326
  %2329 = uitofp i32 %2254 to float
  %2330 = uitofp i32 %2255 to float
  %2331 = fdiv fast float %2327, %2329
  %2332 = fdiv fast float %2328, %2330
  br label %2333

; <label>:2333                                    ; preds = %2308, %2235
  %2334 = phi float [ %2331, %2308 ], [ %2303, %2235 ]
  %2335 = phi float [ %2332, %2308 ], [ %2304, %2235 ]
  %2336 = and i32 %2229, 16777216
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2447, label %2338

; <label>:2338                                    ; preds = %2333
  %2339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.CBufRet.f32 %2339, 1
  %2342 = extractvalue %dx.types.CBufRet.f32 %2339, 2
  %2343 = fadd fast float %2340, %158
  %2344 = fadd fast float %2341, %159
  %2345 = fadd fast float %2342, %160
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2348 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2349 = icmp eq i32 %55, 65535
  br i1 %2349, label %2444, label %2350

; <label>:2350                                    ; preds = %2338
  %2351 = lshr i32 %55, 1
  %2352 = shl i32 %2351, 2
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %55, 1
  %2356 = icmp ne i32 %2355, 0
  %2357 = lshr i32 %2354, 16
  %2358 = and i32 %2354, 65535
  %2359 = select i1 %2356, i32 %2357, i32 %2358
  %2360 = icmp eq i32 %2359, 65535
  br i1 %2360, label %2440, label %2361

; <label>:2361                                    ; preds = %2350
  %2362 = mul nuw nsw i32 %2359, 40
  %2363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.ResRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.ResRet.f32 %2363, 2
  %2367 = add nuw nsw i32 %2362, 12
  %2368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.ResRet.f32 %2368, 1
  %2371 = extractvalue %dx.types.ResRet.f32 %2368, 2
  %2372 = add nuw nsw i32 %2362, 24
  %2373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.ResRet.f32 %2373, 1
  %2376 = extractvalue %dx.types.ResRet.f32 %2373, 2
  %2377 = add nuw nsw i32 %2362, 36
  %2378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  %2380 = fsub fast float %2343, %2364
  %2381 = fsub fast float %2344, %2365
  %2382 = fsub fast float %2345, %2366
  %2383 = fmul fast float %2379, %2380
  %2384 = fmul fast float %2379, %2381
  %2385 = fmul fast float %2379, %2382
  %2386 = call float @dx.op.unary.f32(i32 27, float %2383)  ; Round_ni(value)
  %2387 = call float @dx.op.unary.f32(i32 27, float %2384)  ; Round_ni(value)
  %2388 = call float @dx.op.unary.f32(i32 27, float %2385)  ; Round_ni(value)
  %2389 = fadd fast float %2386, 5.000000e-01
  %2390 = fadd fast float %2387, 5.000000e-01
  %2391 = fadd fast float %2388, 5.000000e-01
  %2392 = fmul fast float %2389, %2369
  %2393 = fmul fast float %2390, %2370
  %2394 = fmul fast float %2391, %2371
  %2395 = shl i32 %55, 2
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = add i32 %2397, 0
  %2399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2400 = call float @dx.op.unary.f32(i32 22, float %2392)  ; Frc(value)
  %2401 = call float @dx.op.unary.f32(i32 22, float %2393)  ; Frc(value)
  %2402 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2399, %dx.types.Handle %49, float %2400, float %2401, float %2402, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2404 = extractvalue %dx.types.ResRet.f32 %2403, 0
  %2405 = extractvalue %dx.types.ResRet.f32 %2403, 1
  %2406 = extractvalue %dx.types.ResRet.f32 %2403, 2
  %2407 = fmul fast float %2404, 1.023000e+03
  %2408 = fmul fast float %2405, 1.023000e+03
  %2409 = fmul fast float %2406, 1.023000e+03
  %2410 = fadd fast float %2407, 5.000000e-01
  %2411 = fadd fast float %2408, 5.000000e-01
  %2412 = fadd fast float %2409, 5.000000e-01
  %2413 = call float @dx.op.unary.f32(i32 27, float %2410)  ; Round_ni(value)
  %2414 = call float @dx.op.unary.f32(i32 27, float %2411)  ; Round_ni(value)
  %2415 = call float @dx.op.unary.f32(i32 27, float %2412)  ; Round_ni(value)
  %2416 = fsub fast float %2383, %2386
  %2417 = fsub fast float %2384, %2387
  %2418 = fsub fast float %2385, %2388
  %2419 = fmul fast float %2416, 7.500000e-01
  %2420 = fmul fast float %2417, 7.500000e-01
  %2421 = fmul fast float %2418, 7.500000e-01
  %2422 = fadd fast float %2386, 1.250000e-01
  %2423 = fadd fast float %2422, %2419
  %2424 = fadd fast float %2423, %2413
  %2425 = fadd fast float %2387, 1.250000e-01
  %2426 = fadd fast float %2425, %2420
  %2427 = fadd fast float %2426, %2414
  %2428 = fadd fast float %2388, 1.250000e-01
  %2429 = fadd fast float %2428, %2421
  %2430 = fadd fast float %2429, %2415
  %2431 = fmul fast float %2424, %2374
  %2432 = fmul fast float %2427, %2375
  %2433 = fmul fast float %2430, %2376
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = add i32 %2435, 0
  %2437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2437, %dx.types.Handle %47, float %2431, float %2432, float %2433, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2439 = extractvalue %dx.types.ResRet.f32 %2438, 0
  br label %2440

; <label>:2440                                    ; preds = %2361, %2350
  %2441 = phi float [ %2439, %2361 ], [ -1.000000e+00, %2350 ]
  %2442 = fadd fast float %2441, %2348
  %2443 = call float @dx.op.unary.f32(i32 7, float %2442)  ; Saturate(value)
  br label %2444

; <label>:2444                                    ; preds = %2440, %2338
  %2445 = phi float [ %2443, %2440 ], [ %2348, %2338 ]
  %2446 = fmul fast float %2445, %458
  br label %2447

; <label>:2447                                    ; preds = %2444, %2333
  %2448 = phi float [ %2446, %2444 ], [ %458, %2333 ]
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 256
  %2452 = icmp eq i32 %2451, 0
  br i1 %2452, label %2499, label %2453

; <label>:2453                                    ; preds = %2447
  %2454 = add i32 %54, 432
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = add i32 %2456, 0
  %2458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2458, %dx.types.Handle %92, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = add i32 %54, 132
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = shl i32 %2463, 4
  %2465 = and i32 %2464, 32752
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = lshr i32 %2463, 7
  %2468 = and i32 %2467, 32752
  %2469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2468)  ; LegacyF16ToF32(value)
  %2470 = fsub fast float 1.000000e+00, %2448
  %2471 = call float @dx.op.binary.f32(i32 35, float %2470, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2472 = bitcast float %2448 to i32
  %2473 = sitofp i32 %2472 to float
  %2474 = fadd fast float %2473, 0xC1CFBF8940000000
  %2475 = fmul fast float %2469, %2474
  %2476 = fadd fast float %2475, 0x41CFBF8940000000
  %2477 = fptosi float %2476 to i32
  %2478 = bitcast i32 %2477 to float
  %2479 = bitcast float %2471 to i32
  %2480 = sitofp i32 %2479 to float
  %2481 = fadd fast float %2480, 0xC1CFBF8940000000
  %2482 = fmul fast float %2481, %2469
  %2483 = fadd fast float %2482, 0x41CFBF8940000000
  %2484 = fptosi float %2483 to i32
  %2485 = bitcast i32 %2484 to float
  %2486 = fmul fast float %2478, %2466
  %2487 = fmul fast float %2485, %2466
  %2488 = fsub fast float %2471, %2486
  %2489 = fadd fast float %2487, %2471
  %2490 = call float @dx.op.unary.f32(i32 7, float %2488)  ; Saturate(value)
  %2491 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2492 = fsub fast float %2460, %2490
  %2493 = fsub fast float %2491, %2490
  %2494 = bitcast float %2493 to i32
  %2495 = sub nsw i32 2129859010, %2494
  %2496 = bitcast i32 %2495 to float
  %2497 = fmul fast float %2496, %2492
  %2498 = call float @dx.op.unary.f32(i32 7, float %2497)  ; Saturate(value)
  br label %2499

; <label>:2499                                    ; preds = %2453, %2447
  %2500 = phi float [ %2498, %2453 ], [ %2448, %2447 ]
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = and i32 %2502, 128
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2521, label %2505

; <label>:2505                                    ; preds = %2499
  %2506 = add i32 %54, 416
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = add i32 %2508, 0
  %2510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2510, %dx.types.Handle %92, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2512 = extractvalue %dx.types.ResRet.f32 %2511, 0
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 524288
  %2516 = icmp ne i32 %2515, 0
  %2517 = fcmp fast ogt float %2512, 0x3FE0101020000000
  %2518 = select i1 %2517, float 1.000000e+00, float 0.000000e+00
  %2519 = select i1 %2516, float %2518, float %2512
  %2520 = fmul fast float %2519, %2500
  br label %2521

; <label>:2521                                    ; preds = %2505, %2499
  %2522 = phi float [ %2520, %2505 ], [ %2500, %2499 ]
  %2523 = fcmp fast ult float %2522, 0x3F70101020000000
  br i1 %2523, label %3211, label %2524

; <label>:2524                                    ; preds = %2521
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 16
  %2528 = icmp eq i32 %2527, 0
  br i1 %2528, label %2727, label %2529

; <label>:2529                                    ; preds = %2524
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %54, 368
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %2534, 0
  %2536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2536, %dx.types.Handle %91, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2538 = extractvalue %dx.types.ResRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.ResRet.f32 %2537, 1
  %2540 = extractvalue %dx.types.ResRet.f32 %2537, 2
  %2541 = extractvalue %dx.types.ResRet.f32 %2537, 3
  %2542 = and i32 %2531, 255
  %2543 = uitofp i32 %2542 to float
  %2544 = lshr i32 %2531, 8
  %2545 = and i32 %2544, 255
  %2546 = uitofp i32 %2545 to float
  %2547 = fmul fast float %2541, %2543
  %2548 = fadd fast float %2547, %2546
  %2549 = fmul fast float %2548, 0x3F70101000000000
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = and i32 %2551, 512
  %2553 = icmp eq i32 %2552, 0
  br i1 %2553, label %2562, label %2554

; <label>:2554                                    ; preds = %2529
  %2555 = add i32 %54, 448
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = add i32 %2557, 0
  %2559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2559, %dx.types.Handle %92, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2561 = extractvalue %dx.types.ResRet.f32 %2560, 0
  br label %2562

; <label>:2562                                    ; preds = %2554, %2529
  %2563 = phi float [ %2561, %2554 ], [ 1.000000e+00, %2529 ]
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 33554432
  %2567 = icmp eq i32 %2566, 0
  br i1 %2567, label %2674, label %2568

; <label>:2568                                    ; preds = %2562
  %2569 = add i32 %54, 256
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 65535
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = lshr i32 %2571, 16
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = add i32 %54, 260
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 65535
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = lshr i32 %2582, 24
  %2584 = uitofp i32 %2583 to float
  %2585 = fmul fast float %2584, 0x3F70101020000000
  %2586 = and i32 %2582, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F70101020000000
  %2589 = lshr i32 %2582, 8
  %2590 = and i32 %2589, 255
  %2591 = uitofp i32 %2590 to float
  %2592 = fmul fast float %2591, 0x3F70101020000000
  %2593 = lshr i32 %2582, 16
  %2594 = and i32 %2593, 255
  %2595 = uitofp i32 %2594 to float
  %2596 = fmul fast float %2595, 0x3F70101020000000
  %2597 = add i32 %54, 252
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = lshr i32 %2599, 24
  %2601 = uitofp i32 %2600 to float
  %2602 = fmul fast float %2601, 0x3F70101020000000
  %2603 = and i32 %2599, 255
  %2604 = uitofp i32 %2603 to float
  %2605 = fmul fast float %2604, 0x3F70101020000000
  %2606 = lshr i32 %2599, 8
  %2607 = and i32 %2606, 255
  %2608 = uitofp i32 %2607 to float
  %2609 = fmul fast float %2608, 0x3F70101020000000
  %2610 = lshr i32 %2599, 16
  %2611 = and i32 %2610, 255
  %2612 = uitofp i32 %2611 to float
  %2613 = fmul fast float %2612, 0x3F70101020000000
  %2614 = bitcast float %2538 to i32
  %2615 = ashr i32 %2614, 1
  %2616 = sub nsw i32 1597463174, %2615
  %2617 = bitcast i32 %2616 to float
  %2618 = fmul fast float %2538, 5.000000e-01
  %2619 = fmul fast float %2617, %2617
  %2620 = fmul fast float %2619, %2618
  %2621 = fsub fast float 1.500000e+00, %2620
  %2622 = fmul fast float %2617, %2538
  %2623 = fmul fast float %2622, %2621
  %2624 = bitcast float %2539 to i32
  %2625 = ashr i32 %2624, 1
  %2626 = sub nsw i32 1597463174, %2625
  %2627 = bitcast i32 %2626 to float
  %2628 = fmul fast float %2539, 5.000000e-01
  %2629 = fmul fast float %2627, %2627
  %2630 = fmul fast float %2629, %2628
  %2631 = fsub fast float 1.500000e+00, %2630
  %2632 = fmul fast float %2627, %2539
  %2633 = fmul fast float %2632, %2631
  %2634 = bitcast float %2540 to i32
  %2635 = ashr i32 %2634, 1
  %2636 = sub nsw i32 1597463174, %2635
  %2637 = bitcast i32 %2636 to float
  %2638 = fmul fast float %2540, 5.000000e-01
  %2639 = fmul fast float %2637, %2637
  %2640 = fmul fast float %2639, %2638
  %2641 = fsub fast float 1.500000e+00, %2640
  %2642 = fmul fast float %2637, %2540
  %2643 = fmul fast float %2642, %2641
  %2644 = fsub fast float %2623, %2605
  %2645 = fsub fast float %2633, %2609
  %2646 = fsub fast float %2643, %2613
  %2647 = fmul fast float %2644, %2573
  %2648 = fmul fast float %2645, %2575
  %2649 = fmul fast float %2646, %2580
  %2650 = fadd fast float %2647, %2588
  %2651 = fadd fast float %2648, %2592
  %2652 = fadd fast float %2649, %2596
  %2653 = call float @dx.op.unary.f32(i32 7, float %2650)  ; Saturate(value)
  %2654 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  %2655 = call float @dx.op.unary.f32(i32 7, float %2652)  ; Saturate(value)
  %2656 = fmul fast float %2653, %2653
  %2657 = fmul fast float %2654, %2654
  %2658 = fmul fast float %2655, %2655
  %2659 = fsub fast float %2656, %2538
  %2660 = fsub fast float %2657, %2539
  %2661 = fsub fast float %2658, %2540
  %2662 = fmul fast float %2659, %2563
  %2663 = fmul fast float %2660, %2563
  %2664 = fmul fast float %2661, %2563
  %2665 = fadd fast float %2662, %2538
  %2666 = fadd fast float %2663, %2539
  %2667 = fadd fast float %2664, %2540
  %2668 = fadd fast float %2585, %2549
  %2669 = fsub fast float %2668, %2602
  %2670 = call float @dx.op.unary.f32(i32 7, float %2669)  ; Saturate(value)
  %2671 = fsub fast float %2670, %2549
  %2672 = fmul fast float %2671, %2563
  %2673 = fadd fast float %2672, %2549
  br label %2727

; <label>:2674                                    ; preds = %2562
  %2675 = and i32 %2565, 134217728
  %2676 = icmp eq i32 %2675, 0
  br i1 %2676, label %2711, label %2677

; <label>:2677                                    ; preds = %2674
  %2678 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2679 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2680 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2681 = fadd fast float %2678, -5.000000e-01
  %2682 = fadd fast float %2679, -5.000000e-01
  %2683 = fadd fast float %2680, -5.000000e-01
  %2684 = fmul fast float %2681, %2563
  %2685 = fmul fast float %2682, %2563
  %2686 = fmul fast float %2683, %2563
  %2687 = fadd fast float %2684, 5.000000e-01
  %2688 = fadd fast float %2685, 5.000000e-01
  %2689 = fadd fast float %2686, 5.000000e-01
  %2690 = call float @dx.op.unary.f32(i32 24, float %2538)  ; Sqrt(value)
  %2691 = call float @dx.op.unary.f32(i32 24, float %2539)  ; Sqrt(value)
  %2692 = call float @dx.op.unary.f32(i32 24, float %2540)  ; Sqrt(value)
  %2693 = fmul fast float %2687, 2.000000e+00
  %2694 = fsub fast float 1.000000e+00, %2693
  %2695 = fmul fast float %2694, %2690
  %2696 = fadd fast float %2695, %2693
  %2697 = fmul fast float %2696, %2690
  %2698 = fmul fast float %2688, 2.000000e+00
  %2699 = fsub fast float 1.000000e+00, %2698
  %2700 = fmul fast float %2699, %2691
  %2701 = fadd fast float %2700, %2698
  %2702 = fmul fast float %2701, %2691
  %2703 = fmul fast float %2689, 2.000000e+00
  %2704 = fsub fast float 1.000000e+00, %2703
  %2705 = fmul fast float %2704, %2692
  %2706 = fadd fast float %2705, %2703
  %2707 = fmul fast float %2706, %2692
  %2708 = fmul fast float %2697, %2697
  %2709 = fmul fast float %2702, %2702
  %2710 = fmul fast float %2707, %2707
  br label %2727

; <label>:2711                                    ; preds = %2674
  %2712 = fmul fast float %333, %333
  %2713 = fmul fast float %337, %337
  %2714 = fmul fast float %341, %341
  %2715 = fadd fast float %2712, -1.000000e+00
  %2716 = fadd fast float %2713, -1.000000e+00
  %2717 = fadd fast float %2714, -1.000000e+00
  %2718 = fmul fast float %2563, %2715
  %2719 = fmul fast float %2563, %2716
  %2720 = fmul fast float %2563, %2717
  %2721 = fadd fast float %2718, 1.000000e+00
  %2722 = fadd fast float %2719, 1.000000e+00
  %2723 = fadd fast float %2720, 1.000000e+00
  %2724 = fmul fast float %2721, %2538
  %2725 = fmul fast float %2722, %2539
  %2726 = fmul fast float %2723, %2540
  br label %2727

; <label>:2727                                    ; preds = %2711, %2677, %2568, %2524
  %2728 = phi float [ %2673, %2568 ], [ %2549, %2677 ], [ %2549, %2711 ], [ 0x3FA23C0BE0000000, %2524 ]
  %2729 = phi float [ %2665, %2568 ], [ %2708, %2677 ], [ %2724, %2711 ], [ 1.000000e+00, %2524 ]
  %2730 = phi float [ %2666, %2568 ], [ %2709, %2677 ], [ %2725, %2711 ], [ 1.000000e+00, %2524 ]
  %2731 = phi float [ %2667, %2568 ], [ %2710, %2677 ], [ %2726, %2711 ], [ 1.000000e+00, %2524 ]
  %2732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.i32 %2732, 1
  %2734 = and i32 %2733, 1
  %2735 = icmp ne i32 %2734, 0
  %2736 = add i32 %54, 356
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 32
  %2740 = icmp ne i32 %2739, 0
  %2741 = and i1 %2735, %2740
  %2742 = select i1 %2741, float 1.000000e+00, float %2729
  %2743 = select i1 %2741, float 0x3FD3333340000000, float %2730
  %2744 = select i1 %2741, float 0x3FD3333340000000, float %2731
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = and i32 %2746, 32
  %2748 = icmp eq i32 %2747, 0
  br i1 %2748, label %2821, label %2749

; <label>:2749                                    ; preds = %2727
  %2750 = add i32 %54, 124
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = add i32 %54, 384
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = add i32 %2755, 0
  %2757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2757, %dx.types.Handle %91, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.ResRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.ResRet.f32 %2758, 2
  %2762 = extractvalue %dx.types.ResRet.f32 %2758, 3
  %2763 = and i32 %2752, 255
  %2764 = uitofp i32 %2763 to float
  %2765 = lshr i32 %2752, 8
  %2766 = and i32 %2765, 255
  %2767 = uitofp i32 %2766 to float
  %2768 = lshr i32 %2752, 16
  %2769 = and i32 %2768, 255
  %2770 = uitofp i32 %2769 to float
  %2771 = fmul fast float %2770, 0x3F70101000000000
  %2772 = fmul fast float %2759, %2764
  %2773 = fadd fast float %2772, %2767
  %2774 = fmul fast float %2773, 0x3F70101000000000
  %2775 = fadd fast float %2760, -5.000000e-01
  %2776 = fadd fast float %2762, -5.000000e-01
  %2777 = fmul fast float %2775, %2771
  %2778 = fmul fast float %2776, %2771
  %2779 = fadd fast float %2777, 5.000000e-01
  %2780 = fadd fast float %2778, 5.000000e-01
  %2781 = fmul fast float %2779, 2.000000e+00
  %2782 = fadd fast float %2781, -1.000000e+00
  %2783 = fmul fast float %2780, 2.000000e+00
  %2784 = fadd fast float %2783, -1.000000e+00
  %2785 = fadd fast float %2782, %2784
  %2786 = fmul fast float %2785, 5.000000e-01
  %2787 = fsub fast float %2782, %2784
  %2788 = fmul fast float %2787, 5.000000e-01
  %2789 = call float @dx.op.unary.f32(i32 6, float %2786)  ; FAbs(value)
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = call float @dx.op.unary.f32(i32 6, float %2788)  ; FAbs(value)
  %2792 = fsub fast float %2790, %2791
  %2793 = call float @dx.op.dot3.f32(i32 55, float %2786, float %2788, float %2792, float %2786, float %2788, float %2792)  ; Dot3(ax,ay,az,bx,by,bz)
  %2794 = call float @dx.op.unary.f32(i32 25, float %2793)  ; Rsqrt(value)
  %2795 = fmul fast float %2786, %2794
  %2796 = fmul fast float %2788, %2794
  %2797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2798 = extractvalue %dx.types.ResRet.i32 %2797, 0
  %2799 = and i32 %2798, 67108864
  %2800 = icmp eq i32 %2799, 0
  br i1 %2800, label %2817, label %2801

; <label>:2801                                    ; preds = %2749
  %2802 = add i32 %54, 312
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = and i32 %2804, 65535
  %2806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2805)  ; LegacyF16ToF32(value)
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = and i32 %2808, 65535
  %2810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2809)  ; LegacyF16ToF32(value)
  %2811 = lshr i32 %2804, 16
  %2812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2811)  ; LegacyF16ToF32(value)
  %2813 = fsub fast float %2774, %2812
  %2814 = fmul fast float %2813, %2806
  %2815 = fadd fast float %2814, %2810
  %2816 = call float @dx.op.unary.f32(i32 7, float %2815)  ; Saturate(value)
  br label %2817

; <label>:2817                                    ; preds = %2801, %2749
  %2818 = phi float [ %2816, %2801 ], [ %2774, %2749 ]
  %2819 = call float @dx.op.dot2.f32(i32 54, float %2795, float %2796, float %2238, float %2239)  ; Dot2(ax,ay,bx,by)
  %2820 = call float @dx.op.dot2.f32(i32 54, float %2795, float %2796, float %2240, float %2241)  ; Dot2(ax,ay,bx,by)
  br label %2821

; <label>:2821                                    ; preds = %2817, %2727
  %2822 = phi float [ %2818, %2817 ], [ 0x3FD6666660000000, %2727 ]
  %2823 = phi float [ %2819, %2817 ], [ 0.000000e+00, %2727 ]
  %2824 = phi float [ %2820, %2817 ], [ 0.000000e+00, %2727 ]
  %2825 = phi float [ %2761, %2817 ], [ 1.000000e+00, %2727 ]
  %2826 = add i32 %54, 192
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = lshr i32 %2828, 22
  %2830 = shl nuw nsw i32 %2829, 5
  %2831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2830)  ; LegacyF16ToF32(value)
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = and i32 %2833, 64
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %2869, label %2836

; <label>:2836                                    ; preds = %2821
  %2837 = add i32 %54, 400
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = add i32 %2839, 0
  %2841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = and i32 %2843, 131072
  %2845 = icmp eq i32 %2844, 0
  %2846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2841, %dx.types.Handle %91, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.ResRet.f32 %2846, 2
  %2850 = fmul fast float %2847, %321
  %2851 = fmul fast float %2848, %324
  %2852 = fmul fast float %2849, %327
  br i1 %2845, label %2859, label %2853

; <label>:2853                                    ; preds = %2836
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = fmul fast float %2855, %2850
  %2857 = fmul fast float %2855, %2851
  %2858 = fmul fast float %2855, %2852
  br label %2859

; <label>:2859                                    ; preds = %2853, %2836
  %2860 = phi float [ %2856, %2853 ], [ %2850, %2836 ]
  %2861 = phi float [ %2857, %2853 ], [ %2851, %2836 ]
  %2862 = phi float [ %2858, %2853 ], [ %2852, %2836 ]
  %2863 = fmul fast float %2860, %2831
  %2864 = select i1 %220, float %2863, float %2860
  %2865 = call float @dx.op.dot3.f32(i32 55, float %2864, float %2861, float %2862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2866 = select i1 %220, float 0.000000e+00, float %2860
  %2867 = select i1 %220, float %2865, float %2861
  %2868 = select i1 %220, float 0.000000e+00, float %2862
  br label %2869

; <label>:2869                                    ; preds = %2859, %2821
  %2870 = phi float [ %2866, %2859 ], [ 0.000000e+00, %2821 ]
  %2871 = phi float [ %2867, %2859 ], [ 0.000000e+00, %2821 ]
  %2872 = phi float [ %2868, %2859 ], [ 0.000000e+00, %2821 ]
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = and i32 %2874, 1024
  %2876 = icmp eq i32 %2875, 0
  br i1 %2876, label %2907, label %2877

; <label>:2877                                    ; preds = %2869
  %2878 = add i32 %54, 184
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = and i32 %2880, 255
  %2882 = uitofp i32 %2881 to float
  %2883 = fmul fast float %2882, 0x3F70101020000000
  %2884 = lshr i32 %2880, 8
  %2885 = and i32 %2884, 255
  %2886 = uitofp i32 %2885 to float
  %2887 = fmul fast float %2886, 0x3F70101020000000
  %2888 = lshr i32 %2880, 16
  %2889 = and i32 %2888, 255
  %2890 = uitofp i32 %2889 to float
  %2891 = fmul fast float %2890, 0x3F70101020000000
  %2892 = fmul fast float %2883, %2883
  %2893 = fmul fast float %2887, %2887
  %2894 = fmul fast float %2891, %2891
  %2895 = add i32 %54, 464
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = add i32 %2897, 0
  %2899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2898, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2899, %dx.types.Handle %92, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2901 = extractvalue %dx.types.ResRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.ResRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.ResRet.f32 %2900, 2
  %2904 = fmul fast float %2892, %2901
  %2905 = fmul fast float %2893, %2902
  %2906 = fmul fast float %2894, %2903
  br label %2907

; <label>:2907                                    ; preds = %2877, %2869
  %2908 = phi float [ %2904, %2877 ], [ 0.000000e+00, %2869 ]
  %2909 = phi float [ %2905, %2877 ], [ 0.000000e+00, %2869 ]
  %2910 = phi float [ %2906, %2877 ], [ 0.000000e+00, %2869 ]
  %2911 = fcmp fast ogt float %2908, 0.000000e+00
  %2912 = fcmp fast ogt float %2909, 0.000000e+00
  %2913 = fcmp fast ogt float %2910, 0.000000e+00
  %2914 = call float @dx.op.unary.f32(i32 23, float %2908)  ; Log(value)
  %2915 = call float @dx.op.unary.f32(i32 23, float %2909)  ; Log(value)
  %2916 = call float @dx.op.unary.f32(i32 23, float %2910)  ; Log(value)
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = lshr i32 %2918, 7
  %2920 = and i32 %2919, 32752
  %2921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2920)  ; LegacyF16ToF32(value)
  %2922 = fmul fast float %2914, 0xBFE62E4300000000
  %2923 = fmul fast float %2922, %2921
  %2924 = fmul fast float %2915, 0xBFE62E4300000000
  %2925 = fmul fast float %2924, %2921
  %2926 = fmul fast float %2916, 0xBFE62E4300000000
  %2927 = fmul fast float %2926, %2921
  %2928 = select i1 %2911, float %2923, float 1.270000e+02
  %2929 = select i1 %2912, float %2925, float 1.270000e+02
  %2930 = select i1 %2913, float %2927, float 1.270000e+02
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %2932, 10240
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %2955, label %2935

; <label>:2935                                    ; preds = %2907
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = and i32 %2937, 2048
  %2939 = icmp eq i32 %2938, 0
  br i1 %2939, label %2955, label %2940

; <label>:2940                                    ; preds = %2935
  %2941 = add i32 %54, 480
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = add i32 %2943, 0
  %2945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2944, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2946 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2945, %dx.types.Handle %92, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2947 = extractvalue %dx.types.ResRet.f32 %2946, 3
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = shl i32 %2949, 4
  %2951 = and i32 %2950, 32752
  %2952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2951)  ; LegacyF16ToF32(value)
  %2953 = fmul fast float %2952, %2947
  %2954 = call float @dx.op.binary.f32(i32 35, float %2953, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2955

; <label>:2955                                    ; preds = %2940, %2935, %2907
  %2956 = phi float [ %2954, %2940 ], [ 0x3F70101020000000, %2935 ], [ 0x3F70101020000000, %2907 ]
  %2957 = add i32 %54, 128
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %2959, 255
  %2961 = uitofp i32 %2960 to float
  %2962 = lshr i32 %2959, 8
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = call float @dx.op.dot3.f32(i32 55, float %2742, float %2743, float %2744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = fmul fast float %2964, %2965
  %2967 = fadd fast float %2966, %2961
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  br i1 %2226, label %2970, label %3005

; <label>:2970                                    ; preds = %2955
  %2971 = fmul fast float %2956, 2.000000e+00
  %2972 = fcmp fast olt float %2928, 1.270000e+02
  %2973 = fcmp fast olt float %2929, 1.270000e+02
  %2974 = fcmp fast olt float %2930, 1.270000e+02
  %2975 = fmul fast float %2928, 0xBFF7154760000000
  %2976 = fmul fast float %2975, %2971
  %2977 = fmul fast float %2929, 0xBFF7154760000000
  %2978 = fmul fast float %2977, %2971
  %2979 = fmul fast float %2930, 0xBFF7154760000000
  %2980 = fmul fast float %2979, %2971
  %2981 = call float @dx.op.unary.f32(i32 21, float %2976)  ; Exp(value)
  %2982 = call float @dx.op.unary.f32(i32 21, float %2978)  ; Exp(value)
  %2983 = call float @dx.op.unary.f32(i32 21, float %2980)  ; Exp(value)
  %2984 = call float @dx.op.unary.f32(i32 7, float %2981)  ; Saturate(value)
  %2985 = call float @dx.op.unary.f32(i32 7, float %2982)  ; Saturate(value)
  %2986 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  %2987 = fadd fast float %2984, -1.000000e+00
  %2988 = select i1 %2972, float %2987, float -1.000000e+00
  %2989 = fadd fast float %2985, -1.000000e+00
  %2990 = select i1 %2973, float %2989, float -1.000000e+00
  %2991 = fadd fast float %2986, -1.000000e+00
  %2992 = select i1 %2974, float %2991, float -1.000000e+00
  %2993 = fmul fast float %2988, %2522
  %2994 = fmul fast float %2990, %2522
  %2995 = fmul fast float %2992, %2522
  %2996 = fadd fast float %2993, 1.000000e+00
  %2997 = fadd fast float %2994, 1.000000e+00
  %2998 = fadd fast float %2995, 1.000000e+00
  %2999 = fmul fast float %2996, %2211
  %3000 = fmul fast float %2997, %2212
  %3001 = fmul fast float %2998, %2213
  %3002 = fmul fast float %2996, %2214
  %3003 = fmul fast float %2997, %2215
  %3004 = fmul fast float %2998, %2216
  br label %3005

; <label>:3005                                    ; preds = %2970, %2955
  %3006 = phi float [ %2999, %2970 ], [ %2211, %2955 ]
  %3007 = phi float [ %3000, %2970 ], [ %2212, %2955 ]
  %3008 = phi float [ %3001, %2970 ], [ %2213, %2955 ]
  %3009 = phi float [ %3002, %2970 ], [ %2214, %2955 ]
  %3010 = phi float [ %3003, %2970 ], [ %2215, %2955 ]
  %3011 = phi float [ %3004, %2970 ], [ %2216, %2955 ]
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 3
  %3015 = icmp eq i32 %3014, 3
  br i1 %3015, label %3094, label %3016

; <label>:3016                                    ; preds = %3005
  %3017 = and i32 %3013, 16
  %3018 = icmp ne i32 %3017, 0
  %3019 = select i1 %3018, float %2522, float 0.000000e+00
  %3020 = icmp eq i32 %3014, 0
  br i1 %3020, label %3021, label %3049

; <label>:3021                                    ; preds = %3016
  %3022 = and i32 %3013, 64
  %3023 = icmp ne i32 %3022, 0
  %3024 = select i1 %3023, float %2522, float 0.000000e+00
  %3025 = fsub fast float %2742, %3006
  %3026 = fsub fast float %2743, %3007
  %3027 = fsub fast float %2744, %3008
  %3028 = fmul fast float %3019, %3025
  %3029 = fmul fast float %3019, %3026
  %3030 = fmul fast float %3019, %3027
  %3031 = fadd fast float %3028, %3006
  %3032 = fadd fast float %3029, %3007
  %3033 = fadd fast float %3030, %3008
  %3034 = fsub fast float %2728, %2220
  %3035 = fmul fast float %3019, %3034
  %3036 = fadd fast float %3035, %2220
  %3037 = fsub fast float %2870, %3009
  %3038 = fsub fast float %2871, %3010
  %3039 = fsub fast float %2872, %3011
  %3040 = fmul fast float %3024, %3037
  %3041 = fmul fast float %3024, %3038
  %3042 = fmul fast float %3024, %3039
  %3043 = fadd fast float %3040, %3009
  %3044 = fadd fast float %3041, %3010
  %3045 = fadd fast float %3042, %3011
  %3046 = fsub fast float %2969, %2224
  %3047 = fmul fast float %3019, %3046
  %3048 = fadd fast float %3047, %2224
  br label %3094

; <label>:3049                                    ; preds = %3016
  %3050 = icmp eq i32 %3014, 1
  br i1 %3050, label %3051, label %3064

; <label>:3051                                    ; preds = %3049
  %3052 = fadd fast float %2742, -1.000000e+00
  %3053 = fadd fast float %2743, -1.000000e+00
  %3054 = fadd fast float %2744, -1.000000e+00
  %3055 = fmul fast float %3019, %3052
  %3056 = fmul fast float %3019, %3053
  %3057 = fmul fast float %3019, %3054
  %3058 = fadd fast float %3055, 1.000000e+00
  %3059 = fadd fast float %3056, 1.000000e+00
  %3060 = fadd fast float %3057, 1.000000e+00
  %3061 = fmul fast float %3058, %3006
  %3062 = fmul fast float %3059, %3007
  %3063 = fmul fast float %3060, %3008
  br label %3094

; <label>:3064                                    ; preds = %3049
  %3065 = icmp eq i32 %3014, 2
  br i1 %3065, label %3066, label %3094

; <label>:3066                                    ; preds = %3064
  %3067 = call float @dx.op.unary.f32(i32 24, float %2742)  ; Sqrt(value)
  %3068 = call float @dx.op.unary.f32(i32 24, float %2743)  ; Sqrt(value)
  %3069 = call float @dx.op.unary.f32(i32 24, float %2744)  ; Sqrt(value)
  %3070 = fadd fast float %3067, -5.000000e-01
  %3071 = fadd fast float %3068, -5.000000e-01
  %3072 = fadd fast float %3069, -5.000000e-01
  %3073 = fmul fast float %3070, %3019
  %3074 = fmul fast float %3071, %3019
  %3075 = fmul fast float %3072, %3019
  %3076 = fadd fast float %3073, 5.000000e-01
  %3077 = fadd fast float %3074, 5.000000e-01
  %3078 = fadd fast float %3075, 5.000000e-01
  %3079 = fmul fast float %3076, 2.000000e+00
  %3080 = fsub fast float 1.000000e+00, %3079
  %3081 = fmul fast float %3080, %3006
  %3082 = fadd fast float %3081, %3079
  %3083 = fmul fast float %3082, %3006
  %3084 = fmul fast float %3077, 2.000000e+00
  %3085 = fsub fast float 1.000000e+00, %3084
  %3086 = fmul fast float %3085, %3007
  %3087 = fadd fast float %3086, %3084
  %3088 = fmul fast float %3087, %3007
  %3089 = fmul fast float %3078, 2.000000e+00
  %3090 = fsub fast float 1.000000e+00, %3089
  %3091 = fmul fast float %3090, %3008
  %3092 = fadd fast float %3091, %3089
  %3093 = fmul fast float %3092, %3008
  br label %3094

; <label>:3094                                    ; preds = %3066, %3064, %3051, %3021, %3005
  %3095 = phi float [ %3006, %3005 ], [ %3083, %3066 ], [ %3006, %3064 ], [ %3061, %3051 ], [ %3031, %3021 ]
  %3096 = phi float [ %3007, %3005 ], [ %3088, %3066 ], [ %3007, %3064 ], [ %3062, %3051 ], [ %3032, %3021 ]
  %3097 = phi float [ %3008, %3005 ], [ %3093, %3066 ], [ %3008, %3064 ], [ %3063, %3051 ], [ %3033, %3021 ]
  %3098 = phi float [ %3009, %3005 ], [ %3009, %3066 ], [ %3009, %3064 ], [ %3009, %3051 ], [ %3043, %3021 ]
  %3099 = phi float [ %3010, %3005 ], [ %3010, %3066 ], [ %3010, %3064 ], [ %3010, %3051 ], [ %3044, %3021 ]
  %3100 = phi float [ %3011, %3005 ], [ %3011, %3066 ], [ %3011, %3064 ], [ %3011, %3051 ], [ %3045, %3021 ]
  %3101 = phi float [ %2220, %3005 ], [ %2220, %3066 ], [ %2220, %3064 ], [ %2220, %3051 ], [ %3036, %3021 ]
  %3102 = phi float [ %2224, %3005 ], [ %2224, %3066 ], [ %2224, %3064 ], [ %2224, %3051 ], [ %3048, %3021 ]
  %3103 = and i32 %3013, 12
  %3104 = icmp eq i32 %3103, 12
  br i1 %3104, label %3211, label %3105

; <label>:3105                                    ; preds = %3094
  %3106 = and i32 %3013, 2097184
  %3107 = icmp eq i32 %3106, 2097184
  %3108 = select i1 %3107, float %2522, float 0.000000e+00
  %3109 = and i32 %3013, 4194336
  %3110 = icmp eq i32 %3109, 4194336
  %3111 = select i1 %3110, float %2522, float 0.000000e+00
  %3112 = and i32 %3013, 8388640
  %3113 = icmp eq i32 %3112, 8388640
  %3114 = select i1 %3113, float %2522, float 0.000000e+00
  %3115 = and i32 %3013, 1024
  %3116 = icmp ne i32 %3115, 0
  %3117 = select i1 %3116, float %2522, float 0.000000e+00
  %3118 = and i32 %3013, 2048
  %3119 = icmp ne i32 %3118, 0
  %3120 = select i1 %3119, float %2522, float 0.000000e+00
  %3121 = icmp eq i32 %3103, 0
  br i1 %3121, label %3122, label %3147

; <label>:3122                                    ; preds = %3105
  %3123 = fsub fast float %2823, %2209
  %3124 = fsub fast float %2824, %2210
  %3125 = fmul fast float %3108, %3123
  %3126 = fmul fast float %3108, %3124
  %3127 = fadd fast float %3125, %2209
  %3128 = fadd fast float %3126, %2210
  %3129 = fsub fast float %2825, %2222
  %3130 = fmul fast float %3111, %3129
  %3131 = fadd fast float %3130, %2222
  %3132 = fsub fast float %2822, %2221
  %3133 = fmul fast float %3114, %3132
  %3134 = fadd fast float %3133, %2221
  %3135 = fsub fast float %2928, %2217
  %3136 = fsub fast float %2929, %2218
  %3137 = fsub fast float %2930, %2219
  %3138 = fmul fast float %3117, %3135
  %3139 = fmul fast float %3117, %3136
  %3140 = fmul fast float %3117, %3137
  %3141 = fadd fast float %3138, %2217
  %3142 = fadd fast float %3139, %2218
  %3143 = fadd fast float %3140, %2219
  %3144 = fsub fast float %2956, %2223
  %3145 = fmul fast float %3120, %3144
  %3146 = fadd fast float %3145, %2223
  br label %3211

; <label>:3147                                    ; preds = %3105
  %3148 = icmp eq i32 %3103, 4
  br i1 %3148, label %3149, label %3189

; <label>:3149                                    ; preds = %3147
  %3150 = fmul fast float %3108, %2823
  %3151 = fmul fast float %3108, %2824
  %3152 = fadd fast float %3150, %2209
  %3153 = fadd fast float %3151, %2210
  %3154 = call float @dx.op.binary.f32(i32 36, float %2222, float %2825)  ; FMin(a,b)
  %3155 = fsub fast float %3154, %2222
  %3156 = fmul fast float %3155, %3111
  %3157 = fadd fast float %3156, %2222
  %3158 = fadd fast float %2822, %2221
  %3159 = fmul fast float %3158, 0x3FF337FAE0000000
  %3160 = fmul fast float %2221, %2221
  %3161 = fmul fast float %2822, %2822
  %3162 = fadd fast float %3161, %3160
  %3163 = fmul fast float %3162, 0x3FE5152B00000000
  %3164 = fmul fast float %2221, 0xBFCC1F85E0000000
  %3165 = fmul fast float %3164, %2822
  %3166 = fadd fast float %3165, 0xBFE1363700000000
  %3167 = fadd fast float %3166, %3159
  %3168 = fsub fast float %3167, %3163
  %3169 = fmul fast float %3158, 0x3FBA6F0D00000000
  %3170 = fmul fast float %3162, 0x3FD0432880000000
  %3171 = fmul fast float %2221, 0xBFEF110800000000
  %3172 = fmul fast float %3171, %2822
  %3173 = fadd fast float %3172, 1.000000e+00
  %3174 = fsub fast float %3173, %3169
  %3175 = fadd fast float %3174, %3170
  %3176 = fdiv fast float %3168, %3175
  %3177 = call float @dx.op.unary.f32(i32 7, float %3176)  ; Saturate(value)
  %3178 = fsub fast float %3177, %2221
  %3179 = fmul fast float %3178, %3114
  %3180 = fadd fast float %3179, %2221
  %3181 = fmul fast float %3117, %2928
  %3182 = fmul fast float %3117, %2929
  %3183 = fmul fast float %3117, %2930
  %3184 = fadd fast float %3181, %2217
  %3185 = fadd fast float %3182, %2218
  %3186 = fadd fast float %3183, %2219
  %3187 = fmul fast float %3120, %2956
  %3188 = fadd fast float %3187, %2223
  br label %3211

; <label>:3189                                    ; preds = %3147
  %3190 = icmp eq i32 %3103, 8
  br i1 %3190, label %3191, label %3211

; <label>:3191                                    ; preds = %3189
  %3192 = fmul fast float %3108, %2823
  %3193 = fmul fast float %3108, %2824
  %3194 = fadd fast float %3192, %2209
  %3195 = fadd fast float %3193, %2210
  %3196 = call float @dx.op.binary.f32(i32 36, float %2222, float %2825)  ; FMin(a,b)
  %3197 = fsub fast float %3196, %2222
  %3198 = fmul fast float %3197, %3111
  %3199 = fadd fast float %3198, %2222
  %3200 = fsub fast float %2822, %2221
  %3201 = fmul fast float %3114, %3200
  %3202 = fadd fast float %3201, %2221
  %3203 = fmul fast float %3117, %2928
  %3204 = fmul fast float %3117, %2929
  %3205 = fmul fast float %3117, %2930
  %3206 = fadd fast float %3203, %2217
  %3207 = fadd fast float %3204, %2218
  %3208 = fadd fast float %3205, %2219
  %3209 = fmul fast float %3120, %2956
  %3210 = fadd fast float %3209, %2223
  br label %3211

; <label>:3211                                    ; preds = %3191, %3189, %3149, %3122, %3094, %2521, %2225, %2208
  %3212 = phi float [ %2209, %3094 ], [ %2209, %2521 ], [ %2209, %2208 ], [ %3194, %3191 ], [ %2209, %3189 ], [ %3152, %3149 ], [ %3127, %3122 ], [ %2209, %2225 ]
  %3213 = phi float [ %2210, %3094 ], [ %2210, %2521 ], [ %2210, %2208 ], [ %3195, %3191 ], [ %2210, %3189 ], [ %3153, %3149 ], [ %3128, %3122 ], [ %2210, %2225 ]
  %3214 = phi float [ %3095, %3094 ], [ %2211, %2521 ], [ %2211, %2208 ], [ %3095, %3191 ], [ %3095, %3189 ], [ %3095, %3149 ], [ %3095, %3122 ], [ %2211, %2225 ]
  %3215 = phi float [ %3096, %3094 ], [ %2212, %2521 ], [ %2212, %2208 ], [ %3096, %3191 ], [ %3096, %3189 ], [ %3096, %3149 ], [ %3096, %3122 ], [ %2212, %2225 ]
  %3216 = phi float [ %3097, %3094 ], [ %2213, %2521 ], [ %2213, %2208 ], [ %3097, %3191 ], [ %3097, %3189 ], [ %3097, %3149 ], [ %3097, %3122 ], [ %2213, %2225 ]
  %3217 = phi float [ %3098, %3094 ], [ %2214, %2521 ], [ %2214, %2208 ], [ %3098, %3191 ], [ %3098, %3189 ], [ %3098, %3149 ], [ %3098, %3122 ], [ %2214, %2225 ]
  %3218 = phi float [ %3099, %3094 ], [ %2215, %2521 ], [ %2215, %2208 ], [ %3099, %3191 ], [ %3099, %3189 ], [ %3099, %3149 ], [ %3099, %3122 ], [ %2215, %2225 ]
  %3219 = phi float [ %3100, %3094 ], [ %2216, %2521 ], [ %2216, %2208 ], [ %3100, %3191 ], [ %3100, %3189 ], [ %3100, %3149 ], [ %3100, %3122 ], [ %2216, %2225 ]
  %3220 = phi float [ %2217, %3094 ], [ %2217, %2521 ], [ %2217, %2208 ], [ %3206, %3191 ], [ %2217, %3189 ], [ %3184, %3149 ], [ %3141, %3122 ], [ %2217, %2225 ]
  %3221 = phi float [ %2218, %3094 ], [ %2218, %2521 ], [ %2218, %2208 ], [ %3207, %3191 ], [ %2218, %3189 ], [ %3185, %3149 ], [ %3142, %3122 ], [ %2218, %2225 ]
  %3222 = phi float [ %2219, %3094 ], [ %2219, %2521 ], [ %2219, %2208 ], [ %3208, %3191 ], [ %2219, %3189 ], [ %3186, %3149 ], [ %3143, %3122 ], [ %2219, %2225 ]
  %3223 = phi float [ %3101, %3094 ], [ %2220, %2521 ], [ %2220, %2208 ], [ %3101, %3191 ], [ %3101, %3189 ], [ %3101, %3149 ], [ %3101, %3122 ], [ %2220, %2225 ]
  %3224 = phi float [ %2221, %3094 ], [ %2221, %2521 ], [ %2221, %2208 ], [ %3202, %3191 ], [ %2221, %3189 ], [ %3180, %3149 ], [ %3134, %3122 ], [ %2221, %2225 ]
  %3225 = phi float [ %2222, %3094 ], [ %2222, %2521 ], [ %2222, %2208 ], [ %3199, %3191 ], [ %2222, %3189 ], [ %3157, %3149 ], [ %3131, %3122 ], [ %2222, %2225 ]
  %3226 = phi float [ %2223, %3094 ], [ %2223, %2521 ], [ %2223, %2208 ], [ %3210, %3191 ], [ %2223, %3189 ], [ %3188, %3149 ], [ %3146, %3122 ], [ %2223, %2225 ]
  %3227 = phi float [ %3102, %3094 ], [ %2224, %2521 ], [ %2224, %2208 ], [ %3102, %3191 ], [ %3102, %3189 ], [ %3102, %3149 ], [ %3102, %3122 ], [ %2224, %2225 ]
  br i1 %408, label %4214, label %3228

; <label>:3228                                    ; preds = %3211
  %3229 = icmp ult i32 %462, 4
  %3230 = add i32 %54, 72
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = add i32 %54, 76
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = or i32 %3235, %3232
  %3237 = icmp eq i32 %3236, 0
  br i1 %3237, label %4214, label %3238

; <label>:3238                                    ; preds = %3228
  %3239 = and i32 %3232, 262144
  %3240 = icmp ne i32 %3239, 0
  %3241 = select i1 %3240, float %57, float 1.000000e+00
  %3242 = select i1 %3240, float %58, float 0.000000e+00
  %3243 = select i1 %3240, float %59, float 0.000000e+00
  %3244 = select i1 %3240, float %60, float 1.000000e+00
  %3245 = select i1 %3240, float %61, float %77
  %3246 = select i1 %3240, float %62, float %78
  %3247 = add i32 %54, 332
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = lshr i32 %3249, 16
  %3251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3250)  ; LegacyF16ToF32(value)
  %3252 = fmul fast float %3251, 0x3F50624DE0000000
  %3253 = add i32 %54, 136
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = lshr i32 %3255, 16
  %3257 = and i32 %3256, 255
  %3258 = lshr i32 %3255, 24
  %3259 = add i32 %54, 340
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = and i32 %3261, 65535
  %3263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3262)  ; LegacyF16ToF32(value)
  %3264 = lshr i32 %3261, 16
  %3265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3264)  ; LegacyF16ToF32(value)
  %3266 = add i32 %54, 80
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = lshr i32 %3268, 22
  %3270 = shl nuw nsw i32 %3269, 5
  %3271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3270)  ; LegacyF16ToF32(value)
  %3272 = shl i32 %3268, 4
  %3273 = and i32 %3272, 32752
  %3274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3273)  ; LegacyF16ToF32(value)
  %3275 = lshr i32 %3268, 7
  %3276 = and i32 %3275, 32752
  %3277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3276)  ; LegacyF16ToF32(value)
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 3
  %3280 = fmul fast float %3279, 1.000000e+03
  %3281 = fmul fast float %398, %3280
  %3282 = call float @dx.op.unary.f32(i32 22, float %3281)  ; Frc(value)
  %3283 = fadd fast float %3282, %388
  %3284 = fmul fast float %399, %3280
  %3285 = call float @dx.op.unary.f32(i32 22, float %3284)  ; Frc(value)
  %3286 = fadd fast float %3285, %390
  %3287 = fmul fast float %3252, %3280
  %3288 = call float @dx.op.unary.f32(i32 22, float %3287)  ; Frc(value)
  %3289 = fmul fast float %3288, 0x401921FB60000000
  %3290 = fadd fast float %3289, %3271
  %3291 = call float @dx.op.unary.f32(i32 13, float %3290)  ; Sin(value)
  %3292 = call float @dx.op.unary.f32(i32 12, float %3290)  ; Cos(value)
  %3293 = fsub fast float -0.000000e+00, %3291
  %3294 = fadd fast float %3245, -5.000000e-01
  %3295 = fadd fast float %3246, -5.000000e-01
  %3296 = fmul fast float %3263, %3294
  %3297 = fmul fast float %3265, %3295
  %3298 = fadd fast float %3296, 5.000000e-01
  %3299 = fadd fast float %3297, 5.000000e-01
  %3300 = fmul fast float %3274, %3298
  %3301 = fmul fast float %3277, %3299
  %3302 = fmul fast float %3292, %3300
  %3303 = call float @dx.op.tertiary.f32(i32 46, float %3293, float %3301, float %3302)  ; FMad(a,b,c)
  %3304 = fmul fast float %3291, %3300
  %3305 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3301, float %3304)  ; FMad(a,b,c)
  %3306 = fadd fast float %3283, %3303
  %3307 = fadd fast float %3286, %3305
  %3308 = icmp ugt i32 %3257, 1
  %3309 = icmp ugt i32 %3255, 33554431
  %3310 = or i1 %3309, %3308
  br i1 %3310, label %3311, label %3336

; <label>:3311                                    ; preds = %3238
  %3312 = add i32 %54, 276
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = lshr i32 %3314, 16
  %3316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3315)  ; LegacyF16ToF32(value)
  %3317 = fmul fast float %3279, %3316
  %3318 = call float @dx.op.unary.f32(i32 22, float %3317)  ; Frc(value)
  %3319 = mul nuw nsw i32 %3257, %3258
  %3320 = uitofp i32 %3319 to float
  %3321 = fmul fast float %3318, %3320
  %3322 = call float @dx.op.unary.f32(i32 27, float %3321)  ; Round_ni(value)
  %3323 = fptoui float %3322 to i32
  %3324 = urem i32 %3323, %3257
  %3325 = udiv i32 %3323, %3258
  %3326 = call float @dx.op.unary.f32(i32 22, float %3306)  ; Frc(value)
  %3327 = call float @dx.op.unary.f32(i32 22, float %3307)  ; Frc(value)
  %3328 = uitofp i32 %3324 to float
  %3329 = uitofp i32 %3325 to float
  %3330 = fadd fast float %3326, %3328
  %3331 = fadd fast float %3327, %3329
  %3332 = uitofp i32 %3257 to float
  %3333 = uitofp i32 %3258 to float
  %3334 = fdiv fast float %3330, %3332
  %3335 = fdiv fast float %3331, %3333
  br label %3336

; <label>:3336                                    ; preds = %3311, %3238
  %3337 = phi float [ %3334, %3311 ], [ %3306, %3238 ]
  %3338 = phi float [ %3335, %3311 ], [ %3307, %3238 ]
  %3339 = and i32 %3232, 16777216
  %3340 = icmp eq i32 %3339, 0
  br i1 %3340, label %3450, label %3341

; <label>:3341                                    ; preds = %3336
  %3342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.f32 %3342, 0
  %3344 = extractvalue %dx.types.CBufRet.f32 %3342, 1
  %3345 = extractvalue %dx.types.CBufRet.f32 %3342, 2
  %3346 = fadd fast float %3343, %158
  %3347 = fadd fast float %3344, %159
  %3348 = fadd fast float %3345, %160
  %3349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3350 = extractvalue %dx.types.CBufRet.f32 %3349, 0
  %3351 = call float @dx.op.unary.f32(i32 7, float %3350)  ; Saturate(value)
  %3352 = icmp eq i32 %55, 65535
  br i1 %3352, label %3447, label %3353

; <label>:3353                                    ; preds = %3341
  %3354 = lshr i32 %55, 1
  %3355 = shl i32 %3354, 2
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %55, 1
  %3359 = icmp ne i32 %3358, 0
  %3360 = lshr i32 %3357, 16
  %3361 = and i32 %3357, 65535
  %3362 = select i1 %3359, i32 %3360, i32 %3361
  %3363 = icmp eq i32 %3362, 65535
  br i1 %3363, label %3443, label %3364

; <label>:3364                                    ; preds = %3353
  %3365 = mul nuw nsw i32 %3362, 40
  %3366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.f32 %3366, 0
  %3368 = extractvalue %dx.types.ResRet.f32 %3366, 1
  %3369 = extractvalue %dx.types.ResRet.f32 %3366, 2
  %3370 = add nuw nsw i32 %3365, 12
  %3371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = add nuw nsw i32 %3365, 24
  %3376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.ResRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.ResRet.f32 %3376, 2
  %3380 = add nuw nsw i32 %3365, 36
  %3381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.f32 %3381, 0
  %3383 = fsub fast float %3346, %3367
  %3384 = fsub fast float %3347, %3368
  %3385 = fsub fast float %3348, %3369
  %3386 = fmul fast float %3382, %3383
  %3387 = fmul fast float %3382, %3384
  %3388 = fmul fast float %3382, %3385
  %3389 = call float @dx.op.unary.f32(i32 27, float %3386)  ; Round_ni(value)
  %3390 = call float @dx.op.unary.f32(i32 27, float %3387)  ; Round_ni(value)
  %3391 = call float @dx.op.unary.f32(i32 27, float %3388)  ; Round_ni(value)
  %3392 = fadd fast float %3389, 5.000000e-01
  %3393 = fadd fast float %3390, 5.000000e-01
  %3394 = fadd fast float %3391, 5.000000e-01
  %3395 = fmul fast float %3392, %3372
  %3396 = fmul fast float %3393, %3373
  %3397 = fmul fast float %3394, %3374
  %3398 = shl i32 %55, 2
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = add i32 %3400, 0
  %3402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3403 = call float @dx.op.unary.f32(i32 22, float %3395)  ; Frc(value)
  %3404 = call float @dx.op.unary.f32(i32 22, float %3396)  ; Frc(value)
  %3405 = call float @dx.op.unary.f32(i32 22, float %3397)  ; Frc(value)
  %3406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3402, %dx.types.Handle %49, float %3403, float %3404, float %3405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3407 = extractvalue %dx.types.ResRet.f32 %3406, 0
  %3408 = extractvalue %dx.types.ResRet.f32 %3406, 1
  %3409 = extractvalue %dx.types.ResRet.f32 %3406, 2
  %3410 = fmul fast float %3407, 1.023000e+03
  %3411 = fmul fast float %3408, 1.023000e+03
  %3412 = fmul fast float %3409, 1.023000e+03
  %3413 = fadd fast float %3410, 5.000000e-01
  %3414 = fadd fast float %3411, 5.000000e-01
  %3415 = fadd fast float %3412, 5.000000e-01
  %3416 = call float @dx.op.unary.f32(i32 27, float %3413)  ; Round_ni(value)
  %3417 = call float @dx.op.unary.f32(i32 27, float %3414)  ; Round_ni(value)
  %3418 = call float @dx.op.unary.f32(i32 27, float %3415)  ; Round_ni(value)
  %3419 = fsub fast float %3386, %3389
  %3420 = fsub fast float %3387, %3390
  %3421 = fsub fast float %3388, %3391
  %3422 = fmul fast float %3419, 7.500000e-01
  %3423 = fmul fast float %3420, 7.500000e-01
  %3424 = fmul fast float %3421, 7.500000e-01
  %3425 = fadd fast float %3389, 1.250000e-01
  %3426 = fadd fast float %3425, %3422
  %3427 = fadd fast float %3426, %3416
  %3428 = fadd fast float %3390, 1.250000e-01
  %3429 = fadd fast float %3428, %3423
  %3430 = fadd fast float %3429, %3417
  %3431 = fadd fast float %3391, 1.250000e-01
  %3432 = fadd fast float %3431, %3424
  %3433 = fadd fast float %3432, %3418
  %3434 = fmul fast float %3427, %3377
  %3435 = fmul fast float %3430, %3378
  %3436 = fmul fast float %3433, %3379
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = add i32 %3438, 0
  %3440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3440, %dx.types.Handle %47, float %3434, float %3435, float %3436, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3442 = extractvalue %dx.types.ResRet.f32 %3441, 0
  br label %3443

; <label>:3443                                    ; preds = %3364, %3353
  %3444 = phi float [ %3442, %3364 ], [ -1.000000e+00, %3353 ]
  %3445 = fadd fast float %3444, %3351
  %3446 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  br label %3447

; <label>:3447                                    ; preds = %3443, %3341
  %3448 = phi float [ %3446, %3443 ], [ %3351, %3341 ]
  %3449 = fmul fast float %3448, %457
  br label %3450

; <label>:3450                                    ; preds = %3447, %3336
  %3451 = phi float [ %3449, %3447 ], [ %457, %3336 ]
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = and i32 %3453, 256
  %3455 = icmp eq i32 %3454, 0
  br i1 %3455, label %3502, label %3456

; <label>:3456                                    ; preds = %3450
  %3457 = add i32 %54, 436
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = add i32 %3459, 0
  %3461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3461, %dx.types.Handle %92, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3463 = extractvalue %dx.types.ResRet.f32 %3462, 0
  %3464 = add i32 %54, 148
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = shl i32 %3466, 4
  %3468 = and i32 %3467, 32752
  %3469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3468)  ; LegacyF16ToF32(value)
  %3470 = lshr i32 %3466, 7
  %3471 = and i32 %3470, 32752
  %3472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3471)  ; LegacyF16ToF32(value)
  %3473 = fsub fast float 1.000000e+00, %3451
  %3474 = call float @dx.op.binary.f32(i32 35, float %3473, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3475 = bitcast float %3451 to i32
  %3476 = sitofp i32 %3475 to float
  %3477 = fadd fast float %3476, 0xC1CFBF8940000000
  %3478 = fmul fast float %3472, %3477
  %3479 = fadd fast float %3478, 0x41CFBF8940000000
  %3480 = fptosi float %3479 to i32
  %3481 = bitcast i32 %3480 to float
  %3482 = bitcast float %3474 to i32
  %3483 = sitofp i32 %3482 to float
  %3484 = fadd fast float %3483, 0xC1CFBF8940000000
  %3485 = fmul fast float %3484, %3472
  %3486 = fadd fast float %3485, 0x41CFBF8940000000
  %3487 = fptosi float %3486 to i32
  %3488 = bitcast i32 %3487 to float
  %3489 = fmul fast float %3481, %3469
  %3490 = fmul fast float %3488, %3469
  %3491 = fsub fast float %3474, %3489
  %3492 = fadd fast float %3490, %3474
  %3493 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3494 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3495 = fsub fast float %3463, %3493
  %3496 = fsub fast float %3494, %3493
  %3497 = bitcast float %3496 to i32
  %3498 = sub nsw i32 2129859010, %3497
  %3499 = bitcast i32 %3498 to float
  %3500 = fmul fast float %3499, %3495
  %3501 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  br label %3502

; <label>:3502                                    ; preds = %3456, %3450
  %3503 = phi float [ %3501, %3456 ], [ %3451, %3450 ]
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = and i32 %3505, 128
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3524, label %3508

; <label>:3508                                    ; preds = %3502
  %3509 = add i32 %54, 420
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = add i32 %3511, 0
  %3513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3513, %dx.types.Handle %92, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = and i32 %3517, 524288
  %3519 = icmp ne i32 %3518, 0
  %3520 = fcmp fast ogt float %3515, 0x3FE0101020000000
  %3521 = select i1 %3520, float 1.000000e+00, float 0.000000e+00
  %3522 = select i1 %3519, float %3521, float %3515
  %3523 = fmul fast float %3522, %3503
  br label %3524

; <label>:3524                                    ; preds = %3508, %3502
  %3525 = phi float [ %3523, %3508 ], [ %3503, %3502 ]
  %3526 = fcmp fast ult float %3525, 0x3F70101020000000
  br i1 %3526, label %4214, label %3527

; <label>:3527                                    ; preds = %3524
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 16
  %3531 = icmp eq i32 %3530, 0
  br i1 %3531, label %3730, label %3532

; <label>:3532                                    ; preds = %3527
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = add i32 %54, 372
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = add i32 %3537, 0
  %3539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3539, %dx.types.Handle %91, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 0
  %3542 = extractvalue %dx.types.ResRet.f32 %3540, 1
  %3543 = extractvalue %dx.types.ResRet.f32 %3540, 2
  %3544 = extractvalue %dx.types.ResRet.f32 %3540, 3
  %3545 = and i32 %3534, 255
  %3546 = uitofp i32 %3545 to float
  %3547 = lshr i32 %3534, 8
  %3548 = and i32 %3547, 255
  %3549 = uitofp i32 %3548 to float
  %3550 = fmul fast float %3544, %3546
  %3551 = fadd fast float %3550, %3549
  %3552 = fmul fast float %3551, 0x3F70101000000000
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = and i32 %3554, 512
  %3556 = icmp eq i32 %3555, 0
  br i1 %3556, label %3565, label %3557

; <label>:3557                                    ; preds = %3532
  %3558 = add i32 %54, 452
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3558, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = add i32 %3560, 0
  %3562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3563 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3562, %dx.types.Handle %92, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3564 = extractvalue %dx.types.ResRet.f32 %3563, 0
  br label %3565

; <label>:3565                                    ; preds = %3557, %3532
  %3566 = phi float [ %3564, %3557 ], [ 1.000000e+00, %3532 ]
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = and i32 %3568, 33554432
  %3570 = icmp eq i32 %3569, 0
  br i1 %3570, label %3677, label %3571

; <label>:3571                                    ; preds = %3565
  %3572 = add i32 %54, 272
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3572, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = and i32 %3574, 65535
  %3576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3575)  ; LegacyF16ToF32(value)
  %3577 = lshr i32 %3574, 16
  %3578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3577)  ; LegacyF16ToF32(value)
  %3579 = add i32 %54, 276
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = and i32 %3581, 65535
  %3583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3582)  ; LegacyF16ToF32(value)
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = lshr i32 %3585, 24
  %3587 = uitofp i32 %3586 to float
  %3588 = fmul fast float %3587, 0x3F70101020000000
  %3589 = and i32 %3585, 255
  %3590 = uitofp i32 %3589 to float
  %3591 = fmul fast float %3590, 0x3F70101020000000
  %3592 = lshr i32 %3585, 8
  %3593 = and i32 %3592, 255
  %3594 = uitofp i32 %3593 to float
  %3595 = fmul fast float %3594, 0x3F70101020000000
  %3596 = lshr i32 %3585, 16
  %3597 = and i32 %3596, 255
  %3598 = uitofp i32 %3597 to float
  %3599 = fmul fast float %3598, 0x3F70101020000000
  %3600 = add i32 %54, 268
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = lshr i32 %3602, 24
  %3604 = uitofp i32 %3603 to float
  %3605 = fmul fast float %3604, 0x3F70101020000000
  %3606 = and i32 %3602, 255
  %3607 = uitofp i32 %3606 to float
  %3608 = fmul fast float %3607, 0x3F70101020000000
  %3609 = lshr i32 %3602, 8
  %3610 = and i32 %3609, 255
  %3611 = uitofp i32 %3610 to float
  %3612 = fmul fast float %3611, 0x3F70101020000000
  %3613 = lshr i32 %3602, 16
  %3614 = and i32 %3613, 255
  %3615 = uitofp i32 %3614 to float
  %3616 = fmul fast float %3615, 0x3F70101020000000
  %3617 = bitcast float %3541 to i32
  %3618 = ashr i32 %3617, 1
  %3619 = sub nsw i32 1597463174, %3618
  %3620 = bitcast i32 %3619 to float
  %3621 = fmul fast float %3541, 5.000000e-01
  %3622 = fmul fast float %3620, %3620
  %3623 = fmul fast float %3622, %3621
  %3624 = fsub fast float 1.500000e+00, %3623
  %3625 = fmul fast float %3620, %3541
  %3626 = fmul fast float %3625, %3624
  %3627 = bitcast float %3542 to i32
  %3628 = ashr i32 %3627, 1
  %3629 = sub nsw i32 1597463174, %3628
  %3630 = bitcast i32 %3629 to float
  %3631 = fmul fast float %3542, 5.000000e-01
  %3632 = fmul fast float %3630, %3630
  %3633 = fmul fast float %3632, %3631
  %3634 = fsub fast float 1.500000e+00, %3633
  %3635 = fmul fast float %3630, %3542
  %3636 = fmul fast float %3635, %3634
  %3637 = bitcast float %3543 to i32
  %3638 = ashr i32 %3637, 1
  %3639 = sub nsw i32 1597463174, %3638
  %3640 = bitcast i32 %3639 to float
  %3641 = fmul fast float %3543, 5.000000e-01
  %3642 = fmul fast float %3640, %3640
  %3643 = fmul fast float %3642, %3641
  %3644 = fsub fast float 1.500000e+00, %3643
  %3645 = fmul fast float %3640, %3543
  %3646 = fmul fast float %3645, %3644
  %3647 = fsub fast float %3626, %3608
  %3648 = fsub fast float %3636, %3612
  %3649 = fsub fast float %3646, %3616
  %3650 = fmul fast float %3647, %3576
  %3651 = fmul fast float %3648, %3578
  %3652 = fmul fast float %3649, %3583
  %3653 = fadd fast float %3650, %3591
  %3654 = fadd fast float %3651, %3595
  %3655 = fadd fast float %3652, %3599
  %3656 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3657 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3658 = call float @dx.op.unary.f32(i32 7, float %3655)  ; Saturate(value)
  %3659 = fmul fast float %3656, %3656
  %3660 = fmul fast float %3657, %3657
  %3661 = fmul fast float %3658, %3658
  %3662 = fsub fast float %3659, %3541
  %3663 = fsub fast float %3660, %3542
  %3664 = fsub fast float %3661, %3543
  %3665 = fmul fast float %3662, %3566
  %3666 = fmul fast float %3663, %3566
  %3667 = fmul fast float %3664, %3566
  %3668 = fadd fast float %3665, %3541
  %3669 = fadd fast float %3666, %3542
  %3670 = fadd fast float %3667, %3543
  %3671 = fadd fast float %3588, %3552
  %3672 = fsub fast float %3671, %3605
  %3673 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3674 = fsub fast float %3673, %3552
  %3675 = fmul fast float %3674, %3566
  %3676 = fadd fast float %3675, %3552
  br label %3730

; <label>:3677                                    ; preds = %3565
  %3678 = and i32 %3568, 134217728
  %3679 = icmp eq i32 %3678, 0
  br i1 %3679, label %3714, label %3680

; <label>:3680                                    ; preds = %3677
  %3681 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %3682 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3683 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %3684 = fadd fast float %3681, -5.000000e-01
  %3685 = fadd fast float %3682, -5.000000e-01
  %3686 = fadd fast float %3683, -5.000000e-01
  %3687 = fmul fast float %3684, %3566
  %3688 = fmul fast float %3685, %3566
  %3689 = fmul fast float %3686, %3566
  %3690 = fadd fast float %3687, 5.000000e-01
  %3691 = fadd fast float %3688, 5.000000e-01
  %3692 = fadd fast float %3689, 5.000000e-01
  %3693 = call float @dx.op.unary.f32(i32 24, float %3541)  ; Sqrt(value)
  %3694 = call float @dx.op.unary.f32(i32 24, float %3542)  ; Sqrt(value)
  %3695 = call float @dx.op.unary.f32(i32 24, float %3543)  ; Sqrt(value)
  %3696 = fmul fast float %3690, 2.000000e+00
  %3697 = fsub fast float 1.000000e+00, %3696
  %3698 = fmul fast float %3697, %3693
  %3699 = fadd fast float %3698, %3696
  %3700 = fmul fast float %3699, %3693
  %3701 = fmul fast float %3691, 2.000000e+00
  %3702 = fsub fast float 1.000000e+00, %3701
  %3703 = fmul fast float %3702, %3694
  %3704 = fadd fast float %3703, %3701
  %3705 = fmul fast float %3704, %3694
  %3706 = fmul fast float %3692, 2.000000e+00
  %3707 = fsub fast float 1.000000e+00, %3706
  %3708 = fmul fast float %3707, %3695
  %3709 = fadd fast float %3708, %3706
  %3710 = fmul fast float %3709, %3695
  %3711 = fmul fast float %3700, %3700
  %3712 = fmul fast float %3705, %3705
  %3713 = fmul fast float %3710, %3710
  br label %3730

; <label>:3714                                    ; preds = %3677
  %3715 = fmul fast float %375, %375
  %3716 = fmul fast float %379, %379
  %3717 = fmul fast float %383, %383
  %3718 = fadd fast float %3715, -1.000000e+00
  %3719 = fadd fast float %3716, -1.000000e+00
  %3720 = fadd fast float %3717, -1.000000e+00
  %3721 = fmul fast float %3566, %3718
  %3722 = fmul fast float %3566, %3719
  %3723 = fmul fast float %3566, %3720
  %3724 = fadd fast float %3721, 1.000000e+00
  %3725 = fadd fast float %3722, 1.000000e+00
  %3726 = fadd fast float %3723, 1.000000e+00
  %3727 = fmul fast float %3724, %3541
  %3728 = fmul fast float %3725, %3542
  %3729 = fmul fast float %3726, %3543
  br label %3730

; <label>:3730                                    ; preds = %3714, %3680, %3571, %3527
  %3731 = phi float [ %3676, %3571 ], [ %3552, %3680 ], [ %3552, %3714 ], [ 0x3FA23C0BE0000000, %3527 ]
  %3732 = phi float [ %3668, %3571 ], [ %3711, %3680 ], [ %3727, %3714 ], [ 1.000000e+00, %3527 ]
  %3733 = phi float [ %3669, %3571 ], [ %3712, %3680 ], [ %3728, %3714 ], [ 1.000000e+00, %3527 ]
  %3734 = phi float [ %3670, %3571 ], [ %3713, %3680 ], [ %3729, %3714 ], [ 1.000000e+00, %3527 ]
  %3735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.i32 %3735, 1
  %3737 = and i32 %3736, 1
  %3738 = icmp ne i32 %3737, 0
  %3739 = add i32 %54, 356
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = and i32 %3741, 32
  %3743 = icmp ne i32 %3742, 0
  %3744 = and i1 %3738, %3743
  %3745 = select i1 %3744, float 1.000000e+00, float %3732
  %3746 = select i1 %3744, float 0x3FD3333340000000, float %3733
  %3747 = select i1 %3744, float 0x3FD3333340000000, float %3734
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = and i32 %3749, 32
  %3751 = icmp eq i32 %3750, 0
  br i1 %3751, label %3824, label %3752

; <label>:3752                                    ; preds = %3730
  %3753 = add i32 %54, 140
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = add i32 %54, 388
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3756, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = add i32 %3758, 0
  %3760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3761 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3760, %dx.types.Handle %91, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3762 = extractvalue %dx.types.ResRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.ResRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.ResRet.f32 %3761, 2
  %3765 = extractvalue %dx.types.ResRet.f32 %3761, 3
  %3766 = and i32 %3755, 255
  %3767 = uitofp i32 %3766 to float
  %3768 = lshr i32 %3755, 8
  %3769 = and i32 %3768, 255
  %3770 = uitofp i32 %3769 to float
  %3771 = lshr i32 %3755, 16
  %3772 = and i32 %3771, 255
  %3773 = uitofp i32 %3772 to float
  %3774 = fmul fast float %3773, 0x3F70101000000000
  %3775 = fmul fast float %3762, %3767
  %3776 = fadd fast float %3775, %3770
  %3777 = fmul fast float %3776, 0x3F70101000000000
  %3778 = fadd fast float %3763, -5.000000e-01
  %3779 = fadd fast float %3765, -5.000000e-01
  %3780 = fmul fast float %3778, %3774
  %3781 = fmul fast float %3779, %3774
  %3782 = fadd fast float %3780, 5.000000e-01
  %3783 = fadd fast float %3781, 5.000000e-01
  %3784 = fmul fast float %3782, 2.000000e+00
  %3785 = fadd fast float %3784, -1.000000e+00
  %3786 = fmul fast float %3783, 2.000000e+00
  %3787 = fadd fast float %3786, -1.000000e+00
  %3788 = fadd fast float %3785, %3787
  %3789 = fmul fast float %3788, 5.000000e-01
  %3790 = fsub fast float %3785, %3787
  %3791 = fmul fast float %3790, 5.000000e-01
  %3792 = call float @dx.op.unary.f32(i32 6, float %3789)  ; FAbs(value)
  %3793 = fsub fast float 1.000000e+00, %3792
  %3794 = call float @dx.op.unary.f32(i32 6, float %3791)  ; FAbs(value)
  %3795 = fsub fast float %3793, %3794
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3789, float %3791, float %3795, float %3789, float %3791, float %3795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = call float @dx.op.unary.f32(i32 25, float %3796)  ; Rsqrt(value)
  %3798 = fmul fast float %3789, %3797
  %3799 = fmul fast float %3791, %3797
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = and i32 %3801, 67108864
  %3803 = icmp eq i32 %3802, 0
  br i1 %3803, label %3820, label %3804

; <label>:3804                                    ; preds = %3752
  %3805 = add i32 %54, 328
  %3806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = and i32 %3807, 65535
  %3809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3808)  ; LegacyF16ToF32(value)
  %3810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.i32 %3810, 0
  %3812 = and i32 %3811, 65535
  %3813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3812)  ; LegacyF16ToF32(value)
  %3814 = lshr i32 %3807, 16
  %3815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3814)  ; LegacyF16ToF32(value)
  %3816 = fsub fast float %3777, %3815
  %3817 = fmul fast float %3816, %3809
  %3818 = fadd fast float %3817, %3813
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  br label %3820

; <label>:3820                                    ; preds = %3804, %3752
  %3821 = phi float [ %3819, %3804 ], [ %3777, %3752 ]
  %3822 = call float @dx.op.dot2.f32(i32 54, float %3798, float %3799, float %3241, float %3242)  ; Dot2(ax,ay,bx,by)
  %3823 = call float @dx.op.dot2.f32(i32 54, float %3798, float %3799, float %3243, float %3244)  ; Dot2(ax,ay,bx,by)
  br label %3824

; <label>:3824                                    ; preds = %3820, %3730
  %3825 = phi float [ %3821, %3820 ], [ 0x3FD6666660000000, %3730 ]
  %3826 = phi float [ %3822, %3820 ], [ 0.000000e+00, %3730 ]
  %3827 = phi float [ %3823, %3820 ], [ 0.000000e+00, %3730 ]
  %3828 = phi float [ %3764, %3820 ], [ 1.000000e+00, %3730 ]
  %3829 = add i32 %54, 208
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = lshr i32 %3831, 22
  %3833 = shl nuw nsw i32 %3832, 5
  %3834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3833)  ; LegacyF16ToF32(value)
  %3835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.i32 %3835, 0
  %3837 = and i32 %3836, 64
  %3838 = icmp eq i32 %3837, 0
  br i1 %3838, label %3872, label %3839

; <label>:3839                                    ; preds = %3824
  %3840 = add i32 %54, 404
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = add i32 %3842, 0
  %3844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3843, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.i32 %3845, 0
  %3847 = and i32 %3846, 131072
  %3848 = icmp eq i32 %3847, 0
  %3849 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3844, %dx.types.Handle %91, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.ResRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.ResRet.f32 %3849, 2
  %3853 = fmul fast float %3850, %363
  %3854 = fmul fast float %3851, %366
  %3855 = fmul fast float %3852, %369
  br i1 %3848, label %3862, label %3856

; <label>:3856                                    ; preds = %3839
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = fmul fast float %3858, %3853
  %3860 = fmul fast float %3858, %3854
  %3861 = fmul fast float %3858, %3855
  br label %3862

; <label>:3862                                    ; preds = %3856, %3839
  %3863 = phi float [ %3859, %3856 ], [ %3853, %3839 ]
  %3864 = phi float [ %3860, %3856 ], [ %3854, %3839 ]
  %3865 = phi float [ %3861, %3856 ], [ %3855, %3839 ]
  %3866 = fmul fast float %3863, %3834
  %3867 = select i1 %220, float %3866, float %3863
  %3868 = call float @dx.op.dot3.f32(i32 55, float %3867, float %3864, float %3865, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3869 = select i1 %220, float 0.000000e+00, float %3863
  %3870 = select i1 %220, float %3868, float %3864
  %3871 = select i1 %220, float 0.000000e+00, float %3865
  br label %3872

; <label>:3872                                    ; preds = %3862, %3824
  %3873 = phi float [ %3869, %3862 ], [ 0.000000e+00, %3824 ]
  %3874 = phi float [ %3870, %3862 ], [ 0.000000e+00, %3824 ]
  %3875 = phi float [ %3871, %3862 ], [ 0.000000e+00, %3824 ]
  %3876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.i32 %3876, 0
  %3878 = and i32 %3877, 1024
  %3879 = icmp eq i32 %3878, 0
  br i1 %3879, label %3910, label %3880

; <label>:3880                                    ; preds = %3872
  %3881 = add i32 %54, 200
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = and i32 %3883, 255
  %3885 = uitofp i32 %3884 to float
  %3886 = fmul fast float %3885, 0x3F70101020000000
  %3887 = lshr i32 %3883, 8
  %3888 = and i32 %3887, 255
  %3889 = uitofp i32 %3888 to float
  %3890 = fmul fast float %3889, 0x3F70101020000000
  %3891 = lshr i32 %3883, 16
  %3892 = and i32 %3891, 255
  %3893 = uitofp i32 %3892 to float
  %3894 = fmul fast float %3893, 0x3F70101020000000
  %3895 = fmul fast float %3886, %3886
  %3896 = fmul fast float %3890, %3890
  %3897 = fmul fast float %3894, %3894
  %3898 = add i32 %54, 468
  %3899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.i32 %3899, 0
  %3901 = add i32 %3900, 0
  %3902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3902, %dx.types.Handle %92, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = extractvalue %dx.types.ResRet.f32 %3903, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3903, 2
  %3907 = fmul fast float %3895, %3904
  %3908 = fmul fast float %3896, %3905
  %3909 = fmul fast float %3897, %3906
  br label %3910

; <label>:3910                                    ; preds = %3880, %3872
  %3911 = phi float [ %3907, %3880 ], [ 0.000000e+00, %3872 ]
  %3912 = phi float [ %3908, %3880 ], [ 0.000000e+00, %3872 ]
  %3913 = phi float [ %3909, %3880 ], [ 0.000000e+00, %3872 ]
  %3914 = fcmp fast ogt float %3911, 0.000000e+00
  %3915 = fcmp fast ogt float %3912, 0.000000e+00
  %3916 = fcmp fast ogt float %3913, 0.000000e+00
  %3917 = call float @dx.op.unary.f32(i32 23, float %3911)  ; Log(value)
  %3918 = call float @dx.op.unary.f32(i32 23, float %3912)  ; Log(value)
  %3919 = call float @dx.op.unary.f32(i32 23, float %3913)  ; Log(value)
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = lshr i32 %3921, 7
  %3923 = and i32 %3922, 32752
  %3924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3923)  ; LegacyF16ToF32(value)
  %3925 = fmul fast float %3917, 0xBFE62E4300000000
  %3926 = fmul fast float %3925, %3924
  %3927 = fmul fast float %3918, 0xBFE62E4300000000
  %3928 = fmul fast float %3927, %3924
  %3929 = fmul fast float %3919, 0xBFE62E4300000000
  %3930 = fmul fast float %3929, %3924
  %3931 = select i1 %3914, float %3926, float 1.270000e+02
  %3932 = select i1 %3915, float %3928, float 1.270000e+02
  %3933 = select i1 %3916, float %3930, float 1.270000e+02
  %3934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.i32 %3934, 0
  %3936 = and i32 %3935, 10240
  %3937 = icmp eq i32 %3936, 0
  br i1 %3937, label %3958, label %3938

; <label>:3938                                    ; preds = %3910
  %3939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.i32 %3939, 0
  %3941 = and i32 %3940, 2048
  %3942 = icmp eq i32 %3941, 0
  br i1 %3942, label %3958, label %3943

; <label>:3943                                    ; preds = %3938
  %3944 = add i32 %54, 484
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = add i32 %3946, 0
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3948, %dx.types.Handle %92, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 3
  %3951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.i32 %3951, 0
  %3953 = shl i32 %3952, 4
  %3954 = and i32 %3953, 32752
  %3955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3954)  ; LegacyF16ToF32(value)
  %3956 = fmul fast float %3955, %3950
  %3957 = call float @dx.op.binary.f32(i32 35, float %3956, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3958

; <label>:3958                                    ; preds = %3943, %3938, %3910
  %3959 = phi float [ %3957, %3943 ], [ 0x3F70101020000000, %3938 ], [ 0x3F70101020000000, %3910 ]
  %3960 = add i32 %54, 144
  %3961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.i32 %3961, 0
  %3963 = and i32 %3962, 255
  %3964 = uitofp i32 %3963 to float
  %3965 = lshr i32 %3962, 8
  %3966 = and i32 %3965, 255
  %3967 = uitofp i32 %3966 to float
  %3968 = call float @dx.op.dot3.f32(i32 55, float %3745, float %3746, float %3747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3969 = fmul fast float %3967, %3968
  %3970 = fadd fast float %3969, %3964
  %3971 = fmul fast float %3970, 0x3F70101020000000
  %3972 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  br i1 %3229, label %3973, label %4008

; <label>:3973                                    ; preds = %3958
  %3974 = fmul fast float %3959, 2.000000e+00
  %3975 = fcmp fast olt float %3931, 1.270000e+02
  %3976 = fcmp fast olt float %3932, 1.270000e+02
  %3977 = fcmp fast olt float %3933, 1.270000e+02
  %3978 = fmul fast float %3931, 0xBFF7154760000000
  %3979 = fmul fast float %3978, %3974
  %3980 = fmul fast float %3932, 0xBFF7154760000000
  %3981 = fmul fast float %3980, %3974
  %3982 = fmul fast float %3933, 0xBFF7154760000000
  %3983 = fmul fast float %3982, %3974
  %3984 = call float @dx.op.unary.f32(i32 21, float %3979)  ; Exp(value)
  %3985 = call float @dx.op.unary.f32(i32 21, float %3981)  ; Exp(value)
  %3986 = call float @dx.op.unary.f32(i32 21, float %3983)  ; Exp(value)
  %3987 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3988 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3989 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3990 = fadd fast float %3987, -1.000000e+00
  %3991 = select i1 %3975, float %3990, float -1.000000e+00
  %3992 = fadd fast float %3988, -1.000000e+00
  %3993 = select i1 %3976, float %3992, float -1.000000e+00
  %3994 = fadd fast float %3989, -1.000000e+00
  %3995 = select i1 %3977, float %3994, float -1.000000e+00
  %3996 = fmul fast float %3991, %3525
  %3997 = fmul fast float %3993, %3525
  %3998 = fmul fast float %3995, %3525
  %3999 = fadd fast float %3996, 1.000000e+00
  %4000 = fadd fast float %3997, 1.000000e+00
  %4001 = fadd fast float %3998, 1.000000e+00
  %4002 = fmul fast float %3999, %3214
  %4003 = fmul fast float %4000, %3215
  %4004 = fmul fast float %4001, %3216
  %4005 = fmul fast float %3999, %3217
  %4006 = fmul fast float %4000, %3218
  %4007 = fmul fast float %4001, %3219
  br label %4008

; <label>:4008                                    ; preds = %3973, %3958
  %4009 = phi float [ %4002, %3973 ], [ %3214, %3958 ]
  %4010 = phi float [ %4003, %3973 ], [ %3215, %3958 ]
  %4011 = phi float [ %4004, %3973 ], [ %3216, %3958 ]
  %4012 = phi float [ %4005, %3973 ], [ %3217, %3958 ]
  %4013 = phi float [ %4006, %3973 ], [ %3218, %3958 ]
  %4014 = phi float [ %4007, %3973 ], [ %3219, %3958 ]
  %4015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.i32 %4015, 0
  %4017 = and i32 %4016, 3
  %4018 = icmp eq i32 %4017, 3
  br i1 %4018, label %4097, label %4019

; <label>:4019                                    ; preds = %4008
  %4020 = and i32 %4016, 16
  %4021 = icmp ne i32 %4020, 0
  %4022 = select i1 %4021, float %3525, float 0.000000e+00
  %4023 = icmp eq i32 %4017, 0
  br i1 %4023, label %4024, label %4052

; <label>:4024                                    ; preds = %4019
  %4025 = and i32 %4016, 64
  %4026 = icmp ne i32 %4025, 0
  %4027 = select i1 %4026, float %3525, float 0.000000e+00
  %4028 = fsub fast float %3745, %4009
  %4029 = fsub fast float %3746, %4010
  %4030 = fsub fast float %3747, %4011
  %4031 = fmul fast float %4022, %4028
  %4032 = fmul fast float %4022, %4029
  %4033 = fmul fast float %4022, %4030
  %4034 = fadd fast float %4031, %4009
  %4035 = fadd fast float %4032, %4010
  %4036 = fadd fast float %4033, %4011
  %4037 = fsub fast float %3731, %3223
  %4038 = fmul fast float %4022, %4037
  %4039 = fadd fast float %4038, %3223
  %4040 = fsub fast float %3873, %4012
  %4041 = fsub fast float %3874, %4013
  %4042 = fsub fast float %3875, %4014
  %4043 = fmul fast float %4027, %4040
  %4044 = fmul fast float %4027, %4041
  %4045 = fmul fast float %4027, %4042
  %4046 = fadd fast float %4043, %4012
  %4047 = fadd fast float %4044, %4013
  %4048 = fadd fast float %4045, %4014
  %4049 = fsub fast float %3972, %3227
  %4050 = fmul fast float %4022, %4049
  %4051 = fadd fast float %4050, %3227
  br label %4097

; <label>:4052                                    ; preds = %4019
  %4053 = icmp eq i32 %4017, 1
  br i1 %4053, label %4054, label %4067

; <label>:4054                                    ; preds = %4052
  %4055 = fadd fast float %3745, -1.000000e+00
  %4056 = fadd fast float %3746, -1.000000e+00
  %4057 = fadd fast float %3747, -1.000000e+00
  %4058 = fmul fast float %4022, %4055
  %4059 = fmul fast float %4022, %4056
  %4060 = fmul fast float %4022, %4057
  %4061 = fadd fast float %4058, 1.000000e+00
  %4062 = fadd fast float %4059, 1.000000e+00
  %4063 = fadd fast float %4060, 1.000000e+00
  %4064 = fmul fast float %4061, %4009
  %4065 = fmul fast float %4062, %4010
  %4066 = fmul fast float %4063, %4011
  br label %4097

; <label>:4067                                    ; preds = %4052
  %4068 = icmp eq i32 %4017, 2
  br i1 %4068, label %4069, label %4097

; <label>:4069                                    ; preds = %4067
  %4070 = call float @dx.op.unary.f32(i32 24, float %3745)  ; Sqrt(value)
  %4071 = call float @dx.op.unary.f32(i32 24, float %3746)  ; Sqrt(value)
  %4072 = call float @dx.op.unary.f32(i32 24, float %3747)  ; Sqrt(value)
  %4073 = fadd fast float %4070, -5.000000e-01
  %4074 = fadd fast float %4071, -5.000000e-01
  %4075 = fadd fast float %4072, -5.000000e-01
  %4076 = fmul fast float %4073, %4022
  %4077 = fmul fast float %4074, %4022
  %4078 = fmul fast float %4075, %4022
  %4079 = fadd fast float %4076, 5.000000e-01
  %4080 = fadd fast float %4077, 5.000000e-01
  %4081 = fadd fast float %4078, 5.000000e-01
  %4082 = fmul fast float %4079, 2.000000e+00
  %4083 = fsub fast float 1.000000e+00, %4082
  %4084 = fmul fast float %4083, %4009
  %4085 = fadd fast float %4084, %4082
  %4086 = fmul fast float %4085, %4009
  %4087 = fmul fast float %4080, 2.000000e+00
  %4088 = fsub fast float 1.000000e+00, %4087
  %4089 = fmul fast float %4088, %4010
  %4090 = fadd fast float %4089, %4087
  %4091 = fmul fast float %4090, %4010
  %4092 = fmul fast float %4081, 2.000000e+00
  %4093 = fsub fast float 1.000000e+00, %4092
  %4094 = fmul fast float %4093, %4011
  %4095 = fadd fast float %4094, %4092
  %4096 = fmul fast float %4095, %4011
  br label %4097

; <label>:4097                                    ; preds = %4069, %4067, %4054, %4024, %4008
  %4098 = phi float [ %4009, %4008 ], [ %4086, %4069 ], [ %4009, %4067 ], [ %4064, %4054 ], [ %4034, %4024 ]
  %4099 = phi float [ %4010, %4008 ], [ %4091, %4069 ], [ %4010, %4067 ], [ %4065, %4054 ], [ %4035, %4024 ]
  %4100 = phi float [ %4011, %4008 ], [ %4096, %4069 ], [ %4011, %4067 ], [ %4066, %4054 ], [ %4036, %4024 ]
  %4101 = phi float [ %4012, %4008 ], [ %4012, %4069 ], [ %4012, %4067 ], [ %4012, %4054 ], [ %4046, %4024 ]
  %4102 = phi float [ %4013, %4008 ], [ %4013, %4069 ], [ %4013, %4067 ], [ %4013, %4054 ], [ %4047, %4024 ]
  %4103 = phi float [ %4014, %4008 ], [ %4014, %4069 ], [ %4014, %4067 ], [ %4014, %4054 ], [ %4048, %4024 ]
  %4104 = phi float [ %3223, %4008 ], [ %3223, %4069 ], [ %3223, %4067 ], [ %3223, %4054 ], [ %4039, %4024 ]
  %4105 = phi float [ %3227, %4008 ], [ %3227, %4069 ], [ %3227, %4067 ], [ %3227, %4054 ], [ %4051, %4024 ]
  %4106 = and i32 %4016, 12
  %4107 = icmp eq i32 %4106, 12
  br i1 %4107, label %4214, label %4108

; <label>:4108                                    ; preds = %4097
  %4109 = and i32 %4016, 2097184
  %4110 = icmp eq i32 %4109, 2097184
  %4111 = select i1 %4110, float %3525, float 0.000000e+00
  %4112 = and i32 %4016, 4194336
  %4113 = icmp eq i32 %4112, 4194336
  %4114 = select i1 %4113, float %3525, float 0.000000e+00
  %4115 = and i32 %4016, 8388640
  %4116 = icmp eq i32 %4115, 8388640
  %4117 = select i1 %4116, float %3525, float 0.000000e+00
  %4118 = and i32 %4016, 1024
  %4119 = icmp ne i32 %4118, 0
  %4120 = select i1 %4119, float %3525, float 0.000000e+00
  %4121 = and i32 %4016, 2048
  %4122 = icmp ne i32 %4121, 0
  %4123 = select i1 %4122, float %3525, float 0.000000e+00
  %4124 = icmp eq i32 %4106, 0
  br i1 %4124, label %4125, label %4150

; <label>:4125                                    ; preds = %4108
  %4126 = fsub fast float %3826, %3212
  %4127 = fsub fast float %3827, %3213
  %4128 = fmul fast float %4111, %4126
  %4129 = fmul fast float %4111, %4127
  %4130 = fadd fast float %4128, %3212
  %4131 = fadd fast float %4129, %3213
  %4132 = fsub fast float %3828, %3225
  %4133 = fmul fast float %4114, %4132
  %4134 = fadd fast float %4133, %3225
  %4135 = fsub fast float %3825, %3224
  %4136 = fmul fast float %4117, %4135
  %4137 = fadd fast float %4136, %3224
  %4138 = fsub fast float %3931, %3220
  %4139 = fsub fast float %3932, %3221
  %4140 = fsub fast float %3933, %3222
  %4141 = fmul fast float %4120, %4138
  %4142 = fmul fast float %4120, %4139
  %4143 = fmul fast float %4120, %4140
  %4144 = fadd fast float %4141, %3220
  %4145 = fadd fast float %4142, %3221
  %4146 = fadd fast float %4143, %3222
  %4147 = fsub fast float %3959, %3226
  %4148 = fmul fast float %4123, %4147
  %4149 = fadd fast float %4148, %3226
  br label %4214

; <label>:4150                                    ; preds = %4108
  %4151 = icmp eq i32 %4106, 4
  br i1 %4151, label %4152, label %4192

; <label>:4152                                    ; preds = %4150
  %4153 = fmul fast float %4111, %3826
  %4154 = fmul fast float %4111, %3827
  %4155 = fadd fast float %4153, %3212
  %4156 = fadd fast float %4154, %3213
  %4157 = call float @dx.op.binary.f32(i32 36, float %3225, float %3828)  ; FMin(a,b)
  %4158 = fsub fast float %4157, %3225
  %4159 = fmul fast float %4158, %4114
  %4160 = fadd fast float %4159, %3225
  %4161 = fadd fast float %3825, %3224
  %4162 = fmul fast float %4161, 0x3FF337FAE0000000
  %4163 = fmul fast float %3224, %3224
  %4164 = fmul fast float %3825, %3825
  %4165 = fadd fast float %4164, %4163
  %4166 = fmul fast float %4165, 0x3FE5152B00000000
  %4167 = fmul fast float %3224, 0xBFCC1F85E0000000
  %4168 = fmul fast float %4167, %3825
  %4169 = fadd fast float %4168, 0xBFE1363700000000
  %4170 = fadd fast float %4169, %4162
  %4171 = fsub fast float %4170, %4166
  %4172 = fmul fast float %4161, 0x3FBA6F0D00000000
  %4173 = fmul fast float %4165, 0x3FD0432880000000
  %4174 = fmul fast float %3224, 0xBFEF110800000000
  %4175 = fmul fast float %4174, %3825
  %4176 = fadd fast float %4175, 1.000000e+00
  %4177 = fsub fast float %4176, %4172
  %4178 = fadd fast float %4177, %4173
  %4179 = fdiv fast float %4171, %4178
  %4180 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4181 = fsub fast float %4180, %3224
  %4182 = fmul fast float %4181, %4117
  %4183 = fadd fast float %4182, %3224
  %4184 = fmul fast float %4120, %3931
  %4185 = fmul fast float %4120, %3932
  %4186 = fmul fast float %4120, %3933
  %4187 = fadd fast float %4184, %3220
  %4188 = fadd fast float %4185, %3221
  %4189 = fadd fast float %4186, %3222
  %4190 = fmul fast float %4123, %3959
  %4191 = fadd fast float %4190, %3226
  br label %4214

; <label>:4192                                    ; preds = %4150
  %4193 = icmp eq i32 %4106, 8
  br i1 %4193, label %4194, label %4214

; <label>:4194                                    ; preds = %4192
  %4195 = fmul fast float %4111, %3826
  %4196 = fmul fast float %4111, %3827
  %4197 = fadd fast float %4195, %3212
  %4198 = fadd fast float %4196, %3213
  %4199 = call float @dx.op.binary.f32(i32 36, float %3225, float %3828)  ; FMin(a,b)
  %4200 = fsub fast float %4199, %3225
  %4201 = fmul fast float %4200, %4114
  %4202 = fadd fast float %4201, %3225
  %4203 = fsub fast float %3825, %3224
  %4204 = fmul fast float %4117, %4203
  %4205 = fadd fast float %4204, %3224
  %4206 = fmul fast float %4120, %3931
  %4207 = fmul fast float %4120, %3932
  %4208 = fmul fast float %4120, %3933
  %4209 = fadd fast float %4206, %3220
  %4210 = fadd fast float %4207, %3221
  %4211 = fadd fast float %4208, %3222
  %4212 = fmul fast float %4123, %3959
  %4213 = fadd fast float %4212, %3226
  br label %4214

; <label>:4214                                    ; preds = %4194, %4192, %4152, %4125, %4097, %3524, %3228, %3211
  %4215 = phi float [ %3212, %4097 ], [ %3212, %3524 ], [ %3212, %3211 ], [ %3212, %3228 ], [ %4130, %4125 ], [ %4155, %4152 ], [ %3212, %4192 ], [ %4197, %4194 ]
  %4216 = phi float [ %3213, %4097 ], [ %3213, %3524 ], [ %3213, %3211 ], [ %3213, %3228 ], [ %4131, %4125 ], [ %4156, %4152 ], [ %3213, %4192 ], [ %4198, %4194 ]
  %4217 = phi float [ %4098, %4097 ], [ %3214, %3524 ], [ %3214, %3211 ], [ %3214, %3228 ], [ %4098, %4125 ], [ %4098, %4152 ], [ %4098, %4192 ], [ %4098, %4194 ]
  %4218 = phi float [ %4099, %4097 ], [ %3215, %3524 ], [ %3215, %3211 ], [ %3215, %3228 ], [ %4099, %4125 ], [ %4099, %4152 ], [ %4099, %4192 ], [ %4099, %4194 ]
  %4219 = phi float [ %4100, %4097 ], [ %3216, %3524 ], [ %3216, %3211 ], [ %3216, %3228 ], [ %4100, %4125 ], [ %4100, %4152 ], [ %4100, %4192 ], [ %4100, %4194 ]
  %4220 = phi float [ %4101, %4097 ], [ %3217, %3524 ], [ %3217, %3211 ], [ %3217, %3228 ], [ %4101, %4125 ], [ %4101, %4152 ], [ %4101, %4192 ], [ %4101, %4194 ]
  %4221 = phi float [ %4102, %4097 ], [ %3218, %3524 ], [ %3218, %3211 ], [ %3218, %3228 ], [ %4102, %4125 ], [ %4102, %4152 ], [ %4102, %4192 ], [ %4102, %4194 ]
  %4222 = phi float [ %4103, %4097 ], [ %3219, %3524 ], [ %3219, %3211 ], [ %3219, %3228 ], [ %4103, %4125 ], [ %4103, %4152 ], [ %4103, %4192 ], [ %4103, %4194 ]
  %4223 = phi float [ %3220, %4097 ], [ %3220, %3524 ], [ %3220, %3211 ], [ %3220, %3228 ], [ %4144, %4125 ], [ %4187, %4152 ], [ %3220, %4192 ], [ %4209, %4194 ]
  %4224 = phi float [ %3221, %4097 ], [ %3221, %3524 ], [ %3221, %3211 ], [ %3221, %3228 ], [ %4145, %4125 ], [ %4188, %4152 ], [ %3221, %4192 ], [ %4210, %4194 ]
  %4225 = phi float [ %3222, %4097 ], [ %3222, %3524 ], [ %3222, %3211 ], [ %3222, %3228 ], [ %4146, %4125 ], [ %4189, %4152 ], [ %3222, %4192 ], [ %4211, %4194 ]
  %4226 = phi float [ %4104, %4097 ], [ %3223, %3524 ], [ %3223, %3211 ], [ %3223, %3228 ], [ %4104, %4125 ], [ %4104, %4152 ], [ %4104, %4192 ], [ %4104, %4194 ]
  %4227 = phi float [ %3224, %4097 ], [ %3224, %3524 ], [ %3224, %3211 ], [ %3224, %3228 ], [ %4137, %4125 ], [ %4183, %4152 ], [ %3224, %4192 ], [ %4205, %4194 ]
  %4228 = phi float [ %3225, %4097 ], [ %3225, %3524 ], [ %3225, %3211 ], [ %3225, %3228 ], [ %4134, %4125 ], [ %4160, %4152 ], [ %3225, %4192 ], [ %4202, %4194 ]
  %4229 = phi float [ %3226, %4097 ], [ %3226, %3524 ], [ %3226, %3211 ], [ %3226, %3228 ], [ %4149, %4125 ], [ %4191, %4152 ], [ %3226, %4192 ], [ %4213, %4194 ]
  %4230 = phi float [ %4105, %4097 ], [ %3227, %3524 ], [ %3227, %3211 ], [ %3227, %3228 ], [ %4105, %4125 ], [ %4105, %4152 ], [ %4105, %4192 ], [ %4105, %4194 ]
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 0
  %4233 = call float @dx.op.dot2.f32(i32 54, float %4215, float %4216, float %4215, float %4216)  ; Dot2(ax,ay,bx,by)
  %4234 = fmul fast float %4233, 0x3FE3333340000000
  %4235 = fsub fast float 1.000000e+00, %4234
  %4236 = call float @dx.op.dot3.f32(i32 55, float %4215, float %4216, float %4235, float %4215, float %4216, float %4235)  ; Dot3(ax,ay,az,bx,by,bz)
  %4237 = call float @dx.op.unary.f32(i32 25, float %4236)  ; Rsqrt(value)
  %4238 = fmul fast float %4237, %4215
  %4239 = fmul fast float %4237, %4216
  %4240 = fmul fast float %4235, %4237
  %4241 = fmul fast float %4240, %102
  %4242 = fmul fast float %4240, %103
  %4243 = fmul fast float %4240, %104
  %4244 = fmul fast float %4238, %70
  %4245 = fmul fast float %4238, %71
  %4246 = fmul fast float %4238, %72
  %4247 = fadd fast float %4241, %4244
  %4248 = fadd fast float %4242, %4245
  %4249 = fadd fast float %4243, %4246
  %4250 = fmul fast float %114, %4239
  %4251 = fmul fast float %115, %4239
  %4252 = fmul fast float %116, %4239
  %4253 = fadd fast float %4247, %4250
  %4254 = fadd fast float %4248, %4251
  %4255 = fadd fast float %4249, %4252
  %4256 = call float @dx.op.dot3.f32(i32 55, float %4253, float %4254, float %4255, float %4253, float %4254, float %4255)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = call float @dx.op.unary.f32(i32 25, float %4256)  ; Rsqrt(value)
  %4258 = fmul fast float %4253, %4257
  %4259 = fmul fast float %4254, %4257
  %4260 = fmul fast float %4255, %4257
  %4261 = and i32 %56, 1
  %4262 = icmp eq i32 %4261, 0
  br i1 %4262, label %4263, label %4806

; <label>:4263                                    ; preds = %4214
  %4264 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4265 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %4266 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %4267 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4268 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %4269 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %4270 = fadd fast float %4264, %158
  %4271 = fadd fast float %4265, %159
  %4272 = fadd fast float %4266, %160
  %4273 = fadd fast float %4267, %158
  %4274 = fadd fast float %4268, %159
  %4275 = fadd fast float %4269, %160
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 0
  %4278 = extractvalue %dx.types.CBufRet.f32 %4276, 1
  %4279 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 2
  %4282 = extractvalue %dx.types.CBufRet.f32 %4280, 3
  %4283 = fmul fast float %4277, %95
  %4284 = fmul fast float %4283, %4281
  %4285 = fmul fast float %4278, %96
  %4286 = fmul fast float %4285, %4282
  %4287 = fptoui float %4284 to i32
  %4288 = fptoui float %4286 to i32
  %4289 = fadd fast float %4277, -1.000000e+00
  %4290 = fadd fast float %4278, -1.000000e+00
  %4291 = fptoui float %4289 to i32
  %4292 = fptoui float %4290 to i32
  %4293 = call i32 @dx.op.binary.i32(i32 40, i32 %4287, i32 %4291)  ; UMin(a,b)
  %4294 = call i32 @dx.op.binary.i32(i32 40, i32 %4288, i32 %4292)  ; UMin(a,b)
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 2
  %4297 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4298 = fmul fast float %4296, %86
  %4299 = fsub fast float %4298, %4297
  %4300 = fadd fast float %4279, -1.000000e+00
  %4301 = call float @dx.op.binary.f32(i32 36, float %4299, float %4300)  ; FMin(a,b)
  %4302 = fptoui float %4301 to i32
  %4303 = fptoui float %4277 to i32
  %4304 = fptoui float %4278 to i32
  %4305 = mul i32 %4302, %4304
  %4306 = add i32 %4305, %4294
  %4307 = mul i32 %4306, %4303
  %4308 = add i32 %4307, %4293
  %4309 = shl i32 %4308, 2
  %4310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4309, i32 undef)  ; BufferLoad(srv,index,wot)
  %4311 = extractvalue %dx.types.ResRet.i32 %4310, 0
  %4312 = and i32 %4311, 1023
  %4313 = lshr i32 %4311, 10
  %4314 = icmp eq i32 %4312, 0
  br i1 %4314, label %4771, label %4315

; <label>:4315                                    ; preds = %4263
  %4316 = and i32 %4311, 1023
  br label %4317

; <label>:4317                                    ; preds = %4447, %4315
  %4318 = phi i32 [ %4397, %4447 ], [ 0, %4315 ]
  %4319 = phi float [ %4448, %4447 ], [ 0.000000e+00, %4315 ]
  %4320 = phi float [ %4449, %4447 ], [ %1217, %4315 ]
  %4321 = phi float [ %4450, %4447 ], [ %4232, %4315 ]
  %4322 = phi float [ %4451, %4447 ], [ %4230, %4315 ]
  %4323 = phi float [ %4452, %4447 ], [ %4223, %4315 ]
  %4324 = phi float [ %4453, %4447 ], [ %4224, %4315 ]
  %4325 = phi float [ %4454, %4447 ], [ %4225, %4315 ]
  %4326 = phi float [ %4455, %4447 ], [ 0.000000e+00, %4315 ]
  %4327 = phi float [ %4456, %4447 ], [ 0.000000e+00, %4315 ]
  %4328 = phi float [ %4457, %4447 ], [ %4220, %4315 ]
  %4329 = phi float [ %4458, %4447 ], [ %4221, %4315 ]
  %4330 = phi float [ %4459, %4447 ], [ %4222, %4315 ]
  %4331 = phi float [ %4460, %4447 ], [ %4258, %4315 ]
  %4332 = phi float [ %4461, %4447 ], [ %4259, %4315 ]
  %4333 = phi float [ %4462, %4447 ], [ %4260, %4315 ]
  %4334 = phi float [ %4463, %4447 ], [ %4228, %4315 ]
  %4335 = phi float [ %4464, %4447 ], [ %4227, %4315 ]
  %4336 = phi float [ %4465, %4447 ], [ 0.000000e+00, %4315 ]
  %4337 = phi float [ %4466, %4447 ], [ %4226, %4315 ]
  %4338 = phi float [ %4467, %4447 ], [ %4217, %4315 ]
  %4339 = phi float [ %4468, %4447 ], [ %4218, %4315 ]
  %4340 = phi float [ %4469, %4447 ], [ %4219, %4315 ]
  %4341 = add nuw nsw i32 %4318, %4313
  %4342 = shl i32 %4341, 2
  %4343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4342, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.i32 %4343, 0
  %4345 = shl i32 %4344, 8
  %4346 = or i32 %4345, 48
  %4347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4346, i32 undef)  ; BufferLoad(srv,index,wot)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = extractvalue %dx.types.ResRet.f32 %4347, 1
  %4350 = extractvalue %dx.types.ResRet.f32 %4347, 2
  %4351 = extractvalue %dx.types.ResRet.f32 %4347, 3
  %4352 = or i32 %4345, 64
  %4353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.i32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.i32 %4353, 1
  %4356 = or i32 %4345, 80
  %4357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4356, i32 undef)  ; BufferLoad(srv,index,wot)
  %4358 = extractvalue %dx.types.ResRet.f32 %4357, 2
  %4359 = extractvalue %dx.types.ResRet.f32 %4357, 3
  %4360 = or i32 %4345, 96
  %4361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4360, i32 undef)  ; BufferLoad(srv,index,wot)
  %4362 = extractvalue %dx.types.ResRet.f32 %4361, 0
  %4363 = extractvalue %dx.types.ResRet.f32 %4361, 1
  %4364 = extractvalue %dx.types.ResRet.f32 %4361, 2
  %4365 = extractvalue %dx.types.ResRet.f32 %4361, 3
  %4366 = or i32 %4345, 112
  %4367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 2
  %4369 = or i32 %4345, 128
  %4370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4369, i32 undef)  ; BufferLoad(srv,index,wot)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = extractvalue %dx.types.ResRet.f32 %4370, 1
  %4373 = extractvalue %dx.types.ResRet.f32 %4370, 2
  %4374 = extractvalue %dx.types.ResRet.f32 %4370, 3
  %4375 = or i32 %4345, 144
  %4376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = extractvalue %dx.types.ResRet.f32 %4376, 3
  %4381 = or i32 %4345, 160
  %4382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4381, i32 undef)  ; BufferLoad(srv,index,wot)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 0
  %4384 = extractvalue %dx.types.ResRet.f32 %4382, 1
  %4385 = extractvalue %dx.types.ResRet.f32 %4382, 2
  %4386 = extractvalue %dx.types.ResRet.f32 %4382, 3
  %4387 = or i32 %4345, 192
  %4388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4387, i32 undef)  ; BufferLoad(srv,index,wot)
  %4389 = extractvalue %dx.types.ResRet.i32 %4388, 0
  %4390 = or i32 %4345, 208
  %4391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4390, i32 undef)  ; BufferLoad(srv,index,wot)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = or i32 %4345, 248
  %4394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 0
  %4396 = extractvalue %dx.types.ResRet.f32 %4394, 1
  %4397 = add nuw nsw i32 %4318, 1
  %4398 = bitcast float %4351 to i32
  %4399 = and i32 %4398, 512
  %4400 = icmp eq i32 %4399, 0
  %4401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4402 = extractvalue %dx.types.ResRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.ResRet.f32 %4401, 1
  %4404 = extractvalue %dx.types.ResRet.f32 %4401, 2
  %4405 = extractvalue %dx.types.ResRet.f32 %4401, 3
  %4406 = call float @dx.op.dot4.f32(i32 56, float %4402, float %4403, float %4404, float %4405, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4407 = or i32 %4345, 16
  %4408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.ResRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.ResRet.f32 %4408, 2
  %4412 = extractvalue %dx.types.ResRet.f32 %4408, 3
  %4413 = call float @dx.op.dot4.f32(i32 56, float %4409, float %4410, float %4411, float %4412, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4414 = or i32 %4345, 32
  %4415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4414, i32 undef)  ; BufferLoad(srv,index,wot)
  %4416 = extractvalue %dx.types.ResRet.f32 %4415, 0
  %4417 = extractvalue %dx.types.ResRet.f32 %4415, 1
  %4418 = extractvalue %dx.types.ResRet.f32 %4415, 2
  %4419 = extractvalue %dx.types.ResRet.f32 %4415, 3
  %4420 = call float @dx.op.dot4.f32(i32 56, float %4416, float %4417, float %4418, float %4419, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4421 = call float @dx.op.unary.f32(i32 27, float %4406)  ; Round_ni(value)
  %4422 = call float @dx.op.unary.f32(i32 6, float %4421)  ; FAbs(value)
  %4423 = call float @dx.op.unary.f32(i32 27, float %4413)  ; Round_ni(value)
  %4424 = call float @dx.op.unary.f32(i32 6, float %4423)  ; FAbs(value)
  %4425 = call float @dx.op.unary.f32(i32 6, float %4420)  ; FAbs(value)
  %4426 = call float @dx.op.unary.f32(i32 27, float %4425)  ; Round_ni(value)
  %4427 = fadd fast float %4424, %4422
  %4428 = fadd fast float %4427, %4426
  %4429 = fcmp fast oeq float %4428, 0.000000e+00
  %4430 = call float @dx.op.dot4.f32(i32 56, float %4402, float %4403, float %4404, float %4405, float %4270, float %4271, float %4272, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4431 = call float @dx.op.dot4.f32(i32 56, float %4409, float %4410, float %4411, float %4412, float %4270, float %4271, float %4272, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4432 = call float @dx.op.dot4.f32(i32 56, float %4402, float %4403, float %4404, float %4405, float %4273, float %4274, float %4275, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4433 = call float @dx.op.dot4.f32(i32 56, float %4409, float %4410, float %4411, float %4412, float %4273, float %4274, float %4275, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4434 = fsub fast float %4430, %4406
  %4435 = fsub fast float %4432, %4406
  %4436 = fsub fast float %4431, %4413
  %4437 = fsub fast float %4433, %4413
  %4438 = call float @dx.op.dot3.f32(i32 55, float %4348, float %4349, float %4350, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 2
  %4441 = fadd fast float %4440, %4438
  %4442 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4439, 0
  %4444 = fcmp fast ogt float %4442, %4443
  %4445 = and i1 %4429, %4444
  %4446 = and i1 %4400, %4445
  br i1 %4446, label %4471, label %4447

; <label>:4447                                    ; preds = %4757, %4552, %4471, %4317
  %4448 = phi float [ %4319, %4471 ], [ %4555, %4552 ], [ %4555, %4757 ], [ %4319, %4317 ]
  %4449 = phi float [ %4320, %4471 ], [ %4320, %4552 ], [ %4733, %4757 ], [ %4320, %4317 ]
  %4450 = phi float [ %4321, %4471 ], [ %4321, %4552 ], [ %4732, %4757 ], [ %4321, %4317 ]
  %4451 = phi float [ %4322, %4471 ], [ %4322, %4552 ], [ %4730, %4757 ], [ %4322, %4317 ]
  %4452 = phi float [ %4323, %4471 ], [ %4323, %4552 ], [ %4708, %4757 ], [ %4323, %4317 ]
  %4453 = phi float [ %4324, %4471 ], [ %4324, %4552 ], [ %4709, %4757 ], [ %4324, %4317 ]
  %4454 = phi float [ %4325, %4471 ], [ %4325, %4552 ], [ %4710, %4757 ], [ %4325, %4317 ]
  %4455 = phi float [ %4326, %4471 ], [ %4326, %4552 ], [ %4679, %4757 ], [ %4326, %4317 ]
  %4456 = phi float [ %4327, %4471 ], [ %4327, %4552 ], [ %4677, %4757 ], [ %4327, %4317 ]
  %4457 = phi float [ %4328, %4471 ], [ %4328, %4552 ], [ %4767, %4757 ], [ %4328, %4317 ]
  %4458 = phi float [ %4329, %4471 ], [ %4329, %4552 ], [ %4768, %4757 ], [ %4329, %4317 ]
  %4459 = phi float [ %4330, %4471 ], [ %4330, %4552 ], [ %4769, %4757 ], [ %4330, %4317 ]
  %4460 = phi float [ %4331, %4471 ], [ %4331, %4552 ], [ %4658, %4757 ], [ %4331, %4317 ]
  %4461 = phi float [ %4332, %4471 ], [ %4332, %4552 ], [ %4659, %4757 ], [ %4332, %4317 ]
  %4462 = phi float [ %4333, %4471 ], [ %4333, %4552 ], [ %4660, %4757 ], [ %4333, %4317 ]
  %4463 = phi float [ %4334, %4471 ], [ %4334, %4552 ], [ %4688, %4757 ], [ %4334, %4317 ]
  %4464 = phi float [ %4335, %4471 ], [ %4335, %4552 ], [ %4685, %4757 ], [ %4335, %4317 ]
  %4465 = phi float [ %4336, %4471 ], [ %4336, %4552 ], [ %4682, %4757 ], [ %4336, %4317 ]
  %4466 = phi float [ %4337, %4471 ], [ %4337, %4552 ], [ %4675, %4757 ], [ %4337, %4317 ]
  %4467 = phi float [ %4338, %4471 ], [ %4338, %4552 ], [ %4670, %4757 ], [ %4338, %4317 ]
  %4468 = phi float [ %4339, %4471 ], [ %4339, %4552 ], [ %4671, %4757 ], [ %4339, %4317 ]
  %4469 = phi float [ %4340, %4471 ], [ %4340, %4552 ], [ %4672, %4757 ], [ %4340, %4317 ]
  %4470 = icmp eq i32 %4397, %4316
  br i1 %4470, label %4770, label %4317

; <label>:4471                                    ; preds = %4317
  %4472 = extractvalue %dx.types.ResRet.f32 %4367, 3
  %4473 = extractvalue %dx.types.ResRet.f32 %4367, 1
  %4474 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4475 = extractvalue %dx.types.ResRet.f32 %4357, 1
  %4476 = extractvalue %dx.types.ResRet.f32 %4357, 0
  %4477 = extractvalue %dx.types.ResRet.i32 %4353, 3
  %4478 = extractvalue %dx.types.ResRet.i32 %4353, 2
  %4479 = add i32 %4477, 0
  %4480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4479, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4482 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4480, %dx.types.Handle %4481, float %4406, float %4413, float undef, float undef, i32 0, i32 0, i32 undef, float %4434, float %4436, float undef, float %4435, float %4437, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4483 = extractvalue %dx.types.ResRet.f32 %4482, 0
  %4484 = fmul fast float %4483, %4476
  %4485 = fadd fast float %4484, %4475
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fmul fast float %4406, %4362
  %4488 = call float @dx.op.tertiary.f32(i32 46, float %4363, float %4413, float %4487)  ; FMad(a,b,c)
  %4489 = fadd fast float %4488, %4474
  %4490 = fmul fast float %4406, %4364
  %4491 = call float @dx.op.tertiary.f32(i32 46, float %4365, float %4413, float %4490)  ; FMad(a,b,c)
  %4492 = fadd fast float %4491, %4473
  %4493 = fmul fast float %4434, %4362
  %4494 = call float @dx.op.tertiary.f32(i32 46, float %4363, float %4436, float %4493)  ; FMad(a,b,c)
  %4495 = fmul fast float %4434, %4364
  %4496 = call float @dx.op.tertiary.f32(i32 46, float %4365, float %4436, float %4495)  ; FMad(a,b,c)
  %4497 = fmul fast float %4435, %4362
  %4498 = call float @dx.op.tertiary.f32(i32 46, float %4363, float %4437, float %4497)  ; FMad(a,b,c)
  %4499 = fmul fast float %4435, %4364
  %4500 = call float @dx.op.tertiary.f32(i32 46, float %4365, float %4437, float %4499)  ; FMad(a,b,c)
  %4501 = add i32 %4478, 0
  %4502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4501, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4503 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4502, %dx.types.Handle %4481, float %4489, float %4492, float undef, float undef, i32 0, i32 0, i32 undef, float %4494, float %4496, float undef, float %4498, float %4500, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = and i32 %4398, 1024
  %4506 = icmp ne i32 %4505, 0
  %4507 = fcmp fast ogt float %4504, 0x3FE0101020000000
  %4508 = uitofp i1 %4507 to float
  %4509 = select i1 %4506, float %4508, float %4504
  %4510 = and i32 %4398, 8192
  %4511 = icmp ne i32 %4510, 0
  %4512 = select i1 %4511, float %4472, float 1.000000e+00
  %4513 = fmul fast float %4406, 2.000000e+00
  %4514 = fadd fast float %4513, -1.000000e+00
  %4515 = call float @dx.op.unary.f32(i32 6, float %4514)  ; FAbs(value)
  %4516 = fmul fast float %4515, %4395
  %4517 = fsub fast float %4516, %4395
  %4518 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4519 = fmul fast float %4413, 2.000000e+00
  %4520 = fadd fast float %4519, -1.000000e+00
  %4521 = call float @dx.op.unary.f32(i32 6, float %4520)  ; FAbs(value)
  %4522 = fmul fast float %4521, %4396
  %4523 = fsub fast float %4522, %4396
  %4524 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4525 = fmul fast float %4425, %4358
  %4526 = fsub fast float %4525, %4358
  %4527 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4528 = fmul fast float %4486, %4512
  %4529 = fmul fast float %4528, %4483
  %4530 = fmul fast float %4529, %4518
  %4531 = fmul fast float %4530, %4509
  %4532 = fmul fast float %4531, %4524
  %4533 = fmul fast float %4532, %4527
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 1
  %4536 = extractvalue %dx.types.CBufRet.f32 %4534, 0
  %4537 = fsub fast float %4442, %4536
  %4538 = fmul fast float %4537, %4535
  %4539 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4540 = fmul fast float %4533, %4359
  %4541 = fadd fast float %4533, %4359
  %4542 = fmul fast float %4541, %4368
  %4543 = fsub fast float %4542, %4368
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = and i32 %4398, 128
  %4546 = icmp ne i32 %4545, 0
  %4547 = select i1 %4546, float %4544, float %4540
  %4548 = fmul fast float %4547, %4539
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 0
  %4551 = fcmp fast ugt float %4548, %4550
  br i1 %4551, label %4552, label %4447

; <label>:4552                                    ; preds = %4471
  %4553 = select i1 %4511, float %4548, float 0.000000e+00
  %4554 = fadd fast float %4553, %4319
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  br i1 %4511, label %4447, label %4556

; <label>:4556                                    ; preds = %4552
  %4557 = and i32 %4398, 4
  %4558 = and i32 %4398, 8
  %4559 = add i32 %4354, 0
  %4560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4559, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4562 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4560, %dx.types.Handle %4561, float %4489, float %4492, float undef, float undef, i32 0, i32 0, i32 undef, float %4494, float %4496, float undef, float %4498, float %4500, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = extractvalue %dx.types.ResRet.f32 %4562, 3
  %4567 = bitcast float %4380 to i32
  %4568 = and i32 %4567, 255
  %4569 = uitofp i32 %4568 to float
  %4570 = lshr i32 %4567, 8
  %4571 = and i32 %4570, 255
  %4572 = uitofp i32 %4571 to float
  %4573 = fmul fast float %4566, %4569
  %4574 = fadd fast float %4573, %4572
  %4575 = fmul fast float %4574, 0x3F70101000000000
  %4576 = add i32 %4355, 0
  %4577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4576, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4578 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4577, %dx.types.Handle %4561, float %4489, float %4492, float undef, float undef, i32 0, i32 0, i32 undef, float %4494, float %4496, float undef, float %4498, float %4500, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4582 = extractvalue %dx.types.ResRet.f32 %4578, 3
  %4583 = bitcast float %4374 to i32
  %4584 = and i32 %4583, 255
  %4585 = uitofp i32 %4584 to float
  %4586 = lshr i32 %4583, 8
  %4587 = and i32 %4586, 255
  %4588 = uitofp i32 %4587 to float
  %4589 = lshr i32 %4583, 16
  %4590 = and i32 %4589, 255
  %4591 = uitofp i32 %4590 to float
  %4592 = fmul fast float %4591, 0x3F70101000000000
  %4593 = fmul fast float %4579, %4585
  %4594 = fadd fast float %4593, %4588
  %4595 = fmul fast float %4594, 0x3F70101000000000
  %4596 = fadd fast float %4580, -5.000000e-01
  %4597 = fadd fast float %4582, -5.000000e-01
  %4598 = fmul fast float %4596, %4592
  %4599 = fmul fast float %4597, %4592
  %4600 = fadd fast float %4598, 5.000000e-01
  %4601 = fadd fast float %4599, 5.000000e-01
  %4602 = fmul fast float %4563, %4383
  %4603 = fmul fast float %4564, %4384
  %4604 = fmul fast float %4565, %4385
  %4605 = fmul fast float %4600, 2.000000e+00
  %4606 = fadd fast float %4605, -1.000000e+00
  %4607 = fmul fast float %4601, 2.000000e+00
  %4608 = fadd fast float %4607, -1.000000e+00
  %4609 = fadd fast float %4606, %4608
  %4610 = fmul fast float %4609, 5.000000e-01
  %4611 = fsub fast float %4606, %4608
  %4612 = fmul fast float %4611, 5.000000e-01
  %4613 = call float @dx.op.unary.f32(i32 6, float %4610)  ; FAbs(value)
  %4614 = fsub fast float 1.000000e+00, %4613
  %4615 = call float @dx.op.unary.f32(i32 6, float %4612)  ; FAbs(value)
  %4616 = fsub fast float %4614, %4615
  %4617 = call float @dx.op.dot3.f32(i32 55, float %4610, float %4612, float %4616, float %4610, float %4612, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = call float @dx.op.unary.f32(i32 25, float %4617)  ; Rsqrt(value)
  %4619 = fmul fast float %4610, %4618
  %4620 = fmul fast float %4612, %4618
  %4621 = fmul fast float %4618, %4616
  %4622 = fmul fast float %4621, %4348
  %4623 = fmul fast float %4621, %4349
  %4624 = fmul fast float %4621, %4350
  %4625 = fmul fast float %4619, %4371
  %4626 = fmul fast float %4619, %4372
  %4627 = fmul fast float %4619, %4373
  %4628 = fadd fast float %4625, %4622
  %4629 = fadd fast float %4626, %4623
  %4630 = fadd fast float %4627, %4624
  %4631 = fmul fast float %4620, %4377
  %4632 = fmul fast float %4620, %4378
  %4633 = fmul fast float %4620, %4379
  %4634 = fadd fast float %4628, %4631
  %4635 = fadd fast float %4629, %4632
  %4636 = fadd fast float %4630, %4633
  %4637 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float %4634, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = call float @dx.op.unary.f32(i32 25, float %4637)  ; Rsqrt(value)
  %4639 = fmul fast float %4634, %4638
  %4640 = fmul fast float %4635, %4638
  %4641 = fmul fast float %4636, %4638
  %4642 = icmp ne i32 %4558, 0
  %4643 = select i1 %4642, float 1.000000e+00, float 0.000000e+00
  %4644 = fmul fast float %4548, %4643
  %4645 = and i32 %4398, 1
  %4646 = icmp eq i32 %4645, 0
  br i1 %4646, label %4647, label %4651

; <label>:4647                                    ; preds = %4556
  %4648 = fsub fast float %4639, %4331
  %4649 = fsub fast float %4640, %4332
  %4650 = fsub fast float %4641, %4333
  br label %4651

; <label>:4651                                    ; preds = %4647, %4556
  %4652 = phi float [ %4648, %4647 ], [ %4639, %4556 ]
  %4653 = phi float [ %4649, %4647 ], [ %4640, %4556 ]
  %4654 = phi float [ %4650, %4647 ], [ %4641, %4556 ]
  %4655 = fmul float %4654, %4644
  %4656 = fmul float %4653, %4644
  %4657 = fmul float %4652, %4644
  %4658 = fadd fast float %4657, %4331
  %4659 = fadd fast float %4656, %4332
  %4660 = fadd fast float %4655, %4333
  %4661 = icmp ne i32 %4557, 0
  %4662 = select i1 %4661, float 1.000000e+00, float 0.000000e+00
  %4663 = fmul fast float %4548, %4662
  %4664 = fsub fast float %4602, %4338
  %4665 = fsub fast float %4603, %4339
  %4666 = fsub fast float %4604, %4340
  %4667 = fmul fast float %4664, %4663
  %4668 = fmul fast float %4665, %4663
  %4669 = fmul fast float %4666, %4663
  %4670 = fadd fast float %4667, %4338
  %4671 = fadd fast float %4668, %4339
  %4672 = fadd fast float %4669, %4340
  %4673 = fsub fast float %4575, %4337
  %4674 = fmul fast float %4673, %4663
  %4675 = fadd fast float %4674, %4337
  %4676 = fmul fast float %4663, %4327
  %4677 = fsub fast float %4327, %4676
  %4678 = fmul fast float %4663, %4326
  %4679 = fsub fast float %4326, %4678
  %4680 = bitcast float %4392 to i32
  %4681 = fadd fast float %4548, %4336
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = fsub fast float %4595, %4335
  %4684 = fmul fast float %4683, %4644
  %4685 = fadd fast float %4684, %4335
  %4686 = fsub fast float %4581, %4334
  %4687 = fmul fast float %4686, %4644
  %4688 = fadd fast float %4687, %4334
  br i1 %4646, label %4697, label %4689

; <label>:4689                                    ; preds = %4651
  %4690 = and i32 %4398, 32768
  %4691 = icmp eq i32 %4690, 0
  br i1 %4691, label %4707, label %4692

; <label>:4692                                    ; preds = %4689
  %4693 = fmul fast float %4644, 1.270000e+02
  %4694 = fadd fast float %4693, %4323
  %4695 = fadd fast float %4693, %4324
  %4696 = fadd fast float %4693, %4325
  br label %4707

; <label>:4697                                    ; preds = %4651
  %4698 = fsub fast float 1.270000e+02, %4323
  %4699 = fsub fast float 1.270000e+02, %4324
  %4700 = fsub fast float 1.270000e+02, %4325
  %4701 = fmul fast float %4644, %4698
  %4702 = fmul fast float %4644, %4699
  %4703 = fmul fast float %4644, %4700
  %4704 = fadd fast float %4701, %4323
  %4705 = fadd fast float %4702, %4324
  %4706 = fadd fast float %4703, %4325
  br label %4707

; <label>:4707                                    ; preds = %4697, %4692, %4689
  %4708 = phi float [ %4694, %4692 ], [ %4323, %4689 ], [ %4704, %4697 ]
  %4709 = phi float [ %4695, %4692 ], [ %4324, %4689 ], [ %4705, %4697 ]
  %4710 = phi float [ %4696, %4692 ], [ %4325, %4689 ], [ %4706, %4697 ]
  %4711 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4713 = extractvalue %dx.types.CBufRet.f32 %4712, 0
  %4714 = extractvalue %dx.types.CBufRet.f32 %4712, 1
  %4715 = fmul fast float %4714, %4711
  %4716 = fadd fast float %4715, %4713
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = bitcast float %4386 to i32
  %4719 = and i32 %4718, 65535
  %4720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4719)  ; LegacyF16ToF32(value)
  %4721 = lshr i32 %4718, 16
  %4722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4721)  ; LegacyF16ToF32(value)
  %4723 = fcmp fast oge float %4720, 0.000000e+00
  %4724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4724, 0
  %4726 = select i1 %4723, float %4720, float %4725
  %4727 = fadd fast float %4726, %4722
  %4728 = fsub fast float %4717, %4322
  %4729 = fmul fast float %4728, %4548
  %4730 = fadd fast float %4729, %4322
  %4731 = fmul fast float %4727, %4548
  %4732 = call float @dx.op.binary.f32(i32 35, float %4321, float %4731)  ; FMax(a,b)
  %4733 = call float @dx.op.binary.f32(i32 35, float %4320, float %4548)  ; FMax(a,b)
  %4734 = and i32 %4398, 16
  %4735 = icmp eq i32 %4734, 0
  br i1 %4735, label %4757, label %4736

; <label>:4736                                    ; preds = %4707
  %4737 = add i32 %4389, 0
  %4738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4737, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4739 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4738, %dx.types.Handle %4561, float %4489, float %4492, float undef, float undef, i32 0, i32 0, i32 undef, float %4494, float %4496, float undef, float %4498, float %4500, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4740 = extractvalue %dx.types.ResRet.f32 %4739, 0
  %4741 = extractvalue %dx.types.ResRet.f32 %4739, 1
  %4742 = extractvalue %dx.types.ResRet.f32 %4739, 2
  %4743 = and i32 %4680, 65535
  %4744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4743)  ; LegacyF16ToF32(value)
  %4745 = fmul fast float %4740, %4383
  %4746 = fmul fast float %4741, %4384
  %4747 = fmul fast float %4742, %4385
  %4748 = and i32 %4398, 16384
  %4749 = icmp ne i32 %4748, 0
  %4750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.f32 %4750, 0
  %4752 = select i1 %4749, float %4751, float 1.000000e+00
  %4753 = fmul fast float %4752, %4744
  %4754 = fmul fast float %4745, %4753
  %4755 = fmul fast float %4746, %4753
  %4756 = fmul fast float %4747, %4753
  br label %4757

; <label>:4757                                    ; preds = %4736, %4707
  %4758 = phi float [ %4754, %4736 ], [ 0.000000e+00, %4707 ]
  %4759 = phi float [ %4755, %4736 ], [ 0.000000e+00, %4707 ]
  %4760 = phi float [ %4756, %4736 ], [ 0.000000e+00, %4707 ]
  %4761 = fsub fast float %4758, %4328
  %4762 = fsub fast float %4759, %4329
  %4763 = fsub fast float %4760, %4330
  %4764 = fmul fast float %4761, %4548
  %4765 = fmul fast float %4762, %4548
  %4766 = fmul fast float %4763, %4548
  %4767 = fadd fast float %4764, %4328
  %4768 = fadd fast float %4765, %4329
  %4769 = fadd fast float %4766, %4330
  br label %4447

; <label>:4770                                    ; preds = %4447
  br label %4771

; <label>:4771                                    ; preds = %4770, %4263
  %4772 = phi float [ 0.000000e+00, %4263 ], [ %4448, %4770 ]
  %4773 = phi float [ %1217, %4263 ], [ %4449, %4770 ]
  %4774 = phi float [ %4232, %4263 ], [ %4450, %4770 ]
  %4775 = phi float [ %4230, %4263 ], [ %4451, %4770 ]
  %4776 = phi float [ %4223, %4263 ], [ %4452, %4770 ]
  %4777 = phi float [ %4224, %4263 ], [ %4453, %4770 ]
  %4778 = phi float [ %4225, %4263 ], [ %4454, %4770 ]
  %4779 = phi float [ 0.000000e+00, %4263 ], [ %4455, %4770 ]
  %4780 = phi float [ 0.000000e+00, %4263 ], [ %4456, %4770 ]
  %4781 = phi float [ %4220, %4263 ], [ %4457, %4770 ]
  %4782 = phi float [ %4221, %4263 ], [ %4458, %4770 ]
  %4783 = phi float [ %4222, %4263 ], [ %4459, %4770 ]
  %4784 = phi float [ %4258, %4263 ], [ %4460, %4770 ]
  %4785 = phi float [ %4259, %4263 ], [ %4461, %4770 ]
  %4786 = phi float [ %4260, %4263 ], [ %4462, %4770 ]
  %4787 = phi float [ %4228, %4263 ], [ %4463, %4770 ]
  %4788 = phi float [ %4227, %4263 ], [ %4464, %4770 ]
  %4789 = phi float [ 0.000000e+00, %4263 ], [ %4465, %4770 ]
  %4790 = phi float [ %4226, %4263 ], [ %4466, %4770 ]
  %4791 = phi float [ %4217, %4263 ], [ %4467, %4770 ]
  %4792 = phi float [ %4218, %4263 ], [ %4468, %4770 ]
  %4793 = phi float [ %4219, %4263 ], [ %4469, %4770 ]
  %4794 = call float @dx.op.dot3.f32(i32 55, float %4784, float %4785, float %4786, float %4784, float %4785, float %4786)  ; Dot3(ax,ay,az,bx,by,bz)
  %4795 = call float @dx.op.unary.f32(i32 25, float %4794)  ; Rsqrt(value)
  %4796 = fmul fast float %4795, %4784
  %4797 = fmul fast float %4795, %4785
  %4798 = fmul fast float %4795, %4786
  %4799 = fadd fast float %4789, %1217
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = call float @dx.op.dot3.f32(i32 55, float %4796, float %4797, float %4798, float %4796, float %4797, float %4798)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = call float @dx.op.unary.f32(i32 25, float %4801)  ; Rsqrt(value)
  %4803 = fmul fast float %4802, %4796
  %4804 = fmul fast float %4802, %4797
  %4805 = fmul fast float %4802, %4798
  br label %4806

; <label>:4806                                    ; preds = %4771, %4214
  %4807 = phi float [ %4803, %4771 ], [ %4258, %4214 ]
  %4808 = phi float [ %4804, %4771 ], [ %4259, %4214 ]
  %4809 = phi float [ %4805, %4771 ], [ %4260, %4214 ]
  %4810 = phi float [ %4791, %4771 ], [ %4217, %4214 ]
  %4811 = phi float [ %4792, %4771 ], [ %4218, %4214 ]
  %4812 = phi float [ %4793, %4771 ], [ %4219, %4214 ]
  %4813 = phi float [ %4781, %4771 ], [ %4220, %4214 ]
  %4814 = phi float [ %4782, %4771 ], [ %4221, %4214 ]
  %4815 = phi float [ %4783, %4771 ], [ %4222, %4214 ]
  %4816 = phi float [ %4776, %4771 ], [ %4223, %4214 ]
  %4817 = phi float [ %4777, %4771 ], [ %4224, %4214 ]
  %4818 = phi float [ %4778, %4771 ], [ %4225, %4214 ]
  %4819 = phi float [ %4790, %4771 ], [ %4226, %4214 ]
  %4820 = phi float [ %4800, %4771 ], [ %1217, %4214 ]
  %4821 = phi float [ %4788, %4771 ], [ %4227, %4214 ]
  %4822 = phi float [ %4787, %4771 ], [ %4228, %4214 ]
  %4823 = phi float [ %4780, %4771 ], [ 0.000000e+00, %4214 ]
  %4824 = phi float [ %4779, %4771 ], [ 0.000000e+00, %4214 ]
  %4825 = phi float [ %4772, %4771 ], [ 0.000000e+00, %4214 ]
  %4826 = phi float [ %4774, %4771 ], [ %4232, %4214 ]
  %4827 = phi float [ %4773, %4771 ], [ %1217, %4214 ]
  %4828 = phi float [ %4775, %4771 ], [ %4230, %4214 ]
  %4829 = fadd fast float %4819, 0xBFB99999A0000000
  %4830 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4831 = fmul fast float %4830, 0x3FF1C71C80000000
  %4832 = call float @dx.op.binary.f32(i32 36, float %4819, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4833 = fsub fast float 1.000000e+00, %4831
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = fmul fast float %4834, %4810
  %4836 = fmul fast float %4834, %4811
  %4837 = fmul fast float %4834, %4812
  %4838 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4839 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4840 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4841 = fmul fast float %4831, %4810
  %4842 = fmul fast float %4831, %4811
  %4843 = fmul fast float %4831, %4812
  %4844 = fadd fast float %4841, %4832
  %4845 = fadd fast float %4842, %4832
  %4846 = fadd fast float %4843, %4832
  %4847 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4848 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4849 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4850 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4851 = call float @dx.op.binary.f32(i32 36, float %4816, float 1.270000e+02)  ; FMin(a,b)
  %4852 = call float @dx.op.binary.f32(i32 36, float %4817, float 1.270000e+02)  ; FMin(a,b)
  %4853 = call float @dx.op.binary.f32(i32 36, float %4818, float 1.270000e+02)  ; FMin(a,b)
  %4854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.i32 %4854, 3
  %4856 = and i32 %4855, 8
  %4857 = icmp ne i32 %4856, 0
  %4858 = call float @dx.op.binary.f32(i32 35, float %4838, float %4810)  ; FMax(a,b)
  %4859 = call float @dx.op.binary.f32(i32 35, float %4839, float %4810)  ; FMax(a,b)
  %4860 = call float @dx.op.binary.f32(i32 35, float %4840, float %4810)  ; FMax(a,b)
  %4861 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4839, float %4840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4862 = select i1 %220, float %4810, float %4838
  %4863 = select i1 %220, float %4861, float %4839
  %4864 = select i1 %220, float 1.000000e+00, float %4840
  %4865 = select i1 %4857, float %4858, float %4862
  %4866 = select i1 %4857, float %4859, float %4863
  %4867 = select i1 %4857, float %4860, float %4864
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 0
  %4870 = extractvalue %dx.types.CBufRet.f32 %4868, 1
  %4871 = extractvalue %dx.types.CBufRet.f32 %4868, 2
  %4872 = fadd fast float %4869, %158
  %4873 = fadd fast float %4870, %159
  %4874 = fadd fast float %4871, %160
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 0
  %4877 = extractvalue %dx.types.CBufRet.f32 %4875, 1
  %4878 = fsub fast float %4872, %4876
  %4879 = fsub fast float %4873, %4877
  %4880 = fmul fast float %4878, %4878
  %4881 = fmul fast float %4879, %4879
  %4882 = fadd fast float %4880, %4881
  %4883 = call float @dx.op.unary.f32(i32 24, float %4882)  ; Sqrt(value)
  %4884 = extractvalue %dx.types.CBufRet.f32 %4875, 2
  %4885 = fcmp fast olt float %4883, %4884
  br i1 %4885, label %4886, label %4953

; <label>:4886                                    ; preds = %4806
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 0
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 0
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.CBufRet.f32 %4887, 1
  %4894 = extractvalue %dx.types.CBufRet.f32 %4889, 1
  %4895 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4896 = extractvalue %dx.types.CBufRet.f32 %4887, 3
  %4897 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4898 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4899 = fadd fast float %4896, %4872
  %4900 = fadd fast float %4897, %4873
  %4901 = fadd fast float %4898, %4874
  %4902 = fmul fast float %4899, %4888
  %4903 = call float @dx.op.tertiary.f32(i32 46, float %4900, float %4890, float %4902)  ; FMad(a,b,c)
  %4904 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %4892, float %4903)  ; FMad(a,b,c)
  %4905 = fmul fast float %4899, %4893
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4900, float %4894, float %4905)  ; FMad(a,b,c)
  %4907 = call float @dx.op.tertiary.f32(i32 46, float %4901, float %4895, float %4906)  ; FMad(a,b,c)
  %4908 = fsub fast float %4904, %4896
  %4909 = fsub fast float %4907, %4897
  %4910 = fsub fast float %4908, %4876
  %4911 = fadd fast float %4910, %4884
  %4912 = fsub fast float %4909, %4877
  %4913 = fadd fast float %4912, %4884
  %4914 = extractvalue %dx.types.CBufRet.f32 %4875, 3
  %4915 = fmul fast float %4911, %4914
  %4916 = fmul fast float %4913, %4914
  %4917 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4919 = fsub fast float 1.000000e+00, %4917
  %4920 = fsub fast float 1.000000e+00, %4918
  %4921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4919, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = fcmp fast ugt float %4922, 0.000000e+00
  br i1 %4923, label %4924, label %5227

; <label>:4924                                    ; preds = %4886
  %4925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.f32 %4925, 2
  %4927 = fmul fast float %4926, %4922
  %4928 = extractvalue %dx.types.CBufRet.f32 %4925, 3
  %4929 = fadd fast float %4928, %4927
  %4930 = extractvalue %dx.types.CBufRet.f32 %4891, 2
  %4931 = fadd fast float %4929, %4898
  %4932 = fmul fast float %4904, %4892
  %4933 = call float @dx.op.tertiary.f32(i32 46, float %4907, float %4895, float %4932)  ; FMad(a,b,c)
  %4934 = call float @dx.op.tertiary.f32(i32 46, float %4931, float %4930, float %4933)  ; FMad(a,b,c)
  %4935 = fsub fast float %4934, %4898
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %4938 = fsub fast float %4935, %4937
  %4939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4919, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4940 = extractvalue %dx.types.ResRet.f32 %4939, 0
  %4941 = extractvalue %dx.types.ResRet.f32 %4939, 1
  %4942 = extractvalue %dx.types.ResRet.f32 %4939, 2
  %4943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4919, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = extractvalue %dx.types.ResRet.f32 %4943, 1
  %4946 = extractvalue %dx.types.ResRet.f32 %4943, 2
  %4947 = fadd fast float %4944, %4940
  %4948 = fmul fast float %4947, 0x3F847AE140000000
  %4949 = fadd fast float %4945, %4941
  %4950 = fmul fast float %4949, 0x3F847AE140000000
  %4951 = fadd fast float %4946, %4942
  %4952 = fmul fast float %4951, 0x3F847AE140000000
  br label %5227

; <label>:4953                                    ; preds = %4806
  %4954 = and i32 %196, 1
  %4955 = icmp eq i32 %4954, 0
  br i1 %4955, label %5227, label %4956

; <label>:4956                                    ; preds = %4953
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 0
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4962 = extractvalue %dx.types.CBufRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.CBufRet.f32 %4957, 1
  %4964 = extractvalue %dx.types.CBufRet.f32 %4959, 1
  %4965 = extractvalue %dx.types.CBufRet.f32 %4961, 1
  %4966 = extractvalue %dx.types.CBufRet.f32 %4957, 3
  %4967 = extractvalue %dx.types.CBufRet.f32 %4959, 3
  %4968 = extractvalue %dx.types.CBufRet.f32 %4961, 3
  %4969 = fadd fast float %4966, %4872
  %4970 = fadd fast float %4967, %4873
  %4971 = fadd fast float %4968, %4874
  %4972 = fmul fast float %4969, %4958
  %4973 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %4960, float %4972)  ; FMad(a,b,c)
  %4974 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %4962, float %4973)  ; FMad(a,b,c)
  %4975 = fmul fast float %4969, %4963
  %4976 = call float @dx.op.tertiary.f32(i32 46, float %4970, float %4964, float %4975)  ; FMad(a,b,c)
  %4977 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %4965, float %4976)  ; FMad(a,b,c)
  %4978 = fsub fast float %4974, %4966
  %4979 = fsub fast float %4977, %4967
  %4980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4981 = extractvalue %dx.types.CBufRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.CBufRet.f32 %4980, 1
  %4983 = extractvalue %dx.types.CBufRet.f32 %4980, 2
  %4984 = extractvalue %dx.types.CBufRet.f32 %4980, 3
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 3
  %4987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.i32 %4987, 0
  %4989 = extractvalue %dx.types.CBufRet.i32 %4987, 1
  %4990 = udiv i32 %4989, %4988
  %4991 = fsub fast float %4978, %4981
  %4992 = fsub fast float %4979, %4982
  %4993 = call float @dx.op.binary.f32(i32 35, float %4991, float 0.000000e+00)  ; FMax(a,b)
  %4994 = call float @dx.op.binary.f32(i32 35, float %4992, float 0.000000e+00)  ; FMax(a,b)
  %4995 = call float @dx.op.binary.f32(i32 36, float %4993, float %4983)  ; FMin(a,b)
  %4996 = call float @dx.op.binary.f32(i32 36, float %4994, float %4984)  ; FMin(a,b)
  %4997 = add i32 %4988, -1
  %4998 = add i32 %4990, -1
  %4999 = fmul fast float %4995, %4986
  %5000 = fmul fast float %4996, %4986
  %5001 = fptoui float %4999 to i32
  %5002 = fptoui float %5000 to i32
  %5003 = call i32 @dx.op.binary.i32(i32 40, i32 %5001, i32 %4997)  ; UMin(a,b)
  %5004 = call i32 @dx.op.binary.i32(i32 40, i32 %5002, i32 %4998)  ; UMin(a,b)
  %5005 = mul i32 %5004, %4988
  %5006 = add i32 %5005, %5003
  %5007 = shl i32 %5006, 2
  %5008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5007, i32 undef)  ; BufferLoad(srv,index,wot)
  %5009 = extractvalue %dx.types.ResRet.i32 %5008, 0
  %5010 = icmp eq i32 %5009, -1
  br i1 %5010, label %5227, label %5011

; <label>:5011                                    ; preds = %4956
  %5012 = mul i32 %5009, 148
  %5013 = add i32 %5012, 4
  %5014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5013, i32 undef)  ; BufferLoad(srv,index,wot)
  %5015 = extractvalue %dx.types.ResRet.f32 %5014, 0
  %5016 = add i32 %5012, 8
  %5017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5016, i32 undef)  ; BufferLoad(srv,index,wot)
  %5018 = extractvalue %dx.types.ResRet.f32 %5017, 0
  %5019 = add i32 %5012, 36
  %5020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5019, i32 undef)  ; BufferLoad(srv,index,wot)
  %5021 = extractvalue %dx.types.ResRet.f32 %5020, 0
  %5022 = add i32 %5012, 60
  %5023 = add i32 %5012, 92
  %5024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5023, i32 undef)  ; BufferLoad(srv,index,wot)
  %5025 = extractvalue %dx.types.ResRet.i32 %5024, 0
  %5026 = add i32 %5012, 116
  %5027 = fsub fast float %4978, %5015
  %5028 = fsub fast float %4979, %5018
  %5029 = fmul fast float %4986, %5027
  %5030 = fmul fast float %4986, %5028
  %5031 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5032 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5033 = fsub fast float 1.000000e+00, %5032
  %5034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5035 = extractvalue %dx.types.CBufRet.f32 %5034, 2
  %5036 = call float @dx.op.unary.f32(i32 83, float %5031)  ; DerivCoarseX(value)
  %5037 = call float @dx.op.unary.f32(i32 83, float %5033)  ; DerivCoarseX(value)
  %5038 = call float @dx.op.unary.f32(i32 84, float %5031)  ; DerivCoarseY(value)
  %5039 = call float @dx.op.unary.f32(i32 84, float %5033)  ; DerivCoarseY(value)
  %5040 = fmul fast float %5036, %5035
  %5041 = fmul fast float %5037, %5035
  %5042 = fmul fast float %5038, %5035
  %5043 = fmul fast float %5039, %5035
  %5044 = call float @dx.op.dot2.f32(i32 54, float %5042, float %5043, float %5042, float %5043)  ; Dot2(ax,ay,bx,by)
  %5045 = call float @dx.op.dot2.f32(i32 54, float %5040, float %5041, float %5040, float %5041)  ; Dot2(ax,ay,bx,by)
  %5046 = call float @dx.op.binary.f32(i32 35, float %5045, float %5044)  ; FMax(a,b)
  %5047 = call float @dx.op.unary.f32(i32 23, float %5046)  ; Log(value)
  %5048 = fmul fast float %5047, 5.000000e-01
  %5049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.f32 %5049, 1
  %5051 = fadd fast float %5050, %5048
  %5052 = call float @dx.op.binary.f32(i32 35, float %5051, float 0.000000e+00)  ; FMax(a,b)
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 3
  %5055 = fadd fast float %5054, %5052
  %5056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5057 = extractvalue %dx.types.CBufRet.f32 %5056, 3
  %5058 = fadd fast float %5055, %5057
  %5059 = add i32 %5025, 0
  %5060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5059, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5061 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5060, i32 0)  ; GetDimensions(handle,mipLevel)
  %5062 = extractvalue %dx.types.Dimensions %5061, 0
  %5063 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5062)  ; FirstbitLo(value)
  %5064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.i32 %5064, 1
  %5066 = sub nsw i32 %5065, %5063
  %5067 = sitofp i32 %5066 to float
  %5068 = fsub fast float %5058, %5067
  %5069 = call float @dx.op.binary.f32(i32 35, float %5068, float 0.000000e+00)  ; FMax(a,b)
  %5070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5060, %dx.types.Handle %46, float %5031, float %5033, float %5021, float undef, i32 0, i32 0, i32 undef, float %5069)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5071 = extractvalue %dx.types.ResRet.f32 %5070, 0
  %5072 = fcmp ule float %5071, 0x3FE0101020000000
  %5073 = extractvalue %dx.types.CBufRet.i32 %5064, 0
  %5074 = and i32 %5073, 128
  %5075 = icmp ne i32 %5074, 0
  %5076 = and i1 %5072, %5075
  br i1 %5076, label %5227, label %5077

; <label>:5077                                    ; preds = %5011
  %5078 = add i32 %5012, 20
  %5079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5078, i32 undef)  ; BufferLoad(srv,index,wot)
  %5080 = extractvalue %dx.types.ResRet.f32 %5079, 0
  %5081 = add i32 %5012, 24
  %5082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5081, i32 undef)  ; BufferLoad(srv,index,wot)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = add i32 %5012, 40
  %5085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5084, i32 undef)  ; BufferLoad(srv,index,wot)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 0
  %5087 = add i32 %5012, 96
  %5088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5087, i32 undef)  ; BufferLoad(srv,index,wot)
  %5089 = extractvalue %dx.types.ResRet.i32 %5088, 0
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 2
  %5092 = fmul fast float %5091, %5031
  %5093 = fmul fast float %5091, %5033
  %5094 = extractvalue %dx.types.CBufRet.f32 %5090, 3
  %5095 = fadd fast float %5092, %5094
  %5096 = fadd fast float %5093, %5094
  %5097 = add i32 %5089, 0
  %5098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5097, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5099 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5098, i32 0)  ; GetDimensions(handle,mipLevel)
  %5100 = extractvalue %dx.types.Dimensions %5099, 0
  %5101 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5100)  ; FirstbitLo(value)
  %5102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.i32 %5102, 1
  %5104 = sub nsw i32 %5103, %5101
  %5105 = sitofp i32 %5104 to float
  %5106 = fsub fast float %5055, %5105
  %5107 = call float @dx.op.binary.f32(i32 35, float %5106, float 0.000000e+00)  ; FMax(a,b)
  %5108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5098, %dx.types.Handle %46, float %5095, float %5096, float %5086, float undef, i32 0, i32 0, i32 undef, float %5107)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  %5110 = fmul fast float %5109, %5080
  %5111 = fadd fast float %5110, %5083
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.CBufRet.f32 %5112, 1
  %5115 = extractvalue %dx.types.CBufRet.f32 %5112, 2
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5116, 3
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 3
  %5120 = extractvalue %dx.types.CBufRet.f32 %5112, 3
  %5121 = fadd fast float %5117, %4978
  %5122 = fadd fast float %5119, %4979
  %5123 = fadd fast float %5111, %5120
  %5124 = fmul fast float %5121, %5113
  %5125 = call float @dx.op.tertiary.f32(i32 46, float %5122, float %5114, float %5124)  ; FMad(a,b,c)
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %5123, float %5115, float %5125)  ; FMad(a,b,c)
  %5127 = fsub fast float %5126, %5120
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 2
  %5130 = fsub fast float %5127, %5129
  %5131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.i32 %5131, 0
  %5133 = call i32 @dx.op.binary.i32(i32 40, i32 %5009, i32 %5132)  ; UMin(a,b)
  %5134 = mul i32 %5133, 36
  %5135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5134, i32 undef)  ; BufferLoad(srv,index,wot)
  %5136 = extractvalue %dx.types.ResRet.i32 %5135, 0
  %5137 = add i32 %5134, 4
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 0
  %5140 = fmul fast float %5139, %5031
  %5141 = fmul fast float %5139, %5033
  %5142 = extractvalue %dx.types.CBufRet.f32 %5138, 1
  %5143 = fadd fast float %5140, %5142
  %5144 = fadd fast float %5141, %5142
  %5145 = icmp eq i32 %5136, 0
  br i1 %5145, label %5214, label %5146

; <label>:5146                                    ; preds = %5077
  br label %5147

; <label>:5147                                    ; preds = %5204, %5146
  %5148 = phi float [ %5205, %5204 ], [ 0.000000e+00, %5146 ]
  %5149 = phi float [ %5206, %5204 ], [ 0.000000e+00, %5146 ]
  %5150 = phi float [ %5207, %5204 ], [ 0.000000e+00, %5146 ]
  %5151 = phi float [ %5208, %5204 ], [ 0.000000e+00, %5146 ]
  %5152 = phi float [ %5209, %5204 ], [ 0.000000e+00, %5146 ]
  %5153 = phi float [ %5210, %5204 ], [ 0.000000e+00, %5146 ]
  %5154 = phi i32 [ %5211, %5204 ], [ 0, %5146 ]
  %5155 = shl i32 %5154, 2
  %5156 = add i32 %5022, %5155
  %5157 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5156, i32 undef)  ; BufferLoad(srv,index,wot)
  %5158 = extractvalue %dx.types.ResRet.f32 %5157, 0
  %5159 = add i32 %5026, %5155
  %5160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5159, i32 undef)  ; BufferLoad(srv,index,wot)
  %5161 = extractvalue %dx.types.ResRet.i32 %5160, 0
  %5162 = add i32 %5161, 0
  %5163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5162, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5164 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5163, i32 0)  ; GetDimensions(handle,mipLevel)
  %5165 = extractvalue %dx.types.Dimensions %5164, 0
  %5166 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5165)  ; FirstbitLo(value)
  %5167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.i32 %5167, 1
  %5169 = sub nsw i32 %5168, %5166
  %5170 = sitofp i32 %5169 to float
  %5171 = fsub fast float %5055, %5170
  %5172 = call float @dx.op.binary.f32(i32 35, float %5171, float 0.000000e+00)  ; FMax(a,b)
  %5173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5163, %dx.types.Handle %46, float %5143, float %5144, float %5158, float undef, i32 0, i32 0, i32 undef, float %5172)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5174 = extractvalue %dx.types.ResRet.f32 %5173, 0
  %5175 = fcmp fast ogt float %5174, 0.000000e+00
  br i1 %5175, label %5176, label %5204

; <label>:5176                                    ; preds = %5147
  %5177 = add i32 %5137, %5155
  %5178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5177, i32 undef)  ; BufferLoad(srv,index,wot)
  %5179 = extractvalue %dx.types.ResRet.i32 %5178, 0
  %5180 = and i32 %5179, 32767
  %5181 = mul nuw nsw i32 %5180, 928
  %5182 = add nuw nsw i32 %5181, 48
  %5183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5182, i32 undef)  ; BufferLoad(srv,index,wot)
  %5184 = extractvalue %dx.types.ResRet.f32 %5183, 0
  %5185 = extractvalue %dx.types.ResRet.f32 %5183, 1
  %5186 = extractvalue %dx.types.ResRet.f32 %5183, 2
  %5187 = add nuw nsw i32 %5181, 60
  %5188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5187, i32 undef)  ; BufferLoad(srv,index,wot)
  %5189 = extractvalue %dx.types.ResRet.f32 %5188, 0
  %5190 = extractvalue %dx.types.ResRet.f32 %5188, 1
  %5191 = extractvalue %dx.types.ResRet.f32 %5188, 2
  %5192 = fmul fast float %5184, %5174
  %5193 = fmul fast float %5185, %5174
  %5194 = fmul fast float %5186, %5174
  %5195 = fadd fast float %5192, %5148
  %5196 = fadd fast float %5193, %5149
  %5197 = fadd fast float %5194, %5150
  %5198 = fmul fast float %5189, %5174
  %5199 = fmul fast float %5190, %5174
  %5200 = fmul fast float %5191, %5174
  %5201 = fadd fast float %5198, %5151
  %5202 = fadd fast float %5199, %5152
  %5203 = fadd fast float %5200, %5153
  br label %5204

; <label>:5204                                    ; preds = %5176, %5147
  %5205 = phi float [ %5195, %5176 ], [ %5148, %5147 ]
  %5206 = phi float [ %5196, %5176 ], [ %5149, %5147 ]
  %5207 = phi float [ %5197, %5176 ], [ %5150, %5147 ]
  %5208 = phi float [ %5201, %5176 ], [ %5151, %5147 ]
  %5209 = phi float [ %5202, %5176 ], [ %5152, %5147 ]
  %5210 = phi float [ %5203, %5176 ], [ %5153, %5147 ]
  %5211 = add nuw i32 %5154, 1
  %5212 = icmp eq i32 %5211, %5136
  br i1 %5212, label %5213, label %5147

; <label>:5213                                    ; preds = %5204
  br label %5214

; <label>:5214                                    ; preds = %5213, %5077
  %5215 = phi float [ 0.000000e+00, %5077 ], [ %5205, %5213 ]
  %5216 = phi float [ 0.000000e+00, %5077 ], [ %5206, %5213 ]
  %5217 = phi float [ 0.000000e+00, %5077 ], [ %5207, %5213 ]
  %5218 = phi float [ 0.000000e+00, %5077 ], [ %5208, %5213 ]
  %5219 = phi float [ 0.000000e+00, %5077 ], [ %5209, %5213 ]
  %5220 = phi float [ 0.000000e+00, %5077 ], [ %5210, %5213 ]
  %5221 = fadd fast float %5218, %5215
  %5222 = fmul fast float %5221, 0x3F847AE140000000
  %5223 = fadd fast float %5219, %5216
  %5224 = fmul fast float %5223, 0x3F847AE140000000
  %5225 = fadd fast float %5220, %5217
  %5226 = fmul fast float %5225, 0x3F847AE140000000
  br label %5227

; <label>:5227                                    ; preds = %5214, %5011, %4956, %4953, %4924, %4886
  %5228 = phi float [ %4938, %4924 ], [ -1.310720e+05, %4886 ], [ %5130, %5214 ], [ -1.310720e+05, %4956 ], [ -1.310720e+05, %5011 ], [ -1.310720e+05, %4953 ]
  %5229 = phi float [ %4948, %4924 ], [ 0.000000e+00, %4886 ], [ %5222, %5214 ], [ 0.000000e+00, %4956 ], [ 0.000000e+00, %5011 ], [ 0.000000e+00, %4953 ]
  %5230 = phi float [ %4950, %4924 ], [ 0.000000e+00, %4886 ], [ %5224, %5214 ], [ 0.000000e+00, %4956 ], [ 0.000000e+00, %5011 ], [ 0.000000e+00, %4953 ]
  %5231 = phi float [ %4952, %4924 ], [ 0.000000e+00, %4886 ], [ %5226, %5214 ], [ 0.000000e+00, %4956 ], [ 0.000000e+00, %5011 ], [ 0.000000e+00, %4953 ]
  %5232 = phi i1 [ true, %4924 ], [ false, %4886 ], [ true, %5214 ], [ false, %4956 ], [ false, %5011 ], [ false, %4953 ]
  %5233 = and i32 %196, 3
  %5234 = icmp eq i32 %5233, 1
  %5235 = select i1 %5234, float 1.000000e+00, float 0.000000e+00
  %5236 = fsub fast float %5228, %160
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = select i1 %5232, float %5237, float 1.000000e+00
  %5239 = fmul fast float %5238, %5235
  %5240 = icmp eq i32 %5233, 3
  %5241 = select i1 %5240, float 1.000000e+00, float %5239
  %5242 = call float @dx.op.binary.f32(i32 35, float %4825, float %5241)  ; FMax(a,b)
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fcmp fast une float %5243, 0.000000e+00
  %5245 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = call float @dx.op.unary.f32(i32 25, float %5245)  ; Rsqrt(value)
  br i1 %5244, label %5254, label %5247

; <label>:5247                                    ; preds = %5227
  %5248 = fmul fast float %5246, %158
  %5249 = fmul fast float %5246, %159
  %5250 = fmul fast float %5246, %160
  %5251 = fsub fast float -0.000000e+00, %5248
  %5252 = fsub fast float -0.000000e+00, %5249
  %5253 = fsub fast float -0.000000e+00, %5250
  br label %5422

; <label>:5254                                    ; preds = %5227
  %5255 = fmul fast float %158, %5246
  %5256 = fsub fast float -0.000000e+00, %5255
  %5257 = fmul fast float %159, %5246
  %5258 = fsub fast float -0.000000e+00, %5257
  %5259 = fmul fast float %160, %5246
  %5260 = fsub fast float -0.000000e+00, %5259
  %5261 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5258, float %5260, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5262 = fmul fast float %5243, 2.500000e+00
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = fmul fast float %5243, 0x4013FFFFE0000000
  %5265 = fadd fast float %5264, 0xBFFFFFFFE0000000
  %5266 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5267 = fmul fast float %5243, 0x4004000020000000
  %5268 = fadd fast float %5267, 0xBFF8000040000000
  %5269 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5270 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5271 = fmul fast float %4829, 1.000000e+01
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %5272, 2.000000e+00
  %5274 = fsub fast float 3.000000e+00, %5273
  %5275 = fmul fast float %5272, %5272
  %5276 = fmul fast float %5275, %5274
  %5277 = fsub fast float 1.000000e+00, %5276
  %5278 = fsub fast float 0x3FE3333340000000, %4850
  %5279 = fmul fast float %5278, 0x400AAAAAA0000000
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = fmul fast float %5277, %5280
  %5282 = fmul fast float %4865, 0x3FEA2B8620000000
  %5283 = fmul fast float %4866, 0x3FEA2B8620000000
  %5284 = fmul fast float %4867, 0x3FEA2B8620000000
  %5285 = fadd fast float %5282, 0x3FC81DFBA0000000
  %5286 = fmul fast float %5285, %4865
  %5287 = fadd fast float %5286, 0x3F910E6020000000
  %5288 = fadd fast float %5283, 0x3FC81DFBA0000000
  %5289 = fmul fast float %5288, %4866
  %5290 = fadd fast float %5289, 0x3F910E6020000000
  %5291 = fadd fast float %5284, 0x3FC81DFBA0000000
  %5292 = fmul fast float %5291, %4867
  %5293 = fadd fast float %5292, 0x3F910E6020000000
  %5294 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5295 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5296 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5297 = fsub fast float %5294, %4865
  %5298 = fsub fast float %5295, %4866
  %5299 = fsub fast float %5296, %4867
  %5300 = fmul fast float %5297, %5270
  %5301 = fmul fast float %5300, %5281
  %5302 = fmul fast float %5298, %5270
  %5303 = fmul fast float %5302, %5281
  %5304 = fmul fast float %5299, %5270
  %5305 = fmul fast float %5304, %5281
  %5306 = fadd fast float %5301, %4865
  %5307 = fadd fast float %5303, %4866
  %5308 = fadd fast float %5305, %4867
  %5309 = fmul fast float %4822, %4822
  %5310 = fmul fast float %5309, %5309
  %5311 = fadd fast float %5266, 1.000000e+00
  %5312 = fsub fast float %5311, %5281
  %5313 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5314 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = fsub fast float 1.000000e+00, %5310
  %5317 = call float @dx.op.binary.f32(i32 36, float %5313, float %5316)  ; FMin(a,b)
  %5318 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5319 = call float @dx.op.binary.f32(i32 35, float %5317, float %5318)  ; FMax(a,b)
  %5320 = fadd fast float %5315, 0xBFE4CCCCC0000000
  %5321 = fmul fast float %5320, 0x4006DB6DA0000000
  %5322 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5323 = fmul fast float %5322, 2.000000e+00
  %5324 = fsub fast float 3.000000e+00, %5323
  %5325 = bitcast float %4847 to i32
  %5326 = ashr i32 %5325, 1
  %5327 = add nsw i32 %5326, 532487669
  %5328 = bitcast i32 %5327 to float
  %5329 = fsub fast float 1.000000e+00, %5328
  %5330 = bitcast float %5329 to i32
  %5331 = sub nsw i32 2129859010, %5330
  %5332 = bitcast i32 %5331 to float
  %5333 = fmul fast float %5332, 2.000000e+00
  %5334 = bitcast float %4848 to i32
  %5335 = ashr i32 %5334, 1
  %5336 = add nsw i32 %5335, 532487669
  %5337 = bitcast i32 %5336 to float
  %5338 = fsub fast float 1.000000e+00, %5337
  %5339 = bitcast float %5338 to i32
  %5340 = sub nsw i32 2129859010, %5339
  %5341 = bitcast i32 %5340 to float
  %5342 = fmul fast float %5341, 2.000000e+00
  %5343 = bitcast float %4849 to i32
  %5344 = ashr i32 %5343, 1
  %5345 = add nsw i32 %5344, 532487669
  %5346 = bitcast i32 %5345 to float
  %5347 = fsub fast float 1.000000e+00, %5346
  %5348 = bitcast float %5347 to i32
  %5349 = sub nsw i32 2129859010, %5348
  %5350 = bitcast i32 %5349 to float
  %5351 = fmul fast float %5350, 2.000000e+00
  %5352 = fsub fast float 0x4002A9FBE0000000, %5333
  %5353 = fadd fast float %5333, 0x3FD54FDF00000000
  %5354 = bitcast float %5353 to i32
  %5355 = sub nsw i32 2129859010, %5354
  %5356 = bitcast i32 %5355 to float
  %5357 = fmul fast float %5356, %5352
  %5358 = fmul fast float %5357, %5357
  %5359 = fsub fast float 0x4002A9FBE0000000, %5342
  %5360 = fadd fast float %5342, 0x3FD54FDF00000000
  %5361 = bitcast float %5360 to i32
  %5362 = sub nsw i32 2129859010, %5361
  %5363 = bitcast i32 %5362 to float
  %5364 = fmul fast float %5363, %5359
  %5365 = fmul fast float %5364, %5364
  %5366 = fsub fast float 0x4002A9FBE0000000, %5351
  %5367 = fadd fast float %5351, 0x3FD54FDF00000000
  %5368 = bitcast float %5367 to i32
  %5369 = sub nsw i32 2129859010, %5368
  %5370 = bitcast i32 %5369 to float
  %5371 = fmul fast float %5370, %5366
  %5372 = fmul fast float %5371, %5371
  %5373 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5358)  ; FMax(a,b)
  %5374 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5365)  ; FMax(a,b)
  %5375 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5372)  ; FMax(a,b)
  %5376 = fsub fast float 1.000000e+00, %5261
  %5377 = fadd fast float %5376, %5277
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = fsub fast float 1.000000e+00, %5241
  %5380 = fmul fast float %5319, %5379
  %5381 = fmul fast float %5322, %5322
  %5382 = fmul fast float %5381, %5380
  %5383 = fmul fast float %5382, %5324
  %5384 = fmul fast float %5379, 0xBFE99999A0000000
  %5385 = fmul fast float %5384, %5270
  %5386 = fmul fast float %5385, %5281
  %5387 = fadd fast float %5386, 1.000000e+00
  %5388 = fadd fast float %4850, -1.000000e+00
  %5389 = fmul fast float %5387, %5388
  %5390 = fadd fast float %5389, 1.000000e+00
  %5391 = fsub fast float %5373, %4847
  %5392 = fsub fast float %5374, %4848
  %5393 = fsub fast float %5375, %4849
  %5394 = fmul fast float %5383, %5391
  %5395 = fmul fast float %5383, %5392
  %5396 = fmul fast float %5383, %5393
  %5397 = fadd fast float %5394, %4847
  %5398 = fadd fast float %5395, %4848
  %5399 = fadd fast float %5396, %4849
  %5400 = fsub fast float %102, %4807
  %5401 = fsub fast float %103, %4808
  %5402 = fsub fast float %104, %4809
  %5403 = fmul fast float %5383, %5400
  %5404 = fmul fast float %5383, %5401
  %5405 = fmul fast float %5383, %5402
  %5406 = fadd fast float %5403, %4807
  %5407 = fadd fast float %5404, %4808
  %5408 = fadd fast float %5405, %4809
  %5409 = fmul fast float %5383, %5378
  %5410 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5411 = fsub fast float 1.000000e+00, %5410
  %5412 = fmul fast float %5409, %5411
  %5413 = fadd fast float %5412, %5410
  %5414 = fsub fast float 1.000000e+00, %4822
  %5415 = fmul fast float %5383, %5414
  %5416 = fadd fast float %5415, %4822
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5407, float %5408, float %5406, float %5407, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = call float @dx.op.unary.f32(i32 25, float %5417)  ; Rsqrt(value)
  %5419 = fmul fast float %5406, %5418
  %5420 = fmul fast float %5407, %5418
  %5421 = fmul fast float %5408, %5418
  br label %5422

; <label>:5422                                    ; preds = %5254, %5247
  %5423 = phi float [ %5253, %5247 ], [ %5260, %5254 ]
  %5424 = phi float [ %5252, %5247 ], [ %5258, %5254 ]
  %5425 = phi float [ %5251, %5247 ], [ %5256, %5254 ]
  %5426 = phi float [ %5250, %5247 ], [ %5259, %5254 ]
  %5427 = phi float [ %5249, %5247 ], [ %5257, %5254 ]
  %5428 = phi float [ %5248, %5247 ], [ %5255, %5254 ]
  %5429 = phi float [ %4847, %5247 ], [ %5397, %5254 ]
  %5430 = phi float [ %4848, %5247 ], [ %5398, %5254 ]
  %5431 = phi float [ %4849, %5247 ], [ %5399, %5254 ]
  %5432 = phi float [ %4865, %5247 ], [ %5306, %5254 ]
  %5433 = phi float [ %4866, %5247 ], [ %5307, %5254 ]
  %5434 = phi float [ %4867, %5247 ], [ %5308, %5254 ]
  %5435 = phi float [ %4807, %5247 ], [ %5419, %5254 ]
  %5436 = phi float [ %4808, %5247 ], [ %5420, %5254 ]
  %5437 = phi float [ %4809, %5247 ], [ %5421, %5254 ]
  %5438 = phi float [ %4850, %5247 ], [ %5413, %5254 ]
  %5439 = phi float [ %4822, %5247 ], [ %5416, %5254 ]
  %5440 = fsub fast float -0.000000e+00, %160
  %5441 = select i1 %220, float 0.000000e+00, float %5431
  %5442 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float %5425, float %5424, float %5423)  ; Dot3(ax,ay,az,bx,by,bz)
  %5443 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5428, float %5427, float %5426, float %5435, float %5436, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = fmul fast float %5444, 2.000000e+00
  %5446 = fmul fast float %5445, %5435
  %5447 = fmul fast float %5445, %5436
  %5448 = fmul fast float %5445, %5437
  %5449 = fsub fast float %5428, %5446
  %5450 = fsub fast float %5427, %5447
  %5451 = fsub fast float %5426, %5448
  %5452 = call float @dx.op.binary.f32(i32 36, float %5439, float 1.000000e+00)  ; FMin(a,b)
  %5453 = fsub fast float 1.000000e+00, %5439
  %5454 = bitcast float %5453 to i32
  %5455 = sub nsw i32 2129859010, %5454
  %5456 = bitcast i32 %5455 to float
  %5457 = fsub fast float 1.000000e+00, %66
  %5458 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = call float @dx.op.binary.f32(i32 35, float %5458, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5460 = fdiv fast float %5457, %5459
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5463 = fmul fast float %5462, 5.000000e-01
  %5464 = fadd fast float %5463, 5.000000e-01
  %5465 = fmul fast float %5464, %66
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5468 = fmul fast float %5467, %5460
  %5469 = fadd fast float %5465, %5468
  %5470 = fsub fast float 5.000000e-01, %5463
  %5471 = fmul fast float %5470, %5432
  %5472 = fmul fast float %5470, %5433
  %5473 = fmul fast float %5470, %5434
  %5474 = fadd fast float %5469, %5471
  %5475 = fadd fast float %5469, %5472
  %5476 = fadd fast float %5469, %5473
  %5477 = call float @dx.op.dot3.f32(i32 55, float %5449, float %5450, float %5451, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5479 = fmul fast float %5478, 5.000000e-01
  %5480 = fadd fast float %5479, 5.000000e-01
  %5481 = fmul fast float %5480, %66
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5449, float %5450, float %5451, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = fmul fast float %5483, %5460
  %5485 = fadd fast float %5481, %5484
  %5486 = fsub fast float 5.000000e-01, %5479
  %5487 = fmul fast float %5486, %5432
  %5488 = fmul fast float %5486, %5433
  %5489 = fmul fast float %5486, %5434
  %5490 = fadd fast float %5485, %5487
  %5491 = fadd fast float %5485, %5488
  %5492 = fadd fast float %5485, %5489
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  %5495 = call float @dx.op.binary.f32(i32 36, float %5432, float %5494)  ; FMin(a,b)
  %5496 = fsub fast float 1.000000e+00, %5452
  %5497 = fmul fast float %5495, %5496
  %5498 = fsub fast float 1.000000e+00, %5497
  %5499 = bitcast float %5498 to i32
  %5500 = sub nsw i32 2129859010, %5499
  %5501 = bitcast i32 %5500 to float
  %5502 = call float @dx.op.binary.f32(i32 36, float %5433, float %5494)  ; FMin(a,b)
  %5503 = fmul fast float %5502, %5496
  %5504 = fsub fast float 1.000000e+00, %5503
  %5505 = bitcast float %5504 to i32
  %5506 = sub nsw i32 2129859010, %5505
  %5507 = bitcast i32 %5506 to float
  %5508 = call float @dx.op.binary.f32(i32 36, float %5434, float %5494)  ; FMin(a,b)
  %5509 = fmul fast float %5508, %5496
  %5510 = fsub fast float 1.000000e+00, %5509
  %5511 = bitcast float %5510 to i32
  %5512 = sub nsw i32 2129859010, %5511
  %5513 = bitcast i32 %5512 to float
  %5514 = fmul fast float %5452, %67
  %5515 = fmul fast float %5514, %5474
  %5516 = fmul fast float %5515, %5501
  %5517 = fmul fast float %5452, %68
  %5518 = fmul fast float %5517, %5475
  %5519 = fmul fast float %5518, %5507
  %5520 = fmul fast float %5452, %69
  %5521 = fmul fast float %5520, %5476
  %5522 = fmul fast float %5521, %5513
  %5523 = call float @dx.op.binary.f32(i32 36, float %5429, float %5494)  ; FMin(a,b)
  %5524 = fmul fast float %5523, %5496
  %5525 = fsub fast float 1.000000e+00, %5524
  %5526 = bitcast float %5525 to i32
  %5527 = sub nsw i32 2129859010, %5526
  %5528 = bitcast i32 %5527 to float
  %5529 = call float @dx.op.binary.f32(i32 36, float %5430, float %5494)  ; FMin(a,b)
  %5530 = fmul fast float %5529, %5496
  %5531 = fsub fast float 1.000000e+00, %5530
  %5532 = bitcast float %5531 to i32
  %5533 = sub nsw i32 2129859010, %5532
  %5534 = bitcast i32 %5533 to float
  %5535 = call float @dx.op.binary.f32(i32 36, float %5441, float %5494)  ; FMin(a,b)
  %5536 = fmul fast float %5535, %5496
  %5537 = fsub fast float 1.000000e+00, %5536
  %5538 = bitcast float %5537 to i32
  %5539 = sub nsw i32 2129859010, %5538
  %5540 = bitcast i32 %5539 to float
  %5541 = fmul fast float %5514, %5490
  %5542 = fmul fast float %5541, %5528
  %5543 = fmul fast float %5517, %5491
  %5544 = fmul fast float %5543, %5534
  %5545 = fmul fast float %5520, %5492
  %5546 = fmul fast float %5545, %5540
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5519, float %5522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = select i1 %220, float 0.000000e+00, float %5516
  %5549 = select i1 %220, float %5547, float %5519
  %5550 = select i1 %220, float 0.000000e+00, float %5522
  %5551 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5544, float %5546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = select i1 %220, float 0.000000e+00, float %5542
  %5553 = select i1 %220, float %5551, float %5544
  %5554 = select i1 %220, float 0.000000e+00, float %5546
  %5555 = fmul fast float %4229, %4229
  %5556 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5557 = fmul fast float %5443, 9.843750e-01
  %5558 = fmul fast float %5438, 9.843750e-01
  %5559 = fadd fast float %5557, 7.812500e-03
  %5560 = fadd fast float %5558, 7.812500e-03
  %5561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5559, float %5560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5562 = extractvalue %dx.types.ResRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.ResRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.ResRet.f32 %5561, 2
  %5565 = extractvalue %dx.types.ResRet.f32 %5561, 3
  %5566 = fsub fast float 1.000000e+00, %5556
  %5567 = fsub fast float %5564, %5562
  %5568 = fsub fast float %5565, %5563
  %5569 = fmul fast float %5567, %5566
  %5570 = fmul fast float %5568, %5566
  %5571 = fadd fast float %5569, %5562
  %5572 = fadd fast float %5570, %5563
  %5573 = fmul fast float %5571, %5429
  %5574 = fmul fast float %5571, %5430
  %5575 = fmul fast float %5571, %5441
  %5576 = fadd fast float %5573, %5572
  %5577 = fadd fast float %5574, %5572
  %5578 = fadd fast float %5575, %5572
  %5579 = fcmp fast ogt float %4823, 0.000000e+00
  br i1 %5579, label %5580, label %5606

; <label>:5580                                    ; preds = %5422
  %5581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4823, float %5443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5582 = extractvalue %dx.types.ResRet.f32 %5581, 0
  %5583 = extractvalue %dx.types.ResRet.f32 %5581, 1
  %5584 = extractvalue %dx.types.ResRet.f32 %5581, 2
  %5585 = fadd fast float %5582, -5.000000e-01
  %5586 = fadd fast float %5583, -5.000000e-01
  %5587 = fadd fast float %5584, -5.000000e-01
  %5588 = fsub fast float 1.000000e+00, %5429
  %5589 = fsub fast float 1.000000e+00, %5430
  %5590 = fsub fast float 1.000000e+00, %5441
  %5591 = fmul fast float %5429, 4.000000e+00
  %5592 = fmul fast float %5591, %5588
  %5593 = fmul fast float %5592, %5585
  %5594 = fmul fast float %5430, 4.000000e+00
  %5595 = fmul fast float %5594, %5589
  %5596 = fmul fast float %5595, %5586
  %5597 = fmul fast float %5441, 4.000000e+00
  %5598 = fmul fast float %5597, %5590
  %5599 = fmul fast float %5598, %5587
  %5600 = fadd fast float %5593, %5576
  %5601 = fadd fast float %5596, %5577
  %5602 = fadd fast float %5599, %5578
  %5603 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5604 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5605 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  br label %5606

; <label>:5606                                    ; preds = %5580, %5422
  %5607 = phi float [ %5603, %5580 ], [ %5576, %5422 ]
  %5608 = phi float [ %5604, %5580 ], [ %5577, %5422 ]
  %5609 = phi float [ %5605, %5580 ], [ %5578, %5422 ]
  %5610 = call float @dx.op.binary.f32(i32 35, float %5608, float %5609)  ; FMax(a,b)
  %5611 = call float @dx.op.binary.f32(i32 35, float %5607, float %5610)  ; FMax(a,b)
  %5612 = fsub fast float 1.000000e+00, %5611
  %5613 = fmul fast float %5612, %5548
  %5614 = fmul fast float %5612, %5549
  %5615 = fmul fast float %5612, %5550
  %5616 = call float @dx.op.dot3.f32(i32 55, float %5432, float %5433, float %5434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = fcmp fast ogt float %5616, 0x3E7FF19E20000000
  %5618 = fdiv fast float 1.000000e+00, %5616
  %5619 = select i1 %5617, float %5618, float 0.000000e+00
  %5620 = fmul fast float %5619, %5432
  %5621 = fmul fast float %5619, %5433
  %5622 = fmul fast float %5619, %5434
  %5623 = fadd fast float %5620, -1.000000e+00
  %5624 = fadd fast float %5621, -1.000000e+00
  %5625 = fadd fast float %5622, -1.000000e+00
  %5626 = fmul fast float %5623, 5.000000e-01
  %5627 = fmul fast float %5624, 5.000000e-01
  %5628 = fmul fast float %5625, 5.000000e-01
  %5629 = fadd fast float %5626, 1.000000e+00
  %5630 = fadd fast float %5627, 1.000000e+00
  %5631 = fadd fast float %5628, 1.000000e+00
  %5632 = call float @dx.op.binary.f32(i32 35, float %5443, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5633 = fdiv fast float %4229, %5632
  %5634 = fcmp fast olt float %4851, 1.270000e+02
  %5635 = fcmp fast olt float %4852, 1.270000e+02
  %5636 = fcmp fast olt float %4853, 1.270000e+02
  %5637 = fmul fast float %4851, 0xBFF7154760000000
  %5638 = fmul fast float %5637, %5633
  %5639 = fmul fast float %4852, 0xBFF7154760000000
  %5640 = fmul fast float %5639, %5633
  %5641 = fmul fast float %4853, 0xBFF7154760000000
  %5642 = fmul fast float %5641, %5633
  %5643 = call float @dx.op.unary.f32(i32 21, float %5638)  ; Exp(value)
  %5644 = call float @dx.op.unary.f32(i32 21, float %5640)  ; Exp(value)
  %5645 = call float @dx.op.unary.f32(i32 21, float %5642)  ; Exp(value)
  %5646 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5647 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5648 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5649 = select i1 %5634, float %5646, float 0.000000e+00
  %5650 = select i1 %5635, float %5647, float 0.000000e+00
  %5651 = select i1 %5636, float %5648, float 0.000000e+00
  %5652 = fmul fast float %5649, %5612
  %5653 = fmul fast float %5650, %5612
  %5654 = fmul fast float %5651, %5612
  %5655 = fadd fast float %5652, -1.000000e+00
  %5656 = fadd fast float %5653, -1.000000e+00
  %5657 = fadd fast float %5654, -1.000000e+00
  %5658 = fmul fast float %5607, %5552
  %5659 = fmul fast float %5608, %5553
  %5660 = fmul fast float %5609, %5554
  %5661 = fsub fast float 1.000000e+00, %5443
  %5662 = bitcast float %5661 to i32
  %5663 = sitofp i32 %5662 to float
  %5664 = fmul fast float %5663, 5.000000e+00
  %5665 = fadd fast float %5664, 0xC1EFBF8940000000
  %5666 = fptosi float %5665 to i32
  %5667 = bitcast i32 %5666 to float
  %5668 = fmul fast float %5667, %4824
  %5669 = fmul fast float %5548, %5668
  %5670 = fmul fast float %5669, %5612
  %5671 = fmul fast float %5670, %5629
  %5672 = fmul fast float %5549, %5668
  %5673 = fmul fast float %5672, %5612
  %5674 = fmul fast float %5673, %5630
  %5675 = fmul fast float %5550, %5668
  %5676 = fmul fast float %5675, %5612
  %5677 = fmul fast float %5676, %5631
  %5678 = fmul fast float %5613, %4820
  %5679 = fmul fast float %5614, %4820
  %5680 = fmul fast float %5615, %4820
  %5681 = fadd fast float %5658, %4813
  %5682 = fadd fast float %5681, %5671
  %5683 = fmul fast float %5682, %4820
  %5684 = fadd fast float %5659, %4814
  %5685 = fadd fast float %5684, %5674
  %5686 = fmul fast float %5685, %4820
  %5687 = fadd fast float %5660, %4815
  %5688 = fadd fast float %5687, %5677
  %5689 = fmul fast float %5688, %4820
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 3
  %5692 = fcmp fast oeq float %5691, 0.000000e+00
  br i1 %5692, label %6774, label %5693

; <label>:5693                                    ; preds = %5606
  %5694 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5695 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5696 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.CBufRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.CBufRet.f32 %5697, 2
  %5701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5701, 0
  %5703 = extractvalue %dx.types.CBufRet.f32 %5701, 1
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5698, float %5699, float %5700, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = select i1 %220, float %5702, float %5698
  %5706 = select i1 %220, float %5704, float %5699
  %5707 = select i1 %220, float %5703, float %5700
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 2
  %5710 = fmul fast float %5709, %102
  %5711 = fmul fast float %5709, %103
  %5712 = fmul fast float %5709, %104
  %5713 = fadd fast float %5710, %158
  %5714 = fadd fast float %5711, %159
  %5715 = fadd fast float %5712, %160
  %5716 = fcmp fast olt float %5691, 0.000000e+00
  br i1 %5716, label %6341, label %5717

; <label>:5717                                    ; preds = %5693
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5722 = extractvalue %dx.types.CBufRet.f32 %5718, 3
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.CBufRet.f32 %5723, 1
  %5726 = extractvalue %dx.types.CBufRet.f32 %5723, 2
  %5727 = extractvalue %dx.types.CBufRet.f32 %5723, 3
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.CBufRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5732 = extractvalue %dx.types.CBufRet.f32 %5728, 3
  %5733 = fmul fast float %5719, %5713
  %5734 = call float @dx.op.tertiary.f32(i32 46, float %5714, float %5720, float %5733)  ; FMad(a,b,c)
  %5735 = call float @dx.op.tertiary.f32(i32 46, float %5715, float %5721, float %5734)  ; FMad(a,b,c)
  %5736 = fadd fast float %5735, %5722
  %5737 = fmul fast float %5724, %5713
  %5738 = call float @dx.op.tertiary.f32(i32 46, float %5714, float %5725, float %5737)  ; FMad(a,b,c)
  %5739 = call float @dx.op.tertiary.f32(i32 46, float %5715, float %5726, float %5738)  ; FMad(a,b,c)
  %5740 = fadd fast float %5739, %5727
  %5741 = fmul fast float %5729, %5713
  %5742 = call float @dx.op.tertiary.f32(i32 46, float %5714, float %5730, float %5741)  ; FMad(a,b,c)
  %5743 = call float @dx.op.tertiary.f32(i32 46, float %5715, float %5731, float %5742)  ; FMad(a,b,c)
  %5744 = fadd fast float %5743, %5732
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.CBufRet.f32 %5745, 3
  %5749 = fmul fast float %5748, %5736
  %5750 = fmul fast float %5748, %5740
  %5751 = fadd fast float %5749, %5746
  %5752 = fadd fast float %5750, %5747
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.CBufRet.f32 %5753, 1
  %5756 = extractvalue %dx.types.CBufRet.f32 %5753, 3
  %5757 = fmul fast float %5756, %5736
  %5758 = fmul fast float %5756, %5740
  %5759 = fadd fast float %5757, %5754
  %5760 = fadd fast float %5758, %5755
  %5761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5761, 1
  %5763 = fsub fast float %5762, %5744
  %5764 = extractvalue %dx.types.CBufRet.f32 %5761, 2
  %5765 = fmul fast float %5763, %5764
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = call float @dx.op.unary.f32(i32 7, float %5766)  ; Saturate(value)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5753, 2
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 2
  %5771 = fadd fast float %5770, %5768
  %5772 = fcmp fast ogt float %5771, 0.000000e+00
  br i1 %5772, label %5773, label %5797

; <label>:5773                                    ; preds = %5717
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = fsub fast float %5759, %5775
  %5778 = fsub fast float %5760, %5776
  %5779 = fcmp fast olt float %5777, 0.000000e+00
  %5780 = fcmp fast olt float %5778, 0.000000e+00
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5783 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5784 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5785 = extractvalue %dx.types.CBufRet.f32 %5781, 3
  %5786 = select i1 %5779, float %5782, float %5784
  %5787 = select i1 %5780, float %5783, float %5785
  %5788 = fmul fast float %5786, %5777
  %5789 = fmul fast float %5787, %5778
  %5790 = call float @dx.op.unary.f32(i32 6, float %5788)  ; FAbs(value)
  %5791 = call float @dx.op.unary.f32(i32 6, float %5789)  ; FAbs(value)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  %5793 = call float @dx.op.binary.f32(i32 35, float %5790, float %5791)  ; FMax(a,b)
  %5794 = fsub fast float %5792, %5793
  %5795 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5796 = fmul fast float %5795, %5767
  br label %5797

; <label>:5797                                    ; preds = %5773, %5717
  %5798 = phi float [ %5796, %5773 ], [ 0.000000e+00, %5717 ]
  %5799 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5800 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5801 = fadd fast float %5800, %5799
  %5802 = fcmp fast ogt float %5801, 0.000000e+00
  %5803 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  br i1 %5802, label %5804, label %5827

; <label>:5804                                    ; preds = %5797
  %5805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5806 = extractvalue %dx.types.CBufRet.f32 %5805, 0
  %5807 = extractvalue %dx.types.CBufRet.f32 %5805, 1
  %5808 = fsub fast float %5751, %5806
  %5809 = fsub fast float %5752, %5807
  %5810 = fcmp fast olt float %5808, 0.000000e+00
  %5811 = fcmp fast olt float %5809, 0.000000e+00
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.CBufRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.CBufRet.f32 %5812, 2
  %5816 = extractvalue %dx.types.CBufRet.f32 %5812, 3
  %5817 = select i1 %5810, float %5813, float %5815
  %5818 = select i1 %5811, float %5814, float %5816
  %5819 = fmul fast float %5817, %5808
  %5820 = fmul fast float %5818, %5809
  %5821 = call float @dx.op.unary.f32(i32 6, float %5819)  ; FAbs(value)
  %5822 = call float @dx.op.unary.f32(i32 6, float %5820)  ; FAbs(value)
  %5823 = call float @dx.op.binary.f32(i32 35, float %5821, float %5822)  ; FMax(a,b)
  %5824 = fsub fast float %5803, %5823
  %5825 = call float @dx.op.unary.f32(i32 7, float %5824)  ; Saturate(value)
  %5826 = fmul fast float %5825, %5767
  br label %5827

; <label>:5827                                    ; preds = %5804, %5797
  %5828 = phi float [ %5826, %5804 ], [ 0.000000e+00, %5797 ]
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 1
  %5831 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 0
  %5834 = extractvalue %dx.types.CBufRet.f32 %5832, 1
  %5835 = fsub fast float %5736, %5833
  %5836 = fsub fast float %5740, %5834
  %5837 = fcmp fast olt float %5835, 0.000000e+00
  %5838 = fcmp fast olt float %5836, 0.000000e+00
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = extractvalue %dx.types.CBufRet.f32 %5839, 1
  %5842 = extractvalue %dx.types.CBufRet.f32 %5839, 2
  %5843 = extractvalue %dx.types.CBufRet.f32 %5839, 3
  %5844 = select i1 %5837, float %5840, float %5842
  %5845 = select i1 %5838, float %5841, float %5843
  %5846 = fmul fast float %5844, %5835
  %5847 = fmul fast float %5845, %5836
  %5848 = call float @dx.op.unary.f32(i32 6, float %5846)  ; FAbs(value)
  %5849 = call float @dx.op.unary.f32(i32 6, float %5847)  ; FAbs(value)
  %5850 = call float @dx.op.binary.f32(i32 35, float %5848, float %5849)  ; FMax(a,b)
  %5851 = fsub fast float %5803, %5850
  %5852 = call float @dx.op.unary.f32(i32 7, float %5851)  ; Saturate(value)
  %5853 = call float @dx.op.binary.f32(i32 36, float %5852, float %5831)  ; FMin(a,b)
  %5854 = fmul fast float %5853, %5767
  %5855 = fsub fast float %5828, %5854
  %5856 = fsub fast float %5798, %5828
  %5857 = fsub fast float %5856, %5854
  %5858 = call float @dx.op.binary.f32(i32 35, float %5828, float %5798)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5854, float %5858)  ; FMax(a,b)
  %5860 = fcmp fast olt float %5859, 1.000000e+00
  br i1 %5860, label %5861, label %6259, !dx.controlflow.hints !91

; <label>:5861                                    ; preds = %5827
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 0
  %5864 = fcmp fast une float %5863, 0.000000e+00
  br i1 %5864, label %5865, label %6259, !dx.controlflow.hints !92

; <label>:5865                                    ; preds = %5861
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5870 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5875 = extractvalue %dx.types.CBufRet.f32 %5871, 3
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5879 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5880 = extractvalue %dx.types.CBufRet.f32 %5876, 3
  %5881 = fmul fast float %5867, %5713
  %5882 = call float @dx.op.tertiary.f32(i32 46, float %5714, float %5868, float %5881)  ; FMad(a,b,c)
  %5883 = call float @dx.op.tertiary.f32(i32 46, float %5715, float %5869, float %5882)  ; FMad(a,b,c)
  %5884 = fadd fast float %5883, %5870
  %5885 = fmul fast float %5872, %5713
  %5886 = call float @dx.op.tertiary.f32(i32 46, float %5714, float %5873, float %5885)  ; FMad(a,b,c)
  %5887 = call float @dx.op.tertiary.f32(i32 46, float %5715, float %5874, float %5886)  ; FMad(a,b,c)
  %5888 = fadd fast float %5887, %5875
  %5889 = fmul fast float %5877, %5713
  %5890 = call float @dx.op.tertiary.f32(i32 46, float %5714, float %5878, float %5889)  ; FMad(a,b,c)
  %5891 = call float @dx.op.tertiary.f32(i32 46, float %5715, float %5879, float %5890)  ; FMad(a,b,c)
  %5892 = fadd fast float %5891, %5880
  %5893 = fcmp fast oge float %5884, 1.000000e+00
  %5894 = fcmp fast oge float %5888, 1.000000e+00
  %5895 = or i1 %5893, %5894
  %5896 = fcmp fast olt float %5884, 0.000000e+00
  %5897 = fcmp fast olt float %5888, 0.000000e+00
  %5898 = or i1 %5896, %5897
  %5899 = or i1 %5895, %5898
  br i1 %5899, label %6259, label %5900, !dx.controlflow.hints !93

; <label>:5900                                    ; preds = %5865
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5904 = extractvalue %dx.types.CBufRet.f32 %5901, 2
  %5905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.i32 %5905, 2
  %5907 = uitofp i32 %5906 to float
  %5908 = extractvalue %dx.types.CBufRet.i32 %5905, 3
  %5909 = uitofp i32 %5908 to float
  %5910 = extractvalue %dx.types.CBufRet.f32 %5901, 3
  %5911 = fmul fast float %5910, 2.000000e+00
  %5912 = fsub fast float %5884, %5902
  %5913 = fsub fast float %5888, %5903
  %5914 = fmul fast float %5911, %5912
  %5915 = fmul fast float %5911, %5913
  %5916 = fdiv fast float 1.000000e+00, %5696
  %5917 = fmul fast float %5915, %5916
  %5918 = call float @dx.op.unary.f32(i32 6, float %5917)  ; FAbs(value)
  %5919 = fmul fast float %5904, %5715
  %5920 = fmul fast float %5919, %5911
  %5921 = call float @dx.op.unary.f32(i32 6, float %5920)  ; FAbs(value)
  %5922 = call float @dx.op.unary.f32(i32 6, float %5914)  ; FAbs(value)
  %5923 = call float @dx.op.binary.f32(i32 35, float %5921, float %5918)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 35, float %5922, float %5923)  ; FMax(a,b)
  %5925 = fmul fast float %5924, 2.000000e+00
  %5926 = call float @dx.op.unary.f32(i32 23, float %5925)  ; Log(value)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5926, float %5907)  ; FMax(a,b)
  %5928 = call float @dx.op.unary.f32(i32 22, float %5927)  ; Frc(value)
  %5929 = fadd fast float %5928, 0xBFEA666660000000
  %5930 = fmul fast float %5929, 8.000000e+00
  %5931 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5932 = call float @dx.op.unary.f32(i32 27, float %5927)  ; Round_ni(value)
  %5933 = fadd fast float %5932, %5931
  %5934 = call float @dx.op.binary.f32(i32 36, float %5933, float %5909)  ; FMin(a,b)
  %5935 = call float @dx.op.unary.f32(i32 27, float %5934)  ; Round_ni(value)
  %5936 = fsub fast float -0.000000e+00, %5935
  %5937 = call float @dx.op.unary.f32(i32 21, float %5936)  ; Exp(value)
  %5938 = fmul fast float %5937, %5911
  %5939 = fmul fast float %5938, %5884
  %5940 = fmul fast float %5938, %5888
  %5941 = fmul fast float %5939, 2.500000e-01
  %5942 = fmul fast float %5940, 2.500000e-01
  %5943 = fadd fast float %5941, 5.000000e-01
  %5944 = fadd fast float %5942, 5.000000e-01
  %5945 = fsub fast float %5909, %5907
  %5946 = fptoui float %5945 to i32
  %5947 = add i32 %5946, 320
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5947)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.CBufRet.f32 %5948, 1
  %5951 = fcmp fast une float %5934, %5909
  %5952 = fsub fast float %5884, %5949
  %5953 = fsub fast float %5888, %5950
  %5954 = call float @dx.op.unary.f32(i32 6, float %5952)  ; FAbs(value)
  %5955 = call float @dx.op.unary.f32(i32 6, float %5953)  ; FAbs(value)
  %5956 = fmul fast float %5954, %5938
  %5957 = fmul fast float %5955, %5938
  %5958 = fcmp fast olt float %5956, 1.000000e+00
  %5959 = fcmp fast olt float %5957, 1.000000e+00
  %5960 = and i1 %5958, %5959
  %5961 = or i1 %5951, %5960
  br i1 %5961, label %5962, label %6259, !dx.controlflow.hints !94

; <label>:5962                                    ; preds = %5900
  %5963 = fmul fast float %5940, 5.000000e-01
  %5964 = fmul fast float %5939, 5.000000e-01
  %5965 = fadd fast float %5963, 5.000000e-01
  %5966 = fadd fast float %5964, 5.000000e-01
  %5967 = sitofp i32 %5906 to float
  %5968 = fsub fast float %5934, %5967
  %5969 = call float @dx.op.unary.f32(i32 27, float %5968)  ; Round_ni(value)
  %5970 = call float @dx.op.unary.f32(i32 22, float %5934)  ; Frc(value)
  %5971 = call float @dx.op.unary.f32(i32 22, float %5966)  ; Frc(value)
  %5972 = call float @dx.op.unary.f32(i32 22, float %5965)  ; Frc(value)
  %5973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5971, float %5972, float %5969, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5974 = extractvalue %dx.types.ResRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.ResRet.f32 %5973, 1
  %5976 = extractvalue %dx.types.ResRet.f32 %5973, 2
  %5977 = extractvalue %dx.types.ResRet.f32 %5973, 3
  %5978 = fcmp fast ogt float %5970, 0.000000e+00
  br i1 %5978, label %5979, label %6000, !dx.controlflow.hints !95

; <label>:5979                                    ; preds = %5962
  %5980 = fadd fast float %5969, 1.000000e+00
  %5981 = call float @dx.op.unary.f32(i32 22, float %5943)  ; Frc(value)
  %5982 = call float @dx.op.unary.f32(i32 22, float %5944)  ; Frc(value)
  %5983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5981, float %5982, float %5980, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5984 = extractvalue %dx.types.ResRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.ResRet.f32 %5983, 1
  %5986 = extractvalue %dx.types.ResRet.f32 %5983, 2
  %5987 = extractvalue %dx.types.ResRet.f32 %5983, 3
  %5988 = fsub fast float %5984, %5974
  %5989 = fsub fast float %5985, %5975
  %5990 = fsub fast float %5986, %5976
  %5991 = fsub fast float %5987, %5977
  %5992 = fmul fast float %5988, %5970
  %5993 = fmul fast float %5989, %5970
  %5994 = fmul fast float %5990, %5970
  %5995 = fmul fast float %5991, %5970
  %5996 = fadd fast float %5992, %5974
  %5997 = fadd fast float %5993, %5975
  %5998 = fadd fast float %5994, %5976
  %5999 = fadd fast float %5995, %5977
  br label %6000

; <label>:6000                                    ; preds = %5979, %5962
  %6001 = phi float [ %5996, %5979 ], [ %5974, %5962 ]
  %6002 = phi float [ %5997, %5979 ], [ %5975, %5962 ]
  %6003 = phi float [ %5998, %5979 ], [ %5976, %5962 ]
  %6004 = phi float [ %5999, %5979 ], [ %5977, %5962 ]
  %6005 = fadd fast float %6001, -5.000000e-01
  %6006 = fadd fast float %6003, -5.000000e-01
  %6007 = fmul fast float %6005, 0xBFD5555560000000
  %6008 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6006, float %6007)  ; FMad(a,b,c)
  %6009 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6002, float 0.000000e+00)  ; FMad(a,b,c)
  %6010 = fadd fast float %6009, %6004
  %6011 = fmul fast float %6005, -7.500000e-01
  %6012 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6006, float %6011)  ; FMad(a,b,c)
  %6013 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6002, float 0.000000e+00)  ; FMad(a,b,c)
  %6014 = fadd fast float %6013, %6004
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.CBufRet.f32 %6017, 1
  %6020 = extractvalue %dx.types.CBufRet.f32 %6017, 2
  %6021 = extractvalue %dx.types.CBufRet.f32 %6017, 3
  %6022 = fsub fast float %6018, %6008
  %6023 = fsub fast float %6019, %6010
  %6024 = fsub fast float %6020, %6012
  %6025 = fsub fast float %6021, %6014
  %6026 = fmul fast float %6022, %6016
  %6027 = fmul fast float %6023, %6016
  %6028 = fmul fast float %6024, %6016
  %6029 = fmul fast float %6025, %6016
  %6030 = fadd fast float %6026, %6008
  %6031 = fadd fast float %6027, %6010
  %6032 = fadd fast float %6028, %6012
  %6033 = fadd fast float %6029, %6014
  %6034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6035 = extractvalue %dx.types.ResRet.i32 %6034, 0
  %6036 = and i32 %6035, 536870911
  %6037 = uitofp i32 %6036 to float
  %6038 = fmul fast float %6037, %5884
  %6039 = fmul fast float %6037, %5888
  %6040 = fptoui float %6038 to i32
  %6041 = fptoui float %6039 to i32
  %6042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6043 = extractvalue %dx.types.ResRet.i32 %6042, 0
  %6044 = and i32 %6043, 31
  %6045 = lshr i32 %6040, %6044
  %6046 = lshr i32 %6041, %6044
  %6047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6048 = extractvalue %dx.types.ResRet.i32 %6047, 0
  %6049 = and i32 %6048, 31
  %6050 = shl i32 1, %6049
  %6051 = call i32 @dx.op.binary.i32(i32 40, i32 %6050, i32 4)  ; UMin(a,b)
  %6052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6053 = extractvalue %dx.types.ResRet.i32 %6052, 0
  %6054 = extractvalue %dx.types.ResRet.i32 %6052, 1
  %6055 = icmp eq i32 %6051, 0
  br i1 %6055, label %6097, label %6056

; <label>:6056                                    ; preds = %6000
  br label %6057

; <label>:6057                                    ; preds = %6085, %6056
  %6058 = phi i32 [ %6088, %6085 ], [ 0, %6056 ]
  %6059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6060 = extractvalue %dx.types.ResRet.i32 %6059, 0
  %6061 = lshr i32 %6060, 16
  %6062 = and i32 %6061, 31
  %6063 = shl i32 %6046, %6062
  %6064 = add i32 %6063, %6045
  %6065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6066 = extractvalue %dx.types.ResRet.i32 %6065, 0
  %6067 = and i32 %6066, 31
  %6068 = shl i32 %6064, %6067
  %6069 = add i32 %6068, %6058
  %6070 = shl i32 %6069, 2
  %6071 = add i32 %6070, 32
  %6072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6071, i32 undef)  ; BufferLoad(srv,index,wot)
  %6073 = extractvalue %dx.types.ResRet.i32 %6072, 0
  %6074 = icmp slt i32 %6073, 0
  %6075 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6058
  %6076 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6058
  %6077 = bitcast float* %6075 to i32*
  %6078 = bitcast float* %6076 to i32*
  br i1 %6074, label %6079, label %6085

; <label>:6079                                    ; preds = %6057
  %6080 = and i32 %6073, 1073741823
  %6081 = add nuw nsw i32 %6080, 20
  %6082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6081, i32 undef)  ; BufferLoad(srv,index,wot)
  %6083 = extractvalue %dx.types.ResRet.i32 %6082, 0
  %6084 = extractvalue %dx.types.ResRet.i32 %6082, 1
  br label %6085

; <label>:6085                                    ; preds = %6079, %6057
  %6086 = phi i32 [ %6083, %6079 ], [ %6053, %6057 ]
  %6087 = phi i32 [ %6084, %6079 ], [ %6054, %6057 ]
  store i32 %6086, i32* %6077, align 4
  store i32 %6087, i32* %6078, align 4
  %6088 = add nuw i32 %6058, 1
  %6089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.i32 %6089, 2
  %6091 = icmp eq i32 %6090, 0
  %6092 = icmp ugt i32 %6073, -1073741825
  %6093 = and i1 %6092, %6091
  %6094 = icmp ult i32 %6088, %6051
  %6095 = and i1 %6093, %6094
  br i1 %6095, label %6057, label %6096

; <label>:6096                                    ; preds = %6085
  br label %6097

; <label>:6097                                    ; preds = %6096, %6000
  %6098 = phi i32 [ 0, %6000 ], [ %6088, %6096 ]
  %6099 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %6100 = fptoui float %6099 to i32
  %6101 = icmp eq i32 %6100, 0
  br i1 %6101, label %6153, label %6102

; <label>:6102                                    ; preds = %6097
  br label %6103

; <label>:6103                                    ; preds = %6148, %6102
  %6104 = phi i32 [ %6149, %6148 ], [ %6098, %6102 ]
  %6105 = phi i32 [ %6150, %6148 ], [ 0, %6102 ]
  %6106 = lshr i32 %6105, 2
  %6107 = and i32 %6105, 3
  %6108 = add nuw nsw i32 %6106, 83
  %6109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6108)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.i32 %6109, 0
  %6111 = extractvalue %dx.types.CBufRet.i32 %6109, 1
  %6112 = extractvalue %dx.types.CBufRet.i32 %6109, 2
  %6113 = extractvalue %dx.types.CBufRet.i32 %6109, 3
  %6114 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6110, i32* %6114, align 4
  %6115 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6111, i32* %6115, align 4
  %6116 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6112, i32* %6116, align 4
  %6117 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6113, i32* %6117, align 4
  %6118 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6107
  %6119 = load i32, i32* %6118, align 4, !tbaa !96, !noalias !100
  %6120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.i32 %6120, 0
  %6122 = lshr i32 %6121, 16
  %6123 = and i32 %6122, 31
  %6124 = shl i32 %6046, %6123
  %6125 = add i32 %6124, %6045
  %6126 = shl i32 %6125, 2
  %6127 = add i32 %6126, %6119
  %6128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6127, i32 undef)  ; BufferLoad(srv,index,wot)
  %6129 = extractvalue %dx.types.ResRet.i32 %6128, 0
  %6130 = icmp eq i32 %6129, 0
  br i1 %6130, label %6148, label %6131

; <label>:6131                                    ; preds = %6103
  %6132 = icmp slt i32 %6129, 0
  %6133 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6104
  %6134 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6104
  %6135 = bitcast float* %6133 to i32*
  %6136 = bitcast float* %6134 to i32*
  br i1 %6132, label %6137, label %6144

; <label>:6137                                    ; preds = %6131
  %6138 = and i32 %6129, 1073741823
  %6139 = add i32 %6119, 20
  %6140 = add i32 %6139, %6138
  %6141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6140, i32 undef)  ; BufferLoad(srv,index,wot)
  %6142 = extractvalue %dx.types.ResRet.i32 %6141, 0
  %6143 = extractvalue %dx.types.ResRet.i32 %6141, 1
  br label %6144

; <label>:6144                                    ; preds = %6137, %6131
  %6145 = phi i32 [ %6142, %6137 ], [ %6053, %6131 ]
  %6146 = phi i32 [ %6143, %6137 ], [ %6054, %6131 ]
  store i32 %6145, i32* %6135, align 4
  store i32 %6146, i32* %6136, align 4
  %6147 = add i32 %6104, 1
  br label %6148

; <label>:6148                                    ; preds = %6144, %6103
  %6149 = phi i32 [ %6104, %6103 ], [ %6147, %6144 ]
  %6150 = add nuw i32 %6105, 1
  %6151 = icmp eq i32 %6150, %6100
  br i1 %6151, label %6152, label %6103

; <label>:6152                                    ; preds = %6148
  br label %6153

; <label>:6153                                    ; preds = %6152, %6097
  %6154 = phi i32 [ %6098, %6097 ], [ %6149, %6152 ]
  %6155 = icmp eq i32 %6154, 1
  %6156 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %6157 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %6155, label %6158, label %6161

; <label>:6158                                    ; preds = %6153
  %6159 = load float, float* %6156, align 4
  %6160 = load float, float* %6157, align 4
  br label %6188

; <label>:6161                                    ; preds = %6153
  %6162 = load float, float* %6156, align 4
  %6163 = load float, float* %6157, align 4
  %6164 = fdiv fast float 1.000000e+00, %6163
  %6165 = fsub fast float %6162, %6164
  %6166 = icmp ugt i32 %6154, 1
  br i1 %6166, label %6167, label %6183

; <label>:6167                                    ; preds = %6161
  br label %6168

; <label>:6168                                    ; preds = %6168, %6167
  %6169 = phi float [ %6178, %6168 ], [ %6165, %6167 ]
  %6170 = phi float [ %6179, %6168 ], [ %6162, %6167 ]
  %6171 = phi i32 [ %6180, %6168 ], [ 1, %6167 ]
  %6172 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6171
  %6173 = load float, float* %6172, align 4
  %6174 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6171
  %6175 = load float, float* %6174, align 4
  %6176 = fdiv fast float 1.000000e+00, %6175
  %6177 = fsub fast float %6173, %6176
  %6178 = call float @dx.op.binary.f32(i32 36, float %6169, float %6177)  ; FMin(a,b)
  %6179 = call float @dx.op.binary.f32(i32 35, float %6170, float %6173)  ; FMax(a,b)
  %6180 = add nuw i32 %6171, 1
  %6181 = icmp eq i32 %6180, %6154
  br i1 %6181, label %6182, label %6168

; <label>:6182                                    ; preds = %6168
  br label %6183

; <label>:6183                                    ; preds = %6182, %6161
  %6184 = phi float [ %6165, %6161 ], [ %6178, %6182 ]
  %6185 = phi float [ %6162, %6161 ], [ %6179, %6182 ]
  %6186 = fsub fast float %6185, %6184
  %6187 = fdiv fast float 1.000000e+00, %6186
  br label %6188

; <label>:6188                                    ; preds = %6183, %6158
  %6189 = phi float [ %6159, %6158 ], [ %6185, %6183 ]
  %6190 = phi float [ %6160, %6158 ], [ %6187, %6183 ]
  %6191 = fadd fast float %5892, %6189
  %6192 = fmul fast float %6191, %6190
  %6193 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6194 = fmul fast float %6193, 2.000000e+00
  %6195 = fsub fast float 1.000000e+00, %6194
  %6196 = fmul fast float %6030, %6030
  %6197 = fsub fast float %6031, %6196
  %6198 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6197)  ; FMax(a,b)
  %6199 = fdiv fast float 1.000000e+00, %6198
  %6200 = fmul fast float %6031, %6030
  %6201 = fsub fast float %6032, %6200
  %6202 = fsub fast float %6195, %6030
  %6203 = fmul fast float %6195, %6195
  %6204 = fsub fast float %6203, %6031
  %6205 = fmul fast float %6199, %6201
  %6206 = fmul fast float %6205, %6202
  %6207 = fsub fast float %6204, %6206
  %6208 = fmul fast float %6031, %6031
  %6209 = fsub fast float %6033, %6208
  %6210 = fmul fast float %6201, %6201
  %6211 = fmul fast float %6210, %6199
  %6212 = fsub fast float %6209, %6211
  %6213 = fdiv fast float %6207, %6212
  %6214 = fmul fast float %6213, %6201
  %6215 = fsub fast float %6202, %6214
  %6216 = fmul fast float %6215, %6199
  %6217 = fmul fast float %6216, %6030
  %6218 = fsub fast float 1.000000e+00, %6217
  %6219 = fmul fast float %6213, %6031
  %6220 = fsub fast float %6218, %6219
  %6221 = fmul fast float %6216, %6216
  %6222 = fmul fast float %6213, 4.000000e+00
  %6223 = fmul fast float %6222, %6220
  %6224 = fsub fast float %6221, %6223
  %6225 = call float @dx.op.unary.f32(i32 24, float %6224)  ; Sqrt(value)
  %6226 = fcmp fast oge float %6216, 0.000000e+00
  %6227 = fsub fast float -0.000000e+00, %6225
  %6228 = select i1 %6226, float %6227, float %6225
  %6229 = fsub fast float %6228, %6216
  %6230 = fdiv fast float %6229, %6213
  %6231 = fdiv fast float %6220, %6229
  %6232 = fmul fast float %6230, 5.000000e-01
  %6233 = fmul fast float %6231, 2.000000e+00
  %6234 = select i1 %6226, float %6232, float %6233
  %6235 = select i1 %6226, float %6233, float %6232
  %6236 = call float @dx.op.binary.f32(i32 35, float %6234, float %6235)  ; FMax(a,b)
  %6237 = call float @dx.op.binary.f32(i32 36, float %6234, float %6235)  ; FMin(a,b)
  %6238 = fcmp fast ogt float %6195, %6236
  %6239 = fsub fast float %6195, %6237
  %6240 = fsub fast float %6195, %6236
  %6241 = fsub fast float %6236, %6237
  %6242 = select i1 %6238, float %6240, float %6241
  %6243 = fmul float %6239, %6242
  %6244 = select i1 %6238, float %6237, float %6195
  %6245 = fcmp fast ogt float %6195, %6237
  %6246 = fmul fast float %6244, %6236
  %6247 = fadd fast float %6244, %6236
  %6248 = fmul fast float %6247, %6030
  %6249 = fadd fast float %6246, %6031
  %6250 = fsub fast float %6249, %6248
  %6251 = fdiv fast float %6250, %6243
  %6252 = select i1 %6245, float %6251, float 0.000000e+00
  %6253 = fsub fast float 1.000000e+00, %6252
  %6254 = select i1 %6238, float %6253, float %6252
  %6255 = call float @dx.op.unary.f32(i32 7, float %6254)  ; Saturate(value)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6015, 3
  %6257 = fmul fast float %6256, %6255
  %6258 = fsub fast float 1.000000e+00, %6257
  br label %6259

; <label>:6259                                    ; preds = %6188, %5900, %5865, %5861, %5827
  %6260 = phi float [ 1.000000e+00, %5827 ], [ %6258, %6188 ], [ 1.000000e+00, %5865 ], [ 1.000000e+00, %5900 ], [ 1.000000e+00, %5861 ]
  %6261 = fcmp fast ogt float %5857, 0.000000e+00
  br i1 %6261, label %6262, label %6268, !dx.controlflow.hints !109

; <label>:6262                                    ; preds = %6259
  %6263 = fadd fast float %5770, %5744
  %6264 = call float @dx.op.binary.f32(i32 35, float %6263, float 0.000000e+00)  ; FMax(a,b)
  %6265 = fadd fast float %6264, 0x3F10000000000000
  %6266 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5759, float %5760, float undef, float undef, i32 0, i32 0, i32 undef, float %6265)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6267 = extractvalue %dx.types.ResRet.f32 %6266, 0
  br label %6268

; <label>:6268                                    ; preds = %6262, %6259
  %6269 = phi float [ %6267, %6262 ], [ 1.000000e+00, %6259 ]
  %6270 = fcmp fast ogt float %5855, 0.000000e+00
  br i1 %6270, label %6271, label %6277, !dx.controlflow.hints !110

; <label>:6271                                    ; preds = %6268
  %6272 = fadd fast float %5800, %5744
  %6273 = call float @dx.op.binary.f32(i32 35, float %6272, float 0.000000e+00)  ; FMax(a,b)
  %6274 = fadd fast float %6273, 0x3F10000000000000
  %6275 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5751, float %5752, float undef, float undef, i32 0, i32 0, i32 undef, float %6274)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6276 = extractvalue %dx.types.ResRet.f32 %6275, 0
  br label %6277

; <label>:6277                                    ; preds = %6271, %6268
  %6278 = phi float [ %6276, %6271 ], [ 1.000000e+00, %6268 ]
  %6279 = fcmp fast ogt float %5854, 0.000000e+00
  br i1 %6279, label %6280, label %6287, !dx.controlflow.hints !111

; <label>:6280                                    ; preds = %6277
  %6281 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %6282 = fadd fast float %6281, %5744
  %6283 = call float @dx.op.binary.f32(i32 35, float %6282, float 0.000000e+00)  ; FMax(a,b)
  %6284 = fadd fast float %6283, 0x3F10000000000000
  %6285 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5736, float %5740, float undef, float undef, i32 0, i32 0, i32 undef, float %6284)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 0
  br label %6287

; <label>:6287                                    ; preds = %6280, %6277
  %6288 = phi float [ %6286, %6280 ], [ 1.000000e+00, %6277 ]
  %6289 = fsub fast float %6269, %6260
  %6290 = fmul fast float %6289, %5798
  %6291 = fadd fast float %6290, %6260
  %6292 = fsub fast float %6278, %6291
  %6293 = fmul fast float %6292, %5828
  %6294 = fadd fast float %6293, %6291
  %6295 = fsub fast float %6288, %6294
  %6296 = fmul fast float %6295, %5854
  %6297 = fadd fast float %6296, %6294
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 2
  %6300 = fcmp fast ogt float %6299, 0.000000e+00
  br i1 %6300, label %6301, label %6341, !dx.controlflow.hints !112

; <label>:6301                                    ; preds = %6287
  %6302 = fcmp fast ugt float %6299, 0.000000e+00
  br i1 %6302, label %6303, label %6338

; <label>:6303                                    ; preds = %6301
  %6304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6305 = extractvalue %dx.types.CBufRet.f32 %6304, 0
  %6306 = extractvalue %dx.types.CBufRet.f32 %6304, 1
  %6307 = extractvalue %dx.types.CBufRet.f32 %6304, 2
  %6308 = extractvalue %dx.types.CBufRet.f32 %6304, 3
  %6309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.CBufRet.f32 %6309, 1
  %6312 = extractvalue %dx.types.CBufRet.f32 %6309, 2
  %6313 = extractvalue %dx.types.CBufRet.f32 %6309, 3
  %6314 = extractvalue %dx.types.CBufRet.f32 %6298, 0
  %6315 = extractvalue %dx.types.CBufRet.f32 %6298, 1
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.CBufRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.CBufRet.f32 %6316, 2
  %6320 = fadd fast float %6317, %5713
  %6321 = fadd fast float %6318, %5714
  %6322 = fadd fast float %6319, %5715
  %6323 = fmul fast float %6320, %6305
  %6324 = call float @dx.op.tertiary.f32(i32 46, float %6306, float %6321, float %6323)  ; FMad(a,b,c)
  %6325 = call float @dx.op.tertiary.f32(i32 46, float %6307, float %6322, float %6324)  ; FMad(a,b,c)
  %6326 = fadd fast float %6325, %6308
  %6327 = fmul fast float %6320, %6310
  %6328 = call float @dx.op.tertiary.f32(i32 46, float %6311, float %6321, float %6327)  ; FMad(a,b,c)
  %6329 = call float @dx.op.tertiary.f32(i32 46, float %6312, float %6322, float %6328)  ; FMad(a,b,c)
  %6330 = fadd fast float %6329, %6313
  %6331 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6326, float %6330, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6332 = extractvalue %dx.types.ResRet.f32 %6331, 0
  %6333 = fmul fast float %6332, %6315
  %6334 = fadd fast float %6333, %6314
  %6335 = call float @dx.op.unary.f32(i32 7, float %6334)  ; Saturate(value)
  %6336 = fmul fast float %6335, %6299
  %6337 = fsub fast float 1.000000e+00, %6336
  br label %6338

; <label>:6338                                    ; preds = %6303, %6301
  %6339 = phi float [ %6337, %6303 ], [ 1.000000e+00, %6301 ]
  %6340 = fmul fast float %6339, %6297
  br label %6341

; <label>:6341                                    ; preds = %6338, %6287, %5693
  %6342 = phi float [ 1.000000e+00, %5693 ], [ %6340, %6338 ], [ %6297, %6287 ]
  %6343 = call float @dx.op.binary.f32(i32 36, float %6342, float %6342)  ; FMin(a,b)
  %6344 = call float @dx.op.binary.f32(i32 36, float %6342, float %6343)  ; FMin(a,b)
  %6345 = fcmp fast ogt float %6344, 0.000000e+00
  br i1 %6345, label %6346, label %6506, !dx.controlflow.hints !113

; <label>:6346                                    ; preds = %6341
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  %6349 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6350 = extractvalue %dx.types.CBufRet.f32 %6347, 2
  %6351 = extractvalue %dx.types.CBufRet.f32 %6347, 3
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.CBufRet.f32 %6352, 2
  %6356 = extractvalue %dx.types.CBufRet.f32 %6352, 3
  %6357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6358 = extractvalue %dx.types.CBufRet.f32 %6357, 0
  %6359 = extractvalue %dx.types.CBufRet.f32 %6357, 1
  %6360 = extractvalue %dx.types.CBufRet.f32 %6357, 2
  %6361 = extractvalue %dx.types.CBufRet.f32 %6357, 3
  %6362 = fmul fast float %6348, %5713
  %6363 = call float @dx.op.tertiary.f32(i32 46, float %5714, float %6349, float %6362)  ; FMad(a,b,c)
  %6364 = call float @dx.op.tertiary.f32(i32 46, float %5715, float %6350, float %6363)  ; FMad(a,b,c)
  %6365 = fadd fast float %6364, %6351
  %6366 = fmul fast float %6353, %5713
  %6367 = call float @dx.op.tertiary.f32(i32 46, float %5714, float %6354, float %6366)  ; FMad(a,b,c)
  %6368 = call float @dx.op.tertiary.f32(i32 46, float %5715, float %6355, float %6367)  ; FMad(a,b,c)
  %6369 = fadd fast float %6368, %6356
  %6370 = fmul fast float %6358, %5713
  %6371 = call float @dx.op.tertiary.f32(i32 46, float %5714, float %6359, float %6370)  ; FMad(a,b,c)
  %6372 = call float @dx.op.tertiary.f32(i32 46, float %5715, float %6360, float %6371)  ; FMad(a,b,c)
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 0
  %6375 = extractvalue %dx.types.CBufRet.f32 %6373, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6373, 3
  %6377 = fmul fast float %6376, %6365
  %6378 = fmul fast float %6376, %6369
  %6379 = fadd fast float %6377, %6374
  %6380 = fadd fast float %6378, %6375
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = fsub fast float %6379, %6382
  %6385 = fsub fast float %6380, %6383
  %6386 = fcmp fast olt float %6384, 0.000000e+00
  %6387 = fcmp fast olt float %6385, 0.000000e+00
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6390 = extractvalue %dx.types.CBufRet.f32 %6388, 1
  %6391 = extractvalue %dx.types.CBufRet.f32 %6388, 2
  %6392 = extractvalue %dx.types.CBufRet.f32 %6388, 3
  %6393 = select i1 %6386, float %6389, float %6391
  %6394 = select i1 %6387, float %6390, float %6392
  %6395 = fmul fast float %6393, %6384
  %6396 = fmul fast float %6394, %6385
  %6397 = call float @dx.op.unary.f32(i32 6, float %6395)  ; FAbs(value)
  %6398 = call float @dx.op.unary.f32(i32 6, float %6396)  ; FAbs(value)
  %6399 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  %6400 = call float @dx.op.binary.f32(i32 35, float %6397, float %6398)  ; FMax(a,b)
  %6401 = fsub fast float %6399, %6400
  %6402 = call float @dx.op.unary.f32(i32 7, float %6401)  ; Saturate(value)
  %6403 = fcmp fast ogt float %6402, 0.000000e+00
  br i1 %6403, label %6404, label %6445, !dx.controlflow.hints !114

; <label>:6404                                    ; preds = %6346
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6379, float %6380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 1
  %6407 = fcmp fast ogt float %6406, 0.000000e+00
  br i1 %6407, label %6408, label %6440

; <label>:6408                                    ; preds = %6404
  %6409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6379, float %6380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6410 = extractvalue %dx.types.ResRet.f32 %6409, 0
  %6411 = extractvalue %dx.types.ResRet.f32 %6409, 1
  %6412 = extractvalue %dx.types.ResRet.f32 %6409, 2
  %6413 = extractvalue %dx.types.ResRet.f32 %6409, 3
  %6414 = fsub fast float 1.000000e+00, %6361
  %6415 = fsub fast float %6414, %6372
  %6416 = fmul fast float %6415, 0x400921FB60000000
  %6417 = fadd fast float %6416, 0x3FF921FB60000000
  %6418 = call float @dx.op.unary.f32(i32 13, float %6417)  ; Sin(value)
  %6419 = fadd fast float %6418, -1.000000e+00
  %6420 = fmul fast float %6419, 0x3FD45F3060000000
  %6421 = fmul fast float %6415, 0x401921FB60000000
  %6422 = fadd fast float %6421, 0x400921FB60000000
  %6423 = call float @dx.op.unary.f32(i32 13, float %6422)  ; Sin(value)
  %6424 = fadd fast float %6423, 0x3E7777A5C0000000
  %6425 = fmul fast float %6424, 0x3FC45F3060000000
  %6426 = fmul fast float %6415, 0x4022D97C80000000
  %6427 = fadd fast float %6426, 0x4012D97C80000000
  %6428 = call float @dx.op.unary.f32(i32 13, float %6427)  ; Sin(value)
  %6429 = fadd fast float %6428, 1.000000e+00
  %6430 = fmul fast float %6429, 0x3FBB2995E0000000
  %6431 = fmul fast float %6415, 0x402921FB60000000
  %6432 = fadd fast float %6431, 0x401921FB60000000
  %6433 = call float @dx.op.unary.f32(i32 13, float %6432)  ; Sin(value)
  %6434 = fadd fast float %6433, 0xBE8777A5C0000000
  %6435 = fmul fast float %6434, 0x3FB45F3060000000
  %6436 = call float @dx.op.dot4.f32(i32 56, float %6410, float %6411, float %6412, float %6413, float %6420, float %6425, float %6430, float %6435)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6437 = fmul fast float %6436, 0xBFF7154760000000
  %6438 = call float @dx.op.unary.f32(i32 21, float %6437)  ; Exp(value)
  %6439 = call float @dx.op.unary.f32(i32 7, float %6438)  ; Saturate(value)
  br label %6440

; <label>:6440                                    ; preds = %6408, %6404
  %6441 = phi float [ %6439, %6408 ], [ 1.000000e+00, %6404 ]
  %6442 = fadd fast float %6441, -1.000000e+00
  %6443 = fmul fast float %6442, %6402
  %6444 = fadd fast float %6443, 1.000000e+00
  br label %6445

; <label>:6445                                    ; preds = %6440, %6346
  %6446 = phi float [ %6444, %6440 ], [ 1.000000e+00, %6346 ]
  %6447 = fmul fast float %6446, %6342
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 0
  %6450 = extractvalue %dx.types.CBufRet.f32 %6448, 1
  %6451 = extractvalue %dx.types.CBufRet.f32 %6448, 2
  %6452 = fadd fast float %6449, %158
  %6453 = fadd fast float %6450, %159
  %6454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6455 = extractvalue %dx.types.CBufRet.f32 %6454, 1
  %6456 = fsub fast float -0.000000e+00, %6452
  %6457 = fsub fast float -0.000000e+00, %6453
  %6458 = fsub fast float %5440, %6451
  %6459 = fadd fast float %6458, %6455
  %6460 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6456, float %6457, float %6459)  ; Dot3(ax,ay,az,bx,by,bz)
  %6461 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5694, float %5695, float %5696)  ; Dot3(ax,ay,az,bx,by,bz)
  %6462 = fdiv fast float 1.000000e+00, %6461
  %6463 = fmul fast float %6462, %6460
  %6464 = fmul fast float %5694, %6463
  %6465 = fmul fast float %5695, %6463
  %6466 = fadd fast float %6464, %6452
  %6467 = fadd fast float %6465, %6453
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 0
  %6470 = extractvalue %dx.types.CBufRet.f32 %6468, 1
  %6471 = fsub fast float %6466, %6469
  %6472 = fsub fast float %6467, %6470
  %6473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6474 = extractvalue %dx.types.CBufRet.f32 %6473, 2
  %6475 = extractvalue %dx.types.CBufRet.f32 %6473, 3
  %6476 = fmul fast float %6471, %6474
  %6477 = fmul fast float %6472, %6475
  %6478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.i32 %6478, 3
  %6480 = icmp eq i32 %6479, 0
  br i1 %6480, label %6486, label %6481

; <label>:6481                                    ; preds = %6445
  %6482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6476, float %6477, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6483 = extractvalue %dx.types.ResRet.f32 %6482, 0
  %6484 = extractvalue %dx.types.ResRet.f32 %6482, 1
  %6485 = extractvalue %dx.types.ResRet.f32 %6482, 2
  br label %6491

; <label>:6486                                    ; preds = %6445
  %6487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6476, float %6477, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6488 = extractvalue %dx.types.ResRet.f32 %6487, 0
  %6489 = extractvalue %dx.types.ResRet.f32 %6487, 1
  %6490 = extractvalue %dx.types.ResRet.f32 %6487, 2
  br label %6491

; <label>:6491                                    ; preds = %6486, %6481
  %6492 = phi float [ %6483, %6481 ], [ %6488, %6486 ]
  %6493 = phi float [ %6484, %6481 ], [ %6489, %6486 ]
  %6494 = phi float [ %6485, %6481 ], [ %6490, %6486 ]
  %6495 = extractvalue %dx.types.CBufRet.f32 %6454, 2
  %6496 = fmul fast float %6495, %6492
  %6497 = extractvalue %dx.types.CBufRet.f32 %6454, 0
  %6498 = fsub fast float %6463, %6497
  %6499 = fsub fast float %6498, %6496
  %6500 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6499)  ; FMax(a,b)
  %6501 = fmul fast float %6500, %6493
  %6502 = call float @dx.op.binary.f32(i32 36, float %6494, float %6501)  ; FMin(a,b)
  %6503 = fmul fast float %6502, 0xBFF7154760000000
  %6504 = call float @dx.op.unary.f32(i32 21, float %6503)  ; Exp(value)
  %6505 = fmul fast float %6447, %6504
  br label %6506

; <label>:6506                                    ; preds = %6491, %6341
  %6507 = phi float [ %6505, %6491 ], [ %6342, %6341 ]
  %6508 = call float @dx.op.binary.f32(i32 36, float %6507, float %6507)  ; FMin(a,b)
  %6509 = call float @dx.op.binary.f32(i32 36, float %6507, float %6508)  ; FMin(a,b)
  %6510 = fcmp fast ogt float %6509, 0.000000e+00
  br i1 %6510, label %6511, label %6774, !dx.controlflow.hints !115

; <label>:6511                                    ; preds = %6506
  %6512 = fmul fast float %6507, %5705
  %6513 = fmul fast float %6507, %5706
  %6514 = fmul fast float %6507, %5707
  %6515 = fsub fast float %160, %5228
  %6516 = fcmp fast ogt float %6515, 0.000000e+00
  %6517 = fmul fast float %5694, 5.120000e+02
  %6518 = fmul fast float %5695, 5.120000e+02
  %6519 = fmul fast float %5696, 5.120000e+02
  %6520 = fadd fast float %6519, %160
  %6521 = fsub fast float %5228, %6520
  %6522 = fmul fast float %6521, 2.000000e+00
  %6523 = fadd fast float %6522, %6520
  %6524 = select i1 %6516, float %6523, float %6520
  %6525 = fsub fast float %6524, %160
  %6526 = call float @dx.op.dot3.f32(i32 55, float %6517, float %6518, float %6525, float %6517, float %6518, float %6525)  ; Dot3(ax,ay,az,bx,by,bz)
  %6527 = call float @dx.op.unary.f32(i32 25, float %6526)  ; Rsqrt(value)
  %6528 = fmul fast float %6527, %6517
  %6529 = fmul fast float %6527, %6518
  %6530 = fmul fast float %6527, %6525
  %6531 = fsub fast float %5228, %160
  %6532 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6531)  ; Dot3(ax,ay,az,bx,by,bz)
  %6533 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6528, float %6529, float %6530)  ; Dot3(ax,ay,az,bx,by,bz)
  %6534 = fdiv fast float 1.000000e+00, %6533
  %6535 = fmul fast float %6534, %6532
  %6536 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6515, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6537 = fcmp fast ogt float %6536, 0.000000e+00
  %6538 = fcmp fast olt float %6536, 0.000000e+00
  %6539 = zext i1 %6537 to i32
  %6540 = zext i1 %6538 to i32
  %6541 = sub nsw i32 %6539, %6540
  %6542 = sitofp i32 %6541 to float
  %6543 = fsub fast float %6524, %5228
  %6544 = call float @dx.op.dot3.f32(i32 55, float %6517, float %6518, float %6543, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6545 = fcmp fast ogt float %6544, 0.000000e+00
  %6546 = fcmp fast olt float %6544, 0.000000e+00
  %6547 = zext i1 %6545 to i32
  %6548 = zext i1 %6546 to i32
  %6549 = sub nsw i32 %6547, %6548
  %6550 = sitofp i32 %6549 to float
  %6551 = fcmp fast une float %6542, %6550
  br i1 %6551, label %6552, label %6562

; <label>:6552                                    ; preds = %6511
  %6553 = fmul fast float %6535, %6530
  %6554 = fmul fast float %6535, %6529
  %6555 = fmul fast float %6535, %6528
  %6556 = fmul fast float %6555, %6555
  %6557 = fmul fast float %6554, %6554
  %6558 = fadd fast float %6556, %6557
  %6559 = fmul fast float %6553, %6553
  %6560 = fadd fast float %6558, %6559
  %6561 = call float @dx.op.unary.f32(i32 24, float %6560)  ; Sqrt(value)
  br label %6572

; <label>:6562                                    ; preds = %6511
  %6563 = icmp slt i32 %6541, 0
  br i1 %6563, label %6564, label %6572

; <label>:6564                                    ; preds = %6562
  %6565 = fsub fast float %160, %6524
  %6566 = fmul fast float %6517, %6517
  %6567 = fmul fast float %6518, %6518
  %6568 = fadd fast float %6566, %6567
  %6569 = fmul fast float %6565, %6565
  %6570 = fadd fast float %6568, %6569
  %6571 = call float @dx.op.unary.f32(i32 24, float %6570)  ; Sqrt(value)
  br label %6572

; <label>:6572                                    ; preds = %6564, %6562, %6552
  %6573 = phi float [ %6561, %6552 ], [ %6571, %6564 ], [ 0.000000e+00, %6562 ]
  %6574 = fsub fast float -0.000000e+00, %6573
  %6575 = select i1 %6516, float -0.000000e+00, float %6574
  %6576 = fmul fast float %5229, 0x3FF7154760000000
  %6577 = fmul fast float %6576, %6575
  %6578 = fmul fast float %5230, 0x3FF7154760000000
  %6579 = fmul fast float %6578, %6575
  %6580 = fmul fast float %5231, 0x3FF7154760000000
  %6581 = fmul fast float %6580, %6575
  %6582 = call float @dx.op.unary.f32(i32 21, float %6577)  ; Exp(value)
  %6583 = call float @dx.op.unary.f32(i32 21, float %6579)  ; Exp(value)
  %6584 = call float @dx.op.unary.f32(i32 21, float %6581)  ; Exp(value)
  %6585 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  %6586 = call float @dx.op.unary.f32(i32 7, float %6583)  ; Saturate(value)
  %6587 = call float @dx.op.unary.f32(i32 7, float %6584)  ; Saturate(value)
  %6588 = fmul fast float %6512, %6585
  %6589 = fmul fast float %6513, %6586
  %6590 = fmul fast float %6514, %6587
  %6591 = fsub fast float %5694, %5428
  %6592 = fsub fast float %5695, %5427
  %6593 = fsub fast float %5696, %5426
  %6594 = call float @dx.op.dot3.f32(i32 55, float %6591, float %6592, float %6593, float %6591, float %6592, float %6593)  ; Dot3(ax,ay,az,bx,by,bz)
  %6595 = call float @dx.op.unary.f32(i32 25, float %6594)  ; Rsqrt(value)
  %6596 = fmul fast float %6595, %6591
  %6597 = fmul fast float %6595, %6592
  %6598 = fmul fast float %6595, %6593
  %6599 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5695, float %5696, float %5435, float %5436, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %6600 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5424, float %5423, float %6596, float %6597, float %6598)  ; Dot3(ax,ay,az,bx,by,bz)
  %6601 = call float @dx.op.unary.f32(i32 7, float %6599)  ; Saturate(value)
  %6602 = fmul fast float %6601, %6601
  %6603 = fmul fast float %6602, %5456
  %6604 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  %6605 = fmul fast float %6604, %6601
  %6606 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float %6596, float %6597, float %6598)  ; Dot3(ax,ay,az,bx,by,bz)
  %6607 = fmul fast float %6606, %6606
  %6608 = call float @dx.op.unary.f32(i32 6, float %6599)  ; FAbs(value)
  %6609 = fsub fast float 1.000000e+00, %5438
  %6610 = call float @dx.op.binary.f32(i32 35, float %6609, float 0x3F847AE140000000)  ; FMax(a,b)
  %6611 = fmul fast float %6610, %6610
  %6612 = fmul fast float %6611, %6611
  %6613 = fsub fast float 1.000000e+00, %6612
  %6614 = fmul fast float %5443, %5443
  %6615 = fmul fast float %6614, %6613
  %6616 = fadd fast float %6615, %6612
  %6617 = bitcast float %6616 to i32
  %6618 = ashr i32 %6617, 1
  %6619 = add nsw i32 %6618, 532487669
  %6620 = bitcast i32 %6619 to float
  %6621 = fadd fast float %6620, %5443
  %6622 = fmul fast float %6612, %6607
  %6623 = fsub fast float 1.000000e+00, %6607
  %6624 = fadd fast float %6623, %6622
  %6625 = fmul fast float %6608, %6608
  %6626 = fmul fast float %6625, %6613
  %6627 = fadd fast float %6626, %6612
  %6628 = bitcast float %6627 to i32
  %6629 = ashr i32 %6628, 1
  %6630 = add nsw i32 %6629, 532487669
  %6631 = bitcast i32 %6630 to float
  %6632 = fadd fast float %6631, %6608
  %6633 = fmul fast float %6624, %6624
  %6634 = fmul fast float %6633, %6621
  %6635 = fmul fast float %6634, %6632
  %6636 = fdiv fast float 0x3FF0A00000000000, %6635
  %6637 = fmul fast float %6636, %6612
  %6638 = fmul fast float %5556, 0x3FF9999980000000
  %6639 = fsub fast float 5.000000e+00, %6638
  %6640 = call float @dx.op.unary.f32(i32 6, float %6600)  ; FAbs(value)
  %6641 = fsub fast float 1.000000e+00, %6640
  %6642 = fmul fast float %5556, 0x41D9660740000000
  %6643 = fadd fast float %6642, 0xC1EFBF8940000000
  %6644 = bitcast float %6641 to i32
  %6645 = sitofp i32 %6644 to float
  %6646 = fmul fast float %6645, %6639
  %6647 = fadd fast float %6643, %6646
  %6648 = fptosi float %6647 to i32
  %6649 = bitcast i32 %6648 to float
  %6650 = fsub fast float 1.000000e+00, %5429
  %6651 = fsub fast float 1.000000e+00, %5430
  %6652 = fsub fast float 1.000000e+00, %5441
  %6653 = fmul fast float %6649, %6650
  %6654 = fmul fast float %6649, %6651
  %6655 = fmul fast float %6649, %6652
  %6656 = fadd fast float %6653, %5429
  %6657 = fadd fast float %6654, %5430
  %6658 = fadd fast float %6655, %5441
  br i1 %5579, label %6659, label %6682

; <label>:6659                                    ; preds = %6572
  %6660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4823, float %6640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6661 = extractvalue %dx.types.ResRet.f32 %6660, 0
  %6662 = extractvalue %dx.types.ResRet.f32 %6660, 1
  %6663 = extractvalue %dx.types.ResRet.f32 %6660, 2
  %6664 = fadd fast float %6661, -5.000000e-01
  %6665 = fadd fast float %6662, -5.000000e-01
  %6666 = fadd fast float %6663, -5.000000e-01
  %6667 = fmul fast float %5429, 4.000000e+00
  %6668 = fmul fast float %6667, %6650
  %6669 = fmul fast float %6668, %6664
  %6670 = fmul fast float %5430, 4.000000e+00
  %6671 = fmul fast float %6670, %6651
  %6672 = fmul fast float %6671, %6665
  %6673 = fmul fast float %5441, 4.000000e+00
  %6674 = fmul fast float %6673, %6652
  %6675 = fmul fast float %6674, %6666
  %6676 = fadd fast float %6669, %6656
  %6677 = fadd fast float %6672, %6657
  %6678 = fadd fast float %6675, %6658
  %6679 = call float @dx.op.unary.f32(i32 7, float %6676)  ; Saturate(value)
  %6680 = call float @dx.op.unary.f32(i32 7, float %6677)  ; Saturate(value)
  %6681 = call float @dx.op.unary.f32(i32 7, float %6678)  ; Saturate(value)
  br label %6682

; <label>:6682                                    ; preds = %6659, %6572
  %6683 = phi float [ %6679, %6659 ], [ %6656, %6572 ]
  %6684 = phi float [ %6680, %6659 ], [ %6657, %6572 ]
  %6685 = phi float [ %6681, %6659 ], [ %6658, %6572 ]
  %6686 = fmul fast float %6599, 9.843750e-01
  %6687 = fadd fast float %6686, 7.812500e-03
  %6688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6687, float %5560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6689 = extractvalue %dx.types.ResRet.f32 %6688, 0
  %6690 = extractvalue %dx.types.ResRet.f32 %6688, 1
  %6691 = extractvalue %dx.types.ResRet.f32 %6688, 2
  %6692 = extractvalue %dx.types.ResRet.f32 %6688, 3
  %6693 = fsub fast float %6691, %6689
  %6694 = fsub fast float %6692, %6690
  %6695 = fmul fast float %6693, %5566
  %6696 = fmul fast float %6694, %5566
  %6697 = fadd fast float %6695, %6689
  %6698 = fadd fast float %6696, %6690
  %6699 = fmul fast float %6697, %5429
  %6700 = fmul fast float %6697, %5430
  %6701 = fmul fast float %6697, %5441
  %6702 = fadd fast float %6699, %6698
  %6703 = fadd fast float %6700, %6698
  %6704 = fadd fast float %6701, %6698
  br i1 %5579, label %6705, label %6728

; <label>:6705                                    ; preds = %6682
  %6706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4823, float %6599, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6707 = extractvalue %dx.types.ResRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.ResRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.ResRet.f32 %6706, 2
  %6710 = fadd fast float %6707, -5.000000e-01
  %6711 = fadd fast float %6708, -5.000000e-01
  %6712 = fadd fast float %6709, -5.000000e-01
  %6713 = fmul fast float %5429, 4.000000e+00
  %6714 = fmul fast float %6713, %6650
  %6715 = fmul fast float %6714, %6710
  %6716 = fmul fast float %5430, 4.000000e+00
  %6717 = fmul fast float %6716, %6651
  %6718 = fmul fast float %6717, %6711
  %6719 = fmul fast float %5441, 4.000000e+00
  %6720 = fmul fast float %6719, %6652
  %6721 = fmul fast float %6720, %6712
  %6722 = fadd fast float %6715, %6702
  %6723 = fadd fast float %6718, %6703
  %6724 = fadd fast float %6721, %6704
  %6725 = call float @dx.op.unary.f32(i32 7, float %6722)  ; Saturate(value)
  %6726 = call float @dx.op.unary.f32(i32 7, float %6723)  ; Saturate(value)
  %6727 = call float @dx.op.unary.f32(i32 7, float %6724)  ; Saturate(value)
  br label %6728

; <label>:6728                                    ; preds = %6705, %6682
  %6729 = phi float [ %6725, %6705 ], [ %6702, %6682 ]
  %6730 = phi float [ %6726, %6705 ], [ %6703, %6682 ]
  %6731 = phi float [ %6727, %6705 ], [ %6704, %6682 ]
  %6732 = call float @dx.op.binary.f32(i32 35, float %6730, float %6731)  ; FMax(a,b)
  %6733 = call float @dx.op.binary.f32(i32 35, float %6729, float %6732)  ; FMax(a,b)
  %6734 = fsub fast float 1.000000e+00, %6733
  %6735 = fmul fast float %6683, %6637
  %6736 = fmul fast float %6684, %6637
  %6737 = fmul fast float %6685, %6637
  %6738 = fsub fast float 1.000000e+00, %6600
  %6739 = bitcast float %6738 to i32
  %6740 = sitofp i32 %6739 to float
  %6741 = fmul fast float %6740, 5.000000e+00
  %6742 = fadd fast float %6741, 0xC1EFBF8940000000
  %6743 = fptosi float %6742 to i32
  %6744 = bitcast i32 %6743 to float
  %6745 = fmul fast float %6744, %4824
  %6746 = fmul fast float %6734, %6745
  %6747 = fmul fast float %6746, %5629
  %6748 = fmul fast float %6746, %5630
  %6749 = fmul fast float %6746, %5631
  %6750 = fadd fast float %6747, %6735
  %6751 = fadd fast float %6748, %6736
  %6752 = fadd fast float %6749, %6737
  %6753 = fmul fast float %6605, %6588
  %6754 = fmul fast float %6753, %6734
  %6755 = fmul fast float %6605, %6589
  %6756 = fmul fast float %6755, %6734
  %6757 = fmul fast float %6605, %6590
  %6758 = fmul fast float %6757, %6734
  %6759 = fmul fast float %6753, %6750
  %6760 = fmul fast float %6755, %6751
  %6761 = fmul fast float %6757, %6752
  %6762 = fadd fast float %6754, %5613
  %6763 = fmul fast float %6762, %4820
  %6764 = fadd fast float %6756, %5614
  %6765 = fmul fast float %6764, %4820
  %6766 = fadd fast float %6758, %5615
  %6767 = fmul fast float %6766, %4820
  %6768 = fadd fast float %6759, %5682
  %6769 = fmul fast float %6768, %4820
  %6770 = fadd fast float %6760, %5685
  %6771 = fmul fast float %6770, %4820
  %6772 = fadd fast float %6761, %5688
  %6773 = fmul fast float %6772, %4820
  br label %6774

; <label>:6774                                    ; preds = %6728, %6506, %5606
  %6775 = phi float [ %5683, %5606 ], [ %5683, %6506 ], [ %6769, %6728 ]
  %6776 = phi float [ %5686, %5606 ], [ %5686, %6506 ], [ %6771, %6728 ]
  %6777 = phi float [ %5689, %5606 ], [ %5689, %6506 ], [ %6773, %6728 ]
  %6778 = phi float [ %5678, %5606 ], [ %5678, %6506 ], [ %6763, %6728 ]
  %6779 = phi float [ %5679, %5606 ], [ %5679, %6506 ], [ %6765, %6728 ]
  %6780 = phi float [ %5680, %5606 ], [ %5680, %6506 ], [ %6767, %6728 ]
  %6781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6782 = extractvalue %dx.types.CBufRet.i32 %6781, 0
  %6783 = icmp eq i32 %6782, 0
  br i1 %6783, label %7416, label %6784

; <label>:6784                                    ; preds = %6774
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 2
  %6787 = extractvalue %dx.types.CBufRet.f32 %6785, 3
  %6788 = fmul fast float %6786, %95
  %6789 = fmul fast float %6787, %96
  %6790 = fptoui float %6788 to i32
  %6791 = fptoui float %6789 to i32
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6792, 2
  %6795 = extractvalue %dx.types.CBufRet.f32 %6792, 3
  %6796 = fadd fast float %86, -4.000000e+00
  %6797 = call float @dx.op.binary.f32(i32 35, float %6796, float 0.000000e+00)  ; FMax(a,b)
  %6798 = fadd fast float %6797, %6793
  %6799 = fmul fast float %6798, %6794
  %6800 = call float @dx.op.unary.f32(i32 23, float %6799)  ; Log(value)
  %6801 = fmul fast float %6800, %6795
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 2
  %6804 = fmul fast float %6801, %6803
  %6805 = call float @dx.op.unary.f32(i32 7, float %6804)  ; Saturate(value)
  %6806 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.i32 %6806, 1
  %6808 = add i32 %6807, -1
  %6809 = uitofp i32 %6807 to float
  %6810 = fmul fast float %6809, %6805
  %6811 = fptoui float %6810 to i32
  %6812 = call i32 @dx.op.binary.i32(i32 40, i32 %6811, i32 %6808)  ; UMin(a,b)
  %6813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.i32 %6813, 2
  %6815 = extractvalue %dx.types.CBufRet.i32 %6813, 3
  %6816 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6791, i32 %6814, i32 %6790)  ; UMad(a,b,c)
  %6817 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6812, i32 %6815, i32 %6816)  ; UMad(a,b,c)
  %6818 = add nsw i32 %6782, -1
  %6819 = call i32 @dx.op.binary.i32(i32 37, i32 %6818, i32 0)  ; IMax(a,b)
  %6820 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %6821 = fptoui float %6820 to i32
  %6822 = lshr i32 %6821, 5
  %6823 = call i32 @dx.op.binary.i32(i32 40, i32 %6822, i32 8191)  ; UMin(a,b)
  %6824 = shl i32 %6823, 2
  %6825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6824, i32 undef)  ; BufferLoad(srv,index,wot)
  %6826 = extractvalue %dx.types.ResRet.i32 %6825, 0
  %6827 = lshr i32 %6826, 16
  %6828 = and i32 %6826, 65535
  %6829 = lshr i32 %6826, 21
  %6830 = lshr i32 %6828, 5
  %6831 = call i32 @dx.op.binary.i32(i32 40, i32 %6830, i32 %6819)  ; UMin(a,b)
  %6832 = icmp ugt i32 %6829, %6831
  br i1 %6832, label %7416, label %6833

; <label>:6833                                    ; preds = %6784
  br label %6834

; <label>:6834                                    ; preds = %7406, %6833
  %6835 = phi i32 [ %7413, %7406 ], [ %6829, %6833 ]
  %6836 = phi float [ %7407, %7406 ], [ %6775, %6833 ]
  %6837 = phi float [ %7408, %7406 ], [ %6776, %6833 ]
  %6838 = phi float [ %7409, %7406 ], [ %6777, %6833 ]
  %6839 = phi float [ %7410, %7406 ], [ %6778, %6833 ]
  %6840 = phi float [ %7411, %7406 ], [ %6779, %6833 ]
  %6841 = phi float [ %7412, %7406 ], [ %6780, %6833 ]
  %6842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6843 = extractvalue %dx.types.CBufRet.i32 %6842, 0
  %6844 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6817, i32 %6843, i32 %6835)  ; UMad(a,b,c)
  %6845 = shl i32 %6844, 2
  %6846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6845, i32 undef)  ; BufferLoad(srv,index,wot)
  %6847 = extractvalue %dx.types.ResRet.i32 %6846, 0
  %6848 = shl i32 %6835, 5
  %6849 = sub nsw i32 %6827, %6848
  %6850 = call i32 @dx.op.binary.i32(i32 37, i32 %6849, i32 0)  ; IMax(a,b)
  %6851 = call i32 @dx.op.binary.i32(i32 38, i32 %6850, i32 31)  ; IMin(a,b)
  %6852 = sub nsw i32 1, %6827
  %6853 = add nsw i32 %6852, %6828
  %6854 = call i32 @dx.op.binary.i32(i32 37, i32 %6853, i32 0)  ; IMax(a,b)
  %6855 = call i32 @dx.op.binary.i32(i32 38, i32 %6854, i32 32)  ; IMin(a,b)
  %6856 = and i32 %6855, 31
  %6857 = shl i32 -1, %6856
  %6858 = xor i32 %6857, -1
  %6859 = and i32 %6851, 31
  %6860 = shl i32 %6858, %6859
  %6861 = icmp eq i32 %6855, 32
  %6862 = select i1 %6861, i32 -1, i32 %6860
  %6863 = and i32 %6862, %6847
  %6864 = icmp eq i32 %6863, 0
  br i1 %6864, label %7406, label %6865

; <label>:6865                                    ; preds = %6834
  br label %6866

; <label>:6866                                    ; preds = %7000, %6865
  %6867 = phi i32 [ %6878, %7000 ], [ %6863, %6865 ]
  %6868 = phi float [ %7001, %7000 ], [ %6836, %6865 ]
  %6869 = phi float [ %7002, %7000 ], [ %6837, %6865 ]
  %6870 = phi float [ %7003, %7000 ], [ %6838, %6865 ]
  %6871 = phi float [ %7004, %7000 ], [ %6839, %6865 ]
  %6872 = phi float [ %7005, %7000 ], [ %6840, %6865 ]
  %6873 = phi float [ %7006, %7000 ], [ %6841, %6865 ]
  %6874 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6867)  ; FirstbitLo(value)
  %6875 = add i32 %6874, %6848
  %6876 = and i32 %6874, 31
  %6877 = shl i32 1, %6876
  %6878 = xor i32 %6877, %6867
  %6879 = mul i32 %6875, 112
  %6880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6879, i32 undef)  ; BufferLoad(srv,index,wot)
  %6881 = extractvalue %dx.types.ResRet.f32 %6880, 0
  %6882 = extractvalue %dx.types.ResRet.f32 %6880, 1
  %6883 = extractvalue %dx.types.ResRet.f32 %6880, 2
  %6884 = or i32 %6879, 12
  %6885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6884, i32 undef)  ; BufferLoad(srv,index,wot)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  %6887 = add i32 %6879, 16
  %6888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6887, i32 undef)  ; BufferLoad(srv,index,wot)
  %6889 = extractvalue %dx.types.ResRet.f32 %6888, 0
  %6890 = extractvalue %dx.types.ResRet.f32 %6888, 1
  %6891 = extractvalue %dx.types.ResRet.f32 %6888, 2
  %6892 = add i32 %6879, 28
  %6893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6892, i32 undef)  ; BufferLoad(srv,index,wot)
  %6894 = extractvalue %dx.types.ResRet.i32 %6893, 0
  %6895 = add i32 %6879, 44
  %6896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6895, i32 undef)  ; BufferLoad(srv,index,wot)
  %6897 = extractvalue %dx.types.ResRet.f32 %6896, 0
  %6898 = add i32 %6879, 48
  %6899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6898, i32 undef)  ; BufferLoad(srv,index,wot)
  %6900 = extractvalue %dx.types.ResRet.f32 %6899, 0
  %6901 = extractvalue %dx.types.ResRet.f32 %6899, 1
  %6902 = extractvalue %dx.types.ResRet.f32 %6899, 2
  %6903 = extractvalue %dx.types.ResRet.f32 %6899, 3
  %6904 = add i32 %6879, 64
  %6905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6904, i32 undef)  ; BufferLoad(srv,index,wot)
  %6906 = extractvalue %dx.types.ResRet.f32 %6905, 0
  %6907 = extractvalue %dx.types.ResRet.f32 %6905, 1
  %6908 = extractvalue %dx.types.ResRet.f32 %6905, 2
  %6909 = extractvalue %dx.types.ResRet.f32 %6905, 3
  %6910 = add i32 %6879, 80
  %6911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6910, i32 undef)  ; BufferLoad(srv,index,wot)
  %6912 = extractvalue %dx.types.ResRet.f32 %6911, 1
  %6913 = extractvalue %dx.types.ResRet.f32 %6911, 2
  %6914 = add i32 %6879, 92
  %6915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6914, i32 undef)  ; BufferLoad(srv,index,wot)
  %6916 = extractvalue %dx.types.ResRet.i32 %6915, 0
  %6917 = call float @dx.op.dot3.f32(i32 55, float %6881, float %6882, float %6883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6918 = select i1 %220, float %6912, float %6881
  %6919 = select i1 %220, float %6917, float %6882
  %6920 = select i1 %220, float %6913, float %6883
  %6921 = and i32 %6916, 65535
  %6922 = uitofp i32 %6921 to float
  %6923 = lshr i32 %6916, 16
  %6924 = uitofp i32 %6923 to float
  %6925 = and i32 %6894, 65535
  %6926 = and i32 %6894, 50331648
  %6927 = icmp eq i32 %6926, 33554432
  %6928 = fsub fast float %6900, %158
  %6929 = fsub fast float %6901, %159
  %6930 = fsub fast float %6902, %160
  %6931 = call float @dx.op.dot3.f32(i32 55, float %6928, float %6929, float %6930, float %6928, float %6929, float %6930)  ; Dot3(ax,ay,az,bx,by,bz)
  %6932 = call float @dx.op.unary.f32(i32 24, float %6931)  ; Sqrt(value)
  %6933 = fdiv fast float 1.000000e+00, %6932
  %6934 = fmul fast float %6933, %6928
  %6935 = fmul fast float %6933, %6929
  %6936 = fmul fast float %6933, %6930
  %6937 = fadd fast float %6932, %6886
  %6938 = fdiv fast float 1.000000e+00, %6937
  %6939 = fmul float %6897, %6938
  %6940 = fmul float %6939, %6939
  %6941 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  br i1 %6927, label %6942, label %6963

; <label>:6942                                    ; preds = %6866
  %6943 = fmul fast float %6908, %6889
  %6944 = fmul fast float %6908, %6890
  %6945 = fmul fast float %6908, %6891
  %6946 = fadd fast float %6928, %6943
  %6947 = fadd fast float %6929, %6944
  %6948 = fadd fast float %6930, %6945
  %6949 = call float @dx.op.dot3.f32(i32 55, float %6946, float %6947, float %6948, float %6946, float %6947, float %6948)  ; Dot3(ax,ay,az,bx,by,bz)
  %6950 = call float @dx.op.unary.f32(i32 25, float %6949)  ; Rsqrt(value)
  %6951 = fmul fast float %6950, %6946
  %6952 = fmul fast float %6950, %6947
  %6953 = fmul fast float %6950, %6948
  %6954 = fsub fast float %158, %6900
  %6955 = fsub fast float %159, %6901
  %6956 = fsub fast float %160, %6902
  %6957 = fsub fast float -0.000000e+00, %6954
  %6958 = fsub fast float -0.000000e+00, %6955
  %6959 = fsub fast float -0.000000e+00, %6956
  %6960 = call float @dx.op.dot3.f32(i32 55, float %6957, float %6958, float %6959, float %6889, float %6890, float %6891)  ; Dot3(ax,ay,az,bx,by,bz)
  %6961 = fcmp fast ogt float %6960, 0.000000e+00
  %6962 = uitofp i1 %6961 to float
  br label %6963

; <label>:6963                                    ; preds = %6942, %6866
  %6964 = phi float [ %6962, %6942 ], [ 1.000000e+00, %6866 ]
  %6965 = phi float [ %6951, %6942 ], [ %6934, %6866 ]
  %6966 = phi float [ %6952, %6942 ], [ %6935, %6866 ]
  %6967 = phi float [ %6953, %6942 ], [ %6936, %6866 ]
  %6968 = call float @dx.op.dot3.f32(i32 55, float %6889, float %6890, float %6891, float %6965, float %6966, float %6967)  ; Dot3(ax,ay,az,bx,by,bz)
  %6969 = fmul fast float %6968, %6968
  %6970 = call float @dx.op.unary.f32(i32 7, float %6969)  ; Saturate(value)
  %6971 = fsub fast float 1.000000e+00, %6970
  %6972 = fmul fast float %6971, 5.000000e-01
  %6973 = fcmp fast ogt float %6968, 0.000000e+00
  %6974 = fsub fast float 1.000000e+00, %6972
  %6975 = select i1 %6973, float %6972, float %6974
  %6976 = fmul fast float %6975, %6924
  %6977 = fadd fast float %6976, %6922
  %6978 = fmul fast float %6977, 0x3EF0001000000000
  %6979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6978, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6980 = extractvalue %dx.types.ResRet.f32 %6979, 0
  %6981 = fmul fast float %6968, %6906
  %6982 = fadd fast float %6981, %6907
  %6983 = call float @dx.op.unary.f32(i32 7, float %6982)  ; Saturate(value)
  %6984 = select i1 %6927, float 1.000000e+00, float %6983
  %6985 = select i1 %6927, float %6983, float 1.000000e+00
  %6986 = fmul fast float %6932, %6903
  %6987 = fsub fast float 1.000000e+00, %6986
  %6988 = fmul fast float %6987, %6909
  %6989 = call float @dx.op.unary.f32(i32 7, float %6988)  ; Saturate(value)
  %6990 = fmul fast float %6989, %6985
  %6991 = fmul fast float %6990, 2.000000e+00
  %6992 = fsub fast float 3.000000e+00, %6991
  %6993 = fmul fast float %6980, %6964
  %6994 = fmul fast float %6990, %6990
  %6995 = fmul fast float %6994, %6993
  %6996 = fmul fast float %6995, %6992
  %6997 = call float @dx.op.binary.f32(i32 36, float %6996, float %6996)  ; FMin(a,b)
  %6998 = call float @dx.op.binary.f32(i32 36, float %6996, float %6997)  ; FMin(a,b)
  %6999 = fcmp fast ogt float %6998, 0.000000e+00
  br i1 %6999, label %7008, label %7000, !dx.controlflow.hints !116

; <label>:7000                                    ; preds = %7362, %7108, %6963
  %7001 = phi float [ %6868, %7108 ], [ %6868, %6963 ], [ %7402, %7362 ]
  %7002 = phi float [ %6869, %7108 ], [ %6869, %6963 ], [ %7403, %7362 ]
  %7003 = phi float [ %6870, %7108 ], [ %6870, %6963 ], [ %7404, %7362 ]
  %7004 = phi float [ %6871, %7108 ], [ %6871, %6963 ], [ %7396, %7362 ]
  %7005 = phi float [ %6872, %7108 ], [ %6872, %6963 ], [ %7397, %7362 ]
  %7006 = phi float [ %6873, %7108 ], [ %6873, %6963 ], [ %7398, %7362 ]
  %7007 = icmp eq i32 %6867, %6877
  br i1 %7007, label %7405, label %6866

; <label>:7008                                    ; preds = %6963
  %7009 = icmp eq i32 %6925, 255
  br i1 %7009, label %7108, label %7010, !dx.controlflow.hints !117

; <label>:7010                                    ; preds = %7008
  %7011 = mul nuw nsw i32 %6925, 176
  %7012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7011, i32 undef)  ; BufferLoad(srv,index,wot)
  %7013 = extractvalue %dx.types.ResRet.f32 %7012, 0
  %7014 = extractvalue %dx.types.ResRet.f32 %7012, 1
  %7015 = extractvalue %dx.types.ResRet.f32 %7012, 2
  %7016 = extractvalue %dx.types.ResRet.f32 %7012, 3
  %7017 = add nuw nsw i32 %7011, 16
  %7018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7017, i32 undef)  ; BufferLoad(srv,index,wot)
  %7019 = extractvalue %dx.types.ResRet.f32 %7018, 0
  %7020 = extractvalue %dx.types.ResRet.f32 %7018, 1
  %7021 = add nuw nsw i32 %7011, 32
  %7022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7021, i32 undef)  ; BufferLoad(srv,index,wot)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.ResRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.ResRet.f32 %7022, 2
  %7026 = add nuw nsw i32 %7011, 48
  %7027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7026, i32 undef)  ; BufferLoad(srv,index,wot)
  %7028 = extractvalue %dx.types.ResRet.f32 %7027, 0
  %7029 = extractvalue %dx.types.ResRet.f32 %7027, 1
  %7030 = extractvalue %dx.types.ResRet.f32 %7027, 2
  %7031 = extractvalue %dx.types.ResRet.f32 %7027, 3
  %7032 = add nuw nsw i32 %7011, 64
  %7033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7032, i32 undef)  ; BufferLoad(srv,index,wot)
  %7034 = extractvalue %dx.types.ResRet.f32 %7033, 0
  %7035 = extractvalue %dx.types.ResRet.f32 %7033, 1
  %7036 = extractvalue %dx.types.ResRet.f32 %7033, 2
  %7037 = extractvalue %dx.types.ResRet.f32 %7033, 3
  %7038 = add nuw nsw i32 %7011, 80
  %7039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7038, i32 undef)  ; BufferLoad(srv,index,wot)
  %7040 = extractvalue %dx.types.ResRet.f32 %7039, 0
  %7041 = extractvalue %dx.types.ResRet.f32 %7039, 1
  %7042 = extractvalue %dx.types.ResRet.f32 %7039, 2
  %7043 = extractvalue %dx.types.ResRet.f32 %7039, 3
  %7044 = add nuw nsw i32 %7011, 96
  %7045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7044, i32 undef)  ; BufferLoad(srv,index,wot)
  %7046 = extractvalue %dx.types.ResRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.ResRet.f32 %7045, 1
  %7048 = extractvalue %dx.types.ResRet.f32 %7045, 2
  %7049 = extractvalue %dx.types.ResRet.f32 %7045, 3
  %7050 = bitcast float %7020 to i32
  %7051 = fmul fast float %7025, %102
  %7052 = fmul fast float %7025, %103
  %7053 = fmul fast float %7025, %104
  %7054 = fadd fast float %7051, %158
  %7055 = fadd fast float %7052, %159
  %7056 = fadd fast float %7053, %160
  %7057 = fmul fast float %7054, %7028
  %7058 = call float @dx.op.tertiary.f32(i32 46, float %7055, float %7034, float %7057)  ; FMad(a,b,c)
  %7059 = call float @dx.op.tertiary.f32(i32 46, float %7056, float %7040, float %7058)  ; FMad(a,b,c)
  %7060 = fadd fast float %7059, %7046
  %7061 = fmul fast float %7054, %7029
  %7062 = call float @dx.op.tertiary.f32(i32 46, float %7055, float %7035, float %7061)  ; FMad(a,b,c)
  %7063 = call float @dx.op.tertiary.f32(i32 46, float %7056, float %7041, float %7062)  ; FMad(a,b,c)
  %7064 = fadd fast float %7063, %7047
  %7065 = fmul fast float %7054, %7030
  %7066 = call float @dx.op.tertiary.f32(i32 46, float %7055, float %7036, float %7065)  ; FMad(a,b,c)
  %7067 = call float @dx.op.tertiary.f32(i32 46, float %7056, float %7042, float %7066)  ; FMad(a,b,c)
  %7068 = fadd fast float %7067, %7048
  %7069 = fmul fast float %7054, %7031
  %7070 = call float @dx.op.tertiary.f32(i32 46, float %7055, float %7037, float %7069)  ; FMad(a,b,c)
  %7071 = call float @dx.op.tertiary.f32(i32 46, float %7056, float %7043, float %7070)  ; FMad(a,b,c)
  %7072 = fadd fast float %7071, %7049
  %7073 = fdiv fast float %7060, %7072
  %7074 = fdiv fast float %7064, %7072
  %7075 = fdiv fast float %7068, %7072
  %7076 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7075)  ; FMax(a,b)
  %7077 = fmul fast float %231, 0x401921FB60000000
  %7078 = call float @dx.op.unary.f32(i32 13, float %7077)  ; Sin(value)
  %7079 = call float @dx.op.unary.f32(i32 12, float %7077)  ; Cos(value)
  %7080 = fsub fast float -0.000000e+00, %7078
  %7081 = fmul fast float %7015, 5.000000e-01
  %7082 = call float @dx.op.dot2.f32(i32 54, float %231, float %231, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7083 = call float @dx.op.unary.f32(i32 22, float %7082)  ; Frc(value)
  %7084 = fmul fast float %7083, 0x404A7DD040000000
  %7085 = call float @dx.op.unary.f32(i32 22, float %7084)  ; Frc(value)
  %7086 = fmul fast float %7085, %7024
  %7087 = fadd fast float %7086, %7081
  %7088 = call float @dx.op.tertiary.f32(i32 46, float %7087, float %7080, float 0.000000e+00)  ; FMad(a,b,c)
  %7089 = call float @dx.op.tertiary.f32(i32 46, float %7087, float %7079, float 0.000000e+00)  ; FMad(a,b,c)
  %7090 = fadd fast float %7088, %7073
  %7091 = fadd fast float %7089, %7074
  %7092 = fmul fast float %7090, %7019
  %7093 = fmul fast float %7091, %7019
  %7094 = call float @dx.op.binary.f32(i32 35, float %7092, float %7015)  ; FMax(a,b)
  %7095 = call float @dx.op.binary.f32(i32 35, float %7093, float %7015)  ; FMax(a,b)
  %7096 = call float @dx.op.binary.f32(i32 36, float %7094, float %7016)  ; FMin(a,b)
  %7097 = call float @dx.op.binary.f32(i32 36, float %7095, float %7016)  ; FMin(a,b)
  %7098 = fadd fast float %7096, %7013
  %7099 = fadd fast float %7097, %7014
  %7100 = uitofp i32 %7050 to float
  %7101 = fadd fast float %7076, %7023
  %7102 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7098, float %7099, float %7100, float undef, i32 0, i32 0, i32 undef, float %7101)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7103 = extractvalue %dx.types.ResRet.f32 %7102, 0
  %7104 = fadd fast float %7103, -1.000000e+00
  %7105 = fmul fast float %7104, %6984
  %7106 = fadd fast float %7105, 1.000000e+00
  %7107 = fmul fast float %7106, %6996
  br label %7108

; <label>:7108                                    ; preds = %7010, %7008
  %7109 = phi float [ %7107, %7010 ], [ %6996, %7008 ]
  %7110 = call float @dx.op.binary.f32(i32 36, float %7109, float %7109)  ; FMin(a,b)
  %7111 = call float @dx.op.binary.f32(i32 36, float %7109, float %7110)  ; FMin(a,b)
  %7112 = fcmp fast ogt float %7111, 0.000000e+00
  br i1 %7112, label %7113, label %7000, !dx.controlflow.hints !118

; <label>:7113                                    ; preds = %7108
  %7114 = fmul fast float %7109, %6918
  %7115 = fmul fast float %7109, %6919
  %7116 = fmul fast float %7109, %6920
  %7117 = fsub fast float %6902, %5228
  %7118 = fcmp fast ogt float %7117, 0.000000e+00
  %7119 = fsub fast float %160, %5228
  %7120 = fcmp fast ogt float %7119, 0.000000e+00
  %7121 = xor i1 %7120, %7118
  %7122 = fsub fast float %5228, %6902
  %7123 = fmul fast float %7122, 2.000000e+00
  %7124 = fadd fast float %7123, %6902
  %7125 = select i1 %7121, float %6902, float %7124
  %7126 = fsub fast float %7125, %160
  %7127 = call float @dx.op.dot3.f32(i32 55, float %6928, float %6929, float %7126, float %6928, float %6929, float %7126)  ; Dot3(ax,ay,az,bx,by,bz)
  %7128 = call float @dx.op.unary.f32(i32 25, float %7127)  ; Rsqrt(value)
  %7129 = fmul fast float %7128, %6928
  %7130 = fmul fast float %7128, %6929
  %7131 = fmul fast float %7128, %7126
  %7132 = fsub fast float %5228, %160
  %7133 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7132)  ; Dot3(ax,ay,az,bx,by,bz)
  %7134 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7129, float %7130, float %7131)  ; Dot3(ax,ay,az,bx,by,bz)
  %7135 = fdiv fast float 1.000000e+00, %7134
  %7136 = fmul fast float %7135, %7133
  %7137 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7138 = fcmp fast ogt float %7137, 0.000000e+00
  %7139 = fcmp fast olt float %7137, 0.000000e+00
  %7140 = zext i1 %7138 to i32
  %7141 = zext i1 %7139 to i32
  %7142 = sub nsw i32 %7140, %7141
  %7143 = sitofp i32 %7142 to float
  %7144 = fsub fast float %7125, %5228
  %7145 = call float @dx.op.dot3.f32(i32 55, float %6928, float %6929, float %7144, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7146 = fcmp fast ogt float %7145, 0.000000e+00
  %7147 = fcmp fast olt float %7145, 0.000000e+00
  %7148 = zext i1 %7146 to i32
  %7149 = zext i1 %7147 to i32
  %7150 = sub nsw i32 %7148, %7149
  %7151 = sitofp i32 %7150 to float
  %7152 = fcmp fast une float %7143, %7151
  br i1 %7152, label %7153, label %7163

; <label>:7153                                    ; preds = %7113
  %7154 = fmul fast float %7136, %7131
  %7155 = fmul fast float %7136, %7130
  %7156 = fmul fast float %7136, %7129
  %7157 = fmul fast float %7156, %7156
  %7158 = fmul fast float %7155, %7155
  %7159 = fadd fast float %7157, %7158
  %7160 = fmul fast float %7154, %7154
  %7161 = fadd fast float %7159, %7160
  %7162 = call float @dx.op.unary.f32(i32 24, float %7161)  ; Sqrt(value)
  br label %7175

; <label>:7163                                    ; preds = %7113
  %7164 = icmp slt i32 %7142, 0
  br i1 %7164, label %7165, label %7175

; <label>:7165                                    ; preds = %7163
  %7166 = fsub fast float %158, %6900
  %7167 = fsub fast float %159, %6901
  %7168 = fsub fast float %160, %7125
  %7169 = fmul fast float %7166, %7166
  %7170 = fmul fast float %7167, %7167
  %7171 = fadd fast float %7169, %7170
  %7172 = fmul fast float %7168, %7168
  %7173 = fadd fast float %7171, %7172
  %7174 = call float @dx.op.unary.f32(i32 24, float %7173)  ; Sqrt(value)
  br label %7175

; <label>:7175                                    ; preds = %7165, %7163, %7153
  %7176 = phi float [ %7162, %7153 ], [ %7174, %7165 ], [ 0.000000e+00, %7163 ]
  %7177 = and i1 %7120, %7118
  %7178 = fsub fast float -0.000000e+00, %7176
  %7179 = select i1 %7177, float -0.000000e+00, float %7178
  %7180 = fmul fast float %5229, 0x3FF7154760000000
  %7181 = fmul fast float %7180, %7179
  %7182 = fmul fast float %5230, 0x3FF7154760000000
  %7183 = fmul fast float %7182, %7179
  %7184 = fmul fast float %5231, 0x3FF7154760000000
  %7185 = fmul fast float %7184, %7179
  %7186 = call float @dx.op.unary.f32(i32 21, float %7181)  ; Exp(value)
  %7187 = call float @dx.op.unary.f32(i32 21, float %7183)  ; Exp(value)
  %7188 = call float @dx.op.unary.f32(i32 21, float %7185)  ; Exp(value)
  %7189 = call float @dx.op.unary.f32(i32 7, float %7186)  ; Saturate(value)
  %7190 = call float @dx.op.unary.f32(i32 7, float %7187)  ; Saturate(value)
  %7191 = call float @dx.op.unary.f32(i32 7, float %7188)  ; Saturate(value)
  %7192 = fmul fast float %7114, %7189
  %7193 = fmul fast float %7115, %7190
  %7194 = fmul fast float %7116, %7191
  %7195 = fsub fast float %6934, %5428
  %7196 = fsub fast float %6935, %5427
  %7197 = fsub fast float %6936, %5426
  %7198 = call float @dx.op.dot3.f32(i32 55, float %7195, float %7196, float %7197, float %7195, float %7196, float %7197)  ; Dot3(ax,ay,az,bx,by,bz)
  %7199 = call float @dx.op.unary.f32(i32 25, float %7198)  ; Rsqrt(value)
  %7200 = fmul fast float %7199, %7195
  %7201 = fmul fast float %7199, %7196
  %7202 = fmul fast float %7199, %7197
  %7203 = call float @dx.op.dot3.f32(i32 55, float %6934, float %6935, float %6936, float %5435, float %5436, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %7204 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5424, float %5423, float %7200, float %7201, float %7202)  ; Dot3(ax,ay,az,bx,by,bz)
  %7205 = call float @dx.op.unary.f32(i32 7, float %7203)  ; Saturate(value)
  %7206 = fmul fast float %7205, %6941
  %7207 = fmul fast float %7205, %7205
  %7208 = fmul fast float %7207, %5456
  %7209 = call float @dx.op.unary.f32(i32 7, float %7208)  ; Saturate(value)
  %7210 = fmul fast float %7206, %7209
  %7211 = bitcast float %6931 to i32
  %7212 = ashr i32 %7211, 1
  %7213 = sub nsw i32 1597463007, %7212
  %7214 = bitcast i32 %7213 to float
  %7215 = fmul fast float %7214, %6928
  %7216 = fmul fast float %7214, %6929
  %7217 = fmul fast float %7214, %6930
  %7218 = fsub fast float %7215, %5428
  %7219 = fsub fast float %7216, %5427
  %7220 = fsub fast float %7217, %5426
  %7221 = call float @dx.op.dot3.f32(i32 55, float %7218, float %7219, float %7220, float %7218, float %7219, float %7220)  ; Dot3(ax,ay,az,bx,by,bz)
  %7222 = call float @dx.op.unary.f32(i32 25, float %7221)  ; Rsqrt(value)
  %7223 = fmul fast float %7218, %7222
  %7224 = fmul fast float %7219, %7222
  %7225 = fmul fast float %7220, %7222
  %7226 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float %7223, float %7224, float %7225)  ; Dot3(ax,ay,az,bx,by,bz)
  %7227 = fmul fast float %7226, %7226
  %7228 = call float @dx.op.unary.f32(i32 6, float %7203)  ; FAbs(value)
  %7229 = fsub fast float 1.000000e+00, %5438
  %7230 = call float @dx.op.binary.f32(i32 35, float %7229, float 0x3F847AE140000000)  ; FMax(a,b)
  %7231 = fmul fast float %7230, %7230
  %7232 = fmul fast float %7231, %7231
  %7233 = fsub fast float 1.000000e+00, %7232
  %7234 = fmul fast float %5443, %5443
  %7235 = fmul fast float %7234, %7233
  %7236 = fadd fast float %7235, %7232
  %7237 = bitcast float %7236 to i32
  %7238 = ashr i32 %7237, 1
  %7239 = add nsw i32 %7238, 532487669
  %7240 = bitcast i32 %7239 to float
  %7241 = fadd fast float %7240, %5443
  %7242 = fmul fast float %7232, %7227
  %7243 = fsub fast float 1.000000e+00, %7227
  %7244 = fadd fast float %7243, %7242
  %7245 = fmul fast float %7228, %7228
  %7246 = fmul fast float %7245, %7233
  %7247 = fadd fast float %7246, %7232
  %7248 = bitcast float %7247 to i32
  %7249 = ashr i32 %7248, 1
  %7250 = add nsw i32 %7249, 532487669
  %7251 = bitcast i32 %7250 to float
  %7252 = fadd fast float %7251, %7228
  %7253 = fmul fast float %7244, %7244
  %7254 = fmul fast float %7253, %7241
  %7255 = fmul fast float %7254, %7252
  %7256 = fdiv fast float 1.000000e+00, %7255
  %7257 = bitcast float %7232 to i32
  %7258 = sitofp i32 %7257 to float
  %7259 = fmul fast float %7258, 0x3FE7F73180000000
  %7260 = fadd fast float %7259, 0x41AFE27C40000000
  %7261 = fptosi float %7260 to i32
  %7262 = bitcast i32 %7261 to float
  %7263 = fmul fast float %6897, 0x3FD80E9D60000000
  %7264 = fmul fast float %7263, %7214
  %7265 = fadd fast float %7262, %7264
  %7266 = bitcast float %7265 to i32
  %7267 = sub nsw i32 2129859010, %7266
  %7268 = bitcast i32 %7267 to float
  %7269 = fmul fast float %7232, %7256
  %7270 = fmul fast float %7269, %7262
  %7271 = fmul fast float %7270, %7268
  %7272 = fmul fast float %5556, 0x3FF9999980000000
  %7273 = fsub fast float 5.000000e+00, %7272
  %7274 = call float @dx.op.unary.f32(i32 6, float %7204)  ; FAbs(value)
  %7275 = fsub fast float 1.000000e+00, %7274
  %7276 = fmul fast float %5556, 0x41D9660740000000
  %7277 = fadd fast float %7276, 0xC1EFBF8940000000
  %7278 = bitcast float %7275 to i32
  %7279 = sitofp i32 %7278 to float
  %7280 = fmul fast float %7279, %7273
  %7281 = fadd fast float %7277, %7280
  %7282 = fptosi float %7281 to i32
  %7283 = bitcast i32 %7282 to float
  %7284 = fsub fast float 1.000000e+00, %5429
  %7285 = fsub fast float 1.000000e+00, %5430
  %7286 = fsub fast float 1.000000e+00, %5441
  %7287 = fmul fast float %7283, %7284
  %7288 = fmul fast float %7283, %7285
  %7289 = fmul fast float %7283, %7286
  %7290 = fadd fast float %7287, %5429
  %7291 = fadd fast float %7288, %5430
  %7292 = fadd fast float %7289, %5441
  br i1 %5579, label %7293, label %7316

; <label>:7293                                    ; preds = %7175
  %7294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4823, float %7274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7295 = extractvalue %dx.types.ResRet.f32 %7294, 0
  %7296 = extractvalue %dx.types.ResRet.f32 %7294, 1
  %7297 = extractvalue %dx.types.ResRet.f32 %7294, 2
  %7298 = fadd fast float %7295, -5.000000e-01
  %7299 = fadd fast float %7296, -5.000000e-01
  %7300 = fadd fast float %7297, -5.000000e-01
  %7301 = fmul fast float %5429, 4.000000e+00
  %7302 = fmul fast float %7301, %7284
  %7303 = fmul fast float %7302, %7298
  %7304 = fmul fast float %5430, 4.000000e+00
  %7305 = fmul fast float %7304, %7285
  %7306 = fmul fast float %7305, %7299
  %7307 = fmul fast float %5441, 4.000000e+00
  %7308 = fmul fast float %7307, %7286
  %7309 = fmul fast float %7308, %7300
  %7310 = fadd fast float %7303, %7290
  %7311 = fadd fast float %7306, %7291
  %7312 = fadd fast float %7309, %7292
  %7313 = call float @dx.op.unary.f32(i32 7, float %7310)  ; Saturate(value)
  %7314 = call float @dx.op.unary.f32(i32 7, float %7311)  ; Saturate(value)
  %7315 = call float @dx.op.unary.f32(i32 7, float %7312)  ; Saturate(value)
  br label %7316

; <label>:7316                                    ; preds = %7293, %7175
  %7317 = phi float [ %7313, %7293 ], [ %7290, %7175 ]
  %7318 = phi float [ %7314, %7293 ], [ %7291, %7175 ]
  %7319 = phi float [ %7315, %7293 ], [ %7292, %7175 ]
  %7320 = fmul fast float %7203, 9.843750e-01
  %7321 = fadd fast float %7320, 7.812500e-03
  %7322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7321, float %5560, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7323 = extractvalue %dx.types.ResRet.f32 %7322, 0
  %7324 = extractvalue %dx.types.ResRet.f32 %7322, 1
  %7325 = extractvalue %dx.types.ResRet.f32 %7322, 2
  %7326 = extractvalue %dx.types.ResRet.f32 %7322, 3
  %7327 = fsub fast float %7325, %7323
  %7328 = fsub fast float %7326, %7324
  %7329 = fmul fast float %7327, %5566
  %7330 = fmul fast float %7328, %5566
  %7331 = fadd fast float %7329, %7323
  %7332 = fadd fast float %7330, %7324
  %7333 = fmul fast float %7331, %5429
  %7334 = fmul fast float %7331, %5430
  %7335 = fmul fast float %7331, %5441
  %7336 = fadd fast float %7333, %7332
  %7337 = fadd fast float %7334, %7332
  %7338 = fadd fast float %7335, %7332
  br i1 %5579, label %7339, label %7362

; <label>:7339                                    ; preds = %7316
  %7340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4823, float %7203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7341 = extractvalue %dx.types.ResRet.f32 %7340, 0
  %7342 = extractvalue %dx.types.ResRet.f32 %7340, 1
  %7343 = extractvalue %dx.types.ResRet.f32 %7340, 2
  %7344 = fadd fast float %7341, -5.000000e-01
  %7345 = fadd fast float %7342, -5.000000e-01
  %7346 = fadd fast float %7343, -5.000000e-01
  %7347 = fmul fast float %5429, 4.000000e+00
  %7348 = fmul fast float %7347, %7284
  %7349 = fmul fast float %7348, %7344
  %7350 = fmul fast float %5430, 4.000000e+00
  %7351 = fmul fast float %7350, %7285
  %7352 = fmul fast float %7351, %7345
  %7353 = fmul fast float %5441, 4.000000e+00
  %7354 = fmul fast float %7353, %7286
  %7355 = fmul fast float %7354, %7346
  %7356 = fadd fast float %7349, %7336
  %7357 = fadd fast float %7352, %7337
  %7358 = fadd fast float %7355, %7338
  %7359 = call float @dx.op.unary.f32(i32 7, float %7356)  ; Saturate(value)
  %7360 = call float @dx.op.unary.f32(i32 7, float %7357)  ; Saturate(value)
  %7361 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  br label %7362

; <label>:7362                                    ; preds = %7339, %7316
  %7363 = phi float [ %7359, %7339 ], [ %7336, %7316 ]
  %7364 = phi float [ %7360, %7339 ], [ %7337, %7316 ]
  %7365 = phi float [ %7361, %7339 ], [ %7338, %7316 ]
  %7366 = call float @dx.op.binary.f32(i32 35, float %7364, float %7365)  ; FMax(a,b)
  %7367 = call float @dx.op.binary.f32(i32 35, float %7363, float %7366)  ; FMax(a,b)
  %7368 = fsub fast float 1.000000e+00, %7367
  %7369 = fmul fast float %7317, %7271
  %7370 = fmul fast float %7318, %7271
  %7371 = fmul fast float %7319, %7271
  %7372 = fsub fast float 1.000000e+00, %7204
  %7373 = bitcast float %7372 to i32
  %7374 = sitofp i32 %7373 to float
  %7375 = fmul fast float %7374, 5.000000e+00
  %7376 = fadd fast float %7375, 0xC1EFBF8940000000
  %7377 = fptosi float %7376 to i32
  %7378 = bitcast i32 %7377 to float
  %7379 = fmul fast float %7378, %4824
  %7380 = fmul fast float %7368, %7379
  %7381 = fmul fast float %7380, %5629
  %7382 = fmul fast float %7380, %5630
  %7383 = fmul fast float %7380, %5631
  %7384 = fadd fast float %7381, %7369
  %7385 = fadd fast float %7382, %7370
  %7386 = fadd fast float %7383, %7371
  %7387 = fmul fast float %7192, %4820
  %7388 = fmul fast float %7387, %7210
  %7389 = fmul fast float %7388, %7368
  %7390 = fmul fast float %7193, %4820
  %7391 = fmul fast float %7390, %7210
  %7392 = fmul fast float %7391, %7368
  %7393 = fmul fast float %7194, %4820
  %7394 = fmul fast float %7393, %7210
  %7395 = fmul fast float %7394, %7368
  %7396 = fadd fast float %7389, %6871
  %7397 = fadd fast float %7392, %6872
  %7398 = fadd fast float %7395, %6873
  %7399 = fmul fast float %7388, %7384
  %7400 = fmul fast float %7391, %7385
  %7401 = fmul fast float %7394, %7386
  %7402 = fadd fast float %7399, %6868
  %7403 = fadd fast float %7400, %6869
  %7404 = fadd fast float %7401, %6870
  br label %7000

; <label>:7405                                    ; preds = %7000
  br label %7406

; <label>:7406                                    ; preds = %7405, %6834
  %7407 = phi float [ %6836, %6834 ], [ %7001, %7405 ]
  %7408 = phi float [ %6837, %6834 ], [ %7002, %7405 ]
  %7409 = phi float [ %6838, %6834 ], [ %7003, %7405 ]
  %7410 = phi float [ %6839, %6834 ], [ %7004, %7405 ]
  %7411 = phi float [ %6840, %6834 ], [ %7005, %7405 ]
  %7412 = phi float [ %6841, %6834 ], [ %7006, %7405 ]
  %7413 = add i32 %6835, 1
  %7414 = icmp ugt i32 %7413, %6831
  br i1 %7414, label %7415, label %6834

; <label>:7415                                    ; preds = %7406
  br label %7416

; <label>:7416                                    ; preds = %7415, %6784, %6774
  %7417 = phi float [ %6775, %6774 ], [ %6775, %6784 ], [ %7407, %7415 ]
  %7418 = phi float [ %6776, %6774 ], [ %6776, %6784 ], [ %7408, %7415 ]
  %7419 = phi float [ %6777, %6774 ], [ %6777, %6784 ], [ %7409, %7415 ]
  %7420 = phi float [ %6778, %6774 ], [ %6778, %6784 ], [ %7410, %7415 ]
  %7421 = phi float [ %6779, %6774 ], [ %6779, %6784 ], [ %7411, %7415 ]
  %7422 = phi float [ %6780, %6774 ], [ %6780, %6784 ], [ %7412, %7415 ]
  %7423 = fmul fast float %4820, %4820
  %7424 = fmul fast float %7423, %5655
  %7425 = fmul fast float %7423, %5656
  %7426 = fmul fast float %7423, %5657
  %7427 = fadd fast float %7424, 1.000000e+00
  %7428 = fadd fast float %7425, 1.000000e+00
  %7429 = fadd fast float %7426, 1.000000e+00
  %7430 = call float @dx.op.dot3.f32(i32 55, float %7427, float %7428, float %7429, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7431 = fsub fast float 1.000000e+00, %7430
  %7432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7433 = extractvalue %dx.types.CBufRet.f32 %7432, 0
  %7434 = fmul fast float %7433, %5661
  %7435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7436 = extractvalue %dx.types.CBufRet.f32 %7435, 3
  %7437 = fsub fast float 1.000000e+00, %4828
  %7438 = call float @dx.op.unary.f32(i32 7, float %7437)  ; Saturate(value)
  %7439 = fadd fast float %7422, %4826
  %7440 = fmul fast float %7439, %4828
  %7441 = fmul fast float %7438, %7436
  %7442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7443 = extractvalue %dx.types.CBufRet.f32 %7442, 3
  %7444 = fmul fast float %7420, %5432
  %7445 = fmul fast float %7421, %5433
  %7446 = fmul fast float %7422, %5434
  %7447 = fcmp fast ogt float %86, %180
  %7448 = and i1 %7447, %5234
  %7449 = or i1 %5240, %7448
  %7450 = icmp eq i32 %5233, 2
  %7451 = fcmp fast ole float %86, %180
  %7452 = and i1 %7451, %7450
  %7453 = or i1 %7452, %7449
  br i1 %7448, label %7454, label %7711

; <label>:7454                                    ; preds = %7416
  %7455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7456 = extractvalue %dx.types.CBufRet.f32 %7455, 2
  %7457 = extractvalue %dx.types.CBufRet.f32 %7455, 3
  %7458 = fmul fast float %7456, %95
  %7459 = fmul fast float %7457, %96
  %7460 = call float @dx.op.unary.f32(i32 7, float %7458)  ; Saturate(value)
  %7461 = call float @dx.op.unary.f32(i32 7, float %7459)  ; Saturate(value)
  %7462 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7460, float %7461, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7463 = extractvalue %dx.types.ResRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.ResRet.f32 %7462, 1
  %7465 = extractvalue %dx.types.ResRet.f32 %7462, 2
  %7466 = extractvalue %dx.types.ResRet.f32 %7462, 3
  %7467 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7460, float %7461, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7468 = extractvalue %dx.types.ResRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.ResRet.f32 %7467, 1
  %7470 = extractvalue %dx.types.ResRet.f32 %7467, 2
  %7471 = extractvalue %dx.types.ResRet.f32 %7467, 3
  %7472 = call float @dx.op.binary.f32(i32 35, float %7464, float %7465)  ; FMax(a,b)
  %7473 = call float @dx.op.binary.f32(i32 35, float %7463, float %7472)  ; FMax(a,b)
  %7474 = call float @dx.op.binary.f32(i32 35, float %7473, float %7466)  ; FMax(a,b)
  %7475 = call float @dx.op.binary.f32(i32 36, float %7469, float %7470)  ; FMin(a,b)
  %7476 = call float @dx.op.binary.f32(i32 36, float %7468, float %7475)  ; FMin(a,b)
  %7477 = call float @dx.op.binary.f32(i32 36, float %7476, float %7471)  ; FMin(a,b)
  %7478 = fmul fast float %7474, 2.550000e+02
  %7479 = fadd fast float %7478, 0x3F70101020000000
  %7480 = fptoui float %7479 to i32
  %7481 = fmul fast float %7477, 2.550000e+02
  %7482 = fadd fast float %7481, 0x3F70101020000000
  %7483 = fptoui float %7482 to i32
  %7484 = icmp ult i32 %7480, %7483
  br i1 %7484, label %7485, label %7653

; <label>:7485                                    ; preds = %7454
  %7486 = fcmp fast ogt float %85, 9.843750e-01
  %7487 = fadd fast float %86, -4.000000e+00
  %7488 = select i1 %7486, float -4.000000e+00, float %7487
  %7489 = call float @dx.op.binary.f32(i32 35, float %7488, float 0.000000e+00)  ; FMax(a,b)
  %7490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7491 = extractvalue %dx.types.CBufRet.f32 %7490, 0
  %7492 = fadd fast float %7491, %7489
  %7493 = extractvalue %dx.types.CBufRet.f32 %7490, 2
  %7494 = fmul fast float %7492, %7493
  %7495 = call float @dx.op.unary.f32(i32 23, float %7494)  ; Log(value)
  %7496 = extractvalue %dx.types.CBufRet.f32 %7490, 3
  %7497 = fmul fast float %7496, %7495
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7500 = fmul fast float %7497, %7499
  %7501 = call float @dx.op.unary.f32(i32 7, float %7500)  ; Saturate(value)
  %7502 = uitofp i32 %7480 to float
  %7503 = uitofp i32 %7483 to float
  %7504 = fadd fast float %7502, 5.000000e-01
  %7505 = fadd fast float %7503, 5.000000e-01
  %7506 = fmul fast float %7499, %7504
  %7507 = fmul fast float %7499, %7505
  %7508 = fadd fast float %7506, 0x3F0FFB4800000000
  %7509 = fadd fast float %7507, 0xBF0FFB4800000000
  %7510 = call float @dx.op.binary.f32(i32 35, float %7501, float %7508)  ; FMax(a,b)
  %7511 = call float @dx.op.binary.f32(i32 36, float %7510, float %7509)  ; FMin(a,b)
  %7512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7513 = extractvalue %dx.types.CBufRet.f32 %7512, 1
  %7514 = extractvalue %dx.types.CBufRet.f32 %7512, 2
  %7515 = extractvalue %dx.types.CBufRet.f32 %7512, 0
  %7516 = fmul fast float %7513, %7511
  %7517 = fadd fast float %7515, %7516
  %7518 = fadd fast float %7515, %7514
  %7519 = fsub fast float %7513, %7514
  %7520 = fadd fast float %7519, %7515
  %7521 = call float @dx.op.binary.f32(i32 35, float %7517, float %7518)  ; FMax(a,b)
  %7522 = call float @dx.op.binary.f32(i32 36, float %7521, float %7520)  ; FMin(a,b)
  %7523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7460, float %7461, float %7522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7524 = extractvalue %dx.types.ResRet.f32 %7523, 0
  %7525 = extractvalue %dx.types.ResRet.f32 %7523, 1
  %7526 = extractvalue %dx.types.ResRet.f32 %7523, 2
  %7527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.i32 %7527, 0
  %7529 = extractvalue %dx.types.CBufRet.i32 %7527, 1
  %7530 = uitofp i32 %7528 to float
  %7531 = uitofp i32 %7529 to float
  %7532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7533 = extractvalue %dx.types.CBufRet.f32 %7532, 0
  %7534 = extractvalue %dx.types.CBufRet.f32 %7532, 1
  %7535 = fmul fast float %7530, %7460
  %7536 = fmul fast float %7531, %7461
  %7537 = fadd fast float %7535, -5.000000e-01
  %7538 = fadd fast float %7536, -5.000000e-01
  %7539 = call float @dx.op.unary.f32(i32 22, float %7537)  ; Frc(value)
  %7540 = call float @dx.op.unary.f32(i32 22, float %7538)  ; Frc(value)
  %7541 = fmul fast float %7539, %7539
  %7542 = fmul fast float %7541, %7539
  %7543 = fsub fast float 3.000000e+00, %7539
  %7544 = fmul fast float %7541, %7543
  %7545 = fmul fast float %7539, 3.000000e+00
  %7546 = fmul fast float %7542, 3.000000e+00
  %7547 = fmul fast float %7541, 6.000000e+00
  %7548 = fsub fast float %7546, %7547
  %7549 = fadd fast float %7548, 4.000000e+00
  %7550 = fmul fast float %7549, 0x3FC5555560000000
  %7551 = fmul fast float %7542, -3.000000e+00
  %7552 = fadd fast float %7541, %7539
  %7553 = fmul fast float %7552, 3.000000e+00
  %7554 = fadd fast float %7551, 1.000000e+00
  %7555 = fadd fast float %7554, %7553
  %7556 = fmul fast float %7542, 0x3FC5555560000000
  %7557 = fmul fast float %7540, %7540
  %7558 = fmul fast float %7557, %7540
  %7559 = fsub fast float 3.000000e+00, %7540
  %7560 = fmul fast float %7557, %7559
  %7561 = fmul fast float %7540, 3.000000e+00
  %7562 = fmul fast float %7558, 3.000000e+00
  %7563 = fmul fast float %7557, 6.000000e+00
  %7564 = fsub fast float %7562, %7563
  %7565 = fadd fast float %7564, 4.000000e+00
  %7566 = fmul fast float %7565, 0x3FC5555560000000
  %7567 = fmul fast float %7558, -3.000000e+00
  %7568 = fadd fast float %7557, %7540
  %7569 = fmul fast float %7568, 3.000000e+00
  %7570 = fadd fast float %7567, 1.000000e+00
  %7571 = fadd fast float %7570, %7569
  %7572 = fmul fast float %7558, 0x3FC5555560000000
  %7573 = fadd fast float %7539, 1.000000e+00
  %7574 = fsub fast float 1.000000e+00, %7545
  %7575 = fadd fast float %7574, %7544
  %7576 = fadd fast float %7575, %7549
  %7577 = fmul fast float %7576, 0x3FC5555560000000
  %7578 = fdiv fast float %7550, %7577
  %7579 = fsub fast float %7573, %7578
  %7580 = fsub fast float 1.000000e+00, %7539
  %7581 = fadd fast float %7555, %7542
  %7582 = fmul fast float %7581, 0x3FC5555560000000
  %7583 = fdiv fast float %7556, %7582
  %7584 = fadd fast float %7580, %7583
  %7585 = fadd fast float %7540, 1.000000e+00
  %7586 = fsub fast float 1.000000e+00, %7561
  %7587 = fadd fast float %7586, %7560
  %7588 = fadd fast float %7587, %7565
  %7589 = fmul fast float %7588, 0x3FC5555560000000
  %7590 = fdiv fast float %7566, %7589
  %7591 = fsub fast float %7585, %7590
  %7592 = fsub fast float 1.000000e+00, %7540
  %7593 = fadd fast float %7571, %7558
  %7594 = fmul fast float %7593, 0x3FC5555560000000
  %7595 = fdiv fast float %7572, %7594
  %7596 = fadd fast float %7595, %7592
  %7597 = fmul fast float %7579, %7533
  %7598 = fsub fast float %7460, %7597
  %7599 = fmul fast float %7584, %7533
  %7600 = fadd fast float %7599, %7460
  %7601 = fmul fast float %7596, %7534
  %7602 = fadd fast float %7601, %7461
  %7603 = fmul fast float %7591, %7534
  %7604 = fsub fast float %7461, %7603
  %7605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7598, float %7604, float %7522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7606 = extractvalue %dx.types.ResRet.f32 %7605, 0
  %7607 = extractvalue %dx.types.ResRet.f32 %7605, 1
  %7608 = extractvalue %dx.types.ResRet.f32 %7605, 2
  %7609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7600, float %7604, float %7522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7610 = extractvalue %dx.types.ResRet.f32 %7609, 0
  %7611 = extractvalue %dx.types.ResRet.f32 %7609, 1
  %7612 = extractvalue %dx.types.ResRet.f32 %7609, 2
  %7613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7598, float %7602, float %7522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7614 = extractvalue %dx.types.ResRet.f32 %7613, 0
  %7615 = extractvalue %dx.types.ResRet.f32 %7613, 1
  %7616 = extractvalue %dx.types.ResRet.f32 %7613, 2
  %7617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7600, float %7602, float %7522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7618 = extractvalue %dx.types.ResRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.ResRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.ResRet.f32 %7617, 2
  %7621 = fsub fast float %7614, %7606
  %7622 = fsub fast float %7615, %7607
  %7623 = fsub fast float %7616, %7608
  %7624 = fmul fast float %7621, %7594
  %7625 = fmul fast float %7622, %7594
  %7626 = fmul fast float %7623, %7594
  %7627 = fadd fast float %7624, %7606
  %7628 = fadd fast float %7625, %7607
  %7629 = fadd fast float %7626, %7608
  %7630 = fsub fast float %7618, %7610
  %7631 = fsub fast float %7619, %7611
  %7632 = fsub fast float %7620, %7612
  %7633 = fmul fast float %7630, %7594
  %7634 = fmul fast float %7631, %7594
  %7635 = fmul fast float %7632, %7594
  %7636 = fsub fast float %7610, %7627
  %7637 = fadd fast float %7636, %7633
  %7638 = fsub fast float %7611, %7628
  %7639 = fadd fast float %7638, %7634
  %7640 = fsub fast float %7612, %7629
  %7641 = fadd fast float %7640, %7635
  %7642 = fmul fast float %7637, %7582
  %7643 = fmul fast float %7639, %7582
  %7644 = fmul fast float %7641, %7582
  %7645 = fadd fast float %7642, %7627
  %7646 = fadd fast float %7643, %7628
  %7647 = fadd fast float %7644, %7629
  %7648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7649 = extractvalue %dx.types.CBufRet.f32 %7648, 1
  %7650 = fmul fast float %7645, %7649
  %7651 = fmul fast float %7646, %7649
  %7652 = fmul fast float %7647, %7649
  br label %7653

; <label>:7653                                    ; preds = %7485, %7454
  %7654 = phi float [ %7524, %7485 ], [ 1.000000e+00, %7454 ]
  %7655 = phi float [ %7525, %7485 ], [ 1.000000e+00, %7454 ]
  %7656 = phi float [ %7526, %7485 ], [ 1.000000e+00, %7454 ]
  %7657 = phi float [ %7650, %7485 ], [ 0.000000e+00, %7454 ]
  %7658 = phi float [ %7651, %7485 ], [ 0.000000e+00, %7454 ]
  %7659 = phi float [ %7652, %7485 ], [ 0.000000e+00, %7454 ]
  %7660 = fmul fast float %7657, %7431
  %7661 = fmul fast float %7658, %7431
  %7662 = fmul fast float %7659, %7431
  %7663 = call float @dx.op.dot3.f32(i32 55, float %7654, float %7655, float %7656, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7664 = call float @dx.op.dot3.f32(i32 55, float %7660, float %7661, float %7662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7665 = select i1 %220, float %7663, float %7654
  %7666 = select i1 %220, float %7663, float %7655
  %7667 = select i1 %220, float 1.000000e+00, float %7656
  %7668 = select i1 %220, float %7664, float %7660
  %7669 = select i1 %220, float 0.000000e+00, float %7661
  %7670 = select i1 %220, float 0.000000e+00, float %7662
  %7671 = fmul fast float %7665, %7444
  %7672 = fmul fast float %7666, %7445
  %7673 = fmul fast float %7667, %7446
  %7674 = fadd fast float %7671, %7668
  %7675 = fadd fast float %7672, %7669
  %7676 = fadd fast float %7670, %7673
  %7677 = fmul fast float %7665, %7417
  %7678 = fmul fast float %7666, %7418
  %7679 = fmul fast float %7667, %7419
  %7680 = fmul fast float %128, %7456
  %7681 = fmul fast float %130, %7457
  %7682 = fsub fast float 1.000000e+00, %7680
  %7683 = fsub fast float 1.000000e+00, %7681
  %7684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7685 = extractvalue %dx.types.CBufRet.f32 %7684, 0
  %7686 = extractvalue %dx.types.CBufRet.f32 %7684, 1
  %7687 = extractvalue %dx.types.CBufRet.f32 %7684, 2
  %7688 = fmul fast float %7682, %7685
  %7689 = fmul fast float %7682, %7686
  %7690 = fmul fast float %7682, %7687
  %7691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7692 = extractvalue %dx.types.CBufRet.f32 %7691, 0
  %7693 = extractvalue %dx.types.CBufRet.f32 %7691, 1
  %7694 = extractvalue %dx.types.CBufRet.f32 %7691, 2
  %7695 = fmul fast float %7683, %7692
  %7696 = fmul fast float %7683, %7693
  %7697 = fmul fast float %7683, %7694
  %7698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7699 = extractvalue %dx.types.CBufRet.f32 %7698, 0
  %7700 = extractvalue %dx.types.CBufRet.f32 %7698, 1
  %7701 = extractvalue %dx.types.CBufRet.f32 %7698, 2
  %7702 = fadd fast float %7695, %7699
  %7703 = fadd fast float %7702, %7688
  %7704 = fadd fast float %7696, %7700
  %7705 = fadd fast float %7704, %7689
  %7706 = fadd fast float %7697, %7701
  %7707 = fadd fast float %7706, %7690
  %7708 = fmul fast float %7703, %180
  %7709 = fmul fast float %7705, %180
  %7710 = fmul fast float %7707, %180
  br label %7711

; <label>:7711                                    ; preds = %7653, %7416
  %7712 = phi float [ %7708, %7653 ], [ %158, %7416 ]
  %7713 = phi float [ %7709, %7653 ], [ %159, %7416 ]
  %7714 = phi float [ %7710, %7653 ], [ %160, %7416 ]
  %7715 = phi float [ %180, %7653 ], [ %86, %7416 ]
  %7716 = phi float [ %7674, %7653 ], [ %7444, %7416 ]
  %7717 = phi float [ %7675, %7653 ], [ %7445, %7416 ]
  %7718 = phi float [ %7676, %7653 ], [ %7446, %7416 ]
  %7719 = phi float [ %7677, %7653 ], [ %7417, %7416 ]
  %7720 = phi float [ %7678, %7653 ], [ %7418, %7416 ]
  %7721 = phi float [ %7679, %7653 ], [ %7419, %7416 ]
  %7722 = phi float [ %7654, %7653 ], [ 1.000000e+00, %7416 ]
  br i1 %7453, label %8877, label %7723

; <label>:7723                                    ; preds = %7711
  %7724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7725 = extractvalue %dx.types.CBufRet.f32 %7724, 0
  %7726 = extractvalue %dx.types.CBufRet.f32 %7724, 1
  %7727 = extractvalue %dx.types.CBufRet.f32 %7724, 2
  %7728 = extractvalue %dx.types.CBufRet.f32 %7724, 3
  %7729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7730 = extractvalue %dx.types.CBufRet.f32 %7729, 0
  %7731 = extractvalue %dx.types.CBufRet.f32 %7729, 1
  %7732 = extractvalue %dx.types.CBufRet.f32 %7729, 2
  %7733 = extractvalue %dx.types.CBufRet.f32 %7729, 3
  %7734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7735 = extractvalue %dx.types.CBufRet.f32 %7734, 0
  %7736 = extractvalue %dx.types.CBufRet.f32 %7734, 1
  %7737 = extractvalue %dx.types.CBufRet.f32 %7734, 2
  %7738 = extractvalue %dx.types.CBufRet.f32 %7734, 3
  %7739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7740 = extractvalue %dx.types.CBufRet.f32 %7739, 0
  %7741 = extractvalue %dx.types.CBufRet.f32 %7739, 1
  %7742 = extractvalue %dx.types.CBufRet.f32 %7739, 2
  %7743 = extractvalue %dx.types.CBufRet.f32 %7739, 3
  %7744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7745 = extractvalue %dx.types.CBufRet.f32 %7744, 3
  %7746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7747 = extractvalue %dx.types.CBufRet.f32 %7746, 3
  %7748 = extractvalue %dx.types.CBufRet.f32 %7746, 0
  %7749 = extractvalue %dx.types.CBufRet.f32 %7746, 1
  %7750 = extractvalue %dx.types.CBufRet.f32 %7746, 2
  %7751 = fcmp fast olt float %7750, -5.000000e-01
  %7752 = call float @dx.op.dot3.f32(i32 55, float %7712, float %7713, float %7714, float %7712, float %7713, float %7714)  ; Dot3(ax,ay,az,bx,by,bz)
  %7753 = call float @dx.op.unary.f32(i32 25, float %7752)  ; Rsqrt(value)
  %7754 = fmul fast float %7753, %7752
  %7755 = fmul fast float %7753, %7712
  %7756 = fmul fast float %7753, %7713
  %7757 = fmul fast float %7753, %7714
  %7758 = fadd fast float %7754, %7728
  %7759 = call float @dx.op.dot3.f32(i32 55, float %7755, float %7756, float %7757, float %7725, float %7726, float %7727)  ; Dot3(ax,ay,az,bx,by,bz)
  %7760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7761 = extractvalue %dx.types.CBufRet.i32 %7760, 1
  %7762 = and i32 %7761, 1
  %7763 = icmp ne i32 %7762, 0
  %7764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7765 = extractvalue %dx.types.CBufRet.f32 %7764, 2
  %7766 = fcmp fast ogt float %7765, 0.000000e+00
  %7767 = and i1 %7763, %7766
  br i1 %7767, label %7768, label %8174, !dx.controlflow.hints !119

; <label>:7768                                    ; preds = %7723
  %7769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.f32 %7769, 3
  %7771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7772 = extractvalue %dx.types.CBufRet.f32 %7771, 2
  %7773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7774 = extractvalue %dx.types.CBufRet.f32 %7773, 2
  %7775 = fsub fast float %7772, %7774
  %7776 = and i32 %7761, 2
  %7777 = extractvalue %dx.types.CBufRet.i32 %7760, 0
  %7778 = call i32 @dx.op.binary.i32(i32 40, i32 %7777, i32 3)  ; UMin(a,b)
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.CBufRet.f32 %7773, 0
  %7783 = extractvalue %dx.types.CBufRet.f32 %7773, 1
  %7784 = fsub fast float %7780, %7782
  %7785 = fsub fast float %7781, %7783
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 0
  %7788 = fcmp fast ogt float %7787, 0.000000e+00
  %7789 = fsub fast float -0.000000e+00, %7784
  %7790 = fsub fast float -0.000000e+00, %7785
  %7791 = call float @dx.op.dot2.f32(i32 54, float %7755, float %7756, float %7755, float %7756)  ; Dot2(ax,ay,bx,by)
  %7792 = call float @dx.op.dot2.f32(i32 54, float %7755, float %7756, float %7789, float %7790)  ; Dot2(ax,ay,bx,by)
  %7793 = fmul fast float %7792, 2.000000e+00
  %7794 = call float @dx.op.dot2.f32(i32 54, float %7789, float %7790, float %7789, float %7790)  ; Dot2(ax,ay,bx,by)
  %7795 = fmul fast float %7787, %7787
  %7796 = fsub fast float %7794, %7795
  %7797 = fmul fast float %7793, %7793
  %7798 = fmul fast float %7791, 4.000000e+00
  %7799 = fmul fast float %7798, %7796
  %7800 = fsub fast float %7797, %7799
  %7801 = fcmp fast ogt float %7800, 0.000000e+00
  br i1 %7801, label %7802, label %7817

; <label>:7802                                    ; preds = %7768
  %7803 = fcmp fast ogt float %7793, 0.000000e+00
  %7804 = call float @dx.op.unary.f32(i32 24, float %7800)  ; Sqrt(value)
  %7805 = fsub fast float -0.000000e+00, %7804
  %7806 = select i1 %7803, float %7804, float %7805
  %7807 = fadd fast float %7806, %7793
  %7808 = fmul float %7807, -5.000000e-01
  %7809 = fdiv fast float %7808, %7791
  %7810 = call float @dx.op.binary.f32(i32 35, float %7809, float 0.000000e+00)  ; FMax(a,b)
  %7811 = call float @dx.op.binary.f32(i32 36, float %7754, float %7810)  ; FMin(a,b)
  %7812 = fdiv fast float %7796, %7808
  %7813 = call float @dx.op.binary.f32(i32 35, float %7812, float 0.000000e+00)  ; FMax(a,b)
  %7814 = call float @dx.op.binary.f32(i32 36, float %7754, float %7813)  ; FMin(a,b)
  %7815 = call float @dx.op.binary.f32(i32 36, float %7811, float %7814)  ; FMin(a,b)
  %7816 = call float @dx.op.binary.f32(i32 35, float %7811, float %7814)  ; FMax(a,b)
  br label %7817

; <label>:7817                                    ; preds = %7802, %7768
  %7818 = phi float [ %7816, %7802 ], [ -1.000000e+00, %7768 ]
  %7819 = phi float [ %7815, %7802 ], [ -1.000000e+00, %7768 ]
  %7820 = phi i1 [ true, %7802 ], [ false, %7768 ]
  %7821 = and i1 %7788, %7820
  br i1 %7821, label %7822, label %7824

; <label>:7822                                    ; preds = %7817
  %7823 = fcmp fast oeq float %7819, %7818
  br i1 %7823, label %8127, label %7825

; <label>:7824                                    ; preds = %7817
  br i1 %7788, label %8127, label %7825

; <label>:7825                                    ; preds = %7824, %7822
  %7826 = phi float [ %7754, %7824 ], [ %7818, %7822 ]
  %7827 = phi float [ 0.000000e+00, %7824 ], [ %7819, %7822 ]
  %7828 = icmp ne i32 %7776, 0
  %7829 = fmul fast float %7826, %7757
  %7830 = fadd fast float %7829, %7770
  %7831 = fmul fast float %7830, %7826
  %7832 = select i1 %7828, float 0.000000e+00, float %7831
  %7833 = fcmp fast oeq float %7757, 0.000000e+00
  %7834 = fdiv fast float %7775, %7757
  %7835 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7834)  ; FMax(a,b)
  %7836 = select i1 %7833, float %7826, float %7835
  %7837 = call float @dx.op.binary.f32(i32 36, float %7826, float %7836)  ; FMin(a,b)
  %7838 = fcmp fast ogt float %7757, 0.000000e+00
  %7839 = fcmp fast olt float %7775, 0.000000e+00
  br i1 %7838, label %7840, label %7897

; <label>:7840                                    ; preds = %7825
  %7841 = icmp eq i32 %7776, 0
  br i1 %7839, label %7842, label %7886

; <label>:7842                                    ; preds = %7840
  %7843 = select i1 %7841, float %7826, float 0.000000e+00
  %7844 = fsub fast float -0.000000e+00, %7843
  %7845 = call float @dx.op.unary.f32(i32 6, float %7844)  ; FAbs(value)
  %7846 = fmul fast float %7843, %7757
  %7847 = fadd fast float %7846, %7770
  %7848 = fmul fast float %7845, %7847
  %7849 = fsub fast float %7832, %7848
  %7850 = fsub fast float %7826, %7845
  %7851 = select i1 %7841, float %7850, float 0.000000e+00
  %7852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7853 = extractvalue %dx.types.CBufRet.f32 %7852, 0
  %7854 = extractvalue %dx.types.CBufRet.f32 %7852, 1
  %7855 = extractvalue %dx.types.CBufRet.f32 %7852, 2
  %7856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7857 = extractvalue %dx.types.CBufRet.f32 %7856, 0
  %7858 = extractvalue %dx.types.CBufRet.f32 %7856, 1
  %7859 = extractvalue %dx.types.CBufRet.f32 %7856, 2
  %7860 = extractvalue %dx.types.CBufRet.f32 %7856, 3
  %7861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7862 = extractvalue %dx.types.CBufRet.f32 %7861, 3
  %7863 = call float @dx.op.binary.f32(i32 36, float %7849, float %7862)  ; FMin(a,b)
  %7864 = fmul fast float %7860, %7851
  %7865 = call float @dx.op.unary.f32(i32 7, float %7864)  ; Saturate(value)
  %7866 = fsub fast float %7857, %7853
  %7867 = fsub fast float %7858, %7854
  %7868 = fsub fast float %7859, %7855
  %7869 = fmul fast float %7865, %7866
  %7870 = fmul fast float %7865, %7867
  %7871 = fmul fast float %7865, %7868
  %7872 = fadd fast float %7869, %7853
  %7873 = fadd fast float %7870, %7854
  %7874 = fadd fast float %7871, %7855
  %7875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7876 = extractvalue %dx.types.CBufRet.f32 %7875, 0
  %7877 = extractvalue %dx.types.CBufRet.f32 %7875, 1
  %7878 = fadd fast float %7877, %7876
  %7879 = call float @dx.op.unary.f32(i32 7, float %7878)  ; Saturate(value)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7875, 2
  %7881 = extractvalue %dx.types.CBufRet.f32 %7875, 3
  %7882 = fadd fast float %7881, %7880
  %7883 = call float @dx.op.unary.f32(i32 7, float %7882)  ; Saturate(value)
  %7884 = fmul fast float %7879, %7863
  %7885 = fmul fast float %7884, %7883
  br label %8127

; <label>:7886                                    ; preds = %7840
  br i1 %7841, label %7887, label %7908

; <label>:7887                                    ; preds = %7886
  %7888 = call float @dx.op.binary.f32(i32 36, float %7837, float %7827)  ; FMin(a,b)
  %7889 = fsub fast float %7837, %7888
  %7890 = fsub fast float %7889, %7826
  %7891 = call float @dx.op.unary.f32(i32 6, float %7890)  ; FAbs(value)
  %7892 = fadd fast float %7889, %7826
  %7893 = fmul fast float %7892, %7757
  %7894 = fadd fast float %7893, %7770
  %7895 = fmul fast float %7894, %7891
  %7896 = fsub fast float %7832, %7895
  br label %7908

; <label>:7897                                    ; preds = %7825
  br i1 %7839, label %7898, label %7908

; <label>:7898                                    ; preds = %7897
  %7899 = call float @dx.op.binary.f32(i32 35, float %7827, float %7837)  ; FMax(a,b)
  %7900 = icmp eq i32 %7776, 0
  %7901 = select i1 %7900, float %7837, float 0.000000e+00
  %7902 = fsub fast float -0.000000e+00, %7901
  %7903 = call float @dx.op.unary.f32(i32 6, float %7902)  ; FAbs(value)
  %7904 = fmul fast float %7901, %7757
  %7905 = fadd fast float %7904, %7770
  %7906 = fmul fast float %7903, %7905
  %7907 = fsub fast float %7832, %7906
  br label %7908

; <label>:7908                                    ; preds = %7898, %7897, %7887, %7886
  %7909 = phi float [ %7827, %7886 ], [ %7827, %7887 ], [ %7899, %7898 ], [ %7827, %7897 ]
  %7910 = phi float [ 0.000000e+00, %7886 ], [ %7891, %7887 ], [ %7903, %7898 ], [ 0.000000e+00, %7897 ]
  %7911 = phi float [ %7832, %7886 ], [ %7896, %7887 ], [ %7907, %7898 ], [ %7832, %7897 ]
  %7912 = phi float [ %7837, %7886 ], [ %7837, %7887 ], [ %7826, %7898 ], [ %7826, %7897 ]
  %7913 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %7913, align 4, !tbaa !120, !noalias !122
  %7914 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %7914, align 4, !tbaa !120, !noalias !122
  %7915 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %7915, align 4, !tbaa !120, !noalias !122
  %7916 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %7916, align 4, !tbaa !120, !noalias !122
  %7917 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %7917, align 4, !tbaa !120, !noalias !122
  %7918 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %7918, align 4, !tbaa !120, !noalias !122
  %7919 = icmp sgt i32 %7778, 0
  br i1 %7919, label %7920, label %7981

; <label>:7920                                    ; preds = %7908
  br label %7921

; <label>:7921                                    ; preds = %7970, %7920
  %7922 = phi i32 [ %7971, %7970 ], [ 0, %7920 ]
  %7923 = phi i32 [ %7972, %7970 ], [ 0, %7920 ]
  %7924 = add nuw i32 %7923, 171
  %7925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7924)  ; CBufferLoadLegacy(handle,regIndex)
  %7926 = extractvalue %dx.types.CBufRet.f32 %7925, 0
  %7927 = extractvalue %dx.types.CBufRet.f32 %7925, 1
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 0
  %7930 = extractvalue %dx.types.CBufRet.f32 %7928, 1
  %7931 = fsub fast float %7926, %7929
  %7932 = fsub fast float %7927, %7930
  %7933 = extractvalue %dx.types.CBufRet.f32 %7925, 2
  %7934 = fsub fast float -0.000000e+00, %7931
  %7935 = fsub fast float -0.000000e+00, %7932
  %7936 = call float @dx.op.dot2.f32(i32 54, float %7755, float %7756, float %7934, float %7935)  ; Dot2(ax,ay,bx,by)
  %7937 = fmul fast float %7936, 2.000000e+00
  %7938 = call float @dx.op.dot2.f32(i32 54, float %7934, float %7935, float %7934, float %7935)  ; Dot2(ax,ay,bx,by)
  %7939 = fmul fast float %7933, %7933
  %7940 = fsub fast float %7938, %7939
  %7941 = fmul fast float %7937, %7937
  %7942 = fmul fast float %7798, %7940
  %7943 = fsub fast float %7941, %7942
  %7944 = fcmp fast ogt float %7943, 0.000000e+00
  br i1 %7944, label %7945, label %7960

; <label>:7945                                    ; preds = %7921
  %7946 = fcmp fast ogt float %7937, 0.000000e+00
  %7947 = call float @dx.op.unary.f32(i32 24, float %7943)  ; Sqrt(value)
  %7948 = fsub fast float -0.000000e+00, %7947
  %7949 = select i1 %7946, float %7947, float %7948
  %7950 = fadd fast float %7949, %7937
  %7951 = fmul float %7950, -5.000000e-01
  %7952 = fdiv fast float %7951, %7791
  %7953 = call float @dx.op.binary.f32(i32 35, float %7952, float 0.000000e+00)  ; FMax(a,b)
  %7954 = call float @dx.op.binary.f32(i32 36, float %7826, float %7953)  ; FMin(a,b)
  %7955 = fdiv fast float %7940, %7951
  %7956 = call float @dx.op.binary.f32(i32 35, float %7955, float 0.000000e+00)  ; FMax(a,b)
  %7957 = call float @dx.op.binary.f32(i32 36, float %7826, float %7956)  ; FMin(a,b)
  %7958 = call float @dx.op.binary.f32(i32 36, float %7954, float %7957)  ; FMin(a,b)
  %7959 = call float @dx.op.binary.f32(i32 35, float %7954, float %7957)  ; FMax(a,b)
  br label %7960

; <label>:7960                                    ; preds = %7945, %7921
  %7961 = phi float [ %7959, %7945 ], [ -1.000000e+00, %7921 ]
  %7962 = phi float [ %7958, %7945 ], [ -1.000000e+00, %7921 ]
  %7963 = phi i1 [ true, %7945 ], [ false, %7921 ]
  br i1 %7963, label %7964, label %7970

; <label>:7964                                    ; preds = %7960
  %7965 = call float @dx.op.binary.f32(i32 35, float %7909, float %7962)  ; FMax(a,b)
  %7966 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7923
  store float %7965, float* %7966, align 4, !tbaa !120, !noalias !122
  %7967 = call float @dx.op.binary.f32(i32 35, float %7909, float %7961)  ; FMax(a,b)
  %7968 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7923
  store float %7967, float* %7968, align 4, !tbaa !120, !noalias !122
  %7969 = add nsw i32 %7922, 1
  br label %7970

; <label>:7970                                    ; preds = %7964, %7960
  %7971 = phi i32 [ %7969, %7964 ], [ %7922, %7960 ]
  %7972 = add nuw nsw i32 %7923, 1
  %7973 = icmp eq i32 %7972, %7778
  br i1 %7973, label %7974, label %7921

; <label>:7974                                    ; preds = %7970
  %7975 = load float, float* %7915, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7976 = load float, float* %7914, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  %7977 = load float, float* %7913, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  %7978 = load float, float* %7918, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7979 = load float, float* %7917, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  %7980 = load float, float* %7916, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  br label %7981

; <label>:7981                                    ; preds = %7974, %7908
  %7982 = phi float [ -1.000000e+00, %7908 ], [ %7980, %7974 ]
  %7983 = phi float [ -1.000000e+00, %7908 ], [ %7979, %7974 ]
  %7984 = phi float [ -1.000000e+00, %7908 ], [ %7978, %7974 ]
  %7985 = phi float [ -1.000000e+00, %7908 ], [ %7977, %7974 ]
  %7986 = phi float [ -1.000000e+00, %7908 ], [ %7976, %7974 ]
  %7987 = phi float [ -1.000000e+00, %7908 ], [ %7975, %7974 ]
  %7988 = phi i32 [ 0, %7908 ], [ %7971, %7974 ]
  %7989 = call float @dx.op.binary.f32(i32 36, float %7986, float %7987)  ; FMin(a,b)
  %7990 = call float @dx.op.binary.f32(i32 36, float %7985, float %7989)  ; FMin(a,b)
  %7991 = call float @dx.op.binary.f32(i32 35, float %7985, float %7986)  ; FMax(a,b)
  %7992 = call float @dx.op.binary.f32(i32 36, float %7991, float %7987)  ; FMin(a,b)
  %7993 = call float @dx.op.binary.f32(i32 36, float %7985, float %7986)  ; FMin(a,b)
  %7994 = call float @dx.op.binary.f32(i32 35, float %7993, float %7992)  ; FMax(a,b)
  %7995 = call float @dx.op.binary.f32(i32 35, float %7986, float %7987)  ; FMax(a,b)
  %7996 = call float @dx.op.binary.f32(i32 35, float %7985, float %7995)  ; FMax(a,b)
  store float %7990, float* %7913, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  store float %7994, float* %7914, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  store float %7996, float* %7915, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7997 = call float @dx.op.binary.f32(i32 36, float %7983, float %7984)  ; FMin(a,b)
  %7998 = call float @dx.op.binary.f32(i32 36, float %7982, float %7997)  ; FMin(a,b)
  %7999 = call float @dx.op.binary.f32(i32 35, float %7982, float %7983)  ; FMax(a,b)
  %8000 = call float @dx.op.binary.f32(i32 36, float %7999, float %7984)  ; FMin(a,b)
  %8001 = call float @dx.op.binary.f32(i32 36, float %7982, float %7983)  ; FMin(a,b)
  %8002 = call float @dx.op.binary.f32(i32 35, float %8001, float %8000)  ; FMax(a,b)
  %8003 = call float @dx.op.binary.f32(i32 35, float %7983, float %7984)  ; FMax(a,b)
  %8004 = call float @dx.op.binary.f32(i32 35, float %7982, float %8003)  ; FMax(a,b)
  store float %7998, float* %7916, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  store float %8002, float* %7917, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  store float %8004, float* %7918, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %8005 = sub nsw i32 3, %7988
  %8006 = icmp sgt i32 %8005, 2
  br i1 %8006, label %8007, label %8045

; <label>:8007                                    ; preds = %7981
  %8008 = icmp eq i32 %7776, 0
  %8009 = fsub fast float %7826, %7910
  %8010 = select i1 %8008, float %8009, float %7910
  %8011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8012 = extractvalue %dx.types.CBufRet.f32 %8011, 0
  %8013 = extractvalue %dx.types.CBufRet.f32 %8011, 1
  %8014 = extractvalue %dx.types.CBufRet.f32 %8011, 2
  %8015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8016 = extractvalue %dx.types.CBufRet.f32 %8015, 0
  %8017 = extractvalue %dx.types.CBufRet.f32 %8015, 1
  %8018 = extractvalue %dx.types.CBufRet.f32 %8015, 2
  %8019 = extractvalue %dx.types.CBufRet.f32 %8015, 3
  %8020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8021 = extractvalue %dx.types.CBufRet.f32 %8020, 3
  %8022 = call float @dx.op.binary.f32(i32 36, float %7911, float %8021)  ; FMin(a,b)
  %8023 = fmul fast float %8019, %8010
  %8024 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  %8025 = fsub fast float %8016, %8012
  %8026 = fsub fast float %8017, %8013
  %8027 = fsub fast float %8018, %8014
  %8028 = fmul fast float %8024, %8025
  %8029 = fmul fast float %8024, %8026
  %8030 = fmul fast float %8024, %8027
  %8031 = fadd fast float %8028, %8012
  %8032 = fadd fast float %8029, %8013
  %8033 = fadd fast float %8030, %8014
  %8034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8035 = extractvalue %dx.types.CBufRet.f32 %8034, 0
  %8036 = extractvalue %dx.types.CBufRet.f32 %8034, 1
  %8037 = fadd fast float %8036, %8035
  %8038 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8039 = extractvalue %dx.types.CBufRet.f32 %8034, 2
  %8040 = extractvalue %dx.types.CBufRet.f32 %8034, 3
  %8041 = fadd fast float %8040, %8039
  %8042 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8043 = fmul fast float %8038, %8022
  %8044 = fmul fast float %8043, %8042
  br label %8127

; <label>:8045                                    ; preds = %7981
  %8046 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %8005
  %8047 = load float, float* %8046, align 4, !tbaa !120, !noalias !122
  %8048 = fcmp fast olt float %8047, %7912
  %8049 = icmp sgt i32 %7988, 0
  %8050 = and i1 %8049, %8048
  br i1 %8050, label %8051, label %8088

; <label>:8051                                    ; preds = %8045
  br label %8052

; <label>:8052                                    ; preds = %8081, %8051
  %8053 = phi float [ %8082, %8081 ], [ %7910, %8051 ]
  %8054 = phi float [ %8083, %8081 ], [ %7911, %8051 ]
  %8055 = phi float [ %8063, %8081 ], [ %8047, %8051 ]
  %8056 = phi i32 [ %8060, %8081 ], [ %8005, %8051 ]
  %8057 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %8056
  %8058 = load float, float* %8057, align 4, !tbaa !120, !noalias !122
  %8059 = icmp slt i32 %8056, 2
  %8060 = add nsw i32 %8056, 1
  %8061 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %8060
  %8062 = load float, float* %8061, align 4, !tbaa !120, !noalias !122
  %8063 = select i1 %8059, float %8062, float %7826
  %8064 = call float @dx.op.binary.f32(i32 36, float %8063, float %8058)  ; FMin(a,b)
  %8065 = call float @dx.op.binary.f32(i32 36, float %7912, float %8064)  ; FMin(a,b)
  %8066 = icmp eq i32 %7776, 0
  %8067 = fadd fast float %8065, %8055
  %8068 = fmul fast float %8067, %7757
  %8069 = fadd fast float %8068, %7770
  br i1 %8066, label %8075, label %8070

; <label>:8070                                    ; preds = %8052
  %8071 = fsub fast float %8065, %8055
  %8072 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8071)  ; FMax(a,b)
  %8073 = fmul fast float %8072, %8069
  %8074 = fadd fast float %8073, %8054
  br label %8081

; <label>:8075                                    ; preds = %8052
  %8076 = fsub fast float %8055, %8065
  %8077 = call float @dx.op.unary.f32(i32 6, float %8076)  ; FAbs(value)
  %8078 = fadd fast float %8077, %8053
  %8079 = fmul fast float %8077, %8069
  %8080 = fsub fast float %8054, %8079
  br label %8081

; <label>:8081                                    ; preds = %8075, %8070
  %8082 = phi float [ %8072, %8070 ], [ %8078, %8075 ]
  %8083 = phi float [ %8074, %8070 ], [ %8080, %8075 ]
  %8084 = fcmp fast olt float %8063, %7912
  %8085 = icmp slt i32 %8060, 3
  %8086 = and i1 %8085, %8084
  br i1 %8086, label %8052, label %8087

; <label>:8087                                    ; preds = %8081
  br label %8088

; <label>:8088                                    ; preds = %8087, %8045
  %8089 = phi float [ %7910, %8045 ], [ %8082, %8087 ]
  %8090 = phi float [ %7911, %8045 ], [ %8083, %8087 ]
  %8091 = fsub fast float %7826, %8089
  %8092 = select i1 %7828, float %8089, float %8091
  %8093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8094 = extractvalue %dx.types.CBufRet.f32 %8093, 0
  %8095 = extractvalue %dx.types.CBufRet.f32 %8093, 1
  %8096 = extractvalue %dx.types.CBufRet.f32 %8093, 2
  %8097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8098 = extractvalue %dx.types.CBufRet.f32 %8097, 0
  %8099 = extractvalue %dx.types.CBufRet.f32 %8097, 1
  %8100 = extractvalue %dx.types.CBufRet.f32 %8097, 2
  %8101 = extractvalue %dx.types.CBufRet.f32 %8097, 3
  %8102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.f32 %8102, 3
  %8104 = call float @dx.op.binary.f32(i32 36, float %8090, float %8103)  ; FMin(a,b)
  %8105 = fmul fast float %8101, %8092
  %8106 = call float @dx.op.unary.f32(i32 7, float %8105)  ; Saturate(value)
  %8107 = fsub fast float %8098, %8094
  %8108 = fsub fast float %8099, %8095
  %8109 = fsub fast float %8100, %8096
  %8110 = fmul fast float %8106, %8107
  %8111 = fmul fast float %8106, %8108
  %8112 = fmul fast float %8106, %8109
  %8113 = fadd fast float %8110, %8094
  %8114 = fadd fast float %8111, %8095
  %8115 = fadd fast float %8112, %8096
  %8116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8117 = extractvalue %dx.types.CBufRet.f32 %8116, 0
  %8118 = extractvalue %dx.types.CBufRet.f32 %8116, 1
  %8119 = fadd fast float %8118, %8117
  %8120 = call float @dx.op.unary.f32(i32 7, float %8119)  ; Saturate(value)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8116, 2
  %8122 = extractvalue %dx.types.CBufRet.f32 %8116, 3
  %8123 = fadd fast float %8122, %8121
  %8124 = call float @dx.op.unary.f32(i32 7, float %8123)  ; Saturate(value)
  %8125 = fmul fast float %8120, %8104
  %8126 = fmul fast float %8125, %8124
  br label %8127

; <label>:8127                                    ; preds = %8088, %8007, %7842, %7824, %7822
  %8128 = phi float [ %7851, %7842 ], [ %8010, %8007 ], [ %8092, %8088 ], [ 0.000000e+00, %7822 ], [ 0.000000e+00, %7824 ]
  %8129 = phi float [ %7885, %7842 ], [ %8044, %8007 ], [ %8126, %8088 ], [ 0.000000e+00, %7822 ], [ 0.000000e+00, %7824 ]
  %8130 = phi float [ %7872, %7842 ], [ %8031, %8007 ], [ %8113, %8088 ], [ 0.000000e+00, %7822 ], [ 0.000000e+00, %7824 ]
  %8131 = phi float [ %7873, %7842 ], [ %8032, %8007 ], [ %8114, %8088 ], [ 0.000000e+00, %7822 ], [ 0.000000e+00, %7824 ]
  %8132 = phi float [ %7874, %7842 ], [ %8033, %8007 ], [ %8115, %8088 ], [ 0.000000e+00, %7822 ], [ 0.000000e+00, %7824 ]
  %8133 = fmul fast float %7765, %8129
  %8134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8135 = extractvalue %dx.types.CBufRet.f32 %8134, 2
  %8136 = fsub fast float %7772, %8135
  %8137 = fcmp fast olt float %8133, -2.000000e+01
  %8138 = call float @dx.op.unary.f32(i32 21, float %8133)  ; Exp(value)
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8141 = extractvalue %dx.types.CBufRet.f32 %8139, 3
  %8142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8143 = extractvalue %dx.types.CBufRet.f32 %8142, 2
  %8144 = fmul fast float %8141, %8136
  %8145 = call float @dx.op.unary.f32(i32 7, float %8144)  ; Saturate(value)
  %8146 = fsub fast float 1.000000e+00, %8145
  %8147 = fmul fast float %7757, 5.000000e-01
  %8148 = fadd fast float %8147, 5.000000e-01
  %8149 = call float @dx.op.unary.f32(i32 7, float %8148)  ; Saturate(value)
  %8150 = fsub fast float 1.000000e+00, %8149
  %8151 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8146)  ; FMax(a,b)
  %8152 = fdiv fast float %8150, %8151
  %8153 = fsub fast float %8136, %7714
  %8154 = call float @dx.op.unary.f32(i32 6, float %8153)  ; FAbs(value)
  %8155 = fmul fast float %8154, %8140
  %8156 = call float @dx.op.unary.f32(i32 7, float %8152)  ; Saturate(value)
  %8157 = fsub fast float 1.000000e+00, %8155
  %8158 = fmul fast float %8157, %8156
  %8159 = fadd fast float %8158, %8155
  %8160 = fmul fast float %8143, %8136
  %8161 = call float @dx.op.unary.f32(i32 7, float %8160)  ; Saturate(value)
  %8162 = fsub fast float 1.000000e+00, %8159
  %8163 = fmul fast float %8162, %8161
  %8164 = fadd fast float %8163, %8159
  %8165 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  %8166 = fadd fast float %8138, -1.000000e+00
  %8167 = select i1 %8137, float -1.000000e+00, float %8166
  %8168 = fmul fast float %8165, %8167
  %8169 = fadd fast float %8168, 1.000000e+00
  %8170 = fsub fast float -0.000000e+00, %8168
  %8171 = fmul fast float %8130, %8170
  %8172 = fmul fast float %8131, %8170
  %8173 = fmul fast float %8132, %8170
  br label %8174

; <label>:8174                                    ; preds = %8127, %7723
  %8175 = phi float [ %8128, %8127 ], [ 0.000000e+00, %7723 ]
  %8176 = phi float [ %8169, %8127 ], [ 1.000000e+00, %7723 ]
  %8177 = phi float [ %8171, %8127 ], [ 0.000000e+00, %7723 ]
  %8178 = phi float [ %8172, %8127 ], [ 0.000000e+00, %7723 ]
  %8179 = phi float [ %8173, %8127 ], [ 0.000000e+00, %7723 ]
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8182 = fsub fast float 1.000000e+00, %8176
  %8183 = fmul fast float %8182, %7758
  %8184 = fmul fast float %8183, %8181
  %8185 = fsub fast float %7758, %8184
  br i1 %7751, label %8186, label %8215, !dx.controlflow.hints !158

; <label>:8186                                    ; preds = %8174
  %8187 = fmul fast float %7759, %7748
  %8188 = fadd fast float %8187, %7749
  %8189 = call float @dx.op.unary.f32(i32 7, float %8188)  ; Saturate(value)
  %8190 = fmul fast float %7730, %8185
  %8191 = fsub fast float -0.000000e+00, %8190
  %8192 = fmul fast float %7731, %8185
  %8193 = fsub fast float -0.000000e+00, %8192
  %8194 = call float @dx.op.unary.f32(i32 21, float %8191)  ; Exp(value)
  %8195 = call float @dx.op.unary.f32(i32 21, float %8193)  ; Exp(value)
  %8196 = call float @dx.op.binary.f32(i32 35, float %7738, float %8194)  ; FMax(a,b)
  %8197 = call float @dx.op.binary.f32(i32 35, float %7738, float %8195)  ; FMax(a,b)
  %8198 = fsub fast float %8197, %8196
  %8199 = fmul fast float %8198, %8189
  %8200 = fadd fast float %8199, %8196
  %8201 = call float @dx.op.unary.f32(i32 7, float %8200)  ; Saturate(value)
  %8202 = fsub fast float %7735, %7740
  %8203 = fsub fast float %7736, %7741
  %8204 = fsub fast float %7737, %7742
  %8205 = fmul fast float %8189, %8202
  %8206 = fmul fast float %8189, %8203
  %8207 = fmul fast float %8189, %8204
  %8208 = fadd fast float %8205, %7740
  %8209 = fadd fast float %8206, %7741
  %8210 = fadd fast float %8207, %7742
  %8211 = fsub fast float 1.000000e+00, %8201
  %8212 = fmul fast float %8211, %8208
  %8213 = fmul fast float %8211, %8209
  %8214 = fmul fast float %8211, %8210
  br label %8274

; <label>:8215                                    ; preds = %8174
  %8216 = fmul fast float %8185, %7747
  %8217 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8218 = fsub fast float 2.000000e+00, %8217
  %8219 = fmul fast float %8217, 9.921875e-01
  %8220 = fmul fast float %8219, %8218
  %8221 = fadd fast float %8220, 3.906250e-03
  %8222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8221, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8223 = extractvalue %dx.types.ResRet.f32 %8222, 0
  %8224 = fsub fast float %8217, %8223
  %8225 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8224)  ; FMax(a,b)
  %8226 = fmul fast float %7733, %7714
  %8227 = call float @dx.op.unary.f32(i32 6, float %8226)  ; FAbs(value)
  %8228 = fcmp fast ogt float %8227, 0x3EB0C6F7A0000000
  br i1 %8228, label %8229, label %8235, !dx.controlflow.hints !159

; <label>:8229                                    ; preds = %8215
  %8230 = fmul fast float %8226, 0xBFF7154760000000
  %8231 = call float @dx.op.unary.f32(i32 21, float %8230)  ; Exp(value)
  %8232 = fsub fast float 1.000000e+00, %8231
  %8233 = fdiv fast float %8232, %8226
  %8234 = fmul fast float %8233, %7743
  br label %8235

; <label>:8235                                    ; preds = %8229, %8215
  %8236 = phi float [ %8234, %8229 ], [ %7743, %8215 ]
  %8237 = fadd fast float %8236, %7745
  %8238 = fmul fast float %8237, %8225
  %8239 = fmul fast float %7730, %8238
  %8240 = fsub fast float -0.000000e+00, %8239
  %8241 = fmul fast float %7731, %8238
  %8242 = fsub fast float -0.000000e+00, %8241
  %8243 = fmul fast float %7732, %8238
  %8244 = fsub fast float -0.000000e+00, %8243
  %8245 = call float @dx.op.unary.f32(i32 21, float %8240)  ; Exp(value)
  %8246 = call float @dx.op.unary.f32(i32 21, float %8242)  ; Exp(value)
  %8247 = call float @dx.op.unary.f32(i32 21, float %8244)  ; Exp(value)
  %8248 = fmul fast float %7759, %7759
  %8249 = fadd fast float %8248, 1.000000e+00
  %8250 = fmul fast float %8249, 0x3FAE8EC8A0000000
  %8251 = fmul fast float %8250, %7740
  %8252 = fmul fast float %8250, %7741
  %8253 = fmul fast float %8250, %7742
  %8254 = fmul fast float %7759, %7738
  %8255 = fsub fast float 1.000000e+00, %8254
  %8256 = fmul fast float %7738, %7738
  %8257 = fsub fast float 1.000000e+00, %8256
  %8258 = fmul fast float %8257, 0x3FB45F3060000000
  %8259 = fmul fast float %8255, %8255
  %8260 = fdiv fast float 1.000000e+00, %8259
  %8261 = fmul fast float %8258, %8260
  %8262 = fmul fast float %8261, %7735
  %8263 = fmul fast float %8261, %7736
  %8264 = fmul fast float %8261, %7737
  %8265 = fadd fast float %8262, %8251
  %8266 = fadd fast float %8263, %8252
  %8267 = fadd fast float %8264, %8253
  %8268 = fsub fast float 1.000000e+00, %8245
  %8269 = fsub fast float 1.000000e+00, %8246
  %8270 = fsub fast float 1.000000e+00, %8247
  %8271 = fmul fast float %8265, %8268
  %8272 = fmul fast float %8266, %8269
  %8273 = fmul fast float %8267, %8270
  br label %8274

; <label>:8274                                    ; preds = %8235, %8186
  %8275 = phi float [ %8212, %8186 ], [ %8271, %8235 ]
  %8276 = phi float [ %8213, %8186 ], [ %8272, %8235 ]
  %8277 = phi float [ %8214, %8186 ], [ %8273, %8235 ]
  %8278 = phi float [ %8201, %8186 ], [ %8245, %8235 ]
  %8279 = phi float [ %8201, %8186 ], [ %8246, %8235 ]
  %8280 = phi float [ %8201, %8186 ], [ %8247, %8235 ]
  br i1 %7767, label %8281, label %8479, !dx.controlflow.hints !160

; <label>:8281                                    ; preds = %8274
  %8282 = extractvalue %dx.types.CBufRet.f32 %8180, 0
  %8283 = fmul fast float %8282, %8182
  %8284 = fsub fast float %8177, %8275
  %8285 = fsub fast float %8178, %8276
  %8286 = fsub fast float %8179, %8277
  %8287 = fmul fast float %8283, %8284
  %8288 = fmul fast float %8283, %8285
  %8289 = fmul fast float %8283, %8286
  %8290 = fadd fast float %8287, %8275
  %8291 = fadd fast float %8288, %8276
  %8292 = fadd fast float %8289, %8277
  %8293 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8278)  ; FMax(a,b)
  %8294 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8279)  ; FMax(a,b)
  %8295 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8280)  ; FMax(a,b)
  %8296 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8176)  ; FMax(a,b)
  %8297 = call float @dx.op.binary.f32(i32 35, float %8175, float %8185)  ; FMax(a,b)
  %8298 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8297)  ; FMax(a,b)
  %8299 = fdiv fast float %8175, %8298
  %8300 = call float @dx.op.unary.f32(i32 7, float %8299)  ; Saturate(value)
  %8301 = fdiv fast float %8185, %8298
  %8302 = call float @dx.op.unary.f32(i32 7, float %8301)  ; Saturate(value)
  %8303 = fcmp fast une float %8296, 1.000000e+00
  br i1 %8303, label %8304, label %8317, !dx.controlflow.hints !161

; <label>:8304                                    ; preds = %8281
  %8305 = call float @dx.op.unary.f32(i32 23, float %8296)  ; Log(value)
  %8306 = fmul fast float %8305, 0x3FE62E4300000000
  %8307 = fmul fast float %8177, %8306
  %8308 = fsub fast float -0.000000e+00, %8307
  %8309 = fmul fast float %8178, %8306
  %8310 = fsub fast float -0.000000e+00, %8309
  %8311 = fmul fast float %8179, %8306
  %8312 = fsub fast float -0.000000e+00, %8311
  %8313 = fsub fast float 1.000000e+00, %8296
  %8314 = fdiv fast float %8308, %8313
  %8315 = fdiv fast float %8310, %8313
  %8316 = fdiv fast float %8312, %8313
  br label %8317

; <label>:8317                                    ; preds = %8304, %8281
  %8318 = phi float [ %8314, %8304 ], [ %8177, %8281 ]
  %8319 = phi float [ %8315, %8304 ], [ %8178, %8281 ]
  %8320 = phi float [ %8316, %8304 ], [ %8179, %8281 ]
  %8321 = phi float [ %8306, %8304 ], [ 0.000000e+00, %8281 ]
  %8322 = fcmp fast une float %8293, 1.000000e+00
  br i1 %8322, label %8323, label %8330, !dx.controlflow.hints !162

; <label>:8323                                    ; preds = %8317
  %8324 = call float @dx.op.unary.f32(i32 23, float %8293)  ; Log(value)
  %8325 = fmul fast float %8324, 0x3FE62E4300000000
  %8326 = fmul fast float %8290, %8325
  %8327 = fsub fast float -0.000000e+00, %8326
  %8328 = fsub fast float 1.000000e+00, %8293
  %8329 = fdiv fast float %8327, %8328
  br label %8330

; <label>:8330                                    ; preds = %8323, %8317
  %8331 = phi float [ %8329, %8323 ], [ %8290, %8317 ]
  %8332 = phi float [ %8325, %8323 ], [ 0.000000e+00, %8317 ]
  %8333 = fcmp fast une float %8294, 1.000000e+00
  br i1 %8333, label %8334, label %8341, !dx.controlflow.hints !162

; <label>:8334                                    ; preds = %8330
  %8335 = call float @dx.op.unary.f32(i32 23, float %8294)  ; Log(value)
  %8336 = fmul fast float %8335, 0x3FE62E4300000000
  %8337 = fmul fast float %8291, %8336
  %8338 = fsub fast float -0.000000e+00, %8337
  %8339 = fsub fast float 1.000000e+00, %8294
  %8340 = fdiv fast float %8338, %8339
  br label %8341

; <label>:8341                                    ; preds = %8334, %8330
  %8342 = phi float [ %8340, %8334 ], [ %8291, %8330 ]
  %8343 = phi float [ %8336, %8334 ], [ 0.000000e+00, %8330 ]
  %8344 = fcmp fast une float %8295, 1.000000e+00
  br i1 %8344, label %8345, label %8352, !dx.controlflow.hints !162

; <label>:8345                                    ; preds = %8341
  %8346 = call float @dx.op.unary.f32(i32 23, float %8295)  ; Log(value)
  %8347 = fmul fast float %8346, 0x3FE62E4300000000
  %8348 = fmul fast float %8292, %8347
  %8349 = fsub fast float -0.000000e+00, %8348
  %8350 = fsub fast float 1.000000e+00, %8295
  %8351 = fdiv fast float %8349, %8350
  br label %8352

; <label>:8352                                    ; preds = %8345, %8341
  %8353 = phi float [ %8351, %8345 ], [ %8292, %8341 ]
  %8354 = phi float [ %8347, %8345 ], [ 0.000000e+00, %8341 ]
  %8355 = fmul fast float %8318, %8302
  %8356 = fmul fast float %8319, %8302
  %8357 = fmul fast float %8320, %8302
  %8358 = fmul fast float %8321, %8302
  %8359 = fmul fast float %8331, %8300
  %8360 = fmul fast float %8342, %8300
  %8361 = fmul fast float %8353, %8300
  %8362 = fmul fast float %8332, %8300
  %8363 = fmul fast float %8343, %8300
  %8364 = fmul fast float %8354, %8300
  %8365 = fadd fast float %8359, %8355
  %8366 = fadd fast float %8360, %8356
  %8367 = fadd fast float %8361, %8357
  %8368 = fadd fast float %8362, %8358
  %8369 = fadd fast float %8363, %8358
  %8370 = fadd fast float %8364, %8358
  %8371 = fcmp fast une float %8368, 0.000000e+00
  br i1 %8371, label %8372, label %8379, !dx.controlflow.hints !163

; <label>:8372                                    ; preds = %8352
  %8373 = fmul fast float %8368, 0x3FF7154760000000
  %8374 = call float @dx.op.unary.f32(i32 21, float %8373)  ; Exp(value)
  %8375 = fsub fast float 1.000000e+00, %8374
  %8376 = fmul fast float %8365, %8375
  %8377 = fsub fast float -0.000000e+00, %8376
  %8378 = fdiv fast float %8377, %8368
  br label %8379

; <label>:8379                                    ; preds = %8372, %8352
  %8380 = phi float [ %8374, %8372 ], [ 1.000000e+00, %8352 ]
  %8381 = phi float [ %8378, %8372 ], [ %8365, %8352 ]
  %8382 = fcmp fast une float %8369, 0.000000e+00
  br i1 %8382, label %8383, label %8390, !dx.controlflow.hints !163

; <label>:8383                                    ; preds = %8379
  %8384 = fmul fast float %8369, 0x3FF7154760000000
  %8385 = call float @dx.op.unary.f32(i32 21, float %8384)  ; Exp(value)
  %8386 = fsub fast float 1.000000e+00, %8385
  %8387 = fmul fast float %8366, %8386
  %8388 = fsub fast float -0.000000e+00, %8387
  %8389 = fdiv fast float %8388, %8369
  br label %8390

; <label>:8390                                    ; preds = %8383, %8379
  %8391 = phi float [ %8385, %8383 ], [ 1.000000e+00, %8379 ]
  %8392 = phi float [ %8389, %8383 ], [ %8366, %8379 ]
  %8393 = fcmp fast une float %8370, 0.000000e+00
  br i1 %8393, label %8394, label %8401, !dx.controlflow.hints !163

; <label>:8394                                    ; preds = %8390
  %8395 = fmul fast float %8370, 0x3FF7154760000000
  %8396 = call float @dx.op.unary.f32(i32 21, float %8395)  ; Exp(value)
  %8397 = fsub fast float 1.000000e+00, %8396
  %8398 = fmul fast float %8367, %8397
  %8399 = fsub fast float -0.000000e+00, %8398
  %8400 = fdiv fast float %8399, %8370
  br label %8401

; <label>:8401                                    ; preds = %8394, %8390
  %8402 = phi float [ %8396, %8394 ], [ 1.000000e+00, %8390 ]
  %8403 = phi float [ %8400, %8394 ], [ %8367, %8390 ]
  %8404 = fcmp fast ogt float %8300, %8302
  br i1 %8404, label %8405, label %8425

; <label>:8405                                    ; preds = %8401
  %8406 = fsub fast float 1.000000e+00, %8302
  %8407 = fmul fast float %8318, %8406
  %8408 = fmul fast float %8319, %8406
  %8409 = fmul fast float %8320, %8406
  %8410 = fmul fast float %8321, %8406
  %8411 = fcmp fast une float %8410, 0.000000e+00
  br i1 %8411, label %8412, label %8463, !dx.controlflow.hints !164

; <label>:8412                                    ; preds = %8405
  %8413 = fmul fast float %8410, 0x3FF7154760000000
  %8414 = call float @dx.op.unary.f32(i32 21, float %8413)  ; Exp(value)
  %8415 = fsub fast float 1.000000e+00, %8414
  %8416 = fmul fast float %8407, %8415
  %8417 = fsub fast float -0.000000e+00, %8416
  %8418 = fmul fast float %8408, %8415
  %8419 = fsub fast float -0.000000e+00, %8418
  %8420 = fmul fast float %8409, %8415
  %8421 = fsub fast float -0.000000e+00, %8420
  %8422 = fdiv fast float %8417, %8410
  %8423 = fdiv fast float %8419, %8410
  %8424 = fdiv fast float %8421, %8410
  br label %8463

; <label>:8425                                    ; preds = %8401
  %8426 = fsub fast float 1.000000e+00, %8300
  %8427 = fmul fast float %8331, %8426
  %8428 = fmul fast float %8342, %8426
  %8429 = fmul fast float %8353, %8426
  %8430 = fmul fast float %8332, %8426
  %8431 = fmul fast float %8343, %8426
  %8432 = fmul fast float %8354, %8426
  %8433 = fcmp fast une float %8430, 0.000000e+00
  br i1 %8433, label %8434, label %8441, !dx.controlflow.hints !163

; <label>:8434                                    ; preds = %8425
  %8435 = fmul fast float %8430, 0x3FF7154760000000
  %8436 = call float @dx.op.unary.f32(i32 21, float %8435)  ; Exp(value)
  %8437 = fsub fast float 1.000000e+00, %8436
  %8438 = fmul fast float %8427, %8437
  %8439 = fsub fast float -0.000000e+00, %8438
  %8440 = fdiv fast float %8439, %8430
  br label %8441

; <label>:8441                                    ; preds = %8434, %8425
  %8442 = phi float [ %8440, %8434 ], [ %8427, %8425 ]
  %8443 = phi float [ %8436, %8434 ], [ 1.000000e+00, %8425 ]
  %8444 = fcmp fast une float %8431, 0.000000e+00
  br i1 %8444, label %8445, label %8452, !dx.controlflow.hints !163

; <label>:8445                                    ; preds = %8441
  %8446 = fmul fast float %8431, 0x3FF7154760000000
  %8447 = call float @dx.op.unary.f32(i32 21, float %8446)  ; Exp(value)
  %8448 = fsub fast float 1.000000e+00, %8447
  %8449 = fmul fast float %8428, %8448
  %8450 = fsub fast float -0.000000e+00, %8449
  %8451 = fdiv fast float %8450, %8431
  br label %8452

; <label>:8452                                    ; preds = %8445, %8441
  %8453 = phi float [ %8451, %8445 ], [ %8428, %8441 ]
  %8454 = phi float [ %8447, %8445 ], [ 1.000000e+00, %8441 ]
  %8455 = fcmp fast une float %8432, 0.000000e+00
  br i1 %8455, label %8456, label %8463, !dx.controlflow.hints !163

; <label>:8456                                    ; preds = %8452
  %8457 = fmul fast float %8432, 0x3FF7154760000000
  %8458 = call float @dx.op.unary.f32(i32 21, float %8457)  ; Exp(value)
  %8459 = fsub fast float 1.000000e+00, %8458
  %8460 = fmul fast float %8429, %8459
  %8461 = fsub fast float -0.000000e+00, %8460
  %8462 = fdiv fast float %8461, %8432
  br label %8463

; <label>:8463                                    ; preds = %8456, %8452, %8412, %8405
  %8464 = phi float [ %8462, %8456 ], [ %8424, %8412 ], [ %8409, %8405 ], [ %8429, %8452 ]
  %8465 = phi float [ %8453, %8456 ], [ %8423, %8412 ], [ %8408, %8405 ], [ %8453, %8452 ]
  %8466 = phi float [ %8442, %8456 ], [ %8422, %8412 ], [ %8407, %8405 ], [ %8442, %8452 ]
  %8467 = phi float [ %8458, %8456 ], [ %8414, %8412 ], [ 1.000000e+00, %8405 ], [ 1.000000e+00, %8452 ]
  %8468 = phi float [ %8454, %8456 ], [ %8414, %8412 ], [ 1.000000e+00, %8405 ], [ %8454, %8452 ]
  %8469 = phi float [ %8443, %8456 ], [ %8414, %8412 ], [ 1.000000e+00, %8405 ], [ %8443, %8452 ]
  %8470 = fmul fast float %8469, %8381
  %8471 = fmul fast float %8468, %8392
  %8472 = fmul fast float %8467, %8403
  %8473 = fadd fast float %8470, %8466
  %8474 = fadd fast float %8471, %8465
  %8475 = fadd fast float %8472, %8464
  %8476 = fmul fast float %8469, %8380
  %8477 = fmul fast float %8468, %8391
  %8478 = fmul fast float %8467, %8402
  br label %8479

; <label>:8479                                    ; preds = %8463, %8274
  %8480 = phi float [ %8478, %8463 ], [ %8280, %8274 ]
  %8481 = phi float [ %8477, %8463 ], [ %8279, %8274 ]
  %8482 = phi float [ %8476, %8463 ], [ %8278, %8274 ]
  %8483 = phi float [ %8475, %8463 ], [ %8277, %8274 ]
  %8484 = phi float [ %8474, %8463 ], [ %8276, %8274 ]
  %8485 = phi float [ %8473, %8463 ], [ %8275, %8274 ]
  %8486 = fmul fast float %8485, %7431
  %8487 = fmul fast float %8484, %7431
  %8488 = fmul fast float %8483, %7431
  %8489 = fmul fast float %8482, %7722
  %8490 = call float @dx.op.dot3.f32(i32 55, float %8482, float %8481, float %8480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8491 = call float @dx.op.dot3.f32(i32 55, float %8486, float %8487, float %8488, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8492 = select i1 %220, float %8490, float %8482
  %8493 = select i1 %220, float %8490, float %8481
  %8494 = select i1 %220, float 1.000000e+00, float %8480
  %8495 = select i1 %220, float %8491, float %8486
  %8496 = select i1 %220, float 0.000000e+00, float %8487
  %8497 = select i1 %220, float 0.000000e+00, float %8488
  %8498 = fmul fast float %8492, %7716
  %8499 = fmul fast float %8493, %7717
  %8500 = fmul fast float %8494, %7718
  %8501 = fadd fast float %8498, %8495
  %8502 = fadd fast float %8499, %8496
  %8503 = fadd fast float %8497, %8500
  %8504 = fmul fast float %8492, %7719
  %8505 = fmul fast float %8493, %7720
  %8506 = fmul fast float %8494, %7721
  %8507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.i32 %8507, 0
  %8509 = icmp eq i32 %8508, 0
  br i1 %8509, label %8877, label %8510, !dx.controlflow.hints !165

; <label>:8510                                    ; preds = %8479
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8513 = extractvalue %dx.types.CBufRet.f32 %8511, 3
  %8514 = fmul fast float %8512, %95
  %8515 = fmul fast float %8513, %96
  %8516 = fmul fast float %8514, 2.000000e+00
  %8517 = fmul fast float %8515, 2.000000e+00
  %8518 = fsub fast float 1.000000e+00, %8516
  %8519 = fsub fast float 1.000000e+00, %8517
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 0
  %8522 = extractvalue %dx.types.CBufRet.f32 %8520, 1
  %8523 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8524 = fmul fast float %8518, %8521
  %8525 = fmul fast float %8518, %8522
  %8526 = fmul fast float %8518, %8523
  %8527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8528 = extractvalue %dx.types.CBufRet.f32 %8527, 0
  %8529 = extractvalue %dx.types.CBufRet.f32 %8527, 1
  %8530 = extractvalue %dx.types.CBufRet.f32 %8527, 2
  %8531 = fmul fast float %8519, %8528
  %8532 = fmul fast float %8519, %8529
  %8533 = fmul fast float %8519, %8530
  %8534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8534, 0
  %8536 = extractvalue %dx.types.CBufRet.f32 %8534, 1
  %8537 = extractvalue %dx.types.CBufRet.f32 %8534, 2
  %8538 = fadd fast float %8531, %8535
  %8539 = fadd fast float %8538, %8524
  %8540 = fadd fast float %8532, %8536
  %8541 = fadd fast float %8540, %8525
  %8542 = fadd fast float %8533, %8537
  %8543 = fadd fast float %8542, %8526
  %8544 = fmul fast float %8539, %7715
  %8545 = fmul fast float %8541, %7715
  %8546 = fmul fast float %8543, %7715
  %8547 = fmul fast float %8544, %8544
  %8548 = fmul fast float %8545, %8545
  %8549 = fadd fast float %8547, %8548
  %8550 = fmul fast float %8546, %8546
  %8551 = fadd fast float %8549, %8550
  %8552 = call float @dx.op.unary.f32(i32 24, float %8551)  ; Sqrt(value)
  %8553 = extractvalue %dx.types.CBufRet.f32 %7442, 0
  %8554 = fsub fast float %8552, %8553
  %8555 = extractvalue %dx.types.CBufRet.f32 %7442, 2
  %8556 = fmul fast float %8554, %8555
  %8557 = call float @dx.op.unary.f32(i32 7, float %8556)  ; Saturate(value)
  %8558 = fadd fast float %8557, -5.000000e-01
  %8559 = fmul fast float %8558, 2.000000e+00
  %8560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8561 = extractvalue %dx.types.CBufRet.f32 %8560, 2
  %8562 = call float @dx.op.binary.f32(i32 36, float %8561, float %8559)  ; FMin(a,b)
  %8563 = fsub fast float -0.000000e+00, %8561
  %8564 = fcmp fast ogt float %8562, %8563
  br i1 %8564, label %8565, label %8877, !dx.controlflow.hints !166

; <label>:8565                                    ; preds = %8510
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 3
  %8568 = fcmp fast ogt float %8567, 0.000000e+00
  br i1 %8568, label %8569, label %8644, !dx.controlflow.hints !167

; <label>:8569                                    ; preds = %8565
  %8570 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8571 = extractvalue %dx.types.Dimensions %8570, 0
  %8572 = sitofp i32 %8571 to float
  %8573 = extractvalue %dx.types.Dimensions %8570, 1
  %8574 = sitofp i32 %8573 to float
  %8575 = fmul fast float %8514, %8572
  %8576 = fmul fast float %8515, %8574
  %8577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8578 = extractvalue %dx.types.CBufRet.f32 %8577, 1
  %8579 = fsub fast float -0.000000e+00, %8578
  %8580 = fptoui float %8579 to i32
  %8581 = fptoui float %8575 to i32
  %8582 = fptoui float %8576 to i32
  %8583 = and i32 %8580, 31
  %8584 = lshr i32 %8581, %8583
  %8585 = lshr i32 %8582, %8583
  %8586 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8580, i32 %8584, i32 %8585, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8587 = extractvalue %dx.types.ResRet.f32 %8586, 0
  %8588 = fcmp fast olt float %8587, -1.000000e+00
  %8589 = fcmp fast ogt float %8587, -1.000000e+00
  %8590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.f32 %8590, 1
  %8592 = select i1 %8589, float %8591, float 1.000000e+00
  %8593 = fadd fast float %8587, 1.000000e+00
  %8594 = fmul fast float %8592, %8593
  %8595 = call float @dx.op.unary.f32(i32 6, float %8594)  ; FAbs(value)
  %8596 = extractvalue %dx.types.CBufRet.f32 %8590, 3
  %8597 = fcmp fast oge float %8595, %8596
  %8598 = select i1 %8597, float 0x4197782600000000, float %8595
  %8599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8600 = extractvalue %dx.types.CBufRet.f32 %8599, 0
  %8601 = extractvalue %dx.types.CBufRet.f32 %8599, 1
  %8602 = extractvalue %dx.types.CBufRet.f32 %8599, 2
  %8603 = select i1 %8588, float %8600, float %8521
  %8604 = select i1 %8588, float %8601, float %8522
  %8605 = select i1 %8588, float %8602, float %8523
  %8606 = fmul fast float %8603, %8518
  %8607 = fmul fast float %8604, %8518
  %8608 = fmul fast float %8605, %8518
  %8609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8609, 0
  %8611 = extractvalue %dx.types.CBufRet.f32 %8609, 1
  %8612 = extractvalue %dx.types.CBufRet.f32 %8609, 2
  %8613 = select i1 %8588, float %8610, float %8528
  %8614 = select i1 %8588, float %8611, float %8529
  %8615 = select i1 %8588, float %8612, float %8530
  %8616 = fmul fast float %8613, %8519
  %8617 = fmul fast float %8614, %8519
  %8618 = fmul fast float %8615, %8519
  %8619 = fadd fast float %8616, %8606
  %8620 = fadd fast float %8617, %8607
  %8621 = fadd fast float %8618, %8608
  %8622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8623 = extractvalue %dx.types.CBufRet.f32 %8622, 0
  %8624 = extractvalue %dx.types.CBufRet.f32 %8622, 1
  %8625 = extractvalue %dx.types.CBufRet.f32 %8622, 2
  %8626 = select i1 %8588, float %8623, float %8535
  %8627 = select i1 %8588, float %8624, float %8536
  %8628 = select i1 %8588, float %8625, float %8537
  %8629 = fadd fast float %8619, %8626
  %8630 = fadd fast float %8620, %8627
  %8631 = fadd fast float %8621, %8628
  %8632 = fmul fast float %8629, %8598
  %8633 = fmul fast float %8630, %8598
  %8634 = fmul fast float %8631, %8598
  %8635 = fmul fast float %8632, %8632
  %8636 = fmul fast float %8633, %8633
  %8637 = fadd fast float %8635, %8636
  %8638 = fmul fast float %8634, %8634
  %8639 = fadd fast float %8637, %8638
  %8640 = call float @dx.op.unary.f32(i32 24, float %8639)  ; Sqrt(value)
  %8641 = fsub fast float %8640, %8553
  %8642 = fmul fast float %8641, %8555
  %8643 = call float @dx.op.unary.f32(i32 7, float %8642)  ; Saturate(value)
  br label %8644

; <label>:8644                                    ; preds = %8569, %8565
  %8645 = phi float [ %8643, %8569 ], [ 1.000000e+00, %8565 ]
  %8646 = fmul fast float %8562, 5.000000e-01
  %8647 = fadd fast float %8646, 5.000000e-01
  %8648 = call float @dx.op.unary.f32(i32 22, float %8647)  ; Frc(value)
  %8649 = call float @dx.op.unary.f32(i32 27, float %8648)  ; Round_ni(value)
  %8650 = call float @dx.op.unary.f32(i32 22, float %8648)  ; Frc(value)
  %8651 = fmul fast float %8650, 2.000000e+00
  %8652 = fadd fast float %8651, -1.000000e+00
  %8653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8514, float %8515, float %8649, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8654 = extractvalue %dx.types.ResRet.f32 %8653, 0
  %8655 = extractvalue %dx.types.ResRet.f32 %8653, 1
  %8656 = extractvalue %dx.types.ResRet.f32 %8653, 2
  %8657 = extractvalue %dx.types.ResRet.f32 %8653, 3
  %8658 = fadd fast float %8654, -5.000000e-01
  %8659 = fadd fast float %8656, -5.000000e-01
  %8660 = fmul fast float %8658, 0xBFD5555560000000
  %8661 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8659, float %8660)  ; FMad(a,b,c)
  %8662 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8655, float 0.000000e+00)  ; FMad(a,b,c)
  %8663 = fadd fast float %8662, %8657
  %8664 = fmul fast float %8658, -7.500000e-01
  %8665 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8659, float %8664)  ; FMad(a,b,c)
  %8666 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8655, float 0.000000e+00)  ; FMad(a,b,c)
  %8667 = fadd fast float %8666, %8657
  %8668 = call float @dx.op.binary.f32(i32 35, float %8661, float -1.000000e+00)  ; FMax(a,b)
  %8669 = call float @dx.op.binary.f32(i32 35, float %8663, float -1.000000e+00)  ; FMax(a,b)
  %8670 = call float @dx.op.binary.f32(i32 35, float %8665, float -1.000000e+00)  ; FMax(a,b)
  %8671 = call float @dx.op.binary.f32(i32 35, float %8667, float -1.000000e+00)  ; FMax(a,b)
  %8672 = call float @dx.op.binary.f32(i32 36, float %8668, float 1.000000e+00)  ; FMin(a,b)
  %8673 = call float @dx.op.binary.f32(i32 36, float %8669, float 1.000000e+00)  ; FMin(a,b)
  %8674 = call float @dx.op.binary.f32(i32 36, float %8670, float 1.000000e+00)  ; FMin(a,b)
  %8675 = call float @dx.op.binary.f32(i32 36, float %8671, float 1.000000e+00)  ; FMin(a,b)
  %8676 = fcmp fast olt float %8672, 0x3FEFFF8020000000
  br i1 %8676, label %8677, label %8792, !dx.controlflow.hints !168

; <label>:8677                                    ; preds = %8644
  %8678 = extractvalue %dx.types.CBufRet.f32 %8560, 3
  %8679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.f32 %8679, 0
  %8681 = extractvalue %dx.types.CBufRet.f32 %8679, 1
  %8682 = extractvalue %dx.types.CBufRet.f32 %8679, 2
  %8683 = extractvalue %dx.types.CBufRet.f32 %8679, 3
  %8684 = fsub fast float %8680, %8672
  %8685 = fsub fast float %8681, %8673
  %8686 = fsub fast float %8682, %8674
  %8687 = fsub fast float %8683, %8675
  %8688 = fmul fast float %8684, %8678
  %8689 = fmul fast float %8685, %8678
  %8690 = fmul fast float %8686, %8678
  %8691 = fmul fast float %8687, %8678
  %8692 = fadd fast float %8688, %8672
  %8693 = fadd fast float %8689, %8673
  %8694 = fsub fast float -0.000000e+00, %8693
  %8695 = fadd fast float %8690, %8674
  %8696 = fadd fast float %8691, %8675
  %8697 = fmul fast float %8692, %8692
  %8698 = fsub fast float %8693, %8697
  %8699 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8698)  ; FMax(a,b)
  %8700 = fdiv fast float 1.000000e+00, %8699
  %8701 = fmul fast float %8693, %8692
  %8702 = fsub fast float %8695, %8701
  %8703 = fsub fast float %8652, %8692
  %8704 = fmul fast float %8652, %8652
  %8705 = fsub fast float %8704, %8693
  %8706 = fmul fast float %8703, %8700
  %8707 = fmul fast float %8706, %8702
  %8708 = fsub fast float %8705, %8707
  %8709 = fmul fast float %8693, %8693
  %8710 = fsub fast float %8696, %8709
  %8711 = fmul fast float %8702, %8702
  %8712 = fmul fast float %8711, %8700
  %8713 = fsub fast float %8710, %8712
  %8714 = fdiv fast float %8708, %8713
  %8715 = fmul fast float %8702, %8714
  %8716 = fsub fast float %8703, %8715
  %8717 = fmul fast float %8716, %8700
  %8718 = fmul fast float %8717, %8692
  %8719 = fsub fast float 1.000000e+00, %8718
  %8720 = fmul fast float %8693, %8714
  %8721 = fsub fast float %8719, %8720
  %8722 = fmul fast float %8717, %8717
  %8723 = fmul fast float %8714, 4.000000e+00
  %8724 = fmul fast float %8723, %8721
  %8725 = fsub fast float %8722, %8724
  %8726 = call float @dx.op.unary.f32(i32 24, float %8725)  ; Sqrt(value)
  %8727 = fcmp fast oge float %8717, 0.000000e+00
  %8728 = fsub fast float -0.000000e+00, %8726
  %8729 = select i1 %8727, float %8728, float %8726
  %8730 = fsub fast float %8729, %8717
  %8731 = fdiv fast float %8730, %8714
  %8732 = fdiv fast float %8721, %8730
  %8733 = fmul fast float %8731, 5.000000e-01
  %8734 = fmul fast float %8732, 2.000000e+00
  %8735 = select i1 %8727, float %8733, float %8734
  %8736 = select i1 %8727, float %8734, float %8733
  %8737 = call float @dx.op.binary.f32(i32 35, float %8735, float %8736)  ; FMax(a,b)
  %8738 = call float @dx.op.binary.f32(i32 36, float %8735, float %8736)  ; FMin(a,b)
  %8739 = fcmp fast ogt float %8652, %8738
  br i1 %8739, label %8740, label %8750

; <label>:8740                                    ; preds = %8677
  %8741 = fsub fast float %8652, %8738
  %8742 = fsub fast float %8737, %8738
  %8743 = fmul fast float %8741, %8742
  %8744 = fmul fast float %8737, %8652
  %8745 = fadd fast float %8737, %8652
  %8746 = fmul fast float %8745, %8692
  %8747 = fadd fast float %8744, %8693
  %8748 = fsub fast float %8747, %8746
  %8749 = fdiv fast float %8748, %8743
  br label %8750

; <label>:8750                                    ; preds = %8740, %8677
  %8751 = phi float [ %8749, %8740 ], [ 0.000000e+00, %8677 ]
  %8752 = fcmp fast ogt float %8652, %8737
  %8753 = fsub fast float %8652, %8737
  br i1 %8752, label %8754, label %8764

; <label>:8754                                    ; preds = %8750
  %8755 = fsub fast float %8737, %8738
  %8756 = fmul fast float %8755, %8753
  %8757 = fmul fast float %8738, %8652
  %8758 = fadd fast float %8738, %8652
  %8759 = fmul fast float %8758, %8692
  %8760 = fsub fast float %8694, %8757
  %8761 = fadd fast float %8760, %8759
  %8762 = fdiv fast float %8761, %8756
  %8763 = fadd fast float %8762, %8751
  br label %8764

; <label>:8764                                    ; preds = %8754, %8750
  %8765 = phi float [ %8763, %8754 ], [ %8751, %8750 ]
  %8766 = fsub fast float %8652, %8738
  %8767 = fmul fast float %8766, %8753
  %8768 = fmul fast float %8738, %8737
  %8769 = fadd fast float %8738, %8737
  %8770 = fmul fast float %8769, %8692
  %8771 = fadd fast float %8768, %8693
  %8772 = fsub fast float %8771, %8770
  %8773 = fdiv fast float %8772, %8767
  %8774 = call float @dx.op.unary.f32(i32 7, float %8765)  ; Saturate(value)
  %8775 = fcmp fast oeq float %7443, 0.000000e+00
  %8776 = extractvalue %dx.types.CBufRet.f32 %8560, 0
  %8777 = fcmp fast oeq float %8776, 0.000000e+00
  %8778 = or i1 %8775, %8777
  %8779 = fmul fast float %8776, 2.000000e+00
  %8780 = fadd fast float %8561, %8562
  %8781 = fdiv fast float %8780, %8779
  %8782 = call float @dx.op.unary.f32(i32 7, float %8781)  ; Saturate(value)
  %8783 = fmul fast float %8782, 2.000000e+00
  %8784 = fsub fast float 3.000000e+00, %8783
  %8785 = fmul fast float %8782, %8782
  %8786 = fmul fast float %8785, %8784
  %8787 = select i1 %8778, float 1.000000e+00, float %8786
  %8788 = fmul fast float %8773, %7443
  %8789 = fadd fast float %8774, %8788
  %8790 = call float @dx.op.unary.f32(i32 7, float %8789)  ; Saturate(value)
  %8791 = fmul fast float %8787, %8790
  br label %8792

; <label>:8792                                    ; preds = %8764, %8644
  %8793 = phi float [ %8791, %8764 ], [ 0.000000e+00, %8644 ]
  %8794 = fsub fast float 1.000000e+00, %8793
  %8795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8514, float %8515, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8796 = extractvalue %dx.types.ResRet.f32 %8795, 0
  %8797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.i32 %8797, 2
  %8799 = icmp eq i32 %8798, 0
  br i1 %8799, label %8805, label %8800

; <label>:8800                                    ; preds = %8792
  %8801 = call float @dx.op.unary.f32(i32 7, float %8793)  ; Saturate(value)
  %8802 = fadd fast float %8796, -1.000000e+00
  %8803 = fmul fast float %8801, %8802
  %8804 = fadd fast float %8803, 1.000000e+00
  br label %8805

; <label>:8805                                    ; preds = %8800, %8792
  %8806 = phi float [ %8804, %8800 ], [ %8794, %8792 ]
  br i1 %8568, label %8807, label %8825

; <label>:8807                                    ; preds = %8805
  %8808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8809 = extractvalue %dx.types.CBufRet.f32 %8808, 1
  %8810 = fsub fast float %8645, %8809
  %8811 = call float @dx.op.unary.f32(i32 7, float %8810)  ; Saturate(value)
  %8812 = fsub fast float %8645, %8567
  %8813 = call float @dx.op.unary.f32(i32 7, float %8812)  ; Saturate(value)
  %8814 = fsub fast float %8811, %8813
  %8815 = fsub fast float %8647, %8813
  %8816 = fdiv fast float %8815, %8814
  %8817 = call float @dx.op.unary.f32(i32 7, float %8816)  ; Saturate(value)
  %8818 = fmul fast float %8817, 2.000000e+00
  %8819 = fsub fast float 3.000000e+00, %8818
  %8820 = fsub fast float %8796, %8806
  %8821 = fmul fast float %8817, %8817
  %8822 = fmul fast float %8821, %8820
  %8823 = fmul fast float %8822, %8819
  %8824 = fadd fast float %8823, %8806
  br label %8825

; <label>:8825                                    ; preds = %8807, %8805
  %8826 = phi float [ %8824, %8807 ], [ %8806, %8805 ]
  %8827 = call float @dx.op.binary.f32(i32 35, float %8796, float %8826)  ; FMax(a,b)
  %8828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8829 = extractvalue %dx.types.CBufRet.i32 %8828, 2
  %8830 = and i32 %8829, 1
  %8831 = icmp eq i32 %8830, 0
  %8832 = fcmp fast une float %8827, 1.000000e+00
  %8833 = and i1 %8832, %8831
  br i1 %8833, label %8834, label %8853

; <label>:8834                                    ; preds = %8825
  %8835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8514, float %8515, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8836 = extractvalue %dx.types.ResRet.f32 %8835, 0
  %8837 = extractvalue %dx.types.ResRet.f32 %8835, 1
  %8838 = extractvalue %dx.types.ResRet.f32 %8835, 2
  %8839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8840 = extractvalue %dx.types.CBufRet.f32 %8839, 1
  %8841 = fmul fast float %8840, %8836
  %8842 = fmul fast float %8840, %8837
  %8843 = fmul fast float %8840, %8838
  %8844 = fcmp fast ogt float %8796, 0x3FEFFF2E40000000
  %8845 = fsub fast float 1.000000e+00, %8827
  %8846 = fsub fast float 1.000000e+00, %8796
  %8847 = fdiv fast float %8845, %8846
  %8848 = call float @dx.op.unary.f32(i32 7, float %8847)  ; Saturate(value)
  %8849 = select i1 %8844, float 0.000000e+00, float %8848
  %8850 = fmul fast float %8841, %8849
  %8851 = fmul fast float %8842, %8849
  %8852 = fmul fast float %8843, %8849
  br label %8853

; <label>:8853                                    ; preds = %8834, %8825
  %8854 = phi float [ 0.000000e+00, %8825 ], [ %8850, %8834 ]
  %8855 = phi float [ 0.000000e+00, %8825 ], [ %8851, %8834 ]
  %8856 = phi float [ 0.000000e+00, %8825 ], [ %8852, %8834 ]
  %8857 = fmul fast float %8854, %7431
  %8858 = fmul fast float %8855, %7431
  %8859 = fmul fast float %8856, %7431
  %8860 = fmul fast float %8827, %8489
  %8861 = call float @dx.op.dot3.f32(i32 55, float %8827, float %8827, float %8827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8862 = call float @dx.op.dot3.f32(i32 55, float %8857, float %8858, float %8859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8863 = select i1 %220, float %8861, float %8827
  %8864 = select i1 %220, float 1.000000e+00, float %8827
  %8865 = select i1 %220, float %8862, float %8857
  %8866 = select i1 %220, float 0.000000e+00, float %8858
  %8867 = select i1 %220, float 0.000000e+00, float %8859
  %8868 = fmul fast float %8863, %8501
  %8869 = fmul fast float %8863, %8502
  %8870 = fmul fast float %8864, %8503
  %8871 = fadd fast float %8868, %8865
  %8872 = fadd fast float %8869, %8866
  %8873 = fadd fast float %8867, %8870
  %8874 = fmul fast float %8863, %8504
  %8875 = fmul fast float %8863, %8505
  %8876 = fmul fast float %8864, %8506
  br label %8877

; <label>:8877                                    ; preds = %8853, %8510, %8479, %7711
  %8878 = phi float [ %7716, %7711 ], [ %8501, %8479 ], [ %8871, %8853 ], [ %8501, %8510 ]
  %8879 = phi float [ %7717, %7711 ], [ %8502, %8479 ], [ %8872, %8853 ], [ %8502, %8510 ]
  %8880 = phi float [ %7718, %7711 ], [ %8503, %8479 ], [ %8873, %8853 ], [ %8503, %8510 ]
  %8881 = phi float [ %7719, %7711 ], [ %8504, %8479 ], [ %8874, %8853 ], [ %8504, %8510 ]
  %8882 = phi float [ %7720, %7711 ], [ %8505, %8479 ], [ %8875, %8853 ], [ %8505, %8510 ]
  %8883 = phi float [ %7721, %7711 ], [ %8506, %8479 ], [ %8876, %8853 ], [ %8506, %8510 ]
  %8884 = phi float [ %7722, %7711 ], [ %8489, %8479 ], [ %8860, %8853 ], [ %8489, %8510 ]
  %8885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8885, 2
  %8887 = extractvalue %dx.types.CBufRet.f32 %8885, 3
  %8888 = fmul fast float %8886, %95
  %8889 = fmul fast float %8887, %96
  %8890 = call float @dx.op.unary.f32(i32 7, float %8888)  ; Saturate(value)
  %8891 = call float @dx.op.unary.f32(i32 7, float %8889)  ; Saturate(value)
  %8892 = select i1 %7453, i32 2, i32 0
  %8893 = or i32 %8892, 1
  %8894 = uitofp i32 %8893 to float
  %8895 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8890, float %8891, float %8894, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8896 = extractvalue %dx.types.ResRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.ResRet.f32 %8895, 1
  %8898 = extractvalue %dx.types.ResRet.f32 %8895, 2
  %8899 = extractvalue %dx.types.ResRet.f32 %8895, 3
  %8900 = add nuw nsw i32 %8892, 2
  %8901 = uitofp i32 %8900 to float
  %8902 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8890, float %8891, float %8901, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8903 = extractvalue %dx.types.ResRet.f32 %8902, 0
  %8904 = extractvalue %dx.types.ResRet.f32 %8902, 1
  %8905 = extractvalue %dx.types.ResRet.f32 %8902, 2
  %8906 = extractvalue %dx.types.ResRet.f32 %8902, 3
  %8907 = call float @dx.op.binary.f32(i32 35, float %8897, float %8898)  ; FMax(a,b)
  %8908 = call float @dx.op.binary.f32(i32 35, float %8896, float %8907)  ; FMax(a,b)
  %8909 = call float @dx.op.binary.f32(i32 35, float %8908, float %8899)  ; FMax(a,b)
  %8910 = call float @dx.op.binary.f32(i32 36, float %8904, float %8905)  ; FMin(a,b)
  %8911 = call float @dx.op.binary.f32(i32 36, float %8903, float %8910)  ; FMin(a,b)
  %8912 = call float @dx.op.binary.f32(i32 36, float %8911, float %8906)  ; FMin(a,b)
  %8913 = fmul fast float %8909, 2.550000e+02
  %8914 = fadd fast float %8913, 0x3F70101020000000
  %8915 = fptoui float %8914 to i32
  %8916 = fmul fast float %8912, 2.550000e+02
  %8917 = fadd fast float %8916, 0x3F70101020000000
  %8918 = fptoui float %8917 to i32
  %8919 = icmp ult i32 %8915, %8918
  br i1 %8919, label %8920, label %9089

; <label>:8920                                    ; preds = %8877
  %8921 = fcmp fast ogt float %85, 9.843750e-01
  %8922 = fadd fast float %7715, -4.000000e+00
  %8923 = select i1 %8921, float -4.000000e+00, float %8922
  %8924 = call float @dx.op.binary.f32(i32 35, float %8923, float 0.000000e+00)  ; FMax(a,b)
  %8925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8926 = extractvalue %dx.types.CBufRet.f32 %8925, 0
  %8927 = fadd fast float %8926, %8924
  %8928 = extractvalue %dx.types.CBufRet.f32 %8925, 2
  %8929 = fmul fast float %8927, %8928
  %8930 = call float @dx.op.unary.f32(i32 23, float %8929)  ; Log(value)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8925, 3
  %8932 = fmul fast float %8931, %8930
  %8933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8934 = extractvalue %dx.types.CBufRet.f32 %8933, 2
  %8935 = fmul fast float %8932, %8934
  %8936 = call float @dx.op.unary.f32(i32 7, float %8935)  ; Saturate(value)
  %8937 = uitofp i32 %8915 to float
  %8938 = uitofp i32 %8918 to float
  %8939 = fadd fast float %8937, 5.000000e-01
  %8940 = fadd fast float %8938, 5.000000e-01
  %8941 = fmul fast float %8934, %8939
  %8942 = fmul fast float %8934, %8940
  %8943 = fadd fast float %8941, 0x3F0FFB4800000000
  %8944 = fadd fast float %8942, 0xBF0FFB4800000000
  %8945 = call float @dx.op.binary.f32(i32 35, float %8936, float %8943)  ; FMax(a,b)
  %8946 = call float @dx.op.binary.f32(i32 36, float %8945, float %8944)  ; FMin(a,b)
  %8947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8948 = extractvalue %dx.types.CBufRet.f32 %8947, 1
  %8949 = extractvalue %dx.types.CBufRet.f32 %8947, 2
  %8950 = extractvalue %dx.types.CBufRet.f32 %8947, 0
  %8951 = select i1 %7453, float %8950, float 0.000000e+00
  %8952 = fmul fast float %8948, %8946
  %8953 = fadd fast float %8951, %8952
  %8954 = fadd fast float %8951, %8949
  %8955 = fsub fast float %8948, %8949
  %8956 = fadd fast float %8955, %8951
  %8957 = call float @dx.op.binary.f32(i32 35, float %8953, float %8954)  ; FMax(a,b)
  %8958 = call float @dx.op.binary.f32(i32 36, float %8957, float %8956)  ; FMin(a,b)
  %8959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8890, float %8891, float %8958, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8960 = extractvalue %dx.types.ResRet.f32 %8959, 0
  %8961 = extractvalue %dx.types.ResRet.f32 %8959, 1
  %8962 = extractvalue %dx.types.ResRet.f32 %8959, 2
  %8963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8964 = extractvalue %dx.types.CBufRet.i32 %8963, 0
  %8965 = extractvalue %dx.types.CBufRet.i32 %8963, 1
  %8966 = uitofp i32 %8964 to float
  %8967 = uitofp i32 %8965 to float
  %8968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8969 = extractvalue %dx.types.CBufRet.f32 %8968, 0
  %8970 = extractvalue %dx.types.CBufRet.f32 %8968, 1
  %8971 = fmul fast float %8966, %8890
  %8972 = fmul fast float %8967, %8891
  %8973 = fadd fast float %8971, -5.000000e-01
  %8974 = fadd fast float %8972, -5.000000e-01
  %8975 = call float @dx.op.unary.f32(i32 22, float %8973)  ; Frc(value)
  %8976 = call float @dx.op.unary.f32(i32 22, float %8974)  ; Frc(value)
  %8977 = fmul fast float %8975, %8975
  %8978 = fmul fast float %8977, %8975
  %8979 = fsub fast float 3.000000e+00, %8975
  %8980 = fmul fast float %8977, %8979
  %8981 = fmul fast float %8975, 3.000000e+00
  %8982 = fmul fast float %8978, 3.000000e+00
  %8983 = fmul fast float %8977, 6.000000e+00
  %8984 = fsub fast float %8982, %8983
  %8985 = fadd fast float %8984, 4.000000e+00
  %8986 = fmul fast float %8985, 0x3FC5555560000000
  %8987 = fmul fast float %8978, -3.000000e+00
  %8988 = fadd fast float %8977, %8975
  %8989 = fmul fast float %8988, 3.000000e+00
  %8990 = fadd fast float %8987, 1.000000e+00
  %8991 = fadd fast float %8990, %8989
  %8992 = fmul fast float %8978, 0x3FC5555560000000
  %8993 = fmul fast float %8976, %8976
  %8994 = fmul fast float %8993, %8976
  %8995 = fsub fast float 3.000000e+00, %8976
  %8996 = fmul fast float %8993, %8995
  %8997 = fmul fast float %8976, 3.000000e+00
  %8998 = fmul fast float %8994, 3.000000e+00
  %8999 = fmul fast float %8993, 6.000000e+00
  %9000 = fsub fast float %8998, %8999
  %9001 = fadd fast float %9000, 4.000000e+00
  %9002 = fmul fast float %9001, 0x3FC5555560000000
  %9003 = fmul fast float %8994, -3.000000e+00
  %9004 = fadd fast float %8993, %8976
  %9005 = fmul fast float %9004, 3.000000e+00
  %9006 = fadd fast float %9003, 1.000000e+00
  %9007 = fadd fast float %9006, %9005
  %9008 = fmul fast float %8994, 0x3FC5555560000000
  %9009 = fadd fast float %8975, 1.000000e+00
  %9010 = fsub fast float 1.000000e+00, %8981
  %9011 = fadd fast float %9010, %8980
  %9012 = fadd fast float %9011, %8985
  %9013 = fmul fast float %9012, 0x3FC5555560000000
  %9014 = fdiv fast float %8986, %9013
  %9015 = fsub fast float %9009, %9014
  %9016 = fsub fast float 1.000000e+00, %8975
  %9017 = fadd fast float %8991, %8978
  %9018 = fmul fast float %9017, 0x3FC5555560000000
  %9019 = fdiv fast float %8992, %9018
  %9020 = fadd fast float %9016, %9019
  %9021 = fadd fast float %8976, 1.000000e+00
  %9022 = fsub fast float 1.000000e+00, %8997
  %9023 = fadd fast float %9022, %8996
  %9024 = fadd fast float %9023, %9001
  %9025 = fmul fast float %9024, 0x3FC5555560000000
  %9026 = fdiv fast float %9002, %9025
  %9027 = fsub fast float %9021, %9026
  %9028 = fsub fast float 1.000000e+00, %8976
  %9029 = fadd fast float %9007, %8994
  %9030 = fmul fast float %9029, 0x3FC5555560000000
  %9031 = fdiv fast float %9008, %9030
  %9032 = fadd fast float %9031, %9028
  %9033 = fmul fast float %9015, %8969
  %9034 = fsub fast float %8890, %9033
  %9035 = fmul fast float %9020, %8969
  %9036 = fadd fast float %9035, %8890
  %9037 = fmul fast float %9032, %8970
  %9038 = fadd fast float %9037, %8891
  %9039 = fmul fast float %9027, %8970
  %9040 = fsub fast float %8891, %9039
  %9041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9034, float %9040, float %8958, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9042 = extractvalue %dx.types.ResRet.f32 %9041, 0
  %9043 = extractvalue %dx.types.ResRet.f32 %9041, 1
  %9044 = extractvalue %dx.types.ResRet.f32 %9041, 2
  %9045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9036, float %9040, float %8958, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9046 = extractvalue %dx.types.ResRet.f32 %9045, 0
  %9047 = extractvalue %dx.types.ResRet.f32 %9045, 1
  %9048 = extractvalue %dx.types.ResRet.f32 %9045, 2
  %9049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9034, float %9038, float %8958, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9050 = extractvalue %dx.types.ResRet.f32 %9049, 0
  %9051 = extractvalue %dx.types.ResRet.f32 %9049, 1
  %9052 = extractvalue %dx.types.ResRet.f32 %9049, 2
  %9053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9036, float %9038, float %8958, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9054 = extractvalue %dx.types.ResRet.f32 %9053, 0
  %9055 = extractvalue %dx.types.ResRet.f32 %9053, 1
  %9056 = extractvalue %dx.types.ResRet.f32 %9053, 2
  %9057 = fsub fast float %9050, %9042
  %9058 = fsub fast float %9051, %9043
  %9059 = fsub fast float %9052, %9044
  %9060 = fmul fast float %9057, %9030
  %9061 = fmul fast float %9058, %9030
  %9062 = fmul fast float %9059, %9030
  %9063 = fadd fast float %9060, %9042
  %9064 = fadd fast float %9061, %9043
  %9065 = fadd fast float %9062, %9044
  %9066 = fsub fast float %9054, %9046
  %9067 = fsub fast float %9055, %9047
  %9068 = fsub fast float %9056, %9048
  %9069 = fmul fast float %9066, %9030
  %9070 = fmul fast float %9067, %9030
  %9071 = fmul fast float %9068, %9030
  %9072 = fsub fast float %9046, %9063
  %9073 = fadd fast float %9072, %9069
  %9074 = fsub fast float %9047, %9064
  %9075 = fadd fast float %9074, %9070
  %9076 = fsub fast float %9048, %9065
  %9077 = fadd fast float %9076, %9071
  %9078 = fmul fast float %9073, %9018
  %9079 = fmul fast float %9075, %9018
  %9080 = fmul fast float %9077, %9018
  %9081 = fadd fast float %9078, %9063
  %9082 = fadd fast float %9079, %9064
  %9083 = fadd fast float %9080, %9065
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9086 = fmul fast float %9081, %9085
  %9087 = fmul fast float %9082, %9085
  %9088 = fmul fast float %9083, %9085
  br label %9089

; <label>:9089                                    ; preds = %8920, %8877
  %9090 = phi float [ %8960, %8920 ], [ 1.000000e+00, %8877 ]
  %9091 = phi float [ %8961, %8920 ], [ 1.000000e+00, %8877 ]
  %9092 = phi float [ %8962, %8920 ], [ 1.000000e+00, %8877 ]
  %9093 = phi float [ %9086, %8920 ], [ 0.000000e+00, %8877 ]
  %9094 = phi float [ %9087, %8920 ], [ 0.000000e+00, %8877 ]
  %9095 = phi float [ %9088, %8920 ], [ 0.000000e+00, %8877 ]
  %9096 = fmul fast float %9093, %7431
  %9097 = fmul fast float %9094, %7431
  %9098 = fmul fast float %9095, %7431
  %9099 = fmul fast float %9090, %8884
  %9100 = call float @dx.op.dot3.f32(i32 55, float %9090, float %9091, float %9092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9101 = call float @dx.op.dot3.f32(i32 55, float %9096, float %9097, float %9098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9102 = select i1 %220, float %9100, float %9090
  %9103 = select i1 %220, float %9100, float %9091
  %9104 = select i1 %220, float 1.000000e+00, float %9092
  %9105 = select i1 %220, float %9101, float %9096
  %9106 = select i1 %220, float 0.000000e+00, float %9097
  %9107 = select i1 %220, float 0.000000e+00, float %9098
  %9108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9109 = extractvalue %dx.types.CBufRet.i32 %9108, 3
  %9110 = and i32 %9109, 3
  %9111 = icmp ne i32 %9110, 0
  %9112 = and i32 %9109, 4
  %9113 = icmp ne i32 %9112, 0
  %9114 = and i1 %9111, %9113
  %9115 = and i1 %220, %9114
  br i1 %9115, label %9116, label %9122

; <label>:9116                                    ; preds = %9089
  %9117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9118 = extractvalue %dx.types.CBufRet.f32 %9117, 1
  %9119 = fadd fast float %9099, -1.000000e+00
  %9120 = fmul fast float %9118, %9119
  %9121 = fadd fast float %9120, 1.000000e+00
  br label %9122

; <label>:9122                                    ; preds = %9116, %9089
  %9123 = phi float [ %9121, %9116 ], [ %9099, %9089 ]
  %9124 = fadd fast float %8881, %8878
  %9125 = fmul fast float %9102, %9124
  %9126 = fadd fast float %9125, %9105
  %9127 = fadd fast float %8882, %8879
  %9128 = fmul fast float %9103, %9127
  %9129 = fadd fast float %9128, %9106
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 0
  br i1 %220, label %9132, label %9156

; <label>:9132                                    ; preds = %9122
  %9133 = fadd fast float %9126, %9129
  %9134 = fmul fast float %9131, %9133
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 3
  %9137 = extractvalue %dx.types.CBufRet.f32 %7435, 1
  %9138 = fsub fast float %7440, %7434
  %9139 = fadd fast float %9138, %7441
  %9140 = fsub fast float %9139, %9137
  %9141 = extractvalue %dx.types.CBufRet.f32 %7435, 2
  %9142 = fmul fast float %9140, %9141
  %9143 = call float @dx.op.unary.f32(i32 7, float %9142)  ; Saturate(value)
  %9144 = fsub fast float %9143, %9136
  %9145 = fmul fast float %9144, %9123
  %9146 = fadd fast float %9145, %9136
  %9147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9148 = extractvalue %dx.types.CBufRet.f32 %9147, 0
  %9149 = fsub fast float %9146, %9148
  %9150 = fmul fast float %9149, 1.000000e+01
  %9151 = call float @dx.op.unary.f32(i32 7, float %9150)  ; Saturate(value)
  %9152 = fsub fast float %4827, %7431
  %9153 = fmul fast float %9151, %9152
  %9154 = fadd fast float %9153, %7431
  %9155 = fmul fast float %9154, %9146
  br label %9180

; <label>:9156                                    ; preds = %9122
  %9157 = fadd fast float %8883, %8880
  %9158 = fmul fast float %9104, %9157
  %9159 = fadd fast float %9158, %9107
  %9160 = fmul fast float %9131, %9126
  %9161 = fmul fast float %9131, %9129
  %9162 = fmul fast float %9131, %9159
  %9163 = call float @dx.op.binary.f32(i32 35, float %9161, float %9162)  ; FMax(a,b)
  %9164 = call float @dx.op.binary.f32(i32 35, float %9160, float %9163)  ; FMax(a,b)
  %9165 = call float @dx.op.binary.f32(i32 35, float %9164, float %7431)  ; FMax(a,b)
  %9166 = fcmp fast ugt float %9165, 0x3F10000000000000
  br i1 %9166, label %9168, label %9167

; <label>:9167                                    ; preds = %9156
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9168

; <label>:9168                                    ; preds = %9167, %9156
  %9169 = add i32 %54, 356
  %9170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9169, i32 undef)  ; BufferLoad(srv,index,wot)
  %9171 = extractvalue %dx.types.ResRet.i32 %9170, 0
  %9172 = and i32 %9171, 32
  %9173 = icmp eq i32 %9172, 0
  br i1 %9173, label %9180, label %9174

; <label>:9174                                    ; preds = %9168
  %9175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9176 = extractvalue %dx.types.CBufRet.f32 %9175, 0
  %9177 = fmul fast float %9176, 0x3FE99999A0000000
  %9178 = fadd fast float %9176, %9160
  %9179 = fadd fast float %9177, %9162
  br label %9180

; <label>:9180                                    ; preds = %9174, %9168, %9132
  %9181 = phi float [ %9134, %9132 ], [ %9178, %9174 ], [ %9160, %9168 ]
  %9182 = phi float [ %9155, %9132 ], [ %9161, %9174 ], [ %9161, %9168 ]
  %9183 = phi float [ %9154, %9132 ], [ %9179, %9174 ], [ %9162, %9168 ]
  %9184 = phi float [ %9154, %9132 ], [ %7431, %9174 ], [ %7431, %9168 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9185 = call float @dx.op.binary.f32(i32 36, float %9181, float 3.225500e+04)  ; FMin(a,b)
  %9186 = call float @dx.op.binary.f32(i32 36, float %9182, float 3.225500e+04)  ; FMin(a,b)
  %9187 = call float @dx.op.binary.f32(i32 36, float %9183, float 3.225500e+04)  ; FMin(a,b)
  %9188 = call float @dx.op.binary.f32(i32 36, float %9184, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9185)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9186)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9187)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9188)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !90}
!70 = !{!71, !88, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !87}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 1, i8 0, !74}
!76 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 2, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 5, i8 0, !79}
!82 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!83 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 7, i8 0, !77}
!84 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 8, i8 0, !74}
!85 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 9, i8 0, !86}
!86 = !{i32 3, i32 13}
!87 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!90 = !{i32 0, i64 16}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!101, !103, !105, !107}
!101 = distinct !{!101, !102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!102 = distinct !{!102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!106 = distinct !{!106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = !{!121, !121, i64 0}
!121 = !{!"float", !98, i64 0}
!122 = !{!123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!123 = distinct !{!123, !124, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!124 = distinct !{!124, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!125 = distinct !{!125, !126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!126 = distinct !{!126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!127 = distinct !{!127, !126, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!128 = distinct !{!128, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!129 = distinct !{!129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!130 = distinct !{!130, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!131 = distinct !{!131, !129, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!137 = distinct !{!137, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"\01?sort@@YAXAIAM00@Z: %c"}
!140 = distinct !{!140, !"\01?sort@@YAXAIAM00@Z"}
!141 = !{!142, !143, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!142 = distinct !{!142, !140, !"\01?sort@@YAXAIAM00@Z: %a"}
!143 = distinct !{!143, !140, !"\01?sort@@YAXAIAM00@Z: %b"}
!144 = !{!143}
!145 = !{!142, !139, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!146 = !{!142}
!147 = !{!143, !139, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!148 = !{!149}
!149 = distinct !{!149, !150, !"\01?sort@@YAXAIAM00@Z: %c"}
!150 = distinct !{!150, !"\01?sort@@YAXAIAM00@Z"}
!151 = !{!152, !153, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!152 = distinct !{!152, !150, !"\01?sort@@YAXAIAM00@Z: %a"}
!153 = distinct !{!153, !150, !"\01?sort@@YAXAIAM00@Z: %b"}
!154 = !{!153}
!155 = !{!152, !149, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!156 = !{!152}
!157 = !{!153, !149, !123, !125, !127, !128, !130, !131, !132, !134, !135, !136}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 2}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}

