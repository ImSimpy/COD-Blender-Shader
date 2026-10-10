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
; ENTITY_IDS               0    yz        12     NONE    uint    y  
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
; shader hash: 99280f692cb5431fe64a732cadef1315
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
; ENTITY_IDS               0        nointerpolation       
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
;                                   texture    byte         r/o      T4     t22,space1     1
;                                   texture     f32          3d      T5     t52,space2     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     f32          2d      T7     t69,space2     1
;                                   texture    byte         r/o      T8     t18,space1     1
;                                   texture    byte         r/o      T9     t19,space1     1
;                                   texture    byte         r/o     T10     t20,space1     1
;                                   texture    byte         r/o     T11     t21,space1     1
;                                   texture     f32          2d     T12     t37,space2     1
;                                   texture     f32          2d     T13             t0     1
;                                   texture     f32          2d     T14     t58,space2     1
;                                   texture     f32          2d     T15     t59,space2     1
;                                   texture     f32          2d     T16     t60,space2     1
;                                   texture    byte         r/o     T17     t45,space1     1
;                                   texture    byte         r/o     T18     t46,space1     1
;                                   texture    byte         r/o     T19     t47,space1     1
;                                   texture    byte         r/o     T20     t48,space1     1
;                                   texture     f32          2d     T21     t57,space2     1
;                                   texture    byte         r/o     T22     t69,space1     1
;                                   texture     u32          2d     T23     t56,space2     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture    byte         r/o     T25     t10,space1     1
;                                   texture    byte         r/o     T26      t1,space1     1
;                                   texture     f32          1d     T27     t32,space2     1
;                                   texture     f32     2darray     T28      t8,space2     1
;                                   texture     f32          2d     T29      t1,space2     1
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
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = alloca [4 x i32], align 4
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = alloca [12 x float], align 4
  %99 = alloca [12 x float], align 4
  %100 = alloca [3 x float], align 4
  %101 = alloca [3 x float], align 4
  %102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fmul fast float %105, %94
  %107 = fmul fast float %105, %95
  %108 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %109 = bitcast float %108 to i32
  %110 = ashr i32 %109, 1
  %111 = sub nsw i32 1597250115, %110
  %112 = bitcast i32 %111 to float
  %113 = fmul fast float %112, %85
  %114 = fmul fast float %112, %86
  %115 = fmul fast float %112, %87
  %116 = fmul fast float %86, %83
  %117 = fmul fast float %87, %82
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %87, %81
  %120 = fmul fast float %85, %83
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %85, %82
  %123 = fmul fast float %86, %81
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %118, %84
  %126 = fmul fast float %121, %84
  %127 = fmul fast float %124, %84
  %128 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %129 = bitcast float %128 to i32
  %130 = ashr i32 %129, 1
  %131 = sub nsw i32 1597250115, %130
  %132 = bitcast i32 %131 to float
  %133 = fmul fast float %132, %74
  %134 = fmul fast float %132, %75
  %135 = fmul fast float %132, %76
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = fcmp fast une float %137, 0.000000e+00
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fmul fast float %106, 2.000000e+00
  %143 = fmul fast float %142, %140
  %144 = fmul fast float %107, 2.000000e+00
  %145 = fmul fast float %144, %141
  %146 = fsub fast float 1.000000e+00, %143
  %147 = fsub fast float 1.000000e+00, %145
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = select i1 %138, float %149, float %153
  %157 = select i1 %138, float %150, float %154
  %158 = select i1 %138, float %151, float %155
  %159 = fmul fast float %156, %146
  %160 = fmul fast float %157, %146
  %161 = fmul fast float %158, %146
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = select i1 %138, float %163, float %167
  %171 = select i1 %138, float %164, float %168
  %172 = select i1 %138, float %165, float %169
  %173 = fmul fast float %170, %147
  %174 = fmul fast float %171, %147
  %175 = fmul fast float %172, %147
  %176 = fadd fast float %173, %159
  %177 = fadd fast float %174, %160
  %178 = fadd fast float %175, %161
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = select i1 %138, float %180, float %184
  %188 = select i1 %138, float %181, float %185
  %189 = select i1 %138, float %182, float %186
  %190 = fadd fast float %176, %187
  %191 = fadd fast float %177, %188
  %192 = fadd fast float %178, %189
  %193 = fmul fast float %190, %97
  %194 = fmul fast float %191, %97
  %195 = fmul fast float %192, %97
  %196 = shl i32 %56, 5
  %197 = add i32 %196, 4194304
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = extractvalue %dx.types.ResRet.i32 %198, 2
  %202 = extractvalue %dx.types.ResRet.i32 %198, 3
  %203 = add i32 %196, 4194320
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = extractvalue %dx.types.ResRet.i32 %204, 1
  %207 = bitcast i32 %205 to float
  %208 = bitcast i32 %206 to float
  %209 = fmul fast float %106, 5.000000e-01
  %210 = fmul fast float %107, 5.000000e-01
  %211 = fptosi float %209 to i32
  %212 = fptosi float %210 to i32
  %213 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = lshr i32 %214, 18
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F4C00EBA0000000
  %218 = call float @dx.op.unary.f32(i32 21, float %217)  ; Exp(value)
  %219 = fadd fast float %218, -1.000000e+00
  %220 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %221 = extractvalue %dx.types.Dimensions %220, 0
  %222 = sitofp i32 %221 to float
  %223 = extractvalue %dx.types.Dimensions %220, 1
  %224 = sitofp i32 %223 to float
  %225 = fcmp fast oge float %209, %222
  %226 = fcmp fast oge float %210, %224
  %227 = or i1 %225, %226
  %228 = select i1 %227, float 0x4197782600000000, float %219
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %232 = fmul fast float %230, %106
  %233 = fmul fast float %231, %107
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 114688
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %237, float %232, float 0.000000e+00
  %239 = select i1 %237, float %233, float 0.000000e+00
  %240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %238, float %239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fmul fast float %241, 2.550000e+02
  %243 = fptoui float %242 to i32
  %244 = select i1 %237, i32 %243, i32 0
  %245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %246 = extractvalue %dx.types.CBufRet.i32 %245, 3
  %247 = and i32 %246, 3
  %248 = icmp ne i32 %247, 0
  %249 = and i32 %246, 4
  %250 = icmp ne i32 %249, 0
  %251 = and i1 %248, %250
  br i1 %251, label %252, label %261

; <label>:252                                     ; preds = %0
  %253 = fmul fast float %141, %107
  %254 = fmul fast float %140, %106
  %255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %254, float %253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fsub fast float 1.000000e+00, %256
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = fcmp fast olt float %257, %259
  br label %264

; <label>:261                                     ; preds = %0
  %262 = icmp eq i32 %249, 0
  %263 = and i1 %248, %262
  br label %264

; <label>:264                                     ; preds = %261, %252
  %265 = phi i1 [ %260, %252 ], [ %263, %261 ]
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %268 = fmul fast float %267, 0x3FE3C6EF40000000
  %269 = frem fast float %106, 2.560000e+02
  %270 = frem fast float %107, 2.560000e+02
  %271 = fptoui float %269 to i32
  %272 = fptoui float %270 to i32
  %273 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %271, i32 %272, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = fadd fast float %274, %268
  %276 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %277 = add i32 %55, 156
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %289 = add i32 %55, 216
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %303 = add i32 %55, 36
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %55, 288
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %55, 172
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %331 = add i32 %55, 232
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %345 = add i32 %55, 52
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %55, 304
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %55, 188
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %373 = add i32 %55, 248
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %387 = add i32 %55, 68
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = add i32 %55, 320
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 65535
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %396, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = fmul fast float %398, 0x3F50624DE0000000
  %402 = fmul fast float %400, 0x3F50624DE0000000
  %403 = add i32 %55, 204
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = shl i32 %405, 4
  %407 = and i32 %406, 32752
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %405, 7
  %410 = and i32 %409, 32752
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %405, 22
  %413 = shl nuw nsw i32 %412, 5
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = add i32 %55, 264
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 255
  %419 = uitofp i32 %418 to float
  %420 = fmul fast float %419, 0x3F70101020000000
  %421 = lshr i32 %417, 8
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = lshr i32 %417, 16
  %426 = and i32 %425, 255
  %427 = uitofp i32 %426 to float
  %428 = fmul fast float %427, 0x3F70101020000000
  %429 = add i32 %55, 84
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 65535
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %431, 16
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = add i32 %55, 336
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 65535
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %438, 16
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = fmul fast float %440, 0x3F50624DE0000000
  %444 = fmul fast float %442, 0x3F50624DE0000000
  %445 = add i32 %55, 348
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 32
  %449 = icmp eq i32 %448, 0
  %450 = and i32 %447, 64
  %451 = icmp eq i32 %450, 0
  %452 = and i32 %447, 128
  %453 = icmp eq i32 %452, 0
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 2
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %473, label %458

; <label>:458                                     ; preds = %264
  %459 = add i32 %55, 492
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = add i32 %461, 0
  %463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %464 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %463, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = extractvalue %dx.types.ResRet.f32 %464, 1
  %467 = extractvalue %dx.types.ResRet.f32 %464, 2
  %468 = extractvalue %dx.types.ResRet.f32 %464, 3
  %469 = fmul fast float %468, %90
  %470 = fmul fast float %465, %91
  %471 = fmul fast float %466, %92
  %472 = fmul fast float %467, %93
  br label %473

; <label>:473                                     ; preds = %458, %264
  %474 = phi float [ %93, %264 ], [ %472, %458 ]
  %475 = phi float [ %92, %264 ], [ %471, %458 ]
  %476 = phi float [ %91, %264 ], [ %470, %458 ]
  %477 = phi float [ %90, %264 ], [ %469, %458 ]
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 2
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %501, label %482

; <label>:482                                     ; preds = %473
  %483 = add i32 %55, 44
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %485, 1
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %487, float %476, float 1.000000e+00
  %489 = add i32 %55, 60
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 1
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %475, float 1.000000e+00
  %495 = add i32 %55, 76
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 1
  %499 = icmp ne i32 %498, 0
  %500 = select i1 %499, float %474, float 1.000000e+00
  br label %501

; <label>:501                                     ; preds = %482, %473
  %502 = phi float [ %474, %473 ], [ %500, %482 ]
  %503 = phi float [ %475, %473 ], [ %494, %482 ]
  %504 = phi float [ %476, %473 ], [ %488, %482 ]
  %505 = lshr i32 %479, 20
  %506 = and i32 %505, 3
  %507 = add nuw nsw i32 %506, 1
  %508 = add i32 %55, 24
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = add i32 %55, 28
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = or i32 %513, %510
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %1050, label %516

; <label>:516                                     ; preds = %501
  %517 = and i32 %510, 262144
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %518, float %61, float 1.000000e+00
  %520 = select i1 %518, float %62, float 0.000000e+00
  %521 = select i1 %518, float %63, float 0.000000e+00
  %522 = select i1 %518, float %64, float 1.000000e+00
  %523 = select i1 %518, float %65, float %88
  %524 = select i1 %518, float %66, float %89
  %525 = add i32 %55, 284
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = lshr i32 %527, 16
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = fmul fast float %529, 0x3F50624DE0000000
  %531 = add i32 %55, 88
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = lshr i32 %533, 16
  %535 = and i32 %534, 255
  %536 = lshr i32 %533, 24
  %537 = add i32 %55, 292
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 65535
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = lshr i32 %539, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = add i32 %55, 32
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = lshr i32 %546, 22
  %548 = shl nuw nsw i32 %547, 5
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = shl i32 %546, 4
  %551 = and i32 %550, 32752
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %546, 7
  %554 = and i32 %553, 32752
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %558 = fmul fast float %557, 1.000000e+03
  %559 = fmul fast float %317, %558
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = fadd fast float %560, %307
  %562 = fmul fast float %318, %558
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = fadd fast float %563, %309
  %565 = fmul fast float %530, %558
  %566 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  %567 = fmul fast float %566, 0x401921FB60000000
  %568 = fadd fast float %567, %549
  %569 = call float @dx.op.unary.f32(i32 13, float %568)  ; Sin(value)
  %570 = call float @dx.op.unary.f32(i32 12, float %568)  ; Cos(value)
  %571 = fsub fast float -0.000000e+00, %569
  %572 = fadd fast float %523, -5.000000e-01
  %573 = fadd fast float %524, -5.000000e-01
  %574 = fmul fast float %541, %572
  %575 = fmul fast float %543, %573
  %576 = fadd fast float %574, 5.000000e-01
  %577 = fadd fast float %575, 5.000000e-01
  %578 = fmul fast float %552, %576
  %579 = fmul fast float %555, %577
  %580 = fmul fast float %570, %578
  %581 = call float @dx.op.tertiary.f32(i32 46, float %571, float %579, float %580)  ; FMad(a,b,c)
  %582 = fmul fast float %569, %578
  %583 = call float @dx.op.tertiary.f32(i32 46, float %570, float %579, float %582)  ; FMad(a,b,c)
  %584 = fadd fast float %561, %581
  %585 = fadd fast float %564, %583
  %586 = icmp ugt i32 %535, 1
  %587 = icmp ugt i32 %533, 33554431
  %588 = or i1 %587, %586
  br i1 %588, label %589, label %614

; <label>:589                                     ; preds = %516
  %590 = add i32 %55, 228
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = lshr i32 %592, 16
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = fmul fast float %557, %594
  %596 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %597 = mul nuw nsw i32 %535, %536
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %596, %598
  %600 = call float @dx.op.unary.f32(i32 27, float %599)  ; Round_ni(value)
  %601 = fptoui float %600 to i32
  %602 = urem i32 %601, %535
  %603 = udiv i32 %601, %536
  %604 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  %605 = call float @dx.op.unary.f32(i32 22, float %585)  ; Frc(value)
  %606 = uitofp i32 %602 to float
  %607 = uitofp i32 %603 to float
  %608 = fadd fast float %604, %606
  %609 = fadd fast float %605, %607
  %610 = uitofp i32 %535 to float
  %611 = uitofp i32 %536 to float
  %612 = fdiv fast float %608, %610
  %613 = fdiv fast float %609, %611
  br label %614

; <label>:614                                     ; preds = %589, %516
  %615 = phi float [ %612, %589 ], [ %584, %516 ]
  %616 = phi float [ %613, %589 ], [ %585, %516 ]
  %617 = and i32 %510, 256
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %665, label %619

; <label>:619                                     ; preds = %614
  %620 = add i32 %55, 440
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %624, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = add i32 %55, 100
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = shl i32 %629, 4
  %631 = and i32 %630, 32752
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %629, 7
  %634 = and i32 %633, 32752
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = fsub fast float 1.000000e+00, %477
  %637 = call float @dx.op.binary.f32(i32 35, float %636, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %638 = bitcast float %477 to i32
  %639 = sitofp i32 %638 to float
  %640 = fadd fast float %639, 0xC1CFBF8940000000
  %641 = fmul fast float %635, %640
  %642 = fadd fast float %641, 0x41CFBF8940000000
  %643 = fptosi float %642 to i32
  %644 = bitcast i32 %643 to float
  %645 = bitcast float %637 to i32
  %646 = sitofp i32 %645 to float
  %647 = fadd fast float %646, 0xC1CFBF8940000000
  %648 = fmul fast float %647, %635
  %649 = fadd fast float %648, 0x41CFBF8940000000
  %650 = fptosi float %649 to i32
  %651 = bitcast i32 %650 to float
  %652 = fmul fast float %644, %632
  %653 = fmul fast float %651, %632
  %654 = fsub fast float %637, %652
  %655 = fadd fast float %653, %637
  %656 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %657 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %658 = fsub fast float %626, %656
  %659 = fsub fast float %657, %656
  %660 = bitcast float %659 to i32
  %661 = sub nsw i32 2129859010, %660
  %662 = bitcast i32 %661 to float
  %663 = fmul fast float %662, %658
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  br label %665

; <label>:665                                     ; preds = %619, %614
  %666 = phi float [ %664, %619 ], [ %477, %614 ]
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 128
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %687, label %671

; <label>:671                                     ; preds = %665
  %672 = add i32 %55, 424
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %676, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 524288
  %682 = icmp ne i32 %681, 0
  %683 = fcmp fast ogt float %678, 0x3FE0101020000000
  %684 = select i1 %683, float 1.000000e+00, float 0.000000e+00
  %685 = select i1 %682, float %684, float %678
  %686 = fmul fast float %685, %666
  br label %687

; <label>:687                                     ; preds = %671, %665
  %688 = phi float [ %686, %671 ], [ %666, %665 ]
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 16
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %891, label %693

; <label>:693                                     ; preds = %687
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %55, 376
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %698, 0
  %700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %700, %dx.types.Handle %102, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = extractvalue %dx.types.ResRet.f32 %701, 3
  %706 = and i32 %695, 255
  %707 = uitofp i32 %706 to float
  %708 = lshr i32 %695, 8
  %709 = and i32 %708, 255
  %710 = uitofp i32 %709 to float
  %711 = fmul fast float %705, %707
  %712 = fadd fast float %711, %710
  %713 = fmul fast float %712, 0x3F70101000000000
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 512
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %726, label %718

; <label>:718                                     ; preds = %693
  %719 = add i32 %55, 460
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = add i32 %721, 0
  %723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %723, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  br label %726

; <label>:726                                     ; preds = %718, %693
  %727 = phi float [ %725, %718 ], [ 1.000000e+00, %693 ]
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 33554432
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %838, label %732

; <label>:732                                     ; preds = %726
  %733 = add i32 %55, 224
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 65535
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = lshr i32 %735, 16
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = add i32 %55, 228
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 65535
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = lshr i32 %746, 24
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = and i32 %746, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101020000000
  %753 = lshr i32 %746, 8
  %754 = and i32 %753, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101020000000
  %757 = lshr i32 %746, 16
  %758 = and i32 %757, 255
  %759 = uitofp i32 %758 to float
  %760 = fmul fast float %759, 0x3F70101020000000
  %761 = add i32 %55, 220
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %778 = bitcast float %702 to i32
  %779 = ashr i32 %778, 1
  %780 = sub nsw i32 1597463174, %779
  %781 = bitcast i32 %780 to float
  %782 = fmul fast float %702, 5.000000e-01
  %783 = fmul fast float %781, %781
  %784 = fmul fast float %783, %782
  %785 = fsub fast float 1.500000e+00, %784
  %786 = fmul fast float %781, %702
  %787 = fmul fast float %786, %785
  %788 = bitcast float %703 to i32
  %789 = ashr i32 %788, 1
  %790 = sub nsw i32 1597463174, %789
  %791 = bitcast i32 %790 to float
  %792 = fmul fast float %703, 5.000000e-01
  %793 = fmul fast float %791, %791
  %794 = fmul fast float %793, %792
  %795 = fsub fast float 1.500000e+00, %794
  %796 = fmul fast float %791, %703
  %797 = fmul fast float %796, %795
  %798 = bitcast float %704 to i32
  %799 = ashr i32 %798, 1
  %800 = sub nsw i32 1597463174, %799
  %801 = bitcast i32 %800 to float
  %802 = fmul fast float %704, 5.000000e-01
  %803 = fmul fast float %801, %801
  %804 = fmul fast float %803, %802
  %805 = fsub fast float 1.500000e+00, %804
  %806 = fmul fast float %801, %704
  %807 = fmul fast float %806, %805
  %808 = fsub fast float %787, %769
  %809 = fsub fast float %797, %773
  %810 = fsub fast float %807, %777
  %811 = fmul fast float %808, %737
  %812 = fmul fast float %809, %739
  %813 = fmul fast float %810, %744
  %814 = fadd fast float %811, %752
  %815 = fadd fast float %812, %756
  %816 = fadd fast float %813, %760
  %817 = call float @dx.op.unary.f32(i32 7, float %814)  ; Saturate(value)
  %818 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %819 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %820 = fmul fast float %817, %817
  %821 = fmul fast float %818, %818
  %822 = fmul fast float %819, %819
  %823 = fsub fast float %820, %702
  %824 = fsub fast float %821, %703
  %825 = fsub fast float %822, %704
  %826 = fmul fast float %823, %727
  %827 = fmul fast float %824, %727
  %828 = fmul fast float %825, %727
  %829 = fadd fast float %826, %702
  %830 = fadd fast float %827, %703
  %831 = fadd fast float %828, %704
  %832 = fadd fast float %749, %713
  %833 = fsub fast float %832, %766
  %834 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %835 = fsub fast float %834, %713
  %836 = fmul fast float %835, %727
  %837 = fadd fast float %836, %713
  br label %891

; <label>:838                                     ; preds = %726
  %839 = and i32 %729, 134217728
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %875, label %841

; <label>:841                                     ; preds = %838
  %842 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %843 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %844 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %845 = fadd fast float %842, -5.000000e-01
  %846 = fadd fast float %843, -5.000000e-01
  %847 = fadd fast float %844, -5.000000e-01
  %848 = fmul fast float %845, %727
  %849 = fmul fast float %846, %727
  %850 = fmul fast float %847, %727
  %851 = fadd fast float %848, 5.000000e-01
  %852 = fadd fast float %849, 5.000000e-01
  %853 = fadd fast float %850, 5.000000e-01
  %854 = call float @dx.op.unary.f32(i32 24, float %702)  ; Sqrt(value)
  %855 = call float @dx.op.unary.f32(i32 24, float %703)  ; Sqrt(value)
  %856 = call float @dx.op.unary.f32(i32 24, float %704)  ; Sqrt(value)
  %857 = fmul fast float %851, 2.000000e+00
  %858 = fsub fast float 1.000000e+00, %857
  %859 = fmul fast float %858, %854
  %860 = fadd fast float %859, %857
  %861 = fmul fast float %860, %854
  %862 = fmul fast float %852, 2.000000e+00
  %863 = fsub fast float 1.000000e+00, %862
  %864 = fmul fast float %863, %855
  %865 = fadd fast float %864, %862
  %866 = fmul fast float %865, %855
  %867 = fmul fast float %853, 2.000000e+00
  %868 = fsub fast float 1.000000e+00, %867
  %869 = fmul fast float %868, %856
  %870 = fadd fast float %869, %867
  %871 = fmul fast float %870, %856
  %872 = fmul fast float %861, %861
  %873 = fmul fast float %866, %866
  %874 = fmul fast float %871, %871
  br label %891

; <label>:875                                     ; preds = %838
  %876 = fmul fast float %294, %294
  %877 = fmul fast float %298, %298
  %878 = fmul fast float %302, %302
  %879 = fadd fast float %876, -1.000000e+00
  %880 = fadd fast float %877, -1.000000e+00
  %881 = fadd fast float %878, -1.000000e+00
  %882 = fmul fast float %727, %879
  %883 = fmul fast float %727, %880
  %884 = fmul fast float %727, %881
  %885 = fadd fast float %882, 1.000000e+00
  %886 = fadd fast float %883, 1.000000e+00
  %887 = fadd fast float %884, 1.000000e+00
  %888 = fmul fast float %885, %702
  %889 = fmul fast float %886, %703
  %890 = fmul fast float %887, %704
  br label %891

; <label>:891                                     ; preds = %875, %841, %732, %687
  %892 = phi float [ %837, %732 ], [ %713, %841 ], [ %713, %875 ], [ 0x3FA23C0BE0000000, %687 ]
  %893 = phi float [ %829, %732 ], [ %872, %841 ], [ %888, %875 ], [ 1.000000e+00, %687 ]
  %894 = phi float [ %830, %732 ], [ %873, %841 ], [ %889, %875 ], [ 1.000000e+00, %687 ]
  %895 = phi float [ %831, %732 ], [ %874, %841 ], [ %890, %875 ], [ 1.000000e+00, %687 ]
  %896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.i32 %896, 1
  %898 = and i32 %897, 1
  %899 = icmp ne i32 %898, 0
  %900 = add i32 %55, 356
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %902, 32
  %904 = icmp ne i32 %903, 0
  %905 = and i1 %899, %904
  %906 = select i1 %905, float 1.000000e+00, float %893
  %907 = select i1 %905, float 0x3FD3333340000000, float %894
  %908 = select i1 %905, float 0x3FD3333340000000, float %895
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 32
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %985, label %913

; <label>:913                                     ; preds = %891
  %914 = add i32 %55, 92
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %55, 392
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = add i32 %919, 0
  %921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %921, %dx.types.Handle %102, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = extractvalue %dx.types.ResRet.f32 %922, 1
  %925 = extractvalue %dx.types.ResRet.f32 %922, 2
  %926 = extractvalue %dx.types.ResRet.f32 %922, 3
  %927 = and i32 %916, 255
  %928 = uitofp i32 %927 to float
  %929 = lshr i32 %916, 8
  %930 = and i32 %929, 255
  %931 = uitofp i32 %930 to float
  %932 = lshr i32 %916, 16
  %933 = and i32 %932, 255
  %934 = uitofp i32 %933 to float
  %935 = fmul fast float %934, 0x3F70101000000000
  %936 = fmul fast float %923, %928
  %937 = fadd fast float %936, %931
  %938 = fmul fast float %937, 0x3F70101000000000
  %939 = fadd fast float %924, -5.000000e-01
  %940 = fadd fast float %926, -5.000000e-01
  %941 = fmul fast float %939, %935
  %942 = fmul fast float %940, %935
  %943 = fadd fast float %941, 5.000000e-01
  %944 = fadd fast float %942, 5.000000e-01
  %945 = fmul fast float %943, 2.000000e+00
  %946 = fadd fast float %945, -1.000000e+00
  %947 = fmul fast float %944, 2.000000e+00
  %948 = fadd fast float %947, -1.000000e+00
  %949 = fadd fast float %946, %948
  %950 = fmul fast float %949, 5.000000e-01
  %951 = fsub fast float %946, %948
  %952 = fmul fast float %951, 5.000000e-01
  %953 = call float @dx.op.unary.f32(i32 6, float %950)  ; FAbs(value)
  %954 = fsub fast float 1.000000e+00, %953
  %955 = call float @dx.op.unary.f32(i32 6, float %952)  ; FAbs(value)
  %956 = fsub fast float %954, %955
  %957 = call float @dx.op.dot3.f32(i32 55, float %950, float %952, float %956, float %950, float %952, float %956)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = call float @dx.op.unary.f32(i32 25, float %957)  ; Rsqrt(value)
  %959 = fmul fast float %950, %958
  %960 = fmul fast float %952, %958
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 67108864
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %981, label %965

; <label>:965                                     ; preds = %913
  %966 = add i32 %55, 280
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 65535
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 65535
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = lshr i32 %968, 16
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = fsub fast float %938, %976
  %978 = fmul fast float %977, %970
  %979 = fadd fast float %978, %974
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  br label %981

; <label>:981                                     ; preds = %965, %913
  %982 = phi float [ %980, %965 ], [ %938, %913 ]
  %983 = call float @dx.op.dot2.f32(i32 54, float %959, float %960, float %519, float %520)  ; Dot2(ax,ay,bx,by)
  %984 = call float @dx.op.dot2.f32(i32 54, float %959, float %960, float %521, float %522)  ; Dot2(ax,ay,bx,by)
  br label %985

; <label>:985                                     ; preds = %981, %891
  %986 = phi float [ %982, %981 ], [ 0x3FD6666660000000, %891 ]
  %987 = phi float [ %983, %981 ], [ 0.000000e+00, %891 ]
  %988 = phi float [ %984, %981 ], [ 0.000000e+00, %891 ]
  %989 = phi float [ %925, %981 ], [ 1.000000e+00, %891 ]
  %990 = add i32 %55, 160
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 22
  %994 = shl nuw nsw i32 %993, 5
  %995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %994)  ; LegacyF16ToF32(value)
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = and i32 %997, 64
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1033, label %1000

; <label>:1000                                    ; preds = %985
  %1001 = add i32 %55, 408
  %1002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.i32 %1002, 0
  %1004 = add i32 %1003, 0
  %1005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1004, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = and i32 %1007, 131072
  %1009 = icmp eq i32 %1008, 0
  %1010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1005, %dx.types.Handle %102, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = fmul fast float %1011, %282
  %1015 = fmul fast float %1012, %285
  %1016 = fmul fast float %1013, %288
  br i1 %1009, label %1023, label %1017

; <label>:1017                                    ; preds = %1000
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = fmul fast float %1019, %1014
  %1021 = fmul fast float %1019, %1015
  %1022 = fmul fast float %1019, %1016
  br label %1023

; <label>:1023                                    ; preds = %1017, %1000
  %1024 = phi float [ %1020, %1017 ], [ %1014, %1000 ]
  %1025 = phi float [ %1021, %1017 ], [ %1015, %1000 ]
  %1026 = phi float [ %1022, %1017 ], [ %1016, %1000 ]
  %1027 = fmul fast float %1024, %995
  %1028 = select i1 %265, float %1027, float %1024
  %1029 = call float @dx.op.dot3.f32(i32 55, float %1028, float %1025, float %1026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = select i1 %265, float 0.000000e+00, float %1024
  %1031 = select i1 %265, float %1029, float %1025
  %1032 = select i1 %265, float 0.000000e+00, float %1026
  br label %1033

; <label>:1033                                    ; preds = %1023, %985
  %1034 = phi float [ %1030, %1023 ], [ 0.000000e+00, %985 ]
  %1035 = phi float [ %1031, %1023 ], [ 0.000000e+00, %985 ]
  %1036 = phi float [ %1032, %1023 ], [ 0.000000e+00, %985 ]
  %1037 = add i32 %55, 96
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 255
  %1041 = uitofp i32 %1040 to float
  %1042 = lshr i32 %1039, 8
  %1043 = and i32 %1042, 255
  %1044 = uitofp i32 %1043 to float
  %1045 = call float @dx.op.dot3.f32(i32 55, float %906, float %907, float %908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1046 = fmul fast float %1044, %1045
  %1047 = fadd fast float %1046, %1041
  %1048 = fmul fast float %1047, 0x3F70101020000000
  %1049 = call float @dx.op.unary.f32(i32 7, float %1048)  ; Saturate(value)
  br label %1050

; <label>:1050                                    ; preds = %1033, %501
  %1051 = phi float [ 0.000000e+00, %501 ], [ %987, %1033 ]
  %1052 = phi float [ 0.000000e+00, %501 ], [ %988, %1033 ]
  %1053 = phi float [ 0.000000e+00, %501 ], [ %906, %1033 ]
  %1054 = phi float [ 0.000000e+00, %501 ], [ %907, %1033 ]
  %1055 = phi float [ 0.000000e+00, %501 ], [ %908, %1033 ]
  %1056 = phi float [ 0.000000e+00, %501 ], [ %1034, %1033 ]
  %1057 = phi float [ 0.000000e+00, %501 ], [ %1035, %1033 ]
  %1058 = phi float [ 0.000000e+00, %501 ], [ %1036, %1033 ]
  %1059 = phi float [ 0.000000e+00, %501 ], [ %892, %1033 ]
  %1060 = phi float [ 0.000000e+00, %501 ], [ %688, %1033 ]
  %1061 = phi float [ 0.000000e+00, %501 ], [ %986, %1033 ]
  %1062 = phi float [ 0.000000e+00, %501 ], [ %989, %1033 ]
  %1063 = phi float [ 0.000000e+00, %501 ], [ %1049, %1033 ]
  br i1 %449, label %1790, label %1064

; <label>:1064                                    ; preds = %1050
  %1065 = icmp ult i32 %507, 2
  %1066 = add i32 %55, 40
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = add i32 %55, 44
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = or i32 %1071, %1068
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1790, label %1074

; <label>:1074                                    ; preds = %1064
  %1075 = and i32 %1068, 262144
  %1076 = icmp ne i32 %1075, 0
  %1077 = select i1 %1076, float %61, float 1.000000e+00
  %1078 = select i1 %1076, float %62, float 0.000000e+00
  %1079 = select i1 %1076, float %63, float 0.000000e+00
  %1080 = select i1 %1076, float %64, float 1.000000e+00
  %1081 = select i1 %1076, float %65, float %88
  %1082 = select i1 %1076, float %66, float %89
  %1083 = add i32 %55, 300
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = lshr i32 %1085, 16
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = fmul fast float %1087, 0x3F50624DE0000000
  %1089 = add i32 %55, 104
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = lshr i32 %1091, 16
  %1093 = and i32 %1092, 255
  %1094 = lshr i32 %1091, 24
  %1095 = add i32 %55, 308
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 65535
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = lshr i32 %1097, 16
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = add i32 %55, 48
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = lshr i32 %1104, 22
  %1106 = shl nuw nsw i32 %1105, 5
  %1107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1106)  ; LegacyF16ToF32(value)
  %1108 = shl i32 %1104, 4
  %1109 = and i32 %1108, 32752
  %1110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1109)  ; LegacyF16ToF32(value)
  %1111 = lshr i32 %1104, 7
  %1112 = and i32 %1111, 32752
  %1113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1112)  ; LegacyF16ToF32(value)
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 3
  %1116 = fmul fast float %1115, 1.000000e+03
  %1117 = fmul fast float %359, %1116
  %1118 = call float @dx.op.unary.f32(i32 22, float %1117)  ; Frc(value)
  %1119 = fadd fast float %1118, %349
  %1120 = fmul fast float %360, %1116
  %1121 = call float @dx.op.unary.f32(i32 22, float %1120)  ; Frc(value)
  %1122 = fadd fast float %1121, %351
  %1123 = fmul fast float %1088, %1116
  %1124 = call float @dx.op.unary.f32(i32 22, float %1123)  ; Frc(value)
  %1125 = fmul fast float %1124, 0x401921FB60000000
  %1126 = fadd fast float %1125, %1107
  %1127 = call float @dx.op.unary.f32(i32 13, float %1126)  ; Sin(value)
  %1128 = call float @dx.op.unary.f32(i32 12, float %1126)  ; Cos(value)
  %1129 = fsub fast float -0.000000e+00, %1127
  %1130 = fadd fast float %1081, -5.000000e-01
  %1131 = fadd fast float %1082, -5.000000e-01
  %1132 = fmul fast float %1099, %1130
  %1133 = fmul fast float %1101, %1131
  %1134 = fadd fast float %1132, 5.000000e-01
  %1135 = fadd fast float %1133, 5.000000e-01
  %1136 = fmul fast float %1110, %1134
  %1137 = fmul fast float %1113, %1135
  %1138 = fmul fast float %1128, %1136
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1129, float %1137, float %1138)  ; FMad(a,b,c)
  %1140 = fmul fast float %1127, %1136
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %1128, float %1137, float %1140)  ; FMad(a,b,c)
  %1142 = fadd fast float %1119, %1139
  %1143 = fadd fast float %1122, %1141
  %1144 = icmp ugt i32 %1093, 1
  %1145 = icmp ugt i32 %1091, 33554431
  %1146 = or i1 %1145, %1144
  br i1 %1146, label %1147, label %1172

; <label>:1147                                    ; preds = %1074
  %1148 = add i32 %55, 244
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = lshr i32 %1150, 16
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = fmul fast float %1115, %1152
  %1154 = call float @dx.op.unary.f32(i32 22, float %1153)  ; Frc(value)
  %1155 = mul nuw nsw i32 %1093, %1094
  %1156 = uitofp i32 %1155 to float
  %1157 = fmul fast float %1154, %1156
  %1158 = call float @dx.op.unary.f32(i32 27, float %1157)  ; Round_ni(value)
  %1159 = fptoui float %1158 to i32
  %1160 = urem i32 %1159, %1093
  %1161 = udiv i32 %1159, %1094
  %1162 = call float @dx.op.unary.f32(i32 22, float %1142)  ; Frc(value)
  %1163 = call float @dx.op.unary.f32(i32 22, float %1143)  ; Frc(value)
  %1164 = uitofp i32 %1160 to float
  %1165 = uitofp i32 %1161 to float
  %1166 = fadd fast float %1162, %1164
  %1167 = fadd fast float %1163, %1165
  %1168 = uitofp i32 %1093 to float
  %1169 = uitofp i32 %1094 to float
  %1170 = fdiv fast float %1166, %1168
  %1171 = fdiv fast float %1167, %1169
  br label %1172

; <label>:1172                                    ; preds = %1147, %1074
  %1173 = phi float [ %1170, %1147 ], [ %1142, %1074 ]
  %1174 = phi float [ %1171, %1147 ], [ %1143, %1074 ]
  %1175 = and i32 %1068, 256
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1223, label %1177

; <label>:1177                                    ; preds = %1172
  %1178 = add i32 %55, 444
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = add i32 %1180, 0
  %1182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1182, %dx.types.Handle %103, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = add i32 %55, 116
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = shl i32 %1187, 4
  %1189 = and i32 %1188, 32752
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = lshr i32 %1187, 7
  %1192 = and i32 %1191, 32752
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = fsub fast float 1.000000e+00, %504
  %1195 = call float @dx.op.binary.f32(i32 35, float %1194, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1196 = bitcast float %504 to i32
  %1197 = sitofp i32 %1196 to float
  %1198 = fadd fast float %1197, 0xC1CFBF8940000000
  %1199 = fmul fast float %1193, %1198
  %1200 = fadd fast float %1199, 0x41CFBF8940000000
  %1201 = fptosi float %1200 to i32
  %1202 = bitcast i32 %1201 to float
  %1203 = bitcast float %1195 to i32
  %1204 = sitofp i32 %1203 to float
  %1205 = fadd fast float %1204, 0xC1CFBF8940000000
  %1206 = fmul fast float %1205, %1193
  %1207 = fadd fast float %1206, 0x41CFBF8940000000
  %1208 = fptosi float %1207 to i32
  %1209 = bitcast i32 %1208 to float
  %1210 = fmul fast float %1202, %1190
  %1211 = fmul fast float %1209, %1190
  %1212 = fsub fast float %1195, %1210
  %1213 = fadd fast float %1211, %1195
  %1214 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1215 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1216 = fsub fast float %1184, %1214
  %1217 = fsub fast float %1215, %1214
  %1218 = bitcast float %1217 to i32
  %1219 = sub nsw i32 2129859010, %1218
  %1220 = bitcast i32 %1219 to float
  %1221 = fmul fast float %1220, %1216
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  br label %1223

; <label>:1223                                    ; preds = %1177, %1172
  %1224 = phi float [ %1222, %1177 ], [ %504, %1172 ]
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 128
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1245, label %1229

; <label>:1229                                    ; preds = %1223
  %1230 = add i32 %55, 428
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = add i32 %1232, 0
  %1234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1234, %dx.types.Handle %103, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 524288
  %1240 = icmp ne i32 %1239, 0
  %1241 = fcmp fast ogt float %1236, 0x3FE0101020000000
  %1242 = select i1 %1241, float 1.000000e+00, float 0.000000e+00
  %1243 = select i1 %1240, float %1242, float %1236
  %1244 = fmul fast float %1243, %1224
  br label %1245

; <label>:1245                                    ; preds = %1229, %1223
  %1246 = phi float [ %1244, %1229 ], [ %1224, %1223 ]
  %1247 = fcmp fast ult float %1246, 0x3F70101020000000
  br i1 %1247, label %1790, label %1248

; <label>:1248                                    ; preds = %1245
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 16
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1451, label %1253

; <label>:1253                                    ; preds = %1248
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = add i32 %55, 380
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = add i32 %1258, 0
  %1260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1259, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1261 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1260, %dx.types.Handle %102, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.ResRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.ResRet.f32 %1261, 2
  %1265 = extractvalue %dx.types.ResRet.f32 %1261, 3
  %1266 = and i32 %1255, 255
  %1267 = uitofp i32 %1266 to float
  %1268 = lshr i32 %1255, 8
  %1269 = and i32 %1268, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1265, %1267
  %1272 = fadd fast float %1271, %1270
  %1273 = fmul fast float %1272, 0x3F70101000000000
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = and i32 %1275, 512
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1286, label %1278

; <label>:1278                                    ; preds = %1253
  %1279 = add i32 %55, 464
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = add i32 %1281, 0
  %1283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1283, %dx.types.Handle %103, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  br label %1286

; <label>:1286                                    ; preds = %1278, %1253
  %1287 = phi float [ %1285, %1278 ], [ 1.000000e+00, %1253 ]
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 33554432
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1398, label %1292

; <label>:1292                                    ; preds = %1286
  %1293 = add i32 %55, 240
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = and i32 %1295, 65535
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = lshr i32 %1295, 16
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = add i32 %55, 244
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 65535
  %1304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1303)  ; LegacyF16ToF32(value)
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = lshr i32 %1306, 24
  %1308 = uitofp i32 %1307 to float
  %1309 = fmul fast float %1308, 0x3F70101020000000
  %1310 = and i32 %1306, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul fast float %1311, 0x3F70101020000000
  %1313 = lshr i32 %1306, 8
  %1314 = and i32 %1313, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = lshr i32 %1306, 16
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = add i32 %55, 236
  %1322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1338 = bitcast float %1262 to i32
  %1339 = ashr i32 %1338, 1
  %1340 = sub nsw i32 1597463174, %1339
  %1341 = bitcast i32 %1340 to float
  %1342 = fmul fast float %1262, 5.000000e-01
  %1343 = fmul fast float %1341, %1341
  %1344 = fmul fast float %1343, %1342
  %1345 = fsub fast float 1.500000e+00, %1344
  %1346 = fmul fast float %1341, %1262
  %1347 = fmul fast float %1346, %1345
  %1348 = bitcast float %1263 to i32
  %1349 = ashr i32 %1348, 1
  %1350 = sub nsw i32 1597463174, %1349
  %1351 = bitcast i32 %1350 to float
  %1352 = fmul fast float %1263, 5.000000e-01
  %1353 = fmul fast float %1351, %1351
  %1354 = fmul fast float %1353, %1352
  %1355 = fsub fast float 1.500000e+00, %1354
  %1356 = fmul fast float %1351, %1263
  %1357 = fmul fast float %1356, %1355
  %1358 = bitcast float %1264 to i32
  %1359 = ashr i32 %1358, 1
  %1360 = sub nsw i32 1597463174, %1359
  %1361 = bitcast i32 %1360 to float
  %1362 = fmul fast float %1264, 5.000000e-01
  %1363 = fmul fast float %1361, %1361
  %1364 = fmul fast float %1363, %1362
  %1365 = fsub fast float 1.500000e+00, %1364
  %1366 = fmul fast float %1361, %1264
  %1367 = fmul fast float %1366, %1365
  %1368 = fsub fast float %1347, %1329
  %1369 = fsub fast float %1357, %1333
  %1370 = fsub fast float %1367, %1337
  %1371 = fmul fast float %1368, %1297
  %1372 = fmul fast float %1369, %1299
  %1373 = fmul fast float %1370, %1304
  %1374 = fadd fast float %1371, %1312
  %1375 = fadd fast float %1372, %1316
  %1376 = fadd fast float %1373, %1320
  %1377 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1378 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1379 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1380 = fmul fast float %1377, %1377
  %1381 = fmul fast float %1378, %1378
  %1382 = fmul fast float %1379, %1379
  %1383 = fsub fast float %1380, %1262
  %1384 = fsub fast float %1381, %1263
  %1385 = fsub fast float %1382, %1264
  %1386 = fmul fast float %1383, %1287
  %1387 = fmul fast float %1384, %1287
  %1388 = fmul fast float %1385, %1287
  %1389 = fadd fast float %1386, %1262
  %1390 = fadd fast float %1387, %1263
  %1391 = fadd fast float %1388, %1264
  %1392 = fadd fast float %1309, %1273
  %1393 = fsub fast float %1392, %1326
  %1394 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1395 = fsub fast float %1394, %1273
  %1396 = fmul fast float %1395, %1287
  %1397 = fadd fast float %1396, %1273
  br label %1451

; <label>:1398                                    ; preds = %1286
  %1399 = and i32 %1289, 134217728
  %1400 = icmp eq i32 %1399, 0
  br i1 %1400, label %1435, label %1401

; <label>:1401                                    ; preds = %1398
  %1402 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1404 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %1405 = fadd fast float %1402, -5.000000e-01
  %1406 = fadd fast float %1403, -5.000000e-01
  %1407 = fadd fast float %1404, -5.000000e-01
  %1408 = fmul fast float %1405, %1287
  %1409 = fmul fast float %1406, %1287
  %1410 = fmul fast float %1407, %1287
  %1411 = fadd fast float %1408, 5.000000e-01
  %1412 = fadd fast float %1409, 5.000000e-01
  %1413 = fadd fast float %1410, 5.000000e-01
  %1414 = call float @dx.op.unary.f32(i32 24, float %1262)  ; Sqrt(value)
  %1415 = call float @dx.op.unary.f32(i32 24, float %1263)  ; Sqrt(value)
  %1416 = call float @dx.op.unary.f32(i32 24, float %1264)  ; Sqrt(value)
  %1417 = fmul fast float %1411, 2.000000e+00
  %1418 = fsub fast float 1.000000e+00, %1417
  %1419 = fmul fast float %1418, %1414
  %1420 = fadd fast float %1419, %1417
  %1421 = fmul fast float %1420, %1414
  %1422 = fmul fast float %1412, 2.000000e+00
  %1423 = fsub fast float 1.000000e+00, %1422
  %1424 = fmul fast float %1423, %1415
  %1425 = fadd fast float %1424, %1422
  %1426 = fmul fast float %1425, %1415
  %1427 = fmul fast float %1413, 2.000000e+00
  %1428 = fsub fast float 1.000000e+00, %1427
  %1429 = fmul fast float %1428, %1416
  %1430 = fadd fast float %1429, %1427
  %1431 = fmul fast float %1430, %1416
  %1432 = fmul fast float %1421, %1421
  %1433 = fmul fast float %1426, %1426
  %1434 = fmul fast float %1431, %1431
  br label %1451

; <label>:1435                                    ; preds = %1398
  %1436 = fmul fast float %336, %336
  %1437 = fmul fast float %340, %340
  %1438 = fmul fast float %344, %344
  %1439 = fadd fast float %1436, -1.000000e+00
  %1440 = fadd fast float %1437, -1.000000e+00
  %1441 = fadd fast float %1438, -1.000000e+00
  %1442 = fmul fast float %1287, %1439
  %1443 = fmul fast float %1287, %1440
  %1444 = fmul fast float %1287, %1441
  %1445 = fadd fast float %1442, 1.000000e+00
  %1446 = fadd fast float %1443, 1.000000e+00
  %1447 = fadd fast float %1444, 1.000000e+00
  %1448 = fmul fast float %1445, %1262
  %1449 = fmul fast float %1446, %1263
  %1450 = fmul fast float %1447, %1264
  br label %1451

; <label>:1451                                    ; preds = %1435, %1401, %1292, %1248
  %1452 = phi float [ %1397, %1292 ], [ %1273, %1401 ], [ %1273, %1435 ], [ 0x3FA23C0BE0000000, %1248 ]
  %1453 = phi float [ %1389, %1292 ], [ %1432, %1401 ], [ %1448, %1435 ], [ 1.000000e+00, %1248 ]
  %1454 = phi float [ %1390, %1292 ], [ %1433, %1401 ], [ %1449, %1435 ], [ 1.000000e+00, %1248 ]
  %1455 = phi float [ %1391, %1292 ], [ %1434, %1401 ], [ %1450, %1435 ], [ 1.000000e+00, %1248 ]
  %1456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.i32 %1456, 1
  %1458 = and i32 %1457, 1
  %1459 = icmp ne i32 %1458, 0
  %1460 = add i32 %55, 356
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 32
  %1464 = icmp ne i32 %1463, 0
  %1465 = and i1 %1459, %1464
  %1466 = select i1 %1465, float 1.000000e+00, float %1453
  %1467 = select i1 %1465, float 0x3FD3333340000000, float %1454
  %1468 = select i1 %1465, float 0x3FD3333340000000, float %1455
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 32
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1545, label %1473

; <label>:1473                                    ; preds = %1451
  %1474 = add i32 %55, 108
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = add i32 %55, 396
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %1479, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1481, %dx.types.Handle %102, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = extractvalue %dx.types.ResRet.f32 %1482, 1
  %1485 = extractvalue %dx.types.ResRet.f32 %1482, 2
  %1486 = extractvalue %dx.types.ResRet.f32 %1482, 3
  %1487 = and i32 %1476, 255
  %1488 = uitofp i32 %1487 to float
  %1489 = lshr i32 %1476, 8
  %1490 = and i32 %1489, 255
  %1491 = uitofp i32 %1490 to float
  %1492 = lshr i32 %1476, 16
  %1493 = and i32 %1492, 255
  %1494 = uitofp i32 %1493 to float
  %1495 = fmul fast float %1494, 0x3F70101000000000
  %1496 = fmul fast float %1483, %1488
  %1497 = fadd fast float %1496, %1491
  %1498 = fmul fast float %1497, 0x3F70101000000000
  %1499 = fadd fast float %1484, -5.000000e-01
  %1500 = fadd fast float %1486, -5.000000e-01
  %1501 = fmul fast float %1499, %1495
  %1502 = fmul fast float %1500, %1495
  %1503 = fadd fast float %1501, 5.000000e-01
  %1504 = fadd fast float %1502, 5.000000e-01
  %1505 = fmul fast float %1503, 2.000000e+00
  %1506 = fadd fast float %1505, -1.000000e+00
  %1507 = fmul fast float %1504, 2.000000e+00
  %1508 = fadd fast float %1507, -1.000000e+00
  %1509 = fadd fast float %1506, %1508
  %1510 = fmul fast float %1509, 5.000000e-01
  %1511 = fsub fast float %1506, %1508
  %1512 = fmul fast float %1511, 5.000000e-01
  %1513 = call float @dx.op.unary.f32(i32 6, float %1510)  ; FAbs(value)
  %1514 = fsub fast float 1.000000e+00, %1513
  %1515 = call float @dx.op.unary.f32(i32 6, float %1512)  ; FAbs(value)
  %1516 = fsub fast float %1514, %1515
  %1517 = call float @dx.op.dot3.f32(i32 55, float %1510, float %1512, float %1516, float %1510, float %1512, float %1516)  ; Dot3(ax,ay,az,bx,by,bz)
  %1518 = call float @dx.op.unary.f32(i32 25, float %1517)  ; Rsqrt(value)
  %1519 = fmul fast float %1510, %1518
  %1520 = fmul fast float %1512, %1518
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 67108864
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1541, label %1525

; <label>:1525                                    ; preds = %1473
  %1526 = add i32 %55, 296
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = and i32 %1528, 65535
  %1530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1529)  ; LegacyF16ToF32(value)
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 65535
  %1534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1533)  ; LegacyF16ToF32(value)
  %1535 = lshr i32 %1528, 16
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = fsub fast float %1498, %1536
  %1538 = fmul fast float %1537, %1530
  %1539 = fadd fast float %1538, %1534
  %1540 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  br label %1541

; <label>:1541                                    ; preds = %1525, %1473
  %1542 = phi float [ %1540, %1525 ], [ %1498, %1473 ]
  %1543 = call float @dx.op.dot2.f32(i32 54, float %1519, float %1520, float %1077, float %1078)  ; Dot2(ax,ay,bx,by)
  %1544 = call float @dx.op.dot2.f32(i32 54, float %1519, float %1520, float %1079, float %1080)  ; Dot2(ax,ay,bx,by)
  br label %1545

; <label>:1545                                    ; preds = %1541, %1451
  %1546 = phi float [ %1542, %1541 ], [ 0x3FD6666660000000, %1451 ]
  %1547 = phi float [ %1543, %1541 ], [ 0.000000e+00, %1451 ]
  %1548 = phi float [ %1544, %1541 ], [ 0.000000e+00, %1451 ]
  %1549 = phi float [ %1485, %1541 ], [ 1.000000e+00, %1451 ]
  %1550 = add i32 %55, 176
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = lshr i32 %1552, 22
  %1554 = shl nuw nsw i32 %1553, 5
  %1555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1554)  ; LegacyF16ToF32(value)
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 64
  %1559 = icmp eq i32 %1558, 0
  br i1 %1559, label %1593, label %1560

; <label>:1560                                    ; preds = %1545
  %1561 = add i32 %55, 412
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = add i32 %1563, 0
  %1565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 131072
  %1569 = icmp eq i32 %1568, 0
  %1570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1565, %dx.types.Handle %102, float %1173, float %1174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.ResRet.f32 %1570, 1
  %1573 = extractvalue %dx.types.ResRet.f32 %1570, 2
  %1574 = fmul fast float %1571, %324
  %1575 = fmul fast float %1572, %327
  %1576 = fmul fast float %1573, %330
  br i1 %1569, label %1583, label %1577

; <label>:1577                                    ; preds = %1560
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 0
  %1580 = fmul fast float %1579, %1574
  %1581 = fmul fast float %1579, %1575
  %1582 = fmul fast float %1579, %1576
  br label %1583

; <label>:1583                                    ; preds = %1577, %1560
  %1584 = phi float [ %1580, %1577 ], [ %1574, %1560 ]
  %1585 = phi float [ %1581, %1577 ], [ %1575, %1560 ]
  %1586 = phi float [ %1582, %1577 ], [ %1576, %1560 ]
  %1587 = fmul fast float %1584, %1555
  %1588 = select i1 %265, float %1587, float %1584
  %1589 = call float @dx.op.dot3.f32(i32 55, float %1588, float %1585, float %1586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1590 = select i1 %265, float 0.000000e+00, float %1584
  %1591 = select i1 %265, float %1589, float %1585
  %1592 = select i1 %265, float 0.000000e+00, float %1586
  br label %1593

; <label>:1593                                    ; preds = %1583, %1545
  %1594 = phi float [ %1590, %1583 ], [ 0.000000e+00, %1545 ]
  %1595 = phi float [ %1591, %1583 ], [ 0.000000e+00, %1545 ]
  %1596 = phi float [ %1592, %1583 ], [ 0.000000e+00, %1545 ]
  %1597 = add i32 %55, 112
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = lshr i32 %1599, 8
  %1603 = and i32 %1602, 255
  %1604 = uitofp i32 %1603 to float
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1466, float %1467, float %1468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = fmul fast float %1604, %1605
  %1607 = fadd fast float %1606, %1601
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  br i1 %1065, label %1610, label %1618

; <label>:1610                                    ; preds = %1593
  %1611 = fsub fast float 1.000000e+00, %1246
  %1612 = fmul fast float %1611, %1053
  %1613 = fmul fast float %1611, %1054
  %1614 = fmul fast float %1611, %1055
  %1615 = fmul fast float %1611, %1056
  %1616 = fmul fast float %1611, %1057
  %1617 = fmul fast float %1611, %1058
  br label %1618

; <label>:1618                                    ; preds = %1610, %1593
  %1619 = phi float [ %1612, %1610 ], [ %1053, %1593 ]
  %1620 = phi float [ %1613, %1610 ], [ %1054, %1593 ]
  %1621 = phi float [ %1614, %1610 ], [ %1055, %1593 ]
  %1622 = phi float [ %1615, %1610 ], [ %1056, %1593 ]
  %1623 = phi float [ %1616, %1610 ], [ %1057, %1593 ]
  %1624 = phi float [ %1617, %1610 ], [ %1058, %1593 ]
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = and i32 %1626, 3
  %1628 = icmp eq i32 %1627, 3
  br i1 %1628, label %1707, label %1629

; <label>:1629                                    ; preds = %1618
  %1630 = and i32 %1626, 16
  %1631 = icmp ne i32 %1630, 0
  %1632 = select i1 %1631, float %1246, float 0.000000e+00
  %1633 = icmp eq i32 %1627, 0
  br i1 %1633, label %1634, label %1662

; <label>:1634                                    ; preds = %1629
  %1635 = and i32 %1626, 64
  %1636 = icmp ne i32 %1635, 0
  %1637 = select i1 %1636, float %1246, float 0.000000e+00
  %1638 = fsub fast float %1466, %1619
  %1639 = fsub fast float %1467, %1620
  %1640 = fsub fast float %1468, %1621
  %1641 = fmul fast float %1632, %1638
  %1642 = fmul fast float %1632, %1639
  %1643 = fmul fast float %1632, %1640
  %1644 = fadd fast float %1641, %1619
  %1645 = fadd fast float %1642, %1620
  %1646 = fadd fast float %1643, %1621
  %1647 = fsub fast float %1452, %1059
  %1648 = fmul fast float %1632, %1647
  %1649 = fadd fast float %1648, %1059
  %1650 = fsub fast float %1594, %1622
  %1651 = fsub fast float %1595, %1623
  %1652 = fsub fast float %1596, %1624
  %1653 = fmul fast float %1637, %1650
  %1654 = fmul fast float %1637, %1651
  %1655 = fmul fast float %1637, %1652
  %1656 = fadd fast float %1653, %1622
  %1657 = fadd fast float %1654, %1623
  %1658 = fadd fast float %1655, %1624
  %1659 = fsub fast float %1609, %1063
  %1660 = fmul fast float %1632, %1659
  %1661 = fadd fast float %1660, %1063
  br label %1707

; <label>:1662                                    ; preds = %1629
  %1663 = icmp eq i32 %1627, 1
  br i1 %1663, label %1664, label %1677

; <label>:1664                                    ; preds = %1662
  %1665 = fadd fast float %1466, -1.000000e+00
  %1666 = fadd fast float %1467, -1.000000e+00
  %1667 = fadd fast float %1468, -1.000000e+00
  %1668 = fmul fast float %1632, %1665
  %1669 = fmul fast float %1632, %1666
  %1670 = fmul fast float %1632, %1667
  %1671 = fadd fast float %1668, 1.000000e+00
  %1672 = fadd fast float %1669, 1.000000e+00
  %1673 = fadd fast float %1670, 1.000000e+00
  %1674 = fmul fast float %1671, %1619
  %1675 = fmul fast float %1672, %1620
  %1676 = fmul fast float %1673, %1621
  br label %1707

; <label>:1677                                    ; preds = %1662
  %1678 = icmp eq i32 %1627, 2
  br i1 %1678, label %1679, label %1707

; <label>:1679                                    ; preds = %1677
  %1680 = call float @dx.op.unary.f32(i32 24, float %1466)  ; Sqrt(value)
  %1681 = call float @dx.op.unary.f32(i32 24, float %1467)  ; Sqrt(value)
  %1682 = call float @dx.op.unary.f32(i32 24, float %1468)  ; Sqrt(value)
  %1683 = fadd fast float %1680, -5.000000e-01
  %1684 = fadd fast float %1681, -5.000000e-01
  %1685 = fadd fast float %1682, -5.000000e-01
  %1686 = fmul fast float %1683, %1632
  %1687 = fmul fast float %1684, %1632
  %1688 = fmul fast float %1685, %1632
  %1689 = fadd fast float %1686, 5.000000e-01
  %1690 = fadd fast float %1687, 5.000000e-01
  %1691 = fadd fast float %1688, 5.000000e-01
  %1692 = fmul fast float %1689, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, %1619
  %1695 = fadd fast float %1694, %1692
  %1696 = fmul fast float %1695, %1619
  %1697 = fmul fast float %1690, 2.000000e+00
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = fmul fast float %1698, %1620
  %1700 = fadd fast float %1699, %1697
  %1701 = fmul fast float %1700, %1620
  %1702 = fmul fast float %1691, 2.000000e+00
  %1703 = fsub fast float 1.000000e+00, %1702
  %1704 = fmul fast float %1703, %1621
  %1705 = fadd fast float %1704, %1702
  %1706 = fmul fast float %1705, %1621
  br label %1707

; <label>:1707                                    ; preds = %1679, %1677, %1664, %1634, %1618
  %1708 = phi float [ %1619, %1618 ], [ %1696, %1679 ], [ %1619, %1677 ], [ %1674, %1664 ], [ %1644, %1634 ]
  %1709 = phi float [ %1620, %1618 ], [ %1701, %1679 ], [ %1620, %1677 ], [ %1675, %1664 ], [ %1645, %1634 ]
  %1710 = phi float [ %1621, %1618 ], [ %1706, %1679 ], [ %1621, %1677 ], [ %1676, %1664 ], [ %1646, %1634 ]
  %1711 = phi float [ %1622, %1618 ], [ %1622, %1679 ], [ %1622, %1677 ], [ %1622, %1664 ], [ %1656, %1634 ]
  %1712 = phi float [ %1623, %1618 ], [ %1623, %1679 ], [ %1623, %1677 ], [ %1623, %1664 ], [ %1657, %1634 ]
  %1713 = phi float [ %1624, %1618 ], [ %1624, %1679 ], [ %1624, %1677 ], [ %1624, %1664 ], [ %1658, %1634 ]
  %1714 = phi float [ %1059, %1618 ], [ %1059, %1679 ], [ %1059, %1677 ], [ %1059, %1664 ], [ %1649, %1634 ]
  %1715 = phi float [ %1063, %1618 ], [ %1063, %1679 ], [ %1063, %1677 ], [ %1063, %1664 ], [ %1661, %1634 ]
  %1716 = and i32 %1626, 12
  %1717 = icmp eq i32 %1716, 12
  br i1 %1717, label %1790, label %1718

; <label>:1718                                    ; preds = %1707
  %1719 = and i32 %1626, 2097184
  %1720 = icmp eq i32 %1719, 2097184
  %1721 = select i1 %1720, float %1246, float 0.000000e+00
  %1722 = and i32 %1626, 4194336
  %1723 = icmp eq i32 %1722, 4194336
  %1724 = select i1 %1723, float %1246, float 0.000000e+00
  %1725 = and i32 %1626, 8388640
  %1726 = icmp eq i32 %1725, 8388640
  %1727 = select i1 %1726, float %1246, float 0.000000e+00
  %1728 = icmp eq i32 %1716, 0
  br i1 %1728, label %1729, label %1742

; <label>:1729                                    ; preds = %1718
  %1730 = fsub fast float %1547, %1051
  %1731 = fsub fast float %1548, %1052
  %1732 = fmul fast float %1721, %1730
  %1733 = fmul fast float %1721, %1731
  %1734 = fadd fast float %1732, %1051
  %1735 = fadd fast float %1733, %1052
  %1736 = fsub fast float %1549, %1062
  %1737 = fmul fast float %1724, %1736
  %1738 = fadd fast float %1737, %1062
  %1739 = fsub fast float %1546, %1061
  %1740 = fmul fast float %1727, %1739
  %1741 = fadd fast float %1740, %1061
  br label %1790

; <label>:1742                                    ; preds = %1718
  %1743 = icmp eq i32 %1716, 4
  br i1 %1743, label %1744, label %1776

; <label>:1744                                    ; preds = %1742
  %1745 = fmul fast float %1721, %1547
  %1746 = fmul fast float %1721, %1548
  %1747 = fadd fast float %1745, %1051
  %1748 = fadd fast float %1746, %1052
  %1749 = call float @dx.op.binary.f32(i32 36, float %1062, float %1549)  ; FMin(a,b)
  %1750 = fsub fast float %1749, %1062
  %1751 = fmul fast float %1750, %1724
  %1752 = fadd fast float %1751, %1062
  %1753 = fadd fast float %1546, %1061
  %1754 = fmul fast float %1753, 0x3FF337FAE0000000
  %1755 = fmul fast float %1061, %1061
  %1756 = fmul fast float %1546, %1546
  %1757 = fadd fast float %1756, %1755
  %1758 = fmul fast float %1757, 0x3FE5152B00000000
  %1759 = fmul fast float %1061, 0xBFCC1F85E0000000
  %1760 = fmul fast float %1759, %1546
  %1761 = fadd fast float %1760, 0xBFE1363700000000
  %1762 = fadd fast float %1761, %1754
  %1763 = fsub fast float %1762, %1758
  %1764 = fmul fast float %1753, 0x3FBA6F0D00000000
  %1765 = fmul fast float %1757, 0x3FD0432880000000
  %1766 = fmul fast float %1061, 0xBFEF110800000000
  %1767 = fmul fast float %1766, %1546
  %1768 = fadd fast float %1767, 1.000000e+00
  %1769 = fsub fast float %1768, %1764
  %1770 = fadd fast float %1769, %1765
  %1771 = fdiv fast float %1763, %1770
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  %1773 = fsub fast float %1772, %1061
  %1774 = fmul fast float %1773, %1727
  %1775 = fadd fast float %1774, %1061
  br label %1790

; <label>:1776                                    ; preds = %1742
  %1777 = icmp eq i32 %1716, 8
  br i1 %1777, label %1778, label %1790

; <label>:1778                                    ; preds = %1776
  %1779 = fmul fast float %1721, %1547
  %1780 = fmul fast float %1721, %1548
  %1781 = fadd fast float %1779, %1051
  %1782 = fadd fast float %1780, %1052
  %1783 = call float @dx.op.binary.f32(i32 36, float %1062, float %1549)  ; FMin(a,b)
  %1784 = fsub fast float %1783, %1062
  %1785 = fmul fast float %1784, %1724
  %1786 = fadd fast float %1785, %1062
  %1787 = fsub fast float %1546, %1061
  %1788 = fmul fast float %1727, %1787
  %1789 = fadd fast float %1788, %1061
  br label %1790

; <label>:1790                                    ; preds = %1778, %1776, %1744, %1729, %1707, %1245, %1064, %1050
  %1791 = phi float [ %1051, %1707 ], [ %1051, %1245 ], [ %1051, %1050 ], [ %1781, %1778 ], [ %1051, %1776 ], [ %1747, %1744 ], [ %1734, %1729 ], [ %1051, %1064 ]
  %1792 = phi float [ %1052, %1707 ], [ %1052, %1245 ], [ %1052, %1050 ], [ %1782, %1778 ], [ %1052, %1776 ], [ %1748, %1744 ], [ %1735, %1729 ], [ %1052, %1064 ]
  %1793 = phi float [ %1708, %1707 ], [ %1053, %1245 ], [ %1053, %1050 ], [ %1708, %1778 ], [ %1708, %1776 ], [ %1708, %1744 ], [ %1708, %1729 ], [ %1053, %1064 ]
  %1794 = phi float [ %1709, %1707 ], [ %1054, %1245 ], [ %1054, %1050 ], [ %1709, %1778 ], [ %1709, %1776 ], [ %1709, %1744 ], [ %1709, %1729 ], [ %1054, %1064 ]
  %1795 = phi float [ %1710, %1707 ], [ %1055, %1245 ], [ %1055, %1050 ], [ %1710, %1778 ], [ %1710, %1776 ], [ %1710, %1744 ], [ %1710, %1729 ], [ %1055, %1064 ]
  %1796 = phi float [ %1711, %1707 ], [ %1056, %1245 ], [ %1056, %1050 ], [ %1711, %1778 ], [ %1711, %1776 ], [ %1711, %1744 ], [ %1711, %1729 ], [ %1056, %1064 ]
  %1797 = phi float [ %1712, %1707 ], [ %1057, %1245 ], [ %1057, %1050 ], [ %1712, %1778 ], [ %1712, %1776 ], [ %1712, %1744 ], [ %1712, %1729 ], [ %1057, %1064 ]
  %1798 = phi float [ %1713, %1707 ], [ %1058, %1245 ], [ %1058, %1050 ], [ %1713, %1778 ], [ %1713, %1776 ], [ %1713, %1744 ], [ %1713, %1729 ], [ %1058, %1064 ]
  %1799 = phi float [ %1714, %1707 ], [ %1059, %1245 ], [ %1059, %1050 ], [ %1714, %1778 ], [ %1714, %1776 ], [ %1714, %1744 ], [ %1714, %1729 ], [ %1059, %1064 ]
  %1800 = phi float [ %1061, %1707 ], [ %1061, %1245 ], [ %1061, %1050 ], [ %1789, %1778 ], [ %1061, %1776 ], [ %1775, %1744 ], [ %1741, %1729 ], [ %1061, %1064 ]
  %1801 = phi float [ %1062, %1707 ], [ %1062, %1245 ], [ %1062, %1050 ], [ %1786, %1778 ], [ %1062, %1776 ], [ %1752, %1744 ], [ %1738, %1729 ], [ %1062, %1064 ]
  %1802 = phi float [ %1715, %1707 ], [ %1063, %1245 ], [ %1063, %1050 ], [ %1715, %1778 ], [ %1715, %1776 ], [ %1715, %1744 ], [ %1715, %1729 ], [ %1063, %1064 ]
  br i1 %451, label %2529, label %1803

; <label>:1803                                    ; preds = %1790
  %1804 = icmp ult i32 %507, 3
  %1805 = add i32 %55, 56
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = add i32 %55, 60
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = or i32 %1810, %1807
  %1812 = icmp eq i32 %1811, 0
  br i1 %1812, label %2529, label %1813

; <label>:1813                                    ; preds = %1803
  %1814 = and i32 %1807, 262144
  %1815 = icmp ne i32 %1814, 0
  %1816 = select i1 %1815, float %61, float 1.000000e+00
  %1817 = select i1 %1815, float %62, float 0.000000e+00
  %1818 = select i1 %1815, float %63, float 0.000000e+00
  %1819 = select i1 %1815, float %64, float 1.000000e+00
  %1820 = select i1 %1815, float %65, float %88
  %1821 = select i1 %1815, float %66, float %89
  %1822 = add i32 %55, 316
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = lshr i32 %1824, 16
  %1826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1825)  ; LegacyF16ToF32(value)
  %1827 = fmul fast float %1826, 0x3F50624DE0000000
  %1828 = add i32 %55, 120
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = lshr i32 %1830, 16
  %1832 = and i32 %1831, 255
  %1833 = lshr i32 %1830, 24
  %1834 = add i32 %55, 324
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = and i32 %1836, 65535
  %1838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1837)  ; LegacyF16ToF32(value)
  %1839 = lshr i32 %1836, 16
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = add i32 %55, 64
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = lshr i32 %1843, 22
  %1845 = shl nuw nsw i32 %1844, 5
  %1846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1845)  ; LegacyF16ToF32(value)
  %1847 = shl i32 %1843, 4
  %1848 = and i32 %1847, 32752
  %1849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1848)  ; LegacyF16ToF32(value)
  %1850 = lshr i32 %1843, 7
  %1851 = and i32 %1850, 32752
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 3
  %1855 = fmul fast float %1854, 1.000000e+03
  %1856 = fmul fast float %401, %1855
  %1857 = call float @dx.op.unary.f32(i32 22, float %1856)  ; Frc(value)
  %1858 = fadd fast float %1857, %391
  %1859 = fmul fast float %402, %1855
  %1860 = call float @dx.op.unary.f32(i32 22, float %1859)  ; Frc(value)
  %1861 = fadd fast float %1860, %393
  %1862 = fmul fast float %1827, %1855
  %1863 = call float @dx.op.unary.f32(i32 22, float %1862)  ; Frc(value)
  %1864 = fmul fast float %1863, 0x401921FB60000000
  %1865 = fadd fast float %1864, %1846
  %1866 = call float @dx.op.unary.f32(i32 13, float %1865)  ; Sin(value)
  %1867 = call float @dx.op.unary.f32(i32 12, float %1865)  ; Cos(value)
  %1868 = fsub fast float -0.000000e+00, %1866
  %1869 = fadd fast float %1820, -5.000000e-01
  %1870 = fadd fast float %1821, -5.000000e-01
  %1871 = fmul fast float %1838, %1869
  %1872 = fmul fast float %1840, %1870
  %1873 = fadd fast float %1871, 5.000000e-01
  %1874 = fadd fast float %1872, 5.000000e-01
  %1875 = fmul fast float %1849, %1873
  %1876 = fmul fast float %1852, %1874
  %1877 = fmul fast float %1867, %1875
  %1878 = call float @dx.op.tertiary.f32(i32 46, float %1868, float %1876, float %1877)  ; FMad(a,b,c)
  %1879 = fmul fast float %1866, %1875
  %1880 = call float @dx.op.tertiary.f32(i32 46, float %1867, float %1876, float %1879)  ; FMad(a,b,c)
  %1881 = fadd fast float %1858, %1878
  %1882 = fadd fast float %1861, %1880
  %1883 = icmp ugt i32 %1832, 1
  %1884 = icmp ugt i32 %1830, 33554431
  %1885 = or i1 %1884, %1883
  br i1 %1885, label %1886, label %1911

; <label>:1886                                    ; preds = %1813
  %1887 = add i32 %55, 260
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = lshr i32 %1889, 16
  %1891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1890)  ; LegacyF16ToF32(value)
  %1892 = fmul fast float %1854, %1891
  %1893 = call float @dx.op.unary.f32(i32 22, float %1892)  ; Frc(value)
  %1894 = mul nuw nsw i32 %1832, %1833
  %1895 = uitofp i32 %1894 to float
  %1896 = fmul fast float %1893, %1895
  %1897 = call float @dx.op.unary.f32(i32 27, float %1896)  ; Round_ni(value)
  %1898 = fptoui float %1897 to i32
  %1899 = urem i32 %1898, %1832
  %1900 = udiv i32 %1898, %1833
  %1901 = call float @dx.op.unary.f32(i32 22, float %1881)  ; Frc(value)
  %1902 = call float @dx.op.unary.f32(i32 22, float %1882)  ; Frc(value)
  %1903 = uitofp i32 %1899 to float
  %1904 = uitofp i32 %1900 to float
  %1905 = fadd fast float %1901, %1903
  %1906 = fadd fast float %1902, %1904
  %1907 = uitofp i32 %1832 to float
  %1908 = uitofp i32 %1833 to float
  %1909 = fdiv fast float %1905, %1907
  %1910 = fdiv fast float %1906, %1908
  br label %1911

; <label>:1911                                    ; preds = %1886, %1813
  %1912 = phi float [ %1909, %1886 ], [ %1881, %1813 ]
  %1913 = phi float [ %1910, %1886 ], [ %1882, %1813 ]
  %1914 = and i32 %1807, 256
  %1915 = icmp eq i32 %1914, 0
  br i1 %1915, label %1962, label %1916

; <label>:1916                                    ; preds = %1911
  %1917 = add i32 %55, 448
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = add i32 %1919, 0
  %1921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1922 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1921, %dx.types.Handle %103, float %1912, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1923 = extractvalue %dx.types.ResRet.f32 %1922, 0
  %1924 = add i32 %55, 132
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = shl i32 %1926, 4
  %1928 = and i32 %1927, 32752
  %1929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1928)  ; LegacyF16ToF32(value)
  %1930 = lshr i32 %1926, 7
  %1931 = and i32 %1930, 32752
  %1932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1931)  ; LegacyF16ToF32(value)
  %1933 = fsub fast float 1.000000e+00, %503
  %1934 = call float @dx.op.binary.f32(i32 35, float %1933, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1935 = bitcast float %503 to i32
  %1936 = sitofp i32 %1935 to float
  %1937 = fadd fast float %1936, 0xC1CFBF8940000000
  %1938 = fmul fast float %1932, %1937
  %1939 = fadd fast float %1938, 0x41CFBF8940000000
  %1940 = fptosi float %1939 to i32
  %1941 = bitcast i32 %1940 to float
  %1942 = bitcast float %1934 to i32
  %1943 = sitofp i32 %1942 to float
  %1944 = fadd fast float %1943, 0xC1CFBF8940000000
  %1945 = fmul fast float %1944, %1932
  %1946 = fadd fast float %1945, 0x41CFBF8940000000
  %1947 = fptosi float %1946 to i32
  %1948 = bitcast i32 %1947 to float
  %1949 = fmul fast float %1941, %1929
  %1950 = fmul fast float %1948, %1929
  %1951 = fsub fast float %1934, %1949
  %1952 = fadd fast float %1950, %1934
  %1953 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1954 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1955 = fsub fast float %1923, %1953
  %1956 = fsub fast float %1954, %1953
  %1957 = bitcast float %1956 to i32
  %1958 = sub nsw i32 2129859010, %1957
  %1959 = bitcast i32 %1958 to float
  %1960 = fmul fast float %1959, %1955
  %1961 = call float @dx.op.unary.f32(i32 7, float %1960)  ; Saturate(value)
  br label %1962

; <label>:1962                                    ; preds = %1916, %1911
  %1963 = phi float [ %1961, %1916 ], [ %503, %1911 ]
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = and i32 %1965, 128
  %1967 = icmp eq i32 %1966, 0
  br i1 %1967, label %1984, label %1968

; <label>:1968                                    ; preds = %1962
  %1969 = add i32 %55, 432
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = add i32 %1971, 0
  %1973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1974 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1973, %dx.types.Handle %103, float %1912, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 524288
  %1979 = icmp ne i32 %1978, 0
  %1980 = fcmp fast ogt float %1975, 0x3FE0101020000000
  %1981 = select i1 %1980, float 1.000000e+00, float 0.000000e+00
  %1982 = select i1 %1979, float %1981, float %1975
  %1983 = fmul fast float %1982, %1963
  br label %1984

; <label>:1984                                    ; preds = %1968, %1962
  %1985 = phi float [ %1983, %1968 ], [ %1963, %1962 ]
  %1986 = fcmp fast ult float %1985, 0x3F70101020000000
  br i1 %1986, label %2529, label %1987

; <label>:1987                                    ; preds = %1984
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = and i32 %1989, 16
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2190, label %1992

; <label>:1992                                    ; preds = %1987
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = add i32 %55, 384
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = add i32 %1997, 0
  %1999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1998, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2000 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1999, %dx.types.Handle %102, float %1912, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.ResRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.ResRet.f32 %2000, 2
  %2004 = extractvalue %dx.types.ResRet.f32 %2000, 3
  %2005 = and i32 %1994, 255
  %2006 = uitofp i32 %2005 to float
  %2007 = lshr i32 %1994, 8
  %2008 = and i32 %2007, 255
  %2009 = uitofp i32 %2008 to float
  %2010 = fmul fast float %2004, %2006
  %2011 = fadd fast float %2010, %2009
  %2012 = fmul fast float %2011, 0x3F70101000000000
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = and i32 %2014, 512
  %2016 = icmp eq i32 %2015, 0
  br i1 %2016, label %2025, label %2017

; <label>:2017                                    ; preds = %1992
  %2018 = add i32 %55, 468
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = add i32 %2020, 0
  %2022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2022, %dx.types.Handle %103, float %1912, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 0
  br label %2025

; <label>:2025                                    ; preds = %2017, %1992
  %2026 = phi float [ %2024, %2017 ], [ 1.000000e+00, %1992 ]
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = and i32 %2028, 33554432
  %2030 = icmp eq i32 %2029, 0
  br i1 %2030, label %2137, label %2031

; <label>:2031                                    ; preds = %2025
  %2032 = add i32 %55, 256
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = and i32 %2034, 65535
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = lshr i32 %2034, 16
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = add i32 %55, 260
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = and i32 %2041, 65535
  %2043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2042)  ; LegacyF16ToF32(value)
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = lshr i32 %2045, 24
  %2047 = uitofp i32 %2046 to float
  %2048 = fmul fast float %2047, 0x3F70101020000000
  %2049 = and i32 %2045, 255
  %2050 = uitofp i32 %2049 to float
  %2051 = fmul fast float %2050, 0x3F70101020000000
  %2052 = lshr i32 %2045, 8
  %2053 = and i32 %2052, 255
  %2054 = uitofp i32 %2053 to float
  %2055 = fmul fast float %2054, 0x3F70101020000000
  %2056 = lshr i32 %2045, 16
  %2057 = and i32 %2056, 255
  %2058 = uitofp i32 %2057 to float
  %2059 = fmul fast float %2058, 0x3F70101020000000
  %2060 = add i32 %55, 252
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2077 = bitcast float %2001 to i32
  %2078 = ashr i32 %2077, 1
  %2079 = sub nsw i32 1597463174, %2078
  %2080 = bitcast i32 %2079 to float
  %2081 = fmul fast float %2001, 5.000000e-01
  %2082 = fmul fast float %2080, %2080
  %2083 = fmul fast float %2082, %2081
  %2084 = fsub fast float 1.500000e+00, %2083
  %2085 = fmul fast float %2080, %2001
  %2086 = fmul fast float %2085, %2084
  %2087 = bitcast float %2002 to i32
  %2088 = ashr i32 %2087, 1
  %2089 = sub nsw i32 1597463174, %2088
  %2090 = bitcast i32 %2089 to float
  %2091 = fmul fast float %2002, 5.000000e-01
  %2092 = fmul fast float %2090, %2090
  %2093 = fmul fast float %2092, %2091
  %2094 = fsub fast float 1.500000e+00, %2093
  %2095 = fmul fast float %2090, %2002
  %2096 = fmul fast float %2095, %2094
  %2097 = bitcast float %2003 to i32
  %2098 = ashr i32 %2097, 1
  %2099 = sub nsw i32 1597463174, %2098
  %2100 = bitcast i32 %2099 to float
  %2101 = fmul fast float %2003, 5.000000e-01
  %2102 = fmul fast float %2100, %2100
  %2103 = fmul fast float %2102, %2101
  %2104 = fsub fast float 1.500000e+00, %2103
  %2105 = fmul fast float %2100, %2003
  %2106 = fmul fast float %2105, %2104
  %2107 = fsub fast float %2086, %2068
  %2108 = fsub fast float %2096, %2072
  %2109 = fsub fast float %2106, %2076
  %2110 = fmul fast float %2107, %2036
  %2111 = fmul fast float %2108, %2038
  %2112 = fmul fast float %2109, %2043
  %2113 = fadd fast float %2110, %2051
  %2114 = fadd fast float %2111, %2055
  %2115 = fadd fast float %2112, %2059
  %2116 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2117 = call float @dx.op.unary.f32(i32 7, float %2114)  ; Saturate(value)
  %2118 = call float @dx.op.unary.f32(i32 7, float %2115)  ; Saturate(value)
  %2119 = fmul fast float %2116, %2116
  %2120 = fmul fast float %2117, %2117
  %2121 = fmul fast float %2118, %2118
  %2122 = fsub fast float %2119, %2001
  %2123 = fsub fast float %2120, %2002
  %2124 = fsub fast float %2121, %2003
  %2125 = fmul fast float %2122, %2026
  %2126 = fmul fast float %2123, %2026
  %2127 = fmul fast float %2124, %2026
  %2128 = fadd fast float %2125, %2001
  %2129 = fadd fast float %2126, %2002
  %2130 = fadd fast float %2127, %2003
  %2131 = fadd fast float %2048, %2012
  %2132 = fsub fast float %2131, %2065
  %2133 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2134 = fsub fast float %2133, %2012
  %2135 = fmul fast float %2134, %2026
  %2136 = fadd fast float %2135, %2012
  br label %2190

; <label>:2137                                    ; preds = %2025
  %2138 = and i32 %2028, 134217728
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2174, label %2140

; <label>:2140                                    ; preds = %2137
  %2141 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2142 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2143 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %2144 = fadd fast float %2141, -5.000000e-01
  %2145 = fadd fast float %2142, -5.000000e-01
  %2146 = fadd fast float %2143, -5.000000e-01
  %2147 = fmul fast float %2144, %2026
  %2148 = fmul fast float %2145, %2026
  %2149 = fmul fast float %2146, %2026
  %2150 = fadd fast float %2147, 5.000000e-01
  %2151 = fadd fast float %2148, 5.000000e-01
  %2152 = fadd fast float %2149, 5.000000e-01
  %2153 = call float @dx.op.unary.f32(i32 24, float %2001)  ; Sqrt(value)
  %2154 = call float @dx.op.unary.f32(i32 24, float %2002)  ; Sqrt(value)
  %2155 = call float @dx.op.unary.f32(i32 24, float %2003)  ; Sqrt(value)
  %2156 = fmul fast float %2150, 2.000000e+00
  %2157 = fsub fast float 1.000000e+00, %2156
  %2158 = fmul fast float %2157, %2153
  %2159 = fadd fast float %2158, %2156
  %2160 = fmul fast float %2159, %2153
  %2161 = fmul fast float %2151, 2.000000e+00
  %2162 = fsub fast float 1.000000e+00, %2161
  %2163 = fmul fast float %2162, %2154
  %2164 = fadd fast float %2163, %2161
  %2165 = fmul fast float %2164, %2154
  %2166 = fmul fast float %2152, 2.000000e+00
  %2167 = fsub fast float 1.000000e+00, %2166
  %2168 = fmul fast float %2167, %2155
  %2169 = fadd fast float %2168, %2166
  %2170 = fmul fast float %2169, %2155
  %2171 = fmul fast float %2160, %2160
  %2172 = fmul fast float %2165, %2165
  %2173 = fmul fast float %2170, %2170
  br label %2190

; <label>:2174                                    ; preds = %2137
  %2175 = fmul fast float %378, %378
  %2176 = fmul fast float %382, %382
  %2177 = fmul fast float %386, %386
  %2178 = fadd fast float %2175, -1.000000e+00
  %2179 = fadd fast float %2176, -1.000000e+00
  %2180 = fadd fast float %2177, -1.000000e+00
  %2181 = fmul fast float %2026, %2178
  %2182 = fmul fast float %2026, %2179
  %2183 = fmul fast float %2026, %2180
  %2184 = fadd fast float %2181, 1.000000e+00
  %2185 = fadd fast float %2182, 1.000000e+00
  %2186 = fadd fast float %2183, 1.000000e+00
  %2187 = fmul fast float %2184, %2001
  %2188 = fmul fast float %2185, %2002
  %2189 = fmul fast float %2186, %2003
  br label %2190

; <label>:2190                                    ; preds = %2174, %2140, %2031, %1987
  %2191 = phi float [ %2136, %2031 ], [ %2012, %2140 ], [ %2012, %2174 ], [ 0x3FA23C0BE0000000, %1987 ]
  %2192 = phi float [ %2128, %2031 ], [ %2171, %2140 ], [ %2187, %2174 ], [ 1.000000e+00, %1987 ]
  %2193 = phi float [ %2129, %2031 ], [ %2172, %2140 ], [ %2188, %2174 ], [ 1.000000e+00, %1987 ]
  %2194 = phi float [ %2130, %2031 ], [ %2173, %2140 ], [ %2189, %2174 ], [ 1.000000e+00, %1987 ]
  %2195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.i32 %2195, 1
  %2197 = and i32 %2196, 1
  %2198 = icmp ne i32 %2197, 0
  %2199 = add i32 %55, 356
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = and i32 %2201, 32
  %2203 = icmp ne i32 %2202, 0
  %2204 = and i1 %2198, %2203
  %2205 = select i1 %2204, float 1.000000e+00, float %2192
  %2206 = select i1 %2204, float 0x3FD3333340000000, float %2193
  %2207 = select i1 %2204, float 0x3FD3333340000000, float %2194
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 32
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2284, label %2212

; <label>:2212                                    ; preds = %2190
  %2213 = add i32 %55, 124
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = add i32 %55, 400
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = add i32 %2218, 0
  %2220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2220, %dx.types.Handle %102, float %1912, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.ResRet.f32 %2221, 1
  %2224 = extractvalue %dx.types.ResRet.f32 %2221, 2
  %2225 = extractvalue %dx.types.ResRet.f32 %2221, 3
  %2226 = and i32 %2215, 255
  %2227 = uitofp i32 %2226 to float
  %2228 = lshr i32 %2215, 8
  %2229 = and i32 %2228, 255
  %2230 = uitofp i32 %2229 to float
  %2231 = lshr i32 %2215, 16
  %2232 = and i32 %2231, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2233, 0x3F70101000000000
  %2235 = fmul fast float %2222, %2227
  %2236 = fadd fast float %2235, %2230
  %2237 = fmul fast float %2236, 0x3F70101000000000
  %2238 = fadd fast float %2223, -5.000000e-01
  %2239 = fadd fast float %2225, -5.000000e-01
  %2240 = fmul fast float %2238, %2234
  %2241 = fmul fast float %2239, %2234
  %2242 = fadd fast float %2240, 5.000000e-01
  %2243 = fadd fast float %2241, 5.000000e-01
  %2244 = fmul fast float %2242, 2.000000e+00
  %2245 = fadd fast float %2244, -1.000000e+00
  %2246 = fmul fast float %2243, 2.000000e+00
  %2247 = fadd fast float %2246, -1.000000e+00
  %2248 = fadd fast float %2245, %2247
  %2249 = fmul fast float %2248, 5.000000e-01
  %2250 = fsub fast float %2245, %2247
  %2251 = fmul fast float %2250, 5.000000e-01
  %2252 = call float @dx.op.unary.f32(i32 6, float %2249)  ; FAbs(value)
  %2253 = fsub fast float 1.000000e+00, %2252
  %2254 = call float @dx.op.unary.f32(i32 6, float %2251)  ; FAbs(value)
  %2255 = fsub fast float %2253, %2254
  %2256 = call float @dx.op.dot3.f32(i32 55, float %2249, float %2251, float %2255, float %2249, float %2251, float %2255)  ; Dot3(ax,ay,az,bx,by,bz)
  %2257 = call float @dx.op.unary.f32(i32 25, float %2256)  ; Rsqrt(value)
  %2258 = fmul fast float %2249, %2257
  %2259 = fmul fast float %2251, %2257
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 67108864
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2280, label %2264

; <label>:2264                                    ; preds = %2212
  %2265 = add i32 %55, 312
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = and i32 %2267, 65535
  %2269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2268)  ; LegacyF16ToF32(value)
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 65535
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = lshr i32 %2267, 16
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = fsub fast float %2237, %2275
  %2277 = fmul fast float %2276, %2269
  %2278 = fadd fast float %2277, %2273
  %2279 = call float @dx.op.unary.f32(i32 7, float %2278)  ; Saturate(value)
  br label %2280

; <label>:2280                                    ; preds = %2264, %2212
  %2281 = phi float [ %2279, %2264 ], [ %2237, %2212 ]
  %2282 = call float @dx.op.dot2.f32(i32 54, float %2258, float %2259, float %1816, float %1817)  ; Dot2(ax,ay,bx,by)
  %2283 = call float @dx.op.dot2.f32(i32 54, float %2258, float %2259, float %1818, float %1819)  ; Dot2(ax,ay,bx,by)
  br label %2284

; <label>:2284                                    ; preds = %2280, %2190
  %2285 = phi float [ %2281, %2280 ], [ 0x3FD6666660000000, %2190 ]
  %2286 = phi float [ %2282, %2280 ], [ 0.000000e+00, %2190 ]
  %2287 = phi float [ %2283, %2280 ], [ 0.000000e+00, %2190 ]
  %2288 = phi float [ %2224, %2280 ], [ 1.000000e+00, %2190 ]
  %2289 = add i32 %55, 192
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = lshr i32 %2291, 22
  %2293 = shl nuw nsw i32 %2292, 5
  %2294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2293)  ; LegacyF16ToF32(value)
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = and i32 %2296, 64
  %2298 = icmp eq i32 %2297, 0
  br i1 %2298, label %2332, label %2299

; <label>:2299                                    ; preds = %2284
  %2300 = add i32 %55, 416
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = add i32 %2302, 0
  %2304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 131072
  %2308 = icmp eq i32 %2307, 0
  %2309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2304, %dx.types.Handle %102, float %1912, float %1913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = extractvalue %dx.types.ResRet.f32 %2309, 1
  %2312 = extractvalue %dx.types.ResRet.f32 %2309, 2
  %2313 = fmul fast float %2310, %366
  %2314 = fmul fast float %2311, %369
  %2315 = fmul fast float %2312, %372
  br i1 %2308, label %2322, label %2316

; <label>:2316                                    ; preds = %2299
  %2317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2318 = extractvalue %dx.types.CBufRet.f32 %2317, 0
  %2319 = fmul fast float %2318, %2313
  %2320 = fmul fast float %2318, %2314
  %2321 = fmul fast float %2318, %2315
  br label %2322

; <label>:2322                                    ; preds = %2316, %2299
  %2323 = phi float [ %2319, %2316 ], [ %2313, %2299 ]
  %2324 = phi float [ %2320, %2316 ], [ %2314, %2299 ]
  %2325 = phi float [ %2321, %2316 ], [ %2315, %2299 ]
  %2326 = fmul fast float %2323, %2294
  %2327 = select i1 %265, float %2326, float %2323
  %2328 = call float @dx.op.dot3.f32(i32 55, float %2327, float %2324, float %2325, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2329 = select i1 %265, float 0.000000e+00, float %2323
  %2330 = select i1 %265, float %2328, float %2324
  %2331 = select i1 %265, float 0.000000e+00, float %2325
  br label %2332

; <label>:2332                                    ; preds = %2322, %2284
  %2333 = phi float [ %2329, %2322 ], [ 0.000000e+00, %2284 ]
  %2334 = phi float [ %2330, %2322 ], [ 0.000000e+00, %2284 ]
  %2335 = phi float [ %2331, %2322 ], [ 0.000000e+00, %2284 ]
  %2336 = add i32 %55, 128
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 255
  %2340 = uitofp i32 %2339 to float
  %2341 = lshr i32 %2338, 8
  %2342 = and i32 %2341, 255
  %2343 = uitofp i32 %2342 to float
  %2344 = call float @dx.op.dot3.f32(i32 55, float %2205, float %2206, float %2207, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2345 = fmul fast float %2343, %2344
  %2346 = fadd fast float %2345, %2340
  %2347 = fmul fast float %2346, 0x3F70101020000000
  %2348 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  br i1 %1804, label %2349, label %2357

; <label>:2349                                    ; preds = %2332
  %2350 = fsub fast float 1.000000e+00, %1985
  %2351 = fmul fast float %2350, %1793
  %2352 = fmul fast float %2350, %1794
  %2353 = fmul fast float %2350, %1795
  %2354 = fmul fast float %2350, %1796
  %2355 = fmul fast float %2350, %1797
  %2356 = fmul fast float %2350, %1798
  br label %2357

; <label>:2357                                    ; preds = %2349, %2332
  %2358 = phi float [ %2351, %2349 ], [ %1793, %2332 ]
  %2359 = phi float [ %2352, %2349 ], [ %1794, %2332 ]
  %2360 = phi float [ %2353, %2349 ], [ %1795, %2332 ]
  %2361 = phi float [ %2354, %2349 ], [ %1796, %2332 ]
  %2362 = phi float [ %2355, %2349 ], [ %1797, %2332 ]
  %2363 = phi float [ %2356, %2349 ], [ %1798, %2332 ]
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = and i32 %2365, 3
  %2367 = icmp eq i32 %2366, 3
  br i1 %2367, label %2446, label %2368

; <label>:2368                                    ; preds = %2357
  %2369 = and i32 %2365, 16
  %2370 = icmp ne i32 %2369, 0
  %2371 = select i1 %2370, float %1985, float 0.000000e+00
  %2372 = icmp eq i32 %2366, 0
  br i1 %2372, label %2373, label %2401

; <label>:2373                                    ; preds = %2368
  %2374 = and i32 %2365, 64
  %2375 = icmp ne i32 %2374, 0
  %2376 = select i1 %2375, float %1985, float 0.000000e+00
  %2377 = fsub fast float %2205, %2358
  %2378 = fsub fast float %2206, %2359
  %2379 = fsub fast float %2207, %2360
  %2380 = fmul fast float %2371, %2377
  %2381 = fmul fast float %2371, %2378
  %2382 = fmul fast float %2371, %2379
  %2383 = fadd fast float %2380, %2358
  %2384 = fadd fast float %2381, %2359
  %2385 = fadd fast float %2382, %2360
  %2386 = fsub fast float %2191, %1799
  %2387 = fmul fast float %2371, %2386
  %2388 = fadd fast float %2387, %1799
  %2389 = fsub fast float %2333, %2361
  %2390 = fsub fast float %2334, %2362
  %2391 = fsub fast float %2335, %2363
  %2392 = fmul fast float %2376, %2389
  %2393 = fmul fast float %2376, %2390
  %2394 = fmul fast float %2376, %2391
  %2395 = fadd fast float %2392, %2361
  %2396 = fadd fast float %2393, %2362
  %2397 = fadd fast float %2394, %2363
  %2398 = fsub fast float %2348, %1802
  %2399 = fmul fast float %2371, %2398
  %2400 = fadd fast float %2399, %1802
  br label %2446

; <label>:2401                                    ; preds = %2368
  %2402 = icmp eq i32 %2366, 1
  br i1 %2402, label %2403, label %2416

; <label>:2403                                    ; preds = %2401
  %2404 = fadd fast float %2205, -1.000000e+00
  %2405 = fadd fast float %2206, -1.000000e+00
  %2406 = fadd fast float %2207, -1.000000e+00
  %2407 = fmul fast float %2371, %2404
  %2408 = fmul fast float %2371, %2405
  %2409 = fmul fast float %2371, %2406
  %2410 = fadd fast float %2407, 1.000000e+00
  %2411 = fadd fast float %2408, 1.000000e+00
  %2412 = fadd fast float %2409, 1.000000e+00
  %2413 = fmul fast float %2410, %2358
  %2414 = fmul fast float %2411, %2359
  %2415 = fmul fast float %2412, %2360
  br label %2446

; <label>:2416                                    ; preds = %2401
  %2417 = icmp eq i32 %2366, 2
  br i1 %2417, label %2418, label %2446

; <label>:2418                                    ; preds = %2416
  %2419 = call float @dx.op.unary.f32(i32 24, float %2205)  ; Sqrt(value)
  %2420 = call float @dx.op.unary.f32(i32 24, float %2206)  ; Sqrt(value)
  %2421 = call float @dx.op.unary.f32(i32 24, float %2207)  ; Sqrt(value)
  %2422 = fadd fast float %2419, -5.000000e-01
  %2423 = fadd fast float %2420, -5.000000e-01
  %2424 = fadd fast float %2421, -5.000000e-01
  %2425 = fmul fast float %2422, %2371
  %2426 = fmul fast float %2423, %2371
  %2427 = fmul fast float %2424, %2371
  %2428 = fadd fast float %2425, 5.000000e-01
  %2429 = fadd fast float %2426, 5.000000e-01
  %2430 = fadd fast float %2427, 5.000000e-01
  %2431 = fmul fast float %2428, 2.000000e+00
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = fmul fast float %2432, %2358
  %2434 = fadd fast float %2433, %2431
  %2435 = fmul fast float %2434, %2358
  %2436 = fmul fast float %2429, 2.000000e+00
  %2437 = fsub fast float 1.000000e+00, %2436
  %2438 = fmul fast float %2437, %2359
  %2439 = fadd fast float %2438, %2436
  %2440 = fmul fast float %2439, %2359
  %2441 = fmul fast float %2430, 2.000000e+00
  %2442 = fsub fast float 1.000000e+00, %2441
  %2443 = fmul fast float %2442, %2360
  %2444 = fadd fast float %2443, %2441
  %2445 = fmul fast float %2444, %2360
  br label %2446

; <label>:2446                                    ; preds = %2418, %2416, %2403, %2373, %2357
  %2447 = phi float [ %2358, %2357 ], [ %2435, %2418 ], [ %2358, %2416 ], [ %2413, %2403 ], [ %2383, %2373 ]
  %2448 = phi float [ %2359, %2357 ], [ %2440, %2418 ], [ %2359, %2416 ], [ %2414, %2403 ], [ %2384, %2373 ]
  %2449 = phi float [ %2360, %2357 ], [ %2445, %2418 ], [ %2360, %2416 ], [ %2415, %2403 ], [ %2385, %2373 ]
  %2450 = phi float [ %2361, %2357 ], [ %2361, %2418 ], [ %2361, %2416 ], [ %2361, %2403 ], [ %2395, %2373 ]
  %2451 = phi float [ %2362, %2357 ], [ %2362, %2418 ], [ %2362, %2416 ], [ %2362, %2403 ], [ %2396, %2373 ]
  %2452 = phi float [ %2363, %2357 ], [ %2363, %2418 ], [ %2363, %2416 ], [ %2363, %2403 ], [ %2397, %2373 ]
  %2453 = phi float [ %1799, %2357 ], [ %1799, %2418 ], [ %1799, %2416 ], [ %1799, %2403 ], [ %2388, %2373 ]
  %2454 = phi float [ %1802, %2357 ], [ %1802, %2418 ], [ %1802, %2416 ], [ %1802, %2403 ], [ %2400, %2373 ]
  %2455 = and i32 %2365, 12
  %2456 = icmp eq i32 %2455, 12
  br i1 %2456, label %2529, label %2457

; <label>:2457                                    ; preds = %2446
  %2458 = and i32 %2365, 2097184
  %2459 = icmp eq i32 %2458, 2097184
  %2460 = select i1 %2459, float %1985, float 0.000000e+00
  %2461 = and i32 %2365, 4194336
  %2462 = icmp eq i32 %2461, 4194336
  %2463 = select i1 %2462, float %1985, float 0.000000e+00
  %2464 = and i32 %2365, 8388640
  %2465 = icmp eq i32 %2464, 8388640
  %2466 = select i1 %2465, float %1985, float 0.000000e+00
  %2467 = icmp eq i32 %2455, 0
  br i1 %2467, label %2468, label %2481

; <label>:2468                                    ; preds = %2457
  %2469 = fsub fast float %2286, %1791
  %2470 = fsub fast float %2287, %1792
  %2471 = fmul fast float %2460, %2469
  %2472 = fmul fast float %2460, %2470
  %2473 = fadd fast float %2471, %1791
  %2474 = fadd fast float %2472, %1792
  %2475 = fsub fast float %2288, %1801
  %2476 = fmul fast float %2463, %2475
  %2477 = fadd fast float %2476, %1801
  %2478 = fsub fast float %2285, %1800
  %2479 = fmul fast float %2466, %2478
  %2480 = fadd fast float %2479, %1800
  br label %2529

; <label>:2481                                    ; preds = %2457
  %2482 = icmp eq i32 %2455, 4
  br i1 %2482, label %2483, label %2515

; <label>:2483                                    ; preds = %2481
  %2484 = fmul fast float %2460, %2286
  %2485 = fmul fast float %2460, %2287
  %2486 = fadd fast float %2484, %1791
  %2487 = fadd fast float %2485, %1792
  %2488 = call float @dx.op.binary.f32(i32 36, float %1801, float %2288)  ; FMin(a,b)
  %2489 = fsub fast float %2488, %1801
  %2490 = fmul fast float %2489, %2463
  %2491 = fadd fast float %2490, %1801
  %2492 = fadd fast float %2285, %1800
  %2493 = fmul fast float %2492, 0x3FF337FAE0000000
  %2494 = fmul fast float %1800, %1800
  %2495 = fmul fast float %2285, %2285
  %2496 = fadd fast float %2495, %2494
  %2497 = fmul fast float %2496, 0x3FE5152B00000000
  %2498 = fmul fast float %1800, 0xBFCC1F85E0000000
  %2499 = fmul fast float %2498, %2285
  %2500 = fadd fast float %2499, 0xBFE1363700000000
  %2501 = fadd fast float %2500, %2493
  %2502 = fsub fast float %2501, %2497
  %2503 = fmul fast float %2492, 0x3FBA6F0D00000000
  %2504 = fmul fast float %2496, 0x3FD0432880000000
  %2505 = fmul fast float %1800, 0xBFEF110800000000
  %2506 = fmul fast float %2505, %2285
  %2507 = fadd fast float %2506, 1.000000e+00
  %2508 = fsub fast float %2507, %2503
  %2509 = fadd fast float %2508, %2504
  %2510 = fdiv fast float %2502, %2509
  %2511 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  %2512 = fsub fast float %2511, %1800
  %2513 = fmul fast float %2512, %2466
  %2514 = fadd fast float %2513, %1800
  br label %2529

; <label>:2515                                    ; preds = %2481
  %2516 = icmp eq i32 %2455, 8
  br i1 %2516, label %2517, label %2529

; <label>:2517                                    ; preds = %2515
  %2518 = fmul fast float %2460, %2286
  %2519 = fmul fast float %2460, %2287
  %2520 = fadd fast float %2518, %1791
  %2521 = fadd fast float %2519, %1792
  %2522 = call float @dx.op.binary.f32(i32 36, float %1801, float %2288)  ; FMin(a,b)
  %2523 = fsub fast float %2522, %1801
  %2524 = fmul fast float %2523, %2463
  %2525 = fadd fast float %2524, %1801
  %2526 = fsub fast float %2285, %1800
  %2527 = fmul fast float %2466, %2526
  %2528 = fadd fast float %2527, %1800
  br label %2529

; <label>:2529                                    ; preds = %2517, %2515, %2483, %2468, %2446, %1984, %1803, %1790
  %2530 = phi float [ %1791, %2446 ], [ %1791, %1984 ], [ %1791, %1790 ], [ %2520, %2517 ], [ %1791, %2515 ], [ %2486, %2483 ], [ %2473, %2468 ], [ %1791, %1803 ]
  %2531 = phi float [ %1792, %2446 ], [ %1792, %1984 ], [ %1792, %1790 ], [ %2521, %2517 ], [ %1792, %2515 ], [ %2487, %2483 ], [ %2474, %2468 ], [ %1792, %1803 ]
  %2532 = phi float [ %2447, %2446 ], [ %1793, %1984 ], [ %1793, %1790 ], [ %2447, %2517 ], [ %2447, %2515 ], [ %2447, %2483 ], [ %2447, %2468 ], [ %1793, %1803 ]
  %2533 = phi float [ %2448, %2446 ], [ %1794, %1984 ], [ %1794, %1790 ], [ %2448, %2517 ], [ %2448, %2515 ], [ %2448, %2483 ], [ %2448, %2468 ], [ %1794, %1803 ]
  %2534 = phi float [ %2449, %2446 ], [ %1795, %1984 ], [ %1795, %1790 ], [ %2449, %2517 ], [ %2449, %2515 ], [ %2449, %2483 ], [ %2449, %2468 ], [ %1795, %1803 ]
  %2535 = phi float [ %2450, %2446 ], [ %1796, %1984 ], [ %1796, %1790 ], [ %2450, %2517 ], [ %2450, %2515 ], [ %2450, %2483 ], [ %2450, %2468 ], [ %1796, %1803 ]
  %2536 = phi float [ %2451, %2446 ], [ %1797, %1984 ], [ %1797, %1790 ], [ %2451, %2517 ], [ %2451, %2515 ], [ %2451, %2483 ], [ %2451, %2468 ], [ %1797, %1803 ]
  %2537 = phi float [ %2452, %2446 ], [ %1798, %1984 ], [ %1798, %1790 ], [ %2452, %2517 ], [ %2452, %2515 ], [ %2452, %2483 ], [ %2452, %2468 ], [ %1798, %1803 ]
  %2538 = phi float [ %2453, %2446 ], [ %1799, %1984 ], [ %1799, %1790 ], [ %2453, %2517 ], [ %2453, %2515 ], [ %2453, %2483 ], [ %2453, %2468 ], [ %1799, %1803 ]
  %2539 = phi float [ %1800, %2446 ], [ %1800, %1984 ], [ %1800, %1790 ], [ %2528, %2517 ], [ %1800, %2515 ], [ %2514, %2483 ], [ %2480, %2468 ], [ %1800, %1803 ]
  %2540 = phi float [ %1801, %2446 ], [ %1801, %1984 ], [ %1801, %1790 ], [ %2525, %2517 ], [ %1801, %2515 ], [ %2491, %2483 ], [ %2477, %2468 ], [ %1801, %1803 ]
  %2541 = phi float [ %2454, %2446 ], [ %1802, %1984 ], [ %1802, %1790 ], [ %2454, %2517 ], [ %2454, %2515 ], [ %2454, %2483 ], [ %2454, %2468 ], [ %1802, %1803 ]
  br i1 %453, label %3268, label %2542

; <label>:2542                                    ; preds = %2529
  %2543 = icmp ult i32 %507, 4
  %2544 = add i32 %55, 72
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = add i32 %55, 76
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = or i32 %2549, %2546
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %3268, label %2552

; <label>:2552                                    ; preds = %2542
  %2553 = and i32 %2546, 262144
  %2554 = icmp ne i32 %2553, 0
  %2555 = select i1 %2554, float %61, float 1.000000e+00
  %2556 = select i1 %2554, float %62, float 0.000000e+00
  %2557 = select i1 %2554, float %63, float 0.000000e+00
  %2558 = select i1 %2554, float %64, float 1.000000e+00
  %2559 = select i1 %2554, float %65, float %88
  %2560 = select i1 %2554, float %66, float %89
  %2561 = add i32 %55, 332
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = lshr i32 %2563, 16
  %2565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2564)  ; LegacyF16ToF32(value)
  %2566 = fmul fast float %2565, 0x3F50624DE0000000
  %2567 = add i32 %55, 136
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = lshr i32 %2569, 16
  %2571 = and i32 %2570, 255
  %2572 = lshr i32 %2569, 24
  %2573 = add i32 %55, 340
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2573, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 65535
  %2577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2576)  ; LegacyF16ToF32(value)
  %2578 = lshr i32 %2575, 16
  %2579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2578)  ; LegacyF16ToF32(value)
  %2580 = add i32 %55, 80
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = lshr i32 %2582, 22
  %2584 = shl nuw nsw i32 %2583, 5
  %2585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2584)  ; LegacyF16ToF32(value)
  %2586 = shl i32 %2582, 4
  %2587 = and i32 %2586, 32752
  %2588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2587)  ; LegacyF16ToF32(value)
  %2589 = lshr i32 %2582, 7
  %2590 = and i32 %2589, 32752
  %2591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2590)  ; LegacyF16ToF32(value)
  %2592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2593 = extractvalue %dx.types.CBufRet.f32 %2592, 3
  %2594 = fmul fast float %2593, 1.000000e+03
  %2595 = fmul fast float %443, %2594
  %2596 = call float @dx.op.unary.f32(i32 22, float %2595)  ; Frc(value)
  %2597 = fadd fast float %2596, %433
  %2598 = fmul fast float %444, %2594
  %2599 = call float @dx.op.unary.f32(i32 22, float %2598)  ; Frc(value)
  %2600 = fadd fast float %2599, %435
  %2601 = fmul fast float %2566, %2594
  %2602 = call float @dx.op.unary.f32(i32 22, float %2601)  ; Frc(value)
  %2603 = fmul fast float %2602, 0x401921FB60000000
  %2604 = fadd fast float %2603, %2585
  %2605 = call float @dx.op.unary.f32(i32 13, float %2604)  ; Sin(value)
  %2606 = call float @dx.op.unary.f32(i32 12, float %2604)  ; Cos(value)
  %2607 = fsub fast float -0.000000e+00, %2605
  %2608 = fadd fast float %2559, -5.000000e-01
  %2609 = fadd fast float %2560, -5.000000e-01
  %2610 = fmul fast float %2577, %2608
  %2611 = fmul fast float %2579, %2609
  %2612 = fadd fast float %2610, 5.000000e-01
  %2613 = fadd fast float %2611, 5.000000e-01
  %2614 = fmul fast float %2588, %2612
  %2615 = fmul fast float %2591, %2613
  %2616 = fmul fast float %2606, %2614
  %2617 = call float @dx.op.tertiary.f32(i32 46, float %2607, float %2615, float %2616)  ; FMad(a,b,c)
  %2618 = fmul fast float %2605, %2614
  %2619 = call float @dx.op.tertiary.f32(i32 46, float %2606, float %2615, float %2618)  ; FMad(a,b,c)
  %2620 = fadd fast float %2597, %2617
  %2621 = fadd fast float %2600, %2619
  %2622 = icmp ugt i32 %2571, 1
  %2623 = icmp ugt i32 %2569, 33554431
  %2624 = or i1 %2623, %2622
  br i1 %2624, label %2625, label %2650

; <label>:2625                                    ; preds = %2552
  %2626 = add i32 %55, 276
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2626, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = lshr i32 %2628, 16
  %2630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2629)  ; LegacyF16ToF32(value)
  %2631 = fmul fast float %2593, %2630
  %2632 = call float @dx.op.unary.f32(i32 22, float %2631)  ; Frc(value)
  %2633 = mul nuw nsw i32 %2571, %2572
  %2634 = uitofp i32 %2633 to float
  %2635 = fmul fast float %2632, %2634
  %2636 = call float @dx.op.unary.f32(i32 27, float %2635)  ; Round_ni(value)
  %2637 = fptoui float %2636 to i32
  %2638 = urem i32 %2637, %2571
  %2639 = udiv i32 %2637, %2572
  %2640 = call float @dx.op.unary.f32(i32 22, float %2620)  ; Frc(value)
  %2641 = call float @dx.op.unary.f32(i32 22, float %2621)  ; Frc(value)
  %2642 = uitofp i32 %2638 to float
  %2643 = uitofp i32 %2639 to float
  %2644 = fadd fast float %2640, %2642
  %2645 = fadd fast float %2641, %2643
  %2646 = uitofp i32 %2571 to float
  %2647 = uitofp i32 %2572 to float
  %2648 = fdiv fast float %2644, %2646
  %2649 = fdiv fast float %2645, %2647
  br label %2650

; <label>:2650                                    ; preds = %2625, %2552
  %2651 = phi float [ %2648, %2625 ], [ %2620, %2552 ]
  %2652 = phi float [ %2649, %2625 ], [ %2621, %2552 ]
  %2653 = and i32 %2546, 256
  %2654 = icmp eq i32 %2653, 0
  br i1 %2654, label %2701, label %2655

; <label>:2655                                    ; preds = %2650
  %2656 = add i32 %55, 452
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = add i32 %2658, 0
  %2660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2660, %dx.types.Handle %103, float %2651, float %2652, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2662 = extractvalue %dx.types.ResRet.f32 %2661, 0
  %2663 = add i32 %55, 148
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = shl i32 %2665, 4
  %2667 = and i32 %2666, 32752
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = lshr i32 %2665, 7
  %2670 = and i32 %2669, 32752
  %2671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2670)  ; LegacyF16ToF32(value)
  %2672 = fsub fast float 1.000000e+00, %502
  %2673 = call float @dx.op.binary.f32(i32 35, float %2672, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2674 = bitcast float %502 to i32
  %2675 = sitofp i32 %2674 to float
  %2676 = fadd fast float %2675, 0xC1CFBF8940000000
  %2677 = fmul fast float %2671, %2676
  %2678 = fadd fast float %2677, 0x41CFBF8940000000
  %2679 = fptosi float %2678 to i32
  %2680 = bitcast i32 %2679 to float
  %2681 = bitcast float %2673 to i32
  %2682 = sitofp i32 %2681 to float
  %2683 = fadd fast float %2682, 0xC1CFBF8940000000
  %2684 = fmul fast float %2683, %2671
  %2685 = fadd fast float %2684, 0x41CFBF8940000000
  %2686 = fptosi float %2685 to i32
  %2687 = bitcast i32 %2686 to float
  %2688 = fmul fast float %2680, %2668
  %2689 = fmul fast float %2687, %2668
  %2690 = fsub fast float %2673, %2688
  %2691 = fadd fast float %2689, %2673
  %2692 = call float @dx.op.unary.f32(i32 7, float %2690)  ; Saturate(value)
  %2693 = call float @dx.op.unary.f32(i32 7, float %2691)  ; Saturate(value)
  %2694 = fsub fast float %2662, %2692
  %2695 = fsub fast float %2693, %2692
  %2696 = bitcast float %2695 to i32
  %2697 = sub nsw i32 2129859010, %2696
  %2698 = bitcast i32 %2697 to float
  %2699 = fmul fast float %2698, %2694
  %2700 = call float @dx.op.unary.f32(i32 7, float %2699)  ; Saturate(value)
  br label %2701

; <label>:2701                                    ; preds = %2655, %2650
  %2702 = phi float [ %2700, %2655 ], [ %502, %2650 ]
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = and i32 %2704, 128
  %2706 = icmp eq i32 %2705, 0
  br i1 %2706, label %2723, label %2707

; <label>:2707                                    ; preds = %2701
  %2708 = add i32 %55, 436
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = add i32 %2710, 0
  %2712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2712, %dx.types.Handle %103, float %2651, float %2652, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = and i32 %2716, 524288
  %2718 = icmp ne i32 %2717, 0
  %2719 = fcmp fast ogt float %2714, 0x3FE0101020000000
  %2720 = select i1 %2719, float 1.000000e+00, float 0.000000e+00
  %2721 = select i1 %2718, float %2720, float %2714
  %2722 = fmul fast float %2721, %2702
  br label %2723

; <label>:2723                                    ; preds = %2707, %2701
  %2724 = phi float [ %2722, %2707 ], [ %2702, %2701 ]
  %2725 = fcmp fast ult float %2724, 0x3F70101020000000
  br i1 %2725, label %3268, label %2726

; <label>:2726                                    ; preds = %2723
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = and i32 %2728, 16
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2929, label %2731

; <label>:2731                                    ; preds = %2726
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = add i32 %55, 388
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = add i32 %2736, 0
  %2738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2738, %dx.types.Handle %102, float %2651, float %2652, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.ResRet.f32 %2739, 1
  %2742 = extractvalue %dx.types.ResRet.f32 %2739, 2
  %2743 = extractvalue %dx.types.ResRet.f32 %2739, 3
  %2744 = and i32 %2733, 255
  %2745 = uitofp i32 %2744 to float
  %2746 = lshr i32 %2733, 8
  %2747 = and i32 %2746, 255
  %2748 = uitofp i32 %2747 to float
  %2749 = fmul fast float %2743, %2745
  %2750 = fadd fast float %2749, %2748
  %2751 = fmul fast float %2750, 0x3F70101000000000
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = and i32 %2753, 512
  %2755 = icmp eq i32 %2754, 0
  br i1 %2755, label %2764, label %2756

; <label>:2756                                    ; preds = %2731
  %2757 = add i32 %55, 472
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = add i32 %2759, 0
  %2761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2760, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2762 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2761, %dx.types.Handle %103, float %2651, float %2652, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2763 = extractvalue %dx.types.ResRet.f32 %2762, 0
  br label %2764

; <label>:2764                                    ; preds = %2756, %2731
  %2765 = phi float [ %2763, %2756 ], [ 1.000000e+00, %2731 ]
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = and i32 %2767, 33554432
  %2769 = icmp eq i32 %2768, 0
  br i1 %2769, label %2876, label %2770

; <label>:2770                                    ; preds = %2764
  %2771 = add i32 %55, 272
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = and i32 %2773, 65535
  %2775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2774)  ; LegacyF16ToF32(value)
  %2776 = lshr i32 %2773, 16
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = add i32 %55, 276
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = and i32 %2780, 65535
  %2782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2781)  ; LegacyF16ToF32(value)
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = lshr i32 %2784, 24
  %2786 = uitofp i32 %2785 to float
  %2787 = fmul fast float %2786, 0x3F70101020000000
  %2788 = and i32 %2784, 255
  %2789 = uitofp i32 %2788 to float
  %2790 = fmul fast float %2789, 0x3F70101020000000
  %2791 = lshr i32 %2784, 8
  %2792 = and i32 %2791, 255
  %2793 = uitofp i32 %2792 to float
  %2794 = fmul fast float %2793, 0x3F70101020000000
  %2795 = lshr i32 %2784, 16
  %2796 = and i32 %2795, 255
  %2797 = uitofp i32 %2796 to float
  %2798 = fmul fast float %2797, 0x3F70101020000000
  %2799 = add i32 %55, 268
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2816 = bitcast float %2740 to i32
  %2817 = ashr i32 %2816, 1
  %2818 = sub nsw i32 1597463174, %2817
  %2819 = bitcast i32 %2818 to float
  %2820 = fmul fast float %2740, 5.000000e-01
  %2821 = fmul fast float %2819, %2819
  %2822 = fmul fast float %2821, %2820
  %2823 = fsub fast float 1.500000e+00, %2822
  %2824 = fmul fast float %2819, %2740
  %2825 = fmul fast float %2824, %2823
  %2826 = bitcast float %2741 to i32
  %2827 = ashr i32 %2826, 1
  %2828 = sub nsw i32 1597463174, %2827
  %2829 = bitcast i32 %2828 to float
  %2830 = fmul fast float %2741, 5.000000e-01
  %2831 = fmul fast float %2829, %2829
  %2832 = fmul fast float %2831, %2830
  %2833 = fsub fast float 1.500000e+00, %2832
  %2834 = fmul fast float %2829, %2741
  %2835 = fmul fast float %2834, %2833
  %2836 = bitcast float %2742 to i32
  %2837 = ashr i32 %2836, 1
  %2838 = sub nsw i32 1597463174, %2837
  %2839 = bitcast i32 %2838 to float
  %2840 = fmul fast float %2742, 5.000000e-01
  %2841 = fmul fast float %2839, %2839
  %2842 = fmul fast float %2841, %2840
  %2843 = fsub fast float 1.500000e+00, %2842
  %2844 = fmul fast float %2839, %2742
  %2845 = fmul fast float %2844, %2843
  %2846 = fsub fast float %2825, %2807
  %2847 = fsub fast float %2835, %2811
  %2848 = fsub fast float %2845, %2815
  %2849 = fmul fast float %2846, %2775
  %2850 = fmul fast float %2847, %2777
  %2851 = fmul fast float %2848, %2782
  %2852 = fadd fast float %2849, %2790
  %2853 = fadd fast float %2850, %2794
  %2854 = fadd fast float %2851, %2798
  %2855 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  %2856 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  %2857 = call float @dx.op.unary.f32(i32 7, float %2854)  ; Saturate(value)
  %2858 = fmul fast float %2855, %2855
  %2859 = fmul fast float %2856, %2856
  %2860 = fmul fast float %2857, %2857
  %2861 = fsub fast float %2858, %2740
  %2862 = fsub fast float %2859, %2741
  %2863 = fsub fast float %2860, %2742
  %2864 = fmul fast float %2861, %2765
  %2865 = fmul fast float %2862, %2765
  %2866 = fmul fast float %2863, %2765
  %2867 = fadd fast float %2864, %2740
  %2868 = fadd fast float %2865, %2741
  %2869 = fadd fast float %2866, %2742
  %2870 = fadd fast float %2787, %2751
  %2871 = fsub fast float %2870, %2804
  %2872 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2873 = fsub fast float %2872, %2751
  %2874 = fmul fast float %2873, %2765
  %2875 = fadd fast float %2874, %2751
  br label %2929

; <label>:2876                                    ; preds = %2764
  %2877 = and i32 %2767, 134217728
  %2878 = icmp eq i32 %2877, 0
  br i1 %2878, label %2913, label %2879

; <label>:2879                                    ; preds = %2876
  %2880 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %2881 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %2882 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %2883 = fadd fast float %2880, -5.000000e-01
  %2884 = fadd fast float %2881, -5.000000e-01
  %2885 = fadd fast float %2882, -5.000000e-01
  %2886 = fmul fast float %2883, %2765
  %2887 = fmul fast float %2884, %2765
  %2888 = fmul fast float %2885, %2765
  %2889 = fadd fast float %2886, 5.000000e-01
  %2890 = fadd fast float %2887, 5.000000e-01
  %2891 = fadd fast float %2888, 5.000000e-01
  %2892 = call float @dx.op.unary.f32(i32 24, float %2740)  ; Sqrt(value)
  %2893 = call float @dx.op.unary.f32(i32 24, float %2741)  ; Sqrt(value)
  %2894 = call float @dx.op.unary.f32(i32 24, float %2742)  ; Sqrt(value)
  %2895 = fmul fast float %2889, 2.000000e+00
  %2896 = fsub fast float 1.000000e+00, %2895
  %2897 = fmul fast float %2896, %2892
  %2898 = fadd fast float %2897, %2895
  %2899 = fmul fast float %2898, %2892
  %2900 = fmul fast float %2890, 2.000000e+00
  %2901 = fsub fast float 1.000000e+00, %2900
  %2902 = fmul fast float %2901, %2893
  %2903 = fadd fast float %2902, %2900
  %2904 = fmul fast float %2903, %2893
  %2905 = fmul fast float %2891, 2.000000e+00
  %2906 = fsub fast float 1.000000e+00, %2905
  %2907 = fmul fast float %2906, %2894
  %2908 = fadd fast float %2907, %2905
  %2909 = fmul fast float %2908, %2894
  %2910 = fmul fast float %2899, %2899
  %2911 = fmul fast float %2904, %2904
  %2912 = fmul fast float %2909, %2909
  br label %2929

; <label>:2913                                    ; preds = %2876
  %2914 = fmul fast float %420, %420
  %2915 = fmul fast float %424, %424
  %2916 = fmul fast float %428, %428
  %2917 = fadd fast float %2914, -1.000000e+00
  %2918 = fadd fast float %2915, -1.000000e+00
  %2919 = fadd fast float %2916, -1.000000e+00
  %2920 = fmul fast float %2765, %2917
  %2921 = fmul fast float %2765, %2918
  %2922 = fmul fast float %2765, %2919
  %2923 = fadd fast float %2920, 1.000000e+00
  %2924 = fadd fast float %2921, 1.000000e+00
  %2925 = fadd fast float %2922, 1.000000e+00
  %2926 = fmul fast float %2923, %2740
  %2927 = fmul fast float %2924, %2741
  %2928 = fmul fast float %2925, %2742
  br label %2929

; <label>:2929                                    ; preds = %2913, %2879, %2770, %2726
  %2930 = phi float [ %2875, %2770 ], [ %2751, %2879 ], [ %2751, %2913 ], [ 0x3FA23C0BE0000000, %2726 ]
  %2931 = phi float [ %2867, %2770 ], [ %2910, %2879 ], [ %2926, %2913 ], [ 1.000000e+00, %2726 ]
  %2932 = phi float [ %2868, %2770 ], [ %2911, %2879 ], [ %2927, %2913 ], [ 1.000000e+00, %2726 ]
  %2933 = phi float [ %2869, %2770 ], [ %2912, %2879 ], [ %2928, %2913 ], [ 1.000000e+00, %2726 ]
  %2934 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.i32 %2934, 1
  %2936 = and i32 %2935, 1
  %2937 = icmp ne i32 %2936, 0
  %2938 = add i32 %55, 356
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = and i32 %2940, 32
  %2942 = icmp ne i32 %2941, 0
  %2943 = and i1 %2937, %2942
  %2944 = select i1 %2943, float 1.000000e+00, float %2931
  %2945 = select i1 %2943, float 0x3FD3333340000000, float %2932
  %2946 = select i1 %2943, float 0x3FD3333340000000, float %2933
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %2948, 32
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %3023, label %2951

; <label>:2951                                    ; preds = %2929
  %2952 = add i32 %55, 140
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = add i32 %55, 404
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = add i32 %2957, 0
  %2959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2959, %dx.types.Handle %102, float %2651, float %2652, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  %2962 = extractvalue %dx.types.ResRet.f32 %2960, 1
  %2963 = extractvalue %dx.types.ResRet.f32 %2960, 2
  %2964 = extractvalue %dx.types.ResRet.f32 %2960, 3
  %2965 = and i32 %2954, 255
  %2966 = uitofp i32 %2965 to float
  %2967 = lshr i32 %2954, 8
  %2968 = and i32 %2967, 255
  %2969 = uitofp i32 %2968 to float
  %2970 = lshr i32 %2954, 16
  %2971 = and i32 %2970, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101000000000
  %2974 = fmul fast float %2961, %2966
  %2975 = fadd fast float %2974, %2969
  %2976 = fmul fast float %2975, 0x3F70101000000000
  %2977 = fadd fast float %2962, -5.000000e-01
  %2978 = fadd fast float %2964, -5.000000e-01
  %2979 = fmul fast float %2977, %2973
  %2980 = fmul fast float %2978, %2973
  %2981 = fadd fast float %2979, 5.000000e-01
  %2982 = fadd fast float %2980, 5.000000e-01
  %2983 = fmul fast float %2981, 2.000000e+00
  %2984 = fadd fast float %2983, -1.000000e+00
  %2985 = fmul fast float %2982, 2.000000e+00
  %2986 = fadd fast float %2985, -1.000000e+00
  %2987 = fadd fast float %2984, %2986
  %2988 = fmul fast float %2987, 5.000000e-01
  %2989 = fsub fast float %2984, %2986
  %2990 = fmul fast float %2989, 5.000000e-01
  %2991 = call float @dx.op.unary.f32(i32 6, float %2988)  ; FAbs(value)
  %2992 = fsub fast float 1.000000e+00, %2991
  %2993 = call float @dx.op.unary.f32(i32 6, float %2990)  ; FAbs(value)
  %2994 = fsub fast float %2992, %2993
  %2995 = call float @dx.op.dot3.f32(i32 55, float %2988, float %2990, float %2994, float %2988, float %2990, float %2994)  ; Dot3(ax,ay,az,bx,by,bz)
  %2996 = call float @dx.op.unary.f32(i32 25, float %2995)  ; Rsqrt(value)
  %2997 = fmul fast float %2988, %2996
  %2998 = fmul fast float %2990, %2996
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = and i32 %3000, 67108864
  %3002 = icmp eq i32 %3001, 0
  br i1 %3002, label %3019, label %3003

; <label>:3003                                    ; preds = %2951
  %3004 = add i32 %55, 328
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = and i32 %3006, 65535
  %3008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3007)  ; LegacyF16ToF32(value)
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = and i32 %3010, 65535
  %3012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3011)  ; LegacyF16ToF32(value)
  %3013 = lshr i32 %3006, 16
  %3014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3013)  ; LegacyF16ToF32(value)
  %3015 = fsub fast float %2976, %3014
  %3016 = fmul fast float %3015, %3008
  %3017 = fadd fast float %3016, %3012
  %3018 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  br label %3019

; <label>:3019                                    ; preds = %3003, %2951
  %3020 = phi float [ %3018, %3003 ], [ %2976, %2951 ]
  %3021 = call float @dx.op.dot2.f32(i32 54, float %2997, float %2998, float %2555, float %2556)  ; Dot2(ax,ay,bx,by)
  %3022 = call float @dx.op.dot2.f32(i32 54, float %2997, float %2998, float %2557, float %2558)  ; Dot2(ax,ay,bx,by)
  br label %3023

; <label>:3023                                    ; preds = %3019, %2929
  %3024 = phi float [ %3020, %3019 ], [ 0x3FD6666660000000, %2929 ]
  %3025 = phi float [ %3021, %3019 ], [ 0.000000e+00, %2929 ]
  %3026 = phi float [ %3022, %3019 ], [ 0.000000e+00, %2929 ]
  %3027 = phi float [ %2963, %3019 ], [ 1.000000e+00, %2929 ]
  %3028 = add i32 %55, 208
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = lshr i32 %3030, 22
  %3032 = shl nuw nsw i32 %3031, 5
  %3033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3032)  ; LegacyF16ToF32(value)
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, 64
  %3037 = icmp eq i32 %3036, 0
  br i1 %3037, label %3071, label %3038

; <label>:3038                                    ; preds = %3023
  %3039 = add i32 %55, 420
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = add i32 %3041, 0
  %3043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = and i32 %3045, 131072
  %3047 = icmp eq i32 %3046, 0
  %3048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3043, %dx.types.Handle %102, float %2651, float %2652, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3049 = extractvalue %dx.types.ResRet.f32 %3048, 0
  %3050 = extractvalue %dx.types.ResRet.f32 %3048, 1
  %3051 = extractvalue %dx.types.ResRet.f32 %3048, 2
  %3052 = fmul fast float %3049, %408
  %3053 = fmul fast float %3050, %411
  %3054 = fmul fast float %3051, %414
  br i1 %3047, label %3061, label %3055

; <label>:3055                                    ; preds = %3038
  %3056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3057 = extractvalue %dx.types.CBufRet.f32 %3056, 0
  %3058 = fmul fast float %3057, %3052
  %3059 = fmul fast float %3057, %3053
  %3060 = fmul fast float %3057, %3054
  br label %3061

; <label>:3061                                    ; preds = %3055, %3038
  %3062 = phi float [ %3058, %3055 ], [ %3052, %3038 ]
  %3063 = phi float [ %3059, %3055 ], [ %3053, %3038 ]
  %3064 = phi float [ %3060, %3055 ], [ %3054, %3038 ]
  %3065 = fmul fast float %3062, %3033
  %3066 = select i1 %265, float %3065, float %3062
  %3067 = call float @dx.op.dot3.f32(i32 55, float %3066, float %3063, float %3064, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3068 = select i1 %265, float 0.000000e+00, float %3062
  %3069 = select i1 %265, float %3067, float %3063
  %3070 = select i1 %265, float 0.000000e+00, float %3064
  br label %3071

; <label>:3071                                    ; preds = %3061, %3023
  %3072 = phi float [ %3068, %3061 ], [ 0.000000e+00, %3023 ]
  %3073 = phi float [ %3069, %3061 ], [ 0.000000e+00, %3023 ]
  %3074 = phi float [ %3070, %3061 ], [ 0.000000e+00, %3023 ]
  %3075 = add i32 %55, 144
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 255
  %3079 = uitofp i32 %3078 to float
  %3080 = lshr i32 %3077, 8
  %3081 = and i32 %3080, 255
  %3082 = uitofp i32 %3081 to float
  %3083 = call float @dx.op.dot3.f32(i32 55, float %2944, float %2945, float %2946, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3084 = fmul fast float %3082, %3083
  %3085 = fadd fast float %3084, %3079
  %3086 = fmul fast float %3085, 0x3F70101020000000
  %3087 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  br i1 %2543, label %3088, label %3096

; <label>:3088                                    ; preds = %3071
  %3089 = fsub fast float 1.000000e+00, %2724
  %3090 = fmul fast float %3089, %2532
  %3091 = fmul fast float %3089, %2533
  %3092 = fmul fast float %3089, %2534
  %3093 = fmul fast float %3089, %2535
  %3094 = fmul fast float %3089, %2536
  %3095 = fmul fast float %3089, %2537
  br label %3096

; <label>:3096                                    ; preds = %3088, %3071
  %3097 = phi float [ %3090, %3088 ], [ %2532, %3071 ]
  %3098 = phi float [ %3091, %3088 ], [ %2533, %3071 ]
  %3099 = phi float [ %3092, %3088 ], [ %2534, %3071 ]
  %3100 = phi float [ %3093, %3088 ], [ %2535, %3071 ]
  %3101 = phi float [ %3094, %3088 ], [ %2536, %3071 ]
  %3102 = phi float [ %3095, %3088 ], [ %2537, %3071 ]
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 3
  %3106 = icmp eq i32 %3105, 3
  br i1 %3106, label %3185, label %3107

; <label>:3107                                    ; preds = %3096
  %3108 = and i32 %3104, 16
  %3109 = icmp ne i32 %3108, 0
  %3110 = select i1 %3109, float %2724, float 0.000000e+00
  %3111 = icmp eq i32 %3105, 0
  br i1 %3111, label %3112, label %3140

; <label>:3112                                    ; preds = %3107
  %3113 = and i32 %3104, 64
  %3114 = icmp ne i32 %3113, 0
  %3115 = select i1 %3114, float %2724, float 0.000000e+00
  %3116 = fsub fast float %2944, %3097
  %3117 = fsub fast float %2945, %3098
  %3118 = fsub fast float %2946, %3099
  %3119 = fmul fast float %3110, %3116
  %3120 = fmul fast float %3110, %3117
  %3121 = fmul fast float %3110, %3118
  %3122 = fadd fast float %3119, %3097
  %3123 = fadd fast float %3120, %3098
  %3124 = fadd fast float %3121, %3099
  %3125 = fsub fast float %2930, %2538
  %3126 = fmul fast float %3110, %3125
  %3127 = fadd fast float %3126, %2538
  %3128 = fsub fast float %3072, %3100
  %3129 = fsub fast float %3073, %3101
  %3130 = fsub fast float %3074, %3102
  %3131 = fmul fast float %3115, %3128
  %3132 = fmul fast float %3115, %3129
  %3133 = fmul fast float %3115, %3130
  %3134 = fadd fast float %3131, %3100
  %3135 = fadd fast float %3132, %3101
  %3136 = fadd fast float %3133, %3102
  %3137 = fsub fast float %3087, %2541
  %3138 = fmul fast float %3110, %3137
  %3139 = fadd fast float %3138, %2541
  br label %3185

; <label>:3140                                    ; preds = %3107
  %3141 = icmp eq i32 %3105, 1
  br i1 %3141, label %3142, label %3155

; <label>:3142                                    ; preds = %3140
  %3143 = fadd fast float %2944, -1.000000e+00
  %3144 = fadd fast float %2945, -1.000000e+00
  %3145 = fadd fast float %2946, -1.000000e+00
  %3146 = fmul fast float %3110, %3143
  %3147 = fmul fast float %3110, %3144
  %3148 = fmul fast float %3110, %3145
  %3149 = fadd fast float %3146, 1.000000e+00
  %3150 = fadd fast float %3147, 1.000000e+00
  %3151 = fadd fast float %3148, 1.000000e+00
  %3152 = fmul fast float %3149, %3097
  %3153 = fmul fast float %3150, %3098
  %3154 = fmul fast float %3151, %3099
  br label %3185

; <label>:3155                                    ; preds = %3140
  %3156 = icmp eq i32 %3105, 2
  br i1 %3156, label %3157, label %3185

; <label>:3157                                    ; preds = %3155
  %3158 = call float @dx.op.unary.f32(i32 24, float %2944)  ; Sqrt(value)
  %3159 = call float @dx.op.unary.f32(i32 24, float %2945)  ; Sqrt(value)
  %3160 = call float @dx.op.unary.f32(i32 24, float %2946)  ; Sqrt(value)
  %3161 = fadd fast float %3158, -5.000000e-01
  %3162 = fadd fast float %3159, -5.000000e-01
  %3163 = fadd fast float %3160, -5.000000e-01
  %3164 = fmul fast float %3161, %3110
  %3165 = fmul fast float %3162, %3110
  %3166 = fmul fast float %3163, %3110
  %3167 = fadd fast float %3164, 5.000000e-01
  %3168 = fadd fast float %3165, 5.000000e-01
  %3169 = fadd fast float %3166, 5.000000e-01
  %3170 = fmul fast float %3167, 2.000000e+00
  %3171 = fsub fast float 1.000000e+00, %3170
  %3172 = fmul fast float %3171, %3097
  %3173 = fadd fast float %3172, %3170
  %3174 = fmul fast float %3173, %3097
  %3175 = fmul fast float %3168, 2.000000e+00
  %3176 = fsub fast float 1.000000e+00, %3175
  %3177 = fmul fast float %3176, %3098
  %3178 = fadd fast float %3177, %3175
  %3179 = fmul fast float %3178, %3098
  %3180 = fmul fast float %3169, 2.000000e+00
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = fmul fast float %3181, %3099
  %3183 = fadd fast float %3182, %3180
  %3184 = fmul fast float %3183, %3099
  br label %3185

; <label>:3185                                    ; preds = %3157, %3155, %3142, %3112, %3096
  %3186 = phi float [ %3097, %3096 ], [ %3174, %3157 ], [ %3097, %3155 ], [ %3152, %3142 ], [ %3122, %3112 ]
  %3187 = phi float [ %3098, %3096 ], [ %3179, %3157 ], [ %3098, %3155 ], [ %3153, %3142 ], [ %3123, %3112 ]
  %3188 = phi float [ %3099, %3096 ], [ %3184, %3157 ], [ %3099, %3155 ], [ %3154, %3142 ], [ %3124, %3112 ]
  %3189 = phi float [ %3100, %3096 ], [ %3100, %3157 ], [ %3100, %3155 ], [ %3100, %3142 ], [ %3134, %3112 ]
  %3190 = phi float [ %3101, %3096 ], [ %3101, %3157 ], [ %3101, %3155 ], [ %3101, %3142 ], [ %3135, %3112 ]
  %3191 = phi float [ %3102, %3096 ], [ %3102, %3157 ], [ %3102, %3155 ], [ %3102, %3142 ], [ %3136, %3112 ]
  %3192 = phi float [ %2538, %3096 ], [ %2538, %3157 ], [ %2538, %3155 ], [ %2538, %3142 ], [ %3127, %3112 ]
  %3193 = phi float [ %2541, %3096 ], [ %2541, %3157 ], [ %2541, %3155 ], [ %2541, %3142 ], [ %3139, %3112 ]
  %3194 = and i32 %3104, 12
  %3195 = icmp eq i32 %3194, 12
  br i1 %3195, label %3268, label %3196

; <label>:3196                                    ; preds = %3185
  %3197 = and i32 %3104, 2097184
  %3198 = icmp eq i32 %3197, 2097184
  %3199 = select i1 %3198, float %2724, float 0.000000e+00
  %3200 = and i32 %3104, 4194336
  %3201 = icmp eq i32 %3200, 4194336
  %3202 = select i1 %3201, float %2724, float 0.000000e+00
  %3203 = and i32 %3104, 8388640
  %3204 = icmp eq i32 %3203, 8388640
  %3205 = select i1 %3204, float %2724, float 0.000000e+00
  %3206 = icmp eq i32 %3194, 0
  br i1 %3206, label %3207, label %3220

; <label>:3207                                    ; preds = %3196
  %3208 = fsub fast float %3025, %2530
  %3209 = fsub fast float %3026, %2531
  %3210 = fmul fast float %3199, %3208
  %3211 = fmul fast float %3199, %3209
  %3212 = fadd fast float %3210, %2530
  %3213 = fadd fast float %3211, %2531
  %3214 = fsub fast float %3027, %2540
  %3215 = fmul fast float %3202, %3214
  %3216 = fadd fast float %3215, %2540
  %3217 = fsub fast float %3024, %2539
  %3218 = fmul fast float %3205, %3217
  %3219 = fadd fast float %3218, %2539
  br label %3268

; <label>:3220                                    ; preds = %3196
  %3221 = icmp eq i32 %3194, 4
  br i1 %3221, label %3222, label %3254

; <label>:3222                                    ; preds = %3220
  %3223 = fmul fast float %3199, %3025
  %3224 = fmul fast float %3199, %3026
  %3225 = fadd fast float %3223, %2530
  %3226 = fadd fast float %3224, %2531
  %3227 = call float @dx.op.binary.f32(i32 36, float %2540, float %3027)  ; FMin(a,b)
  %3228 = fsub fast float %3227, %2540
  %3229 = fmul fast float %3228, %3202
  %3230 = fadd fast float %3229, %2540
  %3231 = fadd fast float %3024, %2539
  %3232 = fmul fast float %3231, 0x3FF337FAE0000000
  %3233 = fmul fast float %2539, %2539
  %3234 = fmul fast float %3024, %3024
  %3235 = fadd fast float %3234, %3233
  %3236 = fmul fast float %3235, 0x3FE5152B00000000
  %3237 = fmul fast float %2539, 0xBFCC1F85E0000000
  %3238 = fmul fast float %3237, %3024
  %3239 = fadd fast float %3238, 0xBFE1363700000000
  %3240 = fadd fast float %3239, %3232
  %3241 = fsub fast float %3240, %3236
  %3242 = fmul fast float %3231, 0x3FBA6F0D00000000
  %3243 = fmul fast float %3235, 0x3FD0432880000000
  %3244 = fmul fast float %2539, 0xBFEF110800000000
  %3245 = fmul fast float %3244, %3024
  %3246 = fadd fast float %3245, 1.000000e+00
  %3247 = fsub fast float %3246, %3242
  %3248 = fadd fast float %3247, %3243
  %3249 = fdiv fast float %3241, %3248
  %3250 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3251 = fsub fast float %3250, %2539
  %3252 = fmul fast float %3251, %3205
  %3253 = fadd fast float %3252, %2539
  br label %3268

; <label>:3254                                    ; preds = %3220
  %3255 = icmp eq i32 %3194, 8
  br i1 %3255, label %3256, label %3268

; <label>:3256                                    ; preds = %3254
  %3257 = fmul fast float %3199, %3025
  %3258 = fmul fast float %3199, %3026
  %3259 = fadd fast float %3257, %2530
  %3260 = fadd fast float %3258, %2531
  %3261 = call float @dx.op.binary.f32(i32 36, float %2540, float %3027)  ; FMin(a,b)
  %3262 = fsub fast float %3261, %2540
  %3263 = fmul fast float %3262, %3202
  %3264 = fadd fast float %3263, %2540
  %3265 = fsub fast float %3024, %2539
  %3266 = fmul fast float %3205, %3265
  %3267 = fadd fast float %3266, %2539
  br label %3268

; <label>:3268                                    ; preds = %3256, %3254, %3222, %3207, %3185, %2723, %2542, %2529
  %3269 = phi float [ %2530, %3185 ], [ %2530, %2723 ], [ %2530, %2529 ], [ %2530, %2542 ], [ %3212, %3207 ], [ %3225, %3222 ], [ %2530, %3254 ], [ %3259, %3256 ]
  %3270 = phi float [ %2531, %3185 ], [ %2531, %2723 ], [ %2531, %2529 ], [ %2531, %2542 ], [ %3213, %3207 ], [ %3226, %3222 ], [ %2531, %3254 ], [ %3260, %3256 ]
  %3271 = phi float [ %3186, %3185 ], [ %2532, %2723 ], [ %2532, %2529 ], [ %2532, %2542 ], [ %3186, %3207 ], [ %3186, %3222 ], [ %3186, %3254 ], [ %3186, %3256 ]
  %3272 = phi float [ %3187, %3185 ], [ %2533, %2723 ], [ %2533, %2529 ], [ %2533, %2542 ], [ %3187, %3207 ], [ %3187, %3222 ], [ %3187, %3254 ], [ %3187, %3256 ]
  %3273 = phi float [ %3188, %3185 ], [ %2534, %2723 ], [ %2534, %2529 ], [ %2534, %2542 ], [ %3188, %3207 ], [ %3188, %3222 ], [ %3188, %3254 ], [ %3188, %3256 ]
  %3274 = phi float [ %3189, %3185 ], [ %2535, %2723 ], [ %2535, %2529 ], [ %2535, %2542 ], [ %3189, %3207 ], [ %3189, %3222 ], [ %3189, %3254 ], [ %3189, %3256 ]
  %3275 = phi float [ %3190, %3185 ], [ %2536, %2723 ], [ %2536, %2529 ], [ %2536, %2542 ], [ %3190, %3207 ], [ %3190, %3222 ], [ %3190, %3254 ], [ %3190, %3256 ]
  %3276 = phi float [ %3191, %3185 ], [ %2537, %2723 ], [ %2537, %2529 ], [ %2537, %2542 ], [ %3191, %3207 ], [ %3191, %3222 ], [ %3191, %3254 ], [ %3191, %3256 ]
  %3277 = phi float [ %3192, %3185 ], [ %2538, %2723 ], [ %2538, %2529 ], [ %2538, %2542 ], [ %3192, %3207 ], [ %3192, %3222 ], [ %3192, %3254 ], [ %3192, %3256 ]
  %3278 = phi float [ %2539, %3185 ], [ %2539, %2723 ], [ %2539, %2529 ], [ %2539, %2542 ], [ %3219, %3207 ], [ %3253, %3222 ], [ %2539, %3254 ], [ %3267, %3256 ]
  %3279 = phi float [ %2540, %3185 ], [ %2540, %2723 ], [ %2540, %2529 ], [ %2540, %2542 ], [ %3216, %3207 ], [ %3230, %3222 ], [ %2540, %3254 ], [ %3264, %3256 ]
  %3280 = phi float [ %3193, %3185 ], [ %2541, %2723 ], [ %2541, %2529 ], [ %2541, %2542 ], [ %3193, %3207 ], [ %3193, %3222 ], [ %3193, %3254 ], [ %3193, %3256 ]
  %3281 = add i32 %55, 360
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3281, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = extractvalue %dx.types.ResRet.i32 %3282, 1
  %3285 = bitcast i32 %3283 to float
  %3286 = bitcast i32 %3284 to float
  %3287 = fcmp fast oge float %3285, 0.000000e+00
  %3288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3289 = extractvalue %dx.types.CBufRet.f32 %3288, 0
  %3290 = select i1 %3287, float %3285, float %3289
  %3291 = fadd fast float %3290, %207
  %3292 = fmul fast float %3286, %208
  %3293 = add i32 %55, 456
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = add i32 %3295, 0
  %3297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3297, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3299 = extractvalue %dx.types.ResRet.f32 %3298, 0
  %3300 = fmul fast float %3292, %3299
  %3301 = fadd fast float %3291, %3300
  %3302 = and i32 %199, 65535
  %3303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3302)  ; LegacyF16ToF32(value)
  %3304 = lshr i32 %199, 16
  %3305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3304)  ; LegacyF16ToF32(value)
  %3306 = and i32 %200, 65535
  %3307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3306)  ; LegacyF16ToF32(value)
  %3308 = fmul fast float %3303, %3271
  %3309 = fmul fast float %3305, %3272
  %3310 = fmul fast float %3307, %3273
  %3311 = shl i32 %201, 4
  %3312 = and i32 %3311, 32752
  %3313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3312)  ; LegacyF16ToF32(value)
  %3314 = lshr i32 %201, 7
  %3315 = and i32 %3314, 32752
  %3316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3315)  ; LegacyF16ToF32(value)
  %3317 = lshr i32 %201, 22
  %3318 = shl nuw nsw i32 %3317, 5
  %3319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3318)  ; LegacyF16ToF32(value)
  %3320 = and i32 %202, 65535
  %3321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3320)  ; LegacyF16ToF32(value)
  %3322 = fmul fast float %3313, %3274
  %3323 = fmul fast float %3322, %3321
  %3324 = fmul fast float %3316, %3275
  %3325 = fmul fast float %3324, %3321
  %3326 = fmul fast float %3319, %3276
  %3327 = fmul fast float %3326, %3321
  %3328 = call float @dx.op.dot2.f32(i32 54, float %3269, float %3270, float %3269, float %3270)  ; Dot2(ax,ay,bx,by)
  %3329 = fmul fast float %3328, 0x3FE3333340000000
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = call float @dx.op.dot3.f32(i32 55, float %3269, float %3270, float %3330, float %3269, float %3270, float %3330)  ; Dot3(ax,ay,az,bx,by,bz)
  %3332 = call float @dx.op.unary.f32(i32 25, float %3331)  ; Rsqrt(value)
  %3333 = fmul fast float %3332, %3269
  %3334 = fmul fast float %3332, %3270
  %3335 = fmul fast float %3330, %3332
  %3336 = fmul fast float %3335, %113
  %3337 = fmul fast float %3335, %114
  %3338 = fmul fast float %3335, %115
  %3339 = fmul fast float %3333, %81
  %3340 = fmul fast float %3333, %82
  %3341 = fmul fast float %3333, %83
  %3342 = fadd fast float %3336, %3339
  %3343 = fadd fast float %3337, %3340
  %3344 = fadd fast float %3338, %3341
  %3345 = fmul fast float %125, %3334
  %3346 = fmul fast float %126, %3334
  %3347 = fmul fast float %127, %3334
  %3348 = fadd fast float %3342, %3345
  %3349 = fadd fast float %3343, %3346
  %3350 = fadd fast float %3344, %3347
  %3351 = call float @dx.op.dot3.f32(i32 55, float %3348, float %3349, float %3350, float %3348, float %3349, float %3350)  ; Dot3(ax,ay,az,bx,by,bz)
  %3352 = call float @dx.op.unary.f32(i32 25, float %3351)  ; Rsqrt(value)
  %3353 = fmul fast float %3348, %3352
  %3354 = fmul fast float %3349, %3352
  %3355 = fmul fast float %3350, %3352
  %3356 = icmp eq i32 %57, 65535
  br i1 %3356, label %3875, label %3357

; <label>:3357                                    ; preds = %3268
  %3358 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3359 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3360 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3361 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3362 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3363 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3364 = fadd fast float %3358, %58
  %3365 = fadd fast float %3359, %59
  %3366 = fadd fast float %3360, %60
  %3367 = fadd fast float %3361, %58
  %3368 = fadd fast float %3362, %59
  %3369 = fadd fast float %3363, %60
  %3370 = mul i32 %57, 48
  %3371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = add i32 %3370, 16
  %3376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.ResRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.ResRet.f32 %3376, 2
  %3380 = add i32 %3370, 32
  %3381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.f32 %3381, 0
  %3383 = extractvalue %dx.types.ResRet.f32 %3381, 1
  %3384 = extractvalue %dx.types.ResRet.f32 %3381, 2
  %3385 = extractvalue %dx.types.ResRet.f32 %3381, 3
  %3386 = bitcast float %3385 to i32
  %3387 = fmul fast float %3372, %58
  %3388 = fmul fast float %3373, %59
  %3389 = fmul fast float %3374, %60
  %3390 = fsub fast float %3387, %3377
  %3391 = fsub fast float %3388, %3378
  %3392 = fsub fast float %3389, %3379
  %3393 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  %3394 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  %3395 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  %3396 = fmul fast float %3393, %3382
  %3397 = fmul fast float %3394, %3383
  %3398 = fmul fast float %3395, %3384
  %3399 = fadd fast float %3382, -1.000000e+00
  %3400 = fadd fast float %3383, -1.000000e+00
  %3401 = fadd fast float %3384, -1.000000e+00
  %3402 = call float @dx.op.unary.f32(i32 27, float %3396)  ; Round_ni(value)
  %3403 = call float @dx.op.unary.f32(i32 27, float %3397)  ; Round_ni(value)
  %3404 = call float @dx.op.unary.f32(i32 27, float %3398)  ; Round_ni(value)
  %3405 = call float @dx.op.binary.f32(i32 36, float %3402, float %3399)  ; FMin(a,b)
  %3406 = call float @dx.op.binary.f32(i32 36, float %3403, float %3400)  ; FMin(a,b)
  %3407 = call float @dx.op.binary.f32(i32 36, float %3404, float %3401)  ; FMin(a,b)
  %3408 = fmul fast float %3407, %3383
  %3409 = fadd fast float %3408, %3406
  %3410 = fmul fast float %3409, %3382
  %3411 = fadd fast float %3410, %3405
  %3412 = fptosi float %3411 to i32
  %3413 = add nsw i32 %3412, %3386
  %3414 = shl nsw i32 %3413, 2
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = lshr i32 %3416, 16
  %3418 = icmp eq i32 %3417, 0
  br i1 %3418, label %3843, label %3419

; <label>:3419                                    ; preds = %3357
  br label %3420

; <label>:3420                                    ; preds = %3542, %3419
  %3421 = phi i32 [ %3444, %3542 ], [ %3417, %3419 ]
  %3422 = phi float [ %3543, %3542 ], [ 0.000000e+00, %3419 ]
  %3423 = phi float [ %3544, %3542 ], [ %1060, %3419 ]
  %3424 = phi float [ %3545, %3542 ], [ %3301, %3419 ]
  %3425 = phi float [ %3546, %3542 ], [ %3280, %3419 ]
  %3426 = phi float [ %3547, %3542 ], [ 0.000000e+00, %3419 ]
  %3427 = phi float [ %3548, %3542 ], [ 0.000000e+00, %3419 ]
  %3428 = phi float [ %3549, %3542 ], [ %3323, %3419 ]
  %3429 = phi float [ %3550, %3542 ], [ %3325, %3419 ]
  %3430 = phi float [ %3551, %3542 ], [ %3327, %3419 ]
  %3431 = phi float [ %3552, %3542 ], [ %3353, %3419 ]
  %3432 = phi float [ %3553, %3542 ], [ %3354, %3419 ]
  %3433 = phi float [ %3554, %3542 ], [ %3355, %3419 ]
  %3434 = phi float [ %3555, %3542 ], [ %3279, %3419 ]
  %3435 = phi float [ %3556, %3542 ], [ %3278, %3419 ]
  %3436 = phi float [ %3557, %3542 ], [ 0.000000e+00, %3419 ]
  %3437 = phi float [ %3558, %3542 ], [ %3277, %3419 ]
  %3438 = phi float [ %3559, %3542 ], [ %3308, %3419 ]
  %3439 = phi float [ %3560, %3542 ], [ %3309, %3419 ]
  %3440 = phi float [ %3561, %3542 ], [ %3310, %3419 ]
  %3441 = shl nuw nsw i32 %3421, 2
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = lshr i32 %3443, 16
  %3445 = shl i32 %3443, 8
  %3446 = and i32 %3445, 16776960
  %3447 = or i32 %3446, 48
  %3448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.ResRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.ResRet.f32 %3448, 2
  %3452 = or i32 %3446, 64
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = extractvalue %dx.types.ResRet.i32 %3453, 1
  %3456 = or i32 %3446, 80
  %3457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 3
  %3460 = or i32 %3446, 96
  %3461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3464 = extractvalue %dx.types.ResRet.f32 %3461, 2
  %3465 = extractvalue %dx.types.ResRet.f32 %3461, 3
  %3466 = or i32 %3446, 112
  %3467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 2
  %3469 = or i32 %3446, 128
  %3470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.ResRet.f32 %3470, 1
  %3473 = extractvalue %dx.types.ResRet.f32 %3470, 2
  %3474 = extractvalue %dx.types.ResRet.f32 %3470, 3
  %3475 = or i32 %3446, 144
  %3476 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = or i32 %3446, 160
  %3482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.ResRet.f32 %3482, 1
  %3485 = extractvalue %dx.types.ResRet.f32 %3482, 2
  %3486 = extractvalue %dx.types.ResRet.f32 %3482, 3
  %3487 = or i32 %3446, 192
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = or i32 %3446, 208
  %3491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3493 = or i32 %3446, 248
  %3494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.f32 %3494, 0
  %3496 = extractvalue %dx.types.ResRet.f32 %3494, 1
  %3497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.f32 %3497, 0
  %3499 = extractvalue %dx.types.ResRet.f32 %3497, 1
  %3500 = extractvalue %dx.types.ResRet.f32 %3497, 2
  %3501 = extractvalue %dx.types.ResRet.f32 %3497, 3
  %3502 = call float @dx.op.dot4.f32(i32 56, float %3498, float %3499, float %3500, float %3501, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3503 = or i32 %3446, 16
  %3504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.ResRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.ResRet.f32 %3504, 2
  %3508 = extractvalue %dx.types.ResRet.f32 %3504, 3
  %3509 = call float @dx.op.dot4.f32(i32 56, float %3505, float %3506, float %3507, float %3508, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3510 = or i32 %3446, 32
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = extractvalue %dx.types.ResRet.f32 %3511, 3
  %3516 = call float @dx.op.dot4.f32(i32 56, float %3512, float %3513, float %3514, float %3515, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3517 = call float @dx.op.unary.f32(i32 27, float %3502)  ; Round_ni(value)
  %3518 = call float @dx.op.unary.f32(i32 6, float %3517)  ; FAbs(value)
  %3519 = call float @dx.op.unary.f32(i32 27, float %3509)  ; Round_ni(value)
  %3520 = call float @dx.op.unary.f32(i32 6, float %3519)  ; FAbs(value)
  %3521 = call float @dx.op.unary.f32(i32 6, float %3516)  ; FAbs(value)
  %3522 = call float @dx.op.unary.f32(i32 27, float %3521)  ; Round_ni(value)
  %3523 = fadd fast float %3520, %3518
  %3524 = fadd fast float %3523, %3522
  %3525 = fcmp fast oeq float %3524, 0.000000e+00
  %3526 = call float @dx.op.dot4.f32(i32 56, float %3498, float %3499, float %3500, float %3501, float %3364, float %3365, float %3366, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3527 = call float @dx.op.dot4.f32(i32 56, float %3505, float %3506, float %3507, float %3508, float %3364, float %3365, float %3366, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3528 = call float @dx.op.dot4.f32(i32 56, float %3498, float %3499, float %3500, float %3501, float %3367, float %3368, float %3369, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3529 = call float @dx.op.dot4.f32(i32 56, float %3505, float %3506, float %3507, float %3508, float %3367, float %3368, float %3369, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3530 = fsub fast float %3526, %3502
  %3531 = fsub fast float %3528, %3502
  %3532 = fsub fast float %3527, %3509
  %3533 = fsub fast float %3529, %3509
  %3534 = call float @dx.op.dot3.f32(i32 55, float %3449, float %3450, float %3451, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %3535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3536 = extractvalue %dx.types.CBufRet.f32 %3535, 2
  %3537 = fadd fast float %3536, %3534
  %3538 = call float @dx.op.unary.f32(i32 7, float %3537)  ; Saturate(value)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3535, 0
  %3540 = fcmp fast ogt float %3538, %3539
  %3541 = and i1 %3525, %3540
  br i1 %3541, label %3563, label %3542

; <label>:3542                                    ; preds = %3829, %3646, %3563, %3420
  %3543 = phi float [ %3422, %3563 ], [ %3649, %3646 ], [ %3649, %3829 ], [ %3422, %3420 ]
  %3544 = phi float [ %3423, %3563 ], [ %3423, %3646 ], [ %3804, %3829 ], [ %3423, %3420 ]
  %3545 = phi float [ %3424, %3563 ], [ %3424, %3646 ], [ %3803, %3829 ], [ %3424, %3420 ]
  %3546 = phi float [ %3425, %3563 ], [ %3425, %3646 ], [ %3801, %3829 ], [ %3425, %3420 ]
  %3547 = phi float [ %3426, %3563 ], [ %3426, %3646 ], [ %3773, %3829 ], [ %3426, %3420 ]
  %3548 = phi float [ %3427, %3563 ], [ %3427, %3646 ], [ %3771, %3829 ], [ %3427, %3420 ]
  %3549 = phi float [ %3428, %3563 ], [ %3428, %3646 ], [ %3839, %3829 ], [ %3428, %3420 ]
  %3550 = phi float [ %3429, %3563 ], [ %3429, %3646 ], [ %3840, %3829 ], [ %3429, %3420 ]
  %3551 = phi float [ %3430, %3563 ], [ %3430, %3646 ], [ %3841, %3829 ], [ %3430, %3420 ]
  %3552 = phi float [ %3431, %3563 ], [ %3431, %3646 ], [ %3752, %3829 ], [ %3431, %3420 ]
  %3553 = phi float [ %3432, %3563 ], [ %3432, %3646 ], [ %3753, %3829 ], [ %3432, %3420 ]
  %3554 = phi float [ %3433, %3563 ], [ %3433, %3646 ], [ %3754, %3829 ], [ %3433, %3420 ]
  %3555 = phi float [ %3434, %3563 ], [ %3434, %3646 ], [ %3781, %3829 ], [ %3434, %3420 ]
  %3556 = phi float [ %3435, %3563 ], [ %3435, %3646 ], [ %3778, %3829 ], [ %3435, %3420 ]
  %3557 = phi float [ %3436, %3563 ], [ %3436, %3646 ], [ %3775, %3829 ], [ %3436, %3420 ]
  %3558 = phi float [ %3437, %3563 ], [ %3437, %3646 ], [ %3769, %3829 ], [ %3437, %3420 ]
  %3559 = phi float [ %3438, %3563 ], [ %3438, %3646 ], [ %3764, %3829 ], [ %3438, %3420 ]
  %3560 = phi float [ %3439, %3563 ], [ %3439, %3646 ], [ %3765, %3829 ], [ %3439, %3420 ]
  %3561 = phi float [ %3440, %3563 ], [ %3440, %3646 ], [ %3766, %3829 ], [ %3440, %3420 ]
  %3562 = icmp eq i32 %3444, 0
  br i1 %3562, label %3842, label %3420

; <label>:3563                                    ; preds = %3420
  %3564 = extractvalue %dx.types.ResRet.f32 %3448, 3
  %3565 = extractvalue %dx.types.ResRet.f32 %3467, 3
  %3566 = extractvalue %dx.types.ResRet.f32 %3467, 1
  %3567 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3568 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3569 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3570 = extractvalue %dx.types.ResRet.i32 %3453, 3
  %3571 = extractvalue %dx.types.ResRet.i32 %3453, 2
  %3572 = bitcast float %3564 to i32
  %3573 = add i32 %3570, 0
  %3574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3573, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3576 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3574, %dx.types.Handle %3575, float %3502, float %3509, float undef, float undef, i32 0, i32 0, i32 undef, float %3530, float %3532, float undef, float %3531, float %3533, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = fmul fast float %3577, %3569
  %3579 = fadd fast float %3578, %3568
  %3580 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3581 = fmul fast float %3502, %3462
  %3582 = call float @dx.op.tertiary.f32(i32 46, float %3463, float %3509, float %3581)  ; FMad(a,b,c)
  %3583 = fadd fast float %3582, %3567
  %3584 = fmul fast float %3502, %3464
  %3585 = call float @dx.op.tertiary.f32(i32 46, float %3465, float %3509, float %3584)  ; FMad(a,b,c)
  %3586 = fadd fast float %3585, %3566
  %3587 = fmul fast float %3530, %3462
  %3588 = call float @dx.op.tertiary.f32(i32 46, float %3463, float %3532, float %3587)  ; FMad(a,b,c)
  %3589 = fmul fast float %3530, %3464
  %3590 = call float @dx.op.tertiary.f32(i32 46, float %3465, float %3532, float %3589)  ; FMad(a,b,c)
  %3591 = fmul fast float %3531, %3462
  %3592 = call float @dx.op.tertiary.f32(i32 46, float %3463, float %3533, float %3591)  ; FMad(a,b,c)
  %3593 = fmul fast float %3531, %3464
  %3594 = call float @dx.op.tertiary.f32(i32 46, float %3465, float %3533, float %3593)  ; FMad(a,b,c)
  %3595 = add i32 %3571, 0
  %3596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3595, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3597 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3596, %dx.types.Handle %3575, float %3583, float %3586, float undef, float undef, i32 0, i32 0, i32 undef, float %3588, float %3590, float undef, float %3592, float %3594, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = and i32 %3572, 1024
  %3600 = icmp ne i32 %3599, 0
  %3601 = fcmp fast ogt float %3598, 0x3FE0101020000000
  %3602 = uitofp i1 %3601 to float
  %3603 = select i1 %3600, float %3602, float %3598
  %3604 = and i32 %3572, 8192
  %3605 = icmp ne i32 %3604, 0
  %3606 = select i1 %3605, float %3565, float 1.000000e+00
  %3607 = fmul fast float %3502, 2.000000e+00
  %3608 = fadd fast float %3607, -1.000000e+00
  %3609 = call float @dx.op.unary.f32(i32 6, float %3608)  ; FAbs(value)
  %3610 = fmul fast float %3609, %3495
  %3611 = fsub fast float %3610, %3495
  %3612 = call float @dx.op.unary.f32(i32 7, float %3611)  ; Saturate(value)
  %3613 = fmul fast float %3509, 2.000000e+00
  %3614 = fadd fast float %3613, -1.000000e+00
  %3615 = call float @dx.op.unary.f32(i32 6, float %3614)  ; FAbs(value)
  %3616 = fmul fast float %3615, %3496
  %3617 = fsub fast float %3616, %3496
  %3618 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3619 = fmul fast float %3521, %3458
  %3620 = fsub fast float %3619, %3458
  %3621 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  %3622 = fmul fast float %3580, %3606
  %3623 = fmul fast float %3622, %3577
  %3624 = fmul fast float %3623, %3612
  %3625 = fmul fast float %3624, %3603
  %3626 = fmul fast float %3625, %3618
  %3627 = fmul fast float %3626, %3621
  %3628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3628, 1
  %3630 = extractvalue %dx.types.CBufRet.f32 %3628, 0
  %3631 = fsub fast float %3538, %3630
  %3632 = fmul fast float %3631, %3629
  %3633 = call float @dx.op.unary.f32(i32 7, float %3632)  ; Saturate(value)
  %3634 = fmul fast float %3627, %3459
  %3635 = fadd fast float %3627, %3459
  %3636 = fmul fast float %3635, %3468
  %3637 = fsub fast float %3636, %3468
  %3638 = call float @dx.op.unary.f32(i32 7, float %3637)  ; Saturate(value)
  %3639 = and i32 %3572, 128
  %3640 = icmp ne i32 %3639, 0
  %3641 = select i1 %3640, float %3638, float %3634
  %3642 = fmul fast float %3641, %3633
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 0
  %3645 = fcmp fast ugt float %3642, %3644
  br i1 %3645, label %3646, label %3542

; <label>:3646                                    ; preds = %3563
  %3647 = select i1 %3605, float %3642, float 0.000000e+00
  %3648 = fadd fast float %3647, %3422
  %3649 = call float @dx.op.unary.f32(i32 7, float %3648)  ; Saturate(value)
  br i1 %3605, label %3542, label %3650

; <label>:3650                                    ; preds = %3646
  %3651 = and i32 %3572, 4
  %3652 = and i32 %3572, 8
  %3653 = add i32 %3454, 0
  %3654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3653, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3656 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3654, %dx.types.Handle %3655, float %3583, float %3586, float undef, float undef, i32 0, i32 0, i32 undef, float %3588, float %3590, float undef, float %3592, float %3594, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 0
  %3658 = extractvalue %dx.types.ResRet.f32 %3656, 1
  %3659 = extractvalue %dx.types.ResRet.f32 %3656, 2
  %3660 = extractvalue %dx.types.ResRet.f32 %3656, 3
  %3661 = bitcast float %3480 to i32
  %3662 = and i32 %3661, 255
  %3663 = uitofp i32 %3662 to float
  %3664 = lshr i32 %3661, 8
  %3665 = and i32 %3664, 255
  %3666 = uitofp i32 %3665 to float
  %3667 = fmul fast float %3660, %3663
  %3668 = fadd fast float %3667, %3666
  %3669 = fmul fast float %3668, 0x3F70101000000000
  %3670 = add i32 %3455, 0
  %3671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3670, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3672 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3671, %dx.types.Handle %3655, float %3583, float %3586, float undef, float undef, i32 0, i32 0, i32 undef, float %3588, float %3590, float undef, float %3592, float %3594, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = extractvalue %dx.types.ResRet.f32 %3672, 3
  %3677 = bitcast float %3474 to i32
  %3678 = and i32 %3677, 255
  %3679 = uitofp i32 %3678 to float
  %3680 = lshr i32 %3677, 8
  %3681 = and i32 %3680, 255
  %3682 = uitofp i32 %3681 to float
  %3683 = lshr i32 %3677, 16
  %3684 = and i32 %3683, 255
  %3685 = uitofp i32 %3684 to float
  %3686 = fmul fast float %3685, 0x3F70101000000000
  %3687 = fmul fast float %3673, %3679
  %3688 = fadd fast float %3687, %3682
  %3689 = fmul fast float %3688, 0x3F70101000000000
  %3690 = fadd fast float %3674, -5.000000e-01
  %3691 = fadd fast float %3676, -5.000000e-01
  %3692 = fmul fast float %3690, %3686
  %3693 = fmul fast float %3691, %3686
  %3694 = fadd fast float %3692, 5.000000e-01
  %3695 = fadd fast float %3693, 5.000000e-01
  %3696 = fmul fast float %3657, %3483
  %3697 = fmul fast float %3658, %3484
  %3698 = fmul fast float %3659, %3485
  %3699 = fmul fast float %3694, 2.000000e+00
  %3700 = fadd fast float %3699, -1.000000e+00
  %3701 = fmul fast float %3695, 2.000000e+00
  %3702 = fadd fast float %3701, -1.000000e+00
  %3703 = fadd fast float %3700, %3702
  %3704 = fmul fast float %3703, 5.000000e-01
  %3705 = fsub fast float %3700, %3702
  %3706 = fmul fast float %3705, 5.000000e-01
  %3707 = call float @dx.op.unary.f32(i32 6, float %3704)  ; FAbs(value)
  %3708 = fsub fast float 1.000000e+00, %3707
  %3709 = call float @dx.op.unary.f32(i32 6, float %3706)  ; FAbs(value)
  %3710 = fsub fast float %3708, %3709
  %3711 = call float @dx.op.dot3.f32(i32 55, float %3704, float %3706, float %3710, float %3704, float %3706, float %3710)  ; Dot3(ax,ay,az,bx,by,bz)
  %3712 = call float @dx.op.unary.f32(i32 25, float %3711)  ; Rsqrt(value)
  %3713 = fmul fast float %3704, %3712
  %3714 = fmul fast float %3706, %3712
  %3715 = fmul fast float %3712, %3710
  %3716 = fmul fast float %3715, %3449
  %3717 = fmul fast float %3715, %3450
  %3718 = fmul fast float %3715, %3451
  %3719 = fmul fast float %3713, %3471
  %3720 = fmul fast float %3713, %3472
  %3721 = fmul fast float %3713, %3473
  %3722 = fadd fast float %3719, %3716
  %3723 = fadd fast float %3720, %3717
  %3724 = fadd fast float %3721, %3718
  %3725 = fmul fast float %3714, %3477
  %3726 = fmul fast float %3714, %3478
  %3727 = fmul fast float %3714, %3479
  %3728 = fadd fast float %3722, %3725
  %3729 = fadd fast float %3723, %3726
  %3730 = fadd fast float %3724, %3727
  %3731 = call float @dx.op.dot3.f32(i32 55, float %3728, float %3729, float %3730, float %3728, float %3729, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = call float @dx.op.unary.f32(i32 25, float %3731)  ; Rsqrt(value)
  %3733 = fmul fast float %3728, %3732
  %3734 = fmul fast float %3729, %3732
  %3735 = fmul fast float %3730, %3732
  %3736 = icmp ne i32 %3652, 0
  %3737 = select i1 %3736, float 1.000000e+00, float 0.000000e+00
  %3738 = fmul fast float %3642, %3737
  %3739 = and i32 %3572, 1
  %3740 = icmp eq i32 %3739, 0
  br i1 %3740, label %3741, label %3745

; <label>:3741                                    ; preds = %3650
  %3742 = fsub fast float %3733, %3431
  %3743 = fsub fast float %3734, %3432
  %3744 = fsub fast float %3735, %3433
  br label %3745

; <label>:3745                                    ; preds = %3741, %3650
  %3746 = phi float [ %3742, %3741 ], [ %3733, %3650 ]
  %3747 = phi float [ %3743, %3741 ], [ %3734, %3650 ]
  %3748 = phi float [ %3744, %3741 ], [ %3735, %3650 ]
  %3749 = fmul float %3748, %3738
  %3750 = fmul float %3747, %3738
  %3751 = fmul float %3746, %3738
  %3752 = fadd fast float %3751, %3431
  %3753 = fadd fast float %3750, %3432
  %3754 = fadd fast float %3749, %3433
  %3755 = icmp ne i32 %3651, 0
  %3756 = select i1 %3755, float 1.000000e+00, float 0.000000e+00
  %3757 = fmul fast float %3642, %3756
  %3758 = fsub fast float %3696, %3438
  %3759 = fsub fast float %3697, %3439
  %3760 = fsub fast float %3698, %3440
  %3761 = fmul fast float %3758, %3757
  %3762 = fmul fast float %3759, %3757
  %3763 = fmul fast float %3760, %3757
  %3764 = fadd fast float %3761, %3438
  %3765 = fadd fast float %3762, %3439
  %3766 = fadd fast float %3763, %3440
  %3767 = fsub fast float %3669, %3437
  %3768 = fmul fast float %3767, %3757
  %3769 = fadd fast float %3768, %3437
  %3770 = fmul fast float %3757, %3427
  %3771 = fsub fast float %3427, %3770
  %3772 = fmul fast float %3757, %3426
  %3773 = fsub fast float %3426, %3772
  %3774 = fadd fast float %3642, %3436
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = fsub fast float %3689, %3435
  %3777 = fmul fast float %3776, %3738
  %3778 = fadd fast float %3777, %3435
  %3779 = fsub fast float %3675, %3434
  %3780 = fmul fast float %3779, %3738
  %3781 = fadd fast float %3780, %3434
  %3782 = call float @dx.op.dot3.f32(i32 55, float %3696, float %3697, float %3698, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 0
  %3785 = extractvalue %dx.types.CBufRet.f32 %3783, 1
  %3786 = fmul fast float %3785, %3782
  %3787 = fadd fast float %3786, %3784
  %3788 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3789 = bitcast float %3486 to i32
  %3790 = and i32 %3789, 65535
  %3791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3790)  ; LegacyF16ToF32(value)
  %3792 = lshr i32 %3789, 16
  %3793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3792)  ; LegacyF16ToF32(value)
  %3794 = fcmp fast oge float %3791, 0.000000e+00
  %3795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3796 = extractvalue %dx.types.CBufRet.f32 %3795, 0
  %3797 = select i1 %3794, float %3791, float %3796
  %3798 = fadd fast float %3797, %3793
  %3799 = fsub fast float %3788, %3425
  %3800 = fmul fast float %3799, %3642
  %3801 = fadd fast float %3800, %3425
  %3802 = fmul fast float %3798, %3642
  %3803 = call float @dx.op.binary.f32(i32 35, float %3424, float %3802)  ; FMax(a,b)
  %3804 = call float @dx.op.binary.f32(i32 35, float %3423, float %3642)  ; FMax(a,b)
  %3805 = and i32 %3572, 16
  %3806 = icmp eq i32 %3805, 0
  br i1 %3806, label %3829, label %3807

; <label>:3807                                    ; preds = %3745
  %3808 = bitcast float %3492 to i32
  %3809 = add i32 %3489, 0
  %3810 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3809, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3811 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3810, %dx.types.Handle %3655, float %3583, float %3586, float undef, float undef, i32 0, i32 0, i32 undef, float %3588, float %3590, float undef, float %3592, float %3594, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = and i32 %3808, 65535
  %3816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3815)  ; LegacyF16ToF32(value)
  %3817 = fmul fast float %3812, %3483
  %3818 = fmul fast float %3813, %3484
  %3819 = fmul fast float %3814, %3485
  %3820 = and i32 %3572, 16384
  %3821 = icmp ne i32 %3820, 0
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 0
  %3824 = select i1 %3821, float %3823, float 1.000000e+00
  %3825 = fmul fast float %3824, %3816
  %3826 = fmul fast float %3817, %3825
  %3827 = fmul fast float %3818, %3825
  %3828 = fmul fast float %3819, %3825
  br label %3829

; <label>:3829                                    ; preds = %3807, %3745
  %3830 = phi float [ %3826, %3807 ], [ 0.000000e+00, %3745 ]
  %3831 = phi float [ %3827, %3807 ], [ 0.000000e+00, %3745 ]
  %3832 = phi float [ %3828, %3807 ], [ 0.000000e+00, %3745 ]
  %3833 = fsub fast float %3830, %3428
  %3834 = fsub fast float %3831, %3429
  %3835 = fsub fast float %3832, %3430
  %3836 = fmul fast float %3833, %3642
  %3837 = fmul fast float %3834, %3642
  %3838 = fmul fast float %3835, %3642
  %3839 = fadd fast float %3836, %3428
  %3840 = fadd fast float %3837, %3429
  %3841 = fadd fast float %3838, %3430
  br label %3542

; <label>:3842                                    ; preds = %3542
  br label %3843

; <label>:3843                                    ; preds = %3842, %3357
  %3844 = phi float [ 0.000000e+00, %3357 ], [ %3543, %3842 ]
  %3845 = phi float [ %1060, %3357 ], [ %3544, %3842 ]
  %3846 = phi float [ %3301, %3357 ], [ %3545, %3842 ]
  %3847 = phi float [ %3280, %3357 ], [ %3546, %3842 ]
  %3848 = phi float [ 0.000000e+00, %3357 ], [ %3547, %3842 ]
  %3849 = phi float [ 0.000000e+00, %3357 ], [ %3548, %3842 ]
  %3850 = phi float [ %3323, %3357 ], [ %3549, %3842 ]
  %3851 = phi float [ %3325, %3357 ], [ %3550, %3842 ]
  %3852 = phi float [ %3327, %3357 ], [ %3551, %3842 ]
  %3853 = phi float [ %3353, %3357 ], [ %3552, %3842 ]
  %3854 = phi float [ %3354, %3357 ], [ %3553, %3842 ]
  %3855 = phi float [ %3355, %3357 ], [ %3554, %3842 ]
  %3856 = phi float [ %3279, %3357 ], [ %3555, %3842 ]
  %3857 = phi float [ %3278, %3357 ], [ %3556, %3842 ]
  %3858 = phi float [ 0.000000e+00, %3357 ], [ %3557, %3842 ]
  %3859 = phi float [ %3277, %3357 ], [ %3558, %3842 ]
  %3860 = phi float [ %3308, %3357 ], [ %3559, %3842 ]
  %3861 = phi float [ %3309, %3357 ], [ %3560, %3842 ]
  %3862 = phi float [ %3310, %3357 ], [ %3561, %3842 ]
  %3863 = call float @dx.op.dot3.f32(i32 55, float %3853, float %3854, float %3855, float %3853, float %3854, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %3864 = call float @dx.op.unary.f32(i32 25, float %3863)  ; Rsqrt(value)
  %3865 = fmul fast float %3864, %3853
  %3866 = fmul fast float %3864, %3854
  %3867 = fmul fast float %3864, %3855
  %3868 = fadd fast float %3858, %1060
  %3869 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3870 = call float @dx.op.dot3.f32(i32 55, float %3865, float %3866, float %3867, float %3865, float %3866, float %3867)  ; Dot3(ax,ay,az,bx,by,bz)
  %3871 = call float @dx.op.unary.f32(i32 25, float %3870)  ; Rsqrt(value)
  %3872 = fmul fast float %3871, %3865
  %3873 = fmul fast float %3871, %3866
  %3874 = fmul fast float %3871, %3867
  br label %3875

; <label>:3875                                    ; preds = %3843, %3268
  %3876 = phi float [ %3872, %3843 ], [ %3353, %3268 ]
  %3877 = phi float [ %3873, %3843 ], [ %3354, %3268 ]
  %3878 = phi float [ %3874, %3843 ], [ %3355, %3268 ]
  %3879 = phi float [ %3860, %3843 ], [ %3308, %3268 ]
  %3880 = phi float [ %3861, %3843 ], [ %3309, %3268 ]
  %3881 = phi float [ %3862, %3843 ], [ %3310, %3268 ]
  %3882 = phi float [ %3850, %3843 ], [ %3323, %3268 ]
  %3883 = phi float [ %3851, %3843 ], [ %3325, %3268 ]
  %3884 = phi float [ %3852, %3843 ], [ %3327, %3268 ]
  %3885 = phi float [ %3859, %3843 ], [ %3277, %3268 ]
  %3886 = phi float [ %3869, %3843 ], [ %1060, %3268 ]
  %3887 = phi float [ %3857, %3843 ], [ %3278, %3268 ]
  %3888 = phi float [ %3856, %3843 ], [ %3279, %3268 ]
  %3889 = phi float [ %3849, %3843 ], [ 0.000000e+00, %3268 ]
  %3890 = phi float [ %3848, %3843 ], [ 0.000000e+00, %3268 ]
  %3891 = phi float [ %3844, %3843 ], [ 0.000000e+00, %3268 ]
  %3892 = phi float [ %3846, %3843 ], [ %3301, %3268 ]
  %3893 = phi float [ %3845, %3843 ], [ %1060, %3268 ]
  %3894 = phi float [ %3847, %3843 ], [ %3280, %3268 ]
  %3895 = fadd fast float %3885, 0xBFB99999A0000000
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = fmul fast float %3896, 0x3FF1C71C80000000
  %3898 = call float @dx.op.binary.f32(i32 36, float %3885, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3899 = fsub fast float 1.000000e+00, %3897
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3901 = fmul fast float %3900, %3879
  %3902 = fmul fast float %3900, %3880
  %3903 = fmul fast float %3900, %3881
  %3904 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3905 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3906 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3907 = fmul fast float %3897, %3879
  %3908 = fmul fast float %3897, %3880
  %3909 = fmul fast float %3897, %3881
  %3910 = fadd fast float %3907, %3898
  %3911 = fadd fast float %3908, %3898
  %3912 = fadd fast float %3909, %3898
  %3913 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3914 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3915 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3916 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.i32 %3917, 3
  %3919 = and i32 %3918, 8
  %3920 = icmp ne i32 %3919, 0
  %3921 = call float @dx.op.binary.f32(i32 35, float %3904, float %3879)  ; FMax(a,b)
  %3922 = call float @dx.op.binary.f32(i32 35, float %3905, float %3879)  ; FMax(a,b)
  %3923 = call float @dx.op.binary.f32(i32 35, float %3906, float %3879)  ; FMax(a,b)
  %3924 = call float @dx.op.dot3.f32(i32 55, float %3904, float %3905, float %3906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3925 = select i1 %265, float %3879, float %3904
  %3926 = select i1 %265, float %3924, float %3905
  %3927 = select i1 %265, float 1.000000e+00, float %3906
  %3928 = select i1 %3920, float %3921, float %3925
  %3929 = select i1 %3920, float %3922, float %3926
  %3930 = select i1 %3920, float %3923, float %3927
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 0
  %3933 = extractvalue %dx.types.CBufRet.f32 %3931, 1
  %3934 = extractvalue %dx.types.CBufRet.f32 %3931, 2
  %3935 = fadd fast float %3932, %193
  %3936 = fadd fast float %3933, %194
  %3937 = fadd fast float %3934, %195
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.CBufRet.f32 %3938, 1
  %3941 = fsub fast float %3935, %3939
  %3942 = fsub fast float %3936, %3940
  %3943 = fmul fast float %3941, %3941
  %3944 = fmul fast float %3942, %3942
  %3945 = fadd fast float %3943, %3944
  %3946 = call float @dx.op.unary.f32(i32 24, float %3945)  ; Sqrt(value)
  %3947 = extractvalue %dx.types.CBufRet.f32 %3938, 2
  %3948 = fcmp fast olt float %3946, %3947
  br i1 %3948, label %3949, label %4016

; <label>:3949                                    ; preds = %3875
  %3950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3950, 0
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 0
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.CBufRet.f32 %3950, 1
  %3957 = extractvalue %dx.types.CBufRet.f32 %3952, 1
  %3958 = extractvalue %dx.types.CBufRet.f32 %3954, 1
  %3959 = extractvalue %dx.types.CBufRet.f32 %3950, 3
  %3960 = extractvalue %dx.types.CBufRet.f32 %3952, 3
  %3961 = extractvalue %dx.types.CBufRet.f32 %3954, 3
  %3962 = fadd fast float %3959, %3935
  %3963 = fadd fast float %3960, %3936
  %3964 = fadd fast float %3961, %3937
  %3965 = fmul fast float %3962, %3951
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3963, float %3953, float %3965)  ; FMad(a,b,c)
  %3967 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3955, float %3966)  ; FMad(a,b,c)
  %3968 = fmul fast float %3962, %3956
  %3969 = call float @dx.op.tertiary.f32(i32 46, float %3963, float %3957, float %3968)  ; FMad(a,b,c)
  %3970 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3958, float %3969)  ; FMad(a,b,c)
  %3971 = fsub fast float %3967, %3959
  %3972 = fsub fast float %3970, %3960
  %3973 = fsub fast float %3971, %3939
  %3974 = fadd fast float %3973, %3947
  %3975 = fsub fast float %3972, %3940
  %3976 = fadd fast float %3975, %3947
  %3977 = extractvalue %dx.types.CBufRet.f32 %3938, 3
  %3978 = fmul fast float %3974, %3977
  %3979 = fmul fast float %3976, %3977
  %3980 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3981 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3982 = fsub fast float 1.000000e+00, %3980
  %3983 = fsub fast float 1.000000e+00, %3981
  %3984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %3982, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = fcmp fast ugt float %3985, 0.000000e+00
  br i1 %3986, label %3987, label %4290

; <label>:3987                                    ; preds = %3949
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 2
  %3990 = fmul fast float %3989, %3985
  %3991 = extractvalue %dx.types.CBufRet.f32 %3988, 3
  %3992 = fadd fast float %3991, %3990
  %3993 = extractvalue %dx.types.CBufRet.f32 %3954, 2
  %3994 = fadd fast float %3992, %3961
  %3995 = fmul fast float %3967, %3955
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3970, float %3958, float %3995)  ; FMad(a,b,c)
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3993, float %3996)  ; FMad(a,b,c)
  %3998 = fsub fast float %3997, %3961
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 2
  %4001 = fsub fast float %3998, %4000
  %4002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %3982, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.ResRet.f32 %4002, 1
  %4005 = extractvalue %dx.types.ResRet.f32 %4002, 2
  %4006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %3982, float %3983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.ResRet.f32 %4006, 2
  %4010 = fadd fast float %4007, %4003
  %4011 = fmul fast float %4010, 0x3F847AE140000000
  %4012 = fadd fast float %4008, %4004
  %4013 = fmul fast float %4012, 0x3F847AE140000000
  %4014 = fadd fast float %4009, %4005
  %4015 = fmul fast float %4014, 0x3F847AE140000000
  br label %4290

; <label>:4016                                    ; preds = %3875
  %4017 = and i32 %244, 1
  %4018 = icmp eq i32 %4017, 0
  br i1 %4018, label %4290, label %4019

; <label>:4019                                    ; preds = %4016
  %4020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4021 = extractvalue %dx.types.CBufRet.f32 %4020, 0
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = extractvalue %dx.types.CBufRet.f32 %4020, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4022, 1
  %4028 = extractvalue %dx.types.CBufRet.f32 %4024, 1
  %4029 = extractvalue %dx.types.CBufRet.f32 %4020, 3
  %4030 = extractvalue %dx.types.CBufRet.f32 %4022, 3
  %4031 = extractvalue %dx.types.CBufRet.f32 %4024, 3
  %4032 = fadd fast float %4029, %3935
  %4033 = fadd fast float %4030, %3936
  %4034 = fadd fast float %4031, %3937
  %4035 = fmul fast float %4032, %4021
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %4033, float %4023, float %4035)  ; FMad(a,b,c)
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %4034, float %4025, float %4036)  ; FMad(a,b,c)
  %4038 = fmul fast float %4032, %4026
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %4033, float %4027, float %4038)  ; FMad(a,b,c)
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4034, float %4028, float %4039)  ; FMad(a,b,c)
  %4041 = fsub fast float %4037, %4029
  %4042 = fsub fast float %4040, %4030
  %4043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.CBufRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.CBufRet.f32 %4043, 2
  %4047 = extractvalue %dx.types.CBufRet.f32 %4043, 3
  %4048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.f32 %4048, 3
  %4050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.i32 %4050, 0
  %4052 = extractvalue %dx.types.CBufRet.i32 %4050, 1
  %4053 = udiv i32 %4052, %4051
  %4054 = fsub fast float %4041, %4044
  %4055 = fsub fast float %4042, %4045
  %4056 = call float @dx.op.binary.f32(i32 35, float %4054, float 0.000000e+00)  ; FMax(a,b)
  %4057 = call float @dx.op.binary.f32(i32 35, float %4055, float 0.000000e+00)  ; FMax(a,b)
  %4058 = call float @dx.op.binary.f32(i32 36, float %4056, float %4046)  ; FMin(a,b)
  %4059 = call float @dx.op.binary.f32(i32 36, float %4057, float %4047)  ; FMin(a,b)
  %4060 = add i32 %4051, -1
  %4061 = add i32 %4053, -1
  %4062 = fmul fast float %4058, %4049
  %4063 = fmul fast float %4059, %4049
  %4064 = fptoui float %4062 to i32
  %4065 = fptoui float %4063 to i32
  %4066 = call i32 @dx.op.binary.i32(i32 40, i32 %4064, i32 %4060)  ; UMin(a,b)
  %4067 = call i32 @dx.op.binary.i32(i32 40, i32 %4065, i32 %4061)  ; UMin(a,b)
  %4068 = mul i32 %4067, %4051
  %4069 = add i32 %4068, %4066
  %4070 = shl i32 %4069, 2
  %4071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.i32 %4071, 0
  %4073 = icmp eq i32 %4072, -1
  br i1 %4073, label %4290, label %4074

; <label>:4074                                    ; preds = %4019
  %4075 = mul i32 %4072, 148
  %4076 = add i32 %4075, 4
  %4077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4076, i32 undef)  ; BufferLoad(srv,index,wot)
  %4078 = extractvalue %dx.types.ResRet.f32 %4077, 0
  %4079 = add i32 %4075, 8
  %4080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4082 = add i32 %4075, 36
  %4083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4082, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = add i32 %4075, 60
  %4086 = add i32 %4075, 92
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4086, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = add i32 %4075, 116
  %4090 = fsub fast float %4041, %4078
  %4091 = fsub fast float %4042, %4081
  %4092 = fmul fast float %4049, %4090
  %4093 = fmul fast float %4049, %4091
  %4094 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4095 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4096 = fsub fast float 1.000000e+00, %4095
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4099 = call float @dx.op.unary.f32(i32 83, float %4094)  ; DerivCoarseX(value)
  %4100 = call float @dx.op.unary.f32(i32 83, float %4096)  ; DerivCoarseX(value)
  %4101 = call float @dx.op.unary.f32(i32 84, float %4094)  ; DerivCoarseY(value)
  %4102 = call float @dx.op.unary.f32(i32 84, float %4096)  ; DerivCoarseY(value)
  %4103 = fmul fast float %4099, %4098
  %4104 = fmul fast float %4100, %4098
  %4105 = fmul fast float %4101, %4098
  %4106 = fmul fast float %4102, %4098
  %4107 = call float @dx.op.dot2.f32(i32 54, float %4105, float %4106, float %4105, float %4106)  ; Dot2(ax,ay,bx,by)
  %4108 = call float @dx.op.dot2.f32(i32 54, float %4103, float %4104, float %4103, float %4104)  ; Dot2(ax,ay,bx,by)
  %4109 = call float @dx.op.binary.f32(i32 35, float %4108, float %4107)  ; FMax(a,b)
  %4110 = call float @dx.op.unary.f32(i32 23, float %4109)  ; Log(value)
  %4111 = fmul fast float %4110, 5.000000e-01
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 1
  %4114 = fadd fast float %4113, %4111
  %4115 = call float @dx.op.binary.f32(i32 35, float %4114, float 0.000000e+00)  ; FMax(a,b)
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 3
  %4118 = fadd fast float %4117, %4115
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4121 = fadd fast float %4118, %4120
  %4122 = add i32 %4088, 0
  %4123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4122, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4124 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4123, i32 0)  ; GetDimensions(handle,mipLevel)
  %4125 = extractvalue %dx.types.Dimensions %4124, 0
  %4126 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4125)  ; FirstbitLo(value)
  %4127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.i32 %4127, 1
  %4129 = sub nsw i32 %4128, %4126
  %4130 = sitofp i32 %4129 to float
  %4131 = fsub fast float %4121, %4130
  %4132 = call float @dx.op.binary.f32(i32 35, float %4131, float 0.000000e+00)  ; FMax(a,b)
  %4133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4123, %dx.types.Handle %47, float %4094, float %4096, float %4084, float undef, i32 0, i32 0, i32 undef, float %4132)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4134 = extractvalue %dx.types.ResRet.f32 %4133, 0
  %4135 = fcmp ule float %4134, 0x3FE0101020000000
  %4136 = extractvalue %dx.types.CBufRet.i32 %4127, 0
  %4137 = and i32 %4136, 128
  %4138 = icmp ne i32 %4137, 0
  %4139 = and i1 %4135, %4138
  br i1 %4139, label %4290, label %4140

; <label>:4140                                    ; preds = %4074
  %4141 = add i32 %4075, 20
  %4142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = add i32 %4075, 24
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = add i32 %4075, 40
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = add i32 %4075, 96
  %4151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.i32 %4151, 0
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 2
  %4155 = fmul fast float %4154, %4094
  %4156 = fmul fast float %4154, %4096
  %4157 = extractvalue %dx.types.CBufRet.f32 %4153, 3
  %4158 = fadd fast float %4155, %4157
  %4159 = fadd fast float %4156, %4157
  %4160 = add i32 %4152, 0
  %4161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4160, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4162 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4161, i32 0)  ; GetDimensions(handle,mipLevel)
  %4163 = extractvalue %dx.types.Dimensions %4162, 0
  %4164 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4163)  ; FirstbitLo(value)
  %4165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.i32 %4165, 1
  %4167 = sub nsw i32 %4166, %4164
  %4168 = sitofp i32 %4167 to float
  %4169 = fsub fast float %4118, %4168
  %4170 = call float @dx.op.binary.f32(i32 35, float %4169, float 0.000000e+00)  ; FMax(a,b)
  %4171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4161, %dx.types.Handle %47, float %4158, float %4159, float %4149, float undef, i32 0, i32 0, i32 undef, float %4170)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4172 = extractvalue %dx.types.ResRet.f32 %4171, 0
  %4173 = fmul fast float %4172, %4143
  %4174 = fadd fast float %4173, %4146
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.CBufRet.f32 %4175, 1
  %4178 = extractvalue %dx.types.CBufRet.f32 %4175, 2
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 3
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4183 = extractvalue %dx.types.CBufRet.f32 %4175, 3
  %4184 = fadd fast float %4180, %4041
  %4185 = fadd fast float %4182, %4042
  %4186 = fadd fast float %4174, %4183
  %4187 = fmul fast float %4184, %4176
  %4188 = call float @dx.op.tertiary.f32(i32 46, float %4185, float %4177, float %4187)  ; FMad(a,b,c)
  %4189 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4178, float %4188)  ; FMad(a,b,c)
  %4190 = fsub fast float %4189, %4183
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 2
  %4193 = fsub fast float %4190, %4192
  %4194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.i32 %4194, 0
  %4196 = call i32 @dx.op.binary.i32(i32 40, i32 %4072, i32 %4195)  ; UMin(a,b)
  %4197 = mul i32 %4196, 36
  %4198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.i32 %4198, 0
  %4200 = add i32 %4197, 4
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 0
  %4203 = fmul fast float %4202, %4094
  %4204 = fmul fast float %4202, %4096
  %4205 = extractvalue %dx.types.CBufRet.f32 %4201, 1
  %4206 = fadd fast float %4203, %4205
  %4207 = fadd fast float %4204, %4205
  %4208 = icmp eq i32 %4199, 0
  br i1 %4208, label %4277, label %4209

; <label>:4209                                    ; preds = %4140
  br label %4210

; <label>:4210                                    ; preds = %4267, %4209
  %4211 = phi float [ %4268, %4267 ], [ 0.000000e+00, %4209 ]
  %4212 = phi float [ %4269, %4267 ], [ 0.000000e+00, %4209 ]
  %4213 = phi float [ %4270, %4267 ], [ 0.000000e+00, %4209 ]
  %4214 = phi float [ %4271, %4267 ], [ 0.000000e+00, %4209 ]
  %4215 = phi float [ %4272, %4267 ], [ 0.000000e+00, %4209 ]
  %4216 = phi float [ %4273, %4267 ], [ 0.000000e+00, %4209 ]
  %4217 = phi i32 [ %4274, %4267 ], [ 0, %4209 ]
  %4218 = shl i32 %4217, 2
  %4219 = add i32 %4085, %4218
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = add i32 %4089, %4218
  %4223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.i32 %4223, 0
  %4225 = add i32 %4224, 0
  %4226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4225, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4227 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4226, i32 0)  ; GetDimensions(handle,mipLevel)
  %4228 = extractvalue %dx.types.Dimensions %4227, 0
  %4229 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4228)  ; FirstbitLo(value)
  %4230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.i32 %4230, 1
  %4232 = sub nsw i32 %4231, %4229
  %4233 = sitofp i32 %4232 to float
  %4234 = fsub fast float %4118, %4233
  %4235 = call float @dx.op.binary.f32(i32 35, float %4234, float 0.000000e+00)  ; FMax(a,b)
  %4236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4226, %dx.types.Handle %47, float %4206, float %4207, float %4221, float undef, i32 0, i32 0, i32 undef, float %4235)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4237 = extractvalue %dx.types.ResRet.f32 %4236, 0
  %4238 = fcmp fast ogt float %4237, 0.000000e+00
  br i1 %4238, label %4239, label %4267

; <label>:4239                                    ; preds = %4210
  %4240 = add i32 %4200, %4218
  %4241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.i32 %4241, 0
  %4243 = and i32 %4242, 32767
  %4244 = mul nuw nsw i32 %4243, 928
  %4245 = add nuw nsw i32 %4244, 48
  %4246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4245, i32 undef)  ; BufferLoad(srv,index,wot)
  %4247 = extractvalue %dx.types.ResRet.f32 %4246, 0
  %4248 = extractvalue %dx.types.ResRet.f32 %4246, 1
  %4249 = extractvalue %dx.types.ResRet.f32 %4246, 2
  %4250 = add nuw nsw i32 %4244, 60
  %4251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.ResRet.f32 %4251, 1
  %4254 = extractvalue %dx.types.ResRet.f32 %4251, 2
  %4255 = fmul fast float %4247, %4237
  %4256 = fmul fast float %4248, %4237
  %4257 = fmul fast float %4249, %4237
  %4258 = fadd fast float %4255, %4211
  %4259 = fadd fast float %4256, %4212
  %4260 = fadd fast float %4257, %4213
  %4261 = fmul fast float %4252, %4237
  %4262 = fmul fast float %4253, %4237
  %4263 = fmul fast float %4254, %4237
  %4264 = fadd fast float %4261, %4214
  %4265 = fadd fast float %4262, %4215
  %4266 = fadd fast float %4263, %4216
  br label %4267

; <label>:4267                                    ; preds = %4239, %4210
  %4268 = phi float [ %4258, %4239 ], [ %4211, %4210 ]
  %4269 = phi float [ %4259, %4239 ], [ %4212, %4210 ]
  %4270 = phi float [ %4260, %4239 ], [ %4213, %4210 ]
  %4271 = phi float [ %4264, %4239 ], [ %4214, %4210 ]
  %4272 = phi float [ %4265, %4239 ], [ %4215, %4210 ]
  %4273 = phi float [ %4266, %4239 ], [ %4216, %4210 ]
  %4274 = add nuw i32 %4217, 1
  %4275 = icmp eq i32 %4274, %4199
  br i1 %4275, label %4276, label %4210

; <label>:4276                                    ; preds = %4267
  br label %4277

; <label>:4277                                    ; preds = %4276, %4140
  %4278 = phi float [ 0.000000e+00, %4140 ], [ %4268, %4276 ]
  %4279 = phi float [ 0.000000e+00, %4140 ], [ %4269, %4276 ]
  %4280 = phi float [ 0.000000e+00, %4140 ], [ %4270, %4276 ]
  %4281 = phi float [ 0.000000e+00, %4140 ], [ %4271, %4276 ]
  %4282 = phi float [ 0.000000e+00, %4140 ], [ %4272, %4276 ]
  %4283 = phi float [ 0.000000e+00, %4140 ], [ %4273, %4276 ]
  %4284 = fadd fast float %4281, %4278
  %4285 = fmul fast float %4284, 0x3F847AE140000000
  %4286 = fadd fast float %4282, %4279
  %4287 = fmul fast float %4286, 0x3F847AE140000000
  %4288 = fadd fast float %4283, %4280
  %4289 = fmul fast float %4288, 0x3F847AE140000000
  br label %4290

; <label>:4290                                    ; preds = %4277, %4074, %4019, %4016, %3987, %3949
  %4291 = phi float [ %4001, %3987 ], [ -1.310720e+05, %3949 ], [ %4193, %4277 ], [ -1.310720e+05, %4019 ], [ -1.310720e+05, %4074 ], [ -1.310720e+05, %4016 ]
  %4292 = phi float [ %4011, %3987 ], [ 0.000000e+00, %3949 ], [ %4285, %4277 ], [ 0.000000e+00, %4019 ], [ 0.000000e+00, %4074 ], [ 0.000000e+00, %4016 ]
  %4293 = phi float [ %4013, %3987 ], [ 0.000000e+00, %3949 ], [ %4287, %4277 ], [ 0.000000e+00, %4019 ], [ 0.000000e+00, %4074 ], [ 0.000000e+00, %4016 ]
  %4294 = phi float [ %4015, %3987 ], [ 0.000000e+00, %3949 ], [ %4289, %4277 ], [ 0.000000e+00, %4019 ], [ 0.000000e+00, %4074 ], [ 0.000000e+00, %4016 ]
  %4295 = phi i1 [ true, %3987 ], [ false, %3949 ], [ true, %4277 ], [ false, %4019 ], [ false, %4074 ], [ false, %4016 ]
  %4296 = and i32 %244, 3
  %4297 = icmp eq i32 %4296, 1
  %4298 = select i1 %4297, float 1.000000e+00, float 0.000000e+00
  %4299 = fsub fast float %4291, %195
  %4300 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4301 = select i1 %4295, float %4300, float 1.000000e+00
  %4302 = fmul fast float %4301, %4298
  %4303 = icmp eq i32 %4296, 3
  %4304 = select i1 %4303, float 1.000000e+00, float %4302
  %4305 = call float @dx.op.binary.f32(i32 35, float %3891, float %4304)  ; FMax(a,b)
  %4306 = fcmp fast olt float %4304, 1.000000e+00
  %4307 = fcmp uge float %71, 0.000000e+00
  %4308 = and i1 %4307, %4306
  br i1 %4308, label %4309, label %4319

; <label>:4309                                    ; preds = %4290
  %4310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 0
  %4312 = extractvalue %dx.types.ResRet.f32 %4310, 1
  %4313 = extractvalue %dx.types.ResRet.f32 %4310, 2
  %4314 = fadd fast float %4311, %4305
  %4315 = fcmp ule float %70, 0.000000e+00
  %4316 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4317 = select i1 %4315, float %4316, float 1.000000e+00
  %4318 = fmul fast float %4317, %4313
  br label %4319

; <label>:4319                                    ; preds = %4309, %4290
  %4320 = phi float [ %4314, %4309 ], [ %4305, %4290 ]
  %4321 = phi float [ %4312, %4309 ], [ 0.000000e+00, %4290 ]
  %4322 = phi float [ %4318, %4309 ], [ 0.000000e+00, %4290 ]
  %4323 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4326 = fcmp fast une float %4324, 0.000000e+00
  %4327 = fcmp fast une float %4325, 0.000000e+00
  %4328 = or i1 %4326, %4327
  br i1 %4328, label %4329, label %4888

; <label>:4329                                    ; preds = %4319
  br i1 %4326, label %4330, label %4603

; <label>:4330                                    ; preds = %4329
  %4331 = call float @dx.op.unary.f32(i32 23, float %3888)  ; Log(value)
  %4332 = fmul fast float %4331, 4.000000e+00
  %4333 = call float @dx.op.unary.f32(i32 21, float %4332)  ; Exp(value)
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 0
  %4336 = fmul fast float %4335, %58
  %4337 = fmul fast float %4335, %59
  %4338 = fmul fast float %4335, %60
  %4339 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4340 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4341 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4342 = call float @dx.op.unary.f32(i32 23, float %4339)  ; Log(value)
  %4343 = call float @dx.op.unary.f32(i32 23, float %4340)  ; Log(value)
  %4344 = call float @dx.op.unary.f32(i32 23, float %4341)  ; Log(value)
  %4345 = fmul fast float %4342, 4.000000e+00
  %4346 = fmul fast float %4343, 4.000000e+00
  %4347 = fmul fast float %4344, 4.000000e+00
  %4348 = call float @dx.op.unary.f32(i32 21, float %4345)  ; Exp(value)
  %4349 = call float @dx.op.unary.f32(i32 21, float %4346)  ; Exp(value)
  %4350 = call float @dx.op.unary.f32(i32 21, float %4347)  ; Exp(value)
  %4351 = fadd fast float %4349, %4348
  %4352 = fadd fast float %4351, %4350
  %4353 = fdiv fast float 1.000000e+00, %4352
  %4354 = fmul fast float %4353, %4348
  %4355 = fcmp fast ogt float %67, 0.000000e+00
  %4356 = fcmp fast ogt float %68, 0.000000e+00
  %4357 = fcmp fast ogt float %69, 0.000000e+00
  %4358 = fcmp fast olt float %67, 0.000000e+00
  %4359 = fcmp fast olt float %68, 0.000000e+00
  %4360 = fcmp fast olt float %69, 0.000000e+00
  %4361 = zext i1 %4355 to i32
  %4362 = zext i1 %4356 to i32
  %4363 = zext i1 %4357 to i32
  %4364 = zext i1 %4358 to i32
  %4365 = zext i1 %4359 to i32
  %4366 = zext i1 %4360 to i32
  %4367 = sub nsw i32 %4361, %4364
  %4368 = sub nsw i32 %4362, %4365
  %4369 = sub nsw i32 %4363, %4366
  %4370 = call float @dx.op.unary.f32(i32 83, float %4336)  ; DerivCoarseX(value)
  %4371 = call float @dx.op.unary.f32(i32 83, float %4337)  ; DerivCoarseX(value)
  %4372 = call float @dx.op.unary.f32(i32 83, float %4338)  ; DerivCoarseX(value)
  %4373 = call float @dx.op.unary.f32(i32 84, float %4336)  ; DerivCoarseY(value)
  %4374 = call float @dx.op.unary.f32(i32 84, float %4337)  ; DerivCoarseY(value)
  %4375 = call float @dx.op.unary.f32(i32 84, float %4338)  ; DerivCoarseY(value)
  %4376 = fcmp fast ole float %276, %4354
  %4377 = fmul fast float %4353, %4351
  %4378 = fcmp fast ole float %276, %4377
  %4379 = select i1 %4378, float %4338, float %4336
  %4380 = select i1 %4378, float %4336, float %4337
  %4381 = select i1 %4376, float %4337, float %4379
  %4382 = select i1 %4376, float %4338, float %4380
  %4383 = select i1 %4378, float %4372, float %4370
  %4384 = select i1 %4378, float %4370, float %4371
  %4385 = select i1 %4376, float %4371, float %4383
  %4386 = select i1 %4376, float %4372, float %4384
  %4387 = select i1 %4378, float %4375, float %4373
  %4388 = select i1 %4378, float %4373, float %4374
  %4389 = select i1 %4376, float %4374, float %4387
  %4390 = select i1 %4376, float %4375, float %4388
  %4391 = call float @dx.op.unary.f32(i32 27, float %4381)  ; Round_ni(value)
  %4392 = call float @dx.op.unary.f32(i32 27, float %4382)  ; Round_ni(value)
  %4393 = fptosi float %4391 to i32
  %4394 = fptosi float %4392 to i32
  %4395 = xor i32 %4394, %4393
  %4396 = sitofp i32 %4395 to float
  %4397 = fptosi float %4396 to i32
  %4398 = sitofp i32 %4397 to float
  %4399 = fmul fast float %4398, 0x3FE3C6EF40000000
  %4400 = frem fast float %4391, 2.560000e+02
  %4401 = frem fast float %4392, 2.560000e+02
  %4402 = fptoui float %4400 to i32
  %4403 = fptoui float %4401 to i32
  %4404 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4402, i32 %4403, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4405 = extractvalue %dx.types.ResRet.f32 %4404, 0
  %4406 = extractvalue %dx.types.ResRet.f32 %4404, 1
  %4407 = extractvalue %dx.types.ResRet.f32 %4404, 2
  %4408 = fadd fast float %4405, %4399
  %4409 = fadd fast float %4406, %4399
  %4410 = fadd fast float %4407, %4399
  %4411 = call float @dx.op.unary.f32(i32 22, float %4408)  ; Frc(value)
  %4412 = call float @dx.op.unary.f32(i32 22, float %4409)  ; Frc(value)
  %4413 = call float @dx.op.unary.f32(i32 22, float %4410)  ; Frc(value)
  %4414 = fmul fast float %4413, 0x401921FB60000000
  %4415 = call float @dx.op.unary.f32(i32 13, float %4414)  ; Sin(value)
  %4416 = call float @dx.op.unary.f32(i32 12, float %4414)  ; Cos(value)
  %4417 = fsub fast float -0.000000e+00, %4416
  %4418 = fmul fast float %4416, %4381
  %4419 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4382, float %4418)  ; FMad(a,b,c)
  %4420 = fmul fast float %4415, %4381
  %4421 = call float @dx.op.tertiary.f32(i32 46, float %4417, float %4382, float %4420)  ; FMad(a,b,c)
  %4422 = fadd fast float %4419, %4411
  %4423 = fadd fast float %4421, %4412
  %4424 = extractvalue %dx.types.CBufRet.f32 %4334, 3
  %4425 = bitcast float %4424 to i32
  %4426 = icmp eq i32 %4425, 0
  br i1 %4426, label %4465, label %4427

; <label>:4427                                    ; preds = %4330
  %4428 = add i32 %4425, 0
  %4429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4430 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4429, %dx.types.Handle %103, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 undef, float %4385, float %4386, float undef, float %4389, float %4390, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 1
  %4434 = extractvalue %dx.types.CBufRet.f32 %4432, 2
  %4435 = fsub fast float 1.000000e+00, %4324
  %4436 = call float @dx.op.binary.f32(i32 35, float %4435, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4437 = bitcast float %4324 to i32
  %4438 = sitofp i32 %4437 to float
  %4439 = fadd fast float %4438, 0xC1CFBF8940000000
  %4440 = fmul fast float %4434, %4439
  %4441 = fadd fast float %4440, 0x41CFBF8940000000
  %4442 = fptosi float %4441 to i32
  %4443 = bitcast i32 %4442 to float
  %4444 = bitcast float %4436 to i32
  %4445 = sitofp i32 %4444 to float
  %4446 = fadd fast float %4445, 0xC1CFBF8940000000
  %4447 = fmul fast float %4446, %4434
  %4448 = fadd fast float %4447, 0x41CFBF8940000000
  %4449 = fptosi float %4448 to i32
  %4450 = bitcast i32 %4449 to float
  %4451 = fmul fast float %4443, %4433
  %4452 = fmul fast float %4450, %4433
  %4453 = fsub fast float %4436, %4451
  %4454 = fadd fast float %4452, %4436
  %4455 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4457 = fsub fast float %4431, %4455
  %4458 = fsub fast float %4456, %4455
  %4459 = bitcast float %4458 to i32
  %4460 = sub nsw i32 2129859010, %4459
  %4461 = bitcast i32 %4460 to float
  %4462 = fmul fast float %4461, %4457
  %4463 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4464 = fcmp fast olt float %4463, 0x3F70101020000000
  br i1 %4464, label %4603, label %4465

; <label>:4465                                    ; preds = %4427, %4330
  %4466 = phi float [ %4463, %4427 ], [ %4324, %4330 ]
  %4467 = fmul fast float %4466, %4333
  %4468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.i32 %4468, 1
  %4470 = extractvalue %dx.types.CBufRet.i32 %4468, 0
  %4471 = add i32 %4470, 0
  %4472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4473 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4472, %dx.types.Handle %102, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 undef, float %4385, float %4386, float undef, float %4389, float %4390, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4474 = extractvalue %dx.types.ResRet.f32 %4473, 0
  %4475 = extractvalue %dx.types.ResRet.f32 %4473, 1
  %4476 = extractvalue %dx.types.ResRet.f32 %4473, 2
  %4477 = extractvalue %dx.types.ResRet.f32 %4473, 3
  %4478 = and i32 %4469, 255
  %4479 = uitofp i32 %4478 to float
  %4480 = lshr i32 %4469, 8
  %4481 = and i32 %4480, 255
  %4482 = uitofp i32 %4481 to float
  %4483 = fmul fast float %4477, %4479
  %4484 = fadd fast float %4483, %4482
  %4485 = fmul fast float %4484, 0x3F70101000000000
  %4486 = fadd fast float %4485, 0xBFB99999A0000000
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = fmul fast float %4487, 0x3FF1C71C80000000
  %4489 = call float @dx.op.binary.f32(i32 36, float %4485, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4490 = fsub fast float 1.000000e+00, %4488
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = fmul fast float %4491, %4474
  %4493 = fmul fast float %4491, %4475
  %4494 = fmul fast float %4491, %4476
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4498 = fmul fast float %4488, %4474
  %4499 = fmul fast float %4488, %4475
  %4500 = fmul fast float %4488, %4476
  %4501 = fadd fast float %4498, %4489
  %4502 = fadd fast float %4499, %4489
  %4503 = fadd fast float %4500, %4489
  %4504 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.i32 %4507, 3
  %4509 = extractvalue %dx.types.CBufRet.i32 %4507, 2
  %4510 = add i32 %4509, 0
  %4511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4510, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4512 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4511, %dx.types.Handle %102, float %4422, float %4423, float undef, float undef, i32 0, i32 0, i32 undef, float %4385, float %4386, float undef, float %4389, float %4390, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = extractvalue %dx.types.ResRet.f32 %4512, 3
  %4517 = and i32 %4508, 255
  %4518 = uitofp i32 %4517 to float
  %4519 = lshr i32 %4508, 8
  %4520 = and i32 %4519, 255
  %4521 = uitofp i32 %4520 to float
  %4522 = lshr i32 %4508, 16
  %4523 = and i32 %4522, 255
  %4524 = uitofp i32 %4523 to float
  %4525 = fmul fast float %4524, 0x3F70101000000000
  %4526 = fmul fast float %4513, %4518
  %4527 = fadd fast float %4526, %4521
  %4528 = fmul fast float %4527, 0x3F70101000000000
  %4529 = fadd fast float %4514, -5.000000e-01
  %4530 = fadd fast float %4516, -5.000000e-01
  %4531 = fmul fast float %4529, %4525
  %4532 = fmul fast float %4530, %4525
  %4533 = fadd fast float %4531, 5.000000e-01
  %4534 = fadd fast float %4532, 5.000000e-01
  %4535 = fmul fast float %4533, 2.000000e+00
  %4536 = fadd fast float %4535, -1.000000e+00
  %4537 = fmul fast float %4534, 2.000000e+00
  %4538 = fadd fast float %4537, -1.000000e+00
  %4539 = fadd fast float %4536, %4538
  %4540 = fmul fast float %4539, 5.000000e-01
  %4541 = fsub fast float %4536, %4538
  %4542 = fmul fast float %4541, 5.000000e-01
  %4543 = call float @dx.op.unary.f32(i32 6, float %4540)  ; FAbs(value)
  %4544 = fsub fast float 1.000000e+00, %4543
  %4545 = call float @dx.op.unary.f32(i32 6, float %4542)  ; FAbs(value)
  %4546 = fsub fast float %4544, %4545
  %4547 = call float @dx.op.dot3.f32(i32 55, float %4540, float %4542, float %4546, float %4540, float %4542, float %4546)  ; Dot3(ax,ay,az,bx,by,bz)
  %4548 = call float @dx.op.unary.f32(i32 25, float %4547)  ; Rsqrt(value)
  %4549 = fmul fast float %4540, %4548
  %4550 = fmul fast float %4542, %4548
  %4551 = select i1 %4378, i32 %4368, i32 %4369
  %4552 = select i1 %4376, i32 %4367, i32 %4551
  %4553 = sitofp i32 %4552 to float
  %4554 = fmul fast float %4546, %4553
  %4555 = fmul fast float %4554, %4548
  %4556 = select i1 %4378, float %4555, float %4550
  %4557 = select i1 %4378, float %4550, float %4555
  %4558 = select i1 %4376, float %4555, float %4549
  %4559 = select i1 %4376, float %4550, float %4556
  %4560 = select i1 %4376, float %4549, float %4557
  %4561 = fsub fast float %4495, %3928
  %4562 = fsub fast float %4496, %3929
  %4563 = fsub fast float %4497, %3930
  %4564 = fmul fast float %4561, %4467
  %4565 = fmul fast float %4562, %4467
  %4566 = fmul fast float %4563, %4467
  %4567 = fadd fast float %4564, %3928
  %4568 = fadd fast float %4565, %3929
  %4569 = fadd fast float %4566, %3930
  %4570 = fsub fast float %4504, %3913
  %4571 = fsub fast float %4505, %3914
  %4572 = fsub fast float %4506, %3915
  %4573 = fmul fast float %4570, %4467
  %4574 = fmul fast float %4571, %4467
  %4575 = fmul fast float %4572, %4467
  %4576 = fadd fast float %4573, %3913
  %4577 = fadd fast float %4574, %3914
  %4578 = fadd fast float %4575, %3915
  %4579 = fadd fast float %4558, %3876
  %4580 = fadd fast float %4559, %3877
  %4581 = fadd fast float %4560, %3878
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4579, float %4580, float %4581, float %4579, float %4580, float %4581)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = call float @dx.op.unary.f32(i32 25, float %4582)  ; Rsqrt(value)
  %4584 = fmul fast float %4579, %4583
  %4585 = fmul fast float %4580, %4583
  %4586 = fmul fast float %4581, %4583
  %4587 = fsub fast float %4584, %3876
  %4588 = fsub fast float %4585, %3877
  %4589 = fsub fast float %4586, %3878
  %4590 = fmul fast float %4587, %4467
  %4591 = fmul fast float %4588, %4467
  %4592 = fmul fast float %4589, %4467
  %4593 = fadd fast float %4590, %3876
  %4594 = fadd fast float %4591, %3877
  %4595 = fadd fast float %4592, %3878
  %4596 = call float @dx.op.binary.f32(i32 36, float %3888, float %4515)  ; FMin(a,b)
  %4597 = fsub fast float %4596, %3888
  %4598 = fmul fast float %4597, %4467
  %4599 = fadd fast float %4598, %3888
  %4600 = fsub fast float %4528, %3916
  %4601 = fmul fast float %4600, %4467
  %4602 = fadd fast float %4601, %3916
  br label %4603

; <label>:4603                                    ; preds = %4465, %4427, %4329
  %4604 = phi float [ %4567, %4465 ], [ %3928, %4427 ], [ %3928, %4329 ]
  %4605 = phi float [ %4568, %4465 ], [ %3929, %4427 ], [ %3929, %4329 ]
  %4606 = phi float [ %4569, %4465 ], [ %3930, %4427 ], [ %3930, %4329 ]
  %4607 = phi float [ %4576, %4465 ], [ %3913, %4427 ], [ %3913, %4329 ]
  %4608 = phi float [ %4577, %4465 ], [ %3914, %4427 ], [ %3914, %4329 ]
  %4609 = phi float [ %4578, %4465 ], [ %3915, %4427 ], [ %3915, %4329 ]
  %4610 = phi float [ %4593, %4465 ], [ %3876, %4427 ], [ %3876, %4329 ]
  %4611 = phi float [ %4594, %4465 ], [ %3877, %4427 ], [ %3877, %4329 ]
  %4612 = phi float [ %4595, %4465 ], [ %3878, %4427 ], [ %3878, %4329 ]
  %4613 = phi float [ %4602, %4465 ], [ %3916, %4427 ], [ %3916, %4329 ]
  %4614 = phi float [ %4599, %4465 ], [ %3888, %4427 ], [ %3888, %4329 ]
  br i1 %4327, label %4615, label %4888

; <label>:4615                                    ; preds = %4603
  %4616 = call float @dx.op.unary.f32(i32 23, float %4614)  ; Log(value)
  %4617 = fmul fast float %4616, 4.000000e+00
  %4618 = call float @dx.op.unary.f32(i32 21, float %4617)  ; Exp(value)
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4621 = fmul fast float %4620, %58
  %4622 = fmul fast float %4620, %59
  %4623 = fmul fast float %4620, %60
  %4624 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4625 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4626 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4627 = call float @dx.op.unary.f32(i32 23, float %4624)  ; Log(value)
  %4628 = call float @dx.op.unary.f32(i32 23, float %4625)  ; Log(value)
  %4629 = call float @dx.op.unary.f32(i32 23, float %4626)  ; Log(value)
  %4630 = fmul fast float %4627, 4.000000e+00
  %4631 = fmul fast float %4628, 4.000000e+00
  %4632 = fmul fast float %4629, 4.000000e+00
  %4633 = call float @dx.op.unary.f32(i32 21, float %4630)  ; Exp(value)
  %4634 = call float @dx.op.unary.f32(i32 21, float %4631)  ; Exp(value)
  %4635 = call float @dx.op.unary.f32(i32 21, float %4632)  ; Exp(value)
  %4636 = fadd fast float %4634, %4633
  %4637 = fadd fast float %4636, %4635
  %4638 = fdiv fast float 1.000000e+00, %4637
  %4639 = fmul fast float %4638, %4633
  %4640 = fcmp fast ogt float %67, 0.000000e+00
  %4641 = fcmp fast ogt float %68, 0.000000e+00
  %4642 = fcmp fast ogt float %69, 0.000000e+00
  %4643 = fcmp fast olt float %67, 0.000000e+00
  %4644 = fcmp fast olt float %68, 0.000000e+00
  %4645 = fcmp fast olt float %69, 0.000000e+00
  %4646 = zext i1 %4640 to i32
  %4647 = zext i1 %4641 to i32
  %4648 = zext i1 %4642 to i32
  %4649 = zext i1 %4643 to i32
  %4650 = zext i1 %4644 to i32
  %4651 = zext i1 %4645 to i32
  %4652 = sub nsw i32 %4646, %4649
  %4653 = sub nsw i32 %4647, %4650
  %4654 = sub nsw i32 %4648, %4651
  %4655 = call float @dx.op.unary.f32(i32 83, float %4621)  ; DerivCoarseX(value)
  %4656 = call float @dx.op.unary.f32(i32 83, float %4622)  ; DerivCoarseX(value)
  %4657 = call float @dx.op.unary.f32(i32 83, float %4623)  ; DerivCoarseX(value)
  %4658 = call float @dx.op.unary.f32(i32 84, float %4621)  ; DerivCoarseY(value)
  %4659 = call float @dx.op.unary.f32(i32 84, float %4622)  ; DerivCoarseY(value)
  %4660 = call float @dx.op.unary.f32(i32 84, float %4623)  ; DerivCoarseY(value)
  %4661 = fcmp fast ole float %276, %4639
  %4662 = fmul fast float %4638, %4636
  %4663 = fcmp fast ole float %276, %4662
  %4664 = select i1 %4663, float %4623, float %4621
  %4665 = select i1 %4663, float %4621, float %4622
  %4666 = select i1 %4661, float %4622, float %4664
  %4667 = select i1 %4661, float %4623, float %4665
  %4668 = select i1 %4663, float %4657, float %4655
  %4669 = select i1 %4663, float %4655, float %4656
  %4670 = select i1 %4661, float %4656, float %4668
  %4671 = select i1 %4661, float %4657, float %4669
  %4672 = select i1 %4663, float %4660, float %4658
  %4673 = select i1 %4663, float %4658, float %4659
  %4674 = select i1 %4661, float %4659, float %4672
  %4675 = select i1 %4661, float %4660, float %4673
  %4676 = call float @dx.op.unary.f32(i32 27, float %4666)  ; Round_ni(value)
  %4677 = call float @dx.op.unary.f32(i32 27, float %4667)  ; Round_ni(value)
  %4678 = fptosi float %4676 to i32
  %4679 = fptosi float %4677 to i32
  %4680 = xor i32 %4679, %4678
  %4681 = sitofp i32 %4680 to float
  %4682 = fptosi float %4681 to i32
  %4683 = sitofp i32 %4682 to float
  %4684 = fmul fast float %4683, 0x3FE3C6EF40000000
  %4685 = frem fast float %4676, 2.560000e+02
  %4686 = frem fast float %4677, 2.560000e+02
  %4687 = fptoui float %4685 to i32
  %4688 = fptoui float %4686 to i32
  %4689 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4687, i32 %4688, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4690 = extractvalue %dx.types.ResRet.f32 %4689, 0
  %4691 = extractvalue %dx.types.ResRet.f32 %4689, 1
  %4692 = extractvalue %dx.types.ResRet.f32 %4689, 2
  %4693 = fadd fast float %4690, %4684
  %4694 = fadd fast float %4691, %4684
  %4695 = fadd fast float %4692, %4684
  %4696 = call float @dx.op.unary.f32(i32 22, float %4693)  ; Frc(value)
  %4697 = call float @dx.op.unary.f32(i32 22, float %4694)  ; Frc(value)
  %4698 = call float @dx.op.unary.f32(i32 22, float %4695)  ; Frc(value)
  %4699 = fmul fast float %4698, 0x401921FB60000000
  %4700 = call float @dx.op.unary.f32(i32 13, float %4699)  ; Sin(value)
  %4701 = call float @dx.op.unary.f32(i32 12, float %4699)  ; Cos(value)
  %4702 = fsub fast float -0.000000e+00, %4701
  %4703 = fmul fast float %4701, %4666
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4700, float %4667, float %4703)  ; FMad(a,b,c)
  %4705 = fmul fast float %4700, %4666
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4702, float %4667, float %4705)  ; FMad(a,b,c)
  %4707 = fadd fast float %4704, %4696
  %4708 = fadd fast float %4706, %4697
  %4709 = extractvalue %dx.types.CBufRet.f32 %4619, 3
  %4710 = bitcast float %4709 to i32
  %4711 = icmp eq i32 %4710, 0
  br i1 %4711, label %4750, label %4712

; <label>:4712                                    ; preds = %4615
  %4713 = add i32 %4710, 0
  %4714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4715 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4714, %dx.types.Handle %103, float %4707, float %4708, float undef, float undef, i32 0, i32 0, i32 undef, float %4670, float %4671, float undef, float %4674, float %4675, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4716 = extractvalue %dx.types.ResRet.f32 %4715, 0
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 1
  %4719 = extractvalue %dx.types.CBufRet.f32 %4717, 2
  %4720 = fsub fast float 1.000000e+00, %4325
  %4721 = call float @dx.op.binary.f32(i32 35, float %4720, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4722 = bitcast float %4325 to i32
  %4723 = sitofp i32 %4722 to float
  %4724 = fadd fast float %4723, 0xC1CFBF8940000000
  %4725 = fmul fast float %4719, %4724
  %4726 = fadd fast float %4725, 0x41CFBF8940000000
  %4727 = fptosi float %4726 to i32
  %4728 = bitcast i32 %4727 to float
  %4729 = bitcast float %4721 to i32
  %4730 = sitofp i32 %4729 to float
  %4731 = fadd fast float %4730, 0xC1CFBF8940000000
  %4732 = fmul fast float %4731, %4719
  %4733 = fadd fast float %4732, 0x41CFBF8940000000
  %4734 = fptosi float %4733 to i32
  %4735 = bitcast i32 %4734 to float
  %4736 = fmul fast float %4728, %4718
  %4737 = fmul fast float %4735, %4718
  %4738 = fsub fast float %4721, %4736
  %4739 = fadd fast float %4737, %4721
  %4740 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4741 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4742 = fsub fast float %4716, %4740
  %4743 = fsub fast float %4741, %4740
  %4744 = bitcast float %4743 to i32
  %4745 = sub nsw i32 2129859010, %4744
  %4746 = bitcast i32 %4745 to float
  %4747 = fmul fast float %4746, %4742
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = fcmp fast olt float %4748, 0x3F70101020000000
  br i1 %4749, label %4888, label %4750

; <label>:4750                                    ; preds = %4712, %4615
  %4751 = phi float [ %4748, %4712 ], [ %4325, %4615 ]
  %4752 = fmul fast float %4751, %4618
  %4753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.i32 %4753, 1
  %4755 = extractvalue %dx.types.CBufRet.i32 %4753, 0
  %4756 = add i32 %4755, 0
  %4757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4758 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4757, %dx.types.Handle %102, float %4707, float %4708, float undef, float undef, i32 0, i32 0, i32 undef, float %4670, float %4671, float undef, float %4674, float %4675, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4759 = extractvalue %dx.types.ResRet.f32 %4758, 0
  %4760 = extractvalue %dx.types.ResRet.f32 %4758, 1
  %4761 = extractvalue %dx.types.ResRet.f32 %4758, 2
  %4762 = extractvalue %dx.types.ResRet.f32 %4758, 3
  %4763 = and i32 %4754, 255
  %4764 = uitofp i32 %4763 to float
  %4765 = lshr i32 %4754, 8
  %4766 = and i32 %4765, 255
  %4767 = uitofp i32 %4766 to float
  %4768 = fmul fast float %4762, %4764
  %4769 = fadd fast float %4768, %4767
  %4770 = fmul fast float %4769, 0x3F70101000000000
  %4771 = fadd fast float %4770, 0xBFB99999A0000000
  %4772 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4773 = fmul fast float %4772, 0x3FF1C71C80000000
  %4774 = call float @dx.op.binary.f32(i32 36, float %4770, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4775 = fsub fast float 1.000000e+00, %4773
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = fmul fast float %4776, %4759
  %4778 = fmul fast float %4776, %4760
  %4779 = fmul fast float %4776, %4761
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4781 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4783 = fmul fast float %4773, %4759
  %4784 = fmul fast float %4773, %4760
  %4785 = fmul fast float %4773, %4761
  %4786 = fadd fast float %4783, %4774
  %4787 = fadd fast float %4784, %4774
  %4788 = fadd fast float %4785, %4774
  %4789 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4790 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4791 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.i32 %4792, 3
  %4794 = extractvalue %dx.types.CBufRet.i32 %4792, 2
  %4795 = add i32 %4794, 0
  %4796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4796, %dx.types.Handle %102, float %4707, float %4708, float undef, float undef, i32 0, i32 0, i32 undef, float %4670, float %4671, float undef, float %4674, float %4675, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4801 = extractvalue %dx.types.ResRet.f32 %4797, 3
  %4802 = and i32 %4793, 255
  %4803 = uitofp i32 %4802 to float
  %4804 = lshr i32 %4793, 8
  %4805 = and i32 %4804, 255
  %4806 = uitofp i32 %4805 to float
  %4807 = lshr i32 %4793, 16
  %4808 = and i32 %4807, 255
  %4809 = uitofp i32 %4808 to float
  %4810 = fmul fast float %4809, 0x3F70101000000000
  %4811 = fmul fast float %4798, %4803
  %4812 = fadd fast float %4811, %4806
  %4813 = fmul fast float %4812, 0x3F70101000000000
  %4814 = fadd fast float %4799, -5.000000e-01
  %4815 = fadd fast float %4801, -5.000000e-01
  %4816 = fmul fast float %4814, %4810
  %4817 = fmul fast float %4815, %4810
  %4818 = fadd fast float %4816, 5.000000e-01
  %4819 = fadd fast float %4817, 5.000000e-01
  %4820 = fmul fast float %4818, 2.000000e+00
  %4821 = fadd fast float %4820, -1.000000e+00
  %4822 = fmul fast float %4819, 2.000000e+00
  %4823 = fadd fast float %4822, -1.000000e+00
  %4824 = fadd fast float %4821, %4823
  %4825 = fmul fast float %4824, 5.000000e-01
  %4826 = fsub fast float %4821, %4823
  %4827 = fmul fast float %4826, 5.000000e-01
  %4828 = call float @dx.op.unary.f32(i32 6, float %4825)  ; FAbs(value)
  %4829 = fsub fast float 1.000000e+00, %4828
  %4830 = call float @dx.op.unary.f32(i32 6, float %4827)  ; FAbs(value)
  %4831 = fsub fast float %4829, %4830
  %4832 = call float @dx.op.dot3.f32(i32 55, float %4825, float %4827, float %4831, float %4825, float %4827, float %4831)  ; Dot3(ax,ay,az,bx,by,bz)
  %4833 = call float @dx.op.unary.f32(i32 25, float %4832)  ; Rsqrt(value)
  %4834 = fmul fast float %4825, %4833
  %4835 = fmul fast float %4827, %4833
  %4836 = select i1 %4663, i32 %4653, i32 %4654
  %4837 = select i1 %4661, i32 %4652, i32 %4836
  %4838 = sitofp i32 %4837 to float
  %4839 = fmul fast float %4831, %4838
  %4840 = fmul fast float %4839, %4833
  %4841 = select i1 %4663, float %4840, float %4835
  %4842 = select i1 %4663, float %4835, float %4840
  %4843 = select i1 %4661, float %4840, float %4834
  %4844 = select i1 %4661, float %4835, float %4841
  %4845 = select i1 %4661, float %4834, float %4842
  %4846 = fsub fast float %4780, %4604
  %4847 = fsub fast float %4781, %4605
  %4848 = fsub fast float %4782, %4606
  %4849 = fmul fast float %4846, %4752
  %4850 = fmul fast float %4847, %4752
  %4851 = fmul fast float %4848, %4752
  %4852 = fadd fast float %4849, %4604
  %4853 = fadd fast float %4850, %4605
  %4854 = fadd fast float %4851, %4606
  %4855 = fsub fast float %4789, %4607
  %4856 = fsub fast float %4790, %4608
  %4857 = fsub fast float %4791, %4609
  %4858 = fmul fast float %4855, %4752
  %4859 = fmul fast float %4856, %4752
  %4860 = fmul fast float %4857, %4752
  %4861 = fadd fast float %4858, %4607
  %4862 = fadd fast float %4859, %4608
  %4863 = fadd fast float %4860, %4609
  %4864 = fadd fast float %4843, %4610
  %4865 = fadd fast float %4844, %4611
  %4866 = fadd fast float %4845, %4612
  %4867 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4865, float %4866, float %4864, float %4865, float %4866)  ; Dot3(ax,ay,az,bx,by,bz)
  %4868 = call float @dx.op.unary.f32(i32 25, float %4867)  ; Rsqrt(value)
  %4869 = fmul fast float %4864, %4868
  %4870 = fmul fast float %4865, %4868
  %4871 = fmul fast float %4866, %4868
  %4872 = fsub fast float %4869, %4610
  %4873 = fsub fast float %4870, %4611
  %4874 = fsub fast float %4871, %4612
  %4875 = fmul fast float %4872, %4752
  %4876 = fmul fast float %4873, %4752
  %4877 = fmul fast float %4874, %4752
  %4878 = fadd fast float %4875, %4610
  %4879 = fadd fast float %4876, %4611
  %4880 = fadd fast float %4877, %4612
  %4881 = call float @dx.op.binary.f32(i32 36, float %4614, float %4800)  ; FMin(a,b)
  %4882 = fsub fast float %4881, %4614
  %4883 = fmul fast float %4882, %4752
  %4884 = fadd fast float %4883, %4614
  %4885 = fsub fast float %4813, %4613
  %4886 = fmul fast float %4885, %4752
  %4887 = fadd fast float %4886, %4613
  br label %4888

; <label>:4888                                    ; preds = %4750, %4712, %4603, %4319
  %4889 = phi float [ %4852, %4750 ], [ %4604, %4712 ], [ %4604, %4603 ], [ %3928, %4319 ]
  %4890 = phi float [ %4853, %4750 ], [ %4605, %4712 ], [ %4605, %4603 ], [ %3929, %4319 ]
  %4891 = phi float [ %4854, %4750 ], [ %4606, %4712 ], [ %4606, %4603 ], [ %3930, %4319 ]
  %4892 = phi float [ %4861, %4750 ], [ %4607, %4712 ], [ %4607, %4603 ], [ %3913, %4319 ]
  %4893 = phi float [ %4862, %4750 ], [ %4608, %4712 ], [ %4608, %4603 ], [ %3914, %4319 ]
  %4894 = phi float [ %4863, %4750 ], [ %4609, %4712 ], [ %4609, %4603 ], [ %3915, %4319 ]
  %4895 = phi float [ %4878, %4750 ], [ %4610, %4712 ], [ %4610, %4603 ], [ %3876, %4319 ]
  %4896 = phi float [ %4879, %4750 ], [ %4611, %4712 ], [ %4611, %4603 ], [ %3877, %4319 ]
  %4897 = phi float [ %4880, %4750 ], [ %4612, %4712 ], [ %4612, %4603 ], [ %3878, %4319 ]
  %4898 = phi float [ %4887, %4750 ], [ %4613, %4712 ], [ %4613, %4603 ], [ %3916, %4319 ]
  %4899 = phi float [ %4884, %4750 ], [ %4614, %4712 ], [ %4614, %4603 ], [ %3888, %4319 ]
  %4900 = fcmp fast une float %4323, 0.000000e+00
  %4901 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %4902 = call float @dx.op.unary.f32(i32 25, float %4901)  ; Rsqrt(value)
  br i1 %4900, label %4910, label %4903

; <label>:4903                                    ; preds = %4888
  %4904 = fmul fast float %4902, %193
  %4905 = fmul fast float %4902, %194
  %4906 = fmul fast float %4902, %195
  %4907 = fsub fast float -0.000000e+00, %4904
  %4908 = fsub fast float -0.000000e+00, %4905
  %4909 = fsub fast float -0.000000e+00, %4906
  br label %5077

; <label>:4910                                    ; preds = %4888
  %4911 = fmul fast float %193, %4902
  %4912 = fsub fast float -0.000000e+00, %4911
  %4913 = fmul fast float %194, %4902
  %4914 = fsub fast float -0.000000e+00, %4913
  %4915 = fmul fast float %195, %4902
  %4916 = fsub fast float -0.000000e+00, %4915
  %4917 = call float @dx.op.dot3.f32(i32 55, float %4912, float %4914, float %4916, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = fmul fast float %4323, 2.500000e+00
  %4919 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4920 = fmul fast float %4323, 0x4013FFFFE0000000
  %4921 = fadd fast float %4920, 0xBFFFFFFFE0000000
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4323, 0x4004000020000000
  %4924 = fadd fast float %4923, 0xBFF8000040000000
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fmul fast float %3895, 1.000000e+01
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4927, 2.000000e+00
  %4929 = fsub fast float 3.000000e+00, %4928
  %4930 = fmul fast float %4927, %4927
  %4931 = fmul fast float %4930, %4929
  %4932 = fsub fast float 1.000000e+00, %4931
  %4933 = fsub fast float 0x3FE3333340000000, %4898
  %4934 = fmul fast float %4933, 0x400AAAAAA0000000
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fmul fast float %4932, %4935
  %4937 = fmul fast float %4889, 0x3FEA2B8620000000
  %4938 = fmul fast float %4890, 0x3FEA2B8620000000
  %4939 = fmul fast float %4891, 0x3FEA2B8620000000
  %4940 = fadd fast float %4937, 0x3FC81DFBA0000000
  %4941 = fmul fast float %4940, %4889
  %4942 = fadd fast float %4941, 0x3F910E6020000000
  %4943 = fadd fast float %4938, 0x3FC81DFBA0000000
  %4944 = fmul fast float %4943, %4890
  %4945 = fadd fast float %4944, 0x3F910E6020000000
  %4946 = fadd fast float %4939, 0x3FC81DFBA0000000
  %4947 = fmul fast float %4946, %4891
  %4948 = fadd fast float %4947, 0x3F910E6020000000
  %4949 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4950 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4951 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4952 = fsub fast float %4949, %4889
  %4953 = fsub fast float %4950, %4890
  %4954 = fsub fast float %4951, %4891
  %4955 = fmul fast float %4952, %4919
  %4956 = fmul fast float %4955, %4936
  %4957 = fmul fast float %4953, %4919
  %4958 = fmul fast float %4957, %4936
  %4959 = fmul fast float %4954, %4919
  %4960 = fmul fast float %4959, %4936
  %4961 = fadd fast float %4956, %4889
  %4962 = fadd fast float %4958, %4890
  %4963 = fadd fast float %4960, %4891
  %4964 = fmul fast float %4899, %4899
  %4965 = fmul fast float %4964, %4964
  %4966 = fadd fast float %4922, 1.000000e+00
  %4967 = fsub fast float %4966, %4936
  %4968 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4969 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = fsub fast float 1.000000e+00, %4965
  %4972 = call float @dx.op.binary.f32(i32 36, float %4968, float %4971)  ; FMin(a,b)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4974 = call float @dx.op.binary.f32(i32 35, float %4972, float %4973)  ; FMax(a,b)
  %4975 = fadd fast float %4970, 0xBFE4CCCCC0000000
  %4976 = fmul fast float %4975, 0x4006DB6DA0000000
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = fmul fast float %4977, 2.000000e+00
  %4979 = fsub fast float 3.000000e+00, %4978
  %4980 = bitcast float %4892 to i32
  %4981 = ashr i32 %4980, 1
  %4982 = add nsw i32 %4981, 532487669
  %4983 = bitcast i32 %4982 to float
  %4984 = fsub fast float 1.000000e+00, %4983
  %4985 = bitcast float %4984 to i32
  %4986 = sub nsw i32 2129859010, %4985
  %4987 = bitcast i32 %4986 to float
  %4988 = fmul fast float %4987, 2.000000e+00
  %4989 = bitcast float %4893 to i32
  %4990 = ashr i32 %4989, 1
  %4991 = add nsw i32 %4990, 532487669
  %4992 = bitcast i32 %4991 to float
  %4993 = fsub fast float 1.000000e+00, %4992
  %4994 = bitcast float %4993 to i32
  %4995 = sub nsw i32 2129859010, %4994
  %4996 = bitcast i32 %4995 to float
  %4997 = fmul fast float %4996, 2.000000e+00
  %4998 = bitcast float %4894 to i32
  %4999 = ashr i32 %4998, 1
  %5000 = add nsw i32 %4999, 532487669
  %5001 = bitcast i32 %5000 to float
  %5002 = fsub fast float 1.000000e+00, %5001
  %5003 = bitcast float %5002 to i32
  %5004 = sub nsw i32 2129859010, %5003
  %5005 = bitcast i32 %5004 to float
  %5006 = fmul fast float %5005, 2.000000e+00
  %5007 = fsub fast float 0x4002A9FBE0000000, %4988
  %5008 = fadd fast float %4988, 0x3FD54FDF00000000
  %5009 = bitcast float %5008 to i32
  %5010 = sub nsw i32 2129859010, %5009
  %5011 = bitcast i32 %5010 to float
  %5012 = fmul fast float %5011, %5007
  %5013 = fmul fast float %5012, %5012
  %5014 = fsub fast float 0x4002A9FBE0000000, %4997
  %5015 = fadd fast float %4997, 0x3FD54FDF00000000
  %5016 = bitcast float %5015 to i32
  %5017 = sub nsw i32 2129859010, %5016
  %5018 = bitcast i32 %5017 to float
  %5019 = fmul fast float %5018, %5014
  %5020 = fmul fast float %5019, %5019
  %5021 = fsub fast float 0x4002A9FBE0000000, %5006
  %5022 = fadd fast float %5006, 0x3FD54FDF00000000
  %5023 = bitcast float %5022 to i32
  %5024 = sub nsw i32 2129859010, %5023
  %5025 = bitcast i32 %5024 to float
  %5026 = fmul fast float %5025, %5021
  %5027 = fmul fast float %5026, %5026
  %5028 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5013)  ; FMax(a,b)
  %5029 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5020)  ; FMax(a,b)
  %5030 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5027)  ; FMax(a,b)
  %5031 = fsub fast float 1.000000e+00, %4917
  %5032 = fadd fast float %5031, %4932
  %5033 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5034 = fsub fast float 1.000000e+00, %4304
  %5035 = fmul fast float %4974, %5034
  %5036 = fmul fast float %4977, %4977
  %5037 = fmul fast float %5036, %5035
  %5038 = fmul fast float %5037, %4979
  %5039 = fmul fast float %5034, 0xBFE99999A0000000
  %5040 = fmul fast float %5039, %4919
  %5041 = fmul fast float %5040, %4936
  %5042 = fadd fast float %5041, 1.000000e+00
  %5043 = fadd fast float %4898, -1.000000e+00
  %5044 = fmul fast float %5042, %5043
  %5045 = fadd fast float %5044, 1.000000e+00
  %5046 = fsub fast float %5028, %4892
  %5047 = fsub fast float %5029, %4893
  %5048 = fsub fast float %5030, %4894
  %5049 = fmul fast float %5038, %5046
  %5050 = fmul fast float %5038, %5047
  %5051 = fmul fast float %5038, %5048
  %5052 = fadd fast float %5049, %4892
  %5053 = fadd fast float %5050, %4893
  %5054 = fadd fast float %5051, %4894
  %5055 = fsub fast float %113, %4895
  %5056 = fsub fast float %114, %4896
  %5057 = fsub fast float %115, %4897
  %5058 = fmul fast float %5038, %5055
  %5059 = fmul fast float %5038, %5056
  %5060 = fmul fast float %5038, %5057
  %5061 = fadd fast float %5058, %4895
  %5062 = fadd fast float %5059, %4896
  %5063 = fadd fast float %5060, %4897
  %5064 = fmul fast float %5038, %5033
  %5065 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5066 = fsub fast float 1.000000e+00, %5065
  %5067 = fmul fast float %5064, %5066
  %5068 = fadd fast float %5067, %5065
  %5069 = fsub fast float 1.000000e+00, %4899
  %5070 = fmul fast float %5038, %5069
  %5071 = fadd fast float %5070, %4899
  %5072 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = call float @dx.op.unary.f32(i32 25, float %5072)  ; Rsqrt(value)
  %5074 = fmul fast float %5061, %5073
  %5075 = fmul fast float %5062, %5073
  %5076 = fmul fast float %5063, %5073
  br label %5077

; <label>:5077                                    ; preds = %4910, %4903
  %5078 = phi float [ %4909, %4903 ], [ %4916, %4910 ]
  %5079 = phi float [ %4908, %4903 ], [ %4914, %4910 ]
  %5080 = phi float [ %4907, %4903 ], [ %4912, %4910 ]
  %5081 = phi float [ %4906, %4903 ], [ %4915, %4910 ]
  %5082 = phi float [ %4905, %4903 ], [ %4913, %4910 ]
  %5083 = phi float [ %4904, %4903 ], [ %4911, %4910 ]
  %5084 = phi float [ %4889, %4903 ], [ %4961, %4910 ]
  %5085 = phi float [ %4890, %4903 ], [ %4962, %4910 ]
  %5086 = phi float [ %4891, %4903 ], [ %4963, %4910 ]
  %5087 = phi float [ %4892, %4903 ], [ %5052, %4910 ]
  %5088 = phi float [ %4893, %4903 ], [ %5053, %4910 ]
  %5089 = phi float [ %4894, %4903 ], [ %5054, %4910 ]
  %5090 = phi float [ %4895, %4903 ], [ %5074, %4910 ]
  %5091 = phi float [ %4896, %4903 ], [ %5075, %4910 ]
  %5092 = phi float [ %4897, %4903 ], [ %5076, %4910 ]
  %5093 = phi float [ %4898, %4903 ], [ %5068, %4910 ]
  %5094 = phi float [ %4899, %4903 ], [ %5071, %4910 ]
  %5095 = fsub fast float -0.000000e+00, %195
  %5096 = select i1 %265, float 0.000000e+00, float %5089
  %5097 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %5080, float %5079, float %5078)  ; Dot3(ax,ay,az,bx,by,bz)
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5083, float %5082, float %5081, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = fmul fast float %5099, 2.000000e+00
  %5101 = fmul fast float %5100, %5090
  %5102 = fmul fast float %5100, %5091
  %5103 = fmul fast float %5100, %5092
  %5104 = fsub fast float %5083, %5101
  %5105 = fsub fast float %5082, %5102
  %5106 = fsub fast float %5081, %5103
  %5107 = call float @dx.op.binary.f32(i32 36, float %5094, float 1.000000e+00)  ; FMin(a,b)
  %5108 = fsub fast float 1.000000e+00, %5094
  %5109 = bitcast float %5108 to i32
  %5110 = sub nsw i32 2129859010, %5109
  %5111 = bitcast i32 %5110 to float
  %5112 = fsub fast float 1.000000e+00, %77
  %5113 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = call float @dx.op.binary.f32(i32 35, float %5113, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5115 = fdiv fast float %5112, %5114
  %5116 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = fmul fast float %5117, 5.000000e-01
  %5119 = fadd fast float %5118, 5.000000e-01
  %5120 = fmul fast float %5119, %77
  %5121 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %5122, %5115
  %5124 = fadd fast float %5120, %5123
  %5125 = fsub fast float 5.000000e-01, %5118
  %5126 = fmul fast float %5125, %5084
  %5127 = fmul fast float %5125, %5085
  %5128 = fmul fast float %5125, %5086
  %5129 = fadd fast float %5124, %5126
  %5130 = fadd fast float %5124, %5127
  %5131 = fadd fast float %5124, %5128
  %5132 = call float @dx.op.dot3.f32(i32 55, float %5104, float %5105, float %5106, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fmul fast float %5133, 5.000000e-01
  %5135 = fadd fast float %5134, 5.000000e-01
  %5136 = fmul fast float %5135, %77
  %5137 = call float @dx.op.dot3.f32(i32 55, float %5104, float %5105, float %5106, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = fmul fast float %5138, %5115
  %5140 = fadd fast float %5136, %5139
  %5141 = fsub fast float 5.000000e-01, %5134
  %5142 = fmul fast float %5141, %5084
  %5143 = fmul fast float %5141, %5085
  %5144 = fmul fast float %5141, %5086
  %5145 = fadd fast float %5140, %5142
  %5146 = fadd fast float %5140, %5143
  %5147 = fadd fast float %5140, %5144
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5150 = call float @dx.op.binary.f32(i32 36, float %5084, float %5149)  ; FMin(a,b)
  %5151 = fsub fast float 1.000000e+00, %5107
  %5152 = fmul fast float %5150, %5151
  %5153 = fsub fast float 1.000000e+00, %5152
  %5154 = bitcast float %5153 to i32
  %5155 = sub nsw i32 2129859010, %5154
  %5156 = bitcast i32 %5155 to float
  %5157 = call float @dx.op.binary.f32(i32 36, float %5085, float %5149)  ; FMin(a,b)
  %5158 = fmul fast float %5157, %5151
  %5159 = fsub fast float 1.000000e+00, %5158
  %5160 = bitcast float %5159 to i32
  %5161 = sub nsw i32 2129859010, %5160
  %5162 = bitcast i32 %5161 to float
  %5163 = call float @dx.op.binary.f32(i32 36, float %5086, float %5149)  ; FMin(a,b)
  %5164 = fmul fast float %5163, %5151
  %5165 = fsub fast float 1.000000e+00, %5164
  %5166 = bitcast float %5165 to i32
  %5167 = sub nsw i32 2129859010, %5166
  %5168 = bitcast i32 %5167 to float
  %5169 = fmul fast float %5107, %78
  %5170 = fmul fast float %5169, %5129
  %5171 = fmul fast float %5170, %5156
  %5172 = fmul fast float %5107, %79
  %5173 = fmul fast float %5172, %5130
  %5174 = fmul fast float %5173, %5162
  %5175 = fmul fast float %5107, %80
  %5176 = fmul fast float %5175, %5131
  %5177 = fmul fast float %5176, %5168
  %5178 = call float @dx.op.binary.f32(i32 36, float %5087, float %5149)  ; FMin(a,b)
  %5179 = fmul fast float %5178, %5151
  %5180 = fsub fast float 1.000000e+00, %5179
  %5181 = bitcast float %5180 to i32
  %5182 = sub nsw i32 2129859010, %5181
  %5183 = bitcast i32 %5182 to float
  %5184 = call float @dx.op.binary.f32(i32 36, float %5088, float %5149)  ; FMin(a,b)
  %5185 = fmul fast float %5184, %5151
  %5186 = fsub fast float 1.000000e+00, %5185
  %5187 = bitcast float %5186 to i32
  %5188 = sub nsw i32 2129859010, %5187
  %5189 = bitcast i32 %5188 to float
  %5190 = call float @dx.op.binary.f32(i32 36, float %5096, float %5149)  ; FMin(a,b)
  %5191 = fmul fast float %5190, %5151
  %5192 = fsub fast float 1.000000e+00, %5191
  %5193 = bitcast float %5192 to i32
  %5194 = sub nsw i32 2129859010, %5193
  %5195 = bitcast i32 %5194 to float
  %5196 = fmul fast float %5169, %5145
  %5197 = fmul fast float %5196, %5183
  %5198 = fmul fast float %5172, %5146
  %5199 = fmul fast float %5198, %5189
  %5200 = fmul fast float %5175, %5147
  %5201 = fmul fast float %5200, %5195
  %5202 = call float @dx.op.dot3.f32(i32 55, float %5171, float %5174, float %5177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5203 = select i1 %265, float 0.000000e+00, float %5171
  %5204 = select i1 %265, float %5202, float %5174
  %5205 = select i1 %265, float 0.000000e+00, float %5177
  %5206 = call float @dx.op.dot3.f32(i32 55, float %5197, float %5199, float %5201, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = select i1 %265, float 0.000000e+00, float %5197
  %5208 = select i1 %265, float %5206, float %5199
  %5209 = select i1 %265, float 0.000000e+00, float %5201
  %5210 = fmul fast float %5098, 9.843750e-01
  %5211 = fmul fast float %5093, 9.843750e-01
  %5212 = fadd fast float %5210, 7.812500e-03
  %5213 = fadd fast float %5211, 7.812500e-03
  %5214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5212, float %5213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 2
  %5216 = extractvalue %dx.types.ResRet.f32 %5214, 3
  %5217 = fmul fast float %5215, %5087
  %5218 = fmul fast float %5215, %5088
  %5219 = fmul fast float %5215, %5096
  %5220 = fadd fast float %5217, %5216
  %5221 = fadd fast float %5218, %5216
  %5222 = fadd fast float %5219, %5216
  %5223 = fcmp fast ogt float %3889, 0.000000e+00
  br i1 %5223, label %5224, label %5250

; <label>:5224                                    ; preds = %5077
  %5225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3889, float %5098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5228 = extractvalue %dx.types.ResRet.f32 %5225, 2
  %5229 = fadd fast float %5226, -5.000000e-01
  %5230 = fadd fast float %5227, -5.000000e-01
  %5231 = fadd fast float %5228, -5.000000e-01
  %5232 = fsub fast float 1.000000e+00, %5087
  %5233 = fsub fast float 1.000000e+00, %5088
  %5234 = fsub fast float 1.000000e+00, %5096
  %5235 = fmul fast float %5087, 4.000000e+00
  %5236 = fmul fast float %5235, %5232
  %5237 = fmul fast float %5236, %5229
  %5238 = fmul fast float %5088, 4.000000e+00
  %5239 = fmul fast float %5238, %5233
  %5240 = fmul fast float %5239, %5230
  %5241 = fmul fast float %5096, 4.000000e+00
  %5242 = fmul fast float %5241, %5234
  %5243 = fmul fast float %5242, %5231
  %5244 = fadd fast float %5237, %5220
  %5245 = fadd fast float %5240, %5221
  %5246 = fadd fast float %5243, %5222
  %5247 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5248 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5249 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  br label %5250

; <label>:5250                                    ; preds = %5224, %5077
  %5251 = phi float [ %5247, %5224 ], [ %5220, %5077 ]
  %5252 = phi float [ %5248, %5224 ], [ %5221, %5077 ]
  %5253 = phi float [ %5249, %5224 ], [ %5222, %5077 ]
  %5254 = call float @dx.op.binary.f32(i32 35, float %5252, float %5253)  ; FMax(a,b)
  %5255 = call float @dx.op.binary.f32(i32 35, float %5251, float %5254)  ; FMax(a,b)
  %5256 = fsub fast float 1.000000e+00, %5255
  %5257 = fmul fast float %5256, %5203
  %5258 = fmul fast float %5256, %5204
  %5259 = fmul fast float %5256, %5205
  %5260 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5261 = fcmp fast ogt float %5260, 0x3E7FF19E20000000
  %5262 = fdiv fast float 1.000000e+00, %5260
  %5263 = select i1 %5261, float %5262, float 0.000000e+00
  %5264 = fmul fast float %5263, %5084
  %5265 = fmul fast float %5263, %5085
  %5266 = fmul fast float %5263, %5086
  %5267 = fadd fast float %5264, -1.000000e+00
  %5268 = fadd fast float %5265, -1.000000e+00
  %5269 = fadd fast float %5266, -1.000000e+00
  %5270 = fmul fast float %5267, 5.000000e-01
  %5271 = fmul fast float %5268, 5.000000e-01
  %5272 = fmul fast float %5269, 5.000000e-01
  %5273 = fadd fast float %5270, 1.000000e+00
  %5274 = fadd fast float %5271, 1.000000e+00
  %5275 = fadd fast float %5272, 1.000000e+00
  %5276 = fmul fast float %5251, %5207
  %5277 = fmul fast float %5252, %5208
  %5278 = fmul fast float %5253, %5209
  %5279 = fsub fast float 1.000000e+00, %5098
  %5280 = bitcast float %5279 to i32
  %5281 = sitofp i32 %5280 to float
  %5282 = fmul fast float %5281, 5.000000e+00
  %5283 = fadd fast float %5282, 0xC1EFBF8940000000
  %5284 = fptosi float %5283 to i32
  %5285 = bitcast i32 %5284 to float
  %5286 = fmul fast float %5285, %3890
  %5287 = fmul fast float %5203, %5286
  %5288 = fmul fast float %5287, %5256
  %5289 = fmul fast float %5288, %5273
  %5290 = fmul fast float %5204, %5286
  %5291 = fmul fast float %5290, %5256
  %5292 = fmul fast float %5291, %5274
  %5293 = fmul fast float %5205, %5286
  %5294 = fmul fast float %5293, %5256
  %5295 = fmul fast float %5294, %5275
  %5296 = fmul fast float %5257, %3886
  %5297 = fmul fast float %5258, %3886
  %5298 = fmul fast float %5259, %3886
  %5299 = fadd fast float %5276, %3882
  %5300 = fadd fast float %5299, %5289
  %5301 = fmul fast float %5300, %3886
  %5302 = fadd fast float %5277, %3883
  %5303 = fadd fast float %5302, %5292
  %5304 = fmul fast float %5303, %3886
  %5305 = fadd fast float %5278, %3884
  %5306 = fadd fast float %5305, %5295
  %5307 = fmul fast float %5306, %3886
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 3
  %5310 = fcmp fast oeq float %5309, 0.000000e+00
  br i1 %5310, label %6395, label %5311

; <label>:5311                                    ; preds = %5250
  %5312 = extractvalue %dx.types.CBufRet.f32 %5308, 0
  %5313 = extractvalue %dx.types.CBufRet.f32 %5308, 1
  %5314 = extractvalue %dx.types.CBufRet.f32 %5308, 2
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.CBufRet.f32 %5315, 1
  %5318 = extractvalue %dx.types.CBufRet.f32 %5315, 2
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = select i1 %265, float %5320, float %5316
  %5324 = select i1 %265, float %5322, float %5317
  %5325 = select i1 %265, float %5321, float %5318
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 2
  %5328 = fmul fast float %5327, %113
  %5329 = fmul fast float %5327, %114
  %5330 = fmul fast float %5327, %115
  %5331 = fadd fast float %5328, %193
  %5332 = fadd fast float %5329, %194
  %5333 = fadd fast float %5330, %195
  %5334 = fcmp fast olt float %5309, 0.000000e+00
  br i1 %5334, label %5974, label %5335

; <label>:5335                                    ; preds = %5311
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 0
  %5338 = extractvalue %dx.types.CBufRet.f32 %5336, 1
  %5339 = extractvalue %dx.types.CBufRet.f32 %5336, 2
  %5340 = extractvalue %dx.types.CBufRet.f32 %5336, 3
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.CBufRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.CBufRet.f32 %5341, 2
  %5345 = extractvalue %dx.types.CBufRet.f32 %5341, 3
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 0
  %5348 = extractvalue %dx.types.CBufRet.f32 %5346, 1
  %5349 = extractvalue %dx.types.CBufRet.f32 %5346, 2
  %5350 = extractvalue %dx.types.CBufRet.f32 %5346, 3
  %5351 = fmul fast float %5337, %5331
  %5352 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5338, float %5351)  ; FMad(a,b,c)
  %5353 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5339, float %5352)  ; FMad(a,b,c)
  %5354 = fadd fast float %5353, %5340
  %5355 = fmul fast float %5342, %5331
  %5356 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5343, float %5355)  ; FMad(a,b,c)
  %5357 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5344, float %5356)  ; FMad(a,b,c)
  %5358 = fadd fast float %5357, %5345
  %5359 = fmul fast float %5347, %5331
  %5360 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5348, float %5359)  ; FMad(a,b,c)
  %5361 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5349, float %5360)  ; FMad(a,b,c)
  %5362 = fadd fast float %5361, %5350
  %5363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5364 = extractvalue %dx.types.CBufRet.f32 %5363, 0
  %5365 = fcmp fast une float %5364, 0.000000e+00
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 0
  %5368 = extractvalue %dx.types.CBufRet.f32 %5366, 1
  %5369 = extractvalue %dx.types.CBufRet.f32 %5366, 3
  %5370 = fmul fast float %5369, %5354
  %5371 = fmul fast float %5369, %5358
  %5372 = fadd fast float %5370, %5367
  %5373 = fadd fast float %5371, %5368
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.CBufRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.CBufRet.f32 %5374, 3
  %5378 = fmul fast float %5377, %5354
  %5379 = fmul fast float %5377, %5358
  %5380 = fadd fast float %5378, %5375
  %5381 = fadd fast float %5379, %5376
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 1
  %5384 = fsub fast float %5383, %5362
  %5385 = extractvalue %dx.types.CBufRet.f32 %5382, 2
  %5386 = fmul fast float %5384, %5385
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  br i1 %5365, label %5449, label %5389

; <label>:5389                                    ; preds = %5335
  %5390 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 2
  %5393 = fadd fast float %5392, %5390
  %5394 = fcmp fast ogt float %5393, 0.000000e+00
  br i1 %5394, label %5395, label %5419

; <label>:5395                                    ; preds = %5389
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 0
  %5398 = extractvalue %dx.types.CBufRet.f32 %5396, 1
  %5399 = fsub fast float %5380, %5397
  %5400 = fsub fast float %5381, %5398
  %5401 = fcmp fast olt float %5399, 0.000000e+00
  %5402 = fcmp fast olt float %5400, 0.000000e+00
  %5403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.f32 %5403, 0
  %5405 = extractvalue %dx.types.CBufRet.f32 %5403, 1
  %5406 = extractvalue %dx.types.CBufRet.f32 %5403, 2
  %5407 = extractvalue %dx.types.CBufRet.f32 %5403, 3
  %5408 = select i1 %5401, float %5404, float %5406
  %5409 = select i1 %5402, float %5405, float %5407
  %5410 = fmul fast float %5408, %5399
  %5411 = fmul fast float %5409, %5400
  %5412 = call float @dx.op.unary.f32(i32 6, float %5410)  ; FAbs(value)
  %5413 = call float @dx.op.unary.f32(i32 6, float %5411)  ; FAbs(value)
  %5414 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5415 = call float @dx.op.binary.f32(i32 35, float %5412, float %5413)  ; FMax(a,b)
  %5416 = fsub fast float %5414, %5415
  %5417 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  %5418 = fmul fast float %5417, %5388
  br label %5419

; <label>:5419                                    ; preds = %5395, %5389
  %5420 = phi float [ %5418, %5395 ], [ 0.000000e+00, %5389 ]
  %5421 = extractvalue %dx.types.CBufRet.f32 %5366, 2
  %5422 = extractvalue %dx.types.CBufRet.f32 %5391, 1
  %5423 = fadd fast float %5422, %5421
  %5424 = fcmp fast ogt float %5423, 0.000000e+00
  br i1 %5424, label %5425, label %5449

; <label>:5425                                    ; preds = %5419
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.CBufRet.f32 %5426, 1
  %5429 = fsub fast float %5372, %5427
  %5430 = fsub fast float %5373, %5428
  %5431 = fcmp fast olt float %5429, 0.000000e+00
  %5432 = fcmp fast olt float %5430, 0.000000e+00
  %5433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.f32 %5433, 0
  %5435 = extractvalue %dx.types.CBufRet.f32 %5433, 1
  %5436 = extractvalue %dx.types.CBufRet.f32 %5433, 2
  %5437 = extractvalue %dx.types.CBufRet.f32 %5433, 3
  %5438 = select i1 %5431, float %5434, float %5436
  %5439 = select i1 %5432, float %5435, float %5437
  %5440 = fmul fast float %5438, %5429
  %5441 = fmul fast float %5439, %5430
  %5442 = call float @dx.op.unary.f32(i32 6, float %5440)  ; FAbs(value)
  %5443 = call float @dx.op.unary.f32(i32 6, float %5441)  ; FAbs(value)
  %5444 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5445 = call float @dx.op.binary.f32(i32 35, float %5442, float %5443)  ; FMax(a,b)
  %5446 = fsub fast float %5444, %5445
  %5447 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5448 = fmul fast float %5447, %5388
  br label %5449

; <label>:5449                                    ; preds = %5425, %5419, %5335
  %5450 = phi float [ 0.000000e+00, %5335 ], [ %5448, %5425 ], [ 0.000000e+00, %5419 ]
  %5451 = phi float [ 0.000000e+00, %5335 ], [ %5420, %5425 ], [ %5420, %5419 ]
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5454 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5458 = fsub fast float %5354, %5456
  %5459 = fsub fast float %5358, %5457
  %5460 = fcmp fast olt float %5458, 0.000000e+00
  %5461 = fcmp fast olt float %5459, 0.000000e+00
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.CBufRet.f32 %5462, 1
  %5465 = extractvalue %dx.types.CBufRet.f32 %5462, 2
  %5466 = extractvalue %dx.types.CBufRet.f32 %5462, 3
  %5467 = select i1 %5460, float %5463, float %5465
  %5468 = select i1 %5461, float %5464, float %5466
  %5469 = fmul fast float %5467, %5458
  %5470 = fmul fast float %5468, %5459
  %5471 = call float @dx.op.unary.f32(i32 6, float %5469)  ; FAbs(value)
  %5472 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5473 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5474 = call float @dx.op.binary.f32(i32 35, float %5471, float %5472)  ; FMax(a,b)
  %5475 = fsub fast float %5473, %5474
  %5476 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5477 = call float @dx.op.binary.f32(i32 36, float %5476, float %5454)  ; FMin(a,b)
  %5478 = fmul fast float %5477, %5388
  %5479 = fsub fast float %5450, %5478
  %5480 = fsub fast float %5451, %5450
  %5481 = fsub fast float %5480, %5478
  %5482 = call float @dx.op.binary.f32(i32 35, float %5450, float %5451)  ; FMax(a,b)
  %5483 = call float @dx.op.binary.f32(i32 35, float %5478, float %5482)  ; FMax(a,b)
  %5484 = fcmp fast olt float %5483, 1.000000e+00
  br i1 %5484, label %5485, label %5883, !dx.controlflow.hints !96

; <label>:5485                                    ; preds = %5449
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = fcmp fast une float %5487, 0.000000e+00
  br i1 %5488, label %5489, label %5883, !dx.controlflow.hints !97

; <label>:5489                                    ; preds = %5485
  %5490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5490, 0
  %5492 = extractvalue %dx.types.CBufRet.f32 %5490, 1
  %5493 = extractvalue %dx.types.CBufRet.f32 %5490, 2
  %5494 = extractvalue %dx.types.CBufRet.f32 %5490, 3
  %5495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5496 = extractvalue %dx.types.CBufRet.f32 %5495, 0
  %5497 = extractvalue %dx.types.CBufRet.f32 %5495, 1
  %5498 = extractvalue %dx.types.CBufRet.f32 %5495, 2
  %5499 = extractvalue %dx.types.CBufRet.f32 %5495, 3
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 0
  %5502 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5503 = extractvalue %dx.types.CBufRet.f32 %5500, 2
  %5504 = extractvalue %dx.types.CBufRet.f32 %5500, 3
  %5505 = fmul fast float %5491, %5331
  %5506 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5492, float %5505)  ; FMad(a,b,c)
  %5507 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5493, float %5506)  ; FMad(a,b,c)
  %5508 = fadd fast float %5507, %5494
  %5509 = fmul fast float %5496, %5331
  %5510 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5497, float %5509)  ; FMad(a,b,c)
  %5511 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5498, float %5510)  ; FMad(a,b,c)
  %5512 = fadd fast float %5511, %5499
  %5513 = fmul fast float %5501, %5331
  %5514 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5502, float %5513)  ; FMad(a,b,c)
  %5515 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5503, float %5514)  ; FMad(a,b,c)
  %5516 = fadd fast float %5515, %5504
  %5517 = fcmp fast oge float %5508, 1.000000e+00
  %5518 = fcmp fast oge float %5512, 1.000000e+00
  %5519 = or i1 %5517, %5518
  %5520 = fcmp fast olt float %5508, 0.000000e+00
  %5521 = fcmp fast olt float %5512, 0.000000e+00
  %5522 = or i1 %5520, %5521
  %5523 = or i1 %5519, %5522
  br i1 %5523, label %5883, label %5524, !dx.controlflow.hints !98

; <label>:5524                                    ; preds = %5489
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.CBufRet.f32 %5525, 1
  %5528 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5530 = extractvalue %dx.types.CBufRet.i32 %5529, 2
  %5531 = uitofp i32 %5530 to float
  %5532 = extractvalue %dx.types.CBufRet.i32 %5529, 3
  %5533 = uitofp i32 %5532 to float
  %5534 = extractvalue %dx.types.CBufRet.f32 %5525, 3
  %5535 = fmul fast float %5534, 2.000000e+00
  %5536 = fsub fast float %5508, %5526
  %5537 = fsub fast float %5512, %5527
  %5538 = fmul fast float %5535, %5536
  %5539 = fmul fast float %5535, %5537
  %5540 = fdiv fast float 1.000000e+00, %5314
  %5541 = fmul fast float %5539, %5540
  %5542 = call float @dx.op.unary.f32(i32 6, float %5541)  ; FAbs(value)
  %5543 = fmul fast float %5528, %5333
  %5544 = fmul fast float %5543, %5535
  %5545 = call float @dx.op.unary.f32(i32 6, float %5544)  ; FAbs(value)
  %5546 = call float @dx.op.unary.f32(i32 6, float %5538)  ; FAbs(value)
  %5547 = call float @dx.op.binary.f32(i32 35, float %5545, float %5542)  ; FMax(a,b)
  %5548 = call float @dx.op.binary.f32(i32 35, float %5546, float %5547)  ; FMax(a,b)
  %5549 = fmul fast float %5548, 2.000000e+00
  %5550 = call float @dx.op.unary.f32(i32 23, float %5549)  ; Log(value)
  %5551 = call float @dx.op.binary.f32(i32 35, float %5550, float %5531)  ; FMax(a,b)
  %5552 = call float @dx.op.unary.f32(i32 22, float %5551)  ; Frc(value)
  %5553 = fadd fast float %5552, 0xBFEA666660000000
  %5554 = fmul fast float %5553, 8.000000e+00
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = call float @dx.op.unary.f32(i32 27, float %5551)  ; Round_ni(value)
  %5557 = fadd fast float %5556, %5555
  %5558 = call float @dx.op.binary.f32(i32 36, float %5557, float %5533)  ; FMin(a,b)
  %5559 = call float @dx.op.unary.f32(i32 27, float %5558)  ; Round_ni(value)
  %5560 = fsub fast float -0.000000e+00, %5559
  %5561 = call float @dx.op.unary.f32(i32 21, float %5560)  ; Exp(value)
  %5562 = fmul fast float %5561, %5535
  %5563 = fmul fast float %5562, %5508
  %5564 = fmul fast float %5562, %5512
  %5565 = fmul fast float %5563, 2.500000e-01
  %5566 = fmul fast float %5564, 2.500000e-01
  %5567 = fadd fast float %5565, 5.000000e-01
  %5568 = fadd fast float %5566, 5.000000e-01
  %5569 = fsub fast float %5533, %5531
  %5570 = fptoui float %5569 to i32
  %5571 = add i32 %5570, 320
  %5572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %5571)  ; CBufferLoadLegacy(handle,regIndex)
  %5573 = extractvalue %dx.types.CBufRet.f32 %5572, 0
  %5574 = extractvalue %dx.types.CBufRet.f32 %5572, 1
  %5575 = fcmp fast une float %5558, %5533
  %5576 = fsub fast float %5508, %5573
  %5577 = fsub fast float %5512, %5574
  %5578 = call float @dx.op.unary.f32(i32 6, float %5576)  ; FAbs(value)
  %5579 = call float @dx.op.unary.f32(i32 6, float %5577)  ; FAbs(value)
  %5580 = fmul fast float %5578, %5562
  %5581 = fmul fast float %5579, %5562
  %5582 = fcmp fast olt float %5580, 1.000000e+00
  %5583 = fcmp fast olt float %5581, 1.000000e+00
  %5584 = and i1 %5582, %5583
  %5585 = or i1 %5575, %5584
  br i1 %5585, label %5586, label %5883, !dx.controlflow.hints !99

; <label>:5586                                    ; preds = %5524
  %5587 = fmul fast float %5564, 5.000000e-01
  %5588 = fmul fast float %5563, 5.000000e-01
  %5589 = fadd fast float %5587, 5.000000e-01
  %5590 = fadd fast float %5588, 5.000000e-01
  %5591 = sitofp i32 %5530 to float
  %5592 = fsub fast float %5558, %5591
  %5593 = call float @dx.op.unary.f32(i32 27, float %5592)  ; Round_ni(value)
  %5594 = call float @dx.op.unary.f32(i32 22, float %5558)  ; Frc(value)
  %5595 = call float @dx.op.unary.f32(i32 22, float %5590)  ; Frc(value)
  %5596 = call float @dx.op.unary.f32(i32 22, float %5589)  ; Frc(value)
  %5597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5595, float %5596, float %5593, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5598 = extractvalue %dx.types.ResRet.f32 %5597, 0
  %5599 = extractvalue %dx.types.ResRet.f32 %5597, 1
  %5600 = extractvalue %dx.types.ResRet.f32 %5597, 2
  %5601 = extractvalue %dx.types.ResRet.f32 %5597, 3
  %5602 = fcmp fast ogt float %5594, 0.000000e+00
  br i1 %5602, label %5603, label %5624, !dx.controlflow.hints !100

; <label>:5603                                    ; preds = %5586
  %5604 = fadd fast float %5593, 1.000000e+00
  %5605 = call float @dx.op.unary.f32(i32 22, float %5567)  ; Frc(value)
  %5606 = call float @dx.op.unary.f32(i32 22, float %5568)  ; Frc(value)
  %5607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %5605, float %5606, float %5604, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5608 = extractvalue %dx.types.ResRet.f32 %5607, 0
  %5609 = extractvalue %dx.types.ResRet.f32 %5607, 1
  %5610 = extractvalue %dx.types.ResRet.f32 %5607, 2
  %5611 = extractvalue %dx.types.ResRet.f32 %5607, 3
  %5612 = fsub fast float %5608, %5598
  %5613 = fsub fast float %5609, %5599
  %5614 = fsub fast float %5610, %5600
  %5615 = fsub fast float %5611, %5601
  %5616 = fmul fast float %5612, %5594
  %5617 = fmul fast float %5613, %5594
  %5618 = fmul fast float %5614, %5594
  %5619 = fmul fast float %5615, %5594
  %5620 = fadd fast float %5616, %5598
  %5621 = fadd fast float %5617, %5599
  %5622 = fadd fast float %5618, %5600
  %5623 = fadd fast float %5619, %5601
  br label %5624

; <label>:5624                                    ; preds = %5603, %5586
  %5625 = phi float [ %5620, %5603 ], [ %5598, %5586 ]
  %5626 = phi float [ %5621, %5603 ], [ %5599, %5586 ]
  %5627 = phi float [ %5622, %5603 ], [ %5600, %5586 ]
  %5628 = phi float [ %5623, %5603 ], [ %5601, %5586 ]
  %5629 = fadd fast float %5625, -5.000000e-01
  %5630 = fadd fast float %5627, -5.000000e-01
  %5631 = fmul fast float %5629, 0xBFD5555560000000
  %5632 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5630, float %5631)  ; FMad(a,b,c)
  %5633 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5626, float 0.000000e+00)  ; FMad(a,b,c)
  %5634 = fadd fast float %5633, %5628
  %5635 = fmul fast float %5629, -7.500000e-01
  %5636 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5630, float %5635)  ; FMad(a,b,c)
  %5637 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5626, float 0.000000e+00)  ; FMad(a,b,c)
  %5638 = fadd fast float %5637, %5628
  %5639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.f32 %5639, 0
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 0
  %5643 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %5644 = extractvalue %dx.types.CBufRet.f32 %5641, 2
  %5645 = extractvalue %dx.types.CBufRet.f32 %5641, 3
  %5646 = fsub fast float %5642, %5632
  %5647 = fsub fast float %5643, %5634
  %5648 = fsub fast float %5644, %5636
  %5649 = fsub fast float %5645, %5638
  %5650 = fmul fast float %5646, %5640
  %5651 = fmul fast float %5647, %5640
  %5652 = fmul fast float %5648, %5640
  %5653 = fmul fast float %5649, %5640
  %5654 = fadd fast float %5650, %5632
  %5655 = fadd fast float %5651, %5634
  %5656 = fadd fast float %5652, %5636
  %5657 = fadd fast float %5653, %5638
  %5658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5659 = extractvalue %dx.types.ResRet.i32 %5658, 0
  %5660 = and i32 %5659, 536870911
  %5661 = uitofp i32 %5660 to float
  %5662 = fmul fast float %5661, %5508
  %5663 = fmul fast float %5661, %5512
  %5664 = fptoui float %5662 to i32
  %5665 = fptoui float %5663 to i32
  %5666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5667 = extractvalue %dx.types.ResRet.i32 %5666, 0
  %5668 = and i32 %5667, 31
  %5669 = lshr i32 %5664, %5668
  %5670 = lshr i32 %5665, %5668
  %5671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5672 = extractvalue %dx.types.ResRet.i32 %5671, 0
  %5673 = and i32 %5672, 31
  %5674 = shl i32 1, %5673
  %5675 = call i32 @dx.op.binary.i32(i32 40, i32 %5674, i32 4)  ; UMin(a,b)
  %5676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5677 = extractvalue %dx.types.ResRet.i32 %5676, 0
  %5678 = extractvalue %dx.types.ResRet.i32 %5676, 1
  %5679 = icmp eq i32 %5675, 0
  br i1 %5679, label %5721, label %5680

; <label>:5680                                    ; preds = %5624
  br label %5681

; <label>:5681                                    ; preds = %5709, %5680
  %5682 = phi i32 [ %5712, %5709 ], [ 0, %5680 ]
  %5683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5684 = extractvalue %dx.types.ResRet.i32 %5683, 0
  %5685 = lshr i32 %5684, 16
  %5686 = and i32 %5685, 31
  %5687 = shl i32 %5670, %5686
  %5688 = add i32 %5687, %5669
  %5689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5690 = extractvalue %dx.types.ResRet.i32 %5689, 0
  %5691 = and i32 %5690, 31
  %5692 = shl i32 %5688, %5691
  %5693 = add i32 %5692, %5682
  %5694 = shl i32 %5693, 2
  %5695 = add i32 %5694, 32
  %5696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5695, i32 undef)  ; BufferLoad(srv,index,wot)
  %5697 = extractvalue %dx.types.ResRet.i32 %5696, 0
  %5698 = icmp slt i32 %5697, 0
  %5699 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5682
  %5700 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5682
  %5701 = bitcast float* %5699 to i32*
  %5702 = bitcast float* %5700 to i32*
  br i1 %5698, label %5703, label %5709

; <label>:5703                                    ; preds = %5681
  %5704 = and i32 %5697, 1073741823
  %5705 = add nuw nsw i32 %5704, 20
  %5706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5705, i32 undef)  ; BufferLoad(srv,index,wot)
  %5707 = extractvalue %dx.types.ResRet.i32 %5706, 0
  %5708 = extractvalue %dx.types.ResRet.i32 %5706, 1
  br label %5709

; <label>:5709                                    ; preds = %5703, %5681
  %5710 = phi i32 [ %5707, %5703 ], [ %5677, %5681 ]
  %5711 = phi i32 [ %5708, %5703 ], [ %5678, %5681 ]
  store i32 %5710, i32* %5701, align 4
  store i32 %5711, i32* %5702, align 4
  %5712 = add nuw i32 %5682, 1
  %5713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5714 = extractvalue %dx.types.CBufRet.i32 %5713, 2
  %5715 = icmp eq i32 %5714, 0
  %5716 = icmp ugt i32 %5697, -1073741825
  %5717 = and i1 %5716, %5715
  %5718 = icmp ult i32 %5712, %5675
  %5719 = and i1 %5717, %5718
  br i1 %5719, label %5681, label %5720

; <label>:5720                                    ; preds = %5709
  br label %5721

; <label>:5721                                    ; preds = %5720, %5624
  %5722 = phi i32 [ 0, %5624 ], [ %5712, %5720 ]
  %5723 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5724 = fptoui float %5723 to i32
  %5725 = icmp eq i32 %5724, 0
  br i1 %5725, label %5777, label %5726

; <label>:5726                                    ; preds = %5721
  br label %5727

; <label>:5727                                    ; preds = %5772, %5726
  %5728 = phi i32 [ %5773, %5772 ], [ %5722, %5726 ]
  %5729 = phi i32 [ %5774, %5772 ], [ 0, %5726 ]
  %5730 = lshr i32 %5729, 2
  %5731 = and i32 %5729, 3
  %5732 = add nuw nsw i32 %5730, 83
  %5733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %5732)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.i32 %5733, 0
  %5735 = extractvalue %dx.types.CBufRet.i32 %5733, 1
  %5736 = extractvalue %dx.types.CBufRet.i32 %5733, 2
  %5737 = extractvalue %dx.types.CBufRet.i32 %5733, 3
  %5738 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %5734, i32* %5738, align 4
  %5739 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %5735, i32* %5739, align 4
  %5740 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %5736, i32* %5740, align 4
  %5741 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %5737, i32* %5741, align 4
  %5742 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %5731
  %5743 = load i32, i32* %5742, align 4, !tbaa !101, !noalias !105
  %5744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5745 = extractvalue %dx.types.ResRet.i32 %5744, 0
  %5746 = lshr i32 %5745, 16
  %5747 = and i32 %5746, 31
  %5748 = shl i32 %5670, %5747
  %5749 = add i32 %5748, %5669
  %5750 = shl i32 %5749, 2
  %5751 = add i32 %5750, %5743
  %5752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5751, i32 undef)  ; BufferLoad(srv,index,wot)
  %5753 = extractvalue %dx.types.ResRet.i32 %5752, 0
  %5754 = icmp eq i32 %5753, 0
  br i1 %5754, label %5772, label %5755

; <label>:5755                                    ; preds = %5727
  %5756 = icmp slt i32 %5753, 0
  %5757 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5728
  %5758 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5728
  %5759 = bitcast float* %5757 to i32*
  %5760 = bitcast float* %5758 to i32*
  br i1 %5756, label %5761, label %5768

; <label>:5761                                    ; preds = %5755
  %5762 = and i32 %5753, 1073741823
  %5763 = add i32 %5743, 20
  %5764 = add i32 %5763, %5762
  %5765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5764, i32 undef)  ; BufferLoad(srv,index,wot)
  %5766 = extractvalue %dx.types.ResRet.i32 %5765, 0
  %5767 = extractvalue %dx.types.ResRet.i32 %5765, 1
  br label %5768

; <label>:5768                                    ; preds = %5761, %5755
  %5769 = phi i32 [ %5766, %5761 ], [ %5677, %5755 ]
  %5770 = phi i32 [ %5767, %5761 ], [ %5678, %5755 ]
  store i32 %5769, i32* %5759, align 4
  store i32 %5770, i32* %5760, align 4
  %5771 = add i32 %5728, 1
  br label %5772

; <label>:5772                                    ; preds = %5768, %5727
  %5773 = phi i32 [ %5728, %5727 ], [ %5771, %5768 ]
  %5774 = add nuw i32 %5729, 1
  %5775 = icmp eq i32 %5774, %5724
  br i1 %5775, label %5776, label %5727

; <label>:5776                                    ; preds = %5772
  br label %5777

; <label>:5777                                    ; preds = %5776, %5721
  %5778 = phi i32 [ %5722, %5721 ], [ %5773, %5776 ]
  %5779 = icmp eq i32 %5778, 1
  %5780 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %5781 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %5779, label %5782, label %5785

; <label>:5782                                    ; preds = %5777
  %5783 = load float, float* %5780, align 4
  %5784 = load float, float* %5781, align 4
  br label %5812

; <label>:5785                                    ; preds = %5777
  %5786 = load float, float* %5780, align 4
  %5787 = load float, float* %5781, align 4
  %5788 = fdiv fast float 1.000000e+00, %5787
  %5789 = fsub fast float %5786, %5788
  %5790 = icmp ugt i32 %5778, 1
  br i1 %5790, label %5791, label %5807

; <label>:5791                                    ; preds = %5785
  br label %5792

; <label>:5792                                    ; preds = %5792, %5791
  %5793 = phi float [ %5802, %5792 ], [ %5789, %5791 ]
  %5794 = phi float [ %5803, %5792 ], [ %5786, %5791 ]
  %5795 = phi i32 [ %5804, %5792 ], [ 1, %5791 ]
  %5796 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %5795
  %5797 = load float, float* %5796, align 4
  %5798 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %5795
  %5799 = load float, float* %5798, align 4
  %5800 = fdiv fast float 1.000000e+00, %5799
  %5801 = fsub fast float %5797, %5800
  %5802 = call float @dx.op.binary.f32(i32 36, float %5793, float %5801)  ; FMin(a,b)
  %5803 = call float @dx.op.binary.f32(i32 35, float %5794, float %5797)  ; FMax(a,b)
  %5804 = add nuw i32 %5795, 1
  %5805 = icmp eq i32 %5804, %5778
  br i1 %5805, label %5806, label %5792

; <label>:5806                                    ; preds = %5792
  br label %5807

; <label>:5807                                    ; preds = %5806, %5785
  %5808 = phi float [ %5789, %5785 ], [ %5802, %5806 ]
  %5809 = phi float [ %5786, %5785 ], [ %5803, %5806 ]
  %5810 = fsub fast float %5809, %5808
  %5811 = fdiv fast float 1.000000e+00, %5810
  br label %5812

; <label>:5812                                    ; preds = %5807, %5782
  %5813 = phi float [ %5783, %5782 ], [ %5809, %5807 ]
  %5814 = phi float [ %5784, %5782 ], [ %5811, %5807 ]
  %5815 = fadd fast float %5516, %5813
  %5816 = fmul fast float %5815, %5814
  %5817 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5818 = fmul fast float %5817, 2.000000e+00
  %5819 = fsub fast float 1.000000e+00, %5818
  %5820 = fmul fast float %5654, %5654
  %5821 = fsub fast float %5655, %5820
  %5822 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5821)  ; FMax(a,b)
  %5823 = fdiv fast float 1.000000e+00, %5822
  %5824 = fmul fast float %5655, %5654
  %5825 = fsub fast float %5656, %5824
  %5826 = fsub fast float %5819, %5654
  %5827 = fmul fast float %5819, %5819
  %5828 = fsub fast float %5827, %5655
  %5829 = fmul fast float %5823, %5825
  %5830 = fmul fast float %5829, %5826
  %5831 = fsub fast float %5828, %5830
  %5832 = fmul fast float %5655, %5655
  %5833 = fsub fast float %5657, %5832
  %5834 = fmul fast float %5825, %5825
  %5835 = fmul fast float %5834, %5823
  %5836 = fsub fast float %5833, %5835
  %5837 = fdiv fast float %5831, %5836
  %5838 = fmul fast float %5837, %5825
  %5839 = fsub fast float %5826, %5838
  %5840 = fmul fast float %5839, %5823
  %5841 = fmul fast float %5840, %5654
  %5842 = fsub fast float 1.000000e+00, %5841
  %5843 = fmul fast float %5837, %5655
  %5844 = fsub fast float %5842, %5843
  %5845 = fmul fast float %5840, %5840
  %5846 = fmul fast float %5837, 4.000000e+00
  %5847 = fmul fast float %5846, %5844
  %5848 = fsub fast float %5845, %5847
  %5849 = call float @dx.op.unary.f32(i32 24, float %5848)  ; Sqrt(value)
  %5850 = fcmp fast oge float %5840, 0.000000e+00
  %5851 = fsub fast float -0.000000e+00, %5849
  %5852 = select i1 %5850, float %5851, float %5849
  %5853 = fsub fast float %5852, %5840
  %5854 = fdiv fast float %5853, %5837
  %5855 = fdiv fast float %5844, %5853
  %5856 = fmul fast float %5854, 5.000000e-01
  %5857 = fmul fast float %5855, 2.000000e+00
  %5858 = select i1 %5850, float %5856, float %5857
  %5859 = select i1 %5850, float %5857, float %5856
  %5860 = call float @dx.op.binary.f32(i32 35, float %5858, float %5859)  ; FMax(a,b)
  %5861 = call float @dx.op.binary.f32(i32 36, float %5858, float %5859)  ; FMin(a,b)
  %5862 = fcmp fast ogt float %5819, %5860
  %5863 = fsub fast float %5819, %5861
  %5864 = fsub fast float %5819, %5860
  %5865 = fsub fast float %5860, %5861
  %5866 = select i1 %5862, float %5864, float %5865
  %5867 = fmul float %5863, %5866
  %5868 = select i1 %5862, float %5861, float %5819
  %5869 = fcmp fast ogt float %5819, %5861
  %5870 = fmul fast float %5868, %5860
  %5871 = fadd fast float %5868, %5860
  %5872 = fmul fast float %5871, %5654
  %5873 = fadd fast float %5870, %5655
  %5874 = fsub fast float %5873, %5872
  %5875 = fdiv fast float %5874, %5867
  %5876 = select i1 %5869, float %5875, float 0.000000e+00
  %5877 = fsub fast float 1.000000e+00, %5876
  %5878 = select i1 %5862, float %5877, float %5876
  %5879 = call float @dx.op.unary.f32(i32 7, float %5878)  ; Saturate(value)
  %5880 = extractvalue %dx.types.CBufRet.f32 %5639, 3
  %5881 = fmul fast float %5880, %5879
  %5882 = fsub fast float 1.000000e+00, %5881
  br label %5883

; <label>:5883                                    ; preds = %5812, %5524, %5489, %5485, %5449
  %5884 = phi float [ 1.000000e+00, %5449 ], [ %5882, %5812 ], [ 1.000000e+00, %5489 ], [ 1.000000e+00, %5524 ], [ 1.000000e+00, %5485 ]
  %5885 = fcmp fast ogt float %5481, 0.000000e+00
  br i1 %5885, label %5886, label %5894, !dx.controlflow.hints !114

; <label>:5886                                    ; preds = %5883
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 2
  %5889 = fadd fast float %5888, %5362
  %5890 = call float @dx.op.binary.f32(i32 35, float %5889, float 0.000000e+00)  ; FMax(a,b)
  %5891 = fadd fast float %5890, 0x3F10000000000000
  %5892 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5380, float %5381, float undef, float undef, i32 0, i32 0, i32 undef, float %5891)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5893 = extractvalue %dx.types.ResRet.f32 %5892, 0
  br label %5894

; <label>:5894                                    ; preds = %5886, %5883
  %5895 = phi float [ %5893, %5886 ], [ 1.000000e+00, %5883 ]
  %5896 = fcmp fast ogt float %5479, 0.000000e+00
  br i1 %5896, label %5897, label %5905, !dx.controlflow.hints !115

; <label>:5897                                    ; preds = %5894
  %5898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5898, 1
  %5900 = fadd fast float %5899, %5362
  %5901 = call float @dx.op.binary.f32(i32 35, float %5900, float 0.000000e+00)  ; FMax(a,b)
  %5902 = fadd fast float %5901, 0x3F10000000000000
  %5903 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5372, float %5373, float undef, float undef, i32 0, i32 0, i32 undef, float %5902)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5904 = extractvalue %dx.types.ResRet.f32 %5903, 0
  br label %5905

; <label>:5905                                    ; preds = %5897, %5894
  %5906 = phi float [ %5904, %5897 ], [ 1.000000e+00, %5894 ]
  %5907 = fcmp fast ogt float %5478, 0.000000e+00
  br i1 %5907, label %5908, label %5920, !dx.controlflow.hints !116

; <label>:5908                                    ; preds = %5905
  %5909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.f32 %5909, 0
  %5911 = fadd fast float %5910, %5362
  %5912 = call float @dx.op.binary.f32(i32 35, float %5911, float 0.000000e+00)  ; FMax(a,b)
  %5913 = fadd fast float %5912, 0x3F10000000000000
  br i1 %5365, label %5914, label %5917, !dx.controlflow.hints !117

; <label>:5914                                    ; preds = %5908
  %5915 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5354, float %5358, float undef, float undef, i32 0, i32 0, i32 undef, float %5913)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5916 = extractvalue %dx.types.ResRet.f32 %5915, 0
  br label %5920

; <label>:5917                                    ; preds = %5908
  %5918 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5354, float %5358, float undef, float undef, i32 0, i32 0, i32 undef, float %5913)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5919 = extractvalue %dx.types.ResRet.f32 %5918, 0
  br label %5920

; <label>:5920                                    ; preds = %5917, %5914, %5905
  %5921 = phi float [ %5916, %5914 ], [ %5919, %5917 ], [ 1.000000e+00, %5905 ]
  %5922 = fsub fast float %5895, %5884
  %5923 = fmul fast float %5922, %5451
  %5924 = fadd fast float %5923, %5884
  %5925 = fsub fast float %5906, %5924
  %5926 = fmul fast float %5925, %5450
  %5927 = fadd fast float %5926, %5924
  %5928 = fsub fast float %5921, %5927
  %5929 = fmul fast float %5928, %5478
  %5930 = fadd fast float %5929, %5927
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 2
  %5933 = fcmp fast ogt float %5932, 0.000000e+00
  br i1 %5933, label %5934, label %5974, !dx.controlflow.hints !118

; <label>:5934                                    ; preds = %5920
  %5935 = fcmp fast ugt float %5932, 0.000000e+00
  br i1 %5935, label %5936, label %5971

; <label>:5936                                    ; preds = %5934
  %5937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5938 = extractvalue %dx.types.CBufRet.f32 %5937, 0
  %5939 = extractvalue %dx.types.CBufRet.f32 %5937, 1
  %5940 = extractvalue %dx.types.CBufRet.f32 %5937, 2
  %5941 = extractvalue %dx.types.CBufRet.f32 %5937, 3
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5945 = extractvalue %dx.types.CBufRet.f32 %5942, 2
  %5946 = extractvalue %dx.types.CBufRet.f32 %5942, 3
  %5947 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5948 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.CBufRet.f32 %5949, 2
  %5953 = fadd fast float %5950, %5331
  %5954 = fadd fast float %5951, %5332
  %5955 = fadd fast float %5952, %5333
  %5956 = fmul fast float %5953, %5938
  %5957 = call float @dx.op.tertiary.f32(i32 46, float %5939, float %5954, float %5956)  ; FMad(a,b,c)
  %5958 = call float @dx.op.tertiary.f32(i32 46, float %5940, float %5955, float %5957)  ; FMad(a,b,c)
  %5959 = fadd fast float %5958, %5941
  %5960 = fmul fast float %5953, %5943
  %5961 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %5954, float %5960)  ; FMad(a,b,c)
  %5962 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %5955, float %5961)  ; FMad(a,b,c)
  %5963 = fadd fast float %5962, %5946
  %5964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %5959, float %5963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5965 = extractvalue %dx.types.ResRet.f32 %5964, 0
  %5966 = fmul fast float %5965, %5948
  %5967 = fadd fast float %5966, %5947
  %5968 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5969 = fmul fast float %5968, %5932
  %5970 = fsub fast float 1.000000e+00, %5969
  br label %5971

; <label>:5971                                    ; preds = %5936, %5934
  %5972 = phi float [ %5970, %5936 ], [ 1.000000e+00, %5934 ]
  %5973 = fmul fast float %5972, %5930
  br label %5974

; <label>:5974                                    ; preds = %5971, %5920, %5311
  %5975 = phi float [ 1.000000e+00, %5311 ], [ %5973, %5971 ], [ %5930, %5920 ]
  %5976 = call float @dx.op.binary.f32(i32 36, float %5975, float %5975)  ; FMin(a,b)
  %5977 = call float @dx.op.binary.f32(i32 36, float %5975, float %5976)  ; FMin(a,b)
  %5978 = fcmp fast ogt float %5977, 0.000000e+00
  br i1 %5978, label %5979, label %6139, !dx.controlflow.hints !119

; <label>:5979                                    ; preds = %5974
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.CBufRet.f32 %5980, 1
  %5983 = extractvalue %dx.types.CBufRet.f32 %5980, 2
  %5984 = extractvalue %dx.types.CBufRet.f32 %5980, 3
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.CBufRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.CBufRet.f32 %5985, 2
  %5989 = extractvalue %dx.types.CBufRet.f32 %5985, 3
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.CBufRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.CBufRet.f32 %5990, 2
  %5994 = extractvalue %dx.types.CBufRet.f32 %5990, 3
  %5995 = fmul fast float %5981, %5331
  %5996 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5982, float %5995)  ; FMad(a,b,c)
  %5997 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5983, float %5996)  ; FMad(a,b,c)
  %5998 = fadd fast float %5997, %5984
  %5999 = fmul fast float %5986, %5331
  %6000 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5987, float %5999)  ; FMad(a,b,c)
  %6001 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5988, float %6000)  ; FMad(a,b,c)
  %6002 = fadd fast float %6001, %5989
  %6003 = fmul fast float %5991, %5331
  %6004 = call float @dx.op.tertiary.f32(i32 46, float %5332, float %5992, float %6003)  ; FMad(a,b,c)
  %6005 = call float @dx.op.tertiary.f32(i32 46, float %5333, float %5993, float %6004)  ; FMad(a,b,c)
  %6006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6007 = extractvalue %dx.types.CBufRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.CBufRet.f32 %6006, 1
  %6009 = extractvalue %dx.types.CBufRet.f32 %6006, 3
  %6010 = fmul fast float %6009, %5998
  %6011 = fmul fast float %6009, %6002
  %6012 = fadd fast float %6010, %6007
  %6013 = fadd fast float %6011, %6008
  %6014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.CBufRet.f32 %6014, 1
  %6017 = fsub fast float %6012, %6015
  %6018 = fsub fast float %6013, %6016
  %6019 = fcmp fast olt float %6017, 0.000000e+00
  %6020 = fcmp fast olt float %6018, 0.000000e+00
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.CBufRet.f32 %6021, 2
  %6025 = extractvalue %dx.types.CBufRet.f32 %6021, 3
  %6026 = select i1 %6019, float %6022, float %6024
  %6027 = select i1 %6020, float %6023, float %6025
  %6028 = fmul fast float %6026, %6017
  %6029 = fmul fast float %6027, %6018
  %6030 = call float @dx.op.unary.f32(i32 6, float %6028)  ; FAbs(value)
  %6031 = call float @dx.op.unary.f32(i32 6, float %6029)  ; FAbs(value)
  %6032 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %6033 = call float @dx.op.binary.f32(i32 35, float %6030, float %6031)  ; FMax(a,b)
  %6034 = fsub fast float %6032, %6033
  %6035 = call float @dx.op.unary.f32(i32 7, float %6034)  ; Saturate(value)
  %6036 = fcmp fast ogt float %6035, 0.000000e+00
  br i1 %6036, label %6037, label %6078, !dx.controlflow.hints !120

; <label>:6037                                    ; preds = %5979
  %6038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6012, float %6013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6039 = extractvalue %dx.types.ResRet.f32 %6038, 1
  %6040 = fcmp fast ogt float %6039, 0.000000e+00
  br i1 %6040, label %6041, label %6073

; <label>:6041                                    ; preds = %6037
  %6042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6012, float %6013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6043 = extractvalue %dx.types.ResRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.ResRet.f32 %6042, 1
  %6045 = extractvalue %dx.types.ResRet.f32 %6042, 2
  %6046 = extractvalue %dx.types.ResRet.f32 %6042, 3
  %6047 = fsub fast float 1.000000e+00, %5994
  %6048 = fsub fast float %6047, %6005
  %6049 = fmul fast float %6048, 0x400921FB60000000
  %6050 = fadd fast float %6049, 0x3FF921FB60000000
  %6051 = call float @dx.op.unary.f32(i32 13, float %6050)  ; Sin(value)
  %6052 = fadd fast float %6051, -1.000000e+00
  %6053 = fmul fast float %6052, 0x3FD45F3060000000
  %6054 = fmul fast float %6048, 0x401921FB60000000
  %6055 = fadd fast float %6054, 0x400921FB60000000
  %6056 = call float @dx.op.unary.f32(i32 13, float %6055)  ; Sin(value)
  %6057 = fadd fast float %6056, 0x3E7777A5C0000000
  %6058 = fmul fast float %6057, 0x3FC45F3060000000
  %6059 = fmul fast float %6048, 0x4022D97C80000000
  %6060 = fadd fast float %6059, 0x4012D97C80000000
  %6061 = call float @dx.op.unary.f32(i32 13, float %6060)  ; Sin(value)
  %6062 = fadd fast float %6061, 1.000000e+00
  %6063 = fmul fast float %6062, 0x3FBB2995E0000000
  %6064 = fmul fast float %6048, 0x402921FB60000000
  %6065 = fadd fast float %6064, 0x401921FB60000000
  %6066 = call float @dx.op.unary.f32(i32 13, float %6065)  ; Sin(value)
  %6067 = fadd fast float %6066, 0xBE8777A5C0000000
  %6068 = fmul fast float %6067, 0x3FB45F3060000000
  %6069 = call float @dx.op.dot4.f32(i32 56, float %6043, float %6044, float %6045, float %6046, float %6053, float %6058, float %6063, float %6068)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6070 = fmul fast float %6069, 0xBFF7154760000000
  %6071 = call float @dx.op.unary.f32(i32 21, float %6070)  ; Exp(value)
  %6072 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  br label %6073

; <label>:6073                                    ; preds = %6041, %6037
  %6074 = phi float [ %6072, %6041 ], [ 1.000000e+00, %6037 ]
  %6075 = fadd fast float %6074, -1.000000e+00
  %6076 = fmul fast float %6075, %6035
  %6077 = fadd fast float %6076, 1.000000e+00
  br label %6078

; <label>:6078                                    ; preds = %6073, %5979
  %6079 = phi float [ %6077, %6073 ], [ 1.000000e+00, %5979 ]
  %6080 = fmul fast float %6079, %5975
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 0
  %6083 = extractvalue %dx.types.CBufRet.f32 %6081, 1
  %6084 = extractvalue %dx.types.CBufRet.f32 %6081, 2
  %6085 = fadd fast float %6082, %193
  %6086 = fadd fast float %6083, %194
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 1
  %6089 = fsub fast float -0.000000e+00, %6085
  %6090 = fsub fast float -0.000000e+00, %6086
  %6091 = fsub fast float %5095, %6084
  %6092 = fadd fast float %6091, %6088
  %6093 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6089, float %6090, float %6092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6094 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5312, float %5313, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %6095 = fdiv fast float 1.000000e+00, %6094
  %6096 = fmul fast float %6095, %6093
  %6097 = fmul fast float %5312, %6096
  %6098 = fmul fast float %5313, %6096
  %6099 = fadd fast float %6097, %6085
  %6100 = fadd fast float %6098, %6086
  %6101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6101, 0
  %6103 = extractvalue %dx.types.CBufRet.f32 %6101, 1
  %6104 = fsub fast float %6099, %6102
  %6105 = fsub fast float %6100, %6103
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 2
  %6108 = extractvalue %dx.types.CBufRet.f32 %6106, 3
  %6109 = fmul fast float %6104, %6107
  %6110 = fmul fast float %6105, %6108
  %6111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.i32 %6111, 3
  %6113 = icmp eq i32 %6112, 0
  br i1 %6113, label %6119, label %6114

; <label>:6114                                    ; preds = %6078
  %6115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6109, float %6110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6116 = extractvalue %dx.types.ResRet.f32 %6115, 0
  %6117 = extractvalue %dx.types.ResRet.f32 %6115, 1
  %6118 = extractvalue %dx.types.ResRet.f32 %6115, 2
  br label %6124

; <label>:6119                                    ; preds = %6078
  %6120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6109, float %6110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6121 = extractvalue %dx.types.ResRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.ResRet.f32 %6120, 1
  %6123 = extractvalue %dx.types.ResRet.f32 %6120, 2
  br label %6124

; <label>:6124                                    ; preds = %6119, %6114
  %6125 = phi float [ %6116, %6114 ], [ %6121, %6119 ]
  %6126 = phi float [ %6117, %6114 ], [ %6122, %6119 ]
  %6127 = phi float [ %6118, %6114 ], [ %6123, %6119 ]
  %6128 = extractvalue %dx.types.CBufRet.f32 %6087, 2
  %6129 = fmul fast float %6128, %6125
  %6130 = extractvalue %dx.types.CBufRet.f32 %6087, 0
  %6131 = fsub fast float %6096, %6130
  %6132 = fsub fast float %6131, %6129
  %6133 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6132)  ; FMax(a,b)
  %6134 = fmul fast float %6133, %6126
  %6135 = call float @dx.op.binary.f32(i32 36, float %6127, float %6134)  ; FMin(a,b)
  %6136 = fmul fast float %6135, 0xBFF7154760000000
  %6137 = call float @dx.op.unary.f32(i32 21, float %6136)  ; Exp(value)
  %6138 = fmul fast float %6080, %6137
  br label %6139

; <label>:6139                                    ; preds = %6124, %5974
  %6140 = phi float [ %6138, %6124 ], [ %5975, %5974 ]
  %6141 = call float @dx.op.binary.f32(i32 36, float %6140, float %6140)  ; FMin(a,b)
  %6142 = call float @dx.op.binary.f32(i32 36, float %6140, float %6141)  ; FMin(a,b)
  %6143 = fcmp fast ogt float %6142, 0.000000e+00
  br i1 %6143, label %6144, label %6395, !dx.controlflow.hints !121

; <label>:6144                                    ; preds = %6139
  %6145 = fmul fast float %6140, %5323
  %6146 = fmul fast float %6140, %5324
  %6147 = fmul fast float %6140, %5325
  %6148 = fsub fast float %195, %4291
  %6149 = fcmp fast ogt float %6148, 0.000000e+00
  %6150 = fmul fast float %5312, 5.120000e+02
  %6151 = fmul fast float %5313, 5.120000e+02
  %6152 = fmul fast float %5314, 5.120000e+02
  %6153 = fadd fast float %6152, %195
  %6154 = fsub fast float %4291, %6153
  %6155 = fmul fast float %6154, 2.000000e+00
  %6156 = fadd fast float %6155, %6153
  %6157 = select i1 %6149, float %6156, float %6153
  %6158 = fsub fast float %6157, %195
  %6159 = call float @dx.op.dot3.f32(i32 55, float %6150, float %6151, float %6158, float %6150, float %6151, float %6158)  ; Dot3(ax,ay,az,bx,by,bz)
  %6160 = call float @dx.op.unary.f32(i32 25, float %6159)  ; Rsqrt(value)
  %6161 = fmul fast float %6160, %6150
  %6162 = fmul fast float %6160, %6151
  %6163 = fmul fast float %6160, %6158
  %6164 = fsub fast float %4291, %195
  %6165 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6164)  ; Dot3(ax,ay,az,bx,by,bz)
  %6166 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6161, float %6162, float %6163)  ; Dot3(ax,ay,az,bx,by,bz)
  %6167 = fdiv fast float 1.000000e+00, %6166
  %6168 = fmul fast float %6167, %6165
  %6169 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6148, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = fcmp fast ogt float %6169, 0.000000e+00
  %6171 = fcmp fast olt float %6169, 0.000000e+00
  %6172 = zext i1 %6170 to i32
  %6173 = zext i1 %6171 to i32
  %6174 = sub nsw i32 %6172, %6173
  %6175 = sitofp i32 %6174 to float
  %6176 = fsub fast float %6157, %4291
  %6177 = call float @dx.op.dot3.f32(i32 55, float %6150, float %6151, float %6176, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6178 = fcmp fast ogt float %6177, 0.000000e+00
  %6179 = fcmp fast olt float %6177, 0.000000e+00
  %6180 = zext i1 %6178 to i32
  %6181 = zext i1 %6179 to i32
  %6182 = sub nsw i32 %6180, %6181
  %6183 = sitofp i32 %6182 to float
  %6184 = fcmp fast une float %6175, %6183
  br i1 %6184, label %6185, label %6195

; <label>:6185                                    ; preds = %6144
  %6186 = fmul fast float %6168, %6163
  %6187 = fmul fast float %6168, %6162
  %6188 = fmul fast float %6168, %6161
  %6189 = fmul fast float %6188, %6188
  %6190 = fmul fast float %6187, %6187
  %6191 = fadd fast float %6189, %6190
  %6192 = fmul fast float %6186, %6186
  %6193 = fadd fast float %6191, %6192
  %6194 = call float @dx.op.unary.f32(i32 24, float %6193)  ; Sqrt(value)
  br label %6205

; <label>:6195                                    ; preds = %6144
  %6196 = icmp slt i32 %6174, 0
  br i1 %6196, label %6197, label %6205

; <label>:6197                                    ; preds = %6195
  %6198 = fsub fast float %195, %6157
  %6199 = fmul fast float %6150, %6150
  %6200 = fmul fast float %6151, %6151
  %6201 = fadd fast float %6199, %6200
  %6202 = fmul fast float %6198, %6198
  %6203 = fadd fast float %6201, %6202
  %6204 = call float @dx.op.unary.f32(i32 24, float %6203)  ; Sqrt(value)
  br label %6205

; <label>:6205                                    ; preds = %6197, %6195, %6185
  %6206 = phi float [ %6194, %6185 ], [ %6204, %6197 ], [ 0.000000e+00, %6195 ]
  %6207 = fsub fast float -0.000000e+00, %6206
  %6208 = select i1 %6149, float -0.000000e+00, float %6207
  %6209 = fmul fast float %4292, 0x3FF7154760000000
  %6210 = fmul fast float %6209, %6208
  %6211 = fmul fast float %4293, 0x3FF7154760000000
  %6212 = fmul fast float %6211, %6208
  %6213 = fmul fast float %4294, 0x3FF7154760000000
  %6214 = fmul fast float %6213, %6208
  %6215 = call float @dx.op.unary.f32(i32 21, float %6210)  ; Exp(value)
  %6216 = call float @dx.op.unary.f32(i32 21, float %6212)  ; Exp(value)
  %6217 = call float @dx.op.unary.f32(i32 21, float %6214)  ; Exp(value)
  %6218 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6219 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  %6220 = call float @dx.op.unary.f32(i32 7, float %6217)  ; Saturate(value)
  %6221 = fmul fast float %6145, %6218
  %6222 = fmul fast float %6146, %6219
  %6223 = fmul fast float %6147, %6220
  %6224 = fsub fast float %5312, %5083
  %6225 = fsub fast float %5313, %5082
  %6226 = fsub fast float %5314, %5081
  %6227 = call float @dx.op.dot3.f32(i32 55, float %6224, float %6225, float %6226, float %6224, float %6225, float %6226)  ; Dot3(ax,ay,az,bx,by,bz)
  %6228 = call float @dx.op.unary.f32(i32 25, float %6227)  ; Rsqrt(value)
  %6229 = fmul fast float %6228, %6224
  %6230 = fmul fast float %6228, %6225
  %6231 = fmul fast float %6228, %6226
  %6232 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5079, float %5078, float %6229, float %6230, float %6231)  ; Dot3(ax,ay,az,bx,by,bz)
  %6234 = call float @dx.op.unary.f32(i32 7, float %6232)  ; Saturate(value)
  %6235 = fmul fast float %6234, %6234
  %6236 = fmul fast float %6235, %5111
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6238 = fmul fast float %6237, %6234
  %6239 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %6229, float %6230, float %6231)  ; Dot3(ax,ay,az,bx,by,bz)
  %6240 = fmul fast float %6239, %6239
  %6241 = call float @dx.op.unary.f32(i32 6, float %6232)  ; FAbs(value)
  %6242 = fsub fast float 1.000000e+00, %5093
  %6243 = call float @dx.op.binary.f32(i32 35, float %6242, float 0x3F847AE140000000)  ; FMax(a,b)
  %6244 = fmul fast float %6243, %6243
  %6245 = fmul fast float %6244, %6244
  %6246 = fsub fast float 1.000000e+00, %6245
  %6247 = fmul fast float %5098, %5098
  %6248 = fmul fast float %6247, %6246
  %6249 = fadd fast float %6248, %6245
  %6250 = bitcast float %6249 to i32
  %6251 = ashr i32 %6250, 1
  %6252 = add nsw i32 %6251, 532487669
  %6253 = bitcast i32 %6252 to float
  %6254 = fadd fast float %6253, %5098
  %6255 = fmul fast float %6245, %6240
  %6256 = fsub fast float 1.000000e+00, %6240
  %6257 = fadd fast float %6256, %6255
  %6258 = fmul fast float %6241, %6241
  %6259 = fmul fast float %6258, %6246
  %6260 = fadd fast float %6259, %6245
  %6261 = bitcast float %6260 to i32
  %6262 = ashr i32 %6261, 1
  %6263 = add nsw i32 %6262, 532487669
  %6264 = bitcast i32 %6263 to float
  %6265 = fadd fast float %6264, %6241
  %6266 = fmul fast float %6257, %6257
  %6267 = fmul fast float %6266, %6254
  %6268 = fmul fast float %6267, %6265
  %6269 = fdiv fast float 0x3FF0A00000000000, %6268
  %6270 = fmul fast float %6269, %6245
  %6271 = call float @dx.op.unary.f32(i32 6, float %6233)  ; FAbs(value)
  %6272 = fsub fast float 1.000000e+00, %6271
  %6273 = bitcast float %6272 to i32
  %6274 = sitofp i32 %6273 to float
  %6275 = fmul fast float %6274, 5.000000e+00
  %6276 = fadd fast float %6275, 0xC1EFBF8940000000
  %6277 = fptosi float %6276 to i32
  %6278 = bitcast i32 %6277 to float
  %6279 = fsub fast float 1.000000e+00, %5087
  %6280 = fsub fast float 1.000000e+00, %5088
  %6281 = fsub fast float 1.000000e+00, %5096
  %6282 = fmul fast float %6278, %6279
  %6283 = fmul fast float %6278, %6280
  %6284 = fmul fast float %6278, %6281
  %6285 = fadd fast float %6282, %5087
  %6286 = fadd fast float %6283, %5088
  %6287 = fadd fast float %6284, %5096
  br i1 %5223, label %6288, label %6311

; <label>:6288                                    ; preds = %6205
  %6289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3889, float %6271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6290 = extractvalue %dx.types.ResRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.ResRet.f32 %6289, 1
  %6292 = extractvalue %dx.types.ResRet.f32 %6289, 2
  %6293 = fadd fast float %6290, -5.000000e-01
  %6294 = fadd fast float %6291, -5.000000e-01
  %6295 = fadd fast float %6292, -5.000000e-01
  %6296 = fmul fast float %5087, 4.000000e+00
  %6297 = fmul fast float %6296, %6279
  %6298 = fmul fast float %6297, %6293
  %6299 = fmul fast float %5088, 4.000000e+00
  %6300 = fmul fast float %6299, %6280
  %6301 = fmul fast float %6300, %6294
  %6302 = fmul fast float %5096, 4.000000e+00
  %6303 = fmul fast float %6302, %6281
  %6304 = fmul fast float %6303, %6295
  %6305 = fadd fast float %6298, %6285
  %6306 = fadd fast float %6301, %6286
  %6307 = fadd fast float %6304, %6287
  %6308 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  %6309 = call float @dx.op.unary.f32(i32 7, float %6306)  ; Saturate(value)
  %6310 = call float @dx.op.unary.f32(i32 7, float %6307)  ; Saturate(value)
  br label %6311

; <label>:6311                                    ; preds = %6288, %6205
  %6312 = phi float [ %6308, %6288 ], [ %6285, %6205 ]
  %6313 = phi float [ %6309, %6288 ], [ %6286, %6205 ]
  %6314 = phi float [ %6310, %6288 ], [ %6287, %6205 ]
  %6315 = fmul fast float %6232, 9.843750e-01
  %6316 = fadd fast float %6315, 7.812500e-03
  %6317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6316, float %5213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6318 = extractvalue %dx.types.ResRet.f32 %6317, 2
  %6319 = extractvalue %dx.types.ResRet.f32 %6317, 3
  %6320 = fmul fast float %6318, %5087
  %6321 = fmul fast float %6318, %5088
  %6322 = fmul fast float %6318, %5096
  %6323 = fadd fast float %6320, %6319
  %6324 = fadd fast float %6321, %6319
  %6325 = fadd fast float %6322, %6319
  br i1 %5223, label %6326, label %6349

; <label>:6326                                    ; preds = %6311
  %6327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3889, float %6232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6328 = extractvalue %dx.types.ResRet.f32 %6327, 0
  %6329 = extractvalue %dx.types.ResRet.f32 %6327, 1
  %6330 = extractvalue %dx.types.ResRet.f32 %6327, 2
  %6331 = fadd fast float %6328, -5.000000e-01
  %6332 = fadd fast float %6329, -5.000000e-01
  %6333 = fadd fast float %6330, -5.000000e-01
  %6334 = fmul fast float %5087, 4.000000e+00
  %6335 = fmul fast float %6334, %6279
  %6336 = fmul fast float %6335, %6331
  %6337 = fmul fast float %5088, 4.000000e+00
  %6338 = fmul fast float %6337, %6280
  %6339 = fmul fast float %6338, %6332
  %6340 = fmul fast float %5096, 4.000000e+00
  %6341 = fmul fast float %6340, %6281
  %6342 = fmul fast float %6341, %6333
  %6343 = fadd fast float %6336, %6323
  %6344 = fadd fast float %6339, %6324
  %6345 = fadd fast float %6342, %6325
  %6346 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  %6347 = call float @dx.op.unary.f32(i32 7, float %6344)  ; Saturate(value)
  %6348 = call float @dx.op.unary.f32(i32 7, float %6345)  ; Saturate(value)
  br label %6349

; <label>:6349                                    ; preds = %6326, %6311
  %6350 = phi float [ %6346, %6326 ], [ %6323, %6311 ]
  %6351 = phi float [ %6347, %6326 ], [ %6324, %6311 ]
  %6352 = phi float [ %6348, %6326 ], [ %6325, %6311 ]
  %6353 = call float @dx.op.binary.f32(i32 35, float %6351, float %6352)  ; FMax(a,b)
  %6354 = call float @dx.op.binary.f32(i32 35, float %6350, float %6353)  ; FMax(a,b)
  %6355 = fsub fast float 1.000000e+00, %6354
  %6356 = fmul fast float %6312, %6270
  %6357 = fmul fast float %6313, %6270
  %6358 = fmul fast float %6314, %6270
  %6359 = fsub fast float 1.000000e+00, %6233
  %6360 = bitcast float %6359 to i32
  %6361 = sitofp i32 %6360 to float
  %6362 = fmul fast float %6361, 5.000000e+00
  %6363 = fadd fast float %6362, 0xC1EFBF8940000000
  %6364 = fptosi float %6363 to i32
  %6365 = bitcast i32 %6364 to float
  %6366 = fmul fast float %6365, %3890
  %6367 = fmul fast float %6355, %6366
  %6368 = fmul fast float %6367, %5273
  %6369 = fmul fast float %6367, %5274
  %6370 = fmul fast float %6367, %5275
  %6371 = fadd fast float %6368, %6356
  %6372 = fadd fast float %6369, %6357
  %6373 = fadd fast float %6370, %6358
  %6374 = fmul fast float %6238, %6221
  %6375 = fmul fast float %6374, %6355
  %6376 = fmul fast float %6238, %6222
  %6377 = fmul fast float %6376, %6355
  %6378 = fmul fast float %6238, %6223
  %6379 = fmul fast float %6378, %6355
  %6380 = fmul fast float %6374, %6371
  %6381 = fmul fast float %6376, %6372
  %6382 = fmul fast float %6378, %6373
  %6383 = fadd fast float %6375, %5257
  %6384 = fmul fast float %6383, %3886
  %6385 = fadd fast float %6377, %5258
  %6386 = fmul fast float %6385, %3886
  %6387 = fadd fast float %6379, %5259
  %6388 = fmul fast float %6387, %3886
  %6389 = fadd fast float %6380, %5300
  %6390 = fmul fast float %6389, %3886
  %6391 = fadd fast float %6381, %5303
  %6392 = fmul fast float %6391, %3886
  %6393 = fadd fast float %6382, %5306
  %6394 = fmul fast float %6393, %3886
  br label %6395

; <label>:6395                                    ; preds = %6349, %6139, %5250
  %6396 = phi float [ %5301, %5250 ], [ %5301, %6139 ], [ %6390, %6349 ]
  %6397 = phi float [ %5304, %5250 ], [ %5304, %6139 ], [ %6392, %6349 ]
  %6398 = phi float [ %5307, %5250 ], [ %5307, %6139 ], [ %6394, %6349 ]
  %6399 = phi float [ %5296, %5250 ], [ %5296, %6139 ], [ %6384, %6349 ]
  %6400 = phi float [ %5297, %5250 ], [ %5297, %6139 ], [ %6386, %6349 ]
  %6401 = phi float [ %5298, %5250 ], [ %5298, %6139 ], [ %6388, %6349 ]
  %6402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.i32 %6402, 0
  %6404 = icmp eq i32 %6403, 0
  br i1 %6404, label %7025, label %6405

; <label>:6405                                    ; preds = %6395
  %6406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.f32 %6406, 2
  %6408 = extractvalue %dx.types.CBufRet.f32 %6406, 3
  %6409 = fmul fast float %6407, %106
  %6410 = fmul fast float %6408, %107
  %6411 = fptoui float %6409 to i32
  %6412 = fptoui float %6410 to i32
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.CBufRet.f32 %6413, 2
  %6416 = extractvalue %dx.types.CBufRet.f32 %6413, 3
  %6417 = fadd fast float %97, -4.000000e+00
  %6418 = call float @dx.op.binary.f32(i32 35, float %6417, float 0.000000e+00)  ; FMax(a,b)
  %6419 = fadd fast float %6418, %6414
  %6420 = fmul fast float %6419, %6415
  %6421 = call float @dx.op.unary.f32(i32 23, float %6420)  ; Log(value)
  %6422 = fmul fast float %6421, %6416
  %6423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6424 = extractvalue %dx.types.CBufRet.f32 %6423, 2
  %6425 = fmul fast float %6422, %6424
  %6426 = call float @dx.op.unary.f32(i32 7, float %6425)  ; Saturate(value)
  %6427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.i32 %6427, 1
  %6429 = add i32 %6428, -1
  %6430 = uitofp i32 %6428 to float
  %6431 = fmul fast float %6430, %6426
  %6432 = fptoui float %6431 to i32
  %6433 = call i32 @dx.op.binary.i32(i32 40, i32 %6432, i32 %6429)  ; UMin(a,b)
  %6434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.i32 %6434, 2
  %6436 = extractvalue %dx.types.CBufRet.i32 %6434, 3
  %6437 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6412, i32 %6435, i32 %6411)  ; UMad(a,b,c)
  %6438 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6433, i32 %6436, i32 %6437)  ; UMad(a,b,c)
  %6439 = add nsw i32 %6403, -1
  %6440 = call i32 @dx.op.binary.i32(i32 37, i32 %6439, i32 0)  ; IMax(a,b)
  %6441 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6442 = fptoui float %6441 to i32
  %6443 = lshr i32 %6442, 5
  %6444 = call i32 @dx.op.binary.i32(i32 40, i32 %6443, i32 8191)  ; UMin(a,b)
  %6445 = shl i32 %6444, 2
  %6446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6445, i32 undef)  ; BufferLoad(srv,index,wot)
  %6447 = extractvalue %dx.types.ResRet.i32 %6446, 0
  %6448 = lshr i32 %6447, 16
  %6449 = and i32 %6447, 65535
  %6450 = lshr i32 %6447, 21
  %6451 = lshr i32 %6449, 5
  %6452 = call i32 @dx.op.binary.i32(i32 40, i32 %6451, i32 %6440)  ; UMin(a,b)
  %6453 = icmp ugt i32 %6450, %6452
  br i1 %6453, label %7025, label %6454

; <label>:6454                                    ; preds = %6405
  br label %6455

; <label>:6455                                    ; preds = %7015, %6454
  %6456 = phi i32 [ %7022, %7015 ], [ %6450, %6454 ]
  %6457 = phi float [ %7016, %7015 ], [ %6396, %6454 ]
  %6458 = phi float [ %7017, %7015 ], [ %6397, %6454 ]
  %6459 = phi float [ %7018, %7015 ], [ %6398, %6454 ]
  %6460 = phi float [ %7019, %7015 ], [ %6399, %6454 ]
  %6461 = phi float [ %7020, %7015 ], [ %6400, %6454 ]
  %6462 = phi float [ %7021, %7015 ], [ %6401, %6454 ]
  %6463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.i32 %6463, 0
  %6465 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6438, i32 %6464, i32 %6456)  ; UMad(a,b,c)
  %6466 = shl i32 %6465, 2
  %6467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6466, i32 undef)  ; BufferLoad(srv,index,wot)
  %6468 = extractvalue %dx.types.ResRet.i32 %6467, 0
  %6469 = shl i32 %6456, 5
  %6470 = sub nsw i32 %6448, %6469
  %6471 = call i32 @dx.op.binary.i32(i32 37, i32 %6470, i32 0)  ; IMax(a,b)
  %6472 = call i32 @dx.op.binary.i32(i32 38, i32 %6471, i32 31)  ; IMin(a,b)
  %6473 = sub nsw i32 1, %6448
  %6474 = add nsw i32 %6473, %6449
  %6475 = call i32 @dx.op.binary.i32(i32 37, i32 %6474, i32 0)  ; IMax(a,b)
  %6476 = call i32 @dx.op.binary.i32(i32 38, i32 %6475, i32 32)  ; IMin(a,b)
  %6477 = and i32 %6476, 31
  %6478 = shl i32 -1, %6477
  %6479 = xor i32 %6478, -1
  %6480 = and i32 %6472, 31
  %6481 = shl i32 %6479, %6480
  %6482 = icmp eq i32 %6476, 32
  %6483 = select i1 %6482, i32 -1, i32 %6481
  %6484 = and i32 %6483, %6468
  %6485 = icmp eq i32 %6484, 0
  br i1 %6485, label %7015, label %6486

; <label>:6486                                    ; preds = %6455
  br label %6487

; <label>:6487                                    ; preds = %6621, %6486
  %6488 = phi i32 [ %6499, %6621 ], [ %6484, %6486 ]
  %6489 = phi float [ %6622, %6621 ], [ %6457, %6486 ]
  %6490 = phi float [ %6623, %6621 ], [ %6458, %6486 ]
  %6491 = phi float [ %6624, %6621 ], [ %6459, %6486 ]
  %6492 = phi float [ %6625, %6621 ], [ %6460, %6486 ]
  %6493 = phi float [ %6626, %6621 ], [ %6461, %6486 ]
  %6494 = phi float [ %6627, %6621 ], [ %6462, %6486 ]
  %6495 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6488)  ; FirstbitLo(value)
  %6496 = add i32 %6495, %6469
  %6497 = and i32 %6495, 31
  %6498 = shl i32 1, %6497
  %6499 = xor i32 %6498, %6488
  %6500 = mul i32 %6496, 112
  %6501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6500, i32 undef)  ; BufferLoad(srv,index,wot)
  %6502 = extractvalue %dx.types.ResRet.f32 %6501, 0
  %6503 = extractvalue %dx.types.ResRet.f32 %6501, 1
  %6504 = extractvalue %dx.types.ResRet.f32 %6501, 2
  %6505 = or i32 %6500, 12
  %6506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6505, i32 undef)  ; BufferLoad(srv,index,wot)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  %6508 = add i32 %6500, 16
  %6509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6508, i32 undef)  ; BufferLoad(srv,index,wot)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.ResRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.ResRet.f32 %6509, 2
  %6513 = add i32 %6500, 28
  %6514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6513, i32 undef)  ; BufferLoad(srv,index,wot)
  %6515 = extractvalue %dx.types.ResRet.i32 %6514, 0
  %6516 = add i32 %6500, 44
  %6517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6516, i32 undef)  ; BufferLoad(srv,index,wot)
  %6518 = extractvalue %dx.types.ResRet.f32 %6517, 0
  %6519 = add i32 %6500, 48
  %6520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6519, i32 undef)  ; BufferLoad(srv,index,wot)
  %6521 = extractvalue %dx.types.ResRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.ResRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.ResRet.f32 %6520, 2
  %6524 = extractvalue %dx.types.ResRet.f32 %6520, 3
  %6525 = add i32 %6500, 64
  %6526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6525, i32 undef)  ; BufferLoad(srv,index,wot)
  %6527 = extractvalue %dx.types.ResRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.ResRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.ResRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.ResRet.f32 %6526, 3
  %6531 = add i32 %6500, 80
  %6532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %6531, i32 undef)  ; BufferLoad(srv,index,wot)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 1
  %6534 = extractvalue %dx.types.ResRet.f32 %6532, 2
  %6535 = add i32 %6500, 92
  %6536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %6535, i32 undef)  ; BufferLoad(srv,index,wot)
  %6537 = extractvalue %dx.types.ResRet.i32 %6536, 0
  %6538 = call float @dx.op.dot3.f32(i32 55, float %6502, float %6503, float %6504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6539 = select i1 %265, float %6533, float %6502
  %6540 = select i1 %265, float %6538, float %6503
  %6541 = select i1 %265, float %6534, float %6504
  %6542 = and i32 %6537, 65535
  %6543 = uitofp i32 %6542 to float
  %6544 = lshr i32 %6537, 16
  %6545 = uitofp i32 %6544 to float
  %6546 = and i32 %6515, 65535
  %6547 = and i32 %6515, 50331648
  %6548 = icmp eq i32 %6547, 33554432
  %6549 = fsub fast float %6521, %193
  %6550 = fsub fast float %6522, %194
  %6551 = fsub fast float %6523, %195
  %6552 = call float @dx.op.dot3.f32(i32 55, float %6549, float %6550, float %6551, float %6549, float %6550, float %6551)  ; Dot3(ax,ay,az,bx,by,bz)
  %6553 = call float @dx.op.unary.f32(i32 24, float %6552)  ; Sqrt(value)
  %6554 = fdiv fast float 1.000000e+00, %6553
  %6555 = fmul fast float %6554, %6549
  %6556 = fmul fast float %6554, %6550
  %6557 = fmul fast float %6554, %6551
  %6558 = fadd fast float %6553, %6507
  %6559 = fdiv fast float 1.000000e+00, %6558
  %6560 = fmul float %6518, %6559
  %6561 = fmul float %6560, %6560
  %6562 = call float @dx.op.unary.f32(i32 7, float %6561)  ; Saturate(value)
  br i1 %6548, label %6563, label %6584

; <label>:6563                                    ; preds = %6487
  %6564 = fmul fast float %6529, %6510
  %6565 = fmul fast float %6529, %6511
  %6566 = fmul fast float %6529, %6512
  %6567 = fadd fast float %6549, %6564
  %6568 = fadd fast float %6550, %6565
  %6569 = fadd fast float %6551, %6566
  %6570 = call float @dx.op.dot3.f32(i32 55, float %6567, float %6568, float %6569, float %6567, float %6568, float %6569)  ; Dot3(ax,ay,az,bx,by,bz)
  %6571 = call float @dx.op.unary.f32(i32 25, float %6570)  ; Rsqrt(value)
  %6572 = fmul fast float %6571, %6567
  %6573 = fmul fast float %6571, %6568
  %6574 = fmul fast float %6571, %6569
  %6575 = fsub fast float %193, %6521
  %6576 = fsub fast float %194, %6522
  %6577 = fsub fast float %195, %6523
  %6578 = fsub fast float -0.000000e+00, %6575
  %6579 = fsub fast float -0.000000e+00, %6576
  %6580 = fsub fast float -0.000000e+00, %6577
  %6581 = call float @dx.op.dot3.f32(i32 55, float %6578, float %6579, float %6580, float %6510, float %6511, float %6512)  ; Dot3(ax,ay,az,bx,by,bz)
  %6582 = fcmp fast ogt float %6581, 0.000000e+00
  %6583 = uitofp i1 %6582 to float
  br label %6584

; <label>:6584                                    ; preds = %6563, %6487
  %6585 = phi float [ %6583, %6563 ], [ 1.000000e+00, %6487 ]
  %6586 = phi float [ %6572, %6563 ], [ %6555, %6487 ]
  %6587 = phi float [ %6573, %6563 ], [ %6556, %6487 ]
  %6588 = phi float [ %6574, %6563 ], [ %6557, %6487 ]
  %6589 = call float @dx.op.dot3.f32(i32 55, float %6510, float %6511, float %6512, float %6586, float %6587, float %6588)  ; Dot3(ax,ay,az,bx,by,bz)
  %6590 = fmul fast float %6589, %6589
  %6591 = call float @dx.op.unary.f32(i32 7, float %6590)  ; Saturate(value)
  %6592 = fsub fast float 1.000000e+00, %6591
  %6593 = fmul fast float %6592, 5.000000e-01
  %6594 = fcmp fast ogt float %6589, 0.000000e+00
  %6595 = fsub fast float 1.000000e+00, %6593
  %6596 = select i1 %6594, float %6593, float %6595
  %6597 = fmul fast float %6596, %6545
  %6598 = fadd fast float %6597, %6543
  %6599 = fmul fast float %6598, 0x3EF0001000000000
  %6600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %6599, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6601 = extractvalue %dx.types.ResRet.f32 %6600, 0
  %6602 = fmul fast float %6589, %6527
  %6603 = fadd fast float %6602, %6528
  %6604 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  %6605 = select i1 %6548, float 1.000000e+00, float %6604
  %6606 = select i1 %6548, float %6604, float 1.000000e+00
  %6607 = fmul fast float %6553, %6524
  %6608 = fsub fast float 1.000000e+00, %6607
  %6609 = fmul fast float %6608, %6530
  %6610 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  %6611 = fmul fast float %6610, %6606
  %6612 = fmul fast float %6611, 2.000000e+00
  %6613 = fsub fast float 3.000000e+00, %6612
  %6614 = fmul fast float %6601, %6585
  %6615 = fmul fast float %6611, %6611
  %6616 = fmul fast float %6615, %6614
  %6617 = fmul fast float %6616, %6613
  %6618 = call float @dx.op.binary.f32(i32 36, float %6617, float %6617)  ; FMin(a,b)
  %6619 = call float @dx.op.binary.f32(i32 36, float %6617, float %6618)  ; FMin(a,b)
  %6620 = fcmp fast ogt float %6619, 0.000000e+00
  br i1 %6620, label %6629, label %6621, !dx.controlflow.hints !122

; <label>:6621                                    ; preds = %6971, %6729, %6584
  %6622 = phi float [ %6489, %6729 ], [ %6489, %6584 ], [ %7011, %6971 ]
  %6623 = phi float [ %6490, %6729 ], [ %6490, %6584 ], [ %7012, %6971 ]
  %6624 = phi float [ %6491, %6729 ], [ %6491, %6584 ], [ %7013, %6971 ]
  %6625 = phi float [ %6492, %6729 ], [ %6492, %6584 ], [ %7005, %6971 ]
  %6626 = phi float [ %6493, %6729 ], [ %6493, %6584 ], [ %7006, %6971 ]
  %6627 = phi float [ %6494, %6729 ], [ %6494, %6584 ], [ %7007, %6971 ]
  %6628 = icmp eq i32 %6488, %6498
  br i1 %6628, label %7014, label %6487

; <label>:6629                                    ; preds = %6584
  %6630 = icmp eq i32 %6546, 255
  br i1 %6630, label %6729, label %6631, !dx.controlflow.hints !123

; <label>:6631                                    ; preds = %6629
  %6632 = mul nuw nsw i32 %6546, 176
  %6633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6632, i32 undef)  ; BufferLoad(srv,index,wot)
  %6634 = extractvalue %dx.types.ResRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.ResRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.ResRet.f32 %6633, 2
  %6637 = extractvalue %dx.types.ResRet.f32 %6633, 3
  %6638 = add nuw nsw i32 %6632, 16
  %6639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6638, i32 undef)  ; BufferLoad(srv,index,wot)
  %6640 = extractvalue %dx.types.ResRet.f32 %6639, 0
  %6641 = extractvalue %dx.types.ResRet.f32 %6639, 1
  %6642 = add nuw nsw i32 %6632, 32
  %6643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6642, i32 undef)  ; BufferLoad(srv,index,wot)
  %6644 = extractvalue %dx.types.ResRet.f32 %6643, 0
  %6645 = extractvalue %dx.types.ResRet.f32 %6643, 1
  %6646 = extractvalue %dx.types.ResRet.f32 %6643, 2
  %6647 = add nuw nsw i32 %6632, 48
  %6648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6647, i32 undef)  ; BufferLoad(srv,index,wot)
  %6649 = extractvalue %dx.types.ResRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.ResRet.f32 %6648, 1
  %6651 = extractvalue %dx.types.ResRet.f32 %6648, 2
  %6652 = extractvalue %dx.types.ResRet.f32 %6648, 3
  %6653 = add nuw nsw i32 %6632, 64
  %6654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6653, i32 undef)  ; BufferLoad(srv,index,wot)
  %6655 = extractvalue %dx.types.ResRet.f32 %6654, 0
  %6656 = extractvalue %dx.types.ResRet.f32 %6654, 1
  %6657 = extractvalue %dx.types.ResRet.f32 %6654, 2
  %6658 = extractvalue %dx.types.ResRet.f32 %6654, 3
  %6659 = add nuw nsw i32 %6632, 80
  %6660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6659, i32 undef)  ; BufferLoad(srv,index,wot)
  %6661 = extractvalue %dx.types.ResRet.f32 %6660, 0
  %6662 = extractvalue %dx.types.ResRet.f32 %6660, 1
  %6663 = extractvalue %dx.types.ResRet.f32 %6660, 2
  %6664 = extractvalue %dx.types.ResRet.f32 %6660, 3
  %6665 = add nuw nsw i32 %6632, 96
  %6666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %6665, i32 undef)  ; BufferLoad(srv,index,wot)
  %6667 = extractvalue %dx.types.ResRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.ResRet.f32 %6666, 1
  %6669 = extractvalue %dx.types.ResRet.f32 %6666, 2
  %6670 = extractvalue %dx.types.ResRet.f32 %6666, 3
  %6671 = bitcast float %6641 to i32
  %6672 = fmul fast float %6646, %113
  %6673 = fmul fast float %6646, %114
  %6674 = fmul fast float %6646, %115
  %6675 = fadd fast float %6672, %193
  %6676 = fadd fast float %6673, %194
  %6677 = fadd fast float %6674, %195
  %6678 = fmul fast float %6675, %6649
  %6679 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6655, float %6678)  ; FMad(a,b,c)
  %6680 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6661, float %6679)  ; FMad(a,b,c)
  %6681 = fadd fast float %6680, %6667
  %6682 = fmul fast float %6675, %6650
  %6683 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6656, float %6682)  ; FMad(a,b,c)
  %6684 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6662, float %6683)  ; FMad(a,b,c)
  %6685 = fadd fast float %6684, %6668
  %6686 = fmul fast float %6675, %6651
  %6687 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6657, float %6686)  ; FMad(a,b,c)
  %6688 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6663, float %6687)  ; FMad(a,b,c)
  %6689 = fadd fast float %6688, %6669
  %6690 = fmul fast float %6675, %6652
  %6691 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6658, float %6690)  ; FMad(a,b,c)
  %6692 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6664, float %6691)  ; FMad(a,b,c)
  %6693 = fadd fast float %6692, %6670
  %6694 = fdiv fast float %6681, %6693
  %6695 = fdiv fast float %6685, %6693
  %6696 = fdiv fast float %6689, %6693
  %6697 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6696)  ; FMax(a,b)
  %6698 = fmul fast float %276, 0x401921FB60000000
  %6699 = call float @dx.op.unary.f32(i32 13, float %6698)  ; Sin(value)
  %6700 = call float @dx.op.unary.f32(i32 12, float %6698)  ; Cos(value)
  %6701 = fsub fast float -0.000000e+00, %6699
  %6702 = fmul fast float %6636, 5.000000e-01
  %6703 = call float @dx.op.dot2.f32(i32 54, float %276, float %276, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %6704 = call float @dx.op.unary.f32(i32 22, float %6703)  ; Frc(value)
  %6705 = fmul fast float %6704, 0x404A7DD040000000
  %6706 = call float @dx.op.unary.f32(i32 22, float %6705)  ; Frc(value)
  %6707 = fmul fast float %6706, %6645
  %6708 = fadd fast float %6707, %6702
  %6709 = call float @dx.op.tertiary.f32(i32 46, float %6708, float %6701, float 0.000000e+00)  ; FMad(a,b,c)
  %6710 = call float @dx.op.tertiary.f32(i32 46, float %6708, float %6700, float 0.000000e+00)  ; FMad(a,b,c)
  %6711 = fadd fast float %6709, %6694
  %6712 = fadd fast float %6710, %6695
  %6713 = fmul fast float %6711, %6640
  %6714 = fmul fast float %6712, %6640
  %6715 = call float @dx.op.binary.f32(i32 35, float %6713, float %6636)  ; FMax(a,b)
  %6716 = call float @dx.op.binary.f32(i32 35, float %6714, float %6636)  ; FMax(a,b)
  %6717 = call float @dx.op.binary.f32(i32 36, float %6715, float %6637)  ; FMin(a,b)
  %6718 = call float @dx.op.binary.f32(i32 36, float %6716, float %6637)  ; FMin(a,b)
  %6719 = fadd fast float %6717, %6634
  %6720 = fadd fast float %6718, %6635
  %6721 = uitofp i32 %6671 to float
  %6722 = fadd fast float %6697, %6644
  %6723 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %6719, float %6720, float %6721, float undef, i32 0, i32 0, i32 undef, float %6722)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6724 = extractvalue %dx.types.ResRet.f32 %6723, 0
  %6725 = fadd fast float %6724, -1.000000e+00
  %6726 = fmul fast float %6725, %6605
  %6727 = fadd fast float %6726, 1.000000e+00
  %6728 = fmul fast float %6727, %6617
  br label %6729

; <label>:6729                                    ; preds = %6631, %6629
  %6730 = phi float [ %6728, %6631 ], [ %6617, %6629 ]
  %6731 = call float @dx.op.binary.f32(i32 36, float %6730, float %6730)  ; FMin(a,b)
  %6732 = call float @dx.op.binary.f32(i32 36, float %6730, float %6731)  ; FMin(a,b)
  %6733 = fcmp fast ogt float %6732, 0.000000e+00
  br i1 %6733, label %6734, label %6621, !dx.controlflow.hints !124

; <label>:6734                                    ; preds = %6729
  %6735 = fmul fast float %6730, %6539
  %6736 = fmul fast float %6730, %6540
  %6737 = fmul fast float %6730, %6541
  %6738 = fsub fast float %6523, %4291
  %6739 = fcmp fast ogt float %6738, 0.000000e+00
  %6740 = fsub fast float %195, %4291
  %6741 = fcmp fast ogt float %6740, 0.000000e+00
  %6742 = xor i1 %6741, %6739
  %6743 = fsub fast float %4291, %6523
  %6744 = fmul fast float %6743, 2.000000e+00
  %6745 = fadd fast float %6744, %6523
  %6746 = select i1 %6742, float %6523, float %6745
  %6747 = fsub fast float %6746, %195
  %6748 = call float @dx.op.dot3.f32(i32 55, float %6549, float %6550, float %6747, float %6549, float %6550, float %6747)  ; Dot3(ax,ay,az,bx,by,bz)
  %6749 = call float @dx.op.unary.f32(i32 25, float %6748)  ; Rsqrt(value)
  %6750 = fmul fast float %6749, %6549
  %6751 = fmul fast float %6749, %6550
  %6752 = fmul fast float %6749, %6747
  %6753 = fsub fast float %4291, %195
  %6754 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6753)  ; Dot3(ax,ay,az,bx,by,bz)
  %6755 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6750, float %6751, float %6752)  ; Dot3(ax,ay,az,bx,by,bz)
  %6756 = fdiv fast float 1.000000e+00, %6755
  %6757 = fmul fast float %6756, %6754
  %6758 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6740, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6759 = fcmp fast ogt float %6758, 0.000000e+00
  %6760 = fcmp fast olt float %6758, 0.000000e+00
  %6761 = zext i1 %6759 to i32
  %6762 = zext i1 %6760 to i32
  %6763 = sub nsw i32 %6761, %6762
  %6764 = sitofp i32 %6763 to float
  %6765 = fsub fast float %6746, %4291
  %6766 = call float @dx.op.dot3.f32(i32 55, float %6549, float %6550, float %6765, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6767 = fcmp fast ogt float %6766, 0.000000e+00
  %6768 = fcmp fast olt float %6766, 0.000000e+00
  %6769 = zext i1 %6767 to i32
  %6770 = zext i1 %6768 to i32
  %6771 = sub nsw i32 %6769, %6770
  %6772 = sitofp i32 %6771 to float
  %6773 = fcmp fast une float %6764, %6772
  br i1 %6773, label %6774, label %6784

; <label>:6774                                    ; preds = %6734
  %6775 = fmul fast float %6757, %6752
  %6776 = fmul fast float %6757, %6751
  %6777 = fmul fast float %6757, %6750
  %6778 = fmul fast float %6777, %6777
  %6779 = fmul fast float %6776, %6776
  %6780 = fadd fast float %6778, %6779
  %6781 = fmul fast float %6775, %6775
  %6782 = fadd fast float %6780, %6781
  %6783 = call float @dx.op.unary.f32(i32 24, float %6782)  ; Sqrt(value)
  br label %6796

; <label>:6784                                    ; preds = %6734
  %6785 = icmp slt i32 %6763, 0
  br i1 %6785, label %6786, label %6796

; <label>:6786                                    ; preds = %6784
  %6787 = fsub fast float %193, %6521
  %6788 = fsub fast float %194, %6522
  %6789 = fsub fast float %195, %6746
  %6790 = fmul fast float %6787, %6787
  %6791 = fmul fast float %6788, %6788
  %6792 = fadd fast float %6790, %6791
  %6793 = fmul fast float %6789, %6789
  %6794 = fadd fast float %6792, %6793
  %6795 = call float @dx.op.unary.f32(i32 24, float %6794)  ; Sqrt(value)
  br label %6796

; <label>:6796                                    ; preds = %6786, %6784, %6774
  %6797 = phi float [ %6783, %6774 ], [ %6795, %6786 ], [ 0.000000e+00, %6784 ]
  %6798 = and i1 %6741, %6739
  %6799 = fsub fast float -0.000000e+00, %6797
  %6800 = select i1 %6798, float -0.000000e+00, float %6799
  %6801 = fmul fast float %4292, 0x3FF7154760000000
  %6802 = fmul fast float %6801, %6800
  %6803 = fmul fast float %4293, 0x3FF7154760000000
  %6804 = fmul fast float %6803, %6800
  %6805 = fmul fast float %4294, 0x3FF7154760000000
  %6806 = fmul fast float %6805, %6800
  %6807 = call float @dx.op.unary.f32(i32 21, float %6802)  ; Exp(value)
  %6808 = call float @dx.op.unary.f32(i32 21, float %6804)  ; Exp(value)
  %6809 = call float @dx.op.unary.f32(i32 21, float %6806)  ; Exp(value)
  %6810 = call float @dx.op.unary.f32(i32 7, float %6807)  ; Saturate(value)
  %6811 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6812 = call float @dx.op.unary.f32(i32 7, float %6809)  ; Saturate(value)
  %6813 = fmul fast float %6735, %6810
  %6814 = fmul fast float %6736, %6811
  %6815 = fmul fast float %6737, %6812
  %6816 = fsub fast float %6555, %5083
  %6817 = fsub fast float %6556, %5082
  %6818 = fsub fast float %6557, %5081
  %6819 = call float @dx.op.dot3.f32(i32 55, float %6816, float %6817, float %6818, float %6816, float %6817, float %6818)  ; Dot3(ax,ay,az,bx,by,bz)
  %6820 = call float @dx.op.unary.f32(i32 25, float %6819)  ; Rsqrt(value)
  %6821 = fmul fast float %6820, %6816
  %6822 = fmul fast float %6820, %6817
  %6823 = fmul fast float %6820, %6818
  %6824 = call float @dx.op.dot3.f32(i32 55, float %6555, float %6556, float %6557, float %5090, float %5091, float %5092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6825 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5079, float %5078, float %6821, float %6822, float %6823)  ; Dot3(ax,ay,az,bx,by,bz)
  %6826 = call float @dx.op.unary.f32(i32 7, float %6824)  ; Saturate(value)
  %6827 = fmul fast float %6826, %6562
  %6828 = fmul fast float %6826, %6826
  %6829 = fmul fast float %6828, %5111
  %6830 = call float @dx.op.unary.f32(i32 7, float %6829)  ; Saturate(value)
  %6831 = fmul fast float %6827, %6830
  %6832 = bitcast float %6552 to i32
  %6833 = ashr i32 %6832, 1
  %6834 = sub nsw i32 1597463007, %6833
  %6835 = bitcast i32 %6834 to float
  %6836 = fmul fast float %6835, %6549
  %6837 = fmul fast float %6835, %6550
  %6838 = fmul fast float %6835, %6551
  %6839 = fsub fast float %6836, %5083
  %6840 = fsub fast float %6837, %5082
  %6841 = fsub fast float %6838, %5081
  %6842 = call float @dx.op.dot3.f32(i32 55, float %6839, float %6840, float %6841, float %6839, float %6840, float %6841)  ; Dot3(ax,ay,az,bx,by,bz)
  %6843 = call float @dx.op.unary.f32(i32 25, float %6842)  ; Rsqrt(value)
  %6844 = fmul fast float %6839, %6843
  %6845 = fmul fast float %6840, %6843
  %6846 = fmul fast float %6841, %6843
  %6847 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float %6844, float %6845, float %6846)  ; Dot3(ax,ay,az,bx,by,bz)
  %6848 = fmul fast float %6847, %6847
  %6849 = call float @dx.op.unary.f32(i32 6, float %6824)  ; FAbs(value)
  %6850 = fsub fast float 1.000000e+00, %5093
  %6851 = call float @dx.op.binary.f32(i32 35, float %6850, float 0x3F847AE140000000)  ; FMax(a,b)
  %6852 = fmul fast float %6851, %6851
  %6853 = fmul fast float %6852, %6852
  %6854 = fsub fast float 1.000000e+00, %6853
  %6855 = fmul fast float %5098, %5098
  %6856 = fmul fast float %6855, %6854
  %6857 = fadd fast float %6856, %6853
  %6858 = bitcast float %6857 to i32
  %6859 = ashr i32 %6858, 1
  %6860 = add nsw i32 %6859, 532487669
  %6861 = bitcast i32 %6860 to float
  %6862 = fadd fast float %6861, %5098
  %6863 = fmul fast float %6853, %6848
  %6864 = fsub fast float 1.000000e+00, %6848
  %6865 = fadd fast float %6864, %6863
  %6866 = fmul fast float %6849, %6849
  %6867 = fmul fast float %6866, %6854
  %6868 = fadd fast float %6867, %6853
  %6869 = bitcast float %6868 to i32
  %6870 = ashr i32 %6869, 1
  %6871 = add nsw i32 %6870, 532487669
  %6872 = bitcast i32 %6871 to float
  %6873 = fadd fast float %6872, %6849
  %6874 = fmul fast float %6865, %6865
  %6875 = fmul fast float %6874, %6862
  %6876 = fmul fast float %6875, %6873
  %6877 = fdiv fast float 1.000000e+00, %6876
  %6878 = bitcast float %6853 to i32
  %6879 = sitofp i32 %6878 to float
  %6880 = fmul fast float %6879, 0x3FE7F73180000000
  %6881 = fadd fast float %6880, 0x41AFE27C40000000
  %6882 = fptosi float %6881 to i32
  %6883 = bitcast i32 %6882 to float
  %6884 = fmul fast float %6518, 0x3FD80E9D60000000
  %6885 = fmul fast float %6884, %6835
  %6886 = fadd fast float %6883, %6885
  %6887 = bitcast float %6886 to i32
  %6888 = sub nsw i32 2129859010, %6887
  %6889 = bitcast i32 %6888 to float
  %6890 = fmul fast float %6853, %6877
  %6891 = fmul fast float %6890, %6883
  %6892 = fmul fast float %6891, %6889
  %6893 = call float @dx.op.unary.f32(i32 6, float %6825)  ; FAbs(value)
  %6894 = fsub fast float 1.000000e+00, %6893
  %6895 = bitcast float %6894 to i32
  %6896 = sitofp i32 %6895 to float
  %6897 = fmul fast float %6896, 5.000000e+00
  %6898 = fadd fast float %6897, 0xC1EFBF8940000000
  %6899 = fptosi float %6898 to i32
  %6900 = bitcast i32 %6899 to float
  %6901 = fsub fast float 1.000000e+00, %5087
  %6902 = fsub fast float 1.000000e+00, %5088
  %6903 = fsub fast float 1.000000e+00, %5096
  %6904 = fmul fast float %6900, %6901
  %6905 = fmul fast float %6900, %6902
  %6906 = fmul fast float %6900, %6903
  %6907 = fadd fast float %6904, %5087
  %6908 = fadd fast float %6905, %5088
  %6909 = fadd fast float %6906, %5096
  br i1 %5223, label %6910, label %6933

; <label>:6910                                    ; preds = %6796
  %6911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3889, float %6893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6912 = extractvalue %dx.types.ResRet.f32 %6911, 0
  %6913 = extractvalue %dx.types.ResRet.f32 %6911, 1
  %6914 = extractvalue %dx.types.ResRet.f32 %6911, 2
  %6915 = fadd fast float %6912, -5.000000e-01
  %6916 = fadd fast float %6913, -5.000000e-01
  %6917 = fadd fast float %6914, -5.000000e-01
  %6918 = fmul fast float %5087, 4.000000e+00
  %6919 = fmul fast float %6918, %6901
  %6920 = fmul fast float %6919, %6915
  %6921 = fmul fast float %5088, 4.000000e+00
  %6922 = fmul fast float %6921, %6902
  %6923 = fmul fast float %6922, %6916
  %6924 = fmul fast float %5096, 4.000000e+00
  %6925 = fmul fast float %6924, %6903
  %6926 = fmul fast float %6925, %6917
  %6927 = fadd fast float %6920, %6907
  %6928 = fadd fast float %6923, %6908
  %6929 = fadd fast float %6926, %6909
  %6930 = call float @dx.op.unary.f32(i32 7, float %6927)  ; Saturate(value)
  %6931 = call float @dx.op.unary.f32(i32 7, float %6928)  ; Saturate(value)
  %6932 = call float @dx.op.unary.f32(i32 7, float %6929)  ; Saturate(value)
  br label %6933

; <label>:6933                                    ; preds = %6910, %6796
  %6934 = phi float [ %6930, %6910 ], [ %6907, %6796 ]
  %6935 = phi float [ %6931, %6910 ], [ %6908, %6796 ]
  %6936 = phi float [ %6932, %6910 ], [ %6909, %6796 ]
  %6937 = fmul fast float %6824, 9.843750e-01
  %6938 = fadd fast float %6937, 7.812500e-03
  %6939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6938, float %5213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6940 = extractvalue %dx.types.ResRet.f32 %6939, 2
  %6941 = extractvalue %dx.types.ResRet.f32 %6939, 3
  %6942 = fmul fast float %6940, %5087
  %6943 = fmul fast float %6940, %5088
  %6944 = fmul fast float %6940, %5096
  %6945 = fadd fast float %6942, %6941
  %6946 = fadd fast float %6943, %6941
  %6947 = fadd fast float %6944, %6941
  br i1 %5223, label %6948, label %6971

; <label>:6948                                    ; preds = %6933
  %6949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %3889, float %6824, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6950 = extractvalue %dx.types.ResRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.ResRet.f32 %6949, 1
  %6952 = extractvalue %dx.types.ResRet.f32 %6949, 2
  %6953 = fadd fast float %6950, -5.000000e-01
  %6954 = fadd fast float %6951, -5.000000e-01
  %6955 = fadd fast float %6952, -5.000000e-01
  %6956 = fmul fast float %5087, 4.000000e+00
  %6957 = fmul fast float %6956, %6901
  %6958 = fmul fast float %6957, %6953
  %6959 = fmul fast float %5088, 4.000000e+00
  %6960 = fmul fast float %6959, %6902
  %6961 = fmul fast float %6960, %6954
  %6962 = fmul fast float %5096, 4.000000e+00
  %6963 = fmul fast float %6962, %6903
  %6964 = fmul fast float %6963, %6955
  %6965 = fadd fast float %6958, %6945
  %6966 = fadd fast float %6961, %6946
  %6967 = fadd fast float %6964, %6947
  %6968 = call float @dx.op.unary.f32(i32 7, float %6965)  ; Saturate(value)
  %6969 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  %6970 = call float @dx.op.unary.f32(i32 7, float %6967)  ; Saturate(value)
  br label %6971

; <label>:6971                                    ; preds = %6948, %6933
  %6972 = phi float [ %6968, %6948 ], [ %6945, %6933 ]
  %6973 = phi float [ %6969, %6948 ], [ %6946, %6933 ]
  %6974 = phi float [ %6970, %6948 ], [ %6947, %6933 ]
  %6975 = call float @dx.op.binary.f32(i32 35, float %6973, float %6974)  ; FMax(a,b)
  %6976 = call float @dx.op.binary.f32(i32 35, float %6972, float %6975)  ; FMax(a,b)
  %6977 = fsub fast float 1.000000e+00, %6976
  %6978 = fmul fast float %6934, %6892
  %6979 = fmul fast float %6935, %6892
  %6980 = fmul fast float %6936, %6892
  %6981 = fsub fast float 1.000000e+00, %6825
  %6982 = bitcast float %6981 to i32
  %6983 = sitofp i32 %6982 to float
  %6984 = fmul fast float %6983, 5.000000e+00
  %6985 = fadd fast float %6984, 0xC1EFBF8940000000
  %6986 = fptosi float %6985 to i32
  %6987 = bitcast i32 %6986 to float
  %6988 = fmul fast float %6987, %3890
  %6989 = fmul fast float %6977, %6988
  %6990 = fmul fast float %6989, %5273
  %6991 = fmul fast float %6989, %5274
  %6992 = fmul fast float %6989, %5275
  %6993 = fadd fast float %6990, %6978
  %6994 = fadd fast float %6991, %6979
  %6995 = fadd fast float %6992, %6980
  %6996 = fmul fast float %6813, %3886
  %6997 = fmul fast float %6996, %6831
  %6998 = fmul fast float %6997, %6977
  %6999 = fmul fast float %6814, %3886
  %7000 = fmul fast float %6999, %6831
  %7001 = fmul fast float %7000, %6977
  %7002 = fmul fast float %6815, %3886
  %7003 = fmul fast float %7002, %6831
  %7004 = fmul fast float %7003, %6977
  %7005 = fadd fast float %6998, %6492
  %7006 = fadd fast float %7001, %6493
  %7007 = fadd fast float %7004, %6494
  %7008 = fmul fast float %6997, %6993
  %7009 = fmul fast float %7000, %6994
  %7010 = fmul fast float %7003, %6995
  %7011 = fadd fast float %7008, %6489
  %7012 = fadd fast float %7009, %6490
  %7013 = fadd fast float %7010, %6491
  br label %6621

; <label>:7014                                    ; preds = %6621
  br label %7015

; <label>:7015                                    ; preds = %7014, %6455
  %7016 = phi float [ %6457, %6455 ], [ %6622, %7014 ]
  %7017 = phi float [ %6458, %6455 ], [ %6623, %7014 ]
  %7018 = phi float [ %6459, %6455 ], [ %6624, %7014 ]
  %7019 = phi float [ %6460, %6455 ], [ %6625, %7014 ]
  %7020 = phi float [ %6461, %6455 ], [ %6626, %7014 ]
  %7021 = phi float [ %6462, %6455 ], [ %6627, %7014 ]
  %7022 = add i32 %6456, 1
  %7023 = icmp ugt i32 %7022, %6452
  br i1 %7023, label %7024, label %6455

; <label>:7024                                    ; preds = %7015
  br label %7025

; <label>:7025                                    ; preds = %7024, %6405, %6395
  %7026 = phi float [ %6396, %6395 ], [ %6396, %6405 ], [ %7016, %7024 ]
  %7027 = phi float [ %6397, %6395 ], [ %6397, %6405 ], [ %7017, %7024 ]
  %7028 = phi float [ %6398, %6395 ], [ %6398, %6405 ], [ %7018, %7024 ]
  %7029 = phi float [ %6399, %6395 ], [ %6399, %6405 ], [ %7019, %7024 ]
  %7030 = phi float [ %6400, %6395 ], [ %6400, %6405 ], [ %7020, %7024 ]
  %7031 = phi float [ %6401, %6395 ], [ %6401, %6405 ], [ %7021, %7024 ]
  %7032 = fmul fast float %3886, %3886
  %7033 = fsub fast float 1.000000e+00, %7032
  %7034 = call float @dx.op.dot3.f32(i32 55, float %7033, float %7033, float %7033, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7035 = fsub fast float 1.000000e+00, %7034
  %7036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7037 = extractvalue %dx.types.CBufRet.f32 %7036, 0
  %7038 = fmul fast float %7037, %5279
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 3
  %7041 = fsub fast float 1.000000e+00, %3894
  %7042 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  %7043 = fadd fast float %7031, %3892
  %7044 = fmul fast float %7043, %3894
  %7045 = fmul fast float %7042, %7040
  %7046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7047 = extractvalue %dx.types.CBufRet.f32 %7046, 3
  %7048 = fmul fast float %7029, %5084
  %7049 = fmul fast float %7030, %5085
  %7050 = fmul fast float %7031, %5086
  %7051 = fcmp fast ogt float %97, %228
  %7052 = and i1 %7051, %4297
  %7053 = or i1 %4303, %7052
  %7054 = icmp eq i32 %4296, 2
  %7055 = fcmp fast ole float %97, %228
  %7056 = and i1 %7055, %7054
  %7057 = or i1 %7056, %7053
  br i1 %7052, label %7058, label %7315

; <label>:7058                                    ; preds = %7025
  %7059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7060 = extractvalue %dx.types.CBufRet.f32 %7059, 2
  %7061 = extractvalue %dx.types.CBufRet.f32 %7059, 3
  %7062 = fmul fast float %7060, %106
  %7063 = fmul fast float %7061, %107
  %7064 = call float @dx.op.unary.f32(i32 7, float %7062)  ; Saturate(value)
  %7065 = call float @dx.op.unary.f32(i32 7, float %7063)  ; Saturate(value)
  %7066 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7064, float %7065, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7067 = extractvalue %dx.types.ResRet.f32 %7066, 0
  %7068 = extractvalue %dx.types.ResRet.f32 %7066, 1
  %7069 = extractvalue %dx.types.ResRet.f32 %7066, 2
  %7070 = extractvalue %dx.types.ResRet.f32 %7066, 3
  %7071 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7064, float %7065, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7072 = extractvalue %dx.types.ResRet.f32 %7071, 0
  %7073 = extractvalue %dx.types.ResRet.f32 %7071, 1
  %7074 = extractvalue %dx.types.ResRet.f32 %7071, 2
  %7075 = extractvalue %dx.types.ResRet.f32 %7071, 3
  %7076 = call float @dx.op.binary.f32(i32 35, float %7068, float %7069)  ; FMax(a,b)
  %7077 = call float @dx.op.binary.f32(i32 35, float %7067, float %7076)  ; FMax(a,b)
  %7078 = call float @dx.op.binary.f32(i32 35, float %7077, float %7070)  ; FMax(a,b)
  %7079 = call float @dx.op.binary.f32(i32 36, float %7073, float %7074)  ; FMin(a,b)
  %7080 = call float @dx.op.binary.f32(i32 36, float %7072, float %7079)  ; FMin(a,b)
  %7081 = call float @dx.op.binary.f32(i32 36, float %7080, float %7075)  ; FMin(a,b)
  %7082 = fmul fast float %7078, 2.550000e+02
  %7083 = fadd fast float %7082, 0x3F70101020000000
  %7084 = fptoui float %7083 to i32
  %7085 = fmul fast float %7081, 2.550000e+02
  %7086 = fadd fast float %7085, 0x3F70101020000000
  %7087 = fptoui float %7086 to i32
  %7088 = icmp ult i32 %7084, %7087
  br i1 %7088, label %7089, label %7257

; <label>:7089                                    ; preds = %7058
  %7090 = fcmp fast ogt float %96, 9.843750e-01
  %7091 = fadd fast float %97, -4.000000e+00
  %7092 = select i1 %7090, float -4.000000e+00, float %7091
  %7093 = call float @dx.op.binary.f32(i32 35, float %7092, float 0.000000e+00)  ; FMax(a,b)
  %7094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7095 = extractvalue %dx.types.CBufRet.f32 %7094, 0
  %7096 = fadd fast float %7095, %7093
  %7097 = extractvalue %dx.types.CBufRet.f32 %7094, 2
  %7098 = fmul fast float %7096, %7097
  %7099 = call float @dx.op.unary.f32(i32 23, float %7098)  ; Log(value)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7094, 3
  %7101 = fmul fast float %7100, %7099
  %7102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7103 = extractvalue %dx.types.CBufRet.f32 %7102, 2
  %7104 = fmul fast float %7101, %7103
  %7105 = call float @dx.op.unary.f32(i32 7, float %7104)  ; Saturate(value)
  %7106 = uitofp i32 %7084 to float
  %7107 = uitofp i32 %7087 to float
  %7108 = fadd fast float %7106, 5.000000e-01
  %7109 = fadd fast float %7107, 5.000000e-01
  %7110 = fmul fast float %7103, %7108
  %7111 = fmul fast float %7103, %7109
  %7112 = fadd fast float %7110, 0x3F0FFB4800000000
  %7113 = fadd fast float %7111, 0xBF0FFB4800000000
  %7114 = call float @dx.op.binary.f32(i32 35, float %7105, float %7112)  ; FMax(a,b)
  %7115 = call float @dx.op.binary.f32(i32 36, float %7114, float %7113)  ; FMin(a,b)
  %7116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7117 = extractvalue %dx.types.CBufRet.f32 %7116, 1
  %7118 = extractvalue %dx.types.CBufRet.f32 %7116, 2
  %7119 = extractvalue %dx.types.CBufRet.f32 %7116, 0
  %7120 = fmul fast float %7117, %7115
  %7121 = fadd fast float %7119, %7120
  %7122 = fadd fast float %7119, %7118
  %7123 = fsub fast float %7117, %7118
  %7124 = fadd fast float %7123, %7119
  %7125 = call float @dx.op.binary.f32(i32 35, float %7121, float %7122)  ; FMax(a,b)
  %7126 = call float @dx.op.binary.f32(i32 36, float %7125, float %7124)  ; FMin(a,b)
  %7127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7064, float %7065, float %7126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7128 = extractvalue %dx.types.ResRet.f32 %7127, 0
  %7129 = extractvalue %dx.types.ResRet.f32 %7127, 1
  %7130 = extractvalue %dx.types.ResRet.f32 %7127, 2
  %7131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7132 = extractvalue %dx.types.CBufRet.i32 %7131, 0
  %7133 = extractvalue %dx.types.CBufRet.i32 %7131, 1
  %7134 = uitofp i32 %7132 to float
  %7135 = uitofp i32 %7133 to float
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.CBufRet.f32 %7136, 1
  %7139 = fmul fast float %7134, %7064
  %7140 = fmul fast float %7135, %7065
  %7141 = fadd fast float %7139, -5.000000e-01
  %7142 = fadd fast float %7140, -5.000000e-01
  %7143 = call float @dx.op.unary.f32(i32 22, float %7141)  ; Frc(value)
  %7144 = call float @dx.op.unary.f32(i32 22, float %7142)  ; Frc(value)
  %7145 = fmul fast float %7143, %7143
  %7146 = fmul fast float %7145, %7143
  %7147 = fsub fast float 3.000000e+00, %7143
  %7148 = fmul fast float %7145, %7147
  %7149 = fmul fast float %7143, 3.000000e+00
  %7150 = fmul fast float %7146, 3.000000e+00
  %7151 = fmul fast float %7145, 6.000000e+00
  %7152 = fsub fast float %7150, %7151
  %7153 = fadd fast float %7152, 4.000000e+00
  %7154 = fmul fast float %7153, 0x3FC5555560000000
  %7155 = fmul fast float %7146, -3.000000e+00
  %7156 = fadd fast float %7145, %7143
  %7157 = fmul fast float %7156, 3.000000e+00
  %7158 = fadd fast float %7155, 1.000000e+00
  %7159 = fadd fast float %7158, %7157
  %7160 = fmul fast float %7146, 0x3FC5555560000000
  %7161 = fmul fast float %7144, %7144
  %7162 = fmul fast float %7161, %7144
  %7163 = fsub fast float 3.000000e+00, %7144
  %7164 = fmul fast float %7161, %7163
  %7165 = fmul fast float %7144, 3.000000e+00
  %7166 = fmul fast float %7162, 3.000000e+00
  %7167 = fmul fast float %7161, 6.000000e+00
  %7168 = fsub fast float %7166, %7167
  %7169 = fadd fast float %7168, 4.000000e+00
  %7170 = fmul fast float %7169, 0x3FC5555560000000
  %7171 = fmul fast float %7162, -3.000000e+00
  %7172 = fadd fast float %7161, %7144
  %7173 = fmul fast float %7172, 3.000000e+00
  %7174 = fadd fast float %7171, 1.000000e+00
  %7175 = fadd fast float %7174, %7173
  %7176 = fmul fast float %7162, 0x3FC5555560000000
  %7177 = fadd fast float %7143, 1.000000e+00
  %7178 = fsub fast float 1.000000e+00, %7149
  %7179 = fadd fast float %7178, %7148
  %7180 = fadd fast float %7179, %7153
  %7181 = fmul fast float %7180, 0x3FC5555560000000
  %7182 = fdiv fast float %7154, %7181
  %7183 = fsub fast float %7177, %7182
  %7184 = fsub fast float 1.000000e+00, %7143
  %7185 = fadd fast float %7159, %7146
  %7186 = fmul fast float %7185, 0x3FC5555560000000
  %7187 = fdiv fast float %7160, %7186
  %7188 = fadd fast float %7184, %7187
  %7189 = fadd fast float %7144, 1.000000e+00
  %7190 = fsub fast float 1.000000e+00, %7165
  %7191 = fadd fast float %7190, %7164
  %7192 = fadd fast float %7191, %7169
  %7193 = fmul fast float %7192, 0x3FC5555560000000
  %7194 = fdiv fast float %7170, %7193
  %7195 = fsub fast float %7189, %7194
  %7196 = fsub fast float 1.000000e+00, %7144
  %7197 = fadd fast float %7175, %7162
  %7198 = fmul fast float %7197, 0x3FC5555560000000
  %7199 = fdiv fast float %7176, %7198
  %7200 = fadd fast float %7199, %7196
  %7201 = fmul fast float %7183, %7137
  %7202 = fsub fast float %7064, %7201
  %7203 = fmul fast float %7188, %7137
  %7204 = fadd fast float %7203, %7064
  %7205 = fmul fast float %7200, %7138
  %7206 = fadd fast float %7205, %7065
  %7207 = fmul fast float %7195, %7138
  %7208 = fsub fast float %7065, %7207
  %7209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7202, float %7208, float %7126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7210 = extractvalue %dx.types.ResRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.ResRet.f32 %7209, 1
  %7212 = extractvalue %dx.types.ResRet.f32 %7209, 2
  %7213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7204, float %7208, float %7126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7214 = extractvalue %dx.types.ResRet.f32 %7213, 0
  %7215 = extractvalue %dx.types.ResRet.f32 %7213, 1
  %7216 = extractvalue %dx.types.ResRet.f32 %7213, 2
  %7217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7202, float %7206, float %7126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7218 = extractvalue %dx.types.ResRet.f32 %7217, 0
  %7219 = extractvalue %dx.types.ResRet.f32 %7217, 1
  %7220 = extractvalue %dx.types.ResRet.f32 %7217, 2
  %7221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7204, float %7206, float %7126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7222 = extractvalue %dx.types.ResRet.f32 %7221, 0
  %7223 = extractvalue %dx.types.ResRet.f32 %7221, 1
  %7224 = extractvalue %dx.types.ResRet.f32 %7221, 2
  %7225 = fsub fast float %7218, %7210
  %7226 = fsub fast float %7219, %7211
  %7227 = fsub fast float %7220, %7212
  %7228 = fmul fast float %7225, %7198
  %7229 = fmul fast float %7226, %7198
  %7230 = fmul fast float %7227, %7198
  %7231 = fadd fast float %7228, %7210
  %7232 = fadd fast float %7229, %7211
  %7233 = fadd fast float %7230, %7212
  %7234 = fsub fast float %7222, %7214
  %7235 = fsub fast float %7223, %7215
  %7236 = fsub fast float %7224, %7216
  %7237 = fmul fast float %7234, %7198
  %7238 = fmul fast float %7235, %7198
  %7239 = fmul fast float %7236, %7198
  %7240 = fsub fast float %7214, %7231
  %7241 = fadd fast float %7240, %7237
  %7242 = fsub fast float %7215, %7232
  %7243 = fadd fast float %7242, %7238
  %7244 = fsub fast float %7216, %7233
  %7245 = fadd fast float %7244, %7239
  %7246 = fmul fast float %7241, %7186
  %7247 = fmul fast float %7243, %7186
  %7248 = fmul fast float %7245, %7186
  %7249 = fadd fast float %7246, %7231
  %7250 = fadd fast float %7247, %7232
  %7251 = fadd fast float %7248, %7233
  %7252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7253 = extractvalue %dx.types.CBufRet.f32 %7252, 1
  %7254 = fmul fast float %7249, %7253
  %7255 = fmul fast float %7250, %7253
  %7256 = fmul fast float %7251, %7253
  br label %7257

; <label>:7257                                    ; preds = %7089, %7058
  %7258 = phi float [ %7128, %7089 ], [ 1.000000e+00, %7058 ]
  %7259 = phi float [ %7129, %7089 ], [ 1.000000e+00, %7058 ]
  %7260 = phi float [ %7130, %7089 ], [ 1.000000e+00, %7058 ]
  %7261 = phi float [ %7254, %7089 ], [ 0.000000e+00, %7058 ]
  %7262 = phi float [ %7255, %7089 ], [ 0.000000e+00, %7058 ]
  %7263 = phi float [ %7256, %7089 ], [ 0.000000e+00, %7058 ]
  %7264 = fmul fast float %7261, %7035
  %7265 = fmul fast float %7262, %7035
  %7266 = fmul fast float %7263, %7035
  %7267 = call float @dx.op.dot3.f32(i32 55, float %7258, float %7259, float %7260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7268 = call float @dx.op.dot3.f32(i32 55, float %7264, float %7265, float %7266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7269 = select i1 %265, float %7267, float %7258
  %7270 = select i1 %265, float %7267, float %7259
  %7271 = select i1 %265, float 1.000000e+00, float %7260
  %7272 = select i1 %265, float %7268, float %7264
  %7273 = select i1 %265, float 0.000000e+00, float %7265
  %7274 = select i1 %265, float 0.000000e+00, float %7266
  %7275 = fmul fast float %7269, %7048
  %7276 = fmul fast float %7270, %7049
  %7277 = fmul fast float %7271, %7050
  %7278 = fadd fast float %7275, %7272
  %7279 = fadd fast float %7276, %7273
  %7280 = fadd fast float %7274, %7277
  %7281 = fmul fast float %7269, %7026
  %7282 = fmul fast float %7270, %7027
  %7283 = fmul fast float %7271, %7028
  %7284 = fmul fast float %142, %7060
  %7285 = fmul fast float %144, %7061
  %7286 = fsub fast float 1.000000e+00, %7284
  %7287 = fsub fast float 1.000000e+00, %7285
  %7288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.f32 %7288, 0
  %7290 = extractvalue %dx.types.CBufRet.f32 %7288, 1
  %7291 = extractvalue %dx.types.CBufRet.f32 %7288, 2
  %7292 = fmul fast float %7286, %7289
  %7293 = fmul fast float %7286, %7290
  %7294 = fmul fast float %7286, %7291
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 0
  %7297 = extractvalue %dx.types.CBufRet.f32 %7295, 1
  %7298 = extractvalue %dx.types.CBufRet.f32 %7295, 2
  %7299 = fmul fast float %7287, %7296
  %7300 = fmul fast float %7287, %7297
  %7301 = fmul fast float %7287, %7298
  %7302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7302, 0
  %7304 = extractvalue %dx.types.CBufRet.f32 %7302, 1
  %7305 = extractvalue %dx.types.CBufRet.f32 %7302, 2
  %7306 = fadd fast float %7299, %7303
  %7307 = fadd fast float %7306, %7292
  %7308 = fadd fast float %7300, %7304
  %7309 = fadd fast float %7308, %7293
  %7310 = fadd fast float %7301, %7305
  %7311 = fadd fast float %7310, %7294
  %7312 = fmul fast float %7307, %228
  %7313 = fmul fast float %7309, %228
  %7314 = fmul fast float %7311, %228
  br label %7315

; <label>:7315                                    ; preds = %7257, %7025
  %7316 = phi float [ %7312, %7257 ], [ %193, %7025 ]
  %7317 = phi float [ %7313, %7257 ], [ %194, %7025 ]
  %7318 = phi float [ %7314, %7257 ], [ %195, %7025 ]
  %7319 = phi float [ %228, %7257 ], [ %97, %7025 ]
  %7320 = phi float [ %7278, %7257 ], [ %7048, %7025 ]
  %7321 = phi float [ %7279, %7257 ], [ %7049, %7025 ]
  %7322 = phi float [ %7280, %7257 ], [ %7050, %7025 ]
  %7323 = phi float [ %7281, %7257 ], [ %7026, %7025 ]
  %7324 = phi float [ %7282, %7257 ], [ %7027, %7025 ]
  %7325 = phi float [ %7283, %7257 ], [ %7028, %7025 ]
  %7326 = phi float [ %7258, %7257 ], [ 1.000000e+00, %7025 ]
  br i1 %7057, label %8481, label %7327

; <label>:7327                                    ; preds = %7315
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.CBufRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7332 = extractvalue %dx.types.CBufRet.f32 %7328, 3
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 0
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 1
  %7336 = extractvalue %dx.types.CBufRet.f32 %7333, 2
  %7337 = extractvalue %dx.types.CBufRet.f32 %7333, 3
  %7338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7339 = extractvalue %dx.types.CBufRet.f32 %7338, 0
  %7340 = extractvalue %dx.types.CBufRet.f32 %7338, 1
  %7341 = extractvalue %dx.types.CBufRet.f32 %7338, 2
  %7342 = extractvalue %dx.types.CBufRet.f32 %7338, 3
  %7343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7344 = extractvalue %dx.types.CBufRet.f32 %7343, 0
  %7345 = extractvalue %dx.types.CBufRet.f32 %7343, 1
  %7346 = extractvalue %dx.types.CBufRet.f32 %7343, 2
  %7347 = extractvalue %dx.types.CBufRet.f32 %7343, 3
  %7348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7348, 3
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 3
  %7352 = extractvalue %dx.types.CBufRet.f32 %7350, 0
  %7353 = extractvalue %dx.types.CBufRet.f32 %7350, 1
  %7354 = extractvalue %dx.types.CBufRet.f32 %7350, 2
  %7355 = fcmp fast olt float %7354, -5.000000e-01
  %7356 = call float @dx.op.dot3.f32(i32 55, float %7316, float %7317, float %7318, float %7316, float %7317, float %7318)  ; Dot3(ax,ay,az,bx,by,bz)
  %7357 = call float @dx.op.unary.f32(i32 25, float %7356)  ; Rsqrt(value)
  %7358 = fmul fast float %7357, %7356
  %7359 = fmul fast float %7357, %7316
  %7360 = fmul fast float %7357, %7317
  %7361 = fmul fast float %7357, %7318
  %7362 = fadd fast float %7358, %7332
  %7363 = call float @dx.op.dot3.f32(i32 55, float %7359, float %7360, float %7361, float %7329, float %7330, float %7331)  ; Dot3(ax,ay,az,bx,by,bz)
  %7364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7365 = extractvalue %dx.types.CBufRet.i32 %7364, 1
  %7366 = and i32 %7365, 1
  %7367 = icmp ne i32 %7366, 0
  %7368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.f32 %7368, 2
  %7370 = fcmp fast ogt float %7369, 0.000000e+00
  %7371 = and i1 %7367, %7370
  br i1 %7371, label %7372, label %7778, !dx.controlflow.hints !125

; <label>:7372                                    ; preds = %7327
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 3
  %7375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7376 = extractvalue %dx.types.CBufRet.f32 %7375, 2
  %7377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7378 = extractvalue %dx.types.CBufRet.f32 %7377, 2
  %7379 = fsub fast float %7376, %7378
  %7380 = and i32 %7365, 2
  %7381 = extractvalue %dx.types.CBufRet.i32 %7364, 0
  %7382 = call i32 @dx.op.binary.i32(i32 40, i32 %7381, i32 3)  ; UMin(a,b)
  %7383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7384 = extractvalue %dx.types.CBufRet.f32 %7383, 0
  %7385 = extractvalue %dx.types.CBufRet.f32 %7383, 1
  %7386 = extractvalue %dx.types.CBufRet.f32 %7377, 0
  %7387 = extractvalue %dx.types.CBufRet.f32 %7377, 1
  %7388 = fsub fast float %7384, %7386
  %7389 = fsub fast float %7385, %7387
  %7390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7391 = extractvalue %dx.types.CBufRet.f32 %7390, 0
  %7392 = fcmp fast ogt float %7391, 0.000000e+00
  %7393 = fsub fast float -0.000000e+00, %7388
  %7394 = fsub fast float -0.000000e+00, %7389
  %7395 = call float @dx.op.dot2.f32(i32 54, float %7359, float %7360, float %7359, float %7360)  ; Dot2(ax,ay,bx,by)
  %7396 = call float @dx.op.dot2.f32(i32 54, float %7359, float %7360, float %7393, float %7394)  ; Dot2(ax,ay,bx,by)
  %7397 = fmul fast float %7396, 2.000000e+00
  %7398 = call float @dx.op.dot2.f32(i32 54, float %7393, float %7394, float %7393, float %7394)  ; Dot2(ax,ay,bx,by)
  %7399 = fmul fast float %7391, %7391
  %7400 = fsub fast float %7398, %7399
  %7401 = fmul fast float %7397, %7397
  %7402 = fmul fast float %7395, 4.000000e+00
  %7403 = fmul fast float %7402, %7400
  %7404 = fsub fast float %7401, %7403
  %7405 = fcmp fast ogt float %7404, 0.000000e+00
  br i1 %7405, label %7406, label %7421

; <label>:7406                                    ; preds = %7372
  %7407 = fcmp fast ogt float %7397, 0.000000e+00
  %7408 = call float @dx.op.unary.f32(i32 24, float %7404)  ; Sqrt(value)
  %7409 = fsub fast float -0.000000e+00, %7408
  %7410 = select i1 %7407, float %7408, float %7409
  %7411 = fadd fast float %7410, %7397
  %7412 = fmul float %7411, -5.000000e-01
  %7413 = fdiv fast float %7412, %7395
  %7414 = call float @dx.op.binary.f32(i32 35, float %7413, float 0.000000e+00)  ; FMax(a,b)
  %7415 = call float @dx.op.binary.f32(i32 36, float %7358, float %7414)  ; FMin(a,b)
  %7416 = fdiv fast float %7400, %7412
  %7417 = call float @dx.op.binary.f32(i32 35, float %7416, float 0.000000e+00)  ; FMax(a,b)
  %7418 = call float @dx.op.binary.f32(i32 36, float %7358, float %7417)  ; FMin(a,b)
  %7419 = call float @dx.op.binary.f32(i32 36, float %7415, float %7418)  ; FMin(a,b)
  %7420 = call float @dx.op.binary.f32(i32 35, float %7415, float %7418)  ; FMax(a,b)
  br label %7421

; <label>:7421                                    ; preds = %7406, %7372
  %7422 = phi float [ %7420, %7406 ], [ -1.000000e+00, %7372 ]
  %7423 = phi float [ %7419, %7406 ], [ -1.000000e+00, %7372 ]
  %7424 = phi i1 [ true, %7406 ], [ false, %7372 ]
  %7425 = and i1 %7392, %7424
  br i1 %7425, label %7426, label %7428

; <label>:7426                                    ; preds = %7421
  %7427 = fcmp fast oeq float %7423, %7422
  br i1 %7427, label %7731, label %7429

; <label>:7428                                    ; preds = %7421
  br i1 %7392, label %7731, label %7429

; <label>:7429                                    ; preds = %7428, %7426
  %7430 = phi float [ %7358, %7428 ], [ %7422, %7426 ]
  %7431 = phi float [ 0.000000e+00, %7428 ], [ %7423, %7426 ]
  %7432 = icmp ne i32 %7380, 0
  %7433 = fmul fast float %7430, %7361
  %7434 = fadd fast float %7433, %7374
  %7435 = fmul fast float %7434, %7430
  %7436 = select i1 %7432, float 0.000000e+00, float %7435
  %7437 = fcmp fast oeq float %7361, 0.000000e+00
  %7438 = fdiv fast float %7379, %7361
  %7439 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7438)  ; FMax(a,b)
  %7440 = select i1 %7437, float %7430, float %7439
  %7441 = call float @dx.op.binary.f32(i32 36, float %7430, float %7440)  ; FMin(a,b)
  %7442 = fcmp fast ogt float %7361, 0.000000e+00
  %7443 = fcmp fast olt float %7379, 0.000000e+00
  br i1 %7442, label %7444, label %7501

; <label>:7444                                    ; preds = %7429
  %7445 = icmp eq i32 %7380, 0
  br i1 %7443, label %7446, label %7490

; <label>:7446                                    ; preds = %7444
  %7447 = select i1 %7445, float %7430, float 0.000000e+00
  %7448 = fsub fast float -0.000000e+00, %7447
  %7449 = call float @dx.op.unary.f32(i32 6, float %7448)  ; FAbs(value)
  %7450 = fmul fast float %7447, %7361
  %7451 = fadd fast float %7450, %7374
  %7452 = fmul fast float %7449, %7451
  %7453 = fsub fast float %7436, %7452
  %7454 = fsub fast float %7430, %7449
  %7455 = select i1 %7445, float %7454, float 0.000000e+00
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = extractvalue %dx.types.CBufRet.f32 %7456, 1
  %7459 = extractvalue %dx.types.CBufRet.f32 %7456, 2
  %7460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7461 = extractvalue %dx.types.CBufRet.f32 %7460, 0
  %7462 = extractvalue %dx.types.CBufRet.f32 %7460, 1
  %7463 = extractvalue %dx.types.CBufRet.f32 %7460, 2
  %7464 = extractvalue %dx.types.CBufRet.f32 %7460, 3
  %7465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
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
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %7731

; <label>:7490                                    ; preds = %7444
  br i1 %7445, label %7491, label %7512

; <label>:7491                                    ; preds = %7490
  %7492 = call float @dx.op.binary.f32(i32 36, float %7441, float %7431)  ; FMin(a,b)
  %7493 = fsub fast float %7441, %7492
  %7494 = fsub fast float %7493, %7430
  %7495 = call float @dx.op.unary.f32(i32 6, float %7494)  ; FAbs(value)
  %7496 = fadd fast float %7493, %7430
  %7497 = fmul fast float %7496, %7361
  %7498 = fadd fast float %7497, %7374
  %7499 = fmul fast float %7498, %7495
  %7500 = fsub fast float %7436, %7499
  br label %7512

; <label>:7501                                    ; preds = %7429
  br i1 %7443, label %7502, label %7512

; <label>:7502                                    ; preds = %7501
  %7503 = call float @dx.op.binary.f32(i32 35, float %7431, float %7441)  ; FMax(a,b)
  %7504 = icmp eq i32 %7380, 0
  %7505 = select i1 %7504, float %7441, float 0.000000e+00
  %7506 = fsub fast float -0.000000e+00, %7505
  %7507 = call float @dx.op.unary.f32(i32 6, float %7506)  ; FAbs(value)
  %7508 = fmul fast float %7505, %7361
  %7509 = fadd fast float %7508, %7374
  %7510 = fmul fast float %7507, %7509
  %7511 = fsub fast float %7436, %7510
  br label %7512

; <label>:7512                                    ; preds = %7502, %7501, %7491, %7490
  %7513 = phi float [ %7431, %7490 ], [ %7431, %7491 ], [ %7503, %7502 ], [ %7431, %7501 ]
  %7514 = phi float [ 0.000000e+00, %7490 ], [ %7495, %7491 ], [ %7507, %7502 ], [ 0.000000e+00, %7501 ]
  %7515 = phi float [ %7436, %7490 ], [ %7500, %7491 ], [ %7511, %7502 ], [ %7436, %7501 ]
  %7516 = phi float [ %7441, %7490 ], [ %7441, %7491 ], [ %7430, %7502 ], [ %7430, %7501 ]
  %7517 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %7517, align 4, !tbaa !126, !noalias !128
  %7518 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %7518, align 4, !tbaa !126, !noalias !128
  %7519 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %7519, align 4, !tbaa !126, !noalias !128
  %7520 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %7520, align 4, !tbaa !126, !noalias !128
  %7521 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %7521, align 4, !tbaa !126, !noalias !128
  %7522 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %7522, align 4, !tbaa !126, !noalias !128
  %7523 = icmp sgt i32 %7382, 0
  br i1 %7523, label %7524, label %7585

; <label>:7524                                    ; preds = %7512
  br label %7525

; <label>:7525                                    ; preds = %7574, %7524
  %7526 = phi i32 [ %7575, %7574 ], [ 0, %7524 ]
  %7527 = phi i32 [ %7576, %7574 ], [ 0, %7524 ]
  %7528 = add nuw i32 %7527, 171
  %7529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %7528)  ; CBufferLoadLegacy(handle,regIndex)
  %7530 = extractvalue %dx.types.CBufRet.f32 %7529, 0
  %7531 = extractvalue %dx.types.CBufRet.f32 %7529, 1
  %7532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7533 = extractvalue %dx.types.CBufRet.f32 %7532, 0
  %7534 = extractvalue %dx.types.CBufRet.f32 %7532, 1
  %7535 = fsub fast float %7530, %7533
  %7536 = fsub fast float %7531, %7534
  %7537 = extractvalue %dx.types.CBufRet.f32 %7529, 2
  %7538 = fsub fast float -0.000000e+00, %7535
  %7539 = fsub fast float -0.000000e+00, %7536
  %7540 = call float @dx.op.dot2.f32(i32 54, float %7359, float %7360, float %7538, float %7539)  ; Dot2(ax,ay,bx,by)
  %7541 = fmul fast float %7540, 2.000000e+00
  %7542 = call float @dx.op.dot2.f32(i32 54, float %7538, float %7539, float %7538, float %7539)  ; Dot2(ax,ay,bx,by)
  %7543 = fmul fast float %7537, %7537
  %7544 = fsub fast float %7542, %7543
  %7545 = fmul fast float %7541, %7541
  %7546 = fmul fast float %7402, %7544
  %7547 = fsub fast float %7545, %7546
  %7548 = fcmp fast ogt float %7547, 0.000000e+00
  br i1 %7548, label %7549, label %7564

; <label>:7549                                    ; preds = %7525
  %7550 = fcmp fast ogt float %7541, 0.000000e+00
  %7551 = call float @dx.op.unary.f32(i32 24, float %7547)  ; Sqrt(value)
  %7552 = fsub fast float -0.000000e+00, %7551
  %7553 = select i1 %7550, float %7551, float %7552
  %7554 = fadd fast float %7553, %7541
  %7555 = fmul float %7554, -5.000000e-01
  %7556 = fdiv fast float %7555, %7395
  %7557 = call float @dx.op.binary.f32(i32 35, float %7556, float 0.000000e+00)  ; FMax(a,b)
  %7558 = call float @dx.op.binary.f32(i32 36, float %7430, float %7557)  ; FMin(a,b)
  %7559 = fdiv fast float %7544, %7555
  %7560 = call float @dx.op.binary.f32(i32 35, float %7559, float 0.000000e+00)  ; FMax(a,b)
  %7561 = call float @dx.op.binary.f32(i32 36, float %7430, float %7560)  ; FMin(a,b)
  %7562 = call float @dx.op.binary.f32(i32 36, float %7558, float %7561)  ; FMin(a,b)
  %7563 = call float @dx.op.binary.f32(i32 35, float %7558, float %7561)  ; FMax(a,b)
  br label %7564

; <label>:7564                                    ; preds = %7549, %7525
  %7565 = phi float [ %7563, %7549 ], [ -1.000000e+00, %7525 ]
  %7566 = phi float [ %7562, %7549 ], [ -1.000000e+00, %7525 ]
  %7567 = phi i1 [ true, %7549 ], [ false, %7525 ]
  br i1 %7567, label %7568, label %7574

; <label>:7568                                    ; preds = %7564
  %7569 = call float @dx.op.binary.f32(i32 35, float %7513, float %7566)  ; FMax(a,b)
  %7570 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7527
  store float %7569, float* %7570, align 4, !tbaa !126, !noalias !128
  %7571 = call float @dx.op.binary.f32(i32 35, float %7513, float %7565)  ; FMax(a,b)
  %7572 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7527
  store float %7571, float* %7572, align 4, !tbaa !126, !noalias !128
  %7573 = add nsw i32 %7526, 1
  br label %7574

; <label>:7574                                    ; preds = %7568, %7564
  %7575 = phi i32 [ %7573, %7568 ], [ %7526, %7564 ]
  %7576 = add nuw nsw i32 %7527, 1
  %7577 = icmp eq i32 %7576, %7382
  br i1 %7577, label %7578, label %7525

; <label>:7578                                    ; preds = %7574
  %7579 = load float, float* %7519, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %7580 = load float, float* %7518, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  %7581 = load float, float* %7517, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  %7582 = load float, float* %7522, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %7583 = load float, float* %7521, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  %7584 = load float, float* %7520, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  br label %7585

; <label>:7585                                    ; preds = %7578, %7512
  %7586 = phi float [ -1.000000e+00, %7512 ], [ %7584, %7578 ]
  %7587 = phi float [ -1.000000e+00, %7512 ], [ %7583, %7578 ]
  %7588 = phi float [ -1.000000e+00, %7512 ], [ %7582, %7578 ]
  %7589 = phi float [ -1.000000e+00, %7512 ], [ %7581, %7578 ]
  %7590 = phi float [ -1.000000e+00, %7512 ], [ %7580, %7578 ]
  %7591 = phi float [ -1.000000e+00, %7512 ], [ %7579, %7578 ]
  %7592 = phi i32 [ 0, %7512 ], [ %7575, %7578 ]
  %7593 = call float @dx.op.binary.f32(i32 36, float %7590, float %7591)  ; FMin(a,b)
  %7594 = call float @dx.op.binary.f32(i32 36, float %7589, float %7593)  ; FMin(a,b)
  %7595 = call float @dx.op.binary.f32(i32 35, float %7589, float %7590)  ; FMax(a,b)
  %7596 = call float @dx.op.binary.f32(i32 36, float %7595, float %7591)  ; FMin(a,b)
  %7597 = call float @dx.op.binary.f32(i32 36, float %7589, float %7590)  ; FMin(a,b)
  %7598 = call float @dx.op.binary.f32(i32 35, float %7597, float %7596)  ; FMax(a,b)
  %7599 = call float @dx.op.binary.f32(i32 35, float %7590, float %7591)  ; FMax(a,b)
  %7600 = call float @dx.op.binary.f32(i32 35, float %7589, float %7599)  ; FMax(a,b)
  store float %7594, float* %7517, align 4, !tbaa !126, !alias.scope !152, !noalias !153
  store float %7598, float* %7518, align 4, !tbaa !126, !alias.scope !150, !noalias !151
  store float %7600, float* %7519, align 4, !tbaa !126, !alias.scope !144, !noalias !147
  %7601 = call float @dx.op.binary.f32(i32 36, float %7587, float %7588)  ; FMin(a,b)
  %7602 = call float @dx.op.binary.f32(i32 36, float %7586, float %7601)  ; FMin(a,b)
  %7603 = call float @dx.op.binary.f32(i32 35, float %7586, float %7587)  ; FMax(a,b)
  %7604 = call float @dx.op.binary.f32(i32 36, float %7603, float %7588)  ; FMin(a,b)
  %7605 = call float @dx.op.binary.f32(i32 36, float %7586, float %7587)  ; FMin(a,b)
  %7606 = call float @dx.op.binary.f32(i32 35, float %7605, float %7604)  ; FMax(a,b)
  %7607 = call float @dx.op.binary.f32(i32 35, float %7587, float %7588)  ; FMax(a,b)
  %7608 = call float @dx.op.binary.f32(i32 35, float %7586, float %7607)  ; FMax(a,b)
  store float %7602, float* %7520, align 4, !tbaa !126, !alias.scope !162, !noalias !163
  store float %7606, float* %7521, align 4, !tbaa !126, !alias.scope !160, !noalias !161
  store float %7608, float* %7522, align 4, !tbaa !126, !alias.scope !154, !noalias !157
  %7609 = sub nsw i32 3, %7592
  %7610 = icmp sgt i32 %7609, 2
  br i1 %7610, label %7611, label %7649

; <label>:7611                                    ; preds = %7585
  %7612 = icmp eq i32 %7380, 0
  %7613 = fsub fast float %7430, %7514
  %7614 = select i1 %7612, float %7613, float %7514
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.CBufRet.f32 %7615, 1
  %7618 = extractvalue %dx.types.CBufRet.f32 %7615, 2
  %7619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7620 = extractvalue %dx.types.CBufRet.f32 %7619, 0
  %7621 = extractvalue %dx.types.CBufRet.f32 %7619, 1
  %7622 = extractvalue %dx.types.CBufRet.f32 %7619, 2
  %7623 = extractvalue %dx.types.CBufRet.f32 %7619, 3
  %7624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7625 = extractvalue %dx.types.CBufRet.f32 %7624, 3
  %7626 = call float @dx.op.binary.f32(i32 36, float %7515, float %7625)  ; FMin(a,b)
  %7627 = fmul fast float %7623, %7614
  %7628 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7629 = fsub fast float %7620, %7616
  %7630 = fsub fast float %7621, %7617
  %7631 = fsub fast float %7622, %7618
  %7632 = fmul fast float %7628, %7629
  %7633 = fmul fast float %7628, %7630
  %7634 = fmul fast float %7628, %7631
  %7635 = fadd fast float %7632, %7616
  %7636 = fadd fast float %7633, %7617
  %7637 = fadd fast float %7634, %7618
  %7638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7639 = extractvalue %dx.types.CBufRet.f32 %7638, 0
  %7640 = extractvalue %dx.types.CBufRet.f32 %7638, 1
  %7641 = fadd fast float %7640, %7639
  %7642 = call float @dx.op.unary.f32(i32 7, float %7641)  ; Saturate(value)
  %7643 = extractvalue %dx.types.CBufRet.f32 %7638, 2
  %7644 = extractvalue %dx.types.CBufRet.f32 %7638, 3
  %7645 = fadd fast float %7644, %7643
  %7646 = call float @dx.op.unary.f32(i32 7, float %7645)  ; Saturate(value)
  %7647 = fmul fast float %7642, %7626
  %7648 = fmul fast float %7647, %7646
  br label %7731

; <label>:7649                                    ; preds = %7585
  %7650 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7609
  %7651 = load float, float* %7650, align 4, !tbaa !126, !noalias !128
  %7652 = fcmp fast olt float %7651, %7516
  %7653 = icmp sgt i32 %7592, 0
  %7654 = and i1 %7653, %7652
  br i1 %7654, label %7655, label %7692

; <label>:7655                                    ; preds = %7649
  br label %7656

; <label>:7656                                    ; preds = %7685, %7655
  %7657 = phi float [ %7686, %7685 ], [ %7514, %7655 ]
  %7658 = phi float [ %7687, %7685 ], [ %7515, %7655 ]
  %7659 = phi float [ %7667, %7685 ], [ %7651, %7655 ]
  %7660 = phi i32 [ %7664, %7685 ], [ %7609, %7655 ]
  %7661 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %7660
  %7662 = load float, float* %7661, align 4, !tbaa !126, !noalias !128
  %7663 = icmp slt i32 %7660, 2
  %7664 = add nsw i32 %7660, 1
  %7665 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %7664
  %7666 = load float, float* %7665, align 4, !tbaa !126, !noalias !128
  %7667 = select i1 %7663, float %7666, float %7430
  %7668 = call float @dx.op.binary.f32(i32 36, float %7667, float %7662)  ; FMin(a,b)
  %7669 = call float @dx.op.binary.f32(i32 36, float %7516, float %7668)  ; FMin(a,b)
  %7670 = icmp eq i32 %7380, 0
  %7671 = fadd fast float %7669, %7659
  %7672 = fmul fast float %7671, %7361
  %7673 = fadd fast float %7672, %7374
  br i1 %7670, label %7679, label %7674

; <label>:7674                                    ; preds = %7656
  %7675 = fsub fast float %7669, %7659
  %7676 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7675)  ; FMax(a,b)
  %7677 = fmul fast float %7676, %7673
  %7678 = fadd fast float %7677, %7658
  br label %7685

; <label>:7679                                    ; preds = %7656
  %7680 = fsub fast float %7659, %7669
  %7681 = call float @dx.op.unary.f32(i32 6, float %7680)  ; FAbs(value)
  %7682 = fadd fast float %7681, %7657
  %7683 = fmul fast float %7681, %7673
  %7684 = fsub fast float %7658, %7683
  br label %7685

; <label>:7685                                    ; preds = %7679, %7674
  %7686 = phi float [ %7676, %7674 ], [ %7682, %7679 ]
  %7687 = phi float [ %7678, %7674 ], [ %7684, %7679 ]
  %7688 = fcmp fast olt float %7667, %7516
  %7689 = icmp slt i32 %7664, 3
  %7690 = and i1 %7689, %7688
  br i1 %7690, label %7656, label %7691

; <label>:7691                                    ; preds = %7685
  br label %7692

; <label>:7692                                    ; preds = %7691, %7649
  %7693 = phi float [ %7514, %7649 ], [ %7686, %7691 ]
  %7694 = phi float [ %7515, %7649 ], [ %7687, %7691 ]
  %7695 = fsub fast float %7430, %7693
  %7696 = select i1 %7432, float %7693, float %7695
  %7697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7698 = extractvalue %dx.types.CBufRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.CBufRet.f32 %7697, 1
  %7700 = extractvalue %dx.types.CBufRet.f32 %7697, 2
  %7701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7701, 0
  %7703 = extractvalue %dx.types.CBufRet.f32 %7701, 1
  %7704 = extractvalue %dx.types.CBufRet.f32 %7701, 2
  %7705 = extractvalue %dx.types.CBufRet.f32 %7701, 3
  %7706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.f32 %7706, 3
  %7708 = call float @dx.op.binary.f32(i32 36, float %7694, float %7707)  ; FMin(a,b)
  %7709 = fmul fast float %7705, %7696
  %7710 = call float @dx.op.unary.f32(i32 7, float %7709)  ; Saturate(value)
  %7711 = fsub fast float %7702, %7698
  %7712 = fsub fast float %7703, %7699
  %7713 = fsub fast float %7704, %7700
  %7714 = fmul fast float %7710, %7711
  %7715 = fmul fast float %7710, %7712
  %7716 = fmul fast float %7710, %7713
  %7717 = fadd fast float %7714, %7698
  %7718 = fadd fast float %7715, %7699
  %7719 = fadd fast float %7716, %7700
  %7720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7721 = extractvalue %dx.types.CBufRet.f32 %7720, 0
  %7722 = extractvalue %dx.types.CBufRet.f32 %7720, 1
  %7723 = fadd fast float %7722, %7721
  %7724 = call float @dx.op.unary.f32(i32 7, float %7723)  ; Saturate(value)
  %7725 = extractvalue %dx.types.CBufRet.f32 %7720, 2
  %7726 = extractvalue %dx.types.CBufRet.f32 %7720, 3
  %7727 = fadd fast float %7726, %7725
  %7728 = call float @dx.op.unary.f32(i32 7, float %7727)  ; Saturate(value)
  %7729 = fmul fast float %7724, %7708
  %7730 = fmul fast float %7729, %7728
  br label %7731

; <label>:7731                                    ; preds = %7692, %7611, %7446, %7428, %7426
  %7732 = phi float [ %7455, %7446 ], [ %7614, %7611 ], [ %7696, %7692 ], [ 0.000000e+00, %7426 ], [ 0.000000e+00, %7428 ]
  %7733 = phi float [ %7489, %7446 ], [ %7648, %7611 ], [ %7730, %7692 ], [ 0.000000e+00, %7426 ], [ 0.000000e+00, %7428 ]
  %7734 = phi float [ %7476, %7446 ], [ %7635, %7611 ], [ %7717, %7692 ], [ 0.000000e+00, %7426 ], [ 0.000000e+00, %7428 ]
  %7735 = phi float [ %7477, %7446 ], [ %7636, %7611 ], [ %7718, %7692 ], [ 0.000000e+00, %7426 ], [ 0.000000e+00, %7428 ]
  %7736 = phi float [ %7478, %7446 ], [ %7637, %7611 ], [ %7719, %7692 ], [ 0.000000e+00, %7426 ], [ 0.000000e+00, %7428 ]
  %7737 = fmul fast float %7369, %7733
  %7738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7739 = extractvalue %dx.types.CBufRet.f32 %7738, 2
  %7740 = fsub fast float %7376, %7739
  %7741 = fcmp fast olt float %7737, -2.000000e+01
  %7742 = call float @dx.op.unary.f32(i32 21, float %7737)  ; Exp(value)
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7745 = extractvalue %dx.types.CBufRet.f32 %7743, 3
  %7746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7747 = extractvalue %dx.types.CBufRet.f32 %7746, 2
  %7748 = fmul fast float %7745, %7740
  %7749 = call float @dx.op.unary.f32(i32 7, float %7748)  ; Saturate(value)
  %7750 = fsub fast float 1.000000e+00, %7749
  %7751 = fmul fast float %7361, 5.000000e-01
  %7752 = fadd fast float %7751, 5.000000e-01
  %7753 = call float @dx.op.unary.f32(i32 7, float %7752)  ; Saturate(value)
  %7754 = fsub fast float 1.000000e+00, %7753
  %7755 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7750)  ; FMax(a,b)
  %7756 = fdiv fast float %7754, %7755
  %7757 = fsub fast float %7740, %7318
  %7758 = call float @dx.op.unary.f32(i32 6, float %7757)  ; FAbs(value)
  %7759 = fmul fast float %7758, %7744
  %7760 = call float @dx.op.unary.f32(i32 7, float %7756)  ; Saturate(value)
  %7761 = fsub fast float 1.000000e+00, %7759
  %7762 = fmul fast float %7761, %7760
  %7763 = fadd fast float %7762, %7759
  %7764 = fmul fast float %7747, %7740
  %7765 = call float @dx.op.unary.f32(i32 7, float %7764)  ; Saturate(value)
  %7766 = fsub fast float 1.000000e+00, %7763
  %7767 = fmul fast float %7766, %7765
  %7768 = fadd fast float %7767, %7763
  %7769 = call float @dx.op.unary.f32(i32 7, float %7768)  ; Saturate(value)
  %7770 = fadd fast float %7742, -1.000000e+00
  %7771 = select i1 %7741, float -1.000000e+00, float %7770
  %7772 = fmul fast float %7769, %7771
  %7773 = fadd fast float %7772, 1.000000e+00
  %7774 = fsub fast float -0.000000e+00, %7772
  %7775 = fmul fast float %7734, %7774
  %7776 = fmul fast float %7735, %7774
  %7777 = fmul fast float %7736, %7774
  br label %7778

; <label>:7778                                    ; preds = %7731, %7327
  %7779 = phi float [ %7732, %7731 ], [ 0.000000e+00, %7327 ]
  %7780 = phi float [ %7773, %7731 ], [ 1.000000e+00, %7327 ]
  %7781 = phi float [ %7775, %7731 ], [ 0.000000e+00, %7327 ]
  %7782 = phi float [ %7776, %7731 ], [ 0.000000e+00, %7327 ]
  %7783 = phi float [ %7777, %7731 ], [ 0.000000e+00, %7327 ]
  %7784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7785 = extractvalue %dx.types.CBufRet.f32 %7784, 1
  %7786 = fsub fast float 1.000000e+00, %7780
  %7787 = fmul fast float %7786, %7362
  %7788 = fmul fast float %7787, %7785
  %7789 = fsub fast float %7362, %7788
  br i1 %7355, label %7790, label %7819, !dx.controlflow.hints !164

; <label>:7790                                    ; preds = %7778
  %7791 = fmul fast float %7363, %7352
  %7792 = fadd fast float %7791, %7353
  %7793 = call float @dx.op.unary.f32(i32 7, float %7792)  ; Saturate(value)
  %7794 = fmul fast float %7334, %7789
  %7795 = fsub fast float -0.000000e+00, %7794
  %7796 = fmul fast float %7335, %7789
  %7797 = fsub fast float -0.000000e+00, %7796
  %7798 = call float @dx.op.unary.f32(i32 21, float %7795)  ; Exp(value)
  %7799 = call float @dx.op.unary.f32(i32 21, float %7797)  ; Exp(value)
  %7800 = call float @dx.op.binary.f32(i32 35, float %7342, float %7798)  ; FMax(a,b)
  %7801 = call float @dx.op.binary.f32(i32 35, float %7342, float %7799)  ; FMax(a,b)
  %7802 = fsub fast float %7801, %7800
  %7803 = fmul fast float %7802, %7793
  %7804 = fadd fast float %7803, %7800
  %7805 = call float @dx.op.unary.f32(i32 7, float %7804)  ; Saturate(value)
  %7806 = fsub fast float %7339, %7344
  %7807 = fsub fast float %7340, %7345
  %7808 = fsub fast float %7341, %7346
  %7809 = fmul fast float %7793, %7806
  %7810 = fmul fast float %7793, %7807
  %7811 = fmul fast float %7793, %7808
  %7812 = fadd fast float %7809, %7344
  %7813 = fadd fast float %7810, %7345
  %7814 = fadd fast float %7811, %7346
  %7815 = fsub fast float 1.000000e+00, %7805
  %7816 = fmul fast float %7815, %7812
  %7817 = fmul fast float %7815, %7813
  %7818 = fmul fast float %7815, %7814
  br label %7878

; <label>:7819                                    ; preds = %7778
  %7820 = fmul fast float %7789, %7351
  %7821 = call float @dx.op.unary.f32(i32 7, float %7820)  ; Saturate(value)
  %7822 = fsub fast float 2.000000e+00, %7821
  %7823 = fmul fast float %7821, 9.921875e-01
  %7824 = fmul fast float %7823, %7822
  %7825 = fadd fast float %7824, 3.906250e-03
  %7826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %7825, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7827 = extractvalue %dx.types.ResRet.f32 %7826, 0
  %7828 = fsub fast float %7821, %7827
  %7829 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7828)  ; FMax(a,b)
  %7830 = fmul fast float %7337, %7318
  %7831 = call float @dx.op.unary.f32(i32 6, float %7830)  ; FAbs(value)
  %7832 = fcmp fast ogt float %7831, 0x3EB0C6F7A0000000
  br i1 %7832, label %7833, label %7839, !dx.controlflow.hints !165

; <label>:7833                                    ; preds = %7819
  %7834 = fmul fast float %7830, 0xBFF7154760000000
  %7835 = call float @dx.op.unary.f32(i32 21, float %7834)  ; Exp(value)
  %7836 = fsub fast float 1.000000e+00, %7835
  %7837 = fdiv fast float %7836, %7830
  %7838 = fmul fast float %7837, %7347
  br label %7839

; <label>:7839                                    ; preds = %7833, %7819
  %7840 = phi float [ %7838, %7833 ], [ %7347, %7819 ]
  %7841 = fadd fast float %7840, %7349
  %7842 = fmul fast float %7841, %7829
  %7843 = fmul fast float %7334, %7842
  %7844 = fsub fast float -0.000000e+00, %7843
  %7845 = fmul fast float %7335, %7842
  %7846 = fsub fast float -0.000000e+00, %7845
  %7847 = fmul fast float %7336, %7842
  %7848 = fsub fast float -0.000000e+00, %7847
  %7849 = call float @dx.op.unary.f32(i32 21, float %7844)  ; Exp(value)
  %7850 = call float @dx.op.unary.f32(i32 21, float %7846)  ; Exp(value)
  %7851 = call float @dx.op.unary.f32(i32 21, float %7848)  ; Exp(value)
  %7852 = fmul fast float %7363, %7363
  %7853 = fadd fast float %7852, 1.000000e+00
  %7854 = fmul fast float %7853, 0x3FAE8EC8A0000000
  %7855 = fmul fast float %7854, %7344
  %7856 = fmul fast float %7854, %7345
  %7857 = fmul fast float %7854, %7346
  %7858 = fmul fast float %7363, %7342
  %7859 = fsub fast float 1.000000e+00, %7858
  %7860 = fmul fast float %7342, %7342
  %7861 = fsub fast float 1.000000e+00, %7860
  %7862 = fmul fast float %7861, 0x3FB45F3060000000
  %7863 = fmul fast float %7859, %7859
  %7864 = fdiv fast float 1.000000e+00, %7863
  %7865 = fmul fast float %7862, %7864
  %7866 = fmul fast float %7865, %7339
  %7867 = fmul fast float %7865, %7340
  %7868 = fmul fast float %7865, %7341
  %7869 = fadd fast float %7866, %7855
  %7870 = fadd fast float %7867, %7856
  %7871 = fadd fast float %7868, %7857
  %7872 = fsub fast float 1.000000e+00, %7849
  %7873 = fsub fast float 1.000000e+00, %7850
  %7874 = fsub fast float 1.000000e+00, %7851
  %7875 = fmul fast float %7869, %7872
  %7876 = fmul fast float %7870, %7873
  %7877 = fmul fast float %7871, %7874
  br label %7878

; <label>:7878                                    ; preds = %7839, %7790
  %7879 = phi float [ %7816, %7790 ], [ %7875, %7839 ]
  %7880 = phi float [ %7817, %7790 ], [ %7876, %7839 ]
  %7881 = phi float [ %7818, %7790 ], [ %7877, %7839 ]
  %7882 = phi float [ %7805, %7790 ], [ %7849, %7839 ]
  %7883 = phi float [ %7805, %7790 ], [ %7850, %7839 ]
  %7884 = phi float [ %7805, %7790 ], [ %7851, %7839 ]
  br i1 %7371, label %7885, label %8083, !dx.controlflow.hints !166

; <label>:7885                                    ; preds = %7878
  %7886 = extractvalue %dx.types.CBufRet.f32 %7784, 0
  %7887 = fmul fast float %7886, %7786
  %7888 = fsub fast float %7781, %7879
  %7889 = fsub fast float %7782, %7880
  %7890 = fsub fast float %7783, %7881
  %7891 = fmul fast float %7887, %7888
  %7892 = fmul fast float %7887, %7889
  %7893 = fmul fast float %7887, %7890
  %7894 = fadd fast float %7891, %7879
  %7895 = fadd fast float %7892, %7880
  %7896 = fadd fast float %7893, %7881
  %7897 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7882)  ; FMax(a,b)
  %7898 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7883)  ; FMax(a,b)
  %7899 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7884)  ; FMax(a,b)
  %7900 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7780)  ; FMax(a,b)
  %7901 = call float @dx.op.binary.f32(i32 35, float %7779, float %7789)  ; FMax(a,b)
  %7902 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7901)  ; FMax(a,b)
  %7903 = fdiv fast float %7779, %7902
  %7904 = call float @dx.op.unary.f32(i32 7, float %7903)  ; Saturate(value)
  %7905 = fdiv fast float %7789, %7902
  %7906 = call float @dx.op.unary.f32(i32 7, float %7905)  ; Saturate(value)
  %7907 = fcmp fast une float %7900, 1.000000e+00
  br i1 %7907, label %7908, label %7921, !dx.controlflow.hints !167

; <label>:7908                                    ; preds = %7885
  %7909 = call float @dx.op.unary.f32(i32 23, float %7900)  ; Log(value)
  %7910 = fmul fast float %7909, 0x3FE62E4300000000
  %7911 = fmul fast float %7781, %7910
  %7912 = fsub fast float -0.000000e+00, %7911
  %7913 = fmul fast float %7782, %7910
  %7914 = fsub fast float -0.000000e+00, %7913
  %7915 = fmul fast float %7783, %7910
  %7916 = fsub fast float -0.000000e+00, %7915
  %7917 = fsub fast float 1.000000e+00, %7900
  %7918 = fdiv fast float %7912, %7917
  %7919 = fdiv fast float %7914, %7917
  %7920 = fdiv fast float %7916, %7917
  br label %7921

; <label>:7921                                    ; preds = %7908, %7885
  %7922 = phi float [ %7918, %7908 ], [ %7781, %7885 ]
  %7923 = phi float [ %7919, %7908 ], [ %7782, %7885 ]
  %7924 = phi float [ %7920, %7908 ], [ %7783, %7885 ]
  %7925 = phi float [ %7910, %7908 ], [ 0.000000e+00, %7885 ]
  %7926 = fcmp fast une float %7897, 1.000000e+00
  br i1 %7926, label %7927, label %7934, !dx.controlflow.hints !168

; <label>:7927                                    ; preds = %7921
  %7928 = call float @dx.op.unary.f32(i32 23, float %7897)  ; Log(value)
  %7929 = fmul fast float %7928, 0x3FE62E4300000000
  %7930 = fmul fast float %7894, %7929
  %7931 = fsub fast float -0.000000e+00, %7930
  %7932 = fsub fast float 1.000000e+00, %7897
  %7933 = fdiv fast float %7931, %7932
  br label %7934

; <label>:7934                                    ; preds = %7927, %7921
  %7935 = phi float [ %7933, %7927 ], [ %7894, %7921 ]
  %7936 = phi float [ %7929, %7927 ], [ 0.000000e+00, %7921 ]
  %7937 = fcmp fast une float %7898, 1.000000e+00
  br i1 %7937, label %7938, label %7945, !dx.controlflow.hints !168

; <label>:7938                                    ; preds = %7934
  %7939 = call float @dx.op.unary.f32(i32 23, float %7898)  ; Log(value)
  %7940 = fmul fast float %7939, 0x3FE62E4300000000
  %7941 = fmul fast float %7895, %7940
  %7942 = fsub fast float -0.000000e+00, %7941
  %7943 = fsub fast float 1.000000e+00, %7898
  %7944 = fdiv fast float %7942, %7943
  br label %7945

; <label>:7945                                    ; preds = %7938, %7934
  %7946 = phi float [ %7944, %7938 ], [ %7895, %7934 ]
  %7947 = phi float [ %7940, %7938 ], [ 0.000000e+00, %7934 ]
  %7948 = fcmp fast une float %7899, 1.000000e+00
  br i1 %7948, label %7949, label %7956, !dx.controlflow.hints !168

; <label>:7949                                    ; preds = %7945
  %7950 = call float @dx.op.unary.f32(i32 23, float %7899)  ; Log(value)
  %7951 = fmul fast float %7950, 0x3FE62E4300000000
  %7952 = fmul fast float %7896, %7951
  %7953 = fsub fast float -0.000000e+00, %7952
  %7954 = fsub fast float 1.000000e+00, %7899
  %7955 = fdiv fast float %7953, %7954
  br label %7956

; <label>:7956                                    ; preds = %7949, %7945
  %7957 = phi float [ %7955, %7949 ], [ %7896, %7945 ]
  %7958 = phi float [ %7951, %7949 ], [ 0.000000e+00, %7945 ]
  %7959 = fmul fast float %7922, %7906
  %7960 = fmul fast float %7923, %7906
  %7961 = fmul fast float %7924, %7906
  %7962 = fmul fast float %7925, %7906
  %7963 = fmul fast float %7935, %7904
  %7964 = fmul fast float %7946, %7904
  %7965 = fmul fast float %7957, %7904
  %7966 = fmul fast float %7936, %7904
  %7967 = fmul fast float %7947, %7904
  %7968 = fmul fast float %7958, %7904
  %7969 = fadd fast float %7963, %7959
  %7970 = fadd fast float %7964, %7960
  %7971 = fadd fast float %7965, %7961
  %7972 = fadd fast float %7966, %7962
  %7973 = fadd fast float %7967, %7962
  %7974 = fadd fast float %7968, %7962
  %7975 = fcmp fast une float %7972, 0.000000e+00
  br i1 %7975, label %7976, label %7983, !dx.controlflow.hints !169

; <label>:7976                                    ; preds = %7956
  %7977 = fmul fast float %7972, 0x3FF7154760000000
  %7978 = call float @dx.op.unary.f32(i32 21, float %7977)  ; Exp(value)
  %7979 = fsub fast float 1.000000e+00, %7978
  %7980 = fmul fast float %7969, %7979
  %7981 = fsub fast float -0.000000e+00, %7980
  %7982 = fdiv fast float %7981, %7972
  br label %7983

; <label>:7983                                    ; preds = %7976, %7956
  %7984 = phi float [ %7978, %7976 ], [ 1.000000e+00, %7956 ]
  %7985 = phi float [ %7982, %7976 ], [ %7969, %7956 ]
  %7986 = fcmp fast une float %7973, 0.000000e+00
  br i1 %7986, label %7987, label %7994, !dx.controlflow.hints !169

; <label>:7987                                    ; preds = %7983
  %7988 = fmul fast float %7973, 0x3FF7154760000000
  %7989 = call float @dx.op.unary.f32(i32 21, float %7988)  ; Exp(value)
  %7990 = fsub fast float 1.000000e+00, %7989
  %7991 = fmul fast float %7970, %7990
  %7992 = fsub fast float -0.000000e+00, %7991
  %7993 = fdiv fast float %7992, %7973
  br label %7994

; <label>:7994                                    ; preds = %7987, %7983
  %7995 = phi float [ %7989, %7987 ], [ 1.000000e+00, %7983 ]
  %7996 = phi float [ %7993, %7987 ], [ %7970, %7983 ]
  %7997 = fcmp fast une float %7974, 0.000000e+00
  br i1 %7997, label %7998, label %8005, !dx.controlflow.hints !169

; <label>:7998                                    ; preds = %7994
  %7999 = fmul fast float %7974, 0x3FF7154760000000
  %8000 = call float @dx.op.unary.f32(i32 21, float %7999)  ; Exp(value)
  %8001 = fsub fast float 1.000000e+00, %8000
  %8002 = fmul fast float %7971, %8001
  %8003 = fsub fast float -0.000000e+00, %8002
  %8004 = fdiv fast float %8003, %7974
  br label %8005

; <label>:8005                                    ; preds = %7998, %7994
  %8006 = phi float [ %8000, %7998 ], [ 1.000000e+00, %7994 ]
  %8007 = phi float [ %8004, %7998 ], [ %7971, %7994 ]
  %8008 = fcmp fast ogt float %7904, %7906
  br i1 %8008, label %8009, label %8029

; <label>:8009                                    ; preds = %8005
  %8010 = fsub fast float 1.000000e+00, %7906
  %8011 = fmul fast float %7922, %8010
  %8012 = fmul fast float %7923, %8010
  %8013 = fmul fast float %7924, %8010
  %8014 = fmul fast float %7925, %8010
  %8015 = fcmp fast une float %8014, 0.000000e+00
  br i1 %8015, label %8016, label %8067, !dx.controlflow.hints !170

; <label>:8016                                    ; preds = %8009
  %8017 = fmul fast float %8014, 0x3FF7154760000000
  %8018 = call float @dx.op.unary.f32(i32 21, float %8017)  ; Exp(value)
  %8019 = fsub fast float 1.000000e+00, %8018
  %8020 = fmul fast float %8011, %8019
  %8021 = fsub fast float -0.000000e+00, %8020
  %8022 = fmul fast float %8012, %8019
  %8023 = fsub fast float -0.000000e+00, %8022
  %8024 = fmul fast float %8013, %8019
  %8025 = fsub fast float -0.000000e+00, %8024
  %8026 = fdiv fast float %8021, %8014
  %8027 = fdiv fast float %8023, %8014
  %8028 = fdiv fast float %8025, %8014
  br label %8067

; <label>:8029                                    ; preds = %8005
  %8030 = fsub fast float 1.000000e+00, %7904
  %8031 = fmul fast float %7935, %8030
  %8032 = fmul fast float %7946, %8030
  %8033 = fmul fast float %7957, %8030
  %8034 = fmul fast float %7936, %8030
  %8035 = fmul fast float %7947, %8030
  %8036 = fmul fast float %7958, %8030
  %8037 = fcmp fast une float %8034, 0.000000e+00
  br i1 %8037, label %8038, label %8045, !dx.controlflow.hints !169

; <label>:8038                                    ; preds = %8029
  %8039 = fmul fast float %8034, 0x3FF7154760000000
  %8040 = call float @dx.op.unary.f32(i32 21, float %8039)  ; Exp(value)
  %8041 = fsub fast float 1.000000e+00, %8040
  %8042 = fmul fast float %8031, %8041
  %8043 = fsub fast float -0.000000e+00, %8042
  %8044 = fdiv fast float %8043, %8034
  br label %8045

; <label>:8045                                    ; preds = %8038, %8029
  %8046 = phi float [ %8044, %8038 ], [ %8031, %8029 ]
  %8047 = phi float [ %8040, %8038 ], [ 1.000000e+00, %8029 ]
  %8048 = fcmp fast une float %8035, 0.000000e+00
  br i1 %8048, label %8049, label %8056, !dx.controlflow.hints !169

; <label>:8049                                    ; preds = %8045
  %8050 = fmul fast float %8035, 0x3FF7154760000000
  %8051 = call float @dx.op.unary.f32(i32 21, float %8050)  ; Exp(value)
  %8052 = fsub fast float 1.000000e+00, %8051
  %8053 = fmul fast float %8032, %8052
  %8054 = fsub fast float -0.000000e+00, %8053
  %8055 = fdiv fast float %8054, %8035
  br label %8056

; <label>:8056                                    ; preds = %8049, %8045
  %8057 = phi float [ %8055, %8049 ], [ %8032, %8045 ]
  %8058 = phi float [ %8051, %8049 ], [ 1.000000e+00, %8045 ]
  %8059 = fcmp fast une float %8036, 0.000000e+00
  br i1 %8059, label %8060, label %8067, !dx.controlflow.hints !169

; <label>:8060                                    ; preds = %8056
  %8061 = fmul fast float %8036, 0x3FF7154760000000
  %8062 = call float @dx.op.unary.f32(i32 21, float %8061)  ; Exp(value)
  %8063 = fsub fast float 1.000000e+00, %8062
  %8064 = fmul fast float %8033, %8063
  %8065 = fsub fast float -0.000000e+00, %8064
  %8066 = fdiv fast float %8065, %8036
  br label %8067

; <label>:8067                                    ; preds = %8060, %8056, %8016, %8009
  %8068 = phi float [ %8066, %8060 ], [ %8028, %8016 ], [ %8013, %8009 ], [ %8033, %8056 ]
  %8069 = phi float [ %8057, %8060 ], [ %8027, %8016 ], [ %8012, %8009 ], [ %8057, %8056 ]
  %8070 = phi float [ %8046, %8060 ], [ %8026, %8016 ], [ %8011, %8009 ], [ %8046, %8056 ]
  %8071 = phi float [ %8062, %8060 ], [ %8018, %8016 ], [ 1.000000e+00, %8009 ], [ 1.000000e+00, %8056 ]
  %8072 = phi float [ %8058, %8060 ], [ %8018, %8016 ], [ 1.000000e+00, %8009 ], [ %8058, %8056 ]
  %8073 = phi float [ %8047, %8060 ], [ %8018, %8016 ], [ 1.000000e+00, %8009 ], [ %8047, %8056 ]
  %8074 = fmul fast float %8073, %7985
  %8075 = fmul fast float %8072, %7996
  %8076 = fmul fast float %8071, %8007
  %8077 = fadd fast float %8074, %8070
  %8078 = fadd fast float %8075, %8069
  %8079 = fadd fast float %8076, %8068
  %8080 = fmul fast float %8073, %7984
  %8081 = fmul fast float %8072, %7995
  %8082 = fmul fast float %8071, %8006
  br label %8083

; <label>:8083                                    ; preds = %8067, %7878
  %8084 = phi float [ %8082, %8067 ], [ %7884, %7878 ]
  %8085 = phi float [ %8081, %8067 ], [ %7883, %7878 ]
  %8086 = phi float [ %8080, %8067 ], [ %7882, %7878 ]
  %8087 = phi float [ %8079, %8067 ], [ %7881, %7878 ]
  %8088 = phi float [ %8078, %8067 ], [ %7880, %7878 ]
  %8089 = phi float [ %8077, %8067 ], [ %7879, %7878 ]
  %8090 = fmul fast float %8089, %7035
  %8091 = fmul fast float %8088, %7035
  %8092 = fmul fast float %8087, %7035
  %8093 = fmul fast float %8086, %7326
  %8094 = call float @dx.op.dot3.f32(i32 55, float %8086, float %8085, float %8084, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8095 = call float @dx.op.dot3.f32(i32 55, float %8090, float %8091, float %8092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8096 = select i1 %265, float %8094, float %8086
  %8097 = select i1 %265, float %8094, float %8085
  %8098 = select i1 %265, float 1.000000e+00, float %8084
  %8099 = select i1 %265, float %8095, float %8090
  %8100 = select i1 %265, float 0.000000e+00, float %8091
  %8101 = select i1 %265, float 0.000000e+00, float %8092
  %8102 = fmul fast float %8096, %7320
  %8103 = fmul fast float %8097, %7321
  %8104 = fmul fast float %8098, %7322
  %8105 = fadd fast float %8102, %8099
  %8106 = fadd fast float %8103, %8100
  %8107 = fadd fast float %8101, %8104
  %8108 = fmul fast float %8096, %7323
  %8109 = fmul fast float %8097, %7324
  %8110 = fmul fast float %8098, %7325
  %8111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.i32 %8111, 0
  %8113 = icmp eq i32 %8112, 0
  br i1 %8113, label %8481, label %8114, !dx.controlflow.hints !171

; <label>:8114                                    ; preds = %8083
  %8115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8116 = extractvalue %dx.types.CBufRet.f32 %8115, 2
  %8117 = extractvalue %dx.types.CBufRet.f32 %8115, 3
  %8118 = fmul fast float %8116, %106
  %8119 = fmul fast float %8117, %107
  %8120 = fmul fast float %8118, 2.000000e+00
  %8121 = fmul fast float %8119, 2.000000e+00
  %8122 = fsub fast float 1.000000e+00, %8120
  %8123 = fsub fast float 1.000000e+00, %8121
  %8124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8125 = extractvalue %dx.types.CBufRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.CBufRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.CBufRet.f32 %8124, 2
  %8128 = fmul fast float %8122, %8125
  %8129 = fmul fast float %8122, %8126
  %8130 = fmul fast float %8122, %8127
  %8131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8132 = extractvalue %dx.types.CBufRet.f32 %8131, 0
  %8133 = extractvalue %dx.types.CBufRet.f32 %8131, 1
  %8134 = extractvalue %dx.types.CBufRet.f32 %8131, 2
  %8135 = fmul fast float %8123, %8132
  %8136 = fmul fast float %8123, %8133
  %8137 = fmul fast float %8123, %8134
  %8138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8139 = extractvalue %dx.types.CBufRet.f32 %8138, 0
  %8140 = extractvalue %dx.types.CBufRet.f32 %8138, 1
  %8141 = extractvalue %dx.types.CBufRet.f32 %8138, 2
  %8142 = fadd fast float %8135, %8139
  %8143 = fadd fast float %8142, %8128
  %8144 = fadd fast float %8136, %8140
  %8145 = fadd fast float %8144, %8129
  %8146 = fadd fast float %8137, %8141
  %8147 = fadd fast float %8146, %8130
  %8148 = fmul fast float %8143, %7319
  %8149 = fmul fast float %8145, %7319
  %8150 = fmul fast float %8147, %7319
  %8151 = fmul fast float %8148, %8148
  %8152 = fmul fast float %8149, %8149
  %8153 = fadd fast float %8151, %8152
  %8154 = fmul fast float %8150, %8150
  %8155 = fadd fast float %8153, %8154
  %8156 = call float @dx.op.unary.f32(i32 24, float %8155)  ; Sqrt(value)
  %8157 = extractvalue %dx.types.CBufRet.f32 %7046, 0
  %8158 = fsub fast float %8156, %8157
  %8159 = extractvalue %dx.types.CBufRet.f32 %7046, 2
  %8160 = fmul fast float %8158, %8159
  %8161 = call float @dx.op.unary.f32(i32 7, float %8160)  ; Saturate(value)
  %8162 = fadd fast float %8161, -5.000000e-01
  %8163 = fmul fast float %8162, 2.000000e+00
  %8164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8165 = extractvalue %dx.types.CBufRet.f32 %8164, 2
  %8166 = call float @dx.op.binary.f32(i32 36, float %8165, float %8163)  ; FMin(a,b)
  %8167 = fsub fast float -0.000000e+00, %8165
  %8168 = fcmp fast ogt float %8166, %8167
  br i1 %8168, label %8169, label %8481, !dx.controlflow.hints !172

; <label>:8169                                    ; preds = %8114
  %8170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8171 = extractvalue %dx.types.CBufRet.f32 %8170, 3
  %8172 = fcmp fast ogt float %8171, 0.000000e+00
  br i1 %8172, label %8173, label %8248, !dx.controlflow.hints !173

; <label>:8173                                    ; preds = %8169
  %8174 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8175 = extractvalue %dx.types.Dimensions %8174, 0
  %8176 = sitofp i32 %8175 to float
  %8177 = extractvalue %dx.types.Dimensions %8174, 1
  %8178 = sitofp i32 %8177 to float
  %8179 = fmul fast float %8118, %8176
  %8180 = fmul fast float %8119, %8178
  %8181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8182 = extractvalue %dx.types.CBufRet.f32 %8181, 1
  %8183 = fsub fast float -0.000000e+00, %8182
  %8184 = fptoui float %8183 to i32
  %8185 = fptoui float %8179 to i32
  %8186 = fptoui float %8180 to i32
  %8187 = and i32 %8184, 31
  %8188 = lshr i32 %8185, %8187
  %8189 = lshr i32 %8186, %8187
  %8190 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8184, i32 %8188, i32 %8189, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8191 = extractvalue %dx.types.ResRet.f32 %8190, 0
  %8192 = fcmp fast olt float %8191, -1.000000e+00
  %8193 = fcmp fast ogt float %8191, -1.000000e+00
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 1
  %8196 = select i1 %8193, float %8195, float 1.000000e+00
  %8197 = fadd fast float %8191, 1.000000e+00
  %8198 = fmul fast float %8196, %8197
  %8199 = call float @dx.op.unary.f32(i32 6, float %8198)  ; FAbs(value)
  %8200 = extractvalue %dx.types.CBufRet.f32 %8194, 3
  %8201 = fcmp fast oge float %8199, %8200
  %8202 = select i1 %8201, float 0x4197782600000000, float %8199
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 0
  %8205 = extractvalue %dx.types.CBufRet.f32 %8203, 1
  %8206 = extractvalue %dx.types.CBufRet.f32 %8203, 2
  %8207 = select i1 %8192, float %8204, float %8125
  %8208 = select i1 %8192, float %8205, float %8126
  %8209 = select i1 %8192, float %8206, float %8127
  %8210 = fmul fast float %8207, %8122
  %8211 = fmul fast float %8208, %8122
  %8212 = fmul fast float %8209, %8122
  %8213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8214 = extractvalue %dx.types.CBufRet.f32 %8213, 0
  %8215 = extractvalue %dx.types.CBufRet.f32 %8213, 1
  %8216 = extractvalue %dx.types.CBufRet.f32 %8213, 2
  %8217 = select i1 %8192, float %8214, float %8132
  %8218 = select i1 %8192, float %8215, float %8133
  %8219 = select i1 %8192, float %8216, float %8134
  %8220 = fmul fast float %8217, %8123
  %8221 = fmul fast float %8218, %8123
  %8222 = fmul fast float %8219, %8123
  %8223 = fadd fast float %8220, %8210
  %8224 = fadd fast float %8221, %8211
  %8225 = fadd fast float %8222, %8212
  %8226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8227 = extractvalue %dx.types.CBufRet.f32 %8226, 0
  %8228 = extractvalue %dx.types.CBufRet.f32 %8226, 1
  %8229 = extractvalue %dx.types.CBufRet.f32 %8226, 2
  %8230 = select i1 %8192, float %8227, float %8139
  %8231 = select i1 %8192, float %8228, float %8140
  %8232 = select i1 %8192, float %8229, float %8141
  %8233 = fadd fast float %8223, %8230
  %8234 = fadd fast float %8224, %8231
  %8235 = fadd fast float %8225, %8232
  %8236 = fmul fast float %8233, %8202
  %8237 = fmul fast float %8234, %8202
  %8238 = fmul fast float %8235, %8202
  %8239 = fmul fast float %8236, %8236
  %8240 = fmul fast float %8237, %8237
  %8241 = fadd fast float %8239, %8240
  %8242 = fmul fast float %8238, %8238
  %8243 = fadd fast float %8241, %8242
  %8244 = call float @dx.op.unary.f32(i32 24, float %8243)  ; Sqrt(value)
  %8245 = fsub fast float %8244, %8157
  %8246 = fmul fast float %8245, %8159
  %8247 = call float @dx.op.unary.f32(i32 7, float %8246)  ; Saturate(value)
  br label %8248

; <label>:8248                                    ; preds = %8173, %8169
  %8249 = phi float [ %8247, %8173 ], [ 1.000000e+00, %8169 ]
  %8250 = fmul fast float %8166, 5.000000e-01
  %8251 = fadd fast float %8250, 5.000000e-01
  %8252 = call float @dx.op.unary.f32(i32 22, float %8251)  ; Frc(value)
  %8253 = call float @dx.op.unary.f32(i32 27, float %8252)  ; Round_ni(value)
  %8254 = call float @dx.op.unary.f32(i32 22, float %8252)  ; Frc(value)
  %8255 = fmul fast float %8254, 2.000000e+00
  %8256 = fadd fast float %8255, -1.000000e+00
  %8257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8118, float %8119, float %8253, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8258 = extractvalue %dx.types.ResRet.f32 %8257, 0
  %8259 = extractvalue %dx.types.ResRet.f32 %8257, 1
  %8260 = extractvalue %dx.types.ResRet.f32 %8257, 2
  %8261 = extractvalue %dx.types.ResRet.f32 %8257, 3
  %8262 = fadd fast float %8258, -5.000000e-01
  %8263 = fadd fast float %8260, -5.000000e-01
  %8264 = fmul fast float %8262, 0xBFD5555560000000
  %8265 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8263, float %8264)  ; FMad(a,b,c)
  %8266 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8259, float 0.000000e+00)  ; FMad(a,b,c)
  %8267 = fadd fast float %8266, %8261
  %8268 = fmul fast float %8262, -7.500000e-01
  %8269 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8263, float %8268)  ; FMad(a,b,c)
  %8270 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8259, float 0.000000e+00)  ; FMad(a,b,c)
  %8271 = fadd fast float %8270, %8261
  %8272 = call float @dx.op.binary.f32(i32 35, float %8265, float -1.000000e+00)  ; FMax(a,b)
  %8273 = call float @dx.op.binary.f32(i32 35, float %8267, float -1.000000e+00)  ; FMax(a,b)
  %8274 = call float @dx.op.binary.f32(i32 35, float %8269, float -1.000000e+00)  ; FMax(a,b)
  %8275 = call float @dx.op.binary.f32(i32 35, float %8271, float -1.000000e+00)  ; FMax(a,b)
  %8276 = call float @dx.op.binary.f32(i32 36, float %8272, float 1.000000e+00)  ; FMin(a,b)
  %8277 = call float @dx.op.binary.f32(i32 36, float %8273, float 1.000000e+00)  ; FMin(a,b)
  %8278 = call float @dx.op.binary.f32(i32 36, float %8274, float 1.000000e+00)  ; FMin(a,b)
  %8279 = call float @dx.op.binary.f32(i32 36, float %8275, float 1.000000e+00)  ; FMin(a,b)
  %8280 = fcmp fast olt float %8276, 0x3FEFFF8020000000
  br i1 %8280, label %8281, label %8396, !dx.controlflow.hints !174

; <label>:8281                                    ; preds = %8248
  %8282 = extractvalue %dx.types.CBufRet.f32 %8164, 3
  %8283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.f32 %8283, 0
  %8285 = extractvalue %dx.types.CBufRet.f32 %8283, 1
  %8286 = extractvalue %dx.types.CBufRet.f32 %8283, 2
  %8287 = extractvalue %dx.types.CBufRet.f32 %8283, 3
  %8288 = fsub fast float %8284, %8276
  %8289 = fsub fast float %8285, %8277
  %8290 = fsub fast float %8286, %8278
  %8291 = fsub fast float %8287, %8279
  %8292 = fmul fast float %8288, %8282
  %8293 = fmul fast float %8289, %8282
  %8294 = fmul fast float %8290, %8282
  %8295 = fmul fast float %8291, %8282
  %8296 = fadd fast float %8292, %8276
  %8297 = fadd fast float %8293, %8277
  %8298 = fsub fast float -0.000000e+00, %8297
  %8299 = fadd fast float %8294, %8278
  %8300 = fadd fast float %8295, %8279
  %8301 = fmul fast float %8296, %8296
  %8302 = fsub fast float %8297, %8301
  %8303 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8302)  ; FMax(a,b)
  %8304 = fdiv fast float 1.000000e+00, %8303
  %8305 = fmul fast float %8297, %8296
  %8306 = fsub fast float %8299, %8305
  %8307 = fsub fast float %8256, %8296
  %8308 = fmul fast float %8256, %8256
  %8309 = fsub fast float %8308, %8297
  %8310 = fmul fast float %8307, %8304
  %8311 = fmul fast float %8310, %8306
  %8312 = fsub fast float %8309, %8311
  %8313 = fmul fast float %8297, %8297
  %8314 = fsub fast float %8300, %8313
  %8315 = fmul fast float %8306, %8306
  %8316 = fmul fast float %8315, %8304
  %8317 = fsub fast float %8314, %8316
  %8318 = fdiv fast float %8312, %8317
  %8319 = fmul fast float %8306, %8318
  %8320 = fsub fast float %8307, %8319
  %8321 = fmul fast float %8320, %8304
  %8322 = fmul fast float %8321, %8296
  %8323 = fsub fast float 1.000000e+00, %8322
  %8324 = fmul fast float %8297, %8318
  %8325 = fsub fast float %8323, %8324
  %8326 = fmul fast float %8321, %8321
  %8327 = fmul fast float %8318, 4.000000e+00
  %8328 = fmul fast float %8327, %8325
  %8329 = fsub fast float %8326, %8328
  %8330 = call float @dx.op.unary.f32(i32 24, float %8329)  ; Sqrt(value)
  %8331 = fcmp fast oge float %8321, 0.000000e+00
  %8332 = fsub fast float -0.000000e+00, %8330
  %8333 = select i1 %8331, float %8332, float %8330
  %8334 = fsub fast float %8333, %8321
  %8335 = fdiv fast float %8334, %8318
  %8336 = fdiv fast float %8325, %8334
  %8337 = fmul fast float %8335, 5.000000e-01
  %8338 = fmul fast float %8336, 2.000000e+00
  %8339 = select i1 %8331, float %8337, float %8338
  %8340 = select i1 %8331, float %8338, float %8337
  %8341 = call float @dx.op.binary.f32(i32 35, float %8339, float %8340)  ; FMax(a,b)
  %8342 = call float @dx.op.binary.f32(i32 36, float %8339, float %8340)  ; FMin(a,b)
  %8343 = fcmp fast ogt float %8256, %8342
  br i1 %8343, label %8344, label %8354

; <label>:8344                                    ; preds = %8281
  %8345 = fsub fast float %8256, %8342
  %8346 = fsub fast float %8341, %8342
  %8347 = fmul fast float %8345, %8346
  %8348 = fmul fast float %8341, %8256
  %8349 = fadd fast float %8341, %8256
  %8350 = fmul fast float %8349, %8296
  %8351 = fadd fast float %8348, %8297
  %8352 = fsub fast float %8351, %8350
  %8353 = fdiv fast float %8352, %8347
  br label %8354

; <label>:8354                                    ; preds = %8344, %8281
  %8355 = phi float [ %8353, %8344 ], [ 0.000000e+00, %8281 ]
  %8356 = fcmp fast ogt float %8256, %8341
  %8357 = fsub fast float %8256, %8341
  br i1 %8356, label %8358, label %8368

; <label>:8358                                    ; preds = %8354
  %8359 = fsub fast float %8341, %8342
  %8360 = fmul fast float %8359, %8357
  %8361 = fmul fast float %8342, %8256
  %8362 = fadd fast float %8342, %8256
  %8363 = fmul fast float %8362, %8296
  %8364 = fsub fast float %8298, %8361
  %8365 = fadd fast float %8364, %8363
  %8366 = fdiv fast float %8365, %8360
  %8367 = fadd fast float %8366, %8355
  br label %8368

; <label>:8368                                    ; preds = %8358, %8354
  %8369 = phi float [ %8367, %8358 ], [ %8355, %8354 ]
  %8370 = fsub fast float %8256, %8342
  %8371 = fmul fast float %8370, %8357
  %8372 = fmul fast float %8342, %8341
  %8373 = fadd fast float %8342, %8341
  %8374 = fmul fast float %8373, %8296
  %8375 = fadd fast float %8372, %8297
  %8376 = fsub fast float %8375, %8374
  %8377 = fdiv fast float %8376, %8371
  %8378 = call float @dx.op.unary.f32(i32 7, float %8369)  ; Saturate(value)
  %8379 = fcmp fast oeq float %7047, 0.000000e+00
  %8380 = extractvalue %dx.types.CBufRet.f32 %8164, 0
  %8381 = fcmp fast oeq float %8380, 0.000000e+00
  %8382 = or i1 %8379, %8381
  %8383 = fmul fast float %8380, 2.000000e+00
  %8384 = fadd fast float %8165, %8166
  %8385 = fdiv fast float %8384, %8383
  %8386 = call float @dx.op.unary.f32(i32 7, float %8385)  ; Saturate(value)
  %8387 = fmul fast float %8386, 2.000000e+00
  %8388 = fsub fast float 3.000000e+00, %8387
  %8389 = fmul fast float %8386, %8386
  %8390 = fmul fast float %8389, %8388
  %8391 = select i1 %8382, float 1.000000e+00, float %8390
  %8392 = fmul fast float %8377, %7047
  %8393 = fadd fast float %8378, %8392
  %8394 = call float @dx.op.unary.f32(i32 7, float %8393)  ; Saturate(value)
  %8395 = fmul fast float %8391, %8394
  br label %8396

; <label>:8396                                    ; preds = %8368, %8248
  %8397 = phi float [ %8395, %8368 ], [ 0.000000e+00, %8248 ]
  %8398 = fsub fast float 1.000000e+00, %8397
  %8399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8118, float %8119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8400 = extractvalue %dx.types.ResRet.f32 %8399, 0
  %8401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.i32 %8401, 2
  %8403 = icmp eq i32 %8402, 0
  br i1 %8403, label %8409, label %8404

; <label>:8404                                    ; preds = %8396
  %8405 = call float @dx.op.unary.f32(i32 7, float %8397)  ; Saturate(value)
  %8406 = fadd fast float %8400, -1.000000e+00
  %8407 = fmul fast float %8405, %8406
  %8408 = fadd fast float %8407, 1.000000e+00
  br label %8409

; <label>:8409                                    ; preds = %8404, %8396
  %8410 = phi float [ %8408, %8404 ], [ %8398, %8396 ]
  br i1 %8172, label %8411, label %8429

; <label>:8411                                    ; preds = %8409
  %8412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8413 = extractvalue %dx.types.CBufRet.f32 %8412, 1
  %8414 = fsub fast float %8249, %8413
  %8415 = call float @dx.op.unary.f32(i32 7, float %8414)  ; Saturate(value)
  %8416 = fsub fast float %8249, %8171
  %8417 = call float @dx.op.unary.f32(i32 7, float %8416)  ; Saturate(value)
  %8418 = fsub fast float %8415, %8417
  %8419 = fsub fast float %8251, %8417
  %8420 = fdiv fast float %8419, %8418
  %8421 = call float @dx.op.unary.f32(i32 7, float %8420)  ; Saturate(value)
  %8422 = fmul fast float %8421, 2.000000e+00
  %8423 = fsub fast float 3.000000e+00, %8422
  %8424 = fsub fast float %8400, %8410
  %8425 = fmul fast float %8421, %8421
  %8426 = fmul fast float %8425, %8424
  %8427 = fmul fast float %8426, %8423
  %8428 = fadd fast float %8427, %8410
  br label %8429

; <label>:8429                                    ; preds = %8411, %8409
  %8430 = phi float [ %8428, %8411 ], [ %8410, %8409 ]
  %8431 = call float @dx.op.binary.f32(i32 35, float %8400, float %8430)  ; FMax(a,b)
  %8432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8433 = extractvalue %dx.types.CBufRet.i32 %8432, 2
  %8434 = and i32 %8433, 1
  %8435 = icmp eq i32 %8434, 0
  %8436 = fcmp fast une float %8431, 1.000000e+00
  %8437 = and i1 %8436, %8435
  br i1 %8437, label %8438, label %8457

; <label>:8438                                    ; preds = %8429
  %8439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8118, float %8119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8440 = extractvalue %dx.types.ResRet.f32 %8439, 0
  %8441 = extractvalue %dx.types.ResRet.f32 %8439, 1
  %8442 = extractvalue %dx.types.ResRet.f32 %8439, 2
  %8443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8443, 1
  %8445 = fmul fast float %8444, %8440
  %8446 = fmul fast float %8444, %8441
  %8447 = fmul fast float %8444, %8442
  %8448 = fcmp fast ogt float %8400, 0x3FEFFF2E40000000
  %8449 = fsub fast float 1.000000e+00, %8431
  %8450 = fsub fast float 1.000000e+00, %8400
  %8451 = fdiv fast float %8449, %8450
  %8452 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8453 = select i1 %8448, float 0.000000e+00, float %8452
  %8454 = fmul fast float %8445, %8453
  %8455 = fmul fast float %8446, %8453
  %8456 = fmul fast float %8447, %8453
  br label %8457

; <label>:8457                                    ; preds = %8438, %8429
  %8458 = phi float [ 0.000000e+00, %8429 ], [ %8454, %8438 ]
  %8459 = phi float [ 0.000000e+00, %8429 ], [ %8455, %8438 ]
  %8460 = phi float [ 0.000000e+00, %8429 ], [ %8456, %8438 ]
  %8461 = fmul fast float %8458, %7035
  %8462 = fmul fast float %8459, %7035
  %8463 = fmul fast float %8460, %7035
  %8464 = fmul fast float %8431, %8093
  %8465 = call float @dx.op.dot3.f32(i32 55, float %8431, float %8431, float %8431, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8466 = call float @dx.op.dot3.f32(i32 55, float %8461, float %8462, float %8463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8467 = select i1 %265, float %8465, float %8431
  %8468 = select i1 %265, float 1.000000e+00, float %8431
  %8469 = select i1 %265, float %8466, float %8461
  %8470 = select i1 %265, float 0.000000e+00, float %8462
  %8471 = select i1 %265, float 0.000000e+00, float %8463
  %8472 = fmul fast float %8467, %8105
  %8473 = fmul fast float %8467, %8106
  %8474 = fmul fast float %8468, %8107
  %8475 = fadd fast float %8472, %8469
  %8476 = fadd fast float %8473, %8470
  %8477 = fadd fast float %8471, %8474
  %8478 = fmul fast float %8467, %8108
  %8479 = fmul fast float %8467, %8109
  %8480 = fmul fast float %8468, %8110
  br label %8481

; <label>:8481                                    ; preds = %8457, %8114, %8083, %7315
  %8482 = phi float [ %7320, %7315 ], [ %8105, %8083 ], [ %8475, %8457 ], [ %8105, %8114 ]
  %8483 = phi float [ %7321, %7315 ], [ %8106, %8083 ], [ %8476, %8457 ], [ %8106, %8114 ]
  %8484 = phi float [ %7322, %7315 ], [ %8107, %8083 ], [ %8477, %8457 ], [ %8107, %8114 ]
  %8485 = phi float [ %7323, %7315 ], [ %8108, %8083 ], [ %8478, %8457 ], [ %8108, %8114 ]
  %8486 = phi float [ %7324, %7315 ], [ %8109, %8083 ], [ %8479, %8457 ], [ %8109, %8114 ]
  %8487 = phi float [ %7325, %7315 ], [ %8110, %8083 ], [ %8480, %8457 ], [ %8110, %8114 ]
  %8488 = phi float [ %7326, %7315 ], [ %8093, %8083 ], [ %8464, %8457 ], [ %8093, %8114 ]
  %8489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8490 = extractvalue %dx.types.CBufRet.f32 %8489, 2
  %8491 = extractvalue %dx.types.CBufRet.f32 %8489, 3
  %8492 = fmul fast float %8490, %106
  %8493 = fmul fast float %8491, %107
  %8494 = call float @dx.op.unary.f32(i32 7, float %8492)  ; Saturate(value)
  %8495 = call float @dx.op.unary.f32(i32 7, float %8493)  ; Saturate(value)
  %8496 = select i1 %7057, i32 2, i32 0
  %8497 = or i32 %8496, 1
  %8498 = uitofp i32 %8497 to float
  %8499 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8494, float %8495, float %8498, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8500 = extractvalue %dx.types.ResRet.f32 %8499, 0
  %8501 = extractvalue %dx.types.ResRet.f32 %8499, 1
  %8502 = extractvalue %dx.types.ResRet.f32 %8499, 2
  %8503 = extractvalue %dx.types.ResRet.f32 %8499, 3
  %8504 = add nuw nsw i32 %8496, 2
  %8505 = uitofp i32 %8504 to float
  %8506 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %8494, float %8495, float %8505, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8507 = extractvalue %dx.types.ResRet.f32 %8506, 0
  %8508 = extractvalue %dx.types.ResRet.f32 %8506, 1
  %8509 = extractvalue %dx.types.ResRet.f32 %8506, 2
  %8510 = extractvalue %dx.types.ResRet.f32 %8506, 3
  %8511 = call float @dx.op.binary.f32(i32 35, float %8501, float %8502)  ; FMax(a,b)
  %8512 = call float @dx.op.binary.f32(i32 35, float %8500, float %8511)  ; FMax(a,b)
  %8513 = call float @dx.op.binary.f32(i32 35, float %8512, float %8503)  ; FMax(a,b)
  %8514 = call float @dx.op.binary.f32(i32 36, float %8508, float %8509)  ; FMin(a,b)
  %8515 = call float @dx.op.binary.f32(i32 36, float %8507, float %8514)  ; FMin(a,b)
  %8516 = call float @dx.op.binary.f32(i32 36, float %8515, float %8510)  ; FMin(a,b)
  %8517 = fmul fast float %8513, 2.550000e+02
  %8518 = fadd fast float %8517, 0x3F70101020000000
  %8519 = fptoui float %8518 to i32
  %8520 = fmul fast float %8516, 2.550000e+02
  %8521 = fadd fast float %8520, 0x3F70101020000000
  %8522 = fptoui float %8521 to i32
  %8523 = icmp ult i32 %8519, %8522
  br i1 %8523, label %8524, label %8693

; <label>:8524                                    ; preds = %8481
  %8525 = fcmp fast ogt float %96, 9.843750e-01
  %8526 = fadd fast float %7319, -4.000000e+00
  %8527 = select i1 %8525, float -4.000000e+00, float %8526
  %8528 = call float @dx.op.binary.f32(i32 35, float %8527, float 0.000000e+00)  ; FMax(a,b)
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 0
  %8531 = fadd fast float %8530, %8528
  %8532 = extractvalue %dx.types.CBufRet.f32 %8529, 2
  %8533 = fmul fast float %8531, %8532
  %8534 = call float @dx.op.unary.f32(i32 23, float %8533)  ; Log(value)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8529, 3
  %8536 = fmul fast float %8535, %8534
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 2
  %8539 = fmul fast float %8536, %8538
  %8540 = call float @dx.op.unary.f32(i32 7, float %8539)  ; Saturate(value)
  %8541 = uitofp i32 %8519 to float
  %8542 = uitofp i32 %8522 to float
  %8543 = fadd fast float %8541, 5.000000e-01
  %8544 = fadd fast float %8542, 5.000000e-01
  %8545 = fmul fast float %8538, %8543
  %8546 = fmul fast float %8538, %8544
  %8547 = fadd fast float %8545, 0x3F0FFB4800000000
  %8548 = fadd fast float %8546, 0xBF0FFB4800000000
  %8549 = call float @dx.op.binary.f32(i32 35, float %8540, float %8547)  ; FMax(a,b)
  %8550 = call float @dx.op.binary.f32(i32 36, float %8549, float %8548)  ; FMin(a,b)
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 1
  %8553 = extractvalue %dx.types.CBufRet.f32 %8551, 2
  %8554 = extractvalue %dx.types.CBufRet.f32 %8551, 0
  %8555 = select i1 %7057, float %8554, float 0.000000e+00
  %8556 = fmul fast float %8552, %8550
  %8557 = fadd fast float %8555, %8556
  %8558 = fadd fast float %8555, %8553
  %8559 = fsub fast float %8552, %8553
  %8560 = fadd fast float %8559, %8555
  %8561 = call float @dx.op.binary.f32(i32 35, float %8557, float %8558)  ; FMax(a,b)
  %8562 = call float @dx.op.binary.f32(i32 36, float %8561, float %8560)  ; FMin(a,b)
  %8563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %8494, float %8495, float %8562, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8564 = extractvalue %dx.types.ResRet.f32 %8563, 0
  %8565 = extractvalue %dx.types.ResRet.f32 %8563, 1
  %8566 = extractvalue %dx.types.ResRet.f32 %8563, 2
  %8567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8568 = extractvalue %dx.types.CBufRet.i32 %8567, 0
  %8569 = extractvalue %dx.types.CBufRet.i32 %8567, 1
  %8570 = uitofp i32 %8568 to float
  %8571 = uitofp i32 %8569 to float
  %8572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8573 = extractvalue %dx.types.CBufRet.f32 %8572, 0
  %8574 = extractvalue %dx.types.CBufRet.f32 %8572, 1
  %8575 = fmul fast float %8570, %8494
  %8576 = fmul fast float %8571, %8495
  %8577 = fadd fast float %8575, -5.000000e-01
  %8578 = fadd fast float %8576, -5.000000e-01
  %8579 = call float @dx.op.unary.f32(i32 22, float %8577)  ; Frc(value)
  %8580 = call float @dx.op.unary.f32(i32 22, float %8578)  ; Frc(value)
  %8581 = fmul fast float %8579, %8579
  %8582 = fmul fast float %8581, %8579
  %8583 = fsub fast float 3.000000e+00, %8579
  %8584 = fmul fast float %8581, %8583
  %8585 = fmul fast float %8579, 3.000000e+00
  %8586 = fmul fast float %8582, 3.000000e+00
  %8587 = fmul fast float %8581, 6.000000e+00
  %8588 = fsub fast float %8586, %8587
  %8589 = fadd fast float %8588, 4.000000e+00
  %8590 = fmul fast float %8589, 0x3FC5555560000000
  %8591 = fmul fast float %8582, -3.000000e+00
  %8592 = fadd fast float %8581, %8579
  %8593 = fmul fast float %8592, 3.000000e+00
  %8594 = fadd fast float %8591, 1.000000e+00
  %8595 = fadd fast float %8594, %8593
  %8596 = fmul fast float %8582, 0x3FC5555560000000
  %8597 = fmul fast float %8580, %8580
  %8598 = fmul fast float %8597, %8580
  %8599 = fsub fast float 3.000000e+00, %8580
  %8600 = fmul fast float %8597, %8599
  %8601 = fmul fast float %8580, 3.000000e+00
  %8602 = fmul fast float %8598, 3.000000e+00
  %8603 = fmul fast float %8597, 6.000000e+00
  %8604 = fsub fast float %8602, %8603
  %8605 = fadd fast float %8604, 4.000000e+00
  %8606 = fmul fast float %8605, 0x3FC5555560000000
  %8607 = fmul fast float %8598, -3.000000e+00
  %8608 = fadd fast float %8597, %8580
  %8609 = fmul fast float %8608, 3.000000e+00
  %8610 = fadd fast float %8607, 1.000000e+00
  %8611 = fadd fast float %8610, %8609
  %8612 = fmul fast float %8598, 0x3FC5555560000000
  %8613 = fadd fast float %8579, 1.000000e+00
  %8614 = fsub fast float 1.000000e+00, %8585
  %8615 = fadd fast float %8614, %8584
  %8616 = fadd fast float %8615, %8589
  %8617 = fmul fast float %8616, 0x3FC5555560000000
  %8618 = fdiv fast float %8590, %8617
  %8619 = fsub fast float %8613, %8618
  %8620 = fsub fast float 1.000000e+00, %8579
  %8621 = fadd fast float %8595, %8582
  %8622 = fmul fast float %8621, 0x3FC5555560000000
  %8623 = fdiv fast float %8596, %8622
  %8624 = fadd fast float %8620, %8623
  %8625 = fadd fast float %8580, 1.000000e+00
  %8626 = fsub fast float 1.000000e+00, %8601
  %8627 = fadd fast float %8626, %8600
  %8628 = fadd fast float %8627, %8605
  %8629 = fmul fast float %8628, 0x3FC5555560000000
  %8630 = fdiv fast float %8606, %8629
  %8631 = fsub fast float %8625, %8630
  %8632 = fsub fast float 1.000000e+00, %8580
  %8633 = fadd fast float %8611, %8598
  %8634 = fmul fast float %8633, 0x3FC5555560000000
  %8635 = fdiv fast float %8612, %8634
  %8636 = fadd fast float %8635, %8632
  %8637 = fmul fast float %8619, %8573
  %8638 = fsub fast float %8494, %8637
  %8639 = fmul fast float %8624, %8573
  %8640 = fadd fast float %8639, %8494
  %8641 = fmul fast float %8636, %8574
  %8642 = fadd fast float %8641, %8495
  %8643 = fmul fast float %8631, %8574
  %8644 = fsub fast float %8495, %8643
  %8645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8638, float %8644, float %8562, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8646 = extractvalue %dx.types.ResRet.f32 %8645, 0
  %8647 = extractvalue %dx.types.ResRet.f32 %8645, 1
  %8648 = extractvalue %dx.types.ResRet.f32 %8645, 2
  %8649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8640, float %8644, float %8562, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8650 = extractvalue %dx.types.ResRet.f32 %8649, 0
  %8651 = extractvalue %dx.types.ResRet.f32 %8649, 1
  %8652 = extractvalue %dx.types.ResRet.f32 %8649, 2
  %8653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8638, float %8642, float %8562, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8654 = extractvalue %dx.types.ResRet.f32 %8653, 0
  %8655 = extractvalue %dx.types.ResRet.f32 %8653, 1
  %8656 = extractvalue %dx.types.ResRet.f32 %8653, 2
  %8657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8640, float %8642, float %8562, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8658 = extractvalue %dx.types.ResRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.ResRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.ResRet.f32 %8657, 2
  %8661 = fsub fast float %8654, %8646
  %8662 = fsub fast float %8655, %8647
  %8663 = fsub fast float %8656, %8648
  %8664 = fmul fast float %8661, %8634
  %8665 = fmul fast float %8662, %8634
  %8666 = fmul fast float %8663, %8634
  %8667 = fadd fast float %8664, %8646
  %8668 = fadd fast float %8665, %8647
  %8669 = fadd fast float %8666, %8648
  %8670 = fsub fast float %8658, %8650
  %8671 = fsub fast float %8659, %8651
  %8672 = fsub fast float %8660, %8652
  %8673 = fmul fast float %8670, %8634
  %8674 = fmul fast float %8671, %8634
  %8675 = fmul fast float %8672, %8634
  %8676 = fsub fast float %8650, %8667
  %8677 = fadd fast float %8676, %8673
  %8678 = fsub fast float %8651, %8668
  %8679 = fadd fast float %8678, %8674
  %8680 = fsub fast float %8652, %8669
  %8681 = fadd fast float %8680, %8675
  %8682 = fmul fast float %8677, %8622
  %8683 = fmul fast float %8679, %8622
  %8684 = fmul fast float %8681, %8622
  %8685 = fadd fast float %8682, %8667
  %8686 = fadd fast float %8683, %8668
  %8687 = fadd fast float %8684, %8669
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 1
  %8690 = fmul fast float %8685, %8689
  %8691 = fmul fast float %8686, %8689
  %8692 = fmul fast float %8687, %8689
  br label %8693

; <label>:8693                                    ; preds = %8524, %8481
  %8694 = phi float [ %8564, %8524 ], [ 1.000000e+00, %8481 ]
  %8695 = phi float [ %8565, %8524 ], [ 1.000000e+00, %8481 ]
  %8696 = phi float [ %8566, %8524 ], [ 1.000000e+00, %8481 ]
  %8697 = phi float [ %8690, %8524 ], [ 0.000000e+00, %8481 ]
  %8698 = phi float [ %8691, %8524 ], [ 0.000000e+00, %8481 ]
  %8699 = phi float [ %8692, %8524 ], [ 0.000000e+00, %8481 ]
  %8700 = fmul fast float %8697, %7035
  %8701 = fmul fast float %8698, %7035
  %8702 = fmul fast float %8699, %7035
  %8703 = fmul fast float %8694, %8488
  %8704 = call float @dx.op.dot3.f32(i32 55, float %8694, float %8695, float %8696, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8705 = call float @dx.op.dot3.f32(i32 55, float %8700, float %8701, float %8702, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8706 = select i1 %265, float %8704, float %8694
  %8707 = select i1 %265, float %8704, float %8695
  %8708 = select i1 %265, float 1.000000e+00, float %8696
  %8709 = select i1 %265, float %8705, float %8700
  %8710 = select i1 %265, float 0.000000e+00, float %8701
  %8711 = select i1 %265, float 0.000000e+00, float %8702
  %8712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8713 = extractvalue %dx.types.CBufRet.i32 %8712, 3
  %8714 = and i32 %8713, 3
  %8715 = icmp ne i32 %8714, 0
  %8716 = and i32 %8713, 4
  %8717 = icmp ne i32 %8716, 0
  %8718 = and i1 %8715, %8717
  %8719 = and i1 %265, %8718
  br i1 %8719, label %8720, label %8726

; <label>:8720                                    ; preds = %8693
  %8721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8721, 1
  %8723 = fadd fast float %8703, -1.000000e+00
  %8724 = fmul fast float %8722, %8723
  %8725 = fadd fast float %8724, 1.000000e+00
  br label %8726

; <label>:8726                                    ; preds = %8720, %8693
  %8727 = phi float [ %8725, %8720 ], [ %8703, %8693 ]
  %8728 = fadd fast float %8485, %8482
  %8729 = fmul fast float %8706, %8728
  %8730 = fadd fast float %8729, %8709
  %8731 = fadd fast float %8486, %8483
  %8732 = fmul fast float %8707, %8731
  %8733 = fadd fast float %8732, %8710
  %8734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8735 = extractvalue %dx.types.CBufRet.f32 %8734, 0
  br i1 %265, label %8736, label %8760

; <label>:8736                                    ; preds = %8726
  %8737 = fadd fast float %8730, %8733
  %8738 = fmul fast float %8735, %8737
  %8739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.f32 %8739, 3
  %8741 = extractvalue %dx.types.CBufRet.f32 %7039, 1
  %8742 = fsub fast float %7044, %7038
  %8743 = fadd fast float %8742, %7045
  %8744 = fsub fast float %8743, %8741
  %8745 = extractvalue %dx.types.CBufRet.f32 %7039, 2
  %8746 = fmul fast float %8744, %8745
  %8747 = call float @dx.op.unary.f32(i32 7, float %8746)  ; Saturate(value)
  %8748 = fsub fast float %8747, %8740
  %8749 = fmul fast float %8748, %8727
  %8750 = fadd fast float %8749, %8740
  %8751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8751, 0
  %8753 = fsub fast float %8750, %8752
  %8754 = fmul fast float %8753, 1.000000e+01
  %8755 = call float @dx.op.unary.f32(i32 7, float %8754)  ; Saturate(value)
  %8756 = fsub fast float %3893, %7035
  %8757 = fmul fast float %8755, %8756
  %8758 = fadd fast float %8757, %7035
  %8759 = fmul fast float %8758, %8750
  br label %8784

; <label>:8760                                    ; preds = %8726
  %8761 = fadd fast float %8487, %8484
  %8762 = fmul fast float %8708, %8761
  %8763 = fadd fast float %8762, %8711
  %8764 = fmul fast float %8735, %8730
  %8765 = fmul fast float %8735, %8733
  %8766 = fmul fast float %8735, %8763
  %8767 = call float @dx.op.binary.f32(i32 35, float %8765, float %8766)  ; FMax(a,b)
  %8768 = call float @dx.op.binary.f32(i32 35, float %8764, float %8767)  ; FMax(a,b)
  %8769 = call float @dx.op.binary.f32(i32 35, float %8768, float %7035)  ; FMax(a,b)
  %8770 = fcmp fast ugt float %8769, 0x3F10000000000000
  br i1 %8770, label %8772, label %8771

; <label>:8771                                    ; preds = %8760
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8772

; <label>:8772                                    ; preds = %8771, %8760
  %8773 = add i32 %55, 356
  %8774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %8773, i32 undef)  ; BufferLoad(srv,index,wot)
  %8775 = extractvalue %dx.types.ResRet.i32 %8774, 0
  %8776 = and i32 %8775, 32
  %8777 = icmp eq i32 %8776, 0
  br i1 %8777, label %8784, label %8778

; <label>:8778                                    ; preds = %8772
  %8779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8780 = extractvalue %dx.types.CBufRet.f32 %8779, 0
  %8781 = fmul fast float %8780, 0x3FE99999A0000000
  %8782 = fadd fast float %8780, %8764
  %8783 = fadd fast float %8781, %8766
  br label %8784

; <label>:8784                                    ; preds = %8778, %8772, %8736
  %8785 = phi float [ %8738, %8736 ], [ %8782, %8778 ], [ %8764, %8772 ]
  %8786 = phi float [ %8759, %8736 ], [ %8765, %8778 ], [ %8765, %8772 ]
  %8787 = phi float [ %8758, %8736 ], [ %8783, %8778 ], [ %8766, %8772 ]
  %8788 = phi float [ %8758, %8736 ], [ %7035, %8778 ], [ %7035, %8772 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8789 = call float @dx.op.binary.f32(i32 36, float %8785, float 3.225500e+04)  ; FMin(a,b)
  %8790 = call float @dx.op.binary.f32(i32 36, float %8786, float 3.225500e+04)  ; FMin(a,b)
  %8791 = call float @dx.op.binary.f32(i32 36, float %8787, float 3.225500e+04)  ; FMin(a,b)
  %8792 = call float @dx.op.binary.f32(i32 36, float %8788, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8789)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8790)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8791)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8792)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !31}
!31 = !{i32 0, i32 5}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
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
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !95}
!70 = !{!71, !93, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92}
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
!83 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 7, i8 0, !79}
!84 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 8, i8 0, !74}
!85 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 9, i8 0, !77}
!86 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 10, i8 0, !74}
!87 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 11, i8 0, !79}
!88 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !73, i8 1, i32 1, i8 1, i32 12, i8 0, !89}
!89 = !{i32 3, i32 1}
!90 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !73, i8 1, i32 1, i8 2, i32 12, i8 1, !89}
!91 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 13, i8 0, !89}
!92 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!93 = !{!94}
!94 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!95 = !{i32 0, i64 16}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !127, i64 0}
!127 = !{!"float", !103, i64 0}
!128 = !{!129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!129 = distinct !{!129, !130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!130 = distinct !{!130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!131 = distinct !{!131, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!132 = distinct !{!132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!133 = distinct !{!133, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!143 = distinct !{!143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!152 = !{!148}
!153 = !{!149, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!162 = !{!158}
!163 = !{!159, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 2}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}

