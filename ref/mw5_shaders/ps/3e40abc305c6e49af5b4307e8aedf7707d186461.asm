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
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyz 
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; PACKED_TRI_DATA          0   xyzw       13     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0b1606ecc67513c8cbf1e538c5d3db21
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
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; DECAL_VOLUME_GRID_INDEX     0        nointerpolation       
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
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t18,space1     1
;                                   texture    byte         r/o      T8     t19,space1     1
;                                   texture    byte         r/o      T9     t20,space1     1
;                                   texture    byte         r/o     T10     t21,space1     1
;                                   texture     f32          2d     T11     t37,space2     1
;                                   texture     f32          2d     T12             t0     1
;                                   texture     f32          2d     T13     t58,space2     1
;                                   texture     f32          2d     T14     t59,space2     1
;                                   texture     f32          2d     T15     t60,space2     1
;                                   texture    byte         r/o     T16     t45,space1     1
;                                   texture    byte         r/o     T17     t46,space1     1
;                                   texture    byte         r/o     T18     t47,space1     1
;                                   texture    byte         r/o     T19     t48,space1     1
;                                   texture     f32          2d     T20     t57,space2     1
;                                   texture    byte         r/o     T21     t69,space1     1
;                                   texture     u32          2d     T22     t56,space2     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture    byte         r/o     T24     t10,space1     1
;                                   texture    byte         r/o     T25      t1,space1     1
;                                   texture     f32          1d     T26     t32,space2     1
;                                   texture     f32     2darray     T27      t8,space2     1
;                                   texture     f32          2d     T28      t1,space2     1
;                                   texture     f32          2d     T29      t2,space2     1
;                                   texture     f32          2d     T30      t3,space2     1
;                                   texture     f32          2d     T31      t4,space2     1
;                                   textureunorm_f32     2darray     T32     t80,space2     1
;                                   texture    byte         r/o     T33     t67,space1     1
;                                   texture     f32          2d     T34      t7,space2     1
;                                   texture     f32          2d     T35      t6,space2     1
;                                   texture     f32          2d     T36      t5,space2     1
;                                   texture     f32          2d     T37     t38,space2     1
;                                   texture    byte         r/o     T38     t12,space1     1
;                                   texture    byte         r/o     T39     t13,space1     1
;                                   texture     f32          1d     T40     t30,space2     1
;                                   texture     f32          3d     T41     t44,space2     1
;                                   texture     f32          3d     T42     t45,space2     1
;                                   texture     f32     2darray     T43     t47,space2     1
;                                   textureunorm_f32     2darray     T44     t85,space2     1
;                                   texture     f32          2d     T45     t83,space2     1
;                                   texture     f32          2d     T46     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = alloca [12 x float], align 4
  %97 = alloca [12 x float], align 4
  %98 = alloca [3 x float], align 4
  %99 = alloca [3 x float], align 4
  %100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = fmul fast float %103, %92
  %105 = fmul fast float %103, %93
  %106 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %107 = bitcast float %106 to i32
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 1597250115, %108
  %110 = bitcast i32 %109 to float
  %111 = fmul fast float %110, %83
  %112 = fmul fast float %110, %84
  %113 = fmul fast float %110, %85
  %114 = fmul fast float %84, %81
  %115 = fmul fast float %85, %80
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %85, %79
  %118 = fmul fast float %83, %81
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %83, %80
  %121 = fmul fast float %84, %79
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %116, %82
  %124 = fmul fast float %119, %82
  %125 = fmul fast float %122, %82
  %126 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %127 = bitcast float %126 to i32
  %128 = ashr i32 %127, 1
  %129 = sub nsw i32 1597250115, %128
  %130 = bitcast i32 %129 to float
  %131 = fmul fast float %130, %72
  %132 = fmul fast float %130, %73
  %133 = fmul fast float %130, %74
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = fcmp fast une float %135, 0.000000e+00
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %104, 2.000000e+00
  %141 = fmul fast float %140, %138
  %142 = fmul fast float %105, 2.000000e+00
  %143 = fmul fast float %142, %139
  %144 = fsub fast float 1.000000e+00, %141
  %145 = fsub fast float 1.000000e+00, %143
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = select i1 %136, float %147, float %151
  %155 = select i1 %136, float %148, float %152
  %156 = select i1 %136, float %149, float %153
  %157 = fmul fast float %154, %144
  %158 = fmul fast float %155, %144
  %159 = fmul fast float %156, %144
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = select i1 %136, float %161, float %165
  %169 = select i1 %136, float %162, float %166
  %170 = select i1 %136, float %163, float %167
  %171 = fmul fast float %168, %145
  %172 = fmul fast float %169, %145
  %173 = fmul fast float %170, %145
  %174 = fadd fast float %171, %157
  %175 = fadd fast float %172, %158
  %176 = fadd fast float %173, %159
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = select i1 %136, float %178, float %182
  %186 = select i1 %136, float %179, float %183
  %187 = select i1 %136, float %180, float %184
  %188 = fadd fast float %174, %185
  %189 = fadd fast float %175, %186
  %190 = fadd fast float %176, %187
  %191 = fmul fast float %188, %95
  %192 = fmul fast float %189, %95
  %193 = fmul fast float %190, %95
  %194 = add i32 %54, 360
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = extractvalue %dx.types.ResRet.i32 %195, 1
  %198 = extractvalue %dx.types.ResRet.i32 %195, 2
  %199 = extractvalue %dx.types.ResRet.i32 %195, 3
  %200 = bitcast i32 %196 to float
  %201 = bitcast i32 %197 to float
  %202 = bitcast i32 %198 to float
  %203 = bitcast i32 %199 to float
  %204 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call float @dx.op.unary.f32(i32 25, float %204)  ; Rsqrt(value)
  %206 = fmul fast float %205, %111
  %207 = fmul fast float %205, %112
  %208 = fmul fast float %205, %113
  %209 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = call float @dx.op.unary.f32(i32 25, float %209)  ; Rsqrt(value)
  %211 = fmul fast float %210, %191
  %212 = fmul fast float %210, %192
  %213 = fmul fast float %210, %193
  %214 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = fmul fast float %214, %214
  %216 = fmul fast float %215, %202
  %217 = fadd fast float %216, %203
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 3
  %221 = fmul fast float %220, %209
  %222 = fsub fast float %200, %221
  %223 = fmul fast float %222, %201
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fmul fast float %224, %218
  %226 = fmul fast float %104, 5.000000e-01
  %227 = fmul fast float %105, 5.000000e-01
  %228 = fptosi float %226 to i32
  %229 = fptosi float %227 to i32
  %230 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %228, i32 %229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = lshr i32 %231, 18
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F4C00EBA0000000
  %235 = call float @dx.op.unary.f32(i32 21, float %234)  ; Exp(value)
  %236 = fadd fast float %235, -1.000000e+00
  %237 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %238 = extractvalue %dx.types.Dimensions %237, 0
  %239 = sitofp i32 %238 to float
  %240 = extractvalue %dx.types.Dimensions %237, 1
  %241 = sitofp i32 %240 to float
  %242 = fcmp fast oge float %226, %239
  %243 = fcmp fast oge float %227, %241
  %244 = or i1 %242, %243
  %245 = select i1 %244, float 0x4197782600000000, float %236
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %249 = fmul fast float %247, %104
  %250 = fmul fast float %248, %105
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 114688
  %254 = icmp ne i32 %253, 0
  %255 = select i1 %254, float %249, float 0.000000e+00
  %256 = select i1 %254, float %250, float 0.000000e+00
  %257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %49, float %255, float %256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fmul fast float %258, 2.550000e+02
  %260 = fptoui float %259 to i32
  %261 = select i1 %254, i32 %260, i32 0
  %262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.i32 %262, 3
  %264 = and i32 %263, 3
  %265 = icmp ne i32 %264, 0
  %266 = and i32 %263, 4
  %267 = icmp ne i32 %266, 0
  %268 = and i1 %265, %267
  br i1 %268, label %269, label %278

; <label>:269                                     ; preds = %0
  %270 = fmul fast float %139, %105
  %271 = fmul fast float %138, %104
  %272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %48, float %271, float %270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fsub fast float 1.000000e+00, %273
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %277 = fcmp fast olt float %274, %276
  br label %281

; <label>:278                                     ; preds = %0
  %279 = icmp eq i32 %266, 0
  %280 = and i1 %265, %279
  br label %281

; <label>:281                                     ; preds = %278, %269
  %282 = phi i1 [ %277, %269 ], [ %280, %278 ]
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %285 = fmul fast float %284, 0x3FE3C6EF40000000
  %286 = frem fast float %104, 2.560000e+02
  %287 = frem fast float %105, 2.560000e+02
  %288 = fptoui float %286 to i32
  %289 = fptoui float %287 to i32
  %290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %288, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = fadd fast float %291, %285
  %293 = call float @dx.op.unary.f32(i32 22, float %292)  ; Frc(value)
  %294 = add i32 %54, 156
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = shl i32 %296, 4
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %296, 7
  %301 = and i32 %300, 32752
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %296, 22
  %304 = shl nuw nsw i32 %303, 5
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %54, 216
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = lshr i32 %308, 8
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = lshr i32 %308, 16
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = add i32 %54, 36
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %54, 288
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = fmul fast float %331, 0x3F50624DE0000000
  %335 = fmul fast float %333, 0x3F50624DE0000000
  %336 = add i32 %54, 172
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = shl i32 %338, 4
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %338, 7
  %343 = and i32 %342, 32752
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %338, 22
  %346 = shl nuw nsw i32 %345, 5
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = add i32 %54, 232
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = lshr i32 %350, 8
  %355 = and i32 %354, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F70101020000000
  %358 = lshr i32 %350, 16
  %359 = and i32 %358, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F70101020000000
  %362 = add i32 %54, 52
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 65535
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %364, 16
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = add i32 %54, 304
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fmul fast float %373, 0x3F50624DE0000000
  %377 = fmul fast float %375, 0x3F50624DE0000000
  %378 = add i32 %54, 188
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = shl i32 %380, 4
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %380, 7
  %385 = and i32 %384, 32752
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %380, 22
  %388 = shl nuw nsw i32 %387, 5
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = add i32 %54, 248
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = and i32 %392, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %394, 0x3F70101020000000
  %396 = lshr i32 %392, 8
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %398, 0x3F70101020000000
  %400 = lshr i32 %392, 16
  %401 = and i32 %400, 255
  %402 = uitofp i32 %401 to float
  %403 = fmul fast float %402, 0x3F70101020000000
  %404 = add i32 %54, 68
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 65535
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %406, 16
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = add i32 %54, 320
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = fmul fast float %415, 0x3F50624DE0000000
  %419 = fmul fast float %417, 0x3F50624DE0000000
  %420 = add i32 %54, 204
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = shl i32 %422, 4
  %424 = and i32 %423, 32752
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %422, 7
  %427 = and i32 %426, 32752
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %422, 22
  %430 = shl nuw nsw i32 %429, 5
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = add i32 %54, 264
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 255
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = lshr i32 %434, 8
  %439 = and i32 %438, 255
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 0x3F70101020000000
  %442 = lshr i32 %434, 16
  %443 = and i32 %442, 255
  %444 = uitofp i32 %443 to float
  %445 = fmul fast float %444, 0x3F70101020000000
  %446 = add i32 %54, 84
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = add i32 %54, 336
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = fmul fast float %457, 0x3F50624DE0000000
  %461 = fmul fast float %459, 0x3F50624DE0000000
  %462 = add i32 %54, 348
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 32
  %466 = icmp eq i32 %465, 0
  %467 = and i32 %464, 64
  %468 = icmp eq i32 %467, 0
  %469 = and i32 %464, 128
  %470 = icmp eq i32 %469, 0
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 2
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %490, label %475

; <label>:475                                     ; preds = %281
  %476 = add i32 %54, 520
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = add i32 %478, 0
  %480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %480, %dx.types.Handle %101, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = fmul fast float %485, %88
  %487 = fmul fast float %482, %89
  %488 = fmul fast float %483, %90
  %489 = fmul fast float %484, %91
  br label %490

; <label>:490                                     ; preds = %475, %281
  %491 = phi float [ %91, %281 ], [ %489, %475 ]
  %492 = phi float [ %90, %281 ], [ %488, %475 ]
  %493 = phi float [ %89, %281 ], [ %487, %475 ]
  %494 = phi float [ %88, %281 ], [ %486, %475 ]
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 2
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %518, label %499

; <label>:499                                     ; preds = %490
  %500 = add i32 %54, 44
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = and i32 %502, 1
  %504 = icmp ne i32 %503, 0
  %505 = select i1 %504, float %493, float 1.000000e+00
  %506 = add i32 %54, 60
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 1
  %510 = icmp ne i32 %509, 0
  %511 = select i1 %510, float %492, float 1.000000e+00
  %512 = add i32 %54, 76
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 1
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %491, float 1.000000e+00
  br label %518

; <label>:518                                     ; preds = %499, %490
  %519 = phi float [ %491, %490 ], [ %517, %499 ]
  %520 = phi float [ %492, %490 ], [ %511, %499 ]
  %521 = phi float [ %493, %490 ], [ %505, %499 ]
  %522 = lshr i32 %496, 20
  %523 = and i32 %522, 3
  %524 = add nuw nsw i32 %523, 1
  %525 = add i32 %54, 24
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = add i32 %54, 28
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = or i32 %530, %527
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %1067, label %533

; <label>:533                                     ; preds = %518
  %534 = and i32 %527, 262144
  %535 = icmp ne i32 %534, 0
  %536 = select i1 %535, float %59, float 1.000000e+00
  %537 = select i1 %535, float %60, float 0.000000e+00
  %538 = select i1 %535, float %61, float 0.000000e+00
  %539 = select i1 %535, float %62, float 1.000000e+00
  %540 = select i1 %535, float %63, float %86
  %541 = select i1 %535, float %64, float %87
  %542 = add i32 %54, 284
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %544, 16
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = fmul fast float %546, 0x3F50624DE0000000
  %548 = add i32 %54, 88
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = lshr i32 %550, 16
  %552 = and i32 %551, 255
  %553 = lshr i32 %550, 24
  %554 = add i32 %54, 292
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 65535
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = lshr i32 %556, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = add i32 %54, 32
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = lshr i32 %563, 22
  %565 = shl nuw nsw i32 %564, 5
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = shl i32 %563, 4
  %568 = and i32 %567, 32752
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = lshr i32 %563, 7
  %571 = and i32 %570, 32752
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 3
  %575 = fmul fast float %574, 1.000000e+03
  %576 = fmul fast float %334, %575
  %577 = call float @dx.op.unary.f32(i32 22, float %576)  ; Frc(value)
  %578 = fadd fast float %577, %324
  %579 = fmul fast float %335, %575
  %580 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %581 = fadd fast float %580, %326
  %582 = fmul fast float %547, %575
  %583 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %584 = fmul fast float %583, 0x401921FB60000000
  %585 = fadd fast float %584, %566
  %586 = call float @dx.op.unary.f32(i32 13, float %585)  ; Sin(value)
  %587 = call float @dx.op.unary.f32(i32 12, float %585)  ; Cos(value)
  %588 = fsub fast float -0.000000e+00, %586
  %589 = fadd fast float %540, -5.000000e-01
  %590 = fadd fast float %541, -5.000000e-01
  %591 = fmul fast float %558, %589
  %592 = fmul fast float %560, %590
  %593 = fadd fast float %591, 5.000000e-01
  %594 = fadd fast float %592, 5.000000e-01
  %595 = fmul fast float %569, %593
  %596 = fmul fast float %572, %594
  %597 = fmul fast float %587, %595
  %598 = call float @dx.op.tertiary.f32(i32 46, float %588, float %596, float %597)  ; FMad(a,b,c)
  %599 = fmul fast float %586, %595
  %600 = call float @dx.op.tertiary.f32(i32 46, float %587, float %596, float %599)  ; FMad(a,b,c)
  %601 = fadd fast float %578, %598
  %602 = fadd fast float %581, %600
  %603 = icmp ugt i32 %552, 1
  %604 = icmp ugt i32 %550, 33554431
  %605 = or i1 %604, %603
  br i1 %605, label %606, label %631

; <label>:606                                     ; preds = %533
  %607 = add i32 %54, 228
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = lshr i32 %609, 16
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = fmul fast float %574, %611
  %613 = call float @dx.op.unary.f32(i32 22, float %612)  ; Frc(value)
  %614 = mul nuw nsw i32 %552, %553
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %613, %615
  %617 = call float @dx.op.unary.f32(i32 27, float %616)  ; Round_ni(value)
  %618 = fptoui float %617 to i32
  %619 = urem i32 %618, %552
  %620 = udiv i32 %618, %553
  %621 = call float @dx.op.unary.f32(i32 22, float %601)  ; Frc(value)
  %622 = call float @dx.op.unary.f32(i32 22, float %602)  ; Frc(value)
  %623 = uitofp i32 %619 to float
  %624 = uitofp i32 %620 to float
  %625 = fadd fast float %621, %623
  %626 = fadd fast float %622, %624
  %627 = uitofp i32 %552 to float
  %628 = uitofp i32 %553 to float
  %629 = fdiv fast float %625, %627
  %630 = fdiv fast float %626, %628
  br label %631

; <label>:631                                     ; preds = %606, %533
  %632 = phi float [ %629, %606 ], [ %601, %533 ]
  %633 = phi float [ %630, %606 ], [ %602, %533 ]
  %634 = and i32 %527, 256
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %682, label %636

; <label>:636                                     ; preds = %631
  %637 = add i32 %54, 472
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = add i32 %639, 0
  %641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %641, %dx.types.Handle %101, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = add i32 %54, 100
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = shl i32 %646, 4
  %648 = and i32 %647, 32752
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = lshr i32 %646, 7
  %651 = and i32 %650, 32752
  %652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %651)  ; LegacyF16ToF32(value)
  %653 = fsub fast float 1.000000e+00, %494
  %654 = call float @dx.op.binary.f32(i32 35, float %653, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %655 = bitcast float %494 to i32
  %656 = sitofp i32 %655 to float
  %657 = fadd fast float %656, 0xC1CFBF8940000000
  %658 = fmul fast float %652, %657
  %659 = fadd fast float %658, 0x41CFBF8940000000
  %660 = fptosi float %659 to i32
  %661 = bitcast i32 %660 to float
  %662 = bitcast float %654 to i32
  %663 = sitofp i32 %662 to float
  %664 = fadd fast float %663, 0xC1CFBF8940000000
  %665 = fmul fast float %664, %652
  %666 = fadd fast float %665, 0x41CFBF8940000000
  %667 = fptosi float %666 to i32
  %668 = bitcast i32 %667 to float
  %669 = fmul fast float %661, %649
  %670 = fmul fast float %668, %649
  %671 = fsub fast float %654, %669
  %672 = fadd fast float %670, %654
  %673 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %674 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  %675 = fsub fast float %643, %673
  %676 = fsub fast float %674, %673
  %677 = bitcast float %676 to i32
  %678 = sub nsw i32 2129859010, %677
  %679 = bitcast i32 %678 to float
  %680 = fmul fast float %679, %675
  %681 = call float @dx.op.unary.f32(i32 7, float %680)  ; Saturate(value)
  br label %682

; <label>:682                                     ; preds = %636, %631
  %683 = phi float [ %681, %636 ], [ %494, %631 ]
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 128
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %704, label %688

; <label>:688                                     ; preds = %682
  %689 = add i32 %54, 456
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = add i32 %691, 0
  %693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %694 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %693, %dx.types.Handle %101, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 524288
  %699 = icmp ne i32 %698, 0
  %700 = fcmp fast ogt float %695, 0x3FE0101020000000
  %701 = select i1 %700, float 1.000000e+00, float 0.000000e+00
  %702 = select i1 %699, float %701, float %695
  %703 = fmul fast float %702, %683
  br label %704

; <label>:704                                     ; preds = %688, %682
  %705 = phi float [ %703, %688 ], [ %683, %682 ]
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 16
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %908, label %710

; <label>:710                                     ; preds = %704
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %54, 408
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = add i32 %715, 0
  %717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %717, %dx.types.Handle %100, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  %720 = extractvalue %dx.types.ResRet.f32 %718, 1
  %721 = extractvalue %dx.types.ResRet.f32 %718, 2
  %722 = extractvalue %dx.types.ResRet.f32 %718, 3
  %723 = and i32 %712, 255
  %724 = uitofp i32 %723 to float
  %725 = lshr i32 %712, 8
  %726 = and i32 %725, 255
  %727 = uitofp i32 %726 to float
  %728 = fmul fast float %722, %724
  %729 = fadd fast float %728, %727
  %730 = fmul fast float %729, 0x3F70101000000000
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 512
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %743, label %735

; <label>:735                                     ; preds = %710
  %736 = add i32 %54, 488
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = add i32 %738, 0
  %740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %740, %dx.types.Handle %101, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  br label %743

; <label>:743                                     ; preds = %735, %710
  %744 = phi float [ %742, %735 ], [ 1.000000e+00, %710 ]
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 33554432
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %855, label %749

; <label>:749                                     ; preds = %743
  %750 = add i32 %54, 224
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 65535
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = lshr i32 %752, 16
  %756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %755)  ; LegacyF16ToF32(value)
  %757 = add i32 %54, 228
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 65535
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = lshr i32 %763, 24
  %765 = uitofp i32 %764 to float
  %766 = fmul fast float %765, 0x3F70101020000000
  %767 = and i32 %763, 255
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = lshr i32 %763, 8
  %771 = and i32 %770, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = lshr i32 %763, 16
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = add i32 %54, 220
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = lshr i32 %780, 24
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = and i32 %780, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F70101020000000
  %787 = lshr i32 %780, 8
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101020000000
  %791 = lshr i32 %780, 16
  %792 = and i32 %791, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101020000000
  %795 = bitcast float %719 to i32
  %796 = ashr i32 %795, 1
  %797 = sub nsw i32 1597463174, %796
  %798 = bitcast i32 %797 to float
  %799 = fmul fast float %719, 5.000000e-01
  %800 = fmul fast float %798, %798
  %801 = fmul fast float %800, %799
  %802 = fsub fast float 1.500000e+00, %801
  %803 = fmul fast float %798, %719
  %804 = fmul fast float %803, %802
  %805 = bitcast float %720 to i32
  %806 = ashr i32 %805, 1
  %807 = sub nsw i32 1597463174, %806
  %808 = bitcast i32 %807 to float
  %809 = fmul fast float %720, 5.000000e-01
  %810 = fmul fast float %808, %808
  %811 = fmul fast float %810, %809
  %812 = fsub fast float 1.500000e+00, %811
  %813 = fmul fast float %808, %720
  %814 = fmul fast float %813, %812
  %815 = bitcast float %721 to i32
  %816 = ashr i32 %815, 1
  %817 = sub nsw i32 1597463174, %816
  %818 = bitcast i32 %817 to float
  %819 = fmul fast float %721, 5.000000e-01
  %820 = fmul fast float %818, %818
  %821 = fmul fast float %820, %819
  %822 = fsub fast float 1.500000e+00, %821
  %823 = fmul fast float %818, %721
  %824 = fmul fast float %823, %822
  %825 = fsub fast float %804, %786
  %826 = fsub fast float %814, %790
  %827 = fsub fast float %824, %794
  %828 = fmul fast float %825, %754
  %829 = fmul fast float %826, %756
  %830 = fmul fast float %827, %761
  %831 = fadd fast float %828, %769
  %832 = fadd fast float %829, %773
  %833 = fadd fast float %830, %777
  %834 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %835 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  %836 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %837 = fmul fast float %834, %834
  %838 = fmul fast float %835, %835
  %839 = fmul fast float %836, %836
  %840 = fsub fast float %837, %719
  %841 = fsub fast float %838, %720
  %842 = fsub fast float %839, %721
  %843 = fmul fast float %840, %744
  %844 = fmul fast float %841, %744
  %845 = fmul fast float %842, %744
  %846 = fadd fast float %843, %719
  %847 = fadd fast float %844, %720
  %848 = fadd fast float %845, %721
  %849 = fadd fast float %766, %730
  %850 = fsub fast float %849, %783
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %852 = fsub fast float %851, %730
  %853 = fmul fast float %852, %744
  %854 = fadd fast float %853, %730
  br label %908

; <label>:855                                     ; preds = %743
  %856 = and i32 %746, 134217728
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %892, label %858

; <label>:858                                     ; preds = %855
  %859 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %860 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %861 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %862 = fadd fast float %859, -5.000000e-01
  %863 = fadd fast float %860, -5.000000e-01
  %864 = fadd fast float %861, -5.000000e-01
  %865 = fmul fast float %862, %744
  %866 = fmul fast float %863, %744
  %867 = fmul fast float %864, %744
  %868 = fadd fast float %865, 5.000000e-01
  %869 = fadd fast float %866, 5.000000e-01
  %870 = fadd fast float %867, 5.000000e-01
  %871 = call float @dx.op.unary.f32(i32 24, float %719)  ; Sqrt(value)
  %872 = call float @dx.op.unary.f32(i32 24, float %720)  ; Sqrt(value)
  %873 = call float @dx.op.unary.f32(i32 24, float %721)  ; Sqrt(value)
  %874 = fmul fast float %868, 2.000000e+00
  %875 = fsub fast float 1.000000e+00, %874
  %876 = fmul fast float %875, %871
  %877 = fadd fast float %876, %874
  %878 = fmul fast float %877, %871
  %879 = fmul fast float %869, 2.000000e+00
  %880 = fsub fast float 1.000000e+00, %879
  %881 = fmul fast float %880, %872
  %882 = fadd fast float %881, %879
  %883 = fmul fast float %882, %872
  %884 = fmul fast float %870, 2.000000e+00
  %885 = fsub fast float 1.000000e+00, %884
  %886 = fmul fast float %885, %873
  %887 = fadd fast float %886, %884
  %888 = fmul fast float %887, %873
  %889 = fmul fast float %878, %878
  %890 = fmul fast float %883, %883
  %891 = fmul fast float %888, %888
  br label %908

; <label>:892                                     ; preds = %855
  %893 = fmul fast float %311, %311
  %894 = fmul fast float %315, %315
  %895 = fmul fast float %319, %319
  %896 = fadd fast float %893, -1.000000e+00
  %897 = fadd fast float %894, -1.000000e+00
  %898 = fadd fast float %895, -1.000000e+00
  %899 = fmul fast float %744, %896
  %900 = fmul fast float %744, %897
  %901 = fmul fast float %744, %898
  %902 = fadd fast float %899, 1.000000e+00
  %903 = fadd fast float %900, 1.000000e+00
  %904 = fadd fast float %901, 1.000000e+00
  %905 = fmul fast float %902, %719
  %906 = fmul fast float %903, %720
  %907 = fmul fast float %904, %721
  br label %908

; <label>:908                                     ; preds = %892, %858, %749, %704
  %909 = phi float [ %854, %749 ], [ %730, %858 ], [ %730, %892 ], [ 0x3FA23C0BE0000000, %704 ]
  %910 = phi float [ %846, %749 ], [ %889, %858 ], [ %905, %892 ], [ 1.000000e+00, %704 ]
  %911 = phi float [ %847, %749 ], [ %890, %858 ], [ %906, %892 ], [ 1.000000e+00, %704 ]
  %912 = phi float [ %848, %749 ], [ %891, %858 ], [ %907, %892 ], [ 1.000000e+00, %704 ]
  %913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.i32 %913, 1
  %915 = and i32 %914, 1
  %916 = icmp ne i32 %915, 0
  %917 = add i32 %54, 356
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %919, 32
  %921 = icmp ne i32 %920, 0
  %922 = and i1 %916, %921
  %923 = select i1 %922, float 1.000000e+00, float %910
  %924 = select i1 %922, float 0x3FD3333340000000, float %911
  %925 = select i1 %922, float 0x3FD3333340000000, float %912
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 32
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %1002, label %930

; <label>:930                                     ; preds = %908
  %931 = add i32 %54, 92
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = add i32 %54, 424
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = add i32 %936, 0
  %938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %938, %dx.types.Handle %100, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = extractvalue %dx.types.ResRet.f32 %939, 1
  %942 = extractvalue %dx.types.ResRet.f32 %939, 2
  %943 = extractvalue %dx.types.ResRet.f32 %939, 3
  %944 = and i32 %933, 255
  %945 = uitofp i32 %944 to float
  %946 = lshr i32 %933, 8
  %947 = and i32 %946, 255
  %948 = uitofp i32 %947 to float
  %949 = lshr i32 %933, 16
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101000000000
  %953 = fmul fast float %940, %945
  %954 = fadd fast float %953, %948
  %955 = fmul fast float %954, 0x3F70101000000000
  %956 = fadd fast float %941, -5.000000e-01
  %957 = fadd fast float %943, -5.000000e-01
  %958 = fmul fast float %956, %952
  %959 = fmul fast float %957, %952
  %960 = fadd fast float %958, 5.000000e-01
  %961 = fadd fast float %959, 5.000000e-01
  %962 = fmul fast float %960, 2.000000e+00
  %963 = fadd fast float %962, -1.000000e+00
  %964 = fmul fast float %961, 2.000000e+00
  %965 = fadd fast float %964, -1.000000e+00
  %966 = fadd fast float %963, %965
  %967 = fmul fast float %966, 5.000000e-01
  %968 = fsub fast float %963, %965
  %969 = fmul fast float %968, 5.000000e-01
  %970 = call float @dx.op.unary.f32(i32 6, float %967)  ; FAbs(value)
  %971 = fsub fast float 1.000000e+00, %970
  %972 = call float @dx.op.unary.f32(i32 6, float %969)  ; FAbs(value)
  %973 = fsub fast float %971, %972
  %974 = call float @dx.op.dot3.f32(i32 55, float %967, float %969, float %973, float %967, float %969, float %973)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = call float @dx.op.unary.f32(i32 25, float %974)  ; Rsqrt(value)
  %976 = fmul fast float %967, %975
  %977 = fmul fast float %969, %975
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 67108864
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %998, label %982

; <label>:982                                     ; preds = %930
  %983 = add i32 %54, 280
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 65535
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 65535
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = lshr i32 %985, 16
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = fsub fast float %955, %993
  %995 = fmul fast float %994, %987
  %996 = fadd fast float %995, %991
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  br label %998

; <label>:998                                     ; preds = %982, %930
  %999 = phi float [ %997, %982 ], [ %955, %930 ]
  %1000 = call float @dx.op.dot2.f32(i32 54, float %976, float %977, float %536, float %537)  ; Dot2(ax,ay,bx,by)
  %1001 = call float @dx.op.dot2.f32(i32 54, float %976, float %977, float %538, float %539)  ; Dot2(ax,ay,bx,by)
  br label %1002

; <label>:1002                                    ; preds = %998, %908
  %1003 = phi float [ %999, %998 ], [ 0x3FD6666660000000, %908 ]
  %1004 = phi float [ %1000, %998 ], [ 0.000000e+00, %908 ]
  %1005 = phi float [ %1001, %998 ], [ 0.000000e+00, %908 ]
  %1006 = phi float [ %942, %998 ], [ 1.000000e+00, %908 ]
  %1007 = add i32 %54, 160
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = lshr i32 %1009, 22
  %1011 = shl nuw nsw i32 %1010, 5
  %1012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1011)  ; LegacyF16ToF32(value)
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 64
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1050, label %1017

; <label>:1017                                    ; preds = %1002
  %1018 = add i32 %54, 440
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = add i32 %1020, 0
  %1022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 131072
  %1026 = icmp eq i32 %1025, 0
  %1027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1022, %dx.types.Handle %100, float %632, float %633, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = fmul fast float %1028, %299
  %1032 = fmul fast float %1029, %302
  %1033 = fmul fast float %1030, %305
  br i1 %1026, label %1040, label %1034

; <label>:1034                                    ; preds = %1017
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = fmul fast float %1036, %1031
  %1038 = fmul fast float %1036, %1032
  %1039 = fmul fast float %1036, %1033
  br label %1040

; <label>:1040                                    ; preds = %1034, %1017
  %1041 = phi float [ %1037, %1034 ], [ %1031, %1017 ]
  %1042 = phi float [ %1038, %1034 ], [ %1032, %1017 ]
  %1043 = phi float [ %1039, %1034 ], [ %1033, %1017 ]
  %1044 = fmul fast float %1041, %1012
  %1045 = select i1 %282, float %1044, float %1041
  %1046 = call float @dx.op.dot3.f32(i32 55, float %1045, float %1042, float %1043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1047 = select i1 %282, float 0.000000e+00, float %1041
  %1048 = select i1 %282, float %1046, float %1042
  %1049 = select i1 %282, float 0.000000e+00, float %1043
  br label %1050

; <label>:1050                                    ; preds = %1040, %1002
  %1051 = phi float [ %1047, %1040 ], [ 0.000000e+00, %1002 ]
  %1052 = phi float [ %1048, %1040 ], [ 0.000000e+00, %1002 ]
  %1053 = phi float [ %1049, %1040 ], [ 0.000000e+00, %1002 ]
  %1054 = add i32 %54, 96
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = and i32 %1056, 255
  %1058 = uitofp i32 %1057 to float
  %1059 = lshr i32 %1056, 8
  %1060 = and i32 %1059, 255
  %1061 = uitofp i32 %1060 to float
  %1062 = call float @dx.op.dot3.f32(i32 55, float %923, float %924, float %925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1063 = fmul fast float %1061, %1062
  %1064 = fadd fast float %1063, %1058
  %1065 = fmul fast float %1064, 0x3F70101020000000
  %1066 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  br label %1067

; <label>:1067                                    ; preds = %1050, %518
  %1068 = phi float [ 0.000000e+00, %518 ], [ %1004, %1050 ]
  %1069 = phi float [ 0.000000e+00, %518 ], [ %1005, %1050 ]
  %1070 = phi float [ 0.000000e+00, %518 ], [ %923, %1050 ]
  %1071 = phi float [ 0.000000e+00, %518 ], [ %924, %1050 ]
  %1072 = phi float [ 0.000000e+00, %518 ], [ %925, %1050 ]
  %1073 = phi float [ 0.000000e+00, %518 ], [ %1051, %1050 ]
  %1074 = phi float [ 0.000000e+00, %518 ], [ %1052, %1050 ]
  %1075 = phi float [ 0.000000e+00, %518 ], [ %1053, %1050 ]
  %1076 = phi float [ 0.000000e+00, %518 ], [ %909, %1050 ]
  %1077 = phi float [ 0.000000e+00, %518 ], [ %705, %1050 ]
  %1078 = phi float [ 0.000000e+00, %518 ], [ %1003, %1050 ]
  %1079 = phi float [ 0.000000e+00, %518 ], [ %1006, %1050 ]
  %1080 = phi float [ 0.000000e+00, %518 ], [ %1066, %1050 ]
  br i1 %466, label %1807, label %1081

; <label>:1081                                    ; preds = %1067
  %1082 = icmp ult i32 %524, 2
  %1083 = add i32 %54, 40
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = add i32 %54, 44
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = or i32 %1088, %1085
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1807, label %1091

; <label>:1091                                    ; preds = %1081
  %1092 = and i32 %1085, 262144
  %1093 = icmp ne i32 %1092, 0
  %1094 = select i1 %1093, float %59, float 1.000000e+00
  %1095 = select i1 %1093, float %60, float 0.000000e+00
  %1096 = select i1 %1093, float %61, float 0.000000e+00
  %1097 = select i1 %1093, float %62, float 1.000000e+00
  %1098 = select i1 %1093, float %63, float %86
  %1099 = select i1 %1093, float %64, float %87
  %1100 = add i32 %54, 300
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = lshr i32 %1102, 16
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = fmul fast float %1104, 0x3F50624DE0000000
  %1106 = add i32 %54, 104
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = lshr i32 %1108, 16
  %1110 = and i32 %1109, 255
  %1111 = lshr i32 %1108, 24
  %1112 = add i32 %54, 308
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 65535
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = lshr i32 %1114, 16
  %1118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1117)  ; LegacyF16ToF32(value)
  %1119 = add i32 %54, 48
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = lshr i32 %1121, 22
  %1123 = shl nuw nsw i32 %1122, 5
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = shl i32 %1121, 4
  %1126 = and i32 %1125, 32752
  %1127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1126)  ; LegacyF16ToF32(value)
  %1128 = lshr i32 %1121, 7
  %1129 = and i32 %1128, 32752
  %1130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1129)  ; LegacyF16ToF32(value)
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 3
  %1133 = fmul fast float %1132, 1.000000e+03
  %1134 = fmul fast float %376, %1133
  %1135 = call float @dx.op.unary.f32(i32 22, float %1134)  ; Frc(value)
  %1136 = fadd fast float %1135, %366
  %1137 = fmul fast float %377, %1133
  %1138 = call float @dx.op.unary.f32(i32 22, float %1137)  ; Frc(value)
  %1139 = fadd fast float %1138, %368
  %1140 = fmul fast float %1105, %1133
  %1141 = call float @dx.op.unary.f32(i32 22, float %1140)  ; Frc(value)
  %1142 = fmul fast float %1141, 0x401921FB60000000
  %1143 = fadd fast float %1142, %1124
  %1144 = call float @dx.op.unary.f32(i32 13, float %1143)  ; Sin(value)
  %1145 = call float @dx.op.unary.f32(i32 12, float %1143)  ; Cos(value)
  %1146 = fsub fast float -0.000000e+00, %1144
  %1147 = fadd fast float %1098, -5.000000e-01
  %1148 = fadd fast float %1099, -5.000000e-01
  %1149 = fmul fast float %1116, %1147
  %1150 = fmul fast float %1118, %1148
  %1151 = fadd fast float %1149, 5.000000e-01
  %1152 = fadd fast float %1150, 5.000000e-01
  %1153 = fmul fast float %1127, %1151
  %1154 = fmul fast float %1130, %1152
  %1155 = fmul fast float %1145, %1153
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %1146, float %1154, float %1155)  ; FMad(a,b,c)
  %1157 = fmul fast float %1144, %1153
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %1145, float %1154, float %1157)  ; FMad(a,b,c)
  %1159 = fadd fast float %1136, %1156
  %1160 = fadd fast float %1139, %1158
  %1161 = icmp ugt i32 %1110, 1
  %1162 = icmp ugt i32 %1108, 33554431
  %1163 = or i1 %1162, %1161
  br i1 %1163, label %1164, label %1189

; <label>:1164                                    ; preds = %1091
  %1165 = add i32 %54, 244
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = lshr i32 %1167, 16
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = fmul fast float %1132, %1169
  %1171 = call float @dx.op.unary.f32(i32 22, float %1170)  ; Frc(value)
  %1172 = mul nuw nsw i32 %1110, %1111
  %1173 = uitofp i32 %1172 to float
  %1174 = fmul fast float %1171, %1173
  %1175 = call float @dx.op.unary.f32(i32 27, float %1174)  ; Round_ni(value)
  %1176 = fptoui float %1175 to i32
  %1177 = urem i32 %1176, %1110
  %1178 = udiv i32 %1176, %1111
  %1179 = call float @dx.op.unary.f32(i32 22, float %1159)  ; Frc(value)
  %1180 = call float @dx.op.unary.f32(i32 22, float %1160)  ; Frc(value)
  %1181 = uitofp i32 %1177 to float
  %1182 = uitofp i32 %1178 to float
  %1183 = fadd fast float %1179, %1181
  %1184 = fadd fast float %1180, %1182
  %1185 = uitofp i32 %1110 to float
  %1186 = uitofp i32 %1111 to float
  %1187 = fdiv fast float %1183, %1185
  %1188 = fdiv fast float %1184, %1186
  br label %1189

; <label>:1189                                    ; preds = %1164, %1091
  %1190 = phi float [ %1187, %1164 ], [ %1159, %1091 ]
  %1191 = phi float [ %1188, %1164 ], [ %1160, %1091 ]
  %1192 = and i32 %1085, 256
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1240, label %1194

; <label>:1194                                    ; preds = %1189
  %1195 = add i32 %54, 476
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = add i32 %1197, 0
  %1199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1199, %dx.types.Handle %101, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = add i32 %54, 116
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = shl i32 %1204, 4
  %1206 = and i32 %1205, 32752
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = lshr i32 %1204, 7
  %1209 = and i32 %1208, 32752
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = fsub fast float 1.000000e+00, %521
  %1212 = call float @dx.op.binary.f32(i32 35, float %1211, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1213 = bitcast float %521 to i32
  %1214 = sitofp i32 %1213 to float
  %1215 = fadd fast float %1214, 0xC1CFBF8940000000
  %1216 = fmul fast float %1210, %1215
  %1217 = fadd fast float %1216, 0x41CFBF8940000000
  %1218 = fptosi float %1217 to i32
  %1219 = bitcast i32 %1218 to float
  %1220 = bitcast float %1212 to i32
  %1221 = sitofp i32 %1220 to float
  %1222 = fadd fast float %1221, 0xC1CFBF8940000000
  %1223 = fmul fast float %1222, %1210
  %1224 = fadd fast float %1223, 0x41CFBF8940000000
  %1225 = fptosi float %1224 to i32
  %1226 = bitcast i32 %1225 to float
  %1227 = fmul fast float %1219, %1207
  %1228 = fmul fast float %1226, %1207
  %1229 = fsub fast float %1212, %1227
  %1230 = fadd fast float %1228, %1212
  %1231 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1232 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1233 = fsub fast float %1201, %1231
  %1234 = fsub fast float %1232, %1231
  %1235 = bitcast float %1234 to i32
  %1236 = sub nsw i32 2129859010, %1235
  %1237 = bitcast i32 %1236 to float
  %1238 = fmul fast float %1237, %1233
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  br label %1240

; <label>:1240                                    ; preds = %1194, %1189
  %1241 = phi float [ %1239, %1194 ], [ %521, %1189 ]
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 128
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1262, label %1246

; <label>:1246                                    ; preds = %1240
  %1247 = add i32 %54, 460
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %1249, 0
  %1251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1251, %dx.types.Handle %101, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, 524288
  %1257 = icmp ne i32 %1256, 0
  %1258 = fcmp fast ogt float %1253, 0x3FE0101020000000
  %1259 = select i1 %1258, float 1.000000e+00, float 0.000000e+00
  %1260 = select i1 %1257, float %1259, float %1253
  %1261 = fmul fast float %1260, %1241
  br label %1262

; <label>:1262                                    ; preds = %1246, %1240
  %1263 = phi float [ %1261, %1246 ], [ %1241, %1240 ]
  %1264 = fcmp fast ult float %1263, 0x3F70101020000000
  br i1 %1264, label %1807, label %1265

; <label>:1265                                    ; preds = %1262
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = and i32 %1267, 16
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1468, label %1270

; <label>:1270                                    ; preds = %1265
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = add i32 %54, 412
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = add i32 %1275, 0
  %1277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1277, %dx.types.Handle %100, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.ResRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.ResRet.f32 %1278, 2
  %1282 = extractvalue %dx.types.ResRet.f32 %1278, 3
  %1283 = and i32 %1272, 255
  %1284 = uitofp i32 %1283 to float
  %1285 = lshr i32 %1272, 8
  %1286 = and i32 %1285, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1282, %1284
  %1289 = fadd fast float %1288, %1287
  %1290 = fmul fast float %1289, 0x3F70101000000000
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 512
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1303, label %1295

; <label>:1295                                    ; preds = %1270
  %1296 = add i32 %54, 492
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = add i32 %1298, 0
  %1300 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1299, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1301 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1300, %dx.types.Handle %101, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  br label %1303

; <label>:1303                                    ; preds = %1295, %1270
  %1304 = phi float [ %1302, %1295 ], [ 1.000000e+00, %1270 ]
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = and i32 %1306, 33554432
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1415, label %1309

; <label>:1309                                    ; preds = %1303
  %1310 = add i32 %54, 240
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = and i32 %1312, 65535
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = lshr i32 %1312, 16
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = add i32 %54, 244
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 65535
  %1321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1320)  ; LegacyF16ToF32(value)
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.i32 %1322, 0
  %1324 = lshr i32 %1323, 24
  %1325 = uitofp i32 %1324 to float
  %1326 = fmul fast float %1325, 0x3F70101020000000
  %1327 = and i32 %1323, 255
  %1328 = uitofp i32 %1327 to float
  %1329 = fmul fast float %1328, 0x3F70101020000000
  %1330 = lshr i32 %1323, 8
  %1331 = and i32 %1330, 255
  %1332 = uitofp i32 %1331 to float
  %1333 = fmul fast float %1332, 0x3F70101020000000
  %1334 = lshr i32 %1323, 16
  %1335 = and i32 %1334, 255
  %1336 = uitofp i32 %1335 to float
  %1337 = fmul fast float %1336, 0x3F70101020000000
  %1338 = add i32 %54, 236
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = lshr i32 %1340, 24
  %1342 = uitofp i32 %1341 to float
  %1343 = fmul fast float %1342, 0x3F70101020000000
  %1344 = and i32 %1340, 255
  %1345 = uitofp i32 %1344 to float
  %1346 = fmul fast float %1345, 0x3F70101020000000
  %1347 = lshr i32 %1340, 8
  %1348 = and i32 %1347, 255
  %1349 = uitofp i32 %1348 to float
  %1350 = fmul fast float %1349, 0x3F70101020000000
  %1351 = lshr i32 %1340, 16
  %1352 = and i32 %1351, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = fmul fast float %1353, 0x3F70101020000000
  %1355 = bitcast float %1279 to i32
  %1356 = ashr i32 %1355, 1
  %1357 = sub nsw i32 1597463174, %1356
  %1358 = bitcast i32 %1357 to float
  %1359 = fmul fast float %1279, 5.000000e-01
  %1360 = fmul fast float %1358, %1358
  %1361 = fmul fast float %1360, %1359
  %1362 = fsub fast float 1.500000e+00, %1361
  %1363 = fmul fast float %1358, %1279
  %1364 = fmul fast float %1363, %1362
  %1365 = bitcast float %1280 to i32
  %1366 = ashr i32 %1365, 1
  %1367 = sub nsw i32 1597463174, %1366
  %1368 = bitcast i32 %1367 to float
  %1369 = fmul fast float %1280, 5.000000e-01
  %1370 = fmul fast float %1368, %1368
  %1371 = fmul fast float %1370, %1369
  %1372 = fsub fast float 1.500000e+00, %1371
  %1373 = fmul fast float %1368, %1280
  %1374 = fmul fast float %1373, %1372
  %1375 = bitcast float %1281 to i32
  %1376 = ashr i32 %1375, 1
  %1377 = sub nsw i32 1597463174, %1376
  %1378 = bitcast i32 %1377 to float
  %1379 = fmul fast float %1281, 5.000000e-01
  %1380 = fmul fast float %1378, %1378
  %1381 = fmul fast float %1380, %1379
  %1382 = fsub fast float 1.500000e+00, %1381
  %1383 = fmul fast float %1378, %1281
  %1384 = fmul fast float %1383, %1382
  %1385 = fsub fast float %1364, %1346
  %1386 = fsub fast float %1374, %1350
  %1387 = fsub fast float %1384, %1354
  %1388 = fmul fast float %1385, %1314
  %1389 = fmul fast float %1386, %1316
  %1390 = fmul fast float %1387, %1321
  %1391 = fadd fast float %1388, %1329
  %1392 = fadd fast float %1389, %1333
  %1393 = fadd fast float %1390, %1337
  %1394 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1395 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1396 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1397 = fmul fast float %1394, %1394
  %1398 = fmul fast float %1395, %1395
  %1399 = fmul fast float %1396, %1396
  %1400 = fsub fast float %1397, %1279
  %1401 = fsub fast float %1398, %1280
  %1402 = fsub fast float %1399, %1281
  %1403 = fmul fast float %1400, %1304
  %1404 = fmul fast float %1401, %1304
  %1405 = fmul fast float %1402, %1304
  %1406 = fadd fast float %1403, %1279
  %1407 = fadd fast float %1404, %1280
  %1408 = fadd fast float %1405, %1281
  %1409 = fadd fast float %1326, %1290
  %1410 = fsub fast float %1409, %1343
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1412 = fsub fast float %1411, %1290
  %1413 = fmul fast float %1412, %1304
  %1414 = fadd fast float %1413, %1290
  br label %1468

; <label>:1415                                    ; preds = %1303
  %1416 = and i32 %1306, 134217728
  %1417 = icmp eq i32 %1416, 0
  br i1 %1417, label %1452, label %1418

; <label>:1418                                    ; preds = %1415
  %1419 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %1420 = call float @dx.op.unary.f32(i32 24, float %357)  ; Sqrt(value)
  %1421 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %1422 = fadd fast float %1419, -5.000000e-01
  %1423 = fadd fast float %1420, -5.000000e-01
  %1424 = fadd fast float %1421, -5.000000e-01
  %1425 = fmul fast float %1422, %1304
  %1426 = fmul fast float %1423, %1304
  %1427 = fmul fast float %1424, %1304
  %1428 = fadd fast float %1425, 5.000000e-01
  %1429 = fadd fast float %1426, 5.000000e-01
  %1430 = fadd fast float %1427, 5.000000e-01
  %1431 = call float @dx.op.unary.f32(i32 24, float %1279)  ; Sqrt(value)
  %1432 = call float @dx.op.unary.f32(i32 24, float %1280)  ; Sqrt(value)
  %1433 = call float @dx.op.unary.f32(i32 24, float %1281)  ; Sqrt(value)
  %1434 = fmul fast float %1428, 2.000000e+00
  %1435 = fsub fast float 1.000000e+00, %1434
  %1436 = fmul fast float %1435, %1431
  %1437 = fadd fast float %1436, %1434
  %1438 = fmul fast float %1437, %1431
  %1439 = fmul fast float %1429, 2.000000e+00
  %1440 = fsub fast float 1.000000e+00, %1439
  %1441 = fmul fast float %1440, %1432
  %1442 = fadd fast float %1441, %1439
  %1443 = fmul fast float %1442, %1432
  %1444 = fmul fast float %1430, 2.000000e+00
  %1445 = fsub fast float 1.000000e+00, %1444
  %1446 = fmul fast float %1445, %1433
  %1447 = fadd fast float %1446, %1444
  %1448 = fmul fast float %1447, %1433
  %1449 = fmul fast float %1438, %1438
  %1450 = fmul fast float %1443, %1443
  %1451 = fmul fast float %1448, %1448
  br label %1468

; <label>:1452                                    ; preds = %1415
  %1453 = fmul fast float %353, %353
  %1454 = fmul fast float %357, %357
  %1455 = fmul fast float %361, %361
  %1456 = fadd fast float %1453, -1.000000e+00
  %1457 = fadd fast float %1454, -1.000000e+00
  %1458 = fadd fast float %1455, -1.000000e+00
  %1459 = fmul fast float %1304, %1456
  %1460 = fmul fast float %1304, %1457
  %1461 = fmul fast float %1304, %1458
  %1462 = fadd fast float %1459, 1.000000e+00
  %1463 = fadd fast float %1460, 1.000000e+00
  %1464 = fadd fast float %1461, 1.000000e+00
  %1465 = fmul fast float %1462, %1279
  %1466 = fmul fast float %1463, %1280
  %1467 = fmul fast float %1464, %1281
  br label %1468

; <label>:1468                                    ; preds = %1452, %1418, %1309, %1265
  %1469 = phi float [ %1414, %1309 ], [ %1290, %1418 ], [ %1290, %1452 ], [ 0x3FA23C0BE0000000, %1265 ]
  %1470 = phi float [ %1406, %1309 ], [ %1449, %1418 ], [ %1465, %1452 ], [ 1.000000e+00, %1265 ]
  %1471 = phi float [ %1407, %1309 ], [ %1450, %1418 ], [ %1466, %1452 ], [ 1.000000e+00, %1265 ]
  %1472 = phi float [ %1408, %1309 ], [ %1451, %1418 ], [ %1467, %1452 ], [ 1.000000e+00, %1265 ]
  %1473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.i32 %1473, 1
  %1475 = and i32 %1474, 1
  %1476 = icmp ne i32 %1475, 0
  %1477 = add i32 %54, 356
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 32
  %1481 = icmp ne i32 %1480, 0
  %1482 = and i1 %1476, %1481
  %1483 = select i1 %1482, float 1.000000e+00, float %1470
  %1484 = select i1 %1482, float 0x3FD3333340000000, float %1471
  %1485 = select i1 %1482, float 0x3FD3333340000000, float %1472
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 32
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1562, label %1490

; <label>:1490                                    ; preds = %1468
  %1491 = add i32 %54, 108
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = add i32 %54, 428
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = add i32 %1496, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1498, %dx.types.Handle %100, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = extractvalue %dx.types.ResRet.f32 %1499, 1
  %1502 = extractvalue %dx.types.ResRet.f32 %1499, 2
  %1503 = extractvalue %dx.types.ResRet.f32 %1499, 3
  %1504 = and i32 %1493, 255
  %1505 = uitofp i32 %1504 to float
  %1506 = lshr i32 %1493, 8
  %1507 = and i32 %1506, 255
  %1508 = uitofp i32 %1507 to float
  %1509 = lshr i32 %1493, 16
  %1510 = and i32 %1509, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = fmul fast float %1511, 0x3F70101000000000
  %1513 = fmul fast float %1500, %1505
  %1514 = fadd fast float %1513, %1508
  %1515 = fmul fast float %1514, 0x3F70101000000000
  %1516 = fadd fast float %1501, -5.000000e-01
  %1517 = fadd fast float %1503, -5.000000e-01
  %1518 = fmul fast float %1516, %1512
  %1519 = fmul fast float %1517, %1512
  %1520 = fadd fast float %1518, 5.000000e-01
  %1521 = fadd fast float %1519, 5.000000e-01
  %1522 = fmul fast float %1520, 2.000000e+00
  %1523 = fadd fast float %1522, -1.000000e+00
  %1524 = fmul fast float %1521, 2.000000e+00
  %1525 = fadd fast float %1524, -1.000000e+00
  %1526 = fadd fast float %1523, %1525
  %1527 = fmul fast float %1526, 5.000000e-01
  %1528 = fsub fast float %1523, %1525
  %1529 = fmul fast float %1528, 5.000000e-01
  %1530 = call float @dx.op.unary.f32(i32 6, float %1527)  ; FAbs(value)
  %1531 = fsub fast float 1.000000e+00, %1530
  %1532 = call float @dx.op.unary.f32(i32 6, float %1529)  ; FAbs(value)
  %1533 = fsub fast float %1531, %1532
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1527, float %1529, float %1533, float %1527, float %1529, float %1533)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = call float @dx.op.unary.f32(i32 25, float %1534)  ; Rsqrt(value)
  %1536 = fmul fast float %1527, %1535
  %1537 = fmul fast float %1529, %1535
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 67108864
  %1541 = icmp eq i32 %1540, 0
  br i1 %1541, label %1558, label %1542

; <label>:1542                                    ; preds = %1490
  %1543 = add i32 %54, 296
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 65535
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 65535
  %1551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1550)  ; LegacyF16ToF32(value)
  %1552 = lshr i32 %1545, 16
  %1553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1552)  ; LegacyF16ToF32(value)
  %1554 = fsub fast float %1515, %1553
  %1555 = fmul fast float %1554, %1547
  %1556 = fadd fast float %1555, %1551
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  br label %1558

; <label>:1558                                    ; preds = %1542, %1490
  %1559 = phi float [ %1557, %1542 ], [ %1515, %1490 ]
  %1560 = call float @dx.op.dot2.f32(i32 54, float %1536, float %1537, float %1094, float %1095)  ; Dot2(ax,ay,bx,by)
  %1561 = call float @dx.op.dot2.f32(i32 54, float %1536, float %1537, float %1096, float %1097)  ; Dot2(ax,ay,bx,by)
  br label %1562

; <label>:1562                                    ; preds = %1558, %1468
  %1563 = phi float [ %1559, %1558 ], [ 0x3FD6666660000000, %1468 ]
  %1564 = phi float [ %1560, %1558 ], [ 0.000000e+00, %1468 ]
  %1565 = phi float [ %1561, %1558 ], [ 0.000000e+00, %1468 ]
  %1566 = phi float [ %1502, %1558 ], [ 1.000000e+00, %1468 ]
  %1567 = add i32 %54, 176
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1567, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = lshr i32 %1569, 22
  %1571 = shl nuw nsw i32 %1570, 5
  %1572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1571)  ; LegacyF16ToF32(value)
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 64
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1610, label %1577

; <label>:1577                                    ; preds = %1562
  %1578 = add i32 %54, 444
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = add i32 %1580, 0
  %1582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 131072
  %1586 = icmp eq i32 %1585, 0
  %1587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1582, %dx.types.Handle %100, float %1190, float %1191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1588 = extractvalue %dx.types.ResRet.f32 %1587, 0
  %1589 = extractvalue %dx.types.ResRet.f32 %1587, 1
  %1590 = extractvalue %dx.types.ResRet.f32 %1587, 2
  %1591 = fmul fast float %1588, %341
  %1592 = fmul fast float %1589, %344
  %1593 = fmul fast float %1590, %347
  br i1 %1586, label %1600, label %1594

; <label>:1594                                    ; preds = %1577
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 0
  %1597 = fmul fast float %1596, %1591
  %1598 = fmul fast float %1596, %1592
  %1599 = fmul fast float %1596, %1593
  br label %1600

; <label>:1600                                    ; preds = %1594, %1577
  %1601 = phi float [ %1597, %1594 ], [ %1591, %1577 ]
  %1602 = phi float [ %1598, %1594 ], [ %1592, %1577 ]
  %1603 = phi float [ %1599, %1594 ], [ %1593, %1577 ]
  %1604 = fmul fast float %1601, %1572
  %1605 = select i1 %282, float %1604, float %1601
  %1606 = call float @dx.op.dot3.f32(i32 55, float %1605, float %1602, float %1603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1607 = select i1 %282, float 0.000000e+00, float %1601
  %1608 = select i1 %282, float %1606, float %1602
  %1609 = select i1 %282, float 0.000000e+00, float %1603
  br label %1610

; <label>:1610                                    ; preds = %1600, %1562
  %1611 = phi float [ %1607, %1600 ], [ 0.000000e+00, %1562 ]
  %1612 = phi float [ %1608, %1600 ], [ 0.000000e+00, %1562 ]
  %1613 = phi float [ %1609, %1600 ], [ 0.000000e+00, %1562 ]
  %1614 = add i32 %54, 112
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = lshr i32 %1616, 8
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = call float @dx.op.dot3.f32(i32 55, float %1483, float %1484, float %1485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1623 = fmul fast float %1621, %1622
  %1624 = fadd fast float %1623, %1618
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  br i1 %1082, label %1627, label %1635

; <label>:1627                                    ; preds = %1610
  %1628 = fsub fast float 1.000000e+00, %1263
  %1629 = fmul fast float %1628, %1070
  %1630 = fmul fast float %1628, %1071
  %1631 = fmul fast float %1628, %1072
  %1632 = fmul fast float %1628, %1073
  %1633 = fmul fast float %1628, %1074
  %1634 = fmul fast float %1628, %1075
  br label %1635

; <label>:1635                                    ; preds = %1627, %1610
  %1636 = phi float [ %1629, %1627 ], [ %1070, %1610 ]
  %1637 = phi float [ %1630, %1627 ], [ %1071, %1610 ]
  %1638 = phi float [ %1631, %1627 ], [ %1072, %1610 ]
  %1639 = phi float [ %1632, %1627 ], [ %1073, %1610 ]
  %1640 = phi float [ %1633, %1627 ], [ %1074, %1610 ]
  %1641 = phi float [ %1634, %1627 ], [ %1075, %1610 ]
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 3
  %1645 = icmp eq i32 %1644, 3
  br i1 %1645, label %1724, label %1646

; <label>:1646                                    ; preds = %1635
  %1647 = and i32 %1643, 16
  %1648 = icmp ne i32 %1647, 0
  %1649 = select i1 %1648, float %1263, float 0.000000e+00
  %1650 = icmp eq i32 %1644, 0
  br i1 %1650, label %1651, label %1679

; <label>:1651                                    ; preds = %1646
  %1652 = and i32 %1643, 64
  %1653 = icmp ne i32 %1652, 0
  %1654 = select i1 %1653, float %1263, float 0.000000e+00
  %1655 = fsub fast float %1483, %1636
  %1656 = fsub fast float %1484, %1637
  %1657 = fsub fast float %1485, %1638
  %1658 = fmul fast float %1649, %1655
  %1659 = fmul fast float %1649, %1656
  %1660 = fmul fast float %1649, %1657
  %1661 = fadd fast float %1658, %1636
  %1662 = fadd fast float %1659, %1637
  %1663 = fadd fast float %1660, %1638
  %1664 = fsub fast float %1469, %1076
  %1665 = fmul fast float %1649, %1664
  %1666 = fadd fast float %1665, %1076
  %1667 = fsub fast float %1611, %1639
  %1668 = fsub fast float %1612, %1640
  %1669 = fsub fast float %1613, %1641
  %1670 = fmul fast float %1654, %1667
  %1671 = fmul fast float %1654, %1668
  %1672 = fmul fast float %1654, %1669
  %1673 = fadd fast float %1670, %1639
  %1674 = fadd fast float %1671, %1640
  %1675 = fadd fast float %1672, %1641
  %1676 = fsub fast float %1626, %1080
  %1677 = fmul fast float %1649, %1676
  %1678 = fadd fast float %1677, %1080
  br label %1724

; <label>:1679                                    ; preds = %1646
  %1680 = icmp eq i32 %1644, 1
  br i1 %1680, label %1681, label %1694

; <label>:1681                                    ; preds = %1679
  %1682 = fadd fast float %1483, -1.000000e+00
  %1683 = fadd fast float %1484, -1.000000e+00
  %1684 = fadd fast float %1485, -1.000000e+00
  %1685 = fmul fast float %1649, %1682
  %1686 = fmul fast float %1649, %1683
  %1687 = fmul fast float %1649, %1684
  %1688 = fadd fast float %1685, 1.000000e+00
  %1689 = fadd fast float %1686, 1.000000e+00
  %1690 = fadd fast float %1687, 1.000000e+00
  %1691 = fmul fast float %1688, %1636
  %1692 = fmul fast float %1689, %1637
  %1693 = fmul fast float %1690, %1638
  br label %1724

; <label>:1694                                    ; preds = %1679
  %1695 = icmp eq i32 %1644, 2
  br i1 %1695, label %1696, label %1724

; <label>:1696                                    ; preds = %1694
  %1697 = call float @dx.op.unary.f32(i32 24, float %1483)  ; Sqrt(value)
  %1698 = call float @dx.op.unary.f32(i32 24, float %1484)  ; Sqrt(value)
  %1699 = call float @dx.op.unary.f32(i32 24, float %1485)  ; Sqrt(value)
  %1700 = fadd fast float %1697, -5.000000e-01
  %1701 = fadd fast float %1698, -5.000000e-01
  %1702 = fadd fast float %1699, -5.000000e-01
  %1703 = fmul fast float %1700, %1649
  %1704 = fmul fast float %1701, %1649
  %1705 = fmul fast float %1702, %1649
  %1706 = fadd fast float %1703, 5.000000e-01
  %1707 = fadd fast float %1704, 5.000000e-01
  %1708 = fadd fast float %1705, 5.000000e-01
  %1709 = fmul fast float %1706, 2.000000e+00
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = fmul fast float %1710, %1636
  %1712 = fadd fast float %1711, %1709
  %1713 = fmul fast float %1712, %1636
  %1714 = fmul fast float %1707, 2.000000e+00
  %1715 = fsub fast float 1.000000e+00, %1714
  %1716 = fmul fast float %1715, %1637
  %1717 = fadd fast float %1716, %1714
  %1718 = fmul fast float %1717, %1637
  %1719 = fmul fast float %1708, 2.000000e+00
  %1720 = fsub fast float 1.000000e+00, %1719
  %1721 = fmul fast float %1720, %1638
  %1722 = fadd fast float %1721, %1719
  %1723 = fmul fast float %1722, %1638
  br label %1724

; <label>:1724                                    ; preds = %1696, %1694, %1681, %1651, %1635
  %1725 = phi float [ %1636, %1635 ], [ %1713, %1696 ], [ %1636, %1694 ], [ %1691, %1681 ], [ %1661, %1651 ]
  %1726 = phi float [ %1637, %1635 ], [ %1718, %1696 ], [ %1637, %1694 ], [ %1692, %1681 ], [ %1662, %1651 ]
  %1727 = phi float [ %1638, %1635 ], [ %1723, %1696 ], [ %1638, %1694 ], [ %1693, %1681 ], [ %1663, %1651 ]
  %1728 = phi float [ %1639, %1635 ], [ %1639, %1696 ], [ %1639, %1694 ], [ %1639, %1681 ], [ %1673, %1651 ]
  %1729 = phi float [ %1640, %1635 ], [ %1640, %1696 ], [ %1640, %1694 ], [ %1640, %1681 ], [ %1674, %1651 ]
  %1730 = phi float [ %1641, %1635 ], [ %1641, %1696 ], [ %1641, %1694 ], [ %1641, %1681 ], [ %1675, %1651 ]
  %1731 = phi float [ %1076, %1635 ], [ %1076, %1696 ], [ %1076, %1694 ], [ %1076, %1681 ], [ %1666, %1651 ]
  %1732 = phi float [ %1080, %1635 ], [ %1080, %1696 ], [ %1080, %1694 ], [ %1080, %1681 ], [ %1678, %1651 ]
  %1733 = and i32 %1643, 12
  %1734 = icmp eq i32 %1733, 12
  br i1 %1734, label %1807, label %1735

; <label>:1735                                    ; preds = %1724
  %1736 = and i32 %1643, 2097184
  %1737 = icmp eq i32 %1736, 2097184
  %1738 = select i1 %1737, float %1263, float 0.000000e+00
  %1739 = and i32 %1643, 4194336
  %1740 = icmp eq i32 %1739, 4194336
  %1741 = select i1 %1740, float %1263, float 0.000000e+00
  %1742 = and i32 %1643, 8388640
  %1743 = icmp eq i32 %1742, 8388640
  %1744 = select i1 %1743, float %1263, float 0.000000e+00
  %1745 = icmp eq i32 %1733, 0
  br i1 %1745, label %1746, label %1759

; <label>:1746                                    ; preds = %1735
  %1747 = fsub fast float %1564, %1068
  %1748 = fsub fast float %1565, %1069
  %1749 = fmul fast float %1738, %1747
  %1750 = fmul fast float %1738, %1748
  %1751 = fadd fast float %1749, %1068
  %1752 = fadd fast float %1750, %1069
  %1753 = fsub fast float %1566, %1079
  %1754 = fmul fast float %1741, %1753
  %1755 = fadd fast float %1754, %1079
  %1756 = fsub fast float %1563, %1078
  %1757 = fmul fast float %1744, %1756
  %1758 = fadd fast float %1757, %1078
  br label %1807

; <label>:1759                                    ; preds = %1735
  %1760 = icmp eq i32 %1733, 4
  br i1 %1760, label %1761, label %1793

; <label>:1761                                    ; preds = %1759
  %1762 = fmul fast float %1738, %1564
  %1763 = fmul fast float %1738, %1565
  %1764 = fadd fast float %1762, %1068
  %1765 = fadd fast float %1763, %1069
  %1766 = call float @dx.op.binary.f32(i32 36, float %1079, float %1566)  ; FMin(a,b)
  %1767 = fsub fast float %1766, %1079
  %1768 = fmul fast float %1767, %1741
  %1769 = fadd fast float %1768, %1079
  %1770 = fadd fast float %1563, %1078
  %1771 = fmul fast float %1770, 0x3FF337FAE0000000
  %1772 = fmul fast float %1078, %1078
  %1773 = fmul fast float %1563, %1563
  %1774 = fadd fast float %1773, %1772
  %1775 = fmul fast float %1774, 0x3FE5152B00000000
  %1776 = fmul fast float %1078, 0xBFCC1F85E0000000
  %1777 = fmul fast float %1776, %1563
  %1778 = fadd fast float %1777, 0xBFE1363700000000
  %1779 = fadd fast float %1778, %1771
  %1780 = fsub fast float %1779, %1775
  %1781 = fmul fast float %1770, 0x3FBA6F0D00000000
  %1782 = fmul fast float %1774, 0x3FD0432880000000
  %1783 = fmul fast float %1078, 0xBFEF110800000000
  %1784 = fmul fast float %1783, %1563
  %1785 = fadd fast float %1784, 1.000000e+00
  %1786 = fsub fast float %1785, %1781
  %1787 = fadd fast float %1786, %1782
  %1788 = fdiv fast float %1780, %1787
  %1789 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1790 = fsub fast float %1789, %1078
  %1791 = fmul fast float %1790, %1744
  %1792 = fadd fast float %1791, %1078
  br label %1807

; <label>:1793                                    ; preds = %1759
  %1794 = icmp eq i32 %1733, 8
  br i1 %1794, label %1795, label %1807

; <label>:1795                                    ; preds = %1793
  %1796 = fmul fast float %1738, %1564
  %1797 = fmul fast float %1738, %1565
  %1798 = fadd fast float %1796, %1068
  %1799 = fadd fast float %1797, %1069
  %1800 = call float @dx.op.binary.f32(i32 36, float %1079, float %1566)  ; FMin(a,b)
  %1801 = fsub fast float %1800, %1079
  %1802 = fmul fast float %1801, %1741
  %1803 = fadd fast float %1802, %1079
  %1804 = fsub fast float %1563, %1078
  %1805 = fmul fast float %1744, %1804
  %1806 = fadd fast float %1805, %1078
  br label %1807

; <label>:1807                                    ; preds = %1795, %1793, %1761, %1746, %1724, %1262, %1081, %1067
  %1808 = phi float [ %1068, %1724 ], [ %1068, %1262 ], [ %1068, %1067 ], [ %1798, %1795 ], [ %1068, %1793 ], [ %1764, %1761 ], [ %1751, %1746 ], [ %1068, %1081 ]
  %1809 = phi float [ %1069, %1724 ], [ %1069, %1262 ], [ %1069, %1067 ], [ %1799, %1795 ], [ %1069, %1793 ], [ %1765, %1761 ], [ %1752, %1746 ], [ %1069, %1081 ]
  %1810 = phi float [ %1725, %1724 ], [ %1070, %1262 ], [ %1070, %1067 ], [ %1725, %1795 ], [ %1725, %1793 ], [ %1725, %1761 ], [ %1725, %1746 ], [ %1070, %1081 ]
  %1811 = phi float [ %1726, %1724 ], [ %1071, %1262 ], [ %1071, %1067 ], [ %1726, %1795 ], [ %1726, %1793 ], [ %1726, %1761 ], [ %1726, %1746 ], [ %1071, %1081 ]
  %1812 = phi float [ %1727, %1724 ], [ %1072, %1262 ], [ %1072, %1067 ], [ %1727, %1795 ], [ %1727, %1793 ], [ %1727, %1761 ], [ %1727, %1746 ], [ %1072, %1081 ]
  %1813 = phi float [ %1728, %1724 ], [ %1073, %1262 ], [ %1073, %1067 ], [ %1728, %1795 ], [ %1728, %1793 ], [ %1728, %1761 ], [ %1728, %1746 ], [ %1073, %1081 ]
  %1814 = phi float [ %1729, %1724 ], [ %1074, %1262 ], [ %1074, %1067 ], [ %1729, %1795 ], [ %1729, %1793 ], [ %1729, %1761 ], [ %1729, %1746 ], [ %1074, %1081 ]
  %1815 = phi float [ %1730, %1724 ], [ %1075, %1262 ], [ %1075, %1067 ], [ %1730, %1795 ], [ %1730, %1793 ], [ %1730, %1761 ], [ %1730, %1746 ], [ %1075, %1081 ]
  %1816 = phi float [ %1731, %1724 ], [ %1076, %1262 ], [ %1076, %1067 ], [ %1731, %1795 ], [ %1731, %1793 ], [ %1731, %1761 ], [ %1731, %1746 ], [ %1076, %1081 ]
  %1817 = phi float [ %1078, %1724 ], [ %1078, %1262 ], [ %1078, %1067 ], [ %1806, %1795 ], [ %1078, %1793 ], [ %1792, %1761 ], [ %1758, %1746 ], [ %1078, %1081 ]
  %1818 = phi float [ %1079, %1724 ], [ %1079, %1262 ], [ %1079, %1067 ], [ %1803, %1795 ], [ %1079, %1793 ], [ %1769, %1761 ], [ %1755, %1746 ], [ %1079, %1081 ]
  %1819 = phi float [ %1732, %1724 ], [ %1080, %1262 ], [ %1080, %1067 ], [ %1732, %1795 ], [ %1732, %1793 ], [ %1732, %1761 ], [ %1732, %1746 ], [ %1080, %1081 ]
  br i1 %468, label %2546, label %1820

; <label>:1820                                    ; preds = %1807
  %1821 = icmp ult i32 %524, 3
  %1822 = add i32 %54, 56
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = add i32 %54, 60
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = or i32 %1827, %1824
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %2546, label %1830

; <label>:1830                                    ; preds = %1820
  %1831 = and i32 %1824, 262144
  %1832 = icmp ne i32 %1831, 0
  %1833 = select i1 %1832, float %59, float 1.000000e+00
  %1834 = select i1 %1832, float %60, float 0.000000e+00
  %1835 = select i1 %1832, float %61, float 0.000000e+00
  %1836 = select i1 %1832, float %62, float 1.000000e+00
  %1837 = select i1 %1832, float %63, float %86
  %1838 = select i1 %1832, float %64, float %87
  %1839 = add i32 %54, 316
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = lshr i32 %1841, 16
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = fmul fast float %1843, 0x3F50624DE0000000
  %1845 = add i32 %54, 120
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = lshr i32 %1847, 16
  %1849 = and i32 %1848, 255
  %1850 = lshr i32 %1847, 24
  %1851 = add i32 %54, 324
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 65535
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = lshr i32 %1853, 16
  %1857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1856)  ; LegacyF16ToF32(value)
  %1858 = add i32 %54, 64
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = lshr i32 %1860, 22
  %1862 = shl nuw nsw i32 %1861, 5
  %1863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1862)  ; LegacyF16ToF32(value)
  %1864 = shl i32 %1860, 4
  %1865 = and i32 %1864, 32752
  %1866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1865)  ; LegacyF16ToF32(value)
  %1867 = lshr i32 %1860, 7
  %1868 = and i32 %1867, 32752
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 3
  %1872 = fmul fast float %1871, 1.000000e+03
  %1873 = fmul fast float %418, %1872
  %1874 = call float @dx.op.unary.f32(i32 22, float %1873)  ; Frc(value)
  %1875 = fadd fast float %1874, %408
  %1876 = fmul fast float %419, %1872
  %1877 = call float @dx.op.unary.f32(i32 22, float %1876)  ; Frc(value)
  %1878 = fadd fast float %1877, %410
  %1879 = fmul fast float %1844, %1872
  %1880 = call float @dx.op.unary.f32(i32 22, float %1879)  ; Frc(value)
  %1881 = fmul fast float %1880, 0x401921FB60000000
  %1882 = fadd fast float %1881, %1863
  %1883 = call float @dx.op.unary.f32(i32 13, float %1882)  ; Sin(value)
  %1884 = call float @dx.op.unary.f32(i32 12, float %1882)  ; Cos(value)
  %1885 = fsub fast float -0.000000e+00, %1883
  %1886 = fadd fast float %1837, -5.000000e-01
  %1887 = fadd fast float %1838, -5.000000e-01
  %1888 = fmul fast float %1855, %1886
  %1889 = fmul fast float %1857, %1887
  %1890 = fadd fast float %1888, 5.000000e-01
  %1891 = fadd fast float %1889, 5.000000e-01
  %1892 = fmul fast float %1866, %1890
  %1893 = fmul fast float %1869, %1891
  %1894 = fmul fast float %1884, %1892
  %1895 = call float @dx.op.tertiary.f32(i32 46, float %1885, float %1893, float %1894)  ; FMad(a,b,c)
  %1896 = fmul fast float %1883, %1892
  %1897 = call float @dx.op.tertiary.f32(i32 46, float %1884, float %1893, float %1896)  ; FMad(a,b,c)
  %1898 = fadd fast float %1875, %1895
  %1899 = fadd fast float %1878, %1897
  %1900 = icmp ugt i32 %1849, 1
  %1901 = icmp ugt i32 %1847, 33554431
  %1902 = or i1 %1901, %1900
  br i1 %1902, label %1903, label %1928

; <label>:1903                                    ; preds = %1830
  %1904 = add i32 %54, 260
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = lshr i32 %1906, 16
  %1908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1907)  ; LegacyF16ToF32(value)
  %1909 = fmul fast float %1871, %1908
  %1910 = call float @dx.op.unary.f32(i32 22, float %1909)  ; Frc(value)
  %1911 = mul nuw nsw i32 %1849, %1850
  %1912 = uitofp i32 %1911 to float
  %1913 = fmul fast float %1910, %1912
  %1914 = call float @dx.op.unary.f32(i32 27, float %1913)  ; Round_ni(value)
  %1915 = fptoui float %1914 to i32
  %1916 = urem i32 %1915, %1849
  %1917 = udiv i32 %1915, %1850
  %1918 = call float @dx.op.unary.f32(i32 22, float %1898)  ; Frc(value)
  %1919 = call float @dx.op.unary.f32(i32 22, float %1899)  ; Frc(value)
  %1920 = uitofp i32 %1916 to float
  %1921 = uitofp i32 %1917 to float
  %1922 = fadd fast float %1918, %1920
  %1923 = fadd fast float %1919, %1921
  %1924 = uitofp i32 %1849 to float
  %1925 = uitofp i32 %1850 to float
  %1926 = fdiv fast float %1922, %1924
  %1927 = fdiv fast float %1923, %1925
  br label %1928

; <label>:1928                                    ; preds = %1903, %1830
  %1929 = phi float [ %1926, %1903 ], [ %1898, %1830 ]
  %1930 = phi float [ %1927, %1903 ], [ %1899, %1830 ]
  %1931 = and i32 %1824, 256
  %1932 = icmp eq i32 %1931, 0
  br i1 %1932, label %1979, label %1933

; <label>:1933                                    ; preds = %1928
  %1934 = add i32 %54, 480
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = add i32 %1936, 0
  %1938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1938, %dx.types.Handle %101, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  %1941 = add i32 %54, 132
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = shl i32 %1943, 4
  %1945 = and i32 %1944, 32752
  %1946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1945)  ; LegacyF16ToF32(value)
  %1947 = lshr i32 %1943, 7
  %1948 = and i32 %1947, 32752
  %1949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1948)  ; LegacyF16ToF32(value)
  %1950 = fsub fast float 1.000000e+00, %520
  %1951 = call float @dx.op.binary.f32(i32 35, float %1950, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1952 = bitcast float %520 to i32
  %1953 = sitofp i32 %1952 to float
  %1954 = fadd fast float %1953, 0xC1CFBF8940000000
  %1955 = fmul fast float %1949, %1954
  %1956 = fadd fast float %1955, 0x41CFBF8940000000
  %1957 = fptosi float %1956 to i32
  %1958 = bitcast i32 %1957 to float
  %1959 = bitcast float %1951 to i32
  %1960 = sitofp i32 %1959 to float
  %1961 = fadd fast float %1960, 0xC1CFBF8940000000
  %1962 = fmul fast float %1961, %1949
  %1963 = fadd fast float %1962, 0x41CFBF8940000000
  %1964 = fptosi float %1963 to i32
  %1965 = bitcast i32 %1964 to float
  %1966 = fmul fast float %1958, %1946
  %1967 = fmul fast float %1965, %1946
  %1968 = fsub fast float %1951, %1966
  %1969 = fadd fast float %1967, %1951
  %1970 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1971 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1972 = fsub fast float %1940, %1970
  %1973 = fsub fast float %1971, %1970
  %1974 = bitcast float %1973 to i32
  %1975 = sub nsw i32 2129859010, %1974
  %1976 = bitcast i32 %1975 to float
  %1977 = fmul fast float %1976, %1972
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  br label %1979

; <label>:1979                                    ; preds = %1933, %1928
  %1980 = phi float [ %1978, %1933 ], [ %520, %1928 ]
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = and i32 %1982, 128
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %2001, label %1985

; <label>:1985                                    ; preds = %1979
  %1986 = add i32 %54, 464
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = add i32 %1988, 0
  %1990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1989, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1991 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1990, %dx.types.Handle %101, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = and i32 %1994, 524288
  %1996 = icmp ne i32 %1995, 0
  %1997 = fcmp fast ogt float %1992, 0x3FE0101020000000
  %1998 = select i1 %1997, float 1.000000e+00, float 0.000000e+00
  %1999 = select i1 %1996, float %1998, float %1992
  %2000 = fmul fast float %1999, %1980
  br label %2001

; <label>:2001                                    ; preds = %1985, %1979
  %2002 = phi float [ %2000, %1985 ], [ %1980, %1979 ]
  %2003 = fcmp fast ult float %2002, 0x3F70101020000000
  br i1 %2003, label %2546, label %2004

; <label>:2004                                    ; preds = %2001
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = and i32 %2006, 16
  %2008 = icmp eq i32 %2007, 0
  br i1 %2008, label %2207, label %2009

; <label>:2009                                    ; preds = %2004
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = add i32 %54, 416
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = add i32 %2014, 0
  %2016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2016, %dx.types.Handle %100, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.ResRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.ResRet.f32 %2017, 2
  %2021 = extractvalue %dx.types.ResRet.f32 %2017, 3
  %2022 = and i32 %2011, 255
  %2023 = uitofp i32 %2022 to float
  %2024 = lshr i32 %2011, 8
  %2025 = and i32 %2024, 255
  %2026 = uitofp i32 %2025 to float
  %2027 = fmul fast float %2021, %2023
  %2028 = fadd fast float %2027, %2026
  %2029 = fmul fast float %2028, 0x3F70101000000000
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 512
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2042, label %2034

; <label>:2034                                    ; preds = %2009
  %2035 = add i32 %54, 496
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = add i32 %2037, 0
  %2039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2040 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2039, %dx.types.Handle %101, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  br label %2042

; <label>:2042                                    ; preds = %2034, %2009
  %2043 = phi float [ %2041, %2034 ], [ 1.000000e+00, %2009 ]
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = and i32 %2045, 33554432
  %2047 = icmp eq i32 %2046, 0
  br i1 %2047, label %2154, label %2048

; <label>:2048                                    ; preds = %2042
  %2049 = add i32 %54, 256
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = and i32 %2051, 65535
  %2053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2052)  ; LegacyF16ToF32(value)
  %2054 = lshr i32 %2051, 16
  %2055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2054)  ; LegacyF16ToF32(value)
  %2056 = add i32 %54, 260
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = and i32 %2058, 65535
  %2060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2059)  ; LegacyF16ToF32(value)
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = lshr i32 %2062, 24
  %2064 = uitofp i32 %2063 to float
  %2065 = fmul fast float %2064, 0x3F70101020000000
  %2066 = and i32 %2062, 255
  %2067 = uitofp i32 %2066 to float
  %2068 = fmul fast float %2067, 0x3F70101020000000
  %2069 = lshr i32 %2062, 8
  %2070 = and i32 %2069, 255
  %2071 = uitofp i32 %2070 to float
  %2072 = fmul fast float %2071, 0x3F70101020000000
  %2073 = lshr i32 %2062, 16
  %2074 = and i32 %2073, 255
  %2075 = uitofp i32 %2074 to float
  %2076 = fmul fast float %2075, 0x3F70101020000000
  %2077 = add i32 %54, 252
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = lshr i32 %2079, 24
  %2081 = uitofp i32 %2080 to float
  %2082 = fmul fast float %2081, 0x3F70101020000000
  %2083 = and i32 %2079, 255
  %2084 = uitofp i32 %2083 to float
  %2085 = fmul fast float %2084, 0x3F70101020000000
  %2086 = lshr i32 %2079, 8
  %2087 = and i32 %2086, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2088, 0x3F70101020000000
  %2090 = lshr i32 %2079, 16
  %2091 = and i32 %2090, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = fmul fast float %2092, 0x3F70101020000000
  %2094 = bitcast float %2018 to i32
  %2095 = ashr i32 %2094, 1
  %2096 = sub nsw i32 1597463174, %2095
  %2097 = bitcast i32 %2096 to float
  %2098 = fmul fast float %2018, 5.000000e-01
  %2099 = fmul fast float %2097, %2097
  %2100 = fmul fast float %2099, %2098
  %2101 = fsub fast float 1.500000e+00, %2100
  %2102 = fmul fast float %2097, %2018
  %2103 = fmul fast float %2102, %2101
  %2104 = bitcast float %2019 to i32
  %2105 = ashr i32 %2104, 1
  %2106 = sub nsw i32 1597463174, %2105
  %2107 = bitcast i32 %2106 to float
  %2108 = fmul fast float %2019, 5.000000e-01
  %2109 = fmul fast float %2107, %2107
  %2110 = fmul fast float %2109, %2108
  %2111 = fsub fast float 1.500000e+00, %2110
  %2112 = fmul fast float %2107, %2019
  %2113 = fmul fast float %2112, %2111
  %2114 = bitcast float %2020 to i32
  %2115 = ashr i32 %2114, 1
  %2116 = sub nsw i32 1597463174, %2115
  %2117 = bitcast i32 %2116 to float
  %2118 = fmul fast float %2020, 5.000000e-01
  %2119 = fmul fast float %2117, %2117
  %2120 = fmul fast float %2119, %2118
  %2121 = fsub fast float 1.500000e+00, %2120
  %2122 = fmul fast float %2117, %2020
  %2123 = fmul fast float %2122, %2121
  %2124 = fsub fast float %2103, %2085
  %2125 = fsub fast float %2113, %2089
  %2126 = fsub fast float %2123, %2093
  %2127 = fmul fast float %2124, %2053
  %2128 = fmul fast float %2125, %2055
  %2129 = fmul fast float %2126, %2060
  %2130 = fadd fast float %2127, %2068
  %2131 = fadd fast float %2128, %2072
  %2132 = fadd fast float %2129, %2076
  %2133 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2134 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2135 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2136 = fmul fast float %2133, %2133
  %2137 = fmul fast float %2134, %2134
  %2138 = fmul fast float %2135, %2135
  %2139 = fsub fast float %2136, %2018
  %2140 = fsub fast float %2137, %2019
  %2141 = fsub fast float %2138, %2020
  %2142 = fmul fast float %2139, %2043
  %2143 = fmul fast float %2140, %2043
  %2144 = fmul fast float %2141, %2043
  %2145 = fadd fast float %2142, %2018
  %2146 = fadd fast float %2143, %2019
  %2147 = fadd fast float %2144, %2020
  %2148 = fadd fast float %2065, %2029
  %2149 = fsub fast float %2148, %2082
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2151 = fsub fast float %2150, %2029
  %2152 = fmul fast float %2151, %2043
  %2153 = fadd fast float %2152, %2029
  br label %2207

; <label>:2154                                    ; preds = %2042
  %2155 = and i32 %2045, 134217728
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2191, label %2157

; <label>:2157                                    ; preds = %2154
  %2158 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %2159 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %2160 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %2161 = fadd fast float %2158, -5.000000e-01
  %2162 = fadd fast float %2159, -5.000000e-01
  %2163 = fadd fast float %2160, -5.000000e-01
  %2164 = fmul fast float %2161, %2043
  %2165 = fmul fast float %2162, %2043
  %2166 = fmul fast float %2163, %2043
  %2167 = fadd fast float %2164, 5.000000e-01
  %2168 = fadd fast float %2165, 5.000000e-01
  %2169 = fadd fast float %2166, 5.000000e-01
  %2170 = call float @dx.op.unary.f32(i32 24, float %2018)  ; Sqrt(value)
  %2171 = call float @dx.op.unary.f32(i32 24, float %2019)  ; Sqrt(value)
  %2172 = call float @dx.op.unary.f32(i32 24, float %2020)  ; Sqrt(value)
  %2173 = fmul fast float %2167, 2.000000e+00
  %2174 = fsub fast float 1.000000e+00, %2173
  %2175 = fmul fast float %2174, %2170
  %2176 = fadd fast float %2175, %2173
  %2177 = fmul fast float %2176, %2170
  %2178 = fmul fast float %2168, 2.000000e+00
  %2179 = fsub fast float 1.000000e+00, %2178
  %2180 = fmul fast float %2179, %2171
  %2181 = fadd fast float %2180, %2178
  %2182 = fmul fast float %2181, %2171
  %2183 = fmul fast float %2169, 2.000000e+00
  %2184 = fsub fast float 1.000000e+00, %2183
  %2185 = fmul fast float %2184, %2172
  %2186 = fadd fast float %2185, %2183
  %2187 = fmul fast float %2186, %2172
  %2188 = fmul fast float %2177, %2177
  %2189 = fmul fast float %2182, %2182
  %2190 = fmul fast float %2187, %2187
  br label %2207

; <label>:2191                                    ; preds = %2154
  %2192 = fmul fast float %395, %395
  %2193 = fmul fast float %399, %399
  %2194 = fmul fast float %403, %403
  %2195 = fadd fast float %2192, -1.000000e+00
  %2196 = fadd fast float %2193, -1.000000e+00
  %2197 = fadd fast float %2194, -1.000000e+00
  %2198 = fmul fast float %2043, %2195
  %2199 = fmul fast float %2043, %2196
  %2200 = fmul fast float %2043, %2197
  %2201 = fadd fast float %2198, 1.000000e+00
  %2202 = fadd fast float %2199, 1.000000e+00
  %2203 = fadd fast float %2200, 1.000000e+00
  %2204 = fmul fast float %2201, %2018
  %2205 = fmul fast float %2202, %2019
  %2206 = fmul fast float %2203, %2020
  br label %2207

; <label>:2207                                    ; preds = %2191, %2157, %2048, %2004
  %2208 = phi float [ %2153, %2048 ], [ %2029, %2157 ], [ %2029, %2191 ], [ 0x3FA23C0BE0000000, %2004 ]
  %2209 = phi float [ %2145, %2048 ], [ %2188, %2157 ], [ %2204, %2191 ], [ 1.000000e+00, %2004 ]
  %2210 = phi float [ %2146, %2048 ], [ %2189, %2157 ], [ %2205, %2191 ], [ 1.000000e+00, %2004 ]
  %2211 = phi float [ %2147, %2048 ], [ %2190, %2157 ], [ %2206, %2191 ], [ 1.000000e+00, %2004 ]
  %2212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.i32 %2212, 1
  %2214 = and i32 %2213, 1
  %2215 = icmp ne i32 %2214, 0
  %2216 = add i32 %54, 356
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 32
  %2220 = icmp ne i32 %2219, 0
  %2221 = and i1 %2215, %2220
  %2222 = select i1 %2221, float 1.000000e+00, float %2209
  %2223 = select i1 %2221, float 0x3FD3333340000000, float %2210
  %2224 = select i1 %2221, float 0x3FD3333340000000, float %2211
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 32
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2301, label %2229

; <label>:2229                                    ; preds = %2207
  %2230 = add i32 %54, 124
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = add i32 %54, 432
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = add i32 %2235, 0
  %2237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2238 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2237, %dx.types.Handle %100, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2239 = extractvalue %dx.types.ResRet.f32 %2238, 0
  %2240 = extractvalue %dx.types.ResRet.f32 %2238, 1
  %2241 = extractvalue %dx.types.ResRet.f32 %2238, 2
  %2242 = extractvalue %dx.types.ResRet.f32 %2238, 3
  %2243 = and i32 %2232, 255
  %2244 = uitofp i32 %2243 to float
  %2245 = lshr i32 %2232, 8
  %2246 = and i32 %2245, 255
  %2247 = uitofp i32 %2246 to float
  %2248 = lshr i32 %2232, 16
  %2249 = and i32 %2248, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101000000000
  %2252 = fmul fast float %2239, %2244
  %2253 = fadd fast float %2252, %2247
  %2254 = fmul fast float %2253, 0x3F70101000000000
  %2255 = fadd fast float %2240, -5.000000e-01
  %2256 = fadd fast float %2242, -5.000000e-01
  %2257 = fmul fast float %2255, %2251
  %2258 = fmul fast float %2256, %2251
  %2259 = fadd fast float %2257, 5.000000e-01
  %2260 = fadd fast float %2258, 5.000000e-01
  %2261 = fmul fast float %2259, 2.000000e+00
  %2262 = fadd fast float %2261, -1.000000e+00
  %2263 = fmul fast float %2260, 2.000000e+00
  %2264 = fadd fast float %2263, -1.000000e+00
  %2265 = fadd fast float %2262, %2264
  %2266 = fmul fast float %2265, 5.000000e-01
  %2267 = fsub fast float %2262, %2264
  %2268 = fmul fast float %2267, 5.000000e-01
  %2269 = call float @dx.op.unary.f32(i32 6, float %2266)  ; FAbs(value)
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = call float @dx.op.unary.f32(i32 6, float %2268)  ; FAbs(value)
  %2272 = fsub fast float %2270, %2271
  %2273 = call float @dx.op.dot3.f32(i32 55, float %2266, float %2268, float %2272, float %2266, float %2268, float %2272)  ; Dot3(ax,ay,az,bx,by,bz)
  %2274 = call float @dx.op.unary.f32(i32 25, float %2273)  ; Rsqrt(value)
  %2275 = fmul fast float %2266, %2274
  %2276 = fmul fast float %2268, %2274
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = and i32 %2278, 67108864
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2297, label %2281

; <label>:2281                                    ; preds = %2229
  %2282 = add i32 %54, 312
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 65535
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = and i32 %2288, 65535
  %2290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2289)  ; LegacyF16ToF32(value)
  %2291 = lshr i32 %2284, 16
  %2292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2291)  ; LegacyF16ToF32(value)
  %2293 = fsub fast float %2254, %2292
  %2294 = fmul fast float %2293, %2286
  %2295 = fadd fast float %2294, %2290
  %2296 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  br label %2297

; <label>:2297                                    ; preds = %2281, %2229
  %2298 = phi float [ %2296, %2281 ], [ %2254, %2229 ]
  %2299 = call float @dx.op.dot2.f32(i32 54, float %2275, float %2276, float %1833, float %1834)  ; Dot2(ax,ay,bx,by)
  %2300 = call float @dx.op.dot2.f32(i32 54, float %2275, float %2276, float %1835, float %1836)  ; Dot2(ax,ay,bx,by)
  br label %2301

; <label>:2301                                    ; preds = %2297, %2207
  %2302 = phi float [ %2298, %2297 ], [ 0x3FD6666660000000, %2207 ]
  %2303 = phi float [ %2299, %2297 ], [ 0.000000e+00, %2207 ]
  %2304 = phi float [ %2300, %2297 ], [ 0.000000e+00, %2207 ]
  %2305 = phi float [ %2241, %2297 ], [ 1.000000e+00, %2207 ]
  %2306 = add i32 %54, 192
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = lshr i32 %2308, 22
  %2310 = shl nuw nsw i32 %2309, 5
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 64
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %2349, label %2316

; <label>:2316                                    ; preds = %2301
  %2317 = add i32 %54, 448
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %2319, 0
  %2321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2320, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = and i32 %2323, 131072
  %2325 = icmp eq i32 %2324, 0
  %2326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2321, %dx.types.Handle %100, float %1929, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.ResRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.ResRet.f32 %2326, 2
  %2330 = fmul fast float %2327, %383
  %2331 = fmul fast float %2328, %386
  %2332 = fmul fast float %2329, %389
  br i1 %2325, label %2339, label %2333

; <label>:2333                                    ; preds = %2316
  %2334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.f32 %2334, 0
  %2336 = fmul fast float %2335, %2330
  %2337 = fmul fast float %2335, %2331
  %2338 = fmul fast float %2335, %2332
  br label %2339

; <label>:2339                                    ; preds = %2333, %2316
  %2340 = phi float [ %2336, %2333 ], [ %2330, %2316 ]
  %2341 = phi float [ %2337, %2333 ], [ %2331, %2316 ]
  %2342 = phi float [ %2338, %2333 ], [ %2332, %2316 ]
  %2343 = fmul fast float %2340, %2311
  %2344 = select i1 %282, float %2343, float %2340
  %2345 = call float @dx.op.dot3.f32(i32 55, float %2344, float %2341, float %2342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2346 = select i1 %282, float 0.000000e+00, float %2340
  %2347 = select i1 %282, float %2345, float %2341
  %2348 = select i1 %282, float 0.000000e+00, float %2342
  br label %2349

; <label>:2349                                    ; preds = %2339, %2301
  %2350 = phi float [ %2346, %2339 ], [ 0.000000e+00, %2301 ]
  %2351 = phi float [ %2347, %2339 ], [ 0.000000e+00, %2301 ]
  %2352 = phi float [ %2348, %2339 ], [ 0.000000e+00, %2301 ]
  %2353 = add i32 %54, 128
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = lshr i32 %2355, 8
  %2359 = and i32 %2358, 255
  %2360 = uitofp i32 %2359 to float
  %2361 = call float @dx.op.dot3.f32(i32 55, float %2222, float %2223, float %2224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2362 = fmul fast float %2360, %2361
  %2363 = fadd fast float %2362, %2357
  %2364 = fmul fast float %2363, 0x3F70101020000000
  %2365 = call float @dx.op.unary.f32(i32 7, float %2364)  ; Saturate(value)
  br i1 %1821, label %2366, label %2374

; <label>:2366                                    ; preds = %2349
  %2367 = fsub fast float 1.000000e+00, %2002
  %2368 = fmul fast float %2367, %1810
  %2369 = fmul fast float %2367, %1811
  %2370 = fmul fast float %2367, %1812
  %2371 = fmul fast float %2367, %1813
  %2372 = fmul fast float %2367, %1814
  %2373 = fmul fast float %2367, %1815
  br label %2374

; <label>:2374                                    ; preds = %2366, %2349
  %2375 = phi float [ %2368, %2366 ], [ %1810, %2349 ]
  %2376 = phi float [ %2369, %2366 ], [ %1811, %2349 ]
  %2377 = phi float [ %2370, %2366 ], [ %1812, %2349 ]
  %2378 = phi float [ %2371, %2366 ], [ %1813, %2349 ]
  %2379 = phi float [ %2372, %2366 ], [ %1814, %2349 ]
  %2380 = phi float [ %2373, %2366 ], [ %1815, %2349 ]
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 3
  %2384 = icmp eq i32 %2383, 3
  br i1 %2384, label %2463, label %2385

; <label>:2385                                    ; preds = %2374
  %2386 = and i32 %2382, 16
  %2387 = icmp ne i32 %2386, 0
  %2388 = select i1 %2387, float %2002, float 0.000000e+00
  %2389 = icmp eq i32 %2383, 0
  br i1 %2389, label %2390, label %2418

; <label>:2390                                    ; preds = %2385
  %2391 = and i32 %2382, 64
  %2392 = icmp ne i32 %2391, 0
  %2393 = select i1 %2392, float %2002, float 0.000000e+00
  %2394 = fsub fast float %2222, %2375
  %2395 = fsub fast float %2223, %2376
  %2396 = fsub fast float %2224, %2377
  %2397 = fmul fast float %2388, %2394
  %2398 = fmul fast float %2388, %2395
  %2399 = fmul fast float %2388, %2396
  %2400 = fadd fast float %2397, %2375
  %2401 = fadd fast float %2398, %2376
  %2402 = fadd fast float %2399, %2377
  %2403 = fsub fast float %2208, %1816
  %2404 = fmul fast float %2388, %2403
  %2405 = fadd fast float %2404, %1816
  %2406 = fsub fast float %2350, %2378
  %2407 = fsub fast float %2351, %2379
  %2408 = fsub fast float %2352, %2380
  %2409 = fmul fast float %2393, %2406
  %2410 = fmul fast float %2393, %2407
  %2411 = fmul fast float %2393, %2408
  %2412 = fadd fast float %2409, %2378
  %2413 = fadd fast float %2410, %2379
  %2414 = fadd fast float %2411, %2380
  %2415 = fsub fast float %2365, %1819
  %2416 = fmul fast float %2388, %2415
  %2417 = fadd fast float %2416, %1819
  br label %2463

; <label>:2418                                    ; preds = %2385
  %2419 = icmp eq i32 %2383, 1
  br i1 %2419, label %2420, label %2433

; <label>:2420                                    ; preds = %2418
  %2421 = fadd fast float %2222, -1.000000e+00
  %2422 = fadd fast float %2223, -1.000000e+00
  %2423 = fadd fast float %2224, -1.000000e+00
  %2424 = fmul fast float %2388, %2421
  %2425 = fmul fast float %2388, %2422
  %2426 = fmul fast float %2388, %2423
  %2427 = fadd fast float %2424, 1.000000e+00
  %2428 = fadd fast float %2425, 1.000000e+00
  %2429 = fadd fast float %2426, 1.000000e+00
  %2430 = fmul fast float %2427, %2375
  %2431 = fmul fast float %2428, %2376
  %2432 = fmul fast float %2429, %2377
  br label %2463

; <label>:2433                                    ; preds = %2418
  %2434 = icmp eq i32 %2383, 2
  br i1 %2434, label %2435, label %2463

; <label>:2435                                    ; preds = %2433
  %2436 = call float @dx.op.unary.f32(i32 24, float %2222)  ; Sqrt(value)
  %2437 = call float @dx.op.unary.f32(i32 24, float %2223)  ; Sqrt(value)
  %2438 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2439 = fadd fast float %2436, -5.000000e-01
  %2440 = fadd fast float %2437, -5.000000e-01
  %2441 = fadd fast float %2438, -5.000000e-01
  %2442 = fmul fast float %2439, %2388
  %2443 = fmul fast float %2440, %2388
  %2444 = fmul fast float %2441, %2388
  %2445 = fadd fast float %2442, 5.000000e-01
  %2446 = fadd fast float %2443, 5.000000e-01
  %2447 = fadd fast float %2444, 5.000000e-01
  %2448 = fmul fast float %2445, 2.000000e+00
  %2449 = fsub fast float 1.000000e+00, %2448
  %2450 = fmul fast float %2449, %2375
  %2451 = fadd fast float %2450, %2448
  %2452 = fmul fast float %2451, %2375
  %2453 = fmul fast float %2446, 2.000000e+00
  %2454 = fsub fast float 1.000000e+00, %2453
  %2455 = fmul fast float %2454, %2376
  %2456 = fadd fast float %2455, %2453
  %2457 = fmul fast float %2456, %2376
  %2458 = fmul fast float %2447, 2.000000e+00
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = fmul fast float %2459, %2377
  %2461 = fadd fast float %2460, %2458
  %2462 = fmul fast float %2461, %2377
  br label %2463

; <label>:2463                                    ; preds = %2435, %2433, %2420, %2390, %2374
  %2464 = phi float [ %2375, %2374 ], [ %2452, %2435 ], [ %2375, %2433 ], [ %2430, %2420 ], [ %2400, %2390 ]
  %2465 = phi float [ %2376, %2374 ], [ %2457, %2435 ], [ %2376, %2433 ], [ %2431, %2420 ], [ %2401, %2390 ]
  %2466 = phi float [ %2377, %2374 ], [ %2462, %2435 ], [ %2377, %2433 ], [ %2432, %2420 ], [ %2402, %2390 ]
  %2467 = phi float [ %2378, %2374 ], [ %2378, %2435 ], [ %2378, %2433 ], [ %2378, %2420 ], [ %2412, %2390 ]
  %2468 = phi float [ %2379, %2374 ], [ %2379, %2435 ], [ %2379, %2433 ], [ %2379, %2420 ], [ %2413, %2390 ]
  %2469 = phi float [ %2380, %2374 ], [ %2380, %2435 ], [ %2380, %2433 ], [ %2380, %2420 ], [ %2414, %2390 ]
  %2470 = phi float [ %1816, %2374 ], [ %1816, %2435 ], [ %1816, %2433 ], [ %1816, %2420 ], [ %2405, %2390 ]
  %2471 = phi float [ %1819, %2374 ], [ %1819, %2435 ], [ %1819, %2433 ], [ %1819, %2420 ], [ %2417, %2390 ]
  %2472 = and i32 %2382, 12
  %2473 = icmp eq i32 %2472, 12
  br i1 %2473, label %2546, label %2474

; <label>:2474                                    ; preds = %2463
  %2475 = and i32 %2382, 2097184
  %2476 = icmp eq i32 %2475, 2097184
  %2477 = select i1 %2476, float %2002, float 0.000000e+00
  %2478 = and i32 %2382, 4194336
  %2479 = icmp eq i32 %2478, 4194336
  %2480 = select i1 %2479, float %2002, float 0.000000e+00
  %2481 = and i32 %2382, 8388640
  %2482 = icmp eq i32 %2481, 8388640
  %2483 = select i1 %2482, float %2002, float 0.000000e+00
  %2484 = icmp eq i32 %2472, 0
  br i1 %2484, label %2485, label %2498

; <label>:2485                                    ; preds = %2474
  %2486 = fsub fast float %2303, %1808
  %2487 = fsub fast float %2304, %1809
  %2488 = fmul fast float %2477, %2486
  %2489 = fmul fast float %2477, %2487
  %2490 = fadd fast float %2488, %1808
  %2491 = fadd fast float %2489, %1809
  %2492 = fsub fast float %2305, %1818
  %2493 = fmul fast float %2480, %2492
  %2494 = fadd fast float %2493, %1818
  %2495 = fsub fast float %2302, %1817
  %2496 = fmul fast float %2483, %2495
  %2497 = fadd fast float %2496, %1817
  br label %2546

; <label>:2498                                    ; preds = %2474
  %2499 = icmp eq i32 %2472, 4
  br i1 %2499, label %2500, label %2532

; <label>:2500                                    ; preds = %2498
  %2501 = fmul fast float %2477, %2303
  %2502 = fmul fast float %2477, %2304
  %2503 = fadd fast float %2501, %1808
  %2504 = fadd fast float %2502, %1809
  %2505 = call float @dx.op.binary.f32(i32 36, float %1818, float %2305)  ; FMin(a,b)
  %2506 = fsub fast float %2505, %1818
  %2507 = fmul fast float %2506, %2480
  %2508 = fadd fast float %2507, %1818
  %2509 = fadd fast float %2302, %1817
  %2510 = fmul fast float %2509, 0x3FF337FAE0000000
  %2511 = fmul fast float %1817, %1817
  %2512 = fmul fast float %2302, %2302
  %2513 = fadd fast float %2512, %2511
  %2514 = fmul fast float %2513, 0x3FE5152B00000000
  %2515 = fmul fast float %1817, 0xBFCC1F85E0000000
  %2516 = fmul fast float %2515, %2302
  %2517 = fadd fast float %2516, 0xBFE1363700000000
  %2518 = fadd fast float %2517, %2510
  %2519 = fsub fast float %2518, %2514
  %2520 = fmul fast float %2509, 0x3FBA6F0D00000000
  %2521 = fmul fast float %2513, 0x3FD0432880000000
  %2522 = fmul fast float %1817, 0xBFEF110800000000
  %2523 = fmul fast float %2522, %2302
  %2524 = fadd fast float %2523, 1.000000e+00
  %2525 = fsub fast float %2524, %2520
  %2526 = fadd fast float %2525, %2521
  %2527 = fdiv fast float %2519, %2526
  %2528 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  %2529 = fsub fast float %2528, %1817
  %2530 = fmul fast float %2529, %2483
  %2531 = fadd fast float %2530, %1817
  br label %2546

; <label>:2532                                    ; preds = %2498
  %2533 = icmp eq i32 %2472, 8
  br i1 %2533, label %2534, label %2546

; <label>:2534                                    ; preds = %2532
  %2535 = fmul fast float %2477, %2303
  %2536 = fmul fast float %2477, %2304
  %2537 = fadd fast float %2535, %1808
  %2538 = fadd fast float %2536, %1809
  %2539 = call float @dx.op.binary.f32(i32 36, float %1818, float %2305)  ; FMin(a,b)
  %2540 = fsub fast float %2539, %1818
  %2541 = fmul fast float %2540, %2480
  %2542 = fadd fast float %2541, %1818
  %2543 = fsub fast float %2302, %1817
  %2544 = fmul fast float %2483, %2543
  %2545 = fadd fast float %2544, %1817
  br label %2546

; <label>:2546                                    ; preds = %2534, %2532, %2500, %2485, %2463, %2001, %1820, %1807
  %2547 = phi float [ %1808, %2463 ], [ %1808, %2001 ], [ %1808, %1807 ], [ %2537, %2534 ], [ %1808, %2532 ], [ %2503, %2500 ], [ %2490, %2485 ], [ %1808, %1820 ]
  %2548 = phi float [ %1809, %2463 ], [ %1809, %2001 ], [ %1809, %1807 ], [ %2538, %2534 ], [ %1809, %2532 ], [ %2504, %2500 ], [ %2491, %2485 ], [ %1809, %1820 ]
  %2549 = phi float [ %2464, %2463 ], [ %1810, %2001 ], [ %1810, %1807 ], [ %2464, %2534 ], [ %2464, %2532 ], [ %2464, %2500 ], [ %2464, %2485 ], [ %1810, %1820 ]
  %2550 = phi float [ %2465, %2463 ], [ %1811, %2001 ], [ %1811, %1807 ], [ %2465, %2534 ], [ %2465, %2532 ], [ %2465, %2500 ], [ %2465, %2485 ], [ %1811, %1820 ]
  %2551 = phi float [ %2466, %2463 ], [ %1812, %2001 ], [ %1812, %1807 ], [ %2466, %2534 ], [ %2466, %2532 ], [ %2466, %2500 ], [ %2466, %2485 ], [ %1812, %1820 ]
  %2552 = phi float [ %2467, %2463 ], [ %1813, %2001 ], [ %1813, %1807 ], [ %2467, %2534 ], [ %2467, %2532 ], [ %2467, %2500 ], [ %2467, %2485 ], [ %1813, %1820 ]
  %2553 = phi float [ %2468, %2463 ], [ %1814, %2001 ], [ %1814, %1807 ], [ %2468, %2534 ], [ %2468, %2532 ], [ %2468, %2500 ], [ %2468, %2485 ], [ %1814, %1820 ]
  %2554 = phi float [ %2469, %2463 ], [ %1815, %2001 ], [ %1815, %1807 ], [ %2469, %2534 ], [ %2469, %2532 ], [ %2469, %2500 ], [ %2469, %2485 ], [ %1815, %1820 ]
  %2555 = phi float [ %2470, %2463 ], [ %1816, %2001 ], [ %1816, %1807 ], [ %2470, %2534 ], [ %2470, %2532 ], [ %2470, %2500 ], [ %2470, %2485 ], [ %1816, %1820 ]
  %2556 = phi float [ %1817, %2463 ], [ %1817, %2001 ], [ %1817, %1807 ], [ %2545, %2534 ], [ %1817, %2532 ], [ %2531, %2500 ], [ %2497, %2485 ], [ %1817, %1820 ]
  %2557 = phi float [ %1818, %2463 ], [ %1818, %2001 ], [ %1818, %1807 ], [ %2542, %2534 ], [ %1818, %2532 ], [ %2508, %2500 ], [ %2494, %2485 ], [ %1818, %1820 ]
  %2558 = phi float [ %2471, %2463 ], [ %1819, %2001 ], [ %1819, %1807 ], [ %2471, %2534 ], [ %2471, %2532 ], [ %2471, %2500 ], [ %2471, %2485 ], [ %1819, %1820 ]
  br i1 %470, label %3285, label %2559

; <label>:2559                                    ; preds = %2546
  %2560 = icmp ult i32 %524, 4
  %2561 = add i32 %54, 72
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = add i32 %54, 76
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = or i32 %2566, %2563
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %3285, label %2569

; <label>:2569                                    ; preds = %2559
  %2570 = and i32 %2563, 262144
  %2571 = icmp ne i32 %2570, 0
  %2572 = select i1 %2571, float %59, float 1.000000e+00
  %2573 = select i1 %2571, float %60, float 0.000000e+00
  %2574 = select i1 %2571, float %61, float 0.000000e+00
  %2575 = select i1 %2571, float %62, float 1.000000e+00
  %2576 = select i1 %2571, float %63, float %86
  %2577 = select i1 %2571, float %64, float %87
  %2578 = add i32 %54, 332
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = lshr i32 %2580, 16
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = fmul fast float %2582, 0x3F50624DE0000000
  %2584 = add i32 %54, 136
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = lshr i32 %2586, 16
  %2588 = and i32 %2587, 255
  %2589 = lshr i32 %2586, 24
  %2590 = add i32 %54, 340
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 65535
  %2594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2593)  ; LegacyF16ToF32(value)
  %2595 = lshr i32 %2592, 16
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = add i32 %54, 80
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = lshr i32 %2599, 22
  %2601 = shl nuw nsw i32 %2600, 5
  %2602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2601)  ; LegacyF16ToF32(value)
  %2603 = shl i32 %2599, 4
  %2604 = and i32 %2603, 32752
  %2605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2604)  ; LegacyF16ToF32(value)
  %2606 = lshr i32 %2599, 7
  %2607 = and i32 %2606, 32752
  %2608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2607)  ; LegacyF16ToF32(value)
  %2609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.f32 %2609, 3
  %2611 = fmul fast float %2610, 1.000000e+03
  %2612 = fmul fast float %460, %2611
  %2613 = call float @dx.op.unary.f32(i32 22, float %2612)  ; Frc(value)
  %2614 = fadd fast float %2613, %450
  %2615 = fmul fast float %461, %2611
  %2616 = call float @dx.op.unary.f32(i32 22, float %2615)  ; Frc(value)
  %2617 = fadd fast float %2616, %452
  %2618 = fmul fast float %2583, %2611
  %2619 = call float @dx.op.unary.f32(i32 22, float %2618)  ; Frc(value)
  %2620 = fmul fast float %2619, 0x401921FB60000000
  %2621 = fadd fast float %2620, %2602
  %2622 = call float @dx.op.unary.f32(i32 13, float %2621)  ; Sin(value)
  %2623 = call float @dx.op.unary.f32(i32 12, float %2621)  ; Cos(value)
  %2624 = fsub fast float -0.000000e+00, %2622
  %2625 = fadd fast float %2576, -5.000000e-01
  %2626 = fadd fast float %2577, -5.000000e-01
  %2627 = fmul fast float %2594, %2625
  %2628 = fmul fast float %2596, %2626
  %2629 = fadd fast float %2627, 5.000000e-01
  %2630 = fadd fast float %2628, 5.000000e-01
  %2631 = fmul fast float %2605, %2629
  %2632 = fmul fast float %2608, %2630
  %2633 = fmul fast float %2623, %2631
  %2634 = call float @dx.op.tertiary.f32(i32 46, float %2624, float %2632, float %2633)  ; FMad(a,b,c)
  %2635 = fmul fast float %2622, %2631
  %2636 = call float @dx.op.tertiary.f32(i32 46, float %2623, float %2632, float %2635)  ; FMad(a,b,c)
  %2637 = fadd fast float %2614, %2634
  %2638 = fadd fast float %2617, %2636
  %2639 = icmp ugt i32 %2588, 1
  %2640 = icmp ugt i32 %2586, 33554431
  %2641 = or i1 %2640, %2639
  br i1 %2641, label %2642, label %2667

; <label>:2642                                    ; preds = %2569
  %2643 = add i32 %54, 276
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = lshr i32 %2645, 16
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = fmul fast float %2610, %2647
  %2649 = call float @dx.op.unary.f32(i32 22, float %2648)  ; Frc(value)
  %2650 = mul nuw nsw i32 %2588, %2589
  %2651 = uitofp i32 %2650 to float
  %2652 = fmul fast float %2649, %2651
  %2653 = call float @dx.op.unary.f32(i32 27, float %2652)  ; Round_ni(value)
  %2654 = fptoui float %2653 to i32
  %2655 = urem i32 %2654, %2588
  %2656 = udiv i32 %2654, %2589
  %2657 = call float @dx.op.unary.f32(i32 22, float %2637)  ; Frc(value)
  %2658 = call float @dx.op.unary.f32(i32 22, float %2638)  ; Frc(value)
  %2659 = uitofp i32 %2655 to float
  %2660 = uitofp i32 %2656 to float
  %2661 = fadd fast float %2657, %2659
  %2662 = fadd fast float %2658, %2660
  %2663 = uitofp i32 %2588 to float
  %2664 = uitofp i32 %2589 to float
  %2665 = fdiv fast float %2661, %2663
  %2666 = fdiv fast float %2662, %2664
  br label %2667

; <label>:2667                                    ; preds = %2642, %2569
  %2668 = phi float [ %2665, %2642 ], [ %2637, %2569 ]
  %2669 = phi float [ %2666, %2642 ], [ %2638, %2569 ]
  %2670 = and i32 %2563, 256
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2718, label %2672

; <label>:2672                                    ; preds = %2667
  %2673 = add i32 %54, 484
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = add i32 %2675, 0
  %2677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2677, %dx.types.Handle %101, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2679 = extractvalue %dx.types.ResRet.f32 %2678, 0
  %2680 = add i32 %54, 148
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2680, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = shl i32 %2682, 4
  %2684 = and i32 %2683, 32752
  %2685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2684)  ; LegacyF16ToF32(value)
  %2686 = lshr i32 %2682, 7
  %2687 = and i32 %2686, 32752
  %2688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2687)  ; LegacyF16ToF32(value)
  %2689 = fsub fast float 1.000000e+00, %519
  %2690 = call float @dx.op.binary.f32(i32 35, float %2689, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2691 = bitcast float %519 to i32
  %2692 = sitofp i32 %2691 to float
  %2693 = fadd fast float %2692, 0xC1CFBF8940000000
  %2694 = fmul fast float %2688, %2693
  %2695 = fadd fast float %2694, 0x41CFBF8940000000
  %2696 = fptosi float %2695 to i32
  %2697 = bitcast i32 %2696 to float
  %2698 = bitcast float %2690 to i32
  %2699 = sitofp i32 %2698 to float
  %2700 = fadd fast float %2699, 0xC1CFBF8940000000
  %2701 = fmul fast float %2700, %2688
  %2702 = fadd fast float %2701, 0x41CFBF8940000000
  %2703 = fptosi float %2702 to i32
  %2704 = bitcast i32 %2703 to float
  %2705 = fmul fast float %2697, %2685
  %2706 = fmul fast float %2704, %2685
  %2707 = fsub fast float %2690, %2705
  %2708 = fadd fast float %2706, %2690
  %2709 = call float @dx.op.unary.f32(i32 7, float %2707)  ; Saturate(value)
  %2710 = call float @dx.op.unary.f32(i32 7, float %2708)  ; Saturate(value)
  %2711 = fsub fast float %2679, %2709
  %2712 = fsub fast float %2710, %2709
  %2713 = bitcast float %2712 to i32
  %2714 = sub nsw i32 2129859010, %2713
  %2715 = bitcast i32 %2714 to float
  %2716 = fmul fast float %2715, %2711
  %2717 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  br label %2718

; <label>:2718                                    ; preds = %2672, %2667
  %2719 = phi float [ %2717, %2672 ], [ %519, %2667 ]
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 128
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2740, label %2724

; <label>:2724                                    ; preds = %2718
  %2725 = add i32 %54, 468
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = add i32 %2727, 0
  %2729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2729, %dx.types.Handle %101, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 524288
  %2735 = icmp ne i32 %2734, 0
  %2736 = fcmp fast ogt float %2731, 0x3FE0101020000000
  %2737 = select i1 %2736, float 1.000000e+00, float 0.000000e+00
  %2738 = select i1 %2735, float %2737, float %2731
  %2739 = fmul fast float %2738, %2719
  br label %2740

; <label>:2740                                    ; preds = %2724, %2718
  %2741 = phi float [ %2739, %2724 ], [ %2719, %2718 ]
  %2742 = fcmp fast ult float %2741, 0x3F70101020000000
  br i1 %2742, label %3285, label %2743

; <label>:2743                                    ; preds = %2740
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = and i32 %2745, 16
  %2747 = icmp eq i32 %2746, 0
  br i1 %2747, label %2946, label %2748

; <label>:2748                                    ; preds = %2743
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = add i32 %54, 420
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = add i32 %2753, 0
  %2755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2756 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2755, %dx.types.Handle %100, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = extractvalue %dx.types.ResRet.f32 %2756, 3
  %2761 = and i32 %2750, 255
  %2762 = uitofp i32 %2761 to float
  %2763 = lshr i32 %2750, 8
  %2764 = and i32 %2763, 255
  %2765 = uitofp i32 %2764 to float
  %2766 = fmul fast float %2760, %2762
  %2767 = fadd fast float %2766, %2765
  %2768 = fmul fast float %2767, 0x3F70101000000000
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = and i32 %2770, 512
  %2772 = icmp eq i32 %2771, 0
  br i1 %2772, label %2781, label %2773

; <label>:2773                                    ; preds = %2748
  %2774 = add i32 %54, 500
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = add i32 %2776, 0
  %2778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2778, %dx.types.Handle %101, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2780 = extractvalue %dx.types.ResRet.f32 %2779, 0
  br label %2781

; <label>:2781                                    ; preds = %2773, %2748
  %2782 = phi float [ %2780, %2773 ], [ 1.000000e+00, %2748 ]
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = and i32 %2784, 33554432
  %2786 = icmp eq i32 %2785, 0
  br i1 %2786, label %2893, label %2787

; <label>:2787                                    ; preds = %2781
  %2788 = add i32 %54, 272
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = and i32 %2790, 65535
  %2792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2791)  ; LegacyF16ToF32(value)
  %2793 = lshr i32 %2790, 16
  %2794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2793)  ; LegacyF16ToF32(value)
  %2795 = add i32 %54, 276
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = and i32 %2797, 65535
  %2799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2798)  ; LegacyF16ToF32(value)
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = lshr i32 %2801, 24
  %2803 = uitofp i32 %2802 to float
  %2804 = fmul fast float %2803, 0x3F70101020000000
  %2805 = and i32 %2801, 255
  %2806 = uitofp i32 %2805 to float
  %2807 = fmul fast float %2806, 0x3F70101020000000
  %2808 = lshr i32 %2801, 8
  %2809 = and i32 %2808, 255
  %2810 = uitofp i32 %2809 to float
  %2811 = fmul fast float %2810, 0x3F70101020000000
  %2812 = lshr i32 %2801, 16
  %2813 = and i32 %2812, 255
  %2814 = uitofp i32 %2813 to float
  %2815 = fmul fast float %2814, 0x3F70101020000000
  %2816 = add i32 %54, 268
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = lshr i32 %2818, 24
  %2820 = uitofp i32 %2819 to float
  %2821 = fmul fast float %2820, 0x3F70101020000000
  %2822 = and i32 %2818, 255
  %2823 = uitofp i32 %2822 to float
  %2824 = fmul fast float %2823, 0x3F70101020000000
  %2825 = lshr i32 %2818, 8
  %2826 = and i32 %2825, 255
  %2827 = uitofp i32 %2826 to float
  %2828 = fmul fast float %2827, 0x3F70101020000000
  %2829 = lshr i32 %2818, 16
  %2830 = and i32 %2829, 255
  %2831 = uitofp i32 %2830 to float
  %2832 = fmul fast float %2831, 0x3F70101020000000
  %2833 = bitcast float %2757 to i32
  %2834 = ashr i32 %2833, 1
  %2835 = sub nsw i32 1597463174, %2834
  %2836 = bitcast i32 %2835 to float
  %2837 = fmul fast float %2757, 5.000000e-01
  %2838 = fmul fast float %2836, %2836
  %2839 = fmul fast float %2838, %2837
  %2840 = fsub fast float 1.500000e+00, %2839
  %2841 = fmul fast float %2836, %2757
  %2842 = fmul fast float %2841, %2840
  %2843 = bitcast float %2758 to i32
  %2844 = ashr i32 %2843, 1
  %2845 = sub nsw i32 1597463174, %2844
  %2846 = bitcast i32 %2845 to float
  %2847 = fmul fast float %2758, 5.000000e-01
  %2848 = fmul fast float %2846, %2846
  %2849 = fmul fast float %2848, %2847
  %2850 = fsub fast float 1.500000e+00, %2849
  %2851 = fmul fast float %2846, %2758
  %2852 = fmul fast float %2851, %2850
  %2853 = bitcast float %2759 to i32
  %2854 = ashr i32 %2853, 1
  %2855 = sub nsw i32 1597463174, %2854
  %2856 = bitcast i32 %2855 to float
  %2857 = fmul fast float %2759, 5.000000e-01
  %2858 = fmul fast float %2856, %2856
  %2859 = fmul fast float %2858, %2857
  %2860 = fsub fast float 1.500000e+00, %2859
  %2861 = fmul fast float %2856, %2759
  %2862 = fmul fast float %2861, %2860
  %2863 = fsub fast float %2842, %2824
  %2864 = fsub fast float %2852, %2828
  %2865 = fsub fast float %2862, %2832
  %2866 = fmul fast float %2863, %2792
  %2867 = fmul fast float %2864, %2794
  %2868 = fmul fast float %2865, %2799
  %2869 = fadd fast float %2866, %2807
  %2870 = fadd fast float %2867, %2811
  %2871 = fadd fast float %2868, %2815
  %2872 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  %2873 = call float @dx.op.unary.f32(i32 7, float %2870)  ; Saturate(value)
  %2874 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2875 = fmul fast float %2872, %2872
  %2876 = fmul fast float %2873, %2873
  %2877 = fmul fast float %2874, %2874
  %2878 = fsub fast float %2875, %2757
  %2879 = fsub fast float %2876, %2758
  %2880 = fsub fast float %2877, %2759
  %2881 = fmul fast float %2878, %2782
  %2882 = fmul fast float %2879, %2782
  %2883 = fmul fast float %2880, %2782
  %2884 = fadd fast float %2881, %2757
  %2885 = fadd fast float %2882, %2758
  %2886 = fadd fast float %2883, %2759
  %2887 = fadd fast float %2804, %2768
  %2888 = fsub fast float %2887, %2821
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  %2890 = fsub fast float %2889, %2768
  %2891 = fmul fast float %2890, %2782
  %2892 = fadd fast float %2891, %2768
  br label %2946

; <label>:2893                                    ; preds = %2781
  %2894 = and i32 %2784, 134217728
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %2930, label %2896

; <label>:2896                                    ; preds = %2893
  %2897 = call float @dx.op.unary.f32(i32 24, float %437)  ; Sqrt(value)
  %2898 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %2899 = call float @dx.op.unary.f32(i32 24, float %445)  ; Sqrt(value)
  %2900 = fadd fast float %2897, -5.000000e-01
  %2901 = fadd fast float %2898, -5.000000e-01
  %2902 = fadd fast float %2899, -5.000000e-01
  %2903 = fmul fast float %2900, %2782
  %2904 = fmul fast float %2901, %2782
  %2905 = fmul fast float %2902, %2782
  %2906 = fadd fast float %2903, 5.000000e-01
  %2907 = fadd fast float %2904, 5.000000e-01
  %2908 = fadd fast float %2905, 5.000000e-01
  %2909 = call float @dx.op.unary.f32(i32 24, float %2757)  ; Sqrt(value)
  %2910 = call float @dx.op.unary.f32(i32 24, float %2758)  ; Sqrt(value)
  %2911 = call float @dx.op.unary.f32(i32 24, float %2759)  ; Sqrt(value)
  %2912 = fmul fast float %2906, 2.000000e+00
  %2913 = fsub fast float 1.000000e+00, %2912
  %2914 = fmul fast float %2913, %2909
  %2915 = fadd fast float %2914, %2912
  %2916 = fmul fast float %2915, %2909
  %2917 = fmul fast float %2907, 2.000000e+00
  %2918 = fsub fast float 1.000000e+00, %2917
  %2919 = fmul fast float %2918, %2910
  %2920 = fadd fast float %2919, %2917
  %2921 = fmul fast float %2920, %2910
  %2922 = fmul fast float %2908, 2.000000e+00
  %2923 = fsub fast float 1.000000e+00, %2922
  %2924 = fmul fast float %2923, %2911
  %2925 = fadd fast float %2924, %2922
  %2926 = fmul fast float %2925, %2911
  %2927 = fmul fast float %2916, %2916
  %2928 = fmul fast float %2921, %2921
  %2929 = fmul fast float %2926, %2926
  br label %2946

; <label>:2930                                    ; preds = %2893
  %2931 = fmul fast float %437, %437
  %2932 = fmul fast float %441, %441
  %2933 = fmul fast float %445, %445
  %2934 = fadd fast float %2931, -1.000000e+00
  %2935 = fadd fast float %2932, -1.000000e+00
  %2936 = fadd fast float %2933, -1.000000e+00
  %2937 = fmul fast float %2782, %2934
  %2938 = fmul fast float %2782, %2935
  %2939 = fmul fast float %2782, %2936
  %2940 = fadd fast float %2937, 1.000000e+00
  %2941 = fadd fast float %2938, 1.000000e+00
  %2942 = fadd fast float %2939, 1.000000e+00
  %2943 = fmul fast float %2940, %2757
  %2944 = fmul fast float %2941, %2758
  %2945 = fmul fast float %2942, %2759
  br label %2946

; <label>:2946                                    ; preds = %2930, %2896, %2787, %2743
  %2947 = phi float [ %2892, %2787 ], [ %2768, %2896 ], [ %2768, %2930 ], [ 0x3FA23C0BE0000000, %2743 ]
  %2948 = phi float [ %2884, %2787 ], [ %2927, %2896 ], [ %2943, %2930 ], [ 1.000000e+00, %2743 ]
  %2949 = phi float [ %2885, %2787 ], [ %2928, %2896 ], [ %2944, %2930 ], [ 1.000000e+00, %2743 ]
  %2950 = phi float [ %2886, %2787 ], [ %2929, %2896 ], [ %2945, %2930 ], [ 1.000000e+00, %2743 ]
  %2951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.i32 %2951, 1
  %2953 = and i32 %2952, 1
  %2954 = icmp ne i32 %2953, 0
  %2955 = add i32 %54, 356
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = and i32 %2957, 32
  %2959 = icmp ne i32 %2958, 0
  %2960 = and i1 %2954, %2959
  %2961 = select i1 %2960, float 1.000000e+00, float %2948
  %2962 = select i1 %2960, float 0x3FD3333340000000, float %2949
  %2963 = select i1 %2960, float 0x3FD3333340000000, float %2950
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 32
  %2967 = icmp eq i32 %2966, 0
  br i1 %2967, label %3040, label %2968

; <label>:2968                                    ; preds = %2946
  %2969 = add i32 %54, 140
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = add i32 %54, 436
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = add i32 %2974, 0
  %2976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2977 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2976, %dx.types.Handle %100, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 1
  %2980 = extractvalue %dx.types.ResRet.f32 %2977, 2
  %2981 = extractvalue %dx.types.ResRet.f32 %2977, 3
  %2982 = and i32 %2971, 255
  %2983 = uitofp i32 %2982 to float
  %2984 = lshr i32 %2971, 8
  %2985 = and i32 %2984, 255
  %2986 = uitofp i32 %2985 to float
  %2987 = lshr i32 %2971, 16
  %2988 = and i32 %2987, 255
  %2989 = uitofp i32 %2988 to float
  %2990 = fmul fast float %2989, 0x3F70101000000000
  %2991 = fmul fast float %2978, %2983
  %2992 = fadd fast float %2991, %2986
  %2993 = fmul fast float %2992, 0x3F70101000000000
  %2994 = fadd fast float %2979, -5.000000e-01
  %2995 = fadd fast float %2981, -5.000000e-01
  %2996 = fmul fast float %2994, %2990
  %2997 = fmul fast float %2995, %2990
  %2998 = fadd fast float %2996, 5.000000e-01
  %2999 = fadd fast float %2997, 5.000000e-01
  %3000 = fmul fast float %2998, 2.000000e+00
  %3001 = fadd fast float %3000, -1.000000e+00
  %3002 = fmul fast float %2999, 2.000000e+00
  %3003 = fadd fast float %3002, -1.000000e+00
  %3004 = fadd fast float %3001, %3003
  %3005 = fmul fast float %3004, 5.000000e-01
  %3006 = fsub fast float %3001, %3003
  %3007 = fmul fast float %3006, 5.000000e-01
  %3008 = call float @dx.op.unary.f32(i32 6, float %3005)  ; FAbs(value)
  %3009 = fsub fast float 1.000000e+00, %3008
  %3010 = call float @dx.op.unary.f32(i32 6, float %3007)  ; FAbs(value)
  %3011 = fsub fast float %3009, %3010
  %3012 = call float @dx.op.dot3.f32(i32 55, float %3005, float %3007, float %3011, float %3005, float %3007, float %3011)  ; Dot3(ax,ay,az,bx,by,bz)
  %3013 = call float @dx.op.unary.f32(i32 25, float %3012)  ; Rsqrt(value)
  %3014 = fmul fast float %3005, %3013
  %3015 = fmul fast float %3007, %3013
  %3016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3017 = extractvalue %dx.types.ResRet.i32 %3016, 0
  %3018 = and i32 %3017, 67108864
  %3019 = icmp eq i32 %3018, 0
  br i1 %3019, label %3036, label %3020

; <label>:3020                                    ; preds = %2968
  %3021 = add i32 %54, 328
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = and i32 %3023, 65535
  %3025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3024)  ; LegacyF16ToF32(value)
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %3027, 65535
  %3029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3028)  ; LegacyF16ToF32(value)
  %3030 = lshr i32 %3023, 16
  %3031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3030)  ; LegacyF16ToF32(value)
  %3032 = fsub fast float %2993, %3031
  %3033 = fmul fast float %3032, %3025
  %3034 = fadd fast float %3033, %3029
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  br label %3036

; <label>:3036                                    ; preds = %3020, %2968
  %3037 = phi float [ %3035, %3020 ], [ %2993, %2968 ]
  %3038 = call float @dx.op.dot2.f32(i32 54, float %3014, float %3015, float %2572, float %2573)  ; Dot2(ax,ay,bx,by)
  %3039 = call float @dx.op.dot2.f32(i32 54, float %3014, float %3015, float %2574, float %2575)  ; Dot2(ax,ay,bx,by)
  br label %3040

; <label>:3040                                    ; preds = %3036, %2946
  %3041 = phi float [ %3037, %3036 ], [ 0x3FD6666660000000, %2946 ]
  %3042 = phi float [ %3038, %3036 ], [ 0.000000e+00, %2946 ]
  %3043 = phi float [ %3039, %3036 ], [ 0.000000e+00, %2946 ]
  %3044 = phi float [ %2980, %3036 ], [ 1.000000e+00, %2946 ]
  %3045 = add i32 %54, 208
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = lshr i32 %3047, 22
  %3049 = shl nuw nsw i32 %3048, 5
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 64
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3088, label %3055

; <label>:3055                                    ; preds = %3040
  %3056 = add i32 %54, 452
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = and i32 %3062, 131072
  %3064 = icmp eq i32 %3063, 0
  %3065 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3060, %dx.types.Handle %100, float %2668, float %2669, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3066 = extractvalue %dx.types.ResRet.f32 %3065, 0
  %3067 = extractvalue %dx.types.ResRet.f32 %3065, 1
  %3068 = extractvalue %dx.types.ResRet.f32 %3065, 2
  %3069 = fmul fast float %3066, %425
  %3070 = fmul fast float %3067, %428
  %3071 = fmul fast float %3068, %431
  br i1 %3064, label %3078, label %3072

; <label>:3072                                    ; preds = %3055
  %3073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3074 = extractvalue %dx.types.CBufRet.f32 %3073, 0
  %3075 = fmul fast float %3074, %3069
  %3076 = fmul fast float %3074, %3070
  %3077 = fmul fast float %3074, %3071
  br label %3078

; <label>:3078                                    ; preds = %3072, %3055
  %3079 = phi float [ %3075, %3072 ], [ %3069, %3055 ]
  %3080 = phi float [ %3076, %3072 ], [ %3070, %3055 ]
  %3081 = phi float [ %3077, %3072 ], [ %3071, %3055 ]
  %3082 = fmul fast float %3079, %3050
  %3083 = select i1 %282, float %3082, float %3079
  %3084 = call float @dx.op.dot3.f32(i32 55, float %3083, float %3080, float %3081, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3085 = select i1 %282, float 0.000000e+00, float %3079
  %3086 = select i1 %282, float %3084, float %3080
  %3087 = select i1 %282, float 0.000000e+00, float %3081
  br label %3088

; <label>:3088                                    ; preds = %3078, %3040
  %3089 = phi float [ %3085, %3078 ], [ 0.000000e+00, %3040 ]
  %3090 = phi float [ %3086, %3078 ], [ 0.000000e+00, %3040 ]
  %3091 = phi float [ %3087, %3078 ], [ 0.000000e+00, %3040 ]
  %3092 = add i32 %54, 144
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = and i32 %3094, 255
  %3096 = uitofp i32 %3095 to float
  %3097 = lshr i32 %3094, 8
  %3098 = and i32 %3097, 255
  %3099 = uitofp i32 %3098 to float
  %3100 = call float @dx.op.dot3.f32(i32 55, float %2961, float %2962, float %2963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3101 = fmul fast float %3099, %3100
  %3102 = fadd fast float %3101, %3096
  %3103 = fmul fast float %3102, 0x3F70101020000000
  %3104 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  br i1 %2560, label %3105, label %3113

; <label>:3105                                    ; preds = %3088
  %3106 = fsub fast float 1.000000e+00, %2741
  %3107 = fmul fast float %3106, %2549
  %3108 = fmul fast float %3106, %2550
  %3109 = fmul fast float %3106, %2551
  %3110 = fmul fast float %3106, %2552
  %3111 = fmul fast float %3106, %2553
  %3112 = fmul fast float %3106, %2554
  br label %3113

; <label>:3113                                    ; preds = %3105, %3088
  %3114 = phi float [ %3107, %3105 ], [ %2549, %3088 ]
  %3115 = phi float [ %3108, %3105 ], [ %2550, %3088 ]
  %3116 = phi float [ %3109, %3105 ], [ %2551, %3088 ]
  %3117 = phi float [ %3110, %3105 ], [ %2552, %3088 ]
  %3118 = phi float [ %3111, %3105 ], [ %2553, %3088 ]
  %3119 = phi float [ %3112, %3105 ], [ %2554, %3088 ]
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 3
  %3123 = icmp eq i32 %3122, 3
  br i1 %3123, label %3202, label %3124

; <label>:3124                                    ; preds = %3113
  %3125 = and i32 %3121, 16
  %3126 = icmp ne i32 %3125, 0
  %3127 = select i1 %3126, float %2741, float 0.000000e+00
  %3128 = icmp eq i32 %3122, 0
  br i1 %3128, label %3129, label %3157

; <label>:3129                                    ; preds = %3124
  %3130 = and i32 %3121, 64
  %3131 = icmp ne i32 %3130, 0
  %3132 = select i1 %3131, float %2741, float 0.000000e+00
  %3133 = fsub fast float %2961, %3114
  %3134 = fsub fast float %2962, %3115
  %3135 = fsub fast float %2963, %3116
  %3136 = fmul fast float %3127, %3133
  %3137 = fmul fast float %3127, %3134
  %3138 = fmul fast float %3127, %3135
  %3139 = fadd fast float %3136, %3114
  %3140 = fadd fast float %3137, %3115
  %3141 = fadd fast float %3138, %3116
  %3142 = fsub fast float %2947, %2555
  %3143 = fmul fast float %3127, %3142
  %3144 = fadd fast float %3143, %2555
  %3145 = fsub fast float %3089, %3117
  %3146 = fsub fast float %3090, %3118
  %3147 = fsub fast float %3091, %3119
  %3148 = fmul fast float %3132, %3145
  %3149 = fmul fast float %3132, %3146
  %3150 = fmul fast float %3132, %3147
  %3151 = fadd fast float %3148, %3117
  %3152 = fadd fast float %3149, %3118
  %3153 = fadd fast float %3150, %3119
  %3154 = fsub fast float %3104, %2558
  %3155 = fmul fast float %3127, %3154
  %3156 = fadd fast float %3155, %2558
  br label %3202

; <label>:3157                                    ; preds = %3124
  %3158 = icmp eq i32 %3122, 1
  br i1 %3158, label %3159, label %3172

; <label>:3159                                    ; preds = %3157
  %3160 = fadd fast float %2961, -1.000000e+00
  %3161 = fadd fast float %2962, -1.000000e+00
  %3162 = fadd fast float %2963, -1.000000e+00
  %3163 = fmul fast float %3127, %3160
  %3164 = fmul fast float %3127, %3161
  %3165 = fmul fast float %3127, %3162
  %3166 = fadd fast float %3163, 1.000000e+00
  %3167 = fadd fast float %3164, 1.000000e+00
  %3168 = fadd fast float %3165, 1.000000e+00
  %3169 = fmul fast float %3166, %3114
  %3170 = fmul fast float %3167, %3115
  %3171 = fmul fast float %3168, %3116
  br label %3202

; <label>:3172                                    ; preds = %3157
  %3173 = icmp eq i32 %3122, 2
  br i1 %3173, label %3174, label %3202

; <label>:3174                                    ; preds = %3172
  %3175 = call float @dx.op.unary.f32(i32 24, float %2961)  ; Sqrt(value)
  %3176 = call float @dx.op.unary.f32(i32 24, float %2962)  ; Sqrt(value)
  %3177 = call float @dx.op.unary.f32(i32 24, float %2963)  ; Sqrt(value)
  %3178 = fadd fast float %3175, -5.000000e-01
  %3179 = fadd fast float %3176, -5.000000e-01
  %3180 = fadd fast float %3177, -5.000000e-01
  %3181 = fmul fast float %3178, %3127
  %3182 = fmul fast float %3179, %3127
  %3183 = fmul fast float %3180, %3127
  %3184 = fadd fast float %3181, 5.000000e-01
  %3185 = fadd fast float %3182, 5.000000e-01
  %3186 = fadd fast float %3183, 5.000000e-01
  %3187 = fmul fast float %3184, 2.000000e+00
  %3188 = fsub fast float 1.000000e+00, %3187
  %3189 = fmul fast float %3188, %3114
  %3190 = fadd fast float %3189, %3187
  %3191 = fmul fast float %3190, %3114
  %3192 = fmul fast float %3185, 2.000000e+00
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fmul fast float %3193, %3115
  %3195 = fadd fast float %3194, %3192
  %3196 = fmul fast float %3195, %3115
  %3197 = fmul fast float %3186, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3116
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3116
  br label %3202

; <label>:3202                                    ; preds = %3174, %3172, %3159, %3129, %3113
  %3203 = phi float [ %3114, %3113 ], [ %3191, %3174 ], [ %3114, %3172 ], [ %3169, %3159 ], [ %3139, %3129 ]
  %3204 = phi float [ %3115, %3113 ], [ %3196, %3174 ], [ %3115, %3172 ], [ %3170, %3159 ], [ %3140, %3129 ]
  %3205 = phi float [ %3116, %3113 ], [ %3201, %3174 ], [ %3116, %3172 ], [ %3171, %3159 ], [ %3141, %3129 ]
  %3206 = phi float [ %3117, %3113 ], [ %3117, %3174 ], [ %3117, %3172 ], [ %3117, %3159 ], [ %3151, %3129 ]
  %3207 = phi float [ %3118, %3113 ], [ %3118, %3174 ], [ %3118, %3172 ], [ %3118, %3159 ], [ %3152, %3129 ]
  %3208 = phi float [ %3119, %3113 ], [ %3119, %3174 ], [ %3119, %3172 ], [ %3119, %3159 ], [ %3153, %3129 ]
  %3209 = phi float [ %2555, %3113 ], [ %2555, %3174 ], [ %2555, %3172 ], [ %2555, %3159 ], [ %3144, %3129 ]
  %3210 = phi float [ %2558, %3113 ], [ %2558, %3174 ], [ %2558, %3172 ], [ %2558, %3159 ], [ %3156, %3129 ]
  %3211 = and i32 %3121, 12
  %3212 = icmp eq i32 %3211, 12
  br i1 %3212, label %3285, label %3213

; <label>:3213                                    ; preds = %3202
  %3214 = and i32 %3121, 2097184
  %3215 = icmp eq i32 %3214, 2097184
  %3216 = select i1 %3215, float %2741, float 0.000000e+00
  %3217 = and i32 %3121, 4194336
  %3218 = icmp eq i32 %3217, 4194336
  %3219 = select i1 %3218, float %2741, float 0.000000e+00
  %3220 = and i32 %3121, 8388640
  %3221 = icmp eq i32 %3220, 8388640
  %3222 = select i1 %3221, float %2741, float 0.000000e+00
  %3223 = icmp eq i32 %3211, 0
  br i1 %3223, label %3224, label %3237

; <label>:3224                                    ; preds = %3213
  %3225 = fsub fast float %3042, %2547
  %3226 = fsub fast float %3043, %2548
  %3227 = fmul fast float %3216, %3225
  %3228 = fmul fast float %3216, %3226
  %3229 = fadd fast float %3227, %2547
  %3230 = fadd fast float %3228, %2548
  %3231 = fsub fast float %3044, %2557
  %3232 = fmul fast float %3219, %3231
  %3233 = fadd fast float %3232, %2557
  %3234 = fsub fast float %3041, %2556
  %3235 = fmul fast float %3222, %3234
  %3236 = fadd fast float %3235, %2556
  br label %3285

; <label>:3237                                    ; preds = %3213
  %3238 = icmp eq i32 %3211, 4
  br i1 %3238, label %3239, label %3271

; <label>:3239                                    ; preds = %3237
  %3240 = fmul fast float %3216, %3042
  %3241 = fmul fast float %3216, %3043
  %3242 = fadd fast float %3240, %2547
  %3243 = fadd fast float %3241, %2548
  %3244 = call float @dx.op.binary.f32(i32 36, float %2557, float %3044)  ; FMin(a,b)
  %3245 = fsub fast float %3244, %2557
  %3246 = fmul fast float %3245, %3219
  %3247 = fadd fast float %3246, %2557
  %3248 = fadd fast float %3041, %2556
  %3249 = fmul fast float %3248, 0x3FF337FAE0000000
  %3250 = fmul fast float %2556, %2556
  %3251 = fmul fast float %3041, %3041
  %3252 = fadd fast float %3251, %3250
  %3253 = fmul fast float %3252, 0x3FE5152B00000000
  %3254 = fmul fast float %2556, 0xBFCC1F85E0000000
  %3255 = fmul fast float %3254, %3041
  %3256 = fadd fast float %3255, 0xBFE1363700000000
  %3257 = fadd fast float %3256, %3249
  %3258 = fsub fast float %3257, %3253
  %3259 = fmul fast float %3248, 0x3FBA6F0D00000000
  %3260 = fmul fast float %3252, 0x3FD0432880000000
  %3261 = fmul fast float %2556, 0xBFEF110800000000
  %3262 = fmul fast float %3261, %3041
  %3263 = fadd fast float %3262, 1.000000e+00
  %3264 = fsub fast float %3263, %3259
  %3265 = fadd fast float %3264, %3260
  %3266 = fdiv fast float %3258, %3265
  %3267 = call float @dx.op.unary.f32(i32 7, float %3266)  ; Saturate(value)
  %3268 = fsub fast float %3267, %2556
  %3269 = fmul fast float %3268, %3222
  %3270 = fadd fast float %3269, %2556
  br label %3285

; <label>:3271                                    ; preds = %3237
  %3272 = icmp eq i32 %3211, 8
  br i1 %3272, label %3273, label %3285

; <label>:3273                                    ; preds = %3271
  %3274 = fmul fast float %3216, %3042
  %3275 = fmul fast float %3216, %3043
  %3276 = fadd fast float %3274, %2547
  %3277 = fadd fast float %3275, %2548
  %3278 = call float @dx.op.binary.f32(i32 36, float %2557, float %3044)  ; FMin(a,b)
  %3279 = fsub fast float %3278, %2557
  %3280 = fmul fast float %3279, %3219
  %3281 = fadd fast float %3280, %2557
  %3282 = fsub fast float %3041, %2556
  %3283 = fmul fast float %3222, %3282
  %3284 = fadd fast float %3283, %2556
  br label %3285

; <label>:3285                                    ; preds = %3273, %3271, %3239, %3224, %3202, %2740, %2559, %2546
  %3286 = phi float [ %2547, %3202 ], [ %2547, %2740 ], [ %2547, %2546 ], [ %2547, %2559 ], [ %3229, %3224 ], [ %3242, %3239 ], [ %2547, %3271 ], [ %3276, %3273 ]
  %3287 = phi float [ %2548, %3202 ], [ %2548, %2740 ], [ %2548, %2546 ], [ %2548, %2559 ], [ %3230, %3224 ], [ %3243, %3239 ], [ %2548, %3271 ], [ %3277, %3273 ]
  %3288 = phi float [ %3203, %3202 ], [ %2549, %2740 ], [ %2549, %2546 ], [ %2549, %2559 ], [ %3203, %3224 ], [ %3203, %3239 ], [ %3203, %3271 ], [ %3203, %3273 ]
  %3289 = phi float [ %3204, %3202 ], [ %2550, %2740 ], [ %2550, %2546 ], [ %2550, %2559 ], [ %3204, %3224 ], [ %3204, %3239 ], [ %3204, %3271 ], [ %3204, %3273 ]
  %3290 = phi float [ %3205, %3202 ], [ %2551, %2740 ], [ %2551, %2546 ], [ %2551, %2559 ], [ %3205, %3224 ], [ %3205, %3239 ], [ %3205, %3271 ], [ %3205, %3273 ]
  %3291 = phi float [ %3206, %3202 ], [ %2552, %2740 ], [ %2552, %2546 ], [ %2552, %2559 ], [ %3206, %3224 ], [ %3206, %3239 ], [ %3206, %3271 ], [ %3206, %3273 ]
  %3292 = phi float [ %3207, %3202 ], [ %2553, %2740 ], [ %2553, %2546 ], [ %2553, %2559 ], [ %3207, %3224 ], [ %3207, %3239 ], [ %3207, %3271 ], [ %3207, %3273 ]
  %3293 = phi float [ %3208, %3202 ], [ %2554, %2740 ], [ %2554, %2546 ], [ %2554, %2559 ], [ %3208, %3224 ], [ %3208, %3239 ], [ %3208, %3271 ], [ %3208, %3273 ]
  %3294 = phi float [ %3209, %3202 ], [ %2555, %2740 ], [ %2555, %2546 ], [ %2555, %2559 ], [ %3209, %3224 ], [ %3209, %3239 ], [ %3209, %3271 ], [ %3209, %3273 ]
  %3295 = phi float [ %2556, %3202 ], [ %2556, %2740 ], [ %2556, %2546 ], [ %2556, %2559 ], [ %3236, %3224 ], [ %3270, %3239 ], [ %2556, %3271 ], [ %3284, %3273 ]
  %3296 = phi float [ %2557, %3202 ], [ %2557, %2740 ], [ %2557, %2546 ], [ %2557, %2559 ], [ %3233, %3224 ], [ %3247, %3239 ], [ %2557, %3271 ], [ %3281, %3273 ]
  %3297 = phi float [ %3210, %3202 ], [ %2558, %2740 ], [ %2558, %2546 ], [ %2558, %2559 ], [ %3210, %3224 ], [ %3210, %3239 ], [ %3210, %3271 ], [ %3210, %3273 ]
  %3298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3299 = extractvalue %dx.types.CBufRet.f32 %3298, 0
  %3300 = call float @dx.op.dot2.f32(i32 54, float %3286, float %3287, float %3286, float %3287)  ; Dot2(ax,ay,bx,by)
  %3301 = fmul fast float %3300, 0x3FE3333340000000
  %3302 = fsub fast float 1.000000e+00, %3301
  %3303 = call float @dx.op.dot3.f32(i32 55, float %3286, float %3287, float %3302, float %3286, float %3287, float %3302)  ; Dot3(ax,ay,az,bx,by,bz)
  %3304 = call float @dx.op.unary.f32(i32 25, float %3303)  ; Rsqrt(value)
  %3305 = fmul fast float %3304, %3286
  %3306 = fmul fast float %3304, %3287
  %3307 = fmul fast float %3302, %3304
  %3308 = fmul fast float %3307, %111
  %3309 = fmul fast float %3307, %112
  %3310 = fmul fast float %3307, %113
  %3311 = fmul fast float %3305, %79
  %3312 = fmul fast float %3305, %80
  %3313 = fmul fast float %3305, %81
  %3314 = fadd fast float %3308, %3311
  %3315 = fadd fast float %3309, %3312
  %3316 = fadd fast float %3310, %3313
  %3317 = fmul fast float %123, %3306
  %3318 = fmul fast float %124, %3306
  %3319 = fmul fast float %125, %3306
  %3320 = fadd fast float %3314, %3317
  %3321 = fadd fast float %3315, %3318
  %3322 = fadd fast float %3316, %3319
  %3323 = call float @dx.op.dot3.f32(i32 55, float %3320, float %3321, float %3322, float %3320, float %3321, float %3322)  ; Dot3(ax,ay,az,bx,by,bz)
  %3324 = call float @dx.op.unary.f32(i32 25, float %3323)  ; Rsqrt(value)
  %3325 = fmul fast float %3320, %3324
  %3326 = fmul fast float %3321, %3324
  %3327 = fmul fast float %3322, %3324
  %3328 = icmp eq i32 %55, 65535
  br i1 %3328, label %3847, label %3329

; <label>:3329                                    ; preds = %3285
  %3330 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3331 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %3332 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3333 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3334 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %3335 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3336 = fadd fast float %3330, %56
  %3337 = fadd fast float %3331, %57
  %3338 = fadd fast float %3332, %58
  %3339 = fadd fast float %3333, %56
  %3340 = fadd fast float %3334, %57
  %3341 = fadd fast float %3335, %58
  %3342 = mul i32 %55, 48
  %3343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = add i32 %3342, 16
  %3348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 0
  %3350 = extractvalue %dx.types.ResRet.f32 %3348, 1
  %3351 = extractvalue %dx.types.ResRet.f32 %3348, 2
  %3352 = add i32 %3342, 32
  %3353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3356 = extractvalue %dx.types.ResRet.f32 %3353, 2
  %3357 = extractvalue %dx.types.ResRet.f32 %3353, 3
  %3358 = bitcast float %3357 to i32
  %3359 = fmul fast float %3344, %56
  %3360 = fmul fast float %3345, %57
  %3361 = fmul fast float %3346, %58
  %3362 = fsub fast float %3359, %3349
  %3363 = fsub fast float %3360, %3350
  %3364 = fsub fast float %3361, %3351
  %3365 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3366 = call float @dx.op.unary.f32(i32 7, float %3363)  ; Saturate(value)
  %3367 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3368 = fmul fast float %3365, %3354
  %3369 = fmul fast float %3366, %3355
  %3370 = fmul fast float %3367, %3356
  %3371 = fadd fast float %3354, -1.000000e+00
  %3372 = fadd fast float %3355, -1.000000e+00
  %3373 = fadd fast float %3356, -1.000000e+00
  %3374 = call float @dx.op.unary.f32(i32 27, float %3368)  ; Round_ni(value)
  %3375 = call float @dx.op.unary.f32(i32 27, float %3369)  ; Round_ni(value)
  %3376 = call float @dx.op.unary.f32(i32 27, float %3370)  ; Round_ni(value)
  %3377 = call float @dx.op.binary.f32(i32 36, float %3374, float %3371)  ; FMin(a,b)
  %3378 = call float @dx.op.binary.f32(i32 36, float %3375, float %3372)  ; FMin(a,b)
  %3379 = call float @dx.op.binary.f32(i32 36, float %3376, float %3373)  ; FMin(a,b)
  %3380 = fmul fast float %3379, %3355
  %3381 = fadd fast float %3380, %3378
  %3382 = fmul fast float %3381, %3354
  %3383 = fadd fast float %3382, %3377
  %3384 = fptosi float %3383 to i32
  %3385 = add nsw i32 %3384, %3358
  %3386 = shl nsw i32 %3385, 2
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = lshr i32 %3388, 16
  %3390 = icmp eq i32 %3389, 0
  br i1 %3390, label %3815, label %3391

; <label>:3391                                    ; preds = %3329
  br label %3392

; <label>:3392                                    ; preds = %3514, %3391
  %3393 = phi i32 [ %3416, %3514 ], [ %3389, %3391 ]
  %3394 = phi float [ %3515, %3514 ], [ 0.000000e+00, %3391 ]
  %3395 = phi float [ %3516, %3514 ], [ %1077, %3391 ]
  %3396 = phi float [ %3517, %3514 ], [ %3299, %3391 ]
  %3397 = phi float [ %3518, %3514 ], [ %3297, %3391 ]
  %3398 = phi float [ %3519, %3514 ], [ 0.000000e+00, %3391 ]
  %3399 = phi float [ %3520, %3514 ], [ 0.000000e+00, %3391 ]
  %3400 = phi float [ %3521, %3514 ], [ %3291, %3391 ]
  %3401 = phi float [ %3522, %3514 ], [ %3292, %3391 ]
  %3402 = phi float [ %3523, %3514 ], [ %3293, %3391 ]
  %3403 = phi float [ %3524, %3514 ], [ %3325, %3391 ]
  %3404 = phi float [ %3525, %3514 ], [ %3326, %3391 ]
  %3405 = phi float [ %3526, %3514 ], [ %3327, %3391 ]
  %3406 = phi float [ %3527, %3514 ], [ %3296, %3391 ]
  %3407 = phi float [ %3528, %3514 ], [ %3295, %3391 ]
  %3408 = phi float [ %3529, %3514 ], [ 0.000000e+00, %3391 ]
  %3409 = phi float [ %3530, %3514 ], [ %3294, %3391 ]
  %3410 = phi float [ %3531, %3514 ], [ %3288, %3391 ]
  %3411 = phi float [ %3532, %3514 ], [ %3289, %3391 ]
  %3412 = phi float [ %3533, %3514 ], [ %3290, %3391 ]
  %3413 = shl nuw nsw i32 %3393, 2
  %3414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.i32 %3414, 0
  %3416 = lshr i32 %3415, 16
  %3417 = shl i32 %3415, 8
  %3418 = and i32 %3417, 16776960
  %3419 = or i32 %3418, 48
  %3420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.f32 %3420, 0
  %3422 = extractvalue %dx.types.ResRet.f32 %3420, 1
  %3423 = extractvalue %dx.types.ResRet.f32 %3420, 2
  %3424 = or i32 %3418, 64
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = extractvalue %dx.types.ResRet.i32 %3425, 1
  %3428 = or i32 %3418, 80
  %3429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 3
  %3432 = or i32 %3418, 96
  %3433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = extractvalue %dx.types.ResRet.f32 %3433, 1
  %3436 = extractvalue %dx.types.ResRet.f32 %3433, 2
  %3437 = extractvalue %dx.types.ResRet.f32 %3433, 3
  %3438 = or i32 %3418, 112
  %3439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.f32 %3439, 2
  %3441 = or i32 %3418, 128
  %3442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3444 = extractvalue %dx.types.ResRet.f32 %3442, 1
  %3445 = extractvalue %dx.types.ResRet.f32 %3442, 2
  %3446 = extractvalue %dx.types.ResRet.f32 %3442, 3
  %3447 = or i32 %3418, 144
  %3448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.ResRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.ResRet.f32 %3448, 2
  %3452 = extractvalue %dx.types.ResRet.f32 %3448, 3
  %3453 = or i32 %3418, 160
  %3454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  %3456 = extractvalue %dx.types.ResRet.f32 %3454, 1
  %3457 = extractvalue %dx.types.ResRet.f32 %3454, 2
  %3458 = extractvalue %dx.types.ResRet.f32 %3454, 3
  %3459 = or i32 %3418, 192
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = or i32 %3418, 208
  %3463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = or i32 %3418, 248
  %3466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.ResRet.f32 %3466, 1
  %3469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.ResRet.f32 %3469, 2
  %3473 = extractvalue %dx.types.ResRet.f32 %3469, 3
  %3474 = call float @dx.op.dot4.f32(i32 56, float %3470, float %3471, float %3472, float %3473, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3475 = or i32 %3418, 16
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = call float @dx.op.dot4.f32(i32 56, float %3477, float %3478, float %3479, float %3480, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3482 = or i32 %3418, 32
  %3483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3488 = call float @dx.op.dot4.f32(i32 56, float %3484, float %3485, float %3486, float %3487, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3489 = call float @dx.op.unary.f32(i32 27, float %3474)  ; Round_ni(value)
  %3490 = call float @dx.op.unary.f32(i32 6, float %3489)  ; FAbs(value)
  %3491 = call float @dx.op.unary.f32(i32 27, float %3481)  ; Round_ni(value)
  %3492 = call float @dx.op.unary.f32(i32 6, float %3491)  ; FAbs(value)
  %3493 = call float @dx.op.unary.f32(i32 6, float %3488)  ; FAbs(value)
  %3494 = call float @dx.op.unary.f32(i32 27, float %3493)  ; Round_ni(value)
  %3495 = fadd fast float %3492, %3490
  %3496 = fadd fast float %3495, %3494
  %3497 = fcmp fast oeq float %3496, 0.000000e+00
  %3498 = call float @dx.op.dot4.f32(i32 56, float %3470, float %3471, float %3472, float %3473, float %3336, float %3337, float %3338, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3499 = call float @dx.op.dot4.f32(i32 56, float %3477, float %3478, float %3479, float %3480, float %3336, float %3337, float %3338, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3500 = call float @dx.op.dot4.f32(i32 56, float %3470, float %3471, float %3472, float %3473, float %3339, float %3340, float %3341, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3501 = call float @dx.op.dot4.f32(i32 56, float %3477, float %3478, float %3479, float %3480, float %3339, float %3340, float %3341, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3502 = fsub fast float %3498, %3474
  %3503 = fsub fast float %3500, %3474
  %3504 = fsub fast float %3499, %3481
  %3505 = fsub fast float %3501, %3481
  %3506 = call float @dx.op.dot3.f32(i32 55, float %3421, float %3422, float %3423, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3508 = extractvalue %dx.types.CBufRet.f32 %3507, 2
  %3509 = fadd fast float %3508, %3506
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3507, 0
  %3512 = fcmp fast ogt float %3510, %3511
  %3513 = and i1 %3497, %3512
  br i1 %3513, label %3535, label %3514

; <label>:3514                                    ; preds = %3801, %3618, %3535, %3392
  %3515 = phi float [ %3394, %3535 ], [ %3621, %3618 ], [ %3621, %3801 ], [ %3394, %3392 ]
  %3516 = phi float [ %3395, %3535 ], [ %3395, %3618 ], [ %3776, %3801 ], [ %3395, %3392 ]
  %3517 = phi float [ %3396, %3535 ], [ %3396, %3618 ], [ %3775, %3801 ], [ %3396, %3392 ]
  %3518 = phi float [ %3397, %3535 ], [ %3397, %3618 ], [ %3773, %3801 ], [ %3397, %3392 ]
  %3519 = phi float [ %3398, %3535 ], [ %3398, %3618 ], [ %3745, %3801 ], [ %3398, %3392 ]
  %3520 = phi float [ %3399, %3535 ], [ %3399, %3618 ], [ %3743, %3801 ], [ %3399, %3392 ]
  %3521 = phi float [ %3400, %3535 ], [ %3400, %3618 ], [ %3811, %3801 ], [ %3400, %3392 ]
  %3522 = phi float [ %3401, %3535 ], [ %3401, %3618 ], [ %3812, %3801 ], [ %3401, %3392 ]
  %3523 = phi float [ %3402, %3535 ], [ %3402, %3618 ], [ %3813, %3801 ], [ %3402, %3392 ]
  %3524 = phi float [ %3403, %3535 ], [ %3403, %3618 ], [ %3724, %3801 ], [ %3403, %3392 ]
  %3525 = phi float [ %3404, %3535 ], [ %3404, %3618 ], [ %3725, %3801 ], [ %3404, %3392 ]
  %3526 = phi float [ %3405, %3535 ], [ %3405, %3618 ], [ %3726, %3801 ], [ %3405, %3392 ]
  %3527 = phi float [ %3406, %3535 ], [ %3406, %3618 ], [ %3753, %3801 ], [ %3406, %3392 ]
  %3528 = phi float [ %3407, %3535 ], [ %3407, %3618 ], [ %3750, %3801 ], [ %3407, %3392 ]
  %3529 = phi float [ %3408, %3535 ], [ %3408, %3618 ], [ %3747, %3801 ], [ %3408, %3392 ]
  %3530 = phi float [ %3409, %3535 ], [ %3409, %3618 ], [ %3741, %3801 ], [ %3409, %3392 ]
  %3531 = phi float [ %3410, %3535 ], [ %3410, %3618 ], [ %3736, %3801 ], [ %3410, %3392 ]
  %3532 = phi float [ %3411, %3535 ], [ %3411, %3618 ], [ %3737, %3801 ], [ %3411, %3392 ]
  %3533 = phi float [ %3412, %3535 ], [ %3412, %3618 ], [ %3738, %3801 ], [ %3412, %3392 ]
  %3534 = icmp eq i32 %3416, 0
  br i1 %3534, label %3814, label %3392

; <label>:3535                                    ; preds = %3392
  %3536 = extractvalue %dx.types.ResRet.f32 %3420, 3
  %3537 = extractvalue %dx.types.ResRet.f32 %3439, 3
  %3538 = extractvalue %dx.types.ResRet.f32 %3439, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3439, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3542 = extractvalue %dx.types.ResRet.i32 %3425, 3
  %3543 = extractvalue %dx.types.ResRet.i32 %3425, 2
  %3544 = bitcast float %3536 to i32
  %3545 = add i32 %3542, 0
  %3546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3545, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3548 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3546, %dx.types.Handle %3547, float %3474, float %3481, float undef, float undef, i32 0, i32 0, i32 undef, float %3502, float %3504, float undef, float %3503, float %3505, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = fmul fast float %3549, %3541
  %3551 = fadd fast float %3550, %3540
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = fmul fast float %3474, %3434
  %3554 = call float @dx.op.tertiary.f32(i32 46, float %3435, float %3481, float %3553)  ; FMad(a,b,c)
  %3555 = fadd fast float %3554, %3539
  %3556 = fmul fast float %3474, %3436
  %3557 = call float @dx.op.tertiary.f32(i32 46, float %3437, float %3481, float %3556)  ; FMad(a,b,c)
  %3558 = fadd fast float %3557, %3538
  %3559 = fmul fast float %3502, %3434
  %3560 = call float @dx.op.tertiary.f32(i32 46, float %3435, float %3504, float %3559)  ; FMad(a,b,c)
  %3561 = fmul fast float %3502, %3436
  %3562 = call float @dx.op.tertiary.f32(i32 46, float %3437, float %3504, float %3561)  ; FMad(a,b,c)
  %3563 = fmul fast float %3503, %3434
  %3564 = call float @dx.op.tertiary.f32(i32 46, float %3435, float %3505, float %3563)  ; FMad(a,b,c)
  %3565 = fmul fast float %3503, %3436
  %3566 = call float @dx.op.tertiary.f32(i32 46, float %3437, float %3505, float %3565)  ; FMad(a,b,c)
  %3567 = add i32 %3543, 0
  %3568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3567, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3569 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3568, %dx.types.Handle %3547, float %3555, float %3558, float undef, float undef, i32 0, i32 0, i32 undef, float %3560, float %3562, float undef, float %3564, float %3566, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = and i32 %3544, 1024
  %3572 = icmp ne i32 %3571, 0
  %3573 = fcmp fast ogt float %3570, 0x3FE0101020000000
  %3574 = uitofp i1 %3573 to float
  %3575 = select i1 %3572, float %3574, float %3570
  %3576 = and i32 %3544, 8192
  %3577 = icmp ne i32 %3576, 0
  %3578 = select i1 %3577, float %3537, float 1.000000e+00
  %3579 = fmul fast float %3474, 2.000000e+00
  %3580 = fadd fast float %3579, -1.000000e+00
  %3581 = call float @dx.op.unary.f32(i32 6, float %3580)  ; FAbs(value)
  %3582 = fmul fast float %3581, %3467
  %3583 = fsub fast float %3582, %3467
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3585 = fmul fast float %3481, 2.000000e+00
  %3586 = fadd fast float %3585, -1.000000e+00
  %3587 = call float @dx.op.unary.f32(i32 6, float %3586)  ; FAbs(value)
  %3588 = fmul fast float %3587, %3468
  %3589 = fsub fast float %3588, %3468
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3591 = fmul fast float %3493, %3430
  %3592 = fsub fast float %3591, %3430
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = fmul fast float %3552, %3578
  %3595 = fmul fast float %3594, %3549
  %3596 = fmul fast float %3595, %3584
  %3597 = fmul fast float %3596, %3575
  %3598 = fmul fast float %3597, %3590
  %3599 = fmul fast float %3598, %3593
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 1
  %3602 = extractvalue %dx.types.CBufRet.f32 %3600, 0
  %3603 = fsub fast float %3510, %3602
  %3604 = fmul fast float %3603, %3601
  %3605 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  %3606 = fmul fast float %3599, %3431
  %3607 = fadd fast float %3599, %3431
  %3608 = fmul fast float %3607, %3440
  %3609 = fsub fast float %3608, %3440
  %3610 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3611 = and i32 %3544, 128
  %3612 = icmp ne i32 %3611, 0
  %3613 = select i1 %3612, float %3610, float %3606
  %3614 = fmul fast float %3613, %3605
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = fcmp fast ugt float %3614, %3616
  br i1 %3617, label %3618, label %3514

; <label>:3618                                    ; preds = %3535
  %3619 = select i1 %3577, float %3614, float 0.000000e+00
  %3620 = fadd fast float %3619, %3394
  %3621 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  br i1 %3577, label %3514, label %3622

; <label>:3622                                    ; preds = %3618
  %3623 = and i32 %3544, 4
  %3624 = and i32 %3544, 8
  %3625 = add i32 %3426, 0
  %3626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3625, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3628 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3626, %dx.types.Handle %3627, float %3555, float %3558, float undef, float undef, i32 0, i32 0, i32 undef, float %3560, float %3562, float undef, float %3564, float %3566, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.ResRet.f32 %3628, 3
  %3633 = bitcast float %3452 to i32
  %3634 = and i32 %3633, 255
  %3635 = uitofp i32 %3634 to float
  %3636 = lshr i32 %3633, 8
  %3637 = and i32 %3636, 255
  %3638 = uitofp i32 %3637 to float
  %3639 = fmul fast float %3632, %3635
  %3640 = fadd fast float %3639, %3638
  %3641 = fmul fast float %3640, 0x3F70101000000000
  %3642 = add i32 %3427, 0
  %3643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3642, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3644 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3643, %dx.types.Handle %3627, float %3555, float %3558, float undef, float undef, i32 0, i32 0, i32 undef, float %3560, float %3562, float undef, float %3564, float %3566, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3649 = bitcast float %3446 to i32
  %3650 = and i32 %3649, 255
  %3651 = uitofp i32 %3650 to float
  %3652 = lshr i32 %3649, 8
  %3653 = and i32 %3652, 255
  %3654 = uitofp i32 %3653 to float
  %3655 = lshr i32 %3649, 16
  %3656 = and i32 %3655, 255
  %3657 = uitofp i32 %3656 to float
  %3658 = fmul fast float %3657, 0x3F70101000000000
  %3659 = fmul fast float %3645, %3651
  %3660 = fadd fast float %3659, %3654
  %3661 = fmul fast float %3660, 0x3F70101000000000
  %3662 = fadd fast float %3646, -5.000000e-01
  %3663 = fadd fast float %3648, -5.000000e-01
  %3664 = fmul fast float %3662, %3658
  %3665 = fmul fast float %3663, %3658
  %3666 = fadd fast float %3664, 5.000000e-01
  %3667 = fadd fast float %3665, 5.000000e-01
  %3668 = fmul fast float %3629, %3455
  %3669 = fmul fast float %3630, %3456
  %3670 = fmul fast float %3631, %3457
  %3671 = fmul fast float %3666, 2.000000e+00
  %3672 = fadd fast float %3671, -1.000000e+00
  %3673 = fmul fast float %3667, 2.000000e+00
  %3674 = fadd fast float %3673, -1.000000e+00
  %3675 = fadd fast float %3672, %3674
  %3676 = fmul fast float %3675, 5.000000e-01
  %3677 = fsub fast float %3672, %3674
  %3678 = fmul fast float %3677, 5.000000e-01
  %3679 = call float @dx.op.unary.f32(i32 6, float %3676)  ; FAbs(value)
  %3680 = fsub fast float 1.000000e+00, %3679
  %3681 = call float @dx.op.unary.f32(i32 6, float %3678)  ; FAbs(value)
  %3682 = fsub fast float %3680, %3681
  %3683 = call float @dx.op.dot3.f32(i32 55, float %3676, float %3678, float %3682, float %3676, float %3678, float %3682)  ; Dot3(ax,ay,az,bx,by,bz)
  %3684 = call float @dx.op.unary.f32(i32 25, float %3683)  ; Rsqrt(value)
  %3685 = fmul fast float %3676, %3684
  %3686 = fmul fast float %3678, %3684
  %3687 = fmul fast float %3684, %3682
  %3688 = fmul fast float %3687, %3421
  %3689 = fmul fast float %3687, %3422
  %3690 = fmul fast float %3687, %3423
  %3691 = fmul fast float %3685, %3443
  %3692 = fmul fast float %3685, %3444
  %3693 = fmul fast float %3685, %3445
  %3694 = fadd fast float %3691, %3688
  %3695 = fadd fast float %3692, %3689
  %3696 = fadd fast float %3693, %3690
  %3697 = fmul fast float %3686, %3449
  %3698 = fmul fast float %3686, %3450
  %3699 = fmul fast float %3686, %3451
  %3700 = fadd fast float %3694, %3697
  %3701 = fadd fast float %3695, %3698
  %3702 = fadd fast float %3696, %3699
  %3703 = call float @dx.op.dot3.f32(i32 55, float %3700, float %3701, float %3702, float %3700, float %3701, float %3702)  ; Dot3(ax,ay,az,bx,by,bz)
  %3704 = call float @dx.op.unary.f32(i32 25, float %3703)  ; Rsqrt(value)
  %3705 = fmul fast float %3700, %3704
  %3706 = fmul fast float %3701, %3704
  %3707 = fmul fast float %3702, %3704
  %3708 = icmp ne i32 %3624, 0
  %3709 = select i1 %3708, float 1.000000e+00, float 0.000000e+00
  %3710 = fmul fast float %3614, %3709
  %3711 = and i32 %3544, 1
  %3712 = icmp eq i32 %3711, 0
  br i1 %3712, label %3713, label %3717

; <label>:3713                                    ; preds = %3622
  %3714 = fsub fast float %3705, %3403
  %3715 = fsub fast float %3706, %3404
  %3716 = fsub fast float %3707, %3405
  br label %3717

; <label>:3717                                    ; preds = %3713, %3622
  %3718 = phi float [ %3714, %3713 ], [ %3705, %3622 ]
  %3719 = phi float [ %3715, %3713 ], [ %3706, %3622 ]
  %3720 = phi float [ %3716, %3713 ], [ %3707, %3622 ]
  %3721 = fmul float %3720, %3710
  %3722 = fmul float %3719, %3710
  %3723 = fmul float %3718, %3710
  %3724 = fadd fast float %3723, %3403
  %3725 = fadd fast float %3722, %3404
  %3726 = fadd fast float %3721, %3405
  %3727 = icmp ne i32 %3623, 0
  %3728 = select i1 %3727, float 1.000000e+00, float 0.000000e+00
  %3729 = fmul fast float %3614, %3728
  %3730 = fsub fast float %3668, %3410
  %3731 = fsub fast float %3669, %3411
  %3732 = fsub fast float %3670, %3412
  %3733 = fmul fast float %3730, %3729
  %3734 = fmul fast float %3731, %3729
  %3735 = fmul fast float %3732, %3729
  %3736 = fadd fast float %3733, %3410
  %3737 = fadd fast float %3734, %3411
  %3738 = fadd fast float %3735, %3412
  %3739 = fsub fast float %3641, %3409
  %3740 = fmul fast float %3739, %3729
  %3741 = fadd fast float %3740, %3409
  %3742 = fmul fast float %3729, %3399
  %3743 = fsub fast float %3399, %3742
  %3744 = fmul fast float %3729, %3398
  %3745 = fsub fast float %3398, %3744
  %3746 = fadd fast float %3614, %3408
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = fsub fast float %3661, %3407
  %3749 = fmul fast float %3748, %3710
  %3750 = fadd fast float %3749, %3407
  %3751 = fsub fast float %3647, %3406
  %3752 = fmul fast float %3751, %3710
  %3753 = fadd fast float %3752, %3406
  %3754 = call float @dx.op.dot3.f32(i32 55, float %3668, float %3669, float %3670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3756 = extractvalue %dx.types.CBufRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.CBufRet.f32 %3755, 1
  %3758 = fmul fast float %3757, %3754
  %3759 = fadd fast float %3758, %3756
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = bitcast float %3458 to i32
  %3762 = and i32 %3761, 65535
  %3763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3762)  ; LegacyF16ToF32(value)
  %3764 = lshr i32 %3761, 16
  %3765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3764)  ; LegacyF16ToF32(value)
  %3766 = fcmp fast oge float %3763, 0.000000e+00
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3769 = select i1 %3766, float %3763, float %3768
  %3770 = fadd fast float %3769, %3765
  %3771 = fsub fast float %3760, %3397
  %3772 = fmul fast float %3771, %3614
  %3773 = fadd fast float %3772, %3397
  %3774 = fmul fast float %3770, %3614
  %3775 = call float @dx.op.binary.f32(i32 35, float %3396, float %3774)  ; FMax(a,b)
  %3776 = call float @dx.op.binary.f32(i32 35, float %3395, float %3614)  ; FMax(a,b)
  %3777 = and i32 %3544, 16
  %3778 = icmp eq i32 %3777, 0
  br i1 %3778, label %3801, label %3779

; <label>:3779                                    ; preds = %3717
  %3780 = bitcast float %3464 to i32
  %3781 = add i32 %3461, 0
  %3782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3781, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3783 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3782, %dx.types.Handle %3627, float %3555, float %3558, float undef, float undef, i32 0, i32 0, i32 undef, float %3560, float %3562, float undef, float %3564, float %3566, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = extractvalue %dx.types.ResRet.f32 %3783, 1
  %3786 = extractvalue %dx.types.ResRet.f32 %3783, 2
  %3787 = and i32 %3780, 65535
  %3788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3787)  ; LegacyF16ToF32(value)
  %3789 = fmul fast float %3784, %3455
  %3790 = fmul fast float %3785, %3456
  %3791 = fmul fast float %3786, %3457
  %3792 = and i32 %3544, 16384
  %3793 = icmp ne i32 %3792, 0
  %3794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3795 = extractvalue %dx.types.CBufRet.f32 %3794, 0
  %3796 = select i1 %3793, float %3795, float 1.000000e+00
  %3797 = fmul fast float %3796, %3788
  %3798 = fmul fast float %3789, %3797
  %3799 = fmul fast float %3790, %3797
  %3800 = fmul fast float %3791, %3797
  br label %3801

; <label>:3801                                    ; preds = %3779, %3717
  %3802 = phi float [ %3798, %3779 ], [ 0.000000e+00, %3717 ]
  %3803 = phi float [ %3799, %3779 ], [ 0.000000e+00, %3717 ]
  %3804 = phi float [ %3800, %3779 ], [ 0.000000e+00, %3717 ]
  %3805 = fsub fast float %3802, %3400
  %3806 = fsub fast float %3803, %3401
  %3807 = fsub fast float %3804, %3402
  %3808 = fmul fast float %3805, %3614
  %3809 = fmul fast float %3806, %3614
  %3810 = fmul fast float %3807, %3614
  %3811 = fadd fast float %3808, %3400
  %3812 = fadd fast float %3809, %3401
  %3813 = fadd fast float %3810, %3402
  br label %3514

; <label>:3814                                    ; preds = %3514
  br label %3815

; <label>:3815                                    ; preds = %3814, %3329
  %3816 = phi float [ 0.000000e+00, %3329 ], [ %3515, %3814 ]
  %3817 = phi float [ %1077, %3329 ], [ %3516, %3814 ]
  %3818 = phi float [ %3299, %3329 ], [ %3517, %3814 ]
  %3819 = phi float [ %3297, %3329 ], [ %3518, %3814 ]
  %3820 = phi float [ 0.000000e+00, %3329 ], [ %3519, %3814 ]
  %3821 = phi float [ 0.000000e+00, %3329 ], [ %3520, %3814 ]
  %3822 = phi float [ %3291, %3329 ], [ %3521, %3814 ]
  %3823 = phi float [ %3292, %3329 ], [ %3522, %3814 ]
  %3824 = phi float [ %3293, %3329 ], [ %3523, %3814 ]
  %3825 = phi float [ %3325, %3329 ], [ %3524, %3814 ]
  %3826 = phi float [ %3326, %3329 ], [ %3525, %3814 ]
  %3827 = phi float [ %3327, %3329 ], [ %3526, %3814 ]
  %3828 = phi float [ %3296, %3329 ], [ %3527, %3814 ]
  %3829 = phi float [ %3295, %3329 ], [ %3528, %3814 ]
  %3830 = phi float [ 0.000000e+00, %3329 ], [ %3529, %3814 ]
  %3831 = phi float [ %3294, %3329 ], [ %3530, %3814 ]
  %3832 = phi float [ %3288, %3329 ], [ %3531, %3814 ]
  %3833 = phi float [ %3289, %3329 ], [ %3532, %3814 ]
  %3834 = phi float [ %3290, %3329 ], [ %3533, %3814 ]
  %3835 = call float @dx.op.dot3.f32(i32 55, float %3825, float %3826, float %3827, float %3825, float %3826, float %3827)  ; Dot3(ax,ay,az,bx,by,bz)
  %3836 = call float @dx.op.unary.f32(i32 25, float %3835)  ; Rsqrt(value)
  %3837 = fmul fast float %3836, %3825
  %3838 = fmul fast float %3836, %3826
  %3839 = fmul fast float %3836, %3827
  %3840 = fadd fast float %3830, %1077
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = call float @dx.op.dot3.f32(i32 55, float %3837, float %3838, float %3839, float %3837, float %3838, float %3839)  ; Dot3(ax,ay,az,bx,by,bz)
  %3843 = call float @dx.op.unary.f32(i32 25, float %3842)  ; Rsqrt(value)
  %3844 = fmul fast float %3843, %3837
  %3845 = fmul fast float %3843, %3838
  %3846 = fmul fast float %3843, %3839
  br label %3847

; <label>:3847                                    ; preds = %3815, %3285
  %3848 = phi float [ %3832, %3815 ], [ %3288, %3285 ]
  %3849 = phi float [ %3833, %3815 ], [ %3289, %3285 ]
  %3850 = phi float [ %3834, %3815 ], [ %3290, %3285 ]
  %3851 = phi float [ %3844, %3815 ], [ %3325, %3285 ]
  %3852 = phi float [ %3845, %3815 ], [ %3326, %3285 ]
  %3853 = phi float [ %3846, %3815 ], [ %3327, %3285 ]
  %3854 = phi float [ %3822, %3815 ], [ %3291, %3285 ]
  %3855 = phi float [ %3823, %3815 ], [ %3292, %3285 ]
  %3856 = phi float [ %3824, %3815 ], [ %3293, %3285 ]
  %3857 = phi float [ %3831, %3815 ], [ %3294, %3285 ]
  %3858 = phi float [ %3841, %3815 ], [ %1077, %3285 ]
  %3859 = phi float [ %3829, %3815 ], [ %3295, %3285 ]
  %3860 = phi float [ %3828, %3815 ], [ %3296, %3285 ]
  %3861 = phi float [ %3821, %3815 ], [ 0.000000e+00, %3285 ]
  %3862 = phi float [ %3820, %3815 ], [ 0.000000e+00, %3285 ]
  %3863 = phi float [ %3816, %3815 ], [ 0.000000e+00, %3285 ]
  %3864 = phi float [ %3818, %3815 ], [ %3299, %3285 ]
  %3865 = phi float [ %3817, %3815 ], [ %1077, %3285 ]
  %3866 = phi float [ %3819, %3815 ], [ %3297, %3285 ]
  %3867 = add i32 %54, 392
  %3868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %3869 = extractvalue %dx.types.ResRet.i32 %3868, 0
  %3870 = extractvalue %dx.types.ResRet.i32 %3868, 1
  %3871 = extractvalue %dx.types.ResRet.i32 %3868, 2
  %3872 = extractvalue %dx.types.ResRet.i32 %3868, 3
  %3873 = bitcast i32 %3869 to float
  %3874 = bitcast i32 %3870 to float
  %3875 = bitcast i32 %3871 to float
  %3876 = bitcast i32 %3872 to float
  %3877 = fsub fast float %3848, %3873
  %3878 = fsub fast float %3849, %3874
  %3879 = fsub fast float %3850, %3875
  %3880 = fmul fast float %3877, %225
  %3881 = fmul fast float %3878, %225
  %3882 = fmul fast float %3879, %225
  %3883 = fadd fast float %3880, %3873
  %3884 = fadd fast float %3881, %3874
  %3885 = fadd fast float %3882, %3875
  %3886 = fsub fast float %3858, %3876
  %3887 = fmul fast float %3886, %225
  %3888 = fadd fast float %3887, %3876
  %3889 = fadd fast float %3857, 0xBFB99999A0000000
  %3890 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3891 = fmul fast float %3890, 0x3FF1C71C80000000
  %3892 = call float @dx.op.binary.f32(i32 36, float %3857, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3893 = fsub fast float 1.000000e+00, %3891
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fmul fast float %3883, %3894
  %3896 = fmul fast float %3884, %3894
  %3897 = fmul fast float %3885, %3894
  %3898 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3899 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3900 = call float @dx.op.unary.f32(i32 7, float %3897)  ; Saturate(value)
  %3901 = fmul fast float %3883, %3891
  %3902 = fmul fast float %3884, %3891
  %3903 = fmul fast float %3885, %3891
  %3904 = fadd fast float %3901, %3892
  %3905 = fadd fast float %3902, %3892
  %3906 = fadd fast float %3903, %3892
  %3907 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3908 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3909 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3910 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.i32 %3911, 3
  %3913 = and i32 %3912, 8
  %3914 = icmp ne i32 %3913, 0
  %3915 = call float @dx.op.binary.f32(i32 35, float %3898, float %3883)  ; FMax(a,b)
  %3916 = call float @dx.op.binary.f32(i32 35, float %3899, float %3883)  ; FMax(a,b)
  %3917 = call float @dx.op.binary.f32(i32 35, float %3900, float %3883)  ; FMax(a,b)
  %3918 = call float @dx.op.dot3.f32(i32 55, float %3898, float %3899, float %3900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3919 = select i1 %282, float %3883, float %3898
  %3920 = select i1 %282, float %3918, float %3899
  %3921 = select i1 %282, float 1.000000e+00, float %3900
  %3922 = select i1 %3914, float %3915, float %3919
  %3923 = select i1 %3914, float %3916, float %3920
  %3924 = select i1 %3914, float %3917, float %3921
  %3925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3926 = extractvalue %dx.types.CBufRet.f32 %3925, 0
  %3927 = extractvalue %dx.types.CBufRet.f32 %3925, 1
  %3928 = extractvalue %dx.types.CBufRet.f32 %3925, 2
  %3929 = fadd fast float %3926, %191
  %3930 = fadd fast float %3927, %192
  %3931 = fadd fast float %3928, %193
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 0
  %3934 = extractvalue %dx.types.CBufRet.f32 %3932, 1
  %3935 = fsub fast float %3929, %3933
  %3936 = fsub fast float %3930, %3934
  %3937 = fmul fast float %3935, %3935
  %3938 = fmul fast float %3936, %3936
  %3939 = fadd fast float %3937, %3938
  %3940 = call float @dx.op.unary.f32(i32 24, float %3939)  ; Sqrt(value)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3932, 2
  %3942 = fcmp fast olt float %3940, %3941
  br i1 %3942, label %3943, label %4010

; <label>:3943                                    ; preds = %3847
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 0
  %3946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3946, 0
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.CBufRet.f32 %3944, 1
  %3951 = extractvalue %dx.types.CBufRet.f32 %3946, 1
  %3952 = extractvalue %dx.types.CBufRet.f32 %3948, 1
  %3953 = extractvalue %dx.types.CBufRet.f32 %3944, 3
  %3954 = extractvalue %dx.types.CBufRet.f32 %3946, 3
  %3955 = extractvalue %dx.types.CBufRet.f32 %3948, 3
  %3956 = fadd fast float %3953, %3929
  %3957 = fadd fast float %3954, %3930
  %3958 = fadd fast float %3955, %3931
  %3959 = fmul fast float %3956, %3945
  %3960 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %3947, float %3959)  ; FMad(a,b,c)
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %3949, float %3960)  ; FMad(a,b,c)
  %3962 = fmul fast float %3956, %3950
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %3951, float %3962)  ; FMad(a,b,c)
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3958, float %3952, float %3963)  ; FMad(a,b,c)
  %3965 = fsub fast float %3961, %3953
  %3966 = fsub fast float %3964, %3954
  %3967 = fsub fast float %3965, %3933
  %3968 = fadd fast float %3967, %3941
  %3969 = fsub fast float %3966, %3934
  %3970 = fadd fast float %3969, %3941
  %3971 = extractvalue %dx.types.CBufRet.f32 %3932, 3
  %3972 = fmul fast float %3968, %3971
  %3973 = fmul fast float %3970, %3971
  %3974 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3975 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3976 = fsub fast float 1.000000e+00, %3974
  %3977 = fsub fast float 1.000000e+00, %3975
  %3978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = fcmp fast ugt float %3979, 0.000000e+00
  br i1 %3980, label %3981, label %4284

; <label>:3981                                    ; preds = %3943
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 2
  %3984 = fmul fast float %3983, %3979
  %3985 = extractvalue %dx.types.CBufRet.f32 %3982, 3
  %3986 = fadd fast float %3985, %3984
  %3987 = extractvalue %dx.types.CBufRet.f32 %3948, 2
  %3988 = fadd fast float %3986, %3955
  %3989 = fmul fast float %3961, %3949
  %3990 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3952, float %3989)  ; FMad(a,b,c)
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %3988, float %3987, float %3990)  ; FMad(a,b,c)
  %3992 = fsub fast float %3991, %3955
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 2
  %3995 = fsub fast float %3992, %3994
  %3996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = extractvalue %dx.types.ResRet.f32 %3996, 1
  %3999 = extractvalue %dx.types.ResRet.f32 %3996, 2
  %4000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %3976, float %3977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4001 = extractvalue %dx.types.ResRet.f32 %4000, 0
  %4002 = extractvalue %dx.types.ResRet.f32 %4000, 1
  %4003 = extractvalue %dx.types.ResRet.f32 %4000, 2
  %4004 = fadd fast float %4001, %3997
  %4005 = fmul fast float %4004, 0x3F847AE140000000
  %4006 = fadd fast float %4002, %3998
  %4007 = fmul fast float %4006, 0x3F847AE140000000
  %4008 = fadd fast float %4003, %3999
  %4009 = fmul fast float %4008, 0x3F847AE140000000
  br label %4284

; <label>:4010                                    ; preds = %3847
  %4011 = and i32 %261, 1
  %4012 = icmp eq i32 %4011, 0
  br i1 %4012, label %4284, label %4013

; <label>:4013                                    ; preds = %4010
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 0
  %4020 = extractvalue %dx.types.CBufRet.f32 %4014, 1
  %4021 = extractvalue %dx.types.CBufRet.f32 %4016, 1
  %4022 = extractvalue %dx.types.CBufRet.f32 %4018, 1
  %4023 = extractvalue %dx.types.CBufRet.f32 %4014, 3
  %4024 = extractvalue %dx.types.CBufRet.f32 %4016, 3
  %4025 = extractvalue %dx.types.CBufRet.f32 %4018, 3
  %4026 = fadd fast float %4023, %3929
  %4027 = fadd fast float %4024, %3930
  %4028 = fadd fast float %4025, %3931
  %4029 = fmul fast float %4026, %4015
  %4030 = call float @dx.op.tertiary.f32(i32 46, float %4027, float %4017, float %4029)  ; FMad(a,b,c)
  %4031 = call float @dx.op.tertiary.f32(i32 46, float %4028, float %4019, float %4030)  ; FMad(a,b,c)
  %4032 = fmul fast float %4026, %4020
  %4033 = call float @dx.op.tertiary.f32(i32 46, float %4027, float %4021, float %4032)  ; FMad(a,b,c)
  %4034 = call float @dx.op.tertiary.f32(i32 46, float %4028, float %4022, float %4033)  ; FMad(a,b,c)
  %4035 = fsub fast float %4031, %4023
  %4036 = fsub fast float %4034, %4024
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.CBufRet.f32 %4037, 2
  %4041 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 3
  %4044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.i32 %4044, 0
  %4046 = extractvalue %dx.types.CBufRet.i32 %4044, 1
  %4047 = udiv i32 %4046, %4045
  %4048 = fsub fast float %4035, %4038
  %4049 = fsub fast float %4036, %4039
  %4050 = call float @dx.op.binary.f32(i32 35, float %4048, float 0.000000e+00)  ; FMax(a,b)
  %4051 = call float @dx.op.binary.f32(i32 35, float %4049, float 0.000000e+00)  ; FMax(a,b)
  %4052 = call float @dx.op.binary.f32(i32 36, float %4050, float %4040)  ; FMin(a,b)
  %4053 = call float @dx.op.binary.f32(i32 36, float %4051, float %4041)  ; FMin(a,b)
  %4054 = add i32 %4045, -1
  %4055 = add i32 %4047, -1
  %4056 = fmul fast float %4052, %4043
  %4057 = fmul fast float %4053, %4043
  %4058 = fptoui float %4056 to i32
  %4059 = fptoui float %4057 to i32
  %4060 = call i32 @dx.op.binary.i32(i32 40, i32 %4058, i32 %4054)  ; UMin(a,b)
  %4061 = call i32 @dx.op.binary.i32(i32 40, i32 %4059, i32 %4055)  ; UMin(a,b)
  %4062 = mul i32 %4061, %4045
  %4063 = add i32 %4062, %4060
  %4064 = shl i32 %4063, 2
  %4065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4064, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.i32 %4065, 0
  %4067 = icmp eq i32 %4066, -1
  br i1 %4067, label %4284, label %4068

; <label>:4068                                    ; preds = %4013
  %4069 = mul i32 %4066, 148
  %4070 = add i32 %4069, 4
  %4071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = add i32 %4069, 8
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = add i32 %4069, 36
  %4077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4076, i32 undef)  ; BufferLoad(srv,index,wot)
  %4078 = extractvalue %dx.types.ResRet.f32 %4077, 0
  %4079 = add i32 %4069, 60
  %4080 = add i32 %4069, 92
  %4081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4080, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.i32 %4081, 0
  %4083 = add i32 %4069, 116
  %4084 = fsub fast float %4035, %4072
  %4085 = fsub fast float %4036, %4075
  %4086 = fmul fast float %4043, %4084
  %4087 = fmul fast float %4043, %4085
  %4088 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4089 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4090 = fsub fast float 1.000000e+00, %4089
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 2
  %4093 = call float @dx.op.unary.f32(i32 83, float %4088)  ; DerivCoarseX(value)
  %4094 = call float @dx.op.unary.f32(i32 83, float %4090)  ; DerivCoarseX(value)
  %4095 = call float @dx.op.unary.f32(i32 84, float %4088)  ; DerivCoarseY(value)
  %4096 = call float @dx.op.unary.f32(i32 84, float %4090)  ; DerivCoarseY(value)
  %4097 = fmul fast float %4093, %4092
  %4098 = fmul fast float %4094, %4092
  %4099 = fmul fast float %4095, %4092
  %4100 = fmul fast float %4096, %4092
  %4101 = call float @dx.op.dot2.f32(i32 54, float %4099, float %4100, float %4099, float %4100)  ; Dot2(ax,ay,bx,by)
  %4102 = call float @dx.op.dot2.f32(i32 54, float %4097, float %4098, float %4097, float %4098)  ; Dot2(ax,ay,bx,by)
  %4103 = call float @dx.op.binary.f32(i32 35, float %4102, float %4101)  ; FMax(a,b)
  %4104 = call float @dx.op.unary.f32(i32 23, float %4103)  ; Log(value)
  %4105 = fmul fast float %4104, 5.000000e-01
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4108 = fadd fast float %4107, %4105
  %4109 = call float @dx.op.binary.f32(i32 35, float %4108, float 0.000000e+00)  ; FMax(a,b)
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 3
  %4112 = fadd fast float %4111, %4109
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 3
  %4115 = fadd fast float %4112, %4114
  %4116 = add i32 %4082, 0
  %4117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4116, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4118 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4117, i32 0)  ; GetDimensions(handle,mipLevel)
  %4119 = extractvalue %dx.types.Dimensions %4118, 0
  %4120 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4119)  ; FirstbitLo(value)
  %4121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.i32 %4121, 1
  %4123 = sub nsw i32 %4122, %4120
  %4124 = sitofp i32 %4123 to float
  %4125 = fsub fast float %4115, %4124
  %4126 = call float @dx.op.binary.f32(i32 35, float %4125, float 0.000000e+00)  ; FMax(a,b)
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4117, %dx.types.Handle %46, float %4088, float %4090, float %4078, float undef, i32 0, i32 0, i32 undef, float %4126)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = fcmp ule float %4128, 0x3FE0101020000000
  %4130 = extractvalue %dx.types.CBufRet.i32 %4121, 0
  %4131 = and i32 %4130, 128
  %4132 = icmp ne i32 %4131, 0
  %4133 = and i1 %4129, %4132
  br i1 %4133, label %4284, label %4134

; <label>:4134                                    ; preds = %4068
  %4135 = add i32 %4069, 20
  %4136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = add i32 %4069, 24
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = add i32 %4069, 40
  %4142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = add i32 %4069, 96
  %4145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.i32 %4145, 0
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 2
  %4149 = fmul fast float %4148, %4088
  %4150 = fmul fast float %4148, %4090
  %4151 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4152 = fadd fast float %4149, %4151
  %4153 = fadd fast float %4150, %4151
  %4154 = add i32 %4146, 0
  %4155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4154, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4156 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4155, i32 0)  ; GetDimensions(handle,mipLevel)
  %4157 = extractvalue %dx.types.Dimensions %4156, 0
  %4158 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4157)  ; FirstbitLo(value)
  %4159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.i32 %4159, 1
  %4161 = sub nsw i32 %4160, %4158
  %4162 = sitofp i32 %4161 to float
  %4163 = fsub fast float %4112, %4162
  %4164 = call float @dx.op.binary.f32(i32 35, float %4163, float 0.000000e+00)  ; FMax(a,b)
  %4165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4155, %dx.types.Handle %46, float %4152, float %4153, float %4143, float undef, i32 0, i32 0, i32 undef, float %4164)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = fmul fast float %4166, %4137
  %4168 = fadd fast float %4167, %4140
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.CBufRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.CBufRet.f32 %4169, 2
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 3
  %4177 = extractvalue %dx.types.CBufRet.f32 %4169, 3
  %4178 = fadd fast float %4174, %4035
  %4179 = fadd fast float %4176, %4036
  %4180 = fadd fast float %4168, %4177
  %4181 = fmul fast float %4178, %4170
  %4182 = call float @dx.op.tertiary.f32(i32 46, float %4179, float %4171, float %4181)  ; FMad(a,b,c)
  %4183 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4172, float %4182)  ; FMad(a,b,c)
  %4184 = fsub fast float %4183, %4177
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 2
  %4187 = fsub fast float %4184, %4186
  %4188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.i32 %4188, 0
  %4190 = call i32 @dx.op.binary.i32(i32 40, i32 %4066, i32 %4189)  ; UMin(a,b)
  %4191 = mul i32 %4190, 36
  %4192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.i32 %4192, 0
  %4194 = add i32 %4191, 4
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = fmul fast float %4196, %4088
  %4198 = fmul fast float %4196, %4090
  %4199 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4200 = fadd fast float %4197, %4199
  %4201 = fadd fast float %4198, %4199
  %4202 = icmp eq i32 %4193, 0
  br i1 %4202, label %4271, label %4203

; <label>:4203                                    ; preds = %4134
  br label %4204

; <label>:4204                                    ; preds = %4261, %4203
  %4205 = phi float [ %4262, %4261 ], [ 0.000000e+00, %4203 ]
  %4206 = phi float [ %4263, %4261 ], [ 0.000000e+00, %4203 ]
  %4207 = phi float [ %4264, %4261 ], [ 0.000000e+00, %4203 ]
  %4208 = phi float [ %4265, %4261 ], [ 0.000000e+00, %4203 ]
  %4209 = phi float [ %4266, %4261 ], [ 0.000000e+00, %4203 ]
  %4210 = phi float [ %4267, %4261 ], [ 0.000000e+00, %4203 ]
  %4211 = phi i32 [ %4268, %4261 ], [ 0, %4203 ]
  %4212 = shl i32 %4211, 2
  %4213 = add i32 %4079, %4212
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = add i32 %4083, %4212
  %4217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.i32 %4217, 0
  %4219 = add i32 %4218, 0
  %4220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4219, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4221 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4220, i32 0)  ; GetDimensions(handle,mipLevel)
  %4222 = extractvalue %dx.types.Dimensions %4221, 0
  %4223 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4222)  ; FirstbitLo(value)
  %4224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.i32 %4224, 1
  %4226 = sub nsw i32 %4225, %4223
  %4227 = sitofp i32 %4226 to float
  %4228 = fsub fast float %4112, %4227
  %4229 = call float @dx.op.binary.f32(i32 35, float %4228, float 0.000000e+00)  ; FMax(a,b)
  %4230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4220, %dx.types.Handle %46, float %4200, float %4201, float %4215, float undef, i32 0, i32 0, i32 undef, float %4229)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = fcmp fast ogt float %4231, 0.000000e+00
  br i1 %4232, label %4233, label %4261

; <label>:4233                                    ; preds = %4204
  %4234 = add i32 %4194, %4212
  %4235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.i32 %4235, 0
  %4237 = and i32 %4236, 32767
  %4238 = mul nuw nsw i32 %4237, 928
  %4239 = add nuw nsw i32 %4238, 48
  %4240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4240, 2
  %4244 = add nuw nsw i32 %4238, 60
  %4245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4245, 2
  %4249 = fmul fast float %4241, %4231
  %4250 = fmul fast float %4242, %4231
  %4251 = fmul fast float %4243, %4231
  %4252 = fadd fast float %4249, %4205
  %4253 = fadd fast float %4250, %4206
  %4254 = fadd fast float %4251, %4207
  %4255 = fmul fast float %4246, %4231
  %4256 = fmul fast float %4247, %4231
  %4257 = fmul fast float %4248, %4231
  %4258 = fadd fast float %4255, %4208
  %4259 = fadd fast float %4256, %4209
  %4260 = fadd fast float %4257, %4210
  br label %4261

; <label>:4261                                    ; preds = %4233, %4204
  %4262 = phi float [ %4252, %4233 ], [ %4205, %4204 ]
  %4263 = phi float [ %4253, %4233 ], [ %4206, %4204 ]
  %4264 = phi float [ %4254, %4233 ], [ %4207, %4204 ]
  %4265 = phi float [ %4258, %4233 ], [ %4208, %4204 ]
  %4266 = phi float [ %4259, %4233 ], [ %4209, %4204 ]
  %4267 = phi float [ %4260, %4233 ], [ %4210, %4204 ]
  %4268 = add nuw i32 %4211, 1
  %4269 = icmp eq i32 %4268, %4193
  br i1 %4269, label %4270, label %4204

; <label>:4270                                    ; preds = %4261
  br label %4271

; <label>:4271                                    ; preds = %4270, %4134
  %4272 = phi float [ 0.000000e+00, %4134 ], [ %4262, %4270 ]
  %4273 = phi float [ 0.000000e+00, %4134 ], [ %4263, %4270 ]
  %4274 = phi float [ 0.000000e+00, %4134 ], [ %4264, %4270 ]
  %4275 = phi float [ 0.000000e+00, %4134 ], [ %4265, %4270 ]
  %4276 = phi float [ 0.000000e+00, %4134 ], [ %4266, %4270 ]
  %4277 = phi float [ 0.000000e+00, %4134 ], [ %4267, %4270 ]
  %4278 = fadd fast float %4275, %4272
  %4279 = fmul fast float %4278, 0x3F847AE140000000
  %4280 = fadd fast float %4276, %4273
  %4281 = fmul fast float %4280, 0x3F847AE140000000
  %4282 = fadd fast float %4277, %4274
  %4283 = fmul fast float %4282, 0x3F847AE140000000
  br label %4284

; <label>:4284                                    ; preds = %4271, %4068, %4013, %4010, %3981, %3943
  %4285 = phi float [ %3995, %3981 ], [ -1.310720e+05, %3943 ], [ %4187, %4271 ], [ -1.310720e+05, %4013 ], [ -1.310720e+05, %4068 ], [ -1.310720e+05, %4010 ]
  %4286 = phi float [ %4005, %3981 ], [ 0.000000e+00, %3943 ], [ %4279, %4271 ], [ 0.000000e+00, %4013 ], [ 0.000000e+00, %4068 ], [ 0.000000e+00, %4010 ]
  %4287 = phi float [ %4007, %3981 ], [ 0.000000e+00, %3943 ], [ %4281, %4271 ], [ 0.000000e+00, %4013 ], [ 0.000000e+00, %4068 ], [ 0.000000e+00, %4010 ]
  %4288 = phi float [ %4009, %3981 ], [ 0.000000e+00, %3943 ], [ %4283, %4271 ], [ 0.000000e+00, %4013 ], [ 0.000000e+00, %4068 ], [ 0.000000e+00, %4010 ]
  %4289 = phi i1 [ true, %3981 ], [ false, %3943 ], [ true, %4271 ], [ false, %4013 ], [ false, %4068 ], [ false, %4010 ]
  %4290 = and i32 %261, 3
  %4291 = icmp eq i32 %4290, 1
  %4292 = select i1 %4291, float 1.000000e+00, float 0.000000e+00
  %4293 = fsub fast float %4285, %193
  %4294 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4295 = select i1 %4289, float %4294, float 1.000000e+00
  %4296 = fmul fast float %4295, %4292
  %4297 = icmp eq i32 %4290, 3
  %4298 = select i1 %4297, float 1.000000e+00, float %4296
  %4299 = call float @dx.op.binary.f32(i32 35, float %3863, float %4298)  ; FMax(a,b)
  %4300 = fcmp fast olt float %4298, 1.000000e+00
  %4301 = fcmp uge float %69, 0.000000e+00
  %4302 = and i1 %4301, %4300
  br i1 %4302, label %4303, label %4313

; <label>:4303                                    ; preds = %4284
  %4304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.ResRet.f32 %4304, 1
  %4307 = extractvalue %dx.types.ResRet.f32 %4304, 2
  %4308 = fadd fast float %4305, %4299
  %4309 = fcmp ule float %68, 0.000000e+00
  %4310 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4311 = select i1 %4309, float %4310, float 1.000000e+00
  %4312 = fmul fast float %4311, %4307
  br label %4313

; <label>:4313                                    ; preds = %4303, %4284
  %4314 = phi float [ %4308, %4303 ], [ %4299, %4284 ]
  %4315 = phi float [ %4306, %4303 ], [ 0.000000e+00, %4284 ]
  %4316 = phi float [ %4312, %4303 ], [ 0.000000e+00, %4284 ]
  %4317 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4318 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4319 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4320 = fcmp fast une float %4318, 0.000000e+00
  %4321 = fcmp fast une float %4319, 0.000000e+00
  %4322 = or i1 %4320, %4321
  br i1 %4322, label %4323, label %4882

; <label>:4323                                    ; preds = %4313
  br i1 %4320, label %4324, label %4597

; <label>:4324                                    ; preds = %4323
  %4325 = call float @dx.op.unary.f32(i32 23, float %3860)  ; Log(value)
  %4326 = fmul fast float %4325, 4.000000e+00
  %4327 = call float @dx.op.unary.f32(i32 21, float %4326)  ; Exp(value)
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 0
  %4330 = fmul fast float %4329, %56
  %4331 = fmul fast float %4329, %57
  %4332 = fmul fast float %4329, %58
  %4333 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4334 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4335 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4336 = call float @dx.op.unary.f32(i32 23, float %4333)  ; Log(value)
  %4337 = call float @dx.op.unary.f32(i32 23, float %4334)  ; Log(value)
  %4338 = call float @dx.op.unary.f32(i32 23, float %4335)  ; Log(value)
  %4339 = fmul fast float %4336, 4.000000e+00
  %4340 = fmul fast float %4337, 4.000000e+00
  %4341 = fmul fast float %4338, 4.000000e+00
  %4342 = call float @dx.op.unary.f32(i32 21, float %4339)  ; Exp(value)
  %4343 = call float @dx.op.unary.f32(i32 21, float %4340)  ; Exp(value)
  %4344 = call float @dx.op.unary.f32(i32 21, float %4341)  ; Exp(value)
  %4345 = fadd fast float %4343, %4342
  %4346 = fadd fast float %4345, %4344
  %4347 = fdiv fast float 1.000000e+00, %4346
  %4348 = fmul fast float %4347, %4342
  %4349 = fcmp fast ogt float %65, 0.000000e+00
  %4350 = fcmp fast ogt float %66, 0.000000e+00
  %4351 = fcmp fast ogt float %67, 0.000000e+00
  %4352 = fcmp fast olt float %65, 0.000000e+00
  %4353 = fcmp fast olt float %66, 0.000000e+00
  %4354 = fcmp fast olt float %67, 0.000000e+00
  %4355 = zext i1 %4349 to i32
  %4356 = zext i1 %4350 to i32
  %4357 = zext i1 %4351 to i32
  %4358 = zext i1 %4352 to i32
  %4359 = zext i1 %4353 to i32
  %4360 = zext i1 %4354 to i32
  %4361 = sub nsw i32 %4355, %4358
  %4362 = sub nsw i32 %4356, %4359
  %4363 = sub nsw i32 %4357, %4360
  %4364 = call float @dx.op.unary.f32(i32 83, float %4330)  ; DerivCoarseX(value)
  %4365 = call float @dx.op.unary.f32(i32 83, float %4331)  ; DerivCoarseX(value)
  %4366 = call float @dx.op.unary.f32(i32 83, float %4332)  ; DerivCoarseX(value)
  %4367 = call float @dx.op.unary.f32(i32 84, float %4330)  ; DerivCoarseY(value)
  %4368 = call float @dx.op.unary.f32(i32 84, float %4331)  ; DerivCoarseY(value)
  %4369 = call float @dx.op.unary.f32(i32 84, float %4332)  ; DerivCoarseY(value)
  %4370 = fcmp fast ole float %293, %4348
  %4371 = fmul fast float %4347, %4345
  %4372 = fcmp fast ole float %293, %4371
  %4373 = select i1 %4372, float %4332, float %4330
  %4374 = select i1 %4372, float %4330, float %4331
  %4375 = select i1 %4370, float %4331, float %4373
  %4376 = select i1 %4370, float %4332, float %4374
  %4377 = select i1 %4372, float %4366, float %4364
  %4378 = select i1 %4372, float %4364, float %4365
  %4379 = select i1 %4370, float %4365, float %4377
  %4380 = select i1 %4370, float %4366, float %4378
  %4381 = select i1 %4372, float %4369, float %4367
  %4382 = select i1 %4372, float %4367, float %4368
  %4383 = select i1 %4370, float %4368, float %4381
  %4384 = select i1 %4370, float %4369, float %4382
  %4385 = call float @dx.op.unary.f32(i32 27, float %4375)  ; Round_ni(value)
  %4386 = call float @dx.op.unary.f32(i32 27, float %4376)  ; Round_ni(value)
  %4387 = fptosi float %4385 to i32
  %4388 = fptosi float %4386 to i32
  %4389 = xor i32 %4388, %4387
  %4390 = sitofp i32 %4389 to float
  %4391 = fptosi float %4390 to i32
  %4392 = sitofp i32 %4391 to float
  %4393 = fmul fast float %4392, 0x3FE3C6EF40000000
  %4394 = frem fast float %4385, 2.560000e+02
  %4395 = frem fast float %4386, 2.560000e+02
  %4396 = fptoui float %4394 to i32
  %4397 = fptoui float %4395 to i32
  %4398 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4396, i32 %4397, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4399 = extractvalue %dx.types.ResRet.f32 %4398, 0
  %4400 = extractvalue %dx.types.ResRet.f32 %4398, 1
  %4401 = extractvalue %dx.types.ResRet.f32 %4398, 2
  %4402 = fadd fast float %4399, %4393
  %4403 = fadd fast float %4400, %4393
  %4404 = fadd fast float %4401, %4393
  %4405 = call float @dx.op.unary.f32(i32 22, float %4402)  ; Frc(value)
  %4406 = call float @dx.op.unary.f32(i32 22, float %4403)  ; Frc(value)
  %4407 = call float @dx.op.unary.f32(i32 22, float %4404)  ; Frc(value)
  %4408 = fmul fast float %4407, 0x401921FB60000000
  %4409 = call float @dx.op.unary.f32(i32 13, float %4408)  ; Sin(value)
  %4410 = call float @dx.op.unary.f32(i32 12, float %4408)  ; Cos(value)
  %4411 = fsub fast float -0.000000e+00, %4410
  %4412 = fmul fast float %4410, %4375
  %4413 = call float @dx.op.tertiary.f32(i32 46, float %4409, float %4376, float %4412)  ; FMad(a,b,c)
  %4414 = fmul fast float %4409, %4375
  %4415 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4376, float %4414)  ; FMad(a,b,c)
  %4416 = fadd fast float %4413, %4405
  %4417 = fadd fast float %4415, %4406
  %4418 = extractvalue %dx.types.CBufRet.f32 %4328, 3
  %4419 = bitcast float %4418 to i32
  %4420 = icmp eq i32 %4419, 0
  br i1 %4420, label %4459, label %4421

; <label>:4421                                    ; preds = %4324
  %4422 = add i32 %4419, 0
  %4423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4424 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4423, %dx.types.Handle %101, float %4416, float %4417, float undef, float undef, i32 0, i32 0, i32 undef, float %4379, float %4380, float undef, float %4383, float %4384, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.f32 %4426, 1
  %4428 = extractvalue %dx.types.CBufRet.f32 %4426, 2
  %4429 = fsub fast float 1.000000e+00, %4318
  %4430 = call float @dx.op.binary.f32(i32 35, float %4429, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4431 = bitcast float %4318 to i32
  %4432 = sitofp i32 %4431 to float
  %4433 = fadd fast float %4432, 0xC1CFBF8940000000
  %4434 = fmul fast float %4428, %4433
  %4435 = fadd fast float %4434, 0x41CFBF8940000000
  %4436 = fptosi float %4435 to i32
  %4437 = bitcast i32 %4436 to float
  %4438 = bitcast float %4430 to i32
  %4439 = sitofp i32 %4438 to float
  %4440 = fadd fast float %4439, 0xC1CFBF8940000000
  %4441 = fmul fast float %4440, %4428
  %4442 = fadd fast float %4441, 0x41CFBF8940000000
  %4443 = fptosi float %4442 to i32
  %4444 = bitcast i32 %4443 to float
  %4445 = fmul fast float %4437, %4427
  %4446 = fmul fast float %4444, %4427
  %4447 = fsub fast float %4430, %4445
  %4448 = fadd fast float %4446, %4430
  %4449 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4450 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4451 = fsub fast float %4425, %4449
  %4452 = fsub fast float %4450, %4449
  %4453 = bitcast float %4452 to i32
  %4454 = sub nsw i32 2129859010, %4453
  %4455 = bitcast i32 %4454 to float
  %4456 = fmul fast float %4455, %4451
  %4457 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4458 = fcmp fast olt float %4457, 0x3F70101020000000
  br i1 %4458, label %4597, label %4459

; <label>:4459                                    ; preds = %4421, %4324
  %4460 = phi float [ %4457, %4421 ], [ %4318, %4324 ]
  %4461 = fmul fast float %4460, %4327
  %4462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.i32 %4462, 1
  %4464 = extractvalue %dx.types.CBufRet.i32 %4462, 0
  %4465 = add i32 %4464, 0
  %4466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4467 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4466, %dx.types.Handle %100, float %4416, float %4417, float undef, float undef, i32 0, i32 0, i32 undef, float %4379, float %4380, float undef, float %4383, float %4384, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4468 = extractvalue %dx.types.ResRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.ResRet.f32 %4467, 1
  %4470 = extractvalue %dx.types.ResRet.f32 %4467, 2
  %4471 = extractvalue %dx.types.ResRet.f32 %4467, 3
  %4472 = and i32 %4463, 255
  %4473 = uitofp i32 %4472 to float
  %4474 = lshr i32 %4463, 8
  %4475 = and i32 %4474, 255
  %4476 = uitofp i32 %4475 to float
  %4477 = fmul fast float %4471, %4473
  %4478 = fadd fast float %4477, %4476
  %4479 = fmul fast float %4478, 0x3F70101000000000
  %4480 = fadd fast float %4479, 0xBFB99999A0000000
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fmul fast float %4481, 0x3FF1C71C80000000
  %4483 = call float @dx.op.binary.f32(i32 36, float %4479, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4484 = fsub fast float 1.000000e+00, %4482
  %4485 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4486 = fmul fast float %4485, %4468
  %4487 = fmul fast float %4485, %4469
  %4488 = fmul fast float %4485, %4470
  %4489 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4490 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4491 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4492 = fmul fast float %4482, %4468
  %4493 = fmul fast float %4482, %4469
  %4494 = fmul fast float %4482, %4470
  %4495 = fadd fast float %4492, %4483
  %4496 = fadd fast float %4493, %4483
  %4497 = fadd fast float %4494, %4483
  %4498 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4499 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4500 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.i32 %4501, 3
  %4503 = extractvalue %dx.types.CBufRet.i32 %4501, 2
  %4504 = add i32 %4503, 0
  %4505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4504, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4506 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4505, %dx.types.Handle %100, float %4416, float %4417, float undef, float undef, i32 0, i32 0, i32 undef, float %4379, float %4380, float undef, float %4383, float %4384, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = extractvalue %dx.types.ResRet.f32 %4506, 1
  %4509 = extractvalue %dx.types.ResRet.f32 %4506, 2
  %4510 = extractvalue %dx.types.ResRet.f32 %4506, 3
  %4511 = and i32 %4502, 255
  %4512 = uitofp i32 %4511 to float
  %4513 = lshr i32 %4502, 8
  %4514 = and i32 %4513, 255
  %4515 = uitofp i32 %4514 to float
  %4516 = lshr i32 %4502, 16
  %4517 = and i32 %4516, 255
  %4518 = uitofp i32 %4517 to float
  %4519 = fmul fast float %4518, 0x3F70101000000000
  %4520 = fmul fast float %4507, %4512
  %4521 = fadd fast float %4520, %4515
  %4522 = fmul fast float %4521, 0x3F70101000000000
  %4523 = fadd fast float %4508, -5.000000e-01
  %4524 = fadd fast float %4510, -5.000000e-01
  %4525 = fmul fast float %4523, %4519
  %4526 = fmul fast float %4524, %4519
  %4527 = fadd fast float %4525, 5.000000e-01
  %4528 = fadd fast float %4526, 5.000000e-01
  %4529 = fmul fast float %4527, 2.000000e+00
  %4530 = fadd fast float %4529, -1.000000e+00
  %4531 = fmul fast float %4528, 2.000000e+00
  %4532 = fadd fast float %4531, -1.000000e+00
  %4533 = fadd fast float %4530, %4532
  %4534 = fmul fast float %4533, 5.000000e-01
  %4535 = fsub fast float %4530, %4532
  %4536 = fmul fast float %4535, 5.000000e-01
  %4537 = call float @dx.op.unary.f32(i32 6, float %4534)  ; FAbs(value)
  %4538 = fsub fast float 1.000000e+00, %4537
  %4539 = call float @dx.op.unary.f32(i32 6, float %4536)  ; FAbs(value)
  %4540 = fsub fast float %4538, %4539
  %4541 = call float @dx.op.dot3.f32(i32 55, float %4534, float %4536, float %4540, float %4534, float %4536, float %4540)  ; Dot3(ax,ay,az,bx,by,bz)
  %4542 = call float @dx.op.unary.f32(i32 25, float %4541)  ; Rsqrt(value)
  %4543 = fmul fast float %4534, %4542
  %4544 = fmul fast float %4536, %4542
  %4545 = select i1 %4372, i32 %4362, i32 %4363
  %4546 = select i1 %4370, i32 %4361, i32 %4545
  %4547 = sitofp i32 %4546 to float
  %4548 = fmul fast float %4540, %4547
  %4549 = fmul fast float %4548, %4542
  %4550 = select i1 %4372, float %4549, float %4544
  %4551 = select i1 %4372, float %4544, float %4549
  %4552 = select i1 %4370, float %4549, float %4543
  %4553 = select i1 %4370, float %4544, float %4550
  %4554 = select i1 %4370, float %4543, float %4551
  %4555 = fsub fast float %4489, %3922
  %4556 = fsub fast float %4490, %3923
  %4557 = fsub fast float %4491, %3924
  %4558 = fmul fast float %4555, %4461
  %4559 = fmul fast float %4556, %4461
  %4560 = fmul fast float %4557, %4461
  %4561 = fadd fast float %4558, %3922
  %4562 = fadd fast float %4559, %3923
  %4563 = fadd fast float %4560, %3924
  %4564 = fsub fast float %4498, %3907
  %4565 = fsub fast float %4499, %3908
  %4566 = fsub fast float %4500, %3909
  %4567 = fmul fast float %4564, %4461
  %4568 = fmul fast float %4565, %4461
  %4569 = fmul fast float %4566, %4461
  %4570 = fadd fast float %4567, %3907
  %4571 = fadd fast float %4568, %3908
  %4572 = fadd fast float %4569, %3909
  %4573 = fadd fast float %4552, %3851
  %4574 = fadd fast float %4553, %3852
  %4575 = fadd fast float %4554, %3853
  %4576 = call float @dx.op.dot3.f32(i32 55, float %4573, float %4574, float %4575, float %4573, float %4574, float %4575)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = call float @dx.op.unary.f32(i32 25, float %4576)  ; Rsqrt(value)
  %4578 = fmul fast float %4573, %4577
  %4579 = fmul fast float %4574, %4577
  %4580 = fmul fast float %4575, %4577
  %4581 = fsub fast float %4578, %3851
  %4582 = fsub fast float %4579, %3852
  %4583 = fsub fast float %4580, %3853
  %4584 = fmul fast float %4581, %4461
  %4585 = fmul fast float %4582, %4461
  %4586 = fmul fast float %4583, %4461
  %4587 = fadd fast float %4584, %3851
  %4588 = fadd fast float %4585, %3852
  %4589 = fadd fast float %4586, %3853
  %4590 = call float @dx.op.binary.f32(i32 36, float %3860, float %4509)  ; FMin(a,b)
  %4591 = fsub fast float %4590, %3860
  %4592 = fmul fast float %4591, %4461
  %4593 = fadd fast float %4592, %3860
  %4594 = fsub fast float %4522, %3910
  %4595 = fmul fast float %4594, %4461
  %4596 = fadd fast float %4595, %3910
  br label %4597

; <label>:4597                                    ; preds = %4459, %4421, %4323
  %4598 = phi float [ %4570, %4459 ], [ %3907, %4421 ], [ %3907, %4323 ]
  %4599 = phi float [ %4571, %4459 ], [ %3908, %4421 ], [ %3908, %4323 ]
  %4600 = phi float [ %4572, %4459 ], [ %3909, %4421 ], [ %3909, %4323 ]
  %4601 = phi float [ %4587, %4459 ], [ %3851, %4421 ], [ %3851, %4323 ]
  %4602 = phi float [ %4588, %4459 ], [ %3852, %4421 ], [ %3852, %4323 ]
  %4603 = phi float [ %4589, %4459 ], [ %3853, %4421 ], [ %3853, %4323 ]
  %4604 = phi float [ %4561, %4459 ], [ %3922, %4421 ], [ %3922, %4323 ]
  %4605 = phi float [ %4562, %4459 ], [ %3923, %4421 ], [ %3923, %4323 ]
  %4606 = phi float [ %4563, %4459 ], [ %3924, %4421 ], [ %3924, %4323 ]
  %4607 = phi float [ %4596, %4459 ], [ %3910, %4421 ], [ %3910, %4323 ]
  %4608 = phi float [ %4593, %4459 ], [ %3860, %4421 ], [ %3860, %4323 ]
  br i1 %4321, label %4609, label %4882

; <label>:4609                                    ; preds = %4597
  %4610 = call float @dx.op.unary.f32(i32 23, float %4608)  ; Log(value)
  %4611 = fmul fast float %4610, 4.000000e+00
  %4612 = call float @dx.op.unary.f32(i32 21, float %4611)  ; Exp(value)
  %4613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4614 = extractvalue %dx.types.CBufRet.f32 %4613, 0
  %4615 = fmul fast float %4614, %56
  %4616 = fmul fast float %4614, %57
  %4617 = fmul fast float %4614, %58
  %4618 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4619 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4620 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4621 = call float @dx.op.unary.f32(i32 23, float %4618)  ; Log(value)
  %4622 = call float @dx.op.unary.f32(i32 23, float %4619)  ; Log(value)
  %4623 = call float @dx.op.unary.f32(i32 23, float %4620)  ; Log(value)
  %4624 = fmul fast float %4621, 4.000000e+00
  %4625 = fmul fast float %4622, 4.000000e+00
  %4626 = fmul fast float %4623, 4.000000e+00
  %4627 = call float @dx.op.unary.f32(i32 21, float %4624)  ; Exp(value)
  %4628 = call float @dx.op.unary.f32(i32 21, float %4625)  ; Exp(value)
  %4629 = call float @dx.op.unary.f32(i32 21, float %4626)  ; Exp(value)
  %4630 = fadd fast float %4628, %4627
  %4631 = fadd fast float %4630, %4629
  %4632 = fdiv fast float 1.000000e+00, %4631
  %4633 = fmul fast float %4632, %4627
  %4634 = fcmp fast ogt float %65, 0.000000e+00
  %4635 = fcmp fast ogt float %66, 0.000000e+00
  %4636 = fcmp fast ogt float %67, 0.000000e+00
  %4637 = fcmp fast olt float %65, 0.000000e+00
  %4638 = fcmp fast olt float %66, 0.000000e+00
  %4639 = fcmp fast olt float %67, 0.000000e+00
  %4640 = zext i1 %4634 to i32
  %4641 = zext i1 %4635 to i32
  %4642 = zext i1 %4636 to i32
  %4643 = zext i1 %4637 to i32
  %4644 = zext i1 %4638 to i32
  %4645 = zext i1 %4639 to i32
  %4646 = sub nsw i32 %4640, %4643
  %4647 = sub nsw i32 %4641, %4644
  %4648 = sub nsw i32 %4642, %4645
  %4649 = call float @dx.op.unary.f32(i32 83, float %4615)  ; DerivCoarseX(value)
  %4650 = call float @dx.op.unary.f32(i32 83, float %4616)  ; DerivCoarseX(value)
  %4651 = call float @dx.op.unary.f32(i32 83, float %4617)  ; DerivCoarseX(value)
  %4652 = call float @dx.op.unary.f32(i32 84, float %4615)  ; DerivCoarseY(value)
  %4653 = call float @dx.op.unary.f32(i32 84, float %4616)  ; DerivCoarseY(value)
  %4654 = call float @dx.op.unary.f32(i32 84, float %4617)  ; DerivCoarseY(value)
  %4655 = fcmp fast ole float %293, %4633
  %4656 = fmul fast float %4632, %4630
  %4657 = fcmp fast ole float %293, %4656
  %4658 = select i1 %4657, float %4617, float %4615
  %4659 = select i1 %4657, float %4615, float %4616
  %4660 = select i1 %4655, float %4616, float %4658
  %4661 = select i1 %4655, float %4617, float %4659
  %4662 = select i1 %4657, float %4651, float %4649
  %4663 = select i1 %4657, float %4649, float %4650
  %4664 = select i1 %4655, float %4650, float %4662
  %4665 = select i1 %4655, float %4651, float %4663
  %4666 = select i1 %4657, float %4654, float %4652
  %4667 = select i1 %4657, float %4652, float %4653
  %4668 = select i1 %4655, float %4653, float %4666
  %4669 = select i1 %4655, float %4654, float %4667
  %4670 = call float @dx.op.unary.f32(i32 27, float %4660)  ; Round_ni(value)
  %4671 = call float @dx.op.unary.f32(i32 27, float %4661)  ; Round_ni(value)
  %4672 = fptosi float %4670 to i32
  %4673 = fptosi float %4671 to i32
  %4674 = xor i32 %4673, %4672
  %4675 = sitofp i32 %4674 to float
  %4676 = fptosi float %4675 to i32
  %4677 = sitofp i32 %4676 to float
  %4678 = fmul fast float %4677, 0x3FE3C6EF40000000
  %4679 = frem fast float %4670, 2.560000e+02
  %4680 = frem fast float %4671, 2.560000e+02
  %4681 = fptoui float %4679 to i32
  %4682 = fptoui float %4680 to i32
  %4683 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4681, i32 %4682, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4684 = extractvalue %dx.types.ResRet.f32 %4683, 0
  %4685 = extractvalue %dx.types.ResRet.f32 %4683, 1
  %4686 = extractvalue %dx.types.ResRet.f32 %4683, 2
  %4687 = fadd fast float %4684, %4678
  %4688 = fadd fast float %4685, %4678
  %4689 = fadd fast float %4686, %4678
  %4690 = call float @dx.op.unary.f32(i32 22, float %4687)  ; Frc(value)
  %4691 = call float @dx.op.unary.f32(i32 22, float %4688)  ; Frc(value)
  %4692 = call float @dx.op.unary.f32(i32 22, float %4689)  ; Frc(value)
  %4693 = fmul fast float %4692, 0x401921FB60000000
  %4694 = call float @dx.op.unary.f32(i32 13, float %4693)  ; Sin(value)
  %4695 = call float @dx.op.unary.f32(i32 12, float %4693)  ; Cos(value)
  %4696 = fsub fast float -0.000000e+00, %4695
  %4697 = fmul fast float %4695, %4660
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %4694, float %4661, float %4697)  ; FMad(a,b,c)
  %4699 = fmul fast float %4694, %4660
  %4700 = call float @dx.op.tertiary.f32(i32 46, float %4696, float %4661, float %4699)  ; FMad(a,b,c)
  %4701 = fadd fast float %4698, %4690
  %4702 = fadd fast float %4700, %4691
  %4703 = extractvalue %dx.types.CBufRet.f32 %4613, 3
  %4704 = bitcast float %4703 to i32
  %4705 = icmp eq i32 %4704, 0
  br i1 %4705, label %4744, label %4706

; <label>:4706                                    ; preds = %4609
  %4707 = add i32 %4704, 0
  %4708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4709 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4708, %dx.types.Handle %101, float %4701, float %4702, float undef, float undef, i32 0, i32 0, i32 undef, float %4664, float %4665, float undef, float %4668, float %4669, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 1
  %4713 = extractvalue %dx.types.CBufRet.f32 %4711, 2
  %4714 = fsub fast float 1.000000e+00, %4319
  %4715 = call float @dx.op.binary.f32(i32 35, float %4714, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4716 = bitcast float %4319 to i32
  %4717 = sitofp i32 %4716 to float
  %4718 = fadd fast float %4717, 0xC1CFBF8940000000
  %4719 = fmul fast float %4713, %4718
  %4720 = fadd fast float %4719, 0x41CFBF8940000000
  %4721 = fptosi float %4720 to i32
  %4722 = bitcast i32 %4721 to float
  %4723 = bitcast float %4715 to i32
  %4724 = sitofp i32 %4723 to float
  %4725 = fadd fast float %4724, 0xC1CFBF8940000000
  %4726 = fmul fast float %4725, %4713
  %4727 = fadd fast float %4726, 0x41CFBF8940000000
  %4728 = fptosi float %4727 to i32
  %4729 = bitcast i32 %4728 to float
  %4730 = fmul fast float %4722, %4712
  %4731 = fmul fast float %4729, %4712
  %4732 = fsub fast float %4715, %4730
  %4733 = fadd fast float %4731, %4715
  %4734 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4735 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4736 = fsub fast float %4710, %4734
  %4737 = fsub fast float %4735, %4734
  %4738 = bitcast float %4737 to i32
  %4739 = sub nsw i32 2129859010, %4738
  %4740 = bitcast i32 %4739 to float
  %4741 = fmul fast float %4740, %4736
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = fcmp fast olt float %4742, 0x3F70101020000000
  br i1 %4743, label %4882, label %4744

; <label>:4744                                    ; preds = %4706, %4609
  %4745 = phi float [ %4742, %4706 ], [ %4319, %4609 ]
  %4746 = fmul fast float %4745, %4612
  %4747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.i32 %4747, 1
  %4749 = extractvalue %dx.types.CBufRet.i32 %4747, 0
  %4750 = add i32 %4749, 0
  %4751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4752 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4751, %dx.types.Handle %100, float %4701, float %4702, float undef, float undef, i32 0, i32 0, i32 undef, float %4664, float %4665, float undef, float %4668, float %4669, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4753 = extractvalue %dx.types.ResRet.f32 %4752, 0
  %4754 = extractvalue %dx.types.ResRet.f32 %4752, 1
  %4755 = extractvalue %dx.types.ResRet.f32 %4752, 2
  %4756 = extractvalue %dx.types.ResRet.f32 %4752, 3
  %4757 = and i32 %4748, 255
  %4758 = uitofp i32 %4757 to float
  %4759 = lshr i32 %4748, 8
  %4760 = and i32 %4759, 255
  %4761 = uitofp i32 %4760 to float
  %4762 = fmul fast float %4756, %4758
  %4763 = fadd fast float %4762, %4761
  %4764 = fmul fast float %4763, 0x3F70101000000000
  %4765 = fadd fast float %4764, 0xBFB99999A0000000
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4767 = fmul fast float %4766, 0x3FF1C71C80000000
  %4768 = call float @dx.op.binary.f32(i32 36, float %4764, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4769 = fsub fast float 1.000000e+00, %4767
  %4770 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4771 = fmul fast float %4770, %4753
  %4772 = fmul fast float %4770, %4754
  %4773 = fmul fast float %4770, %4755
  %4774 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4775 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4776 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4777 = fmul fast float %4767, %4753
  %4778 = fmul fast float %4767, %4754
  %4779 = fmul fast float %4767, %4755
  %4780 = fadd fast float %4777, %4768
  %4781 = fadd fast float %4778, %4768
  %4782 = fadd fast float %4779, %4768
  %4783 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4784 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4785 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.i32 %4786, 3
  %4788 = extractvalue %dx.types.CBufRet.i32 %4786, 2
  %4789 = add i32 %4788, 0
  %4790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4791 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4790, %dx.types.Handle %100, float %4701, float %4702, float undef, float undef, i32 0, i32 0, i32 undef, float %4664, float %4665, float undef, float %4668, float %4669, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.ResRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.ResRet.f32 %4791, 2
  %4795 = extractvalue %dx.types.ResRet.f32 %4791, 3
  %4796 = and i32 %4787, 255
  %4797 = uitofp i32 %4796 to float
  %4798 = lshr i32 %4787, 8
  %4799 = and i32 %4798, 255
  %4800 = uitofp i32 %4799 to float
  %4801 = lshr i32 %4787, 16
  %4802 = and i32 %4801, 255
  %4803 = uitofp i32 %4802 to float
  %4804 = fmul fast float %4803, 0x3F70101000000000
  %4805 = fmul fast float %4792, %4797
  %4806 = fadd fast float %4805, %4800
  %4807 = fmul fast float %4806, 0x3F70101000000000
  %4808 = fadd fast float %4793, -5.000000e-01
  %4809 = fadd fast float %4795, -5.000000e-01
  %4810 = fmul fast float %4808, %4804
  %4811 = fmul fast float %4809, %4804
  %4812 = fadd fast float %4810, 5.000000e-01
  %4813 = fadd fast float %4811, 5.000000e-01
  %4814 = fmul fast float %4812, 2.000000e+00
  %4815 = fadd fast float %4814, -1.000000e+00
  %4816 = fmul fast float %4813, 2.000000e+00
  %4817 = fadd fast float %4816, -1.000000e+00
  %4818 = fadd fast float %4815, %4817
  %4819 = fmul fast float %4818, 5.000000e-01
  %4820 = fsub fast float %4815, %4817
  %4821 = fmul fast float %4820, 5.000000e-01
  %4822 = call float @dx.op.unary.f32(i32 6, float %4819)  ; FAbs(value)
  %4823 = fsub fast float 1.000000e+00, %4822
  %4824 = call float @dx.op.unary.f32(i32 6, float %4821)  ; FAbs(value)
  %4825 = fsub fast float %4823, %4824
  %4826 = call float @dx.op.dot3.f32(i32 55, float %4819, float %4821, float %4825, float %4819, float %4821, float %4825)  ; Dot3(ax,ay,az,bx,by,bz)
  %4827 = call float @dx.op.unary.f32(i32 25, float %4826)  ; Rsqrt(value)
  %4828 = fmul fast float %4819, %4827
  %4829 = fmul fast float %4821, %4827
  %4830 = select i1 %4657, i32 %4647, i32 %4648
  %4831 = select i1 %4655, i32 %4646, i32 %4830
  %4832 = sitofp i32 %4831 to float
  %4833 = fmul fast float %4825, %4832
  %4834 = fmul fast float %4833, %4827
  %4835 = select i1 %4657, float %4834, float %4829
  %4836 = select i1 %4657, float %4829, float %4834
  %4837 = select i1 %4655, float %4834, float %4828
  %4838 = select i1 %4655, float %4829, float %4835
  %4839 = select i1 %4655, float %4828, float %4836
  %4840 = fsub fast float %4774, %4604
  %4841 = fsub fast float %4775, %4605
  %4842 = fsub fast float %4776, %4606
  %4843 = fmul fast float %4840, %4746
  %4844 = fmul fast float %4841, %4746
  %4845 = fmul fast float %4842, %4746
  %4846 = fadd fast float %4843, %4604
  %4847 = fadd fast float %4844, %4605
  %4848 = fadd fast float %4845, %4606
  %4849 = fsub fast float %4783, %4598
  %4850 = fsub fast float %4784, %4599
  %4851 = fsub fast float %4785, %4600
  %4852 = fmul fast float %4849, %4746
  %4853 = fmul fast float %4850, %4746
  %4854 = fmul fast float %4851, %4746
  %4855 = fadd fast float %4852, %4598
  %4856 = fadd fast float %4853, %4599
  %4857 = fadd fast float %4854, %4600
  %4858 = fadd fast float %4837, %4601
  %4859 = fadd fast float %4838, %4602
  %4860 = fadd fast float %4839, %4603
  %4861 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4859, float %4860, float %4858, float %4859, float %4860)  ; Dot3(ax,ay,az,bx,by,bz)
  %4862 = call float @dx.op.unary.f32(i32 25, float %4861)  ; Rsqrt(value)
  %4863 = fmul fast float %4858, %4862
  %4864 = fmul fast float %4859, %4862
  %4865 = fmul fast float %4860, %4862
  %4866 = fsub fast float %4863, %4601
  %4867 = fsub fast float %4864, %4602
  %4868 = fsub fast float %4865, %4603
  %4869 = fmul fast float %4866, %4746
  %4870 = fmul fast float %4867, %4746
  %4871 = fmul fast float %4868, %4746
  %4872 = fadd fast float %4869, %4601
  %4873 = fadd fast float %4870, %4602
  %4874 = fadd fast float %4871, %4603
  %4875 = call float @dx.op.binary.f32(i32 36, float %4608, float %4794)  ; FMin(a,b)
  %4876 = fsub fast float %4875, %4608
  %4877 = fmul fast float %4876, %4746
  %4878 = fadd fast float %4877, %4608
  %4879 = fsub fast float %4807, %4607
  %4880 = fmul fast float %4879, %4746
  %4881 = fadd fast float %4880, %4607
  br label %4882

; <label>:4882                                    ; preds = %4744, %4706, %4597, %4313
  %4883 = phi float [ %4855, %4744 ], [ %4598, %4706 ], [ %4598, %4597 ], [ %3907, %4313 ]
  %4884 = phi float [ %4856, %4744 ], [ %4599, %4706 ], [ %4599, %4597 ], [ %3908, %4313 ]
  %4885 = phi float [ %4857, %4744 ], [ %4600, %4706 ], [ %4600, %4597 ], [ %3909, %4313 ]
  %4886 = phi float [ %4872, %4744 ], [ %4601, %4706 ], [ %4601, %4597 ], [ %3851, %4313 ]
  %4887 = phi float [ %4873, %4744 ], [ %4602, %4706 ], [ %4602, %4597 ], [ %3852, %4313 ]
  %4888 = phi float [ %4874, %4744 ], [ %4603, %4706 ], [ %4603, %4597 ], [ %3853, %4313 ]
  %4889 = phi float [ %4846, %4744 ], [ %4604, %4706 ], [ %4604, %4597 ], [ %3922, %4313 ]
  %4890 = phi float [ %4847, %4744 ], [ %4605, %4706 ], [ %4605, %4597 ], [ %3923, %4313 ]
  %4891 = phi float [ %4848, %4744 ], [ %4606, %4706 ], [ %4606, %4597 ], [ %3924, %4313 ]
  %4892 = phi float [ %4881, %4744 ], [ %4607, %4706 ], [ %4607, %4597 ], [ %3910, %4313 ]
  %4893 = phi float [ %4878, %4744 ], [ %4608, %4706 ], [ %4608, %4597 ], [ %3860, %4313 ]
  %4894 = fcmp fast une float %4317, 0.000000e+00
  %4895 = fsub fast float -0.000000e+00, %211
  %4896 = fsub fast float -0.000000e+00, %212
  %4897 = fsub fast float -0.000000e+00, %213
  br i1 %4894, label %4898, label %5059

; <label>:4898                                    ; preds = %4882
  %4899 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4896, float %4897, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = fmul fast float %4317, 2.500000e+00
  %4901 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4902 = fmul fast float %4317, 0x4013FFFFE0000000
  %4903 = fadd fast float %4902, 0xBFFFFFFFE0000000
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fmul fast float %4317, 0x4004000020000000
  %4906 = fadd fast float %4905, 0xBFF8000040000000
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = fmul fast float %3889, 1.000000e+01
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fmul fast float %4909, 2.000000e+00
  %4911 = fsub fast float 3.000000e+00, %4910
  %4912 = fmul fast float %4909, %4909
  %4913 = fmul fast float %4912, %4911
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = fsub fast float 0x3FE3333340000000, %4892
  %4916 = fmul fast float %4915, 0x400AAAAAA0000000
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fmul fast float %4914, %4917
  %4919 = fmul fast float %4889, 0x3FEA2B8620000000
  %4920 = fmul fast float %4890, 0x3FEA2B8620000000
  %4921 = fmul fast float %4891, 0x3FEA2B8620000000
  %4922 = fadd fast float %4919, 0x3FC81DFBA0000000
  %4923 = fmul fast float %4922, %4889
  %4924 = fadd fast float %4923, 0x3F910E6020000000
  %4925 = fadd fast float %4920, 0x3FC81DFBA0000000
  %4926 = fmul fast float %4925, %4890
  %4927 = fadd fast float %4926, 0x3F910E6020000000
  %4928 = fadd fast float %4921, 0x3FC81DFBA0000000
  %4929 = fmul fast float %4928, %4891
  %4930 = fadd fast float %4929, 0x3F910E6020000000
  %4931 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4932 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4934 = fsub fast float %4931, %4889
  %4935 = fsub fast float %4932, %4890
  %4936 = fsub fast float %4933, %4891
  %4937 = fmul fast float %4934, %4901
  %4938 = fmul fast float %4937, %4918
  %4939 = fmul fast float %4935, %4901
  %4940 = fmul fast float %4939, %4918
  %4941 = fmul fast float %4936, %4901
  %4942 = fmul fast float %4941, %4918
  %4943 = fadd fast float %4938, %4889
  %4944 = fadd fast float %4940, %4890
  %4945 = fadd fast float %4942, %4891
  %4946 = fmul fast float %4893, %4893
  %4947 = fmul fast float %4946, %4946
  %4948 = fadd fast float %4904, 1.000000e+00
  %4949 = fsub fast float %4948, %4918
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4953 = fsub fast float 1.000000e+00, %4947
  %4954 = call float @dx.op.binary.f32(i32 36, float %4950, float %4953)  ; FMin(a,b)
  %4955 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4956 = call float @dx.op.binary.f32(i32 35, float %4954, float %4955)  ; FMax(a,b)
  %4957 = fadd fast float %4952, 0xBFE4CCCCC0000000
  %4958 = fmul fast float %4957, 0x4006DB6DA0000000
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fmul fast float %4959, 2.000000e+00
  %4961 = fsub fast float 3.000000e+00, %4960
  %4962 = bitcast float %4883 to i32
  %4963 = ashr i32 %4962, 1
  %4964 = add nsw i32 %4963, 532487669
  %4965 = bitcast i32 %4964 to float
  %4966 = fsub fast float 1.000000e+00, %4965
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = bitcast i32 %4968 to float
  %4970 = fmul fast float %4969, 2.000000e+00
  %4971 = bitcast float %4884 to i32
  %4972 = ashr i32 %4971, 1
  %4973 = add nsw i32 %4972, 532487669
  %4974 = bitcast i32 %4973 to float
  %4975 = fsub fast float 1.000000e+00, %4974
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = fmul fast float %4978, 2.000000e+00
  %4980 = bitcast float %4885 to i32
  %4981 = ashr i32 %4980, 1
  %4982 = add nsw i32 %4981, 532487669
  %4983 = bitcast i32 %4982 to float
  %4984 = fsub fast float 1.000000e+00, %4983
  %4985 = bitcast float %4984 to i32
  %4986 = sub nsw i32 2129859010, %4985
  %4987 = bitcast i32 %4986 to float
  %4988 = fmul fast float %4987, 2.000000e+00
  %4989 = fsub fast float 0x4002A9FBE0000000, %4970
  %4990 = fadd fast float %4970, 0x3FD54FDF00000000
  %4991 = bitcast float %4990 to i32
  %4992 = sub nsw i32 2129859010, %4991
  %4993 = bitcast i32 %4992 to float
  %4994 = fmul fast float %4993, %4989
  %4995 = fmul fast float %4994, %4994
  %4996 = fsub fast float 0x4002A9FBE0000000, %4979
  %4997 = fadd fast float %4979, 0x3FD54FDF00000000
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = bitcast i32 %4999 to float
  %5001 = fmul fast float %5000, %4996
  %5002 = fmul fast float %5001, %5001
  %5003 = fsub fast float 0x4002A9FBE0000000, %4988
  %5004 = fadd fast float %4988, 0x3FD54FDF00000000
  %5005 = bitcast float %5004 to i32
  %5006 = sub nsw i32 2129859010, %5005
  %5007 = bitcast i32 %5006 to float
  %5008 = fmul fast float %5007, %5003
  %5009 = fmul fast float %5008, %5008
  %5010 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4995)  ; FMax(a,b)
  %5011 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5002)  ; FMax(a,b)
  %5012 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5009)  ; FMax(a,b)
  %5013 = fsub fast float 1.000000e+00, %4899
  %5014 = fadd fast float %5013, %4914
  %5015 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5016 = fsub fast float 1.000000e+00, %4298
  %5017 = fmul fast float %4956, %5016
  %5018 = fmul fast float %4959, %4959
  %5019 = fmul fast float %5018, %5017
  %5020 = fmul fast float %5019, %4961
  %5021 = fmul fast float %5016, 0xBFE99999A0000000
  %5022 = fmul fast float %5021, %4901
  %5023 = fmul fast float %5022, %4918
  %5024 = fadd fast float %5023, 1.000000e+00
  %5025 = fadd fast float %4892, -1.000000e+00
  %5026 = fmul fast float %5024, %5025
  %5027 = fadd fast float %5026, 1.000000e+00
  %5028 = fsub fast float %5010, %4883
  %5029 = fsub fast float %5011, %4884
  %5030 = fsub fast float %5012, %4885
  %5031 = fmul fast float %5020, %5028
  %5032 = fmul fast float %5020, %5029
  %5033 = fmul fast float %5020, %5030
  %5034 = fadd fast float %5031, %4883
  %5035 = fadd fast float %5032, %4884
  %5036 = fadd fast float %5033, %4885
  %5037 = fsub fast float %111, %4886
  %5038 = fsub fast float %112, %4887
  %5039 = fsub fast float %113, %4888
  %5040 = fmul fast float %5020, %5037
  %5041 = fmul fast float %5020, %5038
  %5042 = fmul fast float %5020, %5039
  %5043 = fadd fast float %5040, %4886
  %5044 = fadd fast float %5041, %4887
  %5045 = fadd fast float %5042, %4888
  %5046 = fmul fast float %5020, %5015
  %5047 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5048 = fsub fast float 1.000000e+00, %5047
  %5049 = fmul fast float %5046, %5048
  %5050 = fadd fast float %5049, %5047
  %5051 = fsub fast float 1.000000e+00, %4893
  %5052 = fmul fast float %5020, %5051
  %5053 = fadd fast float %5052, %4893
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5043, float %5044, float %5045, float %5043, float %5044, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 25, float %5054)  ; Rsqrt(value)
  %5056 = fmul fast float %5043, %5055
  %5057 = fmul fast float %5044, %5055
  %5058 = fmul fast float %5045, %5055
  br label %5059

; <label>:5059                                    ; preds = %4898, %4882
  %5060 = phi float [ %5034, %4898 ], [ %4883, %4882 ]
  %5061 = phi float [ %5035, %4898 ], [ %4884, %4882 ]
  %5062 = phi float [ %5036, %4898 ], [ %4885, %4882 ]
  %5063 = phi float [ %5056, %4898 ], [ %4886, %4882 ]
  %5064 = phi float [ %5057, %4898 ], [ %4887, %4882 ]
  %5065 = phi float [ %5058, %4898 ], [ %4888, %4882 ]
  %5066 = phi float [ %4943, %4898 ], [ %4889, %4882 ]
  %5067 = phi float [ %4944, %4898 ], [ %4890, %4882 ]
  %5068 = phi float [ %4945, %4898 ], [ %4891, %4882 ]
  %5069 = phi float [ %5050, %4898 ], [ %4892, %4882 ]
  %5070 = phi float [ %5053, %4898 ], [ %4893, %4882 ]
  %5071 = fsub fast float -0.000000e+00, %193
  %5072 = select i1 %282, float 0.000000e+00, float %5062
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5063, float %5064, float %5065, float %4895, float %4896, float %4897)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %5063, float %5064, float %5065)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = fmul fast float %5075, 2.000000e+00
  %5077 = fmul fast float %5076, %5063
  %5078 = fmul fast float %5076, %5064
  %5079 = fmul fast float %5076, %5065
  %5080 = fsub fast float %211, %5077
  %5081 = fsub fast float %212, %5078
  %5082 = fsub fast float %213, %5079
  %5083 = call float @dx.op.binary.f32(i32 36, float %5070, float 1.000000e+00)  ; FMin(a,b)
  %5084 = fsub fast float 1.000000e+00, %5070
  %5085 = bitcast float %5084 to i32
  %5086 = sub nsw i32 2129859010, %5085
  %5087 = bitcast i32 %5086 to float
  %5088 = fsub fast float 1.000000e+00, %75
  %5089 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = call float @dx.op.binary.f32(i32 35, float %5089, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5091 = fdiv fast float %5088, %5090
  %5092 = call float @dx.op.dot3.f32(i32 55, float %5063, float %5064, float %5065, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5094 = fmul fast float %5093, 5.000000e-01
  %5095 = fadd fast float %5094, 5.000000e-01
  %5096 = fmul fast float %5095, %75
  %5097 = call float @dx.op.dot3.f32(i32 55, float %5063, float %5064, float %5065, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5099 = fmul fast float %5098, %5091
  %5100 = fadd fast float %5096, %5099
  %5101 = fsub fast float 5.000000e-01, %5094
  %5102 = fmul fast float %5101, %5066
  %5103 = fmul fast float %5101, %5067
  %5104 = fmul fast float %5101, %5068
  %5105 = fadd fast float %5100, %5102
  %5106 = fadd fast float %5100, %5103
  %5107 = fadd fast float %5100, %5104
  %5108 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5109 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5110 = fmul fast float %5109, 5.000000e-01
  %5111 = fadd fast float %5110, 5.000000e-01
  %5112 = fmul fast float %5111, %75
  %5113 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fmul fast float %5114, %5091
  %5116 = fadd fast float %5112, %5115
  %5117 = fsub fast float 5.000000e-01, %5110
  %5118 = fmul fast float %5117, %5066
  %5119 = fmul fast float %5117, %5067
  %5120 = fmul fast float %5117, %5068
  %5121 = fadd fast float %5116, %5118
  %5122 = fadd fast float %5116, %5119
  %5123 = fadd fast float %5116, %5120
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = call float @dx.op.binary.f32(i32 36, float %5066, float %5125)  ; FMin(a,b)
  %5127 = fsub fast float 1.000000e+00, %5083
  %5128 = fmul fast float %5126, %5127
  %5129 = fsub fast float 1.000000e+00, %5128
  %5130 = bitcast float %5129 to i32
  %5131 = sub nsw i32 2129859010, %5130
  %5132 = bitcast i32 %5131 to float
  %5133 = call float @dx.op.binary.f32(i32 36, float %5067, float %5125)  ; FMin(a,b)
  %5134 = fmul fast float %5133, %5127
  %5135 = fsub fast float 1.000000e+00, %5134
  %5136 = bitcast float %5135 to i32
  %5137 = sub nsw i32 2129859010, %5136
  %5138 = bitcast i32 %5137 to float
  %5139 = call float @dx.op.binary.f32(i32 36, float %5068, float %5125)  ; FMin(a,b)
  %5140 = fmul fast float %5139, %5127
  %5141 = fsub fast float 1.000000e+00, %5140
  %5142 = bitcast float %5141 to i32
  %5143 = sub nsw i32 2129859010, %5142
  %5144 = bitcast i32 %5143 to float
  %5145 = fmul fast float %5083, %76
  %5146 = fmul fast float %5145, %5105
  %5147 = fmul fast float %5146, %5132
  %5148 = fmul fast float %5083, %77
  %5149 = fmul fast float %5148, %5106
  %5150 = fmul fast float %5149, %5138
  %5151 = fmul fast float %5083, %78
  %5152 = fmul fast float %5151, %5107
  %5153 = fmul fast float %5152, %5144
  %5154 = call float @dx.op.binary.f32(i32 36, float %5060, float %5125)  ; FMin(a,b)
  %5155 = fmul fast float %5154, %5127
  %5156 = fsub fast float 1.000000e+00, %5155
  %5157 = bitcast float %5156 to i32
  %5158 = sub nsw i32 2129859010, %5157
  %5159 = bitcast i32 %5158 to float
  %5160 = call float @dx.op.binary.f32(i32 36, float %5061, float %5125)  ; FMin(a,b)
  %5161 = fmul fast float %5160, %5127
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = bitcast float %5162 to i32
  %5164 = sub nsw i32 2129859010, %5163
  %5165 = bitcast i32 %5164 to float
  %5166 = call float @dx.op.binary.f32(i32 36, float %5072, float %5125)  ; FMin(a,b)
  %5167 = fmul fast float %5166, %5127
  %5168 = fsub fast float 1.000000e+00, %5167
  %5169 = bitcast float %5168 to i32
  %5170 = sub nsw i32 2129859010, %5169
  %5171 = bitcast i32 %5170 to float
  %5172 = fmul fast float %5145, %5121
  %5173 = fmul fast float %5172, %5159
  %5174 = fmul fast float %5148, %5122
  %5175 = fmul fast float %5174, %5165
  %5176 = fmul fast float %5151, %5123
  %5177 = fmul fast float %5176, %5171
  %5178 = call float @dx.op.dot3.f32(i32 55, float %5147, float %5150, float %5153, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = select i1 %282, float 0.000000e+00, float %5147
  %5180 = select i1 %282, float %5178, float %5150
  %5181 = select i1 %282, float 0.000000e+00, float %5153
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5173, float %5175, float %5177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = select i1 %282, float 0.000000e+00, float %5173
  %5184 = select i1 %282, float %5182, float %5175
  %5185 = select i1 %282, float 0.000000e+00, float %5177
  %5186 = fmul fast float %5074, 9.843750e-01
  %5187 = fmul fast float %5069, 9.843750e-01
  %5188 = fadd fast float %5186, 7.812500e-03
  %5189 = fadd fast float %5187, 7.812500e-03
  %5190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5188, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 3
  %5193 = fmul fast float %5191, %5060
  %5194 = fmul fast float %5191, %5061
  %5195 = fmul fast float %5191, %5072
  %5196 = fadd fast float %5193, %5192
  %5197 = fadd fast float %5194, %5192
  %5198 = fadd fast float %5195, %5192
  %5199 = fcmp fast ogt float %3861, 0.000000e+00
  br i1 %5199, label %5200, label %5226

; <label>:5200                                    ; preds = %5059
  %5201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3861, float %5074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5202 = extractvalue %dx.types.ResRet.f32 %5201, 0
  %5203 = extractvalue %dx.types.ResRet.f32 %5201, 1
  %5204 = extractvalue %dx.types.ResRet.f32 %5201, 2
  %5205 = fadd fast float %5202, -5.000000e-01
  %5206 = fadd fast float %5203, -5.000000e-01
  %5207 = fadd fast float %5204, -5.000000e-01
  %5208 = fsub fast float 1.000000e+00, %5060
  %5209 = fsub fast float 1.000000e+00, %5061
  %5210 = fsub fast float 1.000000e+00, %5072
  %5211 = fmul fast float %5060, 4.000000e+00
  %5212 = fmul fast float %5211, %5208
  %5213 = fmul fast float %5212, %5205
  %5214 = fmul fast float %5061, 4.000000e+00
  %5215 = fmul fast float %5214, %5209
  %5216 = fmul fast float %5215, %5206
  %5217 = fmul fast float %5072, 4.000000e+00
  %5218 = fmul fast float %5217, %5210
  %5219 = fmul fast float %5218, %5207
  %5220 = fadd fast float %5213, %5196
  %5221 = fadd fast float %5216, %5197
  %5222 = fadd fast float %5219, %5198
  %5223 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5224 = call float @dx.op.unary.f32(i32 7, float %5221)  ; Saturate(value)
  %5225 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  br label %5226

; <label>:5226                                    ; preds = %5200, %5059
  %5227 = phi float [ %5223, %5200 ], [ %5196, %5059 ]
  %5228 = phi float [ %5224, %5200 ], [ %5197, %5059 ]
  %5229 = phi float [ %5225, %5200 ], [ %5198, %5059 ]
  %5230 = call float @dx.op.binary.f32(i32 35, float %5228, float %5229)  ; FMax(a,b)
  %5231 = call float @dx.op.binary.f32(i32 35, float %5227, float %5230)  ; FMax(a,b)
  %5232 = fsub fast float 1.000000e+00, %5231
  %5233 = fmul fast float %5232, %5179
  %5234 = fmul fast float %5232, %5180
  %5235 = fmul fast float %5232, %5181
  %5236 = call float @dx.op.dot3.f32(i32 55, float %5066, float %5067, float %5068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5237 = fcmp fast ogt float %5236, 0x3E7FF19E20000000
  %5238 = fdiv fast float 1.000000e+00, %5236
  %5239 = select i1 %5237, float %5238, float 0.000000e+00
  %5240 = fmul fast float %5239, %5066
  %5241 = fmul fast float %5239, %5067
  %5242 = fmul fast float %5239, %5068
  %5243 = fadd fast float %5240, -1.000000e+00
  %5244 = fadd fast float %5241, -1.000000e+00
  %5245 = fadd fast float %5242, -1.000000e+00
  %5246 = fmul fast float %5243, 5.000000e-01
  %5247 = fmul fast float %5244, 5.000000e-01
  %5248 = fmul fast float %5245, 5.000000e-01
  %5249 = fadd fast float %5246, 1.000000e+00
  %5250 = fadd fast float %5247, 1.000000e+00
  %5251 = fadd fast float %5248, 1.000000e+00
  %5252 = fmul fast float %5227, %5183
  %5253 = fmul fast float %5228, %5184
  %5254 = fmul fast float %5229, %5185
  %5255 = fsub fast float 1.000000e+00, %5074
  %5256 = bitcast float %5255 to i32
  %5257 = sitofp i32 %5256 to float
  %5258 = fmul fast float %5257, 5.000000e+00
  %5259 = fadd fast float %5258, 0xC1EFBF8940000000
  %5260 = fptosi float %5259 to i32
  %5261 = bitcast i32 %5260 to float
  %5262 = fmul fast float %5261, %3862
  %5263 = fmul fast float %5179, %5262
  %5264 = fmul fast float %5263, %5232
  %5265 = fmul fast float %5264, %5249
  %5266 = fmul fast float %5180, %5262
  %5267 = fmul fast float %5266, %5232
  %5268 = fmul fast float %5267, %5250
  %5269 = fmul fast float %5181, %5262
  %5270 = fmul fast float %5269, %5232
  %5271 = fmul fast float %5270, %5251
  %5272 = fmul fast float %5233, %3888
  %5273 = fmul fast float %5234, %3888
  %5274 = fmul fast float %5235, %3888
  %5275 = fadd fast float %5252, %3854
  %5276 = fadd fast float %5275, %5265
  %5277 = fmul fast float %5276, %3888
  %5278 = fadd fast float %5253, %3855
  %5279 = fadd fast float %5278, %5268
  %5280 = fmul fast float %5279, %3888
  %5281 = fadd fast float %5254, %3856
  %5282 = fadd fast float %5281, %5271
  %5283 = fmul fast float %5282, %3888
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 3
  %5286 = fcmp fast oeq float %5285, 0.000000e+00
  br i1 %5286, label %6371, label %5287

; <label>:5287                                    ; preds = %5226
  %5288 = extractvalue %dx.types.CBufRet.f32 %5284, 0
  %5289 = extractvalue %dx.types.CBufRet.f32 %5284, 1
  %5290 = extractvalue %dx.types.CBufRet.f32 %5284, 2
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5294 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.CBufRet.f32 %5295, 1
  %5298 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = select i1 %282, float %5296, float %5292
  %5300 = select i1 %282, float %5298, float %5293
  %5301 = select i1 %282, float %5297, float %5294
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 2
  %5304 = fmul fast float %5303, %111
  %5305 = fmul fast float %5303, %112
  %5306 = fmul fast float %5303, %113
  %5307 = fadd fast float %5304, %191
  %5308 = fadd fast float %5305, %192
  %5309 = fadd fast float %5306, %193
  %5310 = fcmp fast olt float %5285, 0.000000e+00
  br i1 %5310, label %5950, label %5311

; <label>:5311                                    ; preds = %5287
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 0
  %5314 = extractvalue %dx.types.CBufRet.f32 %5312, 1
  %5315 = extractvalue %dx.types.CBufRet.f32 %5312, 2
  %5316 = extractvalue %dx.types.CBufRet.f32 %5312, 3
  %5317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.CBufRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.CBufRet.f32 %5317, 2
  %5321 = extractvalue %dx.types.CBufRet.f32 %5317, 3
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 0
  %5324 = extractvalue %dx.types.CBufRet.f32 %5322, 1
  %5325 = extractvalue %dx.types.CBufRet.f32 %5322, 2
  %5326 = extractvalue %dx.types.CBufRet.f32 %5322, 3
  %5327 = fmul fast float %5313, %5307
  %5328 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5314, float %5327)  ; FMad(a,b,c)
  %5329 = call float @dx.op.tertiary.f32(i32 46, float %5309, float %5315, float %5328)  ; FMad(a,b,c)
  %5330 = fadd fast float %5329, %5316
  %5331 = fmul fast float %5318, %5307
  %5332 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5319, float %5331)  ; FMad(a,b,c)
  %5333 = call float @dx.op.tertiary.f32(i32 46, float %5309, float %5320, float %5332)  ; FMad(a,b,c)
  %5334 = fadd fast float %5333, %5321
  %5335 = fmul fast float %5323, %5307
  %5336 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5324, float %5335)  ; FMad(a,b,c)
  %5337 = call float @dx.op.tertiary.f32(i32 46, float %5309, float %5325, float %5336)  ; FMad(a,b,c)
  %5338 = fadd fast float %5337, %5326
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 0
  %5341 = fcmp fast une float %5340, 0.000000e+00
  %5342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5343 = extractvalue %dx.types.CBufRet.f32 %5342, 0
  %5344 = extractvalue %dx.types.CBufRet.f32 %5342, 1
  %5345 = extractvalue %dx.types.CBufRet.f32 %5342, 3
  %5346 = fmul fast float %5345, %5330
  %5347 = fmul fast float %5345, %5334
  %5348 = fadd fast float %5346, %5343
  %5349 = fadd fast float %5347, %5344
  %5350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5351 = extractvalue %dx.types.CBufRet.f32 %5350, 0
  %5352 = extractvalue %dx.types.CBufRet.f32 %5350, 1
  %5353 = extractvalue %dx.types.CBufRet.f32 %5350, 3
  %5354 = fmul fast float %5353, %5330
  %5355 = fmul fast float %5353, %5334
  %5356 = fadd fast float %5354, %5351
  %5357 = fadd fast float %5355, %5352
  %5358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5359 = extractvalue %dx.types.CBufRet.f32 %5358, 1
  %5360 = fsub fast float %5359, %5338
  %5361 = extractvalue %dx.types.CBufRet.f32 %5358, 2
  %5362 = fmul fast float %5360, %5361
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  br i1 %5341, label %5425, label %5365

; <label>:5365                                    ; preds = %5311
  %5366 = extractvalue %dx.types.CBufRet.f32 %5350, 2
  %5367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.f32 %5367, 2
  %5369 = fadd fast float %5368, %5366
  %5370 = fcmp fast ogt float %5369, 0.000000e+00
  br i1 %5370, label %5371, label %5395

; <label>:5371                                    ; preds = %5365
  %5372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5373 = extractvalue %dx.types.CBufRet.f32 %5372, 0
  %5374 = extractvalue %dx.types.CBufRet.f32 %5372, 1
  %5375 = fsub fast float %5356, %5373
  %5376 = fsub fast float %5357, %5374
  %5377 = fcmp fast olt float %5375, 0.000000e+00
  %5378 = fcmp fast olt float %5376, 0.000000e+00
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5383 = extractvalue %dx.types.CBufRet.f32 %5379, 3
  %5384 = select i1 %5377, float %5380, float %5382
  %5385 = select i1 %5378, float %5381, float %5383
  %5386 = fmul fast float %5384, %5375
  %5387 = fmul fast float %5385, %5376
  %5388 = call float @dx.op.unary.f32(i32 6, float %5386)  ; FAbs(value)
  %5389 = call float @dx.op.unary.f32(i32 6, float %5387)  ; FAbs(value)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5391 = call float @dx.op.binary.f32(i32 35, float %5388, float %5389)  ; FMax(a,b)
  %5392 = fsub fast float %5390, %5391
  %5393 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5394 = fmul fast float %5393, %5364
  br label %5395

; <label>:5395                                    ; preds = %5371, %5365
  %5396 = phi float [ %5394, %5371 ], [ 0.000000e+00, %5365 ]
  %5397 = extractvalue %dx.types.CBufRet.f32 %5342, 2
  %5398 = extractvalue %dx.types.CBufRet.f32 %5367, 1
  %5399 = fadd fast float %5398, %5397
  %5400 = fcmp fast ogt float %5399, 0.000000e+00
  br i1 %5400, label %5401, label %5425

; <label>:5401                                    ; preds = %5395
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.CBufRet.f32 %5402, 1
  %5405 = fsub fast float %5348, %5403
  %5406 = fsub fast float %5349, %5404
  %5407 = fcmp fast olt float %5405, 0.000000e+00
  %5408 = fcmp fast olt float %5406, 0.000000e+00
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 0
  %5411 = extractvalue %dx.types.CBufRet.f32 %5409, 1
  %5412 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5413 = extractvalue %dx.types.CBufRet.f32 %5409, 3
  %5414 = select i1 %5407, float %5410, float %5412
  %5415 = select i1 %5408, float %5411, float %5413
  %5416 = fmul fast float %5414, %5405
  %5417 = fmul fast float %5415, %5406
  %5418 = call float @dx.op.unary.f32(i32 6, float %5416)  ; FAbs(value)
  %5419 = call float @dx.op.unary.f32(i32 6, float %5417)  ; FAbs(value)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5421 = call float @dx.op.binary.f32(i32 35, float %5418, float %5419)  ; FMax(a,b)
  %5422 = fsub fast float %5420, %5421
  %5423 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  %5424 = fmul fast float %5423, %5364
  br label %5425

; <label>:5425                                    ; preds = %5401, %5395, %5311
  %5426 = phi float [ 0.000000e+00, %5311 ], [ %5424, %5401 ], [ 0.000000e+00, %5395 ]
  %5427 = phi float [ 0.000000e+00, %5311 ], [ %5396, %5401 ], [ %5396, %5395 ]
  %5428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5429 = extractvalue %dx.types.CBufRet.f32 %5428, 1
  %5430 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5432 = extractvalue %dx.types.CBufRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.CBufRet.f32 %5431, 1
  %5434 = fsub fast float %5330, %5432
  %5435 = fsub fast float %5334, %5433
  %5436 = fcmp fast olt float %5434, 0.000000e+00
  %5437 = fcmp fast olt float %5435, 0.000000e+00
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.CBufRet.f32 %5438, 2
  %5442 = extractvalue %dx.types.CBufRet.f32 %5438, 3
  %5443 = select i1 %5436, float %5439, float %5441
  %5444 = select i1 %5437, float %5440, float %5442
  %5445 = fmul fast float %5443, %5434
  %5446 = fmul fast float %5444, %5435
  %5447 = call float @dx.op.unary.f32(i32 6, float %5445)  ; FAbs(value)
  %5448 = call float @dx.op.unary.f32(i32 6, float %5446)  ; FAbs(value)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5450 = call float @dx.op.binary.f32(i32 35, float %5447, float %5448)  ; FMax(a,b)
  %5451 = fsub fast float %5449, %5450
  %5452 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5453 = call float @dx.op.binary.f32(i32 36, float %5452, float %5430)  ; FMin(a,b)
  %5454 = fmul fast float %5453, %5364
  %5455 = fsub fast float %5426, %5454
  %5456 = fsub fast float %5427, %5426
  %5457 = fsub fast float %5456, %5454
  %5458 = call float @dx.op.binary.f32(i32 35, float %5426, float %5427)  ; FMax(a,b)
  %5459 = call float @dx.op.binary.f32(i32 35, float %5454, float %5458)  ; FMax(a,b)
  %5460 = fcmp fast olt float %5459, 1.000000e+00
  br i1 %5460, label %5461, label %5859, !dx.controlflow.hints !94

; <label>:5461                                    ; preds = %5425
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5464 = fcmp fast une float %5463, 0.000000e+00
  br i1 %5464, label %5465, label %5859, !dx.controlflow.hints !95

; <label>:5465                                    ; preds = %5461
  %5466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.CBufRet.f32 %5466, 1
  %5469 = extractvalue %dx.types.CBufRet.f32 %5466, 2
  %5470 = extractvalue %dx.types.CBufRet.f32 %5466, 3
  %5471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5472 = extractvalue %dx.types.CBufRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.CBufRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.CBufRet.f32 %5471, 2
  %5475 = extractvalue %dx.types.CBufRet.f32 %5471, 3
  %5476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.CBufRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.CBufRet.f32 %5476, 2
  %5480 = extractvalue %dx.types.CBufRet.f32 %5476, 3
  %5481 = fmul fast float %5467, %5307
  %5482 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5468, float %5481)  ; FMad(a,b,c)
  %5483 = call float @dx.op.tertiary.f32(i32 46, float %5309, float %5469, float %5482)  ; FMad(a,b,c)
  %5484 = fadd fast float %5483, %5470
  %5485 = fmul fast float %5472, %5307
  %5486 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5473, float %5485)  ; FMad(a,b,c)
  %5487 = call float @dx.op.tertiary.f32(i32 46, float %5309, float %5474, float %5486)  ; FMad(a,b,c)
  %5488 = fadd fast float %5487, %5475
  %5489 = fmul fast float %5477, %5307
  %5490 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5478, float %5489)  ; FMad(a,b,c)
  %5491 = call float @dx.op.tertiary.f32(i32 46, float %5309, float %5479, float %5490)  ; FMad(a,b,c)
  %5492 = fadd fast float %5491, %5480
  %5493 = fcmp fast oge float %5484, 1.000000e+00
  %5494 = fcmp fast oge float %5488, 1.000000e+00
  %5495 = or i1 %5493, %5494
  %5496 = fcmp fast olt float %5484, 0.000000e+00
  %5497 = fcmp fast olt float %5488, 0.000000e+00
  %5498 = or i1 %5496, %5497
  %5499 = or i1 %5495, %5498
  br i1 %5499, label %5859, label %5500, !dx.controlflow.hints !96

; <label>:5500                                    ; preds = %5465
  %5501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.CBufRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.CBufRet.f32 %5501, 2
  %5505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.i32 %5505, 2
  %5507 = uitofp i32 %5506 to float
  %5508 = extractvalue %dx.types.CBufRet.i32 %5505, 3
  %5509 = uitofp i32 %5508 to float
  %5510 = extractvalue %dx.types.CBufRet.f32 %5501, 3
  %5511 = fmul fast float %5510, 2.000000e+00
  %5512 = fsub fast float %5484, %5502
  %5513 = fsub fast float %5488, %5503
  %5514 = fmul fast float %5511, %5512
  %5515 = fmul fast float %5511, %5513
  %5516 = fdiv fast float 1.000000e+00, %5290
  %5517 = fmul fast float %5515, %5516
  %5518 = call float @dx.op.unary.f32(i32 6, float %5517)  ; FAbs(value)
  %5519 = fmul fast float %5504, %5309
  %5520 = fmul fast float %5519, %5511
  %5521 = call float @dx.op.unary.f32(i32 6, float %5520)  ; FAbs(value)
  %5522 = call float @dx.op.unary.f32(i32 6, float %5514)  ; FAbs(value)
  %5523 = call float @dx.op.binary.f32(i32 35, float %5521, float %5518)  ; FMax(a,b)
  %5524 = call float @dx.op.binary.f32(i32 35, float %5522, float %5523)  ; FMax(a,b)
  %5525 = fmul fast float %5524, 2.000000e+00
  %5526 = call float @dx.op.unary.f32(i32 23, float %5525)  ; Log(value)
  %5527 = call float @dx.op.binary.f32(i32 35, float %5526, float %5507)  ; FMax(a,b)
  %5528 = call float @dx.op.unary.f32(i32 22, float %5527)  ; Frc(value)
  %5529 = fadd fast float %5528, 0xBFEA666660000000
  %5530 = fmul fast float %5529, 8.000000e+00
  %5531 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  %5532 = call float @dx.op.unary.f32(i32 27, float %5527)  ; Round_ni(value)
  %5533 = fadd fast float %5532, %5531
  %5534 = call float @dx.op.binary.f32(i32 36, float %5533, float %5509)  ; FMin(a,b)
  %5535 = call float @dx.op.unary.f32(i32 27, float %5534)  ; Round_ni(value)
  %5536 = fsub fast float -0.000000e+00, %5535
  %5537 = call float @dx.op.unary.f32(i32 21, float %5536)  ; Exp(value)
  %5538 = fmul fast float %5537, %5511
  %5539 = fmul fast float %5538, %5484
  %5540 = fmul fast float %5538, %5488
  %5541 = fmul fast float %5539, 2.500000e-01
  %5542 = fmul fast float %5540, 2.500000e-01
  %5543 = fadd fast float %5541, 5.000000e-01
  %5544 = fadd fast float %5542, 5.000000e-01
  %5545 = fsub fast float %5509, %5507
  %5546 = fptoui float %5545 to i32
  %5547 = add i32 %5546, 320
  %5548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5547)  ; CBufferLoadLegacy(handle,regIndex)
  %5549 = extractvalue %dx.types.CBufRet.f32 %5548, 0
  %5550 = extractvalue %dx.types.CBufRet.f32 %5548, 1
  %5551 = fcmp fast une float %5534, %5509
  %5552 = fsub fast float %5484, %5549
  %5553 = fsub fast float %5488, %5550
  %5554 = call float @dx.op.unary.f32(i32 6, float %5552)  ; FAbs(value)
  %5555 = call float @dx.op.unary.f32(i32 6, float %5553)  ; FAbs(value)
  %5556 = fmul fast float %5554, %5538
  %5557 = fmul fast float %5555, %5538
  %5558 = fcmp fast olt float %5556, 1.000000e+00
  %5559 = fcmp fast olt float %5557, 1.000000e+00
  %5560 = and i1 %5558, %5559
  %5561 = or i1 %5551, %5560
  br i1 %5561, label %5562, label %5859, !dx.controlflow.hints !97

; <label>:5562                                    ; preds = %5500
  %5563 = fmul fast float %5540, 5.000000e-01
  %5564 = fmul fast float %5539, 5.000000e-01
  %5565 = fadd fast float %5563, 5.000000e-01
  %5566 = fadd fast float %5564, 5.000000e-01
  %5567 = sitofp i32 %5506 to float
  %5568 = fsub fast float %5534, %5567
  %5569 = call float @dx.op.unary.f32(i32 27, float %5568)  ; Round_ni(value)
  %5570 = call float @dx.op.unary.f32(i32 22, float %5534)  ; Frc(value)
  %5571 = call float @dx.op.unary.f32(i32 22, float %5566)  ; Frc(value)
  %5572 = call float @dx.op.unary.f32(i32 22, float %5565)  ; Frc(value)
  %5573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5571, float %5572, float %5569, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5574 = extractvalue %dx.types.ResRet.f32 %5573, 0
  %5575 = extractvalue %dx.types.ResRet.f32 %5573, 1
  %5576 = extractvalue %dx.types.ResRet.f32 %5573, 2
  %5577 = extractvalue %dx.types.ResRet.f32 %5573, 3
  %5578 = fcmp fast ogt float %5570, 0.000000e+00
  br i1 %5578, label %5579, label %5600, !dx.controlflow.hints !98

; <label>:5579                                    ; preds = %5562
  %5580 = fadd fast float %5569, 1.000000e+00
  %5581 = call float @dx.op.unary.f32(i32 22, float %5543)  ; Frc(value)
  %5582 = call float @dx.op.unary.f32(i32 22, float %5544)  ; Frc(value)
  %5583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5581, float %5582, float %5580, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5584 = extractvalue %dx.types.ResRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.ResRet.f32 %5583, 1
  %5586 = extractvalue %dx.types.ResRet.f32 %5583, 2
  %5587 = extractvalue %dx.types.ResRet.f32 %5583, 3
  %5588 = fsub fast float %5584, %5574
  %5589 = fsub fast float %5585, %5575
  %5590 = fsub fast float %5586, %5576
  %5591 = fsub fast float %5587, %5577
  %5592 = fmul fast float %5588, %5570
  %5593 = fmul fast float %5589, %5570
  %5594 = fmul fast float %5590, %5570
  %5595 = fmul fast float %5591, %5570
  %5596 = fadd fast float %5592, %5574
  %5597 = fadd fast float %5593, %5575
  %5598 = fadd fast float %5594, %5576
  %5599 = fadd fast float %5595, %5577
  br label %5600

; <label>:5600                                    ; preds = %5579, %5562
  %5601 = phi float [ %5596, %5579 ], [ %5574, %5562 ]
  %5602 = phi float [ %5597, %5579 ], [ %5575, %5562 ]
  %5603 = phi float [ %5598, %5579 ], [ %5576, %5562 ]
  %5604 = phi float [ %5599, %5579 ], [ %5577, %5562 ]
  %5605 = fadd fast float %5601, -5.000000e-01
  %5606 = fadd fast float %5603, -5.000000e-01
  %5607 = fmul fast float %5605, 0xBFD5555560000000
  %5608 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5606, float %5607)  ; FMad(a,b,c)
  %5609 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5602, float 0.000000e+00)  ; FMad(a,b,c)
  %5610 = fadd fast float %5609, %5604
  %5611 = fmul fast float %5605, -7.500000e-01
  %5612 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5606, float %5611)  ; FMad(a,b,c)
  %5613 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5602, float 0.000000e+00)  ; FMad(a,b,c)
  %5614 = fadd fast float %5613, %5604
  %5615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5615, 0
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.CBufRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.CBufRet.f32 %5617, 2
  %5621 = extractvalue %dx.types.CBufRet.f32 %5617, 3
  %5622 = fsub fast float %5618, %5608
  %5623 = fsub fast float %5619, %5610
  %5624 = fsub fast float %5620, %5612
  %5625 = fsub fast float %5621, %5614
  %5626 = fmul fast float %5622, %5616
  %5627 = fmul fast float %5623, %5616
  %5628 = fmul fast float %5624, %5616
  %5629 = fmul fast float %5625, %5616
  %5630 = fadd fast float %5626, %5608
  %5631 = fadd fast float %5627, %5610
  %5632 = fadd fast float %5628, %5612
  %5633 = fadd fast float %5629, %5614
  %5634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5635 = extractvalue %dx.types.ResRet.i32 %5634, 0
  %5636 = and i32 %5635, 536870911
  %5637 = uitofp i32 %5636 to float
  %5638 = fmul fast float %5637, %5484
  %5639 = fmul fast float %5637, %5488
  %5640 = fptoui float %5638 to i32
  %5641 = fptoui float %5639 to i32
  %5642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5643 = extractvalue %dx.types.ResRet.i32 %5642, 0
  %5644 = and i32 %5643, 31
  %5645 = lshr i32 %5640, %5644
  %5646 = lshr i32 %5641, %5644
  %5647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5648 = extractvalue %dx.types.ResRet.i32 %5647, 0
  %5649 = and i32 %5648, 31
  %5650 = shl i32 1, %5649
  %5651 = call i32 @dx.op.binary.i32(i32 40, i32 %5650, i32 4)  ; UMin(a,b)
  %5652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5653 = extractvalue %dx.types.ResRet.i32 %5652, 0
  %5654 = extractvalue %dx.types.ResRet.i32 %5652, 1
  %5655 = icmp eq i32 %5651, 0
  br i1 %5655, label %5697, label %5656

; <label>:5656                                    ; preds = %5600
  br label %5657

; <label>:5657                                    ; preds = %5685, %5656
  %5658 = phi i32 [ %5688, %5685 ], [ 0, %5656 ]
  %5659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5660 = extractvalue %dx.types.ResRet.i32 %5659, 0
  %5661 = lshr i32 %5660, 16
  %5662 = and i32 %5661, 31
  %5663 = shl i32 %5646, %5662
  %5664 = add i32 %5663, %5645
  %5665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5666 = extractvalue %dx.types.ResRet.i32 %5665, 0
  %5667 = and i32 %5666, 31
  %5668 = shl i32 %5664, %5667
  %5669 = add i32 %5668, %5658
  %5670 = shl i32 %5669, 2
  %5671 = add i32 %5670, 32
  %5672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5671, i32 undef)  ; BufferLoad(srv,index,wot)
  %5673 = extractvalue %dx.types.ResRet.i32 %5672, 0
  %5674 = icmp slt i32 %5673, 0
  %5675 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5658
  %5676 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5658
  %5677 = bitcast float* %5675 to i32*
  %5678 = bitcast float* %5676 to i32*
  br i1 %5674, label %5679, label %5685

; <label>:5679                                    ; preds = %5657
  %5680 = and i32 %5673, 1073741823
  %5681 = add nuw nsw i32 %5680, 20
  %5682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5681, i32 undef)  ; BufferLoad(srv,index,wot)
  %5683 = extractvalue %dx.types.ResRet.i32 %5682, 0
  %5684 = extractvalue %dx.types.ResRet.i32 %5682, 1
  br label %5685

; <label>:5685                                    ; preds = %5679, %5657
  %5686 = phi i32 [ %5683, %5679 ], [ %5653, %5657 ]
  %5687 = phi i32 [ %5684, %5679 ], [ %5654, %5657 ]
  store i32 %5686, i32* %5677, align 4
  store i32 %5687, i32* %5678, align 4
  %5688 = add nuw i32 %5658, 1
  %5689 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.i32 %5689, 2
  %5691 = icmp eq i32 %5690, 0
  %5692 = icmp ugt i32 %5673, -1073741825
  %5693 = and i1 %5692, %5691
  %5694 = icmp ult i32 %5688, %5651
  %5695 = and i1 %5693, %5694
  br i1 %5695, label %5657, label %5696

; <label>:5696                                    ; preds = %5685
  br label %5697

; <label>:5697                                    ; preds = %5696, %5600
  %5698 = phi i32 [ 0, %5600 ], [ %5688, %5696 ]
  %5699 = extractvalue %dx.types.CBufRet.f32 %5462, 2
  %5700 = fptoui float %5699 to i32
  %5701 = icmp eq i32 %5700, 0
  br i1 %5701, label %5753, label %5702

; <label>:5702                                    ; preds = %5697
  br label %5703

; <label>:5703                                    ; preds = %5748, %5702
  %5704 = phi i32 [ %5749, %5748 ], [ %5698, %5702 ]
  %5705 = phi i32 [ %5750, %5748 ], [ 0, %5702 ]
  %5706 = lshr i32 %5705, 2
  %5707 = and i32 %5705, 3
  %5708 = add nuw nsw i32 %5706, 83
  %5709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5708)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.i32 %5709, 0
  %5711 = extractvalue %dx.types.CBufRet.i32 %5709, 1
  %5712 = extractvalue %dx.types.CBufRet.i32 %5709, 2
  %5713 = extractvalue %dx.types.CBufRet.i32 %5709, 3
  %5714 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5710, i32* %5714, align 4
  %5715 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5711, i32* %5715, align 4
  %5716 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5712, i32* %5716, align 4
  %5717 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5713, i32* %5717, align 4
  %5718 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5707
  %5719 = load i32, i32* %5718, align 4, !tbaa !99, !noalias !103
  %5720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5721 = extractvalue %dx.types.ResRet.i32 %5720, 0
  %5722 = lshr i32 %5721, 16
  %5723 = and i32 %5722, 31
  %5724 = shl i32 %5646, %5723
  %5725 = add i32 %5724, %5645
  %5726 = shl i32 %5725, 2
  %5727 = add i32 %5726, %5719
  %5728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5727, i32 undef)  ; BufferLoad(srv,index,wot)
  %5729 = extractvalue %dx.types.ResRet.i32 %5728, 0
  %5730 = icmp eq i32 %5729, 0
  br i1 %5730, label %5748, label %5731

; <label>:5731                                    ; preds = %5703
  %5732 = icmp slt i32 %5729, 0
  %5733 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5704
  %5734 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5704
  %5735 = bitcast float* %5733 to i32*
  %5736 = bitcast float* %5734 to i32*
  br i1 %5732, label %5737, label %5744

; <label>:5737                                    ; preds = %5731
  %5738 = and i32 %5729, 1073741823
  %5739 = add i32 %5719, 20
  %5740 = add i32 %5739, %5738
  %5741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5740, i32 undef)  ; BufferLoad(srv,index,wot)
  %5742 = extractvalue %dx.types.ResRet.i32 %5741, 0
  %5743 = extractvalue %dx.types.ResRet.i32 %5741, 1
  br label %5744

; <label>:5744                                    ; preds = %5737, %5731
  %5745 = phi i32 [ %5742, %5737 ], [ %5653, %5731 ]
  %5746 = phi i32 [ %5743, %5737 ], [ %5654, %5731 ]
  store i32 %5745, i32* %5735, align 4
  store i32 %5746, i32* %5736, align 4
  %5747 = add i32 %5704, 1
  br label %5748

; <label>:5748                                    ; preds = %5744, %5703
  %5749 = phi i32 [ %5704, %5703 ], [ %5747, %5744 ]
  %5750 = add nuw i32 %5705, 1
  %5751 = icmp eq i32 %5750, %5700
  br i1 %5751, label %5752, label %5703

; <label>:5752                                    ; preds = %5748
  br label %5753

; <label>:5753                                    ; preds = %5752, %5697
  %5754 = phi i32 [ %5698, %5697 ], [ %5749, %5752 ]
  %5755 = icmp eq i32 %5754, 1
  %5756 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %5757 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %5755, label %5758, label %5761

; <label>:5758                                    ; preds = %5753
  %5759 = load float, float* %5756, align 4
  %5760 = load float, float* %5757, align 4
  br label %5788

; <label>:5761                                    ; preds = %5753
  %5762 = load float, float* %5756, align 4
  %5763 = load float, float* %5757, align 4
  %5764 = fdiv fast float 1.000000e+00, %5763
  %5765 = fsub fast float %5762, %5764
  %5766 = icmp ugt i32 %5754, 1
  br i1 %5766, label %5767, label %5783

; <label>:5767                                    ; preds = %5761
  br label %5768

; <label>:5768                                    ; preds = %5768, %5767
  %5769 = phi float [ %5778, %5768 ], [ %5765, %5767 ]
  %5770 = phi float [ %5779, %5768 ], [ %5762, %5767 ]
  %5771 = phi i32 [ %5780, %5768 ], [ 1, %5767 ]
  %5772 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5771
  %5773 = load float, float* %5772, align 4
  %5774 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5771
  %5775 = load float, float* %5774, align 4
  %5776 = fdiv fast float 1.000000e+00, %5775
  %5777 = fsub fast float %5773, %5776
  %5778 = call float @dx.op.binary.f32(i32 36, float %5769, float %5777)  ; FMin(a,b)
  %5779 = call float @dx.op.binary.f32(i32 35, float %5770, float %5773)  ; FMax(a,b)
  %5780 = add nuw i32 %5771, 1
  %5781 = icmp eq i32 %5780, %5754
  br i1 %5781, label %5782, label %5768

; <label>:5782                                    ; preds = %5768
  br label %5783

; <label>:5783                                    ; preds = %5782, %5761
  %5784 = phi float [ %5765, %5761 ], [ %5778, %5782 ]
  %5785 = phi float [ %5762, %5761 ], [ %5779, %5782 ]
  %5786 = fsub fast float %5785, %5784
  %5787 = fdiv fast float 1.000000e+00, %5786
  br label %5788

; <label>:5788                                    ; preds = %5783, %5758
  %5789 = phi float [ %5759, %5758 ], [ %5785, %5783 ]
  %5790 = phi float [ %5760, %5758 ], [ %5787, %5783 ]
  %5791 = fadd fast float %5492, %5789
  %5792 = fmul fast float %5791, %5790
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = fmul fast float %5793, 2.000000e+00
  %5795 = fsub fast float 1.000000e+00, %5794
  %5796 = fmul fast float %5630, %5630
  %5797 = fsub fast float %5631, %5796
  %5798 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5797)  ; FMax(a,b)
  %5799 = fdiv fast float 1.000000e+00, %5798
  %5800 = fmul fast float %5631, %5630
  %5801 = fsub fast float %5632, %5800
  %5802 = fsub fast float %5795, %5630
  %5803 = fmul fast float %5795, %5795
  %5804 = fsub fast float %5803, %5631
  %5805 = fmul fast float %5799, %5801
  %5806 = fmul fast float %5805, %5802
  %5807 = fsub fast float %5804, %5806
  %5808 = fmul fast float %5631, %5631
  %5809 = fsub fast float %5633, %5808
  %5810 = fmul fast float %5801, %5801
  %5811 = fmul fast float %5810, %5799
  %5812 = fsub fast float %5809, %5811
  %5813 = fdiv fast float %5807, %5812
  %5814 = fmul fast float %5813, %5801
  %5815 = fsub fast float %5802, %5814
  %5816 = fmul fast float %5815, %5799
  %5817 = fmul fast float %5816, %5630
  %5818 = fsub fast float 1.000000e+00, %5817
  %5819 = fmul fast float %5813, %5631
  %5820 = fsub fast float %5818, %5819
  %5821 = fmul fast float %5816, %5816
  %5822 = fmul fast float %5813, 4.000000e+00
  %5823 = fmul fast float %5822, %5820
  %5824 = fsub fast float %5821, %5823
  %5825 = call float @dx.op.unary.f32(i32 24, float %5824)  ; Sqrt(value)
  %5826 = fcmp fast oge float %5816, 0.000000e+00
  %5827 = fsub fast float -0.000000e+00, %5825
  %5828 = select i1 %5826, float %5827, float %5825
  %5829 = fsub fast float %5828, %5816
  %5830 = fdiv fast float %5829, %5813
  %5831 = fdiv fast float %5820, %5829
  %5832 = fmul fast float %5830, 5.000000e-01
  %5833 = fmul fast float %5831, 2.000000e+00
  %5834 = select i1 %5826, float %5832, float %5833
  %5835 = select i1 %5826, float %5833, float %5832
  %5836 = call float @dx.op.binary.f32(i32 35, float %5834, float %5835)  ; FMax(a,b)
  %5837 = call float @dx.op.binary.f32(i32 36, float %5834, float %5835)  ; FMin(a,b)
  %5838 = fcmp fast ogt float %5795, %5836
  %5839 = fsub fast float %5795, %5837
  %5840 = fsub fast float %5795, %5836
  %5841 = fsub fast float %5836, %5837
  %5842 = select i1 %5838, float %5840, float %5841
  %5843 = fmul float %5839, %5842
  %5844 = select i1 %5838, float %5837, float %5795
  %5845 = fcmp fast ogt float %5795, %5837
  %5846 = fmul fast float %5844, %5836
  %5847 = fadd fast float %5844, %5836
  %5848 = fmul fast float %5847, %5630
  %5849 = fadd fast float %5846, %5631
  %5850 = fsub fast float %5849, %5848
  %5851 = fdiv fast float %5850, %5843
  %5852 = select i1 %5845, float %5851, float 0.000000e+00
  %5853 = fsub fast float 1.000000e+00, %5852
  %5854 = select i1 %5838, float %5853, float %5852
  %5855 = call float @dx.op.unary.f32(i32 7, float %5854)  ; Saturate(value)
  %5856 = extractvalue %dx.types.CBufRet.f32 %5615, 3
  %5857 = fmul fast float %5856, %5855
  %5858 = fsub fast float 1.000000e+00, %5857
  br label %5859

; <label>:5859                                    ; preds = %5788, %5500, %5465, %5461, %5425
  %5860 = phi float [ 1.000000e+00, %5425 ], [ %5858, %5788 ], [ 1.000000e+00, %5465 ], [ 1.000000e+00, %5500 ], [ 1.000000e+00, %5461 ]
  %5861 = fcmp fast ogt float %5457, 0.000000e+00
  br i1 %5861, label %5862, label %5870, !dx.controlflow.hints !112

; <label>:5862                                    ; preds = %5859
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 2
  %5865 = fadd fast float %5864, %5338
  %5866 = call float @dx.op.binary.f32(i32 35, float %5865, float 0.000000e+00)  ; FMax(a,b)
  %5867 = fadd fast float %5866, 0x3F10000000000000
  %5868 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5356, float %5357, float undef, float undef, i32 0, i32 0, i32 undef, float %5867)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  br label %5870

; <label>:5870                                    ; preds = %5862, %5859
  %5871 = phi float [ %5869, %5862 ], [ 1.000000e+00, %5859 ]
  %5872 = fcmp fast ogt float %5455, 0.000000e+00
  br i1 %5872, label %5873, label %5881, !dx.controlflow.hints !113

; <label>:5873                                    ; preds = %5870
  %5874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5874, 1
  %5876 = fadd fast float %5875, %5338
  %5877 = call float @dx.op.binary.f32(i32 35, float %5876, float 0.000000e+00)  ; FMax(a,b)
  %5878 = fadd fast float %5877, 0x3F10000000000000
  %5879 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5348, float %5349, float undef, float undef, i32 0, i32 0, i32 undef, float %5878)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5880 = extractvalue %dx.types.ResRet.f32 %5879, 0
  br label %5881

; <label>:5881                                    ; preds = %5873, %5870
  %5882 = phi float [ %5880, %5873 ], [ 1.000000e+00, %5870 ]
  %5883 = fcmp fast ogt float %5454, 0.000000e+00
  br i1 %5883, label %5884, label %5896, !dx.controlflow.hints !114

; <label>:5884                                    ; preds = %5881
  %5885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5886 = extractvalue %dx.types.CBufRet.f32 %5885, 0
  %5887 = fadd fast float %5886, %5338
  %5888 = call float @dx.op.binary.f32(i32 35, float %5887, float 0.000000e+00)  ; FMax(a,b)
  %5889 = fadd fast float %5888, 0x3F10000000000000
  br i1 %5341, label %5890, label %5893, !dx.controlflow.hints !115

; <label>:5890                                    ; preds = %5884
  %5891 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5330, float %5334, float undef, float undef, i32 0, i32 0, i32 undef, float %5889)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5892 = extractvalue %dx.types.ResRet.f32 %5891, 0
  br label %5896

; <label>:5893                                    ; preds = %5884
  %5894 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5330, float %5334, float undef, float undef, i32 0, i32 0, i32 undef, float %5889)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5895 = extractvalue %dx.types.ResRet.f32 %5894, 0
  br label %5896

; <label>:5896                                    ; preds = %5893, %5890, %5881
  %5897 = phi float [ %5892, %5890 ], [ %5895, %5893 ], [ 1.000000e+00, %5881 ]
  %5898 = fsub fast float %5871, %5860
  %5899 = fmul fast float %5898, %5427
  %5900 = fadd fast float %5899, %5860
  %5901 = fsub fast float %5882, %5900
  %5902 = fmul fast float %5901, %5426
  %5903 = fadd fast float %5902, %5900
  %5904 = fsub fast float %5897, %5903
  %5905 = fmul fast float %5904, %5454
  %5906 = fadd fast float %5905, %5903
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5909 = fcmp fast ogt float %5908, 0.000000e+00
  br i1 %5909, label %5910, label %5950, !dx.controlflow.hints !116

; <label>:5910                                    ; preds = %5896
  %5911 = fcmp fast ugt float %5908, 0.000000e+00
  br i1 %5911, label %5912, label %5947

; <label>:5912                                    ; preds = %5910
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.CBufRet.f32 %5913, 1
  %5916 = extractvalue %dx.types.CBufRet.f32 %5913, 2
  %5917 = extractvalue %dx.types.CBufRet.f32 %5913, 3
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.CBufRet.f32 %5918, 1
  %5921 = extractvalue %dx.types.CBufRet.f32 %5918, 2
  %5922 = extractvalue %dx.types.CBufRet.f32 %5918, 3
  %5923 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5924 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.CBufRet.f32 %5925, 2
  %5929 = fadd fast float %5926, %5307
  %5930 = fadd fast float %5927, %5308
  %5931 = fadd fast float %5928, %5309
  %5932 = fmul fast float %5929, %5914
  %5933 = call float @dx.op.tertiary.f32(i32 46, float %5915, float %5930, float %5932)  ; FMad(a,b,c)
  %5934 = call float @dx.op.tertiary.f32(i32 46, float %5916, float %5931, float %5933)  ; FMad(a,b,c)
  %5935 = fadd fast float %5934, %5917
  %5936 = fmul fast float %5929, %5919
  %5937 = call float @dx.op.tertiary.f32(i32 46, float %5920, float %5930, float %5936)  ; FMad(a,b,c)
  %5938 = call float @dx.op.tertiary.f32(i32 46, float %5921, float %5931, float %5937)  ; FMad(a,b,c)
  %5939 = fadd fast float %5938, %5922
  %5940 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5935, float %5939, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 0
  %5942 = fmul fast float %5941, %5924
  %5943 = fadd fast float %5942, %5923
  %5944 = call float @dx.op.unary.f32(i32 7, float %5943)  ; Saturate(value)
  %5945 = fmul fast float %5944, %5908
  %5946 = fsub fast float 1.000000e+00, %5945
  br label %5947

; <label>:5947                                    ; preds = %5912, %5910
  %5948 = phi float [ %5946, %5912 ], [ 1.000000e+00, %5910 ]
  %5949 = fmul fast float %5948, %5906
  br label %5950

; <label>:5950                                    ; preds = %5947, %5896, %5287
  %5951 = phi float [ 1.000000e+00, %5287 ], [ %5949, %5947 ], [ %5906, %5896 ]
  %5952 = call float @dx.op.binary.f32(i32 36, float %5951, float %5951)  ; FMin(a,b)
  %5953 = call float @dx.op.binary.f32(i32 36, float %5951, float %5952)  ; FMin(a,b)
  %5954 = fcmp fast ogt float %5953, 0.000000e+00
  br i1 %5954, label %5955, label %6115, !dx.controlflow.hints !117

; <label>:5955                                    ; preds = %5950
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.CBufRet.f32 %5956, 1
  %5959 = extractvalue %dx.types.CBufRet.f32 %5956, 2
  %5960 = extractvalue %dx.types.CBufRet.f32 %5956, 3
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.CBufRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.CBufRet.f32 %5961, 2
  %5965 = extractvalue %dx.types.CBufRet.f32 %5961, 3
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.CBufRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.CBufRet.f32 %5966, 2
  %5970 = extractvalue %dx.types.CBufRet.f32 %5966, 3
  %5971 = fmul fast float %5957, %5307
  %5972 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5958, float %5971)  ; FMad(a,b,c)
  %5973 = call float @dx.op.tertiary.f32(i32 46, float %5309, float %5959, float %5972)  ; FMad(a,b,c)
  %5974 = fadd fast float %5973, %5960
  %5975 = fmul fast float %5962, %5307
  %5976 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5963, float %5975)  ; FMad(a,b,c)
  %5977 = call float @dx.op.tertiary.f32(i32 46, float %5309, float %5964, float %5976)  ; FMad(a,b,c)
  %5978 = fadd fast float %5977, %5965
  %5979 = fmul fast float %5967, %5307
  %5980 = call float @dx.op.tertiary.f32(i32 46, float %5308, float %5968, float %5979)  ; FMad(a,b,c)
  %5981 = call float @dx.op.tertiary.f32(i32 46, float %5309, float %5969, float %5980)  ; FMad(a,b,c)
  %5982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5983 = extractvalue %dx.types.CBufRet.f32 %5982, 0
  %5984 = extractvalue %dx.types.CBufRet.f32 %5982, 1
  %5985 = extractvalue %dx.types.CBufRet.f32 %5982, 3
  %5986 = fmul fast float %5985, %5974
  %5987 = fmul fast float %5985, %5978
  %5988 = fadd fast float %5986, %5983
  %5989 = fadd fast float %5987, %5984
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.CBufRet.f32 %5990, 1
  %5993 = fsub fast float %5988, %5991
  %5994 = fsub fast float %5989, %5992
  %5995 = fcmp fast olt float %5993, 0.000000e+00
  %5996 = fcmp fast olt float %5994, 0.000000e+00
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.CBufRet.f32 %5997, 1
  %6000 = extractvalue %dx.types.CBufRet.f32 %5997, 2
  %6001 = extractvalue %dx.types.CBufRet.f32 %5997, 3
  %6002 = select i1 %5995, float %5998, float %6000
  %6003 = select i1 %5996, float %5999, float %6001
  %6004 = fmul fast float %6002, %5993
  %6005 = fmul fast float %6003, %5994
  %6006 = call float @dx.op.unary.f32(i32 6, float %6004)  ; FAbs(value)
  %6007 = call float @dx.op.unary.f32(i32 6, float %6005)  ; FAbs(value)
  %6008 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %6009 = call float @dx.op.binary.f32(i32 35, float %6006, float %6007)  ; FMax(a,b)
  %6010 = fsub fast float %6008, %6009
  %6011 = call float @dx.op.unary.f32(i32 7, float %6010)  ; Saturate(value)
  %6012 = fcmp fast ogt float %6011, 0.000000e+00
  br i1 %6012, label %6013, label %6054, !dx.controlflow.hints !118

; <label>:6013                                    ; preds = %5955
  %6014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %5988, float %5989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6015 = extractvalue %dx.types.ResRet.f32 %6014, 1
  %6016 = fcmp fast ogt float %6015, 0.000000e+00
  br i1 %6016, label %6017, label %6049

; <label>:6017                                    ; preds = %6013
  %6018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %5988, float %5989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6019 = extractvalue %dx.types.ResRet.f32 %6018, 0
  %6020 = extractvalue %dx.types.ResRet.f32 %6018, 1
  %6021 = extractvalue %dx.types.ResRet.f32 %6018, 2
  %6022 = extractvalue %dx.types.ResRet.f32 %6018, 3
  %6023 = fsub fast float 1.000000e+00, %5970
  %6024 = fsub fast float %6023, %5981
  %6025 = fmul fast float %6024, 0x400921FB60000000
  %6026 = fadd fast float %6025, 0x3FF921FB60000000
  %6027 = call float @dx.op.unary.f32(i32 13, float %6026)  ; Sin(value)
  %6028 = fadd fast float %6027, -1.000000e+00
  %6029 = fmul fast float %6028, 0x3FD45F3060000000
  %6030 = fmul fast float %6024, 0x401921FB60000000
  %6031 = fadd fast float %6030, 0x400921FB60000000
  %6032 = call float @dx.op.unary.f32(i32 13, float %6031)  ; Sin(value)
  %6033 = fadd fast float %6032, 0x3E7777A5C0000000
  %6034 = fmul fast float %6033, 0x3FC45F3060000000
  %6035 = fmul fast float %6024, 0x4022D97C80000000
  %6036 = fadd fast float %6035, 0x4012D97C80000000
  %6037 = call float @dx.op.unary.f32(i32 13, float %6036)  ; Sin(value)
  %6038 = fadd fast float %6037, 1.000000e+00
  %6039 = fmul fast float %6038, 0x3FBB2995E0000000
  %6040 = fmul fast float %6024, 0x402921FB60000000
  %6041 = fadd fast float %6040, 0x401921FB60000000
  %6042 = call float @dx.op.unary.f32(i32 13, float %6041)  ; Sin(value)
  %6043 = fadd fast float %6042, 0xBE8777A5C0000000
  %6044 = fmul fast float %6043, 0x3FB45F3060000000
  %6045 = call float @dx.op.dot4.f32(i32 56, float %6019, float %6020, float %6021, float %6022, float %6029, float %6034, float %6039, float %6044)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6046 = fmul fast float %6045, 0xBFF7154760000000
  %6047 = call float @dx.op.unary.f32(i32 21, float %6046)  ; Exp(value)
  %6048 = call float @dx.op.unary.f32(i32 7, float %6047)  ; Saturate(value)
  br label %6049

; <label>:6049                                    ; preds = %6017, %6013
  %6050 = phi float [ %6048, %6017 ], [ 1.000000e+00, %6013 ]
  %6051 = fadd fast float %6050, -1.000000e+00
  %6052 = fmul fast float %6051, %6011
  %6053 = fadd fast float %6052, 1.000000e+00
  br label %6054

; <label>:6054                                    ; preds = %6049, %5955
  %6055 = phi float [ %6053, %6049 ], [ 1.000000e+00, %5955 ]
  %6056 = fmul fast float %6055, %5951
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 0
  %6059 = extractvalue %dx.types.CBufRet.f32 %6057, 1
  %6060 = extractvalue %dx.types.CBufRet.f32 %6057, 2
  %6061 = fadd fast float %6058, %191
  %6062 = fadd fast float %6059, %192
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 1
  %6065 = fsub fast float -0.000000e+00, %6061
  %6066 = fsub fast float -0.000000e+00, %6062
  %6067 = fsub fast float %5071, %6060
  %6068 = fadd fast float %6067, %6064
  %6069 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6065, float %6066, float %6068)  ; Dot3(ax,ay,az,bx,by,bz)
  %6070 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5288, float %5289, float %5290)  ; Dot3(ax,ay,az,bx,by,bz)
  %6071 = fdiv fast float 1.000000e+00, %6070
  %6072 = fmul fast float %6071, %6069
  %6073 = fmul fast float %5288, %6072
  %6074 = fmul fast float %5289, %6072
  %6075 = fadd fast float %6073, %6061
  %6076 = fadd fast float %6074, %6062
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.CBufRet.f32 %6077, 1
  %6080 = fsub fast float %6075, %6078
  %6081 = fsub fast float %6076, %6079
  %6082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6082, 2
  %6084 = extractvalue %dx.types.CBufRet.f32 %6082, 3
  %6085 = fmul fast float %6080, %6083
  %6086 = fmul fast float %6081, %6084
  %6087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.i32 %6087, 3
  %6089 = icmp eq i32 %6088, 0
  br i1 %6089, label %6095, label %6090

; <label>:6090                                    ; preds = %6054
  %6091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6085, float %6086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6092 = extractvalue %dx.types.ResRet.f32 %6091, 0
  %6093 = extractvalue %dx.types.ResRet.f32 %6091, 1
  %6094 = extractvalue %dx.types.ResRet.f32 %6091, 2
  br label %6100

; <label>:6095                                    ; preds = %6054
  %6096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6085, float %6086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6097 = extractvalue %dx.types.ResRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.ResRet.f32 %6096, 1
  %6099 = extractvalue %dx.types.ResRet.f32 %6096, 2
  br label %6100

; <label>:6100                                    ; preds = %6095, %6090
  %6101 = phi float [ %6092, %6090 ], [ %6097, %6095 ]
  %6102 = phi float [ %6093, %6090 ], [ %6098, %6095 ]
  %6103 = phi float [ %6094, %6090 ], [ %6099, %6095 ]
  %6104 = extractvalue %dx.types.CBufRet.f32 %6063, 2
  %6105 = fmul fast float %6104, %6101
  %6106 = extractvalue %dx.types.CBufRet.f32 %6063, 0
  %6107 = fsub fast float %6072, %6106
  %6108 = fsub fast float %6107, %6105
  %6109 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6108)  ; FMax(a,b)
  %6110 = fmul fast float %6109, %6102
  %6111 = call float @dx.op.binary.f32(i32 36, float %6103, float %6110)  ; FMin(a,b)
  %6112 = fmul fast float %6111, 0xBFF7154760000000
  %6113 = call float @dx.op.unary.f32(i32 21, float %6112)  ; Exp(value)
  %6114 = fmul fast float %6056, %6113
  br label %6115

; <label>:6115                                    ; preds = %6100, %5950
  %6116 = phi float [ %6114, %6100 ], [ %5951, %5950 ]
  %6117 = call float @dx.op.binary.f32(i32 36, float %6116, float %6116)  ; FMin(a,b)
  %6118 = call float @dx.op.binary.f32(i32 36, float %6116, float %6117)  ; FMin(a,b)
  %6119 = fcmp fast ogt float %6118, 0.000000e+00
  br i1 %6119, label %6120, label %6371, !dx.controlflow.hints !119

; <label>:6120                                    ; preds = %6115
  %6121 = fmul fast float %6116, %5299
  %6122 = fmul fast float %6116, %5300
  %6123 = fmul fast float %6116, %5301
  %6124 = fsub fast float %193, %4285
  %6125 = fcmp fast ogt float %6124, 0.000000e+00
  %6126 = fmul fast float %5288, 5.120000e+02
  %6127 = fmul fast float %5289, 5.120000e+02
  %6128 = fmul fast float %5290, 5.120000e+02
  %6129 = fadd fast float %6128, %193
  %6130 = fsub fast float %4285, %6129
  %6131 = fmul fast float %6130, 2.000000e+00
  %6132 = fadd fast float %6131, %6129
  %6133 = select i1 %6125, float %6132, float %6129
  %6134 = fsub fast float %6133, %193
  %6135 = call float @dx.op.dot3.f32(i32 55, float %6126, float %6127, float %6134, float %6126, float %6127, float %6134)  ; Dot3(ax,ay,az,bx,by,bz)
  %6136 = call float @dx.op.unary.f32(i32 25, float %6135)  ; Rsqrt(value)
  %6137 = fmul fast float %6136, %6126
  %6138 = fmul fast float %6136, %6127
  %6139 = fmul fast float %6136, %6134
  %6140 = fsub fast float %4285, %193
  %6141 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6140)  ; Dot3(ax,ay,az,bx,by,bz)
  %6142 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6137, float %6138, float %6139)  ; Dot3(ax,ay,az,bx,by,bz)
  %6143 = fdiv fast float 1.000000e+00, %6142
  %6144 = fmul fast float %6143, %6141
  %6145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6146 = fcmp fast ogt float %6145, 0.000000e+00
  %6147 = fcmp fast olt float %6145, 0.000000e+00
  %6148 = zext i1 %6146 to i32
  %6149 = zext i1 %6147 to i32
  %6150 = sub nsw i32 %6148, %6149
  %6151 = sitofp i32 %6150 to float
  %6152 = fsub fast float %6133, %4285
  %6153 = call float @dx.op.dot3.f32(i32 55, float %6126, float %6127, float %6152, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6154 = fcmp fast ogt float %6153, 0.000000e+00
  %6155 = fcmp fast olt float %6153, 0.000000e+00
  %6156 = zext i1 %6154 to i32
  %6157 = zext i1 %6155 to i32
  %6158 = sub nsw i32 %6156, %6157
  %6159 = sitofp i32 %6158 to float
  %6160 = fcmp fast une float %6151, %6159
  br i1 %6160, label %6161, label %6171

; <label>:6161                                    ; preds = %6120
  %6162 = fmul fast float %6144, %6139
  %6163 = fmul fast float %6144, %6138
  %6164 = fmul fast float %6144, %6137
  %6165 = fmul fast float %6164, %6164
  %6166 = fmul fast float %6163, %6163
  %6167 = fadd fast float %6165, %6166
  %6168 = fmul fast float %6162, %6162
  %6169 = fadd fast float %6167, %6168
  %6170 = call float @dx.op.unary.f32(i32 24, float %6169)  ; Sqrt(value)
  br label %6181

; <label>:6171                                    ; preds = %6120
  %6172 = icmp slt i32 %6150, 0
  br i1 %6172, label %6173, label %6181

; <label>:6173                                    ; preds = %6171
  %6174 = fsub fast float %193, %6133
  %6175 = fmul fast float %6126, %6126
  %6176 = fmul fast float %6127, %6127
  %6177 = fadd fast float %6175, %6176
  %6178 = fmul fast float %6174, %6174
  %6179 = fadd fast float %6177, %6178
  %6180 = call float @dx.op.unary.f32(i32 24, float %6179)  ; Sqrt(value)
  br label %6181

; <label>:6181                                    ; preds = %6173, %6171, %6161
  %6182 = phi float [ %6170, %6161 ], [ %6180, %6173 ], [ 0.000000e+00, %6171 ]
  %6183 = fsub fast float -0.000000e+00, %6182
  %6184 = select i1 %6125, float -0.000000e+00, float %6183
  %6185 = fmul fast float %4286, 0x3FF7154760000000
  %6186 = fmul fast float %6185, %6184
  %6187 = fmul fast float %4287, 0x3FF7154760000000
  %6188 = fmul fast float %6187, %6184
  %6189 = fmul fast float %4288, 0x3FF7154760000000
  %6190 = fmul fast float %6189, %6184
  %6191 = call float @dx.op.unary.f32(i32 21, float %6186)  ; Exp(value)
  %6192 = call float @dx.op.unary.f32(i32 21, float %6188)  ; Exp(value)
  %6193 = call float @dx.op.unary.f32(i32 21, float %6190)  ; Exp(value)
  %6194 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  %6195 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6196 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6197 = fmul fast float %6121, %6194
  %6198 = fmul fast float %6122, %6195
  %6199 = fmul fast float %6123, %6196
  %6200 = fsub fast float %5288, %211
  %6201 = fsub fast float %5289, %212
  %6202 = fsub fast float %5290, %213
  %6203 = call float @dx.op.dot3.f32(i32 55, float %6200, float %6201, float %6202, float %6200, float %6201, float %6202)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = call float @dx.op.unary.f32(i32 25, float %6203)  ; Rsqrt(value)
  %6205 = fmul fast float %6204, %6200
  %6206 = fmul fast float %6204, %6201
  %6207 = fmul fast float %6204, %6202
  %6208 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float %5063, float %5064, float %5065)  ; Dot3(ax,ay,az,bx,by,bz)
  %6209 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4896, float %4897, float %6205, float %6206, float %6207)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = call float @dx.op.unary.f32(i32 7, float %6208)  ; Saturate(value)
  %6211 = fmul fast float %6210, %6210
  %6212 = fmul fast float %6211, %5087
  %6213 = call float @dx.op.unary.f32(i32 7, float %6212)  ; Saturate(value)
  %6214 = fmul fast float %6213, %6210
  %6215 = call float @dx.op.dot3.f32(i32 55, float %5063, float %5064, float %5065, float %6205, float %6206, float %6207)  ; Dot3(ax,ay,az,bx,by,bz)
  %6216 = fmul fast float %6215, %6215
  %6217 = call float @dx.op.unary.f32(i32 6, float %6208)  ; FAbs(value)
  %6218 = fsub fast float 1.000000e+00, %5069
  %6219 = call float @dx.op.binary.f32(i32 35, float %6218, float 0x3F847AE140000000)  ; FMax(a,b)
  %6220 = fmul fast float %6219, %6219
  %6221 = fmul fast float %6220, %6220
  %6222 = fsub fast float 1.000000e+00, %6221
  %6223 = fmul fast float %5074, %5074
  %6224 = fmul fast float %6223, %6222
  %6225 = fadd fast float %6224, %6221
  %6226 = bitcast float %6225 to i32
  %6227 = ashr i32 %6226, 1
  %6228 = add nsw i32 %6227, 532487669
  %6229 = bitcast i32 %6228 to float
  %6230 = fadd fast float %6229, %5074
  %6231 = fmul fast float %6221, %6216
  %6232 = fsub fast float 1.000000e+00, %6216
  %6233 = fadd fast float %6232, %6231
  %6234 = fmul fast float %6217, %6217
  %6235 = fmul fast float %6234, %6222
  %6236 = fadd fast float %6235, %6221
  %6237 = bitcast float %6236 to i32
  %6238 = ashr i32 %6237, 1
  %6239 = add nsw i32 %6238, 532487669
  %6240 = bitcast i32 %6239 to float
  %6241 = fadd fast float %6240, %6217
  %6242 = fmul fast float %6233, %6233
  %6243 = fmul fast float %6242, %6230
  %6244 = fmul fast float %6243, %6241
  %6245 = fdiv fast float 0x3FF0A00000000000, %6244
  %6246 = fmul fast float %6245, %6221
  %6247 = call float @dx.op.unary.f32(i32 6, float %6209)  ; FAbs(value)
  %6248 = fsub fast float 1.000000e+00, %6247
  %6249 = bitcast float %6248 to i32
  %6250 = sitofp i32 %6249 to float
  %6251 = fmul fast float %6250, 5.000000e+00
  %6252 = fadd fast float %6251, 0xC1EFBF8940000000
  %6253 = fptosi float %6252 to i32
  %6254 = bitcast i32 %6253 to float
  %6255 = fsub fast float 1.000000e+00, %5060
  %6256 = fsub fast float 1.000000e+00, %5061
  %6257 = fsub fast float 1.000000e+00, %5072
  %6258 = fmul fast float %6254, %6255
  %6259 = fmul fast float %6254, %6256
  %6260 = fmul fast float %6254, %6257
  %6261 = fadd fast float %6258, %5060
  %6262 = fadd fast float %6259, %5061
  %6263 = fadd fast float %6260, %5072
  br i1 %5199, label %6264, label %6287

; <label>:6264                                    ; preds = %6181
  %6265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3861, float %6247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6266 = extractvalue %dx.types.ResRet.f32 %6265, 0
  %6267 = extractvalue %dx.types.ResRet.f32 %6265, 1
  %6268 = extractvalue %dx.types.ResRet.f32 %6265, 2
  %6269 = fadd fast float %6266, -5.000000e-01
  %6270 = fadd fast float %6267, -5.000000e-01
  %6271 = fadd fast float %6268, -5.000000e-01
  %6272 = fmul fast float %5060, 4.000000e+00
  %6273 = fmul fast float %6272, %6255
  %6274 = fmul fast float %6273, %6269
  %6275 = fmul fast float %5061, 4.000000e+00
  %6276 = fmul fast float %6275, %6256
  %6277 = fmul fast float %6276, %6270
  %6278 = fmul fast float %5072, 4.000000e+00
  %6279 = fmul fast float %6278, %6257
  %6280 = fmul fast float %6279, %6271
  %6281 = fadd fast float %6274, %6261
  %6282 = fadd fast float %6277, %6262
  %6283 = fadd fast float %6280, %6263
  %6284 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  %6285 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  %6286 = call float @dx.op.unary.f32(i32 7, float %6283)  ; Saturate(value)
  br label %6287

; <label>:6287                                    ; preds = %6264, %6181
  %6288 = phi float [ %6284, %6264 ], [ %6261, %6181 ]
  %6289 = phi float [ %6285, %6264 ], [ %6262, %6181 ]
  %6290 = phi float [ %6286, %6264 ], [ %6263, %6181 ]
  %6291 = fmul fast float %6208, 9.843750e-01
  %6292 = fadd fast float %6291, 7.812500e-03
  %6293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6292, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6294 = extractvalue %dx.types.ResRet.f32 %6293, 2
  %6295 = extractvalue %dx.types.ResRet.f32 %6293, 3
  %6296 = fmul fast float %6294, %5060
  %6297 = fmul fast float %6294, %5061
  %6298 = fmul fast float %6294, %5072
  %6299 = fadd fast float %6296, %6295
  %6300 = fadd fast float %6297, %6295
  %6301 = fadd fast float %6298, %6295
  br i1 %5199, label %6302, label %6325

; <label>:6302                                    ; preds = %6287
  %6303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3861, float %6208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6304 = extractvalue %dx.types.ResRet.f32 %6303, 0
  %6305 = extractvalue %dx.types.ResRet.f32 %6303, 1
  %6306 = extractvalue %dx.types.ResRet.f32 %6303, 2
  %6307 = fadd fast float %6304, -5.000000e-01
  %6308 = fadd fast float %6305, -5.000000e-01
  %6309 = fadd fast float %6306, -5.000000e-01
  %6310 = fmul fast float %5060, 4.000000e+00
  %6311 = fmul fast float %6310, %6255
  %6312 = fmul fast float %6311, %6307
  %6313 = fmul fast float %5061, 4.000000e+00
  %6314 = fmul fast float %6313, %6256
  %6315 = fmul fast float %6314, %6308
  %6316 = fmul fast float %5072, 4.000000e+00
  %6317 = fmul fast float %6316, %6257
  %6318 = fmul fast float %6317, %6309
  %6319 = fadd fast float %6312, %6299
  %6320 = fadd fast float %6315, %6300
  %6321 = fadd fast float %6318, %6301
  %6322 = call float @dx.op.unary.f32(i32 7, float %6319)  ; Saturate(value)
  %6323 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6324 = call float @dx.op.unary.f32(i32 7, float %6321)  ; Saturate(value)
  br label %6325

; <label>:6325                                    ; preds = %6302, %6287
  %6326 = phi float [ %6322, %6302 ], [ %6299, %6287 ]
  %6327 = phi float [ %6323, %6302 ], [ %6300, %6287 ]
  %6328 = phi float [ %6324, %6302 ], [ %6301, %6287 ]
  %6329 = call float @dx.op.binary.f32(i32 35, float %6327, float %6328)  ; FMax(a,b)
  %6330 = call float @dx.op.binary.f32(i32 35, float %6326, float %6329)  ; FMax(a,b)
  %6331 = fsub fast float 1.000000e+00, %6330
  %6332 = fmul fast float %6288, %6246
  %6333 = fmul fast float %6289, %6246
  %6334 = fmul fast float %6290, %6246
  %6335 = fsub fast float 1.000000e+00, %6209
  %6336 = bitcast float %6335 to i32
  %6337 = sitofp i32 %6336 to float
  %6338 = fmul fast float %6337, 5.000000e+00
  %6339 = fadd fast float %6338, 0xC1EFBF8940000000
  %6340 = fptosi float %6339 to i32
  %6341 = bitcast i32 %6340 to float
  %6342 = fmul fast float %6341, %3862
  %6343 = fmul fast float %6331, %6342
  %6344 = fmul fast float %6343, %5249
  %6345 = fmul fast float %6343, %5250
  %6346 = fmul fast float %6343, %5251
  %6347 = fadd fast float %6344, %6332
  %6348 = fadd fast float %6345, %6333
  %6349 = fadd fast float %6346, %6334
  %6350 = fmul fast float %6214, %6197
  %6351 = fmul fast float %6350, %6331
  %6352 = fmul fast float %6214, %6198
  %6353 = fmul fast float %6352, %6331
  %6354 = fmul fast float %6214, %6199
  %6355 = fmul fast float %6354, %6331
  %6356 = fmul fast float %6350, %6347
  %6357 = fmul fast float %6352, %6348
  %6358 = fmul fast float %6354, %6349
  %6359 = fadd fast float %6351, %5233
  %6360 = fmul fast float %6359, %3888
  %6361 = fadd fast float %6353, %5234
  %6362 = fmul fast float %6361, %3888
  %6363 = fadd fast float %6355, %5235
  %6364 = fmul fast float %6363, %3888
  %6365 = fadd fast float %6356, %5276
  %6366 = fmul fast float %6365, %3888
  %6367 = fadd fast float %6357, %5279
  %6368 = fmul fast float %6367, %3888
  %6369 = fadd fast float %6358, %5282
  %6370 = fmul fast float %6369, %3888
  br label %6371

; <label>:6371                                    ; preds = %6325, %6115, %5226
  %6372 = phi float [ %5277, %5226 ], [ %5277, %6115 ], [ %6366, %6325 ]
  %6373 = phi float [ %5280, %5226 ], [ %5280, %6115 ], [ %6368, %6325 ]
  %6374 = phi float [ %5283, %5226 ], [ %5283, %6115 ], [ %6370, %6325 ]
  %6375 = phi float [ %5272, %5226 ], [ %5272, %6115 ], [ %6360, %6325 ]
  %6376 = phi float [ %5273, %5226 ], [ %5273, %6115 ], [ %6362, %6325 ]
  %6377 = phi float [ %5274, %5226 ], [ %5274, %6115 ], [ %6364, %6325 ]
  %6378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.i32 %6378, 0
  %6380 = icmp eq i32 %6379, 0
  br i1 %6380, label %7001, label %6381

; <label>:6381                                    ; preds = %6371
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 2
  %6384 = extractvalue %dx.types.CBufRet.f32 %6382, 3
  %6385 = fmul fast float %6383, %104
  %6386 = fmul fast float %6384, %105
  %6387 = fptoui float %6385 to i32
  %6388 = fptoui float %6386 to i32
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6393 = fadd fast float %95, -4.000000e+00
  %6394 = call float @dx.op.binary.f32(i32 35, float %6393, float 0.000000e+00)  ; FMax(a,b)
  %6395 = fadd fast float %6394, %6390
  %6396 = fmul fast float %6395, %6391
  %6397 = call float @dx.op.unary.f32(i32 23, float %6396)  ; Log(value)
  %6398 = fmul fast float %6397, %6392
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 2
  %6401 = fmul fast float %6398, %6400
  %6402 = call float @dx.op.unary.f32(i32 7, float %6401)  ; Saturate(value)
  %6403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.i32 %6403, 1
  %6405 = add i32 %6404, -1
  %6406 = uitofp i32 %6404 to float
  %6407 = fmul fast float %6406, %6402
  %6408 = fptoui float %6407 to i32
  %6409 = call i32 @dx.op.binary.i32(i32 40, i32 %6408, i32 %6405)  ; UMin(a,b)
  %6410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.i32 %6410, 2
  %6412 = extractvalue %dx.types.CBufRet.i32 %6410, 3
  %6413 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6388, i32 %6411, i32 %6387)  ; UMad(a,b,c)
  %6414 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6409, i32 %6412, i32 %6413)  ; UMad(a,b,c)
  %6415 = add nsw i32 %6379, -1
  %6416 = call i32 @dx.op.binary.i32(i32 37, i32 %6415, i32 0)  ; IMax(a,b)
  %6417 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6418 = fptoui float %6417 to i32
  %6419 = lshr i32 %6418, 5
  %6420 = call i32 @dx.op.binary.i32(i32 40, i32 %6419, i32 8191)  ; UMin(a,b)
  %6421 = shl i32 %6420, 2
  %6422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6421, i32 undef)  ; BufferLoad(srv,index,wot)
  %6423 = extractvalue %dx.types.ResRet.i32 %6422, 0
  %6424 = lshr i32 %6423, 16
  %6425 = and i32 %6423, 65535
  %6426 = lshr i32 %6423, 21
  %6427 = lshr i32 %6425, 5
  %6428 = call i32 @dx.op.binary.i32(i32 40, i32 %6427, i32 %6416)  ; UMin(a,b)
  %6429 = icmp ugt i32 %6426, %6428
  br i1 %6429, label %7001, label %6430

; <label>:6430                                    ; preds = %6381
  br label %6431

; <label>:6431                                    ; preds = %6991, %6430
  %6432 = phi i32 [ %6998, %6991 ], [ %6426, %6430 ]
  %6433 = phi float [ %6992, %6991 ], [ %6372, %6430 ]
  %6434 = phi float [ %6993, %6991 ], [ %6373, %6430 ]
  %6435 = phi float [ %6994, %6991 ], [ %6374, %6430 ]
  %6436 = phi float [ %6995, %6991 ], [ %6375, %6430 ]
  %6437 = phi float [ %6996, %6991 ], [ %6376, %6430 ]
  %6438 = phi float [ %6997, %6991 ], [ %6377, %6430 ]
  %6439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.i32 %6439, 0
  %6441 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6414, i32 %6440, i32 %6432)  ; UMad(a,b,c)
  %6442 = shl i32 %6441, 2
  %6443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6442, i32 undef)  ; BufferLoad(srv,index,wot)
  %6444 = extractvalue %dx.types.ResRet.i32 %6443, 0
  %6445 = shl i32 %6432, 5
  %6446 = sub nsw i32 %6424, %6445
  %6447 = call i32 @dx.op.binary.i32(i32 37, i32 %6446, i32 0)  ; IMax(a,b)
  %6448 = call i32 @dx.op.binary.i32(i32 38, i32 %6447, i32 31)  ; IMin(a,b)
  %6449 = sub nsw i32 1, %6424
  %6450 = add nsw i32 %6449, %6425
  %6451 = call i32 @dx.op.binary.i32(i32 37, i32 %6450, i32 0)  ; IMax(a,b)
  %6452 = call i32 @dx.op.binary.i32(i32 38, i32 %6451, i32 32)  ; IMin(a,b)
  %6453 = and i32 %6452, 31
  %6454 = shl i32 -1, %6453
  %6455 = xor i32 %6454, -1
  %6456 = and i32 %6448, 31
  %6457 = shl i32 %6455, %6456
  %6458 = icmp eq i32 %6452, 32
  %6459 = select i1 %6458, i32 -1, i32 %6457
  %6460 = and i32 %6459, %6444
  %6461 = icmp eq i32 %6460, 0
  br i1 %6461, label %6991, label %6462

; <label>:6462                                    ; preds = %6431
  br label %6463

; <label>:6463                                    ; preds = %6597, %6462
  %6464 = phi i32 [ %6475, %6597 ], [ %6460, %6462 ]
  %6465 = phi float [ %6598, %6597 ], [ %6433, %6462 ]
  %6466 = phi float [ %6599, %6597 ], [ %6434, %6462 ]
  %6467 = phi float [ %6600, %6597 ], [ %6435, %6462 ]
  %6468 = phi float [ %6601, %6597 ], [ %6436, %6462 ]
  %6469 = phi float [ %6602, %6597 ], [ %6437, %6462 ]
  %6470 = phi float [ %6603, %6597 ], [ %6438, %6462 ]
  %6471 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6464)  ; FirstbitLo(value)
  %6472 = add i32 %6471, %6445
  %6473 = and i32 %6471, 31
  %6474 = shl i32 1, %6473
  %6475 = xor i32 %6474, %6464
  %6476 = mul i32 %6472, 112
  %6477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6476, i32 undef)  ; BufferLoad(srv,index,wot)
  %6478 = extractvalue %dx.types.ResRet.f32 %6477, 0
  %6479 = extractvalue %dx.types.ResRet.f32 %6477, 1
  %6480 = extractvalue %dx.types.ResRet.f32 %6477, 2
  %6481 = or i32 %6476, 12
  %6482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6481, i32 undef)  ; BufferLoad(srv,index,wot)
  %6483 = extractvalue %dx.types.ResRet.f32 %6482, 0
  %6484 = add i32 %6476, 16
  %6485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6484, i32 undef)  ; BufferLoad(srv,index,wot)
  %6486 = extractvalue %dx.types.ResRet.f32 %6485, 0
  %6487 = extractvalue %dx.types.ResRet.f32 %6485, 1
  %6488 = extractvalue %dx.types.ResRet.f32 %6485, 2
  %6489 = add i32 %6476, 28
  %6490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6489, i32 undef)  ; BufferLoad(srv,index,wot)
  %6491 = extractvalue %dx.types.ResRet.i32 %6490, 0
  %6492 = add i32 %6476, 44
  %6493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6492, i32 undef)  ; BufferLoad(srv,index,wot)
  %6494 = extractvalue %dx.types.ResRet.f32 %6493, 0
  %6495 = add i32 %6476, 48
  %6496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6495, i32 undef)  ; BufferLoad(srv,index,wot)
  %6497 = extractvalue %dx.types.ResRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.ResRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.ResRet.f32 %6496, 2
  %6500 = extractvalue %dx.types.ResRet.f32 %6496, 3
  %6501 = add i32 %6476, 64
  %6502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6501, i32 undef)  ; BufferLoad(srv,index,wot)
  %6503 = extractvalue %dx.types.ResRet.f32 %6502, 0
  %6504 = extractvalue %dx.types.ResRet.f32 %6502, 1
  %6505 = extractvalue %dx.types.ResRet.f32 %6502, 2
  %6506 = extractvalue %dx.types.ResRet.f32 %6502, 3
  %6507 = add i32 %6476, 80
  %6508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6507, i32 undef)  ; BufferLoad(srv,index,wot)
  %6509 = extractvalue %dx.types.ResRet.f32 %6508, 1
  %6510 = extractvalue %dx.types.ResRet.f32 %6508, 2
  %6511 = add i32 %6476, 92
  %6512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6511, i32 undef)  ; BufferLoad(srv,index,wot)
  %6513 = extractvalue %dx.types.ResRet.i32 %6512, 0
  %6514 = call float @dx.op.dot3.f32(i32 55, float %6478, float %6479, float %6480, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6515 = select i1 %282, float %6509, float %6478
  %6516 = select i1 %282, float %6514, float %6479
  %6517 = select i1 %282, float %6510, float %6480
  %6518 = and i32 %6513, 65535
  %6519 = uitofp i32 %6518 to float
  %6520 = lshr i32 %6513, 16
  %6521 = uitofp i32 %6520 to float
  %6522 = and i32 %6491, 65535
  %6523 = and i32 %6491, 50331648
  %6524 = icmp eq i32 %6523, 33554432
  %6525 = fsub fast float %6497, %191
  %6526 = fsub fast float %6498, %192
  %6527 = fsub fast float %6499, %193
  %6528 = call float @dx.op.dot3.f32(i32 55, float %6525, float %6526, float %6527, float %6525, float %6526, float %6527)  ; Dot3(ax,ay,az,bx,by,bz)
  %6529 = call float @dx.op.unary.f32(i32 24, float %6528)  ; Sqrt(value)
  %6530 = fdiv fast float 1.000000e+00, %6529
  %6531 = fmul fast float %6530, %6525
  %6532 = fmul fast float %6530, %6526
  %6533 = fmul fast float %6530, %6527
  %6534 = fadd fast float %6529, %6483
  %6535 = fdiv fast float 1.000000e+00, %6534
  %6536 = fmul float %6494, %6535
  %6537 = fmul float %6536, %6536
  %6538 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  br i1 %6524, label %6539, label %6560

; <label>:6539                                    ; preds = %6463
  %6540 = fmul fast float %6505, %6486
  %6541 = fmul fast float %6505, %6487
  %6542 = fmul fast float %6505, %6488
  %6543 = fadd fast float %6525, %6540
  %6544 = fadd fast float %6526, %6541
  %6545 = fadd fast float %6527, %6542
  %6546 = call float @dx.op.dot3.f32(i32 55, float %6543, float %6544, float %6545, float %6543, float %6544, float %6545)  ; Dot3(ax,ay,az,bx,by,bz)
  %6547 = call float @dx.op.unary.f32(i32 25, float %6546)  ; Rsqrt(value)
  %6548 = fmul fast float %6547, %6543
  %6549 = fmul fast float %6547, %6544
  %6550 = fmul fast float %6547, %6545
  %6551 = fsub fast float %191, %6497
  %6552 = fsub fast float %192, %6498
  %6553 = fsub fast float %193, %6499
  %6554 = fsub fast float -0.000000e+00, %6551
  %6555 = fsub fast float -0.000000e+00, %6552
  %6556 = fsub fast float -0.000000e+00, %6553
  %6557 = call float @dx.op.dot3.f32(i32 55, float %6554, float %6555, float %6556, float %6486, float %6487, float %6488)  ; Dot3(ax,ay,az,bx,by,bz)
  %6558 = fcmp fast ogt float %6557, 0.000000e+00
  %6559 = uitofp i1 %6558 to float
  br label %6560

; <label>:6560                                    ; preds = %6539, %6463
  %6561 = phi float [ %6559, %6539 ], [ 1.000000e+00, %6463 ]
  %6562 = phi float [ %6548, %6539 ], [ %6531, %6463 ]
  %6563 = phi float [ %6549, %6539 ], [ %6532, %6463 ]
  %6564 = phi float [ %6550, %6539 ], [ %6533, %6463 ]
  %6565 = call float @dx.op.dot3.f32(i32 55, float %6486, float %6487, float %6488, float %6562, float %6563, float %6564)  ; Dot3(ax,ay,az,bx,by,bz)
  %6566 = fmul fast float %6565, %6565
  %6567 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6568 = fsub fast float 1.000000e+00, %6567
  %6569 = fmul fast float %6568, 5.000000e-01
  %6570 = fcmp fast ogt float %6565, 0.000000e+00
  %6571 = fsub fast float 1.000000e+00, %6569
  %6572 = select i1 %6570, float %6569, float %6571
  %6573 = fmul fast float %6572, %6521
  %6574 = fadd fast float %6573, %6519
  %6575 = fmul fast float %6574, 0x3EF0001000000000
  %6576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %6575, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6577 = extractvalue %dx.types.ResRet.f32 %6576, 0
  %6578 = fmul fast float %6565, %6503
  %6579 = fadd fast float %6578, %6504
  %6580 = call float @dx.op.unary.f32(i32 7, float %6579)  ; Saturate(value)
  %6581 = select i1 %6524, float 1.000000e+00, float %6580
  %6582 = select i1 %6524, float %6580, float 1.000000e+00
  %6583 = fmul fast float %6529, %6500
  %6584 = fsub fast float 1.000000e+00, %6583
  %6585 = fmul fast float %6584, %6506
  %6586 = call float @dx.op.unary.f32(i32 7, float %6585)  ; Saturate(value)
  %6587 = fmul fast float %6586, %6582
  %6588 = fmul fast float %6587, 2.000000e+00
  %6589 = fsub fast float 3.000000e+00, %6588
  %6590 = fmul fast float %6577, %6561
  %6591 = fmul fast float %6587, %6587
  %6592 = fmul fast float %6591, %6590
  %6593 = fmul fast float %6592, %6589
  %6594 = call float @dx.op.binary.f32(i32 36, float %6593, float %6593)  ; FMin(a,b)
  %6595 = call float @dx.op.binary.f32(i32 36, float %6593, float %6594)  ; FMin(a,b)
  %6596 = fcmp fast ogt float %6595, 0.000000e+00
  br i1 %6596, label %6605, label %6597, !dx.controlflow.hints !120

; <label>:6597                                    ; preds = %6947, %6705, %6560
  %6598 = phi float [ %6465, %6705 ], [ %6465, %6560 ], [ %6987, %6947 ]
  %6599 = phi float [ %6466, %6705 ], [ %6466, %6560 ], [ %6988, %6947 ]
  %6600 = phi float [ %6467, %6705 ], [ %6467, %6560 ], [ %6989, %6947 ]
  %6601 = phi float [ %6468, %6705 ], [ %6468, %6560 ], [ %6981, %6947 ]
  %6602 = phi float [ %6469, %6705 ], [ %6469, %6560 ], [ %6982, %6947 ]
  %6603 = phi float [ %6470, %6705 ], [ %6470, %6560 ], [ %6983, %6947 ]
  %6604 = icmp eq i32 %6464, %6474
  br i1 %6604, label %6990, label %6463

; <label>:6605                                    ; preds = %6560
  %6606 = icmp eq i32 %6522, 255
  br i1 %6606, label %6705, label %6607, !dx.controlflow.hints !121

; <label>:6607                                    ; preds = %6605
  %6608 = mul nuw nsw i32 %6522, 176
  %6609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6608, i32 undef)  ; BufferLoad(srv,index,wot)
  %6610 = extractvalue %dx.types.ResRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.ResRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.ResRet.f32 %6609, 2
  %6613 = extractvalue %dx.types.ResRet.f32 %6609, 3
  %6614 = add nuw nsw i32 %6608, 16
  %6615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6614, i32 undef)  ; BufferLoad(srv,index,wot)
  %6616 = extractvalue %dx.types.ResRet.f32 %6615, 0
  %6617 = extractvalue %dx.types.ResRet.f32 %6615, 1
  %6618 = add nuw nsw i32 %6608, 32
  %6619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6618, i32 undef)  ; BufferLoad(srv,index,wot)
  %6620 = extractvalue %dx.types.ResRet.f32 %6619, 0
  %6621 = extractvalue %dx.types.ResRet.f32 %6619, 1
  %6622 = extractvalue %dx.types.ResRet.f32 %6619, 2
  %6623 = add nuw nsw i32 %6608, 48
  %6624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6623, i32 undef)  ; BufferLoad(srv,index,wot)
  %6625 = extractvalue %dx.types.ResRet.f32 %6624, 0
  %6626 = extractvalue %dx.types.ResRet.f32 %6624, 1
  %6627 = extractvalue %dx.types.ResRet.f32 %6624, 2
  %6628 = extractvalue %dx.types.ResRet.f32 %6624, 3
  %6629 = add nuw nsw i32 %6608, 64
  %6630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6629, i32 undef)  ; BufferLoad(srv,index,wot)
  %6631 = extractvalue %dx.types.ResRet.f32 %6630, 0
  %6632 = extractvalue %dx.types.ResRet.f32 %6630, 1
  %6633 = extractvalue %dx.types.ResRet.f32 %6630, 2
  %6634 = extractvalue %dx.types.ResRet.f32 %6630, 3
  %6635 = add nuw nsw i32 %6608, 80
  %6636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6635, i32 undef)  ; BufferLoad(srv,index,wot)
  %6637 = extractvalue %dx.types.ResRet.f32 %6636, 0
  %6638 = extractvalue %dx.types.ResRet.f32 %6636, 1
  %6639 = extractvalue %dx.types.ResRet.f32 %6636, 2
  %6640 = extractvalue %dx.types.ResRet.f32 %6636, 3
  %6641 = add nuw nsw i32 %6608, 96
  %6642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6641, i32 undef)  ; BufferLoad(srv,index,wot)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 0
  %6644 = extractvalue %dx.types.ResRet.f32 %6642, 1
  %6645 = extractvalue %dx.types.ResRet.f32 %6642, 2
  %6646 = extractvalue %dx.types.ResRet.f32 %6642, 3
  %6647 = bitcast float %6617 to i32
  %6648 = fmul fast float %6622, %111
  %6649 = fmul fast float %6622, %112
  %6650 = fmul fast float %6622, %113
  %6651 = fadd fast float %6648, %191
  %6652 = fadd fast float %6649, %192
  %6653 = fadd fast float %6650, %193
  %6654 = fmul fast float %6651, %6625
  %6655 = call float @dx.op.tertiary.f32(i32 46, float %6652, float %6631, float %6654)  ; FMad(a,b,c)
  %6656 = call float @dx.op.tertiary.f32(i32 46, float %6653, float %6637, float %6655)  ; FMad(a,b,c)
  %6657 = fadd fast float %6656, %6643
  %6658 = fmul fast float %6651, %6626
  %6659 = call float @dx.op.tertiary.f32(i32 46, float %6652, float %6632, float %6658)  ; FMad(a,b,c)
  %6660 = call float @dx.op.tertiary.f32(i32 46, float %6653, float %6638, float %6659)  ; FMad(a,b,c)
  %6661 = fadd fast float %6660, %6644
  %6662 = fmul fast float %6651, %6627
  %6663 = call float @dx.op.tertiary.f32(i32 46, float %6652, float %6633, float %6662)  ; FMad(a,b,c)
  %6664 = call float @dx.op.tertiary.f32(i32 46, float %6653, float %6639, float %6663)  ; FMad(a,b,c)
  %6665 = fadd fast float %6664, %6645
  %6666 = fmul fast float %6651, %6628
  %6667 = call float @dx.op.tertiary.f32(i32 46, float %6652, float %6634, float %6666)  ; FMad(a,b,c)
  %6668 = call float @dx.op.tertiary.f32(i32 46, float %6653, float %6640, float %6667)  ; FMad(a,b,c)
  %6669 = fadd fast float %6668, %6646
  %6670 = fdiv fast float %6657, %6669
  %6671 = fdiv fast float %6661, %6669
  %6672 = fdiv fast float %6665, %6669
  %6673 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6672)  ; FMax(a,b)
  %6674 = fmul fast float %293, 0x401921FB60000000
  %6675 = call float @dx.op.unary.f32(i32 13, float %6674)  ; Sin(value)
  %6676 = call float @dx.op.unary.f32(i32 12, float %6674)  ; Cos(value)
  %6677 = fsub fast float -0.000000e+00, %6675
  %6678 = fmul fast float %6612, 5.000000e-01
  %6679 = call float @dx.op.dot2.f32(i32 54, float %293, float %293, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6680 = call float @dx.op.unary.f32(i32 22, float %6679)  ; Frc(value)
  %6681 = fmul fast float %6680, 0x404A7DD040000000
  %6682 = call float @dx.op.unary.f32(i32 22, float %6681)  ; Frc(value)
  %6683 = fmul fast float %6682, %6621
  %6684 = fadd fast float %6683, %6678
  %6685 = call float @dx.op.tertiary.f32(i32 46, float %6684, float %6677, float 0.000000e+00)  ; FMad(a,b,c)
  %6686 = call float @dx.op.tertiary.f32(i32 46, float %6684, float %6676, float 0.000000e+00)  ; FMad(a,b,c)
  %6687 = fadd fast float %6685, %6670
  %6688 = fadd fast float %6686, %6671
  %6689 = fmul fast float %6687, %6616
  %6690 = fmul fast float %6688, %6616
  %6691 = call float @dx.op.binary.f32(i32 35, float %6689, float %6612)  ; FMax(a,b)
  %6692 = call float @dx.op.binary.f32(i32 35, float %6690, float %6612)  ; FMax(a,b)
  %6693 = call float @dx.op.binary.f32(i32 36, float %6691, float %6613)  ; FMin(a,b)
  %6694 = call float @dx.op.binary.f32(i32 36, float %6692, float %6613)  ; FMin(a,b)
  %6695 = fadd fast float %6693, %6610
  %6696 = fadd fast float %6694, %6611
  %6697 = uitofp i32 %6647 to float
  %6698 = fadd fast float %6673, %6620
  %6699 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %6695, float %6696, float %6697, float undef, i32 0, i32 0, i32 undef, float %6698)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6700 = extractvalue %dx.types.ResRet.f32 %6699, 0
  %6701 = fadd fast float %6700, -1.000000e+00
  %6702 = fmul fast float %6701, %6581
  %6703 = fadd fast float %6702, 1.000000e+00
  %6704 = fmul fast float %6703, %6593
  br label %6705

; <label>:6705                                    ; preds = %6607, %6605
  %6706 = phi float [ %6704, %6607 ], [ %6593, %6605 ]
  %6707 = call float @dx.op.binary.f32(i32 36, float %6706, float %6706)  ; FMin(a,b)
  %6708 = call float @dx.op.binary.f32(i32 36, float %6706, float %6707)  ; FMin(a,b)
  %6709 = fcmp fast ogt float %6708, 0.000000e+00
  br i1 %6709, label %6710, label %6597, !dx.controlflow.hints !122

; <label>:6710                                    ; preds = %6705
  %6711 = fmul fast float %6706, %6515
  %6712 = fmul fast float %6706, %6516
  %6713 = fmul fast float %6706, %6517
  %6714 = fsub fast float %6499, %4285
  %6715 = fcmp fast ogt float %6714, 0.000000e+00
  %6716 = fsub fast float %193, %4285
  %6717 = fcmp fast ogt float %6716, 0.000000e+00
  %6718 = xor i1 %6717, %6715
  %6719 = fsub fast float %4285, %6499
  %6720 = fmul fast float %6719, 2.000000e+00
  %6721 = fadd fast float %6720, %6499
  %6722 = select i1 %6718, float %6499, float %6721
  %6723 = fsub fast float %6722, %193
  %6724 = call float @dx.op.dot3.f32(i32 55, float %6525, float %6526, float %6723, float %6525, float %6526, float %6723)  ; Dot3(ax,ay,az,bx,by,bz)
  %6725 = call float @dx.op.unary.f32(i32 25, float %6724)  ; Rsqrt(value)
  %6726 = fmul fast float %6725, %6525
  %6727 = fmul fast float %6725, %6526
  %6728 = fmul fast float %6725, %6723
  %6729 = fsub fast float %4285, %193
  %6730 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6729)  ; Dot3(ax,ay,az,bx,by,bz)
  %6731 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6726, float %6727, float %6728)  ; Dot3(ax,ay,az,bx,by,bz)
  %6732 = fdiv fast float 1.000000e+00, %6731
  %6733 = fmul fast float %6732, %6730
  %6734 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6716, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6735 = fcmp fast ogt float %6734, 0.000000e+00
  %6736 = fcmp fast olt float %6734, 0.000000e+00
  %6737 = zext i1 %6735 to i32
  %6738 = zext i1 %6736 to i32
  %6739 = sub nsw i32 %6737, %6738
  %6740 = sitofp i32 %6739 to float
  %6741 = fsub fast float %6722, %4285
  %6742 = call float @dx.op.dot3.f32(i32 55, float %6525, float %6526, float %6741, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6743 = fcmp fast ogt float %6742, 0.000000e+00
  %6744 = fcmp fast olt float %6742, 0.000000e+00
  %6745 = zext i1 %6743 to i32
  %6746 = zext i1 %6744 to i32
  %6747 = sub nsw i32 %6745, %6746
  %6748 = sitofp i32 %6747 to float
  %6749 = fcmp fast une float %6740, %6748
  br i1 %6749, label %6750, label %6760

; <label>:6750                                    ; preds = %6710
  %6751 = fmul fast float %6733, %6728
  %6752 = fmul fast float %6733, %6727
  %6753 = fmul fast float %6733, %6726
  %6754 = fmul fast float %6753, %6753
  %6755 = fmul fast float %6752, %6752
  %6756 = fadd fast float %6754, %6755
  %6757 = fmul fast float %6751, %6751
  %6758 = fadd fast float %6756, %6757
  %6759 = call float @dx.op.unary.f32(i32 24, float %6758)  ; Sqrt(value)
  br label %6772

; <label>:6760                                    ; preds = %6710
  %6761 = icmp slt i32 %6739, 0
  br i1 %6761, label %6762, label %6772

; <label>:6762                                    ; preds = %6760
  %6763 = fsub fast float %191, %6497
  %6764 = fsub fast float %192, %6498
  %6765 = fsub fast float %193, %6722
  %6766 = fmul fast float %6763, %6763
  %6767 = fmul fast float %6764, %6764
  %6768 = fadd fast float %6766, %6767
  %6769 = fmul fast float %6765, %6765
  %6770 = fadd fast float %6768, %6769
  %6771 = call float @dx.op.unary.f32(i32 24, float %6770)  ; Sqrt(value)
  br label %6772

; <label>:6772                                    ; preds = %6762, %6760, %6750
  %6773 = phi float [ %6759, %6750 ], [ %6771, %6762 ], [ 0.000000e+00, %6760 ]
  %6774 = and i1 %6717, %6715
  %6775 = fsub fast float -0.000000e+00, %6773
  %6776 = select i1 %6774, float -0.000000e+00, float %6775
  %6777 = fmul fast float %4286, 0x3FF7154760000000
  %6778 = fmul fast float %6777, %6776
  %6779 = fmul fast float %4287, 0x3FF7154760000000
  %6780 = fmul fast float %6779, %6776
  %6781 = fmul fast float %4288, 0x3FF7154760000000
  %6782 = fmul fast float %6781, %6776
  %6783 = call float @dx.op.unary.f32(i32 21, float %6778)  ; Exp(value)
  %6784 = call float @dx.op.unary.f32(i32 21, float %6780)  ; Exp(value)
  %6785 = call float @dx.op.unary.f32(i32 21, float %6782)  ; Exp(value)
  %6786 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6787 = call float @dx.op.unary.f32(i32 7, float %6784)  ; Saturate(value)
  %6788 = call float @dx.op.unary.f32(i32 7, float %6785)  ; Saturate(value)
  %6789 = fmul fast float %6711, %6786
  %6790 = fmul fast float %6712, %6787
  %6791 = fmul fast float %6713, %6788
  %6792 = fsub fast float %6531, %211
  %6793 = fsub fast float %6532, %212
  %6794 = fsub fast float %6533, %213
  %6795 = call float @dx.op.dot3.f32(i32 55, float %6792, float %6793, float %6794, float %6792, float %6793, float %6794)  ; Dot3(ax,ay,az,bx,by,bz)
  %6796 = call float @dx.op.unary.f32(i32 25, float %6795)  ; Rsqrt(value)
  %6797 = fmul fast float %6796, %6792
  %6798 = fmul fast float %6796, %6793
  %6799 = fmul fast float %6796, %6794
  %6800 = call float @dx.op.dot3.f32(i32 55, float %6531, float %6532, float %6533, float %5063, float %5064, float %5065)  ; Dot3(ax,ay,az,bx,by,bz)
  %6801 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4896, float %4897, float %6797, float %6798, float %6799)  ; Dot3(ax,ay,az,bx,by,bz)
  %6802 = call float @dx.op.unary.f32(i32 7, float %6800)  ; Saturate(value)
  %6803 = fmul fast float %6802, %6538
  %6804 = fmul fast float %6802, %6802
  %6805 = fmul fast float %6804, %5087
  %6806 = call float @dx.op.unary.f32(i32 7, float %6805)  ; Saturate(value)
  %6807 = fmul fast float %6803, %6806
  %6808 = bitcast float %6528 to i32
  %6809 = ashr i32 %6808, 1
  %6810 = sub nsw i32 1597463007, %6809
  %6811 = bitcast i32 %6810 to float
  %6812 = fmul fast float %6811, %6525
  %6813 = fmul fast float %6811, %6526
  %6814 = fmul fast float %6811, %6527
  %6815 = fsub fast float %6812, %211
  %6816 = fsub fast float %6813, %212
  %6817 = fsub fast float %6814, %213
  %6818 = call float @dx.op.dot3.f32(i32 55, float %6815, float %6816, float %6817, float %6815, float %6816, float %6817)  ; Dot3(ax,ay,az,bx,by,bz)
  %6819 = call float @dx.op.unary.f32(i32 25, float %6818)  ; Rsqrt(value)
  %6820 = fmul fast float %6815, %6819
  %6821 = fmul fast float %6816, %6819
  %6822 = fmul fast float %6817, %6819
  %6823 = call float @dx.op.dot3.f32(i32 55, float %5063, float %5064, float %5065, float %6820, float %6821, float %6822)  ; Dot3(ax,ay,az,bx,by,bz)
  %6824 = fmul fast float %6823, %6823
  %6825 = call float @dx.op.unary.f32(i32 6, float %6800)  ; FAbs(value)
  %6826 = fsub fast float 1.000000e+00, %5069
  %6827 = call float @dx.op.binary.f32(i32 35, float %6826, float 0x3F847AE140000000)  ; FMax(a,b)
  %6828 = fmul fast float %6827, %6827
  %6829 = fmul fast float %6828, %6828
  %6830 = fsub fast float 1.000000e+00, %6829
  %6831 = fmul fast float %5074, %5074
  %6832 = fmul fast float %6831, %6830
  %6833 = fadd fast float %6832, %6829
  %6834 = bitcast float %6833 to i32
  %6835 = ashr i32 %6834, 1
  %6836 = add nsw i32 %6835, 532487669
  %6837 = bitcast i32 %6836 to float
  %6838 = fadd fast float %6837, %5074
  %6839 = fmul fast float %6829, %6824
  %6840 = fsub fast float 1.000000e+00, %6824
  %6841 = fadd fast float %6840, %6839
  %6842 = fmul fast float %6825, %6825
  %6843 = fmul fast float %6842, %6830
  %6844 = fadd fast float %6843, %6829
  %6845 = bitcast float %6844 to i32
  %6846 = ashr i32 %6845, 1
  %6847 = add nsw i32 %6846, 532487669
  %6848 = bitcast i32 %6847 to float
  %6849 = fadd fast float %6848, %6825
  %6850 = fmul fast float %6841, %6841
  %6851 = fmul fast float %6850, %6838
  %6852 = fmul fast float %6851, %6849
  %6853 = fdiv fast float 1.000000e+00, %6852
  %6854 = bitcast float %6829 to i32
  %6855 = sitofp i32 %6854 to float
  %6856 = fmul fast float %6855, 0x3FE7F73180000000
  %6857 = fadd fast float %6856, 0x41AFE27C40000000
  %6858 = fptosi float %6857 to i32
  %6859 = bitcast i32 %6858 to float
  %6860 = fmul fast float %6494, 0x3FD80E9D60000000
  %6861 = fmul fast float %6860, %6811
  %6862 = fadd fast float %6859, %6861
  %6863 = bitcast float %6862 to i32
  %6864 = sub nsw i32 2129859010, %6863
  %6865 = bitcast i32 %6864 to float
  %6866 = fmul fast float %6829, %6853
  %6867 = fmul fast float %6866, %6859
  %6868 = fmul fast float %6867, %6865
  %6869 = call float @dx.op.unary.f32(i32 6, float %6801)  ; FAbs(value)
  %6870 = fsub fast float 1.000000e+00, %6869
  %6871 = bitcast float %6870 to i32
  %6872 = sitofp i32 %6871 to float
  %6873 = fmul fast float %6872, 5.000000e+00
  %6874 = fadd fast float %6873, 0xC1EFBF8940000000
  %6875 = fptosi float %6874 to i32
  %6876 = bitcast i32 %6875 to float
  %6877 = fsub fast float 1.000000e+00, %5060
  %6878 = fsub fast float 1.000000e+00, %5061
  %6879 = fsub fast float 1.000000e+00, %5072
  %6880 = fmul fast float %6876, %6877
  %6881 = fmul fast float %6876, %6878
  %6882 = fmul fast float %6876, %6879
  %6883 = fadd fast float %6880, %5060
  %6884 = fadd fast float %6881, %5061
  %6885 = fadd fast float %6882, %5072
  br i1 %5199, label %6886, label %6909

; <label>:6886                                    ; preds = %6772
  %6887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3861, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6888 = extractvalue %dx.types.ResRet.f32 %6887, 0
  %6889 = extractvalue %dx.types.ResRet.f32 %6887, 1
  %6890 = extractvalue %dx.types.ResRet.f32 %6887, 2
  %6891 = fadd fast float %6888, -5.000000e-01
  %6892 = fadd fast float %6889, -5.000000e-01
  %6893 = fadd fast float %6890, -5.000000e-01
  %6894 = fmul fast float %5060, 4.000000e+00
  %6895 = fmul fast float %6894, %6877
  %6896 = fmul fast float %6895, %6891
  %6897 = fmul fast float %5061, 4.000000e+00
  %6898 = fmul fast float %6897, %6878
  %6899 = fmul fast float %6898, %6892
  %6900 = fmul fast float %5072, 4.000000e+00
  %6901 = fmul fast float %6900, %6879
  %6902 = fmul fast float %6901, %6893
  %6903 = fadd fast float %6896, %6883
  %6904 = fadd fast float %6899, %6884
  %6905 = fadd fast float %6902, %6885
  %6906 = call float @dx.op.unary.f32(i32 7, float %6903)  ; Saturate(value)
  %6907 = call float @dx.op.unary.f32(i32 7, float %6904)  ; Saturate(value)
  %6908 = call float @dx.op.unary.f32(i32 7, float %6905)  ; Saturate(value)
  br label %6909

; <label>:6909                                    ; preds = %6886, %6772
  %6910 = phi float [ %6906, %6886 ], [ %6883, %6772 ]
  %6911 = phi float [ %6907, %6886 ], [ %6884, %6772 ]
  %6912 = phi float [ %6908, %6886 ], [ %6885, %6772 ]
  %6913 = fmul fast float %6800, 9.843750e-01
  %6914 = fadd fast float %6913, 7.812500e-03
  %6915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6914, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6916 = extractvalue %dx.types.ResRet.f32 %6915, 2
  %6917 = extractvalue %dx.types.ResRet.f32 %6915, 3
  %6918 = fmul fast float %6916, %5060
  %6919 = fmul fast float %6916, %5061
  %6920 = fmul fast float %6916, %5072
  %6921 = fadd fast float %6918, %6917
  %6922 = fadd fast float %6919, %6917
  %6923 = fadd fast float %6920, %6917
  br i1 %5199, label %6924, label %6947

; <label>:6924                                    ; preds = %6909
  %6925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3861, float %6800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6926 = extractvalue %dx.types.ResRet.f32 %6925, 0
  %6927 = extractvalue %dx.types.ResRet.f32 %6925, 1
  %6928 = extractvalue %dx.types.ResRet.f32 %6925, 2
  %6929 = fadd fast float %6926, -5.000000e-01
  %6930 = fadd fast float %6927, -5.000000e-01
  %6931 = fadd fast float %6928, -5.000000e-01
  %6932 = fmul fast float %5060, 4.000000e+00
  %6933 = fmul fast float %6932, %6877
  %6934 = fmul fast float %6933, %6929
  %6935 = fmul fast float %5061, 4.000000e+00
  %6936 = fmul fast float %6935, %6878
  %6937 = fmul fast float %6936, %6930
  %6938 = fmul fast float %5072, 4.000000e+00
  %6939 = fmul fast float %6938, %6879
  %6940 = fmul fast float %6939, %6931
  %6941 = fadd fast float %6934, %6921
  %6942 = fadd fast float %6937, %6922
  %6943 = fadd fast float %6940, %6923
  %6944 = call float @dx.op.unary.f32(i32 7, float %6941)  ; Saturate(value)
  %6945 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6946 = call float @dx.op.unary.f32(i32 7, float %6943)  ; Saturate(value)
  br label %6947

; <label>:6947                                    ; preds = %6924, %6909
  %6948 = phi float [ %6944, %6924 ], [ %6921, %6909 ]
  %6949 = phi float [ %6945, %6924 ], [ %6922, %6909 ]
  %6950 = phi float [ %6946, %6924 ], [ %6923, %6909 ]
  %6951 = call float @dx.op.binary.f32(i32 35, float %6949, float %6950)  ; FMax(a,b)
  %6952 = call float @dx.op.binary.f32(i32 35, float %6948, float %6951)  ; FMax(a,b)
  %6953 = fsub fast float 1.000000e+00, %6952
  %6954 = fmul fast float %6910, %6868
  %6955 = fmul fast float %6911, %6868
  %6956 = fmul fast float %6912, %6868
  %6957 = fsub fast float 1.000000e+00, %6801
  %6958 = bitcast float %6957 to i32
  %6959 = sitofp i32 %6958 to float
  %6960 = fmul fast float %6959, 5.000000e+00
  %6961 = fadd fast float %6960, 0xC1EFBF8940000000
  %6962 = fptosi float %6961 to i32
  %6963 = bitcast i32 %6962 to float
  %6964 = fmul fast float %6963, %3862
  %6965 = fmul fast float %6953, %6964
  %6966 = fmul fast float %6965, %5249
  %6967 = fmul fast float %6965, %5250
  %6968 = fmul fast float %6965, %5251
  %6969 = fadd fast float %6966, %6954
  %6970 = fadd fast float %6967, %6955
  %6971 = fadd fast float %6968, %6956
  %6972 = fmul fast float %6789, %3888
  %6973 = fmul fast float %6972, %6807
  %6974 = fmul fast float %6973, %6953
  %6975 = fmul fast float %6790, %3888
  %6976 = fmul fast float %6975, %6807
  %6977 = fmul fast float %6976, %6953
  %6978 = fmul fast float %6791, %3888
  %6979 = fmul fast float %6978, %6807
  %6980 = fmul fast float %6979, %6953
  %6981 = fadd fast float %6974, %6468
  %6982 = fadd fast float %6977, %6469
  %6983 = fadd fast float %6980, %6470
  %6984 = fmul fast float %6973, %6969
  %6985 = fmul fast float %6976, %6970
  %6986 = fmul fast float %6979, %6971
  %6987 = fadd fast float %6984, %6465
  %6988 = fadd fast float %6985, %6466
  %6989 = fadd fast float %6986, %6467
  br label %6597

; <label>:6990                                    ; preds = %6597
  br label %6991

; <label>:6991                                    ; preds = %6990, %6431
  %6992 = phi float [ %6433, %6431 ], [ %6598, %6990 ]
  %6993 = phi float [ %6434, %6431 ], [ %6599, %6990 ]
  %6994 = phi float [ %6435, %6431 ], [ %6600, %6990 ]
  %6995 = phi float [ %6436, %6431 ], [ %6601, %6990 ]
  %6996 = phi float [ %6437, %6431 ], [ %6602, %6990 ]
  %6997 = phi float [ %6438, %6431 ], [ %6603, %6990 ]
  %6998 = add i32 %6432, 1
  %6999 = icmp ugt i32 %6998, %6428
  br i1 %6999, label %7000, label %6431

; <label>:7000                                    ; preds = %6991
  br label %7001

; <label>:7001                                    ; preds = %7000, %6381, %6371
  %7002 = phi float [ %6372, %6371 ], [ %6372, %6381 ], [ %6992, %7000 ]
  %7003 = phi float [ %6373, %6371 ], [ %6373, %6381 ], [ %6993, %7000 ]
  %7004 = phi float [ %6374, %6371 ], [ %6374, %6381 ], [ %6994, %7000 ]
  %7005 = phi float [ %6375, %6371 ], [ %6375, %6381 ], [ %6995, %7000 ]
  %7006 = phi float [ %6376, %6371 ], [ %6376, %6381 ], [ %6996, %7000 ]
  %7007 = phi float [ %6377, %6371 ], [ %6377, %6381 ], [ %6997, %7000 ]
  %7008 = fmul fast float %3888, %3888
  %7009 = fsub fast float 1.000000e+00, %7008
  %7010 = call float @dx.op.dot3.f32(i32 55, float %7009, float %7009, float %7009, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7011 = fsub fast float 1.000000e+00, %7010
  %7012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7013 = extractvalue %dx.types.CBufRet.f32 %7012, 0
  %7014 = fmul fast float %7013, %5255
  %7015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7016 = extractvalue %dx.types.CBufRet.f32 %7015, 3
  %7017 = fsub fast float 1.000000e+00, %3866
  %7018 = call float @dx.op.unary.f32(i32 7, float %7017)  ; Saturate(value)
  %7019 = fadd fast float %7007, %3864
  %7020 = fmul fast float %7019, %3866
  %7021 = fmul fast float %7018, %7016
  %7022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3867, i32 undef)  ; BufferLoad(srv,index,wot)
  %7023 = extractvalue %dx.types.ResRet.i32 %7022, 3
  %7024 = bitcast i32 %7023 to float
  %7025 = fsub fast float %7011, %7024
  %7026 = fmul fast float %7025, %225
  %7027 = fadd fast float %7026, %7024
  %7028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7029 = extractvalue %dx.types.CBufRet.f32 %7028, 3
  %7030 = fmul fast float %7005, %5066
  %7031 = fmul fast float %7006, %5067
  %7032 = fmul fast float %7007, %5068
  %7033 = fcmp fast ogt float %95, %245
  %7034 = and i1 %7033, %4291
  %7035 = or i1 %4297, %7034
  %7036 = icmp eq i32 %4290, 2
  %7037 = fcmp fast ole float %95, %245
  %7038 = and i1 %7037, %7036
  %7039 = or i1 %7038, %7035
  br i1 %7034, label %7040, label %7297

; <label>:7040                                    ; preds = %7001
  %7041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7042 = extractvalue %dx.types.CBufRet.f32 %7041, 2
  %7043 = extractvalue %dx.types.CBufRet.f32 %7041, 3
  %7044 = fmul fast float %7042, %104
  %7045 = fmul fast float %7043, %105
  %7046 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7047 = call float @dx.op.unary.f32(i32 7, float %7045)  ; Saturate(value)
  %7048 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7046, float %7047, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7049 = extractvalue %dx.types.ResRet.f32 %7048, 0
  %7050 = extractvalue %dx.types.ResRet.f32 %7048, 1
  %7051 = extractvalue %dx.types.ResRet.f32 %7048, 2
  %7052 = extractvalue %dx.types.ResRet.f32 %7048, 3
  %7053 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7046, float %7047, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7054 = extractvalue %dx.types.ResRet.f32 %7053, 0
  %7055 = extractvalue %dx.types.ResRet.f32 %7053, 1
  %7056 = extractvalue %dx.types.ResRet.f32 %7053, 2
  %7057 = extractvalue %dx.types.ResRet.f32 %7053, 3
  %7058 = call float @dx.op.binary.f32(i32 35, float %7050, float %7051)  ; FMax(a,b)
  %7059 = call float @dx.op.binary.f32(i32 35, float %7049, float %7058)  ; FMax(a,b)
  %7060 = call float @dx.op.binary.f32(i32 35, float %7059, float %7052)  ; FMax(a,b)
  %7061 = call float @dx.op.binary.f32(i32 36, float %7055, float %7056)  ; FMin(a,b)
  %7062 = call float @dx.op.binary.f32(i32 36, float %7054, float %7061)  ; FMin(a,b)
  %7063 = call float @dx.op.binary.f32(i32 36, float %7062, float %7057)  ; FMin(a,b)
  %7064 = fmul fast float %7060, 2.550000e+02
  %7065 = fadd fast float %7064, 0x3F70101020000000
  %7066 = fptoui float %7065 to i32
  %7067 = fmul fast float %7063, 2.550000e+02
  %7068 = fadd fast float %7067, 0x3F70101020000000
  %7069 = fptoui float %7068 to i32
  %7070 = icmp ult i32 %7066, %7069
  br i1 %7070, label %7071, label %7239

; <label>:7071                                    ; preds = %7040
  %7072 = fcmp fast ogt float %94, 9.843750e-01
  %7073 = fadd fast float %95, -4.000000e+00
  %7074 = select i1 %7072, float -4.000000e+00, float %7073
  %7075 = call float @dx.op.binary.f32(i32 35, float %7074, float 0.000000e+00)  ; FMax(a,b)
  %7076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7077 = extractvalue %dx.types.CBufRet.f32 %7076, 0
  %7078 = fadd fast float %7077, %7075
  %7079 = extractvalue %dx.types.CBufRet.f32 %7076, 2
  %7080 = fmul fast float %7078, %7079
  %7081 = call float @dx.op.unary.f32(i32 23, float %7080)  ; Log(value)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7076, 3
  %7083 = fmul fast float %7082, %7081
  %7084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.f32 %7084, 2
  %7086 = fmul fast float %7083, %7085
  %7087 = call float @dx.op.unary.f32(i32 7, float %7086)  ; Saturate(value)
  %7088 = uitofp i32 %7066 to float
  %7089 = uitofp i32 %7069 to float
  %7090 = fadd fast float %7088, 5.000000e-01
  %7091 = fadd fast float %7089, 5.000000e-01
  %7092 = fmul fast float %7085, %7090
  %7093 = fmul fast float %7085, %7091
  %7094 = fadd fast float %7092, 0x3F0FFB4800000000
  %7095 = fadd fast float %7093, 0xBF0FFB4800000000
  %7096 = call float @dx.op.binary.f32(i32 35, float %7087, float %7094)  ; FMax(a,b)
  %7097 = call float @dx.op.binary.f32(i32 36, float %7096, float %7095)  ; FMin(a,b)
  %7098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7098, 1
  %7100 = extractvalue %dx.types.CBufRet.f32 %7098, 2
  %7101 = extractvalue %dx.types.CBufRet.f32 %7098, 0
  %7102 = fmul fast float %7099, %7097
  %7103 = fadd fast float %7101, %7102
  %7104 = fadd fast float %7101, %7100
  %7105 = fsub fast float %7099, %7100
  %7106 = fadd fast float %7105, %7101
  %7107 = call float @dx.op.binary.f32(i32 35, float %7103, float %7104)  ; FMax(a,b)
  %7108 = call float @dx.op.binary.f32(i32 36, float %7107, float %7106)  ; FMin(a,b)
  %7109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7046, float %7047, float %7108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7110 = extractvalue %dx.types.ResRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.ResRet.f32 %7109, 1
  %7112 = extractvalue %dx.types.ResRet.f32 %7109, 2
  %7113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7114 = extractvalue %dx.types.CBufRet.i32 %7113, 0
  %7115 = extractvalue %dx.types.CBufRet.i32 %7113, 1
  %7116 = uitofp i32 %7114 to float
  %7117 = uitofp i32 %7115 to float
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 0
  %7120 = extractvalue %dx.types.CBufRet.f32 %7118, 1
  %7121 = fmul fast float %7116, %7046
  %7122 = fmul fast float %7117, %7047
  %7123 = fadd fast float %7121, -5.000000e-01
  %7124 = fadd fast float %7122, -5.000000e-01
  %7125 = call float @dx.op.unary.f32(i32 22, float %7123)  ; Frc(value)
  %7126 = call float @dx.op.unary.f32(i32 22, float %7124)  ; Frc(value)
  %7127 = fmul fast float %7125, %7125
  %7128 = fmul fast float %7127, %7125
  %7129 = fsub fast float 3.000000e+00, %7125
  %7130 = fmul fast float %7127, %7129
  %7131 = fmul fast float %7125, 3.000000e+00
  %7132 = fmul fast float %7128, 3.000000e+00
  %7133 = fmul fast float %7127, 6.000000e+00
  %7134 = fsub fast float %7132, %7133
  %7135 = fadd fast float %7134, 4.000000e+00
  %7136 = fmul fast float %7135, 0x3FC5555560000000
  %7137 = fmul fast float %7128, -3.000000e+00
  %7138 = fadd fast float %7127, %7125
  %7139 = fmul fast float %7138, 3.000000e+00
  %7140 = fadd fast float %7137, 1.000000e+00
  %7141 = fadd fast float %7140, %7139
  %7142 = fmul fast float %7128, 0x3FC5555560000000
  %7143 = fmul fast float %7126, %7126
  %7144 = fmul fast float %7143, %7126
  %7145 = fsub fast float 3.000000e+00, %7126
  %7146 = fmul fast float %7143, %7145
  %7147 = fmul fast float %7126, 3.000000e+00
  %7148 = fmul fast float %7144, 3.000000e+00
  %7149 = fmul fast float %7143, 6.000000e+00
  %7150 = fsub fast float %7148, %7149
  %7151 = fadd fast float %7150, 4.000000e+00
  %7152 = fmul fast float %7151, 0x3FC5555560000000
  %7153 = fmul fast float %7144, -3.000000e+00
  %7154 = fadd fast float %7143, %7126
  %7155 = fmul fast float %7154, 3.000000e+00
  %7156 = fadd fast float %7153, 1.000000e+00
  %7157 = fadd fast float %7156, %7155
  %7158 = fmul fast float %7144, 0x3FC5555560000000
  %7159 = fadd fast float %7125, 1.000000e+00
  %7160 = fsub fast float 1.000000e+00, %7131
  %7161 = fadd fast float %7160, %7130
  %7162 = fadd fast float %7161, %7135
  %7163 = fmul fast float %7162, 0x3FC5555560000000
  %7164 = fdiv fast float %7136, %7163
  %7165 = fsub fast float %7159, %7164
  %7166 = fsub fast float 1.000000e+00, %7125
  %7167 = fadd fast float %7141, %7128
  %7168 = fmul fast float %7167, 0x3FC5555560000000
  %7169 = fdiv fast float %7142, %7168
  %7170 = fadd fast float %7166, %7169
  %7171 = fadd fast float %7126, 1.000000e+00
  %7172 = fsub fast float 1.000000e+00, %7147
  %7173 = fadd fast float %7172, %7146
  %7174 = fadd fast float %7173, %7151
  %7175 = fmul fast float %7174, 0x3FC5555560000000
  %7176 = fdiv fast float %7152, %7175
  %7177 = fsub fast float %7171, %7176
  %7178 = fsub fast float 1.000000e+00, %7126
  %7179 = fadd fast float %7157, %7144
  %7180 = fmul fast float %7179, 0x3FC5555560000000
  %7181 = fdiv fast float %7158, %7180
  %7182 = fadd fast float %7181, %7178
  %7183 = fmul fast float %7165, %7119
  %7184 = fsub fast float %7046, %7183
  %7185 = fmul fast float %7170, %7119
  %7186 = fadd fast float %7185, %7046
  %7187 = fmul fast float %7182, %7120
  %7188 = fadd fast float %7187, %7047
  %7189 = fmul fast float %7177, %7120
  %7190 = fsub fast float %7047, %7189
  %7191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7184, float %7190, float %7108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7192 = extractvalue %dx.types.ResRet.f32 %7191, 0
  %7193 = extractvalue %dx.types.ResRet.f32 %7191, 1
  %7194 = extractvalue %dx.types.ResRet.f32 %7191, 2
  %7195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7186, float %7190, float %7108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7196 = extractvalue %dx.types.ResRet.f32 %7195, 0
  %7197 = extractvalue %dx.types.ResRet.f32 %7195, 1
  %7198 = extractvalue %dx.types.ResRet.f32 %7195, 2
  %7199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7184, float %7188, float %7108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 0
  %7201 = extractvalue %dx.types.ResRet.f32 %7199, 1
  %7202 = extractvalue %dx.types.ResRet.f32 %7199, 2
  %7203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7186, float %7188, float %7108, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7204 = extractvalue %dx.types.ResRet.f32 %7203, 0
  %7205 = extractvalue %dx.types.ResRet.f32 %7203, 1
  %7206 = extractvalue %dx.types.ResRet.f32 %7203, 2
  %7207 = fsub fast float %7200, %7192
  %7208 = fsub fast float %7201, %7193
  %7209 = fsub fast float %7202, %7194
  %7210 = fmul fast float %7207, %7180
  %7211 = fmul fast float %7208, %7180
  %7212 = fmul fast float %7209, %7180
  %7213 = fadd fast float %7210, %7192
  %7214 = fadd fast float %7211, %7193
  %7215 = fadd fast float %7212, %7194
  %7216 = fsub fast float %7204, %7196
  %7217 = fsub fast float %7205, %7197
  %7218 = fsub fast float %7206, %7198
  %7219 = fmul fast float %7216, %7180
  %7220 = fmul fast float %7217, %7180
  %7221 = fmul fast float %7218, %7180
  %7222 = fsub fast float %7196, %7213
  %7223 = fadd fast float %7222, %7219
  %7224 = fsub fast float %7197, %7214
  %7225 = fadd fast float %7224, %7220
  %7226 = fsub fast float %7198, %7215
  %7227 = fadd fast float %7226, %7221
  %7228 = fmul fast float %7223, %7168
  %7229 = fmul fast float %7225, %7168
  %7230 = fmul fast float %7227, %7168
  %7231 = fadd fast float %7228, %7213
  %7232 = fadd fast float %7229, %7214
  %7233 = fadd fast float %7230, %7215
  %7234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7235 = extractvalue %dx.types.CBufRet.f32 %7234, 1
  %7236 = fmul fast float %7231, %7235
  %7237 = fmul fast float %7232, %7235
  %7238 = fmul fast float %7233, %7235
  br label %7239

; <label>:7239                                    ; preds = %7071, %7040
  %7240 = phi float [ %7110, %7071 ], [ 1.000000e+00, %7040 ]
  %7241 = phi float [ %7111, %7071 ], [ 1.000000e+00, %7040 ]
  %7242 = phi float [ %7112, %7071 ], [ 1.000000e+00, %7040 ]
  %7243 = phi float [ %7236, %7071 ], [ 0.000000e+00, %7040 ]
  %7244 = phi float [ %7237, %7071 ], [ 0.000000e+00, %7040 ]
  %7245 = phi float [ %7238, %7071 ], [ 0.000000e+00, %7040 ]
  %7246 = fmul fast float %7243, %7027
  %7247 = fmul fast float %7244, %7027
  %7248 = fmul fast float %7245, %7027
  %7249 = call float @dx.op.dot3.f32(i32 55, float %7240, float %7241, float %7242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7250 = call float @dx.op.dot3.f32(i32 55, float %7246, float %7247, float %7248, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7251 = select i1 %282, float %7249, float %7240
  %7252 = select i1 %282, float %7249, float %7241
  %7253 = select i1 %282, float 1.000000e+00, float %7242
  %7254 = select i1 %282, float %7250, float %7246
  %7255 = select i1 %282, float 0.000000e+00, float %7247
  %7256 = select i1 %282, float 0.000000e+00, float %7248
  %7257 = fmul fast float %7251, %7030
  %7258 = fmul fast float %7252, %7031
  %7259 = fmul fast float %7253, %7032
  %7260 = fadd fast float %7257, %7254
  %7261 = fadd fast float %7258, %7255
  %7262 = fadd fast float %7256, %7259
  %7263 = fmul fast float %7251, %7002
  %7264 = fmul fast float %7252, %7003
  %7265 = fmul fast float %7253, %7004
  %7266 = fmul fast float %140, %7042
  %7267 = fmul fast float %142, %7043
  %7268 = fsub fast float 1.000000e+00, %7266
  %7269 = fsub fast float 1.000000e+00, %7267
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.CBufRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.CBufRet.f32 %7270, 2
  %7274 = fmul fast float %7268, %7271
  %7275 = fmul fast float %7268, %7272
  %7276 = fmul fast float %7268, %7273
  %7277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.f32 %7277, 0
  %7279 = extractvalue %dx.types.CBufRet.f32 %7277, 1
  %7280 = extractvalue %dx.types.CBufRet.f32 %7277, 2
  %7281 = fmul fast float %7269, %7278
  %7282 = fmul fast float %7269, %7279
  %7283 = fmul fast float %7269, %7280
  %7284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7284, 0
  %7286 = extractvalue %dx.types.CBufRet.f32 %7284, 1
  %7287 = extractvalue %dx.types.CBufRet.f32 %7284, 2
  %7288 = fadd fast float %7281, %7285
  %7289 = fadd fast float %7288, %7274
  %7290 = fadd fast float %7282, %7286
  %7291 = fadd fast float %7290, %7275
  %7292 = fadd fast float %7283, %7287
  %7293 = fadd fast float %7292, %7276
  %7294 = fmul fast float %7289, %245
  %7295 = fmul fast float %7291, %245
  %7296 = fmul fast float %7293, %245
  br label %7297

; <label>:7297                                    ; preds = %7239, %7001
  %7298 = phi float [ %7294, %7239 ], [ %191, %7001 ]
  %7299 = phi float [ %7295, %7239 ], [ %192, %7001 ]
  %7300 = phi float [ %7296, %7239 ], [ %193, %7001 ]
  %7301 = phi float [ %245, %7239 ], [ %95, %7001 ]
  %7302 = phi float [ %7260, %7239 ], [ %7030, %7001 ]
  %7303 = phi float [ %7261, %7239 ], [ %7031, %7001 ]
  %7304 = phi float [ %7262, %7239 ], [ %7032, %7001 ]
  %7305 = phi float [ %7263, %7239 ], [ %7002, %7001 ]
  %7306 = phi float [ %7264, %7239 ], [ %7003, %7001 ]
  %7307 = phi float [ %7265, %7239 ], [ %7004, %7001 ]
  %7308 = phi float [ %7240, %7239 ], [ 1.000000e+00, %7001 ]
  br i1 %7039, label %8463, label %7309

; <label>:7309                                    ; preds = %7297
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 0
  %7312 = extractvalue %dx.types.CBufRet.f32 %7310, 1
  %7313 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7314 = extractvalue %dx.types.CBufRet.f32 %7310, 3
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 0
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 1
  %7318 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7319 = extractvalue %dx.types.CBufRet.f32 %7315, 3
  %7320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7321 = extractvalue %dx.types.CBufRet.f32 %7320, 0
  %7322 = extractvalue %dx.types.CBufRet.f32 %7320, 1
  %7323 = extractvalue %dx.types.CBufRet.f32 %7320, 2
  %7324 = extractvalue %dx.types.CBufRet.f32 %7320, 3
  %7325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7326 = extractvalue %dx.types.CBufRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.CBufRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.CBufRet.f32 %7325, 2
  %7329 = extractvalue %dx.types.CBufRet.f32 %7325, 3
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 3
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 3
  %7334 = extractvalue %dx.types.CBufRet.f32 %7332, 0
  %7335 = extractvalue %dx.types.CBufRet.f32 %7332, 1
  %7336 = extractvalue %dx.types.CBufRet.f32 %7332, 2
  %7337 = fcmp fast olt float %7336, -5.000000e-01
  %7338 = call float @dx.op.dot3.f32(i32 55, float %7298, float %7299, float %7300, float %7298, float %7299, float %7300)  ; Dot3(ax,ay,az,bx,by,bz)
  %7339 = call float @dx.op.unary.f32(i32 25, float %7338)  ; Rsqrt(value)
  %7340 = fmul fast float %7339, %7338
  %7341 = fmul fast float %7339, %7298
  %7342 = fmul fast float %7339, %7299
  %7343 = fmul fast float %7339, %7300
  %7344 = fadd fast float %7340, %7314
  %7345 = call float @dx.op.dot3.f32(i32 55, float %7341, float %7342, float %7343, float %7311, float %7312, float %7313)  ; Dot3(ax,ay,az,bx,by,bz)
  %7346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.i32 %7346, 1
  %7348 = and i32 %7347, 1
  %7349 = icmp ne i32 %7348, 0
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 2
  %7352 = fcmp fast ogt float %7351, 0.000000e+00
  %7353 = and i1 %7349, %7352
  br i1 %7353, label %7354, label %7760, !dx.controlflow.hints !123

; <label>:7354                                    ; preds = %7309
  %7355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7356 = extractvalue %dx.types.CBufRet.f32 %7355, 3
  %7357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7358 = extractvalue %dx.types.CBufRet.f32 %7357, 2
  %7359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7360 = extractvalue %dx.types.CBufRet.f32 %7359, 2
  %7361 = fsub fast float %7358, %7360
  %7362 = and i32 %7347, 2
  %7363 = extractvalue %dx.types.CBufRet.i32 %7346, 0
  %7364 = call i32 @dx.op.binary.i32(i32 40, i32 %7363, i32 3)  ; UMin(a,b)
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 0
  %7367 = extractvalue %dx.types.CBufRet.f32 %7365, 1
  %7368 = extractvalue %dx.types.CBufRet.f32 %7359, 0
  %7369 = extractvalue %dx.types.CBufRet.f32 %7359, 1
  %7370 = fsub fast float %7366, %7368
  %7371 = fsub fast float %7367, %7369
  %7372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7373 = extractvalue %dx.types.CBufRet.f32 %7372, 0
  %7374 = fcmp fast ogt float %7373, 0.000000e+00
  %7375 = fsub fast float -0.000000e+00, %7370
  %7376 = fsub fast float -0.000000e+00, %7371
  %7377 = call float @dx.op.dot2.f32(i32 54, float %7341, float %7342, float %7341, float %7342)  ; Dot2(ax,ay,bx,by)
  %7378 = call float @dx.op.dot2.f32(i32 54, float %7341, float %7342, float %7375, float %7376)  ; Dot2(ax,ay,bx,by)
  %7379 = fmul fast float %7378, 2.000000e+00
  %7380 = call float @dx.op.dot2.f32(i32 54, float %7375, float %7376, float %7375, float %7376)  ; Dot2(ax,ay,bx,by)
  %7381 = fmul fast float %7373, %7373
  %7382 = fsub fast float %7380, %7381
  %7383 = fmul fast float %7379, %7379
  %7384 = fmul fast float %7377, 4.000000e+00
  %7385 = fmul fast float %7384, %7382
  %7386 = fsub fast float %7383, %7385
  %7387 = fcmp fast ogt float %7386, 0.000000e+00
  br i1 %7387, label %7388, label %7403

; <label>:7388                                    ; preds = %7354
  %7389 = fcmp fast ogt float %7379, 0.000000e+00
  %7390 = call float @dx.op.unary.f32(i32 24, float %7386)  ; Sqrt(value)
  %7391 = fsub fast float -0.000000e+00, %7390
  %7392 = select i1 %7389, float %7390, float %7391
  %7393 = fadd fast float %7392, %7379
  %7394 = fmul float %7393, -5.000000e-01
  %7395 = fdiv fast float %7394, %7377
  %7396 = call float @dx.op.binary.f32(i32 35, float %7395, float 0.000000e+00)  ; FMax(a,b)
  %7397 = call float @dx.op.binary.f32(i32 36, float %7340, float %7396)  ; FMin(a,b)
  %7398 = fdiv fast float %7382, %7394
  %7399 = call float @dx.op.binary.f32(i32 35, float %7398, float 0.000000e+00)  ; FMax(a,b)
  %7400 = call float @dx.op.binary.f32(i32 36, float %7340, float %7399)  ; FMin(a,b)
  %7401 = call float @dx.op.binary.f32(i32 36, float %7397, float %7400)  ; FMin(a,b)
  %7402 = call float @dx.op.binary.f32(i32 35, float %7397, float %7400)  ; FMax(a,b)
  br label %7403

; <label>:7403                                    ; preds = %7388, %7354
  %7404 = phi float [ %7402, %7388 ], [ -1.000000e+00, %7354 ]
  %7405 = phi float [ %7401, %7388 ], [ -1.000000e+00, %7354 ]
  %7406 = phi i1 [ true, %7388 ], [ false, %7354 ]
  %7407 = and i1 %7374, %7406
  br i1 %7407, label %7408, label %7410

; <label>:7408                                    ; preds = %7403
  %7409 = fcmp fast oeq float %7405, %7404
  br i1 %7409, label %7713, label %7411

; <label>:7410                                    ; preds = %7403
  br i1 %7374, label %7713, label %7411

; <label>:7411                                    ; preds = %7410, %7408
  %7412 = phi float [ %7340, %7410 ], [ %7404, %7408 ]
  %7413 = phi float [ 0.000000e+00, %7410 ], [ %7405, %7408 ]
  %7414 = icmp ne i32 %7362, 0
  %7415 = fmul fast float %7412, %7343
  %7416 = fadd fast float %7415, %7356
  %7417 = fmul fast float %7416, %7412
  %7418 = select i1 %7414, float 0.000000e+00, float %7417
  %7419 = fcmp fast oeq float %7343, 0.000000e+00
  %7420 = fdiv fast float %7361, %7343
  %7421 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7420)  ; FMax(a,b)
  %7422 = select i1 %7419, float %7412, float %7421
  %7423 = call float @dx.op.binary.f32(i32 36, float %7412, float %7422)  ; FMin(a,b)
  %7424 = fcmp fast ogt float %7343, 0.000000e+00
  %7425 = fcmp fast olt float %7361, 0.000000e+00
  br i1 %7424, label %7426, label %7483

; <label>:7426                                    ; preds = %7411
  %7427 = icmp eq i32 %7362, 0
  br i1 %7425, label %7428, label %7472

; <label>:7428                                    ; preds = %7426
  %7429 = select i1 %7427, float %7412, float 0.000000e+00
  %7430 = fsub fast float -0.000000e+00, %7429
  %7431 = call float @dx.op.unary.f32(i32 6, float %7430)  ; FAbs(value)
  %7432 = fmul fast float %7429, %7343
  %7433 = fadd fast float %7432, %7356
  %7434 = fmul fast float %7431, %7433
  %7435 = fsub fast float %7418, %7434
  %7436 = fsub fast float %7412, %7431
  %7437 = select i1 %7427, float %7436, float 0.000000e+00
  %7438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.CBufRet.f32 %7438, 1
  %7441 = extractvalue %dx.types.CBufRet.f32 %7438, 2
  %7442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7443 = extractvalue %dx.types.CBufRet.f32 %7442, 0
  %7444 = extractvalue %dx.types.CBufRet.f32 %7442, 1
  %7445 = extractvalue %dx.types.CBufRet.f32 %7442, 2
  %7446 = extractvalue %dx.types.CBufRet.f32 %7442, 3
  %7447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7448 = extractvalue %dx.types.CBufRet.f32 %7447, 3
  %7449 = call float @dx.op.binary.f32(i32 36, float %7435, float %7448)  ; FMin(a,b)
  %7450 = fmul fast float %7446, %7437
  %7451 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7452 = fsub fast float %7443, %7439
  %7453 = fsub fast float %7444, %7440
  %7454 = fsub fast float %7445, %7441
  %7455 = fmul fast float %7451, %7452
  %7456 = fmul fast float %7451, %7453
  %7457 = fmul fast float %7451, %7454
  %7458 = fadd fast float %7455, %7439
  %7459 = fadd fast float %7456, %7440
  %7460 = fadd fast float %7457, %7441
  %7461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.f32 %7461, 0
  %7463 = extractvalue %dx.types.CBufRet.f32 %7461, 1
  %7464 = fadd fast float %7463, %7462
  %7465 = call float @dx.op.unary.f32(i32 7, float %7464)  ; Saturate(value)
  %7466 = extractvalue %dx.types.CBufRet.f32 %7461, 2
  %7467 = extractvalue %dx.types.CBufRet.f32 %7461, 3
  %7468 = fadd fast float %7467, %7466
  %7469 = call float @dx.op.unary.f32(i32 7, float %7468)  ; Saturate(value)
  %7470 = fmul fast float %7465, %7449
  %7471 = fmul fast float %7470, %7469
  br label %7713

; <label>:7472                                    ; preds = %7426
  br i1 %7427, label %7473, label %7494

; <label>:7473                                    ; preds = %7472
  %7474 = call float @dx.op.binary.f32(i32 36, float %7423, float %7413)  ; FMin(a,b)
  %7475 = fsub fast float %7423, %7474
  %7476 = fsub fast float %7475, %7412
  %7477 = call float @dx.op.unary.f32(i32 6, float %7476)  ; FAbs(value)
  %7478 = fadd fast float %7475, %7412
  %7479 = fmul fast float %7478, %7343
  %7480 = fadd fast float %7479, %7356
  %7481 = fmul fast float %7480, %7477
  %7482 = fsub fast float %7418, %7481
  br label %7494

; <label>:7483                                    ; preds = %7411
  br i1 %7425, label %7484, label %7494

; <label>:7484                                    ; preds = %7483
  %7485 = call float @dx.op.binary.f32(i32 35, float %7413, float %7423)  ; FMax(a,b)
  %7486 = icmp eq i32 %7362, 0
  %7487 = select i1 %7486, float %7423, float 0.000000e+00
  %7488 = fsub fast float -0.000000e+00, %7487
  %7489 = call float @dx.op.unary.f32(i32 6, float %7488)  ; FAbs(value)
  %7490 = fmul fast float %7487, %7343
  %7491 = fadd fast float %7490, %7356
  %7492 = fmul fast float %7489, %7491
  %7493 = fsub fast float %7418, %7492
  br label %7494

; <label>:7494                                    ; preds = %7484, %7483, %7473, %7472
  %7495 = phi float [ %7413, %7472 ], [ %7413, %7473 ], [ %7485, %7484 ], [ %7413, %7483 ]
  %7496 = phi float [ 0.000000e+00, %7472 ], [ %7477, %7473 ], [ %7489, %7484 ], [ 0.000000e+00, %7483 ]
  %7497 = phi float [ %7418, %7472 ], [ %7482, %7473 ], [ %7493, %7484 ], [ %7418, %7483 ]
  %7498 = phi float [ %7423, %7472 ], [ %7423, %7473 ], [ %7412, %7484 ], [ %7412, %7483 ]
  %7499 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %7499, align 4, !tbaa !124, !noalias !126
  %7500 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %7500, align 4, !tbaa !124, !noalias !126
  %7501 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %7501, align 4, !tbaa !124, !noalias !126
  %7502 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7502, align 4, !tbaa !124, !noalias !126
  %7503 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7503, align 4, !tbaa !124, !noalias !126
  %7504 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7504, align 4, !tbaa !124, !noalias !126
  %7505 = icmp sgt i32 %7364, 0
  br i1 %7505, label %7506, label %7567

; <label>:7506                                    ; preds = %7494
  br label %7507

; <label>:7507                                    ; preds = %7556, %7506
  %7508 = phi i32 [ %7557, %7556 ], [ 0, %7506 ]
  %7509 = phi i32 [ %7558, %7556 ], [ 0, %7506 ]
  %7510 = add nuw i32 %7509, 171
  %7511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7510)  ; CBufferLoadLegacy(handle,regIndex)
  %7512 = extractvalue %dx.types.CBufRet.f32 %7511, 0
  %7513 = extractvalue %dx.types.CBufRet.f32 %7511, 1
  %7514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7515 = extractvalue %dx.types.CBufRet.f32 %7514, 0
  %7516 = extractvalue %dx.types.CBufRet.f32 %7514, 1
  %7517 = fsub fast float %7512, %7515
  %7518 = fsub fast float %7513, %7516
  %7519 = extractvalue %dx.types.CBufRet.f32 %7511, 2
  %7520 = fsub fast float -0.000000e+00, %7517
  %7521 = fsub fast float -0.000000e+00, %7518
  %7522 = call float @dx.op.dot2.f32(i32 54, float %7341, float %7342, float %7520, float %7521)  ; Dot2(ax,ay,bx,by)
  %7523 = fmul fast float %7522, 2.000000e+00
  %7524 = call float @dx.op.dot2.f32(i32 54, float %7520, float %7521, float %7520, float %7521)  ; Dot2(ax,ay,bx,by)
  %7525 = fmul fast float %7519, %7519
  %7526 = fsub fast float %7524, %7525
  %7527 = fmul fast float %7523, %7523
  %7528 = fmul fast float %7384, %7526
  %7529 = fsub fast float %7527, %7528
  %7530 = fcmp fast ogt float %7529, 0.000000e+00
  br i1 %7530, label %7531, label %7546

; <label>:7531                                    ; preds = %7507
  %7532 = fcmp fast ogt float %7523, 0.000000e+00
  %7533 = call float @dx.op.unary.f32(i32 24, float %7529)  ; Sqrt(value)
  %7534 = fsub fast float -0.000000e+00, %7533
  %7535 = select i1 %7532, float %7533, float %7534
  %7536 = fadd fast float %7535, %7523
  %7537 = fmul float %7536, -5.000000e-01
  %7538 = fdiv fast float %7537, %7377
  %7539 = call float @dx.op.binary.f32(i32 35, float %7538, float 0.000000e+00)  ; FMax(a,b)
  %7540 = call float @dx.op.binary.f32(i32 36, float %7412, float %7539)  ; FMin(a,b)
  %7541 = fdiv fast float %7526, %7537
  %7542 = call float @dx.op.binary.f32(i32 35, float %7541, float 0.000000e+00)  ; FMax(a,b)
  %7543 = call float @dx.op.binary.f32(i32 36, float %7412, float %7542)  ; FMin(a,b)
  %7544 = call float @dx.op.binary.f32(i32 36, float %7540, float %7543)  ; FMin(a,b)
  %7545 = call float @dx.op.binary.f32(i32 35, float %7540, float %7543)  ; FMax(a,b)
  br label %7546

; <label>:7546                                    ; preds = %7531, %7507
  %7547 = phi float [ %7545, %7531 ], [ -1.000000e+00, %7507 ]
  %7548 = phi float [ %7544, %7531 ], [ -1.000000e+00, %7507 ]
  %7549 = phi i1 [ true, %7531 ], [ false, %7507 ]
  br i1 %7549, label %7550, label %7556

; <label>:7550                                    ; preds = %7546
  %7551 = call float @dx.op.binary.f32(i32 35, float %7495, float %7548)  ; FMax(a,b)
  %7552 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7509
  store float %7551, float* %7552, align 4, !tbaa !124, !noalias !126
  %7553 = call float @dx.op.binary.f32(i32 35, float %7495, float %7547)  ; FMax(a,b)
  %7554 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7509
  store float %7553, float* %7554, align 4, !tbaa !124, !noalias !126
  %7555 = add nsw i32 %7508, 1
  br label %7556

; <label>:7556                                    ; preds = %7550, %7546
  %7557 = phi i32 [ %7555, %7550 ], [ %7508, %7546 ]
  %7558 = add nuw nsw i32 %7509, 1
  %7559 = icmp eq i32 %7558, %7364
  br i1 %7559, label %7560, label %7507

; <label>:7560                                    ; preds = %7556
  %7561 = load float, float* %7501, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7562 = load float, float* %7500, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %7563 = load float, float* %7499, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %7564 = load float, float* %7504, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7565 = load float, float* %7503, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %7566 = load float, float* %7502, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %7567

; <label>:7567                                    ; preds = %7560, %7494
  %7568 = phi float [ -1.000000e+00, %7494 ], [ %7566, %7560 ]
  %7569 = phi float [ -1.000000e+00, %7494 ], [ %7565, %7560 ]
  %7570 = phi float [ -1.000000e+00, %7494 ], [ %7564, %7560 ]
  %7571 = phi float [ -1.000000e+00, %7494 ], [ %7563, %7560 ]
  %7572 = phi float [ -1.000000e+00, %7494 ], [ %7562, %7560 ]
  %7573 = phi float [ -1.000000e+00, %7494 ], [ %7561, %7560 ]
  %7574 = phi i32 [ 0, %7494 ], [ %7557, %7560 ]
  %7575 = call float @dx.op.binary.f32(i32 36, float %7572, float %7573)  ; FMin(a,b)
  %7576 = call float @dx.op.binary.f32(i32 36, float %7571, float %7575)  ; FMin(a,b)
  %7577 = call float @dx.op.binary.f32(i32 35, float %7571, float %7572)  ; FMax(a,b)
  %7578 = call float @dx.op.binary.f32(i32 36, float %7577, float %7573)  ; FMin(a,b)
  %7579 = call float @dx.op.binary.f32(i32 36, float %7571, float %7572)  ; FMin(a,b)
  %7580 = call float @dx.op.binary.f32(i32 35, float %7579, float %7578)  ; FMax(a,b)
  %7581 = call float @dx.op.binary.f32(i32 35, float %7572, float %7573)  ; FMax(a,b)
  %7582 = call float @dx.op.binary.f32(i32 35, float %7571, float %7581)  ; FMax(a,b)
  store float %7576, float* %7499, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %7580, float* %7500, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %7582, float* %7501, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7583 = call float @dx.op.binary.f32(i32 36, float %7569, float %7570)  ; FMin(a,b)
  %7584 = call float @dx.op.binary.f32(i32 36, float %7568, float %7583)  ; FMin(a,b)
  %7585 = call float @dx.op.binary.f32(i32 35, float %7568, float %7569)  ; FMax(a,b)
  %7586 = call float @dx.op.binary.f32(i32 36, float %7585, float %7570)  ; FMin(a,b)
  %7587 = call float @dx.op.binary.f32(i32 36, float %7568, float %7569)  ; FMin(a,b)
  %7588 = call float @dx.op.binary.f32(i32 35, float %7587, float %7586)  ; FMax(a,b)
  %7589 = call float @dx.op.binary.f32(i32 35, float %7569, float %7570)  ; FMax(a,b)
  %7590 = call float @dx.op.binary.f32(i32 35, float %7568, float %7589)  ; FMax(a,b)
  store float %7584, float* %7502, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %7588, float* %7503, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %7590, float* %7504, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7591 = sub nsw i32 3, %7574
  %7592 = icmp sgt i32 %7591, 2
  br i1 %7592, label %7593, label %7631

; <label>:7593                                    ; preds = %7567
  %7594 = icmp eq i32 %7362, 0
  %7595 = fsub fast float %7412, %7496
  %7596 = select i1 %7594, float %7595, float %7496
  %7597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7598 = extractvalue %dx.types.CBufRet.f32 %7597, 0
  %7599 = extractvalue %dx.types.CBufRet.f32 %7597, 1
  %7600 = extractvalue %dx.types.CBufRet.f32 %7597, 2
  %7601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7602 = extractvalue %dx.types.CBufRet.f32 %7601, 0
  %7603 = extractvalue %dx.types.CBufRet.f32 %7601, 1
  %7604 = extractvalue %dx.types.CBufRet.f32 %7601, 2
  %7605 = extractvalue %dx.types.CBufRet.f32 %7601, 3
  %7606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7607 = extractvalue %dx.types.CBufRet.f32 %7606, 3
  %7608 = call float @dx.op.binary.f32(i32 36, float %7497, float %7607)  ; FMin(a,b)
  %7609 = fmul fast float %7605, %7596
  %7610 = call float @dx.op.unary.f32(i32 7, float %7609)  ; Saturate(value)
  %7611 = fsub fast float %7602, %7598
  %7612 = fsub fast float %7603, %7599
  %7613 = fsub fast float %7604, %7600
  %7614 = fmul fast float %7610, %7611
  %7615 = fmul fast float %7610, %7612
  %7616 = fmul fast float %7610, %7613
  %7617 = fadd fast float %7614, %7598
  %7618 = fadd fast float %7615, %7599
  %7619 = fadd fast float %7616, %7600
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.CBufRet.f32 %7620, 1
  %7623 = fadd fast float %7622, %7621
  %7624 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7625 = extractvalue %dx.types.CBufRet.f32 %7620, 2
  %7626 = extractvalue %dx.types.CBufRet.f32 %7620, 3
  %7627 = fadd fast float %7626, %7625
  %7628 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7629 = fmul fast float %7624, %7608
  %7630 = fmul fast float %7629, %7628
  br label %7713

; <label>:7631                                    ; preds = %7567
  %7632 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7591
  %7633 = load float, float* %7632, align 4, !tbaa !124, !noalias !126
  %7634 = fcmp fast olt float %7633, %7498
  %7635 = icmp sgt i32 %7574, 0
  %7636 = and i1 %7635, %7634
  br i1 %7636, label %7637, label %7674

; <label>:7637                                    ; preds = %7631
  br label %7638

; <label>:7638                                    ; preds = %7667, %7637
  %7639 = phi float [ %7668, %7667 ], [ %7496, %7637 ]
  %7640 = phi float [ %7669, %7667 ], [ %7497, %7637 ]
  %7641 = phi float [ %7649, %7667 ], [ %7633, %7637 ]
  %7642 = phi i32 [ %7646, %7667 ], [ %7591, %7637 ]
  %7643 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7642
  %7644 = load float, float* %7643, align 4, !tbaa !124, !noalias !126
  %7645 = icmp slt i32 %7642, 2
  %7646 = add nsw i32 %7642, 1
  %7647 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7646
  %7648 = load float, float* %7647, align 4, !tbaa !124, !noalias !126
  %7649 = select i1 %7645, float %7648, float %7412
  %7650 = call float @dx.op.binary.f32(i32 36, float %7649, float %7644)  ; FMin(a,b)
  %7651 = call float @dx.op.binary.f32(i32 36, float %7498, float %7650)  ; FMin(a,b)
  %7652 = icmp eq i32 %7362, 0
  %7653 = fadd fast float %7651, %7641
  %7654 = fmul fast float %7653, %7343
  %7655 = fadd fast float %7654, %7356
  br i1 %7652, label %7661, label %7656

; <label>:7656                                    ; preds = %7638
  %7657 = fsub fast float %7651, %7641
  %7658 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7657)  ; FMax(a,b)
  %7659 = fmul fast float %7658, %7655
  %7660 = fadd fast float %7659, %7640
  br label %7667

; <label>:7661                                    ; preds = %7638
  %7662 = fsub fast float %7641, %7651
  %7663 = call float @dx.op.unary.f32(i32 6, float %7662)  ; FAbs(value)
  %7664 = fadd fast float %7663, %7639
  %7665 = fmul fast float %7663, %7655
  %7666 = fsub fast float %7640, %7665
  br label %7667

; <label>:7667                                    ; preds = %7661, %7656
  %7668 = phi float [ %7658, %7656 ], [ %7664, %7661 ]
  %7669 = phi float [ %7660, %7656 ], [ %7666, %7661 ]
  %7670 = fcmp fast olt float %7649, %7498
  %7671 = icmp slt i32 %7646, 3
  %7672 = and i1 %7671, %7670
  br i1 %7672, label %7638, label %7673

; <label>:7673                                    ; preds = %7667
  br label %7674

; <label>:7674                                    ; preds = %7673, %7631
  %7675 = phi float [ %7496, %7631 ], [ %7668, %7673 ]
  %7676 = phi float [ %7497, %7631 ], [ %7669, %7673 ]
  %7677 = fsub fast float %7412, %7675
  %7678 = select i1 %7414, float %7675, float %7677
  %7679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7680 = extractvalue %dx.types.CBufRet.f32 %7679, 0
  %7681 = extractvalue %dx.types.CBufRet.f32 %7679, 1
  %7682 = extractvalue %dx.types.CBufRet.f32 %7679, 2
  %7683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7684 = extractvalue %dx.types.CBufRet.f32 %7683, 0
  %7685 = extractvalue %dx.types.CBufRet.f32 %7683, 1
  %7686 = extractvalue %dx.types.CBufRet.f32 %7683, 2
  %7687 = extractvalue %dx.types.CBufRet.f32 %7683, 3
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 3
  %7690 = call float @dx.op.binary.f32(i32 36, float %7676, float %7689)  ; FMin(a,b)
  %7691 = fmul fast float %7687, %7678
  %7692 = call float @dx.op.unary.f32(i32 7, float %7691)  ; Saturate(value)
  %7693 = fsub fast float %7684, %7680
  %7694 = fsub fast float %7685, %7681
  %7695 = fsub fast float %7686, %7682
  %7696 = fmul fast float %7692, %7693
  %7697 = fmul fast float %7692, %7694
  %7698 = fmul fast float %7692, %7695
  %7699 = fadd fast float %7696, %7680
  %7700 = fadd fast float %7697, %7681
  %7701 = fadd fast float %7698, %7682
  %7702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7703 = extractvalue %dx.types.CBufRet.f32 %7702, 0
  %7704 = extractvalue %dx.types.CBufRet.f32 %7702, 1
  %7705 = fadd fast float %7704, %7703
  %7706 = call float @dx.op.unary.f32(i32 7, float %7705)  ; Saturate(value)
  %7707 = extractvalue %dx.types.CBufRet.f32 %7702, 2
  %7708 = extractvalue %dx.types.CBufRet.f32 %7702, 3
  %7709 = fadd fast float %7708, %7707
  %7710 = call float @dx.op.unary.f32(i32 7, float %7709)  ; Saturate(value)
  %7711 = fmul fast float %7706, %7690
  %7712 = fmul fast float %7711, %7710
  br label %7713

; <label>:7713                                    ; preds = %7674, %7593, %7428, %7410, %7408
  %7714 = phi float [ %7437, %7428 ], [ %7596, %7593 ], [ %7678, %7674 ], [ 0.000000e+00, %7408 ], [ 0.000000e+00, %7410 ]
  %7715 = phi float [ %7471, %7428 ], [ %7630, %7593 ], [ %7712, %7674 ], [ 0.000000e+00, %7408 ], [ 0.000000e+00, %7410 ]
  %7716 = phi float [ %7458, %7428 ], [ %7617, %7593 ], [ %7699, %7674 ], [ 0.000000e+00, %7408 ], [ 0.000000e+00, %7410 ]
  %7717 = phi float [ %7459, %7428 ], [ %7618, %7593 ], [ %7700, %7674 ], [ 0.000000e+00, %7408 ], [ 0.000000e+00, %7410 ]
  %7718 = phi float [ %7460, %7428 ], [ %7619, %7593 ], [ %7701, %7674 ], [ 0.000000e+00, %7408 ], [ 0.000000e+00, %7410 ]
  %7719 = fmul fast float %7351, %7715
  %7720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7721 = extractvalue %dx.types.CBufRet.f32 %7720, 2
  %7722 = fsub fast float %7358, %7721
  %7723 = fcmp fast olt float %7719, -2.000000e+01
  %7724 = call float @dx.op.unary.f32(i32 21, float %7719)  ; Exp(value)
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 2
  %7727 = extractvalue %dx.types.CBufRet.f32 %7725, 3
  %7728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7729 = extractvalue %dx.types.CBufRet.f32 %7728, 2
  %7730 = fmul fast float %7727, %7722
  %7731 = call float @dx.op.unary.f32(i32 7, float %7730)  ; Saturate(value)
  %7732 = fsub fast float 1.000000e+00, %7731
  %7733 = fmul fast float %7343, 5.000000e-01
  %7734 = fadd fast float %7733, 5.000000e-01
  %7735 = call float @dx.op.unary.f32(i32 7, float %7734)  ; Saturate(value)
  %7736 = fsub fast float 1.000000e+00, %7735
  %7737 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7732)  ; FMax(a,b)
  %7738 = fdiv fast float %7736, %7737
  %7739 = fsub fast float %7722, %7300
  %7740 = call float @dx.op.unary.f32(i32 6, float %7739)  ; FAbs(value)
  %7741 = fmul fast float %7740, %7726
  %7742 = call float @dx.op.unary.f32(i32 7, float %7738)  ; Saturate(value)
  %7743 = fsub fast float 1.000000e+00, %7741
  %7744 = fmul fast float %7743, %7742
  %7745 = fadd fast float %7744, %7741
  %7746 = fmul fast float %7729, %7722
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = fsub fast float 1.000000e+00, %7745
  %7749 = fmul fast float %7748, %7747
  %7750 = fadd fast float %7749, %7745
  %7751 = call float @dx.op.unary.f32(i32 7, float %7750)  ; Saturate(value)
  %7752 = fadd fast float %7724, -1.000000e+00
  %7753 = select i1 %7723, float -1.000000e+00, float %7752
  %7754 = fmul fast float %7751, %7753
  %7755 = fadd fast float %7754, 1.000000e+00
  %7756 = fsub fast float -0.000000e+00, %7754
  %7757 = fmul fast float %7716, %7756
  %7758 = fmul fast float %7717, %7756
  %7759 = fmul fast float %7718, %7756
  br label %7760

; <label>:7760                                    ; preds = %7713, %7309
  %7761 = phi float [ %7714, %7713 ], [ 0.000000e+00, %7309 ]
  %7762 = phi float [ %7755, %7713 ], [ 1.000000e+00, %7309 ]
  %7763 = phi float [ %7757, %7713 ], [ 0.000000e+00, %7309 ]
  %7764 = phi float [ %7758, %7713 ], [ 0.000000e+00, %7309 ]
  %7765 = phi float [ %7759, %7713 ], [ 0.000000e+00, %7309 ]
  %7766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7767 = extractvalue %dx.types.CBufRet.f32 %7766, 1
  %7768 = fsub fast float 1.000000e+00, %7762
  %7769 = fmul fast float %7768, %7344
  %7770 = fmul fast float %7769, %7767
  %7771 = fsub fast float %7344, %7770
  br i1 %7337, label %7772, label %7801, !dx.controlflow.hints !162

; <label>:7772                                    ; preds = %7760
  %7773 = fmul fast float %7345, %7334
  %7774 = fadd fast float %7773, %7335
  %7775 = call float @dx.op.unary.f32(i32 7, float %7774)  ; Saturate(value)
  %7776 = fmul fast float %7316, %7771
  %7777 = fsub fast float -0.000000e+00, %7776
  %7778 = fmul fast float %7317, %7771
  %7779 = fsub fast float -0.000000e+00, %7778
  %7780 = call float @dx.op.unary.f32(i32 21, float %7777)  ; Exp(value)
  %7781 = call float @dx.op.unary.f32(i32 21, float %7779)  ; Exp(value)
  %7782 = call float @dx.op.binary.f32(i32 35, float %7324, float %7780)  ; FMax(a,b)
  %7783 = call float @dx.op.binary.f32(i32 35, float %7324, float %7781)  ; FMax(a,b)
  %7784 = fsub fast float %7783, %7782
  %7785 = fmul fast float %7784, %7775
  %7786 = fadd fast float %7785, %7782
  %7787 = call float @dx.op.unary.f32(i32 7, float %7786)  ; Saturate(value)
  %7788 = fsub fast float %7321, %7326
  %7789 = fsub fast float %7322, %7327
  %7790 = fsub fast float %7323, %7328
  %7791 = fmul fast float %7775, %7788
  %7792 = fmul fast float %7775, %7789
  %7793 = fmul fast float %7775, %7790
  %7794 = fadd fast float %7791, %7326
  %7795 = fadd fast float %7792, %7327
  %7796 = fadd fast float %7793, %7328
  %7797 = fsub fast float 1.000000e+00, %7787
  %7798 = fmul fast float %7797, %7794
  %7799 = fmul fast float %7797, %7795
  %7800 = fmul fast float %7797, %7796
  br label %7860

; <label>:7801                                    ; preds = %7760
  %7802 = fmul fast float %7771, %7333
  %7803 = call float @dx.op.unary.f32(i32 7, float %7802)  ; Saturate(value)
  %7804 = fsub fast float 2.000000e+00, %7803
  %7805 = fmul fast float %7803, 9.921875e-01
  %7806 = fmul fast float %7805, %7804
  %7807 = fadd fast float %7806, 3.906250e-03
  %7808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7807, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7809 = extractvalue %dx.types.ResRet.f32 %7808, 0
  %7810 = fsub fast float %7803, %7809
  %7811 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7810)  ; FMax(a,b)
  %7812 = fmul fast float %7319, %7300
  %7813 = call float @dx.op.unary.f32(i32 6, float %7812)  ; FAbs(value)
  %7814 = fcmp fast ogt float %7813, 0x3EB0C6F7A0000000
  br i1 %7814, label %7815, label %7821, !dx.controlflow.hints !163

; <label>:7815                                    ; preds = %7801
  %7816 = fmul fast float %7812, 0xBFF7154760000000
  %7817 = call float @dx.op.unary.f32(i32 21, float %7816)  ; Exp(value)
  %7818 = fsub fast float 1.000000e+00, %7817
  %7819 = fdiv fast float %7818, %7812
  %7820 = fmul fast float %7819, %7329
  br label %7821

; <label>:7821                                    ; preds = %7815, %7801
  %7822 = phi float [ %7820, %7815 ], [ %7329, %7801 ]
  %7823 = fadd fast float %7822, %7331
  %7824 = fmul fast float %7823, %7811
  %7825 = fmul fast float %7316, %7824
  %7826 = fsub fast float -0.000000e+00, %7825
  %7827 = fmul fast float %7317, %7824
  %7828 = fsub fast float -0.000000e+00, %7827
  %7829 = fmul fast float %7318, %7824
  %7830 = fsub fast float -0.000000e+00, %7829
  %7831 = call float @dx.op.unary.f32(i32 21, float %7826)  ; Exp(value)
  %7832 = call float @dx.op.unary.f32(i32 21, float %7828)  ; Exp(value)
  %7833 = call float @dx.op.unary.f32(i32 21, float %7830)  ; Exp(value)
  %7834 = fmul fast float %7345, %7345
  %7835 = fadd fast float %7834, 1.000000e+00
  %7836 = fmul fast float %7835, 0x3FAE8EC8A0000000
  %7837 = fmul fast float %7836, %7326
  %7838 = fmul fast float %7836, %7327
  %7839 = fmul fast float %7836, %7328
  %7840 = fmul fast float %7345, %7324
  %7841 = fsub fast float 1.000000e+00, %7840
  %7842 = fmul fast float %7324, %7324
  %7843 = fsub fast float 1.000000e+00, %7842
  %7844 = fmul fast float %7843, 0x3FB45F3060000000
  %7845 = fmul fast float %7841, %7841
  %7846 = fdiv fast float 1.000000e+00, %7845
  %7847 = fmul fast float %7844, %7846
  %7848 = fmul fast float %7847, %7321
  %7849 = fmul fast float %7847, %7322
  %7850 = fmul fast float %7847, %7323
  %7851 = fadd fast float %7848, %7837
  %7852 = fadd fast float %7849, %7838
  %7853 = fadd fast float %7850, %7839
  %7854 = fsub fast float 1.000000e+00, %7831
  %7855 = fsub fast float 1.000000e+00, %7832
  %7856 = fsub fast float 1.000000e+00, %7833
  %7857 = fmul fast float %7851, %7854
  %7858 = fmul fast float %7852, %7855
  %7859 = fmul fast float %7853, %7856
  br label %7860

; <label>:7860                                    ; preds = %7821, %7772
  %7861 = phi float [ %7798, %7772 ], [ %7857, %7821 ]
  %7862 = phi float [ %7799, %7772 ], [ %7858, %7821 ]
  %7863 = phi float [ %7800, %7772 ], [ %7859, %7821 ]
  %7864 = phi float [ %7787, %7772 ], [ %7831, %7821 ]
  %7865 = phi float [ %7787, %7772 ], [ %7832, %7821 ]
  %7866 = phi float [ %7787, %7772 ], [ %7833, %7821 ]
  br i1 %7353, label %7867, label %8065, !dx.controlflow.hints !164

; <label>:7867                                    ; preds = %7860
  %7868 = extractvalue %dx.types.CBufRet.f32 %7766, 0
  %7869 = fmul fast float %7868, %7768
  %7870 = fsub fast float %7763, %7861
  %7871 = fsub fast float %7764, %7862
  %7872 = fsub fast float %7765, %7863
  %7873 = fmul fast float %7869, %7870
  %7874 = fmul fast float %7869, %7871
  %7875 = fmul fast float %7869, %7872
  %7876 = fadd fast float %7873, %7861
  %7877 = fadd fast float %7874, %7862
  %7878 = fadd fast float %7875, %7863
  %7879 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7864)  ; FMax(a,b)
  %7880 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7865)  ; FMax(a,b)
  %7881 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7866)  ; FMax(a,b)
  %7882 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7762)  ; FMax(a,b)
  %7883 = call float @dx.op.binary.f32(i32 35, float %7761, float %7771)  ; FMax(a,b)
  %7884 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7883)  ; FMax(a,b)
  %7885 = fdiv fast float %7761, %7884
  %7886 = call float @dx.op.unary.f32(i32 7, float %7885)  ; Saturate(value)
  %7887 = fdiv fast float %7771, %7884
  %7888 = call float @dx.op.unary.f32(i32 7, float %7887)  ; Saturate(value)
  %7889 = fcmp fast une float %7882, 1.000000e+00
  br i1 %7889, label %7890, label %7903, !dx.controlflow.hints !165

; <label>:7890                                    ; preds = %7867
  %7891 = call float @dx.op.unary.f32(i32 23, float %7882)  ; Log(value)
  %7892 = fmul fast float %7891, 0x3FE62E4300000000
  %7893 = fmul fast float %7763, %7892
  %7894 = fsub fast float -0.000000e+00, %7893
  %7895 = fmul fast float %7764, %7892
  %7896 = fsub fast float -0.000000e+00, %7895
  %7897 = fmul fast float %7765, %7892
  %7898 = fsub fast float -0.000000e+00, %7897
  %7899 = fsub fast float 1.000000e+00, %7882
  %7900 = fdiv fast float %7894, %7899
  %7901 = fdiv fast float %7896, %7899
  %7902 = fdiv fast float %7898, %7899
  br label %7903

; <label>:7903                                    ; preds = %7890, %7867
  %7904 = phi float [ %7900, %7890 ], [ %7763, %7867 ]
  %7905 = phi float [ %7901, %7890 ], [ %7764, %7867 ]
  %7906 = phi float [ %7902, %7890 ], [ %7765, %7867 ]
  %7907 = phi float [ %7892, %7890 ], [ 0.000000e+00, %7867 ]
  %7908 = fcmp fast une float %7879, 1.000000e+00
  br i1 %7908, label %7909, label %7916, !dx.controlflow.hints !166

; <label>:7909                                    ; preds = %7903
  %7910 = call float @dx.op.unary.f32(i32 23, float %7879)  ; Log(value)
  %7911 = fmul fast float %7910, 0x3FE62E4300000000
  %7912 = fmul fast float %7876, %7911
  %7913 = fsub fast float -0.000000e+00, %7912
  %7914 = fsub fast float 1.000000e+00, %7879
  %7915 = fdiv fast float %7913, %7914
  br label %7916

; <label>:7916                                    ; preds = %7909, %7903
  %7917 = phi float [ %7915, %7909 ], [ %7876, %7903 ]
  %7918 = phi float [ %7911, %7909 ], [ 0.000000e+00, %7903 ]
  %7919 = fcmp fast une float %7880, 1.000000e+00
  br i1 %7919, label %7920, label %7927, !dx.controlflow.hints !166

; <label>:7920                                    ; preds = %7916
  %7921 = call float @dx.op.unary.f32(i32 23, float %7880)  ; Log(value)
  %7922 = fmul fast float %7921, 0x3FE62E4300000000
  %7923 = fmul fast float %7877, %7922
  %7924 = fsub fast float -0.000000e+00, %7923
  %7925 = fsub fast float 1.000000e+00, %7880
  %7926 = fdiv fast float %7924, %7925
  br label %7927

; <label>:7927                                    ; preds = %7920, %7916
  %7928 = phi float [ %7926, %7920 ], [ %7877, %7916 ]
  %7929 = phi float [ %7922, %7920 ], [ 0.000000e+00, %7916 ]
  %7930 = fcmp fast une float %7881, 1.000000e+00
  br i1 %7930, label %7931, label %7938, !dx.controlflow.hints !166

; <label>:7931                                    ; preds = %7927
  %7932 = call float @dx.op.unary.f32(i32 23, float %7881)  ; Log(value)
  %7933 = fmul fast float %7932, 0x3FE62E4300000000
  %7934 = fmul fast float %7878, %7933
  %7935 = fsub fast float -0.000000e+00, %7934
  %7936 = fsub fast float 1.000000e+00, %7881
  %7937 = fdiv fast float %7935, %7936
  br label %7938

; <label>:7938                                    ; preds = %7931, %7927
  %7939 = phi float [ %7937, %7931 ], [ %7878, %7927 ]
  %7940 = phi float [ %7933, %7931 ], [ 0.000000e+00, %7927 ]
  %7941 = fmul fast float %7904, %7888
  %7942 = fmul fast float %7905, %7888
  %7943 = fmul fast float %7906, %7888
  %7944 = fmul fast float %7907, %7888
  %7945 = fmul fast float %7917, %7886
  %7946 = fmul fast float %7928, %7886
  %7947 = fmul fast float %7939, %7886
  %7948 = fmul fast float %7918, %7886
  %7949 = fmul fast float %7929, %7886
  %7950 = fmul fast float %7940, %7886
  %7951 = fadd fast float %7945, %7941
  %7952 = fadd fast float %7946, %7942
  %7953 = fadd fast float %7947, %7943
  %7954 = fadd fast float %7948, %7944
  %7955 = fadd fast float %7949, %7944
  %7956 = fadd fast float %7950, %7944
  %7957 = fcmp fast une float %7954, 0.000000e+00
  br i1 %7957, label %7958, label %7965, !dx.controlflow.hints !167

; <label>:7958                                    ; preds = %7938
  %7959 = fmul fast float %7954, 0x3FF7154760000000
  %7960 = call float @dx.op.unary.f32(i32 21, float %7959)  ; Exp(value)
  %7961 = fsub fast float 1.000000e+00, %7960
  %7962 = fmul fast float %7951, %7961
  %7963 = fsub fast float -0.000000e+00, %7962
  %7964 = fdiv fast float %7963, %7954
  br label %7965

; <label>:7965                                    ; preds = %7958, %7938
  %7966 = phi float [ %7960, %7958 ], [ 1.000000e+00, %7938 ]
  %7967 = phi float [ %7964, %7958 ], [ %7951, %7938 ]
  %7968 = fcmp fast une float %7955, 0.000000e+00
  br i1 %7968, label %7969, label %7976, !dx.controlflow.hints !167

; <label>:7969                                    ; preds = %7965
  %7970 = fmul fast float %7955, 0x3FF7154760000000
  %7971 = call float @dx.op.unary.f32(i32 21, float %7970)  ; Exp(value)
  %7972 = fsub fast float 1.000000e+00, %7971
  %7973 = fmul fast float %7952, %7972
  %7974 = fsub fast float -0.000000e+00, %7973
  %7975 = fdiv fast float %7974, %7955
  br label %7976

; <label>:7976                                    ; preds = %7969, %7965
  %7977 = phi float [ %7971, %7969 ], [ 1.000000e+00, %7965 ]
  %7978 = phi float [ %7975, %7969 ], [ %7952, %7965 ]
  %7979 = fcmp fast une float %7956, 0.000000e+00
  br i1 %7979, label %7980, label %7987, !dx.controlflow.hints !167

; <label>:7980                                    ; preds = %7976
  %7981 = fmul fast float %7956, 0x3FF7154760000000
  %7982 = call float @dx.op.unary.f32(i32 21, float %7981)  ; Exp(value)
  %7983 = fsub fast float 1.000000e+00, %7982
  %7984 = fmul fast float %7953, %7983
  %7985 = fsub fast float -0.000000e+00, %7984
  %7986 = fdiv fast float %7985, %7956
  br label %7987

; <label>:7987                                    ; preds = %7980, %7976
  %7988 = phi float [ %7982, %7980 ], [ 1.000000e+00, %7976 ]
  %7989 = phi float [ %7986, %7980 ], [ %7953, %7976 ]
  %7990 = fcmp fast ogt float %7886, %7888
  br i1 %7990, label %7991, label %8011

; <label>:7991                                    ; preds = %7987
  %7992 = fsub fast float 1.000000e+00, %7888
  %7993 = fmul fast float %7904, %7992
  %7994 = fmul fast float %7905, %7992
  %7995 = fmul fast float %7906, %7992
  %7996 = fmul fast float %7907, %7992
  %7997 = fcmp fast une float %7996, 0.000000e+00
  br i1 %7997, label %7998, label %8049, !dx.controlflow.hints !168

; <label>:7998                                    ; preds = %7991
  %7999 = fmul fast float %7996, 0x3FF7154760000000
  %8000 = call float @dx.op.unary.f32(i32 21, float %7999)  ; Exp(value)
  %8001 = fsub fast float 1.000000e+00, %8000
  %8002 = fmul fast float %7993, %8001
  %8003 = fsub fast float -0.000000e+00, %8002
  %8004 = fmul fast float %7994, %8001
  %8005 = fsub fast float -0.000000e+00, %8004
  %8006 = fmul fast float %7995, %8001
  %8007 = fsub fast float -0.000000e+00, %8006
  %8008 = fdiv fast float %8003, %7996
  %8009 = fdiv fast float %8005, %7996
  %8010 = fdiv fast float %8007, %7996
  br label %8049

; <label>:8011                                    ; preds = %7987
  %8012 = fsub fast float 1.000000e+00, %7886
  %8013 = fmul fast float %7917, %8012
  %8014 = fmul fast float %7928, %8012
  %8015 = fmul fast float %7939, %8012
  %8016 = fmul fast float %7918, %8012
  %8017 = fmul fast float %7929, %8012
  %8018 = fmul fast float %7940, %8012
  %8019 = fcmp fast une float %8016, 0.000000e+00
  br i1 %8019, label %8020, label %8027, !dx.controlflow.hints !167

; <label>:8020                                    ; preds = %8011
  %8021 = fmul fast float %8016, 0x3FF7154760000000
  %8022 = call float @dx.op.unary.f32(i32 21, float %8021)  ; Exp(value)
  %8023 = fsub fast float 1.000000e+00, %8022
  %8024 = fmul fast float %8013, %8023
  %8025 = fsub fast float -0.000000e+00, %8024
  %8026 = fdiv fast float %8025, %8016
  br label %8027

; <label>:8027                                    ; preds = %8020, %8011
  %8028 = phi float [ %8026, %8020 ], [ %8013, %8011 ]
  %8029 = phi float [ %8022, %8020 ], [ 1.000000e+00, %8011 ]
  %8030 = fcmp fast une float %8017, 0.000000e+00
  br i1 %8030, label %8031, label %8038, !dx.controlflow.hints !167

; <label>:8031                                    ; preds = %8027
  %8032 = fmul fast float %8017, 0x3FF7154760000000
  %8033 = call float @dx.op.unary.f32(i32 21, float %8032)  ; Exp(value)
  %8034 = fsub fast float 1.000000e+00, %8033
  %8035 = fmul fast float %8014, %8034
  %8036 = fsub fast float -0.000000e+00, %8035
  %8037 = fdiv fast float %8036, %8017
  br label %8038

; <label>:8038                                    ; preds = %8031, %8027
  %8039 = phi float [ %8037, %8031 ], [ %8014, %8027 ]
  %8040 = phi float [ %8033, %8031 ], [ 1.000000e+00, %8027 ]
  %8041 = fcmp fast une float %8018, 0.000000e+00
  br i1 %8041, label %8042, label %8049, !dx.controlflow.hints !167

; <label>:8042                                    ; preds = %8038
  %8043 = fmul fast float %8018, 0x3FF7154760000000
  %8044 = call float @dx.op.unary.f32(i32 21, float %8043)  ; Exp(value)
  %8045 = fsub fast float 1.000000e+00, %8044
  %8046 = fmul fast float %8015, %8045
  %8047 = fsub fast float -0.000000e+00, %8046
  %8048 = fdiv fast float %8047, %8018
  br label %8049

; <label>:8049                                    ; preds = %8042, %8038, %7998, %7991
  %8050 = phi float [ %8048, %8042 ], [ %8010, %7998 ], [ %7995, %7991 ], [ %8015, %8038 ]
  %8051 = phi float [ %8039, %8042 ], [ %8009, %7998 ], [ %7994, %7991 ], [ %8039, %8038 ]
  %8052 = phi float [ %8028, %8042 ], [ %8008, %7998 ], [ %7993, %7991 ], [ %8028, %8038 ]
  %8053 = phi float [ %8044, %8042 ], [ %8000, %7998 ], [ 1.000000e+00, %7991 ], [ 1.000000e+00, %8038 ]
  %8054 = phi float [ %8040, %8042 ], [ %8000, %7998 ], [ 1.000000e+00, %7991 ], [ %8040, %8038 ]
  %8055 = phi float [ %8029, %8042 ], [ %8000, %7998 ], [ 1.000000e+00, %7991 ], [ %8029, %8038 ]
  %8056 = fmul fast float %8055, %7967
  %8057 = fmul fast float %8054, %7978
  %8058 = fmul fast float %8053, %7989
  %8059 = fadd fast float %8056, %8052
  %8060 = fadd fast float %8057, %8051
  %8061 = fadd fast float %8058, %8050
  %8062 = fmul fast float %8055, %7966
  %8063 = fmul fast float %8054, %7977
  %8064 = fmul fast float %8053, %7988
  br label %8065

; <label>:8065                                    ; preds = %8049, %7860
  %8066 = phi float [ %8064, %8049 ], [ %7866, %7860 ]
  %8067 = phi float [ %8063, %8049 ], [ %7865, %7860 ]
  %8068 = phi float [ %8062, %8049 ], [ %7864, %7860 ]
  %8069 = phi float [ %8061, %8049 ], [ %7863, %7860 ]
  %8070 = phi float [ %8060, %8049 ], [ %7862, %7860 ]
  %8071 = phi float [ %8059, %8049 ], [ %7861, %7860 ]
  %8072 = fmul fast float %8071, %7027
  %8073 = fmul fast float %8070, %7027
  %8074 = fmul fast float %8069, %7027
  %8075 = fmul fast float %8068, %7308
  %8076 = call float @dx.op.dot3.f32(i32 55, float %8068, float %8067, float %8066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8077 = call float @dx.op.dot3.f32(i32 55, float %8072, float %8073, float %8074, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8078 = select i1 %282, float %8076, float %8068
  %8079 = select i1 %282, float %8076, float %8067
  %8080 = select i1 %282, float 1.000000e+00, float %8066
  %8081 = select i1 %282, float %8077, float %8072
  %8082 = select i1 %282, float 0.000000e+00, float %8073
  %8083 = select i1 %282, float 0.000000e+00, float %8074
  %8084 = fmul fast float %8078, %7302
  %8085 = fmul fast float %8079, %7303
  %8086 = fmul fast float %8080, %7304
  %8087 = fadd fast float %8084, %8081
  %8088 = fadd fast float %8085, %8082
  %8089 = fadd fast float %8083, %8086
  %8090 = fmul fast float %8078, %7305
  %8091 = fmul fast float %8079, %7306
  %8092 = fmul fast float %8080, %7307
  %8093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8094 = extractvalue %dx.types.CBufRet.i32 %8093, 0
  %8095 = icmp eq i32 %8094, 0
  br i1 %8095, label %8463, label %8096, !dx.controlflow.hints !169

; <label>:8096                                    ; preds = %8065
  %8097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8098 = extractvalue %dx.types.CBufRet.f32 %8097, 2
  %8099 = extractvalue %dx.types.CBufRet.f32 %8097, 3
  %8100 = fmul fast float %8098, %104
  %8101 = fmul fast float %8099, %105
  %8102 = fmul fast float %8100, 2.000000e+00
  %8103 = fmul fast float %8101, 2.000000e+00
  %8104 = fsub fast float 1.000000e+00, %8102
  %8105 = fsub fast float 1.000000e+00, %8103
  %8106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8107 = extractvalue %dx.types.CBufRet.f32 %8106, 0
  %8108 = extractvalue %dx.types.CBufRet.f32 %8106, 1
  %8109 = extractvalue %dx.types.CBufRet.f32 %8106, 2
  %8110 = fmul fast float %8104, %8107
  %8111 = fmul fast float %8104, %8108
  %8112 = fmul fast float %8104, %8109
  %8113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.f32 %8113, 0
  %8115 = extractvalue %dx.types.CBufRet.f32 %8113, 1
  %8116 = extractvalue %dx.types.CBufRet.f32 %8113, 2
  %8117 = fmul fast float %8105, %8114
  %8118 = fmul fast float %8105, %8115
  %8119 = fmul fast float %8105, %8116
  %8120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8120, 0
  %8122 = extractvalue %dx.types.CBufRet.f32 %8120, 1
  %8123 = extractvalue %dx.types.CBufRet.f32 %8120, 2
  %8124 = fadd fast float %8117, %8121
  %8125 = fadd fast float %8124, %8110
  %8126 = fadd fast float %8118, %8122
  %8127 = fadd fast float %8126, %8111
  %8128 = fadd fast float %8119, %8123
  %8129 = fadd fast float %8128, %8112
  %8130 = fmul fast float %8125, %7301
  %8131 = fmul fast float %8127, %7301
  %8132 = fmul fast float %8129, %7301
  %8133 = fmul fast float %8130, %8130
  %8134 = fmul fast float %8131, %8131
  %8135 = fadd fast float %8133, %8134
  %8136 = fmul fast float %8132, %8132
  %8137 = fadd fast float %8135, %8136
  %8138 = call float @dx.op.unary.f32(i32 24, float %8137)  ; Sqrt(value)
  %8139 = extractvalue %dx.types.CBufRet.f32 %7028, 0
  %8140 = fsub fast float %8138, %8139
  %8141 = extractvalue %dx.types.CBufRet.f32 %7028, 2
  %8142 = fmul fast float %8140, %8141
  %8143 = call float @dx.op.unary.f32(i32 7, float %8142)  ; Saturate(value)
  %8144 = fadd fast float %8143, -5.000000e-01
  %8145 = fmul fast float %8144, 2.000000e+00
  %8146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8147 = extractvalue %dx.types.CBufRet.f32 %8146, 2
  %8148 = call float @dx.op.binary.f32(i32 36, float %8147, float %8145)  ; FMin(a,b)
  %8149 = fsub fast float -0.000000e+00, %8147
  %8150 = fcmp fast ogt float %8148, %8149
  br i1 %8150, label %8151, label %8463, !dx.controlflow.hints !170

; <label>:8151                                    ; preds = %8096
  %8152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8153 = extractvalue %dx.types.CBufRet.f32 %8152, 3
  %8154 = fcmp fast ogt float %8153, 0.000000e+00
  br i1 %8154, label %8155, label %8230, !dx.controlflow.hints !171

; <label>:8155                                    ; preds = %8151
  %8156 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8157 = extractvalue %dx.types.Dimensions %8156, 0
  %8158 = sitofp i32 %8157 to float
  %8159 = extractvalue %dx.types.Dimensions %8156, 1
  %8160 = sitofp i32 %8159 to float
  %8161 = fmul fast float %8100, %8158
  %8162 = fmul fast float %8101, %8160
  %8163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8164 = extractvalue %dx.types.CBufRet.f32 %8163, 1
  %8165 = fsub fast float -0.000000e+00, %8164
  %8166 = fptoui float %8165 to i32
  %8167 = fptoui float %8161 to i32
  %8168 = fptoui float %8162 to i32
  %8169 = and i32 %8166, 31
  %8170 = lshr i32 %8167, %8169
  %8171 = lshr i32 %8168, %8169
  %8172 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8166, i32 %8170, i32 %8171, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8173 = extractvalue %dx.types.ResRet.f32 %8172, 0
  %8174 = fcmp fast olt float %8173, -1.000000e+00
  %8175 = fcmp fast ogt float %8173, -1.000000e+00
  %8176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8177 = extractvalue %dx.types.CBufRet.f32 %8176, 1
  %8178 = select i1 %8175, float %8177, float 1.000000e+00
  %8179 = fadd fast float %8173, 1.000000e+00
  %8180 = fmul fast float %8178, %8179
  %8181 = call float @dx.op.unary.f32(i32 6, float %8180)  ; FAbs(value)
  %8182 = extractvalue %dx.types.CBufRet.f32 %8176, 3
  %8183 = fcmp fast oge float %8181, %8182
  %8184 = select i1 %8183, float 0x4197782600000000, float %8181
  %8185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.f32 %8185, 0
  %8187 = extractvalue %dx.types.CBufRet.f32 %8185, 1
  %8188 = extractvalue %dx.types.CBufRet.f32 %8185, 2
  %8189 = select i1 %8174, float %8186, float %8107
  %8190 = select i1 %8174, float %8187, float %8108
  %8191 = select i1 %8174, float %8188, float %8109
  %8192 = fmul fast float %8189, %8104
  %8193 = fmul fast float %8190, %8104
  %8194 = fmul fast float %8191, %8104
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 0
  %8197 = extractvalue %dx.types.CBufRet.f32 %8195, 1
  %8198 = extractvalue %dx.types.CBufRet.f32 %8195, 2
  %8199 = select i1 %8174, float %8196, float %8114
  %8200 = select i1 %8174, float %8197, float %8115
  %8201 = select i1 %8174, float %8198, float %8116
  %8202 = fmul fast float %8199, %8105
  %8203 = fmul fast float %8200, %8105
  %8204 = fmul fast float %8201, %8105
  %8205 = fadd fast float %8202, %8192
  %8206 = fadd fast float %8203, %8193
  %8207 = fadd fast float %8204, %8194
  %8208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8209 = extractvalue %dx.types.CBufRet.f32 %8208, 0
  %8210 = extractvalue %dx.types.CBufRet.f32 %8208, 1
  %8211 = extractvalue %dx.types.CBufRet.f32 %8208, 2
  %8212 = select i1 %8174, float %8209, float %8121
  %8213 = select i1 %8174, float %8210, float %8122
  %8214 = select i1 %8174, float %8211, float %8123
  %8215 = fadd fast float %8205, %8212
  %8216 = fadd fast float %8206, %8213
  %8217 = fadd fast float %8207, %8214
  %8218 = fmul fast float %8215, %8184
  %8219 = fmul fast float %8216, %8184
  %8220 = fmul fast float %8217, %8184
  %8221 = fmul fast float %8218, %8218
  %8222 = fmul fast float %8219, %8219
  %8223 = fadd fast float %8221, %8222
  %8224 = fmul fast float %8220, %8220
  %8225 = fadd fast float %8223, %8224
  %8226 = call float @dx.op.unary.f32(i32 24, float %8225)  ; Sqrt(value)
  %8227 = fsub fast float %8226, %8139
  %8228 = fmul fast float %8227, %8141
  %8229 = call float @dx.op.unary.f32(i32 7, float %8228)  ; Saturate(value)
  br label %8230

; <label>:8230                                    ; preds = %8155, %8151
  %8231 = phi float [ %8229, %8155 ], [ 1.000000e+00, %8151 ]
  %8232 = fmul fast float %8148, 5.000000e-01
  %8233 = fadd fast float %8232, 5.000000e-01
  %8234 = call float @dx.op.unary.f32(i32 22, float %8233)  ; Frc(value)
  %8235 = call float @dx.op.unary.f32(i32 27, float %8234)  ; Round_ni(value)
  %8236 = call float @dx.op.unary.f32(i32 22, float %8234)  ; Frc(value)
  %8237 = fmul fast float %8236, 2.000000e+00
  %8238 = fadd fast float %8237, -1.000000e+00
  %8239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8100, float %8101, float %8235, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8240 = extractvalue %dx.types.ResRet.f32 %8239, 0
  %8241 = extractvalue %dx.types.ResRet.f32 %8239, 1
  %8242 = extractvalue %dx.types.ResRet.f32 %8239, 2
  %8243 = extractvalue %dx.types.ResRet.f32 %8239, 3
  %8244 = fadd fast float %8240, -5.000000e-01
  %8245 = fadd fast float %8242, -5.000000e-01
  %8246 = fmul fast float %8244, 0xBFD5555560000000
  %8247 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8245, float %8246)  ; FMad(a,b,c)
  %8248 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8241, float 0.000000e+00)  ; FMad(a,b,c)
  %8249 = fadd fast float %8248, %8243
  %8250 = fmul fast float %8244, -7.500000e-01
  %8251 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8245, float %8250)  ; FMad(a,b,c)
  %8252 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8241, float 0.000000e+00)  ; FMad(a,b,c)
  %8253 = fadd fast float %8252, %8243
  %8254 = call float @dx.op.binary.f32(i32 35, float %8247, float -1.000000e+00)  ; FMax(a,b)
  %8255 = call float @dx.op.binary.f32(i32 35, float %8249, float -1.000000e+00)  ; FMax(a,b)
  %8256 = call float @dx.op.binary.f32(i32 35, float %8251, float -1.000000e+00)  ; FMax(a,b)
  %8257 = call float @dx.op.binary.f32(i32 35, float %8253, float -1.000000e+00)  ; FMax(a,b)
  %8258 = call float @dx.op.binary.f32(i32 36, float %8254, float 1.000000e+00)  ; FMin(a,b)
  %8259 = call float @dx.op.binary.f32(i32 36, float %8255, float 1.000000e+00)  ; FMin(a,b)
  %8260 = call float @dx.op.binary.f32(i32 36, float %8256, float 1.000000e+00)  ; FMin(a,b)
  %8261 = call float @dx.op.binary.f32(i32 36, float %8257, float 1.000000e+00)  ; FMin(a,b)
  %8262 = fcmp fast olt float %8258, 0x3FEFFF8020000000
  br i1 %8262, label %8263, label %8378, !dx.controlflow.hints !172

; <label>:8263                                    ; preds = %8230
  %8264 = extractvalue %dx.types.CBufRet.f32 %8146, 3
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.CBufRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8265, 3
  %8270 = fsub fast float %8266, %8258
  %8271 = fsub fast float %8267, %8259
  %8272 = fsub fast float %8268, %8260
  %8273 = fsub fast float %8269, %8261
  %8274 = fmul fast float %8270, %8264
  %8275 = fmul fast float %8271, %8264
  %8276 = fmul fast float %8272, %8264
  %8277 = fmul fast float %8273, %8264
  %8278 = fadd fast float %8274, %8258
  %8279 = fadd fast float %8275, %8259
  %8280 = fsub fast float -0.000000e+00, %8279
  %8281 = fadd fast float %8276, %8260
  %8282 = fadd fast float %8277, %8261
  %8283 = fmul fast float %8278, %8278
  %8284 = fsub fast float %8279, %8283
  %8285 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8284)  ; FMax(a,b)
  %8286 = fdiv fast float 1.000000e+00, %8285
  %8287 = fmul fast float %8279, %8278
  %8288 = fsub fast float %8281, %8287
  %8289 = fsub fast float %8238, %8278
  %8290 = fmul fast float %8238, %8238
  %8291 = fsub fast float %8290, %8279
  %8292 = fmul fast float %8289, %8286
  %8293 = fmul fast float %8292, %8288
  %8294 = fsub fast float %8291, %8293
  %8295 = fmul fast float %8279, %8279
  %8296 = fsub fast float %8282, %8295
  %8297 = fmul fast float %8288, %8288
  %8298 = fmul fast float %8297, %8286
  %8299 = fsub fast float %8296, %8298
  %8300 = fdiv fast float %8294, %8299
  %8301 = fmul fast float %8288, %8300
  %8302 = fsub fast float %8289, %8301
  %8303 = fmul fast float %8302, %8286
  %8304 = fmul fast float %8303, %8278
  %8305 = fsub fast float 1.000000e+00, %8304
  %8306 = fmul fast float %8279, %8300
  %8307 = fsub fast float %8305, %8306
  %8308 = fmul fast float %8303, %8303
  %8309 = fmul fast float %8300, 4.000000e+00
  %8310 = fmul fast float %8309, %8307
  %8311 = fsub fast float %8308, %8310
  %8312 = call float @dx.op.unary.f32(i32 24, float %8311)  ; Sqrt(value)
  %8313 = fcmp fast oge float %8303, 0.000000e+00
  %8314 = fsub fast float -0.000000e+00, %8312
  %8315 = select i1 %8313, float %8314, float %8312
  %8316 = fsub fast float %8315, %8303
  %8317 = fdiv fast float %8316, %8300
  %8318 = fdiv fast float %8307, %8316
  %8319 = fmul fast float %8317, 5.000000e-01
  %8320 = fmul fast float %8318, 2.000000e+00
  %8321 = select i1 %8313, float %8319, float %8320
  %8322 = select i1 %8313, float %8320, float %8319
  %8323 = call float @dx.op.binary.f32(i32 35, float %8321, float %8322)  ; FMax(a,b)
  %8324 = call float @dx.op.binary.f32(i32 36, float %8321, float %8322)  ; FMin(a,b)
  %8325 = fcmp fast ogt float %8238, %8324
  br i1 %8325, label %8326, label %8336

; <label>:8326                                    ; preds = %8263
  %8327 = fsub fast float %8238, %8324
  %8328 = fsub fast float %8323, %8324
  %8329 = fmul fast float %8327, %8328
  %8330 = fmul fast float %8323, %8238
  %8331 = fadd fast float %8323, %8238
  %8332 = fmul fast float %8331, %8278
  %8333 = fadd fast float %8330, %8279
  %8334 = fsub fast float %8333, %8332
  %8335 = fdiv fast float %8334, %8329
  br label %8336

; <label>:8336                                    ; preds = %8326, %8263
  %8337 = phi float [ %8335, %8326 ], [ 0.000000e+00, %8263 ]
  %8338 = fcmp fast ogt float %8238, %8323
  %8339 = fsub fast float %8238, %8323
  br i1 %8338, label %8340, label %8350

; <label>:8340                                    ; preds = %8336
  %8341 = fsub fast float %8323, %8324
  %8342 = fmul fast float %8341, %8339
  %8343 = fmul fast float %8324, %8238
  %8344 = fadd fast float %8324, %8238
  %8345 = fmul fast float %8344, %8278
  %8346 = fsub fast float %8280, %8343
  %8347 = fadd fast float %8346, %8345
  %8348 = fdiv fast float %8347, %8342
  %8349 = fadd fast float %8348, %8337
  br label %8350

; <label>:8350                                    ; preds = %8340, %8336
  %8351 = phi float [ %8349, %8340 ], [ %8337, %8336 ]
  %8352 = fsub fast float %8238, %8324
  %8353 = fmul fast float %8352, %8339
  %8354 = fmul fast float %8324, %8323
  %8355 = fadd fast float %8324, %8323
  %8356 = fmul fast float %8355, %8278
  %8357 = fadd fast float %8354, %8279
  %8358 = fsub fast float %8357, %8356
  %8359 = fdiv fast float %8358, %8353
  %8360 = call float @dx.op.unary.f32(i32 7, float %8351)  ; Saturate(value)
  %8361 = fcmp fast oeq float %7029, 0.000000e+00
  %8362 = extractvalue %dx.types.CBufRet.f32 %8146, 0
  %8363 = fcmp fast oeq float %8362, 0.000000e+00
  %8364 = or i1 %8361, %8363
  %8365 = fmul fast float %8362, 2.000000e+00
  %8366 = fadd fast float %8147, %8148
  %8367 = fdiv fast float %8366, %8365
  %8368 = call float @dx.op.unary.f32(i32 7, float %8367)  ; Saturate(value)
  %8369 = fmul fast float %8368, 2.000000e+00
  %8370 = fsub fast float 3.000000e+00, %8369
  %8371 = fmul fast float %8368, %8368
  %8372 = fmul fast float %8371, %8370
  %8373 = select i1 %8364, float 1.000000e+00, float %8372
  %8374 = fmul fast float %8359, %7029
  %8375 = fadd fast float %8360, %8374
  %8376 = call float @dx.op.unary.f32(i32 7, float %8375)  ; Saturate(value)
  %8377 = fmul fast float %8373, %8376
  br label %8378

; <label>:8378                                    ; preds = %8350, %8230
  %8379 = phi float [ %8377, %8350 ], [ 0.000000e+00, %8230 ]
  %8380 = fsub fast float 1.000000e+00, %8379
  %8381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8100, float %8101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8382 = extractvalue %dx.types.ResRet.f32 %8381, 0
  %8383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.i32 %8383, 2
  %8385 = icmp eq i32 %8384, 0
  br i1 %8385, label %8391, label %8386

; <label>:8386                                    ; preds = %8378
  %8387 = call float @dx.op.unary.f32(i32 7, float %8379)  ; Saturate(value)
  %8388 = fadd fast float %8382, -1.000000e+00
  %8389 = fmul fast float %8387, %8388
  %8390 = fadd fast float %8389, 1.000000e+00
  br label %8391

; <label>:8391                                    ; preds = %8386, %8378
  %8392 = phi float [ %8390, %8386 ], [ %8380, %8378 ]
  br i1 %8154, label %8393, label %8411

; <label>:8393                                    ; preds = %8391
  %8394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.f32 %8394, 1
  %8396 = fsub fast float %8231, %8395
  %8397 = call float @dx.op.unary.f32(i32 7, float %8396)  ; Saturate(value)
  %8398 = fsub fast float %8231, %8153
  %8399 = call float @dx.op.unary.f32(i32 7, float %8398)  ; Saturate(value)
  %8400 = fsub fast float %8397, %8399
  %8401 = fsub fast float %8233, %8399
  %8402 = fdiv fast float %8401, %8400
  %8403 = call float @dx.op.unary.f32(i32 7, float %8402)  ; Saturate(value)
  %8404 = fmul fast float %8403, 2.000000e+00
  %8405 = fsub fast float 3.000000e+00, %8404
  %8406 = fsub fast float %8382, %8392
  %8407 = fmul fast float %8403, %8403
  %8408 = fmul fast float %8407, %8406
  %8409 = fmul fast float %8408, %8405
  %8410 = fadd fast float %8409, %8392
  br label %8411

; <label>:8411                                    ; preds = %8393, %8391
  %8412 = phi float [ %8410, %8393 ], [ %8392, %8391 ]
  %8413 = call float @dx.op.binary.f32(i32 35, float %8382, float %8412)  ; FMax(a,b)
  %8414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8415 = extractvalue %dx.types.CBufRet.i32 %8414, 2
  %8416 = and i32 %8415, 1
  %8417 = icmp eq i32 %8416, 0
  %8418 = fcmp fast une float %8413, 1.000000e+00
  %8419 = and i1 %8418, %8417
  br i1 %8419, label %8420, label %8439

; <label>:8420                                    ; preds = %8411
  %8421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8100, float %8101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8422 = extractvalue %dx.types.ResRet.f32 %8421, 0
  %8423 = extractvalue %dx.types.ResRet.f32 %8421, 1
  %8424 = extractvalue %dx.types.ResRet.f32 %8421, 2
  %8425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8426 = extractvalue %dx.types.CBufRet.f32 %8425, 1
  %8427 = fmul fast float %8426, %8422
  %8428 = fmul fast float %8426, %8423
  %8429 = fmul fast float %8426, %8424
  %8430 = fcmp fast ogt float %8382, 0x3FEFFF2E40000000
  %8431 = fsub fast float 1.000000e+00, %8413
  %8432 = fsub fast float 1.000000e+00, %8382
  %8433 = fdiv fast float %8431, %8432
  %8434 = call float @dx.op.unary.f32(i32 7, float %8433)  ; Saturate(value)
  %8435 = select i1 %8430, float 0.000000e+00, float %8434
  %8436 = fmul fast float %8427, %8435
  %8437 = fmul fast float %8428, %8435
  %8438 = fmul fast float %8429, %8435
  br label %8439

; <label>:8439                                    ; preds = %8420, %8411
  %8440 = phi float [ 0.000000e+00, %8411 ], [ %8436, %8420 ]
  %8441 = phi float [ 0.000000e+00, %8411 ], [ %8437, %8420 ]
  %8442 = phi float [ 0.000000e+00, %8411 ], [ %8438, %8420 ]
  %8443 = fmul fast float %8440, %7027
  %8444 = fmul fast float %8441, %7027
  %8445 = fmul fast float %8442, %7027
  %8446 = fmul fast float %8413, %8075
  %8447 = call float @dx.op.dot3.f32(i32 55, float %8413, float %8413, float %8413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8448 = call float @dx.op.dot3.f32(i32 55, float %8443, float %8444, float %8445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8449 = select i1 %282, float %8447, float %8413
  %8450 = select i1 %282, float 1.000000e+00, float %8413
  %8451 = select i1 %282, float %8448, float %8443
  %8452 = select i1 %282, float 0.000000e+00, float %8444
  %8453 = select i1 %282, float 0.000000e+00, float %8445
  %8454 = fmul fast float %8449, %8087
  %8455 = fmul fast float %8449, %8088
  %8456 = fmul fast float %8450, %8089
  %8457 = fadd fast float %8454, %8451
  %8458 = fadd fast float %8455, %8452
  %8459 = fadd fast float %8453, %8456
  %8460 = fmul fast float %8449, %8090
  %8461 = fmul fast float %8449, %8091
  %8462 = fmul fast float %8450, %8092
  br label %8463

; <label>:8463                                    ; preds = %8439, %8096, %8065, %7297
  %8464 = phi float [ %7302, %7297 ], [ %8087, %8065 ], [ %8457, %8439 ], [ %8087, %8096 ]
  %8465 = phi float [ %7303, %7297 ], [ %8088, %8065 ], [ %8458, %8439 ], [ %8088, %8096 ]
  %8466 = phi float [ %7304, %7297 ], [ %8089, %8065 ], [ %8459, %8439 ], [ %8089, %8096 ]
  %8467 = phi float [ %7305, %7297 ], [ %8090, %8065 ], [ %8460, %8439 ], [ %8090, %8096 ]
  %8468 = phi float [ %7306, %7297 ], [ %8091, %8065 ], [ %8461, %8439 ], [ %8091, %8096 ]
  %8469 = phi float [ %7307, %7297 ], [ %8092, %8065 ], [ %8462, %8439 ], [ %8092, %8096 ]
  %8470 = phi float [ %7308, %7297 ], [ %8075, %8065 ], [ %8446, %8439 ], [ %8075, %8096 ]
  %8471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8472 = extractvalue %dx.types.CBufRet.f32 %8471, 2
  %8473 = extractvalue %dx.types.CBufRet.f32 %8471, 3
  %8474 = fmul fast float %8472, %104
  %8475 = fmul fast float %8473, %105
  %8476 = call float @dx.op.unary.f32(i32 7, float %8474)  ; Saturate(value)
  %8477 = call float @dx.op.unary.f32(i32 7, float %8475)  ; Saturate(value)
  %8478 = select i1 %7039, i32 2, i32 0
  %8479 = or i32 %8478, 1
  %8480 = uitofp i32 %8479 to float
  %8481 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8476, float %8477, float %8480, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8482 = extractvalue %dx.types.ResRet.f32 %8481, 0
  %8483 = extractvalue %dx.types.ResRet.f32 %8481, 1
  %8484 = extractvalue %dx.types.ResRet.f32 %8481, 2
  %8485 = extractvalue %dx.types.ResRet.f32 %8481, 3
  %8486 = add nuw nsw i32 %8478, 2
  %8487 = uitofp i32 %8486 to float
  %8488 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8476, float %8477, float %8487, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8489 = extractvalue %dx.types.ResRet.f32 %8488, 0
  %8490 = extractvalue %dx.types.ResRet.f32 %8488, 1
  %8491 = extractvalue %dx.types.ResRet.f32 %8488, 2
  %8492 = extractvalue %dx.types.ResRet.f32 %8488, 3
  %8493 = call float @dx.op.binary.f32(i32 35, float %8483, float %8484)  ; FMax(a,b)
  %8494 = call float @dx.op.binary.f32(i32 35, float %8482, float %8493)  ; FMax(a,b)
  %8495 = call float @dx.op.binary.f32(i32 35, float %8494, float %8485)  ; FMax(a,b)
  %8496 = call float @dx.op.binary.f32(i32 36, float %8490, float %8491)  ; FMin(a,b)
  %8497 = call float @dx.op.binary.f32(i32 36, float %8489, float %8496)  ; FMin(a,b)
  %8498 = call float @dx.op.binary.f32(i32 36, float %8497, float %8492)  ; FMin(a,b)
  %8499 = fmul fast float %8495, 2.550000e+02
  %8500 = fadd fast float %8499, 0x3F70101020000000
  %8501 = fptoui float %8500 to i32
  %8502 = fmul fast float %8498, 2.550000e+02
  %8503 = fadd fast float %8502, 0x3F70101020000000
  %8504 = fptoui float %8503 to i32
  %8505 = icmp ult i32 %8501, %8504
  br i1 %8505, label %8506, label %8675

; <label>:8506                                    ; preds = %8463
  %8507 = fcmp fast ogt float %94, 9.843750e-01
  %8508 = fadd fast float %7301, -4.000000e+00
  %8509 = select i1 %8507, float -4.000000e+00, float %8508
  %8510 = call float @dx.op.binary.f32(i32 35, float %8509, float 0.000000e+00)  ; FMax(a,b)
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %8513 = fadd fast float %8512, %8510
  %8514 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8515 = fmul fast float %8513, %8514
  %8516 = call float @dx.op.unary.f32(i32 23, float %8515)  ; Log(value)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8511, 3
  %8518 = fmul fast float %8517, %8516
  %8519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8520 = extractvalue %dx.types.CBufRet.f32 %8519, 2
  %8521 = fmul fast float %8518, %8520
  %8522 = call float @dx.op.unary.f32(i32 7, float %8521)  ; Saturate(value)
  %8523 = uitofp i32 %8501 to float
  %8524 = uitofp i32 %8504 to float
  %8525 = fadd fast float %8523, 5.000000e-01
  %8526 = fadd fast float %8524, 5.000000e-01
  %8527 = fmul fast float %8520, %8525
  %8528 = fmul fast float %8520, %8526
  %8529 = fadd fast float %8527, 0x3F0FFB4800000000
  %8530 = fadd fast float %8528, 0xBF0FFB4800000000
  %8531 = call float @dx.op.binary.f32(i32 35, float %8522, float %8529)  ; FMax(a,b)
  %8532 = call float @dx.op.binary.f32(i32 36, float %8531, float %8530)  ; FMin(a,b)
  %8533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8534 = extractvalue %dx.types.CBufRet.f32 %8533, 1
  %8535 = extractvalue %dx.types.CBufRet.f32 %8533, 2
  %8536 = extractvalue %dx.types.CBufRet.f32 %8533, 0
  %8537 = select i1 %7039, float %8536, float 0.000000e+00
  %8538 = fmul fast float %8534, %8532
  %8539 = fadd fast float %8537, %8538
  %8540 = fadd fast float %8537, %8535
  %8541 = fsub fast float %8534, %8535
  %8542 = fadd fast float %8541, %8537
  %8543 = call float @dx.op.binary.f32(i32 35, float %8539, float %8540)  ; FMax(a,b)
  %8544 = call float @dx.op.binary.f32(i32 36, float %8543, float %8542)  ; FMin(a,b)
  %8545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8476, float %8477, float %8544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8546 = extractvalue %dx.types.ResRet.f32 %8545, 0
  %8547 = extractvalue %dx.types.ResRet.f32 %8545, 1
  %8548 = extractvalue %dx.types.ResRet.f32 %8545, 2
  %8549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8550 = extractvalue %dx.types.CBufRet.i32 %8549, 0
  %8551 = extractvalue %dx.types.CBufRet.i32 %8549, 1
  %8552 = uitofp i32 %8550 to float
  %8553 = uitofp i32 %8551 to float
  %8554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8555 = extractvalue %dx.types.CBufRet.f32 %8554, 0
  %8556 = extractvalue %dx.types.CBufRet.f32 %8554, 1
  %8557 = fmul fast float %8552, %8476
  %8558 = fmul fast float %8553, %8477
  %8559 = fadd fast float %8557, -5.000000e-01
  %8560 = fadd fast float %8558, -5.000000e-01
  %8561 = call float @dx.op.unary.f32(i32 22, float %8559)  ; Frc(value)
  %8562 = call float @dx.op.unary.f32(i32 22, float %8560)  ; Frc(value)
  %8563 = fmul fast float %8561, %8561
  %8564 = fmul fast float %8563, %8561
  %8565 = fsub fast float 3.000000e+00, %8561
  %8566 = fmul fast float %8563, %8565
  %8567 = fmul fast float %8561, 3.000000e+00
  %8568 = fmul fast float %8564, 3.000000e+00
  %8569 = fmul fast float %8563, 6.000000e+00
  %8570 = fsub fast float %8568, %8569
  %8571 = fadd fast float %8570, 4.000000e+00
  %8572 = fmul fast float %8571, 0x3FC5555560000000
  %8573 = fmul fast float %8564, -3.000000e+00
  %8574 = fadd fast float %8563, %8561
  %8575 = fmul fast float %8574, 3.000000e+00
  %8576 = fadd fast float %8573, 1.000000e+00
  %8577 = fadd fast float %8576, %8575
  %8578 = fmul fast float %8564, 0x3FC5555560000000
  %8579 = fmul fast float %8562, %8562
  %8580 = fmul fast float %8579, %8562
  %8581 = fsub fast float 3.000000e+00, %8562
  %8582 = fmul fast float %8579, %8581
  %8583 = fmul fast float %8562, 3.000000e+00
  %8584 = fmul fast float %8580, 3.000000e+00
  %8585 = fmul fast float %8579, 6.000000e+00
  %8586 = fsub fast float %8584, %8585
  %8587 = fadd fast float %8586, 4.000000e+00
  %8588 = fmul fast float %8587, 0x3FC5555560000000
  %8589 = fmul fast float %8580, -3.000000e+00
  %8590 = fadd fast float %8579, %8562
  %8591 = fmul fast float %8590, 3.000000e+00
  %8592 = fadd fast float %8589, 1.000000e+00
  %8593 = fadd fast float %8592, %8591
  %8594 = fmul fast float %8580, 0x3FC5555560000000
  %8595 = fadd fast float %8561, 1.000000e+00
  %8596 = fsub fast float 1.000000e+00, %8567
  %8597 = fadd fast float %8596, %8566
  %8598 = fadd fast float %8597, %8571
  %8599 = fmul fast float %8598, 0x3FC5555560000000
  %8600 = fdiv fast float %8572, %8599
  %8601 = fsub fast float %8595, %8600
  %8602 = fsub fast float 1.000000e+00, %8561
  %8603 = fadd fast float %8577, %8564
  %8604 = fmul fast float %8603, 0x3FC5555560000000
  %8605 = fdiv fast float %8578, %8604
  %8606 = fadd fast float %8602, %8605
  %8607 = fadd fast float %8562, 1.000000e+00
  %8608 = fsub fast float 1.000000e+00, %8583
  %8609 = fadd fast float %8608, %8582
  %8610 = fadd fast float %8609, %8587
  %8611 = fmul fast float %8610, 0x3FC5555560000000
  %8612 = fdiv fast float %8588, %8611
  %8613 = fsub fast float %8607, %8612
  %8614 = fsub fast float 1.000000e+00, %8562
  %8615 = fadd fast float %8593, %8580
  %8616 = fmul fast float %8615, 0x3FC5555560000000
  %8617 = fdiv fast float %8594, %8616
  %8618 = fadd fast float %8617, %8614
  %8619 = fmul fast float %8601, %8555
  %8620 = fsub fast float %8476, %8619
  %8621 = fmul fast float %8606, %8555
  %8622 = fadd fast float %8621, %8476
  %8623 = fmul fast float %8618, %8556
  %8624 = fadd fast float %8623, %8477
  %8625 = fmul fast float %8613, %8556
  %8626 = fsub fast float %8477, %8625
  %8627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8620, float %8626, float %8544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8628 = extractvalue %dx.types.ResRet.f32 %8627, 0
  %8629 = extractvalue %dx.types.ResRet.f32 %8627, 1
  %8630 = extractvalue %dx.types.ResRet.f32 %8627, 2
  %8631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8622, float %8626, float %8544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8632 = extractvalue %dx.types.ResRet.f32 %8631, 0
  %8633 = extractvalue %dx.types.ResRet.f32 %8631, 1
  %8634 = extractvalue %dx.types.ResRet.f32 %8631, 2
  %8635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8620, float %8624, float %8544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8636 = extractvalue %dx.types.ResRet.f32 %8635, 0
  %8637 = extractvalue %dx.types.ResRet.f32 %8635, 1
  %8638 = extractvalue %dx.types.ResRet.f32 %8635, 2
  %8639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8622, float %8624, float %8544, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8640 = extractvalue %dx.types.ResRet.f32 %8639, 0
  %8641 = extractvalue %dx.types.ResRet.f32 %8639, 1
  %8642 = extractvalue %dx.types.ResRet.f32 %8639, 2
  %8643 = fsub fast float %8636, %8628
  %8644 = fsub fast float %8637, %8629
  %8645 = fsub fast float %8638, %8630
  %8646 = fmul fast float %8643, %8616
  %8647 = fmul fast float %8644, %8616
  %8648 = fmul fast float %8645, %8616
  %8649 = fadd fast float %8646, %8628
  %8650 = fadd fast float %8647, %8629
  %8651 = fadd fast float %8648, %8630
  %8652 = fsub fast float %8640, %8632
  %8653 = fsub fast float %8641, %8633
  %8654 = fsub fast float %8642, %8634
  %8655 = fmul fast float %8652, %8616
  %8656 = fmul fast float %8653, %8616
  %8657 = fmul fast float %8654, %8616
  %8658 = fsub fast float %8632, %8649
  %8659 = fadd fast float %8658, %8655
  %8660 = fsub fast float %8633, %8650
  %8661 = fadd fast float %8660, %8656
  %8662 = fsub fast float %8634, %8651
  %8663 = fadd fast float %8662, %8657
  %8664 = fmul fast float %8659, %8604
  %8665 = fmul fast float %8661, %8604
  %8666 = fmul fast float %8663, %8604
  %8667 = fadd fast float %8664, %8649
  %8668 = fadd fast float %8665, %8650
  %8669 = fadd fast float %8666, %8651
  %8670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8671 = extractvalue %dx.types.CBufRet.f32 %8670, 1
  %8672 = fmul fast float %8667, %8671
  %8673 = fmul fast float %8668, %8671
  %8674 = fmul fast float %8669, %8671
  br label %8675

; <label>:8675                                    ; preds = %8506, %8463
  %8676 = phi float [ %8546, %8506 ], [ 1.000000e+00, %8463 ]
  %8677 = phi float [ %8547, %8506 ], [ 1.000000e+00, %8463 ]
  %8678 = phi float [ %8548, %8506 ], [ 1.000000e+00, %8463 ]
  %8679 = phi float [ %8672, %8506 ], [ 0.000000e+00, %8463 ]
  %8680 = phi float [ %8673, %8506 ], [ 0.000000e+00, %8463 ]
  %8681 = phi float [ %8674, %8506 ], [ 0.000000e+00, %8463 ]
  %8682 = fmul fast float %8679, %7027
  %8683 = fmul fast float %8680, %7027
  %8684 = fmul fast float %8681, %7027
  %8685 = fmul fast float %8676, %8470
  %8686 = call float @dx.op.dot3.f32(i32 55, float %8676, float %8677, float %8678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8687 = call float @dx.op.dot3.f32(i32 55, float %8682, float %8683, float %8684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8688 = select i1 %282, float %8686, float %8676
  %8689 = select i1 %282, float %8686, float %8677
  %8690 = select i1 %282, float 1.000000e+00, float %8678
  %8691 = select i1 %282, float %8687, float %8682
  %8692 = select i1 %282, float 0.000000e+00, float %8683
  %8693 = select i1 %282, float 0.000000e+00, float %8684
  %8694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.i32 %8694, 3
  %8696 = and i32 %8695, 3
  %8697 = icmp ne i32 %8696, 0
  %8698 = and i32 %8695, 4
  %8699 = icmp ne i32 %8698, 0
  %8700 = and i1 %8697, %8699
  %8701 = and i1 %282, %8700
  br i1 %8701, label %8702, label %8708

; <label>:8702                                    ; preds = %8675
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 1
  %8705 = fadd fast float %8685, -1.000000e+00
  %8706 = fmul fast float %8704, %8705
  %8707 = fadd fast float %8706, 1.000000e+00
  br label %8708

; <label>:8708                                    ; preds = %8702, %8675
  %8709 = phi float [ %8707, %8702 ], [ %8685, %8675 ]
  %8710 = fadd fast float %8467, %8464
  %8711 = fmul fast float %8688, %8710
  %8712 = fadd fast float %8711, %8691
  %8713 = fadd fast float %8468, %8465
  %8714 = fmul fast float %8689, %8713
  %8715 = fadd fast float %8714, %8692
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 0
  br i1 %282, label %8718, label %8742

; <label>:8718                                    ; preds = %8708
  %8719 = fadd fast float %8712, %8715
  %8720 = fmul fast float %8717, %8719
  %8721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8721, 3
  %8723 = extractvalue %dx.types.CBufRet.f32 %7015, 1
  %8724 = fsub fast float %7020, %7014
  %8725 = fadd fast float %8724, %7021
  %8726 = fsub fast float %8725, %8723
  %8727 = extractvalue %dx.types.CBufRet.f32 %7015, 2
  %8728 = fmul fast float %8726, %8727
  %8729 = call float @dx.op.unary.f32(i32 7, float %8728)  ; Saturate(value)
  %8730 = fsub fast float %8729, %8722
  %8731 = fmul fast float %8730, %8709
  %8732 = fadd fast float %8731, %8722
  %8733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8734 = extractvalue %dx.types.CBufRet.f32 %8733, 0
  %8735 = fsub fast float %8732, %8734
  %8736 = fmul fast float %8735, 1.000000e+01
  %8737 = call float @dx.op.unary.f32(i32 7, float %8736)  ; Saturate(value)
  %8738 = fsub fast float %3865, %7027
  %8739 = fmul fast float %8737, %8738
  %8740 = fadd fast float %8739, %7027
  %8741 = fmul fast float %8740, %8732
  br label %8766

; <label>:8742                                    ; preds = %8708
  %8743 = fadd fast float %8469, %8466
  %8744 = fmul fast float %8690, %8743
  %8745 = fadd fast float %8744, %8693
  %8746 = fmul fast float %8717, %8712
  %8747 = fmul fast float %8717, %8715
  %8748 = fmul fast float %8717, %8745
  %8749 = call float @dx.op.binary.f32(i32 35, float %8747, float %8748)  ; FMax(a,b)
  %8750 = call float @dx.op.binary.f32(i32 35, float %8746, float %8749)  ; FMax(a,b)
  %8751 = call float @dx.op.binary.f32(i32 35, float %8750, float %7027)  ; FMax(a,b)
  %8752 = fcmp fast ugt float %8751, 0x3F10000000000000
  br i1 %8752, label %8754, label %8753

; <label>:8753                                    ; preds = %8742
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8754

; <label>:8754                                    ; preds = %8753, %8742
  %8755 = add i32 %54, 356
  %8756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8755, i32 undef)  ; BufferLoad(srv,index,wot)
  %8757 = extractvalue %dx.types.ResRet.i32 %8756, 0
  %8758 = and i32 %8757, 32
  %8759 = icmp eq i32 %8758, 0
  br i1 %8759, label %8766, label %8760

; <label>:8760                                    ; preds = %8754
  %8761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8762 = extractvalue %dx.types.CBufRet.f32 %8761, 0
  %8763 = fmul fast float %8762, 0x3FE99999A0000000
  %8764 = fadd fast float %8762, %8746
  %8765 = fadd fast float %8763, %8748
  br label %8766

; <label>:8766                                    ; preds = %8760, %8754, %8718
  %8767 = phi float [ %8720, %8718 ], [ %8764, %8760 ], [ %8746, %8754 ]
  %8768 = phi float [ %8741, %8718 ], [ %8747, %8760 ], [ %8747, %8754 ]
  %8769 = phi float [ %8740, %8718 ], [ %8765, %8760 ], [ %8748, %8754 ]
  %8770 = phi float [ %8740, %8718 ], [ %7027, %8760 ], [ %7027, %8754 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8771 = call float @dx.op.binary.f32(i32 36, float %8767, float 3.225500e+04)  ; FMin(a,b)
  %8772 = call float @dx.op.binary.f32(i32 36, float %8768, float 3.225500e+04)  ; FMin(a,b)
  %8773 = call float @dx.op.binary.f32(i32 36, float %8769, float 3.225500e+04)  ; FMin(a,b)
  %8774 = call float @dx.op.binary.f32(i32 36, float %8770, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8771)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8772)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8773)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8774)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!67}
!dx.entryPoints = !{!68}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !56, !59}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !30}
!30 = !{i32 0, i32 5}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !41}
!41 = !{i32 0, i32 14}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!50 = !{i32 41, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !41}
!54 = !{i32 45, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!56 = !{!57, !58}
!57 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!58 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!59 = !{!60, !61, !62, !63, !64, !65, !66}
!60 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!61 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!62 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!63 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!64 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!65 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!66 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!67 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!68 = !{void ()* @ps_main, !"ps_main", !69, !4, !93}
!69 = !{!70, !91, null}
!70 = !{!71, !74, !75, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !89, !90}
!71 = !{i32 0, !"SV_Position", i8 9, i8 3, !72, i8 4, i32 1, i8 4, i32 0, i8 0, !73}
!72 = !{i32 0}
!73 = !{i32 3, i32 15}
!74 = !{i32 1, !"COLOR", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 1, i8 0, !73}
!75 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 2, i8 0, !76}
!76 = !{i32 3, i32 3}
!77 = !{i32 3, !"NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 3, i32 3, i8 0, !78}
!78 = !{i32 3, i32 7}
!79 = !{i32 4, !"TANGENT", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 4, i8 0, !73}
!80 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !72, i8 2, i32 1, i8 3, i32 5, i8 0, !78}
!81 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 6, i8 0, !73}
!82 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !72, i8 2, i32 1, i8 3, i32 7, i8 0, !78}
!83 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 8, i8 0, !73}
!84 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !72, i8 2, i32 1, i8 2, i32 9, i8 0, !76}
!85 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 10, i8 0, !73}
!86 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !72, i8 2, i32 1, i8 4, i32 11, i8 0, !78}
!87 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !72, i8 1, i32 1, i8 1, i32 12, i8 0, !88}
!88 = !{i32 3, i32 1}
!89 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !72, i8 1, i32 1, i8 4, i32 13, i8 0, !88}
!90 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !72, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!91 = !{!92}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !72, i8 0, i32 1, i8 4, i32 0, i8 0, !73}
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
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !125, i64 0}
!125 = !{!"float", !101, i64 0}
!126 = !{!127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!127 = distinct !{!127, !128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!128 = distinct !{!128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!129 = distinct !{!129, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!130 = distinct !{!130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!131 = distinct !{!131, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!141 = distinct !{!141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"\01?sort@@YAXAIAM00@Z: %c"}
!144 = distinct !{!144, !"\01?sort@@YAXAIAM00@Z"}
!145 = !{!146, !147, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!146 = distinct !{!146, !144, !"\01?sort@@YAXAIAM00@Z: %a"}
!147 = distinct !{!147, !144, !"\01?sort@@YAXAIAM00@Z: %b"}
!148 = !{!147}
!149 = !{!146, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!150 = !{!146}
!151 = !{!147, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!160 = !{!156}
!161 = !{!157, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 2}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}

