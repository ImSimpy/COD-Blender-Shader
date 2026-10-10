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
; shader hash: 8391f5c67fa02396a10ffc52cf210e92
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
  br i1 %470, label %1120, label %471

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
  %690 = add i32 %54, 440
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
  %742 = add i32 %54, 424
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
  %766 = add i32 %54, 376
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
  %789 = add i32 %54, 456
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
  %987 = add i32 %54, 392
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
  %1071 = add i32 %54, 408
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
  %1107 = add i32 %54, 96
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = lshr i32 %1109, 8
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = call float @dx.op.dot3.f32(i32 55, float %976, float %977, float %978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = fmul fast float %1114, %1115
  %1117 = fadd fast float %1116, %1111
  %1118 = fmul fast float %1117, 0x3F70101020000000
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  br label %1120

; <label>:1120                                    ; preds = %1103, %456
  %1121 = phi float [ 0.000000e+00, %456 ], [ %1057, %1103 ]
  %1122 = phi float [ 0.000000e+00, %456 ], [ %1058, %1103 ]
  %1123 = phi float [ 0.000000e+00, %456 ], [ %976, %1103 ]
  %1124 = phi float [ 0.000000e+00, %456 ], [ %977, %1103 ]
  %1125 = phi float [ 0.000000e+00, %456 ], [ %978, %1103 ]
  %1126 = phi float [ 0.000000e+00, %456 ], [ %1104, %1103 ]
  %1127 = phi float [ 0.000000e+00, %456 ], [ %1105, %1103 ]
  %1128 = phi float [ 0.000000e+00, %456 ], [ %1106, %1103 ]
  %1129 = phi float [ 0.000000e+00, %456 ], [ %962, %1103 ]
  %1130 = phi float [ 0.000000e+00, %456 ], [ %758, %1103 ]
  %1131 = phi float [ 0.000000e+00, %456 ], [ %1056, %1103 ]
  %1132 = phi float [ 0.000000e+00, %456 ], [ %1059, %1103 ]
  %1133 = phi float [ 0.000000e+00, %456 ], [ %1119, %1103 ]
  br i1 %404, label %1975, label %1134

; <label>:1134                                    ; preds = %1120
  %1135 = icmp ult i32 %462, 2
  %1136 = add i32 %54, 40
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = add i32 %54, 44
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = or i32 %1141, %1138
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1975, label %1144

; <label>:1144                                    ; preds = %1134
  %1145 = and i32 %1138, 262144
  %1146 = icmp ne i32 %1145, 0
  %1147 = select i1 %1146, float %57, float 1.000000e+00
  %1148 = select i1 %1146, float %58, float 0.000000e+00
  %1149 = select i1 %1146, float %59, float 0.000000e+00
  %1150 = select i1 %1146, float %60, float 1.000000e+00
  %1151 = select i1 %1146, float %61, float %77
  %1152 = select i1 %1146, float %62, float %78
  %1153 = add i32 %54, 300
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = lshr i32 %1155, 16
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = fmul fast float %1157, 0x3F50624DE0000000
  %1159 = add i32 %54, 104
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = lshr i32 %1161, 16
  %1163 = and i32 %1162, 255
  %1164 = lshr i32 %1161, 24
  %1165 = add i32 %54, 308
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = and i32 %1167, 65535
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = lshr i32 %1167, 16
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = add i32 %54, 48
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = lshr i32 %1174, 22
  %1176 = shl nuw nsw i32 %1175, 5
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = shl i32 %1174, 4
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1174, 7
  %1182 = and i32 %1181, 32752
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1186 = fmul fast float %1185, 1.000000e+03
  %1187 = fmul fast float %314, %1186
  %1188 = call float @dx.op.unary.f32(i32 22, float %1187)  ; Frc(value)
  %1189 = fadd fast float %1188, %304
  %1190 = fmul fast float %315, %1186
  %1191 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1192 = fadd fast float %1191, %306
  %1193 = fmul fast float %1158, %1186
  %1194 = call float @dx.op.unary.f32(i32 22, float %1193)  ; Frc(value)
  %1195 = fmul fast float %1194, 0x401921FB60000000
  %1196 = fadd fast float %1195, %1177
  %1197 = call float @dx.op.unary.f32(i32 13, float %1196)  ; Sin(value)
  %1198 = call float @dx.op.unary.f32(i32 12, float %1196)  ; Cos(value)
  %1199 = fsub fast float -0.000000e+00, %1197
  %1200 = fadd fast float %1151, -5.000000e-01
  %1201 = fadd fast float %1152, -5.000000e-01
  %1202 = fmul fast float %1169, %1200
  %1203 = fmul fast float %1171, %1201
  %1204 = fadd fast float %1202, 5.000000e-01
  %1205 = fadd fast float %1203, 5.000000e-01
  %1206 = fmul fast float %1180, %1204
  %1207 = fmul fast float %1183, %1205
  %1208 = fmul fast float %1198, %1206
  %1209 = call float @dx.op.tertiary.f32(i32 46, float %1199, float %1207, float %1208)  ; FMad(a,b,c)
  %1210 = fmul fast float %1197, %1206
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %1198, float %1207, float %1210)  ; FMad(a,b,c)
  %1212 = fadd fast float %1189, %1209
  %1213 = fadd fast float %1192, %1211
  %1214 = icmp ugt i32 %1163, 1
  %1215 = icmp ugt i32 %1161, 33554431
  %1216 = or i1 %1215, %1214
  br i1 %1216, label %1217, label %1242

; <label>:1217                                    ; preds = %1144
  %1218 = add i32 %54, 244
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = lshr i32 %1220, 16
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = fmul fast float %1185, %1222
  %1224 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1225 = mul nuw nsw i32 %1163, %1164
  %1226 = uitofp i32 %1225 to float
  %1227 = fmul fast float %1224, %1226
  %1228 = call float @dx.op.unary.f32(i32 27, float %1227)  ; Round_ni(value)
  %1229 = fptoui float %1228 to i32
  %1230 = urem i32 %1229, %1163
  %1231 = udiv i32 %1229, %1164
  %1232 = call float @dx.op.unary.f32(i32 22, float %1212)  ; Frc(value)
  %1233 = call float @dx.op.unary.f32(i32 22, float %1213)  ; Frc(value)
  %1234 = uitofp i32 %1230 to float
  %1235 = uitofp i32 %1231 to float
  %1236 = fadd fast float %1232, %1234
  %1237 = fadd fast float %1233, %1235
  %1238 = uitofp i32 %1163 to float
  %1239 = uitofp i32 %1164 to float
  %1240 = fdiv fast float %1236, %1238
  %1241 = fdiv fast float %1237, %1239
  br label %1242

; <label>:1242                                    ; preds = %1217, %1144
  %1243 = phi float [ %1240, %1217 ], [ %1212, %1144 ]
  %1244 = phi float [ %1241, %1217 ], [ %1213, %1144 ]
  %1245 = and i32 %1138, 16777216
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1356, label %1247

; <label>:1247                                    ; preds = %1242
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.CBufRet.f32 %1248, 2
  %1252 = fadd fast float %1249, %158
  %1253 = fadd fast float %1250, %159
  %1254 = fadd fast float %1251, %160
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1258 = icmp eq i32 %55, 65535
  br i1 %1258, label %1353, label %1259

; <label>:1259                                    ; preds = %1247
  %1260 = lshr i32 %55, 1
  %1261 = shl i32 %1260, 2
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %55, 1
  %1265 = icmp ne i32 %1264, 0
  %1266 = lshr i32 %1263, 16
  %1267 = and i32 %1263, 65535
  %1268 = select i1 %1265, i32 %1266, i32 %1267
  %1269 = icmp eq i32 %1268, 65535
  br i1 %1269, label %1349, label %1270

; <label>:1270                                    ; preds = %1259
  %1271 = mul nuw nsw i32 %1268, 40
  %1272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  %1274 = extractvalue %dx.types.ResRet.f32 %1272, 1
  %1275 = extractvalue %dx.types.ResRet.f32 %1272, 2
  %1276 = add nuw nsw i32 %1271, 12
  %1277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1277, 2
  %1281 = add nuw nsw i32 %1271, 24
  %1282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = add nuw nsw i32 %1271, 36
  %1287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = fsub fast float %1252, %1273
  %1290 = fsub fast float %1253, %1274
  %1291 = fsub fast float %1254, %1275
  %1292 = fmul fast float %1288, %1289
  %1293 = fmul fast float %1288, %1290
  %1294 = fmul fast float %1288, %1291
  %1295 = call float @dx.op.unary.f32(i32 27, float %1292)  ; Round_ni(value)
  %1296 = call float @dx.op.unary.f32(i32 27, float %1293)  ; Round_ni(value)
  %1297 = call float @dx.op.unary.f32(i32 27, float %1294)  ; Round_ni(value)
  %1298 = fadd fast float %1295, 5.000000e-01
  %1299 = fadd fast float %1296, 5.000000e-01
  %1300 = fadd fast float %1297, 5.000000e-01
  %1301 = fmul fast float %1298, %1278
  %1302 = fmul fast float %1299, %1279
  %1303 = fmul fast float %1300, %1280
  %1304 = shl i32 %55, 2
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = add i32 %1306, 0
  %1308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1309 = call float @dx.op.unary.f32(i32 22, float %1301)  ; Frc(value)
  %1310 = call float @dx.op.unary.f32(i32 22, float %1302)  ; Frc(value)
  %1311 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1308, %dx.types.Handle %49, float %1309, float %1310, float %1311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.ResRet.f32 %1312, 1
  %1315 = extractvalue %dx.types.ResRet.f32 %1312, 2
  %1316 = fmul fast float %1313, 1.023000e+03
  %1317 = fmul fast float %1314, 1.023000e+03
  %1318 = fmul fast float %1315, 1.023000e+03
  %1319 = fadd fast float %1316, 5.000000e-01
  %1320 = fadd fast float %1317, 5.000000e-01
  %1321 = fadd fast float %1318, 5.000000e-01
  %1322 = call float @dx.op.unary.f32(i32 27, float %1319)  ; Round_ni(value)
  %1323 = call float @dx.op.unary.f32(i32 27, float %1320)  ; Round_ni(value)
  %1324 = call float @dx.op.unary.f32(i32 27, float %1321)  ; Round_ni(value)
  %1325 = fsub fast float %1292, %1295
  %1326 = fsub fast float %1293, %1296
  %1327 = fsub fast float %1294, %1297
  %1328 = fmul fast float %1325, 7.500000e-01
  %1329 = fmul fast float %1326, 7.500000e-01
  %1330 = fmul fast float %1327, 7.500000e-01
  %1331 = fadd fast float %1295, 1.250000e-01
  %1332 = fadd fast float %1331, %1328
  %1333 = fadd fast float %1332, %1322
  %1334 = fadd fast float %1296, 1.250000e-01
  %1335 = fadd fast float %1334, %1329
  %1336 = fadd fast float %1335, %1323
  %1337 = fadd fast float %1297, 1.250000e-01
  %1338 = fadd fast float %1337, %1330
  %1339 = fadd fast float %1338, %1324
  %1340 = fmul fast float %1333, %1283
  %1341 = fmul fast float %1336, %1284
  %1342 = fmul fast float %1339, %1285
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1344, 0
  %1346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1346, %dx.types.Handle %47, float %1340, float %1341, float %1342, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  br label %1349

; <label>:1349                                    ; preds = %1270, %1259
  %1350 = phi float [ %1348, %1270 ], [ -1.000000e+00, %1259 ]
  %1351 = fadd fast float %1350, %1257
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  br label %1353

; <label>:1353                                    ; preds = %1349, %1247
  %1354 = phi float [ %1352, %1349 ], [ %1257, %1247 ]
  %1355 = fmul fast float %1354, %459
  br label %1356

; <label>:1356                                    ; preds = %1353, %1242
  %1357 = phi float [ %1355, %1353 ], [ %459, %1242 ]
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = and i32 %1359, 256
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1408, label %1362

; <label>:1362                                    ; preds = %1356
  %1363 = add i32 %54, 444
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = add i32 %1365, 0
  %1367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1367, %dx.types.Handle %92, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = add i32 %54, 116
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = shl i32 %1372, 4
  %1374 = and i32 %1373, 32752
  %1375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1374)  ; LegacyF16ToF32(value)
  %1376 = lshr i32 %1372, 7
  %1377 = and i32 %1376, 32752
  %1378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1377)  ; LegacyF16ToF32(value)
  %1379 = fsub fast float 1.000000e+00, %1357
  %1380 = call float @dx.op.binary.f32(i32 35, float %1379, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1381 = bitcast float %1357 to i32
  %1382 = sitofp i32 %1381 to float
  %1383 = fadd fast float %1382, 0xC1CFBF8940000000
  %1384 = fmul fast float %1378, %1383
  %1385 = fadd fast float %1384, 0x41CFBF8940000000
  %1386 = fptosi float %1385 to i32
  %1387 = bitcast i32 %1386 to float
  %1388 = bitcast float %1380 to i32
  %1389 = sitofp i32 %1388 to float
  %1390 = fadd fast float %1389, 0xC1CFBF8940000000
  %1391 = fmul fast float %1390, %1378
  %1392 = fadd fast float %1391, 0x41CFBF8940000000
  %1393 = fptosi float %1392 to i32
  %1394 = bitcast i32 %1393 to float
  %1395 = fmul fast float %1387, %1375
  %1396 = fmul fast float %1394, %1375
  %1397 = fsub fast float %1380, %1395
  %1398 = fadd fast float %1396, %1380
  %1399 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1400 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1401 = fsub fast float %1369, %1399
  %1402 = fsub fast float %1400, %1399
  %1403 = bitcast float %1402 to i32
  %1404 = sub nsw i32 2129859010, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1405, %1401
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  br label %1408

; <label>:1408                                    ; preds = %1362, %1356
  %1409 = phi float [ %1407, %1362 ], [ %1357, %1356 ]
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = and i32 %1411, 128
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1430, label %1414

; <label>:1414                                    ; preds = %1408
  %1415 = add i32 %54, 428
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = add i32 %1417, 0
  %1419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1419, %dx.types.Handle %92, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = and i32 %1423, 524288
  %1425 = icmp ne i32 %1424, 0
  %1426 = fcmp fast ogt float %1421, 0x3FE0101020000000
  %1427 = select i1 %1426, float 1.000000e+00, float 0.000000e+00
  %1428 = select i1 %1425, float %1427, float %1421
  %1429 = fmul fast float %1428, %1409
  br label %1430

; <label>:1430                                    ; preds = %1414, %1408
  %1431 = phi float [ %1429, %1414 ], [ %1409, %1408 ]
  %1432 = fcmp fast ult float %1431, 0x3F70101020000000
  br i1 %1432, label %1975, label %1433

; <label>:1433                                    ; preds = %1430
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = and i32 %1435, 16
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1636, label %1438

; <label>:1438                                    ; preds = %1433
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = add i32 %54, 380
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = add i32 %1443, 0
  %1445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1445, %dx.types.Handle %91, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.ResRet.f32 %1446, 2
  %1450 = extractvalue %dx.types.ResRet.f32 %1446, 3
  %1451 = and i32 %1440, 255
  %1452 = uitofp i32 %1451 to float
  %1453 = lshr i32 %1440, 8
  %1454 = and i32 %1453, 255
  %1455 = uitofp i32 %1454 to float
  %1456 = fmul fast float %1450, %1452
  %1457 = fadd fast float %1456, %1455
  %1458 = fmul fast float %1457, 0x3F70101000000000
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 512
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1471, label %1463

; <label>:1463                                    ; preds = %1438
  %1464 = add i32 %54, 460
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %92, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  br label %1471

; <label>:1471                                    ; preds = %1463, %1438
  %1472 = phi float [ %1470, %1463 ], [ 1.000000e+00, %1438 ]
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 33554432
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1583, label %1477

; <label>:1477                                    ; preds = %1471
  %1478 = add i32 %54, 240
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 65535
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = lshr i32 %1480, 16
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = add i32 %54, 244
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 65535
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = lshr i32 %1491, 24
  %1493 = uitofp i32 %1492 to float
  %1494 = fmul fast float %1493, 0x3F70101020000000
  %1495 = and i32 %1491, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1496, 0x3F70101020000000
  %1498 = lshr i32 %1491, 8
  %1499 = and i32 %1498, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = fmul fast float %1500, 0x3F70101020000000
  %1502 = lshr i32 %1491, 16
  %1503 = and i32 %1502, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101020000000
  %1506 = add i32 %54, 236
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = lshr i32 %1508, 24
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1510, 0x3F70101020000000
  %1512 = and i32 %1508, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1508, 8
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = lshr i32 %1508, 16
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = bitcast float %1447 to i32
  %1524 = ashr i32 %1523, 1
  %1525 = sub nsw i32 1597463174, %1524
  %1526 = bitcast i32 %1525 to float
  %1527 = fmul fast float %1447, 5.000000e-01
  %1528 = fmul fast float %1526, %1526
  %1529 = fmul fast float %1528, %1527
  %1530 = fsub fast float 1.500000e+00, %1529
  %1531 = fmul fast float %1526, %1447
  %1532 = fmul fast float %1531, %1530
  %1533 = bitcast float %1448 to i32
  %1534 = ashr i32 %1533, 1
  %1535 = sub nsw i32 1597463174, %1534
  %1536 = bitcast i32 %1535 to float
  %1537 = fmul fast float %1448, 5.000000e-01
  %1538 = fmul fast float %1536, %1536
  %1539 = fmul fast float %1538, %1537
  %1540 = fsub fast float 1.500000e+00, %1539
  %1541 = fmul fast float %1536, %1448
  %1542 = fmul fast float %1541, %1540
  %1543 = bitcast float %1449 to i32
  %1544 = ashr i32 %1543, 1
  %1545 = sub nsw i32 1597463174, %1544
  %1546 = bitcast i32 %1545 to float
  %1547 = fmul fast float %1449, 5.000000e-01
  %1548 = fmul fast float %1546, %1546
  %1549 = fmul fast float %1548, %1547
  %1550 = fsub fast float 1.500000e+00, %1549
  %1551 = fmul fast float %1546, %1449
  %1552 = fmul fast float %1551, %1550
  %1553 = fsub fast float %1532, %1514
  %1554 = fsub fast float %1542, %1518
  %1555 = fsub fast float %1552, %1522
  %1556 = fmul fast float %1553, %1482
  %1557 = fmul fast float %1554, %1484
  %1558 = fmul fast float %1555, %1489
  %1559 = fadd fast float %1556, %1497
  %1560 = fadd fast float %1557, %1501
  %1561 = fadd fast float %1558, %1505
  %1562 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1563 = call float @dx.op.unary.f32(i32 7, float %1560)  ; Saturate(value)
  %1564 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1565 = fmul fast float %1562, %1562
  %1566 = fmul fast float %1563, %1563
  %1567 = fmul fast float %1564, %1564
  %1568 = fsub fast float %1565, %1447
  %1569 = fsub fast float %1566, %1448
  %1570 = fsub fast float %1567, %1449
  %1571 = fmul fast float %1568, %1472
  %1572 = fmul fast float %1569, %1472
  %1573 = fmul fast float %1570, %1472
  %1574 = fadd fast float %1571, %1447
  %1575 = fadd fast float %1572, %1448
  %1576 = fadd fast float %1573, %1449
  %1577 = fadd fast float %1494, %1458
  %1578 = fsub fast float %1577, %1511
  %1579 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  %1580 = fsub fast float %1579, %1458
  %1581 = fmul fast float %1580, %1472
  %1582 = fadd fast float %1581, %1458
  br label %1636

; <label>:1583                                    ; preds = %1471
  %1584 = and i32 %1474, 134217728
  %1585 = icmp eq i32 %1584, 0
  br i1 %1585, label %1620, label %1586

; <label>:1586                                    ; preds = %1583
  %1587 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1588 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1589 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1590 = fadd fast float %1587, -5.000000e-01
  %1591 = fadd fast float %1588, -5.000000e-01
  %1592 = fadd fast float %1589, -5.000000e-01
  %1593 = fmul fast float %1590, %1472
  %1594 = fmul fast float %1591, %1472
  %1595 = fmul fast float %1592, %1472
  %1596 = fadd fast float %1593, 5.000000e-01
  %1597 = fadd fast float %1594, 5.000000e-01
  %1598 = fadd fast float %1595, 5.000000e-01
  %1599 = call float @dx.op.unary.f32(i32 24, float %1447)  ; Sqrt(value)
  %1600 = call float @dx.op.unary.f32(i32 24, float %1448)  ; Sqrt(value)
  %1601 = call float @dx.op.unary.f32(i32 24, float %1449)  ; Sqrt(value)
  %1602 = fmul fast float %1596, 2.000000e+00
  %1603 = fsub fast float 1.000000e+00, %1602
  %1604 = fmul fast float %1603, %1599
  %1605 = fadd fast float %1604, %1602
  %1606 = fmul fast float %1605, %1599
  %1607 = fmul fast float %1597, 2.000000e+00
  %1608 = fsub fast float 1.000000e+00, %1607
  %1609 = fmul fast float %1608, %1600
  %1610 = fadd fast float %1609, %1607
  %1611 = fmul fast float %1610, %1600
  %1612 = fmul fast float %1598, 2.000000e+00
  %1613 = fsub fast float 1.000000e+00, %1612
  %1614 = fmul fast float %1613, %1601
  %1615 = fadd fast float %1614, %1612
  %1616 = fmul fast float %1615, %1601
  %1617 = fmul fast float %1606, %1606
  %1618 = fmul fast float %1611, %1611
  %1619 = fmul fast float %1616, %1616
  br label %1636

; <label>:1620                                    ; preds = %1583
  %1621 = fmul fast float %291, %291
  %1622 = fmul fast float %295, %295
  %1623 = fmul fast float %299, %299
  %1624 = fadd fast float %1621, -1.000000e+00
  %1625 = fadd fast float %1622, -1.000000e+00
  %1626 = fadd fast float %1623, -1.000000e+00
  %1627 = fmul fast float %1472, %1624
  %1628 = fmul fast float %1472, %1625
  %1629 = fmul fast float %1472, %1626
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fadd fast float %1628, 1.000000e+00
  %1632 = fadd fast float %1629, 1.000000e+00
  %1633 = fmul fast float %1630, %1447
  %1634 = fmul fast float %1631, %1448
  %1635 = fmul fast float %1632, %1449
  br label %1636

; <label>:1636                                    ; preds = %1620, %1586, %1477, %1433
  %1637 = phi float [ %1582, %1477 ], [ %1458, %1586 ], [ %1458, %1620 ], [ 0x3FA23C0BE0000000, %1433 ]
  %1638 = phi float [ %1574, %1477 ], [ %1617, %1586 ], [ %1633, %1620 ], [ 1.000000e+00, %1433 ]
  %1639 = phi float [ %1575, %1477 ], [ %1618, %1586 ], [ %1634, %1620 ], [ 1.000000e+00, %1433 ]
  %1640 = phi float [ %1576, %1477 ], [ %1619, %1586 ], [ %1635, %1620 ], [ 1.000000e+00, %1433 ]
  %1641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.i32 %1641, 1
  %1643 = and i32 %1642, 1
  %1644 = icmp ne i32 %1643, 0
  %1645 = add i32 %54, 356
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = and i32 %1647, 32
  %1649 = icmp ne i32 %1648, 0
  %1650 = and i1 %1644, %1649
  %1651 = select i1 %1650, float 1.000000e+00, float %1638
  %1652 = select i1 %1650, float 0x3FD3333340000000, float %1639
  %1653 = select i1 %1650, float 0x3FD3333340000000, float %1640
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 32
  %1657 = icmp eq i32 %1656, 0
  br i1 %1657, label %1730, label %1658

; <label>:1658                                    ; preds = %1636
  %1659 = add i32 %54, 108
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = add i32 %54, 396
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1662, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = add i32 %1664, 0
  %1666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1666, %dx.types.Handle %91, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1668 = extractvalue %dx.types.ResRet.f32 %1667, 0
  %1669 = extractvalue %dx.types.ResRet.f32 %1667, 1
  %1670 = extractvalue %dx.types.ResRet.f32 %1667, 2
  %1671 = extractvalue %dx.types.ResRet.f32 %1667, 3
  %1672 = and i32 %1661, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = lshr i32 %1661, 8
  %1675 = and i32 %1674, 255
  %1676 = uitofp i32 %1675 to float
  %1677 = lshr i32 %1661, 16
  %1678 = and i32 %1677, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = fmul fast float %1679, 0x3F70101000000000
  %1681 = fmul fast float %1668, %1673
  %1682 = fadd fast float %1681, %1676
  %1683 = fmul fast float %1682, 0x3F70101000000000
  %1684 = fadd fast float %1669, -5.000000e-01
  %1685 = fadd fast float %1671, -5.000000e-01
  %1686 = fmul fast float %1684, %1680
  %1687 = fmul fast float %1685, %1680
  %1688 = fadd fast float %1686, 5.000000e-01
  %1689 = fadd fast float %1687, 5.000000e-01
  %1690 = fmul fast float %1688, 2.000000e+00
  %1691 = fadd fast float %1690, -1.000000e+00
  %1692 = fmul fast float %1689, 2.000000e+00
  %1693 = fadd fast float %1692, -1.000000e+00
  %1694 = fadd fast float %1691, %1693
  %1695 = fmul fast float %1694, 5.000000e-01
  %1696 = fsub fast float %1691, %1693
  %1697 = fmul fast float %1696, 5.000000e-01
  %1698 = call float @dx.op.unary.f32(i32 6, float %1695)  ; FAbs(value)
  %1699 = fsub fast float 1.000000e+00, %1698
  %1700 = call float @dx.op.unary.f32(i32 6, float %1697)  ; FAbs(value)
  %1701 = fsub fast float %1699, %1700
  %1702 = call float @dx.op.dot3.f32(i32 55, float %1695, float %1697, float %1701, float %1695, float %1697, float %1701)  ; Dot3(ax,ay,az,bx,by,bz)
  %1703 = call float @dx.op.unary.f32(i32 25, float %1702)  ; Rsqrt(value)
  %1704 = fmul fast float %1695, %1703
  %1705 = fmul fast float %1697, %1703
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = and i32 %1707, 67108864
  %1709 = icmp eq i32 %1708, 0
  br i1 %1709, label %1726, label %1710

; <label>:1710                                    ; preds = %1658
  %1711 = add i32 %54, 296
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 65535
  %1715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1714)  ; LegacyF16ToF32(value)
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = and i32 %1717, 65535
  %1719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1718)  ; LegacyF16ToF32(value)
  %1720 = lshr i32 %1713, 16
  %1721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1720)  ; LegacyF16ToF32(value)
  %1722 = fsub fast float %1683, %1721
  %1723 = fmul fast float %1722, %1715
  %1724 = fadd fast float %1723, %1719
  %1725 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  br label %1726

; <label>:1726                                    ; preds = %1710, %1658
  %1727 = phi float [ %1725, %1710 ], [ %1683, %1658 ]
  %1728 = call float @dx.op.dot2.f32(i32 54, float %1704, float %1705, float %1147, float %1148)  ; Dot2(ax,ay,bx,by)
  %1729 = call float @dx.op.dot2.f32(i32 54, float %1704, float %1705, float %1149, float %1150)  ; Dot2(ax,ay,bx,by)
  br label %1730

; <label>:1730                                    ; preds = %1726, %1636
  %1731 = phi float [ %1727, %1726 ], [ 0x3FD6666660000000, %1636 ]
  %1732 = phi float [ %1728, %1726 ], [ 0.000000e+00, %1636 ]
  %1733 = phi float [ %1729, %1726 ], [ 0.000000e+00, %1636 ]
  %1734 = phi float [ %1670, %1726 ], [ 1.000000e+00, %1636 ]
  %1735 = add i32 %54, 176
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = lshr i32 %1737, 22
  %1739 = shl nuw nsw i32 %1738, 5
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = and i32 %1742, 64
  %1744 = icmp eq i32 %1743, 0
  br i1 %1744, label %1778, label %1745

; <label>:1745                                    ; preds = %1730
  %1746 = add i32 %54, 412
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = add i32 %1748, 0
  %1750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 131072
  %1754 = icmp eq i32 %1753, 0
  %1755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1750, %dx.types.Handle %91, float %1243, float %1244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = extractvalue %dx.types.ResRet.f32 %1755, 1
  %1758 = extractvalue %dx.types.ResRet.f32 %1755, 2
  %1759 = fmul fast float %1756, %279
  %1760 = fmul fast float %1757, %282
  %1761 = fmul fast float %1758, %285
  br i1 %1754, label %1768, label %1762

; <label>:1762                                    ; preds = %1745
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = fmul fast float %1764, %1759
  %1766 = fmul fast float %1764, %1760
  %1767 = fmul fast float %1764, %1761
  br label %1768

; <label>:1768                                    ; preds = %1762, %1745
  %1769 = phi float [ %1765, %1762 ], [ %1759, %1745 ]
  %1770 = phi float [ %1766, %1762 ], [ %1760, %1745 ]
  %1771 = phi float [ %1767, %1762 ], [ %1761, %1745 ]
  %1772 = fmul fast float %1769, %1740
  %1773 = select i1 %220, float %1772, float %1769
  %1774 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1770, float %1771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1775 = select i1 %220, float 0.000000e+00, float %1769
  %1776 = select i1 %220, float %1774, float %1770
  %1777 = select i1 %220, float 0.000000e+00, float %1771
  br label %1778

; <label>:1778                                    ; preds = %1768, %1730
  %1779 = phi float [ %1775, %1768 ], [ 0.000000e+00, %1730 ]
  %1780 = phi float [ %1776, %1768 ], [ 0.000000e+00, %1730 ]
  %1781 = phi float [ %1777, %1768 ], [ 0.000000e+00, %1730 ]
  %1782 = add i32 %54, 112
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 255
  %1786 = uitofp i32 %1785 to float
  %1787 = lshr i32 %1784, 8
  %1788 = and i32 %1787, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1651, float %1652, float %1653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = fmul fast float %1789, %1790
  %1792 = fadd fast float %1791, %1786
  %1793 = fmul fast float %1792, 0x3F70101020000000
  %1794 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  br i1 %1135, label %1795, label %1803

; <label>:1795                                    ; preds = %1778
  %1796 = fsub fast float 1.000000e+00, %1431
  %1797 = fmul fast float %1796, %1123
  %1798 = fmul fast float %1796, %1124
  %1799 = fmul fast float %1796, %1125
  %1800 = fmul fast float %1796, %1126
  %1801 = fmul fast float %1796, %1127
  %1802 = fmul fast float %1796, %1128
  br label %1803

; <label>:1803                                    ; preds = %1795, %1778
  %1804 = phi float [ %1797, %1795 ], [ %1123, %1778 ]
  %1805 = phi float [ %1798, %1795 ], [ %1124, %1778 ]
  %1806 = phi float [ %1799, %1795 ], [ %1125, %1778 ]
  %1807 = phi float [ %1800, %1795 ], [ %1126, %1778 ]
  %1808 = phi float [ %1801, %1795 ], [ %1127, %1778 ]
  %1809 = phi float [ %1802, %1795 ], [ %1128, %1778 ]
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = and i32 %1811, 3
  %1813 = icmp eq i32 %1812, 3
  br i1 %1813, label %1892, label %1814

; <label>:1814                                    ; preds = %1803
  %1815 = and i32 %1811, 16
  %1816 = icmp ne i32 %1815, 0
  %1817 = select i1 %1816, float %1431, float 0.000000e+00
  %1818 = icmp eq i32 %1812, 0
  br i1 %1818, label %1819, label %1847

; <label>:1819                                    ; preds = %1814
  %1820 = and i32 %1811, 64
  %1821 = icmp ne i32 %1820, 0
  %1822 = select i1 %1821, float %1431, float 0.000000e+00
  %1823 = fsub fast float %1651, %1804
  %1824 = fsub fast float %1652, %1805
  %1825 = fsub fast float %1653, %1806
  %1826 = fmul fast float %1817, %1823
  %1827 = fmul fast float %1817, %1824
  %1828 = fmul fast float %1817, %1825
  %1829 = fadd fast float %1826, %1804
  %1830 = fadd fast float %1827, %1805
  %1831 = fadd fast float %1828, %1806
  %1832 = fsub fast float %1637, %1129
  %1833 = fmul fast float %1817, %1832
  %1834 = fadd fast float %1833, %1129
  %1835 = fsub fast float %1779, %1807
  %1836 = fsub fast float %1780, %1808
  %1837 = fsub fast float %1781, %1809
  %1838 = fmul fast float %1822, %1835
  %1839 = fmul fast float %1822, %1836
  %1840 = fmul fast float %1822, %1837
  %1841 = fadd fast float %1838, %1807
  %1842 = fadd fast float %1839, %1808
  %1843 = fadd fast float %1840, %1809
  %1844 = fsub fast float %1794, %1133
  %1845 = fmul fast float %1817, %1844
  %1846 = fadd fast float %1845, %1133
  br label %1892

; <label>:1847                                    ; preds = %1814
  %1848 = icmp eq i32 %1812, 1
  br i1 %1848, label %1849, label %1862

; <label>:1849                                    ; preds = %1847
  %1850 = fadd fast float %1651, -1.000000e+00
  %1851 = fadd fast float %1652, -1.000000e+00
  %1852 = fadd fast float %1653, -1.000000e+00
  %1853 = fmul fast float %1817, %1850
  %1854 = fmul fast float %1817, %1851
  %1855 = fmul fast float %1817, %1852
  %1856 = fadd fast float %1853, 1.000000e+00
  %1857 = fadd fast float %1854, 1.000000e+00
  %1858 = fadd fast float %1855, 1.000000e+00
  %1859 = fmul fast float %1856, %1804
  %1860 = fmul fast float %1857, %1805
  %1861 = fmul fast float %1858, %1806
  br label %1892

; <label>:1862                                    ; preds = %1847
  %1863 = icmp eq i32 %1812, 2
  br i1 %1863, label %1864, label %1892

; <label>:1864                                    ; preds = %1862
  %1865 = call float @dx.op.unary.f32(i32 24, float %1651)  ; Sqrt(value)
  %1866 = call float @dx.op.unary.f32(i32 24, float %1652)  ; Sqrt(value)
  %1867 = call float @dx.op.unary.f32(i32 24, float %1653)  ; Sqrt(value)
  %1868 = fadd fast float %1865, -5.000000e-01
  %1869 = fadd fast float %1866, -5.000000e-01
  %1870 = fadd fast float %1867, -5.000000e-01
  %1871 = fmul fast float %1868, %1817
  %1872 = fmul fast float %1869, %1817
  %1873 = fmul fast float %1870, %1817
  %1874 = fadd fast float %1871, 5.000000e-01
  %1875 = fadd fast float %1872, 5.000000e-01
  %1876 = fadd fast float %1873, 5.000000e-01
  %1877 = fmul fast float %1874, 2.000000e+00
  %1878 = fsub fast float 1.000000e+00, %1877
  %1879 = fmul fast float %1878, %1804
  %1880 = fadd fast float %1879, %1877
  %1881 = fmul fast float %1880, %1804
  %1882 = fmul fast float %1875, 2.000000e+00
  %1883 = fsub fast float 1.000000e+00, %1882
  %1884 = fmul fast float %1883, %1805
  %1885 = fadd fast float %1884, %1882
  %1886 = fmul fast float %1885, %1805
  %1887 = fmul fast float %1876, 2.000000e+00
  %1888 = fsub fast float 1.000000e+00, %1887
  %1889 = fmul fast float %1888, %1806
  %1890 = fadd fast float %1889, %1887
  %1891 = fmul fast float %1890, %1806
  br label %1892

; <label>:1892                                    ; preds = %1864, %1862, %1849, %1819, %1803
  %1893 = phi float [ %1804, %1803 ], [ %1881, %1864 ], [ %1804, %1862 ], [ %1859, %1849 ], [ %1829, %1819 ]
  %1894 = phi float [ %1805, %1803 ], [ %1886, %1864 ], [ %1805, %1862 ], [ %1860, %1849 ], [ %1830, %1819 ]
  %1895 = phi float [ %1806, %1803 ], [ %1891, %1864 ], [ %1806, %1862 ], [ %1861, %1849 ], [ %1831, %1819 ]
  %1896 = phi float [ %1807, %1803 ], [ %1807, %1864 ], [ %1807, %1862 ], [ %1807, %1849 ], [ %1841, %1819 ]
  %1897 = phi float [ %1808, %1803 ], [ %1808, %1864 ], [ %1808, %1862 ], [ %1808, %1849 ], [ %1842, %1819 ]
  %1898 = phi float [ %1809, %1803 ], [ %1809, %1864 ], [ %1809, %1862 ], [ %1809, %1849 ], [ %1843, %1819 ]
  %1899 = phi float [ %1129, %1803 ], [ %1129, %1864 ], [ %1129, %1862 ], [ %1129, %1849 ], [ %1834, %1819 ]
  %1900 = phi float [ %1133, %1803 ], [ %1133, %1864 ], [ %1133, %1862 ], [ %1133, %1849 ], [ %1846, %1819 ]
  %1901 = and i32 %1811, 12
  %1902 = icmp eq i32 %1901, 12
  br i1 %1902, label %1975, label %1903

; <label>:1903                                    ; preds = %1892
  %1904 = and i32 %1811, 2097184
  %1905 = icmp eq i32 %1904, 2097184
  %1906 = select i1 %1905, float %1431, float 0.000000e+00
  %1907 = and i32 %1811, 4194336
  %1908 = icmp eq i32 %1907, 4194336
  %1909 = select i1 %1908, float %1431, float 0.000000e+00
  %1910 = and i32 %1811, 8388640
  %1911 = icmp eq i32 %1910, 8388640
  %1912 = select i1 %1911, float %1431, float 0.000000e+00
  %1913 = icmp eq i32 %1901, 0
  br i1 %1913, label %1914, label %1927

; <label>:1914                                    ; preds = %1903
  %1915 = fsub fast float %1732, %1121
  %1916 = fsub fast float %1733, %1122
  %1917 = fmul fast float %1906, %1915
  %1918 = fmul fast float %1906, %1916
  %1919 = fadd fast float %1917, %1121
  %1920 = fadd fast float %1918, %1122
  %1921 = fsub fast float %1734, %1132
  %1922 = fmul fast float %1909, %1921
  %1923 = fadd fast float %1922, %1132
  %1924 = fsub fast float %1731, %1131
  %1925 = fmul fast float %1912, %1924
  %1926 = fadd fast float %1925, %1131
  br label %1975

; <label>:1927                                    ; preds = %1903
  %1928 = icmp eq i32 %1901, 4
  br i1 %1928, label %1929, label %1961

; <label>:1929                                    ; preds = %1927
  %1930 = fmul fast float %1906, %1732
  %1931 = fmul fast float %1906, %1733
  %1932 = fadd fast float %1930, %1121
  %1933 = fadd fast float %1931, %1122
  %1934 = call float @dx.op.binary.f32(i32 36, float %1132, float %1734)  ; FMin(a,b)
  %1935 = fsub fast float %1934, %1132
  %1936 = fmul fast float %1935, %1909
  %1937 = fadd fast float %1936, %1132
  %1938 = fadd fast float %1731, %1131
  %1939 = fmul fast float %1938, 0x3FF337FAE0000000
  %1940 = fmul fast float %1131, %1131
  %1941 = fmul fast float %1731, %1731
  %1942 = fadd fast float %1941, %1940
  %1943 = fmul fast float %1942, 0x3FE5152B00000000
  %1944 = fmul fast float %1131, 0xBFCC1F85E0000000
  %1945 = fmul fast float %1944, %1731
  %1946 = fadd fast float %1945, 0xBFE1363700000000
  %1947 = fadd fast float %1946, %1939
  %1948 = fsub fast float %1947, %1943
  %1949 = fmul fast float %1938, 0x3FBA6F0D00000000
  %1950 = fmul fast float %1942, 0x3FD0432880000000
  %1951 = fmul fast float %1131, 0xBFEF110800000000
  %1952 = fmul fast float %1951, %1731
  %1953 = fadd fast float %1952, 1.000000e+00
  %1954 = fsub fast float %1953, %1949
  %1955 = fadd fast float %1954, %1950
  %1956 = fdiv fast float %1948, %1955
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = fsub fast float %1957, %1131
  %1959 = fmul fast float %1958, %1912
  %1960 = fadd fast float %1959, %1131
  br label %1975

; <label>:1961                                    ; preds = %1927
  %1962 = icmp eq i32 %1901, 8
  br i1 %1962, label %1963, label %1975

; <label>:1963                                    ; preds = %1961
  %1964 = fmul fast float %1906, %1732
  %1965 = fmul fast float %1906, %1733
  %1966 = fadd fast float %1964, %1121
  %1967 = fadd fast float %1965, %1122
  %1968 = call float @dx.op.binary.f32(i32 36, float %1132, float %1734)  ; FMin(a,b)
  %1969 = fsub fast float %1968, %1132
  %1970 = fmul fast float %1969, %1909
  %1971 = fadd fast float %1970, %1132
  %1972 = fsub fast float %1731, %1131
  %1973 = fmul fast float %1912, %1972
  %1974 = fadd fast float %1973, %1131
  br label %1975

; <label>:1975                                    ; preds = %1963, %1961, %1929, %1914, %1892, %1430, %1134, %1120
  %1976 = phi float [ %1121, %1892 ], [ %1121, %1430 ], [ %1121, %1120 ], [ %1966, %1963 ], [ %1121, %1961 ], [ %1932, %1929 ], [ %1919, %1914 ], [ %1121, %1134 ]
  %1977 = phi float [ %1122, %1892 ], [ %1122, %1430 ], [ %1122, %1120 ], [ %1967, %1963 ], [ %1122, %1961 ], [ %1933, %1929 ], [ %1920, %1914 ], [ %1122, %1134 ]
  %1978 = phi float [ %1893, %1892 ], [ %1123, %1430 ], [ %1123, %1120 ], [ %1893, %1963 ], [ %1893, %1961 ], [ %1893, %1929 ], [ %1893, %1914 ], [ %1123, %1134 ]
  %1979 = phi float [ %1894, %1892 ], [ %1124, %1430 ], [ %1124, %1120 ], [ %1894, %1963 ], [ %1894, %1961 ], [ %1894, %1929 ], [ %1894, %1914 ], [ %1124, %1134 ]
  %1980 = phi float [ %1895, %1892 ], [ %1125, %1430 ], [ %1125, %1120 ], [ %1895, %1963 ], [ %1895, %1961 ], [ %1895, %1929 ], [ %1895, %1914 ], [ %1125, %1134 ]
  %1981 = phi float [ %1896, %1892 ], [ %1126, %1430 ], [ %1126, %1120 ], [ %1896, %1963 ], [ %1896, %1961 ], [ %1896, %1929 ], [ %1896, %1914 ], [ %1126, %1134 ]
  %1982 = phi float [ %1897, %1892 ], [ %1127, %1430 ], [ %1127, %1120 ], [ %1897, %1963 ], [ %1897, %1961 ], [ %1897, %1929 ], [ %1897, %1914 ], [ %1127, %1134 ]
  %1983 = phi float [ %1898, %1892 ], [ %1128, %1430 ], [ %1128, %1120 ], [ %1898, %1963 ], [ %1898, %1961 ], [ %1898, %1929 ], [ %1898, %1914 ], [ %1128, %1134 ]
  %1984 = phi float [ %1899, %1892 ], [ %1129, %1430 ], [ %1129, %1120 ], [ %1899, %1963 ], [ %1899, %1961 ], [ %1899, %1929 ], [ %1899, %1914 ], [ %1129, %1134 ]
  %1985 = phi float [ %1131, %1892 ], [ %1131, %1430 ], [ %1131, %1120 ], [ %1974, %1963 ], [ %1131, %1961 ], [ %1960, %1929 ], [ %1926, %1914 ], [ %1131, %1134 ]
  %1986 = phi float [ %1132, %1892 ], [ %1132, %1430 ], [ %1132, %1120 ], [ %1971, %1963 ], [ %1132, %1961 ], [ %1937, %1929 ], [ %1923, %1914 ], [ %1132, %1134 ]
  %1987 = phi float [ %1900, %1892 ], [ %1133, %1430 ], [ %1133, %1120 ], [ %1900, %1963 ], [ %1900, %1961 ], [ %1900, %1929 ], [ %1900, %1914 ], [ %1133, %1134 ]
  br i1 %406, label %2829, label %1988

; <label>:1988                                    ; preds = %1975
  %1989 = icmp ult i32 %462, 3
  %1990 = add i32 %54, 56
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = add i32 %54, 60
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = or i32 %1995, %1992
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2829, label %1998

; <label>:1998                                    ; preds = %1988
  %1999 = and i32 %1992, 262144
  %2000 = icmp ne i32 %1999, 0
  %2001 = select i1 %2000, float %57, float 1.000000e+00
  %2002 = select i1 %2000, float %58, float 0.000000e+00
  %2003 = select i1 %2000, float %59, float 0.000000e+00
  %2004 = select i1 %2000, float %60, float 1.000000e+00
  %2005 = select i1 %2000, float %61, float %77
  %2006 = select i1 %2000, float %62, float %78
  %2007 = add i32 %54, 316
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = lshr i32 %2009, 16
  %2011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2010)  ; LegacyF16ToF32(value)
  %2012 = fmul fast float %2011, 0x3F50624DE0000000
  %2013 = add i32 %54, 120
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = lshr i32 %2015, 16
  %2017 = and i32 %2016, 255
  %2018 = lshr i32 %2015, 24
  %2019 = add i32 %54, 324
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = and i32 %2021, 65535
  %2023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2022)  ; LegacyF16ToF32(value)
  %2024 = lshr i32 %2021, 16
  %2025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2024)  ; LegacyF16ToF32(value)
  %2026 = add i32 %54, 64
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = lshr i32 %2028, 22
  %2030 = shl nuw nsw i32 %2029, 5
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = shl i32 %2028, 4
  %2033 = and i32 %2032, 32752
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = lshr i32 %2028, 7
  %2036 = and i32 %2035, 32752
  %2037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2036)  ; LegacyF16ToF32(value)
  %2038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2039 = extractvalue %dx.types.CBufRet.f32 %2038, 3
  %2040 = fmul fast float %2039, 1.000000e+03
  %2041 = fmul fast float %356, %2040
  %2042 = call float @dx.op.unary.f32(i32 22, float %2041)  ; Frc(value)
  %2043 = fadd fast float %2042, %346
  %2044 = fmul fast float %357, %2040
  %2045 = call float @dx.op.unary.f32(i32 22, float %2044)  ; Frc(value)
  %2046 = fadd fast float %2045, %348
  %2047 = fmul fast float %2012, %2040
  %2048 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2049 = fmul fast float %2048, 0x401921FB60000000
  %2050 = fadd fast float %2049, %2031
  %2051 = call float @dx.op.unary.f32(i32 13, float %2050)  ; Sin(value)
  %2052 = call float @dx.op.unary.f32(i32 12, float %2050)  ; Cos(value)
  %2053 = fsub fast float -0.000000e+00, %2051
  %2054 = fadd fast float %2005, -5.000000e-01
  %2055 = fadd fast float %2006, -5.000000e-01
  %2056 = fmul fast float %2023, %2054
  %2057 = fmul fast float %2025, %2055
  %2058 = fadd fast float %2056, 5.000000e-01
  %2059 = fadd fast float %2057, 5.000000e-01
  %2060 = fmul fast float %2034, %2058
  %2061 = fmul fast float %2037, %2059
  %2062 = fmul fast float %2052, %2060
  %2063 = call float @dx.op.tertiary.f32(i32 46, float %2053, float %2061, float %2062)  ; FMad(a,b,c)
  %2064 = fmul fast float %2051, %2060
  %2065 = call float @dx.op.tertiary.f32(i32 46, float %2052, float %2061, float %2064)  ; FMad(a,b,c)
  %2066 = fadd fast float %2043, %2063
  %2067 = fadd fast float %2046, %2065
  %2068 = icmp ugt i32 %2017, 1
  %2069 = icmp ugt i32 %2015, 33554431
  %2070 = or i1 %2069, %2068
  br i1 %2070, label %2071, label %2096

; <label>:2071                                    ; preds = %1998
  %2072 = add i32 %54, 260
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = lshr i32 %2074, 16
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = fmul fast float %2039, %2076
  %2078 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2079 = mul nuw nsw i32 %2017, %2018
  %2080 = uitofp i32 %2079 to float
  %2081 = fmul fast float %2078, %2080
  %2082 = call float @dx.op.unary.f32(i32 27, float %2081)  ; Round_ni(value)
  %2083 = fptoui float %2082 to i32
  %2084 = urem i32 %2083, %2017
  %2085 = udiv i32 %2083, %2018
  %2086 = call float @dx.op.unary.f32(i32 22, float %2066)  ; Frc(value)
  %2087 = call float @dx.op.unary.f32(i32 22, float %2067)  ; Frc(value)
  %2088 = uitofp i32 %2084 to float
  %2089 = uitofp i32 %2085 to float
  %2090 = fadd fast float %2086, %2088
  %2091 = fadd fast float %2087, %2089
  %2092 = uitofp i32 %2017 to float
  %2093 = uitofp i32 %2018 to float
  %2094 = fdiv fast float %2090, %2092
  %2095 = fdiv fast float %2091, %2093
  br label %2096

; <label>:2096                                    ; preds = %2071, %1998
  %2097 = phi float [ %2094, %2071 ], [ %2066, %1998 ]
  %2098 = phi float [ %2095, %2071 ], [ %2067, %1998 ]
  %2099 = and i32 %1992, 16777216
  %2100 = icmp eq i32 %2099, 0
  br i1 %2100, label %2210, label %2101

; <label>:2101                                    ; preds = %2096
  %2102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2103 = extractvalue %dx.types.CBufRet.f32 %2102, 0
  %2104 = extractvalue %dx.types.CBufRet.f32 %2102, 1
  %2105 = extractvalue %dx.types.CBufRet.f32 %2102, 2
  %2106 = fadd fast float %2103, %158
  %2107 = fadd fast float %2104, %159
  %2108 = fadd fast float %2105, %160
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  %2112 = icmp eq i32 %55, 65535
  br i1 %2112, label %2207, label %2113

; <label>:2113                                    ; preds = %2101
  %2114 = lshr i32 %55, 1
  %2115 = shl i32 %2114, 2
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = and i32 %55, 1
  %2119 = icmp ne i32 %2118, 0
  %2120 = lshr i32 %2117, 16
  %2121 = and i32 %2117, 65535
  %2122 = select i1 %2119, i32 %2120, i32 %2121
  %2123 = icmp eq i32 %2122, 65535
  br i1 %2123, label %2203, label %2124

; <label>:2124                                    ; preds = %2113
  %2125 = mul nuw nsw i32 %2122, 40
  %2126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.ResRet.f32 %2126, 1
  %2129 = extractvalue %dx.types.ResRet.f32 %2126, 2
  %2130 = add nuw nsw i32 %2125, 12
  %2131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.f32 %2131, 0
  %2133 = extractvalue %dx.types.ResRet.f32 %2131, 1
  %2134 = extractvalue %dx.types.ResRet.f32 %2131, 2
  %2135 = add nuw nsw i32 %2125, 24
  %2136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.f32 %2136, 0
  %2138 = extractvalue %dx.types.ResRet.f32 %2136, 1
  %2139 = extractvalue %dx.types.ResRet.f32 %2136, 2
  %2140 = add nuw nsw i32 %2125, 36
  %2141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = fsub fast float %2106, %2127
  %2144 = fsub fast float %2107, %2128
  %2145 = fsub fast float %2108, %2129
  %2146 = fmul fast float %2142, %2143
  %2147 = fmul fast float %2142, %2144
  %2148 = fmul fast float %2142, %2145
  %2149 = call float @dx.op.unary.f32(i32 27, float %2146)  ; Round_ni(value)
  %2150 = call float @dx.op.unary.f32(i32 27, float %2147)  ; Round_ni(value)
  %2151 = call float @dx.op.unary.f32(i32 27, float %2148)  ; Round_ni(value)
  %2152 = fadd fast float %2149, 5.000000e-01
  %2153 = fadd fast float %2150, 5.000000e-01
  %2154 = fadd fast float %2151, 5.000000e-01
  %2155 = fmul fast float %2152, %2132
  %2156 = fmul fast float %2153, %2133
  %2157 = fmul fast float %2154, %2134
  %2158 = shl i32 %55, 2
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = add i32 %2160, 0
  %2162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2163 = call float @dx.op.unary.f32(i32 22, float %2155)  ; Frc(value)
  %2164 = call float @dx.op.unary.f32(i32 22, float %2156)  ; Frc(value)
  %2165 = call float @dx.op.unary.f32(i32 22, float %2157)  ; Frc(value)
  %2166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2162, %dx.types.Handle %49, float %2163, float %2164, float %2165, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.ResRet.f32 %2166, 1
  %2169 = extractvalue %dx.types.ResRet.f32 %2166, 2
  %2170 = fmul fast float %2167, 1.023000e+03
  %2171 = fmul fast float %2168, 1.023000e+03
  %2172 = fmul fast float %2169, 1.023000e+03
  %2173 = fadd fast float %2170, 5.000000e-01
  %2174 = fadd fast float %2171, 5.000000e-01
  %2175 = fadd fast float %2172, 5.000000e-01
  %2176 = call float @dx.op.unary.f32(i32 27, float %2173)  ; Round_ni(value)
  %2177 = call float @dx.op.unary.f32(i32 27, float %2174)  ; Round_ni(value)
  %2178 = call float @dx.op.unary.f32(i32 27, float %2175)  ; Round_ni(value)
  %2179 = fsub fast float %2146, %2149
  %2180 = fsub fast float %2147, %2150
  %2181 = fsub fast float %2148, %2151
  %2182 = fmul fast float %2179, 7.500000e-01
  %2183 = fmul fast float %2180, 7.500000e-01
  %2184 = fmul fast float %2181, 7.500000e-01
  %2185 = fadd fast float %2149, 1.250000e-01
  %2186 = fadd fast float %2185, %2182
  %2187 = fadd fast float %2186, %2176
  %2188 = fadd fast float %2150, 1.250000e-01
  %2189 = fadd fast float %2188, %2183
  %2190 = fadd fast float %2189, %2177
  %2191 = fadd fast float %2151, 1.250000e-01
  %2192 = fadd fast float %2191, %2184
  %2193 = fadd fast float %2192, %2178
  %2194 = fmul fast float %2187, %2137
  %2195 = fmul fast float %2190, %2138
  %2196 = fmul fast float %2193, %2139
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = add i32 %2198, 0
  %2200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2200, %dx.types.Handle %47, float %2194, float %2195, float %2196, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2202 = extractvalue %dx.types.ResRet.f32 %2201, 0
  br label %2203

; <label>:2203                                    ; preds = %2124, %2113
  %2204 = phi float [ %2202, %2124 ], [ -1.000000e+00, %2113 ]
  %2205 = fadd fast float %2204, %2111
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  br label %2207

; <label>:2207                                    ; preds = %2203, %2101
  %2208 = phi float [ %2206, %2203 ], [ %2111, %2101 ]
  %2209 = fmul fast float %2208, %458
  br label %2210

; <label>:2210                                    ; preds = %2207, %2096
  %2211 = phi float [ %2209, %2207 ], [ %458, %2096 ]
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 256
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2262, label %2216

; <label>:2216                                    ; preds = %2210
  %2217 = add i32 %54, 448
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = add i32 %2219, 0
  %2221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2221, %dx.types.Handle %92, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = add i32 %54, 132
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = shl i32 %2226, 4
  %2228 = and i32 %2227, 32752
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = lshr i32 %2226, 7
  %2231 = and i32 %2230, 32752
  %2232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2231)  ; LegacyF16ToF32(value)
  %2233 = fsub fast float 1.000000e+00, %2211
  %2234 = call float @dx.op.binary.f32(i32 35, float %2233, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2235 = bitcast float %2211 to i32
  %2236 = sitofp i32 %2235 to float
  %2237 = fadd fast float %2236, 0xC1CFBF8940000000
  %2238 = fmul fast float %2232, %2237
  %2239 = fadd fast float %2238, 0x41CFBF8940000000
  %2240 = fptosi float %2239 to i32
  %2241 = bitcast i32 %2240 to float
  %2242 = bitcast float %2234 to i32
  %2243 = sitofp i32 %2242 to float
  %2244 = fadd fast float %2243, 0xC1CFBF8940000000
  %2245 = fmul fast float %2244, %2232
  %2246 = fadd fast float %2245, 0x41CFBF8940000000
  %2247 = fptosi float %2246 to i32
  %2248 = bitcast i32 %2247 to float
  %2249 = fmul fast float %2241, %2229
  %2250 = fmul fast float %2248, %2229
  %2251 = fsub fast float %2234, %2249
  %2252 = fadd fast float %2250, %2234
  %2253 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2254 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2255 = fsub fast float %2223, %2253
  %2256 = fsub fast float %2254, %2253
  %2257 = bitcast float %2256 to i32
  %2258 = sub nsw i32 2129859010, %2257
  %2259 = bitcast i32 %2258 to float
  %2260 = fmul fast float %2259, %2255
  %2261 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  br label %2262

; <label>:2262                                    ; preds = %2216, %2210
  %2263 = phi float [ %2261, %2216 ], [ %2211, %2210 ]
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 128
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2284, label %2268

; <label>:2268                                    ; preds = %2262
  %2269 = add i32 %54, 432
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = add i32 %2271, 0
  %2273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2273, %dx.types.Handle %92, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = and i32 %2277, 524288
  %2279 = icmp ne i32 %2278, 0
  %2280 = fcmp fast ogt float %2275, 0x3FE0101020000000
  %2281 = select i1 %2280, float 1.000000e+00, float 0.000000e+00
  %2282 = select i1 %2279, float %2281, float %2275
  %2283 = fmul fast float %2282, %2263
  br label %2284

; <label>:2284                                    ; preds = %2268, %2262
  %2285 = phi float [ %2283, %2268 ], [ %2263, %2262 ]
  %2286 = fcmp fast ult float %2285, 0x3F70101020000000
  br i1 %2286, label %2829, label %2287

; <label>:2287                                    ; preds = %2284
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = and i32 %2289, 16
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2490, label %2292

; <label>:2292                                    ; preds = %2287
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = add i32 %54, 384
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %2297, 0
  %2299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2299, %dx.types.Handle %91, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.ResRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.ResRet.f32 %2300, 2
  %2304 = extractvalue %dx.types.ResRet.f32 %2300, 3
  %2305 = and i32 %2294, 255
  %2306 = uitofp i32 %2305 to float
  %2307 = lshr i32 %2294, 8
  %2308 = and i32 %2307, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = fmul fast float %2304, %2306
  %2311 = fadd fast float %2310, %2309
  %2312 = fmul fast float %2311, 0x3F70101000000000
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 512
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2325, label %2317

; <label>:2317                                    ; preds = %2292
  %2318 = add i32 %54, 464
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = add i32 %2320, 0
  %2322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2322, %dx.types.Handle %92, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2324 = extractvalue %dx.types.ResRet.f32 %2323, 0
  br label %2325

; <label>:2325                                    ; preds = %2317, %2292
  %2326 = phi float [ %2324, %2317 ], [ 1.000000e+00, %2292 ]
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = and i32 %2328, 33554432
  %2330 = icmp eq i32 %2329, 0
  br i1 %2330, label %2437, label %2331

; <label>:2331                                    ; preds = %2325
  %2332 = add i32 %54, 256
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 65535
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = lshr i32 %2334, 16
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = add i32 %54, 260
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = lshr i32 %2345, 24
  %2347 = uitofp i32 %2346 to float
  %2348 = fmul fast float %2347, 0x3F70101020000000
  %2349 = and i32 %2345, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = lshr i32 %2345, 8
  %2353 = and i32 %2352, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, 0x3F70101020000000
  %2356 = lshr i32 %2345, 16
  %2357 = and i32 %2356, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = add i32 %54, 252
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = lshr i32 %2362, 24
  %2364 = uitofp i32 %2363 to float
  %2365 = fmul fast float %2364, 0x3F70101020000000
  %2366 = and i32 %2362, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = lshr i32 %2362, 8
  %2370 = and i32 %2369, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = fmul fast float %2371, 0x3F70101020000000
  %2373 = lshr i32 %2362, 16
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = bitcast float %2301 to i32
  %2378 = ashr i32 %2377, 1
  %2379 = sub nsw i32 1597463174, %2378
  %2380 = bitcast i32 %2379 to float
  %2381 = fmul fast float %2301, 5.000000e-01
  %2382 = fmul fast float %2380, %2380
  %2383 = fmul fast float %2382, %2381
  %2384 = fsub fast float 1.500000e+00, %2383
  %2385 = fmul fast float %2380, %2301
  %2386 = fmul fast float %2385, %2384
  %2387 = bitcast float %2302 to i32
  %2388 = ashr i32 %2387, 1
  %2389 = sub nsw i32 1597463174, %2388
  %2390 = bitcast i32 %2389 to float
  %2391 = fmul fast float %2302, 5.000000e-01
  %2392 = fmul fast float %2390, %2390
  %2393 = fmul fast float %2392, %2391
  %2394 = fsub fast float 1.500000e+00, %2393
  %2395 = fmul fast float %2390, %2302
  %2396 = fmul fast float %2395, %2394
  %2397 = bitcast float %2303 to i32
  %2398 = ashr i32 %2397, 1
  %2399 = sub nsw i32 1597463174, %2398
  %2400 = bitcast i32 %2399 to float
  %2401 = fmul fast float %2303, 5.000000e-01
  %2402 = fmul fast float %2400, %2400
  %2403 = fmul fast float %2402, %2401
  %2404 = fsub fast float 1.500000e+00, %2403
  %2405 = fmul fast float %2400, %2303
  %2406 = fmul fast float %2405, %2404
  %2407 = fsub fast float %2386, %2368
  %2408 = fsub fast float %2396, %2372
  %2409 = fsub fast float %2406, %2376
  %2410 = fmul fast float %2407, %2336
  %2411 = fmul fast float %2408, %2338
  %2412 = fmul fast float %2409, %2343
  %2413 = fadd fast float %2410, %2351
  %2414 = fadd fast float %2411, %2355
  %2415 = fadd fast float %2412, %2359
  %2416 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2417 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2418 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2419 = fmul fast float %2416, %2416
  %2420 = fmul fast float %2417, %2417
  %2421 = fmul fast float %2418, %2418
  %2422 = fsub fast float %2419, %2301
  %2423 = fsub fast float %2420, %2302
  %2424 = fsub fast float %2421, %2303
  %2425 = fmul fast float %2422, %2326
  %2426 = fmul fast float %2423, %2326
  %2427 = fmul fast float %2424, %2326
  %2428 = fadd fast float %2425, %2301
  %2429 = fadd fast float %2426, %2302
  %2430 = fadd fast float %2427, %2303
  %2431 = fadd fast float %2348, %2312
  %2432 = fsub fast float %2431, %2365
  %2433 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2434 = fsub fast float %2433, %2312
  %2435 = fmul fast float %2434, %2326
  %2436 = fadd fast float %2435, %2312
  br label %2490

; <label>:2437                                    ; preds = %2325
  %2438 = and i32 %2328, 134217728
  %2439 = icmp eq i32 %2438, 0
  br i1 %2439, label %2474, label %2440

; <label>:2440                                    ; preds = %2437
  %2441 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2442 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2443 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2444 = fadd fast float %2441, -5.000000e-01
  %2445 = fadd fast float %2442, -5.000000e-01
  %2446 = fadd fast float %2443, -5.000000e-01
  %2447 = fmul fast float %2444, %2326
  %2448 = fmul fast float %2445, %2326
  %2449 = fmul fast float %2446, %2326
  %2450 = fadd fast float %2447, 5.000000e-01
  %2451 = fadd fast float %2448, 5.000000e-01
  %2452 = fadd fast float %2449, 5.000000e-01
  %2453 = call float @dx.op.unary.f32(i32 24, float %2301)  ; Sqrt(value)
  %2454 = call float @dx.op.unary.f32(i32 24, float %2302)  ; Sqrt(value)
  %2455 = call float @dx.op.unary.f32(i32 24, float %2303)  ; Sqrt(value)
  %2456 = fmul fast float %2450, 2.000000e+00
  %2457 = fsub fast float 1.000000e+00, %2456
  %2458 = fmul fast float %2457, %2453
  %2459 = fadd fast float %2458, %2456
  %2460 = fmul fast float %2459, %2453
  %2461 = fmul fast float %2451, 2.000000e+00
  %2462 = fsub fast float 1.000000e+00, %2461
  %2463 = fmul fast float %2462, %2454
  %2464 = fadd fast float %2463, %2461
  %2465 = fmul fast float %2464, %2454
  %2466 = fmul fast float %2452, 2.000000e+00
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2467, %2455
  %2469 = fadd fast float %2468, %2466
  %2470 = fmul fast float %2469, %2455
  %2471 = fmul fast float %2460, %2460
  %2472 = fmul fast float %2465, %2465
  %2473 = fmul fast float %2470, %2470
  br label %2490

; <label>:2474                                    ; preds = %2437
  %2475 = fmul fast float %333, %333
  %2476 = fmul fast float %337, %337
  %2477 = fmul fast float %341, %341
  %2478 = fadd fast float %2475, -1.000000e+00
  %2479 = fadd fast float %2476, -1.000000e+00
  %2480 = fadd fast float %2477, -1.000000e+00
  %2481 = fmul fast float %2326, %2478
  %2482 = fmul fast float %2326, %2479
  %2483 = fmul fast float %2326, %2480
  %2484 = fadd fast float %2481, 1.000000e+00
  %2485 = fadd fast float %2482, 1.000000e+00
  %2486 = fadd fast float %2483, 1.000000e+00
  %2487 = fmul fast float %2484, %2301
  %2488 = fmul fast float %2485, %2302
  %2489 = fmul fast float %2486, %2303
  br label %2490

; <label>:2490                                    ; preds = %2474, %2440, %2331, %2287
  %2491 = phi float [ %2436, %2331 ], [ %2312, %2440 ], [ %2312, %2474 ], [ 0x3FA23C0BE0000000, %2287 ]
  %2492 = phi float [ %2428, %2331 ], [ %2471, %2440 ], [ %2487, %2474 ], [ 1.000000e+00, %2287 ]
  %2493 = phi float [ %2429, %2331 ], [ %2472, %2440 ], [ %2488, %2474 ], [ 1.000000e+00, %2287 ]
  %2494 = phi float [ %2430, %2331 ], [ %2473, %2440 ], [ %2489, %2474 ], [ 1.000000e+00, %2287 ]
  %2495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2496 = extractvalue %dx.types.CBufRet.i32 %2495, 1
  %2497 = and i32 %2496, 1
  %2498 = icmp ne i32 %2497, 0
  %2499 = add i32 %54, 356
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 32
  %2503 = icmp ne i32 %2502, 0
  %2504 = and i1 %2498, %2503
  %2505 = select i1 %2504, float 1.000000e+00, float %2492
  %2506 = select i1 %2504, float 0x3FD3333340000000, float %2493
  %2507 = select i1 %2504, float 0x3FD3333340000000, float %2494
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %2509, 32
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2584, label %2512

; <label>:2512                                    ; preds = %2490
  %2513 = add i32 %54, 124
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = add i32 %54, 400
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = add i32 %2518, 0
  %2520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2520, %dx.types.Handle %91, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2522 = extractvalue %dx.types.ResRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.ResRet.f32 %2521, 1
  %2524 = extractvalue %dx.types.ResRet.f32 %2521, 2
  %2525 = extractvalue %dx.types.ResRet.f32 %2521, 3
  %2526 = and i32 %2515, 255
  %2527 = uitofp i32 %2526 to float
  %2528 = lshr i32 %2515, 8
  %2529 = and i32 %2528, 255
  %2530 = uitofp i32 %2529 to float
  %2531 = lshr i32 %2515, 16
  %2532 = and i32 %2531, 255
  %2533 = uitofp i32 %2532 to float
  %2534 = fmul fast float %2533, 0x3F70101000000000
  %2535 = fmul fast float %2522, %2527
  %2536 = fadd fast float %2535, %2530
  %2537 = fmul fast float %2536, 0x3F70101000000000
  %2538 = fadd fast float %2523, -5.000000e-01
  %2539 = fadd fast float %2525, -5.000000e-01
  %2540 = fmul fast float %2538, %2534
  %2541 = fmul fast float %2539, %2534
  %2542 = fadd fast float %2540, 5.000000e-01
  %2543 = fadd fast float %2541, 5.000000e-01
  %2544 = fmul fast float %2542, 2.000000e+00
  %2545 = fadd fast float %2544, -1.000000e+00
  %2546 = fmul fast float %2543, 2.000000e+00
  %2547 = fadd fast float %2546, -1.000000e+00
  %2548 = fadd fast float %2545, %2547
  %2549 = fmul fast float %2548, 5.000000e-01
  %2550 = fsub fast float %2545, %2547
  %2551 = fmul fast float %2550, 5.000000e-01
  %2552 = call float @dx.op.unary.f32(i32 6, float %2549)  ; FAbs(value)
  %2553 = fsub fast float 1.000000e+00, %2552
  %2554 = call float @dx.op.unary.f32(i32 6, float %2551)  ; FAbs(value)
  %2555 = fsub fast float %2553, %2554
  %2556 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2551, float %2555, float %2549, float %2551, float %2555)  ; Dot3(ax,ay,az,bx,by,bz)
  %2557 = call float @dx.op.unary.f32(i32 25, float %2556)  ; Rsqrt(value)
  %2558 = fmul fast float %2549, %2557
  %2559 = fmul fast float %2551, %2557
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = and i32 %2561, 67108864
  %2563 = icmp eq i32 %2562, 0
  br i1 %2563, label %2580, label %2564

; <label>:2564                                    ; preds = %2512
  %2565 = add i32 %54, 312
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 65535
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 65535
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = lshr i32 %2567, 16
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = fsub fast float %2537, %2575
  %2577 = fmul fast float %2576, %2569
  %2578 = fadd fast float %2577, %2573
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  br label %2580

; <label>:2580                                    ; preds = %2564, %2512
  %2581 = phi float [ %2579, %2564 ], [ %2537, %2512 ]
  %2582 = call float @dx.op.dot2.f32(i32 54, float %2558, float %2559, float %2001, float %2002)  ; Dot2(ax,ay,bx,by)
  %2583 = call float @dx.op.dot2.f32(i32 54, float %2558, float %2559, float %2003, float %2004)  ; Dot2(ax,ay,bx,by)
  br label %2584

; <label>:2584                                    ; preds = %2580, %2490
  %2585 = phi float [ %2581, %2580 ], [ 0x3FD6666660000000, %2490 ]
  %2586 = phi float [ %2582, %2580 ], [ 0.000000e+00, %2490 ]
  %2587 = phi float [ %2583, %2580 ], [ 0.000000e+00, %2490 ]
  %2588 = phi float [ %2524, %2580 ], [ 1.000000e+00, %2490 ]
  %2589 = add i32 %54, 192
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2589, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = lshr i32 %2591, 22
  %2593 = shl nuw nsw i32 %2592, 5
  %2594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2593)  ; LegacyF16ToF32(value)
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 64
  %2598 = icmp eq i32 %2597, 0
  br i1 %2598, label %2632, label %2599

; <label>:2599                                    ; preds = %2584
  %2600 = add i32 %54, 416
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = add i32 %2602, 0
  %2604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, 131072
  %2608 = icmp eq i32 %2607, 0
  %2609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2604, %dx.types.Handle %91, float %2097, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2610 = extractvalue %dx.types.ResRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.ResRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.ResRet.f32 %2609, 2
  %2613 = fmul fast float %2610, %321
  %2614 = fmul fast float %2611, %324
  %2615 = fmul fast float %2612, %327
  br i1 %2608, label %2622, label %2616

; <label>:2616                                    ; preds = %2599
  %2617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.f32 %2617, 0
  %2619 = fmul fast float %2618, %2613
  %2620 = fmul fast float %2618, %2614
  %2621 = fmul fast float %2618, %2615
  br label %2622

; <label>:2622                                    ; preds = %2616, %2599
  %2623 = phi float [ %2619, %2616 ], [ %2613, %2599 ]
  %2624 = phi float [ %2620, %2616 ], [ %2614, %2599 ]
  %2625 = phi float [ %2621, %2616 ], [ %2615, %2599 ]
  %2626 = fmul fast float %2623, %2594
  %2627 = select i1 %220, float %2626, float %2623
  %2628 = call float @dx.op.dot3.f32(i32 55, float %2627, float %2624, float %2625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2629 = select i1 %220, float 0.000000e+00, float %2623
  %2630 = select i1 %220, float %2628, float %2624
  %2631 = select i1 %220, float 0.000000e+00, float %2625
  br label %2632

; <label>:2632                                    ; preds = %2622, %2584
  %2633 = phi float [ %2629, %2622 ], [ 0.000000e+00, %2584 ]
  %2634 = phi float [ %2630, %2622 ], [ 0.000000e+00, %2584 ]
  %2635 = phi float [ %2631, %2622 ], [ 0.000000e+00, %2584 ]
  %2636 = add i32 %54, 128
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 255
  %2640 = uitofp i32 %2639 to float
  %2641 = lshr i32 %2638, 8
  %2642 = and i32 %2641, 255
  %2643 = uitofp i32 %2642 to float
  %2644 = call float @dx.op.dot3.f32(i32 55, float %2505, float %2506, float %2507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2645 = fmul fast float %2643, %2644
  %2646 = fadd fast float %2645, %2640
  %2647 = fmul fast float %2646, 0x3F70101020000000
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  br i1 %1989, label %2649, label %2657

; <label>:2649                                    ; preds = %2632
  %2650 = fsub fast float 1.000000e+00, %2285
  %2651 = fmul fast float %2650, %1978
  %2652 = fmul fast float %2650, %1979
  %2653 = fmul fast float %2650, %1980
  %2654 = fmul fast float %2650, %1981
  %2655 = fmul fast float %2650, %1982
  %2656 = fmul fast float %2650, %1983
  br label %2657

; <label>:2657                                    ; preds = %2649, %2632
  %2658 = phi float [ %2651, %2649 ], [ %1978, %2632 ]
  %2659 = phi float [ %2652, %2649 ], [ %1979, %2632 ]
  %2660 = phi float [ %2653, %2649 ], [ %1980, %2632 ]
  %2661 = phi float [ %2654, %2649 ], [ %1981, %2632 ]
  %2662 = phi float [ %2655, %2649 ], [ %1982, %2632 ]
  %2663 = phi float [ %2656, %2649 ], [ %1983, %2632 ]
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = and i32 %2665, 3
  %2667 = icmp eq i32 %2666, 3
  br i1 %2667, label %2746, label %2668

; <label>:2668                                    ; preds = %2657
  %2669 = and i32 %2665, 16
  %2670 = icmp ne i32 %2669, 0
  %2671 = select i1 %2670, float %2285, float 0.000000e+00
  %2672 = icmp eq i32 %2666, 0
  br i1 %2672, label %2673, label %2701

; <label>:2673                                    ; preds = %2668
  %2674 = and i32 %2665, 64
  %2675 = icmp ne i32 %2674, 0
  %2676 = select i1 %2675, float %2285, float 0.000000e+00
  %2677 = fsub fast float %2505, %2658
  %2678 = fsub fast float %2506, %2659
  %2679 = fsub fast float %2507, %2660
  %2680 = fmul fast float %2671, %2677
  %2681 = fmul fast float %2671, %2678
  %2682 = fmul fast float %2671, %2679
  %2683 = fadd fast float %2680, %2658
  %2684 = fadd fast float %2681, %2659
  %2685 = fadd fast float %2682, %2660
  %2686 = fsub fast float %2491, %1984
  %2687 = fmul fast float %2671, %2686
  %2688 = fadd fast float %2687, %1984
  %2689 = fsub fast float %2633, %2661
  %2690 = fsub fast float %2634, %2662
  %2691 = fsub fast float %2635, %2663
  %2692 = fmul fast float %2676, %2689
  %2693 = fmul fast float %2676, %2690
  %2694 = fmul fast float %2676, %2691
  %2695 = fadd fast float %2692, %2661
  %2696 = fadd fast float %2693, %2662
  %2697 = fadd fast float %2694, %2663
  %2698 = fsub fast float %2648, %1987
  %2699 = fmul fast float %2671, %2698
  %2700 = fadd fast float %2699, %1987
  br label %2746

; <label>:2701                                    ; preds = %2668
  %2702 = icmp eq i32 %2666, 1
  br i1 %2702, label %2703, label %2716

; <label>:2703                                    ; preds = %2701
  %2704 = fadd fast float %2505, -1.000000e+00
  %2705 = fadd fast float %2506, -1.000000e+00
  %2706 = fadd fast float %2507, -1.000000e+00
  %2707 = fmul fast float %2671, %2704
  %2708 = fmul fast float %2671, %2705
  %2709 = fmul fast float %2671, %2706
  %2710 = fadd fast float %2707, 1.000000e+00
  %2711 = fadd fast float %2708, 1.000000e+00
  %2712 = fadd fast float %2709, 1.000000e+00
  %2713 = fmul fast float %2710, %2658
  %2714 = fmul fast float %2711, %2659
  %2715 = fmul fast float %2712, %2660
  br label %2746

; <label>:2716                                    ; preds = %2701
  %2717 = icmp eq i32 %2666, 2
  br i1 %2717, label %2718, label %2746

; <label>:2718                                    ; preds = %2716
  %2719 = call float @dx.op.unary.f32(i32 24, float %2505)  ; Sqrt(value)
  %2720 = call float @dx.op.unary.f32(i32 24, float %2506)  ; Sqrt(value)
  %2721 = call float @dx.op.unary.f32(i32 24, float %2507)  ; Sqrt(value)
  %2722 = fadd fast float %2719, -5.000000e-01
  %2723 = fadd fast float %2720, -5.000000e-01
  %2724 = fadd fast float %2721, -5.000000e-01
  %2725 = fmul fast float %2722, %2671
  %2726 = fmul fast float %2723, %2671
  %2727 = fmul fast float %2724, %2671
  %2728 = fadd fast float %2725, 5.000000e-01
  %2729 = fadd fast float %2726, 5.000000e-01
  %2730 = fadd fast float %2727, 5.000000e-01
  %2731 = fmul fast float %2728, 2.000000e+00
  %2732 = fsub fast float 1.000000e+00, %2731
  %2733 = fmul fast float %2732, %2658
  %2734 = fadd fast float %2733, %2731
  %2735 = fmul fast float %2734, %2658
  %2736 = fmul fast float %2729, 2.000000e+00
  %2737 = fsub fast float 1.000000e+00, %2736
  %2738 = fmul fast float %2737, %2659
  %2739 = fadd fast float %2738, %2736
  %2740 = fmul fast float %2739, %2659
  %2741 = fmul fast float %2730, 2.000000e+00
  %2742 = fsub fast float 1.000000e+00, %2741
  %2743 = fmul fast float %2742, %2660
  %2744 = fadd fast float %2743, %2741
  %2745 = fmul fast float %2744, %2660
  br label %2746

; <label>:2746                                    ; preds = %2718, %2716, %2703, %2673, %2657
  %2747 = phi float [ %2658, %2657 ], [ %2735, %2718 ], [ %2658, %2716 ], [ %2713, %2703 ], [ %2683, %2673 ]
  %2748 = phi float [ %2659, %2657 ], [ %2740, %2718 ], [ %2659, %2716 ], [ %2714, %2703 ], [ %2684, %2673 ]
  %2749 = phi float [ %2660, %2657 ], [ %2745, %2718 ], [ %2660, %2716 ], [ %2715, %2703 ], [ %2685, %2673 ]
  %2750 = phi float [ %2661, %2657 ], [ %2661, %2718 ], [ %2661, %2716 ], [ %2661, %2703 ], [ %2695, %2673 ]
  %2751 = phi float [ %2662, %2657 ], [ %2662, %2718 ], [ %2662, %2716 ], [ %2662, %2703 ], [ %2696, %2673 ]
  %2752 = phi float [ %2663, %2657 ], [ %2663, %2718 ], [ %2663, %2716 ], [ %2663, %2703 ], [ %2697, %2673 ]
  %2753 = phi float [ %1984, %2657 ], [ %1984, %2718 ], [ %1984, %2716 ], [ %1984, %2703 ], [ %2688, %2673 ]
  %2754 = phi float [ %1987, %2657 ], [ %1987, %2718 ], [ %1987, %2716 ], [ %1987, %2703 ], [ %2700, %2673 ]
  %2755 = and i32 %2665, 12
  %2756 = icmp eq i32 %2755, 12
  br i1 %2756, label %2829, label %2757

; <label>:2757                                    ; preds = %2746
  %2758 = and i32 %2665, 2097184
  %2759 = icmp eq i32 %2758, 2097184
  %2760 = select i1 %2759, float %2285, float 0.000000e+00
  %2761 = and i32 %2665, 4194336
  %2762 = icmp eq i32 %2761, 4194336
  %2763 = select i1 %2762, float %2285, float 0.000000e+00
  %2764 = and i32 %2665, 8388640
  %2765 = icmp eq i32 %2764, 8388640
  %2766 = select i1 %2765, float %2285, float 0.000000e+00
  %2767 = icmp eq i32 %2755, 0
  br i1 %2767, label %2768, label %2781

; <label>:2768                                    ; preds = %2757
  %2769 = fsub fast float %2586, %1976
  %2770 = fsub fast float %2587, %1977
  %2771 = fmul fast float %2760, %2769
  %2772 = fmul fast float %2760, %2770
  %2773 = fadd fast float %2771, %1976
  %2774 = fadd fast float %2772, %1977
  %2775 = fsub fast float %2588, %1986
  %2776 = fmul fast float %2763, %2775
  %2777 = fadd fast float %2776, %1986
  %2778 = fsub fast float %2585, %1985
  %2779 = fmul fast float %2766, %2778
  %2780 = fadd fast float %2779, %1985
  br label %2829

; <label>:2781                                    ; preds = %2757
  %2782 = icmp eq i32 %2755, 4
  br i1 %2782, label %2783, label %2815

; <label>:2783                                    ; preds = %2781
  %2784 = fmul fast float %2760, %2586
  %2785 = fmul fast float %2760, %2587
  %2786 = fadd fast float %2784, %1976
  %2787 = fadd fast float %2785, %1977
  %2788 = call float @dx.op.binary.f32(i32 36, float %1986, float %2588)  ; FMin(a,b)
  %2789 = fsub fast float %2788, %1986
  %2790 = fmul fast float %2789, %2763
  %2791 = fadd fast float %2790, %1986
  %2792 = fadd fast float %2585, %1985
  %2793 = fmul fast float %2792, 0x3FF337FAE0000000
  %2794 = fmul fast float %1985, %1985
  %2795 = fmul fast float %2585, %2585
  %2796 = fadd fast float %2795, %2794
  %2797 = fmul fast float %2796, 0x3FE5152B00000000
  %2798 = fmul fast float %1985, 0xBFCC1F85E0000000
  %2799 = fmul fast float %2798, %2585
  %2800 = fadd fast float %2799, 0xBFE1363700000000
  %2801 = fadd fast float %2800, %2793
  %2802 = fsub fast float %2801, %2797
  %2803 = fmul fast float %2792, 0x3FBA6F0D00000000
  %2804 = fmul fast float %2796, 0x3FD0432880000000
  %2805 = fmul fast float %1985, 0xBFEF110800000000
  %2806 = fmul fast float %2805, %2585
  %2807 = fadd fast float %2806, 1.000000e+00
  %2808 = fsub fast float %2807, %2803
  %2809 = fadd fast float %2808, %2804
  %2810 = fdiv fast float %2802, %2809
  %2811 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  %2812 = fsub fast float %2811, %1985
  %2813 = fmul fast float %2812, %2766
  %2814 = fadd fast float %2813, %1985
  br label %2829

; <label>:2815                                    ; preds = %2781
  %2816 = icmp eq i32 %2755, 8
  br i1 %2816, label %2817, label %2829

; <label>:2817                                    ; preds = %2815
  %2818 = fmul fast float %2760, %2586
  %2819 = fmul fast float %2760, %2587
  %2820 = fadd fast float %2818, %1976
  %2821 = fadd fast float %2819, %1977
  %2822 = call float @dx.op.binary.f32(i32 36, float %1986, float %2588)  ; FMin(a,b)
  %2823 = fsub fast float %2822, %1986
  %2824 = fmul fast float %2823, %2763
  %2825 = fadd fast float %2824, %1986
  %2826 = fsub fast float %2585, %1985
  %2827 = fmul fast float %2766, %2826
  %2828 = fadd fast float %2827, %1985
  br label %2829

; <label>:2829                                    ; preds = %2817, %2815, %2783, %2768, %2746, %2284, %1988, %1975
  %2830 = phi float [ %1976, %2746 ], [ %1976, %2284 ], [ %1976, %1975 ], [ %2820, %2817 ], [ %1976, %2815 ], [ %2786, %2783 ], [ %2773, %2768 ], [ %1976, %1988 ]
  %2831 = phi float [ %1977, %2746 ], [ %1977, %2284 ], [ %1977, %1975 ], [ %2821, %2817 ], [ %1977, %2815 ], [ %2787, %2783 ], [ %2774, %2768 ], [ %1977, %1988 ]
  %2832 = phi float [ %2747, %2746 ], [ %1978, %2284 ], [ %1978, %1975 ], [ %2747, %2817 ], [ %2747, %2815 ], [ %2747, %2783 ], [ %2747, %2768 ], [ %1978, %1988 ]
  %2833 = phi float [ %2748, %2746 ], [ %1979, %2284 ], [ %1979, %1975 ], [ %2748, %2817 ], [ %2748, %2815 ], [ %2748, %2783 ], [ %2748, %2768 ], [ %1979, %1988 ]
  %2834 = phi float [ %2749, %2746 ], [ %1980, %2284 ], [ %1980, %1975 ], [ %2749, %2817 ], [ %2749, %2815 ], [ %2749, %2783 ], [ %2749, %2768 ], [ %1980, %1988 ]
  %2835 = phi float [ %2750, %2746 ], [ %1981, %2284 ], [ %1981, %1975 ], [ %2750, %2817 ], [ %2750, %2815 ], [ %2750, %2783 ], [ %2750, %2768 ], [ %1981, %1988 ]
  %2836 = phi float [ %2751, %2746 ], [ %1982, %2284 ], [ %1982, %1975 ], [ %2751, %2817 ], [ %2751, %2815 ], [ %2751, %2783 ], [ %2751, %2768 ], [ %1982, %1988 ]
  %2837 = phi float [ %2752, %2746 ], [ %1983, %2284 ], [ %1983, %1975 ], [ %2752, %2817 ], [ %2752, %2815 ], [ %2752, %2783 ], [ %2752, %2768 ], [ %1983, %1988 ]
  %2838 = phi float [ %2753, %2746 ], [ %1984, %2284 ], [ %1984, %1975 ], [ %2753, %2817 ], [ %2753, %2815 ], [ %2753, %2783 ], [ %2753, %2768 ], [ %1984, %1988 ]
  %2839 = phi float [ %1985, %2746 ], [ %1985, %2284 ], [ %1985, %1975 ], [ %2828, %2817 ], [ %1985, %2815 ], [ %2814, %2783 ], [ %2780, %2768 ], [ %1985, %1988 ]
  %2840 = phi float [ %1986, %2746 ], [ %1986, %2284 ], [ %1986, %1975 ], [ %2825, %2817 ], [ %1986, %2815 ], [ %2791, %2783 ], [ %2777, %2768 ], [ %1986, %1988 ]
  %2841 = phi float [ %2754, %2746 ], [ %1987, %2284 ], [ %1987, %1975 ], [ %2754, %2817 ], [ %2754, %2815 ], [ %2754, %2783 ], [ %2754, %2768 ], [ %1987, %1988 ]
  br i1 %408, label %3683, label %2842

; <label>:2842                                    ; preds = %2829
  %2843 = icmp ult i32 %462, 4
  %2844 = add i32 %54, 72
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = add i32 %54, 76
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = or i32 %2849, %2846
  %2851 = icmp eq i32 %2850, 0
  br i1 %2851, label %3683, label %2852

; <label>:2852                                    ; preds = %2842
  %2853 = and i32 %2846, 262144
  %2854 = icmp ne i32 %2853, 0
  %2855 = select i1 %2854, float %57, float 1.000000e+00
  %2856 = select i1 %2854, float %58, float 0.000000e+00
  %2857 = select i1 %2854, float %59, float 0.000000e+00
  %2858 = select i1 %2854, float %60, float 1.000000e+00
  %2859 = select i1 %2854, float %61, float %77
  %2860 = select i1 %2854, float %62, float %78
  %2861 = add i32 %54, 332
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = lshr i32 %2863, 16
  %2865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2864)  ; LegacyF16ToF32(value)
  %2866 = fmul fast float %2865, 0x3F50624DE0000000
  %2867 = add i32 %54, 136
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = lshr i32 %2869, 16
  %2871 = and i32 %2870, 255
  %2872 = lshr i32 %2869, 24
  %2873 = add i32 %54, 340
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 65535
  %2877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2876)  ; LegacyF16ToF32(value)
  %2878 = lshr i32 %2875, 16
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = add i32 %54, 80
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = lshr i32 %2882, 22
  %2884 = shl nuw nsw i32 %2883, 5
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = shl i32 %2882, 4
  %2887 = and i32 %2886, 32752
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = lshr i32 %2882, 7
  %2890 = and i32 %2889, 32752
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2892, 3
  %2894 = fmul fast float %2893, 1.000000e+03
  %2895 = fmul fast float %398, %2894
  %2896 = call float @dx.op.unary.f32(i32 22, float %2895)  ; Frc(value)
  %2897 = fadd fast float %2896, %388
  %2898 = fmul fast float %399, %2894
  %2899 = call float @dx.op.unary.f32(i32 22, float %2898)  ; Frc(value)
  %2900 = fadd fast float %2899, %390
  %2901 = fmul fast float %2866, %2894
  %2902 = call float @dx.op.unary.f32(i32 22, float %2901)  ; Frc(value)
  %2903 = fmul fast float %2902, 0x401921FB60000000
  %2904 = fadd fast float %2903, %2885
  %2905 = call float @dx.op.unary.f32(i32 13, float %2904)  ; Sin(value)
  %2906 = call float @dx.op.unary.f32(i32 12, float %2904)  ; Cos(value)
  %2907 = fsub fast float -0.000000e+00, %2905
  %2908 = fadd fast float %2859, -5.000000e-01
  %2909 = fadd fast float %2860, -5.000000e-01
  %2910 = fmul fast float %2877, %2908
  %2911 = fmul fast float %2879, %2909
  %2912 = fadd fast float %2910, 5.000000e-01
  %2913 = fadd fast float %2911, 5.000000e-01
  %2914 = fmul fast float %2888, %2912
  %2915 = fmul fast float %2891, %2913
  %2916 = fmul fast float %2906, %2914
  %2917 = call float @dx.op.tertiary.f32(i32 46, float %2907, float %2915, float %2916)  ; FMad(a,b,c)
  %2918 = fmul fast float %2905, %2914
  %2919 = call float @dx.op.tertiary.f32(i32 46, float %2906, float %2915, float %2918)  ; FMad(a,b,c)
  %2920 = fadd fast float %2897, %2917
  %2921 = fadd fast float %2900, %2919
  %2922 = icmp ugt i32 %2871, 1
  %2923 = icmp ugt i32 %2869, 33554431
  %2924 = or i1 %2923, %2922
  br i1 %2924, label %2925, label %2950

; <label>:2925                                    ; preds = %2852
  %2926 = add i32 %54, 276
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = lshr i32 %2928, 16
  %2930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2929)  ; LegacyF16ToF32(value)
  %2931 = fmul fast float %2893, %2930
  %2932 = call float @dx.op.unary.f32(i32 22, float %2931)  ; Frc(value)
  %2933 = mul nuw nsw i32 %2871, %2872
  %2934 = uitofp i32 %2933 to float
  %2935 = fmul fast float %2932, %2934
  %2936 = call float @dx.op.unary.f32(i32 27, float %2935)  ; Round_ni(value)
  %2937 = fptoui float %2936 to i32
  %2938 = urem i32 %2937, %2871
  %2939 = udiv i32 %2937, %2872
  %2940 = call float @dx.op.unary.f32(i32 22, float %2920)  ; Frc(value)
  %2941 = call float @dx.op.unary.f32(i32 22, float %2921)  ; Frc(value)
  %2942 = uitofp i32 %2938 to float
  %2943 = uitofp i32 %2939 to float
  %2944 = fadd fast float %2940, %2942
  %2945 = fadd fast float %2941, %2943
  %2946 = uitofp i32 %2871 to float
  %2947 = uitofp i32 %2872 to float
  %2948 = fdiv fast float %2944, %2946
  %2949 = fdiv fast float %2945, %2947
  br label %2950

; <label>:2950                                    ; preds = %2925, %2852
  %2951 = phi float [ %2948, %2925 ], [ %2920, %2852 ]
  %2952 = phi float [ %2949, %2925 ], [ %2921, %2852 ]
  %2953 = and i32 %2846, 16777216
  %2954 = icmp eq i32 %2953, 0
  br i1 %2954, label %3064, label %2955

; <label>:2955                                    ; preds = %2950
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 0
  %2958 = extractvalue %dx.types.CBufRet.f32 %2956, 1
  %2959 = extractvalue %dx.types.CBufRet.f32 %2956, 2
  %2960 = fadd fast float %2957, %158
  %2961 = fadd fast float %2958, %159
  %2962 = fadd fast float %2959, %160
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2966 = icmp eq i32 %55, 65535
  br i1 %2966, label %3061, label %2967

; <label>:2967                                    ; preds = %2955
  %2968 = lshr i32 %55, 1
  %2969 = shl i32 %2968, 2
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %55, 1
  %2973 = icmp ne i32 %2972, 0
  %2974 = lshr i32 %2971, 16
  %2975 = and i32 %2971, 65535
  %2976 = select i1 %2973, i32 %2974, i32 %2975
  %2977 = icmp eq i32 %2976, 65535
  br i1 %2977, label %3057, label %2978

; <label>:2978                                    ; preds = %2967
  %2979 = mul nuw nsw i32 %2976, 40
  %2980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.ResRet.f32 %2980, 2
  %2984 = add nuw nsw i32 %2979, 12
  %2985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = extractvalue %dx.types.ResRet.f32 %2985, 1
  %2988 = extractvalue %dx.types.ResRet.f32 %2985, 2
  %2989 = add nuw nsw i32 %2979, 24
  %2990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = add nuw nsw i32 %2979, 36
  %2995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2994, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.f32 %2995, 0
  %2997 = fsub fast float %2960, %2981
  %2998 = fsub fast float %2961, %2982
  %2999 = fsub fast float %2962, %2983
  %3000 = fmul fast float %2996, %2997
  %3001 = fmul fast float %2996, %2998
  %3002 = fmul fast float %2996, %2999
  %3003 = call float @dx.op.unary.f32(i32 27, float %3000)  ; Round_ni(value)
  %3004 = call float @dx.op.unary.f32(i32 27, float %3001)  ; Round_ni(value)
  %3005 = call float @dx.op.unary.f32(i32 27, float %3002)  ; Round_ni(value)
  %3006 = fadd fast float %3003, 5.000000e-01
  %3007 = fadd fast float %3004, 5.000000e-01
  %3008 = fadd fast float %3005, 5.000000e-01
  %3009 = fmul fast float %3006, %2986
  %3010 = fmul fast float %3007, %2987
  %3011 = fmul fast float %3008, %2988
  %3012 = shl i32 %55, 2
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = add i32 %3014, 0
  %3016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3017 = call float @dx.op.unary.f32(i32 22, float %3009)  ; Frc(value)
  %3018 = call float @dx.op.unary.f32(i32 22, float %3010)  ; Frc(value)
  %3019 = call float @dx.op.unary.f32(i32 22, float %3011)  ; Frc(value)
  %3020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3016, %dx.types.Handle %49, float %3017, float %3018, float %3019, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3021 = extractvalue %dx.types.ResRet.f32 %3020, 0
  %3022 = extractvalue %dx.types.ResRet.f32 %3020, 1
  %3023 = extractvalue %dx.types.ResRet.f32 %3020, 2
  %3024 = fmul fast float %3021, 1.023000e+03
  %3025 = fmul fast float %3022, 1.023000e+03
  %3026 = fmul fast float %3023, 1.023000e+03
  %3027 = fadd fast float %3024, 5.000000e-01
  %3028 = fadd fast float %3025, 5.000000e-01
  %3029 = fadd fast float %3026, 5.000000e-01
  %3030 = call float @dx.op.unary.f32(i32 27, float %3027)  ; Round_ni(value)
  %3031 = call float @dx.op.unary.f32(i32 27, float %3028)  ; Round_ni(value)
  %3032 = call float @dx.op.unary.f32(i32 27, float %3029)  ; Round_ni(value)
  %3033 = fsub fast float %3000, %3003
  %3034 = fsub fast float %3001, %3004
  %3035 = fsub fast float %3002, %3005
  %3036 = fmul fast float %3033, 7.500000e-01
  %3037 = fmul fast float %3034, 7.500000e-01
  %3038 = fmul fast float %3035, 7.500000e-01
  %3039 = fadd fast float %3003, 1.250000e-01
  %3040 = fadd fast float %3039, %3036
  %3041 = fadd fast float %3040, %3030
  %3042 = fadd fast float %3004, 1.250000e-01
  %3043 = fadd fast float %3042, %3037
  %3044 = fadd fast float %3043, %3031
  %3045 = fadd fast float %3005, 1.250000e-01
  %3046 = fadd fast float %3045, %3038
  %3047 = fadd fast float %3046, %3032
  %3048 = fmul fast float %3041, %2991
  %3049 = fmul fast float %3044, %2992
  %3050 = fmul fast float %3047, %2993
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = add i32 %3052, 0
  %3054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3054, %dx.types.Handle %47, float %3048, float %3049, float %3050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3056 = extractvalue %dx.types.ResRet.f32 %3055, 0
  br label %3057

; <label>:3057                                    ; preds = %2978, %2967
  %3058 = phi float [ %3056, %2978 ], [ -1.000000e+00, %2967 ]
  %3059 = fadd fast float %3058, %2965
  %3060 = call float @dx.op.unary.f32(i32 7, float %3059)  ; Saturate(value)
  br label %3061

; <label>:3061                                    ; preds = %3057, %2955
  %3062 = phi float [ %3060, %3057 ], [ %2965, %2955 ]
  %3063 = fmul fast float %3062, %457
  br label %3064

; <label>:3064                                    ; preds = %3061, %2950
  %3065 = phi float [ %3063, %3061 ], [ %457, %2950 ]
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 256
  %3069 = icmp eq i32 %3068, 0
  br i1 %3069, label %3116, label %3070

; <label>:3070                                    ; preds = %3064
  %3071 = add i32 %54, 452
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = add i32 %3073, 0
  %3075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3075, %dx.types.Handle %92, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3077 = extractvalue %dx.types.ResRet.f32 %3076, 0
  %3078 = add i32 %54, 148
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = shl i32 %3080, 4
  %3082 = and i32 %3081, 32752
  %3083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3082)  ; LegacyF16ToF32(value)
  %3084 = lshr i32 %3080, 7
  %3085 = and i32 %3084, 32752
  %3086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3085)  ; LegacyF16ToF32(value)
  %3087 = fsub fast float 1.000000e+00, %3065
  %3088 = call float @dx.op.binary.f32(i32 35, float %3087, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3089 = bitcast float %3065 to i32
  %3090 = sitofp i32 %3089 to float
  %3091 = fadd fast float %3090, 0xC1CFBF8940000000
  %3092 = fmul fast float %3086, %3091
  %3093 = fadd fast float %3092, 0x41CFBF8940000000
  %3094 = fptosi float %3093 to i32
  %3095 = bitcast i32 %3094 to float
  %3096 = bitcast float %3088 to i32
  %3097 = sitofp i32 %3096 to float
  %3098 = fadd fast float %3097, 0xC1CFBF8940000000
  %3099 = fmul fast float %3098, %3086
  %3100 = fadd fast float %3099, 0x41CFBF8940000000
  %3101 = fptosi float %3100 to i32
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %3095, %3083
  %3104 = fmul fast float %3102, %3083
  %3105 = fsub fast float %3088, %3103
  %3106 = fadd fast float %3104, %3088
  %3107 = call float @dx.op.unary.f32(i32 7, float %3105)  ; Saturate(value)
  %3108 = call float @dx.op.unary.f32(i32 7, float %3106)  ; Saturate(value)
  %3109 = fsub fast float %3077, %3107
  %3110 = fsub fast float %3108, %3107
  %3111 = bitcast float %3110 to i32
  %3112 = sub nsw i32 2129859010, %3111
  %3113 = bitcast i32 %3112 to float
  %3114 = fmul fast float %3113, %3109
  %3115 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  br label %3116

; <label>:3116                                    ; preds = %3070, %3064
  %3117 = phi float [ %3115, %3070 ], [ %3065, %3064 ]
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %3119, 128
  %3121 = icmp eq i32 %3120, 0
  br i1 %3121, label %3138, label %3122

; <label>:3122                                    ; preds = %3116
  %3123 = add i32 %54, 436
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3123, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = add i32 %3125, 0
  %3127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3127, %dx.types.Handle %92, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3129 = extractvalue %dx.types.ResRet.f32 %3128, 0
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 524288
  %3133 = icmp ne i32 %3132, 0
  %3134 = fcmp fast ogt float %3129, 0x3FE0101020000000
  %3135 = select i1 %3134, float 1.000000e+00, float 0.000000e+00
  %3136 = select i1 %3133, float %3135, float %3129
  %3137 = fmul fast float %3136, %3117
  br label %3138

; <label>:3138                                    ; preds = %3122, %3116
  %3139 = phi float [ %3137, %3122 ], [ %3117, %3116 ]
  %3140 = fcmp fast ult float %3139, 0x3F70101020000000
  br i1 %3140, label %3683, label %3141

; <label>:3141                                    ; preds = %3138
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = and i32 %3143, 16
  %3145 = icmp eq i32 %3144, 0
  br i1 %3145, label %3344, label %3146

; <label>:3146                                    ; preds = %3141
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = add i32 %54, 388
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = add i32 %3151, 0
  %3153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3153, %dx.types.Handle %91, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3155 = extractvalue %dx.types.ResRet.f32 %3154, 0
  %3156 = extractvalue %dx.types.ResRet.f32 %3154, 1
  %3157 = extractvalue %dx.types.ResRet.f32 %3154, 2
  %3158 = extractvalue %dx.types.ResRet.f32 %3154, 3
  %3159 = and i32 %3148, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = lshr i32 %3148, 8
  %3162 = and i32 %3161, 255
  %3163 = uitofp i32 %3162 to float
  %3164 = fmul fast float %3158, %3160
  %3165 = fadd fast float %3164, %3163
  %3166 = fmul fast float %3165, 0x3F70101000000000
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = and i32 %3168, 512
  %3170 = icmp eq i32 %3169, 0
  br i1 %3170, label %3179, label %3171

; <label>:3171                                    ; preds = %3146
  %3172 = add i32 %54, 468
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3172, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = add i32 %3174, 0
  %3176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3176, %dx.types.Handle %92, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3178 = extractvalue %dx.types.ResRet.f32 %3177, 0
  br label %3179

; <label>:3179                                    ; preds = %3171, %3146
  %3180 = phi float [ %3178, %3171 ], [ 1.000000e+00, %3146 ]
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = and i32 %3182, 33554432
  %3184 = icmp eq i32 %3183, 0
  br i1 %3184, label %3291, label %3185

; <label>:3185                                    ; preds = %3179
  %3186 = add i32 %54, 272
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3186, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 65535
  %3190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3189)  ; LegacyF16ToF32(value)
  %3191 = lshr i32 %3188, 16
  %3192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3191)  ; LegacyF16ToF32(value)
  %3193 = add i32 %54, 276
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 65535
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = lshr i32 %3199, 24
  %3201 = uitofp i32 %3200 to float
  %3202 = fmul fast float %3201, 0x3F70101020000000
  %3203 = and i32 %3199, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3204, 0x3F70101020000000
  %3206 = lshr i32 %3199, 8
  %3207 = and i32 %3206, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101020000000
  %3210 = lshr i32 %3199, 16
  %3211 = and i32 %3210, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = add i32 %54, 268
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = lshr i32 %3216, 24
  %3218 = uitofp i32 %3217 to float
  %3219 = fmul fast float %3218, 0x3F70101020000000
  %3220 = and i32 %3216, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = lshr i32 %3216, 8
  %3224 = and i32 %3223, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = lshr i32 %3216, 16
  %3228 = and i32 %3227, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = fmul fast float %3229, 0x3F70101020000000
  %3231 = bitcast float %3155 to i32
  %3232 = ashr i32 %3231, 1
  %3233 = sub nsw i32 1597463174, %3232
  %3234 = bitcast i32 %3233 to float
  %3235 = fmul fast float %3155, 5.000000e-01
  %3236 = fmul fast float %3234, %3234
  %3237 = fmul fast float %3236, %3235
  %3238 = fsub fast float 1.500000e+00, %3237
  %3239 = fmul fast float %3234, %3155
  %3240 = fmul fast float %3239, %3238
  %3241 = bitcast float %3156 to i32
  %3242 = ashr i32 %3241, 1
  %3243 = sub nsw i32 1597463174, %3242
  %3244 = bitcast i32 %3243 to float
  %3245 = fmul fast float %3156, 5.000000e-01
  %3246 = fmul fast float %3244, %3244
  %3247 = fmul fast float %3246, %3245
  %3248 = fsub fast float 1.500000e+00, %3247
  %3249 = fmul fast float %3244, %3156
  %3250 = fmul fast float %3249, %3248
  %3251 = bitcast float %3157 to i32
  %3252 = ashr i32 %3251, 1
  %3253 = sub nsw i32 1597463174, %3252
  %3254 = bitcast i32 %3253 to float
  %3255 = fmul fast float %3157, 5.000000e-01
  %3256 = fmul fast float %3254, %3254
  %3257 = fmul fast float %3256, %3255
  %3258 = fsub fast float 1.500000e+00, %3257
  %3259 = fmul fast float %3254, %3157
  %3260 = fmul fast float %3259, %3258
  %3261 = fsub fast float %3240, %3222
  %3262 = fsub fast float %3250, %3226
  %3263 = fsub fast float %3260, %3230
  %3264 = fmul fast float %3261, %3190
  %3265 = fmul fast float %3262, %3192
  %3266 = fmul fast float %3263, %3197
  %3267 = fadd fast float %3264, %3205
  %3268 = fadd fast float %3265, %3209
  %3269 = fadd fast float %3266, %3213
  %3270 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3271 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3272 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3273 = fmul fast float %3270, %3270
  %3274 = fmul fast float %3271, %3271
  %3275 = fmul fast float %3272, %3272
  %3276 = fsub fast float %3273, %3155
  %3277 = fsub fast float %3274, %3156
  %3278 = fsub fast float %3275, %3157
  %3279 = fmul fast float %3276, %3180
  %3280 = fmul fast float %3277, %3180
  %3281 = fmul fast float %3278, %3180
  %3282 = fadd fast float %3279, %3155
  %3283 = fadd fast float %3280, %3156
  %3284 = fadd fast float %3281, %3157
  %3285 = fadd fast float %3202, %3166
  %3286 = fsub fast float %3285, %3219
  %3287 = call float @dx.op.unary.f32(i32 7, float %3286)  ; Saturate(value)
  %3288 = fsub fast float %3287, %3166
  %3289 = fmul fast float %3288, %3180
  %3290 = fadd fast float %3289, %3166
  br label %3344

; <label>:3291                                    ; preds = %3179
  %3292 = and i32 %3182, 134217728
  %3293 = icmp eq i32 %3292, 0
  br i1 %3293, label %3328, label %3294

; <label>:3294                                    ; preds = %3291
  %3295 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %3296 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3297 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %3298 = fadd fast float %3295, -5.000000e-01
  %3299 = fadd fast float %3296, -5.000000e-01
  %3300 = fadd fast float %3297, -5.000000e-01
  %3301 = fmul fast float %3298, %3180
  %3302 = fmul fast float %3299, %3180
  %3303 = fmul fast float %3300, %3180
  %3304 = fadd fast float %3301, 5.000000e-01
  %3305 = fadd fast float %3302, 5.000000e-01
  %3306 = fadd fast float %3303, 5.000000e-01
  %3307 = call float @dx.op.unary.f32(i32 24, float %3155)  ; Sqrt(value)
  %3308 = call float @dx.op.unary.f32(i32 24, float %3156)  ; Sqrt(value)
  %3309 = call float @dx.op.unary.f32(i32 24, float %3157)  ; Sqrt(value)
  %3310 = fmul fast float %3304, 2.000000e+00
  %3311 = fsub fast float 1.000000e+00, %3310
  %3312 = fmul fast float %3311, %3307
  %3313 = fadd fast float %3312, %3310
  %3314 = fmul fast float %3313, %3307
  %3315 = fmul fast float %3305, 2.000000e+00
  %3316 = fsub fast float 1.000000e+00, %3315
  %3317 = fmul fast float %3316, %3308
  %3318 = fadd fast float %3317, %3315
  %3319 = fmul fast float %3318, %3308
  %3320 = fmul fast float %3306, 2.000000e+00
  %3321 = fsub fast float 1.000000e+00, %3320
  %3322 = fmul fast float %3321, %3309
  %3323 = fadd fast float %3322, %3320
  %3324 = fmul fast float %3323, %3309
  %3325 = fmul fast float %3314, %3314
  %3326 = fmul fast float %3319, %3319
  %3327 = fmul fast float %3324, %3324
  br label %3344

; <label>:3328                                    ; preds = %3291
  %3329 = fmul fast float %375, %375
  %3330 = fmul fast float %379, %379
  %3331 = fmul fast float %383, %383
  %3332 = fadd fast float %3329, -1.000000e+00
  %3333 = fadd fast float %3330, -1.000000e+00
  %3334 = fadd fast float %3331, -1.000000e+00
  %3335 = fmul fast float %3180, %3332
  %3336 = fmul fast float %3180, %3333
  %3337 = fmul fast float %3180, %3334
  %3338 = fadd fast float %3335, 1.000000e+00
  %3339 = fadd fast float %3336, 1.000000e+00
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fmul fast float %3338, %3155
  %3342 = fmul fast float %3339, %3156
  %3343 = fmul fast float %3340, %3157
  br label %3344

; <label>:3344                                    ; preds = %3328, %3294, %3185, %3141
  %3345 = phi float [ %3290, %3185 ], [ %3166, %3294 ], [ %3166, %3328 ], [ 0x3FA23C0BE0000000, %3141 ]
  %3346 = phi float [ %3282, %3185 ], [ %3325, %3294 ], [ %3341, %3328 ], [ 1.000000e+00, %3141 ]
  %3347 = phi float [ %3283, %3185 ], [ %3326, %3294 ], [ %3342, %3328 ], [ 1.000000e+00, %3141 ]
  %3348 = phi float [ %3284, %3185 ], [ %3327, %3294 ], [ %3343, %3328 ], [ 1.000000e+00, %3141 ]
  %3349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3350 = extractvalue %dx.types.CBufRet.i32 %3349, 1
  %3351 = and i32 %3350, 1
  %3352 = icmp ne i32 %3351, 0
  %3353 = add i32 %54, 356
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = and i32 %3355, 32
  %3357 = icmp ne i32 %3356, 0
  %3358 = and i1 %3352, %3357
  %3359 = select i1 %3358, float 1.000000e+00, float %3346
  %3360 = select i1 %3358, float 0x3FD3333340000000, float %3347
  %3361 = select i1 %3358, float 0x3FD3333340000000, float %3348
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = and i32 %3363, 32
  %3365 = icmp eq i32 %3364, 0
  br i1 %3365, label %3438, label %3366

; <label>:3366                                    ; preds = %3344
  %3367 = add i32 %54, 140
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = add i32 %54, 404
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = add i32 %3372, 0
  %3374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3375 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3374, %dx.types.Handle %91, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3379 = extractvalue %dx.types.ResRet.f32 %3375, 3
  %3380 = and i32 %3369, 255
  %3381 = uitofp i32 %3380 to float
  %3382 = lshr i32 %3369, 8
  %3383 = and i32 %3382, 255
  %3384 = uitofp i32 %3383 to float
  %3385 = lshr i32 %3369, 16
  %3386 = and i32 %3385, 255
  %3387 = uitofp i32 %3386 to float
  %3388 = fmul fast float %3387, 0x3F70101000000000
  %3389 = fmul fast float %3376, %3381
  %3390 = fadd fast float %3389, %3384
  %3391 = fmul fast float %3390, 0x3F70101000000000
  %3392 = fadd fast float %3377, -5.000000e-01
  %3393 = fadd fast float %3379, -5.000000e-01
  %3394 = fmul fast float %3392, %3388
  %3395 = fmul fast float %3393, %3388
  %3396 = fadd fast float %3394, 5.000000e-01
  %3397 = fadd fast float %3395, 5.000000e-01
  %3398 = fmul fast float %3396, 2.000000e+00
  %3399 = fadd fast float %3398, -1.000000e+00
  %3400 = fmul fast float %3397, 2.000000e+00
  %3401 = fadd fast float %3400, -1.000000e+00
  %3402 = fadd fast float %3399, %3401
  %3403 = fmul fast float %3402, 5.000000e-01
  %3404 = fsub fast float %3399, %3401
  %3405 = fmul fast float %3404, 5.000000e-01
  %3406 = call float @dx.op.unary.f32(i32 6, float %3403)  ; FAbs(value)
  %3407 = fsub fast float 1.000000e+00, %3406
  %3408 = call float @dx.op.unary.f32(i32 6, float %3405)  ; FAbs(value)
  %3409 = fsub fast float %3407, %3408
  %3410 = call float @dx.op.dot3.f32(i32 55, float %3403, float %3405, float %3409, float %3403, float %3405, float %3409)  ; Dot3(ax,ay,az,bx,by,bz)
  %3411 = call float @dx.op.unary.f32(i32 25, float %3410)  ; Rsqrt(value)
  %3412 = fmul fast float %3403, %3411
  %3413 = fmul fast float %3405, %3411
  %3414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.i32 %3414, 0
  %3416 = and i32 %3415, 67108864
  %3417 = icmp eq i32 %3416, 0
  br i1 %3417, label %3434, label %3418

; <label>:3418                                    ; preds = %3366
  %3419 = add i32 %54, 328
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 65535
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 65535
  %3427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3426)  ; LegacyF16ToF32(value)
  %3428 = lshr i32 %3421, 16
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = fsub fast float %3391, %3429
  %3431 = fmul fast float %3430, %3423
  %3432 = fadd fast float %3431, %3427
  %3433 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  br label %3434

; <label>:3434                                    ; preds = %3418, %3366
  %3435 = phi float [ %3433, %3418 ], [ %3391, %3366 ]
  %3436 = call float @dx.op.dot2.f32(i32 54, float %3412, float %3413, float %2855, float %2856)  ; Dot2(ax,ay,bx,by)
  %3437 = call float @dx.op.dot2.f32(i32 54, float %3412, float %3413, float %2857, float %2858)  ; Dot2(ax,ay,bx,by)
  br label %3438

; <label>:3438                                    ; preds = %3434, %3344
  %3439 = phi float [ %3435, %3434 ], [ 0x3FD6666660000000, %3344 ]
  %3440 = phi float [ %3436, %3434 ], [ 0.000000e+00, %3344 ]
  %3441 = phi float [ %3437, %3434 ], [ 0.000000e+00, %3344 ]
  %3442 = phi float [ %3378, %3434 ], [ 1.000000e+00, %3344 ]
  %3443 = add i32 %54, 208
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = lshr i32 %3445, 22
  %3447 = shl nuw nsw i32 %3446, 5
  %3448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3447)  ; LegacyF16ToF32(value)
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = and i32 %3450, 64
  %3452 = icmp eq i32 %3451, 0
  br i1 %3452, label %3486, label %3453

; <label>:3453                                    ; preds = %3438
  %3454 = add i32 %54, 420
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = add i32 %3456, 0
  %3458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = and i32 %3460, 131072
  %3462 = icmp eq i32 %3461, 0
  %3463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3458, %dx.types.Handle %91, float %2951, float %2952, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = extractvalue %dx.types.ResRet.f32 %3463, 1
  %3466 = extractvalue %dx.types.ResRet.f32 %3463, 2
  %3467 = fmul fast float %3464, %363
  %3468 = fmul fast float %3465, %366
  %3469 = fmul fast float %3466, %369
  br i1 %3462, label %3476, label %3470

; <label>:3470                                    ; preds = %3453
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 0
  %3473 = fmul fast float %3472, %3467
  %3474 = fmul fast float %3472, %3468
  %3475 = fmul fast float %3472, %3469
  br label %3476

; <label>:3476                                    ; preds = %3470, %3453
  %3477 = phi float [ %3473, %3470 ], [ %3467, %3453 ]
  %3478 = phi float [ %3474, %3470 ], [ %3468, %3453 ]
  %3479 = phi float [ %3475, %3470 ], [ %3469, %3453 ]
  %3480 = fmul fast float %3477, %3448
  %3481 = select i1 %220, float %3480, float %3477
  %3482 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3478, float %3479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3483 = select i1 %220, float 0.000000e+00, float %3477
  %3484 = select i1 %220, float %3482, float %3478
  %3485 = select i1 %220, float 0.000000e+00, float %3479
  br label %3486

; <label>:3486                                    ; preds = %3476, %3438
  %3487 = phi float [ %3483, %3476 ], [ 0.000000e+00, %3438 ]
  %3488 = phi float [ %3484, %3476 ], [ 0.000000e+00, %3438 ]
  %3489 = phi float [ %3485, %3476 ], [ 0.000000e+00, %3438 ]
  %3490 = add i32 %54, 144
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %3492, 255
  %3494 = uitofp i32 %3493 to float
  %3495 = lshr i32 %3492, 8
  %3496 = and i32 %3495, 255
  %3497 = uitofp i32 %3496 to float
  %3498 = call float @dx.op.dot3.f32(i32 55, float %3359, float %3360, float %3361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3499 = fmul fast float %3497, %3498
  %3500 = fadd fast float %3499, %3494
  %3501 = fmul fast float %3500, 0x3F70101020000000
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  br i1 %2843, label %3503, label %3511

; <label>:3503                                    ; preds = %3486
  %3504 = fsub fast float 1.000000e+00, %3139
  %3505 = fmul fast float %3504, %2832
  %3506 = fmul fast float %3504, %2833
  %3507 = fmul fast float %3504, %2834
  %3508 = fmul fast float %3504, %2835
  %3509 = fmul fast float %3504, %2836
  %3510 = fmul fast float %3504, %2837
  br label %3511

; <label>:3511                                    ; preds = %3503, %3486
  %3512 = phi float [ %3505, %3503 ], [ %2832, %3486 ]
  %3513 = phi float [ %3506, %3503 ], [ %2833, %3486 ]
  %3514 = phi float [ %3507, %3503 ], [ %2834, %3486 ]
  %3515 = phi float [ %3508, %3503 ], [ %2835, %3486 ]
  %3516 = phi float [ %3509, %3503 ], [ %2836, %3486 ]
  %3517 = phi float [ %3510, %3503 ], [ %2837, %3486 ]
  %3518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = and i32 %3519, 3
  %3521 = icmp eq i32 %3520, 3
  br i1 %3521, label %3600, label %3522

; <label>:3522                                    ; preds = %3511
  %3523 = and i32 %3519, 16
  %3524 = icmp ne i32 %3523, 0
  %3525 = select i1 %3524, float %3139, float 0.000000e+00
  %3526 = icmp eq i32 %3520, 0
  br i1 %3526, label %3527, label %3555

; <label>:3527                                    ; preds = %3522
  %3528 = and i32 %3519, 64
  %3529 = icmp ne i32 %3528, 0
  %3530 = select i1 %3529, float %3139, float 0.000000e+00
  %3531 = fsub fast float %3359, %3512
  %3532 = fsub fast float %3360, %3513
  %3533 = fsub fast float %3361, %3514
  %3534 = fmul fast float %3525, %3531
  %3535 = fmul fast float %3525, %3532
  %3536 = fmul fast float %3525, %3533
  %3537 = fadd fast float %3534, %3512
  %3538 = fadd fast float %3535, %3513
  %3539 = fadd fast float %3536, %3514
  %3540 = fsub fast float %3345, %2838
  %3541 = fmul fast float %3525, %3540
  %3542 = fadd fast float %3541, %2838
  %3543 = fsub fast float %3487, %3515
  %3544 = fsub fast float %3488, %3516
  %3545 = fsub fast float %3489, %3517
  %3546 = fmul fast float %3530, %3543
  %3547 = fmul fast float %3530, %3544
  %3548 = fmul fast float %3530, %3545
  %3549 = fadd fast float %3546, %3515
  %3550 = fadd fast float %3547, %3516
  %3551 = fadd fast float %3548, %3517
  %3552 = fsub fast float %3502, %2841
  %3553 = fmul fast float %3525, %3552
  %3554 = fadd fast float %3553, %2841
  br label %3600

; <label>:3555                                    ; preds = %3522
  %3556 = icmp eq i32 %3520, 1
  br i1 %3556, label %3557, label %3570

; <label>:3557                                    ; preds = %3555
  %3558 = fadd fast float %3359, -1.000000e+00
  %3559 = fadd fast float %3360, -1.000000e+00
  %3560 = fadd fast float %3361, -1.000000e+00
  %3561 = fmul fast float %3525, %3558
  %3562 = fmul fast float %3525, %3559
  %3563 = fmul fast float %3525, %3560
  %3564 = fadd fast float %3561, 1.000000e+00
  %3565 = fadd fast float %3562, 1.000000e+00
  %3566 = fadd fast float %3563, 1.000000e+00
  %3567 = fmul fast float %3564, %3512
  %3568 = fmul fast float %3565, %3513
  %3569 = fmul fast float %3566, %3514
  br label %3600

; <label>:3570                                    ; preds = %3555
  %3571 = icmp eq i32 %3520, 2
  br i1 %3571, label %3572, label %3600

; <label>:3572                                    ; preds = %3570
  %3573 = call float @dx.op.unary.f32(i32 24, float %3359)  ; Sqrt(value)
  %3574 = call float @dx.op.unary.f32(i32 24, float %3360)  ; Sqrt(value)
  %3575 = call float @dx.op.unary.f32(i32 24, float %3361)  ; Sqrt(value)
  %3576 = fadd fast float %3573, -5.000000e-01
  %3577 = fadd fast float %3574, -5.000000e-01
  %3578 = fadd fast float %3575, -5.000000e-01
  %3579 = fmul fast float %3576, %3525
  %3580 = fmul fast float %3577, %3525
  %3581 = fmul fast float %3578, %3525
  %3582 = fadd fast float %3579, 5.000000e-01
  %3583 = fadd fast float %3580, 5.000000e-01
  %3584 = fadd fast float %3581, 5.000000e-01
  %3585 = fmul fast float %3582, 2.000000e+00
  %3586 = fsub fast float 1.000000e+00, %3585
  %3587 = fmul fast float %3586, %3512
  %3588 = fadd fast float %3587, %3585
  %3589 = fmul fast float %3588, %3512
  %3590 = fmul fast float %3583, 2.000000e+00
  %3591 = fsub fast float 1.000000e+00, %3590
  %3592 = fmul fast float %3591, %3513
  %3593 = fadd fast float %3592, %3590
  %3594 = fmul fast float %3593, %3513
  %3595 = fmul fast float %3584, 2.000000e+00
  %3596 = fsub fast float 1.000000e+00, %3595
  %3597 = fmul fast float %3596, %3514
  %3598 = fadd fast float %3597, %3595
  %3599 = fmul fast float %3598, %3514
  br label %3600

; <label>:3600                                    ; preds = %3572, %3570, %3557, %3527, %3511
  %3601 = phi float [ %3512, %3511 ], [ %3589, %3572 ], [ %3512, %3570 ], [ %3567, %3557 ], [ %3537, %3527 ]
  %3602 = phi float [ %3513, %3511 ], [ %3594, %3572 ], [ %3513, %3570 ], [ %3568, %3557 ], [ %3538, %3527 ]
  %3603 = phi float [ %3514, %3511 ], [ %3599, %3572 ], [ %3514, %3570 ], [ %3569, %3557 ], [ %3539, %3527 ]
  %3604 = phi float [ %3515, %3511 ], [ %3515, %3572 ], [ %3515, %3570 ], [ %3515, %3557 ], [ %3549, %3527 ]
  %3605 = phi float [ %3516, %3511 ], [ %3516, %3572 ], [ %3516, %3570 ], [ %3516, %3557 ], [ %3550, %3527 ]
  %3606 = phi float [ %3517, %3511 ], [ %3517, %3572 ], [ %3517, %3570 ], [ %3517, %3557 ], [ %3551, %3527 ]
  %3607 = phi float [ %2838, %3511 ], [ %2838, %3572 ], [ %2838, %3570 ], [ %2838, %3557 ], [ %3542, %3527 ]
  %3608 = phi float [ %2841, %3511 ], [ %2841, %3572 ], [ %2841, %3570 ], [ %2841, %3557 ], [ %3554, %3527 ]
  %3609 = and i32 %3519, 12
  %3610 = icmp eq i32 %3609, 12
  br i1 %3610, label %3683, label %3611

; <label>:3611                                    ; preds = %3600
  %3612 = and i32 %3519, 2097184
  %3613 = icmp eq i32 %3612, 2097184
  %3614 = select i1 %3613, float %3139, float 0.000000e+00
  %3615 = and i32 %3519, 4194336
  %3616 = icmp eq i32 %3615, 4194336
  %3617 = select i1 %3616, float %3139, float 0.000000e+00
  %3618 = and i32 %3519, 8388640
  %3619 = icmp eq i32 %3618, 8388640
  %3620 = select i1 %3619, float %3139, float 0.000000e+00
  %3621 = icmp eq i32 %3609, 0
  br i1 %3621, label %3622, label %3635

; <label>:3622                                    ; preds = %3611
  %3623 = fsub fast float %3440, %2830
  %3624 = fsub fast float %3441, %2831
  %3625 = fmul fast float %3614, %3623
  %3626 = fmul fast float %3614, %3624
  %3627 = fadd fast float %3625, %2830
  %3628 = fadd fast float %3626, %2831
  %3629 = fsub fast float %3442, %2840
  %3630 = fmul fast float %3617, %3629
  %3631 = fadd fast float %3630, %2840
  %3632 = fsub fast float %3439, %2839
  %3633 = fmul fast float %3620, %3632
  %3634 = fadd fast float %3633, %2839
  br label %3683

; <label>:3635                                    ; preds = %3611
  %3636 = icmp eq i32 %3609, 4
  br i1 %3636, label %3637, label %3669

; <label>:3637                                    ; preds = %3635
  %3638 = fmul fast float %3614, %3440
  %3639 = fmul fast float %3614, %3441
  %3640 = fadd fast float %3638, %2830
  %3641 = fadd fast float %3639, %2831
  %3642 = call float @dx.op.binary.f32(i32 36, float %2840, float %3442)  ; FMin(a,b)
  %3643 = fsub fast float %3642, %2840
  %3644 = fmul fast float %3643, %3617
  %3645 = fadd fast float %3644, %2840
  %3646 = fadd fast float %3439, %2839
  %3647 = fmul fast float %3646, 0x3FF337FAE0000000
  %3648 = fmul fast float %2839, %2839
  %3649 = fmul fast float %3439, %3439
  %3650 = fadd fast float %3649, %3648
  %3651 = fmul fast float %3650, 0x3FE5152B00000000
  %3652 = fmul fast float %2839, 0xBFCC1F85E0000000
  %3653 = fmul fast float %3652, %3439
  %3654 = fadd fast float %3653, 0xBFE1363700000000
  %3655 = fadd fast float %3654, %3647
  %3656 = fsub fast float %3655, %3651
  %3657 = fmul fast float %3646, 0x3FBA6F0D00000000
  %3658 = fmul fast float %3650, 0x3FD0432880000000
  %3659 = fmul fast float %2839, 0xBFEF110800000000
  %3660 = fmul fast float %3659, %3439
  %3661 = fadd fast float %3660, 1.000000e+00
  %3662 = fsub fast float %3661, %3657
  %3663 = fadd fast float %3662, %3658
  %3664 = fdiv fast float %3656, %3663
  %3665 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3666 = fsub fast float %3665, %2839
  %3667 = fmul fast float %3666, %3620
  %3668 = fadd fast float %3667, %2839
  br label %3683

; <label>:3669                                    ; preds = %3635
  %3670 = icmp eq i32 %3609, 8
  br i1 %3670, label %3671, label %3683

; <label>:3671                                    ; preds = %3669
  %3672 = fmul fast float %3614, %3440
  %3673 = fmul fast float %3614, %3441
  %3674 = fadd fast float %3672, %2830
  %3675 = fadd fast float %3673, %2831
  %3676 = call float @dx.op.binary.f32(i32 36, float %2840, float %3442)  ; FMin(a,b)
  %3677 = fsub fast float %3676, %2840
  %3678 = fmul fast float %3677, %3617
  %3679 = fadd fast float %3678, %2840
  %3680 = fsub fast float %3439, %2839
  %3681 = fmul fast float %3620, %3680
  %3682 = fadd fast float %3681, %2839
  br label %3683

; <label>:3683                                    ; preds = %3671, %3669, %3637, %3622, %3600, %3138, %2842, %2829
  %3684 = phi float [ %2830, %3600 ], [ %2830, %3138 ], [ %2830, %2829 ], [ %2830, %2842 ], [ %3627, %3622 ], [ %3640, %3637 ], [ %2830, %3669 ], [ %3674, %3671 ]
  %3685 = phi float [ %2831, %3600 ], [ %2831, %3138 ], [ %2831, %2829 ], [ %2831, %2842 ], [ %3628, %3622 ], [ %3641, %3637 ], [ %2831, %3669 ], [ %3675, %3671 ]
  %3686 = phi float [ %3601, %3600 ], [ %2832, %3138 ], [ %2832, %2829 ], [ %2832, %2842 ], [ %3601, %3622 ], [ %3601, %3637 ], [ %3601, %3669 ], [ %3601, %3671 ]
  %3687 = phi float [ %3602, %3600 ], [ %2833, %3138 ], [ %2833, %2829 ], [ %2833, %2842 ], [ %3602, %3622 ], [ %3602, %3637 ], [ %3602, %3669 ], [ %3602, %3671 ]
  %3688 = phi float [ %3603, %3600 ], [ %2834, %3138 ], [ %2834, %2829 ], [ %2834, %2842 ], [ %3603, %3622 ], [ %3603, %3637 ], [ %3603, %3669 ], [ %3603, %3671 ]
  %3689 = phi float [ %3604, %3600 ], [ %2835, %3138 ], [ %2835, %2829 ], [ %2835, %2842 ], [ %3604, %3622 ], [ %3604, %3637 ], [ %3604, %3669 ], [ %3604, %3671 ]
  %3690 = phi float [ %3605, %3600 ], [ %2836, %3138 ], [ %2836, %2829 ], [ %2836, %2842 ], [ %3605, %3622 ], [ %3605, %3637 ], [ %3605, %3669 ], [ %3605, %3671 ]
  %3691 = phi float [ %3606, %3600 ], [ %2837, %3138 ], [ %2837, %2829 ], [ %2837, %2842 ], [ %3606, %3622 ], [ %3606, %3637 ], [ %3606, %3669 ], [ %3606, %3671 ]
  %3692 = phi float [ %3607, %3600 ], [ %2838, %3138 ], [ %2838, %2829 ], [ %2838, %2842 ], [ %3607, %3622 ], [ %3607, %3637 ], [ %3607, %3669 ], [ %3607, %3671 ]
  %3693 = phi float [ %2839, %3600 ], [ %2839, %3138 ], [ %2839, %2829 ], [ %2839, %2842 ], [ %3634, %3622 ], [ %3668, %3637 ], [ %2839, %3669 ], [ %3682, %3671 ]
  %3694 = phi float [ %2840, %3600 ], [ %2840, %3138 ], [ %2840, %2829 ], [ %2840, %2842 ], [ %3631, %3622 ], [ %3645, %3637 ], [ %2840, %3669 ], [ %3679, %3671 ]
  %3695 = phi float [ %3608, %3600 ], [ %2841, %3138 ], [ %2841, %2829 ], [ %2841, %2842 ], [ %3608, %3622 ], [ %3608, %3637 ], [ %3608, %3669 ], [ %3608, %3671 ]
  %3696 = add i32 %54, 360
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = bitcast i32 %3698 to float
  %3700 = fcmp fast oge float %3699, 0.000000e+00
  %3701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3702 = extractvalue %dx.types.CBufRet.f32 %3701, 0
  %3703 = select i1 %3700, float %3699, float %3702
  %3704 = call float @dx.op.dot2.f32(i32 54, float %3684, float %3685, float %3684, float %3685)  ; Dot2(ax,ay,bx,by)
  %3705 = fmul fast float %3704, 0x3FE3333340000000
  %3706 = fsub fast float 1.000000e+00, %3705
  %3707 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3685, float %3706, float %3684, float %3685, float %3706)  ; Dot3(ax,ay,az,bx,by,bz)
  %3708 = call float @dx.op.unary.f32(i32 25, float %3707)  ; Rsqrt(value)
  %3709 = fmul fast float %3708, %3684
  %3710 = fmul fast float %3708, %3685
  %3711 = fmul fast float %3706, %3708
  %3712 = fmul fast float %3711, %102
  %3713 = fmul fast float %3711, %103
  %3714 = fmul fast float %3711, %104
  %3715 = fmul fast float %3709, %70
  %3716 = fmul fast float %3709, %71
  %3717 = fmul fast float %3709, %72
  %3718 = fadd fast float %3712, %3715
  %3719 = fadd fast float %3713, %3716
  %3720 = fadd fast float %3714, %3717
  %3721 = fmul fast float %114, %3710
  %3722 = fmul fast float %115, %3710
  %3723 = fmul fast float %116, %3710
  %3724 = fadd fast float %3718, %3721
  %3725 = fadd fast float %3719, %3722
  %3726 = fadd fast float %3720, %3723
  %3727 = call float @dx.op.dot3.f32(i32 55, float %3724, float %3725, float %3726, float %3724, float %3725, float %3726)  ; Dot3(ax,ay,az,bx,by,bz)
  %3728 = call float @dx.op.unary.f32(i32 25, float %3727)  ; Rsqrt(value)
  %3729 = fmul fast float %3724, %3728
  %3730 = fmul fast float %3725, %3728
  %3731 = fmul fast float %3726, %3728
  %3732 = and i32 %56, 1
  %3733 = icmp eq i32 %3732, 0
  br i1 %3733, label %3734, label %4242

; <label>:3734                                    ; preds = %3683
  %3735 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %3736 = call float @dx.op.unary.f32(i32 83, float %159)  ; DerivCoarseX(value)
  %3737 = call float @dx.op.unary.f32(i32 83, float %160)  ; DerivCoarseX(value)
  %3738 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %3739 = call float @dx.op.unary.f32(i32 84, float %159)  ; DerivCoarseY(value)
  %3740 = call float @dx.op.unary.f32(i32 84, float %160)  ; DerivCoarseY(value)
  %3741 = fadd fast float %3735, %158
  %3742 = fadd fast float %3736, %159
  %3743 = fadd fast float %3737, %160
  %3744 = fadd fast float %3738, %158
  %3745 = fadd fast float %3739, %159
  %3746 = fadd fast float %3740, %160
  %3747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3747, 0
  %3749 = extractvalue %dx.types.CBufRet.f32 %3747, 1
  %3750 = extractvalue %dx.types.CBufRet.f32 %3747, 2
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 2
  %3753 = extractvalue %dx.types.CBufRet.f32 %3751, 3
  %3754 = fmul fast float %3748, %95
  %3755 = fmul fast float %3754, %3752
  %3756 = fmul fast float %3749, %96
  %3757 = fmul fast float %3756, %3753
  %3758 = fptoui float %3755 to i32
  %3759 = fptoui float %3757 to i32
  %3760 = fadd fast float %3748, -1.000000e+00
  %3761 = fadd fast float %3749, -1.000000e+00
  %3762 = fptoui float %3760 to i32
  %3763 = fptoui float %3761 to i32
  %3764 = call i32 @dx.op.binary.i32(i32 40, i32 %3758, i32 %3762)  ; UMin(a,b)
  %3765 = call i32 @dx.op.binary.i32(i32 40, i32 %3759, i32 %3763)  ; UMin(a,b)
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 2
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 3
  %3769 = fmul fast float %3767, %86
  %3770 = fsub fast float %3769, %3768
  %3771 = fadd fast float %3750, -1.000000e+00
  %3772 = call float @dx.op.binary.f32(i32 36, float %3770, float %3771)  ; FMin(a,b)
  %3773 = fptoui float %3772 to i32
  %3774 = fptoui float %3748 to i32
  %3775 = fptoui float %3749 to i32
  %3776 = mul i32 %3773, %3775
  %3777 = add i32 %3776, %3765
  %3778 = mul i32 %3777, %3774
  %3779 = add i32 %3778, %3764
  %3780 = shl i32 %3779, 2
  %3781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3782 = extractvalue %dx.types.ResRet.i32 %3781, 0
  %3783 = and i32 %3782, 1023
  %3784 = lshr i32 %3782, 10
  %3785 = icmp eq i32 %3783, 0
  br i1 %3785, label %4211, label %3786

; <label>:3786                                    ; preds = %3734
  %3787 = and i32 %3782, 1023
  br label %3788

; <label>:3788                                    ; preds = %3914, %3786
  %3789 = phi i32 [ %3864, %3914 ], [ 0, %3786 ]
  %3790 = phi float [ %3915, %3914 ], [ 0.000000e+00, %3786 ]
  %3791 = phi float [ %3916, %3914 ], [ %3703, %3786 ]
  %3792 = phi float [ %3917, %3914 ], [ %3695, %3786 ]
  %3793 = phi float [ %3918, %3914 ], [ 0.000000e+00, %3786 ]
  %3794 = phi float [ %3919, %3914 ], [ 0.000000e+00, %3786 ]
  %3795 = phi float [ %3920, %3914 ], [ %3689, %3786 ]
  %3796 = phi float [ %3921, %3914 ], [ %3690, %3786 ]
  %3797 = phi float [ %3922, %3914 ], [ %3691, %3786 ]
  %3798 = phi float [ %3923, %3914 ], [ %3729, %3786 ]
  %3799 = phi float [ %3924, %3914 ], [ %3730, %3786 ]
  %3800 = phi float [ %3925, %3914 ], [ %3731, %3786 ]
  %3801 = phi float [ %3926, %3914 ], [ %3694, %3786 ]
  %3802 = phi float [ %3927, %3914 ], [ %3693, %3786 ]
  %3803 = phi float [ %3928, %3914 ], [ 0.000000e+00, %3786 ]
  %3804 = phi float [ %3929, %3914 ], [ %3692, %3786 ]
  %3805 = phi float [ %3930, %3914 ], [ %3686, %3786 ]
  %3806 = phi float [ %3931, %3914 ], [ %3687, %3786 ]
  %3807 = phi float [ %3932, %3914 ], [ %3688, %3786 ]
  %3808 = add nuw nsw i32 %3789, %3784
  %3809 = shl i32 %3808, 2
  %3810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.i32 %3810, 0
  %3812 = shl i32 %3811, 8
  %3813 = or i32 %3812, 48
  %3814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.f32 %3814, 1
  %3817 = extractvalue %dx.types.ResRet.f32 %3814, 2
  %3818 = extractvalue %dx.types.ResRet.f32 %3814, 3
  %3819 = or i32 %3812, 64
  %3820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.i32 %3820, 0
  %3822 = extractvalue %dx.types.ResRet.i32 %3820, 1
  %3823 = or i32 %3812, 80
  %3824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 3
  %3827 = or i32 %3812, 96
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3832 = extractvalue %dx.types.ResRet.f32 %3828, 3
  %3833 = or i32 %3812, 112
  %3834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3835 = extractvalue %dx.types.ResRet.f32 %3834, 2
  %3836 = or i32 %3812, 128
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3842 = or i32 %3812, 144
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = extractvalue %dx.types.ResRet.f32 %3843, 3
  %3848 = or i32 %3812, 160
  %3849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.ResRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.ResRet.f32 %3849, 2
  %3853 = extractvalue %dx.types.ResRet.f32 %3849, 3
  %3854 = or i32 %3812, 192
  %3855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.i32 %3855, 0
  %3857 = or i32 %3812, 208
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = or i32 %3812, 248
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = add nuw nsw i32 %3789, 1
  %3865 = bitcast float %3818 to i32
  %3866 = and i32 %3865, 512
  %3867 = icmp eq i32 %3866, 0
  %3868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.f32 %3868, 0
  %3870 = extractvalue %dx.types.ResRet.f32 %3868, 1
  %3871 = extractvalue %dx.types.ResRet.f32 %3868, 2
  %3872 = extractvalue %dx.types.ResRet.f32 %3868, 3
  %3873 = call float @dx.op.dot4.f32(i32 56, float %3869, float %3870, float %3871, float %3872, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3874 = or i32 %3812, 16
  %3875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = extractvalue %dx.types.ResRet.f32 %3875, 1
  %3878 = extractvalue %dx.types.ResRet.f32 %3875, 2
  %3879 = extractvalue %dx.types.ResRet.f32 %3875, 3
  %3880 = call float @dx.op.dot4.f32(i32 56, float %3876, float %3877, float %3878, float %3879, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3881 = or i32 %3812, 32
  %3882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.ResRet.f32 %3882, 1
  %3885 = extractvalue %dx.types.ResRet.f32 %3882, 2
  %3886 = extractvalue %dx.types.ResRet.f32 %3882, 3
  %3887 = call float @dx.op.dot4.f32(i32 56, float %3883, float %3884, float %3885, float %3886, float %158, float %159, float %160, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3888 = call float @dx.op.unary.f32(i32 27, float %3873)  ; Round_ni(value)
  %3889 = call float @dx.op.unary.f32(i32 6, float %3888)  ; FAbs(value)
  %3890 = call float @dx.op.unary.f32(i32 27, float %3880)  ; Round_ni(value)
  %3891 = call float @dx.op.unary.f32(i32 6, float %3890)  ; FAbs(value)
  %3892 = call float @dx.op.unary.f32(i32 6, float %3887)  ; FAbs(value)
  %3893 = call float @dx.op.unary.f32(i32 27, float %3892)  ; Round_ni(value)
  %3894 = fadd fast float %3891, %3889
  %3895 = fadd fast float %3894, %3893
  %3896 = fcmp fast oeq float %3895, 0.000000e+00
  %3897 = call float @dx.op.dot4.f32(i32 56, float %3869, float %3870, float %3871, float %3872, float %3741, float %3742, float %3743, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3898 = call float @dx.op.dot4.f32(i32 56, float %3876, float %3877, float %3878, float %3879, float %3741, float %3742, float %3743, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3899 = call float @dx.op.dot4.f32(i32 56, float %3869, float %3870, float %3871, float %3872, float %3744, float %3745, float %3746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3900 = call float @dx.op.dot4.f32(i32 56, float %3876, float %3877, float %3878, float %3879, float %3744, float %3745, float %3746, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3901 = fsub fast float %3897, %3873
  %3902 = fsub fast float %3899, %3873
  %3903 = fsub fast float %3898, %3880
  %3904 = fsub fast float %3900, %3880
  %3905 = call float @dx.op.dot3.f32(i32 55, float %3815, float %3816, float %3817, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 2
  %3908 = fadd fast float %3907, %3905
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3911 = fcmp fast ogt float %3909, %3910
  %3912 = and i1 %3896, %3911
  %3913 = and i1 %3867, %3912
  br i1 %3913, label %3934, label %3914

; <label>:3914                                    ; preds = %4197, %4015, %3934, %3788
  %3915 = phi float [ %3790, %3934 ], [ %4018, %4015 ], [ %4018, %4197 ], [ %3790, %3788 ]
  %3916 = phi float [ %3791, %3934 ], [ %3791, %4015 ], [ %4172, %4197 ], [ %3791, %3788 ]
  %3917 = phi float [ %3792, %3934 ], [ %3792, %4015 ], [ %4170, %4197 ], [ %3792, %3788 ]
  %3918 = phi float [ %3793, %3934 ], [ %3793, %4015 ], [ %4142, %4197 ], [ %3793, %3788 ]
  %3919 = phi float [ %3794, %3934 ], [ %3794, %4015 ], [ %4140, %4197 ], [ %3794, %3788 ]
  %3920 = phi float [ %3795, %3934 ], [ %3795, %4015 ], [ %4207, %4197 ], [ %3795, %3788 ]
  %3921 = phi float [ %3796, %3934 ], [ %3796, %4015 ], [ %4208, %4197 ], [ %3796, %3788 ]
  %3922 = phi float [ %3797, %3934 ], [ %3797, %4015 ], [ %4209, %4197 ], [ %3797, %3788 ]
  %3923 = phi float [ %3798, %3934 ], [ %3798, %4015 ], [ %4121, %4197 ], [ %3798, %3788 ]
  %3924 = phi float [ %3799, %3934 ], [ %3799, %4015 ], [ %4122, %4197 ], [ %3799, %3788 ]
  %3925 = phi float [ %3800, %3934 ], [ %3800, %4015 ], [ %4123, %4197 ], [ %3800, %3788 ]
  %3926 = phi float [ %3801, %3934 ], [ %3801, %4015 ], [ %4150, %4197 ], [ %3801, %3788 ]
  %3927 = phi float [ %3802, %3934 ], [ %3802, %4015 ], [ %4147, %4197 ], [ %3802, %3788 ]
  %3928 = phi float [ %3803, %3934 ], [ %3803, %4015 ], [ %4144, %4197 ], [ %3803, %3788 ]
  %3929 = phi float [ %3804, %3934 ], [ %3804, %4015 ], [ %4138, %4197 ], [ %3804, %3788 ]
  %3930 = phi float [ %3805, %3934 ], [ %3805, %4015 ], [ %4133, %4197 ], [ %3805, %3788 ]
  %3931 = phi float [ %3806, %3934 ], [ %3806, %4015 ], [ %4134, %4197 ], [ %3806, %3788 ]
  %3932 = phi float [ %3807, %3934 ], [ %3807, %4015 ], [ %4135, %4197 ], [ %3807, %3788 ]
  %3933 = icmp eq i32 %3864, %3787
  br i1 %3933, label %4210, label %3788

; <label>:3934                                    ; preds = %3788
  %3935 = extractvalue %dx.types.ResRet.f32 %3834, 3
  %3936 = extractvalue %dx.types.ResRet.f32 %3834, 1
  %3937 = extractvalue %dx.types.ResRet.f32 %3834, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3940 = extractvalue %dx.types.ResRet.i32 %3820, 3
  %3941 = extractvalue %dx.types.ResRet.i32 %3820, 2
  %3942 = add i32 %3940, 0
  %3943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3942, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3945 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3943, %dx.types.Handle %3944, float %3873, float %3880, float undef, float undef, i32 0, i32 0, i32 undef, float %3901, float %3903, float undef, float %3902, float %3904, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %3947 = fmul fast float %3946, %3939
  %3948 = fadd fast float %3947, %3938
  %3949 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3950 = fmul fast float %3873, %3829
  %3951 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3880, float %3950)  ; FMad(a,b,c)
  %3952 = fadd fast float %3951, %3937
  %3953 = fmul fast float %3873, %3831
  %3954 = call float @dx.op.tertiary.f32(i32 46, float %3832, float %3880, float %3953)  ; FMad(a,b,c)
  %3955 = fadd fast float %3954, %3936
  %3956 = fmul fast float %3901, %3829
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3903, float %3956)  ; FMad(a,b,c)
  %3958 = fmul fast float %3901, %3831
  %3959 = call float @dx.op.tertiary.f32(i32 46, float %3832, float %3903, float %3958)  ; FMad(a,b,c)
  %3960 = fmul fast float %3902, %3829
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3830, float %3904, float %3960)  ; FMad(a,b,c)
  %3962 = fmul fast float %3902, %3831
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3832, float %3904, float %3962)  ; FMad(a,b,c)
  %3964 = add i32 %3941, 0
  %3965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3964, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3966 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3965, %dx.types.Handle %3944, float %3952, float %3955, float undef, float undef, i32 0, i32 0, i32 undef, float %3957, float %3959, float undef, float %3961, float %3963, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = and i32 %3865, 1024
  %3969 = icmp ne i32 %3968, 0
  %3970 = fcmp fast ogt float %3967, 0x3FE0101020000000
  %3971 = uitofp i1 %3970 to float
  %3972 = select i1 %3969, float %3971, float %3967
  %3973 = and i32 %3865, 8192
  %3974 = icmp ne i32 %3973, 0
  %3975 = select i1 %3974, float %3935, float 1.000000e+00
  %3976 = fmul fast float %3873, 2.000000e+00
  %3977 = fadd fast float %3976, -1.000000e+00
  %3978 = call float @dx.op.unary.f32(i32 6, float %3977)  ; FAbs(value)
  %3979 = fmul fast float %3978, %3862
  %3980 = fsub fast float %3979, %3862
  %3981 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3982 = fmul fast float %3880, 2.000000e+00
  %3983 = fadd fast float %3982, -1.000000e+00
  %3984 = call float @dx.op.unary.f32(i32 6, float %3983)  ; FAbs(value)
  %3985 = fmul fast float %3984, %3863
  %3986 = fsub fast float %3985, %3863
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3988 = fmul fast float %3892, %3825
  %3989 = fsub fast float %3988, %3825
  %3990 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3991 = fmul fast float %3949, %3975
  %3992 = fmul fast float %3991, %3946
  %3993 = fmul fast float %3992, %3981
  %3994 = fmul fast float %3993, %3972
  %3995 = fmul fast float %3994, %3987
  %3996 = fmul fast float %3995, %3990
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 1
  %3999 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %4000 = fsub fast float %3909, %3999
  %4001 = fmul fast float %4000, %3998
  %4002 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4003 = fmul fast float %3996, %3826
  %4004 = fadd fast float %3996, %3826
  %4005 = fmul fast float %4004, %3835
  %4006 = fsub fast float %4005, %3835
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = and i32 %3865, 128
  %4009 = icmp ne i32 %4008, 0
  %4010 = select i1 %4009, float %4007, float %4003
  %4011 = fmul fast float %4010, %4002
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4014 = fcmp fast ugt float %4011, %4013
  br i1 %4014, label %4015, label %3914

; <label>:4015                                    ; preds = %3934
  %4016 = select i1 %3974, float %4011, float 0.000000e+00
  %4017 = fadd fast float %4016, %3790
  %4018 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  br i1 %3974, label %3914, label %4019

; <label>:4019                                    ; preds = %4015
  %4020 = and i32 %3865, 4
  %4021 = and i32 %3865, 8
  %4022 = add i32 %3821, 0
  %4023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4022, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4025 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4023, %dx.types.Handle %4024, float %3952, float %3955, float undef, float undef, i32 0, i32 0, i32 undef, float %3957, float %3959, float undef, float %3961, float %3963, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.ResRet.f32 %4025, 2
  %4029 = extractvalue %dx.types.ResRet.f32 %4025, 3
  %4030 = bitcast float %3847 to i32
  %4031 = and i32 %4030, 255
  %4032 = uitofp i32 %4031 to float
  %4033 = lshr i32 %4030, 8
  %4034 = and i32 %4033, 255
  %4035 = uitofp i32 %4034 to float
  %4036 = fmul fast float %4029, %4032
  %4037 = fadd fast float %4036, %4035
  %4038 = fmul fast float %4037, 0x3F70101000000000
  %4039 = add i32 %3822, 0
  %4040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4039, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4041 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4040, %dx.types.Handle %4024, float %3952, float %3955, float undef, float undef, i32 0, i32 0, i32 undef, float %3957, float %3959, float undef, float %3961, float %3963, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = extractvalue %dx.types.ResRet.f32 %4041, 3
  %4046 = bitcast float %3841 to i32
  %4047 = and i32 %4046, 255
  %4048 = uitofp i32 %4047 to float
  %4049 = lshr i32 %4046, 8
  %4050 = and i32 %4049, 255
  %4051 = uitofp i32 %4050 to float
  %4052 = lshr i32 %4046, 16
  %4053 = and i32 %4052, 255
  %4054 = uitofp i32 %4053 to float
  %4055 = fmul fast float %4054, 0x3F70101000000000
  %4056 = fmul fast float %4042, %4048
  %4057 = fadd fast float %4056, %4051
  %4058 = fmul fast float %4057, 0x3F70101000000000
  %4059 = fadd fast float %4043, -5.000000e-01
  %4060 = fadd fast float %4045, -5.000000e-01
  %4061 = fmul fast float %4059, %4055
  %4062 = fmul fast float %4060, %4055
  %4063 = fadd fast float %4061, 5.000000e-01
  %4064 = fadd fast float %4062, 5.000000e-01
  %4065 = fmul fast float %4026, %3850
  %4066 = fmul fast float %4027, %3851
  %4067 = fmul fast float %4028, %3852
  %4068 = fmul fast float %4063, 2.000000e+00
  %4069 = fadd fast float %4068, -1.000000e+00
  %4070 = fmul fast float %4064, 2.000000e+00
  %4071 = fadd fast float %4070, -1.000000e+00
  %4072 = fadd fast float %4069, %4071
  %4073 = fmul fast float %4072, 5.000000e-01
  %4074 = fsub fast float %4069, %4071
  %4075 = fmul fast float %4074, 5.000000e-01
  %4076 = call float @dx.op.unary.f32(i32 6, float %4073)  ; FAbs(value)
  %4077 = fsub fast float 1.000000e+00, %4076
  %4078 = call float @dx.op.unary.f32(i32 6, float %4075)  ; FAbs(value)
  %4079 = fsub fast float %4077, %4078
  %4080 = call float @dx.op.dot3.f32(i32 55, float %4073, float %4075, float %4079, float %4073, float %4075, float %4079)  ; Dot3(ax,ay,az,bx,by,bz)
  %4081 = call float @dx.op.unary.f32(i32 25, float %4080)  ; Rsqrt(value)
  %4082 = fmul fast float %4073, %4081
  %4083 = fmul fast float %4075, %4081
  %4084 = fmul fast float %4081, %4079
  %4085 = fmul fast float %4084, %3815
  %4086 = fmul fast float %4084, %3816
  %4087 = fmul fast float %4084, %3817
  %4088 = fmul fast float %4082, %3838
  %4089 = fmul fast float %4082, %3839
  %4090 = fmul fast float %4082, %3840
  %4091 = fadd fast float %4088, %4085
  %4092 = fadd fast float %4089, %4086
  %4093 = fadd fast float %4090, %4087
  %4094 = fmul fast float %4083, %3844
  %4095 = fmul fast float %4083, %3845
  %4096 = fmul fast float %4083, %3846
  %4097 = fadd fast float %4091, %4094
  %4098 = fadd fast float %4092, %4095
  %4099 = fadd fast float %4093, %4096
  %4100 = call float @dx.op.dot3.f32(i32 55, float %4097, float %4098, float %4099, float %4097, float %4098, float %4099)  ; Dot3(ax,ay,az,bx,by,bz)
  %4101 = call float @dx.op.unary.f32(i32 25, float %4100)  ; Rsqrt(value)
  %4102 = fmul fast float %4097, %4101
  %4103 = fmul fast float %4098, %4101
  %4104 = fmul fast float %4099, %4101
  %4105 = icmp ne i32 %4021, 0
  %4106 = select i1 %4105, float 1.000000e+00, float 0.000000e+00
  %4107 = fmul fast float %4011, %4106
  %4108 = and i32 %3865, 1
  %4109 = icmp eq i32 %4108, 0
  br i1 %4109, label %4110, label %4114

; <label>:4110                                    ; preds = %4019
  %4111 = fsub fast float %4102, %3798
  %4112 = fsub fast float %4103, %3799
  %4113 = fsub fast float %4104, %3800
  br label %4114

; <label>:4114                                    ; preds = %4110, %4019
  %4115 = phi float [ %4111, %4110 ], [ %4102, %4019 ]
  %4116 = phi float [ %4112, %4110 ], [ %4103, %4019 ]
  %4117 = phi float [ %4113, %4110 ], [ %4104, %4019 ]
  %4118 = fmul float %4117, %4107
  %4119 = fmul float %4116, %4107
  %4120 = fmul float %4115, %4107
  %4121 = fadd fast float %4120, %3798
  %4122 = fadd fast float %4119, %3799
  %4123 = fadd fast float %4118, %3800
  %4124 = icmp ne i32 %4020, 0
  %4125 = select i1 %4124, float 1.000000e+00, float 0.000000e+00
  %4126 = fmul fast float %4011, %4125
  %4127 = fsub fast float %4065, %3805
  %4128 = fsub fast float %4066, %3806
  %4129 = fsub fast float %4067, %3807
  %4130 = fmul fast float %4127, %4126
  %4131 = fmul fast float %4128, %4126
  %4132 = fmul fast float %4129, %4126
  %4133 = fadd fast float %4130, %3805
  %4134 = fadd fast float %4131, %3806
  %4135 = fadd fast float %4132, %3807
  %4136 = fsub fast float %4038, %3804
  %4137 = fmul fast float %4136, %4126
  %4138 = fadd fast float %4137, %3804
  %4139 = fmul fast float %4126, %3794
  %4140 = fsub fast float %3794, %4139
  %4141 = fmul fast float %4126, %3793
  %4142 = fsub fast float %3793, %4141
  %4143 = fadd fast float %4011, %3803
  %4144 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  %4145 = fsub fast float %4058, %3802
  %4146 = fmul fast float %4145, %4107
  %4147 = fadd fast float %4146, %3802
  %4148 = fsub fast float %4044, %3801
  %4149 = fmul fast float %4148, %4107
  %4150 = fadd fast float %4149, %3801
  %4151 = call float @dx.op.dot3.f32(i32 55, float %4065, float %4066, float %4067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4155 = fmul fast float %4154, %4151
  %4156 = fadd fast float %4155, %4153
  %4157 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4158 = bitcast float %3853 to i32
  %4159 = and i32 %4158, 65535
  %4160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4159)  ; LegacyF16ToF32(value)
  %4161 = lshr i32 %4158, 16
  %4162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4161)  ; LegacyF16ToF32(value)
  %4163 = fcmp fast oge float %4160, 0.000000e+00
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 0
  %4166 = select i1 %4163, float %4160, float %4165
  %4167 = fadd fast float %4166, %4162
  %4168 = fsub fast float %4157, %3792
  %4169 = fmul fast float %4168, %4011
  %4170 = fadd fast float %4169, %3792
  %4171 = fmul fast float %4167, %4011
  %4172 = call float @dx.op.binary.f32(i32 35, float %3791, float %4171)  ; FMax(a,b)
  %4173 = and i32 %3865, 16
  %4174 = icmp eq i32 %4173, 0
  br i1 %4174, label %4197, label %4175

; <label>:4175                                    ; preds = %4114
  %4176 = bitcast float %3859 to i32
  %4177 = add i32 %3856, 0
  %4178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4177, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4178, %dx.types.Handle %4024, float %3952, float %3955, float undef, float undef, i32 0, i32 0, i32 undef, float %3957, float %3959, float undef, float %3961, float %3963, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = and i32 %4176, 65535
  %4184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4183)  ; LegacyF16ToF32(value)
  %4185 = fmul fast float %4180, %3850
  %4186 = fmul fast float %4181, %3851
  %4187 = fmul fast float %4182, %3852
  %4188 = and i32 %3865, 16384
  %4189 = icmp ne i32 %4188, 0
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 0
  %4192 = select i1 %4189, float %4191, float 1.000000e+00
  %4193 = fmul fast float %4192, %4184
  %4194 = fmul fast float %4185, %4193
  %4195 = fmul fast float %4186, %4193
  %4196 = fmul fast float %4187, %4193
  br label %4197

; <label>:4197                                    ; preds = %4175, %4114
  %4198 = phi float [ %4194, %4175 ], [ 0.000000e+00, %4114 ]
  %4199 = phi float [ %4195, %4175 ], [ 0.000000e+00, %4114 ]
  %4200 = phi float [ %4196, %4175 ], [ 0.000000e+00, %4114 ]
  %4201 = fsub fast float %4198, %3795
  %4202 = fsub fast float %4199, %3796
  %4203 = fsub fast float %4200, %3797
  %4204 = fmul fast float %4201, %4011
  %4205 = fmul fast float %4202, %4011
  %4206 = fmul fast float %4203, %4011
  %4207 = fadd fast float %4204, %3795
  %4208 = fadd fast float %4205, %3796
  %4209 = fadd fast float %4206, %3797
  br label %3914

; <label>:4210                                    ; preds = %3914
  br label %4211

; <label>:4211                                    ; preds = %4210, %3734
  %4212 = phi float [ 0.000000e+00, %3734 ], [ %3915, %4210 ]
  %4213 = phi float [ %3703, %3734 ], [ %3916, %4210 ]
  %4214 = phi float [ %3695, %3734 ], [ %3917, %4210 ]
  %4215 = phi float [ 0.000000e+00, %3734 ], [ %3918, %4210 ]
  %4216 = phi float [ 0.000000e+00, %3734 ], [ %3919, %4210 ]
  %4217 = phi float [ %3689, %3734 ], [ %3920, %4210 ]
  %4218 = phi float [ %3690, %3734 ], [ %3921, %4210 ]
  %4219 = phi float [ %3691, %3734 ], [ %3922, %4210 ]
  %4220 = phi float [ %3729, %3734 ], [ %3923, %4210 ]
  %4221 = phi float [ %3730, %3734 ], [ %3924, %4210 ]
  %4222 = phi float [ %3731, %3734 ], [ %3925, %4210 ]
  %4223 = phi float [ %3694, %3734 ], [ %3926, %4210 ]
  %4224 = phi float [ %3693, %3734 ], [ %3927, %4210 ]
  %4225 = phi float [ 0.000000e+00, %3734 ], [ %3928, %4210 ]
  %4226 = phi float [ %3692, %3734 ], [ %3929, %4210 ]
  %4227 = phi float [ %3686, %3734 ], [ %3930, %4210 ]
  %4228 = phi float [ %3687, %3734 ], [ %3931, %4210 ]
  %4229 = phi float [ %3688, %3734 ], [ %3932, %4210 ]
  %4230 = call float @dx.op.dot3.f32(i32 55, float %4220, float %4221, float %4222, float %4220, float %4221, float %4222)  ; Dot3(ax,ay,az,bx,by,bz)
  %4231 = call float @dx.op.unary.f32(i32 25, float %4230)  ; Rsqrt(value)
  %4232 = fmul fast float %4231, %4220
  %4233 = fmul fast float %4231, %4221
  %4234 = fmul fast float %4231, %4222
  %4235 = fadd fast float %4225, %1130
  %4236 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4237 = call float @dx.op.dot3.f32(i32 55, float %4232, float %4233, float %4234, float %4232, float %4233, float %4234)  ; Dot3(ax,ay,az,bx,by,bz)
  %4238 = call float @dx.op.unary.f32(i32 25, float %4237)  ; Rsqrt(value)
  %4239 = fmul fast float %4238, %4232
  %4240 = fmul fast float %4238, %4233
  %4241 = fmul fast float %4238, %4234
  br label %4242

; <label>:4242                                    ; preds = %4211, %3683
  %4243 = phi float [ %4239, %4211 ], [ %3729, %3683 ]
  %4244 = phi float [ %4240, %4211 ], [ %3730, %3683 ]
  %4245 = phi float [ %4241, %4211 ], [ %3731, %3683 ]
  %4246 = phi float [ %4227, %4211 ], [ %3686, %3683 ]
  %4247 = phi float [ %4228, %4211 ], [ %3687, %3683 ]
  %4248 = phi float [ %4229, %4211 ], [ %3688, %3683 ]
  %4249 = phi float [ %4217, %4211 ], [ %3689, %3683 ]
  %4250 = phi float [ %4218, %4211 ], [ %3690, %3683 ]
  %4251 = phi float [ %4219, %4211 ], [ %3691, %3683 ]
  %4252 = phi float [ %4226, %4211 ], [ %3692, %3683 ]
  %4253 = phi float [ %4236, %4211 ], [ %1130, %3683 ]
  %4254 = phi float [ %4224, %4211 ], [ %3693, %3683 ]
  %4255 = phi float [ %4223, %4211 ], [ %3694, %3683 ]
  %4256 = phi float [ %4216, %4211 ], [ 0.000000e+00, %3683 ]
  %4257 = phi float [ %4215, %4211 ], [ 0.000000e+00, %3683 ]
  %4258 = phi float [ %4212, %4211 ], [ 0.000000e+00, %3683 ]
  %4259 = phi float [ %4213, %4211 ], [ %3703, %3683 ]
  %4260 = phi float [ %4214, %4211 ], [ %3695, %3683 ]
  %4261 = fadd fast float %4252, 0xBFB99999A0000000
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = fmul fast float %4262, 0x3FF1C71C80000000
  %4264 = call float @dx.op.binary.f32(i32 36, float %4252, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4265 = fsub fast float 1.000000e+00, %4263
  %4266 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4267 = fmul fast float %4266, %4246
  %4268 = fmul fast float %4266, %4247
  %4269 = fmul fast float %4266, %4248
  %4270 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4272 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4273 = fmul fast float %4263, %4246
  %4274 = fmul fast float %4263, %4247
  %4275 = fmul fast float %4263, %4248
  %4276 = fadd fast float %4273, %4264
  %4277 = fadd fast float %4274, %4264
  %4278 = fadd fast float %4275, %4264
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4281 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4282 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.i32 %4283, 3
  %4285 = and i32 %4284, 8
  %4286 = icmp ne i32 %4285, 0
  %4287 = call float @dx.op.binary.f32(i32 35, float %4270, float %4246)  ; FMax(a,b)
  %4288 = call float @dx.op.binary.f32(i32 35, float %4271, float %4246)  ; FMax(a,b)
  %4289 = call float @dx.op.binary.f32(i32 35, float %4272, float %4246)  ; FMax(a,b)
  %4290 = call float @dx.op.dot3.f32(i32 55, float %4270, float %4271, float %4272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4291 = select i1 %220, float %4246, float %4270
  %4292 = select i1 %220, float %4290, float %4271
  %4293 = select i1 %220, float 1.000000e+00, float %4272
  %4294 = select i1 %4286, float %4287, float %4291
  %4295 = select i1 %4286, float %4288, float %4292
  %4296 = select i1 %4286, float %4289, float %4293
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.CBufRet.f32 %4297, 1
  %4300 = extractvalue %dx.types.CBufRet.f32 %4297, 2
  %4301 = fadd fast float %4298, %158
  %4302 = fadd fast float %4299, %159
  %4303 = fadd fast float %4300, %160
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.CBufRet.f32 %4304, 1
  %4307 = fsub fast float %4301, %4305
  %4308 = fsub fast float %4302, %4306
  %4309 = fmul fast float %4307, %4307
  %4310 = fmul fast float %4308, %4308
  %4311 = fadd fast float %4309, %4310
  %4312 = call float @dx.op.unary.f32(i32 24, float %4311)  ; Sqrt(value)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4304, 2
  %4314 = fcmp fast olt float %4312, %4313
  br i1 %4314, label %4315, label %4382

; <label>:4315                                    ; preds = %4242
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 0
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 0
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 0
  %4322 = extractvalue %dx.types.CBufRet.f32 %4316, 1
  %4323 = extractvalue %dx.types.CBufRet.f32 %4318, 1
  %4324 = extractvalue %dx.types.CBufRet.f32 %4320, 1
  %4325 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4326 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4327 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4328 = fadd fast float %4325, %4301
  %4329 = fadd fast float %4326, %4302
  %4330 = fadd fast float %4327, %4303
  %4331 = fmul fast float %4328, %4317
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4319, float %4331)  ; FMad(a,b,c)
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4330, float %4321, float %4332)  ; FMad(a,b,c)
  %4334 = fmul fast float %4328, %4322
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4323, float %4334)  ; FMad(a,b,c)
  %4336 = call float @dx.op.tertiary.f32(i32 46, float %4330, float %4324, float %4335)  ; FMad(a,b,c)
  %4337 = fsub fast float %4333, %4325
  %4338 = fsub fast float %4336, %4326
  %4339 = fsub fast float %4337, %4305
  %4340 = fadd fast float %4339, %4313
  %4341 = fsub fast float %4338, %4306
  %4342 = fadd fast float %4341, %4313
  %4343 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4344 = fmul fast float %4340, %4343
  %4345 = fmul fast float %4342, %4343
  %4346 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4347 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4348 = fsub fast float 1.000000e+00, %4346
  %4349 = fsub fast float 1.000000e+00, %4347
  %4350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4348, float %4349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = fcmp fast ugt float %4351, 0.000000e+00
  br i1 %4352, label %4353, label %4656

; <label>:4353                                    ; preds = %4315
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 2
  %4356 = fmul fast float %4355, %4351
  %4357 = extractvalue %dx.types.CBufRet.f32 %4354, 3
  %4358 = fadd fast float %4357, %4356
  %4359 = extractvalue %dx.types.CBufRet.f32 %4320, 2
  %4360 = fadd fast float %4358, %4327
  %4361 = fmul fast float %4333, %4321
  %4362 = call float @dx.op.tertiary.f32(i32 46, float %4336, float %4324, float %4361)  ; FMad(a,b,c)
  %4363 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4359, float %4362)  ; FMad(a,b,c)
  %4364 = fsub fast float %4363, %4327
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 2
  %4367 = fsub fast float %4364, %4366
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4348, float %4349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.ResRet.f32 %4368, 1
  %4371 = extractvalue %dx.types.ResRet.f32 %4368, 2
  %4372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4348, float %4349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 0
  %4374 = extractvalue %dx.types.ResRet.f32 %4372, 1
  %4375 = extractvalue %dx.types.ResRet.f32 %4372, 2
  %4376 = fadd fast float %4373, %4369
  %4377 = fmul fast float %4376, 0x3F847AE140000000
  %4378 = fadd fast float %4374, %4370
  %4379 = fmul fast float %4378, 0x3F847AE140000000
  %4380 = fadd fast float %4375, %4371
  %4381 = fmul fast float %4380, 0x3F847AE140000000
  br label %4656

; <label>:4382                                    ; preds = %4242
  %4383 = and i32 %196, 1
  %4384 = icmp eq i32 %4383, 0
  br i1 %4384, label %4656, label %4385

; <label>:4385                                    ; preds = %4382
  %4386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4387 = extractvalue %dx.types.CBufRet.f32 %4386, 0
  %4388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.f32 %4388, 0
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.CBufRet.f32 %4386, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4388, 1
  %4394 = extractvalue %dx.types.CBufRet.f32 %4390, 1
  %4395 = extractvalue %dx.types.CBufRet.f32 %4386, 3
  %4396 = extractvalue %dx.types.CBufRet.f32 %4388, 3
  %4397 = extractvalue %dx.types.CBufRet.f32 %4390, 3
  %4398 = fadd fast float %4395, %4301
  %4399 = fadd fast float %4396, %4302
  %4400 = fadd fast float %4397, %4303
  %4401 = fmul fast float %4398, %4387
  %4402 = call float @dx.op.tertiary.f32(i32 46, float %4399, float %4389, float %4401)  ; FMad(a,b,c)
  %4403 = call float @dx.op.tertiary.f32(i32 46, float %4400, float %4391, float %4402)  ; FMad(a,b,c)
  %4404 = fmul fast float %4398, %4392
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4399, float %4393, float %4404)  ; FMad(a,b,c)
  %4406 = call float @dx.op.tertiary.f32(i32 46, float %4400, float %4394, float %4405)  ; FMad(a,b,c)
  %4407 = fsub fast float %4403, %4395
  %4408 = fsub fast float %4406, %4396
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.CBufRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.CBufRet.f32 %4409, 2
  %4413 = extractvalue %dx.types.CBufRet.f32 %4409, 3
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.i32 %4416, 0
  %4418 = extractvalue %dx.types.CBufRet.i32 %4416, 1
  %4419 = udiv i32 %4418, %4417
  %4420 = fsub fast float %4407, %4410
  %4421 = fsub fast float %4408, %4411
  %4422 = call float @dx.op.binary.f32(i32 35, float %4420, float 0.000000e+00)  ; FMax(a,b)
  %4423 = call float @dx.op.binary.f32(i32 35, float %4421, float 0.000000e+00)  ; FMax(a,b)
  %4424 = call float @dx.op.binary.f32(i32 36, float %4422, float %4412)  ; FMin(a,b)
  %4425 = call float @dx.op.binary.f32(i32 36, float %4423, float %4413)  ; FMin(a,b)
  %4426 = add i32 %4417, -1
  %4427 = add i32 %4419, -1
  %4428 = fmul fast float %4424, %4415
  %4429 = fmul fast float %4425, %4415
  %4430 = fptoui float %4428 to i32
  %4431 = fptoui float %4429 to i32
  %4432 = call i32 @dx.op.binary.i32(i32 40, i32 %4430, i32 %4426)  ; UMin(a,b)
  %4433 = call i32 @dx.op.binary.i32(i32 40, i32 %4431, i32 %4427)  ; UMin(a,b)
  %4434 = mul i32 %4433, %4417
  %4435 = add i32 %4434, %4432
  %4436 = shl i32 %4435, 2
  %4437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.i32 %4437, 0
  %4439 = icmp eq i32 %4438, -1
  br i1 %4439, label %4656, label %4440

; <label>:4440                                    ; preds = %4385
  %4441 = mul i32 %4438, 148
  %4442 = add i32 %4441, 4
  %4443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = add i32 %4441, 8
  %4446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = add i32 %4441, 36
  %4449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4448, i32 undef)  ; BufferLoad(srv,index,wot)
  %4450 = extractvalue %dx.types.ResRet.f32 %4449, 0
  %4451 = add i32 %4441, 60
  %4452 = add i32 %4441, 92
  %4453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4452, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.i32 %4453, 0
  %4455 = add i32 %4441, 116
  %4456 = fsub fast float %4407, %4444
  %4457 = fsub fast float %4408, %4447
  %4458 = fmul fast float %4415, %4456
  %4459 = fmul fast float %4415, %4457
  %4460 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4461 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4462 = fsub fast float 1.000000e+00, %4461
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 2
  %4465 = call float @dx.op.unary.f32(i32 83, float %4460)  ; DerivCoarseX(value)
  %4466 = call float @dx.op.unary.f32(i32 83, float %4462)  ; DerivCoarseX(value)
  %4467 = call float @dx.op.unary.f32(i32 84, float %4460)  ; DerivCoarseY(value)
  %4468 = call float @dx.op.unary.f32(i32 84, float %4462)  ; DerivCoarseY(value)
  %4469 = fmul fast float %4465, %4464
  %4470 = fmul fast float %4466, %4464
  %4471 = fmul fast float %4467, %4464
  %4472 = fmul fast float %4468, %4464
  %4473 = call float @dx.op.dot2.f32(i32 54, float %4471, float %4472, float %4471, float %4472)  ; Dot2(ax,ay,bx,by)
  %4474 = call float @dx.op.dot2.f32(i32 54, float %4469, float %4470, float %4469, float %4470)  ; Dot2(ax,ay,bx,by)
  %4475 = call float @dx.op.binary.f32(i32 35, float %4474, float %4473)  ; FMax(a,b)
  %4476 = call float @dx.op.unary.f32(i32 23, float %4475)  ; Log(value)
  %4477 = fmul fast float %4476, 5.000000e-01
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 1
  %4480 = fadd fast float %4479, %4477
  %4481 = call float @dx.op.binary.f32(i32 35, float %4480, float 0.000000e+00)  ; FMax(a,b)
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 3
  %4484 = fadd fast float %4483, %4481
  %4485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4485, 3
  %4487 = fadd fast float %4484, %4486
  %4488 = add i32 %4454, 0
  %4489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4488, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4490 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4489, i32 0)  ; GetDimensions(handle,mipLevel)
  %4491 = extractvalue %dx.types.Dimensions %4490, 0
  %4492 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4491)  ; FirstbitLo(value)
  %4493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.i32 %4493, 1
  %4495 = sub nsw i32 %4494, %4492
  %4496 = sitofp i32 %4495 to float
  %4497 = fsub fast float %4487, %4496
  %4498 = call float @dx.op.binary.f32(i32 35, float %4497, float 0.000000e+00)  ; FMax(a,b)
  %4499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4489, %dx.types.Handle %46, float %4460, float %4462, float %4450, float undef, i32 0, i32 0, i32 undef, float %4498)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = fcmp ule float %4500, 0x3FE0101020000000
  %4502 = extractvalue %dx.types.CBufRet.i32 %4493, 0
  %4503 = and i32 %4502, 128
  %4504 = icmp ne i32 %4503, 0
  %4505 = and i1 %4501, %4504
  br i1 %4505, label %4656, label %4506

; <label>:4506                                    ; preds = %4440
  %4507 = add i32 %4441, 20
  %4508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = add i32 %4441, 24
  %4511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = add i32 %4441, 40
  %4514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4513, i32 undef)  ; BufferLoad(srv,index,wot)
  %4515 = extractvalue %dx.types.ResRet.f32 %4514, 0
  %4516 = add i32 %4441, 96
  %4517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4516, i32 undef)  ; BufferLoad(srv,index,wot)
  %4518 = extractvalue %dx.types.ResRet.i32 %4517, 0
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 2
  %4521 = fmul fast float %4520, %4460
  %4522 = fmul fast float %4520, %4462
  %4523 = extractvalue %dx.types.CBufRet.f32 %4519, 3
  %4524 = fadd fast float %4521, %4523
  %4525 = fadd fast float %4522, %4523
  %4526 = add i32 %4518, 0
  %4527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4526, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4528 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4527, i32 0)  ; GetDimensions(handle,mipLevel)
  %4529 = extractvalue %dx.types.Dimensions %4528, 0
  %4530 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4529)  ; FirstbitLo(value)
  %4531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.i32 %4531, 1
  %4533 = sub nsw i32 %4532, %4530
  %4534 = sitofp i32 %4533 to float
  %4535 = fsub fast float %4484, %4534
  %4536 = call float @dx.op.binary.f32(i32 35, float %4535, float 0.000000e+00)  ; FMax(a,b)
  %4537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4527, %dx.types.Handle %46, float %4524, float %4525, float %4515, float undef, i32 0, i32 0, i32 undef, float %4536)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = fmul fast float %4538, %4509
  %4540 = fadd fast float %4539, %4512
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 0
  %4543 = extractvalue %dx.types.CBufRet.f32 %4541, 1
  %4544 = extractvalue %dx.types.CBufRet.f32 %4541, 2
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 3
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 3
  %4549 = extractvalue %dx.types.CBufRet.f32 %4541, 3
  %4550 = fadd fast float %4546, %4407
  %4551 = fadd fast float %4548, %4408
  %4552 = fadd fast float %4540, %4549
  %4553 = fmul fast float %4550, %4542
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4543, float %4553)  ; FMad(a,b,c)
  %4555 = call float @dx.op.tertiary.f32(i32 46, float %4552, float %4544, float %4554)  ; FMad(a,b,c)
  %4556 = fsub fast float %4555, %4549
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 2
  %4559 = fsub fast float %4556, %4558
  %4560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.i32 %4560, 0
  %4562 = call i32 @dx.op.binary.i32(i32 40, i32 %4438, i32 %4561)  ; UMin(a,b)
  %4563 = mul i32 %4562, 36
  %4564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.i32 %4564, 0
  %4566 = add i32 %4563, 4
  %4567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.f32 %4567, 0
  %4569 = fmul fast float %4568, %4460
  %4570 = fmul fast float %4568, %4462
  %4571 = extractvalue %dx.types.CBufRet.f32 %4567, 1
  %4572 = fadd fast float %4569, %4571
  %4573 = fadd fast float %4570, %4571
  %4574 = icmp eq i32 %4565, 0
  br i1 %4574, label %4643, label %4575

; <label>:4575                                    ; preds = %4506
  br label %4576

; <label>:4576                                    ; preds = %4633, %4575
  %4577 = phi float [ %4634, %4633 ], [ 0.000000e+00, %4575 ]
  %4578 = phi float [ %4635, %4633 ], [ 0.000000e+00, %4575 ]
  %4579 = phi float [ %4636, %4633 ], [ 0.000000e+00, %4575 ]
  %4580 = phi float [ %4637, %4633 ], [ 0.000000e+00, %4575 ]
  %4581 = phi float [ %4638, %4633 ], [ 0.000000e+00, %4575 ]
  %4582 = phi float [ %4639, %4633 ], [ 0.000000e+00, %4575 ]
  %4583 = phi i32 [ %4640, %4633 ], [ 0, %4575 ]
  %4584 = shl i32 %4583, 2
  %4585 = add i32 %4451, %4584
  %4586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = add i32 %4455, %4584
  %4589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.i32 %4589, 0
  %4591 = add i32 %4590, 0
  %4592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4591, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4593 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4592, i32 0)  ; GetDimensions(handle,mipLevel)
  %4594 = extractvalue %dx.types.Dimensions %4593, 0
  %4595 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4594)  ; FirstbitLo(value)
  %4596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.i32 %4596, 1
  %4598 = sub nsw i32 %4597, %4595
  %4599 = sitofp i32 %4598 to float
  %4600 = fsub fast float %4484, %4599
  %4601 = call float @dx.op.binary.f32(i32 35, float %4600, float 0.000000e+00)  ; FMax(a,b)
  %4602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4592, %dx.types.Handle %46, float %4572, float %4573, float %4587, float undef, i32 0, i32 0, i32 undef, float %4601)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = fcmp fast ogt float %4603, 0.000000e+00
  br i1 %4604, label %4605, label %4633

; <label>:4605                                    ; preds = %4576
  %4606 = add i32 %4566, %4584
  %4607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.i32 %4607, 0
  %4609 = and i32 %4608, 32767
  %4610 = mul nuw nsw i32 %4609, 928
  %4611 = add nuw nsw i32 %4610, 48
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = add nuw nsw i32 %4610, 60
  %4617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4621 = fmul fast float %4613, %4603
  %4622 = fmul fast float %4614, %4603
  %4623 = fmul fast float %4615, %4603
  %4624 = fadd fast float %4621, %4577
  %4625 = fadd fast float %4622, %4578
  %4626 = fadd fast float %4623, %4579
  %4627 = fmul fast float %4618, %4603
  %4628 = fmul fast float %4619, %4603
  %4629 = fmul fast float %4620, %4603
  %4630 = fadd fast float %4627, %4580
  %4631 = fadd fast float %4628, %4581
  %4632 = fadd fast float %4629, %4582
  br label %4633

; <label>:4633                                    ; preds = %4605, %4576
  %4634 = phi float [ %4624, %4605 ], [ %4577, %4576 ]
  %4635 = phi float [ %4625, %4605 ], [ %4578, %4576 ]
  %4636 = phi float [ %4626, %4605 ], [ %4579, %4576 ]
  %4637 = phi float [ %4630, %4605 ], [ %4580, %4576 ]
  %4638 = phi float [ %4631, %4605 ], [ %4581, %4576 ]
  %4639 = phi float [ %4632, %4605 ], [ %4582, %4576 ]
  %4640 = add nuw i32 %4583, 1
  %4641 = icmp eq i32 %4640, %4565
  br i1 %4641, label %4642, label %4576

; <label>:4642                                    ; preds = %4633
  br label %4643

; <label>:4643                                    ; preds = %4642, %4506
  %4644 = phi float [ 0.000000e+00, %4506 ], [ %4634, %4642 ]
  %4645 = phi float [ 0.000000e+00, %4506 ], [ %4635, %4642 ]
  %4646 = phi float [ 0.000000e+00, %4506 ], [ %4636, %4642 ]
  %4647 = phi float [ 0.000000e+00, %4506 ], [ %4637, %4642 ]
  %4648 = phi float [ 0.000000e+00, %4506 ], [ %4638, %4642 ]
  %4649 = phi float [ 0.000000e+00, %4506 ], [ %4639, %4642 ]
  %4650 = fadd fast float %4647, %4644
  %4651 = fmul fast float %4650, 0x3F847AE140000000
  %4652 = fadd fast float %4648, %4645
  %4653 = fmul fast float %4652, 0x3F847AE140000000
  %4654 = fadd fast float %4649, %4646
  %4655 = fmul fast float %4654, 0x3F847AE140000000
  br label %4656

; <label>:4656                                    ; preds = %4643, %4440, %4385, %4382, %4353, %4315
  %4657 = phi float [ %4367, %4353 ], [ -1.310720e+05, %4315 ], [ %4559, %4643 ], [ -1.310720e+05, %4385 ], [ -1.310720e+05, %4440 ], [ -1.310720e+05, %4382 ]
  %4658 = phi float [ %4377, %4353 ], [ 0.000000e+00, %4315 ], [ %4651, %4643 ], [ 0.000000e+00, %4385 ], [ 0.000000e+00, %4440 ], [ 0.000000e+00, %4382 ]
  %4659 = phi float [ %4379, %4353 ], [ 0.000000e+00, %4315 ], [ %4653, %4643 ], [ 0.000000e+00, %4385 ], [ 0.000000e+00, %4440 ], [ 0.000000e+00, %4382 ]
  %4660 = phi float [ %4381, %4353 ], [ 0.000000e+00, %4315 ], [ %4655, %4643 ], [ 0.000000e+00, %4385 ], [ 0.000000e+00, %4440 ], [ 0.000000e+00, %4382 ]
  %4661 = phi i1 [ true, %4353 ], [ false, %4315 ], [ true, %4643 ], [ false, %4385 ], [ false, %4440 ], [ false, %4382 ]
  %4662 = and i32 %196, 3
  %4663 = icmp eq i32 %4662, 1
  %4664 = select i1 %4663, float 1.000000e+00, float 0.000000e+00
  %4665 = fsub fast float %4657, %160
  %4666 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4667 = select i1 %4661, float %4666, float 1.000000e+00
  %4668 = fmul fast float %4667, %4664
  %4669 = icmp eq i32 %4662, 3
  %4670 = select i1 %4669, float 1.000000e+00, float %4668
  %4671 = call float @dx.op.binary.f32(i32 35, float %4258, float %4670)  ; FMax(a,b)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4673 = fcmp fast une float %4672, 0.000000e+00
  %4674 = call float @dx.op.dot3.f32(i32 55, float %158, float %159, float %160, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.unary.f32(i32 25, float %4674)  ; Rsqrt(value)
  br i1 %4673, label %4683, label %4676

; <label>:4676                                    ; preds = %4656
  %4677 = fmul fast float %4675, %158
  %4678 = fmul fast float %4675, %159
  %4679 = fmul fast float %4675, %160
  %4680 = fsub fast float -0.000000e+00, %4677
  %4681 = fsub fast float -0.000000e+00, %4678
  %4682 = fsub fast float -0.000000e+00, %4679
  br label %4851

; <label>:4683                                    ; preds = %4656
  %4684 = fmul fast float %158, %4675
  %4685 = fsub fast float -0.000000e+00, %4684
  %4686 = fmul fast float %159, %4675
  %4687 = fsub fast float -0.000000e+00, %4686
  %4688 = fmul fast float %160, %4675
  %4689 = fsub fast float -0.000000e+00, %4688
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4685, float %4687, float %4689, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = fmul fast float %4672, 2.500000e+00
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fmul fast float %4672, 0x4013FFFFE0000000
  %4694 = fadd fast float %4693, 0xBFFFFFFFE0000000
  %4695 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4696 = fmul fast float %4672, 0x4004000020000000
  %4697 = fadd fast float %4696, 0xBFF8000040000000
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4700 = fmul fast float %4261, 1.000000e+01
  %4701 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4702 = fmul fast float %4701, 2.000000e+00
  %4703 = fsub fast float 3.000000e+00, %4702
  %4704 = fmul fast float %4701, %4701
  %4705 = fmul fast float %4704, %4703
  %4706 = fsub fast float 1.000000e+00, %4705
  %4707 = fsub fast float 0x3FE3333340000000, %4282
  %4708 = fmul fast float %4707, 0x400AAAAAA0000000
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = fmul fast float %4706, %4709
  %4711 = fmul fast float %4294, 0x3FEA2B8620000000
  %4712 = fmul fast float %4295, 0x3FEA2B8620000000
  %4713 = fmul fast float %4296, 0x3FEA2B8620000000
  %4714 = fadd fast float %4711, 0x3FC81DFBA0000000
  %4715 = fmul fast float %4714, %4294
  %4716 = fadd fast float %4715, 0x3F910E6020000000
  %4717 = fadd fast float %4712, 0x3FC81DFBA0000000
  %4718 = fmul fast float %4717, %4295
  %4719 = fadd fast float %4718, 0x3F910E6020000000
  %4720 = fadd fast float %4713, 0x3FC81DFBA0000000
  %4721 = fmul fast float %4720, %4296
  %4722 = fadd fast float %4721, 0x3F910E6020000000
  %4723 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4724 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4726 = fsub fast float %4723, %4294
  %4727 = fsub fast float %4724, %4295
  %4728 = fsub fast float %4725, %4296
  %4729 = fmul fast float %4726, %4699
  %4730 = fmul fast float %4729, %4710
  %4731 = fmul fast float %4727, %4699
  %4732 = fmul fast float %4731, %4710
  %4733 = fmul fast float %4728, %4699
  %4734 = fmul fast float %4733, %4710
  %4735 = fadd fast float %4730, %4294
  %4736 = fadd fast float %4732, %4295
  %4737 = fadd fast float %4734, %4296
  %4738 = fmul fast float %4255, %4255
  %4739 = fmul fast float %4738, %4738
  %4740 = fadd fast float %4695, 1.000000e+00
  %4741 = fsub fast float %4740, %4710
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = call float @dx.op.dot3.f32(i32 55, float %102, float %103, float %104, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fsub fast float 1.000000e+00, %4739
  %4746 = call float @dx.op.binary.f32(i32 36, float %4742, float %4745)  ; FMin(a,b)
  %4747 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4748 = call float @dx.op.binary.f32(i32 35, float %4746, float %4747)  ; FMax(a,b)
  %4749 = fadd fast float %4744, 0xBFE4CCCCC0000000
  %4750 = fmul fast float %4749, 0x4006DB6DA0000000
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fmul fast float %4751, 2.000000e+00
  %4753 = fsub fast float 3.000000e+00, %4752
  %4754 = bitcast float %4279 to i32
  %4755 = ashr i32 %4754, 1
  %4756 = add nsw i32 %4755, 532487669
  %4757 = bitcast i32 %4756 to float
  %4758 = fsub fast float 1.000000e+00, %4757
  %4759 = bitcast float %4758 to i32
  %4760 = sub nsw i32 2129859010, %4759
  %4761 = bitcast i32 %4760 to float
  %4762 = fmul fast float %4761, 2.000000e+00
  %4763 = bitcast float %4280 to i32
  %4764 = ashr i32 %4763, 1
  %4765 = add nsw i32 %4764, 532487669
  %4766 = bitcast i32 %4765 to float
  %4767 = fsub fast float 1.000000e+00, %4766
  %4768 = bitcast float %4767 to i32
  %4769 = sub nsw i32 2129859010, %4768
  %4770 = bitcast i32 %4769 to float
  %4771 = fmul fast float %4770, 2.000000e+00
  %4772 = bitcast float %4281 to i32
  %4773 = ashr i32 %4772, 1
  %4774 = add nsw i32 %4773, 532487669
  %4775 = bitcast i32 %4774 to float
  %4776 = fsub fast float 1.000000e+00, %4775
  %4777 = bitcast float %4776 to i32
  %4778 = sub nsw i32 2129859010, %4777
  %4779 = bitcast i32 %4778 to float
  %4780 = fmul fast float %4779, 2.000000e+00
  %4781 = fsub fast float 0x4002A9FBE0000000, %4762
  %4782 = fadd fast float %4762, 0x3FD54FDF00000000
  %4783 = bitcast float %4782 to i32
  %4784 = sub nsw i32 2129859010, %4783
  %4785 = bitcast i32 %4784 to float
  %4786 = fmul fast float %4785, %4781
  %4787 = fmul fast float %4786, %4786
  %4788 = fsub fast float 0x4002A9FBE0000000, %4771
  %4789 = fadd fast float %4771, 0x3FD54FDF00000000
  %4790 = bitcast float %4789 to i32
  %4791 = sub nsw i32 2129859010, %4790
  %4792 = bitcast i32 %4791 to float
  %4793 = fmul fast float %4792, %4788
  %4794 = fmul fast float %4793, %4793
  %4795 = fsub fast float 0x4002A9FBE0000000, %4780
  %4796 = fadd fast float %4780, 0x3FD54FDF00000000
  %4797 = bitcast float %4796 to i32
  %4798 = sub nsw i32 2129859010, %4797
  %4799 = bitcast i32 %4798 to float
  %4800 = fmul fast float %4799, %4795
  %4801 = fmul fast float %4800, %4800
  %4802 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4787)  ; FMax(a,b)
  %4803 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4794)  ; FMax(a,b)
  %4804 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4801)  ; FMax(a,b)
  %4805 = fsub fast float 1.000000e+00, %4690
  %4806 = fadd fast float %4805, %4706
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = fsub fast float 1.000000e+00, %4670
  %4809 = fmul fast float %4748, %4808
  %4810 = fmul fast float %4751, %4751
  %4811 = fmul fast float %4810, %4809
  %4812 = fmul fast float %4811, %4753
  %4813 = fmul fast float %4808, 0xBFE99999A0000000
  %4814 = fmul fast float %4813, %4699
  %4815 = fmul fast float %4814, %4710
  %4816 = fadd fast float %4815, 1.000000e+00
  %4817 = fadd fast float %4282, -1.000000e+00
  %4818 = fmul fast float %4816, %4817
  %4819 = fadd fast float %4818, 1.000000e+00
  %4820 = fsub fast float %4802, %4279
  %4821 = fsub fast float %4803, %4280
  %4822 = fsub fast float %4804, %4281
  %4823 = fmul fast float %4812, %4820
  %4824 = fmul fast float %4812, %4821
  %4825 = fmul fast float %4812, %4822
  %4826 = fadd fast float %4823, %4279
  %4827 = fadd fast float %4824, %4280
  %4828 = fadd fast float %4825, %4281
  %4829 = fsub fast float %102, %4243
  %4830 = fsub fast float %103, %4244
  %4831 = fsub fast float %104, %4245
  %4832 = fmul fast float %4812, %4829
  %4833 = fmul fast float %4812, %4830
  %4834 = fmul fast float %4812, %4831
  %4835 = fadd fast float %4832, %4243
  %4836 = fadd fast float %4833, %4244
  %4837 = fadd fast float %4834, %4245
  %4838 = fmul fast float %4812, %4807
  %4839 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4840 = fsub fast float 1.000000e+00, %4839
  %4841 = fmul fast float %4838, %4840
  %4842 = fadd fast float %4841, %4839
  %4843 = fsub fast float 1.000000e+00, %4255
  %4844 = fmul fast float %4812, %4843
  %4845 = fadd fast float %4844, %4255
  %4846 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4836, float %4837, float %4835, float %4836, float %4837)  ; Dot3(ax,ay,az,bx,by,bz)
  %4847 = call float @dx.op.unary.f32(i32 25, float %4846)  ; Rsqrt(value)
  %4848 = fmul fast float %4835, %4847
  %4849 = fmul fast float %4836, %4847
  %4850 = fmul fast float %4837, %4847
  br label %4851

; <label>:4851                                    ; preds = %4683, %4676
  %4852 = phi float [ %4682, %4676 ], [ %4689, %4683 ]
  %4853 = phi float [ %4681, %4676 ], [ %4687, %4683 ]
  %4854 = phi float [ %4680, %4676 ], [ %4685, %4683 ]
  %4855 = phi float [ %4679, %4676 ], [ %4688, %4683 ]
  %4856 = phi float [ %4678, %4676 ], [ %4686, %4683 ]
  %4857 = phi float [ %4677, %4676 ], [ %4684, %4683 ]
  %4858 = phi float [ %4294, %4676 ], [ %4735, %4683 ]
  %4859 = phi float [ %4295, %4676 ], [ %4736, %4683 ]
  %4860 = phi float [ %4296, %4676 ], [ %4737, %4683 ]
  %4861 = phi float [ %4279, %4676 ], [ %4826, %4683 ]
  %4862 = phi float [ %4280, %4676 ], [ %4827, %4683 ]
  %4863 = phi float [ %4281, %4676 ], [ %4828, %4683 ]
  %4864 = phi float [ %4243, %4676 ], [ %4848, %4683 ]
  %4865 = phi float [ %4244, %4676 ], [ %4849, %4683 ]
  %4866 = phi float [ %4245, %4676 ], [ %4850, %4683 ]
  %4867 = phi float [ %4282, %4676 ], [ %4842, %4683 ]
  %4868 = phi float [ %4255, %4676 ], [ %4845, %4683 ]
  %4869 = fsub fast float -0.000000e+00, %160
  %4870 = select i1 %220, float 0.000000e+00, float %4863
  %4871 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4865, float %4866, float %4854, float %4853, float %4852)  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4856, float %4855, float %4864, float %4865, float %4866)  ; Dot3(ax,ay,az,bx,by,bz)
  %4874 = fmul fast float %4873, 2.000000e+00
  %4875 = fmul fast float %4874, %4864
  %4876 = fmul fast float %4874, %4865
  %4877 = fmul fast float %4874, %4866
  %4878 = fsub fast float %4857, %4875
  %4879 = fsub fast float %4856, %4876
  %4880 = fsub fast float %4855, %4877
  %4881 = call float @dx.op.binary.f32(i32 36, float %4868, float 1.000000e+00)  ; FMin(a,b)
  %4882 = fsub fast float 1.000000e+00, %4868
  %4883 = bitcast float %4882 to i32
  %4884 = sub nsw i32 2129859010, %4883
  %4885 = bitcast i32 %4884 to float
  %4886 = fsub fast float 1.000000e+00, %66
  %4887 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4888 = call float @dx.op.binary.f32(i32 35, float %4887, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4889 = fdiv fast float %4886, %4888
  %4890 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4865, float %4866, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fmul fast float %4891, 5.000000e-01
  %4893 = fadd fast float %4892, 5.000000e-01
  %4894 = fmul fast float %4893, %66
  %4895 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4865, float %4866, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4897 = fmul fast float %4896, %4889
  %4898 = fadd fast float %4894, %4897
  %4899 = fsub fast float 5.000000e-01, %4892
  %4900 = fmul fast float %4899, %4858
  %4901 = fmul fast float %4899, %4859
  %4902 = fmul fast float %4899, %4860
  %4903 = fadd fast float %4898, %4900
  %4904 = fadd fast float %4898, %4901
  %4905 = fadd fast float %4898, %4902
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float %102, float %103, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = fmul fast float %4907, 5.000000e-01
  %4909 = fadd fast float %4908, 5.000000e-01
  %4910 = fmul fast float %4909, %66
  %4911 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fmul fast float %4912, %4889
  %4914 = fadd fast float %4910, %4913
  %4915 = fsub fast float 5.000000e-01, %4908
  %4916 = fmul fast float %4915, %4858
  %4917 = fmul fast float %4915, %4859
  %4918 = fmul fast float %4915, %4860
  %4919 = fadd fast float %4914, %4916
  %4920 = fadd fast float %4914, %4917
  %4921 = fadd fast float %4914, %4918
  %4922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.f32 %4922, 0
  %4924 = call float @dx.op.binary.f32(i32 36, float %4858, float %4923)  ; FMin(a,b)
  %4925 = fsub fast float 1.000000e+00, %4881
  %4926 = fmul fast float %4924, %4925
  %4927 = fsub fast float 1.000000e+00, %4926
  %4928 = bitcast float %4927 to i32
  %4929 = sub nsw i32 2129859010, %4928
  %4930 = bitcast i32 %4929 to float
  %4931 = call float @dx.op.binary.f32(i32 36, float %4859, float %4923)  ; FMin(a,b)
  %4932 = fmul fast float %4931, %4925
  %4933 = fsub fast float 1.000000e+00, %4932
  %4934 = bitcast float %4933 to i32
  %4935 = sub nsw i32 2129859010, %4934
  %4936 = bitcast i32 %4935 to float
  %4937 = call float @dx.op.binary.f32(i32 36, float %4860, float %4923)  ; FMin(a,b)
  %4938 = fmul fast float %4937, %4925
  %4939 = fsub fast float 1.000000e+00, %4938
  %4940 = bitcast float %4939 to i32
  %4941 = sub nsw i32 2129859010, %4940
  %4942 = bitcast i32 %4941 to float
  %4943 = fmul fast float %4881, %67
  %4944 = fmul fast float %4943, %4903
  %4945 = fmul fast float %4944, %4930
  %4946 = fmul fast float %4881, %68
  %4947 = fmul fast float %4946, %4904
  %4948 = fmul fast float %4947, %4936
  %4949 = fmul fast float %4881, %69
  %4950 = fmul fast float %4949, %4905
  %4951 = fmul fast float %4950, %4942
  %4952 = call float @dx.op.binary.f32(i32 36, float %4861, float %4923)  ; FMin(a,b)
  %4953 = fmul fast float %4952, %4925
  %4954 = fsub fast float 1.000000e+00, %4953
  %4955 = bitcast float %4954 to i32
  %4956 = sub nsw i32 2129859010, %4955
  %4957 = bitcast i32 %4956 to float
  %4958 = call float @dx.op.binary.f32(i32 36, float %4862, float %4923)  ; FMin(a,b)
  %4959 = fmul fast float %4958, %4925
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = bitcast float %4960 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = call float @dx.op.binary.f32(i32 36, float %4870, float %4923)  ; FMin(a,b)
  %4965 = fmul fast float %4964, %4925
  %4966 = fsub fast float 1.000000e+00, %4965
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = bitcast i32 %4968 to float
  %4970 = fmul fast float %4943, %4919
  %4971 = fmul fast float %4970, %4957
  %4972 = fmul fast float %4946, %4920
  %4973 = fmul fast float %4972, %4963
  %4974 = fmul fast float %4949, %4921
  %4975 = fmul fast float %4974, %4969
  %4976 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4948, float %4951, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4977 = select i1 %220, float 0.000000e+00, float %4945
  %4978 = select i1 %220, float %4976, float %4948
  %4979 = select i1 %220, float 0.000000e+00, float %4951
  %4980 = call float @dx.op.dot3.f32(i32 55, float %4971, float %4973, float %4975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4981 = select i1 %220, float 0.000000e+00, float %4971
  %4982 = select i1 %220, float %4980, float %4973
  %4983 = select i1 %220, float 0.000000e+00, float %4975
  %4984 = fmul fast float %4872, 9.843750e-01
  %4985 = fmul fast float %4867, 9.843750e-01
  %4986 = fadd fast float %4984, 7.812500e-03
  %4987 = fadd fast float %4985, 7.812500e-03
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %4986, float %4987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 2
  %4990 = extractvalue %dx.types.ResRet.f32 %4988, 3
  %4991 = fmul fast float %4989, %4861
  %4992 = fmul fast float %4989, %4862
  %4993 = fmul fast float %4989, %4870
  %4994 = fadd fast float %4991, %4990
  %4995 = fadd fast float %4992, %4990
  %4996 = fadd fast float %4993, %4990
  %4997 = fcmp fast ogt float %4256, 0.000000e+00
  br i1 %4997, label %4998, label %5024

; <label>:4998                                    ; preds = %4851
  %4999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4256, float %4872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = fadd fast float %5000, -5.000000e-01
  %5004 = fadd fast float %5001, -5.000000e-01
  %5005 = fadd fast float %5002, -5.000000e-01
  %5006 = fsub fast float 1.000000e+00, %4861
  %5007 = fsub fast float 1.000000e+00, %4862
  %5008 = fsub fast float 1.000000e+00, %4870
  %5009 = fmul fast float %4861, 4.000000e+00
  %5010 = fmul fast float %5009, %5006
  %5011 = fmul fast float %5010, %5003
  %5012 = fmul fast float %4862, 4.000000e+00
  %5013 = fmul fast float %5012, %5007
  %5014 = fmul fast float %5013, %5004
  %5015 = fmul fast float %4870, 4.000000e+00
  %5016 = fmul fast float %5015, %5008
  %5017 = fmul fast float %5016, %5005
  %5018 = fadd fast float %5011, %4994
  %5019 = fadd fast float %5014, %4995
  %5020 = fadd fast float %5017, %4996
  %5021 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5022 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5023 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  br label %5024

; <label>:5024                                    ; preds = %4998, %4851
  %5025 = phi float [ %5021, %4998 ], [ %4994, %4851 ]
  %5026 = phi float [ %5022, %4998 ], [ %4995, %4851 ]
  %5027 = phi float [ %5023, %4998 ], [ %4996, %4851 ]
  %5028 = call float @dx.op.binary.f32(i32 35, float %5026, float %5027)  ; FMax(a,b)
  %5029 = call float @dx.op.binary.f32(i32 35, float %5025, float %5028)  ; FMax(a,b)
  %5030 = fsub fast float 1.000000e+00, %5029
  %5031 = fmul fast float %5030, %4977
  %5032 = fmul fast float %5030, %4978
  %5033 = fmul fast float %5030, %4979
  %5034 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4859, float %4860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = fcmp fast ogt float %5034, 0x3E7FF19E20000000
  %5036 = fdiv fast float 1.000000e+00, %5034
  %5037 = select i1 %5035, float %5036, float 0.000000e+00
  %5038 = fmul fast float %5037, %4858
  %5039 = fmul fast float %5037, %4859
  %5040 = fmul fast float %5037, %4860
  %5041 = fadd fast float %5038, -1.000000e+00
  %5042 = fadd fast float %5039, -1.000000e+00
  %5043 = fadd fast float %5040, -1.000000e+00
  %5044 = fmul fast float %5041, 5.000000e-01
  %5045 = fmul fast float %5042, 5.000000e-01
  %5046 = fmul fast float %5043, 5.000000e-01
  %5047 = fadd fast float %5044, 1.000000e+00
  %5048 = fadd fast float %5045, 1.000000e+00
  %5049 = fadd fast float %5046, 1.000000e+00
  %5050 = fmul fast float %5025, %4981
  %5051 = fmul fast float %5026, %4982
  %5052 = fmul fast float %5027, %4983
  %5053 = fsub fast float 1.000000e+00, %4872
  %5054 = bitcast float %5053 to i32
  %5055 = sitofp i32 %5054 to float
  %5056 = fmul fast float %5055, 5.000000e+00
  %5057 = fadd fast float %5056, 0xC1EFBF8940000000
  %5058 = fptosi float %5057 to i32
  %5059 = bitcast i32 %5058 to float
  %5060 = fmul fast float %5059, %4257
  %5061 = fmul fast float %4977, %5060
  %5062 = fmul fast float %5061, %5030
  %5063 = fmul fast float %5062, %5047
  %5064 = fmul fast float %4978, %5060
  %5065 = fmul fast float %5064, %5030
  %5066 = fmul fast float %5065, %5048
  %5067 = fmul fast float %4979, %5060
  %5068 = fmul fast float %5067, %5030
  %5069 = fmul fast float %5068, %5049
  %5070 = fmul fast float %5031, %4253
  %5071 = fmul fast float %5032, %4253
  %5072 = fmul fast float %5033, %4253
  %5073 = fadd fast float %5050, %4249
  %5074 = fadd fast float %5073, %5063
  %5075 = fmul fast float %5074, %4253
  %5076 = fadd fast float %5051, %4250
  %5077 = fadd fast float %5076, %5066
  %5078 = fmul fast float %5077, %4253
  %5079 = fadd fast float %5052, %4251
  %5080 = fadd fast float %5079, %5069
  %5081 = fmul fast float %5080, %4253
  %5082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.f32 %5082, 3
  %5084 = fcmp fast oeq float %5083, 0.000000e+00
  br i1 %5084, label %6154, label %5085

; <label>:5085                                    ; preds = %5024
  %5086 = extractvalue %dx.types.CBufRet.f32 %5082, 0
  %5087 = extractvalue %dx.types.CBufRet.f32 %5082, 1
  %5088 = extractvalue %dx.types.CBufRet.f32 %5082, 2
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 0
  %5091 = extractvalue %dx.types.CBufRet.f32 %5089, 1
  %5092 = extractvalue %dx.types.CBufRet.f32 %5089, 2
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 0
  %5095 = extractvalue %dx.types.CBufRet.f32 %5093, 1
  %5096 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5097 = select i1 %220, float %5094, float %5090
  %5098 = select i1 %220, float %5096, float %5091
  %5099 = select i1 %220, float %5095, float %5092
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 2
  %5102 = fmul fast float %5101, %102
  %5103 = fmul fast float %5101, %103
  %5104 = fmul fast float %5101, %104
  %5105 = fadd fast float %5102, %158
  %5106 = fadd fast float %5103, %159
  %5107 = fadd fast float %5104, %160
  %5108 = fcmp fast olt float %5083, 0.000000e+00
  br i1 %5108, label %5733, label %5109

; <label>:5109                                    ; preds = %5085
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 0
  %5112 = extractvalue %dx.types.CBufRet.f32 %5110, 1
  %5113 = extractvalue %dx.types.CBufRet.f32 %5110, 2
  %5114 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.f32 %5115, 0
  %5117 = extractvalue %dx.types.CBufRet.f32 %5115, 1
  %5118 = extractvalue %dx.types.CBufRet.f32 %5115, 2
  %5119 = extractvalue %dx.types.CBufRet.f32 %5115, 3
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 0
  %5122 = extractvalue %dx.types.CBufRet.f32 %5120, 1
  %5123 = extractvalue %dx.types.CBufRet.f32 %5120, 2
  %5124 = extractvalue %dx.types.CBufRet.f32 %5120, 3
  %5125 = fmul fast float %5111, %5105
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5112, float %5125)  ; FMad(a,b,c)
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5113, float %5126)  ; FMad(a,b,c)
  %5128 = fadd fast float %5127, %5114
  %5129 = fmul fast float %5116, %5105
  %5130 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5117, float %5129)  ; FMad(a,b,c)
  %5131 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5118, float %5130)  ; FMad(a,b,c)
  %5132 = fadd fast float %5131, %5119
  %5133 = fmul fast float %5121, %5105
  %5134 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5122, float %5133)  ; FMad(a,b,c)
  %5135 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5123, float %5134)  ; FMad(a,b,c)
  %5136 = fadd fast float %5135, %5124
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5140 = extractvalue %dx.types.CBufRet.f32 %5137, 3
  %5141 = fmul fast float %5140, %5128
  %5142 = fmul fast float %5140, %5132
  %5143 = fadd fast float %5141, %5138
  %5144 = fadd fast float %5142, %5139
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 1
  %5148 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5149 = fmul fast float %5148, %5128
  %5150 = fmul fast float %5148, %5132
  %5151 = fadd fast float %5149, %5146
  %5152 = fadd fast float %5150, %5147
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5155 = fsub fast float %5154, %5136
  %5156 = extractvalue %dx.types.CBufRet.f32 %5153, 2
  %5157 = fmul fast float %5155, %5156
  %5158 = fsub fast float 1.000000e+00, %5157
  %5159 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 2
  %5163 = fadd fast float %5162, %5160
  %5164 = fcmp fast ogt float %5163, 0.000000e+00
  br i1 %5164, label %5165, label %5189

; <label>:5165                                    ; preds = %5109
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5168 = extractvalue %dx.types.CBufRet.f32 %5166, 1
  %5169 = fsub fast float %5151, %5167
  %5170 = fsub fast float %5152, %5168
  %5171 = fcmp fast olt float %5169, 0.000000e+00
  %5172 = fcmp fast olt float %5170, 0.000000e+00
  %5173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.f32 %5173, 0
  %5175 = extractvalue %dx.types.CBufRet.f32 %5173, 1
  %5176 = extractvalue %dx.types.CBufRet.f32 %5173, 2
  %5177 = extractvalue %dx.types.CBufRet.f32 %5173, 3
  %5178 = select i1 %5171, float %5174, float %5176
  %5179 = select i1 %5172, float %5175, float %5177
  %5180 = fmul fast float %5178, %5169
  %5181 = fmul fast float %5179, %5170
  %5182 = call float @dx.op.unary.f32(i32 6, float %5180)  ; FAbs(value)
  %5183 = call float @dx.op.unary.f32(i32 6, float %5181)  ; FAbs(value)
  %5184 = extractvalue %dx.types.CBufRet.f32 %5100, 0
  %5185 = call float @dx.op.binary.f32(i32 35, float %5182, float %5183)  ; FMax(a,b)
  %5186 = fsub fast float %5184, %5185
  %5187 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5188 = fmul fast float %5187, %5159
  br label %5189

; <label>:5189                                    ; preds = %5165, %5109
  %5190 = phi float [ %5188, %5165 ], [ 0.000000e+00, %5109 ]
  %5191 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5192 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5193 = fadd fast float %5192, %5191
  %5194 = fcmp fast ogt float %5193, 0.000000e+00
  %5195 = extractvalue %dx.types.CBufRet.f32 %5100, 0
  br i1 %5194, label %5196, label %5219

; <label>:5196                                    ; preds = %5189
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 0
  %5199 = extractvalue %dx.types.CBufRet.f32 %5197, 1
  %5200 = fsub fast float %5143, %5198
  %5201 = fsub fast float %5144, %5199
  %5202 = fcmp fast olt float %5200, 0.000000e+00
  %5203 = fcmp fast olt float %5201, 0.000000e+00
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5208 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5209 = select i1 %5202, float %5205, float %5207
  %5210 = select i1 %5203, float %5206, float %5208
  %5211 = fmul fast float %5209, %5200
  %5212 = fmul fast float %5210, %5201
  %5213 = call float @dx.op.unary.f32(i32 6, float %5211)  ; FAbs(value)
  %5214 = call float @dx.op.unary.f32(i32 6, float %5212)  ; FAbs(value)
  %5215 = call float @dx.op.binary.f32(i32 35, float %5213, float %5214)  ; FMax(a,b)
  %5216 = fsub fast float %5195, %5215
  %5217 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5218 = fmul fast float %5217, %5159
  br label %5219

; <label>:5219                                    ; preds = %5196, %5189
  %5220 = phi float [ %5218, %5196 ], [ 0.000000e+00, %5189 ]
  %5221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5222 = extractvalue %dx.types.CBufRet.f32 %5221, 1
  %5223 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5227 = fsub fast float %5128, %5225
  %5228 = fsub fast float %5132, %5226
  %5229 = fcmp fast olt float %5227, 0.000000e+00
  %5230 = fcmp fast olt float %5228, 0.000000e+00
  %5231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5232 = extractvalue %dx.types.CBufRet.f32 %5231, 0
  %5233 = extractvalue %dx.types.CBufRet.f32 %5231, 1
  %5234 = extractvalue %dx.types.CBufRet.f32 %5231, 2
  %5235 = extractvalue %dx.types.CBufRet.f32 %5231, 3
  %5236 = select i1 %5229, float %5232, float %5234
  %5237 = select i1 %5230, float %5233, float %5235
  %5238 = fmul fast float %5236, %5227
  %5239 = fmul fast float %5237, %5228
  %5240 = call float @dx.op.unary.f32(i32 6, float %5238)  ; FAbs(value)
  %5241 = call float @dx.op.unary.f32(i32 6, float %5239)  ; FAbs(value)
  %5242 = call float @dx.op.binary.f32(i32 35, float %5240, float %5241)  ; FMax(a,b)
  %5243 = fsub fast float %5195, %5242
  %5244 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5245 = call float @dx.op.binary.f32(i32 36, float %5244, float %5223)  ; FMin(a,b)
  %5246 = fmul fast float %5245, %5159
  %5247 = fsub fast float %5220, %5246
  %5248 = fsub fast float %5190, %5220
  %5249 = fsub fast float %5248, %5246
  %5250 = call float @dx.op.binary.f32(i32 35, float %5220, float %5190)  ; FMax(a,b)
  %5251 = call float @dx.op.binary.f32(i32 35, float %5246, float %5250)  ; FMax(a,b)
  %5252 = fcmp fast olt float %5251, 1.000000e+00
  br i1 %5252, label %5253, label %5651, !dx.controlflow.hints !91

; <label>:5253                                    ; preds = %5219
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = fcmp fast une float %5255, 0.000000e+00
  br i1 %5256, label %5257, label %5651, !dx.controlflow.hints !92

; <label>:5257                                    ; preds = %5253
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.CBufRet.f32 %5258, 1
  %5261 = extractvalue %dx.types.CBufRet.f32 %5258, 2
  %5262 = extractvalue %dx.types.CBufRet.f32 %5258, 3
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.CBufRet.f32 %5263, 1
  %5266 = extractvalue %dx.types.CBufRet.f32 %5263, 2
  %5267 = extractvalue %dx.types.CBufRet.f32 %5263, 3
  %5268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.CBufRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.CBufRet.f32 %5268, 2
  %5272 = extractvalue %dx.types.CBufRet.f32 %5268, 3
  %5273 = fmul fast float %5259, %5105
  %5274 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5260, float %5273)  ; FMad(a,b,c)
  %5275 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5261, float %5274)  ; FMad(a,b,c)
  %5276 = fadd fast float %5275, %5262
  %5277 = fmul fast float %5264, %5105
  %5278 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5265, float %5277)  ; FMad(a,b,c)
  %5279 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5266, float %5278)  ; FMad(a,b,c)
  %5280 = fadd fast float %5279, %5267
  %5281 = fmul fast float %5269, %5105
  %5282 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5270, float %5281)  ; FMad(a,b,c)
  %5283 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5271, float %5282)  ; FMad(a,b,c)
  %5284 = fadd fast float %5283, %5272
  %5285 = fcmp fast oge float %5276, 1.000000e+00
  %5286 = fcmp fast oge float %5280, 1.000000e+00
  %5287 = or i1 %5285, %5286
  %5288 = fcmp fast olt float %5276, 0.000000e+00
  %5289 = fcmp fast olt float %5280, 0.000000e+00
  %5290 = or i1 %5288, %5289
  %5291 = or i1 %5287, %5290
  br i1 %5291, label %5651, label %5292, !dx.controlflow.hints !93

; <label>:5292                                    ; preds = %5257
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5296 = extractvalue %dx.types.CBufRet.f32 %5293, 2
  %5297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.i32 %5297, 2
  %5299 = uitofp i32 %5298 to float
  %5300 = extractvalue %dx.types.CBufRet.i32 %5297, 3
  %5301 = uitofp i32 %5300 to float
  %5302 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5303 = fmul fast float %5302, 2.000000e+00
  %5304 = fsub fast float %5276, %5294
  %5305 = fsub fast float %5280, %5295
  %5306 = fmul fast float %5303, %5304
  %5307 = fmul fast float %5303, %5305
  %5308 = fdiv fast float 1.000000e+00, %5088
  %5309 = fmul fast float %5307, %5308
  %5310 = call float @dx.op.unary.f32(i32 6, float %5309)  ; FAbs(value)
  %5311 = fmul fast float %5296, %5107
  %5312 = fmul fast float %5311, %5303
  %5313 = call float @dx.op.unary.f32(i32 6, float %5312)  ; FAbs(value)
  %5314 = call float @dx.op.unary.f32(i32 6, float %5306)  ; FAbs(value)
  %5315 = call float @dx.op.binary.f32(i32 35, float %5313, float %5310)  ; FMax(a,b)
  %5316 = call float @dx.op.binary.f32(i32 35, float %5314, float %5315)  ; FMax(a,b)
  %5317 = fmul fast float %5316, 2.000000e+00
  %5318 = call float @dx.op.unary.f32(i32 23, float %5317)  ; Log(value)
  %5319 = call float @dx.op.binary.f32(i32 35, float %5318, float %5299)  ; FMax(a,b)
  %5320 = call float @dx.op.unary.f32(i32 22, float %5319)  ; Frc(value)
  %5321 = fadd fast float %5320, 0xBFEA666660000000
  %5322 = fmul fast float %5321, 8.000000e+00
  %5323 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5324 = call float @dx.op.unary.f32(i32 27, float %5319)  ; Round_ni(value)
  %5325 = fadd fast float %5324, %5323
  %5326 = call float @dx.op.binary.f32(i32 36, float %5325, float %5301)  ; FMin(a,b)
  %5327 = call float @dx.op.unary.f32(i32 27, float %5326)  ; Round_ni(value)
  %5328 = fsub fast float -0.000000e+00, %5327
  %5329 = call float @dx.op.unary.f32(i32 21, float %5328)  ; Exp(value)
  %5330 = fmul fast float %5329, %5303
  %5331 = fmul fast float %5330, %5276
  %5332 = fmul fast float %5330, %5280
  %5333 = fmul fast float %5331, 2.500000e-01
  %5334 = fmul fast float %5332, 2.500000e-01
  %5335 = fadd fast float %5333, 5.000000e-01
  %5336 = fadd fast float %5334, 5.000000e-01
  %5337 = fsub fast float %5301, %5299
  %5338 = fptoui float %5337 to i32
  %5339 = add i32 %5338, 320
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5339)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.CBufRet.f32 %5340, 1
  %5343 = fcmp fast une float %5326, %5301
  %5344 = fsub fast float %5276, %5341
  %5345 = fsub fast float %5280, %5342
  %5346 = call float @dx.op.unary.f32(i32 6, float %5344)  ; FAbs(value)
  %5347 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5348 = fmul fast float %5346, %5330
  %5349 = fmul fast float %5347, %5330
  %5350 = fcmp fast olt float %5348, 1.000000e+00
  %5351 = fcmp fast olt float %5349, 1.000000e+00
  %5352 = and i1 %5350, %5351
  %5353 = or i1 %5343, %5352
  br i1 %5353, label %5354, label %5651, !dx.controlflow.hints !94

; <label>:5354                                    ; preds = %5292
  %5355 = fmul fast float %5332, 5.000000e-01
  %5356 = fmul fast float %5331, 5.000000e-01
  %5357 = fadd fast float %5355, 5.000000e-01
  %5358 = fadd fast float %5356, 5.000000e-01
  %5359 = sitofp i32 %5298 to float
  %5360 = fsub fast float %5326, %5359
  %5361 = call float @dx.op.unary.f32(i32 27, float %5360)  ; Round_ni(value)
  %5362 = call float @dx.op.unary.f32(i32 22, float %5326)  ; Frc(value)
  %5363 = call float @dx.op.unary.f32(i32 22, float %5358)  ; Frc(value)
  %5364 = call float @dx.op.unary.f32(i32 22, float %5357)  ; Frc(value)
  %5365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5363, float %5364, float %5361, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5366 = extractvalue %dx.types.ResRet.f32 %5365, 0
  %5367 = extractvalue %dx.types.ResRet.f32 %5365, 1
  %5368 = extractvalue %dx.types.ResRet.f32 %5365, 2
  %5369 = extractvalue %dx.types.ResRet.f32 %5365, 3
  %5370 = fcmp fast ogt float %5362, 0.000000e+00
  br i1 %5370, label %5371, label %5392, !dx.controlflow.hints !95

; <label>:5371                                    ; preds = %5354
  %5372 = fadd fast float %5361, 1.000000e+00
  %5373 = call float @dx.op.unary.f32(i32 22, float %5335)  ; Frc(value)
  %5374 = call float @dx.op.unary.f32(i32 22, float %5336)  ; Frc(value)
  %5375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5373, float %5374, float %5372, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5376 = extractvalue %dx.types.ResRet.f32 %5375, 0
  %5377 = extractvalue %dx.types.ResRet.f32 %5375, 1
  %5378 = extractvalue %dx.types.ResRet.f32 %5375, 2
  %5379 = extractvalue %dx.types.ResRet.f32 %5375, 3
  %5380 = fsub fast float %5376, %5366
  %5381 = fsub fast float %5377, %5367
  %5382 = fsub fast float %5378, %5368
  %5383 = fsub fast float %5379, %5369
  %5384 = fmul fast float %5380, %5362
  %5385 = fmul fast float %5381, %5362
  %5386 = fmul fast float %5382, %5362
  %5387 = fmul fast float %5383, %5362
  %5388 = fadd fast float %5384, %5366
  %5389 = fadd fast float %5385, %5367
  %5390 = fadd fast float %5386, %5368
  %5391 = fadd fast float %5387, %5369
  br label %5392

; <label>:5392                                    ; preds = %5371, %5354
  %5393 = phi float [ %5388, %5371 ], [ %5366, %5354 ]
  %5394 = phi float [ %5389, %5371 ], [ %5367, %5354 ]
  %5395 = phi float [ %5390, %5371 ], [ %5368, %5354 ]
  %5396 = phi float [ %5391, %5371 ], [ %5369, %5354 ]
  %5397 = fadd fast float %5393, -5.000000e-01
  %5398 = fadd fast float %5395, -5.000000e-01
  %5399 = fmul fast float %5397, 0xBFD5555560000000
  %5400 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5398, float %5399)  ; FMad(a,b,c)
  %5401 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5394, float 0.000000e+00)  ; FMad(a,b,c)
  %5402 = fadd fast float %5401, %5396
  %5403 = fmul fast float %5397, -7.500000e-01
  %5404 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5398, float %5403)  ; FMad(a,b,c)
  %5405 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5394, float 0.000000e+00)  ; FMad(a,b,c)
  %5406 = fadd fast float %5405, %5396
  %5407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5408 = extractvalue %dx.types.CBufRet.f32 %5407, 0
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 0
  %5411 = extractvalue %dx.types.CBufRet.f32 %5409, 1
  %5412 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5413 = extractvalue %dx.types.CBufRet.f32 %5409, 3
  %5414 = fsub fast float %5410, %5400
  %5415 = fsub fast float %5411, %5402
  %5416 = fsub fast float %5412, %5404
  %5417 = fsub fast float %5413, %5406
  %5418 = fmul fast float %5414, %5408
  %5419 = fmul fast float %5415, %5408
  %5420 = fmul fast float %5416, %5408
  %5421 = fmul fast float %5417, %5408
  %5422 = fadd fast float %5418, %5400
  %5423 = fadd fast float %5419, %5402
  %5424 = fadd fast float %5420, %5404
  %5425 = fadd fast float %5421, %5406
  %5426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5427 = extractvalue %dx.types.ResRet.i32 %5426, 0
  %5428 = and i32 %5427, 536870911
  %5429 = uitofp i32 %5428 to float
  %5430 = fmul fast float %5429, %5276
  %5431 = fmul fast float %5429, %5280
  %5432 = fptoui float %5430 to i32
  %5433 = fptoui float %5431 to i32
  %5434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.i32 %5434, 0
  %5436 = and i32 %5435, 31
  %5437 = lshr i32 %5432, %5436
  %5438 = lshr i32 %5433, %5436
  %5439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.i32 %5439, 0
  %5441 = and i32 %5440, 31
  %5442 = shl i32 1, %5441
  %5443 = call i32 @dx.op.binary.i32(i32 40, i32 %5442, i32 4)  ; UMin(a,b)
  %5444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5445 = extractvalue %dx.types.ResRet.i32 %5444, 0
  %5446 = extractvalue %dx.types.ResRet.i32 %5444, 1
  %5447 = icmp eq i32 %5443, 0
  br i1 %5447, label %5489, label %5448

; <label>:5448                                    ; preds = %5392
  br label %5449

; <label>:5449                                    ; preds = %5477, %5448
  %5450 = phi i32 [ %5480, %5477 ], [ 0, %5448 ]
  %5451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.i32 %5451, 0
  %5453 = lshr i32 %5452, 16
  %5454 = and i32 %5453, 31
  %5455 = shl i32 %5438, %5454
  %5456 = add i32 %5455, %5437
  %5457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5458 = extractvalue %dx.types.ResRet.i32 %5457, 0
  %5459 = and i32 %5458, 31
  %5460 = shl i32 %5456, %5459
  %5461 = add i32 %5460, %5450
  %5462 = shl i32 %5461, 2
  %5463 = add i32 %5462, 32
  %5464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.i32 %5464, 0
  %5466 = icmp slt i32 %5465, 0
  %5467 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5450
  %5468 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5450
  %5469 = bitcast float* %5467 to i32*
  %5470 = bitcast float* %5468 to i32*
  br i1 %5466, label %5471, label %5477

; <label>:5471                                    ; preds = %5449
  %5472 = and i32 %5465, 1073741823
  %5473 = add nuw nsw i32 %5472, 20
  %5474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5473, i32 undef)  ; BufferLoad(srv,index,wot)
  %5475 = extractvalue %dx.types.ResRet.i32 %5474, 0
  %5476 = extractvalue %dx.types.ResRet.i32 %5474, 1
  br label %5477

; <label>:5477                                    ; preds = %5471, %5449
  %5478 = phi i32 [ %5475, %5471 ], [ %5445, %5449 ]
  %5479 = phi i32 [ %5476, %5471 ], [ %5446, %5449 ]
  store i32 %5478, i32* %5469, align 4
  store i32 %5479, i32* %5470, align 4
  %5480 = add nuw i32 %5450, 1
  %5481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5482 = extractvalue %dx.types.CBufRet.i32 %5481, 2
  %5483 = icmp eq i32 %5482, 0
  %5484 = icmp ugt i32 %5465, -1073741825
  %5485 = and i1 %5484, %5483
  %5486 = icmp ult i32 %5480, %5443
  %5487 = and i1 %5485, %5486
  br i1 %5487, label %5449, label %5488

; <label>:5488                                    ; preds = %5477
  br label %5489

; <label>:5489                                    ; preds = %5488, %5392
  %5490 = phi i32 [ 0, %5392 ], [ %5480, %5488 ]
  %5491 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5492 = fptoui float %5491 to i32
  %5493 = icmp eq i32 %5492, 0
  br i1 %5493, label %5545, label %5494

; <label>:5494                                    ; preds = %5489
  br label %5495

; <label>:5495                                    ; preds = %5540, %5494
  %5496 = phi i32 [ %5541, %5540 ], [ %5490, %5494 ]
  %5497 = phi i32 [ %5542, %5540 ], [ 0, %5494 ]
  %5498 = lshr i32 %5497, 2
  %5499 = and i32 %5497, 3
  %5500 = add nuw nsw i32 %5498, 83
  %5501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5500)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.i32 %5501, 0
  %5503 = extractvalue %dx.types.CBufRet.i32 %5501, 1
  %5504 = extractvalue %dx.types.CBufRet.i32 %5501, 2
  %5505 = extractvalue %dx.types.CBufRet.i32 %5501, 3
  %5506 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5502, i32* %5506, align 4
  %5507 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5503, i32* %5507, align 4
  %5508 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5504, i32* %5508, align 4
  %5509 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5505, i32* %5509, align 4
  %5510 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5499
  %5511 = load i32, i32* %5510, align 4, !tbaa !96, !noalias !100
  %5512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5513 = extractvalue %dx.types.ResRet.i32 %5512, 0
  %5514 = lshr i32 %5513, 16
  %5515 = and i32 %5514, 31
  %5516 = shl i32 %5438, %5515
  %5517 = add i32 %5516, %5437
  %5518 = shl i32 %5517, 2
  %5519 = add i32 %5518, %5511
  %5520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5519, i32 undef)  ; BufferLoad(srv,index,wot)
  %5521 = extractvalue %dx.types.ResRet.i32 %5520, 0
  %5522 = icmp eq i32 %5521, 0
  br i1 %5522, label %5540, label %5523

; <label>:5523                                    ; preds = %5495
  %5524 = icmp slt i32 %5521, 0
  %5525 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5496
  %5526 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5496
  %5527 = bitcast float* %5525 to i32*
  %5528 = bitcast float* %5526 to i32*
  br i1 %5524, label %5529, label %5536

; <label>:5529                                    ; preds = %5523
  %5530 = and i32 %5521, 1073741823
  %5531 = add i32 %5511, 20
  %5532 = add i32 %5531, %5530
  %5533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5532, i32 undef)  ; BufferLoad(srv,index,wot)
  %5534 = extractvalue %dx.types.ResRet.i32 %5533, 0
  %5535 = extractvalue %dx.types.ResRet.i32 %5533, 1
  br label %5536

; <label>:5536                                    ; preds = %5529, %5523
  %5537 = phi i32 [ %5534, %5529 ], [ %5445, %5523 ]
  %5538 = phi i32 [ %5535, %5529 ], [ %5446, %5523 ]
  store i32 %5537, i32* %5527, align 4
  store i32 %5538, i32* %5528, align 4
  %5539 = add i32 %5496, 1
  br label %5540

; <label>:5540                                    ; preds = %5536, %5495
  %5541 = phi i32 [ %5496, %5495 ], [ %5539, %5536 ]
  %5542 = add nuw i32 %5497, 1
  %5543 = icmp eq i32 %5542, %5492
  br i1 %5543, label %5544, label %5495

; <label>:5544                                    ; preds = %5540
  br label %5545

; <label>:5545                                    ; preds = %5544, %5489
  %5546 = phi i32 [ %5490, %5489 ], [ %5541, %5544 ]
  %5547 = icmp eq i32 %5546, 1
  %5548 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %5549 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %5547, label %5550, label %5553

; <label>:5550                                    ; preds = %5545
  %5551 = load float, float* %5548, align 4
  %5552 = load float, float* %5549, align 4
  br label %5580

; <label>:5553                                    ; preds = %5545
  %5554 = load float, float* %5548, align 4
  %5555 = load float, float* %5549, align 4
  %5556 = fdiv fast float 1.000000e+00, %5555
  %5557 = fsub fast float %5554, %5556
  %5558 = icmp ugt i32 %5546, 1
  br i1 %5558, label %5559, label %5575

; <label>:5559                                    ; preds = %5553
  br label %5560

; <label>:5560                                    ; preds = %5560, %5559
  %5561 = phi float [ %5570, %5560 ], [ %5557, %5559 ]
  %5562 = phi float [ %5571, %5560 ], [ %5554, %5559 ]
  %5563 = phi i32 [ %5572, %5560 ], [ 1, %5559 ]
  %5564 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %5563
  %5565 = load float, float* %5564, align 4
  %5566 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5563
  %5567 = load float, float* %5566, align 4
  %5568 = fdiv fast float 1.000000e+00, %5567
  %5569 = fsub fast float %5565, %5568
  %5570 = call float @dx.op.binary.f32(i32 36, float %5561, float %5569)  ; FMin(a,b)
  %5571 = call float @dx.op.binary.f32(i32 35, float %5562, float %5565)  ; FMax(a,b)
  %5572 = add nuw i32 %5563, 1
  %5573 = icmp eq i32 %5572, %5546
  br i1 %5573, label %5574, label %5560

; <label>:5574                                    ; preds = %5560
  br label %5575

; <label>:5575                                    ; preds = %5574, %5553
  %5576 = phi float [ %5557, %5553 ], [ %5570, %5574 ]
  %5577 = phi float [ %5554, %5553 ], [ %5571, %5574 ]
  %5578 = fsub fast float %5577, %5576
  %5579 = fdiv fast float 1.000000e+00, %5578
  br label %5580

; <label>:5580                                    ; preds = %5575, %5550
  %5581 = phi float [ %5551, %5550 ], [ %5577, %5575 ]
  %5582 = phi float [ %5552, %5550 ], [ %5579, %5575 ]
  %5583 = fadd fast float %5284, %5581
  %5584 = fmul fast float %5583, %5582
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = fmul fast float %5585, 2.000000e+00
  %5587 = fsub fast float 1.000000e+00, %5586
  %5588 = fmul fast float %5422, %5422
  %5589 = fsub fast float %5423, %5588
  %5590 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5589)  ; FMax(a,b)
  %5591 = fdiv fast float 1.000000e+00, %5590
  %5592 = fmul fast float %5423, %5422
  %5593 = fsub fast float %5424, %5592
  %5594 = fsub fast float %5587, %5422
  %5595 = fmul fast float %5587, %5587
  %5596 = fsub fast float %5595, %5423
  %5597 = fmul fast float %5591, %5593
  %5598 = fmul fast float %5597, %5594
  %5599 = fsub fast float %5596, %5598
  %5600 = fmul fast float %5423, %5423
  %5601 = fsub fast float %5425, %5600
  %5602 = fmul fast float %5593, %5593
  %5603 = fmul fast float %5602, %5591
  %5604 = fsub fast float %5601, %5603
  %5605 = fdiv fast float %5599, %5604
  %5606 = fmul fast float %5605, %5593
  %5607 = fsub fast float %5594, %5606
  %5608 = fmul fast float %5607, %5591
  %5609 = fmul fast float %5608, %5422
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = fmul fast float %5605, %5423
  %5612 = fsub fast float %5610, %5611
  %5613 = fmul fast float %5608, %5608
  %5614 = fmul fast float %5605, 4.000000e+00
  %5615 = fmul fast float %5614, %5612
  %5616 = fsub fast float %5613, %5615
  %5617 = call float @dx.op.unary.f32(i32 24, float %5616)  ; Sqrt(value)
  %5618 = fcmp fast oge float %5608, 0.000000e+00
  %5619 = fsub fast float -0.000000e+00, %5617
  %5620 = select i1 %5618, float %5619, float %5617
  %5621 = fsub fast float %5620, %5608
  %5622 = fdiv fast float %5621, %5605
  %5623 = fdiv fast float %5612, %5621
  %5624 = fmul fast float %5622, 5.000000e-01
  %5625 = fmul fast float %5623, 2.000000e+00
  %5626 = select i1 %5618, float %5624, float %5625
  %5627 = select i1 %5618, float %5625, float %5624
  %5628 = call float @dx.op.binary.f32(i32 35, float %5626, float %5627)  ; FMax(a,b)
  %5629 = call float @dx.op.binary.f32(i32 36, float %5626, float %5627)  ; FMin(a,b)
  %5630 = fcmp fast ogt float %5587, %5628
  %5631 = fsub fast float %5587, %5629
  %5632 = fsub fast float %5587, %5628
  %5633 = fsub fast float %5628, %5629
  %5634 = select i1 %5630, float %5632, float %5633
  %5635 = fmul float %5631, %5634
  %5636 = select i1 %5630, float %5629, float %5587
  %5637 = fcmp fast ogt float %5587, %5629
  %5638 = fmul fast float %5636, %5628
  %5639 = fadd fast float %5636, %5628
  %5640 = fmul fast float %5639, %5422
  %5641 = fadd fast float %5638, %5423
  %5642 = fsub fast float %5641, %5640
  %5643 = fdiv fast float %5642, %5635
  %5644 = select i1 %5637, float %5643, float 0.000000e+00
  %5645 = fsub fast float 1.000000e+00, %5644
  %5646 = select i1 %5630, float %5645, float %5644
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5407, 3
  %5649 = fmul fast float %5648, %5647
  %5650 = fsub fast float 1.000000e+00, %5649
  br label %5651

; <label>:5651                                    ; preds = %5580, %5292, %5257, %5253, %5219
  %5652 = phi float [ 1.000000e+00, %5219 ], [ %5650, %5580 ], [ 1.000000e+00, %5257 ], [ 1.000000e+00, %5292 ], [ 1.000000e+00, %5253 ]
  %5653 = fcmp fast ogt float %5249, 0.000000e+00
  br i1 %5653, label %5654, label %5660, !dx.controlflow.hints !109

; <label>:5654                                    ; preds = %5651
  %5655 = fadd fast float %5162, %5136
  %5656 = call float @dx.op.binary.f32(i32 35, float %5655, float 0.000000e+00)  ; FMax(a,b)
  %5657 = fadd fast float %5656, 0x3F10000000000000
  %5658 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5151, float %5152, float undef, float undef, i32 0, i32 0, i32 undef, float %5657)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5659 = extractvalue %dx.types.ResRet.f32 %5658, 0
  br label %5660

; <label>:5660                                    ; preds = %5654, %5651
  %5661 = phi float [ %5659, %5654 ], [ 1.000000e+00, %5651 ]
  %5662 = fcmp fast ogt float %5247, 0.000000e+00
  br i1 %5662, label %5663, label %5669, !dx.controlflow.hints !110

; <label>:5663                                    ; preds = %5660
  %5664 = fadd fast float %5192, %5136
  %5665 = call float @dx.op.binary.f32(i32 35, float %5664, float 0.000000e+00)  ; FMax(a,b)
  %5666 = fadd fast float %5665, 0x3F10000000000000
  %5667 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5143, float %5144, float undef, float undef, i32 0, i32 0, i32 undef, float %5666)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5668 = extractvalue %dx.types.ResRet.f32 %5667, 0
  br label %5669

; <label>:5669                                    ; preds = %5663, %5660
  %5670 = phi float [ %5668, %5663 ], [ 1.000000e+00, %5660 ]
  %5671 = fcmp fast ogt float %5246, 0.000000e+00
  br i1 %5671, label %5672, label %5679, !dx.controlflow.hints !111

; <label>:5672                                    ; preds = %5669
  %5673 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5674 = fadd fast float %5673, %5136
  %5675 = call float @dx.op.binary.f32(i32 35, float %5674, float 0.000000e+00)  ; FMax(a,b)
  %5676 = fadd fast float %5675, 0x3F10000000000000
  %5677 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5128, float %5132, float undef, float undef, i32 0, i32 0, i32 undef, float %5676)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5678 = extractvalue %dx.types.ResRet.f32 %5677, 0
  br label %5679

; <label>:5679                                    ; preds = %5672, %5669
  %5680 = phi float [ %5678, %5672 ], [ 1.000000e+00, %5669 ]
  %5681 = fsub fast float %5661, %5652
  %5682 = fmul fast float %5681, %5190
  %5683 = fadd fast float %5682, %5652
  %5684 = fsub fast float %5670, %5683
  %5685 = fmul fast float %5684, %5220
  %5686 = fadd fast float %5685, %5683
  %5687 = fsub fast float %5680, %5686
  %5688 = fmul fast float %5687, %5246
  %5689 = fadd fast float %5688, %5686
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5692 = fcmp fast ogt float %5691, 0.000000e+00
  br i1 %5692, label %5693, label %5733, !dx.controlflow.hints !112

; <label>:5693                                    ; preds = %5679
  %5694 = fcmp fast ugt float %5691, 0.000000e+00
  br i1 %5694, label %5695, label %5730

; <label>:5695                                    ; preds = %5693
  %5696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.f32 %5696, 0
  %5698 = extractvalue %dx.types.CBufRet.f32 %5696, 1
  %5699 = extractvalue %dx.types.CBufRet.f32 %5696, 2
  %5700 = extractvalue %dx.types.CBufRet.f32 %5696, 3
  %5701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5701, 0
  %5703 = extractvalue %dx.types.CBufRet.f32 %5701, 1
  %5704 = extractvalue %dx.types.CBufRet.f32 %5701, 2
  %5705 = extractvalue %dx.types.CBufRet.f32 %5701, 3
  %5706 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5707 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.CBufRet.f32 %5708, 1
  %5711 = extractvalue %dx.types.CBufRet.f32 %5708, 2
  %5712 = fadd fast float %5709, %5105
  %5713 = fadd fast float %5710, %5106
  %5714 = fadd fast float %5711, %5107
  %5715 = fmul fast float %5712, %5697
  %5716 = call float @dx.op.tertiary.f32(i32 46, float %5698, float %5713, float %5715)  ; FMad(a,b,c)
  %5717 = call float @dx.op.tertiary.f32(i32 46, float %5699, float %5714, float %5716)  ; FMad(a,b,c)
  %5718 = fadd fast float %5717, %5700
  %5719 = fmul fast float %5712, %5702
  %5720 = call float @dx.op.tertiary.f32(i32 46, float %5703, float %5713, float %5719)  ; FMad(a,b,c)
  %5721 = call float @dx.op.tertiary.f32(i32 46, float %5704, float %5714, float %5720)  ; FMad(a,b,c)
  %5722 = fadd fast float %5721, %5705
  %5723 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5718, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5724 = extractvalue %dx.types.ResRet.f32 %5723, 0
  %5725 = fmul fast float %5724, %5707
  %5726 = fadd fast float %5725, %5706
  %5727 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5728 = fmul fast float %5727, %5691
  %5729 = fsub fast float 1.000000e+00, %5728
  br label %5730

; <label>:5730                                    ; preds = %5695, %5693
  %5731 = phi float [ %5729, %5695 ], [ 1.000000e+00, %5693 ]
  %5732 = fmul fast float %5731, %5689
  br label %5733

; <label>:5733                                    ; preds = %5730, %5679, %5085
  %5734 = phi float [ 1.000000e+00, %5085 ], [ %5732, %5730 ], [ %5689, %5679 ]
  %5735 = call float @dx.op.binary.f32(i32 36, float %5734, float %5734)  ; FMin(a,b)
  %5736 = call float @dx.op.binary.f32(i32 36, float %5734, float %5735)  ; FMin(a,b)
  %5737 = fcmp fast ogt float %5736, 0.000000e+00
  br i1 %5737, label %5738, label %5898, !dx.controlflow.hints !113

; <label>:5738                                    ; preds = %5733
  %5739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.f32 %5739, 0
  %5741 = extractvalue %dx.types.CBufRet.f32 %5739, 1
  %5742 = extractvalue %dx.types.CBufRet.f32 %5739, 2
  %5743 = extractvalue %dx.types.CBufRet.f32 %5739, 3
  %5744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5745 = extractvalue %dx.types.CBufRet.f32 %5744, 0
  %5746 = extractvalue %dx.types.CBufRet.f32 %5744, 1
  %5747 = extractvalue %dx.types.CBufRet.f32 %5744, 2
  %5748 = extractvalue %dx.types.CBufRet.f32 %5744, 3
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 0
  %5751 = extractvalue %dx.types.CBufRet.f32 %5749, 1
  %5752 = extractvalue %dx.types.CBufRet.f32 %5749, 2
  %5753 = extractvalue %dx.types.CBufRet.f32 %5749, 3
  %5754 = fmul fast float %5740, %5105
  %5755 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5741, float %5754)  ; FMad(a,b,c)
  %5756 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5742, float %5755)  ; FMad(a,b,c)
  %5757 = fadd fast float %5756, %5743
  %5758 = fmul fast float %5745, %5105
  %5759 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5746, float %5758)  ; FMad(a,b,c)
  %5760 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5747, float %5759)  ; FMad(a,b,c)
  %5761 = fadd fast float %5760, %5748
  %5762 = fmul fast float %5750, %5105
  %5763 = call float @dx.op.tertiary.f32(i32 46, float %5106, float %5751, float %5762)  ; FMad(a,b,c)
  %5764 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5752, float %5763)  ; FMad(a,b,c)
  %5765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.CBufRet.f32 %5765, 1
  %5768 = extractvalue %dx.types.CBufRet.f32 %5765, 3
  %5769 = fmul fast float %5768, %5757
  %5770 = fmul fast float %5768, %5761
  %5771 = fadd fast float %5769, %5766
  %5772 = fadd fast float %5770, %5767
  %5773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5774 = extractvalue %dx.types.CBufRet.f32 %5773, 0
  %5775 = extractvalue %dx.types.CBufRet.f32 %5773, 1
  %5776 = fsub fast float %5771, %5774
  %5777 = fsub fast float %5772, %5775
  %5778 = fcmp fast olt float %5776, 0.000000e+00
  %5779 = fcmp fast olt float %5777, 0.000000e+00
  %5780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.f32 %5780, 0
  %5782 = extractvalue %dx.types.CBufRet.f32 %5780, 1
  %5783 = extractvalue %dx.types.CBufRet.f32 %5780, 2
  %5784 = extractvalue %dx.types.CBufRet.f32 %5780, 3
  %5785 = select i1 %5778, float %5781, float %5783
  %5786 = select i1 %5779, float %5782, float %5784
  %5787 = fmul fast float %5785, %5776
  %5788 = fmul fast float %5786, %5777
  %5789 = call float @dx.op.unary.f32(i32 6, float %5787)  ; FAbs(value)
  %5790 = call float @dx.op.unary.f32(i32 6, float %5788)  ; FAbs(value)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5100, 0
  %5792 = call float @dx.op.binary.f32(i32 35, float %5789, float %5790)  ; FMax(a,b)
  %5793 = fsub fast float %5791, %5792
  %5794 = call float @dx.op.unary.f32(i32 7, float %5793)  ; Saturate(value)
  %5795 = fcmp fast ogt float %5794, 0.000000e+00
  br i1 %5795, label %5796, label %5837, !dx.controlflow.hints !114

; <label>:5796                                    ; preds = %5738
  %5797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5771, float %5772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5798 = extractvalue %dx.types.ResRet.f32 %5797, 1
  %5799 = fcmp fast ogt float %5798, 0.000000e+00
  br i1 %5799, label %5800, label %5832

; <label>:5800                                    ; preds = %5796
  %5801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5771, float %5772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5802 = extractvalue %dx.types.ResRet.f32 %5801, 0
  %5803 = extractvalue %dx.types.ResRet.f32 %5801, 1
  %5804 = extractvalue %dx.types.ResRet.f32 %5801, 2
  %5805 = extractvalue %dx.types.ResRet.f32 %5801, 3
  %5806 = fsub fast float 1.000000e+00, %5753
  %5807 = fsub fast float %5806, %5764
  %5808 = fmul fast float %5807, 0x400921FB60000000
  %5809 = fadd fast float %5808, 0x3FF921FB60000000
  %5810 = call float @dx.op.unary.f32(i32 13, float %5809)  ; Sin(value)
  %5811 = fadd fast float %5810, -1.000000e+00
  %5812 = fmul fast float %5811, 0x3FD45F3060000000
  %5813 = fmul fast float %5807, 0x401921FB60000000
  %5814 = fadd fast float %5813, 0x400921FB60000000
  %5815 = call float @dx.op.unary.f32(i32 13, float %5814)  ; Sin(value)
  %5816 = fadd fast float %5815, 0x3E7777A5C0000000
  %5817 = fmul fast float %5816, 0x3FC45F3060000000
  %5818 = fmul fast float %5807, 0x4022D97C80000000
  %5819 = fadd fast float %5818, 0x4012D97C80000000
  %5820 = call float @dx.op.unary.f32(i32 13, float %5819)  ; Sin(value)
  %5821 = fadd fast float %5820, 1.000000e+00
  %5822 = fmul fast float %5821, 0x3FBB2995E0000000
  %5823 = fmul fast float %5807, 0x402921FB60000000
  %5824 = fadd fast float %5823, 0x401921FB60000000
  %5825 = call float @dx.op.unary.f32(i32 13, float %5824)  ; Sin(value)
  %5826 = fadd fast float %5825, 0xBE8777A5C0000000
  %5827 = fmul fast float %5826, 0x3FB45F3060000000
  %5828 = call float @dx.op.dot4.f32(i32 56, float %5802, float %5803, float %5804, float %5805, float %5812, float %5817, float %5822, float %5827)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5829 = fmul fast float %5828, 0xBFF7154760000000
  %5830 = call float @dx.op.unary.f32(i32 21, float %5829)  ; Exp(value)
  %5831 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  br label %5832

; <label>:5832                                    ; preds = %5800, %5796
  %5833 = phi float [ %5831, %5800 ], [ 1.000000e+00, %5796 ]
  %5834 = fadd fast float %5833, -1.000000e+00
  %5835 = fmul fast float %5834, %5794
  %5836 = fadd fast float %5835, 1.000000e+00
  br label %5837

; <label>:5837                                    ; preds = %5832, %5738
  %5838 = phi float [ %5836, %5832 ], [ 1.000000e+00, %5738 ]
  %5839 = fmul fast float %5838, %5734
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5842 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5843 = extractvalue %dx.types.CBufRet.f32 %5840, 2
  %5844 = fadd fast float %5841, %158
  %5845 = fadd fast float %5842, %159
  %5846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5847 = extractvalue %dx.types.CBufRet.f32 %5846, 1
  %5848 = fsub fast float -0.000000e+00, %5844
  %5849 = fsub fast float -0.000000e+00, %5845
  %5850 = fsub fast float %4869, %5843
  %5851 = fadd fast float %5850, %5847
  %5852 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5848, float %5849, float %5851)  ; Dot3(ax,ay,az,bx,by,bz)
  %5853 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5086, float %5087, float %5088)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = fdiv fast float 1.000000e+00, %5853
  %5855 = fmul fast float %5854, %5852
  %5856 = fmul fast float %5086, %5855
  %5857 = fmul fast float %5087, %5855
  %5858 = fadd fast float %5856, %5844
  %5859 = fadd fast float %5857, %5845
  %5860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5860, 0
  %5862 = extractvalue %dx.types.CBufRet.f32 %5860, 1
  %5863 = fsub fast float %5858, %5861
  %5864 = fsub fast float %5859, %5862
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 2
  %5867 = extractvalue %dx.types.CBufRet.f32 %5865, 3
  %5868 = fmul fast float %5863, %5866
  %5869 = fmul fast float %5864, %5867
  %5870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.i32 %5870, 3
  %5872 = icmp eq i32 %5871, 0
  br i1 %5872, label %5878, label %5873

; <label>:5873                                    ; preds = %5837
  %5874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %5868, float %5869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5875 = extractvalue %dx.types.ResRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.ResRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.ResRet.f32 %5874, 2
  br label %5883

; <label>:5878                                    ; preds = %5837
  %5879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %5868, float %5869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5880 = extractvalue %dx.types.ResRet.f32 %5879, 0
  %5881 = extractvalue %dx.types.ResRet.f32 %5879, 1
  %5882 = extractvalue %dx.types.ResRet.f32 %5879, 2
  br label %5883

; <label>:5883                                    ; preds = %5878, %5873
  %5884 = phi float [ %5875, %5873 ], [ %5880, %5878 ]
  %5885 = phi float [ %5876, %5873 ], [ %5881, %5878 ]
  %5886 = phi float [ %5877, %5873 ], [ %5882, %5878 ]
  %5887 = extractvalue %dx.types.CBufRet.f32 %5846, 2
  %5888 = fmul fast float %5887, %5884
  %5889 = extractvalue %dx.types.CBufRet.f32 %5846, 0
  %5890 = fsub fast float %5855, %5889
  %5891 = fsub fast float %5890, %5888
  %5892 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5891)  ; FMax(a,b)
  %5893 = fmul fast float %5892, %5885
  %5894 = call float @dx.op.binary.f32(i32 36, float %5886, float %5893)  ; FMin(a,b)
  %5895 = fmul fast float %5894, 0xBFF7154760000000
  %5896 = call float @dx.op.unary.f32(i32 21, float %5895)  ; Exp(value)
  %5897 = fmul fast float %5839, %5896
  br label %5898

; <label>:5898                                    ; preds = %5883, %5733
  %5899 = phi float [ %5897, %5883 ], [ %5734, %5733 ]
  %5900 = call float @dx.op.binary.f32(i32 36, float %5899, float %5899)  ; FMin(a,b)
  %5901 = call float @dx.op.binary.f32(i32 36, float %5899, float %5900)  ; FMin(a,b)
  %5902 = fcmp fast ogt float %5901, 0.000000e+00
  br i1 %5902, label %5903, label %6154, !dx.controlflow.hints !115

; <label>:5903                                    ; preds = %5898
  %5904 = fmul fast float %5899, %5097
  %5905 = fmul fast float %5899, %5098
  %5906 = fmul fast float %5899, %5099
  %5907 = fsub fast float %160, %4657
  %5908 = fcmp fast ogt float %5907, 0.000000e+00
  %5909 = fmul fast float %5086, 5.120000e+02
  %5910 = fmul fast float %5087, 5.120000e+02
  %5911 = fmul fast float %5088, 5.120000e+02
  %5912 = fadd fast float %5911, %160
  %5913 = fsub fast float %4657, %5912
  %5914 = fmul fast float %5913, 2.000000e+00
  %5915 = fadd fast float %5914, %5912
  %5916 = select i1 %5908, float %5915, float %5912
  %5917 = fsub fast float %5916, %160
  %5918 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5910, float %5917, float %5909, float %5910, float %5917)  ; Dot3(ax,ay,az,bx,by,bz)
  %5919 = call float @dx.op.unary.f32(i32 25, float %5918)  ; Rsqrt(value)
  %5920 = fmul fast float %5919, %5909
  %5921 = fmul fast float %5919, %5910
  %5922 = fmul fast float %5919, %5917
  %5923 = fsub fast float %4657, %160
  %5924 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5923)  ; Dot3(ax,ay,az,bx,by,bz)
  %5925 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5920, float %5921, float %5922)  ; Dot3(ax,ay,az,bx,by,bz)
  %5926 = fdiv fast float 1.000000e+00, %5925
  %5927 = fmul fast float %5926, %5924
  %5928 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5907, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = fcmp fast ogt float %5928, 0.000000e+00
  %5930 = fcmp fast olt float %5928, 0.000000e+00
  %5931 = zext i1 %5929 to i32
  %5932 = zext i1 %5930 to i32
  %5933 = sub nsw i32 %5931, %5932
  %5934 = sitofp i32 %5933 to float
  %5935 = fsub fast float %5916, %4657
  %5936 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5910, float %5935, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = fcmp fast ogt float %5936, 0.000000e+00
  %5938 = fcmp fast olt float %5936, 0.000000e+00
  %5939 = zext i1 %5937 to i32
  %5940 = zext i1 %5938 to i32
  %5941 = sub nsw i32 %5939, %5940
  %5942 = sitofp i32 %5941 to float
  %5943 = fcmp fast une float %5934, %5942
  br i1 %5943, label %5944, label %5954

; <label>:5944                                    ; preds = %5903
  %5945 = fmul fast float %5927, %5922
  %5946 = fmul fast float %5927, %5921
  %5947 = fmul fast float %5927, %5920
  %5948 = fmul fast float %5947, %5947
  %5949 = fmul fast float %5946, %5946
  %5950 = fadd fast float %5948, %5949
  %5951 = fmul fast float %5945, %5945
  %5952 = fadd fast float %5950, %5951
  %5953 = call float @dx.op.unary.f32(i32 24, float %5952)  ; Sqrt(value)
  br label %5964

; <label>:5954                                    ; preds = %5903
  %5955 = icmp slt i32 %5933, 0
  br i1 %5955, label %5956, label %5964

; <label>:5956                                    ; preds = %5954
  %5957 = fsub fast float %160, %5916
  %5958 = fmul fast float %5909, %5909
  %5959 = fmul fast float %5910, %5910
  %5960 = fadd fast float %5958, %5959
  %5961 = fmul fast float %5957, %5957
  %5962 = fadd fast float %5960, %5961
  %5963 = call float @dx.op.unary.f32(i32 24, float %5962)  ; Sqrt(value)
  br label %5964

; <label>:5964                                    ; preds = %5956, %5954, %5944
  %5965 = phi float [ %5953, %5944 ], [ %5963, %5956 ], [ 0.000000e+00, %5954 ]
  %5966 = fsub fast float -0.000000e+00, %5965
  %5967 = select i1 %5908, float -0.000000e+00, float %5966
  %5968 = fmul fast float %4658, 0x3FF7154760000000
  %5969 = fmul fast float %5968, %5967
  %5970 = fmul fast float %4659, 0x3FF7154760000000
  %5971 = fmul fast float %5970, %5967
  %5972 = fmul fast float %4660, 0x3FF7154760000000
  %5973 = fmul fast float %5972, %5967
  %5974 = call float @dx.op.unary.f32(i32 21, float %5969)  ; Exp(value)
  %5975 = call float @dx.op.unary.f32(i32 21, float %5971)  ; Exp(value)
  %5976 = call float @dx.op.unary.f32(i32 21, float %5973)  ; Exp(value)
  %5977 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5978 = call float @dx.op.unary.f32(i32 7, float %5975)  ; Saturate(value)
  %5979 = call float @dx.op.unary.f32(i32 7, float %5976)  ; Saturate(value)
  %5980 = fmul fast float %5904, %5977
  %5981 = fmul fast float %5905, %5978
  %5982 = fmul fast float %5906, %5979
  %5983 = fsub fast float %5086, %4857
  %5984 = fsub fast float %5087, %4856
  %5985 = fsub fast float %5088, %4855
  %5986 = call float @dx.op.dot3.f32(i32 55, float %5983, float %5984, float %5985, float %5983, float %5984, float %5985)  ; Dot3(ax,ay,az,bx,by,bz)
  %5987 = call float @dx.op.unary.f32(i32 25, float %5986)  ; Rsqrt(value)
  %5988 = fmul fast float %5987, %5983
  %5989 = fmul fast float %5987, %5984
  %5990 = fmul fast float %5987, %5985
  %5991 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5087, float %5088, float %4864, float %4865, float %4866)  ; Dot3(ax,ay,az,bx,by,bz)
  %5992 = call float @dx.op.dot3.f32(i32 55, float %4854, float %4853, float %4852, float %5988, float %5989, float %5990)  ; Dot3(ax,ay,az,bx,by,bz)
  %5993 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5994 = fmul fast float %5993, %5993
  %5995 = fmul fast float %5994, %4885
  %5996 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5997 = fmul fast float %5996, %5993
  %5998 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4865, float %4866, float %5988, float %5989, float %5990)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = fmul fast float %5998, %5998
  %6000 = call float @dx.op.unary.f32(i32 6, float %5991)  ; FAbs(value)
  %6001 = fsub fast float 1.000000e+00, %4867
  %6002 = call float @dx.op.binary.f32(i32 35, float %6001, float 0x3F847AE140000000)  ; FMax(a,b)
  %6003 = fmul fast float %6002, %6002
  %6004 = fmul fast float %6003, %6003
  %6005 = fsub fast float 1.000000e+00, %6004
  %6006 = fmul fast float %4872, %4872
  %6007 = fmul fast float %6006, %6005
  %6008 = fadd fast float %6007, %6004
  %6009 = bitcast float %6008 to i32
  %6010 = ashr i32 %6009, 1
  %6011 = add nsw i32 %6010, 532487669
  %6012 = bitcast i32 %6011 to float
  %6013 = fadd fast float %6012, %4872
  %6014 = fmul fast float %6004, %5999
  %6015 = fsub fast float 1.000000e+00, %5999
  %6016 = fadd fast float %6015, %6014
  %6017 = fmul fast float %6000, %6000
  %6018 = fmul fast float %6017, %6005
  %6019 = fadd fast float %6018, %6004
  %6020 = bitcast float %6019 to i32
  %6021 = ashr i32 %6020, 1
  %6022 = add nsw i32 %6021, 532487669
  %6023 = bitcast i32 %6022 to float
  %6024 = fadd fast float %6023, %6000
  %6025 = fmul fast float %6016, %6016
  %6026 = fmul fast float %6025, %6013
  %6027 = fmul fast float %6026, %6024
  %6028 = fdiv fast float 0x3FF0A00000000000, %6027
  %6029 = fmul fast float %6028, %6004
  %6030 = call float @dx.op.unary.f32(i32 6, float %5992)  ; FAbs(value)
  %6031 = fsub fast float 1.000000e+00, %6030
  %6032 = bitcast float %6031 to i32
  %6033 = sitofp i32 %6032 to float
  %6034 = fmul fast float %6033, 5.000000e+00
  %6035 = fadd fast float %6034, 0xC1EFBF8940000000
  %6036 = fptosi float %6035 to i32
  %6037 = bitcast i32 %6036 to float
  %6038 = fsub fast float 1.000000e+00, %4861
  %6039 = fsub fast float 1.000000e+00, %4862
  %6040 = fsub fast float 1.000000e+00, %4870
  %6041 = fmul fast float %6037, %6038
  %6042 = fmul fast float %6037, %6039
  %6043 = fmul fast float %6037, %6040
  %6044 = fadd fast float %6041, %4861
  %6045 = fadd fast float %6042, %4862
  %6046 = fadd fast float %6043, %4870
  br i1 %4997, label %6047, label %6070

; <label>:6047                                    ; preds = %5964
  %6048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4256, float %6030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6049 = extractvalue %dx.types.ResRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.ResRet.f32 %6048, 1
  %6051 = extractvalue %dx.types.ResRet.f32 %6048, 2
  %6052 = fadd fast float %6049, -5.000000e-01
  %6053 = fadd fast float %6050, -5.000000e-01
  %6054 = fadd fast float %6051, -5.000000e-01
  %6055 = fmul fast float %4861, 4.000000e+00
  %6056 = fmul fast float %6055, %6038
  %6057 = fmul fast float %6056, %6052
  %6058 = fmul fast float %4862, 4.000000e+00
  %6059 = fmul fast float %6058, %6039
  %6060 = fmul fast float %6059, %6053
  %6061 = fmul fast float %4870, 4.000000e+00
  %6062 = fmul fast float %6061, %6040
  %6063 = fmul fast float %6062, %6054
  %6064 = fadd fast float %6057, %6044
  %6065 = fadd fast float %6060, %6045
  %6066 = fadd fast float %6063, %6046
  %6067 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  %6068 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6069 = call float @dx.op.unary.f32(i32 7, float %6066)  ; Saturate(value)
  br label %6070

; <label>:6070                                    ; preds = %6047, %5964
  %6071 = phi float [ %6067, %6047 ], [ %6044, %5964 ]
  %6072 = phi float [ %6068, %6047 ], [ %6045, %5964 ]
  %6073 = phi float [ %6069, %6047 ], [ %6046, %5964 ]
  %6074 = fmul fast float %5991, 9.843750e-01
  %6075 = fadd fast float %6074, 7.812500e-03
  %6076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6075, float %4987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6077 = extractvalue %dx.types.ResRet.f32 %6076, 2
  %6078 = extractvalue %dx.types.ResRet.f32 %6076, 3
  %6079 = fmul fast float %6077, %4861
  %6080 = fmul fast float %6077, %4862
  %6081 = fmul fast float %6077, %4870
  %6082 = fadd fast float %6079, %6078
  %6083 = fadd fast float %6080, %6078
  %6084 = fadd fast float %6081, %6078
  br i1 %4997, label %6085, label %6108

; <label>:6085                                    ; preds = %6070
  %6086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4256, float %5991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6087 = extractvalue %dx.types.ResRet.f32 %6086, 0
  %6088 = extractvalue %dx.types.ResRet.f32 %6086, 1
  %6089 = extractvalue %dx.types.ResRet.f32 %6086, 2
  %6090 = fadd fast float %6087, -5.000000e-01
  %6091 = fadd fast float %6088, -5.000000e-01
  %6092 = fadd fast float %6089, -5.000000e-01
  %6093 = fmul fast float %4861, 4.000000e+00
  %6094 = fmul fast float %6093, %6038
  %6095 = fmul fast float %6094, %6090
  %6096 = fmul fast float %4862, 4.000000e+00
  %6097 = fmul fast float %6096, %6039
  %6098 = fmul fast float %6097, %6091
  %6099 = fmul fast float %4870, 4.000000e+00
  %6100 = fmul fast float %6099, %6040
  %6101 = fmul fast float %6100, %6092
  %6102 = fadd fast float %6095, %6082
  %6103 = fadd fast float %6098, %6083
  %6104 = fadd fast float %6101, %6084
  %6105 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6106 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6107 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  br label %6108

; <label>:6108                                    ; preds = %6085, %6070
  %6109 = phi float [ %6105, %6085 ], [ %6082, %6070 ]
  %6110 = phi float [ %6106, %6085 ], [ %6083, %6070 ]
  %6111 = phi float [ %6107, %6085 ], [ %6084, %6070 ]
  %6112 = call float @dx.op.binary.f32(i32 35, float %6110, float %6111)  ; FMax(a,b)
  %6113 = call float @dx.op.binary.f32(i32 35, float %6109, float %6112)  ; FMax(a,b)
  %6114 = fsub fast float 1.000000e+00, %6113
  %6115 = fmul fast float %6071, %6029
  %6116 = fmul fast float %6072, %6029
  %6117 = fmul fast float %6073, %6029
  %6118 = fsub fast float 1.000000e+00, %5992
  %6119 = bitcast float %6118 to i32
  %6120 = sitofp i32 %6119 to float
  %6121 = fmul fast float %6120, 5.000000e+00
  %6122 = fadd fast float %6121, 0xC1EFBF8940000000
  %6123 = fptosi float %6122 to i32
  %6124 = bitcast i32 %6123 to float
  %6125 = fmul fast float %6124, %4257
  %6126 = fmul fast float %6114, %6125
  %6127 = fmul fast float %6126, %5047
  %6128 = fmul fast float %6126, %5048
  %6129 = fmul fast float %6126, %5049
  %6130 = fadd fast float %6127, %6115
  %6131 = fadd fast float %6128, %6116
  %6132 = fadd fast float %6129, %6117
  %6133 = fmul fast float %5997, %5980
  %6134 = fmul fast float %6133, %6114
  %6135 = fmul fast float %5997, %5981
  %6136 = fmul fast float %6135, %6114
  %6137 = fmul fast float %5997, %5982
  %6138 = fmul fast float %6137, %6114
  %6139 = fmul fast float %6133, %6130
  %6140 = fmul fast float %6135, %6131
  %6141 = fmul fast float %6137, %6132
  %6142 = fadd fast float %6134, %5031
  %6143 = fmul fast float %6142, %4253
  %6144 = fadd fast float %6136, %5032
  %6145 = fmul fast float %6144, %4253
  %6146 = fadd fast float %6138, %5033
  %6147 = fmul fast float %6146, %4253
  %6148 = fadd fast float %6139, %5074
  %6149 = fmul fast float %6148, %4253
  %6150 = fadd fast float %6140, %5077
  %6151 = fmul fast float %6150, %4253
  %6152 = fadd fast float %6141, %5080
  %6153 = fmul fast float %6152, %4253
  br label %6154

; <label>:6154                                    ; preds = %6108, %5898, %5024
  %6155 = phi float [ %5075, %5024 ], [ %5075, %5898 ], [ %6149, %6108 ]
  %6156 = phi float [ %5078, %5024 ], [ %5078, %5898 ], [ %6151, %6108 ]
  %6157 = phi float [ %5081, %5024 ], [ %5081, %5898 ], [ %6153, %6108 ]
  %6158 = phi float [ %5070, %5024 ], [ %5070, %5898 ], [ %6143, %6108 ]
  %6159 = phi float [ %5071, %5024 ], [ %5071, %5898 ], [ %6145, %6108 ]
  %6160 = phi float [ %5072, %5024 ], [ %5072, %5898 ], [ %6147, %6108 ]
  %6161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.i32 %6161, 0
  %6163 = icmp eq i32 %6162, 0
  br i1 %6163, label %6784, label %6164

; <label>:6164                                    ; preds = %6154
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 2
  %6167 = extractvalue %dx.types.CBufRet.f32 %6165, 3
  %6168 = fmul fast float %6166, %95
  %6169 = fmul fast float %6167, %96
  %6170 = fptoui float %6168 to i32
  %6171 = fptoui float %6169 to i32
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.CBufRet.f32 %6172, 2
  %6175 = extractvalue %dx.types.CBufRet.f32 %6172, 3
  %6176 = fadd fast float %86, -4.000000e+00
  %6177 = call float @dx.op.binary.f32(i32 35, float %6176, float 0.000000e+00)  ; FMax(a,b)
  %6178 = fadd fast float %6177, %6173
  %6179 = fmul fast float %6178, %6174
  %6180 = call float @dx.op.unary.f32(i32 23, float %6179)  ; Log(value)
  %6181 = fmul fast float %6180, %6175
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 2
  %6184 = fmul fast float %6181, %6183
  %6185 = call float @dx.op.unary.f32(i32 7, float %6184)  ; Saturate(value)
  %6186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.i32 %6186, 1
  %6188 = add i32 %6187, -1
  %6189 = uitofp i32 %6187 to float
  %6190 = fmul fast float %6189, %6185
  %6191 = fptoui float %6190 to i32
  %6192 = call i32 @dx.op.binary.i32(i32 40, i32 %6191, i32 %6188)  ; UMin(a,b)
  %6193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.i32 %6193, 2
  %6195 = extractvalue %dx.types.CBufRet.i32 %6193, 3
  %6196 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6171, i32 %6194, i32 %6170)  ; UMad(a,b,c)
  %6197 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6192, i32 %6195, i32 %6196)  ; UMad(a,b,c)
  %6198 = add nsw i32 %6162, -1
  %6199 = call i32 @dx.op.binary.i32(i32 37, i32 %6198, i32 0)  ; IMax(a,b)
  %6200 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %6201 = fptoui float %6200 to i32
  %6202 = lshr i32 %6201, 5
  %6203 = call i32 @dx.op.binary.i32(i32 40, i32 %6202, i32 8191)  ; UMin(a,b)
  %6204 = shl i32 %6203, 2
  %6205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6204, i32 undef)  ; BufferLoad(srv,index,wot)
  %6206 = extractvalue %dx.types.ResRet.i32 %6205, 0
  %6207 = lshr i32 %6206, 16
  %6208 = and i32 %6206, 65535
  %6209 = lshr i32 %6206, 21
  %6210 = lshr i32 %6208, 5
  %6211 = call i32 @dx.op.binary.i32(i32 40, i32 %6210, i32 %6199)  ; UMin(a,b)
  %6212 = icmp ugt i32 %6209, %6211
  br i1 %6212, label %6784, label %6213

; <label>:6213                                    ; preds = %6164
  br label %6214

; <label>:6214                                    ; preds = %6774, %6213
  %6215 = phi i32 [ %6781, %6774 ], [ %6209, %6213 ]
  %6216 = phi float [ %6775, %6774 ], [ %6155, %6213 ]
  %6217 = phi float [ %6776, %6774 ], [ %6156, %6213 ]
  %6218 = phi float [ %6777, %6774 ], [ %6157, %6213 ]
  %6219 = phi float [ %6778, %6774 ], [ %6158, %6213 ]
  %6220 = phi float [ %6779, %6774 ], [ %6159, %6213 ]
  %6221 = phi float [ %6780, %6774 ], [ %6160, %6213 ]
  %6222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.i32 %6222, 0
  %6224 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6197, i32 %6223, i32 %6215)  ; UMad(a,b,c)
  %6225 = shl i32 %6224, 2
  %6226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6225, i32 undef)  ; BufferLoad(srv,index,wot)
  %6227 = extractvalue %dx.types.ResRet.i32 %6226, 0
  %6228 = shl i32 %6215, 5
  %6229 = sub nsw i32 %6207, %6228
  %6230 = call i32 @dx.op.binary.i32(i32 37, i32 %6229, i32 0)  ; IMax(a,b)
  %6231 = call i32 @dx.op.binary.i32(i32 38, i32 %6230, i32 31)  ; IMin(a,b)
  %6232 = sub nsw i32 1, %6207
  %6233 = add nsw i32 %6232, %6208
  %6234 = call i32 @dx.op.binary.i32(i32 37, i32 %6233, i32 0)  ; IMax(a,b)
  %6235 = call i32 @dx.op.binary.i32(i32 38, i32 %6234, i32 32)  ; IMin(a,b)
  %6236 = and i32 %6235, 31
  %6237 = shl i32 -1, %6236
  %6238 = xor i32 %6237, -1
  %6239 = and i32 %6231, 31
  %6240 = shl i32 %6238, %6239
  %6241 = icmp eq i32 %6235, 32
  %6242 = select i1 %6241, i32 -1, i32 %6240
  %6243 = and i32 %6242, %6227
  %6244 = icmp eq i32 %6243, 0
  br i1 %6244, label %6774, label %6245

; <label>:6245                                    ; preds = %6214
  br label %6246

; <label>:6246                                    ; preds = %6380, %6245
  %6247 = phi i32 [ %6258, %6380 ], [ %6243, %6245 ]
  %6248 = phi float [ %6381, %6380 ], [ %6216, %6245 ]
  %6249 = phi float [ %6382, %6380 ], [ %6217, %6245 ]
  %6250 = phi float [ %6383, %6380 ], [ %6218, %6245 ]
  %6251 = phi float [ %6384, %6380 ], [ %6219, %6245 ]
  %6252 = phi float [ %6385, %6380 ], [ %6220, %6245 ]
  %6253 = phi float [ %6386, %6380 ], [ %6221, %6245 ]
  %6254 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6247)  ; FirstbitLo(value)
  %6255 = add i32 %6254, %6228
  %6256 = and i32 %6254, 31
  %6257 = shl i32 1, %6256
  %6258 = xor i32 %6257, %6247
  %6259 = mul i32 %6255, 112
  %6260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6259, i32 undef)  ; BufferLoad(srv,index,wot)
  %6261 = extractvalue %dx.types.ResRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.ResRet.f32 %6260, 1
  %6263 = extractvalue %dx.types.ResRet.f32 %6260, 2
  %6264 = or i32 %6259, 12
  %6265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6264, i32 undef)  ; BufferLoad(srv,index,wot)
  %6266 = extractvalue %dx.types.ResRet.f32 %6265, 0
  %6267 = add i32 %6259, 16
  %6268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6267, i32 undef)  ; BufferLoad(srv,index,wot)
  %6269 = extractvalue %dx.types.ResRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.ResRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.ResRet.f32 %6268, 2
  %6272 = add i32 %6259, 28
  %6273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6272, i32 undef)  ; BufferLoad(srv,index,wot)
  %6274 = extractvalue %dx.types.ResRet.i32 %6273, 0
  %6275 = add i32 %6259, 44
  %6276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6275, i32 undef)  ; BufferLoad(srv,index,wot)
  %6277 = extractvalue %dx.types.ResRet.f32 %6276, 0
  %6278 = add i32 %6259, 48
  %6279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6278, i32 undef)  ; BufferLoad(srv,index,wot)
  %6280 = extractvalue %dx.types.ResRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.ResRet.f32 %6279, 1
  %6282 = extractvalue %dx.types.ResRet.f32 %6279, 2
  %6283 = extractvalue %dx.types.ResRet.f32 %6279, 3
  %6284 = add i32 %6259, 64
  %6285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6284, i32 undef)  ; BufferLoad(srv,index,wot)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.ResRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.ResRet.f32 %6285, 2
  %6289 = extractvalue %dx.types.ResRet.f32 %6285, 3
  %6290 = add i32 %6259, 80
  %6291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6290, i32 undef)  ; BufferLoad(srv,index,wot)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 1
  %6293 = extractvalue %dx.types.ResRet.f32 %6291, 2
  %6294 = add i32 %6259, 92
  %6295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %6294, i32 undef)  ; BufferLoad(srv,index,wot)
  %6296 = extractvalue %dx.types.ResRet.i32 %6295, 0
  %6297 = call float @dx.op.dot3.f32(i32 55, float %6261, float %6262, float %6263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6298 = select i1 %220, float %6292, float %6261
  %6299 = select i1 %220, float %6297, float %6262
  %6300 = select i1 %220, float %6293, float %6263
  %6301 = and i32 %6296, 65535
  %6302 = uitofp i32 %6301 to float
  %6303 = lshr i32 %6296, 16
  %6304 = uitofp i32 %6303 to float
  %6305 = and i32 %6274, 65535
  %6306 = and i32 %6274, 50331648
  %6307 = icmp eq i32 %6306, 33554432
  %6308 = fsub fast float %6280, %158
  %6309 = fsub fast float %6281, %159
  %6310 = fsub fast float %6282, %160
  %6311 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float %6308, float %6309, float %6310)  ; Dot3(ax,ay,az,bx,by,bz)
  %6312 = call float @dx.op.unary.f32(i32 24, float %6311)  ; Sqrt(value)
  %6313 = fdiv fast float 1.000000e+00, %6312
  %6314 = fmul fast float %6313, %6308
  %6315 = fmul fast float %6313, %6309
  %6316 = fmul fast float %6313, %6310
  %6317 = fadd fast float %6312, %6266
  %6318 = fdiv fast float 1.000000e+00, %6317
  %6319 = fmul float %6277, %6318
  %6320 = fmul float %6319, %6319
  %6321 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  br i1 %6307, label %6322, label %6343

; <label>:6322                                    ; preds = %6246
  %6323 = fmul fast float %6288, %6269
  %6324 = fmul fast float %6288, %6270
  %6325 = fmul fast float %6288, %6271
  %6326 = fadd fast float %6308, %6323
  %6327 = fadd fast float %6309, %6324
  %6328 = fadd fast float %6310, %6325
  %6329 = call float @dx.op.dot3.f32(i32 55, float %6326, float %6327, float %6328, float %6326, float %6327, float %6328)  ; Dot3(ax,ay,az,bx,by,bz)
  %6330 = call float @dx.op.unary.f32(i32 25, float %6329)  ; Rsqrt(value)
  %6331 = fmul fast float %6330, %6326
  %6332 = fmul fast float %6330, %6327
  %6333 = fmul fast float %6330, %6328
  %6334 = fsub fast float %158, %6280
  %6335 = fsub fast float %159, %6281
  %6336 = fsub fast float %160, %6282
  %6337 = fsub fast float -0.000000e+00, %6334
  %6338 = fsub fast float -0.000000e+00, %6335
  %6339 = fsub fast float -0.000000e+00, %6336
  %6340 = call float @dx.op.dot3.f32(i32 55, float %6337, float %6338, float %6339, float %6269, float %6270, float %6271)  ; Dot3(ax,ay,az,bx,by,bz)
  %6341 = fcmp fast ogt float %6340, 0.000000e+00
  %6342 = uitofp i1 %6341 to float
  br label %6343

; <label>:6343                                    ; preds = %6322, %6246
  %6344 = phi float [ %6342, %6322 ], [ 1.000000e+00, %6246 ]
  %6345 = phi float [ %6331, %6322 ], [ %6314, %6246 ]
  %6346 = phi float [ %6332, %6322 ], [ %6315, %6246 ]
  %6347 = phi float [ %6333, %6322 ], [ %6316, %6246 ]
  %6348 = call float @dx.op.dot3.f32(i32 55, float %6269, float %6270, float %6271, float %6345, float %6346, float %6347)  ; Dot3(ax,ay,az,bx,by,bz)
  %6349 = fmul fast float %6348, %6348
  %6350 = call float @dx.op.unary.f32(i32 7, float %6349)  ; Saturate(value)
  %6351 = fsub fast float 1.000000e+00, %6350
  %6352 = fmul fast float %6351, 5.000000e-01
  %6353 = fcmp fast ogt float %6348, 0.000000e+00
  %6354 = fsub fast float 1.000000e+00, %6352
  %6355 = select i1 %6353, float %6352, float %6354
  %6356 = fmul fast float %6355, %6304
  %6357 = fadd fast float %6356, %6302
  %6358 = fmul fast float %6357, 0x3EF0001000000000
  %6359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %6358, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6360 = extractvalue %dx.types.ResRet.f32 %6359, 0
  %6361 = fmul fast float %6348, %6286
  %6362 = fadd fast float %6361, %6287
  %6363 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  %6364 = select i1 %6307, float 1.000000e+00, float %6363
  %6365 = select i1 %6307, float %6363, float 1.000000e+00
  %6366 = fmul fast float %6312, %6283
  %6367 = fsub fast float 1.000000e+00, %6366
  %6368 = fmul fast float %6367, %6289
  %6369 = call float @dx.op.unary.f32(i32 7, float %6368)  ; Saturate(value)
  %6370 = fmul fast float %6369, %6365
  %6371 = fmul fast float %6370, 2.000000e+00
  %6372 = fsub fast float 3.000000e+00, %6371
  %6373 = fmul fast float %6360, %6344
  %6374 = fmul fast float %6370, %6370
  %6375 = fmul fast float %6374, %6373
  %6376 = fmul fast float %6375, %6372
  %6377 = call float @dx.op.binary.f32(i32 36, float %6376, float %6376)  ; FMin(a,b)
  %6378 = call float @dx.op.binary.f32(i32 36, float %6376, float %6377)  ; FMin(a,b)
  %6379 = fcmp fast ogt float %6378, 0.000000e+00
  br i1 %6379, label %6388, label %6380, !dx.controlflow.hints !116

; <label>:6380                                    ; preds = %6730, %6488, %6343
  %6381 = phi float [ %6248, %6488 ], [ %6248, %6343 ], [ %6770, %6730 ]
  %6382 = phi float [ %6249, %6488 ], [ %6249, %6343 ], [ %6771, %6730 ]
  %6383 = phi float [ %6250, %6488 ], [ %6250, %6343 ], [ %6772, %6730 ]
  %6384 = phi float [ %6251, %6488 ], [ %6251, %6343 ], [ %6764, %6730 ]
  %6385 = phi float [ %6252, %6488 ], [ %6252, %6343 ], [ %6765, %6730 ]
  %6386 = phi float [ %6253, %6488 ], [ %6253, %6343 ], [ %6766, %6730 ]
  %6387 = icmp eq i32 %6247, %6257
  br i1 %6387, label %6773, label %6246

; <label>:6388                                    ; preds = %6343
  %6389 = icmp eq i32 %6305, 255
  br i1 %6389, label %6488, label %6390, !dx.controlflow.hints !117

; <label>:6390                                    ; preds = %6388
  %6391 = mul nuw nsw i32 %6305, 176
  %6392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6391, i32 undef)  ; BufferLoad(srv,index,wot)
  %6393 = extractvalue %dx.types.ResRet.f32 %6392, 0
  %6394 = extractvalue %dx.types.ResRet.f32 %6392, 1
  %6395 = extractvalue %dx.types.ResRet.f32 %6392, 2
  %6396 = extractvalue %dx.types.ResRet.f32 %6392, 3
  %6397 = add nuw nsw i32 %6391, 16
  %6398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6397, i32 undef)  ; BufferLoad(srv,index,wot)
  %6399 = extractvalue %dx.types.ResRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.ResRet.f32 %6398, 1
  %6401 = add nuw nsw i32 %6391, 32
  %6402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6401, i32 undef)  ; BufferLoad(srv,index,wot)
  %6403 = extractvalue %dx.types.ResRet.f32 %6402, 0
  %6404 = extractvalue %dx.types.ResRet.f32 %6402, 1
  %6405 = extractvalue %dx.types.ResRet.f32 %6402, 2
  %6406 = add nuw nsw i32 %6391, 48
  %6407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6406, i32 undef)  ; BufferLoad(srv,index,wot)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6411 = extractvalue %dx.types.ResRet.f32 %6407, 3
  %6412 = add nuw nsw i32 %6391, 64
  %6413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6412, i32 undef)  ; BufferLoad(srv,index,wot)
  %6414 = extractvalue %dx.types.ResRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.ResRet.f32 %6413, 1
  %6416 = extractvalue %dx.types.ResRet.f32 %6413, 2
  %6417 = extractvalue %dx.types.ResRet.f32 %6413, 3
  %6418 = add nuw nsw i32 %6391, 80
  %6419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6418, i32 undef)  ; BufferLoad(srv,index,wot)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = extractvalue %dx.types.ResRet.f32 %6419, 1
  %6422 = extractvalue %dx.types.ResRet.f32 %6419, 2
  %6423 = extractvalue %dx.types.ResRet.f32 %6419, 3
  %6424 = add nuw nsw i32 %6391, 96
  %6425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %6424, i32 undef)  ; BufferLoad(srv,index,wot)
  %6426 = extractvalue %dx.types.ResRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.ResRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.ResRet.f32 %6425, 2
  %6429 = extractvalue %dx.types.ResRet.f32 %6425, 3
  %6430 = bitcast float %6400 to i32
  %6431 = fmul fast float %6405, %102
  %6432 = fmul fast float %6405, %103
  %6433 = fmul fast float %6405, %104
  %6434 = fadd fast float %6431, %158
  %6435 = fadd fast float %6432, %159
  %6436 = fadd fast float %6433, %160
  %6437 = fmul fast float %6434, %6408
  %6438 = call float @dx.op.tertiary.f32(i32 46, float %6435, float %6414, float %6437)  ; FMad(a,b,c)
  %6439 = call float @dx.op.tertiary.f32(i32 46, float %6436, float %6420, float %6438)  ; FMad(a,b,c)
  %6440 = fadd fast float %6439, %6426
  %6441 = fmul fast float %6434, %6409
  %6442 = call float @dx.op.tertiary.f32(i32 46, float %6435, float %6415, float %6441)  ; FMad(a,b,c)
  %6443 = call float @dx.op.tertiary.f32(i32 46, float %6436, float %6421, float %6442)  ; FMad(a,b,c)
  %6444 = fadd fast float %6443, %6427
  %6445 = fmul fast float %6434, %6410
  %6446 = call float @dx.op.tertiary.f32(i32 46, float %6435, float %6416, float %6445)  ; FMad(a,b,c)
  %6447 = call float @dx.op.tertiary.f32(i32 46, float %6436, float %6422, float %6446)  ; FMad(a,b,c)
  %6448 = fadd fast float %6447, %6428
  %6449 = fmul fast float %6434, %6411
  %6450 = call float @dx.op.tertiary.f32(i32 46, float %6435, float %6417, float %6449)  ; FMad(a,b,c)
  %6451 = call float @dx.op.tertiary.f32(i32 46, float %6436, float %6423, float %6450)  ; FMad(a,b,c)
  %6452 = fadd fast float %6451, %6429
  %6453 = fdiv fast float %6440, %6452
  %6454 = fdiv fast float %6444, %6452
  %6455 = fdiv fast float %6448, %6452
  %6456 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6455)  ; FMax(a,b)
  %6457 = fmul fast float %231, 0x401921FB60000000
  %6458 = call float @dx.op.unary.f32(i32 13, float %6457)  ; Sin(value)
  %6459 = call float @dx.op.unary.f32(i32 12, float %6457)  ; Cos(value)
  %6460 = fsub fast float -0.000000e+00, %6458
  %6461 = fmul fast float %6395, 5.000000e-01
  %6462 = call float @dx.op.dot2.f32(i32 54, float %231, float %231, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6463 = call float @dx.op.unary.f32(i32 22, float %6462)  ; Frc(value)
  %6464 = fmul fast float %6463, 0x404A7DD040000000
  %6465 = call float @dx.op.unary.f32(i32 22, float %6464)  ; Frc(value)
  %6466 = fmul fast float %6465, %6404
  %6467 = fadd fast float %6466, %6461
  %6468 = call float @dx.op.tertiary.f32(i32 46, float %6467, float %6460, float 0.000000e+00)  ; FMad(a,b,c)
  %6469 = call float @dx.op.tertiary.f32(i32 46, float %6467, float %6459, float 0.000000e+00)  ; FMad(a,b,c)
  %6470 = fadd fast float %6468, %6453
  %6471 = fadd fast float %6469, %6454
  %6472 = fmul fast float %6470, %6399
  %6473 = fmul fast float %6471, %6399
  %6474 = call float @dx.op.binary.f32(i32 35, float %6472, float %6395)  ; FMax(a,b)
  %6475 = call float @dx.op.binary.f32(i32 35, float %6473, float %6395)  ; FMax(a,b)
  %6476 = call float @dx.op.binary.f32(i32 36, float %6474, float %6396)  ; FMin(a,b)
  %6477 = call float @dx.op.binary.f32(i32 36, float %6475, float %6396)  ; FMin(a,b)
  %6478 = fadd fast float %6476, %6393
  %6479 = fadd fast float %6477, %6394
  %6480 = uitofp i32 %6430 to float
  %6481 = fadd fast float %6456, %6403
  %6482 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %6478, float %6479, float %6480, float undef, i32 0, i32 0, i32 undef, float %6481)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6483 = extractvalue %dx.types.ResRet.f32 %6482, 0
  %6484 = fadd fast float %6483, -1.000000e+00
  %6485 = fmul fast float %6484, %6364
  %6486 = fadd fast float %6485, 1.000000e+00
  %6487 = fmul fast float %6486, %6376
  br label %6488

; <label>:6488                                    ; preds = %6390, %6388
  %6489 = phi float [ %6487, %6390 ], [ %6376, %6388 ]
  %6490 = call float @dx.op.binary.f32(i32 36, float %6489, float %6489)  ; FMin(a,b)
  %6491 = call float @dx.op.binary.f32(i32 36, float %6489, float %6490)  ; FMin(a,b)
  %6492 = fcmp fast ogt float %6491, 0.000000e+00
  br i1 %6492, label %6493, label %6380, !dx.controlflow.hints !118

; <label>:6493                                    ; preds = %6488
  %6494 = fmul fast float %6489, %6298
  %6495 = fmul fast float %6489, %6299
  %6496 = fmul fast float %6489, %6300
  %6497 = fsub fast float %6282, %4657
  %6498 = fcmp fast ogt float %6497, 0.000000e+00
  %6499 = fsub fast float %160, %4657
  %6500 = fcmp fast ogt float %6499, 0.000000e+00
  %6501 = xor i1 %6500, %6498
  %6502 = fsub fast float %4657, %6282
  %6503 = fmul fast float %6502, 2.000000e+00
  %6504 = fadd fast float %6503, %6282
  %6505 = select i1 %6501, float %6282, float %6504
  %6506 = fsub fast float %6505, %160
  %6507 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6506, float %6308, float %6309, float %6506)  ; Dot3(ax,ay,az,bx,by,bz)
  %6508 = call float @dx.op.unary.f32(i32 25, float %6507)  ; Rsqrt(value)
  %6509 = fmul fast float %6508, %6308
  %6510 = fmul fast float %6508, %6309
  %6511 = fmul fast float %6508, %6506
  %6512 = fsub fast float %4657, %160
  %6513 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6512)  ; Dot3(ax,ay,az,bx,by,bz)
  %6514 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6509, float %6510, float %6511)  ; Dot3(ax,ay,az,bx,by,bz)
  %6515 = fdiv fast float 1.000000e+00, %6514
  %6516 = fmul fast float %6515, %6513
  %6517 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6499, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6518 = fcmp fast ogt float %6517, 0.000000e+00
  %6519 = fcmp fast olt float %6517, 0.000000e+00
  %6520 = zext i1 %6518 to i32
  %6521 = zext i1 %6519 to i32
  %6522 = sub nsw i32 %6520, %6521
  %6523 = sitofp i32 %6522 to float
  %6524 = fsub fast float %6505, %4657
  %6525 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6524, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6526 = fcmp fast ogt float %6525, 0.000000e+00
  %6527 = fcmp fast olt float %6525, 0.000000e+00
  %6528 = zext i1 %6526 to i32
  %6529 = zext i1 %6527 to i32
  %6530 = sub nsw i32 %6528, %6529
  %6531 = sitofp i32 %6530 to float
  %6532 = fcmp fast une float %6523, %6531
  br i1 %6532, label %6533, label %6543

; <label>:6533                                    ; preds = %6493
  %6534 = fmul fast float %6516, %6511
  %6535 = fmul fast float %6516, %6510
  %6536 = fmul fast float %6516, %6509
  %6537 = fmul fast float %6536, %6536
  %6538 = fmul fast float %6535, %6535
  %6539 = fadd fast float %6537, %6538
  %6540 = fmul fast float %6534, %6534
  %6541 = fadd fast float %6539, %6540
  %6542 = call float @dx.op.unary.f32(i32 24, float %6541)  ; Sqrt(value)
  br label %6555

; <label>:6543                                    ; preds = %6493
  %6544 = icmp slt i32 %6522, 0
  br i1 %6544, label %6545, label %6555

; <label>:6545                                    ; preds = %6543
  %6546 = fsub fast float %158, %6280
  %6547 = fsub fast float %159, %6281
  %6548 = fsub fast float %160, %6505
  %6549 = fmul fast float %6546, %6546
  %6550 = fmul fast float %6547, %6547
  %6551 = fadd fast float %6549, %6550
  %6552 = fmul fast float %6548, %6548
  %6553 = fadd fast float %6551, %6552
  %6554 = call float @dx.op.unary.f32(i32 24, float %6553)  ; Sqrt(value)
  br label %6555

; <label>:6555                                    ; preds = %6545, %6543, %6533
  %6556 = phi float [ %6542, %6533 ], [ %6554, %6545 ], [ 0.000000e+00, %6543 ]
  %6557 = and i1 %6500, %6498
  %6558 = fsub fast float -0.000000e+00, %6556
  %6559 = select i1 %6557, float -0.000000e+00, float %6558
  %6560 = fmul fast float %4658, 0x3FF7154760000000
  %6561 = fmul fast float %6560, %6559
  %6562 = fmul fast float %4659, 0x3FF7154760000000
  %6563 = fmul fast float %6562, %6559
  %6564 = fmul fast float %4660, 0x3FF7154760000000
  %6565 = fmul fast float %6564, %6559
  %6566 = call float @dx.op.unary.f32(i32 21, float %6561)  ; Exp(value)
  %6567 = call float @dx.op.unary.f32(i32 21, float %6563)  ; Exp(value)
  %6568 = call float @dx.op.unary.f32(i32 21, float %6565)  ; Exp(value)
  %6569 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6570 = call float @dx.op.unary.f32(i32 7, float %6567)  ; Saturate(value)
  %6571 = call float @dx.op.unary.f32(i32 7, float %6568)  ; Saturate(value)
  %6572 = fmul fast float %6494, %6569
  %6573 = fmul fast float %6495, %6570
  %6574 = fmul fast float %6496, %6571
  %6575 = fsub fast float %6314, %4857
  %6576 = fsub fast float %6315, %4856
  %6577 = fsub fast float %6316, %4855
  %6578 = call float @dx.op.dot3.f32(i32 55, float %6575, float %6576, float %6577, float %6575, float %6576, float %6577)  ; Dot3(ax,ay,az,bx,by,bz)
  %6579 = call float @dx.op.unary.f32(i32 25, float %6578)  ; Rsqrt(value)
  %6580 = fmul fast float %6579, %6575
  %6581 = fmul fast float %6579, %6576
  %6582 = fmul fast float %6579, %6577
  %6583 = call float @dx.op.dot3.f32(i32 55, float %6314, float %6315, float %6316, float %4864, float %4865, float %4866)  ; Dot3(ax,ay,az,bx,by,bz)
  %6584 = call float @dx.op.dot3.f32(i32 55, float %4854, float %4853, float %4852, float %6580, float %6581, float %6582)  ; Dot3(ax,ay,az,bx,by,bz)
  %6585 = call float @dx.op.unary.f32(i32 7, float %6583)  ; Saturate(value)
  %6586 = fmul fast float %6585, %6321
  %6587 = fmul fast float %6585, %6585
  %6588 = fmul fast float %6587, %4885
  %6589 = call float @dx.op.unary.f32(i32 7, float %6588)  ; Saturate(value)
  %6590 = fmul fast float %6586, %6589
  %6591 = bitcast float %6311 to i32
  %6592 = ashr i32 %6591, 1
  %6593 = sub nsw i32 1597463007, %6592
  %6594 = bitcast i32 %6593 to float
  %6595 = fmul fast float %6594, %6308
  %6596 = fmul fast float %6594, %6309
  %6597 = fmul fast float %6594, %6310
  %6598 = fsub fast float %6595, %4857
  %6599 = fsub fast float %6596, %4856
  %6600 = fsub fast float %6597, %4855
  %6601 = call float @dx.op.dot3.f32(i32 55, float %6598, float %6599, float %6600, float %6598, float %6599, float %6600)  ; Dot3(ax,ay,az,bx,by,bz)
  %6602 = call float @dx.op.unary.f32(i32 25, float %6601)  ; Rsqrt(value)
  %6603 = fmul fast float %6598, %6602
  %6604 = fmul fast float %6599, %6602
  %6605 = fmul fast float %6600, %6602
  %6606 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4865, float %4866, float %6603, float %6604, float %6605)  ; Dot3(ax,ay,az,bx,by,bz)
  %6607 = fmul fast float %6606, %6606
  %6608 = call float @dx.op.unary.f32(i32 6, float %6583)  ; FAbs(value)
  %6609 = fsub fast float 1.000000e+00, %4867
  %6610 = call float @dx.op.binary.f32(i32 35, float %6609, float 0x3F847AE140000000)  ; FMax(a,b)
  %6611 = fmul fast float %6610, %6610
  %6612 = fmul fast float %6611, %6611
  %6613 = fsub fast float 1.000000e+00, %6612
  %6614 = fmul fast float %4872, %4872
  %6615 = fmul fast float %6614, %6613
  %6616 = fadd fast float %6615, %6612
  %6617 = bitcast float %6616 to i32
  %6618 = ashr i32 %6617, 1
  %6619 = add nsw i32 %6618, 532487669
  %6620 = bitcast i32 %6619 to float
  %6621 = fadd fast float %6620, %4872
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
  %6636 = fdiv fast float 1.000000e+00, %6635
  %6637 = bitcast float %6612 to i32
  %6638 = sitofp i32 %6637 to float
  %6639 = fmul fast float %6638, 0x3FE7F73180000000
  %6640 = fadd fast float %6639, 0x41AFE27C40000000
  %6641 = fptosi float %6640 to i32
  %6642 = bitcast i32 %6641 to float
  %6643 = fmul fast float %6277, 0x3FD80E9D60000000
  %6644 = fmul fast float %6643, %6594
  %6645 = fadd fast float %6642, %6644
  %6646 = bitcast float %6645 to i32
  %6647 = sub nsw i32 2129859010, %6646
  %6648 = bitcast i32 %6647 to float
  %6649 = fmul fast float %6612, %6636
  %6650 = fmul fast float %6649, %6642
  %6651 = fmul fast float %6650, %6648
  %6652 = call float @dx.op.unary.f32(i32 6, float %6584)  ; FAbs(value)
  %6653 = fsub fast float 1.000000e+00, %6652
  %6654 = bitcast float %6653 to i32
  %6655 = sitofp i32 %6654 to float
  %6656 = fmul fast float %6655, 5.000000e+00
  %6657 = fadd fast float %6656, 0xC1EFBF8940000000
  %6658 = fptosi float %6657 to i32
  %6659 = bitcast i32 %6658 to float
  %6660 = fsub fast float 1.000000e+00, %4861
  %6661 = fsub fast float 1.000000e+00, %4862
  %6662 = fsub fast float 1.000000e+00, %4870
  %6663 = fmul fast float %6659, %6660
  %6664 = fmul fast float %6659, %6661
  %6665 = fmul fast float %6659, %6662
  %6666 = fadd fast float %6663, %4861
  %6667 = fadd fast float %6664, %4862
  %6668 = fadd fast float %6665, %4870
  br i1 %4997, label %6669, label %6692

; <label>:6669                                    ; preds = %6555
  %6670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4256, float %6652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6671 = extractvalue %dx.types.ResRet.f32 %6670, 0
  %6672 = extractvalue %dx.types.ResRet.f32 %6670, 1
  %6673 = extractvalue %dx.types.ResRet.f32 %6670, 2
  %6674 = fadd fast float %6671, -5.000000e-01
  %6675 = fadd fast float %6672, -5.000000e-01
  %6676 = fadd fast float %6673, -5.000000e-01
  %6677 = fmul fast float %4861, 4.000000e+00
  %6678 = fmul fast float %6677, %6660
  %6679 = fmul fast float %6678, %6674
  %6680 = fmul fast float %4862, 4.000000e+00
  %6681 = fmul fast float %6680, %6661
  %6682 = fmul fast float %6681, %6675
  %6683 = fmul fast float %4870, 4.000000e+00
  %6684 = fmul fast float %6683, %6662
  %6685 = fmul fast float %6684, %6676
  %6686 = fadd fast float %6679, %6666
  %6687 = fadd fast float %6682, %6667
  %6688 = fadd fast float %6685, %6668
  %6689 = call float @dx.op.unary.f32(i32 7, float %6686)  ; Saturate(value)
  %6690 = call float @dx.op.unary.f32(i32 7, float %6687)  ; Saturate(value)
  %6691 = call float @dx.op.unary.f32(i32 7, float %6688)  ; Saturate(value)
  br label %6692

; <label>:6692                                    ; preds = %6669, %6555
  %6693 = phi float [ %6689, %6669 ], [ %6666, %6555 ]
  %6694 = phi float [ %6690, %6669 ], [ %6667, %6555 ]
  %6695 = phi float [ %6691, %6669 ], [ %6668, %6555 ]
  %6696 = fmul fast float %6583, 9.843750e-01
  %6697 = fadd fast float %6696, 7.812500e-03
  %6698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6697, float %4987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6699 = extractvalue %dx.types.ResRet.f32 %6698, 2
  %6700 = extractvalue %dx.types.ResRet.f32 %6698, 3
  %6701 = fmul fast float %6699, %4861
  %6702 = fmul fast float %6699, %4862
  %6703 = fmul fast float %6699, %4870
  %6704 = fadd fast float %6701, %6700
  %6705 = fadd fast float %6702, %6700
  %6706 = fadd fast float %6703, %6700
  br i1 %4997, label %6707, label %6730

; <label>:6707                                    ; preds = %6692
  %6708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4256, float %6583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6709 = extractvalue %dx.types.ResRet.f32 %6708, 0
  %6710 = extractvalue %dx.types.ResRet.f32 %6708, 1
  %6711 = extractvalue %dx.types.ResRet.f32 %6708, 2
  %6712 = fadd fast float %6709, -5.000000e-01
  %6713 = fadd fast float %6710, -5.000000e-01
  %6714 = fadd fast float %6711, -5.000000e-01
  %6715 = fmul fast float %4861, 4.000000e+00
  %6716 = fmul fast float %6715, %6660
  %6717 = fmul fast float %6716, %6712
  %6718 = fmul fast float %4862, 4.000000e+00
  %6719 = fmul fast float %6718, %6661
  %6720 = fmul fast float %6719, %6713
  %6721 = fmul fast float %4870, 4.000000e+00
  %6722 = fmul fast float %6721, %6662
  %6723 = fmul fast float %6722, %6714
  %6724 = fadd fast float %6717, %6704
  %6725 = fadd fast float %6720, %6705
  %6726 = fadd fast float %6723, %6706
  %6727 = call float @dx.op.unary.f32(i32 7, float %6724)  ; Saturate(value)
  %6728 = call float @dx.op.unary.f32(i32 7, float %6725)  ; Saturate(value)
  %6729 = call float @dx.op.unary.f32(i32 7, float %6726)  ; Saturate(value)
  br label %6730

; <label>:6730                                    ; preds = %6707, %6692
  %6731 = phi float [ %6727, %6707 ], [ %6704, %6692 ]
  %6732 = phi float [ %6728, %6707 ], [ %6705, %6692 ]
  %6733 = phi float [ %6729, %6707 ], [ %6706, %6692 ]
  %6734 = call float @dx.op.binary.f32(i32 35, float %6732, float %6733)  ; FMax(a,b)
  %6735 = call float @dx.op.binary.f32(i32 35, float %6731, float %6734)  ; FMax(a,b)
  %6736 = fsub fast float 1.000000e+00, %6735
  %6737 = fmul fast float %6693, %6651
  %6738 = fmul fast float %6694, %6651
  %6739 = fmul fast float %6695, %6651
  %6740 = fsub fast float 1.000000e+00, %6584
  %6741 = bitcast float %6740 to i32
  %6742 = sitofp i32 %6741 to float
  %6743 = fmul fast float %6742, 5.000000e+00
  %6744 = fadd fast float %6743, 0xC1EFBF8940000000
  %6745 = fptosi float %6744 to i32
  %6746 = bitcast i32 %6745 to float
  %6747 = fmul fast float %6746, %4257
  %6748 = fmul fast float %6736, %6747
  %6749 = fmul fast float %6748, %5047
  %6750 = fmul fast float %6748, %5048
  %6751 = fmul fast float %6748, %5049
  %6752 = fadd fast float %6749, %6737
  %6753 = fadd fast float %6750, %6738
  %6754 = fadd fast float %6751, %6739
  %6755 = fmul fast float %6572, %4253
  %6756 = fmul fast float %6755, %6590
  %6757 = fmul fast float %6756, %6736
  %6758 = fmul fast float %6573, %4253
  %6759 = fmul fast float %6758, %6590
  %6760 = fmul fast float %6759, %6736
  %6761 = fmul fast float %6574, %4253
  %6762 = fmul fast float %6761, %6590
  %6763 = fmul fast float %6762, %6736
  %6764 = fadd fast float %6757, %6251
  %6765 = fadd fast float %6760, %6252
  %6766 = fadd fast float %6763, %6253
  %6767 = fmul fast float %6756, %6752
  %6768 = fmul fast float %6759, %6753
  %6769 = fmul fast float %6762, %6754
  %6770 = fadd fast float %6767, %6248
  %6771 = fadd fast float %6768, %6249
  %6772 = fadd fast float %6769, %6250
  br label %6380

; <label>:6773                                    ; preds = %6380
  br label %6774

; <label>:6774                                    ; preds = %6773, %6214
  %6775 = phi float [ %6216, %6214 ], [ %6381, %6773 ]
  %6776 = phi float [ %6217, %6214 ], [ %6382, %6773 ]
  %6777 = phi float [ %6218, %6214 ], [ %6383, %6773 ]
  %6778 = phi float [ %6219, %6214 ], [ %6384, %6773 ]
  %6779 = phi float [ %6220, %6214 ], [ %6385, %6773 ]
  %6780 = phi float [ %6221, %6214 ], [ %6386, %6773 ]
  %6781 = add i32 %6215, 1
  %6782 = icmp ugt i32 %6781, %6211
  br i1 %6782, label %6783, label %6214

; <label>:6783                                    ; preds = %6774
  br label %6784

; <label>:6784                                    ; preds = %6783, %6164, %6154
  %6785 = phi float [ %6155, %6154 ], [ %6155, %6164 ], [ %6775, %6783 ]
  %6786 = phi float [ %6156, %6154 ], [ %6156, %6164 ], [ %6776, %6783 ]
  %6787 = phi float [ %6157, %6154 ], [ %6157, %6164 ], [ %6777, %6783 ]
  %6788 = phi float [ %6158, %6154 ], [ %6158, %6164 ], [ %6778, %6783 ]
  %6789 = phi float [ %6159, %6154 ], [ %6159, %6164 ], [ %6779, %6783 ]
  %6790 = phi float [ %6160, %6154 ], [ %6160, %6164 ], [ %6780, %6783 ]
  %6791 = fmul fast float %4253, %4253
  %6792 = fsub fast float 1.000000e+00, %6791
  %6793 = call float @dx.op.dot3.f32(i32 55, float %6792, float %6792, float %6792, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6794 = fsub fast float 1.000000e+00, %6793
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = fmul fast float %6796, %5053
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 3
  %6800 = fsub fast float 1.000000e+00, %4260
  %6801 = call float @dx.op.unary.f32(i32 7, float %6800)  ; Saturate(value)
  %6802 = fadd fast float %6790, %4259
  %6803 = fmul fast float %6802, %4260
  %6804 = fmul fast float %6801, %6799
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 3
  %6807 = fmul fast float %6788, %4858
  %6808 = fmul fast float %6789, %4859
  %6809 = fmul fast float %6790, %4860
  %6810 = fcmp fast ogt float %86, %180
  %6811 = and i1 %6810, %4663
  %6812 = or i1 %4669, %6811
  %6813 = icmp eq i32 %4662, 2
  %6814 = fcmp fast ole float %86, %180
  %6815 = and i1 %6814, %6813
  %6816 = or i1 %6815, %6812
  br i1 %6811, label %6817, label %7074

; <label>:6817                                    ; preds = %6784
  %6818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.f32 %6818, 2
  %6820 = extractvalue %dx.types.CBufRet.f32 %6818, 3
  %6821 = fmul fast float %6819, %95
  %6822 = fmul fast float %6820, %96
  %6823 = call float @dx.op.unary.f32(i32 7, float %6821)  ; Saturate(value)
  %6824 = call float @dx.op.unary.f32(i32 7, float %6822)  ; Saturate(value)
  %6825 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6823, float %6824, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.ResRet.f32 %6825, 1
  %6828 = extractvalue %dx.types.ResRet.f32 %6825, 2
  %6829 = extractvalue %dx.types.ResRet.f32 %6825, 3
  %6830 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %6823, float %6824, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6831 = extractvalue %dx.types.ResRet.f32 %6830, 0
  %6832 = extractvalue %dx.types.ResRet.f32 %6830, 1
  %6833 = extractvalue %dx.types.ResRet.f32 %6830, 2
  %6834 = extractvalue %dx.types.ResRet.f32 %6830, 3
  %6835 = call float @dx.op.binary.f32(i32 35, float %6827, float %6828)  ; FMax(a,b)
  %6836 = call float @dx.op.binary.f32(i32 35, float %6826, float %6835)  ; FMax(a,b)
  %6837 = call float @dx.op.binary.f32(i32 35, float %6836, float %6829)  ; FMax(a,b)
  %6838 = call float @dx.op.binary.f32(i32 36, float %6832, float %6833)  ; FMin(a,b)
  %6839 = call float @dx.op.binary.f32(i32 36, float %6831, float %6838)  ; FMin(a,b)
  %6840 = call float @dx.op.binary.f32(i32 36, float %6839, float %6834)  ; FMin(a,b)
  %6841 = fmul fast float %6837, 2.550000e+02
  %6842 = fadd fast float %6841, 0x3F70101020000000
  %6843 = fptoui float %6842 to i32
  %6844 = fmul fast float %6840, 2.550000e+02
  %6845 = fadd fast float %6844, 0x3F70101020000000
  %6846 = fptoui float %6845 to i32
  %6847 = icmp ult i32 %6843, %6846
  br i1 %6847, label %6848, label %7016

; <label>:6848                                    ; preds = %6817
  %6849 = fcmp fast ogt float %85, 9.843750e-01
  %6850 = fadd fast float %86, -4.000000e+00
  %6851 = select i1 %6849, float -4.000000e+00, float %6850
  %6852 = call float @dx.op.binary.f32(i32 35, float %6851, float 0.000000e+00)  ; FMax(a,b)
  %6853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.f32 %6853, 0
  %6855 = fadd fast float %6854, %6852
  %6856 = extractvalue %dx.types.CBufRet.f32 %6853, 2
  %6857 = fmul fast float %6855, %6856
  %6858 = call float @dx.op.unary.f32(i32 23, float %6857)  ; Log(value)
  %6859 = extractvalue %dx.types.CBufRet.f32 %6853, 3
  %6860 = fmul fast float %6859, %6858
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6863 = fmul fast float %6860, %6862
  %6864 = call float @dx.op.unary.f32(i32 7, float %6863)  ; Saturate(value)
  %6865 = uitofp i32 %6843 to float
  %6866 = uitofp i32 %6846 to float
  %6867 = fadd fast float %6865, 5.000000e-01
  %6868 = fadd fast float %6866, 5.000000e-01
  %6869 = fmul fast float %6862, %6867
  %6870 = fmul fast float %6862, %6868
  %6871 = fadd fast float %6869, 0x3F0FFB4800000000
  %6872 = fadd fast float %6870, 0xBF0FFB4800000000
  %6873 = call float @dx.op.binary.f32(i32 35, float %6864, float %6871)  ; FMax(a,b)
  %6874 = call float @dx.op.binary.f32(i32 36, float %6873, float %6872)  ; FMin(a,b)
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 2
  %6878 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6879 = fmul fast float %6876, %6874
  %6880 = fadd fast float %6878, %6879
  %6881 = fadd fast float %6878, %6877
  %6882 = fsub fast float %6876, %6877
  %6883 = fadd fast float %6882, %6878
  %6884 = call float @dx.op.binary.f32(i32 35, float %6880, float %6881)  ; FMax(a,b)
  %6885 = call float @dx.op.binary.f32(i32 36, float %6884, float %6883)  ; FMin(a,b)
  %6886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %6823, float %6824, float %6885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6887 = extractvalue %dx.types.ResRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.ResRet.f32 %6886, 1
  %6889 = extractvalue %dx.types.ResRet.f32 %6886, 2
  %6890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6891 = extractvalue %dx.types.CBufRet.i32 %6890, 0
  %6892 = extractvalue %dx.types.CBufRet.i32 %6890, 1
  %6893 = uitofp i32 %6891 to float
  %6894 = uitofp i32 %6892 to float
  %6895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.f32 %6895, 0
  %6897 = extractvalue %dx.types.CBufRet.f32 %6895, 1
  %6898 = fmul fast float %6893, %6823
  %6899 = fmul fast float %6894, %6824
  %6900 = fadd fast float %6898, -5.000000e-01
  %6901 = fadd fast float %6899, -5.000000e-01
  %6902 = call float @dx.op.unary.f32(i32 22, float %6900)  ; Frc(value)
  %6903 = call float @dx.op.unary.f32(i32 22, float %6901)  ; Frc(value)
  %6904 = fmul fast float %6902, %6902
  %6905 = fmul fast float %6904, %6902
  %6906 = fsub fast float 3.000000e+00, %6902
  %6907 = fmul fast float %6904, %6906
  %6908 = fmul fast float %6902, 3.000000e+00
  %6909 = fmul fast float %6905, 3.000000e+00
  %6910 = fmul fast float %6904, 6.000000e+00
  %6911 = fsub fast float %6909, %6910
  %6912 = fadd fast float %6911, 4.000000e+00
  %6913 = fmul fast float %6912, 0x3FC5555560000000
  %6914 = fmul fast float %6905, -3.000000e+00
  %6915 = fadd fast float %6904, %6902
  %6916 = fmul fast float %6915, 3.000000e+00
  %6917 = fadd fast float %6914, 1.000000e+00
  %6918 = fadd fast float %6917, %6916
  %6919 = fmul fast float %6905, 0x3FC5555560000000
  %6920 = fmul fast float %6903, %6903
  %6921 = fmul fast float %6920, %6903
  %6922 = fsub fast float 3.000000e+00, %6903
  %6923 = fmul fast float %6920, %6922
  %6924 = fmul fast float %6903, 3.000000e+00
  %6925 = fmul fast float %6921, 3.000000e+00
  %6926 = fmul fast float %6920, 6.000000e+00
  %6927 = fsub fast float %6925, %6926
  %6928 = fadd fast float %6927, 4.000000e+00
  %6929 = fmul fast float %6928, 0x3FC5555560000000
  %6930 = fmul fast float %6921, -3.000000e+00
  %6931 = fadd fast float %6920, %6903
  %6932 = fmul fast float %6931, 3.000000e+00
  %6933 = fadd fast float %6930, 1.000000e+00
  %6934 = fadd fast float %6933, %6932
  %6935 = fmul fast float %6921, 0x3FC5555560000000
  %6936 = fadd fast float %6902, 1.000000e+00
  %6937 = fsub fast float 1.000000e+00, %6908
  %6938 = fadd fast float %6937, %6907
  %6939 = fadd fast float %6938, %6912
  %6940 = fmul fast float %6939, 0x3FC5555560000000
  %6941 = fdiv fast float %6913, %6940
  %6942 = fsub fast float %6936, %6941
  %6943 = fsub fast float 1.000000e+00, %6902
  %6944 = fadd fast float %6918, %6905
  %6945 = fmul fast float %6944, 0x3FC5555560000000
  %6946 = fdiv fast float %6919, %6945
  %6947 = fadd fast float %6943, %6946
  %6948 = fadd fast float %6903, 1.000000e+00
  %6949 = fsub fast float 1.000000e+00, %6924
  %6950 = fadd fast float %6949, %6923
  %6951 = fadd fast float %6950, %6928
  %6952 = fmul fast float %6951, 0x3FC5555560000000
  %6953 = fdiv fast float %6929, %6952
  %6954 = fsub fast float %6948, %6953
  %6955 = fsub fast float 1.000000e+00, %6903
  %6956 = fadd fast float %6934, %6921
  %6957 = fmul fast float %6956, 0x3FC5555560000000
  %6958 = fdiv fast float %6935, %6957
  %6959 = fadd fast float %6958, %6955
  %6960 = fmul fast float %6942, %6896
  %6961 = fsub fast float %6823, %6960
  %6962 = fmul fast float %6947, %6896
  %6963 = fadd fast float %6962, %6823
  %6964 = fmul fast float %6959, %6897
  %6965 = fadd fast float %6964, %6824
  %6966 = fmul fast float %6954, %6897
  %6967 = fsub fast float %6824, %6966
  %6968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6961, float %6967, float %6885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6969 = extractvalue %dx.types.ResRet.f32 %6968, 0
  %6970 = extractvalue %dx.types.ResRet.f32 %6968, 1
  %6971 = extractvalue %dx.types.ResRet.f32 %6968, 2
  %6972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6963, float %6967, float %6885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6973 = extractvalue %dx.types.ResRet.f32 %6972, 0
  %6974 = extractvalue %dx.types.ResRet.f32 %6972, 1
  %6975 = extractvalue %dx.types.ResRet.f32 %6972, 2
  %6976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6961, float %6965, float %6885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6977 = extractvalue %dx.types.ResRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.ResRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.ResRet.f32 %6976, 2
  %6980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %6963, float %6965, float %6885, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6981 = extractvalue %dx.types.ResRet.f32 %6980, 0
  %6982 = extractvalue %dx.types.ResRet.f32 %6980, 1
  %6983 = extractvalue %dx.types.ResRet.f32 %6980, 2
  %6984 = fsub fast float %6977, %6969
  %6985 = fsub fast float %6978, %6970
  %6986 = fsub fast float %6979, %6971
  %6987 = fmul fast float %6984, %6957
  %6988 = fmul fast float %6985, %6957
  %6989 = fmul fast float %6986, %6957
  %6990 = fadd fast float %6987, %6969
  %6991 = fadd fast float %6988, %6970
  %6992 = fadd fast float %6989, %6971
  %6993 = fsub fast float %6981, %6973
  %6994 = fsub fast float %6982, %6974
  %6995 = fsub fast float %6983, %6975
  %6996 = fmul fast float %6993, %6957
  %6997 = fmul fast float %6994, %6957
  %6998 = fmul fast float %6995, %6957
  %6999 = fsub fast float %6973, %6990
  %7000 = fadd fast float %6999, %6996
  %7001 = fsub fast float %6974, %6991
  %7002 = fadd fast float %7001, %6997
  %7003 = fsub fast float %6975, %6992
  %7004 = fadd fast float %7003, %6998
  %7005 = fmul fast float %7000, %6945
  %7006 = fmul fast float %7002, %6945
  %7007 = fmul fast float %7004, %6945
  %7008 = fadd fast float %7005, %6990
  %7009 = fadd fast float %7006, %6991
  %7010 = fadd fast float %7007, %6992
  %7011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7012 = extractvalue %dx.types.CBufRet.f32 %7011, 1
  %7013 = fmul fast float %7008, %7012
  %7014 = fmul fast float %7009, %7012
  %7015 = fmul fast float %7010, %7012
  br label %7016

; <label>:7016                                    ; preds = %6848, %6817
  %7017 = phi float [ %6887, %6848 ], [ 1.000000e+00, %6817 ]
  %7018 = phi float [ %6888, %6848 ], [ 1.000000e+00, %6817 ]
  %7019 = phi float [ %6889, %6848 ], [ 1.000000e+00, %6817 ]
  %7020 = phi float [ %7013, %6848 ], [ 0.000000e+00, %6817 ]
  %7021 = phi float [ %7014, %6848 ], [ 0.000000e+00, %6817 ]
  %7022 = phi float [ %7015, %6848 ], [ 0.000000e+00, %6817 ]
  %7023 = fmul fast float %7020, %6794
  %7024 = fmul fast float %7021, %6794
  %7025 = fmul fast float %7022, %6794
  %7026 = call float @dx.op.dot3.f32(i32 55, float %7017, float %7018, float %7019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7027 = call float @dx.op.dot3.f32(i32 55, float %7023, float %7024, float %7025, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7028 = select i1 %220, float %7026, float %7017
  %7029 = select i1 %220, float %7026, float %7018
  %7030 = select i1 %220, float 1.000000e+00, float %7019
  %7031 = select i1 %220, float %7027, float %7023
  %7032 = select i1 %220, float 0.000000e+00, float %7024
  %7033 = select i1 %220, float 0.000000e+00, float %7025
  %7034 = fmul fast float %7028, %6807
  %7035 = fmul fast float %7029, %6808
  %7036 = fmul fast float %7030, %6809
  %7037 = fadd fast float %7034, %7031
  %7038 = fadd fast float %7035, %7032
  %7039 = fadd fast float %7033, %7036
  %7040 = fmul fast float %7028, %6785
  %7041 = fmul fast float %7029, %6786
  %7042 = fmul fast float %7030, %6787
  %7043 = fmul fast float %128, %6819
  %7044 = fmul fast float %130, %6820
  %7045 = fsub fast float 1.000000e+00, %7043
  %7046 = fsub fast float 1.000000e+00, %7044
  %7047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7048 = extractvalue %dx.types.CBufRet.f32 %7047, 0
  %7049 = extractvalue %dx.types.CBufRet.f32 %7047, 1
  %7050 = extractvalue %dx.types.CBufRet.f32 %7047, 2
  %7051 = fmul fast float %7045, %7048
  %7052 = fmul fast float %7045, %7049
  %7053 = fmul fast float %7045, %7050
  %7054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7055 = extractvalue %dx.types.CBufRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.CBufRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.CBufRet.f32 %7054, 2
  %7058 = fmul fast float %7046, %7055
  %7059 = fmul fast float %7046, %7056
  %7060 = fmul fast float %7046, %7057
  %7061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7062 = extractvalue %dx.types.CBufRet.f32 %7061, 0
  %7063 = extractvalue %dx.types.CBufRet.f32 %7061, 1
  %7064 = extractvalue %dx.types.CBufRet.f32 %7061, 2
  %7065 = fadd fast float %7058, %7062
  %7066 = fadd fast float %7065, %7051
  %7067 = fadd fast float %7059, %7063
  %7068 = fadd fast float %7067, %7052
  %7069 = fadd fast float %7060, %7064
  %7070 = fadd fast float %7069, %7053
  %7071 = fmul fast float %7066, %180
  %7072 = fmul fast float %7068, %180
  %7073 = fmul fast float %7070, %180
  br label %7074

; <label>:7074                                    ; preds = %7016, %6784
  %7075 = phi float [ %7071, %7016 ], [ %158, %6784 ]
  %7076 = phi float [ %7072, %7016 ], [ %159, %6784 ]
  %7077 = phi float [ %7073, %7016 ], [ %160, %6784 ]
  %7078 = phi float [ %180, %7016 ], [ %86, %6784 ]
  %7079 = phi float [ %7037, %7016 ], [ %6807, %6784 ]
  %7080 = phi float [ %7038, %7016 ], [ %6808, %6784 ]
  %7081 = phi float [ %7039, %7016 ], [ %6809, %6784 ]
  %7082 = phi float [ %7040, %7016 ], [ %6785, %6784 ]
  %7083 = phi float [ %7041, %7016 ], [ %6786, %6784 ]
  %7084 = phi float [ %7042, %7016 ], [ %6787, %6784 ]
  %7085 = phi float [ %7017, %7016 ], [ 1.000000e+00, %6784 ]
  br i1 %6816, label %8240, label %7086

; <label>:7086                                    ; preds = %7074
  %7087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.f32 %7087, 0
  %7089 = extractvalue %dx.types.CBufRet.f32 %7087, 1
  %7090 = extractvalue %dx.types.CBufRet.f32 %7087, 2
  %7091 = extractvalue %dx.types.CBufRet.f32 %7087, 3
  %7092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7093 = extractvalue %dx.types.CBufRet.f32 %7092, 0
  %7094 = extractvalue %dx.types.CBufRet.f32 %7092, 1
  %7095 = extractvalue %dx.types.CBufRet.f32 %7092, 2
  %7096 = extractvalue %dx.types.CBufRet.f32 %7092, 3
  %7097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7098 = extractvalue %dx.types.CBufRet.f32 %7097, 0
  %7099 = extractvalue %dx.types.CBufRet.f32 %7097, 1
  %7100 = extractvalue %dx.types.CBufRet.f32 %7097, 2
  %7101 = extractvalue %dx.types.CBufRet.f32 %7097, 3
  %7102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7103 = extractvalue %dx.types.CBufRet.f32 %7102, 0
  %7104 = extractvalue %dx.types.CBufRet.f32 %7102, 1
  %7105 = extractvalue %dx.types.CBufRet.f32 %7102, 2
  %7106 = extractvalue %dx.types.CBufRet.f32 %7102, 3
  %7107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7108 = extractvalue %dx.types.CBufRet.f32 %7107, 3
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 3
  %7111 = extractvalue %dx.types.CBufRet.f32 %7109, 0
  %7112 = extractvalue %dx.types.CBufRet.f32 %7109, 1
  %7113 = extractvalue %dx.types.CBufRet.f32 %7109, 2
  %7114 = fcmp fast olt float %7113, -5.000000e-01
  %7115 = call float @dx.op.dot3.f32(i32 55, float %7075, float %7076, float %7077, float %7075, float %7076, float %7077)  ; Dot3(ax,ay,az,bx,by,bz)
  %7116 = call float @dx.op.unary.f32(i32 25, float %7115)  ; Rsqrt(value)
  %7117 = fmul fast float %7116, %7115
  %7118 = fmul fast float %7116, %7075
  %7119 = fmul fast float %7116, %7076
  %7120 = fmul fast float %7116, %7077
  %7121 = fadd fast float %7117, %7091
  %7122 = call float @dx.op.dot3.f32(i32 55, float %7118, float %7119, float %7120, float %7088, float %7089, float %7090)  ; Dot3(ax,ay,az,bx,by,bz)
  %7123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7124 = extractvalue %dx.types.CBufRet.i32 %7123, 1
  %7125 = and i32 %7124, 1
  %7126 = icmp ne i32 %7125, 0
  %7127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7127, 2
  %7129 = fcmp fast ogt float %7128, 0.000000e+00
  %7130 = and i1 %7126, %7129
  br i1 %7130, label %7131, label %7537, !dx.controlflow.hints !119

; <label>:7131                                    ; preds = %7086
  %7132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7133 = extractvalue %dx.types.CBufRet.f32 %7132, 3
  %7134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7135 = extractvalue %dx.types.CBufRet.f32 %7134, 2
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 2
  %7138 = fsub fast float %7135, %7137
  %7139 = and i32 %7124, 2
  %7140 = extractvalue %dx.types.CBufRet.i32 %7123, 0
  %7141 = call i32 @dx.op.binary.i32(i32 40, i32 %7140, i32 3)  ; UMin(a,b)
  %7142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7143 = extractvalue %dx.types.CBufRet.f32 %7142, 0
  %7144 = extractvalue %dx.types.CBufRet.f32 %7142, 1
  %7145 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7146 = extractvalue %dx.types.CBufRet.f32 %7136, 1
  %7147 = fsub fast float %7143, %7145
  %7148 = fsub fast float %7144, %7146
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 0
  %7151 = fcmp fast ogt float %7150, 0.000000e+00
  %7152 = fsub fast float -0.000000e+00, %7147
  %7153 = fsub fast float -0.000000e+00, %7148
  %7154 = call float @dx.op.dot2.f32(i32 54, float %7118, float %7119, float %7118, float %7119)  ; Dot2(ax,ay,bx,by)
  %7155 = call float @dx.op.dot2.f32(i32 54, float %7118, float %7119, float %7152, float %7153)  ; Dot2(ax,ay,bx,by)
  %7156 = fmul fast float %7155, 2.000000e+00
  %7157 = call float @dx.op.dot2.f32(i32 54, float %7152, float %7153, float %7152, float %7153)  ; Dot2(ax,ay,bx,by)
  %7158 = fmul fast float %7150, %7150
  %7159 = fsub fast float %7157, %7158
  %7160 = fmul fast float %7156, %7156
  %7161 = fmul fast float %7154, 4.000000e+00
  %7162 = fmul fast float %7161, %7159
  %7163 = fsub fast float %7160, %7162
  %7164 = fcmp fast ogt float %7163, 0.000000e+00
  br i1 %7164, label %7165, label %7180

; <label>:7165                                    ; preds = %7131
  %7166 = fcmp fast ogt float %7156, 0.000000e+00
  %7167 = call float @dx.op.unary.f32(i32 24, float %7163)  ; Sqrt(value)
  %7168 = fsub fast float -0.000000e+00, %7167
  %7169 = select i1 %7166, float %7167, float %7168
  %7170 = fadd fast float %7169, %7156
  %7171 = fmul float %7170, -5.000000e-01
  %7172 = fdiv fast float %7171, %7154
  %7173 = call float @dx.op.binary.f32(i32 35, float %7172, float 0.000000e+00)  ; FMax(a,b)
  %7174 = call float @dx.op.binary.f32(i32 36, float %7117, float %7173)  ; FMin(a,b)
  %7175 = fdiv fast float %7159, %7171
  %7176 = call float @dx.op.binary.f32(i32 35, float %7175, float 0.000000e+00)  ; FMax(a,b)
  %7177 = call float @dx.op.binary.f32(i32 36, float %7117, float %7176)  ; FMin(a,b)
  %7178 = call float @dx.op.binary.f32(i32 36, float %7174, float %7177)  ; FMin(a,b)
  %7179 = call float @dx.op.binary.f32(i32 35, float %7174, float %7177)  ; FMax(a,b)
  br label %7180

; <label>:7180                                    ; preds = %7165, %7131
  %7181 = phi float [ %7179, %7165 ], [ -1.000000e+00, %7131 ]
  %7182 = phi float [ %7178, %7165 ], [ -1.000000e+00, %7131 ]
  %7183 = phi i1 [ true, %7165 ], [ false, %7131 ]
  %7184 = and i1 %7151, %7183
  br i1 %7184, label %7185, label %7187

; <label>:7185                                    ; preds = %7180
  %7186 = fcmp fast oeq float %7182, %7181
  br i1 %7186, label %7490, label %7188

; <label>:7187                                    ; preds = %7180
  br i1 %7151, label %7490, label %7188

; <label>:7188                                    ; preds = %7187, %7185
  %7189 = phi float [ %7117, %7187 ], [ %7181, %7185 ]
  %7190 = phi float [ 0.000000e+00, %7187 ], [ %7182, %7185 ]
  %7191 = icmp ne i32 %7139, 0
  %7192 = fmul fast float %7189, %7120
  %7193 = fadd fast float %7192, %7133
  %7194 = fmul fast float %7193, %7189
  %7195 = select i1 %7191, float 0.000000e+00, float %7194
  %7196 = fcmp fast oeq float %7120, 0.000000e+00
  %7197 = fdiv fast float %7138, %7120
  %7198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7197)  ; FMax(a,b)
  %7199 = select i1 %7196, float %7189, float %7198
  %7200 = call float @dx.op.binary.f32(i32 36, float %7189, float %7199)  ; FMin(a,b)
  %7201 = fcmp fast ogt float %7120, 0.000000e+00
  %7202 = fcmp fast olt float %7138, 0.000000e+00
  br i1 %7201, label %7203, label %7260

; <label>:7203                                    ; preds = %7188
  %7204 = icmp eq i32 %7139, 0
  br i1 %7202, label %7205, label %7249

; <label>:7205                                    ; preds = %7203
  %7206 = select i1 %7204, float %7189, float 0.000000e+00
  %7207 = fsub fast float -0.000000e+00, %7206
  %7208 = call float @dx.op.unary.f32(i32 6, float %7207)  ; FAbs(value)
  %7209 = fmul fast float %7206, %7120
  %7210 = fadd fast float %7209, %7133
  %7211 = fmul fast float %7208, %7210
  %7212 = fsub fast float %7195, %7211
  %7213 = fsub fast float %7189, %7208
  %7214 = select i1 %7204, float %7213, float 0.000000e+00
  %7215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7216 = extractvalue %dx.types.CBufRet.f32 %7215, 0
  %7217 = extractvalue %dx.types.CBufRet.f32 %7215, 1
  %7218 = extractvalue %dx.types.CBufRet.f32 %7215, 2
  %7219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7220 = extractvalue %dx.types.CBufRet.f32 %7219, 0
  %7221 = extractvalue %dx.types.CBufRet.f32 %7219, 1
  %7222 = extractvalue %dx.types.CBufRet.f32 %7219, 2
  %7223 = extractvalue %dx.types.CBufRet.f32 %7219, 3
  %7224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7225 = extractvalue %dx.types.CBufRet.f32 %7224, 3
  %7226 = call float @dx.op.binary.f32(i32 36, float %7212, float %7225)  ; FMin(a,b)
  %7227 = fmul fast float %7223, %7214
  %7228 = call float @dx.op.unary.f32(i32 7, float %7227)  ; Saturate(value)
  %7229 = fsub fast float %7220, %7216
  %7230 = fsub fast float %7221, %7217
  %7231 = fsub fast float %7222, %7218
  %7232 = fmul fast float %7228, %7229
  %7233 = fmul fast float %7228, %7230
  %7234 = fmul fast float %7228, %7231
  %7235 = fadd fast float %7232, %7216
  %7236 = fadd fast float %7233, %7217
  %7237 = fadd fast float %7234, %7218
  %7238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7239 = extractvalue %dx.types.CBufRet.f32 %7238, 0
  %7240 = extractvalue %dx.types.CBufRet.f32 %7238, 1
  %7241 = fadd fast float %7240, %7239
  %7242 = call float @dx.op.unary.f32(i32 7, float %7241)  ; Saturate(value)
  %7243 = extractvalue %dx.types.CBufRet.f32 %7238, 2
  %7244 = extractvalue %dx.types.CBufRet.f32 %7238, 3
  %7245 = fadd fast float %7244, %7243
  %7246 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7247 = fmul fast float %7242, %7226
  %7248 = fmul fast float %7247, %7246
  br label %7490

; <label>:7249                                    ; preds = %7203
  br i1 %7204, label %7250, label %7271

; <label>:7250                                    ; preds = %7249
  %7251 = call float @dx.op.binary.f32(i32 36, float %7200, float %7190)  ; FMin(a,b)
  %7252 = fsub fast float %7200, %7251
  %7253 = fsub fast float %7252, %7189
  %7254 = call float @dx.op.unary.f32(i32 6, float %7253)  ; FAbs(value)
  %7255 = fadd fast float %7252, %7189
  %7256 = fmul fast float %7255, %7120
  %7257 = fadd fast float %7256, %7133
  %7258 = fmul fast float %7257, %7254
  %7259 = fsub fast float %7195, %7258
  br label %7271

; <label>:7260                                    ; preds = %7188
  br i1 %7202, label %7261, label %7271

; <label>:7261                                    ; preds = %7260
  %7262 = call float @dx.op.binary.f32(i32 35, float %7190, float %7200)  ; FMax(a,b)
  %7263 = icmp eq i32 %7139, 0
  %7264 = select i1 %7263, float %7200, float 0.000000e+00
  %7265 = fsub fast float -0.000000e+00, %7264
  %7266 = call float @dx.op.unary.f32(i32 6, float %7265)  ; FAbs(value)
  %7267 = fmul fast float %7264, %7120
  %7268 = fadd fast float %7267, %7133
  %7269 = fmul fast float %7266, %7268
  %7270 = fsub fast float %7195, %7269
  br label %7271

; <label>:7271                                    ; preds = %7261, %7260, %7250, %7249
  %7272 = phi float [ %7190, %7249 ], [ %7190, %7250 ], [ %7262, %7261 ], [ %7190, %7260 ]
  %7273 = phi float [ 0.000000e+00, %7249 ], [ %7254, %7250 ], [ %7266, %7261 ], [ 0.000000e+00, %7260 ]
  %7274 = phi float [ %7195, %7249 ], [ %7259, %7250 ], [ %7270, %7261 ], [ %7195, %7260 ]
  %7275 = phi float [ %7200, %7249 ], [ %7200, %7250 ], [ %7189, %7261 ], [ %7189, %7260 ]
  %7276 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %7276, align 4, !tbaa !120, !noalias !122
  %7277 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %7277, align 4, !tbaa !120, !noalias !122
  %7278 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %7278, align 4, !tbaa !120, !noalias !122
  %7279 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %7279, align 4, !tbaa !120, !noalias !122
  %7280 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %7280, align 4, !tbaa !120, !noalias !122
  %7281 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %7281, align 4, !tbaa !120, !noalias !122
  %7282 = icmp sgt i32 %7141, 0
  br i1 %7282, label %7283, label %7344

; <label>:7283                                    ; preds = %7271
  br label %7284

; <label>:7284                                    ; preds = %7333, %7283
  %7285 = phi i32 [ %7334, %7333 ], [ 0, %7283 ]
  %7286 = phi i32 [ %7335, %7333 ], [ 0, %7283 ]
  %7287 = add nuw i32 %7286, 171
  %7288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7287)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.f32 %7288, 0
  %7290 = extractvalue %dx.types.CBufRet.f32 %7288, 1
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7293 = extractvalue %dx.types.CBufRet.f32 %7291, 1
  %7294 = fsub fast float %7289, %7292
  %7295 = fsub fast float %7290, %7293
  %7296 = extractvalue %dx.types.CBufRet.f32 %7288, 2
  %7297 = fsub fast float -0.000000e+00, %7294
  %7298 = fsub fast float -0.000000e+00, %7295
  %7299 = call float @dx.op.dot2.f32(i32 54, float %7118, float %7119, float %7297, float %7298)  ; Dot2(ax,ay,bx,by)
  %7300 = fmul fast float %7299, 2.000000e+00
  %7301 = call float @dx.op.dot2.f32(i32 54, float %7297, float %7298, float %7297, float %7298)  ; Dot2(ax,ay,bx,by)
  %7302 = fmul fast float %7296, %7296
  %7303 = fsub fast float %7301, %7302
  %7304 = fmul fast float %7300, %7300
  %7305 = fmul fast float %7161, %7303
  %7306 = fsub fast float %7304, %7305
  %7307 = fcmp fast ogt float %7306, 0.000000e+00
  br i1 %7307, label %7308, label %7323

; <label>:7308                                    ; preds = %7284
  %7309 = fcmp fast ogt float %7300, 0.000000e+00
  %7310 = call float @dx.op.unary.f32(i32 24, float %7306)  ; Sqrt(value)
  %7311 = fsub fast float -0.000000e+00, %7310
  %7312 = select i1 %7309, float %7310, float %7311
  %7313 = fadd fast float %7312, %7300
  %7314 = fmul float %7313, -5.000000e-01
  %7315 = fdiv fast float %7314, %7154
  %7316 = call float @dx.op.binary.f32(i32 35, float %7315, float 0.000000e+00)  ; FMax(a,b)
  %7317 = call float @dx.op.binary.f32(i32 36, float %7189, float %7316)  ; FMin(a,b)
  %7318 = fdiv fast float %7303, %7314
  %7319 = call float @dx.op.binary.f32(i32 35, float %7318, float 0.000000e+00)  ; FMax(a,b)
  %7320 = call float @dx.op.binary.f32(i32 36, float %7189, float %7319)  ; FMin(a,b)
  %7321 = call float @dx.op.binary.f32(i32 36, float %7317, float %7320)  ; FMin(a,b)
  %7322 = call float @dx.op.binary.f32(i32 35, float %7317, float %7320)  ; FMax(a,b)
  br label %7323

; <label>:7323                                    ; preds = %7308, %7284
  %7324 = phi float [ %7322, %7308 ], [ -1.000000e+00, %7284 ]
  %7325 = phi float [ %7321, %7308 ], [ -1.000000e+00, %7284 ]
  %7326 = phi i1 [ true, %7308 ], [ false, %7284 ]
  br i1 %7326, label %7327, label %7333

; <label>:7327                                    ; preds = %7323
  %7328 = call float @dx.op.binary.f32(i32 35, float %7272, float %7325)  ; FMax(a,b)
  %7329 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7286
  store float %7328, float* %7329, align 4, !tbaa !120, !noalias !122
  %7330 = call float @dx.op.binary.f32(i32 35, float %7272, float %7324)  ; FMax(a,b)
  %7331 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7286
  store float %7330, float* %7331, align 4, !tbaa !120, !noalias !122
  %7332 = add nsw i32 %7285, 1
  br label %7333

; <label>:7333                                    ; preds = %7327, %7323
  %7334 = phi i32 [ %7332, %7327 ], [ %7285, %7323 ]
  %7335 = add nuw nsw i32 %7286, 1
  %7336 = icmp eq i32 %7335, %7141
  br i1 %7336, label %7337, label %7284

; <label>:7337                                    ; preds = %7333
  %7338 = load float, float* %7278, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7339 = load float, float* %7277, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  %7340 = load float, float* %7276, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  %7341 = load float, float* %7281, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7342 = load float, float* %7280, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  %7343 = load float, float* %7279, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  br label %7344

; <label>:7344                                    ; preds = %7337, %7271
  %7345 = phi float [ -1.000000e+00, %7271 ], [ %7343, %7337 ]
  %7346 = phi float [ -1.000000e+00, %7271 ], [ %7342, %7337 ]
  %7347 = phi float [ -1.000000e+00, %7271 ], [ %7341, %7337 ]
  %7348 = phi float [ -1.000000e+00, %7271 ], [ %7340, %7337 ]
  %7349 = phi float [ -1.000000e+00, %7271 ], [ %7339, %7337 ]
  %7350 = phi float [ -1.000000e+00, %7271 ], [ %7338, %7337 ]
  %7351 = phi i32 [ 0, %7271 ], [ %7334, %7337 ]
  %7352 = call float @dx.op.binary.f32(i32 36, float %7349, float %7350)  ; FMin(a,b)
  %7353 = call float @dx.op.binary.f32(i32 36, float %7348, float %7352)  ; FMin(a,b)
  %7354 = call float @dx.op.binary.f32(i32 35, float %7348, float %7349)  ; FMax(a,b)
  %7355 = call float @dx.op.binary.f32(i32 36, float %7354, float %7350)  ; FMin(a,b)
  %7356 = call float @dx.op.binary.f32(i32 36, float %7348, float %7349)  ; FMin(a,b)
  %7357 = call float @dx.op.binary.f32(i32 35, float %7356, float %7355)  ; FMax(a,b)
  %7358 = call float @dx.op.binary.f32(i32 35, float %7349, float %7350)  ; FMax(a,b)
  %7359 = call float @dx.op.binary.f32(i32 35, float %7348, float %7358)  ; FMax(a,b)
  store float %7353, float* %7276, align 4, !tbaa !120, !alias.scope !146, !noalias !147
  store float %7357, float* %7277, align 4, !tbaa !120, !alias.scope !144, !noalias !145
  store float %7359, float* %7278, align 4, !tbaa !120, !alias.scope !138, !noalias !141
  %7360 = call float @dx.op.binary.f32(i32 36, float %7346, float %7347)  ; FMin(a,b)
  %7361 = call float @dx.op.binary.f32(i32 36, float %7345, float %7360)  ; FMin(a,b)
  %7362 = call float @dx.op.binary.f32(i32 35, float %7345, float %7346)  ; FMax(a,b)
  %7363 = call float @dx.op.binary.f32(i32 36, float %7362, float %7347)  ; FMin(a,b)
  %7364 = call float @dx.op.binary.f32(i32 36, float %7345, float %7346)  ; FMin(a,b)
  %7365 = call float @dx.op.binary.f32(i32 35, float %7364, float %7363)  ; FMax(a,b)
  %7366 = call float @dx.op.binary.f32(i32 35, float %7346, float %7347)  ; FMax(a,b)
  %7367 = call float @dx.op.binary.f32(i32 35, float %7345, float %7366)  ; FMax(a,b)
  store float %7361, float* %7279, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  store float %7365, float* %7280, align 4, !tbaa !120, !alias.scope !154, !noalias !155
  store float %7367, float* %7281, align 4, !tbaa !120, !alias.scope !148, !noalias !151
  %7368 = sub nsw i32 3, %7351
  %7369 = icmp sgt i32 %7368, 2
  br i1 %7369, label %7370, label %7408

; <label>:7370                                    ; preds = %7344
  %7371 = icmp eq i32 %7139, 0
  %7372 = fsub fast float %7189, %7273
  %7373 = select i1 %7371, float %7372, float %7273
  %7374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7375 = extractvalue %dx.types.CBufRet.f32 %7374, 0
  %7376 = extractvalue %dx.types.CBufRet.f32 %7374, 1
  %7377 = extractvalue %dx.types.CBufRet.f32 %7374, 2
  %7378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.f32 %7378, 0
  %7380 = extractvalue %dx.types.CBufRet.f32 %7378, 1
  %7381 = extractvalue %dx.types.CBufRet.f32 %7378, 2
  %7382 = extractvalue %dx.types.CBufRet.f32 %7378, 3
  %7383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7384 = extractvalue %dx.types.CBufRet.f32 %7383, 3
  %7385 = call float @dx.op.binary.f32(i32 36, float %7274, float %7384)  ; FMin(a,b)
  %7386 = fmul fast float %7382, %7373
  %7387 = call float @dx.op.unary.f32(i32 7, float %7386)  ; Saturate(value)
  %7388 = fsub fast float %7379, %7375
  %7389 = fsub fast float %7380, %7376
  %7390 = fsub fast float %7381, %7377
  %7391 = fmul fast float %7387, %7388
  %7392 = fmul fast float %7387, %7389
  %7393 = fmul fast float %7387, %7390
  %7394 = fadd fast float %7391, %7375
  %7395 = fadd fast float %7392, %7376
  %7396 = fadd fast float %7393, %7377
  %7397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7398 = extractvalue %dx.types.CBufRet.f32 %7397, 0
  %7399 = extractvalue %dx.types.CBufRet.f32 %7397, 1
  %7400 = fadd fast float %7399, %7398
  %7401 = call float @dx.op.unary.f32(i32 7, float %7400)  ; Saturate(value)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7397, 2
  %7403 = extractvalue %dx.types.CBufRet.f32 %7397, 3
  %7404 = fadd fast float %7403, %7402
  %7405 = call float @dx.op.unary.f32(i32 7, float %7404)  ; Saturate(value)
  %7406 = fmul fast float %7401, %7385
  %7407 = fmul fast float %7406, %7405
  br label %7490

; <label>:7408                                    ; preds = %7344
  %7409 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7368
  %7410 = load float, float* %7409, align 4, !tbaa !120, !noalias !122
  %7411 = fcmp fast olt float %7410, %7275
  %7412 = icmp sgt i32 %7351, 0
  %7413 = and i1 %7412, %7411
  br i1 %7413, label %7414, label %7451

; <label>:7414                                    ; preds = %7408
  br label %7415

; <label>:7415                                    ; preds = %7444, %7414
  %7416 = phi float [ %7445, %7444 ], [ %7273, %7414 ]
  %7417 = phi float [ %7446, %7444 ], [ %7274, %7414 ]
  %7418 = phi float [ %7426, %7444 ], [ %7410, %7414 ]
  %7419 = phi i32 [ %7423, %7444 ], [ %7368, %7414 ]
  %7420 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %7419
  %7421 = load float, float* %7420, align 4, !tbaa !120, !noalias !122
  %7422 = icmp slt i32 %7419, 2
  %7423 = add nsw i32 %7419, 1
  %7424 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7423
  %7425 = load float, float* %7424, align 4, !tbaa !120, !noalias !122
  %7426 = select i1 %7422, float %7425, float %7189
  %7427 = call float @dx.op.binary.f32(i32 36, float %7426, float %7421)  ; FMin(a,b)
  %7428 = call float @dx.op.binary.f32(i32 36, float %7275, float %7427)  ; FMin(a,b)
  %7429 = icmp eq i32 %7139, 0
  %7430 = fadd fast float %7428, %7418
  %7431 = fmul fast float %7430, %7120
  %7432 = fadd fast float %7431, %7133
  br i1 %7429, label %7438, label %7433

; <label>:7433                                    ; preds = %7415
  %7434 = fsub fast float %7428, %7418
  %7435 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7434)  ; FMax(a,b)
  %7436 = fmul fast float %7435, %7432
  %7437 = fadd fast float %7436, %7417
  br label %7444

; <label>:7438                                    ; preds = %7415
  %7439 = fsub fast float %7418, %7428
  %7440 = call float @dx.op.unary.f32(i32 6, float %7439)  ; FAbs(value)
  %7441 = fadd fast float %7440, %7416
  %7442 = fmul fast float %7440, %7432
  %7443 = fsub fast float %7417, %7442
  br label %7444

; <label>:7444                                    ; preds = %7438, %7433
  %7445 = phi float [ %7435, %7433 ], [ %7441, %7438 ]
  %7446 = phi float [ %7437, %7433 ], [ %7443, %7438 ]
  %7447 = fcmp fast olt float %7426, %7275
  %7448 = icmp slt i32 %7423, 3
  %7449 = and i1 %7448, %7447
  br i1 %7449, label %7415, label %7450

; <label>:7450                                    ; preds = %7444
  br label %7451

; <label>:7451                                    ; preds = %7450, %7408
  %7452 = phi float [ %7273, %7408 ], [ %7445, %7450 ]
  %7453 = phi float [ %7274, %7408 ], [ %7446, %7450 ]
  %7454 = fsub fast float %7189, %7452
  %7455 = select i1 %7191, float %7452, float %7454
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = extractvalue %dx.types.CBufRet.f32 %7456, 1
  %7459 = extractvalue %dx.types.CBufRet.f32 %7456, 2
  %7460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7461 = extractvalue %dx.types.CBufRet.f32 %7460, 0
  %7462 = extractvalue %dx.types.CBufRet.f32 %7460, 1
  %7463 = extractvalue %dx.types.CBufRet.f32 %7460, 2
  %7464 = extractvalue %dx.types.CBufRet.f32 %7460, 3
  %7465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7466 = extractvalue %dx.types.CBufRet.f32 %7465, 3
  %7467 = call float @dx.op.binary.f32(i32 36, float %7453, float %7466)  ; FMin(a,b)
  %7468 = fmul fast float %7464, %7455
  %7469 = call float @dx.op.unary.f32(i32 7, float %7468)  ; Saturate(value)
  %7470 = fsub fast float %7461, %7457
  %7471 = fsub fast float %7462, %7458
  %7472 = fsub fast float %7463, %7459
  %7473 = fmul fast float %7469, %7470
  %7474 = fmul fast float %7469, %7471
  %7475 = fmul fast float %7469, %7472
  %7476 = fadd fast float %7473, %7457
  %7477 = fadd fast float %7474, %7458
  %7478 = fadd fast float %7475, %7459
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 0
  %7481 = extractvalue %dx.types.CBufRet.f32 %7479, 1
  %7482 = fadd fast float %7481, %7480
  %7483 = call float @dx.op.unary.f32(i32 7, float %7482)  ; Saturate(value)
  %7484 = extractvalue %dx.types.CBufRet.f32 %7479, 2
  %7485 = extractvalue %dx.types.CBufRet.f32 %7479, 3
  %7486 = fadd fast float %7485, %7484
  %7487 = call float @dx.op.unary.f32(i32 7, float %7486)  ; Saturate(value)
  %7488 = fmul fast float %7483, %7467
  %7489 = fmul fast float %7488, %7487
  br label %7490

; <label>:7490                                    ; preds = %7451, %7370, %7205, %7187, %7185
  %7491 = phi float [ %7214, %7205 ], [ %7373, %7370 ], [ %7455, %7451 ], [ 0.000000e+00, %7185 ], [ 0.000000e+00, %7187 ]
  %7492 = phi float [ %7248, %7205 ], [ %7407, %7370 ], [ %7489, %7451 ], [ 0.000000e+00, %7185 ], [ 0.000000e+00, %7187 ]
  %7493 = phi float [ %7235, %7205 ], [ %7394, %7370 ], [ %7476, %7451 ], [ 0.000000e+00, %7185 ], [ 0.000000e+00, %7187 ]
  %7494 = phi float [ %7236, %7205 ], [ %7395, %7370 ], [ %7477, %7451 ], [ 0.000000e+00, %7185 ], [ 0.000000e+00, %7187 ]
  %7495 = phi float [ %7237, %7205 ], [ %7396, %7370 ], [ %7478, %7451 ], [ 0.000000e+00, %7185 ], [ 0.000000e+00, %7187 ]
  %7496 = fmul fast float %7128, %7492
  %7497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7497, 2
  %7499 = fsub fast float %7135, %7498
  %7500 = fcmp fast olt float %7496, -2.000000e+01
  %7501 = call float @dx.op.unary.f32(i32 21, float %7496)  ; Exp(value)
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 2
  %7504 = extractvalue %dx.types.CBufRet.f32 %7502, 3
  %7505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7506 = extractvalue %dx.types.CBufRet.f32 %7505, 2
  %7507 = fmul fast float %7504, %7499
  %7508 = call float @dx.op.unary.f32(i32 7, float %7507)  ; Saturate(value)
  %7509 = fsub fast float 1.000000e+00, %7508
  %7510 = fmul fast float %7120, 5.000000e-01
  %7511 = fadd fast float %7510, 5.000000e-01
  %7512 = call float @dx.op.unary.f32(i32 7, float %7511)  ; Saturate(value)
  %7513 = fsub fast float 1.000000e+00, %7512
  %7514 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7509)  ; FMax(a,b)
  %7515 = fdiv fast float %7513, %7514
  %7516 = fsub fast float %7499, %7077
  %7517 = call float @dx.op.unary.f32(i32 6, float %7516)  ; FAbs(value)
  %7518 = fmul fast float %7517, %7503
  %7519 = call float @dx.op.unary.f32(i32 7, float %7515)  ; Saturate(value)
  %7520 = fsub fast float 1.000000e+00, %7518
  %7521 = fmul fast float %7520, %7519
  %7522 = fadd fast float %7521, %7518
  %7523 = fmul fast float %7506, %7499
  %7524 = call float @dx.op.unary.f32(i32 7, float %7523)  ; Saturate(value)
  %7525 = fsub fast float 1.000000e+00, %7522
  %7526 = fmul fast float %7525, %7524
  %7527 = fadd fast float %7526, %7522
  %7528 = call float @dx.op.unary.f32(i32 7, float %7527)  ; Saturate(value)
  %7529 = fadd fast float %7501, -1.000000e+00
  %7530 = select i1 %7500, float -1.000000e+00, float %7529
  %7531 = fmul fast float %7528, %7530
  %7532 = fadd fast float %7531, 1.000000e+00
  %7533 = fsub fast float -0.000000e+00, %7531
  %7534 = fmul fast float %7493, %7533
  %7535 = fmul fast float %7494, %7533
  %7536 = fmul fast float %7495, %7533
  br label %7537

; <label>:7537                                    ; preds = %7490, %7086
  %7538 = phi float [ %7491, %7490 ], [ 0.000000e+00, %7086 ]
  %7539 = phi float [ %7532, %7490 ], [ 1.000000e+00, %7086 ]
  %7540 = phi float [ %7534, %7490 ], [ 0.000000e+00, %7086 ]
  %7541 = phi float [ %7535, %7490 ], [ 0.000000e+00, %7086 ]
  %7542 = phi float [ %7536, %7490 ], [ 0.000000e+00, %7086 ]
  %7543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7544 = extractvalue %dx.types.CBufRet.f32 %7543, 1
  %7545 = fsub fast float 1.000000e+00, %7539
  %7546 = fmul fast float %7545, %7121
  %7547 = fmul fast float %7546, %7544
  %7548 = fsub fast float %7121, %7547
  br i1 %7114, label %7549, label %7578, !dx.controlflow.hints !158

; <label>:7549                                    ; preds = %7537
  %7550 = fmul fast float %7122, %7111
  %7551 = fadd fast float %7550, %7112
  %7552 = call float @dx.op.unary.f32(i32 7, float %7551)  ; Saturate(value)
  %7553 = fmul fast float %7093, %7548
  %7554 = fsub fast float -0.000000e+00, %7553
  %7555 = fmul fast float %7094, %7548
  %7556 = fsub fast float -0.000000e+00, %7555
  %7557 = call float @dx.op.unary.f32(i32 21, float %7554)  ; Exp(value)
  %7558 = call float @dx.op.unary.f32(i32 21, float %7556)  ; Exp(value)
  %7559 = call float @dx.op.binary.f32(i32 35, float %7101, float %7557)  ; FMax(a,b)
  %7560 = call float @dx.op.binary.f32(i32 35, float %7101, float %7558)  ; FMax(a,b)
  %7561 = fsub fast float %7560, %7559
  %7562 = fmul fast float %7561, %7552
  %7563 = fadd fast float %7562, %7559
  %7564 = call float @dx.op.unary.f32(i32 7, float %7563)  ; Saturate(value)
  %7565 = fsub fast float %7098, %7103
  %7566 = fsub fast float %7099, %7104
  %7567 = fsub fast float %7100, %7105
  %7568 = fmul fast float %7552, %7565
  %7569 = fmul fast float %7552, %7566
  %7570 = fmul fast float %7552, %7567
  %7571 = fadd fast float %7568, %7103
  %7572 = fadd fast float %7569, %7104
  %7573 = fadd fast float %7570, %7105
  %7574 = fsub fast float 1.000000e+00, %7564
  %7575 = fmul fast float %7574, %7571
  %7576 = fmul fast float %7574, %7572
  %7577 = fmul fast float %7574, %7573
  br label %7637

; <label>:7578                                    ; preds = %7537
  %7579 = fmul fast float %7548, %7110
  %7580 = call float @dx.op.unary.f32(i32 7, float %7579)  ; Saturate(value)
  %7581 = fsub fast float 2.000000e+00, %7580
  %7582 = fmul fast float %7580, 9.921875e-01
  %7583 = fmul fast float %7582, %7581
  %7584 = fadd fast float %7583, 3.906250e-03
  %7585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7584, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7586 = extractvalue %dx.types.ResRet.f32 %7585, 0
  %7587 = fsub fast float %7580, %7586
  %7588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7587)  ; FMax(a,b)
  %7589 = fmul fast float %7096, %7077
  %7590 = call float @dx.op.unary.f32(i32 6, float %7589)  ; FAbs(value)
  %7591 = fcmp fast ogt float %7590, 0x3EB0C6F7A0000000
  br i1 %7591, label %7592, label %7598, !dx.controlflow.hints !159

; <label>:7592                                    ; preds = %7578
  %7593 = fmul fast float %7589, 0xBFF7154760000000
  %7594 = call float @dx.op.unary.f32(i32 21, float %7593)  ; Exp(value)
  %7595 = fsub fast float 1.000000e+00, %7594
  %7596 = fdiv fast float %7595, %7589
  %7597 = fmul fast float %7596, %7106
  br label %7598

; <label>:7598                                    ; preds = %7592, %7578
  %7599 = phi float [ %7597, %7592 ], [ %7106, %7578 ]
  %7600 = fadd fast float %7599, %7108
  %7601 = fmul fast float %7600, %7588
  %7602 = fmul fast float %7093, %7601
  %7603 = fsub fast float -0.000000e+00, %7602
  %7604 = fmul fast float %7094, %7601
  %7605 = fsub fast float -0.000000e+00, %7604
  %7606 = fmul fast float %7095, %7601
  %7607 = fsub fast float -0.000000e+00, %7606
  %7608 = call float @dx.op.unary.f32(i32 21, float %7603)  ; Exp(value)
  %7609 = call float @dx.op.unary.f32(i32 21, float %7605)  ; Exp(value)
  %7610 = call float @dx.op.unary.f32(i32 21, float %7607)  ; Exp(value)
  %7611 = fmul fast float %7122, %7122
  %7612 = fadd fast float %7611, 1.000000e+00
  %7613 = fmul fast float %7612, 0x3FAE8EC8A0000000
  %7614 = fmul fast float %7613, %7103
  %7615 = fmul fast float %7613, %7104
  %7616 = fmul fast float %7613, %7105
  %7617 = fmul fast float %7122, %7101
  %7618 = fsub fast float 1.000000e+00, %7617
  %7619 = fmul fast float %7101, %7101
  %7620 = fsub fast float 1.000000e+00, %7619
  %7621 = fmul fast float %7620, 0x3FB45F3060000000
  %7622 = fmul fast float %7618, %7618
  %7623 = fdiv fast float 1.000000e+00, %7622
  %7624 = fmul fast float %7621, %7623
  %7625 = fmul fast float %7624, %7098
  %7626 = fmul fast float %7624, %7099
  %7627 = fmul fast float %7624, %7100
  %7628 = fadd fast float %7625, %7614
  %7629 = fadd fast float %7626, %7615
  %7630 = fadd fast float %7627, %7616
  %7631 = fsub fast float 1.000000e+00, %7608
  %7632 = fsub fast float 1.000000e+00, %7609
  %7633 = fsub fast float 1.000000e+00, %7610
  %7634 = fmul fast float %7628, %7631
  %7635 = fmul fast float %7629, %7632
  %7636 = fmul fast float %7630, %7633
  br label %7637

; <label>:7637                                    ; preds = %7598, %7549
  %7638 = phi float [ %7575, %7549 ], [ %7634, %7598 ]
  %7639 = phi float [ %7576, %7549 ], [ %7635, %7598 ]
  %7640 = phi float [ %7577, %7549 ], [ %7636, %7598 ]
  %7641 = phi float [ %7564, %7549 ], [ %7608, %7598 ]
  %7642 = phi float [ %7564, %7549 ], [ %7609, %7598 ]
  %7643 = phi float [ %7564, %7549 ], [ %7610, %7598 ]
  br i1 %7130, label %7644, label %7842, !dx.controlflow.hints !160

; <label>:7644                                    ; preds = %7637
  %7645 = extractvalue %dx.types.CBufRet.f32 %7543, 0
  %7646 = fmul fast float %7645, %7545
  %7647 = fsub fast float %7540, %7638
  %7648 = fsub fast float %7541, %7639
  %7649 = fsub fast float %7542, %7640
  %7650 = fmul fast float %7646, %7647
  %7651 = fmul fast float %7646, %7648
  %7652 = fmul fast float %7646, %7649
  %7653 = fadd fast float %7650, %7638
  %7654 = fadd fast float %7651, %7639
  %7655 = fadd fast float %7652, %7640
  %7656 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7641)  ; FMax(a,b)
  %7657 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7642)  ; FMax(a,b)
  %7658 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7643)  ; FMax(a,b)
  %7659 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7539)  ; FMax(a,b)
  %7660 = call float @dx.op.binary.f32(i32 35, float %7538, float %7548)  ; FMax(a,b)
  %7661 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7660)  ; FMax(a,b)
  %7662 = fdiv fast float %7538, %7661
  %7663 = call float @dx.op.unary.f32(i32 7, float %7662)  ; Saturate(value)
  %7664 = fdiv fast float %7548, %7661
  %7665 = call float @dx.op.unary.f32(i32 7, float %7664)  ; Saturate(value)
  %7666 = fcmp fast une float %7659, 1.000000e+00
  br i1 %7666, label %7667, label %7680, !dx.controlflow.hints !161

; <label>:7667                                    ; preds = %7644
  %7668 = call float @dx.op.unary.f32(i32 23, float %7659)  ; Log(value)
  %7669 = fmul fast float %7668, 0x3FE62E4300000000
  %7670 = fmul fast float %7540, %7669
  %7671 = fsub fast float -0.000000e+00, %7670
  %7672 = fmul fast float %7541, %7669
  %7673 = fsub fast float -0.000000e+00, %7672
  %7674 = fmul fast float %7542, %7669
  %7675 = fsub fast float -0.000000e+00, %7674
  %7676 = fsub fast float 1.000000e+00, %7659
  %7677 = fdiv fast float %7671, %7676
  %7678 = fdiv fast float %7673, %7676
  %7679 = fdiv fast float %7675, %7676
  br label %7680

; <label>:7680                                    ; preds = %7667, %7644
  %7681 = phi float [ %7677, %7667 ], [ %7540, %7644 ]
  %7682 = phi float [ %7678, %7667 ], [ %7541, %7644 ]
  %7683 = phi float [ %7679, %7667 ], [ %7542, %7644 ]
  %7684 = phi float [ %7669, %7667 ], [ 0.000000e+00, %7644 ]
  %7685 = fcmp fast une float %7656, 1.000000e+00
  br i1 %7685, label %7686, label %7693, !dx.controlflow.hints !162

; <label>:7686                                    ; preds = %7680
  %7687 = call float @dx.op.unary.f32(i32 23, float %7656)  ; Log(value)
  %7688 = fmul fast float %7687, 0x3FE62E4300000000
  %7689 = fmul fast float %7653, %7688
  %7690 = fsub fast float -0.000000e+00, %7689
  %7691 = fsub fast float 1.000000e+00, %7656
  %7692 = fdiv fast float %7690, %7691
  br label %7693

; <label>:7693                                    ; preds = %7686, %7680
  %7694 = phi float [ %7692, %7686 ], [ %7653, %7680 ]
  %7695 = phi float [ %7688, %7686 ], [ 0.000000e+00, %7680 ]
  %7696 = fcmp fast une float %7657, 1.000000e+00
  br i1 %7696, label %7697, label %7704, !dx.controlflow.hints !162

; <label>:7697                                    ; preds = %7693
  %7698 = call float @dx.op.unary.f32(i32 23, float %7657)  ; Log(value)
  %7699 = fmul fast float %7698, 0x3FE62E4300000000
  %7700 = fmul fast float %7654, %7699
  %7701 = fsub fast float -0.000000e+00, %7700
  %7702 = fsub fast float 1.000000e+00, %7657
  %7703 = fdiv fast float %7701, %7702
  br label %7704

; <label>:7704                                    ; preds = %7697, %7693
  %7705 = phi float [ %7703, %7697 ], [ %7654, %7693 ]
  %7706 = phi float [ %7699, %7697 ], [ 0.000000e+00, %7693 ]
  %7707 = fcmp fast une float %7658, 1.000000e+00
  br i1 %7707, label %7708, label %7715, !dx.controlflow.hints !162

; <label>:7708                                    ; preds = %7704
  %7709 = call float @dx.op.unary.f32(i32 23, float %7658)  ; Log(value)
  %7710 = fmul fast float %7709, 0x3FE62E4300000000
  %7711 = fmul fast float %7655, %7710
  %7712 = fsub fast float -0.000000e+00, %7711
  %7713 = fsub fast float 1.000000e+00, %7658
  %7714 = fdiv fast float %7712, %7713
  br label %7715

; <label>:7715                                    ; preds = %7708, %7704
  %7716 = phi float [ %7714, %7708 ], [ %7655, %7704 ]
  %7717 = phi float [ %7710, %7708 ], [ 0.000000e+00, %7704 ]
  %7718 = fmul fast float %7681, %7665
  %7719 = fmul fast float %7682, %7665
  %7720 = fmul fast float %7683, %7665
  %7721 = fmul fast float %7684, %7665
  %7722 = fmul fast float %7694, %7663
  %7723 = fmul fast float %7705, %7663
  %7724 = fmul fast float %7716, %7663
  %7725 = fmul fast float %7695, %7663
  %7726 = fmul fast float %7706, %7663
  %7727 = fmul fast float %7717, %7663
  %7728 = fadd fast float %7722, %7718
  %7729 = fadd fast float %7723, %7719
  %7730 = fadd fast float %7724, %7720
  %7731 = fadd fast float %7725, %7721
  %7732 = fadd fast float %7726, %7721
  %7733 = fadd fast float %7727, %7721
  %7734 = fcmp fast une float %7731, 0.000000e+00
  br i1 %7734, label %7735, label %7742, !dx.controlflow.hints !163

; <label>:7735                                    ; preds = %7715
  %7736 = fmul fast float %7731, 0x3FF7154760000000
  %7737 = call float @dx.op.unary.f32(i32 21, float %7736)  ; Exp(value)
  %7738 = fsub fast float 1.000000e+00, %7737
  %7739 = fmul fast float %7728, %7738
  %7740 = fsub fast float -0.000000e+00, %7739
  %7741 = fdiv fast float %7740, %7731
  br label %7742

; <label>:7742                                    ; preds = %7735, %7715
  %7743 = phi float [ %7737, %7735 ], [ 1.000000e+00, %7715 ]
  %7744 = phi float [ %7741, %7735 ], [ %7728, %7715 ]
  %7745 = fcmp fast une float %7732, 0.000000e+00
  br i1 %7745, label %7746, label %7753, !dx.controlflow.hints !163

; <label>:7746                                    ; preds = %7742
  %7747 = fmul fast float %7732, 0x3FF7154760000000
  %7748 = call float @dx.op.unary.f32(i32 21, float %7747)  ; Exp(value)
  %7749 = fsub fast float 1.000000e+00, %7748
  %7750 = fmul fast float %7729, %7749
  %7751 = fsub fast float -0.000000e+00, %7750
  %7752 = fdiv fast float %7751, %7732
  br label %7753

; <label>:7753                                    ; preds = %7746, %7742
  %7754 = phi float [ %7748, %7746 ], [ 1.000000e+00, %7742 ]
  %7755 = phi float [ %7752, %7746 ], [ %7729, %7742 ]
  %7756 = fcmp fast une float %7733, 0.000000e+00
  br i1 %7756, label %7757, label %7764, !dx.controlflow.hints !163

; <label>:7757                                    ; preds = %7753
  %7758 = fmul fast float %7733, 0x3FF7154760000000
  %7759 = call float @dx.op.unary.f32(i32 21, float %7758)  ; Exp(value)
  %7760 = fsub fast float 1.000000e+00, %7759
  %7761 = fmul fast float %7730, %7760
  %7762 = fsub fast float -0.000000e+00, %7761
  %7763 = fdiv fast float %7762, %7733
  br label %7764

; <label>:7764                                    ; preds = %7757, %7753
  %7765 = phi float [ %7759, %7757 ], [ 1.000000e+00, %7753 ]
  %7766 = phi float [ %7763, %7757 ], [ %7730, %7753 ]
  %7767 = fcmp fast ogt float %7663, %7665
  br i1 %7767, label %7768, label %7788

; <label>:7768                                    ; preds = %7764
  %7769 = fsub fast float 1.000000e+00, %7665
  %7770 = fmul fast float %7681, %7769
  %7771 = fmul fast float %7682, %7769
  %7772 = fmul fast float %7683, %7769
  %7773 = fmul fast float %7684, %7769
  %7774 = fcmp fast une float %7773, 0.000000e+00
  br i1 %7774, label %7775, label %7826, !dx.controlflow.hints !164

; <label>:7775                                    ; preds = %7768
  %7776 = fmul fast float %7773, 0x3FF7154760000000
  %7777 = call float @dx.op.unary.f32(i32 21, float %7776)  ; Exp(value)
  %7778 = fsub fast float 1.000000e+00, %7777
  %7779 = fmul fast float %7770, %7778
  %7780 = fsub fast float -0.000000e+00, %7779
  %7781 = fmul fast float %7771, %7778
  %7782 = fsub fast float -0.000000e+00, %7781
  %7783 = fmul fast float %7772, %7778
  %7784 = fsub fast float -0.000000e+00, %7783
  %7785 = fdiv fast float %7780, %7773
  %7786 = fdiv fast float %7782, %7773
  %7787 = fdiv fast float %7784, %7773
  br label %7826

; <label>:7788                                    ; preds = %7764
  %7789 = fsub fast float 1.000000e+00, %7663
  %7790 = fmul fast float %7694, %7789
  %7791 = fmul fast float %7705, %7789
  %7792 = fmul fast float %7716, %7789
  %7793 = fmul fast float %7695, %7789
  %7794 = fmul fast float %7706, %7789
  %7795 = fmul fast float %7717, %7789
  %7796 = fcmp fast une float %7793, 0.000000e+00
  br i1 %7796, label %7797, label %7804, !dx.controlflow.hints !163

; <label>:7797                                    ; preds = %7788
  %7798 = fmul fast float %7793, 0x3FF7154760000000
  %7799 = call float @dx.op.unary.f32(i32 21, float %7798)  ; Exp(value)
  %7800 = fsub fast float 1.000000e+00, %7799
  %7801 = fmul fast float %7790, %7800
  %7802 = fsub fast float -0.000000e+00, %7801
  %7803 = fdiv fast float %7802, %7793
  br label %7804

; <label>:7804                                    ; preds = %7797, %7788
  %7805 = phi float [ %7803, %7797 ], [ %7790, %7788 ]
  %7806 = phi float [ %7799, %7797 ], [ 1.000000e+00, %7788 ]
  %7807 = fcmp fast une float %7794, 0.000000e+00
  br i1 %7807, label %7808, label %7815, !dx.controlflow.hints !163

; <label>:7808                                    ; preds = %7804
  %7809 = fmul fast float %7794, 0x3FF7154760000000
  %7810 = call float @dx.op.unary.f32(i32 21, float %7809)  ; Exp(value)
  %7811 = fsub fast float 1.000000e+00, %7810
  %7812 = fmul fast float %7791, %7811
  %7813 = fsub fast float -0.000000e+00, %7812
  %7814 = fdiv fast float %7813, %7794
  br label %7815

; <label>:7815                                    ; preds = %7808, %7804
  %7816 = phi float [ %7814, %7808 ], [ %7791, %7804 ]
  %7817 = phi float [ %7810, %7808 ], [ 1.000000e+00, %7804 ]
  %7818 = fcmp fast une float %7795, 0.000000e+00
  br i1 %7818, label %7819, label %7826, !dx.controlflow.hints !163

; <label>:7819                                    ; preds = %7815
  %7820 = fmul fast float %7795, 0x3FF7154760000000
  %7821 = call float @dx.op.unary.f32(i32 21, float %7820)  ; Exp(value)
  %7822 = fsub fast float 1.000000e+00, %7821
  %7823 = fmul fast float %7792, %7822
  %7824 = fsub fast float -0.000000e+00, %7823
  %7825 = fdiv fast float %7824, %7795
  br label %7826

; <label>:7826                                    ; preds = %7819, %7815, %7775, %7768
  %7827 = phi float [ %7825, %7819 ], [ %7787, %7775 ], [ %7772, %7768 ], [ %7792, %7815 ]
  %7828 = phi float [ %7816, %7819 ], [ %7786, %7775 ], [ %7771, %7768 ], [ %7816, %7815 ]
  %7829 = phi float [ %7805, %7819 ], [ %7785, %7775 ], [ %7770, %7768 ], [ %7805, %7815 ]
  %7830 = phi float [ %7821, %7819 ], [ %7777, %7775 ], [ 1.000000e+00, %7768 ], [ 1.000000e+00, %7815 ]
  %7831 = phi float [ %7817, %7819 ], [ %7777, %7775 ], [ 1.000000e+00, %7768 ], [ %7817, %7815 ]
  %7832 = phi float [ %7806, %7819 ], [ %7777, %7775 ], [ 1.000000e+00, %7768 ], [ %7806, %7815 ]
  %7833 = fmul fast float %7832, %7744
  %7834 = fmul fast float %7831, %7755
  %7835 = fmul fast float %7830, %7766
  %7836 = fadd fast float %7833, %7829
  %7837 = fadd fast float %7834, %7828
  %7838 = fadd fast float %7835, %7827
  %7839 = fmul fast float %7832, %7743
  %7840 = fmul fast float %7831, %7754
  %7841 = fmul fast float %7830, %7765
  br label %7842

; <label>:7842                                    ; preds = %7826, %7637
  %7843 = phi float [ %7841, %7826 ], [ %7643, %7637 ]
  %7844 = phi float [ %7840, %7826 ], [ %7642, %7637 ]
  %7845 = phi float [ %7839, %7826 ], [ %7641, %7637 ]
  %7846 = phi float [ %7838, %7826 ], [ %7640, %7637 ]
  %7847 = phi float [ %7837, %7826 ], [ %7639, %7637 ]
  %7848 = phi float [ %7836, %7826 ], [ %7638, %7637 ]
  %7849 = fmul fast float %7848, %6794
  %7850 = fmul fast float %7847, %6794
  %7851 = fmul fast float %7846, %6794
  %7852 = fmul fast float %7845, %7085
  %7853 = call float @dx.op.dot3.f32(i32 55, float %7845, float %7844, float %7843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7854 = call float @dx.op.dot3.f32(i32 55, float %7849, float %7850, float %7851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7855 = select i1 %220, float %7853, float %7845
  %7856 = select i1 %220, float %7853, float %7844
  %7857 = select i1 %220, float 1.000000e+00, float %7843
  %7858 = select i1 %220, float %7854, float %7849
  %7859 = select i1 %220, float 0.000000e+00, float %7850
  %7860 = select i1 %220, float 0.000000e+00, float %7851
  %7861 = fmul fast float %7855, %7079
  %7862 = fmul fast float %7856, %7080
  %7863 = fmul fast float %7857, %7081
  %7864 = fadd fast float %7861, %7858
  %7865 = fadd fast float %7862, %7859
  %7866 = fadd fast float %7860, %7863
  %7867 = fmul fast float %7855, %7082
  %7868 = fmul fast float %7856, %7083
  %7869 = fmul fast float %7857, %7084
  %7870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7871 = extractvalue %dx.types.CBufRet.i32 %7870, 0
  %7872 = icmp eq i32 %7871, 0
  br i1 %7872, label %8240, label %7873, !dx.controlflow.hints !165

; <label>:7873                                    ; preds = %7842
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 2
  %7876 = extractvalue %dx.types.CBufRet.f32 %7874, 3
  %7877 = fmul fast float %7875, %95
  %7878 = fmul fast float %7876, %96
  %7879 = fmul fast float %7877, 2.000000e+00
  %7880 = fmul fast float %7878, 2.000000e+00
  %7881 = fsub fast float 1.000000e+00, %7879
  %7882 = fsub fast float 1.000000e+00, %7880
  %7883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7884 = extractvalue %dx.types.CBufRet.f32 %7883, 0
  %7885 = extractvalue %dx.types.CBufRet.f32 %7883, 1
  %7886 = extractvalue %dx.types.CBufRet.f32 %7883, 2
  %7887 = fmul fast float %7881, %7884
  %7888 = fmul fast float %7881, %7885
  %7889 = fmul fast float %7881, %7886
  %7890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7891 = extractvalue %dx.types.CBufRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.CBufRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.CBufRet.f32 %7890, 2
  %7894 = fmul fast float %7882, %7891
  %7895 = fmul fast float %7882, %7892
  %7896 = fmul fast float %7882, %7893
  %7897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7898 = extractvalue %dx.types.CBufRet.f32 %7897, 0
  %7899 = extractvalue %dx.types.CBufRet.f32 %7897, 1
  %7900 = extractvalue %dx.types.CBufRet.f32 %7897, 2
  %7901 = fadd fast float %7894, %7898
  %7902 = fadd fast float %7901, %7887
  %7903 = fadd fast float %7895, %7899
  %7904 = fadd fast float %7903, %7888
  %7905 = fadd fast float %7896, %7900
  %7906 = fadd fast float %7905, %7889
  %7907 = fmul fast float %7902, %7078
  %7908 = fmul fast float %7904, %7078
  %7909 = fmul fast float %7906, %7078
  %7910 = fmul fast float %7907, %7907
  %7911 = fmul fast float %7908, %7908
  %7912 = fadd fast float %7910, %7911
  %7913 = fmul fast float %7909, %7909
  %7914 = fadd fast float %7912, %7913
  %7915 = call float @dx.op.unary.f32(i32 24, float %7914)  ; Sqrt(value)
  %7916 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %7917 = fsub fast float %7915, %7916
  %7918 = extractvalue %dx.types.CBufRet.f32 %6805, 2
  %7919 = fmul fast float %7917, %7918
  %7920 = call float @dx.op.unary.f32(i32 7, float %7919)  ; Saturate(value)
  %7921 = fadd fast float %7920, -5.000000e-01
  %7922 = fmul fast float %7921, 2.000000e+00
  %7923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7924 = extractvalue %dx.types.CBufRet.f32 %7923, 2
  %7925 = call float @dx.op.binary.f32(i32 36, float %7924, float %7922)  ; FMin(a,b)
  %7926 = fsub fast float -0.000000e+00, %7924
  %7927 = fcmp fast ogt float %7925, %7926
  br i1 %7927, label %7928, label %8240, !dx.controlflow.hints !166

; <label>:7928                                    ; preds = %7873
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 3
  %7931 = fcmp fast ogt float %7930, 0.000000e+00
  br i1 %7931, label %7932, label %8007, !dx.controlflow.hints !167

; <label>:7932                                    ; preds = %7928
  %7933 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %7934 = extractvalue %dx.types.Dimensions %7933, 0
  %7935 = sitofp i32 %7934 to float
  %7936 = extractvalue %dx.types.Dimensions %7933, 1
  %7937 = sitofp i32 %7936 to float
  %7938 = fmul fast float %7877, %7935
  %7939 = fmul fast float %7878, %7937
  %7940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7941 = extractvalue %dx.types.CBufRet.f32 %7940, 1
  %7942 = fsub fast float -0.000000e+00, %7941
  %7943 = fptoui float %7942 to i32
  %7944 = fptoui float %7938 to i32
  %7945 = fptoui float %7939 to i32
  %7946 = and i32 %7943, 31
  %7947 = lshr i32 %7944, %7946
  %7948 = lshr i32 %7945, %7946
  %7949 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %7943, i32 %7947, i32 %7948, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7950 = extractvalue %dx.types.ResRet.f32 %7949, 0
  %7951 = fcmp fast olt float %7950, -1.000000e+00
  %7952 = fcmp fast ogt float %7950, -1.000000e+00
  %7953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7954 = extractvalue %dx.types.CBufRet.f32 %7953, 1
  %7955 = select i1 %7952, float %7954, float 1.000000e+00
  %7956 = fadd fast float %7950, 1.000000e+00
  %7957 = fmul fast float %7955, %7956
  %7958 = call float @dx.op.unary.f32(i32 6, float %7957)  ; FAbs(value)
  %7959 = extractvalue %dx.types.CBufRet.f32 %7953, 3
  %7960 = fcmp fast oge float %7958, %7959
  %7961 = select i1 %7960, float 0x4197782600000000, float %7958
  %7962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7963 = extractvalue %dx.types.CBufRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.CBufRet.f32 %7962, 1
  %7965 = extractvalue %dx.types.CBufRet.f32 %7962, 2
  %7966 = select i1 %7951, float %7963, float %7884
  %7967 = select i1 %7951, float %7964, float %7885
  %7968 = select i1 %7951, float %7965, float %7886
  %7969 = fmul fast float %7966, %7881
  %7970 = fmul fast float %7967, %7881
  %7971 = fmul fast float %7968, %7881
  %7972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7973 = extractvalue %dx.types.CBufRet.f32 %7972, 0
  %7974 = extractvalue %dx.types.CBufRet.f32 %7972, 1
  %7975 = extractvalue %dx.types.CBufRet.f32 %7972, 2
  %7976 = select i1 %7951, float %7973, float %7891
  %7977 = select i1 %7951, float %7974, float %7892
  %7978 = select i1 %7951, float %7975, float %7893
  %7979 = fmul fast float %7976, %7882
  %7980 = fmul fast float %7977, %7882
  %7981 = fmul fast float %7978, %7882
  %7982 = fadd fast float %7979, %7969
  %7983 = fadd fast float %7980, %7970
  %7984 = fadd fast float %7981, %7971
  %7985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7986 = extractvalue %dx.types.CBufRet.f32 %7985, 0
  %7987 = extractvalue %dx.types.CBufRet.f32 %7985, 1
  %7988 = extractvalue %dx.types.CBufRet.f32 %7985, 2
  %7989 = select i1 %7951, float %7986, float %7898
  %7990 = select i1 %7951, float %7987, float %7899
  %7991 = select i1 %7951, float %7988, float %7900
  %7992 = fadd fast float %7982, %7989
  %7993 = fadd fast float %7983, %7990
  %7994 = fadd fast float %7984, %7991
  %7995 = fmul fast float %7992, %7961
  %7996 = fmul fast float %7993, %7961
  %7997 = fmul fast float %7994, %7961
  %7998 = fmul fast float %7995, %7995
  %7999 = fmul fast float %7996, %7996
  %8000 = fadd fast float %7998, %7999
  %8001 = fmul fast float %7997, %7997
  %8002 = fadd fast float %8000, %8001
  %8003 = call float @dx.op.unary.f32(i32 24, float %8002)  ; Sqrt(value)
  %8004 = fsub fast float %8003, %7916
  %8005 = fmul fast float %8004, %7918
  %8006 = call float @dx.op.unary.f32(i32 7, float %8005)  ; Saturate(value)
  br label %8007

; <label>:8007                                    ; preds = %7932, %7928
  %8008 = phi float [ %8006, %7932 ], [ 1.000000e+00, %7928 ]
  %8009 = fmul fast float %7925, 5.000000e-01
  %8010 = fadd fast float %8009, 5.000000e-01
  %8011 = call float @dx.op.unary.f32(i32 22, float %8010)  ; Frc(value)
  %8012 = call float @dx.op.unary.f32(i32 27, float %8011)  ; Round_ni(value)
  %8013 = call float @dx.op.unary.f32(i32 22, float %8011)  ; Frc(value)
  %8014 = fmul fast float %8013, 2.000000e+00
  %8015 = fadd fast float %8014, -1.000000e+00
  %8016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %7877, float %7878, float %8012, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8017 = extractvalue %dx.types.ResRet.f32 %8016, 0
  %8018 = extractvalue %dx.types.ResRet.f32 %8016, 1
  %8019 = extractvalue %dx.types.ResRet.f32 %8016, 2
  %8020 = extractvalue %dx.types.ResRet.f32 %8016, 3
  %8021 = fadd fast float %8017, -5.000000e-01
  %8022 = fadd fast float %8019, -5.000000e-01
  %8023 = fmul fast float %8021, 0xBFD5555560000000
  %8024 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8022, float %8023)  ; FMad(a,b,c)
  %8025 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8018, float 0.000000e+00)  ; FMad(a,b,c)
  %8026 = fadd fast float %8025, %8020
  %8027 = fmul fast float %8021, -7.500000e-01
  %8028 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8022, float %8027)  ; FMad(a,b,c)
  %8029 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8018, float 0.000000e+00)  ; FMad(a,b,c)
  %8030 = fadd fast float %8029, %8020
  %8031 = call float @dx.op.binary.f32(i32 35, float %8024, float -1.000000e+00)  ; FMax(a,b)
  %8032 = call float @dx.op.binary.f32(i32 35, float %8026, float -1.000000e+00)  ; FMax(a,b)
  %8033 = call float @dx.op.binary.f32(i32 35, float %8028, float -1.000000e+00)  ; FMax(a,b)
  %8034 = call float @dx.op.binary.f32(i32 35, float %8030, float -1.000000e+00)  ; FMax(a,b)
  %8035 = call float @dx.op.binary.f32(i32 36, float %8031, float 1.000000e+00)  ; FMin(a,b)
  %8036 = call float @dx.op.binary.f32(i32 36, float %8032, float 1.000000e+00)  ; FMin(a,b)
  %8037 = call float @dx.op.binary.f32(i32 36, float %8033, float 1.000000e+00)  ; FMin(a,b)
  %8038 = call float @dx.op.binary.f32(i32 36, float %8034, float 1.000000e+00)  ; FMin(a,b)
  %8039 = fcmp fast olt float %8035, 0x3FEFFF8020000000
  br i1 %8039, label %8040, label %8155, !dx.controlflow.hints !168

; <label>:8040                                    ; preds = %8007
  %8041 = extractvalue %dx.types.CBufRet.f32 %7923, 3
  %8042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8043 = extractvalue %dx.types.CBufRet.f32 %8042, 0
  %8044 = extractvalue %dx.types.CBufRet.f32 %8042, 1
  %8045 = extractvalue %dx.types.CBufRet.f32 %8042, 2
  %8046 = extractvalue %dx.types.CBufRet.f32 %8042, 3
  %8047 = fsub fast float %8043, %8035
  %8048 = fsub fast float %8044, %8036
  %8049 = fsub fast float %8045, %8037
  %8050 = fsub fast float %8046, %8038
  %8051 = fmul fast float %8047, %8041
  %8052 = fmul fast float %8048, %8041
  %8053 = fmul fast float %8049, %8041
  %8054 = fmul fast float %8050, %8041
  %8055 = fadd fast float %8051, %8035
  %8056 = fadd fast float %8052, %8036
  %8057 = fsub fast float -0.000000e+00, %8056
  %8058 = fadd fast float %8053, %8037
  %8059 = fadd fast float %8054, %8038
  %8060 = fmul fast float %8055, %8055
  %8061 = fsub fast float %8056, %8060
  %8062 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8061)  ; FMax(a,b)
  %8063 = fdiv fast float 1.000000e+00, %8062
  %8064 = fmul fast float %8056, %8055
  %8065 = fsub fast float %8058, %8064
  %8066 = fsub fast float %8015, %8055
  %8067 = fmul fast float %8015, %8015
  %8068 = fsub fast float %8067, %8056
  %8069 = fmul fast float %8066, %8063
  %8070 = fmul fast float %8069, %8065
  %8071 = fsub fast float %8068, %8070
  %8072 = fmul fast float %8056, %8056
  %8073 = fsub fast float %8059, %8072
  %8074 = fmul fast float %8065, %8065
  %8075 = fmul fast float %8074, %8063
  %8076 = fsub fast float %8073, %8075
  %8077 = fdiv fast float %8071, %8076
  %8078 = fmul fast float %8065, %8077
  %8079 = fsub fast float %8066, %8078
  %8080 = fmul fast float %8079, %8063
  %8081 = fmul fast float %8080, %8055
  %8082 = fsub fast float 1.000000e+00, %8081
  %8083 = fmul fast float %8056, %8077
  %8084 = fsub fast float %8082, %8083
  %8085 = fmul fast float %8080, %8080
  %8086 = fmul fast float %8077, 4.000000e+00
  %8087 = fmul fast float %8086, %8084
  %8088 = fsub fast float %8085, %8087
  %8089 = call float @dx.op.unary.f32(i32 24, float %8088)  ; Sqrt(value)
  %8090 = fcmp fast oge float %8080, 0.000000e+00
  %8091 = fsub fast float -0.000000e+00, %8089
  %8092 = select i1 %8090, float %8091, float %8089
  %8093 = fsub fast float %8092, %8080
  %8094 = fdiv fast float %8093, %8077
  %8095 = fdiv fast float %8084, %8093
  %8096 = fmul fast float %8094, 5.000000e-01
  %8097 = fmul fast float %8095, 2.000000e+00
  %8098 = select i1 %8090, float %8096, float %8097
  %8099 = select i1 %8090, float %8097, float %8096
  %8100 = call float @dx.op.binary.f32(i32 35, float %8098, float %8099)  ; FMax(a,b)
  %8101 = call float @dx.op.binary.f32(i32 36, float %8098, float %8099)  ; FMin(a,b)
  %8102 = fcmp fast ogt float %8015, %8101
  br i1 %8102, label %8103, label %8113

; <label>:8103                                    ; preds = %8040
  %8104 = fsub fast float %8015, %8101
  %8105 = fsub fast float %8100, %8101
  %8106 = fmul fast float %8104, %8105
  %8107 = fmul fast float %8100, %8015
  %8108 = fadd fast float %8100, %8015
  %8109 = fmul fast float %8108, %8055
  %8110 = fadd fast float %8107, %8056
  %8111 = fsub fast float %8110, %8109
  %8112 = fdiv fast float %8111, %8106
  br label %8113

; <label>:8113                                    ; preds = %8103, %8040
  %8114 = phi float [ %8112, %8103 ], [ 0.000000e+00, %8040 ]
  %8115 = fcmp fast ogt float %8015, %8100
  %8116 = fsub fast float %8015, %8100
  br i1 %8115, label %8117, label %8127

; <label>:8117                                    ; preds = %8113
  %8118 = fsub fast float %8100, %8101
  %8119 = fmul fast float %8118, %8116
  %8120 = fmul fast float %8101, %8015
  %8121 = fadd fast float %8101, %8015
  %8122 = fmul fast float %8121, %8055
  %8123 = fsub fast float %8057, %8120
  %8124 = fadd fast float %8123, %8122
  %8125 = fdiv fast float %8124, %8119
  %8126 = fadd fast float %8125, %8114
  br label %8127

; <label>:8127                                    ; preds = %8117, %8113
  %8128 = phi float [ %8126, %8117 ], [ %8114, %8113 ]
  %8129 = fsub fast float %8015, %8101
  %8130 = fmul fast float %8129, %8116
  %8131 = fmul fast float %8101, %8100
  %8132 = fadd fast float %8101, %8100
  %8133 = fmul fast float %8132, %8055
  %8134 = fadd fast float %8131, %8056
  %8135 = fsub fast float %8134, %8133
  %8136 = fdiv fast float %8135, %8130
  %8137 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  %8138 = fcmp fast oeq float %6806, 0.000000e+00
  %8139 = extractvalue %dx.types.CBufRet.f32 %7923, 0
  %8140 = fcmp fast oeq float %8139, 0.000000e+00
  %8141 = or i1 %8138, %8140
  %8142 = fmul fast float %8139, 2.000000e+00
  %8143 = fadd fast float %7924, %7925
  %8144 = fdiv fast float %8143, %8142
  %8145 = call float @dx.op.unary.f32(i32 7, float %8144)  ; Saturate(value)
  %8146 = fmul fast float %8145, 2.000000e+00
  %8147 = fsub fast float 3.000000e+00, %8146
  %8148 = fmul fast float %8145, %8145
  %8149 = fmul fast float %8148, %8147
  %8150 = select i1 %8141, float 1.000000e+00, float %8149
  %8151 = fmul fast float %8136, %6806
  %8152 = fadd fast float %8137, %8151
  %8153 = call float @dx.op.unary.f32(i32 7, float %8152)  ; Saturate(value)
  %8154 = fmul fast float %8150, %8153
  br label %8155

; <label>:8155                                    ; preds = %8127, %8007
  %8156 = phi float [ %8154, %8127 ], [ 0.000000e+00, %8007 ]
  %8157 = fsub fast float 1.000000e+00, %8156
  %8158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %7877, float %7878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8159 = extractvalue %dx.types.ResRet.f32 %8158, 0
  %8160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.i32 %8160, 2
  %8162 = icmp eq i32 %8161, 0
  br i1 %8162, label %8168, label %8163

; <label>:8163                                    ; preds = %8155
  %8164 = call float @dx.op.unary.f32(i32 7, float %8156)  ; Saturate(value)
  %8165 = fadd fast float %8159, -1.000000e+00
  %8166 = fmul fast float %8164, %8165
  %8167 = fadd fast float %8166, 1.000000e+00
  br label %8168

; <label>:8168                                    ; preds = %8163, %8155
  %8169 = phi float [ %8167, %8163 ], [ %8157, %8155 ]
  br i1 %7931, label %8170, label %8188

; <label>:8170                                    ; preds = %8168
  %8171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8171, 1
  %8173 = fsub fast float %8008, %8172
  %8174 = call float @dx.op.unary.f32(i32 7, float %8173)  ; Saturate(value)
  %8175 = fsub fast float %8008, %7930
  %8176 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  %8177 = fsub fast float %8174, %8176
  %8178 = fsub fast float %8010, %8176
  %8179 = fdiv fast float %8178, %8177
  %8180 = call float @dx.op.unary.f32(i32 7, float %8179)  ; Saturate(value)
  %8181 = fmul fast float %8180, 2.000000e+00
  %8182 = fsub fast float 3.000000e+00, %8181
  %8183 = fsub fast float %8159, %8169
  %8184 = fmul fast float %8180, %8180
  %8185 = fmul fast float %8184, %8183
  %8186 = fmul fast float %8185, %8182
  %8187 = fadd fast float %8186, %8169
  br label %8188

; <label>:8188                                    ; preds = %8170, %8168
  %8189 = phi float [ %8187, %8170 ], [ %8169, %8168 ]
  %8190 = call float @dx.op.binary.f32(i32 35, float %8159, float %8189)  ; FMax(a,b)
  %8191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8192 = extractvalue %dx.types.CBufRet.i32 %8191, 2
  %8193 = and i32 %8192, 1
  %8194 = icmp eq i32 %8193, 0
  %8195 = fcmp fast une float %8190, 1.000000e+00
  %8196 = and i1 %8195, %8194
  br i1 %8196, label %8197, label %8216

; <label>:8197                                    ; preds = %8188
  %8198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %7877, float %7878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8199 = extractvalue %dx.types.ResRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.ResRet.f32 %8198, 1
  %8201 = extractvalue %dx.types.ResRet.f32 %8198, 2
  %8202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8202, 1
  %8204 = fmul fast float %8203, %8199
  %8205 = fmul fast float %8203, %8200
  %8206 = fmul fast float %8203, %8201
  %8207 = fcmp fast ogt float %8159, 0x3FEFFF2E40000000
  %8208 = fsub fast float 1.000000e+00, %8190
  %8209 = fsub fast float 1.000000e+00, %8159
  %8210 = fdiv fast float %8208, %8209
  %8211 = call float @dx.op.unary.f32(i32 7, float %8210)  ; Saturate(value)
  %8212 = select i1 %8207, float 0.000000e+00, float %8211
  %8213 = fmul fast float %8204, %8212
  %8214 = fmul fast float %8205, %8212
  %8215 = fmul fast float %8206, %8212
  br label %8216

; <label>:8216                                    ; preds = %8197, %8188
  %8217 = phi float [ 0.000000e+00, %8188 ], [ %8213, %8197 ]
  %8218 = phi float [ 0.000000e+00, %8188 ], [ %8214, %8197 ]
  %8219 = phi float [ 0.000000e+00, %8188 ], [ %8215, %8197 ]
  %8220 = fmul fast float %8217, %6794
  %8221 = fmul fast float %8218, %6794
  %8222 = fmul fast float %8219, %6794
  %8223 = fmul fast float %8190, %7852
  %8224 = call float @dx.op.dot3.f32(i32 55, float %8190, float %8190, float %8190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8225 = call float @dx.op.dot3.f32(i32 55, float %8220, float %8221, float %8222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8226 = select i1 %220, float %8224, float %8190
  %8227 = select i1 %220, float 1.000000e+00, float %8190
  %8228 = select i1 %220, float %8225, float %8220
  %8229 = select i1 %220, float 0.000000e+00, float %8221
  %8230 = select i1 %220, float 0.000000e+00, float %8222
  %8231 = fmul fast float %8226, %7864
  %8232 = fmul fast float %8226, %7865
  %8233 = fmul fast float %8227, %7866
  %8234 = fadd fast float %8231, %8228
  %8235 = fadd fast float %8232, %8229
  %8236 = fadd fast float %8230, %8233
  %8237 = fmul fast float %8226, %7867
  %8238 = fmul fast float %8226, %7868
  %8239 = fmul fast float %8227, %7869
  br label %8240

; <label>:8240                                    ; preds = %8216, %7873, %7842, %7074
  %8241 = phi float [ %7079, %7074 ], [ %7864, %7842 ], [ %8234, %8216 ], [ %7864, %7873 ]
  %8242 = phi float [ %7080, %7074 ], [ %7865, %7842 ], [ %8235, %8216 ], [ %7865, %7873 ]
  %8243 = phi float [ %7081, %7074 ], [ %7866, %7842 ], [ %8236, %8216 ], [ %7866, %7873 ]
  %8244 = phi float [ %7082, %7074 ], [ %7867, %7842 ], [ %8237, %8216 ], [ %7867, %7873 ]
  %8245 = phi float [ %7083, %7074 ], [ %7868, %7842 ], [ %8238, %8216 ], [ %7868, %7873 ]
  %8246 = phi float [ %7084, %7074 ], [ %7869, %7842 ], [ %8239, %8216 ], [ %7869, %7873 ]
  %8247 = phi float [ %7085, %7074 ], [ %7852, %7842 ], [ %8223, %8216 ], [ %7852, %7873 ]
  %8248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8249 = extractvalue %dx.types.CBufRet.f32 %8248, 2
  %8250 = extractvalue %dx.types.CBufRet.f32 %8248, 3
  %8251 = fmul fast float %8249, %95
  %8252 = fmul fast float %8250, %96
  %8253 = call float @dx.op.unary.f32(i32 7, float %8251)  ; Saturate(value)
  %8254 = call float @dx.op.unary.f32(i32 7, float %8252)  ; Saturate(value)
  %8255 = select i1 %6816, i32 2, i32 0
  %8256 = or i32 %8255, 1
  %8257 = uitofp i32 %8256 to float
  %8258 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8253, float %8254, float %8257, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8259 = extractvalue %dx.types.ResRet.f32 %8258, 0
  %8260 = extractvalue %dx.types.ResRet.f32 %8258, 1
  %8261 = extractvalue %dx.types.ResRet.f32 %8258, 2
  %8262 = extractvalue %dx.types.ResRet.f32 %8258, 3
  %8263 = add nuw nsw i32 %8255, 2
  %8264 = uitofp i32 %8263 to float
  %8265 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8253, float %8254, float %8264, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8266 = extractvalue %dx.types.ResRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.ResRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.ResRet.f32 %8265, 2
  %8269 = extractvalue %dx.types.ResRet.f32 %8265, 3
  %8270 = call float @dx.op.binary.f32(i32 35, float %8260, float %8261)  ; FMax(a,b)
  %8271 = call float @dx.op.binary.f32(i32 35, float %8259, float %8270)  ; FMax(a,b)
  %8272 = call float @dx.op.binary.f32(i32 35, float %8271, float %8262)  ; FMax(a,b)
  %8273 = call float @dx.op.binary.f32(i32 36, float %8267, float %8268)  ; FMin(a,b)
  %8274 = call float @dx.op.binary.f32(i32 36, float %8266, float %8273)  ; FMin(a,b)
  %8275 = call float @dx.op.binary.f32(i32 36, float %8274, float %8269)  ; FMin(a,b)
  %8276 = fmul fast float %8272, 2.550000e+02
  %8277 = fadd fast float %8276, 0x3F70101020000000
  %8278 = fptoui float %8277 to i32
  %8279 = fmul fast float %8275, 2.550000e+02
  %8280 = fadd fast float %8279, 0x3F70101020000000
  %8281 = fptoui float %8280 to i32
  %8282 = icmp ult i32 %8278, %8281
  br i1 %8282, label %8283, label %8452

; <label>:8283                                    ; preds = %8240
  %8284 = fcmp fast ogt float %85, 9.843750e-01
  %8285 = fadd fast float %7078, -4.000000e+00
  %8286 = select i1 %8284, float -4.000000e+00, float %8285
  %8287 = call float @dx.op.binary.f32(i32 35, float %8286, float 0.000000e+00)  ; FMax(a,b)
  %8288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8288, 0
  %8290 = fadd fast float %8289, %8287
  %8291 = extractvalue %dx.types.CBufRet.f32 %8288, 2
  %8292 = fmul fast float %8290, %8291
  %8293 = call float @dx.op.unary.f32(i32 23, float %8292)  ; Log(value)
  %8294 = extractvalue %dx.types.CBufRet.f32 %8288, 3
  %8295 = fmul fast float %8294, %8293
  %8296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8296, 2
  %8298 = fmul fast float %8295, %8297
  %8299 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8300 = uitofp i32 %8278 to float
  %8301 = uitofp i32 %8281 to float
  %8302 = fadd fast float %8300, 5.000000e-01
  %8303 = fadd fast float %8301, 5.000000e-01
  %8304 = fmul fast float %8297, %8302
  %8305 = fmul fast float %8297, %8303
  %8306 = fadd fast float %8304, 0x3F0FFB4800000000
  %8307 = fadd fast float %8305, 0xBF0FFB4800000000
  %8308 = call float @dx.op.binary.f32(i32 35, float %8299, float %8306)  ; FMax(a,b)
  %8309 = call float @dx.op.binary.f32(i32 36, float %8308, float %8307)  ; FMin(a,b)
  %8310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8311 = extractvalue %dx.types.CBufRet.f32 %8310, 1
  %8312 = extractvalue %dx.types.CBufRet.f32 %8310, 2
  %8313 = extractvalue %dx.types.CBufRet.f32 %8310, 0
  %8314 = select i1 %6816, float %8313, float 0.000000e+00
  %8315 = fmul fast float %8311, %8309
  %8316 = fadd fast float %8314, %8315
  %8317 = fadd fast float %8314, %8312
  %8318 = fsub fast float %8311, %8312
  %8319 = fadd fast float %8318, %8314
  %8320 = call float @dx.op.binary.f32(i32 35, float %8316, float %8317)  ; FMax(a,b)
  %8321 = call float @dx.op.binary.f32(i32 36, float %8320, float %8319)  ; FMin(a,b)
  %8322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8253, float %8254, float %8321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8323 = extractvalue %dx.types.ResRet.f32 %8322, 0
  %8324 = extractvalue %dx.types.ResRet.f32 %8322, 1
  %8325 = extractvalue %dx.types.ResRet.f32 %8322, 2
  %8326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8327 = extractvalue %dx.types.CBufRet.i32 %8326, 0
  %8328 = extractvalue %dx.types.CBufRet.i32 %8326, 1
  %8329 = uitofp i32 %8327 to float
  %8330 = uitofp i32 %8328 to float
  %8331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8332 = extractvalue %dx.types.CBufRet.f32 %8331, 0
  %8333 = extractvalue %dx.types.CBufRet.f32 %8331, 1
  %8334 = fmul fast float %8329, %8253
  %8335 = fmul fast float %8330, %8254
  %8336 = fadd fast float %8334, -5.000000e-01
  %8337 = fadd fast float %8335, -5.000000e-01
  %8338 = call float @dx.op.unary.f32(i32 22, float %8336)  ; Frc(value)
  %8339 = call float @dx.op.unary.f32(i32 22, float %8337)  ; Frc(value)
  %8340 = fmul fast float %8338, %8338
  %8341 = fmul fast float %8340, %8338
  %8342 = fsub fast float 3.000000e+00, %8338
  %8343 = fmul fast float %8340, %8342
  %8344 = fmul fast float %8338, 3.000000e+00
  %8345 = fmul fast float %8341, 3.000000e+00
  %8346 = fmul fast float %8340, 6.000000e+00
  %8347 = fsub fast float %8345, %8346
  %8348 = fadd fast float %8347, 4.000000e+00
  %8349 = fmul fast float %8348, 0x3FC5555560000000
  %8350 = fmul fast float %8341, -3.000000e+00
  %8351 = fadd fast float %8340, %8338
  %8352 = fmul fast float %8351, 3.000000e+00
  %8353 = fadd fast float %8350, 1.000000e+00
  %8354 = fadd fast float %8353, %8352
  %8355 = fmul fast float %8341, 0x3FC5555560000000
  %8356 = fmul fast float %8339, %8339
  %8357 = fmul fast float %8356, %8339
  %8358 = fsub fast float 3.000000e+00, %8339
  %8359 = fmul fast float %8356, %8358
  %8360 = fmul fast float %8339, 3.000000e+00
  %8361 = fmul fast float %8357, 3.000000e+00
  %8362 = fmul fast float %8356, 6.000000e+00
  %8363 = fsub fast float %8361, %8362
  %8364 = fadd fast float %8363, 4.000000e+00
  %8365 = fmul fast float %8364, 0x3FC5555560000000
  %8366 = fmul fast float %8357, -3.000000e+00
  %8367 = fadd fast float %8356, %8339
  %8368 = fmul fast float %8367, 3.000000e+00
  %8369 = fadd fast float %8366, 1.000000e+00
  %8370 = fadd fast float %8369, %8368
  %8371 = fmul fast float %8357, 0x3FC5555560000000
  %8372 = fadd fast float %8338, 1.000000e+00
  %8373 = fsub fast float 1.000000e+00, %8344
  %8374 = fadd fast float %8373, %8343
  %8375 = fadd fast float %8374, %8348
  %8376 = fmul fast float %8375, 0x3FC5555560000000
  %8377 = fdiv fast float %8349, %8376
  %8378 = fsub fast float %8372, %8377
  %8379 = fsub fast float 1.000000e+00, %8338
  %8380 = fadd fast float %8354, %8341
  %8381 = fmul fast float %8380, 0x3FC5555560000000
  %8382 = fdiv fast float %8355, %8381
  %8383 = fadd fast float %8379, %8382
  %8384 = fadd fast float %8339, 1.000000e+00
  %8385 = fsub fast float 1.000000e+00, %8360
  %8386 = fadd fast float %8385, %8359
  %8387 = fadd fast float %8386, %8364
  %8388 = fmul fast float %8387, 0x3FC5555560000000
  %8389 = fdiv fast float %8365, %8388
  %8390 = fsub fast float %8384, %8389
  %8391 = fsub fast float 1.000000e+00, %8339
  %8392 = fadd fast float %8370, %8357
  %8393 = fmul fast float %8392, 0x3FC5555560000000
  %8394 = fdiv fast float %8371, %8393
  %8395 = fadd fast float %8394, %8391
  %8396 = fmul fast float %8378, %8332
  %8397 = fsub fast float %8253, %8396
  %8398 = fmul fast float %8383, %8332
  %8399 = fadd fast float %8398, %8253
  %8400 = fmul fast float %8395, %8333
  %8401 = fadd fast float %8400, %8254
  %8402 = fmul fast float %8390, %8333
  %8403 = fsub fast float %8254, %8402
  %8404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8397, float %8403, float %8321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8405 = extractvalue %dx.types.ResRet.f32 %8404, 0
  %8406 = extractvalue %dx.types.ResRet.f32 %8404, 1
  %8407 = extractvalue %dx.types.ResRet.f32 %8404, 2
  %8408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8399, float %8403, float %8321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8409 = extractvalue %dx.types.ResRet.f32 %8408, 0
  %8410 = extractvalue %dx.types.ResRet.f32 %8408, 1
  %8411 = extractvalue %dx.types.ResRet.f32 %8408, 2
  %8412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8397, float %8401, float %8321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8413 = extractvalue %dx.types.ResRet.f32 %8412, 0
  %8414 = extractvalue %dx.types.ResRet.f32 %8412, 1
  %8415 = extractvalue %dx.types.ResRet.f32 %8412, 2
  %8416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8399, float %8401, float %8321, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8417 = extractvalue %dx.types.ResRet.f32 %8416, 0
  %8418 = extractvalue %dx.types.ResRet.f32 %8416, 1
  %8419 = extractvalue %dx.types.ResRet.f32 %8416, 2
  %8420 = fsub fast float %8413, %8405
  %8421 = fsub fast float %8414, %8406
  %8422 = fsub fast float %8415, %8407
  %8423 = fmul fast float %8420, %8393
  %8424 = fmul fast float %8421, %8393
  %8425 = fmul fast float %8422, %8393
  %8426 = fadd fast float %8423, %8405
  %8427 = fadd fast float %8424, %8406
  %8428 = fadd fast float %8425, %8407
  %8429 = fsub fast float %8417, %8409
  %8430 = fsub fast float %8418, %8410
  %8431 = fsub fast float %8419, %8411
  %8432 = fmul fast float %8429, %8393
  %8433 = fmul fast float %8430, %8393
  %8434 = fmul fast float %8431, %8393
  %8435 = fsub fast float %8409, %8426
  %8436 = fadd fast float %8435, %8432
  %8437 = fsub fast float %8410, %8427
  %8438 = fadd fast float %8437, %8433
  %8439 = fsub fast float %8411, %8428
  %8440 = fadd fast float %8439, %8434
  %8441 = fmul fast float %8436, %8381
  %8442 = fmul fast float %8438, %8381
  %8443 = fmul fast float %8440, %8381
  %8444 = fadd fast float %8441, %8426
  %8445 = fadd fast float %8442, %8427
  %8446 = fadd fast float %8443, %8428
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 1
  %8449 = fmul fast float %8444, %8448
  %8450 = fmul fast float %8445, %8448
  %8451 = fmul fast float %8446, %8448
  br label %8452

; <label>:8452                                    ; preds = %8283, %8240
  %8453 = phi float [ %8323, %8283 ], [ 1.000000e+00, %8240 ]
  %8454 = phi float [ %8324, %8283 ], [ 1.000000e+00, %8240 ]
  %8455 = phi float [ %8325, %8283 ], [ 1.000000e+00, %8240 ]
  %8456 = phi float [ %8449, %8283 ], [ 0.000000e+00, %8240 ]
  %8457 = phi float [ %8450, %8283 ], [ 0.000000e+00, %8240 ]
  %8458 = phi float [ %8451, %8283 ], [ 0.000000e+00, %8240 ]
  %8459 = fmul fast float %8456, %6794
  %8460 = fmul fast float %8457, %6794
  %8461 = fmul fast float %8458, %6794
  %8462 = fmul fast float %8453, %8247
  %8463 = call float @dx.op.dot3.f32(i32 55, float %8453, float %8454, float %8455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8464 = call float @dx.op.dot3.f32(i32 55, float %8459, float %8460, float %8461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8465 = select i1 %220, float %8463, float %8453
  %8466 = select i1 %220, float %8463, float %8454
  %8467 = select i1 %220, float 1.000000e+00, float %8455
  %8468 = select i1 %220, float %8464, float %8459
  %8469 = select i1 %220, float 0.000000e+00, float %8460
  %8470 = select i1 %220, float 0.000000e+00, float %8461
  %8471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8472 = extractvalue %dx.types.CBufRet.i32 %8471, 3
  %8473 = and i32 %8472, 3
  %8474 = icmp ne i32 %8473, 0
  %8475 = and i32 %8472, 4
  %8476 = icmp ne i32 %8475, 0
  %8477 = and i1 %8474, %8476
  %8478 = and i1 %220, %8477
  br i1 %8478, label %8479, label %8485

; <label>:8479                                    ; preds = %8452
  %8480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8480, 1
  %8482 = fadd fast float %8462, -1.000000e+00
  %8483 = fmul fast float %8481, %8482
  %8484 = fadd fast float %8483, 1.000000e+00
  br label %8485

; <label>:8485                                    ; preds = %8479, %8452
  %8486 = phi float [ %8484, %8479 ], [ %8462, %8452 ]
  %8487 = fadd fast float %8244, %8241
  %8488 = fmul fast float %8465, %8487
  %8489 = fadd fast float %8488, %8468
  %8490 = fadd fast float %8245, %8242
  %8491 = fmul fast float %8466, %8490
  %8492 = fadd fast float %8491, %8469
  %8493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.f32 %8493, 0
  br i1 %220, label %8495, label %8518

; <label>:8495                                    ; preds = %8485
  %8496 = fadd fast float %8489, %8492
  %8497 = fmul fast float %8494, %8496
  %8498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8498, 3
  %8500 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %8501 = fsub fast float %6803, %6797
  %8502 = fadd fast float %8501, %6804
  %8503 = fsub fast float %8502, %8500
  %8504 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %8505 = fmul fast float %8503, %8504
  %8506 = call float @dx.op.unary.f32(i32 7, float %8505)  ; Saturate(value)
  %8507 = fsub fast float %8506, %8499
  %8508 = fmul fast float %8507, %8486
  %8509 = fadd fast float %8508, %8499
  %8510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8511 = extractvalue %dx.types.CBufRet.f32 %8510, 0
  %8512 = fsub fast float %8509, %8511
  %8513 = fmul fast float %8512, 1.000000e+01
  %8514 = call float @dx.op.unary.f32(i32 7, float %8513)  ; Saturate(value)
  %8515 = fmul fast float %8514, %6793
  %8516 = fadd fast float %8515, %6794
  %8517 = fmul fast float %8516, %8509
  br label %8542

; <label>:8518                                    ; preds = %8485
  %8519 = fadd fast float %8246, %8243
  %8520 = fmul fast float %8467, %8519
  %8521 = fadd fast float %8520, %8470
  %8522 = fmul fast float %8494, %8489
  %8523 = fmul fast float %8494, %8492
  %8524 = fmul fast float %8494, %8521
  %8525 = call float @dx.op.binary.f32(i32 35, float %8523, float %8524)  ; FMax(a,b)
  %8526 = call float @dx.op.binary.f32(i32 35, float %8522, float %8525)  ; FMax(a,b)
  %8527 = call float @dx.op.binary.f32(i32 35, float %8526, float %6794)  ; FMax(a,b)
  %8528 = fcmp fast ugt float %8527, 0x3F10000000000000
  br i1 %8528, label %8530, label %8529

; <label>:8529                                    ; preds = %8518
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8530

; <label>:8530                                    ; preds = %8529, %8518
  %8531 = add i32 %54, 356
  %8532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8531, i32 undef)  ; BufferLoad(srv,index,wot)
  %8533 = extractvalue %dx.types.ResRet.i32 %8532, 0
  %8534 = and i32 %8533, 32
  %8535 = icmp eq i32 %8534, 0
  br i1 %8535, label %8542, label %8536

; <label>:8536                                    ; preds = %8530
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 0
  %8539 = fmul fast float %8538, 0x3FE99999A0000000
  %8540 = fadd fast float %8538, %8522
  %8541 = fadd fast float %8539, %8524
  br label %8542

; <label>:8542                                    ; preds = %8536, %8530, %8495
  %8543 = phi float [ %8497, %8495 ], [ %8540, %8536 ], [ %8522, %8530 ]
  %8544 = phi float [ %8517, %8495 ], [ %8523, %8536 ], [ %8523, %8530 ]
  %8545 = phi float [ %8516, %8495 ], [ %8541, %8536 ], [ %8524, %8530 ]
  %8546 = phi float [ %8516, %8495 ], [ %6794, %8536 ], [ %6794, %8530 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8547 = call float @dx.op.binary.f32(i32 36, float %8543, float 3.225500e+04)  ; FMin(a,b)
  %8548 = call float @dx.op.binary.f32(i32 36, float %8544, float 3.225500e+04)  ; FMin(a,b)
  %8549 = call float @dx.op.binary.f32(i32 36, float %8545, float 3.225500e+04)  ; FMin(a,b)
  %8550 = call float @dx.op.binary.f32(i32 36, float %8546, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

