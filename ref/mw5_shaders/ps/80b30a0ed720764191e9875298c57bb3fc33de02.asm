;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         7     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        8     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       11     NONE   float   xyzw
; DECAL_VOLUME_GRID_INDEX     0   x          12     NONE    uint   x   
; ENTITY_IDS               0    yz        12     NONE    uint     z 
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
; shader hash: b0694e0c99bb77ae44b236f2b06c606d
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
; COMP_FACTOR              0                 linear       
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
;   [208 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T3      t9,space1     1
;                                   texture    byte         r/o      T4     t37,space1     1
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = alloca [4 x i32], align 4
  %55 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = alloca [12 x float], align 4
  %101 = alloca [12 x float], align 4
  %102 = alloca [3 x float], align 4
  %103 = alloca [3 x float], align 4
  %104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fmul fast float %107, %96
  %109 = fmul fast float %107, %97
  %110 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %111 = bitcast float %110 to i32
  %112 = ashr i32 %111, 1
  %113 = sub nsw i32 1597250115, %112
  %114 = bitcast i32 %113 to float
  %115 = fmul fast float %114, %87
  %116 = fmul fast float %114, %88
  %117 = fmul fast float %114, %89
  %118 = fmul fast float %88, %85
  %119 = fmul fast float %89, %84
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %89, %83
  %122 = fmul fast float %87, %85
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %87, %84
  %125 = fmul fast float %88, %83
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %120, %86
  %128 = fmul fast float %123, %86
  %129 = fmul fast float %126, %86
  %130 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %131 = bitcast float %130 to i32
  %132 = ashr i32 %131, 1
  %133 = sub nsw i32 1597250115, %132
  %134 = bitcast i32 %133 to float
  %135 = fmul fast float %134, %76
  %136 = fmul fast float %134, %77
  %137 = fmul fast float %134, %78
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = fcmp fast une float %139, 0.000000e+00
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %144 = fmul fast float %108, 2.000000e+00
  %145 = fmul fast float %144, %142
  %146 = fmul fast float %109, 2.000000e+00
  %147 = fmul fast float %146, %143
  %148 = fsub fast float 1.000000e+00, %145
  %149 = fsub fast float 1.000000e+00, %147
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = select i1 %140, float %151, float %155
  %159 = select i1 %140, float %152, float %156
  %160 = select i1 %140, float %153, float %157
  %161 = fmul fast float %158, %148
  %162 = fmul fast float %159, %148
  %163 = fmul fast float %160, %148
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = select i1 %140, float %165, float %169
  %173 = select i1 %140, float %166, float %170
  %174 = select i1 %140, float %167, float %171
  %175 = fmul fast float %172, %149
  %176 = fmul fast float %173, %149
  %177 = fmul fast float %174, %149
  %178 = fadd fast float %175, %161
  %179 = fadd fast float %176, %162
  %180 = fadd fast float %177, %163
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = select i1 %140, float %182, float %186
  %190 = select i1 %140, float %183, float %187
  %191 = select i1 %140, float %184, float %188
  %192 = fadd fast float %178, %189
  %193 = fadd fast float %179, %190
  %194 = fadd fast float %180, %191
  %195 = fmul fast float %192, %99
  %196 = fmul fast float %193, %99
  %197 = fmul fast float %194, %99
  %198 = fmul fast float %108, 5.000000e-01
  %199 = fmul fast float %109, 5.000000e-01
  %200 = fptosi float %198 to i32
  %201 = fptosi float %199 to i32
  %202 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %200, i32 %201, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = lshr i32 %203, 18
  %205 = uitofp i32 %204 to float
  %206 = fmul fast float %205, 0x3F4C00EBA0000000
  %207 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %208 = fadd fast float %207, -1.000000e+00
  %209 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %210 = extractvalue %dx.types.Dimensions %209, 0
  %211 = sitofp i32 %210 to float
  %212 = extractvalue %dx.types.Dimensions %209, 1
  %213 = sitofp i32 %212 to float
  %214 = fcmp fast oge float %198, %211
  %215 = fcmp fast oge float %199, %213
  %216 = or i1 %214, %215
  %217 = select i1 %216, float 0x4197782600000000, float %208
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %221 = fmul fast float %219, %108
  %222 = fmul fast float %220, %109
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 114688
  %226 = icmp ne i32 %225, 0
  %227 = select i1 %226, float %221, float 0.000000e+00
  %228 = select i1 %226, float %222, float 0.000000e+00
  %229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %50, float %227, float %228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = fmul fast float %230, 2.550000e+02
  %232 = fptoui float %231 to i32
  %233 = select i1 %226, i32 %232, i32 0
  %234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.i32 %234, 3
  %236 = and i32 %235, 3
  %237 = icmp ne i32 %236, 0
  %238 = and i32 %235, 4
  %239 = icmp ne i32 %238, 0
  %240 = and i1 %237, %239
  br i1 %240, label %241, label %250

; <label>:241                                     ; preds = %0
  %242 = fmul fast float %143, %109
  %243 = fmul fast float %142, %108
  %244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %49, float %243, float %242, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = fsub fast float 1.000000e+00, %245
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = fcmp fast olt float %246, %248
  br label %253

; <label>:250                                     ; preds = %0
  %251 = icmp eq i32 %238, 0
  %252 = and i1 %237, %251
  br label %253

; <label>:253                                     ; preds = %250, %241
  %254 = phi i1 [ %249, %241 ], [ %252, %250 ]
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %257 = fmul fast float %256, 0x3FE3C6EF40000000
  %258 = frem fast float %108, 2.560000e+02
  %259 = frem fast float %109, 2.560000e+02
  %260 = fptoui float %258 to i32
  %261 = fptoui float %259 to i32
  %262 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %260, i32 %261, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = fadd fast float %263, %257
  %265 = call float @dx.op.unary.f32(i32 22, float %264)  ; Frc(value)
  %266 = add i32 %55, 156
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = shl i32 %268, 4
  %270 = and i32 %269, 32752
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %268, 7
  %273 = and i32 %272, 32752
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %268, 22
  %276 = shl nuw nsw i32 %275, 5
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = add i32 %55, 216
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %280, 8
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = lshr i32 %280, 16
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = add i32 %55, 36
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %55, 288
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %301, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = fmul fast float %303, 0x3F50624DE0000000
  %307 = fmul fast float %305, 0x3F50624DE0000000
  %308 = mul i32 %56, 100
  %309 = add i32 %308, 28
  %310 = add i32 %308, 40
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = add i32 %55, 172
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %55, 232
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %55, 52
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %55, 304
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = shl i32 %354, 4
  %356 = and i32 %355, 32752
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %354, 7
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %354, 22
  %362 = shl nuw nsw i32 %361, 5
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = and i32 %312, 1
  %365 = icmp ne i32 %364, 0
  %366 = select i1 %365, float %357, float %318
  %367 = select i1 %365, float %360, float %321
  %368 = select i1 %365, float %363, float %324
  %369 = add i32 %308, 44
  %370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = fmul fast float %371, %366
  %373 = fmul fast float %371, %367
  %374 = fmul fast float %371, %368
  %375 = add i32 %308, 48
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = shl i32 %377, 4
  %379 = and i32 %378, 32752
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %377, 7
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %377, 22
  %385 = shl nuw nsw i32 %384, 5
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = and i32 %312, 8
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %388, float %380, float %330
  %390 = select i1 %388, float %383, float %334
  %391 = select i1 %388, float %386, float %338
  %392 = add i32 %308, 52
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %394, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = and i32 %312, 2
  %400 = icmp ne i32 %399, 0
  %401 = select i1 %400, float %396, float %343
  %402 = select i1 %400, float %398, float %345
  %403 = add i32 %308, 56
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 65535
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %405, 16
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = and i32 %312, 4
  %411 = icmp ne i32 %410, 0
  %412 = select i1 %411, float %407, float %350
  %413 = fmul float %412, 0x3F50624DE0000000
  %414 = select i1 %411, float %409, float %352
  %415 = fmul float %414, 0x3F50624DE0000000
  %416 = add i32 %308, 60
  %417 = add i32 %308, 32
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %55, 188
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
  %432 = add i32 %55, 248
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
  %446 = add i32 %55, 68
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = add i32 %55, 320
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = shl i32 %461, 4
  %463 = and i32 %462, 32752
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = lshr i32 %461, 7
  %466 = and i32 %465, 32752
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %461, 22
  %469 = shl nuw nsw i32 %468, 5
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = and i32 %419, 1
  %472 = icmp ne i32 %471, 0
  %473 = select i1 %472, float %464, float %425
  %474 = select i1 %472, float %467, float %428
  %475 = select i1 %472, float %470, float %431
  %476 = add i32 %308, 64
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = fmul fast float %478, %473
  %480 = fmul fast float %478, %474
  %481 = fmul fast float %478, %475
  %482 = add i32 %308, 68
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = shl i32 %484, 4
  %486 = and i32 %485, 32752
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = lshr i32 %484, 7
  %489 = and i32 %488, 32752
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %484, 22
  %492 = shl nuw nsw i32 %491, 5
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = and i32 %419, 8
  %495 = icmp ne i32 %494, 0
  %496 = select i1 %495, float %487, float %437
  %497 = select i1 %495, float %490, float %441
  %498 = select i1 %495, float %493, float %445
  %499 = add i32 %308, 72
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 65535
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %501, 16
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = and i32 %419, 2
  %507 = icmp ne i32 %506, 0
  %508 = select i1 %507, float %503, float %450
  %509 = select i1 %507, float %505, float %452
  %510 = add i32 %308, 76
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = and i32 %512, 65535
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = lshr i32 %512, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = and i32 %419, 4
  %518 = icmp ne i32 %517, 0
  %519 = select i1 %518, float %514, float %457
  %520 = fmul float %519, 0x3F50624DE0000000
  %521 = select i1 %518, float %516, float %459
  %522 = fmul float %521, 0x3F50624DE0000000
  %523 = add i32 %308, 80
  %524 = add i32 %308, 36
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = add i32 %55, 204
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = shl i32 %529, 4
  %531 = and i32 %530, 32752
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = lshr i32 %529, 7
  %534 = and i32 %533, 32752
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %529, 22
  %537 = shl nuw nsw i32 %536, 5
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = add i32 %55, 264
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 255
  %543 = uitofp i32 %542 to float
  %544 = fmul fast float %543, 0x3F70101020000000
  %545 = lshr i32 %541, 8
  %546 = and i32 %545, 255
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %547, 0x3F70101020000000
  %549 = lshr i32 %541, 16
  %550 = and i32 %549, 255
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %551, 0x3F70101020000000
  %553 = add i32 %55, 84
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 65535
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = lshr i32 %555, 16
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = add i32 %55, 336
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 65535
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = lshr i32 %562, 16
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = shl i32 %568, 4
  %570 = and i32 %569, 32752
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = lshr i32 %568, 7
  %573 = and i32 %572, 32752
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %568, 22
  %576 = shl nuw nsw i32 %575, 5
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = and i32 %526, 1
  %579 = icmp ne i32 %578, 0
  %580 = select i1 %579, float %571, float %532
  %581 = select i1 %579, float %574, float %535
  %582 = select i1 %579, float %577, float %538
  %583 = add i32 %308, 84
  %584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %45, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = fmul fast float %585, %580
  %587 = fmul fast float %585, %581
  %588 = fmul fast float %585, %582
  %589 = add i32 %308, 88
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = shl i32 %591, 4
  %593 = and i32 %592, 32752
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = lshr i32 %591, 7
  %596 = and i32 %595, 32752
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = lshr i32 %591, 22
  %599 = shl nuw nsw i32 %598, 5
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = and i32 %526, 8
  %602 = icmp ne i32 %601, 0
  %603 = select i1 %602, float %594, float %544
  %604 = select i1 %602, float %597, float %548
  %605 = select i1 %602, float %600, float %552
  %606 = add i32 %308, 92
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 65535
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %608, 16
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = and i32 %526, 2
  %614 = icmp ne i32 %613, 0
  %615 = select i1 %614, float %610, float %557
  %616 = select i1 %614, float %612, float %559
  %617 = add i32 %308, 96
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 65535
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = lshr i32 %619, 16
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = and i32 %526, 4
  %625 = icmp ne i32 %624, 0
  %626 = select i1 %625, float %621, float %564
  %627 = fmul float %626, 0x3F50624DE0000000
  %628 = select i1 %625, float %623, float %566
  %629 = fmul float %628, 0x3F50624DE0000000
  %630 = add i32 %55, 348
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 32
  %634 = icmp eq i32 %633, 0
  %635 = and i32 %632, 64
  %636 = icmp eq i32 %635, 0
  %637 = and i32 %632, 128
  %638 = icmp eq i32 %637, 0
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 2
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %658, label %643

; <label>:643                                     ; preds = %253
  %644 = add i32 %55, 520
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %644, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = add i32 %646, 0
  %648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %648, %dx.types.Handle %105, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = extractvalue %dx.types.ResRet.f32 %649, 1
  %652 = extractvalue %dx.types.ResRet.f32 %649, 2
  %653 = extractvalue %dx.types.ResRet.f32 %649, 3
  %654 = fmul fast float %653, %92
  %655 = fmul fast float %650, %93
  %656 = fmul fast float %651, %94
  %657 = fmul fast float %652, %95
  br label %658

; <label>:658                                     ; preds = %643, %253
  %659 = phi float [ %95, %253 ], [ %657, %643 ]
  %660 = phi float [ %94, %253 ], [ %656, %643 ]
  %661 = phi float [ %93, %253 ], [ %655, %643 ]
  %662 = phi float [ %92, %253 ], [ %654, %643 ]
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = and i32 %664, 2
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %686, label %667

; <label>:667                                     ; preds = %658
  %668 = add i32 %55, 44
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 1
  %672 = icmp ne i32 %671, 0
  %673 = select i1 %672, float %661, float 1.000000e+00
  %674 = add i32 %55, 60
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 1
  %678 = icmp ne i32 %677, 0
  %679 = select i1 %678, float %660, float 1.000000e+00
  %680 = add i32 %55, 76
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 1
  %684 = icmp ne i32 %683, 0
  %685 = select i1 %684, float %659, float 1.000000e+00
  br label %686

; <label>:686                                     ; preds = %667, %658
  %687 = phi float [ %659, %658 ], [ %685, %667 ]
  %688 = phi float [ %660, %658 ], [ %679, %667 ]
  %689 = phi float [ %661, %658 ], [ %673, %667 ]
  %690 = lshr i32 %664, 20
  %691 = and i32 %690, 3
  %692 = add nuw nsw i32 %691, 1
  %693 = add i32 %55, 24
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %55, 28
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = or i32 %698, %695
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %1319, label %701

; <label>:701                                     ; preds = %686
  %702 = and i32 %695, 262144
  %703 = icmp ne i32 %702, 0
  %704 = select i1 %703, float %62, float 1.000000e+00
  %705 = select i1 %703, float %63, float 0.000000e+00
  %706 = select i1 %703, float %64, float 0.000000e+00
  %707 = select i1 %703, float %65, float 1.000000e+00
  %708 = select i1 %703, float %66, float %90
  %709 = select i1 %703, float %67, float %91
  %710 = add i32 %55, 284
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = lshr i32 %712, 16
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = fmul fast float %714, 0x3F50624DE0000000
  %716 = add i32 %55, 88
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = lshr i32 %718, 16
  %720 = and i32 %719, 255
  %721 = lshr i32 %718, 24
  %722 = add i32 %55, 292
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 65535
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = lshr i32 %724, 16
  %728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %727)  ; LegacyF16ToF32(value)
  %729 = add i32 %55, 32
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 22
  %733 = shl nuw nsw i32 %732, 5
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = shl i32 %731, 4
  %736 = and i32 %735, 32752
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = lshr i32 %731, 7
  %739 = and i32 %738, 32752
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 3
  %743 = fmul fast float %742, 1.000000e+03
  %744 = fmul fast float %306, %743
  %745 = call float @dx.op.unary.f32(i32 22, float %744)  ; Frc(value)
  %746 = fadd fast float %745, %296
  %747 = fmul fast float %307, %743
  %748 = call float @dx.op.unary.f32(i32 22, float %747)  ; Frc(value)
  %749 = fadd fast float %748, %298
  %750 = fmul fast float %715, %743
  %751 = call float @dx.op.unary.f32(i32 22, float %750)  ; Frc(value)
  %752 = fmul fast float %751, 0x401921FB60000000
  %753 = fadd fast float %752, %734
  %754 = call float @dx.op.unary.f32(i32 13, float %753)  ; Sin(value)
  %755 = call float @dx.op.unary.f32(i32 12, float %753)  ; Cos(value)
  %756 = fsub fast float -0.000000e+00, %754
  %757 = fadd fast float %708, -5.000000e-01
  %758 = fadd fast float %709, -5.000000e-01
  %759 = fmul fast float %726, %757
  %760 = fmul fast float %728, %758
  %761 = fadd fast float %759, 5.000000e-01
  %762 = fadd fast float %760, 5.000000e-01
  %763 = fmul fast float %737, %761
  %764 = fmul fast float %740, %762
  %765 = fmul fast float %755, %763
  %766 = call float @dx.op.tertiary.f32(i32 46, float %756, float %764, float %765)  ; FMad(a,b,c)
  %767 = fmul fast float %754, %763
  %768 = call float @dx.op.tertiary.f32(i32 46, float %755, float %764, float %767)  ; FMad(a,b,c)
  %769 = fadd fast float %746, %766
  %770 = fadd fast float %749, %768
  %771 = icmp ugt i32 %720, 1
  %772 = icmp ugt i32 %718, 33554431
  %773 = or i1 %772, %771
  br i1 %773, label %774, label %799

; <label>:774                                     ; preds = %701
  %775 = add i32 %55, 228
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = lshr i32 %777, 16
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = fmul fast float %742, %779
  %781 = call float @dx.op.unary.f32(i32 22, float %780)  ; Frc(value)
  %782 = mul nuw nsw i32 %720, %721
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %781, %783
  %785 = call float @dx.op.unary.f32(i32 27, float %784)  ; Round_ni(value)
  %786 = fptoui float %785 to i32
  %787 = urem i32 %786, %720
  %788 = udiv i32 %786, %721
  %789 = call float @dx.op.unary.f32(i32 22, float %769)  ; Frc(value)
  %790 = call float @dx.op.unary.f32(i32 22, float %770)  ; Frc(value)
  %791 = uitofp i32 %787 to float
  %792 = uitofp i32 %788 to float
  %793 = fadd fast float %789, %791
  %794 = fadd fast float %790, %792
  %795 = uitofp i32 %720 to float
  %796 = uitofp i32 %721 to float
  %797 = fdiv fast float %793, %795
  %798 = fdiv fast float %794, %796
  br label %799

; <label>:799                                     ; preds = %774, %701
  %800 = phi float [ %797, %774 ], [ %769, %701 ]
  %801 = phi float [ %798, %774 ], [ %770, %701 ]
  %802 = and i32 %695, 256
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %850, label %804

; <label>:804                                     ; preds = %799
  %805 = add i32 %55, 456
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = add i32 %807, 0
  %809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %809, %dx.types.Handle %105, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = add i32 %55, 100
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = shl i32 %814, 4
  %816 = and i32 %815, 32752
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = lshr i32 %814, 7
  %819 = and i32 %818, 32752
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = fsub fast float 1.000000e+00, %662
  %822 = call float @dx.op.binary.f32(i32 35, float %821, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %823 = bitcast float %662 to i32
  %824 = sitofp i32 %823 to float
  %825 = fadd fast float %824, 0xC1CFBF8940000000
  %826 = fmul fast float %820, %825
  %827 = fadd fast float %826, 0x41CFBF8940000000
  %828 = fptosi float %827 to i32
  %829 = bitcast i32 %828 to float
  %830 = bitcast float %822 to i32
  %831 = sitofp i32 %830 to float
  %832 = fadd fast float %831, 0xC1CFBF8940000000
  %833 = fmul fast float %832, %820
  %834 = fadd fast float %833, 0x41CFBF8940000000
  %835 = fptosi float %834 to i32
  %836 = bitcast i32 %835 to float
  %837 = fmul fast float %829, %817
  %838 = fmul fast float %836, %817
  %839 = fsub fast float %822, %837
  %840 = fadd fast float %838, %822
  %841 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %842 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %843 = fsub fast float %811, %841
  %844 = fsub fast float %842, %841
  %845 = bitcast float %844 to i32
  %846 = sub nsw i32 2129859010, %845
  %847 = bitcast i32 %846 to float
  %848 = fmul fast float %847, %843
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  br label %850

; <label>:850                                     ; preds = %804, %799
  %851 = phi float [ %849, %804 ], [ %662, %799 ]
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 128
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %872, label %856

; <label>:856                                     ; preds = %850
  %857 = add i32 %55, 440
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = add i32 %859, 0
  %861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %861, %dx.types.Handle %105, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = and i32 %865, 524288
  %867 = icmp ne i32 %866, 0
  %868 = fcmp fast ogt float %863, 0x3FE0101020000000
  %869 = select i1 %868, float 1.000000e+00, float 0.000000e+00
  %870 = select i1 %867, float %869, float %863
  %871 = fmul fast float %870, %851
  br label %872

; <label>:872                                     ; preds = %856, %850
  %873 = phi float [ %871, %856 ], [ %851, %850 ]
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = and i32 %875, 16
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %1076, label %878

; <label>:878                                     ; preds = %872
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = add i32 %55, 392
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = add i32 %883, 0
  %885 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %884, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %886 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %885, %dx.types.Handle %104, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = extractvalue %dx.types.ResRet.f32 %886, 1
  %889 = extractvalue %dx.types.ResRet.f32 %886, 2
  %890 = extractvalue %dx.types.ResRet.f32 %886, 3
  %891 = and i32 %880, 255
  %892 = uitofp i32 %891 to float
  %893 = lshr i32 %880, 8
  %894 = and i32 %893, 255
  %895 = uitofp i32 %894 to float
  %896 = fmul fast float %890, %892
  %897 = fadd fast float %896, %895
  %898 = fmul fast float %897, 0x3F70101000000000
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 512
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %911, label %903

; <label>:903                                     ; preds = %878
  %904 = add i32 %55, 472
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = add i32 %906, 0
  %908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %908, %dx.types.Handle %105, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  br label %911

; <label>:911                                     ; preds = %903, %878
  %912 = phi float [ %910, %903 ], [ 1.000000e+00, %878 ]
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, 33554432
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %1023, label %917

; <label>:917                                     ; preds = %911
  %918 = add i32 %55, 224
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = and i32 %920, 65535
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = lshr i32 %920, 16
  %924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %923)  ; LegacyF16ToF32(value)
  %925 = add i32 %55, 228
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 65535
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = lshr i32 %931, 24
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %933, 0x3F70101020000000
  %935 = and i32 %931, 255
  %936 = uitofp i32 %935 to float
  %937 = fmul fast float %936, 0x3F70101020000000
  %938 = lshr i32 %931, 8
  %939 = and i32 %938, 255
  %940 = uitofp i32 %939 to float
  %941 = fmul fast float %940, 0x3F70101020000000
  %942 = lshr i32 %931, 16
  %943 = and i32 %942, 255
  %944 = uitofp i32 %943 to float
  %945 = fmul fast float %944, 0x3F70101020000000
  %946 = add i32 %55, 220
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = lshr i32 %948, 24
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = and i32 %948, 255
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3F70101020000000
  %955 = lshr i32 %948, 8
  %956 = and i32 %955, 255
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = lshr i32 %948, 16
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101020000000
  %963 = bitcast float %887 to i32
  %964 = ashr i32 %963, 1
  %965 = sub nsw i32 1597463174, %964
  %966 = bitcast i32 %965 to float
  %967 = fmul fast float %887, 5.000000e-01
  %968 = fmul fast float %966, %966
  %969 = fmul fast float %968, %967
  %970 = fsub fast float 1.500000e+00, %969
  %971 = fmul fast float %966, %887
  %972 = fmul fast float %971, %970
  %973 = bitcast float %888 to i32
  %974 = ashr i32 %973, 1
  %975 = sub nsw i32 1597463174, %974
  %976 = bitcast i32 %975 to float
  %977 = fmul fast float %888, 5.000000e-01
  %978 = fmul fast float %976, %976
  %979 = fmul fast float %978, %977
  %980 = fsub fast float 1.500000e+00, %979
  %981 = fmul fast float %976, %888
  %982 = fmul fast float %981, %980
  %983 = bitcast float %889 to i32
  %984 = ashr i32 %983, 1
  %985 = sub nsw i32 1597463174, %984
  %986 = bitcast i32 %985 to float
  %987 = fmul fast float %889, 5.000000e-01
  %988 = fmul fast float %986, %986
  %989 = fmul fast float %988, %987
  %990 = fsub fast float 1.500000e+00, %989
  %991 = fmul fast float %986, %889
  %992 = fmul fast float %991, %990
  %993 = fsub fast float %972, %954
  %994 = fsub fast float %982, %958
  %995 = fsub fast float %992, %962
  %996 = fmul fast float %993, %922
  %997 = fmul fast float %994, %924
  %998 = fmul fast float %995, %929
  %999 = fadd fast float %996, %937
  %1000 = fadd fast float %997, %941
  %1001 = fadd fast float %998, %945
  %1002 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1003 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1004 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1005 = fmul fast float %1002, %1002
  %1006 = fmul fast float %1003, %1003
  %1007 = fmul fast float %1004, %1004
  %1008 = fsub fast float %1005, %887
  %1009 = fsub fast float %1006, %888
  %1010 = fsub fast float %1007, %889
  %1011 = fmul fast float %1008, %912
  %1012 = fmul fast float %1009, %912
  %1013 = fmul fast float %1010, %912
  %1014 = fadd fast float %1011, %887
  %1015 = fadd fast float %1012, %888
  %1016 = fadd fast float %1013, %889
  %1017 = fadd fast float %934, %898
  %1018 = fsub fast float %1017, %951
  %1019 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1020 = fsub fast float %1019, %898
  %1021 = fmul fast float %1020, %912
  %1022 = fadd fast float %1021, %898
  br label %1076

; <label>:1023                                    ; preds = %911
  %1024 = and i32 %914, 134217728
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1060, label %1026

; <label>:1026                                    ; preds = %1023
  %1027 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %1028 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %1029 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1030 = fadd fast float %1027, -5.000000e-01
  %1031 = fadd fast float %1028, -5.000000e-01
  %1032 = fadd fast float %1029, -5.000000e-01
  %1033 = fmul fast float %1030, %912
  %1034 = fmul fast float %1031, %912
  %1035 = fmul fast float %1032, %912
  %1036 = fadd fast float %1033, 5.000000e-01
  %1037 = fadd fast float %1034, 5.000000e-01
  %1038 = fadd fast float %1035, 5.000000e-01
  %1039 = call float @dx.op.unary.f32(i32 24, float %887)  ; Sqrt(value)
  %1040 = call float @dx.op.unary.f32(i32 24, float %888)  ; Sqrt(value)
  %1041 = call float @dx.op.unary.f32(i32 24, float %889)  ; Sqrt(value)
  %1042 = fmul fast float %1036, 2.000000e+00
  %1043 = fsub fast float 1.000000e+00, %1042
  %1044 = fmul fast float %1043, %1039
  %1045 = fadd fast float %1044, %1042
  %1046 = fmul fast float %1045, %1039
  %1047 = fmul fast float %1037, 2.000000e+00
  %1048 = fsub fast float 1.000000e+00, %1047
  %1049 = fmul fast float %1048, %1040
  %1050 = fadd fast float %1049, %1047
  %1051 = fmul fast float %1050, %1040
  %1052 = fmul fast float %1038, 2.000000e+00
  %1053 = fsub fast float 1.000000e+00, %1052
  %1054 = fmul fast float %1053, %1041
  %1055 = fadd fast float %1054, %1052
  %1056 = fmul fast float %1055, %1041
  %1057 = fmul fast float %1046, %1046
  %1058 = fmul fast float %1051, %1051
  %1059 = fmul fast float %1056, %1056
  br label %1076

; <label>:1060                                    ; preds = %1023
  %1061 = fmul fast float %283, %283
  %1062 = fmul fast float %287, %287
  %1063 = fmul fast float %291, %291
  %1064 = fadd fast float %1061, -1.000000e+00
  %1065 = fadd fast float %1062, -1.000000e+00
  %1066 = fadd fast float %1063, -1.000000e+00
  %1067 = fmul fast float %912, %1064
  %1068 = fmul fast float %912, %1065
  %1069 = fmul fast float %912, %1066
  %1070 = fadd fast float %1067, 1.000000e+00
  %1071 = fadd fast float %1068, 1.000000e+00
  %1072 = fadd fast float %1069, 1.000000e+00
  %1073 = fmul fast float %1070, %887
  %1074 = fmul fast float %1071, %888
  %1075 = fmul fast float %1072, %889
  br label %1076

; <label>:1076                                    ; preds = %1060, %1026, %917, %872
  %1077 = phi float [ %1022, %917 ], [ %898, %1026 ], [ %898, %1060 ], [ 0x3FA23C0BE0000000, %872 ]
  %1078 = phi float [ %1014, %917 ], [ %1057, %1026 ], [ %1073, %1060 ], [ 1.000000e+00, %872 ]
  %1079 = phi float [ %1015, %917 ], [ %1058, %1026 ], [ %1074, %1060 ], [ 1.000000e+00, %872 ]
  %1080 = phi float [ %1016, %917 ], [ %1059, %1026 ], [ %1075, %1060 ], [ 1.000000e+00, %872 ]
  %1081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.i32 %1081, 1
  %1083 = and i32 %1082, 1
  %1084 = icmp ne i32 %1083, 0
  %1085 = add i32 %55, 356
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 32
  %1089 = icmp ne i32 %1088, 0
  %1090 = and i1 %1084, %1089
  %1091 = select i1 %1090, float 1.000000e+00, float %1078
  %1092 = select i1 %1090, float 0x3FD3333340000000, float %1079
  %1093 = select i1 %1090, float 0x3FD3333340000000, float %1080
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 32
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1170, label %1098

; <label>:1098                                    ; preds = %1076
  %1099 = add i32 %55, 92
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %55, 408
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = add i32 %1104, 0
  %1106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1106, %dx.types.Handle %104, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = extractvalue %dx.types.ResRet.f32 %1107, 3
  %1112 = and i32 %1101, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = lshr i32 %1101, 8
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = lshr i32 %1101, 16
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101000000000
  %1121 = fmul fast float %1108, %1113
  %1122 = fadd fast float %1121, %1116
  %1123 = fmul fast float %1122, 0x3F70101000000000
  %1124 = fadd fast float %1109, -5.000000e-01
  %1125 = fadd fast float %1111, -5.000000e-01
  %1126 = fmul fast float %1124, %1120
  %1127 = fmul fast float %1125, %1120
  %1128 = fadd fast float %1126, 5.000000e-01
  %1129 = fadd fast float %1127, 5.000000e-01
  %1130 = fmul fast float %1128, 2.000000e+00
  %1131 = fadd fast float %1130, -1.000000e+00
  %1132 = fmul fast float %1129, 2.000000e+00
  %1133 = fadd fast float %1132, -1.000000e+00
  %1134 = fadd fast float %1131, %1133
  %1135 = fmul fast float %1134, 5.000000e-01
  %1136 = fsub fast float %1131, %1133
  %1137 = fmul fast float %1136, 5.000000e-01
  %1138 = call float @dx.op.unary.f32(i32 6, float %1135)  ; FAbs(value)
  %1139 = fsub fast float 1.000000e+00, %1138
  %1140 = call float @dx.op.unary.f32(i32 6, float %1137)  ; FAbs(value)
  %1141 = fsub fast float %1139, %1140
  %1142 = call float @dx.op.dot3.f32(i32 55, float %1135, float %1137, float %1141, float %1135, float %1137, float %1141)  ; Dot3(ax,ay,az,bx,by,bz)
  %1143 = call float @dx.op.unary.f32(i32 25, float %1142)  ; Rsqrt(value)
  %1144 = fmul fast float %1135, %1143
  %1145 = fmul fast float %1137, %1143
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 67108864
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1166, label %1150

; <label>:1150                                    ; preds = %1098
  %1151 = add i32 %55, 280
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 65535
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = and i32 %1157, 65535
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = lshr i32 %1153, 16
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = fsub fast float %1123, %1161
  %1163 = fmul fast float %1162, %1155
  %1164 = fadd fast float %1163, %1159
  %1165 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  br label %1166

; <label>:1166                                    ; preds = %1150, %1098
  %1167 = phi float [ %1165, %1150 ], [ %1123, %1098 ]
  %1168 = call float @dx.op.dot2.f32(i32 54, float %1144, float %1145, float %704, float %705)  ; Dot2(ax,ay,bx,by)
  %1169 = call float @dx.op.dot2.f32(i32 54, float %1144, float %1145, float %706, float %707)  ; Dot2(ax,ay,bx,by)
  br label %1170

; <label>:1170                                    ; preds = %1166, %1076
  %1171 = phi float [ %1167, %1166 ], [ 0x3FD6666660000000, %1076 ]
  %1172 = phi float [ %1168, %1166 ], [ 0.000000e+00, %1076 ]
  %1173 = phi float [ %1169, %1166 ], [ 0.000000e+00, %1076 ]
  %1174 = phi float [ %1110, %1166 ], [ 1.000000e+00, %1076 ]
  %1175 = add i32 %55, 160
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 22
  %1179 = shl nuw nsw i32 %1178, 5
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 64
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1218, label %1185

; <label>:1185                                    ; preds = %1170
  %1186 = add i32 %55, 424
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %1188, 0
  %1190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 131072
  %1194 = icmp eq i32 %1193, 0
  %1195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1190, %dx.types.Handle %104, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = fmul fast float %1196, %271
  %1200 = fmul fast float %1197, %274
  %1201 = fmul fast float %1198, %277
  br i1 %1194, label %1208, label %1202

; <label>:1202                                    ; preds = %1185
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 0
  %1205 = fmul fast float %1204, %1199
  %1206 = fmul fast float %1204, %1200
  %1207 = fmul fast float %1204, %1201
  br label %1208

; <label>:1208                                    ; preds = %1202, %1185
  %1209 = phi float [ %1205, %1202 ], [ %1199, %1185 ]
  %1210 = phi float [ %1206, %1202 ], [ %1200, %1185 ]
  %1211 = phi float [ %1207, %1202 ], [ %1201, %1185 ]
  %1212 = fmul fast float %1209, %1180
  %1213 = select i1 %254, float %1212, float %1209
  %1214 = call float @dx.op.dot3.f32(i32 55, float %1213, float %1210, float %1211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1215 = select i1 %254, float 0.000000e+00, float %1209
  %1216 = select i1 %254, float %1214, float %1210
  %1217 = select i1 %254, float 0.000000e+00, float %1211
  br label %1218

; <label>:1218                                    ; preds = %1208, %1170
  %1219 = phi float [ %1215, %1208 ], [ 0.000000e+00, %1170 ]
  %1220 = phi float [ %1216, %1208 ], [ 0.000000e+00, %1170 ]
  %1221 = phi float [ %1217, %1208 ], [ 0.000000e+00, %1170 ]
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 1024
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1256, label %1226

; <label>:1226                                    ; preds = %1218
  %1227 = add i32 %55, 152
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = lshr i32 %1229, 8
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = lshr i32 %1229, 16
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F70101020000000
  %1241 = fmul fast float %1232, %1232
  %1242 = fmul fast float %1236, %1236
  %1243 = fmul fast float %1240, %1240
  %1244 = add i32 %55, 488
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = add i32 %1246, 0
  %1248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1248, %dx.types.Handle %105, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = fmul fast float %1241, %1250
  %1254 = fmul fast float %1242, %1251
  %1255 = fmul fast float %1243, %1252
  br label %1256

; <label>:1256                                    ; preds = %1226, %1218
  %1257 = phi float [ %1253, %1226 ], [ 0.000000e+00, %1218 ]
  %1258 = phi float [ %1254, %1226 ], [ 0.000000e+00, %1218 ]
  %1259 = phi float [ %1255, %1226 ], [ 0.000000e+00, %1218 ]
  %1260 = fcmp fast ogt float %1257, 0.000000e+00
  %1261 = fcmp fast ogt float %1258, 0.000000e+00
  %1262 = fcmp fast ogt float %1259, 0.000000e+00
  %1263 = call float @dx.op.unary.f32(i32 23, float %1257)  ; Log(value)
  %1264 = call float @dx.op.unary.f32(i32 23, float %1258)  ; Log(value)
  %1265 = call float @dx.op.unary.f32(i32 23, float %1259)  ; Log(value)
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = lshr i32 %1267, 7
  %1269 = and i32 %1268, 32752
  %1270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1269)  ; LegacyF16ToF32(value)
  %1271 = fmul fast float %1263, 0xBFE62E4300000000
  %1272 = fmul fast float %1271, %1270
  %1273 = fmul fast float %1264, 0xBFE62E4300000000
  %1274 = fmul fast float %1273, %1270
  %1275 = fmul fast float %1265, 0xBFE62E4300000000
  %1276 = fmul fast float %1275, %1270
  %1277 = select i1 %1260, float %1272, float 1.270000e+02
  %1278 = select i1 %1261, float %1274, float 1.270000e+02
  %1279 = select i1 %1262, float %1276, float 1.270000e+02
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = and i32 %1281, 10240
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1304, label %1284

; <label>:1284                                    ; preds = %1256
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = and i32 %1286, 2048
  %1288 = icmp eq i32 %1287, 0
  br i1 %1288, label %1304, label %1289

; <label>:1289                                    ; preds = %1284
  %1290 = add i32 %55, 504
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = add i32 %1292, 0
  %1294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1293, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1295 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1294, %dx.types.Handle %105, float %800, float %801, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1296 = extractvalue %dx.types.ResRet.f32 %1295, 3
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = shl i32 %1298, 4
  %1300 = and i32 %1299, 32752
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = fmul fast float %1301, %1296
  %1303 = call float @dx.op.binary.f32(i32 35, float %1302, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1304

; <label>:1304                                    ; preds = %1289, %1284, %1256
  %1305 = phi float [ %1303, %1289 ], [ 0x3F70101020000000, %1284 ], [ 0x3F70101020000000, %1256 ]
  %1306 = add i32 %55, 96
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = lshr i32 %1308, 8
  %1312 = and i32 %1311, 255
  %1313 = uitofp i32 %1312 to float
  %1314 = call float @dx.op.dot3.f32(i32 55, float %1091, float %1092, float %1093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1315 = fmul fast float %1313, %1314
  %1316 = fadd fast float %1315, %1310
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  br label %1319

; <label>:1319                                    ; preds = %1304, %686
  %1320 = phi float [ 0.000000e+00, %686 ], [ %1172, %1304 ]
  %1321 = phi float [ 0.000000e+00, %686 ], [ %1173, %1304 ]
  %1322 = phi float [ 0.000000e+00, %686 ], [ %1219, %1304 ]
  %1323 = phi float [ 0.000000e+00, %686 ], [ %1220, %1304 ]
  %1324 = phi float [ 0.000000e+00, %686 ], [ %1221, %1304 ]
  %1325 = phi float [ 0.000000e+00, %686 ], [ %1091, %1304 ]
  %1326 = phi float [ 0.000000e+00, %686 ], [ %1092, %1304 ]
  %1327 = phi float [ 0.000000e+00, %686 ], [ %1093, %1304 ]
  %1328 = phi float [ 0.000000e+00, %686 ], [ %1277, %1304 ]
  %1329 = phi float [ 0.000000e+00, %686 ], [ %1278, %1304 ]
  %1330 = phi float [ 0.000000e+00, %686 ], [ %1279, %1304 ]
  %1331 = phi float [ 0.000000e+00, %686 ], [ %1077, %1304 ]
  %1332 = phi float [ 0.000000e+00, %686 ], [ %873, %1304 ]
  %1333 = phi float [ 0.000000e+00, %686 ], [ %1171, %1304 ]
  %1334 = phi float [ 0.000000e+00, %686 ], [ %1174, %1304 ]
  %1335 = phi float [ 0.000000e+00, %686 ], [ %1305, %1304 ]
  %1336 = phi float [ 0.000000e+00, %686 ], [ %1318, %1304 ]
  br i1 %634, label %2208, label %1337

; <label>:1337                                    ; preds = %1319
  %1338 = icmp ult i32 %692, 2
  %1339 = add i32 %55, 40
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = add i32 %55, 44
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = or i32 %1344, %1341
  %1346 = icmp eq i32 %1345, 0
  br i1 %1346, label %2208, label %1347

; <label>:1347                                    ; preds = %1337
  %1348 = and i32 %1341, 262144
  %1349 = icmp ne i32 %1348, 0
  %1350 = select i1 %1349, float %62, float 1.000000e+00
  %1351 = select i1 %1349, float %63, float 0.000000e+00
  %1352 = select i1 %1349, float %64, float 0.000000e+00
  %1353 = select i1 %1349, float %65, float 1.000000e+00
  %1354 = select i1 %1349, float %66, float %90
  %1355 = select i1 %1349, float %67, float %91
  %1356 = add i32 %55, 300
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = lshr i32 %1358, 16
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = fmul fast float %1360, 0x3F50624DE0000000
  %1362 = add i32 %55, 104
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = lshr i32 %1364, 16
  %1366 = and i32 %1365, 255
  %1367 = lshr i32 %1364, 24
  %1368 = add i32 %55, 308
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, 65535
  %1372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1371)  ; LegacyF16ToF32(value)
  %1373 = lshr i32 %1370, 16
  %1374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1373)  ; LegacyF16ToF32(value)
  %1375 = add i32 %55, 48
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = lshr i32 %1377, 22
  %1379 = shl nuw nsw i32 %1378, 5
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = shl i32 %1377, 4
  %1382 = and i32 %1381, 32752
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = lshr i32 %1377, 7
  %1385 = and i32 %1384, 32752
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1389 = fmul fast float %1388, 1.000000e+03
  %1390 = fmul fast float %1389, %413
  %1391 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1392 = fadd fast float %1391, %401
  %1393 = fmul fast float %1389, %415
  %1394 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  %1395 = fadd fast float %1394, %402
  %1396 = fmul fast float %1361, %1389
  %1397 = call float @dx.op.unary.f32(i32 22, float %1396)  ; Frc(value)
  %1398 = fmul fast float %1397, 0x401921FB60000000
  %1399 = fadd fast float %1398, %1380
  %1400 = call float @dx.op.unary.f32(i32 13, float %1399)  ; Sin(value)
  %1401 = call float @dx.op.unary.f32(i32 12, float %1399)  ; Cos(value)
  %1402 = fsub fast float -0.000000e+00, %1400
  %1403 = fadd fast float %1354, -5.000000e-01
  %1404 = fadd fast float %1355, -5.000000e-01
  %1405 = fmul fast float %1372, %1403
  %1406 = fmul fast float %1374, %1404
  %1407 = fadd fast float %1405, 5.000000e-01
  %1408 = fadd fast float %1406, 5.000000e-01
  %1409 = fmul fast float %1383, %1407
  %1410 = fmul fast float %1386, %1408
  %1411 = fmul fast float %1401, %1409
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1402, float %1410, float %1411)  ; FMad(a,b,c)
  %1413 = fmul fast float %1400, %1409
  %1414 = call float @dx.op.tertiary.f32(i32 46, float %1401, float %1410, float %1413)  ; FMad(a,b,c)
  %1415 = fadd fast float %1392, %1412
  %1416 = fadd fast float %1395, %1414
  %1417 = icmp ugt i32 %1366, 1
  %1418 = icmp ugt i32 %1364, 33554431
  %1419 = or i1 %1418, %1417
  br i1 %1419, label %1420, label %1445

; <label>:1420                                    ; preds = %1347
  %1421 = add i32 %55, 244
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = lshr i32 %1423, 16
  %1425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1424)  ; LegacyF16ToF32(value)
  %1426 = fmul fast float %1388, %1425
  %1427 = call float @dx.op.unary.f32(i32 22, float %1426)  ; Frc(value)
  %1428 = mul nuw nsw i32 %1366, %1367
  %1429 = uitofp i32 %1428 to float
  %1430 = fmul fast float %1427, %1429
  %1431 = call float @dx.op.unary.f32(i32 27, float %1430)  ; Round_ni(value)
  %1432 = fptoui float %1431 to i32
  %1433 = urem i32 %1432, %1366
  %1434 = udiv i32 %1432, %1367
  %1435 = call float @dx.op.unary.f32(i32 22, float %1415)  ; Frc(value)
  %1436 = call float @dx.op.unary.f32(i32 22, float %1416)  ; Frc(value)
  %1437 = uitofp i32 %1433 to float
  %1438 = uitofp i32 %1434 to float
  %1439 = fadd fast float %1435, %1437
  %1440 = fadd fast float %1436, %1438
  %1441 = uitofp i32 %1366 to float
  %1442 = uitofp i32 %1367 to float
  %1443 = fdiv fast float %1439, %1441
  %1444 = fdiv fast float %1440, %1442
  br label %1445

; <label>:1445                                    ; preds = %1420, %1347
  %1446 = phi float [ %1443, %1420 ], [ %1415, %1347 ]
  %1447 = phi float [ %1444, %1420 ], [ %1416, %1347 ]
  %1448 = and i32 %1341, 256
  %1449 = icmp eq i32 %1448, 0
  br i1 %1449, label %1496, label %1450

; <label>:1450                                    ; preds = %1445
  %1451 = add i32 %55, 460
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = add i32 %1453, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1455, %dx.types.Handle %105, float %1446, float %1447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = add i32 %55, 116
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = shl i32 %1460, 4
  %1462 = and i32 %1461, 32752
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = lshr i32 %1460, 7
  %1465 = and i32 %1464, 32752
  %1466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1465)  ; LegacyF16ToF32(value)
  %1467 = fsub fast float 1.000000e+00, %689
  %1468 = call float @dx.op.binary.f32(i32 35, float %1467, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1469 = bitcast float %689 to i32
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

; <label>:1496                                    ; preds = %1450, %1445
  %1497 = phi float [ %1495, %1450 ], [ %689, %1445 ]
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 128
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1518, label %1502

; <label>:1502                                    ; preds = %1496
  %1503 = add i32 %55, 444
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = add i32 %1505, 0
  %1507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1507, %dx.types.Handle %105, float %1446, float %1447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 16
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1724, label %1526

; <label>:1526                                    ; preds = %1521
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %55, 396
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %104, float %1446, float %1447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 512
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1559, label %1551

; <label>:1551                                    ; preds = %1526
  %1552 = add i32 %55, 476
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = add i32 %1554, 0
  %1556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1556, %dx.types.Handle %105, float %1446, float %1447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  br label %1559

; <label>:1559                                    ; preds = %1551, %1526
  %1560 = phi float [ %1558, %1551 ], [ 1.000000e+00, %1526 ]
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 33554432
  %1564 = icmp eq i32 %1563, 0
  br i1 %1564, label %1671, label %1565

; <label>:1565                                    ; preds = %1559
  %1566 = add i32 %55, 240
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 65535
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = lshr i32 %1568, 16
  %1572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1571)  ; LegacyF16ToF32(value)
  %1573 = add i32 %55, 244
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 65535
  %1577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1576)  ; LegacyF16ToF32(value)
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1594 = add i32 %55, 236
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
  %1675 = call float @dx.op.unary.f32(i32 24, float %389)  ; Sqrt(value)
  %1676 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %1677 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
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
  %1709 = fmul fast float %389, %389
  %1710 = fmul fast float %390, %390
  %1711 = fmul fast float %391, %391
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
  %1729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.i32 %1729, 1
  %1731 = and i32 %1730, 1
  %1732 = icmp ne i32 %1731, 0
  %1733 = add i32 %55, 356
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = and i32 %1735, 32
  %1737 = icmp ne i32 %1736, 0
  %1738 = and i1 %1732, %1737
  %1739 = select i1 %1738, float 1.000000e+00, float %1726
  %1740 = select i1 %1738, float 0x3FD3333340000000, float %1727
  %1741 = select i1 %1738, float 0x3FD3333340000000, float %1728
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = and i32 %1743, 32
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %1818, label %1746

; <label>:1746                                    ; preds = %1724
  %1747 = add i32 %55, 108
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = add i32 %55, 412
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = add i32 %1752, 0
  %1754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1754, %dx.types.Handle %104, float %1446, float %1447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = and i32 %1795, 67108864
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %1814, label %1798

; <label>:1798                                    ; preds = %1746
  %1799 = add i32 %55, 296
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 65535
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1816 = call float @dx.op.dot2.f32(i32 54, float %1792, float %1793, float %1350, float %1351)  ; Dot2(ax,ay,bx,by)
  %1817 = call float @dx.op.dot2.f32(i32 54, float %1792, float %1793, float %1352, float %1353)  ; Dot2(ax,ay,bx,by)
  br label %1818

; <label>:1818                                    ; preds = %1814, %1724
  %1819 = phi float [ %1815, %1814 ], [ 0x3FD6666660000000, %1724 ]
  %1820 = phi float [ %1816, %1814 ], [ 0.000000e+00, %1724 ]
  %1821 = phi float [ %1817, %1814 ], [ 0.000000e+00, %1724 ]
  %1822 = phi float [ %1758, %1814 ], [ 1.000000e+00, %1724 ]
  %1823 = add i32 %55, 176
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = lshr i32 %1825, 22
  %1827 = shl nuw nsw i32 %1826, 5
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = and i32 %1830, 64
  %1832 = icmp eq i32 %1831, 0
  br i1 %1832, label %1866, label %1833

; <label>:1833                                    ; preds = %1818
  %1834 = add i32 %55, 428
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = add i32 %1836, 0
  %1838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = and i32 %1840, 131072
  %1842 = icmp eq i32 %1841, 0
  %1843 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1838, %dx.types.Handle %104, float %1446, float %1447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.ResRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.ResRet.f32 %1843, 2
  %1847 = fmul fast float %372, %1844
  %1848 = fmul fast float %373, %1845
  %1849 = fmul fast float %374, %1846
  br i1 %1842, label %1856, label %1850

; <label>:1850                                    ; preds = %1833
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1861 = select i1 %254, float %1860, float %1857
  %1862 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1858, float %1859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1863 = select i1 %254, float 0.000000e+00, float %1857
  %1864 = select i1 %254, float %1862, float %1858
  %1865 = select i1 %254, float 0.000000e+00, float %1859
  br label %1866

; <label>:1866                                    ; preds = %1856, %1818
  %1867 = phi float [ %1863, %1856 ], [ 0.000000e+00, %1818 ]
  %1868 = phi float [ %1864, %1856 ], [ 0.000000e+00, %1818 ]
  %1869 = phi float [ %1865, %1856 ], [ 0.000000e+00, %1818 ]
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = and i32 %1871, 1024
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1904, label %1874

; <label>:1874                                    ; preds = %1866
  %1875 = add i32 %55, 168
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
  %1892 = add i32 %55, 492
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = add i32 %1894, 0
  %1896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1896, %dx.types.Handle %105, float %1446, float %1447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = and i32 %1929, 10240
  %1931 = icmp eq i32 %1930, 0
  br i1 %1931, label %1952, label %1932

; <label>:1932                                    ; preds = %1904
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = and i32 %1934, 2048
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %1952, label %1937

; <label>:1937                                    ; preds = %1932
  %1938 = add i32 %55, 508
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = add i32 %1940, 0
  %1942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1942, %dx.types.Handle %105, float %1446, float %1447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1954 = add i32 %55, 112
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
  br i1 %1338, label %1967, label %2002

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
  %1996 = fmul fast float %1993, %1325
  %1997 = fmul fast float %1994, %1326
  %1998 = fmul fast float %1995, %1327
  %1999 = fmul fast float %1993, %1322
  %2000 = fmul fast float %1994, %1323
  %2001 = fmul fast float %1995, %1324
  br label %2002

; <label>:2002                                    ; preds = %1967, %1952
  %2003 = phi float [ %1999, %1967 ], [ %1322, %1952 ]
  %2004 = phi float [ %2000, %1967 ], [ %1323, %1952 ]
  %2005 = phi float [ %2001, %1967 ], [ %1324, %1952 ]
  %2006 = phi float [ %1996, %1967 ], [ %1325, %1952 ]
  %2007 = phi float [ %1997, %1967 ], [ %1326, %1952 ]
  %2008 = phi float [ %1998, %1967 ], [ %1327, %1952 ]
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2022 = fsub fast float %1739, %2006
  %2023 = fsub fast float %1740, %2007
  %2024 = fsub fast float %1741, %2008
  %2025 = fmul fast float %2016, %2022
  %2026 = fmul fast float %2016, %2023
  %2027 = fmul fast float %2016, %2024
  %2028 = fadd fast float %2025, %2006
  %2029 = fadd fast float %2026, %2007
  %2030 = fadd fast float %2027, %2008
  %2031 = fsub fast float %1725, %1331
  %2032 = fmul fast float %2016, %2031
  %2033 = fadd fast float %2032, %1331
  %2034 = fsub fast float %1867, %2003
  %2035 = fsub fast float %1868, %2004
  %2036 = fsub fast float %1869, %2005
  %2037 = fmul fast float %2021, %2034
  %2038 = fmul fast float %2021, %2035
  %2039 = fmul fast float %2021, %2036
  %2040 = fadd fast float %2037, %2003
  %2041 = fadd fast float %2038, %2004
  %2042 = fadd fast float %2039, %2005
  %2043 = fsub fast float %1966, %1336
  %2044 = fmul fast float %2016, %2043
  %2045 = fadd fast float %2044, %1336
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
  %2058 = fmul fast float %2055, %2006
  %2059 = fmul fast float %2056, %2007
  %2060 = fmul fast float %2057, %2008
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
  %2078 = fmul fast float %2077, %2006
  %2079 = fadd fast float %2078, %2076
  %2080 = fmul fast float %2079, %2006
  %2081 = fmul fast float %2074, 2.000000e+00
  %2082 = fsub fast float 1.000000e+00, %2081
  %2083 = fmul fast float %2082, %2007
  %2084 = fadd fast float %2083, %2081
  %2085 = fmul fast float %2084, %2007
  %2086 = fmul fast float %2075, 2.000000e+00
  %2087 = fsub fast float 1.000000e+00, %2086
  %2088 = fmul fast float %2087, %2008
  %2089 = fadd fast float %2088, %2086
  %2090 = fmul fast float %2089, %2008
  br label %2091

; <label>:2091                                    ; preds = %2063, %2061, %2048, %2018, %2002
  %2092 = phi float [ %2003, %2002 ], [ %2003, %2063 ], [ %2003, %2061 ], [ %2003, %2048 ], [ %2040, %2018 ]
  %2093 = phi float [ %2004, %2002 ], [ %2004, %2063 ], [ %2004, %2061 ], [ %2004, %2048 ], [ %2041, %2018 ]
  %2094 = phi float [ %2005, %2002 ], [ %2005, %2063 ], [ %2005, %2061 ], [ %2005, %2048 ], [ %2042, %2018 ]
  %2095 = phi float [ %2006, %2002 ], [ %2080, %2063 ], [ %2006, %2061 ], [ %2058, %2048 ], [ %2028, %2018 ]
  %2096 = phi float [ %2007, %2002 ], [ %2085, %2063 ], [ %2007, %2061 ], [ %2059, %2048 ], [ %2029, %2018 ]
  %2097 = phi float [ %2008, %2002 ], [ %2090, %2063 ], [ %2008, %2061 ], [ %2060, %2048 ], [ %2030, %2018 ]
  %2098 = phi float [ %1331, %2002 ], [ %1331, %2063 ], [ %1331, %2061 ], [ %1331, %2048 ], [ %2033, %2018 ]
  %2099 = phi float [ %1336, %2002 ], [ %1336, %2063 ], [ %1336, %2061 ], [ %1336, %2048 ], [ %2045, %2018 ]
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
  %2120 = fsub fast float %1820, %1320
  %2121 = fsub fast float %1821, %1321
  %2122 = fmul fast float %2105, %2120
  %2123 = fmul fast float %2105, %2121
  %2124 = fadd fast float %2122, %1320
  %2125 = fadd fast float %2123, %1321
  %2126 = fsub fast float %1822, %1334
  %2127 = fmul fast float %2108, %2126
  %2128 = fadd fast float %2127, %1334
  %2129 = fsub fast float %1819, %1333
  %2130 = fmul fast float %2111, %2129
  %2131 = fadd fast float %2130, %1333
  %2132 = fsub fast float %1925, %1328
  %2133 = fsub fast float %1926, %1329
  %2134 = fsub fast float %1927, %1330
  %2135 = fmul fast float %2114, %2132
  %2136 = fmul fast float %2114, %2133
  %2137 = fmul fast float %2114, %2134
  %2138 = fadd fast float %2135, %1328
  %2139 = fadd fast float %2136, %1329
  %2140 = fadd fast float %2137, %1330
  %2141 = fsub fast float %1953, %1335
  %2142 = fmul fast float %2117, %2141
  %2143 = fadd fast float %2142, %1335
  br label %2208

; <label>:2144                                    ; preds = %2102
  %2145 = icmp eq i32 %2100, 4
  br i1 %2145, label %2146, label %2186

; <label>:2146                                    ; preds = %2144
  %2147 = fmul fast float %2105, %1820
  %2148 = fmul fast float %2105, %1821
  %2149 = fadd fast float %2147, %1320
  %2150 = fadd fast float %2148, %1321
  %2151 = call float @dx.op.binary.f32(i32 36, float %1334, float %1822)  ; FMin(a,b)
  %2152 = fsub fast float %2151, %1334
  %2153 = fmul fast float %2152, %2108
  %2154 = fadd fast float %2153, %1334
  %2155 = fadd fast float %1819, %1333
  %2156 = fmul fast float %2155, 0x3FF337FAE0000000
  %2157 = fmul fast float %1333, %1333
  %2158 = fmul fast float %1819, %1819
  %2159 = fadd fast float %2158, %2157
  %2160 = fmul fast float %2159, 0x3FE5152B00000000
  %2161 = fmul fast float %1333, 0xBFCC1F85E0000000
  %2162 = fmul fast float %2161, %1819
  %2163 = fadd fast float %2162, 0xBFE1363700000000
  %2164 = fadd fast float %2163, %2156
  %2165 = fsub fast float %2164, %2160
  %2166 = fmul fast float %2155, 0x3FBA6F0D00000000
  %2167 = fmul fast float %2159, 0x3FD0432880000000
  %2168 = fmul fast float %1333, 0xBFEF110800000000
  %2169 = fmul fast float %2168, %1819
  %2170 = fadd fast float %2169, 1.000000e+00
  %2171 = fsub fast float %2170, %2166
  %2172 = fadd fast float %2171, %2167
  %2173 = fdiv fast float %2165, %2172
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fsub fast float %2174, %1333
  %2176 = fmul fast float %2175, %2111
  %2177 = fadd fast float %2176, %1333
  %2178 = fmul fast float %2114, %1925
  %2179 = fmul fast float %2114, %1926
  %2180 = fmul fast float %2114, %1927
  %2181 = fadd fast float %2178, %1328
  %2182 = fadd fast float %2179, %1329
  %2183 = fadd fast float %2180, %1330
  %2184 = fmul fast float %2117, %1953
  %2185 = fadd fast float %2184, %1335
  br label %2208

; <label>:2186                                    ; preds = %2144
  %2187 = icmp eq i32 %2100, 8
  br i1 %2187, label %2188, label %2208

; <label>:2188                                    ; preds = %2186
  %2189 = fmul fast float %2105, %1820
  %2190 = fmul fast float %2105, %1821
  %2191 = fadd fast float %2189, %1320
  %2192 = fadd fast float %2190, %1321
  %2193 = call float @dx.op.binary.f32(i32 36, float %1334, float %1822)  ; FMin(a,b)
  %2194 = fsub fast float %2193, %1334
  %2195 = fmul fast float %2194, %2108
  %2196 = fadd fast float %2195, %1334
  %2197 = fsub fast float %1819, %1333
  %2198 = fmul fast float %2111, %2197
  %2199 = fadd fast float %2198, %1333
  %2200 = fmul fast float %2114, %1925
  %2201 = fmul fast float %2114, %1926
  %2202 = fmul fast float %2114, %1927
  %2203 = fadd fast float %2200, %1328
  %2204 = fadd fast float %2201, %1329
  %2205 = fadd fast float %2202, %1330
  %2206 = fmul fast float %2117, %1953
  %2207 = fadd fast float %2206, %1335
  br label %2208

; <label>:2208                                    ; preds = %2188, %2186, %2146, %2119, %2091, %1518, %1337, %1319
  %2209 = phi float [ %1320, %2091 ], [ %1320, %1518 ], [ %1320, %1319 ], [ %2191, %2188 ], [ %1320, %2186 ], [ %2149, %2146 ], [ %2124, %2119 ], [ %1320, %1337 ]
  %2210 = phi float [ %1321, %2091 ], [ %1321, %1518 ], [ %1321, %1319 ], [ %2192, %2188 ], [ %1321, %2186 ], [ %2150, %2146 ], [ %2125, %2119 ], [ %1321, %1337 ]
  %2211 = phi float [ %2092, %2091 ], [ %1322, %1518 ], [ %1322, %1319 ], [ %2092, %2188 ], [ %2092, %2186 ], [ %2092, %2146 ], [ %2092, %2119 ], [ %1322, %1337 ]
  %2212 = phi float [ %2093, %2091 ], [ %1323, %1518 ], [ %1323, %1319 ], [ %2093, %2188 ], [ %2093, %2186 ], [ %2093, %2146 ], [ %2093, %2119 ], [ %1323, %1337 ]
  %2213 = phi float [ %2094, %2091 ], [ %1324, %1518 ], [ %1324, %1319 ], [ %2094, %2188 ], [ %2094, %2186 ], [ %2094, %2146 ], [ %2094, %2119 ], [ %1324, %1337 ]
  %2214 = phi float [ %2095, %2091 ], [ %1325, %1518 ], [ %1325, %1319 ], [ %2095, %2188 ], [ %2095, %2186 ], [ %2095, %2146 ], [ %2095, %2119 ], [ %1325, %1337 ]
  %2215 = phi float [ %2096, %2091 ], [ %1326, %1518 ], [ %1326, %1319 ], [ %2096, %2188 ], [ %2096, %2186 ], [ %2096, %2146 ], [ %2096, %2119 ], [ %1326, %1337 ]
  %2216 = phi float [ %2097, %2091 ], [ %1327, %1518 ], [ %1327, %1319 ], [ %2097, %2188 ], [ %2097, %2186 ], [ %2097, %2146 ], [ %2097, %2119 ], [ %1327, %1337 ]
  %2217 = phi float [ %1328, %2091 ], [ %1328, %1518 ], [ %1328, %1319 ], [ %2203, %2188 ], [ %1328, %2186 ], [ %2181, %2146 ], [ %2138, %2119 ], [ %1328, %1337 ]
  %2218 = phi float [ %1329, %2091 ], [ %1329, %1518 ], [ %1329, %1319 ], [ %2204, %2188 ], [ %1329, %2186 ], [ %2182, %2146 ], [ %2139, %2119 ], [ %1329, %1337 ]
  %2219 = phi float [ %1330, %2091 ], [ %1330, %1518 ], [ %1330, %1319 ], [ %2205, %2188 ], [ %1330, %2186 ], [ %2183, %2146 ], [ %2140, %2119 ], [ %1330, %1337 ]
  %2220 = phi float [ %2098, %2091 ], [ %1331, %1518 ], [ %1331, %1319 ], [ %2098, %2188 ], [ %2098, %2186 ], [ %2098, %2146 ], [ %2098, %2119 ], [ %1331, %1337 ]
  %2221 = phi float [ %1333, %2091 ], [ %1333, %1518 ], [ %1333, %1319 ], [ %2199, %2188 ], [ %1333, %2186 ], [ %2177, %2146 ], [ %2131, %2119 ], [ %1333, %1337 ]
  %2222 = phi float [ %1334, %2091 ], [ %1334, %1518 ], [ %1334, %1319 ], [ %2196, %2188 ], [ %1334, %2186 ], [ %2154, %2146 ], [ %2128, %2119 ], [ %1334, %1337 ]
  %2223 = phi float [ %1335, %2091 ], [ %1335, %1518 ], [ %1335, %1319 ], [ %2207, %2188 ], [ %1335, %2186 ], [ %2185, %2146 ], [ %2143, %2119 ], [ %1335, %1337 ]
  %2224 = phi float [ %2099, %2091 ], [ %1336, %1518 ], [ %1336, %1319 ], [ %2099, %2188 ], [ %2099, %2186 ], [ %2099, %2146 ], [ %2099, %2119 ], [ %1336, %1337 ]
  br i1 %636, label %3096, label %2225

; <label>:2225                                    ; preds = %2208
  %2226 = icmp ult i32 %692, 3
  %2227 = add i32 %55, 56
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = add i32 %55, 60
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = or i32 %2232, %2229
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %3096, label %2235

; <label>:2235                                    ; preds = %2225
  %2236 = and i32 %2229, 262144
  %2237 = icmp ne i32 %2236, 0
  %2238 = select i1 %2237, float %62, float 1.000000e+00
  %2239 = select i1 %2237, float %63, float 0.000000e+00
  %2240 = select i1 %2237, float %64, float 0.000000e+00
  %2241 = select i1 %2237, float %65, float 1.000000e+00
  %2242 = select i1 %2237, float %66, float %90
  %2243 = select i1 %2237, float %67, float %91
  %2244 = add i32 %55, 316
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = lshr i32 %2246, 16
  %2248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2247)  ; LegacyF16ToF32(value)
  %2249 = fmul fast float %2248, 0x3F50624DE0000000
  %2250 = add i32 %55, 120
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = lshr i32 %2252, 16
  %2254 = and i32 %2253, 255
  %2255 = lshr i32 %2252, 24
  %2256 = add i32 %55, 324
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %2258, 65535
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = lshr i32 %2258, 16
  %2262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2261)  ; LegacyF16ToF32(value)
  %2263 = add i32 %55, 64
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
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 3
  %2277 = fmul fast float %2276, 1.000000e+03
  %2278 = fmul fast float %2277, %520
  %2279 = call float @dx.op.unary.f32(i32 22, float %2278)  ; Frc(value)
  %2280 = fadd fast float %2279, %508
  %2281 = fmul fast float %2277, %522
  %2282 = call float @dx.op.unary.f32(i32 22, float %2281)  ; Frc(value)
  %2283 = fadd fast float %2282, %509
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
  %2309 = add i32 %55, 260
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
  %2336 = and i32 %2229, 256
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2384, label %2338

; <label>:2338                                    ; preds = %2333
  %2339 = add i32 %55, 464
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = add i32 %2341, 0
  %2343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2343, %dx.types.Handle %105, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2345 = extractvalue %dx.types.ResRet.f32 %2344, 0
  %2346 = add i32 %55, 132
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = shl i32 %2348, 4
  %2350 = and i32 %2349, 32752
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = lshr i32 %2348, 7
  %2353 = and i32 %2352, 32752
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = fsub fast float 1.000000e+00, %688
  %2356 = call float @dx.op.binary.f32(i32 35, float %2355, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2357 = bitcast float %688 to i32
  %2358 = sitofp i32 %2357 to float
  %2359 = fadd fast float %2358, 0xC1CFBF8940000000
  %2360 = fmul fast float %2354, %2359
  %2361 = fadd fast float %2360, 0x41CFBF8940000000
  %2362 = fptosi float %2361 to i32
  %2363 = bitcast i32 %2362 to float
  %2364 = bitcast float %2356 to i32
  %2365 = sitofp i32 %2364 to float
  %2366 = fadd fast float %2365, 0xC1CFBF8940000000
  %2367 = fmul fast float %2366, %2354
  %2368 = fadd fast float %2367, 0x41CFBF8940000000
  %2369 = fptosi float %2368 to i32
  %2370 = bitcast i32 %2369 to float
  %2371 = fmul fast float %2363, %2351
  %2372 = fmul fast float %2370, %2351
  %2373 = fsub fast float %2356, %2371
  %2374 = fadd fast float %2372, %2356
  %2375 = call float @dx.op.unary.f32(i32 7, float %2373)  ; Saturate(value)
  %2376 = call float @dx.op.unary.f32(i32 7, float %2374)  ; Saturate(value)
  %2377 = fsub fast float %2345, %2375
  %2378 = fsub fast float %2376, %2375
  %2379 = bitcast float %2378 to i32
  %2380 = sub nsw i32 2129859010, %2379
  %2381 = bitcast i32 %2380 to float
  %2382 = fmul fast float %2381, %2377
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  br label %2384

; <label>:2384                                    ; preds = %2338, %2333
  %2385 = phi float [ %2383, %2338 ], [ %688, %2333 ]
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = and i32 %2387, 128
  %2389 = icmp eq i32 %2388, 0
  br i1 %2389, label %2406, label %2390

; <label>:2390                                    ; preds = %2384
  %2391 = add i32 %55, 448
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = add i32 %2393, 0
  %2395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2394, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2396 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2395, %dx.types.Handle %105, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2397 = extractvalue %dx.types.ResRet.f32 %2396, 0
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = and i32 %2399, 524288
  %2401 = icmp ne i32 %2400, 0
  %2402 = fcmp fast ogt float %2397, 0x3FE0101020000000
  %2403 = select i1 %2402, float 1.000000e+00, float 0.000000e+00
  %2404 = select i1 %2401, float %2403, float %2397
  %2405 = fmul fast float %2404, %2385
  br label %2406

; <label>:2406                                    ; preds = %2390, %2384
  %2407 = phi float [ %2405, %2390 ], [ %2385, %2384 ]
  %2408 = fcmp fast ult float %2407, 0x3F70101020000000
  br i1 %2408, label %3096, label %2409

; <label>:2409                                    ; preds = %2406
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 16
  %2413 = icmp eq i32 %2412, 0
  br i1 %2413, label %2612, label %2414

; <label>:2414                                    ; preds = %2409
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = add i32 %55, 400
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = add i32 %2419, 0
  %2421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2421, %dx.types.Handle %104, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2423 = extractvalue %dx.types.ResRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.ResRet.f32 %2422, 1
  %2425 = extractvalue %dx.types.ResRet.f32 %2422, 2
  %2426 = extractvalue %dx.types.ResRet.f32 %2422, 3
  %2427 = and i32 %2416, 255
  %2428 = uitofp i32 %2427 to float
  %2429 = lshr i32 %2416, 8
  %2430 = and i32 %2429, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = fmul fast float %2426, %2428
  %2433 = fadd fast float %2432, %2431
  %2434 = fmul fast float %2433, 0x3F70101000000000
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 512
  %2438 = icmp eq i32 %2437, 0
  br i1 %2438, label %2447, label %2439

; <label>:2439                                    ; preds = %2414
  %2440 = add i32 %55, 480
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = add i32 %2442, 0
  %2444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2445 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2444, %dx.types.Handle %105, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2446 = extractvalue %dx.types.ResRet.f32 %2445, 0
  br label %2447

; <label>:2447                                    ; preds = %2439, %2414
  %2448 = phi float [ %2446, %2439 ], [ 1.000000e+00, %2414 ]
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 33554432
  %2452 = icmp eq i32 %2451, 0
  br i1 %2452, label %2559, label %2453

; <label>:2453                                    ; preds = %2447
  %2454 = add i32 %55, 256
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = and i32 %2456, 65535
  %2458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2457)  ; LegacyF16ToF32(value)
  %2459 = lshr i32 %2456, 16
  %2460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2459)  ; LegacyF16ToF32(value)
  %2461 = add i32 %55, 260
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 65535
  %2465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2464)  ; LegacyF16ToF32(value)
  %2466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2467 = extractvalue %dx.types.ResRet.i32 %2466, 0
  %2468 = lshr i32 %2467, 24
  %2469 = uitofp i32 %2468 to float
  %2470 = fmul fast float %2469, 0x3F70101020000000
  %2471 = and i32 %2467, 255
  %2472 = uitofp i32 %2471 to float
  %2473 = fmul fast float %2472, 0x3F70101020000000
  %2474 = lshr i32 %2467, 8
  %2475 = and i32 %2474, 255
  %2476 = uitofp i32 %2475 to float
  %2477 = fmul fast float %2476, 0x3F70101020000000
  %2478 = lshr i32 %2467, 16
  %2479 = and i32 %2478, 255
  %2480 = uitofp i32 %2479 to float
  %2481 = fmul fast float %2480, 0x3F70101020000000
  %2482 = add i32 %55, 252
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = lshr i32 %2484, 24
  %2486 = uitofp i32 %2485 to float
  %2487 = fmul fast float %2486, 0x3F70101020000000
  %2488 = and i32 %2484, 255
  %2489 = uitofp i32 %2488 to float
  %2490 = fmul fast float %2489, 0x3F70101020000000
  %2491 = lshr i32 %2484, 8
  %2492 = and i32 %2491, 255
  %2493 = uitofp i32 %2492 to float
  %2494 = fmul fast float %2493, 0x3F70101020000000
  %2495 = lshr i32 %2484, 16
  %2496 = and i32 %2495, 255
  %2497 = uitofp i32 %2496 to float
  %2498 = fmul fast float %2497, 0x3F70101020000000
  %2499 = bitcast float %2423 to i32
  %2500 = ashr i32 %2499, 1
  %2501 = sub nsw i32 1597463174, %2500
  %2502 = bitcast i32 %2501 to float
  %2503 = fmul fast float %2423, 5.000000e-01
  %2504 = fmul fast float %2502, %2502
  %2505 = fmul fast float %2504, %2503
  %2506 = fsub fast float 1.500000e+00, %2505
  %2507 = fmul fast float %2502, %2423
  %2508 = fmul fast float %2507, %2506
  %2509 = bitcast float %2424 to i32
  %2510 = ashr i32 %2509, 1
  %2511 = sub nsw i32 1597463174, %2510
  %2512 = bitcast i32 %2511 to float
  %2513 = fmul fast float %2424, 5.000000e-01
  %2514 = fmul fast float %2512, %2512
  %2515 = fmul fast float %2514, %2513
  %2516 = fsub fast float 1.500000e+00, %2515
  %2517 = fmul fast float %2512, %2424
  %2518 = fmul fast float %2517, %2516
  %2519 = bitcast float %2425 to i32
  %2520 = ashr i32 %2519, 1
  %2521 = sub nsw i32 1597463174, %2520
  %2522 = bitcast i32 %2521 to float
  %2523 = fmul fast float %2425, 5.000000e-01
  %2524 = fmul fast float %2522, %2522
  %2525 = fmul fast float %2524, %2523
  %2526 = fsub fast float 1.500000e+00, %2525
  %2527 = fmul fast float %2522, %2425
  %2528 = fmul fast float %2527, %2526
  %2529 = fsub fast float %2508, %2490
  %2530 = fsub fast float %2518, %2494
  %2531 = fsub fast float %2528, %2498
  %2532 = fmul fast float %2529, %2458
  %2533 = fmul fast float %2530, %2460
  %2534 = fmul fast float %2531, %2465
  %2535 = fadd fast float %2532, %2473
  %2536 = fadd fast float %2533, %2477
  %2537 = fadd fast float %2534, %2481
  %2538 = call float @dx.op.unary.f32(i32 7, float %2535)  ; Saturate(value)
  %2539 = call float @dx.op.unary.f32(i32 7, float %2536)  ; Saturate(value)
  %2540 = call float @dx.op.unary.f32(i32 7, float %2537)  ; Saturate(value)
  %2541 = fmul fast float %2538, %2538
  %2542 = fmul fast float %2539, %2539
  %2543 = fmul fast float %2540, %2540
  %2544 = fsub fast float %2541, %2423
  %2545 = fsub fast float %2542, %2424
  %2546 = fsub fast float %2543, %2425
  %2547 = fmul fast float %2544, %2448
  %2548 = fmul fast float %2545, %2448
  %2549 = fmul fast float %2546, %2448
  %2550 = fadd fast float %2547, %2423
  %2551 = fadd fast float %2548, %2424
  %2552 = fadd fast float %2549, %2425
  %2553 = fadd fast float %2470, %2434
  %2554 = fsub fast float %2553, %2487
  %2555 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  %2556 = fsub fast float %2555, %2434
  %2557 = fmul fast float %2556, %2448
  %2558 = fadd fast float %2557, %2434
  br label %2612

; <label>:2559                                    ; preds = %2447
  %2560 = and i32 %2450, 134217728
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2596, label %2562

; <label>:2562                                    ; preds = %2559
  %2563 = call float @dx.op.unary.f32(i32 24, float %496)  ; Sqrt(value)
  %2564 = call float @dx.op.unary.f32(i32 24, float %497)  ; Sqrt(value)
  %2565 = call float @dx.op.unary.f32(i32 24, float %498)  ; Sqrt(value)
  %2566 = fadd fast float %2563, -5.000000e-01
  %2567 = fadd fast float %2564, -5.000000e-01
  %2568 = fadd fast float %2565, -5.000000e-01
  %2569 = fmul fast float %2566, %2448
  %2570 = fmul fast float %2567, %2448
  %2571 = fmul fast float %2568, %2448
  %2572 = fadd fast float %2569, 5.000000e-01
  %2573 = fadd fast float %2570, 5.000000e-01
  %2574 = fadd fast float %2571, 5.000000e-01
  %2575 = call float @dx.op.unary.f32(i32 24, float %2423)  ; Sqrt(value)
  %2576 = call float @dx.op.unary.f32(i32 24, float %2424)  ; Sqrt(value)
  %2577 = call float @dx.op.unary.f32(i32 24, float %2425)  ; Sqrt(value)
  %2578 = fmul fast float %2572, 2.000000e+00
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fmul fast float %2579, %2575
  %2581 = fadd fast float %2580, %2578
  %2582 = fmul fast float %2581, %2575
  %2583 = fmul fast float %2573, 2.000000e+00
  %2584 = fsub fast float 1.000000e+00, %2583
  %2585 = fmul fast float %2584, %2576
  %2586 = fadd fast float %2585, %2583
  %2587 = fmul fast float %2586, %2576
  %2588 = fmul fast float %2574, 2.000000e+00
  %2589 = fsub fast float 1.000000e+00, %2588
  %2590 = fmul fast float %2589, %2577
  %2591 = fadd fast float %2590, %2588
  %2592 = fmul fast float %2591, %2577
  %2593 = fmul fast float %2582, %2582
  %2594 = fmul fast float %2587, %2587
  %2595 = fmul fast float %2592, %2592
  br label %2612

; <label>:2596                                    ; preds = %2559
  %2597 = fmul fast float %496, %496
  %2598 = fmul fast float %497, %497
  %2599 = fmul fast float %498, %498
  %2600 = fadd fast float %2597, -1.000000e+00
  %2601 = fadd fast float %2598, -1.000000e+00
  %2602 = fadd fast float %2599, -1.000000e+00
  %2603 = fmul fast float %2448, %2600
  %2604 = fmul fast float %2448, %2601
  %2605 = fmul fast float %2448, %2602
  %2606 = fadd fast float %2603, 1.000000e+00
  %2607 = fadd fast float %2604, 1.000000e+00
  %2608 = fadd fast float %2605, 1.000000e+00
  %2609 = fmul fast float %2606, %2423
  %2610 = fmul fast float %2607, %2424
  %2611 = fmul fast float %2608, %2425
  br label %2612

; <label>:2612                                    ; preds = %2596, %2562, %2453, %2409
  %2613 = phi float [ %2558, %2453 ], [ %2434, %2562 ], [ %2434, %2596 ], [ 0x3FA23C0BE0000000, %2409 ]
  %2614 = phi float [ %2550, %2453 ], [ %2593, %2562 ], [ %2609, %2596 ], [ 1.000000e+00, %2409 ]
  %2615 = phi float [ %2551, %2453 ], [ %2594, %2562 ], [ %2610, %2596 ], [ 1.000000e+00, %2409 ]
  %2616 = phi float [ %2552, %2453 ], [ %2595, %2562 ], [ %2611, %2596 ], [ 1.000000e+00, %2409 ]
  %2617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.i32 %2617, 1
  %2619 = and i32 %2618, 1
  %2620 = icmp ne i32 %2619, 0
  %2621 = add i32 %55, 356
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = and i32 %2623, 32
  %2625 = icmp ne i32 %2624, 0
  %2626 = and i1 %2620, %2625
  %2627 = select i1 %2626, float 1.000000e+00, float %2614
  %2628 = select i1 %2626, float 0x3FD3333340000000, float %2615
  %2629 = select i1 %2626, float 0x3FD3333340000000, float %2616
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 32
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2706, label %2634

; <label>:2634                                    ; preds = %2612
  %2635 = add i32 %55, 124
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = add i32 %55, 416
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = add i32 %2640, 0
  %2642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2643 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2642, %dx.types.Handle %104, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2644 = extractvalue %dx.types.ResRet.f32 %2643, 0
  %2645 = extractvalue %dx.types.ResRet.f32 %2643, 1
  %2646 = extractvalue %dx.types.ResRet.f32 %2643, 2
  %2647 = extractvalue %dx.types.ResRet.f32 %2643, 3
  %2648 = and i32 %2637, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = lshr i32 %2637, 8
  %2651 = and i32 %2650, 255
  %2652 = uitofp i32 %2651 to float
  %2653 = lshr i32 %2637, 16
  %2654 = and i32 %2653, 255
  %2655 = uitofp i32 %2654 to float
  %2656 = fmul fast float %2655, 0x3F70101000000000
  %2657 = fmul fast float %2644, %2649
  %2658 = fadd fast float %2657, %2652
  %2659 = fmul fast float %2658, 0x3F70101000000000
  %2660 = fadd fast float %2645, -5.000000e-01
  %2661 = fadd fast float %2647, -5.000000e-01
  %2662 = fmul fast float %2660, %2656
  %2663 = fmul fast float %2661, %2656
  %2664 = fadd fast float %2662, 5.000000e-01
  %2665 = fadd fast float %2663, 5.000000e-01
  %2666 = fmul fast float %2664, 2.000000e+00
  %2667 = fadd fast float %2666, -1.000000e+00
  %2668 = fmul fast float %2665, 2.000000e+00
  %2669 = fadd fast float %2668, -1.000000e+00
  %2670 = fadd fast float %2667, %2669
  %2671 = fmul fast float %2670, 5.000000e-01
  %2672 = fsub fast float %2667, %2669
  %2673 = fmul fast float %2672, 5.000000e-01
  %2674 = call float @dx.op.unary.f32(i32 6, float %2671)  ; FAbs(value)
  %2675 = fsub fast float 1.000000e+00, %2674
  %2676 = call float @dx.op.unary.f32(i32 6, float %2673)  ; FAbs(value)
  %2677 = fsub fast float %2675, %2676
  %2678 = call float @dx.op.dot3.f32(i32 55, float %2671, float %2673, float %2677, float %2671, float %2673, float %2677)  ; Dot3(ax,ay,az,bx,by,bz)
  %2679 = call float @dx.op.unary.f32(i32 25, float %2678)  ; Rsqrt(value)
  %2680 = fmul fast float %2671, %2679
  %2681 = fmul fast float %2673, %2679
  %2682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2683 = extractvalue %dx.types.ResRet.i32 %2682, 0
  %2684 = and i32 %2683, 67108864
  %2685 = icmp eq i32 %2684, 0
  br i1 %2685, label %2702, label %2686

; <label>:2686                                    ; preds = %2634
  %2687 = add i32 %55, 312
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2687, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = and i32 %2689, 65535
  %2691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2690)  ; LegacyF16ToF32(value)
  %2692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = and i32 %2693, 65535
  %2695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2694)  ; LegacyF16ToF32(value)
  %2696 = lshr i32 %2689, 16
  %2697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2696)  ; LegacyF16ToF32(value)
  %2698 = fsub fast float %2659, %2697
  %2699 = fmul fast float %2698, %2691
  %2700 = fadd fast float %2699, %2695
  %2701 = call float @dx.op.unary.f32(i32 7, float %2700)  ; Saturate(value)
  br label %2702

; <label>:2702                                    ; preds = %2686, %2634
  %2703 = phi float [ %2701, %2686 ], [ %2659, %2634 ]
  %2704 = call float @dx.op.dot2.f32(i32 54, float %2680, float %2681, float %2238, float %2239)  ; Dot2(ax,ay,bx,by)
  %2705 = call float @dx.op.dot2.f32(i32 54, float %2680, float %2681, float %2240, float %2241)  ; Dot2(ax,ay,bx,by)
  br label %2706

; <label>:2706                                    ; preds = %2702, %2612
  %2707 = phi float [ %2703, %2702 ], [ 0x3FD6666660000000, %2612 ]
  %2708 = phi float [ %2704, %2702 ], [ 0.000000e+00, %2612 ]
  %2709 = phi float [ %2705, %2702 ], [ 0.000000e+00, %2612 ]
  %2710 = phi float [ %2646, %2702 ], [ 1.000000e+00, %2612 ]
  %2711 = add i32 %55, 192
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = lshr i32 %2713, 22
  %2715 = shl nuw nsw i32 %2714, 5
  %2716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2715)  ; LegacyF16ToF32(value)
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %2718, 64
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %2754, label %2721

; <label>:2721                                    ; preds = %2706
  %2722 = add i32 %55, 432
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = add i32 %2724, 0
  %2726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = and i32 %2728, 131072
  %2730 = icmp eq i32 %2729, 0
  %2731 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2726, %dx.types.Handle %104, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.ResRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.ResRet.f32 %2731, 2
  %2735 = fmul fast float %479, %2732
  %2736 = fmul fast float %480, %2733
  %2737 = fmul fast float %481, %2734
  br i1 %2730, label %2744, label %2738

; <label>:2738                                    ; preds = %2721
  %2739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2740 = extractvalue %dx.types.CBufRet.f32 %2739, 0
  %2741 = fmul fast float %2740, %2735
  %2742 = fmul fast float %2740, %2736
  %2743 = fmul fast float %2740, %2737
  br label %2744

; <label>:2744                                    ; preds = %2738, %2721
  %2745 = phi float [ %2741, %2738 ], [ %2735, %2721 ]
  %2746 = phi float [ %2742, %2738 ], [ %2736, %2721 ]
  %2747 = phi float [ %2743, %2738 ], [ %2737, %2721 ]
  %2748 = fmul fast float %2745, %2716
  %2749 = select i1 %254, float %2748, float %2745
  %2750 = call float @dx.op.dot3.f32(i32 55, float %2749, float %2746, float %2747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2751 = select i1 %254, float 0.000000e+00, float %2745
  %2752 = select i1 %254, float %2750, float %2746
  %2753 = select i1 %254, float 0.000000e+00, float %2747
  br label %2754

; <label>:2754                                    ; preds = %2744, %2706
  %2755 = phi float [ %2751, %2744 ], [ 0.000000e+00, %2706 ]
  %2756 = phi float [ %2752, %2744 ], [ 0.000000e+00, %2706 ]
  %2757 = phi float [ %2753, %2744 ], [ 0.000000e+00, %2706 ]
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = and i32 %2759, 1024
  %2761 = icmp eq i32 %2760, 0
  br i1 %2761, label %2792, label %2762

; <label>:2762                                    ; preds = %2754
  %2763 = add i32 %55, 184
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = and i32 %2765, 255
  %2767 = uitofp i32 %2766 to float
  %2768 = fmul fast float %2767, 0x3F70101020000000
  %2769 = lshr i32 %2765, 8
  %2770 = and i32 %2769, 255
  %2771 = uitofp i32 %2770 to float
  %2772 = fmul fast float %2771, 0x3F70101020000000
  %2773 = lshr i32 %2765, 16
  %2774 = and i32 %2773, 255
  %2775 = uitofp i32 %2774 to float
  %2776 = fmul fast float %2775, 0x3F70101020000000
  %2777 = fmul fast float %2768, %2768
  %2778 = fmul fast float %2772, %2772
  %2779 = fmul fast float %2776, %2776
  %2780 = add i32 %55, 496
  %2781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.i32 %2781, 0
  %2783 = add i32 %2782, 0
  %2784 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2783, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2785 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2784, %dx.types.Handle %105, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2786 = extractvalue %dx.types.ResRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.ResRet.f32 %2785, 1
  %2788 = extractvalue %dx.types.ResRet.f32 %2785, 2
  %2789 = fmul fast float %2777, %2786
  %2790 = fmul fast float %2778, %2787
  %2791 = fmul fast float %2779, %2788
  br label %2792

; <label>:2792                                    ; preds = %2762, %2754
  %2793 = phi float [ %2789, %2762 ], [ 0.000000e+00, %2754 ]
  %2794 = phi float [ %2790, %2762 ], [ 0.000000e+00, %2754 ]
  %2795 = phi float [ %2791, %2762 ], [ 0.000000e+00, %2754 ]
  %2796 = fcmp fast ogt float %2793, 0.000000e+00
  %2797 = fcmp fast ogt float %2794, 0.000000e+00
  %2798 = fcmp fast ogt float %2795, 0.000000e+00
  %2799 = call float @dx.op.unary.f32(i32 23, float %2793)  ; Log(value)
  %2800 = call float @dx.op.unary.f32(i32 23, float %2794)  ; Log(value)
  %2801 = call float @dx.op.unary.f32(i32 23, float %2795)  ; Log(value)
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = lshr i32 %2803, 7
  %2805 = and i32 %2804, 32752
  %2806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2805)  ; LegacyF16ToF32(value)
  %2807 = fmul fast float %2799, 0xBFE62E4300000000
  %2808 = fmul fast float %2807, %2806
  %2809 = fmul fast float %2800, 0xBFE62E4300000000
  %2810 = fmul fast float %2809, %2806
  %2811 = fmul fast float %2801, 0xBFE62E4300000000
  %2812 = fmul fast float %2811, %2806
  %2813 = select i1 %2796, float %2808, float 1.270000e+02
  %2814 = select i1 %2797, float %2810, float 1.270000e+02
  %2815 = select i1 %2798, float %2812, float 1.270000e+02
  %2816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2817 = extractvalue %dx.types.ResRet.i32 %2816, 0
  %2818 = and i32 %2817, 10240
  %2819 = icmp eq i32 %2818, 0
  br i1 %2819, label %2840, label %2820

; <label>:2820                                    ; preds = %2792
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = and i32 %2822, 2048
  %2824 = icmp eq i32 %2823, 0
  br i1 %2824, label %2840, label %2825

; <label>:2825                                    ; preds = %2820
  %2826 = add i32 %55, 512
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = add i32 %2828, 0
  %2830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2830, %dx.types.Handle %105, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2832 = extractvalue %dx.types.ResRet.f32 %2831, 3
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = shl i32 %2834, 4
  %2836 = and i32 %2835, 32752
  %2837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2836)  ; LegacyF16ToF32(value)
  %2838 = fmul fast float %2837, %2832
  %2839 = call float @dx.op.binary.f32(i32 35, float %2838, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2840

; <label>:2840                                    ; preds = %2825, %2820, %2792
  %2841 = phi float [ %2839, %2825 ], [ 0x3F70101020000000, %2820 ], [ 0x3F70101020000000, %2792 ]
  %2842 = add i32 %55, 128
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = and i32 %2844, 255
  %2846 = uitofp i32 %2845 to float
  %2847 = lshr i32 %2844, 8
  %2848 = and i32 %2847, 255
  %2849 = uitofp i32 %2848 to float
  %2850 = call float @dx.op.dot3.f32(i32 55, float %2627, float %2628, float %2629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2851 = fmul fast float %2849, %2850
  %2852 = fadd fast float %2851, %2846
  %2853 = fmul fast float %2852, 0x3F70101020000000
  %2854 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  br i1 %2226, label %2855, label %2890

; <label>:2855                                    ; preds = %2840
  %2856 = fmul fast float %2841, 2.000000e+00
  %2857 = fcmp fast olt float %2813, 1.270000e+02
  %2858 = fcmp fast olt float %2814, 1.270000e+02
  %2859 = fcmp fast olt float %2815, 1.270000e+02
  %2860 = fmul fast float %2813, 0xBFF7154760000000
  %2861 = fmul fast float %2860, %2856
  %2862 = fmul fast float %2814, 0xBFF7154760000000
  %2863 = fmul fast float %2862, %2856
  %2864 = fmul fast float %2815, 0xBFF7154760000000
  %2865 = fmul fast float %2864, %2856
  %2866 = call float @dx.op.unary.f32(i32 21, float %2861)  ; Exp(value)
  %2867 = call float @dx.op.unary.f32(i32 21, float %2863)  ; Exp(value)
  %2868 = call float @dx.op.unary.f32(i32 21, float %2865)  ; Exp(value)
  %2869 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2870 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2871 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  %2872 = fadd fast float %2869, -1.000000e+00
  %2873 = select i1 %2857, float %2872, float -1.000000e+00
  %2874 = fadd fast float %2870, -1.000000e+00
  %2875 = select i1 %2858, float %2874, float -1.000000e+00
  %2876 = fadd fast float %2871, -1.000000e+00
  %2877 = select i1 %2859, float %2876, float -1.000000e+00
  %2878 = fmul fast float %2873, %2407
  %2879 = fmul fast float %2875, %2407
  %2880 = fmul fast float %2877, %2407
  %2881 = fadd fast float %2878, 1.000000e+00
  %2882 = fadd fast float %2879, 1.000000e+00
  %2883 = fadd fast float %2880, 1.000000e+00
  %2884 = fmul fast float %2881, %2214
  %2885 = fmul fast float %2882, %2215
  %2886 = fmul fast float %2883, %2216
  %2887 = fmul fast float %2881, %2211
  %2888 = fmul fast float %2882, %2212
  %2889 = fmul fast float %2883, %2213
  br label %2890

; <label>:2890                                    ; preds = %2855, %2840
  %2891 = phi float [ %2887, %2855 ], [ %2211, %2840 ]
  %2892 = phi float [ %2888, %2855 ], [ %2212, %2840 ]
  %2893 = phi float [ %2889, %2855 ], [ %2213, %2840 ]
  %2894 = phi float [ %2884, %2855 ], [ %2214, %2840 ]
  %2895 = phi float [ %2885, %2855 ], [ %2215, %2840 ]
  %2896 = phi float [ %2886, %2855 ], [ %2216, %2840 ]
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = and i32 %2898, 3
  %2900 = icmp eq i32 %2899, 3
  br i1 %2900, label %2979, label %2901

; <label>:2901                                    ; preds = %2890
  %2902 = and i32 %2898, 16
  %2903 = icmp ne i32 %2902, 0
  %2904 = select i1 %2903, float %2407, float 0.000000e+00
  %2905 = icmp eq i32 %2899, 0
  br i1 %2905, label %2906, label %2934

; <label>:2906                                    ; preds = %2901
  %2907 = and i32 %2898, 64
  %2908 = icmp ne i32 %2907, 0
  %2909 = select i1 %2908, float %2407, float 0.000000e+00
  %2910 = fsub fast float %2627, %2894
  %2911 = fsub fast float %2628, %2895
  %2912 = fsub fast float %2629, %2896
  %2913 = fmul fast float %2904, %2910
  %2914 = fmul fast float %2904, %2911
  %2915 = fmul fast float %2904, %2912
  %2916 = fadd fast float %2913, %2894
  %2917 = fadd fast float %2914, %2895
  %2918 = fadd fast float %2915, %2896
  %2919 = fsub fast float %2613, %2220
  %2920 = fmul fast float %2904, %2919
  %2921 = fadd fast float %2920, %2220
  %2922 = fsub fast float %2755, %2891
  %2923 = fsub fast float %2756, %2892
  %2924 = fsub fast float %2757, %2893
  %2925 = fmul fast float %2909, %2922
  %2926 = fmul fast float %2909, %2923
  %2927 = fmul fast float %2909, %2924
  %2928 = fadd fast float %2925, %2891
  %2929 = fadd fast float %2926, %2892
  %2930 = fadd fast float %2927, %2893
  %2931 = fsub fast float %2854, %2224
  %2932 = fmul fast float %2904, %2931
  %2933 = fadd fast float %2932, %2224
  br label %2979

; <label>:2934                                    ; preds = %2901
  %2935 = icmp eq i32 %2899, 1
  br i1 %2935, label %2936, label %2949

; <label>:2936                                    ; preds = %2934
  %2937 = fadd fast float %2627, -1.000000e+00
  %2938 = fadd fast float %2628, -1.000000e+00
  %2939 = fadd fast float %2629, -1.000000e+00
  %2940 = fmul fast float %2904, %2937
  %2941 = fmul fast float %2904, %2938
  %2942 = fmul fast float %2904, %2939
  %2943 = fadd fast float %2940, 1.000000e+00
  %2944 = fadd fast float %2941, 1.000000e+00
  %2945 = fadd fast float %2942, 1.000000e+00
  %2946 = fmul fast float %2943, %2894
  %2947 = fmul fast float %2944, %2895
  %2948 = fmul fast float %2945, %2896
  br label %2979

; <label>:2949                                    ; preds = %2934
  %2950 = icmp eq i32 %2899, 2
  br i1 %2950, label %2951, label %2979

; <label>:2951                                    ; preds = %2949
  %2952 = call float @dx.op.unary.f32(i32 24, float %2627)  ; Sqrt(value)
  %2953 = call float @dx.op.unary.f32(i32 24, float %2628)  ; Sqrt(value)
  %2954 = call float @dx.op.unary.f32(i32 24, float %2629)  ; Sqrt(value)
  %2955 = fadd fast float %2952, -5.000000e-01
  %2956 = fadd fast float %2953, -5.000000e-01
  %2957 = fadd fast float %2954, -5.000000e-01
  %2958 = fmul fast float %2955, %2904
  %2959 = fmul fast float %2956, %2904
  %2960 = fmul fast float %2957, %2904
  %2961 = fadd fast float %2958, 5.000000e-01
  %2962 = fadd fast float %2959, 5.000000e-01
  %2963 = fadd fast float %2960, 5.000000e-01
  %2964 = fmul fast float %2961, 2.000000e+00
  %2965 = fsub fast float 1.000000e+00, %2964
  %2966 = fmul fast float %2965, %2894
  %2967 = fadd fast float %2966, %2964
  %2968 = fmul fast float %2967, %2894
  %2969 = fmul fast float %2962, 2.000000e+00
  %2970 = fsub fast float 1.000000e+00, %2969
  %2971 = fmul fast float %2970, %2895
  %2972 = fadd fast float %2971, %2969
  %2973 = fmul fast float %2972, %2895
  %2974 = fmul fast float %2963, 2.000000e+00
  %2975 = fsub fast float 1.000000e+00, %2974
  %2976 = fmul fast float %2975, %2896
  %2977 = fadd fast float %2976, %2974
  %2978 = fmul fast float %2977, %2896
  br label %2979

; <label>:2979                                    ; preds = %2951, %2949, %2936, %2906, %2890
  %2980 = phi float [ %2891, %2890 ], [ %2891, %2951 ], [ %2891, %2949 ], [ %2891, %2936 ], [ %2928, %2906 ]
  %2981 = phi float [ %2892, %2890 ], [ %2892, %2951 ], [ %2892, %2949 ], [ %2892, %2936 ], [ %2929, %2906 ]
  %2982 = phi float [ %2893, %2890 ], [ %2893, %2951 ], [ %2893, %2949 ], [ %2893, %2936 ], [ %2930, %2906 ]
  %2983 = phi float [ %2894, %2890 ], [ %2968, %2951 ], [ %2894, %2949 ], [ %2946, %2936 ], [ %2916, %2906 ]
  %2984 = phi float [ %2895, %2890 ], [ %2973, %2951 ], [ %2895, %2949 ], [ %2947, %2936 ], [ %2917, %2906 ]
  %2985 = phi float [ %2896, %2890 ], [ %2978, %2951 ], [ %2896, %2949 ], [ %2948, %2936 ], [ %2918, %2906 ]
  %2986 = phi float [ %2220, %2890 ], [ %2220, %2951 ], [ %2220, %2949 ], [ %2220, %2936 ], [ %2921, %2906 ]
  %2987 = phi float [ %2224, %2890 ], [ %2224, %2951 ], [ %2224, %2949 ], [ %2224, %2936 ], [ %2933, %2906 ]
  %2988 = and i32 %2898, 12
  %2989 = icmp eq i32 %2988, 12
  br i1 %2989, label %3096, label %2990

; <label>:2990                                    ; preds = %2979
  %2991 = and i32 %2898, 2097184
  %2992 = icmp eq i32 %2991, 2097184
  %2993 = select i1 %2992, float %2407, float 0.000000e+00
  %2994 = and i32 %2898, 4194336
  %2995 = icmp eq i32 %2994, 4194336
  %2996 = select i1 %2995, float %2407, float 0.000000e+00
  %2997 = and i32 %2898, 8388640
  %2998 = icmp eq i32 %2997, 8388640
  %2999 = select i1 %2998, float %2407, float 0.000000e+00
  %3000 = and i32 %2898, 1024
  %3001 = icmp ne i32 %3000, 0
  %3002 = select i1 %3001, float %2407, float 0.000000e+00
  %3003 = and i32 %2898, 2048
  %3004 = icmp ne i32 %3003, 0
  %3005 = select i1 %3004, float %2407, float 0.000000e+00
  %3006 = icmp eq i32 %2988, 0
  br i1 %3006, label %3007, label %3032

; <label>:3007                                    ; preds = %2990
  %3008 = fsub fast float %2708, %2209
  %3009 = fsub fast float %2709, %2210
  %3010 = fmul fast float %2993, %3008
  %3011 = fmul fast float %2993, %3009
  %3012 = fadd fast float %3010, %2209
  %3013 = fadd fast float %3011, %2210
  %3014 = fsub fast float %2710, %2222
  %3015 = fmul fast float %2996, %3014
  %3016 = fadd fast float %3015, %2222
  %3017 = fsub fast float %2707, %2221
  %3018 = fmul fast float %2999, %3017
  %3019 = fadd fast float %3018, %2221
  %3020 = fsub fast float %2813, %2217
  %3021 = fsub fast float %2814, %2218
  %3022 = fsub fast float %2815, %2219
  %3023 = fmul fast float %3002, %3020
  %3024 = fmul fast float %3002, %3021
  %3025 = fmul fast float %3002, %3022
  %3026 = fadd fast float %3023, %2217
  %3027 = fadd fast float %3024, %2218
  %3028 = fadd fast float %3025, %2219
  %3029 = fsub fast float %2841, %2223
  %3030 = fmul fast float %3005, %3029
  %3031 = fadd fast float %3030, %2223
  br label %3096

; <label>:3032                                    ; preds = %2990
  %3033 = icmp eq i32 %2988, 4
  br i1 %3033, label %3034, label %3074

; <label>:3034                                    ; preds = %3032
  %3035 = fmul fast float %2993, %2708
  %3036 = fmul fast float %2993, %2709
  %3037 = fadd fast float %3035, %2209
  %3038 = fadd fast float %3036, %2210
  %3039 = call float @dx.op.binary.f32(i32 36, float %2222, float %2710)  ; FMin(a,b)
  %3040 = fsub fast float %3039, %2222
  %3041 = fmul fast float %3040, %2996
  %3042 = fadd fast float %3041, %2222
  %3043 = fadd fast float %2707, %2221
  %3044 = fmul fast float %3043, 0x3FF337FAE0000000
  %3045 = fmul fast float %2221, %2221
  %3046 = fmul fast float %2707, %2707
  %3047 = fadd fast float %3046, %3045
  %3048 = fmul fast float %3047, 0x3FE5152B00000000
  %3049 = fmul fast float %2221, 0xBFCC1F85E0000000
  %3050 = fmul fast float %3049, %2707
  %3051 = fadd fast float %3050, 0xBFE1363700000000
  %3052 = fadd fast float %3051, %3044
  %3053 = fsub fast float %3052, %3048
  %3054 = fmul fast float %3043, 0x3FBA6F0D00000000
  %3055 = fmul fast float %3047, 0x3FD0432880000000
  %3056 = fmul fast float %2221, 0xBFEF110800000000
  %3057 = fmul fast float %3056, %2707
  %3058 = fadd fast float %3057, 1.000000e+00
  %3059 = fsub fast float %3058, %3054
  %3060 = fadd fast float %3059, %3055
  %3061 = fdiv fast float %3053, %3060
  %3062 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3063 = fsub fast float %3062, %2221
  %3064 = fmul fast float %3063, %2999
  %3065 = fadd fast float %3064, %2221
  %3066 = fmul fast float %3002, %2813
  %3067 = fmul fast float %3002, %2814
  %3068 = fmul fast float %3002, %2815
  %3069 = fadd fast float %3066, %2217
  %3070 = fadd fast float %3067, %2218
  %3071 = fadd fast float %3068, %2219
  %3072 = fmul fast float %3005, %2841
  %3073 = fadd fast float %3072, %2223
  br label %3096

; <label>:3074                                    ; preds = %3032
  %3075 = icmp eq i32 %2988, 8
  br i1 %3075, label %3076, label %3096

; <label>:3076                                    ; preds = %3074
  %3077 = fmul fast float %2993, %2708
  %3078 = fmul fast float %2993, %2709
  %3079 = fadd fast float %3077, %2209
  %3080 = fadd fast float %3078, %2210
  %3081 = call float @dx.op.binary.f32(i32 36, float %2222, float %2710)  ; FMin(a,b)
  %3082 = fsub fast float %3081, %2222
  %3083 = fmul fast float %3082, %2996
  %3084 = fadd fast float %3083, %2222
  %3085 = fsub fast float %2707, %2221
  %3086 = fmul fast float %2999, %3085
  %3087 = fadd fast float %3086, %2221
  %3088 = fmul fast float %3002, %2813
  %3089 = fmul fast float %3002, %2814
  %3090 = fmul fast float %3002, %2815
  %3091 = fadd fast float %3088, %2217
  %3092 = fadd fast float %3089, %2218
  %3093 = fadd fast float %3090, %2219
  %3094 = fmul fast float %3005, %2841
  %3095 = fadd fast float %3094, %2223
  br label %3096

; <label>:3096                                    ; preds = %3076, %3074, %3034, %3007, %2979, %2406, %2225, %2208
  %3097 = phi float [ %2209, %2979 ], [ %2209, %2406 ], [ %2209, %2208 ], [ %3079, %3076 ], [ %2209, %3074 ], [ %3037, %3034 ], [ %3012, %3007 ], [ %2209, %2225 ]
  %3098 = phi float [ %2210, %2979 ], [ %2210, %2406 ], [ %2210, %2208 ], [ %3080, %3076 ], [ %2210, %3074 ], [ %3038, %3034 ], [ %3013, %3007 ], [ %2210, %2225 ]
  %3099 = phi float [ %2980, %2979 ], [ %2211, %2406 ], [ %2211, %2208 ], [ %2980, %3076 ], [ %2980, %3074 ], [ %2980, %3034 ], [ %2980, %3007 ], [ %2211, %2225 ]
  %3100 = phi float [ %2981, %2979 ], [ %2212, %2406 ], [ %2212, %2208 ], [ %2981, %3076 ], [ %2981, %3074 ], [ %2981, %3034 ], [ %2981, %3007 ], [ %2212, %2225 ]
  %3101 = phi float [ %2982, %2979 ], [ %2213, %2406 ], [ %2213, %2208 ], [ %2982, %3076 ], [ %2982, %3074 ], [ %2982, %3034 ], [ %2982, %3007 ], [ %2213, %2225 ]
  %3102 = phi float [ %2983, %2979 ], [ %2214, %2406 ], [ %2214, %2208 ], [ %2983, %3076 ], [ %2983, %3074 ], [ %2983, %3034 ], [ %2983, %3007 ], [ %2214, %2225 ]
  %3103 = phi float [ %2984, %2979 ], [ %2215, %2406 ], [ %2215, %2208 ], [ %2984, %3076 ], [ %2984, %3074 ], [ %2984, %3034 ], [ %2984, %3007 ], [ %2215, %2225 ]
  %3104 = phi float [ %2985, %2979 ], [ %2216, %2406 ], [ %2216, %2208 ], [ %2985, %3076 ], [ %2985, %3074 ], [ %2985, %3034 ], [ %2985, %3007 ], [ %2216, %2225 ]
  %3105 = phi float [ %2217, %2979 ], [ %2217, %2406 ], [ %2217, %2208 ], [ %3091, %3076 ], [ %2217, %3074 ], [ %3069, %3034 ], [ %3026, %3007 ], [ %2217, %2225 ]
  %3106 = phi float [ %2218, %2979 ], [ %2218, %2406 ], [ %2218, %2208 ], [ %3092, %3076 ], [ %2218, %3074 ], [ %3070, %3034 ], [ %3027, %3007 ], [ %2218, %2225 ]
  %3107 = phi float [ %2219, %2979 ], [ %2219, %2406 ], [ %2219, %2208 ], [ %3093, %3076 ], [ %2219, %3074 ], [ %3071, %3034 ], [ %3028, %3007 ], [ %2219, %2225 ]
  %3108 = phi float [ %2986, %2979 ], [ %2220, %2406 ], [ %2220, %2208 ], [ %2986, %3076 ], [ %2986, %3074 ], [ %2986, %3034 ], [ %2986, %3007 ], [ %2220, %2225 ]
  %3109 = phi float [ %2221, %2979 ], [ %2221, %2406 ], [ %2221, %2208 ], [ %3087, %3076 ], [ %2221, %3074 ], [ %3065, %3034 ], [ %3019, %3007 ], [ %2221, %2225 ]
  %3110 = phi float [ %2222, %2979 ], [ %2222, %2406 ], [ %2222, %2208 ], [ %3084, %3076 ], [ %2222, %3074 ], [ %3042, %3034 ], [ %3016, %3007 ], [ %2222, %2225 ]
  %3111 = phi float [ %2223, %2979 ], [ %2223, %2406 ], [ %2223, %2208 ], [ %3095, %3076 ], [ %2223, %3074 ], [ %3073, %3034 ], [ %3031, %3007 ], [ %2223, %2225 ]
  %3112 = phi float [ %2987, %2979 ], [ %2224, %2406 ], [ %2224, %2208 ], [ %2987, %3076 ], [ %2987, %3074 ], [ %2987, %3034 ], [ %2987, %3007 ], [ %2224, %2225 ]
  br i1 %638, label %3984, label %3113

; <label>:3113                                    ; preds = %3096
  %3114 = icmp ult i32 %692, 4
  %3115 = add i32 %55, 72
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %55, 76
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = or i32 %3120, %3117
  %3122 = icmp eq i32 %3121, 0
  br i1 %3122, label %3984, label %3123

; <label>:3123                                    ; preds = %3113
  %3124 = and i32 %3117, 262144
  %3125 = icmp ne i32 %3124, 0
  %3126 = select i1 %3125, float %62, float 1.000000e+00
  %3127 = select i1 %3125, float %63, float 0.000000e+00
  %3128 = select i1 %3125, float %64, float 0.000000e+00
  %3129 = select i1 %3125, float %65, float 1.000000e+00
  %3130 = select i1 %3125, float %66, float %90
  %3131 = select i1 %3125, float %67, float %91
  %3132 = add i32 %55, 332
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = lshr i32 %3134, 16
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = fmul fast float %3136, 0x3F50624DE0000000
  %3138 = add i32 %55, 136
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = lshr i32 %3140, 16
  %3142 = and i32 %3141, 255
  %3143 = lshr i32 %3140, 24
  %3144 = add i32 %55, 340
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 65535
  %3148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3147)  ; LegacyF16ToF32(value)
  %3149 = lshr i32 %3146, 16
  %3150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3149)  ; LegacyF16ToF32(value)
  %3151 = add i32 %55, 80
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = lshr i32 %3153, 22
  %3155 = shl nuw nsw i32 %3154, 5
  %3156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3155)  ; LegacyF16ToF32(value)
  %3157 = shl i32 %3153, 4
  %3158 = and i32 %3157, 32752
  %3159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3158)  ; LegacyF16ToF32(value)
  %3160 = lshr i32 %3153, 7
  %3161 = and i32 %3160, 32752
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3164 = extractvalue %dx.types.CBufRet.f32 %3163, 3
  %3165 = fmul fast float %3164, 1.000000e+03
  %3166 = fmul fast float %3165, %627
  %3167 = call float @dx.op.unary.f32(i32 22, float %3166)  ; Frc(value)
  %3168 = fadd fast float %3167, %615
  %3169 = fmul fast float %3165, %629
  %3170 = call float @dx.op.unary.f32(i32 22, float %3169)  ; Frc(value)
  %3171 = fadd fast float %3170, %616
  %3172 = fmul fast float %3137, %3165
  %3173 = call float @dx.op.unary.f32(i32 22, float %3172)  ; Frc(value)
  %3174 = fmul fast float %3173, 0x401921FB60000000
  %3175 = fadd fast float %3174, %3156
  %3176 = call float @dx.op.unary.f32(i32 13, float %3175)  ; Sin(value)
  %3177 = call float @dx.op.unary.f32(i32 12, float %3175)  ; Cos(value)
  %3178 = fsub fast float -0.000000e+00, %3176
  %3179 = fadd fast float %3130, -5.000000e-01
  %3180 = fadd fast float %3131, -5.000000e-01
  %3181 = fmul fast float %3148, %3179
  %3182 = fmul fast float %3150, %3180
  %3183 = fadd fast float %3181, 5.000000e-01
  %3184 = fadd fast float %3182, 5.000000e-01
  %3185 = fmul fast float %3159, %3183
  %3186 = fmul fast float %3162, %3184
  %3187 = fmul fast float %3177, %3185
  %3188 = call float @dx.op.tertiary.f32(i32 46, float %3178, float %3186, float %3187)  ; FMad(a,b,c)
  %3189 = fmul fast float %3176, %3185
  %3190 = call float @dx.op.tertiary.f32(i32 46, float %3177, float %3186, float %3189)  ; FMad(a,b,c)
  %3191 = fadd fast float %3168, %3188
  %3192 = fadd fast float %3171, %3190
  %3193 = icmp ugt i32 %3142, 1
  %3194 = icmp ugt i32 %3140, 33554431
  %3195 = or i1 %3194, %3193
  br i1 %3195, label %3196, label %3221

; <label>:3196                                    ; preds = %3123
  %3197 = add i32 %55, 276
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = lshr i32 %3199, 16
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = fmul fast float %3164, %3201
  %3203 = call float @dx.op.unary.f32(i32 22, float %3202)  ; Frc(value)
  %3204 = mul nuw nsw i32 %3142, %3143
  %3205 = uitofp i32 %3204 to float
  %3206 = fmul fast float %3203, %3205
  %3207 = call float @dx.op.unary.f32(i32 27, float %3206)  ; Round_ni(value)
  %3208 = fptoui float %3207 to i32
  %3209 = urem i32 %3208, %3142
  %3210 = udiv i32 %3208, %3143
  %3211 = call float @dx.op.unary.f32(i32 22, float %3191)  ; Frc(value)
  %3212 = call float @dx.op.unary.f32(i32 22, float %3192)  ; Frc(value)
  %3213 = uitofp i32 %3209 to float
  %3214 = uitofp i32 %3210 to float
  %3215 = fadd fast float %3211, %3213
  %3216 = fadd fast float %3212, %3214
  %3217 = uitofp i32 %3142 to float
  %3218 = uitofp i32 %3143 to float
  %3219 = fdiv fast float %3215, %3217
  %3220 = fdiv fast float %3216, %3218
  br label %3221

; <label>:3221                                    ; preds = %3196, %3123
  %3222 = phi float [ %3219, %3196 ], [ %3191, %3123 ]
  %3223 = phi float [ %3220, %3196 ], [ %3192, %3123 ]
  %3224 = and i32 %3117, 256
  %3225 = icmp eq i32 %3224, 0
  br i1 %3225, label %3272, label %3226

; <label>:3226                                    ; preds = %3221
  %3227 = add i32 %55, 468
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = add i32 %3229, 0
  %3231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3231, %dx.types.Handle %105, float %3222, float %3223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3233 = extractvalue %dx.types.ResRet.f32 %3232, 0
  %3234 = add i32 %55, 148
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = shl i32 %3236, 4
  %3238 = and i32 %3237, 32752
  %3239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3238)  ; LegacyF16ToF32(value)
  %3240 = lshr i32 %3236, 7
  %3241 = and i32 %3240, 32752
  %3242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3241)  ; LegacyF16ToF32(value)
  %3243 = fsub fast float 1.000000e+00, %687
  %3244 = call float @dx.op.binary.f32(i32 35, float %3243, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3245 = bitcast float %687 to i32
  %3246 = sitofp i32 %3245 to float
  %3247 = fadd fast float %3246, 0xC1CFBF8940000000
  %3248 = fmul fast float %3242, %3247
  %3249 = fadd fast float %3248, 0x41CFBF8940000000
  %3250 = fptosi float %3249 to i32
  %3251 = bitcast i32 %3250 to float
  %3252 = bitcast float %3244 to i32
  %3253 = sitofp i32 %3252 to float
  %3254 = fadd fast float %3253, 0xC1CFBF8940000000
  %3255 = fmul fast float %3254, %3242
  %3256 = fadd fast float %3255, 0x41CFBF8940000000
  %3257 = fptosi float %3256 to i32
  %3258 = bitcast i32 %3257 to float
  %3259 = fmul fast float %3251, %3239
  %3260 = fmul fast float %3258, %3239
  %3261 = fsub fast float %3244, %3259
  %3262 = fadd fast float %3260, %3244
  %3263 = call float @dx.op.unary.f32(i32 7, float %3261)  ; Saturate(value)
  %3264 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  %3265 = fsub fast float %3233, %3263
  %3266 = fsub fast float %3264, %3263
  %3267 = bitcast float %3266 to i32
  %3268 = sub nsw i32 2129859010, %3267
  %3269 = bitcast i32 %3268 to float
  %3270 = fmul fast float %3269, %3265
  %3271 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  br label %3272

; <label>:3272                                    ; preds = %3226, %3221
  %3273 = phi float [ %3271, %3226 ], [ %687, %3221 ]
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = and i32 %3275, 128
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3294, label %3278

; <label>:3278                                    ; preds = %3272
  %3279 = add i32 %55, 452
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = add i32 %3281, 0
  %3283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3283, %dx.types.Handle %105, float %3222, float %3223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = and i32 %3287, 524288
  %3289 = icmp ne i32 %3288, 0
  %3290 = fcmp fast ogt float %3285, 0x3FE0101020000000
  %3291 = select i1 %3290, float 1.000000e+00, float 0.000000e+00
  %3292 = select i1 %3289, float %3291, float %3285
  %3293 = fmul fast float %3292, %3273
  br label %3294

; <label>:3294                                    ; preds = %3278, %3272
  %3295 = phi float [ %3293, %3278 ], [ %3273, %3272 ]
  %3296 = fcmp fast ult float %3295, 0x3F70101020000000
  br i1 %3296, label %3984, label %3297

; <label>:3297                                    ; preds = %3294
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 16
  %3301 = icmp eq i32 %3300, 0
  br i1 %3301, label %3500, label %3302

; <label>:3302                                    ; preds = %3297
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = add i32 %55, 404
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = add i32 %3307, 0
  %3309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3309, %dx.types.Handle %104, float %3222, float %3223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.ResRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.ResRet.f32 %3310, 2
  %3314 = extractvalue %dx.types.ResRet.f32 %3310, 3
  %3315 = and i32 %3304, 255
  %3316 = uitofp i32 %3315 to float
  %3317 = lshr i32 %3304, 8
  %3318 = and i32 %3317, 255
  %3319 = uitofp i32 %3318 to float
  %3320 = fmul fast float %3314, %3316
  %3321 = fadd fast float %3320, %3319
  %3322 = fmul fast float %3321, 0x3F70101000000000
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = and i32 %3324, 512
  %3326 = icmp eq i32 %3325, 0
  br i1 %3326, label %3335, label %3327

; <label>:3327                                    ; preds = %3302
  %3328 = add i32 %55, 484
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = add i32 %3330, 0
  %3332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3333 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3332, %dx.types.Handle %105, float %3222, float %3223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3334 = extractvalue %dx.types.ResRet.f32 %3333, 0
  br label %3335

; <label>:3335                                    ; preds = %3327, %3302
  %3336 = phi float [ %3334, %3327 ], [ 1.000000e+00, %3302 ]
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = and i32 %3338, 33554432
  %3340 = icmp eq i32 %3339, 0
  br i1 %3340, label %3447, label %3341

; <label>:3341                                    ; preds = %3335
  %3342 = add i32 %55, 272
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 65535
  %3346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3345)  ; LegacyF16ToF32(value)
  %3347 = lshr i32 %3344, 16
  %3348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3347)  ; LegacyF16ToF32(value)
  %3349 = add i32 %55, 276
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = and i32 %3351, 65535
  %3353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3352)  ; LegacyF16ToF32(value)
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = lshr i32 %3355, 24
  %3357 = uitofp i32 %3356 to float
  %3358 = fmul fast float %3357, 0x3F70101020000000
  %3359 = and i32 %3355, 255
  %3360 = uitofp i32 %3359 to float
  %3361 = fmul fast float %3360, 0x3F70101020000000
  %3362 = lshr i32 %3355, 8
  %3363 = and i32 %3362, 255
  %3364 = uitofp i32 %3363 to float
  %3365 = fmul fast float %3364, 0x3F70101020000000
  %3366 = lshr i32 %3355, 16
  %3367 = and i32 %3366, 255
  %3368 = uitofp i32 %3367 to float
  %3369 = fmul fast float %3368, 0x3F70101020000000
  %3370 = add i32 %55, 268
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = lshr i32 %3372, 24
  %3374 = uitofp i32 %3373 to float
  %3375 = fmul fast float %3374, 0x3F70101020000000
  %3376 = and i32 %3372, 255
  %3377 = uitofp i32 %3376 to float
  %3378 = fmul fast float %3377, 0x3F70101020000000
  %3379 = lshr i32 %3372, 8
  %3380 = and i32 %3379, 255
  %3381 = uitofp i32 %3380 to float
  %3382 = fmul fast float %3381, 0x3F70101020000000
  %3383 = lshr i32 %3372, 16
  %3384 = and i32 %3383, 255
  %3385 = uitofp i32 %3384 to float
  %3386 = fmul fast float %3385, 0x3F70101020000000
  %3387 = bitcast float %3311 to i32
  %3388 = ashr i32 %3387, 1
  %3389 = sub nsw i32 1597463174, %3388
  %3390 = bitcast i32 %3389 to float
  %3391 = fmul fast float %3311, 5.000000e-01
  %3392 = fmul fast float %3390, %3390
  %3393 = fmul fast float %3392, %3391
  %3394 = fsub fast float 1.500000e+00, %3393
  %3395 = fmul fast float %3390, %3311
  %3396 = fmul fast float %3395, %3394
  %3397 = bitcast float %3312 to i32
  %3398 = ashr i32 %3397, 1
  %3399 = sub nsw i32 1597463174, %3398
  %3400 = bitcast i32 %3399 to float
  %3401 = fmul fast float %3312, 5.000000e-01
  %3402 = fmul fast float %3400, %3400
  %3403 = fmul fast float %3402, %3401
  %3404 = fsub fast float 1.500000e+00, %3403
  %3405 = fmul fast float %3400, %3312
  %3406 = fmul fast float %3405, %3404
  %3407 = bitcast float %3313 to i32
  %3408 = ashr i32 %3407, 1
  %3409 = sub nsw i32 1597463174, %3408
  %3410 = bitcast i32 %3409 to float
  %3411 = fmul fast float %3313, 5.000000e-01
  %3412 = fmul fast float %3410, %3410
  %3413 = fmul fast float %3412, %3411
  %3414 = fsub fast float 1.500000e+00, %3413
  %3415 = fmul fast float %3410, %3313
  %3416 = fmul fast float %3415, %3414
  %3417 = fsub fast float %3396, %3378
  %3418 = fsub fast float %3406, %3382
  %3419 = fsub fast float %3416, %3386
  %3420 = fmul fast float %3417, %3346
  %3421 = fmul fast float %3418, %3348
  %3422 = fmul fast float %3419, %3353
  %3423 = fadd fast float %3420, %3361
  %3424 = fadd fast float %3421, %3365
  %3425 = fadd fast float %3422, %3369
  %3426 = call float @dx.op.unary.f32(i32 7, float %3423)  ; Saturate(value)
  %3427 = call float @dx.op.unary.f32(i32 7, float %3424)  ; Saturate(value)
  %3428 = call float @dx.op.unary.f32(i32 7, float %3425)  ; Saturate(value)
  %3429 = fmul fast float %3426, %3426
  %3430 = fmul fast float %3427, %3427
  %3431 = fmul fast float %3428, %3428
  %3432 = fsub fast float %3429, %3311
  %3433 = fsub fast float %3430, %3312
  %3434 = fsub fast float %3431, %3313
  %3435 = fmul fast float %3432, %3336
  %3436 = fmul fast float %3433, %3336
  %3437 = fmul fast float %3434, %3336
  %3438 = fadd fast float %3435, %3311
  %3439 = fadd fast float %3436, %3312
  %3440 = fadd fast float %3437, %3313
  %3441 = fadd fast float %3358, %3322
  %3442 = fsub fast float %3441, %3375
  %3443 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3444 = fsub fast float %3443, %3322
  %3445 = fmul fast float %3444, %3336
  %3446 = fadd fast float %3445, %3322
  br label %3500

; <label>:3447                                    ; preds = %3335
  %3448 = and i32 %3338, 134217728
  %3449 = icmp eq i32 %3448, 0
  br i1 %3449, label %3484, label %3450

; <label>:3450                                    ; preds = %3447
  %3451 = call float @dx.op.unary.f32(i32 24, float %603)  ; Sqrt(value)
  %3452 = call float @dx.op.unary.f32(i32 24, float %604)  ; Sqrt(value)
  %3453 = call float @dx.op.unary.f32(i32 24, float %605)  ; Sqrt(value)
  %3454 = fadd fast float %3451, -5.000000e-01
  %3455 = fadd fast float %3452, -5.000000e-01
  %3456 = fadd fast float %3453, -5.000000e-01
  %3457 = fmul fast float %3454, %3336
  %3458 = fmul fast float %3455, %3336
  %3459 = fmul fast float %3456, %3336
  %3460 = fadd fast float %3457, 5.000000e-01
  %3461 = fadd fast float %3458, 5.000000e-01
  %3462 = fadd fast float %3459, 5.000000e-01
  %3463 = call float @dx.op.unary.f32(i32 24, float %3311)  ; Sqrt(value)
  %3464 = call float @dx.op.unary.f32(i32 24, float %3312)  ; Sqrt(value)
  %3465 = call float @dx.op.unary.f32(i32 24, float %3313)  ; Sqrt(value)
  %3466 = fmul fast float %3460, 2.000000e+00
  %3467 = fsub fast float 1.000000e+00, %3466
  %3468 = fmul fast float %3467, %3463
  %3469 = fadd fast float %3468, %3466
  %3470 = fmul fast float %3469, %3463
  %3471 = fmul fast float %3461, 2.000000e+00
  %3472 = fsub fast float 1.000000e+00, %3471
  %3473 = fmul fast float %3472, %3464
  %3474 = fadd fast float %3473, %3471
  %3475 = fmul fast float %3474, %3464
  %3476 = fmul fast float %3462, 2.000000e+00
  %3477 = fsub fast float 1.000000e+00, %3476
  %3478 = fmul fast float %3477, %3465
  %3479 = fadd fast float %3478, %3476
  %3480 = fmul fast float %3479, %3465
  %3481 = fmul fast float %3470, %3470
  %3482 = fmul fast float %3475, %3475
  %3483 = fmul fast float %3480, %3480
  br label %3500

; <label>:3484                                    ; preds = %3447
  %3485 = fmul fast float %603, %603
  %3486 = fmul fast float %604, %604
  %3487 = fmul fast float %605, %605
  %3488 = fadd fast float %3485, -1.000000e+00
  %3489 = fadd fast float %3486, -1.000000e+00
  %3490 = fadd fast float %3487, -1.000000e+00
  %3491 = fmul fast float %3336, %3488
  %3492 = fmul fast float %3336, %3489
  %3493 = fmul fast float %3336, %3490
  %3494 = fadd fast float %3491, 1.000000e+00
  %3495 = fadd fast float %3492, 1.000000e+00
  %3496 = fadd fast float %3493, 1.000000e+00
  %3497 = fmul fast float %3494, %3311
  %3498 = fmul fast float %3495, %3312
  %3499 = fmul fast float %3496, %3313
  br label %3500

; <label>:3500                                    ; preds = %3484, %3450, %3341, %3297
  %3501 = phi float [ %3446, %3341 ], [ %3322, %3450 ], [ %3322, %3484 ], [ 0x3FA23C0BE0000000, %3297 ]
  %3502 = phi float [ %3438, %3341 ], [ %3481, %3450 ], [ %3497, %3484 ], [ 1.000000e+00, %3297 ]
  %3503 = phi float [ %3439, %3341 ], [ %3482, %3450 ], [ %3498, %3484 ], [ 1.000000e+00, %3297 ]
  %3504 = phi float [ %3440, %3341 ], [ %3483, %3450 ], [ %3499, %3484 ], [ 1.000000e+00, %3297 ]
  %3505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.i32 %3505, 1
  %3507 = and i32 %3506, 1
  %3508 = icmp ne i32 %3507, 0
  %3509 = add i32 %55, 356
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = and i32 %3511, 32
  %3513 = icmp ne i32 %3512, 0
  %3514 = and i1 %3508, %3513
  %3515 = select i1 %3514, float 1.000000e+00, float %3502
  %3516 = select i1 %3514, float 0x3FD3333340000000, float %3503
  %3517 = select i1 %3514, float 0x3FD3333340000000, float %3504
  %3518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = and i32 %3519, 32
  %3521 = icmp eq i32 %3520, 0
  br i1 %3521, label %3594, label %3522

; <label>:3522                                    ; preds = %3500
  %3523 = add i32 %55, 140
  %3524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.i32 %3524, 0
  %3526 = add i32 %55, 420
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = add i32 %3528, 0
  %3530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3530, %dx.types.Handle %104, float %3222, float %3223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3532 = extractvalue %dx.types.ResRet.f32 %3531, 0
  %3533 = extractvalue %dx.types.ResRet.f32 %3531, 1
  %3534 = extractvalue %dx.types.ResRet.f32 %3531, 2
  %3535 = extractvalue %dx.types.ResRet.f32 %3531, 3
  %3536 = and i32 %3525, 255
  %3537 = uitofp i32 %3536 to float
  %3538 = lshr i32 %3525, 8
  %3539 = and i32 %3538, 255
  %3540 = uitofp i32 %3539 to float
  %3541 = lshr i32 %3525, 16
  %3542 = and i32 %3541, 255
  %3543 = uitofp i32 %3542 to float
  %3544 = fmul fast float %3543, 0x3F70101000000000
  %3545 = fmul fast float %3532, %3537
  %3546 = fadd fast float %3545, %3540
  %3547 = fmul fast float %3546, 0x3F70101000000000
  %3548 = fadd fast float %3533, -5.000000e-01
  %3549 = fadd fast float %3535, -5.000000e-01
  %3550 = fmul fast float %3548, %3544
  %3551 = fmul fast float %3549, %3544
  %3552 = fadd fast float %3550, 5.000000e-01
  %3553 = fadd fast float %3551, 5.000000e-01
  %3554 = fmul fast float %3552, 2.000000e+00
  %3555 = fadd fast float %3554, -1.000000e+00
  %3556 = fmul fast float %3553, 2.000000e+00
  %3557 = fadd fast float %3556, -1.000000e+00
  %3558 = fadd fast float %3555, %3557
  %3559 = fmul fast float %3558, 5.000000e-01
  %3560 = fsub fast float %3555, %3557
  %3561 = fmul fast float %3560, 5.000000e-01
  %3562 = call float @dx.op.unary.f32(i32 6, float %3559)  ; FAbs(value)
  %3563 = fsub fast float 1.000000e+00, %3562
  %3564 = call float @dx.op.unary.f32(i32 6, float %3561)  ; FAbs(value)
  %3565 = fsub fast float %3563, %3564
  %3566 = call float @dx.op.dot3.f32(i32 55, float %3559, float %3561, float %3565, float %3559, float %3561, float %3565)  ; Dot3(ax,ay,az,bx,by,bz)
  %3567 = call float @dx.op.unary.f32(i32 25, float %3566)  ; Rsqrt(value)
  %3568 = fmul fast float %3559, %3567
  %3569 = fmul fast float %3561, %3567
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = and i32 %3571, 67108864
  %3573 = icmp eq i32 %3572, 0
  br i1 %3573, label %3590, label %3574

; <label>:3574                                    ; preds = %3522
  %3575 = add i32 %55, 328
  %3576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.i32 %3576, 0
  %3578 = and i32 %3577, 65535
  %3579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3578)  ; LegacyF16ToF32(value)
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = and i32 %3581, 65535
  %3583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3582)  ; LegacyF16ToF32(value)
  %3584 = lshr i32 %3577, 16
  %3585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3584)  ; LegacyF16ToF32(value)
  %3586 = fsub fast float %3547, %3585
  %3587 = fmul fast float %3586, %3579
  %3588 = fadd fast float %3587, %3583
  %3589 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  br label %3590

; <label>:3590                                    ; preds = %3574, %3522
  %3591 = phi float [ %3589, %3574 ], [ %3547, %3522 ]
  %3592 = call float @dx.op.dot2.f32(i32 54, float %3568, float %3569, float %3126, float %3127)  ; Dot2(ax,ay,bx,by)
  %3593 = call float @dx.op.dot2.f32(i32 54, float %3568, float %3569, float %3128, float %3129)  ; Dot2(ax,ay,bx,by)
  br label %3594

; <label>:3594                                    ; preds = %3590, %3500
  %3595 = phi float [ %3591, %3590 ], [ 0x3FD6666660000000, %3500 ]
  %3596 = phi float [ %3592, %3590 ], [ 0.000000e+00, %3500 ]
  %3597 = phi float [ %3593, %3590 ], [ 0.000000e+00, %3500 ]
  %3598 = phi float [ %3534, %3590 ], [ 1.000000e+00, %3500 ]
  %3599 = add i32 %55, 208
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = lshr i32 %3601, 22
  %3603 = shl nuw nsw i32 %3602, 5
  %3604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3603)  ; LegacyF16ToF32(value)
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = and i32 %3606, 64
  %3608 = icmp eq i32 %3607, 0
  br i1 %3608, label %3642, label %3609

; <label>:3609                                    ; preds = %3594
  %3610 = add i32 %55, 436
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = add i32 %3612, 0
  %3614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3613, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = and i32 %3616, 131072
  %3618 = icmp eq i32 %3617, 0
  %3619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3614, %dx.types.Handle %104, float %3222, float %3223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3623 = fmul fast float %586, %3620
  %3624 = fmul fast float %587, %3621
  %3625 = fmul fast float %588, %3622
  br i1 %3618, label %3632, label %3626

; <label>:3626                                    ; preds = %3609
  %3627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3628 = extractvalue %dx.types.CBufRet.f32 %3627, 0
  %3629 = fmul fast float %3628, %3623
  %3630 = fmul fast float %3628, %3624
  %3631 = fmul fast float %3628, %3625
  br label %3632

; <label>:3632                                    ; preds = %3626, %3609
  %3633 = phi float [ %3629, %3626 ], [ %3623, %3609 ]
  %3634 = phi float [ %3630, %3626 ], [ %3624, %3609 ]
  %3635 = phi float [ %3631, %3626 ], [ %3625, %3609 ]
  %3636 = fmul fast float %3633, %3604
  %3637 = select i1 %254, float %3636, float %3633
  %3638 = call float @dx.op.dot3.f32(i32 55, float %3637, float %3634, float %3635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3639 = select i1 %254, float 0.000000e+00, float %3633
  %3640 = select i1 %254, float %3638, float %3634
  %3641 = select i1 %254, float 0.000000e+00, float %3635
  br label %3642

; <label>:3642                                    ; preds = %3632, %3594
  %3643 = phi float [ %3639, %3632 ], [ 0.000000e+00, %3594 ]
  %3644 = phi float [ %3640, %3632 ], [ 0.000000e+00, %3594 ]
  %3645 = phi float [ %3641, %3632 ], [ 0.000000e+00, %3594 ]
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = and i32 %3647, 1024
  %3649 = icmp eq i32 %3648, 0
  br i1 %3649, label %3680, label %3650

; <label>:3650                                    ; preds = %3642
  %3651 = add i32 %55, 200
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = and i32 %3653, 255
  %3655 = uitofp i32 %3654 to float
  %3656 = fmul fast float %3655, 0x3F70101020000000
  %3657 = lshr i32 %3653, 8
  %3658 = and i32 %3657, 255
  %3659 = uitofp i32 %3658 to float
  %3660 = fmul fast float %3659, 0x3F70101020000000
  %3661 = lshr i32 %3653, 16
  %3662 = and i32 %3661, 255
  %3663 = uitofp i32 %3662 to float
  %3664 = fmul fast float %3663, 0x3F70101020000000
  %3665 = fmul fast float %3656, %3656
  %3666 = fmul fast float %3660, %3660
  %3667 = fmul fast float %3664, %3664
  %3668 = add i32 %55, 500
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = add i32 %3670, 0
  %3672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3672, %dx.types.Handle %105, float %3222, float %3223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3674 = extractvalue %dx.types.ResRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.ResRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.ResRet.f32 %3673, 2
  %3677 = fmul fast float %3665, %3674
  %3678 = fmul fast float %3666, %3675
  %3679 = fmul fast float %3667, %3676
  br label %3680

; <label>:3680                                    ; preds = %3650, %3642
  %3681 = phi float [ %3677, %3650 ], [ 0.000000e+00, %3642 ]
  %3682 = phi float [ %3678, %3650 ], [ 0.000000e+00, %3642 ]
  %3683 = phi float [ %3679, %3650 ], [ 0.000000e+00, %3642 ]
  %3684 = fcmp fast ogt float %3681, 0.000000e+00
  %3685 = fcmp fast ogt float %3682, 0.000000e+00
  %3686 = fcmp fast ogt float %3683, 0.000000e+00
  %3687 = call float @dx.op.unary.f32(i32 23, float %3681)  ; Log(value)
  %3688 = call float @dx.op.unary.f32(i32 23, float %3682)  ; Log(value)
  %3689 = call float @dx.op.unary.f32(i32 23, float %3683)  ; Log(value)
  %3690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.i32 %3690, 0
  %3692 = lshr i32 %3691, 7
  %3693 = and i32 %3692, 32752
  %3694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3693)  ; LegacyF16ToF32(value)
  %3695 = fmul fast float %3687, 0xBFE62E4300000000
  %3696 = fmul fast float %3695, %3694
  %3697 = fmul fast float %3688, 0xBFE62E4300000000
  %3698 = fmul fast float %3697, %3694
  %3699 = fmul fast float %3689, 0xBFE62E4300000000
  %3700 = fmul fast float %3699, %3694
  %3701 = select i1 %3684, float %3696, float 1.270000e+02
  %3702 = select i1 %3685, float %3698, float 1.270000e+02
  %3703 = select i1 %3686, float %3700, float 1.270000e+02
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = and i32 %3705, 10240
  %3707 = icmp eq i32 %3706, 0
  br i1 %3707, label %3728, label %3708

; <label>:3708                                    ; preds = %3680
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = and i32 %3710, 2048
  %3712 = icmp eq i32 %3711, 0
  br i1 %3712, label %3728, label %3713

; <label>:3713                                    ; preds = %3708
  %3714 = add i32 %55, 516
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = add i32 %3716, 0
  %3718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3718, %dx.types.Handle %105, float %3222, float %3223, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 3
  %3721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.i32 %3721, 0
  %3723 = shl i32 %3722, 4
  %3724 = and i32 %3723, 32752
  %3725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3724)  ; LegacyF16ToF32(value)
  %3726 = fmul fast float %3725, %3720
  %3727 = call float @dx.op.binary.f32(i32 35, float %3726, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3728

; <label>:3728                                    ; preds = %3713, %3708, %3680
  %3729 = phi float [ %3727, %3713 ], [ 0x3F70101020000000, %3708 ], [ 0x3F70101020000000, %3680 ]
  %3730 = add i32 %55, 144
  %3731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.i32 %3731, 0
  %3733 = and i32 %3732, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = lshr i32 %3732, 8
  %3736 = and i32 %3735, 255
  %3737 = uitofp i32 %3736 to float
  %3738 = call float @dx.op.dot3.f32(i32 55, float %3515, float %3516, float %3517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3739 = fmul fast float %3737, %3738
  %3740 = fadd fast float %3739, %3734
  %3741 = fmul fast float %3740, 0x3F70101020000000
  %3742 = call float @dx.op.unary.f32(i32 7, float %3741)  ; Saturate(value)
  br i1 %3114, label %3743, label %3778

; <label>:3743                                    ; preds = %3728
  %3744 = fmul fast float %3729, 2.000000e+00
  %3745 = fcmp fast olt float %3701, 1.270000e+02
  %3746 = fcmp fast olt float %3702, 1.270000e+02
  %3747 = fcmp fast olt float %3703, 1.270000e+02
  %3748 = fmul fast float %3701, 0xBFF7154760000000
  %3749 = fmul fast float %3748, %3744
  %3750 = fmul fast float %3702, 0xBFF7154760000000
  %3751 = fmul fast float %3750, %3744
  %3752 = fmul fast float %3703, 0xBFF7154760000000
  %3753 = fmul fast float %3752, %3744
  %3754 = call float @dx.op.unary.f32(i32 21, float %3749)  ; Exp(value)
  %3755 = call float @dx.op.unary.f32(i32 21, float %3751)  ; Exp(value)
  %3756 = call float @dx.op.unary.f32(i32 21, float %3753)  ; Exp(value)
  %3757 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3758 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3759 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3760 = fadd fast float %3757, -1.000000e+00
  %3761 = select i1 %3745, float %3760, float -1.000000e+00
  %3762 = fadd fast float %3758, -1.000000e+00
  %3763 = select i1 %3746, float %3762, float -1.000000e+00
  %3764 = fadd fast float %3759, -1.000000e+00
  %3765 = select i1 %3747, float %3764, float -1.000000e+00
  %3766 = fmul fast float %3761, %3295
  %3767 = fmul fast float %3763, %3295
  %3768 = fmul fast float %3765, %3295
  %3769 = fadd fast float %3766, 1.000000e+00
  %3770 = fadd fast float %3767, 1.000000e+00
  %3771 = fadd fast float %3768, 1.000000e+00
  %3772 = fmul fast float %3769, %3102
  %3773 = fmul fast float %3770, %3103
  %3774 = fmul fast float %3771, %3104
  %3775 = fmul fast float %3769, %3099
  %3776 = fmul fast float %3770, %3100
  %3777 = fmul fast float %3771, %3101
  br label %3778

; <label>:3778                                    ; preds = %3743, %3728
  %3779 = phi float [ %3775, %3743 ], [ %3099, %3728 ]
  %3780 = phi float [ %3776, %3743 ], [ %3100, %3728 ]
  %3781 = phi float [ %3777, %3743 ], [ %3101, %3728 ]
  %3782 = phi float [ %3772, %3743 ], [ %3102, %3728 ]
  %3783 = phi float [ %3773, %3743 ], [ %3103, %3728 ]
  %3784 = phi float [ %3774, %3743 ], [ %3104, %3728 ]
  %3785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.i32 %3785, 0
  %3787 = and i32 %3786, 3
  %3788 = icmp eq i32 %3787, 3
  br i1 %3788, label %3867, label %3789

; <label>:3789                                    ; preds = %3778
  %3790 = and i32 %3786, 16
  %3791 = icmp ne i32 %3790, 0
  %3792 = select i1 %3791, float %3295, float 0.000000e+00
  %3793 = icmp eq i32 %3787, 0
  br i1 %3793, label %3794, label %3822

; <label>:3794                                    ; preds = %3789
  %3795 = and i32 %3786, 64
  %3796 = icmp ne i32 %3795, 0
  %3797 = select i1 %3796, float %3295, float 0.000000e+00
  %3798 = fsub fast float %3515, %3782
  %3799 = fsub fast float %3516, %3783
  %3800 = fsub fast float %3517, %3784
  %3801 = fmul fast float %3792, %3798
  %3802 = fmul fast float %3792, %3799
  %3803 = fmul fast float %3792, %3800
  %3804 = fadd fast float %3801, %3782
  %3805 = fadd fast float %3802, %3783
  %3806 = fadd fast float %3803, %3784
  %3807 = fsub fast float %3501, %3108
  %3808 = fmul fast float %3792, %3807
  %3809 = fadd fast float %3808, %3108
  %3810 = fsub fast float %3643, %3779
  %3811 = fsub fast float %3644, %3780
  %3812 = fsub fast float %3645, %3781
  %3813 = fmul fast float %3797, %3810
  %3814 = fmul fast float %3797, %3811
  %3815 = fmul fast float %3797, %3812
  %3816 = fadd fast float %3813, %3779
  %3817 = fadd fast float %3814, %3780
  %3818 = fadd fast float %3815, %3781
  %3819 = fsub fast float %3742, %3112
  %3820 = fmul fast float %3792, %3819
  %3821 = fadd fast float %3820, %3112
  br label %3867

; <label>:3822                                    ; preds = %3789
  %3823 = icmp eq i32 %3787, 1
  br i1 %3823, label %3824, label %3837

; <label>:3824                                    ; preds = %3822
  %3825 = fadd fast float %3515, -1.000000e+00
  %3826 = fadd fast float %3516, -1.000000e+00
  %3827 = fadd fast float %3517, -1.000000e+00
  %3828 = fmul fast float %3792, %3825
  %3829 = fmul fast float %3792, %3826
  %3830 = fmul fast float %3792, %3827
  %3831 = fadd fast float %3828, 1.000000e+00
  %3832 = fadd fast float %3829, 1.000000e+00
  %3833 = fadd fast float %3830, 1.000000e+00
  %3834 = fmul fast float %3831, %3782
  %3835 = fmul fast float %3832, %3783
  %3836 = fmul fast float %3833, %3784
  br label %3867

; <label>:3837                                    ; preds = %3822
  %3838 = icmp eq i32 %3787, 2
  br i1 %3838, label %3839, label %3867

; <label>:3839                                    ; preds = %3837
  %3840 = call float @dx.op.unary.f32(i32 24, float %3515)  ; Sqrt(value)
  %3841 = call float @dx.op.unary.f32(i32 24, float %3516)  ; Sqrt(value)
  %3842 = call float @dx.op.unary.f32(i32 24, float %3517)  ; Sqrt(value)
  %3843 = fadd fast float %3840, -5.000000e-01
  %3844 = fadd fast float %3841, -5.000000e-01
  %3845 = fadd fast float %3842, -5.000000e-01
  %3846 = fmul fast float %3843, %3792
  %3847 = fmul fast float %3844, %3792
  %3848 = fmul fast float %3845, %3792
  %3849 = fadd fast float %3846, 5.000000e-01
  %3850 = fadd fast float %3847, 5.000000e-01
  %3851 = fadd fast float %3848, 5.000000e-01
  %3852 = fmul fast float %3849, 2.000000e+00
  %3853 = fsub fast float 1.000000e+00, %3852
  %3854 = fmul fast float %3853, %3782
  %3855 = fadd fast float %3854, %3852
  %3856 = fmul fast float %3855, %3782
  %3857 = fmul fast float %3850, 2.000000e+00
  %3858 = fsub fast float 1.000000e+00, %3857
  %3859 = fmul fast float %3858, %3783
  %3860 = fadd fast float %3859, %3857
  %3861 = fmul fast float %3860, %3783
  %3862 = fmul fast float %3851, 2.000000e+00
  %3863 = fsub fast float 1.000000e+00, %3862
  %3864 = fmul fast float %3863, %3784
  %3865 = fadd fast float %3864, %3862
  %3866 = fmul fast float %3865, %3784
  br label %3867

; <label>:3867                                    ; preds = %3839, %3837, %3824, %3794, %3778
  %3868 = phi float [ %3779, %3778 ], [ %3779, %3839 ], [ %3779, %3837 ], [ %3779, %3824 ], [ %3816, %3794 ]
  %3869 = phi float [ %3780, %3778 ], [ %3780, %3839 ], [ %3780, %3837 ], [ %3780, %3824 ], [ %3817, %3794 ]
  %3870 = phi float [ %3781, %3778 ], [ %3781, %3839 ], [ %3781, %3837 ], [ %3781, %3824 ], [ %3818, %3794 ]
  %3871 = phi float [ %3782, %3778 ], [ %3856, %3839 ], [ %3782, %3837 ], [ %3834, %3824 ], [ %3804, %3794 ]
  %3872 = phi float [ %3783, %3778 ], [ %3861, %3839 ], [ %3783, %3837 ], [ %3835, %3824 ], [ %3805, %3794 ]
  %3873 = phi float [ %3784, %3778 ], [ %3866, %3839 ], [ %3784, %3837 ], [ %3836, %3824 ], [ %3806, %3794 ]
  %3874 = phi float [ %3108, %3778 ], [ %3108, %3839 ], [ %3108, %3837 ], [ %3108, %3824 ], [ %3809, %3794 ]
  %3875 = phi float [ %3112, %3778 ], [ %3112, %3839 ], [ %3112, %3837 ], [ %3112, %3824 ], [ %3821, %3794 ]
  %3876 = and i32 %3786, 12
  %3877 = icmp eq i32 %3876, 12
  br i1 %3877, label %3984, label %3878

; <label>:3878                                    ; preds = %3867
  %3879 = and i32 %3786, 2097184
  %3880 = icmp eq i32 %3879, 2097184
  %3881 = select i1 %3880, float %3295, float 0.000000e+00
  %3882 = and i32 %3786, 4194336
  %3883 = icmp eq i32 %3882, 4194336
  %3884 = select i1 %3883, float %3295, float 0.000000e+00
  %3885 = and i32 %3786, 8388640
  %3886 = icmp eq i32 %3885, 8388640
  %3887 = select i1 %3886, float %3295, float 0.000000e+00
  %3888 = and i32 %3786, 1024
  %3889 = icmp ne i32 %3888, 0
  %3890 = select i1 %3889, float %3295, float 0.000000e+00
  %3891 = and i32 %3786, 2048
  %3892 = icmp ne i32 %3891, 0
  %3893 = select i1 %3892, float %3295, float 0.000000e+00
  %3894 = icmp eq i32 %3876, 0
  br i1 %3894, label %3895, label %3920

; <label>:3895                                    ; preds = %3878
  %3896 = fsub fast float %3596, %3097
  %3897 = fsub fast float %3597, %3098
  %3898 = fmul fast float %3881, %3896
  %3899 = fmul fast float %3881, %3897
  %3900 = fadd fast float %3898, %3097
  %3901 = fadd fast float %3899, %3098
  %3902 = fsub fast float %3598, %3110
  %3903 = fmul fast float %3884, %3902
  %3904 = fadd fast float %3903, %3110
  %3905 = fsub fast float %3595, %3109
  %3906 = fmul fast float %3887, %3905
  %3907 = fadd fast float %3906, %3109
  %3908 = fsub fast float %3701, %3105
  %3909 = fsub fast float %3702, %3106
  %3910 = fsub fast float %3703, %3107
  %3911 = fmul fast float %3890, %3908
  %3912 = fmul fast float %3890, %3909
  %3913 = fmul fast float %3890, %3910
  %3914 = fadd fast float %3911, %3105
  %3915 = fadd fast float %3912, %3106
  %3916 = fadd fast float %3913, %3107
  %3917 = fsub fast float %3729, %3111
  %3918 = fmul fast float %3893, %3917
  %3919 = fadd fast float %3918, %3111
  br label %3984

; <label>:3920                                    ; preds = %3878
  %3921 = icmp eq i32 %3876, 4
  br i1 %3921, label %3922, label %3962

; <label>:3922                                    ; preds = %3920
  %3923 = fmul fast float %3881, %3596
  %3924 = fmul fast float %3881, %3597
  %3925 = fadd fast float %3923, %3097
  %3926 = fadd fast float %3924, %3098
  %3927 = call float @dx.op.binary.f32(i32 36, float %3110, float %3598)  ; FMin(a,b)
  %3928 = fsub fast float %3927, %3110
  %3929 = fmul fast float %3928, %3884
  %3930 = fadd fast float %3929, %3110
  %3931 = fadd fast float %3595, %3109
  %3932 = fmul fast float %3931, 0x3FF337FAE0000000
  %3933 = fmul fast float %3109, %3109
  %3934 = fmul fast float %3595, %3595
  %3935 = fadd fast float %3934, %3933
  %3936 = fmul fast float %3935, 0x3FE5152B00000000
  %3937 = fmul fast float %3109, 0xBFCC1F85E0000000
  %3938 = fmul fast float %3937, %3595
  %3939 = fadd fast float %3938, 0xBFE1363700000000
  %3940 = fadd fast float %3939, %3932
  %3941 = fsub fast float %3940, %3936
  %3942 = fmul fast float %3931, 0x3FBA6F0D00000000
  %3943 = fmul fast float %3935, 0x3FD0432880000000
  %3944 = fmul fast float %3109, 0xBFEF110800000000
  %3945 = fmul fast float %3944, %3595
  %3946 = fadd fast float %3945, 1.000000e+00
  %3947 = fsub fast float %3946, %3942
  %3948 = fadd fast float %3947, %3943
  %3949 = fdiv fast float %3941, %3948
  %3950 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  %3951 = fsub fast float %3950, %3109
  %3952 = fmul fast float %3951, %3887
  %3953 = fadd fast float %3952, %3109
  %3954 = fmul fast float %3890, %3701
  %3955 = fmul fast float %3890, %3702
  %3956 = fmul fast float %3890, %3703
  %3957 = fadd fast float %3954, %3105
  %3958 = fadd fast float %3955, %3106
  %3959 = fadd fast float %3956, %3107
  %3960 = fmul fast float %3893, %3729
  %3961 = fadd fast float %3960, %3111
  br label %3984

; <label>:3962                                    ; preds = %3920
  %3963 = icmp eq i32 %3876, 8
  br i1 %3963, label %3964, label %3984

; <label>:3964                                    ; preds = %3962
  %3965 = fmul fast float %3881, %3596
  %3966 = fmul fast float %3881, %3597
  %3967 = fadd fast float %3965, %3097
  %3968 = fadd fast float %3966, %3098
  %3969 = call float @dx.op.binary.f32(i32 36, float %3110, float %3598)  ; FMin(a,b)
  %3970 = fsub fast float %3969, %3110
  %3971 = fmul fast float %3970, %3884
  %3972 = fadd fast float %3971, %3110
  %3973 = fsub fast float %3595, %3109
  %3974 = fmul fast float %3887, %3973
  %3975 = fadd fast float %3974, %3109
  %3976 = fmul fast float %3890, %3701
  %3977 = fmul fast float %3890, %3702
  %3978 = fmul fast float %3890, %3703
  %3979 = fadd fast float %3976, %3105
  %3980 = fadd fast float %3977, %3106
  %3981 = fadd fast float %3978, %3107
  %3982 = fmul fast float %3893, %3729
  %3983 = fadd fast float %3982, %3111
  br label %3984

; <label>:3984                                    ; preds = %3964, %3962, %3922, %3895, %3867, %3294, %3113, %3096
  %3985 = phi float [ %3097, %3867 ], [ %3097, %3294 ], [ %3097, %3096 ], [ %3097, %3113 ], [ %3900, %3895 ], [ %3925, %3922 ], [ %3097, %3962 ], [ %3967, %3964 ]
  %3986 = phi float [ %3098, %3867 ], [ %3098, %3294 ], [ %3098, %3096 ], [ %3098, %3113 ], [ %3901, %3895 ], [ %3926, %3922 ], [ %3098, %3962 ], [ %3968, %3964 ]
  %3987 = phi float [ %3868, %3867 ], [ %3099, %3294 ], [ %3099, %3096 ], [ %3099, %3113 ], [ %3868, %3895 ], [ %3868, %3922 ], [ %3868, %3962 ], [ %3868, %3964 ]
  %3988 = phi float [ %3869, %3867 ], [ %3100, %3294 ], [ %3100, %3096 ], [ %3100, %3113 ], [ %3869, %3895 ], [ %3869, %3922 ], [ %3869, %3962 ], [ %3869, %3964 ]
  %3989 = phi float [ %3870, %3867 ], [ %3101, %3294 ], [ %3101, %3096 ], [ %3101, %3113 ], [ %3870, %3895 ], [ %3870, %3922 ], [ %3870, %3962 ], [ %3870, %3964 ]
  %3990 = phi float [ %3871, %3867 ], [ %3102, %3294 ], [ %3102, %3096 ], [ %3102, %3113 ], [ %3871, %3895 ], [ %3871, %3922 ], [ %3871, %3962 ], [ %3871, %3964 ]
  %3991 = phi float [ %3872, %3867 ], [ %3103, %3294 ], [ %3103, %3096 ], [ %3103, %3113 ], [ %3872, %3895 ], [ %3872, %3922 ], [ %3872, %3962 ], [ %3872, %3964 ]
  %3992 = phi float [ %3873, %3867 ], [ %3104, %3294 ], [ %3104, %3096 ], [ %3104, %3113 ], [ %3873, %3895 ], [ %3873, %3922 ], [ %3873, %3962 ], [ %3873, %3964 ]
  %3993 = phi float [ %3105, %3867 ], [ %3105, %3294 ], [ %3105, %3096 ], [ %3105, %3113 ], [ %3914, %3895 ], [ %3957, %3922 ], [ %3105, %3962 ], [ %3979, %3964 ]
  %3994 = phi float [ %3106, %3867 ], [ %3106, %3294 ], [ %3106, %3096 ], [ %3106, %3113 ], [ %3915, %3895 ], [ %3958, %3922 ], [ %3106, %3962 ], [ %3980, %3964 ]
  %3995 = phi float [ %3107, %3867 ], [ %3107, %3294 ], [ %3107, %3096 ], [ %3107, %3113 ], [ %3916, %3895 ], [ %3959, %3922 ], [ %3107, %3962 ], [ %3981, %3964 ]
  %3996 = phi float [ %3874, %3867 ], [ %3108, %3294 ], [ %3108, %3096 ], [ %3108, %3113 ], [ %3874, %3895 ], [ %3874, %3922 ], [ %3874, %3962 ], [ %3874, %3964 ]
  %3997 = phi float [ %3109, %3867 ], [ %3109, %3294 ], [ %3109, %3096 ], [ %3109, %3113 ], [ %3907, %3895 ], [ %3953, %3922 ], [ %3109, %3962 ], [ %3975, %3964 ]
  %3998 = phi float [ %3110, %3867 ], [ %3110, %3294 ], [ %3110, %3096 ], [ %3110, %3113 ], [ %3904, %3895 ], [ %3930, %3922 ], [ %3110, %3962 ], [ %3972, %3964 ]
  %3999 = phi float [ %3111, %3867 ], [ %3111, %3294 ], [ %3111, %3096 ], [ %3111, %3113 ], [ %3919, %3895 ], [ %3961, %3922 ], [ %3111, %3962 ], [ %3983, %3964 ]
  %4000 = phi float [ %3875, %3867 ], [ %3112, %3294 ], [ %3112, %3096 ], [ %3112, %3113 ], [ %3875, %3895 ], [ %3875, %3922 ], [ %3875, %3962 ], [ %3875, %3964 ]
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4003 = call float @dx.op.dot2.f32(i32 54, float %3985, float %3986, float %3985, float %3986)  ; Dot2(ax,ay,bx,by)
  %4004 = fmul fast float %4003, 0x3FE3333340000000
  %4005 = fsub fast float 1.000000e+00, %4004
  %4006 = call float @dx.op.dot3.f32(i32 55, float %3985, float %3986, float %4005, float %3985, float %3986, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = call float @dx.op.unary.f32(i32 25, float %4006)  ; Rsqrt(value)
  %4008 = fmul fast float %4007, %3985
  %4009 = fmul fast float %4007, %3986
  %4010 = fmul fast float %4005, %4007
  %4011 = fmul fast float %4010, %115
  %4012 = fmul fast float %4010, %116
  %4013 = fmul fast float %4010, %117
  %4014 = fmul fast float %4008, %83
  %4015 = fmul fast float %4008, %84
  %4016 = fmul fast float %4008, %85
  %4017 = fadd fast float %4011, %4014
  %4018 = fadd fast float %4012, %4015
  %4019 = fadd fast float %4013, %4016
  %4020 = fmul fast float %127, %4009
  %4021 = fmul fast float %128, %4009
  %4022 = fmul fast float %129, %4009
  %4023 = fadd fast float %4017, %4020
  %4024 = fadd fast float %4018, %4021
  %4025 = fadd fast float %4019, %4022
  %4026 = call float @dx.op.dot3.f32(i32 55, float %4023, float %4024, float %4025, float %4023, float %4024, float %4025)  ; Dot3(ax,ay,az,bx,by,bz)
  %4027 = call float @dx.op.unary.f32(i32 25, float %4026)  ; Rsqrt(value)
  %4028 = fmul fast float %4023, %4027
  %4029 = fmul fast float %4024, %4027
  %4030 = fmul fast float %4025, %4027
  %4031 = icmp eq i32 %57, 65535
  br i1 %4031, label %4577, label %4032

; <label>:4032                                    ; preds = %3984
  %4033 = call float @dx.op.unary.f32(i32 83, float %58)  ; DerivCoarseX(value)
  %4034 = call float @dx.op.unary.f32(i32 83, float %59)  ; DerivCoarseX(value)
  %4035 = call float @dx.op.unary.f32(i32 83, float %60)  ; DerivCoarseX(value)
  %4036 = call float @dx.op.unary.f32(i32 84, float %58)  ; DerivCoarseY(value)
  %4037 = call float @dx.op.unary.f32(i32 84, float %59)  ; DerivCoarseY(value)
  %4038 = call float @dx.op.unary.f32(i32 84, float %60)  ; DerivCoarseY(value)
  %4039 = fadd fast float %4033, %58
  %4040 = fadd fast float %4034, %59
  %4041 = fadd fast float %4035, %60
  %4042 = fadd fast float %4036, %58
  %4043 = fadd fast float %4037, %59
  %4044 = fadd fast float %4038, %60
  %4045 = mul i32 %57, 48
  %4046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4045, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.ResRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.ResRet.f32 %4046, 2
  %4050 = add i32 %4045, 16
  %4051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4050, i32 undef)  ; BufferLoad(srv,index,wot)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  %4053 = extractvalue %dx.types.ResRet.f32 %4051, 1
  %4054 = extractvalue %dx.types.ResRet.f32 %4051, 2
  %4055 = add i32 %4045, 32
  %4056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.ResRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.ResRet.f32 %4056, 2
  %4060 = extractvalue %dx.types.ResRet.f32 %4056, 3
  %4061 = bitcast float %4060 to i32
  %4062 = fmul fast float %4047, %58
  %4063 = fmul fast float %4048, %59
  %4064 = fmul fast float %4049, %60
  %4065 = fsub fast float %4062, %4052
  %4066 = fsub fast float %4063, %4053
  %4067 = fsub fast float %4064, %4054
  %4068 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4069 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4070 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4071 = fmul fast float %4068, %4057
  %4072 = fmul fast float %4069, %4058
  %4073 = fmul fast float %4070, %4059
  %4074 = fadd fast float %4057, -1.000000e+00
  %4075 = fadd fast float %4058, -1.000000e+00
  %4076 = fadd fast float %4059, -1.000000e+00
  %4077 = call float @dx.op.unary.f32(i32 27, float %4071)  ; Round_ni(value)
  %4078 = call float @dx.op.unary.f32(i32 27, float %4072)  ; Round_ni(value)
  %4079 = call float @dx.op.unary.f32(i32 27, float %4073)  ; Round_ni(value)
  %4080 = call float @dx.op.binary.f32(i32 36, float %4077, float %4074)  ; FMin(a,b)
  %4081 = call float @dx.op.binary.f32(i32 36, float %4078, float %4075)  ; FMin(a,b)
  %4082 = call float @dx.op.binary.f32(i32 36, float %4079, float %4076)  ; FMin(a,b)
  %4083 = fmul fast float %4082, %4058
  %4084 = fadd fast float %4083, %4081
  %4085 = fmul fast float %4084, %4057
  %4086 = fadd fast float %4085, %4080
  %4087 = fptosi float %4086 to i32
  %4088 = add nsw i32 %4087, %4061
  %4089 = shl nsw i32 %4088, 2
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = lshr i32 %4091, 16
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4543, label %4094

; <label>:4094                                    ; preds = %4032
  br label %4095

; <label>:4095                                    ; preds = %4219, %4094
  %4096 = phi i32 [ %4121, %4219 ], [ %4092, %4094 ]
  %4097 = phi float [ %4220, %4219 ], [ 0.000000e+00, %4094 ]
  %4098 = phi float [ %4221, %4219 ], [ %4002, %4094 ]
  %4099 = phi float [ %4222, %4219 ], [ %4000, %4094 ]
  %4100 = phi float [ %4223, %4219 ], [ %3993, %4094 ]
  %4101 = phi float [ %4224, %4219 ], [ %3994, %4094 ]
  %4102 = phi float [ %4225, %4219 ], [ %3995, %4094 ]
  %4103 = phi float [ %4226, %4219 ], [ 0.000000e+00, %4094 ]
  %4104 = phi float [ %4227, %4219 ], [ 0.000000e+00, %4094 ]
  %4105 = phi float [ %4228, %4219 ], [ %3987, %4094 ]
  %4106 = phi float [ %4229, %4219 ], [ %3988, %4094 ]
  %4107 = phi float [ %4230, %4219 ], [ %3989, %4094 ]
  %4108 = phi float [ %4231, %4219 ], [ %4028, %4094 ]
  %4109 = phi float [ %4232, %4219 ], [ %4029, %4094 ]
  %4110 = phi float [ %4233, %4219 ], [ %4030, %4094 ]
  %4111 = phi float [ %4234, %4219 ], [ %3998, %4094 ]
  %4112 = phi float [ %4235, %4219 ], [ %3997, %4094 ]
  %4113 = phi float [ %4236, %4219 ], [ 0.000000e+00, %4094 ]
  %4114 = phi float [ %4237, %4219 ], [ %3996, %4094 ]
  %4115 = phi float [ %4238, %4219 ], [ %3990, %4094 ]
  %4116 = phi float [ %4239, %4219 ], [ %3991, %4094 ]
  %4117 = phi float [ %4240, %4219 ], [ %3992, %4094 ]
  %4118 = shl nuw nsw i32 %4096, 2
  %4119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4118, i32 undef)  ; BufferLoad(srv,index,wot)
  %4120 = extractvalue %dx.types.ResRet.i32 %4119, 0
  %4121 = lshr i32 %4120, 16
  %4122 = shl i32 %4120, 8
  %4123 = and i32 %4122, 16776960
  %4124 = or i32 %4123, 48
  %4125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4124, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.ResRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.ResRet.f32 %4125, 2
  %4129 = or i32 %4123, 64
  %4130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.i32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.i32 %4130, 1
  %4133 = or i32 %4123, 80
  %4134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 3
  %4137 = or i32 %4123, 96
  %4138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.ResRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.ResRet.f32 %4138, 2
  %4142 = extractvalue %dx.types.ResRet.f32 %4138, 3
  %4143 = or i32 %4123, 112
  %4144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 2
  %4146 = or i32 %4123, 128
  %4147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.ResRet.f32 %4147, 1
  %4150 = extractvalue %dx.types.ResRet.f32 %4147, 2
  %4151 = extractvalue %dx.types.ResRet.f32 %4147, 3
  %4152 = or i32 %4123, 144
  %4153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.ResRet.f32 %4153, 3
  %4158 = or i32 %4123, 160
  %4159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.ResRet.f32 %4159, 1
  %4162 = extractvalue %dx.types.ResRet.f32 %4159, 2
  %4163 = extractvalue %dx.types.ResRet.f32 %4159, 3
  %4164 = or i32 %4123, 192
  %4165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.i32 %4165, 0
  %4167 = or i32 %4123, 208
  %4168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = or i32 %4123, 248
  %4171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.f32 %4171, 0
  %4173 = extractvalue %dx.types.ResRet.f32 %4171, 1
  %4174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = extractvalue %dx.types.ResRet.f32 %4174, 1
  %4177 = extractvalue %dx.types.ResRet.f32 %4174, 2
  %4178 = extractvalue %dx.types.ResRet.f32 %4174, 3
  %4179 = call float @dx.op.dot4.f32(i32 56, float %4175, float %4176, float %4177, float %4178, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4180 = or i32 %4123, 16
  %4181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4185 = extractvalue %dx.types.ResRet.f32 %4181, 3
  %4186 = call float @dx.op.dot4.f32(i32 56, float %4182, float %4183, float %4184, float %4185, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4187 = or i32 %4123, 32
  %4188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.ResRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.ResRet.f32 %4188, 2
  %4192 = extractvalue %dx.types.ResRet.f32 %4188, 3
  %4193 = call float @dx.op.dot4.f32(i32 56, float %4189, float %4190, float %4191, float %4192, float %58, float %59, float %60, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4194 = call float @dx.op.unary.f32(i32 27, float %4179)  ; Round_ni(value)
  %4195 = call float @dx.op.unary.f32(i32 6, float %4194)  ; FAbs(value)
  %4196 = call float @dx.op.unary.f32(i32 27, float %4186)  ; Round_ni(value)
  %4197 = call float @dx.op.unary.f32(i32 6, float %4196)  ; FAbs(value)
  %4198 = call float @dx.op.unary.f32(i32 6, float %4193)  ; FAbs(value)
  %4199 = call float @dx.op.unary.f32(i32 27, float %4198)  ; Round_ni(value)
  %4200 = fadd fast float %4197, %4195
  %4201 = fadd fast float %4200, %4199
  %4202 = fcmp fast oeq float %4201, 0.000000e+00
  %4203 = call float @dx.op.dot4.f32(i32 56, float %4175, float %4176, float %4177, float %4178, float %4039, float %4040, float %4041, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4204 = call float @dx.op.dot4.f32(i32 56, float %4182, float %4183, float %4184, float %4185, float %4039, float %4040, float %4041, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4205 = call float @dx.op.dot4.f32(i32 56, float %4175, float %4176, float %4177, float %4178, float %4042, float %4043, float %4044, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4206 = call float @dx.op.dot4.f32(i32 56, float %4182, float %4183, float %4184, float %4185, float %4042, float %4043, float %4044, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4207 = fsub fast float %4203, %4179
  %4208 = fsub fast float %4205, %4179
  %4209 = fsub fast float %4204, %4186
  %4210 = fsub fast float %4206, %4186
  %4211 = call float @dx.op.dot3.f32(i32 55, float %4126, float %4127, float %4128, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 2
  %4214 = fadd fast float %4213, %4211
  %4215 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4212, 0
  %4217 = fcmp fast ogt float %4215, %4216
  %4218 = and i1 %4202, %4217
  br i1 %4218, label %4242, label %4219

; <label>:4219                                    ; preds = %4529, %4325, %4242, %4095
  %4220 = phi float [ %4097, %4242 ], [ %4328, %4325 ], [ %4328, %4529 ], [ %4097, %4095 ]
  %4221 = phi float [ %4098, %4242 ], [ %4098, %4325 ], [ %4505, %4529 ], [ %4098, %4095 ]
  %4222 = phi float [ %4099, %4242 ], [ %4099, %4325 ], [ %4503, %4529 ], [ %4099, %4095 ]
  %4223 = phi float [ %4100, %4242 ], [ %4100, %4325 ], [ %4481, %4529 ], [ %4100, %4095 ]
  %4224 = phi float [ %4101, %4242 ], [ %4101, %4325 ], [ %4482, %4529 ], [ %4101, %4095 ]
  %4225 = phi float [ %4102, %4242 ], [ %4102, %4325 ], [ %4483, %4529 ], [ %4102, %4095 ]
  %4226 = phi float [ %4103, %4242 ], [ %4103, %4325 ], [ %4452, %4529 ], [ %4103, %4095 ]
  %4227 = phi float [ %4104, %4242 ], [ %4104, %4325 ], [ %4450, %4529 ], [ %4104, %4095 ]
  %4228 = phi float [ %4105, %4242 ], [ %4105, %4325 ], [ %4539, %4529 ], [ %4105, %4095 ]
  %4229 = phi float [ %4106, %4242 ], [ %4106, %4325 ], [ %4540, %4529 ], [ %4106, %4095 ]
  %4230 = phi float [ %4107, %4242 ], [ %4107, %4325 ], [ %4541, %4529 ], [ %4107, %4095 ]
  %4231 = phi float [ %4108, %4242 ], [ %4108, %4325 ], [ %4431, %4529 ], [ %4108, %4095 ]
  %4232 = phi float [ %4109, %4242 ], [ %4109, %4325 ], [ %4432, %4529 ], [ %4109, %4095 ]
  %4233 = phi float [ %4110, %4242 ], [ %4110, %4325 ], [ %4433, %4529 ], [ %4110, %4095 ]
  %4234 = phi float [ %4111, %4242 ], [ %4111, %4325 ], [ %4461, %4529 ], [ %4111, %4095 ]
  %4235 = phi float [ %4112, %4242 ], [ %4112, %4325 ], [ %4458, %4529 ], [ %4112, %4095 ]
  %4236 = phi float [ %4113, %4242 ], [ %4113, %4325 ], [ %4455, %4529 ], [ %4113, %4095 ]
  %4237 = phi float [ %4114, %4242 ], [ %4114, %4325 ], [ %4448, %4529 ], [ %4114, %4095 ]
  %4238 = phi float [ %4115, %4242 ], [ %4115, %4325 ], [ %4443, %4529 ], [ %4115, %4095 ]
  %4239 = phi float [ %4116, %4242 ], [ %4116, %4325 ], [ %4444, %4529 ], [ %4116, %4095 ]
  %4240 = phi float [ %4117, %4242 ], [ %4117, %4325 ], [ %4445, %4529 ], [ %4117, %4095 ]
  %4241 = icmp eq i32 %4121, 0
  br i1 %4241, label %4542, label %4095

; <label>:4242                                    ; preds = %4095
  %4243 = extractvalue %dx.types.ResRet.f32 %4125, 3
  %4244 = extractvalue %dx.types.ResRet.f32 %4144, 3
  %4245 = extractvalue %dx.types.ResRet.f32 %4144, 1
  %4246 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4249 = extractvalue %dx.types.ResRet.i32 %4130, 3
  %4250 = extractvalue %dx.types.ResRet.i32 %4130, 2
  %4251 = bitcast float %4243 to i32
  %4252 = add i32 %4249, 0
  %4253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4252, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4255 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4253, %dx.types.Handle %4254, float %4179, float %4186, float undef, float undef, i32 0, i32 0, i32 undef, float %4207, float %4209, float undef, float %4208, float %4210, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 0
  %4257 = fmul fast float %4256, %4248
  %4258 = fadd fast float %4257, %4247
  %4259 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4260 = fmul fast float %4179, %4139
  %4261 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4186, float %4260)  ; FMad(a,b,c)
  %4262 = fadd fast float %4261, %4246
  %4263 = fmul fast float %4179, %4141
  %4264 = call float @dx.op.tertiary.f32(i32 46, float %4142, float %4186, float %4263)  ; FMad(a,b,c)
  %4265 = fadd fast float %4264, %4245
  %4266 = fmul fast float %4207, %4139
  %4267 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4209, float %4266)  ; FMad(a,b,c)
  %4268 = fmul fast float %4207, %4141
  %4269 = call float @dx.op.tertiary.f32(i32 46, float %4142, float %4209, float %4268)  ; FMad(a,b,c)
  %4270 = fmul fast float %4208, %4139
  %4271 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4210, float %4270)  ; FMad(a,b,c)
  %4272 = fmul fast float %4208, %4141
  %4273 = call float @dx.op.tertiary.f32(i32 46, float %4142, float %4210, float %4272)  ; FMad(a,b,c)
  %4274 = add i32 %4250, 0
  %4275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4274, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4276 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4275, %dx.types.Handle %4254, float %4262, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float %4267, float %4269, float undef, float %4271, float %4273, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 0
  %4278 = and i32 %4251, 1024
  %4279 = icmp ne i32 %4278, 0
  %4280 = fcmp fast ogt float %4277, 0x3FE0101020000000
  %4281 = uitofp i1 %4280 to float
  %4282 = select i1 %4279, float %4281, float %4277
  %4283 = and i32 %4251, 8192
  %4284 = icmp ne i32 %4283, 0
  %4285 = select i1 %4284, float %4244, float 1.000000e+00
  %4286 = fmul fast float %4179, 2.000000e+00
  %4287 = fadd fast float %4286, -1.000000e+00
  %4288 = call float @dx.op.unary.f32(i32 6, float %4287)  ; FAbs(value)
  %4289 = fmul fast float %4288, %4172
  %4290 = fsub fast float %4289, %4172
  %4291 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4292 = fmul fast float %4186, 2.000000e+00
  %4293 = fadd fast float %4292, -1.000000e+00
  %4294 = call float @dx.op.unary.f32(i32 6, float %4293)  ; FAbs(value)
  %4295 = fmul fast float %4294, %4173
  %4296 = fsub fast float %4295, %4173
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = fmul fast float %4198, %4135
  %4299 = fsub fast float %4298, %4135
  %4300 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4301 = fmul fast float %4259, %4285
  %4302 = fmul fast float %4301, %4256
  %4303 = fmul fast float %4302, %4291
  %4304 = fmul fast float %4303, %4282
  %4305 = fmul fast float %4304, %4297
  %4306 = fmul fast float %4305, %4300
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4309 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4310 = fsub fast float %4215, %4309
  %4311 = fmul fast float %4310, %4308
  %4312 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4313 = fmul fast float %4306, %4136
  %4314 = fadd fast float %4306, %4136
  %4315 = fmul fast float %4314, %4145
  %4316 = fsub fast float %4315, %4145
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = and i32 %4251, 128
  %4319 = icmp ne i32 %4318, 0
  %4320 = select i1 %4319, float %4317, float %4313
  %4321 = fmul fast float %4320, %4312
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 0
  %4324 = fcmp fast ugt float %4321, %4323
  br i1 %4324, label %4325, label %4219

; <label>:4325                                    ; preds = %4242
  %4326 = select i1 %4284, float %4321, float 0.000000e+00
  %4327 = fadd fast float %4326, %4097
  %4328 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  br i1 %4284, label %4219, label %4329

; <label>:4329                                    ; preds = %4325
  %4330 = and i32 %4251, 4
  %4331 = and i32 %4251, 8
  %4332 = add i32 %4131, 0
  %4333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4332, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4335 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4333, %dx.types.Handle %4334, float %4262, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float %4267, float %4269, float undef, float %4271, float %4273, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = extractvalue %dx.types.ResRet.f32 %4335, 1
  %4338 = extractvalue %dx.types.ResRet.f32 %4335, 2
  %4339 = extractvalue %dx.types.ResRet.f32 %4335, 3
  %4340 = bitcast float %4157 to i32
  %4341 = and i32 %4340, 255
  %4342 = uitofp i32 %4341 to float
  %4343 = lshr i32 %4340, 8
  %4344 = and i32 %4343, 255
  %4345 = uitofp i32 %4344 to float
  %4346 = fmul fast float %4339, %4342
  %4347 = fadd fast float %4346, %4345
  %4348 = fmul fast float %4347, 0x3F70101000000000
  %4349 = add i32 %4132, 0
  %4350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4349, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4351 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4350, %dx.types.Handle %4334, float %4262, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float %4267, float %4269, float undef, float %4271, float %4273, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4352 = extractvalue %dx.types.ResRet.f32 %4351, 0
  %4353 = extractvalue %dx.types.ResRet.f32 %4351, 1
  %4354 = extractvalue %dx.types.ResRet.f32 %4351, 2
  %4355 = extractvalue %dx.types.ResRet.f32 %4351, 3
  %4356 = bitcast float %4151 to i32
  %4357 = and i32 %4356, 255
  %4358 = uitofp i32 %4357 to float
  %4359 = lshr i32 %4356, 8
  %4360 = and i32 %4359, 255
  %4361 = uitofp i32 %4360 to float
  %4362 = lshr i32 %4356, 16
  %4363 = and i32 %4362, 255
  %4364 = uitofp i32 %4363 to float
  %4365 = fmul fast float %4364, 0x3F70101000000000
  %4366 = fmul fast float %4352, %4358
  %4367 = fadd fast float %4366, %4361
  %4368 = fmul fast float %4367, 0x3F70101000000000
  %4369 = fadd fast float %4353, -5.000000e-01
  %4370 = fadd fast float %4355, -5.000000e-01
  %4371 = fmul fast float %4369, %4365
  %4372 = fmul fast float %4370, %4365
  %4373 = fadd fast float %4371, 5.000000e-01
  %4374 = fadd fast float %4372, 5.000000e-01
  %4375 = fmul fast float %4336, %4160
  %4376 = fmul fast float %4337, %4161
  %4377 = fmul fast float %4338, %4162
  %4378 = fmul fast float %4373, 2.000000e+00
  %4379 = fadd fast float %4378, -1.000000e+00
  %4380 = fmul fast float %4374, 2.000000e+00
  %4381 = fadd fast float %4380, -1.000000e+00
  %4382 = fadd fast float %4379, %4381
  %4383 = fmul fast float %4382, 5.000000e-01
  %4384 = fsub fast float %4379, %4381
  %4385 = fmul fast float %4384, 5.000000e-01
  %4386 = call float @dx.op.unary.f32(i32 6, float %4383)  ; FAbs(value)
  %4387 = fsub fast float 1.000000e+00, %4386
  %4388 = call float @dx.op.unary.f32(i32 6, float %4385)  ; FAbs(value)
  %4389 = fsub fast float %4387, %4388
  %4390 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4385, float %4389, float %4383, float %4385, float %4389)  ; Dot3(ax,ay,az,bx,by,bz)
  %4391 = call float @dx.op.unary.f32(i32 25, float %4390)  ; Rsqrt(value)
  %4392 = fmul fast float %4383, %4391
  %4393 = fmul fast float %4385, %4391
  %4394 = fmul fast float %4391, %4389
  %4395 = fmul fast float %4394, %4126
  %4396 = fmul fast float %4394, %4127
  %4397 = fmul fast float %4394, %4128
  %4398 = fmul fast float %4392, %4148
  %4399 = fmul fast float %4392, %4149
  %4400 = fmul fast float %4392, %4150
  %4401 = fadd fast float %4398, %4395
  %4402 = fadd fast float %4399, %4396
  %4403 = fadd fast float %4400, %4397
  %4404 = fmul fast float %4393, %4154
  %4405 = fmul fast float %4393, %4155
  %4406 = fmul fast float %4393, %4156
  %4407 = fadd fast float %4401, %4404
  %4408 = fadd fast float %4402, %4405
  %4409 = fadd fast float %4403, %4406
  %4410 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4409, float %4407, float %4408, float %4409)  ; Dot3(ax,ay,az,bx,by,bz)
  %4411 = call float @dx.op.unary.f32(i32 25, float %4410)  ; Rsqrt(value)
  %4412 = fmul fast float %4407, %4411
  %4413 = fmul fast float %4408, %4411
  %4414 = fmul fast float %4409, %4411
  %4415 = icmp ne i32 %4331, 0
  %4416 = select i1 %4415, float 1.000000e+00, float 0.000000e+00
  %4417 = fmul fast float %4321, %4416
  %4418 = and i32 %4251, 1
  %4419 = icmp eq i32 %4418, 0
  br i1 %4419, label %4420, label %4424

; <label>:4420                                    ; preds = %4329
  %4421 = fsub fast float %4412, %4108
  %4422 = fsub fast float %4413, %4109
  %4423 = fsub fast float %4414, %4110
  br label %4424

; <label>:4424                                    ; preds = %4420, %4329
  %4425 = phi float [ %4421, %4420 ], [ %4412, %4329 ]
  %4426 = phi float [ %4422, %4420 ], [ %4413, %4329 ]
  %4427 = phi float [ %4423, %4420 ], [ %4414, %4329 ]
  %4428 = fmul float %4427, %4417
  %4429 = fmul float %4426, %4417
  %4430 = fmul float %4425, %4417
  %4431 = fadd fast float %4430, %4108
  %4432 = fadd fast float %4429, %4109
  %4433 = fadd fast float %4428, %4110
  %4434 = icmp ne i32 %4330, 0
  %4435 = select i1 %4434, float 1.000000e+00, float 0.000000e+00
  %4436 = fmul fast float %4321, %4435
  %4437 = fsub fast float %4375, %4115
  %4438 = fsub fast float %4376, %4116
  %4439 = fsub fast float %4377, %4117
  %4440 = fmul fast float %4437, %4436
  %4441 = fmul fast float %4438, %4436
  %4442 = fmul fast float %4439, %4436
  %4443 = fadd fast float %4440, %4115
  %4444 = fadd fast float %4441, %4116
  %4445 = fadd fast float %4442, %4117
  %4446 = fsub fast float %4348, %4114
  %4447 = fmul fast float %4446, %4436
  %4448 = fadd fast float %4447, %4114
  %4449 = fmul fast float %4436, %4104
  %4450 = fsub fast float %4104, %4449
  %4451 = fmul fast float %4436, %4103
  %4452 = fsub fast float %4103, %4451
  %4453 = bitcast float %4169 to i32
  %4454 = fadd fast float %4321, %4113
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = fsub fast float %4368, %4112
  %4457 = fmul fast float %4456, %4417
  %4458 = fadd fast float %4457, %4112
  %4459 = fsub fast float %4354, %4111
  %4460 = fmul fast float %4459, %4417
  %4461 = fadd fast float %4460, %4111
  br i1 %4419, label %4470, label %4462

; <label>:4462                                    ; preds = %4424
  %4463 = and i32 %4251, 32768
  %4464 = icmp eq i32 %4463, 0
  br i1 %4464, label %4480, label %4465

; <label>:4465                                    ; preds = %4462
  %4466 = fmul fast float %4417, 1.270000e+02
  %4467 = fadd fast float %4466, %4100
  %4468 = fadd fast float %4466, %4101
  %4469 = fadd fast float %4466, %4102
  br label %4480

; <label>:4470                                    ; preds = %4424
  %4471 = fsub fast float 1.270000e+02, %4100
  %4472 = fsub fast float 1.270000e+02, %4101
  %4473 = fsub fast float 1.270000e+02, %4102
  %4474 = fmul fast float %4417, %4471
  %4475 = fmul fast float %4417, %4472
  %4476 = fmul fast float %4417, %4473
  %4477 = fadd fast float %4474, %4100
  %4478 = fadd fast float %4475, %4101
  %4479 = fadd fast float %4476, %4102
  br label %4480

; <label>:4480                                    ; preds = %4470, %4465, %4462
  %4481 = phi float [ %4467, %4465 ], [ %4100, %4462 ], [ %4477, %4470 ]
  %4482 = phi float [ %4468, %4465 ], [ %4101, %4462 ], [ %4478, %4470 ]
  %4483 = phi float [ %4469, %4465 ], [ %4102, %4462 ], [ %4479, %4470 ]
  %4484 = call float @dx.op.dot3.f32(i32 55, float %4375, float %4376, float %4377, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4485, 0
  %4487 = extractvalue %dx.types.CBufRet.f32 %4485, 1
  %4488 = fmul fast float %4487, %4484
  %4489 = fadd fast float %4488, %4486
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = bitcast float %4163 to i32
  %4492 = and i32 %4491, 65535
  %4493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4492)  ; LegacyF16ToF32(value)
  %4494 = lshr i32 %4491, 16
  %4495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4494)  ; LegacyF16ToF32(value)
  %4496 = fcmp fast oge float %4493, 0.000000e+00
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 0
  %4499 = select i1 %4496, float %4493, float %4498
  %4500 = fadd fast float %4499, %4495
  %4501 = fsub fast float %4490, %4099
  %4502 = fmul fast float %4501, %4321
  %4503 = fadd fast float %4502, %4099
  %4504 = fmul fast float %4500, %4321
  %4505 = call float @dx.op.binary.f32(i32 35, float %4098, float %4504)  ; FMax(a,b)
  %4506 = and i32 %4251, 16
  %4507 = icmp eq i32 %4506, 0
  br i1 %4507, label %4529, label %4508

; <label>:4508                                    ; preds = %4480
  %4509 = add i32 %4166, 0
  %4510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4509, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4511 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4510, %dx.types.Handle %4334, float %4262, float %4265, float undef, float undef, i32 0, i32 0, i32 undef, float %4267, float %4269, float undef, float %4271, float %4273, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.ResRet.f32 %4511, 1
  %4514 = extractvalue %dx.types.ResRet.f32 %4511, 2
  %4515 = and i32 %4453, 65535
  %4516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4515)  ; LegacyF16ToF32(value)
  %4517 = fmul fast float %4512, %4160
  %4518 = fmul fast float %4513, %4161
  %4519 = fmul fast float %4514, %4162
  %4520 = and i32 %4251, 16384
  %4521 = icmp ne i32 %4520, 0
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 0
  %4524 = select i1 %4521, float %4523, float 1.000000e+00
  %4525 = fmul fast float %4524, %4516
  %4526 = fmul fast float %4517, %4525
  %4527 = fmul fast float %4518, %4525
  %4528 = fmul fast float %4519, %4525
  br label %4529

; <label>:4529                                    ; preds = %4508, %4480
  %4530 = phi float [ %4526, %4508 ], [ 0.000000e+00, %4480 ]
  %4531 = phi float [ %4527, %4508 ], [ 0.000000e+00, %4480 ]
  %4532 = phi float [ %4528, %4508 ], [ 0.000000e+00, %4480 ]
  %4533 = fsub fast float %4530, %4105
  %4534 = fsub fast float %4531, %4106
  %4535 = fsub fast float %4532, %4107
  %4536 = fmul fast float %4533, %4321
  %4537 = fmul fast float %4534, %4321
  %4538 = fmul fast float %4535, %4321
  %4539 = fadd fast float %4536, %4105
  %4540 = fadd fast float %4537, %4106
  %4541 = fadd fast float %4538, %4107
  br label %4219

; <label>:4542                                    ; preds = %4219
  br label %4543

; <label>:4543                                    ; preds = %4542, %4032
  %4544 = phi float [ 0.000000e+00, %4032 ], [ %4220, %4542 ]
  %4545 = phi float [ %4002, %4032 ], [ %4221, %4542 ]
  %4546 = phi float [ %4000, %4032 ], [ %4222, %4542 ]
  %4547 = phi float [ %3993, %4032 ], [ %4223, %4542 ]
  %4548 = phi float [ %3994, %4032 ], [ %4224, %4542 ]
  %4549 = phi float [ %3995, %4032 ], [ %4225, %4542 ]
  %4550 = phi float [ 0.000000e+00, %4032 ], [ %4226, %4542 ]
  %4551 = phi float [ 0.000000e+00, %4032 ], [ %4227, %4542 ]
  %4552 = phi float [ %3987, %4032 ], [ %4228, %4542 ]
  %4553 = phi float [ %3988, %4032 ], [ %4229, %4542 ]
  %4554 = phi float [ %3989, %4032 ], [ %4230, %4542 ]
  %4555 = phi float [ %4028, %4032 ], [ %4231, %4542 ]
  %4556 = phi float [ %4029, %4032 ], [ %4232, %4542 ]
  %4557 = phi float [ %4030, %4032 ], [ %4233, %4542 ]
  %4558 = phi float [ %3998, %4032 ], [ %4234, %4542 ]
  %4559 = phi float [ %3997, %4032 ], [ %4235, %4542 ]
  %4560 = phi float [ 0.000000e+00, %4032 ], [ %4236, %4542 ]
  %4561 = phi float [ %3996, %4032 ], [ %4237, %4542 ]
  %4562 = phi float [ %3990, %4032 ], [ %4238, %4542 ]
  %4563 = phi float [ %3991, %4032 ], [ %4239, %4542 ]
  %4564 = phi float [ %3992, %4032 ], [ %4240, %4542 ]
  %4565 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4556, float %4557, float %4555, float %4556, float %4557)  ; Dot3(ax,ay,az,bx,by,bz)
  %4566 = call float @dx.op.unary.f32(i32 25, float %4565)  ; Rsqrt(value)
  %4567 = fmul fast float %4566, %4555
  %4568 = fmul fast float %4566, %4556
  %4569 = fmul fast float %4566, %4557
  %4570 = fadd fast float %4560, %1332
  %4571 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4567, float %4568, float %4569, float %4567, float %4568, float %4569)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 25, float %4572)  ; Rsqrt(value)
  %4574 = fmul fast float %4573, %4567
  %4575 = fmul fast float %4573, %4568
  %4576 = fmul fast float %4573, %4569
  br label %4577

; <label>:4577                                    ; preds = %4543, %3984
  %4578 = phi float [ %4574, %4543 ], [ %4028, %3984 ]
  %4579 = phi float [ %4575, %4543 ], [ %4029, %3984 ]
  %4580 = phi float [ %4576, %4543 ], [ %4030, %3984 ]
  %4581 = phi float [ %4552, %4543 ], [ %3987, %3984 ]
  %4582 = phi float [ %4553, %4543 ], [ %3988, %3984 ]
  %4583 = phi float [ %4554, %4543 ], [ %3989, %3984 ]
  %4584 = phi float [ %4562, %4543 ], [ %3990, %3984 ]
  %4585 = phi float [ %4563, %4543 ], [ %3991, %3984 ]
  %4586 = phi float [ %4564, %4543 ], [ %3992, %3984 ]
  %4587 = phi float [ %4547, %4543 ], [ %3993, %3984 ]
  %4588 = phi float [ %4548, %4543 ], [ %3994, %3984 ]
  %4589 = phi float [ %4549, %4543 ], [ %3995, %3984 ]
  %4590 = phi float [ %4561, %4543 ], [ %3996, %3984 ]
  %4591 = phi float [ %4571, %4543 ], [ %1332, %3984 ]
  %4592 = phi float [ %4559, %4543 ], [ %3997, %3984 ]
  %4593 = phi float [ %4558, %4543 ], [ %3998, %3984 ]
  %4594 = phi float [ %4551, %4543 ], [ 0.000000e+00, %3984 ]
  %4595 = phi float [ %4550, %4543 ], [ 0.000000e+00, %3984 ]
  %4596 = phi float [ %4544, %4543 ], [ 0.000000e+00, %3984 ]
  %4597 = phi float [ %4545, %4543 ], [ %4002, %3984 ]
  %4598 = phi float [ %4546, %4543 ], [ %4000, %3984 ]
  %4599 = fadd fast float %4590, 0xBFB99999A0000000
  %4600 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4601 = fmul fast float %4600, 0x3FF1C71C80000000
  %4602 = call float @dx.op.binary.f32(i32 36, float %4590, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4603 = fsub fast float 1.000000e+00, %4601
  %4604 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4605 = fmul fast float %4604, %4584
  %4606 = fmul fast float %4604, %4585
  %4607 = fmul fast float %4604, %4586
  %4608 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4609 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4610 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4611 = fmul fast float %4601, %4584
  %4612 = fmul fast float %4601, %4585
  %4613 = fmul fast float %4601, %4586
  %4614 = fadd fast float %4611, %4602
  %4615 = fadd fast float %4612, %4602
  %4616 = fadd fast float %4613, %4602
  %4617 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4618 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4619 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4620 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4621 = call float @dx.op.binary.f32(i32 36, float %4587, float 1.270000e+02)  ; FMin(a,b)
  %4622 = call float @dx.op.binary.f32(i32 36, float %4588, float 1.270000e+02)  ; FMin(a,b)
  %4623 = call float @dx.op.binary.f32(i32 36, float %4589, float 1.270000e+02)  ; FMin(a,b)
  %4624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.i32 %4624, 3
  %4626 = and i32 %4625, 8
  %4627 = icmp ne i32 %4626, 0
  %4628 = call float @dx.op.binary.f32(i32 35, float %4608, float %4584)  ; FMax(a,b)
  %4629 = call float @dx.op.binary.f32(i32 35, float %4609, float %4584)  ; FMax(a,b)
  %4630 = call float @dx.op.binary.f32(i32 35, float %4610, float %4584)  ; FMax(a,b)
  %4631 = call float @dx.op.dot3.f32(i32 55, float %4608, float %4609, float %4610, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = select i1 %254, float %4584, float %4608
  %4633 = select i1 %254, float %4631, float %4609
  %4634 = select i1 %254, float 1.000000e+00, float %4610
  %4635 = select i1 %4627, float %4628, float %4632
  %4636 = select i1 %4627, float %4629, float %4633
  %4637 = select i1 %4627, float %4630, float %4634
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = extractvalue %dx.types.CBufRet.f32 %4638, 1
  %4641 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4642 = fadd fast float %4639, %195
  %4643 = fadd fast float %4640, %196
  %4644 = fadd fast float %4641, %197
  %4645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4646 = extractvalue %dx.types.CBufRet.f32 %4645, 0
  %4647 = extractvalue %dx.types.CBufRet.f32 %4645, 1
  %4648 = fsub fast float %4642, %4646
  %4649 = fsub fast float %4643, %4647
  %4650 = fmul fast float %4648, %4648
  %4651 = fmul fast float %4649, %4649
  %4652 = fadd fast float %4650, %4651
  %4653 = call float @dx.op.unary.f32(i32 24, float %4652)  ; Sqrt(value)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4645, 2
  %4655 = fcmp fast olt float %4653, %4654
  br i1 %4655, label %4656, label %4723

; <label>:4656                                    ; preds = %4577
  %4657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4657, 0
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 0
  %4661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.f32 %4661, 0
  %4663 = extractvalue %dx.types.CBufRet.f32 %4657, 1
  %4664 = extractvalue %dx.types.CBufRet.f32 %4659, 1
  %4665 = extractvalue %dx.types.CBufRet.f32 %4661, 1
  %4666 = extractvalue %dx.types.CBufRet.f32 %4657, 3
  %4667 = extractvalue %dx.types.CBufRet.f32 %4659, 3
  %4668 = extractvalue %dx.types.CBufRet.f32 %4661, 3
  %4669 = fadd fast float %4666, %4642
  %4670 = fadd fast float %4667, %4643
  %4671 = fadd fast float %4668, %4644
  %4672 = fmul fast float %4669, %4658
  %4673 = call float @dx.op.tertiary.f32(i32 46, float %4670, float %4660, float %4672)  ; FMad(a,b,c)
  %4674 = call float @dx.op.tertiary.f32(i32 46, float %4671, float %4662, float %4673)  ; FMad(a,b,c)
  %4675 = fmul fast float %4669, %4663
  %4676 = call float @dx.op.tertiary.f32(i32 46, float %4670, float %4664, float %4675)  ; FMad(a,b,c)
  %4677 = call float @dx.op.tertiary.f32(i32 46, float %4671, float %4665, float %4676)  ; FMad(a,b,c)
  %4678 = fsub fast float %4674, %4666
  %4679 = fsub fast float %4677, %4667
  %4680 = fsub fast float %4678, %4646
  %4681 = fadd fast float %4680, %4654
  %4682 = fsub fast float %4679, %4647
  %4683 = fadd fast float %4682, %4654
  %4684 = extractvalue %dx.types.CBufRet.f32 %4645, 3
  %4685 = fmul fast float %4681, %4684
  %4686 = fmul fast float %4683, %4684
  %4687 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4688 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4689 = fsub fast float 1.000000e+00, %4687
  %4690 = fsub fast float 1.000000e+00, %4688
  %4691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %49, float %4689, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 0
  %4693 = fcmp fast ugt float %4692, 0.000000e+00
  br i1 %4693, label %4694, label %4997

; <label>:4694                                    ; preds = %4656
  %4695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4696 = extractvalue %dx.types.CBufRet.f32 %4695, 2
  %4697 = fmul fast float %4696, %4692
  %4698 = extractvalue %dx.types.CBufRet.f32 %4695, 3
  %4699 = fadd fast float %4698, %4697
  %4700 = extractvalue %dx.types.CBufRet.f32 %4661, 2
  %4701 = fadd fast float %4699, %4668
  %4702 = fmul fast float %4674, %4662
  %4703 = call float @dx.op.tertiary.f32(i32 46, float %4677, float %4665, float %4702)  ; FMad(a,b,c)
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4701, float %4700, float %4703)  ; FMad(a,b,c)
  %4705 = fsub fast float %4704, %4668
  %4706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.f32 %4706, 2
  %4708 = fsub fast float %4705, %4707
  %4709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %49, float %4689, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.ResRet.f32 %4709, 1
  %4712 = extractvalue %dx.types.ResRet.f32 %4709, 2
  %4713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %49, float %4689, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.ResRet.f32 %4713, 1
  %4716 = extractvalue %dx.types.ResRet.f32 %4713, 2
  %4717 = fadd fast float %4714, %4710
  %4718 = fmul fast float %4717, 0x3F847AE140000000
  %4719 = fadd fast float %4715, %4711
  %4720 = fmul fast float %4719, 0x3F847AE140000000
  %4721 = fadd fast float %4716, %4712
  %4722 = fmul fast float %4721, 0x3F847AE140000000
  br label %4997

; <label>:4723                                    ; preds = %4577
  %4724 = and i32 %233, 1
  %4725 = icmp eq i32 %4724, 0
  br i1 %4725, label %4997, label %4726

; <label>:4726                                    ; preds = %4723
  %4727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.f32 %4727, 0
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4729, 0
  %4731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4732 = extractvalue %dx.types.CBufRet.f32 %4731, 0
  %4733 = extractvalue %dx.types.CBufRet.f32 %4727, 1
  %4734 = extractvalue %dx.types.CBufRet.f32 %4729, 1
  %4735 = extractvalue %dx.types.CBufRet.f32 %4731, 1
  %4736 = extractvalue %dx.types.CBufRet.f32 %4727, 3
  %4737 = extractvalue %dx.types.CBufRet.f32 %4729, 3
  %4738 = extractvalue %dx.types.CBufRet.f32 %4731, 3
  %4739 = fadd fast float %4736, %4642
  %4740 = fadd fast float %4737, %4643
  %4741 = fadd fast float %4738, %4644
  %4742 = fmul fast float %4739, %4728
  %4743 = call float @dx.op.tertiary.f32(i32 46, float %4740, float %4730, float %4742)  ; FMad(a,b,c)
  %4744 = call float @dx.op.tertiary.f32(i32 46, float %4741, float %4732, float %4743)  ; FMad(a,b,c)
  %4745 = fmul fast float %4739, %4733
  %4746 = call float @dx.op.tertiary.f32(i32 46, float %4740, float %4734, float %4745)  ; FMad(a,b,c)
  %4747 = call float @dx.op.tertiary.f32(i32 46, float %4741, float %4735, float %4746)  ; FMad(a,b,c)
  %4748 = fsub fast float %4744, %4736
  %4749 = fsub fast float %4747, %4737
  %4750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.f32 %4750, 0
  %4752 = extractvalue %dx.types.CBufRet.f32 %4750, 1
  %4753 = extractvalue %dx.types.CBufRet.f32 %4750, 2
  %4754 = extractvalue %dx.types.CBufRet.f32 %4750, 3
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 3
  %4757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.i32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.i32 %4757, 1
  %4760 = udiv i32 %4759, %4758
  %4761 = fsub fast float %4748, %4751
  %4762 = fsub fast float %4749, %4752
  %4763 = call float @dx.op.binary.f32(i32 35, float %4761, float 0.000000e+00)  ; FMax(a,b)
  %4764 = call float @dx.op.binary.f32(i32 35, float %4762, float 0.000000e+00)  ; FMax(a,b)
  %4765 = call float @dx.op.binary.f32(i32 36, float %4763, float %4753)  ; FMin(a,b)
  %4766 = call float @dx.op.binary.f32(i32 36, float %4764, float %4754)  ; FMin(a,b)
  %4767 = add i32 %4758, -1
  %4768 = add i32 %4760, -1
  %4769 = fmul fast float %4765, %4756
  %4770 = fmul fast float %4766, %4756
  %4771 = fptoui float %4769 to i32
  %4772 = fptoui float %4770 to i32
  %4773 = call i32 @dx.op.binary.i32(i32 40, i32 %4771, i32 %4767)  ; UMin(a,b)
  %4774 = call i32 @dx.op.binary.i32(i32 40, i32 %4772, i32 %4768)  ; UMin(a,b)
  %4775 = mul i32 %4774, %4758
  %4776 = add i32 %4775, %4773
  %4777 = shl i32 %4776, 2
  %4778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4777, i32 undef)  ; BufferLoad(srv,index,wot)
  %4779 = extractvalue %dx.types.ResRet.i32 %4778, 0
  %4780 = icmp eq i32 %4779, -1
  br i1 %4780, label %4997, label %4781

; <label>:4781                                    ; preds = %4726
  %4782 = mul i32 %4779, 148
  %4783 = add i32 %4782, 4
  %4784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4783, i32 undef)  ; BufferLoad(srv,index,wot)
  %4785 = extractvalue %dx.types.ResRet.f32 %4784, 0
  %4786 = add i32 %4782, 8
  %4787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4786, i32 undef)  ; BufferLoad(srv,index,wot)
  %4788 = extractvalue %dx.types.ResRet.f32 %4787, 0
  %4789 = add i32 %4782, 36
  %4790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4789, i32 undef)  ; BufferLoad(srv,index,wot)
  %4791 = extractvalue %dx.types.ResRet.f32 %4790, 0
  %4792 = add i32 %4782, 60
  %4793 = add i32 %4782, 92
  %4794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4793, i32 undef)  ; BufferLoad(srv,index,wot)
  %4795 = extractvalue %dx.types.ResRet.i32 %4794, 0
  %4796 = add i32 %4782, 116
  %4797 = fsub fast float %4748, %4785
  %4798 = fsub fast float %4749, %4788
  %4799 = fmul fast float %4756, %4797
  %4800 = fmul fast float %4756, %4798
  %4801 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4802 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4803 = fsub fast float 1.000000e+00, %4802
  %4804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.f32 %4804, 2
  %4806 = call float @dx.op.unary.f32(i32 83, float %4801)  ; DerivCoarseX(value)
  %4807 = call float @dx.op.unary.f32(i32 83, float %4803)  ; DerivCoarseX(value)
  %4808 = call float @dx.op.unary.f32(i32 84, float %4801)  ; DerivCoarseY(value)
  %4809 = call float @dx.op.unary.f32(i32 84, float %4803)  ; DerivCoarseY(value)
  %4810 = fmul fast float %4806, %4805
  %4811 = fmul fast float %4807, %4805
  %4812 = fmul fast float %4808, %4805
  %4813 = fmul fast float %4809, %4805
  %4814 = call float @dx.op.dot2.f32(i32 54, float %4812, float %4813, float %4812, float %4813)  ; Dot2(ax,ay,bx,by)
  %4815 = call float @dx.op.dot2.f32(i32 54, float %4810, float %4811, float %4810, float %4811)  ; Dot2(ax,ay,bx,by)
  %4816 = call float @dx.op.binary.f32(i32 35, float %4815, float %4814)  ; FMax(a,b)
  %4817 = call float @dx.op.unary.f32(i32 23, float %4816)  ; Log(value)
  %4818 = fmul fast float %4817, 5.000000e-01
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4821 = fadd fast float %4820, %4818
  %4822 = call float @dx.op.binary.f32(i32 35, float %4821, float 0.000000e+00)  ; FMax(a,b)
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 3
  %4825 = fadd fast float %4824, %4822
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 3
  %4828 = fadd fast float %4825, %4827
  %4829 = add i32 %4795, 0
  %4830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4829, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4831 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4830, i32 0)  ; GetDimensions(handle,mipLevel)
  %4832 = extractvalue %dx.types.Dimensions %4831, 0
  %4833 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4832)  ; FirstbitLo(value)
  %4834 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.i32 %4834, 1
  %4836 = sub nsw i32 %4835, %4833
  %4837 = sitofp i32 %4836 to float
  %4838 = fsub fast float %4828, %4837
  %4839 = call float @dx.op.binary.f32(i32 35, float %4838, float 0.000000e+00)  ; FMax(a,b)
  %4840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4830, %dx.types.Handle %47, float %4801, float %4803, float %4791, float undef, i32 0, i32 0, i32 undef, float %4839)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4841 = extractvalue %dx.types.ResRet.f32 %4840, 0
  %4842 = fcmp ule float %4841, 0x3FE0101020000000
  %4843 = extractvalue %dx.types.CBufRet.i32 %4834, 0
  %4844 = and i32 %4843, 128
  %4845 = icmp ne i32 %4844, 0
  %4846 = and i1 %4842, %4845
  br i1 %4846, label %4997, label %4847

; <label>:4847                                    ; preds = %4781
  %4848 = add i32 %4782, 20
  %4849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4848, i32 undef)  ; BufferLoad(srv,index,wot)
  %4850 = extractvalue %dx.types.ResRet.f32 %4849, 0
  %4851 = add i32 %4782, 24
  %4852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4851, i32 undef)  ; BufferLoad(srv,index,wot)
  %4853 = extractvalue %dx.types.ResRet.f32 %4852, 0
  %4854 = add i32 %4782, 40
  %4855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4854, i32 undef)  ; BufferLoad(srv,index,wot)
  %4856 = extractvalue %dx.types.ResRet.f32 %4855, 0
  %4857 = add i32 %4782, 96
  %4858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4857, i32 undef)  ; BufferLoad(srv,index,wot)
  %4859 = extractvalue %dx.types.ResRet.i32 %4858, 0
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 2
  %4862 = fmul fast float %4861, %4801
  %4863 = fmul fast float %4861, %4803
  %4864 = extractvalue %dx.types.CBufRet.f32 %4860, 3
  %4865 = fadd fast float %4862, %4864
  %4866 = fadd fast float %4863, %4864
  %4867 = add i32 %4859, 0
  %4868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4867, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4869 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4868, i32 0)  ; GetDimensions(handle,mipLevel)
  %4870 = extractvalue %dx.types.Dimensions %4869, 0
  %4871 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4870)  ; FirstbitLo(value)
  %4872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.i32 %4872, 1
  %4874 = sub nsw i32 %4873, %4871
  %4875 = sitofp i32 %4874 to float
  %4876 = fsub fast float %4825, %4875
  %4877 = call float @dx.op.binary.f32(i32 35, float %4876, float 0.000000e+00)  ; FMax(a,b)
  %4878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4868, %dx.types.Handle %47, float %4865, float %4866, float %4856, float undef, i32 0, i32 0, i32 undef, float %4877)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = fmul fast float %4879, %4850
  %4881 = fadd fast float %4880, %4853
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.CBufRet.f32 %4882, 1
  %4885 = extractvalue %dx.types.CBufRet.f32 %4882, 2
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 3
  %4890 = extractvalue %dx.types.CBufRet.f32 %4882, 3
  %4891 = fadd fast float %4887, %4748
  %4892 = fadd fast float %4889, %4749
  %4893 = fadd fast float %4881, %4890
  %4894 = fmul fast float %4891, %4883
  %4895 = call float @dx.op.tertiary.f32(i32 46, float %4892, float %4884, float %4894)  ; FMad(a,b,c)
  %4896 = call float @dx.op.tertiary.f32(i32 46, float %4893, float %4885, float %4895)  ; FMad(a,b,c)
  %4897 = fsub fast float %4896, %4890
  %4898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4899 = extractvalue %dx.types.CBufRet.f32 %4898, 2
  %4900 = fsub fast float %4897, %4899
  %4901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.i32 %4901, 0
  %4903 = call i32 @dx.op.binary.i32(i32 40, i32 %4779, i32 %4902)  ; UMin(a,b)
  %4904 = mul i32 %4903, 36
  %4905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4904, i32 undef)  ; BufferLoad(srv,index,wot)
  %4906 = extractvalue %dx.types.ResRet.i32 %4905, 0
  %4907 = add i32 %4904, 4
  %4908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.f32 %4908, 0
  %4910 = fmul fast float %4909, %4801
  %4911 = fmul fast float %4909, %4803
  %4912 = extractvalue %dx.types.CBufRet.f32 %4908, 1
  %4913 = fadd fast float %4910, %4912
  %4914 = fadd fast float %4911, %4912
  %4915 = icmp eq i32 %4906, 0
  br i1 %4915, label %4984, label %4916

; <label>:4916                                    ; preds = %4847
  br label %4917

; <label>:4917                                    ; preds = %4974, %4916
  %4918 = phi float [ %4975, %4974 ], [ 0.000000e+00, %4916 ]
  %4919 = phi float [ %4976, %4974 ], [ 0.000000e+00, %4916 ]
  %4920 = phi float [ %4977, %4974 ], [ 0.000000e+00, %4916 ]
  %4921 = phi float [ %4978, %4974 ], [ 0.000000e+00, %4916 ]
  %4922 = phi float [ %4979, %4974 ], [ 0.000000e+00, %4916 ]
  %4923 = phi float [ %4980, %4974 ], [ 0.000000e+00, %4916 ]
  %4924 = phi i32 [ %4981, %4974 ], [ 0, %4916 ]
  %4925 = shl i32 %4924, 2
  %4926 = add i32 %4792, %4925
  %4927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4926, i32 undef)  ; BufferLoad(srv,index,wot)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = add i32 %4796, %4925
  %4930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4929, i32 undef)  ; BufferLoad(srv,index,wot)
  %4931 = extractvalue %dx.types.ResRet.i32 %4930, 0
  %4932 = add i32 %4931, 0
  %4933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4932, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4934 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4933, i32 0)  ; GetDimensions(handle,mipLevel)
  %4935 = extractvalue %dx.types.Dimensions %4934, 0
  %4936 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4935)  ; FirstbitLo(value)
  %4937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4938 = extractvalue %dx.types.CBufRet.i32 %4937, 1
  %4939 = sub nsw i32 %4938, %4936
  %4940 = sitofp i32 %4939 to float
  %4941 = fsub fast float %4825, %4940
  %4942 = call float @dx.op.binary.f32(i32 35, float %4941, float 0.000000e+00)  ; FMax(a,b)
  %4943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4933, %dx.types.Handle %47, float %4913, float %4914, float %4928, float undef, i32 0, i32 0, i32 undef, float %4942)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4944 = extractvalue %dx.types.ResRet.f32 %4943, 0
  %4945 = fcmp fast ogt float %4944, 0.000000e+00
  br i1 %4945, label %4946, label %4974

; <label>:4946                                    ; preds = %4917
  %4947 = add i32 %4907, %4925
  %4948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4947, i32 undef)  ; BufferLoad(srv,index,wot)
  %4949 = extractvalue %dx.types.ResRet.i32 %4948, 0
  %4950 = and i32 %4949, 32767
  %4951 = mul nuw nsw i32 %4950, 928
  %4952 = add nuw nsw i32 %4951, 48
  %4953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4952, i32 undef)  ; BufferLoad(srv,index,wot)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = extractvalue %dx.types.ResRet.f32 %4953, 1
  %4956 = extractvalue %dx.types.ResRet.f32 %4953, 2
  %4957 = add nuw nsw i32 %4951, 60
  %4958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4957, i32 undef)  ; BufferLoad(srv,index,wot)
  %4959 = extractvalue %dx.types.ResRet.f32 %4958, 0
  %4960 = extractvalue %dx.types.ResRet.f32 %4958, 1
  %4961 = extractvalue %dx.types.ResRet.f32 %4958, 2
  %4962 = fmul fast float %4954, %4944
  %4963 = fmul fast float %4955, %4944
  %4964 = fmul fast float %4956, %4944
  %4965 = fadd fast float %4962, %4918
  %4966 = fadd fast float %4963, %4919
  %4967 = fadd fast float %4964, %4920
  %4968 = fmul fast float %4959, %4944
  %4969 = fmul fast float %4960, %4944
  %4970 = fmul fast float %4961, %4944
  %4971 = fadd fast float %4968, %4921
  %4972 = fadd fast float %4969, %4922
  %4973 = fadd fast float %4970, %4923
  br label %4974

; <label>:4974                                    ; preds = %4946, %4917
  %4975 = phi float [ %4965, %4946 ], [ %4918, %4917 ]
  %4976 = phi float [ %4966, %4946 ], [ %4919, %4917 ]
  %4977 = phi float [ %4967, %4946 ], [ %4920, %4917 ]
  %4978 = phi float [ %4971, %4946 ], [ %4921, %4917 ]
  %4979 = phi float [ %4972, %4946 ], [ %4922, %4917 ]
  %4980 = phi float [ %4973, %4946 ], [ %4923, %4917 ]
  %4981 = add nuw i32 %4924, 1
  %4982 = icmp eq i32 %4981, %4906
  br i1 %4982, label %4983, label %4917

; <label>:4983                                    ; preds = %4974
  br label %4984

; <label>:4984                                    ; preds = %4983, %4847
  %4985 = phi float [ 0.000000e+00, %4847 ], [ %4975, %4983 ]
  %4986 = phi float [ 0.000000e+00, %4847 ], [ %4976, %4983 ]
  %4987 = phi float [ 0.000000e+00, %4847 ], [ %4977, %4983 ]
  %4988 = phi float [ 0.000000e+00, %4847 ], [ %4978, %4983 ]
  %4989 = phi float [ 0.000000e+00, %4847 ], [ %4979, %4983 ]
  %4990 = phi float [ 0.000000e+00, %4847 ], [ %4980, %4983 ]
  %4991 = fadd fast float %4988, %4985
  %4992 = fmul fast float %4991, 0x3F847AE140000000
  %4993 = fadd fast float %4989, %4986
  %4994 = fmul fast float %4993, 0x3F847AE140000000
  %4995 = fadd fast float %4990, %4987
  %4996 = fmul fast float %4995, 0x3F847AE140000000
  br label %4997

; <label>:4997                                    ; preds = %4984, %4781, %4726, %4723, %4694, %4656
  %4998 = phi float [ %4708, %4694 ], [ -1.310720e+05, %4656 ], [ %4900, %4984 ], [ -1.310720e+05, %4726 ], [ -1.310720e+05, %4781 ], [ -1.310720e+05, %4723 ]
  %4999 = phi float [ %4718, %4694 ], [ 0.000000e+00, %4656 ], [ %4992, %4984 ], [ 0.000000e+00, %4726 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4723 ]
  %5000 = phi float [ %4720, %4694 ], [ 0.000000e+00, %4656 ], [ %4994, %4984 ], [ 0.000000e+00, %4726 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4723 ]
  %5001 = phi float [ %4722, %4694 ], [ 0.000000e+00, %4656 ], [ %4996, %4984 ], [ 0.000000e+00, %4726 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4723 ]
  %5002 = phi i1 [ true, %4694 ], [ false, %4656 ], [ true, %4984 ], [ false, %4726 ], [ false, %4781 ], [ false, %4723 ]
  %5003 = and i32 %233, 3
  %5004 = icmp eq i32 %5003, 1
  %5005 = select i1 %5004, float 1.000000e+00, float 0.000000e+00
  %5006 = fsub fast float %4998, %197
  %5007 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5008 = select i1 %5002, float %5007, float 1.000000e+00
  %5009 = fmul fast float %5008, %5005
  %5010 = icmp eq i32 %5003, 3
  %5011 = select i1 %5010, float 1.000000e+00, float %5009
  %5012 = call float @dx.op.binary.f32(i32 35, float %4596, float %5011)  ; FMax(a,b)
  %5013 = fcmp fast olt float %5011, 1.000000e+00
  %5014 = fcmp uge float %72, 0.000000e+00
  %5015 = and i1 %5014, %5013
  br i1 %5015, label %5016, label %5026

; <label>:5016                                    ; preds = %4997
  %5017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %47, float %72, float %73, float %74, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5018 = extractvalue %dx.types.ResRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.ResRet.f32 %5017, 1
  %5020 = extractvalue %dx.types.ResRet.f32 %5017, 2
  %5021 = fadd fast float %5018, %5012
  %5022 = fcmp ule float %71, 0.000000e+00
  %5023 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5024 = select i1 %5022, float %5023, float 1.000000e+00
  %5025 = fmul fast float %5024, %5020
  br label %5026

; <label>:5026                                    ; preds = %5016, %4997
  %5027 = phi float [ %5021, %5016 ], [ %5012, %4997 ]
  %5028 = phi float [ %5019, %5016 ], [ 0.000000e+00, %4997 ]
  %5029 = phi float [ %5025, %5016 ], [ 0.000000e+00, %4997 ]
  %5030 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5031 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5032 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5033 = fcmp fast une float %5031, 0.000000e+00
  %5034 = fcmp fast une float %5032, 0.000000e+00
  %5035 = or i1 %5033, %5034
  br i1 %5035, label %5036, label %5595

; <label>:5036                                    ; preds = %5026
  br i1 %5033, label %5037, label %5310

; <label>:5037                                    ; preds = %5036
  %5038 = call float @dx.op.unary.f32(i32 23, float %4593)  ; Log(value)
  %5039 = fmul fast float %5038, 4.000000e+00
  %5040 = call float @dx.op.unary.f32(i32 21, float %5039)  ; Exp(value)
  %5041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.f32 %5041, 0
  %5043 = fmul fast float %5042, %58
  %5044 = fmul fast float %5042, %59
  %5045 = fmul fast float %5042, %60
  %5046 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5047 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5048 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5049 = call float @dx.op.unary.f32(i32 23, float %5046)  ; Log(value)
  %5050 = call float @dx.op.unary.f32(i32 23, float %5047)  ; Log(value)
  %5051 = call float @dx.op.unary.f32(i32 23, float %5048)  ; Log(value)
  %5052 = fmul fast float %5049, 4.000000e+00
  %5053 = fmul fast float %5050, 4.000000e+00
  %5054 = fmul fast float %5051, 4.000000e+00
  %5055 = call float @dx.op.unary.f32(i32 21, float %5052)  ; Exp(value)
  %5056 = call float @dx.op.unary.f32(i32 21, float %5053)  ; Exp(value)
  %5057 = call float @dx.op.unary.f32(i32 21, float %5054)  ; Exp(value)
  %5058 = fadd fast float %5056, %5055
  %5059 = fadd fast float %5058, %5057
  %5060 = fdiv fast float 1.000000e+00, %5059
  %5061 = fmul fast float %5060, %5055
  %5062 = fcmp fast ogt float %68, 0.000000e+00
  %5063 = fcmp fast ogt float %69, 0.000000e+00
  %5064 = fcmp fast ogt float %70, 0.000000e+00
  %5065 = fcmp fast olt float %68, 0.000000e+00
  %5066 = fcmp fast olt float %69, 0.000000e+00
  %5067 = fcmp fast olt float %70, 0.000000e+00
  %5068 = zext i1 %5062 to i32
  %5069 = zext i1 %5063 to i32
  %5070 = zext i1 %5064 to i32
  %5071 = zext i1 %5065 to i32
  %5072 = zext i1 %5066 to i32
  %5073 = zext i1 %5067 to i32
  %5074 = sub nsw i32 %5068, %5071
  %5075 = sub nsw i32 %5069, %5072
  %5076 = sub nsw i32 %5070, %5073
  %5077 = call float @dx.op.unary.f32(i32 83, float %5043)  ; DerivCoarseX(value)
  %5078 = call float @dx.op.unary.f32(i32 83, float %5044)  ; DerivCoarseX(value)
  %5079 = call float @dx.op.unary.f32(i32 83, float %5045)  ; DerivCoarseX(value)
  %5080 = call float @dx.op.unary.f32(i32 84, float %5043)  ; DerivCoarseY(value)
  %5081 = call float @dx.op.unary.f32(i32 84, float %5044)  ; DerivCoarseY(value)
  %5082 = call float @dx.op.unary.f32(i32 84, float %5045)  ; DerivCoarseY(value)
  %5083 = fcmp fast ole float %265, %5061
  %5084 = fmul fast float %5060, %5058
  %5085 = fcmp fast ole float %265, %5084
  %5086 = select i1 %5085, float %5045, float %5043
  %5087 = select i1 %5085, float %5043, float %5044
  %5088 = select i1 %5083, float %5044, float %5086
  %5089 = select i1 %5083, float %5045, float %5087
  %5090 = select i1 %5085, float %5079, float %5077
  %5091 = select i1 %5085, float %5077, float %5078
  %5092 = select i1 %5083, float %5078, float %5090
  %5093 = select i1 %5083, float %5079, float %5091
  %5094 = select i1 %5085, float %5082, float %5080
  %5095 = select i1 %5085, float %5080, float %5081
  %5096 = select i1 %5083, float %5081, float %5094
  %5097 = select i1 %5083, float %5082, float %5095
  %5098 = call float @dx.op.unary.f32(i32 27, float %5088)  ; Round_ni(value)
  %5099 = call float @dx.op.unary.f32(i32 27, float %5089)  ; Round_ni(value)
  %5100 = fptosi float %5098 to i32
  %5101 = fptosi float %5099 to i32
  %5102 = xor i32 %5101, %5100
  %5103 = sitofp i32 %5102 to float
  %5104 = fptosi float %5103 to i32
  %5105 = sitofp i32 %5104 to float
  %5106 = fmul fast float %5105, 0x3FE3C6EF40000000
  %5107 = frem fast float %5098, 2.560000e+02
  %5108 = frem fast float %5099, 2.560000e+02
  %5109 = fptoui float %5107 to i32
  %5110 = fptoui float %5108 to i32
  %5111 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5109, i32 %5110, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = fadd fast float %5112, %5106
  %5116 = fadd fast float %5113, %5106
  %5117 = fadd fast float %5114, %5106
  %5118 = call float @dx.op.unary.f32(i32 22, float %5115)  ; Frc(value)
  %5119 = call float @dx.op.unary.f32(i32 22, float %5116)  ; Frc(value)
  %5120 = call float @dx.op.unary.f32(i32 22, float %5117)  ; Frc(value)
  %5121 = fmul fast float %5120, 0x401921FB60000000
  %5122 = call float @dx.op.unary.f32(i32 13, float %5121)  ; Sin(value)
  %5123 = call float @dx.op.unary.f32(i32 12, float %5121)  ; Cos(value)
  %5124 = fsub fast float -0.000000e+00, %5123
  %5125 = fmul fast float %5123, %5088
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %5122, float %5089, float %5125)  ; FMad(a,b,c)
  %5127 = fmul fast float %5122, %5088
  %5128 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5089, float %5127)  ; FMad(a,b,c)
  %5129 = fadd fast float %5126, %5118
  %5130 = fadd fast float %5128, %5119
  %5131 = extractvalue %dx.types.CBufRet.f32 %5041, 3
  %5132 = bitcast float %5131 to i32
  %5133 = icmp eq i32 %5132, 0
  br i1 %5133, label %5172, label %5134

; <label>:5134                                    ; preds = %5037
  %5135 = add i32 %5132, 0
  %5136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5137 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5136, %dx.types.Handle %105, float %5129, float %5130, float undef, float undef, i32 0, i32 0, i32 undef, float %5092, float %5093, float undef, float %5096, float %5097, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5138 = extractvalue %dx.types.ResRet.f32 %5137, 0
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5141 = extractvalue %dx.types.CBufRet.f32 %5139, 2
  %5142 = fsub fast float 1.000000e+00, %5031
  %5143 = call float @dx.op.binary.f32(i32 35, float %5142, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5144 = bitcast float %5031 to i32
  %5145 = sitofp i32 %5144 to float
  %5146 = fadd fast float %5145, 0xC1CFBF8940000000
  %5147 = fmul fast float %5141, %5146
  %5148 = fadd fast float %5147, 0x41CFBF8940000000
  %5149 = fptosi float %5148 to i32
  %5150 = bitcast i32 %5149 to float
  %5151 = bitcast float %5143 to i32
  %5152 = sitofp i32 %5151 to float
  %5153 = fadd fast float %5152, 0xC1CFBF8940000000
  %5154 = fmul fast float %5153, %5141
  %5155 = fadd fast float %5154, 0x41CFBF8940000000
  %5156 = fptosi float %5155 to i32
  %5157 = bitcast i32 %5156 to float
  %5158 = fmul fast float %5150, %5140
  %5159 = fmul fast float %5157, %5140
  %5160 = fsub fast float %5143, %5158
  %5161 = fadd fast float %5159, %5143
  %5162 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5164 = fsub fast float %5138, %5162
  %5165 = fsub fast float %5163, %5162
  %5166 = bitcast float %5165 to i32
  %5167 = sub nsw i32 2129859010, %5166
  %5168 = bitcast i32 %5167 to float
  %5169 = fmul fast float %5168, %5164
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = fcmp fast olt float %5170, 0x3F70101020000000
  br i1 %5171, label %5310, label %5172

; <label>:5172                                    ; preds = %5134, %5037
  %5173 = phi float [ %5170, %5134 ], [ %5031, %5037 ]
  %5174 = fmul fast float %5173, %5040
  %5175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.i32 %5175, 1
  %5177 = extractvalue %dx.types.CBufRet.i32 %5175, 0
  %5178 = add i32 %5177, 0
  %5179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5180 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5179, %dx.types.Handle %104, float %5129, float %5130, float undef, float undef, i32 0, i32 0, i32 undef, float %5092, float %5093, float undef, float %5096, float %5097, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5181 = extractvalue %dx.types.ResRet.f32 %5180, 0
  %5182 = extractvalue %dx.types.ResRet.f32 %5180, 1
  %5183 = extractvalue %dx.types.ResRet.f32 %5180, 2
  %5184 = extractvalue %dx.types.ResRet.f32 %5180, 3
  %5185 = and i32 %5176, 255
  %5186 = uitofp i32 %5185 to float
  %5187 = lshr i32 %5176, 8
  %5188 = and i32 %5187, 255
  %5189 = uitofp i32 %5188 to float
  %5190 = fmul fast float %5184, %5186
  %5191 = fadd fast float %5190, %5189
  %5192 = fmul fast float %5191, 0x3F70101000000000
  %5193 = fadd fast float %5192, 0xBFB99999A0000000
  %5194 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5195 = fmul fast float %5194, 0x3FF1C71C80000000
  %5196 = call float @dx.op.binary.f32(i32 36, float %5192, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5197 = fsub fast float 1.000000e+00, %5195
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = fmul fast float %5198, %5181
  %5200 = fmul fast float %5198, %5182
  %5201 = fmul fast float %5198, %5183
  %5202 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5203 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5204 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5205 = fmul fast float %5195, %5181
  %5206 = fmul fast float %5195, %5182
  %5207 = fmul fast float %5195, %5183
  %5208 = fadd fast float %5205, %5196
  %5209 = fadd fast float %5206, %5196
  %5210 = fadd fast float %5207, %5196
  %5211 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5212 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5213 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5215 = extractvalue %dx.types.CBufRet.i32 %5214, 3
  %5216 = extractvalue %dx.types.CBufRet.i32 %5214, 2
  %5217 = add i32 %5216, 0
  %5218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5219 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5218, %dx.types.Handle %104, float %5129, float %5130, float undef, float undef, i32 0, i32 0, i32 undef, float %5092, float %5093, float undef, float %5096, float %5097, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.ResRet.f32 %5219, 2
  %5223 = extractvalue %dx.types.ResRet.f32 %5219, 3
  %5224 = and i32 %5215, 255
  %5225 = uitofp i32 %5224 to float
  %5226 = lshr i32 %5215, 8
  %5227 = and i32 %5226, 255
  %5228 = uitofp i32 %5227 to float
  %5229 = lshr i32 %5215, 16
  %5230 = and i32 %5229, 255
  %5231 = uitofp i32 %5230 to float
  %5232 = fmul fast float %5231, 0x3F70101000000000
  %5233 = fmul fast float %5220, %5225
  %5234 = fadd fast float %5233, %5228
  %5235 = fmul fast float %5234, 0x3F70101000000000
  %5236 = fadd fast float %5221, -5.000000e-01
  %5237 = fadd fast float %5223, -5.000000e-01
  %5238 = fmul fast float %5236, %5232
  %5239 = fmul fast float %5237, %5232
  %5240 = fadd fast float %5238, 5.000000e-01
  %5241 = fadd fast float %5239, 5.000000e-01
  %5242 = fmul fast float %5240, 2.000000e+00
  %5243 = fadd fast float %5242, -1.000000e+00
  %5244 = fmul fast float %5241, 2.000000e+00
  %5245 = fadd fast float %5244, -1.000000e+00
  %5246 = fadd fast float %5243, %5245
  %5247 = fmul fast float %5246, 5.000000e-01
  %5248 = fsub fast float %5243, %5245
  %5249 = fmul fast float %5248, 5.000000e-01
  %5250 = call float @dx.op.unary.f32(i32 6, float %5247)  ; FAbs(value)
  %5251 = fsub fast float 1.000000e+00, %5250
  %5252 = call float @dx.op.unary.f32(i32 6, float %5249)  ; FAbs(value)
  %5253 = fsub fast float %5251, %5252
  %5254 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5249, float %5253, float %5247, float %5249, float %5253)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = call float @dx.op.unary.f32(i32 25, float %5254)  ; Rsqrt(value)
  %5256 = fmul fast float %5247, %5255
  %5257 = fmul fast float %5249, %5255
  %5258 = select i1 %5085, i32 %5075, i32 %5076
  %5259 = select i1 %5083, i32 %5074, i32 %5258
  %5260 = sitofp i32 %5259 to float
  %5261 = fmul fast float %5253, %5260
  %5262 = fmul fast float %5261, %5255
  %5263 = select i1 %5085, float %5262, float %5257
  %5264 = select i1 %5085, float %5257, float %5262
  %5265 = select i1 %5083, float %5262, float %5256
  %5266 = select i1 %5083, float %5257, float %5263
  %5267 = select i1 %5083, float %5256, float %5264
  %5268 = fsub fast float %5202, %4635
  %5269 = fsub fast float %5203, %4636
  %5270 = fsub fast float %5204, %4637
  %5271 = fmul fast float %5268, %5174
  %5272 = fmul fast float %5269, %5174
  %5273 = fmul fast float %5270, %5174
  %5274 = fadd fast float %5271, %4635
  %5275 = fadd fast float %5272, %4636
  %5276 = fadd fast float %5273, %4637
  %5277 = fsub fast float %5211, %4617
  %5278 = fsub fast float %5212, %4618
  %5279 = fsub fast float %5213, %4619
  %5280 = fmul fast float %5277, %5174
  %5281 = fmul fast float %5278, %5174
  %5282 = fmul fast float %5279, %5174
  %5283 = fadd fast float %5280, %4617
  %5284 = fadd fast float %5281, %4618
  %5285 = fadd fast float %5282, %4619
  %5286 = fadd fast float %5265, %4578
  %5287 = fadd fast float %5266, %4579
  %5288 = fadd fast float %5267, %4580
  %5289 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5286, float %5287, float %5288)  ; Dot3(ax,ay,az,bx,by,bz)
  %5290 = call float @dx.op.unary.f32(i32 25, float %5289)  ; Rsqrt(value)
  %5291 = fmul fast float %5286, %5290
  %5292 = fmul fast float %5287, %5290
  %5293 = fmul fast float %5288, %5290
  %5294 = fsub fast float %5291, %4578
  %5295 = fsub fast float %5292, %4579
  %5296 = fsub fast float %5293, %4580
  %5297 = fmul fast float %5294, %5174
  %5298 = fmul fast float %5295, %5174
  %5299 = fmul fast float %5296, %5174
  %5300 = fadd fast float %5297, %4578
  %5301 = fadd fast float %5298, %4579
  %5302 = fadd fast float %5299, %4580
  %5303 = call float @dx.op.binary.f32(i32 36, float %4593, float %5222)  ; FMin(a,b)
  %5304 = fsub fast float %5303, %4593
  %5305 = fmul fast float %5304, %5174
  %5306 = fadd fast float %5305, %4593
  %5307 = fsub fast float %5235, %4620
  %5308 = fmul fast float %5307, %5174
  %5309 = fadd fast float %5308, %4620
  br label %5310

; <label>:5310                                    ; preds = %5172, %5134, %5036
  %5311 = phi float [ %5274, %5172 ], [ %4635, %5134 ], [ %4635, %5036 ]
  %5312 = phi float [ %5275, %5172 ], [ %4636, %5134 ], [ %4636, %5036 ]
  %5313 = phi float [ %5276, %5172 ], [ %4637, %5134 ], [ %4637, %5036 ]
  %5314 = phi float [ %5283, %5172 ], [ %4617, %5134 ], [ %4617, %5036 ]
  %5315 = phi float [ %5284, %5172 ], [ %4618, %5134 ], [ %4618, %5036 ]
  %5316 = phi float [ %5285, %5172 ], [ %4619, %5134 ], [ %4619, %5036 ]
  %5317 = phi float [ %5300, %5172 ], [ %4578, %5134 ], [ %4578, %5036 ]
  %5318 = phi float [ %5301, %5172 ], [ %4579, %5134 ], [ %4579, %5036 ]
  %5319 = phi float [ %5302, %5172 ], [ %4580, %5134 ], [ %4580, %5036 ]
  %5320 = phi float [ %5309, %5172 ], [ %4620, %5134 ], [ %4620, %5036 ]
  %5321 = phi float [ %5306, %5172 ], [ %4593, %5134 ], [ %4593, %5036 ]
  br i1 %5034, label %5322, label %5595

; <label>:5322                                    ; preds = %5310
  %5323 = call float @dx.op.unary.f32(i32 23, float %5321)  ; Log(value)
  %5324 = fmul fast float %5323, 4.000000e+00
  %5325 = call float @dx.op.unary.f32(i32 21, float %5324)  ; Exp(value)
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5328 = fmul fast float %5327, %58
  %5329 = fmul fast float %5327, %59
  %5330 = fmul fast float %5327, %60
  %5331 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %5332 = call float @dx.op.unary.f32(i32 6, float %69)  ; FAbs(value)
  %5333 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %5334 = call float @dx.op.unary.f32(i32 23, float %5331)  ; Log(value)
  %5335 = call float @dx.op.unary.f32(i32 23, float %5332)  ; Log(value)
  %5336 = call float @dx.op.unary.f32(i32 23, float %5333)  ; Log(value)
  %5337 = fmul fast float %5334, 4.000000e+00
  %5338 = fmul fast float %5335, 4.000000e+00
  %5339 = fmul fast float %5336, 4.000000e+00
  %5340 = call float @dx.op.unary.f32(i32 21, float %5337)  ; Exp(value)
  %5341 = call float @dx.op.unary.f32(i32 21, float %5338)  ; Exp(value)
  %5342 = call float @dx.op.unary.f32(i32 21, float %5339)  ; Exp(value)
  %5343 = fadd fast float %5341, %5340
  %5344 = fadd fast float %5343, %5342
  %5345 = fdiv fast float 1.000000e+00, %5344
  %5346 = fmul fast float %5345, %5340
  %5347 = fcmp fast ogt float %68, 0.000000e+00
  %5348 = fcmp fast ogt float %69, 0.000000e+00
  %5349 = fcmp fast ogt float %70, 0.000000e+00
  %5350 = fcmp fast olt float %68, 0.000000e+00
  %5351 = fcmp fast olt float %69, 0.000000e+00
  %5352 = fcmp fast olt float %70, 0.000000e+00
  %5353 = zext i1 %5347 to i32
  %5354 = zext i1 %5348 to i32
  %5355 = zext i1 %5349 to i32
  %5356 = zext i1 %5350 to i32
  %5357 = zext i1 %5351 to i32
  %5358 = zext i1 %5352 to i32
  %5359 = sub nsw i32 %5353, %5356
  %5360 = sub nsw i32 %5354, %5357
  %5361 = sub nsw i32 %5355, %5358
  %5362 = call float @dx.op.unary.f32(i32 83, float %5328)  ; DerivCoarseX(value)
  %5363 = call float @dx.op.unary.f32(i32 83, float %5329)  ; DerivCoarseX(value)
  %5364 = call float @dx.op.unary.f32(i32 83, float %5330)  ; DerivCoarseX(value)
  %5365 = call float @dx.op.unary.f32(i32 84, float %5328)  ; DerivCoarseY(value)
  %5366 = call float @dx.op.unary.f32(i32 84, float %5329)  ; DerivCoarseY(value)
  %5367 = call float @dx.op.unary.f32(i32 84, float %5330)  ; DerivCoarseY(value)
  %5368 = fcmp fast ole float %265, %5346
  %5369 = fmul fast float %5345, %5343
  %5370 = fcmp fast ole float %265, %5369
  %5371 = select i1 %5370, float %5330, float %5328
  %5372 = select i1 %5370, float %5328, float %5329
  %5373 = select i1 %5368, float %5329, float %5371
  %5374 = select i1 %5368, float %5330, float %5372
  %5375 = select i1 %5370, float %5364, float %5362
  %5376 = select i1 %5370, float %5362, float %5363
  %5377 = select i1 %5368, float %5363, float %5375
  %5378 = select i1 %5368, float %5364, float %5376
  %5379 = select i1 %5370, float %5367, float %5365
  %5380 = select i1 %5370, float %5365, float %5366
  %5381 = select i1 %5368, float %5366, float %5379
  %5382 = select i1 %5368, float %5367, float %5380
  %5383 = call float @dx.op.unary.f32(i32 27, float %5373)  ; Round_ni(value)
  %5384 = call float @dx.op.unary.f32(i32 27, float %5374)  ; Round_ni(value)
  %5385 = fptosi float %5383 to i32
  %5386 = fptosi float %5384 to i32
  %5387 = xor i32 %5386, %5385
  %5388 = sitofp i32 %5387 to float
  %5389 = fptosi float %5388 to i32
  %5390 = sitofp i32 %5389 to float
  %5391 = fmul fast float %5390, 0x3FE3C6EF40000000
  %5392 = frem fast float %5383, 2.560000e+02
  %5393 = frem fast float %5384, 2.560000e+02
  %5394 = fptoui float %5392 to i32
  %5395 = fptoui float %5393 to i32
  %5396 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %5394, i32 %5395, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5397 = extractvalue %dx.types.ResRet.f32 %5396, 0
  %5398 = extractvalue %dx.types.ResRet.f32 %5396, 1
  %5399 = extractvalue %dx.types.ResRet.f32 %5396, 2
  %5400 = fadd fast float %5397, %5391
  %5401 = fadd fast float %5398, %5391
  %5402 = fadd fast float %5399, %5391
  %5403 = call float @dx.op.unary.f32(i32 22, float %5400)  ; Frc(value)
  %5404 = call float @dx.op.unary.f32(i32 22, float %5401)  ; Frc(value)
  %5405 = call float @dx.op.unary.f32(i32 22, float %5402)  ; Frc(value)
  %5406 = fmul fast float %5405, 0x401921FB60000000
  %5407 = call float @dx.op.unary.f32(i32 13, float %5406)  ; Sin(value)
  %5408 = call float @dx.op.unary.f32(i32 12, float %5406)  ; Cos(value)
  %5409 = fsub fast float -0.000000e+00, %5408
  %5410 = fmul fast float %5408, %5373
  %5411 = call float @dx.op.tertiary.f32(i32 46, float %5407, float %5374, float %5410)  ; FMad(a,b,c)
  %5412 = fmul fast float %5407, %5373
  %5413 = call float @dx.op.tertiary.f32(i32 46, float %5409, float %5374, float %5412)  ; FMad(a,b,c)
  %5414 = fadd fast float %5411, %5403
  %5415 = fadd fast float %5413, %5404
  %5416 = extractvalue %dx.types.CBufRet.f32 %5326, 3
  %5417 = bitcast float %5416 to i32
  %5418 = icmp eq i32 %5417, 0
  br i1 %5418, label %5457, label %5419

; <label>:5419                                    ; preds = %5322
  %5420 = add i32 %5417, 0
  %5421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5422 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5421, %dx.types.Handle %105, float %5414, float %5415, float undef, float undef, i32 0, i32 0, i32 undef, float %5377, float %5378, float undef, float %5381, float %5382, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5423 = extractvalue %dx.types.ResRet.f32 %5422, 0
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 1
  %5426 = extractvalue %dx.types.CBufRet.f32 %5424, 2
  %5427 = fsub fast float 1.000000e+00, %5032
  %5428 = call float @dx.op.binary.f32(i32 35, float %5427, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5429 = bitcast float %5032 to i32
  %5430 = sitofp i32 %5429 to float
  %5431 = fadd fast float %5430, 0xC1CFBF8940000000
  %5432 = fmul fast float %5426, %5431
  %5433 = fadd fast float %5432, 0x41CFBF8940000000
  %5434 = fptosi float %5433 to i32
  %5435 = bitcast i32 %5434 to float
  %5436 = bitcast float %5428 to i32
  %5437 = sitofp i32 %5436 to float
  %5438 = fadd fast float %5437, 0xC1CFBF8940000000
  %5439 = fmul fast float %5438, %5426
  %5440 = fadd fast float %5439, 0x41CFBF8940000000
  %5441 = fptosi float %5440 to i32
  %5442 = bitcast i32 %5441 to float
  %5443 = fmul fast float %5435, %5425
  %5444 = fmul fast float %5442, %5425
  %5445 = fsub fast float %5428, %5443
  %5446 = fadd fast float %5444, %5428
  %5447 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5448 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5449 = fsub fast float %5423, %5447
  %5450 = fsub fast float %5448, %5447
  %5451 = bitcast float %5450 to i32
  %5452 = sub nsw i32 2129859010, %5451
  %5453 = bitcast i32 %5452 to float
  %5454 = fmul fast float %5453, %5449
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = fcmp fast olt float %5455, 0x3F70101020000000
  br i1 %5456, label %5595, label %5457

; <label>:5457                                    ; preds = %5419, %5322
  %5458 = phi float [ %5455, %5419 ], [ %5032, %5322 ]
  %5459 = fmul fast float %5458, %5325
  %5460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.i32 %5460, 1
  %5462 = extractvalue %dx.types.CBufRet.i32 %5460, 0
  %5463 = add i32 %5462, 0
  %5464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5465 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5464, %dx.types.Handle %104, float %5414, float %5415, float undef, float undef, i32 0, i32 0, i32 undef, float %5377, float %5378, float undef, float %5381, float %5382, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5466 = extractvalue %dx.types.ResRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.ResRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.ResRet.f32 %5465, 2
  %5469 = extractvalue %dx.types.ResRet.f32 %5465, 3
  %5470 = and i32 %5461, 255
  %5471 = uitofp i32 %5470 to float
  %5472 = lshr i32 %5461, 8
  %5473 = and i32 %5472, 255
  %5474 = uitofp i32 %5473 to float
  %5475 = fmul fast float %5469, %5471
  %5476 = fadd fast float %5475, %5474
  %5477 = fmul fast float %5476, 0x3F70101000000000
  %5478 = fadd fast float %5477, 0xBFB99999A0000000
  %5479 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5480 = fmul fast float %5479, 0x3FF1C71C80000000
  %5481 = call float @dx.op.binary.f32(i32 36, float %5477, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5482 = fsub fast float 1.000000e+00, %5480
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = fmul fast float %5483, %5466
  %5485 = fmul fast float %5483, %5467
  %5486 = fmul fast float %5483, %5468
  %5487 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5488 = call float @dx.op.unary.f32(i32 7, float %5485)  ; Saturate(value)
  %5489 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5490 = fmul fast float %5480, %5466
  %5491 = fmul fast float %5480, %5467
  %5492 = fmul fast float %5480, %5468
  %5493 = fadd fast float %5490, %5481
  %5494 = fadd fast float %5491, %5481
  %5495 = fadd fast float %5492, %5481
  %5496 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5497 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5498 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  %5499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.i32 %5499, 3
  %5501 = extractvalue %dx.types.CBufRet.i32 %5499, 2
  %5502 = add i32 %5501, 0
  %5503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5504 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5503, %dx.types.Handle %104, float %5414, float %5415, float undef, float undef, i32 0, i32 0, i32 undef, float %5377, float %5378, float undef, float %5381, float %5382, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5505 = extractvalue %dx.types.ResRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.ResRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.ResRet.f32 %5504, 2
  %5508 = extractvalue %dx.types.ResRet.f32 %5504, 3
  %5509 = and i32 %5500, 255
  %5510 = uitofp i32 %5509 to float
  %5511 = lshr i32 %5500, 8
  %5512 = and i32 %5511, 255
  %5513 = uitofp i32 %5512 to float
  %5514 = lshr i32 %5500, 16
  %5515 = and i32 %5514, 255
  %5516 = uitofp i32 %5515 to float
  %5517 = fmul fast float %5516, 0x3F70101000000000
  %5518 = fmul fast float %5505, %5510
  %5519 = fadd fast float %5518, %5513
  %5520 = fmul fast float %5519, 0x3F70101000000000
  %5521 = fadd fast float %5506, -5.000000e-01
  %5522 = fadd fast float %5508, -5.000000e-01
  %5523 = fmul fast float %5521, %5517
  %5524 = fmul fast float %5522, %5517
  %5525 = fadd fast float %5523, 5.000000e-01
  %5526 = fadd fast float %5524, 5.000000e-01
  %5527 = fmul fast float %5525, 2.000000e+00
  %5528 = fadd fast float %5527, -1.000000e+00
  %5529 = fmul fast float %5526, 2.000000e+00
  %5530 = fadd fast float %5529, -1.000000e+00
  %5531 = fadd fast float %5528, %5530
  %5532 = fmul fast float %5531, 5.000000e-01
  %5533 = fsub fast float %5528, %5530
  %5534 = fmul fast float %5533, 5.000000e-01
  %5535 = call float @dx.op.unary.f32(i32 6, float %5532)  ; FAbs(value)
  %5536 = fsub fast float 1.000000e+00, %5535
  %5537 = call float @dx.op.unary.f32(i32 6, float %5534)  ; FAbs(value)
  %5538 = fsub fast float %5536, %5537
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5534, float %5538, float %5532, float %5534, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = call float @dx.op.unary.f32(i32 25, float %5539)  ; Rsqrt(value)
  %5541 = fmul fast float %5532, %5540
  %5542 = fmul fast float %5534, %5540
  %5543 = select i1 %5370, i32 %5360, i32 %5361
  %5544 = select i1 %5368, i32 %5359, i32 %5543
  %5545 = sitofp i32 %5544 to float
  %5546 = fmul fast float %5538, %5545
  %5547 = fmul fast float %5546, %5540
  %5548 = select i1 %5370, float %5547, float %5542
  %5549 = select i1 %5370, float %5542, float %5547
  %5550 = select i1 %5368, float %5547, float %5541
  %5551 = select i1 %5368, float %5542, float %5548
  %5552 = select i1 %5368, float %5541, float %5549
  %5553 = fsub fast float %5487, %5311
  %5554 = fsub fast float %5488, %5312
  %5555 = fsub fast float %5489, %5313
  %5556 = fmul fast float %5553, %5459
  %5557 = fmul fast float %5554, %5459
  %5558 = fmul fast float %5555, %5459
  %5559 = fadd fast float %5556, %5311
  %5560 = fadd fast float %5557, %5312
  %5561 = fadd fast float %5558, %5313
  %5562 = fsub fast float %5496, %5314
  %5563 = fsub fast float %5497, %5315
  %5564 = fsub fast float %5498, %5316
  %5565 = fmul fast float %5562, %5459
  %5566 = fmul fast float %5563, %5459
  %5567 = fmul fast float %5564, %5459
  %5568 = fadd fast float %5565, %5314
  %5569 = fadd fast float %5566, %5315
  %5570 = fadd fast float %5567, %5316
  %5571 = fadd fast float %5550, %5317
  %5572 = fadd fast float %5551, %5318
  %5573 = fadd fast float %5552, %5319
  %5574 = call float @dx.op.dot3.f32(i32 55, float %5571, float %5572, float %5573, float %5571, float %5572, float %5573)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = call float @dx.op.unary.f32(i32 25, float %5574)  ; Rsqrt(value)
  %5576 = fmul fast float %5571, %5575
  %5577 = fmul fast float %5572, %5575
  %5578 = fmul fast float %5573, %5575
  %5579 = fsub fast float %5576, %5317
  %5580 = fsub fast float %5577, %5318
  %5581 = fsub fast float %5578, %5319
  %5582 = fmul fast float %5579, %5459
  %5583 = fmul fast float %5580, %5459
  %5584 = fmul fast float %5581, %5459
  %5585 = fadd fast float %5582, %5317
  %5586 = fadd fast float %5583, %5318
  %5587 = fadd fast float %5584, %5319
  %5588 = call float @dx.op.binary.f32(i32 36, float %5321, float %5507)  ; FMin(a,b)
  %5589 = fsub fast float %5588, %5321
  %5590 = fmul fast float %5589, %5459
  %5591 = fadd fast float %5590, %5321
  %5592 = fsub fast float %5520, %5320
  %5593 = fmul fast float %5592, %5459
  %5594 = fadd fast float %5593, %5320
  br label %5595

; <label>:5595                                    ; preds = %5457, %5419, %5310, %5026
  %5596 = phi float [ %5559, %5457 ], [ %5311, %5419 ], [ %5311, %5310 ], [ %4635, %5026 ]
  %5597 = phi float [ %5560, %5457 ], [ %5312, %5419 ], [ %5312, %5310 ], [ %4636, %5026 ]
  %5598 = phi float [ %5561, %5457 ], [ %5313, %5419 ], [ %5313, %5310 ], [ %4637, %5026 ]
  %5599 = phi float [ %5568, %5457 ], [ %5314, %5419 ], [ %5314, %5310 ], [ %4617, %5026 ]
  %5600 = phi float [ %5569, %5457 ], [ %5315, %5419 ], [ %5315, %5310 ], [ %4618, %5026 ]
  %5601 = phi float [ %5570, %5457 ], [ %5316, %5419 ], [ %5316, %5310 ], [ %4619, %5026 ]
  %5602 = phi float [ %5585, %5457 ], [ %5317, %5419 ], [ %5317, %5310 ], [ %4578, %5026 ]
  %5603 = phi float [ %5586, %5457 ], [ %5318, %5419 ], [ %5318, %5310 ], [ %4579, %5026 ]
  %5604 = phi float [ %5587, %5457 ], [ %5319, %5419 ], [ %5319, %5310 ], [ %4580, %5026 ]
  %5605 = phi float [ %5594, %5457 ], [ %5320, %5419 ], [ %5320, %5310 ], [ %4620, %5026 ]
  %5606 = phi float [ %5591, %5457 ], [ %5321, %5419 ], [ %5321, %5310 ], [ %4593, %5026 ]
  %5607 = fcmp fast une float %5030, 0.000000e+00
  br i1 %5607, label %5608, label %5777

; <label>:5608                                    ; preds = %5595
  %5609 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = call float @dx.op.unary.f32(i32 25, float %5609)  ; Rsqrt(value)
  %5611 = fmul fast float %195, %5610
  %5612 = fsub fast float -0.000000e+00, %5611
  %5613 = fmul fast float %196, %5610
  %5614 = fsub fast float -0.000000e+00, %5613
  %5615 = fmul fast float %197, %5610
  %5616 = fsub fast float -0.000000e+00, %5615
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5614, float %5616, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = fmul fast float %5030, 2.500000e+00
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = fmul fast float %5030, 0x4013FFFFE0000000
  %5621 = fadd fast float %5620, 0xBFFFFFFFE0000000
  %5622 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  %5623 = fmul fast float %5030, 0x4004000020000000
  %5624 = fadd fast float %5623, 0xBFF8000040000000
  %5625 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5626 = fmul fast float %4599, 1.000000e+01
  %5627 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5628 = fmul fast float %5627, 2.000000e+00
  %5629 = fsub fast float 3.000000e+00, %5628
  %5630 = fmul fast float %5627, %5627
  %5631 = fmul fast float %5630, %5629
  %5632 = fsub fast float 1.000000e+00, %5631
  %5633 = fsub fast float 0x3FE3333340000000, %5605
  %5634 = fmul fast float %5633, 0x400AAAAAA0000000
  %5635 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5636 = fmul fast float %5632, %5635
  %5637 = fmul fast float %5596, 0x3FEA2B8620000000
  %5638 = fmul fast float %5597, 0x3FEA2B8620000000
  %5639 = fmul fast float %5598, 0x3FEA2B8620000000
  %5640 = fadd fast float %5637, 0x3FC81DFBA0000000
  %5641 = fmul fast float %5640, %5596
  %5642 = fadd fast float %5641, 0x3F910E6020000000
  %5643 = fadd fast float %5638, 0x3FC81DFBA0000000
  %5644 = fmul fast float %5643, %5597
  %5645 = fadd fast float %5644, 0x3F910E6020000000
  %5646 = fadd fast float %5639, 0x3FC81DFBA0000000
  %5647 = fmul fast float %5646, %5598
  %5648 = fadd fast float %5647, 0x3F910E6020000000
  %5649 = call float @dx.op.unary.f32(i32 7, float %5642)  ; Saturate(value)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5651 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5652 = fsub fast float %5649, %5596
  %5653 = fsub fast float %5650, %5597
  %5654 = fsub fast float %5651, %5598
  %5655 = fmul fast float %5652, %5619
  %5656 = fmul fast float %5655, %5636
  %5657 = fmul fast float %5653, %5619
  %5658 = fmul fast float %5657, %5636
  %5659 = fmul fast float %5654, %5619
  %5660 = fmul fast float %5659, %5636
  %5661 = fadd fast float %5656, %5596
  %5662 = fadd fast float %5658, %5597
  %5663 = fadd fast float %5660, %5598
  %5664 = fmul fast float %5606, %5606
  %5665 = fmul fast float %5664, %5664
  %5666 = fadd fast float %5622, 1.000000e+00
  %5667 = fsub fast float %5666, %5636
  %5668 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5669 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5671 = fsub fast float 1.000000e+00, %5665
  %5672 = call float @dx.op.binary.f32(i32 36, float %5668, float %5671)  ; FMin(a,b)
  %5673 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5674 = call float @dx.op.binary.f32(i32 35, float %5672, float %5673)  ; FMax(a,b)
  %5675 = fadd fast float %5670, 0xBFE4CCCCC0000000
  %5676 = fmul fast float %5675, 0x4006DB6DA0000000
  %5677 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5678 = fmul fast float %5677, 2.000000e+00
  %5679 = fsub fast float 3.000000e+00, %5678
  %5680 = bitcast float %5599 to i32
  %5681 = ashr i32 %5680, 1
  %5682 = add nsw i32 %5681, 532487669
  %5683 = bitcast i32 %5682 to float
  %5684 = fsub fast float 1.000000e+00, %5683
  %5685 = bitcast float %5684 to i32
  %5686 = sub nsw i32 2129859010, %5685
  %5687 = bitcast i32 %5686 to float
  %5688 = fmul fast float %5687, 2.000000e+00
  %5689 = bitcast float %5600 to i32
  %5690 = ashr i32 %5689, 1
  %5691 = add nsw i32 %5690, 532487669
  %5692 = bitcast i32 %5691 to float
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = bitcast float %5693 to i32
  %5695 = sub nsw i32 2129859010, %5694
  %5696 = bitcast i32 %5695 to float
  %5697 = fmul fast float %5696, 2.000000e+00
  %5698 = bitcast float %5601 to i32
  %5699 = ashr i32 %5698, 1
  %5700 = add nsw i32 %5699, 532487669
  %5701 = bitcast i32 %5700 to float
  %5702 = fsub fast float 1.000000e+00, %5701
  %5703 = bitcast float %5702 to i32
  %5704 = sub nsw i32 2129859010, %5703
  %5705 = bitcast i32 %5704 to float
  %5706 = fmul fast float %5705, 2.000000e+00
  %5707 = fsub fast float 0x4002A9FBE0000000, %5688
  %5708 = fadd fast float %5688, 0x3FD54FDF00000000
  %5709 = bitcast float %5708 to i32
  %5710 = sub nsw i32 2129859010, %5709
  %5711 = bitcast i32 %5710 to float
  %5712 = fmul fast float %5711, %5707
  %5713 = fmul fast float %5712, %5712
  %5714 = fsub fast float 0x4002A9FBE0000000, %5697
  %5715 = fadd fast float %5697, 0x3FD54FDF00000000
  %5716 = bitcast float %5715 to i32
  %5717 = sub nsw i32 2129859010, %5716
  %5718 = bitcast i32 %5717 to float
  %5719 = fmul fast float %5718, %5714
  %5720 = fmul fast float %5719, %5719
  %5721 = fsub fast float 0x4002A9FBE0000000, %5706
  %5722 = fadd fast float %5706, 0x3FD54FDF00000000
  %5723 = bitcast float %5722 to i32
  %5724 = sub nsw i32 2129859010, %5723
  %5725 = bitcast i32 %5724 to float
  %5726 = fmul fast float %5725, %5721
  %5727 = fmul fast float %5726, %5726
  %5728 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5713)  ; FMax(a,b)
  %5729 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5720)  ; FMax(a,b)
  %5730 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5727)  ; FMax(a,b)
  %5731 = fsub fast float 1.000000e+00, %5617
  %5732 = fadd fast float %5731, %5632
  %5733 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5734 = fsub fast float 1.000000e+00, %5011
  %5735 = fmul fast float %5674, %5734
  %5736 = fmul fast float %5677, %5677
  %5737 = fmul fast float %5736, %5735
  %5738 = fmul fast float %5737, %5679
  %5739 = fmul fast float %5734, 0xBFE99999A0000000
  %5740 = fmul fast float %5739, %5619
  %5741 = fmul fast float %5740, %5636
  %5742 = fadd fast float %5741, 1.000000e+00
  %5743 = fadd fast float %5605, -1.000000e+00
  %5744 = fmul fast float %5742, %5743
  %5745 = fadd fast float %5744, 1.000000e+00
  %5746 = fsub fast float %5728, %5599
  %5747 = fsub fast float %5729, %5600
  %5748 = fsub fast float %5730, %5601
  %5749 = fmul fast float %5738, %5746
  %5750 = fmul fast float %5738, %5747
  %5751 = fmul fast float %5738, %5748
  %5752 = fadd fast float %5749, %5599
  %5753 = fadd fast float %5750, %5600
  %5754 = fadd fast float %5751, %5601
  %5755 = fsub fast float %115, %5602
  %5756 = fsub fast float %116, %5603
  %5757 = fsub fast float %117, %5604
  %5758 = fmul fast float %5738, %5755
  %5759 = fmul fast float %5738, %5756
  %5760 = fmul fast float %5738, %5757
  %5761 = fadd fast float %5758, %5602
  %5762 = fadd fast float %5759, %5603
  %5763 = fadd fast float %5760, %5604
  %5764 = fmul fast float %5738, %5733
  %5765 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = fmul fast float %5764, %5766
  %5768 = fadd fast float %5767, %5765
  %5769 = fsub fast float 1.000000e+00, %5606
  %5770 = fmul fast float %5738, %5769
  %5771 = fadd fast float %5770, %5606
  %5772 = call float @dx.op.dot3.f32(i32 55, float %5761, float %5762, float %5763, float %5761, float %5762, float %5763)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = call float @dx.op.unary.f32(i32 25, float %5772)  ; Rsqrt(value)
  %5774 = fmul fast float %5761, %5773
  %5775 = fmul fast float %5762, %5773
  %5776 = fmul fast float %5763, %5773
  br label %5777

; <label>:5777                                    ; preds = %5608, %5595
  %5778 = phi float [ %5661, %5608 ], [ %5596, %5595 ]
  %5779 = phi float [ %5662, %5608 ], [ %5597, %5595 ]
  %5780 = phi float [ %5663, %5608 ], [ %5598, %5595 ]
  %5781 = phi float [ %5752, %5608 ], [ %5599, %5595 ]
  %5782 = phi float [ %5753, %5608 ], [ %5600, %5595 ]
  %5783 = phi float [ %5754, %5608 ], [ %5601, %5595 ]
  %5784 = phi float [ %5774, %5608 ], [ %5602, %5595 ]
  %5785 = phi float [ %5775, %5608 ], [ %5603, %5595 ]
  %5786 = phi float [ %5776, %5608 ], [ %5604, %5595 ]
  %5787 = phi float [ %5768, %5608 ], [ %5605, %5595 ]
  %5788 = phi float [ %5771, %5608 ], [ %5606, %5595 ]
  %5789 = icmp eq i32 %56, 0
  br i1 %5789, label %5820, label %5790

; <label>:5790                                    ; preds = %5777
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 3
  %5794 = fmul fast float %5792, %108
  %5795 = fmul fast float %5793, %109
  %5796 = fmul fast float %5794, 1.024000e+03
  %5797 = fmul fast float %5795, 1.024000e+03
  %5798 = fadd fast float %5796, -5.120000e+02
  %5799 = fadd fast float %5797, -5.120000e+02
  %5800 = fmul fast float %5794, 0x4081BEDF00000000
  %5801 = fadd fast float %5800, 0xC071BEDF00000000
  %5802 = call float @dx.op.unary.f32(i32 22, float %5801)  ; Frc(value)
  %5803 = fmul fast float %5798, %5802
  %5804 = fadd fast float %5803, %5799
  %5805 = fmul fast float %5795, 0x4073BEBE20000000
  %5806 = fadd fast float %5805, 0xC063BEBE20000000
  %5807 = call float @dx.op.unary.f32(i32 22, float %5806)  ; Frc(value)
  %5808 = fmul fast float %5799, %5807
  %5809 = fadd fast float %5808, %5798
  %5810 = fmul fast float %5804, %5809
  %5811 = call float @dx.op.unary.f32(i32 22, float %5810)  ; Frc(value)
  %5812 = add i32 %308, 12
  %5813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5812, i32 undef)  ; BufferLoad(srv,index,wot)
  %5814 = extractvalue %dx.types.ResRet.i32 %5813, 0
  %5815 = and i32 %5814, 255
  %5816 = uitofp i32 %5815 to float
  %5817 = fmul fast float %5816, 0x3F70101020000000
  %5818 = fcmp fast olt float %5811, %5817
  br i1 %5818, label %5819, label %5820

; <label>:5819                                    ; preds = %5790
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5820

; <label>:5820                                    ; preds = %5819, %5790, %5777
  %5821 = fsub fast float -0.000000e+00, %197
  %5822 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = call float @dx.op.unary.f32(i32 25, float %5822)  ; Rsqrt(value)
  %5824 = fmul fast float %5823, %195
  %5825 = fmul fast float %5823, %196
  %5826 = fmul fast float %5823, %197
  %5827 = fsub fast float -0.000000e+00, %5824
  %5828 = fsub fast float -0.000000e+00, %5825
  %5829 = fsub fast float -0.000000e+00, %5826
  %5830 = select i1 %254, float 0.000000e+00, float %5783
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5784, float %5785, float %5786, float %5827, float %5828, float %5829)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  %5833 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %5826, float %5784, float %5785, float %5786)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = fmul fast float %5833, 2.000000e+00
  %5835 = fmul fast float %5834, %5784
  %5836 = fmul fast float %5834, %5785
  %5837 = fmul fast float %5834, %5786
  %5838 = fsub fast float %5824, %5835
  %5839 = fsub fast float %5825, %5836
  %5840 = fsub fast float %5826, %5837
  %5841 = call float @dx.op.binary.f32(i32 36, float %5788, float 1.000000e+00)  ; FMin(a,b)
  %5842 = fsub fast float 1.000000e+00, %5788
  %5843 = bitcast float %5842 to i32
  %5844 = sub nsw i32 2129859010, %5843
  %5845 = bitcast i32 %5844 to float
  %5846 = fsub fast float 1.000000e+00, %79
  %5847 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = call float @dx.op.binary.f32(i32 35, float %5847, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5849 = fdiv fast float %5846, %5848
  %5850 = call float @dx.op.dot3.f32(i32 55, float %5784, float %5785, float %5786, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5851 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  %5852 = fmul fast float %5851, 5.000000e-01
  %5853 = fadd fast float %5852, 5.000000e-01
  %5854 = fmul fast float %5853, %79
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5784, float %5785, float %5786, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = call float @dx.op.unary.f32(i32 7, float %5855)  ; Saturate(value)
  %5857 = fmul fast float %5856, %5849
  %5858 = fadd fast float %5854, %5857
  %5859 = fsub fast float 5.000000e-01, %5852
  %5860 = fmul fast float %5859, %5778
  %5861 = fmul fast float %5859, %5779
  %5862 = fmul fast float %5859, %5780
  %5863 = fadd fast float %5858, %5860
  %5864 = fadd fast float %5858, %5861
  %5865 = fadd fast float %5858, %5862
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5838, float %5839, float %5840, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = fmul fast float %5867, 5.000000e-01
  %5869 = fadd fast float %5868, 5.000000e-01
  %5870 = fmul fast float %5869, %79
  %5871 = call float @dx.op.dot3.f32(i32 55, float %5838, float %5839, float %5840, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5872 = call float @dx.op.unary.f32(i32 7, float %5871)  ; Saturate(value)
  %5873 = fmul fast float %5872, %5849
  %5874 = fadd fast float %5870, %5873
  %5875 = fsub fast float 5.000000e-01, %5868
  %5876 = fmul fast float %5875, %5778
  %5877 = fmul fast float %5875, %5779
  %5878 = fmul fast float %5875, %5780
  %5879 = fadd fast float %5874, %5876
  %5880 = fadd fast float %5874, %5877
  %5881 = fadd fast float %5874, %5878
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = call float @dx.op.binary.f32(i32 36, float %5778, float %5883)  ; FMin(a,b)
  %5885 = fsub fast float 1.000000e+00, %5841
  %5886 = fmul fast float %5884, %5885
  %5887 = fsub fast float 1.000000e+00, %5886
  %5888 = bitcast float %5887 to i32
  %5889 = sub nsw i32 2129859010, %5888
  %5890 = bitcast i32 %5889 to float
  %5891 = call float @dx.op.binary.f32(i32 36, float %5779, float %5883)  ; FMin(a,b)
  %5892 = fmul fast float %5891, %5885
  %5893 = fsub fast float 1.000000e+00, %5892
  %5894 = bitcast float %5893 to i32
  %5895 = sub nsw i32 2129859010, %5894
  %5896 = bitcast i32 %5895 to float
  %5897 = call float @dx.op.binary.f32(i32 36, float %5780, float %5883)  ; FMin(a,b)
  %5898 = fmul fast float %5897, %5885
  %5899 = fsub fast float 1.000000e+00, %5898
  %5900 = bitcast float %5899 to i32
  %5901 = sub nsw i32 2129859010, %5900
  %5902 = bitcast i32 %5901 to float
  %5903 = fmul fast float %5841, %80
  %5904 = fmul fast float %5903, %5863
  %5905 = fmul fast float %5904, %5890
  %5906 = fmul fast float %5841, %81
  %5907 = fmul fast float %5906, %5864
  %5908 = fmul fast float %5907, %5896
  %5909 = fmul fast float %5841, %82
  %5910 = fmul fast float %5909, %5865
  %5911 = fmul fast float %5910, %5902
  %5912 = call float @dx.op.binary.f32(i32 36, float %5781, float %5883)  ; FMin(a,b)
  %5913 = fmul fast float %5912, %5885
  %5914 = fsub fast float 1.000000e+00, %5913
  %5915 = bitcast float %5914 to i32
  %5916 = sub nsw i32 2129859010, %5915
  %5917 = bitcast i32 %5916 to float
  %5918 = call float @dx.op.binary.f32(i32 36, float %5782, float %5883)  ; FMin(a,b)
  %5919 = fmul fast float %5918, %5885
  %5920 = fsub fast float 1.000000e+00, %5919
  %5921 = bitcast float %5920 to i32
  %5922 = sub nsw i32 2129859010, %5921
  %5923 = bitcast i32 %5922 to float
  %5924 = call float @dx.op.binary.f32(i32 36, float %5830, float %5883)  ; FMin(a,b)
  %5925 = fmul fast float %5924, %5885
  %5926 = fsub fast float 1.000000e+00, %5925
  %5927 = bitcast float %5926 to i32
  %5928 = sub nsw i32 2129859010, %5927
  %5929 = bitcast i32 %5928 to float
  %5930 = fmul fast float %5903, %5879
  %5931 = fmul fast float %5930, %5917
  %5932 = fmul fast float %5906, %5880
  %5933 = fmul fast float %5932, %5923
  %5934 = fmul fast float %5909, %5881
  %5935 = fmul fast float %5934, %5929
  %5936 = call float @dx.op.dot3.f32(i32 55, float %5905, float %5908, float %5911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = select i1 %254, float 0.000000e+00, float %5905
  %5938 = select i1 %254, float %5936, float %5908
  %5939 = select i1 %254, float 0.000000e+00, float %5911
  %5940 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5933, float %5935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5941 = select i1 %254, float 0.000000e+00, float %5931
  %5942 = select i1 %254, float %5940, float %5933
  %5943 = select i1 %254, float 0.000000e+00, float %5935
  %5944 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %5945 = fmul fast float %5944, %5937
  %5946 = fmul fast float %5944, %5938
  %5947 = fmul fast float %5939, %5944
  %5948 = fmul fast float %3999, %3999
  %5949 = call float @dx.op.unary.f32(i32 7, float %5948)  ; Saturate(value)
  %5950 = fmul fast float %5832, 9.843750e-01
  %5951 = fmul fast float %5787, 9.843750e-01
  %5952 = fadd fast float %5950, 7.812500e-03
  %5953 = fadd fast float %5951, 7.812500e-03
  %5954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %5952, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.ResRet.f32 %5954, 1
  %5957 = extractvalue %dx.types.ResRet.f32 %5954, 2
  %5958 = extractvalue %dx.types.ResRet.f32 %5954, 3
  %5959 = fsub fast float 1.000000e+00, %5949
  %5960 = fsub fast float %5957, %5955
  %5961 = fsub fast float %5958, %5956
  %5962 = fmul fast float %5960, %5959
  %5963 = fmul fast float %5961, %5959
  %5964 = fadd fast float %5962, %5955
  %5965 = fadd fast float %5963, %5956
  %5966 = fmul fast float %5964, %5781
  %5967 = fmul fast float %5964, %5782
  %5968 = fmul fast float %5964, %5830
  %5969 = fadd fast float %5966, %5965
  %5970 = fadd fast float %5967, %5965
  %5971 = fadd fast float %5968, %5965
  %5972 = fcmp fast ogt float %4594, 0.000000e+00
  br i1 %5972, label %5973, label %5999

; <label>:5973                                    ; preds = %5820
  %5974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4594, float %5832, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5975 = extractvalue %dx.types.ResRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.ResRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.ResRet.f32 %5974, 2
  %5978 = fadd fast float %5975, -5.000000e-01
  %5979 = fadd fast float %5976, -5.000000e-01
  %5980 = fadd fast float %5977, -5.000000e-01
  %5981 = fsub fast float 1.000000e+00, %5781
  %5982 = fsub fast float 1.000000e+00, %5782
  %5983 = fsub fast float 1.000000e+00, %5830
  %5984 = fmul fast float %5781, 4.000000e+00
  %5985 = fmul fast float %5984, %5981
  %5986 = fmul fast float %5985, %5978
  %5987 = fmul fast float %5782, 4.000000e+00
  %5988 = fmul fast float %5987, %5982
  %5989 = fmul fast float %5988, %5979
  %5990 = fmul fast float %5830, 4.000000e+00
  %5991 = fmul fast float %5990, %5983
  %5992 = fmul fast float %5991, %5980
  %5993 = fadd fast float %5986, %5969
  %5994 = fadd fast float %5989, %5970
  %5995 = fadd fast float %5992, %5971
  %5996 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5997 = call float @dx.op.unary.f32(i32 7, float %5994)  ; Saturate(value)
  %5998 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  br label %5999

; <label>:5999                                    ; preds = %5973, %5820
  %6000 = phi float [ %5996, %5973 ], [ %5969, %5820 ]
  %6001 = phi float [ %5997, %5973 ], [ %5970, %5820 ]
  %6002 = phi float [ %5998, %5973 ], [ %5971, %5820 ]
  %6003 = call float @dx.op.binary.f32(i32 35, float %6001, float %6002)  ; FMax(a,b)
  %6004 = call float @dx.op.binary.f32(i32 35, float %6000, float %6003)  ; FMax(a,b)
  %6005 = fsub fast float 1.000000e+00, %6004
  %6006 = fmul fast float %195, %195
  %6007 = fmul fast float %196, %196
  %6008 = fadd fast float %6007, %6006
  %6009 = fmul fast float %197, %197
  %6010 = fadd fast float %6008, %6009
  %6011 = call float @dx.op.unary.f32(i32 24, float %6010)  ; Sqrt(value)
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 1
  %6014 = fsub fast float %6011, %6013
  %6015 = extractvalue %dx.types.CBufRet.f32 %6012, 2
  %6016 = fmul fast float %6014, %6015
  %6017 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6012, 0
  %6019 = extractvalue %dx.types.CBufRet.f32 %6012, 3
  %6020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %6021 = extractvalue %dx.types.ResRet.i32 %6020, 0
  %6022 = and i32 %6021, 4194304
  %6023 = icmp ne i32 %6022, 0
  %6024 = and i32 %6021, 8388608
  %6025 = icmp ne i32 %6024, 0
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = extractvalue %dx.types.CBufRet.f32 %6026, 2
  %6030 = extractvalue %dx.types.CBufRet.f32 %6026, 3
  %6031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6031, 0
  %6033 = extractvalue %dx.types.CBufRet.f32 %6031, 1
  %6034 = extractvalue %dx.types.CBufRet.f32 %6031, 2
  %6035 = extractvalue %dx.types.CBufRet.f32 %6031, 3
  %6036 = select i1 %6023, float %6027, float %6032
  %6037 = select i1 %6023, float %6028, float %6033
  %6038 = select i1 %6023, float %6029, float %6034
  %6039 = select i1 %6023, float %6030, float %6035
  %6040 = select i1 %6025, float 0.000000e+00, float %6039
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 0
  %6043 = extractvalue %dx.types.CBufRet.f32 %6041, 1
  %6044 = select i1 %6023, float %6042, float %6043
  %6045 = select i1 %6025, float 0.000000e+00, float %6044
  %6046 = extractvalue %dx.types.CBufRet.f32 %6041, 2
  %6047 = extractvalue %dx.types.CBufRet.f32 %6041, 3
  %6048 = select i1 %6023, float %6046, float %6047
  %6049 = select i1 %6025, float 0.000000e+00, float %6048
  %6050 = fmul fast float %6017, %61
  %6051 = fmul fast float %6050, %6018
  %6052 = fmul fast float %6051, %6045
  %6053 = fmul fast float %6050, %6019
  %6054 = fmul fast float %6053, %6049
  %6055 = fadd fast float %6054, 1.000000e+00
  %6056 = fmul fast float %6005, %5945
  %6057 = fmul fast float %6056, %6055
  %6058 = fmul fast float %6005, %5946
  %6059 = fmul fast float %6058, %6055
  %6060 = fmul fast float %6005, %5947
  %6061 = fmul fast float %6060, %6055
  %6062 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5779, float %5780, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = fcmp fast ogt float %6062, 0x3E7FF19E20000000
  %6064 = fdiv fast float 1.000000e+00, %6062
  %6065 = select i1 %6063, float %6064, float 0.000000e+00
  %6066 = fmul fast float %6065, %5778
  %6067 = fmul fast float %6065, %5779
  %6068 = fmul fast float %6065, %5780
  %6069 = fadd fast float %6066, -1.000000e+00
  %6070 = fadd fast float %6067, -1.000000e+00
  %6071 = fadd fast float %6068, -1.000000e+00
  %6072 = fmul fast float %6069, 5.000000e-01
  %6073 = fmul fast float %6070, 5.000000e-01
  %6074 = fmul fast float %6071, 5.000000e-01
  %6075 = fadd fast float %6072, 1.000000e+00
  %6076 = fadd fast float %6073, 1.000000e+00
  %6077 = fadd fast float %6074, 1.000000e+00
  %6078 = fadd fast float %6052, %4595
  %6079 = fsub fast float %6036, %6075
  %6080 = fsub fast float %6037, %6076
  %6081 = fsub fast float %6038, %6077
  %6082 = fmul fast float %6079, %6040
  %6083 = fmul fast float %6080, %6040
  %6084 = fmul fast float %6081, %6040
  %6085 = fadd fast float %6082, %6075
  %6086 = fadd fast float %6083, %6076
  %6087 = fadd fast float %6084, %6077
  %6088 = call float @dx.op.binary.f32(i32 35, float %5832, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6089 = fdiv fast float %3999, %6088
  %6090 = fcmp fast olt float %4621, 1.270000e+02
  %6091 = fcmp fast olt float %4622, 1.270000e+02
  %6092 = fcmp fast olt float %4623, 1.270000e+02
  %6093 = fmul fast float %4621, 0xBFF7154760000000
  %6094 = fmul fast float %6093, %6089
  %6095 = fmul fast float %4622, 0xBFF7154760000000
  %6096 = fmul fast float %6095, %6089
  %6097 = fmul fast float %4623, 0xBFF7154760000000
  %6098 = fmul fast float %6097, %6089
  %6099 = call float @dx.op.unary.f32(i32 21, float %6094)  ; Exp(value)
  %6100 = call float @dx.op.unary.f32(i32 21, float %6096)  ; Exp(value)
  %6101 = call float @dx.op.unary.f32(i32 21, float %6098)  ; Exp(value)
  %6102 = call float @dx.op.unary.f32(i32 7, float %6099)  ; Saturate(value)
  %6103 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  %6104 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6105 = select i1 %6090, float %6102, float 0.000000e+00
  %6106 = select i1 %6091, float %6103, float 0.000000e+00
  %6107 = select i1 %6092, float %6104, float 0.000000e+00
  %6108 = fmul fast float %6105, %6005
  %6109 = fmul fast float %6106, %6005
  %6110 = fmul fast float %6107, %6005
  %6111 = fadd fast float %6108, -1.000000e+00
  %6112 = fadd fast float %6109, -1.000000e+00
  %6113 = fadd fast float %6110, -1.000000e+00
  %6114 = fmul fast float %6000, %5941
  %6115 = fmul fast float %6001, %5942
  %6116 = fmul fast float %6002, %5943
  %6117 = fsub fast float 1.000000e+00, %5832
  %6118 = bitcast float %6117 to i32
  %6119 = sitofp i32 %6118 to float
  %6120 = fmul fast float %6119, 5.000000e+00
  %6121 = fadd fast float %6120, 0xC1EFBF8940000000
  %6122 = fptosi float %6121 to i32
  %6123 = bitcast i32 %6122 to float
  %6124 = fmul fast float %6078, %6123
  %6125 = fmul fast float %6056, %6124
  %6126 = fmul fast float %6125, %6085
  %6127 = fmul fast float %6058, %6124
  %6128 = fmul fast float %6127, %6086
  %6129 = fmul fast float %6060, %6124
  %6130 = fmul fast float %6129, %6087
  %6131 = fmul fast float %6057, %4591
  %6132 = fmul fast float %6059, %4591
  %6133 = fmul fast float %6061, %4591
  %6134 = fadd fast float %6114, %4581
  %6135 = fadd fast float %6134, %6126
  %6136 = fmul fast float %6135, %4591
  %6137 = fadd fast float %6115, %4582
  %6138 = fadd fast float %6137, %6128
  %6139 = fmul fast float %6138, %4591
  %6140 = fadd fast float %6116, %4583
  %6141 = fadd fast float %6140, %6130
  %6142 = fmul fast float %6141, %4591
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 3
  %6145 = fcmp fast oeq float %6144, 0.000000e+00
  br i1 %6145, label %7242, label %6146

; <label>:6146                                    ; preds = %5999
  %6147 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6148 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6149 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.f32 %6150, 0
  %6152 = extractvalue %dx.types.CBufRet.f32 %6150, 1
  %6153 = extractvalue %dx.types.CBufRet.f32 %6150, 2
  %6154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6155 = extractvalue %dx.types.CBufRet.f32 %6154, 0
  %6156 = extractvalue %dx.types.CBufRet.f32 %6154, 1
  %6157 = call float @dx.op.dot3.f32(i32 55, float %6151, float %6152, float %6153, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6158 = select i1 %254, float %6155, float %6151
  %6159 = select i1 %254, float %6157, float %6152
  %6160 = select i1 %254, float %6156, float %6153
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 2
  %6163 = fmul fast float %6162, %115
  %6164 = fmul fast float %6162, %116
  %6165 = fmul fast float %6162, %117
  %6166 = fadd fast float %6163, %195
  %6167 = fadd fast float %6164, %196
  %6168 = fadd fast float %6165, %197
  %6169 = fcmp fast olt float %6144, 0.000000e+00
  br i1 %6169, label %6809, label %6170

; <label>:6170                                    ; preds = %6146
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.CBufRet.f32 %6171, 1
  %6174 = extractvalue %dx.types.CBufRet.f32 %6171, 2
  %6175 = extractvalue %dx.types.CBufRet.f32 %6171, 3
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = extractvalue %dx.types.CBufRet.f32 %6176, 2
  %6180 = extractvalue %dx.types.CBufRet.f32 %6176, 3
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = extractvalue %dx.types.CBufRet.f32 %6181, 1
  %6184 = extractvalue %dx.types.CBufRet.f32 %6181, 2
  %6185 = extractvalue %dx.types.CBufRet.f32 %6181, 3
  %6186 = fmul fast float %6172, %6166
  %6187 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6173, float %6186)  ; FMad(a,b,c)
  %6188 = call float @dx.op.tertiary.f32(i32 46, float %6168, float %6174, float %6187)  ; FMad(a,b,c)
  %6189 = fadd fast float %6188, %6175
  %6190 = fmul fast float %6177, %6166
  %6191 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6178, float %6190)  ; FMad(a,b,c)
  %6192 = call float @dx.op.tertiary.f32(i32 46, float %6168, float %6179, float %6191)  ; FMad(a,b,c)
  %6193 = fadd fast float %6192, %6180
  %6194 = fmul fast float %6182, %6166
  %6195 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6183, float %6194)  ; FMad(a,b,c)
  %6196 = call float @dx.op.tertiary.f32(i32 46, float %6168, float %6184, float %6195)  ; FMad(a,b,c)
  %6197 = fadd fast float %6196, %6185
  %6198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6199 = extractvalue %dx.types.CBufRet.f32 %6198, 0
  %6200 = fcmp fast une float %6199, 0.000000e+00
  %6201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6202 = extractvalue %dx.types.CBufRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.CBufRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.CBufRet.f32 %6201, 3
  %6205 = fmul fast float %6204, %6189
  %6206 = fmul fast float %6204, %6193
  %6207 = fadd fast float %6205, %6202
  %6208 = fadd fast float %6206, %6203
  %6209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.f32 %6209, 0
  %6211 = extractvalue %dx.types.CBufRet.f32 %6209, 1
  %6212 = extractvalue %dx.types.CBufRet.f32 %6209, 3
  %6213 = fmul fast float %6212, %6189
  %6214 = fmul fast float %6212, %6193
  %6215 = fadd fast float %6213, %6210
  %6216 = fadd fast float %6214, %6211
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 1
  %6219 = fsub fast float %6218, %6197
  %6220 = extractvalue %dx.types.CBufRet.f32 %6217, 2
  %6221 = fmul fast float %6219, %6220
  %6222 = fsub fast float 1.000000e+00, %6221
  %6223 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  br i1 %6200, label %6284, label %6224

; <label>:6224                                    ; preds = %6170
  %6225 = extractvalue %dx.types.CBufRet.f32 %6209, 2
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %6228 = fadd fast float %6227, %6225
  %6229 = fcmp fast ogt float %6228, 0.000000e+00
  br i1 %6229, label %6230, label %6254

; <label>:6230                                    ; preds = %6224
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.CBufRet.f32 %6231, 1
  %6234 = fsub fast float %6215, %6232
  %6235 = fsub fast float %6216, %6233
  %6236 = fcmp fast olt float %6234, 0.000000e+00
  %6237 = fcmp fast olt float %6235, 0.000000e+00
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6241 = extractvalue %dx.types.CBufRet.f32 %6238, 2
  %6242 = extractvalue %dx.types.CBufRet.f32 %6238, 3
  %6243 = select i1 %6236, float %6239, float %6241
  %6244 = select i1 %6237, float %6240, float %6242
  %6245 = fmul fast float %6243, %6234
  %6246 = fmul fast float %6244, %6235
  %6247 = call float @dx.op.unary.f32(i32 6, float %6245)  ; FAbs(value)
  %6248 = call float @dx.op.unary.f32(i32 6, float %6246)  ; FAbs(value)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6250 = call float @dx.op.binary.f32(i32 35, float %6247, float %6248)  ; FMax(a,b)
  %6251 = fsub fast float %6249, %6250
  %6252 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6253 = fmul fast float %6252, %6223
  br label %6254

; <label>:6254                                    ; preds = %6230, %6224
  %6255 = phi float [ %6253, %6230 ], [ 0.000000e+00, %6224 ]
  %6256 = extractvalue %dx.types.CBufRet.f32 %6201, 2
  %6257 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6258 = fadd fast float %6257, %6256
  %6259 = fcmp fast ogt float %6258, 0.000000e+00
  br i1 %6259, label %6260, label %6284

; <label>:6260                                    ; preds = %6254
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.CBufRet.f32 %6261, 1
  %6264 = fsub fast float %6207, %6262
  %6265 = fsub fast float %6208, %6263
  %6266 = fcmp fast olt float %6264, 0.000000e+00
  %6267 = fcmp fast olt float %6265, 0.000000e+00
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.CBufRet.f32 %6268, 2
  %6272 = extractvalue %dx.types.CBufRet.f32 %6268, 3
  %6273 = select i1 %6266, float %6269, float %6271
  %6274 = select i1 %6267, float %6270, float %6272
  %6275 = fmul fast float %6273, %6264
  %6276 = fmul fast float %6274, %6265
  %6277 = call float @dx.op.unary.f32(i32 6, float %6275)  ; FAbs(value)
  %6278 = call float @dx.op.unary.f32(i32 6, float %6276)  ; FAbs(value)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6280 = call float @dx.op.binary.f32(i32 35, float %6277, float %6278)  ; FMax(a,b)
  %6281 = fsub fast float %6279, %6280
  %6282 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  %6283 = fmul fast float %6282, %6223
  br label %6284

; <label>:6284                                    ; preds = %6260, %6254, %6170
  %6285 = phi float [ 0.000000e+00, %6170 ], [ %6283, %6260 ], [ 0.000000e+00, %6254 ]
  %6286 = phi float [ 0.000000e+00, %6170 ], [ %6255, %6260 ], [ %6255, %6254 ]
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6289 = call float @dx.op.unary.f32(i32 7, float %6288)  ; Saturate(value)
  %6290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6290, 0
  %6292 = extractvalue %dx.types.CBufRet.f32 %6290, 1
  %6293 = fsub fast float %6189, %6291
  %6294 = fsub fast float %6193, %6292
  %6295 = fcmp fast olt float %6293, 0.000000e+00
  %6296 = fcmp fast olt float %6294, 0.000000e+00
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.CBufRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.CBufRet.f32 %6297, 2
  %6301 = extractvalue %dx.types.CBufRet.f32 %6297, 3
  %6302 = select i1 %6295, float %6298, float %6300
  %6303 = select i1 %6296, float %6299, float %6301
  %6304 = fmul fast float %6302, %6293
  %6305 = fmul fast float %6303, %6294
  %6306 = call float @dx.op.unary.f32(i32 6, float %6304)  ; FAbs(value)
  %6307 = call float @dx.op.unary.f32(i32 6, float %6305)  ; FAbs(value)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6309 = call float @dx.op.binary.f32(i32 35, float %6306, float %6307)  ; FMax(a,b)
  %6310 = fsub fast float %6308, %6309
  %6311 = call float @dx.op.unary.f32(i32 7, float %6310)  ; Saturate(value)
  %6312 = call float @dx.op.binary.f32(i32 36, float %6311, float %6289)  ; FMin(a,b)
  %6313 = fmul fast float %6312, %6223
  %6314 = fsub fast float %6285, %6313
  %6315 = fsub fast float %6286, %6285
  %6316 = fsub fast float %6315, %6313
  %6317 = call float @dx.op.binary.f32(i32 35, float %6313, float %6285)  ; FMax(a,b)
  %6318 = call float @dx.op.binary.f32(i32 35, float %6317, float %6286)  ; FMax(a,b)
  %6319 = fcmp fast olt float %6318, 1.000000e+00
  br i1 %6319, label %6320, label %6718, !dx.controlflow.hints !100

; <label>:6320                                    ; preds = %6284
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %6323 = fcmp fast une float %6322, 0.000000e+00
  br i1 %6323, label %6324, label %6718, !dx.controlflow.hints !101

; <label>:6324                                    ; preds = %6320
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6329 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %6333 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6334 = extractvalue %dx.types.CBufRet.f32 %6330, 3
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  %6337 = extractvalue %dx.types.CBufRet.f32 %6335, 1
  %6338 = extractvalue %dx.types.CBufRet.f32 %6335, 2
  %6339 = extractvalue %dx.types.CBufRet.f32 %6335, 3
  %6340 = fmul fast float %6326, %6166
  %6341 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6327, float %6340)  ; FMad(a,b,c)
  %6342 = call float @dx.op.tertiary.f32(i32 46, float %6168, float %6328, float %6341)  ; FMad(a,b,c)
  %6343 = fadd fast float %6342, %6329
  %6344 = fmul fast float %6331, %6166
  %6345 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6332, float %6344)  ; FMad(a,b,c)
  %6346 = call float @dx.op.tertiary.f32(i32 46, float %6168, float %6333, float %6345)  ; FMad(a,b,c)
  %6347 = fadd fast float %6346, %6334
  %6348 = fmul fast float %6336, %6166
  %6349 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6337, float %6348)  ; FMad(a,b,c)
  %6350 = call float @dx.op.tertiary.f32(i32 46, float %6168, float %6338, float %6349)  ; FMad(a,b,c)
  %6351 = fadd fast float %6350, %6339
  %6352 = fcmp fast oge float %6343, 1.000000e+00
  %6353 = fcmp fast oge float %6347, 1.000000e+00
  %6354 = or i1 %6352, %6353
  %6355 = fcmp fast olt float %6343, 0.000000e+00
  %6356 = fcmp fast olt float %6347, 0.000000e+00
  %6357 = or i1 %6355, %6356
  %6358 = or i1 %6354, %6357
  br i1 %6358, label %6718, label %6359, !dx.controlflow.hints !102

; <label>:6359                                    ; preds = %6324
  %6360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.f32 %6360, 0
  %6362 = extractvalue %dx.types.CBufRet.f32 %6360, 1
  %6363 = extractvalue %dx.types.CBufRet.f32 %6360, 2
  %6364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6365 = extractvalue %dx.types.CBufRet.i32 %6364, 2
  %6366 = uitofp i32 %6365 to float
  %6367 = extractvalue %dx.types.CBufRet.i32 %6364, 3
  %6368 = uitofp i32 %6367 to float
  %6369 = extractvalue %dx.types.CBufRet.f32 %6360, 3
  %6370 = fmul fast float %6369, 2.000000e+00
  %6371 = fsub fast float %6343, %6361
  %6372 = fsub fast float %6347, %6362
  %6373 = fmul fast float %6370, %6371
  %6374 = fmul fast float %6370, %6372
  %6375 = fdiv fast float 1.000000e+00, %6149
  %6376 = fmul fast float %6374, %6375
  %6377 = call float @dx.op.unary.f32(i32 6, float %6376)  ; FAbs(value)
  %6378 = fmul fast float %6363, %6168
  %6379 = fmul fast float %6378, %6370
  %6380 = call float @dx.op.unary.f32(i32 6, float %6379)  ; FAbs(value)
  %6381 = call float @dx.op.unary.f32(i32 6, float %6373)  ; FAbs(value)
  %6382 = call float @dx.op.binary.f32(i32 35, float %6381, float %6380)  ; FMax(a,b)
  %6383 = call float @dx.op.binary.f32(i32 35, float %6382, float %6377)  ; FMax(a,b)
  %6384 = fmul fast float %6383, 2.000000e+00
  %6385 = call float @dx.op.unary.f32(i32 23, float %6384)  ; Log(value)
  %6386 = call float @dx.op.binary.f32(i32 35, float %6385, float %6366)  ; FMax(a,b)
  %6387 = call float @dx.op.unary.f32(i32 22, float %6386)  ; Frc(value)
  %6388 = fadd fast float %6387, 0xBFEA666660000000
  %6389 = fmul fast float %6388, 8.000000e+00
  %6390 = call float @dx.op.unary.f32(i32 7, float %6389)  ; Saturate(value)
  %6391 = call float @dx.op.unary.f32(i32 27, float %6386)  ; Round_ni(value)
  %6392 = fadd fast float %6391, %6390
  %6393 = call float @dx.op.binary.f32(i32 36, float %6392, float %6368)  ; FMin(a,b)
  %6394 = call float @dx.op.unary.f32(i32 27, float %6393)  ; Round_ni(value)
  %6395 = fsub fast float -0.000000e+00, %6394
  %6396 = call float @dx.op.unary.f32(i32 21, float %6395)  ; Exp(value)
  %6397 = fmul fast float %6396, %6370
  %6398 = fmul fast float %6397, %6343
  %6399 = fmul fast float %6397, %6347
  %6400 = fmul fast float %6398, 2.500000e-01
  %6401 = fmul fast float %6399, 2.500000e-01
  %6402 = fadd fast float %6400, 5.000000e-01
  %6403 = fadd fast float %6401, 5.000000e-01
  %6404 = fsub fast float %6368, %6366
  %6405 = fptoui float %6404 to i32
  %6406 = add i32 %6405, 320
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %6406)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.CBufRet.f32 %6407, 1
  %6410 = fcmp fast une float %6393, %6368
  %6411 = fsub fast float %6343, %6408
  %6412 = fsub fast float %6347, %6409
  %6413 = call float @dx.op.unary.f32(i32 6, float %6411)  ; FAbs(value)
  %6414 = call float @dx.op.unary.f32(i32 6, float %6412)  ; FAbs(value)
  %6415 = fmul fast float %6413, %6397
  %6416 = fmul fast float %6414, %6397
  %6417 = fcmp fast olt float %6415, 1.000000e+00
  %6418 = fcmp fast olt float %6416, 1.000000e+00
  %6419 = and i1 %6417, %6418
  %6420 = or i1 %6410, %6419
  br i1 %6420, label %6421, label %6718, !dx.controlflow.hints !103

; <label>:6421                                    ; preds = %6359
  %6422 = fmul fast float %6399, 5.000000e-01
  %6423 = fmul fast float %6398, 5.000000e-01
  %6424 = fadd fast float %6422, 5.000000e-01
  %6425 = fadd fast float %6423, 5.000000e-01
  %6426 = sitofp i32 %6365 to float
  %6427 = fsub fast float %6393, %6426
  %6428 = call float @dx.op.unary.f32(i32 27, float %6427)  ; Round_ni(value)
  %6429 = call float @dx.op.unary.f32(i32 22, float %6393)  ; Frc(value)
  %6430 = call float @dx.op.unary.f32(i32 22, float %6425)  ; Frc(value)
  %6431 = call float @dx.op.unary.f32(i32 22, float %6424)  ; Frc(value)
  %6432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6430, float %6431, float %6428, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.ResRet.f32 %6432, 1
  %6435 = extractvalue %dx.types.ResRet.f32 %6432, 2
  %6436 = extractvalue %dx.types.ResRet.f32 %6432, 3
  %6437 = fcmp fast ogt float %6429, 0.000000e+00
  br i1 %6437, label %6438, label %6459, !dx.controlflow.hints !104

; <label>:6438                                    ; preds = %6421
  %6439 = fadd fast float %6428, 1.000000e+00
  %6440 = call float @dx.op.unary.f32(i32 22, float %6402)  ; Frc(value)
  %6441 = call float @dx.op.unary.f32(i32 22, float %6403)  ; Frc(value)
  %6442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %48, float %6440, float %6441, float %6439, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6443 = extractvalue %dx.types.ResRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.ResRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.ResRet.f32 %6442, 2
  %6446 = extractvalue %dx.types.ResRet.f32 %6442, 3
  %6447 = fsub fast float %6443, %6433
  %6448 = fsub fast float %6444, %6434
  %6449 = fsub fast float %6445, %6435
  %6450 = fsub fast float %6446, %6436
  %6451 = fmul fast float %6447, %6429
  %6452 = fmul fast float %6448, %6429
  %6453 = fmul fast float %6449, %6429
  %6454 = fmul fast float %6450, %6429
  %6455 = fadd fast float %6451, %6433
  %6456 = fadd fast float %6452, %6434
  %6457 = fadd fast float %6453, %6435
  %6458 = fadd fast float %6454, %6436
  br label %6459

; <label>:6459                                    ; preds = %6438, %6421
  %6460 = phi float [ %6455, %6438 ], [ %6433, %6421 ]
  %6461 = phi float [ %6456, %6438 ], [ %6434, %6421 ]
  %6462 = phi float [ %6457, %6438 ], [ %6435, %6421 ]
  %6463 = phi float [ %6458, %6438 ], [ %6436, %6421 ]
  %6464 = fadd fast float %6460, -5.000000e-01
  %6465 = fadd fast float %6462, -5.000000e-01
  %6466 = fmul fast float %6464, 0xBFD5555560000000
  %6467 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6465, float %6466)  ; FMad(a,b,c)
  %6468 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6461, float 0.000000e+00)  ; FMad(a,b,c)
  %6469 = fadd fast float %6468, %6463
  %6470 = fmul fast float %6464, -7.500000e-01
  %6471 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6465, float %6470)  ; FMad(a,b,c)
  %6472 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6461, float 0.000000e+00)  ; FMad(a,b,c)
  %6473 = fadd fast float %6472, %6463
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 0
  %6476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6477 = extractvalue %dx.types.CBufRet.f32 %6476, 0
  %6478 = extractvalue %dx.types.CBufRet.f32 %6476, 1
  %6479 = extractvalue %dx.types.CBufRet.f32 %6476, 2
  %6480 = extractvalue %dx.types.CBufRet.f32 %6476, 3
  %6481 = fsub fast float %6477, %6467
  %6482 = fsub fast float %6478, %6469
  %6483 = fsub fast float %6479, %6471
  %6484 = fsub fast float %6480, %6473
  %6485 = fmul fast float %6481, %6475
  %6486 = fmul fast float %6482, %6475
  %6487 = fmul fast float %6483, %6475
  %6488 = fmul fast float %6484, %6475
  %6489 = fadd fast float %6485, %6467
  %6490 = fadd fast float %6486, %6469
  %6491 = fadd fast float %6487, %6471
  %6492 = fadd fast float %6488, %6473
  %6493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6494 = extractvalue %dx.types.ResRet.i32 %6493, 0
  %6495 = and i32 %6494, 536870911
  %6496 = uitofp i32 %6495 to float
  %6497 = fmul fast float %6496, %6343
  %6498 = fmul fast float %6496, %6347
  %6499 = fptoui float %6497 to i32
  %6500 = fptoui float %6498 to i32
  %6501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6502 = extractvalue %dx.types.ResRet.i32 %6501, 0
  %6503 = and i32 %6502, 31
  %6504 = lshr i32 %6499, %6503
  %6505 = lshr i32 %6500, %6503
  %6506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6507 = extractvalue %dx.types.ResRet.i32 %6506, 0
  %6508 = and i32 %6507, 31
  %6509 = shl i32 1, %6508
  %6510 = call i32 @dx.op.binary.i32(i32 40, i32 %6509, i32 4)  ; UMin(a,b)
  %6511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6512 = extractvalue %dx.types.ResRet.i32 %6511, 0
  %6513 = extractvalue %dx.types.ResRet.i32 %6511, 1
  %6514 = icmp eq i32 %6510, 0
  br i1 %6514, label %6556, label %6515

; <label>:6515                                    ; preds = %6459
  br label %6516

; <label>:6516                                    ; preds = %6544, %6515
  %6517 = phi i32 [ %6547, %6544 ], [ 0, %6515 ]
  %6518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6519 = extractvalue %dx.types.ResRet.i32 %6518, 0
  %6520 = lshr i32 %6519, 16
  %6521 = and i32 %6520, 31
  %6522 = shl i32 %6505, %6521
  %6523 = add i32 %6522, %6504
  %6524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6525 = extractvalue %dx.types.ResRet.i32 %6524, 0
  %6526 = and i32 %6525, 31
  %6527 = shl i32 %6523, %6526
  %6528 = add i32 %6527, %6517
  %6529 = shl i32 %6528, 2
  %6530 = add i32 %6529, 32
  %6531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6530, i32 undef)  ; BufferLoad(srv,index,wot)
  %6532 = extractvalue %dx.types.ResRet.i32 %6531, 0
  %6533 = icmp slt i32 %6532, 0
  %6534 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6517
  %6535 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6517
  %6536 = bitcast float* %6534 to i32*
  %6537 = bitcast float* %6535 to i32*
  br i1 %6533, label %6538, label %6544

; <label>:6538                                    ; preds = %6516
  %6539 = and i32 %6532, 1073741823
  %6540 = add nuw nsw i32 %6539, 20
  %6541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6540, i32 undef)  ; BufferLoad(srv,index,wot)
  %6542 = extractvalue %dx.types.ResRet.i32 %6541, 0
  %6543 = extractvalue %dx.types.ResRet.i32 %6541, 1
  br label %6544

; <label>:6544                                    ; preds = %6538, %6516
  %6545 = phi i32 [ %6542, %6538 ], [ %6512, %6516 ]
  %6546 = phi i32 [ %6543, %6538 ], [ %6513, %6516 ]
  store i32 %6545, i32* %6536, align 4
  store i32 %6546, i32* %6537, align 4
  %6547 = add nuw i32 %6517, 1
  %6548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.i32 %6548, 2
  %6550 = icmp eq i32 %6549, 0
  %6551 = icmp ugt i32 %6532, -1073741825
  %6552 = and i1 %6551, %6550
  %6553 = icmp ult i32 %6547, %6510
  %6554 = and i1 %6552, %6553
  br i1 %6554, label %6516, label %6555

; <label>:6555                                    ; preds = %6544
  br label %6556

; <label>:6556                                    ; preds = %6555, %6459
  %6557 = phi i32 [ 0, %6459 ], [ %6547, %6555 ]
  %6558 = extractvalue %dx.types.CBufRet.f32 %6321, 2
  %6559 = fptoui float %6558 to i32
  %6560 = icmp eq i32 %6559, 0
  br i1 %6560, label %6612, label %6561

; <label>:6561                                    ; preds = %6556
  br label %6562

; <label>:6562                                    ; preds = %6607, %6561
  %6563 = phi i32 [ %6608, %6607 ], [ %6557, %6561 ]
  %6564 = phi i32 [ %6609, %6607 ], [ 0, %6561 ]
  %6565 = lshr i32 %6564, 2
  %6566 = and i32 %6564, 3
  %6567 = add nuw nsw i32 %6565, 83
  %6568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 %6567)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.i32 %6568, 0
  %6570 = extractvalue %dx.types.CBufRet.i32 %6568, 1
  %6571 = extractvalue %dx.types.CBufRet.i32 %6568, 2
  %6572 = extractvalue %dx.types.CBufRet.i32 %6568, 3
  %6573 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 0
  store i32 %6569, i32* %6573, align 4
  %6574 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 1
  store i32 %6570, i32* %6574, align 4
  %6575 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 2
  store i32 %6571, i32* %6575, align 4
  %6576 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 3
  store i32 %6572, i32* %6576, align 4
  %6577 = getelementptr inbounds [4 x i32], [4 x i32]* %54, i32 0, i32 %6566
  %6578 = load i32, i32* %6577, align 4, !tbaa !105, !noalias !109
  %6579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6580 = extractvalue %dx.types.ResRet.i32 %6579, 0
  %6581 = lshr i32 %6580, 16
  %6582 = and i32 %6581, 31
  %6583 = shl i32 %6505, %6582
  %6584 = add i32 %6583, %6504
  %6585 = shl i32 %6584, 2
  %6586 = add i32 %6585, %6578
  %6587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6586, i32 undef)  ; BufferLoad(srv,index,wot)
  %6588 = extractvalue %dx.types.ResRet.i32 %6587, 0
  %6589 = icmp eq i32 %6588, 0
  br i1 %6589, label %6607, label %6590

; <label>:6590                                    ; preds = %6562
  %6591 = icmp slt i32 %6588, 0
  %6592 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6563
  %6593 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6563
  %6594 = bitcast float* %6592 to i32*
  %6595 = bitcast float* %6593 to i32*
  br i1 %6591, label %6596, label %6603

; <label>:6596                                    ; preds = %6590
  %6597 = and i32 %6588, 1073741823
  %6598 = add i32 %6578, 20
  %6599 = add i32 %6598, %6597
  %6600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6599, i32 undef)  ; BufferLoad(srv,index,wot)
  %6601 = extractvalue %dx.types.ResRet.i32 %6600, 0
  %6602 = extractvalue %dx.types.ResRet.i32 %6600, 1
  br label %6603

; <label>:6603                                    ; preds = %6596, %6590
  %6604 = phi i32 [ %6601, %6596 ], [ %6512, %6590 ]
  %6605 = phi i32 [ %6602, %6596 ], [ %6513, %6590 ]
  store i32 %6604, i32* %6594, align 4
  store i32 %6605, i32* %6595, align 4
  %6606 = add i32 %6563, 1
  br label %6607

; <label>:6607                                    ; preds = %6603, %6562
  %6608 = phi i32 [ %6563, %6562 ], [ %6606, %6603 ]
  %6609 = add nuw i32 %6564, 1
  %6610 = icmp eq i32 %6609, %6559
  br i1 %6610, label %6611, label %6562

; <label>:6611                                    ; preds = %6607
  br label %6612

; <label>:6612                                    ; preds = %6611, %6556
  %6613 = phi i32 [ %6557, %6556 ], [ %6608, %6611 ]
  %6614 = icmp eq i32 %6613, 1
  %6615 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6616 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6614, label %6617, label %6620

; <label>:6617                                    ; preds = %6612
  %6618 = load float, float* %6615, align 4
  %6619 = load float, float* %6616, align 4
  br label %6647

; <label>:6620                                    ; preds = %6612
  %6621 = load float, float* %6615, align 4
  %6622 = load float, float* %6616, align 4
  %6623 = fdiv fast float 1.000000e+00, %6622
  %6624 = fsub fast float %6621, %6623
  %6625 = icmp ugt i32 %6613, 1
  br i1 %6625, label %6626, label %6642

; <label>:6626                                    ; preds = %6620
  br label %6627

; <label>:6627                                    ; preds = %6627, %6626
  %6628 = phi float [ %6637, %6627 ], [ %6624, %6626 ]
  %6629 = phi float [ %6638, %6627 ], [ %6621, %6626 ]
  %6630 = phi i32 [ %6639, %6627 ], [ 1, %6626 ]
  %6631 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6630
  %6632 = load float, float* %6631, align 4
  %6633 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6630
  %6634 = load float, float* %6633, align 4
  %6635 = fdiv fast float 1.000000e+00, %6634
  %6636 = fsub fast float %6632, %6635
  %6637 = call float @dx.op.binary.f32(i32 36, float %6628, float %6636)  ; FMin(a,b)
  %6638 = call float @dx.op.binary.f32(i32 35, float %6629, float %6632)  ; FMax(a,b)
  %6639 = add nuw i32 %6630, 1
  %6640 = icmp eq i32 %6639, %6613
  br i1 %6640, label %6641, label %6627

; <label>:6641                                    ; preds = %6627
  br label %6642

; <label>:6642                                    ; preds = %6641, %6620
  %6643 = phi float [ %6624, %6620 ], [ %6637, %6641 ]
  %6644 = phi float [ %6621, %6620 ], [ %6638, %6641 ]
  %6645 = fsub fast float %6644, %6643
  %6646 = fdiv fast float 1.000000e+00, %6645
  br label %6647

; <label>:6647                                    ; preds = %6642, %6617
  %6648 = phi float [ %6618, %6617 ], [ %6644, %6642 ]
  %6649 = phi float [ %6619, %6617 ], [ %6646, %6642 ]
  %6650 = fadd fast float %6351, %6648
  %6651 = fmul fast float %6650, %6649
  %6652 = call float @dx.op.unary.f32(i32 7, float %6651)  ; Saturate(value)
  %6653 = fmul fast float %6652, 2.000000e+00
  %6654 = fsub fast float 1.000000e+00, %6653
  %6655 = fmul fast float %6489, %6489
  %6656 = fsub fast float %6490, %6655
  %6657 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6656)  ; FMax(a,b)
  %6658 = fdiv fast float 1.000000e+00, %6657
  %6659 = fmul fast float %6490, %6489
  %6660 = fsub fast float %6491, %6659
  %6661 = fsub fast float %6654, %6489
  %6662 = fmul fast float %6654, %6654
  %6663 = fsub fast float %6662, %6490
  %6664 = fmul fast float %6658, %6660
  %6665 = fmul fast float %6664, %6661
  %6666 = fsub fast float %6663, %6665
  %6667 = fmul fast float %6490, %6490
  %6668 = fsub fast float %6492, %6667
  %6669 = fmul fast float %6660, %6660
  %6670 = fmul fast float %6669, %6658
  %6671 = fsub fast float %6668, %6670
  %6672 = fdiv fast float %6666, %6671
  %6673 = fmul fast float %6672, %6660
  %6674 = fsub fast float %6661, %6673
  %6675 = fmul fast float %6674, %6658
  %6676 = fmul fast float %6675, %6489
  %6677 = fsub fast float 1.000000e+00, %6676
  %6678 = fmul fast float %6672, %6490
  %6679 = fsub fast float %6677, %6678
  %6680 = fmul fast float %6675, %6675
  %6681 = fmul fast float %6672, 4.000000e+00
  %6682 = fmul fast float %6681, %6679
  %6683 = fsub fast float %6680, %6682
  %6684 = call float @dx.op.unary.f32(i32 24, float %6683)  ; Sqrt(value)
  %6685 = fcmp fast oge float %6675, 0.000000e+00
  %6686 = fsub fast float -0.000000e+00, %6684
  %6687 = select i1 %6685, float %6686, float %6684
  %6688 = fsub fast float %6687, %6675
  %6689 = fdiv fast float %6688, %6672
  %6690 = fdiv fast float %6679, %6688
  %6691 = fmul fast float %6689, 5.000000e-01
  %6692 = fmul fast float %6690, 2.000000e+00
  %6693 = select i1 %6685, float %6691, float %6692
  %6694 = select i1 %6685, float %6692, float %6691
  %6695 = call float @dx.op.binary.f32(i32 35, float %6693, float %6694)  ; FMax(a,b)
  %6696 = call float @dx.op.binary.f32(i32 36, float %6693, float %6694)  ; FMin(a,b)
  %6697 = fcmp fast ogt float %6654, %6695
  %6698 = fsub fast float %6654, %6696
  %6699 = fsub fast float %6654, %6695
  %6700 = fsub fast float %6695, %6696
  %6701 = select i1 %6697, float %6699, float %6700
  %6702 = fmul float %6698, %6701
  %6703 = select i1 %6697, float %6696, float %6654
  %6704 = fcmp fast ogt float %6654, %6696
  %6705 = fmul fast float %6703, %6695
  %6706 = fadd fast float %6703, %6695
  %6707 = fmul fast float %6706, %6489
  %6708 = fadd fast float %6705, %6490
  %6709 = fsub fast float %6708, %6707
  %6710 = fdiv fast float %6709, %6702
  %6711 = select i1 %6704, float %6710, float 0.000000e+00
  %6712 = fsub fast float 1.000000e+00, %6711
  %6713 = select i1 %6697, float %6712, float %6711
  %6714 = call float @dx.op.unary.f32(i32 7, float %6713)  ; Saturate(value)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6474, 3
  %6716 = fmul fast float %6715, %6714
  %6717 = fsub fast float 1.000000e+00, %6716
  br label %6718

; <label>:6718                                    ; preds = %6647, %6359, %6324, %6320, %6284
  %6719 = phi float [ 1.000000e+00, %6284 ], [ %6717, %6647 ], [ 1.000000e+00, %6324 ], [ 1.000000e+00, %6359 ], [ 1.000000e+00, %6320 ]
  %6720 = fcmp fast ogt float %6316, 0.000000e+00
  br i1 %6720, label %6721, label %6729, !dx.controlflow.hints !118

; <label>:6721                                    ; preds = %6718
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 2
  %6724 = fadd fast float %6723, %6197
  %6725 = call float @dx.op.binary.f32(i32 35, float %6724, float 0.000000e+00)  ; FMax(a,b)
  %6726 = fadd fast float %6725, 0x3F10000000000000
  %6727 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %51, float %6215, float %6216, float undef, float undef, i32 0, i32 0, i32 undef, float %6726)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6728 = extractvalue %dx.types.ResRet.f32 %6727, 0
  br label %6729

; <label>:6729                                    ; preds = %6721, %6718
  %6730 = phi float [ %6728, %6721 ], [ 1.000000e+00, %6718 ]
  %6731 = fcmp fast ogt float %6314, 0.000000e+00
  br i1 %6731, label %6732, label %6740, !dx.controlflow.hints !119

; <label>:6732                                    ; preds = %6729
  %6733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6734 = extractvalue %dx.types.CBufRet.f32 %6733, 1
  %6735 = fadd fast float %6734, %6197
  %6736 = call float @dx.op.binary.f32(i32 35, float %6735, float 0.000000e+00)  ; FMax(a,b)
  %6737 = fadd fast float %6736, 0x3F10000000000000
  %6738 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %51, float %6207, float %6208, float undef, float undef, i32 0, i32 0, i32 undef, float %6737)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6739 = extractvalue %dx.types.ResRet.f32 %6738, 0
  br label %6740

; <label>:6740                                    ; preds = %6732, %6729
  %6741 = phi float [ %6739, %6732 ], [ 1.000000e+00, %6729 ]
  %6742 = fcmp fast ogt float %6313, 0.000000e+00
  br i1 %6742, label %6743, label %6755, !dx.controlflow.hints !120

; <label>:6743                                    ; preds = %6740
  %6744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6745 = extractvalue %dx.types.CBufRet.f32 %6744, 0
  %6746 = fadd fast float %6745, %6197
  %6747 = call float @dx.op.binary.f32(i32 35, float %6746, float 0.000000e+00)  ; FMax(a,b)
  %6748 = fadd fast float %6747, 0x3F10000000000000
  br i1 %6200, label %6749, label %6752, !dx.controlflow.hints !121

; <label>:6749                                    ; preds = %6743
  %6750 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %51, float %6189, float %6193, float undef, float undef, i32 0, i32 0, i32 undef, float %6748)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6751 = extractvalue %dx.types.ResRet.f32 %6750, 0
  br label %6755

; <label>:6752                                    ; preds = %6743
  %6753 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %51, float %6189, float %6193, float undef, float undef, i32 0, i32 0, i32 undef, float %6748)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6754 = extractvalue %dx.types.ResRet.f32 %6753, 0
  br label %6755

; <label>:6755                                    ; preds = %6752, %6749, %6740
  %6756 = phi float [ %6751, %6749 ], [ %6754, %6752 ], [ 1.000000e+00, %6740 ]
  %6757 = fsub fast float %6730, %6719
  %6758 = fmul fast float %6757, %6286
  %6759 = fadd fast float %6758, %6719
  %6760 = fsub fast float %6741, %6759
  %6761 = fmul fast float %6760, %6285
  %6762 = fadd fast float %6761, %6759
  %6763 = fsub fast float %6756, %6762
  %6764 = fmul fast float %6763, %6313
  %6765 = fadd fast float %6764, %6762
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 2
  %6768 = fcmp fast ogt float %6767, 0.000000e+00
  br i1 %6768, label %6769, label %6809, !dx.controlflow.hints !122

; <label>:6769                                    ; preds = %6755
  %6770 = fcmp fast ugt float %6767, 0.000000e+00
  br i1 %6770, label %6771, label %6806

; <label>:6771                                    ; preds = %6769
  %6772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6773 = extractvalue %dx.types.CBufRet.f32 %6772, 0
  %6774 = extractvalue %dx.types.CBufRet.f32 %6772, 1
  %6775 = extractvalue %dx.types.CBufRet.f32 %6772, 2
  %6776 = extractvalue %dx.types.CBufRet.f32 %6772, 3
  %6777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6778 = extractvalue %dx.types.CBufRet.f32 %6777, 0
  %6779 = extractvalue %dx.types.CBufRet.f32 %6777, 1
  %6780 = extractvalue %dx.types.CBufRet.f32 %6777, 2
  %6781 = extractvalue %dx.types.CBufRet.f32 %6777, 3
  %6782 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6783 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6784, 0
  %6786 = extractvalue %dx.types.CBufRet.f32 %6784, 1
  %6787 = extractvalue %dx.types.CBufRet.f32 %6784, 2
  %6788 = fadd fast float %6785, %6166
  %6789 = fadd fast float %6786, %6167
  %6790 = fadd fast float %6787, %6168
  %6791 = fmul fast float %6788, %6773
  %6792 = call float @dx.op.tertiary.f32(i32 46, float %6774, float %6789, float %6791)  ; FMad(a,b,c)
  %6793 = call float @dx.op.tertiary.f32(i32 46, float %6775, float %6790, float %6792)  ; FMad(a,b,c)
  %6794 = fadd fast float %6793, %6776
  %6795 = fmul fast float %6788, %6778
  %6796 = call float @dx.op.tertiary.f32(i32 46, float %6779, float %6789, float %6795)  ; FMad(a,b,c)
  %6797 = call float @dx.op.tertiary.f32(i32 46, float %6780, float %6790, float %6796)  ; FMad(a,b,c)
  %6798 = fadd fast float %6797, %6781
  %6799 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %46, float %6794, float %6798, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6800 = extractvalue %dx.types.ResRet.f32 %6799, 0
  %6801 = fmul fast float %6800, %6783
  %6802 = fadd fast float %6801, %6782
  %6803 = call float @dx.op.unary.f32(i32 7, float %6802)  ; Saturate(value)
  %6804 = fmul fast float %6803, %6767
  %6805 = fsub fast float 1.000000e+00, %6804
  br label %6806

; <label>:6806                                    ; preds = %6771, %6769
  %6807 = phi float [ %6805, %6771 ], [ 1.000000e+00, %6769 ]
  %6808 = fmul fast float %6807, %6765
  br label %6809

; <label>:6809                                    ; preds = %6806, %6755, %6146
  %6810 = phi float [ 1.000000e+00, %6146 ], [ %6808, %6806 ], [ %6765, %6755 ]
  %6811 = call float @dx.op.binary.f32(i32 36, float %6810, float %6810)  ; FMin(a,b)
  %6812 = call float @dx.op.binary.f32(i32 36, float %6810, float %6811)  ; FMin(a,b)
  %6813 = fcmp fast ogt float %6812, 0.000000e+00
  br i1 %6813, label %6814, label %6974, !dx.controlflow.hints !123

; <label>:6814                                    ; preds = %6809
  %6815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6815, 0
  %6817 = extractvalue %dx.types.CBufRet.f32 %6815, 1
  %6818 = extractvalue %dx.types.CBufRet.f32 %6815, 2
  %6819 = extractvalue %dx.types.CBufRet.f32 %6815, 3
  %6820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6821 = extractvalue %dx.types.CBufRet.f32 %6820, 0
  %6822 = extractvalue %dx.types.CBufRet.f32 %6820, 1
  %6823 = extractvalue %dx.types.CBufRet.f32 %6820, 2
  %6824 = extractvalue %dx.types.CBufRet.f32 %6820, 3
  %6825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6826 = extractvalue %dx.types.CBufRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.CBufRet.f32 %6825, 1
  %6828 = extractvalue %dx.types.CBufRet.f32 %6825, 2
  %6829 = extractvalue %dx.types.CBufRet.f32 %6825, 3
  %6830 = fmul fast float %6816, %6166
  %6831 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6817, float %6830)  ; FMad(a,b,c)
  %6832 = call float @dx.op.tertiary.f32(i32 46, float %6168, float %6818, float %6831)  ; FMad(a,b,c)
  %6833 = fadd fast float %6832, %6819
  %6834 = fmul fast float %6821, %6166
  %6835 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6822, float %6834)  ; FMad(a,b,c)
  %6836 = call float @dx.op.tertiary.f32(i32 46, float %6168, float %6823, float %6835)  ; FMad(a,b,c)
  %6837 = fadd fast float %6836, %6824
  %6838 = fmul fast float %6826, %6166
  %6839 = call float @dx.op.tertiary.f32(i32 46, float %6167, float %6827, float %6838)  ; FMad(a,b,c)
  %6840 = call float @dx.op.tertiary.f32(i32 46, float %6168, float %6828, float %6839)  ; FMad(a,b,c)
  %6841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.CBufRet.f32 %6841, 1
  %6844 = extractvalue %dx.types.CBufRet.f32 %6841, 3
  %6845 = fmul fast float %6844, %6833
  %6846 = fmul fast float %6844, %6837
  %6847 = fadd fast float %6845, %6842
  %6848 = fadd fast float %6846, %6843
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6851 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6852 = fsub fast float %6847, %6850
  %6853 = fsub fast float %6848, %6851
  %6854 = fcmp fast olt float %6852, 0.000000e+00
  %6855 = fcmp fast olt float %6853, 0.000000e+00
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 0
  %6858 = extractvalue %dx.types.CBufRet.f32 %6856, 1
  %6859 = extractvalue %dx.types.CBufRet.f32 %6856, 2
  %6860 = extractvalue %dx.types.CBufRet.f32 %6856, 3
  %6861 = select i1 %6854, float %6857, float %6859
  %6862 = select i1 %6855, float %6858, float %6860
  %6863 = fmul fast float %6861, %6852
  %6864 = fmul fast float %6862, %6853
  %6865 = call float @dx.op.unary.f32(i32 6, float %6863)  ; FAbs(value)
  %6866 = call float @dx.op.unary.f32(i32 6, float %6864)  ; FAbs(value)
  %6867 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6868 = call float @dx.op.binary.f32(i32 35, float %6865, float %6866)  ; FMax(a,b)
  %6869 = fsub fast float %6867, %6868
  %6870 = call float @dx.op.unary.f32(i32 7, float %6869)  ; Saturate(value)
  %6871 = fcmp fast ogt float %6870, 0.000000e+00
  br i1 %6871, label %6872, label %6913, !dx.controlflow.hints !124

; <label>:6872                                    ; preds = %6814
  %6873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %49, float %6847, float %6848, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6874 = extractvalue %dx.types.ResRet.f32 %6873, 1
  %6875 = fcmp fast ogt float %6874, 0.000000e+00
  br i1 %6875, label %6876, label %6908

; <label>:6876                                    ; preds = %6872
  %6877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %49, float %6847, float %6848, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6878 = extractvalue %dx.types.ResRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.ResRet.f32 %6877, 1
  %6880 = extractvalue %dx.types.ResRet.f32 %6877, 2
  %6881 = extractvalue %dx.types.ResRet.f32 %6877, 3
  %6882 = fsub fast float 1.000000e+00, %6829
  %6883 = fsub fast float %6882, %6840
  %6884 = fmul fast float %6883, 0x400921FB60000000
  %6885 = fadd fast float %6884, 0x3FF921FB60000000
  %6886 = call float @dx.op.unary.f32(i32 13, float %6885)  ; Sin(value)
  %6887 = fadd fast float %6886, -1.000000e+00
  %6888 = fmul fast float %6887, 0x3FD45F3060000000
  %6889 = fmul fast float %6883, 0x401921FB60000000
  %6890 = fadd fast float %6889, 0x400921FB60000000
  %6891 = call float @dx.op.unary.f32(i32 13, float %6890)  ; Sin(value)
  %6892 = fadd fast float %6891, 0x3E7777A5C0000000
  %6893 = fmul fast float %6892, 0x3FC45F3060000000
  %6894 = fmul fast float %6883, 0x4022D97C80000000
  %6895 = fadd fast float %6894, 0x4012D97C80000000
  %6896 = call float @dx.op.unary.f32(i32 13, float %6895)  ; Sin(value)
  %6897 = fadd fast float %6896, 1.000000e+00
  %6898 = fmul fast float %6897, 0x3FBB2995E0000000
  %6899 = fmul fast float %6883, 0x402921FB60000000
  %6900 = fadd fast float %6899, 0x401921FB60000000
  %6901 = call float @dx.op.unary.f32(i32 13, float %6900)  ; Sin(value)
  %6902 = fadd fast float %6901, 0xBE8777A5C0000000
  %6903 = fmul fast float %6902, 0x3FB45F3060000000
  %6904 = call float @dx.op.dot4.f32(i32 56, float %6878, float %6879, float %6880, float %6881, float %6888, float %6893, float %6898, float %6903)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6905 = fmul fast float %6904, 0xBFF7154760000000
  %6906 = call float @dx.op.unary.f32(i32 21, float %6905)  ; Exp(value)
  %6907 = call float @dx.op.unary.f32(i32 7, float %6906)  ; Saturate(value)
  br label %6908

; <label>:6908                                    ; preds = %6876, %6872
  %6909 = phi float [ %6907, %6876 ], [ 1.000000e+00, %6872 ]
  %6910 = fadd fast float %6909, -1.000000e+00
  %6911 = fmul fast float %6910, %6870
  %6912 = fadd fast float %6911, 1.000000e+00
  br label %6913

; <label>:6913                                    ; preds = %6908, %6814
  %6914 = phi float [ %6912, %6908 ], [ 1.000000e+00, %6814 ]
  %6915 = fmul fast float %6914, %6810
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 0
  %6918 = extractvalue %dx.types.CBufRet.f32 %6916, 1
  %6919 = extractvalue %dx.types.CBufRet.f32 %6916, 2
  %6920 = fadd fast float %6917, %195
  %6921 = fadd fast float %6918, %196
  %6922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6922, 1
  %6924 = fsub fast float -0.000000e+00, %6920
  %6925 = fsub fast float -0.000000e+00, %6921
  %6926 = fsub fast float %5821, %6919
  %6927 = fadd fast float %6926, %6923
  %6928 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6924, float %6925, float %6927)  ; Dot3(ax,ay,az,bx,by,bz)
  %6929 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6147, float %6148, float %6149)  ; Dot3(ax,ay,az,bx,by,bz)
  %6930 = fdiv fast float 1.000000e+00, %6929
  %6931 = fmul fast float %6930, %6928
  %6932 = fmul fast float %6147, %6931
  %6933 = fmul fast float %6148, %6931
  %6934 = fadd fast float %6932, %6920
  %6935 = fadd fast float %6933, %6921
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 0
  %6938 = extractvalue %dx.types.CBufRet.f32 %6936, 1
  %6939 = fsub fast float %6934, %6937
  %6940 = fsub fast float %6935, %6938
  %6941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6942 = extractvalue %dx.types.CBufRet.f32 %6941, 2
  %6943 = extractvalue %dx.types.CBufRet.f32 %6941, 3
  %6944 = fmul fast float %6939, %6942
  %6945 = fmul fast float %6940, %6943
  %6946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6947 = extractvalue %dx.types.CBufRet.i32 %6946, 3
  %6948 = icmp eq i32 %6947, 0
  br i1 %6948, label %6954, label %6949

; <label>:6949                                    ; preds = %6913
  %6950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6944, float %6945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6951 = extractvalue %dx.types.ResRet.f32 %6950, 0
  %6952 = extractvalue %dx.types.ResRet.f32 %6950, 1
  %6953 = extractvalue %dx.types.ResRet.f32 %6950, 2
  br label %6959

; <label>:6954                                    ; preds = %6913
  %6955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %6944, float %6945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6956 = extractvalue %dx.types.ResRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.ResRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.ResRet.f32 %6955, 2
  br label %6959

; <label>:6959                                    ; preds = %6954, %6949
  %6960 = phi float [ %6951, %6949 ], [ %6956, %6954 ]
  %6961 = phi float [ %6952, %6949 ], [ %6957, %6954 ]
  %6962 = phi float [ %6953, %6949 ], [ %6958, %6954 ]
  %6963 = extractvalue %dx.types.CBufRet.f32 %6922, 2
  %6964 = fmul fast float %6963, %6960
  %6965 = extractvalue %dx.types.CBufRet.f32 %6922, 0
  %6966 = fsub fast float %6931, %6965
  %6967 = fsub fast float %6966, %6964
  %6968 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6967)  ; FMax(a,b)
  %6969 = fmul fast float %6968, %6961
  %6970 = call float @dx.op.binary.f32(i32 36, float %6962, float %6969)  ; FMin(a,b)
  %6971 = fmul fast float %6970, 0xBFF7154760000000
  %6972 = call float @dx.op.unary.f32(i32 21, float %6971)  ; Exp(value)
  %6973 = fmul fast float %6915, %6972
  br label %6974

; <label>:6974                                    ; preds = %6959, %6809
  %6975 = phi float [ %6973, %6959 ], [ %6810, %6809 ]
  %6976 = call float @dx.op.binary.f32(i32 36, float %6975, float %6975)  ; FMin(a,b)
  %6977 = call float @dx.op.binary.f32(i32 36, float %6975, float %6976)  ; FMin(a,b)
  %6978 = fcmp fast ogt float %6977, 0.000000e+00
  br i1 %6978, label %6979, label %7242, !dx.controlflow.hints !125

; <label>:6979                                    ; preds = %6974
  %6980 = fmul fast float %6975, %6158
  %6981 = fmul fast float %6975, %6159
  %6982 = fmul fast float %6975, %6160
  %6983 = fsub fast float %197, %4998
  %6984 = fcmp fast ogt float %6983, 0.000000e+00
  %6985 = fmul fast float %6147, 5.120000e+02
  %6986 = fmul fast float %6148, 5.120000e+02
  %6987 = fmul fast float %6149, 5.120000e+02
  %6988 = fadd fast float %6987, %197
  %6989 = fsub fast float %4998, %6988
  %6990 = fmul fast float %6989, 2.000000e+00
  %6991 = fadd fast float %6990, %6988
  %6992 = select i1 %6984, float %6991, float %6988
  %6993 = fsub fast float %6992, %197
  %6994 = call float @dx.op.dot3.f32(i32 55, float %6985, float %6986, float %6993, float %6985, float %6986, float %6993)  ; Dot3(ax,ay,az,bx,by,bz)
  %6995 = call float @dx.op.unary.f32(i32 25, float %6994)  ; Rsqrt(value)
  %6996 = fmul fast float %6995, %6985
  %6997 = fmul fast float %6995, %6986
  %6998 = fmul fast float %6995, %6993
  %6999 = fsub fast float %4998, %197
  %7000 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6999)  ; Dot3(ax,ay,az,bx,by,bz)
  %7001 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6996, float %6997, float %6998)  ; Dot3(ax,ay,az,bx,by,bz)
  %7002 = fdiv fast float 1.000000e+00, %7001
  %7003 = fmul fast float %7002, %7000
  %7004 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6983, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7005 = fcmp fast ogt float %7004, 0.000000e+00
  %7006 = fcmp fast olt float %7004, 0.000000e+00
  %7007 = zext i1 %7005 to i32
  %7008 = zext i1 %7006 to i32
  %7009 = sub nsw i32 %7007, %7008
  %7010 = sitofp i32 %7009 to float
  %7011 = fsub fast float %6992, %4998
  %7012 = call float @dx.op.dot3.f32(i32 55, float %6985, float %6986, float %7011, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7013 = fcmp fast ogt float %7012, 0.000000e+00
  %7014 = fcmp fast olt float %7012, 0.000000e+00
  %7015 = zext i1 %7013 to i32
  %7016 = zext i1 %7014 to i32
  %7017 = sub nsw i32 %7015, %7016
  %7018 = sitofp i32 %7017 to float
  %7019 = fcmp fast une float %7010, %7018
  br i1 %7019, label %7020, label %7030

; <label>:7020                                    ; preds = %6979
  %7021 = fmul fast float %7003, %6998
  %7022 = fmul fast float %7003, %6997
  %7023 = fmul fast float %7003, %6996
  %7024 = fmul fast float %7023, %7023
  %7025 = fmul fast float %7022, %7022
  %7026 = fadd fast float %7024, %7025
  %7027 = fmul fast float %7021, %7021
  %7028 = fadd fast float %7026, %7027
  %7029 = call float @dx.op.unary.f32(i32 24, float %7028)  ; Sqrt(value)
  br label %7040

; <label>:7030                                    ; preds = %6979
  %7031 = icmp slt i32 %7009, 0
  br i1 %7031, label %7032, label %7040

; <label>:7032                                    ; preds = %7030
  %7033 = fsub fast float %197, %6992
  %7034 = fmul fast float %6985, %6985
  %7035 = fmul fast float %6986, %6986
  %7036 = fadd fast float %7034, %7035
  %7037 = fmul fast float %7033, %7033
  %7038 = fadd fast float %7036, %7037
  %7039 = call float @dx.op.unary.f32(i32 24, float %7038)  ; Sqrt(value)
  br label %7040

; <label>:7040                                    ; preds = %7032, %7030, %7020
  %7041 = phi float [ %7029, %7020 ], [ %7039, %7032 ], [ 0.000000e+00, %7030 ]
  %7042 = fsub fast float -0.000000e+00, %7041
  %7043 = select i1 %6984, float -0.000000e+00, float %7042
  %7044 = fmul fast float %4999, 0x3FF7154760000000
  %7045 = fmul fast float %7044, %7043
  %7046 = fmul fast float %5000, 0x3FF7154760000000
  %7047 = fmul fast float %7046, %7043
  %7048 = fmul fast float %5001, 0x3FF7154760000000
  %7049 = fmul fast float %7048, %7043
  %7050 = call float @dx.op.unary.f32(i32 21, float %7045)  ; Exp(value)
  %7051 = call float @dx.op.unary.f32(i32 21, float %7047)  ; Exp(value)
  %7052 = call float @dx.op.unary.f32(i32 21, float %7049)  ; Exp(value)
  %7053 = call float @dx.op.unary.f32(i32 7, float %7050)  ; Saturate(value)
  %7054 = call float @dx.op.unary.f32(i32 7, float %7051)  ; Saturate(value)
  %7055 = call float @dx.op.unary.f32(i32 7, float %7052)  ; Saturate(value)
  %7056 = fmul fast float %6980, %7053
  %7057 = fmul fast float %6981, %7054
  %7058 = fmul fast float %6982, %7055
  %7059 = fsub fast float %6147, %5824
  %7060 = fsub fast float %6148, %5825
  %7061 = fsub fast float %6149, %5826
  %7062 = call float @dx.op.dot3.f32(i32 55, float %7059, float %7060, float %7061, float %7059, float %7060, float %7061)  ; Dot3(ax,ay,az,bx,by,bz)
  %7063 = call float @dx.op.unary.f32(i32 25, float %7062)  ; Rsqrt(value)
  %7064 = fmul fast float %7063, %7059
  %7065 = fmul fast float %7063, %7060
  %7066 = fmul fast float %7063, %7061
  %7067 = call float @dx.op.dot3.f32(i32 55, float %6147, float %6148, float %6149, float %5784, float %5785, float %5786)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %7064, float %7065, float %7066)  ; Dot3(ax,ay,az,bx,by,bz)
  %7069 = call float @dx.op.unary.f32(i32 7, float %7067)  ; Saturate(value)
  %7070 = fmul fast float %7069, %7069
  %7071 = fmul fast float %7070, %5845
  %7072 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7073 = fmul fast float %7072, %7069
  %7074 = call float @dx.op.dot3.f32(i32 55, float %5784, float %5785, float %5786, float %7064, float %7065, float %7066)  ; Dot3(ax,ay,az,bx,by,bz)
  %7075 = fmul fast float %7074, %7074
  %7076 = call float @dx.op.unary.f32(i32 6, float %7067)  ; FAbs(value)
  %7077 = fsub fast float 1.000000e+00, %5787
  %7078 = call float @dx.op.binary.f32(i32 35, float %7077, float 0x3F847AE140000000)  ; FMax(a,b)
  %7079 = fmul fast float %7078, %7078
  %7080 = fmul fast float %7079, %7079
  %7081 = fsub fast float 1.000000e+00, %7080
  %7082 = fmul fast float %5832, %5832
  %7083 = fmul fast float %7082, %7081
  %7084 = fadd fast float %7083, %7080
  %7085 = bitcast float %7084 to i32
  %7086 = ashr i32 %7085, 1
  %7087 = add nsw i32 %7086, 532487669
  %7088 = bitcast i32 %7087 to float
  %7089 = fadd fast float %7088, %5832
  %7090 = fmul fast float %7080, %7075
  %7091 = fsub fast float 1.000000e+00, %7075
  %7092 = fadd fast float %7091, %7090
  %7093 = fmul fast float %7076, %7076
  %7094 = fmul fast float %7093, %7081
  %7095 = fadd fast float %7094, %7080
  %7096 = bitcast float %7095 to i32
  %7097 = ashr i32 %7096, 1
  %7098 = add nsw i32 %7097, 532487669
  %7099 = bitcast i32 %7098 to float
  %7100 = fadd fast float %7099, %7076
  %7101 = fmul fast float %7092, %7092
  %7102 = fmul fast float %7101, %7089
  %7103 = fmul fast float %7102, %7100
  %7104 = fdiv fast float 0x3FF0A00000000000, %7103
  %7105 = fmul fast float %7104, %7080
  %7106 = fmul fast float %5949, 0x3FF9999980000000
  %7107 = fsub fast float 5.000000e+00, %7106
  %7108 = call float @dx.op.unary.f32(i32 6, float %7068)  ; FAbs(value)
  %7109 = fsub fast float 1.000000e+00, %7108
  %7110 = fmul fast float %5949, 0x41D9660740000000
  %7111 = fadd fast float %7110, 0xC1EFBF8940000000
  %7112 = bitcast float %7109 to i32
  %7113 = sitofp i32 %7112 to float
  %7114 = fmul fast float %7113, %7107
  %7115 = fadd fast float %7111, %7114
  %7116 = fptosi float %7115 to i32
  %7117 = bitcast i32 %7116 to float
  %7118 = fsub fast float 1.000000e+00, %5781
  %7119 = fsub fast float 1.000000e+00, %5782
  %7120 = fsub fast float 1.000000e+00, %5830
  %7121 = fmul fast float %7117, %7118
  %7122 = fmul fast float %7117, %7119
  %7123 = fmul fast float %7117, %7120
  %7124 = fadd fast float %7121, %5781
  %7125 = fadd fast float %7122, %5782
  %7126 = fadd fast float %7123, %5830
  br i1 %5972, label %7127, label %7150

; <label>:7127                                    ; preds = %7040
  %7128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4594, float %7108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7129 = extractvalue %dx.types.ResRet.f32 %7128, 0
  %7130 = extractvalue %dx.types.ResRet.f32 %7128, 1
  %7131 = extractvalue %dx.types.ResRet.f32 %7128, 2
  %7132 = fadd fast float %7129, -5.000000e-01
  %7133 = fadd fast float %7130, -5.000000e-01
  %7134 = fadd fast float %7131, -5.000000e-01
  %7135 = fmul fast float %5781, 4.000000e+00
  %7136 = fmul fast float %7135, %7118
  %7137 = fmul fast float %7136, %7132
  %7138 = fmul fast float %5782, 4.000000e+00
  %7139 = fmul fast float %7138, %7119
  %7140 = fmul fast float %7139, %7133
  %7141 = fmul fast float %5830, 4.000000e+00
  %7142 = fmul fast float %7141, %7120
  %7143 = fmul fast float %7142, %7134
  %7144 = fadd fast float %7137, %7124
  %7145 = fadd fast float %7140, %7125
  %7146 = fadd fast float %7143, %7126
  %7147 = call float @dx.op.unary.f32(i32 7, float %7144)  ; Saturate(value)
  %7148 = call float @dx.op.unary.f32(i32 7, float %7145)  ; Saturate(value)
  %7149 = call float @dx.op.unary.f32(i32 7, float %7146)  ; Saturate(value)
  br label %7150

; <label>:7150                                    ; preds = %7127, %7040
  %7151 = phi float [ %7147, %7127 ], [ %7124, %7040 ]
  %7152 = phi float [ %7148, %7127 ], [ %7125, %7040 ]
  %7153 = phi float [ %7149, %7127 ], [ %7126, %7040 ]
  %7154 = fmul fast float %7067, 9.843750e-01
  %7155 = fadd fast float %7154, 7.812500e-03
  %7156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7155, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7157 = extractvalue %dx.types.ResRet.f32 %7156, 0
  %7158 = extractvalue %dx.types.ResRet.f32 %7156, 1
  %7159 = extractvalue %dx.types.ResRet.f32 %7156, 2
  %7160 = extractvalue %dx.types.ResRet.f32 %7156, 3
  %7161 = fsub fast float %7159, %7157
  %7162 = fsub fast float %7160, %7158
  %7163 = fmul fast float %7161, %5959
  %7164 = fmul fast float %7162, %5959
  %7165 = fadd fast float %7163, %7157
  %7166 = fadd fast float %7164, %7158
  %7167 = fmul fast float %7165, %5781
  %7168 = fmul fast float %7165, %5782
  %7169 = fmul fast float %7165, %5830
  %7170 = fadd fast float %7167, %7166
  %7171 = fadd fast float %7168, %7166
  %7172 = fadd fast float %7169, %7166
  br i1 %5972, label %7173, label %7196

; <label>:7173                                    ; preds = %7150
  %7174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4594, float %7067, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7175 = extractvalue %dx.types.ResRet.f32 %7174, 0
  %7176 = extractvalue %dx.types.ResRet.f32 %7174, 1
  %7177 = extractvalue %dx.types.ResRet.f32 %7174, 2
  %7178 = fadd fast float %7175, -5.000000e-01
  %7179 = fadd fast float %7176, -5.000000e-01
  %7180 = fadd fast float %7177, -5.000000e-01
  %7181 = fmul fast float %5781, 4.000000e+00
  %7182 = fmul fast float %7181, %7118
  %7183 = fmul fast float %7182, %7178
  %7184 = fmul fast float %5782, 4.000000e+00
  %7185 = fmul fast float %7184, %7119
  %7186 = fmul fast float %7185, %7179
  %7187 = fmul fast float %5830, 4.000000e+00
  %7188 = fmul fast float %7187, %7120
  %7189 = fmul fast float %7188, %7180
  %7190 = fadd fast float %7183, %7170
  %7191 = fadd fast float %7186, %7171
  %7192 = fadd fast float %7189, %7172
  %7193 = call float @dx.op.unary.f32(i32 7, float %7190)  ; Saturate(value)
  %7194 = call float @dx.op.unary.f32(i32 7, float %7191)  ; Saturate(value)
  %7195 = call float @dx.op.unary.f32(i32 7, float %7192)  ; Saturate(value)
  br label %7196

; <label>:7196                                    ; preds = %7173, %7150
  %7197 = phi float [ %7193, %7173 ], [ %7170, %7150 ]
  %7198 = phi float [ %7194, %7173 ], [ %7171, %7150 ]
  %7199 = phi float [ %7195, %7173 ], [ %7172, %7150 ]
  %7200 = call float @dx.op.binary.f32(i32 35, float %7198, float %7199)  ; FMax(a,b)
  %7201 = call float @dx.op.binary.f32(i32 35, float %7197, float %7200)  ; FMax(a,b)
  %7202 = fsub fast float 1.000000e+00, %7201
  %7203 = fmul fast float %7151, %7105
  %7204 = fmul fast float %7152, %7105
  %7205 = fmul fast float %7153, %7105
  %7206 = fsub fast float 1.000000e+00, %7068
  %7207 = bitcast float %7206 to i32
  %7208 = sitofp i32 %7207 to float
  %7209 = fmul fast float %7208, 5.000000e+00
  %7210 = fadd fast float %7209, 0xC1EFBF8940000000
  %7211 = fptosi float %7210 to i32
  %7212 = bitcast i32 %7211 to float
  %7213 = fmul fast float %7212, %4595
  %7214 = fmul fast float %7202, %7213
  %7215 = fmul fast float %7214, %6075
  %7216 = fmul fast float %7214, %6076
  %7217 = fmul fast float %7214, %6077
  %7218 = fadd fast float %7215, %7203
  %7219 = fadd fast float %7216, %7204
  %7220 = fadd fast float %7217, %7205
  %7221 = fmul fast float %7073, %7056
  %7222 = fmul fast float %7221, %7202
  %7223 = fmul fast float %7073, %7057
  %7224 = fmul fast float %7223, %7202
  %7225 = fmul fast float %7073, %7058
  %7226 = fmul fast float %7225, %7202
  %7227 = fmul fast float %7221, %7218
  %7228 = fmul fast float %7223, %7219
  %7229 = fmul fast float %7225, %7220
  %7230 = fadd fast float %7222, %6057
  %7231 = fmul fast float %7230, %4591
  %7232 = fadd fast float %7224, %6059
  %7233 = fmul fast float %7232, %4591
  %7234 = fadd fast float %7226, %6061
  %7235 = fmul fast float %7234, %4591
  %7236 = fadd fast float %7227, %6135
  %7237 = fmul fast float %7236, %4591
  %7238 = fadd fast float %7228, %6138
  %7239 = fmul fast float %7238, %4591
  %7240 = fadd fast float %7229, %6141
  %7241 = fmul fast float %7240, %4591
  br label %7242

; <label>:7242                                    ; preds = %7196, %6974, %5999
  %7243 = phi float [ %6136, %5999 ], [ %6136, %6974 ], [ %7237, %7196 ]
  %7244 = phi float [ %6139, %5999 ], [ %6139, %6974 ], [ %7239, %7196 ]
  %7245 = phi float [ %6142, %5999 ], [ %6142, %6974 ], [ %7241, %7196 ]
  %7246 = phi float [ %6131, %5999 ], [ %6131, %6974 ], [ %7231, %7196 ]
  %7247 = phi float [ %6132, %5999 ], [ %6132, %6974 ], [ %7233, %7196 ]
  %7248 = phi float [ %6133, %5999 ], [ %6133, %6974 ], [ %7235, %7196 ]
  %7249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7250 = extractvalue %dx.types.CBufRet.i32 %7249, 0
  %7251 = icmp eq i32 %7250, 0
  br i1 %7251, label %7884, label %7252

; <label>:7252                                    ; preds = %7242
  %7253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7254 = extractvalue %dx.types.CBufRet.f32 %7253, 2
  %7255 = extractvalue %dx.types.CBufRet.f32 %7253, 3
  %7256 = fmul fast float %7254, %108
  %7257 = fmul fast float %7255, %109
  %7258 = fptoui float %7256 to i32
  %7259 = fptoui float %7257 to i32
  %7260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.CBufRet.f32 %7260, 2
  %7263 = extractvalue %dx.types.CBufRet.f32 %7260, 3
  %7264 = fadd fast float %99, -4.000000e+00
  %7265 = call float @dx.op.binary.f32(i32 35, float %7264, float 0.000000e+00)  ; FMax(a,b)
  %7266 = fadd fast float %7265, %7261
  %7267 = fmul fast float %7266, %7262
  %7268 = call float @dx.op.unary.f32(i32 23, float %7267)  ; Log(value)
  %7269 = fmul fast float %7268, %7263
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 2
  %7272 = fmul fast float %7269, %7271
  %7273 = call float @dx.op.unary.f32(i32 7, float %7272)  ; Saturate(value)
  %7274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7275 = extractvalue %dx.types.CBufRet.i32 %7274, 1
  %7276 = add i32 %7275, -1
  %7277 = uitofp i32 %7275 to float
  %7278 = fmul fast float %7277, %7273
  %7279 = fptoui float %7278 to i32
  %7280 = call i32 @dx.op.binary.i32(i32 40, i32 %7279, i32 %7276)  ; UMin(a,b)
  %7281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7282 = extractvalue %dx.types.CBufRet.i32 %7281, 2
  %7283 = extractvalue %dx.types.CBufRet.i32 %7281, 3
  %7284 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7259, i32 %7282, i32 %7258)  ; UMad(a,b,c)
  %7285 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7280, i32 %7283, i32 %7284)  ; UMad(a,b,c)
  %7286 = add nsw i32 %7250, -1
  %7287 = call i32 @dx.op.binary.i32(i32 37, i32 %7286, i32 0)  ; IMax(a,b)
  %7288 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %7289 = fptoui float %7288 to i32
  %7290 = lshr i32 %7289, 5
  %7291 = call i32 @dx.op.binary.i32(i32 40, i32 %7290, i32 8191)  ; UMin(a,b)
  %7292 = shl i32 %7291, 2
  %7293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7292, i32 undef)  ; BufferLoad(srv,index,wot)
  %7294 = extractvalue %dx.types.ResRet.i32 %7293, 0
  %7295 = lshr i32 %7294, 16
  %7296 = and i32 %7294, 65535
  %7297 = lshr i32 %7294, 21
  %7298 = lshr i32 %7296, 5
  %7299 = call i32 @dx.op.binary.i32(i32 40, i32 %7298, i32 %7287)  ; UMin(a,b)
  %7300 = icmp ugt i32 %7297, %7299
  br i1 %7300, label %7884, label %7301

; <label>:7301                                    ; preds = %7252
  br label %7302

; <label>:7302                                    ; preds = %7874, %7301
  %7303 = phi i32 [ %7881, %7874 ], [ %7297, %7301 ]
  %7304 = phi float [ %7875, %7874 ], [ %7243, %7301 ]
  %7305 = phi float [ %7876, %7874 ], [ %7244, %7301 ]
  %7306 = phi float [ %7877, %7874 ], [ %7245, %7301 ]
  %7307 = phi float [ %7878, %7874 ], [ %7246, %7301 ]
  %7308 = phi float [ %7879, %7874 ], [ %7247, %7301 ]
  %7309 = phi float [ %7880, %7874 ], [ %7248, %7301 ]
  %7310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.i32 %7310, 0
  %7312 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7285, i32 %7311, i32 %7303)  ; UMad(a,b,c)
  %7313 = shl i32 %7312, 2
  %7314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7313, i32 undef)  ; BufferLoad(srv,index,wot)
  %7315 = extractvalue %dx.types.ResRet.i32 %7314, 0
  %7316 = shl i32 %7303, 5
  %7317 = sub nsw i32 %7295, %7316
  %7318 = call i32 @dx.op.binary.i32(i32 37, i32 %7317, i32 0)  ; IMax(a,b)
  %7319 = call i32 @dx.op.binary.i32(i32 38, i32 %7318, i32 31)  ; IMin(a,b)
  %7320 = sub nsw i32 1, %7295
  %7321 = add nsw i32 %7320, %7296
  %7322 = call i32 @dx.op.binary.i32(i32 37, i32 %7321, i32 0)  ; IMax(a,b)
  %7323 = call i32 @dx.op.binary.i32(i32 38, i32 %7322, i32 32)  ; IMin(a,b)
  %7324 = and i32 %7323, 31
  %7325 = shl i32 -1, %7324
  %7326 = xor i32 %7325, -1
  %7327 = and i32 %7319, 31
  %7328 = shl i32 %7326, %7327
  %7329 = icmp eq i32 %7323, 32
  %7330 = select i1 %7329, i32 -1, i32 %7328
  %7331 = and i32 %7330, %7315
  %7332 = icmp eq i32 %7331, 0
  br i1 %7332, label %7874, label %7333

; <label>:7333                                    ; preds = %7302
  br label %7334

; <label>:7334                                    ; preds = %7468, %7333
  %7335 = phi i32 [ %7346, %7468 ], [ %7331, %7333 ]
  %7336 = phi float [ %7469, %7468 ], [ %7304, %7333 ]
  %7337 = phi float [ %7470, %7468 ], [ %7305, %7333 ]
  %7338 = phi float [ %7471, %7468 ], [ %7306, %7333 ]
  %7339 = phi float [ %7472, %7468 ], [ %7307, %7333 ]
  %7340 = phi float [ %7473, %7468 ], [ %7308, %7333 ]
  %7341 = phi float [ %7474, %7468 ], [ %7309, %7333 ]
  %7342 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7335)  ; FirstbitLo(value)
  %7343 = add i32 %7342, %7316
  %7344 = and i32 %7342, 31
  %7345 = shl i32 1, %7344
  %7346 = xor i32 %7345, %7335
  %7347 = mul i32 %7343, 112
  %7348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7347, i32 undef)  ; BufferLoad(srv,index,wot)
  %7349 = extractvalue %dx.types.ResRet.f32 %7348, 0
  %7350 = extractvalue %dx.types.ResRet.f32 %7348, 1
  %7351 = extractvalue %dx.types.ResRet.f32 %7348, 2
  %7352 = or i32 %7347, 12
  %7353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7352, i32 undef)  ; BufferLoad(srv,index,wot)
  %7354 = extractvalue %dx.types.ResRet.f32 %7353, 0
  %7355 = add i32 %7347, 16
  %7356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7355, i32 undef)  ; BufferLoad(srv,index,wot)
  %7357 = extractvalue %dx.types.ResRet.f32 %7356, 0
  %7358 = extractvalue %dx.types.ResRet.f32 %7356, 1
  %7359 = extractvalue %dx.types.ResRet.f32 %7356, 2
  %7360 = add i32 %7347, 28
  %7361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7360, i32 undef)  ; BufferLoad(srv,index,wot)
  %7362 = extractvalue %dx.types.ResRet.i32 %7361, 0
  %7363 = add i32 %7347, 44
  %7364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7363, i32 undef)  ; BufferLoad(srv,index,wot)
  %7365 = extractvalue %dx.types.ResRet.f32 %7364, 0
  %7366 = add i32 %7347, 48
  %7367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7366, i32 undef)  ; BufferLoad(srv,index,wot)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.ResRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.ResRet.f32 %7367, 2
  %7371 = extractvalue %dx.types.ResRet.f32 %7367, 3
  %7372 = add i32 %7347, 64
  %7373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7372, i32 undef)  ; BufferLoad(srv,index,wot)
  %7374 = extractvalue %dx.types.ResRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.ResRet.f32 %7373, 1
  %7376 = extractvalue %dx.types.ResRet.f32 %7373, 2
  %7377 = extractvalue %dx.types.ResRet.f32 %7373, 3
  %7378 = add i32 %7347, 80
  %7379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7378, i32 undef)  ; BufferLoad(srv,index,wot)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 1
  %7381 = extractvalue %dx.types.ResRet.f32 %7379, 2
  %7382 = add i32 %7347, 92
  %7383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7382, i32 undef)  ; BufferLoad(srv,index,wot)
  %7384 = extractvalue %dx.types.ResRet.i32 %7383, 0
  %7385 = call float @dx.op.dot3.f32(i32 55, float %7349, float %7350, float %7351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7386 = select i1 %254, float %7380, float %7349
  %7387 = select i1 %254, float %7385, float %7350
  %7388 = select i1 %254, float %7381, float %7351
  %7389 = and i32 %7384, 65535
  %7390 = uitofp i32 %7389 to float
  %7391 = lshr i32 %7384, 16
  %7392 = uitofp i32 %7391 to float
  %7393 = and i32 %7362, 65535
  %7394 = and i32 %7362, 50331648
  %7395 = icmp eq i32 %7394, 33554432
  %7396 = fsub fast float %7368, %195
  %7397 = fsub fast float %7369, %196
  %7398 = fsub fast float %7370, %197
  %7399 = call float @dx.op.dot3.f32(i32 55, float %7396, float %7397, float %7398, float %7396, float %7397, float %7398)  ; Dot3(ax,ay,az,bx,by,bz)
  %7400 = call float @dx.op.unary.f32(i32 24, float %7399)  ; Sqrt(value)
  %7401 = fdiv fast float 1.000000e+00, %7400
  %7402 = fmul fast float %7401, %7396
  %7403 = fmul fast float %7401, %7397
  %7404 = fmul fast float %7401, %7398
  %7405 = fadd fast float %7400, %7354
  %7406 = fdiv fast float 1.000000e+00, %7405
  %7407 = fmul float %7365, %7406
  %7408 = fmul float %7407, %7407
  %7409 = call float @dx.op.unary.f32(i32 7, float %7408)  ; Saturate(value)
  br i1 %7395, label %7410, label %7431

; <label>:7410                                    ; preds = %7334
  %7411 = fmul fast float %7376, %7357
  %7412 = fmul fast float %7376, %7358
  %7413 = fmul fast float %7376, %7359
  %7414 = fadd fast float %7396, %7411
  %7415 = fadd fast float %7397, %7412
  %7416 = fadd fast float %7398, %7413
  %7417 = call float @dx.op.dot3.f32(i32 55, float %7414, float %7415, float %7416, float %7414, float %7415, float %7416)  ; Dot3(ax,ay,az,bx,by,bz)
  %7418 = call float @dx.op.unary.f32(i32 25, float %7417)  ; Rsqrt(value)
  %7419 = fmul fast float %7418, %7414
  %7420 = fmul fast float %7418, %7415
  %7421 = fmul fast float %7418, %7416
  %7422 = fsub fast float %195, %7368
  %7423 = fsub fast float %196, %7369
  %7424 = fsub fast float %197, %7370
  %7425 = fsub fast float -0.000000e+00, %7422
  %7426 = fsub fast float -0.000000e+00, %7423
  %7427 = fsub fast float -0.000000e+00, %7424
  %7428 = call float @dx.op.dot3.f32(i32 55, float %7425, float %7426, float %7427, float %7357, float %7358, float %7359)  ; Dot3(ax,ay,az,bx,by,bz)
  %7429 = fcmp fast ogt float %7428, 0.000000e+00
  %7430 = uitofp i1 %7429 to float
  br label %7431

; <label>:7431                                    ; preds = %7410, %7334
  %7432 = phi float [ %7430, %7410 ], [ 1.000000e+00, %7334 ]
  %7433 = phi float [ %7419, %7410 ], [ %7402, %7334 ]
  %7434 = phi float [ %7420, %7410 ], [ %7403, %7334 ]
  %7435 = phi float [ %7421, %7410 ], [ %7404, %7334 ]
  %7436 = call float @dx.op.dot3.f32(i32 55, float %7357, float %7358, float %7359, float %7433, float %7434, float %7435)  ; Dot3(ax,ay,az,bx,by,bz)
  %7437 = fmul fast float %7436, %7436
  %7438 = call float @dx.op.unary.f32(i32 7, float %7437)  ; Saturate(value)
  %7439 = fsub fast float 1.000000e+00, %7438
  %7440 = fmul fast float %7439, 5.000000e-01
  %7441 = fcmp fast ogt float %7436, 0.000000e+00
  %7442 = fsub fast float 1.000000e+00, %7440
  %7443 = select i1 %7441, float %7440, float %7442
  %7444 = fmul fast float %7443, %7392
  %7445 = fadd fast float %7444, %7390
  %7446 = fmul fast float %7445, 0x3EF0001000000000
  %7447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %49, float %7446, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7448 = extractvalue %dx.types.ResRet.f32 %7447, 0
  %7449 = fmul fast float %7436, %7374
  %7450 = fadd fast float %7449, %7375
  %7451 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7452 = select i1 %7395, float 1.000000e+00, float %7451
  %7453 = select i1 %7395, float %7451, float 1.000000e+00
  %7454 = fmul fast float %7400, %7371
  %7455 = fsub fast float 1.000000e+00, %7454
  %7456 = fmul fast float %7455, %7377
  %7457 = call float @dx.op.unary.f32(i32 7, float %7456)  ; Saturate(value)
  %7458 = fmul fast float %7457, %7453
  %7459 = fmul fast float %7458, 2.000000e+00
  %7460 = fsub fast float 3.000000e+00, %7459
  %7461 = fmul fast float %7448, %7432
  %7462 = fmul fast float %7458, %7458
  %7463 = fmul fast float %7462, %7461
  %7464 = fmul fast float %7463, %7460
  %7465 = call float @dx.op.binary.f32(i32 36, float %7464, float %7464)  ; FMin(a,b)
  %7466 = call float @dx.op.binary.f32(i32 36, float %7464, float %7465)  ; FMin(a,b)
  %7467 = fcmp fast ogt float %7466, 0.000000e+00
  br i1 %7467, label %7476, label %7468, !dx.controlflow.hints !126

; <label>:7468                                    ; preds = %7830, %7576, %7431
  %7469 = phi float [ %7336, %7576 ], [ %7336, %7431 ], [ %7870, %7830 ]
  %7470 = phi float [ %7337, %7576 ], [ %7337, %7431 ], [ %7871, %7830 ]
  %7471 = phi float [ %7338, %7576 ], [ %7338, %7431 ], [ %7872, %7830 ]
  %7472 = phi float [ %7339, %7576 ], [ %7339, %7431 ], [ %7864, %7830 ]
  %7473 = phi float [ %7340, %7576 ], [ %7340, %7431 ], [ %7865, %7830 ]
  %7474 = phi float [ %7341, %7576 ], [ %7341, %7431 ], [ %7866, %7830 ]
  %7475 = icmp eq i32 %7335, %7345
  br i1 %7475, label %7873, label %7334

; <label>:7476                                    ; preds = %7431
  %7477 = icmp eq i32 %7393, 255
  br i1 %7477, label %7576, label %7478, !dx.controlflow.hints !127

; <label>:7478                                    ; preds = %7476
  %7479 = mul nuw nsw i32 %7393, 176
  %7480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7479, i32 undef)  ; BufferLoad(srv,index,wot)
  %7481 = extractvalue %dx.types.ResRet.f32 %7480, 0
  %7482 = extractvalue %dx.types.ResRet.f32 %7480, 1
  %7483 = extractvalue %dx.types.ResRet.f32 %7480, 2
  %7484 = extractvalue %dx.types.ResRet.f32 %7480, 3
  %7485 = add nuw nsw i32 %7479, 16
  %7486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7485, i32 undef)  ; BufferLoad(srv,index,wot)
  %7487 = extractvalue %dx.types.ResRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.ResRet.f32 %7486, 1
  %7489 = add nuw nsw i32 %7479, 32
  %7490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7489, i32 undef)  ; BufferLoad(srv,index,wot)
  %7491 = extractvalue %dx.types.ResRet.f32 %7490, 0
  %7492 = extractvalue %dx.types.ResRet.f32 %7490, 1
  %7493 = extractvalue %dx.types.ResRet.f32 %7490, 2
  %7494 = add nuw nsw i32 %7479, 48
  %7495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7494, i32 undef)  ; BufferLoad(srv,index,wot)
  %7496 = extractvalue %dx.types.ResRet.f32 %7495, 0
  %7497 = extractvalue %dx.types.ResRet.f32 %7495, 1
  %7498 = extractvalue %dx.types.ResRet.f32 %7495, 2
  %7499 = extractvalue %dx.types.ResRet.f32 %7495, 3
  %7500 = add nuw nsw i32 %7479, 64
  %7501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7500, i32 undef)  ; BufferLoad(srv,index,wot)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.ResRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.ResRet.f32 %7501, 2
  %7505 = extractvalue %dx.types.ResRet.f32 %7501, 3
  %7506 = add nuw nsw i32 %7479, 80
  %7507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7506, i32 undef)  ; BufferLoad(srv,index,wot)
  %7508 = extractvalue %dx.types.ResRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.ResRet.f32 %7507, 1
  %7510 = extractvalue %dx.types.ResRet.f32 %7507, 2
  %7511 = extractvalue %dx.types.ResRet.f32 %7507, 3
  %7512 = add nuw nsw i32 %7479, 96
  %7513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7512, i32 undef)  ; BufferLoad(srv,index,wot)
  %7514 = extractvalue %dx.types.ResRet.f32 %7513, 0
  %7515 = extractvalue %dx.types.ResRet.f32 %7513, 1
  %7516 = extractvalue %dx.types.ResRet.f32 %7513, 2
  %7517 = extractvalue %dx.types.ResRet.f32 %7513, 3
  %7518 = bitcast float %7488 to i32
  %7519 = fmul fast float %7493, %115
  %7520 = fmul fast float %7493, %116
  %7521 = fmul fast float %7493, %117
  %7522 = fadd fast float %7519, %195
  %7523 = fadd fast float %7520, %196
  %7524 = fadd fast float %7521, %197
  %7525 = fmul fast float %7522, %7496
  %7526 = call float @dx.op.tertiary.f32(i32 46, float %7523, float %7502, float %7525)  ; FMad(a,b,c)
  %7527 = call float @dx.op.tertiary.f32(i32 46, float %7524, float %7508, float %7526)  ; FMad(a,b,c)
  %7528 = fadd fast float %7527, %7514
  %7529 = fmul fast float %7522, %7497
  %7530 = call float @dx.op.tertiary.f32(i32 46, float %7523, float %7503, float %7529)  ; FMad(a,b,c)
  %7531 = call float @dx.op.tertiary.f32(i32 46, float %7524, float %7509, float %7530)  ; FMad(a,b,c)
  %7532 = fadd fast float %7531, %7515
  %7533 = fmul fast float %7522, %7498
  %7534 = call float @dx.op.tertiary.f32(i32 46, float %7523, float %7504, float %7533)  ; FMad(a,b,c)
  %7535 = call float @dx.op.tertiary.f32(i32 46, float %7524, float %7510, float %7534)  ; FMad(a,b,c)
  %7536 = fadd fast float %7535, %7516
  %7537 = fmul fast float %7522, %7499
  %7538 = call float @dx.op.tertiary.f32(i32 46, float %7523, float %7505, float %7537)  ; FMad(a,b,c)
  %7539 = call float @dx.op.tertiary.f32(i32 46, float %7524, float %7511, float %7538)  ; FMad(a,b,c)
  %7540 = fadd fast float %7539, %7517
  %7541 = fdiv fast float %7528, %7540
  %7542 = fdiv fast float %7532, %7540
  %7543 = fdiv fast float %7536, %7540
  %7544 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7543)  ; FMax(a,b)
  %7545 = fmul fast float %265, 0x401921FB60000000
  %7546 = call float @dx.op.unary.f32(i32 13, float %7545)  ; Sin(value)
  %7547 = call float @dx.op.unary.f32(i32 12, float %7545)  ; Cos(value)
  %7548 = fsub fast float -0.000000e+00, %7546
  %7549 = fmul fast float %7483, 5.000000e-01
  %7550 = call float @dx.op.dot2.f32(i32 54, float %265, float %265, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7551 = call float @dx.op.unary.f32(i32 22, float %7550)  ; Frc(value)
  %7552 = fmul fast float %7551, 0x404A7DD040000000
  %7553 = call float @dx.op.unary.f32(i32 22, float %7552)  ; Frc(value)
  %7554 = fmul fast float %7553, %7492
  %7555 = fadd fast float %7554, %7549
  %7556 = call float @dx.op.tertiary.f32(i32 46, float %7555, float %7548, float 0.000000e+00)  ; FMad(a,b,c)
  %7557 = call float @dx.op.tertiary.f32(i32 46, float %7555, float %7547, float 0.000000e+00)  ; FMad(a,b,c)
  %7558 = fadd fast float %7556, %7541
  %7559 = fadd fast float %7557, %7542
  %7560 = fmul fast float %7558, %7487
  %7561 = fmul fast float %7559, %7487
  %7562 = call float @dx.op.binary.f32(i32 35, float %7560, float %7483)  ; FMax(a,b)
  %7563 = call float @dx.op.binary.f32(i32 35, float %7561, float %7483)  ; FMax(a,b)
  %7564 = call float @dx.op.binary.f32(i32 36, float %7562, float %7484)  ; FMin(a,b)
  %7565 = call float @dx.op.binary.f32(i32 36, float %7563, float %7484)  ; FMin(a,b)
  %7566 = fadd fast float %7564, %7481
  %7567 = fadd fast float %7565, %7482
  %7568 = uitofp i32 %7518 to float
  %7569 = fadd fast float %7544, %7491
  %7570 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %51, float %7566, float %7567, float %7568, float undef, i32 0, i32 0, i32 undef, float %7569)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7571 = extractvalue %dx.types.ResRet.f32 %7570, 0
  %7572 = fadd fast float %7571, -1.000000e+00
  %7573 = fmul fast float %7572, %7452
  %7574 = fadd fast float %7573, 1.000000e+00
  %7575 = fmul fast float %7574, %7464
  br label %7576

; <label>:7576                                    ; preds = %7478, %7476
  %7577 = phi float [ %7575, %7478 ], [ %7464, %7476 ]
  %7578 = call float @dx.op.binary.f32(i32 36, float %7577, float %7577)  ; FMin(a,b)
  %7579 = call float @dx.op.binary.f32(i32 36, float %7577, float %7578)  ; FMin(a,b)
  %7580 = fcmp fast ogt float %7579, 0.000000e+00
  br i1 %7580, label %7581, label %7468, !dx.controlflow.hints !128

; <label>:7581                                    ; preds = %7576
  %7582 = fmul fast float %7577, %7386
  %7583 = fmul fast float %7577, %7387
  %7584 = fmul fast float %7577, %7388
  %7585 = fsub fast float %7370, %4998
  %7586 = fcmp fast ogt float %7585, 0.000000e+00
  %7587 = fsub fast float %197, %4998
  %7588 = fcmp fast ogt float %7587, 0.000000e+00
  %7589 = xor i1 %7588, %7586
  %7590 = fsub fast float %4998, %7370
  %7591 = fmul fast float %7590, 2.000000e+00
  %7592 = fadd fast float %7591, %7370
  %7593 = select i1 %7589, float %7370, float %7592
  %7594 = fsub fast float %7593, %197
  %7595 = call float @dx.op.dot3.f32(i32 55, float %7396, float %7397, float %7594, float %7396, float %7397, float %7594)  ; Dot3(ax,ay,az,bx,by,bz)
  %7596 = call float @dx.op.unary.f32(i32 25, float %7595)  ; Rsqrt(value)
  %7597 = fmul fast float %7596, %7396
  %7598 = fmul fast float %7596, %7397
  %7599 = fmul fast float %7596, %7594
  %7600 = fsub fast float %4998, %197
  %7601 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7600)  ; Dot3(ax,ay,az,bx,by,bz)
  %7602 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7597, float %7598, float %7599)  ; Dot3(ax,ay,az,bx,by,bz)
  %7603 = fdiv fast float 1.000000e+00, %7602
  %7604 = fmul fast float %7603, %7601
  %7605 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7587, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7606 = fcmp fast ogt float %7605, 0.000000e+00
  %7607 = fcmp fast olt float %7605, 0.000000e+00
  %7608 = zext i1 %7606 to i32
  %7609 = zext i1 %7607 to i32
  %7610 = sub nsw i32 %7608, %7609
  %7611 = sitofp i32 %7610 to float
  %7612 = fsub fast float %7593, %4998
  %7613 = call float @dx.op.dot3.f32(i32 55, float %7396, float %7397, float %7612, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7614 = fcmp fast ogt float %7613, 0.000000e+00
  %7615 = fcmp fast olt float %7613, 0.000000e+00
  %7616 = zext i1 %7614 to i32
  %7617 = zext i1 %7615 to i32
  %7618 = sub nsw i32 %7616, %7617
  %7619 = sitofp i32 %7618 to float
  %7620 = fcmp fast une float %7611, %7619
  br i1 %7620, label %7621, label %7631

; <label>:7621                                    ; preds = %7581
  %7622 = fmul fast float %7604, %7599
  %7623 = fmul fast float %7604, %7598
  %7624 = fmul fast float %7604, %7597
  %7625 = fmul fast float %7624, %7624
  %7626 = fmul fast float %7623, %7623
  %7627 = fadd fast float %7625, %7626
  %7628 = fmul fast float %7622, %7622
  %7629 = fadd fast float %7627, %7628
  %7630 = call float @dx.op.unary.f32(i32 24, float %7629)  ; Sqrt(value)
  br label %7643

; <label>:7631                                    ; preds = %7581
  %7632 = icmp slt i32 %7610, 0
  br i1 %7632, label %7633, label %7643

; <label>:7633                                    ; preds = %7631
  %7634 = fsub fast float %195, %7368
  %7635 = fsub fast float %196, %7369
  %7636 = fsub fast float %197, %7593
  %7637 = fmul fast float %7634, %7634
  %7638 = fmul fast float %7635, %7635
  %7639 = fadd fast float %7637, %7638
  %7640 = fmul fast float %7636, %7636
  %7641 = fadd fast float %7639, %7640
  %7642 = call float @dx.op.unary.f32(i32 24, float %7641)  ; Sqrt(value)
  br label %7643

; <label>:7643                                    ; preds = %7633, %7631, %7621
  %7644 = phi float [ %7630, %7621 ], [ %7642, %7633 ], [ 0.000000e+00, %7631 ]
  %7645 = and i1 %7588, %7586
  %7646 = fsub fast float -0.000000e+00, %7644
  %7647 = select i1 %7645, float -0.000000e+00, float %7646
  %7648 = fmul fast float %4999, 0x3FF7154760000000
  %7649 = fmul fast float %7648, %7647
  %7650 = fmul fast float %5000, 0x3FF7154760000000
  %7651 = fmul fast float %7650, %7647
  %7652 = fmul fast float %5001, 0x3FF7154760000000
  %7653 = fmul fast float %7652, %7647
  %7654 = call float @dx.op.unary.f32(i32 21, float %7649)  ; Exp(value)
  %7655 = call float @dx.op.unary.f32(i32 21, float %7651)  ; Exp(value)
  %7656 = call float @dx.op.unary.f32(i32 21, float %7653)  ; Exp(value)
  %7657 = call float @dx.op.unary.f32(i32 7, float %7654)  ; Saturate(value)
  %7658 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  %7659 = call float @dx.op.unary.f32(i32 7, float %7656)  ; Saturate(value)
  %7660 = fmul fast float %7582, %7657
  %7661 = fmul fast float %7583, %7658
  %7662 = fmul fast float %7584, %7659
  %7663 = fsub fast float %7402, %5824
  %7664 = fsub fast float %7403, %5825
  %7665 = fsub fast float %7404, %5826
  %7666 = call float @dx.op.dot3.f32(i32 55, float %7663, float %7664, float %7665, float %7663, float %7664, float %7665)  ; Dot3(ax,ay,az,bx,by,bz)
  %7667 = call float @dx.op.unary.f32(i32 25, float %7666)  ; Rsqrt(value)
  %7668 = fmul fast float %7667, %7663
  %7669 = fmul fast float %7667, %7664
  %7670 = fmul fast float %7667, %7665
  %7671 = call float @dx.op.dot3.f32(i32 55, float %7402, float %7403, float %7404, float %5784, float %5785, float %5786)  ; Dot3(ax,ay,az,bx,by,bz)
  %7672 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %7668, float %7669, float %7670)  ; Dot3(ax,ay,az,bx,by,bz)
  %7673 = call float @dx.op.unary.f32(i32 7, float %7671)  ; Saturate(value)
  %7674 = fmul fast float %7673, %7409
  %7675 = fmul fast float %7673, %7673
  %7676 = fmul fast float %7675, %5845
  %7677 = call float @dx.op.unary.f32(i32 7, float %7676)  ; Saturate(value)
  %7678 = fmul fast float %7674, %7677
  %7679 = bitcast float %7399 to i32
  %7680 = ashr i32 %7679, 1
  %7681 = sub nsw i32 1597463007, %7680
  %7682 = bitcast i32 %7681 to float
  %7683 = fmul fast float %7682, %7396
  %7684 = fmul fast float %7682, %7397
  %7685 = fmul fast float %7682, %7398
  %7686 = fsub fast float %7683, %5824
  %7687 = fsub fast float %7684, %5825
  %7688 = fsub fast float %7685, %5826
  %7689 = call float @dx.op.dot3.f32(i32 55, float %7686, float %7687, float %7688, float %7686, float %7687, float %7688)  ; Dot3(ax,ay,az,bx,by,bz)
  %7690 = call float @dx.op.unary.f32(i32 25, float %7689)  ; Rsqrt(value)
  %7691 = fmul fast float %7686, %7690
  %7692 = fmul fast float %7687, %7690
  %7693 = fmul fast float %7688, %7690
  %7694 = call float @dx.op.dot3.f32(i32 55, float %5784, float %5785, float %5786, float %7691, float %7692, float %7693)  ; Dot3(ax,ay,az,bx,by,bz)
  %7695 = fmul fast float %7694, %7694
  %7696 = call float @dx.op.unary.f32(i32 6, float %7671)  ; FAbs(value)
  %7697 = fsub fast float 1.000000e+00, %5787
  %7698 = call float @dx.op.binary.f32(i32 35, float %7697, float 0x3F847AE140000000)  ; FMax(a,b)
  %7699 = fmul fast float %7698, %7698
  %7700 = fmul fast float %7699, %7699
  %7701 = fsub fast float 1.000000e+00, %7700
  %7702 = fmul fast float %5832, %5832
  %7703 = fmul fast float %7702, %7701
  %7704 = fadd fast float %7703, %7700
  %7705 = bitcast float %7704 to i32
  %7706 = ashr i32 %7705, 1
  %7707 = add nsw i32 %7706, 532487669
  %7708 = bitcast i32 %7707 to float
  %7709 = fadd fast float %7708, %5832
  %7710 = fmul fast float %7700, %7695
  %7711 = fsub fast float 1.000000e+00, %7695
  %7712 = fadd fast float %7711, %7710
  %7713 = fmul fast float %7696, %7696
  %7714 = fmul fast float %7713, %7701
  %7715 = fadd fast float %7714, %7700
  %7716 = bitcast float %7715 to i32
  %7717 = ashr i32 %7716, 1
  %7718 = add nsw i32 %7717, 532487669
  %7719 = bitcast i32 %7718 to float
  %7720 = fadd fast float %7719, %7696
  %7721 = fmul fast float %7712, %7712
  %7722 = fmul fast float %7721, %7709
  %7723 = fmul fast float %7722, %7720
  %7724 = fdiv fast float 1.000000e+00, %7723
  %7725 = bitcast float %7700 to i32
  %7726 = sitofp i32 %7725 to float
  %7727 = fmul fast float %7726, 0x3FE7F73180000000
  %7728 = fadd fast float %7727, 0x41AFE27C40000000
  %7729 = fptosi float %7728 to i32
  %7730 = bitcast i32 %7729 to float
  %7731 = fmul fast float %7365, 0x3FD80E9D60000000
  %7732 = fmul fast float %7731, %7682
  %7733 = fadd fast float %7730, %7732
  %7734 = bitcast float %7733 to i32
  %7735 = sub nsw i32 2129859010, %7734
  %7736 = bitcast i32 %7735 to float
  %7737 = fmul fast float %7700, %7724
  %7738 = fmul fast float %7737, %7730
  %7739 = fmul fast float %7738, %7736
  %7740 = fmul fast float %5949, 0x3FF9999980000000
  %7741 = fsub fast float 5.000000e+00, %7740
  %7742 = call float @dx.op.unary.f32(i32 6, float %7672)  ; FAbs(value)
  %7743 = fsub fast float 1.000000e+00, %7742
  %7744 = fmul fast float %5949, 0x41D9660740000000
  %7745 = fadd fast float %7744, 0xC1EFBF8940000000
  %7746 = bitcast float %7743 to i32
  %7747 = sitofp i32 %7746 to float
  %7748 = fmul fast float %7747, %7741
  %7749 = fadd fast float %7745, %7748
  %7750 = fptosi float %7749 to i32
  %7751 = bitcast i32 %7750 to float
  %7752 = fsub fast float 1.000000e+00, %5781
  %7753 = fsub fast float 1.000000e+00, %5782
  %7754 = fsub fast float 1.000000e+00, %5830
  %7755 = fmul fast float %7751, %7752
  %7756 = fmul fast float %7751, %7753
  %7757 = fmul fast float %7751, %7754
  %7758 = fadd fast float %7755, %5781
  %7759 = fadd fast float %7756, %5782
  %7760 = fadd fast float %7757, %5830
  br i1 %5972, label %7761, label %7784

; <label>:7761                                    ; preds = %7643
  %7762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4594, float %7742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7763 = extractvalue %dx.types.ResRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.ResRet.f32 %7762, 1
  %7765 = extractvalue %dx.types.ResRet.f32 %7762, 2
  %7766 = fadd fast float %7763, -5.000000e-01
  %7767 = fadd fast float %7764, -5.000000e-01
  %7768 = fadd fast float %7765, -5.000000e-01
  %7769 = fmul fast float %5781, 4.000000e+00
  %7770 = fmul fast float %7769, %7752
  %7771 = fmul fast float %7770, %7766
  %7772 = fmul fast float %5782, 4.000000e+00
  %7773 = fmul fast float %7772, %7753
  %7774 = fmul fast float %7773, %7767
  %7775 = fmul fast float %5830, 4.000000e+00
  %7776 = fmul fast float %7775, %7754
  %7777 = fmul fast float %7776, %7768
  %7778 = fadd fast float %7771, %7758
  %7779 = fadd fast float %7774, %7759
  %7780 = fadd fast float %7777, %7760
  %7781 = call float @dx.op.unary.f32(i32 7, float %7778)  ; Saturate(value)
  %7782 = call float @dx.op.unary.f32(i32 7, float %7779)  ; Saturate(value)
  %7783 = call float @dx.op.unary.f32(i32 7, float %7780)  ; Saturate(value)
  br label %7784

; <label>:7784                                    ; preds = %7761, %7643
  %7785 = phi float [ %7781, %7761 ], [ %7758, %7643 ]
  %7786 = phi float [ %7782, %7761 ], [ %7759, %7643 ]
  %7787 = phi float [ %7783, %7761 ], [ %7760, %7643 ]
  %7788 = fmul fast float %7671, 9.843750e-01
  %7789 = fadd fast float %7788, 7.812500e-03
  %7790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %49, float %7789, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7791 = extractvalue %dx.types.ResRet.f32 %7790, 0
  %7792 = extractvalue %dx.types.ResRet.f32 %7790, 1
  %7793 = extractvalue %dx.types.ResRet.f32 %7790, 2
  %7794 = extractvalue %dx.types.ResRet.f32 %7790, 3
  %7795 = fsub fast float %7793, %7791
  %7796 = fsub fast float %7794, %7792
  %7797 = fmul fast float %7795, %5959
  %7798 = fmul fast float %7796, %5959
  %7799 = fadd fast float %7797, %7791
  %7800 = fadd fast float %7798, %7792
  %7801 = fmul fast float %7799, %5781
  %7802 = fmul fast float %7799, %5782
  %7803 = fmul fast float %7799, %5830
  %7804 = fadd fast float %7801, %7800
  %7805 = fadd fast float %7802, %7800
  %7806 = fadd fast float %7803, %7800
  br i1 %5972, label %7807, label %7830

; <label>:7807                                    ; preds = %7784
  %7808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %49, float %4594, float %7671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7809 = extractvalue %dx.types.ResRet.f32 %7808, 0
  %7810 = extractvalue %dx.types.ResRet.f32 %7808, 1
  %7811 = extractvalue %dx.types.ResRet.f32 %7808, 2
  %7812 = fadd fast float %7809, -5.000000e-01
  %7813 = fadd fast float %7810, -5.000000e-01
  %7814 = fadd fast float %7811, -5.000000e-01
  %7815 = fmul fast float %5781, 4.000000e+00
  %7816 = fmul fast float %7815, %7752
  %7817 = fmul fast float %7816, %7812
  %7818 = fmul fast float %5782, 4.000000e+00
  %7819 = fmul fast float %7818, %7753
  %7820 = fmul fast float %7819, %7813
  %7821 = fmul fast float %5830, 4.000000e+00
  %7822 = fmul fast float %7821, %7754
  %7823 = fmul fast float %7822, %7814
  %7824 = fadd fast float %7817, %7804
  %7825 = fadd fast float %7820, %7805
  %7826 = fadd fast float %7823, %7806
  %7827 = call float @dx.op.unary.f32(i32 7, float %7824)  ; Saturate(value)
  %7828 = call float @dx.op.unary.f32(i32 7, float %7825)  ; Saturate(value)
  %7829 = call float @dx.op.unary.f32(i32 7, float %7826)  ; Saturate(value)
  br label %7830

; <label>:7830                                    ; preds = %7807, %7784
  %7831 = phi float [ %7827, %7807 ], [ %7804, %7784 ]
  %7832 = phi float [ %7828, %7807 ], [ %7805, %7784 ]
  %7833 = phi float [ %7829, %7807 ], [ %7806, %7784 ]
  %7834 = call float @dx.op.binary.f32(i32 35, float %7832, float %7833)  ; FMax(a,b)
  %7835 = call float @dx.op.binary.f32(i32 35, float %7831, float %7834)  ; FMax(a,b)
  %7836 = fsub fast float 1.000000e+00, %7835
  %7837 = fmul fast float %7785, %7739
  %7838 = fmul fast float %7786, %7739
  %7839 = fmul fast float %7787, %7739
  %7840 = fsub fast float 1.000000e+00, %7672
  %7841 = bitcast float %7840 to i32
  %7842 = sitofp i32 %7841 to float
  %7843 = fmul fast float %7842, 5.000000e+00
  %7844 = fadd fast float %7843, 0xC1EFBF8940000000
  %7845 = fptosi float %7844 to i32
  %7846 = bitcast i32 %7845 to float
  %7847 = fmul fast float %7846, %4595
  %7848 = fmul fast float %7836, %7847
  %7849 = fmul fast float %7848, %6075
  %7850 = fmul fast float %7848, %6076
  %7851 = fmul fast float %7848, %6077
  %7852 = fadd fast float %7849, %7837
  %7853 = fadd fast float %7850, %7838
  %7854 = fadd fast float %7851, %7839
  %7855 = fmul fast float %7660, %4591
  %7856 = fmul fast float %7855, %7678
  %7857 = fmul fast float %7856, %7836
  %7858 = fmul fast float %7661, %4591
  %7859 = fmul fast float %7858, %7678
  %7860 = fmul fast float %7859, %7836
  %7861 = fmul fast float %7662, %4591
  %7862 = fmul fast float %7861, %7678
  %7863 = fmul fast float %7862, %7836
  %7864 = fadd fast float %7857, %7339
  %7865 = fadd fast float %7860, %7340
  %7866 = fadd fast float %7863, %7341
  %7867 = fmul fast float %7856, %7852
  %7868 = fmul fast float %7859, %7853
  %7869 = fmul fast float %7862, %7854
  %7870 = fadd fast float %7867, %7336
  %7871 = fadd fast float %7868, %7337
  %7872 = fadd fast float %7869, %7338
  br label %7468

; <label>:7873                                    ; preds = %7468
  br label %7874

; <label>:7874                                    ; preds = %7873, %7302
  %7875 = phi float [ %7304, %7302 ], [ %7469, %7873 ]
  %7876 = phi float [ %7305, %7302 ], [ %7470, %7873 ]
  %7877 = phi float [ %7306, %7302 ], [ %7471, %7873 ]
  %7878 = phi float [ %7307, %7302 ], [ %7472, %7873 ]
  %7879 = phi float [ %7308, %7302 ], [ %7473, %7873 ]
  %7880 = phi float [ %7309, %7302 ], [ %7474, %7873 ]
  %7881 = add i32 %7303, 1
  %7882 = icmp ugt i32 %7881, %7299
  br i1 %7882, label %7883, label %7302

; <label>:7883                                    ; preds = %7874
  br label %7884

; <label>:7884                                    ; preds = %7883, %7252, %7242
  %7885 = phi float [ %7243, %7242 ], [ %7243, %7252 ], [ %7875, %7883 ]
  %7886 = phi float [ %7244, %7242 ], [ %7244, %7252 ], [ %7876, %7883 ]
  %7887 = phi float [ %7245, %7242 ], [ %7245, %7252 ], [ %7877, %7883 ]
  %7888 = phi float [ %7246, %7242 ], [ %7246, %7252 ], [ %7878, %7883 ]
  %7889 = phi float [ %7247, %7242 ], [ %7247, %7252 ], [ %7879, %7883 ]
  %7890 = phi float [ %7248, %7242 ], [ %7248, %7252 ], [ %7880, %7883 ]
  %7891 = fmul fast float %4591, %4591
  %7892 = fmul fast float %7891, %6111
  %7893 = fsub fast float -0.000000e+00, %7892
  %7894 = fmul fast float %7891, %6112
  %7895 = fsub fast float -0.000000e+00, %7894
  %7896 = fmul fast float %7891, %6113
  %7897 = fsub fast float -0.000000e+00, %7896
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 0
  %7900 = fmul fast float %7899, %6117
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 3
  %7903 = fsub fast float 1.000000e+00, %4598
  %7904 = call float @dx.op.unary.f32(i32 7, float %7903)  ; Saturate(value)
  %7905 = fadd fast float %7890, %4597
  %7906 = fmul fast float %7905, %4598
  %7907 = fmul fast float %7904, %7902
  %7908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7909 = extractvalue %dx.types.CBufRet.f32 %7908, 3
  %7910 = fmul fast float %7888, %5778
  %7911 = fmul fast float %7889, %5779
  %7912 = fmul fast float %7890, %5780
  %7913 = fcmp fast ogt float %99, %217
  %7914 = and i1 %7913, %5004
  %7915 = or i1 %5010, %7914
  %7916 = icmp eq i32 %5003, 2
  %7917 = fcmp fast ole float %99, %217
  %7918 = and i1 %7917, %7916
  %7919 = or i1 %7918, %7915
  br i1 %7914, label %7920, label %8177

; <label>:7920                                    ; preds = %7884
  %7921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7921, 2
  %7923 = extractvalue %dx.types.CBufRet.f32 %7921, 3
  %7924 = fmul fast float %7922, %108
  %7925 = fmul fast float %7923, %109
  %7926 = call float @dx.op.unary.f32(i32 7, float %7924)  ; Saturate(value)
  %7927 = call float @dx.op.unary.f32(i32 7, float %7925)  ; Saturate(value)
  %7928 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7926, float %7927, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7929 = extractvalue %dx.types.ResRet.f32 %7928, 0
  %7930 = extractvalue %dx.types.ResRet.f32 %7928, 1
  %7931 = extractvalue %dx.types.ResRet.f32 %7928, 2
  %7932 = extractvalue %dx.types.ResRet.f32 %7928, 3
  %7933 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %7926, float %7927, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7934 = extractvalue %dx.types.ResRet.f32 %7933, 0
  %7935 = extractvalue %dx.types.ResRet.f32 %7933, 1
  %7936 = extractvalue %dx.types.ResRet.f32 %7933, 2
  %7937 = extractvalue %dx.types.ResRet.f32 %7933, 3
  %7938 = call float @dx.op.binary.f32(i32 35, float %7930, float %7931)  ; FMax(a,b)
  %7939 = call float @dx.op.binary.f32(i32 35, float %7929, float %7938)  ; FMax(a,b)
  %7940 = call float @dx.op.binary.f32(i32 35, float %7939, float %7932)  ; FMax(a,b)
  %7941 = call float @dx.op.binary.f32(i32 36, float %7935, float %7936)  ; FMin(a,b)
  %7942 = call float @dx.op.binary.f32(i32 36, float %7934, float %7941)  ; FMin(a,b)
  %7943 = call float @dx.op.binary.f32(i32 36, float %7942, float %7937)  ; FMin(a,b)
  %7944 = fmul fast float %7940, 2.550000e+02
  %7945 = fadd fast float %7944, 0x3F70101020000000
  %7946 = fptoui float %7945 to i32
  %7947 = fmul fast float %7943, 2.550000e+02
  %7948 = fadd fast float %7947, 0x3F70101020000000
  %7949 = fptoui float %7948 to i32
  %7950 = icmp ult i32 %7946, %7949
  br i1 %7950, label %7951, label %8119

; <label>:7951                                    ; preds = %7920
  %7952 = fcmp fast ogt float %98, 9.843750e-01
  %7953 = fadd fast float %99, -4.000000e+00
  %7954 = select i1 %7952, float -4.000000e+00, float %7953
  %7955 = call float @dx.op.binary.f32(i32 35, float %7954, float 0.000000e+00)  ; FMax(a,b)
  %7956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7957 = extractvalue %dx.types.CBufRet.f32 %7956, 0
  %7958 = fadd fast float %7957, %7955
  %7959 = extractvalue %dx.types.CBufRet.f32 %7956, 2
  %7960 = fmul fast float %7958, %7959
  %7961 = call float @dx.op.unary.f32(i32 23, float %7960)  ; Log(value)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7956, 3
  %7963 = fmul fast float %7962, %7961
  %7964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7965 = extractvalue %dx.types.CBufRet.f32 %7964, 2
  %7966 = fmul fast float %7963, %7965
  %7967 = call float @dx.op.unary.f32(i32 7, float %7966)  ; Saturate(value)
  %7968 = uitofp i32 %7946 to float
  %7969 = uitofp i32 %7949 to float
  %7970 = fadd fast float %7968, 5.000000e-01
  %7971 = fadd fast float %7969, 5.000000e-01
  %7972 = fmul fast float %7965, %7970
  %7973 = fmul fast float %7965, %7971
  %7974 = fadd fast float %7972, 0x3F0FFB4800000000
  %7975 = fadd fast float %7973, 0xBF0FFB4800000000
  %7976 = call float @dx.op.binary.f32(i32 35, float %7967, float %7974)  ; FMax(a,b)
  %7977 = call float @dx.op.binary.f32(i32 36, float %7976, float %7975)  ; FMin(a,b)
  %7978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7979 = extractvalue %dx.types.CBufRet.f32 %7978, 1
  %7980 = extractvalue %dx.types.CBufRet.f32 %7978, 2
  %7981 = extractvalue %dx.types.CBufRet.f32 %7978, 0
  %7982 = fmul fast float %7979, %7977
  %7983 = fadd fast float %7981, %7982
  %7984 = fadd fast float %7981, %7980
  %7985 = fsub fast float %7979, %7980
  %7986 = fadd fast float %7985, %7981
  %7987 = call float @dx.op.binary.f32(i32 35, float %7983, float %7984)  ; FMax(a,b)
  %7988 = call float @dx.op.binary.f32(i32 36, float %7987, float %7986)  ; FMin(a,b)
  %7989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %7926, float %7927, float %7988, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7990 = extractvalue %dx.types.ResRet.f32 %7989, 0
  %7991 = extractvalue %dx.types.ResRet.f32 %7989, 1
  %7992 = extractvalue %dx.types.ResRet.f32 %7989, 2
  %7993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7994 = extractvalue %dx.types.CBufRet.i32 %7993, 0
  %7995 = extractvalue %dx.types.CBufRet.i32 %7993, 1
  %7996 = uitofp i32 %7994 to float
  %7997 = uitofp i32 %7995 to float
  %7998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7999 = extractvalue %dx.types.CBufRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.CBufRet.f32 %7998, 1
  %8001 = fmul fast float %7996, %7926
  %8002 = fmul fast float %7997, %7927
  %8003 = fadd fast float %8001, -5.000000e-01
  %8004 = fadd fast float %8002, -5.000000e-01
  %8005 = call float @dx.op.unary.f32(i32 22, float %8003)  ; Frc(value)
  %8006 = call float @dx.op.unary.f32(i32 22, float %8004)  ; Frc(value)
  %8007 = fmul fast float %8005, %8005
  %8008 = fmul fast float %8007, %8005
  %8009 = fsub fast float 3.000000e+00, %8005
  %8010 = fmul fast float %8007, %8009
  %8011 = fmul fast float %8005, 3.000000e+00
  %8012 = fmul fast float %8008, 3.000000e+00
  %8013 = fmul fast float %8007, 6.000000e+00
  %8014 = fsub fast float %8012, %8013
  %8015 = fadd fast float %8014, 4.000000e+00
  %8016 = fmul fast float %8015, 0x3FC5555560000000
  %8017 = fmul fast float %8008, -3.000000e+00
  %8018 = fadd fast float %8007, %8005
  %8019 = fmul fast float %8018, 3.000000e+00
  %8020 = fadd fast float %8017, 1.000000e+00
  %8021 = fadd fast float %8020, %8019
  %8022 = fmul fast float %8008, 0x3FC5555560000000
  %8023 = fmul fast float %8006, %8006
  %8024 = fmul fast float %8023, %8006
  %8025 = fsub fast float 3.000000e+00, %8006
  %8026 = fmul fast float %8023, %8025
  %8027 = fmul fast float %8006, 3.000000e+00
  %8028 = fmul fast float %8024, 3.000000e+00
  %8029 = fmul fast float %8023, 6.000000e+00
  %8030 = fsub fast float %8028, %8029
  %8031 = fadd fast float %8030, 4.000000e+00
  %8032 = fmul fast float %8031, 0x3FC5555560000000
  %8033 = fmul fast float %8024, -3.000000e+00
  %8034 = fadd fast float %8023, %8006
  %8035 = fmul fast float %8034, 3.000000e+00
  %8036 = fadd fast float %8033, 1.000000e+00
  %8037 = fadd fast float %8036, %8035
  %8038 = fmul fast float %8024, 0x3FC5555560000000
  %8039 = fadd fast float %8005, 1.000000e+00
  %8040 = fsub fast float 1.000000e+00, %8011
  %8041 = fadd fast float %8040, %8010
  %8042 = fadd fast float %8041, %8015
  %8043 = fmul fast float %8042, 0x3FC5555560000000
  %8044 = fdiv fast float %8016, %8043
  %8045 = fsub fast float %8039, %8044
  %8046 = fsub fast float 1.000000e+00, %8005
  %8047 = fadd fast float %8021, %8008
  %8048 = fmul fast float %8047, 0x3FC5555560000000
  %8049 = fdiv fast float %8022, %8048
  %8050 = fadd fast float %8046, %8049
  %8051 = fadd fast float %8006, 1.000000e+00
  %8052 = fsub fast float 1.000000e+00, %8027
  %8053 = fadd fast float %8052, %8026
  %8054 = fadd fast float %8053, %8031
  %8055 = fmul fast float %8054, 0x3FC5555560000000
  %8056 = fdiv fast float %8032, %8055
  %8057 = fsub fast float %8051, %8056
  %8058 = fsub fast float 1.000000e+00, %8006
  %8059 = fadd fast float %8037, %8024
  %8060 = fmul fast float %8059, 0x3FC5555560000000
  %8061 = fdiv fast float %8038, %8060
  %8062 = fadd fast float %8061, %8058
  %8063 = fmul fast float %8045, %7999
  %8064 = fsub fast float %7926, %8063
  %8065 = fmul fast float %8050, %7999
  %8066 = fadd fast float %8065, %7926
  %8067 = fmul fast float %8062, %8000
  %8068 = fadd fast float %8067, %7927
  %8069 = fmul fast float %8057, %8000
  %8070 = fsub fast float %7927, %8069
  %8071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8064, float %8070, float %7988, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8072 = extractvalue %dx.types.ResRet.f32 %8071, 0
  %8073 = extractvalue %dx.types.ResRet.f32 %8071, 1
  %8074 = extractvalue %dx.types.ResRet.f32 %8071, 2
  %8075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8066, float %8070, float %7988, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8076 = extractvalue %dx.types.ResRet.f32 %8075, 0
  %8077 = extractvalue %dx.types.ResRet.f32 %8075, 1
  %8078 = extractvalue %dx.types.ResRet.f32 %8075, 2
  %8079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8064, float %8068, float %7988, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8080 = extractvalue %dx.types.ResRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.ResRet.f32 %8079, 1
  %8082 = extractvalue %dx.types.ResRet.f32 %8079, 2
  %8083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %8066, float %8068, float %7988, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8084 = extractvalue %dx.types.ResRet.f32 %8083, 0
  %8085 = extractvalue %dx.types.ResRet.f32 %8083, 1
  %8086 = extractvalue %dx.types.ResRet.f32 %8083, 2
  %8087 = fsub fast float %8080, %8072
  %8088 = fsub fast float %8081, %8073
  %8089 = fsub fast float %8082, %8074
  %8090 = fmul fast float %8087, %8060
  %8091 = fmul fast float %8088, %8060
  %8092 = fmul fast float %8089, %8060
  %8093 = fadd fast float %8090, %8072
  %8094 = fadd fast float %8091, %8073
  %8095 = fadd fast float %8092, %8074
  %8096 = fsub fast float %8084, %8076
  %8097 = fsub fast float %8085, %8077
  %8098 = fsub fast float %8086, %8078
  %8099 = fmul fast float %8096, %8060
  %8100 = fmul fast float %8097, %8060
  %8101 = fmul fast float %8098, %8060
  %8102 = fsub fast float %8076, %8093
  %8103 = fadd fast float %8102, %8099
  %8104 = fsub fast float %8077, %8094
  %8105 = fadd fast float %8104, %8100
  %8106 = fsub fast float %8078, %8095
  %8107 = fadd fast float %8106, %8101
  %8108 = fmul fast float %8103, %8048
  %8109 = fmul fast float %8105, %8048
  %8110 = fmul fast float %8107, %8048
  %8111 = fadd fast float %8108, %8093
  %8112 = fadd fast float %8109, %8094
  %8113 = fadd fast float %8110, %8095
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 1
  %8116 = fmul fast float %8111, %8115
  %8117 = fmul fast float %8112, %8115
  %8118 = fmul fast float %8113, %8115
  br label %8119

; <label>:8119                                    ; preds = %7951, %7920
  %8120 = phi float [ %7990, %7951 ], [ 1.000000e+00, %7920 ]
  %8121 = phi float [ %7991, %7951 ], [ 1.000000e+00, %7920 ]
  %8122 = phi float [ %7992, %7951 ], [ 1.000000e+00, %7920 ]
  %8123 = phi float [ %8116, %7951 ], [ 0.000000e+00, %7920 ]
  %8124 = phi float [ %8117, %7951 ], [ 0.000000e+00, %7920 ]
  %8125 = phi float [ %8118, %7951 ], [ 0.000000e+00, %7920 ]
  %8126 = fmul fast float %8123, %7893
  %8127 = fmul fast float %8124, %7895
  %8128 = fmul fast float %8125, %7897
  %8129 = call float @dx.op.dot3.f32(i32 55, float %8120, float %8121, float %8122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8130 = call float @dx.op.dot3.f32(i32 55, float %8126, float %8127, float %8128, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8131 = select i1 %254, float %8129, float %8120
  %8132 = select i1 %254, float %8129, float %8121
  %8133 = select i1 %254, float 1.000000e+00, float %8122
  %8134 = select i1 %254, float %8130, float %8126
  %8135 = select i1 %254, float 0.000000e+00, float %8127
  %8136 = select i1 %254, float 0.000000e+00, float %8128
  %8137 = fmul fast float %8131, %7910
  %8138 = fmul fast float %8132, %7911
  %8139 = fmul fast float %8133, %7912
  %8140 = fadd fast float %8137, %8134
  %8141 = fadd fast float %8138, %8135
  %8142 = fadd fast float %8136, %8139
  %8143 = fmul fast float %8131, %7885
  %8144 = fmul fast float %8132, %7886
  %8145 = fmul fast float %8133, %7887
  %8146 = fmul fast float %144, %7922
  %8147 = fmul fast float %146, %7923
  %8148 = fsub fast float 1.000000e+00, %8146
  %8149 = fsub fast float 1.000000e+00, %8147
  %8150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8151 = extractvalue %dx.types.CBufRet.f32 %8150, 0
  %8152 = extractvalue %dx.types.CBufRet.f32 %8150, 1
  %8153 = extractvalue %dx.types.CBufRet.f32 %8150, 2
  %8154 = fmul fast float %8148, %8151
  %8155 = fmul fast float %8148, %8152
  %8156 = fmul fast float %8148, %8153
  %8157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8158 = extractvalue %dx.types.CBufRet.f32 %8157, 0
  %8159 = extractvalue %dx.types.CBufRet.f32 %8157, 1
  %8160 = extractvalue %dx.types.CBufRet.f32 %8157, 2
  %8161 = fmul fast float %8149, %8158
  %8162 = fmul fast float %8149, %8159
  %8163 = fmul fast float %8149, %8160
  %8164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8165 = extractvalue %dx.types.CBufRet.f32 %8164, 0
  %8166 = extractvalue %dx.types.CBufRet.f32 %8164, 1
  %8167 = extractvalue %dx.types.CBufRet.f32 %8164, 2
  %8168 = fadd fast float %8161, %8165
  %8169 = fadd fast float %8168, %8154
  %8170 = fadd fast float %8162, %8166
  %8171 = fadd fast float %8170, %8155
  %8172 = fadd fast float %8163, %8167
  %8173 = fadd fast float %8172, %8156
  %8174 = fmul fast float %8169, %217
  %8175 = fmul fast float %8171, %217
  %8176 = fmul fast float %8173, %217
  br label %8177

; <label>:8177                                    ; preds = %8119, %7884
  %8178 = phi float [ %8174, %8119 ], [ %195, %7884 ]
  %8179 = phi float [ %8175, %8119 ], [ %196, %7884 ]
  %8180 = phi float [ %8176, %8119 ], [ %197, %7884 ]
  %8181 = phi float [ %217, %8119 ], [ %99, %7884 ]
  %8182 = phi float [ %8140, %8119 ], [ %7910, %7884 ]
  %8183 = phi float [ %8141, %8119 ], [ %7911, %7884 ]
  %8184 = phi float [ %8142, %8119 ], [ %7912, %7884 ]
  %8185 = phi float [ %8143, %8119 ], [ %7885, %7884 ]
  %8186 = phi float [ %8144, %8119 ], [ %7886, %7884 ]
  %8187 = phi float [ %8145, %8119 ], [ %7887, %7884 ]
  %8188 = phi float [ %8120, %8119 ], [ 1.000000e+00, %7884 ]
  br i1 %7919, label %9339, label %8189

; <label>:8189                                    ; preds = %8177
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.CBufRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.CBufRet.f32 %8190, 2
  %8194 = extractvalue %dx.types.CBufRet.f32 %8190, 3
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 0
  %8197 = extractvalue %dx.types.CBufRet.f32 %8195, 1
  %8198 = extractvalue %dx.types.CBufRet.f32 %8195, 2
  %8199 = extractvalue %dx.types.CBufRet.f32 %8195, 3
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 0
  %8202 = extractvalue %dx.types.CBufRet.f32 %8200, 1
  %8203 = extractvalue %dx.types.CBufRet.f32 %8200, 2
  %8204 = extractvalue %dx.types.CBufRet.f32 %8200, 3
  %8205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.f32 %8205, 0
  %8207 = extractvalue %dx.types.CBufRet.f32 %8205, 1
  %8208 = extractvalue %dx.types.CBufRet.f32 %8205, 2
  %8209 = extractvalue %dx.types.CBufRet.f32 %8205, 3
  %8210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8211 = extractvalue %dx.types.CBufRet.f32 %8210, 3
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 3
  %8214 = extractvalue %dx.types.CBufRet.f32 %8212, 0
  %8215 = extractvalue %dx.types.CBufRet.f32 %8212, 1
  %8216 = extractvalue %dx.types.CBufRet.f32 %8212, 2
  %8217 = fcmp fast olt float %8216, -5.000000e-01
  %8218 = call float @dx.op.dot3.f32(i32 55, float %8178, float %8179, float %8180, float %8178, float %8179, float %8180)  ; Dot3(ax,ay,az,bx,by,bz)
  %8219 = call float @dx.op.unary.f32(i32 25, float %8218)  ; Rsqrt(value)
  %8220 = fmul fast float %8219, %8218
  %8221 = fmul fast float %8219, %8178
  %8222 = fmul fast float %8219, %8179
  %8223 = fmul fast float %8219, %8180
  %8224 = fadd fast float %8220, %8194
  %8225 = call float @dx.op.dot3.f32(i32 55, float %8221, float %8222, float %8223, float %8191, float %8192, float %8193)  ; Dot3(ax,ay,az,bx,by,bz)
  %8226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8227 = extractvalue %dx.types.CBufRet.i32 %8226, 1
  %8228 = and i32 %8227, 1
  %8229 = icmp ne i32 %8228, 0
  %8230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8231 = extractvalue %dx.types.CBufRet.f32 %8230, 2
  %8232 = fcmp fast ogt float %8231, 0.000000e+00
  %8233 = and i1 %8229, %8232
  br i1 %8233, label %8234, label %8636, !dx.controlflow.hints !129

; <label>:8234                                    ; preds = %8189
  %8235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8236 = extractvalue %dx.types.CBufRet.f32 %8235, 3
  %8237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8238 = extractvalue %dx.types.CBufRet.f32 %8237, 2
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 2
  %8241 = fsub fast float %8238, %8240
  %8242 = and i32 %8227, 2
  %8243 = extractvalue %dx.types.CBufRet.i32 %8226, 0
  %8244 = call i32 @dx.op.binary.i32(i32 40, i32 %8243, i32 3)  ; UMin(a,b)
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.CBufRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.CBufRet.f32 %8239, 0
  %8249 = extractvalue %dx.types.CBufRet.f32 %8239, 1
  %8250 = fsub fast float %8246, %8248
  %8251 = fsub fast float %8247, %8249
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 0
  %8254 = fcmp fast ogt float %8253, 0.000000e+00
  %8255 = fsub fast float -0.000000e+00, %8250
  %8256 = fsub fast float -0.000000e+00, %8251
  %8257 = call float @dx.op.dot2.f32(i32 54, float %8221, float %8222, float %8221, float %8222)  ; Dot2(ax,ay,bx,by)
  %8258 = call float @dx.op.dot2.f32(i32 54, float %8221, float %8222, float %8255, float %8256)  ; Dot2(ax,ay,bx,by)
  %8259 = fmul fast float %8258, 2.000000e+00
  %8260 = call float @dx.op.dot2.f32(i32 54, float %8255, float %8256, float %8255, float %8256)  ; Dot2(ax,ay,bx,by)
  %8261 = fmul fast float %8253, %8253
  %8262 = fsub fast float %8260, %8261
  %8263 = fmul fast float %8259, %8259
  %8264 = fmul fast float %8257, 4.000000e+00
  %8265 = fmul fast float %8264, %8262
  %8266 = fsub fast float %8263, %8265
  %8267 = fcmp fast ogt float %8266, 0.000000e+00
  br i1 %8267, label %8268, label %8283

; <label>:8268                                    ; preds = %8234
  %8269 = fcmp fast ogt float %8259, 0.000000e+00
  %8270 = call float @dx.op.unary.f32(i32 24, float %8266)  ; Sqrt(value)
  %8271 = fsub fast float -0.000000e+00, %8270
  %8272 = select i1 %8269, float %8270, float %8271
  %8273 = fadd fast float %8272, %8259
  %8274 = fmul float %8273, -5.000000e-01
  %8275 = fdiv fast float %8274, %8257
  %8276 = call float @dx.op.binary.f32(i32 35, float %8275, float 0.000000e+00)  ; FMax(a,b)
  %8277 = call float @dx.op.binary.f32(i32 36, float %8220, float %8276)  ; FMin(a,b)
  %8278 = fdiv fast float %8262, %8274
  %8279 = call float @dx.op.binary.f32(i32 35, float %8278, float 0.000000e+00)  ; FMax(a,b)
  %8280 = call float @dx.op.binary.f32(i32 36, float %8220, float %8279)  ; FMin(a,b)
  %8281 = call float @dx.op.binary.f32(i32 36, float %8277, float %8280)  ; FMin(a,b)
  %8282 = call float @dx.op.binary.f32(i32 35, float %8277, float %8280)  ; FMax(a,b)
  br label %8283

; <label>:8283                                    ; preds = %8268, %8234
  %8284 = phi float [ %8282, %8268 ], [ -1.000000e+00, %8234 ]
  %8285 = phi float [ %8281, %8268 ], [ -1.000000e+00, %8234 ]
  %8286 = phi i1 [ true, %8268 ], [ false, %8234 ]
  %8287 = and i1 %8254, %8286
  br i1 %8287, label %8288, label %8290

; <label>:8288                                    ; preds = %8283
  %8289 = fcmp fast oeq float %8285, %8284
  br i1 %8289, label %8589, label %8291

; <label>:8290                                    ; preds = %8283
  br i1 %8254, label %8589, label %8291

; <label>:8291                                    ; preds = %8290, %8288
  %8292 = phi float [ %8220, %8290 ], [ %8284, %8288 ]
  %8293 = phi float [ 0.000000e+00, %8290 ], [ %8285, %8288 ]
  %8294 = icmp ne i32 %8242, 0
  %8295 = fmul fast float %8292, %8223
  %8296 = fadd fast float %8295, %8236
  %8297 = fmul fast float %8296, %8292
  %8298 = select i1 %8294, float 0.000000e+00, float %8297
  %8299 = fcmp fast oeq float %8223, 0.000000e+00
  %8300 = fdiv fast float %8241, %8223
  %8301 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8300)  ; FMax(a,b)
  %8302 = select i1 %8299, float %8292, float %8301
  %8303 = call float @dx.op.binary.f32(i32 36, float %8292, float %8302)  ; FMin(a,b)
  %8304 = fcmp fast ogt float %8223, 0.000000e+00
  %8305 = fcmp fast olt float %8241, 0.000000e+00
  br i1 %8304, label %8306, label %8363

; <label>:8306                                    ; preds = %8291
  %8307 = icmp eq i32 %8242, 0
  br i1 %8305, label %8308, label %8352

; <label>:8308                                    ; preds = %8306
  %8309 = select i1 %8307, float %8292, float 0.000000e+00
  %8310 = fsub fast float -0.000000e+00, %8309
  %8311 = call float @dx.op.unary.f32(i32 6, float %8310)  ; FAbs(value)
  %8312 = fmul fast float %8309, %8223
  %8313 = fadd fast float %8312, %8236
  %8314 = fmul fast float %8311, %8313
  %8315 = fsub fast float %8298, %8314
  %8316 = fsub fast float %8292, %8311
  %8317 = select i1 %8307, float %8316, float 0.000000e+00
  %8318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8319 = extractvalue %dx.types.CBufRet.f32 %8318, 0
  %8320 = extractvalue %dx.types.CBufRet.f32 %8318, 1
  %8321 = extractvalue %dx.types.CBufRet.f32 %8318, 2
  %8322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8323 = extractvalue %dx.types.CBufRet.f32 %8322, 0
  %8324 = extractvalue %dx.types.CBufRet.f32 %8322, 1
  %8325 = extractvalue %dx.types.CBufRet.f32 %8322, 2
  %8326 = extractvalue %dx.types.CBufRet.f32 %8322, 3
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 3
  %8329 = call float @dx.op.binary.f32(i32 36, float %8315, float %8328)  ; FMin(a,b)
  %8330 = fmul fast float %8326, %8317
  %8331 = call float @dx.op.unary.f32(i32 7, float %8330)  ; Saturate(value)
  %8332 = fsub fast float %8323, %8319
  %8333 = fsub fast float %8324, %8320
  %8334 = fsub fast float %8325, %8321
  %8335 = fmul fast float %8331, %8332
  %8336 = fmul fast float %8331, %8333
  %8337 = fmul fast float %8331, %8334
  %8338 = fadd fast float %8335, %8319
  %8339 = fadd fast float %8336, %8320
  %8340 = fadd fast float %8337, %8321
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.CBufRet.f32 %8341, 1
  %8344 = fadd fast float %8343, %8342
  %8345 = call float @dx.op.unary.f32(i32 7, float %8344)  ; Saturate(value)
  %8346 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8347 = extractvalue %dx.types.CBufRet.f32 %8341, 3
  %8348 = fadd fast float %8347, %8346
  %8349 = call float @dx.op.unary.f32(i32 7, float %8348)  ; Saturate(value)
  %8350 = fmul fast float %8345, %8329
  %8351 = fmul fast float %8350, %8349
  br label %8589

; <label>:8352                                    ; preds = %8306
  br i1 %8307, label %8353, label %8374

; <label>:8353                                    ; preds = %8352
  %8354 = call float @dx.op.binary.f32(i32 36, float %8303, float %8293)  ; FMin(a,b)
  %8355 = fsub fast float %8303, %8354
  %8356 = fsub fast float %8355, %8292
  %8357 = call float @dx.op.unary.f32(i32 6, float %8356)  ; FAbs(value)
  %8358 = fadd fast float %8355, %8292
  %8359 = fmul fast float %8358, %8223
  %8360 = fadd fast float %8359, %8236
  %8361 = fmul fast float %8360, %8357
  %8362 = fsub fast float %8298, %8361
  br label %8374

; <label>:8363                                    ; preds = %8291
  br i1 %8305, label %8364, label %8374

; <label>:8364                                    ; preds = %8363
  %8365 = call float @dx.op.binary.f32(i32 35, float %8293, float %8303)  ; FMax(a,b)
  %8366 = icmp eq i32 %8242, 0
  %8367 = select i1 %8366, float %8303, float 0.000000e+00
  %8368 = fsub fast float -0.000000e+00, %8367
  %8369 = call float @dx.op.unary.f32(i32 6, float %8368)  ; FAbs(value)
  %8370 = fmul fast float %8367, %8223
  %8371 = fadd fast float %8370, %8236
  %8372 = fmul fast float %8369, %8371
  %8373 = fsub fast float %8298, %8372
  br label %8374

; <label>:8374                                    ; preds = %8364, %8363, %8353, %8352
  %8375 = phi float [ %8293, %8352 ], [ %8293, %8353 ], [ %8365, %8364 ], [ %8293, %8363 ]
  %8376 = phi float [ 0.000000e+00, %8352 ], [ %8357, %8353 ], [ %8369, %8364 ], [ 0.000000e+00, %8363 ]
  %8377 = phi float [ %8298, %8352 ], [ %8362, %8353 ], [ %8373, %8364 ], [ %8298, %8363 ]
  %8378 = phi float [ %8303, %8352 ], [ %8303, %8353 ], [ %8292, %8364 ], [ %8292, %8363 ]
  %8379 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %8379, align 4, !tbaa !130, !noalias !132
  %8380 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %8380, align 4, !tbaa !130, !noalias !132
  %8381 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %8381, align 4, !tbaa !130, !noalias !132
  %8382 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8382, align 4, !tbaa !130, !noalias !132
  %8383 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8383, align 4, !tbaa !130, !noalias !132
  %8384 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8384, align 4, !tbaa !130, !noalias !132
  %8385 = icmp sgt i32 %8244, 0
  br i1 %8385, label %8386, label %8447

; <label>:8386                                    ; preds = %8374
  br label %8387

; <label>:8387                                    ; preds = %8436, %8386
  %8388 = phi i32 [ %8437, %8436 ], [ 0, %8386 ]
  %8389 = phi i32 [ %8438, %8436 ], [ 0, %8386 ]
  %8390 = add nuw i32 %8389, 171
  %8391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 %8390)  ; CBufferLoadLegacy(handle,regIndex)
  %8392 = extractvalue %dx.types.CBufRet.f32 %8391, 0
  %8393 = extractvalue %dx.types.CBufRet.f32 %8391, 1
  %8394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.f32 %8394, 0
  %8396 = extractvalue %dx.types.CBufRet.f32 %8394, 1
  %8397 = fsub fast float %8392, %8395
  %8398 = fsub fast float %8393, %8396
  %8399 = extractvalue %dx.types.CBufRet.f32 %8391, 2
  %8400 = fsub fast float -0.000000e+00, %8397
  %8401 = fsub fast float -0.000000e+00, %8398
  %8402 = call float @dx.op.dot2.f32(i32 54, float %8221, float %8222, float %8400, float %8401)  ; Dot2(ax,ay,bx,by)
  %8403 = fmul fast float %8402, 2.000000e+00
  %8404 = call float @dx.op.dot2.f32(i32 54, float %8400, float %8401, float %8400, float %8401)  ; Dot2(ax,ay,bx,by)
  %8405 = fmul fast float %8399, %8399
  %8406 = fsub fast float %8404, %8405
  %8407 = fmul fast float %8403, %8403
  %8408 = fmul fast float %8264, %8406
  %8409 = fsub fast float %8407, %8408
  %8410 = fcmp fast ogt float %8409, 0.000000e+00
  br i1 %8410, label %8411, label %8426

; <label>:8411                                    ; preds = %8387
  %8412 = fcmp fast ogt float %8403, 0.000000e+00
  %8413 = call float @dx.op.unary.f32(i32 24, float %8409)  ; Sqrt(value)
  %8414 = fsub fast float -0.000000e+00, %8413
  %8415 = select i1 %8412, float %8413, float %8414
  %8416 = fadd fast float %8415, %8403
  %8417 = fmul float %8416, -5.000000e-01
  %8418 = fdiv fast float %8417, %8257
  %8419 = call float @dx.op.binary.f32(i32 35, float %8418, float 0.000000e+00)  ; FMax(a,b)
  %8420 = call float @dx.op.binary.f32(i32 36, float %8292, float %8419)  ; FMin(a,b)
  %8421 = fdiv fast float %8406, %8417
  %8422 = call float @dx.op.binary.f32(i32 35, float %8421, float 0.000000e+00)  ; FMax(a,b)
  %8423 = call float @dx.op.binary.f32(i32 36, float %8292, float %8422)  ; FMin(a,b)
  %8424 = call float @dx.op.binary.f32(i32 36, float %8420, float %8423)  ; FMin(a,b)
  %8425 = call float @dx.op.binary.f32(i32 35, float %8420, float %8423)  ; FMax(a,b)
  br label %8426

; <label>:8426                                    ; preds = %8411, %8387
  %8427 = phi float [ %8425, %8411 ], [ -1.000000e+00, %8387 ]
  %8428 = phi float [ %8424, %8411 ], [ -1.000000e+00, %8387 ]
  %8429 = phi i1 [ true, %8411 ], [ false, %8387 ]
  br i1 %8429, label %8430, label %8436

; <label>:8430                                    ; preds = %8426
  %8431 = call float @dx.op.binary.f32(i32 35, float %8375, float %8428)  ; FMax(a,b)
  %8432 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8389
  store float %8431, float* %8432, align 4, !tbaa !130, !noalias !132
  %8433 = call float @dx.op.binary.f32(i32 35, float %8375, float %8427)  ; FMax(a,b)
  %8434 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8389
  store float %8433, float* %8434, align 4, !tbaa !130, !noalias !132
  %8435 = add nsw i32 %8388, 1
  br label %8436

; <label>:8436                                    ; preds = %8430, %8426
  %8437 = phi i32 [ %8435, %8430 ], [ %8388, %8426 ]
  %8438 = add nuw nsw i32 %8389, 1
  %8439 = icmp eq i32 %8438, %8244
  br i1 %8439, label %8440, label %8387

; <label>:8440                                    ; preds = %8436
  %8441 = load float, float* %8381, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %8442 = load float, float* %8380, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  %8443 = load float, float* %8379, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  %8444 = load float, float* %8384, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %8445 = load float, float* %8383, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  %8446 = load float, float* %8382, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  br label %8447

; <label>:8447                                    ; preds = %8440, %8374
  %8448 = phi float [ -1.000000e+00, %8374 ], [ %8446, %8440 ]
  %8449 = phi float [ -1.000000e+00, %8374 ], [ %8445, %8440 ]
  %8450 = phi float [ -1.000000e+00, %8374 ], [ %8444, %8440 ]
  %8451 = phi float [ -1.000000e+00, %8374 ], [ %8443, %8440 ]
  %8452 = phi float [ -1.000000e+00, %8374 ], [ %8442, %8440 ]
  %8453 = phi float [ -1.000000e+00, %8374 ], [ %8441, %8440 ]
  %8454 = phi i32 [ 0, %8374 ], [ %8437, %8440 ]
  %8455 = call float @dx.op.binary.f32(i32 36, float %8451, float %8452)  ; FMin(a,b)
  %8456 = call float @dx.op.binary.f32(i32 36, float %8455, float %8453)  ; FMin(a,b)
  %8457 = call float @dx.op.binary.f32(i32 35, float %8451, float %8452)  ; FMax(a,b)
  %8458 = call float @dx.op.binary.f32(i32 36, float %8457, float %8453)  ; FMin(a,b)
  %8459 = call float @dx.op.binary.f32(i32 35, float %8455, float %8458)  ; FMax(a,b)
  %8460 = call float @dx.op.binary.f32(i32 35, float %8457, float %8453)  ; FMax(a,b)
  store float %8456, float* %8379, align 4, !tbaa !130, !alias.scope !156, !noalias !157
  store float %8459, float* %8380, align 4, !tbaa !130, !alias.scope !154, !noalias !155
  store float %8460, float* %8381, align 4, !tbaa !130, !alias.scope !148, !noalias !151
  %8461 = call float @dx.op.binary.f32(i32 36, float %8448, float %8449)  ; FMin(a,b)
  %8462 = call float @dx.op.binary.f32(i32 36, float %8461, float %8450)  ; FMin(a,b)
  %8463 = call float @dx.op.binary.f32(i32 35, float %8448, float %8449)  ; FMax(a,b)
  %8464 = call float @dx.op.binary.f32(i32 36, float %8463, float %8450)  ; FMin(a,b)
  %8465 = call float @dx.op.binary.f32(i32 35, float %8461, float %8464)  ; FMax(a,b)
  %8466 = call float @dx.op.binary.f32(i32 35, float %8463, float %8450)  ; FMax(a,b)
  store float %8462, float* %8382, align 4, !tbaa !130, !alias.scope !166, !noalias !167
  store float %8465, float* %8383, align 4, !tbaa !130, !alias.scope !164, !noalias !165
  store float %8466, float* %8384, align 4, !tbaa !130, !alias.scope !158, !noalias !161
  %8467 = sub nsw i32 3, %8454
  %8468 = icmp sgt i32 %8467, 2
  br i1 %8468, label %8469, label %8507

; <label>:8469                                    ; preds = %8447
  %8470 = icmp eq i32 %8242, 0
  %8471 = fsub fast float %8292, %8376
  %8472 = select i1 %8470, float %8471, float %8376
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 0
  %8475 = extractvalue %dx.types.CBufRet.f32 %8473, 1
  %8476 = extractvalue %dx.types.CBufRet.f32 %8473, 2
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 0
  %8479 = extractvalue %dx.types.CBufRet.f32 %8477, 1
  %8480 = extractvalue %dx.types.CBufRet.f32 %8477, 2
  %8481 = extractvalue %dx.types.CBufRet.f32 %8477, 3
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8484 = call float @dx.op.binary.f32(i32 36, float %8377, float %8483)  ; FMin(a,b)
  %8485 = fmul fast float %8481, %8472
  %8486 = call float @dx.op.unary.f32(i32 7, float %8485)  ; Saturate(value)
  %8487 = fsub fast float %8478, %8474
  %8488 = fsub fast float %8479, %8475
  %8489 = fsub fast float %8480, %8476
  %8490 = fmul fast float %8486, %8487
  %8491 = fmul fast float %8486, %8488
  %8492 = fmul fast float %8486, %8489
  %8493 = fadd fast float %8490, %8474
  %8494 = fadd fast float %8491, %8475
  %8495 = fadd fast float %8492, %8476
  %8496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8497 = extractvalue %dx.types.CBufRet.f32 %8496, 0
  %8498 = extractvalue %dx.types.CBufRet.f32 %8496, 1
  %8499 = fadd fast float %8498, %8497
  %8500 = call float @dx.op.unary.f32(i32 7, float %8499)  ; Saturate(value)
  %8501 = extractvalue %dx.types.CBufRet.f32 %8496, 2
  %8502 = extractvalue %dx.types.CBufRet.f32 %8496, 3
  %8503 = fadd fast float %8502, %8501
  %8504 = call float @dx.op.unary.f32(i32 7, float %8503)  ; Saturate(value)
  %8505 = fmul fast float %8500, %8484
  %8506 = fmul fast float %8505, %8504
  br label %8589

; <label>:8507                                    ; preds = %8447
  %8508 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8467
  %8509 = load float, float* %8508, align 4, !tbaa !130, !noalias !132
  %8510 = fcmp fast olt float %8509, %8378
  %8511 = icmp sgt i32 %8454, 0
  %8512 = and i1 %8511, %8510
  br i1 %8512, label %8513, label %8550

; <label>:8513                                    ; preds = %8507
  br label %8514

; <label>:8514                                    ; preds = %8543, %8513
  %8515 = phi float [ %8544, %8543 ], [ %8376, %8513 ]
  %8516 = phi float [ %8545, %8543 ], [ %8377, %8513 ]
  %8517 = phi float [ %8525, %8543 ], [ %8509, %8513 ]
  %8518 = phi i32 [ %8522, %8543 ], [ %8467, %8513 ]
  %8519 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8518
  %8520 = load float, float* %8519, align 4, !tbaa !130, !noalias !132
  %8521 = icmp slt i32 %8518, 2
  %8522 = add nsw i32 %8518, 1
  %8523 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8522
  %8524 = load float, float* %8523, align 4, !tbaa !130, !noalias !132
  %8525 = select i1 %8521, float %8524, float %8292
  %8526 = call float @dx.op.binary.f32(i32 36, float %8525, float %8520)  ; FMin(a,b)
  %8527 = call float @dx.op.binary.f32(i32 36, float %8378, float %8526)  ; FMin(a,b)
  %8528 = icmp eq i32 %8242, 0
  %8529 = fadd fast float %8527, %8517
  %8530 = fmul fast float %8529, %8223
  %8531 = fadd fast float %8530, %8236
  br i1 %8528, label %8537, label %8532

; <label>:8532                                    ; preds = %8514
  %8533 = fsub fast float %8527, %8517
  %8534 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8533)  ; FMax(a,b)
  %8535 = fmul fast float %8534, %8531
  %8536 = fadd fast float %8535, %8516
  br label %8543

; <label>:8537                                    ; preds = %8514
  %8538 = fsub fast float %8517, %8527
  %8539 = call float @dx.op.unary.f32(i32 6, float %8538)  ; FAbs(value)
  %8540 = fadd fast float %8539, %8515
  %8541 = fmul fast float %8539, %8531
  %8542 = fsub fast float %8516, %8541
  br label %8543

; <label>:8543                                    ; preds = %8537, %8532
  %8544 = phi float [ %8534, %8532 ], [ %8540, %8537 ]
  %8545 = phi float [ %8536, %8532 ], [ %8542, %8537 ]
  %8546 = fcmp fast olt float %8525, %8378
  %8547 = icmp slt i32 %8522, 3
  %8548 = and i1 %8547, %8546
  br i1 %8548, label %8514, label %8549

; <label>:8549                                    ; preds = %8543
  br label %8550

; <label>:8550                                    ; preds = %8549, %8507
  %8551 = phi float [ %8376, %8507 ], [ %8544, %8549 ]
  %8552 = phi float [ %8377, %8507 ], [ %8545, %8549 ]
  %8553 = fsub fast float %8292, %8551
  %8554 = select i1 %8294, float %8551, float %8553
  %8555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8556 = extractvalue %dx.types.CBufRet.f32 %8555, 0
  %8557 = extractvalue %dx.types.CBufRet.f32 %8555, 1
  %8558 = extractvalue %dx.types.CBufRet.f32 %8555, 2
  %8559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8560 = extractvalue %dx.types.CBufRet.f32 %8559, 0
  %8561 = extractvalue %dx.types.CBufRet.f32 %8559, 1
  %8562 = extractvalue %dx.types.CBufRet.f32 %8559, 2
  %8563 = extractvalue %dx.types.CBufRet.f32 %8559, 3
  %8564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8565 = extractvalue %dx.types.CBufRet.f32 %8564, 3
  %8566 = call float @dx.op.binary.f32(i32 36, float %8552, float %8565)  ; FMin(a,b)
  %8567 = fmul fast float %8563, %8554
  %8568 = call float @dx.op.unary.f32(i32 7, float %8567)  ; Saturate(value)
  %8569 = fsub fast float %8560, %8556
  %8570 = fsub fast float %8561, %8557
  %8571 = fsub fast float %8562, %8558
  %8572 = fmul fast float %8568, %8569
  %8573 = fmul fast float %8568, %8570
  %8574 = fmul fast float %8568, %8571
  %8575 = fadd fast float %8572, %8556
  %8576 = fadd fast float %8573, %8557
  %8577 = fadd fast float %8574, %8558
  %8578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8579 = extractvalue %dx.types.CBufRet.f32 %8578, 0
  %8580 = extractvalue %dx.types.CBufRet.f32 %8578, 1
  %8581 = fadd fast float %8580, %8579
  %8582 = call float @dx.op.unary.f32(i32 7, float %8581)  ; Saturate(value)
  %8583 = extractvalue %dx.types.CBufRet.f32 %8578, 2
  %8584 = extractvalue %dx.types.CBufRet.f32 %8578, 3
  %8585 = fadd fast float %8584, %8583
  %8586 = call float @dx.op.unary.f32(i32 7, float %8585)  ; Saturate(value)
  %8587 = fmul fast float %8582, %8566
  %8588 = fmul fast float %8587, %8586
  br label %8589

; <label>:8589                                    ; preds = %8550, %8469, %8308, %8290, %8288
  %8590 = phi float [ %8317, %8308 ], [ %8472, %8469 ], [ %8554, %8550 ], [ 0.000000e+00, %8288 ], [ 0.000000e+00, %8290 ]
  %8591 = phi float [ %8351, %8308 ], [ %8506, %8469 ], [ %8588, %8550 ], [ 0.000000e+00, %8288 ], [ 0.000000e+00, %8290 ]
  %8592 = phi float [ %8338, %8308 ], [ %8493, %8469 ], [ %8575, %8550 ], [ 0.000000e+00, %8288 ], [ 0.000000e+00, %8290 ]
  %8593 = phi float [ %8339, %8308 ], [ %8494, %8469 ], [ %8576, %8550 ], [ 0.000000e+00, %8288 ], [ 0.000000e+00, %8290 ]
  %8594 = phi float [ %8340, %8308 ], [ %8495, %8469 ], [ %8577, %8550 ], [ 0.000000e+00, %8288 ], [ 0.000000e+00, %8290 ]
  %8595 = fmul fast float %8231, %8591
  %8596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8597 = extractvalue %dx.types.CBufRet.f32 %8596, 2
  %8598 = fsub fast float %8238, %8597
  %8599 = fcmp fast olt float %8595, -2.000000e+01
  %8600 = call float @dx.op.unary.f32(i32 21, float %8595)  ; Exp(value)
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 2
  %8603 = extractvalue %dx.types.CBufRet.f32 %8601, 3
  %8604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8605 = extractvalue %dx.types.CBufRet.f32 %8604, 2
  %8606 = fmul fast float %8603, %8598
  %8607 = call float @dx.op.unary.f32(i32 7, float %8606)  ; Saturate(value)
  %8608 = fsub fast float 1.000000e+00, %8607
  %8609 = fmul fast float %8223, 5.000000e-01
  %8610 = fadd fast float %8609, 5.000000e-01
  %8611 = call float @dx.op.unary.f32(i32 7, float %8610)  ; Saturate(value)
  %8612 = fsub fast float 1.000000e+00, %8611
  %8613 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8608)  ; FMax(a,b)
  %8614 = fdiv fast float %8612, %8613
  %8615 = fsub fast float %8598, %8180
  %8616 = call float @dx.op.unary.f32(i32 6, float %8615)  ; FAbs(value)
  %8617 = fmul fast float %8616, %8602
  %8618 = call float @dx.op.unary.f32(i32 7, float %8614)  ; Saturate(value)
  %8619 = fsub fast float 1.000000e+00, %8617
  %8620 = fmul fast float %8619, %8618
  %8621 = fadd fast float %8620, %8617
  %8622 = fmul fast float %8605, %8598
  %8623 = call float @dx.op.unary.f32(i32 7, float %8622)  ; Saturate(value)
  %8624 = fsub fast float 1.000000e+00, %8621
  %8625 = fmul fast float %8624, %8623
  %8626 = fadd fast float %8625, %8621
  %8627 = call float @dx.op.unary.f32(i32 7, float %8626)  ; Saturate(value)
  %8628 = fadd fast float %8600, -1.000000e+00
  %8629 = select i1 %8599, float -1.000000e+00, float %8628
  %8630 = fmul fast float %8627, %8629
  %8631 = fadd fast float %8630, 1.000000e+00
  %8632 = fsub fast float -0.000000e+00, %8630
  %8633 = fmul fast float %8592, %8632
  %8634 = fmul fast float %8593, %8632
  %8635 = fmul fast float %8594, %8632
  br label %8636

; <label>:8636                                    ; preds = %8589, %8189
  %8637 = phi float [ %8590, %8589 ], [ 0.000000e+00, %8189 ]
  %8638 = phi float [ %8631, %8589 ], [ 1.000000e+00, %8189 ]
  %8639 = phi float [ %8633, %8589 ], [ 0.000000e+00, %8189 ]
  %8640 = phi float [ %8634, %8589 ], [ 0.000000e+00, %8189 ]
  %8641 = phi float [ %8635, %8589 ], [ 0.000000e+00, %8189 ]
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 1
  %8644 = fsub fast float 1.000000e+00, %8638
  %8645 = fmul fast float %8644, %8224
  %8646 = fmul fast float %8645, %8643
  %8647 = fsub fast float %8224, %8646
  br i1 %8217, label %8648, label %8677, !dx.controlflow.hints !168

; <label>:8648                                    ; preds = %8636
  %8649 = fmul fast float %8225, %8214
  %8650 = fadd fast float %8649, %8215
  %8651 = call float @dx.op.unary.f32(i32 7, float %8650)  ; Saturate(value)
  %8652 = fmul fast float %8196, %8647
  %8653 = fsub fast float -0.000000e+00, %8652
  %8654 = fmul fast float %8197, %8647
  %8655 = fsub fast float -0.000000e+00, %8654
  %8656 = call float @dx.op.unary.f32(i32 21, float %8653)  ; Exp(value)
  %8657 = call float @dx.op.unary.f32(i32 21, float %8655)  ; Exp(value)
  %8658 = call float @dx.op.binary.f32(i32 35, float %8204, float %8656)  ; FMax(a,b)
  %8659 = call float @dx.op.binary.f32(i32 35, float %8204, float %8657)  ; FMax(a,b)
  %8660 = fsub fast float %8659, %8658
  %8661 = fmul fast float %8660, %8651
  %8662 = fadd fast float %8661, %8658
  %8663 = call float @dx.op.unary.f32(i32 7, float %8662)  ; Saturate(value)
  %8664 = fsub fast float %8201, %8206
  %8665 = fsub fast float %8202, %8207
  %8666 = fsub fast float %8203, %8208
  %8667 = fmul fast float %8651, %8664
  %8668 = fmul fast float %8651, %8665
  %8669 = fmul fast float %8651, %8666
  %8670 = fadd fast float %8667, %8206
  %8671 = fadd fast float %8668, %8207
  %8672 = fadd fast float %8669, %8208
  %8673 = fsub fast float 1.000000e+00, %8663
  %8674 = fmul fast float %8673, %8670
  %8675 = fmul fast float %8673, %8671
  %8676 = fmul fast float %8673, %8672
  br label %8736

; <label>:8677                                    ; preds = %8636
  %8678 = fmul fast float %8647, %8213
  %8679 = call float @dx.op.unary.f32(i32 7, float %8678)  ; Saturate(value)
  %8680 = fsub fast float 2.000000e+00, %8679
  %8681 = fmul fast float %8679, 9.921875e-01
  %8682 = fmul fast float %8681, %8680
  %8683 = fadd fast float %8682, 3.906250e-03
  %8684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %49, float %8683, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8685 = extractvalue %dx.types.ResRet.f32 %8684, 0
  %8686 = fsub fast float %8679, %8685
  %8687 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8686)  ; FMax(a,b)
  %8688 = fmul fast float %8199, %8180
  %8689 = call float @dx.op.unary.f32(i32 6, float %8688)  ; FAbs(value)
  %8690 = fcmp fast ogt float %8689, 0x3EB0C6F7A0000000
  br i1 %8690, label %8691, label %8697, !dx.controlflow.hints !169

; <label>:8691                                    ; preds = %8677
  %8692 = fmul fast float %8688, 0xBFF7154760000000
  %8693 = call float @dx.op.unary.f32(i32 21, float %8692)  ; Exp(value)
  %8694 = fsub fast float 1.000000e+00, %8693
  %8695 = fdiv fast float %8694, %8688
  %8696 = fmul fast float %8695, %8209
  br label %8697

; <label>:8697                                    ; preds = %8691, %8677
  %8698 = phi float [ %8696, %8691 ], [ %8209, %8677 ]
  %8699 = fadd fast float %8698, %8211
  %8700 = fmul fast float %8699, %8687
  %8701 = fmul fast float %8196, %8700
  %8702 = fsub fast float -0.000000e+00, %8701
  %8703 = fmul fast float %8197, %8700
  %8704 = fsub fast float -0.000000e+00, %8703
  %8705 = fmul fast float %8198, %8700
  %8706 = fsub fast float -0.000000e+00, %8705
  %8707 = call float @dx.op.unary.f32(i32 21, float %8702)  ; Exp(value)
  %8708 = call float @dx.op.unary.f32(i32 21, float %8704)  ; Exp(value)
  %8709 = call float @dx.op.unary.f32(i32 21, float %8706)  ; Exp(value)
  %8710 = fmul fast float %8225, %8225
  %8711 = fadd fast float %8710, 1.000000e+00
  %8712 = fmul fast float %8711, 0x3FAE8EC8A0000000
  %8713 = fmul fast float %8712, %8206
  %8714 = fmul fast float %8712, %8207
  %8715 = fmul fast float %8712, %8208
  %8716 = fmul fast float %8225, %8204
  %8717 = fsub fast float 1.000000e+00, %8716
  %8718 = fmul fast float %8204, %8204
  %8719 = fsub fast float 1.000000e+00, %8718
  %8720 = fmul fast float %8719, 0x3FB45F3060000000
  %8721 = fmul fast float %8717, %8717
  %8722 = fdiv fast float 1.000000e+00, %8721
  %8723 = fmul fast float %8720, %8722
  %8724 = fmul fast float %8723, %8201
  %8725 = fmul fast float %8723, %8202
  %8726 = fmul fast float %8723, %8203
  %8727 = fadd fast float %8724, %8713
  %8728 = fadd fast float %8725, %8714
  %8729 = fadd fast float %8726, %8715
  %8730 = fsub fast float 1.000000e+00, %8707
  %8731 = fsub fast float 1.000000e+00, %8708
  %8732 = fsub fast float 1.000000e+00, %8709
  %8733 = fmul fast float %8727, %8730
  %8734 = fmul fast float %8728, %8731
  %8735 = fmul fast float %8729, %8732
  br label %8736

; <label>:8736                                    ; preds = %8697, %8648
  %8737 = phi float [ %8674, %8648 ], [ %8733, %8697 ]
  %8738 = phi float [ %8675, %8648 ], [ %8734, %8697 ]
  %8739 = phi float [ %8676, %8648 ], [ %8735, %8697 ]
  %8740 = phi float [ %8663, %8648 ], [ %8707, %8697 ]
  %8741 = phi float [ %8663, %8648 ], [ %8708, %8697 ]
  %8742 = phi float [ %8663, %8648 ], [ %8709, %8697 ]
  br i1 %8233, label %8743, label %8941, !dx.controlflow.hints !170

; <label>:8743                                    ; preds = %8736
  %8744 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8745 = fmul fast float %8744, %8644
  %8746 = fsub fast float %8639, %8737
  %8747 = fsub fast float %8640, %8738
  %8748 = fsub fast float %8641, %8739
  %8749 = fmul fast float %8745, %8746
  %8750 = fmul fast float %8745, %8747
  %8751 = fmul fast float %8745, %8748
  %8752 = fadd fast float %8749, %8737
  %8753 = fadd fast float %8750, %8738
  %8754 = fadd fast float %8751, %8739
  %8755 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8740)  ; FMax(a,b)
  %8756 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8741)  ; FMax(a,b)
  %8757 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8742)  ; FMax(a,b)
  %8758 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8638)  ; FMax(a,b)
  %8759 = call float @dx.op.binary.f32(i32 35, float %8637, float %8647)  ; FMax(a,b)
  %8760 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8759)  ; FMax(a,b)
  %8761 = fdiv fast float %8637, %8760
  %8762 = call float @dx.op.unary.f32(i32 7, float %8761)  ; Saturate(value)
  %8763 = fdiv fast float %8647, %8760
  %8764 = call float @dx.op.unary.f32(i32 7, float %8763)  ; Saturate(value)
  %8765 = fcmp fast une float %8758, 1.000000e+00
  br i1 %8765, label %8766, label %8779, !dx.controlflow.hints !171

; <label>:8766                                    ; preds = %8743
  %8767 = call float @dx.op.unary.f32(i32 23, float %8758)  ; Log(value)
  %8768 = fmul fast float %8767, 0x3FE62E4300000000
  %8769 = fmul fast float %8639, %8768
  %8770 = fsub fast float -0.000000e+00, %8769
  %8771 = fmul fast float %8640, %8768
  %8772 = fsub fast float -0.000000e+00, %8771
  %8773 = fmul fast float %8641, %8768
  %8774 = fsub fast float -0.000000e+00, %8773
  %8775 = fsub fast float 1.000000e+00, %8758
  %8776 = fdiv fast float %8770, %8775
  %8777 = fdiv fast float %8772, %8775
  %8778 = fdiv fast float %8774, %8775
  br label %8779

; <label>:8779                                    ; preds = %8766, %8743
  %8780 = phi float [ %8776, %8766 ], [ %8639, %8743 ]
  %8781 = phi float [ %8777, %8766 ], [ %8640, %8743 ]
  %8782 = phi float [ %8778, %8766 ], [ %8641, %8743 ]
  %8783 = phi float [ %8768, %8766 ], [ 0.000000e+00, %8743 ]
  %8784 = fcmp fast une float %8755, 1.000000e+00
  br i1 %8784, label %8785, label %8792, !dx.controlflow.hints !172

; <label>:8785                                    ; preds = %8779
  %8786 = call float @dx.op.unary.f32(i32 23, float %8755)  ; Log(value)
  %8787 = fmul fast float %8786, 0x3FE62E4300000000
  %8788 = fmul fast float %8752, %8787
  %8789 = fsub fast float -0.000000e+00, %8788
  %8790 = fsub fast float 1.000000e+00, %8755
  %8791 = fdiv fast float %8789, %8790
  br label %8792

; <label>:8792                                    ; preds = %8785, %8779
  %8793 = phi float [ %8791, %8785 ], [ %8752, %8779 ]
  %8794 = phi float [ %8787, %8785 ], [ 0.000000e+00, %8779 ]
  %8795 = fcmp fast une float %8756, 1.000000e+00
  br i1 %8795, label %8796, label %8803, !dx.controlflow.hints !172

; <label>:8796                                    ; preds = %8792
  %8797 = call float @dx.op.unary.f32(i32 23, float %8756)  ; Log(value)
  %8798 = fmul fast float %8797, 0x3FE62E4300000000
  %8799 = fmul fast float %8753, %8798
  %8800 = fsub fast float -0.000000e+00, %8799
  %8801 = fsub fast float 1.000000e+00, %8756
  %8802 = fdiv fast float %8800, %8801
  br label %8803

; <label>:8803                                    ; preds = %8796, %8792
  %8804 = phi float [ %8802, %8796 ], [ %8753, %8792 ]
  %8805 = phi float [ %8798, %8796 ], [ 0.000000e+00, %8792 ]
  %8806 = fcmp fast une float %8757, 1.000000e+00
  br i1 %8806, label %8807, label %8814, !dx.controlflow.hints !172

; <label>:8807                                    ; preds = %8803
  %8808 = call float @dx.op.unary.f32(i32 23, float %8757)  ; Log(value)
  %8809 = fmul fast float %8808, 0x3FE62E4300000000
  %8810 = fmul fast float %8754, %8809
  %8811 = fsub fast float -0.000000e+00, %8810
  %8812 = fsub fast float 1.000000e+00, %8757
  %8813 = fdiv fast float %8811, %8812
  br label %8814

; <label>:8814                                    ; preds = %8807, %8803
  %8815 = phi float [ %8813, %8807 ], [ %8754, %8803 ]
  %8816 = phi float [ %8809, %8807 ], [ 0.000000e+00, %8803 ]
  %8817 = fmul fast float %8780, %8764
  %8818 = fmul fast float %8781, %8764
  %8819 = fmul fast float %8782, %8764
  %8820 = fmul fast float %8783, %8764
  %8821 = fmul fast float %8793, %8762
  %8822 = fmul fast float %8804, %8762
  %8823 = fmul fast float %8815, %8762
  %8824 = fmul fast float %8794, %8762
  %8825 = fmul fast float %8805, %8762
  %8826 = fmul fast float %8816, %8762
  %8827 = fadd fast float %8821, %8817
  %8828 = fadd fast float %8822, %8818
  %8829 = fadd fast float %8823, %8819
  %8830 = fadd fast float %8824, %8820
  %8831 = fadd fast float %8825, %8820
  %8832 = fadd fast float %8826, %8820
  %8833 = fcmp fast une float %8830, 0.000000e+00
  br i1 %8833, label %8834, label %8841, !dx.controlflow.hints !173

; <label>:8834                                    ; preds = %8814
  %8835 = fmul fast float %8830, 0x3FF7154760000000
  %8836 = call float @dx.op.unary.f32(i32 21, float %8835)  ; Exp(value)
  %8837 = fsub fast float 1.000000e+00, %8836
  %8838 = fmul fast float %8827, %8837
  %8839 = fsub fast float -0.000000e+00, %8838
  %8840 = fdiv fast float %8839, %8830
  br label %8841

; <label>:8841                                    ; preds = %8834, %8814
  %8842 = phi float [ %8836, %8834 ], [ 1.000000e+00, %8814 ]
  %8843 = phi float [ %8840, %8834 ], [ %8827, %8814 ]
  %8844 = fcmp fast une float %8831, 0.000000e+00
  br i1 %8844, label %8845, label %8852, !dx.controlflow.hints !173

; <label>:8845                                    ; preds = %8841
  %8846 = fmul fast float %8831, 0x3FF7154760000000
  %8847 = call float @dx.op.unary.f32(i32 21, float %8846)  ; Exp(value)
  %8848 = fsub fast float 1.000000e+00, %8847
  %8849 = fmul fast float %8828, %8848
  %8850 = fsub fast float -0.000000e+00, %8849
  %8851 = fdiv fast float %8850, %8831
  br label %8852

; <label>:8852                                    ; preds = %8845, %8841
  %8853 = phi float [ %8847, %8845 ], [ 1.000000e+00, %8841 ]
  %8854 = phi float [ %8851, %8845 ], [ %8828, %8841 ]
  %8855 = fcmp fast une float %8832, 0.000000e+00
  br i1 %8855, label %8856, label %8863, !dx.controlflow.hints !173

; <label>:8856                                    ; preds = %8852
  %8857 = fmul fast float %8832, 0x3FF7154760000000
  %8858 = call float @dx.op.unary.f32(i32 21, float %8857)  ; Exp(value)
  %8859 = fsub fast float 1.000000e+00, %8858
  %8860 = fmul fast float %8829, %8859
  %8861 = fsub fast float -0.000000e+00, %8860
  %8862 = fdiv fast float %8861, %8832
  br label %8863

; <label>:8863                                    ; preds = %8856, %8852
  %8864 = phi float [ %8858, %8856 ], [ 1.000000e+00, %8852 ]
  %8865 = phi float [ %8862, %8856 ], [ %8829, %8852 ]
  %8866 = fcmp fast ogt float %8762, %8764
  br i1 %8866, label %8867, label %8887

; <label>:8867                                    ; preds = %8863
  %8868 = fsub fast float 1.000000e+00, %8764
  %8869 = fmul fast float %8780, %8868
  %8870 = fmul fast float %8781, %8868
  %8871 = fmul fast float %8782, %8868
  %8872 = fmul fast float %8783, %8868
  %8873 = fcmp fast une float %8872, 0.000000e+00
  br i1 %8873, label %8874, label %8925, !dx.controlflow.hints !174

; <label>:8874                                    ; preds = %8867
  %8875 = fmul fast float %8872, 0x3FF7154760000000
  %8876 = call float @dx.op.unary.f32(i32 21, float %8875)  ; Exp(value)
  %8877 = fsub fast float 1.000000e+00, %8876
  %8878 = fmul fast float %8869, %8877
  %8879 = fsub fast float -0.000000e+00, %8878
  %8880 = fmul fast float %8870, %8877
  %8881 = fsub fast float -0.000000e+00, %8880
  %8882 = fmul fast float %8871, %8877
  %8883 = fsub fast float -0.000000e+00, %8882
  %8884 = fdiv fast float %8879, %8872
  %8885 = fdiv fast float %8881, %8872
  %8886 = fdiv fast float %8883, %8872
  br label %8925

; <label>:8887                                    ; preds = %8863
  %8888 = fsub fast float 1.000000e+00, %8762
  %8889 = fmul fast float %8793, %8888
  %8890 = fmul fast float %8804, %8888
  %8891 = fmul fast float %8815, %8888
  %8892 = fmul fast float %8794, %8888
  %8893 = fmul fast float %8805, %8888
  %8894 = fmul fast float %8816, %8888
  %8895 = fcmp fast une float %8892, 0.000000e+00
  br i1 %8895, label %8896, label %8903, !dx.controlflow.hints !173

; <label>:8896                                    ; preds = %8887
  %8897 = fmul fast float %8892, 0x3FF7154760000000
  %8898 = call float @dx.op.unary.f32(i32 21, float %8897)  ; Exp(value)
  %8899 = fsub fast float 1.000000e+00, %8898
  %8900 = fmul fast float %8889, %8899
  %8901 = fsub fast float -0.000000e+00, %8900
  %8902 = fdiv fast float %8901, %8892
  br label %8903

; <label>:8903                                    ; preds = %8896, %8887
  %8904 = phi float [ %8902, %8896 ], [ %8889, %8887 ]
  %8905 = phi float [ %8898, %8896 ], [ 1.000000e+00, %8887 ]
  %8906 = fcmp fast une float %8893, 0.000000e+00
  br i1 %8906, label %8907, label %8914, !dx.controlflow.hints !173

; <label>:8907                                    ; preds = %8903
  %8908 = fmul fast float %8893, 0x3FF7154760000000
  %8909 = call float @dx.op.unary.f32(i32 21, float %8908)  ; Exp(value)
  %8910 = fsub fast float 1.000000e+00, %8909
  %8911 = fmul fast float %8890, %8910
  %8912 = fsub fast float -0.000000e+00, %8911
  %8913 = fdiv fast float %8912, %8893
  br label %8914

; <label>:8914                                    ; preds = %8907, %8903
  %8915 = phi float [ %8913, %8907 ], [ %8890, %8903 ]
  %8916 = phi float [ %8909, %8907 ], [ 1.000000e+00, %8903 ]
  %8917 = fcmp fast une float %8894, 0.000000e+00
  br i1 %8917, label %8918, label %8925, !dx.controlflow.hints !173

; <label>:8918                                    ; preds = %8914
  %8919 = fmul fast float %8894, 0x3FF7154760000000
  %8920 = call float @dx.op.unary.f32(i32 21, float %8919)  ; Exp(value)
  %8921 = fsub fast float 1.000000e+00, %8920
  %8922 = fmul fast float %8891, %8921
  %8923 = fsub fast float -0.000000e+00, %8922
  %8924 = fdiv fast float %8923, %8894
  br label %8925

; <label>:8925                                    ; preds = %8918, %8914, %8874, %8867
  %8926 = phi float [ %8924, %8918 ], [ %8886, %8874 ], [ %8871, %8867 ], [ %8891, %8914 ]
  %8927 = phi float [ %8915, %8918 ], [ %8885, %8874 ], [ %8870, %8867 ], [ %8915, %8914 ]
  %8928 = phi float [ %8904, %8918 ], [ %8884, %8874 ], [ %8869, %8867 ], [ %8904, %8914 ]
  %8929 = phi float [ %8920, %8918 ], [ %8876, %8874 ], [ 1.000000e+00, %8867 ], [ 1.000000e+00, %8914 ]
  %8930 = phi float [ %8916, %8918 ], [ %8876, %8874 ], [ 1.000000e+00, %8867 ], [ %8916, %8914 ]
  %8931 = phi float [ %8905, %8918 ], [ %8876, %8874 ], [ 1.000000e+00, %8867 ], [ %8905, %8914 ]
  %8932 = fmul fast float %8931, %8843
  %8933 = fmul fast float %8930, %8854
  %8934 = fmul fast float %8929, %8865
  %8935 = fadd fast float %8932, %8928
  %8936 = fadd fast float %8933, %8927
  %8937 = fadd fast float %8934, %8926
  %8938 = fmul fast float %8931, %8842
  %8939 = fmul fast float %8930, %8853
  %8940 = fmul fast float %8929, %8864
  br label %8941

; <label>:8941                                    ; preds = %8925, %8736
  %8942 = phi float [ %8940, %8925 ], [ %8742, %8736 ]
  %8943 = phi float [ %8939, %8925 ], [ %8741, %8736 ]
  %8944 = phi float [ %8938, %8925 ], [ %8740, %8736 ]
  %8945 = phi float [ %8937, %8925 ], [ %8739, %8736 ]
  %8946 = phi float [ %8936, %8925 ], [ %8738, %8736 ]
  %8947 = phi float [ %8935, %8925 ], [ %8737, %8736 ]
  %8948 = fmul fast float %8947, %7893
  %8949 = fmul fast float %8946, %7895
  %8950 = fmul fast float %8945, %7897
  %8951 = fmul fast float %8944, %8188
  %8952 = call float @dx.op.dot3.f32(i32 55, float %8944, float %8943, float %8942, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8953 = call float @dx.op.dot3.f32(i32 55, float %8948, float %8949, float %8950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8954 = select i1 %254, float %8952, float %8944
  %8955 = select i1 %254, float %8952, float %8943
  %8956 = select i1 %254, float 1.000000e+00, float %8942
  %8957 = select i1 %254, float %8953, float %8948
  %8958 = select i1 %254, float 0.000000e+00, float %8949
  %8959 = select i1 %254, float 0.000000e+00, float %8950
  %8960 = fmul fast float %8954, %8182
  %8961 = fmul fast float %8955, %8183
  %8962 = fmul fast float %8956, %8184
  %8963 = fadd fast float %8960, %8957
  %8964 = fadd fast float %8961, %8958
  %8965 = fadd fast float %8959, %8962
  %8966 = fmul fast float %8954, %8185
  %8967 = fmul fast float %8955, %8186
  %8968 = fmul fast float %8956, %8187
  %8969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8970 = extractvalue %dx.types.CBufRet.i32 %8969, 0
  %8971 = icmp eq i32 %8970, 0
  br i1 %8971, label %9339, label %8972, !dx.controlflow.hints !175

; <label>:8972                                    ; preds = %8941
  %8973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8974 = extractvalue %dx.types.CBufRet.f32 %8973, 2
  %8975 = extractvalue %dx.types.CBufRet.f32 %8973, 3
  %8976 = fmul fast float %8974, %108
  %8977 = fmul fast float %8975, %109
  %8978 = fmul fast float %8976, 2.000000e+00
  %8979 = fmul fast float %8977, 2.000000e+00
  %8980 = fsub fast float 1.000000e+00, %8978
  %8981 = fsub fast float 1.000000e+00, %8979
  %8982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8983 = extractvalue %dx.types.CBufRet.f32 %8982, 0
  %8984 = extractvalue %dx.types.CBufRet.f32 %8982, 1
  %8985 = extractvalue %dx.types.CBufRet.f32 %8982, 2
  %8986 = fmul fast float %8980, %8983
  %8987 = fmul fast float %8980, %8984
  %8988 = fmul fast float %8980, %8985
  %8989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8990 = extractvalue %dx.types.CBufRet.f32 %8989, 0
  %8991 = extractvalue %dx.types.CBufRet.f32 %8989, 1
  %8992 = extractvalue %dx.types.CBufRet.f32 %8989, 2
  %8993 = fmul fast float %8981, %8990
  %8994 = fmul fast float %8981, %8991
  %8995 = fmul fast float %8981, %8992
  %8996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8997 = extractvalue %dx.types.CBufRet.f32 %8996, 0
  %8998 = extractvalue %dx.types.CBufRet.f32 %8996, 1
  %8999 = extractvalue %dx.types.CBufRet.f32 %8996, 2
  %9000 = fadd fast float %8993, %8997
  %9001 = fadd fast float %9000, %8986
  %9002 = fadd fast float %8994, %8998
  %9003 = fadd fast float %9002, %8987
  %9004 = fadd fast float %8995, %8999
  %9005 = fadd fast float %9004, %8988
  %9006 = fmul fast float %9001, %8181
  %9007 = fmul fast float %9003, %8181
  %9008 = fmul fast float %9005, %8181
  %9009 = fmul fast float %9006, %9006
  %9010 = fmul fast float %9007, %9007
  %9011 = fadd fast float %9009, %9010
  %9012 = fmul fast float %9008, %9008
  %9013 = fadd fast float %9011, %9012
  %9014 = call float @dx.op.unary.f32(i32 24, float %9013)  ; Sqrt(value)
  %9015 = extractvalue %dx.types.CBufRet.f32 %7908, 0
  %9016 = fsub fast float %9014, %9015
  %9017 = extractvalue %dx.types.CBufRet.f32 %7908, 2
  %9018 = fmul fast float %9016, %9017
  %9019 = call float @dx.op.unary.f32(i32 7, float %9018)  ; Saturate(value)
  %9020 = fadd fast float %9019, -5.000000e-01
  %9021 = fmul fast float %9020, 2.000000e+00
  %9022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9023 = extractvalue %dx.types.CBufRet.f32 %9022, 2
  %9024 = call float @dx.op.binary.f32(i32 36, float %9023, float %9021)  ; FMin(a,b)
  %9025 = fsub fast float -0.000000e+00, %9023
  %9026 = fcmp fast ogt float %9024, %9025
  br i1 %9026, label %9027, label %9339, !dx.controlflow.hints !176

; <label>:9027                                    ; preds = %8972
  %9028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9029 = extractvalue %dx.types.CBufRet.f32 %9028, 3
  %9030 = fcmp fast ogt float %9029, 0.000000e+00
  br i1 %9030, label %9031, label %9106, !dx.controlflow.hints !177

; <label>:9031                                    ; preds = %9027
  %9032 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %9033 = extractvalue %dx.types.Dimensions %9032, 0
  %9034 = sitofp i32 %9033 to float
  %9035 = extractvalue %dx.types.Dimensions %9032, 1
  %9036 = sitofp i32 %9035 to float
  %9037 = fmul fast float %8976, %9034
  %9038 = fmul fast float %8977, %9036
  %9039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9040 = extractvalue %dx.types.CBufRet.f32 %9039, 1
  %9041 = fsub fast float -0.000000e+00, %9040
  %9042 = fptoui float %9041 to i32
  %9043 = fptoui float %9037 to i32
  %9044 = fptoui float %9038 to i32
  %9045 = and i32 %9042, 31
  %9046 = lshr i32 %9043, %9045
  %9047 = lshr i32 %9044, %9045
  %9048 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %9042, i32 %9046, i32 %9047, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9049 = extractvalue %dx.types.ResRet.f32 %9048, 0
  %9050 = fcmp fast olt float %9049, -1.000000e+00
  %9051 = fcmp fast ogt float %9049, -1.000000e+00
  %9052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9053 = extractvalue %dx.types.CBufRet.f32 %9052, 1
  %9054 = select i1 %9051, float %9053, float 1.000000e+00
  %9055 = fadd fast float %9049, 1.000000e+00
  %9056 = fmul fast float %9054, %9055
  %9057 = call float @dx.op.unary.f32(i32 6, float %9056)  ; FAbs(value)
  %9058 = extractvalue %dx.types.CBufRet.f32 %9052, 3
  %9059 = fcmp fast oge float %9057, %9058
  %9060 = select i1 %9059, float 0x4197782600000000, float %9057
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 0
  %9063 = extractvalue %dx.types.CBufRet.f32 %9061, 1
  %9064 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9065 = select i1 %9050, float %9062, float %8983
  %9066 = select i1 %9050, float %9063, float %8984
  %9067 = select i1 %9050, float %9064, float %8985
  %9068 = fmul fast float %9065, %8980
  %9069 = fmul fast float %9066, %8980
  %9070 = fmul fast float %9067, %8980
  %9071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9072 = extractvalue %dx.types.CBufRet.f32 %9071, 0
  %9073 = extractvalue %dx.types.CBufRet.f32 %9071, 1
  %9074 = extractvalue %dx.types.CBufRet.f32 %9071, 2
  %9075 = select i1 %9050, float %9072, float %8990
  %9076 = select i1 %9050, float %9073, float %8991
  %9077 = select i1 %9050, float %9074, float %8992
  %9078 = fmul fast float %9075, %8981
  %9079 = fmul fast float %9076, %8981
  %9080 = fmul fast float %9077, %8981
  %9081 = fadd fast float %9078, %9068
  %9082 = fadd fast float %9079, %9069
  %9083 = fadd fast float %9080, %9070
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 0
  %9086 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9087 = extractvalue %dx.types.CBufRet.f32 %9084, 2
  %9088 = select i1 %9050, float %9085, float %8997
  %9089 = select i1 %9050, float %9086, float %8998
  %9090 = select i1 %9050, float %9087, float %8999
  %9091 = fadd fast float %9081, %9088
  %9092 = fadd fast float %9082, %9089
  %9093 = fadd fast float %9083, %9090
  %9094 = fmul fast float %9091, %9060
  %9095 = fmul fast float %9092, %9060
  %9096 = fmul fast float %9093, %9060
  %9097 = fmul fast float %9094, %9094
  %9098 = fmul fast float %9095, %9095
  %9099 = fadd fast float %9097, %9098
  %9100 = fmul fast float %9096, %9096
  %9101 = fadd fast float %9099, %9100
  %9102 = call float @dx.op.unary.f32(i32 24, float %9101)  ; Sqrt(value)
  %9103 = fsub fast float %9102, %9015
  %9104 = fmul fast float %9103, %9017
  %9105 = call float @dx.op.unary.f32(i32 7, float %9104)  ; Saturate(value)
  br label %9106

; <label>:9106                                    ; preds = %9031, %9027
  %9107 = phi float [ %9105, %9031 ], [ 1.000000e+00, %9027 ]
  %9108 = fmul fast float %9024, 5.000000e-01
  %9109 = fadd fast float %9108, 5.000000e-01
  %9110 = call float @dx.op.unary.f32(i32 22, float %9109)  ; Frc(value)
  %9111 = call float @dx.op.unary.f32(i32 27, float %9110)  ; Round_ni(value)
  %9112 = call float @dx.op.unary.f32(i32 22, float %9110)  ; Frc(value)
  %9113 = fmul fast float %9112, 2.000000e+00
  %9114 = fadd fast float %9113, -1.000000e+00
  %9115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %49, float %8976, float %8977, float %9111, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9116 = extractvalue %dx.types.ResRet.f32 %9115, 0
  %9117 = extractvalue %dx.types.ResRet.f32 %9115, 1
  %9118 = extractvalue %dx.types.ResRet.f32 %9115, 2
  %9119 = extractvalue %dx.types.ResRet.f32 %9115, 3
  %9120 = fadd fast float %9116, -5.000000e-01
  %9121 = fadd fast float %9118, -5.000000e-01
  %9122 = fmul fast float %9120, 0xBFD5555560000000
  %9123 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9121, float %9122)  ; FMad(a,b,c)
  %9124 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9117, float 0.000000e+00)  ; FMad(a,b,c)
  %9125 = fadd fast float %9124, %9119
  %9126 = fmul fast float %9120, -7.500000e-01
  %9127 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9121, float %9126)  ; FMad(a,b,c)
  %9128 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9117, float 0.000000e+00)  ; FMad(a,b,c)
  %9129 = fadd fast float %9128, %9119
  %9130 = call float @dx.op.binary.f32(i32 35, float %9123, float -1.000000e+00)  ; FMax(a,b)
  %9131 = call float @dx.op.binary.f32(i32 35, float %9125, float -1.000000e+00)  ; FMax(a,b)
  %9132 = call float @dx.op.binary.f32(i32 35, float %9127, float -1.000000e+00)  ; FMax(a,b)
  %9133 = call float @dx.op.binary.f32(i32 35, float %9129, float -1.000000e+00)  ; FMax(a,b)
  %9134 = call float @dx.op.binary.f32(i32 36, float %9130, float 1.000000e+00)  ; FMin(a,b)
  %9135 = call float @dx.op.binary.f32(i32 36, float %9131, float 1.000000e+00)  ; FMin(a,b)
  %9136 = call float @dx.op.binary.f32(i32 36, float %9132, float 1.000000e+00)  ; FMin(a,b)
  %9137 = call float @dx.op.binary.f32(i32 36, float %9133, float 1.000000e+00)  ; FMin(a,b)
  %9138 = fcmp fast olt float %9134, 0x3FEFFF8020000000
  br i1 %9138, label %9139, label %9254, !dx.controlflow.hints !178

; <label>:9139                                    ; preds = %9106
  %9140 = extractvalue %dx.types.CBufRet.f32 %9022, 3
  %9141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9142 = extractvalue %dx.types.CBufRet.f32 %9141, 0
  %9143 = extractvalue %dx.types.CBufRet.f32 %9141, 1
  %9144 = extractvalue %dx.types.CBufRet.f32 %9141, 2
  %9145 = extractvalue %dx.types.CBufRet.f32 %9141, 3
  %9146 = fsub fast float %9142, %9134
  %9147 = fsub fast float %9143, %9135
  %9148 = fsub fast float %9144, %9136
  %9149 = fsub fast float %9145, %9137
  %9150 = fmul fast float %9146, %9140
  %9151 = fmul fast float %9147, %9140
  %9152 = fmul fast float %9148, %9140
  %9153 = fmul fast float %9149, %9140
  %9154 = fadd fast float %9150, %9134
  %9155 = fadd fast float %9151, %9135
  %9156 = fsub fast float -0.000000e+00, %9155
  %9157 = fadd fast float %9152, %9136
  %9158 = fadd fast float %9153, %9137
  %9159 = fmul fast float %9154, %9154
  %9160 = fsub fast float %9155, %9159
  %9161 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9160)  ; FMax(a,b)
  %9162 = fdiv fast float 1.000000e+00, %9161
  %9163 = fmul fast float %9155, %9154
  %9164 = fsub fast float %9157, %9163
  %9165 = fsub fast float %9114, %9154
  %9166 = fmul fast float %9114, %9114
  %9167 = fsub fast float %9166, %9155
  %9168 = fmul fast float %9165, %9162
  %9169 = fmul fast float %9168, %9164
  %9170 = fsub fast float %9167, %9169
  %9171 = fmul fast float %9155, %9155
  %9172 = fsub fast float %9158, %9171
  %9173 = fmul fast float %9164, %9164
  %9174 = fmul fast float %9173, %9162
  %9175 = fsub fast float %9172, %9174
  %9176 = fdiv fast float %9170, %9175
  %9177 = fmul fast float %9164, %9176
  %9178 = fsub fast float %9165, %9177
  %9179 = fmul fast float %9178, %9162
  %9180 = fmul fast float %9179, %9154
  %9181 = fsub fast float 1.000000e+00, %9180
  %9182 = fmul fast float %9155, %9176
  %9183 = fsub fast float %9181, %9182
  %9184 = fmul fast float %9179, %9179
  %9185 = fmul fast float %9176, 4.000000e+00
  %9186 = fmul fast float %9185, %9183
  %9187 = fsub fast float %9184, %9186
  %9188 = call float @dx.op.unary.f32(i32 24, float %9187)  ; Sqrt(value)
  %9189 = fcmp fast oge float %9179, 0.000000e+00
  %9190 = fsub fast float -0.000000e+00, %9188
  %9191 = select i1 %9189, float %9190, float %9188
  %9192 = fsub fast float %9191, %9179
  %9193 = fdiv fast float %9192, %9176
  %9194 = fdiv fast float %9183, %9192
  %9195 = fmul fast float %9193, 5.000000e-01
  %9196 = fmul fast float %9194, 2.000000e+00
  %9197 = select i1 %9189, float %9195, float %9196
  %9198 = select i1 %9189, float %9196, float %9195
  %9199 = call float @dx.op.binary.f32(i32 35, float %9197, float %9198)  ; FMax(a,b)
  %9200 = call float @dx.op.binary.f32(i32 36, float %9197, float %9198)  ; FMin(a,b)
  %9201 = fcmp fast ogt float %9114, %9200
  br i1 %9201, label %9202, label %9212

; <label>:9202                                    ; preds = %9139
  %9203 = fsub fast float %9114, %9200
  %9204 = fsub fast float %9199, %9200
  %9205 = fmul fast float %9203, %9204
  %9206 = fmul fast float %9199, %9114
  %9207 = fadd fast float %9199, %9114
  %9208 = fmul fast float %9207, %9154
  %9209 = fadd fast float %9206, %9155
  %9210 = fsub fast float %9209, %9208
  %9211 = fdiv fast float %9210, %9205
  br label %9212

; <label>:9212                                    ; preds = %9202, %9139
  %9213 = phi float [ %9211, %9202 ], [ 0.000000e+00, %9139 ]
  %9214 = fcmp fast ogt float %9114, %9199
  %9215 = fsub fast float %9114, %9199
  br i1 %9214, label %9216, label %9226

; <label>:9216                                    ; preds = %9212
  %9217 = fsub fast float %9199, %9200
  %9218 = fmul fast float %9217, %9215
  %9219 = fmul fast float %9200, %9114
  %9220 = fadd fast float %9200, %9114
  %9221 = fmul fast float %9220, %9154
  %9222 = fsub fast float %9156, %9219
  %9223 = fadd fast float %9222, %9221
  %9224 = fdiv fast float %9223, %9218
  %9225 = fadd fast float %9224, %9213
  br label %9226

; <label>:9226                                    ; preds = %9216, %9212
  %9227 = phi float [ %9225, %9216 ], [ %9213, %9212 ]
  %9228 = fsub fast float %9114, %9200
  %9229 = fmul fast float %9228, %9215
  %9230 = fmul fast float %9200, %9199
  %9231 = fadd fast float %9200, %9199
  %9232 = fmul fast float %9231, %9154
  %9233 = fadd fast float %9230, %9155
  %9234 = fsub fast float %9233, %9232
  %9235 = fdiv fast float %9234, %9229
  %9236 = call float @dx.op.unary.f32(i32 7, float %9227)  ; Saturate(value)
  %9237 = fcmp fast oeq float %7909, 0.000000e+00
  %9238 = extractvalue %dx.types.CBufRet.f32 %9022, 0
  %9239 = fcmp fast oeq float %9238, 0.000000e+00
  %9240 = or i1 %9237, %9239
  %9241 = fmul fast float %9238, 2.000000e+00
  %9242 = fadd fast float %9023, %9024
  %9243 = fdiv fast float %9242, %9241
  %9244 = call float @dx.op.unary.f32(i32 7, float %9243)  ; Saturate(value)
  %9245 = fmul fast float %9244, 2.000000e+00
  %9246 = fsub fast float 3.000000e+00, %9245
  %9247 = fmul fast float %9244, %9244
  %9248 = fmul fast float %9247, %9246
  %9249 = select i1 %9240, float 1.000000e+00, float %9248
  %9250 = fmul fast float %9235, %7909
  %9251 = fadd fast float %9236, %9250
  %9252 = call float @dx.op.unary.f32(i32 7, float %9251)  ; Saturate(value)
  %9253 = fmul fast float %9249, %9252
  br label %9254

; <label>:9254                                    ; preds = %9226, %9106
  %9255 = phi float [ %9253, %9226 ], [ 0.000000e+00, %9106 ]
  %9256 = fsub fast float 1.000000e+00, %9255
  %9257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %49, float %8976, float %8977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9258 = extractvalue %dx.types.ResRet.f32 %9257, 0
  %9259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9260 = extractvalue %dx.types.CBufRet.i32 %9259, 2
  %9261 = icmp eq i32 %9260, 0
  br i1 %9261, label %9267, label %9262

; <label>:9262                                    ; preds = %9254
  %9263 = call float @dx.op.unary.f32(i32 7, float %9255)  ; Saturate(value)
  %9264 = fadd fast float %9258, -1.000000e+00
  %9265 = fmul fast float %9263, %9264
  %9266 = fadd fast float %9265, 1.000000e+00
  br label %9267

; <label>:9267                                    ; preds = %9262, %9254
  %9268 = phi float [ %9266, %9262 ], [ %9256, %9254 ]
  br i1 %9030, label %9269, label %9287

; <label>:9269                                    ; preds = %9267
  %9270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9271 = extractvalue %dx.types.CBufRet.f32 %9270, 1
  %9272 = fsub fast float %9107, %9271
  %9273 = call float @dx.op.unary.f32(i32 7, float %9272)  ; Saturate(value)
  %9274 = fsub fast float %9107, %9029
  %9275 = call float @dx.op.unary.f32(i32 7, float %9274)  ; Saturate(value)
  %9276 = fsub fast float %9273, %9275
  %9277 = fsub fast float %9109, %9275
  %9278 = fdiv fast float %9277, %9276
  %9279 = call float @dx.op.unary.f32(i32 7, float %9278)  ; Saturate(value)
  %9280 = fmul fast float %9279, 2.000000e+00
  %9281 = fsub fast float 3.000000e+00, %9280
  %9282 = fsub fast float %9258, %9268
  %9283 = fmul fast float %9279, %9279
  %9284 = fmul fast float %9283, %9282
  %9285 = fmul fast float %9284, %9281
  %9286 = fadd fast float %9285, %9268
  br label %9287

; <label>:9287                                    ; preds = %9269, %9267
  %9288 = phi float [ %9286, %9269 ], [ %9268, %9267 ]
  %9289 = call float @dx.op.binary.f32(i32 35, float %9258, float %9288)  ; FMax(a,b)
  %9290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.i32 %9290, 2
  %9292 = and i32 %9291, 1
  %9293 = icmp eq i32 %9292, 0
  %9294 = fcmp fast une float %9289, 1.000000e+00
  %9295 = and i1 %9294, %9293
  br i1 %9295, label %9296, label %9315

; <label>:9296                                    ; preds = %9287
  %9297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %49, float %8976, float %8977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9298 = extractvalue %dx.types.ResRet.f32 %9297, 0
  %9299 = extractvalue %dx.types.ResRet.f32 %9297, 1
  %9300 = extractvalue %dx.types.ResRet.f32 %9297, 2
  %9301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9302 = extractvalue %dx.types.CBufRet.f32 %9301, 1
  %9303 = fmul fast float %9302, %9298
  %9304 = fmul fast float %9302, %9299
  %9305 = fmul fast float %9302, %9300
  %9306 = fcmp fast ogt float %9258, 0x3FEFFF2E40000000
  %9307 = fsub fast float 1.000000e+00, %9289
  %9308 = fsub fast float 1.000000e+00, %9258
  %9309 = fdiv fast float %9307, %9308
  %9310 = call float @dx.op.unary.f32(i32 7, float %9309)  ; Saturate(value)
  %9311 = select i1 %9306, float 0.000000e+00, float %9310
  %9312 = fmul fast float %9303, %9311
  %9313 = fmul fast float %9304, %9311
  %9314 = fmul fast float %9305, %9311
  br label %9315

; <label>:9315                                    ; preds = %9296, %9287
  %9316 = phi float [ 0.000000e+00, %9287 ], [ %9312, %9296 ]
  %9317 = phi float [ 0.000000e+00, %9287 ], [ %9313, %9296 ]
  %9318 = phi float [ 0.000000e+00, %9287 ], [ %9314, %9296 ]
  %9319 = fmul fast float %9316, %7893
  %9320 = fmul fast float %9317, %7895
  %9321 = fmul fast float %9318, %7897
  %9322 = fmul fast float %9289, %8951
  %9323 = call float @dx.op.dot3.f32(i32 55, float %9289, float %9289, float %9289, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9324 = call float @dx.op.dot3.f32(i32 55, float %9319, float %9320, float %9321, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9325 = select i1 %254, float %9323, float %9289
  %9326 = select i1 %254, float 1.000000e+00, float %9289
  %9327 = select i1 %254, float %9324, float %9319
  %9328 = select i1 %254, float 0.000000e+00, float %9320
  %9329 = select i1 %254, float 0.000000e+00, float %9321
  %9330 = fmul fast float %9325, %8963
  %9331 = fmul fast float %9325, %8964
  %9332 = fmul fast float %9326, %8965
  %9333 = fadd fast float %9330, %9327
  %9334 = fadd fast float %9331, %9328
  %9335 = fadd fast float %9329, %9332
  %9336 = fmul fast float %9325, %8966
  %9337 = fmul fast float %9325, %8967
  %9338 = fmul fast float %9326, %8968
  br label %9339

; <label>:9339                                    ; preds = %9315, %8972, %8941, %8177
  %9340 = phi float [ %8182, %8177 ], [ %8963, %8941 ], [ %9333, %9315 ], [ %8963, %8972 ]
  %9341 = phi float [ %8183, %8177 ], [ %8964, %8941 ], [ %9334, %9315 ], [ %8964, %8972 ]
  %9342 = phi float [ %8184, %8177 ], [ %8965, %8941 ], [ %9335, %9315 ], [ %8965, %8972 ]
  %9343 = phi float [ %8185, %8177 ], [ %8966, %8941 ], [ %9336, %9315 ], [ %8966, %8972 ]
  %9344 = phi float [ %8186, %8177 ], [ %8967, %8941 ], [ %9337, %9315 ], [ %8967, %8972 ]
  %9345 = phi float [ %8187, %8177 ], [ %8968, %8941 ], [ %9338, %9315 ], [ %8968, %8972 ]
  %9346 = phi float [ %8188, %8177 ], [ %8951, %8941 ], [ %9322, %9315 ], [ %8951, %8972 ]
  %9347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9348 = extractvalue %dx.types.CBufRet.f32 %9347, 2
  %9349 = extractvalue %dx.types.CBufRet.f32 %9347, 3
  %9350 = fmul fast float %9348, %108
  %9351 = fmul fast float %9349, %109
  %9352 = call float @dx.op.unary.f32(i32 7, float %9350)  ; Saturate(value)
  %9353 = call float @dx.op.unary.f32(i32 7, float %9351)  ; Saturate(value)
  %9354 = select i1 %7919, i32 2, i32 0
  %9355 = or i32 %9354, 1
  %9356 = uitofp i32 %9355 to float
  %9357 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9352, float %9353, float %9356, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9358 = extractvalue %dx.types.ResRet.f32 %9357, 0
  %9359 = extractvalue %dx.types.ResRet.f32 %9357, 1
  %9360 = extractvalue %dx.types.ResRet.f32 %9357, 2
  %9361 = extractvalue %dx.types.ResRet.f32 %9357, 3
  %9362 = add nuw nsw i32 %9354, 2
  %9363 = uitofp i32 %9362 to float
  %9364 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %49, float %9352, float %9353, float %9363, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9365 = extractvalue %dx.types.ResRet.f32 %9364, 0
  %9366 = extractvalue %dx.types.ResRet.f32 %9364, 1
  %9367 = extractvalue %dx.types.ResRet.f32 %9364, 2
  %9368 = extractvalue %dx.types.ResRet.f32 %9364, 3
  %9369 = call float @dx.op.binary.f32(i32 35, float %9359, float %9360)  ; FMax(a,b)
  %9370 = call float @dx.op.binary.f32(i32 35, float %9358, float %9369)  ; FMax(a,b)
  %9371 = call float @dx.op.binary.f32(i32 35, float %9370, float %9361)  ; FMax(a,b)
  %9372 = call float @dx.op.binary.f32(i32 36, float %9366, float %9367)  ; FMin(a,b)
  %9373 = call float @dx.op.binary.f32(i32 36, float %9365, float %9372)  ; FMin(a,b)
  %9374 = call float @dx.op.binary.f32(i32 36, float %9373, float %9368)  ; FMin(a,b)
  %9375 = fmul fast float %9371, 2.550000e+02
  %9376 = fadd fast float %9375, 0x3F70101020000000
  %9377 = fptoui float %9376 to i32
  %9378 = fmul fast float %9374, 2.550000e+02
  %9379 = fadd fast float %9378, 0x3F70101020000000
  %9380 = fptoui float %9379 to i32
  %9381 = icmp ult i32 %9377, %9380
  br i1 %9381, label %9382, label %9551

; <label>:9382                                    ; preds = %9339
  %9383 = fcmp fast ogt float %98, 9.843750e-01
  %9384 = fadd fast float %8181, -4.000000e+00
  %9385 = select i1 %9383, float -4.000000e+00, float %9384
  %9386 = call float @dx.op.binary.f32(i32 35, float %9385, float 0.000000e+00)  ; FMax(a,b)
  %9387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9388 = extractvalue %dx.types.CBufRet.f32 %9387, 0
  %9389 = fadd fast float %9388, %9386
  %9390 = extractvalue %dx.types.CBufRet.f32 %9387, 2
  %9391 = fmul fast float %9389, %9390
  %9392 = call float @dx.op.unary.f32(i32 23, float %9391)  ; Log(value)
  %9393 = extractvalue %dx.types.CBufRet.f32 %9387, 3
  %9394 = fmul fast float %9393, %9392
  %9395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9396 = extractvalue %dx.types.CBufRet.f32 %9395, 2
  %9397 = fmul fast float %9394, %9396
  %9398 = call float @dx.op.unary.f32(i32 7, float %9397)  ; Saturate(value)
  %9399 = uitofp i32 %9377 to float
  %9400 = uitofp i32 %9380 to float
  %9401 = fadd fast float %9399, 5.000000e-01
  %9402 = fadd fast float %9400, 5.000000e-01
  %9403 = fmul fast float %9396, %9401
  %9404 = fmul fast float %9396, %9402
  %9405 = fadd fast float %9403, 0x3F0FFB4800000000
  %9406 = fadd fast float %9404, 0xBF0FFB4800000000
  %9407 = call float @dx.op.binary.f32(i32 35, float %9398, float %9405)  ; FMax(a,b)
  %9408 = call float @dx.op.binary.f32(i32 36, float %9407, float %9406)  ; FMin(a,b)
  %9409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9410 = extractvalue %dx.types.CBufRet.f32 %9409, 1
  %9411 = extractvalue %dx.types.CBufRet.f32 %9409, 2
  %9412 = extractvalue %dx.types.CBufRet.f32 %9409, 0
  %9413 = select i1 %7919, float %9412, float 0.000000e+00
  %9414 = fmul fast float %9410, %9408
  %9415 = fadd fast float %9413, %9414
  %9416 = fadd fast float %9413, %9411
  %9417 = fsub fast float %9410, %9411
  %9418 = fadd fast float %9417, %9413
  %9419 = call float @dx.op.binary.f32(i32 35, float %9415, float %9416)  ; FMax(a,b)
  %9420 = call float @dx.op.binary.f32(i32 36, float %9419, float %9418)  ; FMin(a,b)
  %9421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %47, float %9352, float %9353, float %9420, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9422 = extractvalue %dx.types.ResRet.f32 %9421, 0
  %9423 = extractvalue %dx.types.ResRet.f32 %9421, 1
  %9424 = extractvalue %dx.types.ResRet.f32 %9421, 2
  %9425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9426 = extractvalue %dx.types.CBufRet.i32 %9425, 0
  %9427 = extractvalue %dx.types.CBufRet.i32 %9425, 1
  %9428 = uitofp i32 %9426 to float
  %9429 = uitofp i32 %9427 to float
  %9430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9431 = extractvalue %dx.types.CBufRet.f32 %9430, 0
  %9432 = extractvalue %dx.types.CBufRet.f32 %9430, 1
  %9433 = fmul fast float %9428, %9352
  %9434 = fmul fast float %9429, %9353
  %9435 = fadd fast float %9433, -5.000000e-01
  %9436 = fadd fast float %9434, -5.000000e-01
  %9437 = call float @dx.op.unary.f32(i32 22, float %9435)  ; Frc(value)
  %9438 = call float @dx.op.unary.f32(i32 22, float %9436)  ; Frc(value)
  %9439 = fmul fast float %9437, %9437
  %9440 = fmul fast float %9439, %9437
  %9441 = fsub fast float 3.000000e+00, %9437
  %9442 = fmul fast float %9439, %9441
  %9443 = fmul fast float %9437, 3.000000e+00
  %9444 = fmul fast float %9440, 3.000000e+00
  %9445 = fmul fast float %9439, 6.000000e+00
  %9446 = fsub fast float %9444, %9445
  %9447 = fadd fast float %9446, 4.000000e+00
  %9448 = fmul fast float %9447, 0x3FC5555560000000
  %9449 = fmul fast float %9440, -3.000000e+00
  %9450 = fadd fast float %9439, %9437
  %9451 = fmul fast float %9450, 3.000000e+00
  %9452 = fadd fast float %9449, 1.000000e+00
  %9453 = fadd fast float %9452, %9451
  %9454 = fmul fast float %9440, 0x3FC5555560000000
  %9455 = fmul fast float %9438, %9438
  %9456 = fmul fast float %9455, %9438
  %9457 = fsub fast float 3.000000e+00, %9438
  %9458 = fmul fast float %9455, %9457
  %9459 = fmul fast float %9438, 3.000000e+00
  %9460 = fmul fast float %9456, 3.000000e+00
  %9461 = fmul fast float %9455, 6.000000e+00
  %9462 = fsub fast float %9460, %9461
  %9463 = fadd fast float %9462, 4.000000e+00
  %9464 = fmul fast float %9463, 0x3FC5555560000000
  %9465 = fmul fast float %9456, -3.000000e+00
  %9466 = fadd fast float %9455, %9438
  %9467 = fmul fast float %9466, 3.000000e+00
  %9468 = fadd fast float %9465, 1.000000e+00
  %9469 = fadd fast float %9468, %9467
  %9470 = fmul fast float %9456, 0x3FC5555560000000
  %9471 = fadd fast float %9437, 1.000000e+00
  %9472 = fsub fast float 1.000000e+00, %9443
  %9473 = fadd fast float %9472, %9442
  %9474 = fadd fast float %9473, %9447
  %9475 = fmul fast float %9474, 0x3FC5555560000000
  %9476 = fdiv fast float %9448, %9475
  %9477 = fsub fast float %9471, %9476
  %9478 = fsub fast float 1.000000e+00, %9437
  %9479 = fadd fast float %9453, %9440
  %9480 = fmul fast float %9479, 0x3FC5555560000000
  %9481 = fdiv fast float %9454, %9480
  %9482 = fadd fast float %9478, %9481
  %9483 = fadd fast float %9438, 1.000000e+00
  %9484 = fsub fast float 1.000000e+00, %9459
  %9485 = fadd fast float %9484, %9458
  %9486 = fadd fast float %9485, %9463
  %9487 = fmul fast float %9486, 0x3FC5555560000000
  %9488 = fdiv fast float %9464, %9487
  %9489 = fsub fast float %9483, %9488
  %9490 = fsub fast float 1.000000e+00, %9438
  %9491 = fadd fast float %9469, %9456
  %9492 = fmul fast float %9491, 0x3FC5555560000000
  %9493 = fdiv fast float %9470, %9492
  %9494 = fadd fast float %9493, %9490
  %9495 = fmul fast float %9477, %9431
  %9496 = fsub fast float %9352, %9495
  %9497 = fmul fast float %9482, %9431
  %9498 = fadd fast float %9497, %9352
  %9499 = fmul fast float %9494, %9432
  %9500 = fadd fast float %9499, %9353
  %9501 = fmul fast float %9489, %9432
  %9502 = fsub fast float %9353, %9501
  %9503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9496, float %9502, float %9420, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9504 = extractvalue %dx.types.ResRet.f32 %9503, 0
  %9505 = extractvalue %dx.types.ResRet.f32 %9503, 1
  %9506 = extractvalue %dx.types.ResRet.f32 %9503, 2
  %9507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9498, float %9502, float %9420, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9508 = extractvalue %dx.types.ResRet.f32 %9507, 0
  %9509 = extractvalue %dx.types.ResRet.f32 %9507, 1
  %9510 = extractvalue %dx.types.ResRet.f32 %9507, 2
  %9511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9496, float %9500, float %9420, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9512 = extractvalue %dx.types.ResRet.f32 %9511, 0
  %9513 = extractvalue %dx.types.ResRet.f32 %9511, 1
  %9514 = extractvalue %dx.types.ResRet.f32 %9511, 2
  %9515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %47, float %9498, float %9500, float %9420, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9516 = extractvalue %dx.types.ResRet.f32 %9515, 0
  %9517 = extractvalue %dx.types.ResRet.f32 %9515, 1
  %9518 = extractvalue %dx.types.ResRet.f32 %9515, 2
  %9519 = fsub fast float %9512, %9504
  %9520 = fsub fast float %9513, %9505
  %9521 = fsub fast float %9514, %9506
  %9522 = fmul fast float %9519, %9492
  %9523 = fmul fast float %9520, %9492
  %9524 = fmul fast float %9521, %9492
  %9525 = fadd fast float %9522, %9504
  %9526 = fadd fast float %9523, %9505
  %9527 = fadd fast float %9524, %9506
  %9528 = fsub fast float %9516, %9508
  %9529 = fsub fast float %9517, %9509
  %9530 = fsub fast float %9518, %9510
  %9531 = fmul fast float %9528, %9492
  %9532 = fmul fast float %9529, %9492
  %9533 = fmul fast float %9530, %9492
  %9534 = fsub fast float %9508, %9525
  %9535 = fadd fast float %9534, %9531
  %9536 = fsub fast float %9509, %9526
  %9537 = fadd fast float %9536, %9532
  %9538 = fsub fast float %9510, %9527
  %9539 = fadd fast float %9538, %9533
  %9540 = fmul fast float %9535, %9480
  %9541 = fmul fast float %9537, %9480
  %9542 = fmul fast float %9539, %9480
  %9543 = fadd fast float %9540, %9525
  %9544 = fadd fast float %9541, %9526
  %9545 = fadd fast float %9542, %9527
  %9546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9547 = extractvalue %dx.types.CBufRet.f32 %9546, 1
  %9548 = fmul fast float %9543, %9547
  %9549 = fmul fast float %9544, %9547
  %9550 = fmul fast float %9545, %9547
  br label %9551

; <label>:9551                                    ; preds = %9382, %9339
  %9552 = phi float [ %9422, %9382 ], [ 1.000000e+00, %9339 ]
  %9553 = phi float [ %9423, %9382 ], [ 1.000000e+00, %9339 ]
  %9554 = phi float [ %9424, %9382 ], [ 1.000000e+00, %9339 ]
  %9555 = phi float [ %9548, %9382 ], [ 0.000000e+00, %9339 ]
  %9556 = phi float [ %9549, %9382 ], [ 0.000000e+00, %9339 ]
  %9557 = phi float [ %9550, %9382 ], [ 0.000000e+00, %9339 ]
  %9558 = fmul fast float %9555, %7893
  %9559 = fmul fast float %9556, %7895
  %9560 = fmul fast float %9557, %7897
  %9561 = fmul fast float %9552, %9346
  %9562 = call float @dx.op.dot3.f32(i32 55, float %9552, float %9553, float %9554, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9563 = call float @dx.op.dot3.f32(i32 55, float %9558, float %9559, float %9560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9564 = select i1 %254, float %9562, float %9552
  %9565 = select i1 %254, float %9562, float %9553
  %9566 = select i1 %254, float 1.000000e+00, float %9554
  %9567 = select i1 %254, float %9563, float %9558
  %9568 = select i1 %254, float 0.000000e+00, float %9559
  %9569 = select i1 %254, float 0.000000e+00, float %9560
  %9570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %53, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9571 = extractvalue %dx.types.CBufRet.i32 %9570, 3
  %9572 = and i32 %9571, 3
  %9573 = icmp ne i32 %9572, 0
  %9574 = and i32 %9571, 4
  %9575 = icmp ne i32 %9574, 0
  %9576 = and i1 %9573, %9575
  %9577 = and i1 %254, %9576
  br i1 %9577, label %9578, label %9584

; <label>:9578                                    ; preds = %9551
  %9579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9580 = extractvalue %dx.types.CBufRet.f32 %9579, 1
  %9581 = fadd fast float %9561, -1.000000e+00
  %9582 = fmul fast float %9580, %9581
  %9583 = fadd fast float %9582, 1.000000e+00
  br label %9584

; <label>:9584                                    ; preds = %9578, %9551
  %9585 = phi float [ %9583, %9578 ], [ %9561, %9551 ]
  %9586 = fadd fast float %9343, %9340
  %9587 = fmul fast float %9564, %9586
  %9588 = fadd fast float %9587, %9567
  %9589 = fadd fast float %9344, %9341
  %9590 = fmul fast float %9565, %9589
  %9591 = fadd fast float %9590, %9568
  %9592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9593 = extractvalue %dx.types.CBufRet.f32 %9592, 0
  br i1 %254, label %9594, label %9609

; <label>:9594                                    ; preds = %9584
  %9595 = fadd fast float %9588, %9591
  %9596 = fmul fast float %9593, %9595
  %9597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9598 = extractvalue %dx.types.CBufRet.f32 %9597, 3
  %9599 = extractvalue %dx.types.CBufRet.f32 %7901, 1
  %9600 = fsub fast float %7906, %7900
  %9601 = fadd fast float %9600, %7907
  %9602 = fsub fast float %9601, %9599
  %9603 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %9604 = fmul fast float %9602, %9603
  %9605 = call float @dx.op.unary.f32(i32 7, float %9604)  ; Saturate(value)
  %9606 = fsub fast float %9605, %9598
  %9607 = fmul fast float %9606, %9585
  %9608 = fadd fast float %9607, %9598
  br label %9635

; <label>:9609                                    ; preds = %9584
  %9610 = fadd fast float %9345, %9342
  %9611 = fmul fast float %9566, %9610
  %9612 = fadd fast float %9611, %9569
  %9613 = fmul fast float %9593, %9588
  %9614 = fmul fast float %9593, %9591
  %9615 = fmul fast float %9593, %9612
  %9616 = call float @dx.op.binary.f32(i32 35, float %9613, float %9614)  ; FMax(a,b)
  %9617 = call float @dx.op.binary.f32(i32 35, float %9616, float %9615)  ; FMax(a,b)
  %9618 = call float @dx.op.binary.f32(i32 35, float %7893, float %7895)  ; FMax(a,b)
  %9619 = call float @dx.op.binary.f32(i32 35, float %9618, float %7897)  ; FMax(a,b)
  %9620 = call float @dx.op.binary.f32(i32 35, float %9617, float %9619)  ; FMax(a,b)
  %9621 = fcmp fast ugt float %9620, 0x3F10000000000000
  br i1 %9621, label %9623, label %9622

; <label>:9622                                    ; preds = %9609
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9623

; <label>:9623                                    ; preds = %9622, %9609
  %9624 = add i32 %55, 356
  %9625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9624, i32 undef)  ; BufferLoad(srv,index,wot)
  %9626 = extractvalue %dx.types.ResRet.i32 %9625, 0
  %9627 = and i32 %9626, 32
  %9628 = icmp eq i32 %9627, 0
  br i1 %9628, label %9635, label %9629

; <label>:9629                                    ; preds = %9623
  %9630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9631 = extractvalue %dx.types.CBufRet.f32 %9630, 0
  %9632 = fmul fast float %9631, 0x3FE99999A0000000
  %9633 = fadd fast float %9631, %9613
  %9634 = fadd fast float %9632, %9615
  br label %9635

; <label>:9635                                    ; preds = %9629, %9623, %9594
  %9636 = phi float [ 1.000000e+00, %9594 ], [ %7895, %9629 ], [ %7895, %9623 ]
  %9637 = phi float [ 1.000000e+00, %9594 ], [ %7897, %9629 ], [ %7897, %9623 ]
  %9638 = phi float [ %9596, %9594 ], [ %9633, %9629 ], [ %9613, %9623 ]
  %9639 = phi float [ %9608, %9594 ], [ %9614, %9629 ], [ %9614, %9623 ]
  %9640 = phi float [ 1.000000e+00, %9594 ], [ %9634, %9629 ], [ %9615, %9623 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9641 = call float @dx.op.binary.f32(i32 36, float %9638, float 3.225500e+04)  ; FMin(a,b)
  %9642 = call float @dx.op.binary.f32(i32 36, float %9639, float 3.225500e+04)  ; FMin(a,b)
  %9643 = call float @dx.op.binary.f32(i32 36, float %9640, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9641)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9643)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9644 = call float @dx.op.binary.f32(i32 36, float %7893, float 3.225500e+04)  ; FMin(a,b)
  %9645 = call float @dx.op.binary.f32(i32 36, float %9636, float 3.225500e+04)  ; FMin(a,b)
  %9646 = call float @dx.op.binary.f32(i32 36, float %9637, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9645)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9646)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
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
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 7, i32 119, i32 0, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !99}
!70 = !{!71, !95, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !89, !90, !91, !93, !94}
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
!83 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !73, i8 2, i32 1, i8 1, i32 3, i8 3, !84}
!84 = !{i32 3, i32 1}
!85 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 7, i8 0, !79}
!86 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 8, i8 0, !74}
!87 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 9, i8 0, !77}
!88 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 10, i8 0, !74}
!89 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 11, i8 0, !74}
!90 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !73, i8 1, i32 1, i8 1, i32 12, i8 0, !84}
!91 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !73, i8 1, i32 1, i8 2, i32 12, i8 1, !92}
!92 = !{i32 3, i32 2}
!93 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 13, i8 0, !84}
!94 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96, !97}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!97 = !{i32 1, !"SV_Target", i8 9, i8 16, !98, i8 0, i32 1, i8 4, i32 1, i8 0, !74}
!98 = !{i32 1}
!99 = !{i32 0, i64 16}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !{!110, !112, !114, !116}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
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
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = !{!131, !131, i64 0}
!131 = !{!"float", !107, i64 0}
!132 = !{!133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!133 = distinct !{!133, !134, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!134 = distinct !{!134, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!135 = distinct !{!135, !136, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!136 = distinct !{!136, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!137 = distinct !{!137, !136, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!147 = distinct !{!147, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"\01?sort@@YAXAIAM00@Z: %c"}
!150 = distinct !{!150, !"\01?sort@@YAXAIAM00@Z"}
!151 = !{!152, !153, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!152 = distinct !{!152, !150, !"\01?sort@@YAXAIAM00@Z: %a"}
!153 = distinct !{!153, !150, !"\01?sort@@YAXAIAM00@Z: %b"}
!154 = !{!153}
!155 = !{!152, !149, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!156 = !{!152}
!157 = !{!153, !149, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!158 = !{!159}
!159 = distinct !{!159, !160, !"\01?sort@@YAXAIAM00@Z: %c"}
!160 = distinct !{!160, !"\01?sort@@YAXAIAM00@Z"}
!161 = !{!162, !163, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!162 = distinct !{!162, !160, !"\01?sort@@YAXAIAM00@Z: %a"}
!163 = distinct !{!163, !160, !"\01?sort@@YAXAIAM00@Z: %b"}
!164 = !{!163}
!165 = !{!162, !159, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!166 = !{!162}
!167 = !{!163, !159, !133, !135, !137, !138, !140, !141, !142, !144, !145, !146}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 2}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}

