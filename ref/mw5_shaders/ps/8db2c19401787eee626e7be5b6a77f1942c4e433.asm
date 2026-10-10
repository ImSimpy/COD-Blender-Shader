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
; shader hash: 51127418043d2f6d54da78a6c7b52138
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
  %194 = fmul fast float %104, 5.000000e-01
  %195 = fmul fast float %105, 5.000000e-01
  %196 = fptosi float %194 to i32
  %197 = fptosi float %195 to i32
  %198 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %196, i32 %197, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = lshr i32 %199, 18
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F4C00EBA0000000
  %203 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %204 = fadd fast float %203, -1.000000e+00
  %205 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %206 = extractvalue %dx.types.Dimensions %205, 0
  %207 = sitofp i32 %206 to float
  %208 = extractvalue %dx.types.Dimensions %205, 1
  %209 = sitofp i32 %208 to float
  %210 = fcmp fast oge float %194, %207
  %211 = fcmp fast oge float %195, %209
  %212 = or i1 %210, %211
  %213 = select i1 %212, float 0x4197782600000000, float %204
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %217 = fmul fast float %215, %104
  %218 = fmul fast float %216, %105
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 114688
  %222 = icmp ne i32 %221, 0
  %223 = select i1 %222, float %217, float 0.000000e+00
  %224 = select i1 %222, float %218, float 0.000000e+00
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %49, float %223, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fmul fast float %226, 2.550000e+02
  %228 = fptoui float %227 to i32
  %229 = select i1 %222, i32 %228, i32 0
  %230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.i32 %230, 3
  %232 = and i32 %231, 3
  %233 = icmp ne i32 %232, 0
  %234 = and i32 %231, 4
  %235 = icmp ne i32 %234, 0
  %236 = and i1 %233, %235
  br i1 %236, label %237, label %246

; <label>:237                                     ; preds = %0
  %238 = fmul fast float %139, %105
  %239 = fmul fast float %138, %104
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %48, float %239, float %238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fsub fast float 1.000000e+00, %241
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = fcmp fast olt float %242, %244
  br label %249

; <label>:246                                     ; preds = %0
  %247 = icmp eq i32 %234, 0
  %248 = and i1 %233, %247
  br label %249

; <label>:249                                     ; preds = %246, %237
  %250 = phi i1 [ %245, %237 ], [ %248, %246 ]
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %253 = fmul fast float %252, 0x3FE3C6EF40000000
  %254 = frem fast float %104, 2.560000e+02
  %255 = frem fast float %105, 2.560000e+02
  %256 = fptoui float %254 to i32
  %257 = fptoui float %255 to i32
  %258 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %256, i32 %257, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = fadd fast float %259, %253
  %261 = call float @dx.op.unary.f32(i32 22, float %260)  ; Frc(value)
  %262 = add i32 %54, 156
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = shl i32 %264, 4
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %264, 7
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %264, 22
  %272 = shl nuw nsw i32 %271, 5
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %54, 216
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %276, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %276, 16
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = add i32 %54, 36
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %54, 288
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %299, 0x3F50624DE0000000
  %303 = fmul fast float %301, 0x3F50624DE0000000
  %304 = add i32 %54, 172
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %54, 232
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %318, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %318, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = add i32 %54, 52
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %54, 304
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fmul fast float %341, 0x3F50624DE0000000
  %345 = fmul fast float %343, 0x3F50624DE0000000
  %346 = add i32 %54, 188
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = shl i32 %348, 4
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %348, 7
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %348, 22
  %356 = shl nuw nsw i32 %355, 5
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %54, 248
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = lshr i32 %360, 8
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %360, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = add i32 %54, 68
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %374, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = add i32 %54, 320
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = fmul fast float %383, 0x3F50624DE0000000
  %387 = fmul fast float %385, 0x3F50624DE0000000
  %388 = add i32 %54, 204
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = shl i32 %390, 4
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %390, 7
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %390, 22
  %398 = shl nuw nsw i32 %397, 5
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = add i32 %54, 264
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 255
  %404 = uitofp i32 %403 to float
  %405 = fmul fast float %404, 0x3F70101020000000
  %406 = lshr i32 %402, 8
  %407 = and i32 %406, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %402, 16
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = add i32 %54, 84
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 65535
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %416, 16
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = add i32 %54, 336
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = fmul fast float %425, 0x3F50624DE0000000
  %429 = fmul fast float %427, 0x3F50624DE0000000
  %430 = add i32 %54, 348
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 32
  %434 = icmp eq i32 %433, 0
  %435 = and i32 %432, 64
  %436 = icmp eq i32 %435, 0
  %437 = and i32 %432, 128
  %438 = icmp eq i32 %437, 0
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %458, label %443

; <label>:443                                     ; preds = %249
  %444 = add i32 %54, 504
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = add i32 %446, 0
  %448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %448, %dx.types.Handle %101, float %86, float %87, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = fmul fast float %453, %88
  %455 = fmul fast float %450, %89
  %456 = fmul fast float %451, %90
  %457 = fmul fast float %452, %91
  br label %458

; <label>:458                                     ; preds = %443, %249
  %459 = phi float [ %91, %249 ], [ %457, %443 ]
  %460 = phi float [ %90, %249 ], [ %456, %443 ]
  %461 = phi float [ %89, %249 ], [ %455, %443 ]
  %462 = phi float [ %88, %249 ], [ %454, %443 ]
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 2
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %486, label %467

; <label>:467                                     ; preds = %458
  %468 = add i32 %54, 44
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 1
  %472 = icmp ne i32 %471, 0
  %473 = select i1 %472, float %461, float 1.000000e+00
  %474 = add i32 %54, 60
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 1
  %478 = icmp ne i32 %477, 0
  %479 = select i1 %478, float %460, float 1.000000e+00
  %480 = add i32 %54, 76
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %459, float 1.000000e+00
  br label %486

; <label>:486                                     ; preds = %467, %458
  %487 = phi float [ %459, %458 ], [ %485, %467 ]
  %488 = phi float [ %460, %458 ], [ %479, %467 ]
  %489 = phi float [ %461, %458 ], [ %473, %467 ]
  %490 = lshr i32 %464, 20
  %491 = and i32 %490, 3
  %492 = add nuw nsw i32 %491, 1
  %493 = add i32 %54, 24
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = add i32 %54, 28
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = or i32 %498, %495
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %1103, label %501

; <label>:501                                     ; preds = %486
  %502 = and i32 %495, 262144
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %503, float %59, float 1.000000e+00
  %505 = select i1 %503, float %60, float 0.000000e+00
  %506 = select i1 %503, float %61, float 0.000000e+00
  %507 = select i1 %503, float %62, float 1.000000e+00
  %508 = select i1 %503, float %63, float %86
  %509 = select i1 %503, float %64, float %87
  %510 = add i32 %54, 284
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = fmul fast float %514, 0x3F50624DE0000000
  %516 = add i32 %54, 88
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = lshr i32 %518, 16
  %520 = and i32 %519, 255
  %521 = lshr i32 %518, 24
  %522 = add i32 %54, 292
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 65535
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = lshr i32 %524, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = add i32 %54, 32
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %531, 22
  %533 = shl nuw nsw i32 %532, 5
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = shl i32 %531, 4
  %536 = and i32 %535, 32752
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %531, 7
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %543 = fmul fast float %542, 1.000000e+03
  %544 = fmul fast float %302, %543
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = fadd fast float %545, %292
  %547 = fmul fast float %303, %543
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = fadd fast float %548, %294
  %550 = fmul fast float %515, %543
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = fmul fast float %551, 0x401921FB60000000
  %553 = fadd fast float %552, %534
  %554 = call float @dx.op.unary.f32(i32 13, float %553)  ; Sin(value)
  %555 = call float @dx.op.unary.f32(i32 12, float %553)  ; Cos(value)
  %556 = fsub fast float -0.000000e+00, %554
  %557 = fadd fast float %508, -5.000000e-01
  %558 = fadd fast float %509, -5.000000e-01
  %559 = fmul fast float %526, %557
  %560 = fmul fast float %528, %558
  %561 = fadd fast float %559, 5.000000e-01
  %562 = fadd fast float %560, 5.000000e-01
  %563 = fmul fast float %537, %561
  %564 = fmul fast float %540, %562
  %565 = fmul fast float %555, %563
  %566 = call float @dx.op.tertiary.f32(i32 46, float %556, float %564, float %565)  ; FMad(a,b,c)
  %567 = fmul fast float %554, %563
  %568 = call float @dx.op.tertiary.f32(i32 46, float %555, float %564, float %567)  ; FMad(a,b,c)
  %569 = fadd fast float %546, %566
  %570 = fadd fast float %549, %568
  %571 = icmp ugt i32 %520, 1
  %572 = icmp ugt i32 %518, 33554431
  %573 = or i1 %572, %571
  br i1 %573, label %574, label %599

; <label>:574                                     ; preds = %501
  %575 = add i32 %54, 228
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = lshr i32 %577, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = fmul fast float %542, %579
  %581 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %582 = mul nuw nsw i32 %520, %521
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %581, %583
  %585 = call float @dx.op.unary.f32(i32 27, float %584)  ; Round_ni(value)
  %586 = fptoui float %585 to i32
  %587 = urem i32 %586, %520
  %588 = udiv i32 %586, %521
  %589 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %590 = call float @dx.op.unary.f32(i32 22, float %570)  ; Frc(value)
  %591 = uitofp i32 %587 to float
  %592 = uitofp i32 %588 to float
  %593 = fadd fast float %589, %591
  %594 = fadd fast float %590, %592
  %595 = uitofp i32 %520 to float
  %596 = uitofp i32 %521 to float
  %597 = fdiv fast float %593, %595
  %598 = fdiv fast float %594, %596
  br label %599

; <label>:599                                     ; preds = %574, %501
  %600 = phi float [ %597, %574 ], [ %569, %501 ]
  %601 = phi float [ %598, %574 ], [ %570, %501 ]
  %602 = and i32 %495, 256
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %650, label %604

; <label>:604                                     ; preds = %599
  %605 = add i32 %54, 456
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %101, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = add i32 %54, 100
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = shl i32 %614, 4
  %616 = and i32 %615, 32752
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = lshr i32 %614, 7
  %619 = and i32 %618, 32752
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = fsub fast float 1.000000e+00, %462
  %622 = call float @dx.op.binary.f32(i32 35, float %621, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %623 = bitcast float %462 to i32
  %624 = sitofp i32 %623 to float
  %625 = fadd fast float %624, 0xC1CFBF8940000000
  %626 = fmul fast float %620, %625
  %627 = fadd fast float %626, 0x41CFBF8940000000
  %628 = fptosi float %627 to i32
  %629 = bitcast i32 %628 to float
  %630 = bitcast float %622 to i32
  %631 = sitofp i32 %630 to float
  %632 = fadd fast float %631, 0xC1CFBF8940000000
  %633 = fmul fast float %632, %620
  %634 = fadd fast float %633, 0x41CFBF8940000000
  %635 = fptosi float %634 to i32
  %636 = bitcast i32 %635 to float
  %637 = fmul fast float %629, %617
  %638 = fmul fast float %636, %617
  %639 = fsub fast float %622, %637
  %640 = fadd fast float %638, %622
  %641 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %642 = call float @dx.op.unary.f32(i32 7, float %640)  ; Saturate(value)
  %643 = fsub fast float %611, %641
  %644 = fsub fast float %642, %641
  %645 = bitcast float %644 to i32
  %646 = sub nsw i32 2129859010, %645
  %647 = bitcast i32 %646 to float
  %648 = fmul fast float %647, %643
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  br label %650

; <label>:650                                     ; preds = %604, %599
  %651 = phi float [ %649, %604 ], [ %462, %599 ]
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 128
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %672, label %656

; <label>:656                                     ; preds = %650
  %657 = add i32 %54, 440
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = add i32 %659, 0
  %661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %660, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %661, %dx.types.Handle %101, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 524288
  %667 = icmp ne i32 %666, 0
  %668 = fcmp fast ogt float %663, 0x3FE0101020000000
  %669 = select i1 %668, float 1.000000e+00, float 0.000000e+00
  %670 = select i1 %667, float %669, float %663
  %671 = fmul fast float %670, %651
  br label %672

; <label>:672                                     ; preds = %656, %650
  %673 = phi float [ %671, %656 ], [ %651, %650 ]
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 16
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %876, label %678

; <label>:678                                     ; preds = %672
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = add i32 %54, 392
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = add i32 %683, 0
  %685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %686 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %685, %dx.types.Handle %100, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = extractvalue %dx.types.ResRet.f32 %686, 2
  %690 = extractvalue %dx.types.ResRet.f32 %686, 3
  %691 = and i32 %680, 255
  %692 = uitofp i32 %691 to float
  %693 = lshr i32 %680, 8
  %694 = and i32 %693, 255
  %695 = uitofp i32 %694 to float
  %696 = fmul fast float %690, %692
  %697 = fadd fast float %696, %695
  %698 = fmul fast float %697, 0x3F70101000000000
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = and i32 %700, 512
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %711, label %703

; <label>:703                                     ; preds = %678
  %704 = add i32 %54, 472
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = add i32 %706, 0
  %708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %708, %dx.types.Handle %101, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  br label %711

; <label>:711                                     ; preds = %703, %678
  %712 = phi float [ %710, %703 ], [ 1.000000e+00, %678 ]
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 33554432
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %823, label %717

; <label>:717                                     ; preds = %711
  %718 = add i32 %54, 224
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 65535
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = lshr i32 %720, 16
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = add i32 %54, 228
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 65535
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 24
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %733, 0x3F70101020000000
  %735 = and i32 %731, 255
  %736 = uitofp i32 %735 to float
  %737 = fmul fast float %736, 0x3F70101020000000
  %738 = lshr i32 %731, 8
  %739 = and i32 %738, 255
  %740 = uitofp i32 %739 to float
  %741 = fmul fast float %740, 0x3F70101020000000
  %742 = lshr i32 %731, 16
  %743 = and i32 %742, 255
  %744 = uitofp i32 %743 to float
  %745 = fmul fast float %744, 0x3F70101020000000
  %746 = add i32 %54, 220
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = lshr i32 %748, 24
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101020000000
  %752 = and i32 %748, 255
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3F70101020000000
  %755 = lshr i32 %748, 8
  %756 = and i32 %755, 255
  %757 = uitofp i32 %756 to float
  %758 = fmul fast float %757, 0x3F70101020000000
  %759 = lshr i32 %748, 16
  %760 = and i32 %759, 255
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F70101020000000
  %763 = bitcast float %687 to i32
  %764 = ashr i32 %763, 1
  %765 = sub nsw i32 1597463174, %764
  %766 = bitcast i32 %765 to float
  %767 = fmul fast float %687, 5.000000e-01
  %768 = fmul fast float %766, %766
  %769 = fmul fast float %768, %767
  %770 = fsub fast float 1.500000e+00, %769
  %771 = fmul fast float %766, %687
  %772 = fmul fast float %771, %770
  %773 = bitcast float %688 to i32
  %774 = ashr i32 %773, 1
  %775 = sub nsw i32 1597463174, %774
  %776 = bitcast i32 %775 to float
  %777 = fmul fast float %688, 5.000000e-01
  %778 = fmul fast float %776, %776
  %779 = fmul fast float %778, %777
  %780 = fsub fast float 1.500000e+00, %779
  %781 = fmul fast float %776, %688
  %782 = fmul fast float %781, %780
  %783 = bitcast float %689 to i32
  %784 = ashr i32 %783, 1
  %785 = sub nsw i32 1597463174, %784
  %786 = bitcast i32 %785 to float
  %787 = fmul fast float %689, 5.000000e-01
  %788 = fmul fast float %786, %786
  %789 = fmul fast float %788, %787
  %790 = fsub fast float 1.500000e+00, %789
  %791 = fmul fast float %786, %689
  %792 = fmul fast float %791, %790
  %793 = fsub fast float %772, %754
  %794 = fsub fast float %782, %758
  %795 = fsub fast float %792, %762
  %796 = fmul fast float %793, %722
  %797 = fmul fast float %794, %724
  %798 = fmul fast float %795, %729
  %799 = fadd fast float %796, %737
  %800 = fadd fast float %797, %741
  %801 = fadd fast float %798, %745
  %802 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %803 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %805 = fmul fast float %802, %802
  %806 = fmul fast float %803, %803
  %807 = fmul fast float %804, %804
  %808 = fsub fast float %805, %687
  %809 = fsub fast float %806, %688
  %810 = fsub fast float %807, %689
  %811 = fmul fast float %808, %712
  %812 = fmul fast float %809, %712
  %813 = fmul fast float %810, %712
  %814 = fadd fast float %811, %687
  %815 = fadd fast float %812, %688
  %816 = fadd fast float %813, %689
  %817 = fadd fast float %734, %698
  %818 = fsub fast float %817, %751
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = fsub fast float %819, %698
  %821 = fmul fast float %820, %712
  %822 = fadd fast float %821, %698
  br label %876

; <label>:823                                     ; preds = %711
  %824 = and i32 %714, 134217728
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %860, label %826

; <label>:826                                     ; preds = %823
  %827 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %828 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %829 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %830 = fadd fast float %827, -5.000000e-01
  %831 = fadd fast float %828, -5.000000e-01
  %832 = fadd fast float %829, -5.000000e-01
  %833 = fmul fast float %830, %712
  %834 = fmul fast float %831, %712
  %835 = fmul fast float %832, %712
  %836 = fadd fast float %833, 5.000000e-01
  %837 = fadd fast float %834, 5.000000e-01
  %838 = fadd fast float %835, 5.000000e-01
  %839 = call float @dx.op.unary.f32(i32 24, float %687)  ; Sqrt(value)
  %840 = call float @dx.op.unary.f32(i32 24, float %688)  ; Sqrt(value)
  %841 = call float @dx.op.unary.f32(i32 24, float %689)  ; Sqrt(value)
  %842 = fmul fast float %836, 2.000000e+00
  %843 = fsub fast float 1.000000e+00, %842
  %844 = fmul fast float %843, %839
  %845 = fadd fast float %844, %842
  %846 = fmul fast float %845, %839
  %847 = fmul fast float %837, 2.000000e+00
  %848 = fsub fast float 1.000000e+00, %847
  %849 = fmul fast float %848, %840
  %850 = fadd fast float %849, %847
  %851 = fmul fast float %850, %840
  %852 = fmul fast float %838, 2.000000e+00
  %853 = fsub fast float 1.000000e+00, %852
  %854 = fmul fast float %853, %841
  %855 = fadd fast float %854, %852
  %856 = fmul fast float %855, %841
  %857 = fmul fast float %846, %846
  %858 = fmul fast float %851, %851
  %859 = fmul fast float %856, %856
  br label %876

; <label>:860                                     ; preds = %823
  %861 = fmul fast float %279, %279
  %862 = fmul fast float %283, %283
  %863 = fmul fast float %287, %287
  %864 = fadd fast float %861, -1.000000e+00
  %865 = fadd fast float %862, -1.000000e+00
  %866 = fadd fast float %863, -1.000000e+00
  %867 = fmul fast float %712, %864
  %868 = fmul fast float %712, %865
  %869 = fmul fast float %712, %866
  %870 = fadd fast float %867, 1.000000e+00
  %871 = fadd fast float %868, 1.000000e+00
  %872 = fadd fast float %869, 1.000000e+00
  %873 = fmul fast float %870, %687
  %874 = fmul fast float %871, %688
  %875 = fmul fast float %872, %689
  br label %876

; <label>:876                                     ; preds = %860, %826, %717, %672
  %877 = phi float [ %822, %717 ], [ %698, %826 ], [ %698, %860 ], [ 0x3FA23C0BE0000000, %672 ]
  %878 = phi float [ %814, %717 ], [ %857, %826 ], [ %873, %860 ], [ 1.000000e+00, %672 ]
  %879 = phi float [ %815, %717 ], [ %858, %826 ], [ %874, %860 ], [ 1.000000e+00, %672 ]
  %880 = phi float [ %816, %717 ], [ %859, %826 ], [ %875, %860 ], [ 1.000000e+00, %672 ]
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 1
  %883 = and i32 %882, 1
  %884 = icmp ne i32 %883, 0
  %885 = add i32 %54, 356
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = and i32 %887, 32
  %889 = icmp ne i32 %888, 0
  %890 = and i1 %884, %889
  %891 = select i1 %890, float 1.000000e+00, float %878
  %892 = select i1 %890, float 0x3FD3333340000000, float %879
  %893 = select i1 %890, float 0x3FD3333340000000, float %880
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 32
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %1038, label %898

; <label>:898                                     ; preds = %876
  %899 = add i32 %54, 92
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %54, 408
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = add i32 %904, 0
  %906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %905, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %907 = add i32 %54, 360
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = extractvalue %dx.types.ResRet.i32 %908, 1
  %911 = extractvalue %dx.types.ResRet.i32 %908, 2
  %912 = extractvalue %dx.types.ResRet.i32 %908, 3
  %913 = bitcast i32 %910 to float
  %914 = bitcast i32 %911 to float
  %915 = bitcast i32 %912 to float
  %916 = add i32 %54, 376
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = extractvalue %dx.types.ResRet.i32 %917, 1
  %920 = extractvalue %dx.types.ResRet.i32 %917, 2
  %921 = extractvalue %dx.types.ResRet.i32 %917, 3
  %922 = bitcast i32 %919 to float
  %923 = bitcast i32 %920 to float
  %924 = bitcast i32 %921 to float
  %925 = fmul fast float %913, %600
  %926 = fmul fast float %913, %601
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 3
  %929 = fmul fast float %928, %914
  %930 = fmul fast float %928, %915
  %931 = fadd fast float %929, %925
  %932 = fadd fast float %930, %926
  %933 = fmul fast float %922, %600
  %934 = fmul fast float %922, %601
  %935 = fmul fast float %928, %923
  %936 = fmul fast float %928, %924
  %937 = fadd fast float %935, %933
  %938 = fadd fast float %936, %934
  %939 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %906, i32 0)  ; GetDimensions(handle,mipLevel)
  %940 = extractvalue %dx.types.Dimensions %939, 3
  %941 = sitofp i32 %940 to float
  %942 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %906, %dx.types.Handle %100, float %931, float %932, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %943 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %906, %dx.types.Handle %100, float %937, float %938, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %944 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %906, %dx.types.Handle %100, float %931, float %932, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %945 = extractvalue %dx.types.ResRet.f32 %944, 0
  %946 = extractvalue %dx.types.ResRet.f32 %944, 1
  %947 = extractvalue %dx.types.ResRet.f32 %944, 2
  %948 = extractvalue %dx.types.ResRet.f32 %944, 3
  %949 = and i32 %901, 255
  %950 = uitofp i32 %949 to float
  %951 = lshr i32 %901, 8
  %952 = and i32 %951, 255
  %953 = uitofp i32 %952 to float
  %954 = lshr i32 %901, 16
  %955 = and i32 %954, 255
  %956 = uitofp i32 %955 to float
  %957 = fmul fast float %956, 0x3F70101000000000
  %958 = fmul fast float %945, %950
  %959 = fadd fast float %958, %953
  %960 = fadd fast float %946, -5.000000e-01
  %961 = fadd fast float %948, -5.000000e-01
  %962 = fmul fast float %960, %957
  %963 = fmul fast float %961, %957
  %964 = fadd fast float %962, 5.000000e-01
  %965 = fadd fast float %963, 5.000000e-01
  %966 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %906, %dx.types.Handle %100, float %937, float %938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = extractvalue %dx.types.ResRet.f32 %966, 3
  %971 = fmul fast float %967, %950
  %972 = fadd fast float %971, %953
  %973 = fadd fast float %968, -5.000000e-01
  %974 = fadd fast float %970, -5.000000e-01
  %975 = fmul fast float %973, %957
  %976 = fmul fast float %974, %957
  %977 = fadd fast float %975, 5.000000e-01
  %978 = fadd fast float %976, 5.000000e-01
  %979 = fmul fast float %964, 2.000000e+00
  %980 = fadd fast float %979, -1.000000e+00
  %981 = fmul fast float %965, 2.000000e+00
  %982 = fadd fast float %981, -1.000000e+00
  %983 = fadd fast float %980, %982
  %984 = fmul fast float %983, 5.000000e-01
  %985 = fsub fast float %980, %982
  %986 = fmul fast float %985, 5.000000e-01
  %987 = call float @dx.op.unary.f32(i32 6, float %984)  ; FAbs(value)
  %988 = fsub fast float 1.000000e+00, %987
  %989 = call float @dx.op.unary.f32(i32 6, float %986)  ; FAbs(value)
  %990 = fsub fast float %988, %989
  %991 = call float @dx.op.dot3.f32(i32 55, float %984, float %986, float %990, float %984, float %986, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %992 = call float @dx.op.unary.f32(i32 25, float %991)  ; Rsqrt(value)
  %993 = fmul fast float %977, 2.000000e+00
  %994 = fadd fast float %993, -1.000000e+00
  %995 = fmul fast float %978, 2.000000e+00
  %996 = fadd fast float %995, -1.000000e+00
  %997 = fadd fast float %994, %996
  %998 = fmul fast float %997, 5.000000e-01
  %999 = fsub fast float %994, %996
  %1000 = fmul fast float %999, 5.000000e-01
  %1001 = call float @dx.op.unary.f32(i32 6, float %998)  ; FAbs(value)
  %1002 = fsub fast float 1.000000e+00, %1001
  %1003 = call float @dx.op.unary.f32(i32 6, float %1000)  ; FAbs(value)
  %1004 = fsub fast float %1002, %1003
  %1005 = call float @dx.op.dot3.f32(i32 55, float %998, float %1000, float %1004, float %998, float %1000, float %1004)  ; Dot3(ax,ay,az,bx,by,bz)
  %1006 = call float @dx.op.unary.f32(i32 25, float %1005)  ; Rsqrt(value)
  %1007 = fadd fast float %941, -1.000000e+00
  %1008 = fsub fast float %1007, %942
  %1009 = fmul fast float %1008, 5.000000e-01
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1011 = fsub fast float %1007, %943
  %1012 = fmul fast float %1011, 5.000000e-01
  %1013 = call float @dx.op.unary.f32(i32 7, float %1012)  ; Saturate(value)
  %1014 = bitcast i32 %909 to float
  %1015 = bitcast i32 %918 to float
  %1016 = fmul fast float %984, %1014
  %1017 = fmul fast float %1016, %992
  %1018 = fmul fast float %1017, %1010
  %1019 = fmul fast float %986, %1014
  %1020 = fmul fast float %1019, %992
  %1021 = fmul fast float %1020, %1010
  %1022 = fmul fast float %1006, %1015
  %1023 = fmul fast float %1022, %998
  %1024 = fmul fast float %1023, %1013
  %1025 = fmul fast float %1022, %1000
  %1026 = fmul fast float %1025, %1013
  %1027 = fadd fast float %1024, %1018
  %1028 = fadd fast float %1026, %1021
  %1029 = fmul fast float %947, %1014
  %1030 = fmul fast float %969, %1015
  %1031 = fadd fast float %1030, %1029
  %1032 = fmul fast float %959, %1014
  %1033 = fmul fast float %972, %1015
  %1034 = fadd fast float %1033, %1032
  %1035 = fmul fast float %1034, 0x3F70101000000000
  %1036 = call float @dx.op.dot2.f32(i32 54, float %1027, float %1028, float %504, float %505)  ; Dot2(ax,ay,bx,by)
  %1037 = call float @dx.op.dot2.f32(i32 54, float %1027, float %1028, float %506, float %507)  ; Dot2(ax,ay,bx,by)
  br label %1038

; <label>:1038                                    ; preds = %898, %876
  %1039 = phi float [ %1035, %898 ], [ 0x3FD6666660000000, %876 ]
  %1040 = phi float [ %1036, %898 ], [ 0.000000e+00, %876 ]
  %1041 = phi float [ %1037, %898 ], [ 0.000000e+00, %876 ]
  %1042 = phi float [ %1031, %898 ], [ 1.000000e+00, %876 ]
  %1043 = add i32 %54, 160
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = lshr i32 %1045, 22
  %1047 = shl nuw nsw i32 %1046, 5
  %1048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1047)  ; LegacyF16ToF32(value)
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 64
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1086, label %1053

; <label>:1053                                    ; preds = %1038
  %1054 = add i32 %54, 424
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = add i32 %1056, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = and i32 %1060, 131072
  %1062 = icmp eq i32 %1061, 0
  %1063 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1058, %dx.types.Handle %100, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.f32 %1063, 2
  %1067 = fmul fast float %1064, %267
  %1068 = fmul fast float %1065, %270
  %1069 = fmul fast float %1066, %273
  br i1 %1062, label %1076, label %1070

; <label>:1070                                    ; preds = %1053
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = fmul fast float %1072, %1067
  %1074 = fmul fast float %1072, %1068
  %1075 = fmul fast float %1072, %1069
  br label %1076

; <label>:1076                                    ; preds = %1070, %1053
  %1077 = phi float [ %1073, %1070 ], [ %1067, %1053 ]
  %1078 = phi float [ %1074, %1070 ], [ %1068, %1053 ]
  %1079 = phi float [ %1075, %1070 ], [ %1069, %1053 ]
  %1080 = fmul fast float %1077, %1048
  %1081 = select i1 %250, float %1080, float %1077
  %1082 = call float @dx.op.dot3.f32(i32 55, float %1081, float %1078, float %1079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1083 = select i1 %250, float 0.000000e+00, float %1077
  %1084 = select i1 %250, float %1082, float %1078
  %1085 = select i1 %250, float 0.000000e+00, float %1079
  br label %1086

; <label>:1086                                    ; preds = %1076, %1038
  %1087 = phi float [ %1083, %1076 ], [ 0.000000e+00, %1038 ]
  %1088 = phi float [ %1084, %1076 ], [ 0.000000e+00, %1038 ]
  %1089 = phi float [ %1085, %1076 ], [ 0.000000e+00, %1038 ]
  %1090 = add i32 %54, 96
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 255
  %1094 = uitofp i32 %1093 to float
  %1095 = lshr i32 %1092, 8
  %1096 = and i32 %1095, 255
  %1097 = uitofp i32 %1096 to float
  %1098 = call float @dx.op.dot3.f32(i32 55, float %891, float %892, float %893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = fmul fast float %1097, %1098
  %1100 = fadd fast float %1099, %1094
  %1101 = fmul fast float %1100, 0x3F70101020000000
  %1102 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  br label %1103

; <label>:1103                                    ; preds = %1086, %486
  %1104 = phi float [ 0.000000e+00, %486 ], [ %1040, %1086 ]
  %1105 = phi float [ 0.000000e+00, %486 ], [ %1041, %1086 ]
  %1106 = phi float [ 0.000000e+00, %486 ], [ %1087, %1086 ]
  %1107 = phi float [ 0.000000e+00, %486 ], [ %1088, %1086 ]
  %1108 = phi float [ 0.000000e+00, %486 ], [ %1089, %1086 ]
  %1109 = phi float [ 0.000000e+00, %486 ], [ %891, %1086 ]
  %1110 = phi float [ 0.000000e+00, %486 ], [ %892, %1086 ]
  %1111 = phi float [ 0.000000e+00, %486 ], [ %893, %1086 ]
  %1112 = phi float [ 0.000000e+00, %486 ], [ %877, %1086 ]
  %1113 = phi float [ 0.000000e+00, %486 ], [ %673, %1086 ]
  %1114 = phi float [ 0.000000e+00, %486 ], [ %1039, %1086 ]
  %1115 = phi float [ 0.000000e+00, %486 ], [ %1042, %1086 ]
  %1116 = phi float [ 0.000000e+00, %486 ], [ %1102, %1086 ]
  br i1 %434, label %1843, label %1117

; <label>:1117                                    ; preds = %1103
  %1118 = icmp ult i32 %492, 2
  %1119 = add i32 %54, 40
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = add i32 %54, 44
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = or i32 %1124, %1121
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1843, label %1127

; <label>:1127                                    ; preds = %1117
  %1128 = and i32 %1121, 262144
  %1129 = icmp ne i32 %1128, 0
  %1130 = select i1 %1129, float %59, float 1.000000e+00
  %1131 = select i1 %1129, float %60, float 0.000000e+00
  %1132 = select i1 %1129, float %61, float 0.000000e+00
  %1133 = select i1 %1129, float %62, float 1.000000e+00
  %1134 = select i1 %1129, float %63, float %86
  %1135 = select i1 %1129, float %64, float %87
  %1136 = add i32 %54, 300
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = lshr i32 %1138, 16
  %1140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1139)  ; LegacyF16ToF32(value)
  %1141 = fmul fast float %1140, 0x3F50624DE0000000
  %1142 = add i32 %54, 104
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = lshr i32 %1144, 16
  %1146 = and i32 %1145, 255
  %1147 = lshr i32 %1144, 24
  %1148 = add i32 %54, 308
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = and i32 %1150, 65535
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = lshr i32 %1150, 16
  %1154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1153)  ; LegacyF16ToF32(value)
  %1155 = add i32 %54, 48
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = lshr i32 %1157, 22
  %1159 = shl nuw nsw i32 %1158, 5
  %1160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1159)  ; LegacyF16ToF32(value)
  %1161 = shl i32 %1157, 4
  %1162 = and i32 %1161, 32752
  %1163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1162)  ; LegacyF16ToF32(value)
  %1164 = lshr i32 %1157, 7
  %1165 = and i32 %1164, 32752
  %1166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1165)  ; LegacyF16ToF32(value)
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 3
  %1169 = fmul fast float %1168, 1.000000e+03
  %1170 = fmul fast float %344, %1169
  %1171 = call float @dx.op.unary.f32(i32 22, float %1170)  ; Frc(value)
  %1172 = fadd fast float %1171, %334
  %1173 = fmul fast float %345, %1169
  %1174 = call float @dx.op.unary.f32(i32 22, float %1173)  ; Frc(value)
  %1175 = fadd fast float %1174, %336
  %1176 = fmul fast float %1141, %1169
  %1177 = call float @dx.op.unary.f32(i32 22, float %1176)  ; Frc(value)
  %1178 = fmul fast float %1177, 0x401921FB60000000
  %1179 = fadd fast float %1178, %1160
  %1180 = call float @dx.op.unary.f32(i32 13, float %1179)  ; Sin(value)
  %1181 = call float @dx.op.unary.f32(i32 12, float %1179)  ; Cos(value)
  %1182 = fsub fast float -0.000000e+00, %1180
  %1183 = fadd fast float %1134, -5.000000e-01
  %1184 = fadd fast float %1135, -5.000000e-01
  %1185 = fmul fast float %1152, %1183
  %1186 = fmul fast float %1154, %1184
  %1187 = fadd fast float %1185, 5.000000e-01
  %1188 = fadd fast float %1186, 5.000000e-01
  %1189 = fmul fast float %1163, %1187
  %1190 = fmul fast float %1166, %1188
  %1191 = fmul fast float %1181, %1189
  %1192 = call float @dx.op.tertiary.f32(i32 46, float %1182, float %1190, float %1191)  ; FMad(a,b,c)
  %1193 = fmul fast float %1180, %1189
  %1194 = call float @dx.op.tertiary.f32(i32 46, float %1181, float %1190, float %1193)  ; FMad(a,b,c)
  %1195 = fadd fast float %1172, %1192
  %1196 = fadd fast float %1175, %1194
  %1197 = icmp ugt i32 %1146, 1
  %1198 = icmp ugt i32 %1144, 33554431
  %1199 = or i1 %1198, %1197
  br i1 %1199, label %1200, label %1225

; <label>:1200                                    ; preds = %1127
  %1201 = add i32 %54, 244
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = lshr i32 %1203, 16
  %1205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1204)  ; LegacyF16ToF32(value)
  %1206 = fmul fast float %1168, %1205
  %1207 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1208 = mul nuw nsw i32 %1146, %1147
  %1209 = uitofp i32 %1208 to float
  %1210 = fmul fast float %1207, %1209
  %1211 = call float @dx.op.unary.f32(i32 27, float %1210)  ; Round_ni(value)
  %1212 = fptoui float %1211 to i32
  %1213 = urem i32 %1212, %1146
  %1214 = udiv i32 %1212, %1147
  %1215 = call float @dx.op.unary.f32(i32 22, float %1195)  ; Frc(value)
  %1216 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1217 = uitofp i32 %1213 to float
  %1218 = uitofp i32 %1214 to float
  %1219 = fadd fast float %1215, %1217
  %1220 = fadd fast float %1216, %1218
  %1221 = uitofp i32 %1146 to float
  %1222 = uitofp i32 %1147 to float
  %1223 = fdiv fast float %1219, %1221
  %1224 = fdiv fast float %1220, %1222
  br label %1225

; <label>:1225                                    ; preds = %1200, %1127
  %1226 = phi float [ %1223, %1200 ], [ %1195, %1127 ]
  %1227 = phi float [ %1224, %1200 ], [ %1196, %1127 ]
  %1228 = and i32 %1121, 256
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %1276, label %1230

; <label>:1230                                    ; preds = %1225
  %1231 = add i32 %54, 460
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = add i32 %1233, 0
  %1235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1235, %dx.types.Handle %101, float %1226, float %1227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = add i32 %54, 116
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = shl i32 %1240, 4
  %1242 = and i32 %1241, 32752
  %1243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1242)  ; LegacyF16ToF32(value)
  %1244 = lshr i32 %1240, 7
  %1245 = and i32 %1244, 32752
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = fsub fast float 1.000000e+00, %489
  %1248 = call float @dx.op.binary.f32(i32 35, float %1247, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1249 = bitcast float %489 to i32
  %1250 = sitofp i32 %1249 to float
  %1251 = fadd fast float %1250, 0xC1CFBF8940000000
  %1252 = fmul fast float %1246, %1251
  %1253 = fadd fast float %1252, 0x41CFBF8940000000
  %1254 = fptosi float %1253 to i32
  %1255 = bitcast i32 %1254 to float
  %1256 = bitcast float %1248 to i32
  %1257 = sitofp i32 %1256 to float
  %1258 = fadd fast float %1257, 0xC1CFBF8940000000
  %1259 = fmul fast float %1258, %1246
  %1260 = fadd fast float %1259, 0x41CFBF8940000000
  %1261 = fptosi float %1260 to i32
  %1262 = bitcast i32 %1261 to float
  %1263 = fmul fast float %1255, %1243
  %1264 = fmul fast float %1262, %1243
  %1265 = fsub fast float %1248, %1263
  %1266 = fadd fast float %1264, %1248
  %1267 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1268 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1269 = fsub fast float %1237, %1267
  %1270 = fsub fast float %1268, %1267
  %1271 = bitcast float %1270 to i32
  %1272 = sub nsw i32 2129859010, %1271
  %1273 = bitcast i32 %1272 to float
  %1274 = fmul fast float %1273, %1269
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  br label %1276

; <label>:1276                                    ; preds = %1230, %1225
  %1277 = phi float [ %1275, %1230 ], [ %489, %1225 ]
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 128
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1298, label %1282

; <label>:1282                                    ; preds = %1276
  %1283 = add i32 %54, 444
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = add i32 %1285, 0
  %1287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1287, %dx.types.Handle %101, float %1226, float %1227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = and i32 %1291, 524288
  %1293 = icmp ne i32 %1292, 0
  %1294 = fcmp fast ogt float %1289, 0x3FE0101020000000
  %1295 = select i1 %1294, float 1.000000e+00, float 0.000000e+00
  %1296 = select i1 %1293, float %1295, float %1289
  %1297 = fmul fast float %1296, %1277
  br label %1298

; <label>:1298                                    ; preds = %1282, %1276
  %1299 = phi float [ %1297, %1282 ], [ %1277, %1276 ]
  %1300 = fcmp fast ult float %1299, 0x3F70101020000000
  br i1 %1300, label %1843, label %1301

; <label>:1301                                    ; preds = %1298
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 16
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1504, label %1306

; <label>:1306                                    ; preds = %1301
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = add i32 %54, 396
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = add i32 %1311, 0
  %1313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1312, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1314 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1313, %dx.types.Handle %100, float %1226, float %1227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.ResRet.f32 %1314, 1
  %1317 = extractvalue %dx.types.ResRet.f32 %1314, 2
  %1318 = extractvalue %dx.types.ResRet.f32 %1314, 3
  %1319 = and i32 %1308, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = lshr i32 %1308, 8
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1318, %1320
  %1325 = fadd fast float %1324, %1323
  %1326 = fmul fast float %1325, 0x3F70101000000000
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = and i32 %1328, 512
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1339, label %1331

; <label>:1331                                    ; preds = %1306
  %1332 = add i32 %54, 476
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = add i32 %1334, 0
  %1336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1336, %dx.types.Handle %101, float %1226, float %1227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  br label %1339

; <label>:1339                                    ; preds = %1331, %1306
  %1340 = phi float [ %1338, %1331 ], [ 1.000000e+00, %1306 ]
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = and i32 %1342, 33554432
  %1344 = icmp eq i32 %1343, 0
  br i1 %1344, label %1451, label %1345

; <label>:1345                                    ; preds = %1339
  %1346 = add i32 %54, 240
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 65535
  %1350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1349)  ; LegacyF16ToF32(value)
  %1351 = lshr i32 %1348, 16
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = add i32 %54, 244
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1353, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = and i32 %1355, 65535
  %1357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1356)  ; LegacyF16ToF32(value)
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = lshr i32 %1359, 24
  %1361 = uitofp i32 %1360 to float
  %1362 = fmul fast float %1361, 0x3F70101020000000
  %1363 = and i32 %1359, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = fmul fast float %1364, 0x3F70101020000000
  %1366 = lshr i32 %1359, 8
  %1367 = and i32 %1366, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = fmul fast float %1368, 0x3F70101020000000
  %1370 = lshr i32 %1359, 16
  %1371 = and i32 %1370, 255
  %1372 = uitofp i32 %1371 to float
  %1373 = fmul fast float %1372, 0x3F70101020000000
  %1374 = add i32 %54, 236
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = lshr i32 %1376, 24
  %1378 = uitofp i32 %1377 to float
  %1379 = fmul fast float %1378, 0x3F70101020000000
  %1380 = and i32 %1376, 255
  %1381 = uitofp i32 %1380 to float
  %1382 = fmul fast float %1381, 0x3F70101020000000
  %1383 = lshr i32 %1376, 8
  %1384 = and i32 %1383, 255
  %1385 = uitofp i32 %1384 to float
  %1386 = fmul fast float %1385, 0x3F70101020000000
  %1387 = lshr i32 %1376, 16
  %1388 = and i32 %1387, 255
  %1389 = uitofp i32 %1388 to float
  %1390 = fmul fast float %1389, 0x3F70101020000000
  %1391 = bitcast float %1315 to i32
  %1392 = ashr i32 %1391, 1
  %1393 = sub nsw i32 1597463174, %1392
  %1394 = bitcast i32 %1393 to float
  %1395 = fmul fast float %1315, 5.000000e-01
  %1396 = fmul fast float %1394, %1394
  %1397 = fmul fast float %1396, %1395
  %1398 = fsub fast float 1.500000e+00, %1397
  %1399 = fmul fast float %1394, %1315
  %1400 = fmul fast float %1399, %1398
  %1401 = bitcast float %1316 to i32
  %1402 = ashr i32 %1401, 1
  %1403 = sub nsw i32 1597463174, %1402
  %1404 = bitcast i32 %1403 to float
  %1405 = fmul fast float %1316, 5.000000e-01
  %1406 = fmul fast float %1404, %1404
  %1407 = fmul fast float %1406, %1405
  %1408 = fsub fast float 1.500000e+00, %1407
  %1409 = fmul fast float %1404, %1316
  %1410 = fmul fast float %1409, %1408
  %1411 = bitcast float %1317 to i32
  %1412 = ashr i32 %1411, 1
  %1413 = sub nsw i32 1597463174, %1412
  %1414 = bitcast i32 %1413 to float
  %1415 = fmul fast float %1317, 5.000000e-01
  %1416 = fmul fast float %1414, %1414
  %1417 = fmul fast float %1416, %1415
  %1418 = fsub fast float 1.500000e+00, %1417
  %1419 = fmul fast float %1414, %1317
  %1420 = fmul fast float %1419, %1418
  %1421 = fsub fast float %1400, %1382
  %1422 = fsub fast float %1410, %1386
  %1423 = fsub fast float %1420, %1390
  %1424 = fmul fast float %1421, %1350
  %1425 = fmul fast float %1422, %1352
  %1426 = fmul fast float %1423, %1357
  %1427 = fadd fast float %1424, %1365
  %1428 = fadd fast float %1425, %1369
  %1429 = fadd fast float %1426, %1373
  %1430 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1431 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1432 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1433 = fmul fast float %1430, %1430
  %1434 = fmul fast float %1431, %1431
  %1435 = fmul fast float %1432, %1432
  %1436 = fsub fast float %1433, %1315
  %1437 = fsub fast float %1434, %1316
  %1438 = fsub fast float %1435, %1317
  %1439 = fmul fast float %1436, %1340
  %1440 = fmul fast float %1437, %1340
  %1441 = fmul fast float %1438, %1340
  %1442 = fadd fast float %1439, %1315
  %1443 = fadd fast float %1440, %1316
  %1444 = fadd fast float %1441, %1317
  %1445 = fadd fast float %1362, %1326
  %1446 = fsub fast float %1445, %1379
  %1447 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  %1448 = fsub fast float %1447, %1326
  %1449 = fmul fast float %1448, %1340
  %1450 = fadd fast float %1449, %1326
  br label %1504

; <label>:1451                                    ; preds = %1339
  %1452 = and i32 %1342, 134217728
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1488, label %1454

; <label>:1454                                    ; preds = %1451
  %1455 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %1456 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %1457 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1458 = fadd fast float %1455, -5.000000e-01
  %1459 = fadd fast float %1456, -5.000000e-01
  %1460 = fadd fast float %1457, -5.000000e-01
  %1461 = fmul fast float %1458, %1340
  %1462 = fmul fast float %1459, %1340
  %1463 = fmul fast float %1460, %1340
  %1464 = fadd fast float %1461, 5.000000e-01
  %1465 = fadd fast float %1462, 5.000000e-01
  %1466 = fadd fast float %1463, 5.000000e-01
  %1467 = call float @dx.op.unary.f32(i32 24, float %1315)  ; Sqrt(value)
  %1468 = call float @dx.op.unary.f32(i32 24, float %1316)  ; Sqrt(value)
  %1469 = call float @dx.op.unary.f32(i32 24, float %1317)  ; Sqrt(value)
  %1470 = fmul fast float %1464, 2.000000e+00
  %1471 = fsub fast float 1.000000e+00, %1470
  %1472 = fmul fast float %1471, %1467
  %1473 = fadd fast float %1472, %1470
  %1474 = fmul fast float %1473, %1467
  %1475 = fmul fast float %1465, 2.000000e+00
  %1476 = fsub fast float 1.000000e+00, %1475
  %1477 = fmul fast float %1476, %1468
  %1478 = fadd fast float %1477, %1475
  %1479 = fmul fast float %1478, %1468
  %1480 = fmul fast float %1466, 2.000000e+00
  %1481 = fsub fast float 1.000000e+00, %1480
  %1482 = fmul fast float %1481, %1469
  %1483 = fadd fast float %1482, %1480
  %1484 = fmul fast float %1483, %1469
  %1485 = fmul fast float %1474, %1474
  %1486 = fmul fast float %1479, %1479
  %1487 = fmul fast float %1484, %1484
  br label %1504

; <label>:1488                                    ; preds = %1451
  %1489 = fmul fast float %321, %321
  %1490 = fmul fast float %325, %325
  %1491 = fmul fast float %329, %329
  %1492 = fadd fast float %1489, -1.000000e+00
  %1493 = fadd fast float %1490, -1.000000e+00
  %1494 = fadd fast float %1491, -1.000000e+00
  %1495 = fmul fast float %1340, %1492
  %1496 = fmul fast float %1340, %1493
  %1497 = fmul fast float %1340, %1494
  %1498 = fadd fast float %1495, 1.000000e+00
  %1499 = fadd fast float %1496, 1.000000e+00
  %1500 = fadd fast float %1497, 1.000000e+00
  %1501 = fmul fast float %1498, %1315
  %1502 = fmul fast float %1499, %1316
  %1503 = fmul fast float %1500, %1317
  br label %1504

; <label>:1504                                    ; preds = %1488, %1454, %1345, %1301
  %1505 = phi float [ %1450, %1345 ], [ %1326, %1454 ], [ %1326, %1488 ], [ 0x3FA23C0BE0000000, %1301 ]
  %1506 = phi float [ %1442, %1345 ], [ %1485, %1454 ], [ %1501, %1488 ], [ 1.000000e+00, %1301 ]
  %1507 = phi float [ %1443, %1345 ], [ %1486, %1454 ], [ %1502, %1488 ], [ 1.000000e+00, %1301 ]
  %1508 = phi float [ %1444, %1345 ], [ %1487, %1454 ], [ %1503, %1488 ], [ 1.000000e+00, %1301 ]
  %1509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.i32 %1509, 1
  %1511 = and i32 %1510, 1
  %1512 = icmp ne i32 %1511, 0
  %1513 = add i32 %54, 356
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 32
  %1517 = icmp ne i32 %1516, 0
  %1518 = and i1 %1512, %1517
  %1519 = select i1 %1518, float 1.000000e+00, float %1506
  %1520 = select i1 %1518, float 0x3FD3333340000000, float %1507
  %1521 = select i1 %1518, float 0x3FD3333340000000, float %1508
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 32
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1598, label %1526

; <label>:1526                                    ; preds = %1504
  %1527 = add i32 %54, 108
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = add i32 %54, 412
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = add i32 %1532, 0
  %1534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1534, %dx.types.Handle %100, float %1226, float %1227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = extractvalue %dx.types.ResRet.f32 %1535, 1
  %1538 = extractvalue %dx.types.ResRet.f32 %1535, 2
  %1539 = extractvalue %dx.types.ResRet.f32 %1535, 3
  %1540 = and i32 %1529, 255
  %1541 = uitofp i32 %1540 to float
  %1542 = lshr i32 %1529, 8
  %1543 = and i32 %1542, 255
  %1544 = uitofp i32 %1543 to float
  %1545 = lshr i32 %1529, 16
  %1546 = and i32 %1545, 255
  %1547 = uitofp i32 %1546 to float
  %1548 = fmul fast float %1547, 0x3F70101000000000
  %1549 = fmul fast float %1536, %1541
  %1550 = fadd fast float %1549, %1544
  %1551 = fmul fast float %1550, 0x3F70101000000000
  %1552 = fadd fast float %1537, -5.000000e-01
  %1553 = fadd fast float %1539, -5.000000e-01
  %1554 = fmul fast float %1552, %1548
  %1555 = fmul fast float %1553, %1548
  %1556 = fadd fast float %1554, 5.000000e-01
  %1557 = fadd fast float %1555, 5.000000e-01
  %1558 = fmul fast float %1556, 2.000000e+00
  %1559 = fadd fast float %1558, -1.000000e+00
  %1560 = fmul fast float %1557, 2.000000e+00
  %1561 = fadd fast float %1560, -1.000000e+00
  %1562 = fadd fast float %1559, %1561
  %1563 = fmul fast float %1562, 5.000000e-01
  %1564 = fsub fast float %1559, %1561
  %1565 = fmul fast float %1564, 5.000000e-01
  %1566 = call float @dx.op.unary.f32(i32 6, float %1563)  ; FAbs(value)
  %1567 = fsub fast float 1.000000e+00, %1566
  %1568 = call float @dx.op.unary.f32(i32 6, float %1565)  ; FAbs(value)
  %1569 = fsub fast float %1567, %1568
  %1570 = call float @dx.op.dot3.f32(i32 55, float %1563, float %1565, float %1569, float %1563, float %1565, float %1569)  ; Dot3(ax,ay,az,bx,by,bz)
  %1571 = call float @dx.op.unary.f32(i32 25, float %1570)  ; Rsqrt(value)
  %1572 = fmul fast float %1563, %1571
  %1573 = fmul fast float %1565, %1571
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 67108864
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1594, label %1578

; <label>:1578                                    ; preds = %1526
  %1579 = add i32 %54, 296
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 65535
  %1583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1582)  ; LegacyF16ToF32(value)
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 65535
  %1587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1586)  ; LegacyF16ToF32(value)
  %1588 = lshr i32 %1581, 16
  %1589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1588)  ; LegacyF16ToF32(value)
  %1590 = fsub fast float %1551, %1589
  %1591 = fmul fast float %1590, %1583
  %1592 = fadd fast float %1591, %1587
  %1593 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  br label %1594

; <label>:1594                                    ; preds = %1578, %1526
  %1595 = phi float [ %1593, %1578 ], [ %1551, %1526 ]
  %1596 = call float @dx.op.dot2.f32(i32 54, float %1572, float %1573, float %1130, float %1131)  ; Dot2(ax,ay,bx,by)
  %1597 = call float @dx.op.dot2.f32(i32 54, float %1572, float %1573, float %1132, float %1133)  ; Dot2(ax,ay,bx,by)
  br label %1598

; <label>:1598                                    ; preds = %1594, %1504
  %1599 = phi float [ %1595, %1594 ], [ 0x3FD6666660000000, %1504 ]
  %1600 = phi float [ %1596, %1594 ], [ 0.000000e+00, %1504 ]
  %1601 = phi float [ %1597, %1594 ], [ 0.000000e+00, %1504 ]
  %1602 = phi float [ %1538, %1594 ], [ 1.000000e+00, %1504 ]
  %1603 = add i32 %54, 176
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = lshr i32 %1605, 22
  %1607 = shl nuw nsw i32 %1606, 5
  %1608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1607)  ; LegacyF16ToF32(value)
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 64
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1646, label %1613

; <label>:1613                                    ; preds = %1598
  %1614 = add i32 %54, 428
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = add i32 %1616, 0
  %1618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 131072
  %1622 = icmp eq i32 %1621, 0
  %1623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1618, %dx.types.Handle %100, float %1226, float %1227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1624 = extractvalue %dx.types.ResRet.f32 %1623, 0
  %1625 = extractvalue %dx.types.ResRet.f32 %1623, 1
  %1626 = extractvalue %dx.types.ResRet.f32 %1623, 2
  %1627 = fmul fast float %1624, %309
  %1628 = fmul fast float %1625, %312
  %1629 = fmul fast float %1626, %315
  br i1 %1622, label %1636, label %1630

; <label>:1630                                    ; preds = %1613
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = fmul fast float %1632, %1627
  %1634 = fmul fast float %1632, %1628
  %1635 = fmul fast float %1632, %1629
  br label %1636

; <label>:1636                                    ; preds = %1630, %1613
  %1637 = phi float [ %1633, %1630 ], [ %1627, %1613 ]
  %1638 = phi float [ %1634, %1630 ], [ %1628, %1613 ]
  %1639 = phi float [ %1635, %1630 ], [ %1629, %1613 ]
  %1640 = fmul fast float %1637, %1608
  %1641 = select i1 %250, float %1640, float %1637
  %1642 = call float @dx.op.dot3.f32(i32 55, float %1641, float %1638, float %1639, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1643 = select i1 %250, float 0.000000e+00, float %1637
  %1644 = select i1 %250, float %1642, float %1638
  %1645 = select i1 %250, float 0.000000e+00, float %1639
  br label %1646

; <label>:1646                                    ; preds = %1636, %1598
  %1647 = phi float [ %1643, %1636 ], [ 0.000000e+00, %1598 ]
  %1648 = phi float [ %1644, %1636 ], [ 0.000000e+00, %1598 ]
  %1649 = phi float [ %1645, %1636 ], [ 0.000000e+00, %1598 ]
  %1650 = add i32 %54, 112
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = and i32 %1652, 255
  %1654 = uitofp i32 %1653 to float
  %1655 = lshr i32 %1652, 8
  %1656 = and i32 %1655, 255
  %1657 = uitofp i32 %1656 to float
  %1658 = call float @dx.op.dot3.f32(i32 55, float %1519, float %1520, float %1521, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1659 = fmul fast float %1657, %1658
  %1660 = fadd fast float %1659, %1654
  %1661 = fmul fast float %1660, 0x3F70101020000000
  %1662 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  br i1 %1118, label %1663, label %1671

; <label>:1663                                    ; preds = %1646
  %1664 = fsub fast float 1.000000e+00, %1299
  %1665 = fmul fast float %1664, %1109
  %1666 = fmul fast float %1664, %1110
  %1667 = fmul fast float %1664, %1111
  %1668 = fmul fast float %1664, %1106
  %1669 = fmul fast float %1664, %1107
  %1670 = fmul fast float %1664, %1108
  br label %1671

; <label>:1671                                    ; preds = %1663, %1646
  %1672 = phi float [ %1668, %1663 ], [ %1106, %1646 ]
  %1673 = phi float [ %1669, %1663 ], [ %1107, %1646 ]
  %1674 = phi float [ %1670, %1663 ], [ %1108, %1646 ]
  %1675 = phi float [ %1665, %1663 ], [ %1109, %1646 ]
  %1676 = phi float [ %1666, %1663 ], [ %1110, %1646 ]
  %1677 = phi float [ %1667, %1663 ], [ %1111, %1646 ]
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = and i32 %1679, 3
  %1681 = icmp eq i32 %1680, 3
  br i1 %1681, label %1760, label %1682

; <label>:1682                                    ; preds = %1671
  %1683 = and i32 %1679, 16
  %1684 = icmp ne i32 %1683, 0
  %1685 = select i1 %1684, float %1299, float 0.000000e+00
  %1686 = icmp eq i32 %1680, 0
  br i1 %1686, label %1687, label %1715

; <label>:1687                                    ; preds = %1682
  %1688 = and i32 %1679, 64
  %1689 = icmp ne i32 %1688, 0
  %1690 = select i1 %1689, float %1299, float 0.000000e+00
  %1691 = fsub fast float %1519, %1675
  %1692 = fsub fast float %1520, %1676
  %1693 = fsub fast float %1521, %1677
  %1694 = fmul fast float %1685, %1691
  %1695 = fmul fast float %1685, %1692
  %1696 = fmul fast float %1685, %1693
  %1697 = fadd fast float %1694, %1675
  %1698 = fadd fast float %1695, %1676
  %1699 = fadd fast float %1696, %1677
  %1700 = fsub fast float %1505, %1112
  %1701 = fmul fast float %1685, %1700
  %1702 = fadd fast float %1701, %1112
  %1703 = fsub fast float %1647, %1672
  %1704 = fsub fast float %1648, %1673
  %1705 = fsub fast float %1649, %1674
  %1706 = fmul fast float %1690, %1703
  %1707 = fmul fast float %1690, %1704
  %1708 = fmul fast float %1690, %1705
  %1709 = fadd fast float %1706, %1672
  %1710 = fadd fast float %1707, %1673
  %1711 = fadd fast float %1708, %1674
  %1712 = fsub fast float %1662, %1116
  %1713 = fmul fast float %1685, %1712
  %1714 = fadd fast float %1713, %1116
  br label %1760

; <label>:1715                                    ; preds = %1682
  %1716 = icmp eq i32 %1680, 1
  br i1 %1716, label %1717, label %1730

; <label>:1717                                    ; preds = %1715
  %1718 = fadd fast float %1519, -1.000000e+00
  %1719 = fadd fast float %1520, -1.000000e+00
  %1720 = fadd fast float %1521, -1.000000e+00
  %1721 = fmul fast float %1685, %1718
  %1722 = fmul fast float %1685, %1719
  %1723 = fmul fast float %1685, %1720
  %1724 = fadd fast float %1721, 1.000000e+00
  %1725 = fadd fast float %1722, 1.000000e+00
  %1726 = fadd fast float %1723, 1.000000e+00
  %1727 = fmul fast float %1724, %1675
  %1728 = fmul fast float %1725, %1676
  %1729 = fmul fast float %1726, %1677
  br label %1760

; <label>:1730                                    ; preds = %1715
  %1731 = icmp eq i32 %1680, 2
  br i1 %1731, label %1732, label %1760

; <label>:1732                                    ; preds = %1730
  %1733 = call float @dx.op.unary.f32(i32 24, float %1519)  ; Sqrt(value)
  %1734 = call float @dx.op.unary.f32(i32 24, float %1520)  ; Sqrt(value)
  %1735 = call float @dx.op.unary.f32(i32 24, float %1521)  ; Sqrt(value)
  %1736 = fadd fast float %1733, -5.000000e-01
  %1737 = fadd fast float %1734, -5.000000e-01
  %1738 = fadd fast float %1735, -5.000000e-01
  %1739 = fmul fast float %1736, %1685
  %1740 = fmul fast float %1737, %1685
  %1741 = fmul fast float %1738, %1685
  %1742 = fadd fast float %1739, 5.000000e-01
  %1743 = fadd fast float %1740, 5.000000e-01
  %1744 = fadd fast float %1741, 5.000000e-01
  %1745 = fmul fast float %1742, 2.000000e+00
  %1746 = fsub fast float 1.000000e+00, %1745
  %1747 = fmul fast float %1746, %1675
  %1748 = fadd fast float %1747, %1745
  %1749 = fmul fast float %1748, %1675
  %1750 = fmul fast float %1743, 2.000000e+00
  %1751 = fsub fast float 1.000000e+00, %1750
  %1752 = fmul fast float %1751, %1676
  %1753 = fadd fast float %1752, %1750
  %1754 = fmul fast float %1753, %1676
  %1755 = fmul fast float %1744, 2.000000e+00
  %1756 = fsub fast float 1.000000e+00, %1755
  %1757 = fmul fast float %1756, %1677
  %1758 = fadd fast float %1757, %1755
  %1759 = fmul fast float %1758, %1677
  br label %1760

; <label>:1760                                    ; preds = %1732, %1730, %1717, %1687, %1671
  %1761 = phi float [ %1672, %1671 ], [ %1672, %1732 ], [ %1672, %1730 ], [ %1672, %1717 ], [ %1709, %1687 ]
  %1762 = phi float [ %1673, %1671 ], [ %1673, %1732 ], [ %1673, %1730 ], [ %1673, %1717 ], [ %1710, %1687 ]
  %1763 = phi float [ %1674, %1671 ], [ %1674, %1732 ], [ %1674, %1730 ], [ %1674, %1717 ], [ %1711, %1687 ]
  %1764 = phi float [ %1675, %1671 ], [ %1749, %1732 ], [ %1675, %1730 ], [ %1727, %1717 ], [ %1697, %1687 ]
  %1765 = phi float [ %1676, %1671 ], [ %1754, %1732 ], [ %1676, %1730 ], [ %1728, %1717 ], [ %1698, %1687 ]
  %1766 = phi float [ %1677, %1671 ], [ %1759, %1732 ], [ %1677, %1730 ], [ %1729, %1717 ], [ %1699, %1687 ]
  %1767 = phi float [ %1112, %1671 ], [ %1112, %1732 ], [ %1112, %1730 ], [ %1112, %1717 ], [ %1702, %1687 ]
  %1768 = phi float [ %1116, %1671 ], [ %1116, %1732 ], [ %1116, %1730 ], [ %1116, %1717 ], [ %1714, %1687 ]
  %1769 = and i32 %1679, 12
  %1770 = icmp eq i32 %1769, 12
  br i1 %1770, label %1843, label %1771

; <label>:1771                                    ; preds = %1760
  %1772 = and i32 %1679, 2097184
  %1773 = icmp eq i32 %1772, 2097184
  %1774 = select i1 %1773, float %1299, float 0.000000e+00
  %1775 = and i32 %1679, 4194336
  %1776 = icmp eq i32 %1775, 4194336
  %1777 = select i1 %1776, float %1299, float 0.000000e+00
  %1778 = and i32 %1679, 8388640
  %1779 = icmp eq i32 %1778, 8388640
  %1780 = select i1 %1779, float %1299, float 0.000000e+00
  %1781 = icmp eq i32 %1769, 0
  br i1 %1781, label %1782, label %1795

; <label>:1782                                    ; preds = %1771
  %1783 = fsub fast float %1600, %1104
  %1784 = fsub fast float %1601, %1105
  %1785 = fmul fast float %1774, %1783
  %1786 = fmul fast float %1774, %1784
  %1787 = fadd fast float %1785, %1104
  %1788 = fadd fast float %1786, %1105
  %1789 = fsub fast float %1602, %1115
  %1790 = fmul fast float %1777, %1789
  %1791 = fadd fast float %1790, %1115
  %1792 = fsub fast float %1599, %1114
  %1793 = fmul fast float %1780, %1792
  %1794 = fadd fast float %1793, %1114
  br label %1843

; <label>:1795                                    ; preds = %1771
  %1796 = icmp eq i32 %1769, 4
  br i1 %1796, label %1797, label %1829

; <label>:1797                                    ; preds = %1795
  %1798 = fmul fast float %1774, %1600
  %1799 = fmul fast float %1774, %1601
  %1800 = fadd fast float %1798, %1104
  %1801 = fadd fast float %1799, %1105
  %1802 = call float @dx.op.binary.f32(i32 36, float %1115, float %1602)  ; FMin(a,b)
  %1803 = fsub fast float %1802, %1115
  %1804 = fmul fast float %1803, %1777
  %1805 = fadd fast float %1804, %1115
  %1806 = fadd fast float %1599, %1114
  %1807 = fmul fast float %1806, 0x3FF337FAE0000000
  %1808 = fmul fast float %1114, %1114
  %1809 = fmul fast float %1599, %1599
  %1810 = fadd fast float %1809, %1808
  %1811 = fmul fast float %1810, 0x3FE5152B00000000
  %1812 = fmul fast float %1114, 0xBFCC1F85E0000000
  %1813 = fmul fast float %1812, %1599
  %1814 = fadd fast float %1813, 0xBFE1363700000000
  %1815 = fadd fast float %1814, %1807
  %1816 = fsub fast float %1815, %1811
  %1817 = fmul fast float %1806, 0x3FBA6F0D00000000
  %1818 = fmul fast float %1810, 0x3FD0432880000000
  %1819 = fmul fast float %1114, 0xBFEF110800000000
  %1820 = fmul fast float %1819, %1599
  %1821 = fadd fast float %1820, 1.000000e+00
  %1822 = fsub fast float %1821, %1817
  %1823 = fadd fast float %1822, %1818
  %1824 = fdiv fast float %1816, %1823
  %1825 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  %1826 = fsub fast float %1825, %1114
  %1827 = fmul fast float %1826, %1780
  %1828 = fadd fast float %1827, %1114
  br label %1843

; <label>:1829                                    ; preds = %1795
  %1830 = icmp eq i32 %1769, 8
  br i1 %1830, label %1831, label %1843

; <label>:1831                                    ; preds = %1829
  %1832 = fmul fast float %1774, %1600
  %1833 = fmul fast float %1774, %1601
  %1834 = fadd fast float %1832, %1104
  %1835 = fadd fast float %1833, %1105
  %1836 = call float @dx.op.binary.f32(i32 36, float %1115, float %1602)  ; FMin(a,b)
  %1837 = fsub fast float %1836, %1115
  %1838 = fmul fast float %1837, %1777
  %1839 = fadd fast float %1838, %1115
  %1840 = fsub fast float %1599, %1114
  %1841 = fmul fast float %1780, %1840
  %1842 = fadd fast float %1841, %1114
  br label %1843

; <label>:1843                                    ; preds = %1831, %1829, %1797, %1782, %1760, %1298, %1117, %1103
  %1844 = phi float [ %1104, %1760 ], [ %1104, %1298 ], [ %1104, %1103 ], [ %1834, %1831 ], [ %1104, %1829 ], [ %1800, %1797 ], [ %1787, %1782 ], [ %1104, %1117 ]
  %1845 = phi float [ %1105, %1760 ], [ %1105, %1298 ], [ %1105, %1103 ], [ %1835, %1831 ], [ %1105, %1829 ], [ %1801, %1797 ], [ %1788, %1782 ], [ %1105, %1117 ]
  %1846 = phi float [ %1761, %1760 ], [ %1106, %1298 ], [ %1106, %1103 ], [ %1761, %1831 ], [ %1761, %1829 ], [ %1761, %1797 ], [ %1761, %1782 ], [ %1106, %1117 ]
  %1847 = phi float [ %1762, %1760 ], [ %1107, %1298 ], [ %1107, %1103 ], [ %1762, %1831 ], [ %1762, %1829 ], [ %1762, %1797 ], [ %1762, %1782 ], [ %1107, %1117 ]
  %1848 = phi float [ %1763, %1760 ], [ %1108, %1298 ], [ %1108, %1103 ], [ %1763, %1831 ], [ %1763, %1829 ], [ %1763, %1797 ], [ %1763, %1782 ], [ %1108, %1117 ]
  %1849 = phi float [ %1764, %1760 ], [ %1109, %1298 ], [ %1109, %1103 ], [ %1764, %1831 ], [ %1764, %1829 ], [ %1764, %1797 ], [ %1764, %1782 ], [ %1109, %1117 ]
  %1850 = phi float [ %1765, %1760 ], [ %1110, %1298 ], [ %1110, %1103 ], [ %1765, %1831 ], [ %1765, %1829 ], [ %1765, %1797 ], [ %1765, %1782 ], [ %1110, %1117 ]
  %1851 = phi float [ %1766, %1760 ], [ %1111, %1298 ], [ %1111, %1103 ], [ %1766, %1831 ], [ %1766, %1829 ], [ %1766, %1797 ], [ %1766, %1782 ], [ %1111, %1117 ]
  %1852 = phi float [ %1767, %1760 ], [ %1112, %1298 ], [ %1112, %1103 ], [ %1767, %1831 ], [ %1767, %1829 ], [ %1767, %1797 ], [ %1767, %1782 ], [ %1112, %1117 ]
  %1853 = phi float [ %1114, %1760 ], [ %1114, %1298 ], [ %1114, %1103 ], [ %1842, %1831 ], [ %1114, %1829 ], [ %1828, %1797 ], [ %1794, %1782 ], [ %1114, %1117 ]
  %1854 = phi float [ %1115, %1760 ], [ %1115, %1298 ], [ %1115, %1103 ], [ %1839, %1831 ], [ %1115, %1829 ], [ %1805, %1797 ], [ %1791, %1782 ], [ %1115, %1117 ]
  %1855 = phi float [ %1768, %1760 ], [ %1116, %1298 ], [ %1116, %1103 ], [ %1768, %1831 ], [ %1768, %1829 ], [ %1768, %1797 ], [ %1768, %1782 ], [ %1116, %1117 ]
  br i1 %436, label %2582, label %1856

; <label>:1856                                    ; preds = %1843
  %1857 = icmp ult i32 %492, 3
  %1858 = add i32 %54, 56
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = add i32 %54, 60
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = or i32 %1863, %1860
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %2582, label %1866

; <label>:1866                                    ; preds = %1856
  %1867 = and i32 %1860, 262144
  %1868 = icmp ne i32 %1867, 0
  %1869 = select i1 %1868, float %59, float 1.000000e+00
  %1870 = select i1 %1868, float %60, float 0.000000e+00
  %1871 = select i1 %1868, float %61, float 0.000000e+00
  %1872 = select i1 %1868, float %62, float 1.000000e+00
  %1873 = select i1 %1868, float %63, float %86
  %1874 = select i1 %1868, float %64, float %87
  %1875 = add i32 %54, 316
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = lshr i32 %1877, 16
  %1879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1878)  ; LegacyF16ToF32(value)
  %1880 = fmul fast float %1879, 0x3F50624DE0000000
  %1881 = add i32 %54, 120
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = lshr i32 %1883, 16
  %1885 = and i32 %1884, 255
  %1886 = lshr i32 %1883, 24
  %1887 = add i32 %54, 324
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %1889, 65535
  %1891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1890)  ; LegacyF16ToF32(value)
  %1892 = lshr i32 %1889, 16
  %1893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1892)  ; LegacyF16ToF32(value)
  %1894 = add i32 %54, 64
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = lshr i32 %1896, 22
  %1898 = shl nuw nsw i32 %1897, 5
  %1899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1898)  ; LegacyF16ToF32(value)
  %1900 = shl i32 %1896, 4
  %1901 = and i32 %1900, 32752
  %1902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1901)  ; LegacyF16ToF32(value)
  %1903 = lshr i32 %1896, 7
  %1904 = and i32 %1903, 32752
  %1905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1904)  ; LegacyF16ToF32(value)
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 3
  %1908 = fmul fast float %1907, 1.000000e+03
  %1909 = fmul fast float %386, %1908
  %1910 = call float @dx.op.unary.f32(i32 22, float %1909)  ; Frc(value)
  %1911 = fadd fast float %1910, %376
  %1912 = fmul fast float %387, %1908
  %1913 = call float @dx.op.unary.f32(i32 22, float %1912)  ; Frc(value)
  %1914 = fadd fast float %1913, %378
  %1915 = fmul fast float %1880, %1908
  %1916 = call float @dx.op.unary.f32(i32 22, float %1915)  ; Frc(value)
  %1917 = fmul fast float %1916, 0x401921FB60000000
  %1918 = fadd fast float %1917, %1899
  %1919 = call float @dx.op.unary.f32(i32 13, float %1918)  ; Sin(value)
  %1920 = call float @dx.op.unary.f32(i32 12, float %1918)  ; Cos(value)
  %1921 = fsub fast float -0.000000e+00, %1919
  %1922 = fadd fast float %1873, -5.000000e-01
  %1923 = fadd fast float %1874, -5.000000e-01
  %1924 = fmul fast float %1891, %1922
  %1925 = fmul fast float %1893, %1923
  %1926 = fadd fast float %1924, 5.000000e-01
  %1927 = fadd fast float %1925, 5.000000e-01
  %1928 = fmul fast float %1902, %1926
  %1929 = fmul fast float %1905, %1927
  %1930 = fmul fast float %1920, %1928
  %1931 = call float @dx.op.tertiary.f32(i32 46, float %1921, float %1929, float %1930)  ; FMad(a,b,c)
  %1932 = fmul fast float %1919, %1928
  %1933 = call float @dx.op.tertiary.f32(i32 46, float %1920, float %1929, float %1932)  ; FMad(a,b,c)
  %1934 = fadd fast float %1911, %1931
  %1935 = fadd fast float %1914, %1933
  %1936 = icmp ugt i32 %1885, 1
  %1937 = icmp ugt i32 %1883, 33554431
  %1938 = or i1 %1937, %1936
  br i1 %1938, label %1939, label %1964

; <label>:1939                                    ; preds = %1866
  %1940 = add i32 %54, 260
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = lshr i32 %1942, 16
  %1944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1943)  ; LegacyF16ToF32(value)
  %1945 = fmul fast float %1907, %1944
  %1946 = call float @dx.op.unary.f32(i32 22, float %1945)  ; Frc(value)
  %1947 = mul nuw nsw i32 %1885, %1886
  %1948 = uitofp i32 %1947 to float
  %1949 = fmul fast float %1946, %1948
  %1950 = call float @dx.op.unary.f32(i32 27, float %1949)  ; Round_ni(value)
  %1951 = fptoui float %1950 to i32
  %1952 = urem i32 %1951, %1885
  %1953 = udiv i32 %1951, %1886
  %1954 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1955 = call float @dx.op.unary.f32(i32 22, float %1935)  ; Frc(value)
  %1956 = uitofp i32 %1952 to float
  %1957 = uitofp i32 %1953 to float
  %1958 = fadd fast float %1954, %1956
  %1959 = fadd fast float %1955, %1957
  %1960 = uitofp i32 %1885 to float
  %1961 = uitofp i32 %1886 to float
  %1962 = fdiv fast float %1958, %1960
  %1963 = fdiv fast float %1959, %1961
  br label %1964

; <label>:1964                                    ; preds = %1939, %1866
  %1965 = phi float [ %1962, %1939 ], [ %1934, %1866 ]
  %1966 = phi float [ %1963, %1939 ], [ %1935, %1866 ]
  %1967 = and i32 %1860, 256
  %1968 = icmp eq i32 %1967, 0
  br i1 %1968, label %2015, label %1969

; <label>:1969                                    ; preds = %1964
  %1970 = add i32 %54, 464
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = add i32 %1972, 0
  %1974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1973, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1975 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1974, %dx.types.Handle %101, float %1965, float %1966, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = add i32 %54, 132
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = shl i32 %1979, 4
  %1981 = and i32 %1980, 32752
  %1982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1981)  ; LegacyF16ToF32(value)
  %1983 = lshr i32 %1979, 7
  %1984 = and i32 %1983, 32752
  %1985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1984)  ; LegacyF16ToF32(value)
  %1986 = fsub fast float 1.000000e+00, %488
  %1987 = call float @dx.op.binary.f32(i32 35, float %1986, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1988 = bitcast float %488 to i32
  %1989 = sitofp i32 %1988 to float
  %1990 = fadd fast float %1989, 0xC1CFBF8940000000
  %1991 = fmul fast float %1985, %1990
  %1992 = fadd fast float %1991, 0x41CFBF8940000000
  %1993 = fptosi float %1992 to i32
  %1994 = bitcast i32 %1993 to float
  %1995 = bitcast float %1987 to i32
  %1996 = sitofp i32 %1995 to float
  %1997 = fadd fast float %1996, 0xC1CFBF8940000000
  %1998 = fmul fast float %1997, %1985
  %1999 = fadd fast float %1998, 0x41CFBF8940000000
  %2000 = fptosi float %1999 to i32
  %2001 = bitcast i32 %2000 to float
  %2002 = fmul fast float %1994, %1982
  %2003 = fmul fast float %2001, %1982
  %2004 = fsub fast float %1987, %2002
  %2005 = fadd fast float %2003, %1987
  %2006 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2007 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  %2008 = fsub fast float %1976, %2006
  %2009 = fsub fast float %2007, %2006
  %2010 = bitcast float %2009 to i32
  %2011 = sub nsw i32 2129859010, %2010
  %2012 = bitcast i32 %2011 to float
  %2013 = fmul fast float %2012, %2008
  %2014 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  br label %2015

; <label>:2015                                    ; preds = %1969, %1964
  %2016 = phi float [ %2014, %1969 ], [ %488, %1964 ]
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = and i32 %2018, 128
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2037, label %2021

; <label>:2021                                    ; preds = %2015
  %2022 = add i32 %54, 448
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = add i32 %2024, 0
  %2026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2026, %dx.types.Handle %101, float %1965, float %1966, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 0
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = and i32 %2030, 524288
  %2032 = icmp ne i32 %2031, 0
  %2033 = fcmp fast ogt float %2028, 0x3FE0101020000000
  %2034 = select i1 %2033, float 1.000000e+00, float 0.000000e+00
  %2035 = select i1 %2032, float %2034, float %2028
  %2036 = fmul fast float %2035, %2016
  br label %2037

; <label>:2037                                    ; preds = %2021, %2015
  %2038 = phi float [ %2036, %2021 ], [ %2016, %2015 ]
  %2039 = fcmp fast ult float %2038, 0x3F70101020000000
  br i1 %2039, label %2582, label %2040

; <label>:2040                                    ; preds = %2037
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = and i32 %2042, 16
  %2044 = icmp eq i32 %2043, 0
  br i1 %2044, label %2243, label %2045

; <label>:2045                                    ; preds = %2040
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = add i32 %54, 400
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = add i32 %2050, 0
  %2052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2051, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2053 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2052, %dx.types.Handle %100, float %1965, float %1966, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.ResRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.ResRet.f32 %2053, 2
  %2057 = extractvalue %dx.types.ResRet.f32 %2053, 3
  %2058 = and i32 %2047, 255
  %2059 = uitofp i32 %2058 to float
  %2060 = lshr i32 %2047, 8
  %2061 = and i32 %2060, 255
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2057, %2059
  %2064 = fadd fast float %2063, %2062
  %2065 = fmul fast float %2064, 0x3F70101000000000
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = and i32 %2067, 512
  %2069 = icmp eq i32 %2068, 0
  br i1 %2069, label %2078, label %2070

; <label>:2070                                    ; preds = %2045
  %2071 = add i32 %54, 480
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = add i32 %2073, 0
  %2075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2075, %dx.types.Handle %101, float %1965, float %1966, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  br label %2078

; <label>:2078                                    ; preds = %2070, %2045
  %2079 = phi float [ %2077, %2070 ], [ 1.000000e+00, %2045 ]
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = and i32 %2081, 33554432
  %2083 = icmp eq i32 %2082, 0
  br i1 %2083, label %2190, label %2084

; <label>:2084                                    ; preds = %2078
  %2085 = add i32 %54, 256
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = and i32 %2087, 65535
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = lshr i32 %2087, 16
  %2091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2090)  ; LegacyF16ToF32(value)
  %2092 = add i32 %54, 260
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = and i32 %2094, 65535
  %2096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2095)  ; LegacyF16ToF32(value)
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = lshr i32 %2098, 24
  %2100 = uitofp i32 %2099 to float
  %2101 = fmul fast float %2100, 0x3F70101020000000
  %2102 = and i32 %2098, 255
  %2103 = uitofp i32 %2102 to float
  %2104 = fmul fast float %2103, 0x3F70101020000000
  %2105 = lshr i32 %2098, 8
  %2106 = and i32 %2105, 255
  %2107 = uitofp i32 %2106 to float
  %2108 = fmul fast float %2107, 0x3F70101020000000
  %2109 = lshr i32 %2098, 16
  %2110 = and i32 %2109, 255
  %2111 = uitofp i32 %2110 to float
  %2112 = fmul fast float %2111, 0x3F70101020000000
  %2113 = add i32 %54, 252
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = lshr i32 %2115, 24
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = and i32 %2115, 255
  %2120 = uitofp i32 %2119 to float
  %2121 = fmul fast float %2120, 0x3F70101020000000
  %2122 = lshr i32 %2115, 8
  %2123 = and i32 %2122, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2124, 0x3F70101020000000
  %2126 = lshr i32 %2115, 16
  %2127 = and i32 %2126, 255
  %2128 = uitofp i32 %2127 to float
  %2129 = fmul fast float %2128, 0x3F70101020000000
  %2130 = bitcast float %2054 to i32
  %2131 = ashr i32 %2130, 1
  %2132 = sub nsw i32 1597463174, %2131
  %2133 = bitcast i32 %2132 to float
  %2134 = fmul fast float %2054, 5.000000e-01
  %2135 = fmul fast float %2133, %2133
  %2136 = fmul fast float %2135, %2134
  %2137 = fsub fast float 1.500000e+00, %2136
  %2138 = fmul fast float %2133, %2054
  %2139 = fmul fast float %2138, %2137
  %2140 = bitcast float %2055 to i32
  %2141 = ashr i32 %2140, 1
  %2142 = sub nsw i32 1597463174, %2141
  %2143 = bitcast i32 %2142 to float
  %2144 = fmul fast float %2055, 5.000000e-01
  %2145 = fmul fast float %2143, %2143
  %2146 = fmul fast float %2145, %2144
  %2147 = fsub fast float 1.500000e+00, %2146
  %2148 = fmul fast float %2143, %2055
  %2149 = fmul fast float %2148, %2147
  %2150 = bitcast float %2056 to i32
  %2151 = ashr i32 %2150, 1
  %2152 = sub nsw i32 1597463174, %2151
  %2153 = bitcast i32 %2152 to float
  %2154 = fmul fast float %2056, 5.000000e-01
  %2155 = fmul fast float %2153, %2153
  %2156 = fmul fast float %2155, %2154
  %2157 = fsub fast float 1.500000e+00, %2156
  %2158 = fmul fast float %2153, %2056
  %2159 = fmul fast float %2158, %2157
  %2160 = fsub fast float %2139, %2121
  %2161 = fsub fast float %2149, %2125
  %2162 = fsub fast float %2159, %2129
  %2163 = fmul fast float %2160, %2089
  %2164 = fmul fast float %2161, %2091
  %2165 = fmul fast float %2162, %2096
  %2166 = fadd fast float %2163, %2104
  %2167 = fadd fast float %2164, %2108
  %2168 = fadd fast float %2165, %2112
  %2169 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2170 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2171 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2172 = fmul fast float %2169, %2169
  %2173 = fmul fast float %2170, %2170
  %2174 = fmul fast float %2171, %2171
  %2175 = fsub fast float %2172, %2054
  %2176 = fsub fast float %2173, %2055
  %2177 = fsub fast float %2174, %2056
  %2178 = fmul fast float %2175, %2079
  %2179 = fmul fast float %2176, %2079
  %2180 = fmul fast float %2177, %2079
  %2181 = fadd fast float %2178, %2054
  %2182 = fadd fast float %2179, %2055
  %2183 = fadd fast float %2180, %2056
  %2184 = fadd fast float %2101, %2065
  %2185 = fsub fast float %2184, %2118
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = fsub fast float %2186, %2065
  %2188 = fmul fast float %2187, %2079
  %2189 = fadd fast float %2188, %2065
  br label %2243

; <label>:2190                                    ; preds = %2078
  %2191 = and i32 %2081, 134217728
  %2192 = icmp eq i32 %2191, 0
  br i1 %2192, label %2227, label %2193

; <label>:2193                                    ; preds = %2190
  %2194 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %2195 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %2196 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2197 = fadd fast float %2194, -5.000000e-01
  %2198 = fadd fast float %2195, -5.000000e-01
  %2199 = fadd fast float %2196, -5.000000e-01
  %2200 = fmul fast float %2197, %2079
  %2201 = fmul fast float %2198, %2079
  %2202 = fmul fast float %2199, %2079
  %2203 = fadd fast float %2200, 5.000000e-01
  %2204 = fadd fast float %2201, 5.000000e-01
  %2205 = fadd fast float %2202, 5.000000e-01
  %2206 = call float @dx.op.unary.f32(i32 24, float %2054)  ; Sqrt(value)
  %2207 = call float @dx.op.unary.f32(i32 24, float %2055)  ; Sqrt(value)
  %2208 = call float @dx.op.unary.f32(i32 24, float %2056)  ; Sqrt(value)
  %2209 = fmul fast float %2203, 2.000000e+00
  %2210 = fsub fast float 1.000000e+00, %2209
  %2211 = fmul fast float %2210, %2206
  %2212 = fadd fast float %2211, %2209
  %2213 = fmul fast float %2212, %2206
  %2214 = fmul fast float %2204, 2.000000e+00
  %2215 = fsub fast float 1.000000e+00, %2214
  %2216 = fmul fast float %2215, %2207
  %2217 = fadd fast float %2216, %2214
  %2218 = fmul fast float %2217, %2207
  %2219 = fmul fast float %2205, 2.000000e+00
  %2220 = fsub fast float 1.000000e+00, %2219
  %2221 = fmul fast float %2220, %2208
  %2222 = fadd fast float %2221, %2219
  %2223 = fmul fast float %2222, %2208
  %2224 = fmul fast float %2213, %2213
  %2225 = fmul fast float %2218, %2218
  %2226 = fmul fast float %2223, %2223
  br label %2243

; <label>:2227                                    ; preds = %2190
  %2228 = fmul fast float %363, %363
  %2229 = fmul fast float %367, %367
  %2230 = fmul fast float %371, %371
  %2231 = fadd fast float %2228, -1.000000e+00
  %2232 = fadd fast float %2229, -1.000000e+00
  %2233 = fadd fast float %2230, -1.000000e+00
  %2234 = fmul fast float %2079, %2231
  %2235 = fmul fast float %2079, %2232
  %2236 = fmul fast float %2079, %2233
  %2237 = fadd fast float %2234, 1.000000e+00
  %2238 = fadd fast float %2235, 1.000000e+00
  %2239 = fadd fast float %2236, 1.000000e+00
  %2240 = fmul fast float %2237, %2054
  %2241 = fmul fast float %2238, %2055
  %2242 = fmul fast float %2239, %2056
  br label %2243

; <label>:2243                                    ; preds = %2227, %2193, %2084, %2040
  %2244 = phi float [ %2189, %2084 ], [ %2065, %2193 ], [ %2065, %2227 ], [ 0x3FA23C0BE0000000, %2040 ]
  %2245 = phi float [ %2181, %2084 ], [ %2224, %2193 ], [ %2240, %2227 ], [ 1.000000e+00, %2040 ]
  %2246 = phi float [ %2182, %2084 ], [ %2225, %2193 ], [ %2241, %2227 ], [ 1.000000e+00, %2040 ]
  %2247 = phi float [ %2183, %2084 ], [ %2226, %2193 ], [ %2242, %2227 ], [ 1.000000e+00, %2040 ]
  %2248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.i32 %2248, 1
  %2250 = and i32 %2249, 1
  %2251 = icmp ne i32 %2250, 0
  %2252 = add i32 %54, 356
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = and i32 %2254, 32
  %2256 = icmp ne i32 %2255, 0
  %2257 = and i1 %2251, %2256
  %2258 = select i1 %2257, float 1.000000e+00, float %2245
  %2259 = select i1 %2257, float 0x3FD3333340000000, float %2246
  %2260 = select i1 %2257, float 0x3FD3333340000000, float %2247
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = and i32 %2262, 32
  %2264 = icmp eq i32 %2263, 0
  br i1 %2264, label %2337, label %2265

; <label>:2265                                    ; preds = %2243
  %2266 = add i32 %54, 124
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = add i32 %54, 416
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = add i32 %2271, 0
  %2273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2273, %dx.types.Handle %100, float %1965, float %1966, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.ResRet.f32 %2274, 1
  %2277 = extractvalue %dx.types.ResRet.f32 %2274, 2
  %2278 = extractvalue %dx.types.ResRet.f32 %2274, 3
  %2279 = and i32 %2268, 255
  %2280 = uitofp i32 %2279 to float
  %2281 = lshr i32 %2268, 8
  %2282 = and i32 %2281, 255
  %2283 = uitofp i32 %2282 to float
  %2284 = lshr i32 %2268, 16
  %2285 = and i32 %2284, 255
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101000000000
  %2288 = fmul fast float %2275, %2280
  %2289 = fadd fast float %2288, %2283
  %2290 = fmul fast float %2289, 0x3F70101000000000
  %2291 = fadd fast float %2276, -5.000000e-01
  %2292 = fadd fast float %2278, -5.000000e-01
  %2293 = fmul fast float %2291, %2287
  %2294 = fmul fast float %2292, %2287
  %2295 = fadd fast float %2293, 5.000000e-01
  %2296 = fadd fast float %2294, 5.000000e-01
  %2297 = fmul fast float %2295, 2.000000e+00
  %2298 = fadd fast float %2297, -1.000000e+00
  %2299 = fmul fast float %2296, 2.000000e+00
  %2300 = fadd fast float %2299, -1.000000e+00
  %2301 = fadd fast float %2298, %2300
  %2302 = fmul fast float %2301, 5.000000e-01
  %2303 = fsub fast float %2298, %2300
  %2304 = fmul fast float %2303, 5.000000e-01
  %2305 = call float @dx.op.unary.f32(i32 6, float %2302)  ; FAbs(value)
  %2306 = fsub fast float 1.000000e+00, %2305
  %2307 = call float @dx.op.unary.f32(i32 6, float %2304)  ; FAbs(value)
  %2308 = fsub fast float %2306, %2307
  %2309 = call float @dx.op.dot3.f32(i32 55, float %2302, float %2304, float %2308, float %2302, float %2304, float %2308)  ; Dot3(ax,ay,az,bx,by,bz)
  %2310 = call float @dx.op.unary.f32(i32 25, float %2309)  ; Rsqrt(value)
  %2311 = fmul fast float %2302, %2310
  %2312 = fmul fast float %2304, %2310
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 67108864
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2333, label %2317

; <label>:2317                                    ; preds = %2265
  %2318 = add i32 %54, 312
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = and i32 %2320, 65535
  %2322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2321)  ; LegacyF16ToF32(value)
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 65535
  %2326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2325)  ; LegacyF16ToF32(value)
  %2327 = lshr i32 %2320, 16
  %2328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2327)  ; LegacyF16ToF32(value)
  %2329 = fsub fast float %2290, %2328
  %2330 = fmul fast float %2329, %2322
  %2331 = fadd fast float %2330, %2326
  %2332 = call float @dx.op.unary.f32(i32 7, float %2331)  ; Saturate(value)
  br label %2333

; <label>:2333                                    ; preds = %2317, %2265
  %2334 = phi float [ %2332, %2317 ], [ %2290, %2265 ]
  %2335 = call float @dx.op.dot2.f32(i32 54, float %2311, float %2312, float %1869, float %1870)  ; Dot2(ax,ay,bx,by)
  %2336 = call float @dx.op.dot2.f32(i32 54, float %2311, float %2312, float %1871, float %1872)  ; Dot2(ax,ay,bx,by)
  br label %2337

; <label>:2337                                    ; preds = %2333, %2243
  %2338 = phi float [ %2334, %2333 ], [ 0x3FD6666660000000, %2243 ]
  %2339 = phi float [ %2335, %2333 ], [ 0.000000e+00, %2243 ]
  %2340 = phi float [ %2336, %2333 ], [ 0.000000e+00, %2243 ]
  %2341 = phi float [ %2277, %2333 ], [ 1.000000e+00, %2243 ]
  %2342 = add i32 %54, 192
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = lshr i32 %2344, 22
  %2346 = shl nuw nsw i32 %2345, 5
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 64
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2385, label %2352

; <label>:2352                                    ; preds = %2337
  %2353 = add i32 %54, 432
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = add i32 %2355, 0
  %2357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 131072
  %2361 = icmp eq i32 %2360, 0
  %2362 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2357, %dx.types.Handle %100, float %1965, float %1966, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2363 = extractvalue %dx.types.ResRet.f32 %2362, 0
  %2364 = extractvalue %dx.types.ResRet.f32 %2362, 1
  %2365 = extractvalue %dx.types.ResRet.f32 %2362, 2
  %2366 = fmul fast float %2363, %351
  %2367 = fmul fast float %2364, %354
  %2368 = fmul fast float %2365, %357
  br i1 %2361, label %2375, label %2369

; <label>:2369                                    ; preds = %2352
  %2370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.f32 %2370, 0
  %2372 = fmul fast float %2371, %2366
  %2373 = fmul fast float %2371, %2367
  %2374 = fmul fast float %2371, %2368
  br label %2375

; <label>:2375                                    ; preds = %2369, %2352
  %2376 = phi float [ %2372, %2369 ], [ %2366, %2352 ]
  %2377 = phi float [ %2373, %2369 ], [ %2367, %2352 ]
  %2378 = phi float [ %2374, %2369 ], [ %2368, %2352 ]
  %2379 = fmul fast float %2376, %2347
  %2380 = select i1 %250, float %2379, float %2376
  %2381 = call float @dx.op.dot3.f32(i32 55, float %2380, float %2377, float %2378, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2382 = select i1 %250, float 0.000000e+00, float %2376
  %2383 = select i1 %250, float %2381, float %2377
  %2384 = select i1 %250, float 0.000000e+00, float %2378
  br label %2385

; <label>:2385                                    ; preds = %2375, %2337
  %2386 = phi float [ %2382, %2375 ], [ 0.000000e+00, %2337 ]
  %2387 = phi float [ %2383, %2375 ], [ 0.000000e+00, %2337 ]
  %2388 = phi float [ %2384, %2375 ], [ 0.000000e+00, %2337 ]
  %2389 = add i32 %54, 128
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 255
  %2393 = uitofp i32 %2392 to float
  %2394 = lshr i32 %2391, 8
  %2395 = and i32 %2394, 255
  %2396 = uitofp i32 %2395 to float
  %2397 = call float @dx.op.dot3.f32(i32 55, float %2258, float %2259, float %2260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2398 = fmul fast float %2396, %2397
  %2399 = fadd fast float %2398, %2393
  %2400 = fmul fast float %2399, 0x3F70101020000000
  %2401 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  br i1 %1857, label %2402, label %2410

; <label>:2402                                    ; preds = %2385
  %2403 = fsub fast float 1.000000e+00, %2038
  %2404 = fmul fast float %2403, %1849
  %2405 = fmul fast float %2403, %1850
  %2406 = fmul fast float %2403, %1851
  %2407 = fmul fast float %2403, %1846
  %2408 = fmul fast float %2403, %1847
  %2409 = fmul fast float %2403, %1848
  br label %2410

; <label>:2410                                    ; preds = %2402, %2385
  %2411 = phi float [ %2407, %2402 ], [ %1846, %2385 ]
  %2412 = phi float [ %2408, %2402 ], [ %1847, %2385 ]
  %2413 = phi float [ %2409, %2402 ], [ %1848, %2385 ]
  %2414 = phi float [ %2404, %2402 ], [ %1849, %2385 ]
  %2415 = phi float [ %2405, %2402 ], [ %1850, %2385 ]
  %2416 = phi float [ %2406, %2402 ], [ %1851, %2385 ]
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, 3
  %2420 = icmp eq i32 %2419, 3
  br i1 %2420, label %2499, label %2421

; <label>:2421                                    ; preds = %2410
  %2422 = and i32 %2418, 16
  %2423 = icmp ne i32 %2422, 0
  %2424 = select i1 %2423, float %2038, float 0.000000e+00
  %2425 = icmp eq i32 %2419, 0
  br i1 %2425, label %2426, label %2454

; <label>:2426                                    ; preds = %2421
  %2427 = and i32 %2418, 64
  %2428 = icmp ne i32 %2427, 0
  %2429 = select i1 %2428, float %2038, float 0.000000e+00
  %2430 = fsub fast float %2258, %2414
  %2431 = fsub fast float %2259, %2415
  %2432 = fsub fast float %2260, %2416
  %2433 = fmul fast float %2424, %2430
  %2434 = fmul fast float %2424, %2431
  %2435 = fmul fast float %2424, %2432
  %2436 = fadd fast float %2433, %2414
  %2437 = fadd fast float %2434, %2415
  %2438 = fadd fast float %2435, %2416
  %2439 = fsub fast float %2244, %1852
  %2440 = fmul fast float %2424, %2439
  %2441 = fadd fast float %2440, %1852
  %2442 = fsub fast float %2386, %2411
  %2443 = fsub fast float %2387, %2412
  %2444 = fsub fast float %2388, %2413
  %2445 = fmul fast float %2429, %2442
  %2446 = fmul fast float %2429, %2443
  %2447 = fmul fast float %2429, %2444
  %2448 = fadd fast float %2445, %2411
  %2449 = fadd fast float %2446, %2412
  %2450 = fadd fast float %2447, %2413
  %2451 = fsub fast float %2401, %1855
  %2452 = fmul fast float %2424, %2451
  %2453 = fadd fast float %2452, %1855
  br label %2499

; <label>:2454                                    ; preds = %2421
  %2455 = icmp eq i32 %2419, 1
  br i1 %2455, label %2456, label %2469

; <label>:2456                                    ; preds = %2454
  %2457 = fadd fast float %2258, -1.000000e+00
  %2458 = fadd fast float %2259, -1.000000e+00
  %2459 = fadd fast float %2260, -1.000000e+00
  %2460 = fmul fast float %2424, %2457
  %2461 = fmul fast float %2424, %2458
  %2462 = fmul fast float %2424, %2459
  %2463 = fadd fast float %2460, 1.000000e+00
  %2464 = fadd fast float %2461, 1.000000e+00
  %2465 = fadd fast float %2462, 1.000000e+00
  %2466 = fmul fast float %2463, %2414
  %2467 = fmul fast float %2464, %2415
  %2468 = fmul fast float %2465, %2416
  br label %2499

; <label>:2469                                    ; preds = %2454
  %2470 = icmp eq i32 %2419, 2
  br i1 %2470, label %2471, label %2499

; <label>:2471                                    ; preds = %2469
  %2472 = call float @dx.op.unary.f32(i32 24, float %2258)  ; Sqrt(value)
  %2473 = call float @dx.op.unary.f32(i32 24, float %2259)  ; Sqrt(value)
  %2474 = call float @dx.op.unary.f32(i32 24, float %2260)  ; Sqrt(value)
  %2475 = fadd fast float %2472, -5.000000e-01
  %2476 = fadd fast float %2473, -5.000000e-01
  %2477 = fadd fast float %2474, -5.000000e-01
  %2478 = fmul fast float %2475, %2424
  %2479 = fmul fast float %2476, %2424
  %2480 = fmul fast float %2477, %2424
  %2481 = fadd fast float %2478, 5.000000e-01
  %2482 = fadd fast float %2479, 5.000000e-01
  %2483 = fadd fast float %2480, 5.000000e-01
  %2484 = fmul fast float %2481, 2.000000e+00
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2485, %2414
  %2487 = fadd fast float %2486, %2484
  %2488 = fmul fast float %2487, %2414
  %2489 = fmul fast float %2482, 2.000000e+00
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = fmul fast float %2490, %2415
  %2492 = fadd fast float %2491, %2489
  %2493 = fmul fast float %2492, %2415
  %2494 = fmul fast float %2483, 2.000000e+00
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = fmul fast float %2495, %2416
  %2497 = fadd fast float %2496, %2494
  %2498 = fmul fast float %2497, %2416
  br label %2499

; <label>:2499                                    ; preds = %2471, %2469, %2456, %2426, %2410
  %2500 = phi float [ %2411, %2410 ], [ %2411, %2471 ], [ %2411, %2469 ], [ %2411, %2456 ], [ %2448, %2426 ]
  %2501 = phi float [ %2412, %2410 ], [ %2412, %2471 ], [ %2412, %2469 ], [ %2412, %2456 ], [ %2449, %2426 ]
  %2502 = phi float [ %2413, %2410 ], [ %2413, %2471 ], [ %2413, %2469 ], [ %2413, %2456 ], [ %2450, %2426 ]
  %2503 = phi float [ %2414, %2410 ], [ %2488, %2471 ], [ %2414, %2469 ], [ %2466, %2456 ], [ %2436, %2426 ]
  %2504 = phi float [ %2415, %2410 ], [ %2493, %2471 ], [ %2415, %2469 ], [ %2467, %2456 ], [ %2437, %2426 ]
  %2505 = phi float [ %2416, %2410 ], [ %2498, %2471 ], [ %2416, %2469 ], [ %2468, %2456 ], [ %2438, %2426 ]
  %2506 = phi float [ %1852, %2410 ], [ %1852, %2471 ], [ %1852, %2469 ], [ %1852, %2456 ], [ %2441, %2426 ]
  %2507 = phi float [ %1855, %2410 ], [ %1855, %2471 ], [ %1855, %2469 ], [ %1855, %2456 ], [ %2453, %2426 ]
  %2508 = and i32 %2418, 12
  %2509 = icmp eq i32 %2508, 12
  br i1 %2509, label %2582, label %2510

; <label>:2510                                    ; preds = %2499
  %2511 = and i32 %2418, 2097184
  %2512 = icmp eq i32 %2511, 2097184
  %2513 = select i1 %2512, float %2038, float 0.000000e+00
  %2514 = and i32 %2418, 4194336
  %2515 = icmp eq i32 %2514, 4194336
  %2516 = select i1 %2515, float %2038, float 0.000000e+00
  %2517 = and i32 %2418, 8388640
  %2518 = icmp eq i32 %2517, 8388640
  %2519 = select i1 %2518, float %2038, float 0.000000e+00
  %2520 = icmp eq i32 %2508, 0
  br i1 %2520, label %2521, label %2534

; <label>:2521                                    ; preds = %2510
  %2522 = fsub fast float %2339, %1844
  %2523 = fsub fast float %2340, %1845
  %2524 = fmul fast float %2513, %2522
  %2525 = fmul fast float %2513, %2523
  %2526 = fadd fast float %2524, %1844
  %2527 = fadd fast float %2525, %1845
  %2528 = fsub fast float %2341, %1854
  %2529 = fmul fast float %2516, %2528
  %2530 = fadd fast float %2529, %1854
  %2531 = fsub fast float %2338, %1853
  %2532 = fmul fast float %2519, %2531
  %2533 = fadd fast float %2532, %1853
  br label %2582

; <label>:2534                                    ; preds = %2510
  %2535 = icmp eq i32 %2508, 4
  br i1 %2535, label %2536, label %2568

; <label>:2536                                    ; preds = %2534
  %2537 = fmul fast float %2513, %2339
  %2538 = fmul fast float %2513, %2340
  %2539 = fadd fast float %2537, %1844
  %2540 = fadd fast float %2538, %1845
  %2541 = call float @dx.op.binary.f32(i32 36, float %1854, float %2341)  ; FMin(a,b)
  %2542 = fsub fast float %2541, %1854
  %2543 = fmul fast float %2542, %2516
  %2544 = fadd fast float %2543, %1854
  %2545 = fadd fast float %2338, %1853
  %2546 = fmul fast float %2545, 0x3FF337FAE0000000
  %2547 = fmul fast float %1853, %1853
  %2548 = fmul fast float %2338, %2338
  %2549 = fadd fast float %2548, %2547
  %2550 = fmul fast float %2549, 0x3FE5152B00000000
  %2551 = fmul fast float %1853, 0xBFCC1F85E0000000
  %2552 = fmul fast float %2551, %2338
  %2553 = fadd fast float %2552, 0xBFE1363700000000
  %2554 = fadd fast float %2553, %2546
  %2555 = fsub fast float %2554, %2550
  %2556 = fmul fast float %2545, 0x3FBA6F0D00000000
  %2557 = fmul fast float %2549, 0x3FD0432880000000
  %2558 = fmul fast float %1853, 0xBFEF110800000000
  %2559 = fmul fast float %2558, %2338
  %2560 = fadd fast float %2559, 1.000000e+00
  %2561 = fsub fast float %2560, %2556
  %2562 = fadd fast float %2561, %2557
  %2563 = fdiv fast float %2555, %2562
  %2564 = call float @dx.op.unary.f32(i32 7, float %2563)  ; Saturate(value)
  %2565 = fsub fast float %2564, %1853
  %2566 = fmul fast float %2565, %2519
  %2567 = fadd fast float %2566, %1853
  br label %2582

; <label>:2568                                    ; preds = %2534
  %2569 = icmp eq i32 %2508, 8
  br i1 %2569, label %2570, label %2582

; <label>:2570                                    ; preds = %2568
  %2571 = fmul fast float %2513, %2339
  %2572 = fmul fast float %2513, %2340
  %2573 = fadd fast float %2571, %1844
  %2574 = fadd fast float %2572, %1845
  %2575 = call float @dx.op.binary.f32(i32 36, float %1854, float %2341)  ; FMin(a,b)
  %2576 = fsub fast float %2575, %1854
  %2577 = fmul fast float %2576, %2516
  %2578 = fadd fast float %2577, %1854
  %2579 = fsub fast float %2338, %1853
  %2580 = fmul fast float %2519, %2579
  %2581 = fadd fast float %2580, %1853
  br label %2582

; <label>:2582                                    ; preds = %2570, %2568, %2536, %2521, %2499, %2037, %1856, %1843
  %2583 = phi float [ %1844, %2499 ], [ %1844, %2037 ], [ %1844, %1843 ], [ %2573, %2570 ], [ %1844, %2568 ], [ %2539, %2536 ], [ %2526, %2521 ], [ %1844, %1856 ]
  %2584 = phi float [ %1845, %2499 ], [ %1845, %2037 ], [ %1845, %1843 ], [ %2574, %2570 ], [ %1845, %2568 ], [ %2540, %2536 ], [ %2527, %2521 ], [ %1845, %1856 ]
  %2585 = phi float [ %2500, %2499 ], [ %1846, %2037 ], [ %1846, %1843 ], [ %2500, %2570 ], [ %2500, %2568 ], [ %2500, %2536 ], [ %2500, %2521 ], [ %1846, %1856 ]
  %2586 = phi float [ %2501, %2499 ], [ %1847, %2037 ], [ %1847, %1843 ], [ %2501, %2570 ], [ %2501, %2568 ], [ %2501, %2536 ], [ %2501, %2521 ], [ %1847, %1856 ]
  %2587 = phi float [ %2502, %2499 ], [ %1848, %2037 ], [ %1848, %1843 ], [ %2502, %2570 ], [ %2502, %2568 ], [ %2502, %2536 ], [ %2502, %2521 ], [ %1848, %1856 ]
  %2588 = phi float [ %2503, %2499 ], [ %1849, %2037 ], [ %1849, %1843 ], [ %2503, %2570 ], [ %2503, %2568 ], [ %2503, %2536 ], [ %2503, %2521 ], [ %1849, %1856 ]
  %2589 = phi float [ %2504, %2499 ], [ %1850, %2037 ], [ %1850, %1843 ], [ %2504, %2570 ], [ %2504, %2568 ], [ %2504, %2536 ], [ %2504, %2521 ], [ %1850, %1856 ]
  %2590 = phi float [ %2505, %2499 ], [ %1851, %2037 ], [ %1851, %1843 ], [ %2505, %2570 ], [ %2505, %2568 ], [ %2505, %2536 ], [ %2505, %2521 ], [ %1851, %1856 ]
  %2591 = phi float [ %2506, %2499 ], [ %1852, %2037 ], [ %1852, %1843 ], [ %2506, %2570 ], [ %2506, %2568 ], [ %2506, %2536 ], [ %2506, %2521 ], [ %1852, %1856 ]
  %2592 = phi float [ %1853, %2499 ], [ %1853, %2037 ], [ %1853, %1843 ], [ %2581, %2570 ], [ %1853, %2568 ], [ %2567, %2536 ], [ %2533, %2521 ], [ %1853, %1856 ]
  %2593 = phi float [ %1854, %2499 ], [ %1854, %2037 ], [ %1854, %1843 ], [ %2578, %2570 ], [ %1854, %2568 ], [ %2544, %2536 ], [ %2530, %2521 ], [ %1854, %1856 ]
  %2594 = phi float [ %2507, %2499 ], [ %1855, %2037 ], [ %1855, %1843 ], [ %2507, %2570 ], [ %2507, %2568 ], [ %2507, %2536 ], [ %2507, %2521 ], [ %1855, %1856 ]
  br i1 %438, label %3321, label %2595

; <label>:2595                                    ; preds = %2582
  %2596 = icmp ult i32 %492, 4
  %2597 = add i32 %54, 72
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = add i32 %54, 76
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = or i32 %2602, %2599
  %2604 = icmp eq i32 %2603, 0
  br i1 %2604, label %3321, label %2605

; <label>:2605                                    ; preds = %2595
  %2606 = and i32 %2599, 262144
  %2607 = icmp ne i32 %2606, 0
  %2608 = select i1 %2607, float %59, float 1.000000e+00
  %2609 = select i1 %2607, float %60, float 0.000000e+00
  %2610 = select i1 %2607, float %61, float 0.000000e+00
  %2611 = select i1 %2607, float %62, float 1.000000e+00
  %2612 = select i1 %2607, float %63, float %86
  %2613 = select i1 %2607, float %64, float %87
  %2614 = add i32 %54, 332
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = lshr i32 %2616, 16
  %2618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2617)  ; LegacyF16ToF32(value)
  %2619 = fmul fast float %2618, 0x3F50624DE0000000
  %2620 = add i32 %54, 136
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = lshr i32 %2622, 16
  %2624 = and i32 %2623, 255
  %2625 = lshr i32 %2622, 24
  %2626 = add i32 %54, 340
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2626, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = and i32 %2628, 65535
  %2630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2629)  ; LegacyF16ToF32(value)
  %2631 = lshr i32 %2628, 16
  %2632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2631)  ; LegacyF16ToF32(value)
  %2633 = add i32 %54, 80
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = lshr i32 %2635, 22
  %2637 = shl nuw nsw i32 %2636, 5
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = shl i32 %2635, 4
  %2640 = and i32 %2639, 32752
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = lshr i32 %2635, 7
  %2643 = and i32 %2642, 32752
  %2644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2643)  ; LegacyF16ToF32(value)
  %2645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2646 = extractvalue %dx.types.CBufRet.f32 %2645, 3
  %2647 = fmul fast float %2646, 1.000000e+03
  %2648 = fmul fast float %428, %2647
  %2649 = call float @dx.op.unary.f32(i32 22, float %2648)  ; Frc(value)
  %2650 = fadd fast float %2649, %418
  %2651 = fmul fast float %429, %2647
  %2652 = call float @dx.op.unary.f32(i32 22, float %2651)  ; Frc(value)
  %2653 = fadd fast float %2652, %420
  %2654 = fmul fast float %2619, %2647
  %2655 = call float @dx.op.unary.f32(i32 22, float %2654)  ; Frc(value)
  %2656 = fmul fast float %2655, 0x401921FB60000000
  %2657 = fadd fast float %2656, %2638
  %2658 = call float @dx.op.unary.f32(i32 13, float %2657)  ; Sin(value)
  %2659 = call float @dx.op.unary.f32(i32 12, float %2657)  ; Cos(value)
  %2660 = fsub fast float -0.000000e+00, %2658
  %2661 = fadd fast float %2612, -5.000000e-01
  %2662 = fadd fast float %2613, -5.000000e-01
  %2663 = fmul fast float %2630, %2661
  %2664 = fmul fast float %2632, %2662
  %2665 = fadd fast float %2663, 5.000000e-01
  %2666 = fadd fast float %2664, 5.000000e-01
  %2667 = fmul fast float %2641, %2665
  %2668 = fmul fast float %2644, %2666
  %2669 = fmul fast float %2659, %2667
  %2670 = call float @dx.op.tertiary.f32(i32 46, float %2660, float %2668, float %2669)  ; FMad(a,b,c)
  %2671 = fmul fast float %2658, %2667
  %2672 = call float @dx.op.tertiary.f32(i32 46, float %2659, float %2668, float %2671)  ; FMad(a,b,c)
  %2673 = fadd fast float %2650, %2670
  %2674 = fadd fast float %2653, %2672
  %2675 = icmp ugt i32 %2624, 1
  %2676 = icmp ugt i32 %2622, 33554431
  %2677 = or i1 %2676, %2675
  br i1 %2677, label %2678, label %2703

; <label>:2678                                    ; preds = %2605
  %2679 = add i32 %54, 276
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2679, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = lshr i32 %2681, 16
  %2683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2682)  ; LegacyF16ToF32(value)
  %2684 = fmul fast float %2646, %2683
  %2685 = call float @dx.op.unary.f32(i32 22, float %2684)  ; Frc(value)
  %2686 = mul nuw nsw i32 %2624, %2625
  %2687 = uitofp i32 %2686 to float
  %2688 = fmul fast float %2685, %2687
  %2689 = call float @dx.op.unary.f32(i32 27, float %2688)  ; Round_ni(value)
  %2690 = fptoui float %2689 to i32
  %2691 = urem i32 %2690, %2624
  %2692 = udiv i32 %2690, %2625
  %2693 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2694 = call float @dx.op.unary.f32(i32 22, float %2674)  ; Frc(value)
  %2695 = uitofp i32 %2691 to float
  %2696 = uitofp i32 %2692 to float
  %2697 = fadd fast float %2693, %2695
  %2698 = fadd fast float %2694, %2696
  %2699 = uitofp i32 %2624 to float
  %2700 = uitofp i32 %2625 to float
  %2701 = fdiv fast float %2697, %2699
  %2702 = fdiv fast float %2698, %2700
  br label %2703

; <label>:2703                                    ; preds = %2678, %2605
  %2704 = phi float [ %2701, %2678 ], [ %2673, %2605 ]
  %2705 = phi float [ %2702, %2678 ], [ %2674, %2605 ]
  %2706 = and i32 %2599, 256
  %2707 = icmp eq i32 %2706, 0
  br i1 %2707, label %2754, label %2708

; <label>:2708                                    ; preds = %2703
  %2709 = add i32 %54, 468
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = add i32 %2711, 0
  %2713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2713, %dx.types.Handle %101, float %2704, float %2705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2715 = extractvalue %dx.types.ResRet.f32 %2714, 0
  %2716 = add i32 %54, 148
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2716, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = shl i32 %2718, 4
  %2720 = and i32 %2719, 32752
  %2721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2720)  ; LegacyF16ToF32(value)
  %2722 = lshr i32 %2718, 7
  %2723 = and i32 %2722, 32752
  %2724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2723)  ; LegacyF16ToF32(value)
  %2725 = fsub fast float 1.000000e+00, %487
  %2726 = call float @dx.op.binary.f32(i32 35, float %2725, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2727 = bitcast float %487 to i32
  %2728 = sitofp i32 %2727 to float
  %2729 = fadd fast float %2728, 0xC1CFBF8940000000
  %2730 = fmul fast float %2724, %2729
  %2731 = fadd fast float %2730, 0x41CFBF8940000000
  %2732 = fptosi float %2731 to i32
  %2733 = bitcast i32 %2732 to float
  %2734 = bitcast float %2726 to i32
  %2735 = sitofp i32 %2734 to float
  %2736 = fadd fast float %2735, 0xC1CFBF8940000000
  %2737 = fmul fast float %2736, %2724
  %2738 = fadd fast float %2737, 0x41CFBF8940000000
  %2739 = fptosi float %2738 to i32
  %2740 = bitcast i32 %2739 to float
  %2741 = fmul fast float %2733, %2721
  %2742 = fmul fast float %2740, %2721
  %2743 = fsub fast float %2726, %2741
  %2744 = fadd fast float %2742, %2726
  %2745 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  %2746 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2747 = fsub fast float %2715, %2745
  %2748 = fsub fast float %2746, %2745
  %2749 = bitcast float %2748 to i32
  %2750 = sub nsw i32 2129859010, %2749
  %2751 = bitcast i32 %2750 to float
  %2752 = fmul fast float %2751, %2747
  %2753 = call float @dx.op.unary.f32(i32 7, float %2752)  ; Saturate(value)
  br label %2754

; <label>:2754                                    ; preds = %2708, %2703
  %2755 = phi float [ %2753, %2708 ], [ %487, %2703 ]
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = and i32 %2757, 128
  %2759 = icmp eq i32 %2758, 0
  br i1 %2759, label %2776, label %2760

; <label>:2760                                    ; preds = %2754
  %2761 = add i32 %54, 452
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = add i32 %2763, 0
  %2765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2765, %dx.types.Handle %101, float %2704, float %2705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2767 = extractvalue %dx.types.ResRet.f32 %2766, 0
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = and i32 %2769, 524288
  %2771 = icmp ne i32 %2770, 0
  %2772 = fcmp fast ogt float %2767, 0x3FE0101020000000
  %2773 = select i1 %2772, float 1.000000e+00, float 0.000000e+00
  %2774 = select i1 %2771, float %2773, float %2767
  %2775 = fmul fast float %2774, %2755
  br label %2776

; <label>:2776                                    ; preds = %2760, %2754
  %2777 = phi float [ %2775, %2760 ], [ %2755, %2754 ]
  %2778 = fcmp fast ult float %2777, 0x3F70101020000000
  br i1 %2778, label %3321, label %2779

; <label>:2779                                    ; preds = %2776
  %2780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2781 = extractvalue %dx.types.ResRet.i32 %2780, 0
  %2782 = and i32 %2781, 16
  %2783 = icmp eq i32 %2782, 0
  br i1 %2783, label %2982, label %2784

; <label>:2784                                    ; preds = %2779
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = add i32 %54, 404
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = add i32 %2789, 0
  %2791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2791, %dx.types.Handle %100, float %2704, float %2705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2793 = extractvalue %dx.types.ResRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.ResRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.ResRet.f32 %2792, 2
  %2796 = extractvalue %dx.types.ResRet.f32 %2792, 3
  %2797 = and i32 %2786, 255
  %2798 = uitofp i32 %2797 to float
  %2799 = lshr i32 %2786, 8
  %2800 = and i32 %2799, 255
  %2801 = uitofp i32 %2800 to float
  %2802 = fmul fast float %2796, %2798
  %2803 = fadd fast float %2802, %2801
  %2804 = fmul fast float %2803, 0x3F70101000000000
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = and i32 %2806, 512
  %2808 = icmp eq i32 %2807, 0
  br i1 %2808, label %2817, label %2809

; <label>:2809                                    ; preds = %2784
  %2810 = add i32 %54, 484
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = add i32 %2812, 0
  %2814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2815 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2814, %dx.types.Handle %101, float %2704, float %2705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  br label %2817

; <label>:2817                                    ; preds = %2809, %2784
  %2818 = phi float [ %2816, %2809 ], [ 1.000000e+00, %2784 ]
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = and i32 %2820, 33554432
  %2822 = icmp eq i32 %2821, 0
  br i1 %2822, label %2929, label %2823

; <label>:2823                                    ; preds = %2817
  %2824 = add i32 %54, 272
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = and i32 %2826, 65535
  %2828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2827)  ; LegacyF16ToF32(value)
  %2829 = lshr i32 %2826, 16
  %2830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2829)  ; LegacyF16ToF32(value)
  %2831 = add i32 %54, 276
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = and i32 %2833, 65535
  %2835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2834)  ; LegacyF16ToF32(value)
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = lshr i32 %2837, 24
  %2839 = uitofp i32 %2838 to float
  %2840 = fmul fast float %2839, 0x3F70101020000000
  %2841 = and i32 %2837, 255
  %2842 = uitofp i32 %2841 to float
  %2843 = fmul fast float %2842, 0x3F70101020000000
  %2844 = lshr i32 %2837, 8
  %2845 = and i32 %2844, 255
  %2846 = uitofp i32 %2845 to float
  %2847 = fmul fast float %2846, 0x3F70101020000000
  %2848 = lshr i32 %2837, 16
  %2849 = and i32 %2848, 255
  %2850 = uitofp i32 %2849 to float
  %2851 = fmul fast float %2850, 0x3F70101020000000
  %2852 = add i32 %54, 268
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = lshr i32 %2854, 24
  %2856 = uitofp i32 %2855 to float
  %2857 = fmul fast float %2856, 0x3F70101020000000
  %2858 = and i32 %2854, 255
  %2859 = uitofp i32 %2858 to float
  %2860 = fmul fast float %2859, 0x3F70101020000000
  %2861 = lshr i32 %2854, 8
  %2862 = and i32 %2861, 255
  %2863 = uitofp i32 %2862 to float
  %2864 = fmul fast float %2863, 0x3F70101020000000
  %2865 = lshr i32 %2854, 16
  %2866 = and i32 %2865, 255
  %2867 = uitofp i32 %2866 to float
  %2868 = fmul fast float %2867, 0x3F70101020000000
  %2869 = bitcast float %2793 to i32
  %2870 = ashr i32 %2869, 1
  %2871 = sub nsw i32 1597463174, %2870
  %2872 = bitcast i32 %2871 to float
  %2873 = fmul fast float %2793, 5.000000e-01
  %2874 = fmul fast float %2872, %2872
  %2875 = fmul fast float %2874, %2873
  %2876 = fsub fast float 1.500000e+00, %2875
  %2877 = fmul fast float %2872, %2793
  %2878 = fmul fast float %2877, %2876
  %2879 = bitcast float %2794 to i32
  %2880 = ashr i32 %2879, 1
  %2881 = sub nsw i32 1597463174, %2880
  %2882 = bitcast i32 %2881 to float
  %2883 = fmul fast float %2794, 5.000000e-01
  %2884 = fmul fast float %2882, %2882
  %2885 = fmul fast float %2884, %2883
  %2886 = fsub fast float 1.500000e+00, %2885
  %2887 = fmul fast float %2882, %2794
  %2888 = fmul fast float %2887, %2886
  %2889 = bitcast float %2795 to i32
  %2890 = ashr i32 %2889, 1
  %2891 = sub nsw i32 1597463174, %2890
  %2892 = bitcast i32 %2891 to float
  %2893 = fmul fast float %2795, 5.000000e-01
  %2894 = fmul fast float %2892, %2892
  %2895 = fmul fast float %2894, %2893
  %2896 = fsub fast float 1.500000e+00, %2895
  %2897 = fmul fast float %2892, %2795
  %2898 = fmul fast float %2897, %2896
  %2899 = fsub fast float %2878, %2860
  %2900 = fsub fast float %2888, %2864
  %2901 = fsub fast float %2898, %2868
  %2902 = fmul fast float %2899, %2828
  %2903 = fmul fast float %2900, %2830
  %2904 = fmul fast float %2901, %2835
  %2905 = fadd fast float %2902, %2843
  %2906 = fadd fast float %2903, %2847
  %2907 = fadd fast float %2904, %2851
  %2908 = call float @dx.op.unary.f32(i32 7, float %2905)  ; Saturate(value)
  %2909 = call float @dx.op.unary.f32(i32 7, float %2906)  ; Saturate(value)
  %2910 = call float @dx.op.unary.f32(i32 7, float %2907)  ; Saturate(value)
  %2911 = fmul fast float %2908, %2908
  %2912 = fmul fast float %2909, %2909
  %2913 = fmul fast float %2910, %2910
  %2914 = fsub fast float %2911, %2793
  %2915 = fsub fast float %2912, %2794
  %2916 = fsub fast float %2913, %2795
  %2917 = fmul fast float %2914, %2818
  %2918 = fmul fast float %2915, %2818
  %2919 = fmul fast float %2916, %2818
  %2920 = fadd fast float %2917, %2793
  %2921 = fadd fast float %2918, %2794
  %2922 = fadd fast float %2919, %2795
  %2923 = fadd fast float %2840, %2804
  %2924 = fsub fast float %2923, %2857
  %2925 = call float @dx.op.unary.f32(i32 7, float %2924)  ; Saturate(value)
  %2926 = fsub fast float %2925, %2804
  %2927 = fmul fast float %2926, %2818
  %2928 = fadd fast float %2927, %2804
  br label %2982

; <label>:2929                                    ; preds = %2817
  %2930 = and i32 %2820, 134217728
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %2966, label %2932

; <label>:2932                                    ; preds = %2929
  %2933 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %2934 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %2935 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %2936 = fadd fast float %2933, -5.000000e-01
  %2937 = fadd fast float %2934, -5.000000e-01
  %2938 = fadd fast float %2935, -5.000000e-01
  %2939 = fmul fast float %2936, %2818
  %2940 = fmul fast float %2937, %2818
  %2941 = fmul fast float %2938, %2818
  %2942 = fadd fast float %2939, 5.000000e-01
  %2943 = fadd fast float %2940, 5.000000e-01
  %2944 = fadd fast float %2941, 5.000000e-01
  %2945 = call float @dx.op.unary.f32(i32 24, float %2793)  ; Sqrt(value)
  %2946 = call float @dx.op.unary.f32(i32 24, float %2794)  ; Sqrt(value)
  %2947 = call float @dx.op.unary.f32(i32 24, float %2795)  ; Sqrt(value)
  %2948 = fmul fast float %2942, 2.000000e+00
  %2949 = fsub fast float 1.000000e+00, %2948
  %2950 = fmul fast float %2949, %2945
  %2951 = fadd fast float %2950, %2948
  %2952 = fmul fast float %2951, %2945
  %2953 = fmul fast float %2943, 2.000000e+00
  %2954 = fsub fast float 1.000000e+00, %2953
  %2955 = fmul fast float %2954, %2946
  %2956 = fadd fast float %2955, %2953
  %2957 = fmul fast float %2956, %2946
  %2958 = fmul fast float %2944, 2.000000e+00
  %2959 = fsub fast float 1.000000e+00, %2958
  %2960 = fmul fast float %2959, %2947
  %2961 = fadd fast float %2960, %2958
  %2962 = fmul fast float %2961, %2947
  %2963 = fmul fast float %2952, %2952
  %2964 = fmul fast float %2957, %2957
  %2965 = fmul fast float %2962, %2962
  br label %2982

; <label>:2966                                    ; preds = %2929
  %2967 = fmul fast float %405, %405
  %2968 = fmul fast float %409, %409
  %2969 = fmul fast float %413, %413
  %2970 = fadd fast float %2967, -1.000000e+00
  %2971 = fadd fast float %2968, -1.000000e+00
  %2972 = fadd fast float %2969, -1.000000e+00
  %2973 = fmul fast float %2818, %2970
  %2974 = fmul fast float %2818, %2971
  %2975 = fmul fast float %2818, %2972
  %2976 = fadd fast float %2973, 1.000000e+00
  %2977 = fadd fast float %2974, 1.000000e+00
  %2978 = fadd fast float %2975, 1.000000e+00
  %2979 = fmul fast float %2976, %2793
  %2980 = fmul fast float %2977, %2794
  %2981 = fmul fast float %2978, %2795
  br label %2982

; <label>:2982                                    ; preds = %2966, %2932, %2823, %2779
  %2983 = phi float [ %2928, %2823 ], [ %2804, %2932 ], [ %2804, %2966 ], [ 0x3FA23C0BE0000000, %2779 ]
  %2984 = phi float [ %2920, %2823 ], [ %2963, %2932 ], [ %2979, %2966 ], [ 1.000000e+00, %2779 ]
  %2985 = phi float [ %2921, %2823 ], [ %2964, %2932 ], [ %2980, %2966 ], [ 1.000000e+00, %2779 ]
  %2986 = phi float [ %2922, %2823 ], [ %2965, %2932 ], [ %2981, %2966 ], [ 1.000000e+00, %2779 ]
  %2987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2988 = extractvalue %dx.types.CBufRet.i32 %2987, 1
  %2989 = and i32 %2988, 1
  %2990 = icmp ne i32 %2989, 0
  %2991 = add i32 %54, 356
  %2992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2991, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.i32 %2992, 0
  %2994 = and i32 %2993, 32
  %2995 = icmp ne i32 %2994, 0
  %2996 = and i1 %2990, %2995
  %2997 = select i1 %2996, float 1.000000e+00, float %2984
  %2998 = select i1 %2996, float 0x3FD3333340000000, float %2985
  %2999 = select i1 %2996, float 0x3FD3333340000000, float %2986
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 32
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %3076, label %3004

; <label>:3004                                    ; preds = %2982
  %3005 = add i32 %54, 140
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = add i32 %54, 420
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = add i32 %3010, 0
  %3012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3012, %dx.types.Handle %100, float %2704, float %2705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3014 = extractvalue %dx.types.ResRet.f32 %3013, 0
  %3015 = extractvalue %dx.types.ResRet.f32 %3013, 1
  %3016 = extractvalue %dx.types.ResRet.f32 %3013, 2
  %3017 = extractvalue %dx.types.ResRet.f32 %3013, 3
  %3018 = and i32 %3007, 255
  %3019 = uitofp i32 %3018 to float
  %3020 = lshr i32 %3007, 8
  %3021 = and i32 %3020, 255
  %3022 = uitofp i32 %3021 to float
  %3023 = lshr i32 %3007, 16
  %3024 = and i32 %3023, 255
  %3025 = uitofp i32 %3024 to float
  %3026 = fmul fast float %3025, 0x3F70101000000000
  %3027 = fmul fast float %3014, %3019
  %3028 = fadd fast float %3027, %3022
  %3029 = fmul fast float %3028, 0x3F70101000000000
  %3030 = fadd fast float %3015, -5.000000e-01
  %3031 = fadd fast float %3017, -5.000000e-01
  %3032 = fmul fast float %3030, %3026
  %3033 = fmul fast float %3031, %3026
  %3034 = fadd fast float %3032, 5.000000e-01
  %3035 = fadd fast float %3033, 5.000000e-01
  %3036 = fmul fast float %3034, 2.000000e+00
  %3037 = fadd fast float %3036, -1.000000e+00
  %3038 = fmul fast float %3035, 2.000000e+00
  %3039 = fadd fast float %3038, -1.000000e+00
  %3040 = fadd fast float %3037, %3039
  %3041 = fmul fast float %3040, 5.000000e-01
  %3042 = fsub fast float %3037, %3039
  %3043 = fmul fast float %3042, 5.000000e-01
  %3044 = call float @dx.op.unary.f32(i32 6, float %3041)  ; FAbs(value)
  %3045 = fsub fast float 1.000000e+00, %3044
  %3046 = call float @dx.op.unary.f32(i32 6, float %3043)  ; FAbs(value)
  %3047 = fsub fast float %3045, %3046
  %3048 = call float @dx.op.dot3.f32(i32 55, float %3041, float %3043, float %3047, float %3041, float %3043, float %3047)  ; Dot3(ax,ay,az,bx,by,bz)
  %3049 = call float @dx.op.unary.f32(i32 25, float %3048)  ; Rsqrt(value)
  %3050 = fmul fast float %3041, %3049
  %3051 = fmul fast float %3043, %3049
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = and i32 %3053, 67108864
  %3055 = icmp eq i32 %3054, 0
  br i1 %3055, label %3072, label %3056

; <label>:3056                                    ; preds = %3004
  %3057 = add i32 %54, 328
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3057, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 65535
  %3061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3060)  ; LegacyF16ToF32(value)
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 65535
  %3065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3064)  ; LegacyF16ToF32(value)
  %3066 = lshr i32 %3059, 16
  %3067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3066)  ; LegacyF16ToF32(value)
  %3068 = fsub fast float %3029, %3067
  %3069 = fmul fast float %3068, %3061
  %3070 = fadd fast float %3069, %3065
  %3071 = call float @dx.op.unary.f32(i32 7, float %3070)  ; Saturate(value)
  br label %3072

; <label>:3072                                    ; preds = %3056, %3004
  %3073 = phi float [ %3071, %3056 ], [ %3029, %3004 ]
  %3074 = call float @dx.op.dot2.f32(i32 54, float %3050, float %3051, float %2608, float %2609)  ; Dot2(ax,ay,bx,by)
  %3075 = call float @dx.op.dot2.f32(i32 54, float %3050, float %3051, float %2610, float %2611)  ; Dot2(ax,ay,bx,by)
  br label %3076

; <label>:3076                                    ; preds = %3072, %2982
  %3077 = phi float [ %3073, %3072 ], [ 0x3FD6666660000000, %2982 ]
  %3078 = phi float [ %3074, %3072 ], [ 0.000000e+00, %2982 ]
  %3079 = phi float [ %3075, %3072 ], [ 0.000000e+00, %2982 ]
  %3080 = phi float [ %3016, %3072 ], [ 1.000000e+00, %2982 ]
  %3081 = add i32 %54, 208
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = lshr i32 %3083, 22
  %3085 = shl nuw nsw i32 %3084, 5
  %3086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3085)  ; LegacyF16ToF32(value)
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = and i32 %3088, 64
  %3090 = icmp eq i32 %3089, 0
  br i1 %3090, label %3124, label %3091

; <label>:3091                                    ; preds = %3076
  %3092 = add i32 %54, 436
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = add i32 %3094, 0
  %3096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = and i32 %3098, 131072
  %3100 = icmp eq i32 %3099, 0
  %3101 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3096, %dx.types.Handle %100, float %2704, float %2705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3102 = extractvalue %dx.types.ResRet.f32 %3101, 0
  %3103 = extractvalue %dx.types.ResRet.f32 %3101, 1
  %3104 = extractvalue %dx.types.ResRet.f32 %3101, 2
  %3105 = fmul fast float %3102, %393
  %3106 = fmul fast float %3103, %396
  %3107 = fmul fast float %3104, %399
  br i1 %3100, label %3114, label %3108

; <label>:3108                                    ; preds = %3091
  %3109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3110 = extractvalue %dx.types.CBufRet.f32 %3109, 0
  %3111 = fmul fast float %3110, %3105
  %3112 = fmul fast float %3110, %3106
  %3113 = fmul fast float %3110, %3107
  br label %3114

; <label>:3114                                    ; preds = %3108, %3091
  %3115 = phi float [ %3111, %3108 ], [ %3105, %3091 ]
  %3116 = phi float [ %3112, %3108 ], [ %3106, %3091 ]
  %3117 = phi float [ %3113, %3108 ], [ %3107, %3091 ]
  %3118 = fmul fast float %3115, %3086
  %3119 = select i1 %250, float %3118, float %3115
  %3120 = call float @dx.op.dot3.f32(i32 55, float %3119, float %3116, float %3117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3121 = select i1 %250, float 0.000000e+00, float %3115
  %3122 = select i1 %250, float %3120, float %3116
  %3123 = select i1 %250, float 0.000000e+00, float %3117
  br label %3124

; <label>:3124                                    ; preds = %3114, %3076
  %3125 = phi float [ %3121, %3114 ], [ 0.000000e+00, %3076 ]
  %3126 = phi float [ %3122, %3114 ], [ 0.000000e+00, %3076 ]
  %3127 = phi float [ %3123, %3114 ], [ 0.000000e+00, %3076 ]
  %3128 = add i32 %54, 144
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = and i32 %3130, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = lshr i32 %3130, 8
  %3134 = and i32 %3133, 255
  %3135 = uitofp i32 %3134 to float
  %3136 = call float @dx.op.dot3.f32(i32 55, float %2997, float %2998, float %2999, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3137 = fmul fast float %3135, %3136
  %3138 = fadd fast float %3137, %3132
  %3139 = fmul fast float %3138, 0x3F70101020000000
  %3140 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  br i1 %2596, label %3141, label %3149

; <label>:3141                                    ; preds = %3124
  %3142 = fsub fast float 1.000000e+00, %2777
  %3143 = fmul fast float %3142, %2588
  %3144 = fmul fast float %3142, %2589
  %3145 = fmul fast float %3142, %2590
  %3146 = fmul fast float %3142, %2585
  %3147 = fmul fast float %3142, %2586
  %3148 = fmul fast float %3142, %2587
  br label %3149

; <label>:3149                                    ; preds = %3141, %3124
  %3150 = phi float [ %3146, %3141 ], [ %2585, %3124 ]
  %3151 = phi float [ %3147, %3141 ], [ %2586, %3124 ]
  %3152 = phi float [ %3148, %3141 ], [ %2587, %3124 ]
  %3153 = phi float [ %3143, %3141 ], [ %2588, %3124 ]
  %3154 = phi float [ %3144, %3141 ], [ %2589, %3124 ]
  %3155 = phi float [ %3145, %3141 ], [ %2590, %3124 ]
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = and i32 %3157, 3
  %3159 = icmp eq i32 %3158, 3
  br i1 %3159, label %3238, label %3160

; <label>:3160                                    ; preds = %3149
  %3161 = and i32 %3157, 16
  %3162 = icmp ne i32 %3161, 0
  %3163 = select i1 %3162, float %2777, float 0.000000e+00
  %3164 = icmp eq i32 %3158, 0
  br i1 %3164, label %3165, label %3193

; <label>:3165                                    ; preds = %3160
  %3166 = and i32 %3157, 64
  %3167 = icmp ne i32 %3166, 0
  %3168 = select i1 %3167, float %2777, float 0.000000e+00
  %3169 = fsub fast float %2997, %3153
  %3170 = fsub fast float %2998, %3154
  %3171 = fsub fast float %2999, %3155
  %3172 = fmul fast float %3163, %3169
  %3173 = fmul fast float %3163, %3170
  %3174 = fmul fast float %3163, %3171
  %3175 = fadd fast float %3172, %3153
  %3176 = fadd fast float %3173, %3154
  %3177 = fadd fast float %3174, %3155
  %3178 = fsub fast float %2983, %2591
  %3179 = fmul fast float %3163, %3178
  %3180 = fadd fast float %3179, %2591
  %3181 = fsub fast float %3125, %3150
  %3182 = fsub fast float %3126, %3151
  %3183 = fsub fast float %3127, %3152
  %3184 = fmul fast float %3168, %3181
  %3185 = fmul fast float %3168, %3182
  %3186 = fmul fast float %3168, %3183
  %3187 = fadd fast float %3184, %3150
  %3188 = fadd fast float %3185, %3151
  %3189 = fadd fast float %3186, %3152
  %3190 = fsub fast float %3140, %2594
  %3191 = fmul fast float %3163, %3190
  %3192 = fadd fast float %3191, %2594
  br label %3238

; <label>:3193                                    ; preds = %3160
  %3194 = icmp eq i32 %3158, 1
  br i1 %3194, label %3195, label %3208

; <label>:3195                                    ; preds = %3193
  %3196 = fadd fast float %2997, -1.000000e+00
  %3197 = fadd fast float %2998, -1.000000e+00
  %3198 = fadd fast float %2999, -1.000000e+00
  %3199 = fmul fast float %3163, %3196
  %3200 = fmul fast float %3163, %3197
  %3201 = fmul fast float %3163, %3198
  %3202 = fadd fast float %3199, 1.000000e+00
  %3203 = fadd fast float %3200, 1.000000e+00
  %3204 = fadd fast float %3201, 1.000000e+00
  %3205 = fmul fast float %3202, %3153
  %3206 = fmul fast float %3203, %3154
  %3207 = fmul fast float %3204, %3155
  br label %3238

; <label>:3208                                    ; preds = %3193
  %3209 = icmp eq i32 %3158, 2
  br i1 %3209, label %3210, label %3238

; <label>:3210                                    ; preds = %3208
  %3211 = call float @dx.op.unary.f32(i32 24, float %2997)  ; Sqrt(value)
  %3212 = call float @dx.op.unary.f32(i32 24, float %2998)  ; Sqrt(value)
  %3213 = call float @dx.op.unary.f32(i32 24, float %2999)  ; Sqrt(value)
  %3214 = fadd fast float %3211, -5.000000e-01
  %3215 = fadd fast float %3212, -5.000000e-01
  %3216 = fadd fast float %3213, -5.000000e-01
  %3217 = fmul fast float %3214, %3163
  %3218 = fmul fast float %3215, %3163
  %3219 = fmul fast float %3216, %3163
  %3220 = fadd fast float %3217, 5.000000e-01
  %3221 = fadd fast float %3218, 5.000000e-01
  %3222 = fadd fast float %3219, 5.000000e-01
  %3223 = fmul fast float %3220, 2.000000e+00
  %3224 = fsub fast float 1.000000e+00, %3223
  %3225 = fmul fast float %3224, %3153
  %3226 = fadd fast float %3225, %3223
  %3227 = fmul fast float %3226, %3153
  %3228 = fmul fast float %3221, 2.000000e+00
  %3229 = fsub fast float 1.000000e+00, %3228
  %3230 = fmul fast float %3229, %3154
  %3231 = fadd fast float %3230, %3228
  %3232 = fmul fast float %3231, %3154
  %3233 = fmul fast float %3222, 2.000000e+00
  %3234 = fsub fast float 1.000000e+00, %3233
  %3235 = fmul fast float %3234, %3155
  %3236 = fadd fast float %3235, %3233
  %3237 = fmul fast float %3236, %3155
  br label %3238

; <label>:3238                                    ; preds = %3210, %3208, %3195, %3165, %3149
  %3239 = phi float [ %3150, %3149 ], [ %3150, %3210 ], [ %3150, %3208 ], [ %3150, %3195 ], [ %3187, %3165 ]
  %3240 = phi float [ %3151, %3149 ], [ %3151, %3210 ], [ %3151, %3208 ], [ %3151, %3195 ], [ %3188, %3165 ]
  %3241 = phi float [ %3152, %3149 ], [ %3152, %3210 ], [ %3152, %3208 ], [ %3152, %3195 ], [ %3189, %3165 ]
  %3242 = phi float [ %3153, %3149 ], [ %3227, %3210 ], [ %3153, %3208 ], [ %3205, %3195 ], [ %3175, %3165 ]
  %3243 = phi float [ %3154, %3149 ], [ %3232, %3210 ], [ %3154, %3208 ], [ %3206, %3195 ], [ %3176, %3165 ]
  %3244 = phi float [ %3155, %3149 ], [ %3237, %3210 ], [ %3155, %3208 ], [ %3207, %3195 ], [ %3177, %3165 ]
  %3245 = phi float [ %2591, %3149 ], [ %2591, %3210 ], [ %2591, %3208 ], [ %2591, %3195 ], [ %3180, %3165 ]
  %3246 = phi float [ %2594, %3149 ], [ %2594, %3210 ], [ %2594, %3208 ], [ %2594, %3195 ], [ %3192, %3165 ]
  %3247 = and i32 %3157, 12
  %3248 = icmp eq i32 %3247, 12
  br i1 %3248, label %3321, label %3249

; <label>:3249                                    ; preds = %3238
  %3250 = and i32 %3157, 2097184
  %3251 = icmp eq i32 %3250, 2097184
  %3252 = select i1 %3251, float %2777, float 0.000000e+00
  %3253 = and i32 %3157, 4194336
  %3254 = icmp eq i32 %3253, 4194336
  %3255 = select i1 %3254, float %2777, float 0.000000e+00
  %3256 = and i32 %3157, 8388640
  %3257 = icmp eq i32 %3256, 8388640
  %3258 = select i1 %3257, float %2777, float 0.000000e+00
  %3259 = icmp eq i32 %3247, 0
  br i1 %3259, label %3260, label %3273

; <label>:3260                                    ; preds = %3249
  %3261 = fsub fast float %3078, %2583
  %3262 = fsub fast float %3079, %2584
  %3263 = fmul fast float %3252, %3261
  %3264 = fmul fast float %3252, %3262
  %3265 = fadd fast float %3263, %2583
  %3266 = fadd fast float %3264, %2584
  %3267 = fsub fast float %3080, %2593
  %3268 = fmul fast float %3255, %3267
  %3269 = fadd fast float %3268, %2593
  %3270 = fsub fast float %3077, %2592
  %3271 = fmul fast float %3258, %3270
  %3272 = fadd fast float %3271, %2592
  br label %3321

; <label>:3273                                    ; preds = %3249
  %3274 = icmp eq i32 %3247, 4
  br i1 %3274, label %3275, label %3307

; <label>:3275                                    ; preds = %3273
  %3276 = fmul fast float %3252, %3078
  %3277 = fmul fast float %3252, %3079
  %3278 = fadd fast float %3276, %2583
  %3279 = fadd fast float %3277, %2584
  %3280 = call float @dx.op.binary.f32(i32 36, float %2593, float %3080)  ; FMin(a,b)
  %3281 = fsub fast float %3280, %2593
  %3282 = fmul fast float %3281, %3255
  %3283 = fadd fast float %3282, %2593
  %3284 = fadd fast float %3077, %2592
  %3285 = fmul fast float %3284, 0x3FF337FAE0000000
  %3286 = fmul fast float %2592, %2592
  %3287 = fmul fast float %3077, %3077
  %3288 = fadd fast float %3287, %3286
  %3289 = fmul fast float %3288, 0x3FE5152B00000000
  %3290 = fmul fast float %2592, 0xBFCC1F85E0000000
  %3291 = fmul fast float %3290, %3077
  %3292 = fadd fast float %3291, 0xBFE1363700000000
  %3293 = fadd fast float %3292, %3285
  %3294 = fsub fast float %3293, %3289
  %3295 = fmul fast float %3284, 0x3FBA6F0D00000000
  %3296 = fmul fast float %3288, 0x3FD0432880000000
  %3297 = fmul fast float %2592, 0xBFEF110800000000
  %3298 = fmul fast float %3297, %3077
  %3299 = fadd fast float %3298, 1.000000e+00
  %3300 = fsub fast float %3299, %3295
  %3301 = fadd fast float %3300, %3296
  %3302 = fdiv fast float %3294, %3301
  %3303 = call float @dx.op.unary.f32(i32 7, float %3302)  ; Saturate(value)
  %3304 = fsub fast float %3303, %2592
  %3305 = fmul fast float %3304, %3258
  %3306 = fadd fast float %3305, %2592
  br label %3321

; <label>:3307                                    ; preds = %3273
  %3308 = icmp eq i32 %3247, 8
  br i1 %3308, label %3309, label %3321

; <label>:3309                                    ; preds = %3307
  %3310 = fmul fast float %3252, %3078
  %3311 = fmul fast float %3252, %3079
  %3312 = fadd fast float %3310, %2583
  %3313 = fadd fast float %3311, %2584
  %3314 = call float @dx.op.binary.f32(i32 36, float %2593, float %3080)  ; FMin(a,b)
  %3315 = fsub fast float %3314, %2593
  %3316 = fmul fast float %3315, %3255
  %3317 = fadd fast float %3316, %2593
  %3318 = fsub fast float %3077, %2592
  %3319 = fmul fast float %3258, %3318
  %3320 = fadd fast float %3319, %2592
  br label %3321

; <label>:3321                                    ; preds = %3309, %3307, %3275, %3260, %3238, %2776, %2595, %2582
  %3322 = phi float [ %2583, %3238 ], [ %2583, %2776 ], [ %2583, %2582 ], [ %2583, %2595 ], [ %3265, %3260 ], [ %3278, %3275 ], [ %2583, %3307 ], [ %3312, %3309 ]
  %3323 = phi float [ %2584, %3238 ], [ %2584, %2776 ], [ %2584, %2582 ], [ %2584, %2595 ], [ %3266, %3260 ], [ %3279, %3275 ], [ %2584, %3307 ], [ %3313, %3309 ]
  %3324 = phi float [ %3239, %3238 ], [ %2585, %2776 ], [ %2585, %2582 ], [ %2585, %2595 ], [ %3239, %3260 ], [ %3239, %3275 ], [ %3239, %3307 ], [ %3239, %3309 ]
  %3325 = phi float [ %3240, %3238 ], [ %2586, %2776 ], [ %2586, %2582 ], [ %2586, %2595 ], [ %3240, %3260 ], [ %3240, %3275 ], [ %3240, %3307 ], [ %3240, %3309 ]
  %3326 = phi float [ %3241, %3238 ], [ %2587, %2776 ], [ %2587, %2582 ], [ %2587, %2595 ], [ %3241, %3260 ], [ %3241, %3275 ], [ %3241, %3307 ], [ %3241, %3309 ]
  %3327 = phi float [ %3242, %3238 ], [ %2588, %2776 ], [ %2588, %2582 ], [ %2588, %2595 ], [ %3242, %3260 ], [ %3242, %3275 ], [ %3242, %3307 ], [ %3242, %3309 ]
  %3328 = phi float [ %3243, %3238 ], [ %2589, %2776 ], [ %2589, %2582 ], [ %2589, %2595 ], [ %3243, %3260 ], [ %3243, %3275 ], [ %3243, %3307 ], [ %3243, %3309 ]
  %3329 = phi float [ %3244, %3238 ], [ %2590, %2776 ], [ %2590, %2582 ], [ %2590, %2595 ], [ %3244, %3260 ], [ %3244, %3275 ], [ %3244, %3307 ], [ %3244, %3309 ]
  %3330 = phi float [ %3245, %3238 ], [ %2591, %2776 ], [ %2591, %2582 ], [ %2591, %2595 ], [ %3245, %3260 ], [ %3245, %3275 ], [ %3245, %3307 ], [ %3245, %3309 ]
  %3331 = phi float [ %2592, %3238 ], [ %2592, %2776 ], [ %2592, %2582 ], [ %2592, %2595 ], [ %3272, %3260 ], [ %3306, %3275 ], [ %2592, %3307 ], [ %3320, %3309 ]
  %3332 = phi float [ %2593, %3238 ], [ %2593, %2776 ], [ %2593, %2582 ], [ %2593, %2595 ], [ %3269, %3260 ], [ %3283, %3275 ], [ %2593, %3307 ], [ %3317, %3309 ]
  %3333 = phi float [ %3246, %3238 ], [ %2594, %2776 ], [ %2594, %2582 ], [ %2594, %2595 ], [ %3246, %3260 ], [ %3246, %3275 ], [ %3246, %3307 ], [ %3246, %3309 ]
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 0
  %3336 = call float @dx.op.dot2.f32(i32 54, float %3322, float %3323, float %3322, float %3323)  ; Dot2(ax,ay,bx,by)
  %3337 = fmul fast float %3336, 0x3FE3333340000000
  %3338 = fsub fast float 1.000000e+00, %3337
  %3339 = call float @dx.op.dot3.f32(i32 55, float %3322, float %3323, float %3338, float %3322, float %3323, float %3338)  ; Dot3(ax,ay,az,bx,by,bz)
  %3340 = call float @dx.op.unary.f32(i32 25, float %3339)  ; Rsqrt(value)
  %3341 = fmul fast float %3340, %3322
  %3342 = fmul fast float %3340, %3323
  %3343 = fmul fast float %3338, %3340
  %3344 = fmul fast float %3343, %111
  %3345 = fmul fast float %3343, %112
  %3346 = fmul fast float %3343, %113
  %3347 = fmul fast float %3341, %79
  %3348 = fmul fast float %3341, %80
  %3349 = fmul fast float %3341, %81
  %3350 = fadd fast float %3344, %3347
  %3351 = fadd fast float %3345, %3348
  %3352 = fadd fast float %3346, %3349
  %3353 = fmul fast float %123, %3342
  %3354 = fmul fast float %124, %3342
  %3355 = fmul fast float %125, %3342
  %3356 = fadd fast float %3350, %3353
  %3357 = fadd fast float %3351, %3354
  %3358 = fadd fast float %3352, %3355
  %3359 = call float @dx.op.dot3.f32(i32 55, float %3356, float %3357, float %3358, float %3356, float %3357, float %3358)  ; Dot3(ax,ay,az,bx,by,bz)
  %3360 = call float @dx.op.unary.f32(i32 25, float %3359)  ; Rsqrt(value)
  %3361 = fmul fast float %3356, %3360
  %3362 = fmul fast float %3357, %3360
  %3363 = fmul fast float %3358, %3360
  %3364 = icmp eq i32 %55, 65535
  br i1 %3364, label %3879, label %3365

; <label>:3365                                    ; preds = %3321
  %3366 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3367 = call float @dx.op.unary.f32(i32 83, float %57)  ; DerivCoarseX(value)
  %3368 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3369 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3370 = call float @dx.op.unary.f32(i32 84, float %57)  ; DerivCoarseY(value)
  %3371 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3372 = fadd fast float %3366, %56
  %3373 = fadd fast float %3367, %57
  %3374 = fadd fast float %3368, %58
  %3375 = fadd fast float %3369, %56
  %3376 = fadd fast float %3370, %57
  %3377 = fadd fast float %3371, %58
  %3378 = mul i32 %55, 48
  %3379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.ResRet.f32 %3379, 1
  %3382 = extractvalue %dx.types.ResRet.f32 %3379, 2
  %3383 = add i32 %3378, 16
  %3384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.ResRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.ResRet.f32 %3384, 2
  %3388 = add i32 %3378, 32
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3393 = extractvalue %dx.types.ResRet.f32 %3389, 3
  %3394 = bitcast float %3393 to i32
  %3395 = fmul fast float %3380, %56
  %3396 = fmul fast float %3381, %57
  %3397 = fmul fast float %3382, %58
  %3398 = fsub fast float %3395, %3385
  %3399 = fsub fast float %3396, %3386
  %3400 = fsub fast float %3397, %3387
  %3401 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3402 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3403 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3404 = fmul fast float %3401, %3390
  %3405 = fmul fast float %3402, %3391
  %3406 = fmul fast float %3403, %3392
  %3407 = fadd fast float %3390, -1.000000e+00
  %3408 = fadd fast float %3391, -1.000000e+00
  %3409 = fadd fast float %3392, -1.000000e+00
  %3410 = call float @dx.op.unary.f32(i32 27, float %3404)  ; Round_ni(value)
  %3411 = call float @dx.op.unary.f32(i32 27, float %3405)  ; Round_ni(value)
  %3412 = call float @dx.op.unary.f32(i32 27, float %3406)  ; Round_ni(value)
  %3413 = call float @dx.op.binary.f32(i32 36, float %3410, float %3407)  ; FMin(a,b)
  %3414 = call float @dx.op.binary.f32(i32 36, float %3411, float %3408)  ; FMin(a,b)
  %3415 = call float @dx.op.binary.f32(i32 36, float %3412, float %3409)  ; FMin(a,b)
  %3416 = fmul fast float %3415, %3391
  %3417 = fadd fast float %3416, %3414
  %3418 = fmul fast float %3417, %3390
  %3419 = fadd fast float %3418, %3413
  %3420 = fptosi float %3419 to i32
  %3421 = add nsw i32 %3420, %3394
  %3422 = shl nsw i32 %3421, 2
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = lshr i32 %3424, 16
  %3426 = icmp eq i32 %3425, 0
  br i1 %3426, label %3848, label %3427

; <label>:3427                                    ; preds = %3365
  br label %3428

; <label>:3428                                    ; preds = %3549, %3427
  %3429 = phi i32 [ %3451, %3549 ], [ %3425, %3427 ]
  %3430 = phi float [ %3550, %3549 ], [ 0.000000e+00, %3427 ]
  %3431 = phi float [ %3551, %3549 ], [ %3335, %3427 ]
  %3432 = phi float [ %3552, %3549 ], [ %3333, %3427 ]
  %3433 = phi float [ %3553, %3549 ], [ 0.000000e+00, %3427 ]
  %3434 = phi float [ %3554, %3549 ], [ 0.000000e+00, %3427 ]
  %3435 = phi float [ %3555, %3549 ], [ %3324, %3427 ]
  %3436 = phi float [ %3556, %3549 ], [ %3325, %3427 ]
  %3437 = phi float [ %3557, %3549 ], [ %3326, %3427 ]
  %3438 = phi float [ %3558, %3549 ], [ %3361, %3427 ]
  %3439 = phi float [ %3559, %3549 ], [ %3362, %3427 ]
  %3440 = phi float [ %3560, %3549 ], [ %3363, %3427 ]
  %3441 = phi float [ %3561, %3549 ], [ %3332, %3427 ]
  %3442 = phi float [ %3562, %3549 ], [ %3331, %3427 ]
  %3443 = phi float [ %3563, %3549 ], [ 0.000000e+00, %3427 ]
  %3444 = phi float [ %3564, %3549 ], [ %3330, %3427 ]
  %3445 = phi float [ %3565, %3549 ], [ %3327, %3427 ]
  %3446 = phi float [ %3566, %3549 ], [ %3328, %3427 ]
  %3447 = phi float [ %3567, %3549 ], [ %3329, %3427 ]
  %3448 = shl nuw nsw i32 %3429, 2
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = lshr i32 %3450, 16
  %3452 = shl i32 %3450, 8
  %3453 = and i32 %3452, 16776960
  %3454 = or i32 %3453, 48
  %3455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.f32 %3455, 0
  %3457 = extractvalue %dx.types.ResRet.f32 %3455, 1
  %3458 = extractvalue %dx.types.ResRet.f32 %3455, 2
  %3459 = or i32 %3453, 64
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = extractvalue %dx.types.ResRet.i32 %3460, 1
  %3463 = or i32 %3453, 80
  %3464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.f32 %3464, 2
  %3466 = extractvalue %dx.types.ResRet.f32 %3464, 3
  %3467 = or i32 %3453, 96
  %3468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.f32 %3468, 0
  %3470 = extractvalue %dx.types.ResRet.f32 %3468, 1
  %3471 = extractvalue %dx.types.ResRet.f32 %3468, 2
  %3472 = extractvalue %dx.types.ResRet.f32 %3468, 3
  %3473 = or i32 %3453, 112
  %3474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3476 = or i32 %3453, 128
  %3477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.f32 %3477, 0
  %3479 = extractvalue %dx.types.ResRet.f32 %3477, 1
  %3480 = extractvalue %dx.types.ResRet.f32 %3477, 2
  %3481 = extractvalue %dx.types.ResRet.f32 %3477, 3
  %3482 = or i32 %3453, 144
  %3483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3482, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3488 = or i32 %3453, 160
  %3489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3493 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3494 = or i32 %3453, 192
  %3495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3494, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.i32 %3495, 0
  %3497 = or i32 %3453, 208
  %3498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = or i32 %3453, 248
  %3501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.ResRet.f32 %3501, 1
  %3504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.ResRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.ResRet.f32 %3504, 2
  %3508 = extractvalue %dx.types.ResRet.f32 %3504, 3
  %3509 = call float @dx.op.dot4.f32(i32 56, float %3505, float %3506, float %3507, float %3508, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3510 = or i32 %3453, 16
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = extractvalue %dx.types.ResRet.f32 %3511, 3
  %3516 = call float @dx.op.dot4.f32(i32 56, float %3512, float %3513, float %3514, float %3515, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3517 = or i32 %3453, 32
  %3518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3517, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.ResRet.f32 %3518, 1
  %3521 = extractvalue %dx.types.ResRet.f32 %3518, 2
  %3522 = extractvalue %dx.types.ResRet.f32 %3518, 3
  %3523 = call float @dx.op.dot4.f32(i32 56, float %3519, float %3520, float %3521, float %3522, float %56, float %57, float %58, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3524 = call float @dx.op.unary.f32(i32 27, float %3509)  ; Round_ni(value)
  %3525 = call float @dx.op.unary.f32(i32 6, float %3524)  ; FAbs(value)
  %3526 = call float @dx.op.unary.f32(i32 27, float %3516)  ; Round_ni(value)
  %3527 = call float @dx.op.unary.f32(i32 6, float %3526)  ; FAbs(value)
  %3528 = call float @dx.op.unary.f32(i32 6, float %3523)  ; FAbs(value)
  %3529 = call float @dx.op.unary.f32(i32 27, float %3528)  ; Round_ni(value)
  %3530 = fadd fast float %3527, %3525
  %3531 = fadd fast float %3530, %3529
  %3532 = fcmp fast oeq float %3531, 0.000000e+00
  %3533 = call float @dx.op.dot4.f32(i32 56, float %3505, float %3506, float %3507, float %3508, float %3372, float %3373, float %3374, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3534 = call float @dx.op.dot4.f32(i32 56, float %3512, float %3513, float %3514, float %3515, float %3372, float %3373, float %3374, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3535 = call float @dx.op.dot4.f32(i32 56, float %3505, float %3506, float %3507, float %3508, float %3375, float %3376, float %3377, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3536 = call float @dx.op.dot4.f32(i32 56, float %3512, float %3513, float %3514, float %3515, float %3375, float %3376, float %3377, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3537 = fsub fast float %3533, %3509
  %3538 = fsub fast float %3535, %3509
  %3539 = fsub fast float %3534, %3516
  %3540 = fsub fast float %3536, %3516
  %3541 = call float @dx.op.dot3.f32(i32 55, float %3456, float %3457, float %3458, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 2
  %3544 = fadd fast float %3543, %3541
  %3545 = call float @dx.op.unary.f32(i32 7, float %3544)  ; Saturate(value)
  %3546 = extractvalue %dx.types.CBufRet.f32 %3542, 0
  %3547 = fcmp fast ogt float %3545, %3546
  %3548 = and i1 %3532, %3547
  br i1 %3548, label %3569, label %3549

; <label>:3549                                    ; preds = %3834, %3652, %3569, %3428
  %3550 = phi float [ %3430, %3569 ], [ %3655, %3652 ], [ %3655, %3834 ], [ %3430, %3428 ]
  %3551 = phi float [ %3431, %3569 ], [ %3431, %3652 ], [ %3809, %3834 ], [ %3431, %3428 ]
  %3552 = phi float [ %3432, %3569 ], [ %3432, %3652 ], [ %3807, %3834 ], [ %3432, %3428 ]
  %3553 = phi float [ %3433, %3569 ], [ %3433, %3652 ], [ %3779, %3834 ], [ %3433, %3428 ]
  %3554 = phi float [ %3434, %3569 ], [ %3434, %3652 ], [ %3777, %3834 ], [ %3434, %3428 ]
  %3555 = phi float [ %3435, %3569 ], [ %3435, %3652 ], [ %3844, %3834 ], [ %3435, %3428 ]
  %3556 = phi float [ %3436, %3569 ], [ %3436, %3652 ], [ %3845, %3834 ], [ %3436, %3428 ]
  %3557 = phi float [ %3437, %3569 ], [ %3437, %3652 ], [ %3846, %3834 ], [ %3437, %3428 ]
  %3558 = phi float [ %3438, %3569 ], [ %3438, %3652 ], [ %3758, %3834 ], [ %3438, %3428 ]
  %3559 = phi float [ %3439, %3569 ], [ %3439, %3652 ], [ %3759, %3834 ], [ %3439, %3428 ]
  %3560 = phi float [ %3440, %3569 ], [ %3440, %3652 ], [ %3760, %3834 ], [ %3440, %3428 ]
  %3561 = phi float [ %3441, %3569 ], [ %3441, %3652 ], [ %3787, %3834 ], [ %3441, %3428 ]
  %3562 = phi float [ %3442, %3569 ], [ %3442, %3652 ], [ %3784, %3834 ], [ %3442, %3428 ]
  %3563 = phi float [ %3443, %3569 ], [ %3443, %3652 ], [ %3781, %3834 ], [ %3443, %3428 ]
  %3564 = phi float [ %3444, %3569 ], [ %3444, %3652 ], [ %3775, %3834 ], [ %3444, %3428 ]
  %3565 = phi float [ %3445, %3569 ], [ %3445, %3652 ], [ %3770, %3834 ], [ %3445, %3428 ]
  %3566 = phi float [ %3446, %3569 ], [ %3446, %3652 ], [ %3771, %3834 ], [ %3446, %3428 ]
  %3567 = phi float [ %3447, %3569 ], [ %3447, %3652 ], [ %3772, %3834 ], [ %3447, %3428 ]
  %3568 = icmp eq i32 %3451, 0
  br i1 %3568, label %3847, label %3428

; <label>:3569                                    ; preds = %3428
  %3570 = extractvalue %dx.types.ResRet.f32 %3455, 3
  %3571 = extractvalue %dx.types.ResRet.f32 %3474, 3
  %3572 = extractvalue %dx.types.ResRet.f32 %3474, 1
  %3573 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3574 = extractvalue %dx.types.ResRet.f32 %3464, 1
  %3575 = extractvalue %dx.types.ResRet.f32 %3464, 0
  %3576 = extractvalue %dx.types.ResRet.i32 %3460, 3
  %3577 = extractvalue %dx.types.ResRet.i32 %3460, 2
  %3578 = bitcast float %3570 to i32
  %3579 = add i32 %3576, 0
  %3580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3579, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3582 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3580, %dx.types.Handle %3581, float %3509, float %3516, float undef, float undef, i32 0, i32 0, i32 undef, float %3537, float %3539, float undef, float %3538, float %3540, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = fmul fast float %3583, %3575
  %3585 = fadd fast float %3584, %3574
  %3586 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3587 = fmul fast float %3509, %3469
  %3588 = call float @dx.op.tertiary.f32(i32 46, float %3470, float %3516, float %3587)  ; FMad(a,b,c)
  %3589 = fadd fast float %3588, %3573
  %3590 = fmul fast float %3509, %3471
  %3591 = call float @dx.op.tertiary.f32(i32 46, float %3472, float %3516, float %3590)  ; FMad(a,b,c)
  %3592 = fadd fast float %3591, %3572
  %3593 = fmul fast float %3537, %3469
  %3594 = call float @dx.op.tertiary.f32(i32 46, float %3470, float %3539, float %3593)  ; FMad(a,b,c)
  %3595 = fmul fast float %3537, %3471
  %3596 = call float @dx.op.tertiary.f32(i32 46, float %3472, float %3539, float %3595)  ; FMad(a,b,c)
  %3597 = fmul fast float %3538, %3469
  %3598 = call float @dx.op.tertiary.f32(i32 46, float %3470, float %3540, float %3597)  ; FMad(a,b,c)
  %3599 = fmul fast float %3538, %3471
  %3600 = call float @dx.op.tertiary.f32(i32 46, float %3472, float %3540, float %3599)  ; FMad(a,b,c)
  %3601 = add i32 %3577, 0
  %3602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3601, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3603 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3602, %dx.types.Handle %3581, float %3589, float %3592, float undef, float undef, i32 0, i32 0, i32 undef, float %3594, float %3596, float undef, float %3598, float %3600, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = and i32 %3578, 1024
  %3606 = icmp ne i32 %3605, 0
  %3607 = fcmp fast ogt float %3604, 0x3FE0101020000000
  %3608 = uitofp i1 %3607 to float
  %3609 = select i1 %3606, float %3608, float %3604
  %3610 = and i32 %3578, 8192
  %3611 = icmp ne i32 %3610, 0
  %3612 = select i1 %3611, float %3571, float 1.000000e+00
  %3613 = fmul fast float %3509, 2.000000e+00
  %3614 = fadd fast float %3613, -1.000000e+00
  %3615 = call float @dx.op.unary.f32(i32 6, float %3614)  ; FAbs(value)
  %3616 = fmul fast float %3615, %3502
  %3617 = fsub fast float %3616, %3502
  %3618 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3619 = fmul fast float %3516, 2.000000e+00
  %3620 = fadd fast float %3619, -1.000000e+00
  %3621 = call float @dx.op.unary.f32(i32 6, float %3620)  ; FAbs(value)
  %3622 = fmul fast float %3621, %3503
  %3623 = fsub fast float %3622, %3503
  %3624 = call float @dx.op.unary.f32(i32 7, float %3623)  ; Saturate(value)
  %3625 = fmul fast float %3528, %3465
  %3626 = fsub fast float %3625, %3465
  %3627 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3628 = fmul fast float %3586, %3612
  %3629 = fmul fast float %3628, %3583
  %3630 = fmul fast float %3629, %3618
  %3631 = fmul fast float %3630, %3609
  %3632 = fmul fast float %3631, %3624
  %3633 = fmul fast float %3632, %3627
  %3634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3635 = extractvalue %dx.types.CBufRet.f32 %3634, 1
  %3636 = extractvalue %dx.types.CBufRet.f32 %3634, 0
  %3637 = fsub fast float %3545, %3636
  %3638 = fmul fast float %3637, %3635
  %3639 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3640 = fmul fast float %3633, %3466
  %3641 = fadd fast float %3633, %3466
  %3642 = fmul fast float %3641, %3475
  %3643 = fsub fast float %3642, %3475
  %3644 = call float @dx.op.unary.f32(i32 7, float %3643)  ; Saturate(value)
  %3645 = and i32 %3578, 128
  %3646 = icmp ne i32 %3645, 0
  %3647 = select i1 %3646, float %3644, float %3640
  %3648 = fmul fast float %3647, %3639
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 0
  %3651 = fcmp fast ugt float %3648, %3650
  br i1 %3651, label %3652, label %3549

; <label>:3652                                    ; preds = %3569
  %3653 = select i1 %3611, float %3648, float 0.000000e+00
  %3654 = fadd fast float %3653, %3430
  %3655 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  br i1 %3611, label %3549, label %3656

; <label>:3656                                    ; preds = %3652
  %3657 = and i32 %3578, 4
  %3658 = and i32 %3578, 8
  %3659 = add i32 %3461, 0
  %3660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3659, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3662 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3660, %dx.types.Handle %3661, float %3589, float %3592, float undef, float undef, i32 0, i32 0, i32 undef, float %3594, float %3596, float undef, float %3598, float %3600, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.ResRet.f32 %3662, 1
  %3665 = extractvalue %dx.types.ResRet.f32 %3662, 2
  %3666 = extractvalue %dx.types.ResRet.f32 %3662, 3
  %3667 = bitcast float %3487 to i32
  %3668 = and i32 %3667, 255
  %3669 = uitofp i32 %3668 to float
  %3670 = lshr i32 %3667, 8
  %3671 = and i32 %3670, 255
  %3672 = uitofp i32 %3671 to float
  %3673 = fmul fast float %3666, %3669
  %3674 = fadd fast float %3673, %3672
  %3675 = fmul fast float %3674, 0x3F70101000000000
  %3676 = add i32 %3462, 0
  %3677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3676, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3678 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3677, %dx.types.Handle %3661, float %3589, float %3592, float undef, float undef, i32 0, i32 0, i32 undef, float %3594, float %3596, float undef, float %3598, float %3600, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.ResRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.ResRet.f32 %3678, 2
  %3682 = extractvalue %dx.types.ResRet.f32 %3678, 3
  %3683 = bitcast float %3481 to i32
  %3684 = and i32 %3683, 255
  %3685 = uitofp i32 %3684 to float
  %3686 = lshr i32 %3683, 8
  %3687 = and i32 %3686, 255
  %3688 = uitofp i32 %3687 to float
  %3689 = lshr i32 %3683, 16
  %3690 = and i32 %3689, 255
  %3691 = uitofp i32 %3690 to float
  %3692 = fmul fast float %3691, 0x3F70101000000000
  %3693 = fmul fast float %3679, %3685
  %3694 = fadd fast float %3693, %3688
  %3695 = fmul fast float %3694, 0x3F70101000000000
  %3696 = fadd fast float %3680, -5.000000e-01
  %3697 = fadd fast float %3682, -5.000000e-01
  %3698 = fmul fast float %3696, %3692
  %3699 = fmul fast float %3697, %3692
  %3700 = fadd fast float %3698, 5.000000e-01
  %3701 = fadd fast float %3699, 5.000000e-01
  %3702 = fmul fast float %3663, %3490
  %3703 = fmul fast float %3664, %3491
  %3704 = fmul fast float %3665, %3492
  %3705 = fmul fast float %3700, 2.000000e+00
  %3706 = fadd fast float %3705, -1.000000e+00
  %3707 = fmul fast float %3701, 2.000000e+00
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
  %3721 = fmul fast float %3718, %3716
  %3722 = fmul fast float %3721, %3456
  %3723 = fmul fast float %3721, %3457
  %3724 = fmul fast float %3721, %3458
  %3725 = fmul fast float %3719, %3478
  %3726 = fmul fast float %3719, %3479
  %3727 = fmul fast float %3719, %3480
  %3728 = fadd fast float %3725, %3722
  %3729 = fadd fast float %3726, %3723
  %3730 = fadd fast float %3727, %3724
  %3731 = fmul fast float %3720, %3484
  %3732 = fmul fast float %3720, %3485
  %3733 = fmul fast float %3720, %3486
  %3734 = fadd fast float %3728, %3731
  %3735 = fadd fast float %3729, %3732
  %3736 = fadd fast float %3730, %3733
  %3737 = call float @dx.op.dot3.f32(i32 55, float %3734, float %3735, float %3736, float %3734, float %3735, float %3736)  ; Dot3(ax,ay,az,bx,by,bz)
  %3738 = call float @dx.op.unary.f32(i32 25, float %3737)  ; Rsqrt(value)
  %3739 = fmul fast float %3734, %3738
  %3740 = fmul fast float %3735, %3738
  %3741 = fmul fast float %3736, %3738
  %3742 = icmp ne i32 %3658, 0
  %3743 = select i1 %3742, float 1.000000e+00, float 0.000000e+00
  %3744 = fmul fast float %3648, %3743
  %3745 = and i32 %3578, 1
  %3746 = icmp eq i32 %3745, 0
  br i1 %3746, label %3747, label %3751

; <label>:3747                                    ; preds = %3656
  %3748 = fsub fast float %3739, %3438
  %3749 = fsub fast float %3740, %3439
  %3750 = fsub fast float %3741, %3440
  br label %3751

; <label>:3751                                    ; preds = %3747, %3656
  %3752 = phi float [ %3748, %3747 ], [ %3739, %3656 ]
  %3753 = phi float [ %3749, %3747 ], [ %3740, %3656 ]
  %3754 = phi float [ %3750, %3747 ], [ %3741, %3656 ]
  %3755 = fmul float %3754, %3744
  %3756 = fmul float %3753, %3744
  %3757 = fmul float %3752, %3744
  %3758 = fadd fast float %3757, %3438
  %3759 = fadd fast float %3756, %3439
  %3760 = fadd fast float %3755, %3440
  %3761 = icmp ne i32 %3657, 0
  %3762 = select i1 %3761, float 1.000000e+00, float 0.000000e+00
  %3763 = fmul fast float %3648, %3762
  %3764 = fsub fast float %3702, %3445
  %3765 = fsub fast float %3703, %3446
  %3766 = fsub fast float %3704, %3447
  %3767 = fmul fast float %3764, %3763
  %3768 = fmul fast float %3765, %3763
  %3769 = fmul fast float %3766, %3763
  %3770 = fadd fast float %3767, %3445
  %3771 = fadd fast float %3768, %3446
  %3772 = fadd fast float %3769, %3447
  %3773 = fsub fast float %3675, %3444
  %3774 = fmul fast float %3773, %3763
  %3775 = fadd fast float %3774, %3444
  %3776 = fmul fast float %3763, %3434
  %3777 = fsub fast float %3434, %3776
  %3778 = fmul fast float %3763, %3433
  %3779 = fsub fast float %3433, %3778
  %3780 = fadd fast float %3648, %3443
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = fsub fast float %3695, %3442
  %3783 = fmul fast float %3782, %3744
  %3784 = fadd fast float %3783, %3442
  %3785 = fsub fast float %3681, %3441
  %3786 = fmul fast float %3785, %3744
  %3787 = fadd fast float %3786, %3441
  %3788 = call float @dx.op.dot3.f32(i32 55, float %3702, float %3703, float %3704, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.CBufRet.f32 %3789, 1
  %3792 = fmul fast float %3791, %3788
  %3793 = fadd fast float %3792, %3790
  %3794 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  %3795 = bitcast float %3493 to i32
  %3796 = and i32 %3795, 65535
  %3797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3796)  ; LegacyF16ToF32(value)
  %3798 = lshr i32 %3795, 16
  %3799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3798)  ; LegacyF16ToF32(value)
  %3800 = fcmp fast oge float %3797, 0.000000e+00
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = select i1 %3800, float %3797, float %3802
  %3804 = fadd fast float %3803, %3799
  %3805 = fsub fast float %3794, %3432
  %3806 = fmul fast float %3805, %3648
  %3807 = fadd fast float %3806, %3432
  %3808 = fmul fast float %3804, %3648
  %3809 = call float @dx.op.binary.f32(i32 35, float %3431, float %3808)  ; FMax(a,b)
  %3810 = and i32 %3578, 16
  %3811 = icmp eq i32 %3810, 0
  br i1 %3811, label %3834, label %3812

; <label>:3812                                    ; preds = %3751
  %3813 = bitcast float %3499 to i32
  %3814 = add i32 %3496, 0
  %3815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3814, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3816 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3815, %dx.types.Handle %3661, float %3589, float %3592, float undef, float undef, i32 0, i32 0, i32 undef, float %3594, float %3596, float undef, float %3598, float %3600, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.f32 %3816, 1
  %3819 = extractvalue %dx.types.ResRet.f32 %3816, 2
  %3820 = and i32 %3813, 65535
  %3821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3820)  ; LegacyF16ToF32(value)
  %3822 = fmul fast float %3817, %3490
  %3823 = fmul fast float %3818, %3491
  %3824 = fmul fast float %3819, %3492
  %3825 = and i32 %3578, 16384
  %3826 = icmp ne i32 %3825, 0
  %3827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3828 = extractvalue %dx.types.CBufRet.f32 %3827, 0
  %3829 = select i1 %3826, float %3828, float 1.000000e+00
  %3830 = fmul fast float %3829, %3821
  %3831 = fmul fast float %3822, %3830
  %3832 = fmul fast float %3823, %3830
  %3833 = fmul fast float %3824, %3830
  br label %3834

; <label>:3834                                    ; preds = %3812, %3751
  %3835 = phi float [ %3831, %3812 ], [ 0.000000e+00, %3751 ]
  %3836 = phi float [ %3832, %3812 ], [ 0.000000e+00, %3751 ]
  %3837 = phi float [ %3833, %3812 ], [ 0.000000e+00, %3751 ]
  %3838 = fsub fast float %3835, %3435
  %3839 = fsub fast float %3836, %3436
  %3840 = fsub fast float %3837, %3437
  %3841 = fmul fast float %3838, %3648
  %3842 = fmul fast float %3839, %3648
  %3843 = fmul fast float %3840, %3648
  %3844 = fadd fast float %3841, %3435
  %3845 = fadd fast float %3842, %3436
  %3846 = fadd fast float %3843, %3437
  br label %3549

; <label>:3847                                    ; preds = %3549
  br label %3848

; <label>:3848                                    ; preds = %3847, %3365
  %3849 = phi float [ 0.000000e+00, %3365 ], [ %3550, %3847 ]
  %3850 = phi float [ %3335, %3365 ], [ %3551, %3847 ]
  %3851 = phi float [ %3333, %3365 ], [ %3552, %3847 ]
  %3852 = phi float [ 0.000000e+00, %3365 ], [ %3553, %3847 ]
  %3853 = phi float [ 0.000000e+00, %3365 ], [ %3554, %3847 ]
  %3854 = phi float [ %3324, %3365 ], [ %3555, %3847 ]
  %3855 = phi float [ %3325, %3365 ], [ %3556, %3847 ]
  %3856 = phi float [ %3326, %3365 ], [ %3557, %3847 ]
  %3857 = phi float [ %3361, %3365 ], [ %3558, %3847 ]
  %3858 = phi float [ %3362, %3365 ], [ %3559, %3847 ]
  %3859 = phi float [ %3363, %3365 ], [ %3560, %3847 ]
  %3860 = phi float [ %3332, %3365 ], [ %3561, %3847 ]
  %3861 = phi float [ %3331, %3365 ], [ %3562, %3847 ]
  %3862 = phi float [ 0.000000e+00, %3365 ], [ %3563, %3847 ]
  %3863 = phi float [ %3330, %3365 ], [ %3564, %3847 ]
  %3864 = phi float [ %3327, %3365 ], [ %3565, %3847 ]
  %3865 = phi float [ %3328, %3365 ], [ %3566, %3847 ]
  %3866 = phi float [ %3329, %3365 ], [ %3567, %3847 ]
  %3867 = call float @dx.op.dot3.f32(i32 55, float %3857, float %3858, float %3859, float %3857, float %3858, float %3859)  ; Dot3(ax,ay,az,bx,by,bz)
  %3868 = call float @dx.op.unary.f32(i32 25, float %3867)  ; Rsqrt(value)
  %3869 = fmul fast float %3868, %3857
  %3870 = fmul fast float %3868, %3858
  %3871 = fmul fast float %3868, %3859
  %3872 = fadd fast float %3862, %1113
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = call float @dx.op.dot3.f32(i32 55, float %3869, float %3870, float %3871, float %3869, float %3870, float %3871)  ; Dot3(ax,ay,az,bx,by,bz)
  %3875 = call float @dx.op.unary.f32(i32 25, float %3874)  ; Rsqrt(value)
  %3876 = fmul fast float %3875, %3869
  %3877 = fmul fast float %3875, %3870
  %3878 = fmul fast float %3875, %3871
  br label %3879

; <label>:3879                                    ; preds = %3848, %3321
  %3880 = phi float [ %3876, %3848 ], [ %3361, %3321 ]
  %3881 = phi float [ %3877, %3848 ], [ %3362, %3321 ]
  %3882 = phi float [ %3878, %3848 ], [ %3363, %3321 ]
  %3883 = phi float [ %3864, %3848 ], [ %3327, %3321 ]
  %3884 = phi float [ %3865, %3848 ], [ %3328, %3321 ]
  %3885 = phi float [ %3866, %3848 ], [ %3329, %3321 ]
  %3886 = phi float [ %3854, %3848 ], [ %3324, %3321 ]
  %3887 = phi float [ %3855, %3848 ], [ %3325, %3321 ]
  %3888 = phi float [ %3856, %3848 ], [ %3326, %3321 ]
  %3889 = phi float [ %3863, %3848 ], [ %3330, %3321 ]
  %3890 = phi float [ %3873, %3848 ], [ %1113, %3321 ]
  %3891 = phi float [ %3861, %3848 ], [ %3331, %3321 ]
  %3892 = phi float [ %3860, %3848 ], [ %3332, %3321 ]
  %3893 = phi float [ %3853, %3848 ], [ 0.000000e+00, %3321 ]
  %3894 = phi float [ %3852, %3848 ], [ 0.000000e+00, %3321 ]
  %3895 = phi float [ %3849, %3848 ], [ 0.000000e+00, %3321 ]
  %3896 = phi float [ %3850, %3848 ], [ %3335, %3321 ]
  %3897 = phi float [ %3851, %3848 ], [ %3333, %3321 ]
  %3898 = fadd fast float %3889, 0xBFB99999A0000000
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = fmul fast float %3899, 0x3FF1C71C80000000
  %3901 = call float @dx.op.binary.f32(i32 36, float %3889, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3902 = fsub fast float 1.000000e+00, %3900
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = fmul fast float %3903, %3883
  %3905 = fmul fast float %3903, %3884
  %3906 = fmul fast float %3903, %3885
  %3907 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3908 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3909 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3910 = fmul fast float %3900, %3883
  %3911 = fmul fast float %3900, %3884
  %3912 = fmul fast float %3900, %3885
  %3913 = fadd fast float %3910, %3901
  %3914 = fadd fast float %3911, %3901
  %3915 = fadd fast float %3912, %3901
  %3916 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3917 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3918 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3919 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.i32 %3920, 3
  %3922 = and i32 %3921, 8
  %3923 = icmp ne i32 %3922, 0
  %3924 = call float @dx.op.binary.f32(i32 35, float %3907, float %3883)  ; FMax(a,b)
  %3925 = call float @dx.op.binary.f32(i32 35, float %3908, float %3883)  ; FMax(a,b)
  %3926 = call float @dx.op.binary.f32(i32 35, float %3909, float %3883)  ; FMax(a,b)
  %3927 = call float @dx.op.dot3.f32(i32 55, float %3907, float %3908, float %3909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3928 = select i1 %250, float %3883, float %3907
  %3929 = select i1 %250, float %3927, float %3908
  %3930 = select i1 %250, float 1.000000e+00, float %3909
  %3931 = select i1 %3923, float %3924, float %3928
  %3932 = select i1 %3923, float %3925, float %3929
  %3933 = select i1 %3923, float %3926, float %3930
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = extractvalue %dx.types.CBufRet.f32 %3934, 1
  %3937 = extractvalue %dx.types.CBufRet.f32 %3934, 2
  %3938 = fadd fast float %3935, %191
  %3939 = fadd fast float %3936, %192
  %3940 = fadd fast float %3937, %193
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3944 = fsub fast float %3938, %3942
  %3945 = fsub fast float %3939, %3943
  %3946 = fmul fast float %3944, %3944
  %3947 = fmul fast float %3945, %3945
  %3948 = fadd fast float %3946, %3947
  %3949 = call float @dx.op.unary.f32(i32 24, float %3948)  ; Sqrt(value)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3941, 2
  %3951 = fcmp fast olt float %3949, %3950
  br i1 %3951, label %3952, label %4019

; <label>:3952                                    ; preds = %3879
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3960 = extractvalue %dx.types.CBufRet.f32 %3955, 1
  %3961 = extractvalue %dx.types.CBufRet.f32 %3957, 1
  %3962 = extractvalue %dx.types.CBufRet.f32 %3953, 3
  %3963 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3964 = extractvalue %dx.types.CBufRet.f32 %3957, 3
  %3965 = fadd fast float %3962, %3938
  %3966 = fadd fast float %3963, %3939
  %3967 = fadd fast float %3964, %3940
  %3968 = fmul fast float %3965, %3954
  %3969 = call float @dx.op.tertiary.f32(i32 46, float %3966, float %3956, float %3968)  ; FMad(a,b,c)
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %3967, float %3958, float %3969)  ; FMad(a,b,c)
  %3971 = fmul fast float %3965, %3959
  %3972 = call float @dx.op.tertiary.f32(i32 46, float %3966, float %3960, float %3971)  ; FMad(a,b,c)
  %3973 = call float @dx.op.tertiary.f32(i32 46, float %3967, float %3961, float %3972)  ; FMad(a,b,c)
  %3974 = fsub fast float %3970, %3962
  %3975 = fsub fast float %3973, %3963
  %3976 = fsub fast float %3974, %3942
  %3977 = fadd fast float %3976, %3950
  %3978 = fsub fast float %3975, %3943
  %3979 = fadd fast float %3978, %3950
  %3980 = extractvalue %dx.types.CBufRet.f32 %3941, 3
  %3981 = fmul fast float %3977, %3980
  %3982 = fmul fast float %3979, %3980
  %3983 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3984 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3985 = fsub fast float 1.000000e+00, %3983
  %3986 = fsub fast float 1.000000e+00, %3984
  %3987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %48, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = fcmp fast ugt float %3988, 0.000000e+00
  br i1 %3989, label %3990, label %4293

; <label>:3990                                    ; preds = %3952
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 2
  %3993 = fmul fast float %3992, %3988
  %3994 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %3995 = fadd fast float %3994, %3993
  %3996 = extractvalue %dx.types.CBufRet.f32 %3957, 2
  %3997 = fadd fast float %3995, %3964
  %3998 = fmul fast float %3970, %3958
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %3973, float %3961, float %3998)  ; FMad(a,b,c)
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %3997, float %3996, float %3999)  ; FMad(a,b,c)
  %4001 = fsub fast float %4000, %3964
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 2
  %4004 = fsub fast float %4001, %4003
  %4005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.ResRet.f32 %4005, 1
  %4008 = extractvalue %dx.types.ResRet.f32 %4005, 2
  %4009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %3985, float %3986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4010 = extractvalue %dx.types.ResRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.ResRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %4009, 2
  %4013 = fadd fast float %4010, %4006
  %4014 = fmul fast float %4013, 0x3F847AE140000000
  %4015 = fadd fast float %4011, %4007
  %4016 = fmul fast float %4015, 0x3F847AE140000000
  %4017 = fadd fast float %4012, %4008
  %4018 = fmul fast float %4017, 0x3F847AE140000000
  br label %4293

; <label>:4019                                    ; preds = %3879
  %4020 = and i32 %229, 1
  %4021 = icmp eq i32 %4020, 0
  br i1 %4021, label %4293, label %4022

; <label>:4022                                    ; preds = %4019
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4028 = extractvalue %dx.types.CBufRet.f32 %4027, 0
  %4029 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4030 = extractvalue %dx.types.CBufRet.f32 %4025, 1
  %4031 = extractvalue %dx.types.CBufRet.f32 %4027, 1
  %4032 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4033 = extractvalue %dx.types.CBufRet.f32 %4025, 3
  %4034 = extractvalue %dx.types.CBufRet.f32 %4027, 3
  %4035 = fadd fast float %4032, %3938
  %4036 = fadd fast float %4033, %3939
  %4037 = fadd fast float %4034, %3940
  %4038 = fmul fast float %4035, %4024
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %4036, float %4026, float %4038)  ; FMad(a,b,c)
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4037, float %4028, float %4039)  ; FMad(a,b,c)
  %4041 = fmul fast float %4035, %4029
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %4036, float %4030, float %4041)  ; FMad(a,b,c)
  %4043 = call float @dx.op.tertiary.f32(i32 46, float %4037, float %4031, float %4042)  ; FMad(a,b,c)
  %4044 = fsub fast float %4040, %4032
  %4045 = fsub fast float %4043, %4033
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.CBufRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.CBufRet.f32 %4046, 2
  %4050 = extractvalue %dx.types.CBufRet.f32 %4046, 3
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.i32 %4053, 0
  %4055 = extractvalue %dx.types.CBufRet.i32 %4053, 1
  %4056 = udiv i32 %4055, %4054
  %4057 = fsub fast float %4044, %4047
  %4058 = fsub fast float %4045, %4048
  %4059 = call float @dx.op.binary.f32(i32 35, float %4057, float 0.000000e+00)  ; FMax(a,b)
  %4060 = call float @dx.op.binary.f32(i32 35, float %4058, float 0.000000e+00)  ; FMax(a,b)
  %4061 = call float @dx.op.binary.f32(i32 36, float %4059, float %4049)  ; FMin(a,b)
  %4062 = call float @dx.op.binary.f32(i32 36, float %4060, float %4050)  ; FMin(a,b)
  %4063 = add i32 %4054, -1
  %4064 = add i32 %4056, -1
  %4065 = fmul fast float %4061, %4052
  %4066 = fmul fast float %4062, %4052
  %4067 = fptoui float %4065 to i32
  %4068 = fptoui float %4066 to i32
  %4069 = call i32 @dx.op.binary.i32(i32 40, i32 %4067, i32 %4063)  ; UMin(a,b)
  %4070 = call i32 @dx.op.binary.i32(i32 40, i32 %4068, i32 %4064)  ; UMin(a,b)
  %4071 = mul i32 %4070, %4054
  %4072 = add i32 %4071, %4069
  %4073 = shl i32 %4072, 2
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = icmp eq i32 %4075, -1
  br i1 %4076, label %4293, label %4077

; <label>:4077                                    ; preds = %4022
  %4078 = mul i32 %4075, 148
  %4079 = add i32 %4078, 4
  %4080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4082 = add i32 %4078, 8
  %4083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4082, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = add i32 %4078, 36
  %4086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 0
  %4088 = add i32 %4078, 60
  %4089 = add i32 %4078, 92
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = add i32 %4078, 116
  %4093 = fsub fast float %4044, %4081
  %4094 = fsub fast float %4045, %4084
  %4095 = fmul fast float %4052, %4093
  %4096 = fmul fast float %4052, %4094
  %4097 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4098 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4099 = fsub fast float 1.000000e+00, %4098
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4102 = call float @dx.op.unary.f32(i32 83, float %4097)  ; DerivCoarseX(value)
  %4103 = call float @dx.op.unary.f32(i32 83, float %4099)  ; DerivCoarseX(value)
  %4104 = call float @dx.op.unary.f32(i32 84, float %4097)  ; DerivCoarseY(value)
  %4105 = call float @dx.op.unary.f32(i32 84, float %4099)  ; DerivCoarseY(value)
  %4106 = fmul fast float %4102, %4101
  %4107 = fmul fast float %4103, %4101
  %4108 = fmul fast float %4104, %4101
  %4109 = fmul fast float %4105, %4101
  %4110 = call float @dx.op.dot2.f32(i32 54, float %4108, float %4109, float %4108, float %4109)  ; Dot2(ax,ay,bx,by)
  %4111 = call float @dx.op.dot2.f32(i32 54, float %4106, float %4107, float %4106, float %4107)  ; Dot2(ax,ay,bx,by)
  %4112 = call float @dx.op.binary.f32(i32 35, float %4111, float %4110)  ; FMax(a,b)
  %4113 = call float @dx.op.unary.f32(i32 23, float %4112)  ; Log(value)
  %4114 = fmul fast float %4113, 5.000000e-01
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 1
  %4117 = fadd fast float %4116, %4114
  %4118 = call float @dx.op.binary.f32(i32 35, float %4117, float 0.000000e+00)  ; FMax(a,b)
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4121 = fadd fast float %4120, %4118
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 3
  %4124 = fadd fast float %4121, %4123
  %4125 = add i32 %4091, 0
  %4126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4125, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4127 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4126, i32 0)  ; GetDimensions(handle,mipLevel)
  %4128 = extractvalue %dx.types.Dimensions %4127, 0
  %4129 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4128)  ; FirstbitLo(value)
  %4130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.i32 %4130, 1
  %4132 = sub nsw i32 %4131, %4129
  %4133 = sitofp i32 %4132 to float
  %4134 = fsub fast float %4124, %4133
  %4135 = call float @dx.op.binary.f32(i32 35, float %4134, float 0.000000e+00)  ; FMax(a,b)
  %4136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4126, %dx.types.Handle %46, float %4097, float %4099, float %4087, float undef, i32 0, i32 0, i32 undef, float %4135)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = fcmp ule float %4137, 0x3FE0101020000000
  %4139 = extractvalue %dx.types.CBufRet.i32 %4130, 0
  %4140 = and i32 %4139, 128
  %4141 = icmp ne i32 %4140, 0
  %4142 = and i1 %4138, %4141
  br i1 %4142, label %4293, label %4143

; <label>:4143                                    ; preds = %4077
  %4144 = add i32 %4078, 20
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = add i32 %4078, 24
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = add i32 %4078, 40
  %4151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = add i32 %4078, 96
  %4154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4153, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.i32 %4154, 0
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4158 = fmul fast float %4157, %4097
  %4159 = fmul fast float %4157, %4099
  %4160 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4161 = fadd fast float %4158, %4160
  %4162 = fadd fast float %4159, %4160
  %4163 = add i32 %4155, 0
  %4164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4163, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4165 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4164, i32 0)  ; GetDimensions(handle,mipLevel)
  %4166 = extractvalue %dx.types.Dimensions %4165, 0
  %4167 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4166)  ; FirstbitLo(value)
  %4168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.i32 %4168, 1
  %4170 = sub nsw i32 %4169, %4167
  %4171 = sitofp i32 %4170 to float
  %4172 = fsub fast float %4121, %4171
  %4173 = call float @dx.op.binary.f32(i32 35, float %4172, float 0.000000e+00)  ; FMax(a,b)
  %4174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4164, %dx.types.Handle %46, float %4161, float %4162, float %4152, float undef, i32 0, i32 0, i32 undef, float %4173)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = fmul fast float %4175, %4146
  %4177 = fadd fast float %4176, %4149
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.CBufRet.f32 %4178, 2
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 3
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 3
  %4186 = extractvalue %dx.types.CBufRet.f32 %4178, 3
  %4187 = fadd fast float %4183, %4044
  %4188 = fadd fast float %4185, %4045
  %4189 = fadd fast float %4177, %4186
  %4190 = fmul fast float %4187, %4179
  %4191 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4180, float %4190)  ; FMad(a,b,c)
  %4192 = call float @dx.op.tertiary.f32(i32 46, float %4189, float %4181, float %4191)  ; FMad(a,b,c)
  %4193 = fsub fast float %4192, %4186
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 2
  %4196 = fsub fast float %4193, %4195
  %4197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.i32 %4197, 0
  %4199 = call i32 @dx.op.binary.i32(i32 40, i32 %4075, i32 %4198)  ; UMin(a,b)
  %4200 = mul i32 %4199, 36
  %4201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.i32 %4201, 0
  %4203 = add i32 %4200, 4
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = fmul fast float %4205, %4097
  %4207 = fmul fast float %4205, %4099
  %4208 = extractvalue %dx.types.CBufRet.f32 %4204, 1
  %4209 = fadd fast float %4206, %4208
  %4210 = fadd fast float %4207, %4208
  %4211 = icmp eq i32 %4202, 0
  br i1 %4211, label %4280, label %4212

; <label>:4212                                    ; preds = %4143
  br label %4213

; <label>:4213                                    ; preds = %4270, %4212
  %4214 = phi float [ %4271, %4270 ], [ 0.000000e+00, %4212 ]
  %4215 = phi float [ %4272, %4270 ], [ 0.000000e+00, %4212 ]
  %4216 = phi float [ %4273, %4270 ], [ 0.000000e+00, %4212 ]
  %4217 = phi float [ %4274, %4270 ], [ 0.000000e+00, %4212 ]
  %4218 = phi float [ %4275, %4270 ], [ 0.000000e+00, %4212 ]
  %4219 = phi float [ %4276, %4270 ], [ 0.000000e+00, %4212 ]
  %4220 = phi i32 [ %4277, %4270 ], [ 0, %4212 ]
  %4221 = shl i32 %4220, 2
  %4222 = add i32 %4088, %4221
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = add i32 %4092, %4221
  %4226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.i32 %4226, 0
  %4228 = add i32 %4227, 0
  %4229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4228, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4230 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4229, i32 0)  ; GetDimensions(handle,mipLevel)
  %4231 = extractvalue %dx.types.Dimensions %4230, 0
  %4232 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4231)  ; FirstbitLo(value)
  %4233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.i32 %4233, 1
  %4235 = sub nsw i32 %4234, %4232
  %4236 = sitofp i32 %4235 to float
  %4237 = fsub fast float %4121, %4236
  %4238 = call float @dx.op.binary.f32(i32 35, float %4237, float 0.000000e+00)  ; FMax(a,b)
  %4239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4229, %dx.types.Handle %46, float %4209, float %4210, float %4224, float undef, i32 0, i32 0, i32 undef, float %4238)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = fcmp fast ogt float %4240, 0.000000e+00
  br i1 %4241, label %4242, label %4270

; <label>:4242                                    ; preds = %4213
  %4243 = add i32 %4203, %4221
  %4244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.i32 %4244, 0
  %4246 = and i32 %4245, 32767
  %4247 = mul nuw nsw i32 %4246, 928
  %4248 = add nuw nsw i32 %4247, 48
  %4249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4248, i32 undef)  ; BufferLoad(srv,index,wot)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = extractvalue %dx.types.ResRet.f32 %4249, 1
  %4252 = extractvalue %dx.types.ResRet.f32 %4249, 2
  %4253 = add nuw nsw i32 %4247, 60
  %4254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = extractvalue %dx.types.ResRet.f32 %4254, 1
  %4257 = extractvalue %dx.types.ResRet.f32 %4254, 2
  %4258 = fmul fast float %4250, %4240
  %4259 = fmul fast float %4251, %4240
  %4260 = fmul fast float %4252, %4240
  %4261 = fadd fast float %4258, %4214
  %4262 = fadd fast float %4259, %4215
  %4263 = fadd fast float %4260, %4216
  %4264 = fmul fast float %4255, %4240
  %4265 = fmul fast float %4256, %4240
  %4266 = fmul fast float %4257, %4240
  %4267 = fadd fast float %4264, %4217
  %4268 = fadd fast float %4265, %4218
  %4269 = fadd fast float %4266, %4219
  br label %4270

; <label>:4270                                    ; preds = %4242, %4213
  %4271 = phi float [ %4261, %4242 ], [ %4214, %4213 ]
  %4272 = phi float [ %4262, %4242 ], [ %4215, %4213 ]
  %4273 = phi float [ %4263, %4242 ], [ %4216, %4213 ]
  %4274 = phi float [ %4267, %4242 ], [ %4217, %4213 ]
  %4275 = phi float [ %4268, %4242 ], [ %4218, %4213 ]
  %4276 = phi float [ %4269, %4242 ], [ %4219, %4213 ]
  %4277 = add nuw i32 %4220, 1
  %4278 = icmp eq i32 %4277, %4202
  br i1 %4278, label %4279, label %4213

; <label>:4279                                    ; preds = %4270
  br label %4280

; <label>:4280                                    ; preds = %4279, %4143
  %4281 = phi float [ 0.000000e+00, %4143 ], [ %4271, %4279 ]
  %4282 = phi float [ 0.000000e+00, %4143 ], [ %4272, %4279 ]
  %4283 = phi float [ 0.000000e+00, %4143 ], [ %4273, %4279 ]
  %4284 = phi float [ 0.000000e+00, %4143 ], [ %4274, %4279 ]
  %4285 = phi float [ 0.000000e+00, %4143 ], [ %4275, %4279 ]
  %4286 = phi float [ 0.000000e+00, %4143 ], [ %4276, %4279 ]
  %4287 = fadd fast float %4284, %4281
  %4288 = fmul fast float %4287, 0x3F847AE140000000
  %4289 = fadd fast float %4285, %4282
  %4290 = fmul fast float %4289, 0x3F847AE140000000
  %4291 = fadd fast float %4286, %4283
  %4292 = fmul fast float %4291, 0x3F847AE140000000
  br label %4293

; <label>:4293                                    ; preds = %4280, %4077, %4022, %4019, %3990, %3952
  %4294 = phi float [ %4004, %3990 ], [ -1.310720e+05, %3952 ], [ %4196, %4280 ], [ -1.310720e+05, %4022 ], [ -1.310720e+05, %4077 ], [ -1.310720e+05, %4019 ]
  %4295 = phi float [ %4014, %3990 ], [ 0.000000e+00, %3952 ], [ %4288, %4280 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %4077 ], [ 0.000000e+00, %4019 ]
  %4296 = phi float [ %4016, %3990 ], [ 0.000000e+00, %3952 ], [ %4290, %4280 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %4077 ], [ 0.000000e+00, %4019 ]
  %4297 = phi float [ %4018, %3990 ], [ 0.000000e+00, %3952 ], [ %4292, %4280 ], [ 0.000000e+00, %4022 ], [ 0.000000e+00, %4077 ], [ 0.000000e+00, %4019 ]
  %4298 = phi i1 [ true, %3990 ], [ false, %3952 ], [ true, %4280 ], [ false, %4022 ], [ false, %4077 ], [ false, %4019 ]
  %4299 = and i32 %229, 3
  %4300 = icmp eq i32 %4299, 1
  %4301 = select i1 %4300, float 1.000000e+00, float 0.000000e+00
  %4302 = fsub fast float %4294, %193
  %4303 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4304 = select i1 %4298, float %4303, float 1.000000e+00
  %4305 = fmul fast float %4304, %4301
  %4306 = icmp eq i32 %4299, 3
  %4307 = select i1 %4306, float 1.000000e+00, float %4305
  %4308 = call float @dx.op.binary.f32(i32 35, float %3895, float %4307)  ; FMax(a,b)
  %4309 = fcmp fast olt float %4307, 1.000000e+00
  %4310 = fcmp uge float %69, 0.000000e+00
  %4311 = and i1 %4310, %4309
  br i1 %4311, label %4312, label %4322

; <label>:4312                                    ; preds = %4293
  %4313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %46, float %69, float %70, float %71, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4314 = extractvalue %dx.types.ResRet.f32 %4313, 0
  %4315 = extractvalue %dx.types.ResRet.f32 %4313, 1
  %4316 = extractvalue %dx.types.ResRet.f32 %4313, 2
  %4317 = fadd fast float %4314, %4308
  %4318 = fcmp ule float %68, 0.000000e+00
  %4319 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4320 = select i1 %4318, float %4319, float 1.000000e+00
  %4321 = fmul fast float %4320, %4316
  br label %4322

; <label>:4322                                    ; preds = %4312, %4293
  %4323 = phi float [ %4317, %4312 ], [ %4308, %4293 ]
  %4324 = phi float [ %4315, %4312 ], [ 0.000000e+00, %4293 ]
  %4325 = phi float [ %4321, %4312 ], [ 0.000000e+00, %4293 ]
  %4326 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4327 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = fcmp fast une float %4327, 0.000000e+00
  %4330 = fcmp fast une float %4328, 0.000000e+00
  %4331 = or i1 %4329, %4330
  br i1 %4331, label %4332, label %4891

; <label>:4332                                    ; preds = %4322
  br i1 %4329, label %4333, label %4606

; <label>:4333                                    ; preds = %4332
  %4334 = call float @dx.op.unary.f32(i32 23, float %3892)  ; Log(value)
  %4335 = fmul fast float %4334, 4.000000e+00
  %4336 = call float @dx.op.unary.f32(i32 21, float %4335)  ; Exp(value)
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 0
  %4339 = fmul fast float %4338, %56
  %4340 = fmul fast float %4338, %57
  %4341 = fmul fast float %4338, %58
  %4342 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4343 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4344 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4345 = call float @dx.op.unary.f32(i32 23, float %4342)  ; Log(value)
  %4346 = call float @dx.op.unary.f32(i32 23, float %4343)  ; Log(value)
  %4347 = call float @dx.op.unary.f32(i32 23, float %4344)  ; Log(value)
  %4348 = fmul fast float %4345, 4.000000e+00
  %4349 = fmul fast float %4346, 4.000000e+00
  %4350 = fmul fast float %4347, 4.000000e+00
  %4351 = call float @dx.op.unary.f32(i32 21, float %4348)  ; Exp(value)
  %4352 = call float @dx.op.unary.f32(i32 21, float %4349)  ; Exp(value)
  %4353 = call float @dx.op.unary.f32(i32 21, float %4350)  ; Exp(value)
  %4354 = fadd fast float %4352, %4351
  %4355 = fadd fast float %4354, %4353
  %4356 = fdiv fast float 1.000000e+00, %4355
  %4357 = fmul fast float %4356, %4351
  %4358 = fcmp fast ogt float %65, 0.000000e+00
  %4359 = fcmp fast ogt float %66, 0.000000e+00
  %4360 = fcmp fast ogt float %67, 0.000000e+00
  %4361 = fcmp fast olt float %65, 0.000000e+00
  %4362 = fcmp fast olt float %66, 0.000000e+00
  %4363 = fcmp fast olt float %67, 0.000000e+00
  %4364 = zext i1 %4358 to i32
  %4365 = zext i1 %4359 to i32
  %4366 = zext i1 %4360 to i32
  %4367 = zext i1 %4361 to i32
  %4368 = zext i1 %4362 to i32
  %4369 = zext i1 %4363 to i32
  %4370 = sub nsw i32 %4364, %4367
  %4371 = sub nsw i32 %4365, %4368
  %4372 = sub nsw i32 %4366, %4369
  %4373 = call float @dx.op.unary.f32(i32 83, float %4339)  ; DerivCoarseX(value)
  %4374 = call float @dx.op.unary.f32(i32 83, float %4340)  ; DerivCoarseX(value)
  %4375 = call float @dx.op.unary.f32(i32 83, float %4341)  ; DerivCoarseX(value)
  %4376 = call float @dx.op.unary.f32(i32 84, float %4339)  ; DerivCoarseY(value)
  %4377 = call float @dx.op.unary.f32(i32 84, float %4340)  ; DerivCoarseY(value)
  %4378 = call float @dx.op.unary.f32(i32 84, float %4341)  ; DerivCoarseY(value)
  %4379 = fcmp fast ole float %261, %4357
  %4380 = fmul fast float %4356, %4354
  %4381 = fcmp fast ole float %261, %4380
  %4382 = select i1 %4381, float %4341, float %4339
  %4383 = select i1 %4381, float %4339, float %4340
  %4384 = select i1 %4379, float %4340, float %4382
  %4385 = select i1 %4379, float %4341, float %4383
  %4386 = select i1 %4381, float %4375, float %4373
  %4387 = select i1 %4381, float %4373, float %4374
  %4388 = select i1 %4379, float %4374, float %4386
  %4389 = select i1 %4379, float %4375, float %4387
  %4390 = select i1 %4381, float %4378, float %4376
  %4391 = select i1 %4381, float %4376, float %4377
  %4392 = select i1 %4379, float %4377, float %4390
  %4393 = select i1 %4379, float %4378, float %4391
  %4394 = call float @dx.op.unary.f32(i32 27, float %4384)  ; Round_ni(value)
  %4395 = call float @dx.op.unary.f32(i32 27, float %4385)  ; Round_ni(value)
  %4396 = fptosi float %4394 to i32
  %4397 = fptosi float %4395 to i32
  %4398 = xor i32 %4397, %4396
  %4399 = sitofp i32 %4398 to float
  %4400 = fptosi float %4399 to i32
  %4401 = sitofp i32 %4400 to float
  %4402 = fmul fast float %4401, 0x3FE3C6EF40000000
  %4403 = frem fast float %4394, 2.560000e+02
  %4404 = frem fast float %4395, 2.560000e+02
  %4405 = fptoui float %4403 to i32
  %4406 = fptoui float %4404 to i32
  %4407 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4405, i32 %4406, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.ResRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.ResRet.f32 %4407, 2
  %4411 = fadd fast float %4408, %4402
  %4412 = fadd fast float %4409, %4402
  %4413 = fadd fast float %4410, %4402
  %4414 = call float @dx.op.unary.f32(i32 22, float %4411)  ; Frc(value)
  %4415 = call float @dx.op.unary.f32(i32 22, float %4412)  ; Frc(value)
  %4416 = call float @dx.op.unary.f32(i32 22, float %4413)  ; Frc(value)
  %4417 = fmul fast float %4416, 0x401921FB60000000
  %4418 = call float @dx.op.unary.f32(i32 13, float %4417)  ; Sin(value)
  %4419 = call float @dx.op.unary.f32(i32 12, float %4417)  ; Cos(value)
  %4420 = fsub fast float -0.000000e+00, %4419
  %4421 = fmul fast float %4419, %4384
  %4422 = call float @dx.op.tertiary.f32(i32 46, float %4418, float %4385, float %4421)  ; FMad(a,b,c)
  %4423 = fmul fast float %4418, %4384
  %4424 = call float @dx.op.tertiary.f32(i32 46, float %4420, float %4385, float %4423)  ; FMad(a,b,c)
  %4425 = fadd fast float %4422, %4414
  %4426 = fadd fast float %4424, %4415
  %4427 = extractvalue %dx.types.CBufRet.f32 %4337, 3
  %4428 = bitcast float %4427 to i32
  %4429 = icmp eq i32 %4428, 0
  br i1 %4429, label %4468, label %4430

; <label>:4430                                    ; preds = %4333
  %4431 = add i32 %4428, 0
  %4432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4433 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4432, %dx.types.Handle %101, float %4425, float %4426, float undef, float undef, i32 0, i32 0, i32 undef, float %4388, float %4389, float undef, float %4392, float %4393, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 1
  %4437 = extractvalue %dx.types.CBufRet.f32 %4435, 2
  %4438 = fsub fast float 1.000000e+00, %4327
  %4439 = call float @dx.op.binary.f32(i32 35, float %4438, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4440 = bitcast float %4327 to i32
  %4441 = sitofp i32 %4440 to float
  %4442 = fadd fast float %4441, 0xC1CFBF8940000000
  %4443 = fmul fast float %4437, %4442
  %4444 = fadd fast float %4443, 0x41CFBF8940000000
  %4445 = fptosi float %4444 to i32
  %4446 = bitcast i32 %4445 to float
  %4447 = bitcast float %4439 to i32
  %4448 = sitofp i32 %4447 to float
  %4449 = fadd fast float %4448, 0xC1CFBF8940000000
  %4450 = fmul fast float %4449, %4437
  %4451 = fadd fast float %4450, 0x41CFBF8940000000
  %4452 = fptosi float %4451 to i32
  %4453 = bitcast i32 %4452 to float
  %4454 = fmul fast float %4446, %4436
  %4455 = fmul fast float %4453, %4436
  %4456 = fsub fast float %4439, %4454
  %4457 = fadd fast float %4455, %4439
  %4458 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4459 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4460 = fsub fast float %4434, %4458
  %4461 = fsub fast float %4459, %4458
  %4462 = bitcast float %4461 to i32
  %4463 = sub nsw i32 2129859010, %4462
  %4464 = bitcast i32 %4463 to float
  %4465 = fmul fast float %4464, %4460
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fcmp fast olt float %4466, 0x3F70101020000000
  br i1 %4467, label %4606, label %4468

; <label>:4468                                    ; preds = %4430, %4333
  %4469 = phi float [ %4466, %4430 ], [ %4327, %4333 ]
  %4470 = fmul fast float %4469, %4336
  %4471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.i32 %4471, 1
  %4473 = extractvalue %dx.types.CBufRet.i32 %4471, 0
  %4474 = add i32 %4473, 0
  %4475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4476 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4475, %dx.types.Handle %100, float %4425, float %4426, float undef, float undef, i32 0, i32 0, i32 undef, float %4388, float %4389, float undef, float %4392, float %4393, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.ResRet.f32 %4476, 1
  %4479 = extractvalue %dx.types.ResRet.f32 %4476, 2
  %4480 = extractvalue %dx.types.ResRet.f32 %4476, 3
  %4481 = and i32 %4472, 255
  %4482 = uitofp i32 %4481 to float
  %4483 = lshr i32 %4472, 8
  %4484 = and i32 %4483, 255
  %4485 = uitofp i32 %4484 to float
  %4486 = fmul fast float %4480, %4482
  %4487 = fadd fast float %4486, %4485
  %4488 = fmul fast float %4487, 0x3F70101000000000
  %4489 = fadd fast float %4488, 0xBFB99999A0000000
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fmul fast float %4490, 0x3FF1C71C80000000
  %4492 = call float @dx.op.binary.f32(i32 36, float %4488, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4493 = fsub fast float 1.000000e+00, %4491
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = fmul fast float %4494, %4477
  %4496 = fmul fast float %4494, %4478
  %4497 = fmul fast float %4494, %4479
  %4498 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4499 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4500 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4501 = fmul fast float %4491, %4477
  %4502 = fmul fast float %4491, %4478
  %4503 = fmul fast float %4491, %4479
  %4504 = fadd fast float %4501, %4492
  %4505 = fadd fast float %4502, %4492
  %4506 = fadd fast float %4503, %4492
  %4507 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4508 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.i32 %4510, 3
  %4512 = extractvalue %dx.types.CBufRet.i32 %4510, 2
  %4513 = add i32 %4512, 0
  %4514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4515 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4514, %dx.types.Handle %100, float %4425, float %4426, float undef, float undef, i32 0, i32 0, i32 undef, float %4388, float %4389, float undef, float %4392, float %4393, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4516 = extractvalue %dx.types.ResRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.ResRet.f32 %4515, 1
  %4518 = extractvalue %dx.types.ResRet.f32 %4515, 2
  %4519 = extractvalue %dx.types.ResRet.f32 %4515, 3
  %4520 = and i32 %4511, 255
  %4521 = uitofp i32 %4520 to float
  %4522 = lshr i32 %4511, 8
  %4523 = and i32 %4522, 255
  %4524 = uitofp i32 %4523 to float
  %4525 = lshr i32 %4511, 16
  %4526 = and i32 %4525, 255
  %4527 = uitofp i32 %4526 to float
  %4528 = fmul fast float %4527, 0x3F70101000000000
  %4529 = fmul fast float %4516, %4521
  %4530 = fadd fast float %4529, %4524
  %4531 = fmul fast float %4530, 0x3F70101000000000
  %4532 = fadd fast float %4517, -5.000000e-01
  %4533 = fadd fast float %4519, -5.000000e-01
  %4534 = fmul fast float %4532, %4528
  %4535 = fmul fast float %4533, %4528
  %4536 = fadd fast float %4534, 5.000000e-01
  %4537 = fadd fast float %4535, 5.000000e-01
  %4538 = fmul fast float %4536, 2.000000e+00
  %4539 = fadd fast float %4538, -1.000000e+00
  %4540 = fmul fast float %4537, 2.000000e+00
  %4541 = fadd fast float %4540, -1.000000e+00
  %4542 = fadd fast float %4539, %4541
  %4543 = fmul fast float %4542, 5.000000e-01
  %4544 = fsub fast float %4539, %4541
  %4545 = fmul fast float %4544, 5.000000e-01
  %4546 = call float @dx.op.unary.f32(i32 6, float %4543)  ; FAbs(value)
  %4547 = fsub fast float 1.000000e+00, %4546
  %4548 = call float @dx.op.unary.f32(i32 6, float %4545)  ; FAbs(value)
  %4549 = fsub fast float %4547, %4548
  %4550 = call float @dx.op.dot3.f32(i32 55, float %4543, float %4545, float %4549, float %4543, float %4545, float %4549)  ; Dot3(ax,ay,az,bx,by,bz)
  %4551 = call float @dx.op.unary.f32(i32 25, float %4550)  ; Rsqrt(value)
  %4552 = fmul fast float %4543, %4551
  %4553 = fmul fast float %4545, %4551
  %4554 = select i1 %4381, i32 %4371, i32 %4372
  %4555 = select i1 %4379, i32 %4370, i32 %4554
  %4556 = sitofp i32 %4555 to float
  %4557 = fmul fast float %4549, %4556
  %4558 = fmul fast float %4557, %4551
  %4559 = select i1 %4381, float %4558, float %4553
  %4560 = select i1 %4381, float %4553, float %4558
  %4561 = select i1 %4379, float %4558, float %4552
  %4562 = select i1 %4379, float %4553, float %4559
  %4563 = select i1 %4379, float %4552, float %4560
  %4564 = fsub fast float %4498, %3931
  %4565 = fsub fast float %4499, %3932
  %4566 = fsub fast float %4500, %3933
  %4567 = fmul fast float %4564, %4470
  %4568 = fmul fast float %4565, %4470
  %4569 = fmul fast float %4566, %4470
  %4570 = fadd fast float %4567, %3931
  %4571 = fadd fast float %4568, %3932
  %4572 = fadd fast float %4569, %3933
  %4573 = fsub fast float %4507, %3916
  %4574 = fsub fast float %4508, %3917
  %4575 = fsub fast float %4509, %3918
  %4576 = fmul fast float %4573, %4470
  %4577 = fmul fast float %4574, %4470
  %4578 = fmul fast float %4575, %4470
  %4579 = fadd fast float %4576, %3916
  %4580 = fadd fast float %4577, %3917
  %4581 = fadd fast float %4578, %3918
  %4582 = fadd fast float %4561, %3880
  %4583 = fadd fast float %4562, %3881
  %4584 = fadd fast float %4563, %3882
  %4585 = call float @dx.op.dot3.f32(i32 55, float %4582, float %4583, float %4584, float %4582, float %4583, float %4584)  ; Dot3(ax,ay,az,bx,by,bz)
  %4586 = call float @dx.op.unary.f32(i32 25, float %4585)  ; Rsqrt(value)
  %4587 = fmul fast float %4582, %4586
  %4588 = fmul fast float %4583, %4586
  %4589 = fmul fast float %4584, %4586
  %4590 = fsub fast float %4587, %3880
  %4591 = fsub fast float %4588, %3881
  %4592 = fsub fast float %4589, %3882
  %4593 = fmul fast float %4590, %4470
  %4594 = fmul fast float %4591, %4470
  %4595 = fmul fast float %4592, %4470
  %4596 = fadd fast float %4593, %3880
  %4597 = fadd fast float %4594, %3881
  %4598 = fadd fast float %4595, %3882
  %4599 = call float @dx.op.binary.f32(i32 36, float %3892, float %4518)  ; FMin(a,b)
  %4600 = fsub fast float %4599, %3892
  %4601 = fmul fast float %4600, %4470
  %4602 = fadd fast float %4601, %3892
  %4603 = fsub fast float %4531, %3919
  %4604 = fmul fast float %4603, %4470
  %4605 = fadd fast float %4604, %3919
  br label %4606

; <label>:4606                                    ; preds = %4468, %4430, %4332
  %4607 = phi float [ %4570, %4468 ], [ %3931, %4430 ], [ %3931, %4332 ]
  %4608 = phi float [ %4571, %4468 ], [ %3932, %4430 ], [ %3932, %4332 ]
  %4609 = phi float [ %4572, %4468 ], [ %3933, %4430 ], [ %3933, %4332 ]
  %4610 = phi float [ %4579, %4468 ], [ %3916, %4430 ], [ %3916, %4332 ]
  %4611 = phi float [ %4580, %4468 ], [ %3917, %4430 ], [ %3917, %4332 ]
  %4612 = phi float [ %4581, %4468 ], [ %3918, %4430 ], [ %3918, %4332 ]
  %4613 = phi float [ %4596, %4468 ], [ %3880, %4430 ], [ %3880, %4332 ]
  %4614 = phi float [ %4597, %4468 ], [ %3881, %4430 ], [ %3881, %4332 ]
  %4615 = phi float [ %4598, %4468 ], [ %3882, %4430 ], [ %3882, %4332 ]
  %4616 = phi float [ %4605, %4468 ], [ %3919, %4430 ], [ %3919, %4332 ]
  %4617 = phi float [ %4602, %4468 ], [ %3892, %4430 ], [ %3892, %4332 ]
  br i1 %4330, label %4618, label %4891

; <label>:4618                                    ; preds = %4606
  %4619 = call float @dx.op.unary.f32(i32 23, float %4617)  ; Log(value)
  %4620 = fmul fast float %4619, 4.000000e+00
  %4621 = call float @dx.op.unary.f32(i32 21, float %4620)  ; Exp(value)
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 0
  %4624 = fmul fast float %4623, %56
  %4625 = fmul fast float %4623, %57
  %4626 = fmul fast float %4623, %58
  %4627 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4628 = call float @dx.op.unary.f32(i32 6, float %66)  ; FAbs(value)
  %4629 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4630 = call float @dx.op.unary.f32(i32 23, float %4627)  ; Log(value)
  %4631 = call float @dx.op.unary.f32(i32 23, float %4628)  ; Log(value)
  %4632 = call float @dx.op.unary.f32(i32 23, float %4629)  ; Log(value)
  %4633 = fmul fast float %4630, 4.000000e+00
  %4634 = fmul fast float %4631, 4.000000e+00
  %4635 = fmul fast float %4632, 4.000000e+00
  %4636 = call float @dx.op.unary.f32(i32 21, float %4633)  ; Exp(value)
  %4637 = call float @dx.op.unary.f32(i32 21, float %4634)  ; Exp(value)
  %4638 = call float @dx.op.unary.f32(i32 21, float %4635)  ; Exp(value)
  %4639 = fadd fast float %4637, %4636
  %4640 = fadd fast float %4639, %4638
  %4641 = fdiv fast float 1.000000e+00, %4640
  %4642 = fmul fast float %4641, %4636
  %4643 = fcmp fast ogt float %65, 0.000000e+00
  %4644 = fcmp fast ogt float %66, 0.000000e+00
  %4645 = fcmp fast ogt float %67, 0.000000e+00
  %4646 = fcmp fast olt float %65, 0.000000e+00
  %4647 = fcmp fast olt float %66, 0.000000e+00
  %4648 = fcmp fast olt float %67, 0.000000e+00
  %4649 = zext i1 %4643 to i32
  %4650 = zext i1 %4644 to i32
  %4651 = zext i1 %4645 to i32
  %4652 = zext i1 %4646 to i32
  %4653 = zext i1 %4647 to i32
  %4654 = zext i1 %4648 to i32
  %4655 = sub nsw i32 %4649, %4652
  %4656 = sub nsw i32 %4650, %4653
  %4657 = sub nsw i32 %4651, %4654
  %4658 = call float @dx.op.unary.f32(i32 83, float %4624)  ; DerivCoarseX(value)
  %4659 = call float @dx.op.unary.f32(i32 83, float %4625)  ; DerivCoarseX(value)
  %4660 = call float @dx.op.unary.f32(i32 83, float %4626)  ; DerivCoarseX(value)
  %4661 = call float @dx.op.unary.f32(i32 84, float %4624)  ; DerivCoarseY(value)
  %4662 = call float @dx.op.unary.f32(i32 84, float %4625)  ; DerivCoarseY(value)
  %4663 = call float @dx.op.unary.f32(i32 84, float %4626)  ; DerivCoarseY(value)
  %4664 = fcmp fast ole float %261, %4642
  %4665 = fmul fast float %4641, %4639
  %4666 = fcmp fast ole float %261, %4665
  %4667 = select i1 %4666, float %4626, float %4624
  %4668 = select i1 %4666, float %4624, float %4625
  %4669 = select i1 %4664, float %4625, float %4667
  %4670 = select i1 %4664, float %4626, float %4668
  %4671 = select i1 %4666, float %4660, float %4658
  %4672 = select i1 %4666, float %4658, float %4659
  %4673 = select i1 %4664, float %4659, float %4671
  %4674 = select i1 %4664, float %4660, float %4672
  %4675 = select i1 %4666, float %4663, float %4661
  %4676 = select i1 %4666, float %4661, float %4662
  %4677 = select i1 %4664, float %4662, float %4675
  %4678 = select i1 %4664, float %4663, float %4676
  %4679 = call float @dx.op.unary.f32(i32 27, float %4669)  ; Round_ni(value)
  %4680 = call float @dx.op.unary.f32(i32 27, float %4670)  ; Round_ni(value)
  %4681 = fptosi float %4679 to i32
  %4682 = fptosi float %4680 to i32
  %4683 = xor i32 %4682, %4681
  %4684 = sitofp i32 %4683 to float
  %4685 = fptosi float %4684 to i32
  %4686 = sitofp i32 %4685 to float
  %4687 = fmul fast float %4686, 0x3FE3C6EF40000000
  %4688 = frem fast float %4679, 2.560000e+02
  %4689 = frem fast float %4680, 2.560000e+02
  %4690 = fptoui float %4688 to i32
  %4691 = fptoui float %4689 to i32
  %4692 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4690, i32 %4691, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = extractvalue %dx.types.ResRet.f32 %4692, 1
  %4695 = extractvalue %dx.types.ResRet.f32 %4692, 2
  %4696 = fadd fast float %4693, %4687
  %4697 = fadd fast float %4694, %4687
  %4698 = fadd fast float %4695, %4687
  %4699 = call float @dx.op.unary.f32(i32 22, float %4696)  ; Frc(value)
  %4700 = call float @dx.op.unary.f32(i32 22, float %4697)  ; Frc(value)
  %4701 = call float @dx.op.unary.f32(i32 22, float %4698)  ; Frc(value)
  %4702 = fmul fast float %4701, 0x401921FB60000000
  %4703 = call float @dx.op.unary.f32(i32 13, float %4702)  ; Sin(value)
  %4704 = call float @dx.op.unary.f32(i32 12, float %4702)  ; Cos(value)
  %4705 = fsub fast float -0.000000e+00, %4704
  %4706 = fmul fast float %4704, %4669
  %4707 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4670, float %4706)  ; FMad(a,b,c)
  %4708 = fmul fast float %4703, %4669
  %4709 = call float @dx.op.tertiary.f32(i32 46, float %4705, float %4670, float %4708)  ; FMad(a,b,c)
  %4710 = fadd fast float %4707, %4699
  %4711 = fadd fast float %4709, %4700
  %4712 = extractvalue %dx.types.CBufRet.f32 %4622, 3
  %4713 = bitcast float %4712 to i32
  %4714 = icmp eq i32 %4713, 0
  br i1 %4714, label %4753, label %4715

; <label>:4715                                    ; preds = %4618
  %4716 = add i32 %4713, 0
  %4717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4718 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4717, %dx.types.Handle %101, float %4710, float %4711, float undef, float undef, i32 0, i32 0, i32 undef, float %4673, float %4674, float undef, float %4677, float %4678, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4719 = extractvalue %dx.types.ResRet.f32 %4718, 0
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4722 = extractvalue %dx.types.CBufRet.f32 %4720, 2
  %4723 = fsub fast float 1.000000e+00, %4328
  %4724 = call float @dx.op.binary.f32(i32 35, float %4723, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4725 = bitcast float %4328 to i32
  %4726 = sitofp i32 %4725 to float
  %4727 = fadd fast float %4726, 0xC1CFBF8940000000
  %4728 = fmul fast float %4722, %4727
  %4729 = fadd fast float %4728, 0x41CFBF8940000000
  %4730 = fptosi float %4729 to i32
  %4731 = bitcast i32 %4730 to float
  %4732 = bitcast float %4724 to i32
  %4733 = sitofp i32 %4732 to float
  %4734 = fadd fast float %4733, 0xC1CFBF8940000000
  %4735 = fmul fast float %4734, %4722
  %4736 = fadd fast float %4735, 0x41CFBF8940000000
  %4737 = fptosi float %4736 to i32
  %4738 = bitcast i32 %4737 to float
  %4739 = fmul fast float %4731, %4721
  %4740 = fmul fast float %4738, %4721
  %4741 = fsub fast float %4724, %4739
  %4742 = fadd fast float %4740, %4724
  %4743 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4744 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4745 = fsub fast float %4719, %4743
  %4746 = fsub fast float %4744, %4743
  %4747 = bitcast float %4746 to i32
  %4748 = sub nsw i32 2129859010, %4747
  %4749 = bitcast i32 %4748 to float
  %4750 = fmul fast float %4749, %4745
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fcmp fast olt float %4751, 0x3F70101020000000
  br i1 %4752, label %4891, label %4753

; <label>:4753                                    ; preds = %4715, %4618
  %4754 = phi float [ %4751, %4715 ], [ %4328, %4618 ]
  %4755 = fmul fast float %4754, %4621
  %4756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4757 = extractvalue %dx.types.CBufRet.i32 %4756, 1
  %4758 = extractvalue %dx.types.CBufRet.i32 %4756, 0
  %4759 = add i32 %4758, 0
  %4760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4761 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4760, %dx.types.Handle %100, float %4710, float %4711, float undef, float undef, i32 0, i32 0, i32 undef, float %4673, float %4674, float undef, float %4677, float %4678, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.ResRet.f32 %4761, 2
  %4765 = extractvalue %dx.types.ResRet.f32 %4761, 3
  %4766 = and i32 %4757, 255
  %4767 = uitofp i32 %4766 to float
  %4768 = lshr i32 %4757, 8
  %4769 = and i32 %4768, 255
  %4770 = uitofp i32 %4769 to float
  %4771 = fmul fast float %4765, %4767
  %4772 = fadd fast float %4771, %4770
  %4773 = fmul fast float %4772, 0x3F70101000000000
  %4774 = fadd fast float %4773, 0xBFB99999A0000000
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = fmul fast float %4775, 0x3FF1C71C80000000
  %4777 = call float @dx.op.binary.f32(i32 36, float %4773, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4778 = fsub fast float 1.000000e+00, %4776
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fmul fast float %4779, %4762
  %4781 = fmul fast float %4779, %4763
  %4782 = fmul fast float %4779, %4764
  %4783 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4784 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4785 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4786 = fmul fast float %4776, %4762
  %4787 = fmul fast float %4776, %4763
  %4788 = fmul fast float %4776, %4764
  %4789 = fadd fast float %4786, %4777
  %4790 = fadd fast float %4787, %4777
  %4791 = fadd fast float %4788, %4777
  %4792 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4793 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4794 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.i32 %4795, 3
  %4797 = extractvalue %dx.types.CBufRet.i32 %4795, 2
  %4798 = add i32 %4797, 0
  %4799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4800 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4799, %dx.types.Handle %100, float %4710, float %4711, float undef, float undef, i32 0, i32 0, i32 undef, float %4673, float %4674, float undef, float %4677, float %4678, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4801 = extractvalue %dx.types.ResRet.f32 %4800, 0
  %4802 = extractvalue %dx.types.ResRet.f32 %4800, 1
  %4803 = extractvalue %dx.types.ResRet.f32 %4800, 2
  %4804 = extractvalue %dx.types.ResRet.f32 %4800, 3
  %4805 = and i32 %4796, 255
  %4806 = uitofp i32 %4805 to float
  %4807 = lshr i32 %4796, 8
  %4808 = and i32 %4807, 255
  %4809 = uitofp i32 %4808 to float
  %4810 = lshr i32 %4796, 16
  %4811 = and i32 %4810, 255
  %4812 = uitofp i32 %4811 to float
  %4813 = fmul fast float %4812, 0x3F70101000000000
  %4814 = fmul fast float %4801, %4806
  %4815 = fadd fast float %4814, %4809
  %4816 = fmul fast float %4815, 0x3F70101000000000
  %4817 = fadd fast float %4802, -5.000000e-01
  %4818 = fadd fast float %4804, -5.000000e-01
  %4819 = fmul fast float %4817, %4813
  %4820 = fmul fast float %4818, %4813
  %4821 = fadd fast float %4819, 5.000000e-01
  %4822 = fadd fast float %4820, 5.000000e-01
  %4823 = fmul fast float %4821, 2.000000e+00
  %4824 = fadd fast float %4823, -1.000000e+00
  %4825 = fmul fast float %4822, 2.000000e+00
  %4826 = fadd fast float %4825, -1.000000e+00
  %4827 = fadd fast float %4824, %4826
  %4828 = fmul fast float %4827, 5.000000e-01
  %4829 = fsub fast float %4824, %4826
  %4830 = fmul fast float %4829, 5.000000e-01
  %4831 = call float @dx.op.unary.f32(i32 6, float %4828)  ; FAbs(value)
  %4832 = fsub fast float 1.000000e+00, %4831
  %4833 = call float @dx.op.unary.f32(i32 6, float %4830)  ; FAbs(value)
  %4834 = fsub fast float %4832, %4833
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4828, float %4830, float %4834, float %4828, float %4830, float %4834)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = call float @dx.op.unary.f32(i32 25, float %4835)  ; Rsqrt(value)
  %4837 = fmul fast float %4828, %4836
  %4838 = fmul fast float %4830, %4836
  %4839 = select i1 %4666, i32 %4656, i32 %4657
  %4840 = select i1 %4664, i32 %4655, i32 %4839
  %4841 = sitofp i32 %4840 to float
  %4842 = fmul fast float %4834, %4841
  %4843 = fmul fast float %4842, %4836
  %4844 = select i1 %4666, float %4843, float %4838
  %4845 = select i1 %4666, float %4838, float %4843
  %4846 = select i1 %4664, float %4843, float %4837
  %4847 = select i1 %4664, float %4838, float %4844
  %4848 = select i1 %4664, float %4837, float %4845
  %4849 = fsub fast float %4783, %4607
  %4850 = fsub fast float %4784, %4608
  %4851 = fsub fast float %4785, %4609
  %4852 = fmul fast float %4849, %4755
  %4853 = fmul fast float %4850, %4755
  %4854 = fmul fast float %4851, %4755
  %4855 = fadd fast float %4852, %4607
  %4856 = fadd fast float %4853, %4608
  %4857 = fadd fast float %4854, %4609
  %4858 = fsub fast float %4792, %4610
  %4859 = fsub fast float %4793, %4611
  %4860 = fsub fast float %4794, %4612
  %4861 = fmul fast float %4858, %4755
  %4862 = fmul fast float %4859, %4755
  %4863 = fmul fast float %4860, %4755
  %4864 = fadd fast float %4861, %4610
  %4865 = fadd fast float %4862, %4611
  %4866 = fadd fast float %4863, %4612
  %4867 = fadd fast float %4846, %4613
  %4868 = fadd fast float %4847, %4614
  %4869 = fadd fast float %4848, %4615
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float %4867, float %4868, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = call float @dx.op.unary.f32(i32 25, float %4870)  ; Rsqrt(value)
  %4872 = fmul fast float %4867, %4871
  %4873 = fmul fast float %4868, %4871
  %4874 = fmul fast float %4869, %4871
  %4875 = fsub fast float %4872, %4613
  %4876 = fsub fast float %4873, %4614
  %4877 = fsub fast float %4874, %4615
  %4878 = fmul fast float %4875, %4755
  %4879 = fmul fast float %4876, %4755
  %4880 = fmul fast float %4877, %4755
  %4881 = fadd fast float %4878, %4613
  %4882 = fadd fast float %4879, %4614
  %4883 = fadd fast float %4880, %4615
  %4884 = call float @dx.op.binary.f32(i32 36, float %4617, float %4803)  ; FMin(a,b)
  %4885 = fsub fast float %4884, %4617
  %4886 = fmul fast float %4885, %4755
  %4887 = fadd fast float %4886, %4617
  %4888 = fsub fast float %4816, %4616
  %4889 = fmul fast float %4888, %4755
  %4890 = fadd fast float %4889, %4616
  br label %4891

; <label>:4891                                    ; preds = %4753, %4715, %4606, %4322
  %4892 = phi float [ %4855, %4753 ], [ %4607, %4715 ], [ %4607, %4606 ], [ %3931, %4322 ]
  %4893 = phi float [ %4856, %4753 ], [ %4608, %4715 ], [ %4608, %4606 ], [ %3932, %4322 ]
  %4894 = phi float [ %4857, %4753 ], [ %4609, %4715 ], [ %4609, %4606 ], [ %3933, %4322 ]
  %4895 = phi float [ %4864, %4753 ], [ %4610, %4715 ], [ %4610, %4606 ], [ %3916, %4322 ]
  %4896 = phi float [ %4865, %4753 ], [ %4611, %4715 ], [ %4611, %4606 ], [ %3917, %4322 ]
  %4897 = phi float [ %4866, %4753 ], [ %4612, %4715 ], [ %4612, %4606 ], [ %3918, %4322 ]
  %4898 = phi float [ %4881, %4753 ], [ %4613, %4715 ], [ %4613, %4606 ], [ %3880, %4322 ]
  %4899 = phi float [ %4882, %4753 ], [ %4614, %4715 ], [ %4614, %4606 ], [ %3881, %4322 ]
  %4900 = phi float [ %4883, %4753 ], [ %4615, %4715 ], [ %4615, %4606 ], [ %3882, %4322 ]
  %4901 = phi float [ %4890, %4753 ], [ %4616, %4715 ], [ %4616, %4606 ], [ %3919, %4322 ]
  %4902 = phi float [ %4887, %4753 ], [ %4617, %4715 ], [ %4617, %4606 ], [ %3892, %4322 ]
  %4903 = fcmp fast une float %4326, 0.000000e+00
  %4904 = call float @dx.op.dot3.f32(i32 55, float %191, float %192, float %193, float %191, float %192, float %193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = call float @dx.op.unary.f32(i32 25, float %4904)  ; Rsqrt(value)
  br i1 %4903, label %4913, label %4906

; <label>:4906                                    ; preds = %4891
  %4907 = fmul fast float %4905, %191
  %4908 = fmul fast float %4905, %192
  %4909 = fmul fast float %4905, %193
  %4910 = fsub fast float -0.000000e+00, %4907
  %4911 = fsub fast float -0.000000e+00, %4908
  %4912 = fsub fast float -0.000000e+00, %4909
  br label %5080

; <label>:4913                                    ; preds = %4891
  %4914 = fmul fast float %191, %4905
  %4915 = fsub fast float -0.000000e+00, %4914
  %4916 = fmul fast float %192, %4905
  %4917 = fsub fast float -0.000000e+00, %4916
  %4918 = fmul fast float %193, %4905
  %4919 = fsub fast float -0.000000e+00, %4918
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4915, float %4917, float %4919, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = fmul fast float %4326, 2.500000e+00
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4326, 0x4013FFFFE0000000
  %4924 = fadd fast float %4923, 0xBFFFFFFFE0000000
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fmul fast float %4326, 0x4004000020000000
  %4927 = fadd fast float %4926, 0xBFF8000040000000
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fmul fast float %3898, 1.000000e+01
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %4930, 2.000000e+00
  %4932 = fsub fast float 3.000000e+00, %4931
  %4933 = fmul fast float %4930, %4930
  %4934 = fmul fast float %4933, %4932
  %4935 = fsub fast float 1.000000e+00, %4934
  %4936 = fsub fast float 0x3FE3333340000000, %4901
  %4937 = fmul fast float %4936, 0x400AAAAAA0000000
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = fmul fast float %4935, %4938
  %4940 = fmul fast float %4892, 0x3FEA2B8620000000
  %4941 = fmul fast float %4893, 0x3FEA2B8620000000
  %4942 = fmul fast float %4894, 0x3FEA2B8620000000
  %4943 = fadd fast float %4940, 0x3FC81DFBA0000000
  %4944 = fmul fast float %4943, %4892
  %4945 = fadd fast float %4944, 0x3F910E6020000000
  %4946 = fadd fast float %4941, 0x3FC81DFBA0000000
  %4947 = fmul fast float %4946, %4893
  %4948 = fadd fast float %4947, 0x3F910E6020000000
  %4949 = fadd fast float %4942, 0x3FC81DFBA0000000
  %4950 = fmul fast float %4949, %4894
  %4951 = fadd fast float %4950, 0x3F910E6020000000
  %4952 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4955 = fsub fast float %4952, %4892
  %4956 = fsub fast float %4953, %4893
  %4957 = fsub fast float %4954, %4894
  %4958 = fmul fast float %4955, %4922
  %4959 = fmul fast float %4958, %4939
  %4960 = fmul fast float %4956, %4922
  %4961 = fmul fast float %4960, %4939
  %4962 = fmul fast float %4957, %4922
  %4963 = fmul fast float %4962, %4939
  %4964 = fadd fast float %4959, %4892
  %4965 = fadd fast float %4961, %4893
  %4966 = fadd fast float %4963, %4894
  %4967 = fmul fast float %4902, %4902
  %4968 = fmul fast float %4967, %4967
  %4969 = fadd fast float %4925, 1.000000e+00
  %4970 = fsub fast float %4969, %4939
  %4971 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4972 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = fsub fast float 1.000000e+00, %4968
  %4975 = call float @dx.op.binary.f32(i32 36, float %4971, float %4974)  ; FMin(a,b)
  %4976 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4977 = call float @dx.op.binary.f32(i32 35, float %4975, float %4976)  ; FMax(a,b)
  %4978 = fadd fast float %4973, 0xBFE4CCCCC0000000
  %4979 = fmul fast float %4978, 0x4006DB6DA0000000
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fmul fast float %4980, 2.000000e+00
  %4982 = fsub fast float 3.000000e+00, %4981
  %4983 = bitcast float %4895 to i32
  %4984 = ashr i32 %4983, 1
  %4985 = add nsw i32 %4984, 532487669
  %4986 = bitcast i32 %4985 to float
  %4987 = fsub fast float 1.000000e+00, %4986
  %4988 = bitcast float %4987 to i32
  %4989 = sub nsw i32 2129859010, %4988
  %4990 = bitcast i32 %4989 to float
  %4991 = fmul fast float %4990, 2.000000e+00
  %4992 = bitcast float %4896 to i32
  %4993 = ashr i32 %4992, 1
  %4994 = add nsw i32 %4993, 532487669
  %4995 = bitcast i32 %4994 to float
  %4996 = fsub fast float 1.000000e+00, %4995
  %4997 = bitcast float %4996 to i32
  %4998 = sub nsw i32 2129859010, %4997
  %4999 = bitcast i32 %4998 to float
  %5000 = fmul fast float %4999, 2.000000e+00
  %5001 = bitcast float %4897 to i32
  %5002 = ashr i32 %5001, 1
  %5003 = add nsw i32 %5002, 532487669
  %5004 = bitcast i32 %5003 to float
  %5005 = fsub fast float 1.000000e+00, %5004
  %5006 = bitcast float %5005 to i32
  %5007 = sub nsw i32 2129859010, %5006
  %5008 = bitcast i32 %5007 to float
  %5009 = fmul fast float %5008, 2.000000e+00
  %5010 = fsub fast float 0x4002A9FBE0000000, %4991
  %5011 = fadd fast float %4991, 0x3FD54FDF00000000
  %5012 = bitcast float %5011 to i32
  %5013 = sub nsw i32 2129859010, %5012
  %5014 = bitcast i32 %5013 to float
  %5015 = fmul fast float %5014, %5010
  %5016 = fmul fast float %5015, %5015
  %5017 = fsub fast float 0x4002A9FBE0000000, %5000
  %5018 = fadd fast float %5000, 0x3FD54FDF00000000
  %5019 = bitcast float %5018 to i32
  %5020 = sub nsw i32 2129859010, %5019
  %5021 = bitcast i32 %5020 to float
  %5022 = fmul fast float %5021, %5017
  %5023 = fmul fast float %5022, %5022
  %5024 = fsub fast float 0x4002A9FBE0000000, %5009
  %5025 = fadd fast float %5009, 0x3FD54FDF00000000
  %5026 = bitcast float %5025 to i32
  %5027 = sub nsw i32 2129859010, %5026
  %5028 = bitcast i32 %5027 to float
  %5029 = fmul fast float %5028, %5024
  %5030 = fmul fast float %5029, %5029
  %5031 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5016)  ; FMax(a,b)
  %5032 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5023)  ; FMax(a,b)
  %5033 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5030)  ; FMax(a,b)
  %5034 = fsub fast float 1.000000e+00, %4920
  %5035 = fadd fast float %5034, %4935
  %5036 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5037 = fsub fast float 1.000000e+00, %4307
  %5038 = fmul fast float %4977, %5037
  %5039 = fmul fast float %4980, %4980
  %5040 = fmul fast float %5039, %5038
  %5041 = fmul fast float %5040, %4982
  %5042 = fmul fast float %5037, 0xBFE99999A0000000
  %5043 = fmul fast float %5042, %4922
  %5044 = fmul fast float %5043, %4939
  %5045 = fadd fast float %5044, 1.000000e+00
  %5046 = fadd fast float %4901, -1.000000e+00
  %5047 = fmul fast float %5045, %5046
  %5048 = fadd fast float %5047, 1.000000e+00
  %5049 = fsub fast float %5031, %4895
  %5050 = fsub fast float %5032, %4896
  %5051 = fsub fast float %5033, %4897
  %5052 = fmul fast float %5041, %5049
  %5053 = fmul fast float %5041, %5050
  %5054 = fmul fast float %5041, %5051
  %5055 = fadd fast float %5052, %4895
  %5056 = fadd fast float %5053, %4896
  %5057 = fadd fast float %5054, %4897
  %5058 = fsub fast float %111, %4898
  %5059 = fsub fast float %112, %4899
  %5060 = fsub fast float %113, %4900
  %5061 = fmul fast float %5041, %5058
  %5062 = fmul fast float %5041, %5059
  %5063 = fmul fast float %5041, %5060
  %5064 = fadd fast float %5061, %4898
  %5065 = fadd fast float %5062, %4899
  %5066 = fadd fast float %5063, %4900
  %5067 = fmul fast float %5041, %5036
  %5068 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5069 = fsub fast float 1.000000e+00, %5068
  %5070 = fmul fast float %5067, %5069
  %5071 = fadd fast float %5070, %5068
  %5072 = fsub fast float 1.000000e+00, %4902
  %5073 = fmul fast float %5041, %5072
  %5074 = fadd fast float %5073, %4902
  %5075 = call float @dx.op.dot3.f32(i32 55, float %5064, float %5065, float %5066, float %5064, float %5065, float %5066)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = call float @dx.op.unary.f32(i32 25, float %5075)  ; Rsqrt(value)
  %5077 = fmul fast float %5064, %5076
  %5078 = fmul fast float %5065, %5076
  %5079 = fmul fast float %5066, %5076
  br label %5080

; <label>:5080                                    ; preds = %4913, %4906
  %5081 = phi float [ %4912, %4906 ], [ %4919, %4913 ]
  %5082 = phi float [ %4911, %4906 ], [ %4917, %4913 ]
  %5083 = phi float [ %4910, %4906 ], [ %4915, %4913 ]
  %5084 = phi float [ %4909, %4906 ], [ %4918, %4913 ]
  %5085 = phi float [ %4908, %4906 ], [ %4916, %4913 ]
  %5086 = phi float [ %4907, %4906 ], [ %4914, %4913 ]
  %5087 = phi float [ %4892, %4906 ], [ %4964, %4913 ]
  %5088 = phi float [ %4893, %4906 ], [ %4965, %4913 ]
  %5089 = phi float [ %4894, %4906 ], [ %4966, %4913 ]
  %5090 = phi float [ %4895, %4906 ], [ %5055, %4913 ]
  %5091 = phi float [ %4896, %4906 ], [ %5056, %4913 ]
  %5092 = phi float [ %4897, %4906 ], [ %5057, %4913 ]
  %5093 = phi float [ %4898, %4906 ], [ %5077, %4913 ]
  %5094 = phi float [ %4899, %4906 ], [ %5078, %4913 ]
  %5095 = phi float [ %4900, %4906 ], [ %5079, %4913 ]
  %5096 = phi float [ %4901, %4906 ], [ %5071, %4913 ]
  %5097 = phi float [ %4902, %4906 ], [ %5074, %4913 ]
  %5098 = fsub fast float -0.000000e+00, %193
  %5099 = select i1 %250, float 0.000000e+00, float %5092
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float %5083, float %5082, float %5081)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5102 = call float @dx.op.dot3.f32(i32 55, float %5086, float %5085, float %5084, float %5093, float %5094, float %5095)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = fmul fast float %5102, 2.000000e+00
  %5104 = fmul fast float %5103, %5093
  %5105 = fmul fast float %5103, %5094
  %5106 = fmul fast float %5103, %5095
  %5107 = fsub fast float %5086, %5104
  %5108 = fsub fast float %5085, %5105
  %5109 = fsub fast float %5084, %5106
  %5110 = call float @dx.op.binary.f32(i32 36, float %5097, float 1.000000e+00)  ; FMin(a,b)
  %5111 = fsub fast float 1.000000e+00, %5097
  %5112 = bitcast float %5111 to i32
  %5113 = sub nsw i32 2129859010, %5112
  %5114 = bitcast i32 %5113 to float
  %5115 = fsub fast float 1.000000e+00, %75
  %5116 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5117 = call float @dx.op.binary.f32(i32 35, float %5116, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5118 = fdiv fast float %5115, %5117
  %5119 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %5120, 5.000000e-01
  %5122 = fadd fast float %5121, 5.000000e-01
  %5123 = fmul fast float %5122, %75
  %5124 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = fmul fast float %5125, %5118
  %5127 = fadd fast float %5123, %5126
  %5128 = fsub fast float 5.000000e-01, %5121
  %5129 = fmul fast float %5128, %5087
  %5130 = fmul fast float %5128, %5088
  %5131 = fmul fast float %5128, %5089
  %5132 = fadd fast float %5127, %5129
  %5133 = fadd fast float %5127, %5130
  %5134 = fadd fast float %5127, %5131
  %5135 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5108, float %5109, float %111, float %112, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5137 = fmul fast float %5136, 5.000000e-01
  %5138 = fadd fast float %5137, 5.000000e-01
  %5139 = fmul fast float %5138, %75
  %5140 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5108, float %5109, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fmul fast float %5141, %5118
  %5143 = fadd fast float %5139, %5142
  %5144 = fsub fast float 5.000000e-01, %5137
  %5145 = fmul fast float %5144, %5087
  %5146 = fmul fast float %5144, %5088
  %5147 = fmul fast float %5144, %5089
  %5148 = fadd fast float %5143, %5145
  %5149 = fadd fast float %5143, %5146
  %5150 = fadd fast float %5143, %5147
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = call float @dx.op.binary.f32(i32 36, float %5087, float %5152)  ; FMin(a,b)
  %5154 = fsub fast float 1.000000e+00, %5110
  %5155 = fmul fast float %5153, %5154
  %5156 = fsub fast float 1.000000e+00, %5155
  %5157 = bitcast float %5156 to i32
  %5158 = sub nsw i32 2129859010, %5157
  %5159 = bitcast i32 %5158 to float
  %5160 = call float @dx.op.binary.f32(i32 36, float %5088, float %5152)  ; FMin(a,b)
  %5161 = fmul fast float %5160, %5154
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = bitcast float %5162 to i32
  %5164 = sub nsw i32 2129859010, %5163
  %5165 = bitcast i32 %5164 to float
  %5166 = call float @dx.op.binary.f32(i32 36, float %5089, float %5152)  ; FMin(a,b)
  %5167 = fmul fast float %5166, %5154
  %5168 = fsub fast float 1.000000e+00, %5167
  %5169 = bitcast float %5168 to i32
  %5170 = sub nsw i32 2129859010, %5169
  %5171 = bitcast i32 %5170 to float
  %5172 = fmul fast float %5110, %76
  %5173 = fmul fast float %5172, %5132
  %5174 = fmul fast float %5173, %5159
  %5175 = fmul fast float %5110, %77
  %5176 = fmul fast float %5175, %5133
  %5177 = fmul fast float %5176, %5165
  %5178 = fmul fast float %5110, %78
  %5179 = fmul fast float %5178, %5134
  %5180 = fmul fast float %5179, %5171
  %5181 = call float @dx.op.binary.f32(i32 36, float %5090, float %5152)  ; FMin(a,b)
  %5182 = fmul fast float %5181, %5154
  %5183 = fsub fast float 1.000000e+00, %5182
  %5184 = bitcast float %5183 to i32
  %5185 = sub nsw i32 2129859010, %5184
  %5186 = bitcast i32 %5185 to float
  %5187 = call float @dx.op.binary.f32(i32 36, float %5091, float %5152)  ; FMin(a,b)
  %5188 = fmul fast float %5187, %5154
  %5189 = fsub fast float 1.000000e+00, %5188
  %5190 = bitcast float %5189 to i32
  %5191 = sub nsw i32 2129859010, %5190
  %5192 = bitcast i32 %5191 to float
  %5193 = call float @dx.op.binary.f32(i32 36, float %5099, float %5152)  ; FMin(a,b)
  %5194 = fmul fast float %5193, %5154
  %5195 = fsub fast float 1.000000e+00, %5194
  %5196 = bitcast float %5195 to i32
  %5197 = sub nsw i32 2129859010, %5196
  %5198 = bitcast i32 %5197 to float
  %5199 = fmul fast float %5172, %5148
  %5200 = fmul fast float %5199, %5186
  %5201 = fmul fast float %5175, %5149
  %5202 = fmul fast float %5201, %5192
  %5203 = fmul fast float %5178, %5150
  %5204 = fmul fast float %5203, %5198
  %5205 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5177, float %5180, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5206 = select i1 %250, float 0.000000e+00, float %5174
  %5207 = select i1 %250, float %5205, float %5177
  %5208 = select i1 %250, float 0.000000e+00, float %5180
  %5209 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5202, float %5204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = select i1 %250, float 0.000000e+00, float %5200
  %5211 = select i1 %250, float %5209, float %5202
  %5212 = select i1 %250, float 0.000000e+00, float %5204
  %5213 = fmul fast float %5101, 9.843750e-01
  %5214 = fmul fast float %5096, 9.843750e-01
  %5215 = fadd fast float %5213, 7.812500e-03
  %5216 = fadd fast float %5214, 7.812500e-03
  %5217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %5215, float %5216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 2
  %5219 = extractvalue %dx.types.ResRet.f32 %5217, 3
  %5220 = fmul fast float %5218, %5090
  %5221 = fmul fast float %5218, %5091
  %5222 = fmul fast float %5218, %5099
  %5223 = fadd fast float %5220, %5219
  %5224 = fadd fast float %5221, %5219
  %5225 = fadd fast float %5222, %5219
  %5226 = fcmp fast ogt float %3893, 0.000000e+00
  br i1 %5226, label %5227, label %5253

; <label>:5227                                    ; preds = %5080
  %5228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3893, float %5101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5229 = extractvalue %dx.types.ResRet.f32 %5228, 0
  %5230 = extractvalue %dx.types.ResRet.f32 %5228, 1
  %5231 = extractvalue %dx.types.ResRet.f32 %5228, 2
  %5232 = fadd fast float %5229, -5.000000e-01
  %5233 = fadd fast float %5230, -5.000000e-01
  %5234 = fadd fast float %5231, -5.000000e-01
  %5235 = fsub fast float 1.000000e+00, %5090
  %5236 = fsub fast float 1.000000e+00, %5091
  %5237 = fsub fast float 1.000000e+00, %5099
  %5238 = fmul fast float %5090, 4.000000e+00
  %5239 = fmul fast float %5238, %5235
  %5240 = fmul fast float %5239, %5232
  %5241 = fmul fast float %5091, 4.000000e+00
  %5242 = fmul fast float %5241, %5236
  %5243 = fmul fast float %5242, %5233
  %5244 = fmul fast float %5099, 4.000000e+00
  %5245 = fmul fast float %5244, %5237
  %5246 = fmul fast float %5245, %5234
  %5247 = fadd fast float %5240, %5223
  %5248 = fadd fast float %5243, %5224
  %5249 = fadd fast float %5246, %5225
  %5250 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5251 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5252 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  br label %5253

; <label>:5253                                    ; preds = %5227, %5080
  %5254 = phi float [ %5250, %5227 ], [ %5223, %5080 ]
  %5255 = phi float [ %5251, %5227 ], [ %5224, %5080 ]
  %5256 = phi float [ %5252, %5227 ], [ %5225, %5080 ]
  %5257 = call float @dx.op.binary.f32(i32 35, float %5255, float %5256)  ; FMax(a,b)
  %5258 = call float @dx.op.binary.f32(i32 35, float %5254, float %5257)  ; FMax(a,b)
  %5259 = fsub fast float 1.000000e+00, %5258
  %5260 = fmul fast float %5259, %5206
  %5261 = fmul fast float %5259, %5207
  %5262 = fmul fast float %5259, %5208
  %5263 = call float @dx.op.dot3.f32(i32 55, float %5087, float %5088, float %5089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = fcmp fast ogt float %5263, 0x3E7FF19E20000000
  %5265 = fdiv fast float 1.000000e+00, %5263
  %5266 = select i1 %5264, float %5265, float 0.000000e+00
  %5267 = fmul fast float %5266, %5087
  %5268 = fmul fast float %5266, %5088
  %5269 = fmul fast float %5266, %5089
  %5270 = fadd fast float %5267, -1.000000e+00
  %5271 = fadd fast float %5268, -1.000000e+00
  %5272 = fadd fast float %5269, -1.000000e+00
  %5273 = fmul fast float %5270, 5.000000e-01
  %5274 = fmul fast float %5271, 5.000000e-01
  %5275 = fmul fast float %5272, 5.000000e-01
  %5276 = fadd fast float %5273, 1.000000e+00
  %5277 = fadd fast float %5274, 1.000000e+00
  %5278 = fadd fast float %5275, 1.000000e+00
  %5279 = fmul fast float %5254, %5210
  %5280 = fmul fast float %5255, %5211
  %5281 = fmul fast float %5256, %5212
  %5282 = fsub fast float 1.000000e+00, %5101
  %5283 = bitcast float %5282 to i32
  %5284 = sitofp i32 %5283 to float
  %5285 = fmul fast float %5284, 5.000000e+00
  %5286 = fadd fast float %5285, 0xC1EFBF8940000000
  %5287 = fptosi float %5286 to i32
  %5288 = bitcast i32 %5287 to float
  %5289 = fmul fast float %5288, %3894
  %5290 = fmul fast float %5206, %5289
  %5291 = fmul fast float %5290, %5259
  %5292 = fmul fast float %5291, %5276
  %5293 = fmul fast float %5207, %5289
  %5294 = fmul fast float %5293, %5259
  %5295 = fmul fast float %5294, %5277
  %5296 = fmul fast float %5208, %5289
  %5297 = fmul fast float %5296, %5259
  %5298 = fmul fast float %5297, %5278
  %5299 = fmul fast float %5260, %3890
  %5300 = fmul fast float %5261, %3890
  %5301 = fmul fast float %5262, %3890
  %5302 = fadd fast float %5279, %3886
  %5303 = fadd fast float %5302, %5292
  %5304 = fmul fast float %5303, %3890
  %5305 = fadd fast float %5280, %3887
  %5306 = fadd fast float %5305, %5295
  %5307 = fmul fast float %5306, %3890
  %5308 = fadd fast float %5281, %3888
  %5309 = fadd fast float %5308, %5298
  %5310 = fmul fast float %5309, %3890
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 3
  %5313 = fcmp fast oeq float %5312, 0.000000e+00
  br i1 %5313, label %6398, label %5314

; <label>:5314                                    ; preds = %5253
  %5315 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5316 = extractvalue %dx.types.CBufRet.f32 %5311, 1
  %5317 = extractvalue %dx.types.CBufRet.f32 %5311, 2
  %5318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5319 = extractvalue %dx.types.CBufRet.f32 %5318, 0
  %5320 = extractvalue %dx.types.CBufRet.f32 %5318, 1
  %5321 = extractvalue %dx.types.CBufRet.f32 %5318, 2
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 0
  %5324 = extractvalue %dx.types.CBufRet.f32 %5322, 1
  %5325 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %5321, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5326 = select i1 %250, float %5323, float %5319
  %5327 = select i1 %250, float %5325, float %5320
  %5328 = select i1 %250, float %5324, float %5321
  %5329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.f32 %5329, 2
  %5331 = fmul fast float %5330, %111
  %5332 = fmul fast float %5330, %112
  %5333 = fmul fast float %5330, %113
  %5334 = fadd fast float %5331, %191
  %5335 = fadd fast float %5332, %192
  %5336 = fadd fast float %5333, %193
  %5337 = fcmp fast olt float %5312, 0.000000e+00
  br i1 %5337, label %5977, label %5338

; <label>:5338                                    ; preds = %5314
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.CBufRet.f32 %5339, 1
  %5342 = extractvalue %dx.types.CBufRet.f32 %5339, 2
  %5343 = extractvalue %dx.types.CBufRet.f32 %5339, 3
  %5344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.f32 %5344, 0
  %5346 = extractvalue %dx.types.CBufRet.f32 %5344, 1
  %5347 = extractvalue %dx.types.CBufRet.f32 %5344, 2
  %5348 = extractvalue %dx.types.CBufRet.f32 %5344, 3
  %5349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.CBufRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.CBufRet.f32 %5349, 2
  %5353 = extractvalue %dx.types.CBufRet.f32 %5349, 3
  %5354 = fmul fast float %5340, %5334
  %5355 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5341, float %5354)  ; FMad(a,b,c)
  %5356 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5342, float %5355)  ; FMad(a,b,c)
  %5357 = fadd fast float %5356, %5343
  %5358 = fmul fast float %5345, %5334
  %5359 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5346, float %5358)  ; FMad(a,b,c)
  %5360 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5347, float %5359)  ; FMad(a,b,c)
  %5361 = fadd fast float %5360, %5348
  %5362 = fmul fast float %5350, %5334
  %5363 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5351, float %5362)  ; FMad(a,b,c)
  %5364 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5352, float %5363)  ; FMad(a,b,c)
  %5365 = fadd fast float %5364, %5353
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 0
  %5368 = fcmp fast une float %5367, 0.000000e+00
  %5369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.CBufRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.CBufRet.f32 %5369, 3
  %5373 = fmul fast float %5372, %5357
  %5374 = fmul fast float %5372, %5361
  %5375 = fadd fast float %5373, %5370
  %5376 = fadd fast float %5374, %5371
  %5377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.CBufRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.CBufRet.f32 %5377, 3
  %5381 = fmul fast float %5380, %5357
  %5382 = fmul fast float %5380, %5361
  %5383 = fadd fast float %5381, %5378
  %5384 = fadd fast float %5382, %5379
  %5385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.f32 %5385, 1
  %5387 = fsub fast float %5386, %5365
  %5388 = extractvalue %dx.types.CBufRet.f32 %5385, 2
  %5389 = fmul fast float %5387, %5388
  %5390 = fsub fast float 1.000000e+00, %5389
  %5391 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  br i1 %5368, label %5452, label %5392

; <label>:5392                                    ; preds = %5338
  %5393 = extractvalue %dx.types.CBufRet.f32 %5377, 2
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 2
  %5396 = fadd fast float %5395, %5393
  %5397 = fcmp fast ogt float %5396, 0.000000e+00
  br i1 %5397, label %5398, label %5422

; <label>:5398                                    ; preds = %5392
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 0
  %5401 = extractvalue %dx.types.CBufRet.f32 %5399, 1
  %5402 = fsub fast float %5383, %5400
  %5403 = fsub fast float %5384, %5401
  %5404 = fcmp fast olt float %5402, 0.000000e+00
  %5405 = fcmp fast olt float %5403, 0.000000e+00
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.CBufRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.CBufRet.f32 %5406, 2
  %5410 = extractvalue %dx.types.CBufRet.f32 %5406, 3
  %5411 = select i1 %5404, float %5407, float %5409
  %5412 = select i1 %5405, float %5408, float %5410
  %5413 = fmul fast float %5411, %5402
  %5414 = fmul fast float %5412, %5403
  %5415 = call float @dx.op.unary.f32(i32 6, float %5413)  ; FAbs(value)
  %5416 = call float @dx.op.unary.f32(i32 6, float %5414)  ; FAbs(value)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5329, 0
  %5418 = call float @dx.op.binary.f32(i32 35, float %5415, float %5416)  ; FMax(a,b)
  %5419 = fsub fast float %5417, %5418
  %5420 = call float @dx.op.unary.f32(i32 7, float %5419)  ; Saturate(value)
  %5421 = fmul fast float %5420, %5391
  br label %5422

; <label>:5422                                    ; preds = %5398, %5392
  %5423 = phi float [ %5421, %5398 ], [ 0.000000e+00, %5392 ]
  %5424 = extractvalue %dx.types.CBufRet.f32 %5369, 2
  %5425 = extractvalue %dx.types.CBufRet.f32 %5394, 1
  %5426 = fadd fast float %5425, %5424
  %5427 = fcmp fast ogt float %5426, 0.000000e+00
  br i1 %5427, label %5428, label %5452

; <label>:5428                                    ; preds = %5422
  %5429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.CBufRet.f32 %5429, 1
  %5432 = fsub fast float %5375, %5430
  %5433 = fsub fast float %5376, %5431
  %5434 = fcmp fast olt float %5432, 0.000000e+00
  %5435 = fcmp fast olt float %5433, 0.000000e+00
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = extractvalue %dx.types.CBufRet.f32 %5436, 1
  %5439 = extractvalue %dx.types.CBufRet.f32 %5436, 2
  %5440 = extractvalue %dx.types.CBufRet.f32 %5436, 3
  %5441 = select i1 %5434, float %5437, float %5439
  %5442 = select i1 %5435, float %5438, float %5440
  %5443 = fmul fast float %5441, %5432
  %5444 = fmul fast float %5442, %5433
  %5445 = call float @dx.op.unary.f32(i32 6, float %5443)  ; FAbs(value)
  %5446 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5329, 0
  %5448 = call float @dx.op.binary.f32(i32 35, float %5445, float %5446)  ; FMax(a,b)
  %5449 = fsub fast float %5447, %5448
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = fmul fast float %5450, %5391
  br label %5452

; <label>:5452                                    ; preds = %5428, %5422, %5338
  %5453 = phi float [ 0.000000e+00, %5338 ], [ %5451, %5428 ], [ 0.000000e+00, %5422 ]
  %5454 = phi float [ 0.000000e+00, %5338 ], [ %5423, %5428 ], [ %5423, %5422 ]
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5457 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 0
  %5460 = extractvalue %dx.types.CBufRet.f32 %5458, 1
  %5461 = fsub fast float %5357, %5459
  %5462 = fsub fast float %5361, %5460
  %5463 = fcmp fast olt float %5461, 0.000000e+00
  %5464 = fcmp fast olt float %5462, 0.000000e+00
  %5465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.CBufRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.CBufRet.f32 %5465, 2
  %5469 = extractvalue %dx.types.CBufRet.f32 %5465, 3
  %5470 = select i1 %5463, float %5466, float %5468
  %5471 = select i1 %5464, float %5467, float %5469
  %5472 = fmul fast float %5470, %5461
  %5473 = fmul fast float %5471, %5462
  %5474 = call float @dx.op.unary.f32(i32 6, float %5472)  ; FAbs(value)
  %5475 = call float @dx.op.unary.f32(i32 6, float %5473)  ; FAbs(value)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5329, 0
  %5477 = call float @dx.op.binary.f32(i32 35, float %5474, float %5475)  ; FMax(a,b)
  %5478 = fsub fast float %5476, %5477
  %5479 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5480 = call float @dx.op.binary.f32(i32 36, float %5479, float %5457)  ; FMin(a,b)
  %5481 = fmul fast float %5480, %5391
  %5482 = fsub fast float %5453, %5481
  %5483 = fsub fast float %5454, %5453
  %5484 = fsub fast float %5483, %5481
  %5485 = call float @dx.op.binary.f32(i32 35, float %5453, float %5454)  ; FMax(a,b)
  %5486 = call float @dx.op.binary.f32(i32 35, float %5481, float %5485)  ; FMax(a,b)
  %5487 = fcmp fast olt float %5486, 1.000000e+00
  br i1 %5487, label %5488, label %5886, !dx.controlflow.hints !94

; <label>:5488                                    ; preds = %5452
  %5489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5490 = extractvalue %dx.types.CBufRet.f32 %5489, 0
  %5491 = fcmp fast une float %5490, 0.000000e+00
  br i1 %5491, label %5492, label %5886, !dx.controlflow.hints !95

; <label>:5492                                    ; preds = %5488
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.CBufRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5497 = extractvalue %dx.types.CBufRet.f32 %5493, 3
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 0
  %5500 = extractvalue %dx.types.CBufRet.f32 %5498, 1
  %5501 = extractvalue %dx.types.CBufRet.f32 %5498, 2
  %5502 = extractvalue %dx.types.CBufRet.f32 %5498, 3
  %5503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5503, 0
  %5505 = extractvalue %dx.types.CBufRet.f32 %5503, 1
  %5506 = extractvalue %dx.types.CBufRet.f32 %5503, 2
  %5507 = extractvalue %dx.types.CBufRet.f32 %5503, 3
  %5508 = fmul fast float %5494, %5334
  %5509 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5495, float %5508)  ; FMad(a,b,c)
  %5510 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5496, float %5509)  ; FMad(a,b,c)
  %5511 = fadd fast float %5510, %5497
  %5512 = fmul fast float %5499, %5334
  %5513 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5500, float %5512)  ; FMad(a,b,c)
  %5514 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5501, float %5513)  ; FMad(a,b,c)
  %5515 = fadd fast float %5514, %5502
  %5516 = fmul fast float %5504, %5334
  %5517 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5505, float %5516)  ; FMad(a,b,c)
  %5518 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5506, float %5517)  ; FMad(a,b,c)
  %5519 = fadd fast float %5518, %5507
  %5520 = fcmp fast oge float %5511, 1.000000e+00
  %5521 = fcmp fast oge float %5515, 1.000000e+00
  %5522 = or i1 %5520, %5521
  %5523 = fcmp fast olt float %5511, 0.000000e+00
  %5524 = fcmp fast olt float %5515, 0.000000e+00
  %5525 = or i1 %5523, %5524
  %5526 = or i1 %5522, %5525
  br i1 %5526, label %5886, label %5527, !dx.controlflow.hints !96

; <label>:5527                                    ; preds = %5492
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 0
  %5530 = extractvalue %dx.types.CBufRet.f32 %5528, 1
  %5531 = extractvalue %dx.types.CBufRet.f32 %5528, 2
  %5532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5533 = extractvalue %dx.types.CBufRet.i32 %5532, 2
  %5534 = uitofp i32 %5533 to float
  %5535 = extractvalue %dx.types.CBufRet.i32 %5532, 3
  %5536 = uitofp i32 %5535 to float
  %5537 = extractvalue %dx.types.CBufRet.f32 %5528, 3
  %5538 = fmul fast float %5537, 2.000000e+00
  %5539 = fsub fast float %5511, %5529
  %5540 = fsub fast float %5515, %5530
  %5541 = fmul fast float %5538, %5539
  %5542 = fmul fast float %5538, %5540
  %5543 = fdiv fast float 1.000000e+00, %5317
  %5544 = fmul fast float %5542, %5543
  %5545 = call float @dx.op.unary.f32(i32 6, float %5544)  ; FAbs(value)
  %5546 = fmul fast float %5531, %5336
  %5547 = fmul fast float %5546, %5538
  %5548 = call float @dx.op.unary.f32(i32 6, float %5547)  ; FAbs(value)
  %5549 = call float @dx.op.unary.f32(i32 6, float %5541)  ; FAbs(value)
  %5550 = call float @dx.op.binary.f32(i32 35, float %5548, float %5545)  ; FMax(a,b)
  %5551 = call float @dx.op.binary.f32(i32 35, float %5549, float %5550)  ; FMax(a,b)
  %5552 = fmul fast float %5551, 2.000000e+00
  %5553 = call float @dx.op.unary.f32(i32 23, float %5552)  ; Log(value)
  %5554 = call float @dx.op.binary.f32(i32 35, float %5553, float %5534)  ; FMax(a,b)
  %5555 = call float @dx.op.unary.f32(i32 22, float %5554)  ; Frc(value)
  %5556 = fadd fast float %5555, 0xBFEA666660000000
  %5557 = fmul fast float %5556, 8.000000e+00
  %5558 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5559 = call float @dx.op.unary.f32(i32 27, float %5554)  ; Round_ni(value)
  %5560 = fadd fast float %5559, %5558
  %5561 = call float @dx.op.binary.f32(i32 36, float %5560, float %5536)  ; FMin(a,b)
  %5562 = call float @dx.op.unary.f32(i32 27, float %5561)  ; Round_ni(value)
  %5563 = fsub fast float -0.000000e+00, %5562
  %5564 = call float @dx.op.unary.f32(i32 21, float %5563)  ; Exp(value)
  %5565 = fmul fast float %5564, %5538
  %5566 = fmul fast float %5565, %5511
  %5567 = fmul fast float %5565, %5515
  %5568 = fmul fast float %5566, 2.500000e-01
  %5569 = fmul fast float %5567, 2.500000e-01
  %5570 = fadd fast float %5568, 5.000000e-01
  %5571 = fadd fast float %5569, 5.000000e-01
  %5572 = fsub fast float %5536, %5534
  %5573 = fptoui float %5572 to i32
  %5574 = add i32 %5573, 320
  %5575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %5574)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.f32 %5575, 0
  %5577 = extractvalue %dx.types.CBufRet.f32 %5575, 1
  %5578 = fcmp fast une float %5561, %5536
  %5579 = fsub fast float %5511, %5576
  %5580 = fsub fast float %5515, %5577
  %5581 = call float @dx.op.unary.f32(i32 6, float %5579)  ; FAbs(value)
  %5582 = call float @dx.op.unary.f32(i32 6, float %5580)  ; FAbs(value)
  %5583 = fmul fast float %5581, %5565
  %5584 = fmul fast float %5582, %5565
  %5585 = fcmp fast olt float %5583, 1.000000e+00
  %5586 = fcmp fast olt float %5584, 1.000000e+00
  %5587 = and i1 %5585, %5586
  %5588 = or i1 %5578, %5587
  br i1 %5588, label %5589, label %5886, !dx.controlflow.hints !97

; <label>:5589                                    ; preds = %5527
  %5590 = fmul fast float %5567, 5.000000e-01
  %5591 = fmul fast float %5566, 5.000000e-01
  %5592 = fadd fast float %5590, 5.000000e-01
  %5593 = fadd fast float %5591, 5.000000e-01
  %5594 = sitofp i32 %5533 to float
  %5595 = fsub fast float %5561, %5594
  %5596 = call float @dx.op.unary.f32(i32 27, float %5595)  ; Round_ni(value)
  %5597 = call float @dx.op.unary.f32(i32 22, float %5561)  ; Frc(value)
  %5598 = call float @dx.op.unary.f32(i32 22, float %5593)  ; Frc(value)
  %5599 = call float @dx.op.unary.f32(i32 22, float %5592)  ; Frc(value)
  %5600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5598, float %5599, float %5596, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5601 = extractvalue %dx.types.ResRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.ResRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.ResRet.f32 %5600, 2
  %5604 = extractvalue %dx.types.ResRet.f32 %5600, 3
  %5605 = fcmp fast ogt float %5597, 0.000000e+00
  br i1 %5605, label %5606, label %5627, !dx.controlflow.hints !98

; <label>:5606                                    ; preds = %5589
  %5607 = fadd fast float %5596, 1.000000e+00
  %5608 = call float @dx.op.unary.f32(i32 22, float %5570)  ; Frc(value)
  %5609 = call float @dx.op.unary.f32(i32 22, float %5571)  ; Frc(value)
  %5610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %5608, float %5609, float %5607, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5611 = extractvalue %dx.types.ResRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.ResRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.ResRet.f32 %5610, 2
  %5614 = extractvalue %dx.types.ResRet.f32 %5610, 3
  %5615 = fsub fast float %5611, %5601
  %5616 = fsub fast float %5612, %5602
  %5617 = fsub fast float %5613, %5603
  %5618 = fsub fast float %5614, %5604
  %5619 = fmul fast float %5615, %5597
  %5620 = fmul fast float %5616, %5597
  %5621 = fmul fast float %5617, %5597
  %5622 = fmul fast float %5618, %5597
  %5623 = fadd fast float %5619, %5601
  %5624 = fadd fast float %5620, %5602
  %5625 = fadd fast float %5621, %5603
  %5626 = fadd fast float %5622, %5604
  br label %5627

; <label>:5627                                    ; preds = %5606, %5589
  %5628 = phi float [ %5623, %5606 ], [ %5601, %5589 ]
  %5629 = phi float [ %5624, %5606 ], [ %5602, %5589 ]
  %5630 = phi float [ %5625, %5606 ], [ %5603, %5589 ]
  %5631 = phi float [ %5626, %5606 ], [ %5604, %5589 ]
  %5632 = fadd fast float %5628, -5.000000e-01
  %5633 = fadd fast float %5630, -5.000000e-01
  %5634 = fmul fast float %5632, 0xBFD5555560000000
  %5635 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5633, float %5634)  ; FMad(a,b,c)
  %5636 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5629, float 0.000000e+00)  ; FMad(a,b,c)
  %5637 = fadd fast float %5636, %5631
  %5638 = fmul fast float %5632, -7.500000e-01
  %5639 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5633, float %5638)  ; FMad(a,b,c)
  %5640 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5629, float 0.000000e+00)  ; FMad(a,b,c)
  %5641 = fadd fast float %5640, %5631
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 0
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.CBufRet.f32 %5644, 1
  %5647 = extractvalue %dx.types.CBufRet.f32 %5644, 2
  %5648 = extractvalue %dx.types.CBufRet.f32 %5644, 3
  %5649 = fsub fast float %5645, %5635
  %5650 = fsub fast float %5646, %5637
  %5651 = fsub fast float %5647, %5639
  %5652 = fsub fast float %5648, %5641
  %5653 = fmul fast float %5649, %5643
  %5654 = fmul fast float %5650, %5643
  %5655 = fmul fast float %5651, %5643
  %5656 = fmul fast float %5652, %5643
  %5657 = fadd fast float %5653, %5635
  %5658 = fadd fast float %5654, %5637
  %5659 = fadd fast float %5655, %5639
  %5660 = fadd fast float %5656, %5641
  %5661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5662 = extractvalue %dx.types.ResRet.i32 %5661, 0
  %5663 = and i32 %5662, 536870911
  %5664 = uitofp i32 %5663 to float
  %5665 = fmul fast float %5664, %5511
  %5666 = fmul fast float %5664, %5515
  %5667 = fptoui float %5665 to i32
  %5668 = fptoui float %5666 to i32
  %5669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5670 = extractvalue %dx.types.ResRet.i32 %5669, 0
  %5671 = and i32 %5670, 31
  %5672 = lshr i32 %5667, %5671
  %5673 = lshr i32 %5668, %5671
  %5674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5675 = extractvalue %dx.types.ResRet.i32 %5674, 0
  %5676 = and i32 %5675, 31
  %5677 = shl i32 1, %5676
  %5678 = call i32 @dx.op.binary.i32(i32 40, i32 %5677, i32 4)  ; UMin(a,b)
  %5679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5680 = extractvalue %dx.types.ResRet.i32 %5679, 0
  %5681 = extractvalue %dx.types.ResRet.i32 %5679, 1
  %5682 = icmp eq i32 %5678, 0
  br i1 %5682, label %5724, label %5683

; <label>:5683                                    ; preds = %5627
  br label %5684

; <label>:5684                                    ; preds = %5712, %5683
  %5685 = phi i32 [ %5715, %5712 ], [ 0, %5683 ]
  %5686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5687 = extractvalue %dx.types.ResRet.i32 %5686, 0
  %5688 = lshr i32 %5687, 16
  %5689 = and i32 %5688, 31
  %5690 = shl i32 %5673, %5689
  %5691 = add i32 %5690, %5672
  %5692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5693 = extractvalue %dx.types.ResRet.i32 %5692, 0
  %5694 = and i32 %5693, 31
  %5695 = shl i32 %5691, %5694
  %5696 = add i32 %5695, %5685
  %5697 = shl i32 %5696, 2
  %5698 = add i32 %5697, 32
  %5699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5698, i32 undef)  ; BufferLoad(srv,index,wot)
  %5700 = extractvalue %dx.types.ResRet.i32 %5699, 0
  %5701 = icmp slt i32 %5700, 0
  %5702 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5685
  %5703 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5685
  %5704 = bitcast float* %5702 to i32*
  %5705 = bitcast float* %5703 to i32*
  br i1 %5701, label %5706, label %5712

; <label>:5706                                    ; preds = %5684
  %5707 = and i32 %5700, 1073741823
  %5708 = add nuw nsw i32 %5707, 20
  %5709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5708, i32 undef)  ; BufferLoad(srv,index,wot)
  %5710 = extractvalue %dx.types.ResRet.i32 %5709, 0
  %5711 = extractvalue %dx.types.ResRet.i32 %5709, 1
  br label %5712

; <label>:5712                                    ; preds = %5706, %5684
  %5713 = phi i32 [ %5710, %5706 ], [ %5680, %5684 ]
  %5714 = phi i32 [ %5711, %5706 ], [ %5681, %5684 ]
  store i32 %5713, i32* %5704, align 4
  store i32 %5714, i32* %5705, align 4
  %5715 = add nuw i32 %5685, 1
  %5716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.i32 %5716, 2
  %5718 = icmp eq i32 %5717, 0
  %5719 = icmp ugt i32 %5700, -1073741825
  %5720 = and i1 %5719, %5718
  %5721 = icmp ult i32 %5715, %5678
  %5722 = and i1 %5720, %5721
  br i1 %5722, label %5684, label %5723

; <label>:5723                                    ; preds = %5712
  br label %5724

; <label>:5724                                    ; preds = %5723, %5627
  %5725 = phi i32 [ 0, %5627 ], [ %5715, %5723 ]
  %5726 = extractvalue %dx.types.CBufRet.f32 %5489, 2
  %5727 = fptoui float %5726 to i32
  %5728 = icmp eq i32 %5727, 0
  br i1 %5728, label %5780, label %5729

; <label>:5729                                    ; preds = %5724
  br label %5730

; <label>:5730                                    ; preds = %5775, %5729
  %5731 = phi i32 [ %5776, %5775 ], [ %5725, %5729 ]
  %5732 = phi i32 [ %5777, %5775 ], [ 0, %5729 ]
  %5733 = lshr i32 %5732, 2
  %5734 = and i32 %5732, 3
  %5735 = add nuw nsw i32 %5733, 83
  %5736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %5735)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.i32 %5736, 0
  %5738 = extractvalue %dx.types.CBufRet.i32 %5736, 1
  %5739 = extractvalue %dx.types.CBufRet.i32 %5736, 2
  %5740 = extractvalue %dx.types.CBufRet.i32 %5736, 3
  %5741 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %5737, i32* %5741, align 4
  %5742 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %5738, i32* %5742, align 4
  %5743 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %5739, i32* %5743, align 4
  %5744 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %5740, i32* %5744, align 4
  %5745 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %5734
  %5746 = load i32, i32* %5745, align 4, !tbaa !99, !noalias !103
  %5747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5748 = extractvalue %dx.types.ResRet.i32 %5747, 0
  %5749 = lshr i32 %5748, 16
  %5750 = and i32 %5749, 31
  %5751 = shl i32 %5673, %5750
  %5752 = add i32 %5751, %5672
  %5753 = shl i32 %5752, 2
  %5754 = add i32 %5753, %5746
  %5755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5754, i32 undef)  ; BufferLoad(srv,index,wot)
  %5756 = extractvalue %dx.types.ResRet.i32 %5755, 0
  %5757 = icmp eq i32 %5756, 0
  br i1 %5757, label %5775, label %5758

; <label>:5758                                    ; preds = %5730
  %5759 = icmp slt i32 %5756, 0
  %5760 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5731
  %5761 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5731
  %5762 = bitcast float* %5760 to i32*
  %5763 = bitcast float* %5761 to i32*
  br i1 %5759, label %5764, label %5771

; <label>:5764                                    ; preds = %5758
  %5765 = and i32 %5756, 1073741823
  %5766 = add i32 %5746, 20
  %5767 = add i32 %5766, %5765
  %5768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5767, i32 undef)  ; BufferLoad(srv,index,wot)
  %5769 = extractvalue %dx.types.ResRet.i32 %5768, 0
  %5770 = extractvalue %dx.types.ResRet.i32 %5768, 1
  br label %5771

; <label>:5771                                    ; preds = %5764, %5758
  %5772 = phi i32 [ %5769, %5764 ], [ %5680, %5758 ]
  %5773 = phi i32 [ %5770, %5764 ], [ %5681, %5758 ]
  store i32 %5772, i32* %5762, align 4
  store i32 %5773, i32* %5763, align 4
  %5774 = add i32 %5731, 1
  br label %5775

; <label>:5775                                    ; preds = %5771, %5730
  %5776 = phi i32 [ %5731, %5730 ], [ %5774, %5771 ]
  %5777 = add nuw i32 %5732, 1
  %5778 = icmp eq i32 %5777, %5727
  br i1 %5778, label %5779, label %5730

; <label>:5779                                    ; preds = %5775
  br label %5780

; <label>:5780                                    ; preds = %5779, %5724
  %5781 = phi i32 [ %5725, %5724 ], [ %5776, %5779 ]
  %5782 = icmp eq i32 %5781, 1
  %5783 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  %5784 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  br i1 %5782, label %5785, label %5788

; <label>:5785                                    ; preds = %5780
  %5786 = load float, float* %5783, align 4
  %5787 = load float, float* %5784, align 4
  br label %5815

; <label>:5788                                    ; preds = %5780
  %5789 = load float, float* %5783, align 4
  %5790 = load float, float* %5784, align 4
  %5791 = fdiv fast float 1.000000e+00, %5790
  %5792 = fsub fast float %5789, %5791
  %5793 = icmp ugt i32 %5781, 1
  br i1 %5793, label %5794, label %5810

; <label>:5794                                    ; preds = %5788
  br label %5795

; <label>:5795                                    ; preds = %5795, %5794
  %5796 = phi float [ %5805, %5795 ], [ %5792, %5794 ]
  %5797 = phi float [ %5806, %5795 ], [ %5789, %5794 ]
  %5798 = phi i32 [ %5807, %5795 ], [ 1, %5794 ]
  %5799 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %5798
  %5800 = load float, float* %5799, align 4
  %5801 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %5798
  %5802 = load float, float* %5801, align 4
  %5803 = fdiv fast float 1.000000e+00, %5802
  %5804 = fsub fast float %5800, %5803
  %5805 = call float @dx.op.binary.f32(i32 36, float %5796, float %5804)  ; FMin(a,b)
  %5806 = call float @dx.op.binary.f32(i32 35, float %5797, float %5800)  ; FMax(a,b)
  %5807 = add nuw i32 %5798, 1
  %5808 = icmp eq i32 %5807, %5781
  br i1 %5808, label %5809, label %5795

; <label>:5809                                    ; preds = %5795
  br label %5810

; <label>:5810                                    ; preds = %5809, %5788
  %5811 = phi float [ %5792, %5788 ], [ %5805, %5809 ]
  %5812 = phi float [ %5789, %5788 ], [ %5806, %5809 ]
  %5813 = fsub fast float %5812, %5811
  %5814 = fdiv fast float 1.000000e+00, %5813
  br label %5815

; <label>:5815                                    ; preds = %5810, %5785
  %5816 = phi float [ %5786, %5785 ], [ %5812, %5810 ]
  %5817 = phi float [ %5787, %5785 ], [ %5814, %5810 ]
  %5818 = fadd fast float %5519, %5816
  %5819 = fmul fast float %5818, %5817
  %5820 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5821 = fmul fast float %5820, 2.000000e+00
  %5822 = fsub fast float 1.000000e+00, %5821
  %5823 = fmul fast float %5657, %5657
  %5824 = fsub fast float %5658, %5823
  %5825 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5824)  ; FMax(a,b)
  %5826 = fdiv fast float 1.000000e+00, %5825
  %5827 = fmul fast float %5658, %5657
  %5828 = fsub fast float %5659, %5827
  %5829 = fsub fast float %5822, %5657
  %5830 = fmul fast float %5822, %5822
  %5831 = fsub fast float %5830, %5658
  %5832 = fmul fast float %5826, %5828
  %5833 = fmul fast float %5832, %5829
  %5834 = fsub fast float %5831, %5833
  %5835 = fmul fast float %5658, %5658
  %5836 = fsub fast float %5660, %5835
  %5837 = fmul fast float %5828, %5828
  %5838 = fmul fast float %5837, %5826
  %5839 = fsub fast float %5836, %5838
  %5840 = fdiv fast float %5834, %5839
  %5841 = fmul fast float %5840, %5828
  %5842 = fsub fast float %5829, %5841
  %5843 = fmul fast float %5842, %5826
  %5844 = fmul fast float %5843, %5657
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = fmul fast float %5840, %5658
  %5847 = fsub fast float %5845, %5846
  %5848 = fmul fast float %5843, %5843
  %5849 = fmul fast float %5840, 4.000000e+00
  %5850 = fmul fast float %5849, %5847
  %5851 = fsub fast float %5848, %5850
  %5852 = call float @dx.op.unary.f32(i32 24, float %5851)  ; Sqrt(value)
  %5853 = fcmp fast oge float %5843, 0.000000e+00
  %5854 = fsub fast float -0.000000e+00, %5852
  %5855 = select i1 %5853, float %5854, float %5852
  %5856 = fsub fast float %5855, %5843
  %5857 = fdiv fast float %5856, %5840
  %5858 = fdiv fast float %5847, %5856
  %5859 = fmul fast float %5857, 5.000000e-01
  %5860 = fmul fast float %5858, 2.000000e+00
  %5861 = select i1 %5853, float %5859, float %5860
  %5862 = select i1 %5853, float %5860, float %5859
  %5863 = call float @dx.op.binary.f32(i32 35, float %5861, float %5862)  ; FMax(a,b)
  %5864 = call float @dx.op.binary.f32(i32 36, float %5861, float %5862)  ; FMin(a,b)
  %5865 = fcmp fast ogt float %5822, %5863
  %5866 = fsub fast float %5822, %5864
  %5867 = fsub fast float %5822, %5863
  %5868 = fsub fast float %5863, %5864
  %5869 = select i1 %5865, float %5867, float %5868
  %5870 = fmul float %5866, %5869
  %5871 = select i1 %5865, float %5864, float %5822
  %5872 = fcmp fast ogt float %5822, %5864
  %5873 = fmul fast float %5871, %5863
  %5874 = fadd fast float %5871, %5863
  %5875 = fmul fast float %5874, %5657
  %5876 = fadd fast float %5873, %5658
  %5877 = fsub fast float %5876, %5875
  %5878 = fdiv fast float %5877, %5870
  %5879 = select i1 %5872, float %5878, float 0.000000e+00
  %5880 = fsub fast float 1.000000e+00, %5879
  %5881 = select i1 %5865, float %5880, float %5879
  %5882 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5642, 3
  %5884 = fmul fast float %5883, %5882
  %5885 = fsub fast float 1.000000e+00, %5884
  br label %5886

; <label>:5886                                    ; preds = %5815, %5527, %5492, %5488, %5452
  %5887 = phi float [ 1.000000e+00, %5452 ], [ %5885, %5815 ], [ 1.000000e+00, %5492 ], [ 1.000000e+00, %5527 ], [ 1.000000e+00, %5488 ]
  %5888 = fcmp fast ogt float %5484, 0.000000e+00
  br i1 %5888, label %5889, label %5897, !dx.controlflow.hints !112

; <label>:5889                                    ; preds = %5886
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 2
  %5892 = fadd fast float %5891, %5365
  %5893 = call float @dx.op.binary.f32(i32 35, float %5892, float 0.000000e+00)  ; FMax(a,b)
  %5894 = fadd fast float %5893, 0x3F10000000000000
  %5895 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5383, float %5384, float undef, float undef, i32 0, i32 0, i32 undef, float %5894)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5896 = extractvalue %dx.types.ResRet.f32 %5895, 0
  br label %5897

; <label>:5897                                    ; preds = %5889, %5886
  %5898 = phi float [ %5896, %5889 ], [ 1.000000e+00, %5886 ]
  %5899 = fcmp fast ogt float %5482, 0.000000e+00
  br i1 %5899, label %5900, label %5908, !dx.controlflow.hints !113

; <label>:5900                                    ; preds = %5897
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5903 = fadd fast float %5902, %5365
  %5904 = call float @dx.op.binary.f32(i32 35, float %5903, float 0.000000e+00)  ; FMax(a,b)
  %5905 = fadd fast float %5904, 0x3F10000000000000
  %5906 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5375, float %5376, float undef, float undef, i32 0, i32 0, i32 undef, float %5905)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5907 = extractvalue %dx.types.ResRet.f32 %5906, 0
  br label %5908

; <label>:5908                                    ; preds = %5900, %5897
  %5909 = phi float [ %5907, %5900 ], [ 1.000000e+00, %5897 ]
  %5910 = fcmp fast ogt float %5481, 0.000000e+00
  br i1 %5910, label %5911, label %5923, !dx.controlflow.hints !114

; <label>:5911                                    ; preds = %5908
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5914 = fadd fast float %5913, %5365
  %5915 = call float @dx.op.binary.f32(i32 35, float %5914, float 0.000000e+00)  ; FMax(a,b)
  %5916 = fadd fast float %5915, 0x3F10000000000000
  br i1 %5368, label %5917, label %5920, !dx.controlflow.hints !115

; <label>:5917                                    ; preds = %5911
  %5918 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %5357, float %5361, float undef, float undef, i32 0, i32 0, i32 undef, float %5916)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5919 = extractvalue %dx.types.ResRet.f32 %5918, 0
  br label %5923

; <label>:5920                                    ; preds = %5911
  %5921 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5357, float %5361, float undef, float undef, i32 0, i32 0, i32 undef, float %5916)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5922 = extractvalue %dx.types.ResRet.f32 %5921, 0
  br label %5923

; <label>:5923                                    ; preds = %5920, %5917, %5908
  %5924 = phi float [ %5919, %5917 ], [ %5922, %5920 ], [ 1.000000e+00, %5908 ]
  %5925 = fsub fast float %5898, %5887
  %5926 = fmul fast float %5925, %5454
  %5927 = fadd fast float %5926, %5887
  %5928 = fsub fast float %5909, %5927
  %5929 = fmul fast float %5928, %5453
  %5930 = fadd fast float %5929, %5927
  %5931 = fsub fast float %5924, %5930
  %5932 = fmul fast float %5931, %5481
  %5933 = fadd fast float %5932, %5930
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 2
  %5936 = fcmp fast ogt float %5935, 0.000000e+00
  br i1 %5936, label %5937, label %5977, !dx.controlflow.hints !116

; <label>:5937                                    ; preds = %5923
  %5938 = fcmp fast ugt float %5935, 0.000000e+00
  br i1 %5938, label %5939, label %5974

; <label>:5939                                    ; preds = %5937
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5944 = extractvalue %dx.types.CBufRet.f32 %5940, 3
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.CBufRet.f32 %5945, 2
  %5949 = extractvalue %dx.types.CBufRet.f32 %5945, 3
  %5950 = extractvalue %dx.types.CBufRet.f32 %5934, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 0
  %5954 = extractvalue %dx.types.CBufRet.f32 %5952, 1
  %5955 = extractvalue %dx.types.CBufRet.f32 %5952, 2
  %5956 = fadd fast float %5953, %5334
  %5957 = fadd fast float %5954, %5335
  %5958 = fadd fast float %5955, %5336
  %5959 = fmul fast float %5956, %5941
  %5960 = call float @dx.op.tertiary.f32(i32 46, float %5942, float %5957, float %5959)  ; FMad(a,b,c)
  %5961 = call float @dx.op.tertiary.f32(i32 46, float %5943, float %5958, float %5960)  ; FMad(a,b,c)
  %5962 = fadd fast float %5961, %5944
  %5963 = fmul fast float %5956, %5946
  %5964 = call float @dx.op.tertiary.f32(i32 46, float %5947, float %5957, float %5963)  ; FMad(a,b,c)
  %5965 = call float @dx.op.tertiary.f32(i32 46, float %5948, float %5958, float %5964)  ; FMad(a,b,c)
  %5966 = fadd fast float %5965, %5949
  %5967 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %5962, float %5966, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5968 = extractvalue %dx.types.ResRet.f32 %5967, 0
  %5969 = fmul fast float %5968, %5951
  %5970 = fadd fast float %5969, %5950
  %5971 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5972 = fmul fast float %5971, %5935
  %5973 = fsub fast float 1.000000e+00, %5972
  br label %5974

; <label>:5974                                    ; preds = %5939, %5937
  %5975 = phi float [ %5973, %5939 ], [ 1.000000e+00, %5937 ]
  %5976 = fmul fast float %5975, %5933
  br label %5977

; <label>:5977                                    ; preds = %5974, %5923, %5314
  %5978 = phi float [ 1.000000e+00, %5314 ], [ %5976, %5974 ], [ %5933, %5923 ]
  %5979 = call float @dx.op.binary.f32(i32 36, float %5978, float %5978)  ; FMin(a,b)
  %5980 = call float @dx.op.binary.f32(i32 36, float %5978, float %5979)  ; FMin(a,b)
  %5981 = fcmp fast ogt float %5980, 0.000000e+00
  br i1 %5981, label %5982, label %6142, !dx.controlflow.hints !117

; <label>:5982                                    ; preds = %5977
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5986 = extractvalue %dx.types.CBufRet.f32 %5983, 2
  %5987 = extractvalue %dx.types.CBufRet.f32 %5983, 3
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 0
  %5990 = extractvalue %dx.types.CBufRet.f32 %5988, 1
  %5991 = extractvalue %dx.types.CBufRet.f32 %5988, 2
  %5992 = extractvalue %dx.types.CBufRet.f32 %5988, 3
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.CBufRet.f32 %5993, 1
  %5996 = extractvalue %dx.types.CBufRet.f32 %5993, 2
  %5997 = extractvalue %dx.types.CBufRet.f32 %5993, 3
  %5998 = fmul fast float %5984, %5334
  %5999 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5985, float %5998)  ; FMad(a,b,c)
  %6000 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5986, float %5999)  ; FMad(a,b,c)
  %6001 = fadd fast float %6000, %5987
  %6002 = fmul fast float %5989, %5334
  %6003 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5990, float %6002)  ; FMad(a,b,c)
  %6004 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5991, float %6003)  ; FMad(a,b,c)
  %6005 = fadd fast float %6004, %5992
  %6006 = fmul fast float %5994, %5334
  %6007 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5995, float %6006)  ; FMad(a,b,c)
  %6008 = call float @dx.op.tertiary.f32(i32 46, float %5336, float %5996, float %6007)  ; FMad(a,b,c)
  %6009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6010 = extractvalue %dx.types.CBufRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.CBufRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.CBufRet.f32 %6009, 3
  %6013 = fmul fast float %6012, %6001
  %6014 = fmul fast float %6012, %6005
  %6015 = fadd fast float %6013, %6010
  %6016 = fadd fast float %6014, %6011
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.CBufRet.f32 %6017, 1
  %6020 = fsub fast float %6015, %6018
  %6021 = fsub fast float %6016, %6019
  %6022 = fcmp fast olt float %6020, 0.000000e+00
  %6023 = fcmp fast olt float %6021, 0.000000e+00
  %6024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.f32 %6024, 0
  %6026 = extractvalue %dx.types.CBufRet.f32 %6024, 1
  %6027 = extractvalue %dx.types.CBufRet.f32 %6024, 2
  %6028 = extractvalue %dx.types.CBufRet.f32 %6024, 3
  %6029 = select i1 %6022, float %6025, float %6027
  %6030 = select i1 %6023, float %6026, float %6028
  %6031 = fmul fast float %6029, %6020
  %6032 = fmul fast float %6030, %6021
  %6033 = call float @dx.op.unary.f32(i32 6, float %6031)  ; FAbs(value)
  %6034 = call float @dx.op.unary.f32(i32 6, float %6032)  ; FAbs(value)
  %6035 = extractvalue %dx.types.CBufRet.f32 %5329, 0
  %6036 = call float @dx.op.binary.f32(i32 35, float %6033, float %6034)  ; FMax(a,b)
  %6037 = fsub fast float %6035, %6036
  %6038 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6039 = fcmp fast ogt float %6038, 0.000000e+00
  br i1 %6039, label %6040, label %6081, !dx.controlflow.hints !118

; <label>:6040                                    ; preds = %5982
  %6041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6015, float %6016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6042 = extractvalue %dx.types.ResRet.f32 %6041, 1
  %6043 = fcmp fast ogt float %6042, 0.000000e+00
  br i1 %6043, label %6044, label %6076

; <label>:6044                                    ; preds = %6040
  %6045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6015, float %6016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6046 = extractvalue %dx.types.ResRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.ResRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.ResRet.f32 %6045, 2
  %6049 = extractvalue %dx.types.ResRet.f32 %6045, 3
  %6050 = fsub fast float 1.000000e+00, %5997
  %6051 = fsub fast float %6050, %6008
  %6052 = fmul fast float %6051, 0x400921FB60000000
  %6053 = fadd fast float %6052, 0x3FF921FB60000000
  %6054 = call float @dx.op.unary.f32(i32 13, float %6053)  ; Sin(value)
  %6055 = fadd fast float %6054, -1.000000e+00
  %6056 = fmul fast float %6055, 0x3FD45F3060000000
  %6057 = fmul fast float %6051, 0x401921FB60000000
  %6058 = fadd fast float %6057, 0x400921FB60000000
  %6059 = call float @dx.op.unary.f32(i32 13, float %6058)  ; Sin(value)
  %6060 = fadd fast float %6059, 0x3E7777A5C0000000
  %6061 = fmul fast float %6060, 0x3FC45F3060000000
  %6062 = fmul fast float %6051, 0x4022D97C80000000
  %6063 = fadd fast float %6062, 0x4012D97C80000000
  %6064 = call float @dx.op.unary.f32(i32 13, float %6063)  ; Sin(value)
  %6065 = fadd fast float %6064, 1.000000e+00
  %6066 = fmul fast float %6065, 0x3FBB2995E0000000
  %6067 = fmul fast float %6051, 0x402921FB60000000
  %6068 = fadd fast float %6067, 0x401921FB60000000
  %6069 = call float @dx.op.unary.f32(i32 13, float %6068)  ; Sin(value)
  %6070 = fadd fast float %6069, 0xBE8777A5C0000000
  %6071 = fmul fast float %6070, 0x3FB45F3060000000
  %6072 = call float @dx.op.dot4.f32(i32 56, float %6046, float %6047, float %6048, float %6049, float %6056, float %6061, float %6066, float %6071)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6073 = fmul fast float %6072, 0xBFF7154760000000
  %6074 = call float @dx.op.unary.f32(i32 21, float %6073)  ; Exp(value)
  %6075 = call float @dx.op.unary.f32(i32 7, float %6074)  ; Saturate(value)
  br label %6076

; <label>:6076                                    ; preds = %6044, %6040
  %6077 = phi float [ %6075, %6044 ], [ 1.000000e+00, %6040 ]
  %6078 = fadd fast float %6077, -1.000000e+00
  %6079 = fmul fast float %6078, %6038
  %6080 = fadd fast float %6079, 1.000000e+00
  br label %6081

; <label>:6081                                    ; preds = %6076, %5982
  %6082 = phi float [ %6080, %6076 ], [ 1.000000e+00, %5982 ]
  %6083 = fmul fast float %6082, %5978
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.CBufRet.f32 %6084, 1
  %6087 = extractvalue %dx.types.CBufRet.f32 %6084, 2
  %6088 = fadd fast float %6085, %191
  %6089 = fadd fast float %6086, %192
  %6090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6090, 1
  %6092 = fsub fast float -0.000000e+00, %6088
  %6093 = fsub fast float -0.000000e+00, %6089
  %6094 = fsub fast float %5098, %6087
  %6095 = fadd fast float %6094, %6091
  %6096 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6092, float %6093, float %6095)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5315, float %5316, float %5317)  ; Dot3(ax,ay,az,bx,by,bz)
  %6098 = fdiv fast float 1.000000e+00, %6097
  %6099 = fmul fast float %6098, %6096
  %6100 = fmul fast float %5315, %6099
  %6101 = fmul fast float %5316, %6099
  %6102 = fadd fast float %6100, %6088
  %6103 = fadd fast float %6101, %6089
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.CBufRet.f32 %6104, 1
  %6107 = fsub fast float %6102, %6105
  %6108 = fsub fast float %6103, %6106
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 2
  %6111 = extractvalue %dx.types.CBufRet.f32 %6109, 3
  %6112 = fmul fast float %6107, %6110
  %6113 = fmul fast float %6108, %6111
  %6114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6115 = extractvalue %dx.types.CBufRet.i32 %6114, 3
  %6116 = icmp eq i32 %6115, 0
  br i1 %6116, label %6122, label %6117

; <label>:6117                                    ; preds = %6081
  %6118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6112, float %6113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6119 = extractvalue %dx.types.ResRet.f32 %6118, 0
  %6120 = extractvalue %dx.types.ResRet.f32 %6118, 1
  %6121 = extractvalue %dx.types.ResRet.f32 %6118, 2
  br label %6127

; <label>:6122                                    ; preds = %6081
  %6123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6112, float %6113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6124 = extractvalue %dx.types.ResRet.f32 %6123, 0
  %6125 = extractvalue %dx.types.ResRet.f32 %6123, 1
  %6126 = extractvalue %dx.types.ResRet.f32 %6123, 2
  br label %6127

; <label>:6127                                    ; preds = %6122, %6117
  %6128 = phi float [ %6119, %6117 ], [ %6124, %6122 ]
  %6129 = phi float [ %6120, %6117 ], [ %6125, %6122 ]
  %6130 = phi float [ %6121, %6117 ], [ %6126, %6122 ]
  %6131 = extractvalue %dx.types.CBufRet.f32 %6090, 2
  %6132 = fmul fast float %6131, %6128
  %6133 = extractvalue %dx.types.CBufRet.f32 %6090, 0
  %6134 = fsub fast float %6099, %6133
  %6135 = fsub fast float %6134, %6132
  %6136 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6135)  ; FMax(a,b)
  %6137 = fmul fast float %6136, %6129
  %6138 = call float @dx.op.binary.f32(i32 36, float %6130, float %6137)  ; FMin(a,b)
  %6139 = fmul fast float %6138, 0xBFF7154760000000
  %6140 = call float @dx.op.unary.f32(i32 21, float %6139)  ; Exp(value)
  %6141 = fmul fast float %6083, %6140
  br label %6142

; <label>:6142                                    ; preds = %6127, %5977
  %6143 = phi float [ %6141, %6127 ], [ %5978, %5977 ]
  %6144 = call float @dx.op.binary.f32(i32 36, float %6143, float %6143)  ; FMin(a,b)
  %6145 = call float @dx.op.binary.f32(i32 36, float %6143, float %6144)  ; FMin(a,b)
  %6146 = fcmp fast ogt float %6145, 0.000000e+00
  br i1 %6146, label %6147, label %6398, !dx.controlflow.hints !119

; <label>:6147                                    ; preds = %6142
  %6148 = fmul fast float %6143, %5326
  %6149 = fmul fast float %6143, %5327
  %6150 = fmul fast float %6143, %5328
  %6151 = fsub fast float %193, %4294
  %6152 = fcmp fast ogt float %6151, 0.000000e+00
  %6153 = fmul fast float %5315, 5.120000e+02
  %6154 = fmul fast float %5316, 5.120000e+02
  %6155 = fmul fast float %5317, 5.120000e+02
  %6156 = fadd fast float %6155, %193
  %6157 = fsub fast float %4294, %6156
  %6158 = fmul fast float %6157, 2.000000e+00
  %6159 = fadd fast float %6158, %6156
  %6160 = select i1 %6152, float %6159, float %6156
  %6161 = fsub fast float %6160, %193
  %6162 = call float @dx.op.dot3.f32(i32 55, float %6153, float %6154, float %6161, float %6153, float %6154, float %6161)  ; Dot3(ax,ay,az,bx,by,bz)
  %6163 = call float @dx.op.unary.f32(i32 25, float %6162)  ; Rsqrt(value)
  %6164 = fmul fast float %6163, %6153
  %6165 = fmul fast float %6163, %6154
  %6166 = fmul fast float %6163, %6161
  %6167 = fsub fast float %4294, %193
  %6168 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6167)  ; Dot3(ax,ay,az,bx,by,bz)
  %6169 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6164, float %6165, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = fdiv fast float 1.000000e+00, %6169
  %6171 = fmul fast float %6170, %6168
  %6172 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6151, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6173 = fcmp fast ogt float %6172, 0.000000e+00
  %6174 = fcmp fast olt float %6172, 0.000000e+00
  %6175 = zext i1 %6173 to i32
  %6176 = zext i1 %6174 to i32
  %6177 = sub nsw i32 %6175, %6176
  %6178 = sitofp i32 %6177 to float
  %6179 = fsub fast float %6160, %4294
  %6180 = call float @dx.op.dot3.f32(i32 55, float %6153, float %6154, float %6179, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6181 = fcmp fast ogt float %6180, 0.000000e+00
  %6182 = fcmp fast olt float %6180, 0.000000e+00
  %6183 = zext i1 %6181 to i32
  %6184 = zext i1 %6182 to i32
  %6185 = sub nsw i32 %6183, %6184
  %6186 = sitofp i32 %6185 to float
  %6187 = fcmp fast une float %6178, %6186
  br i1 %6187, label %6188, label %6198

; <label>:6188                                    ; preds = %6147
  %6189 = fmul fast float %6171, %6166
  %6190 = fmul fast float %6171, %6165
  %6191 = fmul fast float %6171, %6164
  %6192 = fmul fast float %6191, %6191
  %6193 = fmul fast float %6190, %6190
  %6194 = fadd fast float %6192, %6193
  %6195 = fmul fast float %6189, %6189
  %6196 = fadd fast float %6194, %6195
  %6197 = call float @dx.op.unary.f32(i32 24, float %6196)  ; Sqrt(value)
  br label %6208

; <label>:6198                                    ; preds = %6147
  %6199 = icmp slt i32 %6177, 0
  br i1 %6199, label %6200, label %6208

; <label>:6200                                    ; preds = %6198
  %6201 = fsub fast float %193, %6160
  %6202 = fmul fast float %6153, %6153
  %6203 = fmul fast float %6154, %6154
  %6204 = fadd fast float %6202, %6203
  %6205 = fmul fast float %6201, %6201
  %6206 = fadd fast float %6204, %6205
  %6207 = call float @dx.op.unary.f32(i32 24, float %6206)  ; Sqrt(value)
  br label %6208

; <label>:6208                                    ; preds = %6200, %6198, %6188
  %6209 = phi float [ %6197, %6188 ], [ %6207, %6200 ], [ 0.000000e+00, %6198 ]
  %6210 = fsub fast float -0.000000e+00, %6209
  %6211 = select i1 %6152, float -0.000000e+00, float %6210
  %6212 = fmul fast float %4295, 0x3FF7154760000000
  %6213 = fmul fast float %6212, %6211
  %6214 = fmul fast float %4296, 0x3FF7154760000000
  %6215 = fmul fast float %6214, %6211
  %6216 = fmul fast float %4297, 0x3FF7154760000000
  %6217 = fmul fast float %6216, %6211
  %6218 = call float @dx.op.unary.f32(i32 21, float %6213)  ; Exp(value)
  %6219 = call float @dx.op.unary.f32(i32 21, float %6215)  ; Exp(value)
  %6220 = call float @dx.op.unary.f32(i32 21, float %6217)  ; Exp(value)
  %6221 = call float @dx.op.unary.f32(i32 7, float %6218)  ; Saturate(value)
  %6222 = call float @dx.op.unary.f32(i32 7, float %6219)  ; Saturate(value)
  %6223 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6224 = fmul fast float %6148, %6221
  %6225 = fmul fast float %6149, %6222
  %6226 = fmul fast float %6150, %6223
  %6227 = fsub fast float %5315, %5086
  %6228 = fsub fast float %5316, %5085
  %6229 = fsub fast float %5317, %5084
  %6230 = call float @dx.op.dot3.f32(i32 55, float %6227, float %6228, float %6229, float %6227, float %6228, float %6229)  ; Dot3(ax,ay,az,bx,by,bz)
  %6231 = call float @dx.op.unary.f32(i32 25, float %6230)  ; Rsqrt(value)
  %6232 = fmul fast float %6231, %6227
  %6233 = fmul fast float %6231, %6228
  %6234 = fmul fast float %6231, %6229
  %6235 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5093, float %5094, float %5095)  ; Dot3(ax,ay,az,bx,by,bz)
  %6236 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5082, float %5081, float %6232, float %6233, float %6234)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = call float @dx.op.unary.f32(i32 7, float %6235)  ; Saturate(value)
  %6238 = fmul fast float %6237, %6237
  %6239 = fmul fast float %6238, %5114
  %6240 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6241 = fmul fast float %6240, %6237
  %6242 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float %6232, float %6233, float %6234)  ; Dot3(ax,ay,az,bx,by,bz)
  %6243 = fmul fast float %6242, %6242
  %6244 = call float @dx.op.unary.f32(i32 6, float %6235)  ; FAbs(value)
  %6245 = fsub fast float 1.000000e+00, %5096
  %6246 = call float @dx.op.binary.f32(i32 35, float %6245, float 0x3F847AE140000000)  ; FMax(a,b)
  %6247 = fmul fast float %6246, %6246
  %6248 = fmul fast float %6247, %6247
  %6249 = fsub fast float 1.000000e+00, %6248
  %6250 = fmul fast float %5101, %5101
  %6251 = fmul fast float %6250, %6249
  %6252 = fadd fast float %6251, %6248
  %6253 = bitcast float %6252 to i32
  %6254 = ashr i32 %6253, 1
  %6255 = add nsw i32 %6254, 532487669
  %6256 = bitcast i32 %6255 to float
  %6257 = fadd fast float %6256, %5101
  %6258 = fmul fast float %6248, %6243
  %6259 = fsub fast float 1.000000e+00, %6243
  %6260 = fadd fast float %6259, %6258
  %6261 = fmul fast float %6244, %6244
  %6262 = fmul fast float %6261, %6249
  %6263 = fadd fast float %6262, %6248
  %6264 = bitcast float %6263 to i32
  %6265 = ashr i32 %6264, 1
  %6266 = add nsw i32 %6265, 532487669
  %6267 = bitcast i32 %6266 to float
  %6268 = fadd fast float %6267, %6244
  %6269 = fmul fast float %6260, %6260
  %6270 = fmul fast float %6269, %6257
  %6271 = fmul fast float %6270, %6268
  %6272 = fdiv fast float 0x3FF0A00000000000, %6271
  %6273 = fmul fast float %6272, %6248
  %6274 = call float @dx.op.unary.f32(i32 6, float %6236)  ; FAbs(value)
  %6275 = fsub fast float 1.000000e+00, %6274
  %6276 = bitcast float %6275 to i32
  %6277 = sitofp i32 %6276 to float
  %6278 = fmul fast float %6277, 5.000000e+00
  %6279 = fadd fast float %6278, 0xC1EFBF8940000000
  %6280 = fptosi float %6279 to i32
  %6281 = bitcast i32 %6280 to float
  %6282 = fsub fast float 1.000000e+00, %5090
  %6283 = fsub fast float 1.000000e+00, %5091
  %6284 = fsub fast float 1.000000e+00, %5099
  %6285 = fmul fast float %6281, %6282
  %6286 = fmul fast float %6281, %6283
  %6287 = fmul fast float %6281, %6284
  %6288 = fadd fast float %6285, %5090
  %6289 = fadd fast float %6286, %5091
  %6290 = fadd fast float %6287, %5099
  br i1 %5226, label %6291, label %6314

; <label>:6291                                    ; preds = %6208
  %6292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3893, float %6274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6293 = extractvalue %dx.types.ResRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.ResRet.f32 %6292, 1
  %6295 = extractvalue %dx.types.ResRet.f32 %6292, 2
  %6296 = fadd fast float %6293, -5.000000e-01
  %6297 = fadd fast float %6294, -5.000000e-01
  %6298 = fadd fast float %6295, -5.000000e-01
  %6299 = fmul fast float %5090, 4.000000e+00
  %6300 = fmul fast float %6299, %6282
  %6301 = fmul fast float %6300, %6296
  %6302 = fmul fast float %5091, 4.000000e+00
  %6303 = fmul fast float %6302, %6283
  %6304 = fmul fast float %6303, %6297
  %6305 = fmul fast float %5099, 4.000000e+00
  %6306 = fmul fast float %6305, %6284
  %6307 = fmul fast float %6306, %6298
  %6308 = fadd fast float %6301, %6288
  %6309 = fadd fast float %6304, %6289
  %6310 = fadd fast float %6307, %6290
  %6311 = call float @dx.op.unary.f32(i32 7, float %6308)  ; Saturate(value)
  %6312 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  %6313 = call float @dx.op.unary.f32(i32 7, float %6310)  ; Saturate(value)
  br label %6314

; <label>:6314                                    ; preds = %6291, %6208
  %6315 = phi float [ %6311, %6291 ], [ %6288, %6208 ]
  %6316 = phi float [ %6312, %6291 ], [ %6289, %6208 ]
  %6317 = phi float [ %6313, %6291 ], [ %6290, %6208 ]
  %6318 = fmul fast float %6235, 9.843750e-01
  %6319 = fadd fast float %6318, 7.812500e-03
  %6320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6319, float %5216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6321 = extractvalue %dx.types.ResRet.f32 %6320, 2
  %6322 = extractvalue %dx.types.ResRet.f32 %6320, 3
  %6323 = fmul fast float %6321, %5090
  %6324 = fmul fast float %6321, %5091
  %6325 = fmul fast float %6321, %5099
  %6326 = fadd fast float %6323, %6322
  %6327 = fadd fast float %6324, %6322
  %6328 = fadd fast float %6325, %6322
  br i1 %5226, label %6329, label %6352

; <label>:6329                                    ; preds = %6314
  %6330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3893, float %6235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6331 = extractvalue %dx.types.ResRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.ResRet.f32 %6330, 1
  %6333 = extractvalue %dx.types.ResRet.f32 %6330, 2
  %6334 = fadd fast float %6331, -5.000000e-01
  %6335 = fadd fast float %6332, -5.000000e-01
  %6336 = fadd fast float %6333, -5.000000e-01
  %6337 = fmul fast float %5090, 4.000000e+00
  %6338 = fmul fast float %6337, %6282
  %6339 = fmul fast float %6338, %6334
  %6340 = fmul fast float %5091, 4.000000e+00
  %6341 = fmul fast float %6340, %6283
  %6342 = fmul fast float %6341, %6335
  %6343 = fmul fast float %5099, 4.000000e+00
  %6344 = fmul fast float %6343, %6284
  %6345 = fmul fast float %6344, %6336
  %6346 = fadd fast float %6339, %6326
  %6347 = fadd fast float %6342, %6327
  %6348 = fadd fast float %6345, %6328
  %6349 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  %6350 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  %6351 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  br label %6352

; <label>:6352                                    ; preds = %6329, %6314
  %6353 = phi float [ %6349, %6329 ], [ %6326, %6314 ]
  %6354 = phi float [ %6350, %6329 ], [ %6327, %6314 ]
  %6355 = phi float [ %6351, %6329 ], [ %6328, %6314 ]
  %6356 = call float @dx.op.binary.f32(i32 35, float %6354, float %6355)  ; FMax(a,b)
  %6357 = call float @dx.op.binary.f32(i32 35, float %6353, float %6356)  ; FMax(a,b)
  %6358 = fsub fast float 1.000000e+00, %6357
  %6359 = fmul fast float %6315, %6273
  %6360 = fmul fast float %6316, %6273
  %6361 = fmul fast float %6317, %6273
  %6362 = fsub fast float 1.000000e+00, %6236
  %6363 = bitcast float %6362 to i32
  %6364 = sitofp i32 %6363 to float
  %6365 = fmul fast float %6364, 5.000000e+00
  %6366 = fadd fast float %6365, 0xC1EFBF8940000000
  %6367 = fptosi float %6366 to i32
  %6368 = bitcast i32 %6367 to float
  %6369 = fmul fast float %6368, %3894
  %6370 = fmul fast float %6358, %6369
  %6371 = fmul fast float %6370, %5276
  %6372 = fmul fast float %6370, %5277
  %6373 = fmul fast float %6370, %5278
  %6374 = fadd fast float %6371, %6359
  %6375 = fadd fast float %6372, %6360
  %6376 = fadd fast float %6373, %6361
  %6377 = fmul fast float %6241, %6224
  %6378 = fmul fast float %6377, %6358
  %6379 = fmul fast float %6241, %6225
  %6380 = fmul fast float %6379, %6358
  %6381 = fmul fast float %6241, %6226
  %6382 = fmul fast float %6381, %6358
  %6383 = fmul fast float %6377, %6374
  %6384 = fmul fast float %6379, %6375
  %6385 = fmul fast float %6381, %6376
  %6386 = fadd fast float %6378, %5260
  %6387 = fmul fast float %6386, %3890
  %6388 = fadd fast float %6380, %5261
  %6389 = fmul fast float %6388, %3890
  %6390 = fadd fast float %6382, %5262
  %6391 = fmul fast float %6390, %3890
  %6392 = fadd fast float %6383, %5303
  %6393 = fmul fast float %6392, %3890
  %6394 = fadd fast float %6384, %5306
  %6395 = fmul fast float %6394, %3890
  %6396 = fadd fast float %6385, %5309
  %6397 = fmul fast float %6396, %3890
  br label %6398

; <label>:6398                                    ; preds = %6352, %6142, %5253
  %6399 = phi float [ %5304, %5253 ], [ %5304, %6142 ], [ %6393, %6352 ]
  %6400 = phi float [ %5307, %5253 ], [ %5307, %6142 ], [ %6395, %6352 ]
  %6401 = phi float [ %5310, %5253 ], [ %5310, %6142 ], [ %6397, %6352 ]
  %6402 = phi float [ %5299, %5253 ], [ %5299, %6142 ], [ %6387, %6352 ]
  %6403 = phi float [ %5300, %5253 ], [ %5300, %6142 ], [ %6389, %6352 ]
  %6404 = phi float [ %5301, %5253 ], [ %5301, %6142 ], [ %6391, %6352 ]
  %6405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.i32 %6405, 0
  %6407 = icmp eq i32 %6406, 0
  br i1 %6407, label %7028, label %6408

; <label>:6408                                    ; preds = %6398
  %6409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6410 = extractvalue %dx.types.CBufRet.f32 %6409, 2
  %6411 = extractvalue %dx.types.CBufRet.f32 %6409, 3
  %6412 = fmul fast float %6410, %104
  %6413 = fmul fast float %6411, %105
  %6414 = fptoui float %6412 to i32
  %6415 = fptoui float %6413 to i32
  %6416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6417 = extractvalue %dx.types.CBufRet.f32 %6416, 0
  %6418 = extractvalue %dx.types.CBufRet.f32 %6416, 2
  %6419 = extractvalue %dx.types.CBufRet.f32 %6416, 3
  %6420 = fadd fast float %95, -4.000000e+00
  %6421 = call float @dx.op.binary.f32(i32 35, float %6420, float 0.000000e+00)  ; FMax(a,b)
  %6422 = fadd fast float %6421, %6417
  %6423 = fmul fast float %6422, %6418
  %6424 = call float @dx.op.unary.f32(i32 23, float %6423)  ; Log(value)
  %6425 = fmul fast float %6424, %6419
  %6426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6427 = extractvalue %dx.types.CBufRet.f32 %6426, 2
  %6428 = fmul fast float %6425, %6427
  %6429 = call float @dx.op.unary.f32(i32 7, float %6428)  ; Saturate(value)
  %6430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.i32 %6430, 1
  %6432 = add i32 %6431, -1
  %6433 = uitofp i32 %6431 to float
  %6434 = fmul fast float %6433, %6429
  %6435 = fptoui float %6434 to i32
  %6436 = call i32 @dx.op.binary.i32(i32 40, i32 %6435, i32 %6432)  ; UMin(a,b)
  %6437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6438 = extractvalue %dx.types.CBufRet.i32 %6437, 2
  %6439 = extractvalue %dx.types.CBufRet.i32 %6437, 3
  %6440 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6415, i32 %6438, i32 %6414)  ; UMad(a,b,c)
  %6441 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6436, i32 %6439, i32 %6440)  ; UMad(a,b,c)
  %6442 = add nsw i32 %6406, -1
  %6443 = call i32 @dx.op.binary.i32(i32 37, i32 %6442, i32 0)  ; IMax(a,b)
  %6444 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %6445 = fptoui float %6444 to i32
  %6446 = lshr i32 %6445, 5
  %6447 = call i32 @dx.op.binary.i32(i32 40, i32 %6446, i32 8191)  ; UMin(a,b)
  %6448 = shl i32 %6447, 2
  %6449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6448, i32 undef)  ; BufferLoad(srv,index,wot)
  %6450 = extractvalue %dx.types.ResRet.i32 %6449, 0
  %6451 = lshr i32 %6450, 16
  %6452 = and i32 %6450, 65535
  %6453 = lshr i32 %6450, 21
  %6454 = lshr i32 %6452, 5
  %6455 = call i32 @dx.op.binary.i32(i32 40, i32 %6454, i32 %6443)  ; UMin(a,b)
  %6456 = icmp ugt i32 %6453, %6455
  br i1 %6456, label %7028, label %6457

; <label>:6457                                    ; preds = %6408
  br label %6458

; <label>:6458                                    ; preds = %7018, %6457
  %6459 = phi i32 [ %7025, %7018 ], [ %6453, %6457 ]
  %6460 = phi float [ %7019, %7018 ], [ %6399, %6457 ]
  %6461 = phi float [ %7020, %7018 ], [ %6400, %6457 ]
  %6462 = phi float [ %7021, %7018 ], [ %6401, %6457 ]
  %6463 = phi float [ %7022, %7018 ], [ %6402, %6457 ]
  %6464 = phi float [ %7023, %7018 ], [ %6403, %6457 ]
  %6465 = phi float [ %7024, %7018 ], [ %6404, %6457 ]
  %6466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.i32 %6466, 0
  %6468 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6441, i32 %6467, i32 %6459)  ; UMad(a,b,c)
  %6469 = shl i32 %6468, 2
  %6470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6469, i32 undef)  ; BufferLoad(srv,index,wot)
  %6471 = extractvalue %dx.types.ResRet.i32 %6470, 0
  %6472 = shl i32 %6459, 5
  %6473 = sub nsw i32 %6451, %6472
  %6474 = call i32 @dx.op.binary.i32(i32 37, i32 %6473, i32 0)  ; IMax(a,b)
  %6475 = call i32 @dx.op.binary.i32(i32 38, i32 %6474, i32 31)  ; IMin(a,b)
  %6476 = sub nsw i32 1, %6451
  %6477 = add nsw i32 %6476, %6452
  %6478 = call i32 @dx.op.binary.i32(i32 37, i32 %6477, i32 0)  ; IMax(a,b)
  %6479 = call i32 @dx.op.binary.i32(i32 38, i32 %6478, i32 32)  ; IMin(a,b)
  %6480 = and i32 %6479, 31
  %6481 = shl i32 -1, %6480
  %6482 = xor i32 %6481, -1
  %6483 = and i32 %6475, 31
  %6484 = shl i32 %6482, %6483
  %6485 = icmp eq i32 %6479, 32
  %6486 = select i1 %6485, i32 -1, i32 %6484
  %6487 = and i32 %6486, %6471
  %6488 = icmp eq i32 %6487, 0
  br i1 %6488, label %7018, label %6489

; <label>:6489                                    ; preds = %6458
  br label %6490

; <label>:6490                                    ; preds = %6624, %6489
  %6491 = phi i32 [ %6502, %6624 ], [ %6487, %6489 ]
  %6492 = phi float [ %6625, %6624 ], [ %6460, %6489 ]
  %6493 = phi float [ %6626, %6624 ], [ %6461, %6489 ]
  %6494 = phi float [ %6627, %6624 ], [ %6462, %6489 ]
  %6495 = phi float [ %6628, %6624 ], [ %6463, %6489 ]
  %6496 = phi float [ %6629, %6624 ], [ %6464, %6489 ]
  %6497 = phi float [ %6630, %6624 ], [ %6465, %6489 ]
  %6498 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6491)  ; FirstbitLo(value)
  %6499 = add i32 %6498, %6472
  %6500 = and i32 %6498, 31
  %6501 = shl i32 1, %6500
  %6502 = xor i32 %6501, %6491
  %6503 = mul i32 %6499, 112
  %6504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6503, i32 undef)  ; BufferLoad(srv,index,wot)
  %6505 = extractvalue %dx.types.ResRet.f32 %6504, 0
  %6506 = extractvalue %dx.types.ResRet.f32 %6504, 1
  %6507 = extractvalue %dx.types.ResRet.f32 %6504, 2
  %6508 = or i32 %6503, 12
  %6509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6508, i32 undef)  ; BufferLoad(srv,index,wot)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = add i32 %6503, 16
  %6512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6511, i32 undef)  ; BufferLoad(srv,index,wot)
  %6513 = extractvalue %dx.types.ResRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.ResRet.f32 %6512, 1
  %6515 = extractvalue %dx.types.ResRet.f32 %6512, 2
  %6516 = add i32 %6503, 28
  %6517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6516, i32 undef)  ; BufferLoad(srv,index,wot)
  %6518 = extractvalue %dx.types.ResRet.i32 %6517, 0
  %6519 = add i32 %6503, 44
  %6520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6519, i32 undef)  ; BufferLoad(srv,index,wot)
  %6521 = extractvalue %dx.types.ResRet.f32 %6520, 0
  %6522 = add i32 %6503, 48
  %6523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6522, i32 undef)  ; BufferLoad(srv,index,wot)
  %6524 = extractvalue %dx.types.ResRet.f32 %6523, 0
  %6525 = extractvalue %dx.types.ResRet.f32 %6523, 1
  %6526 = extractvalue %dx.types.ResRet.f32 %6523, 2
  %6527 = extractvalue %dx.types.ResRet.f32 %6523, 3
  %6528 = add i32 %6503, 64
  %6529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6528, i32 undef)  ; BufferLoad(srv,index,wot)
  %6530 = extractvalue %dx.types.ResRet.f32 %6529, 0
  %6531 = extractvalue %dx.types.ResRet.f32 %6529, 1
  %6532 = extractvalue %dx.types.ResRet.f32 %6529, 2
  %6533 = extractvalue %dx.types.ResRet.f32 %6529, 3
  %6534 = add i32 %6503, 80
  %6535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6534, i32 undef)  ; BufferLoad(srv,index,wot)
  %6536 = extractvalue %dx.types.ResRet.f32 %6535, 1
  %6537 = extractvalue %dx.types.ResRet.f32 %6535, 2
  %6538 = add i32 %6503, 92
  %6539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6538, i32 undef)  ; BufferLoad(srv,index,wot)
  %6540 = extractvalue %dx.types.ResRet.i32 %6539, 0
  %6541 = call float @dx.op.dot3.f32(i32 55, float %6505, float %6506, float %6507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6542 = select i1 %250, float %6536, float %6505
  %6543 = select i1 %250, float %6541, float %6506
  %6544 = select i1 %250, float %6537, float %6507
  %6545 = and i32 %6540, 65535
  %6546 = uitofp i32 %6545 to float
  %6547 = lshr i32 %6540, 16
  %6548 = uitofp i32 %6547 to float
  %6549 = and i32 %6518, 65535
  %6550 = and i32 %6518, 50331648
  %6551 = icmp eq i32 %6550, 33554432
  %6552 = fsub fast float %6524, %191
  %6553 = fsub fast float %6525, %192
  %6554 = fsub fast float %6526, %193
  %6555 = call float @dx.op.dot3.f32(i32 55, float %6552, float %6553, float %6554, float %6552, float %6553, float %6554)  ; Dot3(ax,ay,az,bx,by,bz)
  %6556 = call float @dx.op.unary.f32(i32 24, float %6555)  ; Sqrt(value)
  %6557 = fdiv fast float 1.000000e+00, %6556
  %6558 = fmul fast float %6557, %6552
  %6559 = fmul fast float %6557, %6553
  %6560 = fmul fast float %6557, %6554
  %6561 = fadd fast float %6556, %6510
  %6562 = fdiv fast float 1.000000e+00, %6561
  %6563 = fmul float %6521, %6562
  %6564 = fmul float %6563, %6563
  %6565 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  br i1 %6551, label %6566, label %6587

; <label>:6566                                    ; preds = %6490
  %6567 = fmul fast float %6532, %6513
  %6568 = fmul fast float %6532, %6514
  %6569 = fmul fast float %6532, %6515
  %6570 = fadd fast float %6552, %6567
  %6571 = fadd fast float %6553, %6568
  %6572 = fadd fast float %6554, %6569
  %6573 = call float @dx.op.dot3.f32(i32 55, float %6570, float %6571, float %6572, float %6570, float %6571, float %6572)  ; Dot3(ax,ay,az,bx,by,bz)
  %6574 = call float @dx.op.unary.f32(i32 25, float %6573)  ; Rsqrt(value)
  %6575 = fmul fast float %6574, %6570
  %6576 = fmul fast float %6574, %6571
  %6577 = fmul fast float %6574, %6572
  %6578 = fsub fast float %191, %6524
  %6579 = fsub fast float %192, %6525
  %6580 = fsub fast float %193, %6526
  %6581 = fsub fast float -0.000000e+00, %6578
  %6582 = fsub fast float -0.000000e+00, %6579
  %6583 = fsub fast float -0.000000e+00, %6580
  %6584 = call float @dx.op.dot3.f32(i32 55, float %6581, float %6582, float %6583, float %6513, float %6514, float %6515)  ; Dot3(ax,ay,az,bx,by,bz)
  %6585 = fcmp fast ogt float %6584, 0.000000e+00
  %6586 = uitofp i1 %6585 to float
  br label %6587

; <label>:6587                                    ; preds = %6566, %6490
  %6588 = phi float [ %6586, %6566 ], [ 1.000000e+00, %6490 ]
  %6589 = phi float [ %6575, %6566 ], [ %6558, %6490 ]
  %6590 = phi float [ %6576, %6566 ], [ %6559, %6490 ]
  %6591 = phi float [ %6577, %6566 ], [ %6560, %6490 ]
  %6592 = call float @dx.op.dot3.f32(i32 55, float %6513, float %6514, float %6515, float %6589, float %6590, float %6591)  ; Dot3(ax,ay,az,bx,by,bz)
  %6593 = fmul fast float %6592, %6592
  %6594 = call float @dx.op.unary.f32(i32 7, float %6593)  ; Saturate(value)
  %6595 = fsub fast float 1.000000e+00, %6594
  %6596 = fmul fast float %6595, 5.000000e-01
  %6597 = fcmp fast ogt float %6592, 0.000000e+00
  %6598 = fsub fast float 1.000000e+00, %6596
  %6599 = select i1 %6597, float %6596, float %6598
  %6600 = fmul fast float %6599, %6548
  %6601 = fadd fast float %6600, %6546
  %6602 = fmul fast float %6601, 0x3EF0001000000000
  %6603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %48, float %6602, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6604 = extractvalue %dx.types.ResRet.f32 %6603, 0
  %6605 = fmul fast float %6592, %6530
  %6606 = fadd fast float %6605, %6531
  %6607 = call float @dx.op.unary.f32(i32 7, float %6606)  ; Saturate(value)
  %6608 = select i1 %6551, float 1.000000e+00, float %6607
  %6609 = select i1 %6551, float %6607, float 1.000000e+00
  %6610 = fmul fast float %6556, %6527
  %6611 = fsub fast float 1.000000e+00, %6610
  %6612 = fmul fast float %6611, %6533
  %6613 = call float @dx.op.unary.f32(i32 7, float %6612)  ; Saturate(value)
  %6614 = fmul fast float %6613, %6609
  %6615 = fmul fast float %6614, 2.000000e+00
  %6616 = fsub fast float 3.000000e+00, %6615
  %6617 = fmul fast float %6604, %6588
  %6618 = fmul fast float %6614, %6614
  %6619 = fmul fast float %6618, %6617
  %6620 = fmul fast float %6619, %6616
  %6621 = call float @dx.op.binary.f32(i32 36, float %6620, float %6620)  ; FMin(a,b)
  %6622 = call float @dx.op.binary.f32(i32 36, float %6620, float %6621)  ; FMin(a,b)
  %6623 = fcmp fast ogt float %6622, 0.000000e+00
  br i1 %6623, label %6632, label %6624, !dx.controlflow.hints !120

; <label>:6624                                    ; preds = %6974, %6732, %6587
  %6625 = phi float [ %6492, %6732 ], [ %6492, %6587 ], [ %7014, %6974 ]
  %6626 = phi float [ %6493, %6732 ], [ %6493, %6587 ], [ %7015, %6974 ]
  %6627 = phi float [ %6494, %6732 ], [ %6494, %6587 ], [ %7016, %6974 ]
  %6628 = phi float [ %6495, %6732 ], [ %6495, %6587 ], [ %7008, %6974 ]
  %6629 = phi float [ %6496, %6732 ], [ %6496, %6587 ], [ %7009, %6974 ]
  %6630 = phi float [ %6497, %6732 ], [ %6497, %6587 ], [ %7010, %6974 ]
  %6631 = icmp eq i32 %6491, %6501
  br i1 %6631, label %7017, label %6490

; <label>:6632                                    ; preds = %6587
  %6633 = icmp eq i32 %6549, 255
  br i1 %6633, label %6732, label %6634, !dx.controlflow.hints !121

; <label>:6634                                    ; preds = %6632
  %6635 = mul nuw nsw i32 %6549, 176
  %6636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6635, i32 undef)  ; BufferLoad(srv,index,wot)
  %6637 = extractvalue %dx.types.ResRet.f32 %6636, 0
  %6638 = extractvalue %dx.types.ResRet.f32 %6636, 1
  %6639 = extractvalue %dx.types.ResRet.f32 %6636, 2
  %6640 = extractvalue %dx.types.ResRet.f32 %6636, 3
  %6641 = add nuw nsw i32 %6635, 16
  %6642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6641, i32 undef)  ; BufferLoad(srv,index,wot)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 0
  %6644 = extractvalue %dx.types.ResRet.f32 %6642, 1
  %6645 = add nuw nsw i32 %6635, 32
  %6646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6645, i32 undef)  ; BufferLoad(srv,index,wot)
  %6647 = extractvalue %dx.types.ResRet.f32 %6646, 0
  %6648 = extractvalue %dx.types.ResRet.f32 %6646, 1
  %6649 = extractvalue %dx.types.ResRet.f32 %6646, 2
  %6650 = add nuw nsw i32 %6635, 48
  %6651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6650, i32 undef)  ; BufferLoad(srv,index,wot)
  %6652 = extractvalue %dx.types.ResRet.f32 %6651, 0
  %6653 = extractvalue %dx.types.ResRet.f32 %6651, 1
  %6654 = extractvalue %dx.types.ResRet.f32 %6651, 2
  %6655 = extractvalue %dx.types.ResRet.f32 %6651, 3
  %6656 = add nuw nsw i32 %6635, 64
  %6657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6656, i32 undef)  ; BufferLoad(srv,index,wot)
  %6658 = extractvalue %dx.types.ResRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.ResRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.ResRet.f32 %6657, 2
  %6661 = extractvalue %dx.types.ResRet.f32 %6657, 3
  %6662 = add nuw nsw i32 %6635, 80
  %6663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6662, i32 undef)  ; BufferLoad(srv,index,wot)
  %6664 = extractvalue %dx.types.ResRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.ResRet.f32 %6663, 1
  %6666 = extractvalue %dx.types.ResRet.f32 %6663, 2
  %6667 = extractvalue %dx.types.ResRet.f32 %6663, 3
  %6668 = add nuw nsw i32 %6635, 96
  %6669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6668, i32 undef)  ; BufferLoad(srv,index,wot)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.ResRet.f32 %6669, 1
  %6672 = extractvalue %dx.types.ResRet.f32 %6669, 2
  %6673 = extractvalue %dx.types.ResRet.f32 %6669, 3
  %6674 = bitcast float %6644 to i32
  %6675 = fmul fast float %6649, %111
  %6676 = fmul fast float %6649, %112
  %6677 = fmul fast float %6649, %113
  %6678 = fadd fast float %6675, %191
  %6679 = fadd fast float %6676, %192
  %6680 = fadd fast float %6677, %193
  %6681 = fmul fast float %6678, %6652
  %6682 = call float @dx.op.tertiary.f32(i32 46, float %6679, float %6658, float %6681)  ; FMad(a,b,c)
  %6683 = call float @dx.op.tertiary.f32(i32 46, float %6680, float %6664, float %6682)  ; FMad(a,b,c)
  %6684 = fadd fast float %6683, %6670
  %6685 = fmul fast float %6678, %6653
  %6686 = call float @dx.op.tertiary.f32(i32 46, float %6679, float %6659, float %6685)  ; FMad(a,b,c)
  %6687 = call float @dx.op.tertiary.f32(i32 46, float %6680, float %6665, float %6686)  ; FMad(a,b,c)
  %6688 = fadd fast float %6687, %6671
  %6689 = fmul fast float %6678, %6654
  %6690 = call float @dx.op.tertiary.f32(i32 46, float %6679, float %6660, float %6689)  ; FMad(a,b,c)
  %6691 = call float @dx.op.tertiary.f32(i32 46, float %6680, float %6666, float %6690)  ; FMad(a,b,c)
  %6692 = fadd fast float %6691, %6672
  %6693 = fmul fast float %6678, %6655
  %6694 = call float @dx.op.tertiary.f32(i32 46, float %6679, float %6661, float %6693)  ; FMad(a,b,c)
  %6695 = call float @dx.op.tertiary.f32(i32 46, float %6680, float %6667, float %6694)  ; FMad(a,b,c)
  %6696 = fadd fast float %6695, %6673
  %6697 = fdiv fast float %6684, %6696
  %6698 = fdiv fast float %6688, %6696
  %6699 = fdiv fast float %6692, %6696
  %6700 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6699)  ; FMax(a,b)
  %6701 = fmul fast float %261, 0x401921FB60000000
  %6702 = call float @dx.op.unary.f32(i32 13, float %6701)  ; Sin(value)
  %6703 = call float @dx.op.unary.f32(i32 12, float %6701)  ; Cos(value)
  %6704 = fsub fast float -0.000000e+00, %6702
  %6705 = fmul fast float %6639, 5.000000e-01
  %6706 = call float @dx.op.dot2.f32(i32 54, float %261, float %261, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6707 = call float @dx.op.unary.f32(i32 22, float %6706)  ; Frc(value)
  %6708 = fmul fast float %6707, 0x404A7DD040000000
  %6709 = call float @dx.op.unary.f32(i32 22, float %6708)  ; Frc(value)
  %6710 = fmul fast float %6709, %6648
  %6711 = fadd fast float %6710, %6705
  %6712 = call float @dx.op.tertiary.f32(i32 46, float %6711, float %6704, float 0.000000e+00)  ; FMad(a,b,c)
  %6713 = call float @dx.op.tertiary.f32(i32 46, float %6711, float %6703, float 0.000000e+00)  ; FMad(a,b,c)
  %6714 = fadd fast float %6712, %6697
  %6715 = fadd fast float %6713, %6698
  %6716 = fmul fast float %6714, %6643
  %6717 = fmul fast float %6715, %6643
  %6718 = call float @dx.op.binary.f32(i32 35, float %6716, float %6639)  ; FMax(a,b)
  %6719 = call float @dx.op.binary.f32(i32 35, float %6717, float %6639)  ; FMax(a,b)
  %6720 = call float @dx.op.binary.f32(i32 36, float %6718, float %6640)  ; FMin(a,b)
  %6721 = call float @dx.op.binary.f32(i32 36, float %6719, float %6640)  ; FMin(a,b)
  %6722 = fadd fast float %6720, %6637
  %6723 = fadd fast float %6721, %6638
  %6724 = uitofp i32 %6674 to float
  %6725 = fadd fast float %6700, %6647
  %6726 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %50, float %6722, float %6723, float %6724, float undef, i32 0, i32 0, i32 undef, float %6725)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6727 = extractvalue %dx.types.ResRet.f32 %6726, 0
  %6728 = fadd fast float %6727, -1.000000e+00
  %6729 = fmul fast float %6728, %6608
  %6730 = fadd fast float %6729, 1.000000e+00
  %6731 = fmul fast float %6730, %6620
  br label %6732

; <label>:6732                                    ; preds = %6634, %6632
  %6733 = phi float [ %6731, %6634 ], [ %6620, %6632 ]
  %6734 = call float @dx.op.binary.f32(i32 36, float %6733, float %6733)  ; FMin(a,b)
  %6735 = call float @dx.op.binary.f32(i32 36, float %6733, float %6734)  ; FMin(a,b)
  %6736 = fcmp fast ogt float %6735, 0.000000e+00
  br i1 %6736, label %6737, label %6624, !dx.controlflow.hints !122

; <label>:6737                                    ; preds = %6732
  %6738 = fmul fast float %6733, %6542
  %6739 = fmul fast float %6733, %6543
  %6740 = fmul fast float %6733, %6544
  %6741 = fsub fast float %6526, %4294
  %6742 = fcmp fast ogt float %6741, 0.000000e+00
  %6743 = fsub fast float %193, %4294
  %6744 = fcmp fast ogt float %6743, 0.000000e+00
  %6745 = xor i1 %6744, %6742
  %6746 = fsub fast float %4294, %6526
  %6747 = fmul fast float %6746, 2.000000e+00
  %6748 = fadd fast float %6747, %6526
  %6749 = select i1 %6745, float %6526, float %6748
  %6750 = fsub fast float %6749, %193
  %6751 = call float @dx.op.dot3.f32(i32 55, float %6552, float %6553, float %6750, float %6552, float %6553, float %6750)  ; Dot3(ax,ay,az,bx,by,bz)
  %6752 = call float @dx.op.unary.f32(i32 25, float %6751)  ; Rsqrt(value)
  %6753 = fmul fast float %6752, %6552
  %6754 = fmul fast float %6752, %6553
  %6755 = fmul fast float %6752, %6750
  %6756 = fsub fast float %4294, %193
  %6757 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6756)  ; Dot3(ax,ay,az,bx,by,bz)
  %6758 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6753, float %6754, float %6755)  ; Dot3(ax,ay,az,bx,by,bz)
  %6759 = fdiv fast float 1.000000e+00, %6758
  %6760 = fmul fast float %6759, %6757
  %6761 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6743, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6762 = fcmp fast ogt float %6761, 0.000000e+00
  %6763 = fcmp fast olt float %6761, 0.000000e+00
  %6764 = zext i1 %6762 to i32
  %6765 = zext i1 %6763 to i32
  %6766 = sub nsw i32 %6764, %6765
  %6767 = sitofp i32 %6766 to float
  %6768 = fsub fast float %6749, %4294
  %6769 = call float @dx.op.dot3.f32(i32 55, float %6552, float %6553, float %6768, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6770 = fcmp fast ogt float %6769, 0.000000e+00
  %6771 = fcmp fast olt float %6769, 0.000000e+00
  %6772 = zext i1 %6770 to i32
  %6773 = zext i1 %6771 to i32
  %6774 = sub nsw i32 %6772, %6773
  %6775 = sitofp i32 %6774 to float
  %6776 = fcmp fast une float %6767, %6775
  br i1 %6776, label %6777, label %6787

; <label>:6777                                    ; preds = %6737
  %6778 = fmul fast float %6760, %6755
  %6779 = fmul fast float %6760, %6754
  %6780 = fmul fast float %6760, %6753
  %6781 = fmul fast float %6780, %6780
  %6782 = fmul fast float %6779, %6779
  %6783 = fadd fast float %6781, %6782
  %6784 = fmul fast float %6778, %6778
  %6785 = fadd fast float %6783, %6784
  %6786 = call float @dx.op.unary.f32(i32 24, float %6785)  ; Sqrt(value)
  br label %6799

; <label>:6787                                    ; preds = %6737
  %6788 = icmp slt i32 %6766, 0
  br i1 %6788, label %6789, label %6799

; <label>:6789                                    ; preds = %6787
  %6790 = fsub fast float %191, %6524
  %6791 = fsub fast float %192, %6525
  %6792 = fsub fast float %193, %6749
  %6793 = fmul fast float %6790, %6790
  %6794 = fmul fast float %6791, %6791
  %6795 = fadd fast float %6793, %6794
  %6796 = fmul fast float %6792, %6792
  %6797 = fadd fast float %6795, %6796
  %6798 = call float @dx.op.unary.f32(i32 24, float %6797)  ; Sqrt(value)
  br label %6799

; <label>:6799                                    ; preds = %6789, %6787, %6777
  %6800 = phi float [ %6786, %6777 ], [ %6798, %6789 ], [ 0.000000e+00, %6787 ]
  %6801 = and i1 %6744, %6742
  %6802 = fsub fast float -0.000000e+00, %6800
  %6803 = select i1 %6801, float -0.000000e+00, float %6802
  %6804 = fmul fast float %4295, 0x3FF7154760000000
  %6805 = fmul fast float %6804, %6803
  %6806 = fmul fast float %4296, 0x3FF7154760000000
  %6807 = fmul fast float %6806, %6803
  %6808 = fmul fast float %4297, 0x3FF7154760000000
  %6809 = fmul fast float %6808, %6803
  %6810 = call float @dx.op.unary.f32(i32 21, float %6805)  ; Exp(value)
  %6811 = call float @dx.op.unary.f32(i32 21, float %6807)  ; Exp(value)
  %6812 = call float @dx.op.unary.f32(i32 21, float %6809)  ; Exp(value)
  %6813 = call float @dx.op.unary.f32(i32 7, float %6810)  ; Saturate(value)
  %6814 = call float @dx.op.unary.f32(i32 7, float %6811)  ; Saturate(value)
  %6815 = call float @dx.op.unary.f32(i32 7, float %6812)  ; Saturate(value)
  %6816 = fmul fast float %6738, %6813
  %6817 = fmul fast float %6739, %6814
  %6818 = fmul fast float %6740, %6815
  %6819 = fsub fast float %6558, %5086
  %6820 = fsub fast float %6559, %5085
  %6821 = fsub fast float %6560, %5084
  %6822 = call float @dx.op.dot3.f32(i32 55, float %6819, float %6820, float %6821, float %6819, float %6820, float %6821)  ; Dot3(ax,ay,az,bx,by,bz)
  %6823 = call float @dx.op.unary.f32(i32 25, float %6822)  ; Rsqrt(value)
  %6824 = fmul fast float %6823, %6819
  %6825 = fmul fast float %6823, %6820
  %6826 = fmul fast float %6823, %6821
  %6827 = call float @dx.op.dot3.f32(i32 55, float %6558, float %6559, float %6560, float %5093, float %5094, float %5095)  ; Dot3(ax,ay,az,bx,by,bz)
  %6828 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5082, float %5081, float %6824, float %6825, float %6826)  ; Dot3(ax,ay,az,bx,by,bz)
  %6829 = call float @dx.op.unary.f32(i32 7, float %6827)  ; Saturate(value)
  %6830 = fmul fast float %6829, %6565
  %6831 = fmul fast float %6829, %6829
  %6832 = fmul fast float %6831, %5114
  %6833 = call float @dx.op.unary.f32(i32 7, float %6832)  ; Saturate(value)
  %6834 = fmul fast float %6830, %6833
  %6835 = bitcast float %6555 to i32
  %6836 = ashr i32 %6835, 1
  %6837 = sub nsw i32 1597463007, %6836
  %6838 = bitcast i32 %6837 to float
  %6839 = fmul fast float %6838, %6552
  %6840 = fmul fast float %6838, %6553
  %6841 = fmul fast float %6838, %6554
  %6842 = fsub fast float %6839, %5086
  %6843 = fsub fast float %6840, %5085
  %6844 = fsub fast float %6841, %5084
  %6845 = call float @dx.op.dot3.f32(i32 55, float %6842, float %6843, float %6844, float %6842, float %6843, float %6844)  ; Dot3(ax,ay,az,bx,by,bz)
  %6846 = call float @dx.op.unary.f32(i32 25, float %6845)  ; Rsqrt(value)
  %6847 = fmul fast float %6842, %6846
  %6848 = fmul fast float %6843, %6846
  %6849 = fmul fast float %6844, %6846
  %6850 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float %6847, float %6848, float %6849)  ; Dot3(ax,ay,az,bx,by,bz)
  %6851 = fmul fast float %6850, %6850
  %6852 = call float @dx.op.unary.f32(i32 6, float %6827)  ; FAbs(value)
  %6853 = fsub fast float 1.000000e+00, %5096
  %6854 = call float @dx.op.binary.f32(i32 35, float %6853, float 0x3F847AE140000000)  ; FMax(a,b)
  %6855 = fmul fast float %6854, %6854
  %6856 = fmul fast float %6855, %6855
  %6857 = fsub fast float 1.000000e+00, %6856
  %6858 = fmul fast float %5101, %5101
  %6859 = fmul fast float %6858, %6857
  %6860 = fadd fast float %6859, %6856
  %6861 = bitcast float %6860 to i32
  %6862 = ashr i32 %6861, 1
  %6863 = add nsw i32 %6862, 532487669
  %6864 = bitcast i32 %6863 to float
  %6865 = fadd fast float %6864, %5101
  %6866 = fmul fast float %6856, %6851
  %6867 = fsub fast float 1.000000e+00, %6851
  %6868 = fadd fast float %6867, %6866
  %6869 = fmul fast float %6852, %6852
  %6870 = fmul fast float %6869, %6857
  %6871 = fadd fast float %6870, %6856
  %6872 = bitcast float %6871 to i32
  %6873 = ashr i32 %6872, 1
  %6874 = add nsw i32 %6873, 532487669
  %6875 = bitcast i32 %6874 to float
  %6876 = fadd fast float %6875, %6852
  %6877 = fmul fast float %6868, %6868
  %6878 = fmul fast float %6877, %6865
  %6879 = fmul fast float %6878, %6876
  %6880 = fdiv fast float 1.000000e+00, %6879
  %6881 = bitcast float %6856 to i32
  %6882 = sitofp i32 %6881 to float
  %6883 = fmul fast float %6882, 0x3FE7F73180000000
  %6884 = fadd fast float %6883, 0x41AFE27C40000000
  %6885 = fptosi float %6884 to i32
  %6886 = bitcast i32 %6885 to float
  %6887 = fmul fast float %6521, 0x3FD80E9D60000000
  %6888 = fmul fast float %6887, %6838
  %6889 = fadd fast float %6886, %6888
  %6890 = bitcast float %6889 to i32
  %6891 = sub nsw i32 2129859010, %6890
  %6892 = bitcast i32 %6891 to float
  %6893 = fmul fast float %6856, %6880
  %6894 = fmul fast float %6893, %6886
  %6895 = fmul fast float %6894, %6892
  %6896 = call float @dx.op.unary.f32(i32 6, float %6828)  ; FAbs(value)
  %6897 = fsub fast float 1.000000e+00, %6896
  %6898 = bitcast float %6897 to i32
  %6899 = sitofp i32 %6898 to float
  %6900 = fmul fast float %6899, 5.000000e+00
  %6901 = fadd fast float %6900, 0xC1EFBF8940000000
  %6902 = fptosi float %6901 to i32
  %6903 = bitcast i32 %6902 to float
  %6904 = fsub fast float 1.000000e+00, %5090
  %6905 = fsub fast float 1.000000e+00, %5091
  %6906 = fsub fast float 1.000000e+00, %5099
  %6907 = fmul fast float %6903, %6904
  %6908 = fmul fast float %6903, %6905
  %6909 = fmul fast float %6903, %6906
  %6910 = fadd fast float %6907, %5090
  %6911 = fadd fast float %6908, %5091
  %6912 = fadd fast float %6909, %5099
  br i1 %5226, label %6913, label %6936

; <label>:6913                                    ; preds = %6799
  %6914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3893, float %6896, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6915 = extractvalue %dx.types.ResRet.f32 %6914, 0
  %6916 = extractvalue %dx.types.ResRet.f32 %6914, 1
  %6917 = extractvalue %dx.types.ResRet.f32 %6914, 2
  %6918 = fadd fast float %6915, -5.000000e-01
  %6919 = fadd fast float %6916, -5.000000e-01
  %6920 = fadd fast float %6917, -5.000000e-01
  %6921 = fmul fast float %5090, 4.000000e+00
  %6922 = fmul fast float %6921, %6904
  %6923 = fmul fast float %6922, %6918
  %6924 = fmul fast float %5091, 4.000000e+00
  %6925 = fmul fast float %6924, %6905
  %6926 = fmul fast float %6925, %6919
  %6927 = fmul fast float %5099, 4.000000e+00
  %6928 = fmul fast float %6927, %6906
  %6929 = fmul fast float %6928, %6920
  %6930 = fadd fast float %6923, %6910
  %6931 = fadd fast float %6926, %6911
  %6932 = fadd fast float %6929, %6912
  %6933 = call float @dx.op.unary.f32(i32 7, float %6930)  ; Saturate(value)
  %6934 = call float @dx.op.unary.f32(i32 7, float %6931)  ; Saturate(value)
  %6935 = call float @dx.op.unary.f32(i32 7, float %6932)  ; Saturate(value)
  br label %6936

; <label>:6936                                    ; preds = %6913, %6799
  %6937 = phi float [ %6933, %6913 ], [ %6910, %6799 ]
  %6938 = phi float [ %6934, %6913 ], [ %6911, %6799 ]
  %6939 = phi float [ %6935, %6913 ], [ %6912, %6799 ]
  %6940 = fmul fast float %6827, 9.843750e-01
  %6941 = fadd fast float %6940, 7.812500e-03
  %6942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %6941, float %5216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6943 = extractvalue %dx.types.ResRet.f32 %6942, 2
  %6944 = extractvalue %dx.types.ResRet.f32 %6942, 3
  %6945 = fmul fast float %6943, %5090
  %6946 = fmul fast float %6943, %5091
  %6947 = fmul fast float %6943, %5099
  %6948 = fadd fast float %6945, %6944
  %6949 = fadd fast float %6946, %6944
  %6950 = fadd fast float %6947, %6944
  br i1 %5226, label %6951, label %6974

; <label>:6951                                    ; preds = %6936
  %6952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %48, float %3893, float %6827, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6953 = extractvalue %dx.types.ResRet.f32 %6952, 0
  %6954 = extractvalue %dx.types.ResRet.f32 %6952, 1
  %6955 = extractvalue %dx.types.ResRet.f32 %6952, 2
  %6956 = fadd fast float %6953, -5.000000e-01
  %6957 = fadd fast float %6954, -5.000000e-01
  %6958 = fadd fast float %6955, -5.000000e-01
  %6959 = fmul fast float %5090, 4.000000e+00
  %6960 = fmul fast float %6959, %6904
  %6961 = fmul fast float %6960, %6956
  %6962 = fmul fast float %5091, 4.000000e+00
  %6963 = fmul fast float %6962, %6905
  %6964 = fmul fast float %6963, %6957
  %6965 = fmul fast float %5099, 4.000000e+00
  %6966 = fmul fast float %6965, %6906
  %6967 = fmul fast float %6966, %6958
  %6968 = fadd fast float %6961, %6948
  %6969 = fadd fast float %6964, %6949
  %6970 = fadd fast float %6967, %6950
  %6971 = call float @dx.op.unary.f32(i32 7, float %6968)  ; Saturate(value)
  %6972 = call float @dx.op.unary.f32(i32 7, float %6969)  ; Saturate(value)
  %6973 = call float @dx.op.unary.f32(i32 7, float %6970)  ; Saturate(value)
  br label %6974

; <label>:6974                                    ; preds = %6951, %6936
  %6975 = phi float [ %6971, %6951 ], [ %6948, %6936 ]
  %6976 = phi float [ %6972, %6951 ], [ %6949, %6936 ]
  %6977 = phi float [ %6973, %6951 ], [ %6950, %6936 ]
  %6978 = call float @dx.op.binary.f32(i32 35, float %6976, float %6977)  ; FMax(a,b)
  %6979 = call float @dx.op.binary.f32(i32 35, float %6975, float %6978)  ; FMax(a,b)
  %6980 = fsub fast float 1.000000e+00, %6979
  %6981 = fmul fast float %6937, %6895
  %6982 = fmul fast float %6938, %6895
  %6983 = fmul fast float %6939, %6895
  %6984 = fsub fast float 1.000000e+00, %6828
  %6985 = bitcast float %6984 to i32
  %6986 = sitofp i32 %6985 to float
  %6987 = fmul fast float %6986, 5.000000e+00
  %6988 = fadd fast float %6987, 0xC1EFBF8940000000
  %6989 = fptosi float %6988 to i32
  %6990 = bitcast i32 %6989 to float
  %6991 = fmul fast float %6990, %3894
  %6992 = fmul fast float %6980, %6991
  %6993 = fmul fast float %6992, %5276
  %6994 = fmul fast float %6992, %5277
  %6995 = fmul fast float %6992, %5278
  %6996 = fadd fast float %6993, %6981
  %6997 = fadd fast float %6994, %6982
  %6998 = fadd fast float %6995, %6983
  %6999 = fmul fast float %6816, %3890
  %7000 = fmul fast float %6999, %6834
  %7001 = fmul fast float %7000, %6980
  %7002 = fmul fast float %6817, %3890
  %7003 = fmul fast float %7002, %6834
  %7004 = fmul fast float %7003, %6980
  %7005 = fmul fast float %6818, %3890
  %7006 = fmul fast float %7005, %6834
  %7007 = fmul fast float %7006, %6980
  %7008 = fadd fast float %7001, %6495
  %7009 = fadd fast float %7004, %6496
  %7010 = fadd fast float %7007, %6497
  %7011 = fmul fast float %7000, %6996
  %7012 = fmul fast float %7003, %6997
  %7013 = fmul fast float %7006, %6998
  %7014 = fadd fast float %7011, %6492
  %7015 = fadd fast float %7012, %6493
  %7016 = fadd fast float %7013, %6494
  br label %6624

; <label>:7017                                    ; preds = %6624
  br label %7018

; <label>:7018                                    ; preds = %7017, %6458
  %7019 = phi float [ %6460, %6458 ], [ %6625, %7017 ]
  %7020 = phi float [ %6461, %6458 ], [ %6626, %7017 ]
  %7021 = phi float [ %6462, %6458 ], [ %6627, %7017 ]
  %7022 = phi float [ %6463, %6458 ], [ %6628, %7017 ]
  %7023 = phi float [ %6464, %6458 ], [ %6629, %7017 ]
  %7024 = phi float [ %6465, %6458 ], [ %6630, %7017 ]
  %7025 = add i32 %6459, 1
  %7026 = icmp ugt i32 %7025, %6455
  br i1 %7026, label %7027, label %6458

; <label>:7027                                    ; preds = %7018
  br label %7028

; <label>:7028                                    ; preds = %7027, %6408, %6398
  %7029 = phi float [ %6399, %6398 ], [ %6399, %6408 ], [ %7019, %7027 ]
  %7030 = phi float [ %6400, %6398 ], [ %6400, %6408 ], [ %7020, %7027 ]
  %7031 = phi float [ %6401, %6398 ], [ %6401, %6408 ], [ %7021, %7027 ]
  %7032 = phi float [ %6402, %6398 ], [ %6402, %6408 ], [ %7022, %7027 ]
  %7033 = phi float [ %6403, %6398 ], [ %6403, %6408 ], [ %7023, %7027 ]
  %7034 = phi float [ %6404, %6398 ], [ %6404, %6408 ], [ %7024, %7027 ]
  %7035 = fmul fast float %3890, %3890
  %7036 = fsub fast float 1.000000e+00, %7035
  %7037 = call float @dx.op.dot3.f32(i32 55, float %7036, float %7036, float %7036, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7038 = fsub fast float 1.000000e+00, %7037
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 0
  %7041 = fmul fast float %7040, %5282
  %7042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7043 = extractvalue %dx.types.CBufRet.f32 %7042, 3
  %7044 = fsub fast float 1.000000e+00, %3897
  %7045 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7046 = fadd fast float %7034, %3896
  %7047 = fmul fast float %7046, %3897
  %7048 = fmul fast float %7045, %7043
  %7049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7050 = extractvalue %dx.types.CBufRet.f32 %7049, 3
  %7051 = fmul fast float %7032, %5087
  %7052 = fmul fast float %7033, %5088
  %7053 = fmul fast float %7034, %5089
  %7054 = fcmp fast ogt float %95, %213
  %7055 = and i1 %7054, %4300
  %7056 = or i1 %4306, %7055
  %7057 = icmp eq i32 %4299, 2
  %7058 = fcmp fast ole float %95, %213
  %7059 = and i1 %7058, %7057
  %7060 = or i1 %7059, %7056
  br i1 %7055, label %7061, label %7318

; <label>:7061                                    ; preds = %7028
  %7062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7063 = extractvalue %dx.types.CBufRet.f32 %7062, 2
  %7064 = extractvalue %dx.types.CBufRet.f32 %7062, 3
  %7065 = fmul fast float %7063, %104
  %7066 = fmul fast float %7064, %105
  %7067 = call float @dx.op.unary.f32(i32 7, float %7065)  ; Saturate(value)
  %7068 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7069 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7067, float %7068, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7070 = extractvalue %dx.types.ResRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.ResRet.f32 %7069, 1
  %7072 = extractvalue %dx.types.ResRet.f32 %7069, 2
  %7073 = extractvalue %dx.types.ResRet.f32 %7069, 3
  %7074 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7067, float %7068, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7075 = extractvalue %dx.types.ResRet.f32 %7074, 0
  %7076 = extractvalue %dx.types.ResRet.f32 %7074, 1
  %7077 = extractvalue %dx.types.ResRet.f32 %7074, 2
  %7078 = extractvalue %dx.types.ResRet.f32 %7074, 3
  %7079 = call float @dx.op.binary.f32(i32 35, float %7071, float %7072)  ; FMax(a,b)
  %7080 = call float @dx.op.binary.f32(i32 35, float %7070, float %7079)  ; FMax(a,b)
  %7081 = call float @dx.op.binary.f32(i32 35, float %7080, float %7073)  ; FMax(a,b)
  %7082 = call float @dx.op.binary.f32(i32 36, float %7076, float %7077)  ; FMin(a,b)
  %7083 = call float @dx.op.binary.f32(i32 36, float %7075, float %7082)  ; FMin(a,b)
  %7084 = call float @dx.op.binary.f32(i32 36, float %7083, float %7078)  ; FMin(a,b)
  %7085 = fmul fast float %7081, 2.550000e+02
  %7086 = fadd fast float %7085, 0x3F70101020000000
  %7087 = fptoui float %7086 to i32
  %7088 = fmul fast float %7084, 2.550000e+02
  %7089 = fadd fast float %7088, 0x3F70101020000000
  %7090 = fptoui float %7089 to i32
  %7091 = icmp ult i32 %7087, %7090
  br i1 %7091, label %7092, label %7260

; <label>:7092                                    ; preds = %7061
  %7093 = fcmp fast ogt float %94, 9.843750e-01
  %7094 = fadd fast float %95, -4.000000e+00
  %7095 = select i1 %7093, float -4.000000e+00, float %7094
  %7096 = call float @dx.op.binary.f32(i32 35, float %7095, float 0.000000e+00)  ; FMax(a,b)
  %7097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7098 = extractvalue %dx.types.CBufRet.f32 %7097, 0
  %7099 = fadd fast float %7098, %7096
  %7100 = extractvalue %dx.types.CBufRet.f32 %7097, 2
  %7101 = fmul fast float %7099, %7100
  %7102 = call float @dx.op.unary.f32(i32 23, float %7101)  ; Log(value)
  %7103 = extractvalue %dx.types.CBufRet.f32 %7097, 3
  %7104 = fmul fast float %7103, %7102
  %7105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7106 = extractvalue %dx.types.CBufRet.f32 %7105, 2
  %7107 = fmul fast float %7104, %7106
  %7108 = call float @dx.op.unary.f32(i32 7, float %7107)  ; Saturate(value)
  %7109 = uitofp i32 %7087 to float
  %7110 = uitofp i32 %7090 to float
  %7111 = fadd fast float %7109, 5.000000e-01
  %7112 = fadd fast float %7110, 5.000000e-01
  %7113 = fmul fast float %7106, %7111
  %7114 = fmul fast float %7106, %7112
  %7115 = fadd fast float %7113, 0x3F0FFB4800000000
  %7116 = fadd fast float %7114, 0xBF0FFB4800000000
  %7117 = call float @dx.op.binary.f32(i32 35, float %7108, float %7115)  ; FMax(a,b)
  %7118 = call float @dx.op.binary.f32(i32 36, float %7117, float %7116)  ; FMin(a,b)
  %7119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.f32 %7119, 1
  %7121 = extractvalue %dx.types.CBufRet.f32 %7119, 2
  %7122 = extractvalue %dx.types.CBufRet.f32 %7119, 0
  %7123 = fmul fast float %7120, %7118
  %7124 = fadd fast float %7122, %7123
  %7125 = fadd fast float %7122, %7121
  %7126 = fsub fast float %7120, %7121
  %7127 = fadd fast float %7126, %7122
  %7128 = call float @dx.op.binary.f32(i32 35, float %7124, float %7125)  ; FMax(a,b)
  %7129 = call float @dx.op.binary.f32(i32 36, float %7128, float %7127)  ; FMin(a,b)
  %7130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7067, float %7068, float %7129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7131 = extractvalue %dx.types.ResRet.f32 %7130, 0
  %7132 = extractvalue %dx.types.ResRet.f32 %7130, 1
  %7133 = extractvalue %dx.types.ResRet.f32 %7130, 2
  %7134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7135 = extractvalue %dx.types.CBufRet.i32 %7134, 0
  %7136 = extractvalue %dx.types.CBufRet.i32 %7134, 1
  %7137 = uitofp i32 %7135 to float
  %7138 = uitofp i32 %7136 to float
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 0
  %7141 = extractvalue %dx.types.CBufRet.f32 %7139, 1
  %7142 = fmul fast float %7137, %7067
  %7143 = fmul fast float %7138, %7068
  %7144 = fadd fast float %7142, -5.000000e-01
  %7145 = fadd fast float %7143, -5.000000e-01
  %7146 = call float @dx.op.unary.f32(i32 22, float %7144)  ; Frc(value)
  %7147 = call float @dx.op.unary.f32(i32 22, float %7145)  ; Frc(value)
  %7148 = fmul fast float %7146, %7146
  %7149 = fmul fast float %7148, %7146
  %7150 = fsub fast float 3.000000e+00, %7146
  %7151 = fmul fast float %7148, %7150
  %7152 = fmul fast float %7146, 3.000000e+00
  %7153 = fmul fast float %7149, 3.000000e+00
  %7154 = fmul fast float %7148, 6.000000e+00
  %7155 = fsub fast float %7153, %7154
  %7156 = fadd fast float %7155, 4.000000e+00
  %7157 = fmul fast float %7156, 0x3FC5555560000000
  %7158 = fmul fast float %7149, -3.000000e+00
  %7159 = fadd fast float %7148, %7146
  %7160 = fmul fast float %7159, 3.000000e+00
  %7161 = fadd fast float %7158, 1.000000e+00
  %7162 = fadd fast float %7161, %7160
  %7163 = fmul fast float %7149, 0x3FC5555560000000
  %7164 = fmul fast float %7147, %7147
  %7165 = fmul fast float %7164, %7147
  %7166 = fsub fast float 3.000000e+00, %7147
  %7167 = fmul fast float %7164, %7166
  %7168 = fmul fast float %7147, 3.000000e+00
  %7169 = fmul fast float %7165, 3.000000e+00
  %7170 = fmul fast float %7164, 6.000000e+00
  %7171 = fsub fast float %7169, %7170
  %7172 = fadd fast float %7171, 4.000000e+00
  %7173 = fmul fast float %7172, 0x3FC5555560000000
  %7174 = fmul fast float %7165, -3.000000e+00
  %7175 = fadd fast float %7164, %7147
  %7176 = fmul fast float %7175, 3.000000e+00
  %7177 = fadd fast float %7174, 1.000000e+00
  %7178 = fadd fast float %7177, %7176
  %7179 = fmul fast float %7165, 0x3FC5555560000000
  %7180 = fadd fast float %7146, 1.000000e+00
  %7181 = fsub fast float 1.000000e+00, %7152
  %7182 = fadd fast float %7181, %7151
  %7183 = fadd fast float %7182, %7156
  %7184 = fmul fast float %7183, 0x3FC5555560000000
  %7185 = fdiv fast float %7157, %7184
  %7186 = fsub fast float %7180, %7185
  %7187 = fsub fast float 1.000000e+00, %7146
  %7188 = fadd fast float %7162, %7149
  %7189 = fmul fast float %7188, 0x3FC5555560000000
  %7190 = fdiv fast float %7163, %7189
  %7191 = fadd fast float %7187, %7190
  %7192 = fadd fast float %7147, 1.000000e+00
  %7193 = fsub fast float 1.000000e+00, %7168
  %7194 = fadd fast float %7193, %7167
  %7195 = fadd fast float %7194, %7172
  %7196 = fmul fast float %7195, 0x3FC5555560000000
  %7197 = fdiv fast float %7173, %7196
  %7198 = fsub fast float %7192, %7197
  %7199 = fsub fast float 1.000000e+00, %7147
  %7200 = fadd fast float %7178, %7165
  %7201 = fmul fast float %7200, 0x3FC5555560000000
  %7202 = fdiv fast float %7179, %7201
  %7203 = fadd fast float %7202, %7199
  %7204 = fmul fast float %7186, %7140
  %7205 = fsub fast float %7067, %7204
  %7206 = fmul fast float %7191, %7140
  %7207 = fadd fast float %7206, %7067
  %7208 = fmul fast float %7203, %7141
  %7209 = fadd fast float %7208, %7068
  %7210 = fmul fast float %7198, %7141
  %7211 = fsub fast float %7068, %7210
  %7212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7205, float %7211, float %7129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7213 = extractvalue %dx.types.ResRet.f32 %7212, 0
  %7214 = extractvalue %dx.types.ResRet.f32 %7212, 1
  %7215 = extractvalue %dx.types.ResRet.f32 %7212, 2
  %7216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7207, float %7211, float %7129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7217 = extractvalue %dx.types.ResRet.f32 %7216, 0
  %7218 = extractvalue %dx.types.ResRet.f32 %7216, 1
  %7219 = extractvalue %dx.types.ResRet.f32 %7216, 2
  %7220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7205, float %7209, float %7129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7221 = extractvalue %dx.types.ResRet.f32 %7220, 0
  %7222 = extractvalue %dx.types.ResRet.f32 %7220, 1
  %7223 = extractvalue %dx.types.ResRet.f32 %7220, 2
  %7224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7207, float %7209, float %7129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7225 = extractvalue %dx.types.ResRet.f32 %7224, 0
  %7226 = extractvalue %dx.types.ResRet.f32 %7224, 1
  %7227 = extractvalue %dx.types.ResRet.f32 %7224, 2
  %7228 = fsub fast float %7221, %7213
  %7229 = fsub fast float %7222, %7214
  %7230 = fsub fast float %7223, %7215
  %7231 = fmul fast float %7228, %7201
  %7232 = fmul fast float %7229, %7201
  %7233 = fmul fast float %7230, %7201
  %7234 = fadd fast float %7231, %7213
  %7235 = fadd fast float %7232, %7214
  %7236 = fadd fast float %7233, %7215
  %7237 = fsub fast float %7225, %7217
  %7238 = fsub fast float %7226, %7218
  %7239 = fsub fast float %7227, %7219
  %7240 = fmul fast float %7237, %7201
  %7241 = fmul fast float %7238, %7201
  %7242 = fmul fast float %7239, %7201
  %7243 = fsub fast float %7217, %7234
  %7244 = fadd fast float %7243, %7240
  %7245 = fsub fast float %7218, %7235
  %7246 = fadd fast float %7245, %7241
  %7247 = fsub fast float %7219, %7236
  %7248 = fadd fast float %7247, %7242
  %7249 = fmul fast float %7244, %7189
  %7250 = fmul fast float %7246, %7189
  %7251 = fmul fast float %7248, %7189
  %7252 = fadd fast float %7249, %7234
  %7253 = fadd fast float %7250, %7235
  %7254 = fadd fast float %7251, %7236
  %7255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7256 = extractvalue %dx.types.CBufRet.f32 %7255, 1
  %7257 = fmul fast float %7252, %7256
  %7258 = fmul fast float %7253, %7256
  %7259 = fmul fast float %7254, %7256
  br label %7260

; <label>:7260                                    ; preds = %7092, %7061
  %7261 = phi float [ %7131, %7092 ], [ 1.000000e+00, %7061 ]
  %7262 = phi float [ %7132, %7092 ], [ 1.000000e+00, %7061 ]
  %7263 = phi float [ %7133, %7092 ], [ 1.000000e+00, %7061 ]
  %7264 = phi float [ %7257, %7092 ], [ 0.000000e+00, %7061 ]
  %7265 = phi float [ %7258, %7092 ], [ 0.000000e+00, %7061 ]
  %7266 = phi float [ %7259, %7092 ], [ 0.000000e+00, %7061 ]
  %7267 = fmul fast float %7264, %7038
  %7268 = fmul fast float %7265, %7038
  %7269 = fmul fast float %7266, %7038
  %7270 = call float @dx.op.dot3.f32(i32 55, float %7261, float %7262, float %7263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7271 = call float @dx.op.dot3.f32(i32 55, float %7267, float %7268, float %7269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7272 = select i1 %250, float %7270, float %7261
  %7273 = select i1 %250, float %7270, float %7262
  %7274 = select i1 %250, float 1.000000e+00, float %7263
  %7275 = select i1 %250, float %7271, float %7267
  %7276 = select i1 %250, float 0.000000e+00, float %7268
  %7277 = select i1 %250, float 0.000000e+00, float %7269
  %7278 = fmul fast float %7272, %7051
  %7279 = fmul fast float %7273, %7052
  %7280 = fmul fast float %7274, %7053
  %7281 = fadd fast float %7278, %7275
  %7282 = fadd fast float %7279, %7276
  %7283 = fadd fast float %7277, %7280
  %7284 = fmul fast float %7272, %7029
  %7285 = fmul fast float %7273, %7030
  %7286 = fmul fast float %7274, %7031
  %7287 = fmul fast float %140, %7063
  %7288 = fmul fast float %142, %7064
  %7289 = fsub fast float 1.000000e+00, %7287
  %7290 = fsub fast float 1.000000e+00, %7288
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7293 = extractvalue %dx.types.CBufRet.f32 %7291, 1
  %7294 = extractvalue %dx.types.CBufRet.f32 %7291, 2
  %7295 = fmul fast float %7289, %7292
  %7296 = fmul fast float %7289, %7293
  %7297 = fmul fast float %7289, %7294
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 0
  %7300 = extractvalue %dx.types.CBufRet.f32 %7298, 1
  %7301 = extractvalue %dx.types.CBufRet.f32 %7298, 2
  %7302 = fmul fast float %7290, %7299
  %7303 = fmul fast float %7290, %7300
  %7304 = fmul fast float %7290, %7301
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.CBufRet.f32 %7305, 1
  %7308 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %7309 = fadd fast float %7302, %7306
  %7310 = fadd fast float %7309, %7295
  %7311 = fadd fast float %7303, %7307
  %7312 = fadd fast float %7311, %7296
  %7313 = fadd fast float %7304, %7308
  %7314 = fadd fast float %7313, %7297
  %7315 = fmul fast float %7310, %213
  %7316 = fmul fast float %7312, %213
  %7317 = fmul fast float %7314, %213
  br label %7318

; <label>:7318                                    ; preds = %7260, %7028
  %7319 = phi float [ %7315, %7260 ], [ %191, %7028 ]
  %7320 = phi float [ %7316, %7260 ], [ %192, %7028 ]
  %7321 = phi float [ %7317, %7260 ], [ %193, %7028 ]
  %7322 = phi float [ %213, %7260 ], [ %95, %7028 ]
  %7323 = phi float [ %7281, %7260 ], [ %7051, %7028 ]
  %7324 = phi float [ %7282, %7260 ], [ %7052, %7028 ]
  %7325 = phi float [ %7283, %7260 ], [ %7053, %7028 ]
  %7326 = phi float [ %7284, %7260 ], [ %7029, %7028 ]
  %7327 = phi float [ %7285, %7260 ], [ %7030, %7028 ]
  %7328 = phi float [ %7286, %7260 ], [ %7031, %7028 ]
  %7329 = phi float [ %7261, %7260 ], [ 1.000000e+00, %7028 ]
  br i1 %7060, label %8484, label %7330

; <label>:7330                                    ; preds = %7318
  %7331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7332 = extractvalue %dx.types.CBufRet.f32 %7331, 0
  %7333 = extractvalue %dx.types.CBufRet.f32 %7331, 1
  %7334 = extractvalue %dx.types.CBufRet.f32 %7331, 2
  %7335 = extractvalue %dx.types.CBufRet.f32 %7331, 3
  %7336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7337 = extractvalue %dx.types.CBufRet.f32 %7336, 0
  %7338 = extractvalue %dx.types.CBufRet.f32 %7336, 1
  %7339 = extractvalue %dx.types.CBufRet.f32 %7336, 2
  %7340 = extractvalue %dx.types.CBufRet.f32 %7336, 3
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 0
  %7343 = extractvalue %dx.types.CBufRet.f32 %7341, 1
  %7344 = extractvalue %dx.types.CBufRet.f32 %7341, 2
  %7345 = extractvalue %dx.types.CBufRet.f32 %7341, 3
  %7346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.f32 %7346, 0
  %7348 = extractvalue %dx.types.CBufRet.f32 %7346, 1
  %7349 = extractvalue %dx.types.CBufRet.f32 %7346, 2
  %7350 = extractvalue %dx.types.CBufRet.f32 %7346, 3
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 3
  %7353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7354 = extractvalue %dx.types.CBufRet.f32 %7353, 3
  %7355 = extractvalue %dx.types.CBufRet.f32 %7353, 0
  %7356 = extractvalue %dx.types.CBufRet.f32 %7353, 1
  %7357 = extractvalue %dx.types.CBufRet.f32 %7353, 2
  %7358 = fcmp fast olt float %7357, -5.000000e-01
  %7359 = call float @dx.op.dot3.f32(i32 55, float %7319, float %7320, float %7321, float %7319, float %7320, float %7321)  ; Dot3(ax,ay,az,bx,by,bz)
  %7360 = call float @dx.op.unary.f32(i32 25, float %7359)  ; Rsqrt(value)
  %7361 = fmul fast float %7360, %7359
  %7362 = fmul fast float %7360, %7319
  %7363 = fmul fast float %7360, %7320
  %7364 = fmul fast float %7360, %7321
  %7365 = fadd fast float %7361, %7335
  %7366 = call float @dx.op.dot3.f32(i32 55, float %7362, float %7363, float %7364, float %7332, float %7333, float %7334)  ; Dot3(ax,ay,az,bx,by,bz)
  %7367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.i32 %7367, 1
  %7369 = and i32 %7368, 1
  %7370 = icmp ne i32 %7369, 0
  %7371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7372 = extractvalue %dx.types.CBufRet.f32 %7371, 2
  %7373 = fcmp fast ogt float %7372, 0.000000e+00
  %7374 = and i1 %7370, %7373
  br i1 %7374, label %7375, label %7781, !dx.controlflow.hints !123

; <label>:7375                                    ; preds = %7330
  %7376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.f32 %7376, 3
  %7378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7379 = extractvalue %dx.types.CBufRet.f32 %7378, 2
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 2
  %7382 = fsub fast float %7379, %7381
  %7383 = and i32 %7368, 2
  %7384 = extractvalue %dx.types.CBufRet.i32 %7367, 0
  %7385 = call i32 @dx.op.binary.i32(i32 40, i32 %7384, i32 3)  ; UMin(a,b)
  %7386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7387 = extractvalue %dx.types.CBufRet.f32 %7386, 0
  %7388 = extractvalue %dx.types.CBufRet.f32 %7386, 1
  %7389 = extractvalue %dx.types.CBufRet.f32 %7380, 0
  %7390 = extractvalue %dx.types.CBufRet.f32 %7380, 1
  %7391 = fsub fast float %7387, %7389
  %7392 = fsub fast float %7388, %7390
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7395 = fcmp fast ogt float %7394, 0.000000e+00
  %7396 = fsub fast float -0.000000e+00, %7391
  %7397 = fsub fast float -0.000000e+00, %7392
  %7398 = call float @dx.op.dot2.f32(i32 54, float %7362, float %7363, float %7362, float %7363)  ; Dot2(ax,ay,bx,by)
  %7399 = call float @dx.op.dot2.f32(i32 54, float %7362, float %7363, float %7396, float %7397)  ; Dot2(ax,ay,bx,by)
  %7400 = fmul fast float %7399, 2.000000e+00
  %7401 = call float @dx.op.dot2.f32(i32 54, float %7396, float %7397, float %7396, float %7397)  ; Dot2(ax,ay,bx,by)
  %7402 = fmul fast float %7394, %7394
  %7403 = fsub fast float %7401, %7402
  %7404 = fmul fast float %7400, %7400
  %7405 = fmul fast float %7398, 4.000000e+00
  %7406 = fmul fast float %7405, %7403
  %7407 = fsub fast float %7404, %7406
  %7408 = fcmp fast ogt float %7407, 0.000000e+00
  br i1 %7408, label %7409, label %7424

; <label>:7409                                    ; preds = %7375
  %7410 = fcmp fast ogt float %7400, 0.000000e+00
  %7411 = call float @dx.op.unary.f32(i32 24, float %7407)  ; Sqrt(value)
  %7412 = fsub fast float -0.000000e+00, %7411
  %7413 = select i1 %7410, float %7411, float %7412
  %7414 = fadd fast float %7413, %7400
  %7415 = fmul float %7414, -5.000000e-01
  %7416 = fdiv fast float %7415, %7398
  %7417 = call float @dx.op.binary.f32(i32 35, float %7416, float 0.000000e+00)  ; FMax(a,b)
  %7418 = call float @dx.op.binary.f32(i32 36, float %7361, float %7417)  ; FMin(a,b)
  %7419 = fdiv fast float %7403, %7415
  %7420 = call float @dx.op.binary.f32(i32 35, float %7419, float 0.000000e+00)  ; FMax(a,b)
  %7421 = call float @dx.op.binary.f32(i32 36, float %7361, float %7420)  ; FMin(a,b)
  %7422 = call float @dx.op.binary.f32(i32 36, float %7418, float %7421)  ; FMin(a,b)
  %7423 = call float @dx.op.binary.f32(i32 35, float %7418, float %7421)  ; FMax(a,b)
  br label %7424

; <label>:7424                                    ; preds = %7409, %7375
  %7425 = phi float [ %7423, %7409 ], [ -1.000000e+00, %7375 ]
  %7426 = phi float [ %7422, %7409 ], [ -1.000000e+00, %7375 ]
  %7427 = phi i1 [ true, %7409 ], [ false, %7375 ]
  %7428 = and i1 %7395, %7427
  br i1 %7428, label %7429, label %7431

; <label>:7429                                    ; preds = %7424
  %7430 = fcmp fast oeq float %7426, %7425
  br i1 %7430, label %7734, label %7432

; <label>:7431                                    ; preds = %7424
  br i1 %7395, label %7734, label %7432

; <label>:7432                                    ; preds = %7431, %7429
  %7433 = phi float [ %7361, %7431 ], [ %7425, %7429 ]
  %7434 = phi float [ 0.000000e+00, %7431 ], [ %7426, %7429 ]
  %7435 = icmp ne i32 %7383, 0
  %7436 = fmul fast float %7433, %7364
  %7437 = fadd fast float %7436, %7377
  %7438 = fmul fast float %7437, %7433
  %7439 = select i1 %7435, float 0.000000e+00, float %7438
  %7440 = fcmp fast oeq float %7364, 0.000000e+00
  %7441 = fdiv fast float %7382, %7364
  %7442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7441)  ; FMax(a,b)
  %7443 = select i1 %7440, float %7433, float %7442
  %7444 = call float @dx.op.binary.f32(i32 36, float %7433, float %7443)  ; FMin(a,b)
  %7445 = fcmp fast ogt float %7364, 0.000000e+00
  %7446 = fcmp fast olt float %7382, 0.000000e+00
  br i1 %7445, label %7447, label %7504

; <label>:7447                                    ; preds = %7432
  %7448 = icmp eq i32 %7383, 0
  br i1 %7446, label %7449, label %7493

; <label>:7449                                    ; preds = %7447
  %7450 = select i1 %7448, float %7433, float 0.000000e+00
  %7451 = fsub fast float -0.000000e+00, %7450
  %7452 = call float @dx.op.unary.f32(i32 6, float %7451)  ; FAbs(value)
  %7453 = fmul fast float %7450, %7364
  %7454 = fadd fast float %7453, %7377
  %7455 = fmul fast float %7452, %7454
  %7456 = fsub fast float %7439, %7455
  %7457 = fsub fast float %7433, %7452
  %7458 = select i1 %7448, float %7457, float 0.000000e+00
  %7459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7460 = extractvalue %dx.types.CBufRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.CBufRet.f32 %7459, 1
  %7462 = extractvalue %dx.types.CBufRet.f32 %7459, 2
  %7463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7464 = extractvalue %dx.types.CBufRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.CBufRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.CBufRet.f32 %7463, 2
  %7467 = extractvalue %dx.types.CBufRet.f32 %7463, 3
  %7468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7469 = extractvalue %dx.types.CBufRet.f32 %7468, 3
  %7470 = call float @dx.op.binary.f32(i32 36, float %7456, float %7469)  ; FMin(a,b)
  %7471 = fmul fast float %7467, %7458
  %7472 = call float @dx.op.unary.f32(i32 7, float %7471)  ; Saturate(value)
  %7473 = fsub fast float %7464, %7460
  %7474 = fsub fast float %7465, %7461
  %7475 = fsub fast float %7466, %7462
  %7476 = fmul fast float %7472, %7473
  %7477 = fmul fast float %7472, %7474
  %7478 = fmul fast float %7472, %7475
  %7479 = fadd fast float %7476, %7460
  %7480 = fadd fast float %7477, %7461
  %7481 = fadd fast float %7478, %7462
  %7482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7483 = extractvalue %dx.types.CBufRet.f32 %7482, 0
  %7484 = extractvalue %dx.types.CBufRet.f32 %7482, 1
  %7485 = fadd fast float %7484, %7483
  %7486 = call float @dx.op.unary.f32(i32 7, float %7485)  ; Saturate(value)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7482, 2
  %7488 = extractvalue %dx.types.CBufRet.f32 %7482, 3
  %7489 = fadd fast float %7488, %7487
  %7490 = call float @dx.op.unary.f32(i32 7, float %7489)  ; Saturate(value)
  %7491 = fmul fast float %7486, %7470
  %7492 = fmul fast float %7491, %7490
  br label %7734

; <label>:7493                                    ; preds = %7447
  br i1 %7448, label %7494, label %7515

; <label>:7494                                    ; preds = %7493
  %7495 = call float @dx.op.binary.f32(i32 36, float %7444, float %7434)  ; FMin(a,b)
  %7496 = fsub fast float %7444, %7495
  %7497 = fsub fast float %7496, %7433
  %7498 = call float @dx.op.unary.f32(i32 6, float %7497)  ; FAbs(value)
  %7499 = fadd fast float %7496, %7433
  %7500 = fmul fast float %7499, %7364
  %7501 = fadd fast float %7500, %7377
  %7502 = fmul fast float %7501, %7498
  %7503 = fsub fast float %7439, %7502
  br label %7515

; <label>:7504                                    ; preds = %7432
  br i1 %7446, label %7505, label %7515

; <label>:7505                                    ; preds = %7504
  %7506 = call float @dx.op.binary.f32(i32 35, float %7434, float %7444)  ; FMax(a,b)
  %7507 = icmp eq i32 %7383, 0
  %7508 = select i1 %7507, float %7444, float 0.000000e+00
  %7509 = fsub fast float -0.000000e+00, %7508
  %7510 = call float @dx.op.unary.f32(i32 6, float %7509)  ; FAbs(value)
  %7511 = fmul fast float %7508, %7364
  %7512 = fadd fast float %7511, %7377
  %7513 = fmul fast float %7510, %7512
  %7514 = fsub fast float %7439, %7513
  br label %7515

; <label>:7515                                    ; preds = %7505, %7504, %7494, %7493
  %7516 = phi float [ %7434, %7493 ], [ %7434, %7494 ], [ %7506, %7505 ], [ %7434, %7504 ]
  %7517 = phi float [ 0.000000e+00, %7493 ], [ %7498, %7494 ], [ %7510, %7505 ], [ 0.000000e+00, %7504 ]
  %7518 = phi float [ %7439, %7493 ], [ %7503, %7494 ], [ %7514, %7505 ], [ %7439, %7504 ]
  %7519 = phi float [ %7444, %7493 ], [ %7444, %7494 ], [ %7433, %7505 ], [ %7433, %7504 ]
  %7520 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 0
  store float -1.000000e+00, float* %7520, align 4, !tbaa !124, !noalias !126
  %7521 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 1
  store float -1.000000e+00, float* %7521, align 4, !tbaa !124, !noalias !126
  %7522 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 2
  store float -1.000000e+00, float* %7522, align 4, !tbaa !124, !noalias !126
  %7523 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 0
  store float -1.000000e+00, float* %7523, align 4, !tbaa !124, !noalias !126
  %7524 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 1
  store float -1.000000e+00, float* %7524, align 4, !tbaa !124, !noalias !126
  %7525 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 2
  store float -1.000000e+00, float* %7525, align 4, !tbaa !124, !noalias !126
  %7526 = icmp sgt i32 %7385, 0
  br i1 %7526, label %7527, label %7588

; <label>:7527                                    ; preds = %7515
  br label %7528

; <label>:7528                                    ; preds = %7577, %7527
  %7529 = phi i32 [ %7578, %7577 ], [ 0, %7527 ]
  %7530 = phi i32 [ %7579, %7577 ], [ 0, %7527 ]
  %7531 = add nuw i32 %7530, 171
  %7532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %7531)  ; CBufferLoadLegacy(handle,regIndex)
  %7533 = extractvalue %dx.types.CBufRet.f32 %7532, 0
  %7534 = extractvalue %dx.types.CBufRet.f32 %7532, 1
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 0
  %7537 = extractvalue %dx.types.CBufRet.f32 %7535, 1
  %7538 = fsub fast float %7533, %7536
  %7539 = fsub fast float %7534, %7537
  %7540 = extractvalue %dx.types.CBufRet.f32 %7532, 2
  %7541 = fsub fast float -0.000000e+00, %7538
  %7542 = fsub fast float -0.000000e+00, %7539
  %7543 = call float @dx.op.dot2.f32(i32 54, float %7362, float %7363, float %7541, float %7542)  ; Dot2(ax,ay,bx,by)
  %7544 = fmul fast float %7543, 2.000000e+00
  %7545 = call float @dx.op.dot2.f32(i32 54, float %7541, float %7542, float %7541, float %7542)  ; Dot2(ax,ay,bx,by)
  %7546 = fmul fast float %7540, %7540
  %7547 = fsub fast float %7545, %7546
  %7548 = fmul fast float %7544, %7544
  %7549 = fmul fast float %7405, %7547
  %7550 = fsub fast float %7548, %7549
  %7551 = fcmp fast ogt float %7550, 0.000000e+00
  br i1 %7551, label %7552, label %7567

; <label>:7552                                    ; preds = %7528
  %7553 = fcmp fast ogt float %7544, 0.000000e+00
  %7554 = call float @dx.op.unary.f32(i32 24, float %7550)  ; Sqrt(value)
  %7555 = fsub fast float -0.000000e+00, %7554
  %7556 = select i1 %7553, float %7554, float %7555
  %7557 = fadd fast float %7556, %7544
  %7558 = fmul float %7557, -5.000000e-01
  %7559 = fdiv fast float %7558, %7398
  %7560 = call float @dx.op.binary.f32(i32 35, float %7559, float 0.000000e+00)  ; FMax(a,b)
  %7561 = call float @dx.op.binary.f32(i32 36, float %7433, float %7560)  ; FMin(a,b)
  %7562 = fdiv fast float %7547, %7558
  %7563 = call float @dx.op.binary.f32(i32 35, float %7562, float 0.000000e+00)  ; FMax(a,b)
  %7564 = call float @dx.op.binary.f32(i32 36, float %7433, float %7563)  ; FMin(a,b)
  %7565 = call float @dx.op.binary.f32(i32 36, float %7561, float %7564)  ; FMin(a,b)
  %7566 = call float @dx.op.binary.f32(i32 35, float %7561, float %7564)  ; FMax(a,b)
  br label %7567

; <label>:7567                                    ; preds = %7552, %7528
  %7568 = phi float [ %7566, %7552 ], [ -1.000000e+00, %7528 ]
  %7569 = phi float [ %7565, %7552 ], [ -1.000000e+00, %7528 ]
  %7570 = phi i1 [ true, %7552 ], [ false, %7528 ]
  br i1 %7570, label %7571, label %7577

; <label>:7571                                    ; preds = %7567
  %7572 = call float @dx.op.binary.f32(i32 35, float %7516, float %7569)  ; FMax(a,b)
  %7573 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7530
  store float %7572, float* %7573, align 4, !tbaa !124, !noalias !126
  %7574 = call float @dx.op.binary.f32(i32 35, float %7516, float %7568)  ; FMax(a,b)
  %7575 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7530
  store float %7574, float* %7575, align 4, !tbaa !124, !noalias !126
  %7576 = add nsw i32 %7529, 1
  br label %7577

; <label>:7577                                    ; preds = %7571, %7567
  %7578 = phi i32 [ %7576, %7571 ], [ %7529, %7567 ]
  %7579 = add nuw nsw i32 %7530, 1
  %7580 = icmp eq i32 %7579, %7385
  br i1 %7580, label %7581, label %7528

; <label>:7581                                    ; preds = %7577
  %7582 = load float, float* %7522, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7583 = load float, float* %7521, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  %7584 = load float, float* %7520, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  %7585 = load float, float* %7525, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7586 = load float, float* %7524, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  %7587 = load float, float* %7523, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  br label %7588

; <label>:7588                                    ; preds = %7581, %7515
  %7589 = phi float [ -1.000000e+00, %7515 ], [ %7587, %7581 ]
  %7590 = phi float [ -1.000000e+00, %7515 ], [ %7586, %7581 ]
  %7591 = phi float [ -1.000000e+00, %7515 ], [ %7585, %7581 ]
  %7592 = phi float [ -1.000000e+00, %7515 ], [ %7584, %7581 ]
  %7593 = phi float [ -1.000000e+00, %7515 ], [ %7583, %7581 ]
  %7594 = phi float [ -1.000000e+00, %7515 ], [ %7582, %7581 ]
  %7595 = phi i32 [ 0, %7515 ], [ %7578, %7581 ]
  %7596 = call float @dx.op.binary.f32(i32 36, float %7593, float %7594)  ; FMin(a,b)
  %7597 = call float @dx.op.binary.f32(i32 36, float %7592, float %7596)  ; FMin(a,b)
  %7598 = call float @dx.op.binary.f32(i32 35, float %7592, float %7593)  ; FMax(a,b)
  %7599 = call float @dx.op.binary.f32(i32 36, float %7598, float %7594)  ; FMin(a,b)
  %7600 = call float @dx.op.binary.f32(i32 36, float %7592, float %7593)  ; FMin(a,b)
  %7601 = call float @dx.op.binary.f32(i32 35, float %7600, float %7599)  ; FMax(a,b)
  %7602 = call float @dx.op.binary.f32(i32 35, float %7593, float %7594)  ; FMax(a,b)
  %7603 = call float @dx.op.binary.f32(i32 35, float %7592, float %7602)  ; FMax(a,b)
  store float %7597, float* %7520, align 4, !tbaa !124, !alias.scope !150, !noalias !151
  store float %7601, float* %7521, align 4, !tbaa !124, !alias.scope !148, !noalias !149
  store float %7603, float* %7522, align 4, !tbaa !124, !alias.scope !142, !noalias !145
  %7604 = call float @dx.op.binary.f32(i32 36, float %7590, float %7591)  ; FMin(a,b)
  %7605 = call float @dx.op.binary.f32(i32 36, float %7589, float %7604)  ; FMin(a,b)
  %7606 = call float @dx.op.binary.f32(i32 35, float %7589, float %7590)  ; FMax(a,b)
  %7607 = call float @dx.op.binary.f32(i32 36, float %7606, float %7591)  ; FMin(a,b)
  %7608 = call float @dx.op.binary.f32(i32 36, float %7589, float %7590)  ; FMin(a,b)
  %7609 = call float @dx.op.binary.f32(i32 35, float %7608, float %7607)  ; FMax(a,b)
  %7610 = call float @dx.op.binary.f32(i32 35, float %7590, float %7591)  ; FMax(a,b)
  %7611 = call float @dx.op.binary.f32(i32 35, float %7589, float %7610)  ; FMax(a,b)
  store float %7605, float* %7523, align 4, !tbaa !124, !alias.scope !160, !noalias !161
  store float %7609, float* %7524, align 4, !tbaa !124, !alias.scope !158, !noalias !159
  store float %7611, float* %7525, align 4, !tbaa !124, !alias.scope !152, !noalias !155
  %7612 = sub nsw i32 3, %7595
  %7613 = icmp sgt i32 %7612, 2
  br i1 %7613, label %7614, label %7652

; <label>:7614                                    ; preds = %7588
  %7615 = icmp eq i32 %7383, 0
  %7616 = fsub fast float %7433, %7517
  %7617 = select i1 %7615, float %7616, float %7517
  %7618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7619 = extractvalue %dx.types.CBufRet.f32 %7618, 0
  %7620 = extractvalue %dx.types.CBufRet.f32 %7618, 1
  %7621 = extractvalue %dx.types.CBufRet.f32 %7618, 2
  %7622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.f32 %7622, 0
  %7624 = extractvalue %dx.types.CBufRet.f32 %7622, 1
  %7625 = extractvalue %dx.types.CBufRet.f32 %7622, 2
  %7626 = extractvalue %dx.types.CBufRet.f32 %7622, 3
  %7627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7628 = extractvalue %dx.types.CBufRet.f32 %7627, 3
  %7629 = call float @dx.op.binary.f32(i32 36, float %7518, float %7628)  ; FMin(a,b)
  %7630 = fmul fast float %7626, %7617
  %7631 = call float @dx.op.unary.f32(i32 7, float %7630)  ; Saturate(value)
  %7632 = fsub fast float %7623, %7619
  %7633 = fsub fast float %7624, %7620
  %7634 = fsub fast float %7625, %7621
  %7635 = fmul fast float %7631, %7632
  %7636 = fmul fast float %7631, %7633
  %7637 = fmul fast float %7631, %7634
  %7638 = fadd fast float %7635, %7619
  %7639 = fadd fast float %7636, %7620
  %7640 = fadd fast float %7637, %7621
  %7641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7641, 0
  %7643 = extractvalue %dx.types.CBufRet.f32 %7641, 1
  %7644 = fadd fast float %7643, %7642
  %7645 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7646 = extractvalue %dx.types.CBufRet.f32 %7641, 2
  %7647 = extractvalue %dx.types.CBufRet.f32 %7641, 3
  %7648 = fadd fast float %7647, %7646
  %7649 = call float @dx.op.unary.f32(i32 7, float %7648)  ; Saturate(value)
  %7650 = fmul fast float %7645, %7629
  %7651 = fmul fast float %7650, %7649
  br label %7734

; <label>:7652                                    ; preds = %7588
  %7653 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7612
  %7654 = load float, float* %7653, align 4, !tbaa !124, !noalias !126
  %7655 = fcmp fast olt float %7654, %7519
  %7656 = icmp sgt i32 %7595, 0
  %7657 = and i1 %7656, %7655
  br i1 %7657, label %7658, label %7695

; <label>:7658                                    ; preds = %7652
  br label %7659

; <label>:7659                                    ; preds = %7688, %7658
  %7660 = phi float [ %7689, %7688 ], [ %7517, %7658 ]
  %7661 = phi float [ %7690, %7688 ], [ %7518, %7658 ]
  %7662 = phi float [ %7670, %7688 ], [ %7654, %7658 ]
  %7663 = phi i32 [ %7667, %7688 ], [ %7612, %7658 ]
  %7664 = getelementptr inbounds [3 x float], [3 x float]* %99, i32 0, i32 %7663
  %7665 = load float, float* %7664, align 4, !tbaa !124, !noalias !126
  %7666 = icmp slt i32 %7663, 2
  %7667 = add nsw i32 %7663, 1
  %7668 = getelementptr inbounds [3 x float], [3 x float]* %98, i32 0, i32 %7667
  %7669 = load float, float* %7668, align 4, !tbaa !124, !noalias !126
  %7670 = select i1 %7666, float %7669, float %7433
  %7671 = call float @dx.op.binary.f32(i32 36, float %7670, float %7665)  ; FMin(a,b)
  %7672 = call float @dx.op.binary.f32(i32 36, float %7519, float %7671)  ; FMin(a,b)
  %7673 = icmp eq i32 %7383, 0
  %7674 = fadd fast float %7672, %7662
  %7675 = fmul fast float %7674, %7364
  %7676 = fadd fast float %7675, %7377
  br i1 %7673, label %7682, label %7677

; <label>:7677                                    ; preds = %7659
  %7678 = fsub fast float %7672, %7662
  %7679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7678)  ; FMax(a,b)
  %7680 = fmul fast float %7679, %7676
  %7681 = fadd fast float %7680, %7661
  br label %7688

; <label>:7682                                    ; preds = %7659
  %7683 = fsub fast float %7662, %7672
  %7684 = call float @dx.op.unary.f32(i32 6, float %7683)  ; FAbs(value)
  %7685 = fadd fast float %7684, %7660
  %7686 = fmul fast float %7684, %7676
  %7687 = fsub fast float %7661, %7686
  br label %7688

; <label>:7688                                    ; preds = %7682, %7677
  %7689 = phi float [ %7679, %7677 ], [ %7685, %7682 ]
  %7690 = phi float [ %7681, %7677 ], [ %7687, %7682 ]
  %7691 = fcmp fast olt float %7670, %7519
  %7692 = icmp slt i32 %7667, 3
  %7693 = and i1 %7692, %7691
  br i1 %7693, label %7659, label %7694

; <label>:7694                                    ; preds = %7688
  br label %7695

; <label>:7695                                    ; preds = %7694, %7652
  %7696 = phi float [ %7517, %7652 ], [ %7689, %7694 ]
  %7697 = phi float [ %7518, %7652 ], [ %7690, %7694 ]
  %7698 = fsub fast float %7433, %7696
  %7699 = select i1 %7435, float %7696, float %7698
  %7700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7700, 0
  %7702 = extractvalue %dx.types.CBufRet.f32 %7700, 1
  %7703 = extractvalue %dx.types.CBufRet.f32 %7700, 2
  %7704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7705 = extractvalue %dx.types.CBufRet.f32 %7704, 0
  %7706 = extractvalue %dx.types.CBufRet.f32 %7704, 1
  %7707 = extractvalue %dx.types.CBufRet.f32 %7704, 2
  %7708 = extractvalue %dx.types.CBufRet.f32 %7704, 3
  %7709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7710 = extractvalue %dx.types.CBufRet.f32 %7709, 3
  %7711 = call float @dx.op.binary.f32(i32 36, float %7697, float %7710)  ; FMin(a,b)
  %7712 = fmul fast float %7708, %7699
  %7713 = call float @dx.op.unary.f32(i32 7, float %7712)  ; Saturate(value)
  %7714 = fsub fast float %7705, %7701
  %7715 = fsub fast float %7706, %7702
  %7716 = fsub fast float %7707, %7703
  %7717 = fmul fast float %7713, %7714
  %7718 = fmul fast float %7713, %7715
  %7719 = fmul fast float %7713, %7716
  %7720 = fadd fast float %7717, %7701
  %7721 = fadd fast float %7718, %7702
  %7722 = fadd fast float %7719, %7703
  %7723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7724 = extractvalue %dx.types.CBufRet.f32 %7723, 0
  %7725 = extractvalue %dx.types.CBufRet.f32 %7723, 1
  %7726 = fadd fast float %7725, %7724
  %7727 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7728 = extractvalue %dx.types.CBufRet.f32 %7723, 2
  %7729 = extractvalue %dx.types.CBufRet.f32 %7723, 3
  %7730 = fadd fast float %7729, %7728
  %7731 = call float @dx.op.unary.f32(i32 7, float %7730)  ; Saturate(value)
  %7732 = fmul fast float %7727, %7711
  %7733 = fmul fast float %7732, %7731
  br label %7734

; <label>:7734                                    ; preds = %7695, %7614, %7449, %7431, %7429
  %7735 = phi float [ %7458, %7449 ], [ %7617, %7614 ], [ %7699, %7695 ], [ 0.000000e+00, %7429 ], [ 0.000000e+00, %7431 ]
  %7736 = phi float [ %7492, %7449 ], [ %7651, %7614 ], [ %7733, %7695 ], [ 0.000000e+00, %7429 ], [ 0.000000e+00, %7431 ]
  %7737 = phi float [ %7479, %7449 ], [ %7638, %7614 ], [ %7720, %7695 ], [ 0.000000e+00, %7429 ], [ 0.000000e+00, %7431 ]
  %7738 = phi float [ %7480, %7449 ], [ %7639, %7614 ], [ %7721, %7695 ], [ 0.000000e+00, %7429 ], [ 0.000000e+00, %7431 ]
  %7739 = phi float [ %7481, %7449 ], [ %7640, %7614 ], [ %7722, %7695 ], [ 0.000000e+00, %7429 ], [ 0.000000e+00, %7431 ]
  %7740 = fmul fast float %7372, %7736
  %7741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7742 = extractvalue %dx.types.CBufRet.f32 %7741, 2
  %7743 = fsub fast float %7379, %7742
  %7744 = fcmp fast olt float %7740, -2.000000e+01
  %7745 = call float @dx.op.unary.f32(i32 21, float %7740)  ; Exp(value)
  %7746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7747 = extractvalue %dx.types.CBufRet.f32 %7746, 2
  %7748 = extractvalue %dx.types.CBufRet.f32 %7746, 3
  %7749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7750 = extractvalue %dx.types.CBufRet.f32 %7749, 2
  %7751 = fmul fast float %7748, %7743
  %7752 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7753 = fsub fast float 1.000000e+00, %7752
  %7754 = fmul fast float %7364, 5.000000e-01
  %7755 = fadd fast float %7754, 5.000000e-01
  %7756 = call float @dx.op.unary.f32(i32 7, float %7755)  ; Saturate(value)
  %7757 = fsub fast float 1.000000e+00, %7756
  %7758 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7753)  ; FMax(a,b)
  %7759 = fdiv fast float %7757, %7758
  %7760 = fsub fast float %7743, %7321
  %7761 = call float @dx.op.unary.f32(i32 6, float %7760)  ; FAbs(value)
  %7762 = fmul fast float %7761, %7747
  %7763 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  %7764 = fsub fast float 1.000000e+00, %7762
  %7765 = fmul fast float %7764, %7763
  %7766 = fadd fast float %7765, %7762
  %7767 = fmul fast float %7750, %7743
  %7768 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7769 = fsub fast float 1.000000e+00, %7766
  %7770 = fmul fast float %7769, %7768
  %7771 = fadd fast float %7770, %7766
  %7772 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  %7773 = fadd fast float %7745, -1.000000e+00
  %7774 = select i1 %7744, float -1.000000e+00, float %7773
  %7775 = fmul fast float %7772, %7774
  %7776 = fadd fast float %7775, 1.000000e+00
  %7777 = fsub fast float -0.000000e+00, %7775
  %7778 = fmul fast float %7737, %7777
  %7779 = fmul fast float %7738, %7777
  %7780 = fmul fast float %7739, %7777
  br label %7781

; <label>:7781                                    ; preds = %7734, %7330
  %7782 = phi float [ %7735, %7734 ], [ 0.000000e+00, %7330 ]
  %7783 = phi float [ %7776, %7734 ], [ 1.000000e+00, %7330 ]
  %7784 = phi float [ %7778, %7734 ], [ 0.000000e+00, %7330 ]
  %7785 = phi float [ %7779, %7734 ], [ 0.000000e+00, %7330 ]
  %7786 = phi float [ %7780, %7734 ], [ 0.000000e+00, %7330 ]
  %7787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7788 = extractvalue %dx.types.CBufRet.f32 %7787, 1
  %7789 = fsub fast float 1.000000e+00, %7783
  %7790 = fmul fast float %7789, %7365
  %7791 = fmul fast float %7790, %7788
  %7792 = fsub fast float %7365, %7791
  br i1 %7358, label %7793, label %7822, !dx.controlflow.hints !162

; <label>:7793                                    ; preds = %7781
  %7794 = fmul fast float %7366, %7355
  %7795 = fadd fast float %7794, %7356
  %7796 = call float @dx.op.unary.f32(i32 7, float %7795)  ; Saturate(value)
  %7797 = fmul fast float %7337, %7792
  %7798 = fsub fast float -0.000000e+00, %7797
  %7799 = fmul fast float %7338, %7792
  %7800 = fsub fast float -0.000000e+00, %7799
  %7801 = call float @dx.op.unary.f32(i32 21, float %7798)  ; Exp(value)
  %7802 = call float @dx.op.unary.f32(i32 21, float %7800)  ; Exp(value)
  %7803 = call float @dx.op.binary.f32(i32 35, float %7345, float %7801)  ; FMax(a,b)
  %7804 = call float @dx.op.binary.f32(i32 35, float %7345, float %7802)  ; FMax(a,b)
  %7805 = fsub fast float %7804, %7803
  %7806 = fmul fast float %7805, %7796
  %7807 = fadd fast float %7806, %7803
  %7808 = call float @dx.op.unary.f32(i32 7, float %7807)  ; Saturate(value)
  %7809 = fsub fast float %7342, %7347
  %7810 = fsub fast float %7343, %7348
  %7811 = fsub fast float %7344, %7349
  %7812 = fmul fast float %7796, %7809
  %7813 = fmul fast float %7796, %7810
  %7814 = fmul fast float %7796, %7811
  %7815 = fadd fast float %7812, %7347
  %7816 = fadd fast float %7813, %7348
  %7817 = fadd fast float %7814, %7349
  %7818 = fsub fast float 1.000000e+00, %7808
  %7819 = fmul fast float %7818, %7815
  %7820 = fmul fast float %7818, %7816
  %7821 = fmul fast float %7818, %7817
  br label %7881

; <label>:7822                                    ; preds = %7781
  %7823 = fmul fast float %7792, %7354
  %7824 = call float @dx.op.unary.f32(i32 7, float %7823)  ; Saturate(value)
  %7825 = fsub fast float 2.000000e+00, %7824
  %7826 = fmul fast float %7824, 9.921875e-01
  %7827 = fmul fast float %7826, %7825
  %7828 = fadd fast float %7827, 3.906250e-03
  %7829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %7828, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7830 = extractvalue %dx.types.ResRet.f32 %7829, 0
  %7831 = fsub fast float %7824, %7830
  %7832 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7831)  ; FMax(a,b)
  %7833 = fmul fast float %7340, %7321
  %7834 = call float @dx.op.unary.f32(i32 6, float %7833)  ; FAbs(value)
  %7835 = fcmp fast ogt float %7834, 0x3EB0C6F7A0000000
  br i1 %7835, label %7836, label %7842, !dx.controlflow.hints !163

; <label>:7836                                    ; preds = %7822
  %7837 = fmul fast float %7833, 0xBFF7154760000000
  %7838 = call float @dx.op.unary.f32(i32 21, float %7837)  ; Exp(value)
  %7839 = fsub fast float 1.000000e+00, %7838
  %7840 = fdiv fast float %7839, %7833
  %7841 = fmul fast float %7840, %7350
  br label %7842

; <label>:7842                                    ; preds = %7836, %7822
  %7843 = phi float [ %7841, %7836 ], [ %7350, %7822 ]
  %7844 = fadd fast float %7843, %7352
  %7845 = fmul fast float %7844, %7832
  %7846 = fmul fast float %7337, %7845
  %7847 = fsub fast float -0.000000e+00, %7846
  %7848 = fmul fast float %7338, %7845
  %7849 = fsub fast float -0.000000e+00, %7848
  %7850 = fmul fast float %7339, %7845
  %7851 = fsub fast float -0.000000e+00, %7850
  %7852 = call float @dx.op.unary.f32(i32 21, float %7847)  ; Exp(value)
  %7853 = call float @dx.op.unary.f32(i32 21, float %7849)  ; Exp(value)
  %7854 = call float @dx.op.unary.f32(i32 21, float %7851)  ; Exp(value)
  %7855 = fmul fast float %7366, %7366
  %7856 = fadd fast float %7855, 1.000000e+00
  %7857 = fmul fast float %7856, 0x3FAE8EC8A0000000
  %7858 = fmul fast float %7857, %7347
  %7859 = fmul fast float %7857, %7348
  %7860 = fmul fast float %7857, %7349
  %7861 = fmul fast float %7366, %7345
  %7862 = fsub fast float 1.000000e+00, %7861
  %7863 = fmul fast float %7345, %7345
  %7864 = fsub fast float 1.000000e+00, %7863
  %7865 = fmul fast float %7864, 0x3FB45F3060000000
  %7866 = fmul fast float %7862, %7862
  %7867 = fdiv fast float 1.000000e+00, %7866
  %7868 = fmul fast float %7865, %7867
  %7869 = fmul fast float %7868, %7342
  %7870 = fmul fast float %7868, %7343
  %7871 = fmul fast float %7868, %7344
  %7872 = fadd fast float %7869, %7858
  %7873 = fadd fast float %7870, %7859
  %7874 = fadd fast float %7871, %7860
  %7875 = fsub fast float 1.000000e+00, %7852
  %7876 = fsub fast float 1.000000e+00, %7853
  %7877 = fsub fast float 1.000000e+00, %7854
  %7878 = fmul fast float %7872, %7875
  %7879 = fmul fast float %7873, %7876
  %7880 = fmul fast float %7874, %7877
  br label %7881

; <label>:7881                                    ; preds = %7842, %7793
  %7882 = phi float [ %7819, %7793 ], [ %7878, %7842 ]
  %7883 = phi float [ %7820, %7793 ], [ %7879, %7842 ]
  %7884 = phi float [ %7821, %7793 ], [ %7880, %7842 ]
  %7885 = phi float [ %7808, %7793 ], [ %7852, %7842 ]
  %7886 = phi float [ %7808, %7793 ], [ %7853, %7842 ]
  %7887 = phi float [ %7808, %7793 ], [ %7854, %7842 ]
  br i1 %7374, label %7888, label %8086, !dx.controlflow.hints !164

; <label>:7888                                    ; preds = %7881
  %7889 = extractvalue %dx.types.CBufRet.f32 %7787, 0
  %7890 = fmul fast float %7889, %7789
  %7891 = fsub fast float %7784, %7882
  %7892 = fsub fast float %7785, %7883
  %7893 = fsub fast float %7786, %7884
  %7894 = fmul fast float %7890, %7891
  %7895 = fmul fast float %7890, %7892
  %7896 = fmul fast float %7890, %7893
  %7897 = fadd fast float %7894, %7882
  %7898 = fadd fast float %7895, %7883
  %7899 = fadd fast float %7896, %7884
  %7900 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7885)  ; FMax(a,b)
  %7901 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7886)  ; FMax(a,b)
  %7902 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7887)  ; FMax(a,b)
  %7903 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7783)  ; FMax(a,b)
  %7904 = call float @dx.op.binary.f32(i32 35, float %7782, float %7792)  ; FMax(a,b)
  %7905 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7904)  ; FMax(a,b)
  %7906 = fdiv fast float %7782, %7905
  %7907 = call float @dx.op.unary.f32(i32 7, float %7906)  ; Saturate(value)
  %7908 = fdiv fast float %7792, %7905
  %7909 = call float @dx.op.unary.f32(i32 7, float %7908)  ; Saturate(value)
  %7910 = fcmp fast une float %7903, 1.000000e+00
  br i1 %7910, label %7911, label %7924, !dx.controlflow.hints !165

; <label>:7911                                    ; preds = %7888
  %7912 = call float @dx.op.unary.f32(i32 23, float %7903)  ; Log(value)
  %7913 = fmul fast float %7912, 0x3FE62E4300000000
  %7914 = fmul fast float %7784, %7913
  %7915 = fsub fast float -0.000000e+00, %7914
  %7916 = fmul fast float %7785, %7913
  %7917 = fsub fast float -0.000000e+00, %7916
  %7918 = fmul fast float %7786, %7913
  %7919 = fsub fast float -0.000000e+00, %7918
  %7920 = fsub fast float 1.000000e+00, %7903
  %7921 = fdiv fast float %7915, %7920
  %7922 = fdiv fast float %7917, %7920
  %7923 = fdiv fast float %7919, %7920
  br label %7924

; <label>:7924                                    ; preds = %7911, %7888
  %7925 = phi float [ %7921, %7911 ], [ %7784, %7888 ]
  %7926 = phi float [ %7922, %7911 ], [ %7785, %7888 ]
  %7927 = phi float [ %7923, %7911 ], [ %7786, %7888 ]
  %7928 = phi float [ %7913, %7911 ], [ 0.000000e+00, %7888 ]
  %7929 = fcmp fast une float %7900, 1.000000e+00
  br i1 %7929, label %7930, label %7937, !dx.controlflow.hints !166

; <label>:7930                                    ; preds = %7924
  %7931 = call float @dx.op.unary.f32(i32 23, float %7900)  ; Log(value)
  %7932 = fmul fast float %7931, 0x3FE62E4300000000
  %7933 = fmul fast float %7897, %7932
  %7934 = fsub fast float -0.000000e+00, %7933
  %7935 = fsub fast float 1.000000e+00, %7900
  %7936 = fdiv fast float %7934, %7935
  br label %7937

; <label>:7937                                    ; preds = %7930, %7924
  %7938 = phi float [ %7936, %7930 ], [ %7897, %7924 ]
  %7939 = phi float [ %7932, %7930 ], [ 0.000000e+00, %7924 ]
  %7940 = fcmp fast une float %7901, 1.000000e+00
  br i1 %7940, label %7941, label %7948, !dx.controlflow.hints !166

; <label>:7941                                    ; preds = %7937
  %7942 = call float @dx.op.unary.f32(i32 23, float %7901)  ; Log(value)
  %7943 = fmul fast float %7942, 0x3FE62E4300000000
  %7944 = fmul fast float %7898, %7943
  %7945 = fsub fast float -0.000000e+00, %7944
  %7946 = fsub fast float 1.000000e+00, %7901
  %7947 = fdiv fast float %7945, %7946
  br label %7948

; <label>:7948                                    ; preds = %7941, %7937
  %7949 = phi float [ %7947, %7941 ], [ %7898, %7937 ]
  %7950 = phi float [ %7943, %7941 ], [ 0.000000e+00, %7937 ]
  %7951 = fcmp fast une float %7902, 1.000000e+00
  br i1 %7951, label %7952, label %7959, !dx.controlflow.hints !166

; <label>:7952                                    ; preds = %7948
  %7953 = call float @dx.op.unary.f32(i32 23, float %7902)  ; Log(value)
  %7954 = fmul fast float %7953, 0x3FE62E4300000000
  %7955 = fmul fast float %7899, %7954
  %7956 = fsub fast float -0.000000e+00, %7955
  %7957 = fsub fast float 1.000000e+00, %7902
  %7958 = fdiv fast float %7956, %7957
  br label %7959

; <label>:7959                                    ; preds = %7952, %7948
  %7960 = phi float [ %7958, %7952 ], [ %7899, %7948 ]
  %7961 = phi float [ %7954, %7952 ], [ 0.000000e+00, %7948 ]
  %7962 = fmul fast float %7925, %7909
  %7963 = fmul fast float %7926, %7909
  %7964 = fmul fast float %7927, %7909
  %7965 = fmul fast float %7928, %7909
  %7966 = fmul fast float %7938, %7907
  %7967 = fmul fast float %7949, %7907
  %7968 = fmul fast float %7960, %7907
  %7969 = fmul fast float %7939, %7907
  %7970 = fmul fast float %7950, %7907
  %7971 = fmul fast float %7961, %7907
  %7972 = fadd fast float %7966, %7962
  %7973 = fadd fast float %7967, %7963
  %7974 = fadd fast float %7968, %7964
  %7975 = fadd fast float %7969, %7965
  %7976 = fadd fast float %7970, %7965
  %7977 = fadd fast float %7971, %7965
  %7978 = fcmp fast une float %7975, 0.000000e+00
  br i1 %7978, label %7979, label %7986, !dx.controlflow.hints !167

; <label>:7979                                    ; preds = %7959
  %7980 = fmul fast float %7975, 0x3FF7154760000000
  %7981 = call float @dx.op.unary.f32(i32 21, float %7980)  ; Exp(value)
  %7982 = fsub fast float 1.000000e+00, %7981
  %7983 = fmul fast float %7972, %7982
  %7984 = fsub fast float -0.000000e+00, %7983
  %7985 = fdiv fast float %7984, %7975
  br label %7986

; <label>:7986                                    ; preds = %7979, %7959
  %7987 = phi float [ %7981, %7979 ], [ 1.000000e+00, %7959 ]
  %7988 = phi float [ %7985, %7979 ], [ %7972, %7959 ]
  %7989 = fcmp fast une float %7976, 0.000000e+00
  br i1 %7989, label %7990, label %7997, !dx.controlflow.hints !167

; <label>:7990                                    ; preds = %7986
  %7991 = fmul fast float %7976, 0x3FF7154760000000
  %7992 = call float @dx.op.unary.f32(i32 21, float %7991)  ; Exp(value)
  %7993 = fsub fast float 1.000000e+00, %7992
  %7994 = fmul fast float %7973, %7993
  %7995 = fsub fast float -0.000000e+00, %7994
  %7996 = fdiv fast float %7995, %7976
  br label %7997

; <label>:7997                                    ; preds = %7990, %7986
  %7998 = phi float [ %7992, %7990 ], [ 1.000000e+00, %7986 ]
  %7999 = phi float [ %7996, %7990 ], [ %7973, %7986 ]
  %8000 = fcmp fast une float %7977, 0.000000e+00
  br i1 %8000, label %8001, label %8008, !dx.controlflow.hints !167

; <label>:8001                                    ; preds = %7997
  %8002 = fmul fast float %7977, 0x3FF7154760000000
  %8003 = call float @dx.op.unary.f32(i32 21, float %8002)  ; Exp(value)
  %8004 = fsub fast float 1.000000e+00, %8003
  %8005 = fmul fast float %7974, %8004
  %8006 = fsub fast float -0.000000e+00, %8005
  %8007 = fdiv fast float %8006, %7977
  br label %8008

; <label>:8008                                    ; preds = %8001, %7997
  %8009 = phi float [ %8003, %8001 ], [ 1.000000e+00, %7997 ]
  %8010 = phi float [ %8007, %8001 ], [ %7974, %7997 ]
  %8011 = fcmp fast ogt float %7907, %7909
  br i1 %8011, label %8012, label %8032

; <label>:8012                                    ; preds = %8008
  %8013 = fsub fast float 1.000000e+00, %7909
  %8014 = fmul fast float %7925, %8013
  %8015 = fmul fast float %7926, %8013
  %8016 = fmul fast float %7927, %8013
  %8017 = fmul fast float %7928, %8013
  %8018 = fcmp fast une float %8017, 0.000000e+00
  br i1 %8018, label %8019, label %8070, !dx.controlflow.hints !168

; <label>:8019                                    ; preds = %8012
  %8020 = fmul fast float %8017, 0x3FF7154760000000
  %8021 = call float @dx.op.unary.f32(i32 21, float %8020)  ; Exp(value)
  %8022 = fsub fast float 1.000000e+00, %8021
  %8023 = fmul fast float %8014, %8022
  %8024 = fsub fast float -0.000000e+00, %8023
  %8025 = fmul fast float %8015, %8022
  %8026 = fsub fast float -0.000000e+00, %8025
  %8027 = fmul fast float %8016, %8022
  %8028 = fsub fast float -0.000000e+00, %8027
  %8029 = fdiv fast float %8024, %8017
  %8030 = fdiv fast float %8026, %8017
  %8031 = fdiv fast float %8028, %8017
  br label %8070

; <label>:8032                                    ; preds = %8008
  %8033 = fsub fast float 1.000000e+00, %7907
  %8034 = fmul fast float %7938, %8033
  %8035 = fmul fast float %7949, %8033
  %8036 = fmul fast float %7960, %8033
  %8037 = fmul fast float %7939, %8033
  %8038 = fmul fast float %7950, %8033
  %8039 = fmul fast float %7961, %8033
  %8040 = fcmp fast une float %8037, 0.000000e+00
  br i1 %8040, label %8041, label %8048, !dx.controlflow.hints !167

; <label>:8041                                    ; preds = %8032
  %8042 = fmul fast float %8037, 0x3FF7154760000000
  %8043 = call float @dx.op.unary.f32(i32 21, float %8042)  ; Exp(value)
  %8044 = fsub fast float 1.000000e+00, %8043
  %8045 = fmul fast float %8034, %8044
  %8046 = fsub fast float -0.000000e+00, %8045
  %8047 = fdiv fast float %8046, %8037
  br label %8048

; <label>:8048                                    ; preds = %8041, %8032
  %8049 = phi float [ %8047, %8041 ], [ %8034, %8032 ]
  %8050 = phi float [ %8043, %8041 ], [ 1.000000e+00, %8032 ]
  %8051 = fcmp fast une float %8038, 0.000000e+00
  br i1 %8051, label %8052, label %8059, !dx.controlflow.hints !167

; <label>:8052                                    ; preds = %8048
  %8053 = fmul fast float %8038, 0x3FF7154760000000
  %8054 = call float @dx.op.unary.f32(i32 21, float %8053)  ; Exp(value)
  %8055 = fsub fast float 1.000000e+00, %8054
  %8056 = fmul fast float %8035, %8055
  %8057 = fsub fast float -0.000000e+00, %8056
  %8058 = fdiv fast float %8057, %8038
  br label %8059

; <label>:8059                                    ; preds = %8052, %8048
  %8060 = phi float [ %8058, %8052 ], [ %8035, %8048 ]
  %8061 = phi float [ %8054, %8052 ], [ 1.000000e+00, %8048 ]
  %8062 = fcmp fast une float %8039, 0.000000e+00
  br i1 %8062, label %8063, label %8070, !dx.controlflow.hints !167

; <label>:8063                                    ; preds = %8059
  %8064 = fmul fast float %8039, 0x3FF7154760000000
  %8065 = call float @dx.op.unary.f32(i32 21, float %8064)  ; Exp(value)
  %8066 = fsub fast float 1.000000e+00, %8065
  %8067 = fmul fast float %8036, %8066
  %8068 = fsub fast float -0.000000e+00, %8067
  %8069 = fdiv fast float %8068, %8039
  br label %8070

; <label>:8070                                    ; preds = %8063, %8059, %8019, %8012
  %8071 = phi float [ %8069, %8063 ], [ %8031, %8019 ], [ %8016, %8012 ], [ %8036, %8059 ]
  %8072 = phi float [ %8060, %8063 ], [ %8030, %8019 ], [ %8015, %8012 ], [ %8060, %8059 ]
  %8073 = phi float [ %8049, %8063 ], [ %8029, %8019 ], [ %8014, %8012 ], [ %8049, %8059 ]
  %8074 = phi float [ %8065, %8063 ], [ %8021, %8019 ], [ 1.000000e+00, %8012 ], [ 1.000000e+00, %8059 ]
  %8075 = phi float [ %8061, %8063 ], [ %8021, %8019 ], [ 1.000000e+00, %8012 ], [ %8061, %8059 ]
  %8076 = phi float [ %8050, %8063 ], [ %8021, %8019 ], [ 1.000000e+00, %8012 ], [ %8050, %8059 ]
  %8077 = fmul fast float %8076, %7988
  %8078 = fmul fast float %8075, %7999
  %8079 = fmul fast float %8074, %8010
  %8080 = fadd fast float %8077, %8073
  %8081 = fadd fast float %8078, %8072
  %8082 = fadd fast float %8079, %8071
  %8083 = fmul fast float %8076, %7987
  %8084 = fmul fast float %8075, %7998
  %8085 = fmul fast float %8074, %8009
  br label %8086

; <label>:8086                                    ; preds = %8070, %7881
  %8087 = phi float [ %8085, %8070 ], [ %7887, %7881 ]
  %8088 = phi float [ %8084, %8070 ], [ %7886, %7881 ]
  %8089 = phi float [ %8083, %8070 ], [ %7885, %7881 ]
  %8090 = phi float [ %8082, %8070 ], [ %7884, %7881 ]
  %8091 = phi float [ %8081, %8070 ], [ %7883, %7881 ]
  %8092 = phi float [ %8080, %8070 ], [ %7882, %7881 ]
  %8093 = fmul fast float %8092, %7038
  %8094 = fmul fast float %8091, %7038
  %8095 = fmul fast float %8090, %7038
  %8096 = fmul fast float %8089, %7329
  %8097 = call float @dx.op.dot3.f32(i32 55, float %8089, float %8088, float %8087, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8098 = call float @dx.op.dot3.f32(i32 55, float %8093, float %8094, float %8095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8099 = select i1 %250, float %8097, float %8089
  %8100 = select i1 %250, float %8097, float %8088
  %8101 = select i1 %250, float 1.000000e+00, float %8087
  %8102 = select i1 %250, float %8098, float %8093
  %8103 = select i1 %250, float 0.000000e+00, float %8094
  %8104 = select i1 %250, float 0.000000e+00, float %8095
  %8105 = fmul fast float %8099, %7323
  %8106 = fmul fast float %8100, %7324
  %8107 = fmul fast float %8101, %7325
  %8108 = fadd fast float %8105, %8102
  %8109 = fadd fast float %8106, %8103
  %8110 = fadd fast float %8104, %8107
  %8111 = fmul fast float %8099, %7326
  %8112 = fmul fast float %8100, %7327
  %8113 = fmul fast float %8101, %7328
  %8114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.i32 %8114, 0
  %8116 = icmp eq i32 %8115, 0
  br i1 %8116, label %8484, label %8117, !dx.controlflow.hints !169

; <label>:8117                                    ; preds = %8086
  %8118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8119 = extractvalue %dx.types.CBufRet.f32 %8118, 2
  %8120 = extractvalue %dx.types.CBufRet.f32 %8118, 3
  %8121 = fmul fast float %8119, %104
  %8122 = fmul fast float %8120, %105
  %8123 = fmul fast float %8121, 2.000000e+00
  %8124 = fmul fast float %8122, 2.000000e+00
  %8125 = fsub fast float 1.000000e+00, %8123
  %8126 = fsub fast float 1.000000e+00, %8124
  %8127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8128 = extractvalue %dx.types.CBufRet.f32 %8127, 0
  %8129 = extractvalue %dx.types.CBufRet.f32 %8127, 1
  %8130 = extractvalue %dx.types.CBufRet.f32 %8127, 2
  %8131 = fmul fast float %8125, %8128
  %8132 = fmul fast float %8125, %8129
  %8133 = fmul fast float %8125, %8130
  %8134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8135 = extractvalue %dx.types.CBufRet.f32 %8134, 0
  %8136 = extractvalue %dx.types.CBufRet.f32 %8134, 1
  %8137 = extractvalue %dx.types.CBufRet.f32 %8134, 2
  %8138 = fmul fast float %8126, %8135
  %8139 = fmul fast float %8126, %8136
  %8140 = fmul fast float %8126, %8137
  %8141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8142 = extractvalue %dx.types.CBufRet.f32 %8141, 0
  %8143 = extractvalue %dx.types.CBufRet.f32 %8141, 1
  %8144 = extractvalue %dx.types.CBufRet.f32 %8141, 2
  %8145 = fadd fast float %8138, %8142
  %8146 = fadd fast float %8145, %8131
  %8147 = fadd fast float %8139, %8143
  %8148 = fadd fast float %8147, %8132
  %8149 = fadd fast float %8140, %8144
  %8150 = fadd fast float %8149, %8133
  %8151 = fmul fast float %8146, %7322
  %8152 = fmul fast float %8148, %7322
  %8153 = fmul fast float %8150, %7322
  %8154 = fmul fast float %8151, %8151
  %8155 = fmul fast float %8152, %8152
  %8156 = fadd fast float %8154, %8155
  %8157 = fmul fast float %8153, %8153
  %8158 = fadd fast float %8156, %8157
  %8159 = call float @dx.op.unary.f32(i32 24, float %8158)  ; Sqrt(value)
  %8160 = extractvalue %dx.types.CBufRet.f32 %7049, 0
  %8161 = fsub fast float %8159, %8160
  %8162 = extractvalue %dx.types.CBufRet.f32 %7049, 2
  %8163 = fmul fast float %8161, %8162
  %8164 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8165 = fadd fast float %8164, -5.000000e-01
  %8166 = fmul fast float %8165, 2.000000e+00
  %8167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8168 = extractvalue %dx.types.CBufRet.f32 %8167, 2
  %8169 = call float @dx.op.binary.f32(i32 36, float %8168, float %8166)  ; FMin(a,b)
  %8170 = fsub fast float -0.000000e+00, %8168
  %8171 = fcmp fast ogt float %8169, %8170
  br i1 %8171, label %8172, label %8484, !dx.controlflow.hints !170

; <label>:8172                                    ; preds = %8117
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 3
  %8175 = fcmp fast ogt float %8174, 0.000000e+00
  br i1 %8175, label %8176, label %8251, !dx.controlflow.hints !171

; <label>:8176                                    ; preds = %8172
  %8177 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8178 = extractvalue %dx.types.Dimensions %8177, 0
  %8179 = sitofp i32 %8178 to float
  %8180 = extractvalue %dx.types.Dimensions %8177, 1
  %8181 = sitofp i32 %8180 to float
  %8182 = fmul fast float %8121, %8179
  %8183 = fmul fast float %8122, %8181
  %8184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8185 = extractvalue %dx.types.CBufRet.f32 %8184, 1
  %8186 = fsub fast float -0.000000e+00, %8185
  %8187 = fptoui float %8186 to i32
  %8188 = fptoui float %8182 to i32
  %8189 = fptoui float %8183 to i32
  %8190 = and i32 %8187, 31
  %8191 = lshr i32 %8188, %8190
  %8192 = lshr i32 %8189, %8190
  %8193 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8187, i32 %8191, i32 %8192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8194 = extractvalue %dx.types.ResRet.f32 %8193, 0
  %8195 = fcmp fast olt float %8194, -1.000000e+00
  %8196 = fcmp fast ogt float %8194, -1.000000e+00
  %8197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8198 = extractvalue %dx.types.CBufRet.f32 %8197, 1
  %8199 = select i1 %8196, float %8198, float 1.000000e+00
  %8200 = fadd fast float %8194, 1.000000e+00
  %8201 = fmul fast float %8199, %8200
  %8202 = call float @dx.op.unary.f32(i32 6, float %8201)  ; FAbs(value)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8197, 3
  %8204 = fcmp fast oge float %8202, %8203
  %8205 = select i1 %8204, float 0x4197782600000000, float %8202
  %8206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8206, 0
  %8208 = extractvalue %dx.types.CBufRet.f32 %8206, 1
  %8209 = extractvalue %dx.types.CBufRet.f32 %8206, 2
  %8210 = select i1 %8195, float %8207, float %8128
  %8211 = select i1 %8195, float %8208, float %8129
  %8212 = select i1 %8195, float %8209, float %8130
  %8213 = fmul fast float %8210, %8125
  %8214 = fmul fast float %8211, %8125
  %8215 = fmul fast float %8212, %8125
  %8216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8217 = extractvalue %dx.types.CBufRet.f32 %8216, 0
  %8218 = extractvalue %dx.types.CBufRet.f32 %8216, 1
  %8219 = extractvalue %dx.types.CBufRet.f32 %8216, 2
  %8220 = select i1 %8195, float %8217, float %8135
  %8221 = select i1 %8195, float %8218, float %8136
  %8222 = select i1 %8195, float %8219, float %8137
  %8223 = fmul fast float %8220, %8126
  %8224 = fmul fast float %8221, %8126
  %8225 = fmul fast float %8222, %8126
  %8226 = fadd fast float %8223, %8213
  %8227 = fadd fast float %8224, %8214
  %8228 = fadd fast float %8225, %8215
  %8229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8230 = extractvalue %dx.types.CBufRet.f32 %8229, 0
  %8231 = extractvalue %dx.types.CBufRet.f32 %8229, 1
  %8232 = extractvalue %dx.types.CBufRet.f32 %8229, 2
  %8233 = select i1 %8195, float %8230, float %8142
  %8234 = select i1 %8195, float %8231, float %8143
  %8235 = select i1 %8195, float %8232, float %8144
  %8236 = fadd fast float %8226, %8233
  %8237 = fadd fast float %8227, %8234
  %8238 = fadd fast float %8228, %8235
  %8239 = fmul fast float %8236, %8205
  %8240 = fmul fast float %8237, %8205
  %8241 = fmul fast float %8238, %8205
  %8242 = fmul fast float %8239, %8239
  %8243 = fmul fast float %8240, %8240
  %8244 = fadd fast float %8242, %8243
  %8245 = fmul fast float %8241, %8241
  %8246 = fadd fast float %8244, %8245
  %8247 = call float @dx.op.unary.f32(i32 24, float %8246)  ; Sqrt(value)
  %8248 = fsub fast float %8247, %8160
  %8249 = fmul fast float %8248, %8162
  %8250 = call float @dx.op.unary.f32(i32 7, float %8249)  ; Saturate(value)
  br label %8251

; <label>:8251                                    ; preds = %8176, %8172
  %8252 = phi float [ %8250, %8176 ], [ 1.000000e+00, %8172 ]
  %8253 = fmul fast float %8169, 5.000000e-01
  %8254 = fadd fast float %8253, 5.000000e-01
  %8255 = call float @dx.op.unary.f32(i32 22, float %8254)  ; Frc(value)
  %8256 = call float @dx.op.unary.f32(i32 27, float %8255)  ; Round_ni(value)
  %8257 = call float @dx.op.unary.f32(i32 22, float %8255)  ; Frc(value)
  %8258 = fmul fast float %8257, 2.000000e+00
  %8259 = fadd fast float %8258, -1.000000e+00
  %8260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8121, float %8122, float %8256, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8261 = extractvalue %dx.types.ResRet.f32 %8260, 0
  %8262 = extractvalue %dx.types.ResRet.f32 %8260, 1
  %8263 = extractvalue %dx.types.ResRet.f32 %8260, 2
  %8264 = extractvalue %dx.types.ResRet.f32 %8260, 3
  %8265 = fadd fast float %8261, -5.000000e-01
  %8266 = fadd fast float %8263, -5.000000e-01
  %8267 = fmul fast float %8265, 0xBFD5555560000000
  %8268 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8266, float %8267)  ; FMad(a,b,c)
  %8269 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8262, float 0.000000e+00)  ; FMad(a,b,c)
  %8270 = fadd fast float %8269, %8264
  %8271 = fmul fast float %8265, -7.500000e-01
  %8272 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8266, float %8271)  ; FMad(a,b,c)
  %8273 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8262, float 0.000000e+00)  ; FMad(a,b,c)
  %8274 = fadd fast float %8273, %8264
  %8275 = call float @dx.op.binary.f32(i32 35, float %8268, float -1.000000e+00)  ; FMax(a,b)
  %8276 = call float @dx.op.binary.f32(i32 35, float %8270, float -1.000000e+00)  ; FMax(a,b)
  %8277 = call float @dx.op.binary.f32(i32 35, float %8272, float -1.000000e+00)  ; FMax(a,b)
  %8278 = call float @dx.op.binary.f32(i32 35, float %8274, float -1.000000e+00)  ; FMax(a,b)
  %8279 = call float @dx.op.binary.f32(i32 36, float %8275, float 1.000000e+00)  ; FMin(a,b)
  %8280 = call float @dx.op.binary.f32(i32 36, float %8276, float 1.000000e+00)  ; FMin(a,b)
  %8281 = call float @dx.op.binary.f32(i32 36, float %8277, float 1.000000e+00)  ; FMin(a,b)
  %8282 = call float @dx.op.binary.f32(i32 36, float %8278, float 1.000000e+00)  ; FMin(a,b)
  %8283 = fcmp fast olt float %8279, 0x3FEFFF8020000000
  br i1 %8283, label %8284, label %8399, !dx.controlflow.hints !172

; <label>:8284                                    ; preds = %8251
  %8285 = extractvalue %dx.types.CBufRet.f32 %8167, 3
  %8286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.f32 %8286, 0
  %8288 = extractvalue %dx.types.CBufRet.f32 %8286, 1
  %8289 = extractvalue %dx.types.CBufRet.f32 %8286, 2
  %8290 = extractvalue %dx.types.CBufRet.f32 %8286, 3
  %8291 = fsub fast float %8287, %8279
  %8292 = fsub fast float %8288, %8280
  %8293 = fsub fast float %8289, %8281
  %8294 = fsub fast float %8290, %8282
  %8295 = fmul fast float %8291, %8285
  %8296 = fmul fast float %8292, %8285
  %8297 = fmul fast float %8293, %8285
  %8298 = fmul fast float %8294, %8285
  %8299 = fadd fast float %8295, %8279
  %8300 = fadd fast float %8296, %8280
  %8301 = fsub fast float -0.000000e+00, %8300
  %8302 = fadd fast float %8297, %8281
  %8303 = fadd fast float %8298, %8282
  %8304 = fmul fast float %8299, %8299
  %8305 = fsub fast float %8300, %8304
  %8306 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8305)  ; FMax(a,b)
  %8307 = fdiv fast float 1.000000e+00, %8306
  %8308 = fmul fast float %8300, %8299
  %8309 = fsub fast float %8302, %8308
  %8310 = fsub fast float %8259, %8299
  %8311 = fmul fast float %8259, %8259
  %8312 = fsub fast float %8311, %8300
  %8313 = fmul fast float %8310, %8307
  %8314 = fmul fast float %8313, %8309
  %8315 = fsub fast float %8312, %8314
  %8316 = fmul fast float %8300, %8300
  %8317 = fsub fast float %8303, %8316
  %8318 = fmul fast float %8309, %8309
  %8319 = fmul fast float %8318, %8307
  %8320 = fsub fast float %8317, %8319
  %8321 = fdiv fast float %8315, %8320
  %8322 = fmul fast float %8309, %8321
  %8323 = fsub fast float %8310, %8322
  %8324 = fmul fast float %8323, %8307
  %8325 = fmul fast float %8324, %8299
  %8326 = fsub fast float 1.000000e+00, %8325
  %8327 = fmul fast float %8300, %8321
  %8328 = fsub fast float %8326, %8327
  %8329 = fmul fast float %8324, %8324
  %8330 = fmul fast float %8321, 4.000000e+00
  %8331 = fmul fast float %8330, %8328
  %8332 = fsub fast float %8329, %8331
  %8333 = call float @dx.op.unary.f32(i32 24, float %8332)  ; Sqrt(value)
  %8334 = fcmp fast oge float %8324, 0.000000e+00
  %8335 = fsub fast float -0.000000e+00, %8333
  %8336 = select i1 %8334, float %8335, float %8333
  %8337 = fsub fast float %8336, %8324
  %8338 = fdiv fast float %8337, %8321
  %8339 = fdiv fast float %8328, %8337
  %8340 = fmul fast float %8338, 5.000000e-01
  %8341 = fmul fast float %8339, 2.000000e+00
  %8342 = select i1 %8334, float %8340, float %8341
  %8343 = select i1 %8334, float %8341, float %8340
  %8344 = call float @dx.op.binary.f32(i32 35, float %8342, float %8343)  ; FMax(a,b)
  %8345 = call float @dx.op.binary.f32(i32 36, float %8342, float %8343)  ; FMin(a,b)
  %8346 = fcmp fast ogt float %8259, %8345
  br i1 %8346, label %8347, label %8357

; <label>:8347                                    ; preds = %8284
  %8348 = fsub fast float %8259, %8345
  %8349 = fsub fast float %8344, %8345
  %8350 = fmul fast float %8348, %8349
  %8351 = fmul fast float %8344, %8259
  %8352 = fadd fast float %8344, %8259
  %8353 = fmul fast float %8352, %8299
  %8354 = fadd fast float %8351, %8300
  %8355 = fsub fast float %8354, %8353
  %8356 = fdiv fast float %8355, %8350
  br label %8357

; <label>:8357                                    ; preds = %8347, %8284
  %8358 = phi float [ %8356, %8347 ], [ 0.000000e+00, %8284 ]
  %8359 = fcmp fast ogt float %8259, %8344
  %8360 = fsub fast float %8259, %8344
  br i1 %8359, label %8361, label %8371

; <label>:8361                                    ; preds = %8357
  %8362 = fsub fast float %8344, %8345
  %8363 = fmul fast float %8362, %8360
  %8364 = fmul fast float %8345, %8259
  %8365 = fadd fast float %8345, %8259
  %8366 = fmul fast float %8365, %8299
  %8367 = fsub fast float %8301, %8364
  %8368 = fadd fast float %8367, %8366
  %8369 = fdiv fast float %8368, %8363
  %8370 = fadd fast float %8369, %8358
  br label %8371

; <label>:8371                                    ; preds = %8361, %8357
  %8372 = phi float [ %8370, %8361 ], [ %8358, %8357 ]
  %8373 = fsub fast float %8259, %8345
  %8374 = fmul fast float %8373, %8360
  %8375 = fmul fast float %8345, %8344
  %8376 = fadd fast float %8345, %8344
  %8377 = fmul fast float %8376, %8299
  %8378 = fadd fast float %8375, %8300
  %8379 = fsub fast float %8378, %8377
  %8380 = fdiv fast float %8379, %8374
  %8381 = call float @dx.op.unary.f32(i32 7, float %8372)  ; Saturate(value)
  %8382 = fcmp fast oeq float %7050, 0.000000e+00
  %8383 = extractvalue %dx.types.CBufRet.f32 %8167, 0
  %8384 = fcmp fast oeq float %8383, 0.000000e+00
  %8385 = or i1 %8382, %8384
  %8386 = fmul fast float %8383, 2.000000e+00
  %8387 = fadd fast float %8168, %8169
  %8388 = fdiv fast float %8387, %8386
  %8389 = call float @dx.op.unary.f32(i32 7, float %8388)  ; Saturate(value)
  %8390 = fmul fast float %8389, 2.000000e+00
  %8391 = fsub fast float 3.000000e+00, %8390
  %8392 = fmul fast float %8389, %8389
  %8393 = fmul fast float %8392, %8391
  %8394 = select i1 %8385, float 1.000000e+00, float %8393
  %8395 = fmul fast float %8380, %7050
  %8396 = fadd fast float %8381, %8395
  %8397 = call float @dx.op.unary.f32(i32 7, float %8396)  ; Saturate(value)
  %8398 = fmul fast float %8394, %8397
  br label %8399

; <label>:8399                                    ; preds = %8371, %8251
  %8400 = phi float [ %8398, %8371 ], [ 0.000000e+00, %8251 ]
  %8401 = fsub fast float 1.000000e+00, %8400
  %8402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8121, float %8122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8403 = extractvalue %dx.types.ResRet.f32 %8402, 0
  %8404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.i32 %8404, 2
  %8406 = icmp eq i32 %8405, 0
  br i1 %8406, label %8412, label %8407

; <label>:8407                                    ; preds = %8399
  %8408 = call float @dx.op.unary.f32(i32 7, float %8400)  ; Saturate(value)
  %8409 = fadd fast float %8403, -1.000000e+00
  %8410 = fmul fast float %8408, %8409
  %8411 = fadd fast float %8410, 1.000000e+00
  br label %8412

; <label>:8412                                    ; preds = %8407, %8399
  %8413 = phi float [ %8411, %8407 ], [ %8401, %8399 ]
  br i1 %8175, label %8414, label %8432

; <label>:8414                                    ; preds = %8412
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8417 = fsub fast float %8252, %8416
  %8418 = call float @dx.op.unary.f32(i32 7, float %8417)  ; Saturate(value)
  %8419 = fsub fast float %8252, %8174
  %8420 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8421 = fsub fast float %8418, %8420
  %8422 = fsub fast float %8254, %8420
  %8423 = fdiv fast float %8422, %8421
  %8424 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8425 = fmul fast float %8424, 2.000000e+00
  %8426 = fsub fast float 3.000000e+00, %8425
  %8427 = fsub fast float %8403, %8413
  %8428 = fmul fast float %8424, %8424
  %8429 = fmul fast float %8428, %8427
  %8430 = fmul fast float %8429, %8426
  %8431 = fadd fast float %8430, %8413
  br label %8432

; <label>:8432                                    ; preds = %8414, %8412
  %8433 = phi float [ %8431, %8414 ], [ %8413, %8412 ]
  %8434 = call float @dx.op.binary.f32(i32 35, float %8403, float %8433)  ; FMax(a,b)
  %8435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8436 = extractvalue %dx.types.CBufRet.i32 %8435, 2
  %8437 = and i32 %8436, 1
  %8438 = icmp eq i32 %8437, 0
  %8439 = fcmp fast une float %8434, 1.000000e+00
  %8440 = and i1 %8439, %8438
  br i1 %8440, label %8441, label %8460

; <label>:8441                                    ; preds = %8432
  %8442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8121, float %8122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8443 = extractvalue %dx.types.ResRet.f32 %8442, 0
  %8444 = extractvalue %dx.types.ResRet.f32 %8442, 1
  %8445 = extractvalue %dx.types.ResRet.f32 %8442, 2
  %8446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.f32 %8446, 1
  %8448 = fmul fast float %8447, %8443
  %8449 = fmul fast float %8447, %8444
  %8450 = fmul fast float %8447, %8445
  %8451 = fcmp fast ogt float %8403, 0x3FEFFF2E40000000
  %8452 = fsub fast float 1.000000e+00, %8434
  %8453 = fsub fast float 1.000000e+00, %8403
  %8454 = fdiv fast float %8452, %8453
  %8455 = call float @dx.op.unary.f32(i32 7, float %8454)  ; Saturate(value)
  %8456 = select i1 %8451, float 0.000000e+00, float %8455
  %8457 = fmul fast float %8448, %8456
  %8458 = fmul fast float %8449, %8456
  %8459 = fmul fast float %8450, %8456
  br label %8460

; <label>:8460                                    ; preds = %8441, %8432
  %8461 = phi float [ 0.000000e+00, %8432 ], [ %8457, %8441 ]
  %8462 = phi float [ 0.000000e+00, %8432 ], [ %8458, %8441 ]
  %8463 = phi float [ 0.000000e+00, %8432 ], [ %8459, %8441 ]
  %8464 = fmul fast float %8461, %7038
  %8465 = fmul fast float %8462, %7038
  %8466 = fmul fast float %8463, %7038
  %8467 = fmul fast float %8434, %8096
  %8468 = call float @dx.op.dot3.f32(i32 55, float %8434, float %8434, float %8434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8469 = call float @dx.op.dot3.f32(i32 55, float %8464, float %8465, float %8466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8470 = select i1 %250, float %8468, float %8434
  %8471 = select i1 %250, float 1.000000e+00, float %8434
  %8472 = select i1 %250, float %8469, float %8464
  %8473 = select i1 %250, float 0.000000e+00, float %8465
  %8474 = select i1 %250, float 0.000000e+00, float %8466
  %8475 = fmul fast float %8470, %8108
  %8476 = fmul fast float %8470, %8109
  %8477 = fmul fast float %8471, %8110
  %8478 = fadd fast float %8475, %8472
  %8479 = fadd fast float %8476, %8473
  %8480 = fadd fast float %8474, %8477
  %8481 = fmul fast float %8470, %8111
  %8482 = fmul fast float %8470, %8112
  %8483 = fmul fast float %8471, %8113
  br label %8484

; <label>:8484                                    ; preds = %8460, %8117, %8086, %7318
  %8485 = phi float [ %7323, %7318 ], [ %8108, %8086 ], [ %8478, %8460 ], [ %8108, %8117 ]
  %8486 = phi float [ %7324, %7318 ], [ %8109, %8086 ], [ %8479, %8460 ], [ %8109, %8117 ]
  %8487 = phi float [ %7325, %7318 ], [ %8110, %8086 ], [ %8480, %8460 ], [ %8110, %8117 ]
  %8488 = phi float [ %7326, %7318 ], [ %8111, %8086 ], [ %8481, %8460 ], [ %8111, %8117 ]
  %8489 = phi float [ %7327, %7318 ], [ %8112, %8086 ], [ %8482, %8460 ], [ %8112, %8117 ]
  %8490 = phi float [ %7328, %7318 ], [ %8113, %8086 ], [ %8483, %8460 ], [ %8113, %8117 ]
  %8491 = phi float [ %7329, %7318 ], [ %8096, %8086 ], [ %8467, %8460 ], [ %8096, %8117 ]
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 2
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 3
  %8495 = fmul fast float %8493, %104
  %8496 = fmul fast float %8494, %105
  %8497 = call float @dx.op.unary.f32(i32 7, float %8495)  ; Saturate(value)
  %8498 = call float @dx.op.unary.f32(i32 7, float %8496)  ; Saturate(value)
  %8499 = select i1 %7060, i32 2, i32 0
  %8500 = or i32 %8499, 1
  %8501 = uitofp i32 %8500 to float
  %8502 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8497, float %8498, float %8501, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8503 = extractvalue %dx.types.ResRet.f32 %8502, 0
  %8504 = extractvalue %dx.types.ResRet.f32 %8502, 1
  %8505 = extractvalue %dx.types.ResRet.f32 %8502, 2
  %8506 = extractvalue %dx.types.ResRet.f32 %8502, 3
  %8507 = add nuw nsw i32 %8499, 2
  %8508 = uitofp i32 %8507 to float
  %8509 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %8497, float %8498, float %8508, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8510 = extractvalue %dx.types.ResRet.f32 %8509, 0
  %8511 = extractvalue %dx.types.ResRet.f32 %8509, 1
  %8512 = extractvalue %dx.types.ResRet.f32 %8509, 2
  %8513 = extractvalue %dx.types.ResRet.f32 %8509, 3
  %8514 = call float @dx.op.binary.f32(i32 35, float %8504, float %8505)  ; FMax(a,b)
  %8515 = call float @dx.op.binary.f32(i32 35, float %8503, float %8514)  ; FMax(a,b)
  %8516 = call float @dx.op.binary.f32(i32 35, float %8515, float %8506)  ; FMax(a,b)
  %8517 = call float @dx.op.binary.f32(i32 36, float %8511, float %8512)  ; FMin(a,b)
  %8518 = call float @dx.op.binary.f32(i32 36, float %8510, float %8517)  ; FMin(a,b)
  %8519 = call float @dx.op.binary.f32(i32 36, float %8518, float %8513)  ; FMin(a,b)
  %8520 = fmul fast float %8516, 2.550000e+02
  %8521 = fadd fast float %8520, 0x3F70101020000000
  %8522 = fptoui float %8521 to i32
  %8523 = fmul fast float %8519, 2.550000e+02
  %8524 = fadd fast float %8523, 0x3F70101020000000
  %8525 = fptoui float %8524 to i32
  %8526 = icmp ult i32 %8522, %8525
  br i1 %8526, label %8527, label %8696

; <label>:8527                                    ; preds = %8484
  %8528 = fcmp fast ogt float %94, 9.843750e-01
  %8529 = fadd fast float %7322, -4.000000e+00
  %8530 = select i1 %8528, float -4.000000e+00, float %8529
  %8531 = call float @dx.op.binary.f32(i32 35, float %8530, float 0.000000e+00)  ; FMax(a,b)
  %8532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8533 = extractvalue %dx.types.CBufRet.f32 %8532, 0
  %8534 = fadd fast float %8533, %8531
  %8535 = extractvalue %dx.types.CBufRet.f32 %8532, 2
  %8536 = fmul fast float %8534, %8535
  %8537 = call float @dx.op.unary.f32(i32 23, float %8536)  ; Log(value)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8532, 3
  %8539 = fmul fast float %8538, %8537
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 2
  %8542 = fmul fast float %8539, %8541
  %8543 = call float @dx.op.unary.f32(i32 7, float %8542)  ; Saturate(value)
  %8544 = uitofp i32 %8522 to float
  %8545 = uitofp i32 %8525 to float
  %8546 = fadd fast float %8544, 5.000000e-01
  %8547 = fadd fast float %8545, 5.000000e-01
  %8548 = fmul fast float %8541, %8546
  %8549 = fmul fast float %8541, %8547
  %8550 = fadd fast float %8548, 0x3F0FFB4800000000
  %8551 = fadd fast float %8549, 0xBF0FFB4800000000
  %8552 = call float @dx.op.binary.f32(i32 35, float %8543, float %8550)  ; FMax(a,b)
  %8553 = call float @dx.op.binary.f32(i32 36, float %8552, float %8551)  ; FMin(a,b)
  %8554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8555 = extractvalue %dx.types.CBufRet.f32 %8554, 1
  %8556 = extractvalue %dx.types.CBufRet.f32 %8554, 2
  %8557 = extractvalue %dx.types.CBufRet.f32 %8554, 0
  %8558 = select i1 %7060, float %8557, float 0.000000e+00
  %8559 = fmul fast float %8555, %8553
  %8560 = fadd fast float %8558, %8559
  %8561 = fadd fast float %8558, %8556
  %8562 = fsub fast float %8555, %8556
  %8563 = fadd fast float %8562, %8558
  %8564 = call float @dx.op.binary.f32(i32 35, float %8560, float %8561)  ; FMax(a,b)
  %8565 = call float @dx.op.binary.f32(i32 36, float %8564, float %8563)  ; FMin(a,b)
  %8566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %8497, float %8498, float %8565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8567 = extractvalue %dx.types.ResRet.f32 %8566, 0
  %8568 = extractvalue %dx.types.ResRet.f32 %8566, 1
  %8569 = extractvalue %dx.types.ResRet.f32 %8566, 2
  %8570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8571 = extractvalue %dx.types.CBufRet.i32 %8570, 0
  %8572 = extractvalue %dx.types.CBufRet.i32 %8570, 1
  %8573 = uitofp i32 %8571 to float
  %8574 = uitofp i32 %8572 to float
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8577 = extractvalue %dx.types.CBufRet.f32 %8575, 1
  %8578 = fmul fast float %8573, %8497
  %8579 = fmul fast float %8574, %8498
  %8580 = fadd fast float %8578, -5.000000e-01
  %8581 = fadd fast float %8579, -5.000000e-01
  %8582 = call float @dx.op.unary.f32(i32 22, float %8580)  ; Frc(value)
  %8583 = call float @dx.op.unary.f32(i32 22, float %8581)  ; Frc(value)
  %8584 = fmul fast float %8582, %8582
  %8585 = fmul fast float %8584, %8582
  %8586 = fsub fast float 3.000000e+00, %8582
  %8587 = fmul fast float %8584, %8586
  %8588 = fmul fast float %8582, 3.000000e+00
  %8589 = fmul fast float %8585, 3.000000e+00
  %8590 = fmul fast float %8584, 6.000000e+00
  %8591 = fsub fast float %8589, %8590
  %8592 = fadd fast float %8591, 4.000000e+00
  %8593 = fmul fast float %8592, 0x3FC5555560000000
  %8594 = fmul fast float %8585, -3.000000e+00
  %8595 = fadd fast float %8584, %8582
  %8596 = fmul fast float %8595, 3.000000e+00
  %8597 = fadd fast float %8594, 1.000000e+00
  %8598 = fadd fast float %8597, %8596
  %8599 = fmul fast float %8585, 0x3FC5555560000000
  %8600 = fmul fast float %8583, %8583
  %8601 = fmul fast float %8600, %8583
  %8602 = fsub fast float 3.000000e+00, %8583
  %8603 = fmul fast float %8600, %8602
  %8604 = fmul fast float %8583, 3.000000e+00
  %8605 = fmul fast float %8601, 3.000000e+00
  %8606 = fmul fast float %8600, 6.000000e+00
  %8607 = fsub fast float %8605, %8606
  %8608 = fadd fast float %8607, 4.000000e+00
  %8609 = fmul fast float %8608, 0x3FC5555560000000
  %8610 = fmul fast float %8601, -3.000000e+00
  %8611 = fadd fast float %8600, %8583
  %8612 = fmul fast float %8611, 3.000000e+00
  %8613 = fadd fast float %8610, 1.000000e+00
  %8614 = fadd fast float %8613, %8612
  %8615 = fmul fast float %8601, 0x3FC5555560000000
  %8616 = fadd fast float %8582, 1.000000e+00
  %8617 = fsub fast float 1.000000e+00, %8588
  %8618 = fadd fast float %8617, %8587
  %8619 = fadd fast float %8618, %8592
  %8620 = fmul fast float %8619, 0x3FC5555560000000
  %8621 = fdiv fast float %8593, %8620
  %8622 = fsub fast float %8616, %8621
  %8623 = fsub fast float 1.000000e+00, %8582
  %8624 = fadd fast float %8598, %8585
  %8625 = fmul fast float %8624, 0x3FC5555560000000
  %8626 = fdiv fast float %8599, %8625
  %8627 = fadd fast float %8623, %8626
  %8628 = fadd fast float %8583, 1.000000e+00
  %8629 = fsub fast float 1.000000e+00, %8604
  %8630 = fadd fast float %8629, %8603
  %8631 = fadd fast float %8630, %8608
  %8632 = fmul fast float %8631, 0x3FC5555560000000
  %8633 = fdiv fast float %8609, %8632
  %8634 = fsub fast float %8628, %8633
  %8635 = fsub fast float 1.000000e+00, %8583
  %8636 = fadd fast float %8614, %8601
  %8637 = fmul fast float %8636, 0x3FC5555560000000
  %8638 = fdiv fast float %8615, %8637
  %8639 = fadd fast float %8638, %8635
  %8640 = fmul fast float %8622, %8576
  %8641 = fsub fast float %8497, %8640
  %8642 = fmul fast float %8627, %8576
  %8643 = fadd fast float %8642, %8497
  %8644 = fmul fast float %8639, %8577
  %8645 = fadd fast float %8644, %8498
  %8646 = fmul fast float %8634, %8577
  %8647 = fsub fast float %8498, %8646
  %8648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8641, float %8647, float %8565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8649 = extractvalue %dx.types.ResRet.f32 %8648, 0
  %8650 = extractvalue %dx.types.ResRet.f32 %8648, 1
  %8651 = extractvalue %dx.types.ResRet.f32 %8648, 2
  %8652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8643, float %8647, float %8565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8653 = extractvalue %dx.types.ResRet.f32 %8652, 0
  %8654 = extractvalue %dx.types.ResRet.f32 %8652, 1
  %8655 = extractvalue %dx.types.ResRet.f32 %8652, 2
  %8656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8641, float %8645, float %8565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8657 = extractvalue %dx.types.ResRet.f32 %8656, 0
  %8658 = extractvalue %dx.types.ResRet.f32 %8656, 1
  %8659 = extractvalue %dx.types.ResRet.f32 %8656, 2
  %8660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %8643, float %8645, float %8565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8661 = extractvalue %dx.types.ResRet.f32 %8660, 0
  %8662 = extractvalue %dx.types.ResRet.f32 %8660, 1
  %8663 = extractvalue %dx.types.ResRet.f32 %8660, 2
  %8664 = fsub fast float %8657, %8649
  %8665 = fsub fast float %8658, %8650
  %8666 = fsub fast float %8659, %8651
  %8667 = fmul fast float %8664, %8637
  %8668 = fmul fast float %8665, %8637
  %8669 = fmul fast float %8666, %8637
  %8670 = fadd fast float %8667, %8649
  %8671 = fadd fast float %8668, %8650
  %8672 = fadd fast float %8669, %8651
  %8673 = fsub fast float %8661, %8653
  %8674 = fsub fast float %8662, %8654
  %8675 = fsub fast float %8663, %8655
  %8676 = fmul fast float %8673, %8637
  %8677 = fmul fast float %8674, %8637
  %8678 = fmul fast float %8675, %8637
  %8679 = fsub fast float %8653, %8670
  %8680 = fadd fast float %8679, %8676
  %8681 = fsub fast float %8654, %8671
  %8682 = fadd fast float %8681, %8677
  %8683 = fsub fast float %8655, %8672
  %8684 = fadd fast float %8683, %8678
  %8685 = fmul fast float %8680, %8625
  %8686 = fmul fast float %8682, %8625
  %8687 = fmul fast float %8684, %8625
  %8688 = fadd fast float %8685, %8670
  %8689 = fadd fast float %8686, %8671
  %8690 = fadd fast float %8687, %8672
  %8691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.f32 %8691, 1
  %8693 = fmul fast float %8688, %8692
  %8694 = fmul fast float %8689, %8692
  %8695 = fmul fast float %8690, %8692
  br label %8696

; <label>:8696                                    ; preds = %8527, %8484
  %8697 = phi float [ %8567, %8527 ], [ 1.000000e+00, %8484 ]
  %8698 = phi float [ %8568, %8527 ], [ 1.000000e+00, %8484 ]
  %8699 = phi float [ %8569, %8527 ], [ 1.000000e+00, %8484 ]
  %8700 = phi float [ %8693, %8527 ], [ 0.000000e+00, %8484 ]
  %8701 = phi float [ %8694, %8527 ], [ 0.000000e+00, %8484 ]
  %8702 = phi float [ %8695, %8527 ], [ 0.000000e+00, %8484 ]
  %8703 = fmul fast float %8700, %7038
  %8704 = fmul fast float %8701, %7038
  %8705 = fmul fast float %8702, %7038
  %8706 = fmul fast float %8697, %8491
  %8707 = call float @dx.op.dot3.f32(i32 55, float %8697, float %8698, float %8699, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8708 = call float @dx.op.dot3.f32(i32 55, float %8703, float %8704, float %8705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8709 = select i1 %250, float %8707, float %8697
  %8710 = select i1 %250, float %8707, float %8698
  %8711 = select i1 %250, float 1.000000e+00, float %8699
  %8712 = select i1 %250, float %8708, float %8703
  %8713 = select i1 %250, float 0.000000e+00, float %8704
  %8714 = select i1 %250, float 0.000000e+00, float %8705
  %8715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8716 = extractvalue %dx.types.CBufRet.i32 %8715, 3
  %8717 = and i32 %8716, 3
  %8718 = icmp ne i32 %8717, 0
  %8719 = and i32 %8716, 4
  %8720 = icmp ne i32 %8719, 0
  %8721 = and i1 %8718, %8720
  %8722 = and i1 %250, %8721
  br i1 %8722, label %8723, label %8729

; <label>:8723                                    ; preds = %8696
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 1
  %8726 = fadd fast float %8706, -1.000000e+00
  %8727 = fmul fast float %8725, %8726
  %8728 = fadd fast float %8727, 1.000000e+00
  br label %8729

; <label>:8729                                    ; preds = %8723, %8696
  %8730 = phi float [ %8728, %8723 ], [ %8706, %8696 ]
  %8731 = fadd fast float %8488, %8485
  %8732 = fmul fast float %8709, %8731
  %8733 = fadd fast float %8732, %8712
  %8734 = fadd fast float %8489, %8486
  %8735 = fmul fast float %8710, %8734
  %8736 = fadd fast float %8735, %8713
  %8737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8738 = extractvalue %dx.types.CBufRet.f32 %8737, 0
  br i1 %250, label %8739, label %8762

; <label>:8739                                    ; preds = %8729
  %8740 = fadd fast float %8733, %8736
  %8741 = fmul fast float %8738, %8740
  %8742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8743 = extractvalue %dx.types.CBufRet.f32 %8742, 3
  %8744 = extractvalue %dx.types.CBufRet.f32 %7042, 1
  %8745 = fsub fast float %7047, %7041
  %8746 = fadd fast float %8745, %7048
  %8747 = fsub fast float %8746, %8744
  %8748 = extractvalue %dx.types.CBufRet.f32 %7042, 2
  %8749 = fmul fast float %8747, %8748
  %8750 = call float @dx.op.unary.f32(i32 7, float %8749)  ; Saturate(value)
  %8751 = fsub fast float %8750, %8743
  %8752 = fmul fast float %8751, %8730
  %8753 = fadd fast float %8752, %8743
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 0
  %8756 = fsub fast float %8753, %8755
  %8757 = fmul fast float %8756, 1.000000e+01
  %8758 = call float @dx.op.unary.f32(i32 7, float %8757)  ; Saturate(value)
  %8759 = fmul fast float %8758, %7037
  %8760 = fadd fast float %8759, %7038
  %8761 = fmul fast float %8760, %8753
  br label %8786

; <label>:8762                                    ; preds = %8729
  %8763 = fadd fast float %8490, %8487
  %8764 = fmul fast float %8711, %8763
  %8765 = fadd fast float %8764, %8714
  %8766 = fmul fast float %8738, %8733
  %8767 = fmul fast float %8738, %8736
  %8768 = fmul fast float %8738, %8765
  %8769 = call float @dx.op.binary.f32(i32 35, float %8767, float %8768)  ; FMax(a,b)
  %8770 = call float @dx.op.binary.f32(i32 35, float %8766, float %8769)  ; FMax(a,b)
  %8771 = call float @dx.op.binary.f32(i32 35, float %8770, float %7038)  ; FMax(a,b)
  %8772 = fcmp fast ugt float %8771, 0x3F10000000000000
  br i1 %8772, label %8774, label %8773

; <label>:8773                                    ; preds = %8762
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8774

; <label>:8774                                    ; preds = %8773, %8762
  %8775 = add i32 %54, 356
  %8776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %8775, i32 undef)  ; BufferLoad(srv,index,wot)
  %8777 = extractvalue %dx.types.ResRet.i32 %8776, 0
  %8778 = and i32 %8777, 32
  %8779 = icmp eq i32 %8778, 0
  br i1 %8779, label %8786, label %8780

; <label>:8780                                    ; preds = %8774
  %8781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8782 = extractvalue %dx.types.CBufRet.f32 %8781, 0
  %8783 = fmul fast float %8782, 0x3FE99999A0000000
  %8784 = fadd fast float %8782, %8766
  %8785 = fadd fast float %8783, %8768
  br label %8786

; <label>:8786                                    ; preds = %8780, %8774, %8739
  %8787 = phi float [ %8741, %8739 ], [ %8784, %8780 ], [ %8766, %8774 ]
  %8788 = phi float [ %8761, %8739 ], [ %8767, %8780 ], [ %8767, %8774 ]
  %8789 = phi float [ %8760, %8739 ], [ %8785, %8780 ], [ %8768, %8774 ]
  %8790 = phi float [ %8760, %8739 ], [ %7038, %8780 ], [ %7038, %8774 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8791 = call float @dx.op.binary.f32(i32 36, float %8787, float 3.225500e+04)  ; FMin(a,b)
  %8792 = call float @dx.op.binary.f32(i32 36, float %8788, float 3.225500e+04)  ; FMin(a,b)
  %8793 = call float @dx.op.binary.f32(i32 36, float %8789, float 3.225500e+04)  ; FMin(a,b)
  %8794 = call float @dx.op.binary.f32(i32 36, float %8790, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8791)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8792)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8793)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8794)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

