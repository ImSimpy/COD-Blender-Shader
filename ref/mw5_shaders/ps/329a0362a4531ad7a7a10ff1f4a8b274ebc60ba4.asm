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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 8b0ba7eeb9325ffed5ada909731e66f5
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
; SV_Target                1                              
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
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 49, 52 }
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
  %459 = add i32 %55, 508
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
  br i1 %515, label %1134, label %516

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
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 1024
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1071, label %1041

; <label>:1041                                    ; preds = %1033
  %1042 = add i32 %55, 152
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 255
  %1046 = uitofp i32 %1045 to float
  %1047 = fmul fast float %1046, 0x3F70101020000000
  %1048 = lshr i32 %1044, 8
  %1049 = and i32 %1048, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = fmul fast float %1050, 0x3F70101020000000
  %1052 = lshr i32 %1044, 16
  %1053 = and i32 %1052, 255
  %1054 = uitofp i32 %1053 to float
  %1055 = fmul fast float %1054, 0x3F70101020000000
  %1056 = fmul fast float %1047, %1047
  %1057 = fmul fast float %1051, %1051
  %1058 = fmul fast float %1055, %1055
  %1059 = add i32 %55, 476
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = add i32 %1061, 0
  %1063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1064 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1063, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.ResRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.ResRet.f32 %1064, 2
  %1068 = fmul fast float %1056, %1065
  %1069 = fmul fast float %1057, %1066
  %1070 = fmul fast float %1058, %1067
  br label %1071

; <label>:1071                                    ; preds = %1041, %1033
  %1072 = phi float [ %1068, %1041 ], [ 0.000000e+00, %1033 ]
  %1073 = phi float [ %1069, %1041 ], [ 0.000000e+00, %1033 ]
  %1074 = phi float [ %1070, %1041 ], [ 0.000000e+00, %1033 ]
  %1075 = fcmp fast ogt float %1072, 0.000000e+00
  %1076 = fcmp fast ogt float %1073, 0.000000e+00
  %1077 = fcmp fast ogt float %1074, 0.000000e+00
  %1078 = call float @dx.op.unary.f32(i32 23, float %1072)  ; Log(value)
  %1079 = call float @dx.op.unary.f32(i32 23, float %1073)  ; Log(value)
  %1080 = call float @dx.op.unary.f32(i32 23, float %1074)  ; Log(value)
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = lshr i32 %1082, 7
  %1084 = and i32 %1083, 32752
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = fmul fast float %1078, 0xBFE62E4300000000
  %1087 = fmul fast float %1086, %1085
  %1088 = fmul fast float %1079, 0xBFE62E4300000000
  %1089 = fmul fast float %1088, %1085
  %1090 = fmul fast float %1080, 0xBFE62E4300000000
  %1091 = fmul fast float %1090, %1085
  %1092 = select i1 %1075, float %1087, float 1.270000e+02
  %1093 = select i1 %1076, float %1089, float 1.270000e+02
  %1094 = select i1 %1077, float %1091, float 1.270000e+02
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 10240
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1119, label %1099

; <label>:1099                                    ; preds = %1071
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 2048
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1119, label %1104

; <label>:1104                                    ; preds = %1099
  %1105 = add i32 %55, 492
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1109, %dx.types.Handle %103, float %615, float %616, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 3
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = shl i32 %1113, 4
  %1115 = and i32 %1114, 32752
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = fmul fast float %1116, %1111
  %1118 = call float @dx.op.binary.f32(i32 35, float %1117, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1119

; <label>:1119                                    ; preds = %1104, %1099, %1071
  %1120 = phi float [ %1118, %1104 ], [ 0x3F70101020000000, %1099 ], [ 0x3F70101020000000, %1071 ]
  %1121 = add i32 %55, 96
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = lshr i32 %1123, 8
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = call float @dx.op.dot3.f32(i32 55, float %906, float %907, float %908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1130 = fmul fast float %1128, %1129
  %1131 = fadd fast float %1130, %1125
  %1132 = fmul fast float %1131, 0x3F70101020000000
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  br label %1134

; <label>:1134                                    ; preds = %1119, %501
  %1135 = phi float [ 0.000000e+00, %501 ], [ %987, %1119 ]
  %1136 = phi float [ 0.000000e+00, %501 ], [ %988, %1119 ]
  %1137 = phi float [ 0.000000e+00, %501 ], [ %906, %1119 ]
  %1138 = phi float [ 0.000000e+00, %501 ], [ %907, %1119 ]
  %1139 = phi float [ 0.000000e+00, %501 ], [ %908, %1119 ]
  %1140 = phi float [ 0.000000e+00, %501 ], [ %1034, %1119 ]
  %1141 = phi float [ 0.000000e+00, %501 ], [ %1035, %1119 ]
  %1142 = phi float [ 0.000000e+00, %501 ], [ %1036, %1119 ]
  %1143 = phi float [ 0.000000e+00, %501 ], [ %1092, %1119 ]
  %1144 = phi float [ 0.000000e+00, %501 ], [ %1093, %1119 ]
  %1145 = phi float [ 0.000000e+00, %501 ], [ %1094, %1119 ]
  %1146 = phi float [ 0.000000e+00, %501 ], [ %892, %1119 ]
  %1147 = phi float [ 0.000000e+00, %501 ], [ %688, %1119 ]
  %1148 = phi float [ 0.000000e+00, %501 ], [ %986, %1119 ]
  %1149 = phi float [ 0.000000e+00, %501 ], [ %989, %1119 ]
  %1150 = phi float [ 0.000000e+00, %501 ], [ %1120, %1119 ]
  %1151 = phi float [ 0.000000e+00, %501 ], [ %1133, %1119 ]
  br i1 %449, label %2023, label %1152

; <label>:1152                                    ; preds = %1134
  %1153 = icmp ult i32 %507, 2
  %1154 = add i32 %55, 40
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = add i32 %55, 44
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = or i32 %1159, %1156
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %2023, label %1162

; <label>:1162                                    ; preds = %1152
  %1163 = and i32 %1156, 262144
  %1164 = icmp ne i32 %1163, 0
  %1165 = select i1 %1164, float %61, float 1.000000e+00
  %1166 = select i1 %1164, float %62, float 0.000000e+00
  %1167 = select i1 %1164, float %63, float 0.000000e+00
  %1168 = select i1 %1164, float %64, float 1.000000e+00
  %1169 = select i1 %1164, float %65, float %88
  %1170 = select i1 %1164, float %66, float %89
  %1171 = add i32 %55, 300
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = lshr i32 %1173, 16
  %1175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1174)  ; LegacyF16ToF32(value)
  %1176 = fmul fast float %1175, 0x3F50624DE0000000
  %1177 = add i32 %55, 104
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = lshr i32 %1179, 16
  %1181 = and i32 %1180, 255
  %1182 = lshr i32 %1179, 24
  %1183 = add i32 %55, 308
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 65535
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = lshr i32 %1185, 16
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = add i32 %55, 48
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = lshr i32 %1192, 22
  %1194 = shl nuw nsw i32 %1193, 5
  %1195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1194)  ; LegacyF16ToF32(value)
  %1196 = shl i32 %1192, 4
  %1197 = and i32 %1196, 32752
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = lshr i32 %1192, 7
  %1200 = and i32 %1199, 32752
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1204 = fmul fast float %1203, 1.000000e+03
  %1205 = fmul fast float %359, %1204
  %1206 = call float @dx.op.unary.f32(i32 22, float %1205)  ; Frc(value)
  %1207 = fadd fast float %1206, %349
  %1208 = fmul fast float %360, %1204
  %1209 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1210 = fadd fast float %1209, %351
  %1211 = fmul fast float %1176, %1204
  %1212 = call float @dx.op.unary.f32(i32 22, float %1211)  ; Frc(value)
  %1213 = fmul fast float %1212, 0x401921FB60000000
  %1214 = fadd fast float %1213, %1195
  %1215 = call float @dx.op.unary.f32(i32 13, float %1214)  ; Sin(value)
  %1216 = call float @dx.op.unary.f32(i32 12, float %1214)  ; Cos(value)
  %1217 = fsub fast float -0.000000e+00, %1215
  %1218 = fadd fast float %1169, -5.000000e-01
  %1219 = fadd fast float %1170, -5.000000e-01
  %1220 = fmul fast float %1187, %1218
  %1221 = fmul fast float %1189, %1219
  %1222 = fadd fast float %1220, 5.000000e-01
  %1223 = fadd fast float %1221, 5.000000e-01
  %1224 = fmul fast float %1198, %1222
  %1225 = fmul fast float %1201, %1223
  %1226 = fmul fast float %1216, %1224
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1217, float %1225, float %1226)  ; FMad(a,b,c)
  %1228 = fmul fast float %1215, %1224
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1216, float %1225, float %1228)  ; FMad(a,b,c)
  %1230 = fadd fast float %1207, %1227
  %1231 = fadd fast float %1210, %1229
  %1232 = icmp ugt i32 %1181, 1
  %1233 = icmp ugt i32 %1179, 33554431
  %1234 = or i1 %1233, %1232
  br i1 %1234, label %1235, label %1260

; <label>:1235                                    ; preds = %1162
  %1236 = add i32 %55, 244
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = lshr i32 %1238, 16
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = fmul fast float %1203, %1240
  %1242 = call float @dx.op.unary.f32(i32 22, float %1241)  ; Frc(value)
  %1243 = mul nuw nsw i32 %1181, %1182
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1242, %1244
  %1246 = call float @dx.op.unary.f32(i32 27, float %1245)  ; Round_ni(value)
  %1247 = fptoui float %1246 to i32
  %1248 = urem i32 %1247, %1181
  %1249 = udiv i32 %1247, %1182
  %1250 = call float @dx.op.unary.f32(i32 22, float %1230)  ; Frc(value)
  %1251 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1252 = uitofp i32 %1248 to float
  %1253 = uitofp i32 %1249 to float
  %1254 = fadd fast float %1250, %1252
  %1255 = fadd fast float %1251, %1253
  %1256 = uitofp i32 %1181 to float
  %1257 = uitofp i32 %1182 to float
  %1258 = fdiv fast float %1254, %1256
  %1259 = fdiv fast float %1255, %1257
  br label %1260

; <label>:1260                                    ; preds = %1235, %1162
  %1261 = phi float [ %1258, %1235 ], [ %1230, %1162 ]
  %1262 = phi float [ %1259, %1235 ], [ %1231, %1162 ]
  %1263 = and i32 %1156, 256
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1311, label %1265

; <label>:1265                                    ; preds = %1260
  %1266 = add i32 %55, 444
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %1268, 0
  %1270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1270, %dx.types.Handle %103, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = add i32 %55, 116
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = shl i32 %1275, 4
  %1277 = and i32 %1276, 32752
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = lshr i32 %1275, 7
  %1280 = and i32 %1279, 32752
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = fsub fast float 1.000000e+00, %504
  %1283 = call float @dx.op.binary.f32(i32 35, float %1282, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1284 = bitcast float %504 to i32
  %1285 = sitofp i32 %1284 to float
  %1286 = fadd fast float %1285, 0xC1CFBF8940000000
  %1287 = fmul fast float %1281, %1286
  %1288 = fadd fast float %1287, 0x41CFBF8940000000
  %1289 = fptosi float %1288 to i32
  %1290 = bitcast i32 %1289 to float
  %1291 = bitcast float %1283 to i32
  %1292 = sitofp i32 %1291 to float
  %1293 = fadd fast float %1292, 0xC1CFBF8940000000
  %1294 = fmul fast float %1293, %1281
  %1295 = fadd fast float %1294, 0x41CFBF8940000000
  %1296 = fptosi float %1295 to i32
  %1297 = bitcast i32 %1296 to float
  %1298 = fmul fast float %1290, %1278
  %1299 = fmul fast float %1297, %1278
  %1300 = fsub fast float %1283, %1298
  %1301 = fadd fast float %1299, %1283
  %1302 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1303 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1304 = fsub fast float %1272, %1302
  %1305 = fsub fast float %1303, %1302
  %1306 = bitcast float %1305 to i32
  %1307 = sub nsw i32 2129859010, %1306
  %1308 = bitcast i32 %1307 to float
  %1309 = fmul fast float %1308, %1304
  %1310 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  br label %1311

; <label>:1311                                    ; preds = %1265, %1260
  %1312 = phi float [ %1310, %1265 ], [ %504, %1260 ]
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 128
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1333, label %1317

; <label>:1317                                    ; preds = %1311
  %1318 = add i32 %55, 428
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = add i32 %1320, 0
  %1322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1323 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1322, %dx.types.Handle %103, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 524288
  %1328 = icmp ne i32 %1327, 0
  %1329 = fcmp fast ogt float %1324, 0x3FE0101020000000
  %1330 = select i1 %1329, float 1.000000e+00, float 0.000000e+00
  %1331 = select i1 %1328, float %1330, float %1324
  %1332 = fmul fast float %1331, %1312
  br label %1333

; <label>:1333                                    ; preds = %1317, %1311
  %1334 = phi float [ %1332, %1317 ], [ %1312, %1311 ]
  %1335 = fcmp fast ult float %1334, 0x3F70101020000000
  br i1 %1335, label %2023, label %1336

; <label>:1336                                    ; preds = %1333
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 16
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1539, label %1341

; <label>:1341                                    ; preds = %1336
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = add i32 %55, 380
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %1346, 0
  %1348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1348, %dx.types.Handle %102, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = extractvalue %dx.types.ResRet.f32 %1349, 3
  %1354 = and i32 %1343, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = lshr i32 %1343, 8
  %1357 = and i32 %1356, 255
  %1358 = uitofp i32 %1357 to float
  %1359 = fmul fast float %1353, %1355
  %1360 = fadd fast float %1359, %1358
  %1361 = fmul fast float %1360, 0x3F70101000000000
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = and i32 %1363, 512
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1374, label %1366

; <label>:1366                                    ; preds = %1341
  %1367 = add i32 %55, 464
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = add i32 %1369, 0
  %1371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1371, %dx.types.Handle %103, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  br label %1374

; <label>:1374                                    ; preds = %1366, %1341
  %1375 = phi float [ %1373, %1366 ], [ 1.000000e+00, %1341 ]
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = and i32 %1377, 33554432
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1486, label %1380

; <label>:1380                                    ; preds = %1374
  %1381 = add i32 %55, 240
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 65535
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = lshr i32 %1383, 16
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = add i32 %55, 244
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 65535
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = lshr i32 %1394, 24
  %1396 = uitofp i32 %1395 to float
  %1397 = fmul fast float %1396, 0x3F70101020000000
  %1398 = and i32 %1394, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101020000000
  %1401 = lshr i32 %1394, 8
  %1402 = and i32 %1401, 255
  %1403 = uitofp i32 %1402 to float
  %1404 = fmul fast float %1403, 0x3F70101020000000
  %1405 = lshr i32 %1394, 16
  %1406 = and i32 %1405, 255
  %1407 = uitofp i32 %1406 to float
  %1408 = fmul fast float %1407, 0x3F70101020000000
  %1409 = add i32 %55, 236
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = lshr i32 %1411, 24
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1413, 0x3F70101020000000
  %1415 = and i32 %1411, 255
  %1416 = uitofp i32 %1415 to float
  %1417 = fmul fast float %1416, 0x3F70101020000000
  %1418 = lshr i32 %1411, 8
  %1419 = and i32 %1418, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1420, 0x3F70101020000000
  %1422 = lshr i32 %1411, 16
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = fmul fast float %1424, 0x3F70101020000000
  %1426 = bitcast float %1350 to i32
  %1427 = ashr i32 %1426, 1
  %1428 = sub nsw i32 1597463174, %1427
  %1429 = bitcast i32 %1428 to float
  %1430 = fmul fast float %1350, 5.000000e-01
  %1431 = fmul fast float %1429, %1429
  %1432 = fmul fast float %1431, %1430
  %1433 = fsub fast float 1.500000e+00, %1432
  %1434 = fmul fast float %1429, %1350
  %1435 = fmul fast float %1434, %1433
  %1436 = bitcast float %1351 to i32
  %1437 = ashr i32 %1436, 1
  %1438 = sub nsw i32 1597463174, %1437
  %1439 = bitcast i32 %1438 to float
  %1440 = fmul fast float %1351, 5.000000e-01
  %1441 = fmul fast float %1439, %1439
  %1442 = fmul fast float %1441, %1440
  %1443 = fsub fast float 1.500000e+00, %1442
  %1444 = fmul fast float %1439, %1351
  %1445 = fmul fast float %1444, %1443
  %1446 = bitcast float %1352 to i32
  %1447 = ashr i32 %1446, 1
  %1448 = sub nsw i32 1597463174, %1447
  %1449 = bitcast i32 %1448 to float
  %1450 = fmul fast float %1352, 5.000000e-01
  %1451 = fmul fast float %1449, %1449
  %1452 = fmul fast float %1451, %1450
  %1453 = fsub fast float 1.500000e+00, %1452
  %1454 = fmul fast float %1449, %1352
  %1455 = fmul fast float %1454, %1453
  %1456 = fsub fast float %1435, %1417
  %1457 = fsub fast float %1445, %1421
  %1458 = fsub fast float %1455, %1425
  %1459 = fmul fast float %1456, %1385
  %1460 = fmul fast float %1457, %1387
  %1461 = fmul fast float %1458, %1392
  %1462 = fadd fast float %1459, %1400
  %1463 = fadd fast float %1460, %1404
  %1464 = fadd fast float %1461, %1408
  %1465 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1466 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  %1467 = call float @dx.op.unary.f32(i32 7, float %1464)  ; Saturate(value)
  %1468 = fmul fast float %1465, %1465
  %1469 = fmul fast float %1466, %1466
  %1470 = fmul fast float %1467, %1467
  %1471 = fsub fast float %1468, %1350
  %1472 = fsub fast float %1469, %1351
  %1473 = fsub fast float %1470, %1352
  %1474 = fmul fast float %1471, %1375
  %1475 = fmul fast float %1472, %1375
  %1476 = fmul fast float %1473, %1375
  %1477 = fadd fast float %1474, %1350
  %1478 = fadd fast float %1475, %1351
  %1479 = fadd fast float %1476, %1352
  %1480 = fadd fast float %1397, %1361
  %1481 = fsub fast float %1480, %1414
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = fsub fast float %1482, %1361
  %1484 = fmul fast float %1483, %1375
  %1485 = fadd fast float %1484, %1361
  br label %1539

; <label>:1486                                    ; preds = %1374
  %1487 = and i32 %1377, 134217728
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1523, label %1489

; <label>:1489                                    ; preds = %1486
  %1490 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %1491 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %1492 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %1493 = fadd fast float %1490, -5.000000e-01
  %1494 = fadd fast float %1491, -5.000000e-01
  %1495 = fadd fast float %1492, -5.000000e-01
  %1496 = fmul fast float %1493, %1375
  %1497 = fmul fast float %1494, %1375
  %1498 = fmul fast float %1495, %1375
  %1499 = fadd fast float %1496, 5.000000e-01
  %1500 = fadd fast float %1497, 5.000000e-01
  %1501 = fadd fast float %1498, 5.000000e-01
  %1502 = call float @dx.op.unary.f32(i32 24, float %1350)  ; Sqrt(value)
  %1503 = call float @dx.op.unary.f32(i32 24, float %1351)  ; Sqrt(value)
  %1504 = call float @dx.op.unary.f32(i32 24, float %1352)  ; Sqrt(value)
  %1505 = fmul fast float %1499, 2.000000e+00
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = fmul fast float %1506, %1502
  %1508 = fadd fast float %1507, %1505
  %1509 = fmul fast float %1508, %1502
  %1510 = fmul fast float %1500, 2.000000e+00
  %1511 = fsub fast float 1.000000e+00, %1510
  %1512 = fmul fast float %1511, %1503
  %1513 = fadd fast float %1512, %1510
  %1514 = fmul fast float %1513, %1503
  %1515 = fmul fast float %1501, 2.000000e+00
  %1516 = fsub fast float 1.000000e+00, %1515
  %1517 = fmul fast float %1516, %1504
  %1518 = fadd fast float %1517, %1515
  %1519 = fmul fast float %1518, %1504
  %1520 = fmul fast float %1509, %1509
  %1521 = fmul fast float %1514, %1514
  %1522 = fmul fast float %1519, %1519
  br label %1539

; <label>:1523                                    ; preds = %1486
  %1524 = fmul fast float %336, %336
  %1525 = fmul fast float %340, %340
  %1526 = fmul fast float %344, %344
  %1527 = fadd fast float %1524, -1.000000e+00
  %1528 = fadd fast float %1525, -1.000000e+00
  %1529 = fadd fast float %1526, -1.000000e+00
  %1530 = fmul fast float %1375, %1527
  %1531 = fmul fast float %1375, %1528
  %1532 = fmul fast float %1375, %1529
  %1533 = fadd fast float %1530, 1.000000e+00
  %1534 = fadd fast float %1531, 1.000000e+00
  %1535 = fadd fast float %1532, 1.000000e+00
  %1536 = fmul fast float %1533, %1350
  %1537 = fmul fast float %1534, %1351
  %1538 = fmul fast float %1535, %1352
  br label %1539

; <label>:1539                                    ; preds = %1523, %1489, %1380, %1336
  %1540 = phi float [ %1485, %1380 ], [ %1361, %1489 ], [ %1361, %1523 ], [ 0x3FA23C0BE0000000, %1336 ]
  %1541 = phi float [ %1477, %1380 ], [ %1520, %1489 ], [ %1536, %1523 ], [ 1.000000e+00, %1336 ]
  %1542 = phi float [ %1478, %1380 ], [ %1521, %1489 ], [ %1537, %1523 ], [ 1.000000e+00, %1336 ]
  %1543 = phi float [ %1479, %1380 ], [ %1522, %1489 ], [ %1538, %1523 ], [ 1.000000e+00, %1336 ]
  %1544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.i32 %1544, 1
  %1546 = and i32 %1545, 1
  %1547 = icmp ne i32 %1546, 0
  %1548 = add i32 %55, 356
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 32
  %1552 = icmp ne i32 %1551, 0
  %1553 = and i1 %1547, %1552
  %1554 = select i1 %1553, float 1.000000e+00, float %1541
  %1555 = select i1 %1553, float 0x3FD3333340000000, float %1542
  %1556 = select i1 %1553, float 0x3FD3333340000000, float %1543
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 32
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1633, label %1561

; <label>:1561                                    ; preds = %1539
  %1562 = add i32 %55, 108
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %55, 396
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = add i32 %1567, 0
  %1569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1569, %dx.types.Handle %102, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1571 = extractvalue %dx.types.ResRet.f32 %1570, 0
  %1572 = extractvalue %dx.types.ResRet.f32 %1570, 1
  %1573 = extractvalue %dx.types.ResRet.f32 %1570, 2
  %1574 = extractvalue %dx.types.ResRet.f32 %1570, 3
  %1575 = and i32 %1564, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = lshr i32 %1564, 8
  %1578 = and i32 %1577, 255
  %1579 = uitofp i32 %1578 to float
  %1580 = lshr i32 %1564, 16
  %1581 = and i32 %1580, 255
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1582, 0x3F70101000000000
  %1584 = fmul fast float %1571, %1576
  %1585 = fadd fast float %1584, %1579
  %1586 = fmul fast float %1585, 0x3F70101000000000
  %1587 = fadd fast float %1572, -5.000000e-01
  %1588 = fadd fast float %1574, -5.000000e-01
  %1589 = fmul fast float %1587, %1583
  %1590 = fmul fast float %1588, %1583
  %1591 = fadd fast float %1589, 5.000000e-01
  %1592 = fadd fast float %1590, 5.000000e-01
  %1593 = fmul fast float %1591, 2.000000e+00
  %1594 = fadd fast float %1593, -1.000000e+00
  %1595 = fmul fast float %1592, 2.000000e+00
  %1596 = fadd fast float %1595, -1.000000e+00
  %1597 = fadd fast float %1594, %1596
  %1598 = fmul fast float %1597, 5.000000e-01
  %1599 = fsub fast float %1594, %1596
  %1600 = fmul fast float %1599, 5.000000e-01
  %1601 = call float @dx.op.unary.f32(i32 6, float %1598)  ; FAbs(value)
  %1602 = fsub fast float 1.000000e+00, %1601
  %1603 = call float @dx.op.unary.f32(i32 6, float %1600)  ; FAbs(value)
  %1604 = fsub fast float %1602, %1603
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1598, float %1600, float %1604, float %1598, float %1600, float %1604)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = call float @dx.op.unary.f32(i32 25, float %1605)  ; Rsqrt(value)
  %1607 = fmul fast float %1598, %1606
  %1608 = fmul fast float %1600, %1606
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 67108864
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1629, label %1613

; <label>:1613                                    ; preds = %1561
  %1614 = add i32 %55, 296
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 65535
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 65535
  %1622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1621)  ; LegacyF16ToF32(value)
  %1623 = lshr i32 %1616, 16
  %1624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1623)  ; LegacyF16ToF32(value)
  %1625 = fsub fast float %1586, %1624
  %1626 = fmul fast float %1625, %1618
  %1627 = fadd fast float %1626, %1622
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  br label %1629

; <label>:1629                                    ; preds = %1613, %1561
  %1630 = phi float [ %1628, %1613 ], [ %1586, %1561 ]
  %1631 = call float @dx.op.dot2.f32(i32 54, float %1607, float %1608, float %1165, float %1166)  ; Dot2(ax,ay,bx,by)
  %1632 = call float @dx.op.dot2.f32(i32 54, float %1607, float %1608, float %1167, float %1168)  ; Dot2(ax,ay,bx,by)
  br label %1633

; <label>:1633                                    ; preds = %1629, %1539
  %1634 = phi float [ %1630, %1629 ], [ 0x3FD6666660000000, %1539 ]
  %1635 = phi float [ %1631, %1629 ], [ 0.000000e+00, %1539 ]
  %1636 = phi float [ %1632, %1629 ], [ 0.000000e+00, %1539 ]
  %1637 = phi float [ %1573, %1629 ], [ 1.000000e+00, %1539 ]
  %1638 = add i32 %55, 176
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = lshr i32 %1640, 22
  %1642 = shl nuw nsw i32 %1641, 5
  %1643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1642)  ; LegacyF16ToF32(value)
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 64
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1681, label %1648

; <label>:1648                                    ; preds = %1633
  %1649 = add i32 %55, 412
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = add i32 %1651, 0
  %1653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = and i32 %1655, 131072
  %1657 = icmp eq i32 %1656, 0
  %1658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1653, %dx.types.Handle %102, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.ResRet.f32 %1658, 1
  %1661 = extractvalue %dx.types.ResRet.f32 %1658, 2
  %1662 = fmul fast float %1659, %324
  %1663 = fmul fast float %1660, %327
  %1664 = fmul fast float %1661, %330
  br i1 %1657, label %1671, label %1665

; <label>:1665                                    ; preds = %1648
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 0
  %1668 = fmul fast float %1667, %1662
  %1669 = fmul fast float %1667, %1663
  %1670 = fmul fast float %1667, %1664
  br label %1671

; <label>:1671                                    ; preds = %1665, %1648
  %1672 = phi float [ %1668, %1665 ], [ %1662, %1648 ]
  %1673 = phi float [ %1669, %1665 ], [ %1663, %1648 ]
  %1674 = phi float [ %1670, %1665 ], [ %1664, %1648 ]
  %1675 = fmul fast float %1672, %1643
  %1676 = select i1 %265, float %1675, float %1672
  %1677 = call float @dx.op.dot3.f32(i32 55, float %1676, float %1673, float %1674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = select i1 %265, float 0.000000e+00, float %1672
  %1679 = select i1 %265, float %1677, float %1673
  %1680 = select i1 %265, float 0.000000e+00, float %1674
  br label %1681

; <label>:1681                                    ; preds = %1671, %1633
  %1682 = phi float [ %1678, %1671 ], [ 0.000000e+00, %1633 ]
  %1683 = phi float [ %1679, %1671 ], [ 0.000000e+00, %1633 ]
  %1684 = phi float [ %1680, %1671 ], [ 0.000000e+00, %1633 ]
  %1685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.i32 %1685, 0
  %1687 = and i32 %1686, 1024
  %1688 = icmp eq i32 %1687, 0
  br i1 %1688, label %1719, label %1689

; <label>:1689                                    ; preds = %1681
  %1690 = add i32 %55, 168
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = and i32 %1692, 255
  %1694 = uitofp i32 %1693 to float
  %1695 = fmul fast float %1694, 0x3F70101020000000
  %1696 = lshr i32 %1692, 8
  %1697 = and i32 %1696, 255
  %1698 = uitofp i32 %1697 to float
  %1699 = fmul fast float %1698, 0x3F70101020000000
  %1700 = lshr i32 %1692, 16
  %1701 = and i32 %1700, 255
  %1702 = uitofp i32 %1701 to float
  %1703 = fmul fast float %1702, 0x3F70101020000000
  %1704 = fmul fast float %1695, %1695
  %1705 = fmul fast float %1699, %1699
  %1706 = fmul fast float %1703, %1703
  %1707 = add i32 %55, 480
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = add i32 %1709, 0
  %1711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1711, %dx.types.Handle %103, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1713 = extractvalue %dx.types.ResRet.f32 %1712, 0
  %1714 = extractvalue %dx.types.ResRet.f32 %1712, 1
  %1715 = extractvalue %dx.types.ResRet.f32 %1712, 2
  %1716 = fmul fast float %1704, %1713
  %1717 = fmul fast float %1705, %1714
  %1718 = fmul fast float %1706, %1715
  br label %1719

; <label>:1719                                    ; preds = %1689, %1681
  %1720 = phi float [ %1716, %1689 ], [ 0.000000e+00, %1681 ]
  %1721 = phi float [ %1717, %1689 ], [ 0.000000e+00, %1681 ]
  %1722 = phi float [ %1718, %1689 ], [ 0.000000e+00, %1681 ]
  %1723 = fcmp fast ogt float %1720, 0.000000e+00
  %1724 = fcmp fast ogt float %1721, 0.000000e+00
  %1725 = fcmp fast ogt float %1722, 0.000000e+00
  %1726 = call float @dx.op.unary.f32(i32 23, float %1720)  ; Log(value)
  %1727 = call float @dx.op.unary.f32(i32 23, float %1721)  ; Log(value)
  %1728 = call float @dx.op.unary.f32(i32 23, float %1722)  ; Log(value)
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = lshr i32 %1730, 7
  %1732 = and i32 %1731, 32752
  %1733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1732)  ; LegacyF16ToF32(value)
  %1734 = fmul fast float %1726, 0xBFE62E4300000000
  %1735 = fmul fast float %1734, %1733
  %1736 = fmul fast float %1727, 0xBFE62E4300000000
  %1737 = fmul fast float %1736, %1733
  %1738 = fmul fast float %1728, 0xBFE62E4300000000
  %1739 = fmul fast float %1738, %1733
  %1740 = select i1 %1723, float %1735, float 1.270000e+02
  %1741 = select i1 %1724, float %1737, float 1.270000e+02
  %1742 = select i1 %1725, float %1739, float 1.270000e+02
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 10240
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1767, label %1747

; <label>:1747                                    ; preds = %1719
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = and i32 %1749, 2048
  %1751 = icmp eq i32 %1750, 0
  br i1 %1751, label %1767, label %1752

; <label>:1752                                    ; preds = %1747
  %1753 = add i32 %55, 496
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = add i32 %1755, 0
  %1757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1757, %dx.types.Handle %103, float %1261, float %1262, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1759 = extractvalue %dx.types.ResRet.f32 %1758, 3
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = shl i32 %1761, 4
  %1763 = and i32 %1762, 32752
  %1764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1763)  ; LegacyF16ToF32(value)
  %1765 = fmul fast float %1764, %1759
  %1766 = call float @dx.op.binary.f32(i32 35, float %1765, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1767

; <label>:1767                                    ; preds = %1752, %1747, %1719
  %1768 = phi float [ %1766, %1752 ], [ 0x3F70101020000000, %1747 ], [ 0x3F70101020000000, %1719 ]
  %1769 = add i32 %55, 112
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 255
  %1773 = uitofp i32 %1772 to float
  %1774 = lshr i32 %1771, 8
  %1775 = and i32 %1774, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1555, float %1556, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1778 = fmul fast float %1776, %1777
  %1779 = fadd fast float %1778, %1773
  %1780 = fmul fast float %1779, 0x3F70101020000000
  %1781 = call float @dx.op.unary.f32(i32 7, float %1780)  ; Saturate(value)
  br i1 %1153, label %1782, label %1817

; <label>:1782                                    ; preds = %1767
  %1783 = fmul fast float %1768, 2.000000e+00
  %1784 = fcmp fast olt float %1740, 1.270000e+02
  %1785 = fcmp fast olt float %1741, 1.270000e+02
  %1786 = fcmp fast olt float %1742, 1.270000e+02
  %1787 = fmul fast float %1740, 0xBFF7154760000000
  %1788 = fmul fast float %1787, %1783
  %1789 = fmul fast float %1741, 0xBFF7154760000000
  %1790 = fmul fast float %1789, %1783
  %1791 = fmul fast float %1742, 0xBFF7154760000000
  %1792 = fmul fast float %1791, %1783
  %1793 = call float @dx.op.unary.f32(i32 21, float %1788)  ; Exp(value)
  %1794 = call float @dx.op.unary.f32(i32 21, float %1790)  ; Exp(value)
  %1795 = call float @dx.op.unary.f32(i32 21, float %1792)  ; Exp(value)
  %1796 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  %1797 = call float @dx.op.unary.f32(i32 7, float %1794)  ; Saturate(value)
  %1798 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1799 = fadd fast float %1796, -1.000000e+00
  %1800 = select i1 %1784, float %1799, float -1.000000e+00
  %1801 = fadd fast float %1797, -1.000000e+00
  %1802 = select i1 %1785, float %1801, float -1.000000e+00
  %1803 = fadd fast float %1798, -1.000000e+00
  %1804 = select i1 %1786, float %1803, float -1.000000e+00
  %1805 = fmul fast float %1800, %1334
  %1806 = fmul fast float %1802, %1334
  %1807 = fmul fast float %1804, %1334
  %1808 = fadd fast float %1805, 1.000000e+00
  %1809 = fadd fast float %1806, 1.000000e+00
  %1810 = fadd fast float %1807, 1.000000e+00
  %1811 = fmul fast float %1808, %1137
  %1812 = fmul fast float %1809, %1138
  %1813 = fmul fast float %1810, %1139
  %1814 = fmul fast float %1808, %1140
  %1815 = fmul fast float %1809, %1141
  %1816 = fmul fast float %1810, %1142
  br label %1817

; <label>:1817                                    ; preds = %1782, %1767
  %1818 = phi float [ %1811, %1782 ], [ %1137, %1767 ]
  %1819 = phi float [ %1812, %1782 ], [ %1138, %1767 ]
  %1820 = phi float [ %1813, %1782 ], [ %1139, %1767 ]
  %1821 = phi float [ %1814, %1782 ], [ %1140, %1767 ]
  %1822 = phi float [ %1815, %1782 ], [ %1141, %1767 ]
  %1823 = phi float [ %1816, %1782 ], [ %1142, %1767 ]
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = and i32 %1825, 3
  %1827 = icmp eq i32 %1826, 3
  br i1 %1827, label %1906, label %1828

; <label>:1828                                    ; preds = %1817
  %1829 = and i32 %1825, 16
  %1830 = icmp ne i32 %1829, 0
  %1831 = select i1 %1830, float %1334, float 0.000000e+00
  %1832 = icmp eq i32 %1826, 0
  br i1 %1832, label %1833, label %1861

; <label>:1833                                    ; preds = %1828
  %1834 = and i32 %1825, 64
  %1835 = icmp ne i32 %1834, 0
  %1836 = select i1 %1835, float %1334, float 0.000000e+00
  %1837 = fsub fast float %1554, %1818
  %1838 = fsub fast float %1555, %1819
  %1839 = fsub fast float %1556, %1820
  %1840 = fmul fast float %1831, %1837
  %1841 = fmul fast float %1831, %1838
  %1842 = fmul fast float %1831, %1839
  %1843 = fadd fast float %1840, %1818
  %1844 = fadd fast float %1841, %1819
  %1845 = fadd fast float %1842, %1820
  %1846 = fsub fast float %1540, %1146
  %1847 = fmul fast float %1831, %1846
  %1848 = fadd fast float %1847, %1146
  %1849 = fsub fast float %1682, %1821
  %1850 = fsub fast float %1683, %1822
  %1851 = fsub fast float %1684, %1823
  %1852 = fmul fast float %1836, %1849
  %1853 = fmul fast float %1836, %1850
  %1854 = fmul fast float %1836, %1851
  %1855 = fadd fast float %1852, %1821
  %1856 = fadd fast float %1853, %1822
  %1857 = fadd fast float %1854, %1823
  %1858 = fsub fast float %1781, %1151
  %1859 = fmul fast float %1831, %1858
  %1860 = fadd fast float %1859, %1151
  br label %1906

; <label>:1861                                    ; preds = %1828
  %1862 = icmp eq i32 %1826, 1
  br i1 %1862, label %1863, label %1876

; <label>:1863                                    ; preds = %1861
  %1864 = fadd fast float %1554, -1.000000e+00
  %1865 = fadd fast float %1555, -1.000000e+00
  %1866 = fadd fast float %1556, -1.000000e+00
  %1867 = fmul fast float %1831, %1864
  %1868 = fmul fast float %1831, %1865
  %1869 = fmul fast float %1831, %1866
  %1870 = fadd fast float %1867, 1.000000e+00
  %1871 = fadd fast float %1868, 1.000000e+00
  %1872 = fadd fast float %1869, 1.000000e+00
  %1873 = fmul fast float %1870, %1818
  %1874 = fmul fast float %1871, %1819
  %1875 = fmul fast float %1872, %1820
  br label %1906

; <label>:1876                                    ; preds = %1861
  %1877 = icmp eq i32 %1826, 2
  br i1 %1877, label %1878, label %1906

; <label>:1878                                    ; preds = %1876
  %1879 = call float @dx.op.unary.f32(i32 24, float %1554)  ; Sqrt(value)
  %1880 = call float @dx.op.unary.f32(i32 24, float %1555)  ; Sqrt(value)
  %1881 = call float @dx.op.unary.f32(i32 24, float %1556)  ; Sqrt(value)
  %1882 = fadd fast float %1879, -5.000000e-01
  %1883 = fadd fast float %1880, -5.000000e-01
  %1884 = fadd fast float %1881, -5.000000e-01
  %1885 = fmul fast float %1882, %1831
  %1886 = fmul fast float %1883, %1831
  %1887 = fmul fast float %1884, %1831
  %1888 = fadd fast float %1885, 5.000000e-01
  %1889 = fadd fast float %1886, 5.000000e-01
  %1890 = fadd fast float %1887, 5.000000e-01
  %1891 = fmul fast float %1888, 2.000000e+00
  %1892 = fsub fast float 1.000000e+00, %1891
  %1893 = fmul fast float %1892, %1818
  %1894 = fadd fast float %1893, %1891
  %1895 = fmul fast float %1894, %1818
  %1896 = fmul fast float %1889, 2.000000e+00
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = fmul fast float %1897, %1819
  %1899 = fadd fast float %1898, %1896
  %1900 = fmul fast float %1899, %1819
  %1901 = fmul fast float %1890, 2.000000e+00
  %1902 = fsub fast float 1.000000e+00, %1901
  %1903 = fmul fast float %1902, %1820
  %1904 = fadd fast float %1903, %1901
  %1905 = fmul fast float %1904, %1820
  br label %1906

; <label>:1906                                    ; preds = %1878, %1876, %1863, %1833, %1817
  %1907 = phi float [ %1818, %1817 ], [ %1895, %1878 ], [ %1818, %1876 ], [ %1873, %1863 ], [ %1843, %1833 ]
  %1908 = phi float [ %1819, %1817 ], [ %1900, %1878 ], [ %1819, %1876 ], [ %1874, %1863 ], [ %1844, %1833 ]
  %1909 = phi float [ %1820, %1817 ], [ %1905, %1878 ], [ %1820, %1876 ], [ %1875, %1863 ], [ %1845, %1833 ]
  %1910 = phi float [ %1821, %1817 ], [ %1821, %1878 ], [ %1821, %1876 ], [ %1821, %1863 ], [ %1855, %1833 ]
  %1911 = phi float [ %1822, %1817 ], [ %1822, %1878 ], [ %1822, %1876 ], [ %1822, %1863 ], [ %1856, %1833 ]
  %1912 = phi float [ %1823, %1817 ], [ %1823, %1878 ], [ %1823, %1876 ], [ %1823, %1863 ], [ %1857, %1833 ]
  %1913 = phi float [ %1146, %1817 ], [ %1146, %1878 ], [ %1146, %1876 ], [ %1146, %1863 ], [ %1848, %1833 ]
  %1914 = phi float [ %1151, %1817 ], [ %1151, %1878 ], [ %1151, %1876 ], [ %1151, %1863 ], [ %1860, %1833 ]
  %1915 = and i32 %1825, 12
  %1916 = icmp eq i32 %1915, 12
  br i1 %1916, label %2023, label %1917

; <label>:1917                                    ; preds = %1906
  %1918 = and i32 %1825, 2097184
  %1919 = icmp eq i32 %1918, 2097184
  %1920 = select i1 %1919, float %1334, float 0.000000e+00
  %1921 = and i32 %1825, 4194336
  %1922 = icmp eq i32 %1921, 4194336
  %1923 = select i1 %1922, float %1334, float 0.000000e+00
  %1924 = and i32 %1825, 8388640
  %1925 = icmp eq i32 %1924, 8388640
  %1926 = select i1 %1925, float %1334, float 0.000000e+00
  %1927 = and i32 %1825, 1024
  %1928 = icmp ne i32 %1927, 0
  %1929 = select i1 %1928, float %1334, float 0.000000e+00
  %1930 = and i32 %1825, 2048
  %1931 = icmp ne i32 %1930, 0
  %1932 = select i1 %1931, float %1334, float 0.000000e+00
  %1933 = icmp eq i32 %1915, 0
  br i1 %1933, label %1934, label %1959

; <label>:1934                                    ; preds = %1917
  %1935 = fsub fast float %1635, %1135
  %1936 = fsub fast float %1636, %1136
  %1937 = fmul fast float %1920, %1935
  %1938 = fmul fast float %1920, %1936
  %1939 = fadd fast float %1937, %1135
  %1940 = fadd fast float %1938, %1136
  %1941 = fsub fast float %1637, %1149
  %1942 = fmul fast float %1923, %1941
  %1943 = fadd fast float %1942, %1149
  %1944 = fsub fast float %1634, %1148
  %1945 = fmul fast float %1926, %1944
  %1946 = fadd fast float %1945, %1148
  %1947 = fsub fast float %1740, %1143
  %1948 = fsub fast float %1741, %1144
  %1949 = fsub fast float %1742, %1145
  %1950 = fmul fast float %1929, %1947
  %1951 = fmul fast float %1929, %1948
  %1952 = fmul fast float %1929, %1949
  %1953 = fadd fast float %1950, %1143
  %1954 = fadd fast float %1951, %1144
  %1955 = fadd fast float %1952, %1145
  %1956 = fsub fast float %1768, %1150
  %1957 = fmul fast float %1932, %1956
  %1958 = fadd fast float %1957, %1150
  br label %2023

; <label>:1959                                    ; preds = %1917
  %1960 = icmp eq i32 %1915, 4
  br i1 %1960, label %1961, label %2001

; <label>:1961                                    ; preds = %1959
  %1962 = fmul fast float %1920, %1635
  %1963 = fmul fast float %1920, %1636
  %1964 = fadd fast float %1962, %1135
  %1965 = fadd fast float %1963, %1136
  %1966 = call float @dx.op.binary.f32(i32 36, float %1149, float %1637)  ; FMin(a,b)
  %1967 = fsub fast float %1966, %1149
  %1968 = fmul fast float %1967, %1923
  %1969 = fadd fast float %1968, %1149
  %1970 = fadd fast float %1634, %1148
  %1971 = fmul fast float %1970, 0x3FF337FAE0000000
  %1972 = fmul fast float %1148, %1148
  %1973 = fmul fast float %1634, %1634
  %1974 = fadd fast float %1973, %1972
  %1975 = fmul fast float %1974, 0x3FE5152B00000000
  %1976 = fmul fast float %1148, 0xBFCC1F85E0000000
  %1977 = fmul fast float %1976, %1634
  %1978 = fadd fast float %1977, 0xBFE1363700000000
  %1979 = fadd fast float %1978, %1971
  %1980 = fsub fast float %1979, %1975
  %1981 = fmul fast float %1970, 0x3FBA6F0D00000000
  %1982 = fmul fast float %1974, 0x3FD0432880000000
  %1983 = fmul fast float %1148, 0xBFEF110800000000
  %1984 = fmul fast float %1983, %1634
  %1985 = fadd fast float %1984, 1.000000e+00
  %1986 = fsub fast float %1985, %1981
  %1987 = fadd fast float %1986, %1982
  %1988 = fdiv fast float %1980, %1987
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = fsub fast float %1989, %1148
  %1991 = fmul fast float %1990, %1926
  %1992 = fadd fast float %1991, %1148
  %1993 = fmul fast float %1929, %1740
  %1994 = fmul fast float %1929, %1741
  %1995 = fmul fast float %1929, %1742
  %1996 = fadd fast float %1993, %1143
  %1997 = fadd fast float %1994, %1144
  %1998 = fadd fast float %1995, %1145
  %1999 = fmul fast float %1932, %1768
  %2000 = fadd fast float %1999, %1150
  br label %2023

; <label>:2001                                    ; preds = %1959
  %2002 = icmp eq i32 %1915, 8
  br i1 %2002, label %2003, label %2023

; <label>:2003                                    ; preds = %2001
  %2004 = fmul fast float %1920, %1635
  %2005 = fmul fast float %1920, %1636
  %2006 = fadd fast float %2004, %1135
  %2007 = fadd fast float %2005, %1136
  %2008 = call float @dx.op.binary.f32(i32 36, float %1149, float %1637)  ; FMin(a,b)
  %2009 = fsub fast float %2008, %1149
  %2010 = fmul fast float %2009, %1923
  %2011 = fadd fast float %2010, %1149
  %2012 = fsub fast float %1634, %1148
  %2013 = fmul fast float %1926, %2012
  %2014 = fadd fast float %2013, %1148
  %2015 = fmul fast float %1929, %1740
  %2016 = fmul fast float %1929, %1741
  %2017 = fmul fast float %1929, %1742
  %2018 = fadd fast float %2015, %1143
  %2019 = fadd fast float %2016, %1144
  %2020 = fadd fast float %2017, %1145
  %2021 = fmul fast float %1932, %1768
  %2022 = fadd fast float %2021, %1150
  br label %2023

; <label>:2023                                    ; preds = %2003, %2001, %1961, %1934, %1906, %1333, %1152, %1134
  %2024 = phi float [ %1135, %1906 ], [ %1135, %1333 ], [ %1135, %1134 ], [ %2006, %2003 ], [ %1135, %2001 ], [ %1964, %1961 ], [ %1939, %1934 ], [ %1135, %1152 ]
  %2025 = phi float [ %1136, %1906 ], [ %1136, %1333 ], [ %1136, %1134 ], [ %2007, %2003 ], [ %1136, %2001 ], [ %1965, %1961 ], [ %1940, %1934 ], [ %1136, %1152 ]
  %2026 = phi float [ %1907, %1906 ], [ %1137, %1333 ], [ %1137, %1134 ], [ %1907, %2003 ], [ %1907, %2001 ], [ %1907, %1961 ], [ %1907, %1934 ], [ %1137, %1152 ]
  %2027 = phi float [ %1908, %1906 ], [ %1138, %1333 ], [ %1138, %1134 ], [ %1908, %2003 ], [ %1908, %2001 ], [ %1908, %1961 ], [ %1908, %1934 ], [ %1138, %1152 ]
  %2028 = phi float [ %1909, %1906 ], [ %1139, %1333 ], [ %1139, %1134 ], [ %1909, %2003 ], [ %1909, %2001 ], [ %1909, %1961 ], [ %1909, %1934 ], [ %1139, %1152 ]
  %2029 = phi float [ %1910, %1906 ], [ %1140, %1333 ], [ %1140, %1134 ], [ %1910, %2003 ], [ %1910, %2001 ], [ %1910, %1961 ], [ %1910, %1934 ], [ %1140, %1152 ]
  %2030 = phi float [ %1911, %1906 ], [ %1141, %1333 ], [ %1141, %1134 ], [ %1911, %2003 ], [ %1911, %2001 ], [ %1911, %1961 ], [ %1911, %1934 ], [ %1141, %1152 ]
  %2031 = phi float [ %1912, %1906 ], [ %1142, %1333 ], [ %1142, %1134 ], [ %1912, %2003 ], [ %1912, %2001 ], [ %1912, %1961 ], [ %1912, %1934 ], [ %1142, %1152 ]
  %2032 = phi float [ %1143, %1906 ], [ %1143, %1333 ], [ %1143, %1134 ], [ %2018, %2003 ], [ %1143, %2001 ], [ %1996, %1961 ], [ %1953, %1934 ], [ %1143, %1152 ]
  %2033 = phi float [ %1144, %1906 ], [ %1144, %1333 ], [ %1144, %1134 ], [ %2019, %2003 ], [ %1144, %2001 ], [ %1997, %1961 ], [ %1954, %1934 ], [ %1144, %1152 ]
  %2034 = phi float [ %1145, %1906 ], [ %1145, %1333 ], [ %1145, %1134 ], [ %2020, %2003 ], [ %1145, %2001 ], [ %1998, %1961 ], [ %1955, %1934 ], [ %1145, %1152 ]
  %2035 = phi float [ %1913, %1906 ], [ %1146, %1333 ], [ %1146, %1134 ], [ %1913, %2003 ], [ %1913, %2001 ], [ %1913, %1961 ], [ %1913, %1934 ], [ %1146, %1152 ]
  %2036 = phi float [ %1148, %1906 ], [ %1148, %1333 ], [ %1148, %1134 ], [ %2014, %2003 ], [ %1148, %2001 ], [ %1992, %1961 ], [ %1946, %1934 ], [ %1148, %1152 ]
  %2037 = phi float [ %1149, %1906 ], [ %1149, %1333 ], [ %1149, %1134 ], [ %2011, %2003 ], [ %1149, %2001 ], [ %1969, %1961 ], [ %1943, %1934 ], [ %1149, %1152 ]
  %2038 = phi float [ %1150, %1906 ], [ %1150, %1333 ], [ %1150, %1134 ], [ %2022, %2003 ], [ %1150, %2001 ], [ %2000, %1961 ], [ %1958, %1934 ], [ %1150, %1152 ]
  %2039 = phi float [ %1914, %1906 ], [ %1151, %1333 ], [ %1151, %1134 ], [ %1914, %2003 ], [ %1914, %2001 ], [ %1914, %1961 ], [ %1914, %1934 ], [ %1151, %1152 ]
  br i1 %451, label %2911, label %2040

; <label>:2040                                    ; preds = %2023
  %2041 = icmp ult i32 %507, 3
  %2042 = add i32 %55, 56
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = add i32 %55, 60
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = or i32 %2047, %2044
  %2049 = icmp eq i32 %2048, 0
  br i1 %2049, label %2911, label %2050

; <label>:2050                                    ; preds = %2040
  %2051 = and i32 %2044, 262144
  %2052 = icmp ne i32 %2051, 0
  %2053 = select i1 %2052, float %61, float 1.000000e+00
  %2054 = select i1 %2052, float %62, float 0.000000e+00
  %2055 = select i1 %2052, float %63, float 0.000000e+00
  %2056 = select i1 %2052, float %64, float 1.000000e+00
  %2057 = select i1 %2052, float %65, float %88
  %2058 = select i1 %2052, float %66, float %89
  %2059 = add i32 %55, 316
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = lshr i32 %2061, 16
  %2063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2062)  ; LegacyF16ToF32(value)
  %2064 = fmul fast float %2063, 0x3F50624DE0000000
  %2065 = add i32 %55, 120
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = lshr i32 %2067, 16
  %2069 = and i32 %2068, 255
  %2070 = lshr i32 %2067, 24
  %2071 = add i32 %55, 324
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = and i32 %2073, 65535
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = lshr i32 %2073, 16
  %2077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2076)  ; LegacyF16ToF32(value)
  %2078 = add i32 %55, 64
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = lshr i32 %2080, 22
  %2082 = shl nuw nsw i32 %2081, 5
  %2083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2082)  ; LegacyF16ToF32(value)
  %2084 = shl i32 %2080, 4
  %2085 = and i32 %2084, 32752
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = lshr i32 %2080, 7
  %2088 = and i32 %2087, 32752
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2091 = extractvalue %dx.types.CBufRet.f32 %2090, 3
  %2092 = fmul fast float %2091, 1.000000e+03
  %2093 = fmul fast float %401, %2092
  %2094 = call float @dx.op.unary.f32(i32 22, float %2093)  ; Frc(value)
  %2095 = fadd fast float %2094, %391
  %2096 = fmul fast float %402, %2092
  %2097 = call float @dx.op.unary.f32(i32 22, float %2096)  ; Frc(value)
  %2098 = fadd fast float %2097, %393
  %2099 = fmul fast float %2064, %2092
  %2100 = call float @dx.op.unary.f32(i32 22, float %2099)  ; Frc(value)
  %2101 = fmul fast float %2100, 0x401921FB60000000
  %2102 = fadd fast float %2101, %2083
  %2103 = call float @dx.op.unary.f32(i32 13, float %2102)  ; Sin(value)
  %2104 = call float @dx.op.unary.f32(i32 12, float %2102)  ; Cos(value)
  %2105 = fsub fast float -0.000000e+00, %2103
  %2106 = fadd fast float %2057, -5.000000e-01
  %2107 = fadd fast float %2058, -5.000000e-01
  %2108 = fmul fast float %2075, %2106
  %2109 = fmul fast float %2077, %2107
  %2110 = fadd fast float %2108, 5.000000e-01
  %2111 = fadd fast float %2109, 5.000000e-01
  %2112 = fmul fast float %2086, %2110
  %2113 = fmul fast float %2089, %2111
  %2114 = fmul fast float %2104, %2112
  %2115 = call float @dx.op.tertiary.f32(i32 46, float %2105, float %2113, float %2114)  ; FMad(a,b,c)
  %2116 = fmul fast float %2103, %2112
  %2117 = call float @dx.op.tertiary.f32(i32 46, float %2104, float %2113, float %2116)  ; FMad(a,b,c)
  %2118 = fadd fast float %2095, %2115
  %2119 = fadd fast float %2098, %2117
  %2120 = icmp ugt i32 %2069, 1
  %2121 = icmp ugt i32 %2067, 33554431
  %2122 = or i1 %2121, %2120
  br i1 %2122, label %2123, label %2148

; <label>:2123                                    ; preds = %2050
  %2124 = add i32 %55, 260
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = lshr i32 %2126, 16
  %2128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2127)  ; LegacyF16ToF32(value)
  %2129 = fmul fast float %2091, %2128
  %2130 = call float @dx.op.unary.f32(i32 22, float %2129)  ; Frc(value)
  %2131 = mul nuw nsw i32 %2069, %2070
  %2132 = uitofp i32 %2131 to float
  %2133 = fmul fast float %2130, %2132
  %2134 = call float @dx.op.unary.f32(i32 27, float %2133)  ; Round_ni(value)
  %2135 = fptoui float %2134 to i32
  %2136 = urem i32 %2135, %2069
  %2137 = udiv i32 %2135, %2070
  %2138 = call float @dx.op.unary.f32(i32 22, float %2118)  ; Frc(value)
  %2139 = call float @dx.op.unary.f32(i32 22, float %2119)  ; Frc(value)
  %2140 = uitofp i32 %2136 to float
  %2141 = uitofp i32 %2137 to float
  %2142 = fadd fast float %2138, %2140
  %2143 = fadd fast float %2139, %2141
  %2144 = uitofp i32 %2069 to float
  %2145 = uitofp i32 %2070 to float
  %2146 = fdiv fast float %2142, %2144
  %2147 = fdiv fast float %2143, %2145
  br label %2148

; <label>:2148                                    ; preds = %2123, %2050
  %2149 = phi float [ %2146, %2123 ], [ %2118, %2050 ]
  %2150 = phi float [ %2147, %2123 ], [ %2119, %2050 ]
  %2151 = and i32 %2044, 256
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2199, label %2153

; <label>:2153                                    ; preds = %2148
  %2154 = add i32 %55, 448
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = add i32 %2156, 0
  %2158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2158, %dx.types.Handle %103, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2160 = extractvalue %dx.types.ResRet.f32 %2159, 0
  %2161 = add i32 %55, 132
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2161, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = shl i32 %2163, 4
  %2165 = and i32 %2164, 32752
  %2166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2165)  ; LegacyF16ToF32(value)
  %2167 = lshr i32 %2163, 7
  %2168 = and i32 %2167, 32752
  %2169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2168)  ; LegacyF16ToF32(value)
  %2170 = fsub fast float 1.000000e+00, %503
  %2171 = call float @dx.op.binary.f32(i32 35, float %2170, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2172 = bitcast float %503 to i32
  %2173 = sitofp i32 %2172 to float
  %2174 = fadd fast float %2173, 0xC1CFBF8940000000
  %2175 = fmul fast float %2169, %2174
  %2176 = fadd fast float %2175, 0x41CFBF8940000000
  %2177 = fptosi float %2176 to i32
  %2178 = bitcast i32 %2177 to float
  %2179 = bitcast float %2171 to i32
  %2180 = sitofp i32 %2179 to float
  %2181 = fadd fast float %2180, 0xC1CFBF8940000000
  %2182 = fmul fast float %2181, %2169
  %2183 = fadd fast float %2182, 0x41CFBF8940000000
  %2184 = fptosi float %2183 to i32
  %2185 = bitcast i32 %2184 to float
  %2186 = fmul fast float %2178, %2166
  %2187 = fmul fast float %2185, %2166
  %2188 = fsub fast float %2171, %2186
  %2189 = fadd fast float %2187, %2171
  %2190 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2191 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2192 = fsub fast float %2160, %2190
  %2193 = fsub fast float %2191, %2190
  %2194 = bitcast float %2193 to i32
  %2195 = sub nsw i32 2129859010, %2194
  %2196 = bitcast i32 %2195 to float
  %2197 = fmul fast float %2196, %2192
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  br label %2199

; <label>:2199                                    ; preds = %2153, %2148
  %2200 = phi float [ %2198, %2153 ], [ %503, %2148 ]
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = and i32 %2202, 128
  %2204 = icmp eq i32 %2203, 0
  br i1 %2204, label %2221, label %2205

; <label>:2205                                    ; preds = %2199
  %2206 = add i32 %55, 432
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = add i32 %2208, 0
  %2210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2210, %dx.types.Handle %103, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2212 = extractvalue %dx.types.ResRet.f32 %2211, 0
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 524288
  %2216 = icmp ne i32 %2215, 0
  %2217 = fcmp fast ogt float %2212, 0x3FE0101020000000
  %2218 = select i1 %2217, float 1.000000e+00, float 0.000000e+00
  %2219 = select i1 %2216, float %2218, float %2212
  %2220 = fmul fast float %2219, %2200
  br label %2221

; <label>:2221                                    ; preds = %2205, %2199
  %2222 = phi float [ %2220, %2205 ], [ %2200, %2199 ]
  %2223 = fcmp fast ult float %2222, 0x3F70101020000000
  br i1 %2223, label %2911, label %2224

; <label>:2224                                    ; preds = %2221
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 16
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2427, label %2229

; <label>:2229                                    ; preds = %2224
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = add i32 %55, 384
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = add i32 %2234, 0
  %2236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2236, %dx.types.Handle %102, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2238 = extractvalue %dx.types.ResRet.f32 %2237, 0
  %2239 = extractvalue %dx.types.ResRet.f32 %2237, 1
  %2240 = extractvalue %dx.types.ResRet.f32 %2237, 2
  %2241 = extractvalue %dx.types.ResRet.f32 %2237, 3
  %2242 = and i32 %2231, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = lshr i32 %2231, 8
  %2245 = and i32 %2244, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2241, %2243
  %2248 = fadd fast float %2247, %2246
  %2249 = fmul fast float %2248, 0x3F70101000000000
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 512
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2262, label %2254

; <label>:2254                                    ; preds = %2229
  %2255 = add i32 %55, 468
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %2257, 0
  %2259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2259, %dx.types.Handle %103, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  br label %2262

; <label>:2262                                    ; preds = %2254, %2229
  %2263 = phi float [ %2261, %2254 ], [ 1.000000e+00, %2229 ]
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = and i32 %2265, 33554432
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2374, label %2268

; <label>:2268                                    ; preds = %2262
  %2269 = add i32 %55, 256
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 65535
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = lshr i32 %2271, 16
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = add i32 %55, 260
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = and i32 %2278, 65535
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = lshr i32 %2282, 24
  %2284 = uitofp i32 %2283 to float
  %2285 = fmul fast float %2284, 0x3F70101020000000
  %2286 = and i32 %2282, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = fmul fast float %2287, 0x3F70101020000000
  %2289 = lshr i32 %2282, 8
  %2290 = and i32 %2289, 255
  %2291 = uitofp i32 %2290 to float
  %2292 = fmul fast float %2291, 0x3F70101020000000
  %2293 = lshr i32 %2282, 16
  %2294 = and i32 %2293, 255
  %2295 = uitofp i32 %2294 to float
  %2296 = fmul fast float %2295, 0x3F70101020000000
  %2297 = add i32 %55, 252
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = lshr i32 %2299, 24
  %2301 = uitofp i32 %2300 to float
  %2302 = fmul fast float %2301, 0x3F70101020000000
  %2303 = and i32 %2299, 255
  %2304 = uitofp i32 %2303 to float
  %2305 = fmul fast float %2304, 0x3F70101020000000
  %2306 = lshr i32 %2299, 8
  %2307 = and i32 %2306, 255
  %2308 = uitofp i32 %2307 to float
  %2309 = fmul fast float %2308, 0x3F70101020000000
  %2310 = lshr i32 %2299, 16
  %2311 = and i32 %2310, 255
  %2312 = uitofp i32 %2311 to float
  %2313 = fmul fast float %2312, 0x3F70101020000000
  %2314 = bitcast float %2238 to i32
  %2315 = ashr i32 %2314, 1
  %2316 = sub nsw i32 1597463174, %2315
  %2317 = bitcast i32 %2316 to float
  %2318 = fmul fast float %2238, 5.000000e-01
  %2319 = fmul fast float %2317, %2317
  %2320 = fmul fast float %2319, %2318
  %2321 = fsub fast float 1.500000e+00, %2320
  %2322 = fmul fast float %2317, %2238
  %2323 = fmul fast float %2322, %2321
  %2324 = bitcast float %2239 to i32
  %2325 = ashr i32 %2324, 1
  %2326 = sub nsw i32 1597463174, %2325
  %2327 = bitcast i32 %2326 to float
  %2328 = fmul fast float %2239, 5.000000e-01
  %2329 = fmul fast float %2327, %2327
  %2330 = fmul fast float %2329, %2328
  %2331 = fsub fast float 1.500000e+00, %2330
  %2332 = fmul fast float %2327, %2239
  %2333 = fmul fast float %2332, %2331
  %2334 = bitcast float %2240 to i32
  %2335 = ashr i32 %2334, 1
  %2336 = sub nsw i32 1597463174, %2335
  %2337 = bitcast i32 %2336 to float
  %2338 = fmul fast float %2240, 5.000000e-01
  %2339 = fmul fast float %2337, %2337
  %2340 = fmul fast float %2339, %2338
  %2341 = fsub fast float 1.500000e+00, %2340
  %2342 = fmul fast float %2337, %2240
  %2343 = fmul fast float %2342, %2341
  %2344 = fsub fast float %2323, %2305
  %2345 = fsub fast float %2333, %2309
  %2346 = fsub fast float %2343, %2313
  %2347 = fmul fast float %2344, %2273
  %2348 = fmul fast float %2345, %2275
  %2349 = fmul fast float %2346, %2280
  %2350 = fadd fast float %2347, %2288
  %2351 = fadd fast float %2348, %2292
  %2352 = fadd fast float %2349, %2296
  %2353 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  %2354 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  %2355 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  %2356 = fmul fast float %2353, %2353
  %2357 = fmul fast float %2354, %2354
  %2358 = fmul fast float %2355, %2355
  %2359 = fsub fast float %2356, %2238
  %2360 = fsub fast float %2357, %2239
  %2361 = fsub fast float %2358, %2240
  %2362 = fmul fast float %2359, %2263
  %2363 = fmul fast float %2360, %2263
  %2364 = fmul fast float %2361, %2263
  %2365 = fadd fast float %2362, %2238
  %2366 = fadd fast float %2363, %2239
  %2367 = fadd fast float %2364, %2240
  %2368 = fadd fast float %2285, %2249
  %2369 = fsub fast float %2368, %2302
  %2370 = call float @dx.op.unary.f32(i32 7, float %2369)  ; Saturate(value)
  %2371 = fsub fast float %2370, %2249
  %2372 = fmul fast float %2371, %2263
  %2373 = fadd fast float %2372, %2249
  br label %2427

; <label>:2374                                    ; preds = %2262
  %2375 = and i32 %2265, 134217728
  %2376 = icmp eq i32 %2375, 0
  br i1 %2376, label %2411, label %2377

; <label>:2377                                    ; preds = %2374
  %2378 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %2379 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %2380 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %2381 = fadd fast float %2378, -5.000000e-01
  %2382 = fadd fast float %2379, -5.000000e-01
  %2383 = fadd fast float %2380, -5.000000e-01
  %2384 = fmul fast float %2381, %2263
  %2385 = fmul fast float %2382, %2263
  %2386 = fmul fast float %2383, %2263
  %2387 = fadd fast float %2384, 5.000000e-01
  %2388 = fadd fast float %2385, 5.000000e-01
  %2389 = fadd fast float %2386, 5.000000e-01
  %2390 = call float @dx.op.unary.f32(i32 24, float %2238)  ; Sqrt(value)
  %2391 = call float @dx.op.unary.f32(i32 24, float %2239)  ; Sqrt(value)
  %2392 = call float @dx.op.unary.f32(i32 24, float %2240)  ; Sqrt(value)
  %2393 = fmul fast float %2387, 2.000000e+00
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = fmul fast float %2394, %2390
  %2396 = fadd fast float %2395, %2393
  %2397 = fmul fast float %2396, %2390
  %2398 = fmul fast float %2388, 2.000000e+00
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = fmul fast float %2399, %2391
  %2401 = fadd fast float %2400, %2398
  %2402 = fmul fast float %2401, %2391
  %2403 = fmul fast float %2389, 2.000000e+00
  %2404 = fsub fast float 1.000000e+00, %2403
  %2405 = fmul fast float %2404, %2392
  %2406 = fadd fast float %2405, %2403
  %2407 = fmul fast float %2406, %2392
  %2408 = fmul fast float %2397, %2397
  %2409 = fmul fast float %2402, %2402
  %2410 = fmul fast float %2407, %2407
  br label %2427

; <label>:2411                                    ; preds = %2374
  %2412 = fmul fast float %378, %378
  %2413 = fmul fast float %382, %382
  %2414 = fmul fast float %386, %386
  %2415 = fadd fast float %2412, -1.000000e+00
  %2416 = fadd fast float %2413, -1.000000e+00
  %2417 = fadd fast float %2414, -1.000000e+00
  %2418 = fmul fast float %2263, %2415
  %2419 = fmul fast float %2263, %2416
  %2420 = fmul fast float %2263, %2417
  %2421 = fadd fast float %2418, 1.000000e+00
  %2422 = fadd fast float %2419, 1.000000e+00
  %2423 = fadd fast float %2420, 1.000000e+00
  %2424 = fmul fast float %2421, %2238
  %2425 = fmul fast float %2422, %2239
  %2426 = fmul fast float %2423, %2240
  br label %2427

; <label>:2427                                    ; preds = %2411, %2377, %2268, %2224
  %2428 = phi float [ %2373, %2268 ], [ %2249, %2377 ], [ %2249, %2411 ], [ 0x3FA23C0BE0000000, %2224 ]
  %2429 = phi float [ %2365, %2268 ], [ %2408, %2377 ], [ %2424, %2411 ], [ 1.000000e+00, %2224 ]
  %2430 = phi float [ %2366, %2268 ], [ %2409, %2377 ], [ %2425, %2411 ], [ 1.000000e+00, %2224 ]
  %2431 = phi float [ %2367, %2268 ], [ %2410, %2377 ], [ %2426, %2411 ], [ 1.000000e+00, %2224 ]
  %2432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.i32 %2432, 1
  %2434 = and i32 %2433, 1
  %2435 = icmp ne i32 %2434, 0
  %2436 = add i32 %55, 356
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 32
  %2440 = icmp ne i32 %2439, 0
  %2441 = and i1 %2435, %2440
  %2442 = select i1 %2441, float 1.000000e+00, float %2429
  %2443 = select i1 %2441, float 0x3FD3333340000000, float %2430
  %2444 = select i1 %2441, float 0x3FD3333340000000, float %2431
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 32
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2521, label %2449

; <label>:2449                                    ; preds = %2427
  %2450 = add i32 %55, 124
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = add i32 %55, 400
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = add i32 %2455, 0
  %2457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2457, %dx.types.Handle %102, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.ResRet.f32 %2458, 1
  %2461 = extractvalue %dx.types.ResRet.f32 %2458, 2
  %2462 = extractvalue %dx.types.ResRet.f32 %2458, 3
  %2463 = and i32 %2452, 255
  %2464 = uitofp i32 %2463 to float
  %2465 = lshr i32 %2452, 8
  %2466 = and i32 %2465, 255
  %2467 = uitofp i32 %2466 to float
  %2468 = lshr i32 %2452, 16
  %2469 = and i32 %2468, 255
  %2470 = uitofp i32 %2469 to float
  %2471 = fmul fast float %2470, 0x3F70101000000000
  %2472 = fmul fast float %2459, %2464
  %2473 = fadd fast float %2472, %2467
  %2474 = fmul fast float %2473, 0x3F70101000000000
  %2475 = fadd fast float %2460, -5.000000e-01
  %2476 = fadd fast float %2462, -5.000000e-01
  %2477 = fmul fast float %2475, %2471
  %2478 = fmul fast float %2476, %2471
  %2479 = fadd fast float %2477, 5.000000e-01
  %2480 = fadd fast float %2478, 5.000000e-01
  %2481 = fmul fast float %2479, 2.000000e+00
  %2482 = fadd fast float %2481, -1.000000e+00
  %2483 = fmul fast float %2480, 2.000000e+00
  %2484 = fadd fast float %2483, -1.000000e+00
  %2485 = fadd fast float %2482, %2484
  %2486 = fmul fast float %2485, 5.000000e-01
  %2487 = fsub fast float %2482, %2484
  %2488 = fmul fast float %2487, 5.000000e-01
  %2489 = call float @dx.op.unary.f32(i32 6, float %2486)  ; FAbs(value)
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = call float @dx.op.unary.f32(i32 6, float %2488)  ; FAbs(value)
  %2492 = fsub fast float %2490, %2491
  %2493 = call float @dx.op.dot3.f32(i32 55, float %2486, float %2488, float %2492, float %2486, float %2488, float %2492)  ; Dot3(ax,ay,az,bx,by,bz)
  %2494 = call float @dx.op.unary.f32(i32 25, float %2493)  ; Rsqrt(value)
  %2495 = fmul fast float %2486, %2494
  %2496 = fmul fast float %2488, %2494
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 67108864
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %2517, label %2501

; <label>:2501                                    ; preds = %2449
  %2502 = add i32 %55, 312
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 65535
  %2506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2505)  ; LegacyF16ToF32(value)
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 65535
  %2510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2509)  ; LegacyF16ToF32(value)
  %2511 = lshr i32 %2504, 16
  %2512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2511)  ; LegacyF16ToF32(value)
  %2513 = fsub fast float %2474, %2512
  %2514 = fmul fast float %2513, %2506
  %2515 = fadd fast float %2514, %2510
  %2516 = call float @dx.op.unary.f32(i32 7, float %2515)  ; Saturate(value)
  br label %2517

; <label>:2517                                    ; preds = %2501, %2449
  %2518 = phi float [ %2516, %2501 ], [ %2474, %2449 ]
  %2519 = call float @dx.op.dot2.f32(i32 54, float %2495, float %2496, float %2053, float %2054)  ; Dot2(ax,ay,bx,by)
  %2520 = call float @dx.op.dot2.f32(i32 54, float %2495, float %2496, float %2055, float %2056)  ; Dot2(ax,ay,bx,by)
  br label %2521

; <label>:2521                                    ; preds = %2517, %2427
  %2522 = phi float [ %2518, %2517 ], [ 0x3FD6666660000000, %2427 ]
  %2523 = phi float [ %2519, %2517 ], [ 0.000000e+00, %2427 ]
  %2524 = phi float [ %2520, %2517 ], [ 0.000000e+00, %2427 ]
  %2525 = phi float [ %2461, %2517 ], [ 1.000000e+00, %2427 ]
  %2526 = add i32 %55, 192
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = lshr i32 %2528, 22
  %2530 = shl nuw nsw i32 %2529, 5
  %2531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2530)  ; LegacyF16ToF32(value)
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = and i32 %2533, 64
  %2535 = icmp eq i32 %2534, 0
  br i1 %2535, label %2569, label %2536

; <label>:2536                                    ; preds = %2521
  %2537 = add i32 %55, 416
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = add i32 %2539, 0
  %2541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 131072
  %2545 = icmp eq i32 %2544, 0
  %2546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2541, %dx.types.Handle %102, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2547 = extractvalue %dx.types.ResRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.ResRet.f32 %2546, 1
  %2549 = extractvalue %dx.types.ResRet.f32 %2546, 2
  %2550 = fmul fast float %2547, %366
  %2551 = fmul fast float %2548, %369
  %2552 = fmul fast float %2549, %372
  br i1 %2545, label %2559, label %2553

; <label>:2553                                    ; preds = %2536
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 0
  %2556 = fmul fast float %2555, %2550
  %2557 = fmul fast float %2555, %2551
  %2558 = fmul fast float %2555, %2552
  br label %2559

; <label>:2559                                    ; preds = %2553, %2536
  %2560 = phi float [ %2556, %2553 ], [ %2550, %2536 ]
  %2561 = phi float [ %2557, %2553 ], [ %2551, %2536 ]
  %2562 = phi float [ %2558, %2553 ], [ %2552, %2536 ]
  %2563 = fmul fast float %2560, %2531
  %2564 = select i1 %265, float %2563, float %2560
  %2565 = call float @dx.op.dot3.f32(i32 55, float %2564, float %2561, float %2562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2566 = select i1 %265, float 0.000000e+00, float %2560
  %2567 = select i1 %265, float %2565, float %2561
  %2568 = select i1 %265, float 0.000000e+00, float %2562
  br label %2569

; <label>:2569                                    ; preds = %2559, %2521
  %2570 = phi float [ %2566, %2559 ], [ 0.000000e+00, %2521 ]
  %2571 = phi float [ %2567, %2559 ], [ 0.000000e+00, %2521 ]
  %2572 = phi float [ %2568, %2559 ], [ 0.000000e+00, %2521 ]
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 1024
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2607, label %2577

; <label>:2577                                    ; preds = %2569
  %2578 = add i32 %55, 184
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 255
  %2582 = uitofp i32 %2581 to float
  %2583 = fmul fast float %2582, 0x3F70101020000000
  %2584 = lshr i32 %2580, 8
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = fmul fast float %2586, 0x3F70101020000000
  %2588 = lshr i32 %2580, 16
  %2589 = and i32 %2588, 255
  %2590 = uitofp i32 %2589 to float
  %2591 = fmul fast float %2590, 0x3F70101020000000
  %2592 = fmul fast float %2583, %2583
  %2593 = fmul fast float %2587, %2587
  %2594 = fmul fast float %2591, %2591
  %2595 = add i32 %55, 484
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = add i32 %2597, 0
  %2599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2599, %dx.types.Handle %103, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2601 = extractvalue %dx.types.ResRet.f32 %2600, 0
  %2602 = extractvalue %dx.types.ResRet.f32 %2600, 1
  %2603 = extractvalue %dx.types.ResRet.f32 %2600, 2
  %2604 = fmul fast float %2592, %2601
  %2605 = fmul fast float %2593, %2602
  %2606 = fmul fast float %2594, %2603
  br label %2607

; <label>:2607                                    ; preds = %2577, %2569
  %2608 = phi float [ %2604, %2577 ], [ 0.000000e+00, %2569 ]
  %2609 = phi float [ %2605, %2577 ], [ 0.000000e+00, %2569 ]
  %2610 = phi float [ %2606, %2577 ], [ 0.000000e+00, %2569 ]
  %2611 = fcmp fast ogt float %2608, 0.000000e+00
  %2612 = fcmp fast ogt float %2609, 0.000000e+00
  %2613 = fcmp fast ogt float %2610, 0.000000e+00
  %2614 = call float @dx.op.unary.f32(i32 23, float %2608)  ; Log(value)
  %2615 = call float @dx.op.unary.f32(i32 23, float %2609)  ; Log(value)
  %2616 = call float @dx.op.unary.f32(i32 23, float %2610)  ; Log(value)
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = lshr i32 %2618, 7
  %2620 = and i32 %2619, 32752
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = fmul fast float %2614, 0xBFE62E4300000000
  %2623 = fmul fast float %2622, %2621
  %2624 = fmul fast float %2615, 0xBFE62E4300000000
  %2625 = fmul fast float %2624, %2621
  %2626 = fmul fast float %2616, 0xBFE62E4300000000
  %2627 = fmul fast float %2626, %2621
  %2628 = select i1 %2611, float %2623, float 1.270000e+02
  %2629 = select i1 %2612, float %2625, float 1.270000e+02
  %2630 = select i1 %2613, float %2627, float 1.270000e+02
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 10240
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2655, label %2635

; <label>:2635                                    ; preds = %2607
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 2048
  %2639 = icmp eq i32 %2638, 0
  br i1 %2639, label %2655, label %2640

; <label>:2640                                    ; preds = %2635
  %2641 = add i32 %55, 500
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = add i32 %2643, 0
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2645, %dx.types.Handle %103, float %2149, float %2150, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 3
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = shl i32 %2649, 4
  %2651 = and i32 %2650, 32752
  %2652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2651)  ; LegacyF16ToF32(value)
  %2653 = fmul fast float %2652, %2647
  %2654 = call float @dx.op.binary.f32(i32 35, float %2653, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2655

; <label>:2655                                    ; preds = %2640, %2635, %2607
  %2656 = phi float [ %2654, %2640 ], [ 0x3F70101020000000, %2635 ], [ 0x3F70101020000000, %2607 ]
  %2657 = add i32 %55, 128
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 255
  %2661 = uitofp i32 %2660 to float
  %2662 = lshr i32 %2659, 8
  %2663 = and i32 %2662, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = call float @dx.op.dot3.f32(i32 55, float %2442, float %2443, float %2444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2666 = fmul fast float %2664, %2665
  %2667 = fadd fast float %2666, %2661
  %2668 = fmul fast float %2667, 0x3F70101020000000
  %2669 = call float @dx.op.unary.f32(i32 7, float %2668)  ; Saturate(value)
  br i1 %2041, label %2670, label %2705

; <label>:2670                                    ; preds = %2655
  %2671 = fmul fast float %2656, 2.000000e+00
  %2672 = fcmp fast olt float %2628, 1.270000e+02
  %2673 = fcmp fast olt float %2629, 1.270000e+02
  %2674 = fcmp fast olt float %2630, 1.270000e+02
  %2675 = fmul fast float %2628, 0xBFF7154760000000
  %2676 = fmul fast float %2675, %2671
  %2677 = fmul fast float %2629, 0xBFF7154760000000
  %2678 = fmul fast float %2677, %2671
  %2679 = fmul fast float %2630, 0xBFF7154760000000
  %2680 = fmul fast float %2679, %2671
  %2681 = call float @dx.op.unary.f32(i32 21, float %2676)  ; Exp(value)
  %2682 = call float @dx.op.unary.f32(i32 21, float %2678)  ; Exp(value)
  %2683 = call float @dx.op.unary.f32(i32 21, float %2680)  ; Exp(value)
  %2684 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  %2685 = call float @dx.op.unary.f32(i32 7, float %2682)  ; Saturate(value)
  %2686 = call float @dx.op.unary.f32(i32 7, float %2683)  ; Saturate(value)
  %2687 = fadd fast float %2684, -1.000000e+00
  %2688 = select i1 %2672, float %2687, float -1.000000e+00
  %2689 = fadd fast float %2685, -1.000000e+00
  %2690 = select i1 %2673, float %2689, float -1.000000e+00
  %2691 = fadd fast float %2686, -1.000000e+00
  %2692 = select i1 %2674, float %2691, float -1.000000e+00
  %2693 = fmul fast float %2688, %2222
  %2694 = fmul fast float %2690, %2222
  %2695 = fmul fast float %2692, %2222
  %2696 = fadd fast float %2693, 1.000000e+00
  %2697 = fadd fast float %2694, 1.000000e+00
  %2698 = fadd fast float %2695, 1.000000e+00
  %2699 = fmul fast float %2696, %2026
  %2700 = fmul fast float %2697, %2027
  %2701 = fmul fast float %2698, %2028
  %2702 = fmul fast float %2696, %2029
  %2703 = fmul fast float %2697, %2030
  %2704 = fmul fast float %2698, %2031
  br label %2705

; <label>:2705                                    ; preds = %2670, %2655
  %2706 = phi float [ %2699, %2670 ], [ %2026, %2655 ]
  %2707 = phi float [ %2700, %2670 ], [ %2027, %2655 ]
  %2708 = phi float [ %2701, %2670 ], [ %2028, %2655 ]
  %2709 = phi float [ %2702, %2670 ], [ %2029, %2655 ]
  %2710 = phi float [ %2703, %2670 ], [ %2030, %2655 ]
  %2711 = phi float [ %2704, %2670 ], [ %2031, %2655 ]
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 3
  %2715 = icmp eq i32 %2714, 3
  br i1 %2715, label %2794, label %2716

; <label>:2716                                    ; preds = %2705
  %2717 = and i32 %2713, 16
  %2718 = icmp ne i32 %2717, 0
  %2719 = select i1 %2718, float %2222, float 0.000000e+00
  %2720 = icmp eq i32 %2714, 0
  br i1 %2720, label %2721, label %2749

; <label>:2721                                    ; preds = %2716
  %2722 = and i32 %2713, 64
  %2723 = icmp ne i32 %2722, 0
  %2724 = select i1 %2723, float %2222, float 0.000000e+00
  %2725 = fsub fast float %2442, %2706
  %2726 = fsub fast float %2443, %2707
  %2727 = fsub fast float %2444, %2708
  %2728 = fmul fast float %2719, %2725
  %2729 = fmul fast float %2719, %2726
  %2730 = fmul fast float %2719, %2727
  %2731 = fadd fast float %2728, %2706
  %2732 = fadd fast float %2729, %2707
  %2733 = fadd fast float %2730, %2708
  %2734 = fsub fast float %2428, %2035
  %2735 = fmul fast float %2719, %2734
  %2736 = fadd fast float %2735, %2035
  %2737 = fsub fast float %2570, %2709
  %2738 = fsub fast float %2571, %2710
  %2739 = fsub fast float %2572, %2711
  %2740 = fmul fast float %2724, %2737
  %2741 = fmul fast float %2724, %2738
  %2742 = fmul fast float %2724, %2739
  %2743 = fadd fast float %2740, %2709
  %2744 = fadd fast float %2741, %2710
  %2745 = fadd fast float %2742, %2711
  %2746 = fsub fast float %2669, %2039
  %2747 = fmul fast float %2719, %2746
  %2748 = fadd fast float %2747, %2039
  br label %2794

; <label>:2749                                    ; preds = %2716
  %2750 = icmp eq i32 %2714, 1
  br i1 %2750, label %2751, label %2764

; <label>:2751                                    ; preds = %2749
  %2752 = fadd fast float %2442, -1.000000e+00
  %2753 = fadd fast float %2443, -1.000000e+00
  %2754 = fadd fast float %2444, -1.000000e+00
  %2755 = fmul fast float %2719, %2752
  %2756 = fmul fast float %2719, %2753
  %2757 = fmul fast float %2719, %2754
  %2758 = fadd fast float %2755, 1.000000e+00
  %2759 = fadd fast float %2756, 1.000000e+00
  %2760 = fadd fast float %2757, 1.000000e+00
  %2761 = fmul fast float %2758, %2706
  %2762 = fmul fast float %2759, %2707
  %2763 = fmul fast float %2760, %2708
  br label %2794

; <label>:2764                                    ; preds = %2749
  %2765 = icmp eq i32 %2714, 2
  br i1 %2765, label %2766, label %2794

; <label>:2766                                    ; preds = %2764
  %2767 = call float @dx.op.unary.f32(i32 24, float %2442)  ; Sqrt(value)
  %2768 = call float @dx.op.unary.f32(i32 24, float %2443)  ; Sqrt(value)
  %2769 = call float @dx.op.unary.f32(i32 24, float %2444)  ; Sqrt(value)
  %2770 = fadd fast float %2767, -5.000000e-01
  %2771 = fadd fast float %2768, -5.000000e-01
  %2772 = fadd fast float %2769, -5.000000e-01
  %2773 = fmul fast float %2770, %2719
  %2774 = fmul fast float %2771, %2719
  %2775 = fmul fast float %2772, %2719
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fmul fast float %2776, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2706
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2706
  %2784 = fmul fast float %2777, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2707
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2707
  %2789 = fmul fast float %2778, 2.000000e+00
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = fmul fast float %2790, %2708
  %2792 = fadd fast float %2791, %2789
  %2793 = fmul fast float %2792, %2708
  br label %2794

; <label>:2794                                    ; preds = %2766, %2764, %2751, %2721, %2705
  %2795 = phi float [ %2706, %2705 ], [ %2783, %2766 ], [ %2706, %2764 ], [ %2761, %2751 ], [ %2731, %2721 ]
  %2796 = phi float [ %2707, %2705 ], [ %2788, %2766 ], [ %2707, %2764 ], [ %2762, %2751 ], [ %2732, %2721 ]
  %2797 = phi float [ %2708, %2705 ], [ %2793, %2766 ], [ %2708, %2764 ], [ %2763, %2751 ], [ %2733, %2721 ]
  %2798 = phi float [ %2709, %2705 ], [ %2709, %2766 ], [ %2709, %2764 ], [ %2709, %2751 ], [ %2743, %2721 ]
  %2799 = phi float [ %2710, %2705 ], [ %2710, %2766 ], [ %2710, %2764 ], [ %2710, %2751 ], [ %2744, %2721 ]
  %2800 = phi float [ %2711, %2705 ], [ %2711, %2766 ], [ %2711, %2764 ], [ %2711, %2751 ], [ %2745, %2721 ]
  %2801 = phi float [ %2035, %2705 ], [ %2035, %2766 ], [ %2035, %2764 ], [ %2035, %2751 ], [ %2736, %2721 ]
  %2802 = phi float [ %2039, %2705 ], [ %2039, %2766 ], [ %2039, %2764 ], [ %2039, %2751 ], [ %2748, %2721 ]
  %2803 = and i32 %2713, 12
  %2804 = icmp eq i32 %2803, 12
  br i1 %2804, label %2911, label %2805

; <label>:2805                                    ; preds = %2794
  %2806 = and i32 %2713, 2097184
  %2807 = icmp eq i32 %2806, 2097184
  %2808 = select i1 %2807, float %2222, float 0.000000e+00
  %2809 = and i32 %2713, 4194336
  %2810 = icmp eq i32 %2809, 4194336
  %2811 = select i1 %2810, float %2222, float 0.000000e+00
  %2812 = and i32 %2713, 8388640
  %2813 = icmp eq i32 %2812, 8388640
  %2814 = select i1 %2813, float %2222, float 0.000000e+00
  %2815 = and i32 %2713, 1024
  %2816 = icmp ne i32 %2815, 0
  %2817 = select i1 %2816, float %2222, float 0.000000e+00
  %2818 = and i32 %2713, 2048
  %2819 = icmp ne i32 %2818, 0
  %2820 = select i1 %2819, float %2222, float 0.000000e+00
  %2821 = icmp eq i32 %2803, 0
  br i1 %2821, label %2822, label %2847

; <label>:2822                                    ; preds = %2805
  %2823 = fsub fast float %2523, %2024
  %2824 = fsub fast float %2524, %2025
  %2825 = fmul fast float %2808, %2823
  %2826 = fmul fast float %2808, %2824
  %2827 = fadd fast float %2825, %2024
  %2828 = fadd fast float %2826, %2025
  %2829 = fsub fast float %2525, %2037
  %2830 = fmul fast float %2811, %2829
  %2831 = fadd fast float %2830, %2037
  %2832 = fsub fast float %2522, %2036
  %2833 = fmul fast float %2814, %2832
  %2834 = fadd fast float %2833, %2036
  %2835 = fsub fast float %2628, %2032
  %2836 = fsub fast float %2629, %2033
  %2837 = fsub fast float %2630, %2034
  %2838 = fmul fast float %2817, %2835
  %2839 = fmul fast float %2817, %2836
  %2840 = fmul fast float %2817, %2837
  %2841 = fadd fast float %2838, %2032
  %2842 = fadd fast float %2839, %2033
  %2843 = fadd fast float %2840, %2034
  %2844 = fsub fast float %2656, %2038
  %2845 = fmul fast float %2820, %2844
  %2846 = fadd fast float %2845, %2038
  br label %2911

; <label>:2847                                    ; preds = %2805
  %2848 = icmp eq i32 %2803, 4
  br i1 %2848, label %2849, label %2889

; <label>:2849                                    ; preds = %2847
  %2850 = fmul fast float %2808, %2523
  %2851 = fmul fast float %2808, %2524
  %2852 = fadd fast float %2850, %2024
  %2853 = fadd fast float %2851, %2025
  %2854 = call float @dx.op.binary.f32(i32 36, float %2037, float %2525)  ; FMin(a,b)
  %2855 = fsub fast float %2854, %2037
  %2856 = fmul fast float %2855, %2811
  %2857 = fadd fast float %2856, %2037
  %2858 = fadd fast float %2522, %2036
  %2859 = fmul fast float %2858, 0x3FF337FAE0000000
  %2860 = fmul fast float %2036, %2036
  %2861 = fmul fast float %2522, %2522
  %2862 = fadd fast float %2861, %2860
  %2863 = fmul fast float %2862, 0x3FE5152B00000000
  %2864 = fmul fast float %2036, 0xBFCC1F85E0000000
  %2865 = fmul fast float %2864, %2522
  %2866 = fadd fast float %2865, 0xBFE1363700000000
  %2867 = fadd fast float %2866, %2859
  %2868 = fsub fast float %2867, %2863
  %2869 = fmul fast float %2858, 0x3FBA6F0D00000000
  %2870 = fmul fast float %2862, 0x3FD0432880000000
  %2871 = fmul fast float %2036, 0xBFEF110800000000
  %2872 = fmul fast float %2871, %2522
  %2873 = fadd fast float %2872, 1.000000e+00
  %2874 = fsub fast float %2873, %2869
  %2875 = fadd fast float %2874, %2870
  %2876 = fdiv fast float %2868, %2875
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2878 = fsub fast float %2877, %2036
  %2879 = fmul fast float %2878, %2814
  %2880 = fadd fast float %2879, %2036
  %2881 = fmul fast float %2817, %2628
  %2882 = fmul fast float %2817, %2629
  %2883 = fmul fast float %2817, %2630
  %2884 = fadd fast float %2881, %2032
  %2885 = fadd fast float %2882, %2033
  %2886 = fadd fast float %2883, %2034
  %2887 = fmul fast float %2820, %2656
  %2888 = fadd fast float %2887, %2038
  br label %2911

; <label>:2889                                    ; preds = %2847
  %2890 = icmp eq i32 %2803, 8
  br i1 %2890, label %2891, label %2911

; <label>:2891                                    ; preds = %2889
  %2892 = fmul fast float %2808, %2523
  %2893 = fmul fast float %2808, %2524
  %2894 = fadd fast float %2892, %2024
  %2895 = fadd fast float %2893, %2025
  %2896 = call float @dx.op.binary.f32(i32 36, float %2037, float %2525)  ; FMin(a,b)
  %2897 = fsub fast float %2896, %2037
  %2898 = fmul fast float %2897, %2811
  %2899 = fadd fast float %2898, %2037
  %2900 = fsub fast float %2522, %2036
  %2901 = fmul fast float %2814, %2900
  %2902 = fadd fast float %2901, %2036
  %2903 = fmul fast float %2817, %2628
  %2904 = fmul fast float %2817, %2629
  %2905 = fmul fast float %2817, %2630
  %2906 = fadd fast float %2903, %2032
  %2907 = fadd fast float %2904, %2033
  %2908 = fadd fast float %2905, %2034
  %2909 = fmul fast float %2820, %2656
  %2910 = fadd fast float %2909, %2038
  br label %2911

; <label>:2911                                    ; preds = %2891, %2889, %2849, %2822, %2794, %2221, %2040, %2023
  %2912 = phi float [ %2024, %2794 ], [ %2024, %2221 ], [ %2024, %2023 ], [ %2894, %2891 ], [ %2024, %2889 ], [ %2852, %2849 ], [ %2827, %2822 ], [ %2024, %2040 ]
  %2913 = phi float [ %2025, %2794 ], [ %2025, %2221 ], [ %2025, %2023 ], [ %2895, %2891 ], [ %2025, %2889 ], [ %2853, %2849 ], [ %2828, %2822 ], [ %2025, %2040 ]
  %2914 = phi float [ %2795, %2794 ], [ %2026, %2221 ], [ %2026, %2023 ], [ %2795, %2891 ], [ %2795, %2889 ], [ %2795, %2849 ], [ %2795, %2822 ], [ %2026, %2040 ]
  %2915 = phi float [ %2796, %2794 ], [ %2027, %2221 ], [ %2027, %2023 ], [ %2796, %2891 ], [ %2796, %2889 ], [ %2796, %2849 ], [ %2796, %2822 ], [ %2027, %2040 ]
  %2916 = phi float [ %2797, %2794 ], [ %2028, %2221 ], [ %2028, %2023 ], [ %2797, %2891 ], [ %2797, %2889 ], [ %2797, %2849 ], [ %2797, %2822 ], [ %2028, %2040 ]
  %2917 = phi float [ %2798, %2794 ], [ %2029, %2221 ], [ %2029, %2023 ], [ %2798, %2891 ], [ %2798, %2889 ], [ %2798, %2849 ], [ %2798, %2822 ], [ %2029, %2040 ]
  %2918 = phi float [ %2799, %2794 ], [ %2030, %2221 ], [ %2030, %2023 ], [ %2799, %2891 ], [ %2799, %2889 ], [ %2799, %2849 ], [ %2799, %2822 ], [ %2030, %2040 ]
  %2919 = phi float [ %2800, %2794 ], [ %2031, %2221 ], [ %2031, %2023 ], [ %2800, %2891 ], [ %2800, %2889 ], [ %2800, %2849 ], [ %2800, %2822 ], [ %2031, %2040 ]
  %2920 = phi float [ %2032, %2794 ], [ %2032, %2221 ], [ %2032, %2023 ], [ %2906, %2891 ], [ %2032, %2889 ], [ %2884, %2849 ], [ %2841, %2822 ], [ %2032, %2040 ]
  %2921 = phi float [ %2033, %2794 ], [ %2033, %2221 ], [ %2033, %2023 ], [ %2907, %2891 ], [ %2033, %2889 ], [ %2885, %2849 ], [ %2842, %2822 ], [ %2033, %2040 ]
  %2922 = phi float [ %2034, %2794 ], [ %2034, %2221 ], [ %2034, %2023 ], [ %2908, %2891 ], [ %2034, %2889 ], [ %2886, %2849 ], [ %2843, %2822 ], [ %2034, %2040 ]
  %2923 = phi float [ %2801, %2794 ], [ %2035, %2221 ], [ %2035, %2023 ], [ %2801, %2891 ], [ %2801, %2889 ], [ %2801, %2849 ], [ %2801, %2822 ], [ %2035, %2040 ]
  %2924 = phi float [ %2036, %2794 ], [ %2036, %2221 ], [ %2036, %2023 ], [ %2902, %2891 ], [ %2036, %2889 ], [ %2880, %2849 ], [ %2834, %2822 ], [ %2036, %2040 ]
  %2925 = phi float [ %2037, %2794 ], [ %2037, %2221 ], [ %2037, %2023 ], [ %2899, %2891 ], [ %2037, %2889 ], [ %2857, %2849 ], [ %2831, %2822 ], [ %2037, %2040 ]
  %2926 = phi float [ %2038, %2794 ], [ %2038, %2221 ], [ %2038, %2023 ], [ %2910, %2891 ], [ %2038, %2889 ], [ %2888, %2849 ], [ %2846, %2822 ], [ %2038, %2040 ]
  %2927 = phi float [ %2802, %2794 ], [ %2039, %2221 ], [ %2039, %2023 ], [ %2802, %2891 ], [ %2802, %2889 ], [ %2802, %2849 ], [ %2802, %2822 ], [ %2039, %2040 ]
  br i1 %453, label %3799, label %2928

; <label>:2928                                    ; preds = %2911
  %2929 = icmp ult i32 %507, 4
  %2930 = add i32 %55, 72
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = add i32 %55, 76
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = or i32 %2935, %2932
  %2937 = icmp eq i32 %2936, 0
  br i1 %2937, label %3799, label %2938

; <label>:2938                                    ; preds = %2928
  %2939 = and i32 %2932, 262144
  %2940 = icmp ne i32 %2939, 0
  %2941 = select i1 %2940, float %61, float 1.000000e+00
  %2942 = select i1 %2940, float %62, float 0.000000e+00
  %2943 = select i1 %2940, float %63, float 0.000000e+00
  %2944 = select i1 %2940, float %64, float 1.000000e+00
  %2945 = select i1 %2940, float %65, float %88
  %2946 = select i1 %2940, float %66, float %89
  %2947 = add i32 %55, 332
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = lshr i32 %2949, 16
  %2951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2950)  ; LegacyF16ToF32(value)
  %2952 = fmul fast float %2951, 0x3F50624DE0000000
  %2953 = add i32 %55, 136
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = lshr i32 %2955, 16
  %2957 = and i32 %2956, 255
  %2958 = lshr i32 %2955, 24
  %2959 = add i32 %55, 340
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 65535
  %2963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2962)  ; LegacyF16ToF32(value)
  %2964 = lshr i32 %2961, 16
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = add i32 %55, 80
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = lshr i32 %2968, 22
  %2970 = shl nuw nsw i32 %2969, 5
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = shl i32 %2968, 4
  %2973 = and i32 %2972, 32752
  %2974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2973)  ; LegacyF16ToF32(value)
  %2975 = lshr i32 %2968, 7
  %2976 = and i32 %2975, 32752
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2979 = extractvalue %dx.types.CBufRet.f32 %2978, 3
  %2980 = fmul fast float %2979, 1.000000e+03
  %2981 = fmul fast float %443, %2980
  %2982 = call float @dx.op.unary.f32(i32 22, float %2981)  ; Frc(value)
  %2983 = fadd fast float %2982, %433
  %2984 = fmul fast float %444, %2980
  %2985 = call float @dx.op.unary.f32(i32 22, float %2984)  ; Frc(value)
  %2986 = fadd fast float %2985, %435
  %2987 = fmul fast float %2952, %2980
  %2988 = call float @dx.op.unary.f32(i32 22, float %2987)  ; Frc(value)
  %2989 = fmul fast float %2988, 0x401921FB60000000
  %2990 = fadd fast float %2989, %2971
  %2991 = call float @dx.op.unary.f32(i32 13, float %2990)  ; Sin(value)
  %2992 = call float @dx.op.unary.f32(i32 12, float %2990)  ; Cos(value)
  %2993 = fsub fast float -0.000000e+00, %2991
  %2994 = fadd fast float %2945, -5.000000e-01
  %2995 = fadd fast float %2946, -5.000000e-01
  %2996 = fmul fast float %2963, %2994
  %2997 = fmul fast float %2965, %2995
  %2998 = fadd fast float %2996, 5.000000e-01
  %2999 = fadd fast float %2997, 5.000000e-01
  %3000 = fmul fast float %2974, %2998
  %3001 = fmul fast float %2977, %2999
  %3002 = fmul fast float %2992, %3000
  %3003 = call float @dx.op.tertiary.f32(i32 46, float %2993, float %3001, float %3002)  ; FMad(a,b,c)
  %3004 = fmul fast float %2991, %3000
  %3005 = call float @dx.op.tertiary.f32(i32 46, float %2992, float %3001, float %3004)  ; FMad(a,b,c)
  %3006 = fadd fast float %2983, %3003
  %3007 = fadd fast float %2986, %3005
  %3008 = icmp ugt i32 %2957, 1
  %3009 = icmp ugt i32 %2955, 33554431
  %3010 = or i1 %3009, %3008
  br i1 %3010, label %3011, label %3036

; <label>:3011                                    ; preds = %2938
  %3012 = add i32 %55, 276
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = lshr i32 %3014, 16
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = fmul fast float %2979, %3016
  %3018 = call float @dx.op.unary.f32(i32 22, float %3017)  ; Frc(value)
  %3019 = mul nuw nsw i32 %2957, %2958
  %3020 = uitofp i32 %3019 to float
  %3021 = fmul fast float %3018, %3020
  %3022 = call float @dx.op.unary.f32(i32 27, float %3021)  ; Round_ni(value)
  %3023 = fptoui float %3022 to i32
  %3024 = urem i32 %3023, %2957
  %3025 = udiv i32 %3023, %2958
  %3026 = call float @dx.op.unary.f32(i32 22, float %3006)  ; Frc(value)
  %3027 = call float @dx.op.unary.f32(i32 22, float %3007)  ; Frc(value)
  %3028 = uitofp i32 %3024 to float
  %3029 = uitofp i32 %3025 to float
  %3030 = fadd fast float %3026, %3028
  %3031 = fadd fast float %3027, %3029
  %3032 = uitofp i32 %2957 to float
  %3033 = uitofp i32 %2958 to float
  %3034 = fdiv fast float %3030, %3032
  %3035 = fdiv fast float %3031, %3033
  br label %3036

; <label>:3036                                    ; preds = %3011, %2938
  %3037 = phi float [ %3034, %3011 ], [ %3006, %2938 ]
  %3038 = phi float [ %3035, %3011 ], [ %3007, %2938 ]
  %3039 = and i32 %2932, 256
  %3040 = icmp eq i32 %3039, 0
  br i1 %3040, label %3087, label %3041

; <label>:3041                                    ; preds = %3036
  %3042 = add i32 %55, 452
  %3043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3042, i32 undef)  ; BufferLoad(srv,index,wot)
  %3044 = extractvalue %dx.types.ResRet.i32 %3043, 0
  %3045 = add i32 %3044, 0
  %3046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3046, %dx.types.Handle %103, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3048 = extractvalue %dx.types.ResRet.f32 %3047, 0
  %3049 = add i32 %55, 148
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = shl i32 %3051, 4
  %3053 = and i32 %3052, 32752
  %3054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3053)  ; LegacyF16ToF32(value)
  %3055 = lshr i32 %3051, 7
  %3056 = and i32 %3055, 32752
  %3057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3056)  ; LegacyF16ToF32(value)
  %3058 = fsub fast float 1.000000e+00, %502
  %3059 = call float @dx.op.binary.f32(i32 35, float %3058, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3060 = bitcast float %502 to i32
  %3061 = sitofp i32 %3060 to float
  %3062 = fadd fast float %3061, 0xC1CFBF8940000000
  %3063 = fmul fast float %3057, %3062
  %3064 = fadd fast float %3063, 0x41CFBF8940000000
  %3065 = fptosi float %3064 to i32
  %3066 = bitcast i32 %3065 to float
  %3067 = bitcast float %3059 to i32
  %3068 = sitofp i32 %3067 to float
  %3069 = fadd fast float %3068, 0xC1CFBF8940000000
  %3070 = fmul fast float %3069, %3057
  %3071 = fadd fast float %3070, 0x41CFBF8940000000
  %3072 = fptosi float %3071 to i32
  %3073 = bitcast i32 %3072 to float
  %3074 = fmul fast float %3066, %3054
  %3075 = fmul fast float %3073, %3054
  %3076 = fsub fast float %3059, %3074
  %3077 = fadd fast float %3075, %3059
  %3078 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3079 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3080 = fsub fast float %3048, %3078
  %3081 = fsub fast float %3079, %3078
  %3082 = bitcast float %3081 to i32
  %3083 = sub nsw i32 2129859010, %3082
  %3084 = bitcast i32 %3083 to float
  %3085 = fmul fast float %3084, %3080
  %3086 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  br label %3087

; <label>:3087                                    ; preds = %3041, %3036
  %3088 = phi float [ %3086, %3041 ], [ %502, %3036 ]
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 128
  %3092 = icmp eq i32 %3091, 0
  br i1 %3092, label %3109, label %3093

; <label>:3093                                    ; preds = %3087
  %3094 = add i32 %55, 436
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = add i32 %3096, 0
  %3098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3098, %dx.types.Handle %103, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3100 = extractvalue %dx.types.ResRet.f32 %3099, 0
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = and i32 %3102, 524288
  %3104 = icmp ne i32 %3103, 0
  %3105 = fcmp fast ogt float %3100, 0x3FE0101020000000
  %3106 = select i1 %3105, float 1.000000e+00, float 0.000000e+00
  %3107 = select i1 %3104, float %3106, float %3100
  %3108 = fmul fast float %3107, %3088
  br label %3109

; <label>:3109                                    ; preds = %3093, %3087
  %3110 = phi float [ %3108, %3093 ], [ %3088, %3087 ]
  %3111 = fcmp fast ult float %3110, 0x3F70101020000000
  br i1 %3111, label %3799, label %3112

; <label>:3112                                    ; preds = %3109
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 16
  %3116 = icmp eq i32 %3115, 0
  br i1 %3116, label %3315, label %3117

; <label>:3117                                    ; preds = %3112
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = add i32 %55, 388
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = add i32 %3122, 0
  %3124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3124, %dx.types.Handle %102, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3126 = extractvalue %dx.types.ResRet.f32 %3125, 0
  %3127 = extractvalue %dx.types.ResRet.f32 %3125, 1
  %3128 = extractvalue %dx.types.ResRet.f32 %3125, 2
  %3129 = extractvalue %dx.types.ResRet.f32 %3125, 3
  %3130 = and i32 %3119, 255
  %3131 = uitofp i32 %3130 to float
  %3132 = lshr i32 %3119, 8
  %3133 = and i32 %3132, 255
  %3134 = uitofp i32 %3133 to float
  %3135 = fmul fast float %3129, %3131
  %3136 = fadd fast float %3135, %3134
  %3137 = fmul fast float %3136, 0x3F70101000000000
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 512
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3150, label %3142

; <label>:3142                                    ; preds = %3117
  %3143 = add i32 %55, 472
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = add i32 %3145, 0
  %3147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3147, %dx.types.Handle %103, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3149 = extractvalue %dx.types.ResRet.f32 %3148, 0
  br label %3150

; <label>:3150                                    ; preds = %3142, %3117
  %3151 = phi float [ %3149, %3142 ], [ 1.000000e+00, %3117 ]
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = and i32 %3153, 33554432
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3262, label %3156

; <label>:3156                                    ; preds = %3150
  %3157 = add i32 %55, 272
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = and i32 %3159, 65535
  %3161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3160)  ; LegacyF16ToF32(value)
  %3162 = lshr i32 %3159, 16
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = add i32 %55, 276
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, 65535
  %3168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3167)  ; LegacyF16ToF32(value)
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = lshr i32 %3170, 24
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3172, 0x3F70101020000000
  %3174 = and i32 %3170, 255
  %3175 = uitofp i32 %3174 to float
  %3176 = fmul fast float %3175, 0x3F70101020000000
  %3177 = lshr i32 %3170, 8
  %3178 = and i32 %3177, 255
  %3179 = uitofp i32 %3178 to float
  %3180 = fmul fast float %3179, 0x3F70101020000000
  %3181 = lshr i32 %3170, 16
  %3182 = and i32 %3181, 255
  %3183 = uitofp i32 %3182 to float
  %3184 = fmul fast float %3183, 0x3F70101020000000
  %3185 = add i32 %55, 268
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = lshr i32 %3187, 24
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = and i32 %3187, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101020000000
  %3194 = lshr i32 %3187, 8
  %3195 = and i32 %3194, 255
  %3196 = uitofp i32 %3195 to float
  %3197 = fmul fast float %3196, 0x3F70101020000000
  %3198 = lshr i32 %3187, 16
  %3199 = and i32 %3198, 255
  %3200 = uitofp i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3F70101020000000
  %3202 = bitcast float %3126 to i32
  %3203 = ashr i32 %3202, 1
  %3204 = sub nsw i32 1597463174, %3203
  %3205 = bitcast i32 %3204 to float
  %3206 = fmul fast float %3126, 5.000000e-01
  %3207 = fmul fast float %3205, %3205
  %3208 = fmul fast float %3207, %3206
  %3209 = fsub fast float 1.500000e+00, %3208
  %3210 = fmul fast float %3205, %3126
  %3211 = fmul fast float %3210, %3209
  %3212 = bitcast float %3127 to i32
  %3213 = ashr i32 %3212, 1
  %3214 = sub nsw i32 1597463174, %3213
  %3215 = bitcast i32 %3214 to float
  %3216 = fmul fast float %3127, 5.000000e-01
  %3217 = fmul fast float %3215, %3215
  %3218 = fmul fast float %3217, %3216
  %3219 = fsub fast float 1.500000e+00, %3218
  %3220 = fmul fast float %3215, %3127
  %3221 = fmul fast float %3220, %3219
  %3222 = bitcast float %3128 to i32
  %3223 = ashr i32 %3222, 1
  %3224 = sub nsw i32 1597463174, %3223
  %3225 = bitcast i32 %3224 to float
  %3226 = fmul fast float %3128, 5.000000e-01
  %3227 = fmul fast float %3225, %3225
  %3228 = fmul fast float %3227, %3226
  %3229 = fsub fast float 1.500000e+00, %3228
  %3230 = fmul fast float %3225, %3128
  %3231 = fmul fast float %3230, %3229
  %3232 = fsub fast float %3211, %3193
  %3233 = fsub fast float %3221, %3197
  %3234 = fsub fast float %3231, %3201
  %3235 = fmul fast float %3232, %3161
  %3236 = fmul fast float %3233, %3163
  %3237 = fmul fast float %3234, %3168
  %3238 = fadd fast float %3235, %3176
  %3239 = fadd fast float %3236, %3180
  %3240 = fadd fast float %3237, %3184
  %3241 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3242 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3243 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3244 = fmul fast float %3241, %3241
  %3245 = fmul fast float %3242, %3242
  %3246 = fmul fast float %3243, %3243
  %3247 = fsub fast float %3244, %3126
  %3248 = fsub fast float %3245, %3127
  %3249 = fsub fast float %3246, %3128
  %3250 = fmul fast float %3247, %3151
  %3251 = fmul fast float %3248, %3151
  %3252 = fmul fast float %3249, %3151
  %3253 = fadd fast float %3250, %3126
  %3254 = fadd fast float %3251, %3127
  %3255 = fadd fast float %3252, %3128
  %3256 = fadd fast float %3173, %3137
  %3257 = fsub fast float %3256, %3190
  %3258 = call float @dx.op.unary.f32(i32 7, float %3257)  ; Saturate(value)
  %3259 = fsub fast float %3258, %3137
  %3260 = fmul fast float %3259, %3151
  %3261 = fadd fast float %3260, %3137
  br label %3315

; <label>:3262                                    ; preds = %3150
  %3263 = and i32 %3153, 134217728
  %3264 = icmp eq i32 %3263, 0
  br i1 %3264, label %3299, label %3265

; <label>:3265                                    ; preds = %3262
  %3266 = call float @dx.op.unary.f32(i32 24, float %420)  ; Sqrt(value)
  %3267 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %3268 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %3269 = fadd fast float %3266, -5.000000e-01
  %3270 = fadd fast float %3267, -5.000000e-01
  %3271 = fadd fast float %3268, -5.000000e-01
  %3272 = fmul fast float %3269, %3151
  %3273 = fmul fast float %3270, %3151
  %3274 = fmul fast float %3271, %3151
  %3275 = fadd fast float %3272, 5.000000e-01
  %3276 = fadd fast float %3273, 5.000000e-01
  %3277 = fadd fast float %3274, 5.000000e-01
  %3278 = call float @dx.op.unary.f32(i32 24, float %3126)  ; Sqrt(value)
  %3279 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3280 = call float @dx.op.unary.f32(i32 24, float %3128)  ; Sqrt(value)
  %3281 = fmul fast float %3275, 2.000000e+00
  %3282 = fsub fast float 1.000000e+00, %3281
  %3283 = fmul fast float %3282, %3278
  %3284 = fadd fast float %3283, %3281
  %3285 = fmul fast float %3284, %3278
  %3286 = fmul fast float %3276, 2.000000e+00
  %3287 = fsub fast float 1.000000e+00, %3286
  %3288 = fmul fast float %3287, %3279
  %3289 = fadd fast float %3288, %3286
  %3290 = fmul fast float %3289, %3279
  %3291 = fmul fast float %3277, 2.000000e+00
  %3292 = fsub fast float 1.000000e+00, %3291
  %3293 = fmul fast float %3292, %3280
  %3294 = fadd fast float %3293, %3291
  %3295 = fmul fast float %3294, %3280
  %3296 = fmul fast float %3285, %3285
  %3297 = fmul fast float %3290, %3290
  %3298 = fmul fast float %3295, %3295
  br label %3315

; <label>:3299                                    ; preds = %3262
  %3300 = fmul fast float %420, %420
  %3301 = fmul fast float %424, %424
  %3302 = fmul fast float %428, %428
  %3303 = fadd fast float %3300, -1.000000e+00
  %3304 = fadd fast float %3301, -1.000000e+00
  %3305 = fadd fast float %3302, -1.000000e+00
  %3306 = fmul fast float %3151, %3303
  %3307 = fmul fast float %3151, %3304
  %3308 = fmul fast float %3151, %3305
  %3309 = fadd fast float %3306, 1.000000e+00
  %3310 = fadd fast float %3307, 1.000000e+00
  %3311 = fadd fast float %3308, 1.000000e+00
  %3312 = fmul fast float %3309, %3126
  %3313 = fmul fast float %3310, %3127
  %3314 = fmul fast float %3311, %3128
  br label %3315

; <label>:3315                                    ; preds = %3299, %3265, %3156, %3112
  %3316 = phi float [ %3261, %3156 ], [ %3137, %3265 ], [ %3137, %3299 ], [ 0x3FA23C0BE0000000, %3112 ]
  %3317 = phi float [ %3253, %3156 ], [ %3296, %3265 ], [ %3312, %3299 ], [ 1.000000e+00, %3112 ]
  %3318 = phi float [ %3254, %3156 ], [ %3297, %3265 ], [ %3313, %3299 ], [ 1.000000e+00, %3112 ]
  %3319 = phi float [ %3255, %3156 ], [ %3298, %3265 ], [ %3314, %3299 ], [ 1.000000e+00, %3112 ]
  %3320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.i32 %3320, 1
  %3322 = and i32 %3321, 1
  %3323 = icmp ne i32 %3322, 0
  %3324 = add i32 %55, 356
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = and i32 %3326, 32
  %3328 = icmp ne i32 %3327, 0
  %3329 = and i1 %3323, %3328
  %3330 = select i1 %3329, float 1.000000e+00, float %3317
  %3331 = select i1 %3329, float 0x3FD3333340000000, float %3318
  %3332 = select i1 %3329, float 0x3FD3333340000000, float %3319
  %3333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.i32 %3333, 0
  %3335 = and i32 %3334, 32
  %3336 = icmp eq i32 %3335, 0
  br i1 %3336, label %3409, label %3337

; <label>:3337                                    ; preds = %3315
  %3338 = add i32 %55, 140
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = add i32 %55, 404
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = add i32 %3343, 0
  %3345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3345, %dx.types.Handle %102, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.ResRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.ResRet.f32 %3346, 2
  %3350 = extractvalue %dx.types.ResRet.f32 %3346, 3
  %3351 = and i32 %3340, 255
  %3352 = uitofp i32 %3351 to float
  %3353 = lshr i32 %3340, 8
  %3354 = and i32 %3353, 255
  %3355 = uitofp i32 %3354 to float
  %3356 = lshr i32 %3340, 16
  %3357 = and i32 %3356, 255
  %3358 = uitofp i32 %3357 to float
  %3359 = fmul fast float %3358, 0x3F70101000000000
  %3360 = fmul fast float %3347, %3352
  %3361 = fadd fast float %3360, %3355
  %3362 = fmul fast float %3361, 0x3F70101000000000
  %3363 = fadd fast float %3348, -5.000000e-01
  %3364 = fadd fast float %3350, -5.000000e-01
  %3365 = fmul fast float %3363, %3359
  %3366 = fmul fast float %3364, %3359
  %3367 = fadd fast float %3365, 5.000000e-01
  %3368 = fadd fast float %3366, 5.000000e-01
  %3369 = fmul fast float %3367, 2.000000e+00
  %3370 = fadd fast float %3369, -1.000000e+00
  %3371 = fmul fast float %3368, 2.000000e+00
  %3372 = fadd fast float %3371, -1.000000e+00
  %3373 = fadd fast float %3370, %3372
  %3374 = fmul fast float %3373, 5.000000e-01
  %3375 = fsub fast float %3370, %3372
  %3376 = fmul fast float %3375, 5.000000e-01
  %3377 = call float @dx.op.unary.f32(i32 6, float %3374)  ; FAbs(value)
  %3378 = fsub fast float 1.000000e+00, %3377
  %3379 = call float @dx.op.unary.f32(i32 6, float %3376)  ; FAbs(value)
  %3380 = fsub fast float %3378, %3379
  %3381 = call float @dx.op.dot3.f32(i32 55, float %3374, float %3376, float %3380, float %3374, float %3376, float %3380)  ; Dot3(ax,ay,az,bx,by,bz)
  %3382 = call float @dx.op.unary.f32(i32 25, float %3381)  ; Rsqrt(value)
  %3383 = fmul fast float %3374, %3382
  %3384 = fmul fast float %3376, %3382
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = and i32 %3386, 67108864
  %3388 = icmp eq i32 %3387, 0
  br i1 %3388, label %3405, label %3389

; <label>:3389                                    ; preds = %3337
  %3390 = add i32 %55, 328
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = and i32 %3392, 65535
  %3394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3393)  ; LegacyF16ToF32(value)
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 65535
  %3398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3397)  ; LegacyF16ToF32(value)
  %3399 = lshr i32 %3392, 16
  %3400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3399)  ; LegacyF16ToF32(value)
  %3401 = fsub fast float %3362, %3400
  %3402 = fmul fast float %3401, %3394
  %3403 = fadd fast float %3402, %3398
  %3404 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  br label %3405

; <label>:3405                                    ; preds = %3389, %3337
  %3406 = phi float [ %3404, %3389 ], [ %3362, %3337 ]
  %3407 = call float @dx.op.dot2.f32(i32 54, float %3383, float %3384, float %2941, float %2942)  ; Dot2(ax,ay,bx,by)
  %3408 = call float @dx.op.dot2.f32(i32 54, float %3383, float %3384, float %2943, float %2944)  ; Dot2(ax,ay,bx,by)
  br label %3409

; <label>:3409                                    ; preds = %3405, %3315
  %3410 = phi float [ %3406, %3405 ], [ 0x3FD6666660000000, %3315 ]
  %3411 = phi float [ %3407, %3405 ], [ 0.000000e+00, %3315 ]
  %3412 = phi float [ %3408, %3405 ], [ 0.000000e+00, %3315 ]
  %3413 = phi float [ %3349, %3405 ], [ 1.000000e+00, %3315 ]
  %3414 = add i32 %55, 208
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = lshr i32 %3416, 22
  %3418 = shl nuw nsw i32 %3417, 5
  %3419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3418)  ; LegacyF16ToF32(value)
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 64
  %3423 = icmp eq i32 %3422, 0
  br i1 %3423, label %3457, label %3424

; <label>:3424                                    ; preds = %3409
  %3425 = add i32 %55, 420
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = add i32 %3427, 0
  %3429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = and i32 %3431, 131072
  %3433 = icmp eq i32 %3432, 0
  %3434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3429, %dx.types.Handle %102, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.ResRet.f32 %3434, 1
  %3437 = extractvalue %dx.types.ResRet.f32 %3434, 2
  %3438 = fmul fast float %3435, %408
  %3439 = fmul fast float %3436, %411
  %3440 = fmul fast float %3437, %414
  br i1 %3433, label %3447, label %3441

; <label>:3441                                    ; preds = %3424
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3444 = fmul fast float %3443, %3438
  %3445 = fmul fast float %3443, %3439
  %3446 = fmul fast float %3443, %3440
  br label %3447

; <label>:3447                                    ; preds = %3441, %3424
  %3448 = phi float [ %3444, %3441 ], [ %3438, %3424 ]
  %3449 = phi float [ %3445, %3441 ], [ %3439, %3424 ]
  %3450 = phi float [ %3446, %3441 ], [ %3440, %3424 ]
  %3451 = fmul fast float %3448, %3419
  %3452 = select i1 %265, float %3451, float %3448
  %3453 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3449, float %3450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3454 = select i1 %265, float 0.000000e+00, float %3448
  %3455 = select i1 %265, float %3453, float %3449
  %3456 = select i1 %265, float 0.000000e+00, float %3450
  br label %3457

; <label>:3457                                    ; preds = %3447, %3409
  %3458 = phi float [ %3454, %3447 ], [ 0.000000e+00, %3409 ]
  %3459 = phi float [ %3455, %3447 ], [ 0.000000e+00, %3409 ]
  %3460 = phi float [ %3456, %3447 ], [ 0.000000e+00, %3409 ]
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = and i32 %3462, 1024
  %3464 = icmp eq i32 %3463, 0
  br i1 %3464, label %3495, label %3465

; <label>:3465                                    ; preds = %3457
  %3466 = add i32 %55, 200
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = and i32 %3468, 255
  %3470 = uitofp i32 %3469 to float
  %3471 = fmul fast float %3470, 0x3F70101020000000
  %3472 = lshr i32 %3468, 8
  %3473 = and i32 %3472, 255
  %3474 = uitofp i32 %3473 to float
  %3475 = fmul fast float %3474, 0x3F70101020000000
  %3476 = lshr i32 %3468, 16
  %3477 = and i32 %3476, 255
  %3478 = uitofp i32 %3477 to float
  %3479 = fmul fast float %3478, 0x3F70101020000000
  %3480 = fmul fast float %3471, %3471
  %3481 = fmul fast float %3475, %3475
  %3482 = fmul fast float %3479, %3479
  %3483 = add i32 %55, 488
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = add i32 %3485, 0
  %3487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3487, %dx.types.Handle %103, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3489 = extractvalue %dx.types.ResRet.f32 %3488, 0
  %3490 = extractvalue %dx.types.ResRet.f32 %3488, 1
  %3491 = extractvalue %dx.types.ResRet.f32 %3488, 2
  %3492 = fmul fast float %3480, %3489
  %3493 = fmul fast float %3481, %3490
  %3494 = fmul fast float %3482, %3491
  br label %3495

; <label>:3495                                    ; preds = %3465, %3457
  %3496 = phi float [ %3492, %3465 ], [ 0.000000e+00, %3457 ]
  %3497 = phi float [ %3493, %3465 ], [ 0.000000e+00, %3457 ]
  %3498 = phi float [ %3494, %3465 ], [ 0.000000e+00, %3457 ]
  %3499 = fcmp fast ogt float %3496, 0.000000e+00
  %3500 = fcmp fast ogt float %3497, 0.000000e+00
  %3501 = fcmp fast ogt float %3498, 0.000000e+00
  %3502 = call float @dx.op.unary.f32(i32 23, float %3496)  ; Log(value)
  %3503 = call float @dx.op.unary.f32(i32 23, float %3497)  ; Log(value)
  %3504 = call float @dx.op.unary.f32(i32 23, float %3498)  ; Log(value)
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = lshr i32 %3506, 7
  %3508 = and i32 %3507, 32752
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = fmul fast float %3502, 0xBFE62E4300000000
  %3511 = fmul fast float %3510, %3509
  %3512 = fmul fast float %3503, 0xBFE62E4300000000
  %3513 = fmul fast float %3512, %3509
  %3514 = fmul fast float %3504, 0xBFE62E4300000000
  %3515 = fmul fast float %3514, %3509
  %3516 = select i1 %3499, float %3511, float 1.270000e+02
  %3517 = select i1 %3500, float %3513, float 1.270000e+02
  %3518 = select i1 %3501, float %3515, float 1.270000e+02
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = and i32 %3520, 10240
  %3522 = icmp eq i32 %3521, 0
  br i1 %3522, label %3543, label %3523

; <label>:3523                                    ; preds = %3495
  %3524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.i32 %3524, 0
  %3526 = and i32 %3525, 2048
  %3527 = icmp eq i32 %3526, 0
  br i1 %3527, label %3543, label %3528

; <label>:3528                                    ; preds = %3523
  %3529 = add i32 %55, 504
  %3530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.i32 %3530, 0
  %3532 = add i32 %3531, 0
  %3533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3533, %dx.types.Handle %103, float %3037, float %3038, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 3
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = shl i32 %3537, 4
  %3539 = and i32 %3538, 32752
  %3540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3539)  ; LegacyF16ToF32(value)
  %3541 = fmul fast float %3540, %3535
  %3542 = call float @dx.op.binary.f32(i32 35, float %3541, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3543

; <label>:3543                                    ; preds = %3528, %3523, %3495
  %3544 = phi float [ %3542, %3528 ], [ 0x3F70101020000000, %3523 ], [ 0x3F70101020000000, %3495 ]
  %3545 = add i32 %55, 144
  %3546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.i32 %3546, 0
  %3548 = and i32 %3547, 255
  %3549 = uitofp i32 %3548 to float
  %3550 = lshr i32 %3547, 8
  %3551 = and i32 %3550, 255
  %3552 = uitofp i32 %3551 to float
  %3553 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3554 = fmul fast float %3552, %3553
  %3555 = fadd fast float %3554, %3549
  %3556 = fmul fast float %3555, 0x3F70101020000000
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  br i1 %2929, label %3558, label %3593

; <label>:3558                                    ; preds = %3543
  %3559 = fmul fast float %3544, 2.000000e+00
  %3560 = fcmp fast olt float %3516, 1.270000e+02
  %3561 = fcmp fast olt float %3517, 1.270000e+02
  %3562 = fcmp fast olt float %3518, 1.270000e+02
  %3563 = fmul fast float %3516, 0xBFF7154760000000
  %3564 = fmul fast float %3563, %3559
  %3565 = fmul fast float %3517, 0xBFF7154760000000
  %3566 = fmul fast float %3565, %3559
  %3567 = fmul fast float %3518, 0xBFF7154760000000
  %3568 = fmul fast float %3567, %3559
  %3569 = call float @dx.op.unary.f32(i32 21, float %3564)  ; Exp(value)
  %3570 = call float @dx.op.unary.f32(i32 21, float %3566)  ; Exp(value)
  %3571 = call float @dx.op.unary.f32(i32 21, float %3568)  ; Exp(value)
  %3572 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3573 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3574 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  %3575 = fadd fast float %3572, -1.000000e+00
  %3576 = select i1 %3560, float %3575, float -1.000000e+00
  %3577 = fadd fast float %3573, -1.000000e+00
  %3578 = select i1 %3561, float %3577, float -1.000000e+00
  %3579 = fadd fast float %3574, -1.000000e+00
  %3580 = select i1 %3562, float %3579, float -1.000000e+00
  %3581 = fmul fast float %3576, %3110
  %3582 = fmul fast float %3578, %3110
  %3583 = fmul fast float %3580, %3110
  %3584 = fadd fast float %3581, 1.000000e+00
  %3585 = fadd fast float %3582, 1.000000e+00
  %3586 = fadd fast float %3583, 1.000000e+00
  %3587 = fmul fast float %3584, %2914
  %3588 = fmul fast float %3585, %2915
  %3589 = fmul fast float %3586, %2916
  %3590 = fmul fast float %3584, %2917
  %3591 = fmul fast float %3585, %2918
  %3592 = fmul fast float %3586, %2919
  br label %3593

; <label>:3593                                    ; preds = %3558, %3543
  %3594 = phi float [ %3587, %3558 ], [ %2914, %3543 ]
  %3595 = phi float [ %3588, %3558 ], [ %2915, %3543 ]
  %3596 = phi float [ %3589, %3558 ], [ %2916, %3543 ]
  %3597 = phi float [ %3590, %3558 ], [ %2917, %3543 ]
  %3598 = phi float [ %3591, %3558 ], [ %2918, %3543 ]
  %3599 = phi float [ %3592, %3558 ], [ %2919, %3543 ]
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = and i32 %3601, 3
  %3603 = icmp eq i32 %3602, 3
  br i1 %3603, label %3682, label %3604

; <label>:3604                                    ; preds = %3593
  %3605 = and i32 %3601, 16
  %3606 = icmp ne i32 %3605, 0
  %3607 = select i1 %3606, float %3110, float 0.000000e+00
  %3608 = icmp eq i32 %3602, 0
  br i1 %3608, label %3609, label %3637

; <label>:3609                                    ; preds = %3604
  %3610 = and i32 %3601, 64
  %3611 = icmp ne i32 %3610, 0
  %3612 = select i1 %3611, float %3110, float 0.000000e+00
  %3613 = fsub fast float %3330, %3594
  %3614 = fsub fast float %3331, %3595
  %3615 = fsub fast float %3332, %3596
  %3616 = fmul fast float %3607, %3613
  %3617 = fmul fast float %3607, %3614
  %3618 = fmul fast float %3607, %3615
  %3619 = fadd fast float %3616, %3594
  %3620 = fadd fast float %3617, %3595
  %3621 = fadd fast float %3618, %3596
  %3622 = fsub fast float %3316, %2923
  %3623 = fmul fast float %3607, %3622
  %3624 = fadd fast float %3623, %2923
  %3625 = fsub fast float %3458, %3597
  %3626 = fsub fast float %3459, %3598
  %3627 = fsub fast float %3460, %3599
  %3628 = fmul fast float %3612, %3625
  %3629 = fmul fast float %3612, %3626
  %3630 = fmul fast float %3612, %3627
  %3631 = fadd fast float %3628, %3597
  %3632 = fadd fast float %3629, %3598
  %3633 = fadd fast float %3630, %3599
  %3634 = fsub fast float %3557, %2927
  %3635 = fmul fast float %3607, %3634
  %3636 = fadd fast float %3635, %2927
  br label %3682

; <label>:3637                                    ; preds = %3604
  %3638 = icmp eq i32 %3602, 1
  br i1 %3638, label %3639, label %3652

; <label>:3639                                    ; preds = %3637
  %3640 = fadd fast float %3330, -1.000000e+00
  %3641 = fadd fast float %3331, -1.000000e+00
  %3642 = fadd fast float %3332, -1.000000e+00
  %3643 = fmul fast float %3607, %3640
  %3644 = fmul fast float %3607, %3641
  %3645 = fmul fast float %3607, %3642
  %3646 = fadd fast float %3643, 1.000000e+00
  %3647 = fadd fast float %3644, 1.000000e+00
  %3648 = fadd fast float %3645, 1.000000e+00
  %3649 = fmul fast float %3646, %3594
  %3650 = fmul fast float %3647, %3595
  %3651 = fmul fast float %3648, %3596
  br label %3682

; <label>:3652                                    ; preds = %3637
  %3653 = icmp eq i32 %3602, 2
  br i1 %3653, label %3654, label %3682

; <label>:3654                                    ; preds = %3652
  %3655 = call float @dx.op.unary.f32(i32 24, float %3330)  ; Sqrt(value)
  %3656 = call float @dx.op.unary.f32(i32 24, float %3331)  ; Sqrt(value)
  %3657 = call float @dx.op.unary.f32(i32 24, float %3332)  ; Sqrt(value)
  %3658 = fadd fast float %3655, -5.000000e-01
  %3659 = fadd fast float %3656, -5.000000e-01
  %3660 = fadd fast float %3657, -5.000000e-01
  %3661 = fmul fast float %3658, %3607
  %3662 = fmul fast float %3659, %3607
  %3663 = fmul fast float %3660, %3607
  %3664 = fadd fast float %3661, 5.000000e-01
  %3665 = fadd fast float %3662, 5.000000e-01
  %3666 = fadd fast float %3663, 5.000000e-01
  %3667 = fmul fast float %3664, 2.000000e+00
  %3668 = fsub fast float 1.000000e+00, %3667
  %3669 = fmul fast float %3668, %3594
  %3670 = fadd fast float %3669, %3667
  %3671 = fmul fast float %3670, %3594
  %3672 = fmul fast float %3665, 2.000000e+00
  %3673 = fsub fast float 1.000000e+00, %3672
  %3674 = fmul fast float %3673, %3595
  %3675 = fadd fast float %3674, %3672
  %3676 = fmul fast float %3675, %3595
  %3677 = fmul fast float %3666, 2.000000e+00
  %3678 = fsub fast float 1.000000e+00, %3677
  %3679 = fmul fast float %3678, %3596
  %3680 = fadd fast float %3679, %3677
  %3681 = fmul fast float %3680, %3596
  br label %3682

; <label>:3682                                    ; preds = %3654, %3652, %3639, %3609, %3593
  %3683 = phi float [ %3594, %3593 ], [ %3671, %3654 ], [ %3594, %3652 ], [ %3649, %3639 ], [ %3619, %3609 ]
  %3684 = phi float [ %3595, %3593 ], [ %3676, %3654 ], [ %3595, %3652 ], [ %3650, %3639 ], [ %3620, %3609 ]
  %3685 = phi float [ %3596, %3593 ], [ %3681, %3654 ], [ %3596, %3652 ], [ %3651, %3639 ], [ %3621, %3609 ]
  %3686 = phi float [ %3597, %3593 ], [ %3597, %3654 ], [ %3597, %3652 ], [ %3597, %3639 ], [ %3631, %3609 ]
  %3687 = phi float [ %3598, %3593 ], [ %3598, %3654 ], [ %3598, %3652 ], [ %3598, %3639 ], [ %3632, %3609 ]
  %3688 = phi float [ %3599, %3593 ], [ %3599, %3654 ], [ %3599, %3652 ], [ %3599, %3639 ], [ %3633, %3609 ]
  %3689 = phi float [ %2923, %3593 ], [ %2923, %3654 ], [ %2923, %3652 ], [ %2923, %3639 ], [ %3624, %3609 ]
  %3690 = phi float [ %2927, %3593 ], [ %2927, %3654 ], [ %2927, %3652 ], [ %2927, %3639 ], [ %3636, %3609 ]
  %3691 = and i32 %3601, 12
  %3692 = icmp eq i32 %3691, 12
  br i1 %3692, label %3799, label %3693

; <label>:3693                                    ; preds = %3682
  %3694 = and i32 %3601, 2097184
  %3695 = icmp eq i32 %3694, 2097184
  %3696 = select i1 %3695, float %3110, float 0.000000e+00
  %3697 = and i32 %3601, 4194336
  %3698 = icmp eq i32 %3697, 4194336
  %3699 = select i1 %3698, float %3110, float 0.000000e+00
  %3700 = and i32 %3601, 8388640
  %3701 = icmp eq i32 %3700, 8388640
  %3702 = select i1 %3701, float %3110, float 0.000000e+00
  %3703 = and i32 %3601, 1024
  %3704 = icmp ne i32 %3703, 0
  %3705 = select i1 %3704, float %3110, float 0.000000e+00
  %3706 = and i32 %3601, 2048
  %3707 = icmp ne i32 %3706, 0
  %3708 = select i1 %3707, float %3110, float 0.000000e+00
  %3709 = icmp eq i32 %3691, 0
  br i1 %3709, label %3710, label %3735

; <label>:3710                                    ; preds = %3693
  %3711 = fsub fast float %3411, %2912
  %3712 = fsub fast float %3412, %2913
  %3713 = fmul fast float %3696, %3711
  %3714 = fmul fast float %3696, %3712
  %3715 = fadd fast float %3713, %2912
  %3716 = fadd fast float %3714, %2913
  %3717 = fsub fast float %3413, %2925
  %3718 = fmul fast float %3699, %3717
  %3719 = fadd fast float %3718, %2925
  %3720 = fsub fast float %3410, %2924
  %3721 = fmul fast float %3702, %3720
  %3722 = fadd fast float %3721, %2924
  %3723 = fsub fast float %3516, %2920
  %3724 = fsub fast float %3517, %2921
  %3725 = fsub fast float %3518, %2922
  %3726 = fmul fast float %3705, %3723
  %3727 = fmul fast float %3705, %3724
  %3728 = fmul fast float %3705, %3725
  %3729 = fadd fast float %3726, %2920
  %3730 = fadd fast float %3727, %2921
  %3731 = fadd fast float %3728, %2922
  %3732 = fsub fast float %3544, %2926
  %3733 = fmul fast float %3708, %3732
  %3734 = fadd fast float %3733, %2926
  br label %3799

; <label>:3735                                    ; preds = %3693
  %3736 = icmp eq i32 %3691, 4
  br i1 %3736, label %3737, label %3777

; <label>:3737                                    ; preds = %3735
  %3738 = fmul fast float %3696, %3411
  %3739 = fmul fast float %3696, %3412
  %3740 = fadd fast float %3738, %2912
  %3741 = fadd fast float %3739, %2913
  %3742 = call float @dx.op.binary.f32(i32 36, float %2925, float %3413)  ; FMin(a,b)
  %3743 = fsub fast float %3742, %2925
  %3744 = fmul fast float %3743, %3699
  %3745 = fadd fast float %3744, %2925
  %3746 = fadd fast float %3410, %2924
  %3747 = fmul fast float %3746, 0x3FF337FAE0000000
  %3748 = fmul fast float %2924, %2924
  %3749 = fmul fast float %3410, %3410
  %3750 = fadd fast float %3749, %3748
  %3751 = fmul fast float %3750, 0x3FE5152B00000000
  %3752 = fmul fast float %2924, 0xBFCC1F85E0000000
  %3753 = fmul fast float %3752, %3410
  %3754 = fadd fast float %3753, 0xBFE1363700000000
  %3755 = fadd fast float %3754, %3747
  %3756 = fsub fast float %3755, %3751
  %3757 = fmul fast float %3746, 0x3FBA6F0D00000000
  %3758 = fmul fast float %3750, 0x3FD0432880000000
  %3759 = fmul fast float %2924, 0xBFEF110800000000
  %3760 = fmul fast float %3759, %3410
  %3761 = fadd fast float %3760, 1.000000e+00
  %3762 = fsub fast float %3761, %3757
  %3763 = fadd fast float %3762, %3758
  %3764 = fdiv fast float %3756, %3763
  %3765 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3766 = fsub fast float %3765, %2924
  %3767 = fmul fast float %3766, %3702
  %3768 = fadd fast float %3767, %2924
  %3769 = fmul fast float %3705, %3516
  %3770 = fmul fast float %3705, %3517
  %3771 = fmul fast float %3705, %3518
  %3772 = fadd fast float %3769, %2920
  %3773 = fadd fast float %3770, %2921
  %3774 = fadd fast float %3771, %2922
  %3775 = fmul fast float %3708, %3544
  %3776 = fadd fast float %3775, %2926
  br label %3799

; <label>:3777                                    ; preds = %3735
  %3778 = icmp eq i32 %3691, 8
  br i1 %3778, label %3779, label %3799

; <label>:3779                                    ; preds = %3777
  %3780 = fmul fast float %3696, %3411
  %3781 = fmul fast float %3696, %3412
  %3782 = fadd fast float %3780, %2912
  %3783 = fadd fast float %3781, %2913
  %3784 = call float @dx.op.binary.f32(i32 36, float %2925, float %3413)  ; FMin(a,b)
  %3785 = fsub fast float %3784, %2925
  %3786 = fmul fast float %3785, %3699
  %3787 = fadd fast float %3786, %2925
  %3788 = fsub fast float %3410, %2924
  %3789 = fmul fast float %3702, %3788
  %3790 = fadd fast float %3789, %2924
  %3791 = fmul fast float %3705, %3516
  %3792 = fmul fast float %3705, %3517
  %3793 = fmul fast float %3705, %3518
  %3794 = fadd fast float %3791, %2920
  %3795 = fadd fast float %3792, %2921
  %3796 = fadd fast float %3793, %2922
  %3797 = fmul fast float %3708, %3544
  %3798 = fadd fast float %3797, %2926
  br label %3799

; <label>:3799                                    ; preds = %3779, %3777, %3737, %3710, %3682, %3109, %2928, %2911
  %3800 = phi float [ %2912, %3682 ], [ %2912, %3109 ], [ %2912, %2911 ], [ %2912, %2928 ], [ %3715, %3710 ], [ %3740, %3737 ], [ %2912, %3777 ], [ %3782, %3779 ]
  %3801 = phi float [ %2913, %3682 ], [ %2913, %3109 ], [ %2913, %2911 ], [ %2913, %2928 ], [ %3716, %3710 ], [ %3741, %3737 ], [ %2913, %3777 ], [ %3783, %3779 ]
  %3802 = phi float [ %3683, %3682 ], [ %2914, %3109 ], [ %2914, %2911 ], [ %2914, %2928 ], [ %3683, %3710 ], [ %3683, %3737 ], [ %3683, %3777 ], [ %3683, %3779 ]
  %3803 = phi float [ %3684, %3682 ], [ %2915, %3109 ], [ %2915, %2911 ], [ %2915, %2928 ], [ %3684, %3710 ], [ %3684, %3737 ], [ %3684, %3777 ], [ %3684, %3779 ]
  %3804 = phi float [ %3685, %3682 ], [ %2916, %3109 ], [ %2916, %2911 ], [ %2916, %2928 ], [ %3685, %3710 ], [ %3685, %3737 ], [ %3685, %3777 ], [ %3685, %3779 ]
  %3805 = phi float [ %3686, %3682 ], [ %2917, %3109 ], [ %2917, %2911 ], [ %2917, %2928 ], [ %3686, %3710 ], [ %3686, %3737 ], [ %3686, %3777 ], [ %3686, %3779 ]
  %3806 = phi float [ %3687, %3682 ], [ %2918, %3109 ], [ %2918, %2911 ], [ %2918, %2928 ], [ %3687, %3710 ], [ %3687, %3737 ], [ %3687, %3777 ], [ %3687, %3779 ]
  %3807 = phi float [ %3688, %3682 ], [ %2919, %3109 ], [ %2919, %2911 ], [ %2919, %2928 ], [ %3688, %3710 ], [ %3688, %3737 ], [ %3688, %3777 ], [ %3688, %3779 ]
  %3808 = phi float [ %2920, %3682 ], [ %2920, %3109 ], [ %2920, %2911 ], [ %2920, %2928 ], [ %3729, %3710 ], [ %3772, %3737 ], [ %2920, %3777 ], [ %3794, %3779 ]
  %3809 = phi float [ %2921, %3682 ], [ %2921, %3109 ], [ %2921, %2911 ], [ %2921, %2928 ], [ %3730, %3710 ], [ %3773, %3737 ], [ %2921, %3777 ], [ %3795, %3779 ]
  %3810 = phi float [ %2922, %3682 ], [ %2922, %3109 ], [ %2922, %2911 ], [ %2922, %2928 ], [ %3731, %3710 ], [ %3774, %3737 ], [ %2922, %3777 ], [ %3796, %3779 ]
  %3811 = phi float [ %3689, %3682 ], [ %2923, %3109 ], [ %2923, %2911 ], [ %2923, %2928 ], [ %3689, %3710 ], [ %3689, %3737 ], [ %3689, %3777 ], [ %3689, %3779 ]
  %3812 = phi float [ %2924, %3682 ], [ %2924, %3109 ], [ %2924, %2911 ], [ %2924, %2928 ], [ %3722, %3710 ], [ %3768, %3737 ], [ %2924, %3777 ], [ %3790, %3779 ]
  %3813 = phi float [ %2925, %3682 ], [ %2925, %3109 ], [ %2925, %2911 ], [ %2925, %2928 ], [ %3719, %3710 ], [ %3745, %3737 ], [ %2925, %3777 ], [ %3787, %3779 ]
  %3814 = phi float [ %2926, %3682 ], [ %2926, %3109 ], [ %2926, %2911 ], [ %2926, %2928 ], [ %3734, %3710 ], [ %3776, %3737 ], [ %2926, %3777 ], [ %3798, %3779 ]
  %3815 = phi float [ %3690, %3682 ], [ %2927, %3109 ], [ %2927, %2911 ], [ %2927, %2928 ], [ %3690, %3710 ], [ %3690, %3737 ], [ %3690, %3777 ], [ %3690, %3779 ]
  %3816 = add i32 %55, 360
  %3817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.i32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.i32 %3817, 1
  %3820 = bitcast i32 %3818 to float
  %3821 = bitcast i32 %3819 to float
  %3822 = fcmp fast oge float %3820, 0.000000e+00
  %3823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3824 = extractvalue %dx.types.CBufRet.f32 %3823, 0
  %3825 = select i1 %3822, float %3820, float %3824
  %3826 = fadd fast float %3825, %207
  %3827 = fmul fast float %3821, %208
  %3828 = add i32 %55, 456
  %3829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.i32 %3829, 0
  %3831 = add i32 %3830, 0
  %3832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3832, %dx.types.Handle %103, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = fmul fast float %3827, %3834
  %3836 = fadd fast float %3826, %3835
  %3837 = and i32 %199, 65535
  %3838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3837)  ; LegacyF16ToF32(value)
  %3839 = lshr i32 %199, 16
  %3840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3839)  ; LegacyF16ToF32(value)
  %3841 = and i32 %200, 65535
  %3842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3841)  ; LegacyF16ToF32(value)
  %3843 = fmul fast float %3838, %3802
  %3844 = fmul fast float %3840, %3803
  %3845 = fmul fast float %3842, %3804
  %3846 = shl i32 %201, 4
  %3847 = and i32 %3846, 32752
  %3848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3847)  ; LegacyF16ToF32(value)
  %3849 = lshr i32 %201, 7
  %3850 = and i32 %3849, 32752
  %3851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3850)  ; LegacyF16ToF32(value)
  %3852 = lshr i32 %201, 22
  %3853 = shl nuw nsw i32 %3852, 5
  %3854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3853)  ; LegacyF16ToF32(value)
  %3855 = and i32 %202, 65535
  %3856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3855)  ; LegacyF16ToF32(value)
  %3857 = fmul fast float %3848, %3805
  %3858 = fmul fast float %3857, %3856
  %3859 = fmul fast float %3851, %3806
  %3860 = fmul fast float %3859, %3856
  %3861 = fmul fast float %3854, %3807
  %3862 = fmul fast float %3861, %3856
  %3863 = call float @dx.op.dot2.f32(i32 54, float %3800, float %3801, float %3800, float %3801)  ; Dot2(ax,ay,bx,by)
  %3864 = fmul fast float %3863, 0x3FE3333340000000
  %3865 = fsub fast float 1.000000e+00, %3864
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3800, float %3801, float %3865, float %3800, float %3801, float %3865)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = call float @dx.op.unary.f32(i32 25, float %3866)  ; Rsqrt(value)
  %3868 = fmul fast float %3867, %3800
  %3869 = fmul fast float %3867, %3801
  %3870 = fmul fast float %3865, %3867
  %3871 = fmul fast float %3870, %113
  %3872 = fmul fast float %3870, %114
  %3873 = fmul fast float %3870, %115
  %3874 = fmul fast float %3868, %81
  %3875 = fmul fast float %3868, %82
  %3876 = fmul fast float %3868, %83
  %3877 = fadd fast float %3871, %3874
  %3878 = fadd fast float %3872, %3875
  %3879 = fadd fast float %3873, %3876
  %3880 = fmul fast float %125, %3869
  %3881 = fmul fast float %126, %3869
  %3882 = fmul fast float %127, %3869
  %3883 = fadd fast float %3877, %3880
  %3884 = fadd fast float %3878, %3881
  %3885 = fadd fast float %3879, %3882
  %3886 = call float @dx.op.dot3.f32(i32 55, float %3883, float %3884, float %3885, float %3883, float %3884, float %3885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3887 = call float @dx.op.unary.f32(i32 25, float %3886)  ; Rsqrt(value)
  %3888 = fmul fast float %3883, %3887
  %3889 = fmul fast float %3884, %3887
  %3890 = fmul fast float %3885, %3887
  %3891 = icmp eq i32 %57, 65535
  br i1 %3891, label %4437, label %3892

; <label>:3892                                    ; preds = %3799
  %3893 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %3894 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %3895 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %3896 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %3897 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %3898 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %3899 = fadd fast float %3893, %58
  %3900 = fadd fast float %3894, %59
  %3901 = fadd fast float %3895, %60
  %3902 = fadd fast float %3896, %58
  %3903 = fadd fast float %3897, %59
  %3904 = fadd fast float %3898, %60
  %3905 = mul i32 %57, 48
  %3906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = add i32 %3905, 16
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = add i32 %3905, 32
  %3916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.ResRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3916, 2
  %3920 = extractvalue %dx.types.ResRet.f32 %3916, 3
  %3921 = bitcast float %3920 to i32
  %3922 = fmul fast float %3907, %58
  %3923 = fmul fast float %3908, %59
  %3924 = fmul fast float %3909, %60
  %3925 = fsub fast float %3922, %3912
  %3926 = fsub fast float %3923, %3913
  %3927 = fsub fast float %3924, %3914
  %3928 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3929 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3930 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3931 = fmul fast float %3928, %3917
  %3932 = fmul fast float %3929, %3918
  %3933 = fmul fast float %3930, %3919
  %3934 = fadd fast float %3917, -1.000000e+00
  %3935 = fadd fast float %3918, -1.000000e+00
  %3936 = fadd fast float %3919, -1.000000e+00
  %3937 = call float @dx.op.unary.f32(i32 27, float %3931)  ; Round_ni(value)
  %3938 = call float @dx.op.unary.f32(i32 27, float %3932)  ; Round_ni(value)
  %3939 = call float @dx.op.unary.f32(i32 27, float %3933)  ; Round_ni(value)
  %3940 = call float @dx.op.binary.f32(i32 36, float %3937, float %3934)  ; FMin(a,b)
  %3941 = call float @dx.op.binary.f32(i32 36, float %3938, float %3935)  ; FMin(a,b)
  %3942 = call float @dx.op.binary.f32(i32 36, float %3939, float %3936)  ; FMin(a,b)
  %3943 = fmul fast float %3942, %3918
  %3944 = fadd fast float %3943, %3941
  %3945 = fmul fast float %3944, %3917
  %3946 = fadd fast float %3945, %3940
  %3947 = fptosi float %3946 to i32
  %3948 = add nsw i32 %3947, %3921
  %3949 = shl nsw i32 %3948, 2
  %3950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.i32 %3950, 0
  %3952 = lshr i32 %3951, 16
  %3953 = icmp eq i32 %3952, 0
  br i1 %3953, label %4403, label %3954

; <label>:3954                                    ; preds = %3892
  br label %3955

; <label>:3955                                    ; preds = %4079, %3954
  %3956 = phi i32 [ %3981, %4079 ], [ %3952, %3954 ]
  %3957 = phi float [ %4080, %4079 ], [ 0.000000e+00, %3954 ]
  %3958 = phi float [ %4081, %4079 ], [ %3836, %3954 ]
  %3959 = phi float [ %4082, %4079 ], [ %3815, %3954 ]
  %3960 = phi float [ %4083, %4079 ], [ %3808, %3954 ]
  %3961 = phi float [ %4084, %4079 ], [ %3809, %3954 ]
  %3962 = phi float [ %4085, %4079 ], [ %3810, %3954 ]
  %3963 = phi float [ %4086, %4079 ], [ 0.000000e+00, %3954 ]
  %3964 = phi float [ %4087, %4079 ], [ 0.000000e+00, %3954 ]
  %3965 = phi float [ %4088, %4079 ], [ %3858, %3954 ]
  %3966 = phi float [ %4089, %4079 ], [ %3860, %3954 ]
  %3967 = phi float [ %4090, %4079 ], [ %3862, %3954 ]
  %3968 = phi float [ %4091, %4079 ], [ %3888, %3954 ]
  %3969 = phi float [ %4092, %4079 ], [ %3889, %3954 ]
  %3970 = phi float [ %4093, %4079 ], [ %3890, %3954 ]
  %3971 = phi float [ %4094, %4079 ], [ %3813, %3954 ]
  %3972 = phi float [ %4095, %4079 ], [ %3812, %3954 ]
  %3973 = phi float [ %4096, %4079 ], [ 0.000000e+00, %3954 ]
  %3974 = phi float [ %4097, %4079 ], [ %3811, %3954 ]
  %3975 = phi float [ %4098, %4079 ], [ %3843, %3954 ]
  %3976 = phi float [ %4099, %4079 ], [ %3844, %3954 ]
  %3977 = phi float [ %4100, %4079 ], [ %3845, %3954 ]
  %3978 = shl nuw nsw i32 %3956, 2
  %3979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3978, i32 undef)  ; BufferLoad(srv,index,wot)
  %3980 = extractvalue %dx.types.ResRet.i32 %3979, 0
  %3981 = lshr i32 %3980, 16
  %3982 = shl i32 %3980, 8
  %3983 = and i32 %3982, 16776960
  %3984 = or i32 %3983, 48
  %3985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3984, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.ResRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.ResRet.f32 %3985, 2
  %3989 = or i32 %3983, 64
  %3990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.i32 %3990, 0
  %3992 = extractvalue %dx.types.ResRet.i32 %3990, 1
  %3993 = or i32 %3983, 80
  %3994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 2
  %3996 = extractvalue %dx.types.ResRet.f32 %3994, 3
  %3997 = or i32 %3983, 96
  %3998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3997, i32 undef)  ; BufferLoad(srv,index,wot)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.ResRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.ResRet.f32 %3998, 2
  %4002 = extractvalue %dx.types.ResRet.f32 %3998, 3
  %4003 = or i32 %3983, 112
  %4004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4003, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.f32 %4004, 2
  %4006 = or i32 %3983, 128
  %4007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = extractvalue %dx.types.ResRet.f32 %4007, 1
  %4010 = extractvalue %dx.types.ResRet.f32 %4007, 2
  %4011 = extractvalue %dx.types.ResRet.f32 %4007, 3
  %4012 = or i32 %3983, 144
  %4013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %4013, 2
  %4017 = extractvalue %dx.types.ResRet.f32 %4013, 3
  %4018 = or i32 %3983, 160
  %4019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4018, i32 undef)  ; BufferLoad(srv,index,wot)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.ResRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.ResRet.f32 %4019, 2
  %4023 = extractvalue %dx.types.ResRet.f32 %4019, 3
  %4024 = or i32 %3983, 192
  %4025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4024, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.i32 %4025, 0
  %4027 = or i32 %3983, 208
  %4028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4027, i32 undef)  ; BufferLoad(srv,index,wot)
  %4029 = extractvalue %dx.types.ResRet.f32 %4028, 0
  %4030 = or i32 %3983, 248
  %4031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = extractvalue %dx.types.ResRet.f32 %4031, 1
  %4034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3983, i32 undef)  ; BufferLoad(srv,index,wot)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.ResRet.f32 %4034, 1
  %4037 = extractvalue %dx.types.ResRet.f32 %4034, 2
  %4038 = extractvalue %dx.types.ResRet.f32 %4034, 3
  %4039 = call float @dx.op.dot4.f32(i32 56, float %4035, float %4036, float %4037, float %4038, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4040 = or i32 %3983, 16
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = extractvalue %dx.types.ResRet.f32 %4041, 3
  %4046 = call float @dx.op.dot4.f32(i32 56, float %4042, float %4043, float %4044, float %4045, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4047 = or i32 %3983, 32
  %4048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4047, i32 undef)  ; BufferLoad(srv,index,wot)
  %4049 = extractvalue %dx.types.ResRet.f32 %4048, 0
  %4050 = extractvalue %dx.types.ResRet.f32 %4048, 1
  %4051 = extractvalue %dx.types.ResRet.f32 %4048, 2
  %4052 = extractvalue %dx.types.ResRet.f32 %4048, 3
  %4053 = call float @dx.op.dot4.f32(i32 56, float %4049, float %4050, float %4051, float %4052, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4054 = call float @dx.op.unary.f32(i32 27, float %4039)  ; Round_ni(value)
  %4055 = call float @dx.op.unary.f32(i32 6, float %4054)  ; FAbs(value)
  %4056 = call float @dx.op.unary.f32(i32 27, float %4046)  ; Round_ni(value)
  %4057 = call float @dx.op.unary.f32(i32 6, float %4056)  ; FAbs(value)
  %4058 = call float @dx.op.unary.f32(i32 6, float %4053)  ; FAbs(value)
  %4059 = call float @dx.op.unary.f32(i32 27, float %4058)  ; Round_ni(value)
  %4060 = fadd fast float %4057, %4055
  %4061 = fadd fast float %4060, %4059
  %4062 = fcmp fast oeq float %4061, 0.000000e+00
  %4063 = call float @dx.op.dot4.f32(i32 56, float %4035, float %4036, float %4037, float %4038, float %3899, float %3900, float %3901, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4064 = call float @dx.op.dot4.f32(i32 56, float %4042, float %4043, float %4044, float %4045, float %3899, float %3900, float %3901, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4065 = call float @dx.op.dot4.f32(i32 56, float %4035, float %4036, float %4037, float %4038, float %3902, float %3903, float %3904, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4066 = call float @dx.op.dot4.f32(i32 56, float %4042, float %4043, float %4044, float %4045, float %3902, float %3903, float %3904, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4067 = fsub fast float %4063, %4039
  %4068 = fsub fast float %4065, %4039
  %4069 = fsub fast float %4064, %4046
  %4070 = fsub fast float %4066, %4046
  %4071 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %3988, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4074 = fadd fast float %4073, %4071
  %4075 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4077 = fcmp fast ogt float %4075, %4076
  %4078 = and i1 %4062, %4077
  br i1 %4078, label %4102, label %4079

; <label>:4079                                    ; preds = %4389, %4185, %4102, %3955
  %4080 = phi float [ %3957, %4102 ], [ %4188, %4185 ], [ %4188, %4389 ], [ %3957, %3955 ]
  %4081 = phi float [ %3958, %4102 ], [ %3958, %4185 ], [ %4365, %4389 ], [ %3958, %3955 ]
  %4082 = phi float [ %3959, %4102 ], [ %3959, %4185 ], [ %4363, %4389 ], [ %3959, %3955 ]
  %4083 = phi float [ %3960, %4102 ], [ %3960, %4185 ], [ %4341, %4389 ], [ %3960, %3955 ]
  %4084 = phi float [ %3961, %4102 ], [ %3961, %4185 ], [ %4342, %4389 ], [ %3961, %3955 ]
  %4085 = phi float [ %3962, %4102 ], [ %3962, %4185 ], [ %4343, %4389 ], [ %3962, %3955 ]
  %4086 = phi float [ %3963, %4102 ], [ %3963, %4185 ], [ %4312, %4389 ], [ %3963, %3955 ]
  %4087 = phi float [ %3964, %4102 ], [ %3964, %4185 ], [ %4310, %4389 ], [ %3964, %3955 ]
  %4088 = phi float [ %3965, %4102 ], [ %3965, %4185 ], [ %4399, %4389 ], [ %3965, %3955 ]
  %4089 = phi float [ %3966, %4102 ], [ %3966, %4185 ], [ %4400, %4389 ], [ %3966, %3955 ]
  %4090 = phi float [ %3967, %4102 ], [ %3967, %4185 ], [ %4401, %4389 ], [ %3967, %3955 ]
  %4091 = phi float [ %3968, %4102 ], [ %3968, %4185 ], [ %4291, %4389 ], [ %3968, %3955 ]
  %4092 = phi float [ %3969, %4102 ], [ %3969, %4185 ], [ %4292, %4389 ], [ %3969, %3955 ]
  %4093 = phi float [ %3970, %4102 ], [ %3970, %4185 ], [ %4293, %4389 ], [ %3970, %3955 ]
  %4094 = phi float [ %3971, %4102 ], [ %3971, %4185 ], [ %4321, %4389 ], [ %3971, %3955 ]
  %4095 = phi float [ %3972, %4102 ], [ %3972, %4185 ], [ %4318, %4389 ], [ %3972, %3955 ]
  %4096 = phi float [ %3973, %4102 ], [ %3973, %4185 ], [ %4315, %4389 ], [ %3973, %3955 ]
  %4097 = phi float [ %3974, %4102 ], [ %3974, %4185 ], [ %4308, %4389 ], [ %3974, %3955 ]
  %4098 = phi float [ %3975, %4102 ], [ %3975, %4185 ], [ %4303, %4389 ], [ %3975, %3955 ]
  %4099 = phi float [ %3976, %4102 ], [ %3976, %4185 ], [ %4304, %4389 ], [ %3976, %3955 ]
  %4100 = phi float [ %3977, %4102 ], [ %3977, %4185 ], [ %4305, %4389 ], [ %3977, %3955 ]
  %4101 = icmp eq i32 %3981, 0
  br i1 %4101, label %4402, label %3955

; <label>:4102                                    ; preds = %3955
  %4103 = extractvalue %dx.types.ResRet.f32 %3985, 3
  %4104 = extractvalue %dx.types.ResRet.f32 %4004, 3
  %4105 = extractvalue %dx.types.ResRet.f32 %4004, 1
  %4106 = extractvalue %dx.types.ResRet.f32 %4004, 0
  %4107 = extractvalue %dx.types.ResRet.f32 %3994, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %4109 = extractvalue %dx.types.ResRet.i32 %3990, 3
  %4110 = extractvalue %dx.types.ResRet.i32 %3990, 2
  %4111 = bitcast float %4103 to i32
  %4112 = add i32 %4109, 0
  %4113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4112, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4115 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4113, %dx.types.Handle %4114, float %4039, float %4046, float undef, float undef, i32 0, i32 0, i32 undef, float %4067, float %4069, float undef, float %4068, float %4070, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = fmul fast float %4116, %4108
  %4118 = fadd fast float %4117, %4107
  %4119 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4120 = fmul fast float %4039, %3999
  %4121 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %4046, float %4120)  ; FMad(a,b,c)
  %4122 = fadd fast float %4121, %4106
  %4123 = fmul fast float %4039, %4001
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %4046, float %4123)  ; FMad(a,b,c)
  %4125 = fadd fast float %4124, %4105
  %4126 = fmul fast float %4067, %3999
  %4127 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %4069, float %4126)  ; FMad(a,b,c)
  %4128 = fmul fast float %4067, %4001
  %4129 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %4069, float %4128)  ; FMad(a,b,c)
  %4130 = fmul fast float %4068, %3999
  %4131 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %4070, float %4130)  ; FMad(a,b,c)
  %4132 = fmul fast float %4068, %4001
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %4070, float %4132)  ; FMad(a,b,c)
  %4134 = add i32 %4110, 0
  %4135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4134, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4136 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4135, %dx.types.Handle %4114, float %4122, float %4125, float undef, float undef, i32 0, i32 0, i32 undef, float %4127, float %4129, float undef, float %4131, float %4133, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = and i32 %4111, 1024
  %4139 = icmp ne i32 %4138, 0
  %4140 = fcmp fast ogt float %4137, 0x3FE0101020000000
  %4141 = uitofp i1 %4140 to float
  %4142 = select i1 %4139, float %4141, float %4137
  %4143 = and i32 %4111, 8192
  %4144 = icmp ne i32 %4143, 0
  %4145 = select i1 %4144, float %4104, float 1.000000e+00
  %4146 = fmul fast float %4039, 2.000000e+00
  %4147 = fadd fast float %4146, -1.000000e+00
  %4148 = call float @dx.op.unary.f32(i32 6, float %4147)  ; FAbs(value)
  %4149 = fmul fast float %4148, %4032
  %4150 = fsub fast float %4149, %4032
  %4151 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4152 = fmul fast float %4046, 2.000000e+00
  %4153 = fadd fast float %4152, -1.000000e+00
  %4154 = call float @dx.op.unary.f32(i32 6, float %4153)  ; FAbs(value)
  %4155 = fmul fast float %4154, %4033
  %4156 = fsub fast float %4155, %4033
  %4157 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4158 = fmul fast float %4058, %3995
  %4159 = fsub fast float %4158, %3995
  %4160 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4161 = fmul fast float %4119, %4145
  %4162 = fmul fast float %4161, %4116
  %4163 = fmul fast float %4162, %4151
  %4164 = fmul fast float %4163, %4142
  %4165 = fmul fast float %4164, %4157
  %4166 = fmul fast float %4165, %4160
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4170 = fsub fast float %4075, %4169
  %4171 = fmul fast float %4170, %4168
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = fmul fast float %4166, %3996
  %4174 = fadd fast float %4166, %3996
  %4175 = fmul fast float %4174, %4005
  %4176 = fsub fast float %4175, %4005
  %4177 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4178 = and i32 %4111, 128
  %4179 = icmp ne i32 %4178, 0
  %4180 = select i1 %4179, float %4177, float %4173
  %4181 = fmul fast float %4180, %4172
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 0
  %4184 = fcmp fast ugt float %4181, %4183
  br i1 %4184, label %4185, label %4079

; <label>:4185                                    ; preds = %4102
  %4186 = select i1 %4144, float %4181, float 0.000000e+00
  %4187 = fadd fast float %4186, %3957
  %4188 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  br i1 %4144, label %4079, label %4189

; <label>:4189                                    ; preds = %4185
  %4190 = and i32 %4111, 4
  %4191 = and i32 %4111, 8
  %4192 = add i32 %3991, 0
  %4193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4192, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4195 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4193, %dx.types.Handle %4194, float %4122, float %4125, float undef, float undef, i32 0, i32 0, i32 undef, float %4127, float %4129, float undef, float %4131, float %4133, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.ResRet.f32 %4195, 2
  %4199 = extractvalue %dx.types.ResRet.f32 %4195, 3
  %4200 = bitcast float %4017 to i32
  %4201 = and i32 %4200, 255
  %4202 = uitofp i32 %4201 to float
  %4203 = lshr i32 %4200, 8
  %4204 = and i32 %4203, 255
  %4205 = uitofp i32 %4204 to float
  %4206 = fmul fast float %4199, %4202
  %4207 = fadd fast float %4206, %4205
  %4208 = fmul fast float %4207, 0x3F70101000000000
  %4209 = add i32 %3992, 0
  %4210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4209, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4211 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4210, %dx.types.Handle %4194, float %4122, float %4125, float undef, float undef, i32 0, i32 0, i32 undef, float %4127, float %4129, float undef, float %4131, float %4133, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = extractvalue %dx.types.ResRet.f32 %4211, 1
  %4214 = extractvalue %dx.types.ResRet.f32 %4211, 2
  %4215 = extractvalue %dx.types.ResRet.f32 %4211, 3
  %4216 = bitcast float %4011 to i32
  %4217 = and i32 %4216, 255
  %4218 = uitofp i32 %4217 to float
  %4219 = lshr i32 %4216, 8
  %4220 = and i32 %4219, 255
  %4221 = uitofp i32 %4220 to float
  %4222 = lshr i32 %4216, 16
  %4223 = and i32 %4222, 255
  %4224 = uitofp i32 %4223 to float
  %4225 = fmul fast float %4224, 0x3F70101000000000
  %4226 = fmul fast float %4212, %4218
  %4227 = fadd fast float %4226, %4221
  %4228 = fmul fast float %4227, 0x3F70101000000000
  %4229 = fadd fast float %4213, -5.000000e-01
  %4230 = fadd fast float %4215, -5.000000e-01
  %4231 = fmul fast float %4229, %4225
  %4232 = fmul fast float %4230, %4225
  %4233 = fadd fast float %4231, 5.000000e-01
  %4234 = fadd fast float %4232, 5.000000e-01
  %4235 = fmul fast float %4196, %4020
  %4236 = fmul fast float %4197, %4021
  %4237 = fmul fast float %4198, %4022
  %4238 = fmul fast float %4233, 2.000000e+00
  %4239 = fadd fast float %4238, -1.000000e+00
  %4240 = fmul fast float %4234, 2.000000e+00
  %4241 = fadd fast float %4240, -1.000000e+00
  %4242 = fadd fast float %4239, %4241
  %4243 = fmul fast float %4242, 5.000000e-01
  %4244 = fsub fast float %4239, %4241
  %4245 = fmul fast float %4244, 5.000000e-01
  %4246 = call float @dx.op.unary.f32(i32 6, float %4243)  ; FAbs(value)
  %4247 = fsub fast float 1.000000e+00, %4246
  %4248 = call float @dx.op.unary.f32(i32 6, float %4245)  ; FAbs(value)
  %4249 = fsub fast float %4247, %4248
  %4250 = call float @dx.op.dot3.f32(i32 55, float %4243, float %4245, float %4249, float %4243, float %4245, float %4249)  ; Dot3(ax,ay,az,bx,by,bz)
  %4251 = call float @dx.op.unary.f32(i32 25, float %4250)  ; Rsqrt(value)
  %4252 = fmul fast float %4243, %4251
  %4253 = fmul fast float %4245, %4251
  %4254 = fmul fast float %4251, %4249
  %4255 = fmul fast float %4254, %3986
  %4256 = fmul fast float %4254, %3987
  %4257 = fmul fast float %4254, %3988
  %4258 = fmul fast float %4252, %4008
  %4259 = fmul fast float %4252, %4009
  %4260 = fmul fast float %4252, %4010
  %4261 = fadd fast float %4258, %4255
  %4262 = fadd fast float %4259, %4256
  %4263 = fadd fast float %4260, %4257
  %4264 = fmul fast float %4253, %4014
  %4265 = fmul fast float %4253, %4015
  %4266 = fmul fast float %4253, %4016
  %4267 = fadd fast float %4261, %4264
  %4268 = fadd fast float %4262, %4265
  %4269 = fadd fast float %4263, %4266
  %4270 = call float @dx.op.dot3.f32(i32 55, float %4267, float %4268, float %4269, float %4267, float %4268, float %4269)  ; Dot3(ax,ay,az,bx,by,bz)
  %4271 = call float @dx.op.unary.f32(i32 25, float %4270)  ; Rsqrt(value)
  %4272 = fmul fast float %4267, %4271
  %4273 = fmul fast float %4268, %4271
  %4274 = fmul fast float %4269, %4271
  %4275 = icmp ne i32 %4191, 0
  %4276 = select i1 %4275, float 1.000000e+00, float 0.000000e+00
  %4277 = fmul fast float %4181, %4276
  %4278 = and i32 %4111, 1
  %4279 = icmp eq i32 %4278, 0
  br i1 %4279, label %4280, label %4284

; <label>:4280                                    ; preds = %4189
  %4281 = fsub fast float %4272, %3968
  %4282 = fsub fast float %4273, %3969
  %4283 = fsub fast float %4274, %3970
  br label %4284

; <label>:4284                                    ; preds = %4280, %4189
  %4285 = phi float [ %4281, %4280 ], [ %4272, %4189 ]
  %4286 = phi float [ %4282, %4280 ], [ %4273, %4189 ]
  %4287 = phi float [ %4283, %4280 ], [ %4274, %4189 ]
  %4288 = fmul float %4287, %4277
  %4289 = fmul float %4286, %4277
  %4290 = fmul float %4285, %4277
  %4291 = fadd fast float %4290, %3968
  %4292 = fadd fast float %4289, %3969
  %4293 = fadd fast float %4288, %3970
  %4294 = icmp ne i32 %4190, 0
  %4295 = select i1 %4294, float 1.000000e+00, float 0.000000e+00
  %4296 = fmul fast float %4181, %4295
  %4297 = fsub fast float %4235, %3975
  %4298 = fsub fast float %4236, %3976
  %4299 = fsub fast float %4237, %3977
  %4300 = fmul fast float %4297, %4296
  %4301 = fmul fast float %4298, %4296
  %4302 = fmul fast float %4299, %4296
  %4303 = fadd fast float %4300, %3975
  %4304 = fadd fast float %4301, %3976
  %4305 = fadd fast float %4302, %3977
  %4306 = fsub fast float %4208, %3974
  %4307 = fmul fast float %4306, %4296
  %4308 = fadd fast float %4307, %3974
  %4309 = fmul fast float %4296, %3964
  %4310 = fsub fast float %3964, %4309
  %4311 = fmul fast float %4296, %3963
  %4312 = fsub fast float %3963, %4311
  %4313 = bitcast float %4029 to i32
  %4314 = fadd fast float %4181, %3973
  %4315 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4316 = fsub fast float %4228, %3972
  %4317 = fmul fast float %4316, %4277
  %4318 = fadd fast float %4317, %3972
  %4319 = fsub fast float %4214, %3971
  %4320 = fmul fast float %4319, %4277
  %4321 = fadd fast float %4320, %3971
  br i1 %4279, label %4330, label %4322

; <label>:4322                                    ; preds = %4284
  %4323 = and i32 %4111, 32768
  %4324 = icmp eq i32 %4323, 0
  br i1 %4324, label %4340, label %4325

; <label>:4325                                    ; preds = %4322
  %4326 = fmul fast float %4277, 1.270000e+02
  %4327 = fadd fast float %4326, %3960
  %4328 = fadd fast float %4326, %3961
  %4329 = fadd fast float %4326, %3962
  br label %4340

; <label>:4330                                    ; preds = %4284
  %4331 = fsub fast float 1.270000e+02, %3960
  %4332 = fsub fast float 1.270000e+02, %3961
  %4333 = fsub fast float 1.270000e+02, %3962
  %4334 = fmul fast float %4277, %4331
  %4335 = fmul fast float %4277, %4332
  %4336 = fmul fast float %4277, %4333
  %4337 = fadd fast float %4334, %3960
  %4338 = fadd fast float %4335, %3961
  %4339 = fadd fast float %4336, %3962
  br label %4340

; <label>:4340                                    ; preds = %4330, %4325, %4322
  %4341 = phi float [ %4327, %4325 ], [ %3960, %4322 ], [ %4337, %4330 ]
  %4342 = phi float [ %4328, %4325 ], [ %3961, %4322 ], [ %4338, %4330 ]
  %4343 = phi float [ %4329, %4325 ], [ %3962, %4322 ], [ %4339, %4330 ]
  %4344 = call float @dx.op.dot3.f32(i32 55, float %4235, float %4236, float %4237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.CBufRet.f32 %4345, 1
  %4348 = fmul fast float %4347, %4344
  %4349 = fadd fast float %4348, %4346
  %4350 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4351 = bitcast float %4023 to i32
  %4352 = and i32 %4351, 65535
  %4353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4352)  ; LegacyF16ToF32(value)
  %4354 = lshr i32 %4351, 16
  %4355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4354)  ; LegacyF16ToF32(value)
  %4356 = fcmp fast oge float %4353, 0.000000e+00
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4359 = select i1 %4356, float %4353, float %4358
  %4360 = fadd fast float %4359, %4355
  %4361 = fsub fast float %4350, %3959
  %4362 = fmul fast float %4361, %4181
  %4363 = fadd fast float %4362, %3959
  %4364 = fmul fast float %4360, %4181
  %4365 = call float @dx.op.binary.f32(i32 35, float %3958, float %4364)  ; FMax(a,b)
  %4366 = and i32 %4111, 16
  %4367 = icmp eq i32 %4366, 0
  br i1 %4367, label %4389, label %4368

; <label>:4368                                    ; preds = %4340
  %4369 = add i32 %4026, 0
  %4370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4369, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4370, %dx.types.Handle %4194, float %4122, float %4125, float undef, float undef, i32 0, i32 0, i32 undef, float %4127, float %4129, float undef, float %4131, float %4133, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = and i32 %4313, 65535
  %4376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4375)  ; LegacyF16ToF32(value)
  %4377 = fmul fast float %4372, %4020
  %4378 = fmul fast float %4373, %4021
  %4379 = fmul fast float %4374, %4022
  %4380 = and i32 %4111, 16384
  %4381 = icmp ne i32 %4380, 0
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = select i1 %4381, float %4383, float 1.000000e+00
  %4385 = fmul fast float %4384, %4376
  %4386 = fmul fast float %4377, %4385
  %4387 = fmul fast float %4378, %4385
  %4388 = fmul fast float %4379, %4385
  br label %4389

; <label>:4389                                    ; preds = %4368, %4340
  %4390 = phi float [ %4386, %4368 ], [ 0.000000e+00, %4340 ]
  %4391 = phi float [ %4387, %4368 ], [ 0.000000e+00, %4340 ]
  %4392 = phi float [ %4388, %4368 ], [ 0.000000e+00, %4340 ]
  %4393 = fsub fast float %4390, %3965
  %4394 = fsub fast float %4391, %3966
  %4395 = fsub fast float %4392, %3967
  %4396 = fmul fast float %4393, %4181
  %4397 = fmul fast float %4394, %4181
  %4398 = fmul fast float %4395, %4181
  %4399 = fadd fast float %4396, %3965
  %4400 = fadd fast float %4397, %3966
  %4401 = fadd fast float %4398, %3967
  br label %4079

; <label>:4402                                    ; preds = %4079
  br label %4403

; <label>:4403                                    ; preds = %4402, %3892
  %4404 = phi float [ 0.000000e+00, %3892 ], [ %4080, %4402 ]
  %4405 = phi float [ %3836, %3892 ], [ %4081, %4402 ]
  %4406 = phi float [ %3815, %3892 ], [ %4082, %4402 ]
  %4407 = phi float [ %3808, %3892 ], [ %4083, %4402 ]
  %4408 = phi float [ %3809, %3892 ], [ %4084, %4402 ]
  %4409 = phi float [ %3810, %3892 ], [ %4085, %4402 ]
  %4410 = phi float [ 0.000000e+00, %3892 ], [ %4086, %4402 ]
  %4411 = phi float [ 0.000000e+00, %3892 ], [ %4087, %4402 ]
  %4412 = phi float [ %3858, %3892 ], [ %4088, %4402 ]
  %4413 = phi float [ %3860, %3892 ], [ %4089, %4402 ]
  %4414 = phi float [ %3862, %3892 ], [ %4090, %4402 ]
  %4415 = phi float [ %3888, %3892 ], [ %4091, %4402 ]
  %4416 = phi float [ %3889, %3892 ], [ %4092, %4402 ]
  %4417 = phi float [ %3890, %3892 ], [ %4093, %4402 ]
  %4418 = phi float [ %3813, %3892 ], [ %4094, %4402 ]
  %4419 = phi float [ %3812, %3892 ], [ %4095, %4402 ]
  %4420 = phi float [ 0.000000e+00, %3892 ], [ %4096, %4402 ]
  %4421 = phi float [ %3811, %3892 ], [ %4097, %4402 ]
  %4422 = phi float [ %3843, %3892 ], [ %4098, %4402 ]
  %4423 = phi float [ %3844, %3892 ], [ %4099, %4402 ]
  %4424 = phi float [ %3845, %3892 ], [ %4100, %4402 ]
  %4425 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4416, float %4417, float %4415, float %4416, float %4417)  ; Dot3(ax,ay,az,bx,by,bz)
  %4426 = call float @dx.op.unary.f32(i32 25, float %4425)  ; Rsqrt(value)
  %4427 = fmul fast float %4426, %4415
  %4428 = fmul fast float %4426, %4416
  %4429 = fmul fast float %4426, %4417
  %4430 = fadd fast float %4420, %1147
  %4431 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4432 = call float @dx.op.dot3.f32(i32 55, float %4427, float %4428, float %4429, float %4427, float %4428, float %4429)  ; Dot3(ax,ay,az,bx,by,bz)
  %4433 = call float @dx.op.unary.f32(i32 25, float %4432)  ; Rsqrt(value)
  %4434 = fmul fast float %4433, %4427
  %4435 = fmul fast float %4433, %4428
  %4436 = fmul fast float %4433, %4429
  br label %4437

; <label>:4437                                    ; preds = %4403, %3799
  %4438 = phi float [ %4434, %4403 ], [ %3888, %3799 ]
  %4439 = phi float [ %4435, %4403 ], [ %3889, %3799 ]
  %4440 = phi float [ %4436, %4403 ], [ %3890, %3799 ]
  %4441 = phi float [ %4422, %4403 ], [ %3843, %3799 ]
  %4442 = phi float [ %4423, %4403 ], [ %3844, %3799 ]
  %4443 = phi float [ %4424, %4403 ], [ %3845, %3799 ]
  %4444 = phi float [ %4412, %4403 ], [ %3858, %3799 ]
  %4445 = phi float [ %4413, %4403 ], [ %3860, %3799 ]
  %4446 = phi float [ %4414, %4403 ], [ %3862, %3799 ]
  %4447 = phi float [ %4407, %4403 ], [ %3808, %3799 ]
  %4448 = phi float [ %4408, %4403 ], [ %3809, %3799 ]
  %4449 = phi float [ %4409, %4403 ], [ %3810, %3799 ]
  %4450 = phi float [ %4421, %4403 ], [ %3811, %3799 ]
  %4451 = phi float [ %4431, %4403 ], [ %1147, %3799 ]
  %4452 = phi float [ %4419, %4403 ], [ %3812, %3799 ]
  %4453 = phi float [ %4418, %4403 ], [ %3813, %3799 ]
  %4454 = phi float [ %4411, %4403 ], [ 0.000000e+00, %3799 ]
  %4455 = phi float [ %4410, %4403 ], [ 0.000000e+00, %3799 ]
  %4456 = phi float [ %4404, %4403 ], [ 0.000000e+00, %3799 ]
  %4457 = phi float [ %4405, %4403 ], [ %3836, %3799 ]
  %4458 = phi float [ %4406, %4403 ], [ %3815, %3799 ]
  %4459 = fadd fast float %4450, 0xBFB99999A0000000
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = fmul fast float %4460, 0x3FF1C71C80000000
  %4462 = call float @dx.op.binary.f32(i32 36, float %4450, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4463 = fsub fast float 1.000000e+00, %4461
  %4464 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4465 = fmul fast float %4464, %4441
  %4466 = fmul fast float %4464, %4442
  %4467 = fmul fast float %4464, %4443
  %4468 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4470 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4471 = fmul fast float %4461, %4441
  %4472 = fmul fast float %4461, %4442
  %4473 = fmul fast float %4461, %4443
  %4474 = fadd fast float %4471, %4462
  %4475 = fadd fast float %4472, %4462
  %4476 = fadd fast float %4473, %4462
  %4477 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4478 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4479 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4480 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4481 = call float @dx.op.binary.f32(i32 36, float %4447, float 1.270000e+02)  ; FMin(a,b)
  %4482 = call float @dx.op.binary.f32(i32 36, float %4448, float 1.270000e+02)  ; FMin(a,b)
  %4483 = call float @dx.op.binary.f32(i32 36, float %4449, float 1.270000e+02)  ; FMin(a,b)
  %4484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.i32 %4484, 3
  %4486 = and i32 %4485, 8
  %4487 = icmp ne i32 %4486, 0
  %4488 = call float @dx.op.binary.f32(i32 35, float %4468, float %4441)  ; FMax(a,b)
  %4489 = call float @dx.op.binary.f32(i32 35, float %4469, float %4441)  ; FMax(a,b)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4470, float %4441)  ; FMax(a,b)
  %4491 = call float @dx.op.dot3.f32(i32 55, float %4468, float %4469, float %4470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4492 = select i1 %265, float %4441, float %4468
  %4493 = select i1 %265, float %4491, float %4469
  %4494 = select i1 %265, float 1.000000e+00, float %4470
  %4495 = select i1 %4487, float %4488, float %4492
  %4496 = select i1 %4487, float %4489, float %4493
  %4497 = select i1 %4487, float %4490, float %4494
  %4498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.f32 %4498, 0
  %4500 = extractvalue %dx.types.CBufRet.f32 %4498, 1
  %4501 = extractvalue %dx.types.CBufRet.f32 %4498, 2
  %4502 = fadd fast float %4499, %193
  %4503 = fadd fast float %4500, %194
  %4504 = fadd fast float %4501, %195
  %4505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4506 = extractvalue %dx.types.CBufRet.f32 %4505, 0
  %4507 = extractvalue %dx.types.CBufRet.f32 %4505, 1
  %4508 = fsub fast float %4502, %4506
  %4509 = fsub fast float %4503, %4507
  %4510 = fmul fast float %4508, %4508
  %4511 = fmul fast float %4509, %4509
  %4512 = fadd fast float %4510, %4511
  %4513 = call float @dx.op.unary.f32(i32 24, float %4512)  ; Sqrt(value)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4505, 2
  %4515 = fcmp fast olt float %4513, %4514
  br i1 %4515, label %4516, label %4583

; <label>:4516                                    ; preds = %4437
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 0
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 0
  %4521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4522 = extractvalue %dx.types.CBufRet.f32 %4521, 0
  %4523 = extractvalue %dx.types.CBufRet.f32 %4517, 1
  %4524 = extractvalue %dx.types.CBufRet.f32 %4519, 1
  %4525 = extractvalue %dx.types.CBufRet.f32 %4521, 1
  %4526 = extractvalue %dx.types.CBufRet.f32 %4517, 3
  %4527 = extractvalue %dx.types.CBufRet.f32 %4519, 3
  %4528 = extractvalue %dx.types.CBufRet.f32 %4521, 3
  %4529 = fadd fast float %4526, %4502
  %4530 = fadd fast float %4527, %4503
  %4531 = fadd fast float %4528, %4504
  %4532 = fmul fast float %4529, %4518
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4520, float %4532)  ; FMad(a,b,c)
  %4534 = call float @dx.op.tertiary.f32(i32 46, float %4531, float %4522, float %4533)  ; FMad(a,b,c)
  %4535 = fmul fast float %4529, %4523
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4530, float %4524, float %4535)  ; FMad(a,b,c)
  %4537 = call float @dx.op.tertiary.f32(i32 46, float %4531, float %4525, float %4536)  ; FMad(a,b,c)
  %4538 = fsub fast float %4534, %4526
  %4539 = fsub fast float %4537, %4527
  %4540 = fsub fast float %4538, %4506
  %4541 = fadd fast float %4540, %4514
  %4542 = fsub fast float %4539, %4507
  %4543 = fadd fast float %4542, %4514
  %4544 = extractvalue %dx.types.CBufRet.f32 %4505, 3
  %4545 = fmul fast float %4541, %4544
  %4546 = fmul fast float %4543, %4544
  %4547 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4548 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4549 = fsub fast float 1.000000e+00, %4547
  %4550 = fsub fast float 1.000000e+00, %4548
  %4551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4549, float %4550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = fcmp fast ugt float %4552, 0.000000e+00
  br i1 %4553, label %4554, label %4857

; <label>:4554                                    ; preds = %4516
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 2
  %4557 = fmul fast float %4556, %4552
  %4558 = extractvalue %dx.types.CBufRet.f32 %4555, 3
  %4559 = fadd fast float %4558, %4557
  %4560 = extractvalue %dx.types.CBufRet.f32 %4521, 2
  %4561 = fadd fast float %4559, %4528
  %4562 = fmul fast float %4534, %4522
  %4563 = call float @dx.op.tertiary.f32(i32 46, float %4537, float %4525, float %4562)  ; FMad(a,b,c)
  %4564 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4560, float %4563)  ; FMad(a,b,c)
  %4565 = fsub fast float %4564, %4528
  %4566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4567 = extractvalue %dx.types.CBufRet.f32 %4566, 2
  %4568 = fsub fast float %4565, %4567
  %4569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4549, float %4550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4549, float %4550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = fadd fast float %4574, %4570
  %4578 = fmul fast float %4577, 0x3F847AE140000000
  %4579 = fadd fast float %4575, %4571
  %4580 = fmul fast float %4579, 0x3F847AE140000000
  %4581 = fadd fast float %4576, %4572
  %4582 = fmul fast float %4581, 0x3F847AE140000000
  br label %4857

; <label>:4583                                    ; preds = %4437
  %4584 = and i32 %244, 1
  %4585 = icmp eq i32 %4584, 0
  br i1 %4585, label %4857, label %4586

; <label>:4586                                    ; preds = %4583
  %4587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.f32 %4587, 0
  %4589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4590 = extractvalue %dx.types.CBufRet.f32 %4589, 0
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.CBufRet.f32 %4587, 1
  %4594 = extractvalue %dx.types.CBufRet.f32 %4589, 1
  %4595 = extractvalue %dx.types.CBufRet.f32 %4591, 1
  %4596 = extractvalue %dx.types.CBufRet.f32 %4587, 3
  %4597 = extractvalue %dx.types.CBufRet.f32 %4589, 3
  %4598 = extractvalue %dx.types.CBufRet.f32 %4591, 3
  %4599 = fadd fast float %4596, %4502
  %4600 = fadd fast float %4597, %4503
  %4601 = fadd fast float %4598, %4504
  %4602 = fmul fast float %4599, %4588
  %4603 = call float @dx.op.tertiary.f32(i32 46, float %4600, float %4590, float %4602)  ; FMad(a,b,c)
  %4604 = call float @dx.op.tertiary.f32(i32 46, float %4601, float %4592, float %4603)  ; FMad(a,b,c)
  %4605 = fmul fast float %4599, %4593
  %4606 = call float @dx.op.tertiary.f32(i32 46, float %4600, float %4594, float %4605)  ; FMad(a,b,c)
  %4607 = call float @dx.op.tertiary.f32(i32 46, float %4601, float %4595, float %4606)  ; FMad(a,b,c)
  %4608 = fsub fast float %4604, %4596
  %4609 = fsub fast float %4607, %4597
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.CBufRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.CBufRet.f32 %4610, 2
  %4614 = extractvalue %dx.types.CBufRet.f32 %4610, 3
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.i32 %4617, 0
  %4619 = extractvalue %dx.types.CBufRet.i32 %4617, 1
  %4620 = udiv i32 %4619, %4618
  %4621 = fsub fast float %4608, %4611
  %4622 = fsub fast float %4609, %4612
  %4623 = call float @dx.op.binary.f32(i32 35, float %4621, float 0.000000e+00)  ; FMax(a,b)
  %4624 = call float @dx.op.binary.f32(i32 35, float %4622, float 0.000000e+00)  ; FMax(a,b)
  %4625 = call float @dx.op.binary.f32(i32 36, float %4623, float %4613)  ; FMin(a,b)
  %4626 = call float @dx.op.binary.f32(i32 36, float %4624, float %4614)  ; FMin(a,b)
  %4627 = add i32 %4618, -1
  %4628 = add i32 %4620, -1
  %4629 = fmul fast float %4625, %4616
  %4630 = fmul fast float %4626, %4616
  %4631 = fptoui float %4629 to i32
  %4632 = fptoui float %4630 to i32
  %4633 = call i32 @dx.op.binary.i32(i32 40, i32 %4631, i32 %4627)  ; UMin(a,b)
  %4634 = call i32 @dx.op.binary.i32(i32 40, i32 %4632, i32 %4628)  ; UMin(a,b)
  %4635 = mul i32 %4634, %4618
  %4636 = add i32 %4635, %4633
  %4637 = shl i32 %4636, 2
  %4638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.i32 %4638, 0
  %4640 = icmp eq i32 %4639, -1
  br i1 %4640, label %4857, label %4641

; <label>:4641                                    ; preds = %4586
  %4642 = mul i32 %4639, 148
  %4643 = add i32 %4642, 4
  %4644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4643, i32 undef)  ; BufferLoad(srv,index,wot)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = add i32 %4642, 8
  %4647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4646, i32 undef)  ; BufferLoad(srv,index,wot)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = add i32 %4642, 36
  %4650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4649, i32 undef)  ; BufferLoad(srv,index,wot)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = add i32 %4642, 60
  %4653 = add i32 %4642, 92
  %4654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4653, i32 undef)  ; BufferLoad(srv,index,wot)
  %4655 = extractvalue %dx.types.ResRet.i32 %4654, 0
  %4656 = add i32 %4642, 116
  %4657 = fsub fast float %4608, %4645
  %4658 = fsub fast float %4609, %4648
  %4659 = fmul fast float %4616, %4657
  %4660 = fmul fast float %4616, %4658
  %4661 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4662 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4663 = fsub fast float 1.000000e+00, %4662
  %4664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4665 = extractvalue %dx.types.CBufRet.f32 %4664, 2
  %4666 = call float @dx.op.unary.f32(i32 83, float %4661)  ; DerivCoarseX(value)
  %4667 = call float @dx.op.unary.f32(i32 83, float %4663)  ; DerivCoarseX(value)
  %4668 = call float @dx.op.unary.f32(i32 84, float %4661)  ; DerivCoarseY(value)
  %4669 = call float @dx.op.unary.f32(i32 84, float %4663)  ; DerivCoarseY(value)
  %4670 = fmul fast float %4666, %4665
  %4671 = fmul fast float %4667, %4665
  %4672 = fmul fast float %4668, %4665
  %4673 = fmul fast float %4669, %4665
  %4674 = call float @dx.op.dot2.f32(i32 54, float %4672, float %4673, float %4672, float %4673)  ; Dot2(ax,ay,bx,by)
  %4675 = call float @dx.op.dot2.f32(i32 54, float %4670, float %4671, float %4670, float %4671)  ; Dot2(ax,ay,bx,by)
  %4676 = call float @dx.op.binary.f32(i32 35, float %4675, float %4674)  ; FMax(a,b)
  %4677 = call float @dx.op.unary.f32(i32 23, float %4676)  ; Log(value)
  %4678 = fmul fast float %4677, 5.000000e-01
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 1
  %4681 = fadd fast float %4680, %4678
  %4682 = call float @dx.op.binary.f32(i32 35, float %4681, float 0.000000e+00)  ; FMax(a,b)
  %4683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4684 = extractvalue %dx.types.CBufRet.f32 %4683, 3
  %4685 = fadd fast float %4684, %4682
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4688 = fadd fast float %4685, %4687
  %4689 = add i32 %4655, 0
  %4690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4689, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4691 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4690, i32 0)  ; GetDimensions(handle,mipLevel)
  %4692 = extractvalue %dx.types.Dimensions %4691, 0
  %4693 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4692)  ; FirstbitLo(value)
  %4694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.i32 %4694, 1
  %4696 = sub nsw i32 %4695, %4693
  %4697 = sitofp i32 %4696 to float
  %4698 = fsub fast float %4688, %4697
  %4699 = call float @dx.op.binary.f32(i32 35, float %4698, float 0.000000e+00)  ; FMax(a,b)
  %4700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4690, %dx.types.Handle %47, float %4661, float %4663, float %4651, float undef, i32 0, i32 0, i32 undef, float %4699)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4701 = extractvalue %dx.types.ResRet.f32 %4700, 0
  %4702 = fcmp ule float %4701, 0x3FE0101020000000
  %4703 = extractvalue %dx.types.CBufRet.i32 %4694, 0
  %4704 = and i32 %4703, 128
  %4705 = icmp ne i32 %4704, 0
  %4706 = and i1 %4702, %4705
  br i1 %4706, label %4857, label %4707

; <label>:4707                                    ; preds = %4641
  %4708 = add i32 %4642, 20
  %4709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4708, i32 undef)  ; BufferLoad(srv,index,wot)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = add i32 %4642, 24
  %4712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4711, i32 undef)  ; BufferLoad(srv,index,wot)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 0
  %4714 = add i32 %4642, 40
  %4715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4714, i32 undef)  ; BufferLoad(srv,index,wot)
  %4716 = extractvalue %dx.types.ResRet.f32 %4715, 0
  %4717 = add i32 %4642, 96
  %4718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4717, i32 undef)  ; BufferLoad(srv,index,wot)
  %4719 = extractvalue %dx.types.ResRet.i32 %4718, 0
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 2
  %4722 = fmul fast float %4721, %4661
  %4723 = fmul fast float %4721, %4663
  %4724 = extractvalue %dx.types.CBufRet.f32 %4720, 3
  %4725 = fadd fast float %4722, %4724
  %4726 = fadd fast float %4723, %4724
  %4727 = add i32 %4719, 0
  %4728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4729 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4728, i32 0)  ; GetDimensions(handle,mipLevel)
  %4730 = extractvalue %dx.types.Dimensions %4729, 0
  %4731 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4730)  ; FirstbitLo(value)
  %4732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.i32 %4732, 1
  %4734 = sub nsw i32 %4733, %4731
  %4735 = sitofp i32 %4734 to float
  %4736 = fsub fast float %4685, %4735
  %4737 = call float @dx.op.binary.f32(i32 35, float %4736, float 0.000000e+00)  ; FMax(a,b)
  %4738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4728, %dx.types.Handle %47, float %4725, float %4726, float %4716, float undef, i32 0, i32 0, i32 undef, float %4737)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4739 = extractvalue %dx.types.ResRet.f32 %4738, 0
  %4740 = fmul fast float %4739, %4710
  %4741 = fadd fast float %4740, %4713
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  %4744 = extractvalue %dx.types.CBufRet.f32 %4742, 1
  %4745 = extractvalue %dx.types.CBufRet.f32 %4742, 2
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 3
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 3
  %4750 = extractvalue %dx.types.CBufRet.f32 %4742, 3
  %4751 = fadd fast float %4747, %4608
  %4752 = fadd fast float %4749, %4609
  %4753 = fadd fast float %4741, %4750
  %4754 = fmul fast float %4751, %4743
  %4755 = call float @dx.op.tertiary.f32(i32 46, float %4752, float %4744, float %4754)  ; FMad(a,b,c)
  %4756 = call float @dx.op.tertiary.f32(i32 46, float %4753, float %4745, float %4755)  ; FMad(a,b,c)
  %4757 = fsub fast float %4756, %4750
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 2
  %4760 = fsub fast float %4757, %4759
  %4761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.i32 %4761, 0
  %4763 = call i32 @dx.op.binary.i32(i32 40, i32 %4639, i32 %4762)  ; UMin(a,b)
  %4764 = mul i32 %4763, 36
  %4765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4764, i32 undef)  ; BufferLoad(srv,index,wot)
  %4766 = extractvalue %dx.types.ResRet.i32 %4765, 0
  %4767 = add i32 %4764, 4
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 0
  %4770 = fmul fast float %4769, %4661
  %4771 = fmul fast float %4769, %4663
  %4772 = extractvalue %dx.types.CBufRet.f32 %4768, 1
  %4773 = fadd fast float %4770, %4772
  %4774 = fadd fast float %4771, %4772
  %4775 = icmp eq i32 %4766, 0
  br i1 %4775, label %4844, label %4776

; <label>:4776                                    ; preds = %4707
  br label %4777

; <label>:4777                                    ; preds = %4834, %4776
  %4778 = phi float [ %4835, %4834 ], [ 0.000000e+00, %4776 ]
  %4779 = phi float [ %4836, %4834 ], [ 0.000000e+00, %4776 ]
  %4780 = phi float [ %4837, %4834 ], [ 0.000000e+00, %4776 ]
  %4781 = phi float [ %4838, %4834 ], [ 0.000000e+00, %4776 ]
  %4782 = phi float [ %4839, %4834 ], [ 0.000000e+00, %4776 ]
  %4783 = phi float [ %4840, %4834 ], [ 0.000000e+00, %4776 ]
  %4784 = phi i32 [ %4841, %4834 ], [ 0, %4776 ]
  %4785 = shl i32 %4784, 2
  %4786 = add i32 %4652, %4785
  %4787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4786, i32 undef)  ; BufferLoad(srv,index,wot)
  %4788 = extractvalue %dx.types.ResRet.f32 %4787, 0
  %4789 = add i32 %4656, %4785
  %4790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4789, i32 undef)  ; BufferLoad(srv,index,wot)
  %4791 = extractvalue %dx.types.ResRet.i32 %4790, 0
  %4792 = add i32 %4791, 0
  %4793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4792, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4794 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4793, i32 0)  ; GetDimensions(handle,mipLevel)
  %4795 = extractvalue %dx.types.Dimensions %4794, 0
  %4796 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4795)  ; FirstbitLo(value)
  %4797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.i32 %4797, 1
  %4799 = sub nsw i32 %4798, %4796
  %4800 = sitofp i32 %4799 to float
  %4801 = fsub fast float %4685, %4800
  %4802 = call float @dx.op.binary.f32(i32 35, float %4801, float 0.000000e+00)  ; FMax(a,b)
  %4803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4793, %dx.types.Handle %47, float %4773, float %4774, float %4788, float undef, i32 0, i32 0, i32 undef, float %4802)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 0
  %4805 = fcmp fast ogt float %4804, 0.000000e+00
  br i1 %4805, label %4806, label %4834

; <label>:4806                                    ; preds = %4777
  %4807 = add i32 %4767, %4785
  %4808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4807, i32 undef)  ; BufferLoad(srv,index,wot)
  %4809 = extractvalue %dx.types.ResRet.i32 %4808, 0
  %4810 = and i32 %4809, 32767
  %4811 = mul nuw nsw i32 %4810, 928
  %4812 = add nuw nsw i32 %4811, 48
  %4813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4812, i32 undef)  ; BufferLoad(srv,index,wot)
  %4814 = extractvalue %dx.types.ResRet.f32 %4813, 0
  %4815 = extractvalue %dx.types.ResRet.f32 %4813, 1
  %4816 = extractvalue %dx.types.ResRet.f32 %4813, 2
  %4817 = add nuw nsw i32 %4811, 60
  %4818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4817, i32 undef)  ; BufferLoad(srv,index,wot)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = extractvalue %dx.types.ResRet.f32 %4818, 1
  %4821 = extractvalue %dx.types.ResRet.f32 %4818, 2
  %4822 = fmul fast float %4814, %4804
  %4823 = fmul fast float %4815, %4804
  %4824 = fmul fast float %4816, %4804
  %4825 = fadd fast float %4822, %4778
  %4826 = fadd fast float %4823, %4779
  %4827 = fadd fast float %4824, %4780
  %4828 = fmul fast float %4819, %4804
  %4829 = fmul fast float %4820, %4804
  %4830 = fmul fast float %4821, %4804
  %4831 = fadd fast float %4828, %4781
  %4832 = fadd fast float %4829, %4782
  %4833 = fadd fast float %4830, %4783
  br label %4834

; <label>:4834                                    ; preds = %4806, %4777
  %4835 = phi float [ %4825, %4806 ], [ %4778, %4777 ]
  %4836 = phi float [ %4826, %4806 ], [ %4779, %4777 ]
  %4837 = phi float [ %4827, %4806 ], [ %4780, %4777 ]
  %4838 = phi float [ %4831, %4806 ], [ %4781, %4777 ]
  %4839 = phi float [ %4832, %4806 ], [ %4782, %4777 ]
  %4840 = phi float [ %4833, %4806 ], [ %4783, %4777 ]
  %4841 = add nuw i32 %4784, 1
  %4842 = icmp eq i32 %4841, %4766
  br i1 %4842, label %4843, label %4777

; <label>:4843                                    ; preds = %4834
  br label %4844

; <label>:4844                                    ; preds = %4843, %4707
  %4845 = phi float [ 0.000000e+00, %4707 ], [ %4835, %4843 ]
  %4846 = phi float [ 0.000000e+00, %4707 ], [ %4836, %4843 ]
  %4847 = phi float [ 0.000000e+00, %4707 ], [ %4837, %4843 ]
  %4848 = phi float [ 0.000000e+00, %4707 ], [ %4838, %4843 ]
  %4849 = phi float [ 0.000000e+00, %4707 ], [ %4839, %4843 ]
  %4850 = phi float [ 0.000000e+00, %4707 ], [ %4840, %4843 ]
  %4851 = fadd fast float %4848, %4845
  %4852 = fmul fast float %4851, 0x3F847AE140000000
  %4853 = fadd fast float %4849, %4846
  %4854 = fmul fast float %4853, 0x3F847AE140000000
  %4855 = fadd fast float %4850, %4847
  %4856 = fmul fast float %4855, 0x3F847AE140000000
  br label %4857

; <label>:4857                                    ; preds = %4844, %4641, %4586, %4583, %4554, %4516
  %4858 = phi float [ %4568, %4554 ], [ -1.310720e+05, %4516 ], [ %4760, %4844 ], [ -1.310720e+05, %4586 ], [ -1.310720e+05, %4641 ], [ -1.310720e+05, %4583 ]
  %4859 = phi float [ %4578, %4554 ], [ 0.000000e+00, %4516 ], [ %4852, %4844 ], [ 0.000000e+00, %4586 ], [ 0.000000e+00, %4641 ], [ 0.000000e+00, %4583 ]
  %4860 = phi float [ %4580, %4554 ], [ 0.000000e+00, %4516 ], [ %4854, %4844 ], [ 0.000000e+00, %4586 ], [ 0.000000e+00, %4641 ], [ 0.000000e+00, %4583 ]
  %4861 = phi float [ %4582, %4554 ], [ 0.000000e+00, %4516 ], [ %4856, %4844 ], [ 0.000000e+00, %4586 ], [ 0.000000e+00, %4641 ], [ 0.000000e+00, %4583 ]
  %4862 = phi i1 [ true, %4554 ], [ false, %4516 ], [ true, %4844 ], [ false, %4586 ], [ false, %4641 ], [ false, %4583 ]
  %4863 = and i32 %244, 3
  %4864 = icmp eq i32 %4863, 1
  %4865 = select i1 %4864, float 1.000000e+00, float 0.000000e+00
  %4866 = fsub fast float %4858, %195
  %4867 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4868 = select i1 %4862, float %4867, float 1.000000e+00
  %4869 = fmul fast float %4868, %4865
  %4870 = icmp eq i32 %4863, 3
  %4871 = select i1 %4870, float 1.000000e+00, float %4869
  %4872 = call float @dx.op.binary.f32(i32 35, float %4456, float %4871)  ; FMax(a,b)
  %4873 = fcmp fast olt float %4871, 1.000000e+00
  %4874 = fcmp uge float %71, 0.000000e+00
  %4875 = and i1 %4874, %4873
  br i1 %4875, label %4876, label %4886

; <label>:4876                                    ; preds = %4857
  %4877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %71, float %72, float %73, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4878 = extractvalue %dx.types.ResRet.f32 %4877, 0
  %4879 = extractvalue %dx.types.ResRet.f32 %4877, 1
  %4880 = extractvalue %dx.types.ResRet.f32 %4877, 2
  %4881 = fadd fast float %4878, %4872
  %4882 = fcmp ule float %70, 0.000000e+00
  %4883 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = select i1 %4882, float %4883, float 1.000000e+00
  %4885 = fmul fast float %4884, %4880
  br label %4886

; <label>:4886                                    ; preds = %4876, %4857
  %4887 = phi float [ %4881, %4876 ], [ %4872, %4857 ]
  %4888 = phi float [ %4879, %4876 ], [ 0.000000e+00, %4857 ]
  %4889 = phi float [ %4885, %4876 ], [ 0.000000e+00, %4857 ]
  %4890 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4891 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4893 = fcmp fast une float %4891, 0.000000e+00
  %4894 = fcmp fast une float %4892, 0.000000e+00
  %4895 = or i1 %4893, %4894
  br i1 %4895, label %4896, label %5455

; <label>:4896                                    ; preds = %4886
  br i1 %4893, label %4897, label %5170

; <label>:4897                                    ; preds = %4896
  %4898 = call float @dx.op.unary.f32(i32 23, float %4453)  ; Log(value)
  %4899 = fmul fast float %4898, 4.000000e+00
  %4900 = call float @dx.op.unary.f32(i32 21, float %4899)  ; Exp(value)
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4903 = fmul fast float %4902, %58
  %4904 = fmul fast float %4902, %59
  %4905 = fmul fast float %4902, %60
  %4906 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %4907 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %4908 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %4909 = call float @dx.op.unary.f32(i32 23, float %4906)  ; Log(value)
  %4910 = call float @dx.op.unary.f32(i32 23, float %4907)  ; Log(value)
  %4911 = call float @dx.op.unary.f32(i32 23, float %4908)  ; Log(value)
  %4912 = fmul fast float %4909, 4.000000e+00
  %4913 = fmul fast float %4910, 4.000000e+00
  %4914 = fmul fast float %4911, 4.000000e+00
  %4915 = call float @dx.op.unary.f32(i32 21, float %4912)  ; Exp(value)
  %4916 = call float @dx.op.unary.f32(i32 21, float %4913)  ; Exp(value)
  %4917 = call float @dx.op.unary.f32(i32 21, float %4914)  ; Exp(value)
  %4918 = fadd fast float %4916, %4915
  %4919 = fadd fast float %4918, %4917
  %4920 = fdiv fast float 1.000000e+00, %4919
  %4921 = fmul fast float %4920, %4915
  %4922 = fcmp fast ogt float %67, 0.000000e+00
  %4923 = fcmp fast ogt float %68, 0.000000e+00
  %4924 = fcmp fast ogt float %69, 0.000000e+00
  %4925 = fcmp fast olt float %67, 0.000000e+00
  %4926 = fcmp fast olt float %68, 0.000000e+00
  %4927 = fcmp fast olt float %69, 0.000000e+00
  %4928 = zext i1 %4922 to i32
  %4929 = zext i1 %4923 to i32
  %4930 = zext i1 %4924 to i32
  %4931 = zext i1 %4925 to i32
  %4932 = zext i1 %4926 to i32
  %4933 = zext i1 %4927 to i32
  %4934 = sub nsw i32 %4928, %4931
  %4935 = sub nsw i32 %4929, %4932
  %4936 = sub nsw i32 %4930, %4933
  %4937 = call float @dx.op.unary.f32(i32 83, float %4903)  ; DerivCoarseX(value)
  %4938 = call float @dx.op.unary.f32(i32 83, float %4904)  ; DerivCoarseX(value)
  %4939 = call float @dx.op.unary.f32(i32 83, float %4905)  ; DerivCoarseX(value)
  %4940 = call float @dx.op.unary.f32(i32 84, float %4903)  ; DerivCoarseY(value)
  %4941 = call float @dx.op.unary.f32(i32 84, float %4904)  ; DerivCoarseY(value)
  %4942 = call float @dx.op.unary.f32(i32 84, float %4905)  ; DerivCoarseY(value)
  %4943 = fcmp fast ole float %276, %4921
  %4944 = fmul fast float %4920, %4918
  %4945 = fcmp fast ole float %276, %4944
  %4946 = select i1 %4945, float %4905, float %4903
  %4947 = select i1 %4945, float %4903, float %4904
  %4948 = select i1 %4943, float %4904, float %4946
  %4949 = select i1 %4943, float %4905, float %4947
  %4950 = select i1 %4945, float %4939, float %4937
  %4951 = select i1 %4945, float %4937, float %4938
  %4952 = select i1 %4943, float %4938, float %4950
  %4953 = select i1 %4943, float %4939, float %4951
  %4954 = select i1 %4945, float %4942, float %4940
  %4955 = select i1 %4945, float %4940, float %4941
  %4956 = select i1 %4943, float %4941, float %4954
  %4957 = select i1 %4943, float %4942, float %4955
  %4958 = call float @dx.op.unary.f32(i32 27, float %4948)  ; Round_ni(value)
  %4959 = call float @dx.op.unary.f32(i32 27, float %4949)  ; Round_ni(value)
  %4960 = fptosi float %4958 to i32
  %4961 = fptosi float %4959 to i32
  %4962 = xor i32 %4961, %4960
  %4963 = sitofp i32 %4962 to float
  %4964 = fptosi float %4963 to i32
  %4965 = sitofp i32 %4964 to float
  %4966 = fmul fast float %4965, 0x3FE3C6EF40000000
  %4967 = frem fast float %4958, 2.560000e+02
  %4968 = frem fast float %4959, 2.560000e+02
  %4969 = fptoui float %4967 to i32
  %4970 = fptoui float %4968 to i32
  %4971 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %4969, i32 %4970, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4972 = extractvalue %dx.types.ResRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.ResRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.ResRet.f32 %4971, 2
  %4975 = fadd fast float %4972, %4966
  %4976 = fadd fast float %4973, %4966
  %4977 = fadd fast float %4974, %4966
  %4978 = call float @dx.op.unary.f32(i32 22, float %4975)  ; Frc(value)
  %4979 = call float @dx.op.unary.f32(i32 22, float %4976)  ; Frc(value)
  %4980 = call float @dx.op.unary.f32(i32 22, float %4977)  ; Frc(value)
  %4981 = fmul fast float %4980, 0x401921FB60000000
  %4982 = call float @dx.op.unary.f32(i32 13, float %4981)  ; Sin(value)
  %4983 = call float @dx.op.unary.f32(i32 12, float %4981)  ; Cos(value)
  %4984 = fsub fast float -0.000000e+00, %4983
  %4985 = fmul fast float %4983, %4948
  %4986 = call float @dx.op.tertiary.f32(i32 46, float %4982, float %4949, float %4985)  ; FMad(a,b,c)
  %4987 = fmul fast float %4982, %4948
  %4988 = call float @dx.op.tertiary.f32(i32 46, float %4984, float %4949, float %4987)  ; FMad(a,b,c)
  %4989 = fadd fast float %4986, %4978
  %4990 = fadd fast float %4988, %4979
  %4991 = extractvalue %dx.types.CBufRet.f32 %4901, 3
  %4992 = bitcast float %4991 to i32
  %4993 = icmp eq i32 %4992, 0
  br i1 %4993, label %5032, label %4994

; <label>:4994                                    ; preds = %4897
  %4995 = add i32 %4992, 0
  %4996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4995, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4997 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4996, %dx.types.Handle %103, float %4989, float %4990, float undef, float undef, i32 0, i32 0, i32 undef, float %4952, float %4953, float undef, float %4956, float %4957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4998 = extractvalue %dx.types.ResRet.f32 %4997, 0
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 1
  %5001 = extractvalue %dx.types.CBufRet.f32 %4999, 2
  %5002 = fsub fast float 1.000000e+00, %4891
  %5003 = call float @dx.op.binary.f32(i32 35, float %5002, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5004 = bitcast float %4891 to i32
  %5005 = sitofp i32 %5004 to float
  %5006 = fadd fast float %5005, 0xC1CFBF8940000000
  %5007 = fmul fast float %5001, %5006
  %5008 = fadd fast float %5007, 0x41CFBF8940000000
  %5009 = fptosi float %5008 to i32
  %5010 = bitcast i32 %5009 to float
  %5011 = bitcast float %5003 to i32
  %5012 = sitofp i32 %5011 to float
  %5013 = fadd fast float %5012, 0xC1CFBF8940000000
  %5014 = fmul fast float %5013, %5001
  %5015 = fadd fast float %5014, 0x41CFBF8940000000
  %5016 = fptosi float %5015 to i32
  %5017 = bitcast i32 %5016 to float
  %5018 = fmul fast float %5010, %5000
  %5019 = fmul fast float %5017, %5000
  %5020 = fsub fast float %5003, %5018
  %5021 = fadd fast float %5019, %5003
  %5022 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5023 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5024 = fsub fast float %4998, %5022
  %5025 = fsub fast float %5023, %5022
  %5026 = bitcast float %5025 to i32
  %5027 = sub nsw i32 2129859010, %5026
  %5028 = bitcast i32 %5027 to float
  %5029 = fmul fast float %5028, %5024
  %5030 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5031 = fcmp fast olt float %5030, 0x3F70101020000000
  br i1 %5031, label %5170, label %5032

; <label>:5032                                    ; preds = %4994, %4897
  %5033 = phi float [ %5030, %4994 ], [ %4891, %4897 ]
  %5034 = fmul fast float %5033, %4900
  %5035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5036 = extractvalue %dx.types.CBufRet.i32 %5035, 1
  %5037 = extractvalue %dx.types.CBufRet.i32 %5035, 0
  %5038 = add i32 %5037, 0
  %5039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5040 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5039, %dx.types.Handle %102, float %4989, float %4990, float undef, float undef, i32 0, i32 0, i32 undef, float %4952, float %4953, float undef, float %4956, float %4957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.ResRet.f32 %5040, 1
  %5043 = extractvalue %dx.types.ResRet.f32 %5040, 2
  %5044 = extractvalue %dx.types.ResRet.f32 %5040, 3
  %5045 = and i32 %5036, 255
  %5046 = uitofp i32 %5045 to float
  %5047 = lshr i32 %5036, 8
  %5048 = and i32 %5047, 255
  %5049 = uitofp i32 %5048 to float
  %5050 = fmul fast float %5044, %5046
  %5051 = fadd fast float %5050, %5049
  %5052 = fmul fast float %5051, 0x3F70101000000000
  %5053 = fadd fast float %5052, 0xBFB99999A0000000
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = fmul fast float %5054, 0x3FF1C71C80000000
  %5056 = call float @dx.op.binary.f32(i32 36, float %5052, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5057 = fsub fast float 1.000000e+00, %5055
  %5058 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5059 = fmul fast float %5058, %5041
  %5060 = fmul fast float %5058, %5042
  %5061 = fmul fast float %5058, %5043
  %5062 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5063 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5064 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5065 = fmul fast float %5055, %5041
  %5066 = fmul fast float %5055, %5042
  %5067 = fmul fast float %5055, %5043
  %5068 = fadd fast float %5065, %5056
  %5069 = fadd fast float %5066, %5056
  %5070 = fadd fast float %5067, %5056
  %5071 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.i32 %5074, 3
  %5076 = extractvalue %dx.types.CBufRet.i32 %5074, 2
  %5077 = add i32 %5076, 0
  %5078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5079 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5078, %dx.types.Handle %102, float %4989, float %4990, float undef, float undef, i32 0, i32 0, i32 undef, float %4952, float %4953, float undef, float %4956, float %4957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5080 = extractvalue %dx.types.ResRet.f32 %5079, 0
  %5081 = extractvalue %dx.types.ResRet.f32 %5079, 1
  %5082 = extractvalue %dx.types.ResRet.f32 %5079, 2
  %5083 = extractvalue %dx.types.ResRet.f32 %5079, 3
  %5084 = and i32 %5075, 255
  %5085 = uitofp i32 %5084 to float
  %5086 = lshr i32 %5075, 8
  %5087 = and i32 %5086, 255
  %5088 = uitofp i32 %5087 to float
  %5089 = lshr i32 %5075, 16
  %5090 = and i32 %5089, 255
  %5091 = uitofp i32 %5090 to float
  %5092 = fmul fast float %5091, 0x3F70101000000000
  %5093 = fmul fast float %5080, %5085
  %5094 = fadd fast float %5093, %5088
  %5095 = fmul fast float %5094, 0x3F70101000000000
  %5096 = fadd fast float %5081, -5.000000e-01
  %5097 = fadd fast float %5083, -5.000000e-01
  %5098 = fmul fast float %5096, %5092
  %5099 = fmul fast float %5097, %5092
  %5100 = fadd fast float %5098, 5.000000e-01
  %5101 = fadd fast float %5099, 5.000000e-01
  %5102 = fmul fast float %5100, 2.000000e+00
  %5103 = fadd fast float %5102, -1.000000e+00
  %5104 = fmul fast float %5101, 2.000000e+00
  %5105 = fadd fast float %5104, -1.000000e+00
  %5106 = fadd fast float %5103, %5105
  %5107 = fmul fast float %5106, 5.000000e-01
  %5108 = fsub fast float %5103, %5105
  %5109 = fmul fast float %5108, 5.000000e-01
  %5110 = call float @dx.op.unary.f32(i32 6, float %5107)  ; FAbs(value)
  %5111 = fsub fast float 1.000000e+00, %5110
  %5112 = call float @dx.op.unary.f32(i32 6, float %5109)  ; FAbs(value)
  %5113 = fsub fast float %5111, %5112
  %5114 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5109, float %5113, float %5107, float %5109, float %5113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = call float @dx.op.unary.f32(i32 25, float %5114)  ; Rsqrt(value)
  %5116 = fmul fast float %5107, %5115
  %5117 = fmul fast float %5109, %5115
  %5118 = select i1 %4945, i32 %4935, i32 %4936
  %5119 = select i1 %4943, i32 %4934, i32 %5118
  %5120 = sitofp i32 %5119 to float
  %5121 = fmul fast float %5113, %5120
  %5122 = fmul fast float %5121, %5115
  %5123 = select i1 %4945, float %5122, float %5117
  %5124 = select i1 %4945, float %5117, float %5122
  %5125 = select i1 %4943, float %5122, float %5116
  %5126 = select i1 %4943, float %5117, float %5123
  %5127 = select i1 %4943, float %5116, float %5124
  %5128 = fsub fast float %5062, %4495
  %5129 = fsub fast float %5063, %4496
  %5130 = fsub fast float %5064, %4497
  %5131 = fmul fast float %5128, %5034
  %5132 = fmul fast float %5129, %5034
  %5133 = fmul fast float %5130, %5034
  %5134 = fadd fast float %5131, %4495
  %5135 = fadd fast float %5132, %4496
  %5136 = fadd fast float %5133, %4497
  %5137 = fsub fast float %5071, %4477
  %5138 = fsub fast float %5072, %4478
  %5139 = fsub fast float %5073, %4479
  %5140 = fmul fast float %5137, %5034
  %5141 = fmul fast float %5138, %5034
  %5142 = fmul fast float %5139, %5034
  %5143 = fadd fast float %5140, %4477
  %5144 = fadd fast float %5141, %4478
  %5145 = fadd fast float %5142, %4479
  %5146 = fadd fast float %5125, %4438
  %5147 = fadd fast float %5126, %4439
  %5148 = fadd fast float %5127, %4440
  %5149 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5147, float %5148, float %5146, float %5147, float %5148)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = call float @dx.op.unary.f32(i32 25, float %5149)  ; Rsqrt(value)
  %5151 = fmul fast float %5146, %5150
  %5152 = fmul fast float %5147, %5150
  %5153 = fmul fast float %5148, %5150
  %5154 = fsub fast float %5151, %4438
  %5155 = fsub fast float %5152, %4439
  %5156 = fsub fast float %5153, %4440
  %5157 = fmul fast float %5154, %5034
  %5158 = fmul fast float %5155, %5034
  %5159 = fmul fast float %5156, %5034
  %5160 = fadd fast float %5157, %4438
  %5161 = fadd fast float %5158, %4439
  %5162 = fadd fast float %5159, %4440
  %5163 = call float @dx.op.binary.f32(i32 36, float %4453, float %5082)  ; FMin(a,b)
  %5164 = fsub fast float %5163, %4453
  %5165 = fmul fast float %5164, %5034
  %5166 = fadd fast float %5165, %4453
  %5167 = fsub fast float %5095, %4480
  %5168 = fmul fast float %5167, %5034
  %5169 = fadd fast float %5168, %4480
  br label %5170

; <label>:5170                                    ; preds = %5032, %4994, %4896
  %5171 = phi float [ %5143, %5032 ], [ %4477, %4994 ], [ %4477, %4896 ]
  %5172 = phi float [ %5144, %5032 ], [ %4478, %4994 ], [ %4478, %4896 ]
  %5173 = phi float [ %5145, %5032 ], [ %4479, %4994 ], [ %4479, %4896 ]
  %5174 = phi float [ %5134, %5032 ], [ %4495, %4994 ], [ %4495, %4896 ]
  %5175 = phi float [ %5135, %5032 ], [ %4496, %4994 ], [ %4496, %4896 ]
  %5176 = phi float [ %5136, %5032 ], [ %4497, %4994 ], [ %4497, %4896 ]
  %5177 = phi float [ %5160, %5032 ], [ %4438, %4994 ], [ %4438, %4896 ]
  %5178 = phi float [ %5161, %5032 ], [ %4439, %4994 ], [ %4439, %4896 ]
  %5179 = phi float [ %5162, %5032 ], [ %4440, %4994 ], [ %4440, %4896 ]
  %5180 = phi float [ %5169, %5032 ], [ %4480, %4994 ], [ %4480, %4896 ]
  %5181 = phi float [ %5166, %5032 ], [ %4453, %4994 ], [ %4453, %4896 ]
  br i1 %4894, label %5182, label %5455

; <label>:5182                                    ; preds = %5170
  %5183 = call float @dx.op.unary.f32(i32 23, float %5181)  ; Log(value)
  %5184 = fmul fast float %5183, 4.000000e+00
  %5185 = call float @dx.op.unary.f32(i32 21, float %5184)  ; Exp(value)
  %5186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5186, 0
  %5188 = fmul fast float %5187, %58
  %5189 = fmul fast float %5187, %59
  %5190 = fmul fast float %5187, %60
  %5191 = call float @dx.op.unary.f32(i32 6, float %67)  ; FAbs(value)
  %5192 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5193 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5194 = call float @dx.op.unary.f32(i32 23, float %5191)  ; Log(value)
  %5195 = call float @dx.op.unary.f32(i32 23, float %5192)  ; Log(value)
  %5196 = call float @dx.op.unary.f32(i32 23, float %5193)  ; Log(value)
  %5197 = fmul fast float %5194, 4.000000e+00
  %5198 = fmul fast float %5195, 4.000000e+00
  %5199 = fmul fast float %5196, 4.000000e+00
  %5200 = call float @dx.op.unary.f32(i32 21, float %5197)  ; Exp(value)
  %5201 = call float @dx.op.unary.f32(i32 21, float %5198)  ; Exp(value)
  %5202 = call float @dx.op.unary.f32(i32 21, float %5199)  ; Exp(value)
  %5203 = fadd fast float %5201, %5200
  %5204 = fadd fast float %5203, %5202
  %5205 = fdiv fast float 1.000000e+00, %5204
  %5206 = fmul fast float %5205, %5200
  %5207 = fcmp fast ogt float %67, 0.000000e+00
  %5208 = fcmp fast ogt float %68, 0.000000e+00
  %5209 = fcmp fast ogt float %69, 0.000000e+00
  %5210 = fcmp fast olt float %67, 0.000000e+00
  %5211 = fcmp fast olt float %68, 0.000000e+00
  %5212 = fcmp fast olt float %69, 0.000000e+00
  %5213 = zext i1 %5207 to i32
  %5214 = zext i1 %5208 to i32
  %5215 = zext i1 %5209 to i32
  %5216 = zext i1 %5210 to i32
  %5217 = zext i1 %5211 to i32
  %5218 = zext i1 %5212 to i32
  %5219 = sub nsw i32 %5213, %5216
  %5220 = sub nsw i32 %5214, %5217
  %5221 = sub nsw i32 %5215, %5218
  %5222 = call float @dx.op.unary.f32(i32 83, float %5188)  ; DerivCoarseX(value)
  %5223 = call float @dx.op.unary.f32(i32 83, float %5189)  ; DerivCoarseX(value)
  %5224 = call float @dx.op.unary.f32(i32 83, float %5190)  ; DerivCoarseX(value)
  %5225 = call float @dx.op.unary.f32(i32 84, float %5188)  ; DerivCoarseY(value)
  %5226 = call float @dx.op.unary.f32(i32 84, float %5189)  ; DerivCoarseY(value)
  %5227 = call float @dx.op.unary.f32(i32 84, float %5190)  ; DerivCoarseY(value)
  %5228 = fcmp fast ole float %276, %5206
  %5229 = fmul fast float %5205, %5203
  %5230 = fcmp fast ole float %276, %5229
  %5231 = select i1 %5230, float %5190, float %5188
  %5232 = select i1 %5230, float %5188, float %5189
  %5233 = select i1 %5228, float %5189, float %5231
  %5234 = select i1 %5228, float %5190, float %5232
  %5235 = select i1 %5230, float %5224, float %5222
  %5236 = select i1 %5230, float %5222, float %5223
  %5237 = select i1 %5228, float %5223, float %5235
  %5238 = select i1 %5228, float %5224, float %5236
  %5239 = select i1 %5230, float %5227, float %5225
  %5240 = select i1 %5230, float %5225, float %5226
  %5241 = select i1 %5228, float %5226, float %5239
  %5242 = select i1 %5228, float %5227, float %5240
  %5243 = call float @dx.op.unary.f32(i32 27, float %5233)  ; Round_ni(value)
  %5244 = call float @dx.op.unary.f32(i32 27, float %5234)  ; Round_ni(value)
  %5245 = fptosi float %5243 to i32
  %5246 = fptosi float %5244 to i32
  %5247 = xor i32 %5246, %5245
  %5248 = sitofp i32 %5247 to float
  %5249 = fptosi float %5248 to i32
  %5250 = sitofp i32 %5249 to float
  %5251 = fmul fast float %5250, 0x3FE3C6EF40000000
  %5252 = frem fast float %5243, 2.560000e+02
  %5253 = frem fast float %5244, 2.560000e+02
  %5254 = fptoui float %5252 to i32
  %5255 = fptoui float %5253 to i32
  %5256 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5254, i32 %5255, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.ResRet.f32 %5256, 1
  %5259 = extractvalue %dx.types.ResRet.f32 %5256, 2
  %5260 = fadd fast float %5257, %5251
  %5261 = fadd fast float %5258, %5251
  %5262 = fadd fast float %5259, %5251
  %5263 = call float @dx.op.unary.f32(i32 22, float %5260)  ; Frc(value)
  %5264 = call float @dx.op.unary.f32(i32 22, float %5261)  ; Frc(value)
  %5265 = call float @dx.op.unary.f32(i32 22, float %5262)  ; Frc(value)
  %5266 = fmul fast float %5265, 0x401921FB60000000
  %5267 = call float @dx.op.unary.f32(i32 13, float %5266)  ; Sin(value)
  %5268 = call float @dx.op.unary.f32(i32 12, float %5266)  ; Cos(value)
  %5269 = fsub fast float -0.000000e+00, %5268
  %5270 = fmul fast float %5268, %5233
  %5271 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5234, float %5270)  ; FMad(a,b,c)
  %5272 = fmul fast float %5267, %5233
  %5273 = call float @dx.op.tertiary.f32(i32 46, float %5269, float %5234, float %5272)  ; FMad(a,b,c)
  %5274 = fadd fast float %5271, %5263
  %5275 = fadd fast float %5273, %5264
  %5276 = extractvalue %dx.types.CBufRet.f32 %5186, 3
  %5277 = bitcast float %5276 to i32
  %5278 = icmp eq i32 %5277, 0
  br i1 %5278, label %5317, label %5279

; <label>:5279                                    ; preds = %5182
  %5280 = add i32 %5277, 0
  %5281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5280, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5282 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5281, %dx.types.Handle %103, float %5274, float %5275, float undef, float undef, i32 0, i32 0, i32 undef, float %5237, float %5238, float undef, float %5241, float %5242, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5283 = extractvalue %dx.types.ResRet.f32 %5282, 0
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 1
  %5286 = extractvalue %dx.types.CBufRet.f32 %5284, 2
  %5287 = fsub fast float 1.000000e+00, %4892
  %5288 = call float @dx.op.binary.f32(i32 35, float %5287, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5289 = bitcast float %4892 to i32
  %5290 = sitofp i32 %5289 to float
  %5291 = fadd fast float %5290, 0xC1CFBF8940000000
  %5292 = fmul fast float %5286, %5291
  %5293 = fadd fast float %5292, 0x41CFBF8940000000
  %5294 = fptosi float %5293 to i32
  %5295 = bitcast i32 %5294 to float
  %5296 = bitcast float %5288 to i32
  %5297 = sitofp i32 %5296 to float
  %5298 = fadd fast float %5297, 0xC1CFBF8940000000
  %5299 = fmul fast float %5298, %5286
  %5300 = fadd fast float %5299, 0x41CFBF8940000000
  %5301 = fptosi float %5300 to i32
  %5302 = bitcast i32 %5301 to float
  %5303 = fmul fast float %5295, %5285
  %5304 = fmul fast float %5302, %5285
  %5305 = fsub fast float %5288, %5303
  %5306 = fadd fast float %5304, %5288
  %5307 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5308 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5309 = fsub fast float %5283, %5307
  %5310 = fsub fast float %5308, %5307
  %5311 = bitcast float %5310 to i32
  %5312 = sub nsw i32 2129859010, %5311
  %5313 = bitcast i32 %5312 to float
  %5314 = fmul fast float %5313, %5309
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = fcmp fast olt float %5315, 0x3F70101020000000
  br i1 %5316, label %5455, label %5317

; <label>:5317                                    ; preds = %5279, %5182
  %5318 = phi float [ %5315, %5279 ], [ %4892, %5182 ]
  %5319 = fmul fast float %5318, %5185
  %5320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.i32 %5320, 1
  %5322 = extractvalue %dx.types.CBufRet.i32 %5320, 0
  %5323 = add i32 %5322, 0
  %5324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5325 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5324, %dx.types.Handle %102, float %5274, float %5275, float undef, float undef, i32 0, i32 0, i32 undef, float %5237, float %5238, float undef, float %5241, float %5242, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.ResRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.ResRet.f32 %5325, 2
  %5329 = extractvalue %dx.types.ResRet.f32 %5325, 3
  %5330 = and i32 %5321, 255
  %5331 = uitofp i32 %5330 to float
  %5332 = lshr i32 %5321, 8
  %5333 = and i32 %5332, 255
  %5334 = uitofp i32 %5333 to float
  %5335 = fmul fast float %5329, %5331
  %5336 = fadd fast float %5335, %5334
  %5337 = fmul fast float %5336, 0x3F70101000000000
  %5338 = fadd fast float %5337, 0xBFB99999A0000000
  %5339 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5340 = fmul fast float %5339, 0x3FF1C71C80000000
  %5341 = call float @dx.op.binary.f32(i32 36, float %5337, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5342 = fsub fast float 1.000000e+00, %5340
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fmul fast float %5343, %5326
  %5345 = fmul fast float %5343, %5327
  %5346 = fmul fast float %5343, %5328
  %5347 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5348 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5349 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5350 = fmul fast float %5340, %5326
  %5351 = fmul fast float %5340, %5327
  %5352 = fmul fast float %5340, %5328
  %5353 = fadd fast float %5350, %5341
  %5354 = fadd fast float %5351, %5341
  %5355 = fadd fast float %5352, %5341
  %5356 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5357 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5358 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.i32 %5359, 3
  %5361 = extractvalue %dx.types.CBufRet.i32 %5359, 2
  %5362 = add i32 %5361, 0
  %5363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5364 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5363, %dx.types.Handle %102, float %5274, float %5275, float undef, float undef, i32 0, i32 0, i32 undef, float %5237, float %5238, float undef, float %5241, float %5242, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5365 = extractvalue %dx.types.ResRet.f32 %5364, 0
  %5366 = extractvalue %dx.types.ResRet.f32 %5364, 1
  %5367 = extractvalue %dx.types.ResRet.f32 %5364, 2
  %5368 = extractvalue %dx.types.ResRet.f32 %5364, 3
  %5369 = and i32 %5360, 255
  %5370 = uitofp i32 %5369 to float
  %5371 = lshr i32 %5360, 8
  %5372 = and i32 %5371, 255
  %5373 = uitofp i32 %5372 to float
  %5374 = lshr i32 %5360, 16
  %5375 = and i32 %5374, 255
  %5376 = uitofp i32 %5375 to float
  %5377 = fmul fast float %5376, 0x3F70101000000000
  %5378 = fmul fast float %5365, %5370
  %5379 = fadd fast float %5378, %5373
  %5380 = fmul fast float %5379, 0x3F70101000000000
  %5381 = fadd fast float %5366, -5.000000e-01
  %5382 = fadd fast float %5368, -5.000000e-01
  %5383 = fmul fast float %5381, %5377
  %5384 = fmul fast float %5382, %5377
  %5385 = fadd fast float %5383, 5.000000e-01
  %5386 = fadd fast float %5384, 5.000000e-01
  %5387 = fmul fast float %5385, 2.000000e+00
  %5388 = fadd fast float %5387, -1.000000e+00
  %5389 = fmul fast float %5386, 2.000000e+00
  %5390 = fadd fast float %5389, -1.000000e+00
  %5391 = fadd fast float %5388, %5390
  %5392 = fmul fast float %5391, 5.000000e-01
  %5393 = fsub fast float %5388, %5390
  %5394 = fmul fast float %5393, 5.000000e-01
  %5395 = call float @dx.op.unary.f32(i32 6, float %5392)  ; FAbs(value)
  %5396 = fsub fast float 1.000000e+00, %5395
  %5397 = call float @dx.op.unary.f32(i32 6, float %5394)  ; FAbs(value)
  %5398 = fsub fast float %5396, %5397
  %5399 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5394, float %5398, float %5392, float %5394, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = call float @dx.op.unary.f32(i32 25, float %5399)  ; Rsqrt(value)
  %5401 = fmul fast float %5392, %5400
  %5402 = fmul fast float %5394, %5400
  %5403 = select i1 %5230, i32 %5220, i32 %5221
  %5404 = select i1 %5228, i32 %5219, i32 %5403
  %5405 = sitofp i32 %5404 to float
  %5406 = fmul fast float %5398, %5405
  %5407 = fmul fast float %5406, %5400
  %5408 = select i1 %5230, float %5407, float %5402
  %5409 = select i1 %5230, float %5402, float %5407
  %5410 = select i1 %5228, float %5407, float %5401
  %5411 = select i1 %5228, float %5402, float %5408
  %5412 = select i1 %5228, float %5401, float %5409
  %5413 = fsub fast float %5347, %5174
  %5414 = fsub fast float %5348, %5175
  %5415 = fsub fast float %5349, %5176
  %5416 = fmul fast float %5413, %5319
  %5417 = fmul fast float %5414, %5319
  %5418 = fmul fast float %5415, %5319
  %5419 = fadd fast float %5416, %5174
  %5420 = fadd fast float %5417, %5175
  %5421 = fadd fast float %5418, %5176
  %5422 = fsub fast float %5356, %5171
  %5423 = fsub fast float %5357, %5172
  %5424 = fsub fast float %5358, %5173
  %5425 = fmul fast float %5422, %5319
  %5426 = fmul fast float %5423, %5319
  %5427 = fmul fast float %5424, %5319
  %5428 = fadd fast float %5425, %5171
  %5429 = fadd fast float %5426, %5172
  %5430 = fadd fast float %5427, %5173
  %5431 = fadd fast float %5410, %5177
  %5432 = fadd fast float %5411, %5178
  %5433 = fadd fast float %5412, %5179
  %5434 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5435 = call float @dx.op.unary.f32(i32 25, float %5434)  ; Rsqrt(value)
  %5436 = fmul fast float %5431, %5435
  %5437 = fmul fast float %5432, %5435
  %5438 = fmul fast float %5433, %5435
  %5439 = fsub fast float %5436, %5177
  %5440 = fsub fast float %5437, %5178
  %5441 = fsub fast float %5438, %5179
  %5442 = fmul fast float %5439, %5319
  %5443 = fmul fast float %5440, %5319
  %5444 = fmul fast float %5441, %5319
  %5445 = fadd fast float %5442, %5177
  %5446 = fadd fast float %5443, %5178
  %5447 = fadd fast float %5444, %5179
  %5448 = call float @dx.op.binary.f32(i32 36, float %5181, float %5367)  ; FMin(a,b)
  %5449 = fsub fast float %5448, %5181
  %5450 = fmul fast float %5449, %5319
  %5451 = fadd fast float %5450, %5181
  %5452 = fsub fast float %5380, %5180
  %5453 = fmul fast float %5452, %5319
  %5454 = fadd fast float %5453, %5180
  br label %5455

; <label>:5455                                    ; preds = %5317, %5279, %5170, %4886
  %5456 = phi float [ %5428, %5317 ], [ %5171, %5279 ], [ %5171, %5170 ], [ %4477, %4886 ]
  %5457 = phi float [ %5429, %5317 ], [ %5172, %5279 ], [ %5172, %5170 ], [ %4478, %4886 ]
  %5458 = phi float [ %5430, %5317 ], [ %5173, %5279 ], [ %5173, %5170 ], [ %4479, %4886 ]
  %5459 = phi float [ %5419, %5317 ], [ %5174, %5279 ], [ %5174, %5170 ], [ %4495, %4886 ]
  %5460 = phi float [ %5420, %5317 ], [ %5175, %5279 ], [ %5175, %5170 ], [ %4496, %4886 ]
  %5461 = phi float [ %5421, %5317 ], [ %5176, %5279 ], [ %5176, %5170 ], [ %4497, %4886 ]
  %5462 = phi float [ %5445, %5317 ], [ %5177, %5279 ], [ %5177, %5170 ], [ %4438, %4886 ]
  %5463 = phi float [ %5446, %5317 ], [ %5178, %5279 ], [ %5178, %5170 ], [ %4439, %4886 ]
  %5464 = phi float [ %5447, %5317 ], [ %5179, %5279 ], [ %5179, %5170 ], [ %4440, %4886 ]
  %5465 = phi float [ %5454, %5317 ], [ %5180, %5279 ], [ %5180, %5170 ], [ %4480, %4886 ]
  %5466 = phi float [ %5451, %5317 ], [ %5181, %5279 ], [ %5181, %5170 ], [ %4453, %4886 ]
  %5467 = fcmp fast une float %4890, 0.000000e+00
  %5468 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %5469 = call float @dx.op.unary.f32(i32 25, float %5468)  ; Rsqrt(value)
  br i1 %5467, label %5477, label %5470

; <label>:5470                                    ; preds = %5455
  %5471 = fmul fast float %5469, %193
  %5472 = fmul fast float %5469, %194
  %5473 = fmul fast float %5469, %195
  %5474 = fsub fast float -0.000000e+00, %5471
  %5475 = fsub fast float -0.000000e+00, %5472
  %5476 = fsub fast float -0.000000e+00, %5473
  br label %5644

; <label>:5477                                    ; preds = %5455
  %5478 = fmul fast float %193, %5469
  %5479 = fsub fast float -0.000000e+00, %5478
  %5480 = fmul fast float %194, %5469
  %5481 = fsub fast float -0.000000e+00, %5480
  %5482 = fmul fast float %195, %5469
  %5483 = fsub fast float -0.000000e+00, %5482
  %5484 = call float @dx.op.dot3.f32(i32 55, float %5479, float %5481, float %5483, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = fmul fast float %4890, 2.500000e+00
  %5486 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  %5487 = fmul fast float %4890, 0x4013FFFFE0000000
  %5488 = fadd fast float %5487, 0xBFFFFFFFE0000000
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5490 = fmul fast float %4890, 0x4004000020000000
  %5491 = fadd fast float %5490, 0xBFF8000040000000
  %5492 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5493 = fmul fast float %4459, 1.000000e+01
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = fmul fast float %5494, 2.000000e+00
  %5496 = fsub fast float 3.000000e+00, %5495
  %5497 = fmul fast float %5494, %5494
  %5498 = fmul fast float %5497, %5496
  %5499 = fsub fast float 1.000000e+00, %5498
  %5500 = fsub fast float 0x3FE3333340000000, %5465
  %5501 = fmul fast float %5500, 0x400AAAAAA0000000
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = fmul fast float %5499, %5502
  %5504 = fmul fast float %5459, 0x3FEA2B8620000000
  %5505 = fmul fast float %5460, 0x3FEA2B8620000000
  %5506 = fmul fast float %5461, 0x3FEA2B8620000000
  %5507 = fadd fast float %5504, 0x3FC81DFBA0000000
  %5508 = fmul fast float %5507, %5459
  %5509 = fadd fast float %5508, 0x3F910E6020000000
  %5510 = fadd fast float %5505, 0x3FC81DFBA0000000
  %5511 = fmul fast float %5510, %5460
  %5512 = fadd fast float %5511, 0x3F910E6020000000
  %5513 = fadd fast float %5506, 0x3FC81DFBA0000000
  %5514 = fmul fast float %5513, %5461
  %5515 = fadd fast float %5514, 0x3F910E6020000000
  %5516 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5517 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  %5518 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5519 = fsub fast float %5516, %5459
  %5520 = fsub fast float %5517, %5460
  %5521 = fsub fast float %5518, %5461
  %5522 = fmul fast float %5519, %5486
  %5523 = fmul fast float %5522, %5503
  %5524 = fmul fast float %5520, %5486
  %5525 = fmul fast float %5524, %5503
  %5526 = fmul fast float %5521, %5486
  %5527 = fmul fast float %5526, %5503
  %5528 = fadd fast float %5523, %5459
  %5529 = fadd fast float %5525, %5460
  %5530 = fadd fast float %5527, %5461
  %5531 = fmul fast float %5466, %5466
  %5532 = fmul fast float %5531, %5531
  %5533 = fadd fast float %5489, 1.000000e+00
  %5534 = fsub fast float %5533, %5503
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = call float @dx.op.dot3.f32(i32 55, float %113, float %114, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5538 = fsub fast float 1.000000e+00, %5532
  %5539 = call float @dx.op.binary.f32(i32 36, float %5535, float %5538)  ; FMin(a,b)
  %5540 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5541 = call float @dx.op.binary.f32(i32 35, float %5539, float %5540)  ; FMax(a,b)
  %5542 = fadd fast float %5537, 0xBFE4CCCCC0000000
  %5543 = fmul fast float %5542, 0x4006DB6DA0000000
  %5544 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5545 = fmul fast float %5544, 2.000000e+00
  %5546 = fsub fast float 3.000000e+00, %5545
  %5547 = bitcast float %5456 to i32
  %5548 = ashr i32 %5547, 1
  %5549 = add nsw i32 %5548, 532487669
  %5550 = bitcast i32 %5549 to float
  %5551 = fsub fast float 1.000000e+00, %5550
  %5552 = bitcast float %5551 to i32
  %5553 = sub nsw i32 2129859010, %5552
  %5554 = bitcast i32 %5553 to float
  %5555 = fmul fast float %5554, 2.000000e+00
  %5556 = bitcast float %5457 to i32
  %5557 = ashr i32 %5556, 1
  %5558 = add nsw i32 %5557, 532487669
  %5559 = bitcast i32 %5558 to float
  %5560 = fsub fast float 1.000000e+00, %5559
  %5561 = bitcast float %5560 to i32
  %5562 = sub nsw i32 2129859010, %5561
  %5563 = bitcast i32 %5562 to float
  %5564 = fmul fast float %5563, 2.000000e+00
  %5565 = bitcast float %5458 to i32
  %5566 = ashr i32 %5565, 1
  %5567 = add nsw i32 %5566, 532487669
  %5568 = bitcast i32 %5567 to float
  %5569 = fsub fast float 1.000000e+00, %5568
  %5570 = bitcast float %5569 to i32
  %5571 = sub nsw i32 2129859010, %5570
  %5572 = bitcast i32 %5571 to float
  %5573 = fmul fast float %5572, 2.000000e+00
  %5574 = fsub fast float 0x4002A9FBE0000000, %5555
  %5575 = fadd fast float %5555, 0x3FD54FDF00000000
  %5576 = bitcast float %5575 to i32
  %5577 = sub nsw i32 2129859010, %5576
  %5578 = bitcast i32 %5577 to float
  %5579 = fmul fast float %5578, %5574
  %5580 = fmul fast float %5579, %5579
  %5581 = fsub fast float 0x4002A9FBE0000000, %5564
  %5582 = fadd fast float %5564, 0x3FD54FDF00000000
  %5583 = bitcast float %5582 to i32
  %5584 = sub nsw i32 2129859010, %5583
  %5585 = bitcast i32 %5584 to float
  %5586 = fmul fast float %5585, %5581
  %5587 = fmul fast float %5586, %5586
  %5588 = fsub fast float 0x4002A9FBE0000000, %5573
  %5589 = fadd fast float %5573, 0x3FD54FDF00000000
  %5590 = bitcast float %5589 to i32
  %5591 = sub nsw i32 2129859010, %5590
  %5592 = bitcast i32 %5591 to float
  %5593 = fmul fast float %5592, %5588
  %5594 = fmul fast float %5593, %5593
  %5595 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5580)  ; FMax(a,b)
  %5596 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5587)  ; FMax(a,b)
  %5597 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5594)  ; FMax(a,b)
  %5598 = fsub fast float 1.000000e+00, %5484
  %5599 = fadd fast float %5598, %5499
  %5600 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5601 = fsub fast float 1.000000e+00, %4871
  %5602 = fmul fast float %5541, %5601
  %5603 = fmul fast float %5544, %5544
  %5604 = fmul fast float %5603, %5602
  %5605 = fmul fast float %5604, %5546
  %5606 = fmul fast float %5601, 0xBFE99999A0000000
  %5607 = fmul fast float %5606, %5486
  %5608 = fmul fast float %5607, %5503
  %5609 = fadd fast float %5608, 1.000000e+00
  %5610 = fadd fast float %5465, -1.000000e+00
  %5611 = fmul fast float %5609, %5610
  %5612 = fadd fast float %5611, 1.000000e+00
  %5613 = fsub fast float %5595, %5456
  %5614 = fsub fast float %5596, %5457
  %5615 = fsub fast float %5597, %5458
  %5616 = fmul fast float %5605, %5613
  %5617 = fmul fast float %5605, %5614
  %5618 = fmul fast float %5605, %5615
  %5619 = fadd fast float %5616, %5456
  %5620 = fadd fast float %5617, %5457
  %5621 = fadd fast float %5618, %5458
  %5622 = fsub fast float %113, %5462
  %5623 = fsub fast float %114, %5463
  %5624 = fsub fast float %115, %5464
  %5625 = fmul fast float %5605, %5622
  %5626 = fmul fast float %5605, %5623
  %5627 = fmul fast float %5605, %5624
  %5628 = fadd fast float %5625, %5462
  %5629 = fadd fast float %5626, %5463
  %5630 = fadd fast float %5627, %5464
  %5631 = fmul fast float %5605, %5600
  %5632 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  %5633 = fsub fast float 1.000000e+00, %5632
  %5634 = fmul fast float %5631, %5633
  %5635 = fadd fast float %5634, %5632
  %5636 = fsub fast float 1.000000e+00, %5466
  %5637 = fmul fast float %5605, %5636
  %5638 = fadd fast float %5637, %5466
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5628, float %5629, float %5630, float %5628, float %5629, float %5630)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = call float @dx.op.unary.f32(i32 25, float %5639)  ; Rsqrt(value)
  %5641 = fmul fast float %5628, %5640
  %5642 = fmul fast float %5629, %5640
  %5643 = fmul fast float %5630, %5640
  br label %5644

; <label>:5644                                    ; preds = %5477, %5470
  %5645 = phi float [ %5476, %5470 ], [ %5483, %5477 ]
  %5646 = phi float [ %5475, %5470 ], [ %5481, %5477 ]
  %5647 = phi float [ %5474, %5470 ], [ %5479, %5477 ]
  %5648 = phi float [ %5473, %5470 ], [ %5482, %5477 ]
  %5649 = phi float [ %5472, %5470 ], [ %5480, %5477 ]
  %5650 = phi float [ %5471, %5470 ], [ %5478, %5477 ]
  %5651 = phi float [ %5456, %5470 ], [ %5619, %5477 ]
  %5652 = phi float [ %5457, %5470 ], [ %5620, %5477 ]
  %5653 = phi float [ %5458, %5470 ], [ %5621, %5477 ]
  %5654 = phi float [ %5459, %5470 ], [ %5528, %5477 ]
  %5655 = phi float [ %5460, %5470 ], [ %5529, %5477 ]
  %5656 = phi float [ %5461, %5470 ], [ %5530, %5477 ]
  %5657 = phi float [ %5462, %5470 ], [ %5641, %5477 ]
  %5658 = phi float [ %5463, %5470 ], [ %5642, %5477 ]
  %5659 = phi float [ %5464, %5470 ], [ %5643, %5477 ]
  %5660 = phi float [ %5465, %5470 ], [ %5635, %5477 ]
  %5661 = phi float [ %5466, %5470 ], [ %5638, %5477 ]
  %5662 = fsub fast float -0.000000e+00, %195
  %5663 = select i1 %265, float 0.000000e+00, float %5653
  %5664 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float %5647, float %5646, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5666 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5649, float %5648, float %5657, float %5658, float %5659)  ; Dot3(ax,ay,az,bx,by,bz)
  %5667 = fmul fast float %5666, 2.000000e+00
  %5668 = fmul fast float %5667, %5657
  %5669 = fmul fast float %5667, %5658
  %5670 = fmul fast float %5667, %5659
  %5671 = fsub fast float %5650, %5668
  %5672 = fsub fast float %5649, %5669
  %5673 = fsub fast float %5648, %5670
  %5674 = call float @dx.op.binary.f32(i32 36, float %5661, float 1.000000e+00)  ; FMin(a,b)
  %5675 = fsub fast float 1.000000e+00, %5661
  %5676 = bitcast float %5675 to i32
  %5677 = sub nsw i32 2129859010, %5676
  %5678 = bitcast i32 %5677 to float
  %5679 = fsub fast float 1.000000e+00, %77
  %5680 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = call float @dx.op.binary.f32(i32 35, float %5680, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5682 = fdiv fast float %5679, %5681
  %5683 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = fmul fast float %5684, 5.000000e-01
  %5686 = fadd fast float %5685, 5.000000e-01
  %5687 = fmul fast float %5686, %77
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = fmul fast float %5689, %5682
  %5691 = fadd fast float %5687, %5690
  %5692 = fsub fast float 5.000000e-01, %5685
  %5693 = fmul fast float %5692, %5654
  %5694 = fmul fast float %5692, %5655
  %5695 = fmul fast float %5692, %5656
  %5696 = fadd fast float %5691, %5693
  %5697 = fadd fast float %5691, %5694
  %5698 = fadd fast float %5691, %5695
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5672, float %5673, float %113, float %114, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5701 = fmul fast float %5700, 5.000000e-01
  %5702 = fadd fast float %5701, 5.000000e-01
  %5703 = fmul fast float %5702, %77
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5672, float %5673, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5706 = fmul fast float %5705, %5682
  %5707 = fadd fast float %5703, %5706
  %5708 = fsub fast float 5.000000e-01, %5701
  %5709 = fmul fast float %5708, %5654
  %5710 = fmul fast float %5708, %5655
  %5711 = fmul fast float %5708, %5656
  %5712 = fadd fast float %5707, %5709
  %5713 = fadd fast float %5707, %5710
  %5714 = fadd fast float %5707, %5711
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = call float @dx.op.binary.f32(i32 36, float %5654, float %5716)  ; FMin(a,b)
  %5718 = fsub fast float 1.000000e+00, %5674
  %5719 = fmul fast float %5717, %5718
  %5720 = fsub fast float 1.000000e+00, %5719
  %5721 = bitcast float %5720 to i32
  %5722 = sub nsw i32 2129859010, %5721
  %5723 = bitcast i32 %5722 to float
  %5724 = call float @dx.op.binary.f32(i32 36, float %5655, float %5716)  ; FMin(a,b)
  %5725 = fmul fast float %5724, %5718
  %5726 = fsub fast float 1.000000e+00, %5725
  %5727 = bitcast float %5726 to i32
  %5728 = sub nsw i32 2129859010, %5727
  %5729 = bitcast i32 %5728 to float
  %5730 = call float @dx.op.binary.f32(i32 36, float %5656, float %5716)  ; FMin(a,b)
  %5731 = fmul fast float %5730, %5718
  %5732 = fsub fast float 1.000000e+00, %5731
  %5733 = bitcast float %5732 to i32
  %5734 = sub nsw i32 2129859010, %5733
  %5735 = bitcast i32 %5734 to float
  %5736 = fmul fast float %5674, %78
  %5737 = fmul fast float %5736, %5696
  %5738 = fmul fast float %5737, %5723
  %5739 = fmul fast float %5674, %79
  %5740 = fmul fast float %5739, %5697
  %5741 = fmul fast float %5740, %5729
  %5742 = fmul fast float %5674, %80
  %5743 = fmul fast float %5742, %5698
  %5744 = fmul fast float %5743, %5735
  %5745 = call float @dx.op.binary.f32(i32 36, float %5651, float %5716)  ; FMin(a,b)
  %5746 = fmul fast float %5745, %5718
  %5747 = fsub fast float 1.000000e+00, %5746
  %5748 = bitcast float %5747 to i32
  %5749 = sub nsw i32 2129859010, %5748
  %5750 = bitcast i32 %5749 to float
  %5751 = call float @dx.op.binary.f32(i32 36, float %5652, float %5716)  ; FMin(a,b)
  %5752 = fmul fast float %5751, %5718
  %5753 = fsub fast float 1.000000e+00, %5752
  %5754 = bitcast float %5753 to i32
  %5755 = sub nsw i32 2129859010, %5754
  %5756 = bitcast i32 %5755 to float
  %5757 = call float @dx.op.binary.f32(i32 36, float %5663, float %5716)  ; FMin(a,b)
  %5758 = fmul fast float %5757, %5718
  %5759 = fsub fast float 1.000000e+00, %5758
  %5760 = bitcast float %5759 to i32
  %5761 = sub nsw i32 2129859010, %5760
  %5762 = bitcast i32 %5761 to float
  %5763 = fmul fast float %5736, %5712
  %5764 = fmul fast float %5763, %5750
  %5765 = fmul fast float %5739, %5713
  %5766 = fmul fast float %5765, %5756
  %5767 = fmul fast float %5742, %5714
  %5768 = fmul fast float %5767, %5762
  %5769 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5741, float %5744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = select i1 %265, float 0.000000e+00, float %5738
  %5771 = select i1 %265, float %5769, float %5741
  %5772 = select i1 %265, float 0.000000e+00, float %5744
  %5773 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5766, float %5768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = select i1 %265, float 0.000000e+00, float %5764
  %5775 = select i1 %265, float %5773, float %5766
  %5776 = select i1 %265, float 0.000000e+00, float %5768
  %5777 = fmul fast float %3814, %3814
  %5778 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5779 = fmul fast float %5665, 9.843750e-01
  %5780 = fmul fast float %5660, 9.843750e-01
  %5781 = fadd fast float %5779, 7.812500e-03
  %5782 = fadd fast float %5780, 7.812500e-03
  %5783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5781, float %5782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5784 = extractvalue %dx.types.ResRet.f32 %5783, 0
  %5785 = extractvalue %dx.types.ResRet.f32 %5783, 1
  %5786 = extractvalue %dx.types.ResRet.f32 %5783, 2
  %5787 = extractvalue %dx.types.ResRet.f32 %5783, 3
  %5788 = fsub fast float 1.000000e+00, %5778
  %5789 = fsub fast float %5786, %5784
  %5790 = fsub fast float %5787, %5785
  %5791 = fmul fast float %5789, %5788
  %5792 = fmul fast float %5790, %5788
  %5793 = fadd fast float %5791, %5784
  %5794 = fadd fast float %5792, %5785
  %5795 = fmul fast float %5793, %5651
  %5796 = fmul fast float %5793, %5652
  %5797 = fmul fast float %5793, %5663
  %5798 = fadd fast float %5795, %5794
  %5799 = fadd fast float %5796, %5794
  %5800 = fadd fast float %5797, %5794
  %5801 = fcmp fast ogt float %4454, 0.000000e+00
  br i1 %5801, label %5802, label %5828

; <label>:5802                                    ; preds = %5644
  %5803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4454, float %5665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5804 = extractvalue %dx.types.ResRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.ResRet.f32 %5803, 1
  %5806 = extractvalue %dx.types.ResRet.f32 %5803, 2
  %5807 = fadd fast float %5804, -5.000000e-01
  %5808 = fadd fast float %5805, -5.000000e-01
  %5809 = fadd fast float %5806, -5.000000e-01
  %5810 = fsub fast float 1.000000e+00, %5651
  %5811 = fsub fast float 1.000000e+00, %5652
  %5812 = fsub fast float 1.000000e+00, %5663
  %5813 = fmul fast float %5651, 4.000000e+00
  %5814 = fmul fast float %5813, %5810
  %5815 = fmul fast float %5814, %5807
  %5816 = fmul fast float %5652, 4.000000e+00
  %5817 = fmul fast float %5816, %5811
  %5818 = fmul fast float %5817, %5808
  %5819 = fmul fast float %5663, 4.000000e+00
  %5820 = fmul fast float %5819, %5812
  %5821 = fmul fast float %5820, %5809
  %5822 = fadd fast float %5815, %5798
  %5823 = fadd fast float %5818, %5799
  %5824 = fadd fast float %5821, %5800
  %5825 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5826 = call float @dx.op.unary.f32(i32 7, float %5823)  ; Saturate(value)
  %5827 = call float @dx.op.unary.f32(i32 7, float %5824)  ; Saturate(value)
  br label %5828

; <label>:5828                                    ; preds = %5802, %5644
  %5829 = phi float [ %5825, %5802 ], [ %5798, %5644 ]
  %5830 = phi float [ %5826, %5802 ], [ %5799, %5644 ]
  %5831 = phi float [ %5827, %5802 ], [ %5800, %5644 ]
  %5832 = call float @dx.op.binary.f32(i32 35, float %5830, float %5831)  ; FMax(a,b)
  %5833 = call float @dx.op.binary.f32(i32 35, float %5829, float %5832)  ; FMax(a,b)
  %5834 = fsub fast float 1.000000e+00, %5833
  %5835 = fmul fast float %5834, %5770
  %5836 = fmul fast float %5834, %5771
  %5837 = fmul fast float %5834, %5772
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5654, float %5655, float %5656, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = fcmp fast ogt float %5838, 0x3E7FF19E20000000
  %5840 = fdiv fast float 1.000000e+00, %5838
  %5841 = select i1 %5839, float %5840, float 0.000000e+00
  %5842 = fmul fast float %5841, %5654
  %5843 = fmul fast float %5841, %5655
  %5844 = fmul fast float %5841, %5656
  %5845 = fadd fast float %5842, -1.000000e+00
  %5846 = fadd fast float %5843, -1.000000e+00
  %5847 = fadd fast float %5844, -1.000000e+00
  %5848 = fmul fast float %5845, 5.000000e-01
  %5849 = fmul fast float %5846, 5.000000e-01
  %5850 = fmul fast float %5847, 5.000000e-01
  %5851 = fadd fast float %5848, 1.000000e+00
  %5852 = fadd fast float %5849, 1.000000e+00
  %5853 = fadd fast float %5850, 1.000000e+00
  %5854 = call float @dx.op.binary.f32(i32 35, float %5665, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5855 = fdiv fast float %3814, %5854
  %5856 = fcmp fast olt float %4481, 1.270000e+02
  %5857 = fcmp fast olt float %4482, 1.270000e+02
  %5858 = fcmp fast olt float %4483, 1.270000e+02
  %5859 = fmul fast float %4481, 0xBFF7154760000000
  %5860 = fmul fast float %5859, %5855
  %5861 = fmul fast float %4482, 0xBFF7154760000000
  %5862 = fmul fast float %5861, %5855
  %5863 = fmul fast float %4483, 0xBFF7154760000000
  %5864 = fmul fast float %5863, %5855
  %5865 = call float @dx.op.unary.f32(i32 21, float %5860)  ; Exp(value)
  %5866 = call float @dx.op.unary.f32(i32 21, float %5862)  ; Exp(value)
  %5867 = call float @dx.op.unary.f32(i32 21, float %5864)  ; Exp(value)
  %5868 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5869 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5870 = call float @dx.op.unary.f32(i32 7, float %5867)  ; Saturate(value)
  %5871 = select i1 %5856, float %5868, float 0.000000e+00
  %5872 = select i1 %5857, float %5869, float 0.000000e+00
  %5873 = select i1 %5858, float %5870, float 0.000000e+00
  %5874 = fmul fast float %5871, %5834
  %5875 = fmul fast float %5872, %5834
  %5876 = fmul fast float %5873, %5834
  %5877 = fadd fast float %5874, -1.000000e+00
  %5878 = fadd fast float %5875, -1.000000e+00
  %5879 = fadd fast float %5876, -1.000000e+00
  %5880 = fmul fast float %5829, %5774
  %5881 = fmul fast float %5830, %5775
  %5882 = fmul fast float %5831, %5776
  %5883 = fsub fast float 1.000000e+00, %5665
  %5884 = bitcast float %5883 to i32
  %5885 = sitofp i32 %5884 to float
  %5886 = fmul fast float %5885, 5.000000e+00
  %5887 = fadd fast float %5886, 0xC1EFBF8940000000
  %5888 = fptosi float %5887 to i32
  %5889 = bitcast i32 %5888 to float
  %5890 = fmul fast float %5889, %4455
  %5891 = fmul fast float %5770, %5890
  %5892 = fmul fast float %5891, %5834
  %5893 = fmul fast float %5892, %5851
  %5894 = fmul fast float %5771, %5890
  %5895 = fmul fast float %5894, %5834
  %5896 = fmul fast float %5895, %5852
  %5897 = fmul fast float %5772, %5890
  %5898 = fmul fast float %5897, %5834
  %5899 = fmul fast float %5898, %5853
  %5900 = fmul fast float %5835, %4451
  %5901 = fmul fast float %5836, %4451
  %5902 = fmul fast float %5837, %4451
  %5903 = fadd fast float %5880, %4444
  %5904 = fadd fast float %5903, %5893
  %5905 = fmul fast float %5904, %4451
  %5906 = fadd fast float %5881, %4445
  %5907 = fadd fast float %5906, %5896
  %5908 = fmul fast float %5907, %4451
  %5909 = fadd fast float %5882, %4446
  %5910 = fadd fast float %5909, %5899
  %5911 = fmul fast float %5910, %4451
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 3
  %5914 = fcmp fast oeq float %5913, 0.000000e+00
  br i1 %5914, label %7011, label %5915

; <label>:5915                                    ; preds = %5828
  %5916 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5917 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5918 = extractvalue %dx.types.CBufRet.f32 %5912, 2
  %5919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5920 = extractvalue %dx.types.CBufRet.f32 %5919, 0
  %5921 = extractvalue %dx.types.CBufRet.f32 %5919, 1
  %5922 = extractvalue %dx.types.CBufRet.f32 %5919, 2
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.CBufRet.f32 %5923, 1
  %5926 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5927 = select i1 %265, float %5924, float %5920
  %5928 = select i1 %265, float %5926, float %5921
  %5929 = select i1 %265, float %5925, float %5922
  %5930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5930, 2
  %5932 = fmul fast float %5931, %113
  %5933 = fmul fast float %5931, %114
  %5934 = fmul fast float %5931, %115
  %5935 = fadd fast float %5932, %193
  %5936 = fadd fast float %5933, %194
  %5937 = fadd fast float %5934, %195
  %5938 = fcmp fast olt float %5913, 0.000000e+00
  br i1 %5938, label %6578, label %5939

; <label>:5939                                    ; preds = %5915
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5944 = extractvalue %dx.types.CBufRet.f32 %5940, 3
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.CBufRet.f32 %5945, 2
  %5949 = extractvalue %dx.types.CBufRet.f32 %5945, 3
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.CBufRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.CBufRet.f32 %5950, 2
  %5954 = extractvalue %dx.types.CBufRet.f32 %5950, 3
  %5955 = fmul fast float %5941, %5935
  %5956 = call float @dx.op.tertiary.f32(i32 46, float %5936, float %5942, float %5955)  ; FMad(a,b,c)
  %5957 = call float @dx.op.tertiary.f32(i32 46, float %5937, float %5943, float %5956)  ; FMad(a,b,c)
  %5958 = fadd fast float %5957, %5944
  %5959 = fmul fast float %5946, %5935
  %5960 = call float @dx.op.tertiary.f32(i32 46, float %5936, float %5947, float %5959)  ; FMad(a,b,c)
  %5961 = call float @dx.op.tertiary.f32(i32 46, float %5937, float %5948, float %5960)  ; FMad(a,b,c)
  %5962 = fadd fast float %5961, %5949
  %5963 = fmul fast float %5951, %5935
  %5964 = call float @dx.op.tertiary.f32(i32 46, float %5936, float %5952, float %5963)  ; FMad(a,b,c)
  %5965 = call float @dx.op.tertiary.f32(i32 46, float %5937, float %5953, float %5964)  ; FMad(a,b,c)
  %5966 = fadd fast float %5965, %5954
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = fcmp fast une float %5968, 0.000000e+00
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.CBufRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.CBufRet.f32 %5970, 3
  %5974 = fmul fast float %5973, %5958
  %5975 = fmul fast float %5973, %5962
  %5976 = fadd fast float %5974, %5971
  %5977 = fadd fast float %5975, %5972
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.CBufRet.f32 %5978, 3
  %5982 = fmul fast float %5981, %5958
  %5983 = fmul fast float %5981, %5962
  %5984 = fadd fast float %5982, %5979
  %5985 = fadd fast float %5983, %5980
  %5986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5987 = extractvalue %dx.types.CBufRet.f32 %5986, 1
  %5988 = fsub fast float %5987, %5966
  %5989 = extractvalue %dx.types.CBufRet.f32 %5986, 2
  %5990 = fmul fast float %5988, %5989
  %5991 = fsub fast float 1.000000e+00, %5990
  %5992 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  br i1 %5969, label %6053, label %5993

; <label>:5993                                    ; preds = %5939
  %5994 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.f32 %5995, 2
  %5997 = fadd fast float %5996, %5994
  %5998 = fcmp fast ogt float %5997, 0.000000e+00
  br i1 %5998, label %5999, label %6023

; <label>:5999                                    ; preds = %5993
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6003 = fsub fast float %5984, %6001
  %6004 = fsub fast float %5985, %6002
  %6005 = fcmp fast olt float %6003, 0.000000e+00
  %6006 = fcmp fast olt float %6004, 0.000000e+00
  %6007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.CBufRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.CBufRet.f32 %6007, 2
  %6011 = extractvalue %dx.types.CBufRet.f32 %6007, 3
  %6012 = select i1 %6005, float %6008, float %6010
  %6013 = select i1 %6006, float %6009, float %6011
  %6014 = fmul fast float %6012, %6003
  %6015 = fmul fast float %6013, %6004
  %6016 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6017 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6018 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %6019 = call float @dx.op.binary.f32(i32 35, float %6016, float %6017)  ; FMax(a,b)
  %6020 = fsub fast float %6018, %6019
  %6021 = call float @dx.op.unary.f32(i32 7, float %6020)  ; Saturate(value)
  %6022 = fmul fast float %6021, %5992
  br label %6023

; <label>:6023                                    ; preds = %5999, %5993
  %6024 = phi float [ %6022, %5999 ], [ 0.000000e+00, %5993 ]
  %6025 = extractvalue %dx.types.CBufRet.f32 %5970, 2
  %6026 = extractvalue %dx.types.CBufRet.f32 %5995, 1
  %6027 = fadd fast float %6026, %6025
  %6028 = fcmp fast ogt float %6027, 0.000000e+00
  br i1 %6028, label %6029, label %6053

; <label>:6029                                    ; preds = %6023
  %6030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6031 = extractvalue %dx.types.CBufRet.f32 %6030, 0
  %6032 = extractvalue %dx.types.CBufRet.f32 %6030, 1
  %6033 = fsub fast float %5976, %6031
  %6034 = fsub fast float %5977, %6032
  %6035 = fcmp fast olt float %6033, 0.000000e+00
  %6036 = fcmp fast olt float %6034, 0.000000e+00
  %6037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6039 = extractvalue %dx.types.CBufRet.f32 %6037, 1
  %6040 = extractvalue %dx.types.CBufRet.f32 %6037, 2
  %6041 = extractvalue %dx.types.CBufRet.f32 %6037, 3
  %6042 = select i1 %6035, float %6038, float %6040
  %6043 = select i1 %6036, float %6039, float %6041
  %6044 = fmul fast float %6042, %6033
  %6045 = fmul fast float %6043, %6034
  %6046 = call float @dx.op.unary.f32(i32 6, float %6044)  ; FAbs(value)
  %6047 = call float @dx.op.unary.f32(i32 6, float %6045)  ; FAbs(value)
  %6048 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %6049 = call float @dx.op.binary.f32(i32 35, float %6046, float %6047)  ; FMax(a,b)
  %6050 = fsub fast float %6048, %6049
  %6051 = call float @dx.op.unary.f32(i32 7, float %6050)  ; Saturate(value)
  %6052 = fmul fast float %6051, %5992
  br label %6053

; <label>:6053                                    ; preds = %6029, %6023, %5939
  %6054 = phi float [ 0.000000e+00, %5939 ], [ %6052, %6029 ], [ 0.000000e+00, %6023 ]
  %6055 = phi float [ 0.000000e+00, %5939 ], [ %6024, %6029 ], [ %6024, %6023 ]
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6058 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6060 = extractvalue %dx.types.CBufRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.CBufRet.f32 %6059, 1
  %6062 = fsub fast float %5958, %6060
  %6063 = fsub fast float %5962, %6061
  %6064 = fcmp fast olt float %6062, 0.000000e+00
  %6065 = fcmp fast olt float %6063, 0.000000e+00
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 0
  %6068 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6069 = extractvalue %dx.types.CBufRet.f32 %6066, 2
  %6070 = extractvalue %dx.types.CBufRet.f32 %6066, 3
  %6071 = select i1 %6064, float %6067, float %6069
  %6072 = select i1 %6065, float %6068, float %6070
  %6073 = fmul fast float %6071, %6062
  %6074 = fmul fast float %6072, %6063
  %6075 = call float @dx.op.unary.f32(i32 6, float %6073)  ; FAbs(value)
  %6076 = call float @dx.op.unary.f32(i32 6, float %6074)  ; FAbs(value)
  %6077 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %6078 = call float @dx.op.binary.f32(i32 35, float %6075, float %6076)  ; FMax(a,b)
  %6079 = fsub fast float %6077, %6078
  %6080 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6081 = call float @dx.op.binary.f32(i32 36, float %6080, float %6058)  ; FMin(a,b)
  %6082 = fmul fast float %6081, %5992
  %6083 = fsub fast float %6054, %6082
  %6084 = fsub fast float %6055, %6054
  %6085 = fsub fast float %6084, %6082
  %6086 = call float @dx.op.binary.f32(i32 35, float %6054, float %6055)  ; FMax(a,b)
  %6087 = call float @dx.op.binary.f32(i32 35, float %6082, float %6086)  ; FMax(a,b)
  %6088 = fcmp fast olt float %6087, 1.000000e+00
  br i1 %6088, label %6089, label %6487, !dx.controlflow.hints !98

; <label>:6089                                    ; preds = %6053
  %6090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6090, 0
  %6092 = fcmp fast une float %6091, 0.000000e+00
  br i1 %6092, label %6093, label %6487, !dx.controlflow.hints !99

; <label>:6093                                    ; preds = %6089
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  %6096 = extractvalue %dx.types.CBufRet.f32 %6094, 1
  %6097 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6098 = extractvalue %dx.types.CBufRet.f32 %6094, 3
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6102 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6103 = extractvalue %dx.types.CBufRet.f32 %6099, 3
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.CBufRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.CBufRet.f32 %6104, 2
  %6108 = extractvalue %dx.types.CBufRet.f32 %6104, 3
  %6109 = fmul fast float %6095, %5935
  %6110 = call float @dx.op.tertiary.f32(i32 46, float %5936, float %6096, float %6109)  ; FMad(a,b,c)
  %6111 = call float @dx.op.tertiary.f32(i32 46, float %5937, float %6097, float %6110)  ; FMad(a,b,c)
  %6112 = fadd fast float %6111, %6098
  %6113 = fmul fast float %6100, %5935
  %6114 = call float @dx.op.tertiary.f32(i32 46, float %5936, float %6101, float %6113)  ; FMad(a,b,c)
  %6115 = call float @dx.op.tertiary.f32(i32 46, float %5937, float %6102, float %6114)  ; FMad(a,b,c)
  %6116 = fadd fast float %6115, %6103
  %6117 = fmul fast float %6105, %5935
  %6118 = call float @dx.op.tertiary.f32(i32 46, float %5936, float %6106, float %6117)  ; FMad(a,b,c)
  %6119 = call float @dx.op.tertiary.f32(i32 46, float %5937, float %6107, float %6118)  ; FMad(a,b,c)
  %6120 = fadd fast float %6119, %6108
  %6121 = fcmp fast oge float %6112, 1.000000e+00
  %6122 = fcmp fast oge float %6116, 1.000000e+00
  %6123 = or i1 %6121, %6122
  %6124 = fcmp fast olt float %6112, 0.000000e+00
  %6125 = fcmp fast olt float %6116, 0.000000e+00
  %6126 = or i1 %6124, %6125
  %6127 = or i1 %6123, %6126
  br i1 %6127, label %6487, label %6128, !dx.controlflow.hints !100

; <label>:6128                                    ; preds = %6093
  %6129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.f32 %6129, 0
  %6131 = extractvalue %dx.types.CBufRet.f32 %6129, 1
  %6132 = extractvalue %dx.types.CBufRet.f32 %6129, 2
  %6133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6134 = extractvalue %dx.types.CBufRet.i32 %6133, 2
  %6135 = uitofp i32 %6134 to float
  %6136 = extractvalue %dx.types.CBufRet.i32 %6133, 3
  %6137 = uitofp i32 %6136 to float
  %6138 = extractvalue %dx.types.CBufRet.f32 %6129, 3
  %6139 = fmul fast float %6138, 2.000000e+00
  %6140 = fsub fast float %6112, %6130
  %6141 = fsub fast float %6116, %6131
  %6142 = fmul fast float %6139, %6140
  %6143 = fmul fast float %6139, %6141
  %6144 = fdiv fast float 1.000000e+00, %5918
  %6145 = fmul fast float %6143, %6144
  %6146 = call float @dx.op.unary.f32(i32 6, float %6145)  ; FAbs(value)
  %6147 = fmul fast float %6132, %5937
  %6148 = fmul fast float %6147, %6139
  %6149 = call float @dx.op.unary.f32(i32 6, float %6148)  ; FAbs(value)
  %6150 = call float @dx.op.unary.f32(i32 6, float %6142)  ; FAbs(value)
  %6151 = call float @dx.op.binary.f32(i32 35, float %6149, float %6146)  ; FMax(a,b)
  %6152 = call float @dx.op.binary.f32(i32 35, float %6150, float %6151)  ; FMax(a,b)
  %6153 = fmul fast float %6152, 2.000000e+00
  %6154 = call float @dx.op.unary.f32(i32 23, float %6153)  ; Log(value)
  %6155 = call float @dx.op.binary.f32(i32 35, float %6154, float %6135)  ; FMax(a,b)
  %6156 = call float @dx.op.unary.f32(i32 22, float %6155)  ; Frc(value)
  %6157 = fadd fast float %6156, 0xBFEA666660000000
  %6158 = fmul fast float %6157, 8.000000e+00
  %6159 = call float @dx.op.unary.f32(i32 7, float %6158)  ; Saturate(value)
  %6160 = call float @dx.op.unary.f32(i32 27, float %6155)  ; Round_ni(value)
  %6161 = fadd fast float %6160, %6159
  %6162 = call float @dx.op.binary.f32(i32 36, float %6161, float %6137)  ; FMin(a,b)
  %6163 = call float @dx.op.unary.f32(i32 27, float %6162)  ; Round_ni(value)
  %6164 = fsub fast float -0.000000e+00, %6163
  %6165 = call float @dx.op.unary.f32(i32 21, float %6164)  ; Exp(value)
  %6166 = fmul fast float %6165, %6139
  %6167 = fmul fast float %6166, %6112
  %6168 = fmul fast float %6166, %6116
  %6169 = fmul fast float %6167, 2.500000e-01
  %6170 = fmul fast float %6168, 2.500000e-01
  %6171 = fadd fast float %6169, 5.000000e-01
  %6172 = fadd fast float %6170, 5.000000e-01
  %6173 = fsub fast float %6137, %6135
  %6174 = fptoui float %6173 to i32
  %6175 = add i32 %6174, 320
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6175)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = fcmp fast une float %6162, %6137
  %6180 = fsub fast float %6112, %6177
  %6181 = fsub fast float %6116, %6178
  %6182 = call float @dx.op.unary.f32(i32 6, float %6180)  ; FAbs(value)
  %6183 = call float @dx.op.unary.f32(i32 6, float %6181)  ; FAbs(value)
  %6184 = fmul fast float %6182, %6166
  %6185 = fmul fast float %6183, %6166
  %6186 = fcmp fast olt float %6184, 1.000000e+00
  %6187 = fcmp fast olt float %6185, 1.000000e+00
  %6188 = and i1 %6186, %6187
  %6189 = or i1 %6179, %6188
  br i1 %6189, label %6190, label %6487, !dx.controlflow.hints !101

; <label>:6190                                    ; preds = %6128
  %6191 = fmul fast float %6168, 5.000000e-01
  %6192 = fmul fast float %6167, 5.000000e-01
  %6193 = fadd fast float %6191, 5.000000e-01
  %6194 = fadd fast float %6192, 5.000000e-01
  %6195 = sitofp i32 %6134 to float
  %6196 = fsub fast float %6162, %6195
  %6197 = call float @dx.op.unary.f32(i32 27, float %6196)  ; Round_ni(value)
  %6198 = call float @dx.op.unary.f32(i32 22, float %6162)  ; Frc(value)
  %6199 = call float @dx.op.unary.f32(i32 22, float %6194)  ; Frc(value)
  %6200 = call float @dx.op.unary.f32(i32 22, float %6193)  ; Frc(value)
  %6201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6199, float %6200, float %6197, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.ResRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.ResRet.f32 %6201, 2
  %6205 = extractvalue %dx.types.ResRet.f32 %6201, 3
  %6206 = fcmp fast ogt float %6198, 0.000000e+00
  br i1 %6206, label %6207, label %6228, !dx.controlflow.hints !102

; <label>:6207                                    ; preds = %6190
  %6208 = fadd fast float %6197, 1.000000e+00
  %6209 = call float @dx.op.unary.f32(i32 22, float %6171)  ; Frc(value)
  %6210 = call float @dx.op.unary.f32(i32 22, float %6172)  ; Frc(value)
  %6211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6209, float %6210, float %6208, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6212 = extractvalue %dx.types.ResRet.f32 %6211, 0
  %6213 = extractvalue %dx.types.ResRet.f32 %6211, 1
  %6214 = extractvalue %dx.types.ResRet.f32 %6211, 2
  %6215 = extractvalue %dx.types.ResRet.f32 %6211, 3
  %6216 = fsub fast float %6212, %6202
  %6217 = fsub fast float %6213, %6203
  %6218 = fsub fast float %6214, %6204
  %6219 = fsub fast float %6215, %6205
  %6220 = fmul fast float %6216, %6198
  %6221 = fmul fast float %6217, %6198
  %6222 = fmul fast float %6218, %6198
  %6223 = fmul fast float %6219, %6198
  %6224 = fadd fast float %6220, %6202
  %6225 = fadd fast float %6221, %6203
  %6226 = fadd fast float %6222, %6204
  %6227 = fadd fast float %6223, %6205
  br label %6228

; <label>:6228                                    ; preds = %6207, %6190
  %6229 = phi float [ %6224, %6207 ], [ %6202, %6190 ]
  %6230 = phi float [ %6225, %6207 ], [ %6203, %6190 ]
  %6231 = phi float [ %6226, %6207 ], [ %6204, %6190 ]
  %6232 = phi float [ %6227, %6207 ], [ %6205, %6190 ]
  %6233 = fadd fast float %6229, -5.000000e-01
  %6234 = fadd fast float %6231, -5.000000e-01
  %6235 = fmul fast float %6233, 0xBFD5555560000000
  %6236 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6234, float %6235)  ; FMad(a,b,c)
  %6237 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6230, float 0.000000e+00)  ; FMad(a,b,c)
  %6238 = fadd fast float %6237, %6232
  %6239 = fmul fast float %6233, -7.500000e-01
  %6240 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6234, float %6239)  ; FMad(a,b,c)
  %6241 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6230, float 0.000000e+00)  ; FMad(a,b,c)
  %6242 = fadd fast float %6241, %6232
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 0
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6249 = extractvalue %dx.types.CBufRet.f32 %6245, 3
  %6250 = fsub fast float %6246, %6236
  %6251 = fsub fast float %6247, %6238
  %6252 = fsub fast float %6248, %6240
  %6253 = fsub fast float %6249, %6242
  %6254 = fmul fast float %6250, %6244
  %6255 = fmul fast float %6251, %6244
  %6256 = fmul fast float %6252, %6244
  %6257 = fmul fast float %6253, %6244
  %6258 = fadd fast float %6254, %6236
  %6259 = fadd fast float %6255, %6238
  %6260 = fadd fast float %6256, %6240
  %6261 = fadd fast float %6257, %6242
  %6262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6263 = extractvalue %dx.types.ResRet.i32 %6262, 0
  %6264 = and i32 %6263, 536870911
  %6265 = uitofp i32 %6264 to float
  %6266 = fmul fast float %6265, %6112
  %6267 = fmul fast float %6265, %6116
  %6268 = fptoui float %6266 to i32
  %6269 = fptoui float %6267 to i32
  %6270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6271 = extractvalue %dx.types.ResRet.i32 %6270, 0
  %6272 = and i32 %6271, 31
  %6273 = lshr i32 %6268, %6272
  %6274 = lshr i32 %6269, %6272
  %6275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6276 = extractvalue %dx.types.ResRet.i32 %6275, 0
  %6277 = and i32 %6276, 31
  %6278 = shl i32 1, %6277
  %6279 = call i32 @dx.op.binary.i32(i32 40, i32 %6278, i32 4)  ; UMin(a,b)
  %6280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6281 = extractvalue %dx.types.ResRet.i32 %6280, 0
  %6282 = extractvalue %dx.types.ResRet.i32 %6280, 1
  %6283 = icmp eq i32 %6279, 0
  br i1 %6283, label %6325, label %6284

; <label>:6284                                    ; preds = %6228
  br label %6285

; <label>:6285                                    ; preds = %6313, %6284
  %6286 = phi i32 [ %6316, %6313 ], [ 0, %6284 ]
  %6287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6288 = extractvalue %dx.types.ResRet.i32 %6287, 0
  %6289 = lshr i32 %6288, 16
  %6290 = and i32 %6289, 31
  %6291 = shl i32 %6274, %6290
  %6292 = add i32 %6291, %6273
  %6293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6294 = extractvalue %dx.types.ResRet.i32 %6293, 0
  %6295 = and i32 %6294, 31
  %6296 = shl i32 %6292, %6295
  %6297 = add i32 %6296, %6286
  %6298 = shl i32 %6297, 2
  %6299 = add i32 %6298, 32
  %6300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6299, i32 undef)  ; BufferLoad(srv,index,wot)
  %6301 = extractvalue %dx.types.ResRet.i32 %6300, 0
  %6302 = icmp slt i32 %6301, 0
  %6303 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6286
  %6304 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6286
  %6305 = bitcast float* %6303 to i32*
  %6306 = bitcast float* %6304 to i32*
  br i1 %6302, label %6307, label %6313

; <label>:6307                                    ; preds = %6285
  %6308 = and i32 %6301, 1073741823
  %6309 = add nuw nsw i32 %6308, 20
  %6310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6309, i32 undef)  ; BufferLoad(srv,index,wot)
  %6311 = extractvalue %dx.types.ResRet.i32 %6310, 0
  %6312 = extractvalue %dx.types.ResRet.i32 %6310, 1
  br label %6313

; <label>:6313                                    ; preds = %6307, %6285
  %6314 = phi i32 [ %6311, %6307 ], [ %6281, %6285 ]
  %6315 = phi i32 [ %6312, %6307 ], [ %6282, %6285 ]
  store i32 %6314, i32* %6305, align 4
  store i32 %6315, i32* %6306, align 4
  %6316 = add nuw i32 %6286, 1
  %6317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.i32 %6317, 2
  %6319 = icmp eq i32 %6318, 0
  %6320 = icmp ugt i32 %6301, -1073741825
  %6321 = and i1 %6320, %6319
  %6322 = icmp ult i32 %6316, %6279
  %6323 = and i1 %6321, %6322
  br i1 %6323, label %6285, label %6324

; <label>:6324                                    ; preds = %6313
  br label %6325

; <label>:6325                                    ; preds = %6324, %6228
  %6326 = phi i32 [ 0, %6228 ], [ %6316, %6324 ]
  %6327 = extractvalue %dx.types.CBufRet.f32 %6090, 2
  %6328 = fptoui float %6327 to i32
  %6329 = icmp eq i32 %6328, 0
  br i1 %6329, label %6381, label %6330

; <label>:6330                                    ; preds = %6325
  br label %6331

; <label>:6331                                    ; preds = %6376, %6330
  %6332 = phi i32 [ %6377, %6376 ], [ %6326, %6330 ]
  %6333 = phi i32 [ %6378, %6376 ], [ 0, %6330 ]
  %6334 = lshr i32 %6333, 2
  %6335 = and i32 %6333, 3
  %6336 = add nuw nsw i32 %6334, 83
  %6337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6336)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.i32 %6337, 0
  %6339 = extractvalue %dx.types.CBufRet.i32 %6337, 1
  %6340 = extractvalue %dx.types.CBufRet.i32 %6337, 2
  %6341 = extractvalue %dx.types.CBufRet.i32 %6337, 3
  %6342 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6338, i32* %6342, align 4
  %6343 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6339, i32* %6343, align 4
  %6344 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6340, i32* %6344, align 4
  %6345 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6341, i32* %6345, align 4
  %6346 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6335
  %6347 = load i32, i32* %6346, align 4, !tbaa !103, !noalias !107
  %6348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6349 = extractvalue %dx.types.ResRet.i32 %6348, 0
  %6350 = lshr i32 %6349, 16
  %6351 = and i32 %6350, 31
  %6352 = shl i32 %6274, %6351
  %6353 = add i32 %6352, %6273
  %6354 = shl i32 %6353, 2
  %6355 = add i32 %6354, %6347
  %6356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6355, i32 undef)  ; BufferLoad(srv,index,wot)
  %6357 = extractvalue %dx.types.ResRet.i32 %6356, 0
  %6358 = icmp eq i32 %6357, 0
  br i1 %6358, label %6376, label %6359

; <label>:6359                                    ; preds = %6331
  %6360 = icmp slt i32 %6357, 0
  %6361 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6332
  %6362 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6332
  %6363 = bitcast float* %6361 to i32*
  %6364 = bitcast float* %6362 to i32*
  br i1 %6360, label %6365, label %6372

; <label>:6365                                    ; preds = %6359
  %6366 = and i32 %6357, 1073741823
  %6367 = add i32 %6347, 20
  %6368 = add i32 %6367, %6366
  %6369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6368, i32 undef)  ; BufferLoad(srv,index,wot)
  %6370 = extractvalue %dx.types.ResRet.i32 %6369, 0
  %6371 = extractvalue %dx.types.ResRet.i32 %6369, 1
  br label %6372

; <label>:6372                                    ; preds = %6365, %6359
  %6373 = phi i32 [ %6370, %6365 ], [ %6281, %6359 ]
  %6374 = phi i32 [ %6371, %6365 ], [ %6282, %6359 ]
  store i32 %6373, i32* %6363, align 4
  store i32 %6374, i32* %6364, align 4
  %6375 = add i32 %6332, 1
  br label %6376

; <label>:6376                                    ; preds = %6372, %6331
  %6377 = phi i32 [ %6332, %6331 ], [ %6375, %6372 ]
  %6378 = add nuw i32 %6333, 1
  %6379 = icmp eq i32 %6378, %6328
  br i1 %6379, label %6380, label %6331

; <label>:6380                                    ; preds = %6376
  br label %6381

; <label>:6381                                    ; preds = %6380, %6325
  %6382 = phi i32 [ %6326, %6325 ], [ %6377, %6380 ]
  %6383 = icmp eq i32 %6382, 1
  %6384 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %6385 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %6383, label %6386, label %6389

; <label>:6386                                    ; preds = %6381
  %6387 = load float, float* %6384, align 4
  %6388 = load float, float* %6385, align 4
  br label %6416

; <label>:6389                                    ; preds = %6381
  %6390 = load float, float* %6384, align 4
  %6391 = load float, float* %6385, align 4
  %6392 = fdiv fast float 1.000000e+00, %6391
  %6393 = fsub fast float %6390, %6392
  %6394 = icmp ugt i32 %6382, 1
  br i1 %6394, label %6395, label %6411

; <label>:6395                                    ; preds = %6389
  br label %6396

; <label>:6396                                    ; preds = %6396, %6395
  %6397 = phi float [ %6406, %6396 ], [ %6393, %6395 ]
  %6398 = phi float [ %6407, %6396 ], [ %6390, %6395 ]
  %6399 = phi i32 [ %6408, %6396 ], [ 1, %6395 ]
  %6400 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6399
  %6401 = load float, float* %6400, align 4
  %6402 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6399
  %6403 = load float, float* %6402, align 4
  %6404 = fdiv fast float 1.000000e+00, %6403
  %6405 = fsub fast float %6401, %6404
  %6406 = call float @dx.op.binary.f32(i32 36, float %6397, float %6405)  ; FMin(a,b)
  %6407 = call float @dx.op.binary.f32(i32 35, float %6398, float %6401)  ; FMax(a,b)
  %6408 = add nuw i32 %6399, 1
  %6409 = icmp eq i32 %6408, %6382
  br i1 %6409, label %6410, label %6396

; <label>:6410                                    ; preds = %6396
  br label %6411

; <label>:6411                                    ; preds = %6410, %6389
  %6412 = phi float [ %6393, %6389 ], [ %6406, %6410 ]
  %6413 = phi float [ %6390, %6389 ], [ %6407, %6410 ]
  %6414 = fsub fast float %6413, %6412
  %6415 = fdiv fast float 1.000000e+00, %6414
  br label %6416

; <label>:6416                                    ; preds = %6411, %6386
  %6417 = phi float [ %6387, %6386 ], [ %6413, %6411 ]
  %6418 = phi float [ %6388, %6386 ], [ %6415, %6411 ]
  %6419 = fadd fast float %6120, %6417
  %6420 = fmul fast float %6419, %6418
  %6421 = call float @dx.op.unary.f32(i32 7, float %6420)  ; Saturate(value)
  %6422 = fmul fast float %6421, 2.000000e+00
  %6423 = fsub fast float 1.000000e+00, %6422
  %6424 = fmul fast float %6258, %6258
  %6425 = fsub fast float %6259, %6424
  %6426 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6425)  ; FMax(a,b)
  %6427 = fdiv fast float 1.000000e+00, %6426
  %6428 = fmul fast float %6259, %6258
  %6429 = fsub fast float %6260, %6428
  %6430 = fsub fast float %6423, %6258
  %6431 = fmul fast float %6423, %6423
  %6432 = fsub fast float %6431, %6259
  %6433 = fmul fast float %6427, %6429
  %6434 = fmul fast float %6433, %6430
  %6435 = fsub fast float %6432, %6434
  %6436 = fmul fast float %6259, %6259
  %6437 = fsub fast float %6261, %6436
  %6438 = fmul fast float %6429, %6429
  %6439 = fmul fast float %6438, %6427
  %6440 = fsub fast float %6437, %6439
  %6441 = fdiv fast float %6435, %6440
  %6442 = fmul fast float %6441, %6429
  %6443 = fsub fast float %6430, %6442
  %6444 = fmul fast float %6443, %6427
  %6445 = fmul fast float %6444, %6258
  %6446 = fsub fast float 1.000000e+00, %6445
  %6447 = fmul fast float %6441, %6259
  %6448 = fsub fast float %6446, %6447
  %6449 = fmul fast float %6444, %6444
  %6450 = fmul fast float %6441, 4.000000e+00
  %6451 = fmul fast float %6450, %6448
  %6452 = fsub fast float %6449, %6451
  %6453 = call float @dx.op.unary.f32(i32 24, float %6452)  ; Sqrt(value)
  %6454 = fcmp fast oge float %6444, 0.000000e+00
  %6455 = fsub fast float -0.000000e+00, %6453
  %6456 = select i1 %6454, float %6455, float %6453
  %6457 = fsub fast float %6456, %6444
  %6458 = fdiv fast float %6457, %6441
  %6459 = fdiv fast float %6448, %6457
  %6460 = fmul fast float %6458, 5.000000e-01
  %6461 = fmul fast float %6459, 2.000000e+00
  %6462 = select i1 %6454, float %6460, float %6461
  %6463 = select i1 %6454, float %6461, float %6460
  %6464 = call float @dx.op.binary.f32(i32 35, float %6462, float %6463)  ; FMax(a,b)
  %6465 = call float @dx.op.binary.f32(i32 36, float %6462, float %6463)  ; FMin(a,b)
  %6466 = fcmp fast ogt float %6423, %6464
  %6467 = fsub fast float %6423, %6465
  %6468 = fsub fast float %6423, %6464
  %6469 = fsub fast float %6464, %6465
  %6470 = select i1 %6466, float %6468, float %6469
  %6471 = fmul float %6467, %6470
  %6472 = select i1 %6466, float %6465, float %6423
  %6473 = fcmp fast ogt float %6423, %6465
  %6474 = fmul fast float %6472, %6464
  %6475 = fadd fast float %6472, %6464
  %6476 = fmul fast float %6475, %6258
  %6477 = fadd fast float %6474, %6259
  %6478 = fsub fast float %6477, %6476
  %6479 = fdiv fast float %6478, %6471
  %6480 = select i1 %6473, float %6479, float 0.000000e+00
  %6481 = fsub fast float 1.000000e+00, %6480
  %6482 = select i1 %6466, float %6481, float %6480
  %6483 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6243, 3
  %6485 = fmul fast float %6484, %6483
  %6486 = fsub fast float 1.000000e+00, %6485
  br label %6487

; <label>:6487                                    ; preds = %6416, %6128, %6093, %6089, %6053
  %6488 = phi float [ 1.000000e+00, %6053 ], [ %6486, %6416 ], [ 1.000000e+00, %6093 ], [ 1.000000e+00, %6128 ], [ 1.000000e+00, %6089 ]
  %6489 = fcmp fast ogt float %6085, 0.000000e+00
  br i1 %6489, label %6490, label %6498, !dx.controlflow.hints !116

; <label>:6490                                    ; preds = %6487
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 2
  %6493 = fadd fast float %6492, %5966
  %6494 = call float @dx.op.binary.f32(i32 35, float %6493, float 0.000000e+00)  ; FMax(a,b)
  %6495 = fadd fast float %6494, 0x3F10000000000000
  %6496 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %5984, float %5985, float undef, float undef, i32 0, i32 0, i32 undef, float %6495)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6497 = extractvalue %dx.types.ResRet.f32 %6496, 0
  br label %6498

; <label>:6498                                    ; preds = %6490, %6487
  %6499 = phi float [ %6497, %6490 ], [ 1.000000e+00, %6487 ]
  %6500 = fcmp fast ogt float %6083, 0.000000e+00
  br i1 %6500, label %6501, label %6509, !dx.controlflow.hints !117

; <label>:6501                                    ; preds = %6498
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6504 = fadd fast float %6503, %5966
  %6505 = call float @dx.op.binary.f32(i32 35, float %6504, float 0.000000e+00)  ; FMax(a,b)
  %6506 = fadd fast float %6505, 0x3F10000000000000
  %6507 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %5976, float %5977, float undef, float undef, i32 0, i32 0, i32 undef, float %6506)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6508 = extractvalue %dx.types.ResRet.f32 %6507, 0
  br label %6509

; <label>:6509                                    ; preds = %6501, %6498
  %6510 = phi float [ %6508, %6501 ], [ 1.000000e+00, %6498 ]
  %6511 = fcmp fast ogt float %6082, 0.000000e+00
  br i1 %6511, label %6512, label %6524, !dx.controlflow.hints !118

; <label>:6512                                    ; preds = %6509
  %6513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.f32 %6513, 0
  %6515 = fadd fast float %6514, %5966
  %6516 = call float @dx.op.binary.f32(i32 35, float %6515, float 0.000000e+00)  ; FMax(a,b)
  %6517 = fadd fast float %6516, 0x3F10000000000000
  br i1 %5969, label %6518, label %6521, !dx.controlflow.hints !119

; <label>:6518                                    ; preds = %6512
  %6519 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %5958, float %5962, float undef, float undef, i32 0, i32 0, i32 undef, float %6517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6520 = extractvalue %dx.types.ResRet.f32 %6519, 0
  br label %6524

; <label>:6521                                    ; preds = %6512
  %6522 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %5958, float %5962, float undef, float undef, i32 0, i32 0, i32 undef, float %6517)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6523 = extractvalue %dx.types.ResRet.f32 %6522, 0
  br label %6524

; <label>:6524                                    ; preds = %6521, %6518, %6509
  %6525 = phi float [ %6520, %6518 ], [ %6523, %6521 ], [ 1.000000e+00, %6509 ]
  %6526 = fsub fast float %6499, %6488
  %6527 = fmul fast float %6526, %6055
  %6528 = fadd fast float %6527, %6488
  %6529 = fsub fast float %6510, %6528
  %6530 = fmul fast float %6529, %6054
  %6531 = fadd fast float %6530, %6528
  %6532 = fsub fast float %6525, %6531
  %6533 = fmul fast float %6532, %6082
  %6534 = fadd fast float %6533, %6531
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 2
  %6537 = fcmp fast ogt float %6536, 0.000000e+00
  br i1 %6537, label %6538, label %6578, !dx.controlflow.hints !120

; <label>:6538                                    ; preds = %6524
  %6539 = fcmp fast ugt float %6536, 0.000000e+00
  br i1 %6539, label %6540, label %6575

; <label>:6540                                    ; preds = %6538
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.CBufRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.CBufRet.f32 %6541, 2
  %6545 = extractvalue %dx.types.CBufRet.f32 %6541, 3
  %6546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6546, 0
  %6548 = extractvalue %dx.types.CBufRet.f32 %6546, 1
  %6549 = extractvalue %dx.types.CBufRet.f32 %6546, 2
  %6550 = extractvalue %dx.types.CBufRet.f32 %6546, 3
  %6551 = extractvalue %dx.types.CBufRet.f32 %6535, 0
  %6552 = extractvalue %dx.types.CBufRet.f32 %6535, 1
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 0
  %6555 = extractvalue %dx.types.CBufRet.f32 %6553, 1
  %6556 = extractvalue %dx.types.CBufRet.f32 %6553, 2
  %6557 = fadd fast float %6554, %5935
  %6558 = fadd fast float %6555, %5936
  %6559 = fadd fast float %6556, %5937
  %6560 = fmul fast float %6557, %6542
  %6561 = call float @dx.op.tertiary.f32(i32 46, float %6543, float %6558, float %6560)  ; FMad(a,b,c)
  %6562 = call float @dx.op.tertiary.f32(i32 46, float %6544, float %6559, float %6561)  ; FMad(a,b,c)
  %6563 = fadd fast float %6562, %6545
  %6564 = fmul fast float %6557, %6547
  %6565 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6558, float %6564)  ; FMad(a,b,c)
  %6566 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6559, float %6565)  ; FMad(a,b,c)
  %6567 = fadd fast float %6566, %6550
  %6568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6563, float %6567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6569 = extractvalue %dx.types.ResRet.f32 %6568, 0
  %6570 = fmul fast float %6569, %6552
  %6571 = fadd fast float %6570, %6551
  %6572 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  %6573 = fmul fast float %6572, %6536
  %6574 = fsub fast float 1.000000e+00, %6573
  br label %6575

; <label>:6575                                    ; preds = %6540, %6538
  %6576 = phi float [ %6574, %6540 ], [ 1.000000e+00, %6538 ]
  %6577 = fmul fast float %6576, %6534
  br label %6578

; <label>:6578                                    ; preds = %6575, %6524, %5915
  %6579 = phi float [ 1.000000e+00, %5915 ], [ %6577, %6575 ], [ %6534, %6524 ]
  %6580 = call float @dx.op.binary.f32(i32 36, float %6579, float %6579)  ; FMin(a,b)
  %6581 = call float @dx.op.binary.f32(i32 36, float %6579, float %6580)  ; FMin(a,b)
  %6582 = fcmp fast ogt float %6581, 0.000000e+00
  br i1 %6582, label %6583, label %6743, !dx.controlflow.hints !121

; <label>:6583                                    ; preds = %6578
  %6584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6585 = extractvalue %dx.types.CBufRet.f32 %6584, 0
  %6586 = extractvalue %dx.types.CBufRet.f32 %6584, 1
  %6587 = extractvalue %dx.types.CBufRet.f32 %6584, 2
  %6588 = extractvalue %dx.types.CBufRet.f32 %6584, 3
  %6589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6589, 0
  %6591 = extractvalue %dx.types.CBufRet.f32 %6589, 1
  %6592 = extractvalue %dx.types.CBufRet.f32 %6589, 2
  %6593 = extractvalue %dx.types.CBufRet.f32 %6589, 3
  %6594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6595 = extractvalue %dx.types.CBufRet.f32 %6594, 0
  %6596 = extractvalue %dx.types.CBufRet.f32 %6594, 1
  %6597 = extractvalue %dx.types.CBufRet.f32 %6594, 2
  %6598 = extractvalue %dx.types.CBufRet.f32 %6594, 3
  %6599 = fmul fast float %6585, %5935
  %6600 = call float @dx.op.tertiary.f32(i32 46, float %5936, float %6586, float %6599)  ; FMad(a,b,c)
  %6601 = call float @dx.op.tertiary.f32(i32 46, float %5937, float %6587, float %6600)  ; FMad(a,b,c)
  %6602 = fadd fast float %6601, %6588
  %6603 = fmul fast float %6590, %5935
  %6604 = call float @dx.op.tertiary.f32(i32 46, float %5936, float %6591, float %6603)  ; FMad(a,b,c)
  %6605 = call float @dx.op.tertiary.f32(i32 46, float %5937, float %6592, float %6604)  ; FMad(a,b,c)
  %6606 = fadd fast float %6605, %6593
  %6607 = fmul fast float %6595, %5935
  %6608 = call float @dx.op.tertiary.f32(i32 46, float %5936, float %6596, float %6607)  ; FMad(a,b,c)
  %6609 = call float @dx.op.tertiary.f32(i32 46, float %5937, float %6597, float %6608)  ; FMad(a,b,c)
  %6610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6611 = extractvalue %dx.types.CBufRet.f32 %6610, 0
  %6612 = extractvalue %dx.types.CBufRet.f32 %6610, 1
  %6613 = extractvalue %dx.types.CBufRet.f32 %6610, 3
  %6614 = fmul fast float %6613, %6602
  %6615 = fmul fast float %6613, %6606
  %6616 = fadd fast float %6614, %6611
  %6617 = fadd fast float %6615, %6612
  %6618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6619 = extractvalue %dx.types.CBufRet.f32 %6618, 0
  %6620 = extractvalue %dx.types.CBufRet.f32 %6618, 1
  %6621 = fsub fast float %6616, %6619
  %6622 = fsub fast float %6617, %6620
  %6623 = fcmp fast olt float %6621, 0.000000e+00
  %6624 = fcmp fast olt float %6622, 0.000000e+00
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 0
  %6627 = extractvalue %dx.types.CBufRet.f32 %6625, 1
  %6628 = extractvalue %dx.types.CBufRet.f32 %6625, 2
  %6629 = extractvalue %dx.types.CBufRet.f32 %6625, 3
  %6630 = select i1 %6623, float %6626, float %6628
  %6631 = select i1 %6624, float %6627, float %6629
  %6632 = fmul fast float %6630, %6621
  %6633 = fmul fast float %6631, %6622
  %6634 = call float @dx.op.unary.f32(i32 6, float %6632)  ; FAbs(value)
  %6635 = call float @dx.op.unary.f32(i32 6, float %6633)  ; FAbs(value)
  %6636 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %6637 = call float @dx.op.binary.f32(i32 35, float %6634, float %6635)  ; FMax(a,b)
  %6638 = fsub fast float %6636, %6637
  %6639 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  %6640 = fcmp fast ogt float %6639, 0.000000e+00
  br i1 %6640, label %6641, label %6682, !dx.controlflow.hints !122

; <label>:6641                                    ; preds = %6583
  %6642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6616, float %6617, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 1
  %6644 = fcmp fast ogt float %6643, 0.000000e+00
  br i1 %6644, label %6645, label %6677

; <label>:6645                                    ; preds = %6641
  %6646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6616, float %6617, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6647 = extractvalue %dx.types.ResRet.f32 %6646, 0
  %6648 = extractvalue %dx.types.ResRet.f32 %6646, 1
  %6649 = extractvalue %dx.types.ResRet.f32 %6646, 2
  %6650 = extractvalue %dx.types.ResRet.f32 %6646, 3
  %6651 = fsub fast float 1.000000e+00, %6598
  %6652 = fsub fast float %6651, %6609
  %6653 = fmul fast float %6652, 0x400921FB60000000
  %6654 = fadd fast float %6653, 0x3FF921FB60000000
  %6655 = call float @dx.op.unary.f32(i32 13, float %6654)  ; Sin(value)
  %6656 = fadd fast float %6655, -1.000000e+00
  %6657 = fmul fast float %6656, 0x3FD45F3060000000
  %6658 = fmul fast float %6652, 0x401921FB60000000
  %6659 = fadd fast float %6658, 0x400921FB60000000
  %6660 = call float @dx.op.unary.f32(i32 13, float %6659)  ; Sin(value)
  %6661 = fadd fast float %6660, 0x3E7777A5C0000000
  %6662 = fmul fast float %6661, 0x3FC45F3060000000
  %6663 = fmul fast float %6652, 0x4022D97C80000000
  %6664 = fadd fast float %6663, 0x4012D97C80000000
  %6665 = call float @dx.op.unary.f32(i32 13, float %6664)  ; Sin(value)
  %6666 = fadd fast float %6665, 1.000000e+00
  %6667 = fmul fast float %6666, 0x3FBB2995E0000000
  %6668 = fmul fast float %6652, 0x402921FB60000000
  %6669 = fadd fast float %6668, 0x401921FB60000000
  %6670 = call float @dx.op.unary.f32(i32 13, float %6669)  ; Sin(value)
  %6671 = fadd fast float %6670, 0xBE8777A5C0000000
  %6672 = fmul fast float %6671, 0x3FB45F3060000000
  %6673 = call float @dx.op.dot4.f32(i32 56, float %6647, float %6648, float %6649, float %6650, float %6657, float %6662, float %6667, float %6672)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6674 = fmul fast float %6673, 0xBFF7154760000000
  %6675 = call float @dx.op.unary.f32(i32 21, float %6674)  ; Exp(value)
  %6676 = call float @dx.op.unary.f32(i32 7, float %6675)  ; Saturate(value)
  br label %6677

; <label>:6677                                    ; preds = %6645, %6641
  %6678 = phi float [ %6676, %6645 ], [ 1.000000e+00, %6641 ]
  %6679 = fadd fast float %6678, -1.000000e+00
  %6680 = fmul fast float %6679, %6639
  %6681 = fadd fast float %6680, 1.000000e+00
  br label %6682

; <label>:6682                                    ; preds = %6677, %6583
  %6683 = phi float [ %6681, %6677 ], [ 1.000000e+00, %6583 ]
  %6684 = fmul fast float %6683, %6579
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6687 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6688 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6689 = fadd fast float %6686, %193
  %6690 = fadd fast float %6687, %194
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6693 = fsub fast float -0.000000e+00, %6689
  %6694 = fsub fast float -0.000000e+00, %6690
  %6695 = fsub fast float %5662, %6688
  %6696 = fadd fast float %6695, %6692
  %6697 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6693, float %6694, float %6696)  ; Dot3(ax,ay,az,bx,by,bz)
  %6698 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5916, float %5917, float %5918)  ; Dot3(ax,ay,az,bx,by,bz)
  %6699 = fdiv fast float 1.000000e+00, %6698
  %6700 = fmul fast float %6699, %6697
  %6701 = fmul fast float %5916, %6700
  %6702 = fmul fast float %5917, %6700
  %6703 = fadd fast float %6701, %6689
  %6704 = fadd fast float %6702, %6690
  %6705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6705, 0
  %6707 = extractvalue %dx.types.CBufRet.f32 %6705, 1
  %6708 = fsub fast float %6703, %6706
  %6709 = fsub fast float %6704, %6707
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 2
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 3
  %6713 = fmul fast float %6708, %6711
  %6714 = fmul fast float %6709, %6712
  %6715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.i32 %6715, 3
  %6717 = icmp eq i32 %6716, 0
  br i1 %6717, label %6723, label %6718

; <label>:6718                                    ; preds = %6682
  %6719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6713, float %6714, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6720 = extractvalue %dx.types.ResRet.f32 %6719, 0
  %6721 = extractvalue %dx.types.ResRet.f32 %6719, 1
  %6722 = extractvalue %dx.types.ResRet.f32 %6719, 2
  br label %6728

; <label>:6723                                    ; preds = %6682
  %6724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6713, float %6714, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6725 = extractvalue %dx.types.ResRet.f32 %6724, 0
  %6726 = extractvalue %dx.types.ResRet.f32 %6724, 1
  %6727 = extractvalue %dx.types.ResRet.f32 %6724, 2
  br label %6728

; <label>:6728                                    ; preds = %6723, %6718
  %6729 = phi float [ %6720, %6718 ], [ %6725, %6723 ]
  %6730 = phi float [ %6721, %6718 ], [ %6726, %6723 ]
  %6731 = phi float [ %6722, %6718 ], [ %6727, %6723 ]
  %6732 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6733 = fmul fast float %6732, %6729
  %6734 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6735 = fsub fast float %6700, %6734
  %6736 = fsub fast float %6735, %6733
  %6737 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6736)  ; FMax(a,b)
  %6738 = fmul fast float %6737, %6730
  %6739 = call float @dx.op.binary.f32(i32 36, float %6731, float %6738)  ; FMin(a,b)
  %6740 = fmul fast float %6739, 0xBFF7154760000000
  %6741 = call float @dx.op.unary.f32(i32 21, float %6740)  ; Exp(value)
  %6742 = fmul fast float %6684, %6741
  br label %6743

; <label>:6743                                    ; preds = %6728, %6578
  %6744 = phi float [ %6742, %6728 ], [ %6579, %6578 ]
  %6745 = call float @dx.op.binary.f32(i32 36, float %6744, float %6744)  ; FMin(a,b)
  %6746 = call float @dx.op.binary.f32(i32 36, float %6744, float %6745)  ; FMin(a,b)
  %6747 = fcmp fast ogt float %6746, 0.000000e+00
  br i1 %6747, label %6748, label %7011, !dx.controlflow.hints !123

; <label>:6748                                    ; preds = %6743
  %6749 = fmul fast float %6744, %5927
  %6750 = fmul fast float %6744, %5928
  %6751 = fmul fast float %6744, %5929
  %6752 = fsub fast float %195, %4858
  %6753 = fcmp fast ogt float %6752, 0.000000e+00
  %6754 = fmul fast float %5916, 5.120000e+02
  %6755 = fmul fast float %5917, 5.120000e+02
  %6756 = fmul fast float %5918, 5.120000e+02
  %6757 = fadd fast float %6756, %195
  %6758 = fsub fast float %4858, %6757
  %6759 = fmul fast float %6758, 2.000000e+00
  %6760 = fadd fast float %6759, %6757
  %6761 = select i1 %6753, float %6760, float %6757
  %6762 = fsub fast float %6761, %195
  %6763 = call float @dx.op.dot3.f32(i32 55, float %6754, float %6755, float %6762, float %6754, float %6755, float %6762)  ; Dot3(ax,ay,az,bx,by,bz)
  %6764 = call float @dx.op.unary.f32(i32 25, float %6763)  ; Rsqrt(value)
  %6765 = fmul fast float %6764, %6754
  %6766 = fmul fast float %6764, %6755
  %6767 = fmul fast float %6764, %6762
  %6768 = fsub fast float %4858, %195
  %6769 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6768)  ; Dot3(ax,ay,az,bx,by,bz)
  %6770 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6765, float %6766, float %6767)  ; Dot3(ax,ay,az,bx,by,bz)
  %6771 = fdiv fast float 1.000000e+00, %6770
  %6772 = fmul fast float %6771, %6769
  %6773 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6752, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6774 = fcmp fast ogt float %6773, 0.000000e+00
  %6775 = fcmp fast olt float %6773, 0.000000e+00
  %6776 = zext i1 %6774 to i32
  %6777 = zext i1 %6775 to i32
  %6778 = sub nsw i32 %6776, %6777
  %6779 = sitofp i32 %6778 to float
  %6780 = fsub fast float %6761, %4858
  %6781 = call float @dx.op.dot3.f32(i32 55, float %6754, float %6755, float %6780, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6782 = fcmp fast ogt float %6781, 0.000000e+00
  %6783 = fcmp fast olt float %6781, 0.000000e+00
  %6784 = zext i1 %6782 to i32
  %6785 = zext i1 %6783 to i32
  %6786 = sub nsw i32 %6784, %6785
  %6787 = sitofp i32 %6786 to float
  %6788 = fcmp fast une float %6779, %6787
  br i1 %6788, label %6789, label %6799

; <label>:6789                                    ; preds = %6748
  %6790 = fmul fast float %6772, %6767
  %6791 = fmul fast float %6772, %6766
  %6792 = fmul fast float %6772, %6765
  %6793 = fmul fast float %6792, %6792
  %6794 = fmul fast float %6791, %6791
  %6795 = fadd fast float %6793, %6794
  %6796 = fmul fast float %6790, %6790
  %6797 = fadd fast float %6795, %6796
  %6798 = call float @dx.op.unary.f32(i32 24, float %6797)  ; Sqrt(value)
  br label %6809

; <label>:6799                                    ; preds = %6748
  %6800 = icmp slt i32 %6778, 0
  br i1 %6800, label %6801, label %6809

; <label>:6801                                    ; preds = %6799
  %6802 = fsub fast float %195, %6761
  %6803 = fmul fast float %6754, %6754
  %6804 = fmul fast float %6755, %6755
  %6805 = fadd fast float %6803, %6804
  %6806 = fmul fast float %6802, %6802
  %6807 = fadd fast float %6805, %6806
  %6808 = call float @dx.op.unary.f32(i32 24, float %6807)  ; Sqrt(value)
  br label %6809

; <label>:6809                                    ; preds = %6801, %6799, %6789
  %6810 = phi float [ %6798, %6789 ], [ %6808, %6801 ], [ 0.000000e+00, %6799 ]
  %6811 = fsub fast float -0.000000e+00, %6810
  %6812 = select i1 %6753, float -0.000000e+00, float %6811
  %6813 = fmul fast float %4859, 0x3FF7154760000000
  %6814 = fmul fast float %6813, %6812
  %6815 = fmul fast float %4860, 0x3FF7154760000000
  %6816 = fmul fast float %6815, %6812
  %6817 = fmul fast float %4861, 0x3FF7154760000000
  %6818 = fmul fast float %6817, %6812
  %6819 = call float @dx.op.unary.f32(i32 21, float %6814)  ; Exp(value)
  %6820 = call float @dx.op.unary.f32(i32 21, float %6816)  ; Exp(value)
  %6821 = call float @dx.op.unary.f32(i32 21, float %6818)  ; Exp(value)
  %6822 = call float @dx.op.unary.f32(i32 7, float %6819)  ; Saturate(value)
  %6823 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  %6824 = call float @dx.op.unary.f32(i32 7, float %6821)  ; Saturate(value)
  %6825 = fmul fast float %6749, %6822
  %6826 = fmul fast float %6750, %6823
  %6827 = fmul fast float %6751, %6824
  %6828 = fsub fast float %5916, %5650
  %6829 = fsub fast float %5917, %5649
  %6830 = fsub fast float %5918, %5648
  %6831 = call float @dx.op.dot3.f32(i32 55, float %6828, float %6829, float %6830, float %6828, float %6829, float %6830)  ; Dot3(ax,ay,az,bx,by,bz)
  %6832 = call float @dx.op.unary.f32(i32 25, float %6831)  ; Rsqrt(value)
  %6833 = fmul fast float %6832, %6828
  %6834 = fmul fast float %6832, %6829
  %6835 = fmul fast float %6832, %6830
  %6836 = call float @dx.op.dot3.f32(i32 55, float %5916, float %5917, float %5918, float %5657, float %5658, float %5659)  ; Dot3(ax,ay,az,bx,by,bz)
  %6837 = call float @dx.op.dot3.f32(i32 55, float %5647, float %5646, float %5645, float %6833, float %6834, float %6835)  ; Dot3(ax,ay,az,bx,by,bz)
  %6838 = call float @dx.op.unary.f32(i32 7, float %6836)  ; Saturate(value)
  %6839 = fmul fast float %6838, %6838
  %6840 = fmul fast float %6839, %5678
  %6841 = call float @dx.op.unary.f32(i32 7, float %6840)  ; Saturate(value)
  %6842 = fmul fast float %6841, %6838
  %6843 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float %6833, float %6834, float %6835)  ; Dot3(ax,ay,az,bx,by,bz)
  %6844 = fmul fast float %6843, %6843
  %6845 = call float @dx.op.unary.f32(i32 6, float %6836)  ; FAbs(value)
  %6846 = fsub fast float 1.000000e+00, %5660
  %6847 = call float @dx.op.binary.f32(i32 35, float %6846, float 0x3F847AE140000000)  ; FMax(a,b)
  %6848 = fmul fast float %6847, %6847
  %6849 = fmul fast float %6848, %6848
  %6850 = fsub fast float 1.000000e+00, %6849
  %6851 = fmul fast float %5665, %5665
  %6852 = fmul fast float %6851, %6850
  %6853 = fadd fast float %6852, %6849
  %6854 = bitcast float %6853 to i32
  %6855 = ashr i32 %6854, 1
  %6856 = add nsw i32 %6855, 532487669
  %6857 = bitcast i32 %6856 to float
  %6858 = fadd fast float %6857, %5665
  %6859 = fmul fast float %6849, %6844
  %6860 = fsub fast float 1.000000e+00, %6844
  %6861 = fadd fast float %6860, %6859
  %6862 = fmul fast float %6845, %6845
  %6863 = fmul fast float %6862, %6850
  %6864 = fadd fast float %6863, %6849
  %6865 = bitcast float %6864 to i32
  %6866 = ashr i32 %6865, 1
  %6867 = add nsw i32 %6866, 532487669
  %6868 = bitcast i32 %6867 to float
  %6869 = fadd fast float %6868, %6845
  %6870 = fmul fast float %6861, %6861
  %6871 = fmul fast float %6870, %6858
  %6872 = fmul fast float %6871, %6869
  %6873 = fdiv fast float 0x3FF0A00000000000, %6872
  %6874 = fmul fast float %6873, %6849
  %6875 = fmul fast float %5778, 0x3FF9999980000000
  %6876 = fsub fast float 5.000000e+00, %6875
  %6877 = call float @dx.op.unary.f32(i32 6, float %6837)  ; FAbs(value)
  %6878 = fsub fast float 1.000000e+00, %6877
  %6879 = fmul fast float %5778, 0x41D9660740000000
  %6880 = fadd fast float %6879, 0xC1EFBF8940000000
  %6881 = bitcast float %6878 to i32
  %6882 = sitofp i32 %6881 to float
  %6883 = fmul fast float %6882, %6876
  %6884 = fadd fast float %6880, %6883
  %6885 = fptosi float %6884 to i32
  %6886 = bitcast i32 %6885 to float
  %6887 = fsub fast float 1.000000e+00, %5651
  %6888 = fsub fast float 1.000000e+00, %5652
  %6889 = fsub fast float 1.000000e+00, %5663
  %6890 = fmul fast float %6886, %6887
  %6891 = fmul fast float %6886, %6888
  %6892 = fmul fast float %6886, %6889
  %6893 = fadd fast float %6890, %5651
  %6894 = fadd fast float %6891, %5652
  %6895 = fadd fast float %6892, %5663
  br i1 %5801, label %6896, label %6919

; <label>:6896                                    ; preds = %6809
  %6897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4454, float %6877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6898 = extractvalue %dx.types.ResRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.ResRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.ResRet.f32 %6897, 2
  %6901 = fadd fast float %6898, -5.000000e-01
  %6902 = fadd fast float %6899, -5.000000e-01
  %6903 = fadd fast float %6900, -5.000000e-01
  %6904 = fmul fast float %5651, 4.000000e+00
  %6905 = fmul fast float %6904, %6887
  %6906 = fmul fast float %6905, %6901
  %6907 = fmul fast float %5652, 4.000000e+00
  %6908 = fmul fast float %6907, %6888
  %6909 = fmul fast float %6908, %6902
  %6910 = fmul fast float %5663, 4.000000e+00
  %6911 = fmul fast float %6910, %6889
  %6912 = fmul fast float %6911, %6903
  %6913 = fadd fast float %6906, %6893
  %6914 = fadd fast float %6909, %6894
  %6915 = fadd fast float %6912, %6895
  %6916 = call float @dx.op.unary.f32(i32 7, float %6913)  ; Saturate(value)
  %6917 = call float @dx.op.unary.f32(i32 7, float %6914)  ; Saturate(value)
  %6918 = call float @dx.op.unary.f32(i32 7, float %6915)  ; Saturate(value)
  br label %6919

; <label>:6919                                    ; preds = %6896, %6809
  %6920 = phi float [ %6916, %6896 ], [ %6893, %6809 ]
  %6921 = phi float [ %6917, %6896 ], [ %6894, %6809 ]
  %6922 = phi float [ %6918, %6896 ], [ %6895, %6809 ]
  %6923 = fmul fast float %6836, 9.843750e-01
  %6924 = fadd fast float %6923, 7.812500e-03
  %6925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %6924, float %5782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6926 = extractvalue %dx.types.ResRet.f32 %6925, 0
  %6927 = extractvalue %dx.types.ResRet.f32 %6925, 1
  %6928 = extractvalue %dx.types.ResRet.f32 %6925, 2
  %6929 = extractvalue %dx.types.ResRet.f32 %6925, 3
  %6930 = fsub fast float %6928, %6926
  %6931 = fsub fast float %6929, %6927
  %6932 = fmul fast float %6930, %5788
  %6933 = fmul fast float %6931, %5788
  %6934 = fadd fast float %6932, %6926
  %6935 = fadd fast float %6933, %6927
  %6936 = fmul fast float %6934, %5651
  %6937 = fmul fast float %6934, %5652
  %6938 = fmul fast float %6934, %5663
  %6939 = fadd fast float %6936, %6935
  %6940 = fadd fast float %6937, %6935
  %6941 = fadd fast float %6938, %6935
  br i1 %5801, label %6942, label %6965

; <label>:6942                                    ; preds = %6919
  %6943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4454, float %6836, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6944 = extractvalue %dx.types.ResRet.f32 %6943, 0
  %6945 = extractvalue %dx.types.ResRet.f32 %6943, 1
  %6946 = extractvalue %dx.types.ResRet.f32 %6943, 2
  %6947 = fadd fast float %6944, -5.000000e-01
  %6948 = fadd fast float %6945, -5.000000e-01
  %6949 = fadd fast float %6946, -5.000000e-01
  %6950 = fmul fast float %5651, 4.000000e+00
  %6951 = fmul fast float %6950, %6887
  %6952 = fmul fast float %6951, %6947
  %6953 = fmul fast float %5652, 4.000000e+00
  %6954 = fmul fast float %6953, %6888
  %6955 = fmul fast float %6954, %6948
  %6956 = fmul fast float %5663, 4.000000e+00
  %6957 = fmul fast float %6956, %6889
  %6958 = fmul fast float %6957, %6949
  %6959 = fadd fast float %6952, %6939
  %6960 = fadd fast float %6955, %6940
  %6961 = fadd fast float %6958, %6941
  %6962 = call float @dx.op.unary.f32(i32 7, float %6959)  ; Saturate(value)
  %6963 = call float @dx.op.unary.f32(i32 7, float %6960)  ; Saturate(value)
  %6964 = call float @dx.op.unary.f32(i32 7, float %6961)  ; Saturate(value)
  br label %6965

; <label>:6965                                    ; preds = %6942, %6919
  %6966 = phi float [ %6962, %6942 ], [ %6939, %6919 ]
  %6967 = phi float [ %6963, %6942 ], [ %6940, %6919 ]
  %6968 = phi float [ %6964, %6942 ], [ %6941, %6919 ]
  %6969 = call float @dx.op.binary.f32(i32 35, float %6967, float %6968)  ; FMax(a,b)
  %6970 = call float @dx.op.binary.f32(i32 35, float %6966, float %6969)  ; FMax(a,b)
  %6971 = fsub fast float 1.000000e+00, %6970
  %6972 = fmul fast float %6920, %6874
  %6973 = fmul fast float %6921, %6874
  %6974 = fmul fast float %6922, %6874
  %6975 = fsub fast float 1.000000e+00, %6837
  %6976 = bitcast float %6975 to i32
  %6977 = sitofp i32 %6976 to float
  %6978 = fmul fast float %6977, 5.000000e+00
  %6979 = fadd fast float %6978, 0xC1EFBF8940000000
  %6980 = fptosi float %6979 to i32
  %6981 = bitcast i32 %6980 to float
  %6982 = fmul fast float %6981, %4455
  %6983 = fmul fast float %6971, %6982
  %6984 = fmul fast float %6983, %5851
  %6985 = fmul fast float %6983, %5852
  %6986 = fmul fast float %6983, %5853
  %6987 = fadd fast float %6984, %6972
  %6988 = fadd fast float %6985, %6973
  %6989 = fadd fast float %6986, %6974
  %6990 = fmul fast float %6842, %6825
  %6991 = fmul fast float %6990, %6971
  %6992 = fmul fast float %6842, %6826
  %6993 = fmul fast float %6992, %6971
  %6994 = fmul fast float %6842, %6827
  %6995 = fmul fast float %6994, %6971
  %6996 = fmul fast float %6990, %6987
  %6997 = fmul fast float %6992, %6988
  %6998 = fmul fast float %6994, %6989
  %6999 = fadd fast float %6991, %5835
  %7000 = fmul fast float %6999, %4451
  %7001 = fadd fast float %6993, %5836
  %7002 = fmul fast float %7001, %4451
  %7003 = fadd fast float %6995, %5837
  %7004 = fmul fast float %7003, %4451
  %7005 = fadd fast float %6996, %5904
  %7006 = fmul fast float %7005, %4451
  %7007 = fadd fast float %6997, %5907
  %7008 = fmul fast float %7007, %4451
  %7009 = fadd fast float %6998, %5910
  %7010 = fmul fast float %7009, %4451
  br label %7011

; <label>:7011                                    ; preds = %6965, %6743, %5828
  %7012 = phi float [ %5905, %5828 ], [ %5905, %6743 ], [ %7006, %6965 ]
  %7013 = phi float [ %5908, %5828 ], [ %5908, %6743 ], [ %7008, %6965 ]
  %7014 = phi float [ %5911, %5828 ], [ %5911, %6743 ], [ %7010, %6965 ]
  %7015 = phi float [ %5900, %5828 ], [ %5900, %6743 ], [ %7000, %6965 ]
  %7016 = phi float [ %5901, %5828 ], [ %5901, %6743 ], [ %7002, %6965 ]
  %7017 = phi float [ %5902, %5828 ], [ %5902, %6743 ], [ %7004, %6965 ]
  %7018 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7019 = extractvalue %dx.types.CBufRet.i32 %7018, 0
  %7020 = icmp eq i32 %7019, 0
  br i1 %7020, label %7653, label %7021

; <label>:7021                                    ; preds = %7011
  %7022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.f32 %7022, 2
  %7024 = extractvalue %dx.types.CBufRet.f32 %7022, 3
  %7025 = fmul fast float %7023, %106
  %7026 = fmul fast float %7024, %107
  %7027 = fptoui float %7025 to i32
  %7028 = fptoui float %7026 to i32
  %7029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7030 = extractvalue %dx.types.CBufRet.f32 %7029, 0
  %7031 = extractvalue %dx.types.CBufRet.f32 %7029, 2
  %7032 = extractvalue %dx.types.CBufRet.f32 %7029, 3
  %7033 = fadd fast float %97, -4.000000e+00
  %7034 = call float @dx.op.binary.f32(i32 35, float %7033, float 0.000000e+00)  ; FMax(a,b)
  %7035 = fadd fast float %7034, %7030
  %7036 = fmul fast float %7035, %7031
  %7037 = call float @dx.op.unary.f32(i32 23, float %7036)  ; Log(value)
  %7038 = fmul fast float %7037, %7032
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 2
  %7041 = fmul fast float %7038, %7040
  %7042 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  %7043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7044 = extractvalue %dx.types.CBufRet.i32 %7043, 1
  %7045 = add i32 %7044, -1
  %7046 = uitofp i32 %7044 to float
  %7047 = fmul fast float %7046, %7042
  %7048 = fptoui float %7047 to i32
  %7049 = call i32 @dx.op.binary.i32(i32 40, i32 %7048, i32 %7045)  ; UMin(a,b)
  %7050 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.i32 %7050, 2
  %7052 = extractvalue %dx.types.CBufRet.i32 %7050, 3
  %7053 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7028, i32 %7051, i32 %7027)  ; UMad(a,b,c)
  %7054 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7049, i32 %7052, i32 %7053)  ; UMad(a,b,c)
  %7055 = add nsw i32 %7019, -1
  %7056 = call i32 @dx.op.binary.i32(i32 37, i32 %7055, i32 0)  ; IMax(a,b)
  %7057 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %7058 = fptoui float %7057 to i32
  %7059 = lshr i32 %7058, 5
  %7060 = call i32 @dx.op.binary.i32(i32 40, i32 %7059, i32 8191)  ; UMin(a,b)
  %7061 = shl i32 %7060, 2
  %7062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7061, i32 undef)  ; BufferLoad(srv,index,wot)
  %7063 = extractvalue %dx.types.ResRet.i32 %7062, 0
  %7064 = lshr i32 %7063, 16
  %7065 = and i32 %7063, 65535
  %7066 = lshr i32 %7063, 21
  %7067 = lshr i32 %7065, 5
  %7068 = call i32 @dx.op.binary.i32(i32 40, i32 %7067, i32 %7056)  ; UMin(a,b)
  %7069 = icmp ugt i32 %7066, %7068
  br i1 %7069, label %7653, label %7070

; <label>:7070                                    ; preds = %7021
  br label %7071

; <label>:7071                                    ; preds = %7643, %7070
  %7072 = phi i32 [ %7650, %7643 ], [ %7066, %7070 ]
  %7073 = phi float [ %7644, %7643 ], [ %7012, %7070 ]
  %7074 = phi float [ %7645, %7643 ], [ %7013, %7070 ]
  %7075 = phi float [ %7646, %7643 ], [ %7014, %7070 ]
  %7076 = phi float [ %7647, %7643 ], [ %7015, %7070 ]
  %7077 = phi float [ %7648, %7643 ], [ %7016, %7070 ]
  %7078 = phi float [ %7649, %7643 ], [ %7017, %7070 ]
  %7079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7080 = extractvalue %dx.types.CBufRet.i32 %7079, 0
  %7081 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7054, i32 %7080, i32 %7072)  ; UMad(a,b,c)
  %7082 = shl i32 %7081, 2
  %7083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7082, i32 undef)  ; BufferLoad(srv,index,wot)
  %7084 = extractvalue %dx.types.ResRet.i32 %7083, 0
  %7085 = shl i32 %7072, 5
  %7086 = sub nsw i32 %7064, %7085
  %7087 = call i32 @dx.op.binary.i32(i32 37, i32 %7086, i32 0)  ; IMax(a,b)
  %7088 = call i32 @dx.op.binary.i32(i32 38, i32 %7087, i32 31)  ; IMin(a,b)
  %7089 = sub nsw i32 1, %7064
  %7090 = add nsw i32 %7089, %7065
  %7091 = call i32 @dx.op.binary.i32(i32 37, i32 %7090, i32 0)  ; IMax(a,b)
  %7092 = call i32 @dx.op.binary.i32(i32 38, i32 %7091, i32 32)  ; IMin(a,b)
  %7093 = and i32 %7092, 31
  %7094 = shl i32 -1, %7093
  %7095 = xor i32 %7094, -1
  %7096 = and i32 %7088, 31
  %7097 = shl i32 %7095, %7096
  %7098 = icmp eq i32 %7092, 32
  %7099 = select i1 %7098, i32 -1, i32 %7097
  %7100 = and i32 %7099, %7084
  %7101 = icmp eq i32 %7100, 0
  br i1 %7101, label %7643, label %7102

; <label>:7102                                    ; preds = %7071
  br label %7103

; <label>:7103                                    ; preds = %7237, %7102
  %7104 = phi i32 [ %7115, %7237 ], [ %7100, %7102 ]
  %7105 = phi float [ %7238, %7237 ], [ %7073, %7102 ]
  %7106 = phi float [ %7239, %7237 ], [ %7074, %7102 ]
  %7107 = phi float [ %7240, %7237 ], [ %7075, %7102 ]
  %7108 = phi float [ %7241, %7237 ], [ %7076, %7102 ]
  %7109 = phi float [ %7242, %7237 ], [ %7077, %7102 ]
  %7110 = phi float [ %7243, %7237 ], [ %7078, %7102 ]
  %7111 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7104)  ; FirstbitLo(value)
  %7112 = add i32 %7111, %7085
  %7113 = and i32 %7111, 31
  %7114 = shl i32 1, %7113
  %7115 = xor i32 %7114, %7104
  %7116 = mul i32 %7112, 112
  %7117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7116, i32 undef)  ; BufferLoad(srv,index,wot)
  %7118 = extractvalue %dx.types.ResRet.f32 %7117, 0
  %7119 = extractvalue %dx.types.ResRet.f32 %7117, 1
  %7120 = extractvalue %dx.types.ResRet.f32 %7117, 2
  %7121 = or i32 %7116, 12
  %7122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7121, i32 undef)  ; BufferLoad(srv,index,wot)
  %7123 = extractvalue %dx.types.ResRet.f32 %7122, 0
  %7124 = add i32 %7116, 16
  %7125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7124, i32 undef)  ; BufferLoad(srv,index,wot)
  %7126 = extractvalue %dx.types.ResRet.f32 %7125, 0
  %7127 = extractvalue %dx.types.ResRet.f32 %7125, 1
  %7128 = extractvalue %dx.types.ResRet.f32 %7125, 2
  %7129 = add i32 %7116, 28
  %7130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7129, i32 undef)  ; BufferLoad(srv,index,wot)
  %7131 = extractvalue %dx.types.ResRet.i32 %7130, 0
  %7132 = add i32 %7116, 44
  %7133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7132, i32 undef)  ; BufferLoad(srv,index,wot)
  %7134 = extractvalue %dx.types.ResRet.f32 %7133, 0
  %7135 = add i32 %7116, 48
  %7136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7135, i32 undef)  ; BufferLoad(srv,index,wot)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 0
  %7138 = extractvalue %dx.types.ResRet.f32 %7136, 1
  %7139 = extractvalue %dx.types.ResRet.f32 %7136, 2
  %7140 = extractvalue %dx.types.ResRet.f32 %7136, 3
  %7141 = add i32 %7116, 64
  %7142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7141, i32 undef)  ; BufferLoad(srv,index,wot)
  %7143 = extractvalue %dx.types.ResRet.f32 %7142, 0
  %7144 = extractvalue %dx.types.ResRet.f32 %7142, 1
  %7145 = extractvalue %dx.types.ResRet.f32 %7142, 2
  %7146 = extractvalue %dx.types.ResRet.f32 %7142, 3
  %7147 = add i32 %7116, 80
  %7148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7147, i32 undef)  ; BufferLoad(srv,index,wot)
  %7149 = extractvalue %dx.types.ResRet.f32 %7148, 1
  %7150 = extractvalue %dx.types.ResRet.f32 %7148, 2
  %7151 = add i32 %7116, 92
  %7152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7151, i32 undef)  ; BufferLoad(srv,index,wot)
  %7153 = extractvalue %dx.types.ResRet.i32 %7152, 0
  %7154 = call float @dx.op.dot3.f32(i32 55, float %7118, float %7119, float %7120, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7155 = select i1 %265, float %7149, float %7118
  %7156 = select i1 %265, float %7154, float %7119
  %7157 = select i1 %265, float %7150, float %7120
  %7158 = and i32 %7153, 65535
  %7159 = uitofp i32 %7158 to float
  %7160 = lshr i32 %7153, 16
  %7161 = uitofp i32 %7160 to float
  %7162 = and i32 %7131, 65535
  %7163 = and i32 %7131, 50331648
  %7164 = icmp eq i32 %7163, 33554432
  %7165 = fsub fast float %7137, %193
  %7166 = fsub fast float %7138, %194
  %7167 = fsub fast float %7139, %195
  %7168 = call float @dx.op.dot3.f32(i32 55, float %7165, float %7166, float %7167, float %7165, float %7166, float %7167)  ; Dot3(ax,ay,az,bx,by,bz)
  %7169 = call float @dx.op.unary.f32(i32 24, float %7168)  ; Sqrt(value)
  %7170 = fdiv fast float 1.000000e+00, %7169
  %7171 = fmul fast float %7170, %7165
  %7172 = fmul fast float %7170, %7166
  %7173 = fmul fast float %7170, %7167
  %7174 = fadd fast float %7169, %7123
  %7175 = fdiv fast float 1.000000e+00, %7174
  %7176 = fmul float %7134, %7175
  %7177 = fmul float %7176, %7176
  %7178 = call float @dx.op.unary.f32(i32 7, float %7177)  ; Saturate(value)
  br i1 %7164, label %7179, label %7200

; <label>:7179                                    ; preds = %7103
  %7180 = fmul fast float %7145, %7126
  %7181 = fmul fast float %7145, %7127
  %7182 = fmul fast float %7145, %7128
  %7183 = fadd fast float %7165, %7180
  %7184 = fadd fast float %7166, %7181
  %7185 = fadd fast float %7167, %7182
  %7186 = call float @dx.op.dot3.f32(i32 55, float %7183, float %7184, float %7185, float %7183, float %7184, float %7185)  ; Dot3(ax,ay,az,bx,by,bz)
  %7187 = call float @dx.op.unary.f32(i32 25, float %7186)  ; Rsqrt(value)
  %7188 = fmul fast float %7187, %7183
  %7189 = fmul fast float %7187, %7184
  %7190 = fmul fast float %7187, %7185
  %7191 = fsub fast float %193, %7137
  %7192 = fsub fast float %194, %7138
  %7193 = fsub fast float %195, %7139
  %7194 = fsub fast float -0.000000e+00, %7191
  %7195 = fsub fast float -0.000000e+00, %7192
  %7196 = fsub fast float -0.000000e+00, %7193
  %7197 = call float @dx.op.dot3.f32(i32 55, float %7194, float %7195, float %7196, float %7126, float %7127, float %7128)  ; Dot3(ax,ay,az,bx,by,bz)
  %7198 = fcmp fast ogt float %7197, 0.000000e+00
  %7199 = uitofp i1 %7198 to float
  br label %7200

; <label>:7200                                    ; preds = %7179, %7103
  %7201 = phi float [ %7199, %7179 ], [ 1.000000e+00, %7103 ]
  %7202 = phi float [ %7188, %7179 ], [ %7171, %7103 ]
  %7203 = phi float [ %7189, %7179 ], [ %7172, %7103 ]
  %7204 = phi float [ %7190, %7179 ], [ %7173, %7103 ]
  %7205 = call float @dx.op.dot3.f32(i32 55, float %7126, float %7127, float %7128, float %7202, float %7203, float %7204)  ; Dot3(ax,ay,az,bx,by,bz)
  %7206 = fmul fast float %7205, %7205
  %7207 = call float @dx.op.unary.f32(i32 7, float %7206)  ; Saturate(value)
  %7208 = fsub fast float 1.000000e+00, %7207
  %7209 = fmul fast float %7208, 5.000000e-01
  %7210 = fcmp fast ogt float %7205, 0.000000e+00
  %7211 = fsub fast float 1.000000e+00, %7209
  %7212 = select i1 %7210, float %7209, float %7211
  %7213 = fmul fast float %7212, %7161
  %7214 = fadd fast float %7213, %7159
  %7215 = fmul fast float %7214, 0x3EF0001000000000
  %7216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %7215, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7217 = extractvalue %dx.types.ResRet.f32 %7216, 0
  %7218 = fmul fast float %7205, %7143
  %7219 = fadd fast float %7218, %7144
  %7220 = call float @dx.op.unary.f32(i32 7, float %7219)  ; Saturate(value)
  %7221 = select i1 %7164, float 1.000000e+00, float %7220
  %7222 = select i1 %7164, float %7220, float 1.000000e+00
  %7223 = fmul fast float %7169, %7140
  %7224 = fsub fast float 1.000000e+00, %7223
  %7225 = fmul fast float %7224, %7146
  %7226 = call float @dx.op.unary.f32(i32 7, float %7225)  ; Saturate(value)
  %7227 = fmul fast float %7226, %7222
  %7228 = fmul fast float %7227, 2.000000e+00
  %7229 = fsub fast float 3.000000e+00, %7228
  %7230 = fmul fast float %7217, %7201
  %7231 = fmul fast float %7227, %7227
  %7232 = fmul fast float %7231, %7230
  %7233 = fmul fast float %7232, %7229
  %7234 = call float @dx.op.binary.f32(i32 36, float %7233, float %7233)  ; FMin(a,b)
  %7235 = call float @dx.op.binary.f32(i32 36, float %7233, float %7234)  ; FMin(a,b)
  %7236 = fcmp fast ogt float %7235, 0.000000e+00
  br i1 %7236, label %7245, label %7237, !dx.controlflow.hints !124

; <label>:7237                                    ; preds = %7599, %7345, %7200
  %7238 = phi float [ %7105, %7345 ], [ %7105, %7200 ], [ %7639, %7599 ]
  %7239 = phi float [ %7106, %7345 ], [ %7106, %7200 ], [ %7640, %7599 ]
  %7240 = phi float [ %7107, %7345 ], [ %7107, %7200 ], [ %7641, %7599 ]
  %7241 = phi float [ %7108, %7345 ], [ %7108, %7200 ], [ %7633, %7599 ]
  %7242 = phi float [ %7109, %7345 ], [ %7109, %7200 ], [ %7634, %7599 ]
  %7243 = phi float [ %7110, %7345 ], [ %7110, %7200 ], [ %7635, %7599 ]
  %7244 = icmp eq i32 %7104, %7114
  br i1 %7244, label %7642, label %7103

; <label>:7245                                    ; preds = %7200
  %7246 = icmp eq i32 %7162, 255
  br i1 %7246, label %7345, label %7247, !dx.controlflow.hints !125

; <label>:7247                                    ; preds = %7245
  %7248 = mul nuw nsw i32 %7162, 176
  %7249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7248, i32 undef)  ; BufferLoad(srv,index,wot)
  %7250 = extractvalue %dx.types.ResRet.f32 %7249, 0
  %7251 = extractvalue %dx.types.ResRet.f32 %7249, 1
  %7252 = extractvalue %dx.types.ResRet.f32 %7249, 2
  %7253 = extractvalue %dx.types.ResRet.f32 %7249, 3
  %7254 = add nuw nsw i32 %7248, 16
  %7255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7254, i32 undef)  ; BufferLoad(srv,index,wot)
  %7256 = extractvalue %dx.types.ResRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.ResRet.f32 %7255, 1
  %7258 = add nuw nsw i32 %7248, 32
  %7259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7258, i32 undef)  ; BufferLoad(srv,index,wot)
  %7260 = extractvalue %dx.types.ResRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.ResRet.f32 %7259, 1
  %7262 = extractvalue %dx.types.ResRet.f32 %7259, 2
  %7263 = add nuw nsw i32 %7248, 48
  %7264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7263, i32 undef)  ; BufferLoad(srv,index,wot)
  %7265 = extractvalue %dx.types.ResRet.f32 %7264, 0
  %7266 = extractvalue %dx.types.ResRet.f32 %7264, 1
  %7267 = extractvalue %dx.types.ResRet.f32 %7264, 2
  %7268 = extractvalue %dx.types.ResRet.f32 %7264, 3
  %7269 = add nuw nsw i32 %7248, 64
  %7270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7269, i32 undef)  ; BufferLoad(srv,index,wot)
  %7271 = extractvalue %dx.types.ResRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.ResRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.ResRet.f32 %7270, 2
  %7274 = extractvalue %dx.types.ResRet.f32 %7270, 3
  %7275 = add nuw nsw i32 %7248, 80
  %7276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7275, i32 undef)  ; BufferLoad(srv,index,wot)
  %7277 = extractvalue %dx.types.ResRet.f32 %7276, 0
  %7278 = extractvalue %dx.types.ResRet.f32 %7276, 1
  %7279 = extractvalue %dx.types.ResRet.f32 %7276, 2
  %7280 = extractvalue %dx.types.ResRet.f32 %7276, 3
  %7281 = add nuw nsw i32 %7248, 96
  %7282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7281, i32 undef)  ; BufferLoad(srv,index,wot)
  %7283 = extractvalue %dx.types.ResRet.f32 %7282, 0
  %7284 = extractvalue %dx.types.ResRet.f32 %7282, 1
  %7285 = extractvalue %dx.types.ResRet.f32 %7282, 2
  %7286 = extractvalue %dx.types.ResRet.f32 %7282, 3
  %7287 = bitcast float %7257 to i32
  %7288 = fmul fast float %7262, %113
  %7289 = fmul fast float %7262, %114
  %7290 = fmul fast float %7262, %115
  %7291 = fadd fast float %7288, %193
  %7292 = fadd fast float %7289, %194
  %7293 = fadd fast float %7290, %195
  %7294 = fmul fast float %7291, %7265
  %7295 = call float @dx.op.tertiary.f32(i32 46, float %7292, float %7271, float %7294)  ; FMad(a,b,c)
  %7296 = call float @dx.op.tertiary.f32(i32 46, float %7293, float %7277, float %7295)  ; FMad(a,b,c)
  %7297 = fadd fast float %7296, %7283
  %7298 = fmul fast float %7291, %7266
  %7299 = call float @dx.op.tertiary.f32(i32 46, float %7292, float %7272, float %7298)  ; FMad(a,b,c)
  %7300 = call float @dx.op.tertiary.f32(i32 46, float %7293, float %7278, float %7299)  ; FMad(a,b,c)
  %7301 = fadd fast float %7300, %7284
  %7302 = fmul fast float %7291, %7267
  %7303 = call float @dx.op.tertiary.f32(i32 46, float %7292, float %7273, float %7302)  ; FMad(a,b,c)
  %7304 = call float @dx.op.tertiary.f32(i32 46, float %7293, float %7279, float %7303)  ; FMad(a,b,c)
  %7305 = fadd fast float %7304, %7285
  %7306 = fmul fast float %7291, %7268
  %7307 = call float @dx.op.tertiary.f32(i32 46, float %7292, float %7274, float %7306)  ; FMad(a,b,c)
  %7308 = call float @dx.op.tertiary.f32(i32 46, float %7293, float %7280, float %7307)  ; FMad(a,b,c)
  %7309 = fadd fast float %7308, %7286
  %7310 = fdiv fast float %7297, %7309
  %7311 = fdiv fast float %7301, %7309
  %7312 = fdiv fast float %7305, %7309
  %7313 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7312)  ; FMax(a,b)
  %7314 = fmul fast float %276, 0x401921FB60000000
  %7315 = call float @dx.op.unary.f32(i32 13, float %7314)  ; Sin(value)
  %7316 = call float @dx.op.unary.f32(i32 12, float %7314)  ; Cos(value)
  %7317 = fsub fast float -0.000000e+00, %7315
  %7318 = fmul fast float %7252, 5.000000e-01
  %7319 = call float @dx.op.dot2.f32(i32 54, float %276, float %276, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7320 = call float @dx.op.unary.f32(i32 22, float %7319)  ; Frc(value)
  %7321 = fmul fast float %7320, 0x404A7DD040000000
  %7322 = call float @dx.op.unary.f32(i32 22, float %7321)  ; Frc(value)
  %7323 = fmul fast float %7322, %7261
  %7324 = fadd fast float %7323, %7318
  %7325 = call float @dx.op.tertiary.f32(i32 46, float %7324, float %7317, float 0.000000e+00)  ; FMad(a,b,c)
  %7326 = call float @dx.op.tertiary.f32(i32 46, float %7324, float %7316, float 0.000000e+00)  ; FMad(a,b,c)
  %7327 = fadd fast float %7325, %7310
  %7328 = fadd fast float %7326, %7311
  %7329 = fmul fast float %7327, %7256
  %7330 = fmul fast float %7328, %7256
  %7331 = call float @dx.op.binary.f32(i32 35, float %7329, float %7252)  ; FMax(a,b)
  %7332 = call float @dx.op.binary.f32(i32 35, float %7330, float %7252)  ; FMax(a,b)
  %7333 = call float @dx.op.binary.f32(i32 36, float %7331, float %7253)  ; FMin(a,b)
  %7334 = call float @dx.op.binary.f32(i32 36, float %7332, float %7253)  ; FMin(a,b)
  %7335 = fadd fast float %7333, %7250
  %7336 = fadd fast float %7334, %7251
  %7337 = uitofp i32 %7287 to float
  %7338 = fadd fast float %7313, %7260
  %7339 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7335, float %7336, float %7337, float undef, i32 0, i32 0, i32 undef, float %7338)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7340 = extractvalue %dx.types.ResRet.f32 %7339, 0
  %7341 = fadd fast float %7340, -1.000000e+00
  %7342 = fmul fast float %7341, %7221
  %7343 = fadd fast float %7342, 1.000000e+00
  %7344 = fmul fast float %7343, %7233
  br label %7345

; <label>:7345                                    ; preds = %7247, %7245
  %7346 = phi float [ %7344, %7247 ], [ %7233, %7245 ]
  %7347 = call float @dx.op.binary.f32(i32 36, float %7346, float %7346)  ; FMin(a,b)
  %7348 = call float @dx.op.binary.f32(i32 36, float %7346, float %7347)  ; FMin(a,b)
  %7349 = fcmp fast ogt float %7348, 0.000000e+00
  br i1 %7349, label %7350, label %7237, !dx.controlflow.hints !126

; <label>:7350                                    ; preds = %7345
  %7351 = fmul fast float %7346, %7155
  %7352 = fmul fast float %7346, %7156
  %7353 = fmul fast float %7346, %7157
  %7354 = fsub fast float %7139, %4858
  %7355 = fcmp fast ogt float %7354, 0.000000e+00
  %7356 = fsub fast float %195, %4858
  %7357 = fcmp fast ogt float %7356, 0.000000e+00
  %7358 = xor i1 %7357, %7355
  %7359 = fsub fast float %4858, %7139
  %7360 = fmul fast float %7359, 2.000000e+00
  %7361 = fadd fast float %7360, %7139
  %7362 = select i1 %7358, float %7139, float %7361
  %7363 = fsub fast float %7362, %195
  %7364 = call float @dx.op.dot3.f32(i32 55, float %7165, float %7166, float %7363, float %7165, float %7166, float %7363)  ; Dot3(ax,ay,az,bx,by,bz)
  %7365 = call float @dx.op.unary.f32(i32 25, float %7364)  ; Rsqrt(value)
  %7366 = fmul fast float %7365, %7165
  %7367 = fmul fast float %7365, %7166
  %7368 = fmul fast float %7365, %7363
  %7369 = fsub fast float %4858, %195
  %7370 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7369)  ; Dot3(ax,ay,az,bx,by,bz)
  %7371 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7366, float %7367, float %7368)  ; Dot3(ax,ay,az,bx,by,bz)
  %7372 = fdiv fast float 1.000000e+00, %7371
  %7373 = fmul fast float %7372, %7370
  %7374 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7356, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7375 = fcmp fast ogt float %7374, 0.000000e+00
  %7376 = fcmp fast olt float %7374, 0.000000e+00
  %7377 = zext i1 %7375 to i32
  %7378 = zext i1 %7376 to i32
  %7379 = sub nsw i32 %7377, %7378
  %7380 = sitofp i32 %7379 to float
  %7381 = fsub fast float %7362, %4858
  %7382 = call float @dx.op.dot3.f32(i32 55, float %7165, float %7166, float %7381, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7383 = fcmp fast ogt float %7382, 0.000000e+00
  %7384 = fcmp fast olt float %7382, 0.000000e+00
  %7385 = zext i1 %7383 to i32
  %7386 = zext i1 %7384 to i32
  %7387 = sub nsw i32 %7385, %7386
  %7388 = sitofp i32 %7387 to float
  %7389 = fcmp fast une float %7380, %7388
  br i1 %7389, label %7390, label %7400

; <label>:7390                                    ; preds = %7350
  %7391 = fmul fast float %7373, %7368
  %7392 = fmul fast float %7373, %7367
  %7393 = fmul fast float %7373, %7366
  %7394 = fmul fast float %7393, %7393
  %7395 = fmul fast float %7392, %7392
  %7396 = fadd fast float %7394, %7395
  %7397 = fmul fast float %7391, %7391
  %7398 = fadd fast float %7396, %7397
  %7399 = call float @dx.op.unary.f32(i32 24, float %7398)  ; Sqrt(value)
  br label %7412

; <label>:7400                                    ; preds = %7350
  %7401 = icmp slt i32 %7379, 0
  br i1 %7401, label %7402, label %7412

; <label>:7402                                    ; preds = %7400
  %7403 = fsub fast float %193, %7137
  %7404 = fsub fast float %194, %7138
  %7405 = fsub fast float %195, %7362
  %7406 = fmul fast float %7403, %7403
  %7407 = fmul fast float %7404, %7404
  %7408 = fadd fast float %7406, %7407
  %7409 = fmul fast float %7405, %7405
  %7410 = fadd fast float %7408, %7409
  %7411 = call float @dx.op.unary.f32(i32 24, float %7410)  ; Sqrt(value)
  br label %7412

; <label>:7412                                    ; preds = %7402, %7400, %7390
  %7413 = phi float [ %7399, %7390 ], [ %7411, %7402 ], [ 0.000000e+00, %7400 ]
  %7414 = and i1 %7357, %7355
  %7415 = fsub fast float -0.000000e+00, %7413
  %7416 = select i1 %7414, float -0.000000e+00, float %7415
  %7417 = fmul fast float %4859, 0x3FF7154760000000
  %7418 = fmul fast float %7417, %7416
  %7419 = fmul fast float %4860, 0x3FF7154760000000
  %7420 = fmul fast float %7419, %7416
  %7421 = fmul fast float %4861, 0x3FF7154760000000
  %7422 = fmul fast float %7421, %7416
  %7423 = call float @dx.op.unary.f32(i32 21, float %7418)  ; Exp(value)
  %7424 = call float @dx.op.unary.f32(i32 21, float %7420)  ; Exp(value)
  %7425 = call float @dx.op.unary.f32(i32 21, float %7422)  ; Exp(value)
  %7426 = call float @dx.op.unary.f32(i32 7, float %7423)  ; Saturate(value)
  %7427 = call float @dx.op.unary.f32(i32 7, float %7424)  ; Saturate(value)
  %7428 = call float @dx.op.unary.f32(i32 7, float %7425)  ; Saturate(value)
  %7429 = fmul fast float %7351, %7426
  %7430 = fmul fast float %7352, %7427
  %7431 = fmul fast float %7353, %7428
  %7432 = fsub fast float %7171, %5650
  %7433 = fsub fast float %7172, %5649
  %7434 = fsub fast float %7173, %5648
  %7435 = call float @dx.op.dot3.f32(i32 55, float %7432, float %7433, float %7434, float %7432, float %7433, float %7434)  ; Dot3(ax,ay,az,bx,by,bz)
  %7436 = call float @dx.op.unary.f32(i32 25, float %7435)  ; Rsqrt(value)
  %7437 = fmul fast float %7436, %7432
  %7438 = fmul fast float %7436, %7433
  %7439 = fmul fast float %7436, %7434
  %7440 = call float @dx.op.dot3.f32(i32 55, float %7171, float %7172, float %7173, float %5657, float %5658, float %5659)  ; Dot3(ax,ay,az,bx,by,bz)
  %7441 = call float @dx.op.dot3.f32(i32 55, float %5647, float %5646, float %5645, float %7437, float %7438, float %7439)  ; Dot3(ax,ay,az,bx,by,bz)
  %7442 = call float @dx.op.unary.f32(i32 7, float %7440)  ; Saturate(value)
  %7443 = fmul fast float %7442, %7178
  %7444 = fmul fast float %7442, %7442
  %7445 = fmul fast float %7444, %5678
  %7446 = call float @dx.op.unary.f32(i32 7, float %7445)  ; Saturate(value)
  %7447 = fmul fast float %7443, %7446
  %7448 = bitcast float %7168 to i32
  %7449 = ashr i32 %7448, 1
  %7450 = sub nsw i32 1597463007, %7449
  %7451 = bitcast i32 %7450 to float
  %7452 = fmul fast float %7451, %7165
  %7453 = fmul fast float %7451, %7166
  %7454 = fmul fast float %7451, %7167
  %7455 = fsub fast float %7452, %5650
  %7456 = fsub fast float %7453, %5649
  %7457 = fsub fast float %7454, %5648
  %7458 = call float @dx.op.dot3.f32(i32 55, float %7455, float %7456, float %7457, float %7455, float %7456, float %7457)  ; Dot3(ax,ay,az,bx,by,bz)
  %7459 = call float @dx.op.unary.f32(i32 25, float %7458)  ; Rsqrt(value)
  %7460 = fmul fast float %7455, %7459
  %7461 = fmul fast float %7456, %7459
  %7462 = fmul fast float %7457, %7459
  %7463 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5658, float %5659, float %7460, float %7461, float %7462)  ; Dot3(ax,ay,az,bx,by,bz)
  %7464 = fmul fast float %7463, %7463
  %7465 = call float @dx.op.unary.f32(i32 6, float %7440)  ; FAbs(value)
  %7466 = fsub fast float 1.000000e+00, %5660
  %7467 = call float @dx.op.binary.f32(i32 35, float %7466, float 0x3F847AE140000000)  ; FMax(a,b)
  %7468 = fmul fast float %7467, %7467
  %7469 = fmul fast float %7468, %7468
  %7470 = fsub fast float 1.000000e+00, %7469
  %7471 = fmul fast float %5665, %5665
  %7472 = fmul fast float %7471, %7470
  %7473 = fadd fast float %7472, %7469
  %7474 = bitcast float %7473 to i32
  %7475 = ashr i32 %7474, 1
  %7476 = add nsw i32 %7475, 532487669
  %7477 = bitcast i32 %7476 to float
  %7478 = fadd fast float %7477, %5665
  %7479 = fmul fast float %7469, %7464
  %7480 = fsub fast float 1.000000e+00, %7464
  %7481 = fadd fast float %7480, %7479
  %7482 = fmul fast float %7465, %7465
  %7483 = fmul fast float %7482, %7470
  %7484 = fadd fast float %7483, %7469
  %7485 = bitcast float %7484 to i32
  %7486 = ashr i32 %7485, 1
  %7487 = add nsw i32 %7486, 532487669
  %7488 = bitcast i32 %7487 to float
  %7489 = fadd fast float %7488, %7465
  %7490 = fmul fast float %7481, %7481
  %7491 = fmul fast float %7490, %7478
  %7492 = fmul fast float %7491, %7489
  %7493 = fdiv fast float 1.000000e+00, %7492
  %7494 = bitcast float %7469 to i32
  %7495 = sitofp i32 %7494 to float
  %7496 = fmul fast float %7495, 0x3FE7F73180000000
  %7497 = fadd fast float %7496, 0x41AFE27C40000000
  %7498 = fptosi float %7497 to i32
  %7499 = bitcast i32 %7498 to float
  %7500 = fmul fast float %7134, 0x3FD80E9D60000000
  %7501 = fmul fast float %7500, %7451
  %7502 = fadd fast float %7499, %7501
  %7503 = bitcast float %7502 to i32
  %7504 = sub nsw i32 2129859010, %7503
  %7505 = bitcast i32 %7504 to float
  %7506 = fmul fast float %7469, %7493
  %7507 = fmul fast float %7506, %7499
  %7508 = fmul fast float %7507, %7505
  %7509 = fmul fast float %5778, 0x3FF9999980000000
  %7510 = fsub fast float 5.000000e+00, %7509
  %7511 = call float @dx.op.unary.f32(i32 6, float %7441)  ; FAbs(value)
  %7512 = fsub fast float 1.000000e+00, %7511
  %7513 = fmul fast float %5778, 0x41D9660740000000
  %7514 = fadd fast float %7513, 0xC1EFBF8940000000
  %7515 = bitcast float %7512 to i32
  %7516 = sitofp i32 %7515 to float
  %7517 = fmul fast float %7516, %7510
  %7518 = fadd fast float %7514, %7517
  %7519 = fptosi float %7518 to i32
  %7520 = bitcast i32 %7519 to float
  %7521 = fsub fast float 1.000000e+00, %5651
  %7522 = fsub fast float 1.000000e+00, %5652
  %7523 = fsub fast float 1.000000e+00, %5663
  %7524 = fmul fast float %7520, %7521
  %7525 = fmul fast float %7520, %7522
  %7526 = fmul fast float %7520, %7523
  %7527 = fadd fast float %7524, %5651
  %7528 = fadd fast float %7525, %5652
  %7529 = fadd fast float %7526, %5663
  br i1 %5801, label %7530, label %7553

; <label>:7530                                    ; preds = %7412
  %7531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4454, float %7511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7532 = extractvalue %dx.types.ResRet.f32 %7531, 0
  %7533 = extractvalue %dx.types.ResRet.f32 %7531, 1
  %7534 = extractvalue %dx.types.ResRet.f32 %7531, 2
  %7535 = fadd fast float %7532, -5.000000e-01
  %7536 = fadd fast float %7533, -5.000000e-01
  %7537 = fadd fast float %7534, -5.000000e-01
  %7538 = fmul fast float %5651, 4.000000e+00
  %7539 = fmul fast float %7538, %7521
  %7540 = fmul fast float %7539, %7535
  %7541 = fmul fast float %5652, 4.000000e+00
  %7542 = fmul fast float %7541, %7522
  %7543 = fmul fast float %7542, %7536
  %7544 = fmul fast float %5663, 4.000000e+00
  %7545 = fmul fast float %7544, %7523
  %7546 = fmul fast float %7545, %7537
  %7547 = fadd fast float %7540, %7527
  %7548 = fadd fast float %7543, %7528
  %7549 = fadd fast float %7546, %7529
  %7550 = call float @dx.op.unary.f32(i32 7, float %7547)  ; Saturate(value)
  %7551 = call float @dx.op.unary.f32(i32 7, float %7548)  ; Saturate(value)
  %7552 = call float @dx.op.unary.f32(i32 7, float %7549)  ; Saturate(value)
  br label %7553

; <label>:7553                                    ; preds = %7530, %7412
  %7554 = phi float [ %7550, %7530 ], [ %7527, %7412 ]
  %7555 = phi float [ %7551, %7530 ], [ %7528, %7412 ]
  %7556 = phi float [ %7552, %7530 ], [ %7529, %7412 ]
  %7557 = fmul fast float %7440, 9.843750e-01
  %7558 = fadd fast float %7557, 7.812500e-03
  %7559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7558, float %5782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7560 = extractvalue %dx.types.ResRet.f32 %7559, 0
  %7561 = extractvalue %dx.types.ResRet.f32 %7559, 1
  %7562 = extractvalue %dx.types.ResRet.f32 %7559, 2
  %7563 = extractvalue %dx.types.ResRet.f32 %7559, 3
  %7564 = fsub fast float %7562, %7560
  %7565 = fsub fast float %7563, %7561
  %7566 = fmul fast float %7564, %5788
  %7567 = fmul fast float %7565, %5788
  %7568 = fadd fast float %7566, %7560
  %7569 = fadd fast float %7567, %7561
  %7570 = fmul fast float %7568, %5651
  %7571 = fmul fast float %7568, %5652
  %7572 = fmul fast float %7568, %5663
  %7573 = fadd fast float %7570, %7569
  %7574 = fadd fast float %7571, %7569
  %7575 = fadd fast float %7572, %7569
  br i1 %5801, label %7576, label %7599

; <label>:7576                                    ; preds = %7553
  %7577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4454, float %7440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7578 = extractvalue %dx.types.ResRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.ResRet.f32 %7577, 1
  %7580 = extractvalue %dx.types.ResRet.f32 %7577, 2
  %7581 = fadd fast float %7578, -5.000000e-01
  %7582 = fadd fast float %7579, -5.000000e-01
  %7583 = fadd fast float %7580, -5.000000e-01
  %7584 = fmul fast float %5651, 4.000000e+00
  %7585 = fmul fast float %7584, %7521
  %7586 = fmul fast float %7585, %7581
  %7587 = fmul fast float %5652, 4.000000e+00
  %7588 = fmul fast float %7587, %7522
  %7589 = fmul fast float %7588, %7582
  %7590 = fmul fast float %5663, 4.000000e+00
  %7591 = fmul fast float %7590, %7523
  %7592 = fmul fast float %7591, %7583
  %7593 = fadd fast float %7586, %7573
  %7594 = fadd fast float %7589, %7574
  %7595 = fadd fast float %7592, %7575
  %7596 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7597 = call float @dx.op.unary.f32(i32 7, float %7594)  ; Saturate(value)
  %7598 = call float @dx.op.unary.f32(i32 7, float %7595)  ; Saturate(value)
  br label %7599

; <label>:7599                                    ; preds = %7576, %7553
  %7600 = phi float [ %7596, %7576 ], [ %7573, %7553 ]
  %7601 = phi float [ %7597, %7576 ], [ %7574, %7553 ]
  %7602 = phi float [ %7598, %7576 ], [ %7575, %7553 ]
  %7603 = call float @dx.op.binary.f32(i32 35, float %7601, float %7602)  ; FMax(a,b)
  %7604 = call float @dx.op.binary.f32(i32 35, float %7600, float %7603)  ; FMax(a,b)
  %7605 = fsub fast float 1.000000e+00, %7604
  %7606 = fmul fast float %7554, %7508
  %7607 = fmul fast float %7555, %7508
  %7608 = fmul fast float %7556, %7508
  %7609 = fsub fast float 1.000000e+00, %7441
  %7610 = bitcast float %7609 to i32
  %7611 = sitofp i32 %7610 to float
  %7612 = fmul fast float %7611, 5.000000e+00
  %7613 = fadd fast float %7612, 0xC1EFBF8940000000
  %7614 = fptosi float %7613 to i32
  %7615 = bitcast i32 %7614 to float
  %7616 = fmul fast float %7615, %4455
  %7617 = fmul fast float %7605, %7616
  %7618 = fmul fast float %7617, %5851
  %7619 = fmul fast float %7617, %5852
  %7620 = fmul fast float %7617, %5853
  %7621 = fadd fast float %7618, %7606
  %7622 = fadd fast float %7619, %7607
  %7623 = fadd fast float %7620, %7608
  %7624 = fmul fast float %7429, %4451
  %7625 = fmul fast float %7624, %7447
  %7626 = fmul fast float %7625, %7605
  %7627 = fmul fast float %7430, %4451
  %7628 = fmul fast float %7627, %7447
  %7629 = fmul fast float %7628, %7605
  %7630 = fmul fast float %7431, %4451
  %7631 = fmul fast float %7630, %7447
  %7632 = fmul fast float %7631, %7605
  %7633 = fadd fast float %7626, %7108
  %7634 = fadd fast float %7629, %7109
  %7635 = fadd fast float %7632, %7110
  %7636 = fmul fast float %7625, %7621
  %7637 = fmul fast float %7628, %7622
  %7638 = fmul fast float %7631, %7623
  %7639 = fadd fast float %7636, %7105
  %7640 = fadd fast float %7637, %7106
  %7641 = fadd fast float %7638, %7107
  br label %7237

; <label>:7642                                    ; preds = %7237
  br label %7643

; <label>:7643                                    ; preds = %7642, %7071
  %7644 = phi float [ %7073, %7071 ], [ %7238, %7642 ]
  %7645 = phi float [ %7074, %7071 ], [ %7239, %7642 ]
  %7646 = phi float [ %7075, %7071 ], [ %7240, %7642 ]
  %7647 = phi float [ %7076, %7071 ], [ %7241, %7642 ]
  %7648 = phi float [ %7077, %7071 ], [ %7242, %7642 ]
  %7649 = phi float [ %7078, %7071 ], [ %7243, %7642 ]
  %7650 = add i32 %7072, 1
  %7651 = icmp ugt i32 %7650, %7068
  br i1 %7651, label %7652, label %7071

; <label>:7652                                    ; preds = %7643
  br label %7653

; <label>:7653                                    ; preds = %7652, %7021, %7011
  %7654 = phi float [ %7012, %7011 ], [ %7012, %7021 ], [ %7644, %7652 ]
  %7655 = phi float [ %7013, %7011 ], [ %7013, %7021 ], [ %7645, %7652 ]
  %7656 = phi float [ %7014, %7011 ], [ %7014, %7021 ], [ %7646, %7652 ]
  %7657 = phi float [ %7015, %7011 ], [ %7015, %7021 ], [ %7647, %7652 ]
  %7658 = phi float [ %7016, %7011 ], [ %7016, %7021 ], [ %7648, %7652 ]
  %7659 = phi float [ %7017, %7011 ], [ %7017, %7021 ], [ %7649, %7652 ]
  %7660 = fmul fast float %4451, %4451
  %7661 = fmul fast float %7660, %5877
  %7662 = fsub fast float -0.000000e+00, %7661
  %7663 = fmul fast float %7660, %5878
  %7664 = fsub fast float -0.000000e+00, %7663
  %7665 = fmul fast float %7660, %5879
  %7666 = fsub fast float -0.000000e+00, %7665
  %7667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7668 = extractvalue %dx.types.CBufRet.f32 %7667, 0
  %7669 = fmul fast float %7668, %5883
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 3
  %7672 = fsub fast float 1.000000e+00, %4458
  %7673 = call float @dx.op.unary.f32(i32 7, float %7672)  ; Saturate(value)
  %7674 = fadd fast float %7659, %4457
  %7675 = fmul fast float %7674, %4458
  %7676 = fmul fast float %7673, %7671
  %7677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7678 = extractvalue %dx.types.CBufRet.f32 %7677, 3
  %7679 = fmul fast float %7657, %5654
  %7680 = fmul fast float %7658, %5655
  %7681 = fmul fast float %7659, %5656
  %7682 = fcmp fast ogt float %97, %228
  %7683 = and i1 %7682, %4864
  %7684 = or i1 %4870, %7683
  %7685 = icmp eq i32 %4863, 2
  %7686 = fcmp fast ole float %97, %228
  %7687 = and i1 %7686, %7685
  %7688 = or i1 %7687, %7684
  br i1 %7683, label %7689, label %7946

; <label>:7689                                    ; preds = %7653
  %7690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.f32 %7690, 2
  %7692 = extractvalue %dx.types.CBufRet.f32 %7690, 3
  %7693 = fmul fast float %7691, %106
  %7694 = fmul fast float %7692, %107
  %7695 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7696 = call float @dx.op.unary.f32(i32 7, float %7694)  ; Saturate(value)
  %7697 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7695, float %7696, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7698 = extractvalue %dx.types.ResRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.ResRet.f32 %7697, 1
  %7700 = extractvalue %dx.types.ResRet.f32 %7697, 2
  %7701 = extractvalue %dx.types.ResRet.f32 %7697, 3
  %7702 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7695, float %7696, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7703 = extractvalue %dx.types.ResRet.f32 %7702, 0
  %7704 = extractvalue %dx.types.ResRet.f32 %7702, 1
  %7705 = extractvalue %dx.types.ResRet.f32 %7702, 2
  %7706 = extractvalue %dx.types.ResRet.f32 %7702, 3
  %7707 = call float @dx.op.binary.f32(i32 35, float %7699, float %7700)  ; FMax(a,b)
  %7708 = call float @dx.op.binary.f32(i32 35, float %7698, float %7707)  ; FMax(a,b)
  %7709 = call float @dx.op.binary.f32(i32 35, float %7708, float %7701)  ; FMax(a,b)
  %7710 = call float @dx.op.binary.f32(i32 36, float %7704, float %7705)  ; FMin(a,b)
  %7711 = call float @dx.op.binary.f32(i32 36, float %7703, float %7710)  ; FMin(a,b)
  %7712 = call float @dx.op.binary.f32(i32 36, float %7711, float %7706)  ; FMin(a,b)
  %7713 = fmul fast float %7709, 2.550000e+02
  %7714 = fadd fast float %7713, 0x3F70101020000000
  %7715 = fptoui float %7714 to i32
  %7716 = fmul fast float %7712, 2.550000e+02
  %7717 = fadd fast float %7716, 0x3F70101020000000
  %7718 = fptoui float %7717 to i32
  %7719 = icmp ult i32 %7715, %7718
  br i1 %7719, label %7720, label %7888

; <label>:7720                                    ; preds = %7689
  %7721 = fcmp fast ogt float %96, 9.843750e-01
  %7722 = fadd fast float %97, -4.000000e+00
  %7723 = select i1 %7721, float -4.000000e+00, float %7722
  %7724 = call float @dx.op.binary.f32(i32 35, float %7723, float 0.000000e+00)  ; FMax(a,b)
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 0
  %7727 = fadd fast float %7726, %7724
  %7728 = extractvalue %dx.types.CBufRet.f32 %7725, 2
  %7729 = fmul fast float %7727, %7728
  %7730 = call float @dx.op.unary.f32(i32 23, float %7729)  ; Log(value)
  %7731 = extractvalue %dx.types.CBufRet.f32 %7725, 3
  %7732 = fmul fast float %7731, %7730
  %7733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7734 = extractvalue %dx.types.CBufRet.f32 %7733, 2
  %7735 = fmul fast float %7732, %7734
  %7736 = call float @dx.op.unary.f32(i32 7, float %7735)  ; Saturate(value)
  %7737 = uitofp i32 %7715 to float
  %7738 = uitofp i32 %7718 to float
  %7739 = fadd fast float %7737, 5.000000e-01
  %7740 = fadd fast float %7738, 5.000000e-01
  %7741 = fmul fast float %7734, %7739
  %7742 = fmul fast float %7734, %7740
  %7743 = fadd fast float %7741, 0x3F0FFB4800000000
  %7744 = fadd fast float %7742, 0xBF0FFB4800000000
  %7745 = call float @dx.op.binary.f32(i32 35, float %7736, float %7743)  ; FMax(a,b)
  %7746 = call float @dx.op.binary.f32(i32 36, float %7745, float %7744)  ; FMin(a,b)
  %7747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7748 = extractvalue %dx.types.CBufRet.f32 %7747, 1
  %7749 = extractvalue %dx.types.CBufRet.f32 %7747, 2
  %7750 = extractvalue %dx.types.CBufRet.f32 %7747, 0
  %7751 = fmul fast float %7748, %7746
  %7752 = fadd fast float %7750, %7751
  %7753 = fadd fast float %7750, %7749
  %7754 = fsub fast float %7748, %7749
  %7755 = fadd fast float %7754, %7750
  %7756 = call float @dx.op.binary.f32(i32 35, float %7752, float %7753)  ; FMax(a,b)
  %7757 = call float @dx.op.binary.f32(i32 36, float %7756, float %7755)  ; FMin(a,b)
  %7758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7695, float %7696, float %7757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7759 = extractvalue %dx.types.ResRet.f32 %7758, 0
  %7760 = extractvalue %dx.types.ResRet.f32 %7758, 1
  %7761 = extractvalue %dx.types.ResRet.f32 %7758, 2
  %7762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.i32 %7762, 0
  %7764 = extractvalue %dx.types.CBufRet.i32 %7762, 1
  %7765 = uitofp i32 %7763 to float
  %7766 = uitofp i32 %7764 to float
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 0
  %7769 = extractvalue %dx.types.CBufRet.f32 %7767, 1
  %7770 = fmul fast float %7765, %7695
  %7771 = fmul fast float %7766, %7696
  %7772 = fadd fast float %7770, -5.000000e-01
  %7773 = fadd fast float %7771, -5.000000e-01
  %7774 = call float @dx.op.unary.f32(i32 22, float %7772)  ; Frc(value)
  %7775 = call float @dx.op.unary.f32(i32 22, float %7773)  ; Frc(value)
  %7776 = fmul fast float %7774, %7774
  %7777 = fmul fast float %7776, %7774
  %7778 = fsub fast float 3.000000e+00, %7774
  %7779 = fmul fast float %7776, %7778
  %7780 = fmul fast float %7774, 3.000000e+00
  %7781 = fmul fast float %7777, 3.000000e+00
  %7782 = fmul fast float %7776, 6.000000e+00
  %7783 = fsub fast float %7781, %7782
  %7784 = fadd fast float %7783, 4.000000e+00
  %7785 = fmul fast float %7784, 0x3FC5555560000000
  %7786 = fmul fast float %7777, -3.000000e+00
  %7787 = fadd fast float %7776, %7774
  %7788 = fmul fast float %7787, 3.000000e+00
  %7789 = fadd fast float %7786, 1.000000e+00
  %7790 = fadd fast float %7789, %7788
  %7791 = fmul fast float %7777, 0x3FC5555560000000
  %7792 = fmul fast float %7775, %7775
  %7793 = fmul fast float %7792, %7775
  %7794 = fsub fast float 3.000000e+00, %7775
  %7795 = fmul fast float %7792, %7794
  %7796 = fmul fast float %7775, 3.000000e+00
  %7797 = fmul fast float %7793, 3.000000e+00
  %7798 = fmul fast float %7792, 6.000000e+00
  %7799 = fsub fast float %7797, %7798
  %7800 = fadd fast float %7799, 4.000000e+00
  %7801 = fmul fast float %7800, 0x3FC5555560000000
  %7802 = fmul fast float %7793, -3.000000e+00
  %7803 = fadd fast float %7792, %7775
  %7804 = fmul fast float %7803, 3.000000e+00
  %7805 = fadd fast float %7802, 1.000000e+00
  %7806 = fadd fast float %7805, %7804
  %7807 = fmul fast float %7793, 0x3FC5555560000000
  %7808 = fadd fast float %7774, 1.000000e+00
  %7809 = fsub fast float 1.000000e+00, %7780
  %7810 = fadd fast float %7809, %7779
  %7811 = fadd fast float %7810, %7784
  %7812 = fmul fast float %7811, 0x3FC5555560000000
  %7813 = fdiv fast float %7785, %7812
  %7814 = fsub fast float %7808, %7813
  %7815 = fsub fast float 1.000000e+00, %7774
  %7816 = fadd fast float %7790, %7777
  %7817 = fmul fast float %7816, 0x3FC5555560000000
  %7818 = fdiv fast float %7791, %7817
  %7819 = fadd fast float %7815, %7818
  %7820 = fadd fast float %7775, 1.000000e+00
  %7821 = fsub fast float 1.000000e+00, %7796
  %7822 = fadd fast float %7821, %7795
  %7823 = fadd fast float %7822, %7800
  %7824 = fmul fast float %7823, 0x3FC5555560000000
  %7825 = fdiv fast float %7801, %7824
  %7826 = fsub fast float %7820, %7825
  %7827 = fsub fast float 1.000000e+00, %7775
  %7828 = fadd fast float %7806, %7793
  %7829 = fmul fast float %7828, 0x3FC5555560000000
  %7830 = fdiv fast float %7807, %7829
  %7831 = fadd fast float %7830, %7827
  %7832 = fmul fast float %7814, %7768
  %7833 = fsub fast float %7695, %7832
  %7834 = fmul fast float %7819, %7768
  %7835 = fadd fast float %7834, %7695
  %7836 = fmul fast float %7831, %7769
  %7837 = fadd fast float %7836, %7696
  %7838 = fmul fast float %7826, %7769
  %7839 = fsub fast float %7696, %7838
  %7840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7833, float %7839, float %7757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7841 = extractvalue %dx.types.ResRet.f32 %7840, 0
  %7842 = extractvalue %dx.types.ResRet.f32 %7840, 1
  %7843 = extractvalue %dx.types.ResRet.f32 %7840, 2
  %7844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7835, float %7839, float %7757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7845 = extractvalue %dx.types.ResRet.f32 %7844, 0
  %7846 = extractvalue %dx.types.ResRet.f32 %7844, 1
  %7847 = extractvalue %dx.types.ResRet.f32 %7844, 2
  %7848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7833, float %7837, float %7757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7849 = extractvalue %dx.types.ResRet.f32 %7848, 0
  %7850 = extractvalue %dx.types.ResRet.f32 %7848, 1
  %7851 = extractvalue %dx.types.ResRet.f32 %7848, 2
  %7852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %7835, float %7837, float %7757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7853 = extractvalue %dx.types.ResRet.f32 %7852, 0
  %7854 = extractvalue %dx.types.ResRet.f32 %7852, 1
  %7855 = extractvalue %dx.types.ResRet.f32 %7852, 2
  %7856 = fsub fast float %7849, %7841
  %7857 = fsub fast float %7850, %7842
  %7858 = fsub fast float %7851, %7843
  %7859 = fmul fast float %7856, %7829
  %7860 = fmul fast float %7857, %7829
  %7861 = fmul fast float %7858, %7829
  %7862 = fadd fast float %7859, %7841
  %7863 = fadd fast float %7860, %7842
  %7864 = fadd fast float %7861, %7843
  %7865 = fsub fast float %7853, %7845
  %7866 = fsub fast float %7854, %7846
  %7867 = fsub fast float %7855, %7847
  %7868 = fmul fast float %7865, %7829
  %7869 = fmul fast float %7866, %7829
  %7870 = fmul fast float %7867, %7829
  %7871 = fsub fast float %7845, %7862
  %7872 = fadd fast float %7871, %7868
  %7873 = fsub fast float %7846, %7863
  %7874 = fadd fast float %7873, %7869
  %7875 = fsub fast float %7847, %7864
  %7876 = fadd fast float %7875, %7870
  %7877 = fmul fast float %7872, %7817
  %7878 = fmul fast float %7874, %7817
  %7879 = fmul fast float %7876, %7817
  %7880 = fadd fast float %7877, %7862
  %7881 = fadd fast float %7878, %7863
  %7882 = fadd fast float %7879, %7864
  %7883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7884 = extractvalue %dx.types.CBufRet.f32 %7883, 1
  %7885 = fmul fast float %7880, %7884
  %7886 = fmul fast float %7881, %7884
  %7887 = fmul fast float %7882, %7884
  br label %7888

; <label>:7888                                    ; preds = %7720, %7689
  %7889 = phi float [ %7759, %7720 ], [ 1.000000e+00, %7689 ]
  %7890 = phi float [ %7760, %7720 ], [ 1.000000e+00, %7689 ]
  %7891 = phi float [ %7761, %7720 ], [ 1.000000e+00, %7689 ]
  %7892 = phi float [ %7885, %7720 ], [ 0.000000e+00, %7689 ]
  %7893 = phi float [ %7886, %7720 ], [ 0.000000e+00, %7689 ]
  %7894 = phi float [ %7887, %7720 ], [ 0.000000e+00, %7689 ]
  %7895 = fmul fast float %7892, %7662
  %7896 = fmul fast float %7893, %7664
  %7897 = fmul fast float %7894, %7666
  %7898 = call float @dx.op.dot3.f32(i32 55, float %7889, float %7890, float %7891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7899 = call float @dx.op.dot3.f32(i32 55, float %7895, float %7896, float %7897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7900 = select i1 %265, float %7898, float %7889
  %7901 = select i1 %265, float %7898, float %7890
  %7902 = select i1 %265, float 1.000000e+00, float %7891
  %7903 = select i1 %265, float %7899, float %7895
  %7904 = select i1 %265, float 0.000000e+00, float %7896
  %7905 = select i1 %265, float 0.000000e+00, float %7897
  %7906 = fmul fast float %7900, %7679
  %7907 = fmul fast float %7901, %7680
  %7908 = fmul fast float %7902, %7681
  %7909 = fadd fast float %7906, %7903
  %7910 = fadd fast float %7907, %7904
  %7911 = fadd fast float %7905, %7908
  %7912 = fmul fast float %7900, %7654
  %7913 = fmul fast float %7901, %7655
  %7914 = fmul fast float %7902, %7656
  %7915 = fmul fast float %142, %7691
  %7916 = fmul fast float %144, %7692
  %7917 = fsub fast float 1.000000e+00, %7915
  %7918 = fsub fast float 1.000000e+00, %7916
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 0
  %7921 = extractvalue %dx.types.CBufRet.f32 %7919, 1
  %7922 = extractvalue %dx.types.CBufRet.f32 %7919, 2
  %7923 = fmul fast float %7917, %7920
  %7924 = fmul fast float %7917, %7921
  %7925 = fmul fast float %7917, %7922
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7930 = fmul fast float %7918, %7927
  %7931 = fmul fast float %7918, %7928
  %7932 = fmul fast float %7918, %7929
  %7933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.f32 %7933, 0
  %7935 = extractvalue %dx.types.CBufRet.f32 %7933, 1
  %7936 = extractvalue %dx.types.CBufRet.f32 %7933, 2
  %7937 = fadd fast float %7930, %7934
  %7938 = fadd fast float %7937, %7923
  %7939 = fadd fast float %7931, %7935
  %7940 = fadd fast float %7939, %7924
  %7941 = fadd fast float %7932, %7936
  %7942 = fadd fast float %7941, %7925
  %7943 = fmul fast float %7938, %228
  %7944 = fmul fast float %7940, %228
  %7945 = fmul fast float %7942, %228
  br label %7946

; <label>:7946                                    ; preds = %7888, %7653
  %7947 = phi float [ %7943, %7888 ], [ %193, %7653 ]
  %7948 = phi float [ %7944, %7888 ], [ %194, %7653 ]
  %7949 = phi float [ %7945, %7888 ], [ %195, %7653 ]
  %7950 = phi float [ %228, %7888 ], [ %97, %7653 ]
  %7951 = phi float [ %7909, %7888 ], [ %7679, %7653 ]
  %7952 = phi float [ %7910, %7888 ], [ %7680, %7653 ]
  %7953 = phi float [ %7911, %7888 ], [ %7681, %7653 ]
  %7954 = phi float [ %7912, %7888 ], [ %7654, %7653 ]
  %7955 = phi float [ %7913, %7888 ], [ %7655, %7653 ]
  %7956 = phi float [ %7914, %7888 ], [ %7656, %7653 ]
  %7957 = phi float [ %7889, %7888 ], [ 1.000000e+00, %7653 ]
  br i1 %7688, label %9112, label %7958

; <label>:7958                                    ; preds = %7946
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.CBufRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.CBufRet.f32 %7959, 2
  %7963 = extractvalue %dx.types.CBufRet.f32 %7959, 3
  %7964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7965 = extractvalue %dx.types.CBufRet.f32 %7964, 0
  %7966 = extractvalue %dx.types.CBufRet.f32 %7964, 1
  %7967 = extractvalue %dx.types.CBufRet.f32 %7964, 2
  %7968 = extractvalue %dx.types.CBufRet.f32 %7964, 3
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.CBufRet.f32 %7969, 1
  %7972 = extractvalue %dx.types.CBufRet.f32 %7969, 2
  %7973 = extractvalue %dx.types.CBufRet.f32 %7969, 3
  %7974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7975 = extractvalue %dx.types.CBufRet.f32 %7974, 0
  %7976 = extractvalue %dx.types.CBufRet.f32 %7974, 1
  %7977 = extractvalue %dx.types.CBufRet.f32 %7974, 2
  %7978 = extractvalue %dx.types.CBufRet.f32 %7974, 3
  %7979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7980 = extractvalue %dx.types.CBufRet.f32 %7979, 3
  %7981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7982 = extractvalue %dx.types.CBufRet.f32 %7981, 3
  %7983 = extractvalue %dx.types.CBufRet.f32 %7981, 0
  %7984 = extractvalue %dx.types.CBufRet.f32 %7981, 1
  %7985 = extractvalue %dx.types.CBufRet.f32 %7981, 2
  %7986 = fcmp fast olt float %7985, -5.000000e-01
  %7987 = call float @dx.op.dot3.f32(i32 55, float %7947, float %7948, float %7949, float %7947, float %7948, float %7949)  ; Dot3(ax,ay,az,bx,by,bz)
  %7988 = call float @dx.op.unary.f32(i32 25, float %7987)  ; Rsqrt(value)
  %7989 = fmul fast float %7988, %7987
  %7990 = fmul fast float %7988, %7947
  %7991 = fmul fast float %7988, %7948
  %7992 = fmul fast float %7988, %7949
  %7993 = fadd fast float %7989, %7963
  %7994 = call float @dx.op.dot3.f32(i32 55, float %7990, float %7991, float %7992, float %7960, float %7961, float %7962)  ; Dot3(ax,ay,az,bx,by,bz)
  %7995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7996 = extractvalue %dx.types.CBufRet.i32 %7995, 1
  %7997 = and i32 %7996, 1
  %7998 = icmp ne i32 %7997, 0
  %7999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8000 = extractvalue %dx.types.CBufRet.f32 %7999, 2
  %8001 = fcmp fast ogt float %8000, 0.000000e+00
  %8002 = and i1 %7998, %8001
  br i1 %8002, label %8003, label %8409, !dx.controlflow.hints !127

; <label>:8003                                    ; preds = %7958
  %8004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8005 = extractvalue %dx.types.CBufRet.f32 %8004, 3
  %8006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8007 = extractvalue %dx.types.CBufRet.f32 %8006, 2
  %8008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8009 = extractvalue %dx.types.CBufRet.f32 %8008, 2
  %8010 = fsub fast float %8007, %8009
  %8011 = and i32 %7996, 2
  %8012 = extractvalue %dx.types.CBufRet.i32 %7995, 0
  %8013 = call i32 @dx.op.binary.i32(i32 40, i32 %8012, i32 3)  ; UMin(a,b)
  %8014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8015 = extractvalue %dx.types.CBufRet.f32 %8014, 0
  %8016 = extractvalue %dx.types.CBufRet.f32 %8014, 1
  %8017 = extractvalue %dx.types.CBufRet.f32 %8008, 0
  %8018 = extractvalue %dx.types.CBufRet.f32 %8008, 1
  %8019 = fsub fast float %8015, %8017
  %8020 = fsub fast float %8016, %8018
  %8021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8021, 0
  %8023 = fcmp fast ogt float %8022, 0.000000e+00
  %8024 = fsub fast float -0.000000e+00, %8019
  %8025 = fsub fast float -0.000000e+00, %8020
  %8026 = call float @dx.op.dot2.f32(i32 54, float %7990, float %7991, float %7990, float %7991)  ; Dot2(ax,ay,bx,by)
  %8027 = call float @dx.op.dot2.f32(i32 54, float %7990, float %7991, float %8024, float %8025)  ; Dot2(ax,ay,bx,by)
  %8028 = fmul fast float %8027, 2.000000e+00
  %8029 = call float @dx.op.dot2.f32(i32 54, float %8024, float %8025, float %8024, float %8025)  ; Dot2(ax,ay,bx,by)
  %8030 = fmul fast float %8022, %8022
  %8031 = fsub fast float %8029, %8030
  %8032 = fmul fast float %8028, %8028
  %8033 = fmul fast float %8026, 4.000000e+00
  %8034 = fmul fast float %8033, %8031
  %8035 = fsub fast float %8032, %8034
  %8036 = fcmp fast ogt float %8035, 0.000000e+00
  br i1 %8036, label %8037, label %8052

; <label>:8037                                    ; preds = %8003
  %8038 = fcmp fast ogt float %8028, 0.000000e+00
  %8039 = call float @dx.op.unary.f32(i32 24, float %8035)  ; Sqrt(value)
  %8040 = fsub fast float -0.000000e+00, %8039
  %8041 = select i1 %8038, float %8039, float %8040
  %8042 = fadd fast float %8041, %8028
  %8043 = fmul float %8042, -5.000000e-01
  %8044 = fdiv fast float %8043, %8026
  %8045 = call float @dx.op.binary.f32(i32 35, float %8044, float 0.000000e+00)  ; FMax(a,b)
  %8046 = call float @dx.op.binary.f32(i32 36, float %7989, float %8045)  ; FMin(a,b)
  %8047 = fdiv fast float %8031, %8043
  %8048 = call float @dx.op.binary.f32(i32 35, float %8047, float 0.000000e+00)  ; FMax(a,b)
  %8049 = call float @dx.op.binary.f32(i32 36, float %7989, float %8048)  ; FMin(a,b)
  %8050 = call float @dx.op.binary.f32(i32 36, float %8046, float %8049)  ; FMin(a,b)
  %8051 = call float @dx.op.binary.f32(i32 35, float %8046, float %8049)  ; FMax(a,b)
  br label %8052

; <label>:8052                                    ; preds = %8037, %8003
  %8053 = phi float [ %8051, %8037 ], [ -1.000000e+00, %8003 ]
  %8054 = phi float [ %8050, %8037 ], [ -1.000000e+00, %8003 ]
  %8055 = phi i1 [ true, %8037 ], [ false, %8003 ]
  %8056 = and i1 %8023, %8055
  br i1 %8056, label %8057, label %8059

; <label>:8057                                    ; preds = %8052
  %8058 = fcmp fast oeq float %8054, %8053
  br i1 %8058, label %8362, label %8060

; <label>:8059                                    ; preds = %8052
  br i1 %8023, label %8362, label %8060

; <label>:8060                                    ; preds = %8059, %8057
  %8061 = phi float [ %7989, %8059 ], [ %8053, %8057 ]
  %8062 = phi float [ 0.000000e+00, %8059 ], [ %8054, %8057 ]
  %8063 = icmp ne i32 %8011, 0
  %8064 = fmul fast float %8061, %7992
  %8065 = fadd fast float %8064, %8005
  %8066 = fmul fast float %8065, %8061
  %8067 = select i1 %8063, float 0.000000e+00, float %8066
  %8068 = fcmp fast oeq float %7992, 0.000000e+00
  %8069 = fdiv fast float %8010, %7992
  %8070 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8069)  ; FMax(a,b)
  %8071 = select i1 %8068, float %8061, float %8070
  %8072 = call float @dx.op.binary.f32(i32 36, float %8061, float %8071)  ; FMin(a,b)
  %8073 = fcmp fast ogt float %7992, 0.000000e+00
  %8074 = fcmp fast olt float %8010, 0.000000e+00
  br i1 %8073, label %8075, label %8132

; <label>:8075                                    ; preds = %8060
  %8076 = icmp eq i32 %8011, 0
  br i1 %8074, label %8077, label %8121

; <label>:8077                                    ; preds = %8075
  %8078 = select i1 %8076, float %8061, float 0.000000e+00
  %8079 = fsub fast float -0.000000e+00, %8078
  %8080 = call float @dx.op.unary.f32(i32 6, float %8079)  ; FAbs(value)
  %8081 = fmul fast float %8078, %7992
  %8082 = fadd fast float %8081, %8005
  %8083 = fmul fast float %8080, %8082
  %8084 = fsub fast float %8067, %8083
  %8085 = fsub fast float %8061, %8080
  %8086 = select i1 %8076, float %8085, float 0.000000e+00
  %8087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8088 = extractvalue %dx.types.CBufRet.f32 %8087, 0
  %8089 = extractvalue %dx.types.CBufRet.f32 %8087, 1
  %8090 = extractvalue %dx.types.CBufRet.f32 %8087, 2
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 0
  %8093 = extractvalue %dx.types.CBufRet.f32 %8091, 1
  %8094 = extractvalue %dx.types.CBufRet.f32 %8091, 2
  %8095 = extractvalue %dx.types.CBufRet.f32 %8091, 3
  %8096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8097 = extractvalue %dx.types.CBufRet.f32 %8096, 3
  %8098 = call float @dx.op.binary.f32(i32 36, float %8084, float %8097)  ; FMin(a,b)
  %8099 = fmul fast float %8095, %8086
  %8100 = call float @dx.op.unary.f32(i32 7, float %8099)  ; Saturate(value)
  %8101 = fsub fast float %8092, %8088
  %8102 = fsub fast float %8093, %8089
  %8103 = fsub fast float %8094, %8090
  %8104 = fmul fast float %8100, %8101
  %8105 = fmul fast float %8100, %8102
  %8106 = fmul fast float %8100, %8103
  %8107 = fadd fast float %8104, %8088
  %8108 = fadd fast float %8105, %8089
  %8109 = fadd fast float %8106, %8090
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 0
  %8112 = extractvalue %dx.types.CBufRet.f32 %8110, 1
  %8113 = fadd fast float %8112, %8111
  %8114 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8110, 2
  %8116 = extractvalue %dx.types.CBufRet.f32 %8110, 3
  %8117 = fadd fast float %8116, %8115
  %8118 = call float @dx.op.unary.f32(i32 7, float %8117)  ; Saturate(value)
  %8119 = fmul fast float %8114, %8098
  %8120 = fmul fast float %8119, %8118
  br label %8362

; <label>:8121                                    ; preds = %8075
  br i1 %8076, label %8122, label %8143

; <label>:8122                                    ; preds = %8121
  %8123 = call float @dx.op.binary.f32(i32 36, float %8072, float %8062)  ; FMin(a,b)
  %8124 = fsub fast float %8072, %8123
  %8125 = fsub fast float %8124, %8061
  %8126 = call float @dx.op.unary.f32(i32 6, float %8125)  ; FAbs(value)
  %8127 = fadd fast float %8124, %8061
  %8128 = fmul fast float %8127, %7992
  %8129 = fadd fast float %8128, %8005
  %8130 = fmul fast float %8129, %8126
  %8131 = fsub fast float %8067, %8130
  br label %8143

; <label>:8132                                    ; preds = %8060
  br i1 %8074, label %8133, label %8143

; <label>:8133                                    ; preds = %8132
  %8134 = call float @dx.op.binary.f32(i32 35, float %8062, float %8072)  ; FMax(a,b)
  %8135 = icmp eq i32 %8011, 0
  %8136 = select i1 %8135, float %8072, float 0.000000e+00
  %8137 = fsub fast float -0.000000e+00, %8136
  %8138 = call float @dx.op.unary.f32(i32 6, float %8137)  ; FAbs(value)
  %8139 = fmul fast float %8136, %7992
  %8140 = fadd fast float %8139, %8005
  %8141 = fmul fast float %8138, %8140
  %8142 = fsub fast float %8067, %8141
  br label %8143

; <label>:8143                                    ; preds = %8133, %8132, %8122, %8121
  %8144 = phi float [ %8062, %8121 ], [ %8062, %8122 ], [ %8134, %8133 ], [ %8062, %8132 ]
  %8145 = phi float [ 0.000000e+00, %8121 ], [ %8126, %8122 ], [ %8138, %8133 ], [ 0.000000e+00, %8132 ]
  %8146 = phi float [ %8067, %8121 ], [ %8131, %8122 ], [ %8142, %8133 ], [ %8067, %8132 ]
  %8147 = phi float [ %8072, %8121 ], [ %8072, %8122 ], [ %8061, %8133 ], [ %8061, %8132 ]
  %8148 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 0
  store float -1.000000e+00, float* %8148, align 4, !tbaa !128, !noalias !130
  %8149 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 1
  store float -1.000000e+00, float* %8149, align 4, !tbaa !128, !noalias !130
  %8150 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 2
  store float -1.000000e+00, float* %8150, align 4, !tbaa !128, !noalias !130
  %8151 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %8151, align 4, !tbaa !128, !noalias !130
  %8152 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %8152, align 4, !tbaa !128, !noalias !130
  %8153 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %8153, align 4, !tbaa !128, !noalias !130
  %8154 = icmp sgt i32 %8013, 0
  br i1 %8154, label %8155, label %8216

; <label>:8155                                    ; preds = %8143
  br label %8156

; <label>:8156                                    ; preds = %8205, %8155
  %8157 = phi i32 [ %8206, %8205 ], [ 0, %8155 ]
  %8158 = phi i32 [ %8207, %8205 ], [ 0, %8155 ]
  %8159 = add nuw i32 %8158, 171
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %8159)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8164 = extractvalue %dx.types.CBufRet.f32 %8163, 0
  %8165 = extractvalue %dx.types.CBufRet.f32 %8163, 1
  %8166 = fsub fast float %8161, %8164
  %8167 = fsub fast float %8162, %8165
  %8168 = extractvalue %dx.types.CBufRet.f32 %8160, 2
  %8169 = fsub fast float -0.000000e+00, %8166
  %8170 = fsub fast float -0.000000e+00, %8167
  %8171 = call float @dx.op.dot2.f32(i32 54, float %7990, float %7991, float %8169, float %8170)  ; Dot2(ax,ay,bx,by)
  %8172 = fmul fast float %8171, 2.000000e+00
  %8173 = call float @dx.op.dot2.f32(i32 54, float %8169, float %8170, float %8169, float %8170)  ; Dot2(ax,ay,bx,by)
  %8174 = fmul fast float %8168, %8168
  %8175 = fsub fast float %8173, %8174
  %8176 = fmul fast float %8172, %8172
  %8177 = fmul fast float %8033, %8175
  %8178 = fsub fast float %8176, %8177
  %8179 = fcmp fast ogt float %8178, 0.000000e+00
  br i1 %8179, label %8180, label %8195

; <label>:8180                                    ; preds = %8156
  %8181 = fcmp fast ogt float %8172, 0.000000e+00
  %8182 = call float @dx.op.unary.f32(i32 24, float %8178)  ; Sqrt(value)
  %8183 = fsub fast float -0.000000e+00, %8182
  %8184 = select i1 %8181, float %8182, float %8183
  %8185 = fadd fast float %8184, %8172
  %8186 = fmul float %8185, -5.000000e-01
  %8187 = fdiv fast float %8186, %8026
  %8188 = call float @dx.op.binary.f32(i32 35, float %8187, float 0.000000e+00)  ; FMax(a,b)
  %8189 = call float @dx.op.binary.f32(i32 36, float %8061, float %8188)  ; FMin(a,b)
  %8190 = fdiv fast float %8175, %8186
  %8191 = call float @dx.op.binary.f32(i32 35, float %8190, float 0.000000e+00)  ; FMax(a,b)
  %8192 = call float @dx.op.binary.f32(i32 36, float %8061, float %8191)  ; FMin(a,b)
  %8193 = call float @dx.op.binary.f32(i32 36, float %8189, float %8192)  ; FMin(a,b)
  %8194 = call float @dx.op.binary.f32(i32 35, float %8189, float %8192)  ; FMax(a,b)
  br label %8195

; <label>:8195                                    ; preds = %8180, %8156
  %8196 = phi float [ %8194, %8180 ], [ -1.000000e+00, %8156 ]
  %8197 = phi float [ %8193, %8180 ], [ -1.000000e+00, %8156 ]
  %8198 = phi i1 [ true, %8180 ], [ false, %8156 ]
  br i1 %8198, label %8199, label %8205

; <label>:8199                                    ; preds = %8195
  %8200 = call float @dx.op.binary.f32(i32 35, float %8144, float %8197)  ; FMax(a,b)
  %8201 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8158
  store float %8200, float* %8201, align 4, !tbaa !128, !noalias !130
  %8202 = call float @dx.op.binary.f32(i32 35, float %8144, float %8196)  ; FMax(a,b)
  %8203 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8158
  store float %8202, float* %8203, align 4, !tbaa !128, !noalias !130
  %8204 = add nsw i32 %8157, 1
  br label %8205

; <label>:8205                                    ; preds = %8199, %8195
  %8206 = phi i32 [ %8204, %8199 ], [ %8157, %8195 ]
  %8207 = add nuw nsw i32 %8158, 1
  %8208 = icmp eq i32 %8207, %8013
  br i1 %8208, label %8209, label %8156

; <label>:8209                                    ; preds = %8205
  %8210 = load float, float* %8150, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %8211 = load float, float* %8149, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  %8212 = load float, float* %8148, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  %8213 = load float, float* %8153, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %8214 = load float, float* %8152, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  %8215 = load float, float* %8151, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  br label %8216

; <label>:8216                                    ; preds = %8209, %8143
  %8217 = phi float [ -1.000000e+00, %8143 ], [ %8215, %8209 ]
  %8218 = phi float [ -1.000000e+00, %8143 ], [ %8214, %8209 ]
  %8219 = phi float [ -1.000000e+00, %8143 ], [ %8213, %8209 ]
  %8220 = phi float [ -1.000000e+00, %8143 ], [ %8212, %8209 ]
  %8221 = phi float [ -1.000000e+00, %8143 ], [ %8211, %8209 ]
  %8222 = phi float [ -1.000000e+00, %8143 ], [ %8210, %8209 ]
  %8223 = phi i32 [ 0, %8143 ], [ %8206, %8209 ]
  %8224 = call float @dx.op.binary.f32(i32 36, float %8221, float %8222)  ; FMin(a,b)
  %8225 = call float @dx.op.binary.f32(i32 36, float %8220, float %8224)  ; FMin(a,b)
  %8226 = call float @dx.op.binary.f32(i32 35, float %8220, float %8221)  ; FMax(a,b)
  %8227 = call float @dx.op.binary.f32(i32 36, float %8226, float %8222)  ; FMin(a,b)
  %8228 = call float @dx.op.binary.f32(i32 36, float %8220, float %8221)  ; FMin(a,b)
  %8229 = call float @dx.op.binary.f32(i32 35, float %8228, float %8227)  ; FMax(a,b)
  %8230 = call float @dx.op.binary.f32(i32 35, float %8221, float %8222)  ; FMax(a,b)
  %8231 = call float @dx.op.binary.f32(i32 35, float %8220, float %8230)  ; FMax(a,b)
  store float %8225, float* %8148, align 4, !tbaa !128, !alias.scope !154, !noalias !155
  store float %8229, float* %8149, align 4, !tbaa !128, !alias.scope !152, !noalias !153
  store float %8231, float* %8150, align 4, !tbaa !128, !alias.scope !146, !noalias !149
  %8232 = call float @dx.op.binary.f32(i32 36, float %8218, float %8219)  ; FMin(a,b)
  %8233 = call float @dx.op.binary.f32(i32 36, float %8217, float %8232)  ; FMin(a,b)
  %8234 = call float @dx.op.binary.f32(i32 35, float %8217, float %8218)  ; FMax(a,b)
  %8235 = call float @dx.op.binary.f32(i32 36, float %8234, float %8219)  ; FMin(a,b)
  %8236 = call float @dx.op.binary.f32(i32 36, float %8217, float %8218)  ; FMin(a,b)
  %8237 = call float @dx.op.binary.f32(i32 35, float %8236, float %8235)  ; FMax(a,b)
  %8238 = call float @dx.op.binary.f32(i32 35, float %8218, float %8219)  ; FMax(a,b)
  %8239 = call float @dx.op.binary.f32(i32 35, float %8217, float %8238)  ; FMax(a,b)
  store float %8233, float* %8151, align 4, !tbaa !128, !alias.scope !164, !noalias !165
  store float %8237, float* %8152, align 4, !tbaa !128, !alias.scope !162, !noalias !163
  store float %8239, float* %8153, align 4, !tbaa !128, !alias.scope !156, !noalias !159
  %8240 = sub nsw i32 3, %8223
  %8241 = icmp sgt i32 %8240, 2
  br i1 %8241, label %8242, label %8280

; <label>:8242                                    ; preds = %8216
  %8243 = icmp eq i32 %8011, 0
  %8244 = fsub fast float %8061, %8145
  %8245 = select i1 %8243, float %8244, float %8145
  %8246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8247 = extractvalue %dx.types.CBufRet.f32 %8246, 0
  %8248 = extractvalue %dx.types.CBufRet.f32 %8246, 1
  %8249 = extractvalue %dx.types.CBufRet.f32 %8246, 2
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 0
  %8252 = extractvalue %dx.types.CBufRet.f32 %8250, 1
  %8253 = extractvalue %dx.types.CBufRet.f32 %8250, 2
  %8254 = extractvalue %dx.types.CBufRet.f32 %8250, 3
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 3
  %8257 = call float @dx.op.binary.f32(i32 36, float %8146, float %8256)  ; FMin(a,b)
  %8258 = fmul fast float %8254, %8245
  %8259 = call float @dx.op.unary.f32(i32 7, float %8258)  ; Saturate(value)
  %8260 = fsub fast float %8251, %8247
  %8261 = fsub fast float %8252, %8248
  %8262 = fsub fast float %8253, %8249
  %8263 = fmul fast float %8259, %8260
  %8264 = fmul fast float %8259, %8261
  %8265 = fmul fast float %8259, %8262
  %8266 = fadd fast float %8263, %8247
  %8267 = fadd fast float %8264, %8248
  %8268 = fadd fast float %8265, %8249
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 0
  %8271 = extractvalue %dx.types.CBufRet.f32 %8269, 1
  %8272 = fadd fast float %8271, %8270
  %8273 = call float @dx.op.unary.f32(i32 7, float %8272)  ; Saturate(value)
  %8274 = extractvalue %dx.types.CBufRet.f32 %8269, 2
  %8275 = extractvalue %dx.types.CBufRet.f32 %8269, 3
  %8276 = fadd fast float %8275, %8274
  %8277 = call float @dx.op.unary.f32(i32 7, float %8276)  ; Saturate(value)
  %8278 = fmul fast float %8273, %8257
  %8279 = fmul fast float %8278, %8277
  br label %8362

; <label>:8280                                    ; preds = %8216
  %8281 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8240
  %8282 = load float, float* %8281, align 4, !tbaa !128, !noalias !130
  %8283 = fcmp fast olt float %8282, %8147
  %8284 = icmp sgt i32 %8223, 0
  %8285 = and i1 %8284, %8283
  br i1 %8285, label %8286, label %8323

; <label>:8286                                    ; preds = %8280
  br label %8287

; <label>:8287                                    ; preds = %8316, %8286
  %8288 = phi float [ %8317, %8316 ], [ %8145, %8286 ]
  %8289 = phi float [ %8318, %8316 ], [ %8146, %8286 ]
  %8290 = phi float [ %8298, %8316 ], [ %8282, %8286 ]
  %8291 = phi i32 [ %8295, %8316 ], [ %8240, %8286 ]
  %8292 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8291
  %8293 = load float, float* %8292, align 4, !tbaa !128, !noalias !130
  %8294 = icmp slt i32 %8291, 2
  %8295 = add nsw i32 %8291, 1
  %8296 = getelementptr inbounds [3 x float], [3 x float]* %100, i32 0, i32 %8295
  %8297 = load float, float* %8296, align 4, !tbaa !128, !noalias !130
  %8298 = select i1 %8294, float %8297, float %8061
  %8299 = call float @dx.op.binary.f32(i32 36, float %8298, float %8293)  ; FMin(a,b)
  %8300 = call float @dx.op.binary.f32(i32 36, float %8147, float %8299)  ; FMin(a,b)
  %8301 = icmp eq i32 %8011, 0
  %8302 = fadd fast float %8300, %8290
  %8303 = fmul fast float %8302, %7992
  %8304 = fadd fast float %8303, %8005
  br i1 %8301, label %8310, label %8305

; <label>:8305                                    ; preds = %8287
  %8306 = fsub fast float %8300, %8290
  %8307 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8306)  ; FMax(a,b)
  %8308 = fmul fast float %8307, %8304
  %8309 = fadd fast float %8308, %8289
  br label %8316

; <label>:8310                                    ; preds = %8287
  %8311 = fsub fast float %8290, %8300
  %8312 = call float @dx.op.unary.f32(i32 6, float %8311)  ; FAbs(value)
  %8313 = fadd fast float %8312, %8288
  %8314 = fmul fast float %8312, %8304
  %8315 = fsub fast float %8289, %8314
  br label %8316

; <label>:8316                                    ; preds = %8310, %8305
  %8317 = phi float [ %8307, %8305 ], [ %8313, %8310 ]
  %8318 = phi float [ %8309, %8305 ], [ %8315, %8310 ]
  %8319 = fcmp fast olt float %8298, %8147
  %8320 = icmp slt i32 %8295, 3
  %8321 = and i1 %8320, %8319
  br i1 %8321, label %8287, label %8322

; <label>:8322                                    ; preds = %8316
  br label %8323

; <label>:8323                                    ; preds = %8322, %8280
  %8324 = phi float [ %8145, %8280 ], [ %8317, %8322 ]
  %8325 = phi float [ %8146, %8280 ], [ %8318, %8322 ]
  %8326 = fsub fast float %8061, %8324
  %8327 = select i1 %8063, float %8324, float %8326
  %8328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.f32 %8328, 0
  %8330 = extractvalue %dx.types.CBufRet.f32 %8328, 1
  %8331 = extractvalue %dx.types.CBufRet.f32 %8328, 2
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 0
  %8334 = extractvalue %dx.types.CBufRet.f32 %8332, 1
  %8335 = extractvalue %dx.types.CBufRet.f32 %8332, 2
  %8336 = extractvalue %dx.types.CBufRet.f32 %8332, 3
  %8337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8338 = extractvalue %dx.types.CBufRet.f32 %8337, 3
  %8339 = call float @dx.op.binary.f32(i32 36, float %8325, float %8338)  ; FMin(a,b)
  %8340 = fmul fast float %8336, %8327
  %8341 = call float @dx.op.unary.f32(i32 7, float %8340)  ; Saturate(value)
  %8342 = fsub fast float %8333, %8329
  %8343 = fsub fast float %8334, %8330
  %8344 = fsub fast float %8335, %8331
  %8345 = fmul fast float %8341, %8342
  %8346 = fmul fast float %8341, %8343
  %8347 = fmul fast float %8341, %8344
  %8348 = fadd fast float %8345, %8329
  %8349 = fadd fast float %8346, %8330
  %8350 = fadd fast float %8347, %8331
  %8351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8352 = extractvalue %dx.types.CBufRet.f32 %8351, 0
  %8353 = extractvalue %dx.types.CBufRet.f32 %8351, 1
  %8354 = fadd fast float %8353, %8352
  %8355 = call float @dx.op.unary.f32(i32 7, float %8354)  ; Saturate(value)
  %8356 = extractvalue %dx.types.CBufRet.f32 %8351, 2
  %8357 = extractvalue %dx.types.CBufRet.f32 %8351, 3
  %8358 = fadd fast float %8357, %8356
  %8359 = call float @dx.op.unary.f32(i32 7, float %8358)  ; Saturate(value)
  %8360 = fmul fast float %8355, %8339
  %8361 = fmul fast float %8360, %8359
  br label %8362

; <label>:8362                                    ; preds = %8323, %8242, %8077, %8059, %8057
  %8363 = phi float [ %8086, %8077 ], [ %8245, %8242 ], [ %8327, %8323 ], [ 0.000000e+00, %8057 ], [ 0.000000e+00, %8059 ]
  %8364 = phi float [ %8120, %8077 ], [ %8279, %8242 ], [ %8361, %8323 ], [ 0.000000e+00, %8057 ], [ 0.000000e+00, %8059 ]
  %8365 = phi float [ %8107, %8077 ], [ %8266, %8242 ], [ %8348, %8323 ], [ 0.000000e+00, %8057 ], [ 0.000000e+00, %8059 ]
  %8366 = phi float [ %8108, %8077 ], [ %8267, %8242 ], [ %8349, %8323 ], [ 0.000000e+00, %8057 ], [ 0.000000e+00, %8059 ]
  %8367 = phi float [ %8109, %8077 ], [ %8268, %8242 ], [ %8350, %8323 ], [ 0.000000e+00, %8057 ], [ 0.000000e+00, %8059 ]
  %8368 = fmul fast float %8000, %8364
  %8369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8370 = extractvalue %dx.types.CBufRet.f32 %8369, 2
  %8371 = fsub fast float %8007, %8370
  %8372 = fcmp fast olt float %8368, -2.000000e+01
  %8373 = call float @dx.op.unary.f32(i32 21, float %8368)  ; Exp(value)
  %8374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.f32 %8374, 2
  %8376 = extractvalue %dx.types.CBufRet.f32 %8374, 3
  %8377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8378 = extractvalue %dx.types.CBufRet.f32 %8377, 2
  %8379 = fmul fast float %8376, %8371
  %8380 = call float @dx.op.unary.f32(i32 7, float %8379)  ; Saturate(value)
  %8381 = fsub fast float 1.000000e+00, %8380
  %8382 = fmul fast float %7992, 5.000000e-01
  %8383 = fadd fast float %8382, 5.000000e-01
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = fsub fast float 1.000000e+00, %8384
  %8386 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8381)  ; FMax(a,b)
  %8387 = fdiv fast float %8385, %8386
  %8388 = fsub fast float %8371, %7949
  %8389 = call float @dx.op.unary.f32(i32 6, float %8388)  ; FAbs(value)
  %8390 = fmul fast float %8389, %8375
  %8391 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  %8392 = fsub fast float 1.000000e+00, %8390
  %8393 = fmul fast float %8392, %8391
  %8394 = fadd fast float %8393, %8390
  %8395 = fmul fast float %8378, %8371
  %8396 = call float @dx.op.unary.f32(i32 7, float %8395)  ; Saturate(value)
  %8397 = fsub fast float 1.000000e+00, %8394
  %8398 = fmul fast float %8397, %8396
  %8399 = fadd fast float %8398, %8394
  %8400 = call float @dx.op.unary.f32(i32 7, float %8399)  ; Saturate(value)
  %8401 = fadd fast float %8373, -1.000000e+00
  %8402 = select i1 %8372, float -1.000000e+00, float %8401
  %8403 = fmul fast float %8400, %8402
  %8404 = fadd fast float %8403, 1.000000e+00
  %8405 = fsub fast float -0.000000e+00, %8403
  %8406 = fmul fast float %8365, %8405
  %8407 = fmul fast float %8366, %8405
  %8408 = fmul fast float %8367, %8405
  br label %8409

; <label>:8409                                    ; preds = %8362, %7958
  %8410 = phi float [ %8363, %8362 ], [ 0.000000e+00, %7958 ]
  %8411 = phi float [ %8404, %8362 ], [ 1.000000e+00, %7958 ]
  %8412 = phi float [ %8406, %8362 ], [ 0.000000e+00, %7958 ]
  %8413 = phi float [ %8407, %8362 ], [ 0.000000e+00, %7958 ]
  %8414 = phi float [ %8408, %8362 ], [ 0.000000e+00, %7958 ]
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8417 = fsub fast float 1.000000e+00, %8411
  %8418 = fmul fast float %8417, %7993
  %8419 = fmul fast float %8418, %8416
  %8420 = fsub fast float %7993, %8419
  br i1 %7986, label %8421, label %8450, !dx.controlflow.hints !166

; <label>:8421                                    ; preds = %8409
  %8422 = fmul fast float %7994, %7983
  %8423 = fadd fast float %8422, %7984
  %8424 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8425 = fmul fast float %7965, %8420
  %8426 = fsub fast float -0.000000e+00, %8425
  %8427 = fmul fast float %7966, %8420
  %8428 = fsub fast float -0.000000e+00, %8427
  %8429 = call float @dx.op.unary.f32(i32 21, float %8426)  ; Exp(value)
  %8430 = call float @dx.op.unary.f32(i32 21, float %8428)  ; Exp(value)
  %8431 = call float @dx.op.binary.f32(i32 35, float %7973, float %8429)  ; FMax(a,b)
  %8432 = call float @dx.op.binary.f32(i32 35, float %7973, float %8430)  ; FMax(a,b)
  %8433 = fsub fast float %8432, %8431
  %8434 = fmul fast float %8433, %8424
  %8435 = fadd fast float %8434, %8431
  %8436 = call float @dx.op.unary.f32(i32 7, float %8435)  ; Saturate(value)
  %8437 = fsub fast float %7970, %7975
  %8438 = fsub fast float %7971, %7976
  %8439 = fsub fast float %7972, %7977
  %8440 = fmul fast float %8424, %8437
  %8441 = fmul fast float %8424, %8438
  %8442 = fmul fast float %8424, %8439
  %8443 = fadd fast float %8440, %7975
  %8444 = fadd fast float %8441, %7976
  %8445 = fadd fast float %8442, %7977
  %8446 = fsub fast float 1.000000e+00, %8436
  %8447 = fmul fast float %8446, %8443
  %8448 = fmul fast float %8446, %8444
  %8449 = fmul fast float %8446, %8445
  br label %8509

; <label>:8450                                    ; preds = %8409
  %8451 = fmul fast float %8420, %7982
  %8452 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8453 = fsub fast float 2.000000e+00, %8452
  %8454 = fmul fast float %8452, 9.921875e-01
  %8455 = fmul fast float %8454, %8453
  %8456 = fadd fast float %8455, 3.906250e-03
  %8457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8456, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8458 = extractvalue %dx.types.ResRet.f32 %8457, 0
  %8459 = fsub fast float %8452, %8458
  %8460 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8459)  ; FMax(a,b)
  %8461 = fmul fast float %7968, %7949
  %8462 = call float @dx.op.unary.f32(i32 6, float %8461)  ; FAbs(value)
  %8463 = fcmp fast ogt float %8462, 0x3EB0C6F7A0000000
  br i1 %8463, label %8464, label %8470, !dx.controlflow.hints !167

; <label>:8464                                    ; preds = %8450
  %8465 = fmul fast float %8461, 0xBFF7154760000000
  %8466 = call float @dx.op.unary.f32(i32 21, float %8465)  ; Exp(value)
  %8467 = fsub fast float 1.000000e+00, %8466
  %8468 = fdiv fast float %8467, %8461
  %8469 = fmul fast float %8468, %7978
  br label %8470

; <label>:8470                                    ; preds = %8464, %8450
  %8471 = phi float [ %8469, %8464 ], [ %7978, %8450 ]
  %8472 = fadd fast float %8471, %7980
  %8473 = fmul fast float %8472, %8460
  %8474 = fmul fast float %7965, %8473
  %8475 = fsub fast float -0.000000e+00, %8474
  %8476 = fmul fast float %7966, %8473
  %8477 = fsub fast float -0.000000e+00, %8476
  %8478 = fmul fast float %7967, %8473
  %8479 = fsub fast float -0.000000e+00, %8478
  %8480 = call float @dx.op.unary.f32(i32 21, float %8475)  ; Exp(value)
  %8481 = call float @dx.op.unary.f32(i32 21, float %8477)  ; Exp(value)
  %8482 = call float @dx.op.unary.f32(i32 21, float %8479)  ; Exp(value)
  %8483 = fmul fast float %7994, %7994
  %8484 = fadd fast float %8483, 1.000000e+00
  %8485 = fmul fast float %8484, 0x3FAE8EC8A0000000
  %8486 = fmul fast float %8485, %7975
  %8487 = fmul fast float %8485, %7976
  %8488 = fmul fast float %8485, %7977
  %8489 = fmul fast float %7994, %7973
  %8490 = fsub fast float 1.000000e+00, %8489
  %8491 = fmul fast float %7973, %7973
  %8492 = fsub fast float 1.000000e+00, %8491
  %8493 = fmul fast float %8492, 0x3FB45F3060000000
  %8494 = fmul fast float %8490, %8490
  %8495 = fdiv fast float 1.000000e+00, %8494
  %8496 = fmul fast float %8493, %8495
  %8497 = fmul fast float %8496, %7970
  %8498 = fmul fast float %8496, %7971
  %8499 = fmul fast float %8496, %7972
  %8500 = fadd fast float %8497, %8486
  %8501 = fadd fast float %8498, %8487
  %8502 = fadd fast float %8499, %8488
  %8503 = fsub fast float 1.000000e+00, %8480
  %8504 = fsub fast float 1.000000e+00, %8481
  %8505 = fsub fast float 1.000000e+00, %8482
  %8506 = fmul fast float %8500, %8503
  %8507 = fmul fast float %8501, %8504
  %8508 = fmul fast float %8502, %8505
  br label %8509

; <label>:8509                                    ; preds = %8470, %8421
  %8510 = phi float [ %8447, %8421 ], [ %8506, %8470 ]
  %8511 = phi float [ %8448, %8421 ], [ %8507, %8470 ]
  %8512 = phi float [ %8449, %8421 ], [ %8508, %8470 ]
  %8513 = phi float [ %8436, %8421 ], [ %8480, %8470 ]
  %8514 = phi float [ %8436, %8421 ], [ %8481, %8470 ]
  %8515 = phi float [ %8436, %8421 ], [ %8482, %8470 ]
  br i1 %8002, label %8516, label %8714, !dx.controlflow.hints !168

; <label>:8516                                    ; preds = %8509
  %8517 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8518 = fmul fast float %8517, %8417
  %8519 = fsub fast float %8412, %8510
  %8520 = fsub fast float %8413, %8511
  %8521 = fsub fast float %8414, %8512
  %8522 = fmul fast float %8518, %8519
  %8523 = fmul fast float %8518, %8520
  %8524 = fmul fast float %8518, %8521
  %8525 = fadd fast float %8522, %8510
  %8526 = fadd fast float %8523, %8511
  %8527 = fadd fast float %8524, %8512
  %8528 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8513)  ; FMax(a,b)
  %8529 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8514)  ; FMax(a,b)
  %8530 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8515)  ; FMax(a,b)
  %8531 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8411)  ; FMax(a,b)
  %8532 = call float @dx.op.binary.f32(i32 35, float %8410, float %8420)  ; FMax(a,b)
  %8533 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8532)  ; FMax(a,b)
  %8534 = fdiv fast float %8410, %8533
  %8535 = call float @dx.op.unary.f32(i32 7, float %8534)  ; Saturate(value)
  %8536 = fdiv fast float %8420, %8533
  %8537 = call float @dx.op.unary.f32(i32 7, float %8536)  ; Saturate(value)
  %8538 = fcmp fast une float %8531, 1.000000e+00
  br i1 %8538, label %8539, label %8552, !dx.controlflow.hints !169

; <label>:8539                                    ; preds = %8516
  %8540 = call float @dx.op.unary.f32(i32 23, float %8531)  ; Log(value)
  %8541 = fmul fast float %8540, 0x3FE62E4300000000
  %8542 = fmul fast float %8412, %8541
  %8543 = fsub fast float -0.000000e+00, %8542
  %8544 = fmul fast float %8413, %8541
  %8545 = fsub fast float -0.000000e+00, %8544
  %8546 = fmul fast float %8414, %8541
  %8547 = fsub fast float -0.000000e+00, %8546
  %8548 = fsub fast float 1.000000e+00, %8531
  %8549 = fdiv fast float %8543, %8548
  %8550 = fdiv fast float %8545, %8548
  %8551 = fdiv fast float %8547, %8548
  br label %8552

; <label>:8552                                    ; preds = %8539, %8516
  %8553 = phi float [ %8549, %8539 ], [ %8412, %8516 ]
  %8554 = phi float [ %8550, %8539 ], [ %8413, %8516 ]
  %8555 = phi float [ %8551, %8539 ], [ %8414, %8516 ]
  %8556 = phi float [ %8541, %8539 ], [ 0.000000e+00, %8516 ]
  %8557 = fcmp fast une float %8528, 1.000000e+00
  br i1 %8557, label %8558, label %8565, !dx.controlflow.hints !170

; <label>:8558                                    ; preds = %8552
  %8559 = call float @dx.op.unary.f32(i32 23, float %8528)  ; Log(value)
  %8560 = fmul fast float %8559, 0x3FE62E4300000000
  %8561 = fmul fast float %8525, %8560
  %8562 = fsub fast float -0.000000e+00, %8561
  %8563 = fsub fast float 1.000000e+00, %8528
  %8564 = fdiv fast float %8562, %8563
  br label %8565

; <label>:8565                                    ; preds = %8558, %8552
  %8566 = phi float [ %8564, %8558 ], [ %8525, %8552 ]
  %8567 = phi float [ %8560, %8558 ], [ 0.000000e+00, %8552 ]
  %8568 = fcmp fast une float %8529, 1.000000e+00
  br i1 %8568, label %8569, label %8576, !dx.controlflow.hints !170

; <label>:8569                                    ; preds = %8565
  %8570 = call float @dx.op.unary.f32(i32 23, float %8529)  ; Log(value)
  %8571 = fmul fast float %8570, 0x3FE62E4300000000
  %8572 = fmul fast float %8526, %8571
  %8573 = fsub fast float -0.000000e+00, %8572
  %8574 = fsub fast float 1.000000e+00, %8529
  %8575 = fdiv fast float %8573, %8574
  br label %8576

; <label>:8576                                    ; preds = %8569, %8565
  %8577 = phi float [ %8575, %8569 ], [ %8526, %8565 ]
  %8578 = phi float [ %8571, %8569 ], [ 0.000000e+00, %8565 ]
  %8579 = fcmp fast une float %8530, 1.000000e+00
  br i1 %8579, label %8580, label %8587, !dx.controlflow.hints !170

; <label>:8580                                    ; preds = %8576
  %8581 = call float @dx.op.unary.f32(i32 23, float %8530)  ; Log(value)
  %8582 = fmul fast float %8581, 0x3FE62E4300000000
  %8583 = fmul fast float %8527, %8582
  %8584 = fsub fast float -0.000000e+00, %8583
  %8585 = fsub fast float 1.000000e+00, %8530
  %8586 = fdiv fast float %8584, %8585
  br label %8587

; <label>:8587                                    ; preds = %8580, %8576
  %8588 = phi float [ %8586, %8580 ], [ %8527, %8576 ]
  %8589 = phi float [ %8582, %8580 ], [ 0.000000e+00, %8576 ]
  %8590 = fmul fast float %8553, %8537
  %8591 = fmul fast float %8554, %8537
  %8592 = fmul fast float %8555, %8537
  %8593 = fmul fast float %8556, %8537
  %8594 = fmul fast float %8566, %8535
  %8595 = fmul fast float %8577, %8535
  %8596 = fmul fast float %8588, %8535
  %8597 = fmul fast float %8567, %8535
  %8598 = fmul fast float %8578, %8535
  %8599 = fmul fast float %8589, %8535
  %8600 = fadd fast float %8594, %8590
  %8601 = fadd fast float %8595, %8591
  %8602 = fadd fast float %8596, %8592
  %8603 = fadd fast float %8597, %8593
  %8604 = fadd fast float %8598, %8593
  %8605 = fadd fast float %8599, %8593
  %8606 = fcmp fast une float %8603, 0.000000e+00
  br i1 %8606, label %8607, label %8614, !dx.controlflow.hints !171

; <label>:8607                                    ; preds = %8587
  %8608 = fmul fast float %8603, 0x3FF7154760000000
  %8609 = call float @dx.op.unary.f32(i32 21, float %8608)  ; Exp(value)
  %8610 = fsub fast float 1.000000e+00, %8609
  %8611 = fmul fast float %8600, %8610
  %8612 = fsub fast float -0.000000e+00, %8611
  %8613 = fdiv fast float %8612, %8603
  br label %8614

; <label>:8614                                    ; preds = %8607, %8587
  %8615 = phi float [ %8609, %8607 ], [ 1.000000e+00, %8587 ]
  %8616 = phi float [ %8613, %8607 ], [ %8600, %8587 ]
  %8617 = fcmp fast une float %8604, 0.000000e+00
  br i1 %8617, label %8618, label %8625, !dx.controlflow.hints !171

; <label>:8618                                    ; preds = %8614
  %8619 = fmul fast float %8604, 0x3FF7154760000000
  %8620 = call float @dx.op.unary.f32(i32 21, float %8619)  ; Exp(value)
  %8621 = fsub fast float 1.000000e+00, %8620
  %8622 = fmul fast float %8601, %8621
  %8623 = fsub fast float -0.000000e+00, %8622
  %8624 = fdiv fast float %8623, %8604
  br label %8625

; <label>:8625                                    ; preds = %8618, %8614
  %8626 = phi float [ %8620, %8618 ], [ 1.000000e+00, %8614 ]
  %8627 = phi float [ %8624, %8618 ], [ %8601, %8614 ]
  %8628 = fcmp fast une float %8605, 0.000000e+00
  br i1 %8628, label %8629, label %8636, !dx.controlflow.hints !171

; <label>:8629                                    ; preds = %8625
  %8630 = fmul fast float %8605, 0x3FF7154760000000
  %8631 = call float @dx.op.unary.f32(i32 21, float %8630)  ; Exp(value)
  %8632 = fsub fast float 1.000000e+00, %8631
  %8633 = fmul fast float %8602, %8632
  %8634 = fsub fast float -0.000000e+00, %8633
  %8635 = fdiv fast float %8634, %8605
  br label %8636

; <label>:8636                                    ; preds = %8629, %8625
  %8637 = phi float [ %8631, %8629 ], [ 1.000000e+00, %8625 ]
  %8638 = phi float [ %8635, %8629 ], [ %8602, %8625 ]
  %8639 = fcmp fast ogt float %8535, %8537
  br i1 %8639, label %8640, label %8660

; <label>:8640                                    ; preds = %8636
  %8641 = fsub fast float 1.000000e+00, %8537
  %8642 = fmul fast float %8553, %8641
  %8643 = fmul fast float %8554, %8641
  %8644 = fmul fast float %8555, %8641
  %8645 = fmul fast float %8556, %8641
  %8646 = fcmp fast une float %8645, 0.000000e+00
  br i1 %8646, label %8647, label %8698, !dx.controlflow.hints !172

; <label>:8647                                    ; preds = %8640
  %8648 = fmul fast float %8645, 0x3FF7154760000000
  %8649 = call float @dx.op.unary.f32(i32 21, float %8648)  ; Exp(value)
  %8650 = fsub fast float 1.000000e+00, %8649
  %8651 = fmul fast float %8642, %8650
  %8652 = fsub fast float -0.000000e+00, %8651
  %8653 = fmul fast float %8643, %8650
  %8654 = fsub fast float -0.000000e+00, %8653
  %8655 = fmul fast float %8644, %8650
  %8656 = fsub fast float -0.000000e+00, %8655
  %8657 = fdiv fast float %8652, %8645
  %8658 = fdiv fast float %8654, %8645
  %8659 = fdiv fast float %8656, %8645
  br label %8698

; <label>:8660                                    ; preds = %8636
  %8661 = fsub fast float 1.000000e+00, %8535
  %8662 = fmul fast float %8566, %8661
  %8663 = fmul fast float %8577, %8661
  %8664 = fmul fast float %8588, %8661
  %8665 = fmul fast float %8567, %8661
  %8666 = fmul fast float %8578, %8661
  %8667 = fmul fast float %8589, %8661
  %8668 = fcmp fast une float %8665, 0.000000e+00
  br i1 %8668, label %8669, label %8676, !dx.controlflow.hints !171

; <label>:8669                                    ; preds = %8660
  %8670 = fmul fast float %8665, 0x3FF7154760000000
  %8671 = call float @dx.op.unary.f32(i32 21, float %8670)  ; Exp(value)
  %8672 = fsub fast float 1.000000e+00, %8671
  %8673 = fmul fast float %8662, %8672
  %8674 = fsub fast float -0.000000e+00, %8673
  %8675 = fdiv fast float %8674, %8665
  br label %8676

; <label>:8676                                    ; preds = %8669, %8660
  %8677 = phi float [ %8675, %8669 ], [ %8662, %8660 ]
  %8678 = phi float [ %8671, %8669 ], [ 1.000000e+00, %8660 ]
  %8679 = fcmp fast une float %8666, 0.000000e+00
  br i1 %8679, label %8680, label %8687, !dx.controlflow.hints !171

; <label>:8680                                    ; preds = %8676
  %8681 = fmul fast float %8666, 0x3FF7154760000000
  %8682 = call float @dx.op.unary.f32(i32 21, float %8681)  ; Exp(value)
  %8683 = fsub fast float 1.000000e+00, %8682
  %8684 = fmul fast float %8663, %8683
  %8685 = fsub fast float -0.000000e+00, %8684
  %8686 = fdiv fast float %8685, %8666
  br label %8687

; <label>:8687                                    ; preds = %8680, %8676
  %8688 = phi float [ %8686, %8680 ], [ %8663, %8676 ]
  %8689 = phi float [ %8682, %8680 ], [ 1.000000e+00, %8676 ]
  %8690 = fcmp fast une float %8667, 0.000000e+00
  br i1 %8690, label %8691, label %8698, !dx.controlflow.hints !171

; <label>:8691                                    ; preds = %8687
  %8692 = fmul fast float %8667, 0x3FF7154760000000
  %8693 = call float @dx.op.unary.f32(i32 21, float %8692)  ; Exp(value)
  %8694 = fsub fast float 1.000000e+00, %8693
  %8695 = fmul fast float %8664, %8694
  %8696 = fsub fast float -0.000000e+00, %8695
  %8697 = fdiv fast float %8696, %8667
  br label %8698

; <label>:8698                                    ; preds = %8691, %8687, %8647, %8640
  %8699 = phi float [ %8697, %8691 ], [ %8659, %8647 ], [ %8644, %8640 ], [ %8664, %8687 ]
  %8700 = phi float [ %8688, %8691 ], [ %8658, %8647 ], [ %8643, %8640 ], [ %8688, %8687 ]
  %8701 = phi float [ %8677, %8691 ], [ %8657, %8647 ], [ %8642, %8640 ], [ %8677, %8687 ]
  %8702 = phi float [ %8693, %8691 ], [ %8649, %8647 ], [ 1.000000e+00, %8640 ], [ 1.000000e+00, %8687 ]
  %8703 = phi float [ %8689, %8691 ], [ %8649, %8647 ], [ 1.000000e+00, %8640 ], [ %8689, %8687 ]
  %8704 = phi float [ %8678, %8691 ], [ %8649, %8647 ], [ 1.000000e+00, %8640 ], [ %8678, %8687 ]
  %8705 = fmul fast float %8704, %8616
  %8706 = fmul fast float %8703, %8627
  %8707 = fmul fast float %8702, %8638
  %8708 = fadd fast float %8705, %8701
  %8709 = fadd fast float %8706, %8700
  %8710 = fadd fast float %8707, %8699
  %8711 = fmul fast float %8704, %8615
  %8712 = fmul fast float %8703, %8626
  %8713 = fmul fast float %8702, %8637
  br label %8714

; <label>:8714                                    ; preds = %8698, %8509
  %8715 = phi float [ %8713, %8698 ], [ %8515, %8509 ]
  %8716 = phi float [ %8712, %8698 ], [ %8514, %8509 ]
  %8717 = phi float [ %8711, %8698 ], [ %8513, %8509 ]
  %8718 = phi float [ %8710, %8698 ], [ %8512, %8509 ]
  %8719 = phi float [ %8709, %8698 ], [ %8511, %8509 ]
  %8720 = phi float [ %8708, %8698 ], [ %8510, %8509 ]
  %8721 = fmul fast float %8720, %7662
  %8722 = fmul fast float %8719, %7664
  %8723 = fmul fast float %8718, %7666
  %8724 = fmul fast float %8717, %7957
  %8725 = call float @dx.op.dot3.f32(i32 55, float %8717, float %8716, float %8715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8726 = call float @dx.op.dot3.f32(i32 55, float %8721, float %8722, float %8723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8727 = select i1 %265, float %8725, float %8717
  %8728 = select i1 %265, float %8725, float %8716
  %8729 = select i1 %265, float 1.000000e+00, float %8715
  %8730 = select i1 %265, float %8726, float %8721
  %8731 = select i1 %265, float 0.000000e+00, float %8722
  %8732 = select i1 %265, float 0.000000e+00, float %8723
  %8733 = fmul fast float %8727, %7951
  %8734 = fmul fast float %8728, %7952
  %8735 = fmul fast float %8729, %7953
  %8736 = fadd fast float %8733, %8730
  %8737 = fadd fast float %8734, %8731
  %8738 = fadd fast float %8732, %8735
  %8739 = fmul fast float %8727, %7954
  %8740 = fmul fast float %8728, %7955
  %8741 = fmul fast float %8729, %7956
  %8742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8743 = extractvalue %dx.types.CBufRet.i32 %8742, 0
  %8744 = icmp eq i32 %8743, 0
  br i1 %8744, label %9112, label %8745, !dx.controlflow.hints !173

; <label>:8745                                    ; preds = %8714
  %8746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8747 = extractvalue %dx.types.CBufRet.f32 %8746, 2
  %8748 = extractvalue %dx.types.CBufRet.f32 %8746, 3
  %8749 = fmul fast float %8747, %106
  %8750 = fmul fast float %8748, %107
  %8751 = fmul fast float %8749, 2.000000e+00
  %8752 = fmul fast float %8750, 2.000000e+00
  %8753 = fsub fast float 1.000000e+00, %8751
  %8754 = fsub fast float 1.000000e+00, %8752
  %8755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8756 = extractvalue %dx.types.CBufRet.f32 %8755, 0
  %8757 = extractvalue %dx.types.CBufRet.f32 %8755, 1
  %8758 = extractvalue %dx.types.CBufRet.f32 %8755, 2
  %8759 = fmul fast float %8753, %8756
  %8760 = fmul fast float %8753, %8757
  %8761 = fmul fast float %8753, %8758
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 0
  %8764 = extractvalue %dx.types.CBufRet.f32 %8762, 1
  %8765 = extractvalue %dx.types.CBufRet.f32 %8762, 2
  %8766 = fmul fast float %8754, %8763
  %8767 = fmul fast float %8754, %8764
  %8768 = fmul fast float %8754, %8765
  %8769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8769, 0
  %8771 = extractvalue %dx.types.CBufRet.f32 %8769, 1
  %8772 = extractvalue %dx.types.CBufRet.f32 %8769, 2
  %8773 = fadd fast float %8766, %8770
  %8774 = fadd fast float %8773, %8759
  %8775 = fadd fast float %8767, %8771
  %8776 = fadd fast float %8775, %8760
  %8777 = fadd fast float %8768, %8772
  %8778 = fadd fast float %8777, %8761
  %8779 = fmul fast float %8774, %7950
  %8780 = fmul fast float %8776, %7950
  %8781 = fmul fast float %8778, %7950
  %8782 = fmul fast float %8779, %8779
  %8783 = fmul fast float %8780, %8780
  %8784 = fadd fast float %8782, %8783
  %8785 = fmul fast float %8781, %8781
  %8786 = fadd fast float %8784, %8785
  %8787 = call float @dx.op.unary.f32(i32 24, float %8786)  ; Sqrt(value)
  %8788 = extractvalue %dx.types.CBufRet.f32 %7677, 0
  %8789 = fsub fast float %8787, %8788
  %8790 = extractvalue %dx.types.CBufRet.f32 %7677, 2
  %8791 = fmul fast float %8789, %8790
  %8792 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  %8793 = fadd fast float %8792, -5.000000e-01
  %8794 = fmul fast float %8793, 2.000000e+00
  %8795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8796 = extractvalue %dx.types.CBufRet.f32 %8795, 2
  %8797 = call float @dx.op.binary.f32(i32 36, float %8796, float %8794)  ; FMin(a,b)
  %8798 = fsub fast float -0.000000e+00, %8796
  %8799 = fcmp fast ogt float %8797, %8798
  br i1 %8799, label %8800, label %9112, !dx.controlflow.hints !174

; <label>:8800                                    ; preds = %8745
  %8801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.f32 %8801, 3
  %8803 = fcmp fast ogt float %8802, 0.000000e+00
  br i1 %8803, label %8804, label %8879, !dx.controlflow.hints !175

; <label>:8804                                    ; preds = %8800
  %8805 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %8806 = extractvalue %dx.types.Dimensions %8805, 0
  %8807 = sitofp i32 %8806 to float
  %8808 = extractvalue %dx.types.Dimensions %8805, 1
  %8809 = sitofp i32 %8808 to float
  %8810 = fmul fast float %8749, %8807
  %8811 = fmul fast float %8750, %8809
  %8812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8813 = extractvalue %dx.types.CBufRet.f32 %8812, 1
  %8814 = fsub fast float -0.000000e+00, %8813
  %8815 = fptoui float %8814 to i32
  %8816 = fptoui float %8810 to i32
  %8817 = fptoui float %8811 to i32
  %8818 = and i32 %8815, 31
  %8819 = lshr i32 %8816, %8818
  %8820 = lshr i32 %8817, %8818
  %8821 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %8815, i32 %8819, i32 %8820, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8822 = extractvalue %dx.types.ResRet.f32 %8821, 0
  %8823 = fcmp fast olt float %8822, -1.000000e+00
  %8824 = fcmp fast ogt float %8822, -1.000000e+00
  %8825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8826 = extractvalue %dx.types.CBufRet.f32 %8825, 1
  %8827 = select i1 %8824, float %8826, float 1.000000e+00
  %8828 = fadd fast float %8822, 1.000000e+00
  %8829 = fmul fast float %8827, %8828
  %8830 = call float @dx.op.unary.f32(i32 6, float %8829)  ; FAbs(value)
  %8831 = extractvalue %dx.types.CBufRet.f32 %8825, 3
  %8832 = fcmp fast oge float %8830, %8831
  %8833 = select i1 %8832, float 0x4197782600000000, float %8830
  %8834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8834, 0
  %8836 = extractvalue %dx.types.CBufRet.f32 %8834, 1
  %8837 = extractvalue %dx.types.CBufRet.f32 %8834, 2
  %8838 = select i1 %8823, float %8835, float %8756
  %8839 = select i1 %8823, float %8836, float %8757
  %8840 = select i1 %8823, float %8837, float %8758
  %8841 = fmul fast float %8838, %8753
  %8842 = fmul fast float %8839, %8753
  %8843 = fmul fast float %8840, %8753
  %8844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8845 = extractvalue %dx.types.CBufRet.f32 %8844, 0
  %8846 = extractvalue %dx.types.CBufRet.f32 %8844, 1
  %8847 = extractvalue %dx.types.CBufRet.f32 %8844, 2
  %8848 = select i1 %8823, float %8845, float %8763
  %8849 = select i1 %8823, float %8846, float %8764
  %8850 = select i1 %8823, float %8847, float %8765
  %8851 = fmul fast float %8848, %8754
  %8852 = fmul fast float %8849, %8754
  %8853 = fmul fast float %8850, %8754
  %8854 = fadd fast float %8851, %8841
  %8855 = fadd fast float %8852, %8842
  %8856 = fadd fast float %8853, %8843
  %8857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8858 = extractvalue %dx.types.CBufRet.f32 %8857, 0
  %8859 = extractvalue %dx.types.CBufRet.f32 %8857, 1
  %8860 = extractvalue %dx.types.CBufRet.f32 %8857, 2
  %8861 = select i1 %8823, float %8858, float %8770
  %8862 = select i1 %8823, float %8859, float %8771
  %8863 = select i1 %8823, float %8860, float %8772
  %8864 = fadd fast float %8854, %8861
  %8865 = fadd fast float %8855, %8862
  %8866 = fadd fast float %8856, %8863
  %8867 = fmul fast float %8864, %8833
  %8868 = fmul fast float %8865, %8833
  %8869 = fmul fast float %8866, %8833
  %8870 = fmul fast float %8867, %8867
  %8871 = fmul fast float %8868, %8868
  %8872 = fadd fast float %8870, %8871
  %8873 = fmul fast float %8869, %8869
  %8874 = fadd fast float %8872, %8873
  %8875 = call float @dx.op.unary.f32(i32 24, float %8874)  ; Sqrt(value)
  %8876 = fsub fast float %8875, %8788
  %8877 = fmul fast float %8876, %8790
  %8878 = call float @dx.op.unary.f32(i32 7, float %8877)  ; Saturate(value)
  br label %8879

; <label>:8879                                    ; preds = %8804, %8800
  %8880 = phi float [ %8878, %8804 ], [ 1.000000e+00, %8800 ]
  %8881 = fmul fast float %8797, 5.000000e-01
  %8882 = fadd fast float %8881, 5.000000e-01
  %8883 = call float @dx.op.unary.f32(i32 22, float %8882)  ; Frc(value)
  %8884 = call float @dx.op.unary.f32(i32 27, float %8883)  ; Round_ni(value)
  %8885 = call float @dx.op.unary.f32(i32 22, float %8883)  ; Frc(value)
  %8886 = fmul fast float %8885, 2.000000e+00
  %8887 = fadd fast float %8886, -1.000000e+00
  %8888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8749, float %8750, float %8884, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8889 = extractvalue %dx.types.ResRet.f32 %8888, 0
  %8890 = extractvalue %dx.types.ResRet.f32 %8888, 1
  %8891 = extractvalue %dx.types.ResRet.f32 %8888, 2
  %8892 = extractvalue %dx.types.ResRet.f32 %8888, 3
  %8893 = fadd fast float %8889, -5.000000e-01
  %8894 = fadd fast float %8891, -5.000000e-01
  %8895 = fmul fast float %8893, 0xBFD5555560000000
  %8896 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8894, float %8895)  ; FMad(a,b,c)
  %8897 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8890, float 0.000000e+00)  ; FMad(a,b,c)
  %8898 = fadd fast float %8897, %8892
  %8899 = fmul fast float %8893, -7.500000e-01
  %8900 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8894, float %8899)  ; FMad(a,b,c)
  %8901 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8890, float 0.000000e+00)  ; FMad(a,b,c)
  %8902 = fadd fast float %8901, %8892
  %8903 = call float @dx.op.binary.f32(i32 35, float %8896, float -1.000000e+00)  ; FMax(a,b)
  %8904 = call float @dx.op.binary.f32(i32 35, float %8898, float -1.000000e+00)  ; FMax(a,b)
  %8905 = call float @dx.op.binary.f32(i32 35, float %8900, float -1.000000e+00)  ; FMax(a,b)
  %8906 = call float @dx.op.binary.f32(i32 35, float %8902, float -1.000000e+00)  ; FMax(a,b)
  %8907 = call float @dx.op.binary.f32(i32 36, float %8903, float 1.000000e+00)  ; FMin(a,b)
  %8908 = call float @dx.op.binary.f32(i32 36, float %8904, float 1.000000e+00)  ; FMin(a,b)
  %8909 = call float @dx.op.binary.f32(i32 36, float %8905, float 1.000000e+00)  ; FMin(a,b)
  %8910 = call float @dx.op.binary.f32(i32 36, float %8906, float 1.000000e+00)  ; FMin(a,b)
  %8911 = fcmp fast olt float %8907, 0x3FEFFF8020000000
  br i1 %8911, label %8912, label %9027, !dx.controlflow.hints !176

; <label>:8912                                    ; preds = %8879
  %8913 = extractvalue %dx.types.CBufRet.f32 %8795, 3
  %8914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8915 = extractvalue %dx.types.CBufRet.f32 %8914, 0
  %8916 = extractvalue %dx.types.CBufRet.f32 %8914, 1
  %8917 = extractvalue %dx.types.CBufRet.f32 %8914, 2
  %8918 = extractvalue %dx.types.CBufRet.f32 %8914, 3
  %8919 = fsub fast float %8915, %8907
  %8920 = fsub fast float %8916, %8908
  %8921 = fsub fast float %8917, %8909
  %8922 = fsub fast float %8918, %8910
  %8923 = fmul fast float %8919, %8913
  %8924 = fmul fast float %8920, %8913
  %8925 = fmul fast float %8921, %8913
  %8926 = fmul fast float %8922, %8913
  %8927 = fadd fast float %8923, %8907
  %8928 = fadd fast float %8924, %8908
  %8929 = fsub fast float -0.000000e+00, %8928
  %8930 = fadd fast float %8925, %8909
  %8931 = fadd fast float %8926, %8910
  %8932 = fmul fast float %8927, %8927
  %8933 = fsub fast float %8928, %8932
  %8934 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8933)  ; FMax(a,b)
  %8935 = fdiv fast float 1.000000e+00, %8934
  %8936 = fmul fast float %8928, %8927
  %8937 = fsub fast float %8930, %8936
  %8938 = fsub fast float %8887, %8927
  %8939 = fmul fast float %8887, %8887
  %8940 = fsub fast float %8939, %8928
  %8941 = fmul fast float %8938, %8935
  %8942 = fmul fast float %8941, %8937
  %8943 = fsub fast float %8940, %8942
  %8944 = fmul fast float %8928, %8928
  %8945 = fsub fast float %8931, %8944
  %8946 = fmul fast float %8937, %8937
  %8947 = fmul fast float %8946, %8935
  %8948 = fsub fast float %8945, %8947
  %8949 = fdiv fast float %8943, %8948
  %8950 = fmul fast float %8937, %8949
  %8951 = fsub fast float %8938, %8950
  %8952 = fmul fast float %8951, %8935
  %8953 = fmul fast float %8952, %8927
  %8954 = fsub fast float 1.000000e+00, %8953
  %8955 = fmul fast float %8928, %8949
  %8956 = fsub fast float %8954, %8955
  %8957 = fmul fast float %8952, %8952
  %8958 = fmul fast float %8949, 4.000000e+00
  %8959 = fmul fast float %8958, %8956
  %8960 = fsub fast float %8957, %8959
  %8961 = call float @dx.op.unary.f32(i32 24, float %8960)  ; Sqrt(value)
  %8962 = fcmp fast oge float %8952, 0.000000e+00
  %8963 = fsub fast float -0.000000e+00, %8961
  %8964 = select i1 %8962, float %8963, float %8961
  %8965 = fsub fast float %8964, %8952
  %8966 = fdiv fast float %8965, %8949
  %8967 = fdiv fast float %8956, %8965
  %8968 = fmul fast float %8966, 5.000000e-01
  %8969 = fmul fast float %8967, 2.000000e+00
  %8970 = select i1 %8962, float %8968, float %8969
  %8971 = select i1 %8962, float %8969, float %8968
  %8972 = call float @dx.op.binary.f32(i32 35, float %8970, float %8971)  ; FMax(a,b)
  %8973 = call float @dx.op.binary.f32(i32 36, float %8970, float %8971)  ; FMin(a,b)
  %8974 = fcmp fast ogt float %8887, %8973
  br i1 %8974, label %8975, label %8985

; <label>:8975                                    ; preds = %8912
  %8976 = fsub fast float %8887, %8973
  %8977 = fsub fast float %8972, %8973
  %8978 = fmul fast float %8976, %8977
  %8979 = fmul fast float %8972, %8887
  %8980 = fadd fast float %8972, %8887
  %8981 = fmul fast float %8980, %8927
  %8982 = fadd fast float %8979, %8928
  %8983 = fsub fast float %8982, %8981
  %8984 = fdiv fast float %8983, %8978
  br label %8985

; <label>:8985                                    ; preds = %8975, %8912
  %8986 = phi float [ %8984, %8975 ], [ 0.000000e+00, %8912 ]
  %8987 = fcmp fast ogt float %8887, %8972
  %8988 = fsub fast float %8887, %8972
  br i1 %8987, label %8989, label %8999

; <label>:8989                                    ; preds = %8985
  %8990 = fsub fast float %8972, %8973
  %8991 = fmul fast float %8990, %8988
  %8992 = fmul fast float %8973, %8887
  %8993 = fadd fast float %8973, %8887
  %8994 = fmul fast float %8993, %8927
  %8995 = fsub fast float %8929, %8992
  %8996 = fadd fast float %8995, %8994
  %8997 = fdiv fast float %8996, %8991
  %8998 = fadd fast float %8997, %8986
  br label %8999

; <label>:8999                                    ; preds = %8989, %8985
  %9000 = phi float [ %8998, %8989 ], [ %8986, %8985 ]
  %9001 = fsub fast float %8887, %8973
  %9002 = fmul fast float %9001, %8988
  %9003 = fmul fast float %8973, %8972
  %9004 = fadd fast float %8973, %8972
  %9005 = fmul fast float %9004, %8927
  %9006 = fadd fast float %9003, %8928
  %9007 = fsub fast float %9006, %9005
  %9008 = fdiv fast float %9007, %9002
  %9009 = call float @dx.op.unary.f32(i32 7, float %9000)  ; Saturate(value)
  %9010 = fcmp fast oeq float %7678, 0.000000e+00
  %9011 = extractvalue %dx.types.CBufRet.f32 %8795, 0
  %9012 = fcmp fast oeq float %9011, 0.000000e+00
  %9013 = or i1 %9010, %9012
  %9014 = fmul fast float %9011, 2.000000e+00
  %9015 = fadd fast float %8796, %8797
  %9016 = fdiv fast float %9015, %9014
  %9017 = call float @dx.op.unary.f32(i32 7, float %9016)  ; Saturate(value)
  %9018 = fmul fast float %9017, 2.000000e+00
  %9019 = fsub fast float 3.000000e+00, %9018
  %9020 = fmul fast float %9017, %9017
  %9021 = fmul fast float %9020, %9019
  %9022 = select i1 %9013, float 1.000000e+00, float %9021
  %9023 = fmul fast float %9008, %7678
  %9024 = fadd fast float %9009, %9023
  %9025 = call float @dx.op.unary.f32(i32 7, float %9024)  ; Saturate(value)
  %9026 = fmul fast float %9022, %9025
  br label %9027

; <label>:9027                                    ; preds = %8999, %8879
  %9028 = phi float [ %9026, %8999 ], [ 0.000000e+00, %8879 ]
  %9029 = fsub fast float 1.000000e+00, %9028
  %9030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8749, float %8750, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9031 = extractvalue %dx.types.ResRet.f32 %9030, 0
  %9032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9033 = extractvalue %dx.types.CBufRet.i32 %9032, 2
  %9034 = icmp eq i32 %9033, 0
  br i1 %9034, label %9040, label %9035

; <label>:9035                                    ; preds = %9027
  %9036 = call float @dx.op.unary.f32(i32 7, float %9028)  ; Saturate(value)
  %9037 = fadd fast float %9031, -1.000000e+00
  %9038 = fmul fast float %9036, %9037
  %9039 = fadd fast float %9038, 1.000000e+00
  br label %9040

; <label>:9040                                    ; preds = %9035, %9027
  %9041 = phi float [ %9039, %9035 ], [ %9029, %9027 ]
  br i1 %8803, label %9042, label %9060

; <label>:9042                                    ; preds = %9040
  %9043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9044 = extractvalue %dx.types.CBufRet.f32 %9043, 1
  %9045 = fsub fast float %8880, %9044
  %9046 = call float @dx.op.unary.f32(i32 7, float %9045)  ; Saturate(value)
  %9047 = fsub fast float %8880, %8802
  %9048 = call float @dx.op.unary.f32(i32 7, float %9047)  ; Saturate(value)
  %9049 = fsub fast float %9046, %9048
  %9050 = fsub fast float %8882, %9048
  %9051 = fdiv fast float %9050, %9049
  %9052 = call float @dx.op.unary.f32(i32 7, float %9051)  ; Saturate(value)
  %9053 = fmul fast float %9052, 2.000000e+00
  %9054 = fsub fast float 3.000000e+00, %9053
  %9055 = fsub fast float %9031, %9041
  %9056 = fmul fast float %9052, %9052
  %9057 = fmul fast float %9056, %9055
  %9058 = fmul fast float %9057, %9054
  %9059 = fadd fast float %9058, %9041
  br label %9060

; <label>:9060                                    ; preds = %9042, %9040
  %9061 = phi float [ %9059, %9042 ], [ %9041, %9040 ]
  %9062 = call float @dx.op.binary.f32(i32 35, float %9031, float %9061)  ; FMax(a,b)
  %9063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9064 = extractvalue %dx.types.CBufRet.i32 %9063, 2
  %9065 = and i32 %9064, 1
  %9066 = icmp eq i32 %9065, 0
  %9067 = fcmp fast une float %9062, 1.000000e+00
  %9068 = and i1 %9067, %9066
  br i1 %9068, label %9069, label %9088

; <label>:9069                                    ; preds = %9060
  %9070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8749, float %8750, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9071 = extractvalue %dx.types.ResRet.f32 %9070, 0
  %9072 = extractvalue %dx.types.ResRet.f32 %9070, 1
  %9073 = extractvalue %dx.types.ResRet.f32 %9070, 2
  %9074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9075 = extractvalue %dx.types.CBufRet.f32 %9074, 1
  %9076 = fmul fast float %9075, %9071
  %9077 = fmul fast float %9075, %9072
  %9078 = fmul fast float %9075, %9073
  %9079 = fcmp fast ogt float %9031, 0x3FEFFF2E40000000
  %9080 = fsub fast float 1.000000e+00, %9062
  %9081 = fsub fast float 1.000000e+00, %9031
  %9082 = fdiv fast float %9080, %9081
  %9083 = call float @dx.op.unary.f32(i32 7, float %9082)  ; Saturate(value)
  %9084 = select i1 %9079, float 0.000000e+00, float %9083
  %9085 = fmul fast float %9076, %9084
  %9086 = fmul fast float %9077, %9084
  %9087 = fmul fast float %9078, %9084
  br label %9088

; <label>:9088                                    ; preds = %9069, %9060
  %9089 = phi float [ 0.000000e+00, %9060 ], [ %9085, %9069 ]
  %9090 = phi float [ 0.000000e+00, %9060 ], [ %9086, %9069 ]
  %9091 = phi float [ 0.000000e+00, %9060 ], [ %9087, %9069 ]
  %9092 = fmul fast float %9089, %7662
  %9093 = fmul fast float %9090, %7664
  %9094 = fmul fast float %9091, %7666
  %9095 = fmul fast float %9062, %8724
  %9096 = call float @dx.op.dot3.f32(i32 55, float %9062, float %9062, float %9062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9097 = call float @dx.op.dot3.f32(i32 55, float %9092, float %9093, float %9094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9098 = select i1 %265, float %9096, float %9062
  %9099 = select i1 %265, float 1.000000e+00, float %9062
  %9100 = select i1 %265, float %9097, float %9092
  %9101 = select i1 %265, float 0.000000e+00, float %9093
  %9102 = select i1 %265, float 0.000000e+00, float %9094
  %9103 = fmul fast float %9098, %8736
  %9104 = fmul fast float %9098, %8737
  %9105 = fmul fast float %9099, %8738
  %9106 = fadd fast float %9103, %9100
  %9107 = fadd fast float %9104, %9101
  %9108 = fadd fast float %9102, %9105
  %9109 = fmul fast float %9098, %8739
  %9110 = fmul fast float %9098, %8740
  %9111 = fmul fast float %9099, %8741
  br label %9112

; <label>:9112                                    ; preds = %9088, %8745, %8714, %7946
  %9113 = phi float [ %7951, %7946 ], [ %8736, %8714 ], [ %9106, %9088 ], [ %8736, %8745 ]
  %9114 = phi float [ %7952, %7946 ], [ %8737, %8714 ], [ %9107, %9088 ], [ %8737, %8745 ]
  %9115 = phi float [ %7953, %7946 ], [ %8738, %8714 ], [ %9108, %9088 ], [ %8738, %8745 ]
  %9116 = phi float [ %7954, %7946 ], [ %8739, %8714 ], [ %9109, %9088 ], [ %8739, %8745 ]
  %9117 = phi float [ %7955, %7946 ], [ %8740, %8714 ], [ %9110, %9088 ], [ %8740, %8745 ]
  %9118 = phi float [ %7956, %7946 ], [ %8741, %8714 ], [ %9111, %9088 ], [ %8741, %8745 ]
  %9119 = phi float [ %7957, %7946 ], [ %8724, %8714 ], [ %9095, %9088 ], [ %8724, %8745 ]
  %9120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9121 = extractvalue %dx.types.CBufRet.f32 %9120, 2
  %9122 = extractvalue %dx.types.CBufRet.f32 %9120, 3
  %9123 = fmul fast float %9121, %106
  %9124 = fmul fast float %9122, %107
  %9125 = call float @dx.op.unary.f32(i32 7, float %9123)  ; Saturate(value)
  %9126 = call float @dx.op.unary.f32(i32 7, float %9124)  ; Saturate(value)
  %9127 = select i1 %7688, i32 2, i32 0
  %9128 = or i32 %9127, 1
  %9129 = uitofp i32 %9128 to float
  %9130 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9125, float %9126, float %9129, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9131 = extractvalue %dx.types.ResRet.f32 %9130, 0
  %9132 = extractvalue %dx.types.ResRet.f32 %9130, 1
  %9133 = extractvalue %dx.types.ResRet.f32 %9130, 2
  %9134 = extractvalue %dx.types.ResRet.f32 %9130, 3
  %9135 = add nuw nsw i32 %9127, 2
  %9136 = uitofp i32 %9135 to float
  %9137 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9125, float %9126, float %9136, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9138 = extractvalue %dx.types.ResRet.f32 %9137, 0
  %9139 = extractvalue %dx.types.ResRet.f32 %9137, 1
  %9140 = extractvalue %dx.types.ResRet.f32 %9137, 2
  %9141 = extractvalue %dx.types.ResRet.f32 %9137, 3
  %9142 = call float @dx.op.binary.f32(i32 35, float %9132, float %9133)  ; FMax(a,b)
  %9143 = call float @dx.op.binary.f32(i32 35, float %9131, float %9142)  ; FMax(a,b)
  %9144 = call float @dx.op.binary.f32(i32 35, float %9143, float %9134)  ; FMax(a,b)
  %9145 = call float @dx.op.binary.f32(i32 36, float %9139, float %9140)  ; FMin(a,b)
  %9146 = call float @dx.op.binary.f32(i32 36, float %9138, float %9145)  ; FMin(a,b)
  %9147 = call float @dx.op.binary.f32(i32 36, float %9146, float %9141)  ; FMin(a,b)
  %9148 = fmul fast float %9144, 2.550000e+02
  %9149 = fadd fast float %9148, 0x3F70101020000000
  %9150 = fptoui float %9149 to i32
  %9151 = fmul fast float %9147, 2.550000e+02
  %9152 = fadd fast float %9151, 0x3F70101020000000
  %9153 = fptoui float %9152 to i32
  %9154 = icmp ult i32 %9150, %9153
  br i1 %9154, label %9155, label %9324

; <label>:9155                                    ; preds = %9112
  %9156 = fcmp fast ogt float %96, 9.843750e-01
  %9157 = fadd fast float %7950, -4.000000e+00
  %9158 = select i1 %9156, float -4.000000e+00, float %9157
  %9159 = call float @dx.op.binary.f32(i32 35, float %9158, float 0.000000e+00)  ; FMax(a,b)
  %9160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9161 = extractvalue %dx.types.CBufRet.f32 %9160, 0
  %9162 = fadd fast float %9161, %9159
  %9163 = extractvalue %dx.types.CBufRet.f32 %9160, 2
  %9164 = fmul fast float %9162, %9163
  %9165 = call float @dx.op.unary.f32(i32 23, float %9164)  ; Log(value)
  %9166 = extractvalue %dx.types.CBufRet.f32 %9160, 3
  %9167 = fmul fast float %9166, %9165
  %9168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9169 = extractvalue %dx.types.CBufRet.f32 %9168, 2
  %9170 = fmul fast float %9167, %9169
  %9171 = call float @dx.op.unary.f32(i32 7, float %9170)  ; Saturate(value)
  %9172 = uitofp i32 %9150 to float
  %9173 = uitofp i32 %9153 to float
  %9174 = fadd fast float %9172, 5.000000e-01
  %9175 = fadd fast float %9173, 5.000000e-01
  %9176 = fmul fast float %9169, %9174
  %9177 = fmul fast float %9169, %9175
  %9178 = fadd fast float %9176, 0x3F0FFB4800000000
  %9179 = fadd fast float %9177, 0xBF0FFB4800000000
  %9180 = call float @dx.op.binary.f32(i32 35, float %9171, float %9178)  ; FMax(a,b)
  %9181 = call float @dx.op.binary.f32(i32 36, float %9180, float %9179)  ; FMin(a,b)
  %9182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9183 = extractvalue %dx.types.CBufRet.f32 %9182, 1
  %9184 = extractvalue %dx.types.CBufRet.f32 %9182, 2
  %9185 = extractvalue %dx.types.CBufRet.f32 %9182, 0
  %9186 = select i1 %7688, float %9185, float 0.000000e+00
  %9187 = fmul fast float %9183, %9181
  %9188 = fadd fast float %9186, %9187
  %9189 = fadd fast float %9186, %9184
  %9190 = fsub fast float %9183, %9184
  %9191 = fadd fast float %9190, %9186
  %9192 = call float @dx.op.binary.f32(i32 35, float %9188, float %9189)  ; FMax(a,b)
  %9193 = call float @dx.op.binary.f32(i32 36, float %9192, float %9191)  ; FMin(a,b)
  %9194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %9125, float %9126, float %9193, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9195 = extractvalue %dx.types.ResRet.f32 %9194, 0
  %9196 = extractvalue %dx.types.ResRet.f32 %9194, 1
  %9197 = extractvalue %dx.types.ResRet.f32 %9194, 2
  %9198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9199 = extractvalue %dx.types.CBufRet.i32 %9198, 0
  %9200 = extractvalue %dx.types.CBufRet.i32 %9198, 1
  %9201 = uitofp i32 %9199 to float
  %9202 = uitofp i32 %9200 to float
  %9203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9204 = extractvalue %dx.types.CBufRet.f32 %9203, 0
  %9205 = extractvalue %dx.types.CBufRet.f32 %9203, 1
  %9206 = fmul fast float %9201, %9125
  %9207 = fmul fast float %9202, %9126
  %9208 = fadd fast float %9206, -5.000000e-01
  %9209 = fadd fast float %9207, -5.000000e-01
  %9210 = call float @dx.op.unary.f32(i32 22, float %9208)  ; Frc(value)
  %9211 = call float @dx.op.unary.f32(i32 22, float %9209)  ; Frc(value)
  %9212 = fmul fast float %9210, %9210
  %9213 = fmul fast float %9212, %9210
  %9214 = fsub fast float 3.000000e+00, %9210
  %9215 = fmul fast float %9212, %9214
  %9216 = fmul fast float %9210, 3.000000e+00
  %9217 = fmul fast float %9213, 3.000000e+00
  %9218 = fmul fast float %9212, 6.000000e+00
  %9219 = fsub fast float %9217, %9218
  %9220 = fadd fast float %9219, 4.000000e+00
  %9221 = fmul fast float %9220, 0x3FC5555560000000
  %9222 = fmul fast float %9213, -3.000000e+00
  %9223 = fadd fast float %9212, %9210
  %9224 = fmul fast float %9223, 3.000000e+00
  %9225 = fadd fast float %9222, 1.000000e+00
  %9226 = fadd fast float %9225, %9224
  %9227 = fmul fast float %9213, 0x3FC5555560000000
  %9228 = fmul fast float %9211, %9211
  %9229 = fmul fast float %9228, %9211
  %9230 = fsub fast float 3.000000e+00, %9211
  %9231 = fmul fast float %9228, %9230
  %9232 = fmul fast float %9211, 3.000000e+00
  %9233 = fmul fast float %9229, 3.000000e+00
  %9234 = fmul fast float %9228, 6.000000e+00
  %9235 = fsub fast float %9233, %9234
  %9236 = fadd fast float %9235, 4.000000e+00
  %9237 = fmul fast float %9236, 0x3FC5555560000000
  %9238 = fmul fast float %9229, -3.000000e+00
  %9239 = fadd fast float %9228, %9211
  %9240 = fmul fast float %9239, 3.000000e+00
  %9241 = fadd fast float %9238, 1.000000e+00
  %9242 = fadd fast float %9241, %9240
  %9243 = fmul fast float %9229, 0x3FC5555560000000
  %9244 = fadd fast float %9210, 1.000000e+00
  %9245 = fsub fast float 1.000000e+00, %9216
  %9246 = fadd fast float %9245, %9215
  %9247 = fadd fast float %9246, %9220
  %9248 = fmul fast float %9247, 0x3FC5555560000000
  %9249 = fdiv fast float %9221, %9248
  %9250 = fsub fast float %9244, %9249
  %9251 = fsub fast float 1.000000e+00, %9210
  %9252 = fadd fast float %9226, %9213
  %9253 = fmul fast float %9252, 0x3FC5555560000000
  %9254 = fdiv fast float %9227, %9253
  %9255 = fadd fast float %9251, %9254
  %9256 = fadd fast float %9211, 1.000000e+00
  %9257 = fsub fast float 1.000000e+00, %9232
  %9258 = fadd fast float %9257, %9231
  %9259 = fadd fast float %9258, %9236
  %9260 = fmul fast float %9259, 0x3FC5555560000000
  %9261 = fdiv fast float %9237, %9260
  %9262 = fsub fast float %9256, %9261
  %9263 = fsub fast float 1.000000e+00, %9211
  %9264 = fadd fast float %9242, %9229
  %9265 = fmul fast float %9264, 0x3FC5555560000000
  %9266 = fdiv fast float %9243, %9265
  %9267 = fadd fast float %9266, %9263
  %9268 = fmul fast float %9250, %9204
  %9269 = fsub fast float %9125, %9268
  %9270 = fmul fast float %9255, %9204
  %9271 = fadd fast float %9270, %9125
  %9272 = fmul fast float %9267, %9205
  %9273 = fadd fast float %9272, %9126
  %9274 = fmul fast float %9262, %9205
  %9275 = fsub fast float %9126, %9274
  %9276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9269, float %9275, float %9193, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9277 = extractvalue %dx.types.ResRet.f32 %9276, 0
  %9278 = extractvalue %dx.types.ResRet.f32 %9276, 1
  %9279 = extractvalue %dx.types.ResRet.f32 %9276, 2
  %9280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9271, float %9275, float %9193, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9281 = extractvalue %dx.types.ResRet.f32 %9280, 0
  %9282 = extractvalue %dx.types.ResRet.f32 %9280, 1
  %9283 = extractvalue %dx.types.ResRet.f32 %9280, 2
  %9284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9269, float %9273, float %9193, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9285 = extractvalue %dx.types.ResRet.f32 %9284, 0
  %9286 = extractvalue %dx.types.ResRet.f32 %9284, 1
  %9287 = extractvalue %dx.types.ResRet.f32 %9284, 2
  %9288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9271, float %9273, float %9193, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9289 = extractvalue %dx.types.ResRet.f32 %9288, 0
  %9290 = extractvalue %dx.types.ResRet.f32 %9288, 1
  %9291 = extractvalue %dx.types.ResRet.f32 %9288, 2
  %9292 = fsub fast float %9285, %9277
  %9293 = fsub fast float %9286, %9278
  %9294 = fsub fast float %9287, %9279
  %9295 = fmul fast float %9292, %9265
  %9296 = fmul fast float %9293, %9265
  %9297 = fmul fast float %9294, %9265
  %9298 = fadd fast float %9295, %9277
  %9299 = fadd fast float %9296, %9278
  %9300 = fadd fast float %9297, %9279
  %9301 = fsub fast float %9289, %9281
  %9302 = fsub fast float %9290, %9282
  %9303 = fsub fast float %9291, %9283
  %9304 = fmul fast float %9301, %9265
  %9305 = fmul fast float %9302, %9265
  %9306 = fmul fast float %9303, %9265
  %9307 = fsub fast float %9281, %9298
  %9308 = fadd fast float %9307, %9304
  %9309 = fsub fast float %9282, %9299
  %9310 = fadd fast float %9309, %9305
  %9311 = fsub fast float %9283, %9300
  %9312 = fadd fast float %9311, %9306
  %9313 = fmul fast float %9308, %9253
  %9314 = fmul fast float %9310, %9253
  %9315 = fmul fast float %9312, %9253
  %9316 = fadd fast float %9313, %9298
  %9317 = fadd fast float %9314, %9299
  %9318 = fadd fast float %9315, %9300
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 1
  %9321 = fmul fast float %9316, %9320
  %9322 = fmul fast float %9317, %9320
  %9323 = fmul fast float %9318, %9320
  br label %9324

; <label>:9324                                    ; preds = %9155, %9112
  %9325 = phi float [ %9195, %9155 ], [ 1.000000e+00, %9112 ]
  %9326 = phi float [ %9196, %9155 ], [ 1.000000e+00, %9112 ]
  %9327 = phi float [ %9197, %9155 ], [ 1.000000e+00, %9112 ]
  %9328 = phi float [ %9321, %9155 ], [ 0.000000e+00, %9112 ]
  %9329 = phi float [ %9322, %9155 ], [ 0.000000e+00, %9112 ]
  %9330 = phi float [ %9323, %9155 ], [ 0.000000e+00, %9112 ]
  %9331 = fmul fast float %9328, %7662
  %9332 = fmul fast float %9329, %7664
  %9333 = fmul fast float %9330, %7666
  %9334 = fmul fast float %9325, %9119
  %9335 = call float @dx.op.dot3.f32(i32 55, float %9325, float %9326, float %9327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9336 = call float @dx.op.dot3.f32(i32 55, float %9331, float %9332, float %9333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9337 = select i1 %265, float %9335, float %9325
  %9338 = select i1 %265, float %9335, float %9326
  %9339 = select i1 %265, float 1.000000e+00, float %9327
  %9340 = select i1 %265, float %9336, float %9331
  %9341 = select i1 %265, float 0.000000e+00, float %9332
  %9342 = select i1 %265, float 0.000000e+00, float %9333
  %9343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9344 = extractvalue %dx.types.CBufRet.i32 %9343, 3
  %9345 = and i32 %9344, 3
  %9346 = icmp ne i32 %9345, 0
  %9347 = and i32 %9344, 4
  %9348 = icmp ne i32 %9347, 0
  %9349 = and i1 %9346, %9348
  %9350 = and i1 %265, %9349
  br i1 %9350, label %9351, label %9357

; <label>:9351                                    ; preds = %9324
  %9352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9353 = extractvalue %dx.types.CBufRet.f32 %9352, 1
  %9354 = fadd fast float %9334, -1.000000e+00
  %9355 = fmul fast float %9353, %9354
  %9356 = fadd fast float %9355, 1.000000e+00
  br label %9357

; <label>:9357                                    ; preds = %9351, %9324
  %9358 = phi float [ %9356, %9351 ], [ %9334, %9324 ]
  %9359 = fadd fast float %9116, %9113
  %9360 = fmul fast float %9337, %9359
  %9361 = fadd fast float %9360, %9340
  %9362 = fadd fast float %9117, %9114
  %9363 = fmul fast float %9338, %9362
  %9364 = fadd fast float %9363, %9341
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 0
  br i1 %265, label %9367, label %9382

; <label>:9367                                    ; preds = %9357
  %9368 = fadd fast float %9361, %9364
  %9369 = fmul fast float %9366, %9368
  %9370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9371 = extractvalue %dx.types.CBufRet.f32 %9370, 3
  %9372 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %9373 = fsub fast float %7675, %7669
  %9374 = fadd fast float %9373, %7676
  %9375 = fsub fast float %9374, %9372
  %9376 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %9377 = fmul fast float %9375, %9376
  %9378 = call float @dx.op.unary.f32(i32 7, float %9377)  ; Saturate(value)
  %9379 = fsub fast float %9378, %9371
  %9380 = fmul fast float %9379, %9358
  %9381 = fadd fast float %9380, %9371
  br label %9408

; <label>:9382                                    ; preds = %9357
  %9383 = fadd fast float %9118, %9115
  %9384 = fmul fast float %9339, %9383
  %9385 = fadd fast float %9384, %9342
  %9386 = fmul fast float %9366, %9361
  %9387 = fmul fast float %9366, %9364
  %9388 = fmul fast float %9366, %9385
  %9389 = call float @dx.op.binary.f32(i32 35, float %9387, float %9388)  ; FMax(a,b)
  %9390 = call float @dx.op.binary.f32(i32 35, float %9386, float %9389)  ; FMax(a,b)
  %9391 = call float @dx.op.binary.f32(i32 35, float %7664, float %7666)  ; FMax(a,b)
  %9392 = call float @dx.op.binary.f32(i32 35, float %7662, float %9391)  ; FMax(a,b)
  %9393 = call float @dx.op.binary.f32(i32 35, float %9390, float %9392)  ; FMax(a,b)
  %9394 = fcmp fast ugt float %9393, 0x3F10000000000000
  br i1 %9394, label %9396, label %9395

; <label>:9395                                    ; preds = %9382
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9396

; <label>:9396                                    ; preds = %9395, %9382
  %9397 = add i32 %55, 356
  %9398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9397, i32 undef)  ; BufferLoad(srv,index,wot)
  %9399 = extractvalue %dx.types.ResRet.i32 %9398, 0
  %9400 = and i32 %9399, 32
  %9401 = icmp eq i32 %9400, 0
  br i1 %9401, label %9408, label %9402

; <label>:9402                                    ; preds = %9396
  %9403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9404 = extractvalue %dx.types.CBufRet.f32 %9403, 0
  %9405 = fmul fast float %9404, 0x3FE99999A0000000
  %9406 = fadd fast float %9404, %9386
  %9407 = fadd fast float %9405, %9388
  br label %9408

; <label>:9408                                    ; preds = %9402, %9396, %9367
  %9409 = phi float [ 1.000000e+00, %9367 ], [ %7664, %9402 ], [ %7664, %9396 ]
  %9410 = phi float [ 1.000000e+00, %9367 ], [ %7666, %9402 ], [ %7666, %9396 ]
  %9411 = phi float [ %9369, %9367 ], [ %9406, %9402 ], [ %9386, %9396 ]
  %9412 = phi float [ %9381, %9367 ], [ %9387, %9402 ], [ %9387, %9396 ]
  %9413 = phi float [ 1.000000e+00, %9367 ], [ %9407, %9402 ], [ %9388, %9396 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9414 = call float @dx.op.binary.f32(i32 36, float %9411, float 3.225500e+04)  ; FMin(a,b)
  %9415 = call float @dx.op.binary.f32(i32 36, float %9412, float 3.225500e+04)  ; FMin(a,b)
  %9416 = call float @dx.op.binary.f32(i32 36, float %9413, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9414)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9415)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9416)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9417 = call float @dx.op.binary.f32(i32 36, float %7662, float 3.225500e+04)  ; FMin(a,b)
  %9418 = call float @dx.op.binary.f32(i32 36, float %9409, float 3.225500e+04)  ; FMin(a,b)
  %9419 = call float @dx.op.binary.f32(i32 36, float %9410, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9417)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9419)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!68 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !97}
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
!93 = !{!94, !95}
!94 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!95 = !{i32 1, !"SV_Target", i8 9, i8 16, !96, i8 0, i32 1, i8 4, i32 1, i8 0, !74}
!96 = !{i32 1}
!97 = !{i32 0, i64 16}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !{!108, !110, !112, !114}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = !{!129, !129, i64 0}
!129 = !{!"float", !105, i64 0}
!130 = !{!131, !133, !135, !136, !138, !139, !140, !142, !143, !144}
!131 = distinct !{!131, !132, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!132 = distinct !{!132, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!133 = distinct !{!133, !134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!134 = distinct !{!134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!135 = distinct !{!135, !134, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!141 = distinct !{!141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!142 = distinct !{!142, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!143 = distinct !{!143, !141, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

